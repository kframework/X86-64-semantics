; ModuleID = 'Output/test_2.clang.opt.bc'
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
  %4 = load i64* %R11.i, align 8, !mcsema_real_eip !3
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %5 = load i64* %R12.i, align 8, !mcsema_real_eip !3
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !3
  %6 = load i64* %R13.i, align 8, !mcsema_real_eip !3
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %7 = load i64* %R14.i, align 8, !mcsema_real_eip !3
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !3
  %8 = load i64* %R15.i, align 8, !mcsema_real_eip !3
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %9 = load i64* %RIP.i, align 8, !mcsema_real_eip !3
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !3
  %10 = load i1* %DF.i, align 1, !mcsema_real_eip !3
  %11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !3
  %12 = bitcast x86_fp80* %11 to i8*, !mcsema_real_eip !3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast, i8* %12, i32 128, i32 4, i1 false) #0, !mcsema_real_eip !3
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !3
  %13 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !3
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !3
  %14 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !3
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !3
  %15 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !3
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !3
  %16 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !3
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !3
  %17 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !3
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !3
  %18 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !3
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !3
  %19 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !3
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !3
  %20 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !3
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !3
  %21 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !3
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !3
  %22 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !3
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !3
  %23 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !3
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !3
  %24 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !3
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !3
  %25 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !3
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !3
  %26 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !3
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !3
  %27 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !3
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !3
  %28 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !3
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !3
  %29 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !3
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !3
  %30 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !3
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !3
  %31 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !3
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !3
  %32 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !3
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !3
  %33 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !3
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !3
  %34 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !3
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !3
  %35 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !3
  %36 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !3
  %37 = bitcast i8* %36 to i64*
  %38 = load i64* %37, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !3
  %39 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !3
  %40 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !3
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !3
  %41 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !3
  %42 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !3
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %43 = load i128* %XMM0.i, align 1, !mcsema_real_eip !3
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %44 = load i128* %XMM1.i, align 1, !mcsema_real_eip !3
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %45 = load i128* %XMM2.i, align 1, !mcsema_real_eip !3
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %46 = load i128* %XMM3.i, align 1, !mcsema_real_eip !3
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %47 = load i128* %XMM4.i, align 1, !mcsema_real_eip !3
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %48 = load i128* %XMM5.i, align 1, !mcsema_real_eip !3
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %49 = load i128* %XMM6.i, align 1, !mcsema_real_eip !3
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %50 = load i128* %XMM7.i, align 1, !mcsema_real_eip !3
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %51 = load i128* %XMM8.i, align 1, !mcsema_real_eip !3
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %52 = load i128* %XMM9.i, align 1, !mcsema_real_eip !3
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %53 = load i128* %XMM10.i, align 1, !mcsema_real_eip !3
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %54 = load i128* %XMM11.i, align 1, !mcsema_real_eip !3
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %55 = load i128* %XMM12.i, align 1, !mcsema_real_eip !3
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %56 = load i128* %XMM13.i, align 1, !mcsema_real_eip !3
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %57 = load i128* %XMM14.i, align 1, !mcsema_real_eip !3
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %58 = load i128* %XMM15.i, align 1, !mcsema_real_eip !3
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %59 = load i64* %STACK_BASE.i, align 8, !mcsema_real_eip !3
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %60 = load i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !3
  %61 = add i64 %2, -8
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !3
  store i64 %3, i64* %62, align 8, !mcsema_real_eip !3
  %63 = add i64 %2, -40
  %64 = xor i64 %63, %61, !mcsema_real_eip !4
  %65 = and i64 %64, 16, !mcsema_real_eip !4
  %66 = icmp ne i64 %65, 0, !mcsema_real_eip !4
  %67 = trunc i64 %63 to i8, !mcsema_real_eip !4
  %68 = tail call i8 @llvm.ctpop.i8(i8 %67) #0, !mcsema_real_eip !4
  %69 = and i8 %68, 1
  %70 = icmp eq i8 %69, 0
  %71 = icmp eq i64 %63, 0, !mcsema_real_eip !4
  %72 = icmp slt i64 %63, 0
  %73 = icmp ult i64 %61, 32, !mcsema_real_eip !4
  %74 = and i64 %64, %61, !mcsema_real_eip !4
  %75 = icmp slt i64 %74, 0
  %76 = add i64 %2, -12, !mcsema_real_eip !5
  %77 = inttoptr i64 %76 to i32*
  store i32 0, i32* %77, align 4, !mcsema_real_eip !5
  %78 = inttoptr i64 %63 to i32*
  store i32 70, i32* %78, align 4, !mcsema_real_eip !6
  %79 = add i64 %2, -32, !mcsema_real_eip !7
  %80 = inttoptr i64 %79 to i32*
  store i32 80, i32* %80, align 4, !mcsema_real_eip !7
  %81 = add i64 %2, -20, !mcsema_real_eip !8
  %82 = inttoptr i64 %81 to i32*
  store i32 80, i32* %82, align 4, !mcsema_real_eip !8
  %83 = add i64 %2, -24, !mcsema_real_eip !9
  %84 = inttoptr i64 %83 to i32*
  store i32 70, i32* %84, align 4, !mcsema_real_eip !9
  %85 = add i64 %2, -48
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !10
  store i64 -4981261766360305936, i64* %86, align 8, !mcsema_real_eip !10
  store i64 70, i64* %RAX.i, align 8, !mcsema_real_eip !10
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !10
  store i64 40, i64* %RCX.i, align 8, !mcsema_real_eip !10
  store i64 30, i64* %RDX.i, align 8, !mcsema_real_eip !10
  store i64 20, i64* %RSI.i, align 8, !mcsema_real_eip !10
  store i64 10, i64* %RDI.i, align 8, !mcsema_real_eip !10
  store i64 %85, i64* %RSP.i, align 8, !mcsema_real_eip !10
  store i64 %61, i64* %RBP.i, align 8, !mcsema_real_eip !10
  store i64 50, i64* %R8.i, align 8, !mcsema_real_eip !10
  store i64 60, i64* %R9.i, align 8, !mcsema_real_eip !10
  store i64 80, i64* %R10.i, align 8, !mcsema_real_eip !10
  store i64 %4, i64* %R11.i, align 8, !mcsema_real_eip !10
  store i64 %5, i64* %R12.i, align 8, !mcsema_real_eip !10
  store i64 %6, i64* %R13.i, align 8, !mcsema_real_eip !10
  store i64 %7, i64* %R14.i, align 8, !mcsema_real_eip !10
  store i64 %8, i64* %R15.i, align 8, !mcsema_real_eip !10
  store i64 %9, i64* %RIP.i, align 8, !mcsema_real_eip !10
  store i1 %73, i1* %CF.i, align 1, !mcsema_real_eip !10
  store i1 %70, i1* %PF.i, align 1, !mcsema_real_eip !10
  store i1 %66, i1* %AF.i, align 1, !mcsema_real_eip !10
  store i1 %71, i1* %ZF.i, align 1, !mcsema_real_eip !10
  store i1 %72, i1* %SF.i, align 1, !mcsema_real_eip !10
  store i1 %75, i1* %OF.i, align 1, !mcsema_real_eip !10
  store i1 %10, i1* %DF.i, align 1, !mcsema_real_eip !10
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !10
  store i1 %13, i1* %FPU_B.i, align 1, !mcsema_real_eip !10
  store i1 %14, i1* %FPU_C3.i, align 1, !mcsema_real_eip !10
  store i3 %15, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !10
  store i1 %16, i1* %FPU_C2.i, align 1, !mcsema_real_eip !10
  store i1 %17, i1* %FPU_C1.i, align 1, !mcsema_real_eip !10
  store i1 %18, i1* %FPU_C0.i, align 1, !mcsema_real_eip !10
  store i1 %19, i1* %FPU_ES.i, align 1, !mcsema_real_eip !10
  store i1 %20, i1* %FPU_SF.i, align 1, !mcsema_real_eip !10
  store i1 %21, i1* %FPU_PE.i, align 1, !mcsema_real_eip !10
  store i1 %22, i1* %FPU_UE.i, align 1, !mcsema_real_eip !10
  store i1 %23, i1* %FPU_OE.i, align 1, !mcsema_real_eip !10
  store i1 %24, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !10
  store i1 %25, i1* %FPU_DE.i, align 1, !mcsema_real_eip !10
  store i1 %26, i1* %FPU_IE.i, align 1, !mcsema_real_eip !10
  store i1 %27, i1* %FPU_X.i, align 1, !mcsema_real_eip !10
  store i2 %28, i2* %FPU_RC.i, align 1, !mcsema_real_eip !10
  store i2 %29, i2* %FPU_PC.i, align 1, !mcsema_real_eip !10
  store i1 %30, i1* %FPU_PM.i, align 1, !mcsema_real_eip !10
  store i1 %31, i1* %FPU_UM.i, align 1, !mcsema_real_eip !10
  store i1 %32, i1* %FPU_OM.i, align 1, !mcsema_real_eip !10
  store i1 %33, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !10
  store i1 %34, i1* %FPU_DM.i, align 1, !mcsema_real_eip !10
  store i1 %35, i1* %FPU_IM.i, align 1, !mcsema_real_eip !10
  store i64 %38, i64* %37, align 4
  store i16 %39, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !10
  store i64 %40, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !10
  store i16 %41, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !10
  store i64 %42, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !10
  store i128 %43, i128* %XMM0.i, align 1, !mcsema_real_eip !10
  store i128 %44, i128* %XMM1.i, align 1, !mcsema_real_eip !10
  store i128 %45, i128* %XMM2.i, align 1, !mcsema_real_eip !10
  store i128 %46, i128* %XMM3.i, align 1, !mcsema_real_eip !10
  store i128 %47, i128* %XMM4.i, align 1, !mcsema_real_eip !10
  store i128 %48, i128* %XMM5.i, align 1, !mcsema_real_eip !10
  store i128 %49, i128* %XMM6.i, align 1, !mcsema_real_eip !10
  store i128 %50, i128* %XMM7.i, align 1, !mcsema_real_eip !10
  store i128 %51, i128* %XMM8.i, align 1, !mcsema_real_eip !10
  store i128 %52, i128* %XMM9.i, align 1, !mcsema_real_eip !10
  store i128 %53, i128* %XMM10.i, align 1, !mcsema_real_eip !10
  store i128 %54, i128* %XMM11.i, align 1, !mcsema_real_eip !10
  store i128 %55, i128* %XMM12.i, align 1, !mcsema_real_eip !10
  store i128 %56, i128* %XMM13.i, align 1, !mcsema_real_eip !10
  store i128 %57, i128* %XMM14.i, align 1, !mcsema_real_eip !10
  store i128 %58, i128* %XMM15.i, align 1, !mcsema_real_eip !10
  store i64 %59, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !10
  store i64 %60, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !10
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast.i, i8* %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false) #0
  %87 = add i64 %2, -56
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !2
  store i64 %61, i64* %88, align 8, !mcsema_real_eip !2
  %89 = load i32* %80, align 4, !mcsema_real_eip !11
  %90 = load i32* %78, align 4, !mcsema_real_eip !12
  %91 = zext i32 %90 to i64, !mcsema_real_eip !12
  %92 = add i64 %2, -60, !mcsema_real_eip !13
  %93 = inttoptr i64 %92 to i32*
  store i32 10, i32* %93, align 4, !mcsema_real_eip !13
  %94 = add i64 %2, -64, !mcsema_real_eip !14
  %95 = inttoptr i64 %94 to i32*
  store i32 20, i32* %95, align 4, !mcsema_real_eip !14
  %96 = add i64 %2, -68, !mcsema_real_eip !15
  %97 = inttoptr i64 %96 to i32*
  store i32 30, i32* %97, align 4, !mcsema_real_eip !15
  %98 = add i64 %2, -72, !mcsema_real_eip !16
  %99 = inttoptr i64 %98 to i32*
  store i32 40, i32* %99, align 4, !mcsema_real_eip !16
  %100 = add i64 %2, -76, !mcsema_real_eip !17
  %101 = inttoptr i64 %100 to i32*
  store i32 50, i32* %101, align 4, !mcsema_real_eip !17
  %102 = add i64 %2, -80, !mcsema_real_eip !18
  %103 = inttoptr i64 %102 to i32*
  store i32 60, i32* %103, align 4, !mcsema_real_eip !18
  %104 = add i64 %2, -84, !mcsema_real_eip !19
  %105 = inttoptr i64 %104 to i32*
  store i32 %90, i32* %105, align 4, !mcsema_real_eip !19
  %106 = add i64 %2, -88, !mcsema_real_eip !20
  %107 = inttoptr i64 %106 to i32*
  store i32 %89, i32* %107, align 4, !mcsema_real_eip !20
  %108 = load i32* %93, align 4, !mcsema_real_eip !21
  %109 = load i32* %95, align 4, !mcsema_real_eip !22
  %110 = add i32 %109, %108
  %111 = load i32* %97, align 4, !mcsema_real_eip !23
  %112 = add i32 %110, %111
  %113 = load i32* %99, align 4, !mcsema_real_eip !24
  %114 = add i32 %112, %113
  %115 = load i32* %101, align 4, !mcsema_real_eip !25
  %116 = add i32 %114, %115
  %117 = load i32* %103, align 4, !mcsema_real_eip !26
  %118 = add i32 %116, %117
  %119 = load i32* %105, align 4, !mcsema_real_eip !27
  %120 = add i32 %118, %119
  %121 = add i64 %2, -92, !mcsema_real_eip !28
  %122 = inttoptr i64 %121 to i32*
  store i32 %120, i32* %122, align 4, !mcsema_real_eip !28
  %123 = add i32 %120, -40
  %124 = icmp eq i32 %123, 0, !mcsema_real_eip !29
  %125 = icmp slt i32 %123, 0
  %126 = sub i32 39, %120
  %127 = and i32 %126, %120
  %128 = icmp slt i32 %127, 0
  %129 = xor i1 %125, %128
  %130 = or i1 %124, %129, !mcsema_real_eip !30
  %131 = load i32* %107, align 4, !mcsema_real_eip !31
  br i1 %130, label %block_0x59.i.i, label %block_0x4b.i.i, !mcsema_real_eip !30

block_0x59.i.i:                                   ; preds = %driverBlockRaw
  %132 = sub i32 %120, %131, !mcsema_real_eip !31
  %133 = xor i32 %132, %120, !mcsema_real_eip !31
  %134 = xor i32 %133, %131, !mcsema_real_eip !31
  %135 = and i32 %134, 16, !mcsema_real_eip !31
  %136 = icmp ne i32 %135, 0, !mcsema_real_eip !31
  %137 = trunc i32 %132 to i8, !mcsema_real_eip !31
  %138 = tail call i8 @llvm.ctpop.i8(i8 %137) #0, !mcsema_real_eip !31
  %139 = and i8 %138, 1
  %140 = icmp eq i8 %139, 0
  %141 = icmp eq i32 %120, %131
  %142 = icmp slt i32 %132, 0
  %143 = icmp ult i32 %120, %131, !mcsema_real_eip !31
  %144 = xor i32 %131, %120, !mcsema_real_eip !31
  %145 = and i32 %133, %144, !mcsema_real_eip !31
  %146 = icmp slt i32 %145, 0
  %147 = add i64 %2, -96, !mcsema_real_eip !32
  %148 = inttoptr i64 %147 to i32*
  store i32 %132, i32* %148, align 4, !mcsema_real_eip !32
  %149 = zext i32 %132 to i64, !mcsema_real_eip !33
  %150 = load i64* %88, align 8, !mcsema_real_eip !34
  store i64 %149, i64* %RAX.i, align 8, !mcsema_real_eip !35
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !35
  store i64 40, i64* %RCX.i, align 8, !mcsema_real_eip !35
  store i64 30, i64* %RDX.i, align 8, !mcsema_real_eip !35
  store i64 20, i64* %RSI.i, align 8, !mcsema_real_eip !35
  store i64 10, i64* %RDI.i, align 8, !mcsema_real_eip !35
  store i64 %63, i64* %RSP.i, align 8, !mcsema_real_eip !35
  store i64 %150, i64* %RBP.i, align 8, !mcsema_real_eip !35
  store i64 50, i64* %R8.i, align 8, !mcsema_real_eip !35
  store i64 60, i64* %R9.i, align 8, !mcsema_real_eip !35
  store i64 %91, i64* %R10.i, align 8, !mcsema_real_eip !35
  store i64 %4, i64* %R11.i, align 8, !mcsema_real_eip !35
  store i64 %5, i64* %R12.i, align 8, !mcsema_real_eip !35
  store i64 %6, i64* %R13.i, align 8, !mcsema_real_eip !35
  store i64 %7, i64* %R14.i, align 8, !mcsema_real_eip !35
  store i64 %8, i64* %R15.i, align 8, !mcsema_real_eip !35
  store i64 %9, i64* %RIP.i, align 8, !mcsema_real_eip !35
  store i1 %143, i1* %CF.i, align 1, !mcsema_real_eip !35
  store i1 %140, i1* %PF.i, align 1, !mcsema_real_eip !35
  store i1 %136, i1* %AF.i, align 1, !mcsema_real_eip !35
  store i1 %141, i1* %ZF.i, align 1, !mcsema_real_eip !35
  store i1 %142, i1* %SF.i, align 1, !mcsema_real_eip !35
  store i1 %146, i1* %OF.i, align 1, !mcsema_real_eip !35
  store i1 %10, i1* %DF.i, align 1, !mcsema_real_eip !35
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !35
  store i1 %13, i1* %FPU_B.i, align 1, !mcsema_real_eip !35
  store i1 %14, i1* %FPU_C3.i, align 1, !mcsema_real_eip !35
  store i3 %15, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !35
  store i1 %16, i1* %FPU_C2.i, align 1, !mcsema_real_eip !35
  store i1 %17, i1* %FPU_C1.i, align 1, !mcsema_real_eip !35
  store i1 %18, i1* %FPU_C0.i, align 1, !mcsema_real_eip !35
  store i1 %19, i1* %FPU_ES.i, align 1, !mcsema_real_eip !35
  store i1 %20, i1* %FPU_SF.i, align 1, !mcsema_real_eip !35
  store i1 %21, i1* %FPU_PE.i, align 1, !mcsema_real_eip !35
  store i1 %22, i1* %FPU_UE.i, align 1, !mcsema_real_eip !35
  store i1 %23, i1* %FPU_OE.i, align 1, !mcsema_real_eip !35
  store i1 %24, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !35
  store i1 %25, i1* %FPU_DE.i, align 1, !mcsema_real_eip !35
  store i1 %26, i1* %FPU_IE.i, align 1, !mcsema_real_eip !35
  store i1 %27, i1* %FPU_X.i, align 1, !mcsema_real_eip !35
  store i2 %28, i2* %FPU_RC.i, align 1, !mcsema_real_eip !35
  store i2 %29, i2* %FPU_PC.i, align 1, !mcsema_real_eip !35
  store i1 %30, i1* %FPU_PM.i, align 1, !mcsema_real_eip !35
  store i1 %31, i1* %FPU_UM.i, align 1, !mcsema_real_eip !35
  store i1 %32, i1* %FPU_OM.i, align 1, !mcsema_real_eip !35
  store i1 %33, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !35
  store i1 %34, i1* %FPU_DM.i, align 1, !mcsema_real_eip !35
  store i1 %35, i1* %FPU_IM.i, align 1, !mcsema_real_eip !35
  store i64 %38, i64* %37, align 4
  store i16 %39, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !35
  store i64 %40, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !35
  store i16 %41, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !35
  store i64 %42, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !35
  store i128 %43, i128* %XMM0.i, align 1, !mcsema_real_eip !35
  store i128 %44, i128* %XMM1.i, align 1, !mcsema_real_eip !35
  store i128 %45, i128* %XMM2.i, align 1, !mcsema_real_eip !35
  store i128 %46, i128* %XMM3.i, align 1, !mcsema_real_eip !35
  store i128 %47, i128* %XMM4.i, align 1, !mcsema_real_eip !35
  store i128 %48, i128* %XMM5.i, align 1, !mcsema_real_eip !35
  store i128 %49, i128* %XMM6.i, align 1, !mcsema_real_eip !35
  store i128 %50, i128* %XMM7.i, align 1, !mcsema_real_eip !35
  store i128 %51, i128* %XMM8.i, align 1, !mcsema_real_eip !35
  store i128 %52, i128* %XMM9.i, align 1, !mcsema_real_eip !35
  store i128 %53, i128* %XMM10.i, align 1, !mcsema_real_eip !35
  store i128 %54, i128* %XMM11.i, align 1, !mcsema_real_eip !35
  store i128 %55, i128* %XMM12.i, align 1, !mcsema_real_eip !35
  store i128 %56, i128* %XMM13.i, align 1, !mcsema_real_eip !35
  store i128 %57, i128* %XMM14.i, align 1, !mcsema_real_eip !35
  store i128 %58, i128* %XMM15.i, align 1, !mcsema_real_eip !35
  store i64 %59, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !35
  store i64 %60, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !35
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast.i)
  br label %sub_70.exit

block_0x4b.i.i:                                   ; preds = %driverBlockRaw
  %uadd145.i.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %120, i32 %131) #0
  %151 = extractvalue { i32, i1 } %uadd145.i.i, 0
  %152 = xor i32 %151, %131, !mcsema_real_eip !36
  %153 = xor i32 %152, %120, !mcsema_real_eip !36
  %154 = and i32 %153, 16, !mcsema_real_eip !36
  %155 = icmp ne i32 %154, 0, !mcsema_real_eip !36
  %156 = icmp slt i32 %151, 0
  %157 = icmp eq i32 %151, 0, !mcsema_real_eip !36
  %158 = xor i32 %120, -2147483648, !mcsema_real_eip !36
  %159 = xor i32 %158, %131, !mcsema_real_eip !36
  %160 = and i32 %152, %159, !mcsema_real_eip !36
  %161 = icmp slt i32 %160, 0
  %162 = trunc i32 %151 to i8, !mcsema_real_eip !36
  %163 = tail call i8 @llvm.ctpop.i8(i8 %162) #0, !mcsema_real_eip !36
  %164 = and i8 %163, 1
  %165 = icmp eq i8 %164, 0
  %166 = extractvalue { i32, i1 } %uadd145.i.i, 1
  %167 = add i64 %2, -96, !mcsema_real_eip !37
  %168 = inttoptr i64 %167 to i32*
  store i32 %151, i32* %168, align 4, !mcsema_real_eip !37
  %169 = zext i32 %151 to i64, !mcsema_real_eip !33
  %170 = load i64* %88, align 8, !mcsema_real_eip !34
  store i64 %169, i64* %RAX.i, align 8, !mcsema_real_eip !35
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !35
  store i64 40, i64* %RCX.i, align 8, !mcsema_real_eip !35
  store i64 30, i64* %RDX.i, align 8, !mcsema_real_eip !35
  store i64 20, i64* %RSI.i, align 8, !mcsema_real_eip !35
  store i64 10, i64* %RDI.i, align 8, !mcsema_real_eip !35
  store i64 %63, i64* %RSP.i, align 8, !mcsema_real_eip !35
  store i64 %170, i64* %RBP.i, align 8, !mcsema_real_eip !35
  store i64 50, i64* %R8.i, align 8, !mcsema_real_eip !35
  store i64 60, i64* %R9.i, align 8, !mcsema_real_eip !35
  store i64 %91, i64* %R10.i, align 8, !mcsema_real_eip !35
  store i64 %4, i64* %R11.i, align 8, !mcsema_real_eip !35
  store i64 %5, i64* %R12.i, align 8, !mcsema_real_eip !35
  store i64 %6, i64* %R13.i, align 8, !mcsema_real_eip !35
  store i64 %7, i64* %R14.i, align 8, !mcsema_real_eip !35
  store i64 %8, i64* %R15.i, align 8, !mcsema_real_eip !35
  store i64 %9, i64* %RIP.i, align 8, !mcsema_real_eip !35
  store i1 %166, i1* %CF.i, align 1, !mcsema_real_eip !35
  store i1 %165, i1* %PF.i, align 1, !mcsema_real_eip !35
  store i1 %155, i1* %AF.i, align 1, !mcsema_real_eip !35
  store i1 %157, i1* %ZF.i, align 1, !mcsema_real_eip !35
  store i1 %156, i1* %SF.i, align 1, !mcsema_real_eip !35
  store i1 %161, i1* %OF.i, align 1, !mcsema_real_eip !35
  store i1 %10, i1* %DF.i, align 1, !mcsema_real_eip !35
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !35
  store i1 %13, i1* %FPU_B.i, align 1, !mcsema_real_eip !35
  store i1 %14, i1* %FPU_C3.i, align 1, !mcsema_real_eip !35
  store i3 %15, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !35
  store i1 %16, i1* %FPU_C2.i, align 1, !mcsema_real_eip !35
  store i1 %17, i1* %FPU_C1.i, align 1, !mcsema_real_eip !35
  store i1 %18, i1* %FPU_C0.i, align 1, !mcsema_real_eip !35
  store i1 %19, i1* %FPU_ES.i, align 1, !mcsema_real_eip !35
  store i1 %20, i1* %FPU_SF.i, align 1, !mcsema_real_eip !35
  store i1 %21, i1* %FPU_PE.i, align 1, !mcsema_real_eip !35
  store i1 %22, i1* %FPU_UE.i, align 1, !mcsema_real_eip !35
  store i1 %23, i1* %FPU_OE.i, align 1, !mcsema_real_eip !35
  store i1 %24, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !35
  store i1 %25, i1* %FPU_DE.i, align 1, !mcsema_real_eip !35
  store i1 %26, i1* %FPU_IE.i, align 1, !mcsema_real_eip !35
  store i1 %27, i1* %FPU_X.i, align 1, !mcsema_real_eip !35
  store i2 %28, i2* %FPU_RC.i, align 1, !mcsema_real_eip !35
  store i2 %29, i2* %FPU_PC.i, align 1, !mcsema_real_eip !35
  store i1 %30, i1* %FPU_PM.i, align 1, !mcsema_real_eip !35
  store i1 %31, i1* %FPU_UM.i, align 1, !mcsema_real_eip !35
  store i1 %32, i1* %FPU_OM.i, align 1, !mcsema_real_eip !35
  store i1 %33, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !35
  store i1 %34, i1* %FPU_DM.i, align 1, !mcsema_real_eip !35
  store i1 %35, i1* %FPU_IM.i, align 1, !mcsema_real_eip !35
  store i64 %38, i64* %37, align 4
  store i16 %39, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !35
  store i64 %40, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !35
  store i16 %41, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !35
  store i64 %42, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !35
  store i128 %43, i128* %XMM0.i, align 1, !mcsema_real_eip !35
  store i128 %44, i128* %XMM1.i, align 1, !mcsema_real_eip !35
  store i128 %45, i128* %XMM2.i, align 1, !mcsema_real_eip !35
  store i128 %46, i128* %XMM3.i, align 1, !mcsema_real_eip !35
  store i128 %47, i128* %XMM4.i, align 1, !mcsema_real_eip !35
  store i128 %48, i128* %XMM5.i, align 1, !mcsema_real_eip !35
  store i128 %49, i128* %XMM6.i, align 1, !mcsema_real_eip !35
  store i128 %50, i128* %XMM7.i, align 1, !mcsema_real_eip !35
  store i128 %51, i128* %XMM8.i, align 1, !mcsema_real_eip !35
  store i128 %52, i128* %XMM9.i, align 1, !mcsema_real_eip !35
  store i128 %53, i128* %XMM10.i, align 1, !mcsema_real_eip !35
  store i128 %54, i128* %XMM11.i, align 1, !mcsema_real_eip !35
  store i128 %55, i128* %XMM12.i, align 1, !mcsema_real_eip !35
  store i128 %56, i128* %XMM13.i, align 1, !mcsema_real_eip !35
  store i128 %57, i128* %XMM14.i, align 1, !mcsema_real_eip !35
  store i128 %58, i128* %XMM15.i, align 1, !mcsema_real_eip !35
  store i64 %59, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !35
  store i64 %60, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !35
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast.i)
  br label %sub_70.exit

sub_70.exit:                                      ; preds = %block_0x4b.i.i, %block_0x59.i.i
  %171 = phi i64 [ %170, %block_0x4b.i.i ], [ %150, %block_0x59.i.i ]
  %172 = phi i64 [ %169, %block_0x4b.i.i ], [ %149, %block_0x59.i.i ]
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast, i8* %12, i32 128, i32 4, i1 false) #0, !mcsema_real_eip !10
  %173 = add i64 %171, -8, !mcsema_real_eip !38
  %174 = trunc i64 %172 to i32, !mcsema_real_eip !38
  %175 = inttoptr i64 %173 to i32*
  store i32 %174, i32* %175, align 4, !mcsema_real_eip !38
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %63, i64 32) #0
  %176 = extractvalue { i64, i1 } %uadd.i, 0
  %177 = xor i64 %176, %63, !mcsema_real_eip !39
  %178 = and i64 %177, 16, !mcsema_real_eip !39
  %179 = icmp ne i64 %178, 0, !mcsema_real_eip !39
  %180 = icmp slt i64 %176, 0
  %181 = icmp eq i64 %176, 0, !mcsema_real_eip !39
  %182 = add i64 %2, 9223372036854775768
  %183 = and i64 %177, %182, !mcsema_real_eip !39
  %184 = icmp slt i64 %183, 0
  %185 = trunc i64 %176 to i8, !mcsema_real_eip !39
  %186 = tail call i8 @llvm.ctpop.i8(i8 %185) #0, !mcsema_real_eip !39
  %187 = and i8 %186, 1
  %188 = icmp eq i8 %187, 0
  %189 = extractvalue { i64, i1 } %uadd.i, 1
  %190 = inttoptr i64 %176 to i64*, !mcsema_real_eip !40
  %191 = load i64* %190, align 8, !mcsema_real_eip !40
  %192 = add i64 %176, 16, !mcsema_real_eip !41
  store i64 %172, i64* %RAX.i, align 8, !mcsema_real_eip !41
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !41
  store i64 40, i64* %RCX.i, align 8, !mcsema_real_eip !41
  store i64 30, i64* %RDX.i, align 8, !mcsema_real_eip !41
  store i64 20, i64* %RSI.i, align 8, !mcsema_real_eip !41
  store i64 10, i64* %RDI.i, align 8, !mcsema_real_eip !41
  store i64 %192, i64* %RSP.i, align 8, !mcsema_real_eip !41
  store i64 %191, i64* %RBP.i, align 8, !mcsema_real_eip !41
  store i64 50, i64* %R8.i, align 8, !mcsema_real_eip !41
  store i64 60, i64* %R9.i, align 8, !mcsema_real_eip !41
  store i64 %91, i64* %R10.i, align 8, !mcsema_real_eip !41
  store i64 %4, i64* %R11.i, align 8, !mcsema_real_eip !41
  store i64 %5, i64* %R12.i, align 8, !mcsema_real_eip !41
  store i64 %6, i64* %R13.i, align 8, !mcsema_real_eip !41
  store i64 %7, i64* %R14.i, align 8, !mcsema_real_eip !41
  store i64 %8, i64* %R15.i, align 8, !mcsema_real_eip !41
  store i64 %9, i64* %RIP.i, align 8, !mcsema_real_eip !41
  store i1 %189, i1* %CF.i, align 1, !mcsema_real_eip !41
  store i1 %188, i1* %PF.i, align 1, !mcsema_real_eip !41
  store i1 %179, i1* %AF.i, align 1, !mcsema_real_eip !41
  store i1 %181, i1* %ZF.i, align 1, !mcsema_real_eip !41
  store i1 %180, i1* %SF.i, align 1, !mcsema_real_eip !41
  store i1 %184, i1* %OF.i, align 1, !mcsema_real_eip !41
  store i1 %10, i1* %DF.i, align 1, !mcsema_real_eip !41
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !41
  store i1 %13, i1* %FPU_B.i, align 1, !mcsema_real_eip !41
  store i1 %14, i1* %FPU_C3.i, align 1, !mcsema_real_eip !41
  store i3 %15, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !41
  store i1 %16, i1* %FPU_C2.i, align 1, !mcsema_real_eip !41
  store i1 %17, i1* %FPU_C1.i, align 1, !mcsema_real_eip !41
  store i1 %18, i1* %FPU_C0.i, align 1, !mcsema_real_eip !41
  store i1 %19, i1* %FPU_ES.i, align 1, !mcsema_real_eip !41
  store i1 %20, i1* %FPU_SF.i, align 1, !mcsema_real_eip !41
  store i1 %21, i1* %FPU_PE.i, align 1, !mcsema_real_eip !41
  store i1 %22, i1* %FPU_UE.i, align 1, !mcsema_real_eip !41
  store i1 %23, i1* %FPU_OE.i, align 1, !mcsema_real_eip !41
  store i1 %24, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !41
  store i1 %25, i1* %FPU_DE.i, align 1, !mcsema_real_eip !41
  store i1 %26, i1* %FPU_IE.i, align 1, !mcsema_real_eip !41
  store i1 %27, i1* %FPU_X.i, align 1, !mcsema_real_eip !41
  store i2 %28, i2* %FPU_RC.i, align 1, !mcsema_real_eip !41
  store i2 %29, i2* %FPU_PC.i, align 1, !mcsema_real_eip !41
  store i1 %30, i1* %FPU_PM.i, align 1, !mcsema_real_eip !41
  store i1 %31, i1* %FPU_UM.i, align 1, !mcsema_real_eip !41
  store i1 %32, i1* %FPU_OM.i, align 1, !mcsema_real_eip !41
  store i1 %33, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !41
  store i1 %34, i1* %FPU_DM.i, align 1, !mcsema_real_eip !41
  store i1 %35, i1* %FPU_IM.i, align 1, !mcsema_real_eip !41
  store i64 %38, i64* %37, align 4
  store i16 %39, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !41
  store i64 %40, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !41
  store i16 %41, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !41
  store i64 %42, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !41
  store i128 %43, i128* %XMM0.i, align 1, !mcsema_real_eip !41
  store i128 %44, i128* %XMM1.i, align 1, !mcsema_real_eip !41
  store i128 %45, i128* %XMM2.i, align 1, !mcsema_real_eip !41
  store i128 %46, i128* %XMM3.i, align 1, !mcsema_real_eip !41
  store i128 %47, i128* %XMM4.i, align 1, !mcsema_real_eip !41
  store i128 %48, i128* %XMM5.i, align 1, !mcsema_real_eip !41
  store i128 %49, i128* %XMM6.i, align 1, !mcsema_real_eip !41
  store i128 %50, i128* %XMM7.i, align 1, !mcsema_real_eip !41
  store i128 %51, i128* %XMM8.i, align 1, !mcsema_real_eip !41
  store i128 %52, i128* %XMM9.i, align 1, !mcsema_real_eip !41
  store i128 %53, i128* %XMM10.i, align 1, !mcsema_real_eip !41
  store i128 %54, i128* %XMM11.i, align 1, !mcsema_real_eip !41
  store i128 %55, i128* %XMM12.i, align 1, !mcsema_real_eip !41
  store i128 %56, i128* %XMM13.i, align 1, !mcsema_real_eip !41
  store i128 %57, i128* %XMM14.i, align 1, !mcsema_real_eip !41
  store i128 %58, i128* %XMM15.i, align 1, !mcsema_real_eip !41
  store i64 %59, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !41
  store i64 %60, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !41
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast)
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
!4 = metadata !{i64 116, [16 x i8] c"\09subq\09$32, %rsp\00"}
!5 = metadata !{i64 163, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!6 = metadata !{i64 170, [18 x i8] c"\09movl\09$70, (%rsp)\00"}
!7 = metadata !{i64 177, [19 x i8] c"\09movl\09$80, 8(%rsp)\00"}
!8 = metadata !{i64 185, [23 x i8] c"\09movl\09%r10d, -12(%rbp)\00"}
!9 = metadata !{i64 189, [22 x i8] c"\09movl\09%eax, -16(%rbp)\00"}
!10 = metadata !{i64 192, [12 x i8] c"\09callq\09-197\00"}
!11 = metadata !{i64 4, [21 x i8] c"\09movl\0924(%rbp), %eax\00"}
!12 = metadata !{i64 7, [22 x i8] c"\09movl\0916(%rbp), %r10d\00"}
!13 = metadata !{i64 11, [21 x i8] c"\09movl\09%edi, -4(%rbp)\00"}
!14 = metadata !{i64 14, [21 x i8] c"\09movl\09%esi, -8(%rbp)\00"}
!15 = metadata !{i64 17, [22 x i8] c"\09movl\09%edx, -12(%rbp)\00"}
!16 = metadata !{i64 20, [22 x i8] c"\09movl\09%ecx, -16(%rbp)\00"}
!17 = metadata !{i64 23, [22 x i8] c"\09movl\09%r8d, -20(%rbp)\00"}
!18 = metadata !{i64 27, [22 x i8] c"\09movl\09%r9d, -24(%rbp)\00"}
!19 = metadata !{i64 31, [23 x i8] c"\09movl\09%r10d, -28(%rbp)\00"}
!20 = metadata !{i64 35, [22 x i8] c"\09movl\09%eax, -32(%rbp)\00"}
!21 = metadata !{i64 38, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!22 = metadata !{i64 41, [21 x i8] c"\09addl\09-8(%rbp), %eax\00"} ; [ DW_TAG_file_type ] [/]
!23 = metadata !{i64 44, [22 x i8] c"\09addl\09-12(%rbp), %eax\00"}
!24 = metadata !{i64 47, [22 x i8] c"\09addl\09-16(%rbp), %eax\00"}
!25 = metadata !{i64 50, [22 x i8] c"\09addl\09-20(%rbp), %eax\00"}
!26 = metadata !{i64 53, [22 x i8] c"\09addl\09-24(%rbp), %eax\00"}
!27 = metadata !{i64 56, [22 x i8] c"\09addl\09-28(%rbp), %eax\00"}
!28 = metadata !{i64 59, [22 x i8] c"\09movl\09%eax, -36(%rbp)\00"}
!29 = metadata !{i64 62, [21 x i8] c"\09cmpl\09$40, -36(%rbp)\00"}
!30 = metadata !{i64 69, [8 x i8] c"\09jle\0914\00"}
!31 = metadata !{i64 92, [22 x i8] c"\09subl\09-32(%rbp), %eax\00"}
!32 = metadata !{i64 95, [22 x i8] c"\09movl\09%eax, -40(%rbp)\00"}
!33 = metadata !{i64 98, [22 x i8] c"\09movl\09-40(%rbp), %eax\00"}
!34 = metadata !{i64 101, [11 x i8] c"\09popq\09%rbp\00"}
!35 = metadata !{i64 102, [6 x i8] c"\09retq\00"}
!36 = metadata !{i64 78, [22 x i8] c"\09addl\09-32(%rbp), %eax\00"}
!37 = metadata !{i64 81, [22 x i8] c"\09movl\09%eax, -40(%rbp)\00"}
!38 = metadata !{i64 197, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!39 = metadata !{i64 203, [16 x i8] c"\09addq\09$32, %rsp\00"}
!40 = metadata !{i64 207, [11 x i8] c"\09popq\09%rbp\00"}
!41 = metadata !{i64 208, [6 x i8] c"\09retq\00"}
