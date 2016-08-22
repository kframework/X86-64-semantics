; ModuleID = 'test_3_opt.bc'
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
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %1 = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %1)
  %RAX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %2 = load i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %3 = load i64* %RCX.i, align 8, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %4 = load i64* %RSI.i, align 8, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %5 = load i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %6 = load i64* %RSP.i, align 8, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %7 = load i64* %RBP.i, align 8, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %8 = load i64* %R8.i, align 8, !mcsema_real_eip !2
  %R9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %9 = load i64* %R9.i, align 8, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %10 = load i64* %R10.i, align 8, !mcsema_real_eip !2
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %11 = load i64* %R11.i, align 8, !mcsema_real_eip !2
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %12 = load i64* %R12.i, align 8, !mcsema_real_eip !2
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %13 = load i64* %R13.i, align 8, !mcsema_real_eip !2
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %14 = load i64* %R14.i, align 8, !mcsema_real_eip !2
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %15 = load i64* %R15.i, align 8, !mcsema_real_eip !2
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %16 = load i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %17 = load i1* %DF.i, align 1, !mcsema_real_eip !2
  %18 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %19, i32 128, i32 4, i1 false) #0, !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %20 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %21 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %22 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %23 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %24 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %25 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %26 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %27 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %28 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %29 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %30 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %31 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %32 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %33 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %34 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %35 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %36 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %37 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %38 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %39 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %40 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %41 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %42 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %43 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %44 = bitcast i8* %43 to i64*
  %45 = load i64* %44, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %46 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %47 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %48 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %49 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %50 = load i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %51 = load i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %52 = load i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %53 = load i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %54 = load i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %55 = load i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %56 = load i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %57 = load i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %58 = load i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %59 = load i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %60 = load i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %61 = load i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %62 = load i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %63 = load i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %64 = load i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %65 = load i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %66 = load i64* %STACK_BASE.i, align 8, !mcsema_real_eip !2
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %67 = load i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !2
  %68 = add i64 %6, -8
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !2
  store i64 %7, i64* %69, align 8, !mcsema_real_eip !2
  %70 = add i64 %6, -28, !mcsema_real_eip !3
  %71 = trunc i64 %5 to i32, !mcsema_real_eip !3
  %72 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %72, align 4, !mcsema_real_eip !3
  %73 = add i64 %6, -32, !mcsema_real_eip !4
  %74 = trunc i64 %4 to i32, !mcsema_real_eip !4
  %75 = inttoptr i64 %73 to i32*
  store i32 %74, i32* %75, align 4, !mcsema_real_eip !4
  %76 = load i32* %72, align 4, !mcsema_real_eip !5
  %77 = zext i32 %76 to i64, !mcsema_real_eip !5
  %78 = add i32 %76, %74
  %79 = add i64 %6, -12, !mcsema_real_eip !6
  %80 = inttoptr i64 %79 to i32*
  store i32 %78, i32* %80, align 4, !mcsema_real_eip !6
  %81 = load i32* %72, align 4, !mcsema_real_eip !7
  %82 = add i32 %81, -40
  %83 = icmp eq i32 %82, 0, !mcsema_real_eip !7
  %84 = icmp slt i32 %82, 0
  %85 = sub i32 39, %81
  %86 = and i32 %85, %81
  %87 = icmp slt i32 %86, 0
  %88 = xor i1 %84, %87
  %89 = or i1 %83, %88, !mcsema_real_eip !8
  br i1 %89, label %block_0x21.i, label %block_0x1b.i, !mcsema_real_eip !8

block_0x21.i:                                     ; preds = %driverBlockRaw
  %90 = add i32 %78, -10
  %91 = xor i32 %90, %78, !mcsema_real_eip !9
  %92 = and i32 %91, 16, !mcsema_real_eip !9
  %93 = icmp ne i32 %92, 0, !mcsema_real_eip !9
  %94 = trunc i32 %90 to i8, !mcsema_real_eip !9
  %95 = tail call i8 @llvm.ctpop.i8(i8 %94) #0, !mcsema_real_eip !9
  %96 = and i8 %95, 1
  %97 = icmp eq i8 %96, 0
  %98 = icmp eq i32 %90, 0, !mcsema_real_eip !9
  %99 = icmp slt i32 %90, 0
  %100 = icmp ult i32 %78, 10, !mcsema_real_eip !9
  %101 = and i32 %91, %78, !mcsema_real_eip !9
  %102 = icmp slt i32 %101, 0
  %103 = add i64 %6, -16, !mcsema_real_eip !10
  %104 = inttoptr i64 %103 to i32*
  store i32 %90, i32* %104, align 4, !mcsema_real_eip !10
  %105 = load i32* %80, align 4, !mcsema_real_eip !11
  %106 = zext i32 %105 to i64, !mcsema_real_eip !11
  %107 = load i64* %69, align 8, !mcsema_real_eip !12
  %108 = add i64 %6, 8, !mcsema_real_eip !13
  store i64 %106, i64* %RAX.i, align 8, !mcsema_real_eip !13
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !13
  store i64 %3, i64* %RCX.i, align 8, !mcsema_real_eip !13
  store i64 %77, i64* %RDX.i, align 8, !mcsema_real_eip !13
  store i64 %4, i64* %RSI.i, align 8, !mcsema_real_eip !13
  store i64 %5, i64* %RDI.i, align 8, !mcsema_real_eip !13
  store i64 %108, i64* %RSP.i, align 8, !mcsema_real_eip !13
  store i64 %107, i64* %RBP.i, align 8, !mcsema_real_eip !13
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !13
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !13
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !13
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !13
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !13
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !13
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !13
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !13
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !13
  store i1 %100, i1* %CF.i, align 1, !mcsema_real_eip !13
  store i1 %97, i1* %PF.i, align 1, !mcsema_real_eip !13
  store i1 %93, i1* %AF.i, align 1, !mcsema_real_eip !13
  store i1 %98, i1* %ZF.i, align 1, !mcsema_real_eip !13
  store i1 %99, i1* %SF.i, align 1, !mcsema_real_eip !13
  store i1 %102, i1* %OF.i, align 1, !mcsema_real_eip !13
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !13
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %1, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !13
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !13
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !13
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !13
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !13
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !13
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !13
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !13
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !13
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !13
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !13
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !13
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !13
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !13
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !13
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !13
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !13
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !13
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !13
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !13
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !13
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !13
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !13
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !13
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !13
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !13
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !13
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !13
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !13
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !13
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !13
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !13
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !13
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !13
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !13
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !13
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !13
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !13
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !13
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !13
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !13
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !13
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !13
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !13
  store i64 %66, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !13
  store i64 %67, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !13
  call void @llvm.lifetime.end(i64 128, i8* %1)
  br label %sub_0.exit

block_0x1b.i:                                     ; preds = %driverBlockRaw
  %uadd140.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %78, i32 10) #0
  %109 = extractvalue { i32, i1 } %uadd140.i, 0
  %110 = xor i32 %109, %78, !mcsema_real_eip !14
  %111 = and i32 %110, 16, !mcsema_real_eip !14
  %112 = icmp ne i32 %111, 0, !mcsema_real_eip !14
  %113 = icmp slt i32 %109, 0
  %114 = icmp eq i32 %109, 0, !mcsema_real_eip !14
  %115 = xor i32 %78, -2147483648, !mcsema_real_eip !14
  %116 = and i32 %110, %115, !mcsema_real_eip !14
  %117 = icmp slt i32 %116, 0
  %118 = trunc i32 %109 to i8, !mcsema_real_eip !14
  %119 = tail call i8 @llvm.ctpop.i8(i8 %118) #0, !mcsema_real_eip !14
  %120 = and i8 %119, 1
  %121 = icmp eq i8 %120, 0
  %122 = extractvalue { i32, i1 } %uadd140.i, 1
  store i32 %109, i32* %80, align 4, !mcsema_real_eip !14
  %123 = zext i32 %109 to i64, !mcsema_real_eip !11
  %124 = load i64* %69, align 8, !mcsema_real_eip !12
  %125 = add i64 %6, 8, !mcsema_real_eip !13
  store i64 %123, i64* %RAX.i, align 8, !mcsema_real_eip !13
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !13
  store i64 %3, i64* %RCX.i, align 8, !mcsema_real_eip !13
  store i64 %77, i64* %RDX.i, align 8, !mcsema_real_eip !13
  store i64 %4, i64* %RSI.i, align 8, !mcsema_real_eip !13
  store i64 %5, i64* %RDI.i, align 8, !mcsema_real_eip !13
  store i64 %125, i64* %RSP.i, align 8, !mcsema_real_eip !13
  store i64 %124, i64* %RBP.i, align 8, !mcsema_real_eip !13
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !13
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !13
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !13
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !13
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !13
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !13
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !13
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !13
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !13
  store i1 %122, i1* %CF.i, align 1, !mcsema_real_eip !13
  store i1 %121, i1* %PF.i, align 1, !mcsema_real_eip !13
  store i1 %112, i1* %AF.i, align 1, !mcsema_real_eip !13
  store i1 %114, i1* %ZF.i, align 1, !mcsema_real_eip !13
  store i1 %113, i1* %SF.i, align 1, !mcsema_real_eip !13
  store i1 %117, i1* %OF.i, align 1, !mcsema_real_eip !13
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !13
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %1, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !13
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !13
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !13
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !13
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !13
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !13
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !13
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !13
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !13
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !13
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !13
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !13
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !13
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !13
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !13
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !13
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !13
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !13
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !13
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !13
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !13
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !13
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !13
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !13
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !13
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !13
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !13
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !13
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !13
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !13
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !13
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !13
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !13
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !13
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !13
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !13
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !13
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !13
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !13
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !13
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !13
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !13
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !13
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !13
  store i64 %66, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !13
  store i64 %67, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !13
  call void @llvm.lifetime.end(i64 128, i8* %1)
  br label %sub_0.exit

sub_0.exit:                                       ; preds = %block_0x1b.i, %block_0x21.i
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
!3 = metadata !{i64 4, [22 x i8] c"\09movl\09%edi, -20(%rbp)\00"}
!4 = metadata !{i64 7, [22 x i8] c"\09movl\09%esi, -24(%rbp)\00"}
!5 = metadata !{i64 13, [22 x i8] c"\09movl\09-20(%rbp), %edx\00"}
!6 = metadata !{i64 18, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!7 = metadata !{i64 21, [21 x i8] c"\09cmpl\09$40, -20(%rbp)\00"}
!8 = metadata !{i64 25, [7 x i8] c"\09jle\096\00"}
!9 = metadata !{i64 36, [16 x i8] c"\09subl\09$10, %eax\00"}
!10 = metadata !{i64 39, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!11 = metadata !{i64 42, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!12 = metadata !{i64 45, [11 x i8] c"\09popq\09%rbp\00"}
!13 = metadata !{i64 46, [6 x i8] c"\09retq\00"}
!14 = metadata !{i64 27, [20 x i8] c"\09addl\09$10, -4(%rbp)\00"}
