; ModuleID = 'Output/test_6.clang.trans.opt.bc'
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
  %4 = load i64* %R8.i, align 8, !mcsema_real_eip !3
  %R9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !3
  %5 = load i64* %R9.i, align 8, !mcsema_real_eip !3
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
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast, i8* %15, i32 128, i32 4, i1 false) #0, !mcsema_real_eip !3
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
  %64 = add i64 %2, -8
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !3
  store i64 %3, i64* %65, align 8, !mcsema_real_eip !3
  %66 = add i64 %2, -104
  %67 = xor i64 %66, %64, !mcsema_real_eip !4
  %68 = and i64 %67, 16, !mcsema_real_eip !4
  %69 = icmp ne i64 %68, 0, !mcsema_real_eip !4
  %70 = trunc i64 %66 to i8, !mcsema_real_eip !4
  %71 = tail call i8 @llvm.ctpop.i8(i8 %70) #0, !mcsema_real_eip !4
  %72 = and i8 %71, 1
  %73 = icmp eq i8 %72, 0
  %74 = icmp eq i64 %66, 0, !mcsema_real_eip !4
  %75 = icmp slt i64 %66, 0
  %76 = icmp ult i64 %64, 96, !mcsema_real_eip !4
  %77 = and i64 %67, %64, !mcsema_real_eip !4
  %78 = icmp slt i64 %77, 0
  %79 = add i64 %2, -12, !mcsema_real_eip !5
  %80 = inttoptr i64 %79 to i32*
  store i32 0, i32* %80, align 4, !mcsema_real_eip !5
  %81 = add i64 %2, -16, !mcsema_real_eip !6
  %82 = inttoptr i64 %81 to i32*
  %83 = load i32* %82, align 4, !mcsema_real_eip !6
  %84 = add i64 %2, -64, !mcsema_real_eip !7
  %85 = inttoptr i64 %84 to i32*
  store i32 %83, i32* %85, align 4, !mcsema_real_eip !7
  %86 = add i64 %2, -24, !mcsema_real_eip !8
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !8
  %88 = load i64* %87, align 8, !mcsema_real_eip !8
  %89 = add i64 %2, -72, !mcsema_real_eip !9
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !9
  store i64 %88, i64* %90, align 8, !mcsema_real_eip !9
  %91 = load i32* %85, align 4, !mcsema_real_eip !10
  %92 = zext i32 %91 to i64, !mcsema_real_eip !10
  %93 = add i64 %2, -32, !mcsema_real_eip !11
  %94 = inttoptr i64 %93 to i32*
  %95 = load i32* %94, align 4, !mcsema_real_eip !11
  %96 = zext i32 %95 to i64, !mcsema_real_eip !11
  %97 = add i64 %2, -80, !mcsema_real_eip !12
  %98 = inttoptr i64 %97 to i32*
  store i32 %95, i32* %98, align 4, !mcsema_real_eip !12
  %99 = add i64 %2, -40, !mcsema_real_eip !13
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !13
  %101 = load i64* %100, align 8, !mcsema_real_eip !13
  %102 = add i64 %2, -88, !mcsema_real_eip !14
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !14
  store i64 %101, i64* %103, align 8, !mcsema_real_eip !14
  %104 = load i32* %98, align 4, !mcsema_real_eip !15
  %105 = zext i32 %104 to i64, !mcsema_real_eip !15
  %106 = add i64 %2, -112
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !16
  store i64 -4981261766360305936, i64* %107, align 8, !mcsema_real_eip !16
  store i64 %96, i64* %RAX.i, align 8, !mcsema_real_eip !16
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !16
  store i64 %105, i64* %RCX.i, align 8, !mcsema_real_eip !16
  store i64 %101, i64* %RDX.i, align 8, !mcsema_real_eip !16
  store i64 %92, i64* %RSI.i, align 8, !mcsema_real_eip !16
  store i64 %88, i64* %RDI.i, align 8, !mcsema_real_eip !16
  store i64 %106, i64* %RSP.i, align 8, !mcsema_real_eip !16
  store i64 %64, i64* %RBP.i, align 8, !mcsema_real_eip !16
  store i64 %4, i64* %R8.i, align 8, !mcsema_real_eip !16
  store i64 %5, i64* %R9.i, align 8, !mcsema_real_eip !16
  store i64 %6, i64* %R10.i, align 8, !mcsema_real_eip !16
  store i64 %7, i64* %R11.i, align 8, !mcsema_real_eip !16
  store i64 %8, i64* %R12.i, align 8, !mcsema_real_eip !16
  store i64 %9, i64* %R13.i, align 8, !mcsema_real_eip !16
  store i64 %10, i64* %R14.i, align 8, !mcsema_real_eip !16
  store i64 %11, i64* %R15.i, align 8, !mcsema_real_eip !16
  store i64 %12, i64* %RIP.i, align 8, !mcsema_real_eip !16
  store i1 %76, i1* %CF.i, align 1, !mcsema_real_eip !16
  store i1 %73, i1* %PF.i, align 1, !mcsema_real_eip !16
  store i1 %69, i1* %AF.i, align 1, !mcsema_real_eip !16
  store i1 %74, i1* %ZF.i, align 1, !mcsema_real_eip !16
  store i1 %75, i1* %SF.i, align 1, !mcsema_real_eip !16
  store i1 %78, i1* %OF.i, align 1, !mcsema_real_eip !16
  store i1 %13, i1* %DF.i, align 1, !mcsema_real_eip !16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !16
  store i1 %16, i1* %FPU_B.i, align 1, !mcsema_real_eip !16
  store i1 %17, i1* %FPU_C3.i, align 1, !mcsema_real_eip !16
  store i3 %18, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !16
  store i1 %19, i1* %FPU_C2.i, align 1, !mcsema_real_eip !16
  store i1 %20, i1* %FPU_C1.i, align 1, !mcsema_real_eip !16
  store i1 %21, i1* %FPU_C0.i, align 1, !mcsema_real_eip !16
  store i1 %22, i1* %FPU_ES.i, align 1, !mcsema_real_eip !16
  store i1 %23, i1* %FPU_SF.i, align 1, !mcsema_real_eip !16
  store i1 %24, i1* %FPU_PE.i, align 1, !mcsema_real_eip !16
  store i1 %25, i1* %FPU_UE.i, align 1, !mcsema_real_eip !16
  store i1 %26, i1* %FPU_OE.i, align 1, !mcsema_real_eip !16
  store i1 %27, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !16
  store i1 %28, i1* %FPU_DE.i, align 1, !mcsema_real_eip !16
  store i1 %29, i1* %FPU_IE.i, align 1, !mcsema_real_eip !16
  store i1 %30, i1* %FPU_X.i, align 1, !mcsema_real_eip !16
  store i2 %31, i2* %FPU_RC.i, align 1, !mcsema_real_eip !16
  store i2 %32, i2* %FPU_PC.i, align 1, !mcsema_real_eip !16
  store i1 %33, i1* %FPU_PM.i, align 1, !mcsema_real_eip !16
  store i1 %34, i1* %FPU_UM.i, align 1, !mcsema_real_eip !16
  store i1 %35, i1* %FPU_OM.i, align 1, !mcsema_real_eip !16
  store i1 %36, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !16
  store i1 %37, i1* %FPU_DM.i, align 1, !mcsema_real_eip !16
  store i1 %38, i1* %FPU_IM.i, align 1, !mcsema_real_eip !16
  store i64 %41, i64* %40, align 4
  store i16 %42, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !16
  store i64 %43, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !16
  store i16 %44, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !16
  store i64 %45, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !16
  store i128 %46, i128* %XMM0.i, align 1, !mcsema_real_eip !16
  store i128 %47, i128* %XMM1.i, align 1, !mcsema_real_eip !16
  store i128 %48, i128* %XMM2.i, align 1, !mcsema_real_eip !16
  store i128 %49, i128* %XMM3.i, align 1, !mcsema_real_eip !16
  store i128 %50, i128* %XMM4.i, align 1, !mcsema_real_eip !16
  store i128 %51, i128* %XMM5.i, align 1, !mcsema_real_eip !16
  store i128 %52, i128* %XMM6.i, align 1, !mcsema_real_eip !16
  store i128 %53, i128* %XMM7.i, align 1, !mcsema_real_eip !16
  store i128 %54, i128* %XMM8.i, align 1, !mcsema_real_eip !16
  store i128 %55, i128* %XMM9.i, align 1, !mcsema_real_eip !16
  store i128 %56, i128* %XMM10.i, align 1, !mcsema_real_eip !16
  store i128 %57, i128* %XMM11.i, align 1, !mcsema_real_eip !16
  store i128 %58, i128* %XMM12.i, align 1, !mcsema_real_eip !16
  store i128 %59, i128* %XMM13.i, align 1, !mcsema_real_eip !16
  store i128 %60, i128* %XMM14.i, align 1, !mcsema_real_eip !16
  store i128 %61, i128* %XMM15.i, align 1, !mcsema_real_eip !16
  store i64 %62, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !16
  store i64 %63, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !16
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast.i, i8* %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false) #0
  %108 = add i64 %2, -120
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !2
  store i64 %64, i64* %109, align 8, !mcsema_real_eip !2
  %110 = add i64 %2, -168, !mcsema_real_eip !17
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !17
  store i64 %88, i64* %111, align 8, !mcsema_real_eip !17
  %112 = add i64 %2, -160, !mcsema_real_eip !18
  %113 = inttoptr i64 %112 to i32*
  store i32 %91, i32* %113, align 4, !mcsema_real_eip !18
  %114 = load i64* %111, align 8, !mcsema_real_eip !19
  %115 = add i64 %2, -152, !mcsema_real_eip !20
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !20
  store i64 %114, i64* %116, align 8, !mcsema_real_eip !20
  %117 = load i32* %113, align 4, !mcsema_real_eip !21
  %118 = zext i32 %117 to i64, !mcsema_real_eip !21
  %119 = add i64 %2, -144, !mcsema_real_eip !22
  %120 = inttoptr i64 %119 to i32*
  store i32 %117, i32* %120, align 4, !mcsema_real_eip !22
  %121 = add i64 %2, -200, !mcsema_real_eip !23
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !23
  store i64 %101, i64* %122, align 8, !mcsema_real_eip !23
  %123 = add i64 %2, -192, !mcsema_real_eip !24
  %124 = inttoptr i64 %123 to i32*
  store i32 %104, i32* %124, align 4, !mcsema_real_eip !24
  %125 = load i64* %122, align 8, !mcsema_real_eip !25
  %126 = add i64 %2, -184, !mcsema_real_eip !26
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !26
  store i64 %125, i64* %127, align 8, !mcsema_real_eip !26
  %128 = load i32* %124, align 4, !mcsema_real_eip !27
  %129 = add i64 %2, -176, !mcsema_real_eip !28
  %130 = inttoptr i64 %129 to i32*
  store i32 %128, i32* %130, align 4, !mcsema_real_eip !28
  %131 = inttoptr i64 %126 to i32*
  %132 = load i32* %131, align 4, !mcsema_real_eip !29
  %133 = inttoptr i64 %115 to i32*
  %134 = load i32* %133, align 4, !mcsema_real_eip !30
  %135 = sub i32 %132, %134, !mcsema_real_eip !30
  %136 = xor i32 %135, %132, !mcsema_real_eip !30
  %137 = icmp eq i32 %132, %134
  %138 = icmp slt i32 %135, 0
  %139 = xor i32 %134, %132, !mcsema_real_eip !30
  %140 = and i32 %136, %139, !mcsema_real_eip !30
  %141 = icmp slt i32 %140, 0
  %142 = xor i1 %138, %141
  %143 = or i1 %137, %142, !mcsema_real_eip !31
  br i1 %143, label %block_0xc0.i.i, label %block_0xaa.i.i, !mcsema_real_eip !31

block_0xc0.i.i:                                   ; preds = %driverBlockRaw
  %144 = sub i32 %134, %132, !mcsema_real_eip !32
  %145 = add i64 %2, -216, !mcsema_real_eip !33
  %146 = inttoptr i64 %145 to i32*
  store i32 %144, i32* %146, align 4, !mcsema_real_eip !33
  %147 = add i64 %2, -180, !mcsema_real_eip !34
  %148 = inttoptr i64 %147 to i32*
  %149 = load i32* %148, align 4, !mcsema_real_eip !34
  %150 = add i64 %2, -148, !mcsema_real_eip !35
  %151 = inttoptr i64 %150 to i32*
  %152 = load i32* %151, align 4, !mcsema_real_eip !35
  %153 = sub i32 %149, %152, !mcsema_real_eip !35
  %154 = xor i32 %153, %149, !mcsema_real_eip !35
  %155 = icmp eq i32 %149, %152
  %156 = icmp slt i32 %153, 0
  %157 = xor i32 %152, %149, !mcsema_real_eip !35
  %158 = and i32 %154, %157, !mcsema_real_eip !35
  %159 = icmp slt i32 %158, 0
  %160 = xor i1 %156, %159
  %161 = or i1 %155, %160, !mcsema_real_eip !36
  br i1 %161, label %block_0xeb.i.i, label %block_0xd5.i.i, !mcsema_real_eip !36

block_0xaa.i.i:                                   ; preds = %driverBlockRaw
  %162 = add i64 %2, -148, !mcsema_real_eip !37
  %163 = inttoptr i64 %162 to i32*
  %164 = load i32* %163, align 4, !mcsema_real_eip !37
  %165 = add i32 %164, -1
  store i32 %165, i32* %163, align 4, !mcsema_real_eip !38
  %166 = load i32* %133, align 4, !mcsema_real_eip !39
  %167 = add i32 %166, 60
  store i32 %167, i32* %133, align 4, !mcsema_real_eip !40
  %168 = load i32* %131, align 4, !mcsema_real_eip !32
  %169 = sub i32 %167, %168, !mcsema_real_eip !32
  %170 = add i64 %2, -216, !mcsema_real_eip !33
  %171 = inttoptr i64 %170 to i32*
  store i32 %169, i32* %171, align 4, !mcsema_real_eip !33
  %172 = add i64 %2, -180, !mcsema_real_eip !34
  %173 = inttoptr i64 %172 to i32*
  %174 = load i32* %173, align 4, !mcsema_real_eip !34
  %175 = load i32* %163, align 4, !mcsema_real_eip !35
  %176 = sub i32 %174, %175, !mcsema_real_eip !35
  %177 = xor i32 %176, %174, !mcsema_real_eip !35
  %178 = icmp eq i32 %174, %175
  %179 = icmp slt i32 %176, 0
  %180 = xor i32 %175, %174, !mcsema_real_eip !35
  %181 = and i32 %177, %180, !mcsema_real_eip !35
  %182 = icmp slt i32 %181, 0
  %183 = xor i1 %179, %182
  %184 = or i1 %178, %183, !mcsema_real_eip !36
  br i1 %184, label %block_0xeb.i.i, label %block_0xd5.i.i, !mcsema_real_eip !36

block_0xeb.i.i:                                   ; preds = %block_0xaa.i.i, %block_0xc0.i.i
  %185 = add i64 %2, -148, !mcsema_real_eip !41
  %186 = inttoptr i64 %185 to i32*
  %187 = load i32* %186, align 4, !mcsema_real_eip !41
  %188 = add i64 %2, -180, !mcsema_real_eip !42
  %189 = inttoptr i64 %188 to i32*
  %190 = load i32* %189, align 4, !mcsema_real_eip !42
  %191 = sub i32 %187, %190, !mcsema_real_eip !43
  %192 = add i64 %2, -212, !mcsema_real_eip !44
  %193 = inttoptr i64 %192 to i32*
  store i32 %191, i32* %193, align 4, !mcsema_real_eip !44
  %194 = load i32* %120, align 4, !mcsema_real_eip !45
  %195 = load i32* %130, align 4, !mcsema_real_eip !46
  %196 = zext i32 %195 to i64, !mcsema_real_eip !46
  %197 = sub i32 %194, %195, !mcsema_real_eip !47
  %198 = xor i32 %197, %194, !mcsema_real_eip !47
  %199 = xor i32 %198, %195, !mcsema_real_eip !47
  %200 = and i32 %199, 16, !mcsema_real_eip !47
  %201 = icmp ne i32 %200, 0, !mcsema_real_eip !47
  %202 = trunc i32 %197 to i8, !mcsema_real_eip !47
  %203 = tail call i8 @llvm.ctpop.i8(i8 %202) #0, !mcsema_real_eip !47
  %204 = and i8 %203, 1
  %205 = icmp eq i8 %204, 0
  %206 = icmp eq i32 %194, %195
  %207 = icmp slt i32 %197, 0
  %208 = icmp ult i32 %194, %195, !mcsema_real_eip !47
  %209 = xor i32 %195, %194, !mcsema_real_eip !47
  %210 = and i32 %198, %209, !mcsema_real_eip !47
  %211 = icmp slt i32 %210, 0
  %212 = add i64 %2, -208, !mcsema_real_eip !48
  %213 = inttoptr i64 %212 to i32*
  store i32 %197, i32* %213, align 4, !mcsema_real_eip !48
  %214 = add i64 %2, -128, !mcsema_real_eip !49
  %215 = inttoptr i64 %214 to i32*
  store i32 %197, i32* %215, align 4, !mcsema_real_eip !49
  %216 = add i64 %2, -216, !mcsema_real_eip !50
  %217 = inttoptr i64 %216 to i64*, !mcsema_real_eip !50
  %218 = load i64* %217, align 8, !mcsema_real_eip !50
  %219 = add i64 %2, -136, !mcsema_real_eip !51
  %220 = inttoptr i64 %219 to i64*, !mcsema_real_eip !51
  store i64 %218, i64* %220, align 8, !mcsema_real_eip !51
  %221 = load i32* %215, align 4, !mcsema_real_eip !52
  %222 = add i64 %2, -224, !mcsema_real_eip !53
  %223 = inttoptr i64 %222 to i32*
  store i32 %221, i32* %223, align 4, !mcsema_real_eip !53
  %224 = load i64* %220, align 8, !mcsema_real_eip !54
  %225 = add i64 %2, -232, !mcsema_real_eip !55
  %226 = inttoptr i64 %225 to i64*, !mcsema_real_eip !55
  store i64 %224, i64* %226, align 8, !mcsema_real_eip !55
  %227 = load i32* %223, align 4, !mcsema_real_eip !56
  %228 = zext i32 %227 to i64, !mcsema_real_eip !56
  %229 = load i64* %109, align 8, !mcsema_real_eip !57
  store i64 %224, i64* %RAX.i, align 8, !mcsema_real_eip !58
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !58
  store i64 %196, i64* %RCX.i, align 8, !mcsema_real_eip !58
  store i64 %228, i64* %RDX.i, align 8, !mcsema_real_eip !58
  store i64 %118, i64* %RSI.i, align 8, !mcsema_real_eip !58
  store i64 %114, i64* %RDI.i, align 8, !mcsema_real_eip !58
  store i64 %66, i64* %RSP.i, align 8, !mcsema_real_eip !58
  store i64 %229, i64* %RBP.i, align 8, !mcsema_real_eip !58
  store i64 %4, i64* %R8.i, align 8, !mcsema_real_eip !58
  store i64 %5, i64* %R9.i, align 8, !mcsema_real_eip !58
  store i64 %6, i64* %R10.i, align 8, !mcsema_real_eip !58
  store i64 %7, i64* %R11.i, align 8, !mcsema_real_eip !58
  store i64 %8, i64* %R12.i, align 8, !mcsema_real_eip !58
  store i64 %9, i64* %R13.i, align 8, !mcsema_real_eip !58
  store i64 %10, i64* %R14.i, align 8, !mcsema_real_eip !58
  store i64 %11, i64* %R15.i, align 8, !mcsema_real_eip !58
  store i64 %12, i64* %RIP.i, align 8, !mcsema_real_eip !58
  store i1 %208, i1* %CF.i, align 1, !mcsema_real_eip !58
  store i1 %205, i1* %PF.i, align 1, !mcsema_real_eip !58
  store i1 %201, i1* %AF.i, align 1, !mcsema_real_eip !58
  store i1 %206, i1* %ZF.i, align 1, !mcsema_real_eip !58
  store i1 %207, i1* %SF.i, align 1, !mcsema_real_eip !58
  store i1 %211, i1* %OF.i, align 1, !mcsema_real_eip !58
  store i1 %13, i1* %DF.i, align 1, !mcsema_real_eip !58
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !58
  store i1 %16, i1* %FPU_B.i, align 1, !mcsema_real_eip !58
  store i1 %17, i1* %FPU_C3.i, align 1, !mcsema_real_eip !58
  store i3 %18, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !58
  store i1 %19, i1* %FPU_C2.i, align 1, !mcsema_real_eip !58
  store i1 %20, i1* %FPU_C1.i, align 1, !mcsema_real_eip !58
  store i1 %21, i1* %FPU_C0.i, align 1, !mcsema_real_eip !58
  store i1 %22, i1* %FPU_ES.i, align 1, !mcsema_real_eip !58
  store i1 %23, i1* %FPU_SF.i, align 1, !mcsema_real_eip !58
  store i1 %24, i1* %FPU_PE.i, align 1, !mcsema_real_eip !58
  store i1 %25, i1* %FPU_UE.i, align 1, !mcsema_real_eip !58
  store i1 %26, i1* %FPU_OE.i, align 1, !mcsema_real_eip !58
  store i1 %27, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !58
  store i1 %28, i1* %FPU_DE.i, align 1, !mcsema_real_eip !58
  store i1 %29, i1* %FPU_IE.i, align 1, !mcsema_real_eip !58
  store i1 %30, i1* %FPU_X.i, align 1, !mcsema_real_eip !58
  store i2 %31, i2* %FPU_RC.i, align 1, !mcsema_real_eip !58
  store i2 %32, i2* %FPU_PC.i, align 1, !mcsema_real_eip !58
  store i1 %33, i1* %FPU_PM.i, align 1, !mcsema_real_eip !58
  store i1 %34, i1* %FPU_UM.i, align 1, !mcsema_real_eip !58
  store i1 %35, i1* %FPU_OM.i, align 1, !mcsema_real_eip !58
  store i1 %36, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !58
  store i1 %37, i1* %FPU_DM.i, align 1, !mcsema_real_eip !58
  store i1 %38, i1* %FPU_IM.i, align 1, !mcsema_real_eip !58
  store i64 %41, i64* %40, align 4
  store i16 %42, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !58
  store i64 %43, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !58
  store i16 %44, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !58
  store i64 %45, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !58
  store i128 %46, i128* %XMM0.i, align 1, !mcsema_real_eip !58
  store i128 %47, i128* %XMM1.i, align 1, !mcsema_real_eip !58
  store i128 %48, i128* %XMM2.i, align 1, !mcsema_real_eip !58
  store i128 %49, i128* %XMM3.i, align 1, !mcsema_real_eip !58
  store i128 %50, i128* %XMM4.i, align 1, !mcsema_real_eip !58
  store i128 %51, i128* %XMM5.i, align 1, !mcsema_real_eip !58
  store i128 %52, i128* %XMM6.i, align 1, !mcsema_real_eip !58
  store i128 %53, i128* %XMM7.i, align 1, !mcsema_real_eip !58
  store i128 %54, i128* %XMM8.i, align 1, !mcsema_real_eip !58
  store i128 %55, i128* %XMM9.i, align 1, !mcsema_real_eip !58
  store i128 %56, i128* %XMM10.i, align 1, !mcsema_real_eip !58
  store i128 %57, i128* %XMM11.i, align 1, !mcsema_real_eip !58
  store i128 %58, i128* %XMM12.i, align 1, !mcsema_real_eip !58
  store i128 %59, i128* %XMM13.i, align 1, !mcsema_real_eip !58
  store i128 %60, i128* %XMM14.i, align 1, !mcsema_real_eip !58
  store i128 %61, i128* %XMM15.i, align 1, !mcsema_real_eip !58
  store i64 %62, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !58
  store i64 %63, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !58
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast.i)
  br label %sub_0.exit

block_0xd5.i.i:                                   ; preds = %block_0xaa.i.i, %block_0xc0.i.i
  %230 = load i32* %120, align 4, !mcsema_real_eip !59
  %231 = add i32 %230, -1
  store i32 %231, i32* %120, align 4, !mcsema_real_eip !60
  %232 = add i64 %2, -148, !mcsema_real_eip !61
  %233 = inttoptr i64 %232 to i32*
  %234 = load i32* %233, align 4, !mcsema_real_eip !61
  %235 = add i32 %234, 60
  store i32 %235, i32* %233, align 4, !mcsema_real_eip !62
  %236 = add i64 %2, -180, !mcsema_real_eip !42
  %237 = inttoptr i64 %236 to i32*
  %238 = load i32* %237, align 4, !mcsema_real_eip !42
  %239 = sub i32 %235, %238, !mcsema_real_eip !43
  %240 = add i64 %2, -212, !mcsema_real_eip !44
  %241 = inttoptr i64 %240 to i32*
  store i32 %239, i32* %241, align 4, !mcsema_real_eip !44
  %242 = load i32* %120, align 4, !mcsema_real_eip !45
  %243 = load i32* %130, align 4, !mcsema_real_eip !46
  %244 = zext i32 %243 to i64, !mcsema_real_eip !46
  %245 = sub i32 %242, %243, !mcsema_real_eip !47
  %246 = xor i32 %245, %242, !mcsema_real_eip !47
  %247 = xor i32 %246, %243, !mcsema_real_eip !47
  %248 = and i32 %247, 16, !mcsema_real_eip !47
  %249 = icmp ne i32 %248, 0, !mcsema_real_eip !47
  %250 = trunc i32 %245 to i8, !mcsema_real_eip !47
  %251 = tail call i8 @llvm.ctpop.i8(i8 %250) #0, !mcsema_real_eip !47
  %252 = and i8 %251, 1
  %253 = icmp eq i8 %252, 0
  %254 = icmp eq i32 %242, %243
  %255 = icmp slt i32 %245, 0
  %256 = icmp ult i32 %242, %243, !mcsema_real_eip !47
  %257 = xor i32 %243, %242, !mcsema_real_eip !47
  %258 = and i32 %246, %257, !mcsema_real_eip !47
  %259 = icmp slt i32 %258, 0
  %260 = add i64 %2, -208, !mcsema_real_eip !48
  %261 = inttoptr i64 %260 to i32*
  store i32 %245, i32* %261, align 4, !mcsema_real_eip !48
  %262 = add i64 %2, -128, !mcsema_real_eip !49
  %263 = inttoptr i64 %262 to i32*
  store i32 %245, i32* %263, align 4, !mcsema_real_eip !49
  %264 = add i64 %2, -216, !mcsema_real_eip !50
  %265 = inttoptr i64 %264 to i64*, !mcsema_real_eip !50
  %266 = load i64* %265, align 8, !mcsema_real_eip !50
  %267 = add i64 %2, -136, !mcsema_real_eip !51
  %268 = inttoptr i64 %267 to i64*, !mcsema_real_eip !51
  store i64 %266, i64* %268, align 8, !mcsema_real_eip !51
  %269 = load i32* %263, align 4, !mcsema_real_eip !52
  %270 = add i64 %2, -224, !mcsema_real_eip !53
  %271 = inttoptr i64 %270 to i32*
  store i32 %269, i32* %271, align 4, !mcsema_real_eip !53
  %272 = load i64* %268, align 8, !mcsema_real_eip !54
  %273 = add i64 %2, -232, !mcsema_real_eip !55
  %274 = inttoptr i64 %273 to i64*, !mcsema_real_eip !55
  store i64 %272, i64* %274, align 8, !mcsema_real_eip !55
  %275 = load i32* %271, align 4, !mcsema_real_eip !56
  %276 = zext i32 %275 to i64, !mcsema_real_eip !56
  %277 = load i64* %109, align 8, !mcsema_real_eip !57
  store i64 %272, i64* %RAX.i, align 8, !mcsema_real_eip !58
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !58
  store i64 %244, i64* %RCX.i, align 8, !mcsema_real_eip !58
  store i64 %276, i64* %RDX.i, align 8, !mcsema_real_eip !58
  store i64 %118, i64* %RSI.i, align 8, !mcsema_real_eip !58
  store i64 %114, i64* %RDI.i, align 8, !mcsema_real_eip !58
  store i64 %66, i64* %RSP.i, align 8, !mcsema_real_eip !58
  store i64 %277, i64* %RBP.i, align 8, !mcsema_real_eip !58
  store i64 %4, i64* %R8.i, align 8, !mcsema_real_eip !58
  store i64 %5, i64* %R9.i, align 8, !mcsema_real_eip !58
  store i64 %6, i64* %R10.i, align 8, !mcsema_real_eip !58
  store i64 %7, i64* %R11.i, align 8, !mcsema_real_eip !58
  store i64 %8, i64* %R12.i, align 8, !mcsema_real_eip !58
  store i64 %9, i64* %R13.i, align 8, !mcsema_real_eip !58
  store i64 %10, i64* %R14.i, align 8, !mcsema_real_eip !58
  store i64 %11, i64* %R15.i, align 8, !mcsema_real_eip !58
  store i64 %12, i64* %RIP.i, align 8, !mcsema_real_eip !58
  store i1 %256, i1* %CF.i, align 1, !mcsema_real_eip !58
  store i1 %253, i1* %PF.i, align 1, !mcsema_real_eip !58
  store i1 %249, i1* %AF.i, align 1, !mcsema_real_eip !58
  store i1 %254, i1* %ZF.i, align 1, !mcsema_real_eip !58
  store i1 %255, i1* %SF.i, align 1, !mcsema_real_eip !58
  store i1 %259, i1* %OF.i, align 1, !mcsema_real_eip !58
  store i1 %13, i1* %DF.i, align 1, !mcsema_real_eip !58
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !58
  store i1 %16, i1* %FPU_B.i, align 1, !mcsema_real_eip !58
  store i1 %17, i1* %FPU_C3.i, align 1, !mcsema_real_eip !58
  store i3 %18, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !58
  store i1 %19, i1* %FPU_C2.i, align 1, !mcsema_real_eip !58
  store i1 %20, i1* %FPU_C1.i, align 1, !mcsema_real_eip !58
  store i1 %21, i1* %FPU_C0.i, align 1, !mcsema_real_eip !58
  store i1 %22, i1* %FPU_ES.i, align 1, !mcsema_real_eip !58
  store i1 %23, i1* %FPU_SF.i, align 1, !mcsema_real_eip !58
  store i1 %24, i1* %FPU_PE.i, align 1, !mcsema_real_eip !58
  store i1 %25, i1* %FPU_UE.i, align 1, !mcsema_real_eip !58
  store i1 %26, i1* %FPU_OE.i, align 1, !mcsema_real_eip !58
  store i1 %27, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !58
  store i1 %28, i1* %FPU_DE.i, align 1, !mcsema_real_eip !58
  store i1 %29, i1* %FPU_IE.i, align 1, !mcsema_real_eip !58
  store i1 %30, i1* %FPU_X.i, align 1, !mcsema_real_eip !58
  store i2 %31, i2* %FPU_RC.i, align 1, !mcsema_real_eip !58
  store i2 %32, i2* %FPU_PC.i, align 1, !mcsema_real_eip !58
  store i1 %33, i1* %FPU_PM.i, align 1, !mcsema_real_eip !58
  store i1 %34, i1* %FPU_UM.i, align 1, !mcsema_real_eip !58
  store i1 %35, i1* %FPU_OM.i, align 1, !mcsema_real_eip !58
  store i1 %36, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !58
  store i1 %37, i1* %FPU_DM.i, align 1, !mcsema_real_eip !58
  store i1 %38, i1* %FPU_IM.i, align 1, !mcsema_real_eip !58
  store i64 %41, i64* %40, align 4
  store i16 %42, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !58
  store i64 %43, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !58
  store i16 %44, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !58
  store i64 %45, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !58
  store i128 %46, i128* %XMM0.i, align 1, !mcsema_real_eip !58
  store i128 %47, i128* %XMM1.i, align 1, !mcsema_real_eip !58
  store i128 %48, i128* %XMM2.i, align 1, !mcsema_real_eip !58
  store i128 %49, i128* %XMM3.i, align 1, !mcsema_real_eip !58
  store i128 %50, i128* %XMM4.i, align 1, !mcsema_real_eip !58
  store i128 %51, i128* %XMM5.i, align 1, !mcsema_real_eip !58
  store i128 %52, i128* %XMM6.i, align 1, !mcsema_real_eip !58
  store i128 %53, i128* %XMM7.i, align 1, !mcsema_real_eip !58
  store i128 %54, i128* %XMM8.i, align 1, !mcsema_real_eip !58
  store i128 %55, i128* %XMM9.i, align 1, !mcsema_real_eip !58
  store i128 %56, i128* %XMM10.i, align 1, !mcsema_real_eip !58
  store i128 %57, i128* %XMM11.i, align 1, !mcsema_real_eip !58
  store i128 %58, i128* %XMM12.i, align 1, !mcsema_real_eip !58
  store i128 %59, i128* %XMM13.i, align 1, !mcsema_real_eip !58
  store i128 %60, i128* %XMM14.i, align 1, !mcsema_real_eip !58
  store i128 %61, i128* %XMM15.i, align 1, !mcsema_real_eip !58
  store i64 %62, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !58
  store i64 %63, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !58
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast.i)
  br label %sub_0.exit

sub_0.exit:                                       ; preds = %block_0xd5.i.i, %block_0xeb.i.i
  %278 = phi i64 [ %277, %block_0xd5.i.i ], [ %229, %block_0xeb.i.i ]
  %279 = phi i64 [ %276, %block_0xd5.i.i ], [ %228, %block_0xeb.i.i ]
  %280 = phi i64 [ %272, %block_0xd5.i.i ], [ %224, %block_0xeb.i.i ]
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast, i8* %15, i32 128, i32 4, i1 false) #0, !mcsema_real_eip !16
  %281 = add i64 %278, -88, !mcsema_real_eip !63
  %282 = trunc i64 %279 to i32, !mcsema_real_eip !63
  %283 = inttoptr i64 %281 to i32*
  store i32 %282, i32* %283, align 4, !mcsema_real_eip !63
  %284 = add i64 %278, -96, !mcsema_real_eip !64
  %285 = inttoptr i64 %284 to i64*, !mcsema_real_eip !64
  store i64 %280, i64* %285, align 8, !mcsema_real_eip !64
  %286 = add i64 %278, -48, !mcsema_real_eip !65
  %287 = inttoptr i64 %286 to i64*, !mcsema_real_eip !65
  store i64 %280, i64* %287, align 8, !mcsema_real_eip !65
  %288 = load i32* %283, align 4, !mcsema_real_eip !66
  %289 = add i64 %278, -40, !mcsema_real_eip !67
  %290 = inttoptr i64 %289 to i32*
  store i32 %288, i32* %290, align 4, !mcsema_real_eip !67
  %291 = inttoptr i64 %286 to i32*
  %292 = load i32* %291, align 4, !mcsema_real_eip !68
  %293 = add i64 %278, -44, !mcsema_real_eip !69
  %294 = inttoptr i64 %293 to i32*
  %295 = load i32* %294, align 4, !mcsema_real_eip !69
  %296 = add i32 %292, %288
  %297 = add i32 %296, %295
  %298 = zext i32 %297 to i64, !mcsema_real_eip !70
  %uadd210.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %66, i64 96) #0
  %299 = extractvalue { i64, i1 } %uadd210.i, 0
  %300 = xor i64 %299, %66, !mcsema_real_eip !71
  %301 = and i64 %300, 16, !mcsema_real_eip !71
  %302 = icmp ne i64 %301, 0, !mcsema_real_eip !71
  %303 = icmp slt i64 %299, 0
  %304 = icmp eq i64 %299, 0, !mcsema_real_eip !71
  %305 = add i64 %2, 9223372036854775704
  %306 = and i64 %300, %305, !mcsema_real_eip !71
  %307 = icmp slt i64 %306, 0
  %308 = trunc i64 %299 to i8, !mcsema_real_eip !71
  %309 = tail call i8 @llvm.ctpop.i8(i8 %308) #0, !mcsema_real_eip !71
  %310 = and i8 %309, 1
  %311 = icmp eq i8 %310, 0
  %312 = extractvalue { i64, i1 } %uadd210.i, 1
  %313 = inttoptr i64 %299 to i64*, !mcsema_real_eip !72
  %314 = load i64* %313, align 8, !mcsema_real_eip !72
  %315 = add i64 %299, 16, !mcsema_real_eip !73
  store i64 %298, i64* %RAX.i, align 8, !mcsema_real_eip !73
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !73
  store i64 %298, i64* %RCX.i, align 8, !mcsema_real_eip !73
  store i64 %279, i64* %RDX.i, align 8, !mcsema_real_eip !73
  store i64 %118, i64* %RSI.i, align 8, !mcsema_real_eip !73
  store i64 %114, i64* %RDI.i, align 8, !mcsema_real_eip !73
  store i64 %315, i64* %RSP.i, align 8, !mcsema_real_eip !73
  store i64 %314, i64* %RBP.i, align 8, !mcsema_real_eip !73
  store i64 %4, i64* %R8.i, align 8, !mcsema_real_eip !73
  store i64 %5, i64* %R9.i, align 8, !mcsema_real_eip !73
  store i64 %6, i64* %R10.i, align 8, !mcsema_real_eip !73
  store i64 %7, i64* %R11.i, align 8, !mcsema_real_eip !73
  store i64 %8, i64* %R12.i, align 8, !mcsema_real_eip !73
  store i64 %9, i64* %R13.i, align 8, !mcsema_real_eip !73
  store i64 %10, i64* %R14.i, align 8, !mcsema_real_eip !73
  store i64 %11, i64* %R15.i, align 8, !mcsema_real_eip !73
  store i64 %12, i64* %RIP.i, align 8, !mcsema_real_eip !73
  store i1 %312, i1* %CF.i, align 1, !mcsema_real_eip !73
  store i1 %311, i1* %PF.i, align 1, !mcsema_real_eip !73
  store i1 %302, i1* %AF.i, align 1, !mcsema_real_eip !73
  store i1 %304, i1* %ZF.i, align 1, !mcsema_real_eip !73
  store i1 %303, i1* %SF.i, align 1, !mcsema_real_eip !73
  store i1 %307, i1* %OF.i, align 1, !mcsema_real_eip !73
  store i1 %13, i1* %DF.i, align 1, !mcsema_real_eip !73
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !73
  store i1 %16, i1* %FPU_B.i, align 1, !mcsema_real_eip !73
  store i1 %17, i1* %FPU_C3.i, align 1, !mcsema_real_eip !73
  store i3 %18, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !73
  store i1 %19, i1* %FPU_C2.i, align 1, !mcsema_real_eip !73
  store i1 %20, i1* %FPU_C1.i, align 1, !mcsema_real_eip !73
  store i1 %21, i1* %FPU_C0.i, align 1, !mcsema_real_eip !73
  store i1 %22, i1* %FPU_ES.i, align 1, !mcsema_real_eip !73
  store i1 %23, i1* %FPU_SF.i, align 1, !mcsema_real_eip !73
  store i1 %24, i1* %FPU_PE.i, align 1, !mcsema_real_eip !73
  store i1 %25, i1* %FPU_UE.i, align 1, !mcsema_real_eip !73
  store i1 %26, i1* %FPU_OE.i, align 1, !mcsema_real_eip !73
  store i1 %27, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !73
  store i1 %28, i1* %FPU_DE.i, align 1, !mcsema_real_eip !73
  store i1 %29, i1* %FPU_IE.i, align 1, !mcsema_real_eip !73
  store i1 %30, i1* %FPU_X.i, align 1, !mcsema_real_eip !73
  store i2 %31, i2* %FPU_RC.i, align 1, !mcsema_real_eip !73
  store i2 %32, i2* %FPU_PC.i, align 1, !mcsema_real_eip !73
  store i1 %33, i1* %FPU_PM.i, align 1, !mcsema_real_eip !73
  store i1 %34, i1* %FPU_UM.i, align 1, !mcsema_real_eip !73
  store i1 %35, i1* %FPU_OM.i, align 1, !mcsema_real_eip !73
  store i1 %36, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !73
  store i1 %37, i1* %FPU_DM.i, align 1, !mcsema_real_eip !73
  store i1 %38, i1* %FPU_IM.i, align 1, !mcsema_real_eip !73
  store i64 %41, i64* %40, align 4
  store i16 %42, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !73
  store i64 %43, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !73
  store i16 %44, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !73
  store i64 %45, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !73
  store i128 %46, i128* %XMM0.i, align 1, !mcsema_real_eip !73
  store i128 %47, i128* %XMM1.i, align 1, !mcsema_real_eip !73
  store i128 %48, i128* %XMM2.i, align 1, !mcsema_real_eip !73
  store i128 %49, i128* %XMM3.i, align 1, !mcsema_real_eip !73
  store i128 %50, i128* %XMM4.i, align 1, !mcsema_real_eip !73
  store i128 %51, i128* %XMM5.i, align 1, !mcsema_real_eip !73
  store i128 %52, i128* %XMM6.i, align 1, !mcsema_real_eip !73
  store i128 %53, i128* %XMM7.i, align 1, !mcsema_real_eip !73
  store i128 %54, i128* %XMM8.i, align 1, !mcsema_real_eip !73
  store i128 %55, i128* %XMM9.i, align 1, !mcsema_real_eip !73
  store i128 %56, i128* %XMM10.i, align 1, !mcsema_real_eip !73
  store i128 %57, i128* %XMM11.i, align 1, !mcsema_real_eip !73
  store i128 %58, i128* %XMM12.i, align 1, !mcsema_real_eip !73
  store i128 %59, i128* %XMM13.i, align 1, !mcsema_real_eip !73
  store i128 %60, i128* %XMM14.i, align 1, !mcsema_real_eip !73
  store i128 %61, i128* %XMM15.i, align 1, !mcsema_real_eip !73
  store i64 %62, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !73
  store i64 %63, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !73
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
!2 = metadata !{i64 112, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!4 = metadata !{i64 4, [16 x i8] c"\09subq\09$96, %rsp\00"}
!5 = metadata !{i64 8, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!6 = metadata !{i64 15, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!7 = metadata !{i64 18, [22 x i8] c"\09movl\09%eax, -56(%rbp)\00"}
!8 = metadata !{i64 21, [22 x i8] c"\09movq\09-16(%rbp), %rcx\00"}
!9 = metadata !{i64 25, [22 x i8] c"\09movq\09%rcx, -64(%rbp)\00"}
!10 = metadata !{i64 33, [22 x i8] c"\09movl\09-56(%rbp), %esi\00"}
!11 = metadata !{i64 36, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!12 = metadata !{i64 39, [22 x i8] c"\09movl\09%eax, -72(%rbp)\00"}
!13 = metadata !{i64 42, [22 x i8] c"\09movq\09-32(%rbp), %rcx\00"}
!14 = metadata !{i64 46, [22 x i8] c"\09movq\09%rcx, -80(%rbp)\00"}
!15 = metadata !{i64 54, [22 x i8] c"\09movl\09-72(%rbp), %ecx\00"}
!16 = metadata !{i64 57, [10 x i8] c"\09callq\0950\00"}
!17 = metadata !{i64 116, [22 x i8] c"\09movq\09%rdi, -48(%rbp)\00"}
!18 = metadata !{i64 120, [22 x i8] c"\09movl\09%esi, -40(%rbp)\00"}
!19 = metadata !{i64 123, [22 x i8] c"\09movq\09-48(%rbp), %rdi\00"}
!20 = metadata !{i64 127, [22 x i8] c"\09movq\09%rdi, -32(%rbp)\00"}
!21 = metadata !{i64 131, [22 x i8] c"\09movl\09-40(%rbp), %esi\00"}
!22 = metadata !{i64 134, [22 x i8] c"\09movl\09%esi, -24(%rbp)\00"}
!23 = metadata !{i64 137, [22 x i8] c"\09movq\09%rdx, -80(%rbp)\00"}
!24 = metadata !{i64 141, [22 x i8] c"\09movl\09%ecx, -72(%rbp)\00"}
!25 = metadata !{i64 144, [22 x i8] c"\09movq\09-80(%rbp), %rdx\00"}
!26 = metadata !{i64 148, [22 x i8] c"\09movq\09%rdx, -64(%rbp)\00"}
!27 = metadata !{i64 152, [22 x i8] c"\09movl\09-72(%rbp), %ecx\00"}
!28 = metadata !{i64 155, [22 x i8] c"\09movl\09%ecx, -56(%rbp)\00"}
!29 = metadata !{i64 158, [22 x i8] c"\09movl\09-64(%rbp), %ecx\00"}
!30 = metadata !{i64 161, [22 x i8] c"\09cmpl\09-32(%rbp), %ecx\00"}
!31 = metadata !{i64 164, [8 x i8] c"\09jle\0922\00"}
!32 = metadata !{i64 195, [22 x i8] c"\09subl\09-64(%rbp), %eax\00"}
!33 = metadata !{i64 198, [22 x i8] c"\09movl\09%eax, -96(%rbp)\00"}
!34 = metadata !{i64 201, [22 x i8] c"\09movl\09-60(%rbp), %eax\00"}
!35 = metadata !{i64 204, [22 x i8] c"\09cmpl\09-28(%rbp), %eax\00"}
!36 = metadata !{i64 207, [8 x i8] c"\09jle\0922\00"}
!37 = metadata !{i64 170, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!38 = metadata !{i64 178, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
!39 = metadata !{i64 181, [22 x i8] c"\09movl\09-32(%rbp), %eax\00"}
!40 = metadata !{i64 189, [22 x i8] c"\09movl\09%eax, -32(%rbp)\00"}
!41 = metadata !{i64 235, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!42 = metadata !{i64 238, [22 x i8] c"\09movl\09-60(%rbp), %ecx\00"}
!43 = metadata !{i64 241, [17 x i8] c"\09subl\09%ecx, %eax\00"}
!44 = metadata !{i64 243, [22 x i8] c"\09movl\09%eax, -92(%rbp)\00"}
!45 = metadata !{i64 246, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!46 = metadata !{i64 249, [22 x i8] c"\09movl\09-56(%rbp), %ecx\00"}
!47 = metadata !{i64 252, [17 x i8] c"\09subl\09%ecx, %eax\00"}
!48 = metadata !{i64 254, [22 x i8] c"\09movl\09%eax, -88(%rbp)\00"}
!49 = metadata !{i64 257, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!50 = metadata !{i64 260, [22 x i8] c"\09movq\09-96(%rbp), %rdx\00"}
!51 = metadata !{i64 264, [22 x i8] c"\09movq\09%rdx, -16(%rbp)\00"}
!52 = metadata !{i64 268, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!53 = metadata !{i64 271, [23 x i8] c"\09movl\09%eax, -104(%rbp)\00"}
!54 = metadata !{i64 274, [22 x i8] c"\09movq\09-16(%rbp), %rdx\00"}
!55 = metadata !{i64 278, [23 x i8] c"\09movq\09%rdx, -112(%rbp)\00"}
!56 = metadata !{i64 286, [23 x i8] c"\09movl\09-104(%rbp), %edx\00"}
!57 = metadata !{i64 289, [11 x i8] c"\09popq\09%rbp\00"}
!58 = metadata !{i64 290, [6 x i8] c"\09retq\00"}
!59 = metadata !{i64 213, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!60 = metadata !{i64 221, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!61 = metadata !{i64 224, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!62 = metadata !{i64 232, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
!63 = metadata !{i64 62, [22 x i8] c"\09movl\09%edx, -88(%rbp)\00"}
!64 = metadata !{i64 65, [22 x i8] c"\09movq\09%rax, -96(%rbp)\00"}
!65 = metadata !{i64 73, [22 x i8] c"\09movq\09%rax, -48(%rbp)\00"}
!66 = metadata !{i64 77, [22 x i8] c"\09movl\09-88(%rbp), %ecx\00"}
!67 = metadata !{i64 80, [22 x i8] c"\09movl\09%ecx, -40(%rbp)\00"}
!68 = metadata !{i64 83, [22 x i8] c"\09movl\09-48(%rbp), %ecx\00"}
!69 = metadata !{i64 86, [22 x i8] c"\09addl\09-44(%rbp), %ecx\00"}
!70 = metadata !{i64 89, [22 x i8] c"\09addl\09-40(%rbp), %ecx\00"}
!71 = metadata !{i64 94, [16 x i8] c"\09addq\09$96, %rsp\00"}
!72 = metadata !{i64 98, [11 x i8] c"\09popq\09%rbp\00"}
!73 = metadata !{i64 99, [6 x i8] c"\09retq\00"}
