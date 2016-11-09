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
  %_RSP_ptr_.sroa.0.i = alloca i64, align 8
  %_RBP_ptr_.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_32.i = alloca [44 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %_RSP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [44 x i8], [44 x i8]* %_local_stack_start_ptr_32.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 44, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [44 x i8], [44 x i8]* %_local_stack_start_ptr_32.i, i64 0, i64 44
  %2 = ptrtoint i8* %_local_stack_end_ptr_.i to i64
  store i64 %2, i64* %_RSP_ptr_.sroa.0.i, align 8
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %3 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %4 = load i64, i64* %RCX.i, align 8, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %5 = load i64, i64* %RDX.i, align 8, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %6 = bitcast i64* %RSI.i to <2 x i64>*
  %7 = load <2 x i64>, <2 x i64>* %6, align 8
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %8 = bitcast i64* %R8.i to <2 x i64>*
  %9 = load <2 x i64>, <2 x i64>* %8, align 8
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %10 = bitcast i64* %R10.i to <2 x i64>*
  %11 = load <2 x i64>, <2 x i64>* %10, align 8
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %12 = bitcast i64* %R12.i to <2 x i64>*
  %13 = load <2 x i64>, <2 x i64>* %12, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %14 = bitcast i64* %R14.i to <2 x i64>*
  %15 = load <2 x i64>, <2 x i64>* %14, align 8
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %16 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %17 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !2
  %18 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %19, i32 128, i32 4, i1 false) #2, !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %22 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %35 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %36 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %37 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %38 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %39 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %40 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %41 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %42 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %43 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %44 = bitcast i8* %43 to i64*
  %45 = load i64, i64* %44, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %46 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %47 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %48 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %49 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %50 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %63 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %64 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %65 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %66 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %67 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %68 = load <2 x i64>, <2 x i64>* %67, align 8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_33.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  %69 = bitcast i64* %_RSP_ptr_.sroa.0.i to i8**
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_36.i4 = load i8*, i8** %69, align 8
  %_new_gep_.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_36.i4, i64 -8
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_33.i, i64* %_allin_new_bt_.i, align 8
  %70 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %70, i64* %_RSP_ptr_.sroa.0.i, align 8
  store volatile i64 %70, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_36.i4, i64 -12
  %71 = bitcast i8* %_new_gep_1.i to i32*
  store i32 0, i32* %71, align 4, !mcsema_real_eip !3
  %72 = bitcast i64* %_RBP_ptr_.sroa.0.i to i8**
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_337.i5 = load i8*, i8** %72, align 8
  %_new_gep_4.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_337.i5, i64 -8
  %73 = bitcast i8* %_new_gep_4.i to i32*
  store i32 0, i32* %73, align 4, !mcsema_real_eip !4
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_638.i6 = load i8*, i8** %72, align 8
  %_new_gep_7.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_638.i6, i64 -9
  store i8 119, i8* %_new_gep_7.i, align 1, !mcsema_real_eip !5
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_93962.i7 = load i8*, i8** %72, align 8
  %_new_gep_1063.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_93962.i7, i64 -8
  %74 = bitcast i8* %_new_gep_1063.i to i32*
  %75 = load i32, i32* %74, align 4, !mcsema_real_eip !6
  %76 = add i32 %75, -1
  %77 = xor i32 %76, %75, !mcsema_real_eip !6
  %78 = icmp slt i32 %76, 0
  %79 = and i32 %77, %75, !mcsema_real_eip !6
  %80 = icmp slt i32 %79, 0
  %tmp64.i = xor i1 %78, %80
  br i1 %tmp64.i, label %block_0x29.i.preheader, label %block_0xc8.i, !mcsema_real_eip !7

block_0x29.i.preheader:                           ; preds = %driverBlockRaw
  br label %block_0x29.i

block_0x29.i:                                     ; preds = %block_0x29.i.preheader, %block_0xb8.i
  %81 = phi i32 [ %113, %block_0xb8.i ], [ %75, %block_0x29.i.preheader ]
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_93965.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_939.i15, %block_0xb8.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_93962.i7, %block_0x29.i.preheader ]
  %82 = sext i32 %81 to i64, !mcsema_real_eip !8
  %_new_gep_16.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_93965.i, i64 -9
  %_new_gep_17.i = getelementptr i8, i8* %_new_gep_16.i, i64 %82
  %83 = load i8, i8* %_new_gep_17.i, align 1, !mcsema_real_eip !9
  %84 = sext i8 %83 to i32, !mcsema_real_eip !9
  %85 = add nsw i32 %84, -114
  %86 = icmp eq i32 %85, 0, !mcsema_real_eip !10
  %87 = icmp slt i8 %83, 114
  %88 = sub nsw i32 113, %84
  %89 = and i32 %88, %84
  %90 = icmp slt i32 %89, 0
  %_new_gep_20.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_93965.i, i64 -16
  %91 = bitcast i8* %_new_gep_20.i to i32*
  store i32 %84, i32* %91, align 4, !mcsema_real_eip !11
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2242.i10 = load i8*, i8** %72, align 8
  %_new_gep_23.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2242.i10, i64 -20
  %92 = bitcast i8* %_new_gep_23.i to i32*
  store i32 %85, i32* %92, align 4, !mcsema_real_eip !12
  %tmp71.i = xor i1 %87, %90
  %.demorgan.i = or i1 %86, %tmp71.i
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2543.i11 = load i8*, i8** %72, align 8
  %_new_gep_26.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2543.i11, i64 -16
  %93 = bitcast i8* %_new_gep_26.i to i32*
  %94 = load i32, i32* %93, align 4, !mcsema_real_eip !13
  br i1 %.demorgan.i, label %block_0x48.i, label %block_0x70.i, !mcsema_real_eip !14

block_0x1c.block_0xc8_crit_edge.i:                ; preds = %block_0xb8.i
  %95 = zext i32 %84 to i64, !mcsema_real_eip !9
  %96 = zext i32 %85 to i64, !mcsema_real_eip !10
  br label %block_0xc8.i

block_0xc8.i:                                     ; preds = %block_0x1c.block_0xc8_crit_edge.i, %driverBlockRaw
  %RDX_val.0.lcssa.i = phi i64 [ %96, %block_0x1c.block_0xc8_crit_edge.i ], [ %5, %driverBlockRaw ]
  %RCX_val.0.lcssa.i = phi i64 [ %95, %block_0x1c.block_0xc8_crit_edge.i ], [ %4, %driverBlockRaw ]
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_939.lcssa.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_939.i15, %block_0x1c.block_0xc8_crit_edge.i ], [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_93962.i7, %driverBlockRaw ]
  %.lcssa57.i = phi i32 [ %113, %block_0x1c.block_0xc8_crit_edge.i ], [ %75, %driverBlockRaw ]
  %.lcssa55.i = phi i32 [ %114, %block_0x1c.block_0xc8_crit_edge.i ], [ %76, %driverBlockRaw ]
  %.lcssa53.i = phi i32 [ %115, %block_0x1c.block_0xc8_crit_edge.i ], [ %77, %driverBlockRaw ]
  %.lcssa51.i = phi i1 [ %116, %block_0x1c.block_0xc8_crit_edge.i ], [ %78, %driverBlockRaw ]
  %.lcssa49.i = phi i1 [ %118, %block_0x1c.block_0xc8_crit_edge.i ], [ %80, %driverBlockRaw ]
  %97 = icmp eq i32 %.lcssa57.i, 0
  %98 = icmp eq i32 %.lcssa55.i, 0, !mcsema_real_eip !6
  %99 = trunc i32 %.lcssa55.i to i8, !mcsema_real_eip !6
  %100 = tail call i8 @llvm.ctpop.i8(i8 %99) #2, !mcsema_real_eip !6
  %101 = and i32 %.lcssa53.i, 16, !mcsema_real_eip !6
  %102 = icmp ne i32 %101, 0, !mcsema_real_eip !6
  br label %sub_0.exit, !mcsema_real_eip !8

block_0x70.i:                                     ; preds = %block_0x29.i
  %103 = add i32 %94, -115
  %104 = icmp eq i32 %103, 0, !mcsema_real_eip !15
  %_new_gep_41.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2543.i11, i64 -32
  %105 = bitcast i8* %_new_gep_41.i to i32*
  store i32 %103, i32* %105, align 4, !mcsema_real_eip !16
  br i1 %104, label %block_0xb8.i, label %block_0x84.i, !mcsema_real_eip !17

block_0x48.i:                                     ; preds = %block_0x29.i
  %106 = add i32 %94, -97
  %107 = icmp eq i32 %106, 0, !mcsema_real_eip !18
  %_new_gep_44.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2543.i11, i64 -24
  %108 = bitcast i8* %_new_gep_44.i to i32*
  store i32 %106, i32* %108, align 4, !mcsema_real_eip !19
  br i1 %107, label %block_0xb8.i, label %block_0x5c.i, !mcsema_real_eip !20

block_0xb8.i:                                     ; preds = %block_0x5c.i, %block_0x84.i, %block_0x48.i, %block_0x70.i
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4646.i14 = load i8*, i8** %72, align 8
  %_new_gep_47.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4646.i14, i64 -8
  %109 = bitcast i8* %_new_gep_47.i to i32*
  %110 = load i32, i32* %109, align 4, !mcsema_real_eip !21
  %111 = add i32 %110, 1
  store i32 %111, i32* %109, align 4, !mcsema_real_eip !22
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_939.i15 = load i8*, i8** %72, align 8
  %_new_gep_10.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_939.i15, i64 -8
  %112 = bitcast i8* %_new_gep_10.i to i32*
  %113 = load i32, i32* %112, align 4, !mcsema_real_eip !6
  %114 = add i32 %113, -1
  %115 = xor i32 %114, %113, !mcsema_real_eip !6
  %116 = icmp slt i32 %114, 0
  %117 = and i32 %115, %113, !mcsema_real_eip !6
  %118 = icmp slt i32 %117, 0
  %tmp.i = xor i1 %116, %118
  br i1 %tmp.i, label %block_0x29.i, label %block_0x1c.block_0xc8_crit_edge.i, !mcsema_real_eip !7

block_0x84.i:                                     ; preds = %block_0x70.i
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5244.i12 = load i8*, i8** %72, align 8
  %_new_gep_53.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5244.i12, i64 -16
  %119 = bitcast i8* %_new_gep_53.i to i32*
  %120 = load i32, i32* %119, align 4, !mcsema_real_eip !23
  %121 = add i32 %120, -119
  %122 = xor i32 %121, %120, !mcsema_real_eip !24
  %123 = and i32 %122, 16
  %124 = icmp eq i32 %123, 0
  %125 = trunc i32 %121 to i8, !mcsema_real_eip !24
  %126 = tail call i8 @llvm.ctpop.i8(i8 %125) #2, !mcsema_real_eip !24
  %127 = icmp eq i32 %121, 0, !mcsema_real_eip !24
  %128 = icmp ult i32 %120, 119, !mcsema_real_eip !24
  %129 = and i32 %122, %120, !mcsema_real_eip !24
  %_new_gep_56.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5244.i12, i64 -36
  %130 = bitcast i8* %_new_gep_56.i to i32*
  store i32 %121, i32* %130, align 4, !mcsema_real_eip !25
  br i1 %127, label %block_0xb8.i, label %block_0xac.i, !mcsema_real_eip !26

block_0xac.i:                                     ; preds = %block_0x5c.i, %block_0x84.i
  %PF_val.1.in.in.i = phi i8 [ %140, %block_0x5c.i ], [ %126, %block_0x84.i ]
  %AF_val.1.i = phi i1 [ %138, %block_0x5c.i ], [ %124, %block_0x84.i ]
  %CF_val.1.i = phi i1 [ %142, %block_0x5c.i ], [ %128, %block_0x84.i ]
  %SF_val.1.in.i = phi i32 [ %135, %block_0x5c.i ], [ %121, %block_0x84.i ]
  %OF_val.1.in.i = phi i32 [ %143, %block_0x5c.i ], [ %129, %block_0x84.i ]
  %131 = zext i32 %84 to i64, !mcsema_real_eip !9
  %132 = zext i32 %85 to i64, !mcsema_real_eip !10
  %OF_val.1.i = icmp slt i32 %OF_val.1.in.i, 0
  %SF_val.1.i = icmp slt i32 %SF_val.1.in.i, 0
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5845.i13 = load i8*, i8** %72, align 8
  br label %sub_0.exit, !mcsema_real_eip !27

block_0x5c.i:                                     ; preds = %block_0x48.i
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6147.i16 = load i8*, i8** %72, align 8
  %_new_gep_62.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6147.i16, i64 -16
  %133 = bitcast i8* %_new_gep_62.i to i32*
  %134 = load i32, i32* %133, align 4, !mcsema_real_eip !28
  %135 = add i32 %134, -100
  %136 = xor i32 %135, %134, !mcsema_real_eip !29
  %137 = and i32 %136, 16, !mcsema_real_eip !29
  %138 = icmp ne i32 %137, 0, !mcsema_real_eip !29
  %139 = trunc i32 %135 to i8, !mcsema_real_eip !29
  %140 = tail call i8 @llvm.ctpop.i8(i8 %139) #2, !mcsema_real_eip !29
  %141 = icmp eq i32 %135, 0, !mcsema_real_eip !29
  %142 = icmp ult i32 %134, 100, !mcsema_real_eip !29
  %143 = and i32 %136, %134, !mcsema_real_eip !29
  %_new_gep_65.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6147.i16, i64 -28
  %144 = bitcast i8* %_new_gep_65.i to i32*
  store i32 %135, i32* %144, align 4, !mcsema_real_eip !30
  br i1 %141, label %block_0xb8.i, label %block_0xac.i, !mcsema_real_eip !31

sub_0.exit:                                       ; preds = %block_0xc8.i, %block_0xac.i
  %ZF_val.0.i = phi i1 [ false, %block_0xac.i ], [ %98, %block_0xc8.i ]
  %PF_val.0.in.in.i = phi i8 [ %PF_val.1.in.in.i, %block_0xac.i ], [ %100, %block_0xc8.i ]
  %AF_val.0.i = phi i1 [ %AF_val.1.i, %block_0xac.i ], [ %102, %block_0xc8.i ]
  %CF_val.0.i = phi i1 [ %CF_val.1.i, %block_0xac.i ], [ %97, %block_0xc8.i ]
  %SF_val.0.i = phi i1 [ %SF_val.1.i, %block_0xac.i ], [ %.lcssa51.i, %block_0xc8.i ]
  %RDX_val.1.i = phi i64 [ %132, %block_0xac.i ], [ %RDX_val.0.lcssa.i, %block_0xc8.i ]
  %RCX_val.1.i = phi i64 [ %131, %block_0xac.i ], [ %RCX_val.0.lcssa.i, %block_0xc8.i ]
  %OF_val.0.i = phi i1 [ %OF_val.1.i, %block_0xac.i ], [ %.lcssa49.i, %block_0xc8.i ]
  %_RBP_ptr_.0._load_rbp_ptr_58.pn.i = phi i8* [ %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5845.i13, %block_0xac.i ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_939.lcssa.i, %block_0xc8.i ]
  %PF_val.0.in.i = and i8 %PF_val.0.in.in.i, 1
  %_allin_new_bt_60.sink.in.i = getelementptr i8, i8* %_RBP_ptr_.0._load_rbp_ptr_58.pn.i, i64 -4
  %PF_val.0.i = icmp eq i8 %PF_val.0.in.i, 0
  %145 = bitcast i8* %_allin_new_bt_60.sink.in.i to i32*
  store i32 1, i32* %145, align 4
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3040.i8 = load i8*, i8** %72, align 8
  %_new_gep_31.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3040.i8, i64 -4
  %146 = bitcast i8* %_new_gep_31.i to i32*
  %147 = load i32, i32* %146, align 4, !mcsema_real_eip !32
  %148 = zext i32 %147 to i64, !mcsema_real_eip !32
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_3341.i9 = load i8*, i8** %69, align 8
  %_allin_new_bt_34.i = bitcast i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_3341.i9 to i64*
  %149 = load i64, i64* %_allin_new_bt_34.i, align 8
  store volatile i64 %149, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_35.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_3341.i9, i64 16
  %150 = ptrtoint i8* %_new_gep_35.i to i64
  store volatile i64 %150, i64* %_RSP_ptr_.sroa.0.i, align 8
  store i64 %148, i64* %RAX.i, align 8, !mcsema_real_eip !33
  store i64 %3, i64* %RBX.i, align 8, !mcsema_real_eip !33
  store i64 %RCX_val.1.i, i64* %RCX.i, align 8, !mcsema_real_eip !33
  store i64 %RDX_val.1.i, i64* %RDX.i, align 8, !mcsema_real_eip !33
  %151 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> %7, <2 x i64>* %151, align 8
  store volatile i64 %150, i64* %RSP.i, align 8
  store volatile i64 %149, i64* %RBP.i, align 8
  %152 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %152, align 8
  %153 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %153, align 8
  %154 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %154, align 8
  %155 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %155, align 8
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !33
  store i1 %CF_val.0.i, i1* %CF.i, align 1, !mcsema_real_eip !33
  store i1 %PF_val.0.i, i1* %PF.i, align 1, !mcsema_real_eip !33
  store i1 %AF_val.0.i, i1* %AF.i, align 1, !mcsema_real_eip !33
  store i1 %ZF_val.0.i, i1* %ZF.i, align 1, !mcsema_real_eip !33
  store i1 %SF_val.0.i, i1* %SF.i, align 1, !mcsema_real_eip !33
  store i1 %OF_val.0.i, i1* %OF.i, align 1, !mcsema_real_eip !33
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !33
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !33
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !33
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !33
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !33
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !33
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !33
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !33
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !33
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !33
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !33
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !33
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !33
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !33
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !33
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !33
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !33
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !33
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !33
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !33
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !33
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !33
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !33
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !33
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !33
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !33
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !33
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !33
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !33
  store i11 %50, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !33
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !33
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !33
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !33
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !33
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !33
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !33
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !33
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !33
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !33
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !33
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !33
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !33
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !33
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !33
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !33
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !33
  %156 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %68, <2 x i64>* %156, align 1
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
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
!6 = !{i64 28}
!7 = !{i64 35}
!8 = !{i64 41}
!9 = !{i64 45}
!10 = !{i64 52}
!11 = !{i64 55}
!12 = !{i64 58}
!13 = !{i64 112}
!14 = !{i64 61}
!15 = !{i64 115}
!16 = !{i64 118}
!17 = !{i64 121}
!18 = !{i64 75}
!19 = !{i64 78}
!20 = !{i64 81}
!21 = !{i64 184}
!22 = !{i64 192}
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
