; ModuleID = 'Output/test_23.clang.opt.bc'
source_filename = "Output/test_23.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [77 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x330 = internal global %0 <{ [77 x i8] c"+-+---+---+| |     |#|| | --+ | || |   | | || +-- | | ||     |   |+-----+---+" }>, align 64

declare x86_64_sysvcc i64 @read(i64 inreg, i64 inreg, i64 inreg) local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) local_unnamed_addr {
driverBlockRaw:
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %1 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %2 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %3 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %4 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %5 = load i64, i64* %RBP.i, align 8, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %6 = bitcast i64* %R10.i to <2 x i64>*
  %7 = load <2 x i64>, <2 x i64>* %6, align 8
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %8 = bitcast i64* %R12.i to <2 x i64>*
  %9 = load <2 x i64>, <2 x i64>* %8, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %10 = bitcast i64* %R14.i to <2 x i64>*
  %11 = load <2 x i64>, <2 x i64>* %10, align 8
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %12 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %13 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !2
  %14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %15 = bitcast x86_fp80* %14 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %15, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %16 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %17 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %18 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %19 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %31 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %32 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %35 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %36 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %37 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %38 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %39 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %40 = bitcast i8* %39 to i64*
  %41 = load i64, i64* %40, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %42 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %43 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %44 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %45 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %46 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %47 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %48 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %49 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %63 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %64 = load <2 x i64>, <2 x i64>* %63, align 8
  %65 = add i64 %4, -8
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !2
  store i64 %5, i64* %66, align 8, !mcsema_real_eip !2
  %67 = add i64 %4, -104
  %68 = add i64 %4, -72, !mcsema_real_eip !3
  %69 = add i64 %4, -12, !mcsema_real_eip !4
  %70 = inttoptr i64 %69 to i32*
  store i32 0, i32* %70, align 4, !mcsema_real_eip !4
  %71 = add i64 %4, -16, !mcsema_real_eip !5
  %72 = trunc i64 %3 to i32, !mcsema_real_eip !5
  %73 = inttoptr i64 %71 to i32*
  store i32 %72, i32* %73, align 4, !mcsema_real_eip !5
  %74 = add i64 %4, -24, !mcsema_real_eip !6
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !6
  store i64 %2, i64* %75, align 8, !mcsema_real_eip !6
  %76 = add i64 %4, -44, !mcsema_real_eip !7
  %77 = inttoptr i64 %76 to i32*
  store i32 0, i32* %77, align 4, !mcsema_real_eip !7
  %78 = add i64 %4, -28, !mcsema_real_eip !8
  %79 = inttoptr i64 %78 to i32*
  store i32 1, i32* %79, align 4, !mcsema_real_eip !8
  %80 = add i64 %4, -32, !mcsema_real_eip !9
  %81 = inttoptr i64 %80 to i32*
  store i32 1, i32* %81, align 4, !mcsema_real_eip !9
  %82 = load i32, i32* %79, align 4, !mcsema_real_eip !10
  %83 = sext i32 %82 to i64, !mcsema_real_eip !10
  %84 = add i64 %83, add (i64 ptrtoint (%0* @data_0x330 to i64), i64 11), !mcsema_real_eip !11
  %85 = inttoptr i64 %84 to i8*
  store i8 88, i8* %85, align 1, !mcsema_real_eip !11
  %86 = tail call x86_64_sysvcc i64 @read(i64 0, i64 %68, i64 28), !mcsema_real_eip !12
  %87 = add i64 %4, -80, !mcsema_real_eip !13
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !13
  store i64 %86, i64* %88, align 8, !mcsema_real_eip !13
  %89 = load i32, i32* %77, align 4, !mcsema_real_eip !14
  %90 = add i32 %89, -28
  %91 = icmp slt i32 %90, 0
  %92 = sub i32 27, %89
  %93 = and i32 %92, %89
  %94 = icmp slt i32 %93, 0
  %tmp102.i = xor i1 %91, %94
  br i1 %tmp102.i, label %block_0x13a.lr.ph.i, label %sub_c0.exit, !mcsema_real_eip !15

block_0x13a.lr.ph.i:                              ; preds = %driverBlockRaw
  %95 = add i64 %4, -36, !mcsema_real_eip !16
  %96 = inttoptr i64 %95 to i32*
  %97 = add i64 %4, -40, !mcsema_real_eip !17
  %98 = inttoptr i64 %97 to i32*
  %99 = add i64 %4, -84, !mcsema_real_eip !18
  %100 = inttoptr i64 %99 to i32*
  %101 = add i64 %4, -88, !mcsema_real_eip !19
  %102 = inttoptr i64 %101 to i32*
  %103 = add i64 %4, -92
  %104 = inttoptr i64 %103 to i32*
  %105 = add i64 %4, -96
  %106 = inttoptr i64 %105 to i32*
  %107 = add i64 %4, -100
  %108 = inttoptr i64 %107 to i32*
  %109 = inttoptr i64 %67 to i32*
  br label %block_0x13a.i

block_0x13a.i:                                    ; preds = %block_0x2e8.i, %block_0x13a.lr.ph.i
  %RSI_val.0103.i = phi i64 [ %68, %block_0x13a.lr.ph.i ], [ %166, %block_0x2e8.i ]
  %110 = load i32, i32* %79, align 4, !mcsema_real_eip !20
  store i32 %110, i32* %96, align 4, !mcsema_real_eip !16
  %111 = load i32, i32* %81, align 4, !mcsema_real_eip !21
  store i32 %111, i32* %98, align 4, !mcsema_real_eip !17
  %112 = load i32, i32* %77, align 4, !mcsema_real_eip !22
  %113 = sext i32 %112 to i64, !mcsema_real_eip !22
  %114 = add i64 %113, %68, !mcsema_real_eip !23
  %115 = inttoptr i64 %114 to i8*
  %116 = load i8, i8* %115, align 1, !mcsema_real_eip !23
  %117 = sext i8 %116 to i32, !mcsema_real_eip !23
  %118 = add nsw i32 %117, -114
  %119 = icmp eq i32 %118, 0, !mcsema_real_eip !24
  %120 = icmp slt i8 %116, 114
  %121 = sub nsw i32 113, %117
  %122 = and i32 %121, %117
  %123 = icmp slt i32 %122, 0
  store i32 %117, i32* %100, align 4, !mcsema_real_eip !18
  store i32 %118, i32* %102, align 4, !mcsema_real_eip !19
  %tmp71.i = xor i1 %120, %123
  %.demorgan.i = or i1 %119, %tmp71.i
  %124 = load i32, i32* %100, align 4, !mcsema_real_eip !25
  br i1 %.demorgan.i, label %block_0x165.i, label %block_0x18d.i, !mcsema_real_eip !26

block_0x2d0.block_0x320_crit_edge.i:              ; preds = %block_0x2d0.i
  %125 = sext i8 %144 to i64
  %126 = and i64 %125, 4294967295
  br label %sub_c0.exit

block_0x1a1.block_0x320_crit_edge.i:              ; preds = %block_0x1a1.i
  %127 = zext i32 %118 to i64, !mcsema_real_eip !24
  br label %sub_c0.exit

block_0x179.block_0x320_crit_edge.i:              ; preds = %block_0x179.i
  %128 = zext i32 %118 to i64, !mcsema_real_eip !24
  br label %sub_c0.exit

block_0x18d.i:                                    ; preds = %block_0x13a.i
  %129 = add i32 %124, -115
  %130 = icmp eq i32 %129, 0, !mcsema_real_eip !27
  store i32 %129, i32* %108, align 4, !mcsema_real_eip !28
  br i1 %130, label %block_0x201.i, label %block_0x1a1.i, !mcsema_real_eip !29

block_0x165.i:                                    ; preds = %block_0x13a.i
  %131 = add i32 %124, -97
  %132 = icmp eq i32 %131, 0, !mcsema_real_eip !30
  store i32 %131, i32* %104, align 4, !mcsema_real_eip !31
  br i1 %132, label %block_0x201.i, label %block_0x179.i, !mcsema_real_eip !32

block_0x201.i:                                    ; preds = %block_0x179.i, %block_0x1a1.i, %block_0x165.i, %block_0x18d.i
  %.sink100.i = phi i32* [ %79, %block_0x165.i ], [ %81, %block_0x1a1.i ], [ %79, %block_0x179.i ], [ %81, %block_0x18d.i ]
  %.sink99.i = phi i32 [ -1, %block_0x165.i ], [ -1, %block_0x1a1.i ], [ 1, %block_0x179.i ], [ 1, %block_0x18d.i ]
  %.sink8.i = phi i64 [ %78, %block_0x165.i ], [ %80, %block_0x1a1.i ], [ %78, %block_0x179.i ], [ %80, %block_0x18d.i ]
  %133 = load i32, i32* %.sink100.i, align 4
  %134 = add i32 %133, %.sink99.i
  %135 = inttoptr i64 %.sink8.i to i32*
  store i32 %134, i32* %135, align 4
  %136 = load i32, i32* %79, align 4, !mcsema_real_eip !33
  %137 = sext i32 %136 to i64, !mcsema_real_eip !33
  %138 = load i32, i32* %81, align 4, !mcsema_real_eip !34
  %139 = sext i32 %138 to i64, !mcsema_real_eip !34
  %140 = mul nsw i64 %139, 11, !mcsema_real_eip !35
  %141 = add i64 %137, ptrtoint (%0* @data_0x330 to i64)
  %142 = add i64 %141, %140, !mcsema_real_eip !36
  %143 = inttoptr i64 %142 to i8*
  %144 = load i8, i8* %143, align 1, !mcsema_real_eip !36
  switch i8 %144, label %block_0x265.i [
    i8 35, label %sub_c0.exit.loopexit
    i8 32, label %block_0x2c4.i
  ]

block_0x1a1.i:                                    ; preds = %block_0x18d.i
  %145 = load i32, i32* %100, align 4, !mcsema_real_eip !37
  %146 = add i32 %145, -119
  %147 = icmp eq i32 %146, 0, !mcsema_real_eip !38
  store i32 %146, i32* %109, align 4, !mcsema_real_eip !39
  br i1 %147, label %block_0x201.i, label %block_0x1a1.block_0x320_crit_edge.i, !mcsema_real_eip !40

block_0x179.i:                                    ; preds = %block_0x165.i
  %148 = load i32, i32* %100, align 4, !mcsema_real_eip !41
  %149 = add i32 %148, -100
  %150 = icmp eq i32 %149, 0, !mcsema_real_eip !42
  store i32 %149, i32* %106, align 4, !mcsema_real_eip !43
  br i1 %150, label %block_0x201.i, label %block_0x179.block_0x320_crit_edge.i, !mcsema_real_eip !44

block_0x265.i:                                    ; preds = %block_0x201.i
  %notlhs.i = icmp ne i32 %138, 2
  %notrhs.i = icmp ne i8 %144, 124
  %or.cond.not.i = or i1 %notlhs.i, %notrhs.i
  %151 = icmp slt i32 %136, 1
  %or.cond101.i = or i1 %151, %or.cond.not.i
  br i1 %or.cond101.i, label %block_0x2b8.i, label %block_0x2ab.i, !mcsema_real_eip !45

block_0x2c4.i:                                    ; preds = %block_0x2ab.i, %block_0x2b8.i, %block_0x201.i
  %152 = phi i32 [ %138, %block_0x201.i ], [ 2, %block_0x2ab.i ], [ %173, %block_0x2b8.i ]
  %153 = phi i32 [ %136, %block_0x201.i ], [ %136, %block_0x2ab.i ], [ %.pre.i, %block_0x2b8.i ]
  %154 = load i32, i32* %96, align 4, !mcsema_real_eip !46
  %155 = icmp eq i32 %154, %153
  br i1 %155, label %block_0x2d0.i, label %block_0x2e8.i, !mcsema_real_eip !47

block_0x2d0.i:                                    ; preds = %block_0x2c4.i
  %156 = load i32, i32* %98, align 4, !mcsema_real_eip !48
  %157 = icmp eq i32 %156, %152
  br i1 %157, label %block_0x2d0.block_0x320_crit_edge.i, label %block_0x2e8.i, !mcsema_real_eip !49

block_0x2e8.i:                                    ; preds = %block_0x2d0.i, %block_0x2c4.i
  %158 = sext i32 %153 to i64, !mcsema_real_eip !50
  %159 = sext i32 %152 to i64, !mcsema_real_eip !51
  %160 = mul nsw i64 %159, 11, !mcsema_real_eip !52
  %161 = add i64 %158, ptrtoint (%0* @data_0x330 to i64)
  %162 = add i64 %161, %160, !mcsema_real_eip !53
  %163 = inttoptr i64 %162 to i8*
  store i8 88, i8* %163, align 1, !mcsema_real_eip !53
  %164 = load i32, i32* %77, align 4, !mcsema_real_eip !54
  %165 = add i32 %164, 1
  %166 = zext i32 %165 to i64, !mcsema_real_eip !55
  store i32 %165, i32* %77, align 4, !mcsema_real_eip !56
  %167 = add i32 %164, -27
  %168 = icmp slt i32 %167, 0
  %169 = sub i32 26, %164
  %170 = and i32 %169, %165
  %171 = icmp slt i32 %170, 0
  %tmp.i = xor i1 %168, %171
  br i1 %tmp.i, label %block_0x13a.i, label %sub_c0.exit.loopexit, !mcsema_real_eip !15

block_0x2b8.i:                                    ; preds = %block_0x2ab.i, %block_0x265.i
  %172 = load i32, i32* %96, align 4, !mcsema_real_eip !57
  store i32 %172, i32* %79, align 4, !mcsema_real_eip !58
  %173 = load i32, i32* %98, align 4, !mcsema_real_eip !59
  store i32 %173, i32* %81, align 4, !mcsema_real_eip !60
  %.pre.i = load i32, i32* %79, align 4
  br label %block_0x2c4.i, !mcsema_real_eip !61

block_0x2ab.i:                                    ; preds = %block_0x265.i
  %174 = add i32 %136, -11
  %175 = icmp slt i32 %174, 0
  %176 = sub i32 10, %136
  %177 = and i32 %176, %136
  %178 = icmp slt i32 %177, 0
  %179 = xor i1 %175, %178
  br i1 %179, label %block_0x2c4.i, label %block_0x2b8.i, !mcsema_real_eip !62

sub_c0.exit.loopexit:                             ; preds = %block_0x2e8.i, %block_0x201.i
  %RSI_val.1.i.ph = phi i64 [ 35, %block_0x201.i ], [ %166, %block_0x2e8.i ]
  %RDX_val.1.i.ph = phi i64 [ %140, %block_0x201.i ], [ %160, %block_0x2e8.i ]
  %RCX_val.1.i.ph = phi i64 [ %137, %block_0x201.i ], [ %158, %block_0x2e8.i ]
  %.sink.i.ph = phi i32 [ 0, %block_0x201.i ], [ 1, %block_0x2e8.i ]
  br label %sub_c0.exit

sub_c0.exit:                                      ; preds = %sub_c0.exit.loopexit, %driverBlockRaw, %block_0x2d0.block_0x320_crit_edge.i, %block_0x1a1.block_0x320_crit_edge.i, %block_0x179.block_0x320_crit_edge.i
  %RSI_val.1.i = phi i64 [ %RSI_val.0103.i, %block_0x179.block_0x320_crit_edge.i ], [ %RSI_val.0103.i, %block_0x1a1.block_0x320_crit_edge.i ], [ %126, %block_0x2d0.block_0x320_crit_edge.i ], [ %68, %driverBlockRaw ], [ %RSI_val.1.i.ph, %sub_c0.exit.loopexit ]
  %RDX_val.1.i = phi i64 [ %128, %block_0x179.block_0x320_crit_edge.i ], [ %127, %block_0x1a1.block_0x320_crit_edge.i ], [ %140, %block_0x2d0.block_0x320_crit_edge.i ], [ 28, %driverBlockRaw ], [ %RDX_val.1.i.ph, %sub_c0.exit.loopexit ]
  %RCX_val.1.i = phi i64 [ %113, %block_0x179.block_0x320_crit_edge.i ], [ %113, %block_0x1a1.block_0x320_crit_edge.i ], [ %137, %block_0x2d0.block_0x320_crit_edge.i ], [ %68, %driverBlockRaw ], [ %RCX_val.1.i.ph, %sub_c0.exit.loopexit ]
  %.sink.i = phi i32 [ 1, %block_0x179.block_0x320_crit_edge.i ], [ 1, %block_0x1a1.block_0x320_crit_edge.i ], [ 2, %block_0x2d0.block_0x320_crit_edge.i ], [ 1, %driverBlockRaw ], [ %.sink.i.ph, %sub_c0.exit.loopexit ]
  store i32 %.sink.i, i32* %70, align 4
  %180 = zext i32 %.sink.i to i64, !mcsema_real_eip !63
  %uadd73.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %67, i64 96)
  %181 = extractvalue { i64, i1 } %uadd73.i, 0
  %182 = xor i64 %181, %67, !mcsema_real_eip !64
  %183 = and i64 %182, 16, !mcsema_real_eip !64
  %184 = icmp ne i64 %183, 0, !mcsema_real_eip !64
  %185 = icmp slt i64 %181, 0
  %186 = icmp eq i64 %181, 0, !mcsema_real_eip !64
  %187 = add i64 %4, 9223372036854775704
  %188 = and i64 %182, %187, !mcsema_real_eip !64
  %189 = icmp slt i64 %188, 0
  %190 = trunc i64 %181 to i8, !mcsema_real_eip !64
  %191 = tail call i8 @llvm.ctpop.i8(i8 %190), !mcsema_real_eip !64
  %192 = and i8 %191, 1
  %193 = icmp eq i8 %192, 0
  %194 = extractvalue { i64, i1 } %uadd73.i, 1
  %195 = inttoptr i64 %181 to i64*, !mcsema_real_eip !65
  %196 = load i64, i64* %195, align 8, !mcsema_real_eip !65
  %197 = add i64 %181, 16, !mcsema_real_eip !66
  store i64 %180, i64* %RAX.i, align 8, !mcsema_real_eip !66
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !66
  store i64 %RCX_val.1.i, i64* %RCX.i, align 8, !mcsema_real_eip !66
  store i64 %RDX_val.1.i, i64* %RDX.i, align 8, !mcsema_real_eip !66
  store i64 %RSI_val.1.i, i64* %RSI.i, align 8, !mcsema_real_eip !66
  store i64 0, i64* %RDI.i, align 8, !mcsema_real_eip !66
  store i64 %197, i64* %RSP.i, align 8, !mcsema_real_eip !66
  store i64 %196, i64* %RBP.i, align 8, !mcsema_real_eip !66
  %198 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 add (i64 ptrtoint (%0* @data_0x330 to i64), i64 11), i64 11>, <2 x i64>* %198, align 8
  %199 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> %7, <2 x i64>* %199, align 8
  %200 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %200, align 8
  %201 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %201, align 8
  store i64 %12, i64* %RIP.i, align 8, !mcsema_real_eip !66
  store i1 %194, i1* %CF.i, align 1, !mcsema_real_eip !66
  store i1 %193, i1* %PF.i, align 1, !mcsema_real_eip !66
  store i1 %184, i1* %AF.i, align 1, !mcsema_real_eip !66
  store i1 %186, i1* %ZF.i, align 1, !mcsema_real_eip !66
  store i1 %185, i1* %SF.i, align 1, !mcsema_real_eip !66
  store i1 %189, i1* %OF.i, align 1, !mcsema_real_eip !66
  store i1 %13, i1* %DF.i, align 1, !mcsema_real_eip !66
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !66
  store i1 %16, i1* %FPU_B.i, align 1, !mcsema_real_eip !66
  store i1 %17, i1* %FPU_C3.i, align 1, !mcsema_real_eip !66
  store i3 %18, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !66
  store i1 %19, i1* %FPU_C2.i, align 1, !mcsema_real_eip !66
  store i1 %20, i1* %FPU_C1.i, align 1, !mcsema_real_eip !66
  store i1 %21, i1* %FPU_C0.i, align 1, !mcsema_real_eip !66
  store i1 %22, i1* %FPU_ES.i, align 1, !mcsema_real_eip !66
  store i1 %23, i1* %FPU_SF.i, align 1, !mcsema_real_eip !66
  store i1 %24, i1* %FPU_PE.i, align 1, !mcsema_real_eip !66
  store i1 %25, i1* %FPU_UE.i, align 1, !mcsema_real_eip !66
  store i1 %26, i1* %FPU_OE.i, align 1, !mcsema_real_eip !66
  store i1 %27, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !66
  store i1 %28, i1* %FPU_DE.i, align 1, !mcsema_real_eip !66
  store i1 %29, i1* %FPU_IE.i, align 1, !mcsema_real_eip !66
  store i1 %30, i1* %FPU_X.i, align 1, !mcsema_real_eip !66
  store i2 %31, i2* %FPU_RC.i, align 1, !mcsema_real_eip !66
  store i2 %32, i2* %FPU_PC.i, align 1, !mcsema_real_eip !66
  store i1 %33, i1* %FPU_PM.i, align 1, !mcsema_real_eip !66
  store i1 %34, i1* %FPU_UM.i, align 1, !mcsema_real_eip !66
  store i1 %35, i1* %FPU_OM.i, align 1, !mcsema_real_eip !66
  store i1 %36, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !66
  store i1 %37, i1* %FPU_DM.i, align 1, !mcsema_real_eip !66
  store i1 %38, i1* %FPU_IM.i, align 1, !mcsema_real_eip !66
  store i64 %41, i64* %40, align 4
  store i16 %42, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !66
  store i64 %43, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !66
  store i16 %44, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !66
  store i64 %45, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !66
  store i11 %46, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !66
  store i128 %47, i128* %XMM0.i, align 1, !mcsema_real_eip !66
  store i128 %48, i128* %XMM1.i, align 1, !mcsema_real_eip !66
  store i128 %49, i128* %XMM2.i, align 1, !mcsema_real_eip !66
  store i128 %50, i128* %XMM3.i, align 1, !mcsema_real_eip !66
  store i128 %51, i128* %XMM4.i, align 1, !mcsema_real_eip !66
  store i128 %52, i128* %XMM5.i, align 1, !mcsema_real_eip !66
  store i128 %53, i128* %XMM6.i, align 1, !mcsema_real_eip !66
  store i128 %54, i128* %XMM7.i, align 1, !mcsema_real_eip !66
  store i128 %55, i128* %XMM8.i, align 1, !mcsema_real_eip !66
  store i128 %56, i128* %XMM9.i, align 1, !mcsema_real_eip !66
  store i128 %57, i128* %XMM10.i, align 1, !mcsema_real_eip !66
  store i128 %58, i128* %XMM11.i, align 1, !mcsema_real_eip !66
  store i128 %59, i128* %XMM12.i, align 1, !mcsema_real_eip !66
  store i128 %60, i128* %XMM13.i, align 1, !mcsema_real_eip !66
  store i128 %61, i128* %XMM14.i, align 1, !mcsema_real_eip !66
  store i128 %62, i128* %XMM15.i, align 1, !mcsema_real_eip !66
  %202 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %64, <2 x i64>* %202, align 1
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #0

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 192}
!3 = !{i64 215}
!4 = !{i64 229}
!5 = !{i64 236}
!6 = !{i64 239}
!7 = !{i64 243}
!8 = !{i64 250}
!9 = !{i64 257}
!10 = !{i64 264}
!11 = !{i64 282}
!12 = !{i64 292}
!13 = !{i64 297}
!14 = !{i64 301}
!15 = !{i64 308}
!16 = !{i64 317}
!17 = !{i64 323}
!18 = !{i64 340}
!19 = !{i64 343}
!20 = !{i64 314}
!21 = !{i64 320}
!22 = !{i64 326}
!23 = !{i64 330}
!24 = !{i64 337}
!25 = !{i64 397}
!26 = !{i64 346}
!27 = !{i64 400}
!28 = !{i64 403}
!29 = !{i64 406}
!30 = !{i64 360}
!31 = !{i64 363}
!32 = !{i64 366}
!33 = !{i64 523}
!34 = !{i64 527}
!35 = !{i64 531}
!36 = !{i64 541}
!37 = !{i64 417}
!38 = !{i64 420}
!39 = !{i64 423}
!40 = !{i64 426}
!41 = !{i64 377}
!42 = !{i64 380}
!43 = !{i64 383}
!44 = !{i64 386}
!45 = !{i64 620}
!46 = !{i64 708}
!47 = !{i64 714}
!48 = !{i64 720}
!49 = !{i64 726}
!50 = !{i64 754}
!51 = !{i64 758}
!52 = !{i64 762}
!53 = !{i64 772}
!54 = !{i64 776}
!55 = !{i64 779}
!56 = !{i64 785}
!57 = !{i64 696}
!58 = !{i64 699}
!59 = !{i64 702}
!60 = !{i64 705}
!61 = !{i64 626}
!62 = !{i64 690}
!63 = !{i64 800}
!64 = !{i64 803}
!65 = !{i64 807}
!66 = !{i64 808}
