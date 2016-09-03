; ModuleID = 'Output/test_6.clang.opt.bc'
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
  %67 = add i64 %3, -104
  %68 = xor i64 %67, %65, !mcsema_real_eip !4
  %69 = and i64 %68, 16, !mcsema_real_eip !4
  %70 = icmp ne i64 %69, 0, !mcsema_real_eip !4
  %71 = trunc i64 %67 to i8, !mcsema_real_eip !4
  %72 = tail call i8 @llvm.ctpop.i8(i8 %71) #0, !mcsema_real_eip !4
  %73 = and i8 %72, 1
  %74 = icmp eq i8 %73, 0
  %75 = icmp eq i64 %67, 0, !mcsema_real_eip !4
  %76 = icmp slt i64 %67, 0
  %77 = icmp ult i64 %65, 96, !mcsema_real_eip !4
  %78 = and i64 %68, %65, !mcsema_real_eip !4
  %79 = icmp slt i64 %78, 0
  %80 = add i64 %3, -12, !mcsema_real_eip !5
  %81 = inttoptr i64 %80 to i32*
  store i32 0, i32* %81, align 4, !mcsema_real_eip !5
  %82 = add i64 %3, -16, !mcsema_real_eip !6
  %83 = inttoptr i64 %82 to i32*
  %84 = load i32* %83, align 4, !mcsema_real_eip !6
  %85 = add i64 %3, -64, !mcsema_real_eip !7
  %86 = inttoptr i64 %85 to i32*
  store i32 %84, i32* %86, align 4, !mcsema_real_eip !7
  %87 = add i64 %3, -24, !mcsema_real_eip !8
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !8
  %89 = load i64* %88, align 8, !mcsema_real_eip !8
  %90 = add i64 %3, -72, !mcsema_real_eip !9
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !9
  store i64 %89, i64* %91, align 8, !mcsema_real_eip !9
  %92 = load i32* %86, align 4, !mcsema_real_eip !10
  %93 = zext i32 %92 to i64, !mcsema_real_eip !10
  %94 = add i64 %3, -32, !mcsema_real_eip !11
  %95 = inttoptr i64 %94 to i32*
  %96 = load i32* %95, align 4, !mcsema_real_eip !11
  %97 = zext i32 %96 to i64, !mcsema_real_eip !11
  %98 = add i64 %3, -80, !mcsema_real_eip !12
  %99 = inttoptr i64 %98 to i32*
  store i32 %96, i32* %99, align 4, !mcsema_real_eip !12
  %100 = add i64 %3, -40, !mcsema_real_eip !13
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !13
  %102 = load i64* %101, align 8, !mcsema_real_eip !13
  %103 = add i64 %3, -88, !mcsema_real_eip !14
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !14
  store i64 %102, i64* %104, align 8, !mcsema_real_eip !14
  %105 = load i32* %99, align 4, !mcsema_real_eip !15
  %106 = zext i32 %105 to i64, !mcsema_real_eip !15
  %107 = add i64 %3, -112
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !16
  store i64 -4981261766360305936, i64* %108, align 8, !mcsema_real_eip !16
  store i64 %97, i64* %RAX.i, align 8, !mcsema_real_eip !16
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !16
  store i64 %106, i64* %RCX.i, align 8, !mcsema_real_eip !16
  store i64 %102, i64* %RDX.i, align 8, !mcsema_real_eip !16
  store i64 %93, i64* %RSI.i, align 8, !mcsema_real_eip !16
  store i64 %89, i64* %RDI.i, align 8, !mcsema_real_eip !16
  store i64 %107, i64* %RSP.i, align 8, !mcsema_real_eip !16
  store i64 %65, i64* %RBP.i, align 8, !mcsema_real_eip !16
  store i64 %5, i64* %R8.i, align 8, !mcsema_real_eip !16
  store i64 %6, i64* %R9.i, align 8, !mcsema_real_eip !16
  store i64 %7, i64* %R10.i, align 8, !mcsema_real_eip !16
  store i64 %8, i64* %R11.i, align 8, !mcsema_real_eip !16
  store i64 %9, i64* %R12.i, align 8, !mcsema_real_eip !16
  store i64 %10, i64* %R13.i, align 8, !mcsema_real_eip !16
  store i64 %11, i64* %R14.i, align 8, !mcsema_real_eip !16
  store i64 %12, i64* %R15.i, align 8, !mcsema_real_eip !16
  store i64 %13, i64* %RIP.i, align 8, !mcsema_real_eip !16
  store i1 %77, i1* %CF.i, align 1, !mcsema_real_eip !16
  store i1 %74, i1* %PF.i, align 1, !mcsema_real_eip !16
  store i1 %70, i1* %AF.i, align 1, !mcsema_real_eip !16
  store i1 %75, i1* %ZF.i, align 1, !mcsema_real_eip !16
  store i1 %76, i1* %SF.i, align 1, !mcsema_real_eip !16
  store i1 %79, i1* %OF.i, align 1, !mcsema_real_eip !16
  store i1 %14, i1* %DF.i, align 1, !mcsema_real_eip !16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %1, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !16
  store i1 %17, i1* %FPU_B.i, align 1, !mcsema_real_eip !16
  store i1 %18, i1* %FPU_C3.i, align 1, !mcsema_real_eip !16
  store i3 %19, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !16
  store i1 %20, i1* %FPU_C2.i, align 1, !mcsema_real_eip !16
  store i1 %21, i1* %FPU_C1.i, align 1, !mcsema_real_eip !16
  store i1 %22, i1* %FPU_C0.i, align 1, !mcsema_real_eip !16
  store i1 %23, i1* %FPU_ES.i, align 1, !mcsema_real_eip !16
  store i1 %24, i1* %FPU_SF.i, align 1, !mcsema_real_eip !16
  store i1 %25, i1* %FPU_PE.i, align 1, !mcsema_real_eip !16
  store i1 %26, i1* %FPU_UE.i, align 1, !mcsema_real_eip !16
  store i1 %27, i1* %FPU_OE.i, align 1, !mcsema_real_eip !16
  store i1 %28, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !16
  store i1 %29, i1* %FPU_DE.i, align 1, !mcsema_real_eip !16
  store i1 %30, i1* %FPU_IE.i, align 1, !mcsema_real_eip !16
  store i1 %31, i1* %FPU_X.i, align 1, !mcsema_real_eip !16
  store i2 %32, i2* %FPU_RC.i, align 1, !mcsema_real_eip !16
  store i2 %33, i2* %FPU_PC.i, align 1, !mcsema_real_eip !16
  store i1 %34, i1* %FPU_PM.i, align 1, !mcsema_real_eip !16
  store i1 %35, i1* %FPU_UM.i, align 1, !mcsema_real_eip !16
  store i1 %36, i1* %FPU_OM.i, align 1, !mcsema_real_eip !16
  store i1 %37, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !16
  store i1 %38, i1* %FPU_DM.i, align 1, !mcsema_real_eip !16
  store i1 %39, i1* %FPU_IM.i, align 1, !mcsema_real_eip !16
  store i64 %42, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !16
  store i64 %44, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !16
  store i16 %45, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !16
  store i64 %46, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !16
  store i128 %47, i128* %XMM0.i, align 1, !mcsema_real_eip !16
  store i128 %48, i128* %XMM1.i, align 1, !mcsema_real_eip !16
  store i128 %49, i128* %XMM2.i, align 1, !mcsema_real_eip !16
  store i128 %50, i128* %XMM3.i, align 1, !mcsema_real_eip !16
  store i128 %51, i128* %XMM4.i, align 1, !mcsema_real_eip !16
  store i128 %52, i128* %XMM5.i, align 1, !mcsema_real_eip !16
  store i128 %53, i128* %XMM6.i, align 1, !mcsema_real_eip !16
  store i128 %54, i128* %XMM7.i, align 1, !mcsema_real_eip !16
  store i128 %55, i128* %XMM8.i, align 1, !mcsema_real_eip !16
  store i128 %56, i128* %XMM9.i, align 1, !mcsema_real_eip !16
  store i128 %57, i128* %XMM10.i, align 1, !mcsema_real_eip !16
  store i128 %58, i128* %XMM11.i, align 1, !mcsema_real_eip !16
  store i128 %59, i128* %XMM12.i, align 1, !mcsema_real_eip !16
  store i128 %60, i128* %XMM13.i, align 1, !mcsema_real_eip !16
  store i128 %61, i128* %XMM14.i, align 1, !mcsema_real_eip !16
  store i128 %62, i128* %XMM15.i, align 1, !mcsema_real_eip !16
  store i64 %63, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !16
  store i64 %64, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !16
  %109 = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %109)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %109, i8* %1, i32 128, i32 16, i1 false) #0
  %110 = add i64 %3, -120
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !2
  store i64 %65, i64* %111, align 8, !mcsema_real_eip !2
  %112 = add i64 %3, -168, !mcsema_real_eip !17
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !17
  store i64 %89, i64* %113, align 8, !mcsema_real_eip !17
  %114 = add i64 %3, -160, !mcsema_real_eip !18
  %115 = inttoptr i64 %114 to i32*
  store i32 %92, i32* %115, align 4, !mcsema_real_eip !18
  %116 = load i64* %113, align 8, !mcsema_real_eip !19
  %117 = add i64 %3, -152, !mcsema_real_eip !20
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !20
  store i64 %116, i64* %118, align 8, !mcsema_real_eip !20
  %119 = load i32* %115, align 4, !mcsema_real_eip !21
  %120 = zext i32 %119 to i64, !mcsema_real_eip !21
  %121 = add i64 %3, -144, !mcsema_real_eip !22
  %122 = inttoptr i64 %121 to i32*
  store i32 %119, i32* %122, align 4, !mcsema_real_eip !22
  %123 = add i64 %3, -200, !mcsema_real_eip !23
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !23
  store i64 %102, i64* %124, align 8, !mcsema_real_eip !23
  %125 = add i64 %3, -192, !mcsema_real_eip !24
  %126 = inttoptr i64 %125 to i32*
  store i32 %105, i32* %126, align 4, !mcsema_real_eip !24
  %127 = load i64* %124, align 8, !mcsema_real_eip !25
  %128 = add i64 %3, -184, !mcsema_real_eip !26
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !26
  store i64 %127, i64* %129, align 8, !mcsema_real_eip !26
  %130 = load i32* %126, align 4, !mcsema_real_eip !27
  %131 = add i64 %3, -176, !mcsema_real_eip !28
  %132 = inttoptr i64 %131 to i32*
  store i32 %130, i32* %132, align 4, !mcsema_real_eip !28
  %133 = inttoptr i64 %128 to i32*
  %134 = load i32* %133, align 4, !mcsema_real_eip !29
  %135 = inttoptr i64 %117 to i32*
  %136 = load i32* %135, align 4, !mcsema_real_eip !30
  %137 = sub i32 %134, %136, !mcsema_real_eip !30
  %138 = xor i32 %137, %134, !mcsema_real_eip !30
  %139 = icmp eq i32 %134, %136
  %140 = icmp slt i32 %137, 0
  %141 = xor i32 %136, %134, !mcsema_real_eip !30
  %142 = and i32 %138, %141, !mcsema_real_eip !30
  %143 = icmp slt i32 %142, 0
  %144 = xor i1 %140, %143
  %145 = or i1 %139, %144, !mcsema_real_eip !31
  br i1 %145, label %block_0xc0.i.i, label %block_0xaa.i.i, !mcsema_real_eip !31

block_0xc0.i.i:                                   ; preds = %driverBlockRaw
  %146 = sub i32 %136, %134, !mcsema_real_eip !32
  %147 = add i64 %3, -216, !mcsema_real_eip !33
  %148 = inttoptr i64 %147 to i32*
  store i32 %146, i32* %148, align 4, !mcsema_real_eip !33
  %149 = add i64 %3, -180, !mcsema_real_eip !34
  %150 = inttoptr i64 %149 to i32*
  %151 = load i32* %150, align 4, !mcsema_real_eip !34
  %152 = add i64 %3, -148, !mcsema_real_eip !35
  %153 = inttoptr i64 %152 to i32*
  %154 = load i32* %153, align 4, !mcsema_real_eip !35
  %155 = sub i32 %151, %154, !mcsema_real_eip !35
  %156 = xor i32 %155, %151, !mcsema_real_eip !35
  %157 = icmp eq i32 %151, %154
  %158 = icmp slt i32 %155, 0
  %159 = xor i32 %154, %151, !mcsema_real_eip !35
  %160 = and i32 %156, %159, !mcsema_real_eip !35
  %161 = icmp slt i32 %160, 0
  %162 = xor i1 %158, %161
  %163 = or i1 %157, %162, !mcsema_real_eip !36
  br i1 %163, label %block_0xeb.i.i, label %block_0xd5.i.i, !mcsema_real_eip !36

block_0xaa.i.i:                                   ; preds = %driverBlockRaw
  %164 = add i64 %3, -148, !mcsema_real_eip !37
  %165 = inttoptr i64 %164 to i32*
  %166 = load i32* %165, align 4, !mcsema_real_eip !37
  %167 = add i32 %166, -1
  store i32 %167, i32* %165, align 4, !mcsema_real_eip !38
  %168 = load i32* %135, align 4, !mcsema_real_eip !39
  %169 = add i32 %168, 60
  store i32 %169, i32* %135, align 4, !mcsema_real_eip !40
  %170 = load i32* %133, align 4, !mcsema_real_eip !32
  %171 = sub i32 %169, %170, !mcsema_real_eip !32
  %172 = add i64 %3, -216, !mcsema_real_eip !33
  %173 = inttoptr i64 %172 to i32*
  store i32 %171, i32* %173, align 4, !mcsema_real_eip !33
  %174 = add i64 %3, -180, !mcsema_real_eip !34
  %175 = inttoptr i64 %174 to i32*
  %176 = load i32* %175, align 4, !mcsema_real_eip !34
  %177 = load i32* %165, align 4, !mcsema_real_eip !35
  %178 = sub i32 %176, %177, !mcsema_real_eip !35
  %179 = xor i32 %178, %176, !mcsema_real_eip !35
  %180 = icmp eq i32 %176, %177
  %181 = icmp slt i32 %178, 0
  %182 = xor i32 %177, %176, !mcsema_real_eip !35
  %183 = and i32 %179, %182, !mcsema_real_eip !35
  %184 = icmp slt i32 %183, 0
  %185 = xor i1 %181, %184
  %186 = or i1 %180, %185, !mcsema_real_eip !36
  br i1 %186, label %block_0xeb.i.i, label %block_0xd5.i.i, !mcsema_real_eip !36

block_0xeb.i.i:                                   ; preds = %block_0xaa.i.i, %block_0xc0.i.i
  %187 = add i64 %3, -148, !mcsema_real_eip !41
  %188 = inttoptr i64 %187 to i32*
  %189 = load i32* %188, align 4, !mcsema_real_eip !41
  %190 = add i64 %3, -180, !mcsema_real_eip !42
  %191 = inttoptr i64 %190 to i32*
  %192 = load i32* %191, align 4, !mcsema_real_eip !42
  %193 = sub i32 %189, %192, !mcsema_real_eip !43
  %194 = add i64 %3, -212, !mcsema_real_eip !44
  %195 = inttoptr i64 %194 to i32*
  store i32 %193, i32* %195, align 4, !mcsema_real_eip !44
  %196 = load i32* %122, align 4, !mcsema_real_eip !45
  %197 = load i32* %132, align 4, !mcsema_real_eip !46
  %198 = zext i32 %197 to i64, !mcsema_real_eip !46
  %199 = sub i32 %196, %197, !mcsema_real_eip !47
  %200 = xor i32 %199, %196, !mcsema_real_eip !47
  %201 = xor i32 %200, %197, !mcsema_real_eip !47
  %202 = and i32 %201, 16, !mcsema_real_eip !47
  %203 = icmp ne i32 %202, 0, !mcsema_real_eip !47
  %204 = trunc i32 %199 to i8, !mcsema_real_eip !47
  %205 = tail call i8 @llvm.ctpop.i8(i8 %204) #0, !mcsema_real_eip !47
  %206 = and i8 %205, 1
  %207 = icmp eq i8 %206, 0
  %208 = icmp eq i32 %196, %197
  %209 = icmp slt i32 %199, 0
  %210 = icmp ult i32 %196, %197, !mcsema_real_eip !47
  %211 = xor i32 %197, %196, !mcsema_real_eip !47
  %212 = and i32 %200, %211, !mcsema_real_eip !47
  %213 = icmp slt i32 %212, 0
  %214 = add i64 %3, -208, !mcsema_real_eip !48
  %215 = inttoptr i64 %214 to i32*
  store i32 %199, i32* %215, align 4, !mcsema_real_eip !48
  %216 = add i64 %3, -128, !mcsema_real_eip !49
  %217 = inttoptr i64 %216 to i32*
  store i32 %199, i32* %217, align 4, !mcsema_real_eip !49
  %218 = add i64 %3, -216, !mcsema_real_eip !50
  %219 = inttoptr i64 %218 to i64*, !mcsema_real_eip !50
  %220 = load i64* %219, align 8, !mcsema_real_eip !50
  %221 = add i64 %3, -136, !mcsema_real_eip !51
  %222 = inttoptr i64 %221 to i64*, !mcsema_real_eip !51
  store i64 %220, i64* %222, align 8, !mcsema_real_eip !51
  %223 = load i32* %217, align 4, !mcsema_real_eip !52
  %224 = add i64 %3, -224, !mcsema_real_eip !53
  %225 = inttoptr i64 %224 to i32*
  store i32 %223, i32* %225, align 4, !mcsema_real_eip !53
  %226 = load i64* %222, align 8, !mcsema_real_eip !54
  %227 = add i64 %3, -232, !mcsema_real_eip !55
  %228 = inttoptr i64 %227 to i64*, !mcsema_real_eip !55
  store i64 %226, i64* %228, align 8, !mcsema_real_eip !55
  %229 = load i32* %225, align 4, !mcsema_real_eip !56
  %230 = zext i32 %229 to i64, !mcsema_real_eip !56
  %231 = load i64* %111, align 8, !mcsema_real_eip !57
  store i64 %226, i64* %RAX.i, align 8, !mcsema_real_eip !58
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !58
  store i64 %198, i64* %RCX.i, align 8, !mcsema_real_eip !58
  store i64 %230, i64* %RDX.i, align 8, !mcsema_real_eip !58
  store i64 %120, i64* %RSI.i, align 8, !mcsema_real_eip !58
  store i64 %116, i64* %RDI.i, align 8, !mcsema_real_eip !58
  store i64 %67, i64* %RSP.i, align 8, !mcsema_real_eip !58
  store i64 %231, i64* %RBP.i, align 8, !mcsema_real_eip !58
  store i64 %5, i64* %R8.i, align 8, !mcsema_real_eip !58
  store i64 %6, i64* %R9.i, align 8, !mcsema_real_eip !58
  store i64 %7, i64* %R10.i, align 8, !mcsema_real_eip !58
  store i64 %8, i64* %R11.i, align 8, !mcsema_real_eip !58
  store i64 %9, i64* %R12.i, align 8, !mcsema_real_eip !58
  store i64 %10, i64* %R13.i, align 8, !mcsema_real_eip !58
  store i64 %11, i64* %R14.i, align 8, !mcsema_real_eip !58
  store i64 %12, i64* %R15.i, align 8, !mcsema_real_eip !58
  store i64 %13, i64* %RIP.i, align 8, !mcsema_real_eip !58
  store i1 %210, i1* %CF.i, align 1, !mcsema_real_eip !58
  store i1 %207, i1* %PF.i, align 1, !mcsema_real_eip !58
  store i1 %203, i1* %AF.i, align 1, !mcsema_real_eip !58
  store i1 %208, i1* %ZF.i, align 1, !mcsema_real_eip !58
  store i1 %209, i1* %SF.i, align 1, !mcsema_real_eip !58
  store i1 %213, i1* %OF.i, align 1, !mcsema_real_eip !58
  store i1 %14, i1* %DF.i, align 1, !mcsema_real_eip !58
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %109, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !58
  store i1 %17, i1* %FPU_B.i, align 1, !mcsema_real_eip !58
  store i1 %18, i1* %FPU_C3.i, align 1, !mcsema_real_eip !58
  store i3 %19, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !58
  store i1 %20, i1* %FPU_C2.i, align 1, !mcsema_real_eip !58
  store i1 %21, i1* %FPU_C1.i, align 1, !mcsema_real_eip !58
  store i1 %22, i1* %FPU_C0.i, align 1, !mcsema_real_eip !58
  store i1 %23, i1* %FPU_ES.i, align 1, !mcsema_real_eip !58
  store i1 %24, i1* %FPU_SF.i, align 1, !mcsema_real_eip !58
  store i1 %25, i1* %FPU_PE.i, align 1, !mcsema_real_eip !58
  store i1 %26, i1* %FPU_UE.i, align 1, !mcsema_real_eip !58
  store i1 %27, i1* %FPU_OE.i, align 1, !mcsema_real_eip !58
  store i1 %28, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !58
  store i1 %29, i1* %FPU_DE.i, align 1, !mcsema_real_eip !58
  store i1 %30, i1* %FPU_IE.i, align 1, !mcsema_real_eip !58
  store i1 %31, i1* %FPU_X.i, align 1, !mcsema_real_eip !58
  store i2 %32, i2* %FPU_RC.i, align 1, !mcsema_real_eip !58
  store i2 %33, i2* %FPU_PC.i, align 1, !mcsema_real_eip !58
  store i1 %34, i1* %FPU_PM.i, align 1, !mcsema_real_eip !58
  store i1 %35, i1* %FPU_UM.i, align 1, !mcsema_real_eip !58
  store i1 %36, i1* %FPU_OM.i, align 1, !mcsema_real_eip !58
  store i1 %37, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !58
  store i1 %38, i1* %FPU_DM.i, align 1, !mcsema_real_eip !58
  store i1 %39, i1* %FPU_IM.i, align 1, !mcsema_real_eip !58
  store i64 %42, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !58
  store i64 %44, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !58
  store i16 %45, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !58
  store i64 %46, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !58
  store i128 %47, i128* %XMM0.i, align 1, !mcsema_real_eip !58
  store i128 %48, i128* %XMM1.i, align 1, !mcsema_real_eip !58
  store i128 %49, i128* %XMM2.i, align 1, !mcsema_real_eip !58
  store i128 %50, i128* %XMM3.i, align 1, !mcsema_real_eip !58
  store i128 %51, i128* %XMM4.i, align 1, !mcsema_real_eip !58
  store i128 %52, i128* %XMM5.i, align 1, !mcsema_real_eip !58
  store i128 %53, i128* %XMM6.i, align 1, !mcsema_real_eip !58
  store i128 %54, i128* %XMM7.i, align 1, !mcsema_real_eip !58
  store i128 %55, i128* %XMM8.i, align 1, !mcsema_real_eip !58
  store i128 %56, i128* %XMM9.i, align 1, !mcsema_real_eip !58
  store i128 %57, i128* %XMM10.i, align 1, !mcsema_real_eip !58
  store i128 %58, i128* %XMM11.i, align 1, !mcsema_real_eip !58
  store i128 %59, i128* %XMM12.i, align 1, !mcsema_real_eip !58
  store i128 %60, i128* %XMM13.i, align 1, !mcsema_real_eip !58
  store i128 %61, i128* %XMM14.i, align 1, !mcsema_real_eip !58
  store i128 %62, i128* %XMM15.i, align 1, !mcsema_real_eip !58
  store i64 %63, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !58
  store i64 %64, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !58
  call void @llvm.lifetime.end(i64 128, i8* %109)
  br label %sub_0.exit

block_0xd5.i.i:                                   ; preds = %block_0xaa.i.i, %block_0xc0.i.i
  %232 = load i32* %122, align 4, !mcsema_real_eip !59
  %233 = add i32 %232, -1
  store i32 %233, i32* %122, align 4, !mcsema_real_eip !60
  %234 = add i64 %3, -148, !mcsema_real_eip !61
  %235 = inttoptr i64 %234 to i32*
  %236 = load i32* %235, align 4, !mcsema_real_eip !61
  %237 = add i32 %236, 60
  store i32 %237, i32* %235, align 4, !mcsema_real_eip !62
  %238 = add i64 %3, -180, !mcsema_real_eip !42
  %239 = inttoptr i64 %238 to i32*
  %240 = load i32* %239, align 4, !mcsema_real_eip !42
  %241 = sub i32 %237, %240, !mcsema_real_eip !43
  %242 = add i64 %3, -212, !mcsema_real_eip !44
  %243 = inttoptr i64 %242 to i32*
  store i32 %241, i32* %243, align 4, !mcsema_real_eip !44
  %244 = load i32* %122, align 4, !mcsema_real_eip !45
  %245 = load i32* %132, align 4, !mcsema_real_eip !46
  %246 = zext i32 %245 to i64, !mcsema_real_eip !46
  %247 = sub i32 %244, %245, !mcsema_real_eip !47
  %248 = xor i32 %247, %244, !mcsema_real_eip !47
  %249 = xor i32 %248, %245, !mcsema_real_eip !47
  %250 = and i32 %249, 16, !mcsema_real_eip !47
  %251 = icmp ne i32 %250, 0, !mcsema_real_eip !47
  %252 = trunc i32 %247 to i8, !mcsema_real_eip !47
  %253 = tail call i8 @llvm.ctpop.i8(i8 %252) #0, !mcsema_real_eip !47
  %254 = and i8 %253, 1
  %255 = icmp eq i8 %254, 0
  %256 = icmp eq i32 %244, %245
  %257 = icmp slt i32 %247, 0
  %258 = icmp ult i32 %244, %245, !mcsema_real_eip !47
  %259 = xor i32 %245, %244, !mcsema_real_eip !47
  %260 = and i32 %248, %259, !mcsema_real_eip !47
  %261 = icmp slt i32 %260, 0
  %262 = add i64 %3, -208, !mcsema_real_eip !48
  %263 = inttoptr i64 %262 to i32*
  store i32 %247, i32* %263, align 4, !mcsema_real_eip !48
  %264 = add i64 %3, -128, !mcsema_real_eip !49
  %265 = inttoptr i64 %264 to i32*
  store i32 %247, i32* %265, align 4, !mcsema_real_eip !49
  %266 = add i64 %3, -216, !mcsema_real_eip !50
  %267 = inttoptr i64 %266 to i64*, !mcsema_real_eip !50
  %268 = load i64* %267, align 8, !mcsema_real_eip !50
  %269 = add i64 %3, -136, !mcsema_real_eip !51
  %270 = inttoptr i64 %269 to i64*, !mcsema_real_eip !51
  store i64 %268, i64* %270, align 8, !mcsema_real_eip !51
  %271 = load i32* %265, align 4, !mcsema_real_eip !52
  %272 = add i64 %3, -224, !mcsema_real_eip !53
  %273 = inttoptr i64 %272 to i32*
  store i32 %271, i32* %273, align 4, !mcsema_real_eip !53
  %274 = load i64* %270, align 8, !mcsema_real_eip !54
  %275 = add i64 %3, -232, !mcsema_real_eip !55
  %276 = inttoptr i64 %275 to i64*, !mcsema_real_eip !55
  store i64 %274, i64* %276, align 8, !mcsema_real_eip !55
  %277 = load i32* %273, align 4, !mcsema_real_eip !56
  %278 = zext i32 %277 to i64, !mcsema_real_eip !56
  %279 = load i64* %111, align 8, !mcsema_real_eip !57
  store i64 %274, i64* %RAX.i, align 8, !mcsema_real_eip !58
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !58
  store i64 %246, i64* %RCX.i, align 8, !mcsema_real_eip !58
  store i64 %278, i64* %RDX.i, align 8, !mcsema_real_eip !58
  store i64 %120, i64* %RSI.i, align 8, !mcsema_real_eip !58
  store i64 %116, i64* %RDI.i, align 8, !mcsema_real_eip !58
  store i64 %67, i64* %RSP.i, align 8, !mcsema_real_eip !58
  store i64 %279, i64* %RBP.i, align 8, !mcsema_real_eip !58
  store i64 %5, i64* %R8.i, align 8, !mcsema_real_eip !58
  store i64 %6, i64* %R9.i, align 8, !mcsema_real_eip !58
  store i64 %7, i64* %R10.i, align 8, !mcsema_real_eip !58
  store i64 %8, i64* %R11.i, align 8, !mcsema_real_eip !58
  store i64 %9, i64* %R12.i, align 8, !mcsema_real_eip !58
  store i64 %10, i64* %R13.i, align 8, !mcsema_real_eip !58
  store i64 %11, i64* %R14.i, align 8, !mcsema_real_eip !58
  store i64 %12, i64* %R15.i, align 8, !mcsema_real_eip !58
  store i64 %13, i64* %RIP.i, align 8, !mcsema_real_eip !58
  store i1 %258, i1* %CF.i, align 1, !mcsema_real_eip !58
  store i1 %255, i1* %PF.i, align 1, !mcsema_real_eip !58
  store i1 %251, i1* %AF.i, align 1, !mcsema_real_eip !58
  store i1 %256, i1* %ZF.i, align 1, !mcsema_real_eip !58
  store i1 %257, i1* %SF.i, align 1, !mcsema_real_eip !58
  store i1 %261, i1* %OF.i, align 1, !mcsema_real_eip !58
  store i1 %14, i1* %DF.i, align 1, !mcsema_real_eip !58
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %109, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !58
  store i1 %17, i1* %FPU_B.i, align 1, !mcsema_real_eip !58
  store i1 %18, i1* %FPU_C3.i, align 1, !mcsema_real_eip !58
  store i3 %19, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !58
  store i1 %20, i1* %FPU_C2.i, align 1, !mcsema_real_eip !58
  store i1 %21, i1* %FPU_C1.i, align 1, !mcsema_real_eip !58
  store i1 %22, i1* %FPU_C0.i, align 1, !mcsema_real_eip !58
  store i1 %23, i1* %FPU_ES.i, align 1, !mcsema_real_eip !58
  store i1 %24, i1* %FPU_SF.i, align 1, !mcsema_real_eip !58
  store i1 %25, i1* %FPU_PE.i, align 1, !mcsema_real_eip !58
  store i1 %26, i1* %FPU_UE.i, align 1, !mcsema_real_eip !58
  store i1 %27, i1* %FPU_OE.i, align 1, !mcsema_real_eip !58
  store i1 %28, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !58
  store i1 %29, i1* %FPU_DE.i, align 1, !mcsema_real_eip !58
  store i1 %30, i1* %FPU_IE.i, align 1, !mcsema_real_eip !58
  store i1 %31, i1* %FPU_X.i, align 1, !mcsema_real_eip !58
  store i2 %32, i2* %FPU_RC.i, align 1, !mcsema_real_eip !58
  store i2 %33, i2* %FPU_PC.i, align 1, !mcsema_real_eip !58
  store i1 %34, i1* %FPU_PM.i, align 1, !mcsema_real_eip !58
  store i1 %35, i1* %FPU_UM.i, align 1, !mcsema_real_eip !58
  store i1 %36, i1* %FPU_OM.i, align 1, !mcsema_real_eip !58
  store i1 %37, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !58
  store i1 %38, i1* %FPU_DM.i, align 1, !mcsema_real_eip !58
  store i1 %39, i1* %FPU_IM.i, align 1, !mcsema_real_eip !58
  store i64 %42, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !58
  store i64 %44, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !58
  store i16 %45, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !58
  store i64 %46, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !58
  store i128 %47, i128* %XMM0.i, align 1, !mcsema_real_eip !58
  store i128 %48, i128* %XMM1.i, align 1, !mcsema_real_eip !58
  store i128 %49, i128* %XMM2.i, align 1, !mcsema_real_eip !58
  store i128 %50, i128* %XMM3.i, align 1, !mcsema_real_eip !58
  store i128 %51, i128* %XMM4.i, align 1, !mcsema_real_eip !58
  store i128 %52, i128* %XMM5.i, align 1, !mcsema_real_eip !58
  store i128 %53, i128* %XMM6.i, align 1, !mcsema_real_eip !58
  store i128 %54, i128* %XMM7.i, align 1, !mcsema_real_eip !58
  store i128 %55, i128* %XMM8.i, align 1, !mcsema_real_eip !58
  store i128 %56, i128* %XMM9.i, align 1, !mcsema_real_eip !58
  store i128 %57, i128* %XMM10.i, align 1, !mcsema_real_eip !58
  store i128 %58, i128* %XMM11.i, align 1, !mcsema_real_eip !58
  store i128 %59, i128* %XMM12.i, align 1, !mcsema_real_eip !58
  store i128 %60, i128* %XMM13.i, align 1, !mcsema_real_eip !58
  store i128 %61, i128* %XMM14.i, align 1, !mcsema_real_eip !58
  store i128 %62, i128* %XMM15.i, align 1, !mcsema_real_eip !58
  store i64 %63, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !58
  store i64 %64, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !58
  call void @llvm.lifetime.end(i64 128, i8* %109)
  br label %sub_0.exit

sub_0.exit:                                       ; preds = %block_0xd5.i.i, %block_0xeb.i.i
  %280 = phi i64 [ %279, %block_0xd5.i.i ], [ %231, %block_0xeb.i.i ]
  %281 = phi i64 [ %278, %block_0xd5.i.i ], [ %230, %block_0xeb.i.i ]
  %282 = phi i64 [ %274, %block_0xd5.i.i ], [ %226, %block_0xeb.i.i ]
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %16, i32 128, i32 4, i1 false) #0, !mcsema_real_eip !16
  %283 = add i64 %280, -88, !mcsema_real_eip !63
  %284 = trunc i64 %281 to i32, !mcsema_real_eip !63
  %285 = inttoptr i64 %283 to i32*
  store i32 %284, i32* %285, align 4, !mcsema_real_eip !63
  %286 = add i64 %280, -96, !mcsema_real_eip !64
  %287 = inttoptr i64 %286 to i64*, !mcsema_real_eip !64
  store i64 %282, i64* %287, align 8, !mcsema_real_eip !64
  %288 = add i64 %280, -48, !mcsema_real_eip !65
  %289 = inttoptr i64 %288 to i64*, !mcsema_real_eip !65
  store i64 %282, i64* %289, align 8, !mcsema_real_eip !65
  %290 = load i32* %285, align 4, !mcsema_real_eip !66
  %291 = add i64 %280, -40, !mcsema_real_eip !67
  %292 = inttoptr i64 %291 to i32*
  store i32 %290, i32* %292, align 4, !mcsema_real_eip !67
  %293 = inttoptr i64 %288 to i32*
  %294 = load i32* %293, align 4, !mcsema_real_eip !68
  %295 = add i64 %280, -44, !mcsema_real_eip !69
  %296 = inttoptr i64 %295 to i32*
  %297 = load i32* %296, align 4, !mcsema_real_eip !69
  %298 = add i32 %294, %290
  %299 = add i32 %298, %297
  %300 = zext i32 %299 to i64, !mcsema_real_eip !70
  %uadd210.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %67, i64 96) #0
  %301 = extractvalue { i64, i1 } %uadd210.i, 0
  %302 = xor i64 %301, %67, !mcsema_real_eip !71
  %303 = and i64 %302, 16, !mcsema_real_eip !71
  %304 = icmp ne i64 %303, 0, !mcsema_real_eip !71
  %305 = icmp slt i64 %301, 0
  %306 = icmp eq i64 %301, 0, !mcsema_real_eip !71
  %307 = add i64 %3, 9223372036854775704
  %308 = and i64 %302, %307, !mcsema_real_eip !71
  %309 = icmp slt i64 %308, 0
  %310 = trunc i64 %301 to i8, !mcsema_real_eip !71
  %311 = tail call i8 @llvm.ctpop.i8(i8 %310) #0, !mcsema_real_eip !71
  %312 = and i8 %311, 1
  %313 = icmp eq i8 %312, 0
  %314 = extractvalue { i64, i1 } %uadd210.i, 1
  %315 = inttoptr i64 %301 to i64*, !mcsema_real_eip !72
  %316 = load i64* %315, align 8, !mcsema_real_eip !72
  %317 = add i64 %301, 16, !mcsema_real_eip !73
  store i64 %300, i64* %RAX.i, align 8, !mcsema_real_eip !73
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !73
  store i64 %300, i64* %RCX.i, align 8, !mcsema_real_eip !73
  store i64 %281, i64* %RDX.i, align 8, !mcsema_real_eip !73
  store i64 %120, i64* %RSI.i, align 8, !mcsema_real_eip !73
  store i64 %116, i64* %RDI.i, align 8, !mcsema_real_eip !73
  store i64 %317, i64* %RSP.i, align 8, !mcsema_real_eip !73
  store i64 %316, i64* %RBP.i, align 8, !mcsema_real_eip !73
  store i64 %5, i64* %R8.i, align 8, !mcsema_real_eip !73
  store i64 %6, i64* %R9.i, align 8, !mcsema_real_eip !73
  store i64 %7, i64* %R10.i, align 8, !mcsema_real_eip !73
  store i64 %8, i64* %R11.i, align 8, !mcsema_real_eip !73
  store i64 %9, i64* %R12.i, align 8, !mcsema_real_eip !73
  store i64 %10, i64* %R13.i, align 8, !mcsema_real_eip !73
  store i64 %11, i64* %R14.i, align 8, !mcsema_real_eip !73
  store i64 %12, i64* %R15.i, align 8, !mcsema_real_eip !73
  store i64 %13, i64* %RIP.i, align 8, !mcsema_real_eip !73
  store i1 %314, i1* %CF.i, align 1, !mcsema_real_eip !73
  store i1 %313, i1* %PF.i, align 1, !mcsema_real_eip !73
  store i1 %304, i1* %AF.i, align 1, !mcsema_real_eip !73
  store i1 %306, i1* %ZF.i, align 1, !mcsema_real_eip !73
  store i1 %305, i1* %SF.i, align 1, !mcsema_real_eip !73
  store i1 %309, i1* %OF.i, align 1, !mcsema_real_eip !73
  store i1 %14, i1* %DF.i, align 1, !mcsema_real_eip !73
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %1, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !73
  store i1 %17, i1* %FPU_B.i, align 1, !mcsema_real_eip !73
  store i1 %18, i1* %FPU_C3.i, align 1, !mcsema_real_eip !73
  store i3 %19, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !73
  store i1 %20, i1* %FPU_C2.i, align 1, !mcsema_real_eip !73
  store i1 %21, i1* %FPU_C1.i, align 1, !mcsema_real_eip !73
  store i1 %22, i1* %FPU_C0.i, align 1, !mcsema_real_eip !73
  store i1 %23, i1* %FPU_ES.i, align 1, !mcsema_real_eip !73
  store i1 %24, i1* %FPU_SF.i, align 1, !mcsema_real_eip !73
  store i1 %25, i1* %FPU_PE.i, align 1, !mcsema_real_eip !73
  store i1 %26, i1* %FPU_UE.i, align 1, !mcsema_real_eip !73
  store i1 %27, i1* %FPU_OE.i, align 1, !mcsema_real_eip !73
  store i1 %28, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !73
  store i1 %29, i1* %FPU_DE.i, align 1, !mcsema_real_eip !73
  store i1 %30, i1* %FPU_IE.i, align 1, !mcsema_real_eip !73
  store i1 %31, i1* %FPU_X.i, align 1, !mcsema_real_eip !73
  store i2 %32, i2* %FPU_RC.i, align 1, !mcsema_real_eip !73
  store i2 %33, i2* %FPU_PC.i, align 1, !mcsema_real_eip !73
  store i1 %34, i1* %FPU_PM.i, align 1, !mcsema_real_eip !73
  store i1 %35, i1* %FPU_UM.i, align 1, !mcsema_real_eip !73
  store i1 %36, i1* %FPU_OM.i, align 1, !mcsema_real_eip !73
  store i1 %37, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !73
  store i1 %38, i1* %FPU_DM.i, align 1, !mcsema_real_eip !73
  store i1 %39, i1* %FPU_IM.i, align 1, !mcsema_real_eip !73
  store i64 %42, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !73
  store i64 %44, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !73
  store i16 %45, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !73
  store i64 %46, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !73
  store i128 %47, i128* %XMM0.i, align 1, !mcsema_real_eip !73
  store i128 %48, i128* %XMM1.i, align 1, !mcsema_real_eip !73
  store i128 %49, i128* %XMM2.i, align 1, !mcsema_real_eip !73
  store i128 %50, i128* %XMM3.i, align 1, !mcsema_real_eip !73
  store i128 %51, i128* %XMM4.i, align 1, !mcsema_real_eip !73
  store i128 %52, i128* %XMM5.i, align 1, !mcsema_real_eip !73
  store i128 %53, i128* %XMM6.i, align 1, !mcsema_real_eip !73
  store i128 %54, i128* %XMM7.i, align 1, !mcsema_real_eip !73
  store i128 %55, i128* %XMM8.i, align 1, !mcsema_real_eip !73
  store i128 %56, i128* %XMM9.i, align 1, !mcsema_real_eip !73
  store i128 %57, i128* %XMM10.i, align 1, !mcsema_real_eip !73
  store i128 %58, i128* %XMM11.i, align 1, !mcsema_real_eip !73
  store i128 %59, i128* %XMM12.i, align 1, !mcsema_real_eip !73
  store i128 %60, i128* %XMM13.i, align 1, !mcsema_real_eip !73
  store i128 %61, i128* %XMM14.i, align 1, !mcsema_real_eip !73
  store i128 %62, i128* %XMM15.i, align 1, !mcsema_real_eip !73
  store i64 %63, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !73
  store i64 %64, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !73
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
