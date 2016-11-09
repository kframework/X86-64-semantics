; ModuleID = 'Output/test_13_1.clang.trans.opt.bc'
source_filename = "Output/test_13_1.clang.bc"
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
  %_local_stack_start_ptr_80.i = alloca [24 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %_RSP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [24 x i8], [24 x i8]* %_local_stack_start_ptr_80.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 24, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [24 x i8], [24 x i8]* %_local_stack_start_ptr_80.i, i64 0, i64 24
  %2 = ptrtoint i8* %_local_stack_end_ptr_.i to i64
  store i64 %2, i64* %_RSP_ptr_.sroa.0.i, align 8
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %3 = load i64, i64* %RAX.i, align 8, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %4 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %5 = load i64, i64* %RCX.i, align 8, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %6 = load i64, i64* %RDX.i, align 8, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %7 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %8 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %9 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %10 = load i64, i64* %R8.i, align 8, !mcsema_real_eip !2
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %11 = load i64, i64* %R9.i, align 8, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %12 = load i64, i64* %R10.i, align 8, !mcsema_real_eip !2
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %13 = load i64, i64* %R11.i, align 8, !mcsema_real_eip !2
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %14 = load i64, i64* %R12.i, align 8, !mcsema_real_eip !2
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %15 = load i64, i64* %R13.i, align 8, !mcsema_real_eip !2
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %16 = load i64, i64* %R14.i, align 8, !mcsema_real_eip !2
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %17 = load i64, i64* %R15.i, align 8, !mcsema_real_eip !2
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %18 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %19 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !2
  %20 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %21 = bitcast x86_fp80* %20 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %21, i32 128, i32 4, i1 false) #2, !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %24 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %35 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %36 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %37 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %38 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %39 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %40 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %41 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %42 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %43 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %44 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %45 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %46 = bitcast i8* %45 to i64*
  %47 = load i64, i64* %46, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %48 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %49 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %50 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %51 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %52 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %63 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %64 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %65 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %66 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %67 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %68 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %69 = load i64, i64* %STACK_BASE.i, align 8, !mcsema_real_eip !2
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %70 = load i64, i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !2
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_81.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  %71 = bitcast i64* %_RSP_ptr_.sroa.0.i to i8**
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_86.i4 = load i8*, i8** %71, align 8
  %_new_gep_.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_86.i4, i64 -8
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_81.i, i64* %_allin_new_bt_.i, align 8
  %72 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %72, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_86.i4, i64 -24
  %73 = ptrtoint i8* %_new_gep_1.i to i64
  store volatile i64 %73, i64* %_RSP_ptr_.sroa.0.i, align 8
  %_new_gep_11.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_86.i4, i64 -12
  %74 = bitcast i8* %_new_gep_11.i to i32*
  store i32 0, i32* %74, align 4
  %75 = bitcast i64* %_RBP_ptr_.sroa.0.i to i8**
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_1387.i5 = load i8*, i8** %75, align 8
  %_new_gep_14.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_1387.i5, i64 -4
  %76 = bitcast i8* %_new_gep_14.i to i32*
  %77 = load i32, i32* %76, align 4, !mcsema_real_eip !3
  %78 = add i32 %77, -2
  %79 = xor i32 %78, %77, !mcsema_real_eip !3
  %80 = icmp slt i32 %78, 0
  %81 = and i32 %79, %77, !mcsema_real_eip !3
  %82 = icmp slt i32 %81, 0
  %tmp.i = xor i1 %80, %82
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_16.i = load i64, i64* %_RSP_ptr_.sroa.0.i, align 8
  br i1 %tmp.i, label %block_0x2c.i, label %sub_10.exit, !mcsema_real_eip !4

block_0x2c.i:                                     ; preds = %driverBlockRaw
  %83 = inttoptr i64 %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_16.i to i8*
  %84 = icmp ult i32 %77, 2, !mcsema_real_eip !3
  %85 = icmp eq i32 %78, 0, !mcsema_real_eip !3
  %86 = trunc i32 %78 to i8, !mcsema_real_eip !3
  %87 = tail call i8 @llvm.ctpop.i8(i8 %86) #2, !mcsema_real_eip !3
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  %90 = and i32 %79, 16, !mcsema_real_eip !3
  %91 = icmp ne i32 %90, 0, !mcsema_real_eip !3
  %_new_gep_17.i = getelementptr i8, i8* %83, i64 -8
  %_allin_new_bt_18.i = bitcast i8* %_new_gep_17.i to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_18.i, align 8, !mcsema_real_eip !5
  %92 = ptrtoint i8* %_new_gep_17.i to i64
  store volatile i64 %92, i64* %_RSP_ptr_.sroa.0.i, align 8
  store i64 %3, i64* %RAX.i, align 8, !mcsema_real_eip !5
  store i64 %4, i64* %RBX.i, align 8, !mcsema_real_eip !5
  store i64 %5, i64* %RCX.i, align 8, !mcsema_real_eip !5
  store i64 %6, i64* %RDX.i, align 8, !mcsema_real_eip !5
  store i64 %7, i64* %RSI.i, align 8, !mcsema_real_eip !5
  store i64 %8, i64* %RDI.i, align 8, !mcsema_real_eip !5
  store volatile i64 %92, i64* %RSP.i, align 8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2185.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2185.i, i64* %RBP.i, align 8
  store i64 %10, i64* %R8.i, align 8, !mcsema_real_eip !5
  store i64 %11, i64* %R9.i, align 8, !mcsema_real_eip !5
  store i64 %12, i64* %R10.i, align 8, !mcsema_real_eip !5
  store i64 %13, i64* %R11.i, align 8, !mcsema_real_eip !5
  store i64 %14, i64* %R12.i, align 8, !mcsema_real_eip !5
  store i64 %15, i64* %R13.i, align 8, !mcsema_real_eip !5
  store i64 %16, i64* %R14.i, align 8, !mcsema_real_eip !5
  store i64 %17, i64* %R15.i, align 8, !mcsema_real_eip !5
  store i64 %18, i64* %RIP.i, align 8, !mcsema_real_eip !5
  store i1 %84, i1* %CF.i, align 1, !mcsema_real_eip !5
  store i1 %89, i1* %PF.i, align 1, !mcsema_real_eip !5
  store i1 %91, i1* %AF.i, align 1, !mcsema_real_eip !5
  store i1 %85, i1* %ZF.i, align 1, !mcsema_real_eip !5
  store i1 %80, i1* %SF.i, align 1, !mcsema_real_eip !5
  store i1 %82, i1* %OF.i, align 1, !mcsema_real_eip !5
  store i1 %19, i1* %DF.i, align 1, !mcsema_real_eip !5
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %21, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !5
  store i1 %22, i1* %FPU_B.i, align 1, !mcsema_real_eip !5
  store i1 %23, i1* %FPU_C3.i, align 1, !mcsema_real_eip !5
  store i3 %24, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !5
  store i1 %25, i1* %FPU_C2.i, align 1, !mcsema_real_eip !5
  store i1 %26, i1* %FPU_C1.i, align 1, !mcsema_real_eip !5
  store i1 %27, i1* %FPU_C0.i, align 1, !mcsema_real_eip !5
  store i1 %28, i1* %FPU_ES.i, align 1, !mcsema_real_eip !5
  store i1 %29, i1* %FPU_SF.i, align 1, !mcsema_real_eip !5
  store i1 %30, i1* %FPU_PE.i, align 1, !mcsema_real_eip !5
  store i1 %31, i1* %FPU_UE.i, align 1, !mcsema_real_eip !5
  store i1 %32, i1* %FPU_OE.i, align 1, !mcsema_real_eip !5
  store i1 %33, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !5
  store i1 %34, i1* %FPU_DE.i, align 1, !mcsema_real_eip !5
  store i1 %35, i1* %FPU_IE.i, align 1, !mcsema_real_eip !5
  store i1 %36, i1* %FPU_X.i, align 1, !mcsema_real_eip !5
  store i2 %37, i2* %FPU_RC.i, align 1, !mcsema_real_eip !5
  store i2 %38, i2* %FPU_PC.i, align 1, !mcsema_real_eip !5
  store i1 %39, i1* %FPU_PM.i, align 1, !mcsema_real_eip !5
  store i1 %40, i1* %FPU_UM.i, align 1, !mcsema_real_eip !5
  store i1 %41, i1* %FPU_OM.i, align 1, !mcsema_real_eip !5
  store i1 %42, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !5
  store i1 %43, i1* %FPU_DM.i, align 1, !mcsema_real_eip !5
  store i1 %44, i1* %FPU_IM.i, align 1, !mcsema_real_eip !5
  store i64 %47, i64* %46, align 4
  store i16 %48, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !5
  store i64 %49, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !5
  store i16 %50, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !5
  store i64 %51, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !5
  store i11 %52, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !5
  store i128 %53, i128* %XMM0.i, align 1, !mcsema_real_eip !5
  store i128 %54, i128* %XMM1.i, align 1, !mcsema_real_eip !5
  store i128 %55, i128* %XMM2.i, align 1, !mcsema_real_eip !5
  store i128 %56, i128* %XMM3.i, align 1, !mcsema_real_eip !5
  store i128 %57, i128* %XMM4.i, align 1, !mcsema_real_eip !5
  store i128 %58, i128* %XMM5.i, align 1, !mcsema_real_eip !5
  store i128 %59, i128* %XMM6.i, align 1, !mcsema_real_eip !5
  store i128 %60, i128* %XMM7.i, align 1, !mcsema_real_eip !5
  store i128 %61, i128* %XMM8.i, align 1, !mcsema_real_eip !5
  store i128 %62, i128* %XMM9.i, align 1, !mcsema_real_eip !5
  store i128 %63, i128* %XMM10.i, align 1, !mcsema_real_eip !5
  store i128 %64, i128* %XMM11.i, align 1, !mcsema_real_eip !5
  store i128 %65, i128* %XMM12.i, align 1, !mcsema_real_eip !5
  store i128 %66, i128* %XMM13.i, align 1, !mcsema_real_eip !5
  store i128 %67, i128* %XMM14.i, align 1, !mcsema_real_eip !5
  store i128 %68, i128* %XMM15.i, align 1, !mcsema_real_eip !5
  store i64 %69, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !5
  store i64 %70, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !5
  call void @llvm.trap() #2
  unreachable

sub_10.exit:                                      ; preds = %driverBlockRaw
  %93 = add i64 %9, -24
  %uadd211.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %93, i64 16) #2
  %94 = extractvalue { i64, i1 } %uadd211.i, 0
  %_trans_xor_30.i = xor i64 %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_16.i, %94
  %95 = and i64 %_trans_xor_30.i, 16
  %96 = icmp eq i64 %95, 0
  %97 = icmp slt i64 %94, 0
  %98 = icmp eq i64 %94, 0, !mcsema_real_eip !6
  %_trans_xor_32.i = xor i64 %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_16.i, -9223372036854775808
  %99 = and i64 %_trans_xor_30.i, %_trans_xor_32.i, !mcsema_real_eip !6
  %100 = icmp slt i64 %99, 0
  %101 = trunc i64 %94 to i8, !mcsema_real_eip !6
  %102 = tail call i8 @llvm.ctpop.i8(i8 %101) #2, !mcsema_real_eip !6
  %103 = and i8 %102, 1
  %104 = icmp eq i8 %103, 0
  %105 = extractvalue { i64, i1 } %uadd211.i, 1
  store volatile i64 %94, i64* %_RSP_ptr_.sroa.0.i, align 8
  %106 = inttoptr i64 %94 to i64*, !mcsema_real_eip !7
  %107 = load i64, i64* %106, align 8
  store volatile i64 %107, i64* %_RBP_ptr_.sroa.0.i, align 8
  %108 = add i64 %94, 16
  store volatile i64 %108, i64* %_RSP_ptr_.sroa.0.i, align 8
  store i64 %3, i64* %RAX.i, align 8, !mcsema_real_eip !8
  store i64 %4, i64* %RBX.i, align 8, !mcsema_real_eip !8
  store i64 %5, i64* %RCX.i, align 8, !mcsema_real_eip !8
  store i64 %6, i64* %RDX.i, align 8, !mcsema_real_eip !8
  store i64 %7, i64* %RSI.i, align 8, !mcsema_real_eip !8
  store i64 %8, i64* %RDI.i, align 8, !mcsema_real_eip !8
  store volatile i64 %108, i64* %RSP.i, align 8
  store volatile i64 %107, i64* %RBP.i, align 8
  store i64 %10, i64* %R8.i, align 8, !mcsema_real_eip !8
  store i64 %11, i64* %R9.i, align 8, !mcsema_real_eip !8
  store i64 %12, i64* %R10.i, align 8, !mcsema_real_eip !8
  store i64 %13, i64* %R11.i, align 8, !mcsema_real_eip !8
  store i64 %14, i64* %R12.i, align 8, !mcsema_real_eip !8
  store i64 %15, i64* %R13.i, align 8, !mcsema_real_eip !8
  store i64 %16, i64* %R14.i, align 8, !mcsema_real_eip !8
  store i64 %17, i64* %R15.i, align 8, !mcsema_real_eip !8
  store i64 %18, i64* %RIP.i, align 8, !mcsema_real_eip !8
  store i1 %105, i1* %CF.i, align 1, !mcsema_real_eip !8
  store i1 %104, i1* %PF.i, align 1, !mcsema_real_eip !8
  store i1 %96, i1* %AF.i, align 1, !mcsema_real_eip !8
  store i1 %98, i1* %ZF.i, align 1, !mcsema_real_eip !8
  store i1 %97, i1* %SF.i, align 1, !mcsema_real_eip !8
  store i1 %100, i1* %OF.i, align 1, !mcsema_real_eip !8
  store i1 %19, i1* %DF.i, align 1, !mcsema_real_eip !8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %21, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !8
  store i1 %22, i1* %FPU_B.i, align 1, !mcsema_real_eip !8
  store i1 %23, i1* %FPU_C3.i, align 1, !mcsema_real_eip !8
  store i3 %24, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !8
  store i1 %25, i1* %FPU_C2.i, align 1, !mcsema_real_eip !8
  store i1 %26, i1* %FPU_C1.i, align 1, !mcsema_real_eip !8
  store i1 %27, i1* %FPU_C0.i, align 1, !mcsema_real_eip !8
  store i1 %28, i1* %FPU_ES.i, align 1, !mcsema_real_eip !8
  store i1 %29, i1* %FPU_SF.i, align 1, !mcsema_real_eip !8
  store i1 %30, i1* %FPU_PE.i, align 1, !mcsema_real_eip !8
  store i1 %31, i1* %FPU_UE.i, align 1, !mcsema_real_eip !8
  store i1 %32, i1* %FPU_OE.i, align 1, !mcsema_real_eip !8
  store i1 %33, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !8
  store i1 %34, i1* %FPU_DE.i, align 1, !mcsema_real_eip !8
  store i1 %35, i1* %FPU_IE.i, align 1, !mcsema_real_eip !8
  store i1 %36, i1* %FPU_X.i, align 1, !mcsema_real_eip !8
  store i2 %37, i2* %FPU_RC.i, align 1, !mcsema_real_eip !8
  store i2 %38, i2* %FPU_PC.i, align 1, !mcsema_real_eip !8
  store i1 %39, i1* %FPU_PM.i, align 1, !mcsema_real_eip !8
  store i1 %40, i1* %FPU_UM.i, align 1, !mcsema_real_eip !8
  store i1 %41, i1* %FPU_OM.i, align 1, !mcsema_real_eip !8
  store i1 %42, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !8
  store i1 %43, i1* %FPU_DM.i, align 1, !mcsema_real_eip !8
  store i1 %44, i1* %FPU_IM.i, align 1, !mcsema_real_eip !8
  store i64 %47, i64* %46, align 4
  store i16 %48, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !8
  store i64 %49, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !8
  store i16 %50, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !8
  store i64 %51, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !8
  store i11 %52, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !8
  store i128 %53, i128* %XMM0.i, align 1, !mcsema_real_eip !8
  store i128 %54, i128* %XMM1.i, align 1, !mcsema_real_eip !8
  store i128 %55, i128* %XMM2.i, align 1, !mcsema_real_eip !8
  store i128 %56, i128* %XMM3.i, align 1, !mcsema_real_eip !8
  store i128 %57, i128* %XMM4.i, align 1, !mcsema_real_eip !8
  store i128 %58, i128* %XMM5.i, align 1, !mcsema_real_eip !8
  store i128 %59, i128* %XMM6.i, align 1, !mcsema_real_eip !8
  store i128 %60, i128* %XMM7.i, align 1, !mcsema_real_eip !8
  store i128 %61, i128* %XMM8.i, align 1, !mcsema_real_eip !8
  store i128 %62, i128* %XMM9.i, align 1, !mcsema_real_eip !8
  store i128 %63, i128* %XMM10.i, align 1, !mcsema_real_eip !8
  store i128 %64, i128* %XMM11.i, align 1, !mcsema_real_eip !8
  store i128 %65, i128* %XMM12.i, align 1, !mcsema_real_eip !8
  store i128 %66, i128* %XMM13.i, align 1, !mcsema_real_eip !8
  store i128 %67, i128* %XMM14.i, align 1, !mcsema_real_eip !8
  store i128 %68, i128* %XMM15.i, align 1, !mcsema_real_eip !8
  store i64 %69, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !8
  store i64 %70, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !8
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #0

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 16}
!3 = !{i64 31}
!4 = !{i64 38}
!5 = !{i64 44}
!6 = !{i64 65}
!7 = !{i64 69}
!8 = !{i64 70}
