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
  %_RSP_ptr_159.sroa.0.i = alloca i64, align 8
  %_RBP_ptr_160.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_161.i = alloca [92 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %_RSP_ptr_159.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_159.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_159.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_160.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_160.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_160.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_161.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 92, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_161.i, i64 0, i64 92
  %2 = ptrtoint i8* %_local_stack_end_ptr_.i to i64
  store i64 %2, i64* %_RSP_ptr_159.sroa.0.i, align 8
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %3 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %4 = load i64, i64* %RCX.i, align 8, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %5 = load i64, i64* %RDX.i, align 8, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %6 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %7 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %8 = load i64, i64* %R8.i, align 8, !mcsema_real_eip !2
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %9 = load i64, i64* %R9.i, align 8, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %10 = load i64, i64* %R10.i, align 8, !mcsema_real_eip !2
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %11 = load i64, i64* %R11.i, align 8, !mcsema_real_eip !2
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %12 = load i64, i64* %R12.i, align 8, !mcsema_real_eip !2
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %13 = load i64, i64* %R13.i, align 8, !mcsema_real_eip !2
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %14 = load i64, i64* %R14.i, align 8, !mcsema_real_eip !2
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %15 = load i64, i64* %R15.i, align 8, !mcsema_real_eip !2
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
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %63 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %64 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %65 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %66 = load i64, i64* %STACK_BASE.i, align 8, !mcsema_real_eip !2
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %67 = load i64, i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !2
  %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_162.i = load i64, i64* %_RBP_ptr_160.sroa.0.i, align 8
  %68 = bitcast i64* %_RSP_ptr_159.sroa.0.i to i8**
  %_RSP_ptr_159.sroa.0.i.0._RSP_ptr_159.sroa.0.0._RSP_ptr_159.sroa.0.0._load_rsp_ptr_167.i7 = load i8*, i8** %68, align 8
  %_new_gep_.i = getelementptr i8, i8* %_RSP_ptr_159.sroa.0.i.0._RSP_ptr_159.sroa.0.0._RSP_ptr_159.sroa.0.0._load_rsp_ptr_167.i7, i64 -8
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_162.i, i64* %_allin_new_bt_.i, align 8
  %69 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %69, i64* %_RSP_ptr_159.sroa.0.i, align 8
  store volatile i64 %69, i64* %_RBP_ptr_160.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr i8, i8* %_RSP_ptr_159.sroa.0.i.0._RSP_ptr_159.sroa.0.0._RSP_ptr_159.sroa.0.0._load_rsp_ptr_167.i7, i64 -12
  %70 = trunc i64 %7 to i32, !mcsema_real_eip !3
  %71 = bitcast i8* %_new_gep_1.i to i32*
  store i32 %70, i32* %71, align 4, !mcsema_real_eip !3
  %72 = bitcast i64* %_RBP_ptr_160.sroa.0.i to i8**
  %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_3168.i8 = load i8*, i8** %72, align 8
  %_new_gep_4.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_3168.i8, i64 -8
  %73 = bitcast i8* %_new_gep_4.i to i32*
  store i32 0, i32* %73, align 4, !mcsema_real_eip !4
  %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_6169.i9 = load i8*, i8** %72, align 8
  %_new_gep_7.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_6169.i9, i64 -4
  %74 = bitcast i8* %_new_gep_7.i to i32*
  %75 = load i32, i32* %74, align 4, !mcsema_real_eip !5
  %76 = zext i32 %75 to i64, !mcsema_real_eip !5
  %77 = icmp eq i32 %75, 0, !mcsema_real_eip !6
  %_new_gep_10.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_6169.i9, i64 -12
  %78 = bitcast i8* %_new_gep_10.i to i32*
  store i32 %75, i32* %78, align 4, !mcsema_real_eip !7
  %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_12170.i10 = load i8*, i8** %72, align 8
  br i1 %77, label %block_0x19f.i, label %block_0x21.i, !mcsema_real_eip !8

block_0x19f.i:                                    ; preds = %driverBlockRaw
  %_new_gep_13.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_12170.i10, i64 -8
  %79 = bitcast i8* %_new_gep_13.i to i32*
  %80 = load i32, i32* %79, align 4, !mcsema_real_eip !9
  %81 = trunc i32 %80 to i8, !mcsema_real_eip !10
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81) #2, !mcsema_real_eip !10
  br label %block_0x2c8.i, !mcsema_real_eip !11

block_0x21.i:                                     ; preds = %driverBlockRaw
  %_new_gep_18.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_12170.i10, i64 -12
  %83 = bitcast i8* %_new_gep_18.i to i32*
  %84 = load i32, i32* %83, align 4, !mcsema_real_eip !12
  %85 = add i32 %84, -1
  %86 = icmp eq i32 %85, 0, !mcsema_real_eip !13
  %_new_gep_21.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_12170.i10, i64 -16
  %87 = bitcast i8* %_new_gep_21.i to i32*
  store i32 %85, i32* %87, align 4, !mcsema_real_eip !14
  %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_23171.i11 = load i8*, i8** %72, align 8
  br i1 %86, label %block_0x1ad.i, label %block_0x35.i, !mcsema_real_eip !15

block_0x2c8.i:                                    ; preds = %block_0x2af.i, %block_0x29f.i, %block_0x28f.i, %block_0x27f.i, %block_0x26f.i, %block_0x25f.i, %block_0x24f.i, %block_0x23f.i, %block_0x22f.i, %block_0x21f.i, %block_0x20f.i, %block_0x201.i, %block_0x1f3.i, %block_0x1e5.i, %block_0x1d7.i, %block_0x1c9.i, %block_0x1bb.i, %block_0x1ad.i, %block_0x19f.i
  %ZF_val.0.in.i = phi i32 [ %80, %block_0x19f.i ], [ %96, %block_0x1ad.i ], [ %113, %block_0x1bb.i ], [ %130, %block_0x1c9.i ], [ %147, %block_0x1d7.i ], [ %164, %block_0x1e5.i ], [ %181, %block_0x1f3.i ], [ %198, %block_0x201.i ], [ %215, %block_0x20f.i ], [ %232, %block_0x21f.i ], [ %249, %block_0x22f.i ], [ %266, %block_0x23f.i ], [ %283, %block_0x24f.i ], [ %300, %block_0x25f.i ], [ %317, %block_0x26f.i ], [ %334, %block_0x27f.i ], [ %351, %block_0x28f.i ], [ %368, %block_0x29f.i ], [ %385, %block_0x2af.i ]
  %PF_val.0.in.in.i = phi i8 [ %82, %block_0x19f.i ], [ %104, %block_0x1ad.i ], [ %121, %block_0x1bb.i ], [ %138, %block_0x1c9.i ], [ %155, %block_0x1d7.i ], [ %172, %block_0x1e5.i ], [ %189, %block_0x1f3.i ], [ %206, %block_0x201.i ], [ %223, %block_0x20f.i ], [ %240, %block_0x21f.i ], [ %257, %block_0x22f.i ], [ %274, %block_0x23f.i ], [ %291, %block_0x24f.i ], [ %308, %block_0x25f.i ], [ %325, %block_0x26f.i ], [ %342, %block_0x27f.i ], [ %359, %block_0x28f.i ], [ %376, %block_0x29f.i ], [ %393, %block_0x2af.i ]
  %AF_val.0.i = phi i1 [ false, %block_0x19f.i ], [ %99, %block_0x1ad.i ], [ %116, %block_0x1bb.i ], [ %133, %block_0x1c9.i ], [ %150, %block_0x1d7.i ], [ %167, %block_0x1e5.i ], [ %184, %block_0x1f3.i ], [ %201, %block_0x201.i ], [ %218, %block_0x20f.i ], [ %235, %block_0x21f.i ], [ %252, %block_0x22f.i ], [ %269, %block_0x23f.i ], [ %286, %block_0x24f.i ], [ %303, %block_0x25f.i ], [ %320, %block_0x26f.i ], [ %337, %block_0x27f.i ], [ %354, %block_0x28f.i ], [ %371, %block_0x29f.i ], [ %388, %block_0x2af.i ]
  %CF_val.0.i = phi i1 [ false, %block_0x19f.i ], [ %105, %block_0x1ad.i ], [ %122, %block_0x1bb.i ], [ %139, %block_0x1c9.i ], [ %156, %block_0x1d7.i ], [ %173, %block_0x1e5.i ], [ %190, %block_0x1f3.i ], [ %207, %block_0x201.i ], [ %224, %block_0x20f.i ], [ %241, %block_0x21f.i ], [ %258, %block_0x22f.i ], [ %275, %block_0x23f.i ], [ %292, %block_0x24f.i ], [ %309, %block_0x25f.i ], [ %326, %block_0x26f.i ], [ %343, %block_0x27f.i ], [ %360, %block_0x28f.i ], [ %377, %block_0x29f.i ], [ %394, %block_0x2af.i ]
  %OF_val.0.i = phi i1 [ false, %block_0x19f.i ], [ %102, %block_0x1ad.i ], [ %119, %block_0x1bb.i ], [ %136, %block_0x1c9.i ], [ %153, %block_0x1d7.i ], [ %170, %block_0x1e5.i ], [ %187, %block_0x1f3.i ], [ %204, %block_0x201.i ], [ %221, %block_0x20f.i ], [ %238, %block_0x21f.i ], [ %255, %block_0x22f.i ], [ %272, %block_0x23f.i ], [ %289, %block_0x24f.i ], [ %306, %block_0x25f.i ], [ %323, %block_0x26f.i ], [ %340, %block_0x27f.i ], [ %357, %block_0x28f.i ], [ %374, %block_0x29f.i ], [ %391, %block_0x2af.i ]
  %_allin_new_bt_225.sink.in.i = phi i8* [ %_new_gep_13.i, %block_0x19f.i ], [ %_new_gep_34.i, %block_0x1ad.i ], [ %_new_gep_45.i, %block_0x1bb.i ], [ %_new_gep_56.i, %block_0x1c9.i ], [ %_new_gep_67.i, %block_0x1d7.i ], [ %_new_gep_78.i, %block_0x1e5.i ], [ %_new_gep_89.i, %block_0x1f3.i ], [ %_new_gep_100.i, %block_0x201.i ], [ %_new_gep_111.i, %block_0x20f.i ], [ %_new_gep_122.i, %block_0x21f.i ], [ %_new_gep_133.i, %block_0x22f.i ], [ %_new_gep_144.i, %block_0x23f.i ], [ %_new_gep_155.i, %block_0x24f.i ], [ %_new_gep_166.i, %block_0x25f.i ], [ %_new_gep_177.i, %block_0x26f.i ], [ %_new_gep_188.i, %block_0x27f.i ], [ %_new_gep_199.i, %block_0x28f.i ], [ %_new_gep_210.i, %block_0x29f.i ], [ %_new_gep_221.i, %block_0x2af.i ]
  %PF_val.0.in.i = and i8 %PF_val.0.in.in.i, 1
  %SF_val.0.i = icmp slt i32 %ZF_val.0.in.i, 0
  %PF_val.0.i = icmp eq i8 %PF_val.0.in.i, 0
  %ZF_val.0.i = icmp eq i32 %ZF_val.0.in.i, 0
  %88 = bitcast i8* %_allin_new_bt_225.sink.in.i to i32*
  store i32 %ZF_val.0.in.i, i32* %88, align 4
  %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_24190.i30 = load i8*, i8** %72, align 8
  %_new_gep_25.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_24190.i30, i64 -8
  %89 = bitcast i8* %_new_gep_25.i to i32*
  %90 = load i32, i32* %89, align 4, !mcsema_real_eip !16
  %91 = zext i32 %90 to i64, !mcsema_real_eip !16
  %_RSP_ptr_159.sroa.0.i.0._RSP_ptr_159.sroa.0.0._RSP_ptr_159.sroa.0.0._load_rsp_ptr_27191.i31 = load i8*, i8** %68, align 8
  %_allin_new_bt_28.i = bitcast i8* %_RSP_ptr_159.sroa.0.i.0._RSP_ptr_159.sroa.0.0._RSP_ptr_159.sroa.0.0._load_rsp_ptr_27191.i31 to i64*
  %92 = load i64, i64* %_allin_new_bt_28.i, align 8
  store volatile i64 %92, i64* %_RBP_ptr_160.sroa.0.i, align 8
  %_new_gep_29.i = getelementptr i8, i8* %_RSP_ptr_159.sroa.0.i.0._RSP_ptr_159.sroa.0.0._RSP_ptr_159.sroa.0.0._load_rsp_ptr_27191.i31, i64 16
  %93 = ptrtoint i8* %_new_gep_29.i to i64
  store volatile i64 %93, i64* %_RSP_ptr_159.sroa.0.i, align 8
  store i64 %91, i64* %RAX.i, align 8, !mcsema_real_eip !17
  store i64 %3, i64* %RBX.i, align 8, !mcsema_real_eip !17
  store i64 %4, i64* %RCX.i, align 8, !mcsema_real_eip !17
  store i64 %5, i64* %RDX.i, align 8, !mcsema_real_eip !17
  store i64 %6, i64* %RSI.i, align 8, !mcsema_real_eip !17
  store i64 %76, i64* %RDI.i, align 8, !mcsema_real_eip !17
  store volatile i64 %93, i64* %RSP.i, align 8
  store volatile i64 %92, i64* %RBP.i, align 8
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !17
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !17
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !17
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !17
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !17
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !17
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !17
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !17
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !17
  store i1 %CF_val.0.i, i1* %CF.i, align 1, !mcsema_real_eip !17
  store i1 %PF_val.0.i, i1* %PF.i, align 1, !mcsema_real_eip !17
  store i1 %AF_val.0.i, i1* %AF.i, align 1, !mcsema_real_eip !17
  store i1 %ZF_val.0.i, i1* %ZF.i, align 1, !mcsema_real_eip !17
  store i1 %SF_val.0.i, i1* %SF.i, align 1, !mcsema_real_eip !17
  store i1 %OF_val.0.i, i1* %OF.i, align 1, !mcsema_real_eip !17
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !17
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !17
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !17
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !17
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !17
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !17
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !17
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !17
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !17
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !17
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !17
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !17
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !17
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !17
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !17
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !17
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !17
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !17
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !17
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !17
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !17
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !17
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !17
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !17
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !17
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !17
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !17
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !17
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !17
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !17
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !17
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !17
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !17
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !17
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !17
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !17
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !17
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !17
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !17
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !17
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !17
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !17
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !17
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !17
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !17
  store i64 %66, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !17
  store i64 %67, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !17
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_159.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_160.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 92, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  br label %sub_0.exit

block_0x1ad.i:                                    ; preds = %block_0x21.i
  %_new_gep_34.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_23171.i11, i64 -8
  %94 = bitcast i8* %_new_gep_34.i to i32*
  %95 = load i32, i32* %94, align 4, !mcsema_real_eip !18
  %uadd155.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %95, i32 1) #2
  %96 = extractvalue { i32, i1 } %uadd155.i, 0
  %97 = xor i32 %96, %95, !mcsema_real_eip !19
  %98 = and i32 %97, 16, !mcsema_real_eip !19
  %99 = icmp ne i32 %98, 0, !mcsema_real_eip !19
  %100 = xor i32 %95, -2147483648, !mcsema_real_eip !19
  %101 = and i32 %97, %100, !mcsema_real_eip !19
  %102 = icmp slt i32 %101, 0
  %103 = trunc i32 %96 to i8, !mcsema_real_eip !19
  %104 = tail call i8 @llvm.ctpop.i8(i8 %103) #2, !mcsema_real_eip !19
  %105 = extractvalue { i32, i1 } %uadd155.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !20

block_0x35.i:                                     ; preds = %block_0x21.i
  %_new_gep_39.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_23171.i11, i64 -12
  %106 = bitcast i8* %_new_gep_39.i to i32*
  %107 = load i32, i32* %106, align 4, !mcsema_real_eip !21
  %108 = add i32 %107, -2
  %109 = icmp eq i32 %108, 0, !mcsema_real_eip !22
  %_new_gep_42.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_23171.i11, i64 -20
  %110 = bitcast i8* %_new_gep_42.i to i32*
  store i32 %108, i32* %110, align 4, !mcsema_real_eip !23
  %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_44172.i12 = load i8*, i8** %72, align 8
  br i1 %109, label %block_0x1bb.i, label %block_0x49.i, !mcsema_real_eip !24

block_0x1bb.i:                                    ; preds = %block_0x35.i
  %_new_gep_45.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_44172.i12, i64 -8
  %111 = bitcast i8* %_new_gep_45.i to i32*
  %112 = load i32, i32* %111, align 4, !mcsema_real_eip !25
  %uadd154.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %112, i32 2) #2
  %113 = extractvalue { i32, i1 } %uadd154.i, 0
  %114 = xor i32 %113, %112, !mcsema_real_eip !26
  %115 = and i32 %114, 16, !mcsema_real_eip !26
  %116 = icmp ne i32 %115, 0, !mcsema_real_eip !26
  %117 = xor i32 %112, -2147483648, !mcsema_real_eip !26
  %118 = and i32 %114, %117, !mcsema_real_eip !26
  %119 = icmp slt i32 %118, 0
  %120 = trunc i32 %113 to i8, !mcsema_real_eip !26
  %121 = tail call i8 @llvm.ctpop.i8(i8 %120) #2, !mcsema_real_eip !26
  %122 = extractvalue { i32, i1 } %uadd154.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !27

block_0x49.i:                                     ; preds = %block_0x35.i
  %_new_gep_50.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_44172.i12, i64 -12
  %123 = bitcast i8* %_new_gep_50.i to i32*
  %124 = load i32, i32* %123, align 4, !mcsema_real_eip !28
  %125 = add i32 %124, -4
  %126 = icmp eq i32 %125, 0, !mcsema_real_eip !29
  %_new_gep_53.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_44172.i12, i64 -24
  %127 = bitcast i8* %_new_gep_53.i to i32*
  store i32 %125, i32* %127, align 4, !mcsema_real_eip !30
  %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_55173.i13 = load i8*, i8** %72, align 8
  br i1 %126, label %block_0x1c9.i, label %block_0x5d.i, !mcsema_real_eip !31

block_0x1c9.i:                                    ; preds = %block_0x49.i
  %_new_gep_56.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_55173.i13, i64 -8
  %128 = bitcast i8* %_new_gep_56.i to i32*
  %129 = load i32, i32* %128, align 4, !mcsema_real_eip !32
  %uadd153.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %129, i32 4) #2
  %130 = extractvalue { i32, i1 } %uadd153.i, 0
  %131 = xor i32 %130, %129, !mcsema_real_eip !33
  %132 = and i32 %131, 16, !mcsema_real_eip !33
  %133 = icmp ne i32 %132, 0, !mcsema_real_eip !33
  %134 = xor i32 %129, -2147483648, !mcsema_real_eip !33
  %135 = and i32 %131, %134, !mcsema_real_eip !33
  %136 = icmp slt i32 %135, 0
  %137 = trunc i32 %130 to i8, !mcsema_real_eip !33
  %138 = tail call i8 @llvm.ctpop.i8(i8 %137) #2, !mcsema_real_eip !33
  %139 = extractvalue { i32, i1 } %uadd153.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !34

block_0x5d.i:                                     ; preds = %block_0x49.i
  %_new_gep_61.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_55173.i13, i64 -12
  %140 = bitcast i8* %_new_gep_61.i to i32*
  %141 = load i32, i32* %140, align 4, !mcsema_real_eip !35
  %142 = add i32 %141, -6
  %143 = icmp eq i32 %142, 0, !mcsema_real_eip !36
  %_new_gep_64.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_55173.i13, i64 -28
  %144 = bitcast i8* %_new_gep_64.i to i32*
  store i32 %142, i32* %144, align 4, !mcsema_real_eip !37
  %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_66174.i14 = load i8*, i8** %72, align 8
  br i1 %143, label %block_0x1d7.i, label %block_0x71.i, !mcsema_real_eip !38

block_0x1d7.i:                                    ; preds = %block_0x5d.i
  %_new_gep_67.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_66174.i14, i64 -8
  %145 = bitcast i8* %_new_gep_67.i to i32*
  %146 = load i32, i32* %145, align 4, !mcsema_real_eip !39
  %uadd152.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %146, i32 6) #2
  %147 = extractvalue { i32, i1 } %uadd152.i, 0
  %148 = xor i32 %147, %146, !mcsema_real_eip !40
  %149 = and i32 %148, 16, !mcsema_real_eip !40
  %150 = icmp ne i32 %149, 0, !mcsema_real_eip !40
  %151 = xor i32 %146, -2147483648, !mcsema_real_eip !40
  %152 = and i32 %148, %151, !mcsema_real_eip !40
  %153 = icmp slt i32 %152, 0
  %154 = trunc i32 %147 to i8, !mcsema_real_eip !40
  %155 = tail call i8 @llvm.ctpop.i8(i8 %154) #2, !mcsema_real_eip !40
  %156 = extractvalue { i32, i1 } %uadd152.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !41

block_0x71.i:                                     ; preds = %block_0x5d.i
  %_new_gep_72.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_66174.i14, i64 -12
  %157 = bitcast i8* %_new_gep_72.i to i32*
  %158 = load i32, i32* %157, align 4, !mcsema_real_eip !42
  %159 = add i32 %158, -12
  %160 = icmp eq i32 %159, 0, !mcsema_real_eip !43
  %_new_gep_75.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_66174.i14, i64 -32
  %161 = bitcast i8* %_new_gep_75.i to i32*
  store i32 %159, i32* %161, align 4, !mcsema_real_eip !44
  %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_77175.i15 = load i8*, i8** %72, align 8
  br i1 %160, label %block_0x1e5.i, label %block_0x85.i, !mcsema_real_eip !45

block_0x1e5.i:                                    ; preds = %block_0x71.i
  %_new_gep_78.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_77175.i15, i64 -8
  %162 = bitcast i8* %_new_gep_78.i to i32*
  %163 = load i32, i32* %162, align 4, !mcsema_real_eip !46
  %uadd151.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %163, i32 12) #2
  %164 = extractvalue { i32, i1 } %uadd151.i, 0
  %165 = xor i32 %164, %163, !mcsema_real_eip !47
  %166 = and i32 %165, 16, !mcsema_real_eip !47
  %167 = icmp ne i32 %166, 0, !mcsema_real_eip !47
  %168 = xor i32 %163, -2147483648, !mcsema_real_eip !47
  %169 = and i32 %165, %168, !mcsema_real_eip !47
  %170 = icmp slt i32 %169, 0
  %171 = trunc i32 %164 to i8, !mcsema_real_eip !47
  %172 = tail call i8 @llvm.ctpop.i8(i8 %171) #2, !mcsema_real_eip !47
  %173 = extractvalue { i32, i1 } %uadd151.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !48

block_0x85.i:                                     ; preds = %block_0x71.i
  %_new_gep_83.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_77175.i15, i64 -12
  %174 = bitcast i8* %_new_gep_83.i to i32*
  %175 = load i32, i32* %174, align 4, !mcsema_real_eip !49
  %176 = add i32 %175, -13
  %177 = icmp eq i32 %176, 0, !mcsema_real_eip !50
  %_new_gep_86.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_77175.i15, i64 -36
  %178 = bitcast i8* %_new_gep_86.i to i32*
  store i32 %176, i32* %178, align 4, !mcsema_real_eip !51
  %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_88176.i16 = load i8*, i8** %72, align 8
  br i1 %177, label %block_0x1f3.i, label %block_0x99.i, !mcsema_real_eip !52

block_0x1f3.i:                                    ; preds = %block_0x85.i
  %_new_gep_89.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_88176.i16, i64 -8
  %179 = bitcast i8* %_new_gep_89.i to i32*
  %180 = load i32, i32* %179, align 4, !mcsema_real_eip !53
  %uadd150.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %180, i32 13) #2
  %181 = extractvalue { i32, i1 } %uadd150.i, 0
  %182 = xor i32 %181, %180, !mcsema_real_eip !54
  %183 = and i32 %182, 16, !mcsema_real_eip !54
  %184 = icmp ne i32 %183, 0, !mcsema_real_eip !54
  %185 = xor i32 %180, -2147483648, !mcsema_real_eip !54
  %186 = and i32 %182, %185, !mcsema_real_eip !54
  %187 = icmp slt i32 %186, 0
  %188 = trunc i32 %181 to i8, !mcsema_real_eip !54
  %189 = tail call i8 @llvm.ctpop.i8(i8 %188) #2, !mcsema_real_eip !54
  %190 = extractvalue { i32, i1 } %uadd150.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !55

block_0x99.i:                                     ; preds = %block_0x85.i
  %_new_gep_94.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_88176.i16, i64 -12
  %191 = bitcast i8* %_new_gep_94.i to i32*
  %192 = load i32, i32* %191, align 4, !mcsema_real_eip !56
  %193 = add i32 %192, -19
  %194 = icmp eq i32 %193, 0, !mcsema_real_eip !57
  %_new_gep_97.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_88176.i16, i64 -40
  %195 = bitcast i8* %_new_gep_97.i to i32*
  store i32 %193, i32* %195, align 4, !mcsema_real_eip !58
  %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_99177.i17 = load i8*, i8** %72, align 8
  br i1 %194, label %block_0x201.i, label %block_0xad.i, !mcsema_real_eip !59

block_0x201.i:                                    ; preds = %block_0x99.i
  %_new_gep_100.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_99177.i17, i64 -8
  %196 = bitcast i8* %_new_gep_100.i to i32*
  %197 = load i32, i32* %196, align 4, !mcsema_real_eip !60
  %uadd149.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %197, i32 19) #2
  %198 = extractvalue { i32, i1 } %uadd149.i, 0
  %199 = xor i32 %198, %197, !mcsema_real_eip !61
  %200 = and i32 %199, 16
  %201 = icmp eq i32 %200, 0
  %202 = xor i32 %197, -2147483648, !mcsema_real_eip !61
  %203 = and i32 %199, %202, !mcsema_real_eip !61
  %204 = icmp slt i32 %203, 0
  %205 = trunc i32 %198 to i8, !mcsema_real_eip !61
  %206 = tail call i8 @llvm.ctpop.i8(i8 %205) #2, !mcsema_real_eip !61
  %207 = extractvalue { i32, i1 } %uadd149.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !62

block_0xad.i:                                     ; preds = %block_0x99.i
  %_new_gep_105.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_99177.i17, i64 -12
  %208 = bitcast i8* %_new_gep_105.i to i32*
  %209 = load i32, i32* %208, align 4, !mcsema_real_eip !63
  %210 = add i32 %209, -255
  %211 = icmp eq i32 %210, 0, !mcsema_real_eip !64
  %_new_gep_108.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_99177.i17, i64 -44
  %212 = bitcast i8* %_new_gep_108.i to i32*
  store i32 %210, i32* %212, align 4, !mcsema_real_eip !65
  %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_110178.i18 = load i8*, i8** %72, align 8
  br i1 %211, label %block_0x20f.i, label %block_0xc3.i, !mcsema_real_eip !66

block_0x20f.i:                                    ; preds = %block_0xad.i
  %_new_gep_111.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_110178.i18, i64 -8
  %213 = bitcast i8* %_new_gep_111.i to i32*
  %214 = load i32, i32* %213, align 4, !mcsema_real_eip !67
  %uadd148.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %214, i32 255) #2
  %215 = extractvalue { i32, i1 } %uadd148.i, 0
  %216 = xor i32 %215, %214, !mcsema_real_eip !68
  %217 = and i32 %216, 16
  %218 = icmp eq i32 %217, 0
  %219 = xor i32 %214, -2147483648, !mcsema_real_eip !68
  %220 = and i32 %216, %219, !mcsema_real_eip !68
  %221 = icmp slt i32 %220, 0
  %222 = trunc i32 %215 to i8, !mcsema_real_eip !68
  %223 = tail call i8 @llvm.ctpop.i8(i8 %222) #2, !mcsema_real_eip !68
  %224 = extractvalue { i32, i1 } %uadd148.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !69

block_0xc3.i:                                     ; preds = %block_0xad.i
  %_new_gep_116.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_110178.i18, i64 -12
  %225 = bitcast i8* %_new_gep_116.i to i32*
  %226 = load i32, i32* %225, align 4, !mcsema_real_eip !70
  %227 = add i32 %226, -74633
  %228 = icmp eq i32 %227, 0, !mcsema_real_eip !71
  %_new_gep_119.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_110178.i18, i64 -48
  %229 = bitcast i8* %_new_gep_119.i to i32*
  store i32 %227, i32* %229, align 4, !mcsema_real_eip !72
  %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_121179.i19 = load i8*, i8** %72, align 8
  br i1 %228, label %block_0x21f.i, label %block_0xd9.i, !mcsema_real_eip !73

block_0x21f.i:                                    ; preds = %block_0xc3.i
  %_new_gep_122.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_121179.i19, i64 -8
  %230 = bitcast i8* %_new_gep_122.i to i32*
  %231 = load i32, i32* %230, align 4, !mcsema_real_eip !74
  %uadd147.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %231, i32 74633) #2
  %232 = extractvalue { i32, i1 } %uadd147.i, 0
  %233 = xor i32 %232, %231, !mcsema_real_eip !75
  %234 = and i32 %233, 16, !mcsema_real_eip !75
  %235 = icmp ne i32 %234, 0, !mcsema_real_eip !75
  %236 = xor i32 %231, -2147483648, !mcsema_real_eip !75
  %237 = and i32 %233, %236, !mcsema_real_eip !75
  %238 = icmp slt i32 %237, 0
  %239 = trunc i32 %232 to i8, !mcsema_real_eip !75
  %240 = tail call i8 @llvm.ctpop.i8(i8 %239) #2, !mcsema_real_eip !75
  %241 = extractvalue { i32, i1 } %uadd147.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !76

block_0xd9.i:                                     ; preds = %block_0xc3.i
  %_new_gep_127.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_121179.i19, i64 -12
  %242 = bitcast i8* %_new_gep_127.i to i32*
  %243 = load i32, i32* %242, align 4, !mcsema_real_eip !77
  %244 = add i32 %243, -74634
  %245 = icmp eq i32 %244, 0, !mcsema_real_eip !78
  %_new_gep_130.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_121179.i19, i64 -52
  %246 = bitcast i8* %_new_gep_130.i to i32*
  store i32 %244, i32* %246, align 4, !mcsema_real_eip !79
  %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_132180.i20 = load i8*, i8** %72, align 8
  br i1 %245, label %block_0x22f.i, label %block_0xef.i, !mcsema_real_eip !80

block_0x22f.i:                                    ; preds = %block_0xd9.i
  %_new_gep_133.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_132180.i20, i64 -8
  %247 = bitcast i8* %_new_gep_133.i to i32*
  %248 = load i32, i32* %247, align 4, !mcsema_real_eip !81
  %uadd146.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %248, i32 74634) #2
  %249 = extractvalue { i32, i1 } %uadd146.i, 0
  %250 = xor i32 %249, %248, !mcsema_real_eip !82
  %251 = and i32 %250, 16, !mcsema_real_eip !82
  %252 = icmp ne i32 %251, 0, !mcsema_real_eip !82
  %253 = xor i32 %248, -2147483648, !mcsema_real_eip !82
  %254 = and i32 %250, %253, !mcsema_real_eip !82
  %255 = icmp slt i32 %254, 0
  %256 = trunc i32 %249 to i8, !mcsema_real_eip !82
  %257 = tail call i8 @llvm.ctpop.i8(i8 %256) #2, !mcsema_real_eip !82
  %258 = extractvalue { i32, i1 } %uadd146.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !83

block_0xef.i:                                     ; preds = %block_0xd9.i
  %_new_gep_138.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_132180.i20, i64 -12
  %259 = bitcast i8* %_new_gep_138.i to i32*
  %260 = load i32, i32* %259, align 4, !mcsema_real_eip !84
  %261 = add i32 %260, -74635
  %262 = icmp eq i32 %261, 0, !mcsema_real_eip !85
  %_new_gep_141.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_132180.i20, i64 -56
  %263 = bitcast i8* %_new_gep_141.i to i32*
  store i32 %261, i32* %263, align 4, !mcsema_real_eip !86
  %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_143181.i21 = load i8*, i8** %72, align 8
  br i1 %262, label %block_0x23f.i, label %block_0x105.i, !mcsema_real_eip !87

block_0x23f.i:                                    ; preds = %block_0xef.i
  %_new_gep_144.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_143181.i21, i64 -8
  %264 = bitcast i8* %_new_gep_144.i to i32*
  %265 = load i32, i32* %264, align 4, !mcsema_real_eip !88
  %uadd145.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %265, i32 74635) #2
  %266 = extractvalue { i32, i1 } %uadd145.i, 0
  %267 = xor i32 %266, %265, !mcsema_real_eip !89
  %268 = and i32 %267, 16, !mcsema_real_eip !89
  %269 = icmp ne i32 %268, 0, !mcsema_real_eip !89
  %270 = xor i32 %265, -2147483648, !mcsema_real_eip !89
  %271 = and i32 %267, %270, !mcsema_real_eip !89
  %272 = icmp slt i32 %271, 0
  %273 = trunc i32 %266 to i8, !mcsema_real_eip !89
  %274 = tail call i8 @llvm.ctpop.i8(i8 %273) #2, !mcsema_real_eip !89
  %275 = extractvalue { i32, i1 } %uadd145.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !90

block_0x105.i:                                    ; preds = %block_0xef.i
  %_new_gep_149.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_143181.i21, i64 -12
  %276 = bitcast i8* %_new_gep_149.i to i32*
  %277 = load i32, i32* %276, align 4, !mcsema_real_eip !91
  %278 = add i32 %277, -74636
  %279 = icmp eq i32 %278, 0, !mcsema_real_eip !92
  %_new_gep_152.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_143181.i21, i64 -60
  %280 = bitcast i8* %_new_gep_152.i to i32*
  store i32 %278, i32* %280, align 4, !mcsema_real_eip !93
  %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_154182.i22 = load i8*, i8** %72, align 8
  br i1 %279, label %block_0x24f.i, label %block_0x11b.i, !mcsema_real_eip !94

block_0x24f.i:                                    ; preds = %block_0x105.i
  %_new_gep_155.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_154182.i22, i64 -8
  %281 = bitcast i8* %_new_gep_155.i to i32*
  %282 = load i32, i32* %281, align 4, !mcsema_real_eip !95
  %uadd144.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %282, i32 74636) #2
  %283 = extractvalue { i32, i1 } %uadd144.i, 0
  %284 = xor i32 %283, %282, !mcsema_real_eip !96
  %285 = and i32 %284, 16, !mcsema_real_eip !96
  %286 = icmp ne i32 %285, 0, !mcsema_real_eip !96
  %287 = xor i32 %282, -2147483648, !mcsema_real_eip !96
  %288 = and i32 %284, %287, !mcsema_real_eip !96
  %289 = icmp slt i32 %288, 0
  %290 = trunc i32 %283 to i8, !mcsema_real_eip !96
  %291 = tail call i8 @llvm.ctpop.i8(i8 %290) #2, !mcsema_real_eip !96
  %292 = extractvalue { i32, i1 } %uadd144.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !97

block_0x11b.i:                                    ; preds = %block_0x105.i
  %_new_gep_160.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_154182.i22, i64 -12
  %293 = bitcast i8* %_new_gep_160.i to i32*
  %294 = load i32, i32* %293, align 4, !mcsema_real_eip !98
  %295 = add i32 %294, -74637
  %296 = icmp eq i32 %295, 0, !mcsema_real_eip !99
  %_new_gep_163.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_154182.i22, i64 -64
  %297 = bitcast i8* %_new_gep_163.i to i32*
  store i32 %295, i32* %297, align 4, !mcsema_real_eip !100
  %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_165183.i23 = load i8*, i8** %72, align 8
  br i1 %296, label %block_0x25f.i, label %block_0x131.i, !mcsema_real_eip !101

block_0x25f.i:                                    ; preds = %block_0x11b.i
  %_new_gep_166.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_165183.i23, i64 -8
  %298 = bitcast i8* %_new_gep_166.i to i32*
  %299 = load i32, i32* %298, align 4, !mcsema_real_eip !102
  %uadd143.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %299, i32 74637) #2
  %300 = extractvalue { i32, i1 } %uadd143.i, 0
  %301 = xor i32 %300, %299, !mcsema_real_eip !103
  %302 = and i32 %301, 16, !mcsema_real_eip !103
  %303 = icmp ne i32 %302, 0, !mcsema_real_eip !103
  %304 = xor i32 %299, -2147483648, !mcsema_real_eip !103
  %305 = and i32 %301, %304, !mcsema_real_eip !103
  %306 = icmp slt i32 %305, 0
  %307 = trunc i32 %300 to i8, !mcsema_real_eip !103
  %308 = tail call i8 @llvm.ctpop.i8(i8 %307) #2, !mcsema_real_eip !103
  %309 = extractvalue { i32, i1 } %uadd143.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !104

block_0x131.i:                                    ; preds = %block_0x11b.i
  %_new_gep_171.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_165183.i23, i64 -12
  %310 = bitcast i8* %_new_gep_171.i to i32*
  %311 = load i32, i32* %310, align 4, !mcsema_real_eip !105
  %312 = add i32 %311, -74639
  %313 = icmp eq i32 %312, 0, !mcsema_real_eip !106
  %_new_gep_174.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_165183.i23, i64 -68
  %314 = bitcast i8* %_new_gep_174.i to i32*
  store i32 %312, i32* %314, align 4, !mcsema_real_eip !107
  %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_176184.i24 = load i8*, i8** %72, align 8
  br i1 %313, label %block_0x26f.i, label %block_0x147.i, !mcsema_real_eip !108

block_0x26f.i:                                    ; preds = %block_0x131.i
  %_new_gep_177.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_176184.i24, i64 -8
  %315 = bitcast i8* %_new_gep_177.i to i32*
  %316 = load i32, i32* %315, align 4, !mcsema_real_eip !109
  %uadd142.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %316, i32 74639) #2
  %317 = extractvalue { i32, i1 } %uadd142.i, 0
  %318 = xor i32 %317, %316, !mcsema_real_eip !110
  %319 = and i32 %318, 16, !mcsema_real_eip !110
  %320 = icmp ne i32 %319, 0, !mcsema_real_eip !110
  %321 = xor i32 %316, -2147483648, !mcsema_real_eip !110
  %322 = and i32 %318, %321, !mcsema_real_eip !110
  %323 = icmp slt i32 %322, 0
  %324 = trunc i32 %317 to i8, !mcsema_real_eip !110
  %325 = tail call i8 @llvm.ctpop.i8(i8 %324) #2, !mcsema_real_eip !110
  %326 = extractvalue { i32, i1 } %uadd142.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !111

block_0x147.i:                                    ; preds = %block_0x131.i
  %_new_gep_182.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_176184.i24, i64 -12
  %327 = bitcast i8* %_new_gep_182.i to i32*
  %328 = load i32, i32* %327, align 4, !mcsema_real_eip !112
  %329 = add i32 %328, -74640
  %330 = icmp eq i32 %329, 0, !mcsema_real_eip !113
  %_new_gep_185.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_176184.i24, i64 -72
  %331 = bitcast i8* %_new_gep_185.i to i32*
  store i32 %329, i32* %331, align 4, !mcsema_real_eip !114
  %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_187185.i25 = load i8*, i8** %72, align 8
  br i1 %330, label %block_0x27f.i, label %block_0x15d.i, !mcsema_real_eip !115

block_0x27f.i:                                    ; preds = %block_0x147.i
  %_new_gep_188.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_187185.i25, i64 -8
  %332 = bitcast i8* %_new_gep_188.i to i32*
  %333 = load i32, i32* %332, align 4, !mcsema_real_eip !116
  %uadd141.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %333, i32 74640) #2
  %334 = extractvalue { i32, i1 } %uadd141.i, 0
  %335 = xor i32 %334, %333, !mcsema_real_eip !117
  %336 = and i32 %335, 16
  %337 = icmp eq i32 %336, 0
  %338 = xor i32 %333, -2147483648, !mcsema_real_eip !117
  %339 = and i32 %335, %338, !mcsema_real_eip !117
  %340 = icmp slt i32 %339, 0
  %341 = trunc i32 %334 to i8, !mcsema_real_eip !117
  %342 = tail call i8 @llvm.ctpop.i8(i8 %341) #2, !mcsema_real_eip !117
  %343 = extractvalue { i32, i1 } %uadd141.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !118

block_0x15d.i:                                    ; preds = %block_0x147.i
  %_new_gep_193.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_187185.i25, i64 -12
  %344 = bitcast i8* %_new_gep_193.i to i32*
  %345 = load i32, i32* %344, align 4, !mcsema_real_eip !119
  %346 = add i32 %345, -74641
  %347 = icmp eq i32 %346, 0, !mcsema_real_eip !120
  %_new_gep_196.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_187185.i25, i64 -76
  %348 = bitcast i8* %_new_gep_196.i to i32*
  store i32 %346, i32* %348, align 4, !mcsema_real_eip !121
  %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_198186.i26 = load i8*, i8** %72, align 8
  br i1 %347, label %block_0x28f.i, label %block_0x173.i, !mcsema_real_eip !122

block_0x28f.i:                                    ; preds = %block_0x15d.i
  %_new_gep_199.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_198186.i26, i64 -8
  %349 = bitcast i8* %_new_gep_199.i to i32*
  %350 = load i32, i32* %349, align 4, !mcsema_real_eip !123
  %uadd140.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %350, i32 74641) #2
  %351 = extractvalue { i32, i1 } %uadd140.i, 0
  %352 = xor i32 %351, %350, !mcsema_real_eip !124
  %353 = and i32 %352, 16
  %354 = icmp eq i32 %353, 0
  %355 = xor i32 %350, -2147483648, !mcsema_real_eip !124
  %356 = and i32 %352, %355, !mcsema_real_eip !124
  %357 = icmp slt i32 %356, 0
  %358 = trunc i32 %351 to i8, !mcsema_real_eip !124
  %359 = tail call i8 @llvm.ctpop.i8(i8 %358) #2, !mcsema_real_eip !124
  %360 = extractvalue { i32, i1 } %uadd140.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !125

block_0x173.i:                                    ; preds = %block_0x15d.i
  %_new_gep_204.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_198186.i26, i64 -12
  %361 = bitcast i8* %_new_gep_204.i to i32*
  %362 = load i32, i32* %361, align 4, !mcsema_real_eip !126
  %363 = add i32 %362, -74642
  %364 = icmp eq i32 %363, 0, !mcsema_real_eip !127
  %_new_gep_207.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_198186.i26, i64 -80
  %365 = bitcast i8* %_new_gep_207.i to i32*
  store i32 %363, i32* %365, align 4, !mcsema_real_eip !128
  %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_209187.i27 = load i8*, i8** %72, align 8
  br i1 %364, label %block_0x29f.i, label %block_0x189.i, !mcsema_real_eip !129

block_0x29f.i:                                    ; preds = %block_0x173.i
  %_new_gep_210.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_209187.i27, i64 -8
  %366 = bitcast i8* %_new_gep_210.i to i32*
  %367 = load i32, i32* %366, align 4, !mcsema_real_eip !130
  %uadd139.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %367, i32 74642) #2
  %368 = extractvalue { i32, i1 } %uadd139.i, 0
  %369 = xor i32 %368, %367, !mcsema_real_eip !131
  %370 = and i32 %369, 16
  %371 = icmp eq i32 %370, 0
  %372 = xor i32 %367, -2147483648, !mcsema_real_eip !131
  %373 = and i32 %369, %372, !mcsema_real_eip !131
  %374 = icmp slt i32 %373, 0
  %375 = trunc i32 %368 to i8, !mcsema_real_eip !131
  %376 = tail call i8 @llvm.ctpop.i8(i8 %375) #2, !mcsema_real_eip !131
  %377 = extractvalue { i32, i1 } %uadd139.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !132

block_0x189.i:                                    ; preds = %block_0x173.i
  %_new_gep_215.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_209187.i27, i64 -12
  %378 = bitcast i8* %_new_gep_215.i to i32*
  %379 = load i32, i32* %378, align 4, !mcsema_real_eip !133
  %380 = add i32 %379, -74643
  %381 = icmp eq i32 %380, 0, !mcsema_real_eip !134
  %_new_gep_218.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_209187.i27, i64 -84
  %382 = bitcast i8* %_new_gep_218.i to i32*
  store i32 %380, i32* %382, align 4, !mcsema_real_eip !135
  %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_220188.i28 = load i8*, i8** %72, align 8
  %_new_gep_221.i = getelementptr i8, i8* %_RBP_ptr_160.sroa.0.i.0._RBP_ptr_160.sroa.0.0._RBP_ptr_160.sroa.0.0._load_rbp_ptr_220188.i28, i64 -8
  %383 = bitcast i8* %_new_gep_221.i to i32*
  %384 = load i32, i32* %383, align 4, !mcsema_real_eip !136
  br i1 %381, label %block_0x2af.i, label %block_0x2bf.i, !mcsema_real_eip !137

block_0x2af.i:                                    ; preds = %block_0x189.i
  %uadd.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %384, i32 74643) #2
  %385 = extractvalue { i32, i1 } %uadd.i, 0
  %386 = xor i32 %385, %384, !mcsema_real_eip !138
  %387 = and i32 %386, 16
  %388 = icmp eq i32 %387, 0
  %389 = xor i32 %384, -2147483648, !mcsema_real_eip !138
  %390 = and i32 %386, %389, !mcsema_real_eip !138
  %391 = icmp slt i32 %390, 0
  %392 = trunc i32 %385 to i8, !mcsema_real_eip !138
  %393 = tail call i8 @llvm.ctpop.i8(i8 %392) #2, !mcsema_real_eip !138
  %394 = extractvalue { i32, i1 } %uadd.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !139

block_0x2bf.i:                                    ; preds = %block_0x189.i
  %395 = icmp slt i32 %384, 0
  %396 = icmp eq i32 %384, 0, !mcsema_real_eip !140
  %397 = trunc i32 %384 to i8, !mcsema_real_eip !140
  %398 = tail call i8 @llvm.ctpop.i8(i8 %397) #2, !mcsema_real_eip !140
  %399 = and i8 %398, 1
  %400 = icmp eq i8 %399, 0
  %401 = zext i32 %384 to i64, !mcsema_real_eip !16
  %_RSP_ptr_159.sroa.0.i.0._RSP_ptr_159.sroa.0.0._RSP_ptr_159.sroa.0.0._load_rsp_ptr_232189.i29 = load i8*, i8** %68, align 8
  %_allin_new_bt_233.i = bitcast i8* %_RSP_ptr_159.sroa.0.i.0._RSP_ptr_159.sroa.0.0._RSP_ptr_159.sroa.0.0._load_rsp_ptr_232189.i29 to i64*
  %402 = load i64, i64* %_allin_new_bt_233.i, align 8
  store volatile i64 %402, i64* %_RBP_ptr_160.sroa.0.i, align 8
  %_new_gep_235.i = getelementptr i8, i8* %_RSP_ptr_159.sroa.0.i.0._RSP_ptr_159.sroa.0.0._RSP_ptr_159.sroa.0.0._load_rsp_ptr_232189.i29, i64 16
  %403 = ptrtoint i8* %_new_gep_235.i to i64
  store volatile i64 %403, i64* %_RSP_ptr_159.sroa.0.i, align 8
  store i64 %401, i64* %RAX.i, align 8, !mcsema_real_eip !17
  store i64 %3, i64* %RBX.i, align 8, !mcsema_real_eip !17
  store i64 %4, i64* %RCX.i, align 8, !mcsema_real_eip !17
  store i64 %5, i64* %RDX.i, align 8, !mcsema_real_eip !17
  store i64 %6, i64* %RSI.i, align 8, !mcsema_real_eip !17
  store i64 %76, i64* %RDI.i, align 8, !mcsema_real_eip !17
  store volatile i64 %403, i64* %RSP.i, align 8
  store volatile i64 %402, i64* %RBP.i, align 8
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !17
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !17
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !17
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !17
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !17
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !17
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !17
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !17
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !17
  store i1 false, i1* %CF.i, align 1, !mcsema_real_eip !17
  store i1 %400, i1* %PF.i, align 1, !mcsema_real_eip !17
  store i1 false, i1* %AF.i, align 1, !mcsema_real_eip !17
  store i1 %396, i1* %ZF.i, align 1, !mcsema_real_eip !17
  store i1 %395, i1* %SF.i, align 1, !mcsema_real_eip !17
  store i1 false, i1* %OF.i, align 1, !mcsema_real_eip !17
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !17
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !17
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !17
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !17
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !17
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !17
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !17
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !17
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !17
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !17
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !17
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !17
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !17
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !17
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !17
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !17
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !17
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !17
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !17
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !17
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !17
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !17
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !17
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !17
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !17
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !17
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !17
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !17
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !17
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !17
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !17
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !17
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !17
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !17
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !17
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !17
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !17
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !17
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !17
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !17
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !17
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !17
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !17
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !17
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !17
  store i64 %66, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !17
  store i64 %67, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !17
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_159.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_160.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 92, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  br label %sub_0.exit

sub_0.exit:                                       ; preds = %block_0x2bf.i, %block_0x2c8.i
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
!2 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 4, [21 x i8] c"\09movl\09%edi, -4(%rbp)\00"}
!4 = !{i64 7, [19 x i8] c"\09movl\09$0, -8(%rbp)\00"}
!5 = !{i64 14, [21 x i8] c"\09movl\09-4(%rbp), %edi\00"}
!6 = !{i64 17, [18 x i8] c"\09testl\09%edi, %edi\00"}
!7 = !{i64 19, [22 x i8] c"\09movl\09%edi, -12(%rbp)\00"}
!8 = !{i64 22, [8 x i8] c"\09je\09387\00"}
!9 = !{i64 415, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!10 = !{i64 418, [15 x i8] c"\09addl\09$0, %eax\00"}
!11 = !{i64 424, [9 x i8] c"\09jmp\09283\00"}
!12 = !{i64 33, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!13 = !{i64 36, [15 x i8] c"\09subl\09$1, %eax\00"}
!14 = !{i64 39, [22 x i8] c"\09movl\09%eax, -16(%rbp)\00"}
!15 = !{i64 42, [8 x i8] c"\09je\09381\00"}
!16 = !{i64 712, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!17 = !{i64 716, [6 x i8] c"\09retq\00"}
!18 = !{i64 429, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!19 = !{i64 432, [15 x i8] c"\09addl\09$1, %eax\00"}
!20 = !{i64 438, [9 x i8] c"\09jmp\09269\00"}
!21 = !{i64 53, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!22 = !{i64 56, [15 x i8] c"\09subl\09$2, %eax\00"}
!23 = !{i64 59, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!24 = !{i64 62, [8 x i8] c"\09je\09375\00"}
!25 = !{i64 443, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!26 = !{i64 446, [15 x i8] c"\09addl\09$2, %eax\00"}
!27 = !{i64 452, [9 x i8] c"\09jmp\09255\00"}
!28 = !{i64 73, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!29 = !{i64 76, [15 x i8] c"\09subl\09$4, %eax\00"}
!30 = !{i64 79, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!31 = !{i64 82, [8 x i8] c"\09je\09369\00"}
!32 = !{i64 457, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!33 = !{i64 460, [15 x i8] c"\09addl\09$4, %eax\00"}
!34 = !{i64 466, [9 x i8] c"\09jmp\09241\00"}
!35 = !{i64 93, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!36 = !{i64 96, [15 x i8] c"\09subl\09$6, %eax\00"}
!37 = !{i64 99, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
!38 = !{i64 102, [8 x i8] c"\09je\09363\00"}
!39 = !{i64 471, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!40 = !{i64 474, [15 x i8] c"\09addl\09$6, %eax\00"}
!41 = !{i64 480, [9 x i8] c"\09jmp\09227\00"}
!42 = !{i64 113, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!43 = !{i64 116, [16 x i8] c"\09subl\09$12, %eax\00"}
!44 = !{i64 119, [22 x i8] c"\09movl\09%eax, -32(%rbp)\00"}
!45 = !{i64 122, [8 x i8] c"\09je\09357\00"}
!46 = !{i64 485, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!47 = !{i64 488, [16 x i8] c"\09addl\09$12, %eax\00"}
!48 = !{i64 494, [9 x i8] c"\09jmp\09213\00"}
!49 = !{i64 133, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!50 = !{i64 136, [16 x i8] c"\09subl\09$13, %eax\00"}
!51 = !{i64 139, [22 x i8] c"\09movl\09%eax, -36(%rbp)\00"}
!52 = !{i64 142, [8 x i8] c"\09je\09351\00"}
!53 = !{i64 499, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!54 = !{i64 502, [16 x i8] c"\09addl\09$13, %eax\00"}
!55 = !{i64 508, [9 x i8] c"\09jmp\09199\00"}
!56 = !{i64 153, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!57 = !{i64 156, [16 x i8] c"\09subl\09$19, %eax\00"}
!58 = !{i64 159, [22 x i8] c"\09movl\09%eax, -40(%rbp)\00"}
!59 = !{i64 162, [8 x i8] c"\09je\09345\00"}
!60 = !{i64 513, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!61 = !{i64 516, [16 x i8] c"\09addl\09$19, %eax\00"}
!62 = !{i64 522, [9 x i8] c"\09jmp\09185\00"}
!63 = !{i64 173, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!64 = !{i64 176, [17 x i8] c"\09subl\09$255, %eax\00"}
!65 = !{i64 181, [22 x i8] c"\09movl\09%eax, -44(%rbp)\00"}
!66 = !{i64 184, [8 x i8] c"\09je\09337\00"}
!67 = !{i64 527, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!68 = !{i64 530, [17 x i8] c"\09addl\09$255, %eax\00"}
!69 = !{i64 538, [9 x i8] c"\09jmp\09169\00"}
!70 = !{i64 195, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!71 = !{i64 198, [19 x i8] c"\09subl\09$74633, %eax\00"}
!72 = !{i64 203, [22 x i8] c"\09movl\09%eax, -48(%rbp)\00"}
!73 = !{i64 206, [8 x i8] c"\09je\09331\00"}
!74 = !{i64 543, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!75 = !{i64 546, [19 x i8] c"\09addl\09$74633, %eax\00"}
!76 = !{i64 554, [9 x i8] c"\09jmp\09153\00"}
!77 = !{i64 217, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!78 = !{i64 220, [19 x i8] c"\09subl\09$74634, %eax\00"}
!79 = !{i64 225, [22 x i8] c"\09movl\09%eax, -52(%rbp)\00"}
!80 = !{i64 228, [8 x i8] c"\09je\09325\00"}
!81 = !{i64 559, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!82 = !{i64 562, [19 x i8] c"\09addl\09$74634, %eax\00"}
!83 = !{i64 570, [9 x i8] c"\09jmp\09137\00"}
!84 = !{i64 239, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!85 = !{i64 242, [19 x i8] c"\09subl\09$74635, %eax\00"}
!86 = !{i64 247, [22 x i8] c"\09movl\09%eax, -56(%rbp)\00"}
!87 = !{i64 250, [8 x i8] c"\09je\09319\00"}
!88 = !{i64 575, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!89 = !{i64 578, [19 x i8] c"\09addl\09$74635, %eax\00"}
!90 = !{i64 586, [9 x i8] c"\09jmp\09121\00"}
!91 = !{i64 261, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!92 = !{i64 264, [19 x i8] c"\09subl\09$74636, %eax\00"}
!93 = !{i64 269, [22 x i8] c"\09movl\09%eax, -60(%rbp)\00"}
!94 = !{i64 272, [8 x i8] c"\09je\09313\00"}
!95 = !{i64 591, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!96 = !{i64 594, [19 x i8] c"\09addl\09$74636, %eax\00"}
!97 = !{i64 602, [9 x i8] c"\09jmp\09105\00"}
!98 = !{i64 283, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!99 = !{i64 286, [19 x i8] c"\09subl\09$74637, %eax\00"}
!100 = !{i64 291, [22 x i8] c"\09movl\09%eax, -64(%rbp)\00"}
!101 = !{i64 294, [8 x i8] c"\09je\09307\00"}
!102 = !{i64 607, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!103 = !{i64 610, [19 x i8] c"\09addl\09$74637, %eax\00"}
!104 = !{i64 618, [8 x i8] c"\09jmp\0989\00"}
!105 = !{i64 305, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!106 = !{i64 308, [19 x i8] c"\09subl\09$74639, %eax\00"}
!107 = !{i64 313, [22 x i8] c"\09movl\09%eax, -68(%rbp)\00"}
!108 = !{i64 316, [8 x i8] c"\09je\09301\00"}
!109 = !{i64 623, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!110 = !{i64 626, [19 x i8] c"\09addl\09$74639, %eax\00"}
!111 = !{i64 634, [8 x i8] c"\09jmp\0973\00"}
!112 = !{i64 327, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!113 = !{i64 330, [19 x i8] c"\09subl\09$74640, %eax\00"}
!114 = !{i64 335, [22 x i8] c"\09movl\09%eax, -72(%rbp)\00"}
!115 = !{i64 338, [8 x i8] c"\09je\09295\00"}
!116 = !{i64 639, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!117 = !{i64 642, [19 x i8] c"\09addl\09$74640, %eax\00"}
!118 = !{i64 650, [8 x i8] c"\09jmp\0957\00"}
!119 = !{i64 349, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!120 = !{i64 352, [19 x i8] c"\09subl\09$74641, %eax\00"}
!121 = !{i64 357, [22 x i8] c"\09movl\09%eax, -76(%rbp)\00"}
!122 = !{i64 360, [8 x i8] c"\09je\09289\00"}
!123 = !{i64 655, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!124 = !{i64 658, [19 x i8] c"\09addl\09$74641, %eax\00"}
!125 = !{i64 666, [8 x i8] c"\09jmp\0941\00"}
!126 = !{i64 371, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!127 = !{i64 374, [19 x i8] c"\09subl\09$74642, %eax\00"}
!128 = !{i64 379, [22 x i8] c"\09movl\09%eax, -80(%rbp)\00"}
!129 = !{i64 382, [8 x i8] c"\09je\09283\00"}
!130 = !{i64 671, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!131 = !{i64 674, [19 x i8] c"\09addl\09$74642, %eax\00"}
!132 = !{i64 682, [8 x i8] c"\09jmp\0925\00"}
!133 = !{i64 393, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!134 = !{i64 396, [19 x i8] c"\09subl\09$74643, %eax\00"}
!135 = !{i64 401, [22 x i8] c"\09movl\09%eax, -84(%rbp)\00"}
!136 = !{i64 687, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!137 = !{i64 404, [8 x i8] c"\09je\09277\00"}
!138 = !{i64 690, [19 x i8] c"\09addl\09$74643, %eax\00"}
!139 = !{i64 698, [7 x i8] c"\09jmp\099\00"}
!140 = !{i64 706, [15 x i8] c"\09addl\09$0, %eax\00"}
