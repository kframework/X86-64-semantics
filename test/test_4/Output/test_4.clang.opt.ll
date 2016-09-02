; ModuleID = 'Output/test_4.clang.opt.bc'
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
  %4 = load i64* %RCX.i, align 8, !mcsema_real_eip !3
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !3
  %5 = load i64* %RDX.i, align 8, !mcsema_real_eip !3
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
  %83 = add i64 %6, -12, !mcsema_real_eip !5
  %84 = inttoptr i64 %83 to i32*
  store i32 0, i32* %84, align 4, !mcsema_real_eip !5
  %85 = add i64 %6, -32
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !6
  store i64 -4981261766360305936, i64* %86, align 8, !mcsema_real_eip !6
  store <2 x i64> %3, <2 x i64>* %2, align 8
  store i64 %4, i64* %RCX.i, align 8, !mcsema_real_eip !6
  store i64 %5, i64* %RDX.i, align 8, !mcsema_real_eip !6
  store i64 20, i64* %RSI.i, align 8, !mcsema_real_eip !6
  store i64 10, i64* %RDI.i, align 8, !mcsema_real_eip !6
  store i64 %85, i64* %RSP.i, align 8, !mcsema_real_eip !6
  store i64 %68, i64* %RBP.i, align 8, !mcsema_real_eip !6
  store <2 x i64> %9, <2 x i64>* %8, align 8
  store <2 x i64> %11, <2 x i64>* %10, align 8
  store <2 x i64> %13, <2 x i64>* %12, align 8
  store <2 x i64> %15, <2 x i64>* %14, align 8
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !6
  store i1 %80, i1* %CF.i, align 1, !mcsema_real_eip !6
  store i1 %77, i1* %PF.i, align 1, !mcsema_real_eip !6
  store i1 %73, i1* %AF.i, align 1, !mcsema_real_eip !6
  store i1 %78, i1* %ZF.i, align 1, !mcsema_real_eip !6
  store i1 %79, i1* %SF.i, align 1, !mcsema_real_eip !6
  store i1 %82, i1* %OF.i, align 1, !mcsema_real_eip !6
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !6
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %1, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !6
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !6
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !6
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !6
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !6
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !6
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !6
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !6
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !6
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !6
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !6
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !6
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !6
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !6
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !6
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !6
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !6
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !6
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !6
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !6
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !6
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !6
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !6
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !6
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !6
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !6
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !6
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !6
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !6
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !6
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !6
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !6
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !6
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !6
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !6
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !6
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !6
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !6
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !6
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !6
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !6
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !6
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !6
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !6
  store <2 x i64> %67, <2 x i64>* %66, align 1
  %87 = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %87)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %87, i8* %1, i32 128, i32 16, i1 false) #0
  %88 = add i64 %6, -40
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !2
  store i64 %68, i64* %89, align 8, !mcsema_real_eip !2
  %90 = add i64 %6, -44, !mcsema_real_eip !7
  %91 = inttoptr i64 %90 to i32*
  store i32 10, i32* %91, align 4, !mcsema_real_eip !7
  %92 = add i64 %6, -48, !mcsema_real_eip !8
  %93 = inttoptr i64 %92 to i32*
  store i32 20, i32* %93, align 4, !mcsema_real_eip !8
  %94 = load i32* %91, align 4, !mcsema_real_eip !9
  %95 = add i32 %94, 20
  %96 = zext i32 %95 to i64, !mcsema_real_eip !10
  %97 = add i64 %6, -52, !mcsema_real_eip !11
  %98 = inttoptr i64 %97 to i32*
  store i32 %95, i32* %98, align 4, !mcsema_real_eip !11
  %99 = load i32* %91, align 4, !mcsema_real_eip !12
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %entry.block_0x6a_crit_edge.i.i, label %block_0x20.preheader.i.i, !mcsema_real_eip !13

entry.block_0x6a_crit_edge.i.i:                   ; preds = %driverBlockRaw
  %101 = trunc i32 %99 to i8, !mcsema_real_eip !12
  %102 = tail call i8 @llvm.ctpop.i8(i8 %101) #0, !mcsema_real_eip !12
  %.pre.i.i = add i64 %6, -56, !mcsema_real_eip !14
  %.pre5.i.i = inttoptr i64 %.pre.i.i to i32*
  br label %sub_70.exit

block_0x20.preheader.i.i:                         ; preds = %driverBlockRaw
  %103 = add i64 %6, -60, !mcsema_real_eip !15
  %104 = inttoptr i64 %103 to i32*
  %105 = add i64 %6, -56, !mcsema_real_eip !16
  %106 = inttoptr i64 %105 to i32*
  br label %block_0x20.i.i

block_0x6a.loopexit.i.i:                          ; preds = %block_0x13.i.i
  %storemerge.i.i.lcssa = phi i32 [ %storemerge.i.i, %block_0x13.i.i ]
  %.lcssa = phi i64 [ %116, %block_0x13.i.i ]
  %107 = and i64 %.lcssa, 4294967295
  %108 = trunc i32 %storemerge.i.i.lcssa to i8, !mcsema_real_eip !12
  %109 = tail call i8 @llvm.ctpop.i8(i8 %108) #0, !mcsema_real_eip !12
  br label %sub_70.exit

block_0x20.i.i:                                   ; preds = %block_0x13.i.i, %block_0x20.preheader.i.i
  %110 = phi i32 [ %99, %block_0x20.preheader.i.i ], [ %storemerge.i.i, %block_0x13.i.i ]
  %111 = zext i32 %110 to i64, !mcsema_real_eip !17
  store i32 2, i32* %104, align 4, !mcsema_real_eip !15
  %112 = shl nuw i64 %111, 32
  %sext.i.i = ashr i64 %112, 63
  %113 = shl nsw i64 %sext.i.i, 32, !mcsema_real_eip !18
  %114 = sext i32 %110 to i64
  %115 = or i64 %113, %114, !mcsema_real_eip !18
  %116 = srem i64 %115, 2, !mcsema_real_eip !18
  %117 = trunc i64 %116 to i32, !mcsema_real_eip !19
  %118 = icmp eq i32 %117, 0, !mcsema_real_eip !19
  %119 = load i32* %98, align 4, !mcsema_real_eip !20
  br i1 %118, label %block_0x3f.i.i, label %block_0x4f.i.i, !mcsema_real_eip !21

block_0x4f.i.i:                                   ; preds = %block_0x20.i.i
  %120 = add i32 %119, -10
  store i32 %120, i32* %98, align 4, !mcsema_real_eip !22
  br label %block_0x13.i.i, !mcsema_real_eip !23

block_0x3f.i.i:                                   ; preds = %block_0x20.i.i
  %121 = add i32 %119, 10
  store i32 %121, i32* %106, align 4, !mcsema_real_eip !16
  br label %block_0x13.i.i, !mcsema_real_eip !23

block_0x13.i.i:                                   ; preds = %block_0x3f.i.i, %block_0x4f.i.i
  %storemerge.in.i.i = load i32* %91, align 4
  %storemerge.i.i = add i32 %storemerge.in.i.i, -1
  store i32 %storemerge.i.i, i32* %91, align 4
  %122 = icmp slt i32 %storemerge.i.i, 0
  br i1 %122, label %block_0x6a.loopexit.i.i, label %block_0x20.i.i, !mcsema_real_eip !13

sub_70.exit:                                      ; preds = %block_0x6a.loopexit.i.i, %entry.block_0x6a_crit_edge.i.i
  %.pre-phi6.i.i = phi i32* [ %.pre5.i.i, %entry.block_0x6a_crit_edge.i.i ], [ %106, %block_0x6a.loopexit.i.i ]
  %ZF_val.0.in.i.i = phi i32 [ %99, %entry.block_0x6a_crit_edge.i.i ], [ %storemerge.i.i.lcssa, %block_0x6a.loopexit.i.i ]
  %PF_val.0.in.in.i.i = phi i8 [ %102, %entry.block_0x6a_crit_edge.i.i ], [ %109, %block_0x6a.loopexit.i.i ]
  %RDX_val.0.i.i = phi i64 [ %5, %entry.block_0x6a_crit_edge.i.i ], [ %107, %block_0x6a.loopexit.i.i ]
  %RCX_val.0.i.i = phi i64 [ %4, %entry.block_0x6a_crit_edge.i.i ], [ 2, %block_0x6a.loopexit.i.i ]
  %PF_val.0.in.i.i = and i8 %PF_val.0.in.in.i.i, 1
  %PF_val.0.i.i = icmp eq i8 %PF_val.0.in.i.i, 0
  %ZF_val.0.i.i = icmp eq i32 %ZF_val.0.in.i.i, 0
  %123 = load i32* %.pre-phi6.i.i, align 4, !mcsema_real_eip !14
  %124 = zext i32 %123 to i64, !mcsema_real_eip !14
  %125 = load i64* %89, align 8, !mcsema_real_eip !24
  store i64 %124, i64* %RAX.i, align 8, !mcsema_real_eip !25
  %126 = extractelement <2 x i64> %3, i32 1
  store i64 %126, i64* %RBX.i, align 8, !mcsema_real_eip !25
  store i64 %RCX_val.0.i.i, i64* %RCX.i, align 8, !mcsema_real_eip !25
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !25
  store i64 %96, i64* %RSI.i, align 8, !mcsema_real_eip !25
  store i64 10, i64* %RDI.i, align 8, !mcsema_real_eip !25
  store i64 %70, i64* %RSP.i, align 8, !mcsema_real_eip !25
  store i64 %125, i64* %RBP.i, align 8, !mcsema_real_eip !25
  store <2 x i64> %9, <2 x i64>* %8, align 8
  store <2 x i64> %11, <2 x i64>* %10, align 8
  store <2 x i64> %13, <2 x i64>* %12, align 8
  store <2 x i64> %15, <2 x i64>* %14, align 8
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !25
  store i1 false, i1* %CF.i, align 1, !mcsema_real_eip !25
  store i1 %PF_val.0.i.i, i1* %PF.i, align 1, !mcsema_real_eip !25
  store i1 false, i1* %AF.i, align 1, !mcsema_real_eip !25
  store i1 %ZF_val.0.i.i, i1* %ZF.i, align 1, !mcsema_real_eip !25
  store i1 true, i1* %SF.i, align 1, !mcsema_real_eip !25
  store i1 false, i1* %OF.i, align 1, !mcsema_real_eip !25
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !25
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %87, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !25
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !25
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !25
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !25
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !25
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !25
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !25
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !25
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !25
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !25
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !25
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !25
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !25
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !25
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !25
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !25
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !25
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !25
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !25
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !25
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !25
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !25
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !25
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !25
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !25
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !25
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !25
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !25
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !25
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !25
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !25
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !25
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !25
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !25
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !25
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !25
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !25
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !25
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !25
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !25
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !25
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !25
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !25
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !25
  store <2 x i64> %67, <2 x i64>* %66, align 1
  call void @llvm.lifetime.end(i64 128, i8* %87)
  %127 = bitcast <2 x i64> %9 to i128
  %trunc.i = trunc i128 %127 to i64
  %128 = lshr i128 %127, 64
  %129 = trunc i128 %128 to i64
  %130 = bitcast <2 x i64> %11 to i128
  %trunc1.i = trunc i128 %130 to i64
  %131 = lshr i128 %130, 64
  %132 = trunc i128 %131 to i64
  %133 = bitcast <2 x i64> %13 to i128
  %trunc2.i = trunc i128 %133 to i64
  %134 = lshr i128 %133, 64
  %135 = trunc i128 %134 to i64
  %136 = bitcast <2 x i64> %15 to i128
  %trunc3.i = trunc i128 %136 to i64
  %137 = lshr i128 %136, 64
  %138 = trunc i128 %137 to i64
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %19, i32 128, i32 4, i1 false) #0, !mcsema_real_eip !6
  %139 = bitcast <2 x i64> %67 to i128
  %trunc4.i = trunc i128 %139 to i64
  %140 = lshr i128 %139, 64
  %141 = trunc i128 %140 to i64
  %142 = add i64 %125, -8, !mcsema_real_eip !26
  %143 = inttoptr i64 %142 to i32*
  store i32 %123, i32* %143, align 4, !mcsema_real_eip !26
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %70, i64 16) #0
  %144 = extractvalue { i64, i1 } %uadd.i, 0
  %145 = xor i64 %144, %70, !mcsema_real_eip !27
  %146 = and i64 %145, 16
  %147 = icmp eq i64 %146, 0
  %148 = icmp slt i64 %144, 0
  %149 = icmp eq i64 %144, 0, !mcsema_real_eip !27
  %150 = add i64 %6, 9223372036854775784
  %151 = and i64 %145, %150, !mcsema_real_eip !27
  %152 = icmp slt i64 %151, 0
  %153 = trunc i64 %144 to i8, !mcsema_real_eip !27
  %154 = tail call i8 @llvm.ctpop.i8(i8 %153) #0, !mcsema_real_eip !27
  %155 = and i8 %154, 1
  %156 = icmp eq i8 %155, 0
  %157 = extractvalue { i64, i1 } %uadd.i, 1
  %158 = inttoptr i64 %144 to i64*, !mcsema_real_eip !28
  %159 = load i64* %158, align 8, !mcsema_real_eip !28
  %160 = add i64 %144, 16, !mcsema_real_eip !29
  store i64 %124, i64* %RAX.i, align 8, !mcsema_real_eip !29
  store i64 %126, i64* %RBX.i, align 8, !mcsema_real_eip !29
  store i64 %RCX_val.0.i.i, i64* %RCX.i, align 8, !mcsema_real_eip !29
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !29
  store i64 %96, i64* %RSI.i, align 8, !mcsema_real_eip !29
  store i64 10, i64* %RDI.i, align 8, !mcsema_real_eip !29
  store i64 %160, i64* %RSP.i, align 8, !mcsema_real_eip !29
  store i64 %159, i64* %RBP.i, align 8, !mcsema_real_eip !29
  store i64 %trunc.i, i64* %R8.i, align 8, !mcsema_real_eip !29
  store i64 %129, i64* %R9.i, align 8, !mcsema_real_eip !29
  store i64 %trunc1.i, i64* %R10.i, align 8, !mcsema_real_eip !29
  store i64 %132, i64* %R11.i, align 8, !mcsema_real_eip !29
  store i64 %trunc2.i, i64* %R12.i, align 8, !mcsema_real_eip !29
  store i64 %135, i64* %R13.i, align 8, !mcsema_real_eip !29
  store i64 %trunc3.i, i64* %R14.i, align 8, !mcsema_real_eip !29
  store i64 %138, i64* %R15.i, align 8, !mcsema_real_eip !29
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !29
  store i1 %157, i1* %CF.i, align 1, !mcsema_real_eip !29
  store i1 %156, i1* %PF.i, align 1, !mcsema_real_eip !29
  store i1 %147, i1* %AF.i, align 1, !mcsema_real_eip !29
  store i1 %149, i1* %ZF.i, align 1, !mcsema_real_eip !29
  store i1 %148, i1* %SF.i, align 1, !mcsema_real_eip !29
  store i1 %152, i1* %OF.i, align 1, !mcsema_real_eip !29
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %1, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !29
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !29
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !29
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !29
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !29
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !29
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !29
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !29
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !29
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !29
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !29
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !29
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !29
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !29
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !29
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !29
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !29
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !29
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !29
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !29
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !29
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !29
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !29
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !29
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !29
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !29
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !29
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !29
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !29
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !29
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !29
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !29
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !29
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !29
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !29
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !29
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !29
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !29
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !29
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !29
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !29
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !29
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !29
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !29
  store i64 %trunc4.i, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !29
  store i64 %141, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !29
  call void @llvm.lifetime.end(i64 128, i8* %1)
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
