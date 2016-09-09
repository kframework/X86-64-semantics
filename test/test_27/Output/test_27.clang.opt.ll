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
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !3
  %5 = bitcast i64* %R12.i to <2 x i64>*
  %6 = load <2 x i64>* %5, align 8
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %7 = load i64* %R14.i, align 8, !mcsema_real_eip !3
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !3
  %8 = load i64* %R15.i, align 8, !mcsema_real_eip !3
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %9 = load i64* %RIP.i, align 8, !mcsema_real_eip !3
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !3
  %10 = load i1* %DF.i, align 1, !mcsema_real_eip !3
  %11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !3
  %12 = bitcast x86_fp80* %11 to i8*, !mcsema_real_eip !3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %12, i32 128, i32 4, i1 false), !mcsema_real_eip !3
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !3
  %13 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !3
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !3
  %14 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !3
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !3
  %15 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !3
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !3
  %16 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !3
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !3
  %17 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !3
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !3
  %18 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !3
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !3
  %19 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !3
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !3
  %20 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !3
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !3
  %21 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !3
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !3
  %22 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !3
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !3
  %23 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !3
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !3
  %24 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !3
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !3
  %25 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !3
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !3
  %26 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !3
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !3
  %27 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !3
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !3
  %28 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !3
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !3
  %29 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !3
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !3
  %30 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !3
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !3
  %31 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !3
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !3
  %32 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !3
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !3
  %33 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !3
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !3
  %34 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !3
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !3
  %35 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !3
  %36 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !3
  %37 = bitcast i8* %36 to i64*
  %38 = load i64* %37, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !3
  %39 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !3
  %40 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !3
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !3
  %41 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !3
  %42 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !3
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %43 = load i128* %XMM0.i, align 1, !mcsema_real_eip !3
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %44 = load i128* %XMM1.i, align 1, !mcsema_real_eip !3
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %45 = load i128* %XMM2.i, align 1, !mcsema_real_eip !3
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %46 = load i128* %XMM3.i, align 1, !mcsema_real_eip !3
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %47 = load i128* %XMM4.i, align 1, !mcsema_real_eip !3
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %48 = load i128* %XMM5.i, align 1, !mcsema_real_eip !3
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %49 = load i128* %XMM6.i, align 1, !mcsema_real_eip !3
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %50 = load i128* %XMM7.i, align 1, !mcsema_real_eip !3
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %51 = load i128* %XMM8.i, align 1, !mcsema_real_eip !3
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %52 = load i128* %XMM9.i, align 1, !mcsema_real_eip !3
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %53 = load i128* %XMM10.i, align 1, !mcsema_real_eip !3
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %54 = load i128* %XMM11.i, align 1, !mcsema_real_eip !3
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %55 = load i128* %XMM12.i, align 1, !mcsema_real_eip !3
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %56 = load i128* %XMM13.i, align 1, !mcsema_real_eip !3
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %57 = load i128* %XMM14.i, align 1, !mcsema_real_eip !3
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %58 = load i128* %XMM15.i, align 1, !mcsema_real_eip !3
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %59 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %60 = load <2 x i64>* %59, align 8
  %61 = add i64 %3, -8
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !3
  store i64 %4, i64* %62, align 8, !mcsema_real_eip !3
  %63 = add i64 %3, -120
  %64 = xor i64 %63, %61, !mcsema_real_eip !4
  %65 = and i64 %64, 16
  %66 = icmp eq i64 %65, 0
  %67 = trunc i64 %63 to i8, !mcsema_real_eip !4
  %68 = tail call i8 @llvm.ctpop.i8(i8 %67), !mcsema_real_eip !4
  %69 = and i8 %68, 1
  %70 = icmp eq i8 %69, 0
  %71 = icmp eq i64 %63, 0, !mcsema_real_eip !4
  %72 = icmp slt i64 %63, 0
  %73 = icmp ult i64 %61, 112, !mcsema_real_eip !4
  %74 = and i64 %64, %61, !mcsema_real_eip !4
  %75 = icmp slt i64 %74, 0
  %76 = add i64 %3, -12, !mcsema_real_eip !5
  %77 = inttoptr i64 %76 to i32*
  store i32 0, i32* %77, align 4, !mcsema_real_eip !5
  %78 = add i64 %3, -24, !mcsema_real_eip !6
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !6
  %80 = inttoptr i64 %78 to i32*
  store i32 10, i32* %80, align 4, !mcsema_real_eip !6
  %81 = add i64 %3, -20, !mcsema_real_eip !7
  %82 = inttoptr i64 %81 to i32*
  store i32 10, i32* %82, align 4, !mcsema_real_eip !7
  %83 = add i64 %3, -16, !mcsema_real_eip !8
  %84 = inttoptr i64 %83 to i32*
  store i32 10, i32* %84, align 4, !mcsema_real_eip !8
  %85 = tail call x86_64_sysvcc i64 @malloc(i64 12), !mcsema_real_eip !9
  %86 = add i64 %3, -32, !mcsema_real_eip !10
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !10
  store i64 %85, i64* %87, align 8, !mcsema_real_eip !10
  %88 = inttoptr i64 %85 to i32*
  store i32 5, i32* %88, align 4, !mcsema_real_eip !11
  %89 = load i64* %87, align 8, !mcsema_real_eip !12
  %90 = add i64 %89, 4, !mcsema_real_eip !13
  %91 = inttoptr i64 %90 to i32*
  store i32 5, i32* %91, align 4, !mcsema_real_eip !13
  %92 = load i64* %87, align 8, !mcsema_real_eip !14
  %93 = add i64 %92, 8, !mcsema_real_eip !15
  %94 = inttoptr i64 %93 to i32*
  store i32 5, i32* %94, align 4, !mcsema_real_eip !15
  %95 = load i64* %87, align 8, !mcsema_real_eip !16
  %96 = load i64* %79, align 8, !mcsema_real_eip !17
  %97 = add i64 %3, -56, !mcsema_real_eip !18
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !18
  store i64 %96, i64* %98, align 8, !mcsema_real_eip !18
  %99 = load i32* %84, align 4, !mcsema_real_eip !19
  %100 = add i64 %3, -48, !mcsema_real_eip !20
  %101 = inttoptr i64 %100 to i32*
  store i32 %99, i32* %101, align 4, !mcsema_real_eip !20
  %102 = load i64* %98, align 8, !mcsema_real_eip !21
  %103 = zext i32 %99 to i64, !mcsema_real_eip !22
  %104 = add i64 %3, -64, !mcsema_real_eip !23
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !23
  store i64 %78, i64* %105, align 8, !mcsema_real_eip !23
  %106 = add i64 %3, -72, !mcsema_real_eip !24
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !24
  store i64 %95, i64* %107, align 8, !mcsema_real_eip !24
  %108 = add i64 %3, -76, !mcsema_real_eip !25
  %109 = inttoptr i64 %108 to i32*
  store i32 3, i32* %109, align 4, !mcsema_real_eip !25
  %110 = inttoptr i64 %63 to i32*
  store i32 3, i32* %110, align 4, !mcsema_real_eip !26
  %111 = load i64* %79, align 8, !mcsema_real_eip !27
  %112 = add i64 %3, -112, !mcsema_real_eip !28
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !28
  store i64 %111, i64* %113, align 8, !mcsema_real_eip !28
  %114 = load i32* %84, align 4, !mcsema_real_eip !29
  %115 = zext i32 %114 to i64, !mcsema_real_eip !29
  %116 = add i64 %3, -104, !mcsema_real_eip !30
  %117 = inttoptr i64 %116 to i32*
  store i32 %114, i32* %117, align 4, !mcsema_real_eip !30
  %118 = add i64 %3, -96, !mcsema_real_eip !31
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !31
  store i64 %78, i64* %119, align 8, !mcsema_real_eip !31
  %120 = load i64* %107, align 8, !mcsema_real_eip !32
  %121 = add i64 %3, -88, !mcsema_real_eip !33
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !33
  store i64 %120, i64* %122, align 8, !mcsema_real_eip !33
  %123 = add i64 %3, -128
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !34
  store i64 -4981261766360305936, i64* %124, align 8, !mcsema_real_eip !34
  store i64 %120, i64* %RAX.i, align 8, !mcsema_real_eip !34
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !34
  store i64 %95, i64* %RCX.i, align 8, !mcsema_real_eip !34
  store i64 %78, i64* %RDX.i, align 8, !mcsema_real_eip !34
  store i64 %103, i64* %RSI.i, align 8, !mcsema_real_eip !34
  store i64 %102, i64* %RDI.i, align 8, !mcsema_real_eip !34
  store i64 %123, i64* %RSP.i, align 8, !mcsema_real_eip !34
  store i64 %61, i64* %RBP.i, align 8, !mcsema_real_eip !34
  store i64 1, i64* %R8.i, align 8, !mcsema_real_eip !34
  store i64 2, i64* %R9.i, align 8, !mcsema_real_eip !34
  store i64 %115, i64* %R10.i, align 8, !mcsema_real_eip !34
  store i64 %78, i64* %R11.i, align 8, !mcsema_real_eip !34
  store <2 x i64> %6, <2 x i64>* %5, align 8
  store i64 %7, i64* %R14.i, align 8, !mcsema_real_eip !34
  store i64 %8, i64* %R15.i, align 8, !mcsema_real_eip !34
  store i64 %9, i64* %RIP.i, align 8, !mcsema_real_eip !34
  store i1 %73, i1* %CF.i, align 1, !mcsema_real_eip !34
  store i1 %70, i1* %PF.i, align 1, !mcsema_real_eip !34
  store i1 %66, i1* %AF.i, align 1, !mcsema_real_eip !34
  store i1 %71, i1* %ZF.i, align 1, !mcsema_real_eip !34
  store i1 %72, i1* %SF.i, align 1, !mcsema_real_eip !34
  store i1 %75, i1* %OF.i, align 1, !mcsema_real_eip !34
  store i1 %10, i1* %DF.i, align 1, !mcsema_real_eip !34
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !34
  store i1 %13, i1* %FPU_B.i, align 1, !mcsema_real_eip !34
  store i1 %14, i1* %FPU_C3.i, align 1, !mcsema_real_eip !34
  store i3 %15, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !34
  store i1 %16, i1* %FPU_C2.i, align 1, !mcsema_real_eip !34
  store i1 %17, i1* %FPU_C1.i, align 1, !mcsema_real_eip !34
  store i1 %18, i1* %FPU_C0.i, align 1, !mcsema_real_eip !34
  store i1 %19, i1* %FPU_ES.i, align 1, !mcsema_real_eip !34
  store i1 %20, i1* %FPU_SF.i, align 1, !mcsema_real_eip !34
  store i1 %21, i1* %FPU_PE.i, align 1, !mcsema_real_eip !34
  store i1 %22, i1* %FPU_UE.i, align 1, !mcsema_real_eip !34
  store i1 %23, i1* %FPU_OE.i, align 1, !mcsema_real_eip !34
  store i1 %24, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !34
  store i1 %25, i1* %FPU_DE.i, align 1, !mcsema_real_eip !34
  store i1 %26, i1* %FPU_IE.i, align 1, !mcsema_real_eip !34
  store i1 %27, i1* %FPU_X.i, align 1, !mcsema_real_eip !34
  store i2 %28, i2* %FPU_RC.i, align 1, !mcsema_real_eip !34
  store i2 %29, i2* %FPU_PC.i, align 1, !mcsema_real_eip !34
  store i1 %30, i1* %FPU_PM.i, align 1, !mcsema_real_eip !34
  store i1 %31, i1* %FPU_UM.i, align 1, !mcsema_real_eip !34
  store i1 %32, i1* %FPU_OM.i, align 1, !mcsema_real_eip !34
  store i1 %33, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !34
  store i1 %34, i1* %FPU_DM.i, align 1, !mcsema_real_eip !34
  store i1 %35, i1* %FPU_IM.i, align 1, !mcsema_real_eip !34
  store i64 %38, i64* %37, align 4
  store i16 %39, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !34
  store i64 %40, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !34
  store i16 %41, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !34
  store i64 %42, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !34
  store i128 %43, i128* %XMM0.i, align 1, !mcsema_real_eip !34
  store i128 %44, i128* %XMM1.i, align 1, !mcsema_real_eip !34
  store i128 %45, i128* %XMM2.i, align 1, !mcsema_real_eip !34
  store i128 %46, i128* %XMM3.i, align 1, !mcsema_real_eip !34
  store i128 %47, i128* %XMM4.i, align 1, !mcsema_real_eip !34
  store i128 %48, i128* %XMM5.i, align 1, !mcsema_real_eip !34
  store i128 %49, i128* %XMM6.i, align 1, !mcsema_real_eip !34
  store i128 %50, i128* %XMM7.i, align 1, !mcsema_real_eip !34
  store i128 %51, i128* %XMM8.i, align 1, !mcsema_real_eip !34
  store i128 %52, i128* %XMM9.i, align 1, !mcsema_real_eip !34
  store i128 %53, i128* %XMM10.i, align 1, !mcsema_real_eip !34
  store i128 %54, i128* %XMM11.i, align 1, !mcsema_real_eip !34
  store i128 %55, i128* %XMM12.i, align 1, !mcsema_real_eip !34
  store i128 %56, i128* %XMM13.i, align 1, !mcsema_real_eip !34
  store i128 %57, i128* %XMM14.i, align 1, !mcsema_real_eip !34
  store i128 %58, i128* %XMM15.i, align 1, !mcsema_real_eip !34
  store <2 x i64> %60, <2 x i64>* %59, align 1
  %125 = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %125)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %125, i8* %1, i32 128, i32 16, i1 false)
  %126 = add i64 %3, -136
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !2
  store i64 %61, i64* %127, align 8, !mcsema_real_eip !2
  %128 = add i64 %3, -144
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !35
  store i64 %7, i64* %129, align 8, !mcsema_real_eip !35
  %130 = add i64 %3, -152
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !36
  store i64 %2, i64* %131, align 8, !mcsema_real_eip !36
  %132 = add i64 %3, -248
  %133 = load i64* %122, align 8, !mcsema_real_eip !37
  %134 = load i64* %119, align 8, !mcsema_real_eip !38
  %135 = load i32* %110, align 4, !mcsema_real_eip !39
  %136 = add i64 %3, -184, !mcsema_real_eip !40
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !40
  store i64 %102, i64* %137, align 8, !mcsema_real_eip !40
  %138 = add i64 %3, -176, !mcsema_real_eip !41
  %139 = inttoptr i64 %138 to i32*
  store i32 %99, i32* %139, align 4, !mcsema_real_eip !41
  %140 = load i64* %137, align 8, !mcsema_real_eip !42
  %141 = add i64 %3, -168, !mcsema_real_eip !43
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !43
  store i64 %140, i64* %142, align 8, !mcsema_real_eip !43
  %143 = load i32* %139, align 4, !mcsema_real_eip !44
  %144 = add i64 %3, -160, !mcsema_real_eip !45
  %145 = inttoptr i64 %144 to i32*
  store i32 %143, i32* %145, align 4, !mcsema_real_eip !45
  %146 = add i64 %3, -192, !mcsema_real_eip !46
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !46
  store i64 %78, i64* %147, align 8, !mcsema_real_eip !46
  %148 = add i64 %3, -200, !mcsema_real_eip !47
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !47
  store i64 %95, i64* %149, align 8, !mcsema_real_eip !47
  %150 = add i64 %3, -204, !mcsema_real_eip !48
  %151 = inttoptr i64 %150 to i32*
  store i32 1, i32* %151, align 4, !mcsema_real_eip !48
  %152 = add i64 %3, -208, !mcsema_real_eip !49
  %153 = inttoptr i64 %152 to i32*
  store i32 2, i32* %153, align 4, !mcsema_real_eip !49
  %154 = add i64 %3, -212, !mcsema_real_eip !50
  %155 = inttoptr i64 %154 to i32*
  store i32 %135, i32* %155, align 4, !mcsema_real_eip !50
  %156 = add i64 %3, -224, !mcsema_real_eip !51
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !51
  store i64 %134, i64* %157, align 8, !mcsema_real_eip !51
  %158 = add i64 %3, -232, !mcsema_real_eip !52
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !52
  store i64 %133, i64* %159, align 8, !mcsema_real_eip !52
  %160 = inttoptr i64 %132 to i64*, !mcsema_real_eip !53
  store i64 %112, i64* %160, align 8, !mcsema_real_eip !53
  %161 = tail call x86_64_sysvcc i64 @malloc(i64 12), !mcsema_real_eip !54
  %162 = add i64 %3, -240, !mcsema_real_eip !55
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !55
  store i64 %161, i64* %163, align 8, !mcsema_real_eip !55
  %164 = inttoptr i64 %141 to i32*
  %165 = load i32* %164, align 4, !mcsema_real_eip !56
  %166 = load i64* %147, align 8, !mcsema_real_eip !57
  %167 = inttoptr i64 %166 to i32*
  %168 = load i32* %167, align 4, !mcsema_real_eip !58
  %169 = add i32 %168, %165
  %170 = load i64* %149, align 8, !mcsema_real_eip !59
  %171 = inttoptr i64 %170 to i32*
  %172 = load i32* %171, align 4, !mcsema_real_eip !60
  %173 = add i32 %169, %172
  %174 = load i64* %160, align 8, !mcsema_real_eip !61
  %175 = inttoptr i64 %174 to i32*
  %176 = load i32* %175, align 4, !mcsema_real_eip !62
  %177 = load i64* %157, align 8, !mcsema_real_eip !63
  %178 = inttoptr i64 %177 to i32*
  %179 = load i32* %178, align 4, !mcsema_real_eip !64
  %180 = load i64* %159, align 8, !mcsema_real_eip !65
  %181 = inttoptr i64 %180 to i32*
  %182 = load i32* %181, align 4, !mcsema_real_eip !66
  %183 = add i32 %173, %176
  %184 = add i32 %183, %179
  %185 = add i32 %184, %182
  %186 = inttoptr i64 %161 to i32*
  store i32 %185, i32* %186, align 4, !mcsema_real_eip !67
  %187 = add i64 %3, -164, !mcsema_real_eip !68
  %188 = inttoptr i64 %187 to i32*
  %189 = load i32* %188, align 4, !mcsema_real_eip !68
  %190 = load i64* %147, align 8, !mcsema_real_eip !69
  %191 = add i64 %190, 4, !mcsema_real_eip !70
  %192 = inttoptr i64 %191 to i32*
  %193 = load i32* %192, align 4, !mcsema_real_eip !70
  %194 = add i32 %193, %189
  %195 = load i64* %149, align 8, !mcsema_real_eip !71
  %196 = add i64 %195, 4, !mcsema_real_eip !72
  %197 = inttoptr i64 %196 to i32*
  %198 = load i32* %197, align 4, !mcsema_real_eip !72
  %199 = add i32 %194, %198
  %200 = add i64 %174, 4, !mcsema_real_eip !73
  %201 = inttoptr i64 %200 to i32*
  %202 = load i32* %201, align 4, !mcsema_real_eip !73
  %203 = load i64* %157, align 8, !mcsema_real_eip !74
  %204 = add i64 %203, 4, !mcsema_real_eip !75
  %205 = inttoptr i64 %204 to i32*
  %206 = load i32* %205, align 4, !mcsema_real_eip !75
  %207 = load i64* %159, align 8, !mcsema_real_eip !76
  %208 = add i64 %207, 4, !mcsema_real_eip !77
  %209 = inttoptr i64 %208 to i32*
  %210 = load i32* %209, align 4, !mcsema_real_eip !77
  %211 = add i32 %199, %202
  %212 = add i32 %211, %206
  %213 = add i32 %212, %210
  %214 = load i64* %163, align 8, !mcsema_real_eip !78
  %215 = add i64 %214, 4, !mcsema_real_eip !79
  %216 = inttoptr i64 %215 to i32*
  store i32 %213, i32* %216, align 4, !mcsema_real_eip !79
  %217 = load i32* %145, align 4, !mcsema_real_eip !80
  %218 = load i64* %147, align 8, !mcsema_real_eip !81
  %219 = add i64 %218, 8, !mcsema_real_eip !82
  %220 = inttoptr i64 %219 to i32*
  %221 = load i32* %220, align 4, !mcsema_real_eip !82
  %222 = add i32 %221, %217
  %223 = load i64* %149, align 8, !mcsema_real_eip !83
  %224 = add i64 %223, 8, !mcsema_real_eip !84
  %225 = inttoptr i64 %224 to i32*
  %226 = load i32* %225, align 4, !mcsema_real_eip !84
  %227 = add i32 %222, %226
  %228 = add i64 %174, 8, !mcsema_real_eip !85
  %229 = inttoptr i64 %228 to i32*
  %230 = load i32* %229, align 4, !mcsema_real_eip !85
  %231 = load i64* %157, align 8, !mcsema_real_eip !86
  %232 = add i64 %231, 8, !mcsema_real_eip !87
  %233 = inttoptr i64 %232 to i32*
  %234 = load i32* %233, align 4, !mcsema_real_eip !87
  %235 = add i32 %234, %230
  %236 = load i64* %159, align 8, !mcsema_real_eip !88
  %237 = add i64 %236, 8, !mcsema_real_eip !89
  %238 = inttoptr i64 %237 to i32*
  %239 = load i32* %238, align 4, !mcsema_real_eip !89
  %240 = add i32 %235, %239
  %241 = zext i32 %240 to i64, !mcsema_real_eip !89
  %242 = add i32 %227, %240
  %243 = zext i32 %242 to i64, !mcsema_real_eip !90
  %244 = load i64* %163, align 8, !mcsema_real_eip !91
  %245 = add i64 %244, 8, !mcsema_real_eip !92
  %246 = inttoptr i64 %245 to i32*
  store i32 %242, i32* %246, align 4, !mcsema_real_eip !92
  %247 = load i64* %163, align 8, !mcsema_real_eip !93
  %uadd84.i.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %132, i64 96)
  %248 = extractvalue { i64, i1 } %uadd84.i.i, 0
  %249 = xor i64 %248, %132, !mcsema_real_eip !94
  %250 = and i64 %249, 16, !mcsema_real_eip !94
  %251 = icmp ne i64 %250, 0, !mcsema_real_eip !94
  %252 = icmp slt i64 %248, 0
  %253 = icmp eq i64 %248, 0, !mcsema_real_eip !94
  %254 = add i64 %3, 9223372036854775560
  %255 = and i64 %249, %254, !mcsema_real_eip !94
  %256 = icmp slt i64 %255, 0
  %257 = trunc i64 %248 to i8, !mcsema_real_eip !94
  %258 = tail call i8 @llvm.ctpop.i8(i8 %257), !mcsema_real_eip !94
  %259 = and i8 %258, 1
  %260 = icmp eq i8 %259, 0
  %261 = extractvalue { i64, i1 } %uadd84.i.i, 1
  %262 = inttoptr i64 %248 to i64*, !mcsema_real_eip !95
  %263 = load i64* %262, align 8, !mcsema_real_eip !95
  %264 = add i64 %248, 8, !mcsema_real_eip !95
  %265 = inttoptr i64 %264 to i64*, !mcsema_real_eip !96
  %266 = load i64* %265, align 8, !mcsema_real_eip !96
  %267 = add i64 %248, 16, !mcsema_real_eip !96
  %268 = inttoptr i64 %267 to i64*, !mcsema_real_eip !97
  %269 = load i64* %268, align 8, !mcsema_real_eip !97
  %270 = add i64 %248, 32, !mcsema_real_eip !98
  store i64 %247, i64* %RAX.i, align 8, !mcsema_real_eip !98
  store i64 %263, i64* %RBX.i, align 8, !mcsema_real_eip !98
  store i64 %244, i64* %RCX.i, align 8, !mcsema_real_eip !98
  store i64 %78, i64* %RDX.i, align 8, !mcsema_real_eip !98
  store i64 %243, i64* %RSI.i, align 8, !mcsema_real_eip !98
  store i64 12, i64* %RDI.i, align 8, !mcsema_real_eip !98
  store i64 %270, i64* %RSP.i, align 8, !mcsema_real_eip !98
  store i64 %269, i64* %RBP.i, align 8, !mcsema_real_eip !98
  store i64 %241, i64* %R8.i, align 8, !mcsema_real_eip !98
  store i64 2, i64* %R9.i, align 8, !mcsema_real_eip !98
  store i64 %134, i64* %R10.i, align 8, !mcsema_real_eip !98
  store i64 %112, i64* %R11.i, align 8, !mcsema_real_eip !98
  store <2 x i64> %6, <2 x i64>* %5, align 8
  store i64 %266, i64* %R14.i, align 8, !mcsema_real_eip !98
  store i64 %8, i64* %R15.i, align 8, !mcsema_real_eip !98
  store i64 %9, i64* %RIP.i, align 8, !mcsema_real_eip !98
  store i1 %261, i1* %CF.i, align 1, !mcsema_real_eip !98
  store i1 %260, i1* %PF.i, align 1, !mcsema_real_eip !98
  store i1 %251, i1* %AF.i, align 1, !mcsema_real_eip !98
  store i1 %253, i1* %ZF.i, align 1, !mcsema_real_eip !98
  store i1 %252, i1* %SF.i, align 1, !mcsema_real_eip !98
  store i1 %256, i1* %OF.i, align 1, !mcsema_real_eip !98
  store i1 %10, i1* %DF.i, align 1, !mcsema_real_eip !98
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* %125, i32 128, i32 8, i1 false), !mcsema_real_eip !98
  store i1 %13, i1* %FPU_B.i, align 1, !mcsema_real_eip !98
  store i1 %14, i1* %FPU_C3.i, align 1, !mcsema_real_eip !98
  store i3 %15, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !98
  store i1 %16, i1* %FPU_C2.i, align 1, !mcsema_real_eip !98
  store i1 %17, i1* %FPU_C1.i, align 1, !mcsema_real_eip !98
  store i1 %18, i1* %FPU_C0.i, align 1, !mcsema_real_eip !98
  store i1 %19, i1* %FPU_ES.i, align 1, !mcsema_real_eip !98
  store i1 %20, i1* %FPU_SF.i, align 1, !mcsema_real_eip !98
  store i1 %21, i1* %FPU_PE.i, align 1, !mcsema_real_eip !98
  store i1 %22, i1* %FPU_UE.i, align 1, !mcsema_real_eip !98
  store i1 %23, i1* %FPU_OE.i, align 1, !mcsema_real_eip !98
  store i1 %24, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !98
  store i1 %25, i1* %FPU_DE.i, align 1, !mcsema_real_eip !98
  store i1 %26, i1* %FPU_IE.i, align 1, !mcsema_real_eip !98
  store i1 %27, i1* %FPU_X.i, align 1, !mcsema_real_eip !98
  store i2 %28, i2* %FPU_RC.i, align 1, !mcsema_real_eip !98
  store i2 %29, i2* %FPU_PC.i, align 1, !mcsema_real_eip !98
  store i1 %30, i1* %FPU_PM.i, align 1, !mcsema_real_eip !98
  store i1 %31, i1* %FPU_UM.i, align 1, !mcsema_real_eip !98
  store i1 %32, i1* %FPU_OM.i, align 1, !mcsema_real_eip !98
  store i1 %33, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !98
  store i1 %34, i1* %FPU_DM.i, align 1, !mcsema_real_eip !98
  store i1 %35, i1* %FPU_IM.i, align 1, !mcsema_real_eip !98
  store i64 %38, i64* %37, align 4
  store i16 %39, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !98
  store i64 %40, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !98
  store i16 %41, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !98
  store i64 %42, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !98
  store i128 %43, i128* %XMM0.i, align 1, !mcsema_real_eip !98
  store i128 %44, i128* %XMM1.i, align 1, !mcsema_real_eip !98
  store i128 %45, i128* %XMM2.i, align 1, !mcsema_real_eip !98
  store i128 %46, i128* %XMM3.i, align 1, !mcsema_real_eip !98
  store i128 %47, i128* %XMM4.i, align 1, !mcsema_real_eip !98
  store i128 %48, i128* %XMM5.i, align 1, !mcsema_real_eip !98
  store i128 %49, i128* %XMM6.i, align 1, !mcsema_real_eip !98
  store i128 %50, i128* %XMM7.i, align 1, !mcsema_real_eip !98
  store i128 %51, i128* %XMM8.i, align 1, !mcsema_real_eip !98
  store i128 %52, i128* %XMM9.i, align 1, !mcsema_real_eip !98
  store i128 %53, i128* %XMM10.i, align 1, !mcsema_real_eip !98
  store i128 %54, i128* %XMM11.i, align 1, !mcsema_real_eip !98
  store i128 %55, i128* %XMM12.i, align 1, !mcsema_real_eip !98
  store i128 %56, i128* %XMM13.i, align 1, !mcsema_real_eip !98
  store i128 %57, i128* %XMM14.i, align 1, !mcsema_real_eip !98
  store i128 %58, i128* %XMM15.i, align 1, !mcsema_real_eip !98
  store <2 x i64> %60, <2 x i64>* %59, align 1
  call void @llvm.lifetime.end(i64 128, i8* %125)
  %271 = bitcast <2 x i64> %6 to i128
  %trunc.i = trunc i128 %271 to i64
  %272 = lshr i128 %271, 64
  %273 = trunc i128 %272 to i64
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %12, i32 128, i32 4, i1 false), !mcsema_real_eip !34
  %274 = bitcast <2 x i64> %60 to i128
  %trunc1.i = trunc i128 %274 to i64
  %275 = lshr i128 %274, 64
  %276 = trunc i128 %275 to i64
  %277 = add i64 %269, -32, !mcsema_real_eip !99
  %278 = inttoptr i64 %277 to i64*, !mcsema_real_eip !99
  store i64 %247, i64* %278, align 8, !mcsema_real_eip !99
  %279 = inttoptr i64 %247 to i32*
  %280 = load i32* %279, align 4, !mcsema_real_eip !100
  %281 = add i64 %247, 4, !mcsema_real_eip !101
  %282 = inttoptr i64 %281 to i32*
  %283 = load i32* %282, align 4, !mcsema_real_eip !101
  %284 = add i32 %283, %280
  %285 = add i64 %247, 8, !mcsema_real_eip !102
  %286 = inttoptr i64 %285 to i32*
  %287 = load i32* %286, align 4, !mcsema_real_eip !102
  %288 = add i32 %284, %287
  %289 = zext i32 %288 to i64, !mcsema_real_eip !102
  %uadd210.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %270, i64 112)
  %290 = extractvalue { i64, i1 } %uadd210.i, 0
  %291 = xor i64 %290, %270, !mcsema_real_eip !103
  %292 = and i64 %291, 16
  %293 = icmp eq i64 %292, 0
  %294 = icmp slt i64 %290, 0
  %295 = icmp eq i64 %290, 0, !mcsema_real_eip !103
  %296 = add i64 %248, -9223372036854775776
  %297 = and i64 %291, %296, !mcsema_real_eip !103
  %298 = icmp slt i64 %297, 0
  %299 = trunc i64 %290 to i8, !mcsema_real_eip !103
  %300 = tail call i8 @llvm.ctpop.i8(i8 %299), !mcsema_real_eip !103
  %301 = and i8 %300, 1
  %302 = icmp eq i8 %301, 0
  %303 = extractvalue { i64, i1 } %uadd210.i, 1
  %304 = inttoptr i64 %290 to i64*, !mcsema_real_eip !104
  %305 = load i64* %304, align 8, !mcsema_real_eip !104
  %306 = add i64 %290, 16, !mcsema_real_eip !105
  store i64 %289, i64* %RAX.i, align 8, !mcsema_real_eip !105
  store i64 %263, i64* %RBX.i, align 8, !mcsema_real_eip !105
  store i64 %244, i64* %RCX.i, align 8, !mcsema_real_eip !105
  store i64 %78, i64* %RDX.i, align 8, !mcsema_real_eip !105
  store i64 %289, i64* %RSI.i, align 8, !mcsema_real_eip !105
  store i64 12, i64* %RDI.i, align 8, !mcsema_real_eip !105
  store i64 %306, i64* %RSP.i, align 8, !mcsema_real_eip !105
  store i64 %305, i64* %RBP.i, align 8, !mcsema_real_eip !105
  store i64 %241, i64* %R8.i, align 8, !mcsema_real_eip !105
  store i64 2, i64* %R9.i, align 8, !mcsema_real_eip !105
  store i64 %134, i64* %R10.i, align 8, !mcsema_real_eip !105
  store i64 %112, i64* %R11.i, align 8, !mcsema_real_eip !105
  store i64 %trunc.i, i64* %R12.i, align 8, !mcsema_real_eip !105
  store i64 %273, i64* %R13.i, align 8, !mcsema_real_eip !105
  store i64 %266, i64* %R14.i, align 8, !mcsema_real_eip !105
  store i64 %8, i64* %R15.i, align 8, !mcsema_real_eip !105
  store i64 %9, i64* %RIP.i, align 8, !mcsema_real_eip !105
  store i1 %303, i1* %CF.i, align 1, !mcsema_real_eip !105
  store i1 %302, i1* %PF.i, align 1, !mcsema_real_eip !105
  store i1 %293, i1* %AF.i, align 1, !mcsema_real_eip !105
  store i1 %295, i1* %ZF.i, align 1, !mcsema_real_eip !105
  store i1 %294, i1* %SF.i, align 1, !mcsema_real_eip !105
  store i1 %298, i1* %OF.i, align 1, !mcsema_real_eip !105
  store i1 %10, i1* %DF.i, align 1, !mcsema_real_eip !105
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !105
  store i1 %13, i1* %FPU_B.i, align 1, !mcsema_real_eip !105
  store i1 %14, i1* %FPU_C3.i, align 1, !mcsema_real_eip !105
  store i3 %15, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !105
  store i1 %16, i1* %FPU_C2.i, align 1, !mcsema_real_eip !105
  store i1 %17, i1* %FPU_C1.i, align 1, !mcsema_real_eip !105
  store i1 %18, i1* %FPU_C0.i, align 1, !mcsema_real_eip !105
  store i1 %19, i1* %FPU_ES.i, align 1, !mcsema_real_eip !105
  store i1 %20, i1* %FPU_SF.i, align 1, !mcsema_real_eip !105
  store i1 %21, i1* %FPU_PE.i, align 1, !mcsema_real_eip !105
  store i1 %22, i1* %FPU_UE.i, align 1, !mcsema_real_eip !105
  store i1 %23, i1* %FPU_OE.i, align 1, !mcsema_real_eip !105
  store i1 %24, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !105
  store i1 %25, i1* %FPU_DE.i, align 1, !mcsema_real_eip !105
  store i1 %26, i1* %FPU_IE.i, align 1, !mcsema_real_eip !105
  store i1 %27, i1* %FPU_X.i, align 1, !mcsema_real_eip !105
  store i2 %28, i2* %FPU_RC.i, align 1, !mcsema_real_eip !105
  store i2 %29, i2* %FPU_PC.i, align 1, !mcsema_real_eip !105
  store i1 %30, i1* %FPU_PM.i, align 1, !mcsema_real_eip !105
  store i1 %31, i1* %FPU_UM.i, align 1, !mcsema_real_eip !105
  store i1 %32, i1* %FPU_OM.i, align 1, !mcsema_real_eip !105
  store i1 %33, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !105
  store i1 %34, i1* %FPU_DM.i, align 1, !mcsema_real_eip !105
  store i1 %35, i1* %FPU_IM.i, align 1, !mcsema_real_eip !105
  store i64 %38, i64* %37, align 4
  store i16 %39, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !105
  store i64 %40, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !105
  store i16 %41, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !105
  store i64 %42, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !105
  store i128 %43, i128* %XMM0.i, align 1, !mcsema_real_eip !105
  store i128 %44, i128* %XMM1.i, align 1, !mcsema_real_eip !105
  store i128 %45, i128* %XMM2.i, align 1, !mcsema_real_eip !105
  store i128 %46, i128* %XMM3.i, align 1, !mcsema_real_eip !105
  store i128 %47, i128* %XMM4.i, align 1, !mcsema_real_eip !105
  store i128 %48, i128* %XMM5.i, align 1, !mcsema_real_eip !105
  store i128 %49, i128* %XMM6.i, align 1, !mcsema_real_eip !105
  store i128 %50, i128* %XMM7.i, align 1, !mcsema_real_eip !105
  store i128 %51, i128* %XMM8.i, align 1, !mcsema_real_eip !105
  store i128 %52, i128* %XMM9.i, align 1, !mcsema_real_eip !105
  store i128 %53, i128* %XMM10.i, align 1, !mcsema_real_eip !105
  store i128 %54, i128* %XMM11.i, align 1, !mcsema_real_eip !105
  store i128 %55, i128* %XMM12.i, align 1, !mcsema_real_eip !105
  store i128 %56, i128* %XMM13.i, align 1, !mcsema_real_eip !105
  store i128 %57, i128* %XMM14.i, align 1, !mcsema_real_eip !105
  store i128 %58, i128* %XMM15.i, align 1, !mcsema_real_eip !105
  store i64 %trunc1.i, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !105
  store i64 %276, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !105
  call void @llvm.lifetime.end(i64 128, i8* %1)
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
