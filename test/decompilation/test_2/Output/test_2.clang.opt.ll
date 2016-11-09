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
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !3
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
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !3
  %43 = load i11, i11* %FPU_FOPCODE.i, align 1
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %44 = load i128, i128* %XMM0.i, align 1
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %45 = load i128, i128* %XMM1.i, align 1
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %46 = load i128, i128* %XMM2.i, align 1
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %47 = load i128, i128* %XMM3.i, align 1
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %48 = load i128, i128* %XMM4.i, align 1
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %49 = load i128, i128* %XMM5.i, align 1
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %50 = load i128, i128* %XMM6.i, align 1
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %51 = load i128, i128* %XMM7.i, align 1
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %52 = load i128, i128* %XMM8.i, align 1
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %53 = load i128, i128* %XMM9.i, align 1
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %54 = load i128, i128* %XMM10.i, align 1
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %55 = load i128, i128* %XMM11.i, align 1
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %56 = load i128, i128* %XMM12.i, align 1
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %57 = load i128, i128* %XMM13.i, align 1
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %58 = load i128, i128* %XMM14.i, align 1
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %59 = load i128, i128* %XMM15.i, align 1
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %60 = load i64, i64* %STACK_BASE.i, align 8
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %61 = load i64, i64* %STACK_LIMIT.i, align 8
  %62 = add i64 %2, -8
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !3
  store i64 %3, i64* %63, align 8, !mcsema_real_eip !3
  %64 = add i64 %2, -40
  %65 = xor i64 %64, %62, !mcsema_real_eip !4
  %66 = and i64 %65, 16, !mcsema_real_eip !4
  %67 = icmp ne i64 %66, 0, !mcsema_real_eip !4
  %68 = trunc i64 %64 to i8, !mcsema_real_eip !4
  %69 = tail call i8 @llvm.ctpop.i8(i8 %68) #2, !mcsema_real_eip !4
  %70 = and i8 %69, 1
  %71 = icmp eq i8 %70, 0
  %72 = icmp eq i64 %64, 0, !mcsema_real_eip !4
  %73 = icmp slt i64 %64, 0
  %74 = icmp ult i64 %62, 32, !mcsema_real_eip !4
  %75 = and i64 %65, %62, !mcsema_real_eip !4
  %76 = icmp slt i64 %75, 0
  %77 = add i64 %2, -12, !mcsema_real_eip !5
  %78 = inttoptr i64 %77 to i32*
  store i32 0, i32* %78, align 4, !mcsema_real_eip !5
  %79 = inttoptr i64 %64 to i32*
  store i32 70, i32* %79, align 4, !mcsema_real_eip !6
  %80 = add i64 %2, -32, !mcsema_real_eip !7
  %81 = inttoptr i64 %80 to i32*
  store i32 80, i32* %81, align 4, !mcsema_real_eip !7
  %82 = add i64 %2, -20, !mcsema_real_eip !8
  %83 = inttoptr i64 %82 to i32*
  store i32 80, i32* %83, align 4, !mcsema_real_eip !8
  %84 = add i64 %2, -24, !mcsema_real_eip !9
  %85 = inttoptr i64 %84 to i32*
  store i32 70, i32* %85, align 4, !mcsema_real_eip !9
  %86 = add i64 %2, -48
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !10
  store i64 -4981261766360305936, i64* %87, align 8, !mcsema_real_eip !10
  store i64 70, i64* %RAX.i, align 8, !mcsema_real_eip !10
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !10
  %88 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> <i64 40, i64 30>, <2 x i64>* %88, align 8
  %89 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 20, i64 10>, <2 x i64>* %89, align 8
  store i64 %86, i64* %RSP.i, align 8, !mcsema_real_eip !10
  store i64 %62, i64* %RBP.i, align 8, !mcsema_real_eip !10
  %90 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 50, i64 60>, <2 x i64>* %90, align 8
  store i64 80, i64* %R10.i, align 8, !mcsema_real_eip !10
  store i64 %4, i64* %R11.i, align 8, !mcsema_real_eip !10
  store i64 %5, i64* %R12.i, align 8, !mcsema_real_eip !10
  store i64 %6, i64* %R13.i, align 8, !mcsema_real_eip !10
  store i64 %7, i64* %R14.i, align 8, !mcsema_real_eip !10
  store i64 %8, i64* %R15.i, align 8, !mcsema_real_eip !10
  store i64 %9, i64* %RIP.i, align 8, !mcsema_real_eip !10
  store i1 %74, i1* %CF.i, align 1, !mcsema_real_eip !10
  store i1 %71, i1* %PF.i, align 1, !mcsema_real_eip !10
  store i1 %67, i1* %AF.i, align 1, !mcsema_real_eip !10
  store i1 %72, i1* %ZF.i, align 1, !mcsema_real_eip !10
  store i1 %73, i1* %SF.i, align 1, !mcsema_real_eip !10
  store i1 %76, i1* %OF.i, align 1, !mcsema_real_eip !10
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
  store i11 %43, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !10
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !10
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !10
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !10
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !10
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !10
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !10
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !10
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !10
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !10
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !10
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !10
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !10
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !10
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !10
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !10
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !10
  store i64 %60, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !10
  store i64 %61, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !10
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast.i, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false) #2
  %91 = add i64 %2, -56
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !2
  store i64 %62, i64* %92, align 8, !mcsema_real_eip !2
  %93 = load i32, i32* %81, align 4, !mcsema_real_eip !11
  %94 = load i32, i32* %79, align 4, !mcsema_real_eip !12
  %95 = zext i32 %94 to i64
  %96 = add i64 %2, -60, !mcsema_real_eip !13
  %97 = inttoptr i64 %96 to i32*
  store i32 10, i32* %97, align 4, !mcsema_real_eip !13
  %98 = add i64 %2, -64, !mcsema_real_eip !14
  %99 = inttoptr i64 %98 to i32*
  store i32 20, i32* %99, align 4, !mcsema_real_eip !14
  %100 = add i64 %2, -68, !mcsema_real_eip !15
  %101 = inttoptr i64 %100 to i32*
  store i32 30, i32* %101, align 4, !mcsema_real_eip !15
  %102 = add i64 %2, -72, !mcsema_real_eip !16
  %103 = inttoptr i64 %102 to i32*
  store i32 40, i32* %103, align 4, !mcsema_real_eip !16
  %104 = add i64 %2, -76, !mcsema_real_eip !17
  %105 = inttoptr i64 %104 to i32*
  store i32 50, i32* %105, align 4, !mcsema_real_eip !17
  %106 = add i64 %2, -80, !mcsema_real_eip !18
  %107 = inttoptr i64 %106 to i32*
  store i32 60, i32* %107, align 4, !mcsema_real_eip !18
  %108 = add i64 %2, -84, !mcsema_real_eip !19
  %109 = inttoptr i64 %108 to i32*
  store i32 %94, i32* %109, align 4, !mcsema_real_eip !19
  %110 = add i64 %2, -88, !mcsema_real_eip !20
  %111 = inttoptr i64 %110 to i32*
  store i32 %93, i32* %111, align 4, !mcsema_real_eip !20
  %112 = load i32, i32* %97, align 4, !mcsema_real_eip !21
  %113 = load i32, i32* %99, align 4, !mcsema_real_eip !22
  %114 = add i32 %113, %112
  %115 = load i32, i32* %101, align 4, !mcsema_real_eip !23
  %116 = add i32 %114, %115
  %117 = load i32, i32* %103, align 4, !mcsema_real_eip !24
  %118 = add i32 %116, %117
  %119 = load i32, i32* %105, align 4, !mcsema_real_eip !25
  %120 = add i32 %118, %119
  %121 = load i32, i32* %107, align 4, !mcsema_real_eip !26
  %122 = add i32 %120, %121
  %123 = load i32, i32* %109, align 4, !mcsema_real_eip !27
  %124 = add i32 %122, %123
  %125 = add i64 %2, -92, !mcsema_real_eip !28
  %126 = inttoptr i64 %125 to i32*
  store i32 %124, i32* %126, align 4, !mcsema_real_eip !28
  %127 = add i32 %124, -40
  %128 = icmp eq i32 %127, 0, !mcsema_real_eip !29
  %129 = icmp slt i32 %127, 0
  %130 = sub i32 39, %124
  %131 = and i32 %130, %124
  %132 = icmp slt i32 %131, 0
  %133 = xor i1 %129, %132
  %134 = or i1 %128, %133, !mcsema_real_eip !30
  %135 = load i32, i32* %111, align 4, !mcsema_real_eip !31
  br i1 %134, label %block_0x59.i.i, label %block_0x4b.i.i, !mcsema_real_eip !30

block_0x4b.i.i:                                   ; preds = %driverBlockRaw
  %uadd77.i.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %124, i32 %135) #2
  %136 = extractvalue { i32, i1 } %uadd77.i.i, 0
  %137 = xor i32 %136, %135, !mcsema_real_eip !32
  %138 = xor i32 %137, %124, !mcsema_real_eip !32
  %139 = icmp eq i32 %136, 0, !mcsema_real_eip !32
  %140 = xor i32 %124, -2147483648, !mcsema_real_eip !32
  %141 = xor i32 %140, %135, !mcsema_real_eip !32
  %142 = and i32 %137, %141, !mcsema_real_eip !32
  %143 = trunc i32 %136 to i8, !mcsema_real_eip !32
  %144 = tail call i8 @llvm.ctpop.i8(i8 %143) #2, !mcsema_real_eip !32
  %145 = extractvalue { i32, i1 } %uadd77.i.i, 1
  br label %sub_70.exit, !mcsema_real_eip !33

block_0x59.i.i:                                   ; preds = %driverBlockRaw
  %146 = sub i32 %124, %135, !mcsema_real_eip !31
  %147 = xor i32 %146, %124, !mcsema_real_eip !31
  %148 = xor i32 %147, %135, !mcsema_real_eip !31
  %149 = trunc i32 %146 to i8, !mcsema_real_eip !31
  %150 = tail call i8 @llvm.ctpop.i8(i8 %149) #2, !mcsema_real_eip !31
  %151 = icmp eq i32 %124, %135
  %152 = icmp ult i32 %124, %135, !mcsema_real_eip !31
  %153 = xor i32 %135, %124, !mcsema_real_eip !31
  %154 = and i32 %147, %153, !mcsema_real_eip !31
  br label %sub_70.exit, !mcsema_real_eip !34

sub_70.exit:                                      ; preds = %block_0x4b.i.i, %block_0x59.i.i
  %ZF_val.0.i.i = phi i1 [ %151, %block_0x59.i.i ], [ %139, %block_0x4b.i.i ]
  %PF_val.0.in.in.i.i = phi i8 [ %150, %block_0x59.i.i ], [ %144, %block_0x4b.i.i ]
  %AF_val.0.in.in.i.i = phi i32 [ %148, %block_0x59.i.i ], [ %138, %block_0x4b.i.i ]
  %CF_val.0.i.i = phi i1 [ %152, %block_0x59.i.i ], [ %145, %block_0x4b.i.i ]
  %SF_val.0.in.i.i = phi i32 [ %146, %block_0x59.i.i ], [ %136, %block_0x4b.i.i ]
  %OF_val.0.in.i.i = phi i32 [ %154, %block_0x59.i.i ], [ %142, %block_0x4b.i.i ]
  %AF_val.0.in.i.i = and i32 %AF_val.0.in.in.i.i, 16
  %PF_val.0.in.i.i = and i8 %PF_val.0.in.in.i.i, 1
  %OF_val.0.i.i = icmp slt i32 %OF_val.0.in.i.i, 0
  %SF_val.0.i.i = icmp slt i32 %SF_val.0.in.i.i, 0
  %AF_val.0.i.i = icmp ne i32 %AF_val.0.in.i.i, 0
  %PF_val.0.i.i = icmp eq i8 %PF_val.0.in.i.i, 0
  %155 = add i64 %2, -96
  %156 = inttoptr i64 %155 to i32*
  store i32 %SF_val.0.in.i.i, i32* %156, align 4
  %157 = zext i32 %SF_val.0.in.i.i to i64
  %158 = load i64, i64* %92, align 8
  store i64 %157, i64* %RAX.i, align 8, !mcsema_real_eip !35
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !35
  %159 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> <i64 40, i64 30>, <2 x i64>* %159, align 8
  %160 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 20, i64 10>, <2 x i64>* %160, align 8
  store i64 %64, i64* %RSP.i, align 8, !mcsema_real_eip !35
  store i64 %158, i64* %RBP.i, align 8, !mcsema_real_eip !35
  %161 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 50, i64 60>, <2 x i64>* %161, align 8
  store i64 %95, i64* %R10.i, align 8, !mcsema_real_eip !35
  store i64 %4, i64* %R11.i, align 8, !mcsema_real_eip !35
  store i64 %5, i64* %R12.i, align 8, !mcsema_real_eip !35
  store i64 %6, i64* %R13.i, align 8, !mcsema_real_eip !35
  store i64 %7, i64* %R14.i, align 8, !mcsema_real_eip !35
  store i64 %8, i64* %R15.i, align 8, !mcsema_real_eip !35
  store i64 %9, i64* %RIP.i, align 8, !mcsema_real_eip !35
  store i1 %CF_val.0.i.i, i1* %CF.i, align 1, !mcsema_real_eip !35
  store i1 %PF_val.0.i.i, i1* %PF.i, align 1, !mcsema_real_eip !35
  store i1 %AF_val.0.i.i, i1* %AF.i, align 1, !mcsema_real_eip !35
  store i1 %ZF_val.0.i.i, i1* %ZF.i, align 1, !mcsema_real_eip !35
  store i1 %SF_val.0.i.i, i1* %SF.i, align 1, !mcsema_real_eip !35
  store i1 %OF_val.0.i.i, i1* %OF.i, align 1, !mcsema_real_eip !35
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
  store i11 %43, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !35
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !35
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !35
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !35
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !35
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !35
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !35
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !35
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !35
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !35
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !35
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !35
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !35
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !35
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !35
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !35
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !35
  store i64 %60, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !35
  store i64 %61, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !35
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %12, i32 128, i32 4, i1 false) #2, !mcsema_real_eip !10
  %162 = add i64 %158, -8, !mcsema_real_eip !36
  %163 = inttoptr i64 %162 to i32*
  store i32 %SF_val.0.in.i.i, i32* %163, align 4, !mcsema_real_eip !36
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %64, i64 32) #2
  %164 = extractvalue { i64, i1 } %uadd.i, 0
  %165 = xor i64 %164, %64, !mcsema_real_eip !37
  %166 = and i64 %165, 16, !mcsema_real_eip !37
  %167 = icmp ne i64 %166, 0, !mcsema_real_eip !37
  %168 = icmp slt i64 %164, 0
  %169 = icmp eq i64 %164, 0, !mcsema_real_eip !37
  %170 = add i64 %2, 9223372036854775768
  %171 = and i64 %165, %170, !mcsema_real_eip !37
  %172 = icmp slt i64 %171, 0
  %173 = trunc i64 %164 to i8, !mcsema_real_eip !37
  %174 = tail call i8 @llvm.ctpop.i8(i8 %173) #2, !mcsema_real_eip !37
  %175 = and i8 %174, 1
  %176 = icmp eq i8 %175, 0
  %177 = extractvalue { i64, i1 } %uadd.i, 1
  %178 = inttoptr i64 %164 to i64*, !mcsema_real_eip !38
  %179 = load i64, i64* %178, align 8, !mcsema_real_eip !38
  %180 = add i64 %164, 16, !mcsema_real_eip !39
  store i64 %157, i64* %RAX.i, align 8, !mcsema_real_eip !39
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !39
  %181 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> <i64 40, i64 30>, <2 x i64>* %181, align 8
  %182 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 20, i64 10>, <2 x i64>* %182, align 8
  store i64 %180, i64* %RSP.i, align 8, !mcsema_real_eip !39
  store i64 %179, i64* %RBP.i, align 8, !mcsema_real_eip !39
  store i64 50, i64* %R8.i, align 8, !mcsema_real_eip !39
  store i64 60, i64* %R9.i, align 8, !mcsema_real_eip !39
  store i64 %95, i64* %R10.i, align 8, !mcsema_real_eip !39
  store i64 %4, i64* %R11.i, align 8, !mcsema_real_eip !39
  store i64 %5, i64* %R12.i, align 8, !mcsema_real_eip !39
  store i64 %6, i64* %R13.i, align 8, !mcsema_real_eip !39
  store i64 %7, i64* %R14.i, align 8, !mcsema_real_eip !39
  store i64 %8, i64* %R15.i, align 8, !mcsema_real_eip !39
  store i64 %9, i64* %RIP.i, align 8, !mcsema_real_eip !39
  store i1 %177, i1* %CF.i, align 1, !mcsema_real_eip !39
  store i1 %176, i1* %PF.i, align 1, !mcsema_real_eip !39
  store i1 %167, i1* %AF.i, align 1, !mcsema_real_eip !39
  store i1 %169, i1* %ZF.i, align 1, !mcsema_real_eip !39
  store i1 %168, i1* %SF.i, align 1, !mcsema_real_eip !39
  store i1 %172, i1* %OF.i, align 1, !mcsema_real_eip !39
  store i1 %10, i1* %DF.i, align 1, !mcsema_real_eip !39
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !39
  store i1 %13, i1* %FPU_B.i, align 1, !mcsema_real_eip !39
  store i1 %14, i1* %FPU_C3.i, align 1, !mcsema_real_eip !39
  store i3 %15, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !39
  store i1 %16, i1* %FPU_C2.i, align 1, !mcsema_real_eip !39
  store i1 %17, i1* %FPU_C1.i, align 1, !mcsema_real_eip !39
  store i1 %18, i1* %FPU_C0.i, align 1, !mcsema_real_eip !39
  store i1 %19, i1* %FPU_ES.i, align 1, !mcsema_real_eip !39
  store i1 %20, i1* %FPU_SF.i, align 1, !mcsema_real_eip !39
  store i1 %21, i1* %FPU_PE.i, align 1, !mcsema_real_eip !39
  store i1 %22, i1* %FPU_UE.i, align 1, !mcsema_real_eip !39
  store i1 %23, i1* %FPU_OE.i, align 1, !mcsema_real_eip !39
  store i1 %24, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !39
  store i1 %25, i1* %FPU_DE.i, align 1, !mcsema_real_eip !39
  store i1 %26, i1* %FPU_IE.i, align 1, !mcsema_real_eip !39
  store i1 %27, i1* %FPU_X.i, align 1, !mcsema_real_eip !39
  store i2 %28, i2* %FPU_RC.i, align 1, !mcsema_real_eip !39
  store i2 %29, i2* %FPU_PC.i, align 1, !mcsema_real_eip !39
  store i1 %30, i1* %FPU_PM.i, align 1, !mcsema_real_eip !39
  store i1 %31, i1* %FPU_UM.i, align 1, !mcsema_real_eip !39
  store i1 %32, i1* %FPU_OM.i, align 1, !mcsema_real_eip !39
  store i1 %33, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !39
  store i1 %34, i1* %FPU_DM.i, align 1, !mcsema_real_eip !39
  store i1 %35, i1* %FPU_IM.i, align 1, !mcsema_real_eip !39
  store i64 %38, i64* %37, align 4
  store i16 %39, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !39
  store i64 %40, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !39
  store i16 %41, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !39
  store i64 %42, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !39
  store i11 %43, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !39
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !39
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !39
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !39
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !39
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !39
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !39
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !39
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !39
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !39
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !39
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !39
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !39
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !39
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !39
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !39
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !39
  store i64 %60, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !39
  store i64 %61, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !39
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
!2 = !{i64 0}
!3 = !{i64 112}
!4 = !{i64 116}
!5 = !{i64 163}
!6 = !{i64 170}
!7 = !{i64 177}
!8 = !{i64 185}
!9 = !{i64 189}
!10 = !{i64 192}
!11 = !{i64 4}
!12 = !{i64 7}
!13 = !{i64 11}
!14 = !{i64 14}
!15 = !{i64 17}
!16 = !{i64 20}
!17 = !{i64 23}
!18 = !{i64 27}
!19 = !{i64 31}
!20 = !{i64 35}
!21 = !{i64 38}
!22 = !{i64 41}
!23 = !{i64 44}
!24 = !{i64 47}
!25 = !{i64 50}
!26 = !{i64 53}
!27 = !{i64 56}
!28 = !{i64 59}
!29 = !{i64 62}
!30 = !{i64 69}
!31 = !{i64 92}
!32 = !{i64 78}
!33 = !{i64 84}
!34 = !{i64 75}
!35 = !{i64 102}
!36 = !{i64 197}
!37 = !{i64 203}
!38 = !{i64 207}
!39 = !{i64 208}
