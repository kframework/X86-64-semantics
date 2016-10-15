; ModuleID = 'Output/test_23.clang.trans.opt.bc'
source_filename = "Output/test_23.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)* }>
%1 = type <{ [77 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x2a1 = internal constant %0 <{ void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_172.2 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_18e.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_18e.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_180.4 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_18e.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_18e.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_18e.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_18e.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_18e.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_18e.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_18e.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_18e.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_18e.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_18e.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_18e.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_18e.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_18e.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_18e.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_164.5 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_18e.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_18e.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_18e.3 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_156.6 to void (%struct.regs*)*) }>, align 64
@data_0x359 = internal global %1 <{ [77 x i8] c"+-+---+---+| |     |#|| | --+ | || |   | | || +-- | | ||     |   |+-----+---+" }>, align 64

declare x86_64_sysvcc i64 @read(i64 inreg, i64 inreg, i64 inreg) local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) local_unnamed_addr {
driverBlockRaw:
  %_RSP_ptr_.sroa.0.i = alloca i64, align 8
  %_RBP_ptr_.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_247.i = alloca [104 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %_RSP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [104 x i8], [104 x i8]* %_local_stack_start_ptr_247.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 104, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [104 x i8], [104 x i8]* %_local_stack_start_ptr_247.i, i64 0, i64 104
  %2 = ptrtoint i8* %_local_stack_end_ptr_.i to i64
  store i64 %2, i64* %_RSP_ptr_.sroa.0.i, align 8
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %3 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %4 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %5 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %6 = load i64, i64* %R10.i, align 8, !mcsema_real_eip !2
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %7 = load i64, i64* %R11.i, align 8, !mcsema_real_eip !2
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %8 = load i64, i64* %R12.i, align 8, !mcsema_real_eip !2
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %9 = load i64, i64* %R13.i, align 8, !mcsema_real_eip !2
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %10 = load i64, i64* %R14.i, align 8, !mcsema_real_eip !2
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %11 = load i64, i64* %R15.i, align 8, !mcsema_real_eip !2
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %12 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %13 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !2
  %14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %15 = bitcast x86_fp80* %14 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %15, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %16 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %17 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %18 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %19 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %31 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %32 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %35 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %36 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %37 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %38 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %39 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %40 = bitcast i8* %39 to i64*
  %41 = load i64, i64* %40, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %42 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %43 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %44 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %45 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %46 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %47 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %48 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %49 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %62 = load i64, i64* %STACK_BASE.i, align 8, !mcsema_real_eip !2
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %63 = load i64, i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !2
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_248.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  %64 = bitcast i64* %_RSP_ptr_.sroa.0.i to i8**
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_259.i7 = load i8*, i8** %64, align 8
  %_new_gep_.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_259.i7, i64 -8
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_248.i, i64* %_allin_new_bt_.i, align 8
  %65 = ptrtoint i8* %_new_gep_.i to i64
  store volatile i64 %65, i64* %_RBP_ptr_.sroa.0.i, align 8
  %_new_gep_1.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_259.i7, i64 -104
  %66 = ptrtoint i8* %_new_gep_1.i to i64
  store volatile i64 %66, i64* %_RSP_ptr_.sroa.0.i, align 8
  %_new_gep_3.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_259.i7, i64 -72
  %67 = ptrtoint i8* %_new_gep_3.i to i64
  %_new_gep_5.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_259.i7, i64 -12
  %68 = bitcast i8* %_new_gep_5.i to i32*
  store i32 0, i32* %68, align 4, !mcsema_real_eip !3
  %69 = bitcast i64* %_RBP_ptr_.sroa.0.i to i8**
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7260.i8 = load i8*, i8** %69, align 8
  %_new_gep_8.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7260.i8, i64 -8
  %70 = trunc i64 %5 to i32, !mcsema_real_eip !4
  %71 = bitcast i8* %_new_gep_8.i to i32*
  store i32 %70, i32* %71, align 4, !mcsema_real_eip !4
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10261.i9 = load i8*, i8** %69, align 8
  %_new_gep_11.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10261.i9, i64 -16
  %_allin_new_bt_12.i = bitcast i8* %_new_gep_11.i to i64*
  store i64 %4, i64* %_allin_new_bt_12.i, align 8, !mcsema_real_eip !5
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13262.i10 = load i8*, i8** %69, align 8
  %_new_gep_14.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13262.i10, i64 -36
  %72 = bitcast i8* %_new_gep_14.i to i32*
  store i32 0, i32* %72, align 4, !mcsema_real_eip !6
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_16263.i11 = load i8*, i8** %69, align 8
  %_new_gep_17.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_16263.i11, i64 -20
  %73 = bitcast i8* %_new_gep_17.i to i32*
  store i32 1, i32* %73, align 4, !mcsema_real_eip !7
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_19264.i12 = load i8*, i8** %69, align 8
  %_new_gep_20.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_19264.i12, i64 -24
  %74 = bitcast i8* %_new_gep_20.i to i32*
  store i32 1, i32* %74, align 4, !mcsema_real_eip !8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_22265.i13 = load i8*, i8** %69, align 8
  %_new_gep_23.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_22265.i13, i64 -24
  %75 = bitcast i8* %_new_gep_23.i to i32*
  %76 = load i32, i32* %75, align 4, !mcsema_real_eip !9
  %77 = sext i32 %76 to i64, !mcsema_real_eip !9
  %78 = mul nsw i64 %77, 11, !mcsema_real_eip !10
  %79 = add i64 %78, ptrtoint (%1* @data_0x359 to i64)
  %_new_gep_26.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_22265.i13, i64 -20
  %80 = bitcast i8* %_new_gep_26.i to i32*
  %81 = load i32, i32* %80, align 4, !mcsema_real_eip !11
  %82 = sext i32 %81 to i64, !mcsema_real_eip !11
  %83 = add i64 %79, %82, !mcsema_real_eip !12
  %84 = inttoptr i64 %83 to i8*
  store i8 88, i8* %84, align 1, !mcsema_real_eip !12
  %85 = tail call x86_64_sysvcc i64 @read(i64 0, i64 %67, i64 28), !mcsema_real_eip !13
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_28266.i14 = load i8*, i8** %69, align 8
  %_new_gep_29.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_28266.i14, i64 -72
  %_allin_new_bt_30.i = bitcast i8* %_new_gep_29.i to i64*
  store i64 %85, i64* %_allin_new_bt_30.i, align 8, !mcsema_real_eip !14
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_31267.i15 = load i8*, i8** %69, align 8
  %_new_gep_32.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_31267.i15, i64 -36
  %86 = bitcast i8* %_new_gep_32.i to i32*
  %87 = load i32, i32* %86, align 4, !mcsema_real_eip !15
  %88 = add i32 %87, -28
  %89 = icmp slt i32 %88, 0
  %90 = sub i32 27, %87
  %91 = and i32 %90, %87
  %92 = icmp slt i32 %91, 0
  %tmp.i = xor i1 %89, %92
  br i1 %tmp.i, label %block_0x11e.i, label %block_0x291.i, !mcsema_real_eip !16

block_0x291.i:                                    ; preds = %driverBlockRaw
  %_new_gep_35.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_31267.i15, i64 -4
  %93 = bitcast i8* %_new_gep_35.i to i32*
  store i32 1, i32* %93, align 4, !mcsema_real_eip !17
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_37268.i16 = load i8*, i8** %69, align 8
  %_new_gep_38.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_37268.i16, i64 -4
  %94 = bitcast i8* %_new_gep_38.i to i32*
  %95 = load i32, i32* %94, align 4, !mcsema_real_eip !18
  %96 = zext i32 %95 to i64, !mcsema_real_eip !18
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_40249.i = load i64, i64* %_RSP_ptr_.sroa.0.i, align 8
  %uadd351.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_40249.i, i64 96)
  %97 = extractvalue { i64, i1 } %uadd351.i, 0
  %98 = xor i64 %97, %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_40249.i, !mcsema_real_eip !19
  %99 = and i64 %98, 16, !mcsema_real_eip !19
  %100 = icmp ne i64 %99, 0, !mcsema_real_eip !19
  %101 = icmp slt i64 %97, 0
  %102 = icmp eq i64 %97, 0, !mcsema_real_eip !19
  %103 = xor i64 %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_40249.i, -9223372036854775808, !mcsema_real_eip !19
  %104 = and i64 %98, %103, !mcsema_real_eip !19
  %105 = icmp slt i64 %104, 0
  %106 = trunc i64 %97 to i8, !mcsema_real_eip !19
  %107 = tail call i8 @llvm.ctpop.i8(i8 %106), !mcsema_real_eip !19
  %108 = and i8 %107, 1
  %109 = icmp eq i8 %108, 0
  %110 = extractvalue { i64, i1 } %uadd351.i, 1
  store volatile i64 %97, i64* %_RSP_ptr_.sroa.0.i, align 8
  %111 = inttoptr i64 %97 to i64*, !mcsema_real_eip !20
  %112 = load i64, i64* %111, align 8
  store volatile i64 %112, i64* %_RBP_ptr_.sroa.0.i, align 8
  %113 = add i64 %97, 16
  store volatile i64 %113, i64* %_RSP_ptr_.sroa.0.i, align 8
  store i64 %96, i64* %RAX.i, align 8, !mcsema_real_eip !21
  store i64 %3, i64* %RBX.i, align 8, !mcsema_real_eip !21
  %114 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> <i64 28, i64 28>, <2 x i64>* %114, align 8
  store i64 %67, i64* %RSI.i, align 8, !mcsema_real_eip !21
  store i64 0, i64* %RDI.i, align 8, !mcsema_real_eip !21
  store volatile i64 %113, i64* %RSP.i, align 8
  store volatile i64 %112, i64* %RBP.i, align 8
  store i64 %67, i64* %R8.i, align 8, !mcsema_real_eip !21
  store i64 %79, i64* %R9.i, align 8, !mcsema_real_eip !21
  store i64 %6, i64* %R10.i, align 8, !mcsema_real_eip !21
  store i64 %7, i64* %R11.i, align 8, !mcsema_real_eip !21
  store i64 %8, i64* %R12.i, align 8, !mcsema_real_eip !21
  store i64 %9, i64* %R13.i, align 8, !mcsema_real_eip !21
  store i64 %10, i64* %R14.i, align 8, !mcsema_real_eip !21
  store i64 %11, i64* %R15.i, align 8, !mcsema_real_eip !21
  store i64 %12, i64* %RIP.i, align 8, !mcsema_real_eip !21
  store i1 %110, i1* %CF.i, align 1, !mcsema_real_eip !21
  store i1 %109, i1* %PF.i, align 1, !mcsema_real_eip !21
  store i1 %100, i1* %AF.i, align 1, !mcsema_real_eip !21
  store i1 %102, i1* %ZF.i, align 1, !mcsema_real_eip !21
  store i1 %101, i1* %SF.i, align 1, !mcsema_real_eip !21
  store i1 %105, i1* %OF.i, align 1, !mcsema_real_eip !21
  store i1 %13, i1* %DF.i, align 1, !mcsema_real_eip !21
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !21
  store i1 %16, i1* %FPU_B.i, align 1, !mcsema_real_eip !21
  store i1 %17, i1* %FPU_C3.i, align 1, !mcsema_real_eip !21
  store i3 %18, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !21
  store i1 %19, i1* %FPU_C2.i, align 1, !mcsema_real_eip !21
  store i1 %20, i1* %FPU_C1.i, align 1, !mcsema_real_eip !21
  store i1 %21, i1* %FPU_C0.i, align 1, !mcsema_real_eip !21
  store i1 %22, i1* %FPU_ES.i, align 1, !mcsema_real_eip !21
  store i1 %23, i1* %FPU_SF.i, align 1, !mcsema_real_eip !21
  store i1 %24, i1* %FPU_PE.i, align 1, !mcsema_real_eip !21
  store i1 %25, i1* %FPU_UE.i, align 1, !mcsema_real_eip !21
  store i1 %26, i1* %FPU_OE.i, align 1, !mcsema_real_eip !21
  store i1 %27, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !21
  store i1 %28, i1* %FPU_DE.i, align 1, !mcsema_real_eip !21
  store i1 %29, i1* %FPU_IE.i, align 1, !mcsema_real_eip !21
  store i1 %30, i1* %FPU_X.i, align 1, !mcsema_real_eip !21
  store i2 %31, i2* %FPU_RC.i, align 1, !mcsema_real_eip !21
  store i2 %32, i2* %FPU_PC.i, align 1, !mcsema_real_eip !21
  store i1 %33, i1* %FPU_PM.i, align 1, !mcsema_real_eip !21
  store i1 %34, i1* %FPU_UM.i, align 1, !mcsema_real_eip !21
  store i1 %35, i1* %FPU_OM.i, align 1, !mcsema_real_eip !21
  store i1 %36, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !21
  store i1 %37, i1* %FPU_DM.i, align 1, !mcsema_real_eip !21
  store i1 %38, i1* %FPU_IM.i, align 1, !mcsema_real_eip !21
  store i64 %41, i64* %40, align 4
  store i16 %42, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !21
  store i64 %43, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !21
  store i16 %44, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !21
  store i64 %45, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !21
  store i128 %46, i128* %XMM0.i, align 1, !mcsema_real_eip !21
  store i128 %47, i128* %XMM1.i, align 1, !mcsema_real_eip !21
  store i128 %48, i128* %XMM2.i, align 1, !mcsema_real_eip !21
  store i128 %49, i128* %XMM3.i, align 1, !mcsema_real_eip !21
  store i128 %50, i128* %XMM4.i, align 1, !mcsema_real_eip !21
  store i128 %51, i128* %XMM5.i, align 1, !mcsema_real_eip !21
  store i128 %52, i128* %XMM6.i, align 1, !mcsema_real_eip !21
  store i128 %53, i128* %XMM7.i, align 1, !mcsema_real_eip !21
  store i128 %54, i128* %XMM8.i, align 1, !mcsema_real_eip !21
  store i128 %55, i128* %XMM9.i, align 1, !mcsema_real_eip !21
  store i128 %56, i128* %XMM10.i, align 1, !mcsema_real_eip !21
  store i128 %57, i128* %XMM11.i, align 1, !mcsema_real_eip !21
  store i128 %58, i128* %XMM12.i, align 1, !mcsema_real_eip !21
  store i128 %59, i128* %XMM13.i, align 1, !mcsema_real_eip !21
  store i128 %60, i128* %XMM14.i, align 1, !mcsema_real_eip !21
  store i128 %61, i128* %XMM15.i, align 1, !mcsema_real_eip !21
  store i64 %62, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !21
  store i64 %63, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !21
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 104, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  br label %sub_b0.exit

block_0x11e.i:                                    ; preds = %driverBlockRaw
  %_new_gep_48.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_31267.i15, i64 -20
  %115 = bitcast i8* %_new_gep_48.i to i32*
  %116 = load i32, i32* %115, align 4, !mcsema_real_eip !22
  %_new_gep_51.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_31267.i15, i64 -28
  %117 = bitcast i8* %_new_gep_51.i to i32*
  store i32 %116, i32* %117, align 4, !mcsema_real_eip !23
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_53269.i17 = load i8*, i8** %69, align 8
  %_new_gep_54.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_53269.i17, i64 -24
  %118 = bitcast i8* %_new_gep_54.i to i32*
  %119 = load i32, i32* %118, align 4, !mcsema_real_eip !24
  %_new_gep_57.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_53269.i17, i64 -32
  %120 = bitcast i8* %_new_gep_57.i to i32*
  store i32 %119, i32* %120, align 4, !mcsema_real_eip !25
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_59270.i18 = load i8*, i8** %69, align 8
  %_new_gep_60.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_59270.i18, i64 -36
  %121 = bitcast i8* %_new_gep_60.i to i32*
  %122 = load i32, i32* %121, align 4, !mcsema_real_eip !26
  %123 = sext i32 %122 to i64, !mcsema_real_eip !26
  %_new_gep_63.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_59270.i18, i64 -64
  %_new_gep_64.i = getelementptr i8, i8* %_new_gep_63.i, i64 %123
  %124 = load i8, i8* %_new_gep_64.i, align 1, !mcsema_real_eip !27
  %125 = sext i8 %124 to i32, !mcsema_real_eip !27
  %126 = add nsw i32 %125, -97
  %127 = zext i32 %126 to i64, !mcsema_real_eip !28
  %128 = add nsw i32 %125, -119
  %129 = xor i32 %128, %126, !mcsema_real_eip !29
  %130 = icmp eq i32 %128, 0, !mcsema_real_eip !29
  %131 = icmp ult i32 %126, 22, !mcsema_real_eip !29
  %_new_gep_67.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_59270.i18, i64 -80
  %_allin_new_bt_68.i = bitcast i8* %_new_gep_67.i to i64*
  store i64 %127, i64* %_allin_new_bt_68.i, align 8, !mcsema_real_eip !30
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_69271.i19 = load i8*, i8** %69, align 8
  %_new_gep_70.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_69271.i19, i64 -84
  %132 = bitcast i8* %_new_gep_70.i to i32*
  store i32 %128, i32* %132, align 4, !mcsema_real_eip !31
  %.demorgan.i = or i1 %131, %130
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_72272.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  %133 = inttoptr i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_72272.i to i8*
  br i1 %.demorgan.i, label %block_0x148.i, label %block_0x18e.i, !mcsema_real_eip !32

block_0x18e.i:                                    ; preds = %block_0x11e.i
  %_new_gep_73.i = getelementptr i8, i8* %133, i64 -4
  %134 = bitcast i8* %_new_gep_73.i to i32*
  store i32 1, i32* %134, align 4, !mcsema_real_eip !33
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_75273.i20 = load i8*, i8** %69, align 8
  %_new_gep_76.i = getelementptr i8, i8* %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_75273.i20, i64 -4
  %135 = bitcast i8* %_new_gep_76.i to i32*
  %136 = load i32, i32* %135, align 4, !mcsema_real_eip !18
  %137 = zext i32 %136 to i64, !mcsema_real_eip !18
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_78252.i = load i64, i64* %_RSP_ptr_.sroa.0.i, align 8
  %uadd350.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_78252.i, i64 96)
  %138 = extractvalue { i64, i1 } %uadd350.i, 0
  %139 = xor i64 %138, %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_78252.i, !mcsema_real_eip !19
  %140 = and i64 %139, 16, !mcsema_real_eip !19
  %141 = icmp ne i64 %140, 0, !mcsema_real_eip !19
  %142 = icmp slt i64 %138, 0
  %143 = icmp eq i64 %138, 0, !mcsema_real_eip !19
  %144 = xor i64 %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_78252.i, -9223372036854775808, !mcsema_real_eip !19
  %145 = and i64 %139, %144, !mcsema_real_eip !19
  %146 = icmp slt i64 %145, 0
  %147 = trunc i64 %138 to i8, !mcsema_real_eip !19
  %148 = tail call i8 @llvm.ctpop.i8(i8 %147), !mcsema_real_eip !19
  %149 = and i8 %148, 1
  %150 = icmp eq i8 %149, 0
  %151 = extractvalue { i64, i1 } %uadd350.i, 1
  store volatile i64 %138, i64* %_RSP_ptr_.sroa.0.i, align 8
  %152 = inttoptr i64 %138 to i64*, !mcsema_real_eip !20
  %153 = load i64, i64* %152, align 8
  store volatile i64 %153, i64* %_RBP_ptr_.sroa.0.i, align 8
  %154 = add i64 %138, 16
  store volatile i64 %154, i64* %_RSP_ptr_.sroa.0.i, align 8
  store i64 %137, i64* %RAX.i, align 8, !mcsema_real_eip !21
  store i64 %3, i64* %RBX.i, align 8, !mcsema_real_eip !21
  store i64 %127, i64* %RCX.i, align 8, !mcsema_real_eip !21
  store i64 28, i64* %RDX.i, align 8, !mcsema_real_eip !21
  store i64 %67, i64* %RSI.i, align 8, !mcsema_real_eip !21
  store i64 0, i64* %RDI.i, align 8, !mcsema_real_eip !21
  store volatile i64 %154, i64* %RSP.i, align 8
  store volatile i64 %153, i64* %RBP.i, align 8
  store i64 %67, i64* %R8.i, align 8, !mcsema_real_eip !21
  store i64 %79, i64* %R9.i, align 8, !mcsema_real_eip !21
  store i64 %6, i64* %R10.i, align 8, !mcsema_real_eip !21
  store i64 %7, i64* %R11.i, align 8, !mcsema_real_eip !21
  store i64 %8, i64* %R12.i, align 8, !mcsema_real_eip !21
  store i64 %9, i64* %R13.i, align 8, !mcsema_real_eip !21
  store i64 %10, i64* %R14.i, align 8, !mcsema_real_eip !21
  store i64 %11, i64* %R15.i, align 8, !mcsema_real_eip !21
  store i64 %12, i64* %RIP.i, align 8, !mcsema_real_eip !21
  store i1 %151, i1* %CF.i, align 1, !mcsema_real_eip !21
  store i1 %150, i1* %PF.i, align 1, !mcsema_real_eip !21
  store i1 %141, i1* %AF.i, align 1, !mcsema_real_eip !21
  store i1 %143, i1* %ZF.i, align 1, !mcsema_real_eip !21
  store i1 %142, i1* %SF.i, align 1, !mcsema_real_eip !21
  store i1 %146, i1* %OF.i, align 1, !mcsema_real_eip !21
  store i1 %13, i1* %DF.i, align 1, !mcsema_real_eip !21
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !21
  store i1 %16, i1* %FPU_B.i, align 1, !mcsema_real_eip !21
  store i1 %17, i1* %FPU_C3.i, align 1, !mcsema_real_eip !21
  store i3 %18, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !21
  store i1 %19, i1* %FPU_C2.i, align 1, !mcsema_real_eip !21
  store i1 %20, i1* %FPU_C1.i, align 1, !mcsema_real_eip !21
  store i1 %21, i1* %FPU_C0.i, align 1, !mcsema_real_eip !21
  store i1 %22, i1* %FPU_ES.i, align 1, !mcsema_real_eip !21
  store i1 %23, i1* %FPU_SF.i, align 1, !mcsema_real_eip !21
  store i1 %24, i1* %FPU_PE.i, align 1, !mcsema_real_eip !21
  store i1 %25, i1* %FPU_UE.i, align 1, !mcsema_real_eip !21
  store i1 %26, i1* %FPU_OE.i, align 1, !mcsema_real_eip !21
  store i1 %27, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !21
  store i1 %28, i1* %FPU_DE.i, align 1, !mcsema_real_eip !21
  store i1 %29, i1* %FPU_IE.i, align 1, !mcsema_real_eip !21
  store i1 %30, i1* %FPU_X.i, align 1, !mcsema_real_eip !21
  store i2 %31, i2* %FPU_RC.i, align 1, !mcsema_real_eip !21
  store i2 %32, i2* %FPU_PC.i, align 1, !mcsema_real_eip !21
  store i1 %33, i1* %FPU_PM.i, align 1, !mcsema_real_eip !21
  store i1 %34, i1* %FPU_UM.i, align 1, !mcsema_real_eip !21
  store i1 %35, i1* %FPU_OM.i, align 1, !mcsema_real_eip !21
  store i1 %36, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !21
  store i1 %37, i1* %FPU_DM.i, align 1, !mcsema_real_eip !21
  store i1 %38, i1* %FPU_IM.i, align 1, !mcsema_real_eip !21
  store i64 %41, i64* %40, align 4
  store i16 %42, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !21
  store i64 %43, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !21
  store i16 %44, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !21
  store i64 %45, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !21
  store i128 %46, i128* %XMM0.i, align 1, !mcsema_real_eip !21
  store i128 %47, i128* %XMM1.i, align 1, !mcsema_real_eip !21
  store i128 %48, i128* %XMM2.i, align 1, !mcsema_real_eip !21
  store i128 %49, i128* %XMM3.i, align 1, !mcsema_real_eip !21
  store i128 %50, i128* %XMM4.i, align 1, !mcsema_real_eip !21
  store i128 %51, i128* %XMM5.i, align 1, !mcsema_real_eip !21
  store i128 %52, i128* %XMM6.i, align 1, !mcsema_real_eip !21
  store i128 %53, i128* %XMM7.i, align 1, !mcsema_real_eip !21
  store i128 %54, i128* %XMM8.i, align 1, !mcsema_real_eip !21
  store i128 %55, i128* %XMM9.i, align 1, !mcsema_real_eip !21
  store i128 %56, i128* %XMM10.i, align 1, !mcsema_real_eip !21
  store i128 %57, i128* %XMM11.i, align 1, !mcsema_real_eip !21
  store i128 %58, i128* %XMM12.i, align 1, !mcsema_real_eip !21
  store i128 %59, i128* %XMM13.i, align 1, !mcsema_real_eip !21
  store i128 %60, i128* %XMM14.i, align 1, !mcsema_real_eip !21
  store i128 %61, i128* %XMM15.i, align 1, !mcsema_real_eip !21
  store i64 %62, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !21
  store i64 %63, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !21
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 104, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  br label %sub_b0.exit

block_0x148.i:                                    ; preds = %block_0x11e.i
  %155 = and i32 %129, %126, !mcsema_real_eip !29
  %156 = icmp slt i32 %155, 0
  %157 = icmp slt i8 %124, 119
  %158 = trunc i32 %128 to i8, !mcsema_real_eip !29
  %159 = tail call i8 @llvm.ctpop.i8(i8 %158), !mcsema_real_eip !29
  %160 = and i8 %159, 1
  %161 = icmp eq i8 %160, 0
  %162 = and i32 %129, 16
  %163 = icmp eq i32 %162, 0
  %_new_gep_87.i = getelementptr i8, i8* %133, i64 -80
  %_allin_new_bt_88.i = bitcast i8* %_new_gep_87.i to i64*
  %164 = load i64, i64* %_allin_new_bt_88.i, align 8, !mcsema_real_eip !34
  %165 = shl i64 %164, 3
  %166 = add i64 %165, ptrtoint (%0* @data_0x2a1 to i64), !mcsema_real_eip !35
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !35
  %168 = load i64, i64* %167, align 8, !mcsema_real_eip !35
  store i64 %164, i64* %RAX.i, align 8, !mcsema_real_eip !36
  store i64 %3, i64* %RBX.i, align 8, !mcsema_real_eip !36
  store i64 %168, i64* %RCX.i, align 8, !mcsema_real_eip !36
  store i64 28, i64* %RDX.i, align 8, !mcsema_real_eip !36
  store i64 %67, i64* %RSI.i, align 8, !mcsema_real_eip !36
  store i64 0, i64* %RDI.i, align 8, !mcsema_real_eip !36
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_89255.i = load i64, i64* %_RSP_ptr_.sroa.0.i, align 8
  store volatile i64 %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_89255.i, i64* %RSP.i, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_72272.i, i64* %RBP.i, align 8
  store i64 %67, i64* %R8.i, align 8, !mcsema_real_eip !36
  store i64 %79, i64* %R9.i, align 8, !mcsema_real_eip !36
  store i64 %6, i64* %R10.i, align 8, !mcsema_real_eip !36
  store i64 %7, i64* %R11.i, align 8, !mcsema_real_eip !36
  store i64 %8, i64* %R12.i, align 8, !mcsema_real_eip !36
  store i64 %9, i64* %R13.i, align 8, !mcsema_real_eip !36
  store i64 %10, i64* %R14.i, align 8, !mcsema_real_eip !36
  store i64 %11, i64* %R15.i, align 8, !mcsema_real_eip !36
  store i64 %12, i64* %RIP.i, align 8, !mcsema_real_eip !36
  store i1 %131, i1* %CF.i, align 1, !mcsema_real_eip !36
  store i1 %161, i1* %PF.i, align 1, !mcsema_real_eip !36
  store i1 %163, i1* %AF.i, align 1, !mcsema_real_eip !36
  store i1 %130, i1* %ZF.i, align 1, !mcsema_real_eip !36
  store i1 %157, i1* %SF.i, align 1, !mcsema_real_eip !36
  store i1 %156, i1* %OF.i, align 1, !mcsema_real_eip !36
  store i1 %13, i1* %DF.i, align 1, !mcsema_real_eip !36
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !36
  store i1 %16, i1* %FPU_B.i, align 1, !mcsema_real_eip !36
  store i1 %17, i1* %FPU_C3.i, align 1, !mcsema_real_eip !36
  store i3 %18, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !36
  store i1 %19, i1* %FPU_C2.i, align 1, !mcsema_real_eip !36
  store i1 %20, i1* %FPU_C1.i, align 1, !mcsema_real_eip !36
  store i1 %21, i1* %FPU_C0.i, align 1, !mcsema_real_eip !36
  store i1 %22, i1* %FPU_ES.i, align 1, !mcsema_real_eip !36
  store i1 %23, i1* %FPU_SF.i, align 1, !mcsema_real_eip !36
  store i1 %24, i1* %FPU_PE.i, align 1, !mcsema_real_eip !36
  store i1 %25, i1* %FPU_UE.i, align 1, !mcsema_real_eip !36
  store i1 %26, i1* %FPU_OE.i, align 1, !mcsema_real_eip !36
  store i1 %27, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !36
  store i1 %28, i1* %FPU_DE.i, align 1, !mcsema_real_eip !36
  store i1 %29, i1* %FPU_IE.i, align 1, !mcsema_real_eip !36
  store i1 %30, i1* %FPU_X.i, align 1, !mcsema_real_eip !36
  store i2 %31, i2* %FPU_RC.i, align 1, !mcsema_real_eip !36
  store i2 %32, i2* %FPU_PC.i, align 1, !mcsema_real_eip !36
  store i1 %33, i1* %FPU_PM.i, align 1, !mcsema_real_eip !36
  store i1 %34, i1* %FPU_UM.i, align 1, !mcsema_real_eip !36
  store i1 %35, i1* %FPU_OM.i, align 1, !mcsema_real_eip !36
  store i1 %36, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !36
  store i1 %37, i1* %FPU_DM.i, align 1, !mcsema_real_eip !36
  store i1 %38, i1* %FPU_IM.i, align 1, !mcsema_real_eip !36
  store i64 %41, i64* %40, align 4
  store i16 %42, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !36
  store i64 %43, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !36
  store i16 %44, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !36
  store i64 %45, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !36
  store i128 %46, i128* %XMM0.i, align 1, !mcsema_real_eip !36
  store i128 %47, i128* %XMM1.i, align 1, !mcsema_real_eip !36
  store i128 %48, i128* %XMM2.i, align 1, !mcsema_real_eip !36
  store i128 %49, i128* %XMM3.i, align 1, !mcsema_real_eip !36
  store i128 %50, i128* %XMM4.i, align 1, !mcsema_real_eip !36
  store i128 %51, i128* %XMM5.i, align 1, !mcsema_real_eip !36
  store i128 %52, i128* %XMM6.i, align 1, !mcsema_real_eip !36
  store i128 %53, i128* %XMM7.i, align 1, !mcsema_real_eip !36
  store i128 %54, i128* %XMM8.i, align 1, !mcsema_real_eip !36
  store i128 %55, i128* %XMM9.i, align 1, !mcsema_real_eip !36
  store i128 %56, i128* %XMM10.i, align 1, !mcsema_real_eip !36
  store i128 %57, i128* %XMM11.i, align 1, !mcsema_real_eip !36
  store i128 %58, i128* %XMM12.i, align 1, !mcsema_real_eip !36
  store i128 %59, i128* %XMM13.i, align 1, !mcsema_real_eip !36
  store i128 %60, i128* %XMM14.i, align 1, !mcsema_real_eip !36
  store i128 %61, i128* %XMM15.i, align 1, !mcsema_real_eip !36
  store i64 %62, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !36
  store i64 %63, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !36
  call void @llvm.trap()
  unreachable

sub_b0.exit:                                      ; preds = %block_0x18e.i, %block_0x291.i
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_172.2(%struct.regs*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #2 {
entry:
  %_RSP_ptr_.sroa.0 = alloca i64, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_269 = alloca [84 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [84 x i8], [84 x i8]* %_local_stack_start_ptr_269, i64 0, i64 84
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_.sroa.0, align 8
  %2 = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  %FPU_TAG_val = alloca i64, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !37
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !37
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !37
  %3 = load i64, i64* %RBX, align 8, !mcsema_real_eip !37
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !37
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !37
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !37
  %4 = load i64, i64* %RSI, align 8, !mcsema_real_eip !37
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !37
  %5 = load i64, i64* %RDI, align 8, !mcsema_real_eip !37
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !37
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !37
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !37
  %6 = load i64, i64* %R8, align 8, !mcsema_real_eip !37
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !37
  %7 = load i64, i64* %R9, align 8, !mcsema_real_eip !37
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !37
  %8 = load i64, i64* %R10, align 8, !mcsema_real_eip !37
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !37
  %9 = load i64, i64* %R11, align 8, !mcsema_real_eip !37
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !37
  %10 = load i64, i64* %R12, align 8, !mcsema_real_eip !37
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !37
  %11 = load i64, i64* %R13, align 8, !mcsema_real_eip !37
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !37
  %12 = load i64, i64* %R14, align 8, !mcsema_real_eip !37
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !37
  %13 = load i64, i64* %R15, align 8, !mcsema_real_eip !37
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !37
  %14 = load i64, i64* %RIP, align 8, !mcsema_real_eip !37
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !37
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !37
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !37
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !37
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !37
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !37
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !37
  %15 = load i1, i1* %DF, align 1, !mcsema_real_eip !37
  %16 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !37
  %17 = bitcast x86_fp80* %16 to i8*, !mcsema_real_eip !37
  %18 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !37
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %18, i8* %17, i32 128, i32 4, i1 false), !mcsema_real_eip !37
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !37
  %19 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !37
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !37
  %20 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !37
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !37
  %21 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !37
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !37
  %22 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !37
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !37
  %23 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !37
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !37
  %24 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !37
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !37
  %25 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !37
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !37
  %26 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !37
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !37
  %27 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !37
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !37
  %28 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !37
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !37
  %29 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !37
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !37
  %30 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !37
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !37
  %31 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !37
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !37
  %32 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !37
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !37
  %33 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !37
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !37
  %34 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !37
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !37
  %35 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !37
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !37
  %36 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !37
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !37
  %37 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !37
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !37
  %38 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !37
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !37
  %39 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !37
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !37
  %40 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !37
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !37
  %41 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !37
  %42 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !37
  %43 = bitcast i8* %42 to i64*
  %_ptr_to_int_ = ptrtoint i8* %42 to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %1
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %42, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %42, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %42, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_2_, %_cond2_1_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond2_, %_cond1_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  %44 = select i1 %_cond1_n_cond2_cond3_, i64* %_address_in_parent_stack_bt_, i64* %43
  %_new_load_ = load i64, i64* %44, align 8
  store i64 %_new_load_, i64* %FPU_TAG_val, align 8
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !37
  %45 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !37
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !37
  %46 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !37
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !37
  %47 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !37
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !37
  %48 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !37
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !37
  %49 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !37
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !37
  %50 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !37
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !37
  %51 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !37
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !37
  %52 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !37
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !37
  %53 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !37
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !37
  %54 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !37
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !37
  %55 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !37
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !37
  %56 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !37
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !37
  %57 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !37
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !37
  %58 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !37
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !37
  %59 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !37
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !37
  %60 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !37
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !37
  %61 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !37
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !37
  %62 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !37
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !37
  %63 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !37
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !37
  %64 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !37
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !37
  %65 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !37
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !37
  %66 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !37
  %67 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_303 = load i8*, i8** %67, align 8
  %_new_gep_ = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_303, i64 -20
  %68 = bitcast i8* %_new_gep_ to i32*
  %_ptr_to_int_146 = ptrtoint i8* %_new_gep_ to i64
  %_offset_above_rbp_149 = sub i64 %_ptr_to_int_146, %1
  %_pot_address_in_parent_stack_150 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_149
  %_cond1_151 = icmp ugt i8* %_new_gep_, %_local_stack_end_ptr_
  %_cond2_1_152 = icmp ugt i8* %_new_gep_, %_parent_stack_end_ptr_
  %_cond2_2_153 = icmp ult i8* %_new_gep_, %_parent_stack_start_ptr_
  %_cond2_154 = or i1 %_cond2_1_152, %_cond2_2_153
  %_cond4_155 = icmp ule i8* %_pot_address_in_parent_stack_150, %_parent_stack_end_ptr_
  %_cond1_n_cond2_156 = and i1 %_cond1_151, %_cond2_154
  %_cond1_n_cond2_cond3_157 = and i1 %_cond1_n_cond2_156, %_cond4_155
  %_address_in_parent_stack_bt_159 = bitcast i8* %_pot_address_in_parent_stack_150 to i32*
  %69 = select i1 %_cond1_n_cond2_cond3_157, i32* %_address_in_parent_stack_bt_159, i32* %68
  %_new_load_160 = load i32, i32* %69, align 4
  %70 = add i32 %_new_load_160, -1
  store i32 %70, i32* %68, align 4, !mcsema_real_eip !38
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4304 = load i8*, i8** %67, align 8
  %_new_gep_5 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4304, i64 -24
  %_ptr_to_int_161 = ptrtoint i8* %_new_gep_5 to i64
  %_offset_above_rbp_164 = sub i64 %_ptr_to_int_161, %1
  %_pot_address_in_parent_stack_165 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_164
  %_cond1_166 = icmp ugt i8* %_new_gep_5, %_local_stack_end_ptr_
  %_cond2_1_167 = icmp ugt i8* %_new_gep_5, %_parent_stack_end_ptr_
  %_cond2_2_168 = icmp ult i8* %_new_gep_5, %_parent_stack_start_ptr_
  %_cond2_169 = or i1 %_cond2_1_167, %_cond2_2_168
  %_cond4_170 = icmp ule i8* %_pot_address_in_parent_stack_165, %_parent_stack_end_ptr_
  %_cond1_n_cond2_171 = and i1 %_cond1_166, %_cond2_169
  %_cond1_n_cond2_cond3_172 = and i1 %_cond1_n_cond2_171, %_cond4_170
  %.v = select i1 %_cond1_n_cond2_cond3_172, i8* %_pot_address_in_parent_stack_165, i8* %_new_gep_5
  %71 = bitcast i8* %.v to i32*
  %_new_load_175 = load i32, i32* %71, align 4
  %72 = sext i32 %_new_load_175 to i64, !mcsema_real_eip !39
  %73 = mul nsw i64 %72, 11, !mcsema_real_eip !40
  %74 = add i64 %73, ptrtoint (%1* @data_0x359 to i64)
  %_new_gep_8 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4304, i64 -20
  %_ptr_to_int_176 = ptrtoint i8* %_new_gep_8 to i64
  %_offset_above_rbp_179 = sub i64 %_ptr_to_int_176, %1
  %_pot_address_in_parent_stack_180 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_179
  %_cond1_181 = icmp ugt i8* %_new_gep_8, %_local_stack_end_ptr_
  %_cond2_1_182 = icmp ugt i8* %_new_gep_8, %_parent_stack_end_ptr_
  %_cond2_2_183 = icmp ult i8* %_new_gep_8, %_parent_stack_start_ptr_
  %_cond2_184 = or i1 %_cond2_1_182, %_cond2_2_183
  %_cond4_185 = icmp ule i8* %_pot_address_in_parent_stack_180, %_parent_stack_end_ptr_
  %_cond1_n_cond2_186 = and i1 %_cond1_181, %_cond2_184
  %_cond1_n_cond2_cond3_187 = and i1 %_cond1_n_cond2_186, %_cond4_185
  %.v270 = select i1 %_cond1_n_cond2_cond3_187, i8* %_pot_address_in_parent_stack_180, i8* %_new_gep_8
  %75 = bitcast i8* %.v270 to i32*
  %_new_load_190 = load i32, i32* %75, align 4
  %76 = sext i32 %_new_load_190 to i64, !mcsema_real_eip !41
  %77 = add i64 %74, %76, !mcsema_real_eip !42
  %78 = inttoptr i64 %77 to i8*
  %_offset_above_rbp_193 = sub i64 %77, %1
  %_pot_address_in_parent_stack_194 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_193
  %_cond1_195 = icmp ugt i8* %78, %_local_stack_end_ptr_
  %_cond2_1_196 = icmp ugt i8* %78, %_parent_stack_end_ptr_
  %_cond2_2_197 = icmp ult i8* %78, %_parent_stack_start_ptr_
  %_cond2_198 = or i1 %_cond2_1_196, %_cond2_2_197
  %_cond4_199 = icmp ule i8* %_pot_address_in_parent_stack_194, %_parent_stack_end_ptr_
  %_cond1_n_cond2_200 = and i1 %_cond1_195, %_cond2_198
  %_cond1_n_cond2_cond3_201 = and i1 %_cond4_199, %_cond1_n_cond2_200
  %_address_in_parent_stack_202. = select i1 %_cond1_n_cond2_cond3_201, i8* %_pot_address_in_parent_stack_194, i8* %78
  %_new_load_203 = load i8, i8* %_address_in_parent_stack_202., align 1
  %79 = sext i8 %_new_load_203 to i64
  %80 = and i64 %79, 4294967295
  switch i8 %_new_load_203, label %block_0x1f2 [
    i8 35, label %block_0x298
    i8 32, label %block_0x242
  ]

block_0x298:                                      ; preds = %entry, %block_0x11e, %block_0x24e
  %_RBP_ptr_.0._load_rbp_ptr_130.sink = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_77315, %block_0x24e ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_130313, %block_0x11e ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4304, %entry ]
  %RDX_val.0 = phi i64 [ %80, %block_0x24e ], [ %123, %block_0x11e ], [ %80, %entry ]
  %RCX_val.0 = phi i64 [ %76, %block_0x24e ], [ %168, %block_0x11e ], [ %76, %entry ]
  %.sink = phi i32 [ 2, %block_0x24e ], [ 1, %block_0x11e ], [ 0, %entry ]
  %_new_gep_131 = getelementptr i8, i8* %_RBP_ptr_.0._load_rbp_ptr_130.sink, i64 -4
  %81 = bitcast i8* %_new_gep_131 to i32*
  store i32 %.sink, i32* %81, align 4
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_19314 = load i8*, i8** %67, align 8
  %_new_gep_20 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_19314, i64 -4
  %_ptr_to_int_247 = ptrtoint i8* %_new_gep_20 to i64
  %_offset_above_rbp_250 = sub i64 %_ptr_to_int_247, %1
  %_pot_address_in_parent_stack_251 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_250
  %_cond1_252 = icmp ugt i8* %_new_gep_20, %_local_stack_end_ptr_
  %_cond2_1_253 = icmp ugt i8* %_new_gep_20, %_parent_stack_end_ptr_
  %_cond2_2_254 = icmp ult i8* %_new_gep_20, %_parent_stack_start_ptr_
  %_cond2_255 = or i1 %_cond2_1_253, %_cond2_2_254
  %_cond4_256 = icmp ule i8* %_pot_address_in_parent_stack_251, %_parent_stack_end_ptr_
  %_cond1_n_cond2_257 = and i1 %_cond1_252, %_cond2_255
  %_cond1_n_cond2_cond3_258 = and i1 %_cond1_n_cond2_257, %_cond4_256
  %.v287 = select i1 %_cond1_n_cond2_cond3_258, i8* %_pot_address_in_parent_stack_251, i8* %_new_gep_20
  %82 = bitcast i8* %.v287 to i32*
  %_new_load_261 = load i32, i32* %82, align 4
  %83 = zext i32 %_new_load_261 to i64, !mcsema_real_eip !18
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_288 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %uadd348 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_288, i64 96)
  %84 = extractvalue { i64, i1 } %uadd348, 0
  %85 = xor i64 %84, %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_288, !mcsema_real_eip !19
  %86 = and i64 %85, 16, !mcsema_real_eip !19
  %87 = icmp ne i64 %86, 0, !mcsema_real_eip !19
  %88 = icmp slt i64 %84, 0
  %89 = icmp eq i64 %84, 0, !mcsema_real_eip !19
  %90 = xor i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_288, -9223372036854775808, !mcsema_real_eip !19
  %91 = and i64 %85, %90, !mcsema_real_eip !19
  %92 = icmp slt i64 %91, 0
  %93 = trunc i64 %84 to i8, !mcsema_real_eip !19
  %94 = tail call i8 @llvm.ctpop.i8(i8 %93), !mcsema_real_eip !19
  %95 = and i8 %94, 1
  %96 = icmp eq i8 %95, 0
  %97 = extractvalue { i64, i1 } %uadd348, 1
  %_new_int2ptr_ = inttoptr i64 %84 to i8*
  store volatile i64 %84, i64* %_RSP_ptr_.sroa.0, align 8
  %98 = inttoptr i64 %84 to i64*, !mcsema_real_eip !20
  %_offset_above_rbp_265 = sub i64 %84, %1
  %_pot_address_in_parent_stack_266 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_265
  %_cond1_267 = icmp ugt i8* %_new_int2ptr_, %_local_stack_end_ptr_
  %_cond2_1_268 = icmp ugt i8* %_new_int2ptr_, %_parent_stack_end_ptr_
  %_cond2_2_269 = icmp ult i8* %_new_int2ptr_, %_parent_stack_start_ptr_
  %_cond2_270 = or i1 %_cond2_1_268, %_cond2_2_269
  %_cond4_271 = icmp ule i8* %_pot_address_in_parent_stack_266, %_parent_stack_end_ptr_
  %_cond1_n_cond2_272 = and i1 %_cond1_267, %_cond2_270
  %_cond1_n_cond2_cond3_273 = and i1 %_cond4_271, %_cond1_n_cond2_272
  %_address_in_parent_stack_bt_275 = bitcast i8* %_pot_address_in_parent_stack_266 to i64*
  %99 = select i1 %_cond1_n_cond2_cond3_273, i64* %_address_in_parent_stack_bt_275, i64* %98
  %_new_load_276289290 = load i64, i64* %99, align 8
  store volatile i64 %_new_load_276289290, i64* %_RBP_ptr_.sroa.0, align 8
  %100 = add i64 %84, 16
  store volatile i64 %100, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %83, i64* %RAX, align 8, !mcsema_real_eip !21
  store i64 %3, i64* %RBX, align 8, !mcsema_real_eip !21
  store i64 %RCX_val.0, i64* %RCX, align 8, !mcsema_real_eip !21
  store i64 %RDX_val.0, i64* %RDX, align 8, !mcsema_real_eip !21
  store i64 %4, i64* %RSI, align 8, !mcsema_real_eip !21
  store i64 %5, i64* %RDI, align 8, !mcsema_real_eip !21
  store volatile i64 %100, i64* %RSP, align 8
  store volatile i64 %_new_load_276289290, i64* %RBP, align 8
  store i64 %6, i64* %R8, align 8, !mcsema_real_eip !21
  store i64 %7, i64* %R9, align 8, !mcsema_real_eip !21
  store i64 %8, i64* %R10, align 8, !mcsema_real_eip !21
  store i64 %9, i64* %R11, align 8, !mcsema_real_eip !21
  store i64 %10, i64* %R12, align 8, !mcsema_real_eip !21
  store i64 %11, i64* %R13, align 8, !mcsema_real_eip !21
  store i64 %12, i64* %R14, align 8, !mcsema_real_eip !21
  store i64 %13, i64* %R15, align 8, !mcsema_real_eip !21
  store i64 %14, i64* %RIP, align 8, !mcsema_real_eip !21
  store i1 %97, i1* %CF, align 1, !mcsema_real_eip !21
  store i1 %96, i1* %PF, align 1, !mcsema_real_eip !21
  store i1 %87, i1* %AF, align 1, !mcsema_real_eip !21
  store i1 %89, i1* %ZF, align 1, !mcsema_real_eip !21
  store i1 %88, i1* %SF, align 1, !mcsema_real_eip !21
  store i1 %92, i1* %OF, align 1, !mcsema_real_eip !21
  store i1 %15, i1* %DF, align 1, !mcsema_real_eip !21
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* nonnull %18, i32 128, i32 8, i1 false), !mcsema_real_eip !21
  store i1 %19, i1* %FPU_B, align 1, !mcsema_real_eip !21
  store i1 %20, i1* %FPU_C3, align 1, !mcsema_real_eip !21
  store i3 %21, i3* %FPU_TOP, align 1, !mcsema_real_eip !21
  store i1 %22, i1* %FPU_C2, align 1, !mcsema_real_eip !21
  store i1 %23, i1* %FPU_C1, align 1, !mcsema_real_eip !21
  store i1 %24, i1* %FPU_C0, align 1, !mcsema_real_eip !21
  store i1 %25, i1* %FPU_ES, align 1, !mcsema_real_eip !21
  store i1 %26, i1* %FPU_SF, align 1, !mcsema_real_eip !21
  store i1 %27, i1* %FPU_PE, align 1, !mcsema_real_eip !21
  store i1 %28, i1* %FPU_UE, align 1, !mcsema_real_eip !21
  store i1 %29, i1* %FPU_OE, align 1, !mcsema_real_eip !21
  store i1 %30, i1* %FPU_ZE, align 1, !mcsema_real_eip !21
  store i1 %31, i1* %FPU_DE, align 1, !mcsema_real_eip !21
  store i1 %32, i1* %FPU_IE, align 1, !mcsema_real_eip !21
  store i1 %33, i1* %FPU_X, align 1, !mcsema_real_eip !21
  store i2 %34, i2* %FPU_RC, align 1, !mcsema_real_eip !21
  store i2 %35, i2* %FPU_PC, align 1, !mcsema_real_eip !21
  store i1 %36, i1* %FPU_PM, align 1, !mcsema_real_eip !21
  store i1 %37, i1* %FPU_UM, align 1, !mcsema_real_eip !21
  store i1 %38, i1* %FPU_OM, align 1, !mcsema_real_eip !21
  store i1 %39, i1* %FPU_ZM, align 1, !mcsema_real_eip !21
  store i1 %40, i1* %FPU_DM, align 1, !mcsema_real_eip !21
  store i1 %41, i1* %FPU_IM, align 1, !mcsema_real_eip !21
  %_ptr_to_int_277 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_279 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_280 = sub i64 %_ptr_to_int_277, %1
  %_pot_address_in_parent_stack_281 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_280
  %_cond1_282 = icmp ugt i8* %_ptr_bt_279, %_local_stack_end_ptr_
  %_cond2_1_283 = icmp ugt i8* %_ptr_bt_279, %_parent_stack_end_ptr_
  %_cond2_2_284 = icmp ult i8* %_ptr_bt_279, %_parent_stack_start_ptr_
  %_cond2_285 = or i1 %_cond2_1_283, %_cond2_2_284
  %_cond4_286 = icmp ule i8* %_pot_address_in_parent_stack_281, %_parent_stack_end_ptr_
  %_cond1_n_cond2_287 = and i1 %_cond1_282, %_cond2_285
  %_cond1_n_cond2_cond3_288 = and i1 %_cond1_n_cond2_287, %_cond4_286
  %_address_in_parent_stack_bt_290 = bitcast i8* %_pot_address_in_parent_stack_281 to i64*
  %101 = select i1 %_cond1_n_cond2_cond3_288, i64* %_address_in_parent_stack_bt_290, i64* %FPU_TAG_val
  %_new_load_291 = load i64, i64* %101, align 8
  store i64 %_new_load_291, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !21
  store i64 %46, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !21
  store i16 %47, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !21
  store i64 %48, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !21
  store i128 %49, i128* %XMM0, align 1, !mcsema_real_eip !21
  store i128 %50, i128* %XMM1, align 1, !mcsema_real_eip !21
  store i128 %51, i128* %XMM2, align 1, !mcsema_real_eip !21
  store i128 %52, i128* %XMM3, align 1, !mcsema_real_eip !21
  store i128 %53, i128* %XMM4, align 1, !mcsema_real_eip !21
  store i128 %54, i128* %XMM5, align 1, !mcsema_real_eip !21
  store i128 %55, i128* %XMM6, align 1, !mcsema_real_eip !21
  store i128 %56, i128* %XMM7, align 1, !mcsema_real_eip !21
  store i128 %57, i128* %XMM8, align 1, !mcsema_real_eip !21
  store i128 %58, i128* %XMM9, align 1, !mcsema_real_eip !21
  store i128 %59, i128* %XMM10, align 1, !mcsema_real_eip !21
  store i128 %60, i128* %XMM11, align 1, !mcsema_real_eip !21
  store i128 %61, i128* %XMM12, align 1, !mcsema_real_eip !21
  store i128 %62, i128* %XMM13, align 1, !mcsema_real_eip !21
  store i128 %63, i128* %XMM14, align 1, !mcsema_real_eip !21
  store i128 %64, i128* %XMM15, align 1, !mcsema_real_eip !21
  store i64 %65, i64* %STACK_BASE, align 1, !mcsema_real_eip !21
  store i64 %66, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !21
  ret void, !mcsema_real_eip !21

block_0x242:                                      ; preds = %entry, %block_0x22c
  %_new_gep_29 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4304, i64 -28
  %_ptr_to_int_292 = ptrtoint i8* %_new_gep_29 to i64
  %_offset_above_rbp_295 = sub i64 %_ptr_to_int_292, %1
  %_pot_address_in_parent_stack_296 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_295
  %_cond1_297 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_298 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_299 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_300 = or i1 %_cond2_1_298, %_cond2_2_299
  %_cond4_301 = icmp ule i8* %_pot_address_in_parent_stack_296, %_parent_stack_end_ptr_
  %_cond1_n_cond2_302 = and i1 %_cond1_297, %_cond2_300
  %_cond1_n_cond2_cond3_303 = and i1 %_cond1_n_cond2_302, %_cond4_301
  %.v300 = select i1 %_cond1_n_cond2_cond3_303, i8* %_pot_address_in_parent_stack_296, i8* %_new_gep_29
  %102 = bitcast i8* %.v300 to i32*
  %_new_load_306 = load i32, i32* %102, align 4
  %103 = icmp eq i32 %_new_load_306, %_new_load_190
  br i1 %103, label %block_0x24e, label %block_0x266, !mcsema_real_eip !43

block_0x1f2:                                      ; preds = %entry
  %notlhs = icmp ne i32 %_new_load_175, 2
  %notrhs = icmp ne i8 %_new_load_203, 124
  %or.cond.not = or i1 %notlhs, %notrhs
  %104 = icmp slt i32 %_new_load_190, 1
  %or.cond302 = or i1 %104, %or.cond.not
  br i1 %or.cond302, label %block_0x236, label %block_0x22c, !mcsema_real_eip !44

block_0x236:                                      ; preds = %block_0x1f2, %block_0x22c
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4304, i64 -28
  %_ptr_to_int_337 = ptrtoint i8* %_new_gep_38 to i64
  %_offset_above_rbp_340 = sub i64 %_ptr_to_int_337, %1
  %_pot_address_in_parent_stack_341 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_340
  %_cond1_342 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_343 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_344 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_345 = or i1 %_cond2_1_343, %_cond2_2_344
  %_cond4_346 = icmp ule i8* %_pot_address_in_parent_stack_341, %_parent_stack_end_ptr_
  %_cond1_n_cond2_347 = and i1 %_cond1_342, %_cond2_345
  %_cond1_n_cond2_cond3_348 = and i1 %_cond1_n_cond2_347, %_cond4_346
  %.v271 = select i1 %_cond1_n_cond2_cond3_348, i8* %_pot_address_in_parent_stack_341, i8* %_new_gep_38
  %105 = bitcast i8* %.v271 to i32*
  %_new_load_351 = load i32, i32* %105, align 4
  %106 = bitcast i8* %_new_gep_8 to i32*
  store i32 %_new_load_351, i32* %106, align 4, !mcsema_real_eip !45
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_43317 = load i8*, i8** %67, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_43317, i64 -32
  %_ptr_to_int_352 = ptrtoint i8* %_new_gep_44 to i64
  %_offset_above_rbp_355 = sub i64 %_ptr_to_int_352, %1
  %_pot_address_in_parent_stack_356 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_355
  %_cond1_357 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_358 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_359 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_360 = or i1 %_cond2_1_358, %_cond2_2_359
  %_cond4_361 = icmp ule i8* %_pot_address_in_parent_stack_356, %_parent_stack_end_ptr_
  %_cond1_n_cond2_362 = and i1 %_cond1_357, %_cond2_360
  %_cond1_n_cond2_cond3_363 = and i1 %_cond1_n_cond2_362, %_cond4_361
  %.v272 = select i1 %_cond1_n_cond2_cond3_363, i8* %_pot_address_in_parent_stack_356, i8* %_new_gep_44
  %107 = bitcast i8* %.v272 to i32*
  %_new_load_366 = load i32, i32* %107, align 4
  %_new_gep_47 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_43317, i64 -24
  %108 = bitcast i8* %_new_gep_47 to i32*
  store i32 %_new_load_366, i32* %108, align 4, !mcsema_real_eip !46
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_49318 = load i8*, i8** %67, align 8
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_49318, i64 -28
  %_ptr_to_int_367 = ptrtoint i8* %_new_gep_50 to i64
  %_offset_above_rbp_370 = sub i64 %_ptr_to_int_367, %1
  %_pot_address_in_parent_stack_371 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_370
  %_cond1_372 = icmp ugt i8* %_new_gep_50, %_local_stack_end_ptr_
  %_cond2_1_373 = icmp ugt i8* %_new_gep_50, %_parent_stack_end_ptr_
  %_cond2_2_374 = icmp ult i8* %_new_gep_50, %_parent_stack_start_ptr_
  %_cond2_375 = or i1 %_cond2_1_373, %_cond2_2_374
  %_cond4_376 = icmp ule i8* %_pot_address_in_parent_stack_371, %_parent_stack_end_ptr_
  %_cond1_n_cond2_377 = and i1 %_cond1_372, %_cond2_375
  %_cond1_n_cond2_cond3_378 = and i1 %_cond1_n_cond2_377, %_cond4_376
  %.v273 = select i1 %_cond1_n_cond2_cond3_378, i8* %_pot_address_in_parent_stack_371, i8* %_new_gep_50
  %109 = bitcast i8* %.v273 to i32*
  %_new_load_381 = load i32, i32* %109, align 4
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_49318, i64 -20
  %_ptr_to_int_382 = ptrtoint i8* %_new_gep_53 to i64
  %_offset_above_rbp_385 = sub i64 %_ptr_to_int_382, %1
  %_pot_address_in_parent_stack_386 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_385
  %_cond1_387 = icmp ugt i8* %_new_gep_53, %_local_stack_end_ptr_
  %_cond2_1_388 = icmp ugt i8* %_new_gep_53, %_parent_stack_end_ptr_
  %_cond2_2_389 = icmp ult i8* %_new_gep_53, %_parent_stack_start_ptr_
  %_cond2_390 = or i1 %_cond2_1_388, %_cond2_2_389
  %_cond4_391 = icmp ule i8* %_pot_address_in_parent_stack_386, %_parent_stack_end_ptr_
  %_cond1_n_cond2_392 = and i1 %_cond1_387, %_cond2_390
  %_cond1_n_cond2_cond3_393 = and i1 %_cond1_n_cond2_392, %_cond4_391
  %.v274 = select i1 %_cond1_n_cond2_cond3_393, i8* %_pot_address_in_parent_stack_386, i8* %_new_gep_53
  %110 = bitcast i8* %.v274 to i32*
  %_new_load_396 = load i32, i32* %110, align 4
  %111 = icmp eq i32 %_new_load_381, %_new_load_396
  br i1 %111, label %block_0x24e, label %block_0x266, !mcsema_real_eip !43

block_0x266:                                      ; preds = %block_0x24e, %block_0x236, %block_0x242
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_61306 = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_77315, %block_0x24e ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_49318, %block_0x236 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4304, %block_0x242 ]
  %_new_gep_62 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_61306, i64 -24
  %_ptr_to_int_440 = ptrtoint i8* %_new_gep_62 to i64
  %_offset_above_rbp_443 = sub i64 %_ptr_to_int_440, %1
  %_pot_address_in_parent_stack_444 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_443
  %_cond1_445 = icmp ugt i8* %_new_gep_62, %_local_stack_end_ptr_
  %_cond2_1_446 = icmp ugt i8* %_new_gep_62, %_parent_stack_end_ptr_
  %_cond2_2_447 = icmp ult i8* %_new_gep_62, %_parent_stack_start_ptr_
  %_cond2_448 = or i1 %_cond2_1_446, %_cond2_2_447
  %_cond4_449 = icmp ule i8* %_pot_address_in_parent_stack_444, %_parent_stack_end_ptr_
  %_cond1_n_cond2_450 = and i1 %_cond1_445, %_cond2_448
  %_cond1_n_cond2_cond3_451 = and i1 %_cond1_n_cond2_450, %_cond4_449
  %.v275 = select i1 %_cond1_n_cond2_cond3_451, i8* %_pot_address_in_parent_stack_444, i8* %_new_gep_62
  %112 = bitcast i8* %.v275 to i32*
  %_new_load_454 = load i32, i32* %112, align 4
  %113 = sext i32 %_new_load_454 to i64, !mcsema_real_eip !47
  %114 = mul nsw i64 %113, 11, !mcsema_real_eip !48
  %115 = add i64 %114, ptrtoint (%1* @data_0x359 to i64)
  %_new_gep_65 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_61306, i64 -20
  %_ptr_to_int_455 = ptrtoint i8* %_new_gep_65 to i64
  %_offset_above_rbp_458 = sub i64 %_ptr_to_int_455, %1
  %_pot_address_in_parent_stack_459 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_458
  %_cond1_460 = icmp ugt i8* %_new_gep_65, %_local_stack_end_ptr_
  %_cond2_1_461 = icmp ugt i8* %_new_gep_65, %_parent_stack_end_ptr_
  %_cond2_2_462 = icmp ult i8* %_new_gep_65, %_parent_stack_start_ptr_
  %_cond2_463 = or i1 %_cond2_1_461, %_cond2_2_462
  %_cond4_464 = icmp ule i8* %_pot_address_in_parent_stack_459, %_parent_stack_end_ptr_
  %_cond1_n_cond2_465 = and i1 %_cond1_460, %_cond2_463
  %_cond1_n_cond2_cond3_466 = and i1 %_cond1_n_cond2_465, %_cond4_464
  %.v276 = select i1 %_cond1_n_cond2_cond3_466, i8* %_pot_address_in_parent_stack_459, i8* %_new_gep_65
  %116 = bitcast i8* %.v276 to i32*
  %_new_load_469 = load i32, i32* %116, align 4
  %117 = sext i32 %_new_load_469 to i64, !mcsema_real_eip !49
  %118 = add i64 %115, %117, !mcsema_real_eip !50
  %119 = inttoptr i64 %118 to i8*
  store i8 88, i8* %119, align 1, !mcsema_real_eip !50
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_67307 = load i8*, i8** %67, align 8
  %_new_gep_68 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_67307, i64 -36
  %120 = bitcast i8* %_new_gep_68 to i32*
  %_ptr_to_int_470 = ptrtoint i8* %_new_gep_68 to i64
  %_offset_above_rbp_473 = sub i64 %_ptr_to_int_470, %1
  %_pot_address_in_parent_stack_474 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_473
  %_cond1_475 = icmp ugt i8* %_new_gep_68, %_local_stack_end_ptr_
  %_cond2_1_476 = icmp ugt i8* %_new_gep_68, %_parent_stack_end_ptr_
  %_cond2_2_477 = icmp ult i8* %_new_gep_68, %_parent_stack_start_ptr_
  %_cond2_478 = or i1 %_cond2_1_476, %_cond2_2_477
  %_cond4_479 = icmp ule i8* %_pot_address_in_parent_stack_474, %_parent_stack_end_ptr_
  %_cond1_n_cond2_480 = and i1 %_cond1_475, %_cond2_478
  %_cond1_n_cond2_cond3_481 = and i1 %_cond1_n_cond2_480, %_cond4_479
  %_address_in_parent_stack_bt_483 = bitcast i8* %_pot_address_in_parent_stack_474 to i32*
  %121 = select i1 %_cond1_n_cond2_cond3_481, i32* %_address_in_parent_stack_bt_483, i32* %120
  %_new_load_484 = load i32, i32* %121, align 4
  %122 = add i32 %_new_load_484, 1
  %123 = zext i32 %122 to i64, !mcsema_real_eip !51
  store i32 %122, i32* %120, align 4, !mcsema_real_eip !52
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_73308 = load i8*, i8** %67, align 8
  %_new_gep_74 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_73308, i64 -36
  %_ptr_to_int_485 = ptrtoint i8* %_new_gep_74 to i64
  %_offset_above_rbp_488 = sub i64 %_ptr_to_int_485, %1
  %_pot_address_in_parent_stack_489 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_488
  %_cond1_490 = icmp ugt i8* %_new_gep_74, %_local_stack_end_ptr_
  %_cond2_1_491 = icmp ugt i8* %_new_gep_74, %_parent_stack_end_ptr_
  %_cond2_2_492 = icmp ult i8* %_new_gep_74, %_parent_stack_start_ptr_
  %_cond2_493 = or i1 %_cond2_1_491, %_cond2_2_492
  %_cond4_494 = icmp ule i8* %_pot_address_in_parent_stack_489, %_parent_stack_end_ptr_
  %_cond1_n_cond2_495 = and i1 %_cond1_490, %_cond2_493
  %_cond1_n_cond2_cond3_496 = and i1 %_cond1_n_cond2_495, %_cond4_494
  %.v277 = select i1 %_cond1_n_cond2_cond3_496, i8* %_pot_address_in_parent_stack_489, i8* %_new_gep_74
  %124 = bitcast i8* %.v277 to i32*
  %_new_load_499 = load i32, i32* %124, align 4
  %125 = add i32 %_new_load_499, -28
  %126 = icmp slt i32 %125, 0
  %127 = sub i32 27, %_new_load_499
  %128 = and i32 %127, %_new_load_499
  %129 = icmp slt i32 %128, 0
  %tmp = xor i1 %126, %129
  br i1 %tmp, label %block_0x11e, label %block_0x291, !mcsema_real_eip !16

block_0x24e:                                      ; preds = %block_0x236, %block_0x242
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_77315 = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_49318, %block_0x236 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4304, %block_0x242 ]
  %_new_gep_78 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_77315, i64 -32
  %_ptr_to_int_500 = ptrtoint i8* %_new_gep_78 to i64
  %_offset_above_rbp_503 = sub i64 %_ptr_to_int_500, %1
  %_pot_address_in_parent_stack_504 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_503
  %_cond1_505 = icmp ugt i8* %_new_gep_78, %_local_stack_end_ptr_
  %_cond2_1_506 = icmp ugt i8* %_new_gep_78, %_parent_stack_end_ptr_
  %_cond2_2_507 = icmp ult i8* %_new_gep_78, %_parent_stack_start_ptr_
  %_cond2_508 = or i1 %_cond2_1_506, %_cond2_2_507
  %_cond4_509 = icmp ule i8* %_pot_address_in_parent_stack_504, %_parent_stack_end_ptr_
  %_cond1_n_cond2_510 = and i1 %_cond1_505, %_cond2_508
  %_cond1_n_cond2_cond3_511 = and i1 %_cond1_n_cond2_510, %_cond4_509
  %.v298 = select i1 %_cond1_n_cond2_cond3_511, i8* %_pot_address_in_parent_stack_504, i8* %_new_gep_78
  %130 = bitcast i8* %.v298 to i32*
  %_new_load_514 = load i32, i32* %130, align 4
  %_new_gep_81 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_77315, i64 -24
  %_ptr_to_int_515 = ptrtoint i8* %_new_gep_81 to i64
  %_offset_above_rbp_518 = sub i64 %_ptr_to_int_515, %1
  %_pot_address_in_parent_stack_519 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_518
  %_cond1_520 = icmp ugt i8* %_new_gep_81, %_local_stack_end_ptr_
  %_cond2_1_521 = icmp ugt i8* %_new_gep_81, %_parent_stack_end_ptr_
  %_cond2_2_522 = icmp ult i8* %_new_gep_81, %_parent_stack_start_ptr_
  %_cond2_523 = or i1 %_cond2_1_521, %_cond2_2_522
  %_cond4_524 = icmp ule i8* %_pot_address_in_parent_stack_519, %_parent_stack_end_ptr_
  %_cond1_n_cond2_525 = and i1 %_cond1_520, %_cond2_523
  %_cond1_n_cond2_cond3_526 = and i1 %_cond1_n_cond2_525, %_cond4_524
  %.v299 = select i1 %_cond1_n_cond2_cond3_526, i8* %_pot_address_in_parent_stack_519, i8* %_new_gep_81
  %131 = bitcast i8* %.v299 to i32*
  %_new_load_529 = load i32, i32* %131, align 4
  %132 = icmp eq i32 %_new_load_514, %_new_load_529
  br i1 %132, label %block_0x298, label %block_0x266, !mcsema_real_eip !53

block_0x22c:                                      ; preds = %block_0x1f2
  %133 = add i32 %_new_load_190, -11
  %134 = icmp slt i32 %133, 0
  %135 = sub i32 10, %_new_load_190
  %136 = and i32 %135, %_new_load_190
  %137 = icmp slt i32 %136, 0
  %138 = xor i1 %134, %137
  br i1 %138, label %block_0x242, label %block_0x236, !mcsema_real_eip !54

block_0x291:                                      ; preds = %block_0x266
  %_new_gep_92 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_73308, i64 -4
  %139 = bitcast i8* %_new_gep_92 to i32*
  store i32 1, i32* %139, align 4, !mcsema_real_eip !17
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_94309 = load i8*, i8** %67, align 8
  %_new_gep_95 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_94309, i64 -4
  %_ptr_to_int_560 = ptrtoint i8* %_new_gep_95 to i64
  %_offset_above_rbp_563 = sub i64 %_ptr_to_int_560, %1
  %_pot_address_in_parent_stack_564 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_563
  %_cond1_565 = icmp ugt i8* %_new_gep_95, %_local_stack_end_ptr_
  %_cond2_1_566 = icmp ugt i8* %_new_gep_95, %_parent_stack_end_ptr_
  %_cond2_2_567 = icmp ult i8* %_new_gep_95, %_parent_stack_start_ptr_
  %_cond2_568 = or i1 %_cond2_1_566, %_cond2_2_567
  %_cond4_569 = icmp ule i8* %_pot_address_in_parent_stack_564, %_parent_stack_end_ptr_
  %_cond1_n_cond2_570 = and i1 %_cond1_565, %_cond2_568
  %_cond1_n_cond2_cond3_571 = and i1 %_cond1_n_cond2_570, %_cond4_569
  %.v278 = select i1 %_cond1_n_cond2_cond3_571, i8* %_pot_address_in_parent_stack_564, i8* %_new_gep_95
  %140 = bitcast i8* %.v278 to i32*
  %_new_load_574 = load i32, i32* %140, align 4
  %141 = zext i32 %_new_load_574 to i64, !mcsema_real_eip !18
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_97279 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %uadd357 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_97279, i64 96)
  %142 = extractvalue { i64, i1 } %uadd357, 0
  %143 = xor i64 %142, %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_97279, !mcsema_real_eip !19
  %144 = and i64 %143, 16, !mcsema_real_eip !19
  %145 = icmp ne i64 %144, 0, !mcsema_real_eip !19
  %146 = icmp slt i64 %142, 0
  %147 = icmp eq i64 %142, 0, !mcsema_real_eip !19
  %148 = xor i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_97279, -9223372036854775808, !mcsema_real_eip !19
  %149 = and i64 %143, %148, !mcsema_real_eip !19
  %150 = icmp slt i64 %149, 0
  %151 = trunc i64 %142 to i8, !mcsema_real_eip !19
  %152 = tail call i8 @llvm.ctpop.i8(i8 %151), !mcsema_real_eip !19
  %153 = and i8 %152, 1
  %154 = icmp eq i8 %153, 0
  %155 = extractvalue { i64, i1 } %uadd357, 1
  %_new_int2ptr_99 = inttoptr i64 %142 to i8*
  store volatile i64 %142, i64* %_RSP_ptr_.sroa.0, align 8
  %156 = inttoptr i64 %142 to i64*, !mcsema_real_eip !20
  %_offset_above_rbp_578 = sub i64 %142, %1
  %_pot_address_in_parent_stack_579 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_578
  %_cond1_580 = icmp ugt i8* %_new_int2ptr_99, %_local_stack_end_ptr_
  %_cond2_1_581 = icmp ugt i8* %_new_int2ptr_99, %_parent_stack_end_ptr_
  %_cond2_2_582 = icmp ult i8* %_new_int2ptr_99, %_parent_stack_start_ptr_
  %_cond2_583 = or i1 %_cond2_1_581, %_cond2_2_582
  %_cond4_584 = icmp ule i8* %_pot_address_in_parent_stack_579, %_parent_stack_end_ptr_
  %_cond1_n_cond2_585 = and i1 %_cond1_580, %_cond2_583
  %_cond1_n_cond2_cond3_586 = and i1 %_cond4_584, %_cond1_n_cond2_585
  %_address_in_parent_stack_bt_588 = bitcast i8* %_pot_address_in_parent_stack_579 to i64*
  %157 = select i1 %_cond1_n_cond2_cond3_586, i64* %_address_in_parent_stack_bt_588, i64* %156
  %_new_load_589280281 = load i64, i64* %157, align 8
  store volatile i64 %_new_load_589280281, i64* %_RBP_ptr_.sroa.0, align 8
  %158 = add i64 %142, 16
  store volatile i64 %158, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %141, i64* %RAX, align 8, !mcsema_real_eip !21
  store i64 %3, i64* %RBX, align 8, !mcsema_real_eip !21
  store i64 %117, i64* %RCX, align 8, !mcsema_real_eip !21
  store i64 %123, i64* %RDX, align 8, !mcsema_real_eip !21
  store i64 %4, i64* %RSI, align 8, !mcsema_real_eip !21
  store i64 %5, i64* %RDI, align 8, !mcsema_real_eip !21
  store volatile i64 %158, i64* %RSP, align 8
  store volatile i64 %_new_load_589280281, i64* %RBP, align 8
  store i64 %6, i64* %R8, align 8, !mcsema_real_eip !21
  store i64 %7, i64* %R9, align 8, !mcsema_real_eip !21
  store i64 %8, i64* %R10, align 8, !mcsema_real_eip !21
  store i64 %9, i64* %R11, align 8, !mcsema_real_eip !21
  store i64 %10, i64* %R12, align 8, !mcsema_real_eip !21
  store i64 %11, i64* %R13, align 8, !mcsema_real_eip !21
  store i64 %12, i64* %R14, align 8, !mcsema_real_eip !21
  store i64 %13, i64* %R15, align 8, !mcsema_real_eip !21
  store i64 %14, i64* %RIP, align 8, !mcsema_real_eip !21
  store i1 %155, i1* %CF, align 1, !mcsema_real_eip !21
  store i1 %154, i1* %PF, align 1, !mcsema_real_eip !21
  store i1 %145, i1* %AF, align 1, !mcsema_real_eip !21
  store i1 %147, i1* %ZF, align 1, !mcsema_real_eip !21
  store i1 %146, i1* %SF, align 1, !mcsema_real_eip !21
  store i1 %150, i1* %OF, align 1, !mcsema_real_eip !21
  store i1 %15, i1* %DF, align 1, !mcsema_real_eip !21
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* nonnull %18, i32 128, i32 8, i1 false), !mcsema_real_eip !21
  store i1 %19, i1* %FPU_B, align 1, !mcsema_real_eip !21
  store i1 %20, i1* %FPU_C3, align 1, !mcsema_real_eip !21
  store i3 %21, i3* %FPU_TOP, align 1, !mcsema_real_eip !21
  store i1 %22, i1* %FPU_C2, align 1, !mcsema_real_eip !21
  store i1 %23, i1* %FPU_C1, align 1, !mcsema_real_eip !21
  store i1 %24, i1* %FPU_C0, align 1, !mcsema_real_eip !21
  store i1 %25, i1* %FPU_ES, align 1, !mcsema_real_eip !21
  store i1 %26, i1* %FPU_SF, align 1, !mcsema_real_eip !21
  store i1 %27, i1* %FPU_PE, align 1, !mcsema_real_eip !21
  store i1 %28, i1* %FPU_UE, align 1, !mcsema_real_eip !21
  store i1 %29, i1* %FPU_OE, align 1, !mcsema_real_eip !21
  store i1 %30, i1* %FPU_ZE, align 1, !mcsema_real_eip !21
  store i1 %31, i1* %FPU_DE, align 1, !mcsema_real_eip !21
  store i1 %32, i1* %FPU_IE, align 1, !mcsema_real_eip !21
  store i1 %33, i1* %FPU_X, align 1, !mcsema_real_eip !21
  store i2 %34, i2* %FPU_RC, align 1, !mcsema_real_eip !21
  store i2 %35, i2* %FPU_PC, align 1, !mcsema_real_eip !21
  store i1 %36, i1* %FPU_PM, align 1, !mcsema_real_eip !21
  store i1 %37, i1* %FPU_UM, align 1, !mcsema_real_eip !21
  store i1 %38, i1* %FPU_OM, align 1, !mcsema_real_eip !21
  store i1 %39, i1* %FPU_ZM, align 1, !mcsema_real_eip !21
  store i1 %40, i1* %FPU_DM, align 1, !mcsema_real_eip !21
  store i1 %41, i1* %FPU_IM, align 1, !mcsema_real_eip !21
  %_ptr_to_int_590 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_592 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_593 = sub i64 %_ptr_to_int_590, %1
  %_pot_address_in_parent_stack_594 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_593
  %_cond1_595 = icmp ugt i8* %_ptr_bt_592, %_local_stack_end_ptr_
  %_cond2_1_596 = icmp ugt i8* %_ptr_bt_592, %_parent_stack_end_ptr_
  %_cond2_2_597 = icmp ult i8* %_ptr_bt_592, %_parent_stack_start_ptr_
  %_cond2_598 = or i1 %_cond2_1_596, %_cond2_2_597
  %_cond4_599 = icmp ule i8* %_pot_address_in_parent_stack_594, %_parent_stack_end_ptr_
  %_cond1_n_cond2_600 = and i1 %_cond1_595, %_cond2_598
  %_cond1_n_cond2_cond3_601 = and i1 %_cond1_n_cond2_600, %_cond4_599
  %_address_in_parent_stack_bt_603 = bitcast i8* %_pot_address_in_parent_stack_594 to i64*
  %159 = select i1 %_cond1_n_cond2_cond3_601, i64* %_address_in_parent_stack_bt_603, i64* %FPU_TAG_val
  %_new_load_604 = load i64, i64* %159, align 8
  store i64 %_new_load_604, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !21
  store i64 %46, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !21
  store i16 %47, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !21
  store i64 %48, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !21
  store i128 %49, i128* %XMM0, align 1, !mcsema_real_eip !21
  store i128 %50, i128* %XMM1, align 1, !mcsema_real_eip !21
  store i128 %51, i128* %XMM2, align 1, !mcsema_real_eip !21
  store i128 %52, i128* %XMM3, align 1, !mcsema_real_eip !21
  store i128 %53, i128* %XMM4, align 1, !mcsema_real_eip !21
  store i128 %54, i128* %XMM5, align 1, !mcsema_real_eip !21
  store i128 %55, i128* %XMM6, align 1, !mcsema_real_eip !21
  store i128 %56, i128* %XMM7, align 1, !mcsema_real_eip !21
  store i128 %57, i128* %XMM8, align 1, !mcsema_real_eip !21
  store i128 %58, i128* %XMM9, align 1, !mcsema_real_eip !21
  store i128 %59, i128* %XMM10, align 1, !mcsema_real_eip !21
  store i128 %60, i128* %XMM11, align 1, !mcsema_real_eip !21
  store i128 %61, i128* %XMM12, align 1, !mcsema_real_eip !21
  store i128 %62, i128* %XMM13, align 1, !mcsema_real_eip !21
  store i128 %63, i128* %XMM14, align 1, !mcsema_real_eip !21
  store i128 %64, i128* %XMM15, align 1, !mcsema_real_eip !21
  store i64 %65, i64* %STACK_BASE, align 1, !mcsema_real_eip !21
  store i64 %66, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !21
  ret void, !mcsema_real_eip !21

block_0x11e:                                      ; preds = %block_0x266
  %_new_gep_106 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_73308, i64 -20
  %_ptr_to_int_605 = ptrtoint i8* %_new_gep_106 to i64
  %_offset_above_rbp_608 = sub i64 %_ptr_to_int_605, %1
  %_pot_address_in_parent_stack_609 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_608
  %_cond1_610 = icmp ugt i8* %_new_gep_106, %_local_stack_end_ptr_
  %_cond2_1_611 = icmp ugt i8* %_new_gep_106, %_parent_stack_end_ptr_
  %_cond2_2_612 = icmp ult i8* %_new_gep_106, %_parent_stack_start_ptr_
  %_cond2_613 = or i1 %_cond2_1_611, %_cond2_2_612
  %_cond4_614 = icmp ule i8* %_pot_address_in_parent_stack_609, %_parent_stack_end_ptr_
  %_cond1_n_cond2_615 = and i1 %_cond1_610, %_cond2_613
  %_cond1_n_cond2_cond3_616 = and i1 %_cond1_n_cond2_615, %_cond4_614
  %.v284 = select i1 %_cond1_n_cond2_cond3_616, i8* %_pot_address_in_parent_stack_609, i8* %_new_gep_106
  %160 = bitcast i8* %.v284 to i32*
  %_new_load_619 = load i32, i32* %160, align 4
  %_new_gep_109 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_73308, i64 -28
  %161 = bitcast i8* %_new_gep_109 to i32*
  store i32 %_new_load_619, i32* %161, align 4, !mcsema_real_eip !23
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_111310 = load i8*, i8** %67, align 8
  %_new_gep_112 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_111310, i64 -24
  %_ptr_to_int_620 = ptrtoint i8* %_new_gep_112 to i64
  %_offset_above_rbp_623 = sub i64 %_ptr_to_int_620, %1
  %_pot_address_in_parent_stack_624 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_623
  %_cond1_625 = icmp ugt i8* %_new_gep_112, %_local_stack_end_ptr_
  %_cond2_1_626 = icmp ugt i8* %_new_gep_112, %_parent_stack_end_ptr_
  %_cond2_2_627 = icmp ult i8* %_new_gep_112, %_parent_stack_start_ptr_
  %_cond2_628 = or i1 %_cond2_1_626, %_cond2_2_627
  %_cond4_629 = icmp ule i8* %_pot_address_in_parent_stack_624, %_parent_stack_end_ptr_
  %_cond1_n_cond2_630 = and i1 %_cond1_625, %_cond2_628
  %_cond1_n_cond2_cond3_631 = and i1 %_cond1_n_cond2_630, %_cond4_629
  %.v285 = select i1 %_cond1_n_cond2_cond3_631, i8* %_pot_address_in_parent_stack_624, i8* %_new_gep_112
  %162 = bitcast i8* %.v285 to i32*
  %_new_load_634 = load i32, i32* %162, align 4
  %_new_gep_115 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_111310, i64 -32
  %163 = bitcast i8* %_new_gep_115 to i32*
  store i32 %_new_load_634, i32* %163, align 4, !mcsema_real_eip !25
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_117311 = load i8*, i8** %67, align 8
  %_new_gep_118 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_117311, i64 -36
  %_ptr_to_int_635 = ptrtoint i8* %_new_gep_118 to i64
  %_offset_above_rbp_638 = sub i64 %_ptr_to_int_635, %1
  %_pot_address_in_parent_stack_639 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_638
  %_cond1_640 = icmp ugt i8* %_new_gep_118, %_local_stack_end_ptr_
  %_cond2_1_641 = icmp ugt i8* %_new_gep_118, %_parent_stack_end_ptr_
  %_cond2_2_642 = icmp ult i8* %_new_gep_118, %_parent_stack_start_ptr_
  %_cond2_643 = or i1 %_cond2_1_641, %_cond2_2_642
  %_cond4_644 = icmp ule i8* %_pot_address_in_parent_stack_639, %_parent_stack_end_ptr_
  %_cond1_n_cond2_645 = and i1 %_cond1_640, %_cond2_643
  %_cond1_n_cond2_cond3_646 = and i1 %_cond1_n_cond2_645, %_cond4_644
  %.v286 = select i1 %_cond1_n_cond2_cond3_646, i8* %_pot_address_in_parent_stack_639, i8* %_new_gep_118
  %164 = bitcast i8* %.v286 to i32*
  %_new_load_649 = load i32, i32* %164, align 4
  %165 = sext i32 %_new_load_649 to i64, !mcsema_real_eip !26
  %_new_gep_121 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_117311, i64 -64
  %_new_gep_122 = getelementptr i8, i8* %_new_gep_121, i64 %165
  %_ptr_to_int_650 = ptrtoint i8* %_new_gep_122 to i64
  %_offset_above_rbp_652 = sub i64 %_ptr_to_int_650, %1
  %_pot_address_in_parent_stack_653 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_652
  %_cond1_654 = icmp ugt i8* %_new_gep_122, %_local_stack_end_ptr_
  %_cond2_1_655 = icmp ugt i8* %_new_gep_122, %_parent_stack_end_ptr_
  %_cond2_2_656 = icmp ult i8* %_new_gep_122, %_parent_stack_start_ptr_
  %_cond2_657 = or i1 %_cond2_1_655, %_cond2_2_656
  %_cond4_658 = icmp ule i8* %_pot_address_in_parent_stack_653, %_parent_stack_end_ptr_
  %_cond1_n_cond2_659 = and i1 %_cond1_654, %_cond2_657
  %_cond1_n_cond2_cond3_660 = and i1 %_cond1_n_cond2_659, %_cond4_658
  %_address_in_parent_stack_661. = select i1 %_cond1_n_cond2_cond3_660, i8* %_pot_address_in_parent_stack_653, i8* %_new_gep_122
  %_new_load_662 = load i8, i8* %_address_in_parent_stack_661., align 1
  %166 = sext i8 %_new_load_662 to i32, !mcsema_real_eip !27
  %167 = add nsw i32 %166, -97
  %168 = zext i32 %167 to i64, !mcsema_real_eip !28
  %169 = add nsw i32 %166, -119
  %170 = xor i32 %169, %167, !mcsema_real_eip !29
  %171 = icmp eq i32 %169, 0, !mcsema_real_eip !29
  %172 = icmp ult i32 %167, 22, !mcsema_real_eip !29
  %_new_gep_125 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_117311, i64 -80
  %_allin_new_bt_126 = bitcast i8* %_new_gep_125 to i64*
  store i64 %168, i64* %_allin_new_bt_126, align 8, !mcsema_real_eip !30
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_127312 = load i8*, i8** %67, align 8
  %_new_gep_128 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_127312, i64 -84
  %173 = bitcast i8* %_new_gep_128 to i32*
  store i32 %169, i32* %173, align 4, !mcsema_real_eip !31
  %.demorgan = or i1 %172, %171
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_130313 = load i8*, i8** %67, align 8
  br i1 %.demorgan, label %block_0x148, label %block_0x298, !mcsema_real_eip !32

block_0x148:                                      ; preds = %block_0x11e
  %174 = ptrtoint i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_130313 to i64
  %175 = and i32 %170, %167, !mcsema_real_eip !29
  %176 = icmp slt i32 %175, 0
  %177 = icmp slt i8 %_new_load_662, 119
  %178 = trunc i32 %169 to i8, !mcsema_real_eip !29
  %179 = tail call i8 @llvm.ctpop.i8(i8 %178), !mcsema_real_eip !29
  %180 = and i8 %179, 1
  %181 = icmp eq i8 %180, 0
  %182 = and i32 %170, 16
  %183 = icmp eq i32 %182, 0
  %_new_gep_133 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_130313, i64 -80
  %_ptr_to_int_663 = ptrtoint i8* %_new_gep_133 to i64
  %_offset_above_rbp_666 = sub i64 %_ptr_to_int_663, %1
  %_pot_address_in_parent_stack_667 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_666
  %_cond1_668 = icmp ugt i8* %_new_gep_133, %_local_stack_end_ptr_
  %_cond2_1_669 = icmp ugt i8* %_new_gep_133, %_parent_stack_end_ptr_
  %_cond2_2_670 = icmp ult i8* %_new_gep_133, %_parent_stack_start_ptr_
  %_cond2_671 = or i1 %_cond2_1_669, %_cond2_2_670
  %_cond4_672 = icmp ule i8* %_pot_address_in_parent_stack_667, %_parent_stack_end_ptr_
  %_cond1_n_cond2_673 = and i1 %_cond1_668, %_cond2_671
  %_cond1_n_cond2_cond3_674 = and i1 %_cond1_n_cond2_673, %_cond4_672
  %.v293 = select i1 %_cond1_n_cond2_cond3_674, i8* %_pot_address_in_parent_stack_667, i8* %_new_gep_133
  %184 = bitcast i8* %.v293 to i64*
  %_new_load_677 = load i64, i64* %184, align 8
  %185 = shl i64 %_new_load_677, 3
  %186 = add i64 %185, ptrtoint (%0* @data_0x2a1 to i64), !mcsema_real_eip !35
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !35
  %_ptr_bt_680 = inttoptr i64 %186 to i8*
  %_offset_above_rbp_681 = sub i64 %186, %1
  %_pot_address_in_parent_stack_682 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_681
  %_cond1_683 = icmp ugt i8* %_ptr_bt_680, %_local_stack_end_ptr_
  %_cond2_1_684 = icmp ugt i8* %_ptr_bt_680, %_parent_stack_end_ptr_
  %_cond2_2_685 = icmp ult i8* %_ptr_bt_680, %_parent_stack_start_ptr_
  %_cond2_686 = or i1 %_cond2_1_684, %_cond2_2_685
  %_cond4_687 = icmp ule i8* %_pot_address_in_parent_stack_682, %_parent_stack_end_ptr_
  %_cond1_n_cond2_688 = and i1 %_cond1_683, %_cond2_686
  %_cond1_n_cond2_cond3_689 = and i1 %_cond4_687, %_cond1_n_cond2_688
  %_address_in_parent_stack_bt_691 = bitcast i8* %_pot_address_in_parent_stack_682 to i64*
  %188 = select i1 %_cond1_n_cond2_cond3_689, i64* %_address_in_parent_stack_bt_691, i64* %187
  %_new_load_692 = load i64, i64* %188, align 8
  store i64 %_new_load_677, i64* %RAX, align 8, !mcsema_real_eip !36
  store i64 %3, i64* %RBX, align 8, !mcsema_real_eip !36
  store i64 %_new_load_692, i64* %RCX, align 8, !mcsema_real_eip !36
  store i64 %123, i64* %RDX, align 8, !mcsema_real_eip !36
  store i64 %4, i64* %RSI, align 8, !mcsema_real_eip !36
  store i64 %5, i64* %RDI, align 8, !mcsema_real_eip !36
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_135294 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  store volatile i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_135294, i64* %RSP, align 8
  store volatile i64 %174, i64* %RBP, align 8
  store i64 %6, i64* %R8, align 8, !mcsema_real_eip !36
  store i64 %7, i64* %R9, align 8, !mcsema_real_eip !36
  store i64 %8, i64* %R10, align 8, !mcsema_real_eip !36
  store i64 %9, i64* %R11, align 8, !mcsema_real_eip !36
  store i64 %10, i64* %R12, align 8, !mcsema_real_eip !36
  store i64 %11, i64* %R13, align 8, !mcsema_real_eip !36
  store i64 %12, i64* %R14, align 8, !mcsema_real_eip !36
  store i64 %13, i64* %R15, align 8, !mcsema_real_eip !36
  store i64 %14, i64* %RIP, align 8, !mcsema_real_eip !36
  store i1 %172, i1* %CF, align 1, !mcsema_real_eip !36
  store i1 %181, i1* %PF, align 1, !mcsema_real_eip !36
  store i1 %183, i1* %AF, align 1, !mcsema_real_eip !36
  store i1 %171, i1* %ZF, align 1, !mcsema_real_eip !36
  store i1 %177, i1* %SF, align 1, !mcsema_real_eip !36
  store i1 %176, i1* %OF, align 1, !mcsema_real_eip !36
  store i1 %15, i1* %DF, align 1, !mcsema_real_eip !36
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* nonnull %18, i32 128, i32 8, i1 false), !mcsema_real_eip !36
  store i1 %19, i1* %FPU_B, align 1, !mcsema_real_eip !36
  store i1 %20, i1* %FPU_C3, align 1, !mcsema_real_eip !36
  store i3 %21, i3* %FPU_TOP, align 1, !mcsema_real_eip !36
  store i1 %22, i1* %FPU_C2, align 1, !mcsema_real_eip !36
  store i1 %23, i1* %FPU_C1, align 1, !mcsema_real_eip !36
  store i1 %24, i1* %FPU_C0, align 1, !mcsema_real_eip !36
  store i1 %25, i1* %FPU_ES, align 1, !mcsema_real_eip !36
  store i1 %26, i1* %FPU_SF, align 1, !mcsema_real_eip !36
  store i1 %27, i1* %FPU_PE, align 1, !mcsema_real_eip !36
  store i1 %28, i1* %FPU_UE, align 1, !mcsema_real_eip !36
  store i1 %29, i1* %FPU_OE, align 1, !mcsema_real_eip !36
  store i1 %30, i1* %FPU_ZE, align 1, !mcsema_real_eip !36
  store i1 %31, i1* %FPU_DE, align 1, !mcsema_real_eip !36
  store i1 %32, i1* %FPU_IE, align 1, !mcsema_real_eip !36
  store i1 %33, i1* %FPU_X, align 1, !mcsema_real_eip !36
  store i2 %34, i2* %FPU_RC, align 1, !mcsema_real_eip !36
  store i2 %35, i2* %FPU_PC, align 1, !mcsema_real_eip !36
  store i1 %36, i1* %FPU_PM, align 1, !mcsema_real_eip !36
  store i1 %37, i1* %FPU_UM, align 1, !mcsema_real_eip !36
  store i1 %38, i1* %FPU_OM, align 1, !mcsema_real_eip !36
  store i1 %39, i1* %FPU_ZM, align 1, !mcsema_real_eip !36
  store i1 %40, i1* %FPU_DM, align 1, !mcsema_real_eip !36
  store i1 %41, i1* %FPU_IM, align 1, !mcsema_real_eip !36
  %_ptr_to_int_693 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_695 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_696 = sub i64 %_ptr_to_int_693, %1
  %_pot_address_in_parent_stack_697 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_696
  %_cond1_698 = icmp ugt i8* %_ptr_bt_695, %_local_stack_end_ptr_
  %_cond2_1_699 = icmp ugt i8* %_ptr_bt_695, %_parent_stack_end_ptr_
  %_cond2_2_700 = icmp ult i8* %_ptr_bt_695, %_parent_stack_start_ptr_
  %_cond2_701 = or i1 %_cond2_1_699, %_cond2_2_700
  %_cond4_702 = icmp ule i8* %_pot_address_in_parent_stack_697, %_parent_stack_end_ptr_
  %_cond1_n_cond2_703 = and i1 %_cond1_698, %_cond2_701
  %_cond1_n_cond2_cond3_704 = and i1 %_cond1_n_cond2_703, %_cond4_702
  %_address_in_parent_stack_bt_706 = bitcast i8* %_pot_address_in_parent_stack_697 to i64*
  %189 = select i1 %_cond1_n_cond2_cond3_704, i64* %_address_in_parent_stack_bt_706, i64* %FPU_TAG_val
  %_new_load_707 = load i64, i64* %189, align 8
  store i64 %_new_load_707, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !36
  store i64 %46, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !36
  store i16 %47, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !36
  store i64 %48, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !36
  store i128 %49, i128* %XMM0, align 1, !mcsema_real_eip !36
  store i128 %50, i128* %XMM1, align 1, !mcsema_real_eip !36
  store i128 %51, i128* %XMM2, align 1, !mcsema_real_eip !36
  store i128 %52, i128* %XMM3, align 1, !mcsema_real_eip !36
  store i128 %53, i128* %XMM4, align 1, !mcsema_real_eip !36
  store i128 %54, i128* %XMM5, align 1, !mcsema_real_eip !36
  store i128 %55, i128* %XMM6, align 1, !mcsema_real_eip !36
  store i128 %56, i128* %XMM7, align 1, !mcsema_real_eip !36
  store i128 %57, i128* %XMM8, align 1, !mcsema_real_eip !36
  store i128 %58, i128* %XMM9, align 1, !mcsema_real_eip !36
  store i128 %59, i128* %XMM10, align 1, !mcsema_real_eip !36
  store i128 %60, i128* %XMM11, align 1, !mcsema_real_eip !36
  store i128 %61, i128* %XMM12, align 1, !mcsema_real_eip !36
  store i128 %62, i128* %XMM13, align 1, !mcsema_real_eip !36
  store i128 %63, i128* %XMM14, align 1, !mcsema_real_eip !36
  store i128 %64, i128* %XMM15, align 1, !mcsema_real_eip !36
  store i64 %65, i64* %STACK_BASE, align 1, !mcsema_real_eip !36
  store i64 %66, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !36
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_18e.3(%struct.regs*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #2 {
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
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !33
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !33
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !33
  %3 = bitcast i64* %RBX to <2 x i64>*
  %4 = load <2 x i64>, <2 x i64>* %3, align 8
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !33
  %5 = bitcast i64* %RDX to <2 x i64>*
  %6 = load <2 x i64>, <2 x i64>* %5, align 8
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !33
  %7 = load i64, i64* %RDI, align 8, !mcsema_real_eip !33
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !33
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !33
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !33
  %8 = bitcast i64* %R8 to <2 x i64>*
  %9 = load <2 x i64>, <2 x i64>* %8, align 8
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !33
  %10 = bitcast i64* %R10 to <2 x i64>*
  %11 = load <2 x i64>, <2 x i64>* %10, align 8
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !33
  %12 = bitcast i64* %R12 to <2 x i64>*
  %13 = load <2 x i64>, <2 x i64>* %12, align 8
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !33
  %14 = bitcast i64* %R14 to <2 x i64>*
  %15 = load <2 x i64>, <2 x i64>* %14, align 8
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !33
  %16 = load i64, i64* %RIP, align 8, !mcsema_real_eip !33
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !33
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !33
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !33
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !33
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !33
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !33
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !33
  %17 = load i1, i1* %DF, align 1, !mcsema_real_eip !33
  %18 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !33
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !33
  %20 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !33
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !33
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !33
  %21 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !33
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !33
  %22 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !33
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !33
  %23 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !33
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !33
  %24 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !33
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !33
  %25 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !33
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !33
  %26 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !33
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !33
  %27 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !33
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !33
  %28 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !33
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !33
  %29 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !33
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !33
  %30 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !33
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !33
  %31 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !33
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !33
  %32 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !33
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !33
  %33 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !33
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !33
  %34 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !33
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !33
  %35 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !33
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !33
  %36 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !33
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !33
  %37 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !33
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !33
  %38 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !33
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !33
  %39 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !33
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !33
  %40 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !33
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !33
  %41 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !33
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !33
  %42 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !33
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !33
  %43 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !33
  %44 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !33
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
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !33
  %47 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !33
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !33
  %48 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !33
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !33
  %49 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !33
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !33
  %50 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !33
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !33
  %51 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !33
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !33
  %52 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !33
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !33
  %53 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !33
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !33
  %54 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !33
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !33
  %55 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !33
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !33
  %56 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !33
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !33
  %57 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !33
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !33
  %58 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !33
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !33
  %59 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !33
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !33
  %60 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !33
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !33
  %61 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !33
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !33
  %62 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !33
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !33
  %63 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !33
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !33
  %64 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !33
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !33
  %65 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !33
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !33
  %66 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !33
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !33
  %67 = bitcast i64* %STACK_BASE to <2 x i64>*
  %68 = load <2 x i64>, <2 x i64>* %67, align 8
  %69 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10 = load i8*, i8** %69, align 8
  %_new_gep_ = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10, i64 -4
  %70 = bitcast i8* %_new_gep_ to i32*
  store i32 1, i32* %70, align 4, !mcsema_real_eip !33
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_111 = load i8*, i8** %69, align 8
  %_new_gep_2 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_111, i64 -4
  %_ptr_to_int_10 = ptrtoint i8* %_new_gep_2 to i64
  %_offset_above_rbp_13 = sub i64 %_ptr_to_int_10, %1
  %_pot_address_in_parent_stack_14 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_13
  %_cond1_15 = icmp ugt i8* %_new_gep_2, %_local_stack_end_ptr_
  %_cond2_1_16 = icmp ugt i8* %_new_gep_2, %_parent_stack_end_ptr_
  %_cond2_2_17 = icmp ult i8* %_new_gep_2, %_parent_stack_start_ptr_
  %_cond2_18 = or i1 %_cond2_1_16, %_cond2_2_17
  %_cond4_19 = icmp ule i8* %_pot_address_in_parent_stack_14, %_parent_stack_end_ptr_
  %_cond1_n_cond2_20 = and i1 %_cond1_15, %_cond2_18
  %_cond1_n_cond2_cond3_21 = and i1 %_cond1_n_cond2_20, %_cond4_19
  %.v = select i1 %_cond1_n_cond2_cond3_21, i8* %_pot_address_in_parent_stack_14, i8* %_new_gep_2
  %71 = bitcast i8* %.v to i32*
  %_new_load_24 = load i32, i32* %71, align 4
  %72 = zext i32 %_new_load_24 to i64, !mcsema_real_eip !18
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_5 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_5, i64 96)
  %73 = extractvalue { i64, i1 } %uadd, 0
  %74 = xor i64 %73, %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_5, !mcsema_real_eip !19
  %75 = and i64 %74, 16, !mcsema_real_eip !19
  %76 = icmp ne i64 %75, 0, !mcsema_real_eip !19
  %77 = icmp slt i64 %73, 0
  %78 = icmp eq i64 %73, 0, !mcsema_real_eip !19
  %79 = xor i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_5, -9223372036854775808, !mcsema_real_eip !19
  %80 = and i64 %74, %79, !mcsema_real_eip !19
  %81 = icmp slt i64 %80, 0
  %82 = trunc i64 %73 to i8, !mcsema_real_eip !19
  %83 = tail call i8 @llvm.ctpop.i8(i8 %82), !mcsema_real_eip !19
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  %86 = extractvalue { i64, i1 } %uadd, 1
  %_new_int2ptr_ = inttoptr i64 %73 to i8*
  store volatile i64 %73, i64* %_RSP_ptr_.sroa.0, align 8
  %87 = inttoptr i64 %73 to i64*, !mcsema_real_eip !20
  %_offset_above_rbp_28 = sub i64 %73, %1
  %_pot_address_in_parent_stack_29 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_28
  %_cond1_30 = icmp ugt i8* %_new_int2ptr_, %_local_stack_end_ptr_
  %_cond2_1_31 = icmp ugt i8* %_new_int2ptr_, %_parent_stack_end_ptr_
  %_cond2_2_32 = icmp ult i8* %_new_int2ptr_, %_parent_stack_start_ptr_
  %_cond2_33 = or i1 %_cond2_1_31, %_cond2_2_32
  %_cond4_34 = icmp ule i8* %_pot_address_in_parent_stack_29, %_parent_stack_end_ptr_
  %_cond1_n_cond2_35 = and i1 %_cond1_30, %_cond2_33
  %_cond1_n_cond2_cond3_36 = and i1 %_cond4_34, %_cond1_n_cond2_35
  %_address_in_parent_stack_bt_38 = bitcast i8* %_pot_address_in_parent_stack_29 to i64*
  %88 = select i1 %_cond1_n_cond2_cond3_36, i64* %_address_in_parent_stack_bt_38, i64* %87
  %_new_load_3967 = load i64, i64* %88, align 8
  store volatile i64 %_new_load_3967, i64* %_RBP_ptr_.sroa.0, align 8
  %89 = add i64 %73, 16
  store volatile i64 %89, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %72, i64* %RAX, align 8, !mcsema_real_eip !21
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %90, align 8
  %91 = bitcast i64* %RDX to <2 x i64>*
  store <2 x i64> %6, <2 x i64>* %91, align 8
  store i64 %7, i64* %RDI, align 8, !mcsema_real_eip !21
  store volatile i64 %89, i64* %RSP, align 8
  store volatile i64 %_new_load_3967, i64* %RBP, align 8
  %92 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %94, align 8
  %95 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %95, align 8
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !21
  store i1 %86, i1* %CF, align 1, !mcsema_real_eip !21
  store i1 %85, i1* %PF, align 1, !mcsema_real_eip !21
  store i1 %76, i1* %AF, align 1, !mcsema_real_eip !21
  store i1 %78, i1* %ZF, align 1, !mcsema_real_eip !21
  store i1 %77, i1* %SF, align 1, !mcsema_real_eip !21
  store i1 %81, i1* %OF, align 1, !mcsema_real_eip !21
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !21
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %20, i32 128, i32 8, i1 false), !mcsema_real_eip !21
  store i1 %21, i1* %FPU_B, align 1, !mcsema_real_eip !21
  store i1 %22, i1* %FPU_C3, align 1, !mcsema_real_eip !21
  store i3 %23, i3* %FPU_TOP, align 1, !mcsema_real_eip !21
  store i1 %24, i1* %FPU_C2, align 1, !mcsema_real_eip !21
  store i1 %25, i1* %FPU_C1, align 1, !mcsema_real_eip !21
  store i1 %26, i1* %FPU_C0, align 1, !mcsema_real_eip !21
  store i1 %27, i1* %FPU_ES, align 1, !mcsema_real_eip !21
  store i1 %28, i1* %FPU_SF, align 1, !mcsema_real_eip !21
  store i1 %29, i1* %FPU_PE, align 1, !mcsema_real_eip !21
  store i1 %30, i1* %FPU_UE, align 1, !mcsema_real_eip !21
  store i1 %31, i1* %FPU_OE, align 1, !mcsema_real_eip !21
  store i1 %32, i1* %FPU_ZE, align 1, !mcsema_real_eip !21
  store i1 %33, i1* %FPU_DE, align 1, !mcsema_real_eip !21
  store i1 %34, i1* %FPU_IE, align 1, !mcsema_real_eip !21
  store i1 %35, i1* %FPU_X, align 1, !mcsema_real_eip !21
  store i2 %36, i2* %FPU_RC, align 1, !mcsema_real_eip !21
  store i2 %37, i2* %FPU_PC, align 1, !mcsema_real_eip !21
  store i1 %38, i1* %FPU_PM, align 1, !mcsema_real_eip !21
  store i1 %39, i1* %FPU_UM, align 1, !mcsema_real_eip !21
  store i1 %40, i1* %FPU_OM, align 1, !mcsema_real_eip !21
  store i1 %41, i1* %FPU_ZM, align 1, !mcsema_real_eip !21
  store i1 %42, i1* %FPU_DM, align 1, !mcsema_real_eip !21
  store i1 %43, i1* %FPU_IM, align 1, !mcsema_real_eip !21
  %_ptr_to_int_40 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_42 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_43 = sub i64 %_ptr_to_int_40, %1
  %_pot_address_in_parent_stack_44 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_43
  %_cond1_45 = icmp ugt i8* %_ptr_bt_42, %_local_stack_end_ptr_
  %_cond2_1_46 = icmp ugt i8* %_ptr_bt_42, %_parent_stack_end_ptr_
  %_cond2_2_47 = icmp ult i8* %_ptr_bt_42, %_parent_stack_start_ptr_
  %_cond2_48 = or i1 %_cond2_1_46, %_cond2_2_47
  %_cond4_49 = icmp ule i8* %_pot_address_in_parent_stack_44, %_parent_stack_end_ptr_
  %_cond1_n_cond2_50 = and i1 %_cond1_45, %_cond2_48
  %_cond1_n_cond2_cond3_51 = and i1 %_cond1_n_cond2_50, %_cond4_49
  %_address_in_parent_stack_bt_53 = bitcast i8* %_pot_address_in_parent_stack_44 to i64*
  %96 = select i1 %_cond1_n_cond2_cond3_51, i64* %_address_in_parent_stack_bt_53, i64* %FPU_TAG_val
  %_new_load_54 = load i64, i64* %96, align 8
  store i64 %_new_load_54, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !21
  store i64 %48, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !21
  store i16 %49, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !21
  store i64 %50, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !21
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !21
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !21
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !21
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !21
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !21
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !21
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !21
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !21
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !21
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !21
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !21
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !21
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !21
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !21
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !21
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !21
  %97 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %68, <2 x i64>* %97, align 1
  ret void, !mcsema_real_eip !21
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_180.4(%struct.regs*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #2 {
entry:
  %_RSP_ptr_.sroa.0 = alloca i64, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_269 = alloca [84 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [84 x i8], [84 x i8]* %_local_stack_start_ptr_269, i64 0, i64 84
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_.sroa.0, align 8
  %2 = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  %FPU_TAG_val = alloca i64, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !55
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !55
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !55
  %3 = load i64, i64* %RBX, align 8, !mcsema_real_eip !55
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !55
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !55
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !55
  %4 = load i64, i64* %RSI, align 8, !mcsema_real_eip !55
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !55
  %5 = load i64, i64* %RDI, align 8, !mcsema_real_eip !55
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !55
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !55
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !55
  %6 = load i64, i64* %R8, align 8, !mcsema_real_eip !55
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !55
  %7 = load i64, i64* %R9, align 8, !mcsema_real_eip !55
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !55
  %8 = load i64, i64* %R10, align 8, !mcsema_real_eip !55
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !55
  %9 = load i64, i64* %R11, align 8, !mcsema_real_eip !55
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !55
  %10 = load i64, i64* %R12, align 8, !mcsema_real_eip !55
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !55
  %11 = load i64, i64* %R13, align 8, !mcsema_real_eip !55
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !55
  %12 = load i64, i64* %R14, align 8, !mcsema_real_eip !55
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !55
  %13 = load i64, i64* %R15, align 8, !mcsema_real_eip !55
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !55
  %14 = load i64, i64* %RIP, align 8, !mcsema_real_eip !55
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !55
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !55
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !55
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !55
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !55
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !55
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !55
  %15 = load i1, i1* %DF, align 1, !mcsema_real_eip !55
  %16 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !55
  %17 = bitcast x86_fp80* %16 to i8*, !mcsema_real_eip !55
  %18 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !55
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %18, i8* %17, i32 128, i32 4, i1 false), !mcsema_real_eip !55
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !55
  %19 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !55
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !55
  %20 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !55
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !55
  %21 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !55
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !55
  %22 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !55
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !55
  %23 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !55
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !55
  %24 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !55
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !55
  %25 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !55
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !55
  %26 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !55
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !55
  %27 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !55
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !55
  %28 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !55
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !55
  %29 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !55
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !55
  %30 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !55
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !55
  %31 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !55
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !55
  %32 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !55
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !55
  %33 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !55
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !55
  %34 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !55
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !55
  %35 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !55
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !55
  %36 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !55
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !55
  %37 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !55
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !55
  %38 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !55
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !55
  %39 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !55
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !55
  %40 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !55
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !55
  %41 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !55
  %42 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !55
  %43 = bitcast i8* %42 to i64*
  %_ptr_to_int_ = ptrtoint i8* %42 to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %1
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %42, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %42, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %42, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_2_, %_cond2_1_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond2_, %_cond1_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  %44 = select i1 %_cond1_n_cond2_cond3_, i64* %_address_in_parent_stack_bt_, i64* %43
  %_new_load_ = load i64, i64* %44, align 8
  store i64 %_new_load_, i64* %FPU_TAG_val, align 8
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !55
  %45 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !55
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !55
  %46 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !55
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !55
  %47 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !55
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !55
  %48 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !55
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !55
  %49 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !55
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !55
  %50 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !55
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !55
  %51 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !55
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !55
  %52 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !55
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !55
  %53 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !55
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !55
  %54 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !55
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !55
  %55 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !55
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !55
  %56 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !55
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !55
  %57 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !55
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !55
  %58 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !55
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !55
  %59 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !55
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !55
  %60 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !55
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !55
  %61 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !55
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !55
  %62 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !55
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !55
  %63 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !55
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !55
  %64 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !55
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !55
  %65 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !55
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !55
  %66 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !55
  %67 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_303 = load i8*, i8** %67, align 8
  %_new_gep_ = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_303, i64 -20
  %68 = bitcast i8* %_new_gep_ to i32*
  %_ptr_to_int_146 = ptrtoint i8* %_new_gep_ to i64
  %_offset_above_rbp_149 = sub i64 %_ptr_to_int_146, %1
  %_pot_address_in_parent_stack_150 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_149
  %_cond1_151 = icmp ugt i8* %_new_gep_, %_local_stack_end_ptr_
  %_cond2_1_152 = icmp ugt i8* %_new_gep_, %_parent_stack_end_ptr_
  %_cond2_2_153 = icmp ult i8* %_new_gep_, %_parent_stack_start_ptr_
  %_cond2_154 = or i1 %_cond2_1_152, %_cond2_2_153
  %_cond4_155 = icmp ule i8* %_pot_address_in_parent_stack_150, %_parent_stack_end_ptr_
  %_cond1_n_cond2_156 = and i1 %_cond1_151, %_cond2_154
  %_cond1_n_cond2_cond3_157 = and i1 %_cond1_n_cond2_156, %_cond4_155
  %_address_in_parent_stack_bt_159 = bitcast i8* %_pot_address_in_parent_stack_150 to i32*
  %69 = select i1 %_cond1_n_cond2_cond3_157, i32* %_address_in_parent_stack_bt_159, i32* %68
  %_new_load_160 = load i32, i32* %69, align 4
  %70 = add i32 %_new_load_160, 1
  store i32 %70, i32* %68, align 4, !mcsema_real_eip !56
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4304 = load i8*, i8** %67, align 8
  %_new_gep_5 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4304, i64 -24
  %_ptr_to_int_161 = ptrtoint i8* %_new_gep_5 to i64
  %_offset_above_rbp_164 = sub i64 %_ptr_to_int_161, %1
  %_pot_address_in_parent_stack_165 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_164
  %_cond1_166 = icmp ugt i8* %_new_gep_5, %_local_stack_end_ptr_
  %_cond2_1_167 = icmp ugt i8* %_new_gep_5, %_parent_stack_end_ptr_
  %_cond2_2_168 = icmp ult i8* %_new_gep_5, %_parent_stack_start_ptr_
  %_cond2_169 = or i1 %_cond2_1_167, %_cond2_2_168
  %_cond4_170 = icmp ule i8* %_pot_address_in_parent_stack_165, %_parent_stack_end_ptr_
  %_cond1_n_cond2_171 = and i1 %_cond1_166, %_cond2_169
  %_cond1_n_cond2_cond3_172 = and i1 %_cond1_n_cond2_171, %_cond4_170
  %.v = select i1 %_cond1_n_cond2_cond3_172, i8* %_pot_address_in_parent_stack_165, i8* %_new_gep_5
  %71 = bitcast i8* %.v to i32*
  %_new_load_175 = load i32, i32* %71, align 4
  %72 = sext i32 %_new_load_175 to i64, !mcsema_real_eip !39
  %73 = mul nsw i64 %72, 11, !mcsema_real_eip !40
  %74 = add i64 %73, ptrtoint (%1* @data_0x359 to i64)
  %_new_gep_8 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4304, i64 -20
  %_ptr_to_int_176 = ptrtoint i8* %_new_gep_8 to i64
  %_offset_above_rbp_179 = sub i64 %_ptr_to_int_176, %1
  %_pot_address_in_parent_stack_180 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_179
  %_cond1_181 = icmp ugt i8* %_new_gep_8, %_local_stack_end_ptr_
  %_cond2_1_182 = icmp ugt i8* %_new_gep_8, %_parent_stack_end_ptr_
  %_cond2_2_183 = icmp ult i8* %_new_gep_8, %_parent_stack_start_ptr_
  %_cond2_184 = or i1 %_cond2_1_182, %_cond2_2_183
  %_cond4_185 = icmp ule i8* %_pot_address_in_parent_stack_180, %_parent_stack_end_ptr_
  %_cond1_n_cond2_186 = and i1 %_cond1_181, %_cond2_184
  %_cond1_n_cond2_cond3_187 = and i1 %_cond1_n_cond2_186, %_cond4_185
  %.v270 = select i1 %_cond1_n_cond2_cond3_187, i8* %_pot_address_in_parent_stack_180, i8* %_new_gep_8
  %75 = bitcast i8* %.v270 to i32*
  %_new_load_190 = load i32, i32* %75, align 4
  %76 = sext i32 %_new_load_190 to i64, !mcsema_real_eip !41
  %77 = add i64 %74, %76, !mcsema_real_eip !42
  %78 = inttoptr i64 %77 to i8*
  %_offset_above_rbp_193 = sub i64 %77, %1
  %_pot_address_in_parent_stack_194 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_193
  %_cond1_195 = icmp ugt i8* %78, %_local_stack_end_ptr_
  %_cond2_1_196 = icmp ugt i8* %78, %_parent_stack_end_ptr_
  %_cond2_2_197 = icmp ult i8* %78, %_parent_stack_start_ptr_
  %_cond2_198 = or i1 %_cond2_1_196, %_cond2_2_197
  %_cond4_199 = icmp ule i8* %_pot_address_in_parent_stack_194, %_parent_stack_end_ptr_
  %_cond1_n_cond2_200 = and i1 %_cond1_195, %_cond2_198
  %_cond1_n_cond2_cond3_201 = and i1 %_cond4_199, %_cond1_n_cond2_200
  %_address_in_parent_stack_202. = select i1 %_cond1_n_cond2_cond3_201, i8* %_pot_address_in_parent_stack_194, i8* %78
  %_new_load_203 = load i8, i8* %_address_in_parent_stack_202., align 1
  %79 = sext i8 %_new_load_203 to i64
  %80 = and i64 %79, 4294967295
  switch i8 %_new_load_203, label %block_0x1f2 [
    i8 35, label %block_0x298
    i8 32, label %block_0x242
  ]

block_0x298:                                      ; preds = %entry, %block_0x11e, %block_0x24e
  %_RBP_ptr_.0._load_rbp_ptr_130.sink = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_77315, %block_0x24e ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_130313, %block_0x11e ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4304, %entry ]
  %RDX_val.0 = phi i64 [ %80, %block_0x24e ], [ %123, %block_0x11e ], [ %80, %entry ]
  %RCX_val.0 = phi i64 [ %76, %block_0x24e ], [ %168, %block_0x11e ], [ %76, %entry ]
  %.sink = phi i32 [ 2, %block_0x24e ], [ 1, %block_0x11e ], [ 0, %entry ]
  %_new_gep_131 = getelementptr i8, i8* %_RBP_ptr_.0._load_rbp_ptr_130.sink, i64 -4
  %81 = bitcast i8* %_new_gep_131 to i32*
  store i32 %.sink, i32* %81, align 4
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_19314 = load i8*, i8** %67, align 8
  %_new_gep_20 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_19314, i64 -4
  %_ptr_to_int_247 = ptrtoint i8* %_new_gep_20 to i64
  %_offset_above_rbp_250 = sub i64 %_ptr_to_int_247, %1
  %_pot_address_in_parent_stack_251 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_250
  %_cond1_252 = icmp ugt i8* %_new_gep_20, %_local_stack_end_ptr_
  %_cond2_1_253 = icmp ugt i8* %_new_gep_20, %_parent_stack_end_ptr_
  %_cond2_2_254 = icmp ult i8* %_new_gep_20, %_parent_stack_start_ptr_
  %_cond2_255 = or i1 %_cond2_1_253, %_cond2_2_254
  %_cond4_256 = icmp ule i8* %_pot_address_in_parent_stack_251, %_parent_stack_end_ptr_
  %_cond1_n_cond2_257 = and i1 %_cond1_252, %_cond2_255
  %_cond1_n_cond2_cond3_258 = and i1 %_cond1_n_cond2_257, %_cond4_256
  %.v287 = select i1 %_cond1_n_cond2_cond3_258, i8* %_pot_address_in_parent_stack_251, i8* %_new_gep_20
  %82 = bitcast i8* %.v287 to i32*
  %_new_load_261 = load i32, i32* %82, align 4
  %83 = zext i32 %_new_load_261 to i64, !mcsema_real_eip !18
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_288 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %uadd348 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_288, i64 96)
  %84 = extractvalue { i64, i1 } %uadd348, 0
  %85 = xor i64 %84, %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_288, !mcsema_real_eip !19
  %86 = and i64 %85, 16, !mcsema_real_eip !19
  %87 = icmp ne i64 %86, 0, !mcsema_real_eip !19
  %88 = icmp slt i64 %84, 0
  %89 = icmp eq i64 %84, 0, !mcsema_real_eip !19
  %90 = xor i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_288, -9223372036854775808, !mcsema_real_eip !19
  %91 = and i64 %85, %90, !mcsema_real_eip !19
  %92 = icmp slt i64 %91, 0
  %93 = trunc i64 %84 to i8, !mcsema_real_eip !19
  %94 = tail call i8 @llvm.ctpop.i8(i8 %93), !mcsema_real_eip !19
  %95 = and i8 %94, 1
  %96 = icmp eq i8 %95, 0
  %97 = extractvalue { i64, i1 } %uadd348, 1
  %_new_int2ptr_ = inttoptr i64 %84 to i8*
  store volatile i64 %84, i64* %_RSP_ptr_.sroa.0, align 8
  %98 = inttoptr i64 %84 to i64*, !mcsema_real_eip !20
  %_offset_above_rbp_265 = sub i64 %84, %1
  %_pot_address_in_parent_stack_266 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_265
  %_cond1_267 = icmp ugt i8* %_new_int2ptr_, %_local_stack_end_ptr_
  %_cond2_1_268 = icmp ugt i8* %_new_int2ptr_, %_parent_stack_end_ptr_
  %_cond2_2_269 = icmp ult i8* %_new_int2ptr_, %_parent_stack_start_ptr_
  %_cond2_270 = or i1 %_cond2_1_268, %_cond2_2_269
  %_cond4_271 = icmp ule i8* %_pot_address_in_parent_stack_266, %_parent_stack_end_ptr_
  %_cond1_n_cond2_272 = and i1 %_cond1_267, %_cond2_270
  %_cond1_n_cond2_cond3_273 = and i1 %_cond4_271, %_cond1_n_cond2_272
  %_address_in_parent_stack_bt_275 = bitcast i8* %_pot_address_in_parent_stack_266 to i64*
  %99 = select i1 %_cond1_n_cond2_cond3_273, i64* %_address_in_parent_stack_bt_275, i64* %98
  %_new_load_276289290 = load i64, i64* %99, align 8
  store volatile i64 %_new_load_276289290, i64* %_RBP_ptr_.sroa.0, align 8
  %100 = add i64 %84, 16
  store volatile i64 %100, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %83, i64* %RAX, align 8, !mcsema_real_eip !21
  store i64 %3, i64* %RBX, align 8, !mcsema_real_eip !21
  store i64 %RCX_val.0, i64* %RCX, align 8, !mcsema_real_eip !21
  store i64 %RDX_val.0, i64* %RDX, align 8, !mcsema_real_eip !21
  store i64 %4, i64* %RSI, align 8, !mcsema_real_eip !21
  store i64 %5, i64* %RDI, align 8, !mcsema_real_eip !21
  store volatile i64 %100, i64* %RSP, align 8
  store volatile i64 %_new_load_276289290, i64* %RBP, align 8
  store i64 %6, i64* %R8, align 8, !mcsema_real_eip !21
  store i64 %7, i64* %R9, align 8, !mcsema_real_eip !21
  store i64 %8, i64* %R10, align 8, !mcsema_real_eip !21
  store i64 %9, i64* %R11, align 8, !mcsema_real_eip !21
  store i64 %10, i64* %R12, align 8, !mcsema_real_eip !21
  store i64 %11, i64* %R13, align 8, !mcsema_real_eip !21
  store i64 %12, i64* %R14, align 8, !mcsema_real_eip !21
  store i64 %13, i64* %R15, align 8, !mcsema_real_eip !21
  store i64 %14, i64* %RIP, align 8, !mcsema_real_eip !21
  store i1 %97, i1* %CF, align 1, !mcsema_real_eip !21
  store i1 %96, i1* %PF, align 1, !mcsema_real_eip !21
  store i1 %87, i1* %AF, align 1, !mcsema_real_eip !21
  store i1 %89, i1* %ZF, align 1, !mcsema_real_eip !21
  store i1 %88, i1* %SF, align 1, !mcsema_real_eip !21
  store i1 %92, i1* %OF, align 1, !mcsema_real_eip !21
  store i1 %15, i1* %DF, align 1, !mcsema_real_eip !21
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* nonnull %18, i32 128, i32 8, i1 false), !mcsema_real_eip !21
  store i1 %19, i1* %FPU_B, align 1, !mcsema_real_eip !21
  store i1 %20, i1* %FPU_C3, align 1, !mcsema_real_eip !21
  store i3 %21, i3* %FPU_TOP, align 1, !mcsema_real_eip !21
  store i1 %22, i1* %FPU_C2, align 1, !mcsema_real_eip !21
  store i1 %23, i1* %FPU_C1, align 1, !mcsema_real_eip !21
  store i1 %24, i1* %FPU_C0, align 1, !mcsema_real_eip !21
  store i1 %25, i1* %FPU_ES, align 1, !mcsema_real_eip !21
  store i1 %26, i1* %FPU_SF, align 1, !mcsema_real_eip !21
  store i1 %27, i1* %FPU_PE, align 1, !mcsema_real_eip !21
  store i1 %28, i1* %FPU_UE, align 1, !mcsema_real_eip !21
  store i1 %29, i1* %FPU_OE, align 1, !mcsema_real_eip !21
  store i1 %30, i1* %FPU_ZE, align 1, !mcsema_real_eip !21
  store i1 %31, i1* %FPU_DE, align 1, !mcsema_real_eip !21
  store i1 %32, i1* %FPU_IE, align 1, !mcsema_real_eip !21
  store i1 %33, i1* %FPU_X, align 1, !mcsema_real_eip !21
  store i2 %34, i2* %FPU_RC, align 1, !mcsema_real_eip !21
  store i2 %35, i2* %FPU_PC, align 1, !mcsema_real_eip !21
  store i1 %36, i1* %FPU_PM, align 1, !mcsema_real_eip !21
  store i1 %37, i1* %FPU_UM, align 1, !mcsema_real_eip !21
  store i1 %38, i1* %FPU_OM, align 1, !mcsema_real_eip !21
  store i1 %39, i1* %FPU_ZM, align 1, !mcsema_real_eip !21
  store i1 %40, i1* %FPU_DM, align 1, !mcsema_real_eip !21
  store i1 %41, i1* %FPU_IM, align 1, !mcsema_real_eip !21
  %_ptr_to_int_277 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_279 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_280 = sub i64 %_ptr_to_int_277, %1
  %_pot_address_in_parent_stack_281 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_280
  %_cond1_282 = icmp ugt i8* %_ptr_bt_279, %_local_stack_end_ptr_
  %_cond2_1_283 = icmp ugt i8* %_ptr_bt_279, %_parent_stack_end_ptr_
  %_cond2_2_284 = icmp ult i8* %_ptr_bt_279, %_parent_stack_start_ptr_
  %_cond2_285 = or i1 %_cond2_1_283, %_cond2_2_284
  %_cond4_286 = icmp ule i8* %_pot_address_in_parent_stack_281, %_parent_stack_end_ptr_
  %_cond1_n_cond2_287 = and i1 %_cond1_282, %_cond2_285
  %_cond1_n_cond2_cond3_288 = and i1 %_cond1_n_cond2_287, %_cond4_286
  %_address_in_parent_stack_bt_290 = bitcast i8* %_pot_address_in_parent_stack_281 to i64*
  %101 = select i1 %_cond1_n_cond2_cond3_288, i64* %_address_in_parent_stack_bt_290, i64* %FPU_TAG_val
  %_new_load_291 = load i64, i64* %101, align 8
  store i64 %_new_load_291, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !21
  store i64 %46, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !21
  store i16 %47, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !21
  store i64 %48, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !21
  store i128 %49, i128* %XMM0, align 1, !mcsema_real_eip !21
  store i128 %50, i128* %XMM1, align 1, !mcsema_real_eip !21
  store i128 %51, i128* %XMM2, align 1, !mcsema_real_eip !21
  store i128 %52, i128* %XMM3, align 1, !mcsema_real_eip !21
  store i128 %53, i128* %XMM4, align 1, !mcsema_real_eip !21
  store i128 %54, i128* %XMM5, align 1, !mcsema_real_eip !21
  store i128 %55, i128* %XMM6, align 1, !mcsema_real_eip !21
  store i128 %56, i128* %XMM7, align 1, !mcsema_real_eip !21
  store i128 %57, i128* %XMM8, align 1, !mcsema_real_eip !21
  store i128 %58, i128* %XMM9, align 1, !mcsema_real_eip !21
  store i128 %59, i128* %XMM10, align 1, !mcsema_real_eip !21
  store i128 %60, i128* %XMM11, align 1, !mcsema_real_eip !21
  store i128 %61, i128* %XMM12, align 1, !mcsema_real_eip !21
  store i128 %62, i128* %XMM13, align 1, !mcsema_real_eip !21
  store i128 %63, i128* %XMM14, align 1, !mcsema_real_eip !21
  store i128 %64, i128* %XMM15, align 1, !mcsema_real_eip !21
  store i64 %65, i64* %STACK_BASE, align 1, !mcsema_real_eip !21
  store i64 %66, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !21
  ret void, !mcsema_real_eip !21

block_0x242:                                      ; preds = %entry, %block_0x22c
  %_new_gep_29 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4304, i64 -28
  %_ptr_to_int_292 = ptrtoint i8* %_new_gep_29 to i64
  %_offset_above_rbp_295 = sub i64 %_ptr_to_int_292, %1
  %_pot_address_in_parent_stack_296 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_295
  %_cond1_297 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_298 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_299 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_300 = or i1 %_cond2_1_298, %_cond2_2_299
  %_cond4_301 = icmp ule i8* %_pot_address_in_parent_stack_296, %_parent_stack_end_ptr_
  %_cond1_n_cond2_302 = and i1 %_cond1_297, %_cond2_300
  %_cond1_n_cond2_cond3_303 = and i1 %_cond1_n_cond2_302, %_cond4_301
  %.v300 = select i1 %_cond1_n_cond2_cond3_303, i8* %_pot_address_in_parent_stack_296, i8* %_new_gep_29
  %102 = bitcast i8* %.v300 to i32*
  %_new_load_306 = load i32, i32* %102, align 4
  %103 = icmp eq i32 %_new_load_306, %_new_load_190
  br i1 %103, label %block_0x24e, label %block_0x266, !mcsema_real_eip !43

block_0x1f2:                                      ; preds = %entry
  %notlhs = icmp ne i32 %_new_load_175, 2
  %notrhs = icmp ne i8 %_new_load_203, 124
  %or.cond.not = or i1 %notlhs, %notrhs
  %104 = icmp slt i32 %_new_load_190, 1
  %or.cond302 = or i1 %104, %or.cond.not
  br i1 %or.cond302, label %block_0x236, label %block_0x22c, !mcsema_real_eip !44

block_0x236:                                      ; preds = %block_0x1f2, %block_0x22c
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4304, i64 -28
  %_ptr_to_int_337 = ptrtoint i8* %_new_gep_38 to i64
  %_offset_above_rbp_340 = sub i64 %_ptr_to_int_337, %1
  %_pot_address_in_parent_stack_341 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_340
  %_cond1_342 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_343 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_344 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_345 = or i1 %_cond2_1_343, %_cond2_2_344
  %_cond4_346 = icmp ule i8* %_pot_address_in_parent_stack_341, %_parent_stack_end_ptr_
  %_cond1_n_cond2_347 = and i1 %_cond1_342, %_cond2_345
  %_cond1_n_cond2_cond3_348 = and i1 %_cond1_n_cond2_347, %_cond4_346
  %.v271 = select i1 %_cond1_n_cond2_cond3_348, i8* %_pot_address_in_parent_stack_341, i8* %_new_gep_38
  %105 = bitcast i8* %.v271 to i32*
  %_new_load_351 = load i32, i32* %105, align 4
  %106 = bitcast i8* %_new_gep_8 to i32*
  store i32 %_new_load_351, i32* %106, align 4, !mcsema_real_eip !45
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_43317 = load i8*, i8** %67, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_43317, i64 -32
  %_ptr_to_int_352 = ptrtoint i8* %_new_gep_44 to i64
  %_offset_above_rbp_355 = sub i64 %_ptr_to_int_352, %1
  %_pot_address_in_parent_stack_356 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_355
  %_cond1_357 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_358 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_359 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_360 = or i1 %_cond2_1_358, %_cond2_2_359
  %_cond4_361 = icmp ule i8* %_pot_address_in_parent_stack_356, %_parent_stack_end_ptr_
  %_cond1_n_cond2_362 = and i1 %_cond1_357, %_cond2_360
  %_cond1_n_cond2_cond3_363 = and i1 %_cond1_n_cond2_362, %_cond4_361
  %.v272 = select i1 %_cond1_n_cond2_cond3_363, i8* %_pot_address_in_parent_stack_356, i8* %_new_gep_44
  %107 = bitcast i8* %.v272 to i32*
  %_new_load_366 = load i32, i32* %107, align 4
  %_new_gep_47 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_43317, i64 -24
  %108 = bitcast i8* %_new_gep_47 to i32*
  store i32 %_new_load_366, i32* %108, align 4, !mcsema_real_eip !46
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_49318 = load i8*, i8** %67, align 8
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_49318, i64 -28
  %_ptr_to_int_367 = ptrtoint i8* %_new_gep_50 to i64
  %_offset_above_rbp_370 = sub i64 %_ptr_to_int_367, %1
  %_pot_address_in_parent_stack_371 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_370
  %_cond1_372 = icmp ugt i8* %_new_gep_50, %_local_stack_end_ptr_
  %_cond2_1_373 = icmp ugt i8* %_new_gep_50, %_parent_stack_end_ptr_
  %_cond2_2_374 = icmp ult i8* %_new_gep_50, %_parent_stack_start_ptr_
  %_cond2_375 = or i1 %_cond2_1_373, %_cond2_2_374
  %_cond4_376 = icmp ule i8* %_pot_address_in_parent_stack_371, %_parent_stack_end_ptr_
  %_cond1_n_cond2_377 = and i1 %_cond1_372, %_cond2_375
  %_cond1_n_cond2_cond3_378 = and i1 %_cond1_n_cond2_377, %_cond4_376
  %.v273 = select i1 %_cond1_n_cond2_cond3_378, i8* %_pot_address_in_parent_stack_371, i8* %_new_gep_50
  %109 = bitcast i8* %.v273 to i32*
  %_new_load_381 = load i32, i32* %109, align 4
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_49318, i64 -20
  %_ptr_to_int_382 = ptrtoint i8* %_new_gep_53 to i64
  %_offset_above_rbp_385 = sub i64 %_ptr_to_int_382, %1
  %_pot_address_in_parent_stack_386 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_385
  %_cond1_387 = icmp ugt i8* %_new_gep_53, %_local_stack_end_ptr_
  %_cond2_1_388 = icmp ugt i8* %_new_gep_53, %_parent_stack_end_ptr_
  %_cond2_2_389 = icmp ult i8* %_new_gep_53, %_parent_stack_start_ptr_
  %_cond2_390 = or i1 %_cond2_1_388, %_cond2_2_389
  %_cond4_391 = icmp ule i8* %_pot_address_in_parent_stack_386, %_parent_stack_end_ptr_
  %_cond1_n_cond2_392 = and i1 %_cond1_387, %_cond2_390
  %_cond1_n_cond2_cond3_393 = and i1 %_cond1_n_cond2_392, %_cond4_391
  %.v274 = select i1 %_cond1_n_cond2_cond3_393, i8* %_pot_address_in_parent_stack_386, i8* %_new_gep_53
  %110 = bitcast i8* %.v274 to i32*
  %_new_load_396 = load i32, i32* %110, align 4
  %111 = icmp eq i32 %_new_load_381, %_new_load_396
  br i1 %111, label %block_0x24e, label %block_0x266, !mcsema_real_eip !43

block_0x266:                                      ; preds = %block_0x24e, %block_0x236, %block_0x242
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_61306 = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_77315, %block_0x24e ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_49318, %block_0x236 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4304, %block_0x242 ]
  %_new_gep_62 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_61306, i64 -24
  %_ptr_to_int_440 = ptrtoint i8* %_new_gep_62 to i64
  %_offset_above_rbp_443 = sub i64 %_ptr_to_int_440, %1
  %_pot_address_in_parent_stack_444 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_443
  %_cond1_445 = icmp ugt i8* %_new_gep_62, %_local_stack_end_ptr_
  %_cond2_1_446 = icmp ugt i8* %_new_gep_62, %_parent_stack_end_ptr_
  %_cond2_2_447 = icmp ult i8* %_new_gep_62, %_parent_stack_start_ptr_
  %_cond2_448 = or i1 %_cond2_1_446, %_cond2_2_447
  %_cond4_449 = icmp ule i8* %_pot_address_in_parent_stack_444, %_parent_stack_end_ptr_
  %_cond1_n_cond2_450 = and i1 %_cond1_445, %_cond2_448
  %_cond1_n_cond2_cond3_451 = and i1 %_cond1_n_cond2_450, %_cond4_449
  %.v275 = select i1 %_cond1_n_cond2_cond3_451, i8* %_pot_address_in_parent_stack_444, i8* %_new_gep_62
  %112 = bitcast i8* %.v275 to i32*
  %_new_load_454 = load i32, i32* %112, align 4
  %113 = sext i32 %_new_load_454 to i64, !mcsema_real_eip !47
  %114 = mul nsw i64 %113, 11, !mcsema_real_eip !48
  %115 = add i64 %114, ptrtoint (%1* @data_0x359 to i64)
  %_new_gep_65 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_61306, i64 -20
  %_ptr_to_int_455 = ptrtoint i8* %_new_gep_65 to i64
  %_offset_above_rbp_458 = sub i64 %_ptr_to_int_455, %1
  %_pot_address_in_parent_stack_459 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_458
  %_cond1_460 = icmp ugt i8* %_new_gep_65, %_local_stack_end_ptr_
  %_cond2_1_461 = icmp ugt i8* %_new_gep_65, %_parent_stack_end_ptr_
  %_cond2_2_462 = icmp ult i8* %_new_gep_65, %_parent_stack_start_ptr_
  %_cond2_463 = or i1 %_cond2_1_461, %_cond2_2_462
  %_cond4_464 = icmp ule i8* %_pot_address_in_parent_stack_459, %_parent_stack_end_ptr_
  %_cond1_n_cond2_465 = and i1 %_cond1_460, %_cond2_463
  %_cond1_n_cond2_cond3_466 = and i1 %_cond1_n_cond2_465, %_cond4_464
  %.v276 = select i1 %_cond1_n_cond2_cond3_466, i8* %_pot_address_in_parent_stack_459, i8* %_new_gep_65
  %116 = bitcast i8* %.v276 to i32*
  %_new_load_469 = load i32, i32* %116, align 4
  %117 = sext i32 %_new_load_469 to i64, !mcsema_real_eip !49
  %118 = add i64 %115, %117, !mcsema_real_eip !50
  %119 = inttoptr i64 %118 to i8*
  store i8 88, i8* %119, align 1, !mcsema_real_eip !50
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_67307 = load i8*, i8** %67, align 8
  %_new_gep_68 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_67307, i64 -36
  %120 = bitcast i8* %_new_gep_68 to i32*
  %_ptr_to_int_470 = ptrtoint i8* %_new_gep_68 to i64
  %_offset_above_rbp_473 = sub i64 %_ptr_to_int_470, %1
  %_pot_address_in_parent_stack_474 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_473
  %_cond1_475 = icmp ugt i8* %_new_gep_68, %_local_stack_end_ptr_
  %_cond2_1_476 = icmp ugt i8* %_new_gep_68, %_parent_stack_end_ptr_
  %_cond2_2_477 = icmp ult i8* %_new_gep_68, %_parent_stack_start_ptr_
  %_cond2_478 = or i1 %_cond2_1_476, %_cond2_2_477
  %_cond4_479 = icmp ule i8* %_pot_address_in_parent_stack_474, %_parent_stack_end_ptr_
  %_cond1_n_cond2_480 = and i1 %_cond1_475, %_cond2_478
  %_cond1_n_cond2_cond3_481 = and i1 %_cond1_n_cond2_480, %_cond4_479
  %_address_in_parent_stack_bt_483 = bitcast i8* %_pot_address_in_parent_stack_474 to i32*
  %121 = select i1 %_cond1_n_cond2_cond3_481, i32* %_address_in_parent_stack_bt_483, i32* %120
  %_new_load_484 = load i32, i32* %121, align 4
  %122 = add i32 %_new_load_484, 1
  %123 = zext i32 %122 to i64, !mcsema_real_eip !51
  store i32 %122, i32* %120, align 4, !mcsema_real_eip !52
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_73308 = load i8*, i8** %67, align 8
  %_new_gep_74 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_73308, i64 -36
  %_ptr_to_int_485 = ptrtoint i8* %_new_gep_74 to i64
  %_offset_above_rbp_488 = sub i64 %_ptr_to_int_485, %1
  %_pot_address_in_parent_stack_489 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_488
  %_cond1_490 = icmp ugt i8* %_new_gep_74, %_local_stack_end_ptr_
  %_cond2_1_491 = icmp ugt i8* %_new_gep_74, %_parent_stack_end_ptr_
  %_cond2_2_492 = icmp ult i8* %_new_gep_74, %_parent_stack_start_ptr_
  %_cond2_493 = or i1 %_cond2_1_491, %_cond2_2_492
  %_cond4_494 = icmp ule i8* %_pot_address_in_parent_stack_489, %_parent_stack_end_ptr_
  %_cond1_n_cond2_495 = and i1 %_cond1_490, %_cond2_493
  %_cond1_n_cond2_cond3_496 = and i1 %_cond1_n_cond2_495, %_cond4_494
  %.v277 = select i1 %_cond1_n_cond2_cond3_496, i8* %_pot_address_in_parent_stack_489, i8* %_new_gep_74
  %124 = bitcast i8* %.v277 to i32*
  %_new_load_499 = load i32, i32* %124, align 4
  %125 = add i32 %_new_load_499, -28
  %126 = icmp slt i32 %125, 0
  %127 = sub i32 27, %_new_load_499
  %128 = and i32 %127, %_new_load_499
  %129 = icmp slt i32 %128, 0
  %tmp = xor i1 %126, %129
  br i1 %tmp, label %block_0x11e, label %block_0x291, !mcsema_real_eip !16

block_0x24e:                                      ; preds = %block_0x236, %block_0x242
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_77315 = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_49318, %block_0x236 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4304, %block_0x242 ]
  %_new_gep_78 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_77315, i64 -32
  %_ptr_to_int_500 = ptrtoint i8* %_new_gep_78 to i64
  %_offset_above_rbp_503 = sub i64 %_ptr_to_int_500, %1
  %_pot_address_in_parent_stack_504 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_503
  %_cond1_505 = icmp ugt i8* %_new_gep_78, %_local_stack_end_ptr_
  %_cond2_1_506 = icmp ugt i8* %_new_gep_78, %_parent_stack_end_ptr_
  %_cond2_2_507 = icmp ult i8* %_new_gep_78, %_parent_stack_start_ptr_
  %_cond2_508 = or i1 %_cond2_1_506, %_cond2_2_507
  %_cond4_509 = icmp ule i8* %_pot_address_in_parent_stack_504, %_parent_stack_end_ptr_
  %_cond1_n_cond2_510 = and i1 %_cond1_505, %_cond2_508
  %_cond1_n_cond2_cond3_511 = and i1 %_cond1_n_cond2_510, %_cond4_509
  %.v298 = select i1 %_cond1_n_cond2_cond3_511, i8* %_pot_address_in_parent_stack_504, i8* %_new_gep_78
  %130 = bitcast i8* %.v298 to i32*
  %_new_load_514 = load i32, i32* %130, align 4
  %_new_gep_81 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_77315, i64 -24
  %_ptr_to_int_515 = ptrtoint i8* %_new_gep_81 to i64
  %_offset_above_rbp_518 = sub i64 %_ptr_to_int_515, %1
  %_pot_address_in_parent_stack_519 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_518
  %_cond1_520 = icmp ugt i8* %_new_gep_81, %_local_stack_end_ptr_
  %_cond2_1_521 = icmp ugt i8* %_new_gep_81, %_parent_stack_end_ptr_
  %_cond2_2_522 = icmp ult i8* %_new_gep_81, %_parent_stack_start_ptr_
  %_cond2_523 = or i1 %_cond2_1_521, %_cond2_2_522
  %_cond4_524 = icmp ule i8* %_pot_address_in_parent_stack_519, %_parent_stack_end_ptr_
  %_cond1_n_cond2_525 = and i1 %_cond1_520, %_cond2_523
  %_cond1_n_cond2_cond3_526 = and i1 %_cond1_n_cond2_525, %_cond4_524
  %.v299 = select i1 %_cond1_n_cond2_cond3_526, i8* %_pot_address_in_parent_stack_519, i8* %_new_gep_81
  %131 = bitcast i8* %.v299 to i32*
  %_new_load_529 = load i32, i32* %131, align 4
  %132 = icmp eq i32 %_new_load_514, %_new_load_529
  br i1 %132, label %block_0x298, label %block_0x266, !mcsema_real_eip !53

block_0x22c:                                      ; preds = %block_0x1f2
  %133 = add i32 %_new_load_190, -11
  %134 = icmp slt i32 %133, 0
  %135 = sub i32 10, %_new_load_190
  %136 = and i32 %135, %_new_load_190
  %137 = icmp slt i32 %136, 0
  %138 = xor i1 %134, %137
  br i1 %138, label %block_0x242, label %block_0x236, !mcsema_real_eip !54

block_0x291:                                      ; preds = %block_0x266
  %_new_gep_92 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_73308, i64 -4
  %139 = bitcast i8* %_new_gep_92 to i32*
  store i32 1, i32* %139, align 4, !mcsema_real_eip !17
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_94309 = load i8*, i8** %67, align 8
  %_new_gep_95 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_94309, i64 -4
  %_ptr_to_int_560 = ptrtoint i8* %_new_gep_95 to i64
  %_offset_above_rbp_563 = sub i64 %_ptr_to_int_560, %1
  %_pot_address_in_parent_stack_564 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_563
  %_cond1_565 = icmp ugt i8* %_new_gep_95, %_local_stack_end_ptr_
  %_cond2_1_566 = icmp ugt i8* %_new_gep_95, %_parent_stack_end_ptr_
  %_cond2_2_567 = icmp ult i8* %_new_gep_95, %_parent_stack_start_ptr_
  %_cond2_568 = or i1 %_cond2_1_566, %_cond2_2_567
  %_cond4_569 = icmp ule i8* %_pot_address_in_parent_stack_564, %_parent_stack_end_ptr_
  %_cond1_n_cond2_570 = and i1 %_cond1_565, %_cond2_568
  %_cond1_n_cond2_cond3_571 = and i1 %_cond1_n_cond2_570, %_cond4_569
  %.v278 = select i1 %_cond1_n_cond2_cond3_571, i8* %_pot_address_in_parent_stack_564, i8* %_new_gep_95
  %140 = bitcast i8* %.v278 to i32*
  %_new_load_574 = load i32, i32* %140, align 4
  %141 = zext i32 %_new_load_574 to i64, !mcsema_real_eip !18
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_97279 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %uadd357 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_97279, i64 96)
  %142 = extractvalue { i64, i1 } %uadd357, 0
  %143 = xor i64 %142, %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_97279, !mcsema_real_eip !19
  %144 = and i64 %143, 16, !mcsema_real_eip !19
  %145 = icmp ne i64 %144, 0, !mcsema_real_eip !19
  %146 = icmp slt i64 %142, 0
  %147 = icmp eq i64 %142, 0, !mcsema_real_eip !19
  %148 = xor i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_97279, -9223372036854775808, !mcsema_real_eip !19
  %149 = and i64 %143, %148, !mcsema_real_eip !19
  %150 = icmp slt i64 %149, 0
  %151 = trunc i64 %142 to i8, !mcsema_real_eip !19
  %152 = tail call i8 @llvm.ctpop.i8(i8 %151), !mcsema_real_eip !19
  %153 = and i8 %152, 1
  %154 = icmp eq i8 %153, 0
  %155 = extractvalue { i64, i1 } %uadd357, 1
  %_new_int2ptr_99 = inttoptr i64 %142 to i8*
  store volatile i64 %142, i64* %_RSP_ptr_.sroa.0, align 8
  %156 = inttoptr i64 %142 to i64*, !mcsema_real_eip !20
  %_offset_above_rbp_578 = sub i64 %142, %1
  %_pot_address_in_parent_stack_579 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_578
  %_cond1_580 = icmp ugt i8* %_new_int2ptr_99, %_local_stack_end_ptr_
  %_cond2_1_581 = icmp ugt i8* %_new_int2ptr_99, %_parent_stack_end_ptr_
  %_cond2_2_582 = icmp ult i8* %_new_int2ptr_99, %_parent_stack_start_ptr_
  %_cond2_583 = or i1 %_cond2_1_581, %_cond2_2_582
  %_cond4_584 = icmp ule i8* %_pot_address_in_parent_stack_579, %_parent_stack_end_ptr_
  %_cond1_n_cond2_585 = and i1 %_cond1_580, %_cond2_583
  %_cond1_n_cond2_cond3_586 = and i1 %_cond4_584, %_cond1_n_cond2_585
  %_address_in_parent_stack_bt_588 = bitcast i8* %_pot_address_in_parent_stack_579 to i64*
  %157 = select i1 %_cond1_n_cond2_cond3_586, i64* %_address_in_parent_stack_bt_588, i64* %156
  %_new_load_589280281 = load i64, i64* %157, align 8
  store volatile i64 %_new_load_589280281, i64* %_RBP_ptr_.sroa.0, align 8
  %158 = add i64 %142, 16
  store volatile i64 %158, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %141, i64* %RAX, align 8, !mcsema_real_eip !21
  store i64 %3, i64* %RBX, align 8, !mcsema_real_eip !21
  store i64 %117, i64* %RCX, align 8, !mcsema_real_eip !21
  store i64 %123, i64* %RDX, align 8, !mcsema_real_eip !21
  store i64 %4, i64* %RSI, align 8, !mcsema_real_eip !21
  store i64 %5, i64* %RDI, align 8, !mcsema_real_eip !21
  store volatile i64 %158, i64* %RSP, align 8
  store volatile i64 %_new_load_589280281, i64* %RBP, align 8
  store i64 %6, i64* %R8, align 8, !mcsema_real_eip !21
  store i64 %7, i64* %R9, align 8, !mcsema_real_eip !21
  store i64 %8, i64* %R10, align 8, !mcsema_real_eip !21
  store i64 %9, i64* %R11, align 8, !mcsema_real_eip !21
  store i64 %10, i64* %R12, align 8, !mcsema_real_eip !21
  store i64 %11, i64* %R13, align 8, !mcsema_real_eip !21
  store i64 %12, i64* %R14, align 8, !mcsema_real_eip !21
  store i64 %13, i64* %R15, align 8, !mcsema_real_eip !21
  store i64 %14, i64* %RIP, align 8, !mcsema_real_eip !21
  store i1 %155, i1* %CF, align 1, !mcsema_real_eip !21
  store i1 %154, i1* %PF, align 1, !mcsema_real_eip !21
  store i1 %145, i1* %AF, align 1, !mcsema_real_eip !21
  store i1 %147, i1* %ZF, align 1, !mcsema_real_eip !21
  store i1 %146, i1* %SF, align 1, !mcsema_real_eip !21
  store i1 %150, i1* %OF, align 1, !mcsema_real_eip !21
  store i1 %15, i1* %DF, align 1, !mcsema_real_eip !21
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* nonnull %18, i32 128, i32 8, i1 false), !mcsema_real_eip !21
  store i1 %19, i1* %FPU_B, align 1, !mcsema_real_eip !21
  store i1 %20, i1* %FPU_C3, align 1, !mcsema_real_eip !21
  store i3 %21, i3* %FPU_TOP, align 1, !mcsema_real_eip !21
  store i1 %22, i1* %FPU_C2, align 1, !mcsema_real_eip !21
  store i1 %23, i1* %FPU_C1, align 1, !mcsema_real_eip !21
  store i1 %24, i1* %FPU_C0, align 1, !mcsema_real_eip !21
  store i1 %25, i1* %FPU_ES, align 1, !mcsema_real_eip !21
  store i1 %26, i1* %FPU_SF, align 1, !mcsema_real_eip !21
  store i1 %27, i1* %FPU_PE, align 1, !mcsema_real_eip !21
  store i1 %28, i1* %FPU_UE, align 1, !mcsema_real_eip !21
  store i1 %29, i1* %FPU_OE, align 1, !mcsema_real_eip !21
  store i1 %30, i1* %FPU_ZE, align 1, !mcsema_real_eip !21
  store i1 %31, i1* %FPU_DE, align 1, !mcsema_real_eip !21
  store i1 %32, i1* %FPU_IE, align 1, !mcsema_real_eip !21
  store i1 %33, i1* %FPU_X, align 1, !mcsema_real_eip !21
  store i2 %34, i2* %FPU_RC, align 1, !mcsema_real_eip !21
  store i2 %35, i2* %FPU_PC, align 1, !mcsema_real_eip !21
  store i1 %36, i1* %FPU_PM, align 1, !mcsema_real_eip !21
  store i1 %37, i1* %FPU_UM, align 1, !mcsema_real_eip !21
  store i1 %38, i1* %FPU_OM, align 1, !mcsema_real_eip !21
  store i1 %39, i1* %FPU_ZM, align 1, !mcsema_real_eip !21
  store i1 %40, i1* %FPU_DM, align 1, !mcsema_real_eip !21
  store i1 %41, i1* %FPU_IM, align 1, !mcsema_real_eip !21
  %_ptr_to_int_590 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_592 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_593 = sub i64 %_ptr_to_int_590, %1
  %_pot_address_in_parent_stack_594 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_593
  %_cond1_595 = icmp ugt i8* %_ptr_bt_592, %_local_stack_end_ptr_
  %_cond2_1_596 = icmp ugt i8* %_ptr_bt_592, %_parent_stack_end_ptr_
  %_cond2_2_597 = icmp ult i8* %_ptr_bt_592, %_parent_stack_start_ptr_
  %_cond2_598 = or i1 %_cond2_1_596, %_cond2_2_597
  %_cond4_599 = icmp ule i8* %_pot_address_in_parent_stack_594, %_parent_stack_end_ptr_
  %_cond1_n_cond2_600 = and i1 %_cond1_595, %_cond2_598
  %_cond1_n_cond2_cond3_601 = and i1 %_cond1_n_cond2_600, %_cond4_599
  %_address_in_parent_stack_bt_603 = bitcast i8* %_pot_address_in_parent_stack_594 to i64*
  %159 = select i1 %_cond1_n_cond2_cond3_601, i64* %_address_in_parent_stack_bt_603, i64* %FPU_TAG_val
  %_new_load_604 = load i64, i64* %159, align 8
  store i64 %_new_load_604, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !21
  store i64 %46, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !21
  store i16 %47, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !21
  store i64 %48, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !21
  store i128 %49, i128* %XMM0, align 1, !mcsema_real_eip !21
  store i128 %50, i128* %XMM1, align 1, !mcsema_real_eip !21
  store i128 %51, i128* %XMM2, align 1, !mcsema_real_eip !21
  store i128 %52, i128* %XMM3, align 1, !mcsema_real_eip !21
  store i128 %53, i128* %XMM4, align 1, !mcsema_real_eip !21
  store i128 %54, i128* %XMM5, align 1, !mcsema_real_eip !21
  store i128 %55, i128* %XMM6, align 1, !mcsema_real_eip !21
  store i128 %56, i128* %XMM7, align 1, !mcsema_real_eip !21
  store i128 %57, i128* %XMM8, align 1, !mcsema_real_eip !21
  store i128 %58, i128* %XMM9, align 1, !mcsema_real_eip !21
  store i128 %59, i128* %XMM10, align 1, !mcsema_real_eip !21
  store i128 %60, i128* %XMM11, align 1, !mcsema_real_eip !21
  store i128 %61, i128* %XMM12, align 1, !mcsema_real_eip !21
  store i128 %62, i128* %XMM13, align 1, !mcsema_real_eip !21
  store i128 %63, i128* %XMM14, align 1, !mcsema_real_eip !21
  store i128 %64, i128* %XMM15, align 1, !mcsema_real_eip !21
  store i64 %65, i64* %STACK_BASE, align 1, !mcsema_real_eip !21
  store i64 %66, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !21
  ret void, !mcsema_real_eip !21

block_0x11e:                                      ; preds = %block_0x266
  %_new_gep_106 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_73308, i64 -20
  %_ptr_to_int_605 = ptrtoint i8* %_new_gep_106 to i64
  %_offset_above_rbp_608 = sub i64 %_ptr_to_int_605, %1
  %_pot_address_in_parent_stack_609 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_608
  %_cond1_610 = icmp ugt i8* %_new_gep_106, %_local_stack_end_ptr_
  %_cond2_1_611 = icmp ugt i8* %_new_gep_106, %_parent_stack_end_ptr_
  %_cond2_2_612 = icmp ult i8* %_new_gep_106, %_parent_stack_start_ptr_
  %_cond2_613 = or i1 %_cond2_1_611, %_cond2_2_612
  %_cond4_614 = icmp ule i8* %_pot_address_in_parent_stack_609, %_parent_stack_end_ptr_
  %_cond1_n_cond2_615 = and i1 %_cond1_610, %_cond2_613
  %_cond1_n_cond2_cond3_616 = and i1 %_cond1_n_cond2_615, %_cond4_614
  %.v284 = select i1 %_cond1_n_cond2_cond3_616, i8* %_pot_address_in_parent_stack_609, i8* %_new_gep_106
  %160 = bitcast i8* %.v284 to i32*
  %_new_load_619 = load i32, i32* %160, align 4
  %_new_gep_109 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_73308, i64 -28
  %161 = bitcast i8* %_new_gep_109 to i32*
  store i32 %_new_load_619, i32* %161, align 4, !mcsema_real_eip !23
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_111310 = load i8*, i8** %67, align 8
  %_new_gep_112 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_111310, i64 -24
  %_ptr_to_int_620 = ptrtoint i8* %_new_gep_112 to i64
  %_offset_above_rbp_623 = sub i64 %_ptr_to_int_620, %1
  %_pot_address_in_parent_stack_624 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_623
  %_cond1_625 = icmp ugt i8* %_new_gep_112, %_local_stack_end_ptr_
  %_cond2_1_626 = icmp ugt i8* %_new_gep_112, %_parent_stack_end_ptr_
  %_cond2_2_627 = icmp ult i8* %_new_gep_112, %_parent_stack_start_ptr_
  %_cond2_628 = or i1 %_cond2_1_626, %_cond2_2_627
  %_cond4_629 = icmp ule i8* %_pot_address_in_parent_stack_624, %_parent_stack_end_ptr_
  %_cond1_n_cond2_630 = and i1 %_cond1_625, %_cond2_628
  %_cond1_n_cond2_cond3_631 = and i1 %_cond1_n_cond2_630, %_cond4_629
  %.v285 = select i1 %_cond1_n_cond2_cond3_631, i8* %_pot_address_in_parent_stack_624, i8* %_new_gep_112
  %162 = bitcast i8* %.v285 to i32*
  %_new_load_634 = load i32, i32* %162, align 4
  %_new_gep_115 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_111310, i64 -32
  %163 = bitcast i8* %_new_gep_115 to i32*
  store i32 %_new_load_634, i32* %163, align 4, !mcsema_real_eip !25
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_117311 = load i8*, i8** %67, align 8
  %_new_gep_118 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_117311, i64 -36
  %_ptr_to_int_635 = ptrtoint i8* %_new_gep_118 to i64
  %_offset_above_rbp_638 = sub i64 %_ptr_to_int_635, %1
  %_pot_address_in_parent_stack_639 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_638
  %_cond1_640 = icmp ugt i8* %_new_gep_118, %_local_stack_end_ptr_
  %_cond2_1_641 = icmp ugt i8* %_new_gep_118, %_parent_stack_end_ptr_
  %_cond2_2_642 = icmp ult i8* %_new_gep_118, %_parent_stack_start_ptr_
  %_cond2_643 = or i1 %_cond2_1_641, %_cond2_2_642
  %_cond4_644 = icmp ule i8* %_pot_address_in_parent_stack_639, %_parent_stack_end_ptr_
  %_cond1_n_cond2_645 = and i1 %_cond1_640, %_cond2_643
  %_cond1_n_cond2_cond3_646 = and i1 %_cond1_n_cond2_645, %_cond4_644
  %.v286 = select i1 %_cond1_n_cond2_cond3_646, i8* %_pot_address_in_parent_stack_639, i8* %_new_gep_118
  %164 = bitcast i8* %.v286 to i32*
  %_new_load_649 = load i32, i32* %164, align 4
  %165 = sext i32 %_new_load_649 to i64, !mcsema_real_eip !26
  %_new_gep_121 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_117311, i64 -64
  %_new_gep_122 = getelementptr i8, i8* %_new_gep_121, i64 %165
  %_ptr_to_int_650 = ptrtoint i8* %_new_gep_122 to i64
  %_offset_above_rbp_652 = sub i64 %_ptr_to_int_650, %1
  %_pot_address_in_parent_stack_653 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_652
  %_cond1_654 = icmp ugt i8* %_new_gep_122, %_local_stack_end_ptr_
  %_cond2_1_655 = icmp ugt i8* %_new_gep_122, %_parent_stack_end_ptr_
  %_cond2_2_656 = icmp ult i8* %_new_gep_122, %_parent_stack_start_ptr_
  %_cond2_657 = or i1 %_cond2_1_655, %_cond2_2_656
  %_cond4_658 = icmp ule i8* %_pot_address_in_parent_stack_653, %_parent_stack_end_ptr_
  %_cond1_n_cond2_659 = and i1 %_cond1_654, %_cond2_657
  %_cond1_n_cond2_cond3_660 = and i1 %_cond1_n_cond2_659, %_cond4_658
  %_address_in_parent_stack_661. = select i1 %_cond1_n_cond2_cond3_660, i8* %_pot_address_in_parent_stack_653, i8* %_new_gep_122
  %_new_load_662 = load i8, i8* %_address_in_parent_stack_661., align 1
  %166 = sext i8 %_new_load_662 to i32, !mcsema_real_eip !27
  %167 = add nsw i32 %166, -97
  %168 = zext i32 %167 to i64, !mcsema_real_eip !28
  %169 = add nsw i32 %166, -119
  %170 = xor i32 %169, %167, !mcsema_real_eip !29
  %171 = icmp eq i32 %169, 0, !mcsema_real_eip !29
  %172 = icmp ult i32 %167, 22, !mcsema_real_eip !29
  %_new_gep_125 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_117311, i64 -80
  %_allin_new_bt_126 = bitcast i8* %_new_gep_125 to i64*
  store i64 %168, i64* %_allin_new_bt_126, align 8, !mcsema_real_eip !30
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_127312 = load i8*, i8** %67, align 8
  %_new_gep_128 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_127312, i64 -84
  %173 = bitcast i8* %_new_gep_128 to i32*
  store i32 %169, i32* %173, align 4, !mcsema_real_eip !31
  %.demorgan = or i1 %172, %171
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_130313 = load i8*, i8** %67, align 8
  br i1 %.demorgan, label %block_0x148, label %block_0x298, !mcsema_real_eip !32

block_0x148:                                      ; preds = %block_0x11e
  %174 = ptrtoint i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_130313 to i64
  %175 = and i32 %170, %167, !mcsema_real_eip !29
  %176 = icmp slt i32 %175, 0
  %177 = icmp slt i8 %_new_load_662, 119
  %178 = trunc i32 %169 to i8, !mcsema_real_eip !29
  %179 = tail call i8 @llvm.ctpop.i8(i8 %178), !mcsema_real_eip !29
  %180 = and i8 %179, 1
  %181 = icmp eq i8 %180, 0
  %182 = and i32 %170, 16
  %183 = icmp eq i32 %182, 0
  %_new_gep_133 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_130313, i64 -80
  %_ptr_to_int_663 = ptrtoint i8* %_new_gep_133 to i64
  %_offset_above_rbp_666 = sub i64 %_ptr_to_int_663, %1
  %_pot_address_in_parent_stack_667 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_666
  %_cond1_668 = icmp ugt i8* %_new_gep_133, %_local_stack_end_ptr_
  %_cond2_1_669 = icmp ugt i8* %_new_gep_133, %_parent_stack_end_ptr_
  %_cond2_2_670 = icmp ult i8* %_new_gep_133, %_parent_stack_start_ptr_
  %_cond2_671 = or i1 %_cond2_1_669, %_cond2_2_670
  %_cond4_672 = icmp ule i8* %_pot_address_in_parent_stack_667, %_parent_stack_end_ptr_
  %_cond1_n_cond2_673 = and i1 %_cond1_668, %_cond2_671
  %_cond1_n_cond2_cond3_674 = and i1 %_cond1_n_cond2_673, %_cond4_672
  %.v293 = select i1 %_cond1_n_cond2_cond3_674, i8* %_pot_address_in_parent_stack_667, i8* %_new_gep_133
  %184 = bitcast i8* %.v293 to i64*
  %_new_load_677 = load i64, i64* %184, align 8
  %185 = shl i64 %_new_load_677, 3
  %186 = add i64 %185, ptrtoint (%0* @data_0x2a1 to i64), !mcsema_real_eip !35
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !35
  %_ptr_bt_680 = inttoptr i64 %186 to i8*
  %_offset_above_rbp_681 = sub i64 %186, %1
  %_pot_address_in_parent_stack_682 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_681
  %_cond1_683 = icmp ugt i8* %_ptr_bt_680, %_local_stack_end_ptr_
  %_cond2_1_684 = icmp ugt i8* %_ptr_bt_680, %_parent_stack_end_ptr_
  %_cond2_2_685 = icmp ult i8* %_ptr_bt_680, %_parent_stack_start_ptr_
  %_cond2_686 = or i1 %_cond2_1_684, %_cond2_2_685
  %_cond4_687 = icmp ule i8* %_pot_address_in_parent_stack_682, %_parent_stack_end_ptr_
  %_cond1_n_cond2_688 = and i1 %_cond1_683, %_cond2_686
  %_cond1_n_cond2_cond3_689 = and i1 %_cond4_687, %_cond1_n_cond2_688
  %_address_in_parent_stack_bt_691 = bitcast i8* %_pot_address_in_parent_stack_682 to i64*
  %188 = select i1 %_cond1_n_cond2_cond3_689, i64* %_address_in_parent_stack_bt_691, i64* %187
  %_new_load_692 = load i64, i64* %188, align 8
  store i64 %_new_load_677, i64* %RAX, align 8, !mcsema_real_eip !36
  store i64 %3, i64* %RBX, align 8, !mcsema_real_eip !36
  store i64 %_new_load_692, i64* %RCX, align 8, !mcsema_real_eip !36
  store i64 %123, i64* %RDX, align 8, !mcsema_real_eip !36
  store i64 %4, i64* %RSI, align 8, !mcsema_real_eip !36
  store i64 %5, i64* %RDI, align 8, !mcsema_real_eip !36
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_135294 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  store volatile i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_135294, i64* %RSP, align 8
  store volatile i64 %174, i64* %RBP, align 8
  store i64 %6, i64* %R8, align 8, !mcsema_real_eip !36
  store i64 %7, i64* %R9, align 8, !mcsema_real_eip !36
  store i64 %8, i64* %R10, align 8, !mcsema_real_eip !36
  store i64 %9, i64* %R11, align 8, !mcsema_real_eip !36
  store i64 %10, i64* %R12, align 8, !mcsema_real_eip !36
  store i64 %11, i64* %R13, align 8, !mcsema_real_eip !36
  store i64 %12, i64* %R14, align 8, !mcsema_real_eip !36
  store i64 %13, i64* %R15, align 8, !mcsema_real_eip !36
  store i64 %14, i64* %RIP, align 8, !mcsema_real_eip !36
  store i1 %172, i1* %CF, align 1, !mcsema_real_eip !36
  store i1 %181, i1* %PF, align 1, !mcsema_real_eip !36
  store i1 %183, i1* %AF, align 1, !mcsema_real_eip !36
  store i1 %171, i1* %ZF, align 1, !mcsema_real_eip !36
  store i1 %177, i1* %SF, align 1, !mcsema_real_eip !36
  store i1 %176, i1* %OF, align 1, !mcsema_real_eip !36
  store i1 %15, i1* %DF, align 1, !mcsema_real_eip !36
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* nonnull %18, i32 128, i32 8, i1 false), !mcsema_real_eip !36
  store i1 %19, i1* %FPU_B, align 1, !mcsema_real_eip !36
  store i1 %20, i1* %FPU_C3, align 1, !mcsema_real_eip !36
  store i3 %21, i3* %FPU_TOP, align 1, !mcsema_real_eip !36
  store i1 %22, i1* %FPU_C2, align 1, !mcsema_real_eip !36
  store i1 %23, i1* %FPU_C1, align 1, !mcsema_real_eip !36
  store i1 %24, i1* %FPU_C0, align 1, !mcsema_real_eip !36
  store i1 %25, i1* %FPU_ES, align 1, !mcsema_real_eip !36
  store i1 %26, i1* %FPU_SF, align 1, !mcsema_real_eip !36
  store i1 %27, i1* %FPU_PE, align 1, !mcsema_real_eip !36
  store i1 %28, i1* %FPU_UE, align 1, !mcsema_real_eip !36
  store i1 %29, i1* %FPU_OE, align 1, !mcsema_real_eip !36
  store i1 %30, i1* %FPU_ZE, align 1, !mcsema_real_eip !36
  store i1 %31, i1* %FPU_DE, align 1, !mcsema_real_eip !36
  store i1 %32, i1* %FPU_IE, align 1, !mcsema_real_eip !36
  store i1 %33, i1* %FPU_X, align 1, !mcsema_real_eip !36
  store i2 %34, i2* %FPU_RC, align 1, !mcsema_real_eip !36
  store i2 %35, i2* %FPU_PC, align 1, !mcsema_real_eip !36
  store i1 %36, i1* %FPU_PM, align 1, !mcsema_real_eip !36
  store i1 %37, i1* %FPU_UM, align 1, !mcsema_real_eip !36
  store i1 %38, i1* %FPU_OM, align 1, !mcsema_real_eip !36
  store i1 %39, i1* %FPU_ZM, align 1, !mcsema_real_eip !36
  store i1 %40, i1* %FPU_DM, align 1, !mcsema_real_eip !36
  store i1 %41, i1* %FPU_IM, align 1, !mcsema_real_eip !36
  %_ptr_to_int_693 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_695 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_696 = sub i64 %_ptr_to_int_693, %1
  %_pot_address_in_parent_stack_697 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_696
  %_cond1_698 = icmp ugt i8* %_ptr_bt_695, %_local_stack_end_ptr_
  %_cond2_1_699 = icmp ugt i8* %_ptr_bt_695, %_parent_stack_end_ptr_
  %_cond2_2_700 = icmp ult i8* %_ptr_bt_695, %_parent_stack_start_ptr_
  %_cond2_701 = or i1 %_cond2_1_699, %_cond2_2_700
  %_cond4_702 = icmp ule i8* %_pot_address_in_parent_stack_697, %_parent_stack_end_ptr_
  %_cond1_n_cond2_703 = and i1 %_cond1_698, %_cond2_701
  %_cond1_n_cond2_cond3_704 = and i1 %_cond1_n_cond2_703, %_cond4_702
  %_address_in_parent_stack_bt_706 = bitcast i8* %_pot_address_in_parent_stack_697 to i64*
  %189 = select i1 %_cond1_n_cond2_cond3_704, i64* %_address_in_parent_stack_bt_706, i64* %FPU_TAG_val
  %_new_load_707 = load i64, i64* %189, align 8
  store i64 %_new_load_707, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !36
  store i64 %46, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !36
  store i16 %47, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !36
  store i64 %48, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !36
  store i128 %49, i128* %XMM0, align 1, !mcsema_real_eip !36
  store i128 %50, i128* %XMM1, align 1, !mcsema_real_eip !36
  store i128 %51, i128* %XMM2, align 1, !mcsema_real_eip !36
  store i128 %52, i128* %XMM3, align 1, !mcsema_real_eip !36
  store i128 %53, i128* %XMM4, align 1, !mcsema_real_eip !36
  store i128 %54, i128* %XMM5, align 1, !mcsema_real_eip !36
  store i128 %55, i128* %XMM6, align 1, !mcsema_real_eip !36
  store i128 %56, i128* %XMM7, align 1, !mcsema_real_eip !36
  store i128 %57, i128* %XMM8, align 1, !mcsema_real_eip !36
  store i128 %58, i128* %XMM9, align 1, !mcsema_real_eip !36
  store i128 %59, i128* %XMM10, align 1, !mcsema_real_eip !36
  store i128 %60, i128* %XMM11, align 1, !mcsema_real_eip !36
  store i128 %61, i128* %XMM12, align 1, !mcsema_real_eip !36
  store i128 %62, i128* %XMM13, align 1, !mcsema_real_eip !36
  store i128 %63, i128* %XMM14, align 1, !mcsema_real_eip !36
  store i128 %64, i128* %XMM15, align 1, !mcsema_real_eip !36
  store i64 %65, i64* %STACK_BASE, align 1, !mcsema_real_eip !36
  store i64 %66, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !36
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_164.5(%struct.regs*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #2 {
entry:
  %_RSP_ptr_.sroa.0 = alloca i64, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_269 = alloca [84 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [84 x i8], [84 x i8]* %_local_stack_start_ptr_269, i64 0, i64 84
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_.sroa.0, align 8
  %2 = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  %FPU_TAG_val = alloca i64, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !57
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !57
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !57
  %3 = load i64, i64* %RBX, align 8, !mcsema_real_eip !57
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !57
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !57
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !57
  %4 = load i64, i64* %RSI, align 8, !mcsema_real_eip !57
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !57
  %5 = load i64, i64* %RDI, align 8, !mcsema_real_eip !57
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !57
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !57
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !57
  %6 = load i64, i64* %R8, align 8, !mcsema_real_eip !57
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !57
  %7 = load i64, i64* %R9, align 8, !mcsema_real_eip !57
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !57
  %8 = load i64, i64* %R10, align 8, !mcsema_real_eip !57
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !57
  %9 = load i64, i64* %R11, align 8, !mcsema_real_eip !57
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !57
  %10 = load i64, i64* %R12, align 8, !mcsema_real_eip !57
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !57
  %11 = load i64, i64* %R13, align 8, !mcsema_real_eip !57
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !57
  %12 = load i64, i64* %R14, align 8, !mcsema_real_eip !57
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !57
  %13 = load i64, i64* %R15, align 8, !mcsema_real_eip !57
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !57
  %14 = load i64, i64* %RIP, align 8, !mcsema_real_eip !57
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !57
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !57
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !57
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !57
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !57
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !57
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !57
  %15 = load i1, i1* %DF, align 1, !mcsema_real_eip !57
  %16 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !57
  %17 = bitcast x86_fp80* %16 to i8*, !mcsema_real_eip !57
  %18 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !57
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %18, i8* %17, i32 128, i32 4, i1 false), !mcsema_real_eip !57
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !57
  %19 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !57
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !57
  %20 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !57
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !57
  %21 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !57
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !57
  %22 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !57
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !57
  %23 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !57
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !57
  %24 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !57
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !57
  %25 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !57
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !57
  %26 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !57
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !57
  %27 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !57
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !57
  %28 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !57
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !57
  %29 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !57
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !57
  %30 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !57
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !57
  %31 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !57
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !57
  %32 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !57
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !57
  %33 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !57
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !57
  %34 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !57
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !57
  %35 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !57
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !57
  %36 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !57
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !57
  %37 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !57
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !57
  %38 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !57
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !57
  %39 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !57
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !57
  %40 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !57
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !57
  %41 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !57
  %42 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !57
  %43 = bitcast i8* %42 to i64*
  %_ptr_to_int_ = ptrtoint i8* %42 to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %1
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %42, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %42, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %42, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_2_, %_cond2_1_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond2_, %_cond1_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  %44 = select i1 %_cond1_n_cond2_cond3_, i64* %_address_in_parent_stack_bt_, i64* %43
  %_new_load_ = load i64, i64* %44, align 8
  store i64 %_new_load_, i64* %FPU_TAG_val, align 8
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !57
  %45 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !57
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !57
  %46 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !57
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !57
  %47 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !57
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !57
  %48 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !57
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !57
  %49 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !57
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !57
  %50 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !57
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !57
  %51 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !57
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !57
  %52 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !57
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !57
  %53 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !57
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !57
  %54 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !57
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !57
  %55 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !57
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !57
  %56 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !57
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !57
  %57 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !57
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !57
  %58 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !57
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !57
  %59 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !57
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !57
  %60 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !57
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !57
  %61 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !57
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !57
  %62 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !57
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !57
  %63 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !57
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !57
  %64 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !57
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !57
  %65 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !57
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !57
  %66 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !57
  %67 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_303 = load i8*, i8** %67, align 8
  %_new_gep_ = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_303, i64 -24
  %68 = bitcast i8* %_new_gep_ to i32*
  %_ptr_to_int_146 = ptrtoint i8* %_new_gep_ to i64
  %_offset_above_rbp_149 = sub i64 %_ptr_to_int_146, %1
  %_pot_address_in_parent_stack_150 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_149
  %_cond1_151 = icmp ugt i8* %_new_gep_, %_local_stack_end_ptr_
  %_cond2_1_152 = icmp ugt i8* %_new_gep_, %_parent_stack_end_ptr_
  %_cond2_2_153 = icmp ult i8* %_new_gep_, %_parent_stack_start_ptr_
  %_cond2_154 = or i1 %_cond2_1_152, %_cond2_2_153
  %_cond4_155 = icmp ule i8* %_pot_address_in_parent_stack_150, %_parent_stack_end_ptr_
  %_cond1_n_cond2_156 = and i1 %_cond1_151, %_cond2_154
  %_cond1_n_cond2_cond3_157 = and i1 %_cond1_n_cond2_156, %_cond4_155
  %_address_in_parent_stack_bt_159 = bitcast i8* %_pot_address_in_parent_stack_150 to i32*
  %69 = select i1 %_cond1_n_cond2_cond3_157, i32* %_address_in_parent_stack_bt_159, i32* %68
  %_new_load_160 = load i32, i32* %69, align 4
  %70 = add i32 %_new_load_160, 1
  store i32 %70, i32* %68, align 4, !mcsema_real_eip !58
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4304 = load i8*, i8** %67, align 8
  %_new_gep_5 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4304, i64 -24
  %_ptr_to_int_161 = ptrtoint i8* %_new_gep_5 to i64
  %_offset_above_rbp_164 = sub i64 %_ptr_to_int_161, %1
  %_pot_address_in_parent_stack_165 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_164
  %_cond1_166 = icmp ugt i8* %_new_gep_5, %_local_stack_end_ptr_
  %_cond2_1_167 = icmp ugt i8* %_new_gep_5, %_parent_stack_end_ptr_
  %_cond2_2_168 = icmp ult i8* %_new_gep_5, %_parent_stack_start_ptr_
  %_cond2_169 = or i1 %_cond2_1_167, %_cond2_2_168
  %_cond4_170 = icmp ule i8* %_pot_address_in_parent_stack_165, %_parent_stack_end_ptr_
  %_cond1_n_cond2_171 = and i1 %_cond1_166, %_cond2_169
  %_cond1_n_cond2_cond3_172 = and i1 %_cond1_n_cond2_171, %_cond4_170
  %.v = select i1 %_cond1_n_cond2_cond3_172, i8* %_pot_address_in_parent_stack_165, i8* %_new_gep_5
  %71 = bitcast i8* %.v to i32*
  %_new_load_175 = load i32, i32* %71, align 4
  %72 = sext i32 %_new_load_175 to i64, !mcsema_real_eip !39
  %73 = mul nsw i64 %72, 11, !mcsema_real_eip !40
  %74 = add i64 %73, ptrtoint (%1* @data_0x359 to i64)
  %_new_gep_8 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4304, i64 -20
  %_ptr_to_int_176 = ptrtoint i8* %_new_gep_8 to i64
  %_offset_above_rbp_179 = sub i64 %_ptr_to_int_176, %1
  %_pot_address_in_parent_stack_180 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_179
  %_cond1_181 = icmp ugt i8* %_new_gep_8, %_local_stack_end_ptr_
  %_cond2_1_182 = icmp ugt i8* %_new_gep_8, %_parent_stack_end_ptr_
  %_cond2_2_183 = icmp ult i8* %_new_gep_8, %_parent_stack_start_ptr_
  %_cond2_184 = or i1 %_cond2_1_182, %_cond2_2_183
  %_cond4_185 = icmp ule i8* %_pot_address_in_parent_stack_180, %_parent_stack_end_ptr_
  %_cond1_n_cond2_186 = and i1 %_cond1_181, %_cond2_184
  %_cond1_n_cond2_cond3_187 = and i1 %_cond1_n_cond2_186, %_cond4_185
  %.v270 = select i1 %_cond1_n_cond2_cond3_187, i8* %_pot_address_in_parent_stack_180, i8* %_new_gep_8
  %75 = bitcast i8* %.v270 to i32*
  %_new_load_190 = load i32, i32* %75, align 4
  %76 = sext i32 %_new_load_190 to i64, !mcsema_real_eip !41
  %77 = add i64 %74, %76, !mcsema_real_eip !42
  %78 = inttoptr i64 %77 to i8*
  %_offset_above_rbp_193 = sub i64 %77, %1
  %_pot_address_in_parent_stack_194 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_193
  %_cond1_195 = icmp ugt i8* %78, %_local_stack_end_ptr_
  %_cond2_1_196 = icmp ugt i8* %78, %_parent_stack_end_ptr_
  %_cond2_2_197 = icmp ult i8* %78, %_parent_stack_start_ptr_
  %_cond2_198 = or i1 %_cond2_1_196, %_cond2_2_197
  %_cond4_199 = icmp ule i8* %_pot_address_in_parent_stack_194, %_parent_stack_end_ptr_
  %_cond1_n_cond2_200 = and i1 %_cond1_195, %_cond2_198
  %_cond1_n_cond2_cond3_201 = and i1 %_cond4_199, %_cond1_n_cond2_200
  %_address_in_parent_stack_202. = select i1 %_cond1_n_cond2_cond3_201, i8* %_pot_address_in_parent_stack_194, i8* %78
  %_new_load_203 = load i8, i8* %_address_in_parent_stack_202., align 1
  %79 = sext i8 %_new_load_203 to i64
  %80 = and i64 %79, 4294967295
  switch i8 %_new_load_203, label %block_0x1f2 [
    i8 35, label %block_0x298
    i8 32, label %block_0x242
  ]

block_0x298:                                      ; preds = %entry, %block_0x11e, %block_0x24e
  %_RBP_ptr_.0._load_rbp_ptr_130.sink = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_77315, %block_0x24e ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_130313, %block_0x11e ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4304, %entry ]
  %RDX_val.0 = phi i64 [ %80, %block_0x24e ], [ %123, %block_0x11e ], [ %80, %entry ]
  %RCX_val.0 = phi i64 [ %76, %block_0x24e ], [ %168, %block_0x11e ], [ %76, %entry ]
  %.sink = phi i32 [ 2, %block_0x24e ], [ 1, %block_0x11e ], [ 0, %entry ]
  %_new_gep_131 = getelementptr i8, i8* %_RBP_ptr_.0._load_rbp_ptr_130.sink, i64 -4
  %81 = bitcast i8* %_new_gep_131 to i32*
  store i32 %.sink, i32* %81, align 4
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_19314 = load i8*, i8** %67, align 8
  %_new_gep_20 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_19314, i64 -4
  %_ptr_to_int_247 = ptrtoint i8* %_new_gep_20 to i64
  %_offset_above_rbp_250 = sub i64 %_ptr_to_int_247, %1
  %_pot_address_in_parent_stack_251 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_250
  %_cond1_252 = icmp ugt i8* %_new_gep_20, %_local_stack_end_ptr_
  %_cond2_1_253 = icmp ugt i8* %_new_gep_20, %_parent_stack_end_ptr_
  %_cond2_2_254 = icmp ult i8* %_new_gep_20, %_parent_stack_start_ptr_
  %_cond2_255 = or i1 %_cond2_1_253, %_cond2_2_254
  %_cond4_256 = icmp ule i8* %_pot_address_in_parent_stack_251, %_parent_stack_end_ptr_
  %_cond1_n_cond2_257 = and i1 %_cond1_252, %_cond2_255
  %_cond1_n_cond2_cond3_258 = and i1 %_cond1_n_cond2_257, %_cond4_256
  %.v287 = select i1 %_cond1_n_cond2_cond3_258, i8* %_pot_address_in_parent_stack_251, i8* %_new_gep_20
  %82 = bitcast i8* %.v287 to i32*
  %_new_load_261 = load i32, i32* %82, align 4
  %83 = zext i32 %_new_load_261 to i64, !mcsema_real_eip !18
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_288 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %uadd348 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_288, i64 96)
  %84 = extractvalue { i64, i1 } %uadd348, 0
  %85 = xor i64 %84, %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_288, !mcsema_real_eip !19
  %86 = and i64 %85, 16, !mcsema_real_eip !19
  %87 = icmp ne i64 %86, 0, !mcsema_real_eip !19
  %88 = icmp slt i64 %84, 0
  %89 = icmp eq i64 %84, 0, !mcsema_real_eip !19
  %90 = xor i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_288, -9223372036854775808, !mcsema_real_eip !19
  %91 = and i64 %85, %90, !mcsema_real_eip !19
  %92 = icmp slt i64 %91, 0
  %93 = trunc i64 %84 to i8, !mcsema_real_eip !19
  %94 = tail call i8 @llvm.ctpop.i8(i8 %93), !mcsema_real_eip !19
  %95 = and i8 %94, 1
  %96 = icmp eq i8 %95, 0
  %97 = extractvalue { i64, i1 } %uadd348, 1
  %_new_int2ptr_ = inttoptr i64 %84 to i8*
  store volatile i64 %84, i64* %_RSP_ptr_.sroa.0, align 8
  %98 = inttoptr i64 %84 to i64*, !mcsema_real_eip !20
  %_offset_above_rbp_265 = sub i64 %84, %1
  %_pot_address_in_parent_stack_266 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_265
  %_cond1_267 = icmp ugt i8* %_new_int2ptr_, %_local_stack_end_ptr_
  %_cond2_1_268 = icmp ugt i8* %_new_int2ptr_, %_parent_stack_end_ptr_
  %_cond2_2_269 = icmp ult i8* %_new_int2ptr_, %_parent_stack_start_ptr_
  %_cond2_270 = or i1 %_cond2_1_268, %_cond2_2_269
  %_cond4_271 = icmp ule i8* %_pot_address_in_parent_stack_266, %_parent_stack_end_ptr_
  %_cond1_n_cond2_272 = and i1 %_cond1_267, %_cond2_270
  %_cond1_n_cond2_cond3_273 = and i1 %_cond4_271, %_cond1_n_cond2_272
  %_address_in_parent_stack_bt_275 = bitcast i8* %_pot_address_in_parent_stack_266 to i64*
  %99 = select i1 %_cond1_n_cond2_cond3_273, i64* %_address_in_parent_stack_bt_275, i64* %98
  %_new_load_276289290 = load i64, i64* %99, align 8
  store volatile i64 %_new_load_276289290, i64* %_RBP_ptr_.sroa.0, align 8
  %100 = add i64 %84, 16
  store volatile i64 %100, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %83, i64* %RAX, align 8, !mcsema_real_eip !21
  store i64 %3, i64* %RBX, align 8, !mcsema_real_eip !21
  store i64 %RCX_val.0, i64* %RCX, align 8, !mcsema_real_eip !21
  store i64 %RDX_val.0, i64* %RDX, align 8, !mcsema_real_eip !21
  store i64 %4, i64* %RSI, align 8, !mcsema_real_eip !21
  store i64 %5, i64* %RDI, align 8, !mcsema_real_eip !21
  store volatile i64 %100, i64* %RSP, align 8
  store volatile i64 %_new_load_276289290, i64* %RBP, align 8
  store i64 %6, i64* %R8, align 8, !mcsema_real_eip !21
  store i64 %7, i64* %R9, align 8, !mcsema_real_eip !21
  store i64 %8, i64* %R10, align 8, !mcsema_real_eip !21
  store i64 %9, i64* %R11, align 8, !mcsema_real_eip !21
  store i64 %10, i64* %R12, align 8, !mcsema_real_eip !21
  store i64 %11, i64* %R13, align 8, !mcsema_real_eip !21
  store i64 %12, i64* %R14, align 8, !mcsema_real_eip !21
  store i64 %13, i64* %R15, align 8, !mcsema_real_eip !21
  store i64 %14, i64* %RIP, align 8, !mcsema_real_eip !21
  store i1 %97, i1* %CF, align 1, !mcsema_real_eip !21
  store i1 %96, i1* %PF, align 1, !mcsema_real_eip !21
  store i1 %87, i1* %AF, align 1, !mcsema_real_eip !21
  store i1 %89, i1* %ZF, align 1, !mcsema_real_eip !21
  store i1 %88, i1* %SF, align 1, !mcsema_real_eip !21
  store i1 %92, i1* %OF, align 1, !mcsema_real_eip !21
  store i1 %15, i1* %DF, align 1, !mcsema_real_eip !21
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* nonnull %18, i32 128, i32 8, i1 false), !mcsema_real_eip !21
  store i1 %19, i1* %FPU_B, align 1, !mcsema_real_eip !21
  store i1 %20, i1* %FPU_C3, align 1, !mcsema_real_eip !21
  store i3 %21, i3* %FPU_TOP, align 1, !mcsema_real_eip !21
  store i1 %22, i1* %FPU_C2, align 1, !mcsema_real_eip !21
  store i1 %23, i1* %FPU_C1, align 1, !mcsema_real_eip !21
  store i1 %24, i1* %FPU_C0, align 1, !mcsema_real_eip !21
  store i1 %25, i1* %FPU_ES, align 1, !mcsema_real_eip !21
  store i1 %26, i1* %FPU_SF, align 1, !mcsema_real_eip !21
  store i1 %27, i1* %FPU_PE, align 1, !mcsema_real_eip !21
  store i1 %28, i1* %FPU_UE, align 1, !mcsema_real_eip !21
  store i1 %29, i1* %FPU_OE, align 1, !mcsema_real_eip !21
  store i1 %30, i1* %FPU_ZE, align 1, !mcsema_real_eip !21
  store i1 %31, i1* %FPU_DE, align 1, !mcsema_real_eip !21
  store i1 %32, i1* %FPU_IE, align 1, !mcsema_real_eip !21
  store i1 %33, i1* %FPU_X, align 1, !mcsema_real_eip !21
  store i2 %34, i2* %FPU_RC, align 1, !mcsema_real_eip !21
  store i2 %35, i2* %FPU_PC, align 1, !mcsema_real_eip !21
  store i1 %36, i1* %FPU_PM, align 1, !mcsema_real_eip !21
  store i1 %37, i1* %FPU_UM, align 1, !mcsema_real_eip !21
  store i1 %38, i1* %FPU_OM, align 1, !mcsema_real_eip !21
  store i1 %39, i1* %FPU_ZM, align 1, !mcsema_real_eip !21
  store i1 %40, i1* %FPU_DM, align 1, !mcsema_real_eip !21
  store i1 %41, i1* %FPU_IM, align 1, !mcsema_real_eip !21
  %_ptr_to_int_277 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_279 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_280 = sub i64 %_ptr_to_int_277, %1
  %_pot_address_in_parent_stack_281 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_280
  %_cond1_282 = icmp ugt i8* %_ptr_bt_279, %_local_stack_end_ptr_
  %_cond2_1_283 = icmp ugt i8* %_ptr_bt_279, %_parent_stack_end_ptr_
  %_cond2_2_284 = icmp ult i8* %_ptr_bt_279, %_parent_stack_start_ptr_
  %_cond2_285 = or i1 %_cond2_1_283, %_cond2_2_284
  %_cond4_286 = icmp ule i8* %_pot_address_in_parent_stack_281, %_parent_stack_end_ptr_
  %_cond1_n_cond2_287 = and i1 %_cond1_282, %_cond2_285
  %_cond1_n_cond2_cond3_288 = and i1 %_cond1_n_cond2_287, %_cond4_286
  %_address_in_parent_stack_bt_290 = bitcast i8* %_pot_address_in_parent_stack_281 to i64*
  %101 = select i1 %_cond1_n_cond2_cond3_288, i64* %_address_in_parent_stack_bt_290, i64* %FPU_TAG_val
  %_new_load_291 = load i64, i64* %101, align 8
  store i64 %_new_load_291, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !21
  store i64 %46, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !21
  store i16 %47, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !21
  store i64 %48, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !21
  store i128 %49, i128* %XMM0, align 1, !mcsema_real_eip !21
  store i128 %50, i128* %XMM1, align 1, !mcsema_real_eip !21
  store i128 %51, i128* %XMM2, align 1, !mcsema_real_eip !21
  store i128 %52, i128* %XMM3, align 1, !mcsema_real_eip !21
  store i128 %53, i128* %XMM4, align 1, !mcsema_real_eip !21
  store i128 %54, i128* %XMM5, align 1, !mcsema_real_eip !21
  store i128 %55, i128* %XMM6, align 1, !mcsema_real_eip !21
  store i128 %56, i128* %XMM7, align 1, !mcsema_real_eip !21
  store i128 %57, i128* %XMM8, align 1, !mcsema_real_eip !21
  store i128 %58, i128* %XMM9, align 1, !mcsema_real_eip !21
  store i128 %59, i128* %XMM10, align 1, !mcsema_real_eip !21
  store i128 %60, i128* %XMM11, align 1, !mcsema_real_eip !21
  store i128 %61, i128* %XMM12, align 1, !mcsema_real_eip !21
  store i128 %62, i128* %XMM13, align 1, !mcsema_real_eip !21
  store i128 %63, i128* %XMM14, align 1, !mcsema_real_eip !21
  store i128 %64, i128* %XMM15, align 1, !mcsema_real_eip !21
  store i64 %65, i64* %STACK_BASE, align 1, !mcsema_real_eip !21
  store i64 %66, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !21
  ret void, !mcsema_real_eip !21

block_0x242:                                      ; preds = %entry, %block_0x22c
  %_new_gep_29 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4304, i64 -28
  %_ptr_to_int_292 = ptrtoint i8* %_new_gep_29 to i64
  %_offset_above_rbp_295 = sub i64 %_ptr_to_int_292, %1
  %_pot_address_in_parent_stack_296 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_295
  %_cond1_297 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_298 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_299 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_300 = or i1 %_cond2_1_298, %_cond2_2_299
  %_cond4_301 = icmp ule i8* %_pot_address_in_parent_stack_296, %_parent_stack_end_ptr_
  %_cond1_n_cond2_302 = and i1 %_cond1_297, %_cond2_300
  %_cond1_n_cond2_cond3_303 = and i1 %_cond1_n_cond2_302, %_cond4_301
  %.v300 = select i1 %_cond1_n_cond2_cond3_303, i8* %_pot_address_in_parent_stack_296, i8* %_new_gep_29
  %102 = bitcast i8* %.v300 to i32*
  %_new_load_306 = load i32, i32* %102, align 4
  %103 = icmp eq i32 %_new_load_306, %_new_load_190
  br i1 %103, label %block_0x24e, label %block_0x266, !mcsema_real_eip !43

block_0x1f2:                                      ; preds = %entry
  %notlhs = icmp ne i32 %_new_load_175, 2
  %notrhs = icmp ne i8 %_new_load_203, 124
  %or.cond.not = or i1 %notlhs, %notrhs
  %104 = icmp slt i32 %_new_load_190, 1
  %or.cond302 = or i1 %104, %or.cond.not
  br i1 %or.cond302, label %block_0x236, label %block_0x22c, !mcsema_real_eip !44

block_0x236:                                      ; preds = %block_0x1f2, %block_0x22c
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4304, i64 -28
  %_ptr_to_int_337 = ptrtoint i8* %_new_gep_38 to i64
  %_offset_above_rbp_340 = sub i64 %_ptr_to_int_337, %1
  %_pot_address_in_parent_stack_341 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_340
  %_cond1_342 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_343 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_344 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_345 = or i1 %_cond2_1_343, %_cond2_2_344
  %_cond4_346 = icmp ule i8* %_pot_address_in_parent_stack_341, %_parent_stack_end_ptr_
  %_cond1_n_cond2_347 = and i1 %_cond1_342, %_cond2_345
  %_cond1_n_cond2_cond3_348 = and i1 %_cond1_n_cond2_347, %_cond4_346
  %.v271 = select i1 %_cond1_n_cond2_cond3_348, i8* %_pot_address_in_parent_stack_341, i8* %_new_gep_38
  %105 = bitcast i8* %.v271 to i32*
  %_new_load_351 = load i32, i32* %105, align 4
  %106 = bitcast i8* %_new_gep_8 to i32*
  store i32 %_new_load_351, i32* %106, align 4, !mcsema_real_eip !45
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_43317 = load i8*, i8** %67, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_43317, i64 -32
  %_ptr_to_int_352 = ptrtoint i8* %_new_gep_44 to i64
  %_offset_above_rbp_355 = sub i64 %_ptr_to_int_352, %1
  %_pot_address_in_parent_stack_356 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_355
  %_cond1_357 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_358 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_359 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_360 = or i1 %_cond2_1_358, %_cond2_2_359
  %_cond4_361 = icmp ule i8* %_pot_address_in_parent_stack_356, %_parent_stack_end_ptr_
  %_cond1_n_cond2_362 = and i1 %_cond1_357, %_cond2_360
  %_cond1_n_cond2_cond3_363 = and i1 %_cond1_n_cond2_362, %_cond4_361
  %.v272 = select i1 %_cond1_n_cond2_cond3_363, i8* %_pot_address_in_parent_stack_356, i8* %_new_gep_44
  %107 = bitcast i8* %.v272 to i32*
  %_new_load_366 = load i32, i32* %107, align 4
  %_new_gep_47 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_43317, i64 -24
  %108 = bitcast i8* %_new_gep_47 to i32*
  store i32 %_new_load_366, i32* %108, align 4, !mcsema_real_eip !46
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_49318 = load i8*, i8** %67, align 8
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_49318, i64 -28
  %_ptr_to_int_367 = ptrtoint i8* %_new_gep_50 to i64
  %_offset_above_rbp_370 = sub i64 %_ptr_to_int_367, %1
  %_pot_address_in_parent_stack_371 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_370
  %_cond1_372 = icmp ugt i8* %_new_gep_50, %_local_stack_end_ptr_
  %_cond2_1_373 = icmp ugt i8* %_new_gep_50, %_parent_stack_end_ptr_
  %_cond2_2_374 = icmp ult i8* %_new_gep_50, %_parent_stack_start_ptr_
  %_cond2_375 = or i1 %_cond2_1_373, %_cond2_2_374
  %_cond4_376 = icmp ule i8* %_pot_address_in_parent_stack_371, %_parent_stack_end_ptr_
  %_cond1_n_cond2_377 = and i1 %_cond1_372, %_cond2_375
  %_cond1_n_cond2_cond3_378 = and i1 %_cond1_n_cond2_377, %_cond4_376
  %.v273 = select i1 %_cond1_n_cond2_cond3_378, i8* %_pot_address_in_parent_stack_371, i8* %_new_gep_50
  %109 = bitcast i8* %.v273 to i32*
  %_new_load_381 = load i32, i32* %109, align 4
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_49318, i64 -20
  %_ptr_to_int_382 = ptrtoint i8* %_new_gep_53 to i64
  %_offset_above_rbp_385 = sub i64 %_ptr_to_int_382, %1
  %_pot_address_in_parent_stack_386 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_385
  %_cond1_387 = icmp ugt i8* %_new_gep_53, %_local_stack_end_ptr_
  %_cond2_1_388 = icmp ugt i8* %_new_gep_53, %_parent_stack_end_ptr_
  %_cond2_2_389 = icmp ult i8* %_new_gep_53, %_parent_stack_start_ptr_
  %_cond2_390 = or i1 %_cond2_1_388, %_cond2_2_389
  %_cond4_391 = icmp ule i8* %_pot_address_in_parent_stack_386, %_parent_stack_end_ptr_
  %_cond1_n_cond2_392 = and i1 %_cond1_387, %_cond2_390
  %_cond1_n_cond2_cond3_393 = and i1 %_cond1_n_cond2_392, %_cond4_391
  %.v274 = select i1 %_cond1_n_cond2_cond3_393, i8* %_pot_address_in_parent_stack_386, i8* %_new_gep_53
  %110 = bitcast i8* %.v274 to i32*
  %_new_load_396 = load i32, i32* %110, align 4
  %111 = icmp eq i32 %_new_load_381, %_new_load_396
  br i1 %111, label %block_0x24e, label %block_0x266, !mcsema_real_eip !43

block_0x266:                                      ; preds = %block_0x24e, %block_0x236, %block_0x242
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_61306 = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_77315, %block_0x24e ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_49318, %block_0x236 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4304, %block_0x242 ]
  %_new_gep_62 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_61306, i64 -24
  %_ptr_to_int_440 = ptrtoint i8* %_new_gep_62 to i64
  %_offset_above_rbp_443 = sub i64 %_ptr_to_int_440, %1
  %_pot_address_in_parent_stack_444 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_443
  %_cond1_445 = icmp ugt i8* %_new_gep_62, %_local_stack_end_ptr_
  %_cond2_1_446 = icmp ugt i8* %_new_gep_62, %_parent_stack_end_ptr_
  %_cond2_2_447 = icmp ult i8* %_new_gep_62, %_parent_stack_start_ptr_
  %_cond2_448 = or i1 %_cond2_1_446, %_cond2_2_447
  %_cond4_449 = icmp ule i8* %_pot_address_in_parent_stack_444, %_parent_stack_end_ptr_
  %_cond1_n_cond2_450 = and i1 %_cond1_445, %_cond2_448
  %_cond1_n_cond2_cond3_451 = and i1 %_cond1_n_cond2_450, %_cond4_449
  %.v275 = select i1 %_cond1_n_cond2_cond3_451, i8* %_pot_address_in_parent_stack_444, i8* %_new_gep_62
  %112 = bitcast i8* %.v275 to i32*
  %_new_load_454 = load i32, i32* %112, align 4
  %113 = sext i32 %_new_load_454 to i64, !mcsema_real_eip !47
  %114 = mul nsw i64 %113, 11, !mcsema_real_eip !48
  %115 = add i64 %114, ptrtoint (%1* @data_0x359 to i64)
  %_new_gep_65 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_61306, i64 -20
  %_ptr_to_int_455 = ptrtoint i8* %_new_gep_65 to i64
  %_offset_above_rbp_458 = sub i64 %_ptr_to_int_455, %1
  %_pot_address_in_parent_stack_459 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_458
  %_cond1_460 = icmp ugt i8* %_new_gep_65, %_local_stack_end_ptr_
  %_cond2_1_461 = icmp ugt i8* %_new_gep_65, %_parent_stack_end_ptr_
  %_cond2_2_462 = icmp ult i8* %_new_gep_65, %_parent_stack_start_ptr_
  %_cond2_463 = or i1 %_cond2_1_461, %_cond2_2_462
  %_cond4_464 = icmp ule i8* %_pot_address_in_parent_stack_459, %_parent_stack_end_ptr_
  %_cond1_n_cond2_465 = and i1 %_cond1_460, %_cond2_463
  %_cond1_n_cond2_cond3_466 = and i1 %_cond1_n_cond2_465, %_cond4_464
  %.v276 = select i1 %_cond1_n_cond2_cond3_466, i8* %_pot_address_in_parent_stack_459, i8* %_new_gep_65
  %116 = bitcast i8* %.v276 to i32*
  %_new_load_469 = load i32, i32* %116, align 4
  %117 = sext i32 %_new_load_469 to i64, !mcsema_real_eip !49
  %118 = add i64 %115, %117, !mcsema_real_eip !50
  %119 = inttoptr i64 %118 to i8*
  store i8 88, i8* %119, align 1, !mcsema_real_eip !50
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_67307 = load i8*, i8** %67, align 8
  %_new_gep_68 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_67307, i64 -36
  %120 = bitcast i8* %_new_gep_68 to i32*
  %_ptr_to_int_470 = ptrtoint i8* %_new_gep_68 to i64
  %_offset_above_rbp_473 = sub i64 %_ptr_to_int_470, %1
  %_pot_address_in_parent_stack_474 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_473
  %_cond1_475 = icmp ugt i8* %_new_gep_68, %_local_stack_end_ptr_
  %_cond2_1_476 = icmp ugt i8* %_new_gep_68, %_parent_stack_end_ptr_
  %_cond2_2_477 = icmp ult i8* %_new_gep_68, %_parent_stack_start_ptr_
  %_cond2_478 = or i1 %_cond2_1_476, %_cond2_2_477
  %_cond4_479 = icmp ule i8* %_pot_address_in_parent_stack_474, %_parent_stack_end_ptr_
  %_cond1_n_cond2_480 = and i1 %_cond1_475, %_cond2_478
  %_cond1_n_cond2_cond3_481 = and i1 %_cond1_n_cond2_480, %_cond4_479
  %_address_in_parent_stack_bt_483 = bitcast i8* %_pot_address_in_parent_stack_474 to i32*
  %121 = select i1 %_cond1_n_cond2_cond3_481, i32* %_address_in_parent_stack_bt_483, i32* %120
  %_new_load_484 = load i32, i32* %121, align 4
  %122 = add i32 %_new_load_484, 1
  %123 = zext i32 %122 to i64, !mcsema_real_eip !51
  store i32 %122, i32* %120, align 4, !mcsema_real_eip !52
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_73308 = load i8*, i8** %67, align 8
  %_new_gep_74 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_73308, i64 -36
  %_ptr_to_int_485 = ptrtoint i8* %_new_gep_74 to i64
  %_offset_above_rbp_488 = sub i64 %_ptr_to_int_485, %1
  %_pot_address_in_parent_stack_489 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_488
  %_cond1_490 = icmp ugt i8* %_new_gep_74, %_local_stack_end_ptr_
  %_cond2_1_491 = icmp ugt i8* %_new_gep_74, %_parent_stack_end_ptr_
  %_cond2_2_492 = icmp ult i8* %_new_gep_74, %_parent_stack_start_ptr_
  %_cond2_493 = or i1 %_cond2_1_491, %_cond2_2_492
  %_cond4_494 = icmp ule i8* %_pot_address_in_parent_stack_489, %_parent_stack_end_ptr_
  %_cond1_n_cond2_495 = and i1 %_cond1_490, %_cond2_493
  %_cond1_n_cond2_cond3_496 = and i1 %_cond1_n_cond2_495, %_cond4_494
  %.v277 = select i1 %_cond1_n_cond2_cond3_496, i8* %_pot_address_in_parent_stack_489, i8* %_new_gep_74
  %124 = bitcast i8* %.v277 to i32*
  %_new_load_499 = load i32, i32* %124, align 4
  %125 = add i32 %_new_load_499, -28
  %126 = icmp slt i32 %125, 0
  %127 = sub i32 27, %_new_load_499
  %128 = and i32 %127, %_new_load_499
  %129 = icmp slt i32 %128, 0
  %tmp = xor i1 %126, %129
  br i1 %tmp, label %block_0x11e, label %block_0x291, !mcsema_real_eip !16

block_0x24e:                                      ; preds = %block_0x236, %block_0x242
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_77315 = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_49318, %block_0x236 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4304, %block_0x242 ]
  %_new_gep_78 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_77315, i64 -32
  %_ptr_to_int_500 = ptrtoint i8* %_new_gep_78 to i64
  %_offset_above_rbp_503 = sub i64 %_ptr_to_int_500, %1
  %_pot_address_in_parent_stack_504 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_503
  %_cond1_505 = icmp ugt i8* %_new_gep_78, %_local_stack_end_ptr_
  %_cond2_1_506 = icmp ugt i8* %_new_gep_78, %_parent_stack_end_ptr_
  %_cond2_2_507 = icmp ult i8* %_new_gep_78, %_parent_stack_start_ptr_
  %_cond2_508 = or i1 %_cond2_1_506, %_cond2_2_507
  %_cond4_509 = icmp ule i8* %_pot_address_in_parent_stack_504, %_parent_stack_end_ptr_
  %_cond1_n_cond2_510 = and i1 %_cond1_505, %_cond2_508
  %_cond1_n_cond2_cond3_511 = and i1 %_cond1_n_cond2_510, %_cond4_509
  %.v298 = select i1 %_cond1_n_cond2_cond3_511, i8* %_pot_address_in_parent_stack_504, i8* %_new_gep_78
  %130 = bitcast i8* %.v298 to i32*
  %_new_load_514 = load i32, i32* %130, align 4
  %_new_gep_81 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_77315, i64 -24
  %_ptr_to_int_515 = ptrtoint i8* %_new_gep_81 to i64
  %_offset_above_rbp_518 = sub i64 %_ptr_to_int_515, %1
  %_pot_address_in_parent_stack_519 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_518
  %_cond1_520 = icmp ugt i8* %_new_gep_81, %_local_stack_end_ptr_
  %_cond2_1_521 = icmp ugt i8* %_new_gep_81, %_parent_stack_end_ptr_
  %_cond2_2_522 = icmp ult i8* %_new_gep_81, %_parent_stack_start_ptr_
  %_cond2_523 = or i1 %_cond2_1_521, %_cond2_2_522
  %_cond4_524 = icmp ule i8* %_pot_address_in_parent_stack_519, %_parent_stack_end_ptr_
  %_cond1_n_cond2_525 = and i1 %_cond1_520, %_cond2_523
  %_cond1_n_cond2_cond3_526 = and i1 %_cond1_n_cond2_525, %_cond4_524
  %.v299 = select i1 %_cond1_n_cond2_cond3_526, i8* %_pot_address_in_parent_stack_519, i8* %_new_gep_81
  %131 = bitcast i8* %.v299 to i32*
  %_new_load_529 = load i32, i32* %131, align 4
  %132 = icmp eq i32 %_new_load_514, %_new_load_529
  br i1 %132, label %block_0x298, label %block_0x266, !mcsema_real_eip !53

block_0x22c:                                      ; preds = %block_0x1f2
  %133 = add i32 %_new_load_190, -11
  %134 = icmp slt i32 %133, 0
  %135 = sub i32 10, %_new_load_190
  %136 = and i32 %135, %_new_load_190
  %137 = icmp slt i32 %136, 0
  %138 = xor i1 %134, %137
  br i1 %138, label %block_0x242, label %block_0x236, !mcsema_real_eip !54

block_0x291:                                      ; preds = %block_0x266
  %_new_gep_92 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_73308, i64 -4
  %139 = bitcast i8* %_new_gep_92 to i32*
  store i32 1, i32* %139, align 4, !mcsema_real_eip !17
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_94309 = load i8*, i8** %67, align 8
  %_new_gep_95 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_94309, i64 -4
  %_ptr_to_int_560 = ptrtoint i8* %_new_gep_95 to i64
  %_offset_above_rbp_563 = sub i64 %_ptr_to_int_560, %1
  %_pot_address_in_parent_stack_564 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_563
  %_cond1_565 = icmp ugt i8* %_new_gep_95, %_local_stack_end_ptr_
  %_cond2_1_566 = icmp ugt i8* %_new_gep_95, %_parent_stack_end_ptr_
  %_cond2_2_567 = icmp ult i8* %_new_gep_95, %_parent_stack_start_ptr_
  %_cond2_568 = or i1 %_cond2_1_566, %_cond2_2_567
  %_cond4_569 = icmp ule i8* %_pot_address_in_parent_stack_564, %_parent_stack_end_ptr_
  %_cond1_n_cond2_570 = and i1 %_cond1_565, %_cond2_568
  %_cond1_n_cond2_cond3_571 = and i1 %_cond1_n_cond2_570, %_cond4_569
  %.v278 = select i1 %_cond1_n_cond2_cond3_571, i8* %_pot_address_in_parent_stack_564, i8* %_new_gep_95
  %140 = bitcast i8* %.v278 to i32*
  %_new_load_574 = load i32, i32* %140, align 4
  %141 = zext i32 %_new_load_574 to i64, !mcsema_real_eip !18
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_97279 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %uadd357 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_97279, i64 96)
  %142 = extractvalue { i64, i1 } %uadd357, 0
  %143 = xor i64 %142, %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_97279, !mcsema_real_eip !19
  %144 = and i64 %143, 16, !mcsema_real_eip !19
  %145 = icmp ne i64 %144, 0, !mcsema_real_eip !19
  %146 = icmp slt i64 %142, 0
  %147 = icmp eq i64 %142, 0, !mcsema_real_eip !19
  %148 = xor i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_97279, -9223372036854775808, !mcsema_real_eip !19
  %149 = and i64 %143, %148, !mcsema_real_eip !19
  %150 = icmp slt i64 %149, 0
  %151 = trunc i64 %142 to i8, !mcsema_real_eip !19
  %152 = tail call i8 @llvm.ctpop.i8(i8 %151), !mcsema_real_eip !19
  %153 = and i8 %152, 1
  %154 = icmp eq i8 %153, 0
  %155 = extractvalue { i64, i1 } %uadd357, 1
  %_new_int2ptr_99 = inttoptr i64 %142 to i8*
  store volatile i64 %142, i64* %_RSP_ptr_.sroa.0, align 8
  %156 = inttoptr i64 %142 to i64*, !mcsema_real_eip !20
  %_offset_above_rbp_578 = sub i64 %142, %1
  %_pot_address_in_parent_stack_579 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_578
  %_cond1_580 = icmp ugt i8* %_new_int2ptr_99, %_local_stack_end_ptr_
  %_cond2_1_581 = icmp ugt i8* %_new_int2ptr_99, %_parent_stack_end_ptr_
  %_cond2_2_582 = icmp ult i8* %_new_int2ptr_99, %_parent_stack_start_ptr_
  %_cond2_583 = or i1 %_cond2_1_581, %_cond2_2_582
  %_cond4_584 = icmp ule i8* %_pot_address_in_parent_stack_579, %_parent_stack_end_ptr_
  %_cond1_n_cond2_585 = and i1 %_cond1_580, %_cond2_583
  %_cond1_n_cond2_cond3_586 = and i1 %_cond4_584, %_cond1_n_cond2_585
  %_address_in_parent_stack_bt_588 = bitcast i8* %_pot_address_in_parent_stack_579 to i64*
  %157 = select i1 %_cond1_n_cond2_cond3_586, i64* %_address_in_parent_stack_bt_588, i64* %156
  %_new_load_589280281 = load i64, i64* %157, align 8
  store volatile i64 %_new_load_589280281, i64* %_RBP_ptr_.sroa.0, align 8
  %158 = add i64 %142, 16
  store volatile i64 %158, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %141, i64* %RAX, align 8, !mcsema_real_eip !21
  store i64 %3, i64* %RBX, align 8, !mcsema_real_eip !21
  store i64 %117, i64* %RCX, align 8, !mcsema_real_eip !21
  store i64 %123, i64* %RDX, align 8, !mcsema_real_eip !21
  store i64 %4, i64* %RSI, align 8, !mcsema_real_eip !21
  store i64 %5, i64* %RDI, align 8, !mcsema_real_eip !21
  store volatile i64 %158, i64* %RSP, align 8
  store volatile i64 %_new_load_589280281, i64* %RBP, align 8
  store i64 %6, i64* %R8, align 8, !mcsema_real_eip !21
  store i64 %7, i64* %R9, align 8, !mcsema_real_eip !21
  store i64 %8, i64* %R10, align 8, !mcsema_real_eip !21
  store i64 %9, i64* %R11, align 8, !mcsema_real_eip !21
  store i64 %10, i64* %R12, align 8, !mcsema_real_eip !21
  store i64 %11, i64* %R13, align 8, !mcsema_real_eip !21
  store i64 %12, i64* %R14, align 8, !mcsema_real_eip !21
  store i64 %13, i64* %R15, align 8, !mcsema_real_eip !21
  store i64 %14, i64* %RIP, align 8, !mcsema_real_eip !21
  store i1 %155, i1* %CF, align 1, !mcsema_real_eip !21
  store i1 %154, i1* %PF, align 1, !mcsema_real_eip !21
  store i1 %145, i1* %AF, align 1, !mcsema_real_eip !21
  store i1 %147, i1* %ZF, align 1, !mcsema_real_eip !21
  store i1 %146, i1* %SF, align 1, !mcsema_real_eip !21
  store i1 %150, i1* %OF, align 1, !mcsema_real_eip !21
  store i1 %15, i1* %DF, align 1, !mcsema_real_eip !21
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* nonnull %18, i32 128, i32 8, i1 false), !mcsema_real_eip !21
  store i1 %19, i1* %FPU_B, align 1, !mcsema_real_eip !21
  store i1 %20, i1* %FPU_C3, align 1, !mcsema_real_eip !21
  store i3 %21, i3* %FPU_TOP, align 1, !mcsema_real_eip !21
  store i1 %22, i1* %FPU_C2, align 1, !mcsema_real_eip !21
  store i1 %23, i1* %FPU_C1, align 1, !mcsema_real_eip !21
  store i1 %24, i1* %FPU_C0, align 1, !mcsema_real_eip !21
  store i1 %25, i1* %FPU_ES, align 1, !mcsema_real_eip !21
  store i1 %26, i1* %FPU_SF, align 1, !mcsema_real_eip !21
  store i1 %27, i1* %FPU_PE, align 1, !mcsema_real_eip !21
  store i1 %28, i1* %FPU_UE, align 1, !mcsema_real_eip !21
  store i1 %29, i1* %FPU_OE, align 1, !mcsema_real_eip !21
  store i1 %30, i1* %FPU_ZE, align 1, !mcsema_real_eip !21
  store i1 %31, i1* %FPU_DE, align 1, !mcsema_real_eip !21
  store i1 %32, i1* %FPU_IE, align 1, !mcsema_real_eip !21
  store i1 %33, i1* %FPU_X, align 1, !mcsema_real_eip !21
  store i2 %34, i2* %FPU_RC, align 1, !mcsema_real_eip !21
  store i2 %35, i2* %FPU_PC, align 1, !mcsema_real_eip !21
  store i1 %36, i1* %FPU_PM, align 1, !mcsema_real_eip !21
  store i1 %37, i1* %FPU_UM, align 1, !mcsema_real_eip !21
  store i1 %38, i1* %FPU_OM, align 1, !mcsema_real_eip !21
  store i1 %39, i1* %FPU_ZM, align 1, !mcsema_real_eip !21
  store i1 %40, i1* %FPU_DM, align 1, !mcsema_real_eip !21
  store i1 %41, i1* %FPU_IM, align 1, !mcsema_real_eip !21
  %_ptr_to_int_590 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_592 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_593 = sub i64 %_ptr_to_int_590, %1
  %_pot_address_in_parent_stack_594 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_593
  %_cond1_595 = icmp ugt i8* %_ptr_bt_592, %_local_stack_end_ptr_
  %_cond2_1_596 = icmp ugt i8* %_ptr_bt_592, %_parent_stack_end_ptr_
  %_cond2_2_597 = icmp ult i8* %_ptr_bt_592, %_parent_stack_start_ptr_
  %_cond2_598 = or i1 %_cond2_1_596, %_cond2_2_597
  %_cond4_599 = icmp ule i8* %_pot_address_in_parent_stack_594, %_parent_stack_end_ptr_
  %_cond1_n_cond2_600 = and i1 %_cond1_595, %_cond2_598
  %_cond1_n_cond2_cond3_601 = and i1 %_cond1_n_cond2_600, %_cond4_599
  %_address_in_parent_stack_bt_603 = bitcast i8* %_pot_address_in_parent_stack_594 to i64*
  %159 = select i1 %_cond1_n_cond2_cond3_601, i64* %_address_in_parent_stack_bt_603, i64* %FPU_TAG_val
  %_new_load_604 = load i64, i64* %159, align 8
  store i64 %_new_load_604, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !21
  store i64 %46, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !21
  store i16 %47, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !21
  store i64 %48, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !21
  store i128 %49, i128* %XMM0, align 1, !mcsema_real_eip !21
  store i128 %50, i128* %XMM1, align 1, !mcsema_real_eip !21
  store i128 %51, i128* %XMM2, align 1, !mcsema_real_eip !21
  store i128 %52, i128* %XMM3, align 1, !mcsema_real_eip !21
  store i128 %53, i128* %XMM4, align 1, !mcsema_real_eip !21
  store i128 %54, i128* %XMM5, align 1, !mcsema_real_eip !21
  store i128 %55, i128* %XMM6, align 1, !mcsema_real_eip !21
  store i128 %56, i128* %XMM7, align 1, !mcsema_real_eip !21
  store i128 %57, i128* %XMM8, align 1, !mcsema_real_eip !21
  store i128 %58, i128* %XMM9, align 1, !mcsema_real_eip !21
  store i128 %59, i128* %XMM10, align 1, !mcsema_real_eip !21
  store i128 %60, i128* %XMM11, align 1, !mcsema_real_eip !21
  store i128 %61, i128* %XMM12, align 1, !mcsema_real_eip !21
  store i128 %62, i128* %XMM13, align 1, !mcsema_real_eip !21
  store i128 %63, i128* %XMM14, align 1, !mcsema_real_eip !21
  store i128 %64, i128* %XMM15, align 1, !mcsema_real_eip !21
  store i64 %65, i64* %STACK_BASE, align 1, !mcsema_real_eip !21
  store i64 %66, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !21
  ret void, !mcsema_real_eip !21

block_0x11e:                                      ; preds = %block_0x266
  %_new_gep_106 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_73308, i64 -20
  %_ptr_to_int_605 = ptrtoint i8* %_new_gep_106 to i64
  %_offset_above_rbp_608 = sub i64 %_ptr_to_int_605, %1
  %_pot_address_in_parent_stack_609 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_608
  %_cond1_610 = icmp ugt i8* %_new_gep_106, %_local_stack_end_ptr_
  %_cond2_1_611 = icmp ugt i8* %_new_gep_106, %_parent_stack_end_ptr_
  %_cond2_2_612 = icmp ult i8* %_new_gep_106, %_parent_stack_start_ptr_
  %_cond2_613 = or i1 %_cond2_1_611, %_cond2_2_612
  %_cond4_614 = icmp ule i8* %_pot_address_in_parent_stack_609, %_parent_stack_end_ptr_
  %_cond1_n_cond2_615 = and i1 %_cond1_610, %_cond2_613
  %_cond1_n_cond2_cond3_616 = and i1 %_cond1_n_cond2_615, %_cond4_614
  %.v284 = select i1 %_cond1_n_cond2_cond3_616, i8* %_pot_address_in_parent_stack_609, i8* %_new_gep_106
  %160 = bitcast i8* %.v284 to i32*
  %_new_load_619 = load i32, i32* %160, align 4
  %_new_gep_109 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_73308, i64 -28
  %161 = bitcast i8* %_new_gep_109 to i32*
  store i32 %_new_load_619, i32* %161, align 4, !mcsema_real_eip !23
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_111310 = load i8*, i8** %67, align 8
  %_new_gep_112 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_111310, i64 -24
  %_ptr_to_int_620 = ptrtoint i8* %_new_gep_112 to i64
  %_offset_above_rbp_623 = sub i64 %_ptr_to_int_620, %1
  %_pot_address_in_parent_stack_624 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_623
  %_cond1_625 = icmp ugt i8* %_new_gep_112, %_local_stack_end_ptr_
  %_cond2_1_626 = icmp ugt i8* %_new_gep_112, %_parent_stack_end_ptr_
  %_cond2_2_627 = icmp ult i8* %_new_gep_112, %_parent_stack_start_ptr_
  %_cond2_628 = or i1 %_cond2_1_626, %_cond2_2_627
  %_cond4_629 = icmp ule i8* %_pot_address_in_parent_stack_624, %_parent_stack_end_ptr_
  %_cond1_n_cond2_630 = and i1 %_cond1_625, %_cond2_628
  %_cond1_n_cond2_cond3_631 = and i1 %_cond1_n_cond2_630, %_cond4_629
  %.v285 = select i1 %_cond1_n_cond2_cond3_631, i8* %_pot_address_in_parent_stack_624, i8* %_new_gep_112
  %162 = bitcast i8* %.v285 to i32*
  %_new_load_634 = load i32, i32* %162, align 4
  %_new_gep_115 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_111310, i64 -32
  %163 = bitcast i8* %_new_gep_115 to i32*
  store i32 %_new_load_634, i32* %163, align 4, !mcsema_real_eip !25
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_117311 = load i8*, i8** %67, align 8
  %_new_gep_118 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_117311, i64 -36
  %_ptr_to_int_635 = ptrtoint i8* %_new_gep_118 to i64
  %_offset_above_rbp_638 = sub i64 %_ptr_to_int_635, %1
  %_pot_address_in_parent_stack_639 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_638
  %_cond1_640 = icmp ugt i8* %_new_gep_118, %_local_stack_end_ptr_
  %_cond2_1_641 = icmp ugt i8* %_new_gep_118, %_parent_stack_end_ptr_
  %_cond2_2_642 = icmp ult i8* %_new_gep_118, %_parent_stack_start_ptr_
  %_cond2_643 = or i1 %_cond2_1_641, %_cond2_2_642
  %_cond4_644 = icmp ule i8* %_pot_address_in_parent_stack_639, %_parent_stack_end_ptr_
  %_cond1_n_cond2_645 = and i1 %_cond1_640, %_cond2_643
  %_cond1_n_cond2_cond3_646 = and i1 %_cond1_n_cond2_645, %_cond4_644
  %.v286 = select i1 %_cond1_n_cond2_cond3_646, i8* %_pot_address_in_parent_stack_639, i8* %_new_gep_118
  %164 = bitcast i8* %.v286 to i32*
  %_new_load_649 = load i32, i32* %164, align 4
  %165 = sext i32 %_new_load_649 to i64, !mcsema_real_eip !26
  %_new_gep_121 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_117311, i64 -64
  %_new_gep_122 = getelementptr i8, i8* %_new_gep_121, i64 %165
  %_ptr_to_int_650 = ptrtoint i8* %_new_gep_122 to i64
  %_offset_above_rbp_652 = sub i64 %_ptr_to_int_650, %1
  %_pot_address_in_parent_stack_653 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_652
  %_cond1_654 = icmp ugt i8* %_new_gep_122, %_local_stack_end_ptr_
  %_cond2_1_655 = icmp ugt i8* %_new_gep_122, %_parent_stack_end_ptr_
  %_cond2_2_656 = icmp ult i8* %_new_gep_122, %_parent_stack_start_ptr_
  %_cond2_657 = or i1 %_cond2_1_655, %_cond2_2_656
  %_cond4_658 = icmp ule i8* %_pot_address_in_parent_stack_653, %_parent_stack_end_ptr_
  %_cond1_n_cond2_659 = and i1 %_cond1_654, %_cond2_657
  %_cond1_n_cond2_cond3_660 = and i1 %_cond1_n_cond2_659, %_cond4_658
  %_address_in_parent_stack_661. = select i1 %_cond1_n_cond2_cond3_660, i8* %_pot_address_in_parent_stack_653, i8* %_new_gep_122
  %_new_load_662 = load i8, i8* %_address_in_parent_stack_661., align 1
  %166 = sext i8 %_new_load_662 to i32, !mcsema_real_eip !27
  %167 = add nsw i32 %166, -97
  %168 = zext i32 %167 to i64, !mcsema_real_eip !28
  %169 = add nsw i32 %166, -119
  %170 = xor i32 %169, %167, !mcsema_real_eip !29
  %171 = icmp eq i32 %169, 0, !mcsema_real_eip !29
  %172 = icmp ult i32 %167, 22, !mcsema_real_eip !29
  %_new_gep_125 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_117311, i64 -80
  %_allin_new_bt_126 = bitcast i8* %_new_gep_125 to i64*
  store i64 %168, i64* %_allin_new_bt_126, align 8, !mcsema_real_eip !30
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_127312 = load i8*, i8** %67, align 8
  %_new_gep_128 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_127312, i64 -84
  %173 = bitcast i8* %_new_gep_128 to i32*
  store i32 %169, i32* %173, align 4, !mcsema_real_eip !31
  %.demorgan = or i1 %172, %171
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_130313 = load i8*, i8** %67, align 8
  br i1 %.demorgan, label %block_0x148, label %block_0x298, !mcsema_real_eip !32

block_0x148:                                      ; preds = %block_0x11e
  %174 = ptrtoint i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_130313 to i64
  %175 = and i32 %170, %167, !mcsema_real_eip !29
  %176 = icmp slt i32 %175, 0
  %177 = icmp slt i8 %_new_load_662, 119
  %178 = trunc i32 %169 to i8, !mcsema_real_eip !29
  %179 = tail call i8 @llvm.ctpop.i8(i8 %178), !mcsema_real_eip !29
  %180 = and i8 %179, 1
  %181 = icmp eq i8 %180, 0
  %182 = and i32 %170, 16
  %183 = icmp eq i32 %182, 0
  %_new_gep_133 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_130313, i64 -80
  %_ptr_to_int_663 = ptrtoint i8* %_new_gep_133 to i64
  %_offset_above_rbp_666 = sub i64 %_ptr_to_int_663, %1
  %_pot_address_in_parent_stack_667 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_666
  %_cond1_668 = icmp ugt i8* %_new_gep_133, %_local_stack_end_ptr_
  %_cond2_1_669 = icmp ugt i8* %_new_gep_133, %_parent_stack_end_ptr_
  %_cond2_2_670 = icmp ult i8* %_new_gep_133, %_parent_stack_start_ptr_
  %_cond2_671 = or i1 %_cond2_1_669, %_cond2_2_670
  %_cond4_672 = icmp ule i8* %_pot_address_in_parent_stack_667, %_parent_stack_end_ptr_
  %_cond1_n_cond2_673 = and i1 %_cond1_668, %_cond2_671
  %_cond1_n_cond2_cond3_674 = and i1 %_cond1_n_cond2_673, %_cond4_672
  %.v293 = select i1 %_cond1_n_cond2_cond3_674, i8* %_pot_address_in_parent_stack_667, i8* %_new_gep_133
  %184 = bitcast i8* %.v293 to i64*
  %_new_load_677 = load i64, i64* %184, align 8
  %185 = shl i64 %_new_load_677, 3
  %186 = add i64 %185, ptrtoint (%0* @data_0x2a1 to i64), !mcsema_real_eip !35
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !35
  %_ptr_bt_680 = inttoptr i64 %186 to i8*
  %_offset_above_rbp_681 = sub i64 %186, %1
  %_pot_address_in_parent_stack_682 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_681
  %_cond1_683 = icmp ugt i8* %_ptr_bt_680, %_local_stack_end_ptr_
  %_cond2_1_684 = icmp ugt i8* %_ptr_bt_680, %_parent_stack_end_ptr_
  %_cond2_2_685 = icmp ult i8* %_ptr_bt_680, %_parent_stack_start_ptr_
  %_cond2_686 = or i1 %_cond2_1_684, %_cond2_2_685
  %_cond4_687 = icmp ule i8* %_pot_address_in_parent_stack_682, %_parent_stack_end_ptr_
  %_cond1_n_cond2_688 = and i1 %_cond1_683, %_cond2_686
  %_cond1_n_cond2_cond3_689 = and i1 %_cond4_687, %_cond1_n_cond2_688
  %_address_in_parent_stack_bt_691 = bitcast i8* %_pot_address_in_parent_stack_682 to i64*
  %188 = select i1 %_cond1_n_cond2_cond3_689, i64* %_address_in_parent_stack_bt_691, i64* %187
  %_new_load_692 = load i64, i64* %188, align 8
  store i64 %_new_load_677, i64* %RAX, align 8, !mcsema_real_eip !36
  store i64 %3, i64* %RBX, align 8, !mcsema_real_eip !36
  store i64 %_new_load_692, i64* %RCX, align 8, !mcsema_real_eip !36
  store i64 %123, i64* %RDX, align 8, !mcsema_real_eip !36
  store i64 %4, i64* %RSI, align 8, !mcsema_real_eip !36
  store i64 %5, i64* %RDI, align 8, !mcsema_real_eip !36
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_135294 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  store volatile i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_135294, i64* %RSP, align 8
  store volatile i64 %174, i64* %RBP, align 8
  store i64 %6, i64* %R8, align 8, !mcsema_real_eip !36
  store i64 %7, i64* %R9, align 8, !mcsema_real_eip !36
  store i64 %8, i64* %R10, align 8, !mcsema_real_eip !36
  store i64 %9, i64* %R11, align 8, !mcsema_real_eip !36
  store i64 %10, i64* %R12, align 8, !mcsema_real_eip !36
  store i64 %11, i64* %R13, align 8, !mcsema_real_eip !36
  store i64 %12, i64* %R14, align 8, !mcsema_real_eip !36
  store i64 %13, i64* %R15, align 8, !mcsema_real_eip !36
  store i64 %14, i64* %RIP, align 8, !mcsema_real_eip !36
  store i1 %172, i1* %CF, align 1, !mcsema_real_eip !36
  store i1 %181, i1* %PF, align 1, !mcsema_real_eip !36
  store i1 %183, i1* %AF, align 1, !mcsema_real_eip !36
  store i1 %171, i1* %ZF, align 1, !mcsema_real_eip !36
  store i1 %177, i1* %SF, align 1, !mcsema_real_eip !36
  store i1 %176, i1* %OF, align 1, !mcsema_real_eip !36
  store i1 %15, i1* %DF, align 1, !mcsema_real_eip !36
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* nonnull %18, i32 128, i32 8, i1 false), !mcsema_real_eip !36
  store i1 %19, i1* %FPU_B, align 1, !mcsema_real_eip !36
  store i1 %20, i1* %FPU_C3, align 1, !mcsema_real_eip !36
  store i3 %21, i3* %FPU_TOP, align 1, !mcsema_real_eip !36
  store i1 %22, i1* %FPU_C2, align 1, !mcsema_real_eip !36
  store i1 %23, i1* %FPU_C1, align 1, !mcsema_real_eip !36
  store i1 %24, i1* %FPU_C0, align 1, !mcsema_real_eip !36
  store i1 %25, i1* %FPU_ES, align 1, !mcsema_real_eip !36
  store i1 %26, i1* %FPU_SF, align 1, !mcsema_real_eip !36
  store i1 %27, i1* %FPU_PE, align 1, !mcsema_real_eip !36
  store i1 %28, i1* %FPU_UE, align 1, !mcsema_real_eip !36
  store i1 %29, i1* %FPU_OE, align 1, !mcsema_real_eip !36
  store i1 %30, i1* %FPU_ZE, align 1, !mcsema_real_eip !36
  store i1 %31, i1* %FPU_DE, align 1, !mcsema_real_eip !36
  store i1 %32, i1* %FPU_IE, align 1, !mcsema_real_eip !36
  store i1 %33, i1* %FPU_X, align 1, !mcsema_real_eip !36
  store i2 %34, i2* %FPU_RC, align 1, !mcsema_real_eip !36
  store i2 %35, i2* %FPU_PC, align 1, !mcsema_real_eip !36
  store i1 %36, i1* %FPU_PM, align 1, !mcsema_real_eip !36
  store i1 %37, i1* %FPU_UM, align 1, !mcsema_real_eip !36
  store i1 %38, i1* %FPU_OM, align 1, !mcsema_real_eip !36
  store i1 %39, i1* %FPU_ZM, align 1, !mcsema_real_eip !36
  store i1 %40, i1* %FPU_DM, align 1, !mcsema_real_eip !36
  store i1 %41, i1* %FPU_IM, align 1, !mcsema_real_eip !36
  %_ptr_to_int_693 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_695 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_696 = sub i64 %_ptr_to_int_693, %1
  %_pot_address_in_parent_stack_697 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_696
  %_cond1_698 = icmp ugt i8* %_ptr_bt_695, %_local_stack_end_ptr_
  %_cond2_1_699 = icmp ugt i8* %_ptr_bt_695, %_parent_stack_end_ptr_
  %_cond2_2_700 = icmp ult i8* %_ptr_bt_695, %_parent_stack_start_ptr_
  %_cond2_701 = or i1 %_cond2_1_699, %_cond2_2_700
  %_cond4_702 = icmp ule i8* %_pot_address_in_parent_stack_697, %_parent_stack_end_ptr_
  %_cond1_n_cond2_703 = and i1 %_cond1_698, %_cond2_701
  %_cond1_n_cond2_cond3_704 = and i1 %_cond1_n_cond2_703, %_cond4_702
  %_address_in_parent_stack_bt_706 = bitcast i8* %_pot_address_in_parent_stack_697 to i64*
  %189 = select i1 %_cond1_n_cond2_cond3_704, i64* %_address_in_parent_stack_bt_706, i64* %FPU_TAG_val
  %_new_load_707 = load i64, i64* %189, align 8
  store i64 %_new_load_707, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !36
  store i64 %46, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !36
  store i16 %47, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !36
  store i64 %48, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !36
  store i128 %49, i128* %XMM0, align 1, !mcsema_real_eip !36
  store i128 %50, i128* %XMM1, align 1, !mcsema_real_eip !36
  store i128 %51, i128* %XMM2, align 1, !mcsema_real_eip !36
  store i128 %52, i128* %XMM3, align 1, !mcsema_real_eip !36
  store i128 %53, i128* %XMM4, align 1, !mcsema_real_eip !36
  store i128 %54, i128* %XMM5, align 1, !mcsema_real_eip !36
  store i128 %55, i128* %XMM6, align 1, !mcsema_real_eip !36
  store i128 %56, i128* %XMM7, align 1, !mcsema_real_eip !36
  store i128 %57, i128* %XMM8, align 1, !mcsema_real_eip !36
  store i128 %58, i128* %XMM9, align 1, !mcsema_real_eip !36
  store i128 %59, i128* %XMM10, align 1, !mcsema_real_eip !36
  store i128 %60, i128* %XMM11, align 1, !mcsema_real_eip !36
  store i128 %61, i128* %XMM12, align 1, !mcsema_real_eip !36
  store i128 %62, i128* %XMM13, align 1, !mcsema_real_eip !36
  store i128 %63, i128* %XMM14, align 1, !mcsema_real_eip !36
  store i128 %64, i128* %XMM15, align 1, !mcsema_real_eip !36
  store i64 %65, i64* %STACK_BASE, align 1, !mcsema_real_eip !36
  store i64 %66, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !36
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_156.6(%struct.regs*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #2 {
entry:
  %_RSP_ptr_.sroa.0 = alloca i64, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_269 = alloca [84 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [84 x i8], [84 x i8]* %_local_stack_start_ptr_269, i64 0, i64 84
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_.sroa.0, align 8
  %2 = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  %FPU_TAG_val = alloca i64, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !59
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !59
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !59
  %3 = load i64, i64* %RBX, align 8, !mcsema_real_eip !59
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !59
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !59
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !59
  %4 = load i64, i64* %RSI, align 8, !mcsema_real_eip !59
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !59
  %5 = load i64, i64* %RDI, align 8, !mcsema_real_eip !59
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !59
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !59
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !59
  %6 = load i64, i64* %R8, align 8, !mcsema_real_eip !59
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !59
  %7 = load i64, i64* %R9, align 8, !mcsema_real_eip !59
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !59
  %8 = load i64, i64* %R10, align 8, !mcsema_real_eip !59
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !59
  %9 = load i64, i64* %R11, align 8, !mcsema_real_eip !59
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !59
  %10 = load i64, i64* %R12, align 8, !mcsema_real_eip !59
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !59
  %11 = load i64, i64* %R13, align 8, !mcsema_real_eip !59
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !59
  %12 = load i64, i64* %R14, align 8, !mcsema_real_eip !59
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !59
  %13 = load i64, i64* %R15, align 8, !mcsema_real_eip !59
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !59
  %14 = load i64, i64* %RIP, align 8, !mcsema_real_eip !59
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !59
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !59
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !59
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !59
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !59
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !59
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !59
  %15 = load i1, i1* %DF, align 1, !mcsema_real_eip !59
  %16 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !59
  %17 = bitcast x86_fp80* %16 to i8*, !mcsema_real_eip !59
  %18 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !59
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %18, i8* %17, i32 128, i32 4, i1 false), !mcsema_real_eip !59
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !59
  %19 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !59
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !59
  %20 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !59
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !59
  %21 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !59
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !59
  %22 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !59
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !59
  %23 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !59
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !59
  %24 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !59
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !59
  %25 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !59
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !59
  %26 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !59
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !59
  %27 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !59
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !59
  %28 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !59
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !59
  %29 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !59
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !59
  %30 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !59
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !59
  %31 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !59
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !59
  %32 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !59
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !59
  %33 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !59
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !59
  %34 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !59
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !59
  %35 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !59
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !59
  %36 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !59
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !59
  %37 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !59
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !59
  %38 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !59
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !59
  %39 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !59
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !59
  %40 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !59
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !59
  %41 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !59
  %42 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !59
  %43 = bitcast i8* %42 to i64*
  %_ptr_to_int_ = ptrtoint i8* %42 to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %1
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %42, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %42, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %42, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_2_, %_cond2_1_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond2_, %_cond1_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  %44 = select i1 %_cond1_n_cond2_cond3_, i64* %_address_in_parent_stack_bt_, i64* %43
  %_new_load_ = load i64, i64* %44, align 8
  store i64 %_new_load_, i64* %FPU_TAG_val, align 8
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !59
  %45 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !59
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !59
  %46 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !59
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !59
  %47 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !59
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !59
  %48 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !59
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !59
  %49 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !59
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !59
  %50 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !59
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !59
  %51 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !59
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !59
  %52 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !59
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !59
  %53 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !59
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !59
  %54 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !59
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !59
  %55 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !59
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !59
  %56 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !59
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !59
  %57 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !59
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !59
  %58 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !59
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !59
  %59 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !59
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !59
  %60 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !59
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !59
  %61 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !59
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !59
  %62 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !59
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !59
  %63 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !59
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !59
  %64 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !59
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !59
  %65 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !59
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !59
  %66 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !59
  %67 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_303 = load i8*, i8** %67, align 8
  %_new_gep_ = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_303, i64 -24
  %68 = bitcast i8* %_new_gep_ to i32*
  %_ptr_to_int_146 = ptrtoint i8* %_new_gep_ to i64
  %_offset_above_rbp_149 = sub i64 %_ptr_to_int_146, %1
  %_pot_address_in_parent_stack_150 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_149
  %_cond1_151 = icmp ugt i8* %_new_gep_, %_local_stack_end_ptr_
  %_cond2_1_152 = icmp ugt i8* %_new_gep_, %_parent_stack_end_ptr_
  %_cond2_2_153 = icmp ult i8* %_new_gep_, %_parent_stack_start_ptr_
  %_cond2_154 = or i1 %_cond2_1_152, %_cond2_2_153
  %_cond4_155 = icmp ule i8* %_pot_address_in_parent_stack_150, %_parent_stack_end_ptr_
  %_cond1_n_cond2_156 = and i1 %_cond1_151, %_cond2_154
  %_cond1_n_cond2_cond3_157 = and i1 %_cond1_n_cond2_156, %_cond4_155
  %_address_in_parent_stack_bt_159 = bitcast i8* %_pot_address_in_parent_stack_150 to i32*
  %69 = select i1 %_cond1_n_cond2_cond3_157, i32* %_address_in_parent_stack_bt_159, i32* %68
  %_new_load_160 = load i32, i32* %69, align 4
  %70 = add i32 %_new_load_160, -1
  store i32 %70, i32* %68, align 4, !mcsema_real_eip !60
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4304 = load i8*, i8** %67, align 8
  %_new_gep_5 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4304, i64 -24
  %_ptr_to_int_161 = ptrtoint i8* %_new_gep_5 to i64
  %_offset_above_rbp_164 = sub i64 %_ptr_to_int_161, %1
  %_pot_address_in_parent_stack_165 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_164
  %_cond1_166 = icmp ugt i8* %_new_gep_5, %_local_stack_end_ptr_
  %_cond2_1_167 = icmp ugt i8* %_new_gep_5, %_parent_stack_end_ptr_
  %_cond2_2_168 = icmp ult i8* %_new_gep_5, %_parent_stack_start_ptr_
  %_cond2_169 = or i1 %_cond2_1_167, %_cond2_2_168
  %_cond4_170 = icmp ule i8* %_pot_address_in_parent_stack_165, %_parent_stack_end_ptr_
  %_cond1_n_cond2_171 = and i1 %_cond1_166, %_cond2_169
  %_cond1_n_cond2_cond3_172 = and i1 %_cond1_n_cond2_171, %_cond4_170
  %.v = select i1 %_cond1_n_cond2_cond3_172, i8* %_pot_address_in_parent_stack_165, i8* %_new_gep_5
  %71 = bitcast i8* %.v to i32*
  %_new_load_175 = load i32, i32* %71, align 4
  %72 = sext i32 %_new_load_175 to i64, !mcsema_real_eip !39
  %73 = mul nsw i64 %72, 11, !mcsema_real_eip !40
  %74 = add i64 %73, ptrtoint (%1* @data_0x359 to i64)
  %_new_gep_8 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4304, i64 -20
  %_ptr_to_int_176 = ptrtoint i8* %_new_gep_8 to i64
  %_offset_above_rbp_179 = sub i64 %_ptr_to_int_176, %1
  %_pot_address_in_parent_stack_180 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_179
  %_cond1_181 = icmp ugt i8* %_new_gep_8, %_local_stack_end_ptr_
  %_cond2_1_182 = icmp ugt i8* %_new_gep_8, %_parent_stack_end_ptr_
  %_cond2_2_183 = icmp ult i8* %_new_gep_8, %_parent_stack_start_ptr_
  %_cond2_184 = or i1 %_cond2_1_182, %_cond2_2_183
  %_cond4_185 = icmp ule i8* %_pot_address_in_parent_stack_180, %_parent_stack_end_ptr_
  %_cond1_n_cond2_186 = and i1 %_cond1_181, %_cond2_184
  %_cond1_n_cond2_cond3_187 = and i1 %_cond1_n_cond2_186, %_cond4_185
  %.v270 = select i1 %_cond1_n_cond2_cond3_187, i8* %_pot_address_in_parent_stack_180, i8* %_new_gep_8
  %75 = bitcast i8* %.v270 to i32*
  %_new_load_190 = load i32, i32* %75, align 4
  %76 = sext i32 %_new_load_190 to i64, !mcsema_real_eip !41
  %77 = add i64 %74, %76, !mcsema_real_eip !42
  %78 = inttoptr i64 %77 to i8*
  %_offset_above_rbp_193 = sub i64 %77, %1
  %_pot_address_in_parent_stack_194 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_193
  %_cond1_195 = icmp ugt i8* %78, %_local_stack_end_ptr_
  %_cond2_1_196 = icmp ugt i8* %78, %_parent_stack_end_ptr_
  %_cond2_2_197 = icmp ult i8* %78, %_parent_stack_start_ptr_
  %_cond2_198 = or i1 %_cond2_1_196, %_cond2_2_197
  %_cond4_199 = icmp ule i8* %_pot_address_in_parent_stack_194, %_parent_stack_end_ptr_
  %_cond1_n_cond2_200 = and i1 %_cond1_195, %_cond2_198
  %_cond1_n_cond2_cond3_201 = and i1 %_cond4_199, %_cond1_n_cond2_200
  %_address_in_parent_stack_202. = select i1 %_cond1_n_cond2_cond3_201, i8* %_pot_address_in_parent_stack_194, i8* %78
  %_new_load_203 = load i8, i8* %_address_in_parent_stack_202., align 1
  %79 = sext i8 %_new_load_203 to i64
  %80 = and i64 %79, 4294967295
  switch i8 %_new_load_203, label %block_0x1f2 [
    i8 35, label %block_0x298
    i8 32, label %block_0x242
  ]

block_0x298:                                      ; preds = %entry, %block_0x11e, %block_0x24e
  %_RBP_ptr_.0._load_rbp_ptr_130.sink = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_77315, %block_0x24e ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_130313, %block_0x11e ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4304, %entry ]
  %RDX_val.0 = phi i64 [ %80, %block_0x24e ], [ %123, %block_0x11e ], [ %80, %entry ]
  %RCX_val.0 = phi i64 [ %76, %block_0x24e ], [ %168, %block_0x11e ], [ %76, %entry ]
  %.sink = phi i32 [ 2, %block_0x24e ], [ 1, %block_0x11e ], [ 0, %entry ]
  %_new_gep_131 = getelementptr i8, i8* %_RBP_ptr_.0._load_rbp_ptr_130.sink, i64 -4
  %81 = bitcast i8* %_new_gep_131 to i32*
  store i32 %.sink, i32* %81, align 4
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_19314 = load i8*, i8** %67, align 8
  %_new_gep_20 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_19314, i64 -4
  %_ptr_to_int_247 = ptrtoint i8* %_new_gep_20 to i64
  %_offset_above_rbp_250 = sub i64 %_ptr_to_int_247, %1
  %_pot_address_in_parent_stack_251 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_250
  %_cond1_252 = icmp ugt i8* %_new_gep_20, %_local_stack_end_ptr_
  %_cond2_1_253 = icmp ugt i8* %_new_gep_20, %_parent_stack_end_ptr_
  %_cond2_2_254 = icmp ult i8* %_new_gep_20, %_parent_stack_start_ptr_
  %_cond2_255 = or i1 %_cond2_1_253, %_cond2_2_254
  %_cond4_256 = icmp ule i8* %_pot_address_in_parent_stack_251, %_parent_stack_end_ptr_
  %_cond1_n_cond2_257 = and i1 %_cond1_252, %_cond2_255
  %_cond1_n_cond2_cond3_258 = and i1 %_cond1_n_cond2_257, %_cond4_256
  %.v287 = select i1 %_cond1_n_cond2_cond3_258, i8* %_pot_address_in_parent_stack_251, i8* %_new_gep_20
  %82 = bitcast i8* %.v287 to i32*
  %_new_load_261 = load i32, i32* %82, align 4
  %83 = zext i32 %_new_load_261 to i64, !mcsema_real_eip !18
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_288 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %uadd348 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_288, i64 96)
  %84 = extractvalue { i64, i1 } %uadd348, 0
  %85 = xor i64 %84, %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_288, !mcsema_real_eip !19
  %86 = and i64 %85, 16, !mcsema_real_eip !19
  %87 = icmp ne i64 %86, 0, !mcsema_real_eip !19
  %88 = icmp slt i64 %84, 0
  %89 = icmp eq i64 %84, 0, !mcsema_real_eip !19
  %90 = xor i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_288, -9223372036854775808, !mcsema_real_eip !19
  %91 = and i64 %85, %90, !mcsema_real_eip !19
  %92 = icmp slt i64 %91, 0
  %93 = trunc i64 %84 to i8, !mcsema_real_eip !19
  %94 = tail call i8 @llvm.ctpop.i8(i8 %93), !mcsema_real_eip !19
  %95 = and i8 %94, 1
  %96 = icmp eq i8 %95, 0
  %97 = extractvalue { i64, i1 } %uadd348, 1
  %_new_int2ptr_ = inttoptr i64 %84 to i8*
  store volatile i64 %84, i64* %_RSP_ptr_.sroa.0, align 8
  %98 = inttoptr i64 %84 to i64*, !mcsema_real_eip !20
  %_offset_above_rbp_265 = sub i64 %84, %1
  %_pot_address_in_parent_stack_266 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_265
  %_cond1_267 = icmp ugt i8* %_new_int2ptr_, %_local_stack_end_ptr_
  %_cond2_1_268 = icmp ugt i8* %_new_int2ptr_, %_parent_stack_end_ptr_
  %_cond2_2_269 = icmp ult i8* %_new_int2ptr_, %_parent_stack_start_ptr_
  %_cond2_270 = or i1 %_cond2_1_268, %_cond2_2_269
  %_cond4_271 = icmp ule i8* %_pot_address_in_parent_stack_266, %_parent_stack_end_ptr_
  %_cond1_n_cond2_272 = and i1 %_cond1_267, %_cond2_270
  %_cond1_n_cond2_cond3_273 = and i1 %_cond4_271, %_cond1_n_cond2_272
  %_address_in_parent_stack_bt_275 = bitcast i8* %_pot_address_in_parent_stack_266 to i64*
  %99 = select i1 %_cond1_n_cond2_cond3_273, i64* %_address_in_parent_stack_bt_275, i64* %98
  %_new_load_276289290 = load i64, i64* %99, align 8
  store volatile i64 %_new_load_276289290, i64* %_RBP_ptr_.sroa.0, align 8
  %100 = add i64 %84, 16
  store volatile i64 %100, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %83, i64* %RAX, align 8, !mcsema_real_eip !21
  store i64 %3, i64* %RBX, align 8, !mcsema_real_eip !21
  store i64 %RCX_val.0, i64* %RCX, align 8, !mcsema_real_eip !21
  store i64 %RDX_val.0, i64* %RDX, align 8, !mcsema_real_eip !21
  store i64 %4, i64* %RSI, align 8, !mcsema_real_eip !21
  store i64 %5, i64* %RDI, align 8, !mcsema_real_eip !21
  store volatile i64 %100, i64* %RSP, align 8
  store volatile i64 %_new_load_276289290, i64* %RBP, align 8
  store i64 %6, i64* %R8, align 8, !mcsema_real_eip !21
  store i64 %7, i64* %R9, align 8, !mcsema_real_eip !21
  store i64 %8, i64* %R10, align 8, !mcsema_real_eip !21
  store i64 %9, i64* %R11, align 8, !mcsema_real_eip !21
  store i64 %10, i64* %R12, align 8, !mcsema_real_eip !21
  store i64 %11, i64* %R13, align 8, !mcsema_real_eip !21
  store i64 %12, i64* %R14, align 8, !mcsema_real_eip !21
  store i64 %13, i64* %R15, align 8, !mcsema_real_eip !21
  store i64 %14, i64* %RIP, align 8, !mcsema_real_eip !21
  store i1 %97, i1* %CF, align 1, !mcsema_real_eip !21
  store i1 %96, i1* %PF, align 1, !mcsema_real_eip !21
  store i1 %87, i1* %AF, align 1, !mcsema_real_eip !21
  store i1 %89, i1* %ZF, align 1, !mcsema_real_eip !21
  store i1 %88, i1* %SF, align 1, !mcsema_real_eip !21
  store i1 %92, i1* %OF, align 1, !mcsema_real_eip !21
  store i1 %15, i1* %DF, align 1, !mcsema_real_eip !21
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* nonnull %18, i32 128, i32 8, i1 false), !mcsema_real_eip !21
  store i1 %19, i1* %FPU_B, align 1, !mcsema_real_eip !21
  store i1 %20, i1* %FPU_C3, align 1, !mcsema_real_eip !21
  store i3 %21, i3* %FPU_TOP, align 1, !mcsema_real_eip !21
  store i1 %22, i1* %FPU_C2, align 1, !mcsema_real_eip !21
  store i1 %23, i1* %FPU_C1, align 1, !mcsema_real_eip !21
  store i1 %24, i1* %FPU_C0, align 1, !mcsema_real_eip !21
  store i1 %25, i1* %FPU_ES, align 1, !mcsema_real_eip !21
  store i1 %26, i1* %FPU_SF, align 1, !mcsema_real_eip !21
  store i1 %27, i1* %FPU_PE, align 1, !mcsema_real_eip !21
  store i1 %28, i1* %FPU_UE, align 1, !mcsema_real_eip !21
  store i1 %29, i1* %FPU_OE, align 1, !mcsema_real_eip !21
  store i1 %30, i1* %FPU_ZE, align 1, !mcsema_real_eip !21
  store i1 %31, i1* %FPU_DE, align 1, !mcsema_real_eip !21
  store i1 %32, i1* %FPU_IE, align 1, !mcsema_real_eip !21
  store i1 %33, i1* %FPU_X, align 1, !mcsema_real_eip !21
  store i2 %34, i2* %FPU_RC, align 1, !mcsema_real_eip !21
  store i2 %35, i2* %FPU_PC, align 1, !mcsema_real_eip !21
  store i1 %36, i1* %FPU_PM, align 1, !mcsema_real_eip !21
  store i1 %37, i1* %FPU_UM, align 1, !mcsema_real_eip !21
  store i1 %38, i1* %FPU_OM, align 1, !mcsema_real_eip !21
  store i1 %39, i1* %FPU_ZM, align 1, !mcsema_real_eip !21
  store i1 %40, i1* %FPU_DM, align 1, !mcsema_real_eip !21
  store i1 %41, i1* %FPU_IM, align 1, !mcsema_real_eip !21
  %_ptr_to_int_277 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_279 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_280 = sub i64 %_ptr_to_int_277, %1
  %_pot_address_in_parent_stack_281 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_280
  %_cond1_282 = icmp ugt i8* %_ptr_bt_279, %_local_stack_end_ptr_
  %_cond2_1_283 = icmp ugt i8* %_ptr_bt_279, %_parent_stack_end_ptr_
  %_cond2_2_284 = icmp ult i8* %_ptr_bt_279, %_parent_stack_start_ptr_
  %_cond2_285 = or i1 %_cond2_1_283, %_cond2_2_284
  %_cond4_286 = icmp ule i8* %_pot_address_in_parent_stack_281, %_parent_stack_end_ptr_
  %_cond1_n_cond2_287 = and i1 %_cond1_282, %_cond2_285
  %_cond1_n_cond2_cond3_288 = and i1 %_cond1_n_cond2_287, %_cond4_286
  %_address_in_parent_stack_bt_290 = bitcast i8* %_pot_address_in_parent_stack_281 to i64*
  %101 = select i1 %_cond1_n_cond2_cond3_288, i64* %_address_in_parent_stack_bt_290, i64* %FPU_TAG_val
  %_new_load_291 = load i64, i64* %101, align 8
  store i64 %_new_load_291, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !21
  store i64 %46, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !21
  store i16 %47, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !21
  store i64 %48, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !21
  store i128 %49, i128* %XMM0, align 1, !mcsema_real_eip !21
  store i128 %50, i128* %XMM1, align 1, !mcsema_real_eip !21
  store i128 %51, i128* %XMM2, align 1, !mcsema_real_eip !21
  store i128 %52, i128* %XMM3, align 1, !mcsema_real_eip !21
  store i128 %53, i128* %XMM4, align 1, !mcsema_real_eip !21
  store i128 %54, i128* %XMM5, align 1, !mcsema_real_eip !21
  store i128 %55, i128* %XMM6, align 1, !mcsema_real_eip !21
  store i128 %56, i128* %XMM7, align 1, !mcsema_real_eip !21
  store i128 %57, i128* %XMM8, align 1, !mcsema_real_eip !21
  store i128 %58, i128* %XMM9, align 1, !mcsema_real_eip !21
  store i128 %59, i128* %XMM10, align 1, !mcsema_real_eip !21
  store i128 %60, i128* %XMM11, align 1, !mcsema_real_eip !21
  store i128 %61, i128* %XMM12, align 1, !mcsema_real_eip !21
  store i128 %62, i128* %XMM13, align 1, !mcsema_real_eip !21
  store i128 %63, i128* %XMM14, align 1, !mcsema_real_eip !21
  store i128 %64, i128* %XMM15, align 1, !mcsema_real_eip !21
  store i64 %65, i64* %STACK_BASE, align 1, !mcsema_real_eip !21
  store i64 %66, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !21
  ret void, !mcsema_real_eip !21

block_0x242:                                      ; preds = %entry, %block_0x22c
  %_new_gep_29 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4304, i64 -28
  %_ptr_to_int_292 = ptrtoint i8* %_new_gep_29 to i64
  %_offset_above_rbp_295 = sub i64 %_ptr_to_int_292, %1
  %_pot_address_in_parent_stack_296 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_295
  %_cond1_297 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_298 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_299 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_300 = or i1 %_cond2_1_298, %_cond2_2_299
  %_cond4_301 = icmp ule i8* %_pot_address_in_parent_stack_296, %_parent_stack_end_ptr_
  %_cond1_n_cond2_302 = and i1 %_cond1_297, %_cond2_300
  %_cond1_n_cond2_cond3_303 = and i1 %_cond1_n_cond2_302, %_cond4_301
  %.v300 = select i1 %_cond1_n_cond2_cond3_303, i8* %_pot_address_in_parent_stack_296, i8* %_new_gep_29
  %102 = bitcast i8* %.v300 to i32*
  %_new_load_306 = load i32, i32* %102, align 4
  %103 = icmp eq i32 %_new_load_306, %_new_load_190
  br i1 %103, label %block_0x24e, label %block_0x266, !mcsema_real_eip !43

block_0x1f2:                                      ; preds = %entry
  %notlhs = icmp ne i32 %_new_load_175, 2
  %notrhs = icmp ne i8 %_new_load_203, 124
  %or.cond.not = or i1 %notlhs, %notrhs
  %104 = icmp slt i32 %_new_load_190, 1
  %or.cond302 = or i1 %104, %or.cond.not
  br i1 %or.cond302, label %block_0x236, label %block_0x22c, !mcsema_real_eip !44

block_0x236:                                      ; preds = %block_0x1f2, %block_0x22c
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4304, i64 -28
  %_ptr_to_int_337 = ptrtoint i8* %_new_gep_38 to i64
  %_offset_above_rbp_340 = sub i64 %_ptr_to_int_337, %1
  %_pot_address_in_parent_stack_341 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_340
  %_cond1_342 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_343 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_344 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_345 = or i1 %_cond2_1_343, %_cond2_2_344
  %_cond4_346 = icmp ule i8* %_pot_address_in_parent_stack_341, %_parent_stack_end_ptr_
  %_cond1_n_cond2_347 = and i1 %_cond1_342, %_cond2_345
  %_cond1_n_cond2_cond3_348 = and i1 %_cond1_n_cond2_347, %_cond4_346
  %.v271 = select i1 %_cond1_n_cond2_cond3_348, i8* %_pot_address_in_parent_stack_341, i8* %_new_gep_38
  %105 = bitcast i8* %.v271 to i32*
  %_new_load_351 = load i32, i32* %105, align 4
  %106 = bitcast i8* %_new_gep_8 to i32*
  store i32 %_new_load_351, i32* %106, align 4, !mcsema_real_eip !45
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_43317 = load i8*, i8** %67, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_43317, i64 -32
  %_ptr_to_int_352 = ptrtoint i8* %_new_gep_44 to i64
  %_offset_above_rbp_355 = sub i64 %_ptr_to_int_352, %1
  %_pot_address_in_parent_stack_356 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_355
  %_cond1_357 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_358 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_359 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_360 = or i1 %_cond2_1_358, %_cond2_2_359
  %_cond4_361 = icmp ule i8* %_pot_address_in_parent_stack_356, %_parent_stack_end_ptr_
  %_cond1_n_cond2_362 = and i1 %_cond1_357, %_cond2_360
  %_cond1_n_cond2_cond3_363 = and i1 %_cond1_n_cond2_362, %_cond4_361
  %.v272 = select i1 %_cond1_n_cond2_cond3_363, i8* %_pot_address_in_parent_stack_356, i8* %_new_gep_44
  %107 = bitcast i8* %.v272 to i32*
  %_new_load_366 = load i32, i32* %107, align 4
  %_new_gep_47 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_43317, i64 -24
  %108 = bitcast i8* %_new_gep_47 to i32*
  store i32 %_new_load_366, i32* %108, align 4, !mcsema_real_eip !46
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_49318 = load i8*, i8** %67, align 8
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_49318, i64 -28
  %_ptr_to_int_367 = ptrtoint i8* %_new_gep_50 to i64
  %_offset_above_rbp_370 = sub i64 %_ptr_to_int_367, %1
  %_pot_address_in_parent_stack_371 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_370
  %_cond1_372 = icmp ugt i8* %_new_gep_50, %_local_stack_end_ptr_
  %_cond2_1_373 = icmp ugt i8* %_new_gep_50, %_parent_stack_end_ptr_
  %_cond2_2_374 = icmp ult i8* %_new_gep_50, %_parent_stack_start_ptr_
  %_cond2_375 = or i1 %_cond2_1_373, %_cond2_2_374
  %_cond4_376 = icmp ule i8* %_pot_address_in_parent_stack_371, %_parent_stack_end_ptr_
  %_cond1_n_cond2_377 = and i1 %_cond1_372, %_cond2_375
  %_cond1_n_cond2_cond3_378 = and i1 %_cond1_n_cond2_377, %_cond4_376
  %.v273 = select i1 %_cond1_n_cond2_cond3_378, i8* %_pot_address_in_parent_stack_371, i8* %_new_gep_50
  %109 = bitcast i8* %.v273 to i32*
  %_new_load_381 = load i32, i32* %109, align 4
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_49318, i64 -20
  %_ptr_to_int_382 = ptrtoint i8* %_new_gep_53 to i64
  %_offset_above_rbp_385 = sub i64 %_ptr_to_int_382, %1
  %_pot_address_in_parent_stack_386 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_385
  %_cond1_387 = icmp ugt i8* %_new_gep_53, %_local_stack_end_ptr_
  %_cond2_1_388 = icmp ugt i8* %_new_gep_53, %_parent_stack_end_ptr_
  %_cond2_2_389 = icmp ult i8* %_new_gep_53, %_parent_stack_start_ptr_
  %_cond2_390 = or i1 %_cond2_1_388, %_cond2_2_389
  %_cond4_391 = icmp ule i8* %_pot_address_in_parent_stack_386, %_parent_stack_end_ptr_
  %_cond1_n_cond2_392 = and i1 %_cond1_387, %_cond2_390
  %_cond1_n_cond2_cond3_393 = and i1 %_cond1_n_cond2_392, %_cond4_391
  %.v274 = select i1 %_cond1_n_cond2_cond3_393, i8* %_pot_address_in_parent_stack_386, i8* %_new_gep_53
  %110 = bitcast i8* %.v274 to i32*
  %_new_load_396 = load i32, i32* %110, align 4
  %111 = icmp eq i32 %_new_load_381, %_new_load_396
  br i1 %111, label %block_0x24e, label %block_0x266, !mcsema_real_eip !43

block_0x266:                                      ; preds = %block_0x24e, %block_0x236, %block_0x242
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_61306 = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_77315, %block_0x24e ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_49318, %block_0x236 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4304, %block_0x242 ]
  %_new_gep_62 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_61306, i64 -24
  %_ptr_to_int_440 = ptrtoint i8* %_new_gep_62 to i64
  %_offset_above_rbp_443 = sub i64 %_ptr_to_int_440, %1
  %_pot_address_in_parent_stack_444 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_443
  %_cond1_445 = icmp ugt i8* %_new_gep_62, %_local_stack_end_ptr_
  %_cond2_1_446 = icmp ugt i8* %_new_gep_62, %_parent_stack_end_ptr_
  %_cond2_2_447 = icmp ult i8* %_new_gep_62, %_parent_stack_start_ptr_
  %_cond2_448 = or i1 %_cond2_1_446, %_cond2_2_447
  %_cond4_449 = icmp ule i8* %_pot_address_in_parent_stack_444, %_parent_stack_end_ptr_
  %_cond1_n_cond2_450 = and i1 %_cond1_445, %_cond2_448
  %_cond1_n_cond2_cond3_451 = and i1 %_cond1_n_cond2_450, %_cond4_449
  %.v275 = select i1 %_cond1_n_cond2_cond3_451, i8* %_pot_address_in_parent_stack_444, i8* %_new_gep_62
  %112 = bitcast i8* %.v275 to i32*
  %_new_load_454 = load i32, i32* %112, align 4
  %113 = sext i32 %_new_load_454 to i64, !mcsema_real_eip !47
  %114 = mul nsw i64 %113, 11, !mcsema_real_eip !48
  %115 = add i64 %114, ptrtoint (%1* @data_0x359 to i64)
  %_new_gep_65 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_61306, i64 -20
  %_ptr_to_int_455 = ptrtoint i8* %_new_gep_65 to i64
  %_offset_above_rbp_458 = sub i64 %_ptr_to_int_455, %1
  %_pot_address_in_parent_stack_459 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_458
  %_cond1_460 = icmp ugt i8* %_new_gep_65, %_local_stack_end_ptr_
  %_cond2_1_461 = icmp ugt i8* %_new_gep_65, %_parent_stack_end_ptr_
  %_cond2_2_462 = icmp ult i8* %_new_gep_65, %_parent_stack_start_ptr_
  %_cond2_463 = or i1 %_cond2_1_461, %_cond2_2_462
  %_cond4_464 = icmp ule i8* %_pot_address_in_parent_stack_459, %_parent_stack_end_ptr_
  %_cond1_n_cond2_465 = and i1 %_cond1_460, %_cond2_463
  %_cond1_n_cond2_cond3_466 = and i1 %_cond1_n_cond2_465, %_cond4_464
  %.v276 = select i1 %_cond1_n_cond2_cond3_466, i8* %_pot_address_in_parent_stack_459, i8* %_new_gep_65
  %116 = bitcast i8* %.v276 to i32*
  %_new_load_469 = load i32, i32* %116, align 4
  %117 = sext i32 %_new_load_469 to i64, !mcsema_real_eip !49
  %118 = add i64 %115, %117, !mcsema_real_eip !50
  %119 = inttoptr i64 %118 to i8*
  store i8 88, i8* %119, align 1, !mcsema_real_eip !50
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_67307 = load i8*, i8** %67, align 8
  %_new_gep_68 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_67307, i64 -36
  %120 = bitcast i8* %_new_gep_68 to i32*
  %_ptr_to_int_470 = ptrtoint i8* %_new_gep_68 to i64
  %_offset_above_rbp_473 = sub i64 %_ptr_to_int_470, %1
  %_pot_address_in_parent_stack_474 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_473
  %_cond1_475 = icmp ugt i8* %_new_gep_68, %_local_stack_end_ptr_
  %_cond2_1_476 = icmp ugt i8* %_new_gep_68, %_parent_stack_end_ptr_
  %_cond2_2_477 = icmp ult i8* %_new_gep_68, %_parent_stack_start_ptr_
  %_cond2_478 = or i1 %_cond2_1_476, %_cond2_2_477
  %_cond4_479 = icmp ule i8* %_pot_address_in_parent_stack_474, %_parent_stack_end_ptr_
  %_cond1_n_cond2_480 = and i1 %_cond1_475, %_cond2_478
  %_cond1_n_cond2_cond3_481 = and i1 %_cond1_n_cond2_480, %_cond4_479
  %_address_in_parent_stack_bt_483 = bitcast i8* %_pot_address_in_parent_stack_474 to i32*
  %121 = select i1 %_cond1_n_cond2_cond3_481, i32* %_address_in_parent_stack_bt_483, i32* %120
  %_new_load_484 = load i32, i32* %121, align 4
  %122 = add i32 %_new_load_484, 1
  %123 = zext i32 %122 to i64, !mcsema_real_eip !51
  store i32 %122, i32* %120, align 4, !mcsema_real_eip !52
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_73308 = load i8*, i8** %67, align 8
  %_new_gep_74 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_73308, i64 -36
  %_ptr_to_int_485 = ptrtoint i8* %_new_gep_74 to i64
  %_offset_above_rbp_488 = sub i64 %_ptr_to_int_485, %1
  %_pot_address_in_parent_stack_489 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_488
  %_cond1_490 = icmp ugt i8* %_new_gep_74, %_local_stack_end_ptr_
  %_cond2_1_491 = icmp ugt i8* %_new_gep_74, %_parent_stack_end_ptr_
  %_cond2_2_492 = icmp ult i8* %_new_gep_74, %_parent_stack_start_ptr_
  %_cond2_493 = or i1 %_cond2_1_491, %_cond2_2_492
  %_cond4_494 = icmp ule i8* %_pot_address_in_parent_stack_489, %_parent_stack_end_ptr_
  %_cond1_n_cond2_495 = and i1 %_cond1_490, %_cond2_493
  %_cond1_n_cond2_cond3_496 = and i1 %_cond1_n_cond2_495, %_cond4_494
  %.v277 = select i1 %_cond1_n_cond2_cond3_496, i8* %_pot_address_in_parent_stack_489, i8* %_new_gep_74
  %124 = bitcast i8* %.v277 to i32*
  %_new_load_499 = load i32, i32* %124, align 4
  %125 = add i32 %_new_load_499, -28
  %126 = icmp slt i32 %125, 0
  %127 = sub i32 27, %_new_load_499
  %128 = and i32 %127, %_new_load_499
  %129 = icmp slt i32 %128, 0
  %tmp = xor i1 %126, %129
  br i1 %tmp, label %block_0x11e, label %block_0x291, !mcsema_real_eip !16

block_0x24e:                                      ; preds = %block_0x236, %block_0x242
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_77315 = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_49318, %block_0x236 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4304, %block_0x242 ]
  %_new_gep_78 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_77315, i64 -32
  %_ptr_to_int_500 = ptrtoint i8* %_new_gep_78 to i64
  %_offset_above_rbp_503 = sub i64 %_ptr_to_int_500, %1
  %_pot_address_in_parent_stack_504 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_503
  %_cond1_505 = icmp ugt i8* %_new_gep_78, %_local_stack_end_ptr_
  %_cond2_1_506 = icmp ugt i8* %_new_gep_78, %_parent_stack_end_ptr_
  %_cond2_2_507 = icmp ult i8* %_new_gep_78, %_parent_stack_start_ptr_
  %_cond2_508 = or i1 %_cond2_1_506, %_cond2_2_507
  %_cond4_509 = icmp ule i8* %_pot_address_in_parent_stack_504, %_parent_stack_end_ptr_
  %_cond1_n_cond2_510 = and i1 %_cond1_505, %_cond2_508
  %_cond1_n_cond2_cond3_511 = and i1 %_cond1_n_cond2_510, %_cond4_509
  %.v298 = select i1 %_cond1_n_cond2_cond3_511, i8* %_pot_address_in_parent_stack_504, i8* %_new_gep_78
  %130 = bitcast i8* %.v298 to i32*
  %_new_load_514 = load i32, i32* %130, align 4
  %_new_gep_81 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_77315, i64 -24
  %_ptr_to_int_515 = ptrtoint i8* %_new_gep_81 to i64
  %_offset_above_rbp_518 = sub i64 %_ptr_to_int_515, %1
  %_pot_address_in_parent_stack_519 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_518
  %_cond1_520 = icmp ugt i8* %_new_gep_81, %_local_stack_end_ptr_
  %_cond2_1_521 = icmp ugt i8* %_new_gep_81, %_parent_stack_end_ptr_
  %_cond2_2_522 = icmp ult i8* %_new_gep_81, %_parent_stack_start_ptr_
  %_cond2_523 = or i1 %_cond2_1_521, %_cond2_2_522
  %_cond4_524 = icmp ule i8* %_pot_address_in_parent_stack_519, %_parent_stack_end_ptr_
  %_cond1_n_cond2_525 = and i1 %_cond1_520, %_cond2_523
  %_cond1_n_cond2_cond3_526 = and i1 %_cond1_n_cond2_525, %_cond4_524
  %.v299 = select i1 %_cond1_n_cond2_cond3_526, i8* %_pot_address_in_parent_stack_519, i8* %_new_gep_81
  %131 = bitcast i8* %.v299 to i32*
  %_new_load_529 = load i32, i32* %131, align 4
  %132 = icmp eq i32 %_new_load_514, %_new_load_529
  br i1 %132, label %block_0x298, label %block_0x266, !mcsema_real_eip !53

block_0x22c:                                      ; preds = %block_0x1f2
  %133 = add i32 %_new_load_190, -11
  %134 = icmp slt i32 %133, 0
  %135 = sub i32 10, %_new_load_190
  %136 = and i32 %135, %_new_load_190
  %137 = icmp slt i32 %136, 0
  %138 = xor i1 %134, %137
  br i1 %138, label %block_0x242, label %block_0x236, !mcsema_real_eip !54

block_0x291:                                      ; preds = %block_0x266
  %_new_gep_92 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_73308, i64 -4
  %139 = bitcast i8* %_new_gep_92 to i32*
  store i32 1, i32* %139, align 4, !mcsema_real_eip !17
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_94309 = load i8*, i8** %67, align 8
  %_new_gep_95 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_94309, i64 -4
  %_ptr_to_int_560 = ptrtoint i8* %_new_gep_95 to i64
  %_offset_above_rbp_563 = sub i64 %_ptr_to_int_560, %1
  %_pot_address_in_parent_stack_564 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_563
  %_cond1_565 = icmp ugt i8* %_new_gep_95, %_local_stack_end_ptr_
  %_cond2_1_566 = icmp ugt i8* %_new_gep_95, %_parent_stack_end_ptr_
  %_cond2_2_567 = icmp ult i8* %_new_gep_95, %_parent_stack_start_ptr_
  %_cond2_568 = or i1 %_cond2_1_566, %_cond2_2_567
  %_cond4_569 = icmp ule i8* %_pot_address_in_parent_stack_564, %_parent_stack_end_ptr_
  %_cond1_n_cond2_570 = and i1 %_cond1_565, %_cond2_568
  %_cond1_n_cond2_cond3_571 = and i1 %_cond1_n_cond2_570, %_cond4_569
  %.v278 = select i1 %_cond1_n_cond2_cond3_571, i8* %_pot_address_in_parent_stack_564, i8* %_new_gep_95
  %140 = bitcast i8* %.v278 to i32*
  %_new_load_574 = load i32, i32* %140, align 4
  %141 = zext i32 %_new_load_574 to i64, !mcsema_real_eip !18
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_97279 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %uadd357 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_97279, i64 96)
  %142 = extractvalue { i64, i1 } %uadd357, 0
  %143 = xor i64 %142, %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_97279, !mcsema_real_eip !19
  %144 = and i64 %143, 16, !mcsema_real_eip !19
  %145 = icmp ne i64 %144, 0, !mcsema_real_eip !19
  %146 = icmp slt i64 %142, 0
  %147 = icmp eq i64 %142, 0, !mcsema_real_eip !19
  %148 = xor i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_97279, -9223372036854775808, !mcsema_real_eip !19
  %149 = and i64 %143, %148, !mcsema_real_eip !19
  %150 = icmp slt i64 %149, 0
  %151 = trunc i64 %142 to i8, !mcsema_real_eip !19
  %152 = tail call i8 @llvm.ctpop.i8(i8 %151), !mcsema_real_eip !19
  %153 = and i8 %152, 1
  %154 = icmp eq i8 %153, 0
  %155 = extractvalue { i64, i1 } %uadd357, 1
  %_new_int2ptr_99 = inttoptr i64 %142 to i8*
  store volatile i64 %142, i64* %_RSP_ptr_.sroa.0, align 8
  %156 = inttoptr i64 %142 to i64*, !mcsema_real_eip !20
  %_offset_above_rbp_578 = sub i64 %142, %1
  %_pot_address_in_parent_stack_579 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_578
  %_cond1_580 = icmp ugt i8* %_new_int2ptr_99, %_local_stack_end_ptr_
  %_cond2_1_581 = icmp ugt i8* %_new_int2ptr_99, %_parent_stack_end_ptr_
  %_cond2_2_582 = icmp ult i8* %_new_int2ptr_99, %_parent_stack_start_ptr_
  %_cond2_583 = or i1 %_cond2_1_581, %_cond2_2_582
  %_cond4_584 = icmp ule i8* %_pot_address_in_parent_stack_579, %_parent_stack_end_ptr_
  %_cond1_n_cond2_585 = and i1 %_cond1_580, %_cond2_583
  %_cond1_n_cond2_cond3_586 = and i1 %_cond4_584, %_cond1_n_cond2_585
  %_address_in_parent_stack_bt_588 = bitcast i8* %_pot_address_in_parent_stack_579 to i64*
  %157 = select i1 %_cond1_n_cond2_cond3_586, i64* %_address_in_parent_stack_bt_588, i64* %156
  %_new_load_589280281 = load i64, i64* %157, align 8
  store volatile i64 %_new_load_589280281, i64* %_RBP_ptr_.sroa.0, align 8
  %158 = add i64 %142, 16
  store volatile i64 %158, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %141, i64* %RAX, align 8, !mcsema_real_eip !21
  store i64 %3, i64* %RBX, align 8, !mcsema_real_eip !21
  store i64 %117, i64* %RCX, align 8, !mcsema_real_eip !21
  store i64 %123, i64* %RDX, align 8, !mcsema_real_eip !21
  store i64 %4, i64* %RSI, align 8, !mcsema_real_eip !21
  store i64 %5, i64* %RDI, align 8, !mcsema_real_eip !21
  store volatile i64 %158, i64* %RSP, align 8
  store volatile i64 %_new_load_589280281, i64* %RBP, align 8
  store i64 %6, i64* %R8, align 8, !mcsema_real_eip !21
  store i64 %7, i64* %R9, align 8, !mcsema_real_eip !21
  store i64 %8, i64* %R10, align 8, !mcsema_real_eip !21
  store i64 %9, i64* %R11, align 8, !mcsema_real_eip !21
  store i64 %10, i64* %R12, align 8, !mcsema_real_eip !21
  store i64 %11, i64* %R13, align 8, !mcsema_real_eip !21
  store i64 %12, i64* %R14, align 8, !mcsema_real_eip !21
  store i64 %13, i64* %R15, align 8, !mcsema_real_eip !21
  store i64 %14, i64* %RIP, align 8, !mcsema_real_eip !21
  store i1 %155, i1* %CF, align 1, !mcsema_real_eip !21
  store i1 %154, i1* %PF, align 1, !mcsema_real_eip !21
  store i1 %145, i1* %AF, align 1, !mcsema_real_eip !21
  store i1 %147, i1* %ZF, align 1, !mcsema_real_eip !21
  store i1 %146, i1* %SF, align 1, !mcsema_real_eip !21
  store i1 %150, i1* %OF, align 1, !mcsema_real_eip !21
  store i1 %15, i1* %DF, align 1, !mcsema_real_eip !21
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* nonnull %18, i32 128, i32 8, i1 false), !mcsema_real_eip !21
  store i1 %19, i1* %FPU_B, align 1, !mcsema_real_eip !21
  store i1 %20, i1* %FPU_C3, align 1, !mcsema_real_eip !21
  store i3 %21, i3* %FPU_TOP, align 1, !mcsema_real_eip !21
  store i1 %22, i1* %FPU_C2, align 1, !mcsema_real_eip !21
  store i1 %23, i1* %FPU_C1, align 1, !mcsema_real_eip !21
  store i1 %24, i1* %FPU_C0, align 1, !mcsema_real_eip !21
  store i1 %25, i1* %FPU_ES, align 1, !mcsema_real_eip !21
  store i1 %26, i1* %FPU_SF, align 1, !mcsema_real_eip !21
  store i1 %27, i1* %FPU_PE, align 1, !mcsema_real_eip !21
  store i1 %28, i1* %FPU_UE, align 1, !mcsema_real_eip !21
  store i1 %29, i1* %FPU_OE, align 1, !mcsema_real_eip !21
  store i1 %30, i1* %FPU_ZE, align 1, !mcsema_real_eip !21
  store i1 %31, i1* %FPU_DE, align 1, !mcsema_real_eip !21
  store i1 %32, i1* %FPU_IE, align 1, !mcsema_real_eip !21
  store i1 %33, i1* %FPU_X, align 1, !mcsema_real_eip !21
  store i2 %34, i2* %FPU_RC, align 1, !mcsema_real_eip !21
  store i2 %35, i2* %FPU_PC, align 1, !mcsema_real_eip !21
  store i1 %36, i1* %FPU_PM, align 1, !mcsema_real_eip !21
  store i1 %37, i1* %FPU_UM, align 1, !mcsema_real_eip !21
  store i1 %38, i1* %FPU_OM, align 1, !mcsema_real_eip !21
  store i1 %39, i1* %FPU_ZM, align 1, !mcsema_real_eip !21
  store i1 %40, i1* %FPU_DM, align 1, !mcsema_real_eip !21
  store i1 %41, i1* %FPU_IM, align 1, !mcsema_real_eip !21
  %_ptr_to_int_590 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_592 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_593 = sub i64 %_ptr_to_int_590, %1
  %_pot_address_in_parent_stack_594 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_593
  %_cond1_595 = icmp ugt i8* %_ptr_bt_592, %_local_stack_end_ptr_
  %_cond2_1_596 = icmp ugt i8* %_ptr_bt_592, %_parent_stack_end_ptr_
  %_cond2_2_597 = icmp ult i8* %_ptr_bt_592, %_parent_stack_start_ptr_
  %_cond2_598 = or i1 %_cond2_1_596, %_cond2_2_597
  %_cond4_599 = icmp ule i8* %_pot_address_in_parent_stack_594, %_parent_stack_end_ptr_
  %_cond1_n_cond2_600 = and i1 %_cond1_595, %_cond2_598
  %_cond1_n_cond2_cond3_601 = and i1 %_cond1_n_cond2_600, %_cond4_599
  %_address_in_parent_stack_bt_603 = bitcast i8* %_pot_address_in_parent_stack_594 to i64*
  %159 = select i1 %_cond1_n_cond2_cond3_601, i64* %_address_in_parent_stack_bt_603, i64* %FPU_TAG_val
  %_new_load_604 = load i64, i64* %159, align 8
  store i64 %_new_load_604, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !21
  store i64 %46, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !21
  store i16 %47, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !21
  store i64 %48, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !21
  store i128 %49, i128* %XMM0, align 1, !mcsema_real_eip !21
  store i128 %50, i128* %XMM1, align 1, !mcsema_real_eip !21
  store i128 %51, i128* %XMM2, align 1, !mcsema_real_eip !21
  store i128 %52, i128* %XMM3, align 1, !mcsema_real_eip !21
  store i128 %53, i128* %XMM4, align 1, !mcsema_real_eip !21
  store i128 %54, i128* %XMM5, align 1, !mcsema_real_eip !21
  store i128 %55, i128* %XMM6, align 1, !mcsema_real_eip !21
  store i128 %56, i128* %XMM7, align 1, !mcsema_real_eip !21
  store i128 %57, i128* %XMM8, align 1, !mcsema_real_eip !21
  store i128 %58, i128* %XMM9, align 1, !mcsema_real_eip !21
  store i128 %59, i128* %XMM10, align 1, !mcsema_real_eip !21
  store i128 %60, i128* %XMM11, align 1, !mcsema_real_eip !21
  store i128 %61, i128* %XMM12, align 1, !mcsema_real_eip !21
  store i128 %62, i128* %XMM13, align 1, !mcsema_real_eip !21
  store i128 %63, i128* %XMM14, align 1, !mcsema_real_eip !21
  store i128 %64, i128* %XMM15, align 1, !mcsema_real_eip !21
  store i64 %65, i64* %STACK_BASE, align 1, !mcsema_real_eip !21
  store i64 %66, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !21
  ret void, !mcsema_real_eip !21

block_0x11e:                                      ; preds = %block_0x266
  %_new_gep_106 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_73308, i64 -20
  %_ptr_to_int_605 = ptrtoint i8* %_new_gep_106 to i64
  %_offset_above_rbp_608 = sub i64 %_ptr_to_int_605, %1
  %_pot_address_in_parent_stack_609 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_608
  %_cond1_610 = icmp ugt i8* %_new_gep_106, %_local_stack_end_ptr_
  %_cond2_1_611 = icmp ugt i8* %_new_gep_106, %_parent_stack_end_ptr_
  %_cond2_2_612 = icmp ult i8* %_new_gep_106, %_parent_stack_start_ptr_
  %_cond2_613 = or i1 %_cond2_1_611, %_cond2_2_612
  %_cond4_614 = icmp ule i8* %_pot_address_in_parent_stack_609, %_parent_stack_end_ptr_
  %_cond1_n_cond2_615 = and i1 %_cond1_610, %_cond2_613
  %_cond1_n_cond2_cond3_616 = and i1 %_cond1_n_cond2_615, %_cond4_614
  %.v284 = select i1 %_cond1_n_cond2_cond3_616, i8* %_pot_address_in_parent_stack_609, i8* %_new_gep_106
  %160 = bitcast i8* %.v284 to i32*
  %_new_load_619 = load i32, i32* %160, align 4
  %_new_gep_109 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_73308, i64 -28
  %161 = bitcast i8* %_new_gep_109 to i32*
  store i32 %_new_load_619, i32* %161, align 4, !mcsema_real_eip !23
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_111310 = load i8*, i8** %67, align 8
  %_new_gep_112 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_111310, i64 -24
  %_ptr_to_int_620 = ptrtoint i8* %_new_gep_112 to i64
  %_offset_above_rbp_623 = sub i64 %_ptr_to_int_620, %1
  %_pot_address_in_parent_stack_624 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_623
  %_cond1_625 = icmp ugt i8* %_new_gep_112, %_local_stack_end_ptr_
  %_cond2_1_626 = icmp ugt i8* %_new_gep_112, %_parent_stack_end_ptr_
  %_cond2_2_627 = icmp ult i8* %_new_gep_112, %_parent_stack_start_ptr_
  %_cond2_628 = or i1 %_cond2_1_626, %_cond2_2_627
  %_cond4_629 = icmp ule i8* %_pot_address_in_parent_stack_624, %_parent_stack_end_ptr_
  %_cond1_n_cond2_630 = and i1 %_cond1_625, %_cond2_628
  %_cond1_n_cond2_cond3_631 = and i1 %_cond1_n_cond2_630, %_cond4_629
  %.v285 = select i1 %_cond1_n_cond2_cond3_631, i8* %_pot_address_in_parent_stack_624, i8* %_new_gep_112
  %162 = bitcast i8* %.v285 to i32*
  %_new_load_634 = load i32, i32* %162, align 4
  %_new_gep_115 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_111310, i64 -32
  %163 = bitcast i8* %_new_gep_115 to i32*
  store i32 %_new_load_634, i32* %163, align 4, !mcsema_real_eip !25
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_117311 = load i8*, i8** %67, align 8
  %_new_gep_118 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_117311, i64 -36
  %_ptr_to_int_635 = ptrtoint i8* %_new_gep_118 to i64
  %_offset_above_rbp_638 = sub i64 %_ptr_to_int_635, %1
  %_pot_address_in_parent_stack_639 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_638
  %_cond1_640 = icmp ugt i8* %_new_gep_118, %_local_stack_end_ptr_
  %_cond2_1_641 = icmp ugt i8* %_new_gep_118, %_parent_stack_end_ptr_
  %_cond2_2_642 = icmp ult i8* %_new_gep_118, %_parent_stack_start_ptr_
  %_cond2_643 = or i1 %_cond2_1_641, %_cond2_2_642
  %_cond4_644 = icmp ule i8* %_pot_address_in_parent_stack_639, %_parent_stack_end_ptr_
  %_cond1_n_cond2_645 = and i1 %_cond1_640, %_cond2_643
  %_cond1_n_cond2_cond3_646 = and i1 %_cond1_n_cond2_645, %_cond4_644
  %.v286 = select i1 %_cond1_n_cond2_cond3_646, i8* %_pot_address_in_parent_stack_639, i8* %_new_gep_118
  %164 = bitcast i8* %.v286 to i32*
  %_new_load_649 = load i32, i32* %164, align 4
  %165 = sext i32 %_new_load_649 to i64, !mcsema_real_eip !26
  %_new_gep_121 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_117311, i64 -64
  %_new_gep_122 = getelementptr i8, i8* %_new_gep_121, i64 %165
  %_ptr_to_int_650 = ptrtoint i8* %_new_gep_122 to i64
  %_offset_above_rbp_652 = sub i64 %_ptr_to_int_650, %1
  %_pot_address_in_parent_stack_653 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_652
  %_cond1_654 = icmp ugt i8* %_new_gep_122, %_local_stack_end_ptr_
  %_cond2_1_655 = icmp ugt i8* %_new_gep_122, %_parent_stack_end_ptr_
  %_cond2_2_656 = icmp ult i8* %_new_gep_122, %_parent_stack_start_ptr_
  %_cond2_657 = or i1 %_cond2_1_655, %_cond2_2_656
  %_cond4_658 = icmp ule i8* %_pot_address_in_parent_stack_653, %_parent_stack_end_ptr_
  %_cond1_n_cond2_659 = and i1 %_cond1_654, %_cond2_657
  %_cond1_n_cond2_cond3_660 = and i1 %_cond1_n_cond2_659, %_cond4_658
  %_address_in_parent_stack_661. = select i1 %_cond1_n_cond2_cond3_660, i8* %_pot_address_in_parent_stack_653, i8* %_new_gep_122
  %_new_load_662 = load i8, i8* %_address_in_parent_stack_661., align 1
  %166 = sext i8 %_new_load_662 to i32, !mcsema_real_eip !27
  %167 = add nsw i32 %166, -97
  %168 = zext i32 %167 to i64, !mcsema_real_eip !28
  %169 = add nsw i32 %166, -119
  %170 = xor i32 %169, %167, !mcsema_real_eip !29
  %171 = icmp eq i32 %169, 0, !mcsema_real_eip !29
  %172 = icmp ult i32 %167, 22, !mcsema_real_eip !29
  %_new_gep_125 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_117311, i64 -80
  %_allin_new_bt_126 = bitcast i8* %_new_gep_125 to i64*
  store i64 %168, i64* %_allin_new_bt_126, align 8, !mcsema_real_eip !30
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_127312 = load i8*, i8** %67, align 8
  %_new_gep_128 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_127312, i64 -84
  %173 = bitcast i8* %_new_gep_128 to i32*
  store i32 %169, i32* %173, align 4, !mcsema_real_eip !31
  %.demorgan = or i1 %172, %171
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_130313 = load i8*, i8** %67, align 8
  br i1 %.demorgan, label %block_0x148, label %block_0x298, !mcsema_real_eip !32

block_0x148:                                      ; preds = %block_0x11e
  %174 = ptrtoint i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_130313 to i64
  %175 = and i32 %170, %167, !mcsema_real_eip !29
  %176 = icmp slt i32 %175, 0
  %177 = icmp slt i8 %_new_load_662, 119
  %178 = trunc i32 %169 to i8, !mcsema_real_eip !29
  %179 = tail call i8 @llvm.ctpop.i8(i8 %178), !mcsema_real_eip !29
  %180 = and i8 %179, 1
  %181 = icmp eq i8 %180, 0
  %182 = and i32 %170, 16
  %183 = icmp eq i32 %182, 0
  %_new_gep_133 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_130313, i64 -80
  %_ptr_to_int_663 = ptrtoint i8* %_new_gep_133 to i64
  %_offset_above_rbp_666 = sub i64 %_ptr_to_int_663, %1
  %_pot_address_in_parent_stack_667 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_666
  %_cond1_668 = icmp ugt i8* %_new_gep_133, %_local_stack_end_ptr_
  %_cond2_1_669 = icmp ugt i8* %_new_gep_133, %_parent_stack_end_ptr_
  %_cond2_2_670 = icmp ult i8* %_new_gep_133, %_parent_stack_start_ptr_
  %_cond2_671 = or i1 %_cond2_1_669, %_cond2_2_670
  %_cond4_672 = icmp ule i8* %_pot_address_in_parent_stack_667, %_parent_stack_end_ptr_
  %_cond1_n_cond2_673 = and i1 %_cond1_668, %_cond2_671
  %_cond1_n_cond2_cond3_674 = and i1 %_cond1_n_cond2_673, %_cond4_672
  %.v293 = select i1 %_cond1_n_cond2_cond3_674, i8* %_pot_address_in_parent_stack_667, i8* %_new_gep_133
  %184 = bitcast i8* %.v293 to i64*
  %_new_load_677 = load i64, i64* %184, align 8
  %185 = shl i64 %_new_load_677, 3
  %186 = add i64 %185, ptrtoint (%0* @data_0x2a1 to i64), !mcsema_real_eip !35
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !35
  %_ptr_bt_680 = inttoptr i64 %186 to i8*
  %_offset_above_rbp_681 = sub i64 %186, %1
  %_pot_address_in_parent_stack_682 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_681
  %_cond1_683 = icmp ugt i8* %_ptr_bt_680, %_local_stack_end_ptr_
  %_cond2_1_684 = icmp ugt i8* %_ptr_bt_680, %_parent_stack_end_ptr_
  %_cond2_2_685 = icmp ult i8* %_ptr_bt_680, %_parent_stack_start_ptr_
  %_cond2_686 = or i1 %_cond2_1_684, %_cond2_2_685
  %_cond4_687 = icmp ule i8* %_pot_address_in_parent_stack_682, %_parent_stack_end_ptr_
  %_cond1_n_cond2_688 = and i1 %_cond1_683, %_cond2_686
  %_cond1_n_cond2_cond3_689 = and i1 %_cond4_687, %_cond1_n_cond2_688
  %_address_in_parent_stack_bt_691 = bitcast i8* %_pot_address_in_parent_stack_682 to i64*
  %188 = select i1 %_cond1_n_cond2_cond3_689, i64* %_address_in_parent_stack_bt_691, i64* %187
  %_new_load_692 = load i64, i64* %188, align 8
  store i64 %_new_load_677, i64* %RAX, align 8, !mcsema_real_eip !36
  store i64 %3, i64* %RBX, align 8, !mcsema_real_eip !36
  store i64 %_new_load_692, i64* %RCX, align 8, !mcsema_real_eip !36
  store i64 %123, i64* %RDX, align 8, !mcsema_real_eip !36
  store i64 %4, i64* %RSI, align 8, !mcsema_real_eip !36
  store i64 %5, i64* %RDI, align 8, !mcsema_real_eip !36
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_135294 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  store volatile i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_135294, i64* %RSP, align 8
  store volatile i64 %174, i64* %RBP, align 8
  store i64 %6, i64* %R8, align 8, !mcsema_real_eip !36
  store i64 %7, i64* %R9, align 8, !mcsema_real_eip !36
  store i64 %8, i64* %R10, align 8, !mcsema_real_eip !36
  store i64 %9, i64* %R11, align 8, !mcsema_real_eip !36
  store i64 %10, i64* %R12, align 8, !mcsema_real_eip !36
  store i64 %11, i64* %R13, align 8, !mcsema_real_eip !36
  store i64 %12, i64* %R14, align 8, !mcsema_real_eip !36
  store i64 %13, i64* %R15, align 8, !mcsema_real_eip !36
  store i64 %14, i64* %RIP, align 8, !mcsema_real_eip !36
  store i1 %172, i1* %CF, align 1, !mcsema_real_eip !36
  store i1 %181, i1* %PF, align 1, !mcsema_real_eip !36
  store i1 %183, i1* %AF, align 1, !mcsema_real_eip !36
  store i1 %171, i1* %ZF, align 1, !mcsema_real_eip !36
  store i1 %177, i1* %SF, align 1, !mcsema_real_eip !36
  store i1 %176, i1* %OF, align 1, !mcsema_real_eip !36
  store i1 %15, i1* %DF, align 1, !mcsema_real_eip !36
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* nonnull %18, i32 128, i32 8, i1 false), !mcsema_real_eip !36
  store i1 %19, i1* %FPU_B, align 1, !mcsema_real_eip !36
  store i1 %20, i1* %FPU_C3, align 1, !mcsema_real_eip !36
  store i3 %21, i3* %FPU_TOP, align 1, !mcsema_real_eip !36
  store i1 %22, i1* %FPU_C2, align 1, !mcsema_real_eip !36
  store i1 %23, i1* %FPU_C1, align 1, !mcsema_real_eip !36
  store i1 %24, i1* %FPU_C0, align 1, !mcsema_real_eip !36
  store i1 %25, i1* %FPU_ES, align 1, !mcsema_real_eip !36
  store i1 %26, i1* %FPU_SF, align 1, !mcsema_real_eip !36
  store i1 %27, i1* %FPU_PE, align 1, !mcsema_real_eip !36
  store i1 %28, i1* %FPU_UE, align 1, !mcsema_real_eip !36
  store i1 %29, i1* %FPU_OE, align 1, !mcsema_real_eip !36
  store i1 %30, i1* %FPU_ZE, align 1, !mcsema_real_eip !36
  store i1 %31, i1* %FPU_DE, align 1, !mcsema_real_eip !36
  store i1 %32, i1* %FPU_IE, align 1, !mcsema_real_eip !36
  store i1 %33, i1* %FPU_X, align 1, !mcsema_real_eip !36
  store i2 %34, i2* %FPU_RC, align 1, !mcsema_real_eip !36
  store i2 %35, i2* %FPU_PC, align 1, !mcsema_real_eip !36
  store i1 %36, i1* %FPU_PM, align 1, !mcsema_real_eip !36
  store i1 %37, i1* %FPU_UM, align 1, !mcsema_real_eip !36
  store i1 %38, i1* %FPU_OM, align 1, !mcsema_real_eip !36
  store i1 %39, i1* %FPU_ZM, align 1, !mcsema_real_eip !36
  store i1 %40, i1* %FPU_DM, align 1, !mcsema_real_eip !36
  store i1 %41, i1* %FPU_IM, align 1, !mcsema_real_eip !36
  %_ptr_to_int_693 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_695 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_696 = sub i64 %_ptr_to_int_693, %1
  %_pot_address_in_parent_stack_697 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_696
  %_cond1_698 = icmp ugt i8* %_ptr_bt_695, %_local_stack_end_ptr_
  %_cond2_1_699 = icmp ugt i8* %_ptr_bt_695, %_parent_stack_end_ptr_
  %_cond2_2_700 = icmp ult i8* %_ptr_bt_695, %_parent_stack_start_ptr_
  %_cond2_701 = or i1 %_cond2_1_699, %_cond2_2_700
  %_cond4_702 = icmp ule i8* %_pot_address_in_parent_stack_697, %_parent_stack_end_ptr_
  %_cond1_n_cond2_703 = and i1 %_cond1_698, %_cond2_701
  %_cond1_n_cond2_cond3_704 = and i1 %_cond1_n_cond2_703, %_cond4_702
  %_address_in_parent_stack_bt_706 = bitcast i8* %_pot_address_in_parent_stack_697 to i64*
  %189 = select i1 %_cond1_n_cond2_cond3_704, i64* %_address_in_parent_stack_bt_706, i64* %FPU_TAG_val
  %_new_load_707 = load i64, i64* %189, align 8
  store i64 %_new_load_707, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !36
  store i64 %46, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !36
  store i16 %47, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !36
  store i64 %48, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !36
  store i128 %49, i128* %XMM0, align 1, !mcsema_real_eip !36
  store i128 %50, i128* %XMM1, align 1, !mcsema_real_eip !36
  store i128 %51, i128* %XMM2, align 1, !mcsema_real_eip !36
  store i128 %52, i128* %XMM3, align 1, !mcsema_real_eip !36
  store i128 %53, i128* %XMM4, align 1, !mcsema_real_eip !36
  store i128 %54, i128* %XMM5, align 1, !mcsema_real_eip !36
  store i128 %55, i128* %XMM6, align 1, !mcsema_real_eip !36
  store i128 %56, i128* %XMM7, align 1, !mcsema_real_eip !36
  store i128 %57, i128* %XMM8, align 1, !mcsema_real_eip !36
  store i128 %58, i128* %XMM9, align 1, !mcsema_real_eip !36
  store i128 %59, i128* %XMM10, align 1, !mcsema_real_eip !36
  store i128 %60, i128* %XMM11, align 1, !mcsema_real_eip !36
  store i128 %61, i128* %XMM12, align 1, !mcsema_real_eip !36
  store i128 %62, i128* %XMM13, align 1, !mcsema_real_eip !36
  store i128 %63, i128* %XMM14, align 1, !mcsema_real_eip !36
  store i128 %64, i128* %XMM15, align 1, !mcsema_real_eip !36
  store i64 %65, i64* %STACK_BASE, align 1, !mcsema_real_eip !36
  store i64 %66, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !36
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
!2 = !{i64 176, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 207, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!4 = !{i64 214, [21 x i8] c"\09movl\09%edi, -8(%rbp)\00"}
!5 = !{i64 217, [22 x i8] c"\09movq\09%rsi, -16(%rbp)\00"}
!6 = !{i64 221, [20 x i8] c"\09movl\09$0, -36(%rbp)\00"}
!7 = !{i64 228, [20 x i8] c"\09movl\09$1, -20(%rbp)\00"}
!8 = !{i64 235, [20 x i8] c"\09movl\09$1, -24(%rbp)\00"}
!9 = !{i64 242, [24 x i8] c"\09movslq\09-24(%rbp), %rsi\00"}
!10 = !{i64 246, [18 x i8] c"\09imulq\09 $11, %rsi\00"}
!11 = !{i64 253, [24 x i8] c"\09movslq\09-20(%rbp), %rsi\00"}
!12 = !{i64 257, [22 x i8] c"\09movb\09$88, (%r9,%rsi)\00"}
!13 = !{i64 267, [9 x i8] c"\09callq\090\00"}
!14 = !{i64 272, [22 x i8] c"\09movq\09%rax, -72(%rbp)\00"}
!15 = !{i64 276, [21 x i8] c"\09cmpl\09$28, -36(%rbp)\00"}
!16 = !{i64 280, [9 x i8] c"\09jge\09371\00"}
!17 = !{i64 657, [19 x i8] c"\09movl\09$1, -4(%rbp)\00"}
!18 = !{i64 664, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!19 = !{i64 667, [16 x i8] c"\09addq\09$96, %rsp\00"}
!20 = !{i64 671, [11 x i8] c"\09popq\09%rbp\00"}
!21 = !{i64 672, [6 x i8] c"\09retq\00"}
!22 = !{i64 286, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!23 = !{i64 289, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
!24 = !{i64 292, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!25 = !{i64 295, [22 x i8] c"\09movl\09%eax, -32(%rbp)\00"}
!26 = !{i64 298, [24 x i8] c"\09movslq\09-36(%rbp), %rcx\00"}
!27 = !{i64 302, [29 x i8] c"\09movsbl\09-64(%rbp,%rcx), %eax\00"}
!28 = !{i64 307, [17 x i8] c"\09addl\09$-97, %eax\00"}
!29 = !{i64 312, [16 x i8] c"\09subl\09$22, %eax\00"}
!30 = !{i64 315, [22 x i8] c"\09movq\09%rcx, -80(%rbp)\00"}
!31 = !{i64 319, [22 x i8] c"\09movl\09%eax, -84(%rbp)\00"}
!32 = !{i64 322, [7 x i8] c"\09ja\0970\00"}
!33 = !{i64 398, [19 x i8] c"\09movl\09$1, -4(%rbp)\00"}
!34 = !{i64 328, [22 x i8] c"\09movq\09-80(%rbp), %rax\00"}
!35 = !{i64 332, [22 x i8] c"\09movq\09(,%rax,8), %rcx\00"}
!36 = !{i64 340, [12 x i8] c"\09jmpq\09*%rcx\00"}
!37 = !{i64 370, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!38 = !{i64 376, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!39 = !{i64 420, [24 x i8] c"\09movslq\09-24(%rbp), %rcx\00"}
!40 = !{i64 424, [18 x i8] c"\09imulq\09 $11, %rcx\00"}
!41 = !{i64 431, [24 x i8] c"\09movslq\09-20(%rbp), %rcx\00"}
!42 = !{i64 435, [26 x i8] c"\09movsbl\09(%rax,%rcx), %edx\00"}
!43 = !{i64 584, [8 x i8] c"\09jne\0924\00"}
!44 = !{i64 502, [8 x i8] c"\09jne\0958\00"}
!45 = !{i64 569, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!46 = !{i64 575, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!47 = !{i64 624, [24 x i8] c"\09movslq\09-24(%rbp), %rcx\00"}
!48 = !{i64 628, [18 x i8] c"\09imulq\09 $11, %rcx\00"}
!49 = !{i64 635, [24 x i8] c"\09movslq\09-20(%rbp), %rcx\00"}
!50 = !{i64 639, [23 x i8] c"\09movb\09$88, (%rax,%rcx)\00"}
!51 = !{i64 646, [15 x i8] c"\09addl\09$1, %edx\00"}
!52 = !{i64 649, [22 x i8] c"\09movl\09%edx, -36(%rbp)\00"}
!53 = !{i64 596, [8 x i8] c"\09jne\0912\00"}
!54 = !{i64 560, [7 x i8] c"\09jl\0912\00"}
!55 = !{i64 384, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!56 = !{i64 390, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!57 = !{i64 356, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!58 = !{i64 362, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!59 = !{i64 342, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!60 = !{i64 348, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
