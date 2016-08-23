; ModuleID = 'test_26_opt.bc'
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
  %2 = load i64* %RBX.i, align 8, !mcsema_real_eip !3
  %RCX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !3
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !3
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !3
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !3
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !3
  %3 = load i64* %RSP.i, align 8, !mcsema_real_eip !3
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !3
  %4 = load i64* %RBP.i, align 8, !mcsema_real_eip !3
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !3
  %R9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !3
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !3
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
  %5 = bitcast i64* %R10.i to <2 x i64>*
  %6 = load <2 x i64>* %5, align 8
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !3
  %7 = bitcast i64* %R12.i to <2 x i64>*
  %8 = load <2 x i64>* %7, align 8
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !3
  %9 = bitcast i64* %R14.i to <2 x i64>*
  %10 = load <2 x i64>* %9, align 8
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %11 = load i64* %RIP.i, align 8, !mcsema_real_eip !3
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !3
  %12 = load i1* %DF.i, align 1, !mcsema_real_eip !3
  %13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !3
  %14 = bitcast x86_fp80* %13 to i8*, !mcsema_real_eip !3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %14, i32 128, i32 4, i1 false) #0, !mcsema_real_eip !3
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !3
  %15 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !3
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !3
  %16 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !3
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !3
  %17 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !3
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !3
  %18 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !3
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !3
  %19 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !3
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !3
  %20 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !3
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !3
  %21 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !3
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !3
  %22 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !3
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !3
  %23 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !3
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !3
  %24 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !3
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !3
  %25 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !3
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !3
  %26 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !3
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !3
  %27 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !3
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !3
  %28 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !3
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !3
  %29 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !3
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !3
  %30 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !3
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !3
  %31 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !3
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !3
  %32 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !3
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !3
  %33 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !3
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !3
  %34 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !3
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !3
  %35 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !3
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !3
  %36 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !3
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !3
  %37 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !3
  %38 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !3
  %39 = bitcast i8* %38 to i64*
  %40 = load i64* %39, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !3
  %41 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !3
  %42 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !3
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !3
  %43 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !3
  %44 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !3
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %45 = load i128* %XMM0.i, align 1, !mcsema_real_eip !3
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %46 = load i128* %XMM1.i, align 1, !mcsema_real_eip !3
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %47 = load i128* %XMM2.i, align 1, !mcsema_real_eip !3
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %48 = load i128* %XMM3.i, align 1, !mcsema_real_eip !3
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %49 = load i128* %XMM4.i, align 1, !mcsema_real_eip !3
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %50 = load i128* %XMM5.i, align 1, !mcsema_real_eip !3
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %51 = load i128* %XMM6.i, align 1, !mcsema_real_eip !3
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %52 = load i128* %XMM7.i, align 1, !mcsema_real_eip !3
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %53 = load i128* %XMM8.i, align 1, !mcsema_real_eip !3
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %54 = load i128* %XMM9.i, align 1, !mcsema_real_eip !3
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %55 = load i128* %XMM10.i, align 1, !mcsema_real_eip !3
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %56 = load i128* %XMM11.i, align 1, !mcsema_real_eip !3
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %57 = load i128* %XMM12.i, align 1, !mcsema_real_eip !3
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %58 = load i128* %XMM13.i, align 1, !mcsema_real_eip !3
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %59 = load i128* %XMM14.i, align 1, !mcsema_real_eip !3
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %60 = load i128* %XMM15.i, align 1, !mcsema_real_eip !3
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %61 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %62 = load <2 x i64>* %61, align 8
  %63 = add i64 %3, -8
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !3
  store i64 %4, i64* %64, align 8, !mcsema_real_eip !3
  %65 = add i64 %3, -40
  %66 = xor i64 %65, %63, !mcsema_real_eip !4
  %67 = and i64 %66, 16, !mcsema_real_eip !4
  %68 = icmp ne i64 %67, 0, !mcsema_real_eip !4
  %69 = trunc i64 %65 to i8, !mcsema_real_eip !4
  %70 = tail call i8 @llvm.ctpop.i8(i8 %69) #0, !mcsema_real_eip !4
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  %73 = icmp eq i64 %65, 0, !mcsema_real_eip !4
  %74 = icmp slt i64 %65, 0
  %75 = icmp ult i64 %63, 32, !mcsema_real_eip !4
  %76 = and i64 %66, %63, !mcsema_real_eip !4
  %77 = icmp slt i64 %76, 0
  %78 = add i64 %3, -24, !mcsema_real_eip !5
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !5
  %80 = inttoptr i64 %78 to i32*
  store i32 10, i32* %80, align 4, !mcsema_real_eip !5
  %81 = add i64 %3, -20, !mcsema_real_eip !6
  %82 = inttoptr i64 %81 to i32*
  store i32 20, i32* %82, align 4, !mcsema_real_eip !6
  %83 = add i64 %3, -16, !mcsema_real_eip !7
  %84 = inttoptr i64 %83 to i32*
  store i32 30, i32* %84, align 4, !mcsema_real_eip !7
  %85 = load i64* %79, align 8, !mcsema_real_eip !8
  %86 = inttoptr i64 %65 to i64*, !mcsema_real_eip !9
  store i64 %85, i64* %86, align 8, !mcsema_real_eip !9
  %87 = load i32* %84, align 4, !mcsema_real_eip !10
  %88 = zext i32 %87 to i64, !mcsema_real_eip !10
  %89 = add i64 %3, -32, !mcsema_real_eip !11
  %90 = inttoptr i64 %89 to i32*
  store i32 %87, i32* %90, align 4, !mcsema_real_eip !11
  %91 = add i64 %3, -48
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !12
  store i64 -4981261766360305936, i64* %92, align 8, !mcsema_real_eip !12
  store i64 %88, i64* %RAX.i, align 8, !mcsema_real_eip !12
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !12
  store i64 4, i64* %RCX.i, align 8, !mcsema_real_eip !12
  store i64 3, i64* %RDX.i, align 8, !mcsema_real_eip !12
  store i64 2, i64* %RSI.i, align 8, !mcsema_real_eip !12
  store i64 1, i64* %RDI.i, align 8, !mcsema_real_eip !12
  store i64 %91, i64* %RSP.i, align 8, !mcsema_real_eip !12
  store i64 %63, i64* %RBP.i, align 8, !mcsema_real_eip !12
  store i64 5, i64* %R8.i, align 8, !mcsema_real_eip !12
  store i64 6, i64* %R9.i, align 8, !mcsema_real_eip !12
  store <2 x i64> %6, <2 x i64>* %5, align 8
  store <2 x i64> %8, <2 x i64>* %7, align 8
  store <2 x i64> %10, <2 x i64>* %9, align 8
  store i64 %11, i64* %RIP.i, align 8, !mcsema_real_eip !12
  store i1 %75, i1* %CF.i, align 1, !mcsema_real_eip !12
  store i1 %72, i1* %PF.i, align 1, !mcsema_real_eip !12
  store i1 %68, i1* %AF.i, align 1, !mcsema_real_eip !12
  store i1 %73, i1* %ZF.i, align 1, !mcsema_real_eip !12
  store i1 %74, i1* %SF.i, align 1, !mcsema_real_eip !12
  store i1 %77, i1* %OF.i, align 1, !mcsema_real_eip !12
  store i1 %12, i1* %DF.i, align 1, !mcsema_real_eip !12
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %1, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !12
  store i1 %15, i1* %FPU_B.i, align 1, !mcsema_real_eip !12
  store i1 %16, i1* %FPU_C3.i, align 1, !mcsema_real_eip !12
  store i3 %17, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !12
  store i1 %18, i1* %FPU_C2.i, align 1, !mcsema_real_eip !12
  store i1 %19, i1* %FPU_C1.i, align 1, !mcsema_real_eip !12
  store i1 %20, i1* %FPU_C0.i, align 1, !mcsema_real_eip !12
  store i1 %21, i1* %FPU_ES.i, align 1, !mcsema_real_eip !12
  store i1 %22, i1* %FPU_SF.i, align 1, !mcsema_real_eip !12
  store i1 %23, i1* %FPU_PE.i, align 1, !mcsema_real_eip !12
  store i1 %24, i1* %FPU_UE.i, align 1, !mcsema_real_eip !12
  store i1 %25, i1* %FPU_OE.i, align 1, !mcsema_real_eip !12
  store i1 %26, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !12
  store i1 %27, i1* %FPU_DE.i, align 1, !mcsema_real_eip !12
  store i1 %28, i1* %FPU_IE.i, align 1, !mcsema_real_eip !12
  store i1 %29, i1* %FPU_X.i, align 1, !mcsema_real_eip !12
  store i2 %30, i2* %FPU_RC.i, align 1, !mcsema_real_eip !12
  store i2 %31, i2* %FPU_PC.i, align 1, !mcsema_real_eip !12
  store i1 %32, i1* %FPU_PM.i, align 1, !mcsema_real_eip !12
  store i1 %33, i1* %FPU_UM.i, align 1, !mcsema_real_eip !12
  store i1 %34, i1* %FPU_OM.i, align 1, !mcsema_real_eip !12
  store i1 %35, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !12
  store i1 %36, i1* %FPU_DM.i, align 1, !mcsema_real_eip !12
  store i1 %37, i1* %FPU_IM.i, align 1, !mcsema_real_eip !12
  store i64 %40, i64* %39, align 4
  store i16 %41, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !12
  store i64 %42, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !12
  store i16 %43, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !12
  store i64 %44, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !12
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !12
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !12
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !12
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !12
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !12
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !12
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !12
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !12
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !12
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !12
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !12
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !12
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !12
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !12
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !12
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !12
  store <2 x i64> %62, <2 x i64>* %61, align 1
  %93 = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %93)
  %94 = bitcast i64* %RBX.i to <2 x i64>*
  %95 = load <2 x i64>* %94, align 8
  %96 = bitcast i64* %R9.i to <2 x i64>*
  %97 = load <2 x i64>* %96, align 8
  %98 = bitcast i64* %R11.i to <2 x i64>*
  %99 = load <2 x i64>* %98, align 8
  %100 = bitcast i64* %R13.i to <2 x i64>*
  %101 = load <2 x i64>* %100, align 8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %93, i8* %1, i32 128, i32 16, i1 false) #0
  %102 = add i64 %3, -56
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !2
  store i64 %63, i64* %103, align 8, !mcsema_real_eip !2
  %104 = add i64 %3, -92, !mcsema_real_eip !13
  %105 = inttoptr i64 %104 to i32*
  store i32 1, i32* %105, align 4, !mcsema_real_eip !13
  %106 = add i64 %3, -96, !mcsema_real_eip !14
  %107 = inttoptr i64 %106 to i32*
  store i32 2, i32* %107, align 4, !mcsema_real_eip !14
  %108 = add i64 %3, -100, !mcsema_real_eip !15
  %109 = inttoptr i64 %108 to i32*
  store i32 3, i32* %109, align 4, !mcsema_real_eip !15
  %110 = add i64 %3, -104, !mcsema_real_eip !16
  %111 = extractelement <2 x i64> %95, i32 1
  %112 = trunc i64 %111 to i32, !mcsema_real_eip !16
  %113 = inttoptr i64 %110 to i32*
  store i32 %112, i32* %113, align 4, !mcsema_real_eip !16
  %114 = add i64 %3, -108, !mcsema_real_eip !17
  %115 = inttoptr i64 %114 to i32*
  store i32 5, i32* %115, align 4, !mcsema_real_eip !17
  %116 = add i64 %3, -112, !mcsema_real_eip !18
  %117 = extractelement <2 x i64> %97, i32 0
  %118 = trunc i64 %117 to i32, !mcsema_real_eip !18
  %119 = inttoptr i64 %116 to i32*
  store i32 %118, i32* %119, align 4, !mcsema_real_eip !18
  %120 = inttoptr i64 %65 to i32*
  %121 = load i32* %120, align 4, !mcsema_real_eip !19
  %122 = load i32* %105, align 4, !mcsema_real_eip !20
  %123 = add i32 %122, %121
  %124 = load i32* %107, align 4, !mcsema_real_eip !21
  %125 = add i32 %123, %124
  %126 = load i32* %109, align 4, !mcsema_real_eip !22
  %127 = add i32 %125, %126
  %128 = add i64 %3, -88, !mcsema_real_eip !23
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !23
  %130 = inttoptr i64 %128 to i32*
  store i32 %127, i32* %130, align 4, !mcsema_real_eip !23
  %131 = add i64 %3, -36, !mcsema_real_eip !24
  %132 = inttoptr i64 %131 to i32*
  %133 = load i32* %132, align 4, !mcsema_real_eip !24
  %134 = load i32* %113, align 4, !mcsema_real_eip !25
  %135 = add i32 %134, %133
  %136 = load i32* %115, align 4, !mcsema_real_eip !26
  %137 = add i32 %135, %136
  %138 = load i32* %119, align 4, !mcsema_real_eip !27
  %uadd74.i.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %137, i32 %138) #0
  %139 = extractvalue { i32, i1 } %uadd74.i.i, 0
  %140 = xor i32 %139, %138, !mcsema_real_eip !28
  %141 = xor i32 %140, %137, !mcsema_real_eip !28
  %142 = and i32 %141, 16, !mcsema_real_eip !28
  %143 = icmp ne i32 %142, 0, !mcsema_real_eip !28
  %144 = icmp slt i32 %139, 0
  %145 = icmp eq i32 %139, 0, !mcsema_real_eip !28
  %146 = xor i32 %138, -2147483648, !mcsema_real_eip !28
  %147 = xor i32 %146, %137, !mcsema_real_eip !28
  %148 = and i32 %140, %147, !mcsema_real_eip !28
  %149 = icmp slt i32 %148, 0
  %150 = trunc i32 %139 to i8, !mcsema_real_eip !28
  %151 = tail call i8 @llvm.ctpop.i8(i8 %150) #0, !mcsema_real_eip !28
  %152 = and i8 %151, 1
  %153 = icmp eq i8 %152, 0
  %154 = extractvalue { i32, i1 } %uadd74.i.i, 1
  %155 = add i64 %3, -84, !mcsema_real_eip !29
  %156 = inttoptr i64 %155 to i32*
  store i32 %139, i32* %156, align 4, !mcsema_real_eip !29
  %157 = load i32* %90, align 4, !mcsema_real_eip !30
  %158 = add i64 %3, -80, !mcsema_real_eip !31
  %159 = inttoptr i64 %158 to i32*
  store i32 %157, i32* %159, align 4, !mcsema_real_eip !31
  %160 = load i64* %129, align 8, !mcsema_real_eip !32
  %161 = add i64 %3, -72, !mcsema_real_eip !33
  %162 = inttoptr i64 %161 to i64*, !mcsema_real_eip !33
  store i64 %160, i64* %162, align 8, !mcsema_real_eip !33
  %163 = load i32* %159, align 4, !mcsema_real_eip !34
  %164 = add i64 %3, -64, !mcsema_real_eip !35
  %165 = inttoptr i64 %164 to i32*
  store i32 %163, i32* %165, align 4, !mcsema_real_eip !35
  %166 = load i64* %162, align 8, !mcsema_real_eip !36
  %167 = zext i32 %163 to i64, !mcsema_real_eip !37
  %168 = load i64* %103, align 8, !mcsema_real_eip !38
  store i64 %166, i64* %RAX.i, align 8, !mcsema_real_eip !39
  store <2 x i64> %95, <2 x i64>* %94, align 8
  store i64 %167, i64* %RDX.i, align 8, !mcsema_real_eip !39
  store i64 2, i64* %RSI.i, align 8, !mcsema_real_eip !39
  store i64 1, i64* %RDI.i, align 8, !mcsema_real_eip !39
  store i64 %65, i64* %RSP.i, align 8, !mcsema_real_eip !39
  store i64 %168, i64* %RBP.i, align 8, !mcsema_real_eip !39
  store i64 5, i64* %R8.i, align 8, !mcsema_real_eip !39
  store <2 x i64> %97, <2 x i64>* %96, align 8
  store <2 x i64> %99, <2 x i64>* %98, align 8
  store <2 x i64> %101, <2 x i64>* %100, align 8
  %169 = extractelement <2 x i64> %10, i32 1
  store i64 %169, i64* %R15.i, align 8, !mcsema_real_eip !39
  store i64 %11, i64* %RIP.i, align 8, !mcsema_real_eip !39
  store i1 %154, i1* %CF.i, align 1, !mcsema_real_eip !39
  store i1 %153, i1* %PF.i, align 1, !mcsema_real_eip !39
  store i1 %143, i1* %AF.i, align 1, !mcsema_real_eip !39
  store i1 %145, i1* %ZF.i, align 1, !mcsema_real_eip !39
  store i1 %144, i1* %SF.i, align 1, !mcsema_real_eip !39
  store i1 %149, i1* %OF.i, align 1, !mcsema_real_eip !39
  store i1 %12, i1* %DF.i, align 1, !mcsema_real_eip !39
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %93, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !39
  store i1 %15, i1* %FPU_B.i, align 1, !mcsema_real_eip !39
  store i1 %16, i1* %FPU_C3.i, align 1, !mcsema_real_eip !39
  store i3 %17, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !39
  store i1 %18, i1* %FPU_C2.i, align 1, !mcsema_real_eip !39
  store i1 %19, i1* %FPU_C1.i, align 1, !mcsema_real_eip !39
  store i1 %20, i1* %FPU_C0.i, align 1, !mcsema_real_eip !39
  store i1 %21, i1* %FPU_ES.i, align 1, !mcsema_real_eip !39
  store i1 %22, i1* %FPU_SF.i, align 1, !mcsema_real_eip !39
  store i1 %23, i1* %FPU_PE.i, align 1, !mcsema_real_eip !39
  store i1 %24, i1* %FPU_UE.i, align 1, !mcsema_real_eip !39
  store i1 %25, i1* %FPU_OE.i, align 1, !mcsema_real_eip !39
  store i1 %26, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !39
  store i1 %27, i1* %FPU_DE.i, align 1, !mcsema_real_eip !39
  store i1 %28, i1* %FPU_IE.i, align 1, !mcsema_real_eip !39
  store i1 %29, i1* %FPU_X.i, align 1, !mcsema_real_eip !39
  store i2 %30, i2* %FPU_RC.i, align 1, !mcsema_real_eip !39
  store i2 %31, i2* %FPU_PC.i, align 1, !mcsema_real_eip !39
  store i1 %32, i1* %FPU_PM.i, align 1, !mcsema_real_eip !39
  store i1 %33, i1* %FPU_UM.i, align 1, !mcsema_real_eip !39
  store i1 %34, i1* %FPU_OM.i, align 1, !mcsema_real_eip !39
  store i1 %35, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !39
  store i1 %36, i1* %FPU_DM.i, align 1, !mcsema_real_eip !39
  store i1 %37, i1* %FPU_IM.i, align 1, !mcsema_real_eip !39
  store i64 %40, i64* %39, align 4
  store i16 %41, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !39
  store i64 %42, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !39
  store i16 %43, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !39
  store i64 %44, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !39
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !39
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !39
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !39
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !39
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !39
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !39
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !39
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !39
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !39
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !39
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !39
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !39
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !39
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !39
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !39
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !39
  store <2 x i64> %62, <2 x i64>* %61, align 1
  call void @llvm.lifetime.end(i64 128, i8* %93)
  %170 = bitcast <2 x i64> %95 to i128
  %trunc.i = trunc i128 %170 to i64
  %171 = lshr i128 %170, 64
  %172 = trunc i128 %171 to i64
  %173 = bitcast <2 x i64> %97 to i128
  %trunc1.i = trunc i128 %173 to i64
  %174 = lshr i128 %173, 64
  %175 = trunc i128 %174 to i64
  %176 = bitcast <2 x i64> %99 to i128
  %trunc2.i = trunc i128 %176 to i64
  %177 = lshr i128 %176, 64
  %178 = trunc i128 %177 to i64
  %179 = bitcast <2 x i64> %101 to i128
  %trunc3.i = trunc i128 %179 to i64
  %180 = lshr i128 %179, 64
  %181 = trunc i128 %180 to i64
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %14, i32 128, i32 4, i1 false) #0, !mcsema_real_eip !12
  %182 = bitcast <2 x i64> %62 to i128
  %trunc4.i = trunc i128 %182 to i64
  %183 = lshr i128 %182, 64
  %184 = trunc i128 %183 to i64
  %185 = inttoptr i64 %168 to i64*, !mcsema_real_eip !40
  %186 = load i64* %185, align 8, !mcsema_real_eip !40
  %187 = add i64 %168, 16, !mcsema_real_eip !41
  store i64 0, i64* %RAX.i, align 8, !mcsema_real_eip !41
  store i64 %trunc.i, i64* %RBX.i, align 8, !mcsema_real_eip !41
  store i64 %172, i64* %RCX.i, align 8, !mcsema_real_eip !41
  store i64 %167, i64* %RDX.i, align 8, !mcsema_real_eip !41
  store i64 2, i64* %RSI.i, align 8, !mcsema_real_eip !41
  store i64 1, i64* %RDI.i, align 8, !mcsema_real_eip !41
  store i64 %187, i64* %RSP.i, align 8, !mcsema_real_eip !41
  store i64 %186, i64* %RBP.i, align 8, !mcsema_real_eip !41
  store i64 5, i64* %R8.i, align 8, !mcsema_real_eip !41
  store i64 %trunc1.i, i64* %R9.i, align 8, !mcsema_real_eip !41
  store i64 %175, i64* %R10.i, align 8, !mcsema_real_eip !41
  store i64 %trunc2.i, i64* %R11.i, align 8, !mcsema_real_eip !41
  store i64 %178, i64* %R12.i, align 8, !mcsema_real_eip !41
  store i64 %trunc3.i, i64* %R13.i, align 8, !mcsema_real_eip !41
  store i64 %181, i64* %R14.i, align 8, !mcsema_real_eip !41
  store i64 %169, i64* %R15.i, align 8, !mcsema_real_eip !41
  store i64 %11, i64* %RIP.i, align 8, !mcsema_real_eip !41
  store i1 %154, i1* %CF.i, align 1, !mcsema_real_eip !41
  store i1 %153, i1* %PF.i, align 1, !mcsema_real_eip !41
  store i1 %143, i1* %AF.i, align 1, !mcsema_real_eip !41
  store i1 %145, i1* %ZF.i, align 1, !mcsema_real_eip !41
  store i1 %144, i1* %SF.i, align 1, !mcsema_real_eip !41
  store i1 %149, i1* %OF.i, align 1, !mcsema_real_eip !41
  store i1 %12, i1* %DF.i, align 1, !mcsema_real_eip !41
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %1, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !41
  store i1 %15, i1* %FPU_B.i, align 1, !mcsema_real_eip !41
  store i1 %16, i1* %FPU_C3.i, align 1, !mcsema_real_eip !41
  store i3 %17, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !41
  store i1 %18, i1* %FPU_C2.i, align 1, !mcsema_real_eip !41
  store i1 %19, i1* %FPU_C1.i, align 1, !mcsema_real_eip !41
  store i1 %20, i1* %FPU_C0.i, align 1, !mcsema_real_eip !41
  store i1 %21, i1* %FPU_ES.i, align 1, !mcsema_real_eip !41
  store i1 %22, i1* %FPU_SF.i, align 1, !mcsema_real_eip !41
  store i1 %23, i1* %FPU_PE.i, align 1, !mcsema_real_eip !41
  store i1 %24, i1* %FPU_UE.i, align 1, !mcsema_real_eip !41
  store i1 %25, i1* %FPU_OE.i, align 1, !mcsema_real_eip !41
  store i1 %26, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !41
  store i1 %27, i1* %FPU_DE.i, align 1, !mcsema_real_eip !41
  store i1 %28, i1* %FPU_IE.i, align 1, !mcsema_real_eip !41
  store i1 %29, i1* %FPU_X.i, align 1, !mcsema_real_eip !41
  store i2 %30, i2* %FPU_RC.i, align 1, !mcsema_real_eip !41
  store i2 %31, i2* %FPU_PC.i, align 1, !mcsema_real_eip !41
  store i1 %32, i1* %FPU_PM.i, align 1, !mcsema_real_eip !41
  store i1 %33, i1* %FPU_UM.i, align 1, !mcsema_real_eip !41
  store i1 %34, i1* %FPU_OM.i, align 1, !mcsema_real_eip !41
  store i1 %35, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !41
  store i1 %36, i1* %FPU_DM.i, align 1, !mcsema_real_eip !41
  store i1 %37, i1* %FPU_IM.i, align 1, !mcsema_real_eip !41
  store i64 %40, i64* %39, align 4
  store i16 %41, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !41
  store i64 %42, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !41
  store i16 %43, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !41
  store i64 %44, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !41
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !41
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !41
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !41
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !41
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !41
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !41
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !41
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !41
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !41
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !41
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !41
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !41
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !41
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !41
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !41
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !41
  store i64 %trunc4.i, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !41
  store i64 %184, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !41
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
!3 = metadata !{i64 95, [12 x i8] c"\09pushq\09%rbp\00"}
!4 = metadata !{i64 99, [16 x i8] c"\09subq\09$32, %rsp\00"}
!5 = metadata !{i64 103, [21 x i8] c"\09movl\09$10, -16(%rbp)\00"}
!6 = metadata !{i64 110, [21 x i8] c"\09movl\09$20, -12(%rbp)\00"}
!7 = metadata !{i64 117, [20 x i8] c"\09movl\09$30, -8(%rbp)\00"}
!8 = metadata !{i64 124, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!9 = metadata !{i64 128, [19 x i8] c"\09movq\09%rax, (%rsp)\00"}
!10 = metadata !{i64 132, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!11 = metadata !{i64 135, [20 x i8] c"\09movl\09%eax, 8(%rsp)\00"}
!12 = metadata !{i64 171, [9 x i8] c"\09callq\090\00"}
!13 = metadata !{i64 4, [22 x i8] c"\09movl\09%edi, -36(%rbp)\00"}
!14 = metadata !{i64 7, [22 x i8] c"\09movl\09%esi, -40(%rbp)\00"}
!15 = metadata !{i64 10, [22 x i8] c"\09movl\09%edx, -44(%rbp)\00"}
!16 = metadata !{i64 13, [22 x i8] c"\09movl\09%ecx, -48(%rbp)\00"}
!17 = metadata !{i64 16, [22 x i8] c"\09movl\09%r8d, -52(%rbp)\00"}
!18 = metadata !{i64 20, [22 x i8] c"\09movl\09%r9d, -56(%rbp)\00"}
!19 = metadata !{i64 24, [21 x i8] c"\09movl\0916(%rbp), %edx\00"}
!20 = metadata !{i64 27, [22 x i8] c"\09movl\09-36(%rbp), %eax\00"}
!21 = metadata !{i64 32, [22 x i8] c"\09movl\09-40(%rbp), %eax\00"}
!22 = metadata !{i64 37, [22 x i8] c"\09movl\09-44(%rbp), %eax\00"}
!23 = metadata !{i64 42, [22 x i8] c"\09movl\09%eax, -32(%rbp)\00"}
!24 = metadata !{i64 45, [21 x i8] c"\09movl\0920(%rbp), %edx\00"}
!25 = metadata !{i64 48, [22 x i8] c"\09movl\09-48(%rbp), %eax\00"}
!26 = metadata !{i64 53, [22 x i8] c"\09movl\09-52(%rbp), %eax\00"}
!27 = metadata !{i64 58, [22 x i8] c"\09movl\09-56(%rbp), %eax\00"}
!28 = metadata !{i64 61, [17 x i8] c"\09addl\09%edx, %eax\00"}
!29 = metadata !{i64 63, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
!30 = metadata !{i64 66, [21 x i8] c"\09movl\0924(%rbp), %eax\00"}
!31 = metadata !{i64 69, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!32 = metadata !{i64 72, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!33 = metadata !{i64 76, [22 x i8] c"\09movq\09%rax, -16(%rbp)\00"}
!34 = metadata !{i64 80, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!35 = metadata !{i64 83, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!36 = metadata !{i64 86, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!37 = metadata !{i64 90, [21 x i8] c"\09movl\09-8(%rbp), %edx\00"}
!38 = metadata !{i64 93, [11 x i8] c"\09popq\09%rbp\00"}
!39 = metadata !{i64 94, [6 x i8] c"\09retq\00"}
!40 = metadata !{i64 181, [7 x i8] c"\09leave\00"}
!41 = metadata !{i64 182, [6 x i8] c"\09retq\00"}
