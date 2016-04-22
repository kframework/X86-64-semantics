; ModuleID = 'test_2_opt.bc'
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
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !3
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !3
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !3
  %4 = load i64* %RSP.i, align 8, !mcsema_real_eip !3
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !3
  %5 = load i64* %RBP.i, align 8, !mcsema_real_eip !3
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !3
  %R9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !3
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !3
  %6 = load i64* %R10.i, align 8, !mcsema_real_eip !3
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
  %7 = load i64* %R11.i, align 8, !mcsema_real_eip !3
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %8 = load i64* %R12.i, align 8, !mcsema_real_eip !3
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !3
  %9 = load i64* %R13.i, align 8, !mcsema_real_eip !3
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %10 = load i64* %R14.i, align 8, !mcsema_real_eip !3
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !3
  %11 = load i64* %R15.i, align 8, !mcsema_real_eip !3
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %12 = load i64* %RIP.i, align 8, !mcsema_real_eip !3
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !3
  %13 = load i1* %DF.i, align 1, !mcsema_real_eip !3
  %14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !3
  %15 = bitcast x86_fp80* %14 to i8*, !mcsema_real_eip !3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %15, i32 128, i32 4, i1 false) #0, !mcsema_real_eip !3
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !3
  %16 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !3
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !3
  %17 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !3
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !3
  %18 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !3
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !3
  %19 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !3
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !3
  %20 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !3
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !3
  %21 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !3
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !3
  %22 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !3
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !3
  %23 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !3
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !3
  %24 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !3
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !3
  %25 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !3
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !3
  %26 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !3
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !3
  %27 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !3
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !3
  %28 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !3
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !3
  %29 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !3
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !3
  %30 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !3
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !3
  %31 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !3
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !3
  %32 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !3
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !3
  %33 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !3
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !3
  %34 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !3
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !3
  %35 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !3
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !3
  %36 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !3
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !3
  %37 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !3
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !3
  %38 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !3
  %39 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !3
  %40 = bitcast i8* %39 to i64*
  %41 = load i64* %40, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !3
  %42 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !3
  %43 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !3
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !3
  %44 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !3
  %45 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !3
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %46 = load i128* %XMM0.i, align 1, !mcsema_real_eip !3
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %47 = load i128* %XMM1.i, align 1, !mcsema_real_eip !3
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %48 = load i128* %XMM2.i, align 1, !mcsema_real_eip !3
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %49 = load i128* %XMM3.i, align 1, !mcsema_real_eip !3
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %50 = load i128* %XMM4.i, align 1, !mcsema_real_eip !3
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %51 = load i128* %XMM5.i, align 1, !mcsema_real_eip !3
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %52 = load i128* %XMM6.i, align 1, !mcsema_real_eip !3
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %53 = load i128* %XMM7.i, align 1, !mcsema_real_eip !3
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %54 = load i128* %XMM8.i, align 1, !mcsema_real_eip !3
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %55 = load i128* %XMM9.i, align 1, !mcsema_real_eip !3
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %56 = load i128* %XMM10.i, align 1, !mcsema_real_eip !3
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %57 = load i128* %XMM11.i, align 1, !mcsema_real_eip !3
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %58 = load i128* %XMM12.i, align 1, !mcsema_real_eip !3
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %59 = load i128* %XMM13.i, align 1, !mcsema_real_eip !3
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %60 = load i128* %XMM14.i, align 1, !mcsema_real_eip !3
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %61 = load i128* %XMM15.i, align 1, !mcsema_real_eip !3
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %62 = load i64* %STACK_BASE.i, align 8, !mcsema_real_eip !3
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %63 = load i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !3
  %64 = add i64 %4, -8
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !3
  store i64 %5, i64* %65, align 8, !mcsema_real_eip !3
  %66 = add i64 %4, -40
  %67 = xor i64 %66, %64, !mcsema_real_eip !4
  %68 = and i64 %67, 16, !mcsema_real_eip !4
  %69 = icmp ne i64 %68, 0, !mcsema_real_eip !4
  %70 = trunc i64 %66 to i8, !mcsema_real_eip !4
  %71 = tail call i8 @llvm.ctpop.i8(i8 %70) #0, !mcsema_real_eip !4
  %72 = and i8 %71, 1
  %73 = icmp eq i8 %72, 0
  %74 = icmp eq i64 %66, 0, !mcsema_real_eip !4
  %75 = icmp slt i64 %66, 0
  %76 = icmp ult i64 %64, 32, !mcsema_real_eip !4
  %77 = and i64 %67, %64, !mcsema_real_eip !4
  %78 = icmp slt i64 %77, 0
  %79 = add i64 %4, -32, !mcsema_real_eip !5
  %80 = inttoptr i64 %79 to i32*
  store i32 80, i32* %80, align 4, !mcsema_real_eip !5
  %81 = inttoptr i64 %66 to i32*
  store i32 70, i32* %81, align 4, !mcsema_real_eip !6
  %82 = add i64 %4, -48
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !7
  store i64 -4981261766360305936, i64* %83, align 8, !mcsema_real_eip !7
  store <2 x i64> %3, <2 x i64>* %2, align 8
  store i64 40, i64* %RCX.i, align 8, !mcsema_real_eip !7
  store i64 30, i64* %RDX.i, align 8, !mcsema_real_eip !7
  store i64 20, i64* %RSI.i, align 8, !mcsema_real_eip !7
  store i64 10, i64* %RDI.i, align 8, !mcsema_real_eip !7
  store i64 %82, i64* %RSP.i, align 8, !mcsema_real_eip !7
  store i64 %64, i64* %RBP.i, align 8, !mcsema_real_eip !7
  store i64 50, i64* %R8.i, align 8, !mcsema_real_eip !7
  store i64 60, i64* %R9.i, align 8, !mcsema_real_eip !7
  store i64 %6, i64* %R10.i, align 8, !mcsema_real_eip !7
  store i64 %7, i64* %R11.i, align 8, !mcsema_real_eip !7
  store i64 %8, i64* %R12.i, align 8, !mcsema_real_eip !7
  store i64 %9, i64* %R13.i, align 8, !mcsema_real_eip !7
  store i64 %10, i64* %R14.i, align 8, !mcsema_real_eip !7
  store i64 %11, i64* %R15.i, align 8, !mcsema_real_eip !7
  store i64 %12, i64* %RIP.i, align 8, !mcsema_real_eip !7
  store i1 %76, i1* %CF.i, align 1, !mcsema_real_eip !7
  store i1 %73, i1* %PF.i, align 1, !mcsema_real_eip !7
  store i1 %69, i1* %AF.i, align 1, !mcsema_real_eip !7
  store i1 %74, i1* %ZF.i, align 1, !mcsema_real_eip !7
  store i1 %75, i1* %SF.i, align 1, !mcsema_real_eip !7
  store i1 %78, i1* %OF.i, align 1, !mcsema_real_eip !7
  store i1 %13, i1* %DF.i, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %1, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !7
  store i1 %16, i1* %FPU_B.i, align 1, !mcsema_real_eip !7
  store i1 %17, i1* %FPU_C3.i, align 1, !mcsema_real_eip !7
  store i3 %18, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !7
  store i1 %19, i1* %FPU_C2.i, align 1, !mcsema_real_eip !7
  store i1 %20, i1* %FPU_C1.i, align 1, !mcsema_real_eip !7
  store i1 %21, i1* %FPU_C0.i, align 1, !mcsema_real_eip !7
  store i1 %22, i1* %FPU_ES.i, align 1, !mcsema_real_eip !7
  store i1 %23, i1* %FPU_SF.i, align 1, !mcsema_real_eip !7
  store i1 %24, i1* %FPU_PE.i, align 1, !mcsema_real_eip !7
  store i1 %25, i1* %FPU_UE.i, align 1, !mcsema_real_eip !7
  store i1 %26, i1* %FPU_OE.i, align 1, !mcsema_real_eip !7
  store i1 %27, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !7
  store i1 %28, i1* %FPU_DE.i, align 1, !mcsema_real_eip !7
  store i1 %29, i1* %FPU_IE.i, align 1, !mcsema_real_eip !7
  store i1 %30, i1* %FPU_X.i, align 1, !mcsema_real_eip !7
  store i2 %31, i2* %FPU_RC.i, align 1, !mcsema_real_eip !7
  store i2 %32, i2* %FPU_PC.i, align 1, !mcsema_real_eip !7
  store i1 %33, i1* %FPU_PM.i, align 1, !mcsema_real_eip !7
  store i1 %34, i1* %FPU_UM.i, align 1, !mcsema_real_eip !7
  store i1 %35, i1* %FPU_OM.i, align 1, !mcsema_real_eip !7
  store i1 %36, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !7
  store i1 %37, i1* %FPU_DM.i, align 1, !mcsema_real_eip !7
  store i1 %38, i1* %FPU_IM.i, align 1, !mcsema_real_eip !7
  store i64 %41, i64* %40, align 4
  store i16 %42, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !7
  store i64 %43, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !7
  store i16 %44, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !7
  store i64 %45, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !7
  store i128 %46, i128* %XMM0.i, align 1, !mcsema_real_eip !7
  store i128 %47, i128* %XMM1.i, align 1, !mcsema_real_eip !7
  store i128 %48, i128* %XMM2.i, align 1, !mcsema_real_eip !7
  store i128 %49, i128* %XMM3.i, align 1, !mcsema_real_eip !7
  store i128 %50, i128* %XMM4.i, align 1, !mcsema_real_eip !7
  store i128 %51, i128* %XMM5.i, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM6.i, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM7.i, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM8.i, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM9.i, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM10.i, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM11.i, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM12.i, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM13.i, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM14.i, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM15.i, align 1, !mcsema_real_eip !7
  store i64 %62, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !7
  store i64 %63, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !7
  %84 = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %84)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %84, i8* %1, i32 128, i32 16, i1 false) #0
  %85 = add i64 %4, -56
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !2
  store i64 %64, i64* %86, align 8, !mcsema_real_eip !2
  %87 = add i64 %4, -76, !mcsema_real_eip !8
  %88 = inttoptr i64 %87 to i32*
  store i32 10, i32* %88, align 4, !mcsema_real_eip !8
  %89 = add i64 %4, -80, !mcsema_real_eip !9
  %90 = inttoptr i64 %89 to i32*
  store i32 20, i32* %90, align 4, !mcsema_real_eip !9
  %91 = add i64 %4, -84, !mcsema_real_eip !10
  %92 = inttoptr i64 %91 to i32*
  store i32 30, i32* %92, align 4, !mcsema_real_eip !10
  %93 = add i64 %4, -88, !mcsema_real_eip !11
  %94 = inttoptr i64 %93 to i32*
  store i32 40, i32* %94, align 4, !mcsema_real_eip !11
  %95 = add i64 %4, -92, !mcsema_real_eip !12
  %96 = inttoptr i64 %95 to i32*
  store i32 50, i32* %96, align 4, !mcsema_real_eip !12
  %97 = add i64 %4, -96, !mcsema_real_eip !13
  %98 = inttoptr i64 %97 to i32*
  store i32 60, i32* %98, align 4, !mcsema_real_eip !13
  %99 = load i32* %90, align 4, !mcsema_real_eip !14
  %100 = load i32* %88, align 4, !mcsema_real_eip !15
  %101 = load i32* %92, align 4, !mcsema_real_eip !16
  %102 = load i32* %94, align 4, !mcsema_real_eip !17
  %103 = load i32* %96, align 4, !mcsema_real_eip !18
  %104 = load i32* %81, align 4, !mcsema_real_eip !19
  %105 = add i32 %99, 60
  %106 = add i32 %105, %100
  %107 = add i32 %106, %101
  %108 = add i32 %107, %102
  %109 = add i32 %108, %103
  %110 = add i32 %109, %104
  %111 = add i64 %4, -64, !mcsema_real_eip !20
  %112 = inttoptr i64 %111 to i32*
  store i32 %110, i32* %112, align 4, !mcsema_real_eip !20
  %113 = add i32 %110, -40
  %114 = icmp eq i32 %113, 0, !mcsema_real_eip !21
  %115 = icmp slt i32 %113, 0
  %116 = sub i32 39, %110
  %117 = and i32 %116, %110
  %118 = icmp slt i32 %117, 0
  %119 = xor i1 %115, %118
  %120 = or i1 %114, %119, !mcsema_real_eip !22
  %121 = load i32* %80, align 4, !mcsema_real_eip !23
  br i1 %120, label %block_0x4f.i.i, label %block_0x42.i.i, !mcsema_real_eip !22

block_0x4f.i.i:                                   ; preds = %driverBlockRaw
  %122 = sub i32 %110, %121, !mcsema_real_eip !24
  %123 = xor i32 %122, %110, !mcsema_real_eip !24
  %124 = xor i32 %123, %121, !mcsema_real_eip !24
  %125 = and i32 %124, 16, !mcsema_real_eip !24
  %126 = icmp ne i32 %125, 0, !mcsema_real_eip !24
  %127 = trunc i32 %122 to i8, !mcsema_real_eip !24
  %128 = tail call i8 @llvm.ctpop.i8(i8 %127) #0, !mcsema_real_eip !24
  %129 = and i8 %128, 1
  %130 = icmp eq i8 %129, 0
  %131 = icmp eq i32 %110, %121
  %132 = icmp slt i32 %122, 0
  %133 = icmp ult i32 %110, %121, !mcsema_real_eip !24
  %134 = xor i32 %121, %110, !mcsema_real_eip !24
  %135 = and i32 %123, %134, !mcsema_real_eip !24
  %136 = icmp slt i32 %135, 0
  %137 = zext i32 %122 to i64, !mcsema_real_eip !24
  %138 = add i64 %4, -60, !mcsema_real_eip !25
  %139 = inttoptr i64 %138 to i32*
  store i32 %122, i32* %139, align 4, !mcsema_real_eip !25
  %140 = load i64* %86, align 8, !mcsema_real_eip !26
  store i64 %137, i64* %RAX.i, align 8, !mcsema_real_eip !27
  %141 = extractelement <2 x i64> %3, i32 1
  store i64 %141, i64* %RBX.i, align 8, !mcsema_real_eip !27
  store i64 40, i64* %RCX.i, align 8, !mcsema_real_eip !27
  store i64 %137, i64* %RDX.i, align 8, !mcsema_real_eip !27
  store i64 20, i64* %RSI.i, align 8, !mcsema_real_eip !27
  store i64 10, i64* %RDI.i, align 8, !mcsema_real_eip !27
  store i64 %66, i64* %RSP.i, align 8, !mcsema_real_eip !27
  store i64 %140, i64* %RBP.i, align 8, !mcsema_real_eip !27
  store i64 50, i64* %R8.i, align 8, !mcsema_real_eip !27
  store i64 60, i64* %R9.i, align 8, !mcsema_real_eip !27
  store i64 %6, i64* %R10.i, align 8, !mcsema_real_eip !27
  store i64 %7, i64* %R11.i, align 8, !mcsema_real_eip !27
  store i64 %8, i64* %R12.i, align 8, !mcsema_real_eip !27
  store i64 %9, i64* %R13.i, align 8, !mcsema_real_eip !27
  store i64 %10, i64* %R14.i, align 8, !mcsema_real_eip !27
  store i64 %11, i64* %R15.i, align 8, !mcsema_real_eip !27
  store i64 %12, i64* %RIP.i, align 8, !mcsema_real_eip !27
  store i1 %133, i1* %CF.i, align 1, !mcsema_real_eip !27
  store i1 %130, i1* %PF.i, align 1, !mcsema_real_eip !27
  store i1 %126, i1* %AF.i, align 1, !mcsema_real_eip !27
  store i1 %131, i1* %ZF.i, align 1, !mcsema_real_eip !27
  store i1 %132, i1* %SF.i, align 1, !mcsema_real_eip !27
  store i1 %136, i1* %OF.i, align 1, !mcsema_real_eip !27
  store i1 %13, i1* %DF.i, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %84, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !27
  store i1 %16, i1* %FPU_B.i, align 1, !mcsema_real_eip !27
  store i1 %17, i1* %FPU_C3.i, align 1, !mcsema_real_eip !27
  store i3 %18, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !27
  store i1 %19, i1* %FPU_C2.i, align 1, !mcsema_real_eip !27
  store i1 %20, i1* %FPU_C1.i, align 1, !mcsema_real_eip !27
  store i1 %21, i1* %FPU_C0.i, align 1, !mcsema_real_eip !27
  store i1 %22, i1* %FPU_ES.i, align 1, !mcsema_real_eip !27
  store i1 %23, i1* %FPU_SF.i, align 1, !mcsema_real_eip !27
  store i1 %24, i1* %FPU_PE.i, align 1, !mcsema_real_eip !27
  store i1 %25, i1* %FPU_UE.i, align 1, !mcsema_real_eip !27
  store i1 %26, i1* %FPU_OE.i, align 1, !mcsema_real_eip !27
  store i1 %27, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !27
  store i1 %28, i1* %FPU_DE.i, align 1, !mcsema_real_eip !27
  store i1 %29, i1* %FPU_IE.i, align 1, !mcsema_real_eip !27
  store i1 %30, i1* %FPU_X.i, align 1, !mcsema_real_eip !27
  store i2 %31, i2* %FPU_RC.i, align 1, !mcsema_real_eip !27
  store i2 %32, i2* %FPU_PC.i, align 1, !mcsema_real_eip !27
  store i1 %33, i1* %FPU_PM.i, align 1, !mcsema_real_eip !27
  store i1 %34, i1* %FPU_UM.i, align 1, !mcsema_real_eip !27
  store i1 %35, i1* %FPU_OM.i, align 1, !mcsema_real_eip !27
  store i1 %36, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !27
  store i1 %37, i1* %FPU_DM.i, align 1, !mcsema_real_eip !27
  store i1 %38, i1* %FPU_IM.i, align 1, !mcsema_real_eip !27
  store i64 %41, i64* %40, align 4
  store i16 %42, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !27
  store i64 %43, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !27
  store i16 %44, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !27
  store i64 %45, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !27
  store i128 %46, i128* %XMM0.i, align 1, !mcsema_real_eip !27
  store i128 %47, i128* %XMM1.i, align 1, !mcsema_real_eip !27
  store i128 %48, i128* %XMM2.i, align 1, !mcsema_real_eip !27
  store i128 %49, i128* %XMM3.i, align 1, !mcsema_real_eip !27
  store i128 %50, i128* %XMM4.i, align 1, !mcsema_real_eip !27
  store i128 %51, i128* %XMM5.i, align 1, !mcsema_real_eip !27
  store i128 %52, i128* %XMM6.i, align 1, !mcsema_real_eip !27
  store i128 %53, i128* %XMM7.i, align 1, !mcsema_real_eip !27
  store i128 %54, i128* %XMM8.i, align 1, !mcsema_real_eip !27
  store i128 %55, i128* %XMM9.i, align 1, !mcsema_real_eip !27
  store i128 %56, i128* %XMM10.i, align 1, !mcsema_real_eip !27
  store i128 %57, i128* %XMM11.i, align 1, !mcsema_real_eip !27
  store i128 %58, i128* %XMM12.i, align 1, !mcsema_real_eip !27
  store i128 %59, i128* %XMM13.i, align 1, !mcsema_real_eip !27
  store i128 %60, i128* %XMM14.i, align 1, !mcsema_real_eip !27
  store i128 %61, i128* %XMM15.i, align 1, !mcsema_real_eip !27
  store i64 %62, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !27
  store i64 %63, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !27
  call void @llvm.lifetime.end(i64 128, i8* %84)
  br label %sub_61.exit

block_0x42.i.i:                                   ; preds = %driverBlockRaw
  %142 = zext i32 %110 to i64, !mcsema_real_eip !28
  %uadd145.i.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %110, i32 %121) #0
  %143 = extractvalue { i32, i1 } %uadd145.i.i, 0
  %144 = xor i32 %143, %121, !mcsema_real_eip !29
  %145 = xor i32 %144, %110, !mcsema_real_eip !29
  %146 = and i32 %145, 16, !mcsema_real_eip !29
  %147 = icmp ne i32 %146, 0, !mcsema_real_eip !29
  %148 = icmp slt i32 %143, 0
  %149 = icmp eq i32 %143, 0, !mcsema_real_eip !29
  %150 = xor i32 %110, -2147483648, !mcsema_real_eip !29
  %151 = xor i32 %150, %121, !mcsema_real_eip !29
  %152 = and i32 %144, %151, !mcsema_real_eip !29
  %153 = icmp slt i32 %152, 0
  %154 = trunc i32 %143 to i8, !mcsema_real_eip !29
  %155 = tail call i8 @llvm.ctpop.i8(i8 %154) #0, !mcsema_real_eip !29
  %156 = and i8 %155, 1
  %157 = icmp eq i8 %156, 0
  %158 = extractvalue { i32, i1 } %uadd145.i.i, 1
  %159 = add i64 %4, -60, !mcsema_real_eip !30
  %160 = inttoptr i64 %159 to i32*
  store i32 %143, i32* %160, align 4, !mcsema_real_eip !30
  %161 = zext i32 %143 to i64, !mcsema_real_eip !31
  %162 = load i64* %86, align 8, !mcsema_real_eip !26
  store i64 %161, i64* %RAX.i, align 8, !mcsema_real_eip !27
  %163 = extractelement <2 x i64> %3, i32 1
  store i64 %163, i64* %RBX.i, align 8, !mcsema_real_eip !27
  store i64 40, i64* %RCX.i, align 8, !mcsema_real_eip !27
  store i64 %142, i64* %RDX.i, align 8, !mcsema_real_eip !27
  store i64 20, i64* %RSI.i, align 8, !mcsema_real_eip !27
  store i64 10, i64* %RDI.i, align 8, !mcsema_real_eip !27
  store i64 %66, i64* %RSP.i, align 8, !mcsema_real_eip !27
  store i64 %162, i64* %RBP.i, align 8, !mcsema_real_eip !27
  store i64 50, i64* %R8.i, align 8, !mcsema_real_eip !27
  store i64 60, i64* %R9.i, align 8, !mcsema_real_eip !27
  store i64 %6, i64* %R10.i, align 8, !mcsema_real_eip !27
  store i64 %7, i64* %R11.i, align 8, !mcsema_real_eip !27
  store i64 %8, i64* %R12.i, align 8, !mcsema_real_eip !27
  store i64 %9, i64* %R13.i, align 8, !mcsema_real_eip !27
  store i64 %10, i64* %R14.i, align 8, !mcsema_real_eip !27
  store i64 %11, i64* %R15.i, align 8, !mcsema_real_eip !27
  store i64 %12, i64* %RIP.i, align 8, !mcsema_real_eip !27
  store i1 %158, i1* %CF.i, align 1, !mcsema_real_eip !27
  store i1 %157, i1* %PF.i, align 1, !mcsema_real_eip !27
  store i1 %147, i1* %AF.i, align 1, !mcsema_real_eip !27
  store i1 %149, i1* %ZF.i, align 1, !mcsema_real_eip !27
  store i1 %148, i1* %SF.i, align 1, !mcsema_real_eip !27
  store i1 %153, i1* %OF.i, align 1, !mcsema_real_eip !27
  store i1 %13, i1* %DF.i, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %84, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !27
  store i1 %16, i1* %FPU_B.i, align 1, !mcsema_real_eip !27
  store i1 %17, i1* %FPU_C3.i, align 1, !mcsema_real_eip !27
  store i3 %18, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !27
  store i1 %19, i1* %FPU_C2.i, align 1, !mcsema_real_eip !27
  store i1 %20, i1* %FPU_C1.i, align 1, !mcsema_real_eip !27
  store i1 %21, i1* %FPU_C0.i, align 1, !mcsema_real_eip !27
  store i1 %22, i1* %FPU_ES.i, align 1, !mcsema_real_eip !27
  store i1 %23, i1* %FPU_SF.i, align 1, !mcsema_real_eip !27
  store i1 %24, i1* %FPU_PE.i, align 1, !mcsema_real_eip !27
  store i1 %25, i1* %FPU_UE.i, align 1, !mcsema_real_eip !27
  store i1 %26, i1* %FPU_OE.i, align 1, !mcsema_real_eip !27
  store i1 %27, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !27
  store i1 %28, i1* %FPU_DE.i, align 1, !mcsema_real_eip !27
  store i1 %29, i1* %FPU_IE.i, align 1, !mcsema_real_eip !27
  store i1 %30, i1* %FPU_X.i, align 1, !mcsema_real_eip !27
  store i2 %31, i2* %FPU_RC.i, align 1, !mcsema_real_eip !27
  store i2 %32, i2* %FPU_PC.i, align 1, !mcsema_real_eip !27
  store i1 %33, i1* %FPU_PM.i, align 1, !mcsema_real_eip !27
  store i1 %34, i1* %FPU_UM.i, align 1, !mcsema_real_eip !27
  store i1 %35, i1* %FPU_OM.i, align 1, !mcsema_real_eip !27
  store i1 %36, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !27
  store i1 %37, i1* %FPU_DM.i, align 1, !mcsema_real_eip !27
  store i1 %38, i1* %FPU_IM.i, align 1, !mcsema_real_eip !27
  store i64 %41, i64* %40, align 4
  store i16 %42, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !27
  store i64 %43, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !27
  store i16 %44, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !27
  store i64 %45, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !27
  store i128 %46, i128* %XMM0.i, align 1, !mcsema_real_eip !27
  store i128 %47, i128* %XMM1.i, align 1, !mcsema_real_eip !27
  store i128 %48, i128* %XMM2.i, align 1, !mcsema_real_eip !27
  store i128 %49, i128* %XMM3.i, align 1, !mcsema_real_eip !27
  store i128 %50, i128* %XMM4.i, align 1, !mcsema_real_eip !27
  store i128 %51, i128* %XMM5.i, align 1, !mcsema_real_eip !27
  store i128 %52, i128* %XMM6.i, align 1, !mcsema_real_eip !27
  store i128 %53, i128* %XMM7.i, align 1, !mcsema_real_eip !27
  store i128 %54, i128* %XMM8.i, align 1, !mcsema_real_eip !27
  store i128 %55, i128* %XMM9.i, align 1, !mcsema_real_eip !27
  store i128 %56, i128* %XMM10.i, align 1, !mcsema_real_eip !27
  store i128 %57, i128* %XMM11.i, align 1, !mcsema_real_eip !27
  store i128 %58, i128* %XMM12.i, align 1, !mcsema_real_eip !27
  store i128 %59, i128* %XMM13.i, align 1, !mcsema_real_eip !27
  store i128 %60, i128* %XMM14.i, align 1, !mcsema_real_eip !27
  store i128 %61, i128* %XMM15.i, align 1, !mcsema_real_eip !27
  store i64 %62, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !27
  store i64 %63, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !27
  call void @llvm.lifetime.end(i64 128, i8* %84)
  br label %sub_61.exit

sub_61.exit:                                      ; preds = %block_0x42.i.i, %block_0x4f.i.i
  %164 = phi i1 [ %153, %block_0x42.i.i ], [ %136, %block_0x4f.i.i ]
  %165 = phi i1 [ %148, %block_0x42.i.i ], [ %132, %block_0x4f.i.i ]
  %166 = phi i1 [ %149, %block_0x42.i.i ], [ %131, %block_0x4f.i.i ]
  %167 = phi i1 [ %147, %block_0x42.i.i ], [ %126, %block_0x4f.i.i ]
  %168 = phi i1 [ %157, %block_0x42.i.i ], [ %130, %block_0x4f.i.i ]
  %169 = phi i1 [ %158, %block_0x42.i.i ], [ %133, %block_0x4f.i.i ]
  %170 = phi i64 [ %162, %block_0x42.i.i ], [ %140, %block_0x4f.i.i ]
  %171 = phi i64 [ %142, %block_0x42.i.i ], [ %137, %block_0x4f.i.i ]
  %172 = phi i64 [ %161, %block_0x42.i.i ], [ %137, %block_0x4f.i.i ]
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %15, i32 128, i32 4, i1 false) #0, !mcsema_real_eip !7
  %173 = add i64 %170, -4, !mcsema_real_eip !32
  %174 = trunc i64 %172 to i32, !mcsema_real_eip !32
  %175 = inttoptr i64 %173 to i32*
  store i32 %174, i32* %175, align 4, !mcsema_real_eip !32
  %176 = inttoptr i64 %170 to i64*, !mcsema_real_eip !33
  %177 = load i64* %176, align 8, !mcsema_real_eip !33
  %178 = add i64 %170, 16, !mcsema_real_eip !34
  store i64 %172, i64* %RAX.i, align 8, !mcsema_real_eip !34
  %179 = extractelement <2 x i64> %3, i32 1
  store i64 %179, i64* %RBX.i, align 8, !mcsema_real_eip !34
  store i64 40, i64* %RCX.i, align 8, !mcsema_real_eip !34
  store i64 %171, i64* %RDX.i, align 8, !mcsema_real_eip !34
  store i64 20, i64* %RSI.i, align 8, !mcsema_real_eip !34
  store i64 10, i64* %RDI.i, align 8, !mcsema_real_eip !34
  store i64 %178, i64* %RSP.i, align 8, !mcsema_real_eip !34
  store i64 %177, i64* %RBP.i, align 8, !mcsema_real_eip !34
  store i64 50, i64* %R8.i, align 8, !mcsema_real_eip !34
  store i64 60, i64* %R9.i, align 8, !mcsema_real_eip !34
  store i64 %6, i64* %R10.i, align 8, !mcsema_real_eip !34
  store i64 %7, i64* %R11.i, align 8, !mcsema_real_eip !34
  store i64 %8, i64* %R12.i, align 8, !mcsema_real_eip !34
  store i64 %9, i64* %R13.i, align 8, !mcsema_real_eip !34
  store i64 %10, i64* %R14.i, align 8, !mcsema_real_eip !34
  store i64 %11, i64* %R15.i, align 8, !mcsema_real_eip !34
  store i64 %12, i64* %RIP.i, align 8, !mcsema_real_eip !34
  store i1 %169, i1* %CF.i, align 1, !mcsema_real_eip !34
  store i1 %168, i1* %PF.i, align 1, !mcsema_real_eip !34
  store i1 %167, i1* %AF.i, align 1, !mcsema_real_eip !34
  store i1 %166, i1* %ZF.i, align 1, !mcsema_real_eip !34
  store i1 %165, i1* %SF.i, align 1, !mcsema_real_eip !34
  store i1 %164, i1* %OF.i, align 1, !mcsema_real_eip !34
  store i1 %13, i1* %DF.i, align 1, !mcsema_real_eip !34
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %1, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !34
  store i1 %16, i1* %FPU_B.i, align 1, !mcsema_real_eip !34
  store i1 %17, i1* %FPU_C3.i, align 1, !mcsema_real_eip !34
  store i3 %18, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !34
  store i1 %19, i1* %FPU_C2.i, align 1, !mcsema_real_eip !34
  store i1 %20, i1* %FPU_C1.i, align 1, !mcsema_real_eip !34
  store i1 %21, i1* %FPU_C0.i, align 1, !mcsema_real_eip !34
  store i1 %22, i1* %FPU_ES.i, align 1, !mcsema_real_eip !34
  store i1 %23, i1* %FPU_SF.i, align 1, !mcsema_real_eip !34
  store i1 %24, i1* %FPU_PE.i, align 1, !mcsema_real_eip !34
  store i1 %25, i1* %FPU_UE.i, align 1, !mcsema_real_eip !34
  store i1 %26, i1* %FPU_OE.i, align 1, !mcsema_real_eip !34
  store i1 %27, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !34
  store i1 %28, i1* %FPU_DE.i, align 1, !mcsema_real_eip !34
  store i1 %29, i1* %FPU_IE.i, align 1, !mcsema_real_eip !34
  store i1 %30, i1* %FPU_X.i, align 1, !mcsema_real_eip !34
  store i2 %31, i2* %FPU_RC.i, align 1, !mcsema_real_eip !34
  store i2 %32, i2* %FPU_PC.i, align 1, !mcsema_real_eip !34
  store i1 %33, i1* %FPU_PM.i, align 1, !mcsema_real_eip !34
  store i1 %34, i1* %FPU_UM.i, align 1, !mcsema_real_eip !34
  store i1 %35, i1* %FPU_OM.i, align 1, !mcsema_real_eip !34
  store i1 %36, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !34
  store i1 %37, i1* %FPU_DM.i, align 1, !mcsema_real_eip !34
  store i1 %38, i1* %FPU_IM.i, align 1, !mcsema_real_eip !34
  store i64 %41, i64* %40, align 4
  store i16 %42, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !34
  store i64 %43, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !34
  store i16 %44, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !34
  store i64 %45, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !34
  store i128 %46, i128* %XMM0.i, align 1, !mcsema_real_eip !34
  store i128 %47, i128* %XMM1.i, align 1, !mcsema_real_eip !34
  store i128 %48, i128* %XMM2.i, align 1, !mcsema_real_eip !34
  store i128 %49, i128* %XMM3.i, align 1, !mcsema_real_eip !34
  store i128 %50, i128* %XMM4.i, align 1, !mcsema_real_eip !34
  store i128 %51, i128* %XMM5.i, align 1, !mcsema_real_eip !34
  store i128 %52, i128* %XMM6.i, align 1, !mcsema_real_eip !34
  store i128 %53, i128* %XMM7.i, align 1, !mcsema_real_eip !34
  store i128 %54, i128* %XMM8.i, align 1, !mcsema_real_eip !34
  store i128 %55, i128* %XMM9.i, align 1, !mcsema_real_eip !34
  store i128 %56, i128* %XMM10.i, align 1, !mcsema_real_eip !34
  store i128 %57, i128* %XMM11.i, align 1, !mcsema_real_eip !34
  store i128 %58, i128* %XMM12.i, align 1, !mcsema_real_eip !34
  store i128 %59, i128* %XMM13.i, align 1, !mcsema_real_eip !34
  store i128 %60, i128* %XMM14.i, align 1, !mcsema_real_eip !34
  store i128 %61, i128* %XMM15.i, align 1, !mcsema_real_eip !34
  store i64 %62, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !34
  store i64 %63, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !34
  call void @llvm.lifetime.end(i64 128, i8* %1)
  ret void
}

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
!2 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 97, [12 x i8] c"\09pushq\09%rbp\00"}
!4 = metadata !{i64 101, [16 x i8] c"\09subq\09$32, %rsp\00"}
!5 = metadata !{i64 105, [19 x i8] c"\09movl\09$80, 8(%rsp)\00"}
!6 = metadata !{i64 113, [18 x i8] c"\09movl\09$70, (%rsp)\00"}
!7 = metadata !{i64 152, [9 x i8] c"\09callq\090\00"}
!8 = metadata !{i64 4, [22 x i8] c"\09movl\09%edi, -20(%rbp)\00"}
!9 = metadata !{i64 7, [22 x i8] c"\09movl\09%esi, -24(%rbp)\00"}
!10 = metadata !{i64 10, [22 x i8] c"\09movl\09%edx, -28(%rbp)\00"}
!11 = metadata !{i64 13, [22 x i8] c"\09movl\09%ecx, -32(%rbp)\00"}
!12 = metadata !{i64 16, [22 x i8] c"\09movl\09%r8d, -36(%rbp)\00"}
!13 = metadata !{i64 20, [22 x i8] c"\09movl\09%r9d, -40(%rbp)\00"}
!14 = metadata !{i64 24, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!15 = metadata !{i64 27, [22 x i8] c"\09movl\09-20(%rbp), %edx\00"}
!16 = metadata !{i64 32, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!17 = metadata !{i64 37, [22 x i8] c"\09movl\09-32(%rbp), %eax\00"}
!18 = metadata !{i64 42, [22 x i8] c"\09movl\09-36(%rbp), %eax\00"}
!19 = metadata !{i64 52, [21 x i8] c"\09movl\0916(%rbp), %eax\00"}
!20 = metadata !{i64 57, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!21 = metadata !{i64 60, [20 x i8] c"\09cmpl\09$40, -8(%rbp)\00"}
!22 = metadata !{i64 64, [8 x i8] c"\09jle\0913\00"}
!23 = metadata !{i64 79, [21 x i8] c"\09movl\0924(%rbp), %eax\00"}
!24 = metadata !{i64 85, [17 x i8] c"\09subl\09%eax, %edx\00"}
!25 = metadata !{i64 89, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!26 = metadata !{i64 95, [11 x i8] c"\09popq\09%rbp\00"}
!27 = metadata !{i64 96, [6 x i8] c"\09retq\00"}
!28 = metadata !{i64 82, [21 x i8] c"\09movl\09-8(%rbp), %edx\00"}
!29 = metadata !{i64 72, [17 x i8] c"\09addl\09%edx, %eax\00"}
!30 = metadata !{i64 74, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!31 = metadata !{i64 92, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!32 = metadata !{i64 157, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!33 = metadata !{i64 163, [7 x i8] c"\09leave\00"}
!34 = metadata !{i64 164, [6 x i8] c"\09retq\00"}
