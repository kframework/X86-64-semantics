; ModuleID = 'Output/test_1.clang.trans.opt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [16 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x27 = internal constant %0 <{ [16 x i8] c"The value is %d\00" }>, align 64

declare x86_64_sysvcc i64 @printf(i64 inreg)

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  %_local_stack_alloc_5.i = alloca [24 x i64], align 8
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %1 = bitcast [24 x i64]* %_local_stack_alloc_5.i to i8*
  call void @llvm.lifetime.start(i64 192, i8* %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %STi_val.i.0..sroa_cast)
  %_local_stack_start_.i = ptrtoint [24 x i64]* %_local_stack_alloc_5.i to i64
  %RAX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %2 = bitcast i64* %RBX.i to <2 x i64>*
  %3 = load <2 x i64>* %2, align 8
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %4 = load i64* %RDX.i, align 8, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %5 = load i64* %RBP.i, align 8, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %6 = bitcast i64* %R8.i to <2 x i64>*
  %7 = load <2 x i64>* %6, align 8
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %8 = bitcast i64* %R10.i to <2 x i64>*
  %9 = load <2 x i64>* %8, align 8
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %10 = bitcast i64* %R12.i to <2 x i64>*
  %11 = load <2 x i64>* %10, align 8
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %12 = bitcast i64* %R14.i to <2 x i64>*
  %13 = load <2 x i64>* %12, align 8
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %14 = load i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %15 = load i1* %DF.i, align 1, !mcsema_real_eip !2
  %16 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %17 = bitcast x86_fp80* %16 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast, i8* %17, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %18 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %19 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %20 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %21 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %22 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %23 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %24 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %25 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %26 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %27 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %28 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %29 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %30 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %31 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %32 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %33 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %34 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %35 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %36 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %37 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %38 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %39 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %40 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %41 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %42 = bitcast i8* %41 to i64*
  %43 = load i64* %42, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %44 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %45 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %46 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %47 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %48 = load i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %49 = load i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %50 = load i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %51 = load i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %52 = load i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %53 = load i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %54 = load i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %55 = load i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %56 = load i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %57 = load i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %58 = load i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %59 = load i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %60 = load i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %61 = load i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %62 = load i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %63 = load i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %64 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %65 = load <2 x i64>* %64, align 8
  %66 = add i64 %_local_stack_start_.i, -8
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !2
  store i64 %5, i64* %67, align 8, !mcsema_real_eip !2
  %68 = add i64 %_local_stack_start_.i, -24
  %69 = tail call x86_64_sysvcc i64 @printf(i64 ptrtoint (%0* @data_0x27 to i64)), !mcsema_real_eip !3
  %70 = add i64 %_local_stack_start_.i, -12, !mcsema_real_eip !4
  %71 = trunc i64 %69 to i32, !mcsema_real_eip !4
  %72 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %72, align 4, !mcsema_real_eip !4
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %68, i64 16)
  %73 = extractvalue { i64, i1 } %uadd.i, 0
  %74 = xor i64 %73, %68, !mcsema_real_eip !5
  %75 = and i64 %74, 16
  %76 = icmp eq i64 %75, 0
  %77 = icmp slt i64 %73, 0
  %78 = icmp eq i64 %73, 0, !mcsema_real_eip !5
  %79 = add i64 %_local_stack_start_.i, 9223372036854775784
  %80 = and i64 %74, %79, !mcsema_real_eip !5
  %81 = icmp slt i64 %80, 0
  %82 = trunc i64 %73 to i8, !mcsema_real_eip !5
  %83 = tail call i8 @llvm.ctpop.i8(i8 %82), !mcsema_real_eip !5
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  %86 = extractvalue { i64, i1 } %uadd.i, 1
  %87 = inttoptr i64 %73 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %73, 16, !mcsema_real_eip !7
  store i64 %69, i64* %RAX.i, align 8, !mcsema_real_eip !7
  store <2 x i64> %3, <2 x i64>* %2, align 8
  store i64 %4, i64* %RDX.i, align 8, !mcsema_real_eip !7
  store i64 10, i64* %RSI.i, align 8, !mcsema_real_eip !7
  store i64 ptrtoint (%0* @data_0x27 to i64), i64* %RDI.i, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP.i, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP.i, align 8, !mcsema_real_eip !7
  store <2 x i64> %7, <2 x i64>* %6, align 8
  store <2 x i64> %9, <2 x i64>* %8, align 8
  store <2 x i64> %11, <2 x i64>* %10, align 8
  store <2 x i64> %13, <2 x i64>* %12, align 8
  store i64 %14, i64* %RIP.i, align 8, !mcsema_real_eip !7
  store i1 %86, i1* %CF.i, align 1, !mcsema_real_eip !7
  store i1 %85, i1* %PF.i, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %AF.i, align 1, !mcsema_real_eip !7
  store i1 %78, i1* %ZF.i, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %SF.i, align 1, !mcsema_real_eip !7
  store i1 %81, i1* %OF.i, align 1, !mcsema_real_eip !7
  store i1 %15, i1* %DF.i, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !7
  store i1 %18, i1* %FPU_B.i, align 1, !mcsema_real_eip !7
  store i1 %19, i1* %FPU_C3.i, align 1, !mcsema_real_eip !7
  store i3 %20, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !7
  store i1 %21, i1* %FPU_C2.i, align 1, !mcsema_real_eip !7
  store i1 %22, i1* %FPU_C1.i, align 1, !mcsema_real_eip !7
  store i1 %23, i1* %FPU_C0.i, align 1, !mcsema_real_eip !7
  store i1 %24, i1* %FPU_ES.i, align 1, !mcsema_real_eip !7
  store i1 %25, i1* %FPU_SF.i, align 1, !mcsema_real_eip !7
  store i1 %26, i1* %FPU_PE.i, align 1, !mcsema_real_eip !7
  store i1 %27, i1* %FPU_UE.i, align 1, !mcsema_real_eip !7
  store i1 %28, i1* %FPU_OE.i, align 1, !mcsema_real_eip !7
  store i1 %29, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !7
  store i1 %30, i1* %FPU_DE.i, align 1, !mcsema_real_eip !7
  store i1 %31, i1* %FPU_IE.i, align 1, !mcsema_real_eip !7
  store i1 %32, i1* %FPU_X.i, align 1, !mcsema_real_eip !7
  store i2 %33, i2* %FPU_RC.i, align 1, !mcsema_real_eip !7
  store i2 %34, i2* %FPU_PC.i, align 1, !mcsema_real_eip !7
  store i1 %35, i1* %FPU_PM.i, align 1, !mcsema_real_eip !7
  store i1 %36, i1* %FPU_UM.i, align 1, !mcsema_real_eip !7
  store i1 %37, i1* %FPU_OM.i, align 1, !mcsema_real_eip !7
  store i1 %38, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !7
  store i1 %39, i1* %FPU_DM.i, align 1, !mcsema_real_eip !7
  store i1 %40, i1* %FPU_IM.i, align 1, !mcsema_real_eip !7
  store i64 %43, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !7
  store i64 %45, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !7
  store i16 %46, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !7
  store i64 %47, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !7
  store i128 %48, i128* %XMM0.i, align 1, !mcsema_real_eip !7
  store i128 %49, i128* %XMM1.i, align 1, !mcsema_real_eip !7
  store i128 %50, i128* %XMM2.i, align 1, !mcsema_real_eip !7
  store i128 %51, i128* %XMM3.i, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM4.i, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM5.i, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM6.i, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM7.i, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM8.i, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM9.i, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM10.i, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM11.i, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM12.i, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM13.i, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM14.i, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM15.i, align 1, !mcsema_real_eip !7
  store <2 x i64> %65, <2 x i64>* %64, align 1
  call void @llvm.lifetime.end(i64 192, i8* %1)
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
!2 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 25, [9 x i8] c"\09callq\090\00"}
!4 = metadata !{i64 30, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!5 = metadata !{i64 33, [16 x i8] c"\09addq\09$16, %rsp\00"}
!6 = metadata !{i64 37, [11 x i8] c"\09popq\09%rbp\00"}
!7 = metadata !{i64 38, [6 x i8] c"\09retq\00"}
