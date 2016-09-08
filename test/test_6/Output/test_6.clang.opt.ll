; ModuleID = 'Output/test_6.clang.opt.bc'
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
  %RBX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !3
  %2 = load i64* %RBX.i, align 8, !mcsema_real_eip !3
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !3
  %3 = load i64* %RSI.i, align 8, !mcsema_real_eip !3
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !3
  %4 = load i64* %RDI.i, align 8, !mcsema_real_eip !3
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !3
  %5 = load i64* %RSP.i, align 8, !mcsema_real_eip !3
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !3
  %6 = load i64* %RBP.i, align 8, !mcsema_real_eip !3
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !3
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %7 = bitcast i64* %R12.i to <2 x i64>*
  %8 = load <2 x i64>* %7, align 8
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %9 = bitcast i64* %R14.i to <2 x i64>*
  %10 = load <2 x i64>* %9, align 8
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %11 = load i64* %RIP.i, align 8, !mcsema_real_eip !3
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
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
  %61 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %62 = load <2 x i64>* %61, align 8
  %63 = add i64 %5, -8
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !3
  store i64 %6, i64* %64, align 8, !mcsema_real_eip !3
  %65 = add i64 %5, -12, !mcsema_real_eip !4
  %66 = inttoptr i64 %65 to i32*
  store i32 0, i32* %66, align 4, !mcsema_real_eip !4
  %67 = add i64 %5, -16, !mcsema_real_eip !5
  %68 = trunc i64 %4 to i32, !mcsema_real_eip !5
  %69 = inttoptr i64 %67 to i32*
  store i32 %68, i32* %69, align 4, !mcsema_real_eip !5
  %70 = add i64 %5, -24, !mcsema_real_eip !6
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !6
  store i64 %3, i64* %71, align 8, !mcsema_real_eip !6
  %72 = tail call x86_64_sysvcc i64 @malloc(i64 40), !mcsema_real_eip !7
  %73 = add i64 %5, -32, !mcsema_real_eip !8
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !8
  store i64 %72, i64* %74, align 8, !mcsema_real_eip !8
  %75 = tail call x86_64_sysvcc i64 @malloc(i64 40), !mcsema_real_eip !9
  %76 = add i64 %5, -40, !mcsema_real_eip !10
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !10
  store i64 %75, i64* %77, align 8, !mcsema_real_eip !10
  %78 = add i64 %5, -44, !mcsema_real_eip !11
  %79 = inttoptr i64 %78 to i32*
  store i32 0, i32* %79, align 4, !mcsema_real_eip !11
  br label %block_0xf3.i

block_0x11b.i:                                    ; preds = %block_0xf3.i
  %RCX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !3
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !3
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !3
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !3
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %RAX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !3
  %R9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %80 = add i64 %5, -48, !mcsema_real_eip !12
  %81 = inttoptr i64 %80 to i32*
  store i32 0, i32* %81, align 4, !mcsema_real_eip !12
  br label %block_0x12f.i

block_0xf3.i:                                     ; preds = %block_0xf3.i, %driverBlockRaw
  %82 = phi i32 [ 0, %driverBlockRaw ], [ %90, %block_0xf3.i ]
  %83 = add i32 %82, 11
  %84 = sext i32 %82 to i64, !mcsema_real_eip !13
  %85 = load i64* %74, align 8, !mcsema_real_eip !14
  %86 = shl nsw i64 %84, 2
  %87 = add i64 %86, %85, !mcsema_real_eip !15
  %88 = inttoptr i64 %87 to i32*
  store i32 %83, i32* %88, align 4, !mcsema_real_eip !15
  %89 = load i32* %79, align 4, !mcsema_real_eip !16
  %90 = add i32 %89, 1
  store i32 %90, i32* %79, align 4, !mcsema_real_eip !17
  %91 = add i32 %89, -9
  %92 = icmp slt i32 %91, 0
  %93 = sub i32 8, %89
  %94 = and i32 %90, %93
  %95 = icmp slt i32 %94, 0
  %tmp211.i = xor i1 %92, %95
  br i1 %tmp211.i, label %block_0xf3.i, label %block_0x11b.i, !mcsema_real_eip !18

block_0x152.i:                                    ; preds = %block_0x12f.i
  %.lcssa24 = phi i1 [ %195, %block_0x12f.i ]
  %.lcssa23 = phi i1 [ %193, %block_0x12f.i ]
  %.lcssa22 = phi i32 [ %192, %block_0x12f.i ]
  %.lcssa21 = phi i32 [ %191, %block_0x12f.i ]
  %.lcssa20 = phi i32 [ %190, %block_0x12f.i ]
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !3
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %96 = add i64 %5, -88
  %97 = icmp ult i32 %.lcssa20, 10, !mcsema_real_eip !19
  %98 = icmp eq i32 %.lcssa21, 0, !mcsema_real_eip !19
  %99 = trunc i32 %.lcssa21 to i8, !mcsema_real_eip !19
  %100 = tail call i8 @llvm.ctpop.i8(i8 %99), !mcsema_real_eip !19
  %101 = and i8 %100, 1
  %102 = icmp eq i8 %101, 0
  %103 = and i32 %.lcssa22, 16, !mcsema_real_eip !19
  %104 = icmp ne i32 %103, 0, !mcsema_real_eip !19
  %105 = load i64* %74, align 8, !mcsema_real_eip !20
  %106 = load i64* %77, align 8, !mcsema_real_eip !21
  %107 = inttoptr i64 %96 to i32*
  store i32 10, i32* %107, align 4, !mcsema_real_eip !22
  %108 = add i64 %5, -80, !mcsema_real_eip !23
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !23
  store i64 %105, i64* %109, align 8, !mcsema_real_eip !23
  %110 = add i64 %5, -72, !mcsema_real_eip !24
  %111 = inttoptr i64 %110 to i32*
  store i32 10, i32* %111, align 4, !mcsema_real_eip !24
  %112 = add i64 %5, -64, !mcsema_real_eip !25
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !25
  store i64 %106, i64* %113, align 8, !mcsema_real_eip !25
  %114 = add i64 %5, -52, !mcsema_real_eip !26
  %115 = inttoptr i64 %114 to i32*
  store i32 10, i32* %115, align 4, !mcsema_real_eip !26
  %116 = add i64 %5, -96
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !27
  store i64 -4981261766360305936, i64* %117, align 8, !mcsema_real_eip !27
  store i64 10, i64* %RAX.i, align 8, !mcsema_real_eip !27
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !27
  store i64 400, i64* %RCX.i, align 8, !mcsema_real_eip !27
  store i64 300, i64* %RDX.i, align 8, !mcsema_real_eip !27
  store i64 200, i64* %RSI.i, align 8, !mcsema_real_eip !27
  store i64 100, i64* %RDI.i, align 8, !mcsema_real_eip !27
  store i64 %116, i64* %RSP.i, align 8, !mcsema_real_eip !27
  store i64 %63, i64* %RBP.i, align 8, !mcsema_real_eip !27
  store i64 500, i64* %R8.i, align 8, !mcsema_real_eip !27
  store i64 600, i64* %R9.i, align 8, !mcsema_real_eip !27
  store i64 %105, i64* %R10.i, align 8, !mcsema_real_eip !27
  store i64 %106, i64* %R11.i, align 8, !mcsema_real_eip !27
  store <2 x i64> %8, <2 x i64>* %7, align 8
  store <2 x i64> %10, <2 x i64>* %9, align 8
  store i64 %11, i64* %RIP.i, align 8, !mcsema_real_eip !27
  store i1 %97, i1* %CF.i, align 1, !mcsema_real_eip !27
  store i1 %102, i1* %PF.i, align 1, !mcsema_real_eip !27
  store i1 %104, i1* %AF.i, align 1, !mcsema_real_eip !27
  store i1 %98, i1* %ZF.i, align 1, !mcsema_real_eip !27
  store i1 %.lcssa23, i1* %SF.i, align 1, !mcsema_real_eip !27
  store i1 %.lcssa24, i1* %OF.i, align 1, !mcsema_real_eip !27
  store i1 %12, i1* %DF.i, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !27
  store i1 %15, i1* %FPU_B.i, align 1, !mcsema_real_eip !27
  store i1 %16, i1* %FPU_C3.i, align 1, !mcsema_real_eip !27
  store i3 %17, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !27
  store i1 %18, i1* %FPU_C2.i, align 1, !mcsema_real_eip !27
  store i1 %19, i1* %FPU_C1.i, align 1, !mcsema_real_eip !27
  store i1 %20, i1* %FPU_C0.i, align 1, !mcsema_real_eip !27
  store i1 %21, i1* %FPU_ES.i, align 1, !mcsema_real_eip !27
  store i1 %22, i1* %FPU_SF.i, align 1, !mcsema_real_eip !27
  store i1 %23, i1* %FPU_PE.i, align 1, !mcsema_real_eip !27
  store i1 %24, i1* %FPU_UE.i, align 1, !mcsema_real_eip !27
  store i1 %25, i1* %FPU_OE.i, align 1, !mcsema_real_eip !27
  store i1 %26, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !27
  store i1 %27, i1* %FPU_DE.i, align 1, !mcsema_real_eip !27
  store i1 %28, i1* %FPU_IE.i, align 1, !mcsema_real_eip !27
  store i1 %29, i1* %FPU_X.i, align 1, !mcsema_real_eip !27
  store i2 %30, i2* %FPU_RC.i, align 1, !mcsema_real_eip !27
  store i2 %31, i2* %FPU_PC.i, align 1, !mcsema_real_eip !27
  store i1 %32, i1* %FPU_PM.i, align 1, !mcsema_real_eip !27
  store i1 %33, i1* %FPU_UM.i, align 1, !mcsema_real_eip !27
  store i1 %34, i1* %FPU_OM.i, align 1, !mcsema_real_eip !27
  store i1 %35, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !27
  store i1 %36, i1* %FPU_DM.i, align 1, !mcsema_real_eip !27
  store i1 %37, i1* %FPU_IM.i, align 1, !mcsema_real_eip !27
  store i64 %40, i64* %39, align 4
  store i16 %41, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !27
  store i64 %42, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !27
  store i16 %43, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !27
  store i64 %44, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !27
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !27
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !27
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !27
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !27
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !27
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !27
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !27
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !27
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !27
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !27
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !27
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !27
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !27
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !27
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !27
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !27
  store <2 x i64> %62, <2 x i64>* %61, align 1
  %118 = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %118)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %118, i8* %1, i32 128, i32 16, i1 false)
  %119 = add i64 %5, -104
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !2
  store i64 %63, i64* %120, align 8, !mcsema_real_eip !2
  %121 = add i64 %5, -112
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !28
  store i64 %2, i64* %122, align 8, !mcsema_real_eip !28
  %123 = load i64* %113, align 8, !mcsema_real_eip !29
  %124 = load i32* %111, align 4, !mcsema_real_eip !30
  %125 = zext i32 %124 to i64, !mcsema_real_eip !30
  %126 = load i64* %109, align 8, !mcsema_real_eip !31
  %127 = load i32* %107, align 4, !mcsema_real_eip !32
  %128 = add i64 %5, -116, !mcsema_real_eip !33
  %129 = inttoptr i64 %128 to i32*
  store i32 100, i32* %129, align 4, !mcsema_real_eip !33
  %130 = add i64 %5, -120, !mcsema_real_eip !34
  %131 = inttoptr i64 %130 to i32*
  store i32 200, i32* %131, align 4, !mcsema_real_eip !34
  %132 = add i64 %5, -124, !mcsema_real_eip !35
  %133 = inttoptr i64 %132 to i32*
  store i32 300, i32* %133, align 4, !mcsema_real_eip !35
  %134 = add i64 %5, -128, !mcsema_real_eip !36
  %135 = inttoptr i64 %134 to i32*
  store i32 400, i32* %135, align 4, !mcsema_real_eip !36
  %136 = add i64 %5, -132, !mcsema_real_eip !37
  %137 = inttoptr i64 %136 to i32*
  store i32 500, i32* %137, align 4, !mcsema_real_eip !37
  %138 = add i64 %5, -136, !mcsema_real_eip !38
  %139 = inttoptr i64 %138 to i32*
  store i32 600, i32* %139, align 4, !mcsema_real_eip !38
  %140 = add i64 %5, -140, !mcsema_real_eip !39
  %141 = inttoptr i64 %140 to i32*
  store i32 %127, i32* %141, align 4, !mcsema_real_eip !39
  %142 = add i64 %5, -152, !mcsema_real_eip !40
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !40
  store i64 %126, i64* %143, align 8, !mcsema_real_eip !40
  %144 = add i64 %5, -156, !mcsema_real_eip !41
  %145 = inttoptr i64 %144 to i32*
  store i32 %124, i32* %145, align 4, !mcsema_real_eip !41
  %146 = add i64 %5, -168, !mcsema_real_eip !42
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !42
  store i64 %123, i64* %147, align 8, !mcsema_real_eip !42
  %148 = add i64 %5, -172, !mcsema_real_eip !43
  %149 = inttoptr i64 %148 to i32*
  store i32 0, i32* %149, align 4, !mcsema_real_eip !43
  %150 = add i64 %5, -176, !mcsema_real_eip !44
  %151 = inttoptr i64 %150 to i32*
  store i32 0, i32* %151, align 4, !mcsema_real_eip !44
  %152 = load i32* %141, align 4, !mcsema_real_eip !45
  %153 = sub i32 0, %152, !mcsema_real_eip !45
  %154 = icmp slt i32 %153, 0
  %155 = and i32 %152, %153, !mcsema_real_eip !45
  %156 = icmp slt i32 %155, 0
  %tmp.i.i = xor i1 %154, %156
  br i1 %tmp.i.i, label %block_0x51.i.i.preheader, label %sub_a0.exit, !mcsema_real_eip !46

block_0x51.i.i.preheader:                         ; preds = %block_0x152.i
  br label %block_0x51.i.i

block_0x7f.loopexit.i.i:                          ; preds = %block_0x51.i.i
  %.lcssa19 = phi i32 [ %172, %block_0x51.i.i ]
  %.lcssa = phi i32 [ %170, %block_0x51.i.i ]
  %157 = zext i32 %.lcssa to i64, !mcsema_real_eip !47
  %158 = zext i32 %.lcssa19 to i64, !mcsema_real_eip !48
  br label %sub_a0.exit

block_0x51.i.i:                                   ; preds = %block_0x51.i.i, %block_0x51.i.i.preheader
  %159 = phi i32 [ %174, %block_0x51.i.i ], [ 0, %block_0x51.i.i.preheader ]
  %160 = sext i32 %159 to i64, !mcsema_real_eip !49
  %161 = load i64* %143, align 8, !mcsema_real_eip !50
  %162 = shl nsw i64 %160, 2
  %163 = add i64 %162, %161, !mcsema_real_eip !51
  %164 = inttoptr i64 %163 to i32*
  %165 = load i32* %164, align 4, !mcsema_real_eip !51
  %166 = load i64* %147, align 8, !mcsema_real_eip !52
  %167 = add i64 %166, %162, !mcsema_real_eip !47
  %168 = inttoptr i64 %167 to i32*
  %169 = load i32* %168, align 4, !mcsema_real_eip !47
  %170 = sub i32 %165, %169, !mcsema_real_eip !47
  %171 = load i32* %149, align 4, !mcsema_real_eip !53
  %172 = add i32 %170, %171
  store i32 %172, i32* %149, align 4, !mcsema_real_eip !54
  %173 = load i32* %151, align 4, !mcsema_real_eip !55
  %174 = add i32 %173, 1
  store i32 %174, i32* %151, align 4, !mcsema_real_eip !56
  %175 = load i32* %141, align 4, !mcsema_real_eip !45
  %176 = sub i32 %174, %175, !mcsema_real_eip !45
  %177 = xor i32 %176, %174, !mcsema_real_eip !45
  %178 = icmp slt i32 %176, 0
  %179 = xor i32 %175, %174, !mcsema_real_eip !45
  %180 = and i32 %177, %179, !mcsema_real_eip !45
  %181 = icmp slt i32 %180, 0
  %tmp71.i.i = xor i1 %178, %181
  br i1 %tmp71.i.i, label %block_0x51.i.i, label %block_0x7f.loopexit.i.i, !mcsema_real_eip !46

block_0x12f.i:                                    ; preds = %block_0x12f.i, %block_0x11b.i
  %182 = phi i32 [ 0, %block_0x11b.i ], [ %190, %block_0x12f.i ]
  %183 = add i32 %182, 1
  %184 = sext i32 %182 to i64, !mcsema_real_eip !57
  %185 = load i64* %77, align 8, !mcsema_real_eip !58
  %186 = shl nsw i64 %184, 2
  %187 = add i64 %186, %185, !mcsema_real_eip !59
  %188 = inttoptr i64 %187 to i32*
  store i32 %183, i32* %188, align 4, !mcsema_real_eip !59
  %189 = load i32* %81, align 4, !mcsema_real_eip !60
  %190 = add i32 %189, 1
  store i32 %190, i32* %81, align 4, !mcsema_real_eip !61
  %191 = add i32 %189, -9
  %192 = xor i32 %191, %190, !mcsema_real_eip !19
  %193 = icmp slt i32 %191, 0
  %194 = and i32 %192, %190, !mcsema_real_eip !19
  %195 = icmp slt i32 %194, 0
  %tmp215.i = xor i1 %193, %195
  br i1 %tmp215.i, label %block_0x12f.i, label %block_0x152.i, !mcsema_real_eip !62

sub_a0.exit:                                      ; preds = %block_0x7f.loopexit.i.i, %block_0x152.i
  %RSI_val.0.i.i = phi i64 [ 200, %block_0x152.i ], [ %158, %block_0x7f.loopexit.i.i ]
  %RDX_val.0.i.i = phi i64 [ 300, %block_0x152.i ], [ %157, %block_0x7f.loopexit.i.i ]
  %196 = load i32* %149, align 4, !mcsema_real_eip !63
  %197 = load i32* %129, align 4, !mcsema_real_eip !64
  %198 = load i32* %131, align 4, !mcsema_real_eip !65
  %199 = add i32 %198, %197
  %200 = load i32* %133, align 4, !mcsema_real_eip !66
  %201 = add i32 %199, %200
  %202 = load i32* %135, align 4, !mcsema_real_eip !67
  %203 = add i32 %201, %202
  %204 = load i32* %137, align 4, !mcsema_real_eip !68
  %205 = add i32 %203, %204
  %206 = load i32* %139, align 4, !mcsema_real_eip !69
  %uadd76.i.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %205, i32 %206) #0
  %207 = extractvalue { i32, i1 } %uadd76.i.i, 0
  %208 = xor i32 %205, %206, !mcsema_real_eip !69
  %209 = xor i32 %208, %207, !mcsema_real_eip !69
  %210 = and i32 %209, 16, !mcsema_real_eip !69
  %211 = icmp ne i32 %210, 0, !mcsema_real_eip !69
  %212 = icmp eq i32 %207, 0, !mcsema_real_eip !69
  %213 = trunc i32 %207 to i8, !mcsema_real_eip !69
  %214 = tail call i8 @llvm.ctpop.i8(i8 %213) #0, !mcsema_real_eip !69
  %215 = and i8 %214, 1
  %216 = icmp eq i8 %215, 0
  %217 = extractvalue { i32, i1 } %uadd76.i.i, 1
  %218 = zext i32 %207 to i64, !mcsema_real_eip !69
  %219 = sext i32 %196 to i64, !mcsema_real_eip !70
  %220 = sext i32 %207 to i64, !mcsema_real_eip !70
  %221 = mul i64 %220, %219, !mcsema_real_eip !70
  %222 = mul i32 %207, %196, !mcsema_real_eip !70
  %223 = sext i32 %222 to i64, !mcsema_real_eip !70
  %224 = icmp ne i64 %223, %221, !mcsema_real_eip !70
  %225 = zext i32 %222 to i64, !mcsema_real_eip !70
  %226 = load i64* %122, align 8, !mcsema_real_eip !71
  %227 = load i64* %120, align 8, !mcsema_real_eip !72
  store i64 %225, i64* %RAX.i, align 8, !mcsema_real_eip !73
  store i64 %226, i64* %RBX.i, align 8, !mcsema_real_eip !73
  store i64 %218, i64* %RCX.i, align 8, !mcsema_real_eip !73
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !73
  store i64 %RSI_val.0.i.i, i64* %RSI.i, align 8, !mcsema_real_eip !73
  store i64 100, i64* %RDI.i, align 8, !mcsema_real_eip !73
  store i64 %96, i64* %RSP.i, align 8, !mcsema_real_eip !73
  store i64 %227, i64* %RBP.i, align 8, !mcsema_real_eip !73
  store i64 500, i64* %R8.i, align 8, !mcsema_real_eip !73
  store i64 600, i64* %R9.i, align 8, !mcsema_real_eip !73
  store i64 %125, i64* %R10.i, align 8, !mcsema_real_eip !73
  store i64 %126, i64* %R11.i, align 8, !mcsema_real_eip !73
  store <2 x i64> %8, <2 x i64>* %7, align 8
  store <2 x i64> %10, <2 x i64>* %9, align 8
  store i64 %11, i64* %RIP.i, align 8, !mcsema_real_eip !73
  store i1 %217, i1* %CF.i, align 1, !mcsema_real_eip !73
  store i1 %216, i1* %PF.i, align 1, !mcsema_real_eip !73
  store i1 %211, i1* %AF.i, align 1, !mcsema_real_eip !73
  store i1 %212, i1* %ZF.i, align 1, !mcsema_real_eip !73
  store i1 %224, i1* %SF.i, align 1, !mcsema_real_eip !73
  store i1 %224, i1* %OF.i, align 1, !mcsema_real_eip !73
  store i1 %12, i1* %DF.i, align 1, !mcsema_real_eip !73
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %118, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !73
  store i1 %15, i1* %FPU_B.i, align 1, !mcsema_real_eip !73
  store i1 %16, i1* %FPU_C3.i, align 1, !mcsema_real_eip !73
  store i3 %17, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !73
  store i1 %18, i1* %FPU_C2.i, align 1, !mcsema_real_eip !73
  store i1 %19, i1* %FPU_C1.i, align 1, !mcsema_real_eip !73
  store i1 %20, i1* %FPU_C0.i, align 1, !mcsema_real_eip !73
  store i1 %21, i1* %FPU_ES.i, align 1, !mcsema_real_eip !73
  store i1 %22, i1* %FPU_SF.i, align 1, !mcsema_real_eip !73
  store i1 %23, i1* %FPU_PE.i, align 1, !mcsema_real_eip !73
  store i1 %24, i1* %FPU_UE.i, align 1, !mcsema_real_eip !73
  store i1 %25, i1* %FPU_OE.i, align 1, !mcsema_real_eip !73
  store i1 %26, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !73
  store i1 %27, i1* %FPU_DE.i, align 1, !mcsema_real_eip !73
  store i1 %28, i1* %FPU_IE.i, align 1, !mcsema_real_eip !73
  store i1 %29, i1* %FPU_X.i, align 1, !mcsema_real_eip !73
  store i2 %30, i2* %FPU_RC.i, align 1, !mcsema_real_eip !73
  store i2 %31, i2* %FPU_PC.i, align 1, !mcsema_real_eip !73
  store i1 %32, i1* %FPU_PM.i, align 1, !mcsema_real_eip !73
  store i1 %33, i1* %FPU_UM.i, align 1, !mcsema_real_eip !73
  store i1 %34, i1* %FPU_OM.i, align 1, !mcsema_real_eip !73
  store i1 %35, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !73
  store i1 %36, i1* %FPU_DM.i, align 1, !mcsema_real_eip !73
  store i1 %37, i1* %FPU_IM.i, align 1, !mcsema_real_eip !73
  store i64 %40, i64* %39, align 4
  store i16 %41, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !73
  store i64 %42, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !73
  store i16 %43, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !73
  store i64 %44, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !73
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !73
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !73
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !73
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !73
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !73
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !73
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !73
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !73
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !73
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !73
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !73
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !73
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !73
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !73
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !73
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !73
  store <2 x i64> %62, <2 x i64>* %61, align 1
  call void @llvm.lifetime.end(i64 128, i8* %118)
  %228 = bitcast <2 x i64> %8 to i128
  %trunc.i = trunc i128 %228 to i64
  %229 = lshr i128 %228, 64
  %230 = trunc i128 %229 to i64
  %231 = bitcast <2 x i64> %10 to i128
  %trunc13.i = trunc i128 %231 to i64
  %232 = lshr i128 %231, 64
  %233 = trunc i128 %232 to i64
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %14, i32 128, i32 4, i1 false), !mcsema_real_eip !27
  %234 = bitcast <2 x i64> %62 to i128
  %trunc14.i = trunc i128 %234 to i64
  %235 = lshr i128 %234, 64
  %236 = trunc i128 %235 to i64
  %uadd216.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %96, i64 80)
  %237 = extractvalue { i64, i1 } %uadd216.i, 0
  %238 = xor i64 %237, %96, !mcsema_real_eip !74
  %239 = and i64 %238, 16
  %240 = icmp eq i64 %239, 0
  %241 = icmp slt i64 %237, 0
  %242 = icmp eq i64 %237, 0, !mcsema_real_eip !74
  %243 = add i64 %5, 9223372036854775720
  %244 = and i64 %238, %243, !mcsema_real_eip !74
  %245 = icmp slt i64 %244, 0
  %246 = trunc i64 %237 to i8, !mcsema_real_eip !74
  %247 = tail call i8 @llvm.ctpop.i8(i8 %246), !mcsema_real_eip !74
  %248 = and i8 %247, 1
  %249 = icmp eq i8 %248, 0
  %250 = extractvalue { i64, i1 } %uadd216.i, 1
  %251 = inttoptr i64 %237 to i64*, !mcsema_real_eip !75
  %252 = load i64* %251, align 8, !mcsema_real_eip !75
  %253 = add i64 %237, 16, !mcsema_real_eip !76
  store i64 %225, i64* %RAX.i, align 8, !mcsema_real_eip !76
  store i64 %226, i64* %RBX.i, align 8, !mcsema_real_eip !76
  store i64 %218, i64* %RCX.i, align 8, !mcsema_real_eip !76
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !76
  store i64 %RSI_val.0.i.i, i64* %RSI.i, align 8, !mcsema_real_eip !76
  store i64 100, i64* %RDI.i, align 8, !mcsema_real_eip !76
  store i64 %253, i64* %RSP.i, align 8, !mcsema_real_eip !76
  store i64 %252, i64* %RBP.i, align 8, !mcsema_real_eip !76
  store i64 500, i64* %R8.i, align 8, !mcsema_real_eip !76
  store i64 600, i64* %R9.i, align 8, !mcsema_real_eip !76
  store i64 %125, i64* %R10.i, align 8, !mcsema_real_eip !76
  store i64 %126, i64* %R11.i, align 8, !mcsema_real_eip !76
  store i64 %trunc.i, i64* %R12.i, align 8, !mcsema_real_eip !76
  store i64 %230, i64* %R13.i, align 8, !mcsema_real_eip !76
  store i64 %trunc13.i, i64* %R14.i, align 8, !mcsema_real_eip !76
  store i64 %233, i64* %R15.i, align 8, !mcsema_real_eip !76
  store i64 %11, i64* %RIP.i, align 8, !mcsema_real_eip !76
  store i1 %250, i1* %CF.i, align 1, !mcsema_real_eip !76
  store i1 %249, i1* %PF.i, align 1, !mcsema_real_eip !76
  store i1 %240, i1* %AF.i, align 1, !mcsema_real_eip !76
  store i1 %242, i1* %ZF.i, align 1, !mcsema_real_eip !76
  store i1 %241, i1* %SF.i, align 1, !mcsema_real_eip !76
  store i1 %245, i1* %OF.i, align 1, !mcsema_real_eip !76
  store i1 %12, i1* %DF.i, align 1, !mcsema_real_eip !76
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !76
  store i1 %15, i1* %FPU_B.i, align 1, !mcsema_real_eip !76
  store i1 %16, i1* %FPU_C3.i, align 1, !mcsema_real_eip !76
  store i3 %17, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !76
  store i1 %18, i1* %FPU_C2.i, align 1, !mcsema_real_eip !76
  store i1 %19, i1* %FPU_C1.i, align 1, !mcsema_real_eip !76
  store i1 %20, i1* %FPU_C0.i, align 1, !mcsema_real_eip !76
  store i1 %21, i1* %FPU_ES.i, align 1, !mcsema_real_eip !76
  store i1 %22, i1* %FPU_SF.i, align 1, !mcsema_real_eip !76
  store i1 %23, i1* %FPU_PE.i, align 1, !mcsema_real_eip !76
  store i1 %24, i1* %FPU_UE.i, align 1, !mcsema_real_eip !76
  store i1 %25, i1* %FPU_OE.i, align 1, !mcsema_real_eip !76
  store i1 %26, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !76
  store i1 %27, i1* %FPU_DE.i, align 1, !mcsema_real_eip !76
  store i1 %28, i1* %FPU_IE.i, align 1, !mcsema_real_eip !76
  store i1 %29, i1* %FPU_X.i, align 1, !mcsema_real_eip !76
  store i2 %30, i2* %FPU_RC.i, align 1, !mcsema_real_eip !76
  store i2 %31, i2* %FPU_PC.i, align 1, !mcsema_real_eip !76
  store i1 %32, i1* %FPU_PM.i, align 1, !mcsema_real_eip !76
  store i1 %33, i1* %FPU_UM.i, align 1, !mcsema_real_eip !76
  store i1 %34, i1* %FPU_OM.i, align 1, !mcsema_real_eip !76
  store i1 %35, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !76
  store i1 %36, i1* %FPU_DM.i, align 1, !mcsema_real_eip !76
  store i1 %37, i1* %FPU_IM.i, align 1, !mcsema_real_eip !76
  store i64 %40, i64* %39, align 4
  store i16 %41, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !76
  store i64 %42, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !76
  store i16 %43, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !76
  store i64 %44, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !76
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !76
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !76
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !76
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !76
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !76
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !76
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !76
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !76
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !76
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !76
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !76
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !76
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !76
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !76
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !76
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !76
  store i64 %trunc14.i, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !76
  store i64 %236, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !76
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
!3 = metadata !{i64 160, [12 x i8] c"\09pushq\09%rbp\00"}
!4 = metadata !{i64 178, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!5 = metadata !{i64 185, [21 x i8] c"\09movl\09%edi, -8(%rbp)\00"}
!6 = metadata !{i64 188, [22 x i8] c"\09movq\09%rsi, -16(%rbp)\00"}
!7 = metadata !{i64 195, [9 x i8] c"\09callq\090\00"}
!8 = metadata !{i64 210, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!9 = metadata !{i64 214, [9 x i8] c"\09callq\090\00"}
!10 = metadata !{i64 219, [22 x i8] c"\09movq\09%rax, -32(%rbp)\00"}
!11 = metadata !{i64 223, [20 x i8] c"\09movl\09$0, -36(%rbp)\00"}
!12 = metadata !{i64 283, [20 x i8] c"\09movl\09$0, -40(%rbp)\00"}
!13 = metadata !{i64 256, [24 x i8] c"\09movslq\09-36(%rbp), %rcx\00"}
!14 = metadata !{i64 260, [22 x i8] c"\09movq\09-24(%rbp), %rdx\00"}
!15 = metadata !{i64 264, [26 x i8] c"\09movl\09%eax, (%rdx,%rcx,4)\00"}
!16 = metadata !{i64 267, [22 x i8] c"\09movl\09-36(%rbp), %eax\00"}
!17 = metadata !{i64 275, [22 x i8] c"\09movl\09%eax, -36(%rbp)\00"}
!18 = metadata !{i64 237, [8 x i8] c"\09jge\0940\00"}
!19 = metadata !{i64 290, [21 x i8] c"\09cmpl\09$10, -40(%rbp)\00"}
!20 = metadata !{i64 375, [22 x i8] c"\09movq\09-24(%rbp), %r10\00"}
!21 = metadata !{i64 379, [22 x i8] c"\09movq\09-32(%rbp), %r11\00"}
!22 = metadata !{i64 383, [18 x i8] c"\09movl\09$10, (%rsp)\00"}
!23 = metadata !{i64 390, [20 x i8] c"\09movq\09%r10, 8(%rsp)\00"}
!24 = metadata !{i64 395, [20 x i8] c"\09movl\09$10, 16(%rsp)\00"}
!25 = metadata !{i64 403, [21 x i8] c"\09movq\09%r11, 24(%rsp)\00"}
!26 = metadata !{i64 408, [22 x i8] c"\09movl\09%eax, -44(%rbp)\00"}
!27 = metadata !{i64 411, [12 x i8] c"\09callq\09-416\00"}
!28 = metadata !{i64 4, [12 x i8] c"\09pushq\09%rbx\00"}
!29 = metadata !{i64 5, [21 x i8] c"\09movq\0940(%rbp), %rax\00"}
!30 = metadata !{i64 9, [22 x i8] c"\09movl\0932(%rbp), %r10d\00"}
!31 = metadata !{i64 13, [21 x i8] c"\09movq\0924(%rbp), %r11\00"}
!32 = metadata !{i64 17, [21 x i8] c"\09movl\0916(%rbp), %ebx\00"}
!33 = metadata !{i64 20, [22 x i8] c"\09movl\09%edi, -12(%rbp)\00"}
!34 = metadata !{i64 23, [22 x i8] c"\09movl\09%esi, -16(%rbp)\00"}
!35 = metadata !{i64 26, [22 x i8] c"\09movl\09%edx, -20(%rbp)\00"}
!36 = metadata !{i64 29, [22 x i8] c"\09movl\09%ecx, -24(%rbp)\00"}
!37 = metadata !{i64 32, [22 x i8] c"\09movl\09%r8d, -28(%rbp)\00"}
!38 = metadata !{i64 36, [22 x i8] c"\09movl\09%r9d, -32(%rbp)\00"}
!39 = metadata !{i64 40, [22 x i8] c"\09movl\09%ebx, -36(%rbp)\00"}
!40 = metadata !{i64 43, [22 x i8] c"\09movq\09%r11, -48(%rbp)\00"}
!41 = metadata !{i64 47, [23 x i8] c"\09movl\09%r10d, -52(%rbp)\00"}
!42 = metadata !{i64 51, [22 x i8] c"\09movq\09%rax, -64(%rbp)\00"}
!43 = metadata !{i64 55, [20 x i8] c"\09movl\09$0, -68(%rbp)\00"}
!44 = metadata !{i64 62, [20 x i8] c"\09movl\09$0, -72(%rbp)\00"}
!45 = metadata !{i64 72, [22 x i8] c"\09cmpl\09-36(%rbp), %eax\00"}
!46 = metadata !{i64 75, [8 x i8] c"\09jge\0946\00"}
!47 = metadata !{i64 100, [26 x i8] c"\09subl\09(%rcx,%rax,4), %edx\00"}
!48 = metadata !{i64 106, [17 x i8] c"\09addl\09%edx, %esi\00"}
!49 = metadata !{i64 81, [24 x i8] c"\09movslq\09-72(%rbp), %rax\00"}
!50 = metadata !{i64 85, [22 x i8] c"\09movq\09-48(%rbp), %rcx\00"}
!51 = metadata !{i64 89, [26 x i8] c"\09movl\09(%rcx,%rax,4), %edx\00"}
!52 = metadata !{i64 96, [22 x i8] c"\09movq\09-64(%rbp), %rcx\00"}
!53 = metadata !{i64 103, [22 x i8] c"\09movl\09-68(%rbp), %esi\00"}
!54 = metadata !{i64 108, [22 x i8] c"\09movl\09%esi, -68(%rbp)\00"}
!55 = metadata !{i64 111, [22 x i8] c"\09movl\09-72(%rbp), %eax\00"}
!56 = metadata !{i64 119, [22 x i8] c"\09movl\09%eax, -72(%rbp)\00"}
!57 = metadata !{i64 311, [24 x i8] c"\09movslq\09-40(%rbp), %rcx\00"}
!58 = metadata !{i64 315, [22 x i8] c"\09movq\09-32(%rbp), %rdx\00"}
!59 = metadata !{i64 319, [26 x i8] c"\09movl\09%eax, (%rdx,%rcx,4)\00"}
!60 = metadata !{i64 322, [22 x i8] c"\09movl\09-40(%rbp), %eax\00"}
!61 = metadata !{i64 330, [22 x i8] c"\09movl\09%eax, -40(%rbp)\00"}
!62 = metadata !{i64 297, [8 x i8] c"\09jge\0935\00"}
!63 = metadata !{i64 127, [22 x i8] c"\09movl\09-68(%rbp), %eax\00"}
!64 = metadata !{i64 130, [22 x i8] c"\09movl\09-12(%rbp), %ecx\00"}
!65 = metadata !{i64 133, [22 x i8] c"\09addl\09-16(%rbp), %ecx\00"}
!66 = metadata !{i64 136, [22 x i8] c"\09addl\09-20(%rbp), %ecx\00"}
!67 = metadata !{i64 139, [22 x i8] c"\09addl\09-24(%rbp), %ecx\00"}
!68 = metadata !{i64 142, [22 x i8] c"\09addl\09-28(%rbp), %ecx\00"}
!69 = metadata !{i64 145, [22 x i8] c"\09addl\09-32(%rbp), %ecx\00"}
!70 = metadata !{i64 148, [18 x i8] c"\09imull\09%ecx, %eax\00"}
!71 = metadata !{i64 151, [11 x i8] c"\09popq\09%rbx\00"}
!72 = metadata !{i64 152, [11 x i8] c"\09popq\09%rbp\00"}
!73 = metadata !{i64 153, [6 x i8] c"\09retq\00"}
!74 = metadata !{i64 416, [16 x i8] c"\09addq\09$80, %rsp\00"}
!75 = metadata !{i64 420, [11 x i8] c"\09popq\09%rbp\00"}
!76 = metadata !{i64 421, [6 x i8] c"\09retq\00"}
