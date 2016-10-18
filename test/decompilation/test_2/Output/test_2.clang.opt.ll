; ModuleID = 'Output/test_2.clang.opt.bc'
source_filename = "Output/test_2.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) local_unnamed_addr #2 {
driverBlockRaw:
  %STi_val.i.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !3
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !3
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !3
  %1 = load i64, i64* %RBX.i, align 8
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !3
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !3
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !3
  %2 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !3
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !3
  %3 = load i64, i64* %RBP.i, align 8, !mcsema_real_eip !3
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !3
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !3
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
  %4 = load i64, i64* %R11.i, align 8
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %5 = load i64, i64* %R12.i, align 8
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !3
  %6 = load i64, i64* %R13.i, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %7 = load i64, i64* %R14.i, align 8
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !3
  %8 = load i64, i64* %R15.i, align 8
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %9 = load i64, i64* %RIP.i, align 8
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !3
  %10 = load i1, i1* %DF.i, align 1
  %11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !3
  %12 = bitcast x86_fp80* %11 to i8*, !mcsema_real_eip !3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %12, i32 128, i32 4, i1 false) #2, !mcsema_real_eip !3
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !3
  %13 = load i1, i1* %FPU_B.i, align 1
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !3
  %14 = load i1, i1* %FPU_C3.i, align 1
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !3
  %15 = load i3, i3* %FPU_TOP.i, align 1
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !3
  %16 = load i1, i1* %FPU_C2.i, align 1
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !3
  %17 = load i1, i1* %FPU_C1.i, align 1
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !3
  %18 = load i1, i1* %FPU_C0.i, align 1
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !3
  %19 = load i1, i1* %FPU_ES.i, align 1
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !3
  %20 = load i1, i1* %FPU_SF.i, align 1
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !3
  %21 = load i1, i1* %FPU_PE.i, align 1
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !3
  %22 = load i1, i1* %FPU_UE.i, align 1
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !3
  %23 = load i1, i1* %FPU_OE.i, align 1
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !3
  %24 = load i1, i1* %FPU_ZE.i, align 1
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !3
  %25 = load i1, i1* %FPU_DE.i, align 1
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !3
  %26 = load i1, i1* %FPU_IE.i, align 1
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !3
  %27 = load i1, i1* %FPU_X.i, align 1
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !3
  %28 = load i2, i2* %FPU_RC.i, align 1
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !3
  %29 = load i2, i2* %FPU_PC.i, align 1
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !3
  %30 = load i1, i1* %FPU_PM.i, align 1
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !3
  %31 = load i1, i1* %FPU_UM.i, align 1
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !3
  %32 = load i1, i1* %FPU_OM.i, align 1
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !3
  %33 = load i1, i1* %FPU_ZM.i, align 1
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !3
  %34 = load i1, i1* %FPU_DM.i, align 1
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !3
  %35 = load i1, i1* %FPU_IM.i, align 1
  %36 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !3
  %37 = bitcast i8* %36 to i64*
  %38 = load i64, i64* %37, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !3
  %39 = load i16, i16* %FPU_LASTIP_SEG.i, align 1
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !3
  %40 = load i64, i64* %FPU_LASTIP_OFF.i, align 8
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !3
  %41 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !3
  %42 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %43 = load i128, i128* %XMM0.i, align 1
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %44 = load i128, i128* %XMM1.i, align 1
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %45 = load i128, i128* %XMM2.i, align 1
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %46 = load i128, i128* %XMM3.i, align 1
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %47 = load i128, i128* %XMM4.i, align 1
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %48 = load i128, i128* %XMM5.i, align 1
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %49 = load i128, i128* %XMM6.i, align 1
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %50 = load i128, i128* %XMM7.i, align 1
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %51 = load i128, i128* %XMM8.i, align 1
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %52 = load i128, i128* %XMM9.i, align 1
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %53 = load i128, i128* %XMM10.i, align 1
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %54 = load i128, i128* %XMM11.i, align 1
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %55 = load i128, i128* %XMM12.i, align 1
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %56 = load i128, i128* %XMM13.i, align 1
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %57 = load i128, i128* %XMM14.i, align 1
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %58 = load i128, i128* %XMM15.i, align 1
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %59 = load i64, i64* %STACK_BASE.i, align 8
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %60 = load i64, i64* %STACK_LIMIT.i, align 8
  %61 = add i64 %2, -8
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !3
  store i64 %3, i64* %62, align 8, !mcsema_real_eip !3
  %63 = add i64 %2, -40
  %64 = xor i64 %63, %61, !mcsema_real_eip !4
  %65 = and i64 %64, 16, !mcsema_real_eip !4
  %66 = icmp ne i64 %65, 0, !mcsema_real_eip !4
  %67 = trunc i64 %63 to i8, !mcsema_real_eip !4
  %68 = tail call i8 @llvm.ctpop.i8(i8 %67) #2, !mcsema_real_eip !4
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
  %87 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> <i64 40, i64 30>, <2 x i64>* %87, align 8
  %88 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 20, i64 10>, <2 x i64>* %88, align 8
  store i64 %85, i64* %RSP.i, align 8, !mcsema_real_eip !10
  store i64 %61, i64* %RBP.i, align 8, !mcsema_real_eip !10
  %89 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 50, i64 60>, <2 x i64>* %89, align 8
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
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !10
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
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast.i, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false) #2
  %90 = add i64 %2, -56
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !2
  store i64 %61, i64* %91, align 8, !mcsema_real_eip !2
  %92 = load i32, i32* %80, align 4, !mcsema_real_eip !11
  %93 = load i32, i32* %78, align 4, !mcsema_real_eip !12
  %94 = zext i32 %93 to i64, !mcsema_real_eip !12
  %95 = add i64 %2, -60, !mcsema_real_eip !13
  %96 = inttoptr i64 %95 to i32*
  store i32 10, i32* %96, align 4, !mcsema_real_eip !13
  %97 = add i64 %2, -64, !mcsema_real_eip !14
  %98 = inttoptr i64 %97 to i32*
  store i32 20, i32* %98, align 4, !mcsema_real_eip !14
  %99 = add i64 %2, -68, !mcsema_real_eip !15
  %100 = inttoptr i64 %99 to i32*
  store i32 30, i32* %100, align 4, !mcsema_real_eip !15
  %101 = add i64 %2, -72, !mcsema_real_eip !16
  %102 = inttoptr i64 %101 to i32*
  store i32 40, i32* %102, align 4, !mcsema_real_eip !16
  %103 = add i64 %2, -76, !mcsema_real_eip !17
  %104 = inttoptr i64 %103 to i32*
  store i32 50, i32* %104, align 4, !mcsema_real_eip !17
  %105 = add i64 %2, -80, !mcsema_real_eip !18
  %106 = inttoptr i64 %105 to i32*
  store i32 60, i32* %106, align 4, !mcsema_real_eip !18
  %107 = add i64 %2, -84, !mcsema_real_eip !19
  %108 = inttoptr i64 %107 to i32*
  store i32 %93, i32* %108, align 4, !mcsema_real_eip !19
  %109 = add i64 %2, -88, !mcsema_real_eip !20
  %110 = inttoptr i64 %109 to i32*
  store i32 %92, i32* %110, align 4, !mcsema_real_eip !20
  %111 = load i32, i32* %96, align 4, !mcsema_real_eip !21
  %112 = load i32, i32* %98, align 4, !mcsema_real_eip !22
  %113 = add i32 %112, %111
  %114 = load i32, i32* %100, align 4, !mcsema_real_eip !23
  %115 = add i32 %113, %114
  %116 = load i32, i32* %102, align 4, !mcsema_real_eip !24
  %117 = add i32 %115, %116
  %118 = load i32, i32* %104, align 4, !mcsema_real_eip !25
  %119 = add i32 %117, %118
  %120 = load i32, i32* %106, align 4, !mcsema_real_eip !26
  %121 = add i32 %119, %120
  %122 = load i32, i32* %108, align 4, !mcsema_real_eip !27
  %123 = add i32 %121, %122
  %124 = add i64 %2, -92, !mcsema_real_eip !28
  %125 = inttoptr i64 %124 to i32*
  store i32 %123, i32* %125, align 4, !mcsema_real_eip !28
  %126 = add i32 %123, -40
  %127 = icmp eq i32 %126, 0, !mcsema_real_eip !29
  %128 = icmp slt i32 %126, 0
  %129 = sub i32 39, %123
  %130 = and i32 %129, %123
  %131 = icmp slt i32 %130, 0
  %132 = xor i1 %128, %131
  %133 = or i1 %127, %132, !mcsema_real_eip !30
  %134 = load i32, i32* %110, align 4, !mcsema_real_eip !31
  %135 = add i64 %2, -96
  %136 = inttoptr i64 %135 to i32*
  br i1 %133, label %block_0x56.i.i, label %block_0x48.i.i, !mcsema_real_eip !30

block_0x56.i.i:                                   ; preds = %driverBlockRaw
  %137 = sub i32 %123, %134, !mcsema_real_eip !31
  %138 = xor i32 %137, %123, !mcsema_real_eip !31
  %139 = xor i32 %138, %134, !mcsema_real_eip !31
  %140 = and i32 %139, 16, !mcsema_real_eip !31
  %141 = icmp ne i32 %140, 0, !mcsema_real_eip !31
  %142 = trunc i32 %137 to i8, !mcsema_real_eip !31
  %143 = tail call i8 @llvm.ctpop.i8(i8 %142) #2, !mcsema_real_eip !31
  %144 = and i8 %143, 1
  %145 = icmp eq i8 %144, 0
  %146 = icmp eq i32 %123, %134
  %147 = icmp slt i32 %137, 0
  %148 = icmp ult i32 %123, %134, !mcsema_real_eip !31
  %149 = xor i32 %134, %123, !mcsema_real_eip !31
  %150 = and i32 %138, %149, !mcsema_real_eip !31
  %151 = icmp slt i32 %150, 0
  store i32 %137, i32* %136, align 4, !mcsema_real_eip !32
  %152 = zext i32 %137 to i64, !mcsema_real_eip !33
  %153 = load i64, i64* %91, align 8, !mcsema_real_eip !34
  store i64 %152, i64* %RAX.i, align 8, !mcsema_real_eip !35
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !35
  %154 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> <i64 40, i64 30>, <2 x i64>* %154, align 8
  %155 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 20, i64 10>, <2 x i64>* %155, align 8
  store i64 %63, i64* %RSP.i, align 8, !mcsema_real_eip !35
  store i64 %153, i64* %RBP.i, align 8, !mcsema_real_eip !35
  %156 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 50, i64 60>, <2 x i64>* %156, align 8
  store i64 %94, i64* %R10.i, align 8, !mcsema_real_eip !35
  store i64 %4, i64* %R11.i, align 8, !mcsema_real_eip !35
  store i64 %5, i64* %R12.i, align 8, !mcsema_real_eip !35
  store i64 %6, i64* %R13.i, align 8, !mcsema_real_eip !35
  store i64 %7, i64* %R14.i, align 8, !mcsema_real_eip !35
  store i64 %8, i64* %R15.i, align 8, !mcsema_real_eip !35
  store i64 %9, i64* %RIP.i, align 8, !mcsema_real_eip !35
  store i1 %148, i1* %CF.i, align 1, !mcsema_real_eip !35
  store i1 %145, i1* %PF.i, align 1, !mcsema_real_eip !35
  store i1 %141, i1* %AF.i, align 1, !mcsema_real_eip !35
  store i1 %146, i1* %ZF.i, align 1, !mcsema_real_eip !35
  store i1 %147, i1* %SF.i, align 1, !mcsema_real_eip !35
  store i1 %151, i1* %OF.i, align 1, !mcsema_real_eip !35
  store i1 %10, i1* %DF.i, align 1, !mcsema_real_eip !35
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* nonnull %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !35
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
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  br label %sub_70.exit

block_0x48.i.i:                                   ; preds = %driverBlockRaw
  %uadd145.i.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %123, i32 %134) #2
  %157 = extractvalue { i32, i1 } %uadd145.i.i, 0
  %158 = xor i32 %157, %134, !mcsema_real_eip !36
  %159 = xor i32 %158, %123, !mcsema_real_eip !36
  %160 = and i32 %159, 16, !mcsema_real_eip !36
  %161 = icmp ne i32 %160, 0, !mcsema_real_eip !36
  %162 = icmp slt i32 %157, 0
  %163 = icmp eq i32 %157, 0, !mcsema_real_eip !36
  %164 = xor i32 %123, -2147483648, !mcsema_real_eip !36
  %165 = xor i32 %164, %134, !mcsema_real_eip !36
  %166 = and i32 %158, %165, !mcsema_real_eip !36
  %167 = icmp slt i32 %166, 0
  %168 = trunc i32 %157 to i8, !mcsema_real_eip !36
  %169 = tail call i8 @llvm.ctpop.i8(i8 %168) #2, !mcsema_real_eip !36
  %170 = and i8 %169, 1
  %171 = icmp eq i8 %170, 0
  %172 = extractvalue { i32, i1 } %uadd145.i.i, 1
  store i32 %157, i32* %136, align 4, !mcsema_real_eip !37
  %173 = zext i32 %157 to i64, !mcsema_real_eip !33
  %174 = load i64, i64* %91, align 8, !mcsema_real_eip !34
  store i64 %173, i64* %RAX.i, align 8, !mcsema_real_eip !35
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !35
  %175 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> <i64 40, i64 30>, <2 x i64>* %175, align 8
  %176 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 20, i64 10>, <2 x i64>* %176, align 8
  store i64 %63, i64* %RSP.i, align 8, !mcsema_real_eip !35
  store i64 %174, i64* %RBP.i, align 8, !mcsema_real_eip !35
  %177 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 50, i64 60>, <2 x i64>* %177, align 8
  store i64 %94, i64* %R10.i, align 8, !mcsema_real_eip !35
  store i64 %4, i64* %R11.i, align 8, !mcsema_real_eip !35
  store i64 %5, i64* %R12.i, align 8, !mcsema_real_eip !35
  store i64 %6, i64* %R13.i, align 8, !mcsema_real_eip !35
  store i64 %7, i64* %R14.i, align 8, !mcsema_real_eip !35
  store i64 %8, i64* %R15.i, align 8, !mcsema_real_eip !35
  store i64 %9, i64* %RIP.i, align 8, !mcsema_real_eip !35
  store i1 %172, i1* %CF.i, align 1, !mcsema_real_eip !35
  store i1 %171, i1* %PF.i, align 1, !mcsema_real_eip !35
  store i1 %161, i1* %AF.i, align 1, !mcsema_real_eip !35
  store i1 %163, i1* %ZF.i, align 1, !mcsema_real_eip !35
  store i1 %162, i1* %SF.i, align 1, !mcsema_real_eip !35
  store i1 %167, i1* %OF.i, align 1, !mcsema_real_eip !35
  store i1 %10, i1* %DF.i, align 1, !mcsema_real_eip !35
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* nonnull %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !35
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
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  br label %sub_70.exit

sub_70.exit:                                      ; preds = %block_0x56.i.i, %block_0x48.i.i
  %178 = phi i64 [ %174, %block_0x48.i.i ], [ %153, %block_0x56.i.i ]
  %179 = phi i64 [ %173, %block_0x48.i.i ], [ %152, %block_0x56.i.i ]
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* nonnull %12, i32 128, i32 4, i1 false) #2, !mcsema_real_eip !10
  %180 = add i64 %178, -8, !mcsema_real_eip !38
  %181 = trunc i64 %179 to i32, !mcsema_real_eip !38
  %182 = inttoptr i64 %180 to i32*
  store i32 %181, i32* %182, align 4, !mcsema_real_eip !38
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %63, i64 32) #2
  %183 = extractvalue { i64, i1 } %uadd.i, 0
  %184 = xor i64 %183, %63, !mcsema_real_eip !39
  %185 = and i64 %184, 16, !mcsema_real_eip !39
  %186 = icmp ne i64 %185, 0, !mcsema_real_eip !39
  %187 = icmp slt i64 %183, 0
  %188 = icmp eq i64 %183, 0, !mcsema_real_eip !39
  %189 = add i64 %2, 9223372036854775768
  %190 = and i64 %184, %189, !mcsema_real_eip !39
  %191 = icmp slt i64 %190, 0
  %192 = trunc i64 %183 to i8, !mcsema_real_eip !39
  %193 = tail call i8 @llvm.ctpop.i8(i8 %192) #2, !mcsema_real_eip !39
  %194 = and i8 %193, 1
  %195 = icmp eq i8 %194, 0
  %196 = extractvalue { i64, i1 } %uadd.i, 1
  %197 = inttoptr i64 %183 to i64*, !mcsema_real_eip !40
  %198 = load i64, i64* %197, align 8, !mcsema_real_eip !40
  %199 = add i64 %183, 16, !mcsema_real_eip !41
  store i64 %179, i64* %RAX.i, align 8, !mcsema_real_eip !41
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !41
  %200 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> <i64 40, i64 30>, <2 x i64>* %200, align 8
  %201 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 20, i64 10>, <2 x i64>* %201, align 8
  store i64 %199, i64* %RSP.i, align 8, !mcsema_real_eip !41
  store i64 %198, i64* %RBP.i, align 8, !mcsema_real_eip !41
  %202 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 50, i64 60>, <2 x i64>* %202, align 8
  store i64 %94, i64* %R10.i, align 8, !mcsema_real_eip !41
  store i64 %4, i64* %R11.i, align 8, !mcsema_real_eip !41
  store i64 %5, i64* %R12.i, align 8, !mcsema_real_eip !41
  store i64 %6, i64* %R13.i, align 8, !mcsema_real_eip !41
  store i64 %7, i64* %R14.i, align 8, !mcsema_real_eip !41
  store i64 %8, i64* %R15.i, align 8, !mcsema_real_eip !41
  store i64 %9, i64* %RIP.i, align 8, !mcsema_real_eip !41
  store i1 %196, i1* %CF.i, align 1, !mcsema_real_eip !41
  store i1 %195, i1* %PF.i, align 1, !mcsema_real_eip !41
  store i1 %186, i1* %AF.i, align 1, !mcsema_real_eip !41
  store i1 %188, i1* %ZF.i, align 1, !mcsema_real_eip !41
  store i1 %187, i1* %SF.i, align 1, !mcsema_real_eip !41
  store i1 %191, i1* %OF.i, align 1, !mcsema_real_eip !41
  store i1 %10, i1* %DF.i, align 1, !mcsema_real_eip !41
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %12, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !41
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
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #0

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 112, [12 x i8] c"\09pushq\09%rbp\00"}
!4 = !{i64 116, [16 x i8] c"\09subq\09$32, %rsp\00"}
!5 = !{i64 163, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!6 = !{i64 170, [18 x i8] c"\09movl\09$70, (%rsp)\00"}
!7 = !{i64 177, [19 x i8] c"\09movl\09$80, 8(%rsp)\00"}
!8 = !{i64 185, [23 x i8] c"\09movl\09%r10d, -12(%rbp)\00"}
!9 = !{i64 189, [22 x i8] c"\09movl\09%eax, -16(%rbp)\00"}
!10 = !{i64 192, [12 x i8] c"\09callq\09-197\00"}
!11 = !{i64 4, [21 x i8] c"\09movl\0924(%rbp), %eax\00"}
!12 = !{i64 7, [22 x i8] c"\09movl\0916(%rbp), %r10d\00"}
!13 = !{i64 11, [21 x i8] c"\09movl\09%edi, -4(%rbp)\00"}
!14 = !{i64 14, [21 x i8] c"\09movl\09%esi, -8(%rbp)\00"}
!15 = !{i64 17, [22 x i8] c"\09movl\09%edx, -12(%rbp)\00"}
!16 = !{i64 20, [22 x i8] c"\09movl\09%ecx, -16(%rbp)\00"}
!17 = !{i64 23, [22 x i8] c"\09movl\09%r8d, -20(%rbp)\00"}
!18 = !{i64 27, [22 x i8] c"\09movl\09%r9d, -24(%rbp)\00"}
!19 = !{i64 31, [23 x i8] c"\09movl\09%r10d, -28(%rbp)\00"}
!20 = !{i64 35, [22 x i8] c"\09movl\09%eax, -32(%rbp)\00"}
!21 = !{i64 38, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!22 = !{i64 41, [21 x i8] c"\09addl\09-8(%rbp), %eax\00"}
!23 = !{i64 44, [22 x i8] c"\09addl\09-12(%rbp), %eax\00"}
!24 = !{i64 47, [22 x i8] c"\09addl\09-16(%rbp), %eax\00"}
!25 = !{i64 50, [22 x i8] c"\09addl\09-20(%rbp), %eax\00"}
!26 = !{i64 53, [22 x i8] c"\09addl\09-24(%rbp), %eax\00"}
!27 = !{i64 56, [22 x i8] c"\09addl\09-28(%rbp), %eax\00"}
!28 = !{i64 59, [22 x i8] c"\09movl\09%eax, -36(%rbp)\00"}
!29 = !{i64 62, [21 x i8] c"\09cmpl\09$40, -36(%rbp)\00"}
!30 = !{i64 66, [8 x i8] c"\09jle\0914\00"}
!31 = !{i64 89, [22 x i8] c"\09subl\09-32(%rbp), %eax\00"}
!32 = !{i64 92, [22 x i8] c"\09movl\09%eax, -40(%rbp)\00"}
!33 = !{i64 95, [22 x i8] c"\09movl\09-40(%rbp), %eax\00"}
!34 = !{i64 98, [11 x i8] c"\09popq\09%rbp\00"}
!35 = !{i64 99, [6 x i8] c"\09retq\00"}
!36 = !{i64 75, [22 x i8] c"\09addl\09-32(%rbp), %eax\00"}
!37 = !{i64 78, [22 x i8] c"\09movl\09%eax, -40(%rbp)\00"}
!38 = !{i64 197, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!39 = !{i64 203, [16 x i8] c"\09addq\09$32, %rsp\00"}
!40 = !{i64 207, [11 x i8] c"\09popq\09%rbp\00"}
!41 = !{i64 208, [6 x i8] c"\09retq\00"}
