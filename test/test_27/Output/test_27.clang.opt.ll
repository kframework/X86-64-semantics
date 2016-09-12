; ModuleID = 'Output/test_27.clang.opt.bc'
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
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %STi_val.i.0..sroa_cast)
  %RAX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !3
  %RBX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !3
  %1 = load i64* %RBX.i, align 8, !mcsema_real_eip !3
  %RCX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !3
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !3
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !3
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !3
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !3
  %2 = load i64* %RSP.i, align 8, !mcsema_real_eip !3
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !3
  %3 = load i64* %RBP.i, align 8, !mcsema_real_eip !3
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !3
  %R9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !3
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !3
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !3
  %4 = bitcast i64* %R12.i to <2 x i64>*
  %5 = load <2 x i64>* %4, align 8
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %6 = load i64* %R14.i, align 8, !mcsema_real_eip !3
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !3
  %7 = load i64* %R15.i, align 8, !mcsema_real_eip !3
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %8 = load i64* %RIP.i, align 8, !mcsema_real_eip !3
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !3
  %9 = load i1* %DF.i, align 1, !mcsema_real_eip !3
  %10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !3
  %11 = bitcast x86_fp80* %10 to i8*, !mcsema_real_eip !3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast, i8* %11, i32 128, i32 4, i1 false), !mcsema_real_eip !3
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !3
  %12 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !3
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !3
  %13 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !3
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !3
  %14 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !3
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !3
  %15 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !3
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !3
  %16 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !3
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !3
  %17 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !3
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !3
  %18 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !3
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !3
  %19 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !3
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !3
  %20 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !3
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !3
  %21 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !3
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !3
  %22 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !3
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !3
  %23 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !3
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !3
  %24 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !3
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !3
  %25 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !3
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !3
  %26 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !3
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !3
  %27 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !3
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !3
  %28 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !3
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !3
  %29 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !3
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !3
  %30 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !3
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !3
  %31 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !3
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !3
  %32 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !3
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !3
  %33 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !3
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !3
  %34 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !3
  %35 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !3
  %36 = bitcast i8* %35 to i64*
  %37 = load i64* %36, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !3
  %38 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !3
  %39 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !3
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !3
  %40 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !3
  %41 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !3
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %42 = load i128* %XMM0.i, align 1, !mcsema_real_eip !3
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %43 = load i128* %XMM1.i, align 1, !mcsema_real_eip !3
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %44 = load i128* %XMM2.i, align 1, !mcsema_real_eip !3
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %45 = load i128* %XMM3.i, align 1, !mcsema_real_eip !3
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %46 = load i128* %XMM4.i, align 1, !mcsema_real_eip !3
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %47 = load i128* %XMM5.i, align 1, !mcsema_real_eip !3
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %48 = load i128* %XMM6.i, align 1, !mcsema_real_eip !3
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %49 = load i128* %XMM7.i, align 1, !mcsema_real_eip !3
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %50 = load i128* %XMM8.i, align 1, !mcsema_real_eip !3
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %51 = load i128* %XMM9.i, align 1, !mcsema_real_eip !3
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %52 = load i128* %XMM10.i, align 1, !mcsema_real_eip !3
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %53 = load i128* %XMM11.i, align 1, !mcsema_real_eip !3
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %54 = load i128* %XMM12.i, align 1, !mcsema_real_eip !3
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %55 = load i128* %XMM13.i, align 1, !mcsema_real_eip !3
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %56 = load i128* %XMM14.i, align 1, !mcsema_real_eip !3
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %57 = load i128* %XMM15.i, align 1, !mcsema_real_eip !3
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %58 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %59 = load <2 x i64>* %58, align 8
  %60 = add i64 %2, -8
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !3
  store i64 %3, i64* %61, align 8, !mcsema_real_eip !3
  %62 = add i64 %2, -120
  %63 = xor i64 %62, %60, !mcsema_real_eip !4
  %64 = and i64 %63, 16
  %65 = icmp eq i64 %64, 0
  %66 = trunc i64 %62 to i8, !mcsema_real_eip !4
  %67 = tail call i8 @llvm.ctpop.i8(i8 %66), !mcsema_real_eip !4
  %68 = and i8 %67, 1
  %69 = icmp eq i8 %68, 0
  %70 = icmp eq i64 %62, 0, !mcsema_real_eip !4
  %71 = icmp slt i64 %62, 0
  %72 = icmp ult i64 %60, 112, !mcsema_real_eip !4
  %73 = and i64 %63, %60, !mcsema_real_eip !4
  %74 = icmp slt i64 %73, 0
  %75 = add i64 %2, -12, !mcsema_real_eip !5
  %76 = inttoptr i64 %75 to i32*
  store i32 0, i32* %76, align 4, !mcsema_real_eip !5
  %77 = add i64 %2, -24, !mcsema_real_eip !6
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !6
  %79 = inttoptr i64 %77 to i32*
  store i32 10, i32* %79, align 4, !mcsema_real_eip !6
  %80 = add i64 %2, -20, !mcsema_real_eip !7
  %81 = inttoptr i64 %80 to i32*
  store i32 10, i32* %81, align 4, !mcsema_real_eip !7
  %82 = add i64 %2, -16, !mcsema_real_eip !8
  %83 = inttoptr i64 %82 to i32*
  store i32 10, i32* %83, align 4, !mcsema_real_eip !8
  %84 = tail call x86_64_sysvcc i64 @malloc(i64 12), !mcsema_real_eip !9
  %85 = add i64 %2, -32, !mcsema_real_eip !10
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !10
  store i64 %84, i64* %86, align 8, !mcsema_real_eip !10
  %87 = inttoptr i64 %84 to i32*
  store i32 5, i32* %87, align 4, !mcsema_real_eip !11
  %88 = load i64* %86, align 8, !mcsema_real_eip !12
  %89 = add i64 %88, 4, !mcsema_real_eip !13
  %90 = inttoptr i64 %89 to i32*
  store i32 5, i32* %90, align 4, !mcsema_real_eip !13
  %91 = load i64* %86, align 8, !mcsema_real_eip !14
  %92 = add i64 %91, 8, !mcsema_real_eip !15
  %93 = inttoptr i64 %92 to i32*
  store i32 5, i32* %93, align 4, !mcsema_real_eip !15
  %94 = load i64* %86, align 8, !mcsema_real_eip !16
  %95 = load i64* %78, align 8, !mcsema_real_eip !17
  %96 = add i64 %2, -56, !mcsema_real_eip !18
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !18
  store i64 %95, i64* %97, align 8, !mcsema_real_eip !18
  %98 = load i32* %83, align 4, !mcsema_real_eip !19
  %99 = add i64 %2, -48, !mcsema_real_eip !20
  %100 = inttoptr i64 %99 to i32*
  store i32 %98, i32* %100, align 4, !mcsema_real_eip !20
  %101 = load i64* %97, align 8, !mcsema_real_eip !21
  %102 = zext i32 %98 to i64, !mcsema_real_eip !22
  %103 = add i64 %2, -64, !mcsema_real_eip !23
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !23
  store i64 %77, i64* %104, align 8, !mcsema_real_eip !23
  %105 = add i64 %2, -72, !mcsema_real_eip !24
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !24
  store i64 %94, i64* %106, align 8, !mcsema_real_eip !24
  %107 = add i64 %2, -76, !mcsema_real_eip !25
  %108 = inttoptr i64 %107 to i32*
  store i32 3, i32* %108, align 4, !mcsema_real_eip !25
  %109 = inttoptr i64 %62 to i32*
  store i32 3, i32* %109, align 4, !mcsema_real_eip !26
  %110 = load i64* %78, align 8, !mcsema_real_eip !27
  %111 = add i64 %2, -112, !mcsema_real_eip !28
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !28
  store i64 %110, i64* %112, align 8, !mcsema_real_eip !28
  %113 = load i32* %83, align 4, !mcsema_real_eip !29
  %114 = zext i32 %113 to i64, !mcsema_real_eip !29
  %115 = add i64 %2, -104, !mcsema_real_eip !30
  %116 = inttoptr i64 %115 to i32*
  store i32 %113, i32* %116, align 4, !mcsema_real_eip !30
  %117 = add i64 %2, -96, !mcsema_real_eip !31
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !31
  store i64 %77, i64* %118, align 8, !mcsema_real_eip !31
  %119 = load i64* %106, align 8, !mcsema_real_eip !32
  %120 = add i64 %2, -88, !mcsema_real_eip !33
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !33
  store i64 %119, i64* %121, align 8, !mcsema_real_eip !33
  %122 = add i64 %2, -128
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !34
  store i64 -4981261766360305936, i64* %123, align 8, !mcsema_real_eip !34
  store i64 %119, i64* %RAX.i, align 8, !mcsema_real_eip !34
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !34
  store i64 %94, i64* %RCX.i, align 8, !mcsema_real_eip !34
  store i64 %77, i64* %RDX.i, align 8, !mcsema_real_eip !34
  store i64 %102, i64* %RSI.i, align 8, !mcsema_real_eip !34
  store i64 %101, i64* %RDI.i, align 8, !mcsema_real_eip !34
  store i64 %122, i64* %RSP.i, align 8, !mcsema_real_eip !34
  store i64 %60, i64* %RBP.i, align 8, !mcsema_real_eip !34
  store i64 1, i64* %R8.i, align 8, !mcsema_real_eip !34
  store i64 2, i64* %R9.i, align 8, !mcsema_real_eip !34
  store i64 %114, i64* %R10.i, align 8, !mcsema_real_eip !34
  store i64 %77, i64* %R11.i, align 8, !mcsema_real_eip !34
  store <2 x i64> %5, <2 x i64>* %4, align 8
  store i64 %6, i64* %R14.i, align 8, !mcsema_real_eip !34
  store i64 %7, i64* %R15.i, align 8, !mcsema_real_eip !34
  store i64 %8, i64* %RIP.i, align 8, !mcsema_real_eip !34
  store i1 %72, i1* %CF.i, align 1, !mcsema_real_eip !34
  store i1 %69, i1* %PF.i, align 1, !mcsema_real_eip !34
  store i1 %65, i1* %AF.i, align 1, !mcsema_real_eip !34
  store i1 %70, i1* %ZF.i, align 1, !mcsema_real_eip !34
  store i1 %71, i1* %SF.i, align 1, !mcsema_real_eip !34
  store i1 %74, i1* %OF.i, align 1, !mcsema_real_eip !34
  store i1 %9, i1* %DF.i, align 1, !mcsema_real_eip !34
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !34
  store i1 %12, i1* %FPU_B.i, align 1, !mcsema_real_eip !34
  store i1 %13, i1* %FPU_C3.i, align 1, !mcsema_real_eip !34
  store i3 %14, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !34
  store i1 %15, i1* %FPU_C2.i, align 1, !mcsema_real_eip !34
  store i1 %16, i1* %FPU_C1.i, align 1, !mcsema_real_eip !34
  store i1 %17, i1* %FPU_C0.i, align 1, !mcsema_real_eip !34
  store i1 %18, i1* %FPU_ES.i, align 1, !mcsema_real_eip !34
  store i1 %19, i1* %FPU_SF.i, align 1, !mcsema_real_eip !34
  store i1 %20, i1* %FPU_PE.i, align 1, !mcsema_real_eip !34
  store i1 %21, i1* %FPU_UE.i, align 1, !mcsema_real_eip !34
  store i1 %22, i1* %FPU_OE.i, align 1, !mcsema_real_eip !34
  store i1 %23, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !34
  store i1 %24, i1* %FPU_DE.i, align 1, !mcsema_real_eip !34
  store i1 %25, i1* %FPU_IE.i, align 1, !mcsema_real_eip !34
  store i1 %26, i1* %FPU_X.i, align 1, !mcsema_real_eip !34
  store i2 %27, i2* %FPU_RC.i, align 1, !mcsema_real_eip !34
  store i2 %28, i2* %FPU_PC.i, align 1, !mcsema_real_eip !34
  store i1 %29, i1* %FPU_PM.i, align 1, !mcsema_real_eip !34
  store i1 %30, i1* %FPU_UM.i, align 1, !mcsema_real_eip !34
  store i1 %31, i1* %FPU_OM.i, align 1, !mcsema_real_eip !34
  store i1 %32, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !34
  store i1 %33, i1* %FPU_DM.i, align 1, !mcsema_real_eip !34
  store i1 %34, i1* %FPU_IM.i, align 1, !mcsema_real_eip !34
  store i64 %37, i64* %36, align 4
  store i16 %38, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !34
  store i64 %39, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !34
  store i16 %40, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !34
  store i64 %41, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !34
  store i128 %42, i128* %XMM0.i, align 1, !mcsema_real_eip !34
  store i128 %43, i128* %XMM1.i, align 1, !mcsema_real_eip !34
  store i128 %44, i128* %XMM2.i, align 1, !mcsema_real_eip !34
  store i128 %45, i128* %XMM3.i, align 1, !mcsema_real_eip !34
  store i128 %46, i128* %XMM4.i, align 1, !mcsema_real_eip !34
  store i128 %47, i128* %XMM5.i, align 1, !mcsema_real_eip !34
  store i128 %48, i128* %XMM6.i, align 1, !mcsema_real_eip !34
  store i128 %49, i128* %XMM7.i, align 1, !mcsema_real_eip !34
  store i128 %50, i128* %XMM8.i, align 1, !mcsema_real_eip !34
  store i128 %51, i128* %XMM9.i, align 1, !mcsema_real_eip !34
  store i128 %52, i128* %XMM10.i, align 1, !mcsema_real_eip !34
  store i128 %53, i128* %XMM11.i, align 1, !mcsema_real_eip !34
  store i128 %54, i128* %XMM12.i, align 1, !mcsema_real_eip !34
  store i128 %55, i128* %XMM13.i, align 1, !mcsema_real_eip !34
  store i128 %56, i128* %XMM14.i, align 1, !mcsema_real_eip !34
  store i128 %57, i128* %XMM15.i, align 1, !mcsema_real_eip !34
  store <2 x i64> %59, <2 x i64>* %58, align 1
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast.i, i8* %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false)
  %124 = add i64 %2, -136
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !2
  store i64 %60, i64* %125, align 8, !mcsema_real_eip !2
  %126 = add i64 %2, -144
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !35
  store i64 %6, i64* %127, align 8, !mcsema_real_eip !35
  %128 = add i64 %2, -152
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !36
  store i64 %1, i64* %129, align 8, !mcsema_real_eip !36
  %130 = add i64 %2, -248
  %131 = load i64* %121, align 8, !mcsema_real_eip !37
  %132 = load i64* %118, align 8, !mcsema_real_eip !38
  %133 = load i32* %109, align 4, !mcsema_real_eip !39
  %134 = add i64 %2, -184, !mcsema_real_eip !40
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !40
  store i64 %101, i64* %135, align 8, !mcsema_real_eip !40
  %136 = add i64 %2, -176, !mcsema_real_eip !41
  %137 = inttoptr i64 %136 to i32*
  store i32 %98, i32* %137, align 4, !mcsema_real_eip !41
  %138 = load i64* %135, align 8, !mcsema_real_eip !42
  %139 = add i64 %2, -168, !mcsema_real_eip !43
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !43
  store i64 %138, i64* %140, align 8, !mcsema_real_eip !43
  %141 = load i32* %137, align 4, !mcsema_real_eip !44
  %142 = add i64 %2, -160, !mcsema_real_eip !45
  %143 = inttoptr i64 %142 to i32*
  store i32 %141, i32* %143, align 4, !mcsema_real_eip !45
  %144 = add i64 %2, -192, !mcsema_real_eip !46
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !46
  store i64 %77, i64* %145, align 8, !mcsema_real_eip !46
  %146 = add i64 %2, -200, !mcsema_real_eip !47
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !47
  store i64 %94, i64* %147, align 8, !mcsema_real_eip !47
  %148 = add i64 %2, -204, !mcsema_real_eip !48
  %149 = inttoptr i64 %148 to i32*
  store i32 1, i32* %149, align 4, !mcsema_real_eip !48
  %150 = add i64 %2, -208, !mcsema_real_eip !49
  %151 = inttoptr i64 %150 to i32*
  store i32 2, i32* %151, align 4, !mcsema_real_eip !49
  %152 = add i64 %2, -212, !mcsema_real_eip !50
  %153 = inttoptr i64 %152 to i32*
  store i32 %133, i32* %153, align 4, !mcsema_real_eip !50
  %154 = add i64 %2, -224, !mcsema_real_eip !51
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !51
  store i64 %132, i64* %155, align 8, !mcsema_real_eip !51
  %156 = add i64 %2, -232, !mcsema_real_eip !52
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !52
  store i64 %131, i64* %157, align 8, !mcsema_real_eip !52
  %158 = inttoptr i64 %130 to i64*, !mcsema_real_eip !53
  store i64 %111, i64* %158, align 8, !mcsema_real_eip !53
  %159 = tail call x86_64_sysvcc i64 @malloc(i64 12), !mcsema_real_eip !54
  %160 = add i64 %2, -240, !mcsema_real_eip !55
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !55
  store i64 %159, i64* %161, align 8, !mcsema_real_eip !55
  %162 = inttoptr i64 %139 to i32*
  %163 = load i32* %162, align 4, !mcsema_real_eip !56
  %164 = load i64* %145, align 8, !mcsema_real_eip !57
  %165 = inttoptr i64 %164 to i32*
  %166 = load i32* %165, align 4, !mcsema_real_eip !58
  %167 = add i32 %166, %163
  %168 = load i64* %147, align 8, !mcsema_real_eip !59
  %169 = inttoptr i64 %168 to i32*
  %170 = load i32* %169, align 4, !mcsema_real_eip !60
  %171 = add i32 %167, %170
  %172 = load i64* %158, align 8, !mcsema_real_eip !61
  %173 = inttoptr i64 %172 to i32*
  %174 = load i32* %173, align 4, !mcsema_real_eip !62
  %175 = load i64* %155, align 8, !mcsema_real_eip !63
  %176 = inttoptr i64 %175 to i32*
  %177 = load i32* %176, align 4, !mcsema_real_eip !64
  %178 = load i64* %157, align 8, !mcsema_real_eip !65
  %179 = inttoptr i64 %178 to i32*
  %180 = load i32* %179, align 4, !mcsema_real_eip !66
  %181 = add i32 %171, %174
  %182 = add i32 %181, %177
  %183 = add i32 %182, %180
  %184 = inttoptr i64 %159 to i32*
  store i32 %183, i32* %184, align 4, !mcsema_real_eip !67
  %185 = add i64 %2, -164, !mcsema_real_eip !68
  %186 = inttoptr i64 %185 to i32*
  %187 = load i32* %186, align 4, !mcsema_real_eip !68
  %188 = load i64* %145, align 8, !mcsema_real_eip !69
  %189 = add i64 %188, 4, !mcsema_real_eip !70
  %190 = inttoptr i64 %189 to i32*
  %191 = load i32* %190, align 4, !mcsema_real_eip !70
  %192 = add i32 %191, %187
  %193 = load i64* %147, align 8, !mcsema_real_eip !71
  %194 = add i64 %193, 4, !mcsema_real_eip !72
  %195 = inttoptr i64 %194 to i32*
  %196 = load i32* %195, align 4, !mcsema_real_eip !72
  %197 = add i32 %192, %196
  %198 = add i64 %172, 4, !mcsema_real_eip !73
  %199 = inttoptr i64 %198 to i32*
  %200 = load i32* %199, align 4, !mcsema_real_eip !73
  %201 = load i64* %155, align 8, !mcsema_real_eip !74
  %202 = add i64 %201, 4, !mcsema_real_eip !75
  %203 = inttoptr i64 %202 to i32*
  %204 = load i32* %203, align 4, !mcsema_real_eip !75
  %205 = load i64* %157, align 8, !mcsema_real_eip !76
  %206 = add i64 %205, 4, !mcsema_real_eip !77
  %207 = inttoptr i64 %206 to i32*
  %208 = load i32* %207, align 4, !mcsema_real_eip !77
  %209 = add i32 %197, %200
  %210 = add i32 %209, %204
  %211 = add i32 %210, %208
  %212 = load i64* %161, align 8, !mcsema_real_eip !78
  %213 = add i64 %212, 4, !mcsema_real_eip !79
  %214 = inttoptr i64 %213 to i32*
  store i32 %211, i32* %214, align 4, !mcsema_real_eip !79
  %215 = load i32* %143, align 4, !mcsema_real_eip !80
  %216 = load i64* %145, align 8, !mcsema_real_eip !81
  %217 = add i64 %216, 8, !mcsema_real_eip !82
  %218 = inttoptr i64 %217 to i32*
  %219 = load i32* %218, align 4, !mcsema_real_eip !82
  %220 = add i32 %219, %215
  %221 = load i64* %147, align 8, !mcsema_real_eip !83
  %222 = add i64 %221, 8, !mcsema_real_eip !84
  %223 = inttoptr i64 %222 to i32*
  %224 = load i32* %223, align 4, !mcsema_real_eip !84
  %225 = add i32 %220, %224
  %226 = add i64 %172, 8, !mcsema_real_eip !85
  %227 = inttoptr i64 %226 to i32*
  %228 = load i32* %227, align 4, !mcsema_real_eip !85
  %229 = load i64* %155, align 8, !mcsema_real_eip !86
  %230 = add i64 %229, 8, !mcsema_real_eip !87
  %231 = inttoptr i64 %230 to i32*
  %232 = load i32* %231, align 4, !mcsema_real_eip !87
  %233 = add i32 %232, %228
  %234 = load i64* %157, align 8, !mcsema_real_eip !88
  %235 = add i64 %234, 8, !mcsema_real_eip !89
  %236 = inttoptr i64 %235 to i32*
  %237 = load i32* %236, align 4, !mcsema_real_eip !89
  %238 = add i32 %233, %237
  %239 = zext i32 %238 to i64, !mcsema_real_eip !89
  %240 = add i32 %225, %238
  %241 = zext i32 %240 to i64, !mcsema_real_eip !90
  %242 = load i64* %161, align 8, !mcsema_real_eip !91
  %243 = add i64 %242, 8, !mcsema_real_eip !92
  %244 = inttoptr i64 %243 to i32*
  store i32 %240, i32* %244, align 4, !mcsema_real_eip !92
  %245 = load i64* %161, align 8, !mcsema_real_eip !93
  %uadd84.i.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %130, i64 96)
  %246 = extractvalue { i64, i1 } %uadd84.i.i, 0
  %247 = xor i64 %246, %130, !mcsema_real_eip !94
  %248 = and i64 %247, 16, !mcsema_real_eip !94
  %249 = icmp ne i64 %248, 0, !mcsema_real_eip !94
  %250 = icmp slt i64 %246, 0
  %251 = icmp eq i64 %246, 0, !mcsema_real_eip !94
  %252 = add i64 %2, 9223372036854775560
  %253 = and i64 %247, %252, !mcsema_real_eip !94
  %254 = icmp slt i64 %253, 0
  %255 = trunc i64 %246 to i8, !mcsema_real_eip !94
  %256 = tail call i8 @llvm.ctpop.i8(i8 %255), !mcsema_real_eip !94
  %257 = and i8 %256, 1
  %258 = icmp eq i8 %257, 0
  %259 = extractvalue { i64, i1 } %uadd84.i.i, 1
  %260 = inttoptr i64 %246 to i64*, !mcsema_real_eip !95
  %261 = load i64* %260, align 8, !mcsema_real_eip !95
  %262 = add i64 %246, 8, !mcsema_real_eip !95
  %263 = inttoptr i64 %262 to i64*, !mcsema_real_eip !96
  %264 = load i64* %263, align 8, !mcsema_real_eip !96
  %265 = add i64 %246, 16, !mcsema_real_eip !96
  %266 = inttoptr i64 %265 to i64*, !mcsema_real_eip !97
  %267 = load i64* %266, align 8, !mcsema_real_eip !97
  %268 = add i64 %246, 32, !mcsema_real_eip !98
  store i64 %245, i64* %RAX.i, align 8, !mcsema_real_eip !98
  store i64 %261, i64* %RBX.i, align 8, !mcsema_real_eip !98
  store i64 %242, i64* %RCX.i, align 8, !mcsema_real_eip !98
  store i64 %77, i64* %RDX.i, align 8, !mcsema_real_eip !98
  store i64 %241, i64* %RSI.i, align 8, !mcsema_real_eip !98
  store i64 12, i64* %RDI.i, align 8, !mcsema_real_eip !98
  store i64 %268, i64* %RSP.i, align 8, !mcsema_real_eip !98
  store i64 %267, i64* %RBP.i, align 8, !mcsema_real_eip !98
  store i64 %239, i64* %R8.i, align 8, !mcsema_real_eip !98
  store i64 2, i64* %R9.i, align 8, !mcsema_real_eip !98
  store i64 %132, i64* %R10.i, align 8, !mcsema_real_eip !98
  store i64 %111, i64* %R11.i, align 8, !mcsema_real_eip !98
  store <2 x i64> %5, <2 x i64>* %4, align 8
  store i64 %264, i64* %R14.i, align 8, !mcsema_real_eip !98
  store i64 %7, i64* %R15.i, align 8, !mcsema_real_eip !98
  store i64 %8, i64* %RIP.i, align 8, !mcsema_real_eip !98
  store i1 %259, i1* %CF.i, align 1, !mcsema_real_eip !98
  store i1 %258, i1* %PF.i, align 1, !mcsema_real_eip !98
  store i1 %249, i1* %AF.i, align 1, !mcsema_real_eip !98
  store i1 %251, i1* %ZF.i, align 1, !mcsema_real_eip !98
  store i1 %250, i1* %SF.i, align 1, !mcsema_real_eip !98
  store i1 %254, i1* %OF.i, align 1, !mcsema_real_eip !98
  store i1 %9, i1* %DF.i, align 1, !mcsema_real_eip !98
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false), !mcsema_real_eip !98
  store i1 %12, i1* %FPU_B.i, align 1, !mcsema_real_eip !98
  store i1 %13, i1* %FPU_C3.i, align 1, !mcsema_real_eip !98
  store i3 %14, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !98
  store i1 %15, i1* %FPU_C2.i, align 1, !mcsema_real_eip !98
  store i1 %16, i1* %FPU_C1.i, align 1, !mcsema_real_eip !98
  store i1 %17, i1* %FPU_C0.i, align 1, !mcsema_real_eip !98
  store i1 %18, i1* %FPU_ES.i, align 1, !mcsema_real_eip !98
  store i1 %19, i1* %FPU_SF.i, align 1, !mcsema_real_eip !98
  store i1 %20, i1* %FPU_PE.i, align 1, !mcsema_real_eip !98
  store i1 %21, i1* %FPU_UE.i, align 1, !mcsema_real_eip !98
  store i1 %22, i1* %FPU_OE.i, align 1, !mcsema_real_eip !98
  store i1 %23, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !98
  store i1 %24, i1* %FPU_DE.i, align 1, !mcsema_real_eip !98
  store i1 %25, i1* %FPU_IE.i, align 1, !mcsema_real_eip !98
  store i1 %26, i1* %FPU_X.i, align 1, !mcsema_real_eip !98
  store i2 %27, i2* %FPU_RC.i, align 1, !mcsema_real_eip !98
  store i2 %28, i2* %FPU_PC.i, align 1, !mcsema_real_eip !98
  store i1 %29, i1* %FPU_PM.i, align 1, !mcsema_real_eip !98
  store i1 %30, i1* %FPU_UM.i, align 1, !mcsema_real_eip !98
  store i1 %31, i1* %FPU_OM.i, align 1, !mcsema_real_eip !98
  store i1 %32, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !98
  store i1 %33, i1* %FPU_DM.i, align 1, !mcsema_real_eip !98
  store i1 %34, i1* %FPU_IM.i, align 1, !mcsema_real_eip !98
  store i64 %37, i64* %36, align 4
  store i16 %38, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !98
  store i64 %39, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !98
  store i16 %40, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !98
  store i64 %41, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !98
  store i128 %42, i128* %XMM0.i, align 1, !mcsema_real_eip !98
  store i128 %43, i128* %XMM1.i, align 1, !mcsema_real_eip !98
  store i128 %44, i128* %XMM2.i, align 1, !mcsema_real_eip !98
  store i128 %45, i128* %XMM3.i, align 1, !mcsema_real_eip !98
  store i128 %46, i128* %XMM4.i, align 1, !mcsema_real_eip !98
  store i128 %47, i128* %XMM5.i, align 1, !mcsema_real_eip !98
  store i128 %48, i128* %XMM6.i, align 1, !mcsema_real_eip !98
  store i128 %49, i128* %XMM7.i, align 1, !mcsema_real_eip !98
  store i128 %50, i128* %XMM8.i, align 1, !mcsema_real_eip !98
  store i128 %51, i128* %XMM9.i, align 1, !mcsema_real_eip !98
  store i128 %52, i128* %XMM10.i, align 1, !mcsema_real_eip !98
  store i128 %53, i128* %XMM11.i, align 1, !mcsema_real_eip !98
  store i128 %54, i128* %XMM12.i, align 1, !mcsema_real_eip !98
  store i128 %55, i128* %XMM13.i, align 1, !mcsema_real_eip !98
  store i128 %56, i128* %XMM14.i, align 1, !mcsema_real_eip !98
  store i128 %57, i128* %XMM15.i, align 1, !mcsema_real_eip !98
  store <2 x i64> %59, <2 x i64>* %58, align 1
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast.i)
  %269 = bitcast <2 x i64> %5 to i128
  %trunc.i = trunc i128 %269 to i64
  %270 = lshr i128 %269, 64
  %271 = trunc i128 %270 to i64
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast, i8* %11, i32 128, i32 4, i1 false), !mcsema_real_eip !34
  %272 = bitcast <2 x i64> %59 to i128
  %trunc118.i = trunc i128 %272 to i64
  %273 = lshr i128 %272, 64
  %274 = trunc i128 %273 to i64
  %275 = add i64 %267, -32, !mcsema_real_eip !99
  %276 = inttoptr i64 %275 to i64*, !mcsema_real_eip !99
  store i64 %245, i64* %276, align 8, !mcsema_real_eip !99
  %277 = inttoptr i64 %245 to i32*
  %278 = load i32* %277, align 4, !mcsema_real_eip !100
  %279 = add i64 %245, 4, !mcsema_real_eip !101
  %280 = inttoptr i64 %279 to i32*
  %281 = load i32* %280, align 4, !mcsema_real_eip !101
  %282 = add i32 %281, %278
  %283 = add i64 %245, 8, !mcsema_real_eip !102
  %284 = inttoptr i64 %283 to i32*
  %285 = load i32* %284, align 4, !mcsema_real_eip !102
  %286 = add i32 %282, %285
  %287 = zext i32 %286 to i64, !mcsema_real_eip !102
  %uadd210.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %268, i64 112)
  %288 = extractvalue { i64, i1 } %uadd210.i, 0
  %289 = xor i64 %288, %268, !mcsema_real_eip !103
  %290 = and i64 %289, 16
  %291 = icmp eq i64 %290, 0
  %292 = icmp slt i64 %288, 0
  %293 = icmp eq i64 %288, 0, !mcsema_real_eip !103
  %294 = add i64 %246, -9223372036854775776
  %295 = and i64 %289, %294, !mcsema_real_eip !103
  %296 = icmp slt i64 %295, 0
  %297 = trunc i64 %288 to i8, !mcsema_real_eip !103
  %298 = tail call i8 @llvm.ctpop.i8(i8 %297), !mcsema_real_eip !103
  %299 = and i8 %298, 1
  %300 = icmp eq i8 %299, 0
  %301 = extractvalue { i64, i1 } %uadd210.i, 1
  %302 = inttoptr i64 %288 to i64*, !mcsema_real_eip !104
  %303 = load i64* %302, align 8, !mcsema_real_eip !104
  %304 = add i64 %288, 16, !mcsema_real_eip !105
  store i64 %287, i64* %RAX.i, align 8, !mcsema_real_eip !105
  store i64 %261, i64* %RBX.i, align 8, !mcsema_real_eip !105
  store i64 %242, i64* %RCX.i, align 8, !mcsema_real_eip !105
  store i64 %77, i64* %RDX.i, align 8, !mcsema_real_eip !105
  store i64 %287, i64* %RSI.i, align 8, !mcsema_real_eip !105
  store i64 12, i64* %RDI.i, align 8, !mcsema_real_eip !105
  store i64 %304, i64* %RSP.i, align 8, !mcsema_real_eip !105
  store i64 %303, i64* %RBP.i, align 8, !mcsema_real_eip !105
  store i64 %239, i64* %R8.i, align 8, !mcsema_real_eip !105
  store i64 2, i64* %R9.i, align 8, !mcsema_real_eip !105
  store i64 %132, i64* %R10.i, align 8, !mcsema_real_eip !105
  store i64 %111, i64* %R11.i, align 8, !mcsema_real_eip !105
  store i64 %trunc.i, i64* %R12.i, align 8, !mcsema_real_eip !105
  store i64 %271, i64* %R13.i, align 8, !mcsema_real_eip !105
  store i64 %264, i64* %R14.i, align 8, !mcsema_real_eip !105
  store i64 %7, i64* %R15.i, align 8, !mcsema_real_eip !105
  store i64 %8, i64* %RIP.i, align 8, !mcsema_real_eip !105
  store i1 %301, i1* %CF.i, align 1, !mcsema_real_eip !105
  store i1 %300, i1* %PF.i, align 1, !mcsema_real_eip !105
  store i1 %291, i1* %AF.i, align 1, !mcsema_real_eip !105
  store i1 %293, i1* %ZF.i, align 1, !mcsema_real_eip !105
  store i1 %292, i1* %SF.i, align 1, !mcsema_real_eip !105
  store i1 %296, i1* %OF.i, align 1, !mcsema_real_eip !105
  store i1 %9, i1* %DF.i, align 1, !mcsema_real_eip !105
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !105
  store i1 %12, i1* %FPU_B.i, align 1, !mcsema_real_eip !105
  store i1 %13, i1* %FPU_C3.i, align 1, !mcsema_real_eip !105
  store i3 %14, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !105
  store i1 %15, i1* %FPU_C2.i, align 1, !mcsema_real_eip !105
  store i1 %16, i1* %FPU_C1.i, align 1, !mcsema_real_eip !105
  store i1 %17, i1* %FPU_C0.i, align 1, !mcsema_real_eip !105
  store i1 %18, i1* %FPU_ES.i, align 1, !mcsema_real_eip !105
  store i1 %19, i1* %FPU_SF.i, align 1, !mcsema_real_eip !105
  store i1 %20, i1* %FPU_PE.i, align 1, !mcsema_real_eip !105
  store i1 %21, i1* %FPU_UE.i, align 1, !mcsema_real_eip !105
  store i1 %22, i1* %FPU_OE.i, align 1, !mcsema_real_eip !105
  store i1 %23, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !105
  store i1 %24, i1* %FPU_DE.i, align 1, !mcsema_real_eip !105
  store i1 %25, i1* %FPU_IE.i, align 1, !mcsema_real_eip !105
  store i1 %26, i1* %FPU_X.i, align 1, !mcsema_real_eip !105
  store i2 %27, i2* %FPU_RC.i, align 1, !mcsema_real_eip !105
  store i2 %28, i2* %FPU_PC.i, align 1, !mcsema_real_eip !105
  store i1 %29, i1* %FPU_PM.i, align 1, !mcsema_real_eip !105
  store i1 %30, i1* %FPU_UM.i, align 1, !mcsema_real_eip !105
  store i1 %31, i1* %FPU_OM.i, align 1, !mcsema_real_eip !105
  store i1 %32, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !105
  store i1 %33, i1* %FPU_DM.i, align 1, !mcsema_real_eip !105
  store i1 %34, i1* %FPU_IM.i, align 1, !mcsema_real_eip !105
  store i64 %37, i64* %36, align 4
  store i16 %38, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !105
  store i64 %39, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !105
  store i16 %40, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !105
  store i64 %41, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !105
  store i128 %42, i128* %XMM0.i, align 1, !mcsema_real_eip !105
  store i128 %43, i128* %XMM1.i, align 1, !mcsema_real_eip !105
  store i128 %44, i128* %XMM2.i, align 1, !mcsema_real_eip !105
  store i128 %45, i128* %XMM3.i, align 1, !mcsema_real_eip !105
  store i128 %46, i128* %XMM4.i, align 1, !mcsema_real_eip !105
  store i128 %47, i128* %XMM5.i, align 1, !mcsema_real_eip !105
  store i128 %48, i128* %XMM6.i, align 1, !mcsema_real_eip !105
  store i128 %49, i128* %XMM7.i, align 1, !mcsema_real_eip !105
  store i128 %50, i128* %XMM8.i, align 1, !mcsema_real_eip !105
  store i128 %51, i128* %XMM9.i, align 1, !mcsema_real_eip !105
  store i128 %52, i128* %XMM10.i, align 1, !mcsema_real_eip !105
  store i128 %53, i128* %XMM11.i, align 1, !mcsema_real_eip !105
  store i128 %54, i128* %XMM12.i, align 1, !mcsema_real_eip !105
  store i128 %55, i128* %XMM13.i, align 1, !mcsema_real_eip !105
  store i128 %56, i128* %XMM14.i, align 1, !mcsema_real_eip !105
  store i128 %57, i128* %XMM15.i, align 1, !mcsema_real_eip !105
  store i64 %trunc118.i, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !105
  store i64 %274, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !105
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
!3 = metadata !{i64 256, [12 x i8] c"\09pushq\09%rbp\00"}
!4 = metadata !{i64 260, [17 x i8] c"\09subq\09$112, %rsp\00"}
!5 = metadata !{i64 274, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!6 = metadata !{i64 281, [21 x i8] c"\09movl\09$10, -16(%rbp)\00"}
!7 = metadata !{i64 288, [21 x i8] c"\09movl\09$10, -12(%rbp)\00"}
!8 = metadata !{i64 295, [20 x i8] c"\09movl\09$10, -8(%rbp)\00"}
!9 = metadata !{i64 302, [9 x i8] c"\09callq\090\00"}
!10 = metadata !{i64 328, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!11 = metadata !{i64 336, [17 x i8] c"\09movl\09$5, (%rax)\00"}
!12 = metadata !{i64 342, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!13 = metadata !{i64 346, [18 x i8] c"\09movl\09$5, 4(%rax)\00"}
!14 = metadata !{i64 353, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!15 = metadata !{i64 357, [18 x i8] c"\09movl\09$5, 8(%rax)\00"}
!16 = metadata !{i64 364, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!17 = metadata !{i64 372, [22 x i8] c"\09movq\09-16(%rbp), %rsi\00"}
!18 = metadata !{i64 376, [22 x i8] c"\09movq\09%rsi, -48(%rbp)\00"}
!19 = metadata !{i64 380, [22 x i8] c"\09movl\09-8(%rbp), %r10d\00"}
!20 = metadata !{i64 384, [23 x i8] c"\09movl\09%r10d, -40(%rbp)\00"}
!21 = metadata !{i64 388, [22 x i8] c"\09movq\09-48(%rbp), %rsi\00"}
!22 = metadata !{i64 392, [23 x i8] c"\09movl\09-40(%rbp), %r10d\00"}
!23 = metadata !{i64 396, [22 x i8] c"\09movq\09%rdi, -56(%rbp)\00"}
!24 = metadata !{i64 410, [22 x i8] c"\09movq\09%rdx, -64(%rbp)\00"}
!25 = metadata !{i64 417, [22 x i8] c"\09movl\09%ecx, -68(%rbp)\00"}
!26 = metadata !{i64 423, [17 x i8] c"\09movl\09$3, (%rsp)\00"}
!27 = metadata !{i64 430, [19 x i8] c"\09movq\09(%r11), %rax\00"}
!28 = metadata !{i64 433, [20 x i8] c"\09movq\09%rax, 8(%rsp)\00"}
!29 = metadata !{i64 438, [21 x i8] c"\09movl\098(%r11), %r10d\00"}
!30 = metadata !{i64 442, [22 x i8] c"\09movl\09%r10d, 16(%rsp)\00"}
!31 = metadata !{i64 447, [21 x i8] c"\09movq\09%r11, 24(%rsp)\00"}
!32 = metadata !{i64 452, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!33 = metadata !{i64 456, [21 x i8] c"\09movq\09%rax, 32(%rsp)\00"}
!34 = metadata !{i64 461, [12 x i8] c"\09callq\09-466\00"}
!35 = metadata !{i64 4, [12 x i8] c"\09pushq\09%r14\00"}
!36 = metadata !{i64 6, [12 x i8] c"\09pushq\09%rbx\00"}
!37 = metadata !{i64 11, [21 x i8] c"\09movq\0948(%rbp), %rax\00"}
!38 = metadata !{i64 15, [21 x i8] c"\09movq\0940(%rbp), %r10\00"}
!39 = metadata !{i64 23, [21 x i8] c"\09movl\0916(%rbp), %ebx\00"}
!40 = metadata !{i64 36, [22 x i8] c"\09movq\09%rdi, -48(%rbp)\00"}
!41 = metadata !{i64 40, [22 x i8] c"\09movl\09%esi, -40(%rbp)\00"}
!42 = metadata !{i64 43, [22 x i8] c"\09movq\09-48(%rbp), %rdi\00"}
!43 = metadata !{i64 47, [22 x i8] c"\09movq\09%rdi, -32(%rbp)\00"}
!44 = metadata !{i64 51, [22 x i8] c"\09movl\09-40(%rbp), %esi\00"}
!45 = metadata !{i64 54, [22 x i8] c"\09movl\09%esi, -24(%rbp)\00"}
!46 = metadata !{i64 57, [22 x i8] c"\09movq\09%rdx, -56(%rbp)\00"}
!47 = metadata !{i64 61, [22 x i8] c"\09movq\09%rcx, -64(%rbp)\00"}
!48 = metadata !{i64 65, [22 x i8] c"\09movl\09%r8d, -68(%rbp)\00"}
!49 = metadata !{i64 69, [22 x i8] c"\09movl\09%r9d, -72(%rbp)\00"}
!50 = metadata !{i64 73, [22 x i8] c"\09movl\09%ebx, -76(%rbp)\00"}
!51 = metadata !{i64 76, [22 x i8] c"\09movq\09%r10, -88(%rbp)\00"}
!52 = metadata !{i64 80, [22 x i8] c"\09movq\09%rax, -96(%rbp)\00"}
!53 = metadata !{i64 87, [23 x i8] c"\09movq\09%r11, -112(%rbp)\00"}
!54 = metadata !{i64 91, [9 x i8] c"\09callq\090\00"}
!55 = metadata !{i64 96, [23 x i8] c"\09movq\09%rax, -104(%rbp)\00"}
!56 = metadata !{i64 100, [22 x i8] c"\09movl\09-32(%rbp), %esi\00"}
!57 = metadata !{i64 103, [22 x i8] c"\09movq\09-56(%rbp), %rax\00"}
!58 = metadata !{i64 107, [19 x i8] c"\09addl\09(%rax), %esi\00"}
!59 = metadata !{i64 109, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!60 = metadata !{i64 113, [19 x i8] c"\09addl\09(%rax), %esi\00"}
!61 = metadata !{i64 115, [23 x i8] c"\09movq\09-112(%rbp), %rax\00"}
!62 = metadata !{i64 119, [19 x i8] c"\09movl\09(%rax), %r8d\00"}
!63 = metadata !{i64 122, [22 x i8] c"\09movq\09-88(%rbp), %rcx\00"}
!64 = metadata !{i64 126, [19 x i8] c"\09addl\09(%rcx), %r8d\00"}
!65 = metadata !{i64 129, [22 x i8] c"\09movq\09-96(%rbp), %rcx\00"}
!66 = metadata !{i64 133, [19 x i8] c"\09addl\09(%rcx), %r8d\00"}
!67 = metadata !{i64 143, [19 x i8] c"\09movl\09%esi, (%rcx)\00"}
!68 = metadata !{i64 145, [22 x i8] c"\09movl\09-28(%rbp), %esi\00"}
!69 = metadata !{i64 148, [22 x i8] c"\09movq\09-56(%rbp), %rcx\00"}
!70 = metadata !{i64 152, [20 x i8] c"\09addl\094(%rcx), %esi\00"}
!71 = metadata !{i64 155, [22 x i8] c"\09movq\09-64(%rbp), %rcx\00"}
!72 = metadata !{i64 159, [20 x i8] c"\09addl\094(%rcx), %esi\00"}
!73 = metadata !{i64 162, [20 x i8] c"\09movl\094(%rax), %r8d\00"}
!74 = metadata !{i64 166, [22 x i8] c"\09movq\09-88(%rbp), %rcx\00"}
!75 = metadata !{i64 170, [20 x i8] c"\09addl\094(%rcx), %r8d\00"}
!76 = metadata !{i64 174, [22 x i8] c"\09movq\09-96(%rbp), %rcx\00"}
!77 = metadata !{i64 178, [20 x i8] c"\09addl\094(%rcx), %r8d\00"}
!78 = metadata !{i64 185, [23 x i8] c"\09movq\09-104(%rbp), %rcx\00"}
!79 = metadata !{i64 189, [20 x i8] c"\09movl\09%esi, 4(%rcx)\00"}
!80 = metadata !{i64 192, [22 x i8] c"\09movl\09-24(%rbp), %esi\00"}
!81 = metadata !{i64 195, [22 x i8] c"\09movq\09-56(%rbp), %rcx\00"}
!82 = metadata !{i64 199, [20 x i8] c"\09addl\098(%rcx), %esi\00"}
!83 = metadata !{i64 202, [22 x i8] c"\09movq\09-64(%rbp), %rcx\00"}
!84 = metadata !{i64 206, [20 x i8] c"\09addl\098(%rcx), %esi\00"}
!85 = metadata !{i64 209, [20 x i8] c"\09movl\098(%rax), %r8d\00"}
!86 = metadata !{i64 213, [22 x i8] c"\09movq\09-88(%rbp), %rcx\00"}
!87 = metadata !{i64 217, [20 x i8] c"\09addl\098(%rcx), %r8d\00"}
!88 = metadata !{i64 221, [22 x i8] c"\09movq\09-96(%rbp), %rcx\00"}
!89 = metadata !{i64 225, [20 x i8] c"\09addl\098(%rcx), %r8d\00"}
!90 = metadata !{i64 229, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!91 = metadata !{i64 232, [23 x i8] c"\09movq\09-104(%rbp), %rcx\00"}
!92 = metadata !{i64 236, [20 x i8] c"\09movl\09%esi, 8(%rcx)\00"}
!93 = metadata !{i64 239, [23 x i8] c"\09movq\09-104(%rbp), %rax\00"}
!94 = metadata !{i64 243, [16 x i8] c"\09addq\09$96, %rsp\00"}
!95 = metadata !{i64 247, [11 x i8] c"\09popq\09%rbx\00"}
!96 = metadata !{i64 248, [11 x i8] c"\09popq\09%r14\00"}
!97 = metadata !{i64 250, [11 x i8] c"\09popq\09%rbp\00"}
!98 = metadata !{i64 251, [6 x i8] c"\09retq\00"}
!99 = metadata !{i64 466, [22 x i8] c"\09movq\09%rax, -32(%rbp)\00"}
!100 = metadata !{i64 474, [19 x i8] c"\09movl\09(%rax), %esi\00"}
!101 = metadata !{i64 480, [20 x i8] c"\09addl\094(%rax), %esi\00"}
!102 = metadata !{i64 487, [20 x i8] c"\09addl\098(%rax), %esi\00"}
!103 = metadata !{i64 492, [17 x i8] c"\09addq\09$112, %rsp\00"}
!104 = metadata !{i64 496, [11 x i8] c"\09popq\09%rbp\00"}
!105 = metadata !{i64 497, [6 x i8] c"\09retq\00"}
