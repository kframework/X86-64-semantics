; ModuleID = 'Output/test_7.clang.opt.bc'
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
  %RBX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !3
  %1 = load i64* %RBX.i, align 8, !mcsema_real_eip !3
  %RCX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !3
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !3
  %2 = load i64* %RSP.i, align 8, !mcsema_real_eip !3
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !3
  %3 = load i64* %RBP.i, align 8, !mcsema_real_eip !3
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !3
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %4 = bitcast i64* %R12.i to <2 x i64>*
  %5 = load <2 x i64>* %4, align 8
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %6 = load i64* %R14.i, align 8, !mcsema_real_eip !3
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !3
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %7 = bitcast i64* %R15.i to <2 x i64>*
  %8 = load <2 x i64>* %7, align 8
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
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
  %58 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %59 = load <2 x i64>* %58, align 8
  %60 = add i64 %2, -8
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !3
  store i64 %3, i64* %61, align 8, !mcsema_real_eip !3
  %62 = add i64 %2, -16
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !4
  store i64 %6, i64* %63, align 8, !mcsema_real_eip !4
  %64 = add i64 %2, -24
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !5
  store i64 %1, i64* %65, align 8, !mcsema_real_eip !5
  %66 = add i64 %2, -28, !mcsema_real_eip !6
  %67 = inttoptr i64 %66 to i32*
  store i32 0, i32* %67, align 4, !mcsema_real_eip !6
  %68 = add i64 %2, -32, !mcsema_real_eip !7
  %69 = inttoptr i64 %68 to i32*
  store i32 1, i32* %69, align 4, !mcsema_real_eip !7
  %70 = add i64 %2, -76, !mcsema_real_eip !8
  %71 = inttoptr i64 %70 to i32*
  store i32 0, i32* %71, align 4, !mcsema_real_eip !8
  %72 = add i64 %2, -72, !mcsema_real_eip !9
  br label %block_0x190.i

block_0x1b0.i:                                    ; preds = %block_0x190.i
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !3
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !3
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !3
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !3
  %R9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %73 = add i64 %2, -88, !mcsema_real_eip !10
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !10
  store i64 %68, i64* %74, align 8, !mcsema_real_eip !10
  %75 = tail call x86_64_sysvcc i64 @malloc(i64 40), !mcsema_real_eip !11
  %76 = add i64 %2, -96, !mcsema_real_eip !12
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !12
  store i64 %75, i64* %77, align 8, !mcsema_real_eip !12
  %78 = add i64 %2, -100, !mcsema_real_eip !13
  %79 = inttoptr i64 %78 to i32*
  store i32 0, i32* %79, align 4, !mcsema_real_eip !13
  br label %block_0x1df.i

block_0x190.i:                                    ; preds = %block_0x190.i, %driverBlockRaw
  %80 = phi i32 [ 0, %driverBlockRaw ], [ %87, %block_0x190.i ]
  %81 = add i32 %80, 1
  %82 = sext i32 %80 to i64, !mcsema_real_eip !14
  %83 = shl nsw i64 %82, 2
  %84 = add i64 %83, %72, !mcsema_real_eip !9
  %85 = inttoptr i64 %84 to i32*
  store i32 %81, i32* %85, align 4, !mcsema_real_eip !9
  %86 = load i32* %71, align 4, !mcsema_real_eip !15
  %87 = add i32 %86, 1
  store i32 %87, i32* %71, align 4, !mcsema_real_eip !16
  %88 = add i32 %86, -9
  %89 = icmp slt i32 %88, 0
  %90 = sub i32 8, %86
  %91 = and i32 %87, %90
  %92 = icmp slt i32 %91, 0
  %tmp210.i = xor i1 %89, %92
  br i1 %tmp210.i, label %block_0x190.i, label %block_0x1b0.i, !mcsema_real_eip !17

block_0x202.i:                                    ; preds = %block_0x1df.i
  %.lcssa66 = phi i1 [ %304, %block_0x1df.i ]
  %.lcssa65 = phi i1 [ %302, %block_0x1df.i ]
  %.lcssa64 = phi i32 [ %301, %block_0x1df.i ]
  %.lcssa63 = phi i32 [ %300, %block_0x1df.i ]
  %.lcssa62 = phi i32 [ %299, %block_0x1df.i ]
  %RAX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !3
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !3
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %93 = add i64 %2, -168
  %94 = icmp ult i32 %.lcssa62, 10, !mcsema_real_eip !18
  %95 = icmp eq i32 %.lcssa63, 0, !mcsema_real_eip !18
  %96 = trunc i32 %.lcssa63 to i8, !mcsema_real_eip !18
  %97 = tail call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !18
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  %100 = and i32 %.lcssa64, 16, !mcsema_real_eip !18
  %101 = icmp ne i32 %100, 0, !mcsema_real_eip !18
  %102 = load i32* %69, align 4, !mcsema_real_eip !19
  %103 = zext i32 %102 to i64, !mcsema_real_eip !19
  %104 = load i64* %74, align 8, !mcsema_real_eip !20
  %105 = load i64* %77, align 8, !mcsema_real_eip !21
  %106 = add i64 %2, -112, !mcsema_real_eip !22
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !22
  store i64 %105, i64* %107, align 8, !mcsema_real_eip !22
  %108 = add i64 %2, -120, !mcsema_real_eip !23
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !23
  store i64 %72, i64* %109, align 8, !mcsema_real_eip !23
  %110 = add i64 %2, -124, !mcsema_real_eip !24
  %111 = inttoptr i64 %110 to i32*
  store i32 %102, i32* %111, align 4, !mcsema_real_eip !24
  %112 = add i64 %2, -136, !mcsema_real_eip !25
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !25
  store i64 %104, i64* %113, align 8, !mcsema_real_eip !25
  %114 = load i32* %111, align 4, !mcsema_real_eip !26
  %115 = zext i32 %114 to i64, !mcsema_real_eip !26
  %116 = inttoptr i64 %93 to i32*
  store i32 %114, i32* %116, align 4, !mcsema_real_eip !27
  %117 = load i64* %109, align 8, !mcsema_real_eip !28
  %118 = add i64 %2, -160, !mcsema_real_eip !29
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !29
  store i64 %117, i64* %119, align 8, !mcsema_real_eip !29
  %120 = load i64* %113, align 8, !mcsema_real_eip !30
  %121 = add i64 %2, -152, !mcsema_real_eip !31
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !31
  store i64 %120, i64* %122, align 8, !mcsema_real_eip !31
  %123 = add i64 %2, -144, !mcsema_real_eip !32
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !32
  store i64 %105, i64* %124, align 8, !mcsema_real_eip !32
  %125 = add i64 %2, -176
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !33
  store i64 -4981261766360305936, i64* %126, align 8, !mcsema_real_eip !33
  store i64 %115, i64* %RAX.i, align 8, !mcsema_real_eip !33
  store i64 %117, i64* %RBX.i, align 8, !mcsema_real_eip !33
  store i64 %105, i64* %RCX.i, align 8, !mcsema_real_eip !33
  store i64 %104, i64* %RDX.i, align 8, !mcsema_real_eip !33
  store i64 %72, i64* %RSI.i, align 8, !mcsema_real_eip !33
  store i64 %103, i64* %RDI.i, align 8, !mcsema_real_eip !33
  store i64 %125, i64* %RSP.i, align 8, !mcsema_real_eip !33
  store i64 %60, i64* %RBP.i, align 8, !mcsema_real_eip !33
  %127 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 10, i64 10>, <2 x i64>* %127, align 8
  store i64 %105, i64* %R10.i, align 8, !mcsema_real_eip !33
  store i64 %105, i64* %R11.i, align 8, !mcsema_real_eip !33
  store <2 x i64> %5, <2 x i64>* %4, align 8
  store i64 %120, i64* %R14.i, align 8, !mcsema_real_eip !33
  %128 = bitcast i64* %R15.i to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %128, align 8
  store i1 %94, i1* %CF.i, align 1, !mcsema_real_eip !33
  store i1 %99, i1* %PF.i, align 1, !mcsema_real_eip !33
  store i1 %101, i1* %AF.i, align 1, !mcsema_real_eip !33
  store i1 %95, i1* %ZF.i, align 1, !mcsema_real_eip !33
  store i1 %.lcssa65, i1* %SF.i, align 1, !mcsema_real_eip !33
  store i1 %.lcssa66, i1* %OF.i, align 1, !mcsema_real_eip !33
  store i1 %9, i1* %DF.i, align 1, !mcsema_real_eip !33
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !33
  store i1 %12, i1* %FPU_B.i, align 1, !mcsema_real_eip !33
  store i1 %13, i1* %FPU_C3.i, align 1, !mcsema_real_eip !33
  store i3 %14, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !33
  store i1 %15, i1* %FPU_C2.i, align 1, !mcsema_real_eip !33
  store i1 %16, i1* %FPU_C1.i, align 1, !mcsema_real_eip !33
  store i1 %17, i1* %FPU_C0.i, align 1, !mcsema_real_eip !33
  store i1 %18, i1* %FPU_ES.i, align 1, !mcsema_real_eip !33
  store i1 %19, i1* %FPU_SF.i, align 1, !mcsema_real_eip !33
  store i1 %20, i1* %FPU_PE.i, align 1, !mcsema_real_eip !33
  store i1 %21, i1* %FPU_UE.i, align 1, !mcsema_real_eip !33
  store i1 %22, i1* %FPU_OE.i, align 1, !mcsema_real_eip !33
  store i1 %23, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !33
  store i1 %24, i1* %FPU_DE.i, align 1, !mcsema_real_eip !33
  store i1 %25, i1* %FPU_IE.i, align 1, !mcsema_real_eip !33
  store i1 %26, i1* %FPU_X.i, align 1, !mcsema_real_eip !33
  store i2 %27, i2* %FPU_RC.i, align 1, !mcsema_real_eip !33
  store i2 %28, i2* %FPU_PC.i, align 1, !mcsema_real_eip !33
  store i1 %29, i1* %FPU_PM.i, align 1, !mcsema_real_eip !33
  store i1 %30, i1* %FPU_UM.i, align 1, !mcsema_real_eip !33
  store i1 %31, i1* %FPU_OM.i, align 1, !mcsema_real_eip !33
  store i1 %32, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !33
  store i1 %33, i1* %FPU_DM.i, align 1, !mcsema_real_eip !33
  store i1 %34, i1* %FPU_IM.i, align 1, !mcsema_real_eip !33
  store i64 %37, i64* %36, align 4
  store i16 %38, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !33
  store i64 %39, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !33
  store i16 %40, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !33
  store i64 %41, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !33
  store i128 %42, i128* %XMM0.i, align 1, !mcsema_real_eip !33
  store i128 %43, i128* %XMM1.i, align 1, !mcsema_real_eip !33
  store i128 %44, i128* %XMM2.i, align 1, !mcsema_real_eip !33
  store i128 %45, i128* %XMM3.i, align 1, !mcsema_real_eip !33
  store i128 %46, i128* %XMM4.i, align 1, !mcsema_real_eip !33
  store i128 %47, i128* %XMM5.i, align 1, !mcsema_real_eip !33
  store i128 %48, i128* %XMM6.i, align 1, !mcsema_real_eip !33
  store i128 %49, i128* %XMM7.i, align 1, !mcsema_real_eip !33
  store i128 %50, i128* %XMM8.i, align 1, !mcsema_real_eip !33
  store i128 %51, i128* %XMM9.i, align 1, !mcsema_real_eip !33
  store i128 %52, i128* %XMM10.i, align 1, !mcsema_real_eip !33
  store i128 %53, i128* %XMM11.i, align 1, !mcsema_real_eip !33
  store i128 %54, i128* %XMM12.i, align 1, !mcsema_real_eip !33
  store i128 %55, i128* %XMM13.i, align 1, !mcsema_real_eip !33
  store i128 %56, i128* %XMM14.i, align 1, !mcsema_real_eip !33
  store i128 %57, i128* %XMM15.i, align 1, !mcsema_real_eip !33
  store <2 x i64> %59, <2 x i64>* %58, align 1
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %STi_val.i.0..sroa_cast.i)
  %129 = bitcast i64* %R14.i to <2 x i64>*
  %130 = load <2 x i64>* %129, align 8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast.i, i8* %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false)
  %131 = add i64 %2, -184
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !2
  store i64 %60, i64* %132, align 8, !mcsema_real_eip !2
  %133 = add i64 %2, -192
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !34
  store i64 %117, i64* %134, align 8, !mcsema_real_eip !34
  %135 = load i64* %124, align 8, !mcsema_real_eip !35
  %136 = load i64* %122, align 8, !mcsema_real_eip !36
  %137 = load i64* %119, align 8, !mcsema_real_eip !37
  %138 = load i32* %116, align 4, !mcsema_real_eip !38
  %139 = add i64 %2, -196, !mcsema_real_eip !39
  %140 = inttoptr i64 %139 to i32*
  store i32 %102, i32* %140, align 4, !mcsema_real_eip !39
  %141 = add i64 %2, -208, !mcsema_real_eip !40
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !40
  store i64 %72, i64* %142, align 8, !mcsema_real_eip !40
  %143 = add i64 %2, -216, !mcsema_real_eip !41
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !41
  store i64 %104, i64* %144, align 8, !mcsema_real_eip !41
  %145 = add i64 %2, -224, !mcsema_real_eip !42
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !42
  store i64 %105, i64* %146, align 8, !mcsema_real_eip !42
  %147 = add i64 %2, -228, !mcsema_real_eip !43
  %148 = inttoptr i64 %147 to i32*
  store i32 10, i32* %148, align 4, !mcsema_real_eip !43
  %149 = add i64 %2, -232, !mcsema_real_eip !44
  %150 = inttoptr i64 %149 to i32*
  store i32 10, i32* %150, align 4, !mcsema_real_eip !44
  %151 = add i64 %2, -236, !mcsema_real_eip !45
  %152 = inttoptr i64 %151 to i32*
  store i32 %138, i32* %152, align 4, !mcsema_real_eip !45
  %153 = add i64 %2, -248, !mcsema_real_eip !46
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !46
  store i64 %137, i64* %154, align 8, !mcsema_real_eip !46
  %155 = add i64 %2, -256, !mcsema_real_eip !47
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !47
  store i64 %136, i64* %156, align 8, !mcsema_real_eip !47
  %157 = add i64 %2, -264, !mcsema_real_eip !48
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !48
  store i64 %135, i64* %158, align 8, !mcsema_real_eip !48
  %159 = add i64 %2, -268, !mcsema_real_eip !49
  %160 = inttoptr i64 %159 to i32*
  store i32 0, i32* %160, align 4, !mcsema_real_eip !49
  %161 = load i32* %140, align 4, !mcsema_real_eip !50
  %162 = zext i32 %161 to i64, !mcsema_real_eip !50
  store i32 %161, i32* %160, align 4, !mcsema_real_eip !51
  %163 = add i64 %2, -272, !mcsema_real_eip !52
  %164 = inttoptr i64 %163 to i32*
  store i32 0, i32* %164, align 4, !mcsema_real_eip !52
  %165 = load i32* %148, align 4, !mcsema_real_eip !53
  %166 = sub i32 0, %165, !mcsema_real_eip !53
  %167 = icmp slt i32 %166, 0
  %168 = and i32 %165, %166, !mcsema_real_eip !53
  %169 = icmp slt i32 %168, 0
  %tmp.i.i = xor i1 %167, %169
  br i1 %tmp.i.i, label %block_0x62.i.i.preheader, label %block_0x85.i.i, !mcsema_real_eip !54

block_0x62.i.i.preheader:                         ; preds = %block_0x202.i
  br label %block_0x62.i.i

block_0x85.loopexit.i.i:                          ; preds = %block_0x62.i.i
  %.lcssa61 = phi i32 [ %191, %block_0x62.i.i ]
  %170 = zext i32 %.lcssa61 to i64, !mcsema_real_eip !55
  br label %block_0x85.i.i

block_0x85.i.i:                                   ; preds = %block_0x85.loopexit.i.i, %block_0x202.i
  %RSI_val.0.i.i = phi i64 [ %72, %block_0x202.i ], [ %170, %block_0x85.loopexit.i.i ]
  %171 = load i64* %144, align 8, !mcsema_real_eip !56
  %172 = inttoptr i64 %171 to i32*
  %173 = load i32* %172, align 4, !mcsema_real_eip !57
  %174 = load i32* %160, align 4, !mcsema_real_eip !58
  %175 = add i32 %174, %173
  store i32 %175, i32* %160, align 4, !mcsema_real_eip !59
  %176 = add i64 %2, -276, !mcsema_real_eip !60
  %177 = inttoptr i64 %176 to i32*
  store i32 0, i32* %177, align 4, !mcsema_real_eip !60
  %178 = load i32* %150, align 4, !mcsema_real_eip !61
  %179 = sub i32 0, %178, !mcsema_real_eip !61
  %180 = icmp slt i32 %179, 0
  %181 = and i32 %178, %179, !mcsema_real_eip !61
  %182 = icmp slt i32 %181, 0
  %tmp74.i.i = xor i1 %180, %182
  br i1 %tmp74.i.i, label %block_0xa6.i.i.preheader, label %block_0xc9.i.i, !mcsema_real_eip !62

block_0xa6.i.i.preheader:                         ; preds = %block_0x85.i.i
  br label %block_0xa6.i.i

block_0x62.i.i:                                   ; preds = %block_0x62.i.i, %block_0x62.i.i.preheader
  %183 = phi i32 [ %193, %block_0x62.i.i ], [ 0, %block_0x62.i.i.preheader ]
  %184 = sext i32 %183 to i64, !mcsema_real_eip !63
  %185 = load i64* %142, align 8, !mcsema_real_eip !64
  %186 = shl nsw i64 %184, 2
  %187 = add i64 %186, %185, !mcsema_real_eip !65
  %188 = inttoptr i64 %187 to i32*
  %189 = load i32* %188, align 4, !mcsema_real_eip !65
  %190 = load i32* %160, align 4, !mcsema_real_eip !66
  %191 = add i32 %190, %189
  store i32 %191, i32* %160, align 4, !mcsema_real_eip !67
  %192 = load i32* %164, align 4, !mcsema_real_eip !68
  %193 = add i32 %192, 1
  store i32 %193, i32* %164, align 4, !mcsema_real_eip !69
  %194 = load i32* %148, align 4, !mcsema_real_eip !53
  %195 = sub i32 %193, %194, !mcsema_real_eip !53
  %196 = xor i32 %195, %193, !mcsema_real_eip !53
  %197 = icmp slt i32 %195, 0
  %198 = xor i32 %194, %193, !mcsema_real_eip !53
  %199 = and i32 %196, %198, !mcsema_real_eip !53
  %200 = icmp slt i32 %199, 0
  %tmp72.i.i = xor i1 %197, %200
  br i1 %tmp72.i.i, label %block_0x62.i.i, label %block_0x85.loopexit.i.i, !mcsema_real_eip !54

block_0xc9.loopexit.i.i:                          ; preds = %block_0xa6.i.i
  %.lcssa60 = phi i32 [ %220, %block_0xa6.i.i ]
  %201 = zext i32 %.lcssa60 to i64, !mcsema_real_eip !70
  br label %block_0xc9.i.i

block_0xc9.i.i:                                   ; preds = %block_0xc9.loopexit.i.i, %block_0x85.i.i
  %RSI_val.1.i.i = phi i64 [ %RSI_val.0.i.i, %block_0x85.i.i ], [ %201, %block_0xc9.loopexit.i.i ]
  %202 = load i32* %152, align 4, !mcsema_real_eip !71
  %203 = load i32* %160, align 4, !mcsema_real_eip !72
  %204 = add i32 %203, %202
  store i32 %204, i32* %160, align 4, !mcsema_real_eip !73
  %205 = add i64 %2, -280, !mcsema_real_eip !74
  %206 = inttoptr i64 %205 to i32*
  store i32 0, i32* %206, align 4, !mcsema_real_eip !74
  %207 = load i32* %148, align 4, !mcsema_real_eip !75
  %208 = sub i32 0, %207, !mcsema_real_eip !75
  %209 = icmp slt i32 %208, 0
  %210 = and i32 %207, %208, !mcsema_real_eip !75
  %211 = icmp slt i32 %210, 0
  %tmp79.i.i = xor i1 %209, %211
  br i1 %tmp79.i.i, label %block_0xe7.i.i.preheader, label %block_0x10a.i.i, !mcsema_real_eip !76

block_0xe7.i.i.preheader:                         ; preds = %block_0xc9.i.i
  br label %block_0xe7.i.i

block_0xa6.i.i:                                   ; preds = %block_0xa6.i.i, %block_0xa6.i.i.preheader
  %212 = phi i32 [ %222, %block_0xa6.i.i ], [ 0, %block_0xa6.i.i.preheader ]
  %213 = sext i32 %212 to i64, !mcsema_real_eip !77
  %214 = load i64* %146, align 8, !mcsema_real_eip !78
  %215 = shl nsw i64 %213, 2
  %216 = add i64 %215, %214, !mcsema_real_eip !79
  %217 = inttoptr i64 %216 to i32*
  %218 = load i32* %217, align 4, !mcsema_real_eip !79
  %219 = load i32* %160, align 4, !mcsema_real_eip !80
  %220 = add i32 %219, %218
  store i32 %220, i32* %160, align 4, !mcsema_real_eip !81
  %221 = load i32* %177, align 4, !mcsema_real_eip !82
  %222 = add i32 %221, 1
  store i32 %222, i32* %177, align 4, !mcsema_real_eip !83
  %223 = load i32* %150, align 4, !mcsema_real_eip !61
  %224 = sub i32 %222, %223, !mcsema_real_eip !61
  %225 = xor i32 %224, %222, !mcsema_real_eip !61
  %226 = icmp slt i32 %224, 0
  %227 = xor i32 %223, %222, !mcsema_real_eip !61
  %228 = and i32 %225, %227, !mcsema_real_eip !61
  %229 = icmp slt i32 %228, 0
  %tmp77.i.i = xor i1 %226, %229
  br i1 %tmp77.i.i, label %block_0xa6.i.i, label %block_0xc9.loopexit.i.i, !mcsema_real_eip !62

block_0x10a.loopexit.i.i:                         ; preds = %block_0xe7.i.i
  %.lcssa59 = phi i32 [ %257, %block_0xe7.i.i ]
  %230 = zext i32 %.lcssa59 to i64, !mcsema_real_eip !84
  br label %block_0x10a.i.i

block_0x10a.i.i:                                  ; preds = %block_0x10a.loopexit.i.i, %block_0xc9.i.i
  %RSI_val.2.i.i = phi i64 [ %RSI_val.1.i.i, %block_0xc9.i.i ], [ %230, %block_0x10a.loopexit.i.i ]
  %231 = load i64* %156, align 8, !mcsema_real_eip !85
  %232 = inttoptr i64 %231 to i32*
  %233 = load i32* %232, align 4, !mcsema_real_eip !86
  %234 = zext i32 %233 to i64, !mcsema_real_eip !86
  %235 = load i32* %160, align 4, !mcsema_real_eip !87
  %236 = add i32 %235, %233
  store i32 %236, i32* %160, align 4, !mcsema_real_eip !88
  %237 = add i64 %2, -284, !mcsema_real_eip !89
  %238 = inttoptr i64 %237 to i32*
  store i32 0, i32* %238, align 4, !mcsema_real_eip !89
  %239 = load i32* %150, align 4, !mcsema_real_eip !90
  %240 = sub i32 0, %239, !mcsema_real_eip !90
  %241 = xor i32 %239, %240, !mcsema_real_eip !90
  %242 = trunc i32 %240 to i8, !mcsema_real_eip !90
  %243 = tail call i8 @llvm.ctpop.i8(i8 %242) #0, !mcsema_real_eip !90
  %244 = icmp eq i32 %239, 0
  %245 = icmp slt i32 %240, 0
  %246 = icmp ne i32 %239, 0
  %247 = and i32 %239, %240, !mcsema_real_eip !90
  %248 = icmp slt i32 %247, 0
  %tmp84.i.i = xor i1 %245, %248
  br i1 %tmp84.i.i, label %block_0x12b.i.i.preheader, label %sub_160.exit, !mcsema_real_eip !91

block_0x12b.i.i.preheader:                        ; preds = %block_0x10a.i.i
  br label %block_0x12b.i.i

block_0xe7.i.i:                                   ; preds = %block_0xe7.i.i, %block_0xe7.i.i.preheader
  %249 = phi i32 [ %259, %block_0xe7.i.i ], [ 0, %block_0xe7.i.i.preheader ]
  %250 = sext i32 %249 to i64, !mcsema_real_eip !92
  %251 = load i64* %154, align 8, !mcsema_real_eip !93
  %252 = shl nsw i64 %250, 2
  %253 = add i64 %252, %251, !mcsema_real_eip !94
  %254 = inttoptr i64 %253 to i32*
  %255 = load i32* %254, align 4, !mcsema_real_eip !94
  %256 = load i32* %160, align 4, !mcsema_real_eip !95
  %257 = add i32 %256, %255
  store i32 %257, i32* %160, align 4, !mcsema_real_eip !96
  %258 = load i32* %206, align 4, !mcsema_real_eip !97
  %259 = add i32 %258, 1
  store i32 %259, i32* %206, align 4, !mcsema_real_eip !98
  %260 = load i32* %148, align 4, !mcsema_real_eip !75
  %261 = sub i32 %259, %260, !mcsema_real_eip !75
  %262 = xor i32 %261, %259, !mcsema_real_eip !75
  %263 = icmp slt i32 %261, 0
  %264 = xor i32 %260, %259, !mcsema_real_eip !75
  %265 = and i32 %262, %264, !mcsema_real_eip !75
  %266 = icmp slt i32 %265, 0
  %tmp82.i.i = xor i1 %263, %266
  br i1 %tmp82.i.i, label %block_0xe7.i.i, label %block_0x10a.loopexit.i.i, !mcsema_real_eip !76

block_0x14e.loopexit.i.i:                         ; preds = %block_0x12b.i.i
  %.lcssa58 = phi i1 [ %290, %block_0x12b.i.i ]
  %.lcssa57 = phi i1 [ %287, %block_0x12b.i.i ]
  %.lcssa56 = phi i32 [ %286, %block_0x12b.i.i ]
  %.lcssa55 = phi i32 [ %285, %block_0x12b.i.i ]
  %.lcssa54 = phi i32 [ %284, %block_0x12b.i.i ]
  %.lcssa53 = phi i32 [ %283, %block_0x12b.i.i ]
  %.lcssa52 = phi i32 [ %281, %block_0x12b.i.i ]
  %.lcssa51 = phi i32 [ %279, %block_0x12b.i.i ]
  %.lcssa = phi i64 [ %275, %block_0x12b.i.i ]
  %267 = zext i32 %.lcssa52 to i64, !mcsema_real_eip !99
  %268 = xor i32 %.lcssa56, %.lcssa54, !mcsema_real_eip !90
  %269 = trunc i32 %.lcssa55 to i8, !mcsema_real_eip !90
  %270 = tail call i8 @llvm.ctpop.i8(i8 %269) #0, !mcsema_real_eip !90
  %271 = icmp eq i32 %.lcssa53, %.lcssa54
  %272 = icmp ult i32 %.lcssa53, %.lcssa54, !mcsema_real_eip !90
  br label %sub_160.exit

block_0x12b.i.i:                                  ; preds = %block_0x12b.i.i, %block_0x12b.i.i.preheader
  %273 = phi i32 [ %283, %block_0x12b.i.i ], [ 0, %block_0x12b.i.i.preheader ]
  %274 = sext i32 %273 to i64, !mcsema_real_eip !100
  %275 = load i64* %158, align 8, !mcsema_real_eip !101
  %276 = shl nsw i64 %274, 2
  %277 = add i64 %276, %275, !mcsema_real_eip !102
  %278 = inttoptr i64 %277 to i32*
  %279 = load i32* %278, align 4, !mcsema_real_eip !102
  %280 = load i32* %160, align 4, !mcsema_real_eip !103
  %281 = add i32 %280, %279
  store i32 %281, i32* %160, align 4, !mcsema_real_eip !104
  %282 = load i32* %238, align 4, !mcsema_real_eip !105
  %283 = add i32 %282, 1
  store i32 %283, i32* %238, align 4, !mcsema_real_eip !106
  %284 = load i32* %150, align 4, !mcsema_real_eip !90
  %285 = sub i32 %283, %284, !mcsema_real_eip !90
  %286 = xor i32 %285, %283, !mcsema_real_eip !90
  %287 = icmp slt i32 %285, 0
  %288 = xor i32 %284, %283, !mcsema_real_eip !90
  %289 = and i32 %286, %288, !mcsema_real_eip !90
  %290 = icmp slt i32 %289, 0
  %tmp87.i.i = xor i1 %287, %290
  br i1 %tmp87.i.i, label %block_0x12b.i.i, label %block_0x14e.loopexit.i.i, !mcsema_real_eip !91

block_0x1df.i:                                    ; preds = %block_0x1df.i, %block_0x1b0.i
  %291 = phi i32 [ 0, %block_0x1b0.i ], [ %299, %block_0x1df.i ]
  %292 = add i32 %291, 1
  %293 = sext i32 %291 to i64, !mcsema_real_eip !107
  %294 = load i64* %77, align 8, !mcsema_real_eip !108
  %295 = shl nsw i64 %293, 2
  %296 = add i64 %295, %294, !mcsema_real_eip !109
  %297 = inttoptr i64 %296 to i32*
  store i32 %292, i32* %297, align 4, !mcsema_real_eip !109
  %298 = load i32* %79, align 4, !mcsema_real_eip !110
  %299 = add i32 %298, 1
  store i32 %299, i32* %79, align 4, !mcsema_real_eip !111
  %300 = add i32 %298, -9
  %301 = xor i32 %300, %299, !mcsema_real_eip !18
  %302 = icmp slt i32 %300, 0
  %303 = and i32 %301, %299, !mcsema_real_eip !18
  %304 = icmp slt i32 %303, 0
  %tmp214.i = xor i1 %302, %304
  br i1 %tmp214.i, label %block_0x1df.i, label %block_0x202.i, !mcsema_real_eip !112

sub_160.exit:                                     ; preds = %block_0x14e.loopexit.i.i, %block_0x10a.i.i
  %ZF_val.0.i.i = phi i1 [ %244, %block_0x10a.i.i ], [ %271, %block_0x14e.loopexit.i.i ]
  %PF_val.0.in.in.i.i = phi i8 [ %243, %block_0x10a.i.i ], [ %270, %block_0x14e.loopexit.i.i ]
  %AF_val.0.in.in.i.i = phi i32 [ %241, %block_0x10a.i.i ], [ %268, %block_0x14e.loopexit.i.i ]
  %CF_val.0.i.i = phi i1 [ %246, %block_0x10a.i.i ], [ %272, %block_0x14e.loopexit.i.i ]
  %SF_val.0.i.i = phi i1 [ %245, %block_0x10a.i.i ], [ %.lcssa57, %block_0x14e.loopexit.i.i ]
  %OF_val.0.i.i = phi i1 [ %248, %block_0x10a.i.i ], [ %.lcssa58, %block_0x14e.loopexit.i.i ]
  %RSI_val.3.i.i = phi i64 [ %RSI_val.2.i.i, %block_0x10a.i.i ], [ %267, %block_0x14e.loopexit.i.i ]
  %RDX_val.0.in.i.i = phi i32 [ %236, %block_0x10a.i.i ], [ %.lcssa51, %block_0x14e.loopexit.i.i ]
  %RCX_val.0.i.i = phi i64 [ %234, %block_0x10a.i.i ], [ %.lcssa, %block_0x14e.loopexit.i.i ]
  %AF_val.0.in.i.i = and i32 %AF_val.0.in.in.i.i, 16
  %PF_val.0.in.i.i = and i8 %PF_val.0.in.in.i.i, 1
  %RDX_val.0.i.i = zext i32 %RDX_val.0.in.i.i to i64
  %AF_val.0.i.i = icmp ne i32 %AF_val.0.in.i.i, 0
  %PF_val.0.i.i = icmp eq i8 %PF_val.0.in.i.i, 0
  %305 = load i32* %160, align 4, !mcsema_real_eip !113
  %306 = zext i32 %305 to i64, !mcsema_real_eip !113
  %307 = load i64* %134, align 8, !mcsema_real_eip !114
  %308 = load i64* %132, align 8, !mcsema_real_eip !115
  store i64 %306, i64* %RAX.i, align 8, !mcsema_real_eip !116
  store i64 %307, i64* %RBX.i, align 8, !mcsema_real_eip !116
  store i64 %RCX_val.0.i.i, i64* %RCX.i, align 8, !mcsema_real_eip !116
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !116
  store i64 %RSI_val.3.i.i, i64* %RSI.i, align 8, !mcsema_real_eip !116
  store i64 %162, i64* %RDI.i, align 8, !mcsema_real_eip !116
  store i64 %93, i64* %RSP.i, align 8, !mcsema_real_eip !116
  store i64 %308, i64* %RBP.i, align 8, !mcsema_real_eip !116
  store i64 %162, i64* %R8.i, align 8, !mcsema_real_eip !116
  store i64 10, i64* %R9.i, align 8, !mcsema_real_eip !116
  store i64 %136, i64* %R10.i, align 8, !mcsema_real_eip !116
  store i64 %137, i64* %R11.i, align 8, !mcsema_real_eip !116
  store <2 x i64> %5, <2 x i64>* %4, align 8
  store <2 x i64> %130, <2 x i64>* %129, align 8
  %309 = extractelement <2 x i64> %8, i32 1
  store i64 %309, i64* %RIP.i, align 8, !mcsema_real_eip !116
  store i1 %CF_val.0.i.i, i1* %CF.i, align 1, !mcsema_real_eip !116
  store i1 %PF_val.0.i.i, i1* %PF.i, align 1, !mcsema_real_eip !116
  store i1 %AF_val.0.i.i, i1* %AF.i, align 1, !mcsema_real_eip !116
  store i1 %ZF_val.0.i.i, i1* %ZF.i, align 1, !mcsema_real_eip !116
  store i1 %SF_val.0.i.i, i1* %SF.i, align 1, !mcsema_real_eip !116
  store i1 %OF_val.0.i.i, i1* %OF.i, align 1, !mcsema_real_eip !116
  store i1 %9, i1* %DF.i, align 1, !mcsema_real_eip !116
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !116
  store i1 %12, i1* %FPU_B.i, align 1, !mcsema_real_eip !116
  store i1 %13, i1* %FPU_C3.i, align 1, !mcsema_real_eip !116
  store i3 %14, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !116
  store i1 %15, i1* %FPU_C2.i, align 1, !mcsema_real_eip !116
  store i1 %16, i1* %FPU_C1.i, align 1, !mcsema_real_eip !116
  store i1 %17, i1* %FPU_C0.i, align 1, !mcsema_real_eip !116
  store i1 %18, i1* %FPU_ES.i, align 1, !mcsema_real_eip !116
  store i1 %19, i1* %FPU_SF.i, align 1, !mcsema_real_eip !116
  store i1 %20, i1* %FPU_PE.i, align 1, !mcsema_real_eip !116
  store i1 %21, i1* %FPU_UE.i, align 1, !mcsema_real_eip !116
  store i1 %22, i1* %FPU_OE.i, align 1, !mcsema_real_eip !116
  store i1 %23, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !116
  store i1 %24, i1* %FPU_DE.i, align 1, !mcsema_real_eip !116
  store i1 %25, i1* %FPU_IE.i, align 1, !mcsema_real_eip !116
  store i1 %26, i1* %FPU_X.i, align 1, !mcsema_real_eip !116
  store i2 %27, i2* %FPU_RC.i, align 1, !mcsema_real_eip !116
  store i2 %28, i2* %FPU_PC.i, align 1, !mcsema_real_eip !116
  store i1 %29, i1* %FPU_PM.i, align 1, !mcsema_real_eip !116
  store i1 %30, i1* %FPU_UM.i, align 1, !mcsema_real_eip !116
  store i1 %31, i1* %FPU_OM.i, align 1, !mcsema_real_eip !116
  store i1 %32, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !116
  store i1 %33, i1* %FPU_DM.i, align 1, !mcsema_real_eip !116
  store i1 %34, i1* %FPU_IM.i, align 1, !mcsema_real_eip !116
  store i64 %37, i64* %36, align 4
  store i16 %38, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !116
  store i64 %39, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !116
  store i16 %40, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !116
  store i64 %41, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !116
  store i128 %42, i128* %XMM0.i, align 1, !mcsema_real_eip !116
  store i128 %43, i128* %XMM1.i, align 1, !mcsema_real_eip !116
  store i128 %44, i128* %XMM2.i, align 1, !mcsema_real_eip !116
  store i128 %45, i128* %XMM3.i, align 1, !mcsema_real_eip !116
  store i128 %46, i128* %XMM4.i, align 1, !mcsema_real_eip !116
  store i128 %47, i128* %XMM5.i, align 1, !mcsema_real_eip !116
  store i128 %48, i128* %XMM6.i, align 1, !mcsema_real_eip !116
  store i128 %49, i128* %XMM7.i, align 1, !mcsema_real_eip !116
  store i128 %50, i128* %XMM8.i, align 1, !mcsema_real_eip !116
  store i128 %51, i128* %XMM9.i, align 1, !mcsema_real_eip !116
  store i128 %52, i128* %XMM10.i, align 1, !mcsema_real_eip !116
  store i128 %53, i128* %XMM11.i, align 1, !mcsema_real_eip !116
  store i128 %54, i128* %XMM12.i, align 1, !mcsema_real_eip !116
  store i128 %55, i128* %XMM13.i, align 1, !mcsema_real_eip !116
  store i128 %56, i128* %XMM14.i, align 1, !mcsema_real_eip !116
  store i128 %57, i128* %XMM15.i, align 1, !mcsema_real_eip !116
  store <2 x i64> %59, <2 x i64>* %58, align 1
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast.i)
  %310 = bitcast <2 x i64> %5 to i128
  %trunc.i = trunc i128 %310 to i64
  %311 = lshr i128 %310, 64
  %312 = trunc i128 %311 to i64
  %313 = bitcast <2 x i64> %130 to i128
  %314 = lshr i128 %313, 64
  %315 = trunc i128 %314 to i64
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast, i8* %11, i32 128, i32 4, i1 false), !mcsema_real_eip !33
  %316 = bitcast <2 x i64> %59 to i128
  %trunc158.i = trunc i128 %316 to i64
  %317 = lshr i128 %316, 64
  %318 = trunc i128 %317 to i64
  %uadd215.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %93, i64 144)
  %319 = extractvalue { i64, i1 } %uadd215.i, 0
  %320 = xor i64 %319, %93, !mcsema_real_eip !117
  %321 = and i64 %320, 16
  %322 = icmp eq i64 %321, 0
  %323 = icmp slt i64 %319, 0
  %324 = icmp eq i64 %319, 0, !mcsema_real_eip !117
  %325 = add i64 %2, 9223372036854775640
  %326 = and i64 %320, %325, !mcsema_real_eip !117
  %327 = icmp slt i64 %326, 0
  %328 = trunc i64 %319 to i8, !mcsema_real_eip !117
  %329 = tail call i8 @llvm.ctpop.i8(i8 %328), !mcsema_real_eip !117
  %330 = and i8 %329, 1
  %331 = icmp eq i8 %330, 0
  %332 = extractvalue { i64, i1 } %uadd215.i, 1
  %333 = inttoptr i64 %319 to i64*, !mcsema_real_eip !118
  %334 = load i64* %333, align 8, !mcsema_real_eip !118
  %335 = add i64 %319, 8, !mcsema_real_eip !118
  %336 = inttoptr i64 %335 to i64*, !mcsema_real_eip !119
  %337 = load i64* %336, align 8, !mcsema_real_eip !119
  %338 = add i64 %319, 16, !mcsema_real_eip !119
  %339 = inttoptr i64 %338 to i64*, !mcsema_real_eip !120
  %340 = load i64* %339, align 8, !mcsema_real_eip !120
  %341 = add i64 %319, 32, !mcsema_real_eip !121
  store i64 %306, i64* %RAX.i, align 8, !mcsema_real_eip !121
  store i64 %334, i64* %RBX.i, align 8, !mcsema_real_eip !121
  store i64 %RCX_val.0.i.i, i64* %RCX.i, align 8, !mcsema_real_eip !121
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !121
  store i64 %RSI_val.3.i.i, i64* %RSI.i, align 8, !mcsema_real_eip !121
  store i64 %162, i64* %RDI.i, align 8, !mcsema_real_eip !121
  store i64 %341, i64* %RSP.i, align 8, !mcsema_real_eip !121
  store i64 %340, i64* %RBP.i, align 8, !mcsema_real_eip !121
  store i64 %162, i64* %R8.i, align 8, !mcsema_real_eip !121
  store i64 10, i64* %R9.i, align 8, !mcsema_real_eip !121
  store i64 %136, i64* %R10.i, align 8, !mcsema_real_eip !121
  store i64 %137, i64* %R11.i, align 8, !mcsema_real_eip !121
  store i64 %trunc.i, i64* %R12.i, align 8, !mcsema_real_eip !121
  store i64 %312, i64* %R13.i, align 8, !mcsema_real_eip !121
  store i64 %337, i64* %R14.i, align 8, !mcsema_real_eip !121
  store i64 %315, i64* %R15.i, align 8, !mcsema_real_eip !121
  store i64 %309, i64* %RIP.i, align 8, !mcsema_real_eip !121
  store i1 %332, i1* %CF.i, align 1, !mcsema_real_eip !121
  store i1 %331, i1* %PF.i, align 1, !mcsema_real_eip !121
  store i1 %322, i1* %AF.i, align 1, !mcsema_real_eip !121
  store i1 %324, i1* %ZF.i, align 1, !mcsema_real_eip !121
  store i1 %323, i1* %SF.i, align 1, !mcsema_real_eip !121
  store i1 %327, i1* %OF.i, align 1, !mcsema_real_eip !121
  store i1 %9, i1* %DF.i, align 1, !mcsema_real_eip !121
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !121
  store i1 %12, i1* %FPU_B.i, align 1, !mcsema_real_eip !121
  store i1 %13, i1* %FPU_C3.i, align 1, !mcsema_real_eip !121
  store i3 %14, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !121
  store i1 %15, i1* %FPU_C2.i, align 1, !mcsema_real_eip !121
  store i1 %16, i1* %FPU_C1.i, align 1, !mcsema_real_eip !121
  store i1 %17, i1* %FPU_C0.i, align 1, !mcsema_real_eip !121
  store i1 %18, i1* %FPU_ES.i, align 1, !mcsema_real_eip !121
  store i1 %19, i1* %FPU_SF.i, align 1, !mcsema_real_eip !121
  store i1 %20, i1* %FPU_PE.i, align 1, !mcsema_real_eip !121
  store i1 %21, i1* %FPU_UE.i, align 1, !mcsema_real_eip !121
  store i1 %22, i1* %FPU_OE.i, align 1, !mcsema_real_eip !121
  store i1 %23, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !121
  store i1 %24, i1* %FPU_DE.i, align 1, !mcsema_real_eip !121
  store i1 %25, i1* %FPU_IE.i, align 1, !mcsema_real_eip !121
  store i1 %26, i1* %FPU_X.i, align 1, !mcsema_real_eip !121
  store i2 %27, i2* %FPU_RC.i, align 1, !mcsema_real_eip !121
  store i2 %28, i2* %FPU_PC.i, align 1, !mcsema_real_eip !121
  store i1 %29, i1* %FPU_PM.i, align 1, !mcsema_real_eip !121
  store i1 %30, i1* %FPU_UM.i, align 1, !mcsema_real_eip !121
  store i1 %31, i1* %FPU_OM.i, align 1, !mcsema_real_eip !121
  store i1 %32, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !121
  store i1 %33, i1* %FPU_DM.i, align 1, !mcsema_real_eip !121
  store i1 %34, i1* %FPU_IM.i, align 1, !mcsema_real_eip !121
  store i64 %37, i64* %36, align 4
  store i16 %38, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !121
  store i64 %39, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !121
  store i16 %40, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !121
  store i64 %41, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !121
  store i128 %42, i128* %XMM0.i, align 1, !mcsema_real_eip !121
  store i128 %43, i128* %XMM1.i, align 1, !mcsema_real_eip !121
  store i128 %44, i128* %XMM2.i, align 1, !mcsema_real_eip !121
  store i128 %45, i128* %XMM3.i, align 1, !mcsema_real_eip !121
  store i128 %46, i128* %XMM4.i, align 1, !mcsema_real_eip !121
  store i128 %47, i128* %XMM5.i, align 1, !mcsema_real_eip !121
  store i128 %48, i128* %XMM6.i, align 1, !mcsema_real_eip !121
  store i128 %49, i128* %XMM7.i, align 1, !mcsema_real_eip !121
  store i128 %50, i128* %XMM8.i, align 1, !mcsema_real_eip !121
  store i128 %51, i128* %XMM9.i, align 1, !mcsema_real_eip !121
  store i128 %52, i128* %XMM10.i, align 1, !mcsema_real_eip !121
  store i128 %53, i128* %XMM11.i, align 1, !mcsema_real_eip !121
  store i128 %54, i128* %XMM12.i, align 1, !mcsema_real_eip !121
  store i128 %55, i128* %XMM13.i, align 1, !mcsema_real_eip !121
  store i128 %56, i128* %XMM14.i, align 1, !mcsema_real_eip !121
  store i128 %57, i128* %XMM15.i, align 1, !mcsema_real_eip !121
  store i64 %trunc158.i, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !121
  store i64 %318, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !121
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
!3 = metadata !{i64 352, [12 x i8] c"\09pushq\09%rbp\00"}
!4 = metadata !{i64 356, [12 x i8] c"\09pushq\09%r14\00"}
!5 = metadata !{i64 358, [12 x i8] c"\09pushq\09%rbx\00"}
!6 = metadata !{i64 366, [20 x i8] c"\09movl\09$0, -20(%rbp)\00"}
!7 = metadata !{i64 373, [20 x i8] c"\09movl\09$1, -24(%rbp)\00"}
!8 = metadata !{i64 380, [20 x i8] c"\09movl\09$0, -68(%rbp)\00"}
!9 = metadata !{i64 412, [29 x i8] c"\09movl\09%eax, -64(%rbp,%rcx,4)\00"}
!10 = metadata !{i64 446, [22 x i8] c"\09movq\09%rax, -80(%rbp)\00"}
!11 = metadata !{i64 450, [9 x i8] c"\09callq\090\00"}
!12 = metadata !{i64 455, [22 x i8] c"\09movq\09%rax, -88(%rbp)\00"}
!13 = metadata !{i64 459, [20 x i8] c"\09movl\09$0, -92(%rbp)\00"}
!14 = metadata !{i64 408, [24 x i8] c"\09movslq\09-68(%rbp), %rcx\00"}
!15 = metadata !{i64 416, [22 x i8] c"\09movl\09-68(%rbp), %eax\00"}
!16 = metadata !{i64 424, [22 x i8] c"\09movl\09%eax, -68(%rbp)\00"}
!17 = metadata !{i64 394, [8 x i8] c"\09jge\0932\00"}
!18 = metadata !{i64 466, [21 x i8] c"\09cmpl\09$10, -92(%rbp)\00"}
!19 = metadata !{i64 523, [22 x i8] c"\09movl\09-24(%rbp), %edi\00"}
!20 = metadata !{i64 526, [22 x i8] c"\09movq\09-80(%rbp), %rdx\00"}
!21 = metadata !{i64 530, [22 x i8] c"\09movq\09-88(%rbp), %rsi\00"}
!22 = metadata !{i64 546, [23 x i8] c"\09movq\09%rsi, -104(%rbp)\00"}
!23 = metadata !{i64 557, [23 x i8] c"\09movq\09%rcx, -112(%rbp)\00"}
!24 = metadata !{i64 564, [23 x i8] c"\09movl\09%r8d, -116(%rbp)\00"}
!25 = metadata !{i64 571, [22 x i8] c"\09movq\09%r9, -128(%rbp)\00"}
!26 = metadata !{i64 578, [23 x i8] c"\09movl\09-116(%rbp), %eax\00"}
!27 = metadata !{i64 581, [19 x i8] c"\09movl\09%eax, (%rsp)\00"}
!28 = metadata !{i64 584, [23 x i8] c"\09movq\09-112(%rbp), %rbx\00"}
!29 = metadata !{i64 588, [20 x i8] c"\09movq\09%rbx, 8(%rsp)\00"}
!30 = metadata !{i64 593, [23 x i8] c"\09movq\09-128(%rbp), %r14\00"}
!31 = metadata !{i64 597, [21 x i8] c"\09movq\09%r14, 16(%rsp)\00"}
!32 = metadata !{i64 602, [21 x i8] c"\09movq\09%r10, 24(%rsp)\00"}
!33 = metadata !{i64 607, [12 x i8] c"\09callq\09-612\00"}
!34 = metadata !{i64 4, [12 x i8] c"\09pushq\09%rbx\00"}
!35 = metadata !{i64 5, [21 x i8] c"\09movq\0940(%rbp), %rax\00"}
!36 = metadata !{i64 9, [21 x i8] c"\09movq\0932(%rbp), %r10\00"}
!37 = metadata !{i64 13, [21 x i8] c"\09movq\0924(%rbp), %r11\00"}
!38 = metadata !{i64 17, [21 x i8] c"\09movl\0916(%rbp), %ebx\00"}
!39 = metadata !{i64 20, [22 x i8] c"\09movl\09%edi, -12(%rbp)\00"}
!40 = metadata !{i64 23, [22 x i8] c"\09movq\09%rsi, -24(%rbp)\00"}
!41 = metadata !{i64 27, [22 x i8] c"\09movq\09%rdx, -32(%rbp)\00"}
!42 = metadata !{i64 31, [22 x i8] c"\09movq\09%rcx, -40(%rbp)\00"}
!43 = metadata !{i64 35, [22 x i8] c"\09movl\09%r8d, -44(%rbp)\00"}
!44 = metadata !{i64 39, [22 x i8] c"\09movl\09%r9d, -48(%rbp)\00"}
!45 = metadata !{i64 43, [22 x i8] c"\09movl\09%ebx, -52(%rbp)\00"}
!46 = metadata !{i64 46, [22 x i8] c"\09movq\09%r11, -64(%rbp)\00"}
!47 = metadata !{i64 50, [22 x i8] c"\09movq\09%r10, -72(%rbp)\00"}
!48 = metadata !{i64 54, [22 x i8] c"\09movq\09%rax, -80(%rbp)\00"}
!49 = metadata !{i64 58, [20 x i8] c"\09movl\09$0, -84(%rbp)\00"}
!50 = metadata !{i64 65, [22 x i8] c"\09movl\09-12(%rbp), %edi\00"}
!51 = metadata !{i64 75, [22 x i8] c"\09movl\09%r8d, -84(%rbp)\00"}
!52 = metadata !{i64 79, [20 x i8] c"\09movl\09$0, -88(%rbp)\00"}
!53 = metadata !{i64 89, [22 x i8] c"\09cmpl\09-44(%rbp), %eax\00"}
!54 = metadata !{i64 92, [8 x i8] c"\09jge\0935\00"}
!55 = metadata !{i64 112, [17 x i8] c"\09addl\09%edx, %esi\00"}
!56 = metadata !{i64 133, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!57 = metadata !{i64 137, [19 x i8] c"\09movl\09(%rax), %ecx\00"}
!58 = metadata !{i64 139, [22 x i8] c"\09movl\09-84(%rbp), %edx\00"}
!59 = metadata !{i64 144, [22 x i8] c"\09movl\09%edx, -84(%rbp)\00"}
!60 = metadata !{i64 147, [20 x i8] c"\09movl\09$0, -92(%rbp)\00"}
!61 = metadata !{i64 157, [22 x i8] c"\09cmpl\09-48(%rbp), %eax\00"}
!62 = metadata !{i64 160, [8 x i8] c"\09jge\0935\00"}
!63 = metadata !{i64 98, [24 x i8] c"\09movslq\09-88(%rbp), %rax\00"}
!64 = metadata !{i64 102, [22 x i8] c"\09movq\09-24(%rbp), %rcx\00"}
!65 = metadata !{i64 106, [26 x i8] c"\09movl\09(%rcx,%rax,4), %edx\00"}
!66 = metadata !{i64 109, [22 x i8] c"\09movl\09-84(%rbp), %esi\00"}
!67 = metadata !{i64 114, [22 x i8] c"\09movl\09%esi, -84(%rbp)\00"}
!68 = metadata !{i64 117, [22 x i8] c"\09movl\09-88(%rbp), %eax\00"}
!69 = metadata !{i64 125, [22 x i8] c"\09movl\09%eax, -88(%rbp)\00"}
!70 = metadata !{i64 180, [17 x i8] c"\09addl\09%edx, %esi\00"}
!71 = metadata !{i64 201, [22 x i8] c"\09movl\09-52(%rbp), %eax\00"}
!72 = metadata !{i64 204, [22 x i8] c"\09movl\09-84(%rbp), %ecx\00"}
!73 = metadata !{i64 209, [22 x i8] c"\09movl\09%ecx, -84(%rbp)\00"}
!74 = metadata !{i64 212, [20 x i8] c"\09movl\09$0, -96(%rbp)\00"}
!75 = metadata !{i64 222, [22 x i8] c"\09cmpl\09-44(%rbp), %eax\00"}
!76 = metadata !{i64 225, [8 x i8] c"\09jge\0935\00"}
!77 = metadata !{i64 166, [24 x i8] c"\09movslq\09-92(%rbp), %rax\00"}
!78 = metadata !{i64 170, [22 x i8] c"\09movq\09-40(%rbp), %rcx\00"}
!79 = metadata !{i64 174, [26 x i8] c"\09movl\09(%rcx,%rax,4), %edx\00"}
!80 = metadata !{i64 177, [22 x i8] c"\09movl\09-84(%rbp), %esi\00"}
!81 = metadata !{i64 182, [22 x i8] c"\09movl\09%esi, -84(%rbp)\00"}
!82 = metadata !{i64 185, [22 x i8] c"\09movl\09-92(%rbp), %eax\00"}
!83 = metadata !{i64 193, [22 x i8] c"\09movl\09%eax, -92(%rbp)\00"}
!84 = metadata !{i64 245, [17 x i8] c"\09addl\09%edx, %esi\00"}
!85 = metadata !{i64 266, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!86 = metadata !{i64 270, [19 x i8] c"\09movl\09(%rax), %ecx\00"}
!87 = metadata !{i64 272, [22 x i8] c"\09movl\09-84(%rbp), %edx\00"}
!88 = metadata !{i64 277, [22 x i8] c"\09movl\09%edx, -84(%rbp)\00"}
!89 = metadata !{i64 280, [21 x i8] c"\09movl\09$0, -100(%rbp)\00"}
!90 = metadata !{i64 290, [22 x i8] c"\09cmpl\09-48(%rbp), %eax\00"}
!91 = metadata !{i64 293, [8 x i8] c"\09jge\0935\00"}
!92 = metadata !{i64 231, [24 x i8] c"\09movslq\09-96(%rbp), %rax\00"}
!93 = metadata !{i64 235, [22 x i8] c"\09movq\09-64(%rbp), %rcx\00"}
!94 = metadata !{i64 239, [26 x i8] c"\09movl\09(%rcx,%rax,4), %edx\00"}
!95 = metadata !{i64 242, [22 x i8] c"\09movl\09-84(%rbp), %esi\00"}
!96 = metadata !{i64 247, [22 x i8] c"\09movl\09%esi, -84(%rbp)\00"}
!97 = metadata !{i64 250, [22 x i8] c"\09movl\09-96(%rbp), %eax\00"}
!98 = metadata !{i64 258, [22 x i8] c"\09movl\09%eax, -96(%rbp)\00"}
!99 = metadata !{i64 313, [17 x i8] c"\09addl\09%edx, %esi\00"}
!100 = metadata !{i64 299, [25 x i8] c"\09movslq\09-100(%rbp), %rax\00"}
!101 = metadata !{i64 303, [22 x i8] c"\09movq\09-80(%rbp), %rcx\00"}
!102 = metadata !{i64 307, [26 x i8] c"\09movl\09(%rcx,%rax,4), %edx\00"}
!103 = metadata !{i64 310, [22 x i8] c"\09movl\09-84(%rbp), %esi\00"}
!104 = metadata !{i64 315, [22 x i8] c"\09movl\09%esi, -84(%rbp)\00"}
!105 = metadata !{i64 318, [23 x i8] c"\09movl\09-100(%rbp), %eax\00"}
!106 = metadata !{i64 326, [23 x i8] c"\09movl\09%eax, -100(%rbp)\00"}
!107 = metadata !{i64 487, [24 x i8] c"\09movslq\09-92(%rbp), %rcx\00"}
!108 = metadata !{i64 491, [22 x i8] c"\09movq\09-88(%rbp), %rdx\00"}
!109 = metadata !{i64 495, [26 x i8] c"\09movl\09%eax, (%rdx,%rcx,4)\00"}
!110 = metadata !{i64 498, [22 x i8] c"\09movl\09-92(%rbp), %eax\00"}
!111 = metadata !{i64 506, [22 x i8] c"\09movl\09%eax, -92(%rbp)\00"}
!112 = metadata !{i64 473, [8 x i8] c"\09jge\0935\00"}
!113 = metadata !{i64 334, [22 x i8] c"\09movl\09-84(%rbp), %eax\00"}
!114 = metadata !{i64 337, [11 x i8] c"\09popq\09%rbx\00"}
!115 = metadata !{i64 338, [11 x i8] c"\09popq\09%rbp\00"}
!116 = metadata !{i64 339, [6 x i8] c"\09retq\00"}
!117 = metadata !{i64 612, [17 x i8] c"\09addq\09$144, %rsp\00"}
!118 = metadata !{i64 619, [11 x i8] c"\09popq\09%rbx\00"}
!119 = metadata !{i64 620, [11 x i8] c"\09popq\09%r14\00"}
!120 = metadata !{i64 622, [11 x i8] c"\09popq\09%rbp\00"}
!121 = metadata !{i64 623, [6 x i8] c"\09retq\00"}
