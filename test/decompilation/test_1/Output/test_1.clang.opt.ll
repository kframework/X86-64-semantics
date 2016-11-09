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
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !3
  %49 = load i11, i11* %FPU_FOPCODE.i, align 1
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %50 = load i128, i128* %XMM0.i, align 1
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %51 = load i128, i128* %XMM1.i, align 1
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %52 = load i128, i128* %XMM2.i, align 1
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %53 = load i128, i128* %XMM3.i, align 1
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %54 = load i128, i128* %XMM4.i, align 1
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %55 = load i128, i128* %XMM5.i, align 1
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %56 = load i128, i128* %XMM6.i, align 1
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %57 = load i128, i128* %XMM7.i, align 1
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %58 = load i128, i128* %XMM8.i, align 1
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %59 = load i128, i128* %XMM9.i, align 1
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %60 = load i128, i128* %XMM10.i, align 1
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %61 = load i128, i128* %XMM11.i, align 1
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %62 = load i128, i128* %XMM12.i, align 1
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %63 = load i128, i128* %XMM13.i, align 1
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %64 = load i128, i128* %XMM14.i, align 1
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %65 = load i128, i128* %XMM15.i, align 1
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %66 = load i64, i64* %STACK_BASE.i, align 8
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %67 = load i64, i64* %STACK_LIMIT.i, align 8
  %68 = add i64 %5, -8
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !3
  store i64 %6, i64* %69, align 8, !mcsema_real_eip !3
  %70 = add i64 %5, -24
  %71 = xor i64 %70, %68, !mcsema_real_eip !4
  %72 = and i64 %71, 16
  %73 = icmp eq i64 %72, 0
  %74 = trunc i64 %70 to i8, !mcsema_real_eip !4
  %75 = tail call i8 @llvm.ctpop.i8(i8 %74) #2, !mcsema_real_eip !4
  %76 = and i8 %75, 1
  %77 = icmp eq i8 %76, 0
  %78 = icmp eq i64 %70, 0, !mcsema_real_eip !4
  %79 = icmp slt i64 %70, 0
  %80 = icmp ult i64 %68, 16, !mcsema_real_eip !4
  %81 = and i64 %71, %68, !mcsema_real_eip !4
  %82 = icmp slt i64 %81, 0
  %83 = add i64 %5, -12, !mcsema_real_eip !5
  %84 = inttoptr i64 %83 to i32*
  store i32 0, i32* %84, align 4, !mcsema_real_eip !5
  %85 = add i64 %5, -32
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !6
  store i64 -4981261766360305936, i64* %86, align 8, !mcsema_real_eip !6
  %87 = bitcast %struct.regs* %0 to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %87, align 8
  store i64 %3, i64* %RCX.i, align 8, !mcsema_real_eip !6
  store i64 %4, i64* %RDX.i, align 8, !mcsema_real_eip !6
  %88 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 20, i64 10>, <2 x i64>* %88, align 8
  store i64 %85, i64* %RSP.i, align 8, !mcsema_real_eip !6
  store i64 %68, i64* %RBP.i, align 8, !mcsema_real_eip !6
  store i64 %7, i64* %R8.i, align 8, !mcsema_real_eip !6
  store i64 %8, i64* %R9.i, align 8, !mcsema_real_eip !6
  store i64 %9, i64* %R10.i, align 8, !mcsema_real_eip !6
  store i64 %10, i64* %R11.i, align 8, !mcsema_real_eip !6
  store i64 %11, i64* %R12.i, align 8, !mcsema_real_eip !6
  store i64 %12, i64* %R13.i, align 8, !mcsema_real_eip !6
  store i64 %13, i64* %R14.i, align 8, !mcsema_real_eip !6
  store i64 %14, i64* %R15.i, align 8, !mcsema_real_eip !6
  store i64 %15, i64* %RIP.i, align 8, !mcsema_real_eip !6
  store i1 %80, i1* %CF.i, align 1, !mcsema_real_eip !6
  store i1 %77, i1* %PF.i, align 1, !mcsema_real_eip !6
  store i1 %73, i1* %AF.i, align 1, !mcsema_real_eip !6
  store i1 %78, i1* %ZF.i, align 1, !mcsema_real_eip !6
  store i1 %79, i1* %SF.i, align 1, !mcsema_real_eip !6
  store i1 %82, i1* %OF.i, align 1, !mcsema_real_eip !6
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
  store i11 %49, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !6
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !6
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !6
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !6
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !6
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !6
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !6
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !6
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !6
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !6
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !6
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !6
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !6
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !6
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !6
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !6
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !6
  store i64 %66, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !6
  store i64 %67, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !6
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast.i, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false) #2
  %89 = add i64 %5, -40
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !2
  store i64 %68, i64* %90, align 8, !mcsema_real_eip !2
  %91 = add i64 %5, -44, !mcsema_real_eip !7
  %92 = inttoptr i64 %91 to i32*
  store i32 10, i32* %92, align 4, !mcsema_real_eip !7
  %93 = add i64 %5, -48, !mcsema_real_eip !8
  %94 = inttoptr i64 %93 to i32*
  store i32 20, i32* %94, align 4, !mcsema_real_eip !8
  %95 = load i32, i32* %92, align 4, !mcsema_real_eip !9
  %96 = add i32 %95, 20
  %97 = zext i32 %96 to i64
  %98 = add i64 %5, -52, !mcsema_real_eip !10
  %99 = inttoptr i64 %98 to i32*
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* %92, align 4, !mcsema_real_eip !11
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %entry.block_0x6a_crit_edge.i.i, label %block_0x20.lr.ph.i.i, !mcsema_real_eip !12

entry.block_0x6a_crit_edge.i.i:                   ; preds = %driverBlockRaw
  %.pre.i.i = add i64 %5, -56, !mcsema_real_eip !13
  br label %sub_70.exit

block_0x20.lr.ph.i.i:                             ; preds = %driverBlockRaw
  %102 = add i64 %5, -60, !mcsema_real_eip !14
  %103 = inttoptr i64 %102 to i32*
  %104 = add i64 %5, -56
  br label %block_0x20.i.i

block_0x20.i.i:                                   ; preds = %block_0x20.i.i, %block_0x20.lr.ph.i.i
  %105 = phi i32 [ %100, %block_0x20.lr.ph.i.i ], [ %117, %block_0x20.i.i ]
  %106 = zext i32 %105 to i64, !mcsema_real_eip !15
  store i32 2, i32* %103, align 4, !mcsema_real_eip !14
  %107 = shl nuw i64 %106, 32
  %sext.i.i = ashr i64 %107, 63
  %108 = shl nsw i64 %sext.i.i, 32, !mcsema_real_eip !16
  %109 = sext i32 %105 to i64
  %110 = or i64 %108, %109, !mcsema_real_eip !16
  %111 = srem i64 %110, 2, !mcsema_real_eip !16
  %112 = trunc i64 %111 to i32, !mcsema_real_eip !17
  %113 = icmp eq i32 %112, 0, !mcsema_real_eip !17
  %114 = load i32, i32* %99, align 4, !mcsema_real_eip !18
  %.sink7.i.i = select i1 %113, i64 %104, i64 %98
  %.sink4.v.i.i = select i1 %113, i32 10, i32 -10
  %.sink4.i.i = add i32 %.sink4.v.i.i, %114
  %115 = inttoptr i64 %.sink7.i.i to i32*
  store i32 %.sink4.i.i, i32* %115, align 4
  %116 = load i32, i32* %92, align 4, !mcsema_real_eip !19
  %117 = add i32 %116, -1
  store i32 %117, i32* %92, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %block_0x13.block_0x6a_crit_edge.i.i, label %block_0x20.i.i, !mcsema_real_eip !12

block_0x13.block_0x6a_crit_edge.i.i:              ; preds = %block_0x20.i.i
  %119 = and i64 %111, 4294967295
  br label %sub_70.exit

sub_70.exit:                                      ; preds = %entry.block_0x6a_crit_edge.i.i, %block_0x13.block_0x6a_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %entry.block_0x6a_crit_edge.i.i ], [ %104, %block_0x13.block_0x6a_crit_edge.i.i ]
  %RDX_val.0.lcssa.i.i = phi i64 [ %4, %entry.block_0x6a_crit_edge.i.i ], [ %119, %block_0x13.block_0x6a_crit_edge.i.i ]
  %RCX_val.0.lcssa.i.i = phi i64 [ %3, %entry.block_0x6a_crit_edge.i.i ], [ 2, %block_0x13.block_0x6a_crit_edge.i.i ]
  %.lcssa.i.i = phi i32 [ %100, %entry.block_0x6a_crit_edge.i.i ], [ %117, %block_0x13.block_0x6a_crit_edge.i.i ]
  %120 = trunc i32 %.lcssa.i.i to i8, !mcsema_real_eip !11
  %121 = tail call i8 @llvm.ctpop.i8(i8 %120) #2, !mcsema_real_eip !11
  %122 = and i8 %121, 1
  %123 = icmp eq i8 %122, 0
  %124 = inttoptr i64 %.pre-phi.i.i to i32*
  %125 = load i32, i32* %124, align 4, !mcsema_real_eip !13
  %126 = zext i32 %125 to i64
  %127 = load i64, i64* %90, align 8
  store i64 %126, i64* %RAX.i, align 8, !mcsema_real_eip !20
  %128 = extractelement <2 x i64> %2, i32 1
  store i64 %128, i64* %RBX.i, align 8, !mcsema_real_eip !20
  store i64 %RCX_val.0.lcssa.i.i, i64* %RCX.i, align 8, !mcsema_real_eip !20
  store i64 %RDX_val.0.lcssa.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !20
  store i64 %97, i64* %RSI.i, align 8, !mcsema_real_eip !20
  store i64 10, i64* %RDI.i, align 8, !mcsema_real_eip !20
  store i64 %70, i64* %RSP.i, align 8, !mcsema_real_eip !20
  store i64 %127, i64* %RBP.i, align 8, !mcsema_real_eip !20
  store i64 %7, i64* %R8.i, align 8, !mcsema_real_eip !20
  store i64 %8, i64* %R9.i, align 8, !mcsema_real_eip !20
  store i64 %9, i64* %R10.i, align 8, !mcsema_real_eip !20
  store i64 %10, i64* %R11.i, align 8, !mcsema_real_eip !20
  store i64 %11, i64* %R12.i, align 8, !mcsema_real_eip !20
  store i64 %12, i64* %R13.i, align 8, !mcsema_real_eip !20
  store i64 %13, i64* %R14.i, align 8, !mcsema_real_eip !20
  store i64 %14, i64* %R15.i, align 8, !mcsema_real_eip !20
  store i64 %15, i64* %RIP.i, align 8, !mcsema_real_eip !20
  store i1 false, i1* %CF.i, align 1, !mcsema_real_eip !20
  store i1 %123, i1* %PF.i, align 1, !mcsema_real_eip !20
  store i1 false, i1* %AF.i, align 1, !mcsema_real_eip !20
  store i1 false, i1* %ZF.i, align 1, !mcsema_real_eip !20
  store i1 true, i1* %SF.i, align 1, !mcsema_real_eip !20
  store i1 false, i1* %OF.i, align 1, !mcsema_real_eip !20
  store i1 %16, i1* %DF.i, align 1, !mcsema_real_eip !20
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !20
  store i1 %19, i1* %FPU_B.i, align 1, !mcsema_real_eip !20
  store i1 %20, i1* %FPU_C3.i, align 1, !mcsema_real_eip !20
  store i3 %21, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !20
  store i1 %22, i1* %FPU_C2.i, align 1, !mcsema_real_eip !20
  store i1 %23, i1* %FPU_C1.i, align 1, !mcsema_real_eip !20
  store i1 %24, i1* %FPU_C0.i, align 1, !mcsema_real_eip !20
  store i1 %25, i1* %FPU_ES.i, align 1, !mcsema_real_eip !20
  store i1 %26, i1* %FPU_SF.i, align 1, !mcsema_real_eip !20
  store i1 %27, i1* %FPU_PE.i, align 1, !mcsema_real_eip !20
  store i1 %28, i1* %FPU_UE.i, align 1, !mcsema_real_eip !20
  store i1 %29, i1* %FPU_OE.i, align 1, !mcsema_real_eip !20
  store i1 %30, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !20
  store i1 %31, i1* %FPU_DE.i, align 1, !mcsema_real_eip !20
  store i1 %32, i1* %FPU_IE.i, align 1, !mcsema_real_eip !20
  store i1 %33, i1* %FPU_X.i, align 1, !mcsema_real_eip !20
  store i2 %34, i2* %FPU_RC.i, align 1, !mcsema_real_eip !20
  store i2 %35, i2* %FPU_PC.i, align 1, !mcsema_real_eip !20
  store i1 %36, i1* %FPU_PM.i, align 1, !mcsema_real_eip !20
  store i1 %37, i1* %FPU_UM.i, align 1, !mcsema_real_eip !20
  store i1 %38, i1* %FPU_OM.i, align 1, !mcsema_real_eip !20
  store i1 %39, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !20
  store i1 %40, i1* %FPU_DM.i, align 1, !mcsema_real_eip !20
  store i1 %41, i1* %FPU_IM.i, align 1, !mcsema_real_eip !20
  store i64 %44, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !20
  store i64 %46, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !20
  store i16 %47, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !20
  store i64 %48, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !20
  store i11 %49, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !20
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !20
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !20
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !20
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !20
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !20
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !20
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !20
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !20
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !20
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !20
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !20
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !20
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !20
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !20
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !20
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !20
  store i64 %66, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !20
  store i64 %67, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !20
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %18, i32 128, i32 4, i1 false) #2, !mcsema_real_eip !6
  %129 = add i64 %127, -8, !mcsema_real_eip !21
  %130 = inttoptr i64 %129 to i32*
  store i32 %125, i32* %130, align 4, !mcsema_real_eip !21
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %70, i64 16) #2
  %131 = extractvalue { i64, i1 } %uadd.i, 0
  %132 = xor i64 %131, %70, !mcsema_real_eip !22
  %133 = and i64 %132, 16
  %134 = icmp eq i64 %133, 0
  %135 = icmp slt i64 %131, 0
  %136 = icmp eq i64 %131, 0, !mcsema_real_eip !22
  %137 = add i64 %5, 9223372036854775784
  %138 = and i64 %132, %137, !mcsema_real_eip !22
  %139 = icmp slt i64 %138, 0
  %140 = trunc i64 %131 to i8, !mcsema_real_eip !22
  %141 = tail call i8 @llvm.ctpop.i8(i8 %140) #2, !mcsema_real_eip !22
  %142 = and i8 %141, 1
  %143 = icmp eq i8 %142, 0
  %144 = extractvalue { i64, i1 } %uadd.i, 1
  %145 = inttoptr i64 %131 to i64*, !mcsema_real_eip !23
  %146 = load i64, i64* %145, align 8, !mcsema_real_eip !23
  %147 = add i64 %131, 16, !mcsema_real_eip !24
  store i64 %126, i64* %RAX.i, align 8, !mcsema_real_eip !24
  store i64 %128, i64* %RBX.i, align 8, !mcsema_real_eip !24
  store i64 %RCX_val.0.lcssa.i.i, i64* %RCX.i, align 8, !mcsema_real_eip !24
  store i64 %RDX_val.0.lcssa.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !24
  store i64 %97, i64* %RSI.i, align 8, !mcsema_real_eip !24
  store i64 10, i64* %RDI.i, align 8, !mcsema_real_eip !24
  store i64 %147, i64* %RSP.i, align 8, !mcsema_real_eip !24
  store i64 %146, i64* %RBP.i, align 8, !mcsema_real_eip !24
  store i64 %7, i64* %R8.i, align 8, !mcsema_real_eip !24
  store i64 %8, i64* %R9.i, align 8, !mcsema_real_eip !24
  store i64 %9, i64* %R10.i, align 8, !mcsema_real_eip !24
  store i64 %10, i64* %R11.i, align 8, !mcsema_real_eip !24
  store i64 %11, i64* %R12.i, align 8, !mcsema_real_eip !24
  store i64 %12, i64* %R13.i, align 8, !mcsema_real_eip !24
  store i64 %13, i64* %R14.i, align 8, !mcsema_real_eip !24
  store i64 %14, i64* %R15.i, align 8, !mcsema_real_eip !24
  store i64 %15, i64* %RIP.i, align 8, !mcsema_real_eip !24
  store i1 %144, i1* %CF.i, align 1, !mcsema_real_eip !24
  store i1 %143, i1* %PF.i, align 1, !mcsema_real_eip !24
  store i1 %134, i1* %AF.i, align 1, !mcsema_real_eip !24
  store i1 %136, i1* %ZF.i, align 1, !mcsema_real_eip !24
  store i1 %135, i1* %SF.i, align 1, !mcsema_real_eip !24
  store i1 %139, i1* %OF.i, align 1, !mcsema_real_eip !24
  store i1 %16, i1* %DF.i, align 1, !mcsema_real_eip !24
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !24
  store i1 %19, i1* %FPU_B.i, align 1, !mcsema_real_eip !24
  store i1 %20, i1* %FPU_C3.i, align 1, !mcsema_real_eip !24
  store i3 %21, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !24
  store i1 %22, i1* %FPU_C2.i, align 1, !mcsema_real_eip !24
  store i1 %23, i1* %FPU_C1.i, align 1, !mcsema_real_eip !24
  store i1 %24, i1* %FPU_C0.i, align 1, !mcsema_real_eip !24
  store i1 %25, i1* %FPU_ES.i, align 1, !mcsema_real_eip !24
  store i1 %26, i1* %FPU_SF.i, align 1, !mcsema_real_eip !24
  store i1 %27, i1* %FPU_PE.i, align 1, !mcsema_real_eip !24
  store i1 %28, i1* %FPU_UE.i, align 1, !mcsema_real_eip !24
  store i1 %29, i1* %FPU_OE.i, align 1, !mcsema_real_eip !24
  store i1 %30, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !24
  store i1 %31, i1* %FPU_DE.i, align 1, !mcsema_real_eip !24
  store i1 %32, i1* %FPU_IE.i, align 1, !mcsema_real_eip !24
  store i1 %33, i1* %FPU_X.i, align 1, !mcsema_real_eip !24
  store i2 %34, i2* %FPU_RC.i, align 1, !mcsema_real_eip !24
  store i2 %35, i2* %FPU_PC.i, align 1, !mcsema_real_eip !24
  store i1 %36, i1* %FPU_PM.i, align 1, !mcsema_real_eip !24
  store i1 %37, i1* %FPU_UM.i, align 1, !mcsema_real_eip !24
  store i1 %38, i1* %FPU_OM.i, align 1, !mcsema_real_eip !24
  store i1 %39, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !24
  store i1 %40, i1* %FPU_DM.i, align 1, !mcsema_real_eip !24
  store i1 %41, i1* %FPU_IM.i, align 1, !mcsema_real_eip !24
  store i64 %44, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !24
  store i64 %46, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !24
  store i16 %47, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !24
  store i64 %48, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !24
  store i11 %49, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !24
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !24
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !24
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !24
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !24
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !24
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !24
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !24
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !24
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !24
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !24
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !24
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !24
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !24
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !24
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !24
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !24
  store i64 %66, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !24
  store i64 %67, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !24
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
!2 = !{i64 0}
!3 = !{i64 112}
!4 = !{i64 116}
!5 = !{i64 130}
!6 = !{i64 137}
!7 = !{i64 4}
!8 = !{i64 7}
!9 = !{i64 10}
!10 = !{i64 16}
!11 = !{i64 19}
!12 = !{i64 26}
!13 = !{i64 106}
!14 = !{i64 40}
!15 = !{i64 37}
!16 = !{i64 49}
!17 = !{i64 51}
!18 = !{i64 79}
!19 = !{i64 90}
!20 = !{i64 110}
!21 = !{i64 142}
!22 = !{i64 148}
!23 = !{i64 152}
!24 = !{i64 153}
