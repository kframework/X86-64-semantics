; ModuleID = 'Output/test_23_1.clang.opt.bc'
source_filename = "Output/test_23_1.clang.bc"
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
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %1 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %2 = load i64, i64* %RCX.i, align 8, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %3 = load i64, i64* %RDX.i, align 8, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %4 = bitcast i64* %RSI.i to <2 x i64>*
  %5 = load <2 x i64>, <2 x i64>* %4, align 8
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %6 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %7 = load i64, i64* %RBP.i, align 8, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %8 = bitcast i64* %R8.i to <2 x i64>*
  %9 = load <2 x i64>, <2 x i64>* %8, align 8
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %10 = bitcast i64* %R10.i to <2 x i64>*
  %11 = load <2 x i64>, <2 x i64>* %10, align 8
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %12 = bitcast i64* %R12.i to <2 x i64>*
  %13 = load <2 x i64>, <2 x i64>* %12, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %14 = bitcast i64* %R14.i to <2 x i64>*
  %15 = load <2 x i64>, <2 x i64>* %14, align 8
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %16 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %17 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !2
  %18 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %19, i32 128, i32 4, i1 false) #2, !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %22 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %35 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %36 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %37 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %38 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %39 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %40 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %41 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %42 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %43 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %44 = bitcast i8* %43 to i64*
  %45 = load i64, i64* %44, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %46 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %47 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %48 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %49 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %50 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %63 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %64 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %65 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %66 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %67 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %68 = load <2 x i64>, <2 x i64>* %67, align 8
  %69 = add i64 %6, -8
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !2
  store i64 %7, i64* %70, align 8, !mcsema_real_eip !2
  %71 = add i64 %6, -12, !mcsema_real_eip !3
  %72 = inttoptr i64 %71 to i32*
  store i32 0, i32* %72, align 4, !mcsema_real_eip !3
  %73 = add i64 %6, -16, !mcsema_real_eip !4
  %74 = inttoptr i64 %73 to i32*
  store i32 0, i32* %74, align 4, !mcsema_real_eip !4
  %75 = add i64 %6, -17, !mcsema_real_eip !5
  %76 = inttoptr i64 %75 to i8*
  store i8 119, i8* %76, align 1, !mcsema_real_eip !5
  %77 = load i32, i32* %74, align 4, !mcsema_real_eip !6
  %78 = add i32 %77, -1
  %79 = xor i32 %78, %77, !mcsema_real_eip !6
  %80 = and i32 %79, 16, !mcsema_real_eip !6
  %81 = icmp ne i32 %80, 0, !mcsema_real_eip !6
  %82 = trunc i32 %78 to i8, !mcsema_real_eip !6
  %83 = tail call i8 @llvm.ctpop.i8(i8 %82) #2, !mcsema_real_eip !6
  %84 = icmp eq i32 %78, 0, !mcsema_real_eip !6
  %85 = icmp slt i32 %78, 0
  %86 = icmp eq i32 %77, 0
  %87 = and i32 %79, %77, !mcsema_real_eip !6
  %88 = icmp slt i32 %87, 0
  %tmp49.i = xor i1 %85, %88
  br i1 %tmp49.i, label %block_0x29.lr.ph.i, label %sub_0.exit, !mcsema_real_eip !7

block_0x29.lr.ph.i:                               ; preds = %driverBlockRaw
  %89 = add i64 %6, -24, !mcsema_real_eip !8
  %90 = inttoptr i64 %89 to i32*
  %91 = add i64 %6, -28, !mcsema_real_eip !9
  %92 = inttoptr i64 %91 to i32*
  %93 = add i64 %6, -32
  %94 = inttoptr i64 %93 to i32*
  %95 = add i64 %6, -36
  %96 = inttoptr i64 %95 to i32*
  %97 = add i64 %6, -40
  %98 = inttoptr i64 %97 to i32*
  %99 = add i64 %6, -44
  %100 = inttoptr i64 %99 to i32*
  br label %block_0x29.i

block_0x29.i:                                     ; preds = %block_0xb8.i, %block_0x29.lr.ph.i
  %101 = phi i32 [ %77, %block_0x29.lr.ph.i ], [ %127, %block_0xb8.i ]
  %102 = sext i32 %101 to i64, !mcsema_real_eip !10
  %103 = add i64 %102, %75, !mcsema_real_eip !11
  %104 = inttoptr i64 %103 to i8*
  %105 = load i8, i8* %104, align 1, !mcsema_real_eip !11
  %106 = sext i8 %105 to i32, !mcsema_real_eip !11
  %107 = add nsw i32 %106, -114
  %108 = icmp eq i32 %107, 0, !mcsema_real_eip !12
  %109 = icmp slt i8 %105, 114
  %110 = sub nsw i32 113, %106
  %111 = and i32 %110, %106
  %112 = icmp slt i32 %111, 0
  store i32 %106, i32* %90, align 4, !mcsema_real_eip !8
  store i32 %107, i32* %92, align 4, !mcsema_real_eip !9
  %tmp71.i = xor i1 %109, %112
  %.demorgan.i = or i1 %108, %tmp71.i
  %113 = load i32, i32* %90, align 4, !mcsema_real_eip !13
  br i1 %.demorgan.i, label %block_0x48.i, label %block_0x70.i, !mcsema_real_eip !14

block_0x1c.block_0xcf.loopexit_crit_edge.i:       ; preds = %block_0xb8.i
  %114 = zext i32 %106 to i64, !mcsema_real_eip !11
  %115 = zext i32 %107 to i64, !mcsema_real_eip !12
  %116 = and i32 %128, 16, !mcsema_real_eip !6
  %117 = icmp ne i32 %116, 0, !mcsema_real_eip !6
  %118 = trunc i32 %126 to i8, !mcsema_real_eip !6
  %119 = tail call i8 @llvm.ctpop.i8(i8 %118) #2
  %120 = icmp eq i32 %126, 0, !mcsema_real_eip !6
  %121 = icmp eq i32 %127, 0
  br label %sub_0.exit

block_0x70.i:                                     ; preds = %block_0x29.i
  %122 = add i32 %113, -115
  %123 = icmp eq i32 %122, 0, !mcsema_real_eip !15
  store i32 %122, i32* %98, align 4, !mcsema_real_eip !16
  br i1 %123, label %block_0xb8.i, label %block_0x84.i, !mcsema_real_eip !17

block_0x48.i:                                     ; preds = %block_0x29.i
  %124 = add i32 %113, -97
  %125 = icmp eq i32 %124, 0, !mcsema_real_eip !18
  store i32 %124, i32* %94, align 4, !mcsema_real_eip !19
  br i1 %125, label %block_0xb8.i, label %block_0x5c.i, !mcsema_real_eip !20

block_0xb8.i:                                     ; preds = %block_0x5c.i, %block_0x84.i, %block_0x48.i, %block_0x70.i
  %126 = load i32, i32* %74, align 4, !mcsema_real_eip !21
  %127 = add i32 %126, 1
  store i32 %127, i32* %74, align 4, !mcsema_real_eip !22
  %128 = xor i32 %127, %126, !mcsema_real_eip !6
  %129 = icmp slt i32 %126, 0
  %130 = and i32 %128, %127, !mcsema_real_eip !6
  %131 = icmp slt i32 %130, 0
  %tmp.i = xor i1 %129, %131
  br i1 %tmp.i, label %block_0x29.i, label %block_0x1c.block_0xcf.loopexit_crit_edge.i, !mcsema_real_eip !7

block_0x84.i:                                     ; preds = %block_0x70.i
  %132 = load i32, i32* %90, align 4, !mcsema_real_eip !23
  %133 = add i32 %132, -119
  %134 = xor i32 %133, %132, !mcsema_real_eip !24
  %135 = and i32 %134, 16
  %136 = icmp eq i32 %135, 0
  %137 = trunc i32 %133 to i8, !mcsema_real_eip !24
  %138 = tail call i8 @llvm.ctpop.i8(i8 %137) #2, !mcsema_real_eip !24
  %139 = icmp eq i32 %133, 0, !mcsema_real_eip !24
  %140 = icmp ult i32 %132, 119, !mcsema_real_eip !24
  %141 = and i32 %134, %132, !mcsema_real_eip !24
  store i32 %133, i32* %100, align 4, !mcsema_real_eip !25
  br i1 %139, label %block_0xb8.i, label %block_0xac.i, !mcsema_real_eip !26

block_0xac.i:                                     ; preds = %block_0x5c.i, %block_0x84.i
  %PF_val.1.in.in.i = phi i8 [ %150, %block_0x5c.i ], [ %138, %block_0x84.i ]
  %AF_val.1.i = phi i1 [ %148, %block_0x5c.i ], [ %136, %block_0x84.i ]
  %CF_val.1.i = phi i1 [ %152, %block_0x5c.i ], [ %140, %block_0x84.i ]
  %SF_val.1.in.i = phi i32 [ %145, %block_0x5c.i ], [ %133, %block_0x84.i ]
  %OF_val.1.in.i = phi i32 [ %153, %block_0x5c.i ], [ %141, %block_0x84.i ]
  %142 = zext i32 %106 to i64, !mcsema_real_eip !11
  %143 = zext i32 %107 to i64, !mcsema_real_eip !12
  %OF_val.1.i = icmp slt i32 %OF_val.1.in.i, 0
  %SF_val.1.i = icmp slt i32 %SF_val.1.in.i, 0
  br label %sub_0.exit, !mcsema_real_eip !27

block_0x5c.i:                                     ; preds = %block_0x48.i
  %144 = load i32, i32* %90, align 4, !mcsema_real_eip !28
  %145 = add i32 %144, -100
  %146 = xor i32 %145, %144, !mcsema_real_eip !29
  %147 = and i32 %146, 16, !mcsema_real_eip !29
  %148 = icmp ne i32 %147, 0, !mcsema_real_eip !29
  %149 = trunc i32 %145 to i8, !mcsema_real_eip !29
  %150 = tail call i8 @llvm.ctpop.i8(i8 %149) #2, !mcsema_real_eip !29
  %151 = icmp eq i32 %145, 0, !mcsema_real_eip !29
  %152 = icmp ult i32 %144, 100, !mcsema_real_eip !29
  %153 = and i32 %146, %144, !mcsema_real_eip !29
  store i32 %145, i32* %96, align 4, !mcsema_real_eip !30
  br i1 %151, label %block_0xb8.i, label %block_0xac.i, !mcsema_real_eip !31

sub_0.exit:                                       ; preds = %driverBlockRaw, %block_0x1c.block_0xcf.loopexit_crit_edge.i, %block_0xac.i
  %ZF_val.0.i = phi i1 [ false, %block_0xac.i ], [ %120, %block_0x1c.block_0xcf.loopexit_crit_edge.i ], [ %84, %driverBlockRaw ]
  %PF_val.0.in.in.i = phi i8 [ %PF_val.1.in.in.i, %block_0xac.i ], [ %119, %block_0x1c.block_0xcf.loopexit_crit_edge.i ], [ %83, %driverBlockRaw ]
  %AF_val.0.i = phi i1 [ %AF_val.1.i, %block_0xac.i ], [ %117, %block_0x1c.block_0xcf.loopexit_crit_edge.i ], [ %81, %driverBlockRaw ]
  %CF_val.0.i = phi i1 [ %CF_val.1.i, %block_0xac.i ], [ %121, %block_0x1c.block_0xcf.loopexit_crit_edge.i ], [ %86, %driverBlockRaw ]
  %SF_val.0.i = phi i1 [ %SF_val.1.i, %block_0xac.i ], [ %129, %block_0x1c.block_0xcf.loopexit_crit_edge.i ], [ %85, %driverBlockRaw ]
  %RDX_val.1.i = phi i64 [ %143, %block_0xac.i ], [ %115, %block_0x1c.block_0xcf.loopexit_crit_edge.i ], [ %3, %driverBlockRaw ]
  %RCX_val.1.i = phi i64 [ %142, %block_0xac.i ], [ %114, %block_0x1c.block_0xcf.loopexit_crit_edge.i ], [ %2, %driverBlockRaw ]
  %OF_val.0.i = phi i1 [ %OF_val.1.i, %block_0xac.i ], [ %131, %block_0x1c.block_0xcf.loopexit_crit_edge.i ], [ %88, %driverBlockRaw ]
  %PF_val.0.in.i = and i8 %PF_val.0.in.in.i, 1
  %PF_val.0.i = icmp eq i8 %PF_val.0.in.i, 0
  store i32 1, i32* %72, align 4
  %154 = load i64, i64* %70, align 8, !mcsema_real_eip !32
  %155 = add i64 %6, 8, !mcsema_real_eip !33
  store i64 1, i64* %RAX.i, align 8, !mcsema_real_eip !33
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !33
  store i64 %RCX_val.1.i, i64* %RCX.i, align 8, !mcsema_real_eip !33
  store i64 %RDX_val.1.i, i64* %RDX.i, align 8, !mcsema_real_eip !33
  %156 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> %5, <2 x i64>* %156, align 8
  store i64 %155, i64* %RSP.i, align 8, !mcsema_real_eip !33
  store i64 %154, i64* %RBP.i, align 8, !mcsema_real_eip !33
  %157 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %157, align 8
  %158 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %158, align 8
  %159 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %159, align 8
  %160 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %160, align 8
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !33
  store i1 %CF_val.0.i, i1* %CF.i, align 1, !mcsema_real_eip !33
  store i1 %PF_val.0.i, i1* %PF.i, align 1, !mcsema_real_eip !33
  store i1 %AF_val.0.i, i1* %AF.i, align 1, !mcsema_real_eip !33
  store i1 %ZF_val.0.i, i1* %ZF.i, align 1, !mcsema_real_eip !33
  store i1 %SF_val.0.i, i1* %SF.i, align 1, !mcsema_real_eip !33
  store i1 %OF_val.0.i, i1* %OF.i, align 1, !mcsema_real_eip !33
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !33
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !33
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !33
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !33
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !33
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !33
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !33
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !33
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !33
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !33
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !33
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !33
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !33
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !33
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !33
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !33
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !33
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !33
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !33
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !33
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !33
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !33
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !33
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !33
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !33
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !33
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !33
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !33
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !33
  store i11 %50, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !33
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !33
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !33
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !33
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !33
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !33
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !33
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !33
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !33
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !33
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !33
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !33
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !33
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !33
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !33
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !33
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !33
  %161 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %68, <2 x i64>* %161, align 1
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  ret void
}

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
!3 = !{i64 4}
!4 = !{i64 11}
!5 = !{i64 25}
!6 = !{i64 28}
!7 = !{i64 35}
!8 = !{i64 55}
!9 = !{i64 58}
!10 = !{i64 41}
!11 = !{i64 45}
!12 = !{i64 52}
!13 = !{i64 112}
!14 = !{i64 61}
!15 = !{i64 115}
!16 = !{i64 118}
!17 = !{i64 121}
!18 = !{i64 75}
!19 = !{i64 78}
!20 = !{i64 81}
!21 = !{i64 184}
!22 = !{i64 192}
!23 = !{i64 132}
!24 = !{i64 135}
!25 = !{i64 138}
!26 = !{i64 141}
!27 = !{i64 179}
!28 = !{i64 92}
!29 = !{i64 95}
!30 = !{i64 98}
!31 = !{i64 101}
!32 = !{i64 210}
!33 = !{i64 211}
