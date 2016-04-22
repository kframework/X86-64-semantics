; ModuleID = 'test_13_opt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

declare x86_64_sysvcc i64 @malloc(i64 inreg)

declare x86_64_sysvcc i64 @strlen(i64 inreg)

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
  %3 = load i64* %RCX.i, align 8, !mcsema_real_eip !3
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !3
  %4 = load i64* %RDX.i, align 8, !mcsema_real_eip !3
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !3
  %5 = load i64* %RSI.i, align 8, !mcsema_real_eip !3
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !3
  %6 = load i64* %RDI.i, align 8, !mcsema_real_eip !3
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !3
  %7 = load i64* %RSP.i, align 8, !mcsema_real_eip !3
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !3
  %8 = load i64* %RBP.i, align 8, !mcsema_real_eip !3
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !3
  %9 = load i64* %R8.i, align 8, !mcsema_real_eip !3
  %R9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !3
  %10 = load i64* %R9.i, align 8, !mcsema_real_eip !3
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !3
  %11 = load i64* %R10.i, align 8, !mcsema_real_eip !3
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
  %12 = load i64* %R11.i, align 8, !mcsema_real_eip !3
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %13 = load i64* %R12.i, align 8, !mcsema_real_eip !3
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !3
  %14 = load i64* %R13.i, align 8, !mcsema_real_eip !3
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %15 = load i64* %R14.i, align 8, !mcsema_real_eip !3
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !3
  %16 = load i64* %R15.i, align 8, !mcsema_real_eip !3
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %17 = load i64* %RIP.i, align 8, !mcsema_real_eip !3
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !3
  %18 = load i1* %DF.i, align 1, !mcsema_real_eip !3
  %19 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !3
  %20 = bitcast x86_fp80* %19 to i8*, !mcsema_real_eip !3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %20, i32 128, i32 4, i1 false), !mcsema_real_eip !3
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !3
  %21 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !3
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !3
  %22 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !3
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !3
  %23 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !3
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !3
  %24 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !3
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !3
  %25 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !3
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !3
  %26 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !3
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !3
  %27 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !3
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !3
  %28 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !3
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !3
  %29 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !3
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !3
  %30 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !3
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !3
  %31 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !3
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !3
  %32 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !3
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !3
  %33 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !3
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !3
  %34 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !3
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !3
  %35 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !3
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !3
  %36 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !3
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !3
  %37 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !3
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !3
  %38 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !3
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !3
  %39 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !3
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !3
  %40 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !3
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !3
  %41 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !3
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !3
  %42 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !3
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !3
  %43 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !3
  %44 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !3
  %45 = bitcast i8* %44 to i64*
  %46 = load i64* %45, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !3
  %47 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !3
  %48 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !3
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !3
  %49 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !3
  %50 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !3
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %51 = load i128* %XMM0.i, align 1, !mcsema_real_eip !3
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %52 = load i128* %XMM1.i, align 1, !mcsema_real_eip !3
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %53 = load i128* %XMM2.i, align 1, !mcsema_real_eip !3
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %54 = load i128* %XMM3.i, align 1, !mcsema_real_eip !3
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %55 = load i128* %XMM4.i, align 1, !mcsema_real_eip !3
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %56 = load i128* %XMM5.i, align 1, !mcsema_real_eip !3
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %57 = load i128* %XMM6.i, align 1, !mcsema_real_eip !3
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %58 = load i128* %XMM7.i, align 1, !mcsema_real_eip !3
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %59 = load i128* %XMM8.i, align 1, !mcsema_real_eip !3
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %60 = load i128* %XMM9.i, align 1, !mcsema_real_eip !3
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %61 = load i128* %XMM10.i, align 1, !mcsema_real_eip !3
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %62 = load i128* %XMM11.i, align 1, !mcsema_real_eip !3
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %63 = load i128* %XMM12.i, align 1, !mcsema_real_eip !3
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %64 = load i128* %XMM13.i, align 1, !mcsema_real_eip !3
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %65 = load i128* %XMM14.i, align 1, !mcsema_real_eip !3
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %66 = load i128* %XMM15.i, align 1, !mcsema_real_eip !3
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %67 = load i64* %STACK_BASE.i, align 8, !mcsema_real_eip !3
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %68 = load i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !3
  %69 = add i64 %7, -8
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !3
  store i64 %8, i64* %70, align 8, !mcsema_real_eip !3
  %71 = add i64 %7, -48, !mcsema_real_eip !4
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !4
  store i64 %6, i64* %72, align 8, !mcsema_real_eip !4
  %73 = add i64 %7, -52, !mcsema_real_eip !5
  %74 = trunc i64 %5 to i32, !mcsema_real_eip !5
  %75 = inttoptr i64 %73 to i32*
  store i32 %74, i32* %75, align 4, !mcsema_real_eip !5
  %76 = add i64 %7, -12, !mcsema_real_eip !6
  %77 = inttoptr i64 %76 to i32*
  store i32 0, i32* %77, align 4, !mcsema_real_eip !6
  %78 = load i32* %75, align 4, !mcsema_real_eip !7
  %79 = sext i32 %78 to i64, !mcsema_real_eip !8
  %80 = shl nsw i64 %79, 3, !mcsema_real_eip !9
  %81 = tail call x86_64_sysvcc i64 @malloc(i64 %80), !mcsema_real_eip !10
  %82 = add i64 %7, -24, !mcsema_real_eip !11
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !11
  store i64 %81, i64* %83, align 8, !mcsema_real_eip !11
  %84 = load i32* %77, align 4, !mcsema_real_eip !12
  %85 = load i32* %75, align 4, !mcsema_real_eip !13
  %86 = sub i32 %84, %85, !mcsema_real_eip !13
  %87 = xor i32 %86, %84, !mcsema_real_eip !13
  %88 = icmp slt i32 %86, 0
  %89 = xor i32 %85, %84, !mcsema_real_eip !13
  %90 = and i32 %87, %89, !mcsema_real_eip !13
  %91 = icmp slt i32 %90, 0
  %92 = xor i1 %88, %91
  br i1 %92, label %block_0xef.preheader.i, label %sub_c2.exit, !mcsema_real_eip !14

block_0xef.preheader.i:                           ; preds = %driverBlockRaw
  %93 = add i64 %7, -56
  %94 = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  %95 = bitcast i64* %RBX.i to <2 x i64>*
  %96 = bitcast i64* %R8.i to <2 x i64>*
  %97 = bitcast i64* %R10.i to <2 x i64>*
  %98 = bitcast i64* %R12.i to <2 x i64>*
  %99 = bitcast i64* %R14.i to <2 x i64>*
  %100 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %101 = add i64 %7, -64
  %102 = inttoptr i64 %101 to i64*
  %103 = add i64 %7, -72
  %104 = inttoptr i64 %103 to i64*
  %105 = add i64 %7, -96, !mcsema_real_eip !15
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !15
  %107 = add i64 %7, -76, !mcsema_real_eip !16
  %108 = inttoptr i64 %107 to i32*
  %109 = add i64 %7, -80
  %110 = inttoptr i64 %109 to i32*
  %111 = add i64 %7, -81, !mcsema_real_eip !17
  %112 = inttoptr i64 %111 to i8*
  %113 = add i64 %7, -82, !mcsema_real_eip !18
  %114 = inttoptr i64 %113 to i8*
  %115 = add i64 %7, -112, !mcsema_real_eip !19
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !19
  %117 = add i64 %7, -120, !mcsema_real_eip !20
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !20
  %119 = add i64 %7, -88, !mcsema_real_eip !21
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !21
  %121 = add i64 %7, -89, !mcsema_real_eip !22
  %122 = inttoptr i64 %121 to i8*
  br label %block_0xef.i.outer

block_0xef.i.outer:                               ; preds = %sub_64.exit.i, %block_0xef.preheader.i
  %R15_val.0.i.ph = phi i64 [ %261, %sub_64.exit.i ], [ %16, %block_0xef.preheader.i ]
  %STACK_LIMIT_val.0.i.ph = phi i64 [ %264, %sub_64.exit.i ], [ %68, %block_0xef.preheader.i ]
  %STACK_BASE_val.0.i.ph = phi i64 [ %trunc81.i, %sub_64.exit.i ], [ %67, %block_0xef.preheader.i ]
  %R14_val.0.i.ph = phi i64 [ %trunc80.i, %sub_64.exit.i ], [ %15, %block_0xef.preheader.i ]
  %R13_val.0.i.ph = phi i64 [ %258, %sub_64.exit.i ], [ %14, %block_0xef.preheader.i ]
  %R12_val.0.i.ph = phi i64 [ %trunc79.i, %sub_64.exit.i ], [ %13, %block_0xef.preheader.i ]
  %R11_val.0.i.ph = phi i64 [ %255, %sub_64.exit.i ], [ %12, %block_0xef.preheader.i ]
  %R10_val.0.i.ph = phi i64 [ %trunc78.i, %sub_64.exit.i ], [ %11, %block_0xef.preheader.i ]
  %R9_val.0.i.ph = phi i64 [ %252, %sub_64.exit.i ], [ %10, %block_0xef.preheader.i ]
  %R8_val.0.i.ph = phi i64 [ %trunc77.i, %sub_64.exit.i ], [ %9, %block_0xef.preheader.i ]
  %RBP_val.0.i.ph = phi i64 [ %246, %sub_64.exit.i ], [ %69, %block_0xef.preheader.i ]
  %RSI_val.0.i.ph = phi i64 [ %217, %sub_64.exit.i ], [ %5, %block_0xef.preheader.i ]
  %RCX_val.0.i.ph = phi i64 [ %249, %sub_64.exit.i ], [ %3, %block_0xef.preheader.i ]
  %RBX_val.0.i.ph = phi i64 [ %trunc.i, %sub_64.exit.i ], [ %2, %block_0xef.preheader.i ]
  br label %block_0xef.i

block_0xef.i:                                     ; preds = %block_0x12d.i, %block_0xef.i.outer
  %RBP_val.0.i = phi i64 [ %197, %block_0x12d.i ], [ %RBP_val.0.i.ph, %block_0xef.i.outer ]
  %123 = add i64 %RBP_val.0.i, -4, !mcsema_real_eip !23
  %124 = inttoptr i64 %123 to i32*
  %125 = load i32* %124, align 4, !mcsema_real_eip !23
  %126 = sext i32 %125 to i64, !mcsema_real_eip !24
  %127 = shl nsw i64 %126, 3
  %128 = add i64 %RBP_val.0.i, -40, !mcsema_real_eip !25
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !25
  %130 = load i64* %129, align 8, !mcsema_real_eip !25
  %uadd349.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %127, i64 %130)
  %131 = extractvalue { i64, i1 } %uadd349.i, 0
  %132 = xor i64 %131, %130, !mcsema_real_eip !26
  %133 = xor i64 %132, %127, !mcsema_real_eip !26
  %134 = and i64 %133, 16, !mcsema_real_eip !26
  %135 = icmp ne i64 %134, 0, !mcsema_real_eip !26
  %136 = icmp slt i64 %131, 0
  %137 = icmp eq i64 %131, 0, !mcsema_real_eip !26
  %138 = xor i64 %130, -9223372036854775808, !mcsema_real_eip !26
  %139 = xor i64 %138, %127, !mcsema_real_eip !26
  %140 = and i64 %132, %139, !mcsema_real_eip !26
  %141 = icmp slt i64 %140, 0
  %142 = trunc i64 %131 to i8, !mcsema_real_eip !26
  %143 = tail call i8 @llvm.ctpop.i8(i8 %142), !mcsema_real_eip !26
  %144 = and i8 %143, 1
  %145 = icmp eq i8 %144, 0
  %146 = extractvalue { i64, i1 } %uadd349.i, 1
  %147 = inttoptr i64 %131 to i64*, !mcsema_real_eip !27
  %148 = load i64* %147, align 8, !mcsema_real_eip !27
  %149 = add i64 %RBP_val.0.i, -24, !mcsema_real_eip !28
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !28
  store i64 %148, i64* %150, align 8, !mcsema_real_eip !28
  store i64 -4981261766360305936, i64* %102, align 8, !mcsema_real_eip !29
  store i64 %148, i64* %RAX.i, align 8, !mcsema_real_eip !29
  store i64 %RBX_val.0.i.ph, i64* %RBX.i, align 8, !mcsema_real_eip !29
  store i64 %RCX_val.0.i.ph, i64* %RCX.i, align 8, !mcsema_real_eip !29
  store i64 %127, i64* %RDX.i, align 8, !mcsema_real_eip !29
  store i64 %RSI_val.0.i.ph, i64* %RSI.i, align 8, !mcsema_real_eip !29
  store i64 %148, i64* %RDI.i, align 8, !mcsema_real_eip !29
  store i64 %101, i64* %RSP.i, align 8, !mcsema_real_eip !29
  store i64 %RBP_val.0.i, i64* %RBP.i, align 8, !mcsema_real_eip !29
  store i64 %R8_val.0.i.ph, i64* %R8.i, align 8, !mcsema_real_eip !29
  store i64 %R9_val.0.i.ph, i64* %R9.i, align 8, !mcsema_real_eip !29
  store i64 %R10_val.0.i.ph, i64* %R10.i, align 8, !mcsema_real_eip !29
  store i64 %R11_val.0.i.ph, i64* %R11.i, align 8, !mcsema_real_eip !29
  store i64 %R12_val.0.i.ph, i64* %R12.i, align 8, !mcsema_real_eip !29
  store i64 %R13_val.0.i.ph, i64* %R13.i, align 8, !mcsema_real_eip !29
  store i64 %R14_val.0.i.ph, i64* %R14.i, align 8, !mcsema_real_eip !29
  store i64 %R15_val.0.i.ph, i64* %R15.i, align 8, !mcsema_real_eip !29
  store i64 %17, i64* %RIP.i, align 8, !mcsema_real_eip !29
  store i1 %146, i1* %CF.i, align 1, !mcsema_real_eip !29
  store i1 %145, i1* %PF.i, align 1, !mcsema_real_eip !29
  store i1 %135, i1* %AF.i, align 1, !mcsema_real_eip !29
  store i1 %137, i1* %ZF.i, align 1, !mcsema_real_eip !29
  store i1 %136, i1* %SF.i, align 1, !mcsema_real_eip !29
  store i1 %141, i1* %OF.i, align 1, !mcsema_real_eip !29
  store i1 %18, i1* %DF.i, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !29
  store i1 %21, i1* %FPU_B.i, align 1, !mcsema_real_eip !29
  store i1 %22, i1* %FPU_C3.i, align 1, !mcsema_real_eip !29
  store i3 %23, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !29
  store i1 %24, i1* %FPU_C2.i, align 1, !mcsema_real_eip !29
  store i1 %25, i1* %FPU_C1.i, align 1, !mcsema_real_eip !29
  store i1 %26, i1* %FPU_C0.i, align 1, !mcsema_real_eip !29
  store i1 %27, i1* %FPU_ES.i, align 1, !mcsema_real_eip !29
  store i1 %28, i1* %FPU_SF.i, align 1, !mcsema_real_eip !29
  store i1 %29, i1* %FPU_PE.i, align 1, !mcsema_real_eip !29
  store i1 %30, i1* %FPU_UE.i, align 1, !mcsema_real_eip !29
  store i1 %31, i1* %FPU_OE.i, align 1, !mcsema_real_eip !29
  store i1 %32, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !29
  store i1 %33, i1* %FPU_DE.i, align 1, !mcsema_real_eip !29
  store i1 %34, i1* %FPU_IE.i, align 1, !mcsema_real_eip !29
  store i1 %35, i1* %FPU_X.i, align 1, !mcsema_real_eip !29
  store i2 %36, i2* %FPU_RC.i, align 1, !mcsema_real_eip !29
  store i2 %37, i2* %FPU_PC.i, align 1, !mcsema_real_eip !29
  store i1 %38, i1* %FPU_PM.i, align 1, !mcsema_real_eip !29
  store i1 %39, i1* %FPU_UM.i, align 1, !mcsema_real_eip !29
  store i1 %40, i1* %FPU_OM.i, align 1, !mcsema_real_eip !29
  store i1 %41, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !29
  store i1 %42, i1* %FPU_DM.i, align 1, !mcsema_real_eip !29
  store i1 %43, i1* %FPU_IM.i, align 1, !mcsema_real_eip !29
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !29
  store i64 %48, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !29
  store i16 %49, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !29
  store i64 %50, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !29
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !29
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !29
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !29
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !29
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !29
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !29
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !29
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !29
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !29
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !29
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !29
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !29
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !29
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !29
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !29
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !29
  store i64 %STACK_BASE_val.0.i.ph, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !29
  store i64 %STACK_LIMIT_val.0.i.ph, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !29
  call void @llvm.lifetime.start(i64 128, i8* %94)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %94, i8* %1, i32 128, i32 16, i1 false)
  store i64 %RBP_val.0.i, i64* %104, align 8, !mcsema_real_eip !2
  store i64 %148, i64* %106, align 8, !mcsema_real_eip !15
  store i32 1, i32* %108, align 4, !mcsema_real_eip !16
  %151 = load i64* %106, align 8, !mcsema_real_eip !30
  %152 = tail call x86_64_sysvcc i64 @strlen(i64 %151), !mcsema_real_eip !31
  %153 = trunc i64 %152 to i32, !mcsema_real_eip !32
  store i32 %153, i32* %110, align 4, !mcsema_real_eip !32
  %154 = add i32 %153, -1
  %155 = xor i32 %154, %153, !mcsema_real_eip !33
  %156 = and i32 %155, 16, !mcsema_real_eip !33
  %157 = icmp ne i32 %156, 0, !mcsema_real_eip !33
  %158 = trunc i32 %154 to i8, !mcsema_real_eip !33
  %159 = tail call i8 @llvm.ctpop.i8(i8 %158), !mcsema_real_eip !33
  %160 = and i8 %159, 1
  %161 = icmp eq i8 %160, 0
  %162 = icmp eq i32 %154, 0, !mcsema_real_eip !33
  %163 = icmp slt i32 %154, 0
  %164 = icmp eq i32 %153, 0
  %165 = and i32 %155, %153, !mcsema_real_eip !33
  %166 = icmp slt i32 %165, 0
  %167 = xor i1 %163, %166
  %168 = or i1 %162, %167, !mcsema_real_eip !34
  br i1 %168, label %sub_7.exit.i, label %block_0x2f.i.i, !mcsema_real_eip !34

block_0x2f.i.i:                                   ; preds = %block_0xef.i
  %169 = load i64* %106, align 8, !mcsema_real_eip !35
  %170 = inttoptr i64 %169 to i8*
  %171 = load i8* %170, align 1, !mcsema_real_eip !36
  store i8 %171, i8* %112, align 1, !mcsema_real_eip !17
  %172 = load i32* %110, align 4, !mcsema_real_eip !37
  %173 = sext i32 %172 to i64, !mcsema_real_eip !38
  %174 = add nsw i64 %173, -1, !mcsema_real_eip !39
  %175 = load i64* %106, align 8, !mcsema_real_eip !40
  %176 = add i64 %174, %175
  %177 = inttoptr i64 %176 to i8*
  %178 = load i8* %177, align 1, !mcsema_real_eip !41
  store i8 %178, i8* %114, align 1, !mcsema_real_eip !18
  %179 = load i8* %112, align 1, !mcsema_real_eip !42
  %180 = sub i8 %179, %178, !mcsema_real_eip !43
  %181 = xor i8 %180, %179, !mcsema_real_eip !43
  %182 = xor i8 %181, %178, !mcsema_real_eip !43
  %183 = and i8 %182, 16, !mcsema_real_eip !43
  %184 = icmp ne i8 %183, 0, !mcsema_real_eip !43
  %185 = tail call i8 @llvm.ctpop.i8(i8 %180), !mcsema_real_eip !43
  %186 = and i8 %185, 1
  %187 = icmp eq i8 %186, 0
  %188 = icmp eq i8 %179, %178
  %189 = icmp slt i8 %180, 0
  %190 = icmp ult i8 %179, %178, !mcsema_real_eip !43
  %191 = xor i8 %179, %178, !mcsema_real_eip !43
  %192 = and i8 %181, %191, !mcsema_real_eip !43
  %193 = icmp slt i8 %192, 0
  br i1 %188, label %sub_7.exit.thread.i, label %sub_7.exit.i, !mcsema_real_eip !44

sub_7.exit.thread.i:                              ; preds = %block_0x2f.i.i
  %.lcssa146 = phi i1 [ %193, %block_0x2f.i.i ]
  %.lcssa145 = phi i1 [ %190, %block_0x2f.i.i ]
  %.lcssa144 = phi i1 [ %189, %block_0x2f.i.i ]
  %.lcssa143 = phi i1 [ %187, %block_0x2f.i.i ]
  %.lcssa142 = phi i1 [ %184, %block_0x2f.i.i ]
  %.lcssa141 = phi i64 [ %174, %block_0x2f.i.i ]
  %.lcssa = phi i64 [ %151, %block_0x2f.i.i ]
  store i32 0, i32* %108, align 4, !mcsema_real_eip !45
  %194 = load i64* %104, align 8, !mcsema_real_eip !46
  store i64 0, i64* %RAX.i, align 8, !mcsema_real_eip !47
  store i64 %RBX_val.0.i.ph, i64* %RBX.i, align 8, !mcsema_real_eip !47
  store i64 %RCX_val.0.i.ph, i64* %RCX.i, align 8, !mcsema_real_eip !47
  store i64 %.lcssa141, i64* %RDX.i, align 8, !mcsema_real_eip !47
  store i64 %RSI_val.0.i.ph, i64* %RSI.i, align 8, !mcsema_real_eip !47
  store i64 %.lcssa, i64* %RDI.i, align 8, !mcsema_real_eip !47
  store i64 %93, i64* %RSP.i, align 8, !mcsema_real_eip !47
  store i64 %194, i64* %RBP.i, align 8, !mcsema_real_eip !47
  store i64 %R8_val.0.i.ph, i64* %R8.i, align 8, !mcsema_real_eip !47
  store i64 %R9_val.0.i.ph, i64* %R9.i, align 8, !mcsema_real_eip !47
  store i64 %R10_val.0.i.ph, i64* %R10.i, align 8, !mcsema_real_eip !47
  store i64 %R11_val.0.i.ph, i64* %R11.i, align 8, !mcsema_real_eip !47
  store i64 %R12_val.0.i.ph, i64* %R12.i, align 8, !mcsema_real_eip !47
  store i64 %R13_val.0.i.ph, i64* %R13.i, align 8, !mcsema_real_eip !47
  store i64 %R14_val.0.i.ph, i64* %R14.i, align 8, !mcsema_real_eip !47
  store i64 %R15_val.0.i.ph, i64* %R15.i, align 8, !mcsema_real_eip !47
  store i64 %17, i64* %RIP.i, align 8, !mcsema_real_eip !47
  store i1 %.lcssa145, i1* %CF.i, align 1, !mcsema_real_eip !47
  store i1 %.lcssa143, i1* %PF.i, align 1, !mcsema_real_eip !47
  store i1 %.lcssa142, i1* %AF.i, align 1, !mcsema_real_eip !47
  store i1 true, i1* %ZF.i, align 1, !mcsema_real_eip !47
  store i1 %.lcssa144, i1* %SF.i, align 1, !mcsema_real_eip !47
  store i1 %.lcssa146, i1* %OF.i, align 1, !mcsema_real_eip !47
  store i1 %18, i1* %DF.i, align 1, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %94, i32 128, i32 8, i1 false), !mcsema_real_eip !47
  store i1 %21, i1* %FPU_B.i, align 1, !mcsema_real_eip !47
  store i1 %22, i1* %FPU_C3.i, align 1, !mcsema_real_eip !47
  store i3 %23, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !47
  store i1 %24, i1* %FPU_C2.i, align 1, !mcsema_real_eip !47
  store i1 %25, i1* %FPU_C1.i, align 1, !mcsema_real_eip !47
  store i1 %26, i1* %FPU_C0.i, align 1, !mcsema_real_eip !47
  store i1 %27, i1* %FPU_ES.i, align 1, !mcsema_real_eip !47
  store i1 %28, i1* %FPU_SF.i, align 1, !mcsema_real_eip !47
  store i1 %29, i1* %FPU_PE.i, align 1, !mcsema_real_eip !47
  store i1 %30, i1* %FPU_UE.i, align 1, !mcsema_real_eip !47
  store i1 %31, i1* %FPU_OE.i, align 1, !mcsema_real_eip !47
  store i1 %32, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !47
  store i1 %33, i1* %FPU_DE.i, align 1, !mcsema_real_eip !47
  store i1 %34, i1* %FPU_IE.i, align 1, !mcsema_real_eip !47
  store i1 %35, i1* %FPU_X.i, align 1, !mcsema_real_eip !47
  store i2 %36, i2* %FPU_RC.i, align 1, !mcsema_real_eip !47
  store i2 %37, i2* %FPU_PC.i, align 1, !mcsema_real_eip !47
  store i1 %38, i1* %FPU_PM.i, align 1, !mcsema_real_eip !47
  store i1 %39, i1* %FPU_UM.i, align 1, !mcsema_real_eip !47
  store i1 %40, i1* %FPU_OM.i, align 1, !mcsema_real_eip !47
  store i1 %41, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !47
  store i1 %42, i1* %FPU_DM.i, align 1, !mcsema_real_eip !47
  store i1 %43, i1* %FPU_IM.i, align 1, !mcsema_real_eip !47
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !47
  store i64 %48, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !47
  store i16 %49, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !47
  store i64 %50, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !47
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !47
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !47
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !47
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !47
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !47
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !47
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !47
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !47
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !47
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !47
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !47
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !47
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !47
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !47
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !47
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !47
  store i64 %STACK_BASE_val.0.i.ph, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !47
  store i64 %STACK_LIMIT_val.0.i.ph, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !47
  call void @llvm.lifetime.end(i64 128, i8* %94)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %20, i32 128, i32 4, i1 false), !mcsema_real_eip !29
  br label %block_0x11a.i

sub_7.exit.i:                                     ; preds = %block_0x2f.i.i, %block_0xef.i
  %ZF_val.0.i.i = phi i1 [ %162, %block_0xef.i ], [ false, %block_0x2f.i.i ]
  %PF_val.0.i.i = phi i1 [ %161, %block_0xef.i ], [ %187, %block_0x2f.i.i ]
  %AF_val.0.i.i = phi i1 [ %157, %block_0xef.i ], [ %184, %block_0x2f.i.i ]
  %CF_val.0.i.i = phi i1 [ %164, %block_0xef.i ], [ %190, %block_0x2f.i.i ]
  %RDX_val.0.i.i = phi i64 [ %127, %block_0xef.i ], [ %174, %block_0x2f.i.i ]
  %SF_val.0.i.i = phi i1 [ %163, %block_0xef.i ], [ %189, %block_0x2f.i.i ]
  %OF_val.0.i.i = phi i1 [ %166, %block_0xef.i ], [ %193, %block_0x2f.i.i ]
  %195 = load i32* %108, align 4, !mcsema_real_eip !48
  %196 = zext i32 %195 to i64, !mcsema_real_eip !48
  %197 = load i64* %104, align 8, !mcsema_real_eip !46
  store i64 %196, i64* %RAX.i, align 8, !mcsema_real_eip !47
  store i64 %RBX_val.0.i.ph, i64* %RBX.i, align 8, !mcsema_real_eip !47
  store i64 %RCX_val.0.i.ph, i64* %RCX.i, align 8, !mcsema_real_eip !47
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !47
  store i64 %RSI_val.0.i.ph, i64* %RSI.i, align 8, !mcsema_real_eip !47
  store i64 %151, i64* %RDI.i, align 8, !mcsema_real_eip !47
  store i64 %93, i64* %RSP.i, align 8, !mcsema_real_eip !47
  store i64 %197, i64* %RBP.i, align 8, !mcsema_real_eip !47
  store i64 %R8_val.0.i.ph, i64* %R8.i, align 8, !mcsema_real_eip !47
  store i64 %R9_val.0.i.ph, i64* %R9.i, align 8, !mcsema_real_eip !47
  store i64 %R10_val.0.i.ph, i64* %R10.i, align 8, !mcsema_real_eip !47
  store i64 %R11_val.0.i.ph, i64* %R11.i, align 8, !mcsema_real_eip !47
  store i64 %R12_val.0.i.ph, i64* %R12.i, align 8, !mcsema_real_eip !47
  store i64 %R13_val.0.i.ph, i64* %R13.i, align 8, !mcsema_real_eip !47
  store i64 %R14_val.0.i.ph, i64* %R14.i, align 8, !mcsema_real_eip !47
  store i64 %R15_val.0.i.ph, i64* %R15.i, align 8, !mcsema_real_eip !47
  store i64 %17, i64* %RIP.i, align 8, !mcsema_real_eip !47
  store i1 %CF_val.0.i.i, i1* %CF.i, align 1, !mcsema_real_eip !47
  store i1 %PF_val.0.i.i, i1* %PF.i, align 1, !mcsema_real_eip !47
  store i1 %AF_val.0.i.i, i1* %AF.i, align 1, !mcsema_real_eip !47
  store i1 %ZF_val.0.i.i, i1* %ZF.i, align 1, !mcsema_real_eip !47
  store i1 %SF_val.0.i.i, i1* %SF.i, align 1, !mcsema_real_eip !47
  store i1 %OF_val.0.i.i, i1* %OF.i, align 1, !mcsema_real_eip !47
  store i1 %18, i1* %DF.i, align 1, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %94, i32 128, i32 8, i1 false), !mcsema_real_eip !47
  store i1 %21, i1* %FPU_B.i, align 1, !mcsema_real_eip !47
  store i1 %22, i1* %FPU_C3.i, align 1, !mcsema_real_eip !47
  store i3 %23, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !47
  store i1 %24, i1* %FPU_C2.i, align 1, !mcsema_real_eip !47
  store i1 %25, i1* %FPU_C1.i, align 1, !mcsema_real_eip !47
  store i1 %26, i1* %FPU_C0.i, align 1, !mcsema_real_eip !47
  store i1 %27, i1* %FPU_ES.i, align 1, !mcsema_real_eip !47
  store i1 %28, i1* %FPU_SF.i, align 1, !mcsema_real_eip !47
  store i1 %29, i1* %FPU_PE.i, align 1, !mcsema_real_eip !47
  store i1 %30, i1* %FPU_UE.i, align 1, !mcsema_real_eip !47
  store i1 %31, i1* %FPU_OE.i, align 1, !mcsema_real_eip !47
  store i1 %32, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !47
  store i1 %33, i1* %FPU_DE.i, align 1, !mcsema_real_eip !47
  store i1 %34, i1* %FPU_IE.i, align 1, !mcsema_real_eip !47
  store i1 %35, i1* %FPU_X.i, align 1, !mcsema_real_eip !47
  store i2 %36, i2* %FPU_RC.i, align 1, !mcsema_real_eip !47
  store i2 %37, i2* %FPU_PC.i, align 1, !mcsema_real_eip !47
  store i1 %38, i1* %FPU_PM.i, align 1, !mcsema_real_eip !47
  store i1 %39, i1* %FPU_UM.i, align 1, !mcsema_real_eip !47
  store i1 %40, i1* %FPU_OM.i, align 1, !mcsema_real_eip !47
  store i1 %41, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !47
  store i1 %42, i1* %FPU_DM.i, align 1, !mcsema_real_eip !47
  store i1 %43, i1* %FPU_IM.i, align 1, !mcsema_real_eip !47
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !47
  store i64 %48, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !47
  store i16 %49, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !47
  store i64 %50, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !47
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !47
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !47
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !47
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !47
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !47
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !47
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !47
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !47
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !47
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !47
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !47
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !47
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !47
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !47
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !47
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !47
  store i64 %STACK_BASE_val.0.i.ph, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !47
  store i64 %STACK_LIMIT_val.0.i.ph, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !47
  call void @llvm.lifetime.end(i64 128, i8* %94)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %20, i32 128, i32 4, i1 false), !mcsema_real_eip !29
  %198 = icmp eq i32 %195, 0
  br i1 %198, label %block_0x11a.i.loopexit, label %block_0x12d.i, !mcsema_real_eip !49

block_0x12d.i:                                    ; preds = %sub_7.exit.i
  %199 = add i64 %197, -4, !mcsema_real_eip !50
  %200 = inttoptr i64 %199 to i32*
  %201 = load i32* %200, align 4, !mcsema_real_eip !50
  %202 = add i32 %201, 1
  store i32 %202, i32* %200, align 4, !mcsema_real_eip !50
  %203 = add i64 %197, -44, !mcsema_real_eip !13
  %204 = inttoptr i64 %203 to i32*
  %205 = load i32* %204, align 4, !mcsema_real_eip !13
  %206 = sub i32 %202, %205, !mcsema_real_eip !13
  %207 = xor i32 %206, %202, !mcsema_real_eip !13
  %208 = icmp slt i32 %206, 0
  %209 = xor i32 %205, %202, !mcsema_real_eip !13
  %210 = and i32 %207, %209, !mcsema_real_eip !13
  %211 = icmp slt i32 %210, 0
  %212 = xor i1 %208, %211
  br i1 %212, label %block_0xef.i, label %sub_c2.exit.loopexit, !mcsema_real_eip !14

block_0x11a.i.loopexit:                           ; preds = %sub_7.exit.i
  %.lcssa149 = phi i64 [ %197, %sub_7.exit.i ]
  %AF_val.0.i.i.lcssa = phi i1 [ %AF_val.0.i.i, %sub_7.exit.i ]
  br label %block_0x11a.i

block_0x11a.i:                                    ; preds = %block_0x11a.i.loopexit, %sub_7.exit.thread.i
  %213 = phi i64 [ %194, %sub_7.exit.thread.i ], [ %.lcssa149, %block_0x11a.i.loopexit ]
  %214 = phi i1 [ %.lcssa142, %sub_7.exit.thread.i ], [ %AF_val.0.i.i.lcssa, %block_0x11a.i.loopexit ]
  %215 = add i64 %213, -24, !mcsema_real_eip !51
  %216 = inttoptr i64 %215 to i64*, !mcsema_real_eip !51
  %217 = load i64* %216, align 8, !mcsema_real_eip !51
  store i64 -4981261766360305936, i64* %102, align 8, !mcsema_real_eip !52
  store i64 %217, i64* %RAX.i, align 8, !mcsema_real_eip !52
  store i64 %RBX_val.0.i.ph, i64* %RBX.i, align 8, !mcsema_real_eip !52
  store i64 %RCX_val.0.i.ph, i64* %RCX.i, align 8, !mcsema_real_eip !52
  store i64 %217, i64* %RDX.i, align 8, !mcsema_real_eip !52
  store i64 %217, i64* %RSI.i, align 8, !mcsema_real_eip !52
  store i64 %217, i64* %RDI.i, align 8, !mcsema_real_eip !52
  store i64 %101, i64* %RSP.i, align 8, !mcsema_real_eip !52
  store i64 %213, i64* %RBP.i, align 8, !mcsema_real_eip !52
  store i64 %R8_val.0.i.ph, i64* %R8.i, align 8, !mcsema_real_eip !52
  store i64 %R9_val.0.i.ph, i64* %R9.i, align 8, !mcsema_real_eip !52
  store i64 %R10_val.0.i.ph, i64* %R10.i, align 8, !mcsema_real_eip !52
  store i64 %R11_val.0.i.ph, i64* %R11.i, align 8, !mcsema_real_eip !52
  store i64 %R12_val.0.i.ph, i64* %R12.i, align 8, !mcsema_real_eip !52
  store i64 %R13_val.0.i.ph, i64* %R13.i, align 8, !mcsema_real_eip !52
  store i64 %R14_val.0.i.ph, i64* %R14.i, align 8, !mcsema_real_eip !52
  store i64 %R15_val.0.i.ph, i64* %R15.i, align 8, !mcsema_real_eip !52
  store i64 %17, i64* %RIP.i, align 8, !mcsema_real_eip !52
  store i1 false, i1* %CF.i, align 1, !mcsema_real_eip !52
  store i1 true, i1* %PF.i, align 1, !mcsema_real_eip !52
  store i1 %214, i1* %AF.i, align 1, !mcsema_real_eip !52
  store i1 true, i1* %ZF.i, align 1, !mcsema_real_eip !52
  store i1 false, i1* %SF.i, align 1, !mcsema_real_eip !52
  store i1 false, i1* %OF.i, align 1, !mcsema_real_eip !52
  store i1 %18, i1* %DF.i, align 1, !mcsema_real_eip !52
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !52
  store i1 %21, i1* %FPU_B.i, align 1, !mcsema_real_eip !52
  store i1 %22, i1* %FPU_C3.i, align 1, !mcsema_real_eip !52
  store i3 %23, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !52
  store i1 %24, i1* %FPU_C2.i, align 1, !mcsema_real_eip !52
  store i1 %25, i1* %FPU_C1.i, align 1, !mcsema_real_eip !52
  store i1 %26, i1* %FPU_C0.i, align 1, !mcsema_real_eip !52
  store i1 %27, i1* %FPU_ES.i, align 1, !mcsema_real_eip !52
  store i1 %28, i1* %FPU_SF.i, align 1, !mcsema_real_eip !52
  store i1 %29, i1* %FPU_PE.i, align 1, !mcsema_real_eip !52
  store i1 %30, i1* %FPU_UE.i, align 1, !mcsema_real_eip !52
  store i1 %31, i1* %FPU_OE.i, align 1, !mcsema_real_eip !52
  store i1 %32, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !52
  store i1 %33, i1* %FPU_DE.i, align 1, !mcsema_real_eip !52
  store i1 %34, i1* %FPU_IE.i, align 1, !mcsema_real_eip !52
  store i1 %35, i1* %FPU_X.i, align 1, !mcsema_real_eip !52
  store i2 %36, i2* %FPU_RC.i, align 1, !mcsema_real_eip !52
  store i2 %37, i2* %FPU_PC.i, align 1, !mcsema_real_eip !52
  store i1 %38, i1* %FPU_PM.i, align 1, !mcsema_real_eip !52
  store i1 %39, i1* %FPU_UM.i, align 1, !mcsema_real_eip !52
  store i1 %40, i1* %FPU_OM.i, align 1, !mcsema_real_eip !52
  store i1 %41, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !52
  store i1 %42, i1* %FPU_DM.i, align 1, !mcsema_real_eip !52
  store i1 %43, i1* %FPU_IM.i, align 1, !mcsema_real_eip !52
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !52
  store i64 %48, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !52
  store i16 %49, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !52
  store i64 %50, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !52
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !52
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !52
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !52
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !52
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !52
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !52
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !52
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !52
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !52
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !52
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !52
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !52
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !52
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !52
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !52
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !52
  store i64 %STACK_BASE_val.0.i.ph, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !52
  store i64 %STACK_LIMIT_val.0.i.ph, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !52
  call void @llvm.lifetime.start(i64 128, i8* %94)
  %218 = load <2 x i64>* %95, align 8
  %219 = load <2 x i64>* %96, align 8
  %220 = load <2 x i64>* %97, align 8
  %221 = load <2 x i64>* %98, align 8
  %222 = load <2 x i64>* %99, align 8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %94, i8* %1, i32 128, i32 16, i1 false)
  %223 = load <2 x i64>* %100, align 8
  store i64 %213, i64* %104, align 8, !mcsema_real_eip !53
  store i64 %217, i64* %116, align 8, !mcsema_real_eip !19
  store i64 %217, i64* %118, align 8, !mcsema_real_eip !20
  %224 = load i64* %116, align 8, !mcsema_real_eip !54
  %225 = inttoptr i64 %109 to i64*, !mcsema_real_eip !55
  store i64 %224, i64* %225, align 8, !mcsema_real_eip !55
  %226 = load i64* %118, align 8, !mcsema_real_eip !56
  store i64 %226, i64* %120, align 8, !mcsema_real_eip !21
  %227 = load i64* %225, align 8, !mcsema_real_eip !57
  %228 = inttoptr i64 %227 to i8*
  %229 = load i8* %228, align 1, !mcsema_real_eip !58
  store i8 %229, i8* %122, align 1, !mcsema_real_eip !22
  %230 = tail call i8 @llvm.ctpop.i8(i8 %229) #0, !mcsema_real_eip !59
  %231 = icmp eq i8 %229, 0, !mcsema_real_eip !59
  br i1 %231, label %sub_64.exit.i, label %block_0x8c.outer.i.i.preheader, !mcsema_real_eip !60

block_0x8c.outer.i.i.preheader:                   ; preds = %block_0x11a.i
  br label %block_0x8c.outer.i.i

block_0x8c.outer.i.i:                             ; preds = %block_0x9b.i.i, %block_0x8c.outer.i.i.preheader
  %.ph.i.i = phi i8 [ %239, %block_0x9b.i.i ], [ %229, %block_0x8c.outer.i.i.preheader ]
  %RDX_val.0.ph.i.i = phi i64 [ %235, %block_0x9b.i.i ], [ %217, %block_0x8c.outer.i.i.preheader ]
  br label %block_0x8c.i.i

block_0x8c.i.i:                                   ; preds = %block_0x92.i.i, %block_0x8c.outer.i.i
  %232 = phi i8 [ %244, %block_0x92.i.i ], [ %.ph.i.i, %block_0x8c.outer.i.i ]
  %233 = icmp eq i8 %232, 47
  %234 = load i64* %120, align 8, !mcsema_real_eip !61
  br i1 %233, label %block_0x92.i.i, label %block_0x9b.i.i, !mcsema_real_eip !62

block_0x9b.i.i:                                   ; preds = %block_0x8c.i.i
  %.lcssa153 = phi i64 [ %234, %block_0x8c.i.i ]
  %.lcssa151 = phi i8 [ %232, %block_0x8c.i.i ]
  %235 = zext i8 %.lcssa151 to i64
  %236 = inttoptr i64 %.lcssa153 to i8*
  store i8 %.lcssa151, i8* %236, align 1, !mcsema_real_eip !63
  %237 = load i64* %225, align 8, !mcsema_real_eip !64
  %238 = inttoptr i64 %237 to i8*
  %239 = load i8* %238, align 1, !mcsema_real_eip !65
  store i8 %239, i8* %122, align 1, !mcsema_real_eip !66
  %240 = icmp eq i8 %239, 0, !mcsema_real_eip !59
  br i1 %240, label %sub_64.exit.i.loopexit137, label %block_0x8c.outer.i.i, !mcsema_real_eip !60

block_0x92.i.i:                                   ; preds = %block_0x8c.i.i
  %241 = inttoptr i64 %234 to i8*
  store i8 92, i8* %241, align 1, !mcsema_real_eip !67
  %242 = load i64* %225, align 8, !mcsema_real_eip !64
  %243 = inttoptr i64 %242 to i8*
  %244 = load i8* %243, align 1, !mcsema_real_eip !65
  store i8 %244, i8* %122, align 1, !mcsema_real_eip !66
  %245 = icmp eq i8 %244, 0, !mcsema_real_eip !59
  br i1 %245, label %sub_64.exit.i.loopexit, label %block_0x8c.i.i, !mcsema_real_eip !60

sub_64.exit.i.loopexit:                           ; preds = %block_0x92.i.i
  %RDX_val.0.ph.i.i.lcssa155 = phi i64 [ %RDX_val.0.ph.i.i, %block_0x92.i.i ]
  br label %sub_64.exit.i

sub_64.exit.i.loopexit137:                        ; preds = %block_0x9b.i.i
  %.lcssa156 = phi i64 [ %235, %block_0x9b.i.i ]
  br label %sub_64.exit.i

sub_64.exit.i:                                    ; preds = %sub_64.exit.i.loopexit137, %sub_64.exit.i.loopexit, %block_0x11a.i
  %PF_val.0.in.in.i.i = phi i8 [ %230, %block_0x11a.i ], [ 0, %sub_64.exit.i.loopexit ], [ 0, %sub_64.exit.i.loopexit137 ]
  %RDX_val.1.i.i = phi i64 [ %217, %block_0x11a.i ], [ %RDX_val.0.ph.i.i.lcssa155, %sub_64.exit.i.loopexit ], [ %.lcssa156, %sub_64.exit.i.loopexit137 ]
  %PF_val.0.in.i.i = and i8 %PF_val.0.in.in.i.i, 1
  %PF_val.0.i65.i = icmp eq i8 %PF_val.0.in.i.i, 0
  %246 = load i64* %104, align 8, !mcsema_real_eip !68
  store i64 0, i64* %RAX.i, align 8, !mcsema_real_eip !69
  store <2 x i64> %218, <2 x i64>* %95, align 8
  store i64 %RDX_val.1.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !69
  store i64 %217, i64* %RSI.i, align 8, !mcsema_real_eip !69
  store i64 %217, i64* %RDI.i, align 8, !mcsema_real_eip !69
  store i64 %93, i64* %RSP.i, align 8, !mcsema_real_eip !69
  store i64 %246, i64* %RBP.i, align 8, !mcsema_real_eip !69
  store <2 x i64> %219, <2 x i64>* %96, align 8
  store <2 x i64> %220, <2 x i64>* %97, align 8
  store <2 x i64> %221, <2 x i64>* %98, align 8
  store <2 x i64> %222, <2 x i64>* %99, align 8
  store i64 %17, i64* %RIP.i, align 8, !mcsema_real_eip !69
  store i1 false, i1* %CF.i, align 1, !mcsema_real_eip !69
  store i1 %PF_val.0.i65.i, i1* %PF.i, align 1, !mcsema_real_eip !69
  store i1 false, i1* %AF.i, align 1, !mcsema_real_eip !69
  store i1 true, i1* %ZF.i, align 1, !mcsema_real_eip !69
  store i1 false, i1* %SF.i, align 1, !mcsema_real_eip !69
  store i1 false, i1* %OF.i, align 1, !mcsema_real_eip !69
  store i1 %18, i1* %DF.i, align 1, !mcsema_real_eip !69
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %94, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !69
  store i1 %21, i1* %FPU_B.i, align 1, !mcsema_real_eip !69
  store i1 %22, i1* %FPU_C3.i, align 1, !mcsema_real_eip !69
  store i3 %23, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !69
  store i1 %24, i1* %FPU_C2.i, align 1, !mcsema_real_eip !69
  store i1 %25, i1* %FPU_C1.i, align 1, !mcsema_real_eip !69
  store i1 %26, i1* %FPU_C0.i, align 1, !mcsema_real_eip !69
  store i1 %27, i1* %FPU_ES.i, align 1, !mcsema_real_eip !69
  store i1 %28, i1* %FPU_SF.i, align 1, !mcsema_real_eip !69
  store i1 %29, i1* %FPU_PE.i, align 1, !mcsema_real_eip !69
  store i1 %30, i1* %FPU_UE.i, align 1, !mcsema_real_eip !69
  store i1 %31, i1* %FPU_OE.i, align 1, !mcsema_real_eip !69
  store i1 %32, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !69
  store i1 %33, i1* %FPU_DE.i, align 1, !mcsema_real_eip !69
  store i1 %34, i1* %FPU_IE.i, align 1, !mcsema_real_eip !69
  store i1 %35, i1* %FPU_X.i, align 1, !mcsema_real_eip !69
  store i2 %36, i2* %FPU_RC.i, align 1, !mcsema_real_eip !69
  store i2 %37, i2* %FPU_PC.i, align 1, !mcsema_real_eip !69
  store i1 %38, i1* %FPU_PM.i, align 1, !mcsema_real_eip !69
  store i1 %39, i1* %FPU_UM.i, align 1, !mcsema_real_eip !69
  store i1 %40, i1* %FPU_OM.i, align 1, !mcsema_real_eip !69
  store i1 %41, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !69
  store i1 %42, i1* %FPU_DM.i, align 1, !mcsema_real_eip !69
  store i1 %43, i1* %FPU_IM.i, align 1, !mcsema_real_eip !69
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !69
  store i64 %48, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !69
  store i16 %49, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !69
  store i64 %50, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !69
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !69
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !69
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !69
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !69
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !69
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !69
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !69
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !69
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !69
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !69
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !69
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !69
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !69
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !69
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !69
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !69
  store <2 x i64> %223, <2 x i64>* %100, align 1
  call void @llvm.lifetime.end(i64 128, i8* %94)
  %247 = bitcast <2 x i64> %218 to i128
  %trunc.i = trunc i128 %247 to i64
  %248 = lshr i128 %247, 64
  %249 = trunc i128 %248 to i64
  %250 = bitcast <2 x i64> %219 to i128
  %trunc77.i = trunc i128 %250 to i64
  %251 = lshr i128 %250, 64
  %252 = trunc i128 %251 to i64
  %253 = bitcast <2 x i64> %220 to i128
  %trunc78.i = trunc i128 %253 to i64
  %254 = lshr i128 %253, 64
  %255 = trunc i128 %254 to i64
  %256 = bitcast <2 x i64> %221 to i128
  %trunc79.i = trunc i128 %256 to i64
  %257 = lshr i128 %256, 64
  %258 = trunc i128 %257 to i64
  %259 = bitcast <2 x i64> %222 to i128
  %trunc80.i = trunc i128 %259 to i64
  %260 = lshr i128 %259, 64
  %261 = trunc i128 %260 to i64
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %20, i32 128, i32 4, i1 false), !mcsema_real_eip !52
  %262 = bitcast <2 x i64> %223 to i128
  %trunc81.i = trunc i128 %262 to i64
  %263 = lshr i128 %262, 64
  %264 = trunc i128 %263 to i64
  %265 = add i64 %246, -4, !mcsema_real_eip !50
  %266 = inttoptr i64 %265 to i32*
  %267 = load i32* %266, align 4, !mcsema_real_eip !50
  %268 = add i32 %267, 1
  store i32 %268, i32* %266, align 4, !mcsema_real_eip !50
  %269 = add i64 %246, -44, !mcsema_real_eip !13
  %270 = inttoptr i64 %269 to i32*
  %271 = load i32* %270, align 4, !mcsema_real_eip !13
  %272 = sub i32 %268, %271, !mcsema_real_eip !13
  %273 = xor i32 %272, %268, !mcsema_real_eip !13
  %274 = icmp slt i32 %272, 0
  %275 = xor i32 %271, %268, !mcsema_real_eip !13
  %276 = and i32 %273, %275, !mcsema_real_eip !13
  %277 = icmp slt i32 %276, 0
  %278 = xor i1 %274, %277
  br i1 %278, label %block_0xef.i.outer, label %sub_c2.exit.loopexit138, !mcsema_real_eip !14

sub_c2.exit.loopexit:                             ; preds = %block_0x12d.i
  %RBX_val.0.i.ph.lcssa = phi i64 [ %RBX_val.0.i.ph, %block_0x12d.i ]
  %RCX_val.0.i.ph.lcssa = phi i64 [ %RCX_val.0.i.ph, %block_0x12d.i ]
  %RSI_val.0.i.ph.lcssa = phi i64 [ %RSI_val.0.i.ph, %block_0x12d.i ]
  %R8_val.0.i.ph.lcssa = phi i64 [ %R8_val.0.i.ph, %block_0x12d.i ]
  %R9_val.0.i.ph.lcssa = phi i64 [ %R9_val.0.i.ph, %block_0x12d.i ]
  %R10_val.0.i.ph.lcssa = phi i64 [ %R10_val.0.i.ph, %block_0x12d.i ]
  %R11_val.0.i.ph.lcssa = phi i64 [ %R11_val.0.i.ph, %block_0x12d.i ]
  %R12_val.0.i.ph.lcssa = phi i64 [ %R12_val.0.i.ph, %block_0x12d.i ]
  %R13_val.0.i.ph.lcssa = phi i64 [ %R13_val.0.i.ph, %block_0x12d.i ]
  %R14_val.0.i.ph.lcssa = phi i64 [ %R14_val.0.i.ph, %block_0x12d.i ]
  %STACK_BASE_val.0.i.ph.lcssa = phi i64 [ %STACK_BASE_val.0.i.ph, %block_0x12d.i ]
  %STACK_LIMIT_val.0.i.ph.lcssa = phi i64 [ %STACK_LIMIT_val.0.i.ph, %block_0x12d.i ]
  %R15_val.0.i.ph.lcssa = phi i64 [ %R15_val.0.i.ph, %block_0x12d.i ]
  %.lcssa150 = phi i64 [ %197, %block_0x12d.i ]
  %RDX_val.0.i.i.lcssa148 = phi i64 [ %RDX_val.0.i.i, %block_0x12d.i ]
  %.lcssa140 = phi i64 [ %151, %block_0x12d.i ]
  br label %sub_c2.exit

sub_c2.exit.loopexit138:                          ; preds = %sub_64.exit.i
  %.lcssa177 = phi i64 [ %264, %sub_64.exit.i ]
  %trunc81.i.lcssa = phi i64 [ %trunc81.i, %sub_64.exit.i ]
  %.lcssa176 = phi i64 [ %261, %sub_64.exit.i ]
  %trunc80.i.lcssa = phi i64 [ %trunc80.i, %sub_64.exit.i ]
  %.lcssa175 = phi i64 [ %258, %sub_64.exit.i ]
  %trunc79.i.lcssa = phi i64 [ %trunc79.i, %sub_64.exit.i ]
  %.lcssa174 = phi i64 [ %255, %sub_64.exit.i ]
  %trunc78.i.lcssa = phi i64 [ %trunc78.i, %sub_64.exit.i ]
  %.lcssa173 = phi i64 [ %252, %sub_64.exit.i ]
  %trunc77.i.lcssa = phi i64 [ %trunc77.i, %sub_64.exit.i ]
  %.lcssa172 = phi i64 [ %249, %sub_64.exit.i ]
  %trunc.i.lcssa = phi i64 [ %trunc.i, %sub_64.exit.i ]
  %.lcssa171 = phi i64 [ %246, %sub_64.exit.i ]
  %RDX_val.1.i.i.lcssa = phi i64 [ %RDX_val.1.i.i, %sub_64.exit.i ]
  %.lcssa170 = phi i64 [ %217, %sub_64.exit.i ]
  br label %sub_c2.exit

sub_c2.exit:                                      ; preds = %sub_c2.exit.loopexit138, %sub_c2.exit.loopexit, %driverBlockRaw
  %R15_val.1.i = phi i64 [ %16, %driverBlockRaw ], [ %R15_val.0.i.ph.lcssa, %sub_c2.exit.loopexit ], [ %.lcssa176, %sub_c2.exit.loopexit138 ]
  %STACK_LIMIT_val.1.i = phi i64 [ %68, %driverBlockRaw ], [ %STACK_LIMIT_val.0.i.ph.lcssa, %sub_c2.exit.loopexit ], [ %.lcssa177, %sub_c2.exit.loopexit138 ]
  %STACK_BASE_val.1.i = phi i64 [ %67, %driverBlockRaw ], [ %STACK_BASE_val.0.i.ph.lcssa, %sub_c2.exit.loopexit ], [ %trunc81.i.lcssa, %sub_c2.exit.loopexit138 ]
  %R14_val.1.i = phi i64 [ %15, %driverBlockRaw ], [ %R14_val.0.i.ph.lcssa, %sub_c2.exit.loopexit ], [ %trunc80.i.lcssa, %sub_c2.exit.loopexit138 ]
  %R13_val.1.i = phi i64 [ %14, %driverBlockRaw ], [ %R13_val.0.i.ph.lcssa, %sub_c2.exit.loopexit ], [ %.lcssa175, %sub_c2.exit.loopexit138 ]
  %R12_val.1.i = phi i64 [ %13, %driverBlockRaw ], [ %R12_val.0.i.ph.lcssa, %sub_c2.exit.loopexit ], [ %trunc79.i.lcssa, %sub_c2.exit.loopexit138 ]
  %R11_val.1.i = phi i64 [ %12, %driverBlockRaw ], [ %R11_val.0.i.ph.lcssa, %sub_c2.exit.loopexit ], [ %.lcssa174, %sub_c2.exit.loopexit138 ]
  %R10_val.1.i = phi i64 [ %11, %driverBlockRaw ], [ %R10_val.0.i.ph.lcssa, %sub_c2.exit.loopexit ], [ %trunc78.i.lcssa, %sub_c2.exit.loopexit138 ]
  %R9_val.1.i = phi i64 [ %10, %driverBlockRaw ], [ %R9_val.0.i.ph.lcssa, %sub_c2.exit.loopexit ], [ %.lcssa173, %sub_c2.exit.loopexit138 ]
  %R8_val.1.i = phi i64 [ %9, %driverBlockRaw ], [ %R8_val.0.i.ph.lcssa, %sub_c2.exit.loopexit ], [ %trunc77.i.lcssa, %sub_c2.exit.loopexit138 ]
  %RBP_val.1.i = phi i64 [ %69, %driverBlockRaw ], [ %.lcssa150, %sub_c2.exit.loopexit ], [ %.lcssa171, %sub_c2.exit.loopexit138 ]
  %RDI_val.0.i = phi i64 [ %80, %driverBlockRaw ], [ %.lcssa140, %sub_c2.exit.loopexit ], [ %.lcssa170, %sub_c2.exit.loopexit138 ]
  %RSI_val.1.i = phi i64 [ %5, %driverBlockRaw ], [ %RSI_val.0.i.ph.lcssa, %sub_c2.exit.loopexit ], [ %.lcssa170, %sub_c2.exit.loopexit138 ]
  %RDX_val.0.i = phi i64 [ %4, %driverBlockRaw ], [ %RDX_val.0.i.i.lcssa148, %sub_c2.exit.loopexit ], [ %RDX_val.1.i.i.lcssa, %sub_c2.exit.loopexit138 ]
  %RCX_val.1.i = phi i64 [ %3, %driverBlockRaw ], [ %RCX_val.0.i.ph.lcssa, %sub_c2.exit.loopexit ], [ %.lcssa172, %sub_c2.exit.loopexit138 ]
  %RBX_val.1.i = phi i64 [ %2, %driverBlockRaw ], [ %RBX_val.0.i.ph.lcssa, %sub_c2.exit.loopexit ], [ %trunc.i.lcssa, %sub_c2.exit.loopexit138 ]
  %279 = add i64 %RBP_val.1.i, -16, !mcsema_real_eip !70
  %280 = inttoptr i64 %279 to i64*, !mcsema_real_eip !70
  %281 = load i64* %280, align 8, !mcsema_real_eip !70
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %281, i64 1)
  %282 = extractvalue { i64, i1 } %uadd.i, 0
  %283 = xor i64 %282, %281, !mcsema_real_eip !71
  %284 = and i64 %283, 16, !mcsema_real_eip !71
  %285 = icmp ne i64 %284, 0, !mcsema_real_eip !71
  %286 = icmp slt i64 %282, 0
  %287 = icmp eq i64 %282, 0, !mcsema_real_eip !71
  %288 = xor i64 %281, -9223372036854775808, !mcsema_real_eip !71
  %289 = and i64 %283, %288, !mcsema_real_eip !71
  %290 = icmp slt i64 %289, 0
  %291 = trunc i64 %282 to i8, !mcsema_real_eip !71
  %292 = tail call i8 @llvm.ctpop.i8(i8 %291), !mcsema_real_eip !71
  %293 = and i8 %292, 1
  %294 = icmp eq i8 %293, 0
  %295 = extractvalue { i64, i1 } %uadd.i, 1
  %296 = inttoptr i64 %282 to i8*
  store i8 2, i8* %296, align 1, !mcsema_real_eip !72
  %297 = inttoptr i64 %RBP_val.1.i to i64*, !mcsema_real_eip !73
  %298 = load i64* %297, align 8, !mcsema_real_eip !73
  %299 = add i64 %RBP_val.1.i, 16, !mcsema_real_eip !74
  store i64 %282, i64* %RAX.i, align 8, !mcsema_real_eip !74
  store i64 %RBX_val.1.i, i64* %RBX.i, align 8, !mcsema_real_eip !74
  store i64 %RCX_val.1.i, i64* %RCX.i, align 8, !mcsema_real_eip !74
  store i64 %RDX_val.0.i, i64* %RDX.i, align 8, !mcsema_real_eip !74
  store i64 %RSI_val.1.i, i64* %RSI.i, align 8, !mcsema_real_eip !74
  store i64 %RDI_val.0.i, i64* %RDI.i, align 8, !mcsema_real_eip !74
  store i64 %299, i64* %RSP.i, align 8, !mcsema_real_eip !74
  store i64 %298, i64* %RBP.i, align 8, !mcsema_real_eip !74
  store i64 %R8_val.1.i, i64* %R8.i, align 8, !mcsema_real_eip !74
  store i64 %R9_val.1.i, i64* %R9.i, align 8, !mcsema_real_eip !74
  store i64 %R10_val.1.i, i64* %R10.i, align 8, !mcsema_real_eip !74
  store i64 %R11_val.1.i, i64* %R11.i, align 8, !mcsema_real_eip !74
  store i64 %R12_val.1.i, i64* %R12.i, align 8, !mcsema_real_eip !74
  store i64 %R13_val.1.i, i64* %R13.i, align 8, !mcsema_real_eip !74
  store i64 %R14_val.1.i, i64* %R14.i, align 8, !mcsema_real_eip !74
  store i64 %R15_val.1.i, i64* %R15.i, align 8, !mcsema_real_eip !74
  store i64 %17, i64* %RIP.i, align 8, !mcsema_real_eip !74
  store i1 %295, i1* %CF.i, align 1, !mcsema_real_eip !74
  store i1 %294, i1* %PF.i, align 1, !mcsema_real_eip !74
  store i1 %285, i1* %AF.i, align 1, !mcsema_real_eip !74
  store i1 %287, i1* %ZF.i, align 1, !mcsema_real_eip !74
  store i1 %286, i1* %SF.i, align 1, !mcsema_real_eip !74
  store i1 %290, i1* %OF.i, align 1, !mcsema_real_eip !74
  store i1 %18, i1* %DF.i, align 1, !mcsema_real_eip !74
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !74
  store i1 %21, i1* %FPU_B.i, align 1, !mcsema_real_eip !74
  store i1 %22, i1* %FPU_C3.i, align 1, !mcsema_real_eip !74
  store i3 %23, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !74
  store i1 %24, i1* %FPU_C2.i, align 1, !mcsema_real_eip !74
  store i1 %25, i1* %FPU_C1.i, align 1, !mcsema_real_eip !74
  store i1 %26, i1* %FPU_C0.i, align 1, !mcsema_real_eip !74
  store i1 %27, i1* %FPU_ES.i, align 1, !mcsema_real_eip !74
  store i1 %28, i1* %FPU_SF.i, align 1, !mcsema_real_eip !74
  store i1 %29, i1* %FPU_PE.i, align 1, !mcsema_real_eip !74
  store i1 %30, i1* %FPU_UE.i, align 1, !mcsema_real_eip !74
  store i1 %31, i1* %FPU_OE.i, align 1, !mcsema_real_eip !74
  store i1 %32, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !74
  store i1 %33, i1* %FPU_DE.i, align 1, !mcsema_real_eip !74
  store i1 %34, i1* %FPU_IE.i, align 1, !mcsema_real_eip !74
  store i1 %35, i1* %FPU_X.i, align 1, !mcsema_real_eip !74
  store i2 %36, i2* %FPU_RC.i, align 1, !mcsema_real_eip !74
  store i2 %37, i2* %FPU_PC.i, align 1, !mcsema_real_eip !74
  store i1 %38, i1* %FPU_PM.i, align 1, !mcsema_real_eip !74
  store i1 %39, i1* %FPU_UM.i, align 1, !mcsema_real_eip !74
  store i1 %40, i1* %FPU_OM.i, align 1, !mcsema_real_eip !74
  store i1 %41, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !74
  store i1 %42, i1* %FPU_DM.i, align 1, !mcsema_real_eip !74
  store i1 %43, i1* %FPU_IM.i, align 1, !mcsema_real_eip !74
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !74
  store i64 %48, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !74
  store i16 %49, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !74
  store i64 %50, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !74
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !74
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !74
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !74
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !74
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !74
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !74
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !74
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !74
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !74
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !74
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !74
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !74
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !74
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !74
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !74
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !74
  store i64 %STACK_BASE_val.1.i, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !74
  store i64 %STACK_LIMIT_val.1.i, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !74
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
!2 = metadata !{i64 7, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 194, [12 x i8] c"\09pushq\09%rbp\00"}
!4 = metadata !{i64 202, [22 x i8] c"\09movq\09%rdi, -40(%rbp)\00"}
!5 = metadata !{i64 206, [22 x i8] c"\09movl\09%esi, -44(%rbp)\00"}
!6 = metadata !{i64 209, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!7 = metadata !{i64 216, [22 x i8] c"\09movl\09-44(%rbp), %eax\00"}
!8 = metadata !{i64 219, [6 x i8] c"\09cltq\00"}
!9 = metadata !{i64 221, [15 x i8] c"\09shlq\09$3, %rax\00"}
!10 = metadata !{i64 228, [9 x i8] c"\09callq\090\00"}
!11 = metadata !{i64 233, [22 x i8] c"\09movq\09%rax, -16(%rbp)\00"}
!12 = metadata !{i64 305, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!13 = metadata !{i64 308, [22 x i8] c"\09cmpl\09-44(%rbp), %eax\00"}
!14 = metadata !{i64 311, [8 x i8] c"\09jl\09-74\00"}
!15 = metadata !{i64 15, [22 x i8] c"\09movq\09%rdi, -24(%rbp)\00"}
!16 = metadata !{i64 19, [19 x i8] c"\09movl\09$1, -4(%rbp)\00"}
!17 = metadata !{i64 54, [20 x i8] c"\09movb\09%al, -9(%rbp)\00"}
!18 = metadata !{i64 76, [21 x i8] c"\09movb\09%al, -10(%rbp)\00"}
!19 = metadata !{i64 104, [22 x i8] c"\09movq\09%rdi, -40(%rbp)\00"}
!20 = metadata !{i64 108, [22 x i8] c"\09movq\09%rsi, -48(%rbp)\00"}
!21 = metadata !{i64 124, [22 x i8] c"\09movq\09%rax, -16(%rbp)\00"}
!22 = metadata !{i64 135, [21 x i8] c"\09movb\09%al, -17(%rbp)\00"}
!23 = metadata !{i64 239, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!24 = metadata !{i64 242, [6 x i8] c"\09cltq\00"}
!25 = metadata !{i64 252, [22 x i8] c"\09movq\09-40(%rbp), %rax\00"}
!26 = metadata !{i64 256, [17 x i8] c"\09addq\09%rdx, %rax\00"}
!27 = metadata !{i64 259, [19 x i8] c"\09movq\09(%rax), %rax\00"}
!28 = metadata !{i64 262, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!29 = metadata !{i64 273, [12 x i8] c"\09callq\09-271\00"}
!30 = metadata !{i64 26, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!31 = metadata !{i64 33, [9 x i8] c"\09callq\090\00"}
!32 = metadata !{i64 38, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!33 = metadata !{i64 41, [19 x i8] c"\09cmpl\09$1, -8(%rbp)\00"} ; [ DW_TAG_file_type ] [/]
!34 = metadata !{i64 45, [8 x i8] c"\09jle\0948\00"}
!35 = metadata !{i64 47, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!36 = metadata !{i64 51, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!37 = metadata !{i64 57, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!38 = metadata !{i64 60, [6 x i8] c"\09cltq\00"}
!39 = metadata !{i64 62, [21 x i8] c"\09leaq\09-1(%rax), %rdx\00"}
!40 = metadata !{i64 66, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!41 = metadata !{i64 73, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!42 = metadata !{i64 79, [23 x i8] c"\09movzbl\09-9(%rbp), %eax\00"}
!43 = metadata !{i64 83, [21 x i8] c"\09cmpb\09-10(%rbp), %al\00"}
!44 = metadata !{i64 86, [7 x i8] c"\09jne\097\00"}
!45 = metadata !{i64 88, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!46 = metadata !{i64 98, [7 x i8] c"\09leave\00"}
!47 = metadata !{i64 99, [6 x i8] c"\09retq\00"}
!48 = metadata !{i64 95, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!49 = metadata !{i64 280, [8 x i8] c"\09jne\0919\00"}
!50 = metadata !{i64 301, [19 x i8] c"\09addl\09$1, -4(%rbp)\00"}
!51 = metadata !{i64 282, [22 x i8] c"\09movq\09-24(%rbp), %rdx\00"}
!52 = metadata !{i64 296, [12 x i8] c"\09callq\09-201\00"}
!53 = metadata !{i64 100, [12 x i8] c"\09pushq\09%rbp\00"}
!54 = metadata !{i64 112, [22 x i8] c"\09movq\09-40(%rbp), %rax\00"}
!55 = metadata !{i64 116, [21 x i8] c"\09movq\09%rax, -8(%rbp)\00"}
!56 = metadata !{i64 120, [22 x i8] c"\09movq\09-48(%rbp), %rax\00"}
!57 = metadata !{i64 128, [21 x i8] c"\09movq\09-8(%rbp), %rax\00"}
!58 = metadata !{i64 132, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!59 = metadata !{i64 185, [20 x i8] c"\09cmpb\09$0, -17(%rbp)\00"}
!60 = metadata !{i64 189, [9 x i8] c"\09jne\09-51\00"}
!61 = metadata !{i64 155, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!62 = metadata !{i64 144, [7 x i8] c"\09jne\099\00"}
!63 = metadata !{i64 163, [18 x i8] c"\09movb\09%dl, (%rax)\00"}
!64 = metadata !{i64 175, [21 x i8] c"\09movq\09-8(%rbp), %rax\00"}
!65 = metadata !{i64 179, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!66 = metadata !{i64 182, [21 x i8] c"\09movb\09%al, -17(%rbp)\00"}
!67 = metadata !{i64 150, [18 x i8] c"\09movb\09$92, (%rax)\00"}
!68 = metadata !{i64 192, [11 x i8] c"\09popq\09%rbp\00"}
!69 = metadata !{i64 193, [6 x i8] c"\09retq\00"}
!70 = metadata !{i64 313, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!71 = metadata !{i64 317, [15 x i8] c"\09addq\09$1, %rax\00"}
!72 = metadata !{i64 321, [17 x i8] c"\09movb\09$2, (%rax)\00"}
!73 = metadata !{i64 325, [7 x i8] c"\09leave\00"}
!74 = metadata !{i64 326, [6 x i8] c"\09retq\00"}
