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
  %1 = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %1)
  %RBX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !3
  %2 = load i64* %RBX.i, align 8, !mcsema_real_eip !3
  %RCX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !3
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !3
  %3 = load i64* %RSP.i, align 8, !mcsema_real_eip !3
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !3
  %4 = load i64* %RBP.i, align 8, !mcsema_real_eip !3
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !3
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %5 = bitcast i64* %R12.i to <2 x i64>*
  %6 = load <2 x i64>* %5, align 8
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %7 = load i64* %R14.i, align 8, !mcsema_real_eip !3
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !3
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %8 = bitcast i64* %R15.i to <2 x i64>*
  %9 = load <2 x i64>* %8, align 8
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
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
  %59 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %60 = load <2 x i64>* %59, align 8
  %61 = add i64 %3, -8
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !3
  store i64 %4, i64* %62, align 8, !mcsema_real_eip !3
  %63 = add i64 %3, -16
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !4
  store i64 %7, i64* %64, align 8, !mcsema_real_eip !4
  %65 = add i64 %3, -24
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !5
  store i64 %2, i64* %66, align 8, !mcsema_real_eip !5
  %67 = add i64 %3, -28, !mcsema_real_eip !6
  %68 = inttoptr i64 %67 to i32*
  store i32 0, i32* %68, align 4, !mcsema_real_eip !6
  %69 = add i64 %3, -32, !mcsema_real_eip !7
  %70 = inttoptr i64 %69 to i32*
  store i32 1, i32* %70, align 4, !mcsema_real_eip !7
  %71 = add i64 %3, -76, !mcsema_real_eip !8
  %72 = inttoptr i64 %71 to i32*
  store i32 0, i32* %72, align 4, !mcsema_real_eip !8
  %73 = add i64 %3, -72, !mcsema_real_eip !9
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
  %74 = add i64 %3, -88, !mcsema_real_eip !10
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !10
  store i64 %69, i64* %75, align 8, !mcsema_real_eip !10
  %76 = tail call x86_64_sysvcc i64 @malloc(i64 40), !mcsema_real_eip !11
  %77 = add i64 %3, -96, !mcsema_real_eip !12
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !12
  store i64 %76, i64* %78, align 8, !mcsema_real_eip !12
  %79 = add i64 %3, -100, !mcsema_real_eip !13
  %80 = inttoptr i64 %79 to i32*
  store i32 0, i32* %80, align 4, !mcsema_real_eip !13
  br label %block_0x1df.i

block_0x190.i:                                    ; preds = %block_0x190.i, %driverBlockRaw
  %81 = phi i32 [ 0, %driverBlockRaw ], [ %88, %block_0x190.i ]
  %82 = add i32 %81, 1
  %83 = sext i32 %81 to i64, !mcsema_real_eip !14
  %84 = shl nsw i64 %83, 2
  %85 = add i64 %84, %73, !mcsema_real_eip !9
  %86 = inttoptr i64 %85 to i32*
  store i32 %82, i32* %86, align 4, !mcsema_real_eip !9
  %87 = load i32* %72, align 4, !mcsema_real_eip !15
  %88 = add i32 %87, 1
  store i32 %88, i32* %72, align 4, !mcsema_real_eip !16
  %89 = add i32 %87, -9
  %90 = icmp slt i32 %89, 0
  %91 = sub i32 8, %87
  %92 = and i32 %88, %91
  %93 = icmp slt i32 %92, 0
  %tmp210.i = xor i1 %90, %93
  br i1 %tmp210.i, label %block_0x190.i, label %block_0x1b0.i, !mcsema_real_eip !17

block_0x202.i:                                    ; preds = %block_0x1df.i
  %.lcssa64 = phi i1 [ %306, %block_0x1df.i ]
  %.lcssa63 = phi i1 [ %304, %block_0x1df.i ]
  %.lcssa62 = phi i32 [ %303, %block_0x1df.i ]
  %.lcssa61 = phi i32 [ %302, %block_0x1df.i ]
  %.lcssa60 = phi i32 [ %301, %block_0x1df.i ]
  %RAX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !3
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !3
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %94 = add i64 %3, -168
  %95 = icmp ult i32 %.lcssa60, 10, !mcsema_real_eip !18
  %96 = icmp eq i32 %.lcssa61, 0, !mcsema_real_eip !18
  %97 = trunc i32 %.lcssa61 to i8, !mcsema_real_eip !18
  %98 = tail call i8 @llvm.ctpop.i8(i8 %97), !mcsema_real_eip !18
  %99 = and i8 %98, 1
  %100 = icmp eq i8 %99, 0
  %101 = and i32 %.lcssa62, 16, !mcsema_real_eip !18
  %102 = icmp ne i32 %101, 0, !mcsema_real_eip !18
  %103 = load i32* %70, align 4, !mcsema_real_eip !19
  %104 = zext i32 %103 to i64, !mcsema_real_eip !19
  %105 = load i64* %75, align 8, !mcsema_real_eip !20
  %106 = load i64* %78, align 8, !mcsema_real_eip !21
  %107 = add i64 %3, -112, !mcsema_real_eip !22
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !22
  store i64 %106, i64* %108, align 8, !mcsema_real_eip !22
  %109 = add i64 %3, -120, !mcsema_real_eip !23
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !23
  store i64 %73, i64* %110, align 8, !mcsema_real_eip !23
  %111 = add i64 %3, -124, !mcsema_real_eip !24
  %112 = inttoptr i64 %111 to i32*
  store i32 %103, i32* %112, align 4, !mcsema_real_eip !24
  %113 = add i64 %3, -136, !mcsema_real_eip !25
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !25
  store i64 %105, i64* %114, align 8, !mcsema_real_eip !25
  %115 = load i32* %112, align 4, !mcsema_real_eip !26
  %116 = zext i32 %115 to i64, !mcsema_real_eip !26
  %117 = inttoptr i64 %94 to i32*
  store i32 %115, i32* %117, align 4, !mcsema_real_eip !27
  %118 = load i64* %110, align 8, !mcsema_real_eip !28
  %119 = add i64 %3, -160, !mcsema_real_eip !29
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !29
  store i64 %118, i64* %120, align 8, !mcsema_real_eip !29
  %121 = load i64* %114, align 8, !mcsema_real_eip !30
  %122 = add i64 %3, -152, !mcsema_real_eip !31
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !31
  store i64 %121, i64* %123, align 8, !mcsema_real_eip !31
  %124 = add i64 %3, -144, !mcsema_real_eip !32
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !32
  store i64 %106, i64* %125, align 8, !mcsema_real_eip !32
  %126 = add i64 %3, -176
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !33
  store i64 -4981261766360305936, i64* %127, align 8, !mcsema_real_eip !33
  store i64 %116, i64* %RAX.i, align 8, !mcsema_real_eip !33
  store i64 %118, i64* %RBX.i, align 8, !mcsema_real_eip !33
  store i64 %106, i64* %RCX.i, align 8, !mcsema_real_eip !33
  store i64 %105, i64* %RDX.i, align 8, !mcsema_real_eip !33
  store i64 %73, i64* %RSI.i, align 8, !mcsema_real_eip !33
  store i64 %104, i64* %RDI.i, align 8, !mcsema_real_eip !33
  store i64 %126, i64* %RSP.i, align 8, !mcsema_real_eip !33
  store i64 %61, i64* %RBP.i, align 8, !mcsema_real_eip !33
  %128 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 10, i64 10>, <2 x i64>* %128, align 8
  store i64 %106, i64* %R10.i, align 8, !mcsema_real_eip !33
  store i64 %106, i64* %R11.i, align 8, !mcsema_real_eip !33
  store <2 x i64> %6, <2 x i64>* %5, align 8
  store i64 %121, i64* %R14.i, align 8, !mcsema_real_eip !33
  %129 = bitcast i64* %R15.i to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %129, align 8
  store i1 %95, i1* %CF.i, align 1, !mcsema_real_eip !33
  store i1 %100, i1* %PF.i, align 1, !mcsema_real_eip !33
  store i1 %102, i1* %AF.i, align 1, !mcsema_real_eip !33
  store i1 %96, i1* %ZF.i, align 1, !mcsema_real_eip !33
  store i1 %.lcssa63, i1* %SF.i, align 1, !mcsema_real_eip !33
  store i1 %.lcssa64, i1* %OF.i, align 1, !mcsema_real_eip !33
  store i1 %10, i1* %DF.i, align 1, !mcsema_real_eip !33
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !33
  store i1 %13, i1* %FPU_B.i, align 1, !mcsema_real_eip !33
  store i1 %14, i1* %FPU_C3.i, align 1, !mcsema_real_eip !33
  store i3 %15, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !33
  store i1 %16, i1* %FPU_C2.i, align 1, !mcsema_real_eip !33
  store i1 %17, i1* %FPU_C1.i, align 1, !mcsema_real_eip !33
  store i1 %18, i1* %FPU_C0.i, align 1, !mcsema_real_eip !33
  store i1 %19, i1* %FPU_ES.i, align 1, !mcsema_real_eip !33
  store i1 %20, i1* %FPU_SF.i, align 1, !mcsema_real_eip !33
  store i1 %21, i1* %FPU_PE.i, align 1, !mcsema_real_eip !33
  store i1 %22, i1* %FPU_UE.i, align 1, !mcsema_real_eip !33
  store i1 %23, i1* %FPU_OE.i, align 1, !mcsema_real_eip !33
  store i1 %24, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !33
  store i1 %25, i1* %FPU_DE.i, align 1, !mcsema_real_eip !33
  store i1 %26, i1* %FPU_IE.i, align 1, !mcsema_real_eip !33
  store i1 %27, i1* %FPU_X.i, align 1, !mcsema_real_eip !33
  store i2 %28, i2* %FPU_RC.i, align 1, !mcsema_real_eip !33
  store i2 %29, i2* %FPU_PC.i, align 1, !mcsema_real_eip !33
  store i1 %30, i1* %FPU_PM.i, align 1, !mcsema_real_eip !33
  store i1 %31, i1* %FPU_UM.i, align 1, !mcsema_real_eip !33
  store i1 %32, i1* %FPU_OM.i, align 1, !mcsema_real_eip !33
  store i1 %33, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !33
  store i1 %34, i1* %FPU_DM.i, align 1, !mcsema_real_eip !33
  store i1 %35, i1* %FPU_IM.i, align 1, !mcsema_real_eip !33
  store i64 %38, i64* %37, align 4
  store i16 %39, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !33
  store i64 %40, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !33
  store i16 %41, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !33
  store i64 %42, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !33
  store i128 %43, i128* %XMM0.i, align 1, !mcsema_real_eip !33
  store i128 %44, i128* %XMM1.i, align 1, !mcsema_real_eip !33
  store i128 %45, i128* %XMM2.i, align 1, !mcsema_real_eip !33
  store i128 %46, i128* %XMM3.i, align 1, !mcsema_real_eip !33
  store i128 %47, i128* %XMM4.i, align 1, !mcsema_real_eip !33
  store i128 %48, i128* %XMM5.i, align 1, !mcsema_real_eip !33
  store i128 %49, i128* %XMM6.i, align 1, !mcsema_real_eip !33
  store i128 %50, i128* %XMM7.i, align 1, !mcsema_real_eip !33
  store i128 %51, i128* %XMM8.i, align 1, !mcsema_real_eip !33
  store i128 %52, i128* %XMM9.i, align 1, !mcsema_real_eip !33
  store i128 %53, i128* %XMM10.i, align 1, !mcsema_real_eip !33
  store i128 %54, i128* %XMM11.i, align 1, !mcsema_real_eip !33
  store i128 %55, i128* %XMM12.i, align 1, !mcsema_real_eip !33
  store i128 %56, i128* %XMM13.i, align 1, !mcsema_real_eip !33
  store i128 %57, i128* %XMM14.i, align 1, !mcsema_real_eip !33
  store i128 %58, i128* %XMM15.i, align 1, !mcsema_real_eip !33
  store <2 x i64> %60, <2 x i64>* %59, align 1
  %130 = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %130)
  %131 = bitcast i64* %R14.i to <2 x i64>*
  %132 = load <2 x i64>* %131, align 8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %130, i8* %1, i32 128, i32 16, i1 false)
  %133 = add i64 %3, -184
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !2
  store i64 %61, i64* %134, align 8, !mcsema_real_eip !2
  %135 = add i64 %3, -192
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !34
  store i64 %118, i64* %136, align 8, !mcsema_real_eip !34
  %137 = load i64* %125, align 8, !mcsema_real_eip !35
  %138 = load i64* %123, align 8, !mcsema_real_eip !36
  %139 = load i64* %120, align 8, !mcsema_real_eip !37
  %140 = load i32* %117, align 4, !mcsema_real_eip !38
  %141 = add i64 %3, -196, !mcsema_real_eip !39
  %142 = inttoptr i64 %141 to i32*
  store i32 %103, i32* %142, align 4, !mcsema_real_eip !39
  %143 = add i64 %3, -208, !mcsema_real_eip !40
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !40
  store i64 %73, i64* %144, align 8, !mcsema_real_eip !40
  %145 = add i64 %3, -216, !mcsema_real_eip !41
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !41
  store i64 %105, i64* %146, align 8, !mcsema_real_eip !41
  %147 = add i64 %3, -224, !mcsema_real_eip !42
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !42
  store i64 %106, i64* %148, align 8, !mcsema_real_eip !42
  %149 = add i64 %3, -228, !mcsema_real_eip !43
  %150 = inttoptr i64 %149 to i32*
  store i32 10, i32* %150, align 4, !mcsema_real_eip !43
  %151 = add i64 %3, -232, !mcsema_real_eip !44
  %152 = inttoptr i64 %151 to i32*
  store i32 10, i32* %152, align 4, !mcsema_real_eip !44
  %153 = add i64 %3, -236, !mcsema_real_eip !45
  %154 = inttoptr i64 %153 to i32*
  store i32 %140, i32* %154, align 4, !mcsema_real_eip !45
  %155 = add i64 %3, -248, !mcsema_real_eip !46
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !46
  store i64 %139, i64* %156, align 8, !mcsema_real_eip !46
  %157 = add i64 %3, -256, !mcsema_real_eip !47
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !47
  store i64 %138, i64* %158, align 8, !mcsema_real_eip !47
  %159 = add i64 %3, -264, !mcsema_real_eip !48
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !48
  store i64 %137, i64* %160, align 8, !mcsema_real_eip !48
  %161 = add i64 %3, -268, !mcsema_real_eip !49
  %162 = inttoptr i64 %161 to i32*
  store i32 0, i32* %162, align 4, !mcsema_real_eip !49
  %163 = load i32* %142, align 4, !mcsema_real_eip !50
  %164 = zext i32 %163 to i64, !mcsema_real_eip !50
  store i32 %163, i32* %162, align 4, !mcsema_real_eip !51
  %165 = add i64 %3, -272, !mcsema_real_eip !52
  %166 = inttoptr i64 %165 to i32*
  store i32 0, i32* %166, align 4, !mcsema_real_eip !52
  %167 = load i32* %150, align 4, !mcsema_real_eip !53
  %168 = sub i32 0, %167, !mcsema_real_eip !53
  %169 = icmp slt i32 %168, 0
  %170 = and i32 %167, %168, !mcsema_real_eip !53
  %171 = icmp slt i32 %170, 0
  %tmp.i.i = xor i1 %169, %171
  br i1 %tmp.i.i, label %block_0x62.i.i.preheader, label %block_0x85.i.i, !mcsema_real_eip !54

block_0x62.i.i.preheader:                         ; preds = %block_0x202.i
  br label %block_0x62.i.i

block_0x85.loopexit.i.i:                          ; preds = %block_0x62.i.i
  %.lcssa59 = phi i32 [ %193, %block_0x62.i.i ]
  %172 = zext i32 %.lcssa59 to i64, !mcsema_real_eip !55
  br label %block_0x85.i.i

block_0x85.i.i:                                   ; preds = %block_0x85.loopexit.i.i, %block_0x202.i
  %RSI_val.0.i.i = phi i64 [ %73, %block_0x202.i ], [ %172, %block_0x85.loopexit.i.i ]
  %173 = load i64* %146, align 8, !mcsema_real_eip !56
  %174 = inttoptr i64 %173 to i32*
  %175 = load i32* %174, align 4, !mcsema_real_eip !57
  %176 = load i32* %162, align 4, !mcsema_real_eip !58
  %177 = add i32 %176, %175
  store i32 %177, i32* %162, align 4, !mcsema_real_eip !59
  %178 = add i64 %3, -276, !mcsema_real_eip !60
  %179 = inttoptr i64 %178 to i32*
  store i32 0, i32* %179, align 4, !mcsema_real_eip !60
  %180 = load i32* %152, align 4, !mcsema_real_eip !61
  %181 = sub i32 0, %180, !mcsema_real_eip !61
  %182 = icmp slt i32 %181, 0
  %183 = and i32 %180, %181, !mcsema_real_eip !61
  %184 = icmp slt i32 %183, 0
  %tmp74.i.i = xor i1 %182, %184
  br i1 %tmp74.i.i, label %block_0xa6.i.i.preheader, label %block_0xc9.i.i, !mcsema_real_eip !62

block_0xa6.i.i.preheader:                         ; preds = %block_0x85.i.i
  br label %block_0xa6.i.i

block_0x62.i.i:                                   ; preds = %block_0x62.i.i, %block_0x62.i.i.preheader
  %185 = phi i32 [ %195, %block_0x62.i.i ], [ 0, %block_0x62.i.i.preheader ]
  %186 = sext i32 %185 to i64, !mcsema_real_eip !63
  %187 = load i64* %144, align 8, !mcsema_real_eip !64
  %188 = shl nsw i64 %186, 2
  %189 = add i64 %188, %187, !mcsema_real_eip !65
  %190 = inttoptr i64 %189 to i32*
  %191 = load i32* %190, align 4, !mcsema_real_eip !65
  %192 = load i32* %162, align 4, !mcsema_real_eip !66
  %193 = add i32 %192, %191
  store i32 %193, i32* %162, align 4, !mcsema_real_eip !67
  %194 = load i32* %166, align 4, !mcsema_real_eip !68
  %195 = add i32 %194, 1
  store i32 %195, i32* %166, align 4, !mcsema_real_eip !69
  %196 = load i32* %150, align 4, !mcsema_real_eip !53
  %197 = sub i32 %195, %196, !mcsema_real_eip !53
  %198 = xor i32 %197, %195, !mcsema_real_eip !53
  %199 = icmp slt i32 %197, 0
  %200 = xor i32 %196, %195, !mcsema_real_eip !53
  %201 = and i32 %198, %200, !mcsema_real_eip !53
  %202 = icmp slt i32 %201, 0
  %tmp72.i.i = xor i1 %199, %202
  br i1 %tmp72.i.i, label %block_0x62.i.i, label %block_0x85.loopexit.i.i, !mcsema_real_eip !54

block_0xc9.loopexit.i.i:                          ; preds = %block_0xa6.i.i
  %.lcssa58 = phi i32 [ %222, %block_0xa6.i.i ]
  %203 = zext i32 %.lcssa58 to i64, !mcsema_real_eip !70
  br label %block_0xc9.i.i

block_0xc9.i.i:                                   ; preds = %block_0xc9.loopexit.i.i, %block_0x85.i.i
  %RSI_val.1.i.i = phi i64 [ %RSI_val.0.i.i, %block_0x85.i.i ], [ %203, %block_0xc9.loopexit.i.i ]
  %204 = load i32* %154, align 4, !mcsema_real_eip !71
  %205 = load i32* %162, align 4, !mcsema_real_eip !72
  %206 = add i32 %205, %204
  store i32 %206, i32* %162, align 4, !mcsema_real_eip !73
  %207 = add i64 %3, -280, !mcsema_real_eip !74
  %208 = inttoptr i64 %207 to i32*
  store i32 0, i32* %208, align 4, !mcsema_real_eip !74
  %209 = load i32* %150, align 4, !mcsema_real_eip !75
  %210 = sub i32 0, %209, !mcsema_real_eip !75
  %211 = icmp slt i32 %210, 0
  %212 = and i32 %209, %210, !mcsema_real_eip !75
  %213 = icmp slt i32 %212, 0
  %tmp79.i.i = xor i1 %211, %213
  br i1 %tmp79.i.i, label %block_0xe7.i.i.preheader, label %block_0x10a.i.i, !mcsema_real_eip !76

block_0xe7.i.i.preheader:                         ; preds = %block_0xc9.i.i
  br label %block_0xe7.i.i

block_0xa6.i.i:                                   ; preds = %block_0xa6.i.i, %block_0xa6.i.i.preheader
  %214 = phi i32 [ %224, %block_0xa6.i.i ], [ 0, %block_0xa6.i.i.preheader ]
  %215 = sext i32 %214 to i64, !mcsema_real_eip !77
  %216 = load i64* %148, align 8, !mcsema_real_eip !78
  %217 = shl nsw i64 %215, 2
  %218 = add i64 %217, %216, !mcsema_real_eip !79
  %219 = inttoptr i64 %218 to i32*
  %220 = load i32* %219, align 4, !mcsema_real_eip !79
  %221 = load i32* %162, align 4, !mcsema_real_eip !80
  %222 = add i32 %221, %220
  store i32 %222, i32* %162, align 4, !mcsema_real_eip !81
  %223 = load i32* %179, align 4, !mcsema_real_eip !82
  %224 = add i32 %223, 1
  store i32 %224, i32* %179, align 4, !mcsema_real_eip !83
  %225 = load i32* %152, align 4, !mcsema_real_eip !61
  %226 = sub i32 %224, %225, !mcsema_real_eip !61
  %227 = xor i32 %226, %224, !mcsema_real_eip !61
  %228 = icmp slt i32 %226, 0
  %229 = xor i32 %225, %224, !mcsema_real_eip !61
  %230 = and i32 %227, %229, !mcsema_real_eip !61
  %231 = icmp slt i32 %230, 0
  %tmp77.i.i = xor i1 %228, %231
  br i1 %tmp77.i.i, label %block_0xa6.i.i, label %block_0xc9.loopexit.i.i, !mcsema_real_eip !62

block_0x10a.loopexit.i.i:                         ; preds = %block_0xe7.i.i
  %.lcssa57 = phi i32 [ %259, %block_0xe7.i.i ]
  %232 = zext i32 %.lcssa57 to i64, !mcsema_real_eip !84
  br label %block_0x10a.i.i

block_0x10a.i.i:                                  ; preds = %block_0x10a.loopexit.i.i, %block_0xc9.i.i
  %RSI_val.2.i.i = phi i64 [ %RSI_val.1.i.i, %block_0xc9.i.i ], [ %232, %block_0x10a.loopexit.i.i ]
  %233 = load i64* %158, align 8, !mcsema_real_eip !85
  %234 = inttoptr i64 %233 to i32*
  %235 = load i32* %234, align 4, !mcsema_real_eip !86
  %236 = zext i32 %235 to i64, !mcsema_real_eip !86
  %237 = load i32* %162, align 4, !mcsema_real_eip !87
  %238 = add i32 %237, %235
  store i32 %238, i32* %162, align 4, !mcsema_real_eip !88
  %239 = add i64 %3, -284, !mcsema_real_eip !89
  %240 = inttoptr i64 %239 to i32*
  store i32 0, i32* %240, align 4, !mcsema_real_eip !89
  %241 = load i32* %152, align 4, !mcsema_real_eip !90
  %242 = sub i32 0, %241, !mcsema_real_eip !90
  %243 = xor i32 %241, %242, !mcsema_real_eip !90
  %244 = trunc i32 %242 to i8, !mcsema_real_eip !90
  %245 = tail call i8 @llvm.ctpop.i8(i8 %244) #0, !mcsema_real_eip !90
  %246 = icmp eq i32 %241, 0
  %247 = icmp slt i32 %242, 0
  %248 = icmp ne i32 %241, 0
  %249 = and i32 %241, %242, !mcsema_real_eip !90
  %250 = icmp slt i32 %249, 0
  %tmp84.i.i = xor i1 %247, %250
  br i1 %tmp84.i.i, label %block_0x12b.i.i.preheader, label %sub_160.exit, !mcsema_real_eip !91

block_0x12b.i.i.preheader:                        ; preds = %block_0x10a.i.i
  br label %block_0x12b.i.i

block_0xe7.i.i:                                   ; preds = %block_0xe7.i.i, %block_0xe7.i.i.preheader
  %251 = phi i32 [ %261, %block_0xe7.i.i ], [ 0, %block_0xe7.i.i.preheader ]
  %252 = sext i32 %251 to i64, !mcsema_real_eip !92
  %253 = load i64* %156, align 8, !mcsema_real_eip !93
  %254 = shl nsw i64 %252, 2
  %255 = add i64 %254, %253, !mcsema_real_eip !94
  %256 = inttoptr i64 %255 to i32*
  %257 = load i32* %256, align 4, !mcsema_real_eip !94
  %258 = load i32* %162, align 4, !mcsema_real_eip !95
  %259 = add i32 %258, %257
  store i32 %259, i32* %162, align 4, !mcsema_real_eip !96
  %260 = load i32* %208, align 4, !mcsema_real_eip !97
  %261 = add i32 %260, 1
  store i32 %261, i32* %208, align 4, !mcsema_real_eip !98
  %262 = load i32* %150, align 4, !mcsema_real_eip !75
  %263 = sub i32 %261, %262, !mcsema_real_eip !75
  %264 = xor i32 %263, %261, !mcsema_real_eip !75
  %265 = icmp slt i32 %263, 0
  %266 = xor i32 %262, %261, !mcsema_real_eip !75
  %267 = and i32 %264, %266, !mcsema_real_eip !75
  %268 = icmp slt i32 %267, 0
  %tmp82.i.i = xor i1 %265, %268
  br i1 %tmp82.i.i, label %block_0xe7.i.i, label %block_0x10a.loopexit.i.i, !mcsema_real_eip !76

block_0x14e.loopexit.i.i:                         ; preds = %block_0x12b.i.i
  %.lcssa56 = phi i1 [ %292, %block_0x12b.i.i ]
  %.lcssa55 = phi i1 [ %289, %block_0x12b.i.i ]
  %.lcssa54 = phi i32 [ %288, %block_0x12b.i.i ]
  %.lcssa53 = phi i32 [ %287, %block_0x12b.i.i ]
  %.lcssa52 = phi i32 [ %286, %block_0x12b.i.i ]
  %.lcssa51 = phi i32 [ %285, %block_0x12b.i.i ]
  %.lcssa50 = phi i32 [ %283, %block_0x12b.i.i ]
  %.lcssa49 = phi i32 [ %281, %block_0x12b.i.i ]
  %.lcssa = phi i64 [ %277, %block_0x12b.i.i ]
  %269 = zext i32 %.lcssa50 to i64, !mcsema_real_eip !99
  %270 = xor i32 %.lcssa54, %.lcssa52, !mcsema_real_eip !90
  %271 = trunc i32 %.lcssa53 to i8, !mcsema_real_eip !90
  %272 = tail call i8 @llvm.ctpop.i8(i8 %271) #0, !mcsema_real_eip !90
  %273 = icmp eq i32 %.lcssa51, %.lcssa52
  %274 = icmp ult i32 %.lcssa51, %.lcssa52, !mcsema_real_eip !90
  br label %sub_160.exit

block_0x12b.i.i:                                  ; preds = %block_0x12b.i.i, %block_0x12b.i.i.preheader
  %275 = phi i32 [ %285, %block_0x12b.i.i ], [ 0, %block_0x12b.i.i.preheader ]
  %276 = sext i32 %275 to i64, !mcsema_real_eip !100
  %277 = load i64* %160, align 8, !mcsema_real_eip !101
  %278 = shl nsw i64 %276, 2
  %279 = add i64 %278, %277, !mcsema_real_eip !102
  %280 = inttoptr i64 %279 to i32*
  %281 = load i32* %280, align 4, !mcsema_real_eip !102
  %282 = load i32* %162, align 4, !mcsema_real_eip !103
  %283 = add i32 %282, %281
  store i32 %283, i32* %162, align 4, !mcsema_real_eip !104
  %284 = load i32* %240, align 4, !mcsema_real_eip !105
  %285 = add i32 %284, 1
  store i32 %285, i32* %240, align 4, !mcsema_real_eip !106
  %286 = load i32* %152, align 4, !mcsema_real_eip !90
  %287 = sub i32 %285, %286, !mcsema_real_eip !90
  %288 = xor i32 %287, %285, !mcsema_real_eip !90
  %289 = icmp slt i32 %287, 0
  %290 = xor i32 %286, %285, !mcsema_real_eip !90
  %291 = and i32 %288, %290, !mcsema_real_eip !90
  %292 = icmp slt i32 %291, 0
  %tmp87.i.i = xor i1 %289, %292
  br i1 %tmp87.i.i, label %block_0x12b.i.i, label %block_0x14e.loopexit.i.i, !mcsema_real_eip !91

block_0x1df.i:                                    ; preds = %block_0x1df.i, %block_0x1b0.i
  %293 = phi i32 [ 0, %block_0x1b0.i ], [ %301, %block_0x1df.i ]
  %294 = add i32 %293, 1
  %295 = sext i32 %293 to i64, !mcsema_real_eip !107
  %296 = load i64* %78, align 8, !mcsema_real_eip !108
  %297 = shl nsw i64 %295, 2
  %298 = add i64 %297, %296, !mcsema_real_eip !109
  %299 = inttoptr i64 %298 to i32*
  store i32 %294, i32* %299, align 4, !mcsema_real_eip !109
  %300 = load i32* %80, align 4, !mcsema_real_eip !110
  %301 = add i32 %300, 1
  store i32 %301, i32* %80, align 4, !mcsema_real_eip !111
  %302 = add i32 %300, -9
  %303 = xor i32 %302, %301, !mcsema_real_eip !18
  %304 = icmp slt i32 %302, 0
  %305 = and i32 %303, %301, !mcsema_real_eip !18
  %306 = icmp slt i32 %305, 0
  %tmp214.i = xor i1 %304, %306
  br i1 %tmp214.i, label %block_0x1df.i, label %block_0x202.i, !mcsema_real_eip !112

sub_160.exit:                                     ; preds = %block_0x14e.loopexit.i.i, %block_0x10a.i.i
  %ZF_val.0.i.i = phi i1 [ %246, %block_0x10a.i.i ], [ %273, %block_0x14e.loopexit.i.i ]
  %PF_val.0.in.in.i.i = phi i8 [ %245, %block_0x10a.i.i ], [ %272, %block_0x14e.loopexit.i.i ]
  %AF_val.0.in.in.i.i = phi i32 [ %243, %block_0x10a.i.i ], [ %270, %block_0x14e.loopexit.i.i ]
  %CF_val.0.i.i = phi i1 [ %248, %block_0x10a.i.i ], [ %274, %block_0x14e.loopexit.i.i ]
  %SF_val.0.i.i = phi i1 [ %247, %block_0x10a.i.i ], [ %.lcssa55, %block_0x14e.loopexit.i.i ]
  %OF_val.0.i.i = phi i1 [ %250, %block_0x10a.i.i ], [ %.lcssa56, %block_0x14e.loopexit.i.i ]
  %RSI_val.3.i.i = phi i64 [ %RSI_val.2.i.i, %block_0x10a.i.i ], [ %269, %block_0x14e.loopexit.i.i ]
  %RDX_val.0.in.i.i = phi i32 [ %238, %block_0x10a.i.i ], [ %.lcssa49, %block_0x14e.loopexit.i.i ]
  %RCX_val.0.i.i = phi i64 [ %236, %block_0x10a.i.i ], [ %.lcssa, %block_0x14e.loopexit.i.i ]
  %AF_val.0.in.i.i = and i32 %AF_val.0.in.in.i.i, 16
  %PF_val.0.in.i.i = and i8 %PF_val.0.in.in.i.i, 1
  %RDX_val.0.i.i = zext i32 %RDX_val.0.in.i.i to i64
  %AF_val.0.i.i = icmp ne i32 %AF_val.0.in.i.i, 0
  %PF_val.0.i.i = icmp eq i8 %PF_val.0.in.i.i, 0
  %307 = load i32* %162, align 4, !mcsema_real_eip !113
  %308 = zext i32 %307 to i64, !mcsema_real_eip !113
  %309 = load i64* %136, align 8, !mcsema_real_eip !114
  %310 = load i64* %134, align 8, !mcsema_real_eip !115
  store i64 %308, i64* %RAX.i, align 8, !mcsema_real_eip !116
  store i64 %309, i64* %RBX.i, align 8, !mcsema_real_eip !116
  store i64 %RCX_val.0.i.i, i64* %RCX.i, align 8, !mcsema_real_eip !116
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !116
  store i64 %RSI_val.3.i.i, i64* %RSI.i, align 8, !mcsema_real_eip !116
  store i64 %164, i64* %RDI.i, align 8, !mcsema_real_eip !116
  store i64 %94, i64* %RSP.i, align 8, !mcsema_real_eip !116
  store i64 %310, i64* %RBP.i, align 8, !mcsema_real_eip !116
  store i64 %164, i64* %R8.i, align 8, !mcsema_real_eip !116
  store i64 10, i64* %R9.i, align 8, !mcsema_real_eip !116
  store i64 %138, i64* %R10.i, align 8, !mcsema_real_eip !116
  store i64 %139, i64* %R11.i, align 8, !mcsema_real_eip !116
  store <2 x i64> %6, <2 x i64>* %5, align 8
  store <2 x i64> %132, <2 x i64>* %131, align 8
  %311 = extractelement <2 x i64> %9, i32 1
  store i64 %311, i64* %RIP.i, align 8, !mcsema_real_eip !116
  store i1 %CF_val.0.i.i, i1* %CF.i, align 1, !mcsema_real_eip !116
  store i1 %PF_val.0.i.i, i1* %PF.i, align 1, !mcsema_real_eip !116
  store i1 %AF_val.0.i.i, i1* %AF.i, align 1, !mcsema_real_eip !116
  store i1 %ZF_val.0.i.i, i1* %ZF.i, align 1, !mcsema_real_eip !116
  store i1 %SF_val.0.i.i, i1* %SF.i, align 1, !mcsema_real_eip !116
  store i1 %OF_val.0.i.i, i1* %OF.i, align 1, !mcsema_real_eip !116
  store i1 %10, i1* %DF.i, align 1, !mcsema_real_eip !116
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* %130, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !116
  store i1 %13, i1* %FPU_B.i, align 1, !mcsema_real_eip !116
  store i1 %14, i1* %FPU_C3.i, align 1, !mcsema_real_eip !116
  store i3 %15, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !116
  store i1 %16, i1* %FPU_C2.i, align 1, !mcsema_real_eip !116
  store i1 %17, i1* %FPU_C1.i, align 1, !mcsema_real_eip !116
  store i1 %18, i1* %FPU_C0.i, align 1, !mcsema_real_eip !116
  store i1 %19, i1* %FPU_ES.i, align 1, !mcsema_real_eip !116
  store i1 %20, i1* %FPU_SF.i, align 1, !mcsema_real_eip !116
  store i1 %21, i1* %FPU_PE.i, align 1, !mcsema_real_eip !116
  store i1 %22, i1* %FPU_UE.i, align 1, !mcsema_real_eip !116
  store i1 %23, i1* %FPU_OE.i, align 1, !mcsema_real_eip !116
  store i1 %24, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !116
  store i1 %25, i1* %FPU_DE.i, align 1, !mcsema_real_eip !116
  store i1 %26, i1* %FPU_IE.i, align 1, !mcsema_real_eip !116
  store i1 %27, i1* %FPU_X.i, align 1, !mcsema_real_eip !116
  store i2 %28, i2* %FPU_RC.i, align 1, !mcsema_real_eip !116
  store i2 %29, i2* %FPU_PC.i, align 1, !mcsema_real_eip !116
  store i1 %30, i1* %FPU_PM.i, align 1, !mcsema_real_eip !116
  store i1 %31, i1* %FPU_UM.i, align 1, !mcsema_real_eip !116
  store i1 %32, i1* %FPU_OM.i, align 1, !mcsema_real_eip !116
  store i1 %33, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !116
  store i1 %34, i1* %FPU_DM.i, align 1, !mcsema_real_eip !116
  store i1 %35, i1* %FPU_IM.i, align 1, !mcsema_real_eip !116
  store i64 %38, i64* %37, align 4
  store i16 %39, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !116
  store i64 %40, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !116
  store i16 %41, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !116
  store i64 %42, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !116
  store i128 %43, i128* %XMM0.i, align 1, !mcsema_real_eip !116
  store i128 %44, i128* %XMM1.i, align 1, !mcsema_real_eip !116
  store i128 %45, i128* %XMM2.i, align 1, !mcsema_real_eip !116
  store i128 %46, i128* %XMM3.i, align 1, !mcsema_real_eip !116
  store i128 %47, i128* %XMM4.i, align 1, !mcsema_real_eip !116
  store i128 %48, i128* %XMM5.i, align 1, !mcsema_real_eip !116
  store i128 %49, i128* %XMM6.i, align 1, !mcsema_real_eip !116
  store i128 %50, i128* %XMM7.i, align 1, !mcsema_real_eip !116
  store i128 %51, i128* %XMM8.i, align 1, !mcsema_real_eip !116
  store i128 %52, i128* %XMM9.i, align 1, !mcsema_real_eip !116
  store i128 %53, i128* %XMM10.i, align 1, !mcsema_real_eip !116
  store i128 %54, i128* %XMM11.i, align 1, !mcsema_real_eip !116
  store i128 %55, i128* %XMM12.i, align 1, !mcsema_real_eip !116
  store i128 %56, i128* %XMM13.i, align 1, !mcsema_real_eip !116
  store i128 %57, i128* %XMM14.i, align 1, !mcsema_real_eip !116
  store i128 %58, i128* %XMM15.i, align 1, !mcsema_real_eip !116
  store <2 x i64> %60, <2 x i64>* %59, align 1
  call void @llvm.lifetime.end(i64 128, i8* %130)
  %312 = bitcast <2 x i64> %6 to i128
  %trunc.i = trunc i128 %312 to i64
  %313 = lshr i128 %312, 64
  %314 = trunc i128 %313 to i64
  %315 = bitcast <2 x i64> %132 to i128
  %316 = lshr i128 %315, 64
  %317 = trunc i128 %316 to i64
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %12, i32 128, i32 4, i1 false), !mcsema_real_eip !33
  %318 = bitcast <2 x i64> %60 to i128
  %trunc34.i = trunc i128 %318 to i64
  %319 = lshr i128 %318, 64
  %320 = trunc i128 %319 to i64
  %uadd215.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 144)
  %321 = extractvalue { i64, i1 } %uadd215.i, 0
  %322 = xor i64 %321, %94, !mcsema_real_eip !117
  %323 = and i64 %322, 16
  %324 = icmp eq i64 %323, 0
  %325 = icmp slt i64 %321, 0
  %326 = icmp eq i64 %321, 0, !mcsema_real_eip !117
  %327 = add i64 %3, 9223372036854775640
  %328 = and i64 %322, %327, !mcsema_real_eip !117
  %329 = icmp slt i64 %328, 0
  %330 = trunc i64 %321 to i8, !mcsema_real_eip !117
  %331 = tail call i8 @llvm.ctpop.i8(i8 %330), !mcsema_real_eip !117
  %332 = and i8 %331, 1
  %333 = icmp eq i8 %332, 0
  %334 = extractvalue { i64, i1 } %uadd215.i, 1
  %335 = inttoptr i64 %321 to i64*, !mcsema_real_eip !118
  %336 = load i64* %335, align 8, !mcsema_real_eip !118
  %337 = add i64 %321, 8, !mcsema_real_eip !118
  %338 = inttoptr i64 %337 to i64*, !mcsema_real_eip !119
  %339 = load i64* %338, align 8, !mcsema_real_eip !119
  %340 = add i64 %321, 16, !mcsema_real_eip !119
  %341 = inttoptr i64 %340 to i64*, !mcsema_real_eip !120
  %342 = load i64* %341, align 8, !mcsema_real_eip !120
  %343 = add i64 %321, 32, !mcsema_real_eip !121
  store i64 %308, i64* %RAX.i, align 8, !mcsema_real_eip !121
  store i64 %336, i64* %RBX.i, align 8, !mcsema_real_eip !121
  store i64 %RCX_val.0.i.i, i64* %RCX.i, align 8, !mcsema_real_eip !121
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !121
  store i64 %RSI_val.3.i.i, i64* %RSI.i, align 8, !mcsema_real_eip !121
  store i64 %164, i64* %RDI.i, align 8, !mcsema_real_eip !121
  store i64 %343, i64* %RSP.i, align 8, !mcsema_real_eip !121
  store i64 %342, i64* %RBP.i, align 8, !mcsema_real_eip !121
  store i64 %164, i64* %R8.i, align 8, !mcsema_real_eip !121
  store i64 10, i64* %R9.i, align 8, !mcsema_real_eip !121
  store i64 %138, i64* %R10.i, align 8, !mcsema_real_eip !121
  store i64 %139, i64* %R11.i, align 8, !mcsema_real_eip !121
  store i64 %trunc.i, i64* %R12.i, align 8, !mcsema_real_eip !121
  store i64 %314, i64* %R13.i, align 8, !mcsema_real_eip !121
  store i64 %339, i64* %R14.i, align 8, !mcsema_real_eip !121
  store i64 %317, i64* %R15.i, align 8, !mcsema_real_eip !121
  store i64 %311, i64* %RIP.i, align 8, !mcsema_real_eip !121
  store i1 %334, i1* %CF.i, align 1, !mcsema_real_eip !121
  store i1 %333, i1* %PF.i, align 1, !mcsema_real_eip !121
  store i1 %324, i1* %AF.i, align 1, !mcsema_real_eip !121
  store i1 %326, i1* %ZF.i, align 1, !mcsema_real_eip !121
  store i1 %325, i1* %SF.i, align 1, !mcsema_real_eip !121
  store i1 %329, i1* %OF.i, align 1, !mcsema_real_eip !121
  store i1 %10, i1* %DF.i, align 1, !mcsema_real_eip !121
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !121
  store i1 %13, i1* %FPU_B.i, align 1, !mcsema_real_eip !121
  store i1 %14, i1* %FPU_C3.i, align 1, !mcsema_real_eip !121
  store i3 %15, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !121
  store i1 %16, i1* %FPU_C2.i, align 1, !mcsema_real_eip !121
  store i1 %17, i1* %FPU_C1.i, align 1, !mcsema_real_eip !121
  store i1 %18, i1* %FPU_C0.i, align 1, !mcsema_real_eip !121
  store i1 %19, i1* %FPU_ES.i, align 1, !mcsema_real_eip !121
  store i1 %20, i1* %FPU_SF.i, align 1, !mcsema_real_eip !121
  store i1 %21, i1* %FPU_PE.i, align 1, !mcsema_real_eip !121
  store i1 %22, i1* %FPU_UE.i, align 1, !mcsema_real_eip !121
  store i1 %23, i1* %FPU_OE.i, align 1, !mcsema_real_eip !121
  store i1 %24, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !121
  store i1 %25, i1* %FPU_DE.i, align 1, !mcsema_real_eip !121
  store i1 %26, i1* %FPU_IE.i, align 1, !mcsema_real_eip !121
  store i1 %27, i1* %FPU_X.i, align 1, !mcsema_real_eip !121
  store i2 %28, i2* %FPU_RC.i, align 1, !mcsema_real_eip !121
  store i2 %29, i2* %FPU_PC.i, align 1, !mcsema_real_eip !121
  store i1 %30, i1* %FPU_PM.i, align 1, !mcsema_real_eip !121
  store i1 %31, i1* %FPU_UM.i, align 1, !mcsema_real_eip !121
  store i1 %32, i1* %FPU_OM.i, align 1, !mcsema_real_eip !121
  store i1 %33, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !121
  store i1 %34, i1* %FPU_DM.i, align 1, !mcsema_real_eip !121
  store i1 %35, i1* %FPU_IM.i, align 1, !mcsema_real_eip !121
  store i64 %38, i64* %37, align 4
  store i16 %39, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !121
  store i64 %40, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !121
  store i16 %41, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !121
  store i64 %42, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !121
  store i128 %43, i128* %XMM0.i, align 1, !mcsema_real_eip !121
  store i128 %44, i128* %XMM1.i, align 1, !mcsema_real_eip !121
  store i128 %45, i128* %XMM2.i, align 1, !mcsema_real_eip !121
  store i128 %46, i128* %XMM3.i, align 1, !mcsema_real_eip !121
  store i128 %47, i128* %XMM4.i, align 1, !mcsema_real_eip !121
  store i128 %48, i128* %XMM5.i, align 1, !mcsema_real_eip !121
  store i128 %49, i128* %XMM6.i, align 1, !mcsema_real_eip !121
  store i128 %50, i128* %XMM7.i, align 1, !mcsema_real_eip !121
  store i128 %51, i128* %XMM8.i, align 1, !mcsema_real_eip !121
  store i128 %52, i128* %XMM9.i, align 1, !mcsema_real_eip !121
  store i128 %53, i128* %XMM10.i, align 1, !mcsema_real_eip !121
  store i128 %54, i128* %XMM11.i, align 1, !mcsema_real_eip !121
  store i128 %55, i128* %XMM12.i, align 1, !mcsema_real_eip !121
  store i128 %56, i128* %XMM13.i, align 1, !mcsema_real_eip !121
  store i128 %57, i128* %XMM14.i, align 1, !mcsema_real_eip !121
  store i128 %58, i128* %XMM15.i, align 1, !mcsema_real_eip !121
  store i64 %trunc34.i, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !121
  store i64 %320, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !121
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
