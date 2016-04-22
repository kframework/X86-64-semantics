; ModuleID = 'test_6_opt.bc'
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
  %5 = load i64* %R8.i, align 8, !mcsema_real_eip !3
  %R9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !3
  %6 = load i64* %R9.i, align 8, !mcsema_real_eip !3
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !3
  %7 = load i64* %R10.i, align 8, !mcsema_real_eip !3
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
  %8 = load i64* %R11.i, align 8, !mcsema_real_eip !3
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %9 = load i64* %R12.i, align 8, !mcsema_real_eip !3
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !3
  %10 = load i64* %R13.i, align 8, !mcsema_real_eip !3
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %11 = load i64* %R14.i, align 8, !mcsema_real_eip !3
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !3
  %12 = load i64* %R15.i, align 8, !mcsema_real_eip !3
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %13 = load i64* %RIP.i, align 8, !mcsema_real_eip !3
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !3
  %14 = load i1* %DF.i, align 1, !mcsema_real_eip !3
  %15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !3
  %16 = bitcast x86_fp80* %15 to i8*, !mcsema_real_eip !3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %16, i32 128, i32 4, i1 false) #0, !mcsema_real_eip !3
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !3
  %17 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !3
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !3
  %18 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !3
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !3
  %19 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !3
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !3
  %20 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !3
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !3
  %21 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !3
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !3
  %22 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !3
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !3
  %23 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !3
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !3
  %24 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !3
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !3
  %25 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !3
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !3
  %26 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !3
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !3
  %27 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !3
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !3
  %28 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !3
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !3
  %29 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !3
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !3
  %30 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !3
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !3
  %31 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !3
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !3
  %32 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !3
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !3
  %33 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !3
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !3
  %34 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !3
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !3
  %35 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !3
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !3
  %36 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !3
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !3
  %37 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !3
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !3
  %38 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !3
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !3
  %39 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !3
  %40 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !3
  %41 = bitcast i8* %40 to i64*
  %42 = load i64* %41, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !3
  %43 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !3
  %44 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !3
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !3
  %45 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !3
  %46 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !3
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %47 = load i128* %XMM0.i, align 1, !mcsema_real_eip !3
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %48 = load i128* %XMM1.i, align 1, !mcsema_real_eip !3
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %49 = load i128* %XMM2.i, align 1, !mcsema_real_eip !3
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %50 = load i128* %XMM3.i, align 1, !mcsema_real_eip !3
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %51 = load i128* %XMM4.i, align 1, !mcsema_real_eip !3
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %52 = load i128* %XMM5.i, align 1, !mcsema_real_eip !3
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %53 = load i128* %XMM6.i, align 1, !mcsema_real_eip !3
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %54 = load i128* %XMM7.i, align 1, !mcsema_real_eip !3
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %55 = load i128* %XMM8.i, align 1, !mcsema_real_eip !3
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %56 = load i128* %XMM9.i, align 1, !mcsema_real_eip !3
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %57 = load i128* %XMM10.i, align 1, !mcsema_real_eip !3
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %58 = load i128* %XMM11.i, align 1, !mcsema_real_eip !3
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %59 = load i128* %XMM12.i, align 1, !mcsema_real_eip !3
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %60 = load i128* %XMM13.i, align 1, !mcsema_real_eip !3
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %61 = load i128* %XMM14.i, align 1, !mcsema_real_eip !3
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %62 = load i128* %XMM15.i, align 1, !mcsema_real_eip !3
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %63 = load i64* %STACK_BASE.i, align 8, !mcsema_real_eip !3
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %64 = load i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !3
  %65 = add i64 %3, -8
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !3
  store i64 %4, i64* %66, align 8, !mcsema_real_eip !3
  %67 = add i64 %3, -120
  %68 = xor i64 %67, %65, !mcsema_real_eip !4
  %69 = and i64 %68, 16
  %70 = icmp eq i64 %69, 0
  %71 = trunc i64 %67 to i8, !mcsema_real_eip !4
  %72 = tail call i8 @llvm.ctpop.i8(i8 %71) #0, !mcsema_real_eip !4
  %73 = and i8 %72, 1
  %74 = icmp eq i8 %73, 0
  %75 = icmp eq i64 %67, 0, !mcsema_real_eip !4
  %76 = icmp slt i64 %67, 0
  %77 = icmp ult i64 %65, 112, !mcsema_real_eip !4
  %78 = and i64 %68, %65, !mcsema_real_eip !4
  %79 = icmp slt i64 %78, 0
  %80 = add i64 %3, -12, !mcsema_real_eip !5
  %81 = inttoptr i64 %80 to i32*
  store i32 0, i32* %81, align 4, !mcsema_real_eip !5
  %82 = add i64 %3, -16, !mcsema_real_eip !6
  %83 = inttoptr i64 %82 to i32*
  %84 = load i32* %83, align 4, !mcsema_real_eip !6
  %85 = add i64 %3, -48, !mcsema_real_eip !7
  %86 = inttoptr i64 %85 to i32*
  store i32 %84, i32* %86, align 4, !mcsema_real_eip !7
  %87 = add i64 %3, -24, !mcsema_real_eip !8
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !8
  %89 = load i64* %88, align 8, !mcsema_real_eip !8
  %90 = add i64 %3, -56, !mcsema_real_eip !9
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !9
  store i64 %89, i64* %91, align 8, !mcsema_real_eip !9
  %92 = load i32* %86, align 4, !mcsema_real_eip !10
  %93 = zext i32 %92 to i64, !mcsema_real_eip !10
  %94 = add i64 %3, -32, !mcsema_real_eip !11
  %95 = inttoptr i64 %94 to i32*
  %96 = load i32* %95, align 4, !mcsema_real_eip !11
  %97 = add i64 %3, -64, !mcsema_real_eip !12
  %98 = inttoptr i64 %97 to i32*
  store i32 %96, i32* %98, align 4, !mcsema_real_eip !12
  %99 = add i64 %3, -40, !mcsema_real_eip !13
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !13
  %101 = load i64* %100, align 8, !mcsema_real_eip !13
  %102 = add i64 %3, -72, !mcsema_real_eip !14
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !14
  store i64 %101, i64* %103, align 8, !mcsema_real_eip !14
  %104 = load i32* %98, align 4, !mcsema_real_eip !15
  %105 = zext i32 %104 to i64, !mcsema_real_eip !15
  %106 = add i64 %3, -108, !mcsema_real_eip !16
  %107 = inttoptr i64 %106 to i32*
  store i32 0, i32* %107, align 4, !mcsema_real_eip !16
  %108 = add i64 %3, -128
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !17
  store i64 -4981261766360305936, i64* %109, align 8, !mcsema_real_eip !17
  store i64 0, i64* %RAX.i, align 8, !mcsema_real_eip !17
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !17
  store i64 %105, i64* %RCX.i, align 8, !mcsema_real_eip !17
  store i64 %101, i64* %RDX.i, align 8, !mcsema_real_eip !17
  store i64 %93, i64* %RSI.i, align 8, !mcsema_real_eip !17
  store i64 %89, i64* %RDI.i, align 8, !mcsema_real_eip !17
  store i64 %108, i64* %RSP.i, align 8, !mcsema_real_eip !17
  store i64 %65, i64* %RBP.i, align 8, !mcsema_real_eip !17
  store i64 %5, i64* %R8.i, align 8, !mcsema_real_eip !17
  store i64 %6, i64* %R9.i, align 8, !mcsema_real_eip !17
  store i64 %7, i64* %R10.i, align 8, !mcsema_real_eip !17
  store i64 %8, i64* %R11.i, align 8, !mcsema_real_eip !17
  store i64 %9, i64* %R12.i, align 8, !mcsema_real_eip !17
  store i64 %10, i64* %R13.i, align 8, !mcsema_real_eip !17
  store i64 %11, i64* %R14.i, align 8, !mcsema_real_eip !17
  store i64 %12, i64* %R15.i, align 8, !mcsema_real_eip !17
  store i64 %13, i64* %RIP.i, align 8, !mcsema_real_eip !17
  store i1 %77, i1* %CF.i, align 1, !mcsema_real_eip !17
  store i1 %74, i1* %PF.i, align 1, !mcsema_real_eip !17
  store i1 %70, i1* %AF.i, align 1, !mcsema_real_eip !17
  store i1 %75, i1* %ZF.i, align 1, !mcsema_real_eip !17
  store i1 %76, i1* %SF.i, align 1, !mcsema_real_eip !17
  store i1 %79, i1* %OF.i, align 1, !mcsema_real_eip !17
  store i1 %14, i1* %DF.i, align 1, !mcsema_real_eip !17
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %1, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !17
  store i1 %17, i1* %FPU_B.i, align 1, !mcsema_real_eip !17
  store i1 %18, i1* %FPU_C3.i, align 1, !mcsema_real_eip !17
  store i3 %19, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !17
  store i1 %20, i1* %FPU_C2.i, align 1, !mcsema_real_eip !17
  store i1 %21, i1* %FPU_C1.i, align 1, !mcsema_real_eip !17
  store i1 %22, i1* %FPU_C0.i, align 1, !mcsema_real_eip !17
  store i1 %23, i1* %FPU_ES.i, align 1, !mcsema_real_eip !17
  store i1 %24, i1* %FPU_SF.i, align 1, !mcsema_real_eip !17
  store i1 %25, i1* %FPU_PE.i, align 1, !mcsema_real_eip !17
  store i1 %26, i1* %FPU_UE.i, align 1, !mcsema_real_eip !17
  store i1 %27, i1* %FPU_OE.i, align 1, !mcsema_real_eip !17
  store i1 %28, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !17
  store i1 %29, i1* %FPU_DE.i, align 1, !mcsema_real_eip !17
  store i1 %30, i1* %FPU_IE.i, align 1, !mcsema_real_eip !17
  store i1 %31, i1* %FPU_X.i, align 1, !mcsema_real_eip !17
  store i2 %32, i2* %FPU_RC.i, align 1, !mcsema_real_eip !17
  store i2 %33, i2* %FPU_PC.i, align 1, !mcsema_real_eip !17
  store i1 %34, i1* %FPU_PM.i, align 1, !mcsema_real_eip !17
  store i1 %35, i1* %FPU_UM.i, align 1, !mcsema_real_eip !17
  store i1 %36, i1* %FPU_OM.i, align 1, !mcsema_real_eip !17
  store i1 %37, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !17
  store i1 %38, i1* %FPU_DM.i, align 1, !mcsema_real_eip !17
  store i1 %39, i1* %FPU_IM.i, align 1, !mcsema_real_eip !17
  store i64 %42, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !17
  store i64 %44, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !17
  store i16 %45, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !17
  store i64 %46, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !17
  store i128 %47, i128* %XMM0.i, align 1, !mcsema_real_eip !17
  store i128 %48, i128* %XMM1.i, align 1, !mcsema_real_eip !17
  store i128 %49, i128* %XMM2.i, align 1, !mcsema_real_eip !17
  store i128 %50, i128* %XMM3.i, align 1, !mcsema_real_eip !17
  store i128 %51, i128* %XMM4.i, align 1, !mcsema_real_eip !17
  store i128 %52, i128* %XMM5.i, align 1, !mcsema_real_eip !17
  store i128 %53, i128* %XMM6.i, align 1, !mcsema_real_eip !17
  store i128 %54, i128* %XMM7.i, align 1, !mcsema_real_eip !17
  store i128 %55, i128* %XMM8.i, align 1, !mcsema_real_eip !17
  store i128 %56, i128* %XMM9.i, align 1, !mcsema_real_eip !17
  store i128 %57, i128* %XMM10.i, align 1, !mcsema_real_eip !17
  store i128 %58, i128* %XMM11.i, align 1, !mcsema_real_eip !17
  store i128 %59, i128* %XMM12.i, align 1, !mcsema_real_eip !17
  store i128 %60, i128* %XMM13.i, align 1, !mcsema_real_eip !17
  store i128 %61, i128* %XMM14.i, align 1, !mcsema_real_eip !17
  store i128 %62, i128* %XMM15.i, align 1, !mcsema_real_eip !17
  store i64 %63, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !17
  store i64 %64, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !17
  %110 = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %110)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %110, i8* %1, i32 128, i32 16, i1 false) #0
  %111 = add i64 %3, -136
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !2
  store i64 %65, i64* %112, align 8, !mcsema_real_eip !2
  %113 = add i64 %3, -184, !mcsema_real_eip !18
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !18
  store i64 %89, i64* %114, align 8, !mcsema_real_eip !18
  %115 = add i64 %3, -176, !mcsema_real_eip !19
  %116 = inttoptr i64 %115 to i32*
  store i32 %92, i32* %116, align 4, !mcsema_real_eip !19
  %117 = load i64* %114, align 8, !mcsema_real_eip !20
  %118 = add i64 %3, -168, !mcsema_real_eip !21
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !21
  store i64 %117, i64* %119, align 8, !mcsema_real_eip !21
  %120 = load i32* %116, align 4, !mcsema_real_eip !22
  %121 = zext i32 %120 to i64, !mcsema_real_eip !22
  %122 = add i64 %3, -160, !mcsema_real_eip !23
  %123 = inttoptr i64 %122 to i32*
  store i32 %120, i32* %123, align 4, !mcsema_real_eip !23
  %124 = add i64 %3, -216, !mcsema_real_eip !24
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !24
  store i64 %101, i64* %125, align 8, !mcsema_real_eip !24
  %126 = add i64 %3, -208, !mcsema_real_eip !25
  %127 = inttoptr i64 %126 to i32*
  store i32 %104, i32* %127, align 4, !mcsema_real_eip !25
  %128 = load i64* %125, align 8, !mcsema_real_eip !26
  %129 = add i64 %3, -200, !mcsema_real_eip !27
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !27
  store i64 %128, i64* %130, align 8, !mcsema_real_eip !27
  %131 = load i32* %127, align 4, !mcsema_real_eip !28
  %132 = add i64 %3, -192, !mcsema_real_eip !29
  %133 = inttoptr i64 %132 to i32*
  store i32 %131, i32* %133, align 4, !mcsema_real_eip !29
  %134 = inttoptr i64 %129 to i32*
  %135 = load i32* %134, align 4, !mcsema_real_eip !30
  %136 = inttoptr i64 %118 to i32*
  %137 = load i32* %136, align 4, !mcsema_real_eip !31
  %138 = sub i32 %135, %137, !mcsema_real_eip !31
  %139 = xor i32 %138, %135, !mcsema_real_eip !31
  %140 = icmp eq i32 %135, %137
  %141 = icmp slt i32 %138, 0
  %142 = xor i32 %137, %135, !mcsema_real_eip !31
  %143 = and i32 %139, %142, !mcsema_real_eip !31
  %144 = icmp slt i32 %143, 0
  %145 = xor i1 %141, %144
  %146 = or i1 %140, %145, !mcsema_real_eip !32
  br i1 %146, label %block_0xc0.i.i, label %block_0xaa.i.i, !mcsema_real_eip !32

block_0xc0.i.i:                                   ; preds = %driverBlockRaw
  %147 = sub i32 %137, %135, !mcsema_real_eip !33
  %148 = add i64 %3, -232, !mcsema_real_eip !34
  %149 = inttoptr i64 %148 to i32*
  store i32 %147, i32* %149, align 4, !mcsema_real_eip !34
  %150 = add i64 %3, -196, !mcsema_real_eip !35
  %151 = inttoptr i64 %150 to i32*
  %152 = load i32* %151, align 4, !mcsema_real_eip !35
  %153 = add i64 %3, -164, !mcsema_real_eip !36
  %154 = inttoptr i64 %153 to i32*
  %155 = load i32* %154, align 4, !mcsema_real_eip !36
  %156 = sub i32 %152, %155, !mcsema_real_eip !36
  %157 = xor i32 %156, %152, !mcsema_real_eip !36
  %158 = icmp eq i32 %152, %155
  %159 = icmp slt i32 %156, 0
  %160 = xor i32 %155, %152, !mcsema_real_eip !36
  %161 = and i32 %157, %160, !mcsema_real_eip !36
  %162 = icmp slt i32 %161, 0
  %163 = xor i1 %159, %162
  %164 = or i1 %158, %163, !mcsema_real_eip !37
  br i1 %164, label %block_0xeb.i.i, label %block_0xd5.i.i, !mcsema_real_eip !37

block_0xaa.i.i:                                   ; preds = %driverBlockRaw
  %165 = add i64 %3, -164, !mcsema_real_eip !38
  %166 = inttoptr i64 %165 to i32*
  %167 = load i32* %166, align 4, !mcsema_real_eip !38
  %168 = add i32 %167, -1
  store i32 %168, i32* %166, align 4, !mcsema_real_eip !39
  %169 = load i32* %136, align 4, !mcsema_real_eip !40
  %170 = add i32 %169, 60
  store i32 %170, i32* %136, align 4, !mcsema_real_eip !41
  %171 = load i32* %134, align 4, !mcsema_real_eip !33
  %172 = sub i32 %170, %171, !mcsema_real_eip !33
  %173 = add i64 %3, -232, !mcsema_real_eip !34
  %174 = inttoptr i64 %173 to i32*
  store i32 %172, i32* %174, align 4, !mcsema_real_eip !34
  %175 = add i64 %3, -196, !mcsema_real_eip !35
  %176 = inttoptr i64 %175 to i32*
  %177 = load i32* %176, align 4, !mcsema_real_eip !35
  %178 = load i32* %166, align 4, !mcsema_real_eip !36
  %179 = sub i32 %177, %178, !mcsema_real_eip !36
  %180 = xor i32 %179, %177, !mcsema_real_eip !36
  %181 = icmp eq i32 %177, %178
  %182 = icmp slt i32 %179, 0
  %183 = xor i32 %178, %177, !mcsema_real_eip !36
  %184 = and i32 %180, %183, !mcsema_real_eip !36
  %185 = icmp slt i32 %184, 0
  %186 = xor i1 %182, %185
  %187 = or i1 %181, %186, !mcsema_real_eip !37
  br i1 %187, label %block_0xeb.i.i, label %block_0xd5.i.i, !mcsema_real_eip !37

block_0xeb.i.i:                                   ; preds = %block_0xaa.i.i, %block_0xc0.i.i
  %188 = add i64 %3, -164, !mcsema_real_eip !42
  %189 = inttoptr i64 %188 to i32*
  %190 = load i32* %189, align 4, !mcsema_real_eip !42
  %191 = add i64 %3, -196, !mcsema_real_eip !43
  %192 = inttoptr i64 %191 to i32*
  %193 = load i32* %192, align 4, !mcsema_real_eip !43
  %194 = sub i32 %190, %193, !mcsema_real_eip !44
  %195 = add i64 %3, -228, !mcsema_real_eip !45
  %196 = inttoptr i64 %195 to i32*
  store i32 %194, i32* %196, align 4, !mcsema_real_eip !45
  %197 = load i32* %123, align 4, !mcsema_real_eip !46
  %198 = load i32* %133, align 4, !mcsema_real_eip !47
  %199 = zext i32 %198 to i64, !mcsema_real_eip !47
  %200 = sub i32 %197, %198, !mcsema_real_eip !48
  %201 = xor i32 %200, %197, !mcsema_real_eip !48
  %202 = xor i32 %201, %198, !mcsema_real_eip !48
  %203 = and i32 %202, 16, !mcsema_real_eip !48
  %204 = icmp ne i32 %203, 0, !mcsema_real_eip !48
  %205 = trunc i32 %200 to i8, !mcsema_real_eip !48
  %206 = tail call i8 @llvm.ctpop.i8(i8 %205) #0, !mcsema_real_eip !48
  %207 = and i8 %206, 1
  %208 = icmp eq i8 %207, 0
  %209 = icmp eq i32 %197, %198
  %210 = icmp slt i32 %200, 0
  %211 = icmp ult i32 %197, %198, !mcsema_real_eip !48
  %212 = xor i32 %198, %197, !mcsema_real_eip !48
  %213 = and i32 %201, %212, !mcsema_real_eip !48
  %214 = icmp slt i32 %213, 0
  %215 = add i64 %3, -224, !mcsema_real_eip !49
  %216 = inttoptr i64 %215 to i32*
  store i32 %200, i32* %216, align 4, !mcsema_real_eip !49
  %217 = add i64 %3, -144, !mcsema_real_eip !50
  %218 = inttoptr i64 %217 to i32*
  store i32 %200, i32* %218, align 4, !mcsema_real_eip !50
  %219 = add i64 %3, -232, !mcsema_real_eip !51
  %220 = inttoptr i64 %219 to i64*, !mcsema_real_eip !51
  %221 = load i64* %220, align 8, !mcsema_real_eip !51
  %222 = add i64 %3, -152, !mcsema_real_eip !52
  %223 = inttoptr i64 %222 to i64*, !mcsema_real_eip !52
  store i64 %221, i64* %223, align 8, !mcsema_real_eip !52
  %224 = load i32* %218, align 4, !mcsema_real_eip !53
  %225 = add i64 %3, -240, !mcsema_real_eip !54
  %226 = inttoptr i64 %225 to i32*
  store i32 %224, i32* %226, align 4, !mcsema_real_eip !54
  %227 = load i64* %223, align 8, !mcsema_real_eip !55
  %228 = add i64 %3, -248, !mcsema_real_eip !56
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !56
  store i64 %227, i64* %229, align 8, !mcsema_real_eip !56
  %230 = load i32* %226, align 4, !mcsema_real_eip !57
  %231 = zext i32 %230 to i64, !mcsema_real_eip !57
  %232 = load i64* %112, align 8, !mcsema_real_eip !58
  store i64 %227, i64* %RAX.i, align 8, !mcsema_real_eip !59
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !59
  store i64 %199, i64* %RCX.i, align 8, !mcsema_real_eip !59
  store i64 %231, i64* %RDX.i, align 8, !mcsema_real_eip !59
  store i64 %121, i64* %RSI.i, align 8, !mcsema_real_eip !59
  store i64 %117, i64* %RDI.i, align 8, !mcsema_real_eip !59
  store i64 %67, i64* %RSP.i, align 8, !mcsema_real_eip !59
  store i64 %232, i64* %RBP.i, align 8, !mcsema_real_eip !59
  store i64 %5, i64* %R8.i, align 8, !mcsema_real_eip !59
  store i64 %6, i64* %R9.i, align 8, !mcsema_real_eip !59
  store i64 %7, i64* %R10.i, align 8, !mcsema_real_eip !59
  store i64 %8, i64* %R11.i, align 8, !mcsema_real_eip !59
  store i64 %9, i64* %R12.i, align 8, !mcsema_real_eip !59
  store i64 %10, i64* %R13.i, align 8, !mcsema_real_eip !59
  store i64 %11, i64* %R14.i, align 8, !mcsema_real_eip !59
  store i64 %12, i64* %R15.i, align 8, !mcsema_real_eip !59
  store i64 %13, i64* %RIP.i, align 8, !mcsema_real_eip !59
  store i1 %211, i1* %CF.i, align 1, !mcsema_real_eip !59
  store i1 %208, i1* %PF.i, align 1, !mcsema_real_eip !59
  store i1 %204, i1* %AF.i, align 1, !mcsema_real_eip !59
  store i1 %209, i1* %ZF.i, align 1, !mcsema_real_eip !59
  store i1 %210, i1* %SF.i, align 1, !mcsema_real_eip !59
  store i1 %214, i1* %OF.i, align 1, !mcsema_real_eip !59
  store i1 %14, i1* %DF.i, align 1, !mcsema_real_eip !59
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %110, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !59
  store i1 %17, i1* %FPU_B.i, align 1, !mcsema_real_eip !59
  store i1 %18, i1* %FPU_C3.i, align 1, !mcsema_real_eip !59
  store i3 %19, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !59
  store i1 %20, i1* %FPU_C2.i, align 1, !mcsema_real_eip !59
  store i1 %21, i1* %FPU_C1.i, align 1, !mcsema_real_eip !59
  store i1 %22, i1* %FPU_C0.i, align 1, !mcsema_real_eip !59
  store i1 %23, i1* %FPU_ES.i, align 1, !mcsema_real_eip !59
  store i1 %24, i1* %FPU_SF.i, align 1, !mcsema_real_eip !59
  store i1 %25, i1* %FPU_PE.i, align 1, !mcsema_real_eip !59
  store i1 %26, i1* %FPU_UE.i, align 1, !mcsema_real_eip !59
  store i1 %27, i1* %FPU_OE.i, align 1, !mcsema_real_eip !59
  store i1 %28, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !59
  store i1 %29, i1* %FPU_DE.i, align 1, !mcsema_real_eip !59
  store i1 %30, i1* %FPU_IE.i, align 1, !mcsema_real_eip !59
  store i1 %31, i1* %FPU_X.i, align 1, !mcsema_real_eip !59
  store i2 %32, i2* %FPU_RC.i, align 1, !mcsema_real_eip !59
  store i2 %33, i2* %FPU_PC.i, align 1, !mcsema_real_eip !59
  store i1 %34, i1* %FPU_PM.i, align 1, !mcsema_real_eip !59
  store i1 %35, i1* %FPU_UM.i, align 1, !mcsema_real_eip !59
  store i1 %36, i1* %FPU_OM.i, align 1, !mcsema_real_eip !59
  store i1 %37, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !59
  store i1 %38, i1* %FPU_DM.i, align 1, !mcsema_real_eip !59
  store i1 %39, i1* %FPU_IM.i, align 1, !mcsema_real_eip !59
  store i64 %42, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !59
  store i64 %44, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !59
  store i16 %45, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !59
  store i64 %46, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !59
  store i128 %47, i128* %XMM0.i, align 1, !mcsema_real_eip !59
  store i128 %48, i128* %XMM1.i, align 1, !mcsema_real_eip !59
  store i128 %49, i128* %XMM2.i, align 1, !mcsema_real_eip !59
  store i128 %50, i128* %XMM3.i, align 1, !mcsema_real_eip !59
  store i128 %51, i128* %XMM4.i, align 1, !mcsema_real_eip !59
  store i128 %52, i128* %XMM5.i, align 1, !mcsema_real_eip !59
  store i128 %53, i128* %XMM6.i, align 1, !mcsema_real_eip !59
  store i128 %54, i128* %XMM7.i, align 1, !mcsema_real_eip !59
  store i128 %55, i128* %XMM8.i, align 1, !mcsema_real_eip !59
  store i128 %56, i128* %XMM9.i, align 1, !mcsema_real_eip !59
  store i128 %57, i128* %XMM10.i, align 1, !mcsema_real_eip !59
  store i128 %58, i128* %XMM11.i, align 1, !mcsema_real_eip !59
  store i128 %59, i128* %XMM12.i, align 1, !mcsema_real_eip !59
  store i128 %60, i128* %XMM13.i, align 1, !mcsema_real_eip !59
  store i128 %61, i128* %XMM14.i, align 1, !mcsema_real_eip !59
  store i128 %62, i128* %XMM15.i, align 1, !mcsema_real_eip !59
  store i64 %63, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !59
  store i64 %64, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !59
  call void @llvm.lifetime.end(i64 128, i8* %110)
  br label %sub_0.exit

block_0xd5.i.i:                                   ; preds = %block_0xaa.i.i, %block_0xc0.i.i
  %233 = load i32* %123, align 4, !mcsema_real_eip !60
  %234 = add i32 %233, -1
  store i32 %234, i32* %123, align 4, !mcsema_real_eip !61
  %235 = add i64 %3, -164, !mcsema_real_eip !62
  %236 = inttoptr i64 %235 to i32*
  %237 = load i32* %236, align 4, !mcsema_real_eip !62
  %238 = add i32 %237, 60
  store i32 %238, i32* %236, align 4, !mcsema_real_eip !63
  %239 = add i64 %3, -196, !mcsema_real_eip !43
  %240 = inttoptr i64 %239 to i32*
  %241 = load i32* %240, align 4, !mcsema_real_eip !43
  %242 = sub i32 %238, %241, !mcsema_real_eip !44
  %243 = add i64 %3, -228, !mcsema_real_eip !45
  %244 = inttoptr i64 %243 to i32*
  store i32 %242, i32* %244, align 4, !mcsema_real_eip !45
  %245 = load i32* %123, align 4, !mcsema_real_eip !46
  %246 = load i32* %133, align 4, !mcsema_real_eip !47
  %247 = zext i32 %246 to i64, !mcsema_real_eip !47
  %248 = sub i32 %245, %246, !mcsema_real_eip !48
  %249 = xor i32 %248, %245, !mcsema_real_eip !48
  %250 = xor i32 %249, %246, !mcsema_real_eip !48
  %251 = and i32 %250, 16, !mcsema_real_eip !48
  %252 = icmp ne i32 %251, 0, !mcsema_real_eip !48
  %253 = trunc i32 %248 to i8, !mcsema_real_eip !48
  %254 = tail call i8 @llvm.ctpop.i8(i8 %253) #0, !mcsema_real_eip !48
  %255 = and i8 %254, 1
  %256 = icmp eq i8 %255, 0
  %257 = icmp eq i32 %245, %246
  %258 = icmp slt i32 %248, 0
  %259 = icmp ult i32 %245, %246, !mcsema_real_eip !48
  %260 = xor i32 %246, %245, !mcsema_real_eip !48
  %261 = and i32 %249, %260, !mcsema_real_eip !48
  %262 = icmp slt i32 %261, 0
  %263 = add i64 %3, -224, !mcsema_real_eip !49
  %264 = inttoptr i64 %263 to i32*
  store i32 %248, i32* %264, align 4, !mcsema_real_eip !49
  %265 = add i64 %3, -144, !mcsema_real_eip !50
  %266 = inttoptr i64 %265 to i32*
  store i32 %248, i32* %266, align 4, !mcsema_real_eip !50
  %267 = add i64 %3, -232, !mcsema_real_eip !51
  %268 = inttoptr i64 %267 to i64*, !mcsema_real_eip !51
  %269 = load i64* %268, align 8, !mcsema_real_eip !51
  %270 = add i64 %3, -152, !mcsema_real_eip !52
  %271 = inttoptr i64 %270 to i64*, !mcsema_real_eip !52
  store i64 %269, i64* %271, align 8, !mcsema_real_eip !52
  %272 = load i32* %266, align 4, !mcsema_real_eip !53
  %273 = add i64 %3, -240, !mcsema_real_eip !54
  %274 = inttoptr i64 %273 to i32*
  store i32 %272, i32* %274, align 4, !mcsema_real_eip !54
  %275 = load i64* %271, align 8, !mcsema_real_eip !55
  %276 = add i64 %3, -248, !mcsema_real_eip !56
  %277 = inttoptr i64 %276 to i64*, !mcsema_real_eip !56
  store i64 %275, i64* %277, align 8, !mcsema_real_eip !56
  %278 = load i32* %274, align 4, !mcsema_real_eip !57
  %279 = zext i32 %278 to i64, !mcsema_real_eip !57
  %280 = load i64* %112, align 8, !mcsema_real_eip !58
  store i64 %275, i64* %RAX.i, align 8, !mcsema_real_eip !59
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !59
  store i64 %247, i64* %RCX.i, align 8, !mcsema_real_eip !59
  store i64 %279, i64* %RDX.i, align 8, !mcsema_real_eip !59
  store i64 %121, i64* %RSI.i, align 8, !mcsema_real_eip !59
  store i64 %117, i64* %RDI.i, align 8, !mcsema_real_eip !59
  store i64 %67, i64* %RSP.i, align 8, !mcsema_real_eip !59
  store i64 %280, i64* %RBP.i, align 8, !mcsema_real_eip !59
  store i64 %5, i64* %R8.i, align 8, !mcsema_real_eip !59
  store i64 %6, i64* %R9.i, align 8, !mcsema_real_eip !59
  store i64 %7, i64* %R10.i, align 8, !mcsema_real_eip !59
  store i64 %8, i64* %R11.i, align 8, !mcsema_real_eip !59
  store i64 %9, i64* %R12.i, align 8, !mcsema_real_eip !59
  store i64 %10, i64* %R13.i, align 8, !mcsema_real_eip !59
  store i64 %11, i64* %R14.i, align 8, !mcsema_real_eip !59
  store i64 %12, i64* %R15.i, align 8, !mcsema_real_eip !59
  store i64 %13, i64* %RIP.i, align 8, !mcsema_real_eip !59
  store i1 %259, i1* %CF.i, align 1, !mcsema_real_eip !59
  store i1 %256, i1* %PF.i, align 1, !mcsema_real_eip !59
  store i1 %252, i1* %AF.i, align 1, !mcsema_real_eip !59
  store i1 %257, i1* %ZF.i, align 1, !mcsema_real_eip !59
  store i1 %258, i1* %SF.i, align 1, !mcsema_real_eip !59
  store i1 %262, i1* %OF.i, align 1, !mcsema_real_eip !59
  store i1 %14, i1* %DF.i, align 1, !mcsema_real_eip !59
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %110, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !59
  store i1 %17, i1* %FPU_B.i, align 1, !mcsema_real_eip !59
  store i1 %18, i1* %FPU_C3.i, align 1, !mcsema_real_eip !59
  store i3 %19, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !59
  store i1 %20, i1* %FPU_C2.i, align 1, !mcsema_real_eip !59
  store i1 %21, i1* %FPU_C1.i, align 1, !mcsema_real_eip !59
  store i1 %22, i1* %FPU_C0.i, align 1, !mcsema_real_eip !59
  store i1 %23, i1* %FPU_ES.i, align 1, !mcsema_real_eip !59
  store i1 %24, i1* %FPU_SF.i, align 1, !mcsema_real_eip !59
  store i1 %25, i1* %FPU_PE.i, align 1, !mcsema_real_eip !59
  store i1 %26, i1* %FPU_UE.i, align 1, !mcsema_real_eip !59
  store i1 %27, i1* %FPU_OE.i, align 1, !mcsema_real_eip !59
  store i1 %28, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !59
  store i1 %29, i1* %FPU_DE.i, align 1, !mcsema_real_eip !59
  store i1 %30, i1* %FPU_IE.i, align 1, !mcsema_real_eip !59
  store i1 %31, i1* %FPU_X.i, align 1, !mcsema_real_eip !59
  store i2 %32, i2* %FPU_RC.i, align 1, !mcsema_real_eip !59
  store i2 %33, i2* %FPU_PC.i, align 1, !mcsema_real_eip !59
  store i1 %34, i1* %FPU_PM.i, align 1, !mcsema_real_eip !59
  store i1 %35, i1* %FPU_UM.i, align 1, !mcsema_real_eip !59
  store i1 %36, i1* %FPU_OM.i, align 1, !mcsema_real_eip !59
  store i1 %37, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !59
  store i1 %38, i1* %FPU_DM.i, align 1, !mcsema_real_eip !59
  store i1 %39, i1* %FPU_IM.i, align 1, !mcsema_real_eip !59
  store i64 %42, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !59
  store i64 %44, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !59
  store i16 %45, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !59
  store i64 %46, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !59
  store i128 %47, i128* %XMM0.i, align 1, !mcsema_real_eip !59
  store i128 %48, i128* %XMM1.i, align 1, !mcsema_real_eip !59
  store i128 %49, i128* %XMM2.i, align 1, !mcsema_real_eip !59
  store i128 %50, i128* %XMM3.i, align 1, !mcsema_real_eip !59
  store i128 %51, i128* %XMM4.i, align 1, !mcsema_real_eip !59
  store i128 %52, i128* %XMM5.i, align 1, !mcsema_real_eip !59
  store i128 %53, i128* %XMM6.i, align 1, !mcsema_real_eip !59
  store i128 %54, i128* %XMM7.i, align 1, !mcsema_real_eip !59
  store i128 %55, i128* %XMM8.i, align 1, !mcsema_real_eip !59
  store i128 %56, i128* %XMM9.i, align 1, !mcsema_real_eip !59
  store i128 %57, i128* %XMM10.i, align 1, !mcsema_real_eip !59
  store i128 %58, i128* %XMM11.i, align 1, !mcsema_real_eip !59
  store i128 %59, i128* %XMM12.i, align 1, !mcsema_real_eip !59
  store i128 %60, i128* %XMM13.i, align 1, !mcsema_real_eip !59
  store i128 %61, i128* %XMM14.i, align 1, !mcsema_real_eip !59
  store i128 %62, i128* %XMM15.i, align 1, !mcsema_real_eip !59
  store i64 %63, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !59
  store i64 %64, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !59
  call void @llvm.lifetime.end(i64 128, i8* %110)
  br label %sub_0.exit

sub_0.exit:                                       ; preds = %block_0xd5.i.i, %block_0xeb.i.i
  %281 = phi i64 [ %280, %block_0xd5.i.i ], [ %232, %block_0xeb.i.i ]
  %282 = phi i64 [ %279, %block_0xd5.i.i ], [ %231, %block_0xeb.i.i ]
  %283 = phi i64 [ %275, %block_0xd5.i.i ], [ %227, %block_0xeb.i.i ]
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %16, i32 128, i32 4, i1 false) #0, !mcsema_real_eip !17
  %284 = add i64 %281, -88, !mcsema_real_eip !64
  %285 = trunc i64 %282 to i32, !mcsema_real_eip !64
  %286 = inttoptr i64 %284 to i32*
  store i32 %285, i32* %286, align 4, !mcsema_real_eip !64
  %287 = add i64 %281, -96, !mcsema_real_eip !65
  %288 = inttoptr i64 %287 to i64*, !mcsema_real_eip !65
  store i64 %283, i64* %288, align 8, !mcsema_real_eip !65
  %289 = add i64 %281, -80, !mcsema_real_eip !66
  %290 = inttoptr i64 %289 to i64*, !mcsema_real_eip !66
  store i64 %283, i64* %290, align 8, !mcsema_real_eip !66
  %291 = load i32* %286, align 4, !mcsema_real_eip !67
  %292 = zext i32 %291 to i64, !mcsema_real_eip !67
  %293 = add i64 %281, -72, !mcsema_real_eip !68
  %294 = inttoptr i64 %293 to i32*
  store i32 %291, i32* %294, align 4, !mcsema_real_eip !68
  %295 = add i64 %281, -100, !mcsema_real_eip !69
  %296 = inttoptr i64 %295 to i32*
  %297 = load i32* %296, align 4, !mcsema_real_eip !69
  %298 = zext i32 %297 to i64, !mcsema_real_eip !69
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %67, i64 112) #0
  %299 = extractvalue { i64, i1 } %uadd.i, 0
  %300 = xor i64 %299, %67, !mcsema_real_eip !70
  %301 = and i64 %300, 16
  %302 = icmp eq i64 %301, 0
  %303 = icmp slt i64 %299, 0
  %304 = icmp eq i64 %299, 0, !mcsema_real_eip !70
  %305 = add i64 %3, 9223372036854775688
  %306 = and i64 %300, %305, !mcsema_real_eip !70
  %307 = icmp slt i64 %306, 0
  %308 = trunc i64 %299 to i8, !mcsema_real_eip !70
  %309 = tail call i8 @llvm.ctpop.i8(i8 %308) #0, !mcsema_real_eip !70
  %310 = and i8 %309, 1
  %311 = icmp eq i8 %310, 0
  %312 = extractvalue { i64, i1 } %uadd.i, 1
  %313 = inttoptr i64 %299 to i64*, !mcsema_real_eip !71
  %314 = load i64* %313, align 8, !mcsema_real_eip !71
  %315 = add i64 %299, 16, !mcsema_real_eip !72
  store i64 %298, i64* %RAX.i, align 8, !mcsema_real_eip !72
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !72
  store i64 %292, i64* %RCX.i, align 8, !mcsema_real_eip !72
  store i64 %282, i64* %RDX.i, align 8, !mcsema_real_eip !72
  store i64 %121, i64* %RSI.i, align 8, !mcsema_real_eip !72
  store i64 %117, i64* %RDI.i, align 8, !mcsema_real_eip !72
  store i64 %315, i64* %RSP.i, align 8, !mcsema_real_eip !72
  store i64 %314, i64* %RBP.i, align 8, !mcsema_real_eip !72
  store i64 %5, i64* %R8.i, align 8, !mcsema_real_eip !72
  store i64 %6, i64* %R9.i, align 8, !mcsema_real_eip !72
  store i64 %7, i64* %R10.i, align 8, !mcsema_real_eip !72
  store i64 %8, i64* %R11.i, align 8, !mcsema_real_eip !72
  store i64 %9, i64* %R12.i, align 8, !mcsema_real_eip !72
  store i64 %10, i64* %R13.i, align 8, !mcsema_real_eip !72
  store i64 %11, i64* %R14.i, align 8, !mcsema_real_eip !72
  store i64 %12, i64* %R15.i, align 8, !mcsema_real_eip !72
  store i64 %13, i64* %RIP.i, align 8, !mcsema_real_eip !72
  store i1 %312, i1* %CF.i, align 1, !mcsema_real_eip !72
  store i1 %311, i1* %PF.i, align 1, !mcsema_real_eip !72
  store i1 %302, i1* %AF.i, align 1, !mcsema_real_eip !72
  store i1 %304, i1* %ZF.i, align 1, !mcsema_real_eip !72
  store i1 %303, i1* %SF.i, align 1, !mcsema_real_eip !72
  store i1 %307, i1* %OF.i, align 1, !mcsema_real_eip !72
  store i1 %14, i1* %DF.i, align 1, !mcsema_real_eip !72
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %1, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !72
  store i1 %17, i1* %FPU_B.i, align 1, !mcsema_real_eip !72
  store i1 %18, i1* %FPU_C3.i, align 1, !mcsema_real_eip !72
  store i3 %19, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !72
  store i1 %20, i1* %FPU_C2.i, align 1, !mcsema_real_eip !72
  store i1 %21, i1* %FPU_C1.i, align 1, !mcsema_real_eip !72
  store i1 %22, i1* %FPU_C0.i, align 1, !mcsema_real_eip !72
  store i1 %23, i1* %FPU_ES.i, align 1, !mcsema_real_eip !72
  store i1 %24, i1* %FPU_SF.i, align 1, !mcsema_real_eip !72
  store i1 %25, i1* %FPU_PE.i, align 1, !mcsema_real_eip !72
  store i1 %26, i1* %FPU_UE.i, align 1, !mcsema_real_eip !72
  store i1 %27, i1* %FPU_OE.i, align 1, !mcsema_real_eip !72
  store i1 %28, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !72
  store i1 %29, i1* %FPU_DE.i, align 1, !mcsema_real_eip !72
  store i1 %30, i1* %FPU_IE.i, align 1, !mcsema_real_eip !72
  store i1 %31, i1* %FPU_X.i, align 1, !mcsema_real_eip !72
  store i2 %32, i2* %FPU_RC.i, align 1, !mcsema_real_eip !72
  store i2 %33, i2* %FPU_PC.i, align 1, !mcsema_real_eip !72
  store i1 %34, i1* %FPU_PM.i, align 1, !mcsema_real_eip !72
  store i1 %35, i1* %FPU_UM.i, align 1, !mcsema_real_eip !72
  store i1 %36, i1* %FPU_OM.i, align 1, !mcsema_real_eip !72
  store i1 %37, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !72
  store i1 %38, i1* %FPU_DM.i, align 1, !mcsema_real_eip !72
  store i1 %39, i1* %FPU_IM.i, align 1, !mcsema_real_eip !72
  store i64 %42, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !72
  store i64 %44, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !72
  store i16 %45, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !72
  store i64 %46, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !72
  store i128 %47, i128* %XMM0.i, align 1, !mcsema_real_eip !72
  store i128 %48, i128* %XMM1.i, align 1, !mcsema_real_eip !72
  store i128 %49, i128* %XMM2.i, align 1, !mcsema_real_eip !72
  store i128 %50, i128* %XMM3.i, align 1, !mcsema_real_eip !72
  store i128 %51, i128* %XMM4.i, align 1, !mcsema_real_eip !72
  store i128 %52, i128* %XMM5.i, align 1, !mcsema_real_eip !72
  store i128 %53, i128* %XMM6.i, align 1, !mcsema_real_eip !72
  store i128 %54, i128* %XMM7.i, align 1, !mcsema_real_eip !72
  store i128 %55, i128* %XMM8.i, align 1, !mcsema_real_eip !72
  store i128 %56, i128* %XMM9.i, align 1, !mcsema_real_eip !72
  store i128 %57, i128* %XMM10.i, align 1, !mcsema_real_eip !72
  store i128 %58, i128* %XMM11.i, align 1, !mcsema_real_eip !72
  store i128 %59, i128* %XMM12.i, align 1, !mcsema_real_eip !72
  store i128 %60, i128* %XMM13.i, align 1, !mcsema_real_eip !72
  store i128 %61, i128* %XMM14.i, align 1, !mcsema_real_eip !72
  store i128 %62, i128* %XMM15.i, align 1, !mcsema_real_eip !72
  store i64 %63, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !72
  store i64 %64, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !72
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
!2 = metadata !{i64 112, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!4 = metadata !{i64 4, [17 x i8] c"\09subq\09$112, %rsp\00"}
!5 = metadata !{i64 13, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!6 = metadata !{i64 20, [21 x i8] c"\09movl\09-8(%rbp), %ecx\00"}
!7 = metadata !{i64 23, [22 x i8] c"\09movl\09%ecx, -40(%rbp)\00"}
!8 = metadata !{i64 26, [22 x i8] c"\09movq\09-16(%rbp), %rdx\00"}
!9 = metadata !{i64 30, [22 x i8] c"\09movq\09%rdx, -48(%rbp)\00"}
!10 = metadata !{i64 38, [22 x i8] c"\09movl\09-40(%rbp), %esi\00"}
!11 = metadata !{i64 41, [22 x i8] c"\09movl\09-24(%rbp), %ecx\00"} ; [ DW_TAG_file_type ] [/]
!12 = metadata !{i64 44, [22 x i8] c"\09movl\09%ecx, -56(%rbp)\00"}
!13 = metadata !{i64 47, [22 x i8] c"\09movq\09-32(%rbp), %rdx\00"}
!14 = metadata !{i64 51, [22 x i8] c"\09movq\09%rdx, -64(%rbp)\00"}
!15 = metadata !{i64 59, [22 x i8] c"\09movl\09-56(%rbp), %ecx\00"}
!16 = metadata !{i64 62, [23 x i8] c"\09movl\09%eax, -100(%rbp)\00"}
!17 = metadata !{i64 65, [10 x i8] c"\09callq\0942\00"}
!18 = metadata !{i64 116, [22 x i8] c"\09movq\09%rdi, -48(%rbp)\00"}
!19 = metadata !{i64 120, [22 x i8] c"\09movl\09%esi, -40(%rbp)\00"}
!20 = metadata !{i64 123, [22 x i8] c"\09movq\09-48(%rbp), %rdi\00"}
!21 = metadata !{i64 127, [22 x i8] c"\09movq\09%rdi, -32(%rbp)\00"}
!22 = metadata !{i64 131, [22 x i8] c"\09movl\09-40(%rbp), %esi\00"}
!23 = metadata !{i64 134, [22 x i8] c"\09movl\09%esi, -24(%rbp)\00"}
!24 = metadata !{i64 137, [22 x i8] c"\09movq\09%rdx, -80(%rbp)\00"}
!25 = metadata !{i64 141, [22 x i8] c"\09movl\09%ecx, -72(%rbp)\00"}
!26 = metadata !{i64 144, [22 x i8] c"\09movq\09-80(%rbp), %rdx\00"}
!27 = metadata !{i64 148, [22 x i8] c"\09movq\09%rdx, -64(%rbp)\00"}
!28 = metadata !{i64 152, [22 x i8] c"\09movl\09-72(%rbp), %ecx\00"}
!29 = metadata !{i64 155, [22 x i8] c"\09movl\09%ecx, -56(%rbp)\00"}
!30 = metadata !{i64 158, [22 x i8] c"\09movl\09-64(%rbp), %ecx\00"}
!31 = metadata !{i64 161, [22 x i8] c"\09cmpl\09-32(%rbp), %ecx\00"}
!32 = metadata !{i64 164, [8 x i8] c"\09jle\0922\00"}
!33 = metadata !{i64 195, [22 x i8] c"\09subl\09-64(%rbp), %eax\00"}
!34 = metadata !{i64 198, [22 x i8] c"\09movl\09%eax, -96(%rbp)\00"}
!35 = metadata !{i64 201, [22 x i8] c"\09movl\09-60(%rbp), %eax\00"}
!36 = metadata !{i64 204, [22 x i8] c"\09cmpl\09-28(%rbp), %eax\00"}
!37 = metadata !{i64 207, [8 x i8] c"\09jle\0922\00"}
!38 = metadata !{i64 170, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!39 = metadata !{i64 178, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
!40 = metadata !{i64 181, [22 x i8] c"\09movl\09-32(%rbp), %eax\00"}
!41 = metadata !{i64 189, [22 x i8] c"\09movl\09%eax, -32(%rbp)\00"}
!42 = metadata !{i64 235, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!43 = metadata !{i64 238, [22 x i8] c"\09movl\09-60(%rbp), %ecx\00"}
!44 = metadata !{i64 241, [17 x i8] c"\09subl\09%ecx, %eax\00"}
!45 = metadata !{i64 243, [22 x i8] c"\09movl\09%eax, -92(%rbp)\00"}
!46 = metadata !{i64 246, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!47 = metadata !{i64 249, [22 x i8] c"\09movl\09-56(%rbp), %ecx\00"}
!48 = metadata !{i64 252, [17 x i8] c"\09subl\09%ecx, %eax\00"}
!49 = metadata !{i64 254, [22 x i8] c"\09movl\09%eax, -88(%rbp)\00"}
!50 = metadata !{i64 257, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!51 = metadata !{i64 260, [22 x i8] c"\09movq\09-96(%rbp), %rdx\00"}
!52 = metadata !{i64 264, [22 x i8] c"\09movq\09%rdx, -16(%rbp)\00"}
!53 = metadata !{i64 268, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!54 = metadata !{i64 271, [23 x i8] c"\09movl\09%eax, -104(%rbp)\00"}
!55 = metadata !{i64 274, [22 x i8] c"\09movq\09-16(%rbp), %rdx\00"}
!56 = metadata !{i64 278, [23 x i8] c"\09movq\09%rdx, -112(%rbp)\00"}
!57 = metadata !{i64 286, [23 x i8] c"\09movl\09-104(%rbp), %edx\00"}
!58 = metadata !{i64 289, [11 x i8] c"\09popq\09%rbp\00"}
!59 = metadata !{i64 290, [6 x i8] c"\09retq\00"}
!60 = metadata !{i64 213, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!61 = metadata !{i64 221, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!62 = metadata !{i64 224, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!63 = metadata !{i64 232, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
!64 = metadata !{i64 70, [22 x i8] c"\09movl\09%edx, -88(%rbp)\00"}
!65 = metadata !{i64 73, [22 x i8] c"\09movq\09%rax, -96(%rbp)\00"}
!66 = metadata !{i64 81, [22 x i8] c"\09movq\09%rax, -80(%rbp)\00"}
!67 = metadata !{i64 85, [22 x i8] c"\09movl\09-88(%rbp), %ecx\00"}
!68 = metadata !{i64 88, [22 x i8] c"\09movl\09%ecx, -72(%rbp)\00"}
!69 = metadata !{i64 91, [23 x i8] c"\09movl\09-100(%rbp), %eax\00"}
!70 = metadata !{i64 94, [17 x i8] c"\09addq\09$112, %rsp\00"}
!71 = metadata !{i64 98, [11 x i8] c"\09popq\09%rbp\00"}
!72 = metadata !{i64 99, [6 x i8] c"\09retq\00"}
