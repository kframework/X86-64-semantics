; ModuleID = 'test_1_opt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [3 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x6b = internal constant %0 <{ [3 x i8] c"%d\00" }>, align 64

declare x86_64_sysvcc i64 @printf(i64 inreg)

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  %STi_val.i.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !3
  %1 = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %1)
  %RAX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !3
  %RBX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !3
  %2 = bitcast %struct.regs* %0 to <2 x i64>*
  %3 = load <2 x i64>* %2, align 8
  %RCX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !3
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !3
  %4 = bitcast i64* %RCX.i to <2 x i64>*
  %5 = load <2 x i64>* %4, align 8
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !3
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !3
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !3
  %6 = load i64* %RSP.i, align 8, !mcsema_real_eip !3
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !3
  %7 = load i64* %RBP.i, align 8, !mcsema_real_eip !3
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !3
  %8 = load i64* %R8.i, align 8, !mcsema_real_eip !3
  %R9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !3
  %9 = load i64* %R9.i, align 8, !mcsema_real_eip !3
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !3
  %10 = load i64* %R10.i, align 8, !mcsema_real_eip !3
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
  %11 = load i64* %R11.i, align 8, !mcsema_real_eip !3
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %12 = load i64* %R12.i, align 8, !mcsema_real_eip !3
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !3
  %13 = load i64* %R13.i, align 8, !mcsema_real_eip !3
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %14 = load i64* %R14.i, align 8, !mcsema_real_eip !3
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !3
  %15 = load i64* %R15.i, align 8, !mcsema_real_eip !3
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %16 = load i64* %RIP.i, align 8, !mcsema_real_eip !3
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !3
  %17 = load i1* %DF.i, align 1, !mcsema_real_eip !3
  %18 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !3
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !3
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !3
  %20 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !3
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !3
  %21 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !3
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !3
  %22 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !3
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !3
  %23 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !3
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !3
  %24 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !3
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !3
  %25 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !3
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !3
  %26 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !3
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !3
  %27 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !3
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !3
  %28 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !3
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !3
  %29 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !3
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !3
  %30 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !3
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !3
  %31 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !3
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !3
  %32 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !3
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !3
  %33 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !3
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !3
  %34 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !3
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !3
  %35 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !3
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !3
  %36 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !3
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !3
  %37 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !3
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !3
  %38 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !3
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !3
  %39 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !3
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !3
  %40 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !3
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !3
  %41 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !3
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !3
  %42 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !3
  %43 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !3
  %44 = bitcast i8* %43 to i64*
  %45 = load i64* %44, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !3
  %46 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !3
  %47 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !3
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !3
  %48 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !3
  %49 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !3
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %50 = load i128* %XMM0.i, align 1, !mcsema_real_eip !3
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %51 = load i128* %XMM1.i, align 1, !mcsema_real_eip !3
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %52 = load i128* %XMM2.i, align 1, !mcsema_real_eip !3
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %53 = load i128* %XMM3.i, align 1, !mcsema_real_eip !3
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %54 = load i128* %XMM4.i, align 1, !mcsema_real_eip !3
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %55 = load i128* %XMM5.i, align 1, !mcsema_real_eip !3
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %56 = load i128* %XMM6.i, align 1, !mcsema_real_eip !3
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %57 = load i128* %XMM7.i, align 1, !mcsema_real_eip !3
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %58 = load i128* %XMM8.i, align 1, !mcsema_real_eip !3
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %59 = load i128* %XMM9.i, align 1, !mcsema_real_eip !3
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %60 = load i128* %XMM10.i, align 1, !mcsema_real_eip !3
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %61 = load i128* %XMM11.i, align 1, !mcsema_real_eip !3
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %62 = load i128* %XMM12.i, align 1, !mcsema_real_eip !3
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %63 = load i128* %XMM13.i, align 1, !mcsema_real_eip !3
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %64 = load i128* %XMM14.i, align 1, !mcsema_real_eip !3
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %65 = load i128* %XMM15.i, align 1, !mcsema_real_eip !3
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %66 = load i64* %STACK_BASE.i, align 8, !mcsema_real_eip !3
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %67 = load i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !3
  %68 = add i64 %6, -8
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !3
  store i64 %7, i64* %69, align 8, !mcsema_real_eip !3
  %70 = add i64 %6, -24
  %71 = xor i64 %70, %68, !mcsema_real_eip !4
  %72 = and i64 %71, 16
  %73 = icmp eq i64 %72, 0
  %74 = trunc i64 %70 to i8, !mcsema_real_eip !4
  %75 = tail call i8 @llvm.ctpop.i8(i8 %74), !mcsema_real_eip !4
  %76 = and i8 %75, 1
  %77 = icmp eq i8 %76, 0
  %78 = icmp eq i64 %70, 0, !mcsema_real_eip !4
  %79 = icmp slt i64 %70, 0
  %80 = icmp ult i64 %68, 16, !mcsema_real_eip !4
  %81 = and i64 %71, %68, !mcsema_real_eip !4
  %82 = icmp slt i64 %81, 0
  %83 = add i64 %6, -32
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !5
  store i64 -4981261766360305936, i64* %84, align 8, !mcsema_real_eip !5
  store <2 x i64> %3, <2 x i64>* %2, align 8
  store <2 x i64> %5, <2 x i64>* %4, align 8
  store i64 20, i64* %RSI.i, align 8, !mcsema_real_eip !5
  store i64 10, i64* %RDI.i, align 8, !mcsema_real_eip !5
  store i64 %83, i64* %RSP.i, align 8, !mcsema_real_eip !5
  store i64 %68, i64* %RBP.i, align 8, !mcsema_real_eip !5
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !5
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !5
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !5
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !5
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !5
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !5
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !5
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !5
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !5
  store i1 %80, i1* %CF.i, align 1, !mcsema_real_eip !5
  store i1 %77, i1* %PF.i, align 1, !mcsema_real_eip !5
  store i1 %73, i1* %AF.i, align 1, !mcsema_real_eip !5
  store i1 %78, i1* %ZF.i, align 1, !mcsema_real_eip !5
  store i1 %79, i1* %SF.i, align 1, !mcsema_real_eip !5
  store i1 %82, i1* %OF.i, align 1, !mcsema_real_eip !5
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !5
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !5
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !5
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !5
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !5
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !5
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !5
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !5
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !5
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !5
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !5
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !5
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !5
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !5
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !5
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !5
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !5
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !5
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !5
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !5
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !5
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !5
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !5
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !5
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !5
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !5
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !5
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !5
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !5
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !5
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !5
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !5
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !5
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !5
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !5
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !5
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !5
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !5
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !5
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !5
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !5
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !5
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !5
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !5
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !5
  store i64 %66, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !5
  store i64 %67, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !5
  %85 = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %85)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %85, i8* %1, i32 128, i32 16, i1 false)
  %86 = add i64 %6, -40
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !2
  store i64 %68, i64* %87, align 8, !mcsema_real_eip !2
  %88 = add i64 %6, -60, !mcsema_real_eip !6
  %89 = inttoptr i64 %88 to i32*
  store i32 10, i32* %89, align 4, !mcsema_real_eip !6
  %90 = add i64 %6, -64, !mcsema_real_eip !7
  %91 = inttoptr i64 %90 to i32*
  store i32 20, i32* %91, align 4, !mcsema_real_eip !7
  %92 = load i32* %89, align 4, !mcsema_real_eip !8
  %93 = zext i32 %92 to i64, !mcsema_real_eip !8
  %94 = add i32 %92, 20
  %95 = add i64 %6, -44, !mcsema_real_eip !9
  %96 = inttoptr i64 %95 to i32*
  store i32 %94, i32* %96, align 4, !mcsema_real_eip !9
  %97 = zext i32 %94 to i64, !mcsema_real_eip !10
  %98 = tail call x86_64_sysvcc i64 @printf(i64 zext (i32 ptrtoint (%0* @data_0x6b to i32) to i64)), !mcsema_real_eip !11
  %99 = load i32* %89, align 4, !mcsema_real_eip !12
  %100 = add i32 %99, -40
  %101 = icmp eq i32 %100, 0, !mcsema_real_eip !12
  %102 = icmp slt i32 %100, 0
  %103 = sub i32 39, %99
  %104 = and i32 %103, %99
  %105 = icmp slt i32 %104, 0
  %106 = xor i1 %102, %105
  %107 = or i1 %101, %106, !mcsema_real_eip !13
  %108 = load i32* %96, align 4, !mcsema_real_eip !14
  br i1 %107, label %block_0x3e.i.i, label %block_0x33.i.i, !mcsema_real_eip !13

block_0x3e.i.i:                                   ; preds = %driverBlockRaw
  %109 = add i32 %108, -10
  %110 = xor i32 %109, %108, !mcsema_real_eip !15
  %111 = and i32 %110, 16, !mcsema_real_eip !15
  %112 = icmp ne i32 %111, 0, !mcsema_real_eip !15
  %113 = trunc i32 %109 to i8, !mcsema_real_eip !15
  %114 = tail call i8 @llvm.ctpop.i8(i8 %113), !mcsema_real_eip !15
  %115 = and i8 %114, 1
  %116 = icmp eq i8 %115, 0
  %117 = icmp eq i32 %109, 0, !mcsema_real_eip !15
  %118 = icmp slt i32 %109, 0
  %119 = icmp ult i32 %108, 10, !mcsema_real_eip !15
  %120 = and i32 %110, %108, !mcsema_real_eip !15
  %121 = icmp slt i32 %120, 0
  %122 = add i64 %6, -48, !mcsema_real_eip !16
  %123 = inttoptr i64 %122 to i32*
  store i32 %109, i32* %123, align 4, !mcsema_real_eip !16
  %124 = zext i32 %109 to i64, !mcsema_real_eip !17
  %125 = load i64* %87, align 8, !mcsema_real_eip !18
  store i64 %124, i64* %RAX.i, align 8, !mcsema_real_eip !19
  %126 = extractelement <2 x i64> %3, i32 1
  store i64 %126, i64* %RBX.i, align 8, !mcsema_real_eip !19
  %127 = extractelement <2 x i64> %5, i32 0
  store i64 %127, i64* %RCX.i, align 8, !mcsema_real_eip !19
  store i64 %93, i64* %RDX.i, align 8, !mcsema_real_eip !19
  store i64 %97, i64* %RSI.i, align 8, !mcsema_real_eip !19
  store i64 zext (i32 ptrtoint (%0* @data_0x6b to i32) to i64), i64* %RDI.i, align 8, !mcsema_real_eip !19
  store i64 %70, i64* %RSP.i, align 8, !mcsema_real_eip !19
  store i64 %125, i64* %RBP.i, align 8, !mcsema_real_eip !19
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !19
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !19
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !19
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !19
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !19
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !19
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !19
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !19
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !19
  store i1 %119, i1* %CF.i, align 1, !mcsema_real_eip !19
  store i1 %116, i1* %PF.i, align 1, !mcsema_real_eip !19
  store i1 %112, i1* %AF.i, align 1, !mcsema_real_eip !19
  store i1 %117, i1* %ZF.i, align 1, !mcsema_real_eip !19
  store i1 %118, i1* %SF.i, align 1, !mcsema_real_eip !19
  store i1 %121, i1* %OF.i, align 1, !mcsema_real_eip !19
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !19
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %85, i32 128, i32 8, i1 false), !mcsema_real_eip !19
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !19
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !19
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !19
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !19
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !19
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !19
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !19
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !19
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !19
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !19
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !19
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !19
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !19
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !19
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !19
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !19
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !19
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !19
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !19
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !19
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !19
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !19
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !19
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !19
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !19
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !19
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !19
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !19
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !19
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !19
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !19
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !19
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !19
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !19
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !19
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !19
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !19
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !19
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !19
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !19
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !19
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !19
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !19
  store i64 %66, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !19
  store i64 %67, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !19
  call void @llvm.lifetime.end(i64 128, i8* %85)
  br label %sub_4c.exit

block_0x33.i.i:                                   ; preds = %driverBlockRaw
  %uadd140.i.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %108, i32 10)
  %128 = extractvalue { i32, i1 } %uadd140.i.i, 0
  %129 = xor i32 %128, %108, !mcsema_real_eip !20
  %130 = and i32 %129, 16, !mcsema_real_eip !20
  %131 = icmp ne i32 %130, 0, !mcsema_real_eip !20
  %132 = icmp slt i32 %128, 0
  %133 = icmp eq i32 %128, 0, !mcsema_real_eip !20
  %134 = xor i32 %108, -2147483648, !mcsema_real_eip !20
  %135 = and i32 %129, %134, !mcsema_real_eip !20
  %136 = icmp slt i32 %135, 0
  %137 = trunc i32 %128 to i8, !mcsema_real_eip !20
  %138 = tail call i8 @llvm.ctpop.i8(i8 %137), !mcsema_real_eip !20
  %139 = and i8 %138, 1
  %140 = icmp eq i8 %139, 0
  %141 = extractvalue { i32, i1 } %uadd140.i.i, 1
  %142 = add i64 %6, -48, !mcsema_real_eip !21
  %143 = inttoptr i64 %142 to i32*
  store i32 %128, i32* %143, align 4, !mcsema_real_eip !21
  %144 = zext i32 %128 to i64, !mcsema_real_eip !17
  %145 = load i64* %87, align 8, !mcsema_real_eip !18
  store i64 %144, i64* %RAX.i, align 8, !mcsema_real_eip !19
  %146 = extractelement <2 x i64> %3, i32 1
  store i64 %146, i64* %RBX.i, align 8, !mcsema_real_eip !19
  %147 = extractelement <2 x i64> %5, i32 0
  store i64 %147, i64* %RCX.i, align 8, !mcsema_real_eip !19
  store i64 %93, i64* %RDX.i, align 8, !mcsema_real_eip !19
  store i64 %97, i64* %RSI.i, align 8, !mcsema_real_eip !19
  store i64 zext (i32 ptrtoint (%0* @data_0x6b to i32) to i64), i64* %RDI.i, align 8, !mcsema_real_eip !19
  store i64 %70, i64* %RSP.i, align 8, !mcsema_real_eip !19
  store i64 %145, i64* %RBP.i, align 8, !mcsema_real_eip !19
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !19
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !19
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !19
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !19
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !19
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !19
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !19
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !19
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !19
  store i1 %141, i1* %CF.i, align 1, !mcsema_real_eip !19
  store i1 %140, i1* %PF.i, align 1, !mcsema_real_eip !19
  store i1 %131, i1* %AF.i, align 1, !mcsema_real_eip !19
  store i1 %133, i1* %ZF.i, align 1, !mcsema_real_eip !19
  store i1 %132, i1* %SF.i, align 1, !mcsema_real_eip !19
  store i1 %136, i1* %OF.i, align 1, !mcsema_real_eip !19
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !19
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %85, i32 128, i32 8, i1 false), !mcsema_real_eip !19
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !19
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !19
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !19
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !19
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !19
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !19
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !19
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !19
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !19
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !19
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !19
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !19
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !19
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !19
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !19
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !19
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !19
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !19
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !19
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !19
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !19
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !19
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !19
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !19
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !19
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !19
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !19
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !19
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !19
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !19
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !19
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !19
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !19
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !19
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !19
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !19
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !19
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !19
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !19
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !19
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !19
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !19
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !19
  store i64 %66, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !19
  store i64 %67, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !19
  call void @llvm.lifetime.end(i64 128, i8* %85)
  br label %sub_4c.exit

sub_4c.exit:                                      ; preds = %block_0x33.i.i, %block_0x3e.i.i
  %148 = phi i1 [ %136, %block_0x33.i.i ], [ %121, %block_0x3e.i.i ]
  %149 = phi i1 [ %132, %block_0x33.i.i ], [ %118, %block_0x3e.i.i ]
  %150 = phi i1 [ %133, %block_0x33.i.i ], [ %117, %block_0x3e.i.i ]
  %151 = phi i1 [ %131, %block_0x33.i.i ], [ %112, %block_0x3e.i.i ]
  %152 = phi i1 [ %140, %block_0x33.i.i ], [ %116, %block_0x3e.i.i ]
  %153 = phi i1 [ %141, %block_0x33.i.i ], [ %119, %block_0x3e.i.i ]
  %154 = phi i64 [ %145, %block_0x33.i.i ], [ %125, %block_0x3e.i.i ]
  %155 = phi i64 [ %144, %block_0x33.i.i ], [ %124, %block_0x3e.i.i ]
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !5
  %156 = add i64 %154, -4, !mcsema_real_eip !22
  %157 = trunc i64 %155 to i32, !mcsema_real_eip !22
  %158 = inttoptr i64 %156 to i32*
  store i32 %157, i32* %158, align 4, !mcsema_real_eip !22
  %159 = inttoptr i64 %154 to i64*, !mcsema_real_eip !23
  %160 = load i64* %159, align 8, !mcsema_real_eip !23
  %161 = add i64 %154, 16, !mcsema_real_eip !24
  store i64 %155, i64* %RAX.i, align 8, !mcsema_real_eip !24
  %162 = extractelement <2 x i64> %3, i32 1
  store i64 %162, i64* %RBX.i, align 8, !mcsema_real_eip !24
  %163 = extractelement <2 x i64> %5, i32 0
  store i64 %163, i64* %RCX.i, align 8, !mcsema_real_eip !24
  store i64 %93, i64* %RDX.i, align 8, !mcsema_real_eip !24
  store i64 %97, i64* %RSI.i, align 8, !mcsema_real_eip !24
  store i64 zext (i32 ptrtoint (%0* @data_0x6b to i32) to i64), i64* %RDI.i, align 8, !mcsema_real_eip !24
  store i64 %161, i64* %RSP.i, align 8, !mcsema_real_eip !24
  store i64 %160, i64* %RBP.i, align 8, !mcsema_real_eip !24
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !24
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !24
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !24
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !24
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !24
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !24
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !24
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !24
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !24
  store i1 %153, i1* %CF.i, align 1, !mcsema_real_eip !24
  store i1 %152, i1* %PF.i, align 1, !mcsema_real_eip !24
  store i1 %151, i1* %AF.i, align 1, !mcsema_real_eip !24
  store i1 %150, i1* %ZF.i, align 1, !mcsema_real_eip !24
  store i1 %149, i1* %SF.i, align 1, !mcsema_real_eip !24
  store i1 %148, i1* %OF.i, align 1, !mcsema_real_eip !24
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !24
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !24
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !24
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !24
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !24
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !24
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !24
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !24
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !24
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !24
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !24
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !24
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !24
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !24
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !24
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !24
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !24
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !24
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !24
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !24
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !24
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !24
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !24
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !24
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !24
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !24
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !24
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !24
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !24
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
  call void @llvm.lifetime.end(i64 128, i8* %1)
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
!3 = metadata !{i64 76, [12 x i8] c"\09pushq\09%rbp\00"}
!4 = metadata !{i64 80, [16 x i8] c"\09subq\09$16, %rsp\00"}
!5 = metadata !{i64 94, [9 x i8] c"\09callq\090\00"}
!6 = metadata !{i64 8, [22 x i8] c"\09movl\09%edi, -20(%rbp)\00"}
!7 = metadata !{i64 11, [22 x i8] c"\09movl\09%esi, -24(%rbp)\00"}
!8 = metadata !{i64 17, [22 x i8] c"\09movl\09-20(%rbp), %edx\00"}
!9 = metadata !{i64 22, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!10 = metadata !{i64 25, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!11 = metadata !{i64 40, [9 x i8] c"\09callq\090\00"}
!12 = metadata !{i64 45, [21 x i8] c"\09cmpl\09$40, -20(%rbp)\00"}
!13 = metadata !{i64 49, [8 x i8] c"\09jle\0911\00"}
!14 = metadata !{i64 62, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!15 = metadata !{i64 65, [16 x i8] c"\09subl\09$10, %eax\00"}
!16 = metadata !{i64 68, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!17 = metadata !{i64 71, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!18 = metadata !{i64 74, [7 x i8] c"\09leave\00"}
!19 = metadata !{i64 75, [6 x i8] c"\09retq\00"}
!20 = metadata !{i64 54, [16 x i8] c"\09addl\09$10, %eax\00"}
!21 = metadata !{i64 57, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!22 = metadata !{i64 99, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!23 = metadata !{i64 105, [7 x i8] c"\09leave\00"}
!24 = metadata !{i64 106, [6 x i8] c"\09retq\00"}
