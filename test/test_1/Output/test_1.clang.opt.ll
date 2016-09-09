; ModuleID = 'Output/test_1.clang.opt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  %STi_val.i.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !3
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %STi_val.i.0..sroa_cast)
  %RAX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !3
  %RBX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !3
  %1 = bitcast %struct.regs* %0 to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RCX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !3
  %3 = load i64* %RCX.i, align 8, !mcsema_real_eip !3
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !3
  %4 = load i64* %RDX.i, align 8, !mcsema_real_eip !3
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !3
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !3
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !3
  %5 = load i64* %RSP.i, align 8, !mcsema_real_eip !3
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !3
  %6 = load i64* %RBP.i, align 8, !mcsema_real_eip !3
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !3
  %R9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !3
  %7 = bitcast i64* %R8.i to <2 x i64>*
  %8 = load <2 x i64>* %7, align 8
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !3
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
  %9 = bitcast i64* %R10.i to <2 x i64>*
  %10 = load <2 x i64>* %9, align 8
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !3
  %11 = bitcast i64* %R12.i to <2 x i64>*
  %12 = load <2 x i64>* %11, align 8
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !3
  %13 = bitcast i64* %R14.i to <2 x i64>*
  %14 = load <2 x i64>* %13, align 8
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %15 = load i64* %RIP.i, align 8, !mcsema_real_eip !3
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !3
  %16 = load i1* %DF.i, align 1, !mcsema_real_eip !3
  %17 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !3
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast, i8* %18, i32 128, i32 4, i1 false) #0, !mcsema_real_eip !3
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !3
  %19 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !3
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !3
  %20 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !3
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !3
  %21 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !3
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !3
  %22 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !3
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !3
  %23 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !3
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !3
  %24 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !3
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !3
  %25 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !3
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !3
  %26 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !3
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !3
  %27 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !3
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !3
  %28 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !3
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !3
  %29 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !3
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !3
  %30 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !3
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !3
  %31 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !3
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !3
  %32 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !3
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !3
  %33 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !3
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !3
  %34 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !3
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !3
  %35 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !3
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !3
  %36 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !3
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !3
  %37 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !3
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !3
  %38 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !3
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !3
  %39 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !3
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !3
  %40 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !3
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !3
  %41 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !3
  %42 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !3
  %43 = bitcast i8* %42 to i64*
  %44 = load i64* %43, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !3
  %45 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !3
  %46 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !3
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !3
  %47 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !3
  %48 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !3
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %49 = load i128* %XMM0.i, align 1, !mcsema_real_eip !3
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %50 = load i128* %XMM1.i, align 1, !mcsema_real_eip !3
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %51 = load i128* %XMM2.i, align 1, !mcsema_real_eip !3
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %52 = load i128* %XMM3.i, align 1, !mcsema_real_eip !3
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %53 = load i128* %XMM4.i, align 1, !mcsema_real_eip !3
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %54 = load i128* %XMM5.i, align 1, !mcsema_real_eip !3
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %55 = load i128* %XMM6.i, align 1, !mcsema_real_eip !3
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %56 = load i128* %XMM7.i, align 1, !mcsema_real_eip !3
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %57 = load i128* %XMM8.i, align 1, !mcsema_real_eip !3
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %58 = load i128* %XMM9.i, align 1, !mcsema_real_eip !3
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %59 = load i128* %XMM10.i, align 1, !mcsema_real_eip !3
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %60 = load i128* %XMM11.i, align 1, !mcsema_real_eip !3
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %61 = load i128* %XMM12.i, align 1, !mcsema_real_eip !3
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %62 = load i128* %XMM13.i, align 1, !mcsema_real_eip !3
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %63 = load i128* %XMM14.i, align 1, !mcsema_real_eip !3
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %64 = load i128* %XMM15.i, align 1, !mcsema_real_eip !3
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %65 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %66 = load <2 x i64>* %65, align 8
  %67 = add i64 %5, -8
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !3
  store i64 %6, i64* %68, align 8, !mcsema_real_eip !3
  %69 = add i64 %5, -24
  %70 = xor i64 %69, %67, !mcsema_real_eip !4
  %71 = and i64 %70, 16
  %72 = icmp eq i64 %71, 0
  %73 = trunc i64 %69 to i8, !mcsema_real_eip !4
  %74 = tail call i8 @llvm.ctpop.i8(i8 %73) #0, !mcsema_real_eip !4
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  %77 = icmp eq i64 %69, 0, !mcsema_real_eip !4
  %78 = icmp slt i64 %69, 0
  %79 = icmp ult i64 %67, 16, !mcsema_real_eip !4
  %80 = and i64 %70, %67, !mcsema_real_eip !4
  %81 = icmp slt i64 %80, 0
  %82 = add i64 %5, -12, !mcsema_real_eip !5
  %83 = inttoptr i64 %82 to i32*
  store i32 0, i32* %83, align 4, !mcsema_real_eip !5
  %84 = add i64 %5, -32
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !6
  store i64 -4981261766360305936, i64* %85, align 8, !mcsema_real_eip !6
  store <2 x i64> %2, <2 x i64>* %1, align 8
  store i64 %3, i64* %RCX.i, align 8, !mcsema_real_eip !6
  store i64 %4, i64* %RDX.i, align 8, !mcsema_real_eip !6
  store i64 20, i64* %RSI.i, align 8, !mcsema_real_eip !6
  store i64 10, i64* %RDI.i, align 8, !mcsema_real_eip !6
  store i64 %84, i64* %RSP.i, align 8, !mcsema_real_eip !6
  store i64 %67, i64* %RBP.i, align 8, !mcsema_real_eip !6
  store <2 x i64> %8, <2 x i64>* %7, align 8
  store <2 x i64> %10, <2 x i64>* %9, align 8
  store <2 x i64> %12, <2 x i64>* %11, align 8
  store <2 x i64> %14, <2 x i64>* %13, align 8
  store i64 %15, i64* %RIP.i, align 8, !mcsema_real_eip !6
  store i1 %79, i1* %CF.i, align 1, !mcsema_real_eip !6
  store i1 %76, i1* %PF.i, align 1, !mcsema_real_eip !6
  store i1 %72, i1* %AF.i, align 1, !mcsema_real_eip !6
  store i1 %77, i1* %ZF.i, align 1, !mcsema_real_eip !6
  store i1 %78, i1* %SF.i, align 1, !mcsema_real_eip !6
  store i1 %81, i1* %OF.i, align 1, !mcsema_real_eip !6
  store i1 %16, i1* %DF.i, align 1, !mcsema_real_eip !6
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !6
  store i1 %19, i1* %FPU_B.i, align 1, !mcsema_real_eip !6
  store i1 %20, i1* %FPU_C3.i, align 1, !mcsema_real_eip !6
  store i3 %21, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !6
  store i1 %22, i1* %FPU_C2.i, align 1, !mcsema_real_eip !6
  store i1 %23, i1* %FPU_C1.i, align 1, !mcsema_real_eip !6
  store i1 %24, i1* %FPU_C0.i, align 1, !mcsema_real_eip !6
  store i1 %25, i1* %FPU_ES.i, align 1, !mcsema_real_eip !6
  store i1 %26, i1* %FPU_SF.i, align 1, !mcsema_real_eip !6
  store i1 %27, i1* %FPU_PE.i, align 1, !mcsema_real_eip !6
  store i1 %28, i1* %FPU_UE.i, align 1, !mcsema_real_eip !6
  store i1 %29, i1* %FPU_OE.i, align 1, !mcsema_real_eip !6
  store i1 %30, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !6
  store i1 %31, i1* %FPU_DE.i, align 1, !mcsema_real_eip !6
  store i1 %32, i1* %FPU_IE.i, align 1, !mcsema_real_eip !6
  store i1 %33, i1* %FPU_X.i, align 1, !mcsema_real_eip !6
  store i2 %34, i2* %FPU_RC.i, align 1, !mcsema_real_eip !6
  store i2 %35, i2* %FPU_PC.i, align 1, !mcsema_real_eip !6
  store i1 %36, i1* %FPU_PM.i, align 1, !mcsema_real_eip !6
  store i1 %37, i1* %FPU_UM.i, align 1, !mcsema_real_eip !6
  store i1 %38, i1* %FPU_OM.i, align 1, !mcsema_real_eip !6
  store i1 %39, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !6
  store i1 %40, i1* %FPU_DM.i, align 1, !mcsema_real_eip !6
  store i1 %41, i1* %FPU_IM.i, align 1, !mcsema_real_eip !6
  store i64 %44, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !6
  store i64 %46, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !6
  store i16 %47, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !6
  store i64 %48, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !6
  store i128 %49, i128* %XMM0.i, align 1, !mcsema_real_eip !6
  store i128 %50, i128* %XMM1.i, align 1, !mcsema_real_eip !6
  store i128 %51, i128* %XMM2.i, align 1, !mcsema_real_eip !6
  store i128 %52, i128* %XMM3.i, align 1, !mcsema_real_eip !6
  store i128 %53, i128* %XMM4.i, align 1, !mcsema_real_eip !6
  store i128 %54, i128* %XMM5.i, align 1, !mcsema_real_eip !6
  store i128 %55, i128* %XMM6.i, align 1, !mcsema_real_eip !6
  store i128 %56, i128* %XMM7.i, align 1, !mcsema_real_eip !6
  store i128 %57, i128* %XMM8.i, align 1, !mcsema_real_eip !6
  store i128 %58, i128* %XMM9.i, align 1, !mcsema_real_eip !6
  store i128 %59, i128* %XMM10.i, align 1, !mcsema_real_eip !6
  store i128 %60, i128* %XMM11.i, align 1, !mcsema_real_eip !6
  store i128 %61, i128* %XMM12.i, align 1, !mcsema_real_eip !6
  store i128 %62, i128* %XMM13.i, align 1, !mcsema_real_eip !6
  store i128 %63, i128* %XMM14.i, align 1, !mcsema_real_eip !6
  store i128 %64, i128* %XMM15.i, align 1, !mcsema_real_eip !6
  store <2 x i64> %66, <2 x i64>* %65, align 1
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast.i, i8* %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false) #0
  %86 = add i64 %5, -40
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !2
  store i64 %67, i64* %87, align 8, !mcsema_real_eip !2
  %88 = add i64 %5, -44, !mcsema_real_eip !7
  %89 = inttoptr i64 %88 to i32*
  store i32 10, i32* %89, align 4, !mcsema_real_eip !7
  %90 = add i64 %5, -48, !mcsema_real_eip !8
  %91 = inttoptr i64 %90 to i32*
  store i32 20, i32* %91, align 4, !mcsema_real_eip !8
  %92 = load i32* %89, align 4, !mcsema_real_eip !9
  %93 = add i32 %92, 20
  %94 = zext i32 %93 to i64, !mcsema_real_eip !10
  %95 = add i64 %5, -52, !mcsema_real_eip !11
  %96 = inttoptr i64 %95 to i32*
  store i32 %93, i32* %96, align 4, !mcsema_real_eip !11
  %97 = load i32* %89, align 4, !mcsema_real_eip !12
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %entry.block_0x6a_crit_edge.i.i, label %block_0x20.preheader.i.i, !mcsema_real_eip !13

entry.block_0x6a_crit_edge.i.i:                   ; preds = %driverBlockRaw
  %99 = trunc i32 %97 to i8, !mcsema_real_eip !12
  %100 = tail call i8 @llvm.ctpop.i8(i8 %99) #0, !mcsema_real_eip !12
  %.pre.i.i = add i64 %5, -56, !mcsema_real_eip !14
  %.pre31.i.i = inttoptr i64 %.pre.i.i to i32*
  br label %sub_70.exit

block_0x20.preheader.i.i:                         ; preds = %driverBlockRaw
  %101 = add i64 %5, -60, !mcsema_real_eip !15
  %102 = inttoptr i64 %101 to i32*
  %103 = add i64 %5, -56, !mcsema_real_eip !16
  %104 = inttoptr i64 %103 to i32*
  br label %block_0x20.i.i

block_0x6a.loopexit.i.i:                          ; preds = %block_0x13.i.i
  %storemerge.i.i.lcssa = phi i32 [ %storemerge.i.i, %block_0x13.i.i ]
  %.lcssa = phi i64 [ %114, %block_0x13.i.i ]
  %105 = and i64 %.lcssa, 4294967295
  %106 = trunc i32 %storemerge.i.i.lcssa to i8, !mcsema_real_eip !12
  %107 = tail call i8 @llvm.ctpop.i8(i8 %106) #0, !mcsema_real_eip !12
  br label %sub_70.exit

block_0x20.i.i:                                   ; preds = %block_0x13.i.i, %block_0x20.preheader.i.i
  %108 = phi i32 [ %97, %block_0x20.preheader.i.i ], [ %storemerge.i.i, %block_0x13.i.i ]
  %109 = zext i32 %108 to i64, !mcsema_real_eip !17
  store i32 2, i32* %102, align 4, !mcsema_real_eip !15
  %110 = shl nuw i64 %109, 32
  %sext.i.i = ashr i64 %110, 63
  %111 = shl nsw i64 %sext.i.i, 32, !mcsema_real_eip !18
  %112 = sext i32 %108 to i64
  %113 = or i64 %111, %112, !mcsema_real_eip !18
  %114 = srem i64 %113, 2, !mcsema_real_eip !18
  %115 = trunc i64 %114 to i32, !mcsema_real_eip !19
  %116 = icmp eq i32 %115, 0, !mcsema_real_eip !19
  %117 = load i32* %96, align 4, !mcsema_real_eip !20
  br i1 %116, label %block_0x3f.i.i, label %block_0x4f.i.i, !mcsema_real_eip !21

block_0x4f.i.i:                                   ; preds = %block_0x20.i.i
  %118 = add i32 %117, -10
  store i32 %118, i32* %96, align 4, !mcsema_real_eip !22
  br label %block_0x13.i.i, !mcsema_real_eip !23

block_0x3f.i.i:                                   ; preds = %block_0x20.i.i
  %119 = add i32 %117, 10
  store i32 %119, i32* %104, align 4, !mcsema_real_eip !16
  br label %block_0x13.i.i, !mcsema_real_eip !23

block_0x13.i.i:                                   ; preds = %block_0x3f.i.i, %block_0x4f.i.i
  %storemerge.in.i.i = load i32* %89, align 4
  %storemerge.i.i = add i32 %storemerge.in.i.i, -1
  store i32 %storemerge.i.i, i32* %89, align 4
  %120 = icmp slt i32 %storemerge.i.i, 0
  br i1 %120, label %block_0x6a.loopexit.i.i, label %block_0x20.i.i, !mcsema_real_eip !13

sub_70.exit:                                      ; preds = %block_0x6a.loopexit.i.i, %entry.block_0x6a_crit_edge.i.i
  %.pre-phi32.i.i = phi i32* [ %.pre31.i.i, %entry.block_0x6a_crit_edge.i.i ], [ %104, %block_0x6a.loopexit.i.i ]
  %ZF_val.0.in.i.i = phi i32 [ %97, %entry.block_0x6a_crit_edge.i.i ], [ %storemerge.i.i.lcssa, %block_0x6a.loopexit.i.i ]
  %PF_val.0.in.in.i.i = phi i8 [ %100, %entry.block_0x6a_crit_edge.i.i ], [ %107, %block_0x6a.loopexit.i.i ]
  %RDX_val.0.i.i = phi i64 [ %4, %entry.block_0x6a_crit_edge.i.i ], [ %105, %block_0x6a.loopexit.i.i ]
  %RCX_val.0.i.i = phi i64 [ %3, %entry.block_0x6a_crit_edge.i.i ], [ 2, %block_0x6a.loopexit.i.i ]
  %PF_val.0.in.i.i = and i8 %PF_val.0.in.in.i.i, 1
  %PF_val.0.i.i = icmp eq i8 %PF_val.0.in.i.i, 0
  %ZF_val.0.i.i = icmp eq i32 %ZF_val.0.in.i.i, 0
  %121 = load i32* %.pre-phi32.i.i, align 4, !mcsema_real_eip !14
  %122 = zext i32 %121 to i64, !mcsema_real_eip !14
  %123 = load i64* %87, align 8, !mcsema_real_eip !24
  store i64 %122, i64* %RAX.i, align 8, !mcsema_real_eip !25
  %124 = extractelement <2 x i64> %2, i32 1
  store i64 %124, i64* %RBX.i, align 8, !mcsema_real_eip !25
  store i64 %RCX_val.0.i.i, i64* %RCX.i, align 8, !mcsema_real_eip !25
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !25
  store i64 %94, i64* %RSI.i, align 8, !mcsema_real_eip !25
  store i64 10, i64* %RDI.i, align 8, !mcsema_real_eip !25
  store i64 %69, i64* %RSP.i, align 8, !mcsema_real_eip !25
  store i64 %123, i64* %RBP.i, align 8, !mcsema_real_eip !25
  store <2 x i64> %8, <2 x i64>* %7, align 8
  store <2 x i64> %10, <2 x i64>* %9, align 8
  store <2 x i64> %12, <2 x i64>* %11, align 8
  store <2 x i64> %14, <2 x i64>* %13, align 8
  store i64 %15, i64* %RIP.i, align 8, !mcsema_real_eip !25
  store i1 false, i1* %CF.i, align 1, !mcsema_real_eip !25
  store i1 %PF_val.0.i.i, i1* %PF.i, align 1, !mcsema_real_eip !25
  store i1 false, i1* %AF.i, align 1, !mcsema_real_eip !25
  store i1 %ZF_val.0.i.i, i1* %ZF.i, align 1, !mcsema_real_eip !25
  store i1 true, i1* %SF.i, align 1, !mcsema_real_eip !25
  store i1 false, i1* %OF.i, align 1, !mcsema_real_eip !25
  store i1 %16, i1* %DF.i, align 1, !mcsema_real_eip !25
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !25
  store i1 %19, i1* %FPU_B.i, align 1, !mcsema_real_eip !25
  store i1 %20, i1* %FPU_C3.i, align 1, !mcsema_real_eip !25
  store i3 %21, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !25
  store i1 %22, i1* %FPU_C2.i, align 1, !mcsema_real_eip !25
  store i1 %23, i1* %FPU_C1.i, align 1, !mcsema_real_eip !25
  store i1 %24, i1* %FPU_C0.i, align 1, !mcsema_real_eip !25
  store i1 %25, i1* %FPU_ES.i, align 1, !mcsema_real_eip !25
  store i1 %26, i1* %FPU_SF.i, align 1, !mcsema_real_eip !25
  store i1 %27, i1* %FPU_PE.i, align 1, !mcsema_real_eip !25
  store i1 %28, i1* %FPU_UE.i, align 1, !mcsema_real_eip !25
  store i1 %29, i1* %FPU_OE.i, align 1, !mcsema_real_eip !25
  store i1 %30, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !25
  store i1 %31, i1* %FPU_DE.i, align 1, !mcsema_real_eip !25
  store i1 %32, i1* %FPU_IE.i, align 1, !mcsema_real_eip !25
  store i1 %33, i1* %FPU_X.i, align 1, !mcsema_real_eip !25
  store i2 %34, i2* %FPU_RC.i, align 1, !mcsema_real_eip !25
  store i2 %35, i2* %FPU_PC.i, align 1, !mcsema_real_eip !25
  store i1 %36, i1* %FPU_PM.i, align 1, !mcsema_real_eip !25
  store i1 %37, i1* %FPU_UM.i, align 1, !mcsema_real_eip !25
  store i1 %38, i1* %FPU_OM.i, align 1, !mcsema_real_eip !25
  store i1 %39, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !25
  store i1 %40, i1* %FPU_DM.i, align 1, !mcsema_real_eip !25
  store i1 %41, i1* %FPU_IM.i, align 1, !mcsema_real_eip !25
  store i64 %44, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !25
  store i64 %46, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !25
  store i16 %47, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !25
  store i64 %48, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !25
  store i128 %49, i128* %XMM0.i, align 1, !mcsema_real_eip !25
  store i128 %50, i128* %XMM1.i, align 1, !mcsema_real_eip !25
  store i128 %51, i128* %XMM2.i, align 1, !mcsema_real_eip !25
  store i128 %52, i128* %XMM3.i, align 1, !mcsema_real_eip !25
  store i128 %53, i128* %XMM4.i, align 1, !mcsema_real_eip !25
  store i128 %54, i128* %XMM5.i, align 1, !mcsema_real_eip !25
  store i128 %55, i128* %XMM6.i, align 1, !mcsema_real_eip !25
  store i128 %56, i128* %XMM7.i, align 1, !mcsema_real_eip !25
  store i128 %57, i128* %XMM8.i, align 1, !mcsema_real_eip !25
  store i128 %58, i128* %XMM9.i, align 1, !mcsema_real_eip !25
  store i128 %59, i128* %XMM10.i, align 1, !mcsema_real_eip !25
  store i128 %60, i128* %XMM11.i, align 1, !mcsema_real_eip !25
  store i128 %61, i128* %XMM12.i, align 1, !mcsema_real_eip !25
  store i128 %62, i128* %XMM13.i, align 1, !mcsema_real_eip !25
  store i128 %63, i128* %XMM14.i, align 1, !mcsema_real_eip !25
  store i128 %64, i128* %XMM15.i, align 1, !mcsema_real_eip !25
  store <2 x i64> %66, <2 x i64>* %65, align 1
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast.i)
  %125 = bitcast <2 x i64> %8 to i128
  %trunc.i = trunc i128 %125 to i64
  %126 = lshr i128 %125, 64
  %127 = trunc i128 %126 to i64
  %128 = bitcast <2 x i64> %10 to i128
  %trunc80.i = trunc i128 %128 to i64
  %129 = lshr i128 %128, 64
  %130 = trunc i128 %129 to i64
  %131 = bitcast <2 x i64> %12 to i128
  %trunc81.i = trunc i128 %131 to i64
  %132 = lshr i128 %131, 64
  %133 = trunc i128 %132 to i64
  %134 = bitcast <2 x i64> %14 to i128
  %trunc82.i = trunc i128 %134 to i64
  %135 = lshr i128 %134, 64
  %136 = trunc i128 %135 to i64
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast, i8* %18, i32 128, i32 4, i1 false) #0, !mcsema_real_eip !6
  %137 = bitcast <2 x i64> %66 to i128
  %trunc83.i = trunc i128 %137 to i64
  %138 = lshr i128 %137, 64
  %139 = trunc i128 %138 to i64
  %140 = add i64 %123, -8, !mcsema_real_eip !26
  %141 = inttoptr i64 %140 to i32*
  store i32 %121, i32* %141, align 4, !mcsema_real_eip !26
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %69, i64 16) #0
  %142 = extractvalue { i64, i1 } %uadd.i, 0
  %143 = xor i64 %142, %69, !mcsema_real_eip !27
  %144 = and i64 %143, 16
  %145 = icmp eq i64 %144, 0
  %146 = icmp slt i64 %142, 0
  %147 = icmp eq i64 %142, 0, !mcsema_real_eip !27
  %148 = add i64 %5, 9223372036854775784
  %149 = and i64 %143, %148, !mcsema_real_eip !27
  %150 = icmp slt i64 %149, 0
  %151 = trunc i64 %142 to i8, !mcsema_real_eip !27
  %152 = tail call i8 @llvm.ctpop.i8(i8 %151) #0, !mcsema_real_eip !27
  %153 = and i8 %152, 1
  %154 = icmp eq i8 %153, 0
  %155 = extractvalue { i64, i1 } %uadd.i, 1
  %156 = inttoptr i64 %142 to i64*, !mcsema_real_eip !28
  %157 = load i64* %156, align 8, !mcsema_real_eip !28
  %158 = add i64 %142, 16, !mcsema_real_eip !29
  store i64 %122, i64* %RAX.i, align 8, !mcsema_real_eip !29
  store i64 %124, i64* %RBX.i, align 8, !mcsema_real_eip !29
  store i64 %RCX_val.0.i.i, i64* %RCX.i, align 8, !mcsema_real_eip !29
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !29
  store i64 %94, i64* %RSI.i, align 8, !mcsema_real_eip !29
  store i64 10, i64* %RDI.i, align 8, !mcsema_real_eip !29
  store i64 %158, i64* %RSP.i, align 8, !mcsema_real_eip !29
  store i64 %157, i64* %RBP.i, align 8, !mcsema_real_eip !29
  store i64 %trunc.i, i64* %R8.i, align 8, !mcsema_real_eip !29
  store i64 %127, i64* %R9.i, align 8, !mcsema_real_eip !29
  store i64 %trunc80.i, i64* %R10.i, align 8, !mcsema_real_eip !29
  store i64 %130, i64* %R11.i, align 8, !mcsema_real_eip !29
  store i64 %trunc81.i, i64* %R12.i, align 8, !mcsema_real_eip !29
  store i64 %133, i64* %R13.i, align 8, !mcsema_real_eip !29
  store i64 %trunc82.i, i64* %R14.i, align 8, !mcsema_real_eip !29
  store i64 %136, i64* %R15.i, align 8, !mcsema_real_eip !29
  store i64 %15, i64* %RIP.i, align 8, !mcsema_real_eip !29
  store i1 %155, i1* %CF.i, align 1, !mcsema_real_eip !29
  store i1 %154, i1* %PF.i, align 1, !mcsema_real_eip !29
  store i1 %145, i1* %AF.i, align 1, !mcsema_real_eip !29
  store i1 %147, i1* %ZF.i, align 1, !mcsema_real_eip !29
  store i1 %146, i1* %SF.i, align 1, !mcsema_real_eip !29
  store i1 %150, i1* %OF.i, align 1, !mcsema_real_eip !29
  store i1 %16, i1* %DF.i, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !29
  store i1 %19, i1* %FPU_B.i, align 1, !mcsema_real_eip !29
  store i1 %20, i1* %FPU_C3.i, align 1, !mcsema_real_eip !29
  store i3 %21, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !29
  store i1 %22, i1* %FPU_C2.i, align 1, !mcsema_real_eip !29
  store i1 %23, i1* %FPU_C1.i, align 1, !mcsema_real_eip !29
  store i1 %24, i1* %FPU_C0.i, align 1, !mcsema_real_eip !29
  store i1 %25, i1* %FPU_ES.i, align 1, !mcsema_real_eip !29
  store i1 %26, i1* %FPU_SF.i, align 1, !mcsema_real_eip !29
  store i1 %27, i1* %FPU_PE.i, align 1, !mcsema_real_eip !29
  store i1 %28, i1* %FPU_UE.i, align 1, !mcsema_real_eip !29
  store i1 %29, i1* %FPU_OE.i, align 1, !mcsema_real_eip !29
  store i1 %30, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !29
  store i1 %31, i1* %FPU_DE.i, align 1, !mcsema_real_eip !29
  store i1 %32, i1* %FPU_IE.i, align 1, !mcsema_real_eip !29
  store i1 %33, i1* %FPU_X.i, align 1, !mcsema_real_eip !29
  store i2 %34, i2* %FPU_RC.i, align 1, !mcsema_real_eip !29
  store i2 %35, i2* %FPU_PC.i, align 1, !mcsema_real_eip !29
  store i1 %36, i1* %FPU_PM.i, align 1, !mcsema_real_eip !29
  store i1 %37, i1* %FPU_UM.i, align 1, !mcsema_real_eip !29
  store i1 %38, i1* %FPU_OM.i, align 1, !mcsema_real_eip !29
  store i1 %39, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !29
  store i1 %40, i1* %FPU_DM.i, align 1, !mcsema_real_eip !29
  store i1 %41, i1* %FPU_IM.i, align 1, !mcsema_real_eip !29
  store i64 %44, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !29
  store i64 %46, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !29
  store i16 %47, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !29
  store i64 %48, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !29
  store i128 %49, i128* %XMM0.i, align 1, !mcsema_real_eip !29
  store i128 %50, i128* %XMM1.i, align 1, !mcsema_real_eip !29
  store i128 %51, i128* %XMM2.i, align 1, !mcsema_real_eip !29
  store i128 %52, i128* %XMM3.i, align 1, !mcsema_real_eip !29
  store i128 %53, i128* %XMM4.i, align 1, !mcsema_real_eip !29
  store i128 %54, i128* %XMM5.i, align 1, !mcsema_real_eip !29
  store i128 %55, i128* %XMM6.i, align 1, !mcsema_real_eip !29
  store i128 %56, i128* %XMM7.i, align 1, !mcsema_real_eip !29
  store i128 %57, i128* %XMM8.i, align 1, !mcsema_real_eip !29
  store i128 %58, i128* %XMM9.i, align 1, !mcsema_real_eip !29
  store i128 %59, i128* %XMM10.i, align 1, !mcsema_real_eip !29
  store i128 %60, i128* %XMM11.i, align 1, !mcsema_real_eip !29
  store i128 %61, i128* %XMM12.i, align 1, !mcsema_real_eip !29
  store i128 %62, i128* %XMM13.i, align 1, !mcsema_real_eip !29
  store i128 %63, i128* %XMM14.i, align 1, !mcsema_real_eip !29
  store i128 %64, i128* %XMM15.i, align 1, !mcsema_real_eip !29
  store i64 %trunc83.i, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !29
  store i64 %139, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !29
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #0

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 112, [12 x i8] c"\09pushq\09%rbp\00"}
!4 = metadata !{i64 116, [16 x i8] c"\09subq\09$16, %rsp\00"}
!5 = metadata !{i64 130, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!6 = metadata !{i64 137, [12 x i8] c"\09callq\09-142\00"}
!7 = metadata !{i64 4, [21 x i8] c"\09movl\09%edi, -4(%rbp)\00"}
!8 = metadata !{i64 7, [21 x i8] c"\09movl\09%esi, -8(%rbp)\00"}
!9 = metadata !{i64 10, [21 x i8] c"\09movl\09-4(%rbp), %esi\00"}
!10 = metadata !{i64 13, [21 x i8] c"\09addl\09-8(%rbp), %esi\00"}
!11 = metadata !{i64 16, [22 x i8] c"\09movl\09%esi, -12(%rbp)\00"}
!12 = metadata !{i64 19, [19 x i8] c"\09cmpl\09$0, -4(%rbp)\00"}
!13 = metadata !{i64 26, [7 x i8] c"\09jl\0974\00"}
!14 = metadata !{i64 106, [22 x i8] c"\09movl\09-16(%rbp), %eax\00"}
!15 = metadata !{i64 40, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!16 = metadata !{i64 71, [22 x i8] c"\09movl\09%eax, -16(%rbp)\00"}
!17 = metadata !{i64 37, [21 x i8] c"\09movl\09-4(%rbp), %ecx\00"}
!18 = metadata !{i64 49, [12 x i8] c"\09idivl\09%ecx\00"}
!19 = metadata !{i64 51, [15 x i8] c"\09cmpl\09$0, %edx\00"}
!20 = metadata !{i64 79, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!21 = metadata !{i64 57, [8 x i8] c"\09jne\0916\00"}
!22 = metadata !{i64 87, [22 x i8] c"\09movl\09%eax, -12(%rbp)\00"}
!23 = metadata !{i64 101, [9 x i8] c"\09jmp\09-87\00"}
!24 = metadata !{i64 109, [11 x i8] c"\09popq\09%rbp\00"}
!25 = metadata !{i64 110, [6 x i8] c"\09retq\00"}
!26 = metadata !{i64 142, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!27 = metadata !{i64 148, [16 x i8] c"\09addq\09$16, %rsp\00"}
!28 = metadata !{i64 152, [11 x i8] c"\09popq\09%rbp\00"}
!29 = metadata !{i64 153, [6 x i8] c"\09retq\00"}
