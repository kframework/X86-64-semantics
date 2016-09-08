; ModuleID = 'Output/test_26.clang.opt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

declare x86_64_sysvcc i64 @malloc(i64 inreg)

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
  %R9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !3
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !3
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
  %5 = bitcast i64* %R10.i to <2 x i64>*
  %6 = load <2 x i64>* %5, align 8
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !3
  %7 = bitcast i64* %R12.i to <2 x i64>*
  %8 = load <2 x i64>* %7, align 8
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !3
  %9 = bitcast i64* %R14.i to <2 x i64>*
  %10 = load <2 x i64>* %9, align 8
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %11 = load i64* %RIP.i, align 8, !mcsema_real_eip !3
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !3
  %12 = load i1* %DF.i, align 1, !mcsema_real_eip !3
  %13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !3
  %14 = bitcast x86_fp80* %13 to i8*, !mcsema_real_eip !3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %14, i32 128, i32 4, i1 false), !mcsema_real_eip !3
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !3
  %15 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !3
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !3
  %16 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !3
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !3
  %17 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !3
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !3
  %18 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !3
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !3
  %19 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !3
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !3
  %20 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !3
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !3
  %21 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !3
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !3
  %22 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !3
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !3
  %23 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !3
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !3
  %24 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !3
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !3
  %25 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !3
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !3
  %26 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !3
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !3
  %27 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !3
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !3
  %28 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !3
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !3
  %29 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !3
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !3
  %30 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !3
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !3
  %31 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !3
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !3
  %32 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !3
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !3
  %33 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !3
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !3
  %34 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !3
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !3
  %35 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !3
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !3
  %36 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !3
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !3
  %37 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !3
  %38 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !3
  %39 = bitcast i8* %38 to i64*
  %40 = load i64* %39, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !3
  %41 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !3
  %42 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !3
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !3
  %43 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !3
  %44 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !3
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %45 = load i128* %XMM0.i, align 1, !mcsema_real_eip !3
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %46 = load i128* %XMM1.i, align 1, !mcsema_real_eip !3
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %47 = load i128* %XMM2.i, align 1, !mcsema_real_eip !3
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %48 = load i128* %XMM3.i, align 1, !mcsema_real_eip !3
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %49 = load i128* %XMM4.i, align 1, !mcsema_real_eip !3
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %50 = load i128* %XMM5.i, align 1, !mcsema_real_eip !3
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %51 = load i128* %XMM6.i, align 1, !mcsema_real_eip !3
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %52 = load i128* %XMM7.i, align 1, !mcsema_real_eip !3
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %53 = load i128* %XMM8.i, align 1, !mcsema_real_eip !3
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %54 = load i128* %XMM9.i, align 1, !mcsema_real_eip !3
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %55 = load i128* %XMM10.i, align 1, !mcsema_real_eip !3
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %56 = load i128* %XMM11.i, align 1, !mcsema_real_eip !3
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %57 = load i128* %XMM12.i, align 1, !mcsema_real_eip !3
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %58 = load i128* %XMM13.i, align 1, !mcsema_real_eip !3
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %59 = load i128* %XMM14.i, align 1, !mcsema_real_eip !3
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %60 = load i128* %XMM15.i, align 1, !mcsema_real_eip !3
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %61 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %62 = load <2 x i64>* %61, align 8
  %63 = add i64 %3, -8
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !3
  store i64 %4, i64* %64, align 8, !mcsema_real_eip !3
  %65 = add i64 %3, -136
  %66 = xor i64 %65, %63, !mcsema_real_eip !4
  %67 = and i64 %66, 16, !mcsema_real_eip !4
  %68 = icmp ne i64 %67, 0, !mcsema_real_eip !4
  %69 = trunc i64 %65 to i8, !mcsema_real_eip !4
  %70 = tail call i8 @llvm.ctpop.i8(i8 %69), !mcsema_real_eip !4
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  %73 = icmp eq i64 %65, 0, !mcsema_real_eip !4
  %74 = icmp slt i64 %65, 0
  %75 = icmp ult i64 %63, 128, !mcsema_real_eip !4
  %76 = and i64 %66, %63, !mcsema_real_eip !4
  %77 = icmp slt i64 %76, 0
  %78 = add i64 %3, -12, !mcsema_real_eip !5
  %79 = inttoptr i64 %78 to i32*
  store i32 0, i32* %79, align 4, !mcsema_real_eip !5
  %80 = add i64 %3, -24, !mcsema_real_eip !6
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !6
  store i64 42949672970, i64* %81, align 8, !mcsema_real_eip !6
  %82 = add i64 %3, -16, !mcsema_real_eip !7
  %83 = inttoptr i64 %82 to i32*
  store i32 10, i32* %83, align 4, !mcsema_real_eip !7
  %84 = tail call x86_64_sysvcc i64 @malloc(i64 24), !mcsema_real_eip !8
  %85 = add i64 %3, -32, !mcsema_real_eip !9
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !9
  store i64 %84, i64* %86, align 8, !mcsema_real_eip !9
  %87 = inttoptr i64 %84 to i32*
  store i32 5, i32* %87, align 4, !mcsema_real_eip !10
  %88 = load i64* %86, align 8, !mcsema_real_eip !11
  %89 = add i64 %88, 4, !mcsema_real_eip !12
  %90 = inttoptr i64 %89 to i32*
  store i32 5, i32* %90, align 4, !mcsema_real_eip !12
  %91 = load i64* %86, align 8, !mcsema_real_eip !13
  %92 = add i64 %91, 8, !mcsema_real_eip !14
  %93 = inttoptr i64 %92 to i32*
  store i32 5, i32* %93, align 4, !mcsema_real_eip !14
  %94 = load i64* %86, align 8, !mcsema_real_eip !15
  %95 = load i32* %83, align 4, !mcsema_real_eip !16
  %96 = add i64 %3, -56, !mcsema_real_eip !17
  %97 = inttoptr i64 %96 to i32*
  store i32 %95, i32* %97, align 4, !mcsema_real_eip !17
  %98 = load i64* %81, align 8, !mcsema_real_eip !18
  %99 = add i64 %3, -64, !mcsema_real_eip !19
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !19
  store i64 %98, i64* %100, align 8, !mcsema_real_eip !19
  %101 = load i32* %97, align 4, !mcsema_real_eip !20
  %102 = zext i32 %101 to i64, !mcsema_real_eip !20
  %103 = load i32* %83, align 4, !mcsema_real_eip !21
  %104 = add i64 %3, -120, !mcsema_real_eip !22
  %105 = inttoptr i64 %104 to i32*
  store i32 %103, i32* %105, align 4, !mcsema_real_eip !22
  %106 = load i64* %81, align 8, !mcsema_real_eip !23
  %107 = add i64 %3, -128, !mcsema_real_eip !24
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !24
  store i64 %106, i64* %108, align 8, !mcsema_real_eip !24
  %109 = add i64 %3, -104, !mcsema_real_eip !25
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !25
  store i64 %94, i64* %110, align 8, !mcsema_real_eip !25
  %111 = add i64 %3, -112, !mcsema_real_eip !26
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !26
  store i64 %80, i64* %112, align 8, !mcsema_real_eip !26
  %113 = inttoptr i64 %65 to i32*
  store i32 3, i32* %113, align 4, !mcsema_real_eip !27
  %114 = add i64 %3, -84, !mcsema_real_eip !28
  %115 = inttoptr i64 %114 to i32*
  store i32 1, i32* %115, align 4, !mcsema_real_eip !28
  %116 = add i64 %3, -144
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !29
  store i64 -4981261766360305936, i64* %117, align 8, !mcsema_real_eip !29
  store i64 %94, i64* %RAX.i, align 8, !mcsema_real_eip !29
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !29
  store i64 %94, i64* %RCX.i, align 8, !mcsema_real_eip !29
  store i64 %80, i64* %RDX.i, align 8, !mcsema_real_eip !29
  store i64 %102, i64* %RSI.i, align 8, !mcsema_real_eip !29
  store i64 %98, i64* %RDI.i, align 8, !mcsema_real_eip !29
  store i64 %116, i64* %RSP.i, align 8, !mcsema_real_eip !29
  store i64 %63, i64* %RBP.i, align 8, !mcsema_real_eip !29
  store i64 1, i64* %R8.i, align 8, !mcsema_real_eip !29
  store i64 2, i64* %R9.i, align 8, !mcsema_real_eip !29
  store <2 x i64> %6, <2 x i64>* %5, align 8
  store <2 x i64> %8, <2 x i64>* %7, align 8
  store <2 x i64> %10, <2 x i64>* %9, align 8
  store i64 %11, i64* %RIP.i, align 8, !mcsema_real_eip !29
  store i1 %75, i1* %CF.i, align 1, !mcsema_real_eip !29
  store i1 %72, i1* %PF.i, align 1, !mcsema_real_eip !29
  store i1 %68, i1* %AF.i, align 1, !mcsema_real_eip !29
  store i1 %73, i1* %ZF.i, align 1, !mcsema_real_eip !29
  store i1 %74, i1* %SF.i, align 1, !mcsema_real_eip !29
  store i1 %77, i1* %OF.i, align 1, !mcsema_real_eip !29
  store i1 %12, i1* %DF.i, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !29
  store i1 %15, i1* %FPU_B.i, align 1, !mcsema_real_eip !29
  store i1 %16, i1* %FPU_C3.i, align 1, !mcsema_real_eip !29
  store i3 %17, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !29
  store i1 %18, i1* %FPU_C2.i, align 1, !mcsema_real_eip !29
  store i1 %19, i1* %FPU_C1.i, align 1, !mcsema_real_eip !29
  store i1 %20, i1* %FPU_C0.i, align 1, !mcsema_real_eip !29
  store i1 %21, i1* %FPU_ES.i, align 1, !mcsema_real_eip !29
  store i1 %22, i1* %FPU_SF.i, align 1, !mcsema_real_eip !29
  store i1 %23, i1* %FPU_PE.i, align 1, !mcsema_real_eip !29
  store i1 %24, i1* %FPU_UE.i, align 1, !mcsema_real_eip !29
  store i1 %25, i1* %FPU_OE.i, align 1, !mcsema_real_eip !29
  store i1 %26, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !29
  store i1 %27, i1* %FPU_DE.i, align 1, !mcsema_real_eip !29
  store i1 %28, i1* %FPU_IE.i, align 1, !mcsema_real_eip !29
  store i1 %29, i1* %FPU_X.i, align 1, !mcsema_real_eip !29
  store i2 %30, i2* %FPU_RC.i, align 1, !mcsema_real_eip !29
  store i2 %31, i2* %FPU_PC.i, align 1, !mcsema_real_eip !29
  store i1 %32, i1* %FPU_PM.i, align 1, !mcsema_real_eip !29
  store i1 %33, i1* %FPU_UM.i, align 1, !mcsema_real_eip !29
  store i1 %34, i1* %FPU_OM.i, align 1, !mcsema_real_eip !29
  store i1 %35, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !29
  store i1 %36, i1* %FPU_DM.i, align 1, !mcsema_real_eip !29
  store i1 %37, i1* %FPU_IM.i, align 1, !mcsema_real_eip !29
  store i64 %40, i64* %39, align 4
  store i16 %41, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !29
  store i64 %42, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !29
  store i16 %43, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !29
  store i64 %44, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !29
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !29
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !29
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !29
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !29
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !29
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !29
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !29
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !29
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !29
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !29
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !29
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !29
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !29
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !29
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !29
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !29
  store <2 x i64> %62, <2 x i64>* %61, align 1
  %118 = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %118)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %118, i8* %1, i32 128, i32 16, i1 false)
  %119 = add i64 %3, -152
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !2
  store i64 %63, i64* %120, align 8, !mcsema_real_eip !2
  %121 = add i64 %3, -160
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !30
  store i64 %2, i64* %122, align 8, !mcsema_real_eip !30
  %123 = load i64* %110, align 8, !mcsema_real_eip !31
  %124 = load i64* %112, align 8, !mcsema_real_eip !32
  %125 = load i32* %113, align 4, !mcsema_real_eip !33
  %126 = add i64 %3, -208, !mcsema_real_eip !34
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !34
  store i64 %98, i64* %127, align 8, !mcsema_real_eip !34
  %128 = add i64 %3, -200, !mcsema_real_eip !35
  %129 = inttoptr i64 %128 to i32*
  store i32 %101, i32* %129, align 4, !mcsema_real_eip !35
  %130 = add i64 %3, -184, !mcsema_real_eip !36
  %131 = inttoptr i64 %130 to i32*
  store i32 %101, i32* %131, align 4, !mcsema_real_eip !36
  %132 = load i64* %127, align 8, !mcsema_real_eip !37
  %133 = add i64 %3, -192, !mcsema_real_eip !38
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !38
  store i64 %132, i64* %134, align 8, !mcsema_real_eip !38
  %135 = add i64 %3, -216, !mcsema_real_eip !39
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !39
  store i64 %80, i64* %136, align 8, !mcsema_real_eip !39
  %137 = add i64 %3, -224, !mcsema_real_eip !40
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !40
  store i64 %94, i64* %138, align 8, !mcsema_real_eip !40
  %139 = add i64 %3, -228, !mcsema_real_eip !41
  %140 = inttoptr i64 %139 to i32*
  store i32 1, i32* %140, align 4, !mcsema_real_eip !41
  %141 = add i64 %3, -232, !mcsema_real_eip !42
  %142 = inttoptr i64 %141 to i32*
  store i32 2, i32* %142, align 4, !mcsema_real_eip !42
  %143 = add i64 %3, -236, !mcsema_real_eip !43
  %144 = inttoptr i64 %143 to i32*
  store i32 %125, i32* %144, align 4, !mcsema_real_eip !43
  %145 = add i64 %3, -248, !mcsema_real_eip !44
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !44
  store i64 %124, i64* %146, align 8, !mcsema_real_eip !44
  %147 = add i64 %3, -256, !mcsema_real_eip !45
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !45
  store i64 %123, i64* %148, align 8, !mcsema_real_eip !45
  %149 = inttoptr i64 %133 to i32*
  %150 = load i32* %149, align 4, !mcsema_real_eip !46
  %151 = load i64* %136, align 8, !mcsema_real_eip !47
  %152 = inttoptr i64 %151 to i32*
  %153 = load i32* %152, align 4, !mcsema_real_eip !48
  %154 = add i32 %153, %150
  %155 = load i64* %138, align 8, !mcsema_real_eip !49
  %156 = inttoptr i64 %155 to i32*
  %157 = load i32* %156, align 4, !mcsema_real_eip !50
  %158 = add i32 %154, %157
  %159 = inttoptr i64 %107 to i32*
  %160 = load i32* %159, align 4, !mcsema_real_eip !51
  %161 = load i64* %146, align 8, !mcsema_real_eip !52
  %162 = inttoptr i64 %161 to i32*
  %163 = load i32* %162, align 4, !mcsema_real_eip !53
  %164 = inttoptr i64 %123 to i32*
  %165 = load i32* %164, align 4, !mcsema_real_eip !54
  %166 = add i32 %158, %160
  %167 = add i32 %166, %163
  %168 = add i32 %167, %165
  %169 = add i64 %3, -272, !mcsema_real_eip !55
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !55
  %171 = inttoptr i64 %169 to i32*
  store i32 %168, i32* %171, align 4, !mcsema_real_eip !55
  %172 = add i64 %3, -188, !mcsema_real_eip !56
  %173 = inttoptr i64 %172 to i32*
  %174 = load i32* %173, align 4, !mcsema_real_eip !56
  %175 = load i64* %136, align 8, !mcsema_real_eip !57
  %176 = add i64 %175, 4, !mcsema_real_eip !58
  %177 = inttoptr i64 %176 to i32*
  %178 = load i32* %177, align 4, !mcsema_real_eip !58
  %179 = add i32 %178, %174
  %180 = load i64* %138, align 8, !mcsema_real_eip !59
  %181 = add i64 %180, 4, !mcsema_real_eip !60
  %182 = inttoptr i64 %181 to i32*
  %183 = load i32* %182, align 4, !mcsema_real_eip !60
  %184 = add i32 %179, %183
  %185 = add i64 %3, -124, !mcsema_real_eip !61
  %186 = inttoptr i64 %185 to i32*
  %187 = load i32* %186, align 4, !mcsema_real_eip !61
  %188 = load i64* %146, align 8, !mcsema_real_eip !62
  %189 = add i64 %188, 4, !mcsema_real_eip !63
  %190 = inttoptr i64 %189 to i32*
  %191 = load i32* %190, align 4, !mcsema_real_eip !63
  %192 = load i64* %148, align 8, !mcsema_real_eip !64
  %193 = add i64 %192, 4, !mcsema_real_eip !65
  %194 = inttoptr i64 %193 to i32*
  %195 = load i32* %194, align 4, !mcsema_real_eip !65
  %196 = add i32 %184, %187
  %197 = add i32 %196, %191
  %198 = add i32 %197, %195
  %199 = add i64 %3, -268, !mcsema_real_eip !66
  %200 = inttoptr i64 %199 to i32*
  store i32 %198, i32* %200, align 4, !mcsema_real_eip !66
  %201 = load i32* %131, align 4, !mcsema_real_eip !67
  %202 = load i64* %136, align 8, !mcsema_real_eip !68
  %203 = add i64 %202, 8, !mcsema_real_eip !69
  %204 = inttoptr i64 %203 to i32*
  %205 = load i32* %204, align 4, !mcsema_real_eip !69
  %206 = add i32 %205, %201
  %207 = load i64* %138, align 8, !mcsema_real_eip !70
  %208 = add i64 %207, 8, !mcsema_real_eip !71
  %209 = inttoptr i64 %208 to i32*
  %210 = load i32* %209, align 4, !mcsema_real_eip !71
  %211 = add i32 %206, %210
  %212 = load i32* %105, align 4, !mcsema_real_eip !72
  %213 = load i64* %146, align 8, !mcsema_real_eip !73
  %214 = add i64 %213, 8, !mcsema_real_eip !74
  %215 = inttoptr i64 %214 to i32*
  %216 = load i32* %215, align 4, !mcsema_real_eip !74
  %217 = add i32 %216, %212
  %218 = load i64* %148, align 8, !mcsema_real_eip !75
  %219 = add i64 %218, 8, !mcsema_real_eip !76
  %220 = inttoptr i64 %219 to i32*
  %221 = load i32* %220, align 4, !mcsema_real_eip !76
  %222 = zext i32 %221 to i64, !mcsema_real_eip !76
  %223 = add i32 %217, %221
  %224 = zext i32 %223 to i64, !mcsema_real_eip !77
  %uadd83.i.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %223, i32 %211) #0
  %225 = extractvalue { i32, i1 } %uadd83.i.i, 0
  %226 = xor i32 %225, %211, !mcsema_real_eip !78
  %227 = xor i32 %226, %223, !mcsema_real_eip !78
  %228 = and i32 %227, 16, !mcsema_real_eip !78
  %229 = icmp ne i32 %228, 0, !mcsema_real_eip !78
  %230 = icmp slt i32 %225, 0
  %231 = icmp eq i32 %225, 0, !mcsema_real_eip !78
  %232 = xor i32 %211, -2147483648, !mcsema_real_eip !78
  %233 = xor i32 %232, %223, !mcsema_real_eip !78
  %234 = and i32 %226, %233, !mcsema_real_eip !78
  %235 = icmp slt i32 %234, 0
  %236 = trunc i32 %225 to i8, !mcsema_real_eip !78
  %237 = tail call i8 @llvm.ctpop.i8(i8 %236) #0, !mcsema_real_eip !78
  %238 = and i8 %237, 1
  %239 = icmp eq i8 %238, 0
  %240 = extractvalue { i32, i1 } %uadd83.i.i, 1
  %241 = add i64 %3, -264, !mcsema_real_eip !79
  %242 = inttoptr i64 %241 to i32*
  store i32 %225, i32* %242, align 4, !mcsema_real_eip !79
  %243 = add i64 %3, -168, !mcsema_real_eip !80
  %244 = inttoptr i64 %243 to i32*
  store i32 %225, i32* %244, align 4, !mcsema_real_eip !80
  %245 = load i64* %170, align 8, !mcsema_real_eip !81
  %246 = add i64 %3, -176, !mcsema_real_eip !82
  %247 = inttoptr i64 %246 to i64*, !mcsema_real_eip !82
  store i64 %245, i64* %247, align 8, !mcsema_real_eip !82
  %248 = load i32* %244, align 4, !mcsema_real_eip !83
  %249 = zext i32 %248 to i64, !mcsema_real_eip !83
  %250 = add i64 %3, -280, !mcsema_real_eip !84
  %251 = inttoptr i64 %250 to i32*
  store i32 %248, i32* %251, align 4, !mcsema_real_eip !84
  %252 = load i64* %247, align 8, !mcsema_real_eip !85
  %253 = add i64 %3, -288, !mcsema_real_eip !86
  %254 = inttoptr i64 %253 to i64*, !mcsema_real_eip !86
  store i64 %252, i64* %254, align 8, !mcsema_real_eip !86
  %255 = load i32* %251, align 4, !mcsema_real_eip !87
  %256 = zext i32 %255 to i64, !mcsema_real_eip !87
  %257 = load i64* %122, align 8, !mcsema_real_eip !88
  %258 = load i64* %120, align 8, !mcsema_real_eip !89
  store i64 %252, i64* %RAX.i, align 8, !mcsema_real_eip !90
  store i64 %257, i64* %RBX.i, align 8, !mcsema_real_eip !90
  store i64 %161, i64* %RCX.i, align 8, !mcsema_real_eip !90
  store i64 %256, i64* %RDX.i, align 8, !mcsema_real_eip !90
  store i64 %249, i64* %RSI.i, align 8, !mcsema_real_eip !90
  store i64 %132, i64* %RDI.i, align 8, !mcsema_real_eip !90
  store i64 %65, i64* %RSP.i, align 8, !mcsema_real_eip !90
  store i64 %258, i64* %RBP.i, align 8, !mcsema_real_eip !90
  store i64 %224, i64* %R8.i, align 8, !mcsema_real_eip !90
  store i64 %222, i64* %R9.i, align 8, !mcsema_real_eip !90
  store i64 %124, i64* %R10.i, align 8, !mcsema_real_eip !90
  store i64 %107, i64* %R11.i, align 8, !mcsema_real_eip !90
  store <2 x i64> %8, <2 x i64>* %7, align 8
  store <2 x i64> %10, <2 x i64>* %9, align 8
  store i64 %11, i64* %RIP.i, align 8, !mcsema_real_eip !90
  store i1 %240, i1* %CF.i, align 1, !mcsema_real_eip !90
  store i1 %239, i1* %PF.i, align 1, !mcsema_real_eip !90
  store i1 %229, i1* %AF.i, align 1, !mcsema_real_eip !90
  store i1 %231, i1* %ZF.i, align 1, !mcsema_real_eip !90
  store i1 %230, i1* %SF.i, align 1, !mcsema_real_eip !90
  store i1 %235, i1* %OF.i, align 1, !mcsema_real_eip !90
  store i1 %12, i1* %DF.i, align 1, !mcsema_real_eip !90
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %118, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !90
  store i1 %15, i1* %FPU_B.i, align 1, !mcsema_real_eip !90
  store i1 %16, i1* %FPU_C3.i, align 1, !mcsema_real_eip !90
  store i3 %17, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !90
  store i1 %18, i1* %FPU_C2.i, align 1, !mcsema_real_eip !90
  store i1 %19, i1* %FPU_C1.i, align 1, !mcsema_real_eip !90
  store i1 %20, i1* %FPU_C0.i, align 1, !mcsema_real_eip !90
  store i1 %21, i1* %FPU_ES.i, align 1, !mcsema_real_eip !90
  store i1 %22, i1* %FPU_SF.i, align 1, !mcsema_real_eip !90
  store i1 %23, i1* %FPU_PE.i, align 1, !mcsema_real_eip !90
  store i1 %24, i1* %FPU_UE.i, align 1, !mcsema_real_eip !90
  store i1 %25, i1* %FPU_OE.i, align 1, !mcsema_real_eip !90
  store i1 %26, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !90
  store i1 %27, i1* %FPU_DE.i, align 1, !mcsema_real_eip !90
  store i1 %28, i1* %FPU_IE.i, align 1, !mcsema_real_eip !90
  store i1 %29, i1* %FPU_X.i, align 1, !mcsema_real_eip !90
  store i2 %30, i2* %FPU_RC.i, align 1, !mcsema_real_eip !90
  store i2 %31, i2* %FPU_PC.i, align 1, !mcsema_real_eip !90
  store i1 %32, i1* %FPU_PM.i, align 1, !mcsema_real_eip !90
  store i1 %33, i1* %FPU_UM.i, align 1, !mcsema_real_eip !90
  store i1 %34, i1* %FPU_OM.i, align 1, !mcsema_real_eip !90
  store i1 %35, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !90
  store i1 %36, i1* %FPU_DM.i, align 1, !mcsema_real_eip !90
  store i1 %37, i1* %FPU_IM.i, align 1, !mcsema_real_eip !90
  store i64 %40, i64* %39, align 4
  store i16 %41, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !90
  store i64 %42, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !90
  store i16 %43, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !90
  store i64 %44, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !90
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !90
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !90
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !90
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !90
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !90
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !90
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !90
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !90
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !90
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !90
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !90
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !90
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !90
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !90
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !90
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !90
  store <2 x i64> %62, <2 x i64>* %61, align 1
  call void @llvm.lifetime.end(i64 128, i8* %118)
  %259 = bitcast <2 x i64> %8 to i128
  %trunc.i = trunc i128 %259 to i64
  %260 = lshr i128 %259, 64
  %261 = trunc i128 %260 to i64
  %262 = bitcast <2 x i64> %10 to i128
  %trunc1.i = trunc i128 %262 to i64
  %263 = lshr i128 %262, 64
  %264 = trunc i128 %263 to i64
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %14, i32 128, i32 4, i1 false), !mcsema_real_eip !29
  %265 = bitcast <2 x i64> %62 to i128
  %trunc2.i = trunc i128 %265 to i64
  %266 = lshr i128 %265, 64
  %267 = trunc i128 %266 to i64
  %268 = add i64 %258, -64, !mcsema_real_eip !91
  %269 = inttoptr i64 %268 to i32*
  store i32 %255, i32* %269, align 4, !mcsema_real_eip !91
  %270 = add i64 %258, -72, !mcsema_real_eip !92
  %271 = inttoptr i64 %270 to i64*, !mcsema_real_eip !92
  store i64 %252, i64* %271, align 8, !mcsema_real_eip !92
  %272 = add i64 %258, -40, !mcsema_real_eip !93
  %273 = inttoptr i64 %272 to i64*, !mcsema_real_eip !93
  store i64 %252, i64* %273, align 8, !mcsema_real_eip !93
  %274 = load i32* %269, align 4, !mcsema_real_eip !94
  %275 = add i64 %258, -32, !mcsema_real_eip !95
  %276 = inttoptr i64 %275 to i32*
  store i32 %274, i32* %276, align 4, !mcsema_real_eip !95
  %277 = inttoptr i64 %272 to i32*
  %278 = load i32* %277, align 4, !mcsema_real_eip !96
  %279 = add i64 %258, -36, !mcsema_real_eip !97
  %280 = inttoptr i64 %279 to i32*
  %281 = load i32* %280, align 4, !mcsema_real_eip !97
  %282 = add i32 %278, %274
  %283 = add i32 %282, %281
  %284 = zext i32 %283 to i64, !mcsema_real_eip !98
  %uadd210.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %65, i64 128)
  %285 = extractvalue { i64, i1 } %uadd210.i, 0
  %286 = xor i64 %285, %65, !mcsema_real_eip !99
  %287 = and i64 %286, 16, !mcsema_real_eip !99
  %288 = icmp ne i64 %287, 0, !mcsema_real_eip !99
  %289 = icmp slt i64 %285, 0
  %290 = icmp eq i64 %285, 0, !mcsema_real_eip !99
  %291 = add i64 %3, 9223372036854775672
  %292 = and i64 %286, %291, !mcsema_real_eip !99
  %293 = icmp slt i64 %292, 0
  %294 = trunc i64 %285 to i8, !mcsema_real_eip !99
  %295 = tail call i8 @llvm.ctpop.i8(i8 %294), !mcsema_real_eip !99
  %296 = and i8 %295, 1
  %297 = icmp eq i8 %296, 0
  %298 = extractvalue { i64, i1 } %uadd210.i, 1
  %299 = inttoptr i64 %285 to i64*, !mcsema_real_eip !100
  %300 = load i64* %299, align 8, !mcsema_real_eip !100
  %301 = add i64 %285, 16, !mcsema_real_eip !101
  store i64 %284, i64* %RAX.i, align 8, !mcsema_real_eip !101
  store i64 %257, i64* %RBX.i, align 8, !mcsema_real_eip !101
  store i64 %161, i64* %RCX.i, align 8, !mcsema_real_eip !101
  store i64 %284, i64* %RDX.i, align 8, !mcsema_real_eip !101
  store i64 %249, i64* %RSI.i, align 8, !mcsema_real_eip !101
  store i64 %132, i64* %RDI.i, align 8, !mcsema_real_eip !101
  store i64 %301, i64* %RSP.i, align 8, !mcsema_real_eip !101
  store i64 %300, i64* %RBP.i, align 8, !mcsema_real_eip !101
  store i64 %224, i64* %R8.i, align 8, !mcsema_real_eip !101
  store i64 %222, i64* %R9.i, align 8, !mcsema_real_eip !101
  store i64 %124, i64* %R10.i, align 8, !mcsema_real_eip !101
  store i64 %107, i64* %R11.i, align 8, !mcsema_real_eip !101
  store i64 %trunc.i, i64* %R12.i, align 8, !mcsema_real_eip !101
  store i64 %261, i64* %R13.i, align 8, !mcsema_real_eip !101
  store i64 %trunc1.i, i64* %R14.i, align 8, !mcsema_real_eip !101
  store i64 %264, i64* %R15.i, align 8, !mcsema_real_eip !101
  store i64 %11, i64* %RIP.i, align 8, !mcsema_real_eip !101
  store i1 %298, i1* %CF.i, align 1, !mcsema_real_eip !101
  store i1 %297, i1* %PF.i, align 1, !mcsema_real_eip !101
  store i1 %288, i1* %AF.i, align 1, !mcsema_real_eip !101
  store i1 %290, i1* %ZF.i, align 1, !mcsema_real_eip !101
  store i1 %289, i1* %SF.i, align 1, !mcsema_real_eip !101
  store i1 %293, i1* %OF.i, align 1, !mcsema_real_eip !101
  store i1 %12, i1* %DF.i, align 1, !mcsema_real_eip !101
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !101
  store i1 %15, i1* %FPU_B.i, align 1, !mcsema_real_eip !101
  store i1 %16, i1* %FPU_C3.i, align 1, !mcsema_real_eip !101
  store i3 %17, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !101
  store i1 %18, i1* %FPU_C2.i, align 1, !mcsema_real_eip !101
  store i1 %19, i1* %FPU_C1.i, align 1, !mcsema_real_eip !101
  store i1 %20, i1* %FPU_C0.i, align 1, !mcsema_real_eip !101
  store i1 %21, i1* %FPU_ES.i, align 1, !mcsema_real_eip !101
  store i1 %22, i1* %FPU_SF.i, align 1, !mcsema_real_eip !101
  store i1 %23, i1* %FPU_PE.i, align 1, !mcsema_real_eip !101
  store i1 %24, i1* %FPU_UE.i, align 1, !mcsema_real_eip !101
  store i1 %25, i1* %FPU_OE.i, align 1, !mcsema_real_eip !101
  store i1 %26, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !101
  store i1 %27, i1* %FPU_DE.i, align 1, !mcsema_real_eip !101
  store i1 %28, i1* %FPU_IE.i, align 1, !mcsema_real_eip !101
  store i1 %29, i1* %FPU_X.i, align 1, !mcsema_real_eip !101
  store i2 %30, i2* %FPU_RC.i, align 1, !mcsema_real_eip !101
  store i2 %31, i2* %FPU_PC.i, align 1, !mcsema_real_eip !101
  store i1 %32, i1* %FPU_PM.i, align 1, !mcsema_real_eip !101
  store i1 %33, i1* %FPU_UM.i, align 1, !mcsema_real_eip !101
  store i1 %34, i1* %FPU_OM.i, align 1, !mcsema_real_eip !101
  store i1 %35, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !101
  store i1 %36, i1* %FPU_DM.i, align 1, !mcsema_real_eip !101
  store i1 %37, i1* %FPU_IM.i, align 1, !mcsema_real_eip !101
  store i64 %40, i64* %39, align 4
  store i16 %41, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !101
  store i64 %42, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !101
  store i16 %43, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !101
  store i64 %44, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !101
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !101
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !101
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !101
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !101
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !101
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !101
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !101
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !101
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !101
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !101
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !101
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !101
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !101
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !101
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !101
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !101
  store i64 %trunc2.i, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !101
  store i64 %267, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !101
  call void @llvm.lifetime.end(i64 128, i8* %1)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

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
!3 = metadata !{i64 272, [12 x i8] c"\09pushq\09%rbp\00"}
!4 = metadata !{i64 276, [17 x i8] c"\09subq\09$128, %rsp\00"}
!5 = metadata !{i64 283, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!6 = metadata !{i64 300, [22 x i8] c"\09movq\09%rax, -16(%rbp)\00"}
!7 = metadata !{i64 304, [20 x i8] c"\09movl\09$10, -8(%rbp)\00"}
!8 = metadata !{i64 318, [9 x i8] c"\09callq\090\00"}
!9 = metadata !{i64 323, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!10 = metadata !{i64 327, [17 x i8] c"\09movl\09$5, (%rax)\00"}
!11 = metadata !{i64 333, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!12 = metadata !{i64 337, [18 x i8] c"\09movl\09$5, 4(%rax)\00"}
!13 = metadata !{i64 344, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!14 = metadata !{i64 348, [18 x i8] c"\09movl\09$5, 8(%rax)\00"}
!15 = metadata !{i64 355, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!16 = metadata !{i64 359, [21 x i8] c"\09movl\09-8(%rbp), %ecx\00"}
!17 = metadata !{i64 362, [22 x i8] c"\09movl\09%ecx, -48(%rbp)\00"}
!18 = metadata !{i64 365, [22 x i8] c"\09movq\09-16(%rbp), %rdi\00"}
!19 = metadata !{i64 369, [22 x i8] c"\09movq\09%rdi, -56(%rbp)\00"}
!20 = metadata !{i64 377, [22 x i8] c"\09movl\09-48(%rbp), %esi\00"}
!21 = metadata !{i64 380, [21 x i8] c"\09movl\09-8(%rbp), %ecx\00"}
!22 = metadata !{i64 386, [21 x i8] c"\09movl\09%ecx, 16(%rdx)\00"}
!23 = metadata !{i64 389, [21 x i8] c"\09movq\09-16(%rbp), %r8\00"}
!24 = metadata !{i64 393, [19 x i8] c"\09movq\09%r8, 8(%rdx)\00"}
!25 = metadata !{i64 397, [21 x i8] c"\09movq\09%rax, 32(%rdx)\00"}
!26 = metadata !{i64 405, [20 x i8] c"\09movq\09%r8, 24(%rdx)\00"}
!27 = metadata !{i64 409, [17 x i8] c"\09movl\09$3, (%rdx)\00"}
!28 = metadata !{i64 429, [22 x i8] c"\09movl\09%ecx, -76(%rbp)\00"}
!29 = metadata !{i64 439, [12 x i8] c"\09callq\09-444\00"}
!30 = metadata !{i64 4, [12 x i8] c"\09pushq\09%rbx\00"}
!31 = metadata !{i64 5, [21 x i8] c"\09movq\0948(%rbp), %rax\00"}
!32 = metadata !{i64 9, [21 x i8] c"\09movq\0940(%rbp), %r10\00"}
!33 = metadata !{i64 17, [21 x i8] c"\09movl\0916(%rbp), %ebx\00"}
!34 = metadata !{i64 20, [22 x i8] c"\09movq\09%rdi, -56(%rbp)\00"}
!35 = metadata !{i64 24, [22 x i8] c"\09movl\09%esi, -48(%rbp)\00"}
!36 = metadata !{i64 27, [22 x i8] c"\09movl\09%esi, -32(%rbp)\00"}
!37 = metadata !{i64 30, [22 x i8] c"\09movq\09-56(%rbp), %rdi\00"}
!38 = metadata !{i64 34, [22 x i8] c"\09movq\09%rdi, -40(%rbp)\00"}
!39 = metadata !{i64 38, [22 x i8] c"\09movq\09%rdx, -64(%rbp)\00"}
!40 = metadata !{i64 42, [22 x i8] c"\09movq\09%rcx, -72(%rbp)\00"}
!41 = metadata !{i64 46, [22 x i8] c"\09movl\09%r8d, -76(%rbp)\00"}
!42 = metadata !{i64 50, [22 x i8] c"\09movl\09%r9d, -80(%rbp)\00"}
!43 = metadata !{i64 54, [22 x i8] c"\09movl\09%ebx, -84(%rbp)\00"}
!44 = metadata !{i64 57, [22 x i8] c"\09movq\09%r10, -96(%rbp)\00"}
!45 = metadata !{i64 61, [23 x i8] c"\09movq\09%rax, -104(%rbp)\00"}
!46 = metadata !{i64 65, [22 x i8] c"\09movl\09-40(%rbp), %esi\00"}
!47 = metadata !{i64 68, [22 x i8] c"\09movq\09-64(%rbp), %rcx\00"}
!48 = metadata !{i64 72, [19 x i8] c"\09movl\09(%rcx), %r8d\00"}
!49 = metadata !{i64 78, [22 x i8] c"\09movq\09-72(%rbp), %rcx\00"}
!50 = metadata !{i64 82, [19 x i8] c"\09movl\09(%rcx), %r8d\00"}
!51 = metadata !{i64 88, [19 x i8] c"\09movl\09(%r11), %r8d\00"}
!52 = metadata !{i64 91, [22 x i8] c"\09movq\09-96(%rbp), %rcx\00"}
!53 = metadata !{i64 95, [19 x i8] c"\09movl\09(%rcx), %r9d\00"}
!54 = metadata !{i64 101, [19 x i8] c"\09movl\09(%rax), %r9d\00"}
!55 = metadata !{i64 110, [23 x i8] c"\09movl\09%esi, -120(%rbp)\00"}
!56 = metadata !{i64 113, [22 x i8] c"\09movl\09-36(%rbp), %esi\00"}
!57 = metadata !{i64 116, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!58 = metadata !{i64 120, [20 x i8] c"\09movl\094(%rax), %r8d\00"}
!59 = metadata !{i64 127, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!60 = metadata !{i64 131, [20 x i8] c"\09movl\094(%rax), %r8d\00"}
!61 = metadata !{i64 138, [20 x i8] c"\09movl\094(%r11), %r8d\00"}
!62 = metadata !{i64 142, [22 x i8] c"\09movq\09-96(%rbp), %rax\00"}
!63 = metadata !{i64 146, [20 x i8] c"\09movl\094(%rax), %r9d\00"}
!64 = metadata !{i64 153, [23 x i8] c"\09movq\09-104(%rbp), %rax\00"}
!65 = metadata !{i64 157, [20 x i8] c"\09movl\094(%rax), %r9d\00"}
!66 = metadata !{i64 167, [23 x i8] c"\09movl\09%esi, -116(%rbp)\00"}
!67 = metadata !{i64 170, [22 x i8] c"\09movl\09-32(%rbp), %esi\00"}
!68 = metadata !{i64 173, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!69 = metadata !{i64 177, [20 x i8] c"\09movl\098(%rax), %r8d\00"}
!70 = metadata !{i64 184, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!71 = metadata !{i64 188, [20 x i8] c"\09movl\098(%rax), %r8d\00"}
!72 = metadata !{i64 195, [20 x i8] c"\09movl\098(%r11), %r8d\00"}
!73 = metadata !{i64 199, [22 x i8] c"\09movq\09-96(%rbp), %rax\00"}
!74 = metadata !{i64 203, [20 x i8] c"\09movl\098(%rax), %r9d\00"}
!75 = metadata !{i64 210, [23 x i8] c"\09movq\09-104(%rbp), %rax\00"}
!76 = metadata !{i64 214, [20 x i8] c"\09movl\098(%rax), %r9d\00"}
!77 = metadata !{i64 218, [17 x i8] c"\09addl\09%r9d, %r8d\00"}
!78 = metadata !{i64 221, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!79 = metadata !{i64 224, [23 x i8] c"\09movl\09%esi, -112(%rbp)\00"}
!80 = metadata !{i64 227, [22 x i8] c"\09movl\09%esi, -16(%rbp)\00"}
!81 = metadata !{i64 230, [23 x i8] c"\09movq\09-120(%rbp), %rax\00"}
!82 = metadata !{i64 234, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!83 = metadata !{i64 238, [22 x i8] c"\09movl\09-16(%rbp), %esi\00"}
!84 = metadata !{i64 241, [23 x i8] c"\09movl\09%esi, -128(%rbp)\00"}
!85 = metadata !{i64 244, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!86 = metadata !{i64 248, [23 x i8] c"\09movq\09%rax, -136(%rbp)\00"}
!87 = metadata !{i64 262, [23 x i8] c"\09movl\09-128(%rbp), %edx\00"}
!88 = metadata !{i64 265, [11 x i8] c"\09popq\09%rbx\00"}
!89 = metadata !{i64 266, [11 x i8] c"\09popq\09%rbp\00"}
!90 = metadata !{i64 267, [6 x i8] c"\09retq\00"}
!91 = metadata !{i64 444, [22 x i8] c"\09movl\09%edx, -64(%rbp)\00"}
!92 = metadata !{i64 447, [22 x i8] c"\09movq\09%rax, -72(%rbp)\00"}
!93 = metadata !{i64 455, [22 x i8] c"\09movq\09%rax, -40(%rbp)\00"}
!94 = metadata !{i64 459, [22 x i8] c"\09movl\09-64(%rbp), %edx\00"}
!95 = metadata !{i64 462, [22 x i8] c"\09movl\09%edx, -32(%rbp)\00"}
!96 = metadata !{i64 465, [22 x i8] c"\09movl\09-40(%rbp), %edx\00"}
!97 = metadata !{i64 468, [22 x i8] c"\09addl\09-36(%rbp), %edx\00"}
!98 = metadata !{i64 471, [22 x i8] c"\09addl\09-32(%rbp), %edx\00"}
!99 = metadata !{i64 476, [17 x i8] c"\09addq\09$128, %rsp\00"}
!100 = metadata !{i64 483, [11 x i8] c"\09popq\09%rbp\00"}
!101 = metadata !{i64 484, [6 x i8] c"\09retq\00"}
