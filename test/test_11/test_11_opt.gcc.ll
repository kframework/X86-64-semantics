; ModuleID = 'test_11_opt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

declare x86_64_sysvcc i64 @strlen(i64 inreg)

declare x86_64_sysvcc i64 @malloc(i64 inreg)

declare x86_64_sysvcc i64 @memset(i64 inreg, i64 inreg, i64 inreg)

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %1 = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %1)
  %RAX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %2 = load i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %3 = bitcast i64* %RCX.i to <2 x i64>*
  %4 = load <2 x i64>* %3, align 8
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %5 = load i64* %RSI.i, align 8, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %6 = load i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %7 = load i64* %RSP.i, align 8, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %8 = load i64* %RBP.i, align 8, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %9 = load i64* %R8.i, align 8, !mcsema_real_eip !2
  %R9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %10 = load i64* %R9.i, align 8, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %11 = load i64* %R10.i, align 8, !mcsema_real_eip !2
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %12 = load i64* %R11.i, align 8, !mcsema_real_eip !2
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %13 = load i64* %R12.i, align 8, !mcsema_real_eip !2
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %14 = load i64* %R13.i, align 8, !mcsema_real_eip !2
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %15 = load i64* %R14.i, align 8, !mcsema_real_eip !2
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %16 = load i64* %R15.i, align 8, !mcsema_real_eip !2
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %17 = load i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %18 = load i1* %DF.i, align 1, !mcsema_real_eip !2
  %19 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %20 = bitcast x86_fp80* %19 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %20, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %21 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %22 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %23 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %24 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %25 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %26 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %27 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %28 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %29 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %30 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %31 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %32 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %33 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %34 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %35 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %36 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %37 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %38 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %39 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %40 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %41 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %42 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %43 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %44 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %45 = bitcast i8* %44 to i64*
  %46 = load i64* %45, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %47 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %48 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %49 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %50 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %51 = load i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %52 = load i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %53 = load i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %54 = load i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %55 = load i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %56 = load i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %57 = load i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %58 = load i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %59 = load i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %60 = load i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %61 = load i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %62 = load i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %63 = load i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %64 = load i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %65 = load i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %66 = load i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %67 = load i64* %STACK_BASE.i, align 8, !mcsema_real_eip !2
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %68 = load i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !2
  %69 = add i64 %7, -8
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !2
  store i64 %8, i64* %70, align 8, !mcsema_real_eip !2
  %71 = add i64 %7, -48, !mcsema_real_eip !3
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !3
  store i64 %6, i64* %72, align 8, !mcsema_real_eip !3
  %73 = tail call x86_64_sysvcc i64 @strlen(i64 %6), !mcsema_real_eip !4
  %74 = add i64 %73, 1
  %75 = add i64 %7, -32, !mcsema_real_eip !5
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !5
  store i64 %74, i64* %76, align 8, !mcsema_real_eip !5
  %77 = tail call x86_64_sysvcc i64 @malloc(i64 %74), !mcsema_real_eip !6
  %78 = add i64 %7, -40, !mcsema_real_eip !7
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !7
  store i64 %77, i64* %79, align 8, !mcsema_real_eip !7
  %80 = icmp eq i64 %77, 0, !mcsema_real_eip !8
  br i1 %80, label %block_0xa9.i, label %block_0x46.i, !mcsema_real_eip !9

block_0xa9.i:                                     ; preds = %driverBlockRaw
  %81 = load i64* %70, align 8, !mcsema_real_eip !10
  %82 = add i64 %7, 8, !mcsema_real_eip !11
  store i64 0, i64* %RAX.i, align 8, !mcsema_real_eip !11
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !11
  store <2 x i64> %4, <2 x i64>* %3, align 8
  store i64 %5, i64* %RSI.i, align 8, !mcsema_real_eip !11
  store i64 %74, i64* %RDI.i, align 8, !mcsema_real_eip !11
  store i64 %82, i64* %RSP.i, align 8, !mcsema_real_eip !11
  store i64 %81, i64* %RBP.i, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R8.i, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R9.i, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %R10.i, align 8, !mcsema_real_eip !11
  store i64 %12, i64* %R11.i, align 8, !mcsema_real_eip !11
  store i64 %13, i64* %R12.i, align 8, !mcsema_real_eip !11
  store i64 %14, i64* %R13.i, align 8, !mcsema_real_eip !11
  store i64 %15, i64* %R14.i, align 8, !mcsema_real_eip !11
  store i64 %16, i64* %R15.i, align 8, !mcsema_real_eip !11
  store i64 %17, i64* %RIP.i, align 8, !mcsema_real_eip !11
  store i1 false, i1* %CF.i, align 1, !mcsema_real_eip !11
  store i1 true, i1* %PF.i, align 1, !mcsema_real_eip !11
  store i1 false, i1* %AF.i, align 1, !mcsema_real_eip !11
  store i1 true, i1* %ZF.i, align 1, !mcsema_real_eip !11
  store i1 false, i1* %SF.i, align 1, !mcsema_real_eip !11
  store i1 false, i1* %OF.i, align 1, !mcsema_real_eip !11
  store i1 %18, i1* %DF.i, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %21, i1* %FPU_B.i, align 1, !mcsema_real_eip !11
  store i1 %22, i1* %FPU_C3.i, align 1, !mcsema_real_eip !11
  store i3 %23, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_C2.i, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_C1.i, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_C0.i, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_ES.i, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_SF.i, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_PE.i, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_UE.i, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_OE.i, align 1, !mcsema_real_eip !11
  store i1 %32, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !11
  store i1 %33, i1* %FPU_DE.i, align 1, !mcsema_real_eip !11
  store i1 %34, i1* %FPU_IE.i, align 1, !mcsema_real_eip !11
  store i1 %35, i1* %FPU_X.i, align 1, !mcsema_real_eip !11
  store i2 %36, i2* %FPU_RC.i, align 1, !mcsema_real_eip !11
  store i2 %37, i2* %FPU_PC.i, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_PM.i, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_UM.i, align 1, !mcsema_real_eip !11
  store i1 %40, i1* %FPU_OM.i, align 1, !mcsema_real_eip !11
  store i1 %41, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !11
  store i1 %42, i1* %FPU_DM.i, align 1, !mcsema_real_eip !11
  store i1 %43, i1* %FPU_IM.i, align 1, !mcsema_real_eip !11
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !11
  store i64 %48, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !11
  store i16 %49, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !11
  store i64 %50, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !11
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !11
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !11
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !11
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !11
  store i64 %67, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !11
  store i64 %68, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !11
  call void @llvm.lifetime.end(i64 128, i8* %1)
  br label %sub_f.exit

block_0x46.i:                                     ; preds = %driverBlockRaw
  %83 = load i64* %72, align 8, !mcsema_real_eip !12
  %84 = add i64 %7, -16, !mcsema_real_eip !13
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !13
  store i64 %83, i64* %85, align 8, !mcsema_real_eip !13
  %86 = load i64* %79, align 8, !mcsema_real_eip !14
  %87 = add i64 %7, -24, !mcsema_real_eip !15
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !15
  store i64 %86, i64* %88, align 8, !mcsema_real_eip !15
  %89 = load i64* %76, align 8, !mcsema_real_eip !16
  %90 = load i64* %79, align 8, !mcsema_real_eip !17
  %91 = tail call x86_64_sysvcc i64 @memset(i64 %90, i64 0, i64 %89), !mcsema_real_eip !18
  %92 = load i64* %85, align 8, !mcsema_real_eip !19
  %93 = inttoptr i64 %92 to i8*
  %94 = load i8* %93, align 1, !mcsema_real_eip !20
  %95 = icmp eq i8 %94, 0, !mcsema_real_eip !21
  %96 = tail call i8 @llvm.ctpop.i8(i8 %94), !mcsema_real_eip !21
  br i1 %95, label %block_0xa3.i, label %block_0x6d.outer.i.preheader, !mcsema_real_eip !22

block_0x6d.outer.i.preheader:                     ; preds = %block_0x46.i
  br label %block_0x6d.outer.i

block_0x6d.outer.i:                               ; preds = %block_0x81.i, %block_0x6d.outer.i.preheader
  %.pre.i = phi i8 [ %112, %block_0x81.i ], [ %94, %block_0x6d.outer.i.preheader ]
  %RDX_val.0.ph.i = phi i64 [ %107, %block_0x81.i ], [ %89, %block_0x6d.outer.i.preheader ]
  br label %block_0x6d.i

block_0x6d.i:                                     ; preds = %block_0x78.i, %block_0x6d.outer.i
  %97 = phi i8 [ %.pre.i, %block_0x6d.outer.i ], [ %118, %block_0x78.i ]
  %98 = add i8 %97, -47
  %99 = icmp eq i8 %98, 0, !mcsema_real_eip !23
  br i1 %99, label %block_0x78.i, label %block_0x81.i, !mcsema_real_eip !24

block_0xa3.loopexit.i.loopexit:                   ; preds = %block_0x78.i
  %RDX_val.0.ph.i.lcssa22 = phi i64 [ %RDX_val.0.ph.i, %block_0x78.i ]
  %.lcssa19 = phi i8 [ %97, %block_0x78.i ]
  br label %block_0xa3.loopexit.i

block_0xa3.loopexit.i.loopexit18:                 ; preds = %block_0x81.i
  %.lcssa23 = phi i64 [ %107, %block_0x81.i ]
  %.lcssa.lcssa = phi i8 [ %.lcssa, %block_0x81.i ]
  %.lcssa20.lcssa = phi i8 [ %.lcssa20, %block_0x81.i ]
  br label %block_0xa3.loopexit.i

block_0xa3.loopexit.i:                            ; preds = %block_0xa3.loopexit.i.loopexit18, %block_0xa3.loopexit.i.loopexit
  %100 = phi i8 [ %.lcssa19, %block_0xa3.loopexit.i.loopexit ], [ %.lcssa.lcssa, %block_0xa3.loopexit.i.loopexit18 ]
  %101 = phi i8 [ 0, %block_0xa3.loopexit.i.loopexit ], [ %.lcssa20.lcssa, %block_0xa3.loopexit.i.loopexit18 ]
  %RDX_val.1.ph.i = phi i64 [ %RDX_val.0.ph.i.lcssa22, %block_0xa3.loopexit.i.loopexit ], [ %.lcssa23, %block_0xa3.loopexit.i.loopexit18 ]
  %.in.in.i = xor i8 %101, %100
  %.in.i = and i8 %.in.in.i, 16
  %102 = icmp ne i8 %.in.i, 0
  br label %block_0xa3.i

block_0xa3.i:                                     ; preds = %block_0xa3.loopexit.i, %block_0x46.i
  %PF_val.0.in.in.i = phi i8 [ %96, %block_0x46.i ], [ 0, %block_0xa3.loopexit.i ]
  %AF_val.0.i = phi i1 [ false, %block_0x46.i ], [ %102, %block_0xa3.loopexit.i ]
  %RDX_val.1.i = phi i64 [ %89, %block_0x46.i ], [ %RDX_val.1.ph.i, %block_0xa3.loopexit.i ]
  %PF_val.0.in.i = and i8 %PF_val.0.in.in.i, 1
  %PF_val.0.i = icmp eq i8 %PF_val.0.in.i, 0
  %103 = load i64* %79, align 8, !mcsema_real_eip !25
  %104 = load i64* %70, align 8, !mcsema_real_eip !10
  %105 = add i64 %7, 8, !mcsema_real_eip !11
  store i64 %103, i64* %RAX.i, align 8, !mcsema_real_eip !11
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !11
  %106 = extractelement <2 x i64> %4, i32 0
  store i64 %106, i64* %RCX.i, align 8, !mcsema_real_eip !11
  store i64 %RDX_val.1.i, i64* %RDX.i, align 8, !mcsema_real_eip !11
  store i64 0, i64* %RSI.i, align 8, !mcsema_real_eip !11
  store i64 %90, i64* %RDI.i, align 8, !mcsema_real_eip !11
  store i64 %105, i64* %RSP.i, align 8, !mcsema_real_eip !11
  store i64 %104, i64* %RBP.i, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R8.i, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R9.i, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %R10.i, align 8, !mcsema_real_eip !11
  store i64 %12, i64* %R11.i, align 8, !mcsema_real_eip !11
  store i64 %13, i64* %R12.i, align 8, !mcsema_real_eip !11
  store i64 %14, i64* %R13.i, align 8, !mcsema_real_eip !11
  store i64 %15, i64* %R14.i, align 8, !mcsema_real_eip !11
  store i64 %16, i64* %R15.i, align 8, !mcsema_real_eip !11
  store i64 %17, i64* %RIP.i, align 8, !mcsema_real_eip !11
  store i1 false, i1* %CF.i, align 1, !mcsema_real_eip !11
  store i1 %PF_val.0.i, i1* %PF.i, align 1, !mcsema_real_eip !11
  store i1 %AF_val.0.i, i1* %AF.i, align 1, !mcsema_real_eip !11
  store i1 true, i1* %ZF.i, align 1, !mcsema_real_eip !11
  store i1 false, i1* %SF.i, align 1, !mcsema_real_eip !11
  store i1 false, i1* %OF.i, align 1, !mcsema_real_eip !11
  store i1 %18, i1* %DF.i, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %21, i1* %FPU_B.i, align 1, !mcsema_real_eip !11
  store i1 %22, i1* %FPU_C3.i, align 1, !mcsema_real_eip !11
  store i3 %23, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_C2.i, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_C1.i, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_C0.i, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_ES.i, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_SF.i, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_PE.i, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_UE.i, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_OE.i, align 1, !mcsema_real_eip !11
  store i1 %32, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !11
  store i1 %33, i1* %FPU_DE.i, align 1, !mcsema_real_eip !11
  store i1 %34, i1* %FPU_IE.i, align 1, !mcsema_real_eip !11
  store i1 %35, i1* %FPU_X.i, align 1, !mcsema_real_eip !11
  store i2 %36, i2* %FPU_RC.i, align 1, !mcsema_real_eip !11
  store i2 %37, i2* %FPU_PC.i, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_PM.i, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_UM.i, align 1, !mcsema_real_eip !11
  store i1 %40, i1* %FPU_OM.i, align 1, !mcsema_real_eip !11
  store i1 %41, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !11
  store i1 %42, i1* %FPU_DM.i, align 1, !mcsema_real_eip !11
  store i1 %43, i1* %FPU_IM.i, align 1, !mcsema_real_eip !11
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !11
  store i64 %48, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !11
  store i16 %49, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !11
  store i64 %50, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !11
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !11
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !11
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !11
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !11
  store i64 %67, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !11
  store i64 %68, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !11
  call void @llvm.lifetime.end(i64 128, i8* %1)
  br label %sub_f.exit

block_0x81.i:                                     ; preds = %block_0x6d.i
  %.lcssa20 = phi i8 [ %98, %block_0x6d.i ]
  %.lcssa = phi i8 [ %97, %block_0x6d.i ]
  %107 = zext i8 %.lcssa to i64
  %108 = load i64* %88, align 8, !mcsema_real_eip !26
  %109 = inttoptr i64 %108 to i8*
  store i8 %.lcssa, i8* %109, align 1, !mcsema_real_eip !27
  %110 = load i64* %85, align 8, !mcsema_real_eip !19
  %111 = inttoptr i64 %110 to i8*
  %112 = load i8* %111, align 1, !mcsema_real_eip !20
  %113 = icmp eq i8 %112, 0, !mcsema_real_eip !21
  br i1 %113, label %block_0xa3.loopexit.i.loopexit18, label %block_0x6d.outer.i, !mcsema_real_eip !22

block_0x78.i:                                     ; preds = %block_0x6d.i
  %114 = load i64* %88, align 8, !mcsema_real_eip !28
  %115 = inttoptr i64 %114 to i8*
  store i8 92, i8* %115, align 1, !mcsema_real_eip !29
  %116 = load i64* %85, align 8, !mcsema_real_eip !19
  %117 = inttoptr i64 %116 to i8*
  %118 = load i8* %117, align 1, !mcsema_real_eip !20
  %119 = icmp eq i8 %118, 0, !mcsema_real_eip !21
  br i1 %119, label %block_0xa3.loopexit.i.loopexit, label %block_0x6d.i, !mcsema_real_eip !22

sub_f.exit:                                       ; preds = %block_0xa3.i, %block_0xa9.i
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
!2 = metadata !{i64 15, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 23, [22 x i8] c"\09movq\09%rdi, -40(%rbp)\00"}
!4 = metadata !{i64 34, [9 x i8] c"\09callq\090\00"}
!5 = metadata !{i64 43, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!6 = metadata !{i64 54, [9 x i8] c"\09callq\090\00"}
!7 = metadata !{i64 59, [22 x i8] c"\09movq\09%rax, -32(%rbp)\00"}
!8 = metadata !{i64 63, [20 x i8] c"\09cmpq\09$0, -32(%rbp)\00"}
!9 = metadata !{i64 68, [7 x i8] c"\09je\0999\00"}
!10 = metadata !{i64 174, [7 x i8] c"\09leave\00"}
!11 = metadata !{i64 175, [6 x i8] c"\09retq\00"}
!12 = metadata !{i64 70, [22 x i8] c"\09movq\09-40(%rbp), %rax\00"}
!13 = metadata !{i64 74, [21 x i8] c"\09movq\09%rax, -8(%rbp)\00"}
!14 = metadata !{i64 78, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!15 = metadata !{i64 82, [22 x i8] c"\09movq\09%rax, -16(%rbp)\00"}
!16 = metadata !{i64 86, [22 x i8] c"\09movq\09-24(%rbp), %rdx\00"}
!17 = metadata !{i64 90, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!18 = metadata !{i64 102, [9 x i8] c"\09callq\090\00"}
!19 = metadata !{i64 152, [21 x i8] c"\09movq\09-8(%rbp), %rax\00"}
!20 = metadata !{i64 156, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!21 = metadata !{i64 159, [16 x i8] c"\09testb\09%al, %al\00"}
!22 = metadata !{i64 161, [9 x i8] c"\09jne\09-54\00"}
!23 = metadata !{i64 116, [15 x i8] c"\09cmpb\09$47, %al\00"}
!24 = metadata !{i64 118, [7 x i8] c"\09jne\099\00"}
!25 = metadata !{i64 163, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!26 = metadata !{i64 136, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!27 = metadata !{i64 140, [18 x i8] c"\09movb\09%dl, (%rax)\00"}
!28 = metadata !{i64 120, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!29 = metadata !{i64 124, [18 x i8] c"\09movb\09$92, (%rax)\00"}
