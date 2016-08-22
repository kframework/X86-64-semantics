; ModuleID = 'test_27_opt.bc'
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
  %65 = add i64 %3, -56
  %66 = xor i64 %65, %63, !mcsema_real_eip !4
  %67 = and i64 %66, 16
  %68 = icmp eq i64 %67, 0
  %69 = trunc i64 %65 to i8, !mcsema_real_eip !4
  %70 = tail call i8 @llvm.ctpop.i8(i8 %69) #0, !mcsema_real_eip !4
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  %73 = icmp eq i64 %65, 0, !mcsema_real_eip !4
  %74 = icmp slt i64 %65, 0
  %75 = icmp ult i64 %63, 48, !mcsema_real_eip !4
  %76 = and i64 %66, %63, !mcsema_real_eip !4
  %77 = icmp slt i64 %76, 0
  %78 = add i64 %3, -40, !mcsema_real_eip !5
  %79 = add i64 %3, -12, !mcsema_real_eip !6
  %80 = inttoptr i64 %79 to i32*
  store i32 0, i32* %80, align 4, !mcsema_real_eip !6
  %81 = inttoptr i64 %65 to i64*, !mcsema_real_eip !7
  store i64 %78, i64* %81, align 8, !mcsema_real_eip !7
  %82 = add i64 %3, -64
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !8
  store i64 -4981261766360305936, i64* %83, align 8, !mcsema_real_eip !8
  store i64 %78, i64* %RAX.i, align 8, !mcsema_real_eip !8
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !8
  store i64 3, i64* %RCX.i, align 8, !mcsema_real_eip !8
  store i64 2, i64* %RDX.i, align 8, !mcsema_real_eip !8
  store i64 1, i64* %RSI.i, align 8, !mcsema_real_eip !8
  store i64 0, i64* %RDI.i, align 8, !mcsema_real_eip !8
  store i64 %82, i64* %RSP.i, align 8, !mcsema_real_eip !8
  store i64 %63, i64* %RBP.i, align 8, !mcsema_real_eip !8
  store i64 4, i64* %R8.i, align 8, !mcsema_real_eip !8
  store i64 5, i64* %R9.i, align 8, !mcsema_real_eip !8
  store <2 x i64> %6, <2 x i64>* %5, align 8
  store <2 x i64> %8, <2 x i64>* %7, align 8
  store <2 x i64> %10, <2 x i64>* %9, align 8
  store i64 %11, i64* %RIP.i, align 8, !mcsema_real_eip !8
  store i1 %75, i1* %CF.i, align 1, !mcsema_real_eip !8
  store i1 %72, i1* %PF.i, align 1, !mcsema_real_eip !8
  store i1 %68, i1* %AF.i, align 1, !mcsema_real_eip !8
  store i1 %73, i1* %ZF.i, align 1, !mcsema_real_eip !8
  store i1 %74, i1* %SF.i, align 1, !mcsema_real_eip !8
  store i1 %77, i1* %OF.i, align 1, !mcsema_real_eip !8
  store i1 %12, i1* %DF.i, align 1, !mcsema_real_eip !8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %1, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !8
  store i1 %15, i1* %FPU_B.i, align 1, !mcsema_real_eip !8
  store i1 %16, i1* %FPU_C3.i, align 1, !mcsema_real_eip !8
  store i3 %17, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !8
  store i1 %18, i1* %FPU_C2.i, align 1, !mcsema_real_eip !8
  store i1 %19, i1* %FPU_C1.i, align 1, !mcsema_real_eip !8
  store i1 %20, i1* %FPU_C0.i, align 1, !mcsema_real_eip !8
  store i1 %21, i1* %FPU_ES.i, align 1, !mcsema_real_eip !8
  store i1 %22, i1* %FPU_SF.i, align 1, !mcsema_real_eip !8
  store i1 %23, i1* %FPU_PE.i, align 1, !mcsema_real_eip !8
  store i1 %24, i1* %FPU_UE.i, align 1, !mcsema_real_eip !8
  store i1 %25, i1* %FPU_OE.i, align 1, !mcsema_real_eip !8
  store i1 %26, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !8
  store i1 %27, i1* %FPU_DE.i, align 1, !mcsema_real_eip !8
  store i1 %28, i1* %FPU_IE.i, align 1, !mcsema_real_eip !8
  store i1 %29, i1* %FPU_X.i, align 1, !mcsema_real_eip !8
  store i2 %30, i2* %FPU_RC.i, align 1, !mcsema_real_eip !8
  store i2 %31, i2* %FPU_PC.i, align 1, !mcsema_real_eip !8
  store i1 %32, i1* %FPU_PM.i, align 1, !mcsema_real_eip !8
  store i1 %33, i1* %FPU_UM.i, align 1, !mcsema_real_eip !8
  store i1 %34, i1* %FPU_OM.i, align 1, !mcsema_real_eip !8
  store i1 %35, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !8
  store i1 %36, i1* %FPU_DM.i, align 1, !mcsema_real_eip !8
  store i1 %37, i1* %FPU_IM.i, align 1, !mcsema_real_eip !8
  store i64 %40, i64* %39, align 4
  store i16 %41, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !8
  store i64 %42, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !8
  store i16 %43, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !8
  store i64 %44, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !8
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !8
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !8
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !8
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !8
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !8
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !8
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !8
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !8
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !8
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !8
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !8
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !8
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !8
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !8
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !8
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !8
  store <2 x i64> %62, <2 x i64>* %61, align 1
  %84 = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %84)
  %85 = bitcast i64* %R11.i to <2 x i64>*
  %86 = load <2 x i64>* %85, align 8
  %87 = bitcast i64* %R13.i to <2 x i64>*
  %88 = load <2 x i64>* %87, align 8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %84, i8* %1, i32 128, i32 16, i1 false) #0
  %89 = add i64 %3, -72
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !2
  store i64 %63, i64* %90, align 8, !mcsema_real_eip !2
  %91 = load i64* %81, align 8, !mcsema_real_eip !9
  %92 = add i64 %3, -76, !mcsema_real_eip !10
  %93 = inttoptr i64 %92 to i32*
  store i32 0, i32* %93, align 4, !mcsema_real_eip !10
  %94 = add i64 %3, -80, !mcsema_real_eip !11
  %95 = inttoptr i64 %94 to i32*
  store i32 1, i32* %95, align 4, !mcsema_real_eip !11
  %96 = add i64 %3, -84, !mcsema_real_eip !12
  %97 = inttoptr i64 %96 to i32*
  store i32 2, i32* %97, align 4, !mcsema_real_eip !12
  %98 = add i64 %3, -88, !mcsema_real_eip !13
  %99 = inttoptr i64 %98 to i32*
  store i32 3, i32* %99, align 4, !mcsema_real_eip !13
  %100 = add i64 %3, -92, !mcsema_real_eip !14
  %101 = inttoptr i64 %100 to i32*
  store i32 4, i32* %101, align 4, !mcsema_real_eip !14
  %102 = add i64 %3, -96, !mcsema_real_eip !15
  %103 = inttoptr i64 %102 to i32*
  store i32 5, i32* %103, align 4, !mcsema_real_eip !15
  %104 = add i64 %3, -104, !mcsema_real_eip !16
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !16
  store i64 %91, i64* %105, align 8, !mcsema_real_eip !16
  %106 = load i32* %93, align 4, !mcsema_real_eip !17
  %107 = sext i32 %106 to i64, !mcsema_real_eip !18
  %108 = shl nsw i64 %107, 2
  %109 = add i64 %108, %91, !mcsema_real_eip !19
  %110 = inttoptr i64 %109 to i32*
  store i32 %106, i32* %110, align 4, !mcsema_real_eip !19
  %111 = load i32* %95, align 4, !mcsema_real_eip !20
  %112 = sext i32 %111 to i64, !mcsema_real_eip !21
  %113 = load i64* %105, align 8, !mcsema_real_eip !22
  %114 = shl nsw i64 %112, 2
  %115 = add i64 %114, %113, !mcsema_real_eip !23
  %116 = inttoptr i64 %115 to i32*
  store i32 %111, i32* %116, align 4, !mcsema_real_eip !23
  %117 = load i32* %97, align 4, !mcsema_real_eip !24
  %118 = sext i32 %117 to i64, !mcsema_real_eip !25
  %119 = load i64* %105, align 8, !mcsema_real_eip !26
  %120 = shl nsw i64 %118, 2
  %121 = add i64 %120, %119, !mcsema_real_eip !27
  %122 = inttoptr i64 %121 to i32*
  store i32 %117, i32* %122, align 4, !mcsema_real_eip !27
  %123 = load i32* %99, align 4, !mcsema_real_eip !28
  %124 = sext i32 %123 to i64, !mcsema_real_eip !29
  %125 = load i64* %105, align 8, !mcsema_real_eip !30
  %126 = shl nsw i64 %124, 2
  %127 = add i64 %126, %125, !mcsema_real_eip !31
  %128 = inttoptr i64 %127 to i32*
  store i32 %123, i32* %128, align 4, !mcsema_real_eip !31
  %129 = load i32* %101, align 4, !mcsema_real_eip !32
  %130 = sext i32 %129 to i64, !mcsema_real_eip !33
  %131 = load i64* %105, align 8, !mcsema_real_eip !34
  %132 = shl nsw i64 %130, 2
  %133 = add i64 %132, %131, !mcsema_real_eip !35
  %134 = inttoptr i64 %133 to i32*
  store i32 %129, i32* %134, align 4, !mcsema_real_eip !35
  %135 = load i32* %103, align 4, !mcsema_real_eip !36
  %136 = zext i32 %135 to i64, !mcsema_real_eip !36
  %137 = sext i32 %135 to i64, !mcsema_real_eip !37
  %138 = load i64* %105, align 8, !mcsema_real_eip !38
  %139 = shl nsw i64 %137, 2
  %140 = add i64 %139, %138, !mcsema_real_eip !39
  %141 = inttoptr i64 %140 to i32*
  store i32 %135, i32* %141, align 4, !mcsema_real_eip !39
  %142 = load i64* %90, align 8, !mcsema_real_eip !40
  store i64 %137, i64* %RAX.i, align 8, !mcsema_real_eip !41
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !41
  store i64 %136, i64* %RCX.i, align 8, !mcsema_real_eip !41
  store i64 2, i64* %RDX.i, align 8, !mcsema_real_eip !41
  store i64 1, i64* %RSI.i, align 8, !mcsema_real_eip !41
  store i64 0, i64* %RDI.i, align 8, !mcsema_real_eip !41
  store i64 %65, i64* %RSP.i, align 8, !mcsema_real_eip !41
  store i64 %142, i64* %RBP.i, align 8, !mcsema_real_eip !41
  store i64 4, i64* %R8.i, align 8, !mcsema_real_eip !41
  store i64 5, i64* %R9.i, align 8, !mcsema_real_eip !41
  store i64 %138, i64* %R10.i, align 8, !mcsema_real_eip !41
  store <2 x i64> %86, <2 x i64>* %85, align 8
  store <2 x i64> %88, <2 x i64>* %87, align 8
  %143 = extractelement <2 x i64> %10, i32 1
  store i64 %143, i64* %R15.i, align 8, !mcsema_real_eip !41
  store i64 %11, i64* %RIP.i, align 8, !mcsema_real_eip !41
  store i1 %75, i1* %CF.i, align 1, !mcsema_real_eip !41
  store i1 %72, i1* %PF.i, align 1, !mcsema_real_eip !41
  store i1 %68, i1* %AF.i, align 1, !mcsema_real_eip !41
  store i1 %73, i1* %ZF.i, align 1, !mcsema_real_eip !41
  store i1 %74, i1* %SF.i, align 1, !mcsema_real_eip !41
  store i1 %77, i1* %OF.i, align 1, !mcsema_real_eip !41
  store i1 %12, i1* %DF.i, align 1, !mcsema_real_eip !41
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %84, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !41
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
  call void @llvm.lifetime.end(i64 128, i8* %84)
  %144 = bitcast <2 x i64> %86 to i128
  %trunc.i = trunc i128 %144 to i64
  %145 = lshr i128 %144, 64
  %146 = trunc i128 %145 to i64
  %147 = bitcast <2 x i64> %88 to i128
  %trunc1.i = trunc i128 %147 to i64
  %148 = lshr i128 %147, 64
  %149 = trunc i128 %148 to i64
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %14, i32 128, i32 4, i1 false) #0, !mcsema_real_eip !8
  %150 = bitcast <2 x i64> %62 to i128
  %trunc2.i = trunc i128 %150 to i64
  %151 = lshr i128 %150, 64
  %152 = trunc i128 %151 to i64
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %65, i64 48) #0
  %153 = extractvalue { i64, i1 } %uadd.i, 0
  %154 = xor i64 %153, %65, !mcsema_real_eip !42
  %155 = and i64 %154, 16
  %156 = icmp eq i64 %155, 0
  %157 = icmp slt i64 %153, 0
  %158 = icmp eq i64 %153, 0, !mcsema_real_eip !42
  %159 = add i64 %3, 9223372036854775752
  %160 = and i64 %154, %159, !mcsema_real_eip !42
  %161 = icmp slt i64 %160, 0
  %162 = trunc i64 %153 to i8, !mcsema_real_eip !42
  %163 = tail call i8 @llvm.ctpop.i8(i8 %162) #0, !mcsema_real_eip !42
  %164 = and i8 %163, 1
  %165 = icmp eq i8 %164, 0
  %166 = extractvalue { i64, i1 } %uadd.i, 1
  %167 = inttoptr i64 %153 to i64*, !mcsema_real_eip !43
  %168 = load i64* %167, align 8, !mcsema_real_eip !43
  %169 = add i64 %153, 16, !mcsema_real_eip !44
  store i64 0, i64* %RAX.i, align 8, !mcsema_real_eip !44
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !44
  store i64 %136, i64* %RCX.i, align 8, !mcsema_real_eip !44
  store i64 2, i64* %RDX.i, align 8, !mcsema_real_eip !44
  store i64 1, i64* %RSI.i, align 8, !mcsema_real_eip !44
  store i64 0, i64* %RDI.i, align 8, !mcsema_real_eip !44
  store i64 %169, i64* %RSP.i, align 8, !mcsema_real_eip !44
  store i64 %168, i64* %RBP.i, align 8, !mcsema_real_eip !44
  store i64 4, i64* %R8.i, align 8, !mcsema_real_eip !44
  store i64 5, i64* %R9.i, align 8, !mcsema_real_eip !44
  store i64 %138, i64* %R10.i, align 8, !mcsema_real_eip !44
  store i64 %trunc.i, i64* %R11.i, align 8, !mcsema_real_eip !44
  store i64 %146, i64* %R12.i, align 8, !mcsema_real_eip !44
  store i64 %trunc1.i, i64* %R13.i, align 8, !mcsema_real_eip !44
  store i64 %149, i64* %R14.i, align 8, !mcsema_real_eip !44
  store i64 %143, i64* %R15.i, align 8, !mcsema_real_eip !44
  store i64 %11, i64* %RIP.i, align 8, !mcsema_real_eip !44
  store i1 %166, i1* %CF.i, align 1, !mcsema_real_eip !44
  store i1 %165, i1* %PF.i, align 1, !mcsema_real_eip !44
  store i1 %156, i1* %AF.i, align 1, !mcsema_real_eip !44
  store i1 %158, i1* %ZF.i, align 1, !mcsema_real_eip !44
  store i1 %157, i1* %SF.i, align 1, !mcsema_real_eip !44
  store i1 %161, i1* %OF.i, align 1, !mcsema_real_eip !44
  store i1 %12, i1* %DF.i, align 1, !mcsema_real_eip !44
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %1, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !44
  store i1 %15, i1* %FPU_B.i, align 1, !mcsema_real_eip !44
  store i1 %16, i1* %FPU_C3.i, align 1, !mcsema_real_eip !44
  store i3 %17, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !44
  store i1 %18, i1* %FPU_C2.i, align 1, !mcsema_real_eip !44
  store i1 %19, i1* %FPU_C1.i, align 1, !mcsema_real_eip !44
  store i1 %20, i1* %FPU_C0.i, align 1, !mcsema_real_eip !44
  store i1 %21, i1* %FPU_ES.i, align 1, !mcsema_real_eip !44
  store i1 %22, i1* %FPU_SF.i, align 1, !mcsema_real_eip !44
  store i1 %23, i1* %FPU_PE.i, align 1, !mcsema_real_eip !44
  store i1 %24, i1* %FPU_UE.i, align 1, !mcsema_real_eip !44
  store i1 %25, i1* %FPU_OE.i, align 1, !mcsema_real_eip !44
  store i1 %26, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !44
  store i1 %27, i1* %FPU_DE.i, align 1, !mcsema_real_eip !44
  store i1 %28, i1* %FPU_IE.i, align 1, !mcsema_real_eip !44
  store i1 %29, i1* %FPU_X.i, align 1, !mcsema_real_eip !44
  store i2 %30, i2* %FPU_RC.i, align 1, !mcsema_real_eip !44
  store i2 %31, i2* %FPU_PC.i, align 1, !mcsema_real_eip !44
  store i1 %32, i1* %FPU_PM.i, align 1, !mcsema_real_eip !44
  store i1 %33, i1* %FPU_UM.i, align 1, !mcsema_real_eip !44
  store i1 %34, i1* %FPU_OM.i, align 1, !mcsema_real_eip !44
  store i1 %35, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !44
  store i1 %36, i1* %FPU_DM.i, align 1, !mcsema_real_eip !44
  store i1 %37, i1* %FPU_IM.i, align 1, !mcsema_real_eip !44
  store i64 %40, i64* %39, align 4
  store i16 %41, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !44
  store i64 %42, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !44
  store i16 %43, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !44
  store i64 %44, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !44
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !44
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !44
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !44
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !44
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !44
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !44
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !44
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !44
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !44
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !44
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !44
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !44
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !44
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !44
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !44
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !44
  store i64 %trunc2.i, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !44
  store i64 %152, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !44
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
!3 = metadata !{i64 128, [12 x i8] c"\09pushq\09%rbp\00"}
!4 = metadata !{i64 132, [16 x i8] c"\09subq\09$48, %rsp\00"}
!5 = metadata !{i64 168, [22 x i8] c"\09leaq\09-32(%rbp), %rax\00"}
!6 = metadata !{i64 172, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!7 = metadata !{i64 179, [19 x i8] c"\09movq\09%rax, (%rsp)\00"}
!8 = metadata !{i64 183, [12 x i8] c"\09callq\09-188\00"}
!9 = metadata !{i64 4, [21 x i8] c"\09movq\0916(%rbp), %rax\00"}
!10 = metadata !{i64 8, [21 x i8] c"\09movl\09%edi, -4(%rbp)\00"}
!11 = metadata !{i64 11, [21 x i8] c"\09movl\09%esi, -8(%rbp)\00"}
!12 = metadata !{i64 14, [22 x i8] c"\09movl\09%edx, -12(%rbp)\00"}
!13 = metadata !{i64 17, [22 x i8] c"\09movl\09%ecx, -16(%rbp)\00"}
!14 = metadata !{i64 20, [22 x i8] c"\09movl\09%r8d, -20(%rbp)\00"}
!15 = metadata !{i64 24, [22 x i8] c"\09movl\09%r9d, -24(%rbp)\00"}
!16 = metadata !{i64 28, [22 x i8] c"\09movq\09%rax, -32(%rbp)\00"}
!17 = metadata !{i64 32, [21 x i8] c"\09movl\09-4(%rbp), %ecx\00"}
!18 = metadata !{i64 35, [23 x i8] c"\09movslq\09-4(%rbp), %rax\00"}
!19 = metadata !{i64 43, [26 x i8] c"\09movl\09%ecx, (%r10,%rax,4)\00"}
!20 = metadata !{i64 47, [21 x i8] c"\09movl\09-8(%rbp), %ecx\00"}
!21 = metadata !{i64 50, [23 x i8] c"\09movslq\09-8(%rbp), %rax\00"}
!22 = metadata !{i64 54, [22 x i8] c"\09movq\09-32(%rbp), %r10\00"}
!23 = metadata !{i64 58, [26 x i8] c"\09movl\09%ecx, (%r10,%rax,4)\00"}
!24 = metadata !{i64 62, [22 x i8] c"\09movl\09-12(%rbp), %ecx\00"}
!25 = metadata !{i64 65, [24 x i8] c"\09movslq\09-12(%rbp), %rax\00"}
!26 = metadata !{i64 69, [22 x i8] c"\09movq\09-32(%rbp), %r10\00"}
!27 = metadata !{i64 73, [26 x i8] c"\09movl\09%ecx, (%r10,%rax,4)\00"}
!28 = metadata !{i64 77, [22 x i8] c"\09movl\09-16(%rbp), %ecx\00"}
!29 = metadata !{i64 80, [24 x i8] c"\09movslq\09-16(%rbp), %rax\00"}
!30 = metadata !{i64 84, [22 x i8] c"\09movq\09-32(%rbp), %r10\00"}
!31 = metadata !{i64 88, [26 x i8] c"\09movl\09%ecx, (%r10,%rax,4)\00"}
!32 = metadata !{i64 92, [22 x i8] c"\09movl\09-20(%rbp), %ecx\00"}
!33 = metadata !{i64 95, [24 x i8] c"\09movslq\09-20(%rbp), %rax\00"}
!34 = metadata !{i64 99, [22 x i8] c"\09movq\09-32(%rbp), %r10\00"}
!35 = metadata !{i64 103, [26 x i8] c"\09movl\09%ecx, (%r10,%rax,4)\00"}
!36 = metadata !{i64 107, [22 x i8] c"\09movl\09-24(%rbp), %ecx\00"}
!37 = metadata !{i64 110, [24 x i8] c"\09movslq\09-24(%rbp), %rax\00"}
!38 = metadata !{i64 114, [22 x i8] c"\09movq\09-32(%rbp), %r10\00"}
!39 = metadata !{i64 118, [26 x i8] c"\09movl\09%ecx, (%r10,%rax,4)\00"}
!40 = metadata !{i64 122, [11 x i8] c"\09popq\09%rbp\00"}
!41 = metadata !{i64 123, [6 x i8] c"\09retq\00"}
!42 = metadata !{i64 193, [16 x i8] c"\09addq\09$48, %rsp\00"}
!43 = metadata !{i64 197, [11 x i8] c"\09popq\09%rbp\00"}
!44 = metadata !{i64 198, [6 x i8] c"\09retq\00"}
