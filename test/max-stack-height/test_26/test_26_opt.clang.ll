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
  %65 = add i64 %3, -72
  %66 = xor i64 %65, %63, !mcsema_real_eip !4
  %67 = and i64 %66, 16, !mcsema_real_eip !4
  %68 = icmp ne i64 %67, 0, !mcsema_real_eip !4
  %69 = trunc i64 %65 to i8, !mcsema_real_eip !4
  %70 = tail call i8 @llvm.ctpop.i8(i8 %69) #0, !mcsema_real_eip !4
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  %73 = icmp eq i64 %65, 0, !mcsema_real_eip !4
  %74 = icmp slt i64 %65, 0
  %75 = icmp ult i64 %63, 64, !mcsema_real_eip !4
  %76 = and i64 %66, %63, !mcsema_real_eip !4
  %77 = icmp slt i64 %76, 0
  %78 = add i64 %3, -12, !mcsema_real_eip !5
  %79 = inttoptr i64 %78 to i32*
  store i32 0, i32* %79, align 4, !mcsema_real_eip !5
  %80 = add i64 %3, -24, !mcsema_real_eip !6
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !6
  store i64 85899345930, i64* %81, align 8, !mcsema_real_eip !6
  %82 = add i64 %3, -16, !mcsema_real_eip !7
  %83 = inttoptr i64 %82 to i32*
  store i32 30, i32* %83, align 4, !mcsema_real_eip !7
  %84 = add i64 %3, -64, !mcsema_real_eip !8
  %85 = inttoptr i64 %84 to i32*
  store i32 30, i32* %85, align 4, !mcsema_real_eip !8
  %86 = load i64* %81, align 8, !mcsema_real_eip !9
  %87 = inttoptr i64 %65 to i64*, !mcsema_real_eip !10
  store i64 %86, i64* %87, align 8, !mcsema_real_eip !10
  %88 = add i64 %3, -60, !mcsema_real_eip !11
  %89 = inttoptr i64 %88 to i32*
  store i32 0, i32* %89, align 4, !mcsema_real_eip !11
  %90 = add i64 %3, -80
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !12
  store i64 -4981261766360305936, i64* %91, align 8, !mcsema_real_eip !12
  store i64 0, i64* %RAX.i, align 8, !mcsema_real_eip !12
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !12
  store i64 4, i64* %RCX.i, align 8, !mcsema_real_eip !12
  store i64 3, i64* %RDX.i, align 8, !mcsema_real_eip !12
  store i64 2, i64* %RSI.i, align 8, !mcsema_real_eip !12
  store i64 1, i64* %RDI.i, align 8, !mcsema_real_eip !12
  store i64 %90, i64* %RSP.i, align 8, !mcsema_real_eip !12
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
  %92 = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %92)
  %93 = bitcast i64* %R9.i to <2 x i64>*
  %94 = load <2 x i64>* %93, align 8
  %95 = bitcast i64* %R11.i to <2 x i64>*
  %96 = load <2 x i64>* %95, align 8
  %97 = bitcast i64* %R13.i to <2 x i64>*
  %98 = load <2 x i64>* %97, align 8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %92, i8* %1, i32 128, i32 16, i1 false) #0
  %99 = add i64 %3, -88
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !2
  store i64 %63, i64* %100, align 8, !mcsema_real_eip !2
  %101 = add i64 %3, -108, !mcsema_real_eip !13
  %102 = inttoptr i64 %101 to i32*
  store i32 1, i32* %102, align 4, !mcsema_real_eip !13
  %103 = add i64 %3, -112, !mcsema_real_eip !14
  %104 = inttoptr i64 %103 to i32*
  store i32 2, i32* %104, align 4, !mcsema_real_eip !14
  %105 = add i64 %3, -116, !mcsema_real_eip !15
  %106 = inttoptr i64 %105 to i32*
  store i32 3, i32* %106, align 4, !mcsema_real_eip !15
  %107 = add i64 %3, -120, !mcsema_real_eip !16
  %108 = inttoptr i64 %107 to i32*
  store i32 4, i32* %108, align 4, !mcsema_real_eip !16
  %109 = add i64 %3, -124, !mcsema_real_eip !17
  %110 = inttoptr i64 %109 to i32*
  store i32 5, i32* %110, align 4, !mcsema_real_eip !17
  %111 = add i64 %3, -128, !mcsema_real_eip !18
  %112 = extractelement <2 x i64> %94, i32 0
  %113 = trunc i64 %112 to i32, !mcsema_real_eip !18
  %114 = inttoptr i64 %111 to i32*
  store i32 %113, i32* %114, align 4, !mcsema_real_eip !18
  %115 = inttoptr i64 %65 to i32*
  %116 = load i32* %115, align 4, !mcsema_real_eip !19
  %117 = load i32* %102, align 4, !mcsema_real_eip !20
  %118 = add i32 %117, %116
  %119 = load i32* %104, align 4, !mcsema_real_eip !21
  %120 = add i32 %118, %119
  %121 = load i32* %106, align 4, !mcsema_real_eip !22
  %122 = add i32 %120, %121
  %123 = add i64 %3, -144, !mcsema_real_eip !23
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !23
  %125 = inttoptr i64 %123 to i32*
  store i32 %122, i32* %125, align 4, !mcsema_real_eip !23
  %126 = add i64 %3, -68, !mcsema_real_eip !24
  %127 = inttoptr i64 %126 to i32*
  %128 = load i32* %127, align 4, !mcsema_real_eip !24
  %129 = load i32* %108, align 4, !mcsema_real_eip !25
  %130 = add i32 %129, %128
  %131 = load i32* %110, align 4, !mcsema_real_eip !26
  %132 = add i32 %130, %131
  %133 = load i32* %114, align 4, !mcsema_real_eip !27
  %uadd74.i.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %133, i32 %132) #0
  %134 = extractvalue { i32, i1 } %uadd74.i.i, 0
  %135 = xor i32 %134, %132, !mcsema_real_eip !28
  %136 = xor i32 %135, %133, !mcsema_real_eip !28
  %137 = and i32 %136, 16, !mcsema_real_eip !28
  %138 = icmp ne i32 %137, 0, !mcsema_real_eip !28
  %139 = icmp slt i32 %134, 0
  %140 = icmp eq i32 %134, 0, !mcsema_real_eip !28
  %141 = xor i32 %133, -2147483648, !mcsema_real_eip !28
  %142 = xor i32 %141, %132, !mcsema_real_eip !28
  %143 = and i32 %135, %142, !mcsema_real_eip !28
  %144 = icmp slt i32 %143, 0
  %145 = trunc i32 %134 to i8, !mcsema_real_eip !28
  %146 = tail call i8 @llvm.ctpop.i8(i8 %145) #0, !mcsema_real_eip !28
  %147 = and i8 %146, 1
  %148 = icmp eq i8 %147, 0
  %149 = extractvalue { i32, i1 } %uadd74.i.i, 1
  %150 = add i64 %3, -140, !mcsema_real_eip !29
  %151 = inttoptr i64 %150 to i32*
  store i32 %134, i32* %151, align 4, !mcsema_real_eip !29
  %152 = load i32* %85, align 4, !mcsema_real_eip !30
  %153 = add i64 %3, -136, !mcsema_real_eip !31
  %154 = inttoptr i64 %153 to i32*
  store i32 %152, i32* %154, align 4, !mcsema_real_eip !31
  %155 = add i64 %3, -96, !mcsema_real_eip !32
  %156 = inttoptr i64 %155 to i32*
  store i32 %152, i32* %156, align 4, !mcsema_real_eip !32
  %157 = load i64* %124, align 8, !mcsema_real_eip !33
  %158 = add i64 %3, -104, !mcsema_real_eip !34
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !34
  store i64 %157, i64* %159, align 8, !mcsema_real_eip !34
  %160 = load i32* %156, align 4, !mcsema_real_eip !35
  %161 = zext i32 %160 to i64, !mcsema_real_eip !35
  %162 = add i64 %3, -152, !mcsema_real_eip !36
  %163 = inttoptr i64 %162 to i32*
  store i32 %160, i32* %163, align 4, !mcsema_real_eip !36
  %164 = load i64* %159, align 8, !mcsema_real_eip !37
  %165 = add i64 %3, -160, !mcsema_real_eip !38
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !38
  store i64 %164, i64* %166, align 8, !mcsema_real_eip !38
  %167 = load i32* %163, align 4, !mcsema_real_eip !39
  %168 = zext i32 %167 to i64, !mcsema_real_eip !39
  %169 = load i64* %100, align 8, !mcsema_real_eip !40
  store i64 %164, i64* %RAX.i, align 8, !mcsema_real_eip !41
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !41
  store i64 %161, i64* %RCX.i, align 8, !mcsema_real_eip !41
  store i64 %168, i64* %RDX.i, align 8, !mcsema_real_eip !41
  store i64 2, i64* %RSI.i, align 8, !mcsema_real_eip !41
  store i64 1, i64* %RDI.i, align 8, !mcsema_real_eip !41
  store i64 %65, i64* %RSP.i, align 8, !mcsema_real_eip !41
  store i64 %169, i64* %RBP.i, align 8, !mcsema_real_eip !41
  store i64 5, i64* %R8.i, align 8, !mcsema_real_eip !41
  store <2 x i64> %94, <2 x i64>* %93, align 8
  store <2 x i64> %96, <2 x i64>* %95, align 8
  store <2 x i64> %98, <2 x i64>* %97, align 8
  %170 = extractelement <2 x i64> %10, i32 1
  store i64 %170, i64* %R15.i, align 8, !mcsema_real_eip !41
  store i64 %11, i64* %RIP.i, align 8, !mcsema_real_eip !41
  store i1 %149, i1* %CF.i, align 1, !mcsema_real_eip !41
  store i1 %148, i1* %PF.i, align 1, !mcsema_real_eip !41
  store i1 %138, i1* %AF.i, align 1, !mcsema_real_eip !41
  store i1 %140, i1* %ZF.i, align 1, !mcsema_real_eip !41
  store i1 %139, i1* %SF.i, align 1, !mcsema_real_eip !41
  store i1 %144, i1* %OF.i, align 1, !mcsema_real_eip !41
  store i1 %12, i1* %DF.i, align 1, !mcsema_real_eip !41
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %92, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !41
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
  store <2 x i64> %62, <2 x i64>* %61, align 1
  call void @llvm.lifetime.end(i64 128, i8* %92)
  %171 = bitcast <2 x i64> %94 to i128
  %trunc.i = trunc i128 %171 to i64
  %172 = lshr i128 %171, 64
  %173 = trunc i128 %172 to i64
  %174 = bitcast <2 x i64> %96 to i128
  %trunc1.i = trunc i128 %174 to i64
  %175 = lshr i128 %174, 64
  %176 = trunc i128 %175 to i64
  %177 = bitcast <2 x i64> %98 to i128
  %trunc2.i = trunc i128 %177 to i64
  %178 = lshr i128 %177, 64
  %179 = trunc i128 %178 to i64
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %14, i32 128, i32 4, i1 false) #0, !mcsema_real_eip !12
  %180 = bitcast <2 x i64> %62 to i128
  %trunc3.i = trunc i128 %180 to i64
  %181 = lshr i128 %180, 64
  %182 = trunc i128 %181 to i64
  %183 = add i64 %169, -40, !mcsema_real_eip !42
  %184 = inttoptr i64 %183 to i32*
  store i32 %167, i32* %184, align 4, !mcsema_real_eip !42
  %185 = add i64 %169, -48, !mcsema_real_eip !43
  %186 = inttoptr i64 %185 to i64*, !mcsema_real_eip !43
  store i64 %164, i64* %186, align 8, !mcsema_real_eip !43
  %187 = add i64 %169, -32, !mcsema_real_eip !44
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !44
  store i64 %164, i64* %188, align 8, !mcsema_real_eip !44
  %189 = load i32* %184, align 4, !mcsema_real_eip !45
  %190 = zext i32 %189 to i64, !mcsema_real_eip !45
  %191 = add i64 %169, -24, !mcsema_real_eip !46
  %192 = inttoptr i64 %191 to i32*
  store i32 %189, i32* %192, align 4, !mcsema_real_eip !46
  %193 = add i64 %169, -52, !mcsema_real_eip !47
  %194 = inttoptr i64 %193 to i32*
  %195 = load i32* %194, align 4, !mcsema_real_eip !47
  %196 = zext i32 %195 to i64, !mcsema_real_eip !47
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %65, i64 64) #0
  %197 = extractvalue { i64, i1 } %uadd.i, 0
  %198 = xor i64 %197, %65, !mcsema_real_eip !48
  %199 = and i64 %198, 16, !mcsema_real_eip !48
  %200 = icmp ne i64 %199, 0, !mcsema_real_eip !48
  %201 = icmp slt i64 %197, 0
  %202 = icmp eq i64 %197, 0, !mcsema_real_eip !48
  %203 = add i64 %3, 9223372036854775736
  %204 = and i64 %198, %203, !mcsema_real_eip !48
  %205 = icmp slt i64 %204, 0
  %206 = trunc i64 %197 to i8, !mcsema_real_eip !48
  %207 = tail call i8 @llvm.ctpop.i8(i8 %206) #0, !mcsema_real_eip !48
  %208 = and i8 %207, 1
  %209 = icmp eq i8 %208, 0
  %210 = extractvalue { i64, i1 } %uadd.i, 1
  %211 = inttoptr i64 %197 to i64*, !mcsema_real_eip !49
  %212 = load i64* %211, align 8, !mcsema_real_eip !49
  %213 = add i64 %197, 16, !mcsema_real_eip !50
  store i64 %196, i64* %RAX.i, align 8, !mcsema_real_eip !50
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !50
  store i64 %190, i64* %RCX.i, align 8, !mcsema_real_eip !50
  store i64 %168, i64* %RDX.i, align 8, !mcsema_real_eip !50
  store i64 2, i64* %RSI.i, align 8, !mcsema_real_eip !50
  store i64 1, i64* %RDI.i, align 8, !mcsema_real_eip !50
  store i64 %213, i64* %RSP.i, align 8, !mcsema_real_eip !50
  store i64 %212, i64* %RBP.i, align 8, !mcsema_real_eip !50
  store i64 5, i64* %R8.i, align 8, !mcsema_real_eip !50
  store i64 %trunc.i, i64* %R9.i, align 8, !mcsema_real_eip !50
  store i64 %173, i64* %R10.i, align 8, !mcsema_real_eip !50
  store i64 %trunc1.i, i64* %R11.i, align 8, !mcsema_real_eip !50
  store i64 %176, i64* %R12.i, align 8, !mcsema_real_eip !50
  store i64 %trunc2.i, i64* %R13.i, align 8, !mcsema_real_eip !50
  store i64 %179, i64* %R14.i, align 8, !mcsema_real_eip !50
  store i64 %170, i64* %R15.i, align 8, !mcsema_real_eip !50
  store i64 %11, i64* %RIP.i, align 8, !mcsema_real_eip !50
  store i1 %210, i1* %CF.i, align 1, !mcsema_real_eip !50
  store i1 %209, i1* %PF.i, align 1, !mcsema_real_eip !50
  store i1 %200, i1* %AF.i, align 1, !mcsema_real_eip !50
  store i1 %202, i1* %ZF.i, align 1, !mcsema_real_eip !50
  store i1 %201, i1* %SF.i, align 1, !mcsema_real_eip !50
  store i1 %205, i1* %OF.i, align 1, !mcsema_real_eip !50
  store i1 %12, i1* %DF.i, align 1, !mcsema_real_eip !50
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %1, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !50
  store i1 %15, i1* %FPU_B.i, align 1, !mcsema_real_eip !50
  store i1 %16, i1* %FPU_C3.i, align 1, !mcsema_real_eip !50
  store i3 %17, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !50
  store i1 %18, i1* %FPU_C2.i, align 1, !mcsema_real_eip !50
  store i1 %19, i1* %FPU_C1.i, align 1, !mcsema_real_eip !50
  store i1 %20, i1* %FPU_C0.i, align 1, !mcsema_real_eip !50
  store i1 %21, i1* %FPU_ES.i, align 1, !mcsema_real_eip !50
  store i1 %22, i1* %FPU_SF.i, align 1, !mcsema_real_eip !50
  store i1 %23, i1* %FPU_PE.i, align 1, !mcsema_real_eip !50
  store i1 %24, i1* %FPU_UE.i, align 1, !mcsema_real_eip !50
  store i1 %25, i1* %FPU_OE.i, align 1, !mcsema_real_eip !50
  store i1 %26, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !50
  store i1 %27, i1* %FPU_DE.i, align 1, !mcsema_real_eip !50
  store i1 %28, i1* %FPU_IE.i, align 1, !mcsema_real_eip !50
  store i1 %29, i1* %FPU_X.i, align 1, !mcsema_real_eip !50
  store i2 %30, i2* %FPU_RC.i, align 1, !mcsema_real_eip !50
  store i2 %31, i2* %FPU_PC.i, align 1, !mcsema_real_eip !50
  store i1 %32, i1* %FPU_PM.i, align 1, !mcsema_real_eip !50
  store i1 %33, i1* %FPU_UM.i, align 1, !mcsema_real_eip !50
  store i1 %34, i1* %FPU_OM.i, align 1, !mcsema_real_eip !50
  store i1 %35, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !50
  store i1 %36, i1* %FPU_DM.i, align 1, !mcsema_real_eip !50
  store i1 %37, i1* %FPU_IM.i, align 1, !mcsema_real_eip !50
  store i64 %40, i64* %39, align 4
  store i16 %41, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !50
  store i64 %42, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !50
  store i16 %43, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !50
  store i64 %44, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !50
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !50
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !50
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !50
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !50
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !50
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !50
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !50
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !50
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !50
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !50
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !50
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !50
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !50
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !50
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !50
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !50
  store i64 %trunc3.i, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !50
  store i64 %182, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !50
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
!2 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 112, [12 x i8] c"\09pushq\09%rbp\00"}
!4 = metadata !{i64 116, [16 x i8] c"\09subq\09$64, %rsp\00"}
!5 = metadata !{i64 125, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!6 = metadata !{i64 142, [22 x i8] c"\09movq\09%rcx, -16(%rbp)\00"}
!7 = metadata !{i64 146, [20 x i8] c"\09movl\09$30, -8(%rbp)\00"}
!8 = metadata !{i64 159, [20 x i8] c"\09movl\09%edx, 8(%rcx)\00"}
!9 = metadata !{i64 162, [22 x i8] c"\09movq\09-16(%rbp), %rsi\00"}
!10 = metadata !{i64 166, [19 x i8] c"\09movq\09%rsi, (%rcx)\00"}
!11 = metadata !{i64 201, [22 x i8] c"\09movl\09%eax, -52(%rbp)\00"}
!12 = metadata !{i64 204, [12 x i8] c"\09callq\09-209\00"}
!13 = metadata !{i64 8, [22 x i8] c"\09movl\09%edi, -20(%rbp)\00"}
!14 = metadata !{i64 11, [22 x i8] c"\09movl\09%esi, -24(%rbp)\00"}
!15 = metadata !{i64 14, [22 x i8] c"\09movl\09%edx, -28(%rbp)\00"}
!16 = metadata !{i64 17, [22 x i8] c"\09movl\09%ecx, -32(%rbp)\00"}
!17 = metadata !{i64 20, [22 x i8] c"\09movl\09%r8d, -36(%rbp)\00"}
!18 = metadata !{i64 24, [22 x i8] c"\09movl\09%r9d, -40(%rbp)\00"}
!19 = metadata !{i64 28, [19 x i8] c"\09movl\09(%rax), %ecx\00"}
!20 = metadata !{i64 30, [22 x i8] c"\09movl\09-20(%rbp), %edx\00"}
!21 = metadata !{i64 35, [22 x i8] c"\09movl\09-24(%rbp), %edx\00"}
!22 = metadata !{i64 40, [22 x i8] c"\09movl\09-28(%rbp), %edx\00"}
!23 = metadata !{i64 45, [22 x i8] c"\09movl\09%ecx, -56(%rbp)\00"}
!24 = metadata !{i64 48, [20 x i8] c"\09movl\094(%rax), %ecx\00"}
!25 = metadata !{i64 51, [22 x i8] c"\09movl\09-32(%rbp), %edx\00"}
!26 = metadata !{i64 56, [22 x i8] c"\09movl\09-36(%rbp), %edx\00"}
!27 = metadata !{i64 61, [22 x i8] c"\09movl\09-40(%rbp), %edx\00"}
!28 = metadata !{i64 64, [17 x i8] c"\09addl\09%edx, %ecx\00"}
!29 = metadata !{i64 66, [22 x i8] c"\09movl\09%ecx, -52(%rbp)\00"}
!30 = metadata !{i64 69, [20 x i8] c"\09movl\098(%rax), %ecx\00"}
!31 = metadata !{i64 72, [22 x i8] c"\09movl\09%ecx, -48(%rbp)\00"}
!32 = metadata !{i64 75, [21 x i8] c"\09movl\09%ecx, -8(%rbp)\00"}
!33 = metadata !{i64 78, [22 x i8] c"\09movq\09-56(%rbp), %rax\00"}
!34 = metadata !{i64 82, [22 x i8] c"\09movq\09%rax, -16(%rbp)\00"}
!35 = metadata !{i64 86, [21 x i8] c"\09movl\09-8(%rbp), %ecx\00"}
!36 = metadata !{i64 89, [22 x i8] c"\09movl\09%ecx, -64(%rbp)\00"}
!37 = metadata !{i64 92, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!38 = metadata !{i64 96, [22 x i8] c"\09movq\09%rax, -72(%rbp)\00"}
!39 = metadata !{i64 104, [22 x i8] c"\09movl\09-64(%rbp), %edx\00"}
!40 = metadata !{i64 107, [11 x i8] c"\09popq\09%rbp\00"}
!41 = metadata !{i64 108, [6 x i8] c"\09retq\00"}
!42 = metadata !{i64 209, [22 x i8] c"\09movl\09%edx, -40(%rbp)\00"}
!43 = metadata !{i64 212, [22 x i8] c"\09movq\09%rax, -48(%rbp)\00"}
!44 = metadata !{i64 220, [22 x i8] c"\09movq\09%rax, -32(%rbp)\00"}
!45 = metadata !{i64 224, [22 x i8] c"\09movl\09-40(%rbp), %ecx\00"}
!46 = metadata !{i64 227, [22 x i8] c"\09movl\09%ecx, -24(%rbp)\00"}
!47 = metadata !{i64 230, [22 x i8] c"\09movl\09-52(%rbp), %eax\00"}
!48 = metadata !{i64 233, [16 x i8] c"\09addq\09$64, %rsp\00"}
!49 = metadata !{i64 237, [11 x i8] c"\09popq\09%rbp\00"}
!50 = metadata !{i64 238, [6 x i8] c"\09retq\00"}
