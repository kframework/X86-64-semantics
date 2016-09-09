; ModuleID = 'Output/test_23.clang.opt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [77 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x329 = internal global %0 <{ [77 x i8] c"+-+---+---+| |     |#|| | --+ | || |   | | || +-- | | ||     |   |+-----+---+" }>, align 64

declare x86_64_sysvcc i64 @read(i64 inreg, i64 inreg, i64 inreg)

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %STi_val.i.0..sroa_cast)
  %RAX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %1 = load i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %2 = load i64* %RSI.i, align 8, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %3 = load i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %4 = load i64* %RSP.i, align 8, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %5 = load i64* %RBP.i, align 8, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %R9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %6 = load i64* %R10.i, align 8, !mcsema_real_eip !2
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %7 = load i64* %R11.i, align 8, !mcsema_real_eip !2
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %8 = load i64* %R12.i, align 8, !mcsema_real_eip !2
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %9 = load i64* %R13.i, align 8, !mcsema_real_eip !2
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %10 = load i64* %R14.i, align 8, !mcsema_real_eip !2
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %11 = load i64* %R15.i, align 8, !mcsema_real_eip !2
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %12 = load i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %13 = load i1* %DF.i, align 1, !mcsema_real_eip !2
  %14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %15 = bitcast x86_fp80* %14 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast, i8* %15, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %16 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %17 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %18 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %19 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %20 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %21 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %22 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %23 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %24 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %25 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %26 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %27 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %28 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %29 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %30 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %31 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %32 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %33 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %34 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %35 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %36 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %37 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %38 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %39 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %40 = bitcast i8* %39 to i64*
  %41 = load i64* %40, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %42 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %43 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %44 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %45 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %46 = load i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %47 = load i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %48 = load i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %49 = load i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %50 = load i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %51 = load i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %52 = load i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %53 = load i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %54 = load i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %55 = load i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %56 = load i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %57 = load i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %58 = load i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %59 = load i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %60 = load i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %61 = load i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %62 = load i64* %STACK_BASE.i, align 8, !mcsema_real_eip !2
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %63 = load i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !2
  %64 = add i64 %4, -8
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !2
  store i64 %5, i64* %65, align 8, !mcsema_real_eip !2
  %66 = add i64 %4, -104
  %67 = add i64 %4, -72, !mcsema_real_eip !3
  %68 = add i64 %4, -12, !mcsema_real_eip !4
  %69 = inttoptr i64 %68 to i32*
  store i32 0, i32* %69, align 4, !mcsema_real_eip !4
  %70 = add i64 %4, -16, !mcsema_real_eip !5
  %71 = trunc i64 %3 to i32, !mcsema_real_eip !5
  %72 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %72, align 4, !mcsema_real_eip !5
  %73 = add i64 %4, -24, !mcsema_real_eip !6
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !6
  store i64 %2, i64* %74, align 8, !mcsema_real_eip !6
  %75 = add i64 %4, -44, !mcsema_real_eip !7
  %76 = inttoptr i64 %75 to i32*
  store i32 0, i32* %76, align 4, !mcsema_real_eip !7
  %77 = add i64 %4, -28, !mcsema_real_eip !8
  %78 = inttoptr i64 %77 to i32*
  store i32 1, i32* %78, align 4, !mcsema_real_eip !8
  %79 = add i64 %4, -32, !mcsema_real_eip !9
  %80 = inttoptr i64 %79 to i32*
  store i32 1, i32* %80, align 4, !mcsema_real_eip !9
  %81 = load i32* %78, align 4, !mcsema_real_eip !10
  %82 = sext i32 %81 to i64, !mcsema_real_eip !10
  %83 = add i64 %82, add (i64 ptrtoint (%0* @data_0x329 to i64), i64 11), !mcsema_real_eip !11
  %84 = inttoptr i64 %83 to i8*
  store i8 88, i8* %84, align 1, !mcsema_real_eip !11
  %85 = tail call x86_64_sysvcc i64 @read(i64 0, i64 %67, i64 28), !mcsema_real_eip !12
  %86 = add i64 %4, -80, !mcsema_real_eip !13
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !13
  store i64 %85, i64* %87, align 8, !mcsema_real_eip !13
  %88 = load i32* %76, align 4, !mcsema_real_eip !14
  %89 = add i32 %88, -28
  %90 = icmp slt i32 %89, 0
  %91 = sub i32 27, %88
  %92 = and i32 %91, %88
  %93 = icmp slt i32 %92, 0
  %tmp.i = xor i1 %90, %93
  br i1 %tmp.i, label %block_0x13a.preheader.i, label %block_0x319.i, !mcsema_real_eip !15

block_0x13a.preheader.i:                          ; preds = %driverBlockRaw
  %94 = add i64 %4, -36, !mcsema_real_eip !16
  %95 = inttoptr i64 %94 to i32*
  %96 = add i64 %4, -40, !mcsema_real_eip !17
  %97 = inttoptr i64 %96 to i32*
  %98 = add i64 %4, -84, !mcsema_real_eip !18
  %99 = inttoptr i64 %98 to i32*
  %100 = add i64 %4, -88, !mcsema_real_eip !19
  %101 = inttoptr i64 %100 to i32*
  %102 = add i64 %4, -92, !mcsema_real_eip !20
  %103 = inttoptr i64 %102 to i32*
  %104 = add i64 %4, -96, !mcsema_real_eip !21
  %105 = inttoptr i64 %104 to i32*
  %106 = add i64 %4, -100, !mcsema_real_eip !22
  %107 = inttoptr i64 %106 to i32*
  %108 = inttoptr i64 %66 to i32*
  br label %block_0x13a.i

block_0x319.i.loopexit:                           ; preds = %block_0x2e8.i
  %.lcssa90 = phi i64 [ %205, %block_0x2e8.i ]
  %.lcssa89 = phi i64 [ %199, %block_0x2e8.i ]
  %.lcssa88 = phi i64 [ %197, %block_0x2e8.i ]
  br label %block_0x319.i

block_0x319.i:                                    ; preds = %block_0x319.i.loopexit, %driverBlockRaw
  %RSI_val.0.i = phi i64 [ %67, %driverBlockRaw ], [ %.lcssa90, %block_0x319.i.loopexit ]
  %RDX_val.0.i = phi i64 [ 28, %driverBlockRaw ], [ %.lcssa89, %block_0x319.i.loopexit ]
  %RCX_val.0.i = phi i64 [ %67, %driverBlockRaw ], [ %.lcssa88, %block_0x319.i.loopexit ]
  store i32 1, i32* %69, align 4, !mcsema_real_eip !23
  %uadd158.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %66, i64 96)
  %109 = extractvalue { i64, i1 } %uadd158.i, 0
  %110 = xor i64 %109, %66, !mcsema_real_eip !24
  %111 = and i64 %110, 16, !mcsema_real_eip !24
  %112 = icmp ne i64 %111, 0, !mcsema_real_eip !24
  %113 = icmp slt i64 %109, 0
  %114 = icmp eq i64 %109, 0, !mcsema_real_eip !24
  %115 = add i64 %4, 9223372036854775704
  %116 = and i64 %110, %115, !mcsema_real_eip !24
  %117 = icmp slt i64 %116, 0
  %118 = trunc i64 %109 to i8, !mcsema_real_eip !24
  %119 = tail call i8 @llvm.ctpop.i8(i8 %118), !mcsema_real_eip !24
  %120 = and i8 %119, 1
  %121 = icmp eq i8 %120, 0
  %122 = extractvalue { i64, i1 } %uadd158.i, 1
  %123 = inttoptr i64 %109 to i64*, !mcsema_real_eip !25
  %124 = load i64* %123, align 8, !mcsema_real_eip !25
  %125 = add i64 %109, 16, !mcsema_real_eip !26
  store i64 1, i64* %RAX.i, align 8, !mcsema_real_eip !26
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !26
  store i64 %RCX_val.0.i, i64* %RCX.i, align 8, !mcsema_real_eip !26
  store i64 %RDX_val.0.i, i64* %RDX.i, align 8, !mcsema_real_eip !26
  store i64 %RSI_val.0.i, i64* %RSI.i, align 8, !mcsema_real_eip !26
  store i64 0, i64* %RDI.i, align 8, !mcsema_real_eip !26
  store i64 %125, i64* %RSP.i, align 8, !mcsema_real_eip !26
  store i64 %124, i64* %RBP.i, align 8, !mcsema_real_eip !26
  store i64 add (i64 ptrtoint (%0* @data_0x329 to i64), i64 11), i64* %R8.i, align 8, !mcsema_real_eip !26
  store i64 11, i64* %R9.i, align 8, !mcsema_real_eip !26
  store i64 %6, i64* %R10.i, align 8, !mcsema_real_eip !26
  store i64 %7, i64* %R11.i, align 8, !mcsema_real_eip !26
  store i64 %8, i64* %R12.i, align 8, !mcsema_real_eip !26
  store i64 %9, i64* %R13.i, align 8, !mcsema_real_eip !26
  store i64 %10, i64* %R14.i, align 8, !mcsema_real_eip !26
  store i64 %11, i64* %R15.i, align 8, !mcsema_real_eip !26
  store i64 %12, i64* %RIP.i, align 8, !mcsema_real_eip !26
  store i1 %122, i1* %CF.i, align 1, !mcsema_real_eip !26
  store i1 %121, i1* %PF.i, align 1, !mcsema_real_eip !26
  store i1 %112, i1* %AF.i, align 1, !mcsema_real_eip !26
  store i1 %114, i1* %ZF.i, align 1, !mcsema_real_eip !26
  store i1 %113, i1* %SF.i, align 1, !mcsema_real_eip !26
  store i1 %117, i1* %OF.i, align 1, !mcsema_real_eip !26
  store i1 %13, i1* %DF.i, align 1, !mcsema_real_eip !26
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !26
  store i1 %16, i1* %FPU_B.i, align 1, !mcsema_real_eip !26
  store i1 %17, i1* %FPU_C3.i, align 1, !mcsema_real_eip !26
  store i3 %18, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !26
  store i1 %19, i1* %FPU_C2.i, align 1, !mcsema_real_eip !26
  store i1 %20, i1* %FPU_C1.i, align 1, !mcsema_real_eip !26
  store i1 %21, i1* %FPU_C0.i, align 1, !mcsema_real_eip !26
  store i1 %22, i1* %FPU_ES.i, align 1, !mcsema_real_eip !26
  store i1 %23, i1* %FPU_SF.i, align 1, !mcsema_real_eip !26
  store i1 %24, i1* %FPU_PE.i, align 1, !mcsema_real_eip !26
  store i1 %25, i1* %FPU_UE.i, align 1, !mcsema_real_eip !26
  store i1 %26, i1* %FPU_OE.i, align 1, !mcsema_real_eip !26
  store i1 %27, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !26
  store i1 %28, i1* %FPU_DE.i, align 1, !mcsema_real_eip !26
  store i1 %29, i1* %FPU_IE.i, align 1, !mcsema_real_eip !26
  store i1 %30, i1* %FPU_X.i, align 1, !mcsema_real_eip !26
  store i2 %31, i2* %FPU_RC.i, align 1, !mcsema_real_eip !26
  store i2 %32, i2* %FPU_PC.i, align 1, !mcsema_real_eip !26
  store i1 %33, i1* %FPU_PM.i, align 1, !mcsema_real_eip !26
  store i1 %34, i1* %FPU_UM.i, align 1, !mcsema_real_eip !26
  store i1 %35, i1* %FPU_OM.i, align 1, !mcsema_real_eip !26
  store i1 %36, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !26
  store i1 %37, i1* %FPU_DM.i, align 1, !mcsema_real_eip !26
  store i1 %38, i1* %FPU_IM.i, align 1, !mcsema_real_eip !26
  store i64 %41, i64* %40, align 4
  store i16 %42, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !26
  store i64 %43, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !26
  store i16 %44, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !26
  store i64 %45, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !26
  store i128 %46, i128* %XMM0.i, align 1, !mcsema_real_eip !26
  store i128 %47, i128* %XMM1.i, align 1, !mcsema_real_eip !26
  store i128 %48, i128* %XMM2.i, align 1, !mcsema_real_eip !26
  store i128 %49, i128* %XMM3.i, align 1, !mcsema_real_eip !26
  store i128 %50, i128* %XMM4.i, align 1, !mcsema_real_eip !26
  store i128 %51, i128* %XMM5.i, align 1, !mcsema_real_eip !26
  store i128 %52, i128* %XMM6.i, align 1, !mcsema_real_eip !26
  store i128 %53, i128* %XMM7.i, align 1, !mcsema_real_eip !26
  store i128 %54, i128* %XMM8.i, align 1, !mcsema_real_eip !26
  store i128 %55, i128* %XMM9.i, align 1, !mcsema_real_eip !26
  store i128 %56, i128* %XMM10.i, align 1, !mcsema_real_eip !26
  store i128 %57, i128* %XMM11.i, align 1, !mcsema_real_eip !26
  store i128 %58, i128* %XMM12.i, align 1, !mcsema_real_eip !26
  store i128 %59, i128* %XMM13.i, align 1, !mcsema_real_eip !26
  store i128 %60, i128* %XMM14.i, align 1, !mcsema_real_eip !26
  store i128 %61, i128* %XMM15.i, align 1, !mcsema_real_eip !26
  store i64 %62, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !26
  store i64 %63, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !26
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast)
  br label %sub_c0.exit

block_0x13a.i:                                    ; preds = %block_0x2e8.i, %block_0x13a.preheader.i
  %RSI_val.1.i = phi i64 [ %205, %block_0x2e8.i ], [ %67, %block_0x13a.preheader.i ]
  %126 = load i32* %78, align 4, !mcsema_real_eip !27
  store i32 %126, i32* %95, align 4, !mcsema_real_eip !16
  %127 = load i32* %80, align 4, !mcsema_real_eip !28
  store i32 %127, i32* %97, align 4, !mcsema_real_eip !17
  %128 = load i32* %76, align 4, !mcsema_real_eip !29
  %129 = sext i32 %128 to i64, !mcsema_real_eip !29
  %130 = add i64 %129, %67, !mcsema_real_eip !30
  %131 = inttoptr i64 %130 to i8*
  %132 = load i8* %131, align 1, !mcsema_real_eip !30
  %133 = sext i8 %132 to i32, !mcsema_real_eip !30
  %134 = add nsw i32 %133, -114
  %135 = icmp eq i32 %134, 0, !mcsema_real_eip !31
  %136 = icmp slt i32 %134, 0
  %137 = sub i32 113, %133
  %138 = and i32 %137, %133
  %139 = icmp slt i32 %138, 0
  store i32 %133, i32* %99, align 4, !mcsema_real_eip !18
  store i32 %134, i32* %101, align 4, !mcsema_real_eip !19
  %tmp139.i = xor i1 %136, %139
  %.demorgan.i = or i1 %135, %tmp139.i
  %140 = load i32* %99, align 4, !mcsema_real_eip !32
  br i1 %.demorgan.i, label %block_0x165.i, label %block_0x18d.i, !mcsema_real_eip !33

block_0x18d.i:                                    ; preds = %block_0x13a.i
  %141 = add i32 %140, -115
  %142 = icmp eq i32 %141, 0, !mcsema_real_eip !34
  store i32 %141, i32* %107, align 4, !mcsema_real_eip !22
  br i1 %142, label %block_0x1c5.i, label %block_0x1a1.i, !mcsema_real_eip !35

block_0x165.i:                                    ; preds = %block_0x13a.i
  %143 = add i32 %140, -97
  %144 = icmp eq i32 %143, 0, !mcsema_real_eip !36
  store i32 %143, i32* %103, align 4, !mcsema_real_eip !20
  br i1 %144, label %block_0x1d5.i, label %block_0x179.i, !mcsema_real_eip !37

block_0x1c5.i:                                    ; preds = %block_0x18d.i
  %145 = load i32* %80, align 4, !mcsema_real_eip !38
  %146 = add i32 %145, 1
  store i32 %146, i32* %80, align 4, !mcsema_real_eip !39
  br label %block_0x201.i, !mcsema_real_eip !40

block_0x1d5.i:                                    ; preds = %block_0x165.i
  %147 = load i32* %78, align 4, !mcsema_real_eip !41
  %148 = add i32 %147, -1
  store i32 %148, i32* %78, align 4, !mcsema_real_eip !42
  br label %block_0x201.i, !mcsema_real_eip !43

block_0x1a1.i:                                    ; preds = %block_0x18d.i
  %149 = load i32* %99, align 4, !mcsema_real_eip !44
  %150 = add i32 %149, -119
  %151 = icmp eq i32 %150, 0, !mcsema_real_eip !45
  store i32 %150, i32* %108, align 4, !mcsema_real_eip !46
  br i1 %151, label %block_0x1b5.i, label %block_0x1f5.i, !mcsema_real_eip !47

block_0x201.i:                                    ; preds = %block_0x1b5.i, %block_0x1e5.i, %block_0x1d5.i, %block_0x1c5.i
  %152 = load i32* %78, align 4, !mcsema_real_eip !48
  %153 = sext i32 %152 to i64, !mcsema_real_eip !48
  %154 = load i32* %80, align 4, !mcsema_real_eip !49
  %155 = sext i32 %154 to i64, !mcsema_real_eip !49
  %156 = mul i64 %155, 11, !mcsema_real_eip !50
  %157 = add i64 %153, ptrtoint (%0* @data_0x329 to i64)
  %158 = add i64 %157, %156, !mcsema_real_eip !51
  %159 = inttoptr i64 %158 to i8*
  %160 = load i8* %159, align 1, !mcsema_real_eip !51
  switch i8 %160, label %block_0x265.i [
    i8 35, label %block_0x22d.i
    i8 32, label %block_0x2c4.i
  ]

block_0x179.i:                                    ; preds = %block_0x165.i
  %161 = load i32* %99, align 4, !mcsema_real_eip !52
  %162 = add i32 %161, -100
  %163 = icmp eq i32 %162, 0, !mcsema_real_eip !53
  store i32 %162, i32* %105, align 4, !mcsema_real_eip !21
  br i1 %163, label %block_0x1e5.i, label %block_0x1f5.i, !mcsema_real_eip !54

block_0x1f5.i:                                    ; preds = %block_0x179.i, %block_0x1a1.i
  %.lcssa75 = phi i32 [ %134, %block_0x179.i ], [ %134, %block_0x1a1.i ]
  %.lcssa = phi i64 [ %129, %block_0x179.i ], [ %129, %block_0x1a1.i ]
  %RSI_val.1.i.lcssa = phi i64 [ %RSI_val.1.i, %block_0x179.i ], [ %RSI_val.1.i, %block_0x1a1.i ]
  %164 = zext i32 %.lcssa75 to i64, !mcsema_real_eip !31
  store i32 1, i32* %69, align 4, !mcsema_real_eip !55
  br label %block_0x320.i, !mcsema_real_eip !56

block_0x22d.i:                                    ; preds = %block_0x201.i
  %.lcssa82 = phi i64 [ %156, %block_0x201.i ]
  %.lcssa79 = phi i64 [ %153, %block_0x201.i ]
  store i32 0, i32* %69, align 4, !mcsema_real_eip !57
  br label %block_0x320.i, !mcsema_real_eip !58

block_0x1e5.i:                                    ; preds = %block_0x179.i
  %165 = load i32* %78, align 4, !mcsema_real_eip !59
  %166 = add i32 %165, 1
  store i32 %166, i32* %78, align 4, !mcsema_real_eip !60
  br label %block_0x201.i, !mcsema_real_eip !61

block_0x320.i:                                    ; preds = %block_0x2dc.i, %block_0x22d.i, %block_0x1f5.i
  %167 = phi i64 [ 0, %block_0x22d.i ], [ 2, %block_0x2dc.i ], [ 1, %block_0x1f5.i ]
  %RSI_val.2.i = phi i64 [ 35, %block_0x22d.i ], [ %216, %block_0x2dc.i ], [ %RSI_val.1.i.lcssa, %block_0x1f5.i ]
  %RDX_val.1.i = phi i64 [ %.lcssa82, %block_0x22d.i ], [ %.lcssa83, %block_0x2dc.i ], [ %164, %block_0x1f5.i ]
  %RCX_val.1.i = phi i64 [ %.lcssa79, %block_0x22d.i ], [ %.lcssa80, %block_0x2dc.i ], [ %.lcssa, %block_0x1f5.i ]
  %uadd141.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %66, i64 96)
  %168 = extractvalue { i64, i1 } %uadd141.i, 0
  %169 = xor i64 %168, %66, !mcsema_real_eip !24
  %170 = and i64 %169, 16, !mcsema_real_eip !24
  %171 = icmp ne i64 %170, 0, !mcsema_real_eip !24
  %172 = icmp slt i64 %168, 0
  %173 = icmp eq i64 %168, 0, !mcsema_real_eip !24
  %174 = add i64 %4, 9223372036854775704
  %175 = and i64 %169, %174, !mcsema_real_eip !24
  %176 = icmp slt i64 %175, 0
  %177 = trunc i64 %168 to i8, !mcsema_real_eip !24
  %178 = tail call i8 @llvm.ctpop.i8(i8 %177), !mcsema_real_eip !24
  %179 = and i8 %178, 1
  %180 = icmp eq i8 %179, 0
  %181 = extractvalue { i64, i1 } %uadd141.i, 1
  %182 = inttoptr i64 %168 to i64*, !mcsema_real_eip !25
  %183 = load i64* %182, align 8, !mcsema_real_eip !25
  %184 = add i64 %168, 16, !mcsema_real_eip !26
  store i64 %167, i64* %RAX.i, align 8, !mcsema_real_eip !26
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !26
  store i64 %RCX_val.1.i, i64* %RCX.i, align 8, !mcsema_real_eip !26
  store i64 %RDX_val.1.i, i64* %RDX.i, align 8, !mcsema_real_eip !26
  store i64 %RSI_val.2.i, i64* %RSI.i, align 8, !mcsema_real_eip !26
  store i64 0, i64* %RDI.i, align 8, !mcsema_real_eip !26
  store i64 %184, i64* %RSP.i, align 8, !mcsema_real_eip !26
  store i64 %183, i64* %RBP.i, align 8, !mcsema_real_eip !26
  store i64 add (i64 ptrtoint (%0* @data_0x329 to i64), i64 11), i64* %R8.i, align 8, !mcsema_real_eip !26
  store i64 11, i64* %R9.i, align 8, !mcsema_real_eip !26
  store i64 %6, i64* %R10.i, align 8, !mcsema_real_eip !26
  store i64 %7, i64* %R11.i, align 8, !mcsema_real_eip !26
  store i64 %8, i64* %R12.i, align 8, !mcsema_real_eip !26
  store i64 %9, i64* %R13.i, align 8, !mcsema_real_eip !26
  store i64 %10, i64* %R14.i, align 8, !mcsema_real_eip !26
  store i64 %11, i64* %R15.i, align 8, !mcsema_real_eip !26
  store i64 %12, i64* %RIP.i, align 8, !mcsema_real_eip !26
  store i1 %181, i1* %CF.i, align 1, !mcsema_real_eip !26
  store i1 %180, i1* %PF.i, align 1, !mcsema_real_eip !26
  store i1 %171, i1* %AF.i, align 1, !mcsema_real_eip !26
  store i1 %173, i1* %ZF.i, align 1, !mcsema_real_eip !26
  store i1 %172, i1* %SF.i, align 1, !mcsema_real_eip !26
  store i1 %176, i1* %OF.i, align 1, !mcsema_real_eip !26
  store i1 %13, i1* %DF.i, align 1, !mcsema_real_eip !26
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !26
  store i1 %16, i1* %FPU_B.i, align 1, !mcsema_real_eip !26
  store i1 %17, i1* %FPU_C3.i, align 1, !mcsema_real_eip !26
  store i3 %18, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !26
  store i1 %19, i1* %FPU_C2.i, align 1, !mcsema_real_eip !26
  store i1 %20, i1* %FPU_C1.i, align 1, !mcsema_real_eip !26
  store i1 %21, i1* %FPU_C0.i, align 1, !mcsema_real_eip !26
  store i1 %22, i1* %FPU_ES.i, align 1, !mcsema_real_eip !26
  store i1 %23, i1* %FPU_SF.i, align 1, !mcsema_real_eip !26
  store i1 %24, i1* %FPU_PE.i, align 1, !mcsema_real_eip !26
  store i1 %25, i1* %FPU_UE.i, align 1, !mcsema_real_eip !26
  store i1 %26, i1* %FPU_OE.i, align 1, !mcsema_real_eip !26
  store i1 %27, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !26
  store i1 %28, i1* %FPU_DE.i, align 1, !mcsema_real_eip !26
  store i1 %29, i1* %FPU_IE.i, align 1, !mcsema_real_eip !26
  store i1 %30, i1* %FPU_X.i, align 1, !mcsema_real_eip !26
  store i2 %31, i2* %FPU_RC.i, align 1, !mcsema_real_eip !26
  store i2 %32, i2* %FPU_PC.i, align 1, !mcsema_real_eip !26
  store i1 %33, i1* %FPU_PM.i, align 1, !mcsema_real_eip !26
  store i1 %34, i1* %FPU_UM.i, align 1, !mcsema_real_eip !26
  store i1 %35, i1* %FPU_OM.i, align 1, !mcsema_real_eip !26
  store i1 %36, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !26
  store i1 %37, i1* %FPU_DM.i, align 1, !mcsema_real_eip !26
  store i1 %38, i1* %FPU_IM.i, align 1, !mcsema_real_eip !26
  store i64 %41, i64* %40, align 4
  store i16 %42, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !26
  store i64 %43, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !26
  store i16 %44, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !26
  store i64 %45, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !26
  store i128 %46, i128* %XMM0.i, align 1, !mcsema_real_eip !26
  store i128 %47, i128* %XMM1.i, align 1, !mcsema_real_eip !26
  store i128 %48, i128* %XMM2.i, align 1, !mcsema_real_eip !26
  store i128 %49, i128* %XMM3.i, align 1, !mcsema_real_eip !26
  store i128 %50, i128* %XMM4.i, align 1, !mcsema_real_eip !26
  store i128 %51, i128* %XMM5.i, align 1, !mcsema_real_eip !26
  store i128 %52, i128* %XMM6.i, align 1, !mcsema_real_eip !26
  store i128 %53, i128* %XMM7.i, align 1, !mcsema_real_eip !26
  store i128 %54, i128* %XMM8.i, align 1, !mcsema_real_eip !26
  store i128 %55, i128* %XMM9.i, align 1, !mcsema_real_eip !26
  store i128 %56, i128* %XMM10.i, align 1, !mcsema_real_eip !26
  store i128 %57, i128* %XMM11.i, align 1, !mcsema_real_eip !26
  store i128 %58, i128* %XMM12.i, align 1, !mcsema_real_eip !26
  store i128 %59, i128* %XMM13.i, align 1, !mcsema_real_eip !26
  store i128 %60, i128* %XMM14.i, align 1, !mcsema_real_eip !26
  store i128 %61, i128* %XMM15.i, align 1, !mcsema_real_eip !26
  store i64 %62, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !26
  store i64 %63, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !26
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast)
  br label %sub_c0.exit

block_0x1b5.i:                                    ; preds = %block_0x1a1.i
  %185 = load i32* %80, align 4, !mcsema_real_eip !62
  %186 = add i32 %185, -1
  store i32 %186, i32* %80, align 4, !mcsema_real_eip !63
  br label %block_0x201.i, !mcsema_real_eip !64

block_0x2c4.i:                                    ; preds = %block_0x2ab.i, %block_0x201.i
  %187 = load i32* %95, align 4, !mcsema_real_eip !65
  %188 = icmp eq i32 %187, %152
  br i1 %188, label %block_0x2d0.i, label %block_0x2e8.i, !mcsema_real_eip !66

block_0x265.i:                                    ; preds = %block_0x201.i
  %notlhs.i = icmp ne i32 %154, 2
  %notrhs.i = icmp ne i8 %160, 124
  %or.cond.not.i = or i1 %notrhs.i, %notlhs.i
  %189 = icmp slt i32 %152, 1
  %or.cond167.i = or i1 %or.cond.not.i, %189
  br i1 %or.cond167.i, label %block_0x2b8.i, label %block_0x2ab.i, !mcsema_real_eip !67

block_0x2b8.i:                                    ; preds = %block_0x2ab.i, %block_0x265.i
  %190 = load i32* %95, align 4, !mcsema_real_eip !68
  store i32 %190, i32* %78, align 4, !mcsema_real_eip !69
  %191 = load i32* %97, align 4, !mcsema_real_eip !70
  store i32 %191, i32* %80, align 4, !mcsema_real_eip !71
  %192 = load i32* %95, align 4, !mcsema_real_eip !65
  %193 = load i32* %78, align 4, !mcsema_real_eip !72
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %block_0x2d0.i, label %block_0x2e8.i, !mcsema_real_eip !66

block_0x2e8.i:                                    ; preds = %block_0x2d0.i, %block_0x2b8.i, %block_0x2c4.i
  %195 = phi i32 [ %212, %block_0x2d0.i ], [ %191, %block_0x2b8.i ], [ %154, %block_0x2c4.i ]
  %196 = phi i32 [ %211, %block_0x2d0.i ], [ %193, %block_0x2b8.i ], [ %152, %block_0x2c4.i ]
  %197 = sext i32 %196 to i64, !mcsema_real_eip !73
  %198 = sext i32 %195 to i64, !mcsema_real_eip !74
  %199 = mul i64 %198, 11, !mcsema_real_eip !75
  %200 = add i64 %197, ptrtoint (%0* @data_0x329 to i64)
  %201 = add i64 %200, %199, !mcsema_real_eip !76
  %202 = inttoptr i64 %201 to i8*
  store i8 88, i8* %202, align 1, !mcsema_real_eip !76
  %203 = load i32* %76, align 4, !mcsema_real_eip !77
  %204 = add i32 %203, 1
  %205 = zext i32 %204 to i64, !mcsema_real_eip !78
  store i32 %204, i32* %76, align 4, !mcsema_real_eip !79
  %206 = add i32 %203, -27
  %207 = icmp slt i32 %206, 0
  %208 = sub i32 26, %203
  %209 = and i32 %204, %208
  %210 = icmp slt i32 %209, 0
  %tmp157.i = xor i1 %207, %210
  br i1 %tmp157.i, label %block_0x13a.i, label %block_0x319.i.loopexit, !mcsema_real_eip !15

block_0x2d0.i:                                    ; preds = %block_0x2b8.i, %block_0x2c4.i
  %211 = phi i32 [ %192, %block_0x2b8.i ], [ %152, %block_0x2c4.i ]
  %212 = phi i32 [ %191, %block_0x2b8.i ], [ %154, %block_0x2c4.i ]
  %213 = load i32* %97, align 4, !mcsema_real_eip !80
  %214 = icmp eq i32 %213, %212
  br i1 %214, label %block_0x2dc.i, label %block_0x2e8.i, !mcsema_real_eip !81

block_0x2dc.i:                                    ; preds = %block_0x2d0.i
  %.lcssa86 = phi i8 [ %160, %block_0x2d0.i ]
  %.lcssa83 = phi i64 [ %156, %block_0x2d0.i ]
  %.lcssa80 = phi i64 [ %153, %block_0x2d0.i ]
  %215 = sext i8 %.lcssa86 to i64
  %216 = and i64 %215, 4294967295
  store i32 2, i32* %69, align 4, !mcsema_real_eip !82
  br label %block_0x320.i, !mcsema_real_eip !83

block_0x2ab.i:                                    ; preds = %block_0x265.i
  %217 = add i32 %152, -11
  %218 = icmp slt i32 %217, 0
  %219 = sub i32 10, %152
  %220 = and i32 %219, %152
  %221 = icmp slt i32 %220, 0
  %222 = xor i1 %218, %221
  br i1 %222, label %block_0x2c4.i, label %block_0x2b8.i, !mcsema_real_eip !84

sub_c0.exit:                                      ; preds = %block_0x320.i, %block_0x319.i
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
!2 = metadata !{i64 192, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 215, [22 x i8] c"\09leaq\09-64(%rbp), %rcx\00"}
!4 = metadata !{i64 229, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!5 = metadata !{i64 236, [21 x i8] c"\09movl\09%edi, -8(%rbp)\00"}
!6 = metadata !{i64 239, [22 x i8] c"\09movq\09%rsi, -16(%rbp)\00"}
!7 = metadata !{i64 243, [20 x i8] c"\09movl\09$0, -36(%rbp)\00"}
!8 = metadata !{i64 250, [20 x i8] c"\09movl\09$1, -20(%rbp)\00"}
!9 = metadata !{i64 257, [20 x i8] c"\09movl\09$1, -24(%rbp)\00"}
!10 = metadata !{i64 264, [24 x i8] c"\09movslq\09-20(%rbp), %rsi\00"}
!11 = metadata !{i64 282, [22 x i8] c"\09movb\09$88, (%r8,%rsi)\00"}
!12 = metadata !{i64 292, [9 x i8] c"\09callq\090\00"}
!13 = metadata !{i64 297, [22 x i8] c"\09movq\09%rax, -72(%rbp)\00"}
!14 = metadata !{i64 301, [21 x i8] c"\09cmpl\09$28, -36(%rbp)\00"}
!15 = metadata !{i64 308, [9 x i8] c"\09jge\09479\00"}
!16 = metadata !{i64 317, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
!17 = metadata !{i64 323, [22 x i8] c"\09movl\09%eax, -32(%rbp)\00"}
!18 = metadata !{i64 340, [22 x i8] c"\09movl\09%eax, -76(%rbp)\00"}
!19 = metadata !{i64 343, [22 x i8] c"\09movl\09%edx, -80(%rbp)\00"}
!20 = metadata !{i64 363, [22 x i8] c"\09movl\09%eax, -84(%rbp)\00"}
!21 = metadata !{i64 383, [22 x i8] c"\09movl\09%eax, -88(%rbp)\00"}
!22 = metadata !{i64 403, [22 x i8] c"\09movl\09%eax, -92(%rbp)\00"}
!23 = metadata !{i64 793, [19 x i8] c"\09movl\09$1, -4(%rbp)\00"}
!24 = metadata !{i64 803, [16 x i8] c"\09addq\09$96, %rsp\00"}
!25 = metadata !{i64 807, [11 x i8] c"\09popq\09%rbp\00"}
!26 = metadata !{i64 808, [6 x i8] c"\09retq\00"}
!27 = metadata !{i64 314, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!28 = metadata !{i64 320, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!29 = metadata !{i64 326, [24 x i8] c"\09movslq\09-36(%rbp), %rcx\00"}
!30 = metadata !{i64 330, [29 x i8] c"\09movsbl\09-64(%rbp,%rcx), %eax\00"}
!31 = metadata !{i64 337, [17 x i8] c"\09subl\09$114, %edx\00"}
!32 = metadata !{i64 397, [22 x i8] c"\09movl\09-76(%rbp), %eax\00"}
!33 = metadata !{i64 346, [7 x i8] c"\09jg\0945\00"}
!34 = metadata !{i64 400, [17 x i8] c"\09subl\09$115, %eax\00"}
!35 = metadata !{i64 406, [7 x i8] c"\09je\0941\00"}
!36 = metadata !{i64 360, [16 x i8] c"\09subl\09$97, %eax\00"}
!37 = metadata !{i64 366, [7 x i8] c"\09je\0997\00"}
!38 = metadata !{i64 453, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!39 = metadata !{i64 461, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!40 = metadata !{i64 464, [8 x i8] c"\09jmp\0944\00"}
!41 = metadata !{i64 469, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!42 = metadata !{i64 477, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!43 = metadata !{i64 480, [8 x i8] c"\09jmp\0928\00"}
!44 = metadata !{i64 417, [22 x i8] c"\09movl\09-76(%rbp), %eax\00"}
!45 = metadata !{i64 420, [17 x i8] c"\09subl\09$119, %eax\00"}
!46 = metadata !{i64 423, [22 x i8] c"\09movl\09%eax, -96(%rbp)\00"}
!47 = metadata !{i64 426, [8 x i8] c"\09jne\0969\00"}
!48 = metadata !{i64 523, [24 x i8] c"\09movslq\09-20(%rbp), %rcx\00"}
!49 = metadata !{i64 527, [24 x i8] c"\09movslq\09-24(%rbp), %rdx\00"}
!50 = metadata !{i64 531, [18 x i8] c"\09imulq\09 $11, %rdx\00"}
!51 = metadata !{i64 541, [26 x i8] c"\09movsbl\09(%rax,%rcx), %esi\00"}
!52 = metadata !{i64 377, [22 x i8] c"\09movl\09-76(%rbp), %eax\00"}
!53 = metadata !{i64 380, [17 x i8] c"\09subl\09$100, %eax\00"}
!54 = metadata !{i64 386, [7 x i8] c"\09je\0993\00"}
!55 = metadata !{i64 501, [19 x i8] c"\09movl\09$1, -4(%rbp)\00"}
!56 = metadata !{i64 508, [9 x i8] c"\09jmp\09287\00"}
!57 = metadata !{i64 557, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!58 = metadata !{i64 564, [9 x i8] c"\09jmp\09231\00"}
!59 = metadata !{i64 485, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!60 = metadata !{i64 493, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!61 = metadata !{i64 496, [8 x i8] c"\09jmp\0912\00"}
!62 = metadata !{i64 437, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!63 = metadata !{i64 445, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!64 = metadata !{i64 448, [8 x i8] c"\09jmp\0960\00"}
!65 = metadata !{i64 708, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!66 = metadata !{i64 714, [8 x i8] c"\09jne\0924\00"}
!67 = metadata !{i64 620, [8 x i8] c"\09jne\0970\00"}
!68 = metadata !{i64 696, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!69 = metadata !{i64 699, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!70 = metadata !{i64 702, [22 x i8] c"\09movl\09-32(%rbp), %eax\00"}
!71 = metadata !{i64 705, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!72 = metadata !{i64 711, [22 x i8] c"\09cmpl\09-20(%rbp), %eax\00"}
!73 = metadata !{i64 754, [24 x i8] c"\09movslq\09-20(%rbp), %rcx\00"}
!74 = metadata !{i64 758, [24 x i8] c"\09movslq\09-24(%rbp), %rdx\00"}
!75 = metadata !{i64 762, [18 x i8] c"\09imulq\09 $11, %rdx\00"}
!76 = metadata !{i64 772, [23 x i8] c"\09movb\09$88, (%rax,%rcx)\00"}
!77 = metadata !{i64 776, [22 x i8] c"\09movl\09-36(%rbp), %esi\00"}
!78 = metadata !{i64 779, [15 x i8] c"\09addl\09$1, %esi\00"}
!79 = metadata !{i64 785, [22 x i8] c"\09movl\09%esi, -36(%rbp)\00"}
!80 = metadata !{i64 720, [22 x i8] c"\09movl\09-32(%rbp), %eax\00"}
!81 = metadata !{i64 726, [8 x i8] c"\09jne\0912\00"}
!82 = metadata !{i64 732, [19 x i8] c"\09movl\09$2, -4(%rbp)\00"}
!83 = metadata !{i64 739, [8 x i8] c"\09jmp\0956\00"}
!84 = metadata !{i64 690, [7 x i8] c"\09jl\0912\00"}
