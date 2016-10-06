; ModuleID = 'Output/test_2_2.clang.trans.opt.bc'
source_filename = "Output/test_2_2.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: noreturn nounwind
define void @mcsema_main(%struct.regs*) local_unnamed_addr #2 {
driverBlockRaw:
  %_RSP_ptr_92.sroa.0.i = alloca i64, align 8
  %_RBP_ptr_93.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_94.i = alloca [64 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %_RSP_ptr_92.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_92.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_92.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_93.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_93.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_93.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_94.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 64, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_94.i, i64 0, i64 64
  %2 = ptrtoint i8* %_local_stack_end_ptr_.i to i64
  store i64 %2, i64* %_RSP_ptr_92.sroa.0.i, align 8
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %3 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %4 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %5 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %6 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %7 = bitcast i64* %R12.i to <2 x i64>*
  %8 = load <2 x i64>, <2 x i64>* %7, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %9 = bitcast i64* %R14.i to <2 x i64>*
  %10 = load <2 x i64>, <2 x i64>* %9, align 8
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %11 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %12 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !2
  %13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %14 = bitcast x86_fp80* %13 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %14, i32 128, i32 4, i1 false) #3, !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %15 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %16 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %17 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %18 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %19 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %30 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %31 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %35 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %36 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %37 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %38 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %39 = bitcast i8* %38 to i64*
  %40 = load i64, i64* %39, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %41 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %42 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %43 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %44 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %45 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %46 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %47 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %48 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %49 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %61 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %62 = load <2 x i64>, <2 x i64>* %61, align 8
  %_RBP_ptr_93.sroa.0.i.0._RBP_ptr_93.sroa.0.0._RBP_ptr_93.sroa.0.0._load_rbp_ptr_95.i = load i64, i64* %_RBP_ptr_93.sroa.0.i, align 8
  %63 = bitcast i64* %_RSP_ptr_92.sroa.0.i to i8**
  %_RSP_ptr_92.sroa.0.i.0._RSP_ptr_92.sroa.0.0._RSP_ptr_92.sroa.0.0._load_rsp_ptr_102.i1 = load i8*, i8** %63, align 8
  %_new_gep_.i = getelementptr i8, i8* %_RSP_ptr_92.sroa.0.i.0._RSP_ptr_92.sroa.0.0._RSP_ptr_92.sroa.0.0._load_rsp_ptr_102.i1, i64 -8
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_93.sroa.0.i.0._RBP_ptr_93.sroa.0.0._RBP_ptr_93.sroa.0.0._load_rbp_ptr_95.i, i64* %_allin_new_bt_.i, align 8
  %64 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %64, i64* %_RBP_ptr_93.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr i8, i8* %_RSP_ptr_92.sroa.0.i.0._RSP_ptr_92.sroa.0.0._RSP_ptr_92.sroa.0.0._load_rsp_ptr_102.i1, i64 -16
  %65 = add i64 %6, -16
  %_allin_new_bt_2.i = bitcast i8* %_new_gep_1.i to i64*
  store i64 %3, i64* %_allin_new_bt_2.i, align 8, !mcsema_real_eip !3
  %_new_gep_3.i = getelementptr i8, i8* %_RSP_ptr_92.sroa.0.i.0._RSP_ptr_92.sroa.0.0._RSP_ptr_92.sroa.0.0._load_rsp_ptr_102.i1, i64 -56
  %66 = add i64 %6, -56
  %67 = xor i64 %66, %65, !mcsema_real_eip !4
  %68 = and i64 %67, 16, !mcsema_real_eip !4
  %69 = icmp ne i64 %68, 0, !mcsema_real_eip !4
  %70 = trunc i64 %66 to i8, !mcsema_real_eip !4
  %71 = tail call i8 @llvm.ctpop.i8(i8 %70) #3, !mcsema_real_eip !4
  %72 = and i8 %71, 1
  %73 = icmp eq i8 %72, 0
  %74 = icmp eq i64 %66, 0, !mcsema_real_eip !4
  %75 = icmp slt i64 %66, 0
  %76 = icmp ult i64 %65, 40, !mcsema_real_eip !4
  %77 = and i64 %67, %65, !mcsema_real_eip !4
  %78 = icmp slt i64 %77, 0
  %79 = ptrtoint i8* %_new_gep_3.i to i64
  store volatile i64 %79, i64* %_RSP_ptr_92.sroa.0.i, align 8
  %80 = bitcast i64* %_RBP_ptr_93.sroa.0.i to i8**
  %_RBP_ptr_93.sroa.0.i.0._RBP_ptr_93.sroa.0.0._RBP_ptr_93.sroa.0.0._load_rbp_ptr_4103.i2 = load i8*, i8** %80, align 8
  %_new_gep_5.i = getelementptr i8, i8* %_RBP_ptr_93.sroa.0.i.0._RBP_ptr_93.sroa.0.0._RBP_ptr_93.sroa.0.0._load_rbp_ptr_4103.i2, i64 -12
  %81 = bitcast i8* %_new_gep_5.i to i32*
  store i32 0, i32* %81, align 4, !mcsema_real_eip !5
  %_RBP_ptr_93.sroa.0.i.0._RBP_ptr_93.sroa.0.0._RBP_ptr_93.sroa.0.0._load_rbp_ptr_7104.i3 = load i8*, i8** %80, align 8
  %_new_gep_8.i = getelementptr i8, i8* %_RBP_ptr_93.sroa.0.i.0._RBP_ptr_93.sroa.0.0._RBP_ptr_93.sroa.0.0._load_rbp_ptr_7104.i3, i64 -16
  %82 = trunc i64 %5 to i32, !mcsema_real_eip !6
  %83 = bitcast i8* %_new_gep_8.i to i32*
  store i32 %82, i32* %83, align 4, !mcsema_real_eip !6
  %_RBP_ptr_93.sroa.0.i.0._RBP_ptr_93.sroa.0.0._RBP_ptr_93.sroa.0.0._load_rbp_ptr_10105.i4 = load i8*, i8** %80, align 8
  %_new_gep_11.i = getelementptr i8, i8* %_RBP_ptr_93.sroa.0.i.0._RBP_ptr_93.sroa.0.0._RBP_ptr_93.sroa.0.0._load_rbp_ptr_10105.i4, i64 -24
  %_allin_new_bt_12.i = bitcast i8* %_new_gep_11.i to i64*
  store i64 %4, i64* %_allin_new_bt_12.i, align 8, !mcsema_real_eip !7
  %84 = bitcast i64* %_RSP_ptr_92.sroa.0.i to i32**
  %_RSP_ptr_92.sroa.0.i.0._RSP_ptr_92.sroa.0.0._RSP_ptr_92.sroa.0.0._load_rsp_ptr_139697106.i5 = load i32*, i32** %84, align 8
  store i32 10, i32* %_RSP_ptr_92.sroa.0.i.0._RSP_ptr_92.sroa.0.0._RSP_ptr_92.sroa.0.0._load_rsp_ptr_139697106.i5, align 4, !mcsema_real_eip !8
  %_RSP_ptr_92.sroa.0.i.0._RSP_ptr_92.sroa.0.0._RSP_ptr_92.sroa.0.0._load_rsp_ptr_15107.i6 = load i8*, i8** %63, align 8
  %_new_gep_16.i = getelementptr i8, i8* %_RSP_ptr_92.sroa.0.i.0._RSP_ptr_92.sroa.0.0._RSP_ptr_92.sroa.0.0._load_rsp_ptr_15107.i6, i64 8
  %85 = bitcast i8* %_new_gep_16.i to i32*
  store i32 20, i32* %85, align 4, !mcsema_real_eip !9
  %_RBP_ptr_93.sroa.0.i.0._RBP_ptr_93.sroa.0.0._RBP_ptr_93.sroa.0.0._load_rbp_ptr_18108.i7 = load i8*, i8** %80, align 8
  %_new_gep_19.i = getelementptr i8, i8* %_RBP_ptr_93.sroa.0.i.0._RBP_ptr_93.sroa.0.0._RBP_ptr_93.sroa.0.0._load_rbp_ptr_18108.i7, i64 -28
  %86 = bitcast i8* %_new_gep_19.i to i32*
  store i32 20, i32* %86, align 4, !mcsema_real_eip !10
  %_RBP_ptr_93.sroa.0.i.0._RBP_ptr_93.sroa.0.0._RBP_ptr_93.sroa.0.0._load_rbp_ptr_21109.i8 = load i8*, i8** %80, align 8
  %_new_gep_22.i = getelementptr i8, i8* %_RBP_ptr_93.sroa.0.i.0._RBP_ptr_93.sroa.0.0._RBP_ptr_93.sroa.0.0._load_rbp_ptr_21109.i8, i64 -32
  %87 = bitcast i8* %_new_gep_22.i to i32*
  store i32 10, i32* %87, align 4, !mcsema_real_eip !11
  %_RSP_ptr_92.sroa.0.i.0._RSP_ptr_92.sroa.0.0._RSP_ptr_92.sroa.0.0._load_rsp_ptr_24110.i9 = load i8*, i8** %63, align 8
  %_new_gep_25.i = getelementptr i8, i8* %_RSP_ptr_92.sroa.0.i.0._RSP_ptr_92.sroa.0.0._RSP_ptr_92.sroa.0.0._load_rsp_ptr_24110.i9, i64 -8
  %_allin_new_bt_26.i = bitcast i8* %_new_gep_25.i to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_26.i, align 8, !mcsema_real_eip !12
  %88 = ptrtoint i8* %_new_gep_25.i to i64
  store volatile i64 %88, i64* %_RSP_ptr_92.sroa.0.i, align 8
  %89 = bitcast %struct.regs* %0 to <2 x i64>*
  store <2 x i64> <i64 100, i64 20>, <2 x i64>* %89, align 8
  %90 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> <i64 400, i64 300>, <2 x i64>* %90, align 8
  %91 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 200, i64 100>, <2 x i64>* %91, align 8
  store volatile i64 %88, i64* %RSP.i, align 8
  %_RBP_ptr_93.sroa.0.i.0._RBP_ptr_93.sroa.0.0._RBP_ptr_93.sroa.0.0._load_rbp_ptr_2999.i = load i64, i64* %_RBP_ptr_93.sroa.0.i, align 8
  store volatile i64 %_RBP_ptr_93.sroa.0.i.0._RBP_ptr_93.sroa.0.0._RBP_ptr_93.sroa.0.0._load_rbp_ptr_2999.i, i64* %RBP.i, align 8
  %92 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 500, i64 600>, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> <i64 600, i64 10>, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %94, align 8
  %95 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %95, align 8
  store i64 %11, i64* %RIP.i, align 8, !mcsema_real_eip !12
  store i1 %76, i1* %CF.i, align 1, !mcsema_real_eip !12
  store i1 %73, i1* %PF.i, align 1, !mcsema_real_eip !12
  store i1 %69, i1* %AF.i, align 1, !mcsema_real_eip !12
  store i1 %74, i1* %ZF.i, align 1, !mcsema_real_eip !12
  store i1 %75, i1* %SF.i, align 1, !mcsema_real_eip !12
  store i1 %78, i1* %OF.i, align 1, !mcsema_real_eip !12
  store i1 %12, i1* %DF.i, align 1, !mcsema_real_eip !12
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #3, !mcsema_real_eip !12
  store i1 %15, i1* %FPU_B.i, align 1, !mcsema_real_eip !12
  store i1 %16, i1* %FPU_C3.i, align 1, !mcsema_real_eip !12
  store i3 %17, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !12
  store i1 %18, i1* %FPU_C2.i, align 1, !mcsema_real_eip !12
  store i1 %19, i1* %FPU_C1.i, align 1, !mcsema_real_eip !12
  store i1 %20, i1* %FPU_C0.i, align 1, !mcsema_real_eip !12
  store i1 %21, i1* %FPU_ES.i, align 1, !mcsema_real_eip !12
  store i1 %22, i1* %FPU_SF.i, align 1, !mcsema_real_eip !12
  store i1 %23, i1* %FPU_PE.i, align 1, !mcsema_real_eip !12
  store i1 %24, i1* %FPU_UE.i, align 1, !mcsema_real_eip !12
  store i1 %25, i1* %FPU_OE.i, align 1, !mcsema_real_eip !12
  store i1 %26, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !12
  store i1 %27, i1* %FPU_DE.i, align 1, !mcsema_real_eip !12
  store i1 %28, i1* %FPU_IE.i, align 1, !mcsema_real_eip !12
  store i1 %29, i1* %FPU_X.i, align 1, !mcsema_real_eip !12
  store i2 %30, i2* %FPU_RC.i, align 1, !mcsema_real_eip !12
  store i2 %31, i2* %FPU_PC.i, align 1, !mcsema_real_eip !12
  store i1 %32, i1* %FPU_PM.i, align 1, !mcsema_real_eip !12
  store i1 %33, i1* %FPU_UM.i, align 1, !mcsema_real_eip !12
  store i1 %34, i1* %FPU_OM.i, align 1, !mcsema_real_eip !12
  store i1 %35, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !12
  store i1 %36, i1* %FPU_DM.i, align 1, !mcsema_real_eip !12
  store i1 %37, i1* %FPU_IM.i, align 1, !mcsema_real_eip !12
  store i64 %40, i64* %39, align 4
  store i16 %41, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !12
  store i64 %42, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !12
  store i16 %43, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !12
  store i64 %44, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !12
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !12
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !12
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !12
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !12
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !12
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !12
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !12
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !12
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !12
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !12
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !12
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !12
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !12
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !12
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !12
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !12
  %96 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %62, <2 x i64>* %96, align 1
  call void @llvm.trap() #3
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 64, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 68, [12 x i8] c"\09pushq\09%rbx\00"}
!4 = !{i64 69, [16 x i8] c"\09subq\09$40, %rsp\00"}
!5 = !{i64 117, [20 x i8] c"\09movl\09$0, -12(%rbp)\00"}
!6 = !{i64 124, [22 x i8] c"\09movl\09%edi, -16(%rbp)\00"}
!7 = !{i64 127, [22 x i8] c"\09movq\09%rsi, -24(%rbp)\00"}
!8 = !{i64 144, [18 x i8] c"\09movl\09$10, (%rsp)\00"}
!9 = !{i64 151, [19 x i8] c"\09movl\09$20, 8(%rsp)\00"}
!10 = !{i64 159, [22 x i8] c"\09movl\09%ebx, -28(%rbp)\00"}
!11 = !{i64 162, [23 x i8] c"\09movl\09%r11d, -32(%rbp)\00"}
!12 = !{i64 166, [12 x i8] c"\09callq\09-171\00"}
