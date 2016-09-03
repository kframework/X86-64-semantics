; ModuleID = 'Output/test_27.clang.trans.opt.bc'
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
  %1 = load i64* %RBX.i, align 8, !mcsema_real_eip !3
  %RCX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !3
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !3
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !3
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !3
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !3
  %2 = load i64* %RSP.i, align 8, !mcsema_real_eip !3
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !3
  %3 = load i64* %RBP.i, align 8, !mcsema_real_eip !3
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !3
  %R9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !3
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !3
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
  %4 = bitcast i64* %R10.i to <2 x i64>*
  %5 = load <2 x i64>* %4, align 8
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !3
  %6 = bitcast i64* %R12.i to <2 x i64>*
  %7 = load <2 x i64>* %6, align 8
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %8 = bitcast i64* %R14.i to <2 x i64>*
  %9 = load <2 x i64>* %8, align 8
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %10 = load i64* %RIP.i, align 8, !mcsema_real_eip !3
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !3
  %11 = load i1* %DF.i, align 1, !mcsema_real_eip !3
  %12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !3
  %13 = bitcast x86_fp80* %12 to i8*, !mcsema_real_eip !3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast, i8* %13, i32 128, i32 4, i1 false) #0, !mcsema_real_eip !3
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !3
  %14 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !3
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !3
  %15 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !3
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !3
  %16 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !3
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !3
  %17 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !3
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !3
  %18 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !3
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !3
  %19 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !3
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !3
  %20 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !3
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !3
  %21 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !3
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !3
  %22 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !3
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !3
  %23 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !3
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !3
  %24 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !3
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !3
  %25 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !3
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !3
  %26 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !3
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !3
  %27 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !3
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !3
  %28 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !3
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !3
  %29 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !3
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !3
  %30 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !3
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !3
  %31 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !3
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !3
  %32 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !3
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !3
  %33 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !3
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !3
  %34 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !3
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !3
  %35 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !3
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !3
  %36 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !3
  %37 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !3
  %38 = bitcast i8* %37 to i64*
  %39 = load i64* %38, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !3
  %40 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !3
  %41 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !3
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !3
  %42 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !3
  %43 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !3
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %44 = load i128* %XMM0.i, align 1, !mcsema_real_eip !3
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %45 = load i128* %XMM1.i, align 1, !mcsema_real_eip !3
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %46 = load i128* %XMM2.i, align 1, !mcsema_real_eip !3
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %47 = load i128* %XMM3.i, align 1, !mcsema_real_eip !3
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %48 = load i128* %XMM4.i, align 1, !mcsema_real_eip !3
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %49 = load i128* %XMM5.i, align 1, !mcsema_real_eip !3
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %50 = load i128* %XMM6.i, align 1, !mcsema_real_eip !3
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %51 = load i128* %XMM7.i, align 1, !mcsema_real_eip !3
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %52 = load i128* %XMM8.i, align 1, !mcsema_real_eip !3
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %53 = load i128* %XMM9.i, align 1, !mcsema_real_eip !3
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %54 = load i128* %XMM10.i, align 1, !mcsema_real_eip !3
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %55 = load i128* %XMM11.i, align 1, !mcsema_real_eip !3
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %56 = load i128* %XMM12.i, align 1, !mcsema_real_eip !3
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %57 = load i128* %XMM13.i, align 1, !mcsema_real_eip !3
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %58 = load i128* %XMM14.i, align 1, !mcsema_real_eip !3
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %59 = load i128* %XMM15.i, align 1, !mcsema_real_eip !3
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %60 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %61 = load <2 x i64>* %60, align 8
  %62 = add i64 %2, -8
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !3
  store i64 %3, i64* %63, align 8, !mcsema_real_eip !3
  %64 = add i64 %2, -56
  %65 = xor i64 %64, %62, !mcsema_real_eip !4
  %66 = and i64 %65, 16
  %67 = icmp eq i64 %66, 0
  %68 = trunc i64 %64 to i8, !mcsema_real_eip !4
  %69 = tail call i8 @llvm.ctpop.i8(i8 %68) #0, !mcsema_real_eip !4
  %70 = and i8 %69, 1
  %71 = icmp eq i8 %70, 0
  %72 = icmp eq i64 %64, 0, !mcsema_real_eip !4
  %73 = icmp slt i64 %64, 0
  %74 = icmp ult i64 %62, 48, !mcsema_real_eip !4
  %75 = and i64 %65, %62, !mcsema_real_eip !4
  %76 = icmp slt i64 %75, 0
  %77 = add i64 %2, -40, !mcsema_real_eip !5
  %78 = add i64 %2, -12, !mcsema_real_eip !6
  %79 = inttoptr i64 %78 to i32*
  store i32 0, i32* %79, align 4, !mcsema_real_eip !6
  %80 = inttoptr i64 %64 to i64*, !mcsema_real_eip !7
  store i64 %77, i64* %80, align 8, !mcsema_real_eip !7
  %81 = add i64 %2, -64
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !8
  store i64 -4981261766360305936, i64* %82, align 8, !mcsema_real_eip !8
  store i64 %77, i64* %RAX.i, align 8, !mcsema_real_eip !8
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !8
  store i64 3, i64* %RCX.i, align 8, !mcsema_real_eip !8
  store i64 2, i64* %RDX.i, align 8, !mcsema_real_eip !8
  store i64 1, i64* %RSI.i, align 8, !mcsema_real_eip !8
  store i64 0, i64* %RDI.i, align 8, !mcsema_real_eip !8
  store i64 %81, i64* %RSP.i, align 8, !mcsema_real_eip !8
  store i64 %62, i64* %RBP.i, align 8, !mcsema_real_eip !8
  store i64 4, i64* %R8.i, align 8, !mcsema_real_eip !8
  store i64 5, i64* %R9.i, align 8, !mcsema_real_eip !8
  store <2 x i64> %5, <2 x i64>* %4, align 8
  store <2 x i64> %7, <2 x i64>* %6, align 8
  store <2 x i64> %9, <2 x i64>* %8, align 8
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !8
  store i1 %74, i1* %CF.i, align 1, !mcsema_real_eip !8
  store i1 %71, i1* %PF.i, align 1, !mcsema_real_eip !8
  store i1 %67, i1* %AF.i, align 1, !mcsema_real_eip !8
  store i1 %72, i1* %ZF.i, align 1, !mcsema_real_eip !8
  store i1 %73, i1* %SF.i, align 1, !mcsema_real_eip !8
  store i1 %76, i1* %OF.i, align 1, !mcsema_real_eip !8
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !8
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !8
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !8
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !8
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !8
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !8
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !8
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !8
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !8
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !8
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !8
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !8
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !8
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !8
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !8
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !8
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !8
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !8
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !8
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !8
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !8
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !8
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !8
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !8
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !8
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !8
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !8
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !8
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !8
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !8
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !8
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !8
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !8
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !8
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !8
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !8
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !8
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !8
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !8
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !8
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !8
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !8
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !8
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !8
  store <2 x i64> %61, <2 x i64>* %60, align 1
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %STi_val.i.0..sroa_cast.i)
  %83 = bitcast i64* %R11.i to <2 x i64>*
  %84 = load <2 x i64>* %83, align 8
  %85 = bitcast i64* %R13.i to <2 x i64>*
  %86 = load <2 x i64>* %85, align 8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast.i, i8* %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false) #0
  %87 = add i64 %2, -72
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !2
  store i64 %62, i64* %88, align 8, !mcsema_real_eip !2
  %89 = load i64* %80, align 8, !mcsema_real_eip !9
  %90 = add i64 %2, -76, !mcsema_real_eip !10
  %91 = inttoptr i64 %90 to i32*
  store i32 0, i32* %91, align 4, !mcsema_real_eip !10
  %92 = add i64 %2, -80, !mcsema_real_eip !11
  %93 = inttoptr i64 %92 to i32*
  store i32 1, i32* %93, align 4, !mcsema_real_eip !11
  %94 = add i64 %2, -84, !mcsema_real_eip !12
  %95 = inttoptr i64 %94 to i32*
  store i32 2, i32* %95, align 4, !mcsema_real_eip !12
  %96 = add i64 %2, -88, !mcsema_real_eip !13
  %97 = inttoptr i64 %96 to i32*
  store i32 3, i32* %97, align 4, !mcsema_real_eip !13
  %98 = add i64 %2, -92, !mcsema_real_eip !14
  %99 = inttoptr i64 %98 to i32*
  store i32 4, i32* %99, align 4, !mcsema_real_eip !14
  %100 = add i64 %2, -96, !mcsema_real_eip !15
  %101 = inttoptr i64 %100 to i32*
  store i32 5, i32* %101, align 4, !mcsema_real_eip !15
  %102 = add i64 %2, -104, !mcsema_real_eip !16
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !16
  store i64 %89, i64* %103, align 8, !mcsema_real_eip !16
  %104 = load i32* %91, align 4, !mcsema_real_eip !17
  %105 = sext i32 %104 to i64, !mcsema_real_eip !18
  %106 = shl nsw i64 %105, 2
  %107 = add i64 %106, %89, !mcsema_real_eip !19
  %108 = inttoptr i64 %107 to i32*
  store i32 %104, i32* %108, align 4, !mcsema_real_eip !19
  %109 = load i32* %93, align 4, !mcsema_real_eip !20
  %110 = sext i32 %109 to i64, !mcsema_real_eip !21
  %111 = load i64* %103, align 8, !mcsema_real_eip !22
  %112 = shl nsw i64 %110, 2
  %113 = add i64 %112, %111, !mcsema_real_eip !23
  %114 = inttoptr i64 %113 to i32*
  store i32 %109, i32* %114, align 4, !mcsema_real_eip !23
  %115 = load i32* %95, align 4, !mcsema_real_eip !24
  %116 = sext i32 %115 to i64, !mcsema_real_eip !25
  %117 = load i64* %103, align 8, !mcsema_real_eip !26
  %118 = shl nsw i64 %116, 2
  %119 = add i64 %118, %117, !mcsema_real_eip !27
  %120 = inttoptr i64 %119 to i32*
  store i32 %115, i32* %120, align 4, !mcsema_real_eip !27
  %121 = load i32* %97, align 4, !mcsema_real_eip !28
  %122 = sext i32 %121 to i64, !mcsema_real_eip !29
  %123 = load i64* %103, align 8, !mcsema_real_eip !30
  %124 = shl nsw i64 %122, 2
  %125 = add i64 %124, %123, !mcsema_real_eip !31
  %126 = inttoptr i64 %125 to i32*
  store i32 %121, i32* %126, align 4, !mcsema_real_eip !31
  %127 = load i32* %99, align 4, !mcsema_real_eip !32
  %128 = sext i32 %127 to i64, !mcsema_real_eip !33
  %129 = load i64* %103, align 8, !mcsema_real_eip !34
  %130 = shl nsw i64 %128, 2
  %131 = add i64 %130, %129, !mcsema_real_eip !35
  %132 = inttoptr i64 %131 to i32*
  store i32 %127, i32* %132, align 4, !mcsema_real_eip !35
  %133 = load i32* %101, align 4, !mcsema_real_eip !36
  %134 = sext i32 %133 to i64, !mcsema_real_eip !37
  %135 = load i64* %103, align 8, !mcsema_real_eip !38
  %136 = shl nsw i64 %134, 2
  %137 = add i64 %136, %135, !mcsema_real_eip !39
  %138 = inttoptr i64 %137 to i32*
  store i32 %133, i32* %138, align 4, !mcsema_real_eip !39
  %139 = add i64 %2, -108, !mcsema_real_eip !40
  %140 = inttoptr i64 %139 to i32*
  store i32 0, i32* %140, align 4, !mcsema_real_eip !40
  %141 = add i64 %2, -112, !mcsema_real_eip !41
  %142 = inttoptr i64 %141 to i32*
  store i32 0, i32* %142, align 4, !mcsema_real_eip !41
  br label %block_0x95.i.i

block_0x95.i.i:                                   ; preds = %block_0x95.i.i, %driverBlockRaw
  %143 = phi i32 [ 0, %driverBlockRaw ], [ %153, %block_0x95.i.i ]
  %144 = sext i32 %143 to i64, !mcsema_real_eip !42
  %145 = load i64* %103, align 8, !mcsema_real_eip !43
  %146 = shl nsw i64 %144, 2
  %147 = add i64 %146, %145, !mcsema_real_eip !44
  %148 = inttoptr i64 %147 to i32*
  %149 = load i32* %148, align 4, !mcsema_real_eip !44
  %150 = load i32* %140, align 4, !mcsema_real_eip !45
  %151 = add i32 %150, %149
  store i32 %151, i32* %140, align 4, !mcsema_real_eip !46
  %152 = load i32* %142, align 4, !mcsema_real_eip !47
  %153 = add i32 %152, 1
  store i32 %153, i32* %142, align 4, !mcsema_real_eip !48
  %154 = add i32 %152, -5
  %155 = xor i32 %154, %153, !mcsema_real_eip !49
  %156 = icmp slt i32 %154, 0
  %157 = and i32 %155, %153, !mcsema_real_eip !49
  %158 = icmp slt i32 %157, 0
  %tmp71.i.i = xor i1 %156, %158
  br i1 %tmp71.i.i, label %block_0x95.i.i, label %sub_c0.exit, !mcsema_real_eip !50

sub_c0.exit:                                      ; preds = %block_0x95.i.i
  %.lcssa30 = phi i1 [ %158, %block_0x95.i.i ]
  %.lcssa29 = phi i1 [ %156, %block_0x95.i.i ]
  %.lcssa28 = phi i32 [ %155, %block_0x95.i.i ]
  %.lcssa27 = phi i32 [ %154, %block_0x95.i.i ]
  %.lcssa26 = phi i32 [ %153, %block_0x95.i.i ]
  %.lcssa25 = phi i32 [ %151, %block_0x95.i.i ]
  %.lcssa24 = phi i32 [ %149, %block_0x95.i.i ]
  %.lcssa = phi i64 [ %145, %block_0x95.i.i ]
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !3
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %159 = icmp ult i32 %.lcssa26, 6, !mcsema_real_eip !49
  %160 = icmp eq i32 %.lcssa27, 0, !mcsema_real_eip !49
  %161 = trunc i32 %.lcssa27 to i8, !mcsema_real_eip !49
  %162 = tail call i8 @llvm.ctpop.i8(i8 %161) #0, !mcsema_real_eip !49
  %163 = and i8 %162, 1
  %164 = icmp eq i8 %163, 0
  %165 = and i32 %.lcssa28, 16, !mcsema_real_eip !49
  %166 = icmp ne i32 %165, 0, !mcsema_real_eip !49
  %167 = zext i32 %.lcssa25 to i64, !mcsema_real_eip !51
  %168 = zext i32 %.lcssa24 to i64, !mcsema_real_eip !44
  %169 = load i32* %140, align 4, !mcsema_real_eip !52
  %170 = zext i32 %169 to i64, !mcsema_real_eip !52
  %171 = load i64* %88, align 8, !mcsema_real_eip !53
  store i64 %170, i64* %RAX.i, align 8, !mcsema_real_eip !54
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !54
  store i64 %.lcssa, i64* %RCX.i, align 8, !mcsema_real_eip !54
  store i64 %168, i64* %RDX.i, align 8, !mcsema_real_eip !54
  store i64 %167, i64* %RSI.i, align 8, !mcsema_real_eip !54
  store i64 0, i64* %RDI.i, align 8, !mcsema_real_eip !54
  store i64 %64, i64* %RSP.i, align 8, !mcsema_real_eip !54
  store i64 %171, i64* %RBP.i, align 8, !mcsema_real_eip !54
  store i64 4, i64* %R8.i, align 8, !mcsema_real_eip !54
  store i64 5, i64* %R9.i, align 8, !mcsema_real_eip !54
  store i64 %135, i64* %R10.i, align 8, !mcsema_real_eip !54
  store <2 x i64> %84, <2 x i64>* %83, align 8
  store <2 x i64> %86, <2 x i64>* %85, align 8
  %172 = extractelement <2 x i64> %9, i32 1
  store i64 %172, i64* %R15.i, align 8, !mcsema_real_eip !54
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !54
  store i1 %159, i1* %CF.i, align 1, !mcsema_real_eip !54
  store i1 %164, i1* %PF.i, align 1, !mcsema_real_eip !54
  store i1 %166, i1* %AF.i, align 1, !mcsema_real_eip !54
  store i1 %160, i1* %ZF.i, align 1, !mcsema_real_eip !54
  store i1 %.lcssa29, i1* %SF.i, align 1, !mcsema_real_eip !54
  store i1 %.lcssa30, i1* %OF.i, align 1, !mcsema_real_eip !54
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !54
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !54
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !54
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !54
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !54
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !54
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !54
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !54
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !54
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !54
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !54
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !54
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !54
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !54
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !54
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !54
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !54
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !54
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !54
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !54
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !54
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !54
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !54
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !54
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !54
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !54
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !54
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !54
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !54
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !54
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !54
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !54
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !54
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !54
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !54
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !54
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !54
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !54
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !54
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !54
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !54
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !54
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !54
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !54
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !54
  store <2 x i64> %61, <2 x i64>* %60, align 1
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast.i)
  %173 = bitcast <2 x i64> %84 to i128
  %trunc.i = trunc i128 %173 to i64
  %174 = lshr i128 %173, 64
  %175 = trunc i128 %174 to i64
  %176 = bitcast <2 x i64> %86 to i128
  %trunc93.i = trunc i128 %176 to i64
  %177 = lshr i128 %176, 64
  %178 = trunc i128 %177 to i64
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast, i8* %13, i32 128, i32 4, i1 false) #0, !mcsema_real_eip !8
  %179 = bitcast <2 x i64> %61 to i128
  %trunc94.i = trunc i128 %179 to i64
  %180 = lshr i128 %179, 64
  %181 = trunc i128 %180 to i64
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %64, i64 48) #0
  %182 = extractvalue { i64, i1 } %uadd.i, 0
  %183 = xor i64 %182, %64, !mcsema_real_eip !55
  %184 = and i64 %183, 16
  %185 = icmp eq i64 %184, 0
  %186 = icmp slt i64 %182, 0
  %187 = icmp eq i64 %182, 0, !mcsema_real_eip !55
  %188 = add i64 %2, 9223372036854775752
  %189 = and i64 %183, %188, !mcsema_real_eip !55
  %190 = icmp slt i64 %189, 0
  %191 = trunc i64 %182 to i8, !mcsema_real_eip !55
  %192 = tail call i8 @llvm.ctpop.i8(i8 %191) #0, !mcsema_real_eip !55
  %193 = and i8 %192, 1
  %194 = icmp eq i8 %193, 0
  %195 = extractvalue { i64, i1 } %uadd.i, 1
  %196 = inttoptr i64 %182 to i64*, !mcsema_real_eip !56
  %197 = load i64* %196, align 8, !mcsema_real_eip !56
  %198 = add i64 %182, 16, !mcsema_real_eip !57
  store i64 %170, i64* %RAX.i, align 8, !mcsema_real_eip !57
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !57
  store i64 %.lcssa, i64* %RCX.i, align 8, !mcsema_real_eip !57
  store i64 %168, i64* %RDX.i, align 8, !mcsema_real_eip !57
  store i64 %167, i64* %RSI.i, align 8, !mcsema_real_eip !57
  store i64 0, i64* %RDI.i, align 8, !mcsema_real_eip !57
  store i64 %198, i64* %RSP.i, align 8, !mcsema_real_eip !57
  store i64 %197, i64* %RBP.i, align 8, !mcsema_real_eip !57
  store i64 4, i64* %R8.i, align 8, !mcsema_real_eip !57
  store i64 5, i64* %R9.i, align 8, !mcsema_real_eip !57
  store i64 %135, i64* %R10.i, align 8, !mcsema_real_eip !57
  store i64 %trunc.i, i64* %R11.i, align 8, !mcsema_real_eip !57
  store i64 %175, i64* %R12.i, align 8, !mcsema_real_eip !57
  store i64 %trunc93.i, i64* %R13.i, align 8, !mcsema_real_eip !57
  store i64 %178, i64* %R14.i, align 8, !mcsema_real_eip !57
  store i64 %172, i64* %R15.i, align 8, !mcsema_real_eip !57
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !57
  store i1 %195, i1* %CF.i, align 1, !mcsema_real_eip !57
  store i1 %194, i1* %PF.i, align 1, !mcsema_real_eip !57
  store i1 %185, i1* %AF.i, align 1, !mcsema_real_eip !57
  store i1 %187, i1* %ZF.i, align 1, !mcsema_real_eip !57
  store i1 %186, i1* %SF.i, align 1, !mcsema_real_eip !57
  store i1 %190, i1* %OF.i, align 1, !mcsema_real_eip !57
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !57
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !57
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !57
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !57
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !57
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !57
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !57
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !57
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !57
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !57
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !57
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !57
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !57
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !57
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !57
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !57
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !57
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !57
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !57
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !57
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !57
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !57
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !57
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !57
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !57
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !57
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !57
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !57
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !57
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !57
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !57
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !57
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !57
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !57
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !57
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !57
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !57
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !57
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !57
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !57
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !57
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !57
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !57
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !57
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !57
  store i64 %trunc94.i, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !57
  store i64 %181, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !57
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
!3 = metadata !{i64 192, [12 x i8] c"\09pushq\09%rbp\00"}
!4 = metadata !{i64 196, [16 x i8] c"\09subq\09$48, %rsp\00"}
!5 = metadata !{i64 232, [22 x i8] c"\09leaq\09-32(%rbp), %rax\00"}
!6 = metadata !{i64 236, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!7 = metadata !{i64 243, [19 x i8] c"\09movq\09%rax, (%rsp)\00"}
!8 = metadata !{i64 247, [12 x i8] c"\09callq\09-252\00"}
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
!40 = metadata !{i64 122, [20 x i8] c"\09movl\09$0, -36(%rbp)\00"}
!41 = metadata !{i64 129, [20 x i8] c"\09movl\09$0, -40(%rbp)\00"}
!42 = metadata !{i64 149, [24 x i8] c"\09movslq\09-40(%rbp), %rax\00"}
!43 = metadata !{i64 153, [22 x i8] c"\09movq\09-32(%rbp), %rcx\00"}
!44 = metadata !{i64 157, [26 x i8] c"\09movl\09(%rcx,%rax,4), %edx\00"}
!45 = metadata !{i64 160, [22 x i8] c"\09movl\09-36(%rbp), %esi\00"}
!46 = metadata !{i64 165, [22 x i8] c"\09movl\09%esi, -36(%rbp)\00"}
!47 = metadata !{i64 168, [22 x i8] c"\09movl\09-40(%rbp), %eax\00"}
!48 = metadata !{i64 176, [22 x i8] c"\09movl\09%eax, -40(%rbp)\00"}
!49 = metadata !{i64 136, [20 x i8] c"\09cmpl\09$6, -40(%rbp)\00"}
!50 = metadata !{i64 143, [8 x i8] c"\09jge\0935\00"}
!51 = metadata !{i64 163, [17 x i8] c"\09addl\09%edx, %esi\00"}
!52 = metadata !{i64 184, [22 x i8] c"\09movl\09-36(%rbp), %eax\00"}
!53 = metadata !{i64 187, [11 x i8] c"\09popq\09%rbp\00"}
!54 = metadata !{i64 188, [6 x i8] c"\09retq\00"}
!55 = metadata !{i64 252, [16 x i8] c"\09addq\09$48, %rsp\00"}
!56 = metadata !{i64 256, [11 x i8] c"\09popq\09%rbp\00"}
!57 = metadata !{i64 257, [6 x i8] c"\09retq\00"}
