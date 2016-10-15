; ModuleID = 'Output/test_23_1.clang.trans.opt.bc'
source_filename = "Output/test_23_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, [1 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x8c = internal constant %0 <{ void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_5c.2 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_66.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_66.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_61.4 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_66.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_66.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_66.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_66.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_66.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_66.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_66.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_66.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_66.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_66.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_66.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_66.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_66.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_66.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_57.5 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_66.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_66.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_66.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_52.6 to void (%struct.regs*)*), [1 x i8] c"w" }>, align 64

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) local_unnamed_addr #2 {
driverBlockRaw:
  %_RSP_ptr_.sroa.0.i = alloca i64, align 8
  %_RBP_ptr_.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_230.i = alloca [36 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %_RSP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [36 x i8], [36 x i8]* %_local_stack_start_ptr_230.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 36, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [36 x i8], [36 x i8]* %_local_stack_start_ptr_230.i, i64 0, i64 36
  %2 = ptrtoint i8* %_local_stack_end_ptr_.i to i64
  store i64 %2, i64* %_RSP_ptr_.sroa.0.i, align 8
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %3 = bitcast i64* %RBX.i to <2 x i64>*
  %4 = load <2 x i64>, <2 x i64>* %3, align 8
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
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_231.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  %68 = bitcast i64* %_RSP_ptr_.sroa.0.i to i8**
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_240.i7 = load i8*, i8** %68, align 8
  %_new_gep_.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_240.i7, i64 -8
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_231.i, i64* %_allin_new_bt_.i, align 8
  %69 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %69, i64* %_RSP_ptr_.sroa.0.i, align 8
  store volatile i64 %69, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_240.i7, i64 -12
  %70 = bitcast i8* %_new_gep_1.i to i32*
  store i32 0, i32* %70, align 4, !mcsema_real_eip !3
  %71 = bitcast i64* %_RBP_ptr_.sroa.0.i to i8**
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3241.i8 = load i8*, i8** %71, align 8
  %_new_gep_4.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3241.i8, i64 -8
  %72 = bitcast i8* %_new_gep_4.i to i32*
  store i32 0, i32* %72, align 4, !mcsema_real_eip !4
  %73 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%0* @data_0x8c to i64), i64 184) to i8*), align 8, !mcsema_real_eip !5
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6242.i9 = load i8*, i8** %71, align 8
  %_new_gep_7.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6242.i9, i64 -9
  store i8 %73, i8* %_new_gep_7.i, align 1, !mcsema_real_eip !6
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9243.i10 = load i8*, i8** %71, align 8
  %_new_gep_10.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9243.i10, i64 -8
  %74 = bitcast i8* %_new_gep_10.i to i32*
  %75 = load i32, i32* %74, align 4, !mcsema_real_eip !7
  %76 = add i32 %75, -1
  %77 = xor i32 %76, %75, !mcsema_real_eip !7
  %78 = icmp slt i32 %76, 0
  %79 = and i32 %77, %75, !mcsema_real_eip !7
  %80 = icmp slt i32 %79, 0
  %tmp.i = xor i1 %78, %80
  br i1 %tmp.i, label %block_0x26.i, label %block_0x80.i, !mcsema_real_eip !8

block_0x80.i:                                     ; preds = %driverBlockRaw
  %81 = icmp eq i32 %75, 0
  %82 = icmp eq i32 %76, 0, !mcsema_real_eip !7
  %83 = trunc i32 %76 to i8, !mcsema_real_eip !7
  %84 = tail call i8 @llvm.ctpop.i8(i8 %83) #2, !mcsema_real_eip !7
  %85 = and i8 %84, 1
  %86 = icmp eq i8 %85, 0
  %87 = and i32 %77, 16, !mcsema_real_eip !7
  %88 = icmp ne i32 %87, 0, !mcsema_real_eip !7
  %_new_gep_13.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9243.i10, i64 -4
  %89 = bitcast i8* %_new_gep_13.i to i32*
  store i32 1, i32* %89, align 4, !mcsema_real_eip !9
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_15244.i11 = load i8*, i8** %71, align 8
  %_new_gep_16.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_15244.i11, i64 -4
  %90 = bitcast i8* %_new_gep_16.i to i32*
  %91 = load i32, i32* %90, align 4, !mcsema_real_eip !10
  %92 = zext i32 %91 to i64, !mcsema_real_eip !10
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_18245.i12 = load i8*, i8** %68, align 8
  %_allin_new_bt_19.i = bitcast i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_18245.i12 to i64*
  %93 = load i64, i64* %_allin_new_bt_19.i, align 8
  store volatile i64 %93, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_20.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_18245.i12, i64 16
  %94 = ptrtoint i8* %_new_gep_20.i to i64
  store volatile i64 %94, i64* %_RSP_ptr_.sroa.0.i, align 8
  store i64 %92, i64* %RAX.i, align 8, !mcsema_real_eip !11
  %95 = bitcast i64* %RBX.i to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %95, align 8
  store i64 %5, i64* %RDX.i, align 8, !mcsema_real_eip !11
  store i64 %6, i64* %RSI.i, align 8, !mcsema_real_eip !11
  store i64 %7, i64* %RDI.i, align 8, !mcsema_real_eip !11
  store volatile i64 %94, i64* %RSP.i, align 8
  store volatile i64 %93, i64* %RBP.i, align 8
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !11
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !11
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !11
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !11
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !11
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !11
  store i1 %81, i1* %CF.i, align 1, !mcsema_real_eip !11
  store i1 %86, i1* %PF.i, align 1, !mcsema_real_eip !11
  store i1 %88, i1* %AF.i, align 1, !mcsema_real_eip !11
  store i1 %82, i1* %ZF.i, align 1, !mcsema_real_eip !11
  store i1 %78, i1* %SF.i, align 1, !mcsema_real_eip !11
  store i1 %80, i1* %OF.i, align 1, !mcsema_real_eip !11
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !11
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !11
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !11
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !11
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !11
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !11
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !11
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !11
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !11
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !11
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !11
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !11
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !11
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !11
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !11
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !11
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !11
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !11
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !11
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !11
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !11
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !11
  store i64 %66, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !11
  store i64 %67, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 36, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  br label %sub_0.exit

block_0x26.i:                                     ; preds = %driverBlockRaw
  %96 = sext i32 %75 to i64, !mcsema_real_eip !12
  %_new_gep_28.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9243.i10, i64 -9
  %_new_gep_29.i = getelementptr i8, i8* %_new_gep_28.i, i64 %96
  %97 = load i8, i8* %_new_gep_29.i, align 1, !mcsema_real_eip !13
  %98 = sext i8 %97 to i32, !mcsema_real_eip !13
  %99 = add nsw i32 %98, -97
  %100 = zext i32 %99 to i64, !mcsema_real_eip !14
  %101 = add nsw i32 %98, -119
  %102 = xor i32 %101, %99, !mcsema_real_eip !15
  %103 = and i32 %102, 16
  %104 = icmp eq i32 %103, 0
  %105 = trunc i32 %101 to i8, !mcsema_real_eip !15
  %106 = tail call i8 @llvm.ctpop.i8(i8 %105) #2, !mcsema_real_eip !15
  %107 = and i8 %106, 1
  %108 = icmp eq i8 %107, 0
  %109 = icmp eq i32 %101, 0, !mcsema_real_eip !15
  %110 = icmp slt i8 %97, 119
  %111 = icmp ult i32 %99, 22, !mcsema_real_eip !15
  %112 = and i32 %102, %99, !mcsema_real_eip !15
  %113 = icmp slt i32 %112, 0
  %_new_gep_32.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9243.i10, i64 -24
  %_allin_new_bt_33.i = bitcast i8* %_new_gep_32.i to i64*
  store i64 %100, i64* %_allin_new_bt_33.i, align 8, !mcsema_real_eip !16
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_34246.i13 = load i8*, i8** %71, align 8
  %_new_gep_35.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_34246.i13, i64 -28
  %114 = bitcast i8* %_new_gep_35.i to i32*
  store i32 %101, i32* %114, align 4, !mcsema_real_eip !17
  %.demorgan.i = or i1 %111, %109
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_37247.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  %115 = inttoptr i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_37247.i to i8*
  br i1 %.demorgan.i, label %block_0x44.i, label %block_0x66.i, !mcsema_real_eip !18

block_0x66.i:                                     ; preds = %block_0x26.i
  %116 = zext i32 %101 to i64, !mcsema_real_eip !15
  %_new_gep_38.i = getelementptr i8, i8* %115, i64 -4
  %117 = bitcast i8* %_new_gep_38.i to i32*
  store i32 1, i32* %117, align 4, !mcsema_real_eip !19
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_40248.i14 = load i8*, i8** %71, align 8
  %_new_gep_41.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_40248.i14, i64 -4
  %118 = bitcast i8* %_new_gep_41.i to i32*
  %119 = load i32, i32* %118, align 4, !mcsema_real_eip !10
  %120 = zext i32 %119 to i64, !mcsema_real_eip !10
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_43249.i15 = load i8*, i8** %68, align 8
  %_allin_new_bt_44.i = bitcast i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_43249.i15 to i64*
  %121 = load i64, i64* %_allin_new_bt_44.i, align 8
  store volatile i64 %121, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_46.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_43249.i15, i64 16
  %122 = ptrtoint i8* %_new_gep_46.i to i64
  store volatile i64 %122, i64* %_RSP_ptr_.sroa.0.i, align 8
  store i64 %120, i64* %RAX.i, align 8, !mcsema_real_eip !11
  %123 = extractelement <2 x i64> %4, i32 0
  store i64 %123, i64* %RBX.i, align 8, !mcsema_real_eip !11
  store i64 %116, i64* %RCX.i, align 8, !mcsema_real_eip !11
  store i64 %5, i64* %RDX.i, align 8, !mcsema_real_eip !11
  store i64 %6, i64* %RSI.i, align 8, !mcsema_real_eip !11
  store i64 %7, i64* %RDI.i, align 8, !mcsema_real_eip !11
  store volatile i64 %122, i64* %RSP.i, align 8
  store volatile i64 %121, i64* %RBP.i, align 8
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !11
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !11
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !11
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !11
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !11
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !11
  store i1 false, i1* %CF.i, align 1, !mcsema_real_eip !11
  store i1 %108, i1* %PF.i, align 1, !mcsema_real_eip !11
  store i1 %104, i1* %AF.i, align 1, !mcsema_real_eip !11
  store i1 false, i1* %ZF.i, align 1, !mcsema_real_eip !11
  store i1 %110, i1* %SF.i, align 1, !mcsema_real_eip !11
  store i1 %113, i1* %OF.i, align 1, !mcsema_real_eip !11
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !11
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !11
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !11
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !11
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !11
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !11
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !11
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !11
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !11
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !11
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !11
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !11
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !11
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !11
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !11
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !11
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !11
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !11
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !11
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !11
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !11
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !11
  store i64 %66, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !11
  store i64 %67, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 36, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  br label %sub_0.exit

block_0x44.i:                                     ; preds = %block_0x26.i
  %_new_gep_51.i = getelementptr i8, i8* %115, i64 -24
  %_allin_new_bt_52.i = bitcast i8* %_new_gep_51.i to i64*
  %124 = load i64, i64* %_allin_new_bt_52.i, align 8, !mcsema_real_eip !20
  %125 = shl i64 %124, 3
  %126 = add i64 %125, ptrtoint (%0* @data_0x8c to i64), !mcsema_real_eip !21
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !21
  %128 = load i64, i64* %127, align 8, !mcsema_real_eip !21
  store i64 %124, i64* %RAX.i, align 8, !mcsema_real_eip !22
  %129 = extractelement <2 x i64> %4, i32 0
  store i64 %129, i64* %RBX.i, align 8, !mcsema_real_eip !22
  store i64 %128, i64* %RCX.i, align 8, !mcsema_real_eip !22
  store i64 %5, i64* %RDX.i, align 8, !mcsema_real_eip !22
  store i64 %6, i64* %RSI.i, align 8, !mcsema_real_eip !22
  store i64 %7, i64* %RDI.i, align 8, !mcsema_real_eip !22
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_53236.i = load i64, i64* %_RSP_ptr_.sroa.0.i, align 8
  store volatile i64 %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_53236.i, i64* %RSP.i, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_37247.i, i64* %RBP.i, align 8
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !22
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !22
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !22
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !22
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !22
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !22
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !22
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !22
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !22
  store i1 %111, i1* %CF.i, align 1, !mcsema_real_eip !22
  store i1 %108, i1* %PF.i, align 1, !mcsema_real_eip !22
  store i1 %104, i1* %AF.i, align 1, !mcsema_real_eip !22
  store i1 %109, i1* %ZF.i, align 1, !mcsema_real_eip !22
  store i1 %110, i1* %SF.i, align 1, !mcsema_real_eip !22
  store i1 %113, i1* %OF.i, align 1, !mcsema_real_eip !22
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !22
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !22
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !22
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !22
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !22
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !22
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !22
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !22
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !22
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !22
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !22
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !22
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !22
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !22
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !22
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !22
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !22
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !22
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !22
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !22
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !22
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !22
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !22
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !22
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !22
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !22
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !22
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !22
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !22
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !22
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !22
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !22
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !22
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !22
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !22
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !22
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !22
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !22
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !22
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !22
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !22
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !22
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !22
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !22
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !22
  store i64 %66, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !22
  store i64 %67, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !22
  call void @llvm.trap() #2
  unreachable

sub_0.exit:                                       ; preds = %block_0x66.i, %block_0x80.i
  ret void
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_5c.2(%struct.regs*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #2 {
entry:
  %_RSP_ptr_.sroa.0 = alloca i64, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_224 = alloca [28 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_224, i64 0, i64 28
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_.sroa.0, align 8
  %2 = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  %FPU_TAG_val = alloca i64, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !23
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !23
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !23
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !23
  %3 = bitcast i64* %RBX to <2 x i64>*
  %4 = load <2 x i64>, <2 x i64>* %3, align 8
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !23
  %5 = load i64, i64* %RDX, align 8, !mcsema_real_eip !23
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !23
  %6 = load i64, i64* %RSI, align 8, !mcsema_real_eip !23
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !23
  %7 = load i64, i64* %RDI, align 8, !mcsema_real_eip !23
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !23
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !23
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !23
  %8 = load i64, i64* %R8, align 8, !mcsema_real_eip !23
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !23
  %9 = load i64, i64* %R9, align 8, !mcsema_real_eip !23
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !23
  %10 = load i64, i64* %R10, align 8, !mcsema_real_eip !23
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !23
  %11 = load i64, i64* %R11, align 8, !mcsema_real_eip !23
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !23
  %12 = load i64, i64* %R12, align 8, !mcsema_real_eip !23
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !23
  %13 = load i64, i64* %R13, align 8, !mcsema_real_eip !23
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !23
  %14 = load i64, i64* %R14, align 8, !mcsema_real_eip !23
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !23
  %15 = load i64, i64* %R15, align 8, !mcsema_real_eip !23
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !23
  %16 = load i64, i64* %RIP, align 8, !mcsema_real_eip !23
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !23
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !23
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !23
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !23
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !23
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !23
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !23
  %17 = load i1, i1* %DF, align 1, !mcsema_real_eip !23
  %18 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !23
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !23
  %20 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !23
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !23
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !23
  %21 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !23
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !23
  %22 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !23
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !23
  %23 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !23
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !23
  %24 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !23
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !23
  %25 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !23
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !23
  %26 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !23
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !23
  %27 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !23
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !23
  %28 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !23
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !23
  %29 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !23
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !23
  %30 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !23
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !23
  %31 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !23
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !23
  %32 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !23
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !23
  %33 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !23
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !23
  %34 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !23
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !23
  %35 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !23
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !23
  %36 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !23
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !23
  %37 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !23
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !23
  %38 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !23
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !23
  %39 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !23
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !23
  %40 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !23
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !23
  %41 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !23
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !23
  %42 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !23
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !23
  %43 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !23
  %44 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !23
  %45 = bitcast i8* %44 to i64*
  %_ptr_to_int_ = ptrtoint i8* %44 to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %1
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %44, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %44, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %44, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_2_, %_cond2_1_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond2_, %_cond1_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  %46 = select i1 %_cond1_n_cond2_cond3_, i64* %_address_in_parent_stack_bt_, i64* %45
  %_new_load_ = load i64, i64* %46, align 8
  store i64 %_new_load_, i64* %FPU_TAG_val, align 8
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !23
  %47 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !23
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !23
  %48 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !23
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !23
  %49 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !23
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !23
  %50 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !23
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !23
  %51 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !23
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !23
  %52 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !23
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !23
  %53 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !23
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !23
  %54 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !23
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !23
  %55 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !23
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !23
  %56 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !23
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !23
  %57 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !23
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !23
  %58 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !23
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !23
  %59 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !23
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !23
  %60 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !23
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !23
  %61 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !23
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !23
  %62 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !23
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !23
  %63 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !23
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !23
  %64 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !23
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !23
  %65 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !23
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !23
  %66 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !23
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !23
  %67 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !23
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !23
  %68 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !23
  %69 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_242 = load i8*, i8** %69, align 8
  %_new_gep_ = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_242, i64 -8
  %70 = bitcast i8* %_new_gep_ to i32*
  %_ptr_to_int_57 = ptrtoint i8* %_new_gep_ to i64
  %_offset_above_rbp_60 = sub i64 %_ptr_to_int_57, %1
  %_pot_address_in_parent_stack_61 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_60
  %_cond1_62 = icmp ugt i8* %_new_gep_, %_local_stack_end_ptr_
  %_cond2_1_63 = icmp ugt i8* %_new_gep_, %_parent_stack_end_ptr_
  %_cond2_2_64 = icmp ult i8* %_new_gep_, %_parent_stack_start_ptr_
  %_cond2_65 = or i1 %_cond2_1_63, %_cond2_2_64
  %_cond4_66 = icmp ule i8* %_pot_address_in_parent_stack_61, %_parent_stack_end_ptr_
  %_cond1_n_cond2_67 = and i1 %_cond1_62, %_cond2_65
  %_cond1_n_cond2_cond3_68 = and i1 %_cond1_n_cond2_67, %_cond4_66
  %_address_in_parent_stack_bt_70 = bitcast i8* %_pot_address_in_parent_stack_61 to i32*
  %71 = select i1 %_cond1_n_cond2_cond3_68, i32* %_address_in_parent_stack_bt_70, i32* %70
  %_new_load_71 = load i32, i32* %71, align 4
  %72 = add i32 %_new_load_71, 1
  store i32 %72, i32* %70, align 4, !mcsema_real_eip !24
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4243 = load i8*, i8** %69, align 8
  %_new_gep_5 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4243, i64 -8
  %_ptr_to_int_72 = ptrtoint i8* %_new_gep_5 to i64
  %_offset_above_rbp_75 = sub i64 %_ptr_to_int_72, %1
  %_pot_address_in_parent_stack_76 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_75
  %_cond1_77 = icmp ugt i8* %_new_gep_5, %_local_stack_end_ptr_
  %_cond2_1_78 = icmp ugt i8* %_new_gep_5, %_parent_stack_end_ptr_
  %_cond2_2_79 = icmp ult i8* %_new_gep_5, %_parent_stack_start_ptr_
  %_cond2_80 = or i1 %_cond2_1_78, %_cond2_2_79
  %_cond4_81 = icmp ule i8* %_pot_address_in_parent_stack_76, %_parent_stack_end_ptr_
  %_cond1_n_cond2_82 = and i1 %_cond1_77, %_cond2_80
  %_cond1_n_cond2_cond3_83 = and i1 %_cond1_n_cond2_82, %_cond4_81
  %.v = select i1 %_cond1_n_cond2_cond3_83, i8* %_pot_address_in_parent_stack_76, i8* %_new_gep_5
  %73 = bitcast i8* %.v to i32*
  %_new_load_86 = load i32, i32* %73, align 4
  %74 = add i32 %_new_load_86, -1
  %75 = xor i32 %74, %_new_load_86, !mcsema_real_eip !7
  %76 = icmp slt i32 %74, 0
  %77 = and i32 %75, %_new_load_86, !mcsema_real_eip !7
  %78 = icmp slt i32 %77, 0
  %tmp = xor i1 %76, %78
  br i1 %tmp, label %block_0x26, label %block_0x80, !mcsema_real_eip !8

block_0x80:                                       ; preds = %entry
  %79 = icmp eq i32 %_new_load_86, 0
  %80 = icmp eq i32 %74, 0, !mcsema_real_eip !7
  %81 = trunc i32 %74 to i8, !mcsema_real_eip !7
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !7
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  %85 = and i32 %75, 16, !mcsema_real_eip !7
  %86 = icmp ne i32 %85, 0, !mcsema_real_eip !7
  %_new_gep_8 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4243, i64 -4
  %87 = bitcast i8* %_new_gep_8 to i32*
  store i32 1, i32* %87, align 4, !mcsema_real_eip !9
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10244 = load i8*, i8** %69, align 8
  %_new_gep_11 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10244, i64 -4
  %_ptr_to_int_87 = ptrtoint i8* %_new_gep_11 to i64
  %_offset_above_rbp_90 = sub i64 %_ptr_to_int_87, %1
  %_pot_address_in_parent_stack_91 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_90
  %_cond1_92 = icmp ugt i8* %_new_gep_11, %_local_stack_end_ptr_
  %_cond2_1_93 = icmp ugt i8* %_new_gep_11, %_parent_stack_end_ptr_
  %_cond2_2_94 = icmp ult i8* %_new_gep_11, %_parent_stack_start_ptr_
  %_cond2_95 = or i1 %_cond2_1_93, %_cond2_2_94
  %_cond4_96 = icmp ule i8* %_pot_address_in_parent_stack_91, %_parent_stack_end_ptr_
  %_cond1_n_cond2_97 = and i1 %_cond1_92, %_cond2_95
  %_cond1_n_cond2_cond3_98 = and i1 %_cond1_n_cond2_97, %_cond4_96
  %.v225 = select i1 %_cond1_n_cond2_cond3_98, i8* %_pot_address_in_parent_stack_91, i8* %_new_gep_11
  %88 = bitcast i8* %.v225 to i32*
  %_new_load_101 = load i32, i32* %88, align 4
  %89 = zext i32 %_new_load_101 to i64, !mcsema_real_eip !10
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_ = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %90 = inttoptr i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_ to i8*
  %_offset_above_rbp_105 = sub i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_, %1
  %_pot_address_in_parent_stack_106 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_105
  %_cond1_107 = icmp ugt i8* %90, %_local_stack_end_ptr_
  %_cond2_1_108 = icmp ugt i8* %90, %_parent_stack_end_ptr_
  %_cond2_2_109 = icmp ult i8* %90, %_parent_stack_start_ptr_
  %_cond2_110 = or i1 %_cond2_1_108, %_cond2_2_109
  %_cond4_111 = icmp ule i8* %_pot_address_in_parent_stack_106, %_parent_stack_end_ptr_
  %_cond1_n_cond2_112 = and i1 %_cond1_107, %_cond2_110
  %_cond1_n_cond2_cond3_113 = and i1 %_cond4_111, %_cond1_n_cond2_112
  %.v226 = select i1 %_cond1_n_cond2_cond3_113, i8* %_pot_address_in_parent_stack_106, i8* %90
  %91 = bitcast i8* %.v226 to i64*
  %_new_load_116227228 = load i64, i64* %91, align 8
  store volatile i64 %_new_load_116227228, i64* %_RBP_ptr_.sroa.0, align 8
  %_new_gep_14 = getelementptr i8, i8* %90, i64 16
  %92 = ptrtoint i8* %_new_gep_14 to i64
  store volatile i64 %92, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %89, i64* %RAX, align 8, !mcsema_real_eip !11
  %93 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %93, align 8
  store i64 %5, i64* %RDX, align 8, !mcsema_real_eip !11
  store i64 %6, i64* %RSI, align 8, !mcsema_real_eip !11
  store i64 %7, i64* %RDI, align 8, !mcsema_real_eip !11
  store volatile i64 %92, i64* %RSP, align 8
  store volatile i64 %_new_load_116227228, i64* %RBP, align 8
  store i64 %8, i64* %R8, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R9, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R10, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %R11, align 8, !mcsema_real_eip !11
  store i64 %12, i64* %R12, align 8, !mcsema_real_eip !11
  store i64 %13, i64* %R13, align 8, !mcsema_real_eip !11
  store i64 %14, i64* %R14, align 8, !mcsema_real_eip !11
  store i64 %15, i64* %R15, align 8, !mcsema_real_eip !11
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !11
  store i1 %79, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !11
  store i1 %86, i1* %AF, align 1, !mcsema_real_eip !11
  store i1 %80, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 %76, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 %78, i1* %OF, align 1, !mcsema_real_eip !11
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %20, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %21, i1* %FPU_B, align 1, !mcsema_real_eip !11
  store i1 %22, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  store i3 %23, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  store i1 %32, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  store i1 %33, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  store i1 %34, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  store i1 %35, i1* %FPU_X, align 1, !mcsema_real_eip !11
  store i2 %36, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  store i2 %37, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  store i1 %40, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  store i1 %41, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  store i1 %42, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  store i1 %43, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  %_ptr_to_int_117 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_119 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_120 = sub i64 %_ptr_to_int_117, %1
  %_pot_address_in_parent_stack_121 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_120
  %_cond1_122 = icmp ugt i8* %_ptr_bt_119, %_local_stack_end_ptr_
  %_cond2_1_123 = icmp ugt i8* %_ptr_bt_119, %_parent_stack_end_ptr_
  %_cond2_2_124 = icmp ult i8* %_ptr_bt_119, %_parent_stack_start_ptr_
  %_cond2_125 = or i1 %_cond2_1_123, %_cond2_2_124
  %_cond4_126 = icmp ule i8* %_pot_address_in_parent_stack_121, %_parent_stack_end_ptr_
  %_cond1_n_cond2_127 = and i1 %_cond1_122, %_cond2_125
  %_cond1_n_cond2_cond3_128 = and i1 %_cond1_n_cond2_127, %_cond4_126
  %_address_in_parent_stack_bt_130 = bitcast i8* %_pot_address_in_parent_stack_121 to i64*
  %94 = select i1 %_cond1_n_cond2_cond3_128, i64* %_address_in_parent_stack_bt_130, i64* %FPU_TAG_val
  %_new_load_131 = load i64, i64* %94, align 8
  store i64 %_new_load_131, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  store i64 %48, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  store i16 %49, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  store i64 %50, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !11
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !11
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !11
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !11
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !11
  store i64 %67, i64* %STACK_BASE, align 1, !mcsema_real_eip !11
  store i64 %68, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11

block_0x26:                                       ; preds = %entry
  %95 = sext i32 %_new_load_86 to i64, !mcsema_real_eip !12
  %_new_gep_21 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4243, i64 -9
  %_new_gep_22 = getelementptr i8, i8* %_new_gep_21, i64 %95
  %_ptr_to_int_147 = ptrtoint i8* %_new_gep_22 to i64
  %_offset_above_rbp_149 = sub i64 %_ptr_to_int_147, %1
  %_pot_address_in_parent_stack_150 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_149
  %_cond1_151 = icmp ugt i8* %_new_gep_22, %_local_stack_end_ptr_
  %_cond2_1_152 = icmp ugt i8* %_new_gep_22, %_parent_stack_end_ptr_
  %_cond2_2_153 = icmp ult i8* %_new_gep_22, %_parent_stack_start_ptr_
  %_cond2_154 = or i1 %_cond2_1_152, %_cond2_2_153
  %_cond4_155 = icmp ule i8* %_pot_address_in_parent_stack_150, %_parent_stack_end_ptr_
  %_cond1_n_cond2_156 = and i1 %_cond1_151, %_cond2_154
  %_cond1_n_cond2_cond3_157 = and i1 %_cond1_n_cond2_156, %_cond4_155
  %_address_in_parent_stack_158. = select i1 %_cond1_n_cond2_cond3_157, i8* %_pot_address_in_parent_stack_150, i8* %_new_gep_22
  %_new_load_159 = load i8, i8* %_address_in_parent_stack_158., align 1
  %96 = sext i8 %_new_load_159 to i32, !mcsema_real_eip !13
  %97 = add nsw i32 %96, -97
  %98 = zext i32 %97 to i64, !mcsema_real_eip !14
  %99 = add nsw i32 %96, -119
  %100 = xor i32 %99, %97, !mcsema_real_eip !15
  %101 = and i32 %100, 16
  %102 = icmp eq i32 %101, 0
  %103 = trunc i32 %99 to i8, !mcsema_real_eip !15
  %104 = tail call i8 @llvm.ctpop.i8(i8 %103), !mcsema_real_eip !15
  %105 = and i8 %104, 1
  %106 = icmp eq i8 %105, 0
  %107 = icmp eq i32 %99, 0, !mcsema_real_eip !15
  %108 = icmp slt i8 %_new_load_159, 119
  %109 = icmp ult i32 %97, 22, !mcsema_real_eip !15
  %110 = and i32 %100, %97, !mcsema_real_eip !15
  %111 = icmp slt i32 %110, 0
  %_new_gep_25 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4243, i64 -24
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  store i64 %98, i64* %_allin_new_bt_26, align 8, !mcsema_real_eip !16
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_27245 = load i8*, i8** %69, align 8
  %_new_gep_28 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_27245, i64 -28
  %112 = bitcast i8* %_new_gep_28 to i32*
  store i32 %99, i32* %112, align 4, !mcsema_real_eip !17
  %.demorgan = or i1 %109, %107
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_30246 = load i8*, i8** %69, align 8
  br i1 %.demorgan, label %block_0x44, label %block_0x66, !mcsema_real_eip !18

block_0x66:                                       ; preds = %block_0x26
  %113 = zext i32 %99 to i64, !mcsema_real_eip !15
  %_new_gep_31 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_30246, i64 -4
  %114 = bitcast i8* %_new_gep_31 to i32*
  store i32 1, i32* %114, align 4, !mcsema_real_eip !19
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_33247 = load i8*, i8** %69, align 8
  %_new_gep_34 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_33247, i64 -4
  %_ptr_to_int_160 = ptrtoint i8* %_new_gep_34 to i64
  %_offset_above_rbp_163 = sub i64 %_ptr_to_int_160, %1
  %_pot_address_in_parent_stack_164 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_163
  %_cond1_165 = icmp ugt i8* %_new_gep_34, %_local_stack_end_ptr_
  %_cond2_1_166 = icmp ugt i8* %_new_gep_34, %_parent_stack_end_ptr_
  %_cond2_2_167 = icmp ult i8* %_new_gep_34, %_parent_stack_start_ptr_
  %_cond2_168 = or i1 %_cond2_1_166, %_cond2_2_167
  %_cond4_169 = icmp ule i8* %_pot_address_in_parent_stack_164, %_parent_stack_end_ptr_
  %_cond1_n_cond2_170 = and i1 %_cond1_165, %_cond2_168
  %_cond1_n_cond2_cond3_171 = and i1 %_cond1_n_cond2_170, %_cond4_169
  %.v231 = select i1 %_cond1_n_cond2_cond3_171, i8* %_pot_address_in_parent_stack_164, i8* %_new_gep_34
  %115 = bitcast i8* %.v231 to i32*
  %_new_load_174 = load i32, i32* %115, align 4
  %116 = zext i32 %_new_load_174 to i64, !mcsema_real_eip !10
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_36 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %117 = inttoptr i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_36 to i8*
  %_offset_above_rbp_178 = sub i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_36, %1
  %_pot_address_in_parent_stack_179 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_178
  %_cond1_180 = icmp ugt i8* %117, %_local_stack_end_ptr_
  %_cond2_1_181 = icmp ugt i8* %117, %_parent_stack_end_ptr_
  %_cond2_2_182 = icmp ult i8* %117, %_parent_stack_start_ptr_
  %_cond2_183 = or i1 %_cond2_1_181, %_cond2_2_182
  %_cond4_184 = icmp ule i8* %_pot_address_in_parent_stack_179, %_parent_stack_end_ptr_
  %_cond1_n_cond2_185 = and i1 %_cond1_180, %_cond2_183
  %_cond1_n_cond2_cond3_186 = and i1 %_cond4_184, %_cond1_n_cond2_185
  %.v232 = select i1 %_cond1_n_cond2_cond3_186, i8* %_pot_address_in_parent_stack_179, i8* %117
  %118 = bitcast i8* %.v232 to i64*
  %_new_load_189233234 = load i64, i64* %118, align 8
  store volatile i64 %_new_load_189233234, i64* %_RBP_ptr_.sroa.0, align 8
  %_new_gep_39 = getelementptr i8, i8* %117, i64 16
  %119 = ptrtoint i8* %_new_gep_39 to i64
  store volatile i64 %119, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %116, i64* %RAX, align 8, !mcsema_real_eip !11
  %120 = extractelement <2 x i64> %4, i32 0
  store i64 %120, i64* %RBX, align 8, !mcsema_real_eip !11
  store i64 %113, i64* %RCX, align 8, !mcsema_real_eip !11
  store i64 %5, i64* %RDX, align 8, !mcsema_real_eip !11
  store i64 %6, i64* %RSI, align 8, !mcsema_real_eip !11
  store i64 %7, i64* %RDI, align 8, !mcsema_real_eip !11
  store volatile i64 %119, i64* %RSP, align 8
  store volatile i64 %_new_load_189233234, i64* %RBP, align 8
  store i64 %8, i64* %R8, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R9, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R10, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %R11, align 8, !mcsema_real_eip !11
  store i64 %12, i64* %R12, align 8, !mcsema_real_eip !11
  store i64 %13, i64* %R13, align 8, !mcsema_real_eip !11
  store i64 %14, i64* %R14, align 8, !mcsema_real_eip !11
  store i64 %15, i64* %R15, align 8, !mcsema_real_eip !11
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !11
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 %106, i1* %PF, align 1, !mcsema_real_eip !11
  store i1 %102, i1* %AF, align 1, !mcsema_real_eip !11
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 %108, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 %111, i1* %OF, align 1, !mcsema_real_eip !11
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %20, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %21, i1* %FPU_B, align 1, !mcsema_real_eip !11
  store i1 %22, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  store i3 %23, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  store i1 %32, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  store i1 %33, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  store i1 %34, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  store i1 %35, i1* %FPU_X, align 1, !mcsema_real_eip !11
  store i2 %36, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  store i2 %37, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  store i1 %40, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  store i1 %41, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  store i1 %42, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  store i1 %43, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  %_ptr_to_int_190 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_192 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_193 = sub i64 %_ptr_to_int_190, %1
  %_pot_address_in_parent_stack_194 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_193
  %_cond1_195 = icmp ugt i8* %_ptr_bt_192, %_local_stack_end_ptr_
  %_cond2_1_196 = icmp ugt i8* %_ptr_bt_192, %_parent_stack_end_ptr_
  %_cond2_2_197 = icmp ult i8* %_ptr_bt_192, %_parent_stack_start_ptr_
  %_cond2_198 = or i1 %_cond2_1_196, %_cond2_2_197
  %_cond4_199 = icmp ule i8* %_pot_address_in_parent_stack_194, %_parent_stack_end_ptr_
  %_cond1_n_cond2_200 = and i1 %_cond1_195, %_cond2_198
  %_cond1_n_cond2_cond3_201 = and i1 %_cond1_n_cond2_200, %_cond4_199
  %_address_in_parent_stack_bt_203 = bitcast i8* %_pot_address_in_parent_stack_194 to i64*
  %121 = select i1 %_cond1_n_cond2_cond3_201, i64* %_address_in_parent_stack_bt_203, i64* %FPU_TAG_val
  %_new_load_204 = load i64, i64* %121, align 8
  store i64 %_new_load_204, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  store i64 %48, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  store i16 %49, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  store i64 %50, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !11
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !11
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !11
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !11
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !11
  store i64 %67, i64* %STACK_BASE, align 1, !mcsema_real_eip !11
  store i64 %68, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11

block_0x44:                                       ; preds = %block_0x26
  %122 = ptrtoint i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_30246 to i64
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_30246, i64 -24
  %_ptr_to_int_205 = ptrtoint i8* %_new_gep_44 to i64
  %_offset_above_rbp_208 = sub i64 %_ptr_to_int_205, %1
  %_pot_address_in_parent_stack_209 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_208
  %_cond1_210 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_211 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_212 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_213 = or i1 %_cond2_1_211, %_cond2_2_212
  %_cond4_214 = icmp ule i8* %_pot_address_in_parent_stack_209, %_parent_stack_end_ptr_
  %_cond1_n_cond2_215 = and i1 %_cond1_210, %_cond2_213
  %_cond1_n_cond2_cond3_216 = and i1 %_cond1_n_cond2_215, %_cond4_214
  %.v237 = select i1 %_cond1_n_cond2_cond3_216, i8* %_pot_address_in_parent_stack_209, i8* %_new_gep_44
  %123 = bitcast i8* %.v237 to i64*
  %_new_load_219 = load i64, i64* %123, align 8
  %124 = shl i64 %_new_load_219, 3
  %125 = add i64 %124, ptrtoint (%0* @data_0x8c to i64), !mcsema_real_eip !21
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !21
  %_ptr_bt_222 = inttoptr i64 %125 to i8*
  %_offset_above_rbp_223 = sub i64 %125, %1
  %_pot_address_in_parent_stack_224 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_223
  %_cond1_225 = icmp ugt i8* %_ptr_bt_222, %_local_stack_end_ptr_
  %_cond2_1_226 = icmp ugt i8* %_ptr_bt_222, %_parent_stack_end_ptr_
  %_cond2_2_227 = icmp ult i8* %_ptr_bt_222, %_parent_stack_start_ptr_
  %_cond2_228 = or i1 %_cond2_1_226, %_cond2_2_227
  %_cond4_229 = icmp ule i8* %_pot_address_in_parent_stack_224, %_parent_stack_end_ptr_
  %_cond1_n_cond2_230 = and i1 %_cond1_225, %_cond2_228
  %_cond1_n_cond2_cond3_231 = and i1 %_cond4_229, %_cond1_n_cond2_230
  %_address_in_parent_stack_bt_233 = bitcast i8* %_pot_address_in_parent_stack_224 to i64*
  %127 = select i1 %_cond1_n_cond2_cond3_231, i64* %_address_in_parent_stack_bt_233, i64* %126
  %_new_load_234 = load i64, i64* %127, align 8
  store i64 %_new_load_219, i64* %RAX, align 8, !mcsema_real_eip !22
  %128 = extractelement <2 x i64> %4, i32 0
  store i64 %128, i64* %RBX, align 8, !mcsema_real_eip !22
  store i64 %_new_load_234, i64* %RCX, align 8, !mcsema_real_eip !22
  store i64 %5, i64* %RDX, align 8, !mcsema_real_eip !22
  store i64 %6, i64* %RSI, align 8, !mcsema_real_eip !22
  store i64 %7, i64* %RDI, align 8, !mcsema_real_eip !22
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_46238 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  store volatile i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_46238, i64* %RSP, align 8
  store volatile i64 %122, i64* %RBP, align 8
  store i64 %8, i64* %R8, align 8, !mcsema_real_eip !22
  store i64 %9, i64* %R9, align 8, !mcsema_real_eip !22
  store i64 %10, i64* %R10, align 8, !mcsema_real_eip !22
  store i64 %11, i64* %R11, align 8, !mcsema_real_eip !22
  store i64 %12, i64* %R12, align 8, !mcsema_real_eip !22
  store i64 %13, i64* %R13, align 8, !mcsema_real_eip !22
  store i64 %14, i64* %R14, align 8, !mcsema_real_eip !22
  store i64 %15, i64* %R15, align 8, !mcsema_real_eip !22
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !22
  store i1 %109, i1* %CF, align 1, !mcsema_real_eip !22
  store i1 %106, i1* %PF, align 1, !mcsema_real_eip !22
  store i1 %102, i1* %AF, align 1, !mcsema_real_eip !22
  store i1 %107, i1* %ZF, align 1, !mcsema_real_eip !22
  store i1 %108, i1* %SF, align 1, !mcsema_real_eip !22
  store i1 %111, i1* %OF, align 1, !mcsema_real_eip !22
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !22
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %20, i32 128, i32 8, i1 false), !mcsema_real_eip !22
  store i1 %21, i1* %FPU_B, align 1, !mcsema_real_eip !22
  store i1 %22, i1* %FPU_C3, align 1, !mcsema_real_eip !22
  store i3 %23, i3* %FPU_TOP, align 1, !mcsema_real_eip !22
  store i1 %24, i1* %FPU_C2, align 1, !mcsema_real_eip !22
  store i1 %25, i1* %FPU_C1, align 1, !mcsema_real_eip !22
  store i1 %26, i1* %FPU_C0, align 1, !mcsema_real_eip !22
  store i1 %27, i1* %FPU_ES, align 1, !mcsema_real_eip !22
  store i1 %28, i1* %FPU_SF, align 1, !mcsema_real_eip !22
  store i1 %29, i1* %FPU_PE, align 1, !mcsema_real_eip !22
  store i1 %30, i1* %FPU_UE, align 1, !mcsema_real_eip !22
  store i1 %31, i1* %FPU_OE, align 1, !mcsema_real_eip !22
  store i1 %32, i1* %FPU_ZE, align 1, !mcsema_real_eip !22
  store i1 %33, i1* %FPU_DE, align 1, !mcsema_real_eip !22
  store i1 %34, i1* %FPU_IE, align 1, !mcsema_real_eip !22
  store i1 %35, i1* %FPU_X, align 1, !mcsema_real_eip !22
  store i2 %36, i2* %FPU_RC, align 1, !mcsema_real_eip !22
  store i2 %37, i2* %FPU_PC, align 1, !mcsema_real_eip !22
  store i1 %38, i1* %FPU_PM, align 1, !mcsema_real_eip !22
  store i1 %39, i1* %FPU_UM, align 1, !mcsema_real_eip !22
  store i1 %40, i1* %FPU_OM, align 1, !mcsema_real_eip !22
  store i1 %41, i1* %FPU_ZM, align 1, !mcsema_real_eip !22
  store i1 %42, i1* %FPU_DM, align 1, !mcsema_real_eip !22
  store i1 %43, i1* %FPU_IM, align 1, !mcsema_real_eip !22
  %_ptr_to_int_235 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_237 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_238 = sub i64 %_ptr_to_int_235, %1
  %_pot_address_in_parent_stack_239 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_238
  %_cond1_240 = icmp ugt i8* %_ptr_bt_237, %_local_stack_end_ptr_
  %_cond2_1_241 = icmp ugt i8* %_ptr_bt_237, %_parent_stack_end_ptr_
  %_cond2_2_242 = icmp ult i8* %_ptr_bt_237, %_parent_stack_start_ptr_
  %_cond2_243 = or i1 %_cond2_1_241, %_cond2_2_242
  %_cond4_244 = icmp ule i8* %_pot_address_in_parent_stack_239, %_parent_stack_end_ptr_
  %_cond1_n_cond2_245 = and i1 %_cond1_240, %_cond2_243
  %_cond1_n_cond2_cond3_246 = and i1 %_cond1_n_cond2_245, %_cond4_244
  %_address_in_parent_stack_bt_248 = bitcast i8* %_pot_address_in_parent_stack_239 to i64*
  %129 = select i1 %_cond1_n_cond2_cond3_246, i64* %_address_in_parent_stack_bt_248, i64* %FPU_TAG_val
  %_new_load_249 = load i64, i64* %129, align 8
  store i64 %_new_load_249, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !22
  store i64 %48, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !22
  store i16 %49, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !22
  store i64 %50, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !22
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !22
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !22
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !22
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !22
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !22
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !22
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !22
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !22
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !22
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !22
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !22
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !22
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !22
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !22
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !22
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !22
  store i64 %67, i64* %STACK_BASE, align 1, !mcsema_real_eip !22
  store i64 %68, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !22
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_66.3(%struct.regs*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #2 {
entry:
  %_RSP_ptr_.sroa.0 = alloca i64, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_4 = alloca [4 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [4 x i8], [4 x i8]* %_local_stack_start_ptr_4, i64 0, i64 4
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_.sroa.0, align 8
  %2 = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  %FPU_TAG_val = alloca i64, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !19
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !19
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !19
  %3 = bitcast i64* %RBX to <2 x i64>*
  %4 = load <2 x i64>, <2 x i64>* %3, align 8
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !19
  %5 = bitcast i64* %RDX to <2 x i64>*
  %6 = load <2 x i64>, <2 x i64>* %5, align 8
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !19
  %7 = load i64, i64* %RDI, align 8, !mcsema_real_eip !19
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !19
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !19
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !19
  %8 = bitcast i64* %R8 to <2 x i64>*
  %9 = load <2 x i64>, <2 x i64>* %8, align 8
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !19
  %10 = bitcast i64* %R10 to <2 x i64>*
  %11 = load <2 x i64>, <2 x i64>* %10, align 8
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !19
  %12 = bitcast i64* %R12 to <2 x i64>*
  %13 = load <2 x i64>, <2 x i64>* %12, align 8
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !19
  %14 = bitcast i64* %R14 to <2 x i64>*
  %15 = load <2 x i64>, <2 x i64>* %14, align 8
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !19
  %16 = load i64, i64* %RIP, align 8, !mcsema_real_eip !19
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !19
  %17 = load i1, i1* %CF, align 1, !mcsema_real_eip !19
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !19
  %18 = load i1, i1* %PF, align 1, !mcsema_real_eip !19
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !19
  %19 = load i1, i1* %AF, align 1, !mcsema_real_eip !19
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !19
  %20 = load i1, i1* %ZF, align 1, !mcsema_real_eip !19
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !19
  %21 = load i1, i1* %SF, align 1, !mcsema_real_eip !19
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !19
  %22 = load i1, i1* %OF, align 1, !mcsema_real_eip !19
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !19
  %23 = load i1, i1* %DF, align 1, !mcsema_real_eip !19
  %24 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !19
  %25 = bitcast x86_fp80* %24 to i8*, !mcsema_real_eip !19
  %26 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !19
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %26, i8* %25, i32 128, i32 4, i1 false), !mcsema_real_eip !19
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !19
  %27 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !19
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !19
  %28 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !19
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !19
  %29 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !19
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !19
  %30 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !19
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !19
  %31 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !19
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !19
  %32 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !19
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !19
  %33 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !19
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !19
  %34 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !19
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !19
  %35 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !19
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !19
  %36 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !19
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !19
  %37 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !19
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !19
  %38 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !19
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !19
  %39 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !19
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !19
  %40 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !19
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !19
  %41 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !19
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !19
  %42 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !19
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !19
  %43 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !19
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !19
  %44 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !19
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !19
  %45 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !19
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !19
  %46 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !19
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !19
  %47 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !19
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !19
  %48 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !19
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !19
  %49 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !19
  %50 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !19
  %51 = bitcast i8* %50 to i64*
  %_ptr_to_int_ = ptrtoint i8* %50 to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %1
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %50, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %50, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %50, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_2_, %_cond2_1_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond2_, %_cond1_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  %52 = select i1 %_cond1_n_cond2_cond3_, i64* %_address_in_parent_stack_bt_, i64* %51
  %_new_load_ = load i64, i64* %52, align 8
  store i64 %_new_load_, i64* %FPU_TAG_val, align 8
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !19
  %53 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !19
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !19
  %54 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !19
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !19
  %55 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !19
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !19
  %56 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !19
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !19
  %57 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !19
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !19
  %58 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !19
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !19
  %59 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !19
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !19
  %60 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !19
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !19
  %61 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !19
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !19
  %62 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !19
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !19
  %63 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !19
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !19
  %64 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !19
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !19
  %65 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !19
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !19
  %66 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !19
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !19
  %67 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !19
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !19
  %68 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !19
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !19
  %69 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !19
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !19
  %70 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !19
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !19
  %71 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !19
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !19
  %72 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !19
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !19
  %73 = bitcast i64* %STACK_BASE to <2 x i64>*
  %74 = load <2 x i64>, <2 x i64>* %73, align 8
  %75 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10 = load i8*, i8** %75, align 8
  %_new_gep_ = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10, i64 -4
  %76 = bitcast i8* %_new_gep_ to i32*
  store i32 1, i32* %76, align 4, !mcsema_real_eip !19
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_111 = load i8*, i8** %75, align 8
  %_new_gep_2 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_111, i64 -4
  %_ptr_to_int_9 = ptrtoint i8* %_new_gep_2 to i64
  %_offset_above_rbp_12 = sub i64 %_ptr_to_int_9, %1
  %_pot_address_in_parent_stack_13 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_12
  %_cond1_14 = icmp ugt i8* %_new_gep_2, %_local_stack_end_ptr_
  %_cond2_1_15 = icmp ugt i8* %_new_gep_2, %_parent_stack_end_ptr_
  %_cond2_2_16 = icmp ult i8* %_new_gep_2, %_parent_stack_start_ptr_
  %_cond2_17 = or i1 %_cond2_1_15, %_cond2_2_16
  %_cond4_18 = icmp ule i8* %_pot_address_in_parent_stack_13, %_parent_stack_end_ptr_
  %_cond1_n_cond2_19 = and i1 %_cond1_14, %_cond2_17
  %_cond1_n_cond2_cond3_20 = and i1 %_cond1_n_cond2_19, %_cond4_18
  %.v = select i1 %_cond1_n_cond2_cond3_20, i8* %_pot_address_in_parent_stack_13, i8* %_new_gep_2
  %77 = bitcast i8* %.v to i32*
  %_new_load_23 = load i32, i32* %77, align 4
  %78 = zext i32 %_new_load_23 to i64, !mcsema_real_eip !10
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_ = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %79 = inttoptr i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_ to i8*
  %_offset_above_rbp_27 = sub i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_, %1
  %_pot_address_in_parent_stack_28 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_27
  %_cond1_29 = icmp ugt i8* %79, %_local_stack_end_ptr_
  %_cond2_1_30 = icmp ugt i8* %79, %_parent_stack_end_ptr_
  %_cond2_2_31 = icmp ult i8* %79, %_parent_stack_start_ptr_
  %_cond2_32 = or i1 %_cond2_1_30, %_cond2_2_31
  %_cond4_33 = icmp ule i8* %_pot_address_in_parent_stack_28, %_parent_stack_end_ptr_
  %_cond1_n_cond2_34 = and i1 %_cond1_29, %_cond2_32
  %_cond1_n_cond2_cond3_35 = and i1 %_cond4_33, %_cond1_n_cond2_34
  %.v5 = select i1 %_cond1_n_cond2_cond3_35, i8* %_pot_address_in_parent_stack_28, i8* %79
  %80 = bitcast i8* %.v5 to i64*
  %_new_load_3867 = load i64, i64* %80, align 8
  store volatile i64 %_new_load_3867, i64* %_RBP_ptr_.sroa.0, align 8
  %_new_gep_5 = getelementptr i8, i8* %79, i64 16
  %81 = ptrtoint i8* %_new_gep_5 to i64
  store volatile i64 %81, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %78, i64* %RAX, align 8, !mcsema_real_eip !11
  %82 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %82, align 8
  %83 = bitcast i64* %RDX to <2 x i64>*
  store <2 x i64> %6, <2 x i64>* %83, align 8
  store i64 %7, i64* %RDI, align 8, !mcsema_real_eip !11
  store volatile i64 %81, i64* %RSP, align 8
  store volatile i64 %_new_load_3867, i64* %RBP, align 8
  %84 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %84, align 8
  %85 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %85, align 8
  %86 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %86, align 8
  %87 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %87, align 8
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !11
  store i1 %17, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 %18, i1* %PF, align 1, !mcsema_real_eip !11
  store i1 %19, i1* %AF, align 1, !mcsema_real_eip !11
  store i1 %20, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 %21, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 %22, i1* %OF, align 1, !mcsema_real_eip !11
  store i1 %23, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %25, i8* nonnull %26, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %27, i1* %FPU_B, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  store i3 %29, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  store i1 %32, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  store i1 %33, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  store i1 %34, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  store i1 %35, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  store i1 %36, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  store i1 %37, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  store i1 %40, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  store i1 %41, i1* %FPU_X, align 1, !mcsema_real_eip !11
  store i2 %42, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  store i2 %43, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  store i1 %44, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  store i1 %45, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  store i1 %46, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  store i1 %47, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  store i1 %48, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  store i1 %49, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  %_ptr_to_int_39 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_41 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_42 = sub i64 %_ptr_to_int_39, %1
  %_pot_address_in_parent_stack_43 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_42
  %_cond1_44 = icmp ugt i8* %_ptr_bt_41, %_local_stack_end_ptr_
  %_cond2_1_45 = icmp ugt i8* %_ptr_bt_41, %_parent_stack_end_ptr_
  %_cond2_2_46 = icmp ult i8* %_ptr_bt_41, %_parent_stack_start_ptr_
  %_cond2_47 = or i1 %_cond2_1_45, %_cond2_2_46
  %_cond4_48 = icmp ule i8* %_pot_address_in_parent_stack_43, %_parent_stack_end_ptr_
  %_cond1_n_cond2_49 = and i1 %_cond1_44, %_cond2_47
  %_cond1_n_cond2_cond3_50 = and i1 %_cond1_n_cond2_49, %_cond4_48
  %_address_in_parent_stack_bt_52 = bitcast i8* %_pot_address_in_parent_stack_43 to i64*
  %88 = select i1 %_cond1_n_cond2_cond3_50, i64* %_address_in_parent_stack_bt_52, i64* %FPU_TAG_val
  %_new_load_53 = load i64, i64* %88, align 8
  store i64 %_new_load_53, i64* %51, align 4
  store i16 %53, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  store i64 %54, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  store i16 %55, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  store i64 %56, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM0, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM1, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM2, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM3, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM4, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM5, align 1, !mcsema_real_eip !11
  store i128 %63, i128* %XMM6, align 1, !mcsema_real_eip !11
  store i128 %64, i128* %XMM7, align 1, !mcsema_real_eip !11
  store i128 %65, i128* %XMM8, align 1, !mcsema_real_eip !11
  store i128 %66, i128* %XMM9, align 1, !mcsema_real_eip !11
  store i128 %67, i128* %XMM10, align 1, !mcsema_real_eip !11
  store i128 %68, i128* %XMM11, align 1, !mcsema_real_eip !11
  store i128 %69, i128* %XMM12, align 1, !mcsema_real_eip !11
  store i128 %70, i128* %XMM13, align 1, !mcsema_real_eip !11
  store i128 %71, i128* %XMM14, align 1, !mcsema_real_eip !11
  store i128 %72, i128* %XMM15, align 1, !mcsema_real_eip !11
  %89 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %74, <2 x i64>* %89, align 1
  ret void, !mcsema_real_eip !11
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_61.4(%struct.regs*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #2 {
entry:
  %_RSP_ptr_.sroa.0 = alloca i64, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_224 = alloca [28 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_224, i64 0, i64 28
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_.sroa.0, align 8
  %2 = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  %FPU_TAG_val = alloca i64, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !25
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !25
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !25
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !25
  %3 = bitcast i64* %RBX to <2 x i64>*
  %4 = load <2 x i64>, <2 x i64>* %3, align 8
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !25
  %5 = load i64, i64* %RDX, align 8, !mcsema_real_eip !25
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !25
  %6 = load i64, i64* %RSI, align 8, !mcsema_real_eip !25
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !25
  %7 = load i64, i64* %RDI, align 8, !mcsema_real_eip !25
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !25
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !25
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !25
  %8 = load i64, i64* %R8, align 8, !mcsema_real_eip !25
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !25
  %9 = load i64, i64* %R9, align 8, !mcsema_real_eip !25
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !25
  %10 = load i64, i64* %R10, align 8, !mcsema_real_eip !25
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !25
  %11 = load i64, i64* %R11, align 8, !mcsema_real_eip !25
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !25
  %12 = load i64, i64* %R12, align 8, !mcsema_real_eip !25
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !25
  %13 = load i64, i64* %R13, align 8, !mcsema_real_eip !25
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !25
  %14 = load i64, i64* %R14, align 8, !mcsema_real_eip !25
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !25
  %15 = load i64, i64* %R15, align 8, !mcsema_real_eip !25
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !25
  %16 = load i64, i64* %RIP, align 8, !mcsema_real_eip !25
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !25
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !25
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !25
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !25
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !25
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !25
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !25
  %17 = load i1, i1* %DF, align 1, !mcsema_real_eip !25
  %18 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !25
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !25
  %20 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !25
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !25
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !25
  %21 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !25
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !25
  %22 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !25
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !25
  %23 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !25
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !25
  %24 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !25
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !25
  %25 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !25
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !25
  %26 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !25
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !25
  %27 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !25
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !25
  %28 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !25
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !25
  %29 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !25
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !25
  %30 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !25
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !25
  %31 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !25
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !25
  %32 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !25
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !25
  %33 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !25
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !25
  %34 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !25
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !25
  %35 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !25
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !25
  %36 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !25
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !25
  %37 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !25
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !25
  %38 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !25
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !25
  %39 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !25
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !25
  %40 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !25
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !25
  %41 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !25
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !25
  %42 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !25
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !25
  %43 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !25
  %44 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !25
  %45 = bitcast i8* %44 to i64*
  %_ptr_to_int_ = ptrtoint i8* %44 to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %1
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %44, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %44, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %44, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_2_, %_cond2_1_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond2_, %_cond1_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  %46 = select i1 %_cond1_n_cond2_cond3_, i64* %_address_in_parent_stack_bt_, i64* %45
  %_new_load_ = load i64, i64* %46, align 8
  store i64 %_new_load_, i64* %FPU_TAG_val, align 8
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !25
  %47 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !25
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !25
  %48 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !25
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !25
  %49 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !25
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !25
  %50 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !25
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !25
  %51 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !25
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !25
  %52 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !25
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !25
  %53 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !25
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !25
  %54 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !25
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !25
  %55 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !25
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !25
  %56 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !25
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !25
  %57 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !25
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !25
  %58 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !25
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !25
  %59 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !25
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !25
  %60 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !25
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !25
  %61 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !25
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !25
  %62 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !25
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !25
  %63 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !25
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !25
  %64 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !25
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !25
  %65 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !25
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !25
  %66 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !25
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !25
  %67 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !25
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !25
  %68 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !25
  %69 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_242 = load i8*, i8** %69, align 8
  %_new_gep_ = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_242, i64 -8
  %70 = bitcast i8* %_new_gep_ to i32*
  %_ptr_to_int_57 = ptrtoint i8* %_new_gep_ to i64
  %_offset_above_rbp_60 = sub i64 %_ptr_to_int_57, %1
  %_pot_address_in_parent_stack_61 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_60
  %_cond1_62 = icmp ugt i8* %_new_gep_, %_local_stack_end_ptr_
  %_cond2_1_63 = icmp ugt i8* %_new_gep_, %_parent_stack_end_ptr_
  %_cond2_2_64 = icmp ult i8* %_new_gep_, %_parent_stack_start_ptr_
  %_cond2_65 = or i1 %_cond2_1_63, %_cond2_2_64
  %_cond4_66 = icmp ule i8* %_pot_address_in_parent_stack_61, %_parent_stack_end_ptr_
  %_cond1_n_cond2_67 = and i1 %_cond1_62, %_cond2_65
  %_cond1_n_cond2_cond3_68 = and i1 %_cond1_n_cond2_67, %_cond4_66
  %_address_in_parent_stack_bt_70 = bitcast i8* %_pot_address_in_parent_stack_61 to i32*
  %71 = select i1 %_cond1_n_cond2_cond3_68, i32* %_address_in_parent_stack_bt_70, i32* %70
  %_new_load_71 = load i32, i32* %71, align 4
  %72 = add i32 %_new_load_71, 1
  store i32 %72, i32* %70, align 4, !mcsema_real_eip !24
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4243 = load i8*, i8** %69, align 8
  %_new_gep_5 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4243, i64 -8
  %_ptr_to_int_72 = ptrtoint i8* %_new_gep_5 to i64
  %_offset_above_rbp_75 = sub i64 %_ptr_to_int_72, %1
  %_pot_address_in_parent_stack_76 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_75
  %_cond1_77 = icmp ugt i8* %_new_gep_5, %_local_stack_end_ptr_
  %_cond2_1_78 = icmp ugt i8* %_new_gep_5, %_parent_stack_end_ptr_
  %_cond2_2_79 = icmp ult i8* %_new_gep_5, %_parent_stack_start_ptr_
  %_cond2_80 = or i1 %_cond2_1_78, %_cond2_2_79
  %_cond4_81 = icmp ule i8* %_pot_address_in_parent_stack_76, %_parent_stack_end_ptr_
  %_cond1_n_cond2_82 = and i1 %_cond1_77, %_cond2_80
  %_cond1_n_cond2_cond3_83 = and i1 %_cond1_n_cond2_82, %_cond4_81
  %.v = select i1 %_cond1_n_cond2_cond3_83, i8* %_pot_address_in_parent_stack_76, i8* %_new_gep_5
  %73 = bitcast i8* %.v to i32*
  %_new_load_86 = load i32, i32* %73, align 4
  %74 = add i32 %_new_load_86, -1
  %75 = xor i32 %74, %_new_load_86, !mcsema_real_eip !7
  %76 = icmp slt i32 %74, 0
  %77 = and i32 %75, %_new_load_86, !mcsema_real_eip !7
  %78 = icmp slt i32 %77, 0
  %tmp = xor i1 %76, %78
  br i1 %tmp, label %block_0x26, label %block_0x80, !mcsema_real_eip !8

block_0x80:                                       ; preds = %entry
  %79 = icmp eq i32 %_new_load_86, 0
  %80 = icmp eq i32 %74, 0, !mcsema_real_eip !7
  %81 = trunc i32 %74 to i8, !mcsema_real_eip !7
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !7
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  %85 = and i32 %75, 16, !mcsema_real_eip !7
  %86 = icmp ne i32 %85, 0, !mcsema_real_eip !7
  %_new_gep_8 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4243, i64 -4
  %87 = bitcast i8* %_new_gep_8 to i32*
  store i32 1, i32* %87, align 4, !mcsema_real_eip !9
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10244 = load i8*, i8** %69, align 8
  %_new_gep_11 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10244, i64 -4
  %_ptr_to_int_87 = ptrtoint i8* %_new_gep_11 to i64
  %_offset_above_rbp_90 = sub i64 %_ptr_to_int_87, %1
  %_pot_address_in_parent_stack_91 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_90
  %_cond1_92 = icmp ugt i8* %_new_gep_11, %_local_stack_end_ptr_
  %_cond2_1_93 = icmp ugt i8* %_new_gep_11, %_parent_stack_end_ptr_
  %_cond2_2_94 = icmp ult i8* %_new_gep_11, %_parent_stack_start_ptr_
  %_cond2_95 = or i1 %_cond2_1_93, %_cond2_2_94
  %_cond4_96 = icmp ule i8* %_pot_address_in_parent_stack_91, %_parent_stack_end_ptr_
  %_cond1_n_cond2_97 = and i1 %_cond1_92, %_cond2_95
  %_cond1_n_cond2_cond3_98 = and i1 %_cond1_n_cond2_97, %_cond4_96
  %.v225 = select i1 %_cond1_n_cond2_cond3_98, i8* %_pot_address_in_parent_stack_91, i8* %_new_gep_11
  %88 = bitcast i8* %.v225 to i32*
  %_new_load_101 = load i32, i32* %88, align 4
  %89 = zext i32 %_new_load_101 to i64, !mcsema_real_eip !10
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_ = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %90 = inttoptr i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_ to i8*
  %_offset_above_rbp_105 = sub i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_, %1
  %_pot_address_in_parent_stack_106 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_105
  %_cond1_107 = icmp ugt i8* %90, %_local_stack_end_ptr_
  %_cond2_1_108 = icmp ugt i8* %90, %_parent_stack_end_ptr_
  %_cond2_2_109 = icmp ult i8* %90, %_parent_stack_start_ptr_
  %_cond2_110 = or i1 %_cond2_1_108, %_cond2_2_109
  %_cond4_111 = icmp ule i8* %_pot_address_in_parent_stack_106, %_parent_stack_end_ptr_
  %_cond1_n_cond2_112 = and i1 %_cond1_107, %_cond2_110
  %_cond1_n_cond2_cond3_113 = and i1 %_cond4_111, %_cond1_n_cond2_112
  %.v226 = select i1 %_cond1_n_cond2_cond3_113, i8* %_pot_address_in_parent_stack_106, i8* %90
  %91 = bitcast i8* %.v226 to i64*
  %_new_load_116227228 = load i64, i64* %91, align 8
  store volatile i64 %_new_load_116227228, i64* %_RBP_ptr_.sroa.0, align 8
  %_new_gep_14 = getelementptr i8, i8* %90, i64 16
  %92 = ptrtoint i8* %_new_gep_14 to i64
  store volatile i64 %92, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %89, i64* %RAX, align 8, !mcsema_real_eip !11
  %93 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %93, align 8
  store i64 %5, i64* %RDX, align 8, !mcsema_real_eip !11
  store i64 %6, i64* %RSI, align 8, !mcsema_real_eip !11
  store i64 %7, i64* %RDI, align 8, !mcsema_real_eip !11
  store volatile i64 %92, i64* %RSP, align 8
  store volatile i64 %_new_load_116227228, i64* %RBP, align 8
  store i64 %8, i64* %R8, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R9, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R10, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %R11, align 8, !mcsema_real_eip !11
  store i64 %12, i64* %R12, align 8, !mcsema_real_eip !11
  store i64 %13, i64* %R13, align 8, !mcsema_real_eip !11
  store i64 %14, i64* %R14, align 8, !mcsema_real_eip !11
  store i64 %15, i64* %R15, align 8, !mcsema_real_eip !11
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !11
  store i1 %79, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !11
  store i1 %86, i1* %AF, align 1, !mcsema_real_eip !11
  store i1 %80, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 %76, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 %78, i1* %OF, align 1, !mcsema_real_eip !11
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %20, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %21, i1* %FPU_B, align 1, !mcsema_real_eip !11
  store i1 %22, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  store i3 %23, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  store i1 %32, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  store i1 %33, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  store i1 %34, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  store i1 %35, i1* %FPU_X, align 1, !mcsema_real_eip !11
  store i2 %36, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  store i2 %37, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  store i1 %40, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  store i1 %41, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  store i1 %42, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  store i1 %43, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  %_ptr_to_int_117 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_119 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_120 = sub i64 %_ptr_to_int_117, %1
  %_pot_address_in_parent_stack_121 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_120
  %_cond1_122 = icmp ugt i8* %_ptr_bt_119, %_local_stack_end_ptr_
  %_cond2_1_123 = icmp ugt i8* %_ptr_bt_119, %_parent_stack_end_ptr_
  %_cond2_2_124 = icmp ult i8* %_ptr_bt_119, %_parent_stack_start_ptr_
  %_cond2_125 = or i1 %_cond2_1_123, %_cond2_2_124
  %_cond4_126 = icmp ule i8* %_pot_address_in_parent_stack_121, %_parent_stack_end_ptr_
  %_cond1_n_cond2_127 = and i1 %_cond1_122, %_cond2_125
  %_cond1_n_cond2_cond3_128 = and i1 %_cond1_n_cond2_127, %_cond4_126
  %_address_in_parent_stack_bt_130 = bitcast i8* %_pot_address_in_parent_stack_121 to i64*
  %94 = select i1 %_cond1_n_cond2_cond3_128, i64* %_address_in_parent_stack_bt_130, i64* %FPU_TAG_val
  %_new_load_131 = load i64, i64* %94, align 8
  store i64 %_new_load_131, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  store i64 %48, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  store i16 %49, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  store i64 %50, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !11
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !11
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !11
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !11
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !11
  store i64 %67, i64* %STACK_BASE, align 1, !mcsema_real_eip !11
  store i64 %68, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11

block_0x26:                                       ; preds = %entry
  %95 = sext i32 %_new_load_86 to i64, !mcsema_real_eip !12
  %_new_gep_21 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4243, i64 -9
  %_new_gep_22 = getelementptr i8, i8* %_new_gep_21, i64 %95
  %_ptr_to_int_147 = ptrtoint i8* %_new_gep_22 to i64
  %_offset_above_rbp_149 = sub i64 %_ptr_to_int_147, %1
  %_pot_address_in_parent_stack_150 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_149
  %_cond1_151 = icmp ugt i8* %_new_gep_22, %_local_stack_end_ptr_
  %_cond2_1_152 = icmp ugt i8* %_new_gep_22, %_parent_stack_end_ptr_
  %_cond2_2_153 = icmp ult i8* %_new_gep_22, %_parent_stack_start_ptr_
  %_cond2_154 = or i1 %_cond2_1_152, %_cond2_2_153
  %_cond4_155 = icmp ule i8* %_pot_address_in_parent_stack_150, %_parent_stack_end_ptr_
  %_cond1_n_cond2_156 = and i1 %_cond1_151, %_cond2_154
  %_cond1_n_cond2_cond3_157 = and i1 %_cond1_n_cond2_156, %_cond4_155
  %_address_in_parent_stack_158. = select i1 %_cond1_n_cond2_cond3_157, i8* %_pot_address_in_parent_stack_150, i8* %_new_gep_22
  %_new_load_159 = load i8, i8* %_address_in_parent_stack_158., align 1
  %96 = sext i8 %_new_load_159 to i32, !mcsema_real_eip !13
  %97 = add nsw i32 %96, -97
  %98 = zext i32 %97 to i64, !mcsema_real_eip !14
  %99 = add nsw i32 %96, -119
  %100 = xor i32 %99, %97, !mcsema_real_eip !15
  %101 = and i32 %100, 16
  %102 = icmp eq i32 %101, 0
  %103 = trunc i32 %99 to i8, !mcsema_real_eip !15
  %104 = tail call i8 @llvm.ctpop.i8(i8 %103), !mcsema_real_eip !15
  %105 = and i8 %104, 1
  %106 = icmp eq i8 %105, 0
  %107 = icmp eq i32 %99, 0, !mcsema_real_eip !15
  %108 = icmp slt i8 %_new_load_159, 119
  %109 = icmp ult i32 %97, 22, !mcsema_real_eip !15
  %110 = and i32 %100, %97, !mcsema_real_eip !15
  %111 = icmp slt i32 %110, 0
  %_new_gep_25 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4243, i64 -24
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  store i64 %98, i64* %_allin_new_bt_26, align 8, !mcsema_real_eip !16
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_27245 = load i8*, i8** %69, align 8
  %_new_gep_28 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_27245, i64 -28
  %112 = bitcast i8* %_new_gep_28 to i32*
  store i32 %99, i32* %112, align 4, !mcsema_real_eip !17
  %.demorgan = or i1 %109, %107
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_30246 = load i8*, i8** %69, align 8
  br i1 %.demorgan, label %block_0x44, label %block_0x66, !mcsema_real_eip !18

block_0x66:                                       ; preds = %block_0x26
  %113 = zext i32 %99 to i64, !mcsema_real_eip !15
  %_new_gep_31 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_30246, i64 -4
  %114 = bitcast i8* %_new_gep_31 to i32*
  store i32 1, i32* %114, align 4, !mcsema_real_eip !19
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_33247 = load i8*, i8** %69, align 8
  %_new_gep_34 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_33247, i64 -4
  %_ptr_to_int_160 = ptrtoint i8* %_new_gep_34 to i64
  %_offset_above_rbp_163 = sub i64 %_ptr_to_int_160, %1
  %_pot_address_in_parent_stack_164 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_163
  %_cond1_165 = icmp ugt i8* %_new_gep_34, %_local_stack_end_ptr_
  %_cond2_1_166 = icmp ugt i8* %_new_gep_34, %_parent_stack_end_ptr_
  %_cond2_2_167 = icmp ult i8* %_new_gep_34, %_parent_stack_start_ptr_
  %_cond2_168 = or i1 %_cond2_1_166, %_cond2_2_167
  %_cond4_169 = icmp ule i8* %_pot_address_in_parent_stack_164, %_parent_stack_end_ptr_
  %_cond1_n_cond2_170 = and i1 %_cond1_165, %_cond2_168
  %_cond1_n_cond2_cond3_171 = and i1 %_cond1_n_cond2_170, %_cond4_169
  %.v231 = select i1 %_cond1_n_cond2_cond3_171, i8* %_pot_address_in_parent_stack_164, i8* %_new_gep_34
  %115 = bitcast i8* %.v231 to i32*
  %_new_load_174 = load i32, i32* %115, align 4
  %116 = zext i32 %_new_load_174 to i64, !mcsema_real_eip !10
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_36 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %117 = inttoptr i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_36 to i8*
  %_offset_above_rbp_178 = sub i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_36, %1
  %_pot_address_in_parent_stack_179 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_178
  %_cond1_180 = icmp ugt i8* %117, %_local_stack_end_ptr_
  %_cond2_1_181 = icmp ugt i8* %117, %_parent_stack_end_ptr_
  %_cond2_2_182 = icmp ult i8* %117, %_parent_stack_start_ptr_
  %_cond2_183 = or i1 %_cond2_1_181, %_cond2_2_182
  %_cond4_184 = icmp ule i8* %_pot_address_in_parent_stack_179, %_parent_stack_end_ptr_
  %_cond1_n_cond2_185 = and i1 %_cond1_180, %_cond2_183
  %_cond1_n_cond2_cond3_186 = and i1 %_cond4_184, %_cond1_n_cond2_185
  %.v232 = select i1 %_cond1_n_cond2_cond3_186, i8* %_pot_address_in_parent_stack_179, i8* %117
  %118 = bitcast i8* %.v232 to i64*
  %_new_load_189233234 = load i64, i64* %118, align 8
  store volatile i64 %_new_load_189233234, i64* %_RBP_ptr_.sroa.0, align 8
  %_new_gep_39 = getelementptr i8, i8* %117, i64 16
  %119 = ptrtoint i8* %_new_gep_39 to i64
  store volatile i64 %119, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %116, i64* %RAX, align 8, !mcsema_real_eip !11
  %120 = extractelement <2 x i64> %4, i32 0
  store i64 %120, i64* %RBX, align 8, !mcsema_real_eip !11
  store i64 %113, i64* %RCX, align 8, !mcsema_real_eip !11
  store i64 %5, i64* %RDX, align 8, !mcsema_real_eip !11
  store i64 %6, i64* %RSI, align 8, !mcsema_real_eip !11
  store i64 %7, i64* %RDI, align 8, !mcsema_real_eip !11
  store volatile i64 %119, i64* %RSP, align 8
  store volatile i64 %_new_load_189233234, i64* %RBP, align 8
  store i64 %8, i64* %R8, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R9, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R10, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %R11, align 8, !mcsema_real_eip !11
  store i64 %12, i64* %R12, align 8, !mcsema_real_eip !11
  store i64 %13, i64* %R13, align 8, !mcsema_real_eip !11
  store i64 %14, i64* %R14, align 8, !mcsema_real_eip !11
  store i64 %15, i64* %R15, align 8, !mcsema_real_eip !11
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !11
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 %106, i1* %PF, align 1, !mcsema_real_eip !11
  store i1 %102, i1* %AF, align 1, !mcsema_real_eip !11
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 %108, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 %111, i1* %OF, align 1, !mcsema_real_eip !11
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %20, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %21, i1* %FPU_B, align 1, !mcsema_real_eip !11
  store i1 %22, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  store i3 %23, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  store i1 %32, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  store i1 %33, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  store i1 %34, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  store i1 %35, i1* %FPU_X, align 1, !mcsema_real_eip !11
  store i2 %36, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  store i2 %37, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  store i1 %40, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  store i1 %41, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  store i1 %42, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  store i1 %43, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  %_ptr_to_int_190 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_192 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_193 = sub i64 %_ptr_to_int_190, %1
  %_pot_address_in_parent_stack_194 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_193
  %_cond1_195 = icmp ugt i8* %_ptr_bt_192, %_local_stack_end_ptr_
  %_cond2_1_196 = icmp ugt i8* %_ptr_bt_192, %_parent_stack_end_ptr_
  %_cond2_2_197 = icmp ult i8* %_ptr_bt_192, %_parent_stack_start_ptr_
  %_cond2_198 = or i1 %_cond2_1_196, %_cond2_2_197
  %_cond4_199 = icmp ule i8* %_pot_address_in_parent_stack_194, %_parent_stack_end_ptr_
  %_cond1_n_cond2_200 = and i1 %_cond1_195, %_cond2_198
  %_cond1_n_cond2_cond3_201 = and i1 %_cond1_n_cond2_200, %_cond4_199
  %_address_in_parent_stack_bt_203 = bitcast i8* %_pot_address_in_parent_stack_194 to i64*
  %121 = select i1 %_cond1_n_cond2_cond3_201, i64* %_address_in_parent_stack_bt_203, i64* %FPU_TAG_val
  %_new_load_204 = load i64, i64* %121, align 8
  store i64 %_new_load_204, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  store i64 %48, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  store i16 %49, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  store i64 %50, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !11
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !11
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !11
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !11
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !11
  store i64 %67, i64* %STACK_BASE, align 1, !mcsema_real_eip !11
  store i64 %68, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11

block_0x44:                                       ; preds = %block_0x26
  %122 = ptrtoint i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_30246 to i64
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_30246, i64 -24
  %_ptr_to_int_205 = ptrtoint i8* %_new_gep_44 to i64
  %_offset_above_rbp_208 = sub i64 %_ptr_to_int_205, %1
  %_pot_address_in_parent_stack_209 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_208
  %_cond1_210 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_211 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_212 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_213 = or i1 %_cond2_1_211, %_cond2_2_212
  %_cond4_214 = icmp ule i8* %_pot_address_in_parent_stack_209, %_parent_stack_end_ptr_
  %_cond1_n_cond2_215 = and i1 %_cond1_210, %_cond2_213
  %_cond1_n_cond2_cond3_216 = and i1 %_cond1_n_cond2_215, %_cond4_214
  %.v237 = select i1 %_cond1_n_cond2_cond3_216, i8* %_pot_address_in_parent_stack_209, i8* %_new_gep_44
  %123 = bitcast i8* %.v237 to i64*
  %_new_load_219 = load i64, i64* %123, align 8
  %124 = shl i64 %_new_load_219, 3
  %125 = add i64 %124, ptrtoint (%0* @data_0x8c to i64), !mcsema_real_eip !21
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !21
  %_ptr_bt_222 = inttoptr i64 %125 to i8*
  %_offset_above_rbp_223 = sub i64 %125, %1
  %_pot_address_in_parent_stack_224 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_223
  %_cond1_225 = icmp ugt i8* %_ptr_bt_222, %_local_stack_end_ptr_
  %_cond2_1_226 = icmp ugt i8* %_ptr_bt_222, %_parent_stack_end_ptr_
  %_cond2_2_227 = icmp ult i8* %_ptr_bt_222, %_parent_stack_start_ptr_
  %_cond2_228 = or i1 %_cond2_1_226, %_cond2_2_227
  %_cond4_229 = icmp ule i8* %_pot_address_in_parent_stack_224, %_parent_stack_end_ptr_
  %_cond1_n_cond2_230 = and i1 %_cond1_225, %_cond2_228
  %_cond1_n_cond2_cond3_231 = and i1 %_cond4_229, %_cond1_n_cond2_230
  %_address_in_parent_stack_bt_233 = bitcast i8* %_pot_address_in_parent_stack_224 to i64*
  %127 = select i1 %_cond1_n_cond2_cond3_231, i64* %_address_in_parent_stack_bt_233, i64* %126
  %_new_load_234 = load i64, i64* %127, align 8
  store i64 %_new_load_219, i64* %RAX, align 8, !mcsema_real_eip !22
  %128 = extractelement <2 x i64> %4, i32 0
  store i64 %128, i64* %RBX, align 8, !mcsema_real_eip !22
  store i64 %_new_load_234, i64* %RCX, align 8, !mcsema_real_eip !22
  store i64 %5, i64* %RDX, align 8, !mcsema_real_eip !22
  store i64 %6, i64* %RSI, align 8, !mcsema_real_eip !22
  store i64 %7, i64* %RDI, align 8, !mcsema_real_eip !22
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_46238 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  store volatile i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_46238, i64* %RSP, align 8
  store volatile i64 %122, i64* %RBP, align 8
  store i64 %8, i64* %R8, align 8, !mcsema_real_eip !22
  store i64 %9, i64* %R9, align 8, !mcsema_real_eip !22
  store i64 %10, i64* %R10, align 8, !mcsema_real_eip !22
  store i64 %11, i64* %R11, align 8, !mcsema_real_eip !22
  store i64 %12, i64* %R12, align 8, !mcsema_real_eip !22
  store i64 %13, i64* %R13, align 8, !mcsema_real_eip !22
  store i64 %14, i64* %R14, align 8, !mcsema_real_eip !22
  store i64 %15, i64* %R15, align 8, !mcsema_real_eip !22
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !22
  store i1 %109, i1* %CF, align 1, !mcsema_real_eip !22
  store i1 %106, i1* %PF, align 1, !mcsema_real_eip !22
  store i1 %102, i1* %AF, align 1, !mcsema_real_eip !22
  store i1 %107, i1* %ZF, align 1, !mcsema_real_eip !22
  store i1 %108, i1* %SF, align 1, !mcsema_real_eip !22
  store i1 %111, i1* %OF, align 1, !mcsema_real_eip !22
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !22
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %20, i32 128, i32 8, i1 false), !mcsema_real_eip !22
  store i1 %21, i1* %FPU_B, align 1, !mcsema_real_eip !22
  store i1 %22, i1* %FPU_C3, align 1, !mcsema_real_eip !22
  store i3 %23, i3* %FPU_TOP, align 1, !mcsema_real_eip !22
  store i1 %24, i1* %FPU_C2, align 1, !mcsema_real_eip !22
  store i1 %25, i1* %FPU_C1, align 1, !mcsema_real_eip !22
  store i1 %26, i1* %FPU_C0, align 1, !mcsema_real_eip !22
  store i1 %27, i1* %FPU_ES, align 1, !mcsema_real_eip !22
  store i1 %28, i1* %FPU_SF, align 1, !mcsema_real_eip !22
  store i1 %29, i1* %FPU_PE, align 1, !mcsema_real_eip !22
  store i1 %30, i1* %FPU_UE, align 1, !mcsema_real_eip !22
  store i1 %31, i1* %FPU_OE, align 1, !mcsema_real_eip !22
  store i1 %32, i1* %FPU_ZE, align 1, !mcsema_real_eip !22
  store i1 %33, i1* %FPU_DE, align 1, !mcsema_real_eip !22
  store i1 %34, i1* %FPU_IE, align 1, !mcsema_real_eip !22
  store i1 %35, i1* %FPU_X, align 1, !mcsema_real_eip !22
  store i2 %36, i2* %FPU_RC, align 1, !mcsema_real_eip !22
  store i2 %37, i2* %FPU_PC, align 1, !mcsema_real_eip !22
  store i1 %38, i1* %FPU_PM, align 1, !mcsema_real_eip !22
  store i1 %39, i1* %FPU_UM, align 1, !mcsema_real_eip !22
  store i1 %40, i1* %FPU_OM, align 1, !mcsema_real_eip !22
  store i1 %41, i1* %FPU_ZM, align 1, !mcsema_real_eip !22
  store i1 %42, i1* %FPU_DM, align 1, !mcsema_real_eip !22
  store i1 %43, i1* %FPU_IM, align 1, !mcsema_real_eip !22
  %_ptr_to_int_235 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_237 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_238 = sub i64 %_ptr_to_int_235, %1
  %_pot_address_in_parent_stack_239 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_238
  %_cond1_240 = icmp ugt i8* %_ptr_bt_237, %_local_stack_end_ptr_
  %_cond2_1_241 = icmp ugt i8* %_ptr_bt_237, %_parent_stack_end_ptr_
  %_cond2_2_242 = icmp ult i8* %_ptr_bt_237, %_parent_stack_start_ptr_
  %_cond2_243 = or i1 %_cond2_1_241, %_cond2_2_242
  %_cond4_244 = icmp ule i8* %_pot_address_in_parent_stack_239, %_parent_stack_end_ptr_
  %_cond1_n_cond2_245 = and i1 %_cond1_240, %_cond2_243
  %_cond1_n_cond2_cond3_246 = and i1 %_cond1_n_cond2_245, %_cond4_244
  %_address_in_parent_stack_bt_248 = bitcast i8* %_pot_address_in_parent_stack_239 to i64*
  %129 = select i1 %_cond1_n_cond2_cond3_246, i64* %_address_in_parent_stack_bt_248, i64* %FPU_TAG_val
  %_new_load_249 = load i64, i64* %129, align 8
  store i64 %_new_load_249, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !22
  store i64 %48, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !22
  store i16 %49, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !22
  store i64 %50, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !22
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !22
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !22
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !22
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !22
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !22
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !22
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !22
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !22
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !22
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !22
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !22
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !22
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !22
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !22
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !22
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !22
  store i64 %67, i64* %STACK_BASE, align 1, !mcsema_real_eip !22
  store i64 %68, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !22
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_57.5(%struct.regs*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #2 {
entry:
  %_RSP_ptr_.sroa.0 = alloca i64, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_224 = alloca [28 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_224, i64 0, i64 28
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_.sroa.0, align 8
  %2 = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  %FPU_TAG_val = alloca i64, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !26
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !26
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !26
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !26
  %3 = bitcast i64* %RBX to <2 x i64>*
  %4 = load <2 x i64>, <2 x i64>* %3, align 8
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !26
  %5 = load i64, i64* %RDX, align 8, !mcsema_real_eip !26
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !26
  %6 = load i64, i64* %RSI, align 8, !mcsema_real_eip !26
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !26
  %7 = load i64, i64* %RDI, align 8, !mcsema_real_eip !26
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !26
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !26
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !26
  %8 = load i64, i64* %R8, align 8, !mcsema_real_eip !26
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !26
  %9 = load i64, i64* %R9, align 8, !mcsema_real_eip !26
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !26
  %10 = load i64, i64* %R10, align 8, !mcsema_real_eip !26
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !26
  %11 = load i64, i64* %R11, align 8, !mcsema_real_eip !26
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !26
  %12 = load i64, i64* %R12, align 8, !mcsema_real_eip !26
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !26
  %13 = load i64, i64* %R13, align 8, !mcsema_real_eip !26
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !26
  %14 = load i64, i64* %R14, align 8, !mcsema_real_eip !26
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !26
  %15 = load i64, i64* %R15, align 8, !mcsema_real_eip !26
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !26
  %16 = load i64, i64* %RIP, align 8, !mcsema_real_eip !26
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !26
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !26
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !26
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !26
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !26
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !26
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !26
  %17 = load i1, i1* %DF, align 1, !mcsema_real_eip !26
  %18 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !26
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !26
  %20 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !26
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !26
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !26
  %21 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !26
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !26
  %22 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !26
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !26
  %23 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !26
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !26
  %24 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !26
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !26
  %25 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !26
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !26
  %26 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !26
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !26
  %27 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !26
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !26
  %28 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !26
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !26
  %29 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !26
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !26
  %30 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !26
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !26
  %31 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !26
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !26
  %32 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !26
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !26
  %33 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !26
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !26
  %34 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !26
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !26
  %35 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !26
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !26
  %36 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !26
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !26
  %37 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !26
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !26
  %38 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !26
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !26
  %39 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !26
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !26
  %40 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !26
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !26
  %41 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !26
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !26
  %42 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !26
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !26
  %43 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !26
  %44 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !26
  %45 = bitcast i8* %44 to i64*
  %_ptr_to_int_ = ptrtoint i8* %44 to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %1
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %44, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %44, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %44, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_2_, %_cond2_1_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond2_, %_cond1_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  %46 = select i1 %_cond1_n_cond2_cond3_, i64* %_address_in_parent_stack_bt_, i64* %45
  %_new_load_ = load i64, i64* %46, align 8
  store i64 %_new_load_, i64* %FPU_TAG_val, align 8
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !26
  %47 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !26
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !26
  %48 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !26
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !26
  %49 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !26
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !26
  %50 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !26
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !26
  %51 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !26
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !26
  %52 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !26
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !26
  %53 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !26
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !26
  %54 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !26
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !26
  %55 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !26
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !26
  %56 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !26
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !26
  %57 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !26
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !26
  %58 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !26
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !26
  %59 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !26
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !26
  %60 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !26
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !26
  %61 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !26
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !26
  %62 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !26
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !26
  %63 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !26
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !26
  %64 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !26
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !26
  %65 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !26
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !26
  %66 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !26
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !26
  %67 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !26
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !26
  %68 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !26
  %69 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_242 = load i8*, i8** %69, align 8
  %_new_gep_ = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_242, i64 -8
  %70 = bitcast i8* %_new_gep_ to i32*
  %_ptr_to_int_57 = ptrtoint i8* %_new_gep_ to i64
  %_offset_above_rbp_60 = sub i64 %_ptr_to_int_57, %1
  %_pot_address_in_parent_stack_61 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_60
  %_cond1_62 = icmp ugt i8* %_new_gep_, %_local_stack_end_ptr_
  %_cond2_1_63 = icmp ugt i8* %_new_gep_, %_parent_stack_end_ptr_
  %_cond2_2_64 = icmp ult i8* %_new_gep_, %_parent_stack_start_ptr_
  %_cond2_65 = or i1 %_cond2_1_63, %_cond2_2_64
  %_cond4_66 = icmp ule i8* %_pot_address_in_parent_stack_61, %_parent_stack_end_ptr_
  %_cond1_n_cond2_67 = and i1 %_cond1_62, %_cond2_65
  %_cond1_n_cond2_cond3_68 = and i1 %_cond1_n_cond2_67, %_cond4_66
  %_address_in_parent_stack_bt_70 = bitcast i8* %_pot_address_in_parent_stack_61 to i32*
  %71 = select i1 %_cond1_n_cond2_cond3_68, i32* %_address_in_parent_stack_bt_70, i32* %70
  %_new_load_71 = load i32, i32* %71, align 4
  %72 = add i32 %_new_load_71, 1
  store i32 %72, i32* %70, align 4, !mcsema_real_eip !24
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4243 = load i8*, i8** %69, align 8
  %_new_gep_5 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4243, i64 -8
  %_ptr_to_int_72 = ptrtoint i8* %_new_gep_5 to i64
  %_offset_above_rbp_75 = sub i64 %_ptr_to_int_72, %1
  %_pot_address_in_parent_stack_76 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_75
  %_cond1_77 = icmp ugt i8* %_new_gep_5, %_local_stack_end_ptr_
  %_cond2_1_78 = icmp ugt i8* %_new_gep_5, %_parent_stack_end_ptr_
  %_cond2_2_79 = icmp ult i8* %_new_gep_5, %_parent_stack_start_ptr_
  %_cond2_80 = or i1 %_cond2_1_78, %_cond2_2_79
  %_cond4_81 = icmp ule i8* %_pot_address_in_parent_stack_76, %_parent_stack_end_ptr_
  %_cond1_n_cond2_82 = and i1 %_cond1_77, %_cond2_80
  %_cond1_n_cond2_cond3_83 = and i1 %_cond1_n_cond2_82, %_cond4_81
  %.v = select i1 %_cond1_n_cond2_cond3_83, i8* %_pot_address_in_parent_stack_76, i8* %_new_gep_5
  %73 = bitcast i8* %.v to i32*
  %_new_load_86 = load i32, i32* %73, align 4
  %74 = add i32 %_new_load_86, -1
  %75 = xor i32 %74, %_new_load_86, !mcsema_real_eip !7
  %76 = icmp slt i32 %74, 0
  %77 = and i32 %75, %_new_load_86, !mcsema_real_eip !7
  %78 = icmp slt i32 %77, 0
  %tmp = xor i1 %76, %78
  br i1 %tmp, label %block_0x26, label %block_0x80, !mcsema_real_eip !8

block_0x80:                                       ; preds = %entry
  %79 = icmp eq i32 %_new_load_86, 0
  %80 = icmp eq i32 %74, 0, !mcsema_real_eip !7
  %81 = trunc i32 %74 to i8, !mcsema_real_eip !7
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !7
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  %85 = and i32 %75, 16, !mcsema_real_eip !7
  %86 = icmp ne i32 %85, 0, !mcsema_real_eip !7
  %_new_gep_8 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4243, i64 -4
  %87 = bitcast i8* %_new_gep_8 to i32*
  store i32 1, i32* %87, align 4, !mcsema_real_eip !9
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10244 = load i8*, i8** %69, align 8
  %_new_gep_11 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10244, i64 -4
  %_ptr_to_int_87 = ptrtoint i8* %_new_gep_11 to i64
  %_offset_above_rbp_90 = sub i64 %_ptr_to_int_87, %1
  %_pot_address_in_parent_stack_91 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_90
  %_cond1_92 = icmp ugt i8* %_new_gep_11, %_local_stack_end_ptr_
  %_cond2_1_93 = icmp ugt i8* %_new_gep_11, %_parent_stack_end_ptr_
  %_cond2_2_94 = icmp ult i8* %_new_gep_11, %_parent_stack_start_ptr_
  %_cond2_95 = or i1 %_cond2_1_93, %_cond2_2_94
  %_cond4_96 = icmp ule i8* %_pot_address_in_parent_stack_91, %_parent_stack_end_ptr_
  %_cond1_n_cond2_97 = and i1 %_cond1_92, %_cond2_95
  %_cond1_n_cond2_cond3_98 = and i1 %_cond1_n_cond2_97, %_cond4_96
  %.v225 = select i1 %_cond1_n_cond2_cond3_98, i8* %_pot_address_in_parent_stack_91, i8* %_new_gep_11
  %88 = bitcast i8* %.v225 to i32*
  %_new_load_101 = load i32, i32* %88, align 4
  %89 = zext i32 %_new_load_101 to i64, !mcsema_real_eip !10
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_ = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %90 = inttoptr i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_ to i8*
  %_offset_above_rbp_105 = sub i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_, %1
  %_pot_address_in_parent_stack_106 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_105
  %_cond1_107 = icmp ugt i8* %90, %_local_stack_end_ptr_
  %_cond2_1_108 = icmp ugt i8* %90, %_parent_stack_end_ptr_
  %_cond2_2_109 = icmp ult i8* %90, %_parent_stack_start_ptr_
  %_cond2_110 = or i1 %_cond2_1_108, %_cond2_2_109
  %_cond4_111 = icmp ule i8* %_pot_address_in_parent_stack_106, %_parent_stack_end_ptr_
  %_cond1_n_cond2_112 = and i1 %_cond1_107, %_cond2_110
  %_cond1_n_cond2_cond3_113 = and i1 %_cond4_111, %_cond1_n_cond2_112
  %.v226 = select i1 %_cond1_n_cond2_cond3_113, i8* %_pot_address_in_parent_stack_106, i8* %90
  %91 = bitcast i8* %.v226 to i64*
  %_new_load_116227228 = load i64, i64* %91, align 8
  store volatile i64 %_new_load_116227228, i64* %_RBP_ptr_.sroa.0, align 8
  %_new_gep_14 = getelementptr i8, i8* %90, i64 16
  %92 = ptrtoint i8* %_new_gep_14 to i64
  store volatile i64 %92, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %89, i64* %RAX, align 8, !mcsema_real_eip !11
  %93 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %93, align 8
  store i64 %5, i64* %RDX, align 8, !mcsema_real_eip !11
  store i64 %6, i64* %RSI, align 8, !mcsema_real_eip !11
  store i64 %7, i64* %RDI, align 8, !mcsema_real_eip !11
  store volatile i64 %92, i64* %RSP, align 8
  store volatile i64 %_new_load_116227228, i64* %RBP, align 8
  store i64 %8, i64* %R8, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R9, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R10, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %R11, align 8, !mcsema_real_eip !11
  store i64 %12, i64* %R12, align 8, !mcsema_real_eip !11
  store i64 %13, i64* %R13, align 8, !mcsema_real_eip !11
  store i64 %14, i64* %R14, align 8, !mcsema_real_eip !11
  store i64 %15, i64* %R15, align 8, !mcsema_real_eip !11
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !11
  store i1 %79, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !11
  store i1 %86, i1* %AF, align 1, !mcsema_real_eip !11
  store i1 %80, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 %76, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 %78, i1* %OF, align 1, !mcsema_real_eip !11
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %20, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %21, i1* %FPU_B, align 1, !mcsema_real_eip !11
  store i1 %22, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  store i3 %23, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  store i1 %32, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  store i1 %33, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  store i1 %34, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  store i1 %35, i1* %FPU_X, align 1, !mcsema_real_eip !11
  store i2 %36, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  store i2 %37, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  store i1 %40, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  store i1 %41, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  store i1 %42, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  store i1 %43, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  %_ptr_to_int_117 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_119 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_120 = sub i64 %_ptr_to_int_117, %1
  %_pot_address_in_parent_stack_121 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_120
  %_cond1_122 = icmp ugt i8* %_ptr_bt_119, %_local_stack_end_ptr_
  %_cond2_1_123 = icmp ugt i8* %_ptr_bt_119, %_parent_stack_end_ptr_
  %_cond2_2_124 = icmp ult i8* %_ptr_bt_119, %_parent_stack_start_ptr_
  %_cond2_125 = or i1 %_cond2_1_123, %_cond2_2_124
  %_cond4_126 = icmp ule i8* %_pot_address_in_parent_stack_121, %_parent_stack_end_ptr_
  %_cond1_n_cond2_127 = and i1 %_cond1_122, %_cond2_125
  %_cond1_n_cond2_cond3_128 = and i1 %_cond1_n_cond2_127, %_cond4_126
  %_address_in_parent_stack_bt_130 = bitcast i8* %_pot_address_in_parent_stack_121 to i64*
  %94 = select i1 %_cond1_n_cond2_cond3_128, i64* %_address_in_parent_stack_bt_130, i64* %FPU_TAG_val
  %_new_load_131 = load i64, i64* %94, align 8
  store i64 %_new_load_131, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  store i64 %48, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  store i16 %49, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  store i64 %50, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !11
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !11
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !11
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !11
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !11
  store i64 %67, i64* %STACK_BASE, align 1, !mcsema_real_eip !11
  store i64 %68, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11

block_0x26:                                       ; preds = %entry
  %95 = sext i32 %_new_load_86 to i64, !mcsema_real_eip !12
  %_new_gep_21 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4243, i64 -9
  %_new_gep_22 = getelementptr i8, i8* %_new_gep_21, i64 %95
  %_ptr_to_int_147 = ptrtoint i8* %_new_gep_22 to i64
  %_offset_above_rbp_149 = sub i64 %_ptr_to_int_147, %1
  %_pot_address_in_parent_stack_150 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_149
  %_cond1_151 = icmp ugt i8* %_new_gep_22, %_local_stack_end_ptr_
  %_cond2_1_152 = icmp ugt i8* %_new_gep_22, %_parent_stack_end_ptr_
  %_cond2_2_153 = icmp ult i8* %_new_gep_22, %_parent_stack_start_ptr_
  %_cond2_154 = or i1 %_cond2_1_152, %_cond2_2_153
  %_cond4_155 = icmp ule i8* %_pot_address_in_parent_stack_150, %_parent_stack_end_ptr_
  %_cond1_n_cond2_156 = and i1 %_cond1_151, %_cond2_154
  %_cond1_n_cond2_cond3_157 = and i1 %_cond1_n_cond2_156, %_cond4_155
  %_address_in_parent_stack_158. = select i1 %_cond1_n_cond2_cond3_157, i8* %_pot_address_in_parent_stack_150, i8* %_new_gep_22
  %_new_load_159 = load i8, i8* %_address_in_parent_stack_158., align 1
  %96 = sext i8 %_new_load_159 to i32, !mcsema_real_eip !13
  %97 = add nsw i32 %96, -97
  %98 = zext i32 %97 to i64, !mcsema_real_eip !14
  %99 = add nsw i32 %96, -119
  %100 = xor i32 %99, %97, !mcsema_real_eip !15
  %101 = and i32 %100, 16
  %102 = icmp eq i32 %101, 0
  %103 = trunc i32 %99 to i8, !mcsema_real_eip !15
  %104 = tail call i8 @llvm.ctpop.i8(i8 %103), !mcsema_real_eip !15
  %105 = and i8 %104, 1
  %106 = icmp eq i8 %105, 0
  %107 = icmp eq i32 %99, 0, !mcsema_real_eip !15
  %108 = icmp slt i8 %_new_load_159, 119
  %109 = icmp ult i32 %97, 22, !mcsema_real_eip !15
  %110 = and i32 %100, %97, !mcsema_real_eip !15
  %111 = icmp slt i32 %110, 0
  %_new_gep_25 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4243, i64 -24
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  store i64 %98, i64* %_allin_new_bt_26, align 8, !mcsema_real_eip !16
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_27245 = load i8*, i8** %69, align 8
  %_new_gep_28 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_27245, i64 -28
  %112 = bitcast i8* %_new_gep_28 to i32*
  store i32 %99, i32* %112, align 4, !mcsema_real_eip !17
  %.demorgan = or i1 %109, %107
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_30246 = load i8*, i8** %69, align 8
  br i1 %.demorgan, label %block_0x44, label %block_0x66, !mcsema_real_eip !18

block_0x66:                                       ; preds = %block_0x26
  %113 = zext i32 %99 to i64, !mcsema_real_eip !15
  %_new_gep_31 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_30246, i64 -4
  %114 = bitcast i8* %_new_gep_31 to i32*
  store i32 1, i32* %114, align 4, !mcsema_real_eip !19
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_33247 = load i8*, i8** %69, align 8
  %_new_gep_34 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_33247, i64 -4
  %_ptr_to_int_160 = ptrtoint i8* %_new_gep_34 to i64
  %_offset_above_rbp_163 = sub i64 %_ptr_to_int_160, %1
  %_pot_address_in_parent_stack_164 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_163
  %_cond1_165 = icmp ugt i8* %_new_gep_34, %_local_stack_end_ptr_
  %_cond2_1_166 = icmp ugt i8* %_new_gep_34, %_parent_stack_end_ptr_
  %_cond2_2_167 = icmp ult i8* %_new_gep_34, %_parent_stack_start_ptr_
  %_cond2_168 = or i1 %_cond2_1_166, %_cond2_2_167
  %_cond4_169 = icmp ule i8* %_pot_address_in_parent_stack_164, %_parent_stack_end_ptr_
  %_cond1_n_cond2_170 = and i1 %_cond1_165, %_cond2_168
  %_cond1_n_cond2_cond3_171 = and i1 %_cond1_n_cond2_170, %_cond4_169
  %.v231 = select i1 %_cond1_n_cond2_cond3_171, i8* %_pot_address_in_parent_stack_164, i8* %_new_gep_34
  %115 = bitcast i8* %.v231 to i32*
  %_new_load_174 = load i32, i32* %115, align 4
  %116 = zext i32 %_new_load_174 to i64, !mcsema_real_eip !10
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_36 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %117 = inttoptr i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_36 to i8*
  %_offset_above_rbp_178 = sub i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_36, %1
  %_pot_address_in_parent_stack_179 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_178
  %_cond1_180 = icmp ugt i8* %117, %_local_stack_end_ptr_
  %_cond2_1_181 = icmp ugt i8* %117, %_parent_stack_end_ptr_
  %_cond2_2_182 = icmp ult i8* %117, %_parent_stack_start_ptr_
  %_cond2_183 = or i1 %_cond2_1_181, %_cond2_2_182
  %_cond4_184 = icmp ule i8* %_pot_address_in_parent_stack_179, %_parent_stack_end_ptr_
  %_cond1_n_cond2_185 = and i1 %_cond1_180, %_cond2_183
  %_cond1_n_cond2_cond3_186 = and i1 %_cond4_184, %_cond1_n_cond2_185
  %.v232 = select i1 %_cond1_n_cond2_cond3_186, i8* %_pot_address_in_parent_stack_179, i8* %117
  %118 = bitcast i8* %.v232 to i64*
  %_new_load_189233234 = load i64, i64* %118, align 8
  store volatile i64 %_new_load_189233234, i64* %_RBP_ptr_.sroa.0, align 8
  %_new_gep_39 = getelementptr i8, i8* %117, i64 16
  %119 = ptrtoint i8* %_new_gep_39 to i64
  store volatile i64 %119, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %116, i64* %RAX, align 8, !mcsema_real_eip !11
  %120 = extractelement <2 x i64> %4, i32 0
  store i64 %120, i64* %RBX, align 8, !mcsema_real_eip !11
  store i64 %113, i64* %RCX, align 8, !mcsema_real_eip !11
  store i64 %5, i64* %RDX, align 8, !mcsema_real_eip !11
  store i64 %6, i64* %RSI, align 8, !mcsema_real_eip !11
  store i64 %7, i64* %RDI, align 8, !mcsema_real_eip !11
  store volatile i64 %119, i64* %RSP, align 8
  store volatile i64 %_new_load_189233234, i64* %RBP, align 8
  store i64 %8, i64* %R8, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R9, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R10, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %R11, align 8, !mcsema_real_eip !11
  store i64 %12, i64* %R12, align 8, !mcsema_real_eip !11
  store i64 %13, i64* %R13, align 8, !mcsema_real_eip !11
  store i64 %14, i64* %R14, align 8, !mcsema_real_eip !11
  store i64 %15, i64* %R15, align 8, !mcsema_real_eip !11
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !11
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 %106, i1* %PF, align 1, !mcsema_real_eip !11
  store i1 %102, i1* %AF, align 1, !mcsema_real_eip !11
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 %108, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 %111, i1* %OF, align 1, !mcsema_real_eip !11
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %20, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %21, i1* %FPU_B, align 1, !mcsema_real_eip !11
  store i1 %22, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  store i3 %23, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  store i1 %32, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  store i1 %33, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  store i1 %34, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  store i1 %35, i1* %FPU_X, align 1, !mcsema_real_eip !11
  store i2 %36, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  store i2 %37, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  store i1 %40, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  store i1 %41, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  store i1 %42, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  store i1 %43, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  %_ptr_to_int_190 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_192 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_193 = sub i64 %_ptr_to_int_190, %1
  %_pot_address_in_parent_stack_194 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_193
  %_cond1_195 = icmp ugt i8* %_ptr_bt_192, %_local_stack_end_ptr_
  %_cond2_1_196 = icmp ugt i8* %_ptr_bt_192, %_parent_stack_end_ptr_
  %_cond2_2_197 = icmp ult i8* %_ptr_bt_192, %_parent_stack_start_ptr_
  %_cond2_198 = or i1 %_cond2_1_196, %_cond2_2_197
  %_cond4_199 = icmp ule i8* %_pot_address_in_parent_stack_194, %_parent_stack_end_ptr_
  %_cond1_n_cond2_200 = and i1 %_cond1_195, %_cond2_198
  %_cond1_n_cond2_cond3_201 = and i1 %_cond1_n_cond2_200, %_cond4_199
  %_address_in_parent_stack_bt_203 = bitcast i8* %_pot_address_in_parent_stack_194 to i64*
  %121 = select i1 %_cond1_n_cond2_cond3_201, i64* %_address_in_parent_stack_bt_203, i64* %FPU_TAG_val
  %_new_load_204 = load i64, i64* %121, align 8
  store i64 %_new_load_204, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  store i64 %48, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  store i16 %49, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  store i64 %50, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !11
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !11
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !11
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !11
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !11
  store i64 %67, i64* %STACK_BASE, align 1, !mcsema_real_eip !11
  store i64 %68, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11

block_0x44:                                       ; preds = %block_0x26
  %122 = ptrtoint i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_30246 to i64
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_30246, i64 -24
  %_ptr_to_int_205 = ptrtoint i8* %_new_gep_44 to i64
  %_offset_above_rbp_208 = sub i64 %_ptr_to_int_205, %1
  %_pot_address_in_parent_stack_209 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_208
  %_cond1_210 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_211 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_212 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_213 = or i1 %_cond2_1_211, %_cond2_2_212
  %_cond4_214 = icmp ule i8* %_pot_address_in_parent_stack_209, %_parent_stack_end_ptr_
  %_cond1_n_cond2_215 = and i1 %_cond1_210, %_cond2_213
  %_cond1_n_cond2_cond3_216 = and i1 %_cond1_n_cond2_215, %_cond4_214
  %.v237 = select i1 %_cond1_n_cond2_cond3_216, i8* %_pot_address_in_parent_stack_209, i8* %_new_gep_44
  %123 = bitcast i8* %.v237 to i64*
  %_new_load_219 = load i64, i64* %123, align 8
  %124 = shl i64 %_new_load_219, 3
  %125 = add i64 %124, ptrtoint (%0* @data_0x8c to i64), !mcsema_real_eip !21
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !21
  %_ptr_bt_222 = inttoptr i64 %125 to i8*
  %_offset_above_rbp_223 = sub i64 %125, %1
  %_pot_address_in_parent_stack_224 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_223
  %_cond1_225 = icmp ugt i8* %_ptr_bt_222, %_local_stack_end_ptr_
  %_cond2_1_226 = icmp ugt i8* %_ptr_bt_222, %_parent_stack_end_ptr_
  %_cond2_2_227 = icmp ult i8* %_ptr_bt_222, %_parent_stack_start_ptr_
  %_cond2_228 = or i1 %_cond2_1_226, %_cond2_2_227
  %_cond4_229 = icmp ule i8* %_pot_address_in_parent_stack_224, %_parent_stack_end_ptr_
  %_cond1_n_cond2_230 = and i1 %_cond1_225, %_cond2_228
  %_cond1_n_cond2_cond3_231 = and i1 %_cond4_229, %_cond1_n_cond2_230
  %_address_in_parent_stack_bt_233 = bitcast i8* %_pot_address_in_parent_stack_224 to i64*
  %127 = select i1 %_cond1_n_cond2_cond3_231, i64* %_address_in_parent_stack_bt_233, i64* %126
  %_new_load_234 = load i64, i64* %127, align 8
  store i64 %_new_load_219, i64* %RAX, align 8, !mcsema_real_eip !22
  %128 = extractelement <2 x i64> %4, i32 0
  store i64 %128, i64* %RBX, align 8, !mcsema_real_eip !22
  store i64 %_new_load_234, i64* %RCX, align 8, !mcsema_real_eip !22
  store i64 %5, i64* %RDX, align 8, !mcsema_real_eip !22
  store i64 %6, i64* %RSI, align 8, !mcsema_real_eip !22
  store i64 %7, i64* %RDI, align 8, !mcsema_real_eip !22
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_46238 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  store volatile i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_46238, i64* %RSP, align 8
  store volatile i64 %122, i64* %RBP, align 8
  store i64 %8, i64* %R8, align 8, !mcsema_real_eip !22
  store i64 %9, i64* %R9, align 8, !mcsema_real_eip !22
  store i64 %10, i64* %R10, align 8, !mcsema_real_eip !22
  store i64 %11, i64* %R11, align 8, !mcsema_real_eip !22
  store i64 %12, i64* %R12, align 8, !mcsema_real_eip !22
  store i64 %13, i64* %R13, align 8, !mcsema_real_eip !22
  store i64 %14, i64* %R14, align 8, !mcsema_real_eip !22
  store i64 %15, i64* %R15, align 8, !mcsema_real_eip !22
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !22
  store i1 %109, i1* %CF, align 1, !mcsema_real_eip !22
  store i1 %106, i1* %PF, align 1, !mcsema_real_eip !22
  store i1 %102, i1* %AF, align 1, !mcsema_real_eip !22
  store i1 %107, i1* %ZF, align 1, !mcsema_real_eip !22
  store i1 %108, i1* %SF, align 1, !mcsema_real_eip !22
  store i1 %111, i1* %OF, align 1, !mcsema_real_eip !22
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !22
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %20, i32 128, i32 8, i1 false), !mcsema_real_eip !22
  store i1 %21, i1* %FPU_B, align 1, !mcsema_real_eip !22
  store i1 %22, i1* %FPU_C3, align 1, !mcsema_real_eip !22
  store i3 %23, i3* %FPU_TOP, align 1, !mcsema_real_eip !22
  store i1 %24, i1* %FPU_C2, align 1, !mcsema_real_eip !22
  store i1 %25, i1* %FPU_C1, align 1, !mcsema_real_eip !22
  store i1 %26, i1* %FPU_C0, align 1, !mcsema_real_eip !22
  store i1 %27, i1* %FPU_ES, align 1, !mcsema_real_eip !22
  store i1 %28, i1* %FPU_SF, align 1, !mcsema_real_eip !22
  store i1 %29, i1* %FPU_PE, align 1, !mcsema_real_eip !22
  store i1 %30, i1* %FPU_UE, align 1, !mcsema_real_eip !22
  store i1 %31, i1* %FPU_OE, align 1, !mcsema_real_eip !22
  store i1 %32, i1* %FPU_ZE, align 1, !mcsema_real_eip !22
  store i1 %33, i1* %FPU_DE, align 1, !mcsema_real_eip !22
  store i1 %34, i1* %FPU_IE, align 1, !mcsema_real_eip !22
  store i1 %35, i1* %FPU_X, align 1, !mcsema_real_eip !22
  store i2 %36, i2* %FPU_RC, align 1, !mcsema_real_eip !22
  store i2 %37, i2* %FPU_PC, align 1, !mcsema_real_eip !22
  store i1 %38, i1* %FPU_PM, align 1, !mcsema_real_eip !22
  store i1 %39, i1* %FPU_UM, align 1, !mcsema_real_eip !22
  store i1 %40, i1* %FPU_OM, align 1, !mcsema_real_eip !22
  store i1 %41, i1* %FPU_ZM, align 1, !mcsema_real_eip !22
  store i1 %42, i1* %FPU_DM, align 1, !mcsema_real_eip !22
  store i1 %43, i1* %FPU_IM, align 1, !mcsema_real_eip !22
  %_ptr_to_int_235 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_237 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_238 = sub i64 %_ptr_to_int_235, %1
  %_pot_address_in_parent_stack_239 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_238
  %_cond1_240 = icmp ugt i8* %_ptr_bt_237, %_local_stack_end_ptr_
  %_cond2_1_241 = icmp ugt i8* %_ptr_bt_237, %_parent_stack_end_ptr_
  %_cond2_2_242 = icmp ult i8* %_ptr_bt_237, %_parent_stack_start_ptr_
  %_cond2_243 = or i1 %_cond2_1_241, %_cond2_2_242
  %_cond4_244 = icmp ule i8* %_pot_address_in_parent_stack_239, %_parent_stack_end_ptr_
  %_cond1_n_cond2_245 = and i1 %_cond1_240, %_cond2_243
  %_cond1_n_cond2_cond3_246 = and i1 %_cond1_n_cond2_245, %_cond4_244
  %_address_in_parent_stack_bt_248 = bitcast i8* %_pot_address_in_parent_stack_239 to i64*
  %129 = select i1 %_cond1_n_cond2_cond3_246, i64* %_address_in_parent_stack_bt_248, i64* %FPU_TAG_val
  %_new_load_249 = load i64, i64* %129, align 8
  store i64 %_new_load_249, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !22
  store i64 %48, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !22
  store i16 %49, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !22
  store i64 %50, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !22
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !22
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !22
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !22
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !22
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !22
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !22
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !22
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !22
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !22
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !22
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !22
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !22
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !22
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !22
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !22
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !22
  store i64 %67, i64* %STACK_BASE, align 1, !mcsema_real_eip !22
  store i64 %68, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !22
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_52.6(%struct.regs*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #2 {
entry:
  %_RSP_ptr_.sroa.0 = alloca i64, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_224 = alloca [28 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_224, i64 0, i64 28
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_.sroa.0, align 8
  %2 = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  %FPU_TAG_val = alloca i64, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !27
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !27
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !27
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !27
  %3 = bitcast i64* %RBX to <2 x i64>*
  %4 = load <2 x i64>, <2 x i64>* %3, align 8
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !27
  %5 = load i64, i64* %RDX, align 8, !mcsema_real_eip !27
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !27
  %6 = load i64, i64* %RSI, align 8, !mcsema_real_eip !27
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !27
  %7 = load i64, i64* %RDI, align 8, !mcsema_real_eip !27
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !27
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !27
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !27
  %8 = load i64, i64* %R8, align 8, !mcsema_real_eip !27
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !27
  %9 = load i64, i64* %R9, align 8, !mcsema_real_eip !27
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !27
  %10 = load i64, i64* %R10, align 8, !mcsema_real_eip !27
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !27
  %11 = load i64, i64* %R11, align 8, !mcsema_real_eip !27
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !27
  %12 = load i64, i64* %R12, align 8, !mcsema_real_eip !27
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !27
  %13 = load i64, i64* %R13, align 8, !mcsema_real_eip !27
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !27
  %14 = load i64, i64* %R14, align 8, !mcsema_real_eip !27
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !27
  %15 = load i64, i64* %R15, align 8, !mcsema_real_eip !27
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !27
  %16 = load i64, i64* %RIP, align 8, !mcsema_real_eip !27
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !27
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !27
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !27
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !27
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !27
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !27
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !27
  %17 = load i1, i1* %DF, align 1, !mcsema_real_eip !27
  %18 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !27
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !27
  %20 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !27
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !27
  %21 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !27
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !27
  %22 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !27
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !27
  %23 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !27
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !27
  %24 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !27
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !27
  %25 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !27
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !27
  %26 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !27
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !27
  %27 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !27
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !27
  %28 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !27
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !27
  %29 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !27
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !27
  %30 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !27
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !27
  %31 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !27
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !27
  %32 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !27
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !27
  %33 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !27
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !27
  %34 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !27
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !27
  %35 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !27
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !27
  %36 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !27
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !27
  %37 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !27
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !27
  %38 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !27
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !27
  %39 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !27
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !27
  %40 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !27
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !27
  %41 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !27
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !27
  %42 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !27
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !27
  %43 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !27
  %44 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !27
  %45 = bitcast i8* %44 to i64*
  %_ptr_to_int_ = ptrtoint i8* %44 to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %1
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %44, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %44, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %44, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_2_, %_cond2_1_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond2_, %_cond1_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  %46 = select i1 %_cond1_n_cond2_cond3_, i64* %_address_in_parent_stack_bt_, i64* %45
  %_new_load_ = load i64, i64* %46, align 8
  store i64 %_new_load_, i64* %FPU_TAG_val, align 8
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !27
  %47 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !27
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !27
  %48 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !27
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !27
  %49 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !27
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !27
  %50 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !27
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !27
  %51 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !27
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !27
  %52 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !27
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !27
  %53 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !27
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !27
  %54 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !27
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !27
  %55 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !27
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !27
  %56 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !27
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !27
  %57 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !27
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !27
  %58 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !27
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !27
  %59 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !27
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !27
  %60 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !27
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !27
  %61 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !27
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !27
  %62 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !27
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !27
  %63 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !27
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !27
  %64 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !27
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !27
  %65 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !27
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !27
  %66 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !27
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !27
  %67 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !27
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !27
  %68 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !27
  %69 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_242 = load i8*, i8** %69, align 8
  %_new_gep_ = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_242, i64 -8
  %70 = bitcast i8* %_new_gep_ to i32*
  %_ptr_to_int_57 = ptrtoint i8* %_new_gep_ to i64
  %_offset_above_rbp_60 = sub i64 %_ptr_to_int_57, %1
  %_pot_address_in_parent_stack_61 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_60
  %_cond1_62 = icmp ugt i8* %_new_gep_, %_local_stack_end_ptr_
  %_cond2_1_63 = icmp ugt i8* %_new_gep_, %_parent_stack_end_ptr_
  %_cond2_2_64 = icmp ult i8* %_new_gep_, %_parent_stack_start_ptr_
  %_cond2_65 = or i1 %_cond2_1_63, %_cond2_2_64
  %_cond4_66 = icmp ule i8* %_pot_address_in_parent_stack_61, %_parent_stack_end_ptr_
  %_cond1_n_cond2_67 = and i1 %_cond1_62, %_cond2_65
  %_cond1_n_cond2_cond3_68 = and i1 %_cond1_n_cond2_67, %_cond4_66
  %_address_in_parent_stack_bt_70 = bitcast i8* %_pot_address_in_parent_stack_61 to i32*
  %71 = select i1 %_cond1_n_cond2_cond3_68, i32* %_address_in_parent_stack_bt_70, i32* %70
  %_new_load_71 = load i32, i32* %71, align 4
  %72 = add i32 %_new_load_71, 1
  store i32 %72, i32* %70, align 4, !mcsema_real_eip !24
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4243 = load i8*, i8** %69, align 8
  %_new_gep_5 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4243, i64 -8
  %_ptr_to_int_72 = ptrtoint i8* %_new_gep_5 to i64
  %_offset_above_rbp_75 = sub i64 %_ptr_to_int_72, %1
  %_pot_address_in_parent_stack_76 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_75
  %_cond1_77 = icmp ugt i8* %_new_gep_5, %_local_stack_end_ptr_
  %_cond2_1_78 = icmp ugt i8* %_new_gep_5, %_parent_stack_end_ptr_
  %_cond2_2_79 = icmp ult i8* %_new_gep_5, %_parent_stack_start_ptr_
  %_cond2_80 = or i1 %_cond2_1_78, %_cond2_2_79
  %_cond4_81 = icmp ule i8* %_pot_address_in_parent_stack_76, %_parent_stack_end_ptr_
  %_cond1_n_cond2_82 = and i1 %_cond1_77, %_cond2_80
  %_cond1_n_cond2_cond3_83 = and i1 %_cond1_n_cond2_82, %_cond4_81
  %.v = select i1 %_cond1_n_cond2_cond3_83, i8* %_pot_address_in_parent_stack_76, i8* %_new_gep_5
  %73 = bitcast i8* %.v to i32*
  %_new_load_86 = load i32, i32* %73, align 4
  %74 = add i32 %_new_load_86, -1
  %75 = xor i32 %74, %_new_load_86, !mcsema_real_eip !7
  %76 = icmp slt i32 %74, 0
  %77 = and i32 %75, %_new_load_86, !mcsema_real_eip !7
  %78 = icmp slt i32 %77, 0
  %tmp = xor i1 %76, %78
  br i1 %tmp, label %block_0x26, label %block_0x80, !mcsema_real_eip !8

block_0x80:                                       ; preds = %entry
  %79 = icmp eq i32 %_new_load_86, 0
  %80 = icmp eq i32 %74, 0, !mcsema_real_eip !7
  %81 = trunc i32 %74 to i8, !mcsema_real_eip !7
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !7
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  %85 = and i32 %75, 16, !mcsema_real_eip !7
  %86 = icmp ne i32 %85, 0, !mcsema_real_eip !7
  %_new_gep_8 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4243, i64 -4
  %87 = bitcast i8* %_new_gep_8 to i32*
  store i32 1, i32* %87, align 4, !mcsema_real_eip !9
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10244 = load i8*, i8** %69, align 8
  %_new_gep_11 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10244, i64 -4
  %_ptr_to_int_87 = ptrtoint i8* %_new_gep_11 to i64
  %_offset_above_rbp_90 = sub i64 %_ptr_to_int_87, %1
  %_pot_address_in_parent_stack_91 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_90
  %_cond1_92 = icmp ugt i8* %_new_gep_11, %_local_stack_end_ptr_
  %_cond2_1_93 = icmp ugt i8* %_new_gep_11, %_parent_stack_end_ptr_
  %_cond2_2_94 = icmp ult i8* %_new_gep_11, %_parent_stack_start_ptr_
  %_cond2_95 = or i1 %_cond2_1_93, %_cond2_2_94
  %_cond4_96 = icmp ule i8* %_pot_address_in_parent_stack_91, %_parent_stack_end_ptr_
  %_cond1_n_cond2_97 = and i1 %_cond1_92, %_cond2_95
  %_cond1_n_cond2_cond3_98 = and i1 %_cond1_n_cond2_97, %_cond4_96
  %.v225 = select i1 %_cond1_n_cond2_cond3_98, i8* %_pot_address_in_parent_stack_91, i8* %_new_gep_11
  %88 = bitcast i8* %.v225 to i32*
  %_new_load_101 = load i32, i32* %88, align 4
  %89 = zext i32 %_new_load_101 to i64, !mcsema_real_eip !10
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_ = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %90 = inttoptr i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_ to i8*
  %_offset_above_rbp_105 = sub i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_, %1
  %_pot_address_in_parent_stack_106 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_105
  %_cond1_107 = icmp ugt i8* %90, %_local_stack_end_ptr_
  %_cond2_1_108 = icmp ugt i8* %90, %_parent_stack_end_ptr_
  %_cond2_2_109 = icmp ult i8* %90, %_parent_stack_start_ptr_
  %_cond2_110 = or i1 %_cond2_1_108, %_cond2_2_109
  %_cond4_111 = icmp ule i8* %_pot_address_in_parent_stack_106, %_parent_stack_end_ptr_
  %_cond1_n_cond2_112 = and i1 %_cond1_107, %_cond2_110
  %_cond1_n_cond2_cond3_113 = and i1 %_cond4_111, %_cond1_n_cond2_112
  %.v226 = select i1 %_cond1_n_cond2_cond3_113, i8* %_pot_address_in_parent_stack_106, i8* %90
  %91 = bitcast i8* %.v226 to i64*
  %_new_load_116227228 = load i64, i64* %91, align 8
  store volatile i64 %_new_load_116227228, i64* %_RBP_ptr_.sroa.0, align 8
  %_new_gep_14 = getelementptr i8, i8* %90, i64 16
  %92 = ptrtoint i8* %_new_gep_14 to i64
  store volatile i64 %92, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %89, i64* %RAX, align 8, !mcsema_real_eip !11
  %93 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %93, align 8
  store i64 %5, i64* %RDX, align 8, !mcsema_real_eip !11
  store i64 %6, i64* %RSI, align 8, !mcsema_real_eip !11
  store i64 %7, i64* %RDI, align 8, !mcsema_real_eip !11
  store volatile i64 %92, i64* %RSP, align 8
  store volatile i64 %_new_load_116227228, i64* %RBP, align 8
  store i64 %8, i64* %R8, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R9, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R10, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %R11, align 8, !mcsema_real_eip !11
  store i64 %12, i64* %R12, align 8, !mcsema_real_eip !11
  store i64 %13, i64* %R13, align 8, !mcsema_real_eip !11
  store i64 %14, i64* %R14, align 8, !mcsema_real_eip !11
  store i64 %15, i64* %R15, align 8, !mcsema_real_eip !11
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !11
  store i1 %79, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !11
  store i1 %86, i1* %AF, align 1, !mcsema_real_eip !11
  store i1 %80, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 %76, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 %78, i1* %OF, align 1, !mcsema_real_eip !11
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %20, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %21, i1* %FPU_B, align 1, !mcsema_real_eip !11
  store i1 %22, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  store i3 %23, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  store i1 %32, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  store i1 %33, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  store i1 %34, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  store i1 %35, i1* %FPU_X, align 1, !mcsema_real_eip !11
  store i2 %36, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  store i2 %37, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  store i1 %40, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  store i1 %41, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  store i1 %42, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  store i1 %43, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  %_ptr_to_int_117 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_119 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_120 = sub i64 %_ptr_to_int_117, %1
  %_pot_address_in_parent_stack_121 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_120
  %_cond1_122 = icmp ugt i8* %_ptr_bt_119, %_local_stack_end_ptr_
  %_cond2_1_123 = icmp ugt i8* %_ptr_bt_119, %_parent_stack_end_ptr_
  %_cond2_2_124 = icmp ult i8* %_ptr_bt_119, %_parent_stack_start_ptr_
  %_cond2_125 = or i1 %_cond2_1_123, %_cond2_2_124
  %_cond4_126 = icmp ule i8* %_pot_address_in_parent_stack_121, %_parent_stack_end_ptr_
  %_cond1_n_cond2_127 = and i1 %_cond1_122, %_cond2_125
  %_cond1_n_cond2_cond3_128 = and i1 %_cond1_n_cond2_127, %_cond4_126
  %_address_in_parent_stack_bt_130 = bitcast i8* %_pot_address_in_parent_stack_121 to i64*
  %94 = select i1 %_cond1_n_cond2_cond3_128, i64* %_address_in_parent_stack_bt_130, i64* %FPU_TAG_val
  %_new_load_131 = load i64, i64* %94, align 8
  store i64 %_new_load_131, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  store i64 %48, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  store i16 %49, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  store i64 %50, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !11
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !11
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !11
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !11
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !11
  store i64 %67, i64* %STACK_BASE, align 1, !mcsema_real_eip !11
  store i64 %68, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11

block_0x26:                                       ; preds = %entry
  %95 = sext i32 %_new_load_86 to i64, !mcsema_real_eip !12
  %_new_gep_21 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4243, i64 -9
  %_new_gep_22 = getelementptr i8, i8* %_new_gep_21, i64 %95
  %_ptr_to_int_147 = ptrtoint i8* %_new_gep_22 to i64
  %_offset_above_rbp_149 = sub i64 %_ptr_to_int_147, %1
  %_pot_address_in_parent_stack_150 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_149
  %_cond1_151 = icmp ugt i8* %_new_gep_22, %_local_stack_end_ptr_
  %_cond2_1_152 = icmp ugt i8* %_new_gep_22, %_parent_stack_end_ptr_
  %_cond2_2_153 = icmp ult i8* %_new_gep_22, %_parent_stack_start_ptr_
  %_cond2_154 = or i1 %_cond2_1_152, %_cond2_2_153
  %_cond4_155 = icmp ule i8* %_pot_address_in_parent_stack_150, %_parent_stack_end_ptr_
  %_cond1_n_cond2_156 = and i1 %_cond1_151, %_cond2_154
  %_cond1_n_cond2_cond3_157 = and i1 %_cond1_n_cond2_156, %_cond4_155
  %_address_in_parent_stack_158. = select i1 %_cond1_n_cond2_cond3_157, i8* %_pot_address_in_parent_stack_150, i8* %_new_gep_22
  %_new_load_159 = load i8, i8* %_address_in_parent_stack_158., align 1
  %96 = sext i8 %_new_load_159 to i32, !mcsema_real_eip !13
  %97 = add nsw i32 %96, -97
  %98 = zext i32 %97 to i64, !mcsema_real_eip !14
  %99 = add nsw i32 %96, -119
  %100 = xor i32 %99, %97, !mcsema_real_eip !15
  %101 = and i32 %100, 16
  %102 = icmp eq i32 %101, 0
  %103 = trunc i32 %99 to i8, !mcsema_real_eip !15
  %104 = tail call i8 @llvm.ctpop.i8(i8 %103), !mcsema_real_eip !15
  %105 = and i8 %104, 1
  %106 = icmp eq i8 %105, 0
  %107 = icmp eq i32 %99, 0, !mcsema_real_eip !15
  %108 = icmp slt i8 %_new_load_159, 119
  %109 = icmp ult i32 %97, 22, !mcsema_real_eip !15
  %110 = and i32 %100, %97, !mcsema_real_eip !15
  %111 = icmp slt i32 %110, 0
  %_new_gep_25 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4243, i64 -24
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  store i64 %98, i64* %_allin_new_bt_26, align 8, !mcsema_real_eip !16
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_27245 = load i8*, i8** %69, align 8
  %_new_gep_28 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_27245, i64 -28
  %112 = bitcast i8* %_new_gep_28 to i32*
  store i32 %99, i32* %112, align 4, !mcsema_real_eip !17
  %.demorgan = or i1 %109, %107
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_30246 = load i8*, i8** %69, align 8
  br i1 %.demorgan, label %block_0x44, label %block_0x66, !mcsema_real_eip !18

block_0x66:                                       ; preds = %block_0x26
  %113 = zext i32 %99 to i64, !mcsema_real_eip !15
  %_new_gep_31 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_30246, i64 -4
  %114 = bitcast i8* %_new_gep_31 to i32*
  store i32 1, i32* %114, align 4, !mcsema_real_eip !19
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_33247 = load i8*, i8** %69, align 8
  %_new_gep_34 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_33247, i64 -4
  %_ptr_to_int_160 = ptrtoint i8* %_new_gep_34 to i64
  %_offset_above_rbp_163 = sub i64 %_ptr_to_int_160, %1
  %_pot_address_in_parent_stack_164 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_163
  %_cond1_165 = icmp ugt i8* %_new_gep_34, %_local_stack_end_ptr_
  %_cond2_1_166 = icmp ugt i8* %_new_gep_34, %_parent_stack_end_ptr_
  %_cond2_2_167 = icmp ult i8* %_new_gep_34, %_parent_stack_start_ptr_
  %_cond2_168 = or i1 %_cond2_1_166, %_cond2_2_167
  %_cond4_169 = icmp ule i8* %_pot_address_in_parent_stack_164, %_parent_stack_end_ptr_
  %_cond1_n_cond2_170 = and i1 %_cond1_165, %_cond2_168
  %_cond1_n_cond2_cond3_171 = and i1 %_cond1_n_cond2_170, %_cond4_169
  %.v231 = select i1 %_cond1_n_cond2_cond3_171, i8* %_pot_address_in_parent_stack_164, i8* %_new_gep_34
  %115 = bitcast i8* %.v231 to i32*
  %_new_load_174 = load i32, i32* %115, align 4
  %116 = zext i32 %_new_load_174 to i64, !mcsema_real_eip !10
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_36 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %117 = inttoptr i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_36 to i8*
  %_offset_above_rbp_178 = sub i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_36, %1
  %_pot_address_in_parent_stack_179 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_178
  %_cond1_180 = icmp ugt i8* %117, %_local_stack_end_ptr_
  %_cond2_1_181 = icmp ugt i8* %117, %_parent_stack_end_ptr_
  %_cond2_2_182 = icmp ult i8* %117, %_parent_stack_start_ptr_
  %_cond2_183 = or i1 %_cond2_1_181, %_cond2_2_182
  %_cond4_184 = icmp ule i8* %_pot_address_in_parent_stack_179, %_parent_stack_end_ptr_
  %_cond1_n_cond2_185 = and i1 %_cond1_180, %_cond2_183
  %_cond1_n_cond2_cond3_186 = and i1 %_cond4_184, %_cond1_n_cond2_185
  %.v232 = select i1 %_cond1_n_cond2_cond3_186, i8* %_pot_address_in_parent_stack_179, i8* %117
  %118 = bitcast i8* %.v232 to i64*
  %_new_load_189233234 = load i64, i64* %118, align 8
  store volatile i64 %_new_load_189233234, i64* %_RBP_ptr_.sroa.0, align 8
  %_new_gep_39 = getelementptr i8, i8* %117, i64 16
  %119 = ptrtoint i8* %_new_gep_39 to i64
  store volatile i64 %119, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %116, i64* %RAX, align 8, !mcsema_real_eip !11
  %120 = extractelement <2 x i64> %4, i32 0
  store i64 %120, i64* %RBX, align 8, !mcsema_real_eip !11
  store i64 %113, i64* %RCX, align 8, !mcsema_real_eip !11
  store i64 %5, i64* %RDX, align 8, !mcsema_real_eip !11
  store i64 %6, i64* %RSI, align 8, !mcsema_real_eip !11
  store i64 %7, i64* %RDI, align 8, !mcsema_real_eip !11
  store volatile i64 %119, i64* %RSP, align 8
  store volatile i64 %_new_load_189233234, i64* %RBP, align 8
  store i64 %8, i64* %R8, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R9, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R10, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %R11, align 8, !mcsema_real_eip !11
  store i64 %12, i64* %R12, align 8, !mcsema_real_eip !11
  store i64 %13, i64* %R13, align 8, !mcsema_real_eip !11
  store i64 %14, i64* %R14, align 8, !mcsema_real_eip !11
  store i64 %15, i64* %R15, align 8, !mcsema_real_eip !11
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !11
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 %106, i1* %PF, align 1, !mcsema_real_eip !11
  store i1 %102, i1* %AF, align 1, !mcsema_real_eip !11
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 %108, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 %111, i1* %OF, align 1, !mcsema_real_eip !11
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %20, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %21, i1* %FPU_B, align 1, !mcsema_real_eip !11
  store i1 %22, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  store i3 %23, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  store i1 %32, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  store i1 %33, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  store i1 %34, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  store i1 %35, i1* %FPU_X, align 1, !mcsema_real_eip !11
  store i2 %36, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  store i2 %37, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  store i1 %40, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  store i1 %41, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  store i1 %42, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  store i1 %43, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  %_ptr_to_int_190 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_192 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_193 = sub i64 %_ptr_to_int_190, %1
  %_pot_address_in_parent_stack_194 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_193
  %_cond1_195 = icmp ugt i8* %_ptr_bt_192, %_local_stack_end_ptr_
  %_cond2_1_196 = icmp ugt i8* %_ptr_bt_192, %_parent_stack_end_ptr_
  %_cond2_2_197 = icmp ult i8* %_ptr_bt_192, %_parent_stack_start_ptr_
  %_cond2_198 = or i1 %_cond2_1_196, %_cond2_2_197
  %_cond4_199 = icmp ule i8* %_pot_address_in_parent_stack_194, %_parent_stack_end_ptr_
  %_cond1_n_cond2_200 = and i1 %_cond1_195, %_cond2_198
  %_cond1_n_cond2_cond3_201 = and i1 %_cond1_n_cond2_200, %_cond4_199
  %_address_in_parent_stack_bt_203 = bitcast i8* %_pot_address_in_parent_stack_194 to i64*
  %121 = select i1 %_cond1_n_cond2_cond3_201, i64* %_address_in_parent_stack_bt_203, i64* %FPU_TAG_val
  %_new_load_204 = load i64, i64* %121, align 8
  store i64 %_new_load_204, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  store i64 %48, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  store i16 %49, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  store i64 %50, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !11
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !11
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !11
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !11
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !11
  store i64 %67, i64* %STACK_BASE, align 1, !mcsema_real_eip !11
  store i64 %68, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11

block_0x44:                                       ; preds = %block_0x26
  %122 = ptrtoint i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_30246 to i64
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_30246, i64 -24
  %_ptr_to_int_205 = ptrtoint i8* %_new_gep_44 to i64
  %_offset_above_rbp_208 = sub i64 %_ptr_to_int_205, %1
  %_pot_address_in_parent_stack_209 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_208
  %_cond1_210 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_211 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_212 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_213 = or i1 %_cond2_1_211, %_cond2_2_212
  %_cond4_214 = icmp ule i8* %_pot_address_in_parent_stack_209, %_parent_stack_end_ptr_
  %_cond1_n_cond2_215 = and i1 %_cond1_210, %_cond2_213
  %_cond1_n_cond2_cond3_216 = and i1 %_cond1_n_cond2_215, %_cond4_214
  %.v237 = select i1 %_cond1_n_cond2_cond3_216, i8* %_pot_address_in_parent_stack_209, i8* %_new_gep_44
  %123 = bitcast i8* %.v237 to i64*
  %_new_load_219 = load i64, i64* %123, align 8
  %124 = shl i64 %_new_load_219, 3
  %125 = add i64 %124, ptrtoint (%0* @data_0x8c to i64), !mcsema_real_eip !21
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !21
  %_ptr_bt_222 = inttoptr i64 %125 to i8*
  %_offset_above_rbp_223 = sub i64 %125, %1
  %_pot_address_in_parent_stack_224 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_223
  %_cond1_225 = icmp ugt i8* %_ptr_bt_222, %_local_stack_end_ptr_
  %_cond2_1_226 = icmp ugt i8* %_ptr_bt_222, %_parent_stack_end_ptr_
  %_cond2_2_227 = icmp ult i8* %_ptr_bt_222, %_parent_stack_start_ptr_
  %_cond2_228 = or i1 %_cond2_1_226, %_cond2_2_227
  %_cond4_229 = icmp ule i8* %_pot_address_in_parent_stack_224, %_parent_stack_end_ptr_
  %_cond1_n_cond2_230 = and i1 %_cond1_225, %_cond2_228
  %_cond1_n_cond2_cond3_231 = and i1 %_cond4_229, %_cond1_n_cond2_230
  %_address_in_parent_stack_bt_233 = bitcast i8* %_pot_address_in_parent_stack_224 to i64*
  %127 = select i1 %_cond1_n_cond2_cond3_231, i64* %_address_in_parent_stack_bt_233, i64* %126
  %_new_load_234 = load i64, i64* %127, align 8
  store i64 %_new_load_219, i64* %RAX, align 8, !mcsema_real_eip !22
  %128 = extractelement <2 x i64> %4, i32 0
  store i64 %128, i64* %RBX, align 8, !mcsema_real_eip !22
  store i64 %_new_load_234, i64* %RCX, align 8, !mcsema_real_eip !22
  store i64 %5, i64* %RDX, align 8, !mcsema_real_eip !22
  store i64 %6, i64* %RSI, align 8, !mcsema_real_eip !22
  store i64 %7, i64* %RDI, align 8, !mcsema_real_eip !22
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_46238 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  store volatile i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_46238, i64* %RSP, align 8
  store volatile i64 %122, i64* %RBP, align 8
  store i64 %8, i64* %R8, align 8, !mcsema_real_eip !22
  store i64 %9, i64* %R9, align 8, !mcsema_real_eip !22
  store i64 %10, i64* %R10, align 8, !mcsema_real_eip !22
  store i64 %11, i64* %R11, align 8, !mcsema_real_eip !22
  store i64 %12, i64* %R12, align 8, !mcsema_real_eip !22
  store i64 %13, i64* %R13, align 8, !mcsema_real_eip !22
  store i64 %14, i64* %R14, align 8, !mcsema_real_eip !22
  store i64 %15, i64* %R15, align 8, !mcsema_real_eip !22
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !22
  store i1 %109, i1* %CF, align 1, !mcsema_real_eip !22
  store i1 %106, i1* %PF, align 1, !mcsema_real_eip !22
  store i1 %102, i1* %AF, align 1, !mcsema_real_eip !22
  store i1 %107, i1* %ZF, align 1, !mcsema_real_eip !22
  store i1 %108, i1* %SF, align 1, !mcsema_real_eip !22
  store i1 %111, i1* %OF, align 1, !mcsema_real_eip !22
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !22
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %20, i32 128, i32 8, i1 false), !mcsema_real_eip !22
  store i1 %21, i1* %FPU_B, align 1, !mcsema_real_eip !22
  store i1 %22, i1* %FPU_C3, align 1, !mcsema_real_eip !22
  store i3 %23, i3* %FPU_TOP, align 1, !mcsema_real_eip !22
  store i1 %24, i1* %FPU_C2, align 1, !mcsema_real_eip !22
  store i1 %25, i1* %FPU_C1, align 1, !mcsema_real_eip !22
  store i1 %26, i1* %FPU_C0, align 1, !mcsema_real_eip !22
  store i1 %27, i1* %FPU_ES, align 1, !mcsema_real_eip !22
  store i1 %28, i1* %FPU_SF, align 1, !mcsema_real_eip !22
  store i1 %29, i1* %FPU_PE, align 1, !mcsema_real_eip !22
  store i1 %30, i1* %FPU_UE, align 1, !mcsema_real_eip !22
  store i1 %31, i1* %FPU_OE, align 1, !mcsema_real_eip !22
  store i1 %32, i1* %FPU_ZE, align 1, !mcsema_real_eip !22
  store i1 %33, i1* %FPU_DE, align 1, !mcsema_real_eip !22
  store i1 %34, i1* %FPU_IE, align 1, !mcsema_real_eip !22
  store i1 %35, i1* %FPU_X, align 1, !mcsema_real_eip !22
  store i2 %36, i2* %FPU_RC, align 1, !mcsema_real_eip !22
  store i2 %37, i2* %FPU_PC, align 1, !mcsema_real_eip !22
  store i1 %38, i1* %FPU_PM, align 1, !mcsema_real_eip !22
  store i1 %39, i1* %FPU_UM, align 1, !mcsema_real_eip !22
  store i1 %40, i1* %FPU_OM, align 1, !mcsema_real_eip !22
  store i1 %41, i1* %FPU_ZM, align 1, !mcsema_real_eip !22
  store i1 %42, i1* %FPU_DM, align 1, !mcsema_real_eip !22
  store i1 %43, i1* %FPU_IM, align 1, !mcsema_real_eip !22
  %_ptr_to_int_235 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_237 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_238 = sub i64 %_ptr_to_int_235, %1
  %_pot_address_in_parent_stack_239 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_238
  %_cond1_240 = icmp ugt i8* %_ptr_bt_237, %_local_stack_end_ptr_
  %_cond2_1_241 = icmp ugt i8* %_ptr_bt_237, %_parent_stack_end_ptr_
  %_cond2_2_242 = icmp ult i8* %_ptr_bt_237, %_parent_stack_start_ptr_
  %_cond2_243 = or i1 %_cond2_1_241, %_cond2_2_242
  %_cond4_244 = icmp ule i8* %_pot_address_in_parent_stack_239, %_parent_stack_end_ptr_
  %_cond1_n_cond2_245 = and i1 %_cond1_240, %_cond2_243
  %_cond1_n_cond2_cond3_246 = and i1 %_cond1_n_cond2_245, %_cond4_244
  %_address_in_parent_stack_bt_248 = bitcast i8* %_pot_address_in_parent_stack_239 to i64*
  %129 = select i1 %_cond1_n_cond2_cond3_246, i64* %_address_in_parent_stack_bt_248, i64* %FPU_TAG_val
  %_new_load_249 = load i64, i64* %129, align 8
  store i64 %_new_load_249, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !22
  store i64 %48, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !22
  store i16 %49, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !22
  store i64 %50, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !22
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !22
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !22
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !22
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !22
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !22
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !22
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !22
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !22
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !22
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !22
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !22
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !22
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !22
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !22
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !22
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !22
  store i64 %67, i64* %STACK_BASE, align 1, !mcsema_real_eip !22
  store i64 %68, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !22
  call void @llvm.trap()
  unreachable
}

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
!2 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 4, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!4 = !{i64 11, [19 x i8] c"\09movl\09$0, -8(%rbp)\00"}
!5 = !{i64 18, [13 x i8] c"\09movb\090, %al\00"}
!6 = !{i64 25, [20 x i8] c"\09movb\09%al, -9(%rbp)\00"}
!7 = !{i64 28, [19 x i8] c"\09cmpl\09$1, -8(%rbp)\00"}
!8 = !{i64 32, [8 x i8] c"\09jge\0990\00"}
!9 = !{i64 128, [19 x i8] c"\09movl\09$1, -4(%rbp)\00"}
!10 = !{i64 135, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!11 = !{i64 139, [6 x i8] c"\09retq\00"}
!12 = !{i64 38, [23 x i8] c"\09movslq\09-8(%rbp), %rax\00"}
!13 = !{i64 42, [28 x i8] c"\09movsbl\09-9(%rbp,%rax), %ecx\00"}
!14 = !{i64 47, [17 x i8] c"\09addl\09$-97, %ecx\00"}
!15 = !{i64 52, [16 x i8] c"\09subl\09$22, %ecx\00"}
!16 = !{i64 55, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!17 = !{i64 59, [22 x i8] c"\09movl\09%ecx, -28(%rbp)\00"}
!18 = !{i64 62, [7 x i8] c"\09ja\0934\00"}
!19 = !{i64 102, [19 x i8] c"\09movl\09$1, -4(%rbp)\00"}
!20 = !{i64 68, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!21 = !{i64 72, [22 x i8] c"\09movq\09(,%rax,8), %rcx\00"}
!22 = !{i64 80, [12 x i8] c"\09jmpq\09*%rcx\00"}
!23 = !{i64 92, [8 x i8] c"\09jmp\0917\00"}
!24 = !{i64 120, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!25 = !{i64 97, [8 x i8] c"\09jmp\0912\00"}
!26 = !{i64 87, [8 x i8] c"\09jmp\0922\00"}
!27 = !{i64 82, [8 x i8] c"\09jmp\0927\00"}
