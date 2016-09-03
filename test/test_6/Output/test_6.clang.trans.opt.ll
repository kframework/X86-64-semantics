; ModuleID = 'Output/test_6.clang.trans.opt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: noreturn nounwind
define void @mcsema_main(%struct.regs*) #2 {
driverBlockRaw:
  %_local_stack_alloc_94.i = alloca [112 x i64], align 8
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %1 = bitcast [112 x i64]* %_local_stack_alloc_94.i to i8*
  call void @llvm.lifetime.start(i64 896, i8* %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %STi_val.i.0..sroa_cast)
  %_local_stack_start_.i = ptrtoint [112 x i64]* %_local_stack_alloc_94.i to i64
  %RAX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %2 = load i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %3 = load i64* %RBP.i, align 8, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %4 = bitcast i64* %R8.i to <2 x i64>*
  %5 = load <2 x i64>* %4, align 8
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %6 = bitcast i64* %R10.i to <2 x i64>*
  %7 = load <2 x i64>* %6, align 8
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %8 = bitcast i64* %R12.i to <2 x i64>*
  %9 = load <2 x i64>* %8, align 8
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %10 = bitcast i64* %R14.i to <2 x i64>*
  %11 = load <2 x i64>* %10, align 8
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %12 = load i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %13 = load i1* %DF.i, align 1, !mcsema_real_eip !2
  %14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %15 = bitcast x86_fp80* %14 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast, i8* %15, i32 128, i32 4, i1 false) #0, !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %16 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %17 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %18 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %19 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %20 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %21 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %22 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %23 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %24 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %25 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %26 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %27 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %28 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %29 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %30 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %31 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %32 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %33 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %34 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %35 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %36 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %37 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %38 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %39 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %40 = bitcast i8* %39 to i64*
  %41 = load i64* %40, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %42 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %43 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %44 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %45 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %46 = load i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %47 = load i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %48 = load i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %49 = load i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %50 = load i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %51 = load i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %52 = load i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %53 = load i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %54 = load i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %55 = load i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %56 = load i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %57 = load i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %58 = load i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %59 = load i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %60 = load i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %61 = load i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %62 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %63 = load <2 x i64>* %62, align 8
  %64 = add i64 %_local_stack_start_.i, -8
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !2
  store i64 %3, i64* %65, align 8, !mcsema_real_eip !2
  %66 = add i64 %_local_stack_start_.i, -104
  %67 = xor i64 %66, %64, !mcsema_real_eip !3
  %68 = and i64 %67, 16, !mcsema_real_eip !3
  %69 = icmp ne i64 %68, 0, !mcsema_real_eip !3
  %70 = trunc i64 %66 to i8, !mcsema_real_eip !3
  %71 = tail call i8 @llvm.ctpop.i8(i8 %70) #0, !mcsema_real_eip !3
  %72 = and i8 %71, 1
  %73 = icmp eq i8 %72, 0
  %74 = icmp eq i64 %66, 0, !mcsema_real_eip !3
  %75 = icmp slt i64 %66, 0
  %76 = icmp ult i64 %64, 96, !mcsema_real_eip !3
  %77 = and i64 %67, %64, !mcsema_real_eip !3
  %78 = icmp slt i64 %77, 0
  %79 = add i64 %_local_stack_start_.i, -12, !mcsema_real_eip !4
  %80 = inttoptr i64 %79 to i32*
  store i32 0, i32* %80, align 4, !mcsema_real_eip !4
  %81 = add i64 %_local_stack_start_.i, -16, !mcsema_real_eip !5
  %82 = inttoptr i64 %81 to i32*
  %83 = load i32* %82, align 8, !mcsema_real_eip !5
  %84 = add i64 %_local_stack_start_.i, -64, !mcsema_real_eip !6
  %85 = inttoptr i64 %84 to i32*
  store i32 %83, i32* %85, align 8, !mcsema_real_eip !6
  %86 = add i64 %_local_stack_start_.i, -24, !mcsema_real_eip !7
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !7
  %88 = load i64* %87, align 8, !mcsema_real_eip !7
  %89 = add i64 %_local_stack_start_.i, -72, !mcsema_real_eip !8
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !8
  store i64 %88, i64* %90, align 8, !mcsema_real_eip !8
  %91 = load i32* %85, align 8, !mcsema_real_eip !9
  %92 = zext i32 %91 to i64, !mcsema_real_eip !9
  %93 = add i64 %_local_stack_start_.i, -32, !mcsema_real_eip !10
  %94 = inttoptr i64 %93 to i32*
  %95 = load i32* %94, align 8, !mcsema_real_eip !10
  %96 = zext i32 %95 to i64, !mcsema_real_eip !10
  %97 = add i64 %_local_stack_start_.i, -80, !mcsema_real_eip !11
  %98 = inttoptr i64 %97 to i32*
  store i32 %95, i32* %98, align 8, !mcsema_real_eip !11
  %99 = add i64 %_local_stack_start_.i, -40, !mcsema_real_eip !12
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !12
  %101 = load i64* %100, align 8, !mcsema_real_eip !12
  %102 = add i64 %_local_stack_start_.i, -88, !mcsema_real_eip !13
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !13
  store i64 %101, i64* %103, align 8, !mcsema_real_eip !13
  %104 = load i32* %98, align 8, !mcsema_real_eip !14
  %105 = zext i32 %104 to i64, !mcsema_real_eip !14
  %106 = add i64 %_local_stack_start_.i, -112
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !15
  store i64 -4981261766360305936, i64* %107, align 8, !mcsema_real_eip !15
  store i64 %96, i64* %RAX.i, align 8, !mcsema_real_eip !15
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !15
  store i64 %105, i64* %RCX.i, align 8, !mcsema_real_eip !15
  store i64 %101, i64* %RDX.i, align 8, !mcsema_real_eip !15
  store i64 %92, i64* %RSI.i, align 8, !mcsema_real_eip !15
  store i64 %88, i64* %RDI.i, align 8, !mcsema_real_eip !15
  store i64 %106, i64* %RSP.i, align 8, !mcsema_real_eip !15
  store i64 %64, i64* %RBP.i, align 8, !mcsema_real_eip !15
  store <2 x i64> %5, <2 x i64>* %4, align 8
  store <2 x i64> %7, <2 x i64>* %6, align 8
  store <2 x i64> %9, <2 x i64>* %8, align 8
  store <2 x i64> %11, <2 x i64>* %10, align 8
  store i64 %12, i64* %RIP.i, align 8, !mcsema_real_eip !15
  store i1 %76, i1* %CF.i, align 1, !mcsema_real_eip !15
  store i1 %73, i1* %PF.i, align 1, !mcsema_real_eip !15
  store i1 %69, i1* %AF.i, align 1, !mcsema_real_eip !15
  store i1 %74, i1* %ZF.i, align 1, !mcsema_real_eip !15
  store i1 %75, i1* %SF.i, align 1, !mcsema_real_eip !15
  store i1 %78, i1* %OF.i, align 1, !mcsema_real_eip !15
  store i1 %13, i1* %DF.i, align 1, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !15
  store i1 %16, i1* %FPU_B.i, align 1, !mcsema_real_eip !15
  store i1 %17, i1* %FPU_C3.i, align 1, !mcsema_real_eip !15
  store i3 %18, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !15
  store i1 %19, i1* %FPU_C2.i, align 1, !mcsema_real_eip !15
  store i1 %20, i1* %FPU_C1.i, align 1, !mcsema_real_eip !15
  store i1 %21, i1* %FPU_C0.i, align 1, !mcsema_real_eip !15
  store i1 %22, i1* %FPU_ES.i, align 1, !mcsema_real_eip !15
  store i1 %23, i1* %FPU_SF.i, align 1, !mcsema_real_eip !15
  store i1 %24, i1* %FPU_PE.i, align 1, !mcsema_real_eip !15
  store i1 %25, i1* %FPU_UE.i, align 1, !mcsema_real_eip !15
  store i1 %26, i1* %FPU_OE.i, align 1, !mcsema_real_eip !15
  store i1 %27, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !15
  store i1 %28, i1* %FPU_DE.i, align 1, !mcsema_real_eip !15
  store i1 %29, i1* %FPU_IE.i, align 1, !mcsema_real_eip !15
  store i1 %30, i1* %FPU_X.i, align 1, !mcsema_real_eip !15
  store i2 %31, i2* %FPU_RC.i, align 1, !mcsema_real_eip !15
  store i2 %32, i2* %FPU_PC.i, align 1, !mcsema_real_eip !15
  store i1 %33, i1* %FPU_PM.i, align 1, !mcsema_real_eip !15
  store i1 %34, i1* %FPU_UM.i, align 1, !mcsema_real_eip !15
  store i1 %35, i1* %FPU_OM.i, align 1, !mcsema_real_eip !15
  store i1 %36, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !15
  store i1 %37, i1* %FPU_DM.i, align 1, !mcsema_real_eip !15
  store i1 %38, i1* %FPU_IM.i, align 1, !mcsema_real_eip !15
  store i64 %41, i64* %40, align 4
  store i16 %42, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !15
  store i64 %43, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !15
  store i16 %44, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !15
  store i64 %45, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !15
  store i128 %46, i128* %XMM0.i, align 1, !mcsema_real_eip !15
  store i128 %47, i128* %XMM1.i, align 1, !mcsema_real_eip !15
  store i128 %48, i128* %XMM2.i, align 1, !mcsema_real_eip !15
  store i128 %49, i128* %XMM3.i, align 1, !mcsema_real_eip !15
  store i128 %50, i128* %XMM4.i, align 1, !mcsema_real_eip !15
  store i128 %51, i128* %XMM5.i, align 1, !mcsema_real_eip !15
  store i128 %52, i128* %XMM6.i, align 1, !mcsema_real_eip !15
  store i128 %53, i128* %XMM7.i, align 1, !mcsema_real_eip !15
  store i128 %54, i128* %XMM8.i, align 1, !mcsema_real_eip !15
  store i128 %55, i128* %XMM9.i, align 1, !mcsema_real_eip !15
  store i128 %56, i128* %XMM10.i, align 1, !mcsema_real_eip !15
  store i128 %57, i128* %XMM11.i, align 1, !mcsema_real_eip !15
  store i128 %58, i128* %XMM12.i, align 1, !mcsema_real_eip !15
  store i128 %59, i128* %XMM13.i, align 1, !mcsema_real_eip !15
  store i128 %60, i128* %XMM14.i, align 1, !mcsema_real_eip !15
  store i128 %61, i128* %XMM15.i, align 1, !mcsema_real_eip !15
  store <2 x i64> %63, <2 x i64>* %62, align 1
  call void @llvm.trap() #0
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 4, [16 x i8] c"\09subq\09$96, %rsp\00"}
!4 = metadata !{i64 8, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!5 = metadata !{i64 15, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!6 = metadata !{i64 18, [22 x i8] c"\09movl\09%eax, -56(%rbp)\00"}
!7 = metadata !{i64 21, [22 x i8] c"\09movq\09-16(%rbp), %rcx\00"}
!8 = metadata !{i64 25, [22 x i8] c"\09movq\09%rcx, -64(%rbp)\00"}
!9 = metadata !{i64 33, [22 x i8] c"\09movl\09-56(%rbp), %esi\00"}
!10 = metadata !{i64 36, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!11 = metadata !{i64 39, [22 x i8] c"\09movl\09%eax, -72(%rbp)\00"}
!12 = metadata !{i64 42, [22 x i8] c"\09movq\09-32(%rbp), %rcx\00"}
!13 = metadata !{i64 46, [22 x i8] c"\09movq\09%rcx, -80(%rbp)\00"}
!14 = metadata !{i64 54, [22 x i8] c"\09movl\09-72(%rbp), %ecx\00"}
!15 = metadata !{i64 57, [10 x i8] c"\09callq\0950\00"}
