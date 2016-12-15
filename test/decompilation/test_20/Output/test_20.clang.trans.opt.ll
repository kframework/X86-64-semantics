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

block_0x19f:                                      ; preds = %entry
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !10
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !11
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !11
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !11
  br label %block_0x2c8, !mcsema_real_eip !12

block_0x2c8:                                      ; preds = %block_0x2bf, %block_0x2af, %block_0x29f, %block_0x28f, %block_0x27f, %block_0x26f, %block_0x25f, %block_0x24f, %block_0x23f, %block_0x22f, %block_0x21f, %block_0x20f, %block_0x201, %block_0x1f3, %block_0x1e5, %block_0x1d7, %block_0x1c9, %block_0x1bb, %block_0x1ad, %block_0x19f
  %EAX_val.242.sink = phi i32 [ 0, %block_0x2bf ], [ 74643, %block_0x2af ], [ 74642, %block_0x29f ], [ 74641, %block_0x28f ], [ 74640, %block_0x27f ], [ 74639, %block_0x26f ], [ 74637, %block_0x25f ], [ 74636, %block_0x24f ], [ 74635, %block_0x23f ], [ 74634, %block_0x22f ], [ 74633, %block_0x21f ], [ 255, %block_0x20f ], [ 19, %block_0x201 ], [ 13, %block_0x1f3 ], [ 12, %block_0x1e5 ], [ 6, %block_0x1d7 ], [ 4, %block_0x1c9 ], [ 2, %block_0x1bb ], [ 1, %block_0x1ad ], [ 0, %block_0x19f ]
  store i1 false, i1* %CF, align 1
  %13 = zext i32 %EAX_val.242.sink to i64
  store i32 %EAX_val.242.sink, i32* %4, align 4
  store i64 %13, i64* %XAX, align 8, !mcsema_real_eip !13
  store volatile i64 undef, i64* %_RBP_ptr_.sroa.0, align 8
  %_new_gep_25 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 92
  store volatile i8* %_new_gep_25, i8** %_RSP_ptr_, align 8
  %_new_gep_27 = getelementptr [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 100
  %14 = add i64 %RSP_val.1, 8, !mcsema_real_eip !14
  store volatile i8* %_new_gep_27, i8** %_RSP_ptr_, align 8
  store i64 %14, i64* %XSP, align 8, !mcsema_real_eip !14
  ret void, !mcsema_real_eip !14

block_0x21:                                       ; preds = %entry
  %15 = add i32 %EDI_val.5, -1
  %16 = xor i32 %15, %EDI_val.5, !mcsema_real_eip !15
  %17 = and i32 %16, 16, !mcsema_real_eip !15
  %18 = icmp ne i32 %17, 0, !mcsema_real_eip !15
  store i1 %18, i1* %AF, align 1, !mcsema_real_eip !15
  %19 = trunc i32 %15 to i8, !mcsema_real_eip !15
  %20 = call i8 @llvm.ctpop.i8(i8 %19), !mcsema_real_eip !15
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  store i1 %22, i1* %PF, align 1, !mcsema_real_eip !15
  %23 = icmp eq i32 %15, 0
  store i1 %23, i1* %ZF, align 1, !mcsema_real_eip !15
  %24 = icmp slt i32 %15, 0
  store i1 %24, i1* %SF, align 1, !mcsema_real_eip !15
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !15
  %25 = and i32 %16, %EDI_val.5, !mcsema_real_eip !15
  %26 = icmp slt i32 %25, 0
  store i1 %26, i1* %OF, align 1, !mcsema_real_eip !15
  %27 = zext i32 %15 to i64, !mcsema_real_eip !15
  store i64 %27, i64* %XAX, align 8, !mcsema_real_eip !15
  %_new_gep_33 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 68
  %28 = bitcast i8* %_new_gep_33 to i32*
  store i32 %15, i32* %28, align 4, !mcsema_real_eip !16
  br i1 %23, label %block_0x1ad, label %block_0x35, !mcsema_real_eip !17

block_0x1ad:                                      ; preds = %block_0x21
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !18
  call void @llvm.memset.p0i8.i64(i8* nonnull %PF_full, i8 0, i64 5, i32 1, i1 false)
  br label %block_0x2c8, !mcsema_real_eip !19

block_0x35:                                       ; preds = %block_0x21
  %29 = add i32 %EDI_val.5, -2
  %30 = xor i32 %29, %EDI_val.5, !mcsema_real_eip !20
  %31 = and i32 %30, 16, !mcsema_real_eip !20
  %32 = icmp ne i32 %31, 0, !mcsema_real_eip !20
  store i1 %32, i1* %AF, align 1, !mcsema_real_eip !20
  %33 = trunc i32 %29 to i8, !mcsema_real_eip !20
  %34 = call i8 @llvm.ctpop.i8(i8 %33), !mcsema_real_eip !20
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  store i1 %36, i1* %PF, align 1, !mcsema_real_eip !20
  %37 = icmp eq i32 %29, 0
  store i1 %37, i1* %ZF, align 1, !mcsema_real_eip !20
  %38 = icmp slt i32 %29, 0
  store i1 %38, i1* %SF, align 1, !mcsema_real_eip !20
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !20
  %39 = and i32 %30, %EDI_val.5, !mcsema_real_eip !20
  %40 = icmp slt i32 %39, 0
  store i1 %40, i1* %OF, align 1, !mcsema_real_eip !20
  %41 = zext i32 %29 to i64, !mcsema_real_eip !20
  store i64 %41, i64* %XAX, align 8, !mcsema_real_eip !20
  %_new_gep_45 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 64
  %42 = bitcast i8* %_new_gep_45 to i32*
  store i32 %29, i32* %42, align 4, !mcsema_real_eip !21
  br i1 %37, label %block_0x1bb, label %block_0x49, !mcsema_real_eip !22

block_0x1bb:                                      ; preds = %block_0x35
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !23
  call void @llvm.memset.p0i8.i64(i8* nonnull %PF_full, i8 0, i64 5, i32 1, i1 false)
  br label %block_0x2c8, !mcsema_real_eip !24

block_0x49:                                       ; preds = %block_0x35
  %43 = add i32 %EDI_val.5, -4
  %44 = xor i32 %43, %EDI_val.5, !mcsema_real_eip !25
  %45 = and i32 %44, 16, !mcsema_real_eip !25
  %46 = icmp ne i32 %45, 0, !mcsema_real_eip !25
  store i1 %46, i1* %AF, align 1, !mcsema_real_eip !25
  %47 = trunc i32 %43 to i8, !mcsema_real_eip !25
  %48 = call i8 @llvm.ctpop.i8(i8 %47), !mcsema_real_eip !25
  %49 = and i8 %48, 1
  %50 = icmp eq i8 %49, 0
  store i1 %50, i1* %PF, align 1, !mcsema_real_eip !25
  %51 = icmp eq i32 %43, 0
  store i1 %51, i1* %ZF, align 1, !mcsema_real_eip !25
  %52 = icmp slt i32 %43, 0
  store i1 %52, i1* %SF, align 1, !mcsema_real_eip !25
  %53 = icmp ult i32 %EDI_val.5, 4, !mcsema_real_eip !25
  store i1 %53, i1* %CF, align 1, !mcsema_real_eip !25
  %54 = and i32 %44, %EDI_val.5, !mcsema_real_eip !25
  %55 = icmp slt i32 %54, 0
  store i1 %55, i1* %OF, align 1, !mcsema_real_eip !25
  %56 = zext i32 %43 to i64, !mcsema_real_eip !25
  store i64 %56, i64* %XAX, align 8, !mcsema_real_eip !25
  %_new_gep_57 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 60
  %57 = bitcast i8* %_new_gep_57 to i32*
  store i32 %43, i32* %57, align 4, !mcsema_real_eip !26
  br i1 %51, label %block_0x1c9, label %block_0x5d, !mcsema_real_eip !27

block_0x1c9:                                      ; preds = %block_0x49
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !28
  call void @llvm.memset.p0i8.i64(i8* nonnull %PF_full, i8 0, i64 5, i32 1, i1 false)
  br label %block_0x2c8, !mcsema_real_eip !29

block_0x5d:                                       ; preds = %block_0x49
  %58 = add i32 %EDI_val.5, -6
  %59 = xor i32 %58, %EDI_val.5, !mcsema_real_eip !30
  %60 = and i32 %59, 16, !mcsema_real_eip !30
  %61 = icmp ne i32 %60, 0, !mcsema_real_eip !30
  store i1 %61, i1* %AF, align 1, !mcsema_real_eip !30
  %62 = trunc i32 %58 to i8, !mcsema_real_eip !30
  %63 = call i8 @llvm.ctpop.i8(i8 %62), !mcsema_real_eip !30
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  store i1 %65, i1* %PF, align 1, !mcsema_real_eip !30
  %66 = icmp eq i32 %58, 0
  store i1 %66, i1* %ZF, align 1, !mcsema_real_eip !30
  %67 = icmp slt i32 %58, 0
  store i1 %67, i1* %SF, align 1, !mcsema_real_eip !30
  %68 = icmp ult i32 %EDI_val.5, 6, !mcsema_real_eip !30
  store i1 %68, i1* %CF, align 1, !mcsema_real_eip !30
  %69 = and i32 %59, %EDI_val.5, !mcsema_real_eip !30
  %70 = icmp slt i32 %69, 0
  store i1 %70, i1* %OF, align 1, !mcsema_real_eip !30
  %71 = zext i32 %58 to i64, !mcsema_real_eip !30
  store i64 %71, i64* %XAX, align 8, !mcsema_real_eip !30
  %_new_gep_69 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 56
  %72 = bitcast i8* %_new_gep_69 to i32*
  store i32 %58, i32* %72, align 4, !mcsema_real_eip !31
  br i1 %66, label %block_0x1d7, label %block_0x71, !mcsema_real_eip !32

block_0x1d7:                                      ; preds = %block_0x5d
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !33
  %73 = bitcast i8* %AF_full to i32*
  store i32 0, i32* %73, align 1
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !34
  br label %block_0x2c8, !mcsema_real_eip !35

block_0x71:                                       ; preds = %block_0x5d
  %74 = add i32 %EDI_val.5, -12
  %75 = xor i32 %74, %EDI_val.5, !mcsema_real_eip !36
  %76 = and i32 %75, 16, !mcsema_real_eip !36
  %77 = icmp ne i32 %76, 0, !mcsema_real_eip !36
  store i1 %77, i1* %AF, align 1, !mcsema_real_eip !36
  %78 = trunc i32 %74 to i8, !mcsema_real_eip !36
  %79 = call i8 @llvm.ctpop.i8(i8 %78), !mcsema_real_eip !36
  %80 = and i8 %79, 1
  %81 = icmp eq i8 %80, 0
  store i1 %81, i1* %PF, align 1, !mcsema_real_eip !36
  %82 = icmp eq i32 %74, 0
  store i1 %82, i1* %ZF, align 1, !mcsema_real_eip !36
  %83 = icmp slt i32 %74, 0
  store i1 %83, i1* %SF, align 1, !mcsema_real_eip !36
  %84 = icmp ult i32 %EDI_val.5, 12, !mcsema_real_eip !36
  store i1 %84, i1* %CF, align 1, !mcsema_real_eip !36
  %85 = and i32 %75, %EDI_val.5, !mcsema_real_eip !36
  %86 = icmp slt i32 %85, 0
  store i1 %86, i1* %OF, align 1, !mcsema_real_eip !36
  %87 = zext i32 %74 to i64, !mcsema_real_eip !36
  store i64 %87, i64* %XAX, align 8, !mcsema_real_eip !36
  %_new_gep_81 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 52
  %88 = bitcast i8* %_new_gep_81 to i32*
  store i32 %74, i32* %88, align 4, !mcsema_real_eip !37
  br i1 %82, label %block_0x1e5, label %block_0x85, !mcsema_real_eip !38

block_0x1e5:                                      ; preds = %block_0x71
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !39
  %89 = bitcast i8* %AF_full to i32*
  store i32 0, i32* %89, align 1
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !40
  br label %block_0x2c8, !mcsema_real_eip !41

block_0x85:                                       ; preds = %block_0x71
  %90 = add i32 %EDI_val.5, -13
  %91 = xor i32 %90, %EDI_val.5, !mcsema_real_eip !42
  %92 = and i32 %91, 16, !mcsema_real_eip !42
  %93 = icmp ne i32 %92, 0, !mcsema_real_eip !42
  store i1 %93, i1* %AF, align 1, !mcsema_real_eip !42
  %94 = trunc i32 %90 to i8, !mcsema_real_eip !42
  %95 = call i8 @llvm.ctpop.i8(i8 %94), !mcsema_real_eip !42
  %96 = and i8 %95, 1
  %97 = icmp eq i8 %96, 0
  store i1 %97, i1* %PF, align 1, !mcsema_real_eip !42
  %98 = icmp eq i32 %90, 0
  store i1 %98, i1* %ZF, align 1, !mcsema_real_eip !42
  %99 = icmp slt i32 %90, 0
  store i1 %99, i1* %SF, align 1, !mcsema_real_eip !42
  %100 = icmp ult i32 %EDI_val.5, 13, !mcsema_real_eip !42
  store i1 %100, i1* %CF, align 1, !mcsema_real_eip !42
  %101 = and i32 %91, %EDI_val.5, !mcsema_real_eip !42
  %102 = icmp slt i32 %101, 0
  store i1 %102, i1* %OF, align 1, !mcsema_real_eip !42
  %103 = zext i32 %90 to i64, !mcsema_real_eip !42
  store i64 %103, i64* %XAX, align 8, !mcsema_real_eip !42
  %_new_gep_93 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 48
  %104 = bitcast i8* %_new_gep_93 to i32*
  store i32 %90, i32* %104, align 4, !mcsema_real_eip !43
  br i1 %98, label %block_0x1f3, label %block_0x99, !mcsema_real_eip !44

block_0x1f3:                                      ; preds = %block_0x85
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !45
  call void @llvm.memset.p0i8.i64(i8* nonnull %PF_full, i8 0, i64 5, i32 1, i1 false)
  br label %block_0x2c8, !mcsema_real_eip !46

block_0x99:                                       ; preds = %block_0x85
  %105 = add i32 %EDI_val.5, -19
  %106 = xor i32 %105, %EDI_val.5, !mcsema_real_eip !47
  %107 = and i32 %106, 16
  %108 = icmp eq i32 %107, 0
  store i1 %108, i1* %AF, align 1, !mcsema_real_eip !47
  %109 = trunc i32 %105 to i8, !mcsema_real_eip !47
  %110 = call i8 @llvm.ctpop.i8(i8 %109), !mcsema_real_eip !47
  %111 = and i8 %110, 1
  %112 = icmp eq i8 %111, 0
  store i1 %112, i1* %PF, align 1, !mcsema_real_eip !47
  %113 = icmp eq i32 %105, 0
  store i1 %113, i1* %ZF, align 1, !mcsema_real_eip !47
  %114 = icmp slt i32 %105, 0
  store i1 %114, i1* %SF, align 1, !mcsema_real_eip !47
  %115 = icmp ult i32 %EDI_val.5, 19, !mcsema_real_eip !47
  store i1 %115, i1* %CF, align 1, !mcsema_real_eip !47
  %116 = and i32 %106, %EDI_val.5, !mcsema_real_eip !47
  %117 = icmp slt i32 %116, 0
  store i1 %117, i1* %OF, align 1, !mcsema_real_eip !47
  %118 = zext i32 %105 to i64, !mcsema_real_eip !47
  store i64 %118, i64* %XAX, align 8, !mcsema_real_eip !47
  %_new_gep_105 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 44
  %119 = bitcast i8* %_new_gep_105 to i32*
  store i32 %105, i32* %119, align 4, !mcsema_real_eip !48
  br i1 %113, label %block_0x201, label %block_0xad, !mcsema_real_eip !49

block_0x201:                                      ; preds = %block_0x99
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !50
  call void @llvm.memset.p0i8.i64(i8* nonnull %PF_full, i8 0, i64 5, i32 1, i1 false)
  br label %block_0x2c8, !mcsema_real_eip !51

block_0xad:                                       ; preds = %block_0x99
  %120 = add i32 %EDI_val.5, -255
  %121 = xor i32 %120, %EDI_val.5, !mcsema_real_eip !52
  %122 = and i32 %121, 16
  %123 = icmp eq i32 %122, 0
  store i1 %123, i1* %AF, align 1, !mcsema_real_eip !52
  %124 = trunc i32 %120 to i8, !mcsema_real_eip !52
  %125 = call i8 @llvm.ctpop.i8(i8 %124), !mcsema_real_eip !52
  %126 = and i8 %125, 1
  %127 = icmp eq i8 %126, 0
  store i1 %127, i1* %PF, align 1, !mcsema_real_eip !52
  %128 = icmp eq i32 %120, 0
  store i1 %128, i1* %ZF, align 1, !mcsema_real_eip !52
  %129 = icmp slt i32 %120, 0
  store i1 %129, i1* %SF, align 1, !mcsema_real_eip !52
  %130 = icmp ult i32 %EDI_val.5, 255, !mcsema_real_eip !52
  store i1 %130, i1* %CF, align 1, !mcsema_real_eip !52
  %131 = and i32 %121, %EDI_val.5, !mcsema_real_eip !52
  %132 = icmp slt i32 %131, 0
  store i1 %132, i1* %OF, align 1, !mcsema_real_eip !52
  %133 = zext i32 %120 to i64, !mcsema_real_eip !52
  store i64 %133, i64* %XAX, align 8, !mcsema_real_eip !52
  %_new_gep_117 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 40
  %134 = bitcast i8* %_new_gep_117 to i32*
  store i32 %120, i32* %134, align 4, !mcsema_real_eip !53
  br i1 %128, label %block_0x20f, label %block_0xc3, !mcsema_real_eip !54

block_0x20f:                                      ; preds = %block_0xad
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !55
  %135 = bitcast i8* %AF_full to i32*
  store i32 0, i32* %135, align 1
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !56
  br label %block_0x2c8, !mcsema_real_eip !57

block_0xc3:                                       ; preds = %block_0xad
  %136 = add i32 %EDI_val.5, -74633
  %137 = xor i32 %136, %EDI_val.5, !mcsema_real_eip !58
  %138 = and i32 %137, 16, !mcsema_real_eip !58
  %139 = icmp ne i32 %138, 0, !mcsema_real_eip !58
  store i1 %139, i1* %AF, align 1, !mcsema_real_eip !58
  %140 = trunc i32 %136 to i8, !mcsema_real_eip !58
  %141 = call i8 @llvm.ctpop.i8(i8 %140), !mcsema_real_eip !58
  %142 = and i8 %141, 1
  %143 = icmp eq i8 %142, 0
  store i1 %143, i1* %PF, align 1, !mcsema_real_eip !58
  %144 = icmp eq i32 %136, 0
  store i1 %144, i1* %ZF, align 1, !mcsema_real_eip !58
  %145 = icmp slt i32 %136, 0
  store i1 %145, i1* %SF, align 1, !mcsema_real_eip !58
  %146 = icmp ult i32 %EDI_val.5, 74633, !mcsema_real_eip !58
  store i1 %146, i1* %CF, align 1, !mcsema_real_eip !58
  %147 = and i32 %137, %EDI_val.5, !mcsema_real_eip !58
  %148 = icmp slt i32 %147, 0
  store i1 %148, i1* %OF, align 1, !mcsema_real_eip !58
  %149 = zext i32 %136 to i64, !mcsema_real_eip !58
  store i64 %149, i64* %XAX, align 8, !mcsema_real_eip !58
  %_new_gep_129 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 36
  %150 = bitcast i8* %_new_gep_129 to i32*
  store i32 %136, i32* %150, align 4, !mcsema_real_eip !59
  br i1 %144, label %block_0x21f, label %block_0xd9, !mcsema_real_eip !60

block_0x21f:                                      ; preds = %block_0xc3
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !61
  call void @llvm.memset.p0i8.i64(i8* nonnull %PF_full, i8 0, i64 5, i32 1, i1 false)
  br label %block_0x2c8, !mcsema_real_eip !62

block_0xd9:                                       ; preds = %block_0xc3
  %151 = add i32 %EDI_val.5, -74634
  %152 = xor i32 %151, %EDI_val.5, !mcsema_real_eip !63
  %153 = and i32 %152, 16, !mcsema_real_eip !63
  %154 = icmp ne i32 %153, 0, !mcsema_real_eip !63
  store i1 %154, i1* %AF, align 1, !mcsema_real_eip !63
  %155 = trunc i32 %151 to i8, !mcsema_real_eip !63
  %156 = call i8 @llvm.ctpop.i8(i8 %155), !mcsema_real_eip !63
  %157 = and i8 %156, 1
  %158 = icmp eq i8 %157, 0
  store i1 %158, i1* %PF, align 1, !mcsema_real_eip !63
  %159 = icmp eq i32 %151, 0
  store i1 %159, i1* %ZF, align 1, !mcsema_real_eip !63
  %160 = icmp slt i32 %151, 0
  store i1 %160, i1* %SF, align 1, !mcsema_real_eip !63
  %161 = icmp ult i32 %EDI_val.5, 74634, !mcsema_real_eip !63
  store i1 %161, i1* %CF, align 1, !mcsema_real_eip !63
  %162 = and i32 %152, %EDI_val.5, !mcsema_real_eip !63
  %163 = icmp slt i32 %162, 0
  store i1 %163, i1* %OF, align 1, !mcsema_real_eip !63
  %164 = zext i32 %151 to i64, !mcsema_real_eip !63
  store i64 %164, i64* %XAX, align 8, !mcsema_real_eip !63
  %_new_gep_141 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 32
  %165 = bitcast i8* %_new_gep_141 to i32*
  store i32 %151, i32* %165, align 4, !mcsema_real_eip !64
  br i1 %159, label %block_0x22f, label %block_0xef, !mcsema_real_eip !65

block_0x22f:                                      ; preds = %block_0xd9
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !66
  call void @llvm.memset.p0i8.i64(i8* nonnull %PF_full, i8 0, i64 5, i32 1, i1 false)
  br label %block_0x2c8, !mcsema_real_eip !67

block_0xef:                                       ; preds = %block_0xd9
  %166 = add i32 %EDI_val.5, -74635
  %167 = xor i32 %166, %EDI_val.5, !mcsema_real_eip !68
  %168 = and i32 %167, 16, !mcsema_real_eip !68
  %169 = icmp ne i32 %168, 0, !mcsema_real_eip !68
  store i1 %169, i1* %AF, align 1, !mcsema_real_eip !68
  %170 = trunc i32 %166 to i8, !mcsema_real_eip !68
  %171 = call i8 @llvm.ctpop.i8(i8 %170), !mcsema_real_eip !68
  %172 = and i8 %171, 1
  %173 = icmp eq i8 %172, 0
  store i1 %173, i1* %PF, align 1, !mcsema_real_eip !68
  %174 = icmp eq i32 %166, 0
  store i1 %174, i1* %ZF, align 1, !mcsema_real_eip !68
  %175 = icmp slt i32 %166, 0
  store i1 %175, i1* %SF, align 1, !mcsema_real_eip !68
  %176 = icmp ult i32 %EDI_val.5, 74635, !mcsema_real_eip !68
  store i1 %176, i1* %CF, align 1, !mcsema_real_eip !68
  %177 = and i32 %167, %EDI_val.5, !mcsema_real_eip !68
  %178 = icmp slt i32 %177, 0
  store i1 %178, i1* %OF, align 1, !mcsema_real_eip !68
  %179 = zext i32 %166 to i64, !mcsema_real_eip !68
  store i64 %179, i64* %XAX, align 8, !mcsema_real_eip !68
  %_new_gep_153 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 28
  %180 = bitcast i8* %_new_gep_153 to i32*
  store i32 %166, i32* %180, align 4, !mcsema_real_eip !69
  br i1 %174, label %block_0x23f, label %block_0x105, !mcsema_real_eip !70

block_0x23f:                                      ; preds = %block_0xef
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !71
  %181 = bitcast i8* %AF_full to i32*
  store i32 0, i32* %181, align 1
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !72
  br label %block_0x2c8, !mcsema_real_eip !73

block_0x105:                                      ; preds = %block_0xef
  %182 = add i32 %EDI_val.5, -74636
  %183 = xor i32 %182, %EDI_val.5, !mcsema_real_eip !74
  %184 = and i32 %183, 16, !mcsema_real_eip !74
  %185 = icmp ne i32 %184, 0, !mcsema_real_eip !74
  store i1 %185, i1* %AF, align 1, !mcsema_real_eip !74
  %186 = trunc i32 %182 to i8, !mcsema_real_eip !74
  %187 = call i8 @llvm.ctpop.i8(i8 %186), !mcsema_real_eip !74
  %188 = and i8 %187, 1
  %189 = icmp eq i8 %188, 0
  store i1 %189, i1* %PF, align 1, !mcsema_real_eip !74
  %190 = icmp eq i32 %182, 0
  store i1 %190, i1* %ZF, align 1, !mcsema_real_eip !74
  %191 = icmp slt i32 %182, 0
  store i1 %191, i1* %SF, align 1, !mcsema_real_eip !74
  %192 = icmp ult i32 %EDI_val.5, 74636, !mcsema_real_eip !74
  store i1 %192, i1* %CF, align 1, !mcsema_real_eip !74
  %193 = and i32 %183, %EDI_val.5, !mcsema_real_eip !74
  %194 = icmp slt i32 %193, 0
  store i1 %194, i1* %OF, align 1, !mcsema_real_eip !74
  %195 = zext i32 %182 to i64, !mcsema_real_eip !74
  store i64 %195, i64* %XAX, align 8, !mcsema_real_eip !74
  %_new_gep_165 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 24
  %196 = bitcast i8* %_new_gep_165 to i32*
  store i32 %182, i32* %196, align 4, !mcsema_real_eip !75
  br i1 %190, label %block_0x24f, label %block_0x11b, !mcsema_real_eip !76

block_0x24f:                                      ; preds = %block_0x105
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !77
  call void @llvm.memset.p0i8.i64(i8* nonnull %PF_full, i8 0, i64 5, i32 1, i1 false)
  br label %block_0x2c8, !mcsema_real_eip !78

block_0x11b:                                      ; preds = %block_0x105
  %197 = add i32 %EDI_val.5, -74637
  %198 = xor i32 %197, %EDI_val.5, !mcsema_real_eip !79
  %199 = and i32 %198, 16, !mcsema_real_eip !79
  %200 = icmp ne i32 %199, 0, !mcsema_real_eip !79
  store i1 %200, i1* %AF, align 1, !mcsema_real_eip !79
  %201 = trunc i32 %197 to i8, !mcsema_real_eip !79
  %202 = call i8 @llvm.ctpop.i8(i8 %201), !mcsema_real_eip !79
  %203 = and i8 %202, 1
  %204 = icmp eq i8 %203, 0
  store i1 %204, i1* %PF, align 1, !mcsema_real_eip !79
  %205 = icmp eq i32 %197, 0
  store i1 %205, i1* %ZF, align 1, !mcsema_real_eip !79
  %206 = icmp slt i32 %197, 0
  store i1 %206, i1* %SF, align 1, !mcsema_real_eip !79
  %207 = icmp ult i32 %EDI_val.5, 74637, !mcsema_real_eip !79
  store i1 %207, i1* %CF, align 1, !mcsema_real_eip !79
  %208 = and i32 %198, %EDI_val.5, !mcsema_real_eip !79
  %209 = icmp slt i32 %208, 0
  store i1 %209, i1* %OF, align 1, !mcsema_real_eip !79
  %210 = zext i32 %197 to i64, !mcsema_real_eip !79
  store i64 %210, i64* %XAX, align 8, !mcsema_real_eip !79
  %_new_gep_177 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 20
  %211 = bitcast i8* %_new_gep_177 to i32*
  store i32 %197, i32* %211, align 4, !mcsema_real_eip !80
  br i1 %205, label %block_0x25f, label %block_0x131, !mcsema_real_eip !81

block_0x25f:                                      ; preds = %block_0x11b
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !82
  %212 = bitcast i8* %AF_full to i32*
  store i32 0, i32* %212, align 1
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !83
  br label %block_0x2c8, !mcsema_real_eip !84

block_0x131:                                      ; preds = %block_0x11b
  %213 = add i32 %EDI_val.5, -74639
  %214 = xor i32 %213, %EDI_val.5, !mcsema_real_eip !85
  %215 = and i32 %214, 16, !mcsema_real_eip !85
  %216 = icmp ne i32 %215, 0, !mcsema_real_eip !85
  store i1 %216, i1* %AF, align 1, !mcsema_real_eip !85
  %217 = trunc i32 %213 to i8, !mcsema_real_eip !85
  %218 = call i8 @llvm.ctpop.i8(i8 %217), !mcsema_real_eip !85
  %219 = and i8 %218, 1
  %220 = icmp eq i8 %219, 0
  store i1 %220, i1* %PF, align 1, !mcsema_real_eip !85
  %221 = icmp eq i32 %213, 0
  store i1 %221, i1* %ZF, align 1, !mcsema_real_eip !85
  %222 = icmp slt i32 %213, 0
  store i1 %222, i1* %SF, align 1, !mcsema_real_eip !85
  %223 = icmp ult i32 %EDI_val.5, 74639, !mcsema_real_eip !85
  store i1 %223, i1* %CF, align 1, !mcsema_real_eip !85
  %224 = and i32 %214, %EDI_val.5, !mcsema_real_eip !85
  %225 = icmp slt i32 %224, 0
  store i1 %225, i1* %OF, align 1, !mcsema_real_eip !85
  %226 = zext i32 %213 to i64, !mcsema_real_eip !85
  store i64 %226, i64* %XAX, align 8, !mcsema_real_eip !85
  %_new_gep_189 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 16
  %227 = bitcast i8* %_new_gep_189 to i32*
  store i32 %213, i32* %227, align 4, !mcsema_real_eip !86
  br i1 %221, label %block_0x26f, label %block_0x147, !mcsema_real_eip !87

block_0x26f:                                      ; preds = %block_0x131
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !88
  call void @llvm.memset.p0i8.i64(i8* nonnull %PF_full, i8 0, i64 5, i32 1, i1 false)
  br label %block_0x2c8, !mcsema_real_eip !89

block_0x147:                                      ; preds = %block_0x131
  %228 = add i32 %EDI_val.5, -74640
  %229 = xor i32 %228, %EDI_val.5, !mcsema_real_eip !90
  %230 = and i32 %229, 16
  %231 = icmp eq i32 %230, 0
  store i1 %231, i1* %AF, align 1, !mcsema_real_eip !90
  %232 = trunc i32 %228 to i8, !mcsema_real_eip !90
  %233 = call i8 @llvm.ctpop.i8(i8 %232), !mcsema_real_eip !90
  %234 = and i8 %233, 1
  %235 = icmp eq i8 %234, 0
  store i1 %235, i1* %PF, align 1, !mcsema_real_eip !90
  %236 = icmp eq i32 %228, 0
  store i1 %236, i1* %ZF, align 1, !mcsema_real_eip !90
  %237 = icmp slt i32 %228, 0
  store i1 %237, i1* %SF, align 1, !mcsema_real_eip !90
  %238 = icmp ult i32 %EDI_val.5, 74640, !mcsema_real_eip !90
  store i1 %238, i1* %CF, align 1, !mcsema_real_eip !90
  %239 = and i32 %229, %EDI_val.5, !mcsema_real_eip !90
  %240 = icmp slt i32 %239, 0
  store i1 %240, i1* %OF, align 1, !mcsema_real_eip !90
  %241 = zext i32 %228 to i64, !mcsema_real_eip !90
  store i64 %241, i64* %XAX, align 8, !mcsema_real_eip !90
  %_new_gep_201 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 12
  %242 = bitcast i8* %_new_gep_201 to i32*
  store i32 %228, i32* %242, align 4, !mcsema_real_eip !91
  br i1 %236, label %block_0x27f, label %block_0x15d, !mcsema_real_eip !92

block_0x27f:                                      ; preds = %block_0x147
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !93
  %243 = bitcast i8* %AF_full to i32*
  store i32 0, i32* %243, align 1
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !94
  br label %block_0x2c8, !mcsema_real_eip !95

block_0x15d:                                      ; preds = %block_0x147
  %244 = add i32 %EDI_val.5, -74641
  %245 = xor i32 %244, %EDI_val.5, !mcsema_real_eip !96
  %246 = and i32 %245, 16
  %247 = icmp eq i32 %246, 0
  store i1 %247, i1* %AF, align 1, !mcsema_real_eip !96
  %248 = trunc i32 %244 to i8, !mcsema_real_eip !96
  %249 = call i8 @llvm.ctpop.i8(i8 %248), !mcsema_real_eip !96
  %250 = and i8 %249, 1
  %251 = icmp eq i8 %250, 0
  store i1 %251, i1* %PF, align 1, !mcsema_real_eip !96
  %252 = icmp eq i32 %244, 0
  store i1 %252, i1* %ZF, align 1, !mcsema_real_eip !96
  %253 = icmp slt i32 %244, 0
  store i1 %253, i1* %SF, align 1, !mcsema_real_eip !96
  %254 = icmp ult i32 %EDI_val.5, 74641, !mcsema_real_eip !96
  store i1 %254, i1* %CF, align 1, !mcsema_real_eip !96
  %255 = and i32 %245, %EDI_val.5, !mcsema_real_eip !96
  %256 = icmp slt i32 %255, 0
  store i1 %256, i1* %OF, align 1, !mcsema_real_eip !96
  %257 = zext i32 %244 to i64, !mcsema_real_eip !96
  store i64 %257, i64* %XAX, align 8, !mcsema_real_eip !96
  %_new_gep_213 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 8
  %258 = bitcast i8* %_new_gep_213 to i32*
  store i32 %244, i32* %258, align 4, !mcsema_real_eip !97
  br i1 %252, label %block_0x28f, label %block_0x173, !mcsema_real_eip !98

block_0x28f:                                      ; preds = %block_0x15d
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !99
  call void @llvm.memset.p0i8.i64(i8* nonnull %PF_full, i8 0, i64 5, i32 1, i1 false)
  br label %block_0x2c8, !mcsema_real_eip !100

block_0x173:                                      ; preds = %block_0x15d
  %259 = add i32 %EDI_val.5, -74642
  %260 = xor i32 %259, %EDI_val.5, !mcsema_real_eip !101
  %261 = and i32 %260, 16
  %262 = icmp eq i32 %261, 0
  store i1 %262, i1* %AF, align 1, !mcsema_real_eip !101
  %263 = trunc i32 %259 to i8, !mcsema_real_eip !101
  %264 = call i8 @llvm.ctpop.i8(i8 %263), !mcsema_real_eip !101
  %265 = and i8 %264, 1
  %266 = icmp eq i8 %265, 0
  store i1 %266, i1* %PF, align 1, !mcsema_real_eip !101
  %267 = icmp eq i32 %259, 0
  store i1 %267, i1* %ZF, align 1, !mcsema_real_eip !101
  %268 = icmp slt i32 %259, 0
  store i1 %268, i1* %SF, align 1, !mcsema_real_eip !101
  %269 = icmp ult i32 %EDI_val.5, 74642, !mcsema_real_eip !101
  store i1 %269, i1* %CF, align 1, !mcsema_real_eip !101
  %270 = and i32 %260, %EDI_val.5, !mcsema_real_eip !101
  %271 = icmp slt i32 %270, 0
  store i1 %271, i1* %OF, align 1, !mcsema_real_eip !101
  %272 = zext i32 %259 to i64, !mcsema_real_eip !101
  store i64 %272, i64* %XAX, align 8, !mcsema_real_eip !101
  %_new_gep_225 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 4
  %273 = bitcast i8* %_new_gep_225 to i32*
  store i32 %259, i32* %273, align 4, !mcsema_real_eip !102
  br i1 %267, label %block_0x29f, label %block_0x189, !mcsema_real_eip !103

block_0x29f:                                      ; preds = %block_0x173
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !104
  call void @llvm.memset.p0i8.i64(i8* nonnull %PF_full, i8 0, i64 5, i32 1, i1 false)
  br label %block_0x2c8, !mcsema_real_eip !105

block_0x189:                                      ; preds = %block_0x173
  %274 = add i32 %EDI_val.5, -74643
  %275 = xor i32 %274, %EDI_val.5, !mcsema_real_eip !106
  %276 = and i32 %275, 16
  %277 = icmp eq i32 %276, 0
  store i1 %277, i1* %AF, align 1, !mcsema_real_eip !106
  %278 = trunc i32 %274 to i8, !mcsema_real_eip !106
  %279 = call i8 @llvm.ctpop.i8(i8 %278), !mcsema_real_eip !106
  %280 = and i8 %279, 1
  %281 = icmp eq i8 %280, 0
  store i1 %281, i1* %PF, align 1, !mcsema_real_eip !106
  %282 = icmp eq i32 %274, 0
  store i1 %282, i1* %ZF, align 1, !mcsema_real_eip !106
  %283 = icmp slt i32 %274, 0
  store i1 %283, i1* %SF, align 1, !mcsema_real_eip !106
  %284 = icmp ult i32 %EDI_val.5, 74643, !mcsema_real_eip !106
  store i1 %284, i1* %CF, align 1, !mcsema_real_eip !106
  %285 = and i32 %275, %EDI_val.5, !mcsema_real_eip !106
  %286 = icmp slt i32 %285, 0
  store i1 %286, i1* %OF, align 1, !mcsema_real_eip !106
  %287 = bitcast [92 x i8]* %_local_stack_start_ptr_3 to i32*
  store i32 %274, i32* %287, align 4, !mcsema_real_eip !107
  store i64 0, i64* %XAX, align 8
  br i1 %282, label %block_0x2af, label %block_0x2bf, !mcsema_real_eip !108

block_0x2af:                                      ; preds = %block_0x189
  %288 = bitcast i8* %AF_full to i32*
  store i32 0, i32* %288, align 1
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !109
  br label %block_0x2c8, !mcsema_real_eip !110

block_0x2bf:                                      ; preds = %block_0x189
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !111
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !111
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !111
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !111
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !111
  br label %block_0x2c8
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

block_0x19f:                                      ; preds = %entry
  %_new_load_265 = load i32, i32* %3, align 4
  %12 = zext i32 %_new_load_265 to i64, !mcsema_real_eip !10
  store i64 %12, i64* %XAX, align 8, !mcsema_real_eip !10
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !11
  %13 = icmp slt i32 %_new_load_265, 0
  store i1 %13, i1* %SF, align 1, !mcsema_real_eip !11
  %14 = icmp eq i32 %_new_load_265, 0, !mcsema_real_eip !11
  store i1 %14, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !11
  %15 = trunc i32 %_new_load_265 to i8, !mcsema_real_eip !11
  %16 = call i8 @llvm.ctpop.i8(i8 %15), !mcsema_real_eip !11
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  store i1 %18, i1* %PF, align 1, !mcsema_real_eip !11
  br label %block_0x2c8, !mcsema_real_eip !12

block_0x2c8:                                      ; preds = %block_0x2bf, %block_0x2af, %block_0x29f, %block_0x28f, %block_0x27f, %block_0x26f, %block_0x25f, %block_0x24f, %block_0x23f, %block_0x22f, %block_0x21f, %block_0x20f, %block_0x201, %block_0x1f3, %block_0x1e5, %block_0x1d7, %block_0x1c9, %block_0x1bb, %block_0x1ad, %block_0x19f
  %.sink2 = phi i1 [ false, %block_0x2bf ], [ %559, %block_0x2af ], [ %530, %block_0x29f ], [ %500, %block_0x28f ], [ %470, %block_0x27f ], [ %440, %block_0x26f ], [ %410, %block_0x25f ], [ %380, %block_0x24f ], [ %350, %block_0x23f ], [ %320, %block_0x22f ], [ %290, %block_0x21f ], [ %260, %block_0x20f ], [ %230, %block_0x201 ], [ %200, %block_0x1f3 ], [ %170, %block_0x1e5 ], [ %140, %block_0x1d7 ], [ %110, %block_0x1c9 ], [ %80, %block_0x1bb ], [ %50, %block_0x1ad ], [ false, %block_0x19f ]
  %EAX_val.242.sink = phi i32 [ %_new_load_850, %block_0x2bf ], [ %546, %block_0x2af ], [ %517, %block_0x29f ], [ %487, %block_0x28f ], [ %457, %block_0x27f ], [ %427, %block_0x26f ], [ %397, %block_0x25f ], [ %367, %block_0x24f ], [ %337, %block_0x23f ], [ %307, %block_0x22f ], [ %277, %block_0x21f ], [ %247, %block_0x20f ], [ %217, %block_0x201 ], [ %187, %block_0x1f3 ], [ %157, %block_0x1e5 ], [ %127, %block_0x1d7 ], [ %97, %block_0x1c9 ], [ %67, %block_0x1bb ], [ %37, %block_0x1ad ], [ %_new_load_265, %block_0x19f ]
  store i1 %.sink2, i1* %CF, align 1
  store i32 %EAX_val.242.sink, i32* %3, align 4
  %19 = zext i32 %EAX_val.242.sink to i64, !mcsema_real_eip !13
  store i64 %19, i64* %XAX, align 8, !mcsema_real_eip !13
  store volatile i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_ptr2int_, i64* %XBP, align 8, !mcsema_real_eip !112
  %_new_gep_25 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 92
  store volatile i8* %_new_gep_25, i8** %_RSP_ptr_, align 8
  %_new_gep_27 = getelementptr [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 100
  %20 = add i64 %RSP_val.1, 8, !mcsema_real_eip !14
  %_address_in_parent_stack_bt_309._allin_new_bt_28 = bitcast i8* %_new_gep_25 to i64*
  %_new_load_310 = load i64, i64* %_address_in_parent_stack_bt_309._allin_new_bt_28, align 8
  store i64 %_new_load_310, i64* %XIP, align 8, !mcsema_real_eip !14
  store volatile i8* %_new_gep_27, i8** %_RSP_ptr_, align 8
  store i64 %20, i64* %XSP, align 8, !mcsema_real_eip !14
  ret void, !mcsema_real_eip !14

block_0x21:                                       ; preds = %entry
  %_address_in_parent_stack_bt_324. = bitcast i8* %_new_gep_12 to i32*
  %_new_load_325 = load i32, i32* %_address_in_parent_stack_bt_324., align 4
  %21 = add i32 %_new_load_325, -1
  %22 = xor i32 %21, %_new_load_325, !mcsema_real_eip !15
  %23 = and i32 %22, 16, !mcsema_real_eip !15
  %24 = icmp ne i32 %23, 0, !mcsema_real_eip !15
  store i1 %24, i1* %AF, align 1, !mcsema_real_eip !15
  %25 = trunc i32 %21 to i8, !mcsema_real_eip !15
  %26 = call i8 @llvm.ctpop.i8(i8 %25), !mcsema_real_eip !15
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  store i1 %28, i1* %PF, align 1, !mcsema_real_eip !15
  %29 = icmp eq i32 %21, 0
  store i1 %29, i1* %ZF, align 1, !mcsema_real_eip !15
  %30 = icmp slt i32 %21, 0
  store i1 %30, i1* %SF, align 1, !mcsema_real_eip !15
  %31 = icmp eq i32 %_new_load_325, 0
  store i1 %31, i1* %CF, align 1, !mcsema_real_eip !15
  %32 = and i32 %22, %_new_load_325, !mcsema_real_eip !15
  %33 = icmp slt i32 %32, 0
  store i1 %33, i1* %OF, align 1, !mcsema_real_eip !15
  %34 = zext i32 %21 to i64, !mcsema_real_eip !15
  store i64 %34, i64* %XAX, align 8, !mcsema_real_eip !15
  %_new_gep_33 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 68
  %35 = bitcast i8* %_new_gep_33 to i32*
  store i32 %21, i32* %35, align 4, !mcsema_real_eip !16
  br i1 %29, label %block_0x1ad, label %block_0x35, !mcsema_real_eip !17

block_0x1ad:                                      ; preds = %block_0x21
  %_new_load_340 = load i32, i32* %3, align 4
  %36 = zext i32 %_new_load_340 to i64, !mcsema_real_eip !18
  store i64 %36, i64* %XAX, align 8, !mcsema_real_eip !18
  %37 = add i32 %_new_load_340, 1, !mcsema_real_eip !113
  %38 = xor i32 %37, %_new_load_340, !mcsema_real_eip !113
  %39 = and i32 %38, 16, !mcsema_real_eip !113
  %40 = icmp ne i32 %39, 0, !mcsema_real_eip !113
  store i1 %40, i1* %AF, align 1, !mcsema_real_eip !113
  %41 = icmp slt i32 %37, 0
  store i1 %41, i1* %SF, align 1, !mcsema_real_eip !113
  %42 = icmp eq i32 %37, 0, !mcsema_real_eip !113
  store i1 %42, i1* %ZF, align 1, !mcsema_real_eip !113
  %43 = xor i32 %_new_load_340, -2147483648, !mcsema_real_eip !113
  %44 = and i32 %38, %43, !mcsema_real_eip !113
  %45 = icmp slt i32 %44, 0
  store i1 %45, i1* %OF, align 1, !mcsema_real_eip !113
  %46 = trunc i32 %37 to i8, !mcsema_real_eip !113
  %47 = call i8 @llvm.ctpop.i8(i8 %46), !mcsema_real_eip !113
  %48 = and i8 %47, 1
  %49 = icmp eq i8 %48, 0
  store i1 %49, i1* %PF, align 1, !mcsema_real_eip !113
  %50 = icmp eq i32 %_new_load_340, -1
  br label %block_0x2c8, !mcsema_real_eip !19

block_0x35:                                       ; preds = %block_0x21
  %_new_load_355 = load i32, i32* %_address_in_parent_stack_bt_324., align 4
  %51 = add i32 %_new_load_355, -2
  %52 = xor i32 %51, %_new_load_355, !mcsema_real_eip !20
  %53 = and i32 %52, 16, !mcsema_real_eip !20
  %54 = icmp ne i32 %53, 0, !mcsema_real_eip !20
  store i1 %54, i1* %AF, align 1, !mcsema_real_eip !20
  %55 = trunc i32 %51 to i8, !mcsema_real_eip !20
  %56 = call i8 @llvm.ctpop.i8(i8 %55), !mcsema_real_eip !20
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  store i1 %58, i1* %PF, align 1, !mcsema_real_eip !20
  %59 = icmp eq i32 %51, 0
  store i1 %59, i1* %ZF, align 1, !mcsema_real_eip !20
  %60 = icmp slt i32 %51, 0
  store i1 %60, i1* %SF, align 1, !mcsema_real_eip !20
  %61 = icmp ult i32 %_new_load_355, 2, !mcsema_real_eip !20
  store i1 %61, i1* %CF, align 1, !mcsema_real_eip !20
  %62 = and i32 %52, %_new_load_355, !mcsema_real_eip !20
  %63 = icmp slt i32 %62, 0
  store i1 %63, i1* %OF, align 1, !mcsema_real_eip !20
  %64 = zext i32 %51 to i64, !mcsema_real_eip !20
  store i64 %64, i64* %XAX, align 8, !mcsema_real_eip !20
  %_new_gep_45 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 64
  %65 = bitcast i8* %_new_gep_45 to i32*
  store i32 %51, i32* %65, align 4, !mcsema_real_eip !21
  br i1 %59, label %block_0x1bb, label %block_0x49, !mcsema_real_eip !22

block_0x1bb:                                      ; preds = %block_0x35
  %_new_load_370 = load i32, i32* %3, align 4
  %66 = zext i32 %_new_load_370 to i64, !mcsema_real_eip !23
  store i64 %66, i64* %XAX, align 8, !mcsema_real_eip !23
  %67 = add i32 %_new_load_370, 2, !mcsema_real_eip !114
  %68 = xor i32 %67, %_new_load_370, !mcsema_real_eip !114
  %69 = and i32 %68, 16, !mcsema_real_eip !114
  %70 = icmp ne i32 %69, 0, !mcsema_real_eip !114
  store i1 %70, i1* %AF, align 1, !mcsema_real_eip !114
  %71 = icmp slt i32 %67, 0
  store i1 %71, i1* %SF, align 1, !mcsema_real_eip !114
  %72 = icmp eq i32 %67, 0, !mcsema_real_eip !114
  store i1 %72, i1* %ZF, align 1, !mcsema_real_eip !114
  %73 = xor i32 %_new_load_370, -2147483648, !mcsema_real_eip !114
  %74 = and i32 %68, %73, !mcsema_real_eip !114
  %75 = icmp slt i32 %74, 0
  store i1 %75, i1* %OF, align 1, !mcsema_real_eip !114
  %76 = trunc i32 %67 to i8, !mcsema_real_eip !114
  %77 = call i8 @llvm.ctpop.i8(i8 %76), !mcsema_real_eip !114
  %78 = and i8 %77, 1
  %79 = icmp eq i8 %78, 0
  store i1 %79, i1* %PF, align 1, !mcsema_real_eip !114
  %80 = icmp ugt i32 %_new_load_370, -3
  br label %block_0x2c8, !mcsema_real_eip !24

block_0x49:                                       ; preds = %block_0x35
  %_new_load_385 = load i32, i32* %_address_in_parent_stack_bt_324., align 4
  %81 = add i32 %_new_load_385, -4
  %82 = xor i32 %81, %_new_load_385, !mcsema_real_eip !25
  %83 = and i32 %82, 16, !mcsema_real_eip !25
  %84 = icmp ne i32 %83, 0, !mcsema_real_eip !25
  store i1 %84, i1* %AF, align 1, !mcsema_real_eip !25
  %85 = trunc i32 %81 to i8, !mcsema_real_eip !25
  %86 = call i8 @llvm.ctpop.i8(i8 %85), !mcsema_real_eip !25
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  store i1 %88, i1* %PF, align 1, !mcsema_real_eip !25
  %89 = icmp eq i32 %81, 0
  store i1 %89, i1* %ZF, align 1, !mcsema_real_eip !25
  %90 = icmp slt i32 %81, 0
  store i1 %90, i1* %SF, align 1, !mcsema_real_eip !25
  %91 = icmp ult i32 %_new_load_385, 4, !mcsema_real_eip !25
  store i1 %91, i1* %CF, align 1, !mcsema_real_eip !25
  %92 = and i32 %82, %_new_load_385, !mcsema_real_eip !25
  %93 = icmp slt i32 %92, 0
  store i1 %93, i1* %OF, align 1, !mcsema_real_eip !25
  %94 = zext i32 %81 to i64, !mcsema_real_eip !25
  store i64 %94, i64* %XAX, align 8, !mcsema_real_eip !25
  %_new_gep_57 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 60
  %95 = bitcast i8* %_new_gep_57 to i32*
  store i32 %81, i32* %95, align 4, !mcsema_real_eip !26
  br i1 %89, label %block_0x1c9, label %block_0x5d, !mcsema_real_eip !27

block_0x1c9:                                      ; preds = %block_0x49
  %_new_load_400 = load i32, i32* %3, align 4
  %96 = zext i32 %_new_load_400 to i64, !mcsema_real_eip !28
  store i64 %96, i64* %XAX, align 8, !mcsema_real_eip !28
  %97 = add i32 %_new_load_400, 4, !mcsema_real_eip !115
  %98 = xor i32 %97, %_new_load_400, !mcsema_real_eip !115
  %99 = and i32 %98, 16, !mcsema_real_eip !115
  %100 = icmp ne i32 %99, 0, !mcsema_real_eip !115
  store i1 %100, i1* %AF, align 1, !mcsema_real_eip !115
  %101 = icmp slt i32 %97, 0
  store i1 %101, i1* %SF, align 1, !mcsema_real_eip !115
  %102 = icmp eq i32 %97, 0, !mcsema_real_eip !115
  store i1 %102, i1* %ZF, align 1, !mcsema_real_eip !115
  %103 = xor i32 %_new_load_400, -2147483648, !mcsema_real_eip !115
  %104 = and i32 %98, %103, !mcsema_real_eip !115
  %105 = icmp slt i32 %104, 0
  store i1 %105, i1* %OF, align 1, !mcsema_real_eip !115
  %106 = trunc i32 %97 to i8, !mcsema_real_eip !115
  %107 = call i8 @llvm.ctpop.i8(i8 %106), !mcsema_real_eip !115
  %108 = and i8 %107, 1
  %109 = icmp eq i8 %108, 0
  store i1 %109, i1* %PF, align 1, !mcsema_real_eip !115
  %110 = icmp ugt i32 %_new_load_400, -5
  br label %block_0x2c8, !mcsema_real_eip !29

block_0x5d:                                       ; preds = %block_0x49
  %_new_load_415 = load i32, i32* %_address_in_parent_stack_bt_324., align 4
  %111 = add i32 %_new_load_415, -6
  %112 = xor i32 %111, %_new_load_415, !mcsema_real_eip !30
  %113 = and i32 %112, 16, !mcsema_real_eip !30
  %114 = icmp ne i32 %113, 0, !mcsema_real_eip !30
  store i1 %114, i1* %AF, align 1, !mcsema_real_eip !30
  %115 = trunc i32 %111 to i8, !mcsema_real_eip !30
  %116 = call i8 @llvm.ctpop.i8(i8 %115), !mcsema_real_eip !30
  %117 = and i8 %116, 1
  %118 = icmp eq i8 %117, 0
  store i1 %118, i1* %PF, align 1, !mcsema_real_eip !30
  %119 = icmp eq i32 %111, 0
  store i1 %119, i1* %ZF, align 1, !mcsema_real_eip !30
  %120 = icmp slt i32 %111, 0
  store i1 %120, i1* %SF, align 1, !mcsema_real_eip !30
  %121 = icmp ult i32 %_new_load_415, 6, !mcsema_real_eip !30
  store i1 %121, i1* %CF, align 1, !mcsema_real_eip !30
  %122 = and i32 %112, %_new_load_415, !mcsema_real_eip !30
  %123 = icmp slt i32 %122, 0
  store i1 %123, i1* %OF, align 1, !mcsema_real_eip !30
  %124 = zext i32 %111 to i64, !mcsema_real_eip !30
  store i64 %124, i64* %XAX, align 8, !mcsema_real_eip !30
  %_new_gep_69 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 56
  %125 = bitcast i8* %_new_gep_69 to i32*
  store i32 %111, i32* %125, align 4, !mcsema_real_eip !31
  br i1 %119, label %block_0x1d7, label %block_0x71, !mcsema_real_eip !32

block_0x1d7:                                      ; preds = %block_0x5d
  %_new_load_430 = load i32, i32* %3, align 4
  %126 = zext i32 %_new_load_430 to i64, !mcsema_real_eip !33
  store i64 %126, i64* %XAX, align 8, !mcsema_real_eip !33
  %127 = add i32 %_new_load_430, 6, !mcsema_real_eip !34
  %128 = xor i32 %127, %_new_load_430, !mcsema_real_eip !34
  %129 = and i32 %128, 16, !mcsema_real_eip !34
  %130 = icmp ne i32 %129, 0, !mcsema_real_eip !34
  store i1 %130, i1* %AF, align 1, !mcsema_real_eip !34
  %131 = icmp slt i32 %127, 0
  store i1 %131, i1* %SF, align 1, !mcsema_real_eip !34
  %132 = icmp eq i32 %127, 0, !mcsema_real_eip !34
  store i1 %132, i1* %ZF, align 1, !mcsema_real_eip !34
  %133 = xor i32 %_new_load_430, -2147483648, !mcsema_real_eip !34
  %134 = and i32 %128, %133, !mcsema_real_eip !34
  %135 = icmp slt i32 %134, 0
  store i1 %135, i1* %OF, align 1, !mcsema_real_eip !34
  %136 = trunc i32 %127 to i8, !mcsema_real_eip !34
  %137 = call i8 @llvm.ctpop.i8(i8 %136), !mcsema_real_eip !34
  %138 = and i8 %137, 1
  %139 = icmp eq i8 %138, 0
  store i1 %139, i1* %PF, align 1, !mcsema_real_eip !34
  %140 = icmp ugt i32 %_new_load_430, -7
  br label %block_0x2c8, !mcsema_real_eip !35

block_0x71:                                       ; preds = %block_0x5d
  %_new_load_445 = load i32, i32* %_address_in_parent_stack_bt_324., align 4
  %141 = add i32 %_new_load_445, -12
  %142 = xor i32 %141, %_new_load_445, !mcsema_real_eip !36
  %143 = and i32 %142, 16, !mcsema_real_eip !36
  %144 = icmp ne i32 %143, 0, !mcsema_real_eip !36
  store i1 %144, i1* %AF, align 1, !mcsema_real_eip !36
  %145 = trunc i32 %141 to i8, !mcsema_real_eip !36
  %146 = call i8 @llvm.ctpop.i8(i8 %145), !mcsema_real_eip !36
  %147 = and i8 %146, 1
  %148 = icmp eq i8 %147, 0
  store i1 %148, i1* %PF, align 1, !mcsema_real_eip !36
  %149 = icmp eq i32 %141, 0
  store i1 %149, i1* %ZF, align 1, !mcsema_real_eip !36
  %150 = icmp slt i32 %141, 0
  store i1 %150, i1* %SF, align 1, !mcsema_real_eip !36
  %151 = icmp ult i32 %_new_load_445, 12, !mcsema_real_eip !36
  store i1 %151, i1* %CF, align 1, !mcsema_real_eip !36
  %152 = and i32 %142, %_new_load_445, !mcsema_real_eip !36
  %153 = icmp slt i32 %152, 0
  store i1 %153, i1* %OF, align 1, !mcsema_real_eip !36
  %154 = zext i32 %141 to i64, !mcsema_real_eip !36
  store i64 %154, i64* %XAX, align 8, !mcsema_real_eip !36
  %_new_gep_81 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 52
  %155 = bitcast i8* %_new_gep_81 to i32*
  store i32 %141, i32* %155, align 4, !mcsema_real_eip !37
  br i1 %149, label %block_0x1e5, label %block_0x85, !mcsema_real_eip !38

block_0x1e5:                                      ; preds = %block_0x71
  %_new_load_460 = load i32, i32* %3, align 4
  %156 = zext i32 %_new_load_460 to i64, !mcsema_real_eip !39
  store i64 %156, i64* %XAX, align 8, !mcsema_real_eip !39
  %157 = add i32 %_new_load_460, 12, !mcsema_real_eip !40
  %158 = xor i32 %157, %_new_load_460, !mcsema_real_eip !40
  %159 = and i32 %158, 16, !mcsema_real_eip !40
  %160 = icmp ne i32 %159, 0, !mcsema_real_eip !40
  store i1 %160, i1* %AF, align 1, !mcsema_real_eip !40
  %161 = icmp slt i32 %157, 0
  store i1 %161, i1* %SF, align 1, !mcsema_real_eip !40
  %162 = icmp eq i32 %157, 0, !mcsema_real_eip !40
  store i1 %162, i1* %ZF, align 1, !mcsema_real_eip !40
  %163 = xor i32 %_new_load_460, -2147483648, !mcsema_real_eip !40
  %164 = and i32 %158, %163, !mcsema_real_eip !40
  %165 = icmp slt i32 %164, 0
  store i1 %165, i1* %OF, align 1, !mcsema_real_eip !40
  %166 = trunc i32 %157 to i8, !mcsema_real_eip !40
  %167 = call i8 @llvm.ctpop.i8(i8 %166), !mcsema_real_eip !40
  %168 = and i8 %167, 1
  %169 = icmp eq i8 %168, 0
  store i1 %169, i1* %PF, align 1, !mcsema_real_eip !40
  %170 = icmp ugt i32 %_new_load_460, -13
  br label %block_0x2c8, !mcsema_real_eip !41

block_0x85:                                       ; preds = %block_0x71
  %_new_load_475 = load i32, i32* %_address_in_parent_stack_bt_324., align 4
  %171 = add i32 %_new_load_475, -13
  %172 = xor i32 %171, %_new_load_475, !mcsema_real_eip !42
  %173 = and i32 %172, 16, !mcsema_real_eip !42
  %174 = icmp ne i32 %173, 0, !mcsema_real_eip !42
  store i1 %174, i1* %AF, align 1, !mcsema_real_eip !42
  %175 = trunc i32 %171 to i8, !mcsema_real_eip !42
  %176 = call i8 @llvm.ctpop.i8(i8 %175), !mcsema_real_eip !42
  %177 = and i8 %176, 1
  %178 = icmp eq i8 %177, 0
  store i1 %178, i1* %PF, align 1, !mcsema_real_eip !42
  %179 = icmp eq i32 %171, 0
  store i1 %179, i1* %ZF, align 1, !mcsema_real_eip !42
  %180 = icmp slt i32 %171, 0
  store i1 %180, i1* %SF, align 1, !mcsema_real_eip !42
  %181 = icmp ult i32 %_new_load_475, 13, !mcsema_real_eip !42
  store i1 %181, i1* %CF, align 1, !mcsema_real_eip !42
  %182 = and i32 %172, %_new_load_475, !mcsema_real_eip !42
  %183 = icmp slt i32 %182, 0
  store i1 %183, i1* %OF, align 1, !mcsema_real_eip !42
  %184 = zext i32 %171 to i64, !mcsema_real_eip !42
  store i64 %184, i64* %XAX, align 8, !mcsema_real_eip !42
  %_new_gep_93 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 48
  %185 = bitcast i8* %_new_gep_93 to i32*
  store i32 %171, i32* %185, align 4, !mcsema_real_eip !43
  br i1 %179, label %block_0x1f3, label %block_0x99, !mcsema_real_eip !44

block_0x1f3:                                      ; preds = %block_0x85
  %_new_load_490 = load i32, i32* %3, align 4
  %186 = zext i32 %_new_load_490 to i64, !mcsema_real_eip !45
  store i64 %186, i64* %XAX, align 8, !mcsema_real_eip !45
  %187 = add i32 %_new_load_490, 13, !mcsema_real_eip !116
  %188 = xor i32 %187, %_new_load_490, !mcsema_real_eip !116
  %189 = and i32 %188, 16, !mcsema_real_eip !116
  %190 = icmp ne i32 %189, 0, !mcsema_real_eip !116
  store i1 %190, i1* %AF, align 1, !mcsema_real_eip !116
  %191 = icmp slt i32 %187, 0
  store i1 %191, i1* %SF, align 1, !mcsema_real_eip !116
  %192 = icmp eq i32 %187, 0, !mcsema_real_eip !116
  store i1 %192, i1* %ZF, align 1, !mcsema_real_eip !116
  %193 = xor i32 %_new_load_490, -2147483648, !mcsema_real_eip !116
  %194 = and i32 %188, %193, !mcsema_real_eip !116
  %195 = icmp slt i32 %194, 0
  store i1 %195, i1* %OF, align 1, !mcsema_real_eip !116
  %196 = trunc i32 %187 to i8, !mcsema_real_eip !116
  %197 = call i8 @llvm.ctpop.i8(i8 %196), !mcsema_real_eip !116
  %198 = and i8 %197, 1
  %199 = icmp eq i8 %198, 0
  store i1 %199, i1* %PF, align 1, !mcsema_real_eip !116
  %200 = icmp ugt i32 %_new_load_490, -14
  br label %block_0x2c8, !mcsema_real_eip !46

block_0x99:                                       ; preds = %block_0x85
  %_new_load_505 = load i32, i32* %_address_in_parent_stack_bt_324., align 4
  %201 = add i32 %_new_load_505, -19
  %202 = xor i32 %201, %_new_load_505, !mcsema_real_eip !47
  %203 = and i32 %202, 16
  %204 = icmp eq i32 %203, 0
  store i1 %204, i1* %AF, align 1, !mcsema_real_eip !47
  %205 = trunc i32 %201 to i8, !mcsema_real_eip !47
  %206 = call i8 @llvm.ctpop.i8(i8 %205), !mcsema_real_eip !47
  %207 = and i8 %206, 1
  %208 = icmp eq i8 %207, 0
  store i1 %208, i1* %PF, align 1, !mcsema_real_eip !47
  %209 = icmp eq i32 %201, 0
  store i1 %209, i1* %ZF, align 1, !mcsema_real_eip !47
  %210 = icmp slt i32 %201, 0
  store i1 %210, i1* %SF, align 1, !mcsema_real_eip !47
  %211 = icmp ult i32 %_new_load_505, 19, !mcsema_real_eip !47
  store i1 %211, i1* %CF, align 1, !mcsema_real_eip !47
  %212 = and i32 %202, %_new_load_505, !mcsema_real_eip !47
  %213 = icmp slt i32 %212, 0
  store i1 %213, i1* %OF, align 1, !mcsema_real_eip !47
  %214 = zext i32 %201 to i64, !mcsema_real_eip !47
  store i64 %214, i64* %XAX, align 8, !mcsema_real_eip !47
  %_new_gep_105 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 44
  %215 = bitcast i8* %_new_gep_105 to i32*
  store i32 %201, i32* %215, align 4, !mcsema_real_eip !48
  br i1 %209, label %block_0x201, label %block_0xad, !mcsema_real_eip !49

block_0x201:                                      ; preds = %block_0x99
  %_new_load_520 = load i32, i32* %3, align 4
  %216 = zext i32 %_new_load_520 to i64, !mcsema_real_eip !50
  store i64 %216, i64* %XAX, align 8, !mcsema_real_eip !50
  %217 = add i32 %_new_load_520, 19, !mcsema_real_eip !117
  %218 = xor i32 %217, %_new_load_520, !mcsema_real_eip !117
  %219 = and i32 %218, 16
  %220 = icmp eq i32 %219, 0
  store i1 %220, i1* %AF, align 1, !mcsema_real_eip !117
  %221 = icmp slt i32 %217, 0
  store i1 %221, i1* %SF, align 1, !mcsema_real_eip !117
  %222 = icmp eq i32 %217, 0, !mcsema_real_eip !117
  store i1 %222, i1* %ZF, align 1, !mcsema_real_eip !117
  %223 = xor i32 %_new_load_520, -2147483648, !mcsema_real_eip !117
  %224 = and i32 %218, %223, !mcsema_real_eip !117
  %225 = icmp slt i32 %224, 0
  store i1 %225, i1* %OF, align 1, !mcsema_real_eip !117
  %226 = trunc i32 %217 to i8, !mcsema_real_eip !117
  %227 = call i8 @llvm.ctpop.i8(i8 %226), !mcsema_real_eip !117
  %228 = and i8 %227, 1
  %229 = icmp eq i8 %228, 0
  store i1 %229, i1* %PF, align 1, !mcsema_real_eip !117
  %230 = icmp ugt i32 %_new_load_520, -20
  br label %block_0x2c8, !mcsema_real_eip !51

block_0xad:                                       ; preds = %block_0x99
  %_new_load_535 = load i32, i32* %_address_in_parent_stack_bt_324., align 4
  %231 = add i32 %_new_load_535, -255
  %232 = xor i32 %231, %_new_load_535, !mcsema_real_eip !52
  %233 = and i32 %232, 16
  %234 = icmp eq i32 %233, 0
  store i1 %234, i1* %AF, align 1, !mcsema_real_eip !52
  %235 = trunc i32 %231 to i8, !mcsema_real_eip !52
  %236 = call i8 @llvm.ctpop.i8(i8 %235), !mcsema_real_eip !52
  %237 = and i8 %236, 1
  %238 = icmp eq i8 %237, 0
  store i1 %238, i1* %PF, align 1, !mcsema_real_eip !52
  %239 = icmp eq i32 %231, 0
  store i1 %239, i1* %ZF, align 1, !mcsema_real_eip !52
  %240 = icmp slt i32 %231, 0
  store i1 %240, i1* %SF, align 1, !mcsema_real_eip !52
  %241 = icmp ult i32 %_new_load_535, 255, !mcsema_real_eip !52
  store i1 %241, i1* %CF, align 1, !mcsema_real_eip !52
  %242 = and i32 %232, %_new_load_535, !mcsema_real_eip !52
  %243 = icmp slt i32 %242, 0
  store i1 %243, i1* %OF, align 1, !mcsema_real_eip !52
  %244 = zext i32 %231 to i64, !mcsema_real_eip !52
  store i64 %244, i64* %XAX, align 8, !mcsema_real_eip !52
  %_new_gep_117 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 40
  %245 = bitcast i8* %_new_gep_117 to i32*
  store i32 %231, i32* %245, align 4, !mcsema_real_eip !53
  br i1 %239, label %block_0x20f, label %block_0xc3, !mcsema_real_eip !54

block_0x20f:                                      ; preds = %block_0xad
  %_new_load_550 = load i32, i32* %3, align 4
  %246 = zext i32 %_new_load_550 to i64, !mcsema_real_eip !55
  store i64 %246, i64* %XAX, align 8, !mcsema_real_eip !55
  %247 = add i32 %_new_load_550, 255, !mcsema_real_eip !56
  %248 = xor i32 %247, %_new_load_550, !mcsema_real_eip !56
  %249 = and i32 %248, 16
  %250 = icmp eq i32 %249, 0
  store i1 %250, i1* %AF, align 1, !mcsema_real_eip !56
  %251 = icmp slt i32 %247, 0
  store i1 %251, i1* %SF, align 1, !mcsema_real_eip !56
  %252 = icmp eq i32 %247, 0, !mcsema_real_eip !56
  store i1 %252, i1* %ZF, align 1, !mcsema_real_eip !56
  %253 = xor i32 %_new_load_550, -2147483648, !mcsema_real_eip !56
  %254 = and i32 %248, %253, !mcsema_real_eip !56
  %255 = icmp slt i32 %254, 0
  store i1 %255, i1* %OF, align 1, !mcsema_real_eip !56
  %256 = trunc i32 %247 to i8, !mcsema_real_eip !56
  %257 = call i8 @llvm.ctpop.i8(i8 %256), !mcsema_real_eip !56
  %258 = and i8 %257, 1
  %259 = icmp eq i8 %258, 0
  store i1 %259, i1* %PF, align 1, !mcsema_real_eip !56
  %260 = icmp ugt i32 %_new_load_550, -256
  br label %block_0x2c8, !mcsema_real_eip !57

block_0xc3:                                       ; preds = %block_0xad
  %_new_load_565 = load i32, i32* %_address_in_parent_stack_bt_324., align 4
  %261 = add i32 %_new_load_565, -74633
  %262 = xor i32 %261, %_new_load_565, !mcsema_real_eip !58
  %263 = and i32 %262, 16, !mcsema_real_eip !58
  %264 = icmp ne i32 %263, 0, !mcsema_real_eip !58
  store i1 %264, i1* %AF, align 1, !mcsema_real_eip !58
  %265 = trunc i32 %261 to i8, !mcsema_real_eip !58
  %266 = call i8 @llvm.ctpop.i8(i8 %265), !mcsema_real_eip !58
  %267 = and i8 %266, 1
  %268 = icmp eq i8 %267, 0
  store i1 %268, i1* %PF, align 1, !mcsema_real_eip !58
  %269 = icmp eq i32 %261, 0
  store i1 %269, i1* %ZF, align 1, !mcsema_real_eip !58
  %270 = icmp slt i32 %261, 0
  store i1 %270, i1* %SF, align 1, !mcsema_real_eip !58
  %271 = icmp ult i32 %_new_load_565, 74633, !mcsema_real_eip !58
  store i1 %271, i1* %CF, align 1, !mcsema_real_eip !58
  %272 = and i32 %262, %_new_load_565, !mcsema_real_eip !58
  %273 = icmp slt i32 %272, 0
  store i1 %273, i1* %OF, align 1, !mcsema_real_eip !58
  %274 = zext i32 %261 to i64, !mcsema_real_eip !58
  store i64 %274, i64* %XAX, align 8, !mcsema_real_eip !58
  %_new_gep_129 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 36
  %275 = bitcast i8* %_new_gep_129 to i32*
  store i32 %261, i32* %275, align 4, !mcsema_real_eip !59
  br i1 %269, label %block_0x21f, label %block_0xd9, !mcsema_real_eip !60

block_0x21f:                                      ; preds = %block_0xc3
  %_new_load_580 = load i32, i32* %3, align 4
  %276 = zext i32 %_new_load_580 to i64, !mcsema_real_eip !61
  store i64 %276, i64* %XAX, align 8, !mcsema_real_eip !61
  %277 = add i32 %_new_load_580, 74633, !mcsema_real_eip !118
  %278 = xor i32 %277, %_new_load_580, !mcsema_real_eip !118
  %279 = and i32 %278, 16, !mcsema_real_eip !118
  %280 = icmp ne i32 %279, 0, !mcsema_real_eip !118
  store i1 %280, i1* %AF, align 1, !mcsema_real_eip !118
  %281 = icmp slt i32 %277, 0
  store i1 %281, i1* %SF, align 1, !mcsema_real_eip !118
  %282 = icmp eq i32 %277, 0, !mcsema_real_eip !118
  store i1 %282, i1* %ZF, align 1, !mcsema_real_eip !118
  %283 = xor i32 %_new_load_580, -2147483648, !mcsema_real_eip !118
  %284 = and i32 %278, %283, !mcsema_real_eip !118
  %285 = icmp slt i32 %284, 0
  store i1 %285, i1* %OF, align 1, !mcsema_real_eip !118
  %286 = trunc i32 %277 to i8, !mcsema_real_eip !118
  %287 = call i8 @llvm.ctpop.i8(i8 %286), !mcsema_real_eip !118
  %288 = and i8 %287, 1
  %289 = icmp eq i8 %288, 0
  store i1 %289, i1* %PF, align 1, !mcsema_real_eip !118
  %290 = icmp ugt i32 %_new_load_580, -74634
  br label %block_0x2c8, !mcsema_real_eip !62

block_0xd9:                                       ; preds = %block_0xc3
  %_new_load_595 = load i32, i32* %_address_in_parent_stack_bt_324., align 4
  %291 = add i32 %_new_load_595, -74634
  %292 = xor i32 %291, %_new_load_595, !mcsema_real_eip !63
  %293 = and i32 %292, 16, !mcsema_real_eip !63
  %294 = icmp ne i32 %293, 0, !mcsema_real_eip !63
  store i1 %294, i1* %AF, align 1, !mcsema_real_eip !63
  %295 = trunc i32 %291 to i8, !mcsema_real_eip !63
  %296 = call i8 @llvm.ctpop.i8(i8 %295), !mcsema_real_eip !63
  %297 = and i8 %296, 1
  %298 = icmp eq i8 %297, 0
  store i1 %298, i1* %PF, align 1, !mcsema_real_eip !63
  %299 = icmp eq i32 %291, 0
  store i1 %299, i1* %ZF, align 1, !mcsema_real_eip !63
  %300 = icmp slt i32 %291, 0
  store i1 %300, i1* %SF, align 1, !mcsema_real_eip !63
  %301 = icmp ult i32 %_new_load_595, 74634, !mcsema_real_eip !63
  store i1 %301, i1* %CF, align 1, !mcsema_real_eip !63
  %302 = and i32 %292, %_new_load_595, !mcsema_real_eip !63
  %303 = icmp slt i32 %302, 0
  store i1 %303, i1* %OF, align 1, !mcsema_real_eip !63
  %304 = zext i32 %291 to i64, !mcsema_real_eip !63
  store i64 %304, i64* %XAX, align 8, !mcsema_real_eip !63
  %_new_gep_141 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 32
  %305 = bitcast i8* %_new_gep_141 to i32*
  store i32 %291, i32* %305, align 4, !mcsema_real_eip !64
  br i1 %299, label %block_0x22f, label %block_0xef, !mcsema_real_eip !65

block_0x22f:                                      ; preds = %block_0xd9
  %_new_load_610 = load i32, i32* %3, align 4
  %306 = zext i32 %_new_load_610 to i64, !mcsema_real_eip !66
  store i64 %306, i64* %XAX, align 8, !mcsema_real_eip !66
  %307 = add i32 %_new_load_610, 74634, !mcsema_real_eip !119
  %308 = xor i32 %307, %_new_load_610, !mcsema_real_eip !119
  %309 = and i32 %308, 16, !mcsema_real_eip !119
  %310 = icmp ne i32 %309, 0, !mcsema_real_eip !119
  store i1 %310, i1* %AF, align 1, !mcsema_real_eip !119
  %311 = icmp slt i32 %307, 0
  store i1 %311, i1* %SF, align 1, !mcsema_real_eip !119
  %312 = icmp eq i32 %307, 0, !mcsema_real_eip !119
  store i1 %312, i1* %ZF, align 1, !mcsema_real_eip !119
  %313 = xor i32 %_new_load_610, -2147483648, !mcsema_real_eip !119
  %314 = and i32 %308, %313, !mcsema_real_eip !119
  %315 = icmp slt i32 %314, 0
  store i1 %315, i1* %OF, align 1, !mcsema_real_eip !119
  %316 = trunc i32 %307 to i8, !mcsema_real_eip !119
  %317 = call i8 @llvm.ctpop.i8(i8 %316), !mcsema_real_eip !119
  %318 = and i8 %317, 1
  %319 = icmp eq i8 %318, 0
  store i1 %319, i1* %PF, align 1, !mcsema_real_eip !119
  %320 = icmp ugt i32 %_new_load_610, -74635
  br label %block_0x2c8, !mcsema_real_eip !67

block_0xef:                                       ; preds = %block_0xd9
  %_new_load_625 = load i32, i32* %_address_in_parent_stack_bt_324., align 4
  %321 = add i32 %_new_load_625, -74635
  %322 = xor i32 %321, %_new_load_625, !mcsema_real_eip !68
  %323 = and i32 %322, 16, !mcsema_real_eip !68
  %324 = icmp ne i32 %323, 0, !mcsema_real_eip !68
  store i1 %324, i1* %AF, align 1, !mcsema_real_eip !68
  %325 = trunc i32 %321 to i8, !mcsema_real_eip !68
  %326 = call i8 @llvm.ctpop.i8(i8 %325), !mcsema_real_eip !68
  %327 = and i8 %326, 1
  %328 = icmp eq i8 %327, 0
  store i1 %328, i1* %PF, align 1, !mcsema_real_eip !68
  %329 = icmp eq i32 %321, 0
  store i1 %329, i1* %ZF, align 1, !mcsema_real_eip !68
  %330 = icmp slt i32 %321, 0
  store i1 %330, i1* %SF, align 1, !mcsema_real_eip !68
  %331 = icmp ult i32 %_new_load_625, 74635, !mcsema_real_eip !68
  store i1 %331, i1* %CF, align 1, !mcsema_real_eip !68
  %332 = and i32 %322, %_new_load_625, !mcsema_real_eip !68
  %333 = icmp slt i32 %332, 0
  store i1 %333, i1* %OF, align 1, !mcsema_real_eip !68
  %334 = zext i32 %321 to i64, !mcsema_real_eip !68
  store i64 %334, i64* %XAX, align 8, !mcsema_real_eip !68
  %_new_gep_153 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 28
  %335 = bitcast i8* %_new_gep_153 to i32*
  store i32 %321, i32* %335, align 4, !mcsema_real_eip !69
  br i1 %329, label %block_0x23f, label %block_0x105, !mcsema_real_eip !70

block_0x23f:                                      ; preds = %block_0xef
  %_new_load_640 = load i32, i32* %3, align 4
  %336 = zext i32 %_new_load_640 to i64, !mcsema_real_eip !71
  store i64 %336, i64* %XAX, align 8, !mcsema_real_eip !71
  %337 = add i32 %_new_load_640, 74635, !mcsema_real_eip !72
  %338 = xor i32 %337, %_new_load_640, !mcsema_real_eip !72
  %339 = and i32 %338, 16, !mcsema_real_eip !72
  %340 = icmp ne i32 %339, 0, !mcsema_real_eip !72
  store i1 %340, i1* %AF, align 1, !mcsema_real_eip !72
  %341 = icmp slt i32 %337, 0
  store i1 %341, i1* %SF, align 1, !mcsema_real_eip !72
  %342 = icmp eq i32 %337, 0, !mcsema_real_eip !72
  store i1 %342, i1* %ZF, align 1, !mcsema_real_eip !72
  %343 = xor i32 %_new_load_640, -2147483648, !mcsema_real_eip !72
  %344 = and i32 %338, %343, !mcsema_real_eip !72
  %345 = icmp slt i32 %344, 0
  store i1 %345, i1* %OF, align 1, !mcsema_real_eip !72
  %346 = trunc i32 %337 to i8, !mcsema_real_eip !72
  %347 = call i8 @llvm.ctpop.i8(i8 %346), !mcsema_real_eip !72
  %348 = and i8 %347, 1
  %349 = icmp eq i8 %348, 0
  store i1 %349, i1* %PF, align 1, !mcsema_real_eip !72
  %350 = icmp ugt i32 %_new_load_640, -74636
  br label %block_0x2c8, !mcsema_real_eip !73

block_0x105:                                      ; preds = %block_0xef
  %_new_load_655 = load i32, i32* %_address_in_parent_stack_bt_324., align 4
  %351 = add i32 %_new_load_655, -74636
  %352 = xor i32 %351, %_new_load_655, !mcsema_real_eip !74
  %353 = and i32 %352, 16, !mcsema_real_eip !74
  %354 = icmp ne i32 %353, 0, !mcsema_real_eip !74
  store i1 %354, i1* %AF, align 1, !mcsema_real_eip !74
  %355 = trunc i32 %351 to i8, !mcsema_real_eip !74
  %356 = call i8 @llvm.ctpop.i8(i8 %355), !mcsema_real_eip !74
  %357 = and i8 %356, 1
  %358 = icmp eq i8 %357, 0
  store i1 %358, i1* %PF, align 1, !mcsema_real_eip !74
  %359 = icmp eq i32 %351, 0
  store i1 %359, i1* %ZF, align 1, !mcsema_real_eip !74
  %360 = icmp slt i32 %351, 0
  store i1 %360, i1* %SF, align 1, !mcsema_real_eip !74
  %361 = icmp ult i32 %_new_load_655, 74636, !mcsema_real_eip !74
  store i1 %361, i1* %CF, align 1, !mcsema_real_eip !74
  %362 = and i32 %352, %_new_load_655, !mcsema_real_eip !74
  %363 = icmp slt i32 %362, 0
  store i1 %363, i1* %OF, align 1, !mcsema_real_eip !74
  %364 = zext i32 %351 to i64, !mcsema_real_eip !74
  store i64 %364, i64* %XAX, align 8, !mcsema_real_eip !74
  %_new_gep_165 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 24
  %365 = bitcast i8* %_new_gep_165 to i32*
  store i32 %351, i32* %365, align 4, !mcsema_real_eip !75
  br i1 %359, label %block_0x24f, label %block_0x11b, !mcsema_real_eip !76

block_0x24f:                                      ; preds = %block_0x105
  %_new_load_670 = load i32, i32* %3, align 4
  %366 = zext i32 %_new_load_670 to i64, !mcsema_real_eip !77
  store i64 %366, i64* %XAX, align 8, !mcsema_real_eip !77
  %367 = add i32 %_new_load_670, 74636, !mcsema_real_eip !120
  %368 = xor i32 %367, %_new_load_670, !mcsema_real_eip !120
  %369 = and i32 %368, 16, !mcsema_real_eip !120
  %370 = icmp ne i32 %369, 0, !mcsema_real_eip !120
  store i1 %370, i1* %AF, align 1, !mcsema_real_eip !120
  %371 = icmp slt i32 %367, 0
  store i1 %371, i1* %SF, align 1, !mcsema_real_eip !120
  %372 = icmp eq i32 %367, 0, !mcsema_real_eip !120
  store i1 %372, i1* %ZF, align 1, !mcsema_real_eip !120
  %373 = xor i32 %_new_load_670, -2147483648, !mcsema_real_eip !120
  %374 = and i32 %368, %373, !mcsema_real_eip !120
  %375 = icmp slt i32 %374, 0
  store i1 %375, i1* %OF, align 1, !mcsema_real_eip !120
  %376 = trunc i32 %367 to i8, !mcsema_real_eip !120
  %377 = call i8 @llvm.ctpop.i8(i8 %376), !mcsema_real_eip !120
  %378 = and i8 %377, 1
  %379 = icmp eq i8 %378, 0
  store i1 %379, i1* %PF, align 1, !mcsema_real_eip !120
  %380 = icmp ugt i32 %_new_load_670, -74637
  br label %block_0x2c8, !mcsema_real_eip !78

block_0x11b:                                      ; preds = %block_0x105
  %_new_load_685 = load i32, i32* %_address_in_parent_stack_bt_324., align 4
  %381 = add i32 %_new_load_685, -74637
  %382 = xor i32 %381, %_new_load_685, !mcsema_real_eip !79
  %383 = and i32 %382, 16, !mcsema_real_eip !79
  %384 = icmp ne i32 %383, 0, !mcsema_real_eip !79
  store i1 %384, i1* %AF, align 1, !mcsema_real_eip !79
  %385 = trunc i32 %381 to i8, !mcsema_real_eip !79
  %386 = call i8 @llvm.ctpop.i8(i8 %385), !mcsema_real_eip !79
  %387 = and i8 %386, 1
  %388 = icmp eq i8 %387, 0
  store i1 %388, i1* %PF, align 1, !mcsema_real_eip !79
  %389 = icmp eq i32 %381, 0
  store i1 %389, i1* %ZF, align 1, !mcsema_real_eip !79
  %390 = icmp slt i32 %381, 0
  store i1 %390, i1* %SF, align 1, !mcsema_real_eip !79
  %391 = icmp ult i32 %_new_load_685, 74637, !mcsema_real_eip !79
  store i1 %391, i1* %CF, align 1, !mcsema_real_eip !79
  %392 = and i32 %382, %_new_load_685, !mcsema_real_eip !79
  %393 = icmp slt i32 %392, 0
  store i1 %393, i1* %OF, align 1, !mcsema_real_eip !79
  %394 = zext i32 %381 to i64, !mcsema_real_eip !79
  store i64 %394, i64* %XAX, align 8, !mcsema_real_eip !79
  %_new_gep_177 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 20
  %395 = bitcast i8* %_new_gep_177 to i32*
  store i32 %381, i32* %395, align 4, !mcsema_real_eip !80
  br i1 %389, label %block_0x25f, label %block_0x131, !mcsema_real_eip !81

block_0x25f:                                      ; preds = %block_0x11b
  %_new_load_700 = load i32, i32* %3, align 4
  %396 = zext i32 %_new_load_700 to i64, !mcsema_real_eip !82
  store i64 %396, i64* %XAX, align 8, !mcsema_real_eip !82
  %397 = add i32 %_new_load_700, 74637, !mcsema_real_eip !83
  %398 = xor i32 %397, %_new_load_700, !mcsema_real_eip !83
  %399 = and i32 %398, 16, !mcsema_real_eip !83
  %400 = icmp ne i32 %399, 0, !mcsema_real_eip !83
  store i1 %400, i1* %AF, align 1, !mcsema_real_eip !83
  %401 = icmp slt i32 %397, 0
  store i1 %401, i1* %SF, align 1, !mcsema_real_eip !83
  %402 = icmp eq i32 %397, 0, !mcsema_real_eip !83
  store i1 %402, i1* %ZF, align 1, !mcsema_real_eip !83
  %403 = xor i32 %_new_load_700, -2147483648, !mcsema_real_eip !83
  %404 = and i32 %398, %403, !mcsema_real_eip !83
  %405 = icmp slt i32 %404, 0
  store i1 %405, i1* %OF, align 1, !mcsema_real_eip !83
  %406 = trunc i32 %397 to i8, !mcsema_real_eip !83
  %407 = call i8 @llvm.ctpop.i8(i8 %406), !mcsema_real_eip !83
  %408 = and i8 %407, 1
  %409 = icmp eq i8 %408, 0
  store i1 %409, i1* %PF, align 1, !mcsema_real_eip !83
  %410 = icmp ugt i32 %_new_load_700, -74638
  br label %block_0x2c8, !mcsema_real_eip !84

block_0x131:                                      ; preds = %block_0x11b
  %_new_load_715 = load i32, i32* %_address_in_parent_stack_bt_324., align 4
  %411 = add i32 %_new_load_715, -74639
  %412 = xor i32 %411, %_new_load_715, !mcsema_real_eip !85
  %413 = and i32 %412, 16, !mcsema_real_eip !85
  %414 = icmp ne i32 %413, 0, !mcsema_real_eip !85
  store i1 %414, i1* %AF, align 1, !mcsema_real_eip !85
  %415 = trunc i32 %411 to i8, !mcsema_real_eip !85
  %416 = call i8 @llvm.ctpop.i8(i8 %415), !mcsema_real_eip !85
  %417 = and i8 %416, 1
  %418 = icmp eq i8 %417, 0
  store i1 %418, i1* %PF, align 1, !mcsema_real_eip !85
  %419 = icmp eq i32 %411, 0
  store i1 %419, i1* %ZF, align 1, !mcsema_real_eip !85
  %420 = icmp slt i32 %411, 0
  store i1 %420, i1* %SF, align 1, !mcsema_real_eip !85
  %421 = icmp ult i32 %_new_load_715, 74639, !mcsema_real_eip !85
  store i1 %421, i1* %CF, align 1, !mcsema_real_eip !85
  %422 = and i32 %412, %_new_load_715, !mcsema_real_eip !85
  %423 = icmp slt i32 %422, 0
  store i1 %423, i1* %OF, align 1, !mcsema_real_eip !85
  %424 = zext i32 %411 to i64, !mcsema_real_eip !85
  store i64 %424, i64* %XAX, align 8, !mcsema_real_eip !85
  %_new_gep_189 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 16
  %425 = bitcast i8* %_new_gep_189 to i32*
  store i32 %411, i32* %425, align 4, !mcsema_real_eip !86
  br i1 %419, label %block_0x26f, label %block_0x147, !mcsema_real_eip !87

block_0x26f:                                      ; preds = %block_0x131
  %_new_load_730 = load i32, i32* %3, align 4
  %426 = zext i32 %_new_load_730 to i64, !mcsema_real_eip !88
  store i64 %426, i64* %XAX, align 8, !mcsema_real_eip !88
  %427 = add i32 %_new_load_730, 74639, !mcsema_real_eip !121
  %428 = xor i32 %427, %_new_load_730, !mcsema_real_eip !121
  %429 = and i32 %428, 16, !mcsema_real_eip !121
  %430 = icmp ne i32 %429, 0, !mcsema_real_eip !121
  store i1 %430, i1* %AF, align 1, !mcsema_real_eip !121
  %431 = icmp slt i32 %427, 0
  store i1 %431, i1* %SF, align 1, !mcsema_real_eip !121
  %432 = icmp eq i32 %427, 0, !mcsema_real_eip !121
  store i1 %432, i1* %ZF, align 1, !mcsema_real_eip !121
  %433 = xor i32 %_new_load_730, -2147483648, !mcsema_real_eip !121
  %434 = and i32 %428, %433, !mcsema_real_eip !121
  %435 = icmp slt i32 %434, 0
  store i1 %435, i1* %OF, align 1, !mcsema_real_eip !121
  %436 = trunc i32 %427 to i8, !mcsema_real_eip !121
  %437 = call i8 @llvm.ctpop.i8(i8 %436), !mcsema_real_eip !121
  %438 = and i8 %437, 1
  %439 = icmp eq i8 %438, 0
  store i1 %439, i1* %PF, align 1, !mcsema_real_eip !121
  %440 = icmp ugt i32 %_new_load_730, -74640
  br label %block_0x2c8, !mcsema_real_eip !89

block_0x147:                                      ; preds = %block_0x131
  %_new_load_745 = load i32, i32* %_address_in_parent_stack_bt_324., align 4
  %441 = add i32 %_new_load_745, -74640
  %442 = xor i32 %441, %_new_load_745, !mcsema_real_eip !90
  %443 = and i32 %442, 16
  %444 = icmp eq i32 %443, 0
  store i1 %444, i1* %AF, align 1, !mcsema_real_eip !90
  %445 = trunc i32 %441 to i8, !mcsema_real_eip !90
  %446 = call i8 @llvm.ctpop.i8(i8 %445), !mcsema_real_eip !90
  %447 = and i8 %446, 1
  %448 = icmp eq i8 %447, 0
  store i1 %448, i1* %PF, align 1, !mcsema_real_eip !90
  %449 = icmp eq i32 %441, 0
  store i1 %449, i1* %ZF, align 1, !mcsema_real_eip !90
  %450 = icmp slt i32 %441, 0
  store i1 %450, i1* %SF, align 1, !mcsema_real_eip !90
  %451 = icmp ult i32 %_new_load_745, 74640, !mcsema_real_eip !90
  store i1 %451, i1* %CF, align 1, !mcsema_real_eip !90
  %452 = and i32 %442, %_new_load_745, !mcsema_real_eip !90
  %453 = icmp slt i32 %452, 0
  store i1 %453, i1* %OF, align 1, !mcsema_real_eip !90
  %454 = zext i32 %441 to i64, !mcsema_real_eip !90
  store i64 %454, i64* %XAX, align 8, !mcsema_real_eip !90
  %_new_gep_201 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 12
  %455 = bitcast i8* %_new_gep_201 to i32*
  store i32 %441, i32* %455, align 4, !mcsema_real_eip !91
  br i1 %449, label %block_0x27f, label %block_0x15d, !mcsema_real_eip !92

block_0x27f:                                      ; preds = %block_0x147
  %_new_load_760 = load i32, i32* %3, align 4
  %456 = zext i32 %_new_load_760 to i64, !mcsema_real_eip !93
  store i64 %456, i64* %XAX, align 8, !mcsema_real_eip !93
  %457 = add i32 %_new_load_760, 74640, !mcsema_real_eip !94
  %458 = xor i32 %457, %_new_load_760, !mcsema_real_eip !94
  %459 = and i32 %458, 16
  %460 = icmp eq i32 %459, 0
  store i1 %460, i1* %AF, align 1, !mcsema_real_eip !94
  %461 = icmp slt i32 %457, 0
  store i1 %461, i1* %SF, align 1, !mcsema_real_eip !94
  %462 = icmp eq i32 %457, 0, !mcsema_real_eip !94
  store i1 %462, i1* %ZF, align 1, !mcsema_real_eip !94
  %463 = xor i32 %_new_load_760, -2147483648, !mcsema_real_eip !94
  %464 = and i32 %458, %463, !mcsema_real_eip !94
  %465 = icmp slt i32 %464, 0
  store i1 %465, i1* %OF, align 1, !mcsema_real_eip !94
  %466 = trunc i32 %457 to i8, !mcsema_real_eip !94
  %467 = call i8 @llvm.ctpop.i8(i8 %466), !mcsema_real_eip !94
  %468 = and i8 %467, 1
  %469 = icmp eq i8 %468, 0
  store i1 %469, i1* %PF, align 1, !mcsema_real_eip !94
  %470 = icmp ugt i32 %_new_load_760, -74641
  br label %block_0x2c8, !mcsema_real_eip !95

block_0x15d:                                      ; preds = %block_0x147
  %_new_load_775 = load i32, i32* %_address_in_parent_stack_bt_324., align 4
  %471 = add i32 %_new_load_775, -74641
  %472 = xor i32 %471, %_new_load_775, !mcsema_real_eip !96
  %473 = and i32 %472, 16
  %474 = icmp eq i32 %473, 0
  store i1 %474, i1* %AF, align 1, !mcsema_real_eip !96
  %475 = trunc i32 %471 to i8, !mcsema_real_eip !96
  %476 = call i8 @llvm.ctpop.i8(i8 %475), !mcsema_real_eip !96
  %477 = and i8 %476, 1
  %478 = icmp eq i8 %477, 0
  store i1 %478, i1* %PF, align 1, !mcsema_real_eip !96
  %479 = icmp eq i32 %471, 0
  store i1 %479, i1* %ZF, align 1, !mcsema_real_eip !96
  %480 = icmp slt i32 %471, 0
  store i1 %480, i1* %SF, align 1, !mcsema_real_eip !96
  %481 = icmp ult i32 %_new_load_775, 74641, !mcsema_real_eip !96
  store i1 %481, i1* %CF, align 1, !mcsema_real_eip !96
  %482 = and i32 %472, %_new_load_775, !mcsema_real_eip !96
  %483 = icmp slt i32 %482, 0
  store i1 %483, i1* %OF, align 1, !mcsema_real_eip !96
  %484 = zext i32 %471 to i64, !mcsema_real_eip !96
  store i64 %484, i64* %XAX, align 8, !mcsema_real_eip !96
  %_new_gep_213 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 8
  %485 = bitcast i8* %_new_gep_213 to i32*
  store i32 %471, i32* %485, align 4, !mcsema_real_eip !97
  br i1 %479, label %block_0x28f, label %block_0x173, !mcsema_real_eip !98

block_0x28f:                                      ; preds = %block_0x15d
  %_new_load_790 = load i32, i32* %3, align 4
  %486 = zext i32 %_new_load_790 to i64, !mcsema_real_eip !99
  store i64 %486, i64* %XAX, align 8, !mcsema_real_eip !99
  %487 = add i32 %_new_load_790, 74641, !mcsema_real_eip !122
  %488 = xor i32 %487, %_new_load_790, !mcsema_real_eip !122
  %489 = and i32 %488, 16
  %490 = icmp eq i32 %489, 0
  store i1 %490, i1* %AF, align 1, !mcsema_real_eip !122
  %491 = icmp slt i32 %487, 0
  store i1 %491, i1* %SF, align 1, !mcsema_real_eip !122
  %492 = icmp eq i32 %487, 0, !mcsema_real_eip !122
  store i1 %492, i1* %ZF, align 1, !mcsema_real_eip !122
  %493 = xor i32 %_new_load_790, -2147483648, !mcsema_real_eip !122
  %494 = and i32 %488, %493, !mcsema_real_eip !122
  %495 = icmp slt i32 %494, 0
  store i1 %495, i1* %OF, align 1, !mcsema_real_eip !122
  %496 = trunc i32 %487 to i8, !mcsema_real_eip !122
  %497 = call i8 @llvm.ctpop.i8(i8 %496), !mcsema_real_eip !122
  %498 = and i8 %497, 1
  %499 = icmp eq i8 %498, 0
  store i1 %499, i1* %PF, align 1, !mcsema_real_eip !122
  %500 = icmp ugt i32 %_new_load_790, -74642
  br label %block_0x2c8, !mcsema_real_eip !100

block_0x173:                                      ; preds = %block_0x15d
  %_new_load_805 = load i32, i32* %_address_in_parent_stack_bt_324., align 4
  %501 = add i32 %_new_load_805, -74642
  %502 = xor i32 %501, %_new_load_805, !mcsema_real_eip !101
  %503 = and i32 %502, 16
  %504 = icmp eq i32 %503, 0
  store i1 %504, i1* %AF, align 1, !mcsema_real_eip !101
  %505 = trunc i32 %501 to i8, !mcsema_real_eip !101
  %506 = call i8 @llvm.ctpop.i8(i8 %505), !mcsema_real_eip !101
  %507 = and i8 %506, 1
  %508 = icmp eq i8 %507, 0
  store i1 %508, i1* %PF, align 1, !mcsema_real_eip !101
  %509 = icmp eq i32 %501, 0
  store i1 %509, i1* %ZF, align 1, !mcsema_real_eip !101
  %510 = icmp slt i32 %501, 0
  store i1 %510, i1* %SF, align 1, !mcsema_real_eip !101
  %511 = icmp ult i32 %_new_load_805, 74642, !mcsema_real_eip !101
  store i1 %511, i1* %CF, align 1, !mcsema_real_eip !101
  %512 = and i32 %502, %_new_load_805, !mcsema_real_eip !101
  %513 = icmp slt i32 %512, 0
  store i1 %513, i1* %OF, align 1, !mcsema_real_eip !101
  %514 = zext i32 %501 to i64, !mcsema_real_eip !101
  store i64 %514, i64* %XAX, align 8, !mcsema_real_eip !101
  %_new_gep_225 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 4
  %515 = bitcast i8* %_new_gep_225 to i32*
  store i32 %501, i32* %515, align 4, !mcsema_real_eip !102
  br i1 %509, label %block_0x29f, label %block_0x189, !mcsema_real_eip !103

block_0x29f:                                      ; preds = %block_0x173
  %_new_load_820 = load i32, i32* %3, align 4
  %516 = zext i32 %_new_load_820 to i64, !mcsema_real_eip !104
  store i64 %516, i64* %XAX, align 8, !mcsema_real_eip !104
  %517 = add i32 %_new_load_820, 74642, !mcsema_real_eip !123
  %518 = xor i32 %517, %_new_load_820, !mcsema_real_eip !123
  %519 = and i32 %518, 16
  %520 = icmp eq i32 %519, 0
  store i1 %520, i1* %AF, align 1, !mcsema_real_eip !123
  %521 = icmp slt i32 %517, 0
  store i1 %521, i1* %SF, align 1, !mcsema_real_eip !123
  %522 = icmp eq i32 %517, 0, !mcsema_real_eip !123
  store i1 %522, i1* %ZF, align 1, !mcsema_real_eip !123
  %523 = xor i32 %_new_load_820, -2147483648, !mcsema_real_eip !123
  %524 = and i32 %518, %523, !mcsema_real_eip !123
  %525 = icmp slt i32 %524, 0
  store i1 %525, i1* %OF, align 1, !mcsema_real_eip !123
  %526 = trunc i32 %517 to i8, !mcsema_real_eip !123
  %527 = call i8 @llvm.ctpop.i8(i8 %526), !mcsema_real_eip !123
  %528 = and i8 %527, 1
  %529 = icmp eq i8 %528, 0
  store i1 %529, i1* %PF, align 1, !mcsema_real_eip !123
  %530 = icmp ugt i32 %_new_load_820, -74643
  br label %block_0x2c8, !mcsema_real_eip !105

block_0x189:                                      ; preds = %block_0x173
  %_new_load_835 = load i32, i32* %_address_in_parent_stack_bt_324., align 4
  %531 = add i32 %_new_load_835, -74643
  %532 = xor i32 %531, %_new_load_835, !mcsema_real_eip !106
  %533 = and i32 %532, 16
  %534 = icmp eq i32 %533, 0
  store i1 %534, i1* %AF, align 1, !mcsema_real_eip !106
  %535 = trunc i32 %531 to i8, !mcsema_real_eip !106
  %536 = call i8 @llvm.ctpop.i8(i8 %535), !mcsema_real_eip !106
  %537 = and i8 %536, 1
  %538 = icmp eq i8 %537, 0
  store i1 %538, i1* %PF, align 1, !mcsema_real_eip !106
  %539 = icmp eq i32 %531, 0
  store i1 %539, i1* %ZF, align 1, !mcsema_real_eip !106
  %540 = icmp slt i32 %531, 0
  store i1 %540, i1* %SF, align 1, !mcsema_real_eip !106
  %541 = icmp ult i32 %_new_load_835, 74643, !mcsema_real_eip !106
  store i1 %541, i1* %CF, align 1, !mcsema_real_eip !106
  %542 = and i32 %532, %_new_load_835, !mcsema_real_eip !106
  %543 = icmp slt i32 %542, 0
  store i1 %543, i1* %OF, align 1, !mcsema_real_eip !106
  %544 = bitcast [92 x i8]* %_local_stack_start_ptr_3 to i32*
  store i32 %531, i32* %544, align 4, !mcsema_real_eip !107
  %_new_load_850 = load i32, i32* %3, align 4
  %545 = zext i32 %_new_load_850 to i64
  store i64 %545, i64* %XAX, align 8
  br i1 %539, label %block_0x2af, label %block_0x2bf, !mcsema_real_eip !108

block_0x2af:                                      ; preds = %block_0x189
  %546 = add i32 %_new_load_850, 74643, !mcsema_real_eip !109
  %547 = xor i32 %546, %_new_load_850, !mcsema_real_eip !109
  %548 = and i32 %547, 16
  %549 = icmp eq i32 %548, 0
  store i1 %549, i1* %AF, align 1, !mcsema_real_eip !109
  %550 = icmp slt i32 %546, 0
  store i1 %550, i1* %SF, align 1, !mcsema_real_eip !109
  %551 = icmp eq i32 %546, 0, !mcsema_real_eip !109
  store i1 %551, i1* %ZF, align 1, !mcsema_real_eip !109
  %552 = xor i32 %_new_load_850, -2147483648, !mcsema_real_eip !109
  %553 = and i32 %547, %552, !mcsema_real_eip !109
  %554 = icmp slt i32 %553, 0
  store i1 %554, i1* %OF, align 1, !mcsema_real_eip !109
  %555 = trunc i32 %546 to i8, !mcsema_real_eip !109
  %556 = call i8 @llvm.ctpop.i8(i8 %555), !mcsema_real_eip !109
  %557 = and i8 %556, 1
  %558 = icmp eq i8 %557, 0
  store i1 %558, i1* %PF, align 1, !mcsema_real_eip !109
  %559 = icmp ugt i32 %_new_load_850, -74644
  br label %block_0x2c8, !mcsema_real_eip !110

block_0x2bf:                                      ; preds = %block_0x189
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !111
  %560 = icmp slt i32 %_new_load_850, 0
  store i1 %560, i1* %SF, align 1, !mcsema_real_eip !111
  %561 = icmp eq i32 %_new_load_850, 0, !mcsema_real_eip !111
  store i1 %561, i1* %ZF, align 1, !mcsema_real_eip !111
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !111
  %562 = trunc i32 %_new_load_850 to i8, !mcsema_real_eip !111
  %563 = call i8 @llvm.ctpop.i8(i8 %562), !mcsema_real_eip !111
  %564 = and i8 %563, 1
  %565 = icmp eq i8 %564, 0
  store i1 %565, i1* %PF, align 1, !mcsema_real_eip !111
  br label %block_0x2c8
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
!10 = !{i64 415}
!11 = !{i64 418}
!12 = !{i64 424}
!13 = !{i64 712}
!14 = !{i64 716}
!15 = !{i64 36}
!16 = !{i64 39}
!17 = !{i64 42}
!18 = !{i64 429}
!19 = !{i64 438}
!20 = !{i64 56}
!21 = !{i64 59}
!22 = !{i64 62}
!23 = !{i64 443}
!24 = !{i64 452}
!25 = !{i64 76}
!26 = !{i64 79}
!27 = !{i64 82}
!28 = !{i64 457}
!29 = !{i64 466}
!30 = !{i64 96}
!31 = !{i64 99}
!32 = !{i64 102}
!33 = !{i64 471}
!34 = !{i64 474}
!35 = !{i64 480}
!36 = !{i64 116}
!37 = !{i64 119}
!38 = !{i64 122}
!39 = !{i64 485}
!40 = !{i64 488}
!41 = !{i64 494}
!42 = !{i64 136}
!43 = !{i64 139}
!44 = !{i64 142}
!45 = !{i64 499}
!46 = !{i64 508}
!47 = !{i64 156}
!48 = !{i64 159}
!49 = !{i64 162}
!50 = !{i64 513}
!51 = !{i64 522}
!52 = !{i64 176}
!53 = !{i64 181}
!54 = !{i64 184}
!55 = !{i64 527}
!56 = !{i64 530}
!57 = !{i64 538}
!58 = !{i64 198}
!59 = !{i64 203}
!60 = !{i64 206}
!61 = !{i64 543}
!62 = !{i64 554}
!63 = !{i64 220}
!64 = !{i64 225}
!65 = !{i64 228}
!66 = !{i64 559}
!67 = !{i64 570}
!68 = !{i64 242}
!69 = !{i64 247}
!70 = !{i64 250}
!71 = !{i64 575}
!72 = !{i64 578}
!73 = !{i64 586}
!74 = !{i64 264}
!75 = !{i64 269}
!76 = !{i64 272}
!77 = !{i64 591}
!78 = !{i64 602}
!79 = !{i64 286}
!80 = !{i64 291}
!81 = !{i64 294}
!82 = !{i64 607}
!83 = !{i64 610}
!84 = !{i64 618}
!85 = !{i64 308}
!86 = !{i64 313}
!87 = !{i64 316}
!88 = !{i64 623}
!89 = !{i64 634}
!90 = !{i64 330}
!91 = !{i64 335}
!92 = !{i64 338}
!93 = !{i64 639}
!94 = !{i64 642}
!95 = !{i64 650}
!96 = !{i64 352}
!97 = !{i64 357}
!98 = !{i64 360}
!99 = !{i64 655}
!100 = !{i64 666}
!101 = !{i64 374}
!102 = !{i64 379}
!103 = !{i64 382}
!104 = !{i64 671}
!105 = !{i64 682}
!106 = !{i64 396}
!107 = !{i64 401}
!108 = !{i64 404}
!109 = !{i64 690}
!110 = !{i64 698}
!111 = !{i64 706}
!112 = !{i64 715}
!113 = !{i64 432}
!114 = !{i64 446}
!115 = !{i64 460}
!116 = !{i64 502}
!117 = !{i64 516}
!118 = !{i64 546}
!119 = !{i64 562}
!120 = !{i64 594}
!121 = !{i64 626}
!122 = !{i64 658}
!123 = !{i64 674}
