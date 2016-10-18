; ModuleID = 'Output/test_1.clang.opt.bc'
source_filename = "Output/test_1.clang.bc"
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
  %1 = bitcast %struct.regs* %0 to <2 x i64>*
  %2 = load <2 x i64>, <2 x i64>* %1, align 8
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !3
  %3 = load i64, i64* %RCX.i, align 8
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !3
  %4 = load i64, i64* %RDX.i, align 8
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !3
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !3
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !3
  %5 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !3
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !3
  %6 = load i64, i64* %RBP.i, align 8, !mcsema_real_eip !3
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !3
  %7 = load i64, i64* %R8.i, align 8
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !3
  %8 = load i64, i64* %R9.i, align 8
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !3
  %9 = load i64, i64* %R10.i, align 8
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
  %10 = load i64, i64* %R11.i, align 8
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %11 = load i64, i64* %R12.i, align 8
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !3
  %12 = load i64, i64* %R13.i, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %13 = load i64, i64* %R14.i, align 8
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !3
  %14 = load i64, i64* %R15.i, align 8
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %15 = load i64, i64* %RIP.i, align 8
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !3
  %16 = load i1, i1* %DF.i, align 1
  %17 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !3
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %18, i32 128, i32 4, i1 false) #2, !mcsema_real_eip !3
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !3
  %19 = load i1, i1* %FPU_B.i, align 1
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !3
  %20 = load i1, i1* %FPU_C3.i, align 1
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !3
  %21 = load i3, i3* %FPU_TOP.i, align 1
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !3
  %22 = load i1, i1* %FPU_C2.i, align 1
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !3
  %23 = load i1, i1* %FPU_C1.i, align 1
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !3
  %24 = load i1, i1* %FPU_C0.i, align 1
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !3
  %25 = load i1, i1* %FPU_ES.i, align 1
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !3
  %26 = load i1, i1* %FPU_SF.i, align 1
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !3
  %27 = load i1, i1* %FPU_PE.i, align 1
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !3
  %28 = load i1, i1* %FPU_UE.i, align 1
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !3
  %29 = load i1, i1* %FPU_OE.i, align 1
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !3
  %30 = load i1, i1* %FPU_ZE.i, align 1
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !3
  %31 = load i1, i1* %FPU_DE.i, align 1
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !3
  %32 = load i1, i1* %FPU_IE.i, align 1
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !3
  %33 = load i1, i1* %FPU_X.i, align 1
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !3
  %34 = load i2, i2* %FPU_RC.i, align 1
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !3
  %35 = load i2, i2* %FPU_PC.i, align 1
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !3
  %36 = load i1, i1* %FPU_PM.i, align 1
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !3
  %37 = load i1, i1* %FPU_UM.i, align 1
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !3
  %38 = load i1, i1* %FPU_OM.i, align 1
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !3
  %39 = load i1, i1* %FPU_ZM.i, align 1
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !3
  %40 = load i1, i1* %FPU_DM.i, align 1
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !3
  %41 = load i1, i1* %FPU_IM.i, align 1
  %42 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !3
  %43 = bitcast i8* %42 to i64*
  %44 = load i64, i64* %43, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !3
  %45 = load i16, i16* %FPU_LASTIP_SEG.i, align 1
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !3
  %46 = load i64, i64* %FPU_LASTIP_OFF.i, align 8
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !3
  %47 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !3
  %48 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %49 = load i128, i128* %XMM0.i, align 1
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %50 = load i128, i128* %XMM1.i, align 1
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %51 = load i128, i128* %XMM2.i, align 1
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %52 = load i128, i128* %XMM3.i, align 1
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %53 = load i128, i128* %XMM4.i, align 1
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %54 = load i128, i128* %XMM5.i, align 1
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %55 = load i128, i128* %XMM6.i, align 1
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %56 = load i128, i128* %XMM7.i, align 1
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %57 = load i128, i128* %XMM8.i, align 1
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %58 = load i128, i128* %XMM9.i, align 1
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %59 = load i128, i128* %XMM10.i, align 1
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %60 = load i128, i128* %XMM11.i, align 1
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %61 = load i128, i128* %XMM12.i, align 1
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %62 = load i128, i128* %XMM13.i, align 1
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %63 = load i128, i128* %XMM14.i, align 1
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %64 = load i128, i128* %XMM15.i, align 1
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %65 = load i64, i64* %STACK_BASE.i, align 8
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %66 = load i64, i64* %STACK_LIMIT.i, align 8
  %67 = add i64 %5, -8
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !3
  store i64 %6, i64* %68, align 8, !mcsema_real_eip !3
  %69 = add i64 %5, -24
  %70 = xor i64 %69, %67, !mcsema_real_eip !4
  %71 = and i64 %70, 16
  %72 = icmp eq i64 %71, 0
  %73 = trunc i64 %69 to i8, !mcsema_real_eip !4
  %74 = tail call i8 @llvm.ctpop.i8(i8 %73) #2, !mcsema_real_eip !4
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  %77 = icmp eq i64 %69, 0, !mcsema_real_eip !4
  %78 = icmp slt i64 %69, 0
  %79 = icmp ult i64 %67, 16, !mcsema_real_eip !4
  %80 = and i64 %70, %67, !mcsema_real_eip !4
  %81 = icmp slt i64 %80, 0
  %82 = add i64 %5, -12, !mcsema_real_eip !5
  %83 = inttoptr i64 %82 to i32*
  store i32 0, i32* %83, align 4, !mcsema_real_eip !5
  %84 = add i64 %5, -32
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !6
  store i64 -4981261766360305936, i64* %85, align 8, !mcsema_real_eip !6
  %86 = bitcast %struct.regs* %0 to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %86, align 8
  store i64 %3, i64* %RCX.i, align 8, !mcsema_real_eip !6
  store i64 %4, i64* %RDX.i, align 8, !mcsema_real_eip !6
  %87 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 20, i64 10>, <2 x i64>* %87, align 8
  store i64 %84, i64* %RSP.i, align 8, !mcsema_real_eip !6
  store i64 %67, i64* %RBP.i, align 8, !mcsema_real_eip !6
  store i64 %7, i64* %R8.i, align 8, !mcsema_real_eip !6
  store i64 %8, i64* %R9.i, align 8, !mcsema_real_eip !6
  store i64 %9, i64* %R10.i, align 8, !mcsema_real_eip !6
  store i64 %10, i64* %R11.i, align 8, !mcsema_real_eip !6
  store i64 %11, i64* %R12.i, align 8, !mcsema_real_eip !6
  store i64 %12, i64* %R13.i, align 8, !mcsema_real_eip !6
  store i64 %13, i64* %R14.i, align 8, !mcsema_real_eip !6
  store i64 %14, i64* %R15.i, align 8, !mcsema_real_eip !6
  store i64 %15, i64* %RIP.i, align 8, !mcsema_real_eip !6
  store i1 %79, i1* %CF.i, align 1, !mcsema_real_eip !6
  store i1 %76, i1* %PF.i, align 1, !mcsema_real_eip !6
  store i1 %72, i1* %AF.i, align 1, !mcsema_real_eip !6
  store i1 %77, i1* %ZF.i, align 1, !mcsema_real_eip !6
  store i1 %78, i1* %SF.i, align 1, !mcsema_real_eip !6
  store i1 %81, i1* %OF.i, align 1, !mcsema_real_eip !6
  store i1 %16, i1* %DF.i, align 1, !mcsema_real_eip !6
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !6
  store i1 %19, i1* %FPU_B.i, align 1, !mcsema_real_eip !6
  store i1 %20, i1* %FPU_C3.i, align 1, !mcsema_real_eip !6
  store i3 %21, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !6
  store i1 %22, i1* %FPU_C2.i, align 1, !mcsema_real_eip !6
  store i1 %23, i1* %FPU_C1.i, align 1, !mcsema_real_eip !6
  store i1 %24, i1* %FPU_C0.i, align 1, !mcsema_real_eip !6
  store i1 %25, i1* %FPU_ES.i, align 1, !mcsema_real_eip !6
  store i1 %26, i1* %FPU_SF.i, align 1, !mcsema_real_eip !6
  store i1 %27, i1* %FPU_PE.i, align 1, !mcsema_real_eip !6
  store i1 %28, i1* %FPU_UE.i, align 1, !mcsema_real_eip !6
  store i1 %29, i1* %FPU_OE.i, align 1, !mcsema_real_eip !6
  store i1 %30, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !6
  store i1 %31, i1* %FPU_DE.i, align 1, !mcsema_real_eip !6
  store i1 %32, i1* %FPU_IE.i, align 1, !mcsema_real_eip !6
  store i1 %33, i1* %FPU_X.i, align 1, !mcsema_real_eip !6
  store i2 %34, i2* %FPU_RC.i, align 1, !mcsema_real_eip !6
  store i2 %35, i2* %FPU_PC.i, align 1, !mcsema_real_eip !6
  store i1 %36, i1* %FPU_PM.i, align 1, !mcsema_real_eip !6
  store i1 %37, i1* %FPU_UM.i, align 1, !mcsema_real_eip !6
  store i1 %38, i1* %FPU_OM.i, align 1, !mcsema_real_eip !6
  store i1 %39, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !6
  store i1 %40, i1* %FPU_DM.i, align 1, !mcsema_real_eip !6
  store i1 %41, i1* %FPU_IM.i, align 1, !mcsema_real_eip !6
  store i64 %44, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !6
  store i64 %46, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !6
  store i16 %47, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !6
  store i64 %48, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !6
  store i128 %49, i128* %XMM0.i, align 1, !mcsema_real_eip !6
  store i128 %50, i128* %XMM1.i, align 1, !mcsema_real_eip !6
  store i128 %51, i128* %XMM2.i, align 1, !mcsema_real_eip !6
  store i128 %52, i128* %XMM3.i, align 1, !mcsema_real_eip !6
  store i128 %53, i128* %XMM4.i, align 1, !mcsema_real_eip !6
  store i128 %54, i128* %XMM5.i, align 1, !mcsema_real_eip !6
  store i128 %55, i128* %XMM6.i, align 1, !mcsema_real_eip !6
  store i128 %56, i128* %XMM7.i, align 1, !mcsema_real_eip !6
  store i128 %57, i128* %XMM8.i, align 1, !mcsema_real_eip !6
  store i128 %58, i128* %XMM9.i, align 1, !mcsema_real_eip !6
  store i128 %59, i128* %XMM10.i, align 1, !mcsema_real_eip !6
  store i128 %60, i128* %XMM11.i, align 1, !mcsema_real_eip !6
  store i128 %61, i128* %XMM12.i, align 1, !mcsema_real_eip !6
  store i128 %62, i128* %XMM13.i, align 1, !mcsema_real_eip !6
  store i128 %63, i128* %XMM14.i, align 1, !mcsema_real_eip !6
  store i128 %64, i128* %XMM15.i, align 1, !mcsema_real_eip !6
  store i64 %65, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !6
  store i64 %66, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !6
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast.i, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false) #2
  %88 = add i64 %5, -40
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !2
  store i64 %67, i64* %89, align 8, !mcsema_real_eip !2
  %90 = add i64 %5, -44, !mcsema_real_eip !7
  %91 = inttoptr i64 %90 to i32*
  store i32 10, i32* %91, align 4, !mcsema_real_eip !7
  %92 = add i64 %5, -48, !mcsema_real_eip !8
  %93 = inttoptr i64 %92 to i32*
  store i32 20, i32* %93, align 4, !mcsema_real_eip !8
  %94 = load i32, i32* %91, align 4, !mcsema_real_eip !9
  %95 = add i32 %94, 20
  %96 = zext i32 %95 to i64
  %97 = add i64 %5, -52, !mcsema_real_eip !10
  %98 = inttoptr i64 %97 to i32*
  store i32 %95, i32* %98, align 4, !mcsema_real_eip !10
  %99 = load i32, i32* %91, align 4, !mcsema_real_eip !11
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %entry.block_0x5e_crit_edge.i.i, label %block_0x1d.preheader.i.i, !mcsema_real_eip !12

entry.block_0x5e_crit_edge.i.i:                   ; preds = %driverBlockRaw
  %101 = trunc i32 %99 to i8, !mcsema_real_eip !11
  %102 = tail call i8 @llvm.ctpop.i8(i8 %101) #2, !mcsema_real_eip !11
  %.pre.i.i = add i64 %5, -56, !mcsema_real_eip !13
  %.pre37.i.i = inttoptr i64 %.pre.i.i to i32*
  br label %sub_70.exit

block_0x1d.preheader.i.i:                         ; preds = %driverBlockRaw
  %103 = add i64 %5, -60, !mcsema_real_eip !14
  %104 = inttoptr i64 %103 to i32*
  %105 = add i64 %5, -56
  %106 = inttoptr i64 %105 to i32*
  br label %block_0x1d.i.i

block_0x5e.loopexit.i.i:                          ; preds = %block_0x1d.i.i
  %107 = and i64 %116, 4294967295
  %108 = trunc i32 %.sink.i.i to i8, !mcsema_real_eip !11
  %109 = tail call i8 @llvm.ctpop.i8(i8 %108) #2
  br label %sub_70.exit

block_0x1d.i.i:                                   ; preds = %block_0x1d.i.i, %block_0x1d.preheader.i.i
  %110 = phi i32 [ %99, %block_0x1d.preheader.i.i ], [ %.sink.i.i, %block_0x1d.i.i ]
  %111 = zext i32 %110 to i64, !mcsema_real_eip !15
  store i32 2, i32* %104, align 4, !mcsema_real_eip !14
  %112 = shl nuw i64 %111, 32
  %sext.i.i = ashr i64 %112, 63
  %113 = shl nsw i64 %sext.i.i, 32, !mcsema_real_eip !16
  %114 = sext i32 %110 to i64
  %115 = or i64 %113, %114, !mcsema_real_eip !16
  %116 = srem i64 %115, 2, !mcsema_real_eip !16
  %117 = trunc i64 %116 to i32, !mcsema_real_eip !17
  %118 = icmp eq i32 %117, 0, !mcsema_real_eip !17
  %119 = load i32, i32* %98, align 4, !mcsema_real_eip !18
  %.sink36.i.i = select i1 %118, i32 10, i32 -10
  %.sink35.i.i = select i1 %118, i32* %106, i32* %98
  %120 = add i32 %.sink36.i.i, %119
  store i32 %120, i32* %.sink35.i.i, align 4
  %.sink.in.i.i = load i32, i32* %91, align 4
  %.sink.i.i = add i32 %.sink.in.i.i, -1
  store i32 %.sink.i.i, i32* %91, align 4
  %121 = icmp slt i32 %.sink.i.i, 0
  br i1 %121, label %block_0x5e.loopexit.i.i, label %block_0x1d.i.i, !mcsema_real_eip !12

sub_70.exit:                                      ; preds = %entry.block_0x5e_crit_edge.i.i, %block_0x5e.loopexit.i.i
  %.pre-phi38.i.i = phi i32* [ %.pre37.i.i, %entry.block_0x5e_crit_edge.i.i ], [ %106, %block_0x5e.loopexit.i.i ]
  %ZF_val.0.in.i.i = phi i32 [ %99, %entry.block_0x5e_crit_edge.i.i ], [ %.sink.i.i, %block_0x5e.loopexit.i.i ]
  %PF_val.0.in.in.i.i = phi i8 [ %102, %entry.block_0x5e_crit_edge.i.i ], [ %109, %block_0x5e.loopexit.i.i ]
  %RDX_val.0.i.i = phi i64 [ %4, %entry.block_0x5e_crit_edge.i.i ], [ %107, %block_0x5e.loopexit.i.i ]
  %RCX_val.0.i.i = phi i64 [ %3, %entry.block_0x5e_crit_edge.i.i ], [ 2, %block_0x5e.loopexit.i.i ]
  %PF_val.0.in.i.i = and i8 %PF_val.0.in.in.i.i, 1
  %PF_val.0.i.i = icmp eq i8 %PF_val.0.in.i.i, 0
  %ZF_val.0.i.i = icmp eq i32 %ZF_val.0.in.i.i, 0
  %122 = load i32, i32* %.pre-phi38.i.i, align 4, !mcsema_real_eip !13
  %123 = zext i32 %122 to i64
  %124 = load i64, i64* %89, align 8
  store i64 %123, i64* %RAX.i, align 8, !mcsema_real_eip !19
  %125 = extractelement <2 x i64> %2, i32 1
  store i64 %125, i64* %RBX.i, align 8, !mcsema_real_eip !19
  store i64 %RCX_val.0.i.i, i64* %RCX.i, align 8, !mcsema_real_eip !19
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !19
  store i64 %96, i64* %RSI.i, align 8, !mcsema_real_eip !19
  store i64 10, i64* %RDI.i, align 8, !mcsema_real_eip !19
  store i64 %69, i64* %RSP.i, align 8, !mcsema_real_eip !19
  store i64 %124, i64* %RBP.i, align 8, !mcsema_real_eip !19
  store i64 %7, i64* %R8.i, align 8, !mcsema_real_eip !19
  store i64 %8, i64* %R9.i, align 8, !mcsema_real_eip !19
  store i64 %9, i64* %R10.i, align 8, !mcsema_real_eip !19
  store i64 %10, i64* %R11.i, align 8, !mcsema_real_eip !19
  store i64 %11, i64* %R12.i, align 8, !mcsema_real_eip !19
  store i64 %12, i64* %R13.i, align 8, !mcsema_real_eip !19
  store i64 %13, i64* %R14.i, align 8, !mcsema_real_eip !19
  store i64 %14, i64* %R15.i, align 8, !mcsema_real_eip !19
  store i64 %15, i64* %RIP.i, align 8, !mcsema_real_eip !19
  store i1 false, i1* %CF.i, align 1, !mcsema_real_eip !19
  store i1 %PF_val.0.i.i, i1* %PF.i, align 1, !mcsema_real_eip !19
  store i1 false, i1* %AF.i, align 1, !mcsema_real_eip !19
  store i1 %ZF_val.0.i.i, i1* %ZF.i, align 1, !mcsema_real_eip !19
  store i1 true, i1* %SF.i, align 1, !mcsema_real_eip !19
  store i1 false, i1* %OF.i, align 1, !mcsema_real_eip !19
  store i1 %16, i1* %DF.i, align 1, !mcsema_real_eip !19
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !19
  store i1 %19, i1* %FPU_B.i, align 1, !mcsema_real_eip !19
  store i1 %20, i1* %FPU_C3.i, align 1, !mcsema_real_eip !19
  store i3 %21, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !19
  store i1 %22, i1* %FPU_C2.i, align 1, !mcsema_real_eip !19
  store i1 %23, i1* %FPU_C1.i, align 1, !mcsema_real_eip !19
  store i1 %24, i1* %FPU_C0.i, align 1, !mcsema_real_eip !19
  store i1 %25, i1* %FPU_ES.i, align 1, !mcsema_real_eip !19
  store i1 %26, i1* %FPU_SF.i, align 1, !mcsema_real_eip !19
  store i1 %27, i1* %FPU_PE.i, align 1, !mcsema_real_eip !19
  store i1 %28, i1* %FPU_UE.i, align 1, !mcsema_real_eip !19
  store i1 %29, i1* %FPU_OE.i, align 1, !mcsema_real_eip !19
  store i1 %30, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !19
  store i1 %31, i1* %FPU_DE.i, align 1, !mcsema_real_eip !19
  store i1 %32, i1* %FPU_IE.i, align 1, !mcsema_real_eip !19
  store i1 %33, i1* %FPU_X.i, align 1, !mcsema_real_eip !19
  store i2 %34, i2* %FPU_RC.i, align 1, !mcsema_real_eip !19
  store i2 %35, i2* %FPU_PC.i, align 1, !mcsema_real_eip !19
  store i1 %36, i1* %FPU_PM.i, align 1, !mcsema_real_eip !19
  store i1 %37, i1* %FPU_UM.i, align 1, !mcsema_real_eip !19
  store i1 %38, i1* %FPU_OM.i, align 1, !mcsema_real_eip !19
  store i1 %39, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !19
  store i1 %40, i1* %FPU_DM.i, align 1, !mcsema_real_eip !19
  store i1 %41, i1* %FPU_IM.i, align 1, !mcsema_real_eip !19
  store i64 %44, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !19
  store i64 %46, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !19
  store i16 %47, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !19
  store i64 %48, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !19
  store i128 %49, i128* %XMM0.i, align 1, !mcsema_real_eip !19
  store i128 %50, i128* %XMM1.i, align 1, !mcsema_real_eip !19
  store i128 %51, i128* %XMM2.i, align 1, !mcsema_real_eip !19
  store i128 %52, i128* %XMM3.i, align 1, !mcsema_real_eip !19
  store i128 %53, i128* %XMM4.i, align 1, !mcsema_real_eip !19
  store i128 %54, i128* %XMM5.i, align 1, !mcsema_real_eip !19
  store i128 %55, i128* %XMM6.i, align 1, !mcsema_real_eip !19
  store i128 %56, i128* %XMM7.i, align 1, !mcsema_real_eip !19
  store i128 %57, i128* %XMM8.i, align 1, !mcsema_real_eip !19
  store i128 %58, i128* %XMM9.i, align 1, !mcsema_real_eip !19
  store i128 %59, i128* %XMM10.i, align 1, !mcsema_real_eip !19
  store i128 %60, i128* %XMM11.i, align 1, !mcsema_real_eip !19
  store i128 %61, i128* %XMM12.i, align 1, !mcsema_real_eip !19
  store i128 %62, i128* %XMM13.i, align 1, !mcsema_real_eip !19
  store i128 %63, i128* %XMM14.i, align 1, !mcsema_real_eip !19
  store i128 %64, i128* %XMM15.i, align 1, !mcsema_real_eip !19
  store i64 %65, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !19
  store i64 %66, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !19
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %18, i32 128, i32 4, i1 false) #2, !mcsema_real_eip !6
  %126 = add i64 %124, -8, !mcsema_real_eip !20
  %127 = inttoptr i64 %126 to i32*
  store i32 %122, i32* %127, align 4, !mcsema_real_eip !20
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %69, i64 16) #2
  %128 = extractvalue { i64, i1 } %uadd.i, 0
  %129 = xor i64 %128, %69, !mcsema_real_eip !21
  %130 = and i64 %129, 16
  %131 = icmp eq i64 %130, 0
  %132 = icmp slt i64 %128, 0
  %133 = icmp eq i64 %128, 0, !mcsema_real_eip !21
  %134 = add i64 %5, 9223372036854775784
  %135 = and i64 %129, %134, !mcsema_real_eip !21
  %136 = icmp slt i64 %135, 0
  %137 = trunc i64 %128 to i8, !mcsema_real_eip !21
  %138 = tail call i8 @llvm.ctpop.i8(i8 %137) #2, !mcsema_real_eip !21
  %139 = and i8 %138, 1
  %140 = icmp eq i8 %139, 0
  %141 = extractvalue { i64, i1 } %uadd.i, 1
  %142 = inttoptr i64 %128 to i64*, !mcsema_real_eip !22
  %143 = load i64, i64* %142, align 8, !mcsema_real_eip !22
  %144 = add i64 %128, 16, !mcsema_real_eip !23
  store i64 %123, i64* %RAX.i, align 8, !mcsema_real_eip !23
  store i64 %125, i64* %RBX.i, align 8, !mcsema_real_eip !23
  store i64 %RCX_val.0.i.i, i64* %RCX.i, align 8, !mcsema_real_eip !23
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !23
  store i64 %96, i64* %RSI.i, align 8, !mcsema_real_eip !23
  store i64 10, i64* %RDI.i, align 8, !mcsema_real_eip !23
  store i64 %144, i64* %RSP.i, align 8, !mcsema_real_eip !23
  store i64 %143, i64* %RBP.i, align 8, !mcsema_real_eip !23
  store i64 %7, i64* %R8.i, align 8, !mcsema_real_eip !23
  store i64 %8, i64* %R9.i, align 8, !mcsema_real_eip !23
  store i64 %9, i64* %R10.i, align 8, !mcsema_real_eip !23
  store i64 %10, i64* %R11.i, align 8, !mcsema_real_eip !23
  store i64 %11, i64* %R12.i, align 8, !mcsema_real_eip !23
  store i64 %12, i64* %R13.i, align 8, !mcsema_real_eip !23
  store i64 %13, i64* %R14.i, align 8, !mcsema_real_eip !23
  store i64 %14, i64* %R15.i, align 8, !mcsema_real_eip !23
  store i64 %15, i64* %RIP.i, align 8, !mcsema_real_eip !23
  store i1 %141, i1* %CF.i, align 1, !mcsema_real_eip !23
  store i1 %140, i1* %PF.i, align 1, !mcsema_real_eip !23
  store i1 %131, i1* %AF.i, align 1, !mcsema_real_eip !23
  store i1 %133, i1* %ZF.i, align 1, !mcsema_real_eip !23
  store i1 %132, i1* %SF.i, align 1, !mcsema_real_eip !23
  store i1 %136, i1* %OF.i, align 1, !mcsema_real_eip !23
  store i1 %16, i1* %DF.i, align 1, !mcsema_real_eip !23
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !23
  store i1 %19, i1* %FPU_B.i, align 1, !mcsema_real_eip !23
  store i1 %20, i1* %FPU_C3.i, align 1, !mcsema_real_eip !23
  store i3 %21, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !23
  store i1 %22, i1* %FPU_C2.i, align 1, !mcsema_real_eip !23
  store i1 %23, i1* %FPU_C1.i, align 1, !mcsema_real_eip !23
  store i1 %24, i1* %FPU_C0.i, align 1, !mcsema_real_eip !23
  store i1 %25, i1* %FPU_ES.i, align 1, !mcsema_real_eip !23
  store i1 %26, i1* %FPU_SF.i, align 1, !mcsema_real_eip !23
  store i1 %27, i1* %FPU_PE.i, align 1, !mcsema_real_eip !23
  store i1 %28, i1* %FPU_UE.i, align 1, !mcsema_real_eip !23
  store i1 %29, i1* %FPU_OE.i, align 1, !mcsema_real_eip !23
  store i1 %30, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !23
  store i1 %31, i1* %FPU_DE.i, align 1, !mcsema_real_eip !23
  store i1 %32, i1* %FPU_IE.i, align 1, !mcsema_real_eip !23
  store i1 %33, i1* %FPU_X.i, align 1, !mcsema_real_eip !23
  store i2 %34, i2* %FPU_RC.i, align 1, !mcsema_real_eip !23
  store i2 %35, i2* %FPU_PC.i, align 1, !mcsema_real_eip !23
  store i1 %36, i1* %FPU_PM.i, align 1, !mcsema_real_eip !23
  store i1 %37, i1* %FPU_UM.i, align 1, !mcsema_real_eip !23
  store i1 %38, i1* %FPU_OM.i, align 1, !mcsema_real_eip !23
  store i1 %39, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !23
  store i1 %40, i1* %FPU_DM.i, align 1, !mcsema_real_eip !23
  store i1 %41, i1* %FPU_IM.i, align 1, !mcsema_real_eip !23
  store i64 %44, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !23
  store i64 %46, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !23
  store i16 %47, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !23
  store i64 %48, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !23
  store i128 %49, i128* %XMM0.i, align 1, !mcsema_real_eip !23
  store i128 %50, i128* %XMM1.i, align 1, !mcsema_real_eip !23
  store i128 %51, i128* %XMM2.i, align 1, !mcsema_real_eip !23
  store i128 %52, i128* %XMM3.i, align 1, !mcsema_real_eip !23
  store i128 %53, i128* %XMM4.i, align 1, !mcsema_real_eip !23
  store i128 %54, i128* %XMM5.i, align 1, !mcsema_real_eip !23
  store i128 %55, i128* %XMM6.i, align 1, !mcsema_real_eip !23
  store i128 %56, i128* %XMM7.i, align 1, !mcsema_real_eip !23
  store i128 %57, i128* %XMM8.i, align 1, !mcsema_real_eip !23
  store i128 %58, i128* %XMM9.i, align 1, !mcsema_real_eip !23
  store i128 %59, i128* %XMM10.i, align 1, !mcsema_real_eip !23
  store i128 %60, i128* %XMM11.i, align 1, !mcsema_real_eip !23
  store i128 %61, i128* %XMM12.i, align 1, !mcsema_real_eip !23
  store i128 %62, i128* %XMM13.i, align 1, !mcsema_real_eip !23
  store i128 %63, i128* %XMM14.i, align 1, !mcsema_real_eip !23
  store i128 %64, i128* %XMM15.i, align 1, !mcsema_real_eip !23
  store i64 %65, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !23
  store i64 %66, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !23
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

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
!4 = !{i64 116, [16 x i8] c"\09subq\09$16, %rsp\00"}
!5 = !{i64 130, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!6 = !{i64 137, [12 x i8] c"\09callq\09-142\00"}
!7 = !{i64 4, [21 x i8] c"\09movl\09%edi, -4(%rbp)\00"}
!8 = !{i64 7, [21 x i8] c"\09movl\09%esi, -8(%rbp)\00"}
!9 = !{i64 10, [21 x i8] c"\09movl\09-4(%rbp), %esi\00"}
!10 = !{i64 16, [22 x i8] c"\09movl\09%esi, -12(%rbp)\00"}
!11 = !{i64 19, [19 x i8] c"\09cmpl\09$0, -4(%rbp)\00"}
!12 = !{i64 23, [7 x i8] c"\09jl\0965\00"}
!13 = !{i64 94, [22 x i8] c"\09movl\09-16(%rbp), %eax\00"}
!14 = !{i64 37, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!15 = !{i64 34, [21 x i8] c"\09movl\09-4(%rbp), %ecx\00"}
!16 = !{i64 46, [12 x i8] c"\09idivl\09%ecx\00"}
!17 = !{i64 48, [15 x i8] c"\09cmpl\09$0, %edx\00"}
!18 = !{i64 71, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!19 = !{i64 98, [6 x i8] c"\09retq\00"}
!20 = !{i64 142, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!21 = !{i64 148, [16 x i8] c"\09addq\09$16, %rsp\00"}
!22 = !{i64 152, [11 x i8] c"\09popq\09%rbp\00"}
!23 = !{i64 153, [6 x i8] c"\09retq\00"}
