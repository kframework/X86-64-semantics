; ModuleID = 'Output/test_20.clang.trans.opt.bc'
source_filename = "Output/test_20.clang.bc"
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
  %_local_stack_start_ptr_87.i = alloca [92 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %_RSP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_87.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 92, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_87.i, i64 0, i64 92
  %2 = ptrtoint i8* %_local_stack_end_ptr_.i to i64
  store i64 %2, i64* %_RSP_ptr_.sroa.0.i, align 8
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %3 = bitcast i64* %RBX.i to <2 x i64>*
  %4 = load <2 x i64>, <2 x i64>* %3, align 8
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %5 = bitcast i64* %RDX.i to <2 x i64>*
  %6 = load <2 x i64>, <2 x i64>* %5, align 8
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %7 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !2
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
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_89.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  %69 = bitcast i64* %_RSP_ptr_.sroa.0.i to i8**
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_92.i4 = load i8*, i8** %69, align 8
  %_new_gep_.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_92.i4, i64 -8
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_89.i, i64* %_allin_new_bt_.i, align 8
  %70 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %70, i64* %_RSP_ptr_.sroa.0.i, align 8
  store volatile i64 %70, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_92.i4, i64 -12
  %71 = trunc i64 %7 to i32, !mcsema_real_eip !3
  %72 = bitcast i8* %_new_gep_1.i to i32*
  store i32 %71, i32* %72, align 4, !mcsema_real_eip !3
  %73 = bitcast i64* %_RBP_ptr_.sroa.0.i to i8**
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_393.i5 = load i8*, i8** %73, align 8
  %_new_gep_4.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_393.i5, i64 -8
  %74 = bitcast i8* %_new_gep_4.i to i32*
  store i32 0, i32* %74, align 4, !mcsema_real_eip !4
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_694.i6 = load i8*, i8** %73, align 8
  %_new_gep_7.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_694.i6, i64 -4
  %75 = bitcast i8* %_new_gep_7.i to i32*
  %76 = load i32, i32* %75, align 4, !mcsema_real_eip !5
  %77 = zext i32 %76 to i64, !mcsema_real_eip !5
  %78 = icmp eq i32 %76, 0, !mcsema_real_eip !6
  %_new_gep_10.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_694.i6, i64 -12
  %79 = bitcast i8* %_new_gep_10.i to i32*
  store i32 %76, i32* %79, align 4, !mcsema_real_eip !7
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_1295.i7 = load i8*, i8** %73, align 8
  br i1 %78, label %block_0x19f.i, label %block_0x21.i, !mcsema_real_eip !8

block_0x19f.i:                                    ; preds = %driverBlockRaw
  %_new_gep_13.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_1295.i7, i64 -8
  %_allin_new_bt_14.i = bitcast i8* %_new_gep_13.i to i64*
  %80 = bitcast i8* %_new_gep_13.i to i32*
  %81 = load i32, i32* %80, align 4, !mcsema_real_eip !9
  %82 = trunc i32 %81 to i8, !mcsema_real_eip !10
  %83 = tail call i8 @llvm.ctpop.i8(i8 %82) #2, !mcsema_real_eip !10
  br label %sub_0.exit, !mcsema_real_eip !11

block_0x21.i:                                     ; preds = %driverBlockRaw
  %_new_gep_28.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_1295.i7, i64 -12
  %84 = bitcast i8* %_new_gep_28.i to i32*
  %85 = load i32, i32* %84, align 4, !mcsema_real_eip !12
  %86 = add i32 %85, -1
  %87 = icmp eq i32 %86, 0, !mcsema_real_eip !13
  %_new_gep_31.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_1295.i7, i64 -16
  %88 = bitcast i8* %_new_gep_31.i to i32*
  store i32 %86, i32* %88, align 4, !mcsema_real_eip !14
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3396.i8 = load i8*, i8** %73, align 8
  br i1 %87, label %block_0x1ad.i, label %block_0x35.i, !mcsema_real_eip !15

block_0x1ad.i:                                    ; preds = %block_0x21.i
  %_new_gep_34.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3396.i8, i64 -8
  %_allin_new_bt_35.i = bitcast i8* %_new_gep_34.i to i64*
  %89 = bitcast i8* %_new_gep_34.i to i32*
  %90 = load i32, i32* %89, align 4, !mcsema_real_eip !16
  %uadd87.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %90, i32 1) #2
  %91 = extractvalue { i32, i1 } %uadd87.i, 0
  %92 = xor i32 %91, %90, !mcsema_real_eip !17
  %93 = and i32 %92, 16, !mcsema_real_eip !17
  %94 = icmp ne i32 %93, 0, !mcsema_real_eip !17
  %95 = xor i32 %90, -2147483648, !mcsema_real_eip !17
  %96 = and i32 %92, %95, !mcsema_real_eip !17
  %97 = icmp slt i32 %96, 0
  %98 = trunc i32 %91 to i8, !mcsema_real_eip !17
  %99 = tail call i8 @llvm.ctpop.i8(i8 %98) #2, !mcsema_real_eip !17
  %100 = extractvalue { i32, i1 } %uadd87.i, 1
  br label %sub_0.exit, !mcsema_real_eip !18

block_0x35.i:                                     ; preds = %block_0x21.i
  %_new_gep_39.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3396.i8, i64 -12
  %101 = bitcast i8* %_new_gep_39.i to i32*
  %102 = load i32, i32* %101, align 4, !mcsema_real_eip !19
  %103 = add i32 %102, -2
  %104 = icmp eq i32 %103, 0, !mcsema_real_eip !20
  %_new_gep_42.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3396.i8, i64 -20
  %105 = bitcast i8* %_new_gep_42.i to i32*
  store i32 %103, i32* %105, align 4, !mcsema_real_eip !21
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4497.i9 = load i8*, i8** %73, align 8
  br i1 %104, label %block_0x1bb.i, label %block_0x49.i, !mcsema_real_eip !22

block_0x1bb.i:                                    ; preds = %block_0x35.i
  %_new_gep_45.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4497.i9, i64 -8
  %_allin_new_bt_46.i = bitcast i8* %_new_gep_45.i to i64*
  %106 = bitcast i8* %_new_gep_45.i to i32*
  %107 = load i32, i32* %106, align 4, !mcsema_real_eip !23
  %uadd86.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %107, i32 2) #2
  %108 = extractvalue { i32, i1 } %uadd86.i, 0
  %109 = xor i32 %108, %107, !mcsema_real_eip !24
  %110 = and i32 %109, 16, !mcsema_real_eip !24
  %111 = icmp ne i32 %110, 0, !mcsema_real_eip !24
  %112 = xor i32 %107, -2147483648, !mcsema_real_eip !24
  %113 = and i32 %109, %112, !mcsema_real_eip !24
  %114 = icmp slt i32 %113, 0
  %115 = trunc i32 %108 to i8, !mcsema_real_eip !24
  %116 = tail call i8 @llvm.ctpop.i8(i8 %115) #2, !mcsema_real_eip !24
  %117 = extractvalue { i32, i1 } %uadd86.i, 1
  br label %sub_0.exit, !mcsema_real_eip !25

block_0x49.i:                                     ; preds = %block_0x35.i
  %_new_gep_50.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4497.i9, i64 -12
  %118 = bitcast i8* %_new_gep_50.i to i32*
  %119 = load i32, i32* %118, align 4, !mcsema_real_eip !26
  %120 = add i32 %119, -4
  %121 = icmp eq i32 %120, 0, !mcsema_real_eip !27
  %_new_gep_53.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4497.i9, i64 -24
  %122 = bitcast i8* %_new_gep_53.i to i32*
  store i32 %120, i32* %122, align 4, !mcsema_real_eip !28
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5598.i10 = load i8*, i8** %73, align 8
  br i1 %121, label %block_0x1c9.i, label %block_0x5d.i, !mcsema_real_eip !29

block_0x1c9.i:                                    ; preds = %block_0x49.i
  %_new_gep_56.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5598.i10, i64 -8
  %_allin_new_bt_57.i = bitcast i8* %_new_gep_56.i to i64*
  %123 = bitcast i8* %_new_gep_56.i to i32*
  %124 = load i32, i32* %123, align 4, !mcsema_real_eip !30
  %uadd85.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %124, i32 4) #2
  %125 = extractvalue { i32, i1 } %uadd85.i, 0
  %126 = xor i32 %125, %124, !mcsema_real_eip !31
  %127 = and i32 %126, 16, !mcsema_real_eip !31
  %128 = icmp ne i32 %127, 0, !mcsema_real_eip !31
  %129 = xor i32 %124, -2147483648, !mcsema_real_eip !31
  %130 = and i32 %126, %129, !mcsema_real_eip !31
  %131 = icmp slt i32 %130, 0
  %132 = trunc i32 %125 to i8, !mcsema_real_eip !31
  %133 = tail call i8 @llvm.ctpop.i8(i8 %132) #2, !mcsema_real_eip !31
  %134 = extractvalue { i32, i1 } %uadd85.i, 1
  br label %sub_0.exit, !mcsema_real_eip !32

block_0x5d.i:                                     ; preds = %block_0x49.i
  %_new_gep_61.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5598.i10, i64 -12
  %135 = bitcast i8* %_new_gep_61.i to i32*
  %136 = load i32, i32* %135, align 4, !mcsema_real_eip !33
  %137 = add i32 %136, -6
  %138 = icmp eq i32 %137, 0, !mcsema_real_eip !34
  %_new_gep_64.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5598.i10, i64 -28
  %139 = bitcast i8* %_new_gep_64.i to i32*
  store i32 %137, i32* %139, align 4, !mcsema_real_eip !35
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6699.i11 = load i8*, i8** %73, align 8
  br i1 %138, label %block_0x1d7.i, label %block_0x71.i, !mcsema_real_eip !36

block_0x1d7.i:                                    ; preds = %block_0x5d.i
  %_new_gep_67.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6699.i11, i64 -8
  %_allin_new_bt_68.i = bitcast i8* %_new_gep_67.i to i64*
  %140 = bitcast i8* %_new_gep_67.i to i32*
  %141 = load i32, i32* %140, align 4, !mcsema_real_eip !37
  %uadd84.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %141, i32 6) #2
  %142 = extractvalue { i32, i1 } %uadd84.i, 0
  %143 = xor i32 %142, %141, !mcsema_real_eip !38
  %144 = and i32 %143, 16, !mcsema_real_eip !38
  %145 = icmp ne i32 %144, 0, !mcsema_real_eip !38
  %146 = xor i32 %141, -2147483648, !mcsema_real_eip !38
  %147 = and i32 %143, %146, !mcsema_real_eip !38
  %148 = icmp slt i32 %147, 0
  %149 = trunc i32 %142 to i8, !mcsema_real_eip !38
  %150 = tail call i8 @llvm.ctpop.i8(i8 %149) #2, !mcsema_real_eip !38
  %151 = extractvalue { i32, i1 } %uadd84.i, 1
  br label %sub_0.exit, !mcsema_real_eip !39

block_0x71.i:                                     ; preds = %block_0x5d.i
  %_new_gep_72.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6699.i11, i64 -12
  %152 = bitcast i8* %_new_gep_72.i to i32*
  %153 = load i32, i32* %152, align 4, !mcsema_real_eip !40
  %154 = add i32 %153, -12
  %155 = icmp eq i32 %154, 0, !mcsema_real_eip !41
  %_new_gep_75.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6699.i11, i64 -32
  %156 = bitcast i8* %_new_gep_75.i to i32*
  store i32 %154, i32* %156, align 4, !mcsema_real_eip !42
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_77100.i12 = load i8*, i8** %73, align 8
  br i1 %155, label %block_0x1e5.i, label %block_0x85.i, !mcsema_real_eip !43

block_0x1e5.i:                                    ; preds = %block_0x71.i
  %_new_gep_78.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_77100.i12, i64 -8
  %_allin_new_bt_79.i = bitcast i8* %_new_gep_78.i to i64*
  %157 = bitcast i8* %_new_gep_78.i to i32*
  %158 = load i32, i32* %157, align 4, !mcsema_real_eip !44
  %uadd83.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %158, i32 12) #2
  %159 = extractvalue { i32, i1 } %uadd83.i, 0
  %160 = xor i32 %159, %158, !mcsema_real_eip !45
  %161 = and i32 %160, 16, !mcsema_real_eip !45
  %162 = icmp ne i32 %161, 0, !mcsema_real_eip !45
  %163 = xor i32 %158, -2147483648, !mcsema_real_eip !45
  %164 = and i32 %160, %163, !mcsema_real_eip !45
  %165 = icmp slt i32 %164, 0
  %166 = trunc i32 %159 to i8, !mcsema_real_eip !45
  %167 = tail call i8 @llvm.ctpop.i8(i8 %166) #2, !mcsema_real_eip !45
  %168 = extractvalue { i32, i1 } %uadd83.i, 1
  br label %sub_0.exit, !mcsema_real_eip !46

block_0x85.i:                                     ; preds = %block_0x71.i
  %_new_gep_83.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_77100.i12, i64 -12
  %169 = bitcast i8* %_new_gep_83.i to i32*
  %170 = load i32, i32* %169, align 4, !mcsema_real_eip !47
  %171 = add i32 %170, -13
  %172 = icmp eq i32 %171, 0, !mcsema_real_eip !48
  %_new_gep_86.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_77100.i12, i64 -36
  %173 = bitcast i8* %_new_gep_86.i to i32*
  store i32 %171, i32* %173, align 4, !mcsema_real_eip !49
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_88101.i13 = load i8*, i8** %73, align 8
  br i1 %172, label %block_0x1f3.i, label %block_0x99.i, !mcsema_real_eip !50

block_0x1f3.i:                                    ; preds = %block_0x85.i
  %_new_gep_89.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_88101.i13, i64 -8
  %_allin_new_bt_90.i = bitcast i8* %_new_gep_89.i to i64*
  %174 = bitcast i8* %_new_gep_89.i to i32*
  %175 = load i32, i32* %174, align 4, !mcsema_real_eip !51
  %uadd82.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %175, i32 13) #2
  %176 = extractvalue { i32, i1 } %uadd82.i, 0
  %177 = xor i32 %176, %175, !mcsema_real_eip !52
  %178 = and i32 %177, 16, !mcsema_real_eip !52
  %179 = icmp ne i32 %178, 0, !mcsema_real_eip !52
  %180 = xor i32 %175, -2147483648, !mcsema_real_eip !52
  %181 = and i32 %177, %180, !mcsema_real_eip !52
  %182 = icmp slt i32 %181, 0
  %183 = trunc i32 %176 to i8, !mcsema_real_eip !52
  %184 = tail call i8 @llvm.ctpop.i8(i8 %183) #2, !mcsema_real_eip !52
  %185 = extractvalue { i32, i1 } %uadd82.i, 1
  br label %sub_0.exit, !mcsema_real_eip !53

block_0x99.i:                                     ; preds = %block_0x85.i
  %_new_gep_94.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_88101.i13, i64 -12
  %186 = bitcast i8* %_new_gep_94.i to i32*
  %187 = load i32, i32* %186, align 4, !mcsema_real_eip !54
  %188 = add i32 %187, -19
  %189 = icmp eq i32 %188, 0, !mcsema_real_eip !55
  %_new_gep_97.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_88101.i13, i64 -40
  %190 = bitcast i8* %_new_gep_97.i to i32*
  store i32 %188, i32* %190, align 4, !mcsema_real_eip !56
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_99102.i14 = load i8*, i8** %73, align 8
  br i1 %189, label %block_0x201.i, label %block_0xad.i, !mcsema_real_eip !57

block_0x201.i:                                    ; preds = %block_0x99.i
  %_new_gep_100.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_99102.i14, i64 -8
  %_allin_new_bt_101.i = bitcast i8* %_new_gep_100.i to i64*
  %191 = bitcast i8* %_new_gep_100.i to i32*
  %192 = load i32, i32* %191, align 4, !mcsema_real_eip !58
  %uadd81.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %192, i32 19) #2
  %193 = extractvalue { i32, i1 } %uadd81.i, 0
  %194 = xor i32 %193, %192, !mcsema_real_eip !59
  %195 = and i32 %194, 16
  %196 = icmp eq i32 %195, 0
  %197 = xor i32 %192, -2147483648, !mcsema_real_eip !59
  %198 = and i32 %194, %197, !mcsema_real_eip !59
  %199 = icmp slt i32 %198, 0
  %200 = trunc i32 %193 to i8, !mcsema_real_eip !59
  %201 = tail call i8 @llvm.ctpop.i8(i8 %200) #2, !mcsema_real_eip !59
  %202 = extractvalue { i32, i1 } %uadd81.i, 1
  br label %sub_0.exit, !mcsema_real_eip !60

block_0xad.i:                                     ; preds = %block_0x99.i
  %_new_gep_105.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_99102.i14, i64 -12
  %203 = bitcast i8* %_new_gep_105.i to i32*
  %204 = load i32, i32* %203, align 4, !mcsema_real_eip !61
  %205 = add i32 %204, -255
  %206 = icmp eq i32 %205, 0, !mcsema_real_eip !62
  %_new_gep_108.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_99102.i14, i64 -44
  %207 = bitcast i8* %_new_gep_108.i to i32*
  store i32 %205, i32* %207, align 4, !mcsema_real_eip !63
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_110103.i15 = load i8*, i8** %73, align 8
  br i1 %206, label %block_0x20f.i, label %block_0xc3.i, !mcsema_real_eip !64

block_0x20f.i:                                    ; preds = %block_0xad.i
  %_new_gep_111.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_110103.i15, i64 -8
  %_allin_new_bt_112.i = bitcast i8* %_new_gep_111.i to i64*
  %208 = bitcast i8* %_new_gep_111.i to i32*
  %209 = load i32, i32* %208, align 4, !mcsema_real_eip !65
  %uadd80.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %209, i32 255) #2
  %210 = extractvalue { i32, i1 } %uadd80.i, 0
  %211 = xor i32 %210, %209, !mcsema_real_eip !66
  %212 = and i32 %211, 16
  %213 = icmp eq i32 %212, 0
  %214 = xor i32 %209, -2147483648, !mcsema_real_eip !66
  %215 = and i32 %211, %214, !mcsema_real_eip !66
  %216 = icmp slt i32 %215, 0
  %217 = trunc i32 %210 to i8, !mcsema_real_eip !66
  %218 = tail call i8 @llvm.ctpop.i8(i8 %217) #2, !mcsema_real_eip !66
  %219 = extractvalue { i32, i1 } %uadd80.i, 1
  br label %sub_0.exit, !mcsema_real_eip !67

block_0xc3.i:                                     ; preds = %block_0xad.i
  %_new_gep_116.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_110103.i15, i64 -12
  %220 = bitcast i8* %_new_gep_116.i to i32*
  %221 = load i32, i32* %220, align 4, !mcsema_real_eip !68
  %222 = add i32 %221, -74633
  %223 = icmp eq i32 %222, 0, !mcsema_real_eip !69
  %_new_gep_119.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_110103.i15, i64 -48
  %224 = bitcast i8* %_new_gep_119.i to i32*
  store i32 %222, i32* %224, align 4, !mcsema_real_eip !70
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_121104.i16 = load i8*, i8** %73, align 8
  br i1 %223, label %block_0x21f.i, label %block_0xd9.i, !mcsema_real_eip !71

block_0x21f.i:                                    ; preds = %block_0xc3.i
  %_new_gep_122.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_121104.i16, i64 -8
  %_allin_new_bt_123.i = bitcast i8* %_new_gep_122.i to i64*
  %225 = bitcast i8* %_new_gep_122.i to i32*
  %226 = load i32, i32* %225, align 4, !mcsema_real_eip !72
  %uadd79.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %226, i32 74633) #2
  %227 = extractvalue { i32, i1 } %uadd79.i, 0
  %228 = xor i32 %227, %226, !mcsema_real_eip !73
  %229 = and i32 %228, 16, !mcsema_real_eip !73
  %230 = icmp ne i32 %229, 0, !mcsema_real_eip !73
  %231 = xor i32 %226, -2147483648, !mcsema_real_eip !73
  %232 = and i32 %228, %231, !mcsema_real_eip !73
  %233 = icmp slt i32 %232, 0
  %234 = trunc i32 %227 to i8, !mcsema_real_eip !73
  %235 = tail call i8 @llvm.ctpop.i8(i8 %234) #2, !mcsema_real_eip !73
  %236 = extractvalue { i32, i1 } %uadd79.i, 1
  br label %sub_0.exit, !mcsema_real_eip !74

block_0xd9.i:                                     ; preds = %block_0xc3.i
  %_new_gep_127.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_121104.i16, i64 -12
  %237 = bitcast i8* %_new_gep_127.i to i32*
  %238 = load i32, i32* %237, align 4, !mcsema_real_eip !75
  %239 = add i32 %238, -74634
  %240 = icmp eq i32 %239, 0, !mcsema_real_eip !76
  %_new_gep_130.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_121104.i16, i64 -52
  %241 = bitcast i8* %_new_gep_130.i to i32*
  store i32 %239, i32* %241, align 4, !mcsema_real_eip !77
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_132105.i17 = load i8*, i8** %73, align 8
  br i1 %240, label %block_0x22f.i, label %block_0xef.i, !mcsema_real_eip !78

block_0x22f.i:                                    ; preds = %block_0xd9.i
  %_new_gep_133.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_132105.i17, i64 -8
  %_allin_new_bt_134.i = bitcast i8* %_new_gep_133.i to i64*
  %242 = bitcast i8* %_new_gep_133.i to i32*
  %243 = load i32, i32* %242, align 4, !mcsema_real_eip !79
  %uadd78.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %243, i32 74634) #2
  %244 = extractvalue { i32, i1 } %uadd78.i, 0
  %245 = xor i32 %244, %243, !mcsema_real_eip !80
  %246 = and i32 %245, 16, !mcsema_real_eip !80
  %247 = icmp ne i32 %246, 0, !mcsema_real_eip !80
  %248 = xor i32 %243, -2147483648, !mcsema_real_eip !80
  %249 = and i32 %245, %248, !mcsema_real_eip !80
  %250 = icmp slt i32 %249, 0
  %251 = trunc i32 %244 to i8, !mcsema_real_eip !80
  %252 = tail call i8 @llvm.ctpop.i8(i8 %251) #2, !mcsema_real_eip !80
  %253 = extractvalue { i32, i1 } %uadd78.i, 1
  br label %sub_0.exit, !mcsema_real_eip !81

block_0xef.i:                                     ; preds = %block_0xd9.i
  %_new_gep_138.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_132105.i17, i64 -12
  %254 = bitcast i8* %_new_gep_138.i to i32*
  %255 = load i32, i32* %254, align 4, !mcsema_real_eip !82
  %256 = add i32 %255, -74635
  %257 = icmp eq i32 %256, 0, !mcsema_real_eip !83
  %_new_gep_141.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_132105.i17, i64 -56
  %258 = bitcast i8* %_new_gep_141.i to i32*
  store i32 %256, i32* %258, align 4, !mcsema_real_eip !84
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_143106.i18 = load i8*, i8** %73, align 8
  br i1 %257, label %block_0x23f.i, label %block_0x105.i, !mcsema_real_eip !85

block_0x23f.i:                                    ; preds = %block_0xef.i
  %_new_gep_144.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_143106.i18, i64 -8
  %_allin_new_bt_145.i = bitcast i8* %_new_gep_144.i to i64*
  %259 = bitcast i8* %_new_gep_144.i to i32*
  %260 = load i32, i32* %259, align 4, !mcsema_real_eip !86
  %uadd77.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %260, i32 74635) #2
  %261 = extractvalue { i32, i1 } %uadd77.i, 0
  %262 = xor i32 %261, %260, !mcsema_real_eip !87
  %263 = and i32 %262, 16, !mcsema_real_eip !87
  %264 = icmp ne i32 %263, 0, !mcsema_real_eip !87
  %265 = xor i32 %260, -2147483648, !mcsema_real_eip !87
  %266 = and i32 %262, %265, !mcsema_real_eip !87
  %267 = icmp slt i32 %266, 0
  %268 = trunc i32 %261 to i8, !mcsema_real_eip !87
  %269 = tail call i8 @llvm.ctpop.i8(i8 %268) #2, !mcsema_real_eip !87
  %270 = extractvalue { i32, i1 } %uadd77.i, 1
  br label %sub_0.exit, !mcsema_real_eip !88

block_0x105.i:                                    ; preds = %block_0xef.i
  %_new_gep_149.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_143106.i18, i64 -12
  %271 = bitcast i8* %_new_gep_149.i to i32*
  %272 = load i32, i32* %271, align 4, !mcsema_real_eip !89
  %273 = add i32 %272, -74636
  %274 = icmp eq i32 %273, 0, !mcsema_real_eip !90
  %_new_gep_152.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_143106.i18, i64 -60
  %275 = bitcast i8* %_new_gep_152.i to i32*
  store i32 %273, i32* %275, align 4, !mcsema_real_eip !91
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_154107.i19 = load i8*, i8** %73, align 8
  br i1 %274, label %block_0x24f.i, label %block_0x11b.i, !mcsema_real_eip !92

block_0x24f.i:                                    ; preds = %block_0x105.i
  %_new_gep_155.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_154107.i19, i64 -8
  %_allin_new_bt_156.i = bitcast i8* %_new_gep_155.i to i64*
  %276 = bitcast i8* %_new_gep_155.i to i32*
  %277 = load i32, i32* %276, align 4, !mcsema_real_eip !93
  %uadd76.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %277, i32 74636) #2
  %278 = extractvalue { i32, i1 } %uadd76.i, 0
  %279 = xor i32 %278, %277, !mcsema_real_eip !94
  %280 = and i32 %279, 16, !mcsema_real_eip !94
  %281 = icmp ne i32 %280, 0, !mcsema_real_eip !94
  %282 = xor i32 %277, -2147483648, !mcsema_real_eip !94
  %283 = and i32 %279, %282, !mcsema_real_eip !94
  %284 = icmp slt i32 %283, 0
  %285 = trunc i32 %278 to i8, !mcsema_real_eip !94
  %286 = tail call i8 @llvm.ctpop.i8(i8 %285) #2, !mcsema_real_eip !94
  %287 = extractvalue { i32, i1 } %uadd76.i, 1
  br label %sub_0.exit, !mcsema_real_eip !95

block_0x11b.i:                                    ; preds = %block_0x105.i
  %_new_gep_160.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_154107.i19, i64 -12
  %288 = bitcast i8* %_new_gep_160.i to i32*
  %289 = load i32, i32* %288, align 4, !mcsema_real_eip !96
  %290 = add i32 %289, -74637
  %291 = icmp eq i32 %290, 0, !mcsema_real_eip !97
  %_new_gep_163.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_154107.i19, i64 -64
  %292 = bitcast i8* %_new_gep_163.i to i32*
  store i32 %290, i32* %292, align 4, !mcsema_real_eip !98
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_165108.i20 = load i8*, i8** %73, align 8
  br i1 %291, label %block_0x25f.i, label %block_0x131.i, !mcsema_real_eip !99

block_0x25f.i:                                    ; preds = %block_0x11b.i
  %_new_gep_166.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_165108.i20, i64 -8
  %_allin_new_bt_167.i = bitcast i8* %_new_gep_166.i to i64*
  %293 = bitcast i8* %_new_gep_166.i to i32*
  %294 = load i32, i32* %293, align 4, !mcsema_real_eip !100
  %uadd75.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %294, i32 74637) #2
  %295 = extractvalue { i32, i1 } %uadd75.i, 0
  %296 = xor i32 %295, %294, !mcsema_real_eip !101
  %297 = and i32 %296, 16, !mcsema_real_eip !101
  %298 = icmp ne i32 %297, 0, !mcsema_real_eip !101
  %299 = xor i32 %294, -2147483648, !mcsema_real_eip !101
  %300 = and i32 %296, %299, !mcsema_real_eip !101
  %301 = icmp slt i32 %300, 0
  %302 = trunc i32 %295 to i8, !mcsema_real_eip !101
  %303 = tail call i8 @llvm.ctpop.i8(i8 %302) #2, !mcsema_real_eip !101
  %304 = extractvalue { i32, i1 } %uadd75.i, 1
  br label %sub_0.exit, !mcsema_real_eip !102

block_0x131.i:                                    ; preds = %block_0x11b.i
  %_new_gep_171.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_165108.i20, i64 -12
  %305 = bitcast i8* %_new_gep_171.i to i32*
  %306 = load i32, i32* %305, align 4, !mcsema_real_eip !103
  %307 = add i32 %306, -74639
  %308 = icmp eq i32 %307, 0, !mcsema_real_eip !104
  %_new_gep_174.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_165108.i20, i64 -68
  %309 = bitcast i8* %_new_gep_174.i to i32*
  store i32 %307, i32* %309, align 4, !mcsema_real_eip !105
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_176109.i21 = load i8*, i8** %73, align 8
  br i1 %308, label %block_0x26f.i, label %block_0x147.i, !mcsema_real_eip !106

block_0x26f.i:                                    ; preds = %block_0x131.i
  %_new_gep_177.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_176109.i21, i64 -8
  %_allin_new_bt_178.i = bitcast i8* %_new_gep_177.i to i64*
  %310 = bitcast i8* %_new_gep_177.i to i32*
  %311 = load i32, i32* %310, align 4, !mcsema_real_eip !107
  %uadd74.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %311, i32 74639) #2
  %312 = extractvalue { i32, i1 } %uadd74.i, 0
  %313 = xor i32 %312, %311, !mcsema_real_eip !108
  %314 = and i32 %313, 16, !mcsema_real_eip !108
  %315 = icmp ne i32 %314, 0, !mcsema_real_eip !108
  %316 = xor i32 %311, -2147483648, !mcsema_real_eip !108
  %317 = and i32 %313, %316, !mcsema_real_eip !108
  %318 = icmp slt i32 %317, 0
  %319 = trunc i32 %312 to i8, !mcsema_real_eip !108
  %320 = tail call i8 @llvm.ctpop.i8(i8 %319) #2, !mcsema_real_eip !108
  %321 = extractvalue { i32, i1 } %uadd74.i, 1
  br label %sub_0.exit, !mcsema_real_eip !109

block_0x147.i:                                    ; preds = %block_0x131.i
  %_new_gep_182.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_176109.i21, i64 -12
  %322 = bitcast i8* %_new_gep_182.i to i32*
  %323 = load i32, i32* %322, align 4, !mcsema_real_eip !110
  %324 = add i32 %323, -74640
  %325 = icmp eq i32 %324, 0, !mcsema_real_eip !111
  %_new_gep_185.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_176109.i21, i64 -72
  %326 = bitcast i8* %_new_gep_185.i to i32*
  store i32 %324, i32* %326, align 4, !mcsema_real_eip !112
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_187110.i22 = load i8*, i8** %73, align 8
  br i1 %325, label %block_0x27f.i, label %block_0x15d.i, !mcsema_real_eip !113

block_0x27f.i:                                    ; preds = %block_0x147.i
  %_new_gep_188.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_187110.i22, i64 -8
  %_allin_new_bt_189.i = bitcast i8* %_new_gep_188.i to i64*
  %327 = bitcast i8* %_new_gep_188.i to i32*
  %328 = load i32, i32* %327, align 4, !mcsema_real_eip !114
  %uadd73.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %328, i32 74640) #2
  %329 = extractvalue { i32, i1 } %uadd73.i, 0
  %330 = xor i32 %329, %328, !mcsema_real_eip !115
  %331 = and i32 %330, 16
  %332 = icmp eq i32 %331, 0
  %333 = xor i32 %328, -2147483648, !mcsema_real_eip !115
  %334 = and i32 %330, %333, !mcsema_real_eip !115
  %335 = icmp slt i32 %334, 0
  %336 = trunc i32 %329 to i8, !mcsema_real_eip !115
  %337 = tail call i8 @llvm.ctpop.i8(i8 %336) #2, !mcsema_real_eip !115
  %338 = extractvalue { i32, i1 } %uadd73.i, 1
  br label %sub_0.exit, !mcsema_real_eip !116

block_0x15d.i:                                    ; preds = %block_0x147.i
  %_new_gep_193.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_187110.i22, i64 -12
  %339 = bitcast i8* %_new_gep_193.i to i32*
  %340 = load i32, i32* %339, align 4, !mcsema_real_eip !117
  %341 = add i32 %340, -74641
  %342 = icmp eq i32 %341, 0, !mcsema_real_eip !118
  %_new_gep_196.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_187110.i22, i64 -76
  %343 = bitcast i8* %_new_gep_196.i to i32*
  store i32 %341, i32* %343, align 4, !mcsema_real_eip !119
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_198111.i23 = load i8*, i8** %73, align 8
  br i1 %342, label %block_0x28f.i, label %block_0x173.i, !mcsema_real_eip !120

block_0x28f.i:                                    ; preds = %block_0x15d.i
  %_new_gep_199.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_198111.i23, i64 -8
  %_allin_new_bt_200.i = bitcast i8* %_new_gep_199.i to i64*
  %344 = bitcast i8* %_new_gep_199.i to i32*
  %345 = load i32, i32* %344, align 4, !mcsema_real_eip !121
  %uadd72.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %345, i32 74641) #2
  %346 = extractvalue { i32, i1 } %uadd72.i, 0
  %347 = xor i32 %346, %345, !mcsema_real_eip !122
  %348 = and i32 %347, 16
  %349 = icmp eq i32 %348, 0
  %350 = xor i32 %345, -2147483648, !mcsema_real_eip !122
  %351 = and i32 %347, %350, !mcsema_real_eip !122
  %352 = icmp slt i32 %351, 0
  %353 = trunc i32 %346 to i8, !mcsema_real_eip !122
  %354 = tail call i8 @llvm.ctpop.i8(i8 %353) #2, !mcsema_real_eip !122
  %355 = extractvalue { i32, i1 } %uadd72.i, 1
  br label %sub_0.exit, !mcsema_real_eip !123

block_0x173.i:                                    ; preds = %block_0x15d.i
  %_new_gep_204.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_198111.i23, i64 -12
  %356 = bitcast i8* %_new_gep_204.i to i32*
  %357 = load i32, i32* %356, align 4, !mcsema_real_eip !124
  %358 = add i32 %357, -74642
  %359 = icmp eq i32 %358, 0, !mcsema_real_eip !125
  %_new_gep_207.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_198111.i23, i64 -80
  %360 = bitcast i8* %_new_gep_207.i to i32*
  store i32 %358, i32* %360, align 4, !mcsema_real_eip !126
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_209112.i24 = load i8*, i8** %73, align 8
  br i1 %359, label %block_0x29f.i, label %block_0x189.i, !mcsema_real_eip !127

block_0x29f.i:                                    ; preds = %block_0x173.i
  %_new_gep_210.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_209112.i24, i64 -8
  %_allin_new_bt_211.i = bitcast i8* %_new_gep_210.i to i64*
  %361 = bitcast i8* %_new_gep_210.i to i32*
  %362 = load i32, i32* %361, align 4, !mcsema_real_eip !128
  %uadd71.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %362, i32 74642) #2
  %363 = extractvalue { i32, i1 } %uadd71.i, 0
  %364 = xor i32 %363, %362, !mcsema_real_eip !129
  %365 = and i32 %364, 16
  %366 = icmp eq i32 %365, 0
  %367 = xor i32 %362, -2147483648, !mcsema_real_eip !129
  %368 = and i32 %364, %367, !mcsema_real_eip !129
  %369 = icmp slt i32 %368, 0
  %370 = trunc i32 %363 to i8, !mcsema_real_eip !129
  %371 = tail call i8 @llvm.ctpop.i8(i8 %370) #2, !mcsema_real_eip !129
  %372 = extractvalue { i32, i1 } %uadd71.i, 1
  br label %sub_0.exit, !mcsema_real_eip !130

block_0x189.i:                                    ; preds = %block_0x173.i
  %_new_gep_215.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_209112.i24, i64 -12
  %373 = bitcast i8* %_new_gep_215.i to i32*
  %374 = load i32, i32* %373, align 4, !mcsema_real_eip !131
  %375 = add i32 %374, -74643
  %376 = icmp eq i32 %375, 0, !mcsema_real_eip !132
  %_new_gep_218.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_209112.i24, i64 -84
  %377 = bitcast i8* %_new_gep_218.i to i32*
  store i32 %375, i32* %377, align 4, !mcsema_real_eip !133
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_220113.i25 = load i8*, i8** %73, align 8
  %_new_gep_221.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_220113.i25, i64 -8
  %_allin_new_bt_222.i = bitcast i8* %_new_gep_221.i to i64*
  %378 = bitcast i8* %_new_gep_221.i to i32*
  %379 = load i32, i32* %378, align 4, !mcsema_real_eip !134
  br i1 %376, label %block_0x2af.i, label %block_0x2bf.i, !mcsema_real_eip !135

block_0x2af.i:                                    ; preds = %block_0x189.i
  %uadd.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %379, i32 74643) #2
  %380 = extractvalue { i32, i1 } %uadd.i, 0
  %381 = xor i32 %380, %379, !mcsema_real_eip !136
  %382 = and i32 %381, 16
  %383 = icmp eq i32 %382, 0
  %384 = xor i32 %379, -2147483648, !mcsema_real_eip !136
  %385 = and i32 %381, %384, !mcsema_real_eip !136
  %386 = icmp slt i32 %385, 0
  %387 = trunc i32 %380 to i8, !mcsema_real_eip !136
  %388 = tail call i8 @llvm.ctpop.i8(i8 %387) #2, !mcsema_real_eip !136
  %389 = extractvalue { i32, i1 } %uadd.i, 1
  br label %sub_0.exit, !mcsema_real_eip !137

block_0x2bf.i:                                    ; preds = %block_0x189.i
  %390 = trunc i32 %379 to i8, !mcsema_real_eip !138
  %391 = tail call i8 @llvm.ctpop.i8(i8 %390) #2, !mcsema_real_eip !138
  br label %sub_0.exit

sub_0.exit:                                       ; preds = %block_0x19f.i, %block_0x1ad.i, %block_0x1bb.i, %block_0x1c9.i, %block_0x1d7.i, %block_0x1e5.i, %block_0x1f3.i, %block_0x201.i, %block_0x20f.i, %block_0x21f.i, %block_0x22f.i, %block_0x23f.i, %block_0x24f.i, %block_0x25f.i, %block_0x26f.i, %block_0x27f.i, %block_0x28f.i, %block_0x29f.i, %block_0x2af.i, %block_0x2bf.i
  %ZF_val.0.in.i = phi i32 [ %81, %block_0x19f.i ], [ %91, %block_0x1ad.i ], [ %108, %block_0x1bb.i ], [ %125, %block_0x1c9.i ], [ %142, %block_0x1d7.i ], [ %159, %block_0x1e5.i ], [ %176, %block_0x1f3.i ], [ %193, %block_0x201.i ], [ %210, %block_0x20f.i ], [ %227, %block_0x21f.i ], [ %244, %block_0x22f.i ], [ %261, %block_0x23f.i ], [ %278, %block_0x24f.i ], [ %295, %block_0x25f.i ], [ %312, %block_0x26f.i ], [ %329, %block_0x27f.i ], [ %346, %block_0x28f.i ], [ %363, %block_0x29f.i ], [ %380, %block_0x2af.i ], [ %379, %block_0x2bf.i ]
  %PF_val.0.in.in.i = phi i8 [ %83, %block_0x19f.i ], [ %99, %block_0x1ad.i ], [ %116, %block_0x1bb.i ], [ %133, %block_0x1c9.i ], [ %150, %block_0x1d7.i ], [ %167, %block_0x1e5.i ], [ %184, %block_0x1f3.i ], [ %201, %block_0x201.i ], [ %218, %block_0x20f.i ], [ %235, %block_0x21f.i ], [ %252, %block_0x22f.i ], [ %269, %block_0x23f.i ], [ %286, %block_0x24f.i ], [ %303, %block_0x25f.i ], [ %320, %block_0x26f.i ], [ %337, %block_0x27f.i ], [ %354, %block_0x28f.i ], [ %371, %block_0x29f.i ], [ %388, %block_0x2af.i ], [ %391, %block_0x2bf.i ]
  %AF_val.0.i = phi i1 [ false, %block_0x19f.i ], [ %94, %block_0x1ad.i ], [ %111, %block_0x1bb.i ], [ %128, %block_0x1c9.i ], [ %145, %block_0x1d7.i ], [ %162, %block_0x1e5.i ], [ %179, %block_0x1f3.i ], [ %196, %block_0x201.i ], [ %213, %block_0x20f.i ], [ %230, %block_0x21f.i ], [ %247, %block_0x22f.i ], [ %264, %block_0x23f.i ], [ %281, %block_0x24f.i ], [ %298, %block_0x25f.i ], [ %315, %block_0x26f.i ], [ %332, %block_0x27f.i ], [ %349, %block_0x28f.i ], [ %366, %block_0x29f.i ], [ %383, %block_0x2af.i ], [ false, %block_0x2bf.i ]
  %CF_val.0.i = phi i1 [ false, %block_0x19f.i ], [ %100, %block_0x1ad.i ], [ %117, %block_0x1bb.i ], [ %134, %block_0x1c9.i ], [ %151, %block_0x1d7.i ], [ %168, %block_0x1e5.i ], [ %185, %block_0x1f3.i ], [ %202, %block_0x201.i ], [ %219, %block_0x20f.i ], [ %236, %block_0x21f.i ], [ %253, %block_0x22f.i ], [ %270, %block_0x23f.i ], [ %287, %block_0x24f.i ], [ %304, %block_0x25f.i ], [ %321, %block_0x26f.i ], [ %338, %block_0x27f.i ], [ %355, %block_0x28f.i ], [ %372, %block_0x29f.i ], [ %389, %block_0x2af.i ], [ false, %block_0x2bf.i ]
  %OF_val.0.i = phi i1 [ false, %block_0x19f.i ], [ %97, %block_0x1ad.i ], [ %114, %block_0x1bb.i ], [ %131, %block_0x1c9.i ], [ %148, %block_0x1d7.i ], [ %165, %block_0x1e5.i ], [ %182, %block_0x1f3.i ], [ %199, %block_0x201.i ], [ %216, %block_0x20f.i ], [ %233, %block_0x21f.i ], [ %250, %block_0x22f.i ], [ %267, %block_0x23f.i ], [ %284, %block_0x24f.i ], [ %301, %block_0x25f.i ], [ %318, %block_0x26f.i ], [ %335, %block_0x27f.i ], [ %352, %block_0x28f.i ], [ %369, %block_0x29f.i ], [ %386, %block_0x2af.i ], [ false, %block_0x2bf.i ]
  %_allin_new_bt_228.sink.i = phi i64* [ %_allin_new_bt_14.i, %block_0x19f.i ], [ %_allin_new_bt_35.i, %block_0x1ad.i ], [ %_allin_new_bt_46.i, %block_0x1bb.i ], [ %_allin_new_bt_57.i, %block_0x1c9.i ], [ %_allin_new_bt_68.i, %block_0x1d7.i ], [ %_allin_new_bt_79.i, %block_0x1e5.i ], [ %_allin_new_bt_90.i, %block_0x1f3.i ], [ %_allin_new_bt_101.i, %block_0x201.i ], [ %_allin_new_bt_112.i, %block_0x20f.i ], [ %_allin_new_bt_123.i, %block_0x21f.i ], [ %_allin_new_bt_134.i, %block_0x22f.i ], [ %_allin_new_bt_145.i, %block_0x23f.i ], [ %_allin_new_bt_156.i, %block_0x24f.i ], [ %_allin_new_bt_167.i, %block_0x25f.i ], [ %_allin_new_bt_178.i, %block_0x26f.i ], [ %_allin_new_bt_189.i, %block_0x27f.i ], [ %_allin_new_bt_200.i, %block_0x28f.i ], [ %_allin_new_bt_211.i, %block_0x29f.i ], [ %_allin_new_bt_222.i, %block_0x2af.i ], [ %_allin_new_bt_222.i, %block_0x2bf.i ]
  %PF_val.0.in.i = and i8 %PF_val.0.in.in.i, 1
  %SF_val.0.i = icmp slt i32 %ZF_val.0.in.i, 0
  %PF_val.0.i = icmp eq i8 %PF_val.0.in.i, 0
  %ZF_val.0.i = icmp eq i32 %ZF_val.0.in.i, 0
  %392 = bitcast i64* %_allin_new_bt_228.sink.i to i32*
  store i32 %ZF_val.0.in.i, i32* %392, align 4
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_18114.i26 = load i8*, i8** %73, align 8
  %_new_gep_19.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_18114.i26, i64 -8
  %393 = bitcast i8* %_new_gep_19.i to i32*
  %394 = load i32, i32* %393, align 4, !mcsema_real_eip !139
  %395 = zext i32 %394 to i64, !mcsema_real_eip !139
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_21115.i27 = load i8*, i8** %69, align 8
  %_allin_new_bt_22.i = bitcast i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_21115.i27 to i64*
  %396 = load i64, i64* %_allin_new_bt_22.i, align 8
  store volatile i64 %396, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_23.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_21115.i27, i64 16
  %397 = ptrtoint i8* %_new_gep_23.i to i64
  store volatile i64 %397, i64* %_RSP_ptr_.sroa.0.i, align 8
  store i64 %395, i64* %RAX.i, align 8, !mcsema_real_eip !140
  %398 = bitcast i64* %RBX.i to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %398, align 8
  %399 = bitcast i64* %RDX.i to <2 x i64>*
  store <2 x i64> %6, <2 x i64>* %399, align 8
  store i64 %77, i64* %RDI.i, align 8, !mcsema_real_eip !140
  store volatile i64 %397, i64* %RSP.i, align 8
  store volatile i64 %396, i64* %RBP.i, align 8
  %400 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %400, align 8
  %401 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %401, align 8
  %402 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %402, align 8
  %403 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %403, align 8
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !140
  store i1 %CF_val.0.i, i1* %CF.i, align 1, !mcsema_real_eip !140
  store i1 %PF_val.0.i, i1* %PF.i, align 1, !mcsema_real_eip !140
  store i1 %AF_val.0.i, i1* %AF.i, align 1, !mcsema_real_eip !140
  store i1 %ZF_val.0.i, i1* %ZF.i, align 1, !mcsema_real_eip !140
  store i1 %SF_val.0.i, i1* %SF.i, align 1, !mcsema_real_eip !140
  store i1 %OF_val.0.i, i1* %OF.i, align 1, !mcsema_real_eip !140
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !140
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !140
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !140
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !140
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !140
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !140
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !140
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !140
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !140
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !140
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !140
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !140
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !140
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !140
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !140
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !140
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !140
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !140
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !140
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !140
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !140
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !140
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !140
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !140
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !140
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !140
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !140
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !140
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !140
  store i11 %50, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !140
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !140
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !140
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !140
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !140
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !140
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !140
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !140
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !140
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !140
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !140
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !140
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !140
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !140
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !140
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !140
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !140
  %404 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %68, <2 x i64>* %404, align 1
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 92, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

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
!4 = !{i64 7}
!5 = !{i64 14}
!6 = !{i64 17}
!7 = !{i64 19}
!8 = !{i64 22}
!9 = !{i64 415}
!10 = !{i64 418}
!11 = !{i64 424}
!12 = !{i64 33}
!13 = !{i64 36}
!14 = !{i64 39}
!15 = !{i64 42}
!16 = !{i64 429}
!17 = !{i64 432}
!18 = !{i64 438}
!19 = !{i64 53}
!20 = !{i64 56}
!21 = !{i64 59}
!22 = !{i64 62}
!23 = !{i64 443}
!24 = !{i64 446}
!25 = !{i64 452}
!26 = !{i64 73}
!27 = !{i64 76}
!28 = !{i64 79}
!29 = !{i64 82}
!30 = !{i64 457}
!31 = !{i64 460}
!32 = !{i64 466}
!33 = !{i64 93}
!34 = !{i64 96}
!35 = !{i64 99}
!36 = !{i64 102}
!37 = !{i64 471}
!38 = !{i64 474}
!39 = !{i64 480}
!40 = !{i64 113}
!41 = !{i64 116}
!42 = !{i64 119}
!43 = !{i64 122}
!44 = !{i64 485}
!45 = !{i64 488}
!46 = !{i64 494}
!47 = !{i64 133}
!48 = !{i64 136}
!49 = !{i64 139}
!50 = !{i64 142}
!51 = !{i64 499}
!52 = !{i64 502}
!53 = !{i64 508}
!54 = !{i64 153}
!55 = !{i64 156}
!56 = !{i64 159}
!57 = !{i64 162}
!58 = !{i64 513}
!59 = !{i64 516}
!60 = !{i64 522}
!61 = !{i64 173}
!62 = !{i64 176}
!63 = !{i64 181}
!64 = !{i64 184}
!65 = !{i64 527}
!66 = !{i64 530}
!67 = !{i64 538}
!68 = !{i64 195}
!69 = !{i64 198}
!70 = !{i64 203}
!71 = !{i64 206}
!72 = !{i64 543}
!73 = !{i64 546}
!74 = !{i64 554}
!75 = !{i64 217}
!76 = !{i64 220}
!77 = !{i64 225}
!78 = !{i64 228}
!79 = !{i64 559}
!80 = !{i64 562}
!81 = !{i64 570}
!82 = !{i64 239}
!83 = !{i64 242}
!84 = !{i64 247}
!85 = !{i64 250}
!86 = !{i64 575}
!87 = !{i64 578}
!88 = !{i64 586}
!89 = !{i64 261}
!90 = !{i64 264}
!91 = !{i64 269}
!92 = !{i64 272}
!93 = !{i64 591}
!94 = !{i64 594}
!95 = !{i64 602}
!96 = !{i64 283}
!97 = !{i64 286}
!98 = !{i64 291}
!99 = !{i64 294}
!100 = !{i64 607}
!101 = !{i64 610}
!102 = !{i64 618}
!103 = !{i64 305}
!104 = !{i64 308}
!105 = !{i64 313}
!106 = !{i64 316}
!107 = !{i64 623}
!108 = !{i64 626}
!109 = !{i64 634}
!110 = !{i64 327}
!111 = !{i64 330}
!112 = !{i64 335}
!113 = !{i64 338}
!114 = !{i64 639}
!115 = !{i64 642}
!116 = !{i64 650}
!117 = !{i64 349}
!118 = !{i64 352}
!119 = !{i64 357}
!120 = !{i64 360}
!121 = !{i64 655}
!122 = !{i64 658}
!123 = !{i64 666}
!124 = !{i64 371}
!125 = !{i64 374}
!126 = !{i64 379}
!127 = !{i64 382}
!128 = !{i64 671}
!129 = !{i64 674}
!130 = !{i64 682}
!131 = !{i64 393}
!132 = !{i64 396}
!133 = !{i64 401}
!134 = !{i64 687}
!135 = !{i64 404}
!136 = !{i64 690}
!137 = !{i64 698}
!138 = !{i64 706}
!139 = !{i64 712}
!140 = !{i64 716}
