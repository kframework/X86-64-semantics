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
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %STi_val.i.0..sroa_cast)
  %RBX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !3
  %1 = load i64* %RBX.i, align 8, !mcsema_real_eip !3
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !3
  %2 = load i64* %RSI.i, align 8, !mcsema_real_eip !3
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !3
  %3 = load i64* %RDI.i, align 8, !mcsema_real_eip !3
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !3
  %4 = load i64* %RSP.i, align 8, !mcsema_real_eip !3
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !3
  %5 = load i64* %RBP.i, align 8, !mcsema_real_eip !3
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !3
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %6 = bitcast i64* %R12.i to <2 x i64>*
  %7 = load <2 x i64>* %6, align 8
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %8 = bitcast i64* %R14.i to <2 x i64>*
  %9 = load <2 x i64>* %8, align 8
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %10 = load i64* %RIP.i, align 8, !mcsema_real_eip !3
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !3
  %11 = load i1* %DF.i, align 1, !mcsema_real_eip !3
  %12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !3
  %13 = bitcast x86_fp80* %12 to i8*, !mcsema_real_eip !3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast, i8* %13, i32 128, i32 4, i1 false), !mcsema_real_eip !3
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !3
  %14 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !3
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !3
  %15 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !3
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !3
  %16 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !3
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !3
  %17 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !3
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !3
  %18 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !3
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !3
  %19 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !3
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !3
  %20 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !3
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !3
  %21 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !3
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !3
  %22 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !3
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !3
  %23 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !3
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !3
  %24 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !3
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !3
  %25 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !3
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !3
  %26 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !3
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !3
  %27 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !3
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !3
  %28 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !3
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !3
  %29 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !3
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !3
  %30 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !3
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !3
  %31 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !3
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !3
  %32 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !3
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !3
  %33 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !3
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !3
  %34 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !3
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !3
  %35 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !3
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !3
  %36 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !3
  %37 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !3
  %38 = bitcast i8* %37 to i64*
  %39 = load i64* %38, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !3
  %40 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !3
  %41 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !3
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !3
  %42 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !3
  %43 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !3
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %44 = load i128* %XMM0.i, align 1, !mcsema_real_eip !3
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %45 = load i128* %XMM1.i, align 1, !mcsema_real_eip !3
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %46 = load i128* %XMM2.i, align 1, !mcsema_real_eip !3
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %47 = load i128* %XMM3.i, align 1, !mcsema_real_eip !3
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %48 = load i128* %XMM4.i, align 1, !mcsema_real_eip !3
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %49 = load i128* %XMM5.i, align 1, !mcsema_real_eip !3
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %50 = load i128* %XMM6.i, align 1, !mcsema_real_eip !3
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %51 = load i128* %XMM7.i, align 1, !mcsema_real_eip !3
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %52 = load i128* %XMM8.i, align 1, !mcsema_real_eip !3
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %53 = load i128* %XMM9.i, align 1, !mcsema_real_eip !3
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %54 = load i128* %XMM10.i, align 1, !mcsema_real_eip !3
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %55 = load i128* %XMM11.i, align 1, !mcsema_real_eip !3
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %56 = load i128* %XMM12.i, align 1, !mcsema_real_eip !3
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %57 = load i128* %XMM13.i, align 1, !mcsema_real_eip !3
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %58 = load i128* %XMM14.i, align 1, !mcsema_real_eip !3
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %59 = load i128* %XMM15.i, align 1, !mcsema_real_eip !3
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %60 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %61 = load <2 x i64>* %60, align 8
  %62 = add i64 %4, -8
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !3
  store i64 %5, i64* %63, align 8, !mcsema_real_eip !3
  %64 = add i64 %4, -12, !mcsema_real_eip !4
  %65 = inttoptr i64 %64 to i32*
  store i32 0, i32* %65, align 4, !mcsema_real_eip !4
  %66 = add i64 %4, -16, !mcsema_real_eip !5
  %67 = trunc i64 %3 to i32, !mcsema_real_eip !5
  %68 = inttoptr i64 %66 to i32*
  store i32 %67, i32* %68, align 4, !mcsema_real_eip !5
  %69 = add i64 %4, -24, !mcsema_real_eip !6
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !6
  store i64 %2, i64* %70, align 8, !mcsema_real_eip !6
  %71 = tail call x86_64_sysvcc i64 @malloc(i64 40), !mcsema_real_eip !7
  %72 = add i64 %4, -32, !mcsema_real_eip !8
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !8
  store i64 %71, i64* %73, align 8, !mcsema_real_eip !8
  %74 = tail call x86_64_sysvcc i64 @malloc(i64 40), !mcsema_real_eip !9
  %75 = add i64 %4, -40, !mcsema_real_eip !10
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !10
  store i64 %74, i64* %76, align 8, !mcsema_real_eip !10
  %77 = add i64 %4, -44, !mcsema_real_eip !11
  %78 = inttoptr i64 %77 to i32*
  store i32 0, i32* %78, align 4, !mcsema_real_eip !11
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
  %79 = add i64 %4, -48, !mcsema_real_eip !12
  %80 = inttoptr i64 %79 to i32*
  store i32 0, i32* %80, align 4, !mcsema_real_eip !12
  br label %block_0x12f.i

block_0xf3.i:                                     ; preds = %block_0xf3.i, %driverBlockRaw
  %81 = phi i32 [ 0, %driverBlockRaw ], [ %89, %block_0xf3.i ]
  %82 = add i32 %81, 11
  %83 = sext i32 %81 to i64, !mcsema_real_eip !13
  %84 = load i64* %73, align 8, !mcsema_real_eip !14
  %85 = shl nsw i64 %83, 2
  %86 = add i64 %85, %84, !mcsema_real_eip !15
  %87 = inttoptr i64 %86 to i32*
  store i32 %82, i32* %87, align 4, !mcsema_real_eip !15
  %88 = load i32* %78, align 4, !mcsema_real_eip !16
  %89 = add i32 %88, 1
  store i32 %89, i32* %78, align 4, !mcsema_real_eip !17
  %90 = add i32 %88, -9
  %91 = icmp slt i32 %90, 0
  %92 = sub i32 8, %88
  %93 = and i32 %89, %92
  %94 = icmp slt i32 %93, 0
  %tmp211.i = xor i1 %91, %94
  br i1 %tmp211.i, label %block_0xf3.i, label %block_0x11b.i, !mcsema_real_eip !18

block_0x152.i:                                    ; preds = %block_0x12f.i
  %.lcssa26 = phi i1 [ %193, %block_0x12f.i ]
  %.lcssa25 = phi i1 [ %191, %block_0x12f.i ]
  %.lcssa24 = phi i32 [ %190, %block_0x12f.i ]
  %.lcssa23 = phi i32 [ %189, %block_0x12f.i ]
  %.lcssa22 = phi i32 [ %188, %block_0x12f.i ]
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !3
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %95 = add i64 %4, -88
  %96 = icmp ult i32 %.lcssa22, 10, !mcsema_real_eip !19
  %97 = icmp eq i32 %.lcssa23, 0, !mcsema_real_eip !19
  %98 = trunc i32 %.lcssa23 to i8, !mcsema_real_eip !19
  %99 = tail call i8 @llvm.ctpop.i8(i8 %98), !mcsema_real_eip !19
  %100 = and i8 %99, 1
  %101 = icmp eq i8 %100, 0
  %102 = and i32 %.lcssa24, 16, !mcsema_real_eip !19
  %103 = icmp ne i32 %102, 0, !mcsema_real_eip !19
  %104 = load i64* %73, align 8, !mcsema_real_eip !20
  %105 = load i64* %76, align 8, !mcsema_real_eip !21
  %106 = inttoptr i64 %95 to i32*
  store i32 10, i32* %106, align 4, !mcsema_real_eip !22
  %107 = add i64 %4, -80, !mcsema_real_eip !23
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !23
  store i64 %104, i64* %108, align 8, !mcsema_real_eip !23
  %109 = add i64 %4, -72, !mcsema_real_eip !24
  %110 = inttoptr i64 %109 to i32*
  store i32 10, i32* %110, align 4, !mcsema_real_eip !24
  %111 = add i64 %4, -64, !mcsema_real_eip !25
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !25
  store i64 %105, i64* %112, align 8, !mcsema_real_eip !25
  %113 = add i64 %4, -52, !mcsema_real_eip !26
  %114 = inttoptr i64 %113 to i32*
  store i32 10, i32* %114, align 4, !mcsema_real_eip !26
  %115 = add i64 %4, -96
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !27
  store i64 -4981261766360305936, i64* %116, align 8, !mcsema_real_eip !27
  store i64 10, i64* %RAX.i, align 8, !mcsema_real_eip !27
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !27
  store i64 400, i64* %RCX.i, align 8, !mcsema_real_eip !27
  store i64 300, i64* %RDX.i, align 8, !mcsema_real_eip !27
  store i64 200, i64* %RSI.i, align 8, !mcsema_real_eip !27
  store i64 100, i64* %RDI.i, align 8, !mcsema_real_eip !27
  store i64 %115, i64* %RSP.i, align 8, !mcsema_real_eip !27
  store i64 %62, i64* %RBP.i, align 8, !mcsema_real_eip !27
  store i64 500, i64* %R8.i, align 8, !mcsema_real_eip !27
  store i64 600, i64* %R9.i, align 8, !mcsema_real_eip !27
  store i64 %104, i64* %R10.i, align 8, !mcsema_real_eip !27
  store i64 %105, i64* %R11.i, align 8, !mcsema_real_eip !27
  store <2 x i64> %7, <2 x i64>* %6, align 8
  store <2 x i64> %9, <2 x i64>* %8, align 8
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !27
  store i1 %96, i1* %CF.i, align 1, !mcsema_real_eip !27
  store i1 %101, i1* %PF.i, align 1, !mcsema_real_eip !27
  store i1 %103, i1* %AF.i, align 1, !mcsema_real_eip !27
  store i1 %97, i1* %ZF.i, align 1, !mcsema_real_eip !27
  store i1 %.lcssa25, i1* %SF.i, align 1, !mcsema_real_eip !27
  store i1 %.lcssa26, i1* %OF.i, align 1, !mcsema_real_eip !27
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !27
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !27
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !27
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !27
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !27
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !27
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !27
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !27
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !27
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !27
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !27
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !27
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !27
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !27
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !27
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !27
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !27
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !27
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !27
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !27
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !27
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !27
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !27
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !27
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !27
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !27
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !27
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !27
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !27
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !27
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !27
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !27
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !27
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !27
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !27
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !27
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !27
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !27
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !27
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !27
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !27
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !27
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !27
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !27
  store <2 x i64> %61, <2 x i64>* %60, align 1
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast.i, i8* %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false)
  %117 = add i64 %4, -104
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !2
  store i64 %62, i64* %118, align 8, !mcsema_real_eip !2
  %119 = add i64 %4, -112
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !28
  store i64 %1, i64* %120, align 8, !mcsema_real_eip !28
  %121 = load i64* %112, align 8, !mcsema_real_eip !29
  %122 = load i32* %110, align 4, !mcsema_real_eip !30
  %123 = zext i32 %122 to i64, !mcsema_real_eip !30
  %124 = load i64* %108, align 8, !mcsema_real_eip !31
  %125 = load i32* %106, align 4, !mcsema_real_eip !32
  %126 = add i64 %4, -116, !mcsema_real_eip !33
  %127 = inttoptr i64 %126 to i32*
  store i32 100, i32* %127, align 4, !mcsema_real_eip !33
  %128 = add i64 %4, -120, !mcsema_real_eip !34
  %129 = inttoptr i64 %128 to i32*
  store i32 200, i32* %129, align 4, !mcsema_real_eip !34
  %130 = add i64 %4, -124, !mcsema_real_eip !35
  %131 = inttoptr i64 %130 to i32*
  store i32 300, i32* %131, align 4, !mcsema_real_eip !35
  %132 = add i64 %4, -128, !mcsema_real_eip !36
  %133 = inttoptr i64 %132 to i32*
  store i32 400, i32* %133, align 4, !mcsema_real_eip !36
  %134 = add i64 %4, -132, !mcsema_real_eip !37
  %135 = inttoptr i64 %134 to i32*
  store i32 500, i32* %135, align 4, !mcsema_real_eip !37
  %136 = add i64 %4, -136, !mcsema_real_eip !38
  %137 = inttoptr i64 %136 to i32*
  store i32 600, i32* %137, align 4, !mcsema_real_eip !38
  %138 = add i64 %4, -140, !mcsema_real_eip !39
  %139 = inttoptr i64 %138 to i32*
  store i32 %125, i32* %139, align 4, !mcsema_real_eip !39
  %140 = add i64 %4, -152, !mcsema_real_eip !40
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !40
  store i64 %124, i64* %141, align 8, !mcsema_real_eip !40
  %142 = add i64 %4, -156, !mcsema_real_eip !41
  %143 = inttoptr i64 %142 to i32*
  store i32 %122, i32* %143, align 4, !mcsema_real_eip !41
  %144 = add i64 %4, -168, !mcsema_real_eip !42
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !42
  store i64 %121, i64* %145, align 8, !mcsema_real_eip !42
  %146 = add i64 %4, -172, !mcsema_real_eip !43
  %147 = inttoptr i64 %146 to i32*
  store i32 0, i32* %147, align 4, !mcsema_real_eip !43
  %148 = add i64 %4, -176, !mcsema_real_eip !44
  %149 = inttoptr i64 %148 to i32*
  store i32 0, i32* %149, align 4, !mcsema_real_eip !44
  %150 = load i32* %139, align 4, !mcsema_real_eip !45
  %151 = sub i32 0, %150, !mcsema_real_eip !45
  %152 = icmp slt i32 %151, 0
  %153 = and i32 %150, %151, !mcsema_real_eip !45
  %154 = icmp slt i32 %153, 0
  %tmp.i.i = xor i1 %152, %154
  br i1 %tmp.i.i, label %block_0x51.i.i.preheader, label %sub_a0.exit, !mcsema_real_eip !46

block_0x51.i.i.preheader:                         ; preds = %block_0x152.i
  br label %block_0x51.i.i

block_0x7f.loopexit.i.i:                          ; preds = %block_0x51.i.i
  %.lcssa21 = phi i32 [ %170, %block_0x51.i.i ]
  %.lcssa = phi i32 [ %168, %block_0x51.i.i ]
  %155 = zext i32 %.lcssa to i64, !mcsema_real_eip !47
  %156 = zext i32 %.lcssa21 to i64, !mcsema_real_eip !48
  br label %sub_a0.exit

block_0x51.i.i:                                   ; preds = %block_0x51.i.i, %block_0x51.i.i.preheader
  %157 = phi i32 [ %172, %block_0x51.i.i ], [ 0, %block_0x51.i.i.preheader ]
  %158 = sext i32 %157 to i64, !mcsema_real_eip !49
  %159 = load i64* %141, align 8, !mcsema_real_eip !50
  %160 = shl nsw i64 %158, 2
  %161 = add i64 %160, %159, !mcsema_real_eip !51
  %162 = inttoptr i64 %161 to i32*
  %163 = load i32* %162, align 4, !mcsema_real_eip !51
  %164 = load i64* %145, align 8, !mcsema_real_eip !52
  %165 = add i64 %164, %160, !mcsema_real_eip !47
  %166 = inttoptr i64 %165 to i32*
  %167 = load i32* %166, align 4, !mcsema_real_eip !47
  %168 = sub i32 %163, %167, !mcsema_real_eip !47
  %169 = load i32* %147, align 4, !mcsema_real_eip !53
  %170 = add i32 %168, %169
  store i32 %170, i32* %147, align 4, !mcsema_real_eip !54
  %171 = load i32* %149, align 4, !mcsema_real_eip !55
  %172 = add i32 %171, 1
  store i32 %172, i32* %149, align 4, !mcsema_real_eip !56
  %173 = load i32* %139, align 4, !mcsema_real_eip !45
  %174 = sub i32 %172, %173, !mcsema_real_eip !45
  %175 = xor i32 %174, %172, !mcsema_real_eip !45
  %176 = icmp slt i32 %174, 0
  %177 = xor i32 %173, %172, !mcsema_real_eip !45
  %178 = and i32 %175, %177, !mcsema_real_eip !45
  %179 = icmp slt i32 %178, 0
  %tmp71.i.i = xor i1 %176, %179
  br i1 %tmp71.i.i, label %block_0x51.i.i, label %block_0x7f.loopexit.i.i, !mcsema_real_eip !46

block_0x12f.i:                                    ; preds = %block_0x12f.i, %block_0x11b.i
  %180 = phi i32 [ 0, %block_0x11b.i ], [ %188, %block_0x12f.i ]
  %181 = add i32 %180, 1
  %182 = sext i32 %180 to i64, !mcsema_real_eip !57
  %183 = load i64* %76, align 8, !mcsema_real_eip !58
  %184 = shl nsw i64 %182, 2
  %185 = add i64 %184, %183, !mcsema_real_eip !59
  %186 = inttoptr i64 %185 to i32*
  store i32 %181, i32* %186, align 4, !mcsema_real_eip !59
  %187 = load i32* %80, align 4, !mcsema_real_eip !60
  %188 = add i32 %187, 1
  store i32 %188, i32* %80, align 4, !mcsema_real_eip !61
  %189 = add i32 %187, -9
  %190 = xor i32 %189, %188, !mcsema_real_eip !19
  %191 = icmp slt i32 %189, 0
  %192 = and i32 %190, %188, !mcsema_real_eip !19
  %193 = icmp slt i32 %192, 0
  %tmp215.i = xor i1 %191, %193
  br i1 %tmp215.i, label %block_0x12f.i, label %block_0x152.i, !mcsema_real_eip !62

sub_a0.exit:                                      ; preds = %block_0x7f.loopexit.i.i, %block_0x152.i
  %RSI_val.0.i.i = phi i64 [ 200, %block_0x152.i ], [ %156, %block_0x7f.loopexit.i.i ]
  %RDX_val.0.i.i = phi i64 [ 300, %block_0x152.i ], [ %155, %block_0x7f.loopexit.i.i ]
  %194 = load i32* %147, align 4, !mcsema_real_eip !63
  %195 = load i32* %127, align 4, !mcsema_real_eip !64
  %196 = load i32* %129, align 4, !mcsema_real_eip !65
  %197 = add i32 %196, %195
  %198 = load i32* %131, align 4, !mcsema_real_eip !66
  %199 = add i32 %197, %198
  %200 = load i32* %133, align 4, !mcsema_real_eip !67
  %201 = add i32 %199, %200
  %202 = load i32* %135, align 4, !mcsema_real_eip !68
  %203 = add i32 %201, %202
  %204 = load i32* %137, align 4, !mcsema_real_eip !69
  %uadd76.i.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %203, i32 %204) #0
  %205 = extractvalue { i32, i1 } %uadd76.i.i, 0
  %206 = xor i32 %203, %204, !mcsema_real_eip !69
  %207 = xor i32 %206, %205, !mcsema_real_eip !69
  %208 = and i32 %207, 16, !mcsema_real_eip !69
  %209 = icmp ne i32 %208, 0, !mcsema_real_eip !69
  %210 = icmp eq i32 %205, 0, !mcsema_real_eip !69
  %211 = trunc i32 %205 to i8, !mcsema_real_eip !69
  %212 = tail call i8 @llvm.ctpop.i8(i8 %211) #0, !mcsema_real_eip !69
  %213 = and i8 %212, 1
  %214 = icmp eq i8 %213, 0
  %215 = extractvalue { i32, i1 } %uadd76.i.i, 1
  %216 = zext i32 %205 to i64, !mcsema_real_eip !69
  %217 = sext i32 %194 to i64, !mcsema_real_eip !70
  %218 = sext i32 %205 to i64, !mcsema_real_eip !70
  %219 = mul i64 %218, %217, !mcsema_real_eip !70
  %220 = mul i32 %205, %194, !mcsema_real_eip !70
  %221 = sext i32 %220 to i64, !mcsema_real_eip !70
  %222 = icmp ne i64 %221, %219, !mcsema_real_eip !70
  %223 = zext i32 %220 to i64, !mcsema_real_eip !70
  %224 = load i64* %120, align 8, !mcsema_real_eip !71
  %225 = load i64* %118, align 8, !mcsema_real_eip !72
  store i64 %223, i64* %RAX.i, align 8, !mcsema_real_eip !73
  store i64 %224, i64* %RBX.i, align 8, !mcsema_real_eip !73
  store i64 %216, i64* %RCX.i, align 8, !mcsema_real_eip !73
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !73
  store i64 %RSI_val.0.i.i, i64* %RSI.i, align 8, !mcsema_real_eip !73
  store i64 100, i64* %RDI.i, align 8, !mcsema_real_eip !73
  store i64 %95, i64* %RSP.i, align 8, !mcsema_real_eip !73
  store i64 %225, i64* %RBP.i, align 8, !mcsema_real_eip !73
  store i64 500, i64* %R8.i, align 8, !mcsema_real_eip !73
  store i64 600, i64* %R9.i, align 8, !mcsema_real_eip !73
  store i64 %123, i64* %R10.i, align 8, !mcsema_real_eip !73
  store i64 %124, i64* %R11.i, align 8, !mcsema_real_eip !73
  store <2 x i64> %7, <2 x i64>* %6, align 8
  store <2 x i64> %9, <2 x i64>* %8, align 8
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !73
  store i1 %215, i1* %CF.i, align 1, !mcsema_real_eip !73
  store i1 %214, i1* %PF.i, align 1, !mcsema_real_eip !73
  store i1 %209, i1* %AF.i, align 1, !mcsema_real_eip !73
  store i1 %210, i1* %ZF.i, align 1, !mcsema_real_eip !73
  store i1 %222, i1* %SF.i, align 1, !mcsema_real_eip !73
  store i1 %222, i1* %OF.i, align 1, !mcsema_real_eip !73
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !73
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !73
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !73
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !73
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !73
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !73
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !73
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !73
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !73
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !73
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !73
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !73
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !73
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !73
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !73
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !73
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !73
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !73
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !73
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !73
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !73
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !73
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !73
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !73
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !73
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !73
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !73
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !73
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !73
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !73
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !73
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !73
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !73
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !73
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !73
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !73
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !73
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !73
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !73
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !73
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !73
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !73
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !73
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !73
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !73
  store <2 x i64> %61, <2 x i64>* %60, align 1
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast.i)
  %226 = bitcast <2 x i64> %7 to i128
  %trunc.i = trunc i128 %226 to i64
  %227 = lshr i128 %226, 64
  %228 = trunc i128 %227 to i64
  %229 = bitcast <2 x i64> %9 to i128
  %trunc124.i = trunc i128 %229 to i64
  %230 = lshr i128 %229, 64
  %231 = trunc i128 %230 to i64
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast, i8* %13, i32 128, i32 4, i1 false), !mcsema_real_eip !27
  %232 = bitcast <2 x i64> %61 to i128
  %trunc125.i = trunc i128 %232 to i64
  %233 = lshr i128 %232, 64
  %234 = trunc i128 %233 to i64
  %uadd216.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %95, i64 80)
  %235 = extractvalue { i64, i1 } %uadd216.i, 0
  %236 = xor i64 %235, %95, !mcsema_real_eip !74
  %237 = and i64 %236, 16
  %238 = icmp eq i64 %237, 0
  %239 = icmp slt i64 %235, 0
  %240 = icmp eq i64 %235, 0, !mcsema_real_eip !74
  %241 = add i64 %4, 9223372036854775720
  %242 = and i64 %236, %241, !mcsema_real_eip !74
  %243 = icmp slt i64 %242, 0
  %244 = trunc i64 %235 to i8, !mcsema_real_eip !74
  %245 = tail call i8 @llvm.ctpop.i8(i8 %244), !mcsema_real_eip !74
  %246 = and i8 %245, 1
  %247 = icmp eq i8 %246, 0
  %248 = extractvalue { i64, i1 } %uadd216.i, 1
  %249 = inttoptr i64 %235 to i64*, !mcsema_real_eip !75
  %250 = load i64* %249, align 8, !mcsema_real_eip !75
  %251 = add i64 %235, 16, !mcsema_real_eip !76
  store i64 %223, i64* %RAX.i, align 8, !mcsema_real_eip !76
  store i64 %224, i64* %RBX.i, align 8, !mcsema_real_eip !76
  store i64 %216, i64* %RCX.i, align 8, !mcsema_real_eip !76
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !76
  store i64 %RSI_val.0.i.i, i64* %RSI.i, align 8, !mcsema_real_eip !76
  store i64 100, i64* %RDI.i, align 8, !mcsema_real_eip !76
  store i64 %251, i64* %RSP.i, align 8, !mcsema_real_eip !76
  store i64 %250, i64* %RBP.i, align 8, !mcsema_real_eip !76
  store i64 500, i64* %R8.i, align 8, !mcsema_real_eip !76
  store i64 600, i64* %R9.i, align 8, !mcsema_real_eip !76
  store i64 %123, i64* %R10.i, align 8, !mcsema_real_eip !76
  store i64 %124, i64* %R11.i, align 8, !mcsema_real_eip !76
  store i64 %trunc.i, i64* %R12.i, align 8, !mcsema_real_eip !76
  store i64 %228, i64* %R13.i, align 8, !mcsema_real_eip !76
  store i64 %trunc124.i, i64* %R14.i, align 8, !mcsema_real_eip !76
  store i64 %231, i64* %R15.i, align 8, !mcsema_real_eip !76
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !76
  store i1 %248, i1* %CF.i, align 1, !mcsema_real_eip !76
  store i1 %247, i1* %PF.i, align 1, !mcsema_real_eip !76
  store i1 %238, i1* %AF.i, align 1, !mcsema_real_eip !76
  store i1 %240, i1* %ZF.i, align 1, !mcsema_real_eip !76
  store i1 %239, i1* %SF.i, align 1, !mcsema_real_eip !76
  store i1 %243, i1* %OF.i, align 1, !mcsema_real_eip !76
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !76
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !76
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !76
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !76
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !76
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !76
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !76
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !76
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !76
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !76
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !76
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !76
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !76
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !76
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !76
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !76
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !76
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !76
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !76
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !76
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !76
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !76
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !76
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !76
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !76
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !76
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !76
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !76
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !76
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !76
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !76
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !76
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !76
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !76
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !76
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !76
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !76
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !76
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !76
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !76
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !76
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !76
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !76
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !76
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !76
  store i64 %trunc125.i, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !76
  store i64 %234, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !76
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast)
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
