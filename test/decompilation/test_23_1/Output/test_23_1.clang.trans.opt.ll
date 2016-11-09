; ModuleID = 'Output/test_23_1.clang.trans.opt.bc'
source_filename = "Output/test_23_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) local_unnamed_addr #2 {
driverBlockRaw:
  %_RSP_ptr_.i = alloca i8*, align 8
  %_RBP_ptr_.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_1.i = alloca [44 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %_RSP_ptr_.i.0..sroa_cast = bitcast i8** %_RSP_ptr_.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_.i.0..sroa_cast)
  %_RBP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [44 x i8], [44 x i8]* %_local_stack_start_ptr_1.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 44, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [44 x i8], [44 x i8]* %_local_stack_start_ptr_1.i, i64 0, i64 44
  store i8* %_local_stack_end_ptr_.i, i8** %_RSP_ptr_.i, align 8
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %2 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %3 = bitcast i64* %RSI.i to <2 x i64>*
  %4 = load <2 x i64>, <2 x i64>* %3, align 8
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %5 = bitcast i64* %R8.i to <2 x i64>*
  %6 = load <2 x i64>, <2 x i64>* %5, align 8
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %7 = bitcast i64* %R10.i to <2 x i64>*
  %8 = load <2 x i64>, <2 x i64>* %7, align 8
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %9 = bitcast i64* %R12.i to <2 x i64>*
  %10 = load <2 x i64>, <2 x i64>* %9, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %11 = bitcast i64* %R14.i to <2 x i64>*
  %12 = load <2 x i64>, <2 x i64>* %11, align 8
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %13 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %14 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !2
  %15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %16 = bitcast x86_fp80* %15 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %16, i32 128, i32 4, i1 false) #2, !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %17 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %18 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %19 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %32 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %33 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %35 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %36 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %37 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %38 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %39 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %40 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %41 = bitcast i8* %40 to i64*
  %42 = load i64, i64* %41, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %43 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %44 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %45 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %46 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %47 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %48 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %49 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %63 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %64 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %65 = load <2 x i64>, <2 x i64>* %64, align 8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_.i = getelementptr inbounds [44 x i8], [44 x i8]* %_local_stack_start_ptr_1.i, i64 0, i64 36
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2.i, i64* %_allin_new_bt_.i, align 8
  store volatile i8* %_new_gep_.i, i8** %_RSP_ptr_.i, align 8
  %66 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %66, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr inbounds [44 x i8], [44 x i8]* %_local_stack_start_ptr_1.i, i64 0, i64 32
  %67 = bitcast i8* %_new_gep_1.i to i32*
  store i32 0, i32* %67, align 4, !mcsema_real_eip !3
  %_new_gep_4.i = getelementptr inbounds [44 x i8], [44 x i8]* %_local_stack_start_ptr_1.i, i64 0, i64 28
  %68 = bitcast i8* %_new_gep_4.i to i32*
  store i32 0, i32* %68, align 4, !mcsema_real_eip !4
  %_new_gep_7.i = getelementptr inbounds [44 x i8], [44 x i8]* %_local_stack_start_ptr_1.i, i64 0, i64 27
  store i8 119, i8* %_new_gep_7.i, align 1, !mcsema_real_eip !5
  %69 = bitcast i64* %_RBP_ptr_.sroa.0.i to i8**
  br label %block_0x29.i

block_0x29.i:                                     ; preds = %block_0xb8.i, %driverBlockRaw
  %70 = phi i32 [ 0, %driverBlockRaw ], [ %100, %block_0xb8.i ]
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9431.i = phi i8* [ %_new_gep_.i, %driverBlockRaw ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_94.i10, %block_0xb8.i ]
  %71 = sext i32 %70 to i64, !mcsema_real_eip !6
  %_new_gep_16.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9431.i, i64 -9
  %_new_gep_17.i = getelementptr i8, i8* %_new_gep_16.i, i64 %71
  %72 = load i8, i8* %_new_gep_17.i, align 1, !mcsema_real_eip !7
  %73 = sext i8 %72 to i32, !mcsema_real_eip !7
  %74 = add nsw i32 %73, -114
  %75 = icmp eq i32 %74, 0, !mcsema_real_eip !8
  %76 = icmp slt i8 %72, 114
  %77 = sub nsw i32 113, %73
  %78 = and i32 %77, %73
  %79 = icmp slt i32 %78, 0
  %_new_gep_20.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9431.i, i64 -16
  %80 = bitcast i8* %_new_gep_20.i to i32*
  store i32 %73, i32* %80, align 4, !mcsema_real_eip !9
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_226.i4 = load i8*, i8** %69, align 8
  %_new_gep_23.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_226.i4, i64 -20
  %81 = bitcast i8* %_new_gep_23.i to i32*
  store i32 %74, i32* %81, align 4, !mcsema_real_eip !10
  %tmp71.i = xor i1 %76, %79
  %.demorgan.i = or i1 %75, %tmp71.i
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_257.i5 = load i8*, i8** %69, align 8
  %_new_gep_26.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_257.i5, i64 -16
  %82 = bitcast i8* %_new_gep_26.i to i32*
  %83 = load i32, i32* %82, align 4, !mcsema_real_eip !11
  br i1 %.demorgan.i, label %block_0x48.i, label %block_0x70.i, !mcsema_real_eip !12

block_0x1c.block_0xcf.loopexit_crit_edge.i:       ; preds = %block_0xb8.i
  %84 = and i32 %102, 16, !mcsema_real_eip !13
  %85 = icmp ne i32 %84, 0, !mcsema_real_eip !13
  %86 = trunc i32 %101 to i8, !mcsema_real_eip !13
  %87 = tail call i8 @llvm.ctpop.i8(i8 %86) #2
  %88 = icmp eq i32 %101, 0, !mcsema_real_eip !13
  %89 = icmp eq i32 %100, 0
  br label %sub_0.exit

block_0x70.i:                                     ; preds = %block_0x29.i
  %90 = add i32 %83, -115
  %91 = icmp eq i32 %90, 0, !mcsema_real_eip !14
  %_new_gep_41.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_257.i5, i64 -32
  %92 = bitcast i8* %_new_gep_41.i to i32*
  store i32 %90, i32* %92, align 4, !mcsema_real_eip !15
  br i1 %91, label %block_0xb8.i, label %block_0x84.i, !mcsema_real_eip !16

block_0x48.i:                                     ; preds = %block_0x29.i
  %93 = add i32 %83, -97
  %94 = icmp eq i32 %93, 0, !mcsema_real_eip !17
  %_new_gep_44.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_257.i5, i64 -24
  %95 = bitcast i8* %_new_gep_44.i to i32*
  store i32 %93, i32* %95, align 4, !mcsema_real_eip !18
  br i1 %94, label %block_0xb8.i, label %block_0x5c.i, !mcsema_real_eip !19

block_0xb8.i:                                     ; preds = %block_0x5c.i, %block_0x84.i, %block_0x48.i, %block_0x70.i
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4610.i9 = load i8*, i8** %69, align 8
  %_new_gep_47.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4610.i9, i64 -8
  %96 = bitcast i8* %_new_gep_47.i to i32*
  %97 = load i32, i32* %96, align 4, !mcsema_real_eip !20
  %98 = add i32 %97, 1
  store i32 %98, i32* %96, align 4, !mcsema_real_eip !21
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_94.i10 = load i8*, i8** %69, align 8
  %_new_gep_10.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_94.i10, i64 -8
  %99 = bitcast i8* %_new_gep_10.i to i32*
  %100 = load i32, i32* %99, align 4, !mcsema_real_eip !13
  %101 = add i32 %100, -1
  %102 = xor i32 %101, %100, !mcsema_real_eip !13
  %103 = icmp slt i32 %101, 0
  %104 = and i32 %102, %100, !mcsema_real_eip !13
  %105 = icmp slt i32 %104, 0
  %tmp.i = xor i1 %103, %105
  br i1 %tmp.i, label %block_0x29.i, label %block_0x1c.block_0xcf.loopexit_crit_edge.i, !mcsema_real_eip !22

block_0x84.i:                                     ; preds = %block_0x70.i
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_528.i6 = load i8*, i8** %69, align 8
  %_new_gep_53.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_528.i6, i64 -16
  %106 = bitcast i8* %_new_gep_53.i to i32*
  %107 = load i32, i32* %106, align 4, !mcsema_real_eip !23
  %108 = add i32 %107, -119
  %109 = xor i32 %108, %107, !mcsema_real_eip !24
  %110 = and i32 %109, 16
  %111 = icmp eq i32 %110, 0
  %112 = trunc i32 %108 to i8, !mcsema_real_eip !24
  %113 = tail call i8 @llvm.ctpop.i8(i8 %112) #2, !mcsema_real_eip !24
  %114 = icmp eq i32 %108, 0, !mcsema_real_eip !24
  %115 = icmp ult i32 %107, 119, !mcsema_real_eip !24
  %116 = and i32 %109, %107, !mcsema_real_eip !24
  %_new_gep_56.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_528.i6, i64 -36
  %117 = bitcast i8* %_new_gep_56.i to i32*
  store i32 %108, i32* %117, align 4, !mcsema_real_eip !25
  br i1 %114, label %block_0xb8.i, label %block_0xac.i, !mcsema_real_eip !26

block_0xac.i:                                     ; preds = %block_0x5c.i, %block_0x84.i
  %OF_val.1.in.i = phi i32 [ %128, %block_0x5c.i ], [ %116, %block_0x84.i ]
  %SF_val.1.in.i = phi i32 [ %120, %block_0x5c.i ], [ %108, %block_0x84.i ]
  %CF_val.1.i = phi i1 [ %127, %block_0x5c.i ], [ %115, %block_0x84.i ]
  %AF_val.1.i = phi i1 [ %123, %block_0x5c.i ], [ %111, %block_0x84.i ]
  %PF_val.1.in.in.i = phi i8 [ %125, %block_0x5c.i ], [ %113, %block_0x84.i ]
  %SF_val.1.i = icmp slt i32 %SF_val.1.in.i, 0
  %OF_val.1.i = icmp slt i32 %OF_val.1.in.i, 0
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_589.i7 = load i8*, i8** %69, align 8
  br label %sub_0.exit, !mcsema_real_eip !27

block_0x5c.i:                                     ; preds = %block_0x48.i
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6111.i11 = load i8*, i8** %69, align 8
  %_new_gep_62.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6111.i11, i64 -16
  %118 = bitcast i8* %_new_gep_62.i to i32*
  %119 = load i32, i32* %118, align 4, !mcsema_real_eip !28
  %120 = add i32 %119, -100
  %121 = xor i32 %120, %119, !mcsema_real_eip !29
  %122 = and i32 %121, 16, !mcsema_real_eip !29
  %123 = icmp ne i32 %122, 0, !mcsema_real_eip !29
  %124 = trunc i32 %120 to i8, !mcsema_real_eip !29
  %125 = tail call i8 @llvm.ctpop.i8(i8 %124) #2, !mcsema_real_eip !29
  %126 = icmp eq i32 %120, 0, !mcsema_real_eip !29
  %127 = icmp ult i32 %119, 100, !mcsema_real_eip !29
  %128 = and i32 %121, %119, !mcsema_real_eip !29
  %_new_gep_65.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6111.i11, i64 -28
  %129 = bitcast i8* %_new_gep_65.i to i32*
  store i32 %120, i32* %129, align 4, !mcsema_real_eip !30
  br i1 %126, label %block_0xb8.i, label %block_0xac.i, !mcsema_real_eip !31

sub_0.exit:                                       ; preds = %block_0x1c.block_0xcf.loopexit_crit_edge.i, %block_0xac.i
  %_load_rbp_ptr_58.sink.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_589.i7, %block_0xac.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_94.i10, %block_0x1c.block_0xcf.loopexit_crit_edge.i ]
  %OF_val.0.i = phi i1 [ %OF_val.1.i, %block_0xac.i ], [ %105, %block_0x1c.block_0xcf.loopexit_crit_edge.i ]
  %SF_val.0.i = phi i1 [ %SF_val.1.i, %block_0xac.i ], [ %103, %block_0x1c.block_0xcf.loopexit_crit_edge.i ]
  %CF_val.0.i = phi i1 [ %CF_val.1.i, %block_0xac.i ], [ %89, %block_0x1c.block_0xcf.loopexit_crit_edge.i ]
  %AF_val.0.i = phi i1 [ %AF_val.1.i, %block_0xac.i ], [ %85, %block_0x1c.block_0xcf.loopexit_crit_edge.i ]
  %PF_val.0.in.in.i = phi i8 [ %PF_val.1.in.in.i, %block_0xac.i ], [ %87, %block_0x1c.block_0xcf.loopexit_crit_edge.i ]
  %ZF_val.0.i = phi i1 [ false, %block_0xac.i ], [ %88, %block_0x1c.block_0xcf.loopexit_crit_edge.i ]
  %RCX_val.1.i = zext i32 %73 to i64
  %RDX_val.1.i = zext i32 %74 to i64
  %PF_val.0.in.i = and i8 %PF_val.0.in.in.i, 1
  %PF_val.0.i = icmp eq i8 %PF_val.0.in.i, 0
  %_new_gep_59.i = getelementptr i8, i8* %_load_rbp_ptr_58.sink.i, i64 -4
  %130 = bitcast i8* %_new_gep_59.i to i32*
  store i32 1, i32* %130, align 4
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_305.i8 = load i8*, i8** %69, align 8
  %_new_gep_31.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_305.i8, i64 -4
  %131 = bitcast i8* %_new_gep_31.i to i32*
  %132 = load i32, i32* %131, align 4, !mcsema_real_eip !32
  %133 = zext i32 %132 to i64, !mcsema_real_eip !32
  %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_33.i = load i8*, i8** %_RSP_ptr_.i, align 8
  %_allin_new_bt_34.i = bitcast i8* %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_33.i to i64*
  %134 = load i64, i64* %_allin_new_bt_34.i, align 8
  store volatile i64 %134, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_35.i = getelementptr i8, i8* %_RSP_ptr_.i.0._RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_33.i, i64 16
  store volatile i8* %_new_gep_35.i, i8** %_RSP_ptr_.i, align 8
  store i64 %133, i64* %RAX.i, align 8, !mcsema_real_eip !33
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !33
  store i64 %RCX_val.1.i, i64* %RCX.i, align 8, !mcsema_real_eip !33
  store i64 %RDX_val.1.i, i64* %RDX.i, align 8, !mcsema_real_eip !33
  %135 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %135, align 8
  %_new_ptr2int_37.i = ptrtoint i8* %_new_gep_35.i to i64
  store volatile i64 %_new_ptr2int_37.i, i64* %RSP.i, align 8
  store volatile i64 %134, i64* %RBP.i, align 8
  %136 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> %6, <2 x i64>* %136, align 8
  %137 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %137, align 8
  %138 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %138, align 8
  %139 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %139, align 8
  store i64 %13, i64* %RIP.i, align 8, !mcsema_real_eip !33
  store i1 %CF_val.0.i, i1* %CF.i, align 1, !mcsema_real_eip !33
  store i1 %PF_val.0.i, i1* %PF.i, align 1, !mcsema_real_eip !33
  store i1 %AF_val.0.i, i1* %AF.i, align 1, !mcsema_real_eip !33
  store i1 %ZF_val.0.i, i1* %ZF.i, align 1, !mcsema_real_eip !33
  store i1 %SF_val.0.i, i1* %SF.i, align 1, !mcsema_real_eip !33
  store i1 %OF_val.0.i, i1* %OF.i, align 1, !mcsema_real_eip !33
  store i1 %14, i1* %DF.i, align 1, !mcsema_real_eip !33
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !33
  store i1 %17, i1* %FPU_B.i, align 1, !mcsema_real_eip !33
  store i1 %18, i1* %FPU_C3.i, align 1, !mcsema_real_eip !33
  store i3 %19, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !33
  store i1 %20, i1* %FPU_C2.i, align 1, !mcsema_real_eip !33
  store i1 %21, i1* %FPU_C1.i, align 1, !mcsema_real_eip !33
  store i1 %22, i1* %FPU_C0.i, align 1, !mcsema_real_eip !33
  store i1 %23, i1* %FPU_ES.i, align 1, !mcsema_real_eip !33
  store i1 %24, i1* %FPU_SF.i, align 1, !mcsema_real_eip !33
  store i1 %25, i1* %FPU_PE.i, align 1, !mcsema_real_eip !33
  store i1 %26, i1* %FPU_UE.i, align 1, !mcsema_real_eip !33
  store i1 %27, i1* %FPU_OE.i, align 1, !mcsema_real_eip !33
  store i1 %28, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !33
  store i1 %29, i1* %FPU_DE.i, align 1, !mcsema_real_eip !33
  store i1 %30, i1* %FPU_IE.i, align 1, !mcsema_real_eip !33
  store i1 %31, i1* %FPU_X.i, align 1, !mcsema_real_eip !33
  store i2 %32, i2* %FPU_RC.i, align 1, !mcsema_real_eip !33
  store i2 %33, i2* %FPU_PC.i, align 1, !mcsema_real_eip !33
  store i1 %34, i1* %FPU_PM.i, align 1, !mcsema_real_eip !33
  store i1 %35, i1* %FPU_UM.i, align 1, !mcsema_real_eip !33
  store i1 %36, i1* %FPU_OM.i, align 1, !mcsema_real_eip !33
  store i1 %37, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !33
  store i1 %38, i1* %FPU_DM.i, align 1, !mcsema_real_eip !33
  store i1 %39, i1* %FPU_IM.i, align 1, !mcsema_real_eip !33
  store i64 %42, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !33
  store i64 %44, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !33
  store i16 %45, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !33
  store i64 %46, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !33
  store i11 %47, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !33
  store i128 %48, i128* %XMM0.i, align 1, !mcsema_real_eip !33
  store i128 %49, i128* %XMM1.i, align 1, !mcsema_real_eip !33
  store i128 %50, i128* %XMM2.i, align 1, !mcsema_real_eip !33
  store i128 %51, i128* %XMM3.i, align 1, !mcsema_real_eip !33
  store i128 %52, i128* %XMM4.i, align 1, !mcsema_real_eip !33
  store i128 %53, i128* %XMM5.i, align 1, !mcsema_real_eip !33
  store i128 %54, i128* %XMM6.i, align 1, !mcsema_real_eip !33
  store i128 %55, i128* %XMM7.i, align 1, !mcsema_real_eip !33
  store i128 %56, i128* %XMM8.i, align 1, !mcsema_real_eip !33
  store i128 %57, i128* %XMM9.i, align 1, !mcsema_real_eip !33
  store i128 %58, i128* %XMM10.i, align 1, !mcsema_real_eip !33
  store i128 %59, i128* %XMM11.i, align 1, !mcsema_real_eip !33
  store i128 %60, i128* %XMM12.i, align 1, !mcsema_real_eip !33
  store i128 %61, i128* %XMM13.i, align 1, !mcsema_real_eip !33
  store i128 %62, i128* %XMM14.i, align 1, !mcsema_real_eip !33
  store i128 %63, i128* %XMM15.i, align 1, !mcsema_real_eip !33
  %140 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %65, <2 x i64>* %140, align 1
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 44, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #0

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 4}
!4 = !{i64 11}
!5 = !{i64 25}
!6 = !{i64 41}
!7 = !{i64 45}
!8 = !{i64 52}
!9 = !{i64 55}
!10 = !{i64 58}
!11 = !{i64 112}
!12 = !{i64 61}
!13 = !{i64 28}
!14 = !{i64 115}
!15 = !{i64 118}
!16 = !{i64 121}
!17 = !{i64 75}
!18 = !{i64 78}
!19 = !{i64 81}
!20 = !{i64 184}
!21 = !{i64 192}
!22 = !{i64 35}
!23 = !{i64 132}
!24 = !{i64 135}
!25 = !{i64 138}
!26 = !{i64 141}
!27 = !{i64 179}
!28 = !{i64 92}
!29 = !{i64 95}
!30 = !{i64 98}
!31 = !{i64 101}
!32 = !{i64 207}
!33 = !{i64 211}
