; ModuleID = 'test_4_opt.bc'
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
  %1 = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %1)
  %RAX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !3
  %RBX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !3
  %2 = bitcast %struct.regs* %0 to <2 x i64>*
  %3 = load <2 x i64>* %2, align 8
  %RCX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !3
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !3
  %4 = bitcast i64* %RCX.i to <2 x i64>*
  %5 = load <2 x i64>* %4, align 8
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !3
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !3
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !3
  %6 = load i64* %RSP.i, align 8, !mcsema_real_eip !3
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !3
  %7 = load i64* %RBP.i, align 8, !mcsema_real_eip !3
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !3
  %R9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !3
  %8 = bitcast i64* %R8.i to <2 x i64>*
  %9 = load <2 x i64>* %8, align 8
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !3
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
  %10 = bitcast i64* %R10.i to <2 x i64>*
  %11 = load <2 x i64>* %10, align 8
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !3
  %12 = bitcast i64* %R12.i to <2 x i64>*
  %13 = load <2 x i64>* %12, align 8
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !3
  %14 = bitcast i64* %R14.i to <2 x i64>*
  %15 = load <2 x i64>* %14, align 8
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %16 = load i64* %RIP.i, align 8, !mcsema_real_eip !3
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !3
  %17 = load i1* %DF.i, align 1, !mcsema_real_eip !3
  %18 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !3
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %19, i32 128, i32 4, i1 false) #0, !mcsema_real_eip !3
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !3
  %20 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !3
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !3
  %21 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !3
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !3
  %22 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !3
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !3
  %23 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !3
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !3
  %24 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !3
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !3
  %25 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !3
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !3
  %26 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !3
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !3
  %27 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !3
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !3
  %28 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !3
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !3
  %29 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !3
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !3
  %30 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !3
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !3
  %31 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !3
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !3
  %32 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !3
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !3
  %33 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !3
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !3
  %34 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !3
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !3
  %35 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !3
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !3
  %36 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !3
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !3
  %37 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !3
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !3
  %38 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !3
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !3
  %39 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !3
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !3
  %40 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !3
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !3
  %41 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !3
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !3
  %42 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !3
  %43 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !3
  %44 = bitcast i8* %43 to i64*
  %45 = load i64* %44, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !3
  %46 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !3
  %47 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !3
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !3
  %48 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !3
  %49 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !3
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %50 = load i128* %XMM0.i, align 1, !mcsema_real_eip !3
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %51 = load i128* %XMM1.i, align 1, !mcsema_real_eip !3
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %52 = load i128* %XMM2.i, align 1, !mcsema_real_eip !3
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %53 = load i128* %XMM3.i, align 1, !mcsema_real_eip !3
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %54 = load i128* %XMM4.i, align 1, !mcsema_real_eip !3
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %55 = load i128* %XMM5.i, align 1, !mcsema_real_eip !3
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %56 = load i128* %XMM6.i, align 1, !mcsema_real_eip !3
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %57 = load i128* %XMM7.i, align 1, !mcsema_real_eip !3
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %58 = load i128* %XMM8.i, align 1, !mcsema_real_eip !3
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %59 = load i128* %XMM9.i, align 1, !mcsema_real_eip !3
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %60 = load i128* %XMM10.i, align 1, !mcsema_real_eip !3
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %61 = load i128* %XMM11.i, align 1, !mcsema_real_eip !3
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %62 = load i128* %XMM12.i, align 1, !mcsema_real_eip !3
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %63 = load i128* %XMM13.i, align 1, !mcsema_real_eip !3
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %64 = load i128* %XMM14.i, align 1, !mcsema_real_eip !3
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %65 = load i128* %XMM15.i, align 1, !mcsema_real_eip !3
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %66 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %67 = load <2 x i64>* %66, align 8
  %68 = add i64 %6, -8
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !3
  store i64 %7, i64* %69, align 8, !mcsema_real_eip !3
  %70 = add i64 %6, -24
  %71 = xor i64 %70, %68, !mcsema_real_eip !4
  %72 = and i64 %71, 16
  %73 = icmp eq i64 %72, 0
  %74 = trunc i64 %70 to i8, !mcsema_real_eip !4
  %75 = tail call i8 @llvm.ctpop.i8(i8 %74) #0, !mcsema_real_eip !4
  %76 = and i8 %75, 1
  %77 = icmp eq i8 %76, 0
  %78 = icmp eq i64 %70, 0, !mcsema_real_eip !4
  %79 = icmp slt i64 %70, 0
  %80 = icmp ult i64 %68, 16, !mcsema_real_eip !4
  %81 = and i64 %71, %68, !mcsema_real_eip !4
  %82 = icmp slt i64 %81, 0
  %83 = add i64 %6, -32
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !5
  store i64 -4981261766360305936, i64* %84, align 8, !mcsema_real_eip !5
  store <2 x i64> %3, <2 x i64>* %2, align 8
  store <2 x i64> %5, <2 x i64>* %4, align 8
  store i64 20, i64* %RSI.i, align 8, !mcsema_real_eip !5
  store i64 10, i64* %RDI.i, align 8, !mcsema_real_eip !5
  store i64 %83, i64* %RSP.i, align 8, !mcsema_real_eip !5
  store i64 %68, i64* %RBP.i, align 8, !mcsema_real_eip !5
  store <2 x i64> %9, <2 x i64>* %8, align 8
  store <2 x i64> %11, <2 x i64>* %10, align 8
  store <2 x i64> %13, <2 x i64>* %12, align 8
  store <2 x i64> %15, <2 x i64>* %14, align 8
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !5
  store i1 %80, i1* %CF.i, align 1, !mcsema_real_eip !5
  store i1 %77, i1* %PF.i, align 1, !mcsema_real_eip !5
  store i1 %73, i1* %AF.i, align 1, !mcsema_real_eip !5
  store i1 %78, i1* %ZF.i, align 1, !mcsema_real_eip !5
  store i1 %79, i1* %SF.i, align 1, !mcsema_real_eip !5
  store i1 %82, i1* %OF.i, align 1, !mcsema_real_eip !5
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !5
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %1, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !5
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !5
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !5
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !5
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !5
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !5
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !5
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !5
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !5
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !5
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !5
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !5
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !5
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !5
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !5
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !5
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !5
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !5
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !5
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !5
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !5
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !5
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !5
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !5
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !5
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !5
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !5
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !5
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !5
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !5
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !5
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !5
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !5
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !5
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !5
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !5
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !5
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !5
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !5
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !5
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !5
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !5
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !5
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !5
  store <2 x i64> %67, <2 x i64>* %66, align 1
  %85 = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %85)
  %86 = bitcast i64* %RBX.i to <2 x i64>*
  %87 = load <2 x i64>* %86, align 8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %85, i8* %1, i32 128, i32 16, i1 false) #0
  %88 = add i64 %6, -40
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !2
  store i64 %68, i64* %89, align 8, !mcsema_real_eip !2
  %90 = add i64 %6, -60, !mcsema_real_eip !6
  %91 = inttoptr i64 %90 to i32*
  store i32 10, i32* %91, align 4, !mcsema_real_eip !6
  %92 = add i64 %6, -64, !mcsema_real_eip !7
  %93 = inttoptr i64 %92 to i32*
  store i32 20, i32* %93, align 4, !mcsema_real_eip !7
  %94 = load i32* %91, align 4, !mcsema_real_eip !8
  %95 = zext i32 %94 to i64, !mcsema_real_eip !8
  %96 = add i32 %94, 20
  %97 = add i64 %6, -44, !mcsema_real_eip !9
  %98 = inttoptr i64 %97 to i32*
  store i32 %96, i32* %98, align 4, !mcsema_real_eip !9
  %99 = load i32* %91, align 4, !mcsema_real_eip !10
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %entry.block_0x3a_crit_edge.i.i, label %block_0x17.preheader.i.i, !mcsema_real_eip !11

entry.block_0x3a_crit_edge.i.i:                   ; preds = %driverBlockRaw
  %101 = trunc i32 %99 to i8, !mcsema_real_eip !10
  %102 = tail call i8 @llvm.ctpop.i8(i8 %101) #0, !mcsema_real_eip !10
  %.pre1.i.i = add i64 %6, -48, !mcsema_real_eip !12
  %.pre2.i.i = inttoptr i64 %.pre1.i.i to i32*
  br label %sub_3f.exit

block_0x17.preheader.i.i:                         ; preds = %driverBlockRaw
  %103 = add i64 %6, -48, !mcsema_real_eip !13
  %104 = inttoptr i64 %103 to i32*
  br label %block_0x17.i.i

block_0x17.i.i:                                   ; preds = %block_0x17.backedge.i.i, %block_0x17.preheader.i.i
  %105 = phi i32 [ %.pre.i.i, %block_0x17.backedge.i.i ], [ %96, %block_0x17.preheader.i.i ]
  %106 = phi i32 [ %121, %block_0x17.backedge.i.i ], [ %99, %block_0x17.preheader.i.i ]
  %107 = and i32 %106, 1, !mcsema_real_eip !14
  %108 = icmp eq i32 %107, 0, !mcsema_real_eip !14
  br i1 %108, label %block_0x21.i.i, label %block_0x2c.i.i, !mcsema_real_eip !15

block_0x2c.i.i:                                   ; preds = %block_0x17.i.i
  %109 = add i32 %105, -10
  store i32 %109, i32* %98, align 4, !mcsema_real_eip !16
  %110 = load i32* %91, align 4, !mcsema_real_eip !17
  %111 = add i32 %110, -1
  %112 = trunc i32 %111 to i8, !mcsema_real_eip !17
  %113 = tail call i8 @llvm.ctpop.i8(i8 %112) #0, !mcsema_real_eip !17
  store i32 %111, i32* %91, align 4, !mcsema_real_eip !17
  %114 = icmp slt i32 %111, 0
  br i1 %114, label %sub_3f.exit.loopexit, label %block_0x17.backedge.i.i, !mcsema_real_eip !11

block_0x21.i.i:                                   ; preds = %block_0x17.i.i
  %115 = add i32 %105, 10
  store i32 %115, i32* %104, align 4, !mcsema_real_eip !13
  %116 = load i32* %91, align 4, !mcsema_real_eip !17
  %117 = add i32 %116, -1
  %118 = trunc i32 %117 to i8, !mcsema_real_eip !17
  %119 = tail call i8 @llvm.ctpop.i8(i8 %118) #0, !mcsema_real_eip !17
  store i32 %117, i32* %91, align 4, !mcsema_real_eip !17
  %120 = icmp slt i32 %117, 0
  br i1 %120, label %sub_3f.exit.loopexit, label %block_0x17.backedge.i.i, !mcsema_real_eip !11

block_0x17.backedge.i.i:                          ; preds = %block_0x21.i.i, %block_0x2c.i.i
  %121 = phi i32 [ %117, %block_0x21.i.i ], [ %111, %block_0x2c.i.i ]
  %.pre.i.i = load i32* %98, align 4
  br label %block_0x17.i.i

sub_3f.exit.loopexit:                             ; preds = %block_0x21.i.i, %block_0x2c.i.i
  %ZF_val.0.in.i.i.ph = phi i32 [ %117, %block_0x21.i.i ], [ %111, %block_0x2c.i.i ]
  %PF_val.0.in.in.i.i.ph = phi i8 [ %119, %block_0x21.i.i ], [ %113, %block_0x2c.i.i ]
  br label %sub_3f.exit

sub_3f.exit:                                      ; preds = %sub_3f.exit.loopexit, %entry.block_0x3a_crit_edge.i.i
  %.pre-phi3.i.i = phi i32* [ %.pre2.i.i, %entry.block_0x3a_crit_edge.i.i ], [ %104, %sub_3f.exit.loopexit ]
  %ZF_val.0.in.i.i = phi i32 [ %99, %entry.block_0x3a_crit_edge.i.i ], [ %ZF_val.0.in.i.i.ph, %sub_3f.exit.loopexit ]
  %PF_val.0.in.in.i.i = phi i8 [ %102, %entry.block_0x3a_crit_edge.i.i ], [ %PF_val.0.in.in.i.i.ph, %sub_3f.exit.loopexit ]
  %PF_val.0.in.i.i = and i8 %PF_val.0.in.in.i.i, 1
  %PF_val.0.i.i = icmp eq i8 %PF_val.0.in.i.i, 0
  %ZF_val.0.i.i = icmp eq i32 %ZF_val.0.in.i.i, 0
  %122 = load i32* %.pre-phi3.i.i, align 4, !mcsema_real_eip !12
  %123 = zext i32 %122 to i64, !mcsema_real_eip !12
  %124 = load i64* %89, align 8, !mcsema_real_eip !18
  store i64 %123, i64* %RAX.i, align 8, !mcsema_real_eip !19
  store <2 x i64> %87, <2 x i64>* %86, align 8
  store i64 %95, i64* %RDX.i, align 8, !mcsema_real_eip !19
  store i64 20, i64* %RSI.i, align 8, !mcsema_real_eip !19
  store i64 10, i64* %RDI.i, align 8, !mcsema_real_eip !19
  store i64 %70, i64* %RSP.i, align 8, !mcsema_real_eip !19
  store i64 %124, i64* %RBP.i, align 8, !mcsema_real_eip !19
  store <2 x i64> %9, <2 x i64>* %8, align 8
  store <2 x i64> %11, <2 x i64>* %10, align 8
  store <2 x i64> %13, <2 x i64>* %12, align 8
  store <2 x i64> %15, <2 x i64>* %14, align 8
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !19
  store i1 false, i1* %CF.i, align 1, !mcsema_real_eip !19
  store i1 %PF_val.0.i.i, i1* %PF.i, align 1, !mcsema_real_eip !19
  store i1 false, i1* %AF.i, align 1, !mcsema_real_eip !19
  store i1 %ZF_val.0.i.i, i1* %ZF.i, align 1, !mcsema_real_eip !19
  store i1 true, i1* %SF.i, align 1, !mcsema_real_eip !19
  store i1 false, i1* %OF.i, align 1, !mcsema_real_eip !19
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !19
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %85, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !19
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !19
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !19
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !19
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !19
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !19
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !19
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !19
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !19
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !19
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !19
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !19
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !19
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !19
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !19
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !19
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !19
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !19
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !19
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !19
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !19
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !19
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !19
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !19
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !19
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !19
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !19
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !19
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !19
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !19
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !19
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !19
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !19
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !19
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !19
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !19
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !19
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !19
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !19
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !19
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !19
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !19
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !19
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !19
  store <2 x i64> %67, <2 x i64>* %66, align 1
  call void @llvm.lifetime.end(i64 128, i8* %85)
  %125 = bitcast <2 x i64> %87 to i128
  %trunc.i = trunc i128 %125 to i64
  %126 = lshr i128 %125, 64
  %127 = trunc i128 %126 to i64
  %128 = bitcast <2 x i64> %9 to i128
  %trunc1.i = trunc i128 %128 to i64
  %129 = lshr i128 %128, 64
  %130 = trunc i128 %129 to i64
  %131 = bitcast <2 x i64> %11 to i128
  %trunc2.i = trunc i128 %131 to i64
  %132 = lshr i128 %131, 64
  %133 = trunc i128 %132 to i64
  %134 = bitcast <2 x i64> %13 to i128
  %trunc3.i = trunc i128 %134 to i64
  %135 = lshr i128 %134, 64
  %136 = trunc i128 %135 to i64
  %137 = bitcast <2 x i64> %15 to i128
  %trunc4.i = trunc i128 %137 to i64
  %138 = lshr i128 %137, 64
  %139 = trunc i128 %138 to i64
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %19, i32 128, i32 4, i1 false) #0, !mcsema_real_eip !5
  %140 = bitcast <2 x i64> %67 to i128
  %trunc5.i = trunc i128 %140 to i64
  %141 = lshr i128 %140, 64
  %142 = trunc i128 %141 to i64
  %143 = add i64 %124, -4, !mcsema_real_eip !20
  %144 = inttoptr i64 %143 to i32*
  store i32 %122, i32* %144, align 4, !mcsema_real_eip !20
  %145 = inttoptr i64 %124 to i64*, !mcsema_real_eip !21
  %146 = load i64* %145, align 8, !mcsema_real_eip !21
  %147 = add i64 %124, 16, !mcsema_real_eip !22
  store i64 %123, i64* %RAX.i, align 8, !mcsema_real_eip !22
  store i64 %trunc.i, i64* %RBX.i, align 8, !mcsema_real_eip !22
  store i64 %127, i64* %RCX.i, align 8, !mcsema_real_eip !22
  store i64 %95, i64* %RDX.i, align 8, !mcsema_real_eip !22
  store i64 20, i64* %RSI.i, align 8, !mcsema_real_eip !22
  store i64 10, i64* %RDI.i, align 8, !mcsema_real_eip !22
  store i64 %147, i64* %RSP.i, align 8, !mcsema_real_eip !22
  store i64 %146, i64* %RBP.i, align 8, !mcsema_real_eip !22
  store i64 %trunc1.i, i64* %R8.i, align 8, !mcsema_real_eip !22
  store i64 %130, i64* %R9.i, align 8, !mcsema_real_eip !22
  store i64 %trunc2.i, i64* %R10.i, align 8, !mcsema_real_eip !22
  store i64 %133, i64* %R11.i, align 8, !mcsema_real_eip !22
  store i64 %trunc3.i, i64* %R12.i, align 8, !mcsema_real_eip !22
  store i64 %136, i64* %R13.i, align 8, !mcsema_real_eip !22
  store i64 %trunc4.i, i64* %R14.i, align 8, !mcsema_real_eip !22
  store i64 %139, i64* %R15.i, align 8, !mcsema_real_eip !22
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !22
  store i1 false, i1* %CF.i, align 1, !mcsema_real_eip !22
  store i1 %PF_val.0.i.i, i1* %PF.i, align 1, !mcsema_real_eip !22
  store i1 false, i1* %AF.i, align 1, !mcsema_real_eip !22
  store i1 %ZF_val.0.i.i, i1* %ZF.i, align 1, !mcsema_real_eip !22
  store i1 true, i1* %SF.i, align 1, !mcsema_real_eip !22
  store i1 false, i1* %OF.i, align 1, !mcsema_real_eip !22
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !22
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %1, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !22
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
  store i64 %trunc5.i, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !22
  store i64 %142, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !22
  call void @llvm.lifetime.end(i64 128, i8* %1)
  ret void
}

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
!3 = metadata !{i64 63, [12 x i8] c"\09pushq\09%rbp\00"}
!4 = metadata !{i64 67, [16 x i8] c"\09subq\09$16, %rsp\00"}
!5 = metadata !{i64 81, [9 x i8] c"\09callq\090\00"}
!6 = metadata !{i64 4, [22 x i8] c"\09movl\09%edi, -20(%rbp)\00"}
!7 = metadata !{i64 7, [22 x i8] c"\09movl\09%esi, -24(%rbp)\00"}
!8 = metadata !{i64 13, [22 x i8] c"\09movl\09-20(%rbp), %edx\00"}
!9 = metadata !{i64 18, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!10 = metadata !{i64 52, [20 x i8] c"\09cmpl\09$0, -20(%rbp)\00"}
!11 = metadata !{i64 56, [9 x i8] c"\09jns\09-35\00"}
!12 = metadata !{i64 58, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!13 = metadata !{i64 39, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!14 = metadata !{i64 26, [15 x i8] c"\09andl\09$1, %eax\00"}
!15 = metadata !{i64 31, [8 x i8] c"\09jne\0911\00"}
!16 = metadata !{i64 44, [20 x i8] c"\09subl\09$10, -4(%rbp)\00"}
!17 = metadata !{i64 48, [20 x i8] c"\09subl\09$1, -20(%rbp)\00"}
!18 = metadata !{i64 61, [11 x i8] c"\09popq\09%rbp\00"}
!19 = metadata !{i64 62, [6 x i8] c"\09retq\00"}
!20 = metadata !{i64 86, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!21 = metadata !{i64 92, [7 x i8] c"\09leave\00"}
!22 = metadata !{i64 93, [6 x i8] c"\09retq\00"}
