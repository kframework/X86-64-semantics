; ModuleID = 'test_7_opt.bc'
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
  %6 = load i64* %RSI.i, align 8, !mcsema_real_eip !3
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !3
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !3
  %7 = load i64* %RSP.i, align 8, !mcsema_real_eip !3
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !3
  %8 = load i64* %RBP.i, align 8, !mcsema_real_eip !3
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !3
  %R9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !3
  %9 = bitcast i64* %R8.i to <2 x i64>*
  %10 = load <2 x i64>* %9, align 8
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !3
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
  %11 = bitcast i64* %R10.i to <2 x i64>*
  %12 = load <2 x i64>* %11, align 8
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !3
  %13 = bitcast i64* %R12.i to <2 x i64>*
  %14 = load <2 x i64>* %13, align 8
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !3
  %15 = bitcast i64* %R14.i to <2 x i64>*
  %16 = load <2 x i64>* %15, align 8
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %17 = load i64* %RIP.i, align 8, !mcsema_real_eip !3
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !3
  %18 = load i1* %DF.i, align 1, !mcsema_real_eip !3
  %19 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !3
  %20 = bitcast x86_fp80* %19 to i8*, !mcsema_real_eip !3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %20, i32 128, i32 4, i1 false) #0, !mcsema_real_eip !3
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !3
  %21 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !3
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !3
  %22 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !3
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !3
  %23 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !3
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !3
  %24 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !3
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !3
  %25 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !3
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !3
  %26 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !3
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !3
  %27 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !3
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !3
  %28 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !3
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !3
  %29 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !3
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !3
  %30 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !3
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !3
  %31 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !3
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !3
  %32 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !3
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !3
  %33 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !3
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !3
  %34 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !3
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !3
  %35 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !3
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !3
  %36 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !3
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !3
  %37 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !3
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !3
  %38 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !3
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !3
  %39 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !3
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !3
  %40 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !3
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !3
  %41 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !3
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !3
  %42 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !3
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !3
  %43 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !3
  %44 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !3
  %45 = bitcast i8* %44 to i64*
  %46 = load i64* %45, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !3
  %47 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !3
  %48 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !3
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !3
  %49 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !3
  %50 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !3
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %51 = load i128* %XMM0.i, align 1, !mcsema_real_eip !3
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %52 = load i128* %XMM1.i, align 1, !mcsema_real_eip !3
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %53 = load i128* %XMM2.i, align 1, !mcsema_real_eip !3
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %54 = load i128* %XMM3.i, align 1, !mcsema_real_eip !3
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %55 = load i128* %XMM4.i, align 1, !mcsema_real_eip !3
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %56 = load i128* %XMM5.i, align 1, !mcsema_real_eip !3
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %57 = load i128* %XMM6.i, align 1, !mcsema_real_eip !3
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %58 = load i128* %XMM7.i, align 1, !mcsema_real_eip !3
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %59 = load i128* %XMM8.i, align 1, !mcsema_real_eip !3
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %60 = load i128* %XMM9.i, align 1, !mcsema_real_eip !3
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %61 = load i128* %XMM10.i, align 1, !mcsema_real_eip !3
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %62 = load i128* %XMM11.i, align 1, !mcsema_real_eip !3
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %63 = load i128* %XMM12.i, align 1, !mcsema_real_eip !3
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %64 = load i128* %XMM13.i, align 1, !mcsema_real_eip !3
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %65 = load i128* %XMM14.i, align 1, !mcsema_real_eip !3
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %66 = load i128* %XMM15.i, align 1, !mcsema_real_eip !3
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %67 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %68 = load <2 x i64>* %67, align 8
  %69 = add i64 %7, -8
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !3
  store i64 %8, i64* %70, align 8, !mcsema_real_eip !3
  %71 = add i64 %7, -40
  %72 = xor i64 %71, %69, !mcsema_real_eip !4
  %73 = and i64 %72, 16, !mcsema_real_eip !4
  %74 = icmp ne i64 %73, 0, !mcsema_real_eip !4
  %75 = trunc i64 %71 to i8, !mcsema_real_eip !4
  %76 = tail call i8 @llvm.ctpop.i8(i8 %75) #0, !mcsema_real_eip !4
  %77 = and i8 %76, 1
  %78 = icmp eq i8 %77, 0
  %79 = icmp eq i64 %71, 0, !mcsema_real_eip !4
  %80 = icmp slt i64 %71, 0
  %81 = icmp ult i64 %69, 32, !mcsema_real_eip !4
  %82 = and i64 %72, %69, !mcsema_real_eip !4
  %83 = icmp slt i64 %82, 0
  %84 = add i64 %7, -12, !mcsema_real_eip !5
  %85 = inttoptr i64 %84 to i32*
  store i32 0, i32* %85, align 4, !mcsema_real_eip !5
  %86 = add i64 %7, -24, !mcsema_real_eip !6
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !6
  %88 = inttoptr i64 %86 to i32*
  store i32 100, i32* %88, align 4, !mcsema_real_eip !6
  %89 = add i64 %7, -20, !mcsema_real_eip !7
  %90 = inttoptr i64 %89 to i32*
  store i32 200, i32* %90, align 4, !mcsema_real_eip !7
  %91 = load i64* %87, align 8, !mcsema_real_eip !8
  %92 = add i64 %7, -48
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !9
  store i64 -4981261766360305936, i64* %93, align 8, !mcsema_real_eip !9
  store <2 x i64> %3, <2 x i64>* %2, align 8
  store <2 x i64> %5, <2 x i64>* %4, align 8
  store i64 %6, i64* %RSI.i, align 8, !mcsema_real_eip !9
  store i64 %91, i64* %RDI.i, align 8, !mcsema_real_eip !9
  store i64 %92, i64* %RSP.i, align 8, !mcsema_real_eip !9
  store i64 %69, i64* %RBP.i, align 8, !mcsema_real_eip !9
  store <2 x i64> %10, <2 x i64>* %9, align 8
  store <2 x i64> %12, <2 x i64>* %11, align 8
  store <2 x i64> %14, <2 x i64>* %13, align 8
  store <2 x i64> %16, <2 x i64>* %15, align 8
  store i64 %17, i64* %RIP.i, align 8, !mcsema_real_eip !9
  store i1 %81, i1* %CF.i, align 1, !mcsema_real_eip !9
  store i1 %78, i1* %PF.i, align 1, !mcsema_real_eip !9
  store i1 %74, i1* %AF.i, align 1, !mcsema_real_eip !9
  store i1 %79, i1* %ZF.i, align 1, !mcsema_real_eip !9
  store i1 %80, i1* %SF.i, align 1, !mcsema_real_eip !9
  store i1 %83, i1* %OF.i, align 1, !mcsema_real_eip !9
  store i1 %18, i1* %DF.i, align 1, !mcsema_real_eip !9
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %1, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !9
  store i1 %21, i1* %FPU_B.i, align 1, !mcsema_real_eip !9
  store i1 %22, i1* %FPU_C3.i, align 1, !mcsema_real_eip !9
  store i3 %23, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !9
  store i1 %24, i1* %FPU_C2.i, align 1, !mcsema_real_eip !9
  store i1 %25, i1* %FPU_C1.i, align 1, !mcsema_real_eip !9
  store i1 %26, i1* %FPU_C0.i, align 1, !mcsema_real_eip !9
  store i1 %27, i1* %FPU_ES.i, align 1, !mcsema_real_eip !9
  store i1 %28, i1* %FPU_SF.i, align 1, !mcsema_real_eip !9
  store i1 %29, i1* %FPU_PE.i, align 1, !mcsema_real_eip !9
  store i1 %30, i1* %FPU_UE.i, align 1, !mcsema_real_eip !9
  store i1 %31, i1* %FPU_OE.i, align 1, !mcsema_real_eip !9
  store i1 %32, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !9
  store i1 %33, i1* %FPU_DE.i, align 1, !mcsema_real_eip !9
  store i1 %34, i1* %FPU_IE.i, align 1, !mcsema_real_eip !9
  store i1 %35, i1* %FPU_X.i, align 1, !mcsema_real_eip !9
  store i2 %36, i2* %FPU_RC.i, align 1, !mcsema_real_eip !9
  store i2 %37, i2* %FPU_PC.i, align 1, !mcsema_real_eip !9
  store i1 %38, i1* %FPU_PM.i, align 1, !mcsema_real_eip !9
  store i1 %39, i1* %FPU_UM.i, align 1, !mcsema_real_eip !9
  store i1 %40, i1* %FPU_OM.i, align 1, !mcsema_real_eip !9
  store i1 %41, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !9
  store i1 %42, i1* %FPU_DM.i, align 1, !mcsema_real_eip !9
  store i1 %43, i1* %FPU_IM.i, align 1, !mcsema_real_eip !9
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !9
  store i64 %48, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !9
  store i16 %49, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !9
  store i64 %50, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !9
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !9
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !9
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !9
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !9
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !9
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !9
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !9
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !9
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !9
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !9
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !9
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !9
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !9
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !9
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !9
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !9
  store <2 x i64> %68, <2 x i64>* %67, align 1
  %94 = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %94)
  %95 = bitcast i64* %RBX.i to <2 x i64>*
  %96 = load <2 x i64>* %95, align 8
  %97 = bitcast i64* %RDX.i to <2 x i64>*
  %98 = load <2 x i64>* %97, align 8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %94, i8* %1, i32 128, i32 16, i1 false) #0
  %99 = add i64 %7, -56
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !2
  store i64 %69, i64* %100, align 8, !mcsema_real_eip !2
  %101 = add i64 %7, -72, !mcsema_real_eip !10
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !10
  store i64 %91, i64* %102, align 8, !mcsema_real_eip !10
  %103 = inttoptr i64 %101 to i32*
  %104 = load i32* %103, align 4, !mcsema_real_eip !11
  %105 = add i32 %104, 20
  %106 = add i64 %7, -80, !mcsema_real_eip !12
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !12
  %108 = inttoptr i64 %106 to i32*
  store i32 %105, i32* %108, align 4, !mcsema_real_eip !12
  %109 = add i64 %7, -68, !mcsema_real_eip !13
  %110 = inttoptr i64 %109 to i32*
  %111 = load i32* %110, align 4, !mcsema_real_eip !13
  %uadd70.i.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %111, i32 30) #0
  %112 = extractvalue { i32, i1 } %uadd70.i.i, 0
  %113 = xor i32 %112, %111, !mcsema_real_eip !14
  %114 = and i32 %113, 16
  %115 = icmp eq i32 %114, 0
  %116 = icmp slt i32 %112, 0
  %117 = icmp eq i32 %112, 0, !mcsema_real_eip !14
  %118 = xor i32 %111, -2147483648, !mcsema_real_eip !14
  %119 = and i32 %113, %118, !mcsema_real_eip !14
  %120 = icmp slt i32 %119, 0
  %121 = trunc i32 %112 to i8, !mcsema_real_eip !14
  %122 = tail call i8 @llvm.ctpop.i8(i8 %121) #0, !mcsema_real_eip !14
  %123 = and i8 %122, 1
  %124 = icmp eq i8 %123, 0
  %125 = extractvalue { i32, i1 } %uadd70.i.i, 1
  %126 = add i64 %7, -76, !mcsema_real_eip !15
  %127 = inttoptr i64 %126 to i32*
  store i32 %112, i32* %127, align 4, !mcsema_real_eip !15
  %128 = load i64* %107, align 8, !mcsema_real_eip !16
  %129 = add i64 %7, -64, !mcsema_real_eip !17
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !17
  store i64 %128, i64* %130, align 8, !mcsema_real_eip !17
  %131 = load i64* %100, align 8, !mcsema_real_eip !18
  store i64 %128, i64* %RAX.i, align 8, !mcsema_real_eip !19
  store <2 x i64> %96, <2 x i64>* %95, align 8
  store <2 x i64> %98, <2 x i64>* %97, align 8
  store i64 %128, i64* %RDI.i, align 8, !mcsema_real_eip !19
  store i64 %71, i64* %RSP.i, align 8, !mcsema_real_eip !19
  store i64 %131, i64* %RBP.i, align 8, !mcsema_real_eip !19
  store <2 x i64> %10, <2 x i64>* %9, align 8
  store <2 x i64> %12, <2 x i64>* %11, align 8
  store <2 x i64> %14, <2 x i64>* %13, align 8
  store <2 x i64> %16, <2 x i64>* %15, align 8
  store i64 %17, i64* %RIP.i, align 8, !mcsema_real_eip !19
  store i1 %125, i1* %CF.i, align 1, !mcsema_real_eip !19
  store i1 %124, i1* %PF.i, align 1, !mcsema_real_eip !19
  store i1 %115, i1* %AF.i, align 1, !mcsema_real_eip !19
  store i1 %117, i1* %ZF.i, align 1, !mcsema_real_eip !19
  store i1 %116, i1* %SF.i, align 1, !mcsema_real_eip !19
  store i1 %120, i1* %OF.i, align 1, !mcsema_real_eip !19
  store i1 %18, i1* %DF.i, align 1, !mcsema_real_eip !19
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %94, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !19
  store i1 %21, i1* %FPU_B.i, align 1, !mcsema_real_eip !19
  store i1 %22, i1* %FPU_C3.i, align 1, !mcsema_real_eip !19
  store i3 %23, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !19
  store i1 %24, i1* %FPU_C2.i, align 1, !mcsema_real_eip !19
  store i1 %25, i1* %FPU_C1.i, align 1, !mcsema_real_eip !19
  store i1 %26, i1* %FPU_C0.i, align 1, !mcsema_real_eip !19
  store i1 %27, i1* %FPU_ES.i, align 1, !mcsema_real_eip !19
  store i1 %28, i1* %FPU_SF.i, align 1, !mcsema_real_eip !19
  store i1 %29, i1* %FPU_PE.i, align 1, !mcsema_real_eip !19
  store i1 %30, i1* %FPU_UE.i, align 1, !mcsema_real_eip !19
  store i1 %31, i1* %FPU_OE.i, align 1, !mcsema_real_eip !19
  store i1 %32, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !19
  store i1 %33, i1* %FPU_DE.i, align 1, !mcsema_real_eip !19
  store i1 %34, i1* %FPU_IE.i, align 1, !mcsema_real_eip !19
  store i1 %35, i1* %FPU_X.i, align 1, !mcsema_real_eip !19
  store i2 %36, i2* %FPU_RC.i, align 1, !mcsema_real_eip !19
  store i2 %37, i2* %FPU_PC.i, align 1, !mcsema_real_eip !19
  store i1 %38, i1* %FPU_PM.i, align 1, !mcsema_real_eip !19
  store i1 %39, i1* %FPU_UM.i, align 1, !mcsema_real_eip !19
  store i1 %40, i1* %FPU_OM.i, align 1, !mcsema_real_eip !19
  store i1 %41, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !19
  store i1 %42, i1* %FPU_DM.i, align 1, !mcsema_real_eip !19
  store i1 %43, i1* %FPU_IM.i, align 1, !mcsema_real_eip !19
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !19
  store i64 %48, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !19
  store i16 %49, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !19
  store i64 %50, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !19
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !19
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !19
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !19
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !19
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !19
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !19
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !19
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !19
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !19
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !19
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !19
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !19
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !19
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !19
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !19
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !19
  store <2 x i64> %68, <2 x i64>* %67, align 1
  call void @llvm.lifetime.end(i64 128, i8* %94)
  %132 = bitcast <2 x i64> %96 to i128
  %trunc.i = trunc i128 %132 to i64
  %133 = bitcast <2 x i64> %98 to i128
  %trunc1.i = trunc i128 %133 to i64
  %134 = lshr i128 %133, 64
  %135 = trunc i128 %134 to i64
  %136 = bitcast <2 x i64> %10 to i128
  %trunc2.i = trunc i128 %136 to i64
  %137 = lshr i128 %136, 64
  %138 = trunc i128 %137 to i64
  %139 = bitcast <2 x i64> %12 to i128
  %trunc3.i = trunc i128 %139 to i64
  %140 = lshr i128 %139, 64
  %141 = trunc i128 %140 to i64
  %142 = bitcast <2 x i64> %14 to i128
  %trunc4.i = trunc i128 %142 to i64
  %143 = lshr i128 %142, 64
  %144 = trunc i128 %143 to i64
  %145 = bitcast <2 x i64> %16 to i128
  %trunc5.i = trunc i128 %145 to i64
  %146 = lshr i128 %145, 64
  %147 = trunc i128 %146 to i64
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %20, i32 128, i32 4, i1 false) #0, !mcsema_real_eip !9
  %148 = bitcast <2 x i64> %68 to i128
  %trunc6.i = trunc i128 %148 to i64
  %149 = lshr i128 %148, 64
  %150 = trunc i128 %149 to i64
  %151 = add i64 %131, -24, !mcsema_real_eip !20
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !20
  store i64 %128, i64* %152, align 8, !mcsema_real_eip !20
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %71, i64 32) #0
  %153 = extractvalue { i64, i1 } %uadd.i, 0
  %154 = xor i64 %153, %71, !mcsema_real_eip !21
  %155 = and i64 %154, 16, !mcsema_real_eip !21
  %156 = icmp ne i64 %155, 0, !mcsema_real_eip !21
  %157 = icmp slt i64 %153, 0
  %158 = icmp eq i64 %153, 0, !mcsema_real_eip !21
  %159 = add i64 %7, 9223372036854775768
  %160 = and i64 %154, %159, !mcsema_real_eip !21
  %161 = icmp slt i64 %160, 0
  %162 = trunc i64 %153 to i8, !mcsema_real_eip !21
  %163 = tail call i8 @llvm.ctpop.i8(i8 %162) #0, !mcsema_real_eip !21
  %164 = and i8 %163, 1
  %165 = icmp eq i8 %164, 0
  %166 = extractvalue { i64, i1 } %uadd.i, 1
  %167 = inttoptr i64 %153 to i64*, !mcsema_real_eip !22
  %168 = load i64* %167, align 8, !mcsema_real_eip !22
  %169 = add i64 %153, 16, !mcsema_real_eip !23
  store i64 0, i64* %RAX.i, align 8, !mcsema_real_eip !23
  store i64 %trunc.i, i64* %RBX.i, align 8, !mcsema_real_eip !23
  store i64 0, i64* %RCX.i, align 8, !mcsema_real_eip !23
  store i64 %trunc1.i, i64* %RDX.i, align 8, !mcsema_real_eip !23
  store i64 %135, i64* %RSI.i, align 8, !mcsema_real_eip !23
  store i64 %128, i64* %RDI.i, align 8, !mcsema_real_eip !23
  store i64 %169, i64* %RSP.i, align 8, !mcsema_real_eip !23
  store i64 %168, i64* %RBP.i, align 8, !mcsema_real_eip !23
  store i64 %trunc2.i, i64* %R8.i, align 8, !mcsema_real_eip !23
  store i64 %138, i64* %R9.i, align 8, !mcsema_real_eip !23
  store i64 %trunc3.i, i64* %R10.i, align 8, !mcsema_real_eip !23
  store i64 %141, i64* %R11.i, align 8, !mcsema_real_eip !23
  store i64 %trunc4.i, i64* %R12.i, align 8, !mcsema_real_eip !23
  store i64 %144, i64* %R13.i, align 8, !mcsema_real_eip !23
  store i64 %trunc5.i, i64* %R14.i, align 8, !mcsema_real_eip !23
  store i64 %147, i64* %R15.i, align 8, !mcsema_real_eip !23
  store i64 %17, i64* %RIP.i, align 8, !mcsema_real_eip !23
  store i1 %166, i1* %CF.i, align 1, !mcsema_real_eip !23
  store i1 %165, i1* %PF.i, align 1, !mcsema_real_eip !23
  store i1 %156, i1* %AF.i, align 1, !mcsema_real_eip !23
  store i1 %158, i1* %ZF.i, align 1, !mcsema_real_eip !23
  store i1 %157, i1* %SF.i, align 1, !mcsema_real_eip !23
  store i1 %161, i1* %OF.i, align 1, !mcsema_real_eip !23
  store i1 %18, i1* %DF.i, align 1, !mcsema_real_eip !23
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %1, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !23
  store i1 %21, i1* %FPU_B.i, align 1, !mcsema_real_eip !23
  store i1 %22, i1* %FPU_C3.i, align 1, !mcsema_real_eip !23
  store i3 %23, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !23
  store i1 %24, i1* %FPU_C2.i, align 1, !mcsema_real_eip !23
  store i1 %25, i1* %FPU_C1.i, align 1, !mcsema_real_eip !23
  store i1 %26, i1* %FPU_C0.i, align 1, !mcsema_real_eip !23
  store i1 %27, i1* %FPU_ES.i, align 1, !mcsema_real_eip !23
  store i1 %28, i1* %FPU_SF.i, align 1, !mcsema_real_eip !23
  store i1 %29, i1* %FPU_PE.i, align 1, !mcsema_real_eip !23
  store i1 %30, i1* %FPU_UE.i, align 1, !mcsema_real_eip !23
  store i1 %31, i1* %FPU_OE.i, align 1, !mcsema_real_eip !23
  store i1 %32, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !23
  store i1 %33, i1* %FPU_DE.i, align 1, !mcsema_real_eip !23
  store i1 %34, i1* %FPU_IE.i, align 1, !mcsema_real_eip !23
  store i1 %35, i1* %FPU_X.i, align 1, !mcsema_real_eip !23
  store i2 %36, i2* %FPU_RC.i, align 1, !mcsema_real_eip !23
  store i2 %37, i2* %FPU_PC.i, align 1, !mcsema_real_eip !23
  store i1 %38, i1* %FPU_PM.i, align 1, !mcsema_real_eip !23
  store i1 %39, i1* %FPU_UM.i, align 1, !mcsema_real_eip !23
  store i1 %40, i1* %FPU_OM.i, align 1, !mcsema_real_eip !23
  store i1 %41, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !23
  store i1 %42, i1* %FPU_DM.i, align 1, !mcsema_real_eip !23
  store i1 %43, i1* %FPU_IM.i, align 1, !mcsema_real_eip !23
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !23
  store i64 %48, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !23
  store i16 %49, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !23
  store i64 %50, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !23
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !23
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !23
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !23
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !23
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !23
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !23
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !23
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !23
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !23
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !23
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !23
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !23
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !23
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !23
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !23
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !23
  store i64 %trunc6.i, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !23
  store i64 %150, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !23
  call void @llvm.lifetime.end(i64 128, i8* %1)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #0

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 64, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!4 = metadata !{i64 4, [16 x i8] c"\09subq\09$32, %rsp\00"}
!5 = metadata !{i64 8, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!6 = metadata !{i64 15, [22 x i8] c"\09movl\09$100, -16(%rbp)\00"}
!7 = metadata !{i64 22, [22 x i8] c"\09movl\09$200, -12(%rbp)\00"}
!8 = metadata !{i64 29, [22 x i8] c"\09movq\09-16(%rbp), %rdi\00"}
!9 = metadata !{i64 33, [10 x i8] c"\09callq\0926\00"}
!10 = metadata !{i64 68, [22 x i8] c"\09movq\09%rdi, -16(%rbp)\00"}
!11 = metadata !{i64 72, [22 x i8] c"\09movl\09-16(%rbp), %eax\00"}
!12 = metadata !{i64 80, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!13 = metadata !{i64 83, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!14 = metadata !{i64 86, [16 x i8] c"\09addl\09$30, %eax\00"}
!15 = metadata !{i64 91, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!16 = metadata !{i64 94, [22 x i8] c"\09movq\09-24(%rbp), %rdi\00"}
!17 = metadata !{i64 98, [21 x i8] c"\09movq\09%rdi, -8(%rbp)\00"}
!18 = metadata !{i64 106, [11 x i8] c"\09popq\09%rbp\00"}
!19 = metadata !{i64 107, [6 x i8] c"\09retq\00"}
!20 = metadata !{i64 43, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!21 = metadata !{i64 49, [16 x i8] c"\09addq\09$32, %rsp\00"}
!22 = metadata !{i64 53, [11 x i8] c"\09popq\09%rbp\00"}
!23 = metadata !{i64 54, [6 x i8] c"\09retq\00"}
