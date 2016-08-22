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
  %67 = add i64 %3, -40
  %68 = xor i64 %67, %65, !mcsema_real_eip !4
  %69 = and i64 %68, 16, !mcsema_real_eip !4
  %70 = icmp ne i64 %69, 0, !mcsema_real_eip !4
  %71 = trunc i64 %67 to i8, !mcsema_real_eip !4
  %72 = tail call i8 @llvm.ctpop.i8(i8 %71) #0, !mcsema_real_eip !4
  %73 = and i8 %72, 1
  %74 = icmp eq i8 %73, 0
  %75 = icmp eq i64 %67, 0, !mcsema_real_eip !4
  %76 = icmp slt i64 %67, 0
  %77 = icmp ult i64 %65, 32, !mcsema_real_eip !4
  %78 = and i64 %68, %65, !mcsema_real_eip !4
  %79 = icmp slt i64 %78, 0
  %80 = inttoptr i64 %67 to i64*, !mcsema_real_eip !5
  %81 = load i64* %80, align 8, !mcsema_real_eip !5
  %82 = add i64 %3, -32, !mcsema_real_eip !6
  %83 = inttoptr i64 %82 to i32*
  %84 = load i32* %83, align 4, !mcsema_real_eip !6
  %85 = zext i32 %84 to i64, !mcsema_real_eip !6
  %86 = add i64 %3, -24, !mcsema_real_eip !7
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !7
  %88 = load i64* %87, align 8, !mcsema_real_eip !7
  %89 = add i64 %3, -16, !mcsema_real_eip !8
  %90 = inttoptr i64 %89 to i32*
  %91 = load i32* %90, align 4, !mcsema_real_eip !8
  %92 = zext i32 %91 to i64, !mcsema_real_eip !8
  %93 = add i64 %3, -48
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !9
  store i64 -4981261766360305936, i64* %94, align 8, !mcsema_real_eip !9
  store i64 %92, i64* %RAX.i, align 8, !mcsema_real_eip !9
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !9
  store i64 %85, i64* %RCX.i, align 8, !mcsema_real_eip !9
  store i64 %81, i64* %RDX.i, align 8, !mcsema_real_eip !9
  store i64 %92, i64* %RSI.i, align 8, !mcsema_real_eip !9
  store i64 %88, i64* %RDI.i, align 8, !mcsema_real_eip !9
  store i64 %93, i64* %RSP.i, align 8, !mcsema_real_eip !9
  store i64 %65, i64* %RBP.i, align 8, !mcsema_real_eip !9
  store i64 %5, i64* %R8.i, align 8, !mcsema_real_eip !9
  store i64 %6, i64* %R9.i, align 8, !mcsema_real_eip !9
  store i64 %7, i64* %R10.i, align 8, !mcsema_real_eip !9
  store i64 %8, i64* %R11.i, align 8, !mcsema_real_eip !9
  store i64 %9, i64* %R12.i, align 8, !mcsema_real_eip !9
  store i64 %10, i64* %R13.i, align 8, !mcsema_real_eip !9
  store i64 %11, i64* %R14.i, align 8, !mcsema_real_eip !9
  store i64 %12, i64* %R15.i, align 8, !mcsema_real_eip !9
  store i64 %13, i64* %RIP.i, align 8, !mcsema_real_eip !9
  store i1 %77, i1* %CF.i, align 1, !mcsema_real_eip !9
  store i1 %74, i1* %PF.i, align 1, !mcsema_real_eip !9
  store i1 %70, i1* %AF.i, align 1, !mcsema_real_eip !9
  store i1 %75, i1* %ZF.i, align 1, !mcsema_real_eip !9
  store i1 %76, i1* %SF.i, align 1, !mcsema_real_eip !9
  store i1 %79, i1* %OF.i, align 1, !mcsema_real_eip !9
  store i1 %14, i1* %DF.i, align 1, !mcsema_real_eip !9
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %1, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !9
  store i1 %17, i1* %FPU_B.i, align 1, !mcsema_real_eip !9
  store i1 %18, i1* %FPU_C3.i, align 1, !mcsema_real_eip !9
  store i3 %19, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !9
  store i1 %20, i1* %FPU_C2.i, align 1, !mcsema_real_eip !9
  store i1 %21, i1* %FPU_C1.i, align 1, !mcsema_real_eip !9
  store i1 %22, i1* %FPU_C0.i, align 1, !mcsema_real_eip !9
  store i1 %23, i1* %FPU_ES.i, align 1, !mcsema_real_eip !9
  store i1 %24, i1* %FPU_SF.i, align 1, !mcsema_real_eip !9
  store i1 %25, i1* %FPU_PE.i, align 1, !mcsema_real_eip !9
  store i1 %26, i1* %FPU_UE.i, align 1, !mcsema_real_eip !9
  store i1 %27, i1* %FPU_OE.i, align 1, !mcsema_real_eip !9
  store i1 %28, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !9
  store i1 %29, i1* %FPU_DE.i, align 1, !mcsema_real_eip !9
  store i1 %30, i1* %FPU_IE.i, align 1, !mcsema_real_eip !9
  store i1 %31, i1* %FPU_X.i, align 1, !mcsema_real_eip !9
  store i2 %32, i2* %FPU_RC.i, align 1, !mcsema_real_eip !9
  store i2 %33, i2* %FPU_PC.i, align 1, !mcsema_real_eip !9
  store i1 %34, i1* %FPU_PM.i, align 1, !mcsema_real_eip !9
  store i1 %35, i1* %FPU_UM.i, align 1, !mcsema_real_eip !9
  store i1 %36, i1* %FPU_OM.i, align 1, !mcsema_real_eip !9
  store i1 %37, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !9
  store i1 %38, i1* %FPU_DM.i, align 1, !mcsema_real_eip !9
  store i1 %39, i1* %FPU_IM.i, align 1, !mcsema_real_eip !9
  store i64 %42, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !9
  store i64 %44, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !9
  store i16 %45, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !9
  store i64 %46, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !9
  store i128 %47, i128* %XMM0.i, align 1, !mcsema_real_eip !9
  store i128 %48, i128* %XMM1.i, align 1, !mcsema_real_eip !9
  store i128 %49, i128* %XMM2.i, align 1, !mcsema_real_eip !9
  store i128 %50, i128* %XMM3.i, align 1, !mcsema_real_eip !9
  store i128 %51, i128* %XMM4.i, align 1, !mcsema_real_eip !9
  store i128 %52, i128* %XMM5.i, align 1, !mcsema_real_eip !9
  store i128 %53, i128* %XMM6.i, align 1, !mcsema_real_eip !9
  store i128 %54, i128* %XMM7.i, align 1, !mcsema_real_eip !9
  store i128 %55, i128* %XMM8.i, align 1, !mcsema_real_eip !9
  store i128 %56, i128* %XMM9.i, align 1, !mcsema_real_eip !9
  store i128 %57, i128* %XMM10.i, align 1, !mcsema_real_eip !9
  store i128 %58, i128* %XMM11.i, align 1, !mcsema_real_eip !9
  store i128 %59, i128* %XMM12.i, align 1, !mcsema_real_eip !9
  store i128 %60, i128* %XMM13.i, align 1, !mcsema_real_eip !9
  store i128 %61, i128* %XMM14.i, align 1, !mcsema_real_eip !9
  store i128 %62, i128* %XMM15.i, align 1, !mcsema_real_eip !9
  store i64 %63, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !9
  store i64 %64, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !9
  %95 = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %95)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %95, i8* %1, i32 128, i32 16, i1 false) #0
  %96 = add i64 %3, -56
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !2
  store i64 %65, i64* %97, align 8, !mcsema_real_eip !2
  %98 = add i64 %3, -104, !mcsema_real_eip !10
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !10
  store i64 %88, i64* %99, align 8, !mcsema_real_eip !10
  %100 = add i64 %3, -96, !mcsema_real_eip !11
  %101 = inttoptr i64 %100 to i32*
  store i32 %91, i32* %101, align 4, !mcsema_real_eip !11
  %102 = add i64 %3, -120, !mcsema_real_eip !12
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !12
  store i64 %81, i64* %103, align 8, !mcsema_real_eip !12
  %104 = add i64 %3, -112, !mcsema_real_eip !13
  %105 = inttoptr i64 %104 to i32*
  store i32 %84, i32* %105, align 4, !mcsema_real_eip !13
  %106 = inttoptr i64 %102 to i32*
  %107 = load i32* %106, align 4, !mcsema_real_eip !14
  %108 = inttoptr i64 %98 to i32*
  %109 = load i32* %108, align 4, !mcsema_real_eip !15
  %110 = sub i32 %107, %109, !mcsema_real_eip !16
  %111 = xor i32 %110, %107, !mcsema_real_eip !16
  %112 = icmp eq i32 %107, %109
  %113 = icmp slt i32 %110, 0
  %114 = xor i32 %109, %107, !mcsema_real_eip !16
  %115 = and i32 %111, %114, !mcsema_real_eip !16
  %116 = icmp slt i32 %115, 0
  %117 = xor i1 %113, %116
  %118 = or i1 %112, %117, !mcsema_real_eip !17
  br i1 %118, label %block_0x57.i.i, label %block_0x45.i.i, !mcsema_real_eip !17

block_0x57.i.i:                                   ; preds = %driverBlockRaw
  %119 = sub i32 %109, %107, !mcsema_real_eip !18
  %120 = add i64 %3, -88, !mcsema_real_eip !19
  %121 = inttoptr i64 %120 to i32*
  store i32 %119, i32* %121, align 4, !mcsema_real_eip !19
  %122 = add i64 %3, -116, !mcsema_real_eip !20
  %123 = inttoptr i64 %122 to i32*
  %124 = load i32* %123, align 4, !mcsema_real_eip !20
  %125 = add i64 %3, -100, !mcsema_real_eip !21
  %126 = inttoptr i64 %125 to i32*
  %127 = load i32* %126, align 4, !mcsema_real_eip !21
  %128 = sub i32 %124, %127, !mcsema_real_eip !22
  %129 = xor i32 %128, %124, !mcsema_real_eip !22
  %130 = icmp eq i32 %124, %127
  %131 = icmp slt i32 %128, 0
  %132 = xor i32 %127, %124, !mcsema_real_eip !22
  %133 = and i32 %129, %132, !mcsema_real_eip !22
  %134 = icmp slt i32 %133, 0
  %135 = xor i1 %131, %134
  %136 = or i1 %130, %135, !mcsema_real_eip !23
  br i1 %136, label %block_0x80.i.i, label %block_0x6e.i.i, !mcsema_real_eip !23

block_0x45.i.i:                                   ; preds = %driverBlockRaw
  %137 = add i64 %3, -100, !mcsema_real_eip !24
  %138 = inttoptr i64 %137 to i32*
  %139 = load i32* %138, align 4, !mcsema_real_eip !24
  %140 = add i32 %139, -1
  store i32 %140, i32* %138, align 4, !mcsema_real_eip !25
  %141 = load i32* %108, align 4, !mcsema_real_eip !26
  %142 = add i32 %141, 60
  store i32 %142, i32* %108, align 4, !mcsema_real_eip !27
  %143 = load i32* %106, align 4, !mcsema_real_eip !28
  %144 = sub i32 %142, %143, !mcsema_real_eip !18
  %145 = add i64 %3, -88, !mcsema_real_eip !19
  %146 = inttoptr i64 %145 to i32*
  store i32 %144, i32* %146, align 4, !mcsema_real_eip !19
  %147 = add i64 %3, -116, !mcsema_real_eip !20
  %148 = inttoptr i64 %147 to i32*
  %149 = load i32* %148, align 4, !mcsema_real_eip !20
  %150 = load i32* %138, align 4, !mcsema_real_eip !21
  %151 = sub i32 %149, %150, !mcsema_real_eip !22
  %152 = xor i32 %151, %149, !mcsema_real_eip !22
  %153 = icmp eq i32 %149, %150
  %154 = icmp slt i32 %151, 0
  %155 = xor i32 %150, %149, !mcsema_real_eip !22
  %156 = and i32 %152, %155, !mcsema_real_eip !22
  %157 = icmp slt i32 %156, 0
  %158 = xor i1 %154, %157
  %159 = or i1 %153, %158, !mcsema_real_eip !23
  br i1 %159, label %block_0x80.i.i, label %block_0x6e.i.i, !mcsema_real_eip !23

block_0x80.i.i:                                   ; preds = %block_0x45.i.i, %block_0x57.i.i
  %160 = add i64 %3, -100, !mcsema_real_eip !29
  %161 = inttoptr i64 %160 to i32*
  %162 = load i32* %161, align 4, !mcsema_real_eip !29
  %163 = add i64 %3, -116, !mcsema_real_eip !30
  %164 = inttoptr i64 %163 to i32*
  %165 = load i32* %164, align 4, !mcsema_real_eip !30
  %166 = sub i32 %162, %165, !mcsema_real_eip !31
  %167 = add i64 %3, -84, !mcsema_real_eip !32
  %168 = inttoptr i64 %167 to i32*
  store i32 %166, i32* %168, align 4, !mcsema_real_eip !32
  %169 = load i32* %101, align 4, !mcsema_real_eip !33
  %170 = load i32* %105, align 4, !mcsema_real_eip !34
  %171 = sub i32 %169, %170, !mcsema_real_eip !35
  %172 = xor i32 %171, %169, !mcsema_real_eip !35
  %173 = xor i32 %172, %170, !mcsema_real_eip !35
  %174 = and i32 %173, 16, !mcsema_real_eip !35
  %175 = icmp ne i32 %174, 0, !mcsema_real_eip !35
  %176 = trunc i32 %171 to i8, !mcsema_real_eip !35
  %177 = tail call i8 @llvm.ctpop.i8(i8 %176) #0, !mcsema_real_eip !35
  %178 = and i8 %177, 1
  %179 = icmp eq i8 %178, 0
  %180 = icmp eq i32 %169, %170
  %181 = icmp slt i32 %171, 0
  %182 = icmp ult i32 %169, %170, !mcsema_real_eip !35
  %183 = xor i32 %170, %169, !mcsema_real_eip !35
  %184 = and i32 %172, %183, !mcsema_real_eip !35
  %185 = icmp slt i32 %184, 0
  %186 = add i64 %3, -80, !mcsema_real_eip !36
  %187 = inttoptr i64 %186 to i32*
  store i32 %171, i32* %187, align 4, !mcsema_real_eip !36
  %188 = add i64 %3, -88, !mcsema_real_eip !37
  %189 = inttoptr i64 %188 to i64*, !mcsema_real_eip !37
  %190 = load i64* %189, align 8, !mcsema_real_eip !37
  %191 = add i64 %3, -72, !mcsema_real_eip !38
  %192 = inttoptr i64 %191 to i64*, !mcsema_real_eip !38
  store i64 %190, i64* %192, align 8, !mcsema_real_eip !38
  %193 = load i32* %187, align 4, !mcsema_real_eip !39
  %194 = add i64 %3, -64, !mcsema_real_eip !40
  %195 = inttoptr i64 %194 to i32*
  store i32 %193, i32* %195, align 4, !mcsema_real_eip !40
  %196 = load i64* %192, align 8, !mcsema_real_eip !41
  %197 = zext i32 %193 to i64, !mcsema_real_eip !42
  %198 = load i64* %97, align 8, !mcsema_real_eip !43
  store i64 %196, i64* %RAX.i, align 8, !mcsema_real_eip !44
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !44
  store i64 %85, i64* %RCX.i, align 8, !mcsema_real_eip !44
  store i64 %197, i64* %RDX.i, align 8, !mcsema_real_eip !44
  store i64 %92, i64* %RSI.i, align 8, !mcsema_real_eip !44
  store i64 %88, i64* %RDI.i, align 8, !mcsema_real_eip !44
  store i64 %67, i64* %RSP.i, align 8, !mcsema_real_eip !44
  store i64 %198, i64* %RBP.i, align 8, !mcsema_real_eip !44
  store i64 %5, i64* %R8.i, align 8, !mcsema_real_eip !44
  store i64 %6, i64* %R9.i, align 8, !mcsema_real_eip !44
  store i64 %7, i64* %R10.i, align 8, !mcsema_real_eip !44
  store i64 %8, i64* %R11.i, align 8, !mcsema_real_eip !44
  store i64 %9, i64* %R12.i, align 8, !mcsema_real_eip !44
  store i64 %10, i64* %R13.i, align 8, !mcsema_real_eip !44
  store i64 %11, i64* %R14.i, align 8, !mcsema_real_eip !44
  store i64 %12, i64* %R15.i, align 8, !mcsema_real_eip !44
  store i64 %13, i64* %RIP.i, align 8, !mcsema_real_eip !44
  store i1 %182, i1* %CF.i, align 1, !mcsema_real_eip !44
  store i1 %179, i1* %PF.i, align 1, !mcsema_real_eip !44
  store i1 %175, i1* %AF.i, align 1, !mcsema_real_eip !44
  store i1 %180, i1* %ZF.i, align 1, !mcsema_real_eip !44
  store i1 %181, i1* %SF.i, align 1, !mcsema_real_eip !44
  store i1 %185, i1* %OF.i, align 1, !mcsema_real_eip !44
  store i1 %14, i1* %DF.i, align 1, !mcsema_real_eip !44
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %95, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !44
  store i1 %17, i1* %FPU_B.i, align 1, !mcsema_real_eip !44
  store i1 %18, i1* %FPU_C3.i, align 1, !mcsema_real_eip !44
  store i3 %19, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !44
  store i1 %20, i1* %FPU_C2.i, align 1, !mcsema_real_eip !44
  store i1 %21, i1* %FPU_C1.i, align 1, !mcsema_real_eip !44
  store i1 %22, i1* %FPU_C0.i, align 1, !mcsema_real_eip !44
  store i1 %23, i1* %FPU_ES.i, align 1, !mcsema_real_eip !44
  store i1 %24, i1* %FPU_SF.i, align 1, !mcsema_real_eip !44
  store i1 %25, i1* %FPU_PE.i, align 1, !mcsema_real_eip !44
  store i1 %26, i1* %FPU_UE.i, align 1, !mcsema_real_eip !44
  store i1 %27, i1* %FPU_OE.i, align 1, !mcsema_real_eip !44
  store i1 %28, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !44
  store i1 %29, i1* %FPU_DE.i, align 1, !mcsema_real_eip !44
  store i1 %30, i1* %FPU_IE.i, align 1, !mcsema_real_eip !44
  store i1 %31, i1* %FPU_X.i, align 1, !mcsema_real_eip !44
  store i2 %32, i2* %FPU_RC.i, align 1, !mcsema_real_eip !44
  store i2 %33, i2* %FPU_PC.i, align 1, !mcsema_real_eip !44
  store i1 %34, i1* %FPU_PM.i, align 1, !mcsema_real_eip !44
  store i1 %35, i1* %FPU_UM.i, align 1, !mcsema_real_eip !44
  store i1 %36, i1* %FPU_OM.i, align 1, !mcsema_real_eip !44
  store i1 %37, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !44
  store i1 %38, i1* %FPU_DM.i, align 1, !mcsema_real_eip !44
  store i1 %39, i1* %FPU_IM.i, align 1, !mcsema_real_eip !44
  store i64 %42, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !44
  store i64 %44, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !44
  store i16 %45, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !44
  store i64 %46, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !44
  store i128 %47, i128* %XMM0.i, align 1, !mcsema_real_eip !44
  store i128 %48, i128* %XMM1.i, align 1, !mcsema_real_eip !44
  store i128 %49, i128* %XMM2.i, align 1, !mcsema_real_eip !44
  store i128 %50, i128* %XMM3.i, align 1, !mcsema_real_eip !44
  store i128 %51, i128* %XMM4.i, align 1, !mcsema_real_eip !44
  store i128 %52, i128* %XMM5.i, align 1, !mcsema_real_eip !44
  store i128 %53, i128* %XMM6.i, align 1, !mcsema_real_eip !44
  store i128 %54, i128* %XMM7.i, align 1, !mcsema_real_eip !44
  store i128 %55, i128* %XMM8.i, align 1, !mcsema_real_eip !44
  store i128 %56, i128* %XMM9.i, align 1, !mcsema_real_eip !44
  store i128 %57, i128* %XMM10.i, align 1, !mcsema_real_eip !44
  store i128 %58, i128* %XMM11.i, align 1, !mcsema_real_eip !44
  store i128 %59, i128* %XMM12.i, align 1, !mcsema_real_eip !44
  store i128 %60, i128* %XMM13.i, align 1, !mcsema_real_eip !44
  store i128 %61, i128* %XMM14.i, align 1, !mcsema_real_eip !44
  store i128 %62, i128* %XMM15.i, align 1, !mcsema_real_eip !44
  store i64 %63, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !44
  store i64 %64, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !44
  call void @llvm.lifetime.end(i64 128, i8* %95)
  br label %sub_0.exit

block_0x6e.i.i:                                   ; preds = %block_0x45.i.i, %block_0x57.i.i
  %199 = load i32* %101, align 4, !mcsema_real_eip !45
  %200 = add i32 %199, -1
  store i32 %200, i32* %101, align 4, !mcsema_real_eip !46
  %201 = add i64 %3, -100, !mcsema_real_eip !47
  %202 = inttoptr i64 %201 to i32*
  %203 = load i32* %202, align 4, !mcsema_real_eip !47
  %204 = add i32 %203, 60
  store i32 %204, i32* %202, align 4, !mcsema_real_eip !48
  %205 = add i64 %3, -116, !mcsema_real_eip !30
  %206 = inttoptr i64 %205 to i32*
  %207 = load i32* %206, align 4, !mcsema_real_eip !30
  %208 = sub i32 %204, %207, !mcsema_real_eip !31
  %209 = add i64 %3, -84, !mcsema_real_eip !32
  %210 = inttoptr i64 %209 to i32*
  store i32 %208, i32* %210, align 4, !mcsema_real_eip !32
  %211 = load i32* %101, align 4, !mcsema_real_eip !33
  %212 = load i32* %105, align 4, !mcsema_real_eip !34
  %213 = sub i32 %211, %212, !mcsema_real_eip !35
  %214 = xor i32 %213, %211, !mcsema_real_eip !35
  %215 = xor i32 %214, %212, !mcsema_real_eip !35
  %216 = and i32 %215, 16, !mcsema_real_eip !35
  %217 = icmp ne i32 %216, 0, !mcsema_real_eip !35
  %218 = trunc i32 %213 to i8, !mcsema_real_eip !35
  %219 = tail call i8 @llvm.ctpop.i8(i8 %218) #0, !mcsema_real_eip !35
  %220 = and i8 %219, 1
  %221 = icmp eq i8 %220, 0
  %222 = icmp eq i32 %211, %212
  %223 = icmp slt i32 %213, 0
  %224 = icmp ult i32 %211, %212, !mcsema_real_eip !35
  %225 = xor i32 %212, %211, !mcsema_real_eip !35
  %226 = and i32 %214, %225, !mcsema_real_eip !35
  %227 = icmp slt i32 %226, 0
  %228 = add i64 %3, -80, !mcsema_real_eip !36
  %229 = inttoptr i64 %228 to i32*
  store i32 %213, i32* %229, align 4, !mcsema_real_eip !36
  %230 = add i64 %3, -88, !mcsema_real_eip !37
  %231 = inttoptr i64 %230 to i64*, !mcsema_real_eip !37
  %232 = load i64* %231, align 8, !mcsema_real_eip !37
  %233 = add i64 %3, -72, !mcsema_real_eip !38
  %234 = inttoptr i64 %233 to i64*, !mcsema_real_eip !38
  store i64 %232, i64* %234, align 8, !mcsema_real_eip !38
  %235 = load i32* %229, align 4, !mcsema_real_eip !39
  %236 = add i64 %3, -64, !mcsema_real_eip !40
  %237 = inttoptr i64 %236 to i32*
  store i32 %235, i32* %237, align 4, !mcsema_real_eip !40
  %238 = load i64* %234, align 8, !mcsema_real_eip !41
  %239 = zext i32 %235 to i64, !mcsema_real_eip !42
  %240 = load i64* %97, align 8, !mcsema_real_eip !43
  store i64 %238, i64* %RAX.i, align 8, !mcsema_real_eip !44
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !44
  store i64 %85, i64* %RCX.i, align 8, !mcsema_real_eip !44
  store i64 %239, i64* %RDX.i, align 8, !mcsema_real_eip !44
  store i64 %92, i64* %RSI.i, align 8, !mcsema_real_eip !44
  store i64 %88, i64* %RDI.i, align 8, !mcsema_real_eip !44
  store i64 %67, i64* %RSP.i, align 8, !mcsema_real_eip !44
  store i64 %240, i64* %RBP.i, align 8, !mcsema_real_eip !44
  store i64 %5, i64* %R8.i, align 8, !mcsema_real_eip !44
  store i64 %6, i64* %R9.i, align 8, !mcsema_real_eip !44
  store i64 %7, i64* %R10.i, align 8, !mcsema_real_eip !44
  store i64 %8, i64* %R11.i, align 8, !mcsema_real_eip !44
  store i64 %9, i64* %R12.i, align 8, !mcsema_real_eip !44
  store i64 %10, i64* %R13.i, align 8, !mcsema_real_eip !44
  store i64 %11, i64* %R14.i, align 8, !mcsema_real_eip !44
  store i64 %12, i64* %R15.i, align 8, !mcsema_real_eip !44
  store i64 %13, i64* %RIP.i, align 8, !mcsema_real_eip !44
  store i1 %224, i1* %CF.i, align 1, !mcsema_real_eip !44
  store i1 %221, i1* %PF.i, align 1, !mcsema_real_eip !44
  store i1 %217, i1* %AF.i, align 1, !mcsema_real_eip !44
  store i1 %222, i1* %ZF.i, align 1, !mcsema_real_eip !44
  store i1 %223, i1* %SF.i, align 1, !mcsema_real_eip !44
  store i1 %227, i1* %OF.i, align 1, !mcsema_real_eip !44
  store i1 %14, i1* %DF.i, align 1, !mcsema_real_eip !44
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %95, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !44
  store i1 %17, i1* %FPU_B.i, align 1, !mcsema_real_eip !44
  store i1 %18, i1* %FPU_C3.i, align 1, !mcsema_real_eip !44
  store i3 %19, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !44
  store i1 %20, i1* %FPU_C2.i, align 1, !mcsema_real_eip !44
  store i1 %21, i1* %FPU_C1.i, align 1, !mcsema_real_eip !44
  store i1 %22, i1* %FPU_C0.i, align 1, !mcsema_real_eip !44
  store i1 %23, i1* %FPU_ES.i, align 1, !mcsema_real_eip !44
  store i1 %24, i1* %FPU_SF.i, align 1, !mcsema_real_eip !44
  store i1 %25, i1* %FPU_PE.i, align 1, !mcsema_real_eip !44
  store i1 %26, i1* %FPU_UE.i, align 1, !mcsema_real_eip !44
  store i1 %27, i1* %FPU_OE.i, align 1, !mcsema_real_eip !44
  store i1 %28, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !44
  store i1 %29, i1* %FPU_DE.i, align 1, !mcsema_real_eip !44
  store i1 %30, i1* %FPU_IE.i, align 1, !mcsema_real_eip !44
  store i1 %31, i1* %FPU_X.i, align 1, !mcsema_real_eip !44
  store i2 %32, i2* %FPU_RC.i, align 1, !mcsema_real_eip !44
  store i2 %33, i2* %FPU_PC.i, align 1, !mcsema_real_eip !44
  store i1 %34, i1* %FPU_PM.i, align 1, !mcsema_real_eip !44
  store i1 %35, i1* %FPU_UM.i, align 1, !mcsema_real_eip !44
  store i1 %36, i1* %FPU_OM.i, align 1, !mcsema_real_eip !44
  store i1 %37, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !44
  store i1 %38, i1* %FPU_DM.i, align 1, !mcsema_real_eip !44
  store i1 %39, i1* %FPU_IM.i, align 1, !mcsema_real_eip !44
  store i64 %42, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !44
  store i64 %44, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !44
  store i16 %45, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !44
  store i64 %46, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !44
  store i128 %47, i128* %XMM0.i, align 1, !mcsema_real_eip !44
  store i128 %48, i128* %XMM1.i, align 1, !mcsema_real_eip !44
  store i128 %49, i128* %XMM2.i, align 1, !mcsema_real_eip !44
  store i128 %50, i128* %XMM3.i, align 1, !mcsema_real_eip !44
  store i128 %51, i128* %XMM4.i, align 1, !mcsema_real_eip !44
  store i128 %52, i128* %XMM5.i, align 1, !mcsema_real_eip !44
  store i128 %53, i128* %XMM6.i, align 1, !mcsema_real_eip !44
  store i128 %54, i128* %XMM7.i, align 1, !mcsema_real_eip !44
  store i128 %55, i128* %XMM8.i, align 1, !mcsema_real_eip !44
  store i128 %56, i128* %XMM9.i, align 1, !mcsema_real_eip !44
  store i128 %57, i128* %XMM10.i, align 1, !mcsema_real_eip !44
  store i128 %58, i128* %XMM11.i, align 1, !mcsema_real_eip !44
  store i128 %59, i128* %XMM12.i, align 1, !mcsema_real_eip !44
  store i128 %60, i128* %XMM13.i, align 1, !mcsema_real_eip !44
  store i128 %61, i128* %XMM14.i, align 1, !mcsema_real_eip !44
  store i128 %62, i128* %XMM15.i, align 1, !mcsema_real_eip !44
  store i64 %63, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !44
  store i64 %64, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !44
  call void @llvm.lifetime.end(i64 128, i8* %95)
  br label %sub_0.exit

sub_0.exit:                                       ; preds = %block_0x6e.i.i, %block_0x80.i.i
  %241 = phi i1 [ %227, %block_0x6e.i.i ], [ %185, %block_0x80.i.i ]
  %242 = phi i1 [ %223, %block_0x6e.i.i ], [ %181, %block_0x80.i.i ]
  %243 = phi i1 [ %222, %block_0x6e.i.i ], [ %180, %block_0x80.i.i ]
  %244 = phi i1 [ %217, %block_0x6e.i.i ], [ %175, %block_0x80.i.i ]
  %245 = phi i1 [ %221, %block_0x6e.i.i ], [ %179, %block_0x80.i.i ]
  %246 = phi i1 [ %224, %block_0x6e.i.i ], [ %182, %block_0x80.i.i ]
  %247 = phi i64 [ %240, %block_0x6e.i.i ], [ %198, %block_0x80.i.i ]
  %248 = phi i64 [ %239, %block_0x6e.i.i ], [ %197, %block_0x80.i.i ]
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %16, i32 128, i32 4, i1 false) #0, !mcsema_real_eip !9
  %249 = inttoptr i64 %247 to i64*, !mcsema_real_eip !49
  %250 = load i64* %249, align 8, !mcsema_real_eip !49
  %251 = add i64 %247, 16, !mcsema_real_eip !50
  store i64 0, i64* %RAX.i, align 8, !mcsema_real_eip !50
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !50
  store i64 %85, i64* %RCX.i, align 8, !mcsema_real_eip !50
  store i64 %248, i64* %RDX.i, align 8, !mcsema_real_eip !50
  store i64 %92, i64* %RSI.i, align 8, !mcsema_real_eip !50
  store i64 %88, i64* %RDI.i, align 8, !mcsema_real_eip !50
  store i64 %251, i64* %RSP.i, align 8, !mcsema_real_eip !50
  store i64 %250, i64* %RBP.i, align 8, !mcsema_real_eip !50
  store i64 %5, i64* %R8.i, align 8, !mcsema_real_eip !50
  store i64 %6, i64* %R9.i, align 8, !mcsema_real_eip !50
  store i64 %7, i64* %R10.i, align 8, !mcsema_real_eip !50
  store i64 %8, i64* %R11.i, align 8, !mcsema_real_eip !50
  store i64 %9, i64* %R12.i, align 8, !mcsema_real_eip !50
  store i64 %10, i64* %R13.i, align 8, !mcsema_real_eip !50
  store i64 %11, i64* %R14.i, align 8, !mcsema_real_eip !50
  store i64 %12, i64* %R15.i, align 8, !mcsema_real_eip !50
  store i64 %13, i64* %RIP.i, align 8, !mcsema_real_eip !50
  store i1 %246, i1* %CF.i, align 1, !mcsema_real_eip !50
  store i1 %245, i1* %PF.i, align 1, !mcsema_real_eip !50
  store i1 %244, i1* %AF.i, align 1, !mcsema_real_eip !50
  store i1 %243, i1* %ZF.i, align 1, !mcsema_real_eip !50
  store i1 %242, i1* %SF.i, align 1, !mcsema_real_eip !50
  store i1 %241, i1* %OF.i, align 1, !mcsema_real_eip !50
  store i1 %14, i1* %DF.i, align 1, !mcsema_real_eip !50
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %1, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !50
  store i1 %17, i1* %FPU_B.i, align 1, !mcsema_real_eip !50
  store i1 %18, i1* %FPU_C3.i, align 1, !mcsema_real_eip !50
  store i3 %19, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !50
  store i1 %20, i1* %FPU_C2.i, align 1, !mcsema_real_eip !50
  store i1 %21, i1* %FPU_C1.i, align 1, !mcsema_real_eip !50
  store i1 %22, i1* %FPU_C0.i, align 1, !mcsema_real_eip !50
  store i1 %23, i1* %FPU_ES.i, align 1, !mcsema_real_eip !50
  store i1 %24, i1* %FPU_SF.i, align 1, !mcsema_real_eip !50
  store i1 %25, i1* %FPU_PE.i, align 1, !mcsema_real_eip !50
  store i1 %26, i1* %FPU_UE.i, align 1, !mcsema_real_eip !50
  store i1 %27, i1* %FPU_OE.i, align 1, !mcsema_real_eip !50
  store i1 %28, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !50
  store i1 %29, i1* %FPU_DE.i, align 1, !mcsema_real_eip !50
  store i1 %30, i1* %FPU_IE.i, align 1, !mcsema_real_eip !50
  store i1 %31, i1* %FPU_X.i, align 1, !mcsema_real_eip !50
  store i2 %32, i2* %FPU_RC.i, align 1, !mcsema_real_eip !50
  store i2 %33, i2* %FPU_PC.i, align 1, !mcsema_real_eip !50
  store i1 %34, i1* %FPU_PM.i, align 1, !mcsema_real_eip !50
  store i1 %35, i1* %FPU_UM.i, align 1, !mcsema_real_eip !50
  store i1 %36, i1* %FPU_OM.i, align 1, !mcsema_real_eip !50
  store i1 %37, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !50
  store i1 %38, i1* %FPU_DM.i, align 1, !mcsema_real_eip !50
  store i1 %39, i1* %FPU_IM.i, align 1, !mcsema_real_eip !50
  store i64 %42, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !50
  store i64 %44, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !50
  store i16 %45, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !50
  store i64 %46, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !50
  store i128 %47, i128* %XMM0.i, align 1, !mcsema_real_eip !50
  store i128 %48, i128* %XMM1.i, align 1, !mcsema_real_eip !50
  store i128 %49, i128* %XMM2.i, align 1, !mcsema_real_eip !50
  store i128 %50, i128* %XMM3.i, align 1, !mcsema_real_eip !50
  store i128 %51, i128* %XMM4.i, align 1, !mcsema_real_eip !50
  store i128 %52, i128* %XMM5.i, align 1, !mcsema_real_eip !50
  store i128 %53, i128* %XMM6.i, align 1, !mcsema_real_eip !50
  store i128 %54, i128* %XMM7.i, align 1, !mcsema_real_eip !50
  store i128 %55, i128* %XMM8.i, align 1, !mcsema_real_eip !50
  store i128 %56, i128* %XMM9.i, align 1, !mcsema_real_eip !50
  store i128 %57, i128* %XMM10.i, align 1, !mcsema_real_eip !50
  store i128 %58, i128* %XMM11.i, align 1, !mcsema_real_eip !50
  store i128 %59, i128* %XMM12.i, align 1, !mcsema_real_eip !50
  store i128 %60, i128* %XMM13.i, align 1, !mcsema_real_eip !50
  store i128 %61, i128* %XMM14.i, align 1, !mcsema_real_eip !50
  store i128 %62, i128* %XMM15.i, align 1, !mcsema_real_eip !50
  store i64 %63, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !50
  store i64 %64, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !50
  call void @llvm.lifetime.end(i64 128, i8* %1)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #0

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 39, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!4 = metadata !{i64 4, [16 x i8] c"\09subq\09$32, %rsp\00"}
!5 = metadata !{i64 8, [22 x i8] c"\09movq\09-32(%rbp), %rdx\00"}
!6 = metadata !{i64 12, [22 x i8] c"\09movl\09-24(%rbp), %ecx\00"}
!7 = metadata !{i64 15, [22 x i8] c"\09movq\09-16(%rbp), %rsi\00"}
!8 = metadata !{i64 19, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!9 = metadata !{i64 27, [9 x i8] c"\09callq\090\00"}
!10 = metadata !{i64 45, [22 x i8] c"\09movq\09%rdi, -48(%rbp)\00"}
!11 = metadata !{i64 49, [22 x i8] c"\09movl\09%esi, -40(%rbp)\00"}
!12 = metadata !{i64 52, [22 x i8] c"\09movq\09%rdx, -64(%rbp)\00"}
!13 = metadata !{i64 56, [22 x i8] c"\09movl\09%eax, -56(%rbp)\00"}
!14 = metadata !{i64 59, [22 x i8] c"\09movl\09-64(%rbp), %edx\00"}
!15 = metadata !{i64 62, [22 x i8] c"\09movl\09-48(%rbp), %eax\00"}
!16 = metadata !{i64 65, [17 x i8] c"\09cmpl\09%eax, %edx\00"}
!17 = metadata !{i64 67, [8 x i8] c"\09jle\0918\00"}
!18 = metadata !{i64 93, [17 x i8] c"\09subl\09%eax, %edx\00"}
!19 = metadata !{i64 97, [22 x i8] c"\09movl\09%eax, -32(%rbp)\00"}
!20 = metadata !{i64 100, [22 x i8] c"\09movl\09-60(%rbp), %edx\00"}
!21 = metadata !{i64 103, [22 x i8] c"\09movl\09-44(%rbp), %eax\00"}
!22 = metadata !{i64 106, [17 x i8] c"\09cmpl\09%eax, %edx\00"}
!23 = metadata !{i64 108, [8 x i8] c"\09jle\0918\00"}
!24 = metadata !{i64 69, [22 x i8] c"\09movl\09-44(%rbp), %eax\00"}
!25 = metadata !{i64 75, [22 x i8] c"\09movl\09%eax, -44(%rbp)\00"}
!26 = metadata !{i64 78, [22 x i8] c"\09movl\09-48(%rbp), %eax\00"}
!27 = metadata !{i64 84, [22 x i8] c"\09movl\09%eax, -48(%rbp)\00"}
!28 = metadata !{i64 90, [22 x i8] c"\09movl\09-64(%rbp), %eax\00"}
!29 = metadata !{i64 128, [22 x i8] c"\09movl\09-44(%rbp), %edx\00"}
!30 = metadata !{i64 131, [22 x i8] c"\09movl\09-60(%rbp), %eax\00"}
!31 = metadata !{i64 134, [17 x i8] c"\09subl\09%eax, %edx\00"}
!32 = metadata !{i64 138, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
!33 = metadata !{i64 141, [22 x i8] c"\09movl\09-40(%rbp), %edx\00"}
!34 = metadata !{i64 144, [22 x i8] c"\09movl\09-56(%rbp), %eax\00"}
!35 = metadata !{i64 147, [17 x i8] c"\09subl\09%eax, %edx\00"}
!36 = metadata !{i64 151, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!37 = metadata !{i64 154, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!38 = metadata !{i64 158, [22 x i8] c"\09movq\09%rax, -16(%rbp)\00"}
!39 = metadata !{i64 162, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!40 = metadata !{i64 165, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!41 = metadata !{i64 168, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!42 = metadata !{i64 172, [21 x i8] c"\09movl\09-8(%rbp), %edx\00"}
!43 = metadata !{i64 175, [11 x i8] c"\09popq\09%rbp\00"}
!44 = metadata !{i64 176, [6 x i8] c"\09retq\00"}
!45 = metadata !{i64 110, [22 x i8] c"\09movl\09-40(%rbp), %eax\00"}
!46 = metadata !{i64 116, [22 x i8] c"\09movl\09%eax, -40(%rbp)\00"}
!47 = metadata !{i64 119, [22 x i8] c"\09movl\09-44(%rbp), %eax\00"}
!48 = metadata !{i64 125, [22 x i8] c"\09movl\09%eax, -44(%rbp)\00"}
!49 = metadata !{i64 37, [7 x i8] c"\09leave\00"}
!50 = metadata !{i64 38, [6 x i8] c"\09retq\00"}
