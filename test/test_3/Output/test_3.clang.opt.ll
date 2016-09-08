; ModuleID = 'Output/test_3.clang.opt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %1 = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %1)
  %RAX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %2 = load i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %3 = load i64* %RCX.i, align 8, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %4 = load i64* %RDX.i, align 8, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %5 = load i64* %RSI.i, align 8, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %6 = load i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %7 = load i64* %RSP.i, align 8, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %8 = load i64* %RBP.i, align 8, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %9 = bitcast i64* %R8.i to <2 x i64>*
  %10 = load <2 x i64>* %9, align 8
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %11 = bitcast i64* %R10.i to <2 x i64>*
  %12 = load <2 x i64>* %11, align 8
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %13 = bitcast i64* %R12.i to <2 x i64>*
  %14 = load <2 x i64>* %13, align 8
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %15 = bitcast i64* %R14.i to <2 x i64>*
  %16 = load <2 x i64>* %15, align 8
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
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %20, i32 128, i32 4, i1 false) #0, !mcsema_real_eip !2
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
  %67 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %68 = load <2 x i64>* %67, align 8
  %69 = add i64 %7, -8
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !2
  store i64 %8, i64* %70, align 8, !mcsema_real_eip !2
  %71 = add i64 %7, -16, !mcsema_real_eip !3
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !3
  store i64 %6, i64* %72, align 8, !mcsema_real_eip !3
  %73 = add i64 %7, -20, !mcsema_real_eip !4
  %74 = trunc i64 %5 to i32, !mcsema_real_eip !4
  %75 = inttoptr i64 %73 to i32*
  store i32 %74, i32* %75, align 4, !mcsema_real_eip !4
  %76 = add i64 %7, -24, !mcsema_real_eip !5
  %77 = inttoptr i64 %76 to i32*
  store i32 0, i32* %77, align 4, !mcsema_real_eip !5
  %78 = add i64 %7, -28, !mcsema_real_eip !6
  %79 = inttoptr i64 %78 to i32*
  store i32 0, i32* %79, align 4, !mcsema_real_eip !6
  %80 = load i32* %75, align 4, !mcsema_real_eip !7
  %81 = sub i32 0, %80, !mcsema_real_eip !7
  %82 = xor i32 %80, %81, !mcsema_real_eip !7
  %83 = trunc i32 %81 to i8, !mcsema_real_eip !7
  %84 = tail call i8 @llvm.ctpop.i8(i8 %83) #0, !mcsema_real_eip !7
  %85 = icmp eq i32 %80, 0
  %86 = icmp slt i32 %81, 0
  %87 = icmp ne i32 %80, 0
  %88 = and i32 %80, %81, !mcsema_real_eip !7
  %89 = icmp slt i32 %88, 0
  %tmp.i = xor i1 %86, %89
  br i1 %tmp.i, label %block_0x25.i.preheader, label %sub_0.exit, !mcsema_real_eip !8

block_0x25.i.preheader:                           ; preds = %driverBlockRaw
  br label %block_0x25.i

block_0x48.loopexit.i:                            ; preds = %block_0x25.i
  %.lcssa32 = phi i1 [ %114, %block_0x25.i ]
  %.lcssa31 = phi i1 [ %111, %block_0x25.i ]
  %.lcssa30 = phi i32 [ %110, %block_0x25.i ]
  %.lcssa29 = phi i32 [ %109, %block_0x25.i ]
  %.lcssa28 = phi i32 [ %108, %block_0x25.i ]
  %.lcssa27 = phi i32 [ %107, %block_0x25.i ]
  %.lcssa26 = phi i32 [ %105, %block_0x25.i ]
  %.lcssa25 = phi i32 [ %103, %block_0x25.i ]
  %.lcssa = phi i64 [ %99, %block_0x25.i ]
  %90 = zext i32 %.lcssa25 to i64, !mcsema_real_eip !9
  %91 = zext i32 %.lcssa26 to i64, !mcsema_real_eip !10
  %92 = xor i32 %.lcssa30, %.lcssa28, !mcsema_real_eip !7
  %93 = trunc i32 %.lcssa29 to i8, !mcsema_real_eip !7
  %94 = tail call i8 @llvm.ctpop.i8(i8 %93) #0, !mcsema_real_eip !7
  %95 = icmp eq i32 %.lcssa27, %.lcssa28
  %96 = icmp ult i32 %.lcssa27, %.lcssa28, !mcsema_real_eip !7
  br label %sub_0.exit

block_0x25.i:                                     ; preds = %block_0x25.i, %block_0x25.i.preheader
  %97 = phi i32 [ %107, %block_0x25.i ], [ 0, %block_0x25.i.preheader ]
  %98 = sext i32 %97 to i64, !mcsema_real_eip !11
  %99 = load i64* %72, align 8, !mcsema_real_eip !12
  %100 = shl nsw i64 %98, 2
  %101 = add i64 %100, %99, !mcsema_real_eip !9
  %102 = inttoptr i64 %101 to i32*
  %103 = load i32* %102, align 4, !mcsema_real_eip !9
  %104 = load i32* %77, align 4, !mcsema_real_eip !13
  %105 = add i32 %104, %103
  store i32 %105, i32* %77, align 4, !mcsema_real_eip !14
  %106 = load i32* %79, align 4, !mcsema_real_eip !15
  %107 = add i32 %106, 1
  store i32 %107, i32* %79, align 4, !mcsema_real_eip !16
  %108 = load i32* %75, align 4, !mcsema_real_eip !7
  %109 = sub i32 %107, %108, !mcsema_real_eip !7
  %110 = xor i32 %109, %107, !mcsema_real_eip !7
  %111 = icmp slt i32 %109, 0
  %112 = xor i32 %108, %107, !mcsema_real_eip !7
  %113 = and i32 %110, %112, !mcsema_real_eip !7
  %114 = icmp slt i32 %113, 0
  %tmp71.i = xor i1 %111, %114
  br i1 %tmp71.i, label %block_0x25.i, label %block_0x48.loopexit.i, !mcsema_real_eip !8

sub_0.exit:                                       ; preds = %block_0x48.loopexit.i, %driverBlockRaw
  %ZF_val.0.i = phi i1 [ %85, %driverBlockRaw ], [ %95, %block_0x48.loopexit.i ]
  %PF_val.0.in.in.i = phi i8 [ %84, %driverBlockRaw ], [ %94, %block_0x48.loopexit.i ]
  %AF_val.0.in.in.i = phi i32 [ %82, %driverBlockRaw ], [ %92, %block_0x48.loopexit.i ]
  %CF_val.0.i = phi i1 [ %87, %driverBlockRaw ], [ %96, %block_0x48.loopexit.i ]
  %SF_val.0.i = phi i1 [ %86, %driverBlockRaw ], [ %.lcssa31, %block_0x48.loopexit.i ]
  %RSI_val.0.i = phi i64 [ %5, %driverBlockRaw ], [ %91, %block_0x48.loopexit.i ]
  %RDX_val.0.i = phi i64 [ %4, %driverBlockRaw ], [ %90, %block_0x48.loopexit.i ]
  %RCX_val.0.i = phi i64 [ %3, %driverBlockRaw ], [ %.lcssa, %block_0x48.loopexit.i ]
  %OF_val.0.i = phi i1 [ %89, %driverBlockRaw ], [ %.lcssa32, %block_0x48.loopexit.i ]
  %AF_val.0.in.i = and i32 %AF_val.0.in.in.i, 16
  %PF_val.0.in.i = and i8 %PF_val.0.in.in.i, 1
  %AF_val.0.i = icmp ne i32 %AF_val.0.in.i, 0
  %PF_val.0.i = icmp eq i8 %PF_val.0.in.i, 0
  %115 = load i32* %77, align 4, !mcsema_real_eip !17
  %116 = zext i32 %115 to i64, !mcsema_real_eip !17
  %117 = load i64* %70, align 8, !mcsema_real_eip !18
  %118 = add i64 %7, 8, !mcsema_real_eip !19
  store i64 %116, i64* %RAX.i, align 8, !mcsema_real_eip !19
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !19
  store i64 %RCX_val.0.i, i64* %RCX.i, align 8, !mcsema_real_eip !19
  store i64 %RDX_val.0.i, i64* %RDX.i, align 8, !mcsema_real_eip !19
  store i64 %RSI_val.0.i, i64* %RSI.i, align 8, !mcsema_real_eip !19
  store i64 %6, i64* %RDI.i, align 8, !mcsema_real_eip !19
  store i64 %118, i64* %RSP.i, align 8, !mcsema_real_eip !19
  store i64 %117, i64* %RBP.i, align 8, !mcsema_real_eip !19
  store <2 x i64> %10, <2 x i64>* %9, align 8
  store <2 x i64> %12, <2 x i64>* %11, align 8
  store <2 x i64> %14, <2 x i64>* %13, align 8
  store <2 x i64> %16, <2 x i64>* %15, align 8
  store i64 %17, i64* %RIP.i, align 8, !mcsema_real_eip !19
  store i1 %CF_val.0.i, i1* %CF.i, align 1, !mcsema_real_eip !19
  store i1 %PF_val.0.i, i1* %PF.i, align 1, !mcsema_real_eip !19
  store i1 %AF_val.0.i, i1* %AF.i, align 1, !mcsema_real_eip !19
  store i1 %ZF_val.0.i, i1* %ZF.i, align 1, !mcsema_real_eip !19
  store i1 %SF_val.0.i, i1* %SF.i, align 1, !mcsema_real_eip !19
  store i1 %OF_val.0.i, i1* %OF.i, align 1, !mcsema_real_eip !19
  store i1 %18, i1* %DF.i, align 1, !mcsema_real_eip !19
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %1, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !19
  store i1 %21, i1* %FPU_B.i, align 1, !mcsema_real_eip !19
  store i1 %22, i1* %FPU_C3.i, align 1, !mcsema_real_eip !19
  store i3 %23, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !19
  store i1 %24, i1* %FPU_C2.i, align 1, !mcsema_real_eip !19
  store i1 %25, i1* %FPU_C1.i, align 1, !mcsema_real_eip !19
  store i1 %26, i1* %FPU_C0.i, align 1, !mcsema_real_eip !19
  store i1 %27, i1* %FPU_ES.i, align 1, !mcsema_real_eip !19
  store i1 %28, i1* %FPU_SF.i, align 1, !mcsema_real_eip !19
  store i1 %29, i1* %FPU_PE.i, align 1, !mcsema_real_eip !19
  store i1 %30, i1* %FPU_UE.i, align 1, !mcsema_real_eip !19
  store i1 %31, i1* %FPU_OE.i, align 1, !mcsema_real_eip !19
  store i1 %32, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !19
  store i1 %33, i1* %FPU_DE.i, align 1, !mcsema_real_eip !19
  store i1 %34, i1* %FPU_IE.i, align 1, !mcsema_real_eip !19
  store i1 %35, i1* %FPU_X.i, align 1, !mcsema_real_eip !19
  store i2 %36, i2* %FPU_RC.i, align 1, !mcsema_real_eip !19
  store i2 %37, i2* %FPU_PC.i, align 1, !mcsema_real_eip !19
  store i1 %38, i1* %FPU_PM.i, align 1, !mcsema_real_eip !19
  store i1 %39, i1* %FPU_UM.i, align 1, !mcsema_real_eip !19
  store i1 %40, i1* %FPU_OM.i, align 1, !mcsema_real_eip !19
  store i1 %41, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !19
  store i1 %42, i1* %FPU_DM.i, align 1, !mcsema_real_eip !19
  store i1 %43, i1* %FPU_IM.i, align 1, !mcsema_real_eip !19
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !19
  store i64 %48, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !19
  store i16 %49, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !19
  store i64 %50, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !19
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !19
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !19
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !19
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !19
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !19
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !19
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !19
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !19
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !19
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !19
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !19
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !19
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !19
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !19
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !19
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !19
  store <2 x i64> %68, <2 x i64>* %67, align 1
  call void @llvm.lifetime.end(i64 128, i8* %1)
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
!2 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 4, [21 x i8] c"\09movq\09%rdi, -8(%rbp)\00"}
!4 = metadata !{i64 8, [22 x i8] c"\09movl\09%esi, -12(%rbp)\00"}
!5 = metadata !{i64 11, [20 x i8] c"\09movl\09$0, -16(%rbp)\00"}
!6 = metadata !{i64 18, [20 x i8] c"\09movl\09$0, -20(%rbp)\00"}
!7 = metadata !{i64 28, [22 x i8] c"\09cmpl\09-12(%rbp), %eax\00"}
!8 = metadata !{i64 31, [8 x i8] c"\09jge\0935\00"}
!9 = metadata !{i64 45, [26 x i8] c"\09movl\09(%rcx,%rax,4), %edx\00"}
!10 = metadata !{i64 51, [17 x i8] c"\09addl\09%edx, %esi\00"}
!11 = metadata !{i64 37, [24 x i8] c"\09movslq\09-20(%rbp), %rax\00"}
!12 = metadata !{i64 41, [21 x i8] c"\09movq\09-8(%rbp), %rcx\00"} ; [ DW_TAG_file_type ] [/]
!13 = metadata !{i64 48, [22 x i8] c"\09movl\09-16(%rbp), %esi\00"}
!14 = metadata !{i64 53, [22 x i8] c"\09movl\09%esi, -16(%rbp)\00"}
!15 = metadata !{i64 56, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!16 = metadata !{i64 64, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!17 = metadata !{i64 72, [22 x i8] c"\09movl\09-16(%rbp), %eax\00"}
!18 = metadata !{i64 75, [11 x i8] c"\09popq\09%rbp\00"}
!19 = metadata !{i64 76, [6 x i8] c"\09retq\00"}
