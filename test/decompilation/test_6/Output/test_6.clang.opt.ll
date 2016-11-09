; ModuleID = 'Output/test_6.clang.opt.bc'
source_filename = "Output/test_6.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

declare x86_64_sysvcc i64 @malloc(i64 inreg) local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) local_unnamed_addr {
driverBlockRaw:
  %STi_val.i.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !3
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !3
  %1 = load i64, i64* %RBX.i, align 8
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !3
  %2 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !3
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !3
  %3 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !3
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !3
  %4 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !3
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !3
  %5 = load i64, i64* %RBP.i, align 8, !mcsema_real_eip !3
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !3
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %6 = load i64, i64* %R12.i, align 8
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !3
  %7 = load i64, i64* %R13.i, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %8 = load i64, i64* %R14.i, align 8
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !3
  %9 = load i64, i64* %R15.i, align 8
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %10 = load i64, i64* %RIP.i, align 8
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !3
  %11 = load i1, i1* %DF.i, align 1
  %12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !3
  %13 = bitcast x86_fp80* %12 to i8*, !mcsema_real_eip !3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %13, i32 128, i32 4, i1 false), !mcsema_real_eip !3
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !3
  %14 = load i1, i1* %FPU_B.i, align 1
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !3
  %15 = load i1, i1* %FPU_C3.i, align 1
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !3
  %16 = load i3, i3* %FPU_TOP.i, align 1
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !3
  %17 = load i1, i1* %FPU_C2.i, align 1
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !3
  %18 = load i1, i1* %FPU_C1.i, align 1
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !3
  %19 = load i1, i1* %FPU_C0.i, align 1
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !3
  %20 = load i1, i1* %FPU_ES.i, align 1
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !3
  %21 = load i1, i1* %FPU_SF.i, align 1
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !3
  %22 = load i1, i1* %FPU_PE.i, align 1
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !3
  %23 = load i1, i1* %FPU_UE.i, align 1
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !3
  %24 = load i1, i1* %FPU_OE.i, align 1
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !3
  %25 = load i1, i1* %FPU_ZE.i, align 1
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !3
  %26 = load i1, i1* %FPU_DE.i, align 1
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !3
  %27 = load i1, i1* %FPU_IE.i, align 1
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !3
  %28 = load i1, i1* %FPU_X.i, align 1
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !3
  %29 = load i2, i2* %FPU_RC.i, align 1
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !3
  %30 = load i2, i2* %FPU_PC.i, align 1
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !3
  %31 = load i1, i1* %FPU_PM.i, align 1
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !3
  %32 = load i1, i1* %FPU_UM.i, align 1
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !3
  %33 = load i1, i1* %FPU_OM.i, align 1
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !3
  %34 = load i1, i1* %FPU_ZM.i, align 1
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !3
  %35 = load i1, i1* %FPU_DM.i, align 1
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !3
  %36 = load i1, i1* %FPU_IM.i, align 1
  %37 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !3
  %38 = bitcast i8* %37 to i64*
  %39 = load i64, i64* %38, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !3
  %40 = load i16, i16* %FPU_LASTIP_SEG.i, align 1
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !3
  %41 = load i64, i64* %FPU_LASTIP_OFF.i, align 8
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !3
  %42 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !3
  %43 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !3
  %44 = load i11, i11* %FPU_FOPCODE.i, align 1
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %45 = load i128, i128* %XMM0.i, align 1
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %46 = load i128, i128* %XMM1.i, align 1
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %47 = load i128, i128* %XMM2.i, align 1
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %48 = load i128, i128* %XMM3.i, align 1
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %49 = load i128, i128* %XMM4.i, align 1
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %50 = load i128, i128* %XMM5.i, align 1
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %51 = load i128, i128* %XMM6.i, align 1
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %52 = load i128, i128* %XMM7.i, align 1
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %53 = load i128, i128* %XMM8.i, align 1
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %54 = load i128, i128* %XMM9.i, align 1
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %55 = load i128, i128* %XMM10.i, align 1
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %56 = load i128, i128* %XMM11.i, align 1
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %57 = load i128, i128* %XMM12.i, align 1
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %58 = load i128, i128* %XMM13.i, align 1
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %59 = load i128, i128* %XMM14.i, align 1
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %60 = load i128, i128* %XMM15.i, align 1
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %61 = load i64, i64* %STACK_BASE.i, align 8
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %62 = load i64, i64* %STACK_LIMIT.i, align 8
  %63 = add i64 %4, -8
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !3
  store i64 %5, i64* %64, align 8, !mcsema_real_eip !3
  %65 = add i64 %4, -12, !mcsema_real_eip !4
  %66 = inttoptr i64 %65 to i32*
  store i32 0, i32* %66, align 4, !mcsema_real_eip !4
  %67 = add i64 %4, -16, !mcsema_real_eip !5
  %68 = trunc i64 %3 to i32, !mcsema_real_eip !5
  %69 = inttoptr i64 %67 to i32*
  store i32 %68, i32* %69, align 4, !mcsema_real_eip !5
  %70 = add i64 %4, -24, !mcsema_real_eip !6
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !6
  store i64 %2, i64* %71, align 8, !mcsema_real_eip !6
  %72 = tail call x86_64_sysvcc i64 @malloc(i64 40), !mcsema_real_eip !7
  %73 = add i64 %4, -32, !mcsema_real_eip !8
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !8
  store i64 %72, i64* %74, align 8, !mcsema_real_eip !8
  %75 = tail call x86_64_sysvcc i64 @malloc(i64 40), !mcsema_real_eip !9
  %76 = add i64 %4, -40, !mcsema_real_eip !10
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !10
  store i64 %75, i64* %77, align 8, !mcsema_real_eip !10
  %78 = add i64 %4, -44
  %79 = inttoptr i64 %78 to i32*
  store i32 0, i32* %79, align 4
  br label %block_0xf3.i

block_0x122.preheader.i:                          ; preds = %block_0xf3.i
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !3
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !3
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !3
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %80 = add i64 %4, -48
  %81 = inttoptr i64 %80 to i32*
  store i32 0, i32* %81, align 4
  %82 = load i64, i64* %77, align 8
  br label %block_0x12f.i

block_0xf3.i:                                     ; preds = %block_0xf3.i, %driverBlockRaw
  %.sink127.i = phi i32 [ 0, %driverBlockRaw ], [ %90, %block_0xf3.i ]
  %83 = add i32 %.sink127.i, 11
  %84 = sext i32 %.sink127.i to i64, !mcsema_real_eip !11
  %85 = load i64, i64* %74, align 8, !mcsema_real_eip !12
  %86 = shl nsw i64 %84, 2
  %87 = add i64 %86, %85, !mcsema_real_eip !13
  %88 = inttoptr i64 %87 to i32*
  store i32 %83, i32* %88, align 4, !mcsema_real_eip !13
  %89 = load i32, i32* %79, align 4, !mcsema_real_eip !14
  %90 = add i32 %89, 1
  store i32 %90, i32* %79, align 4
  %91 = add i32 %89, -9
  %92 = icmp slt i32 %91, 0
  %93 = sub i32 8, %89
  %94 = and i32 %93, %90
  %95 = icmp slt i32 %94, 0
  %tmp.i = xor i1 %92, %95
  br i1 %tmp.i, label %block_0xf3.i, label %block_0x122.preheader.i, !mcsema_real_eip !15

block_0x12f.i:                                    ; preds = %block_0x12f.i, %block_0x122.preheader.i
  %96 = phi i64 [ %82, %block_0x122.preheader.i ], [ %109, %block_0x12f.i ]
  %.sink5126.i = phi i32 [ 0, %block_0x122.preheader.i ], [ %103, %block_0x12f.i ]
  %97 = add i32 %.sink5126.i, 1
  %98 = sext i32 %.sink5126.i to i64, !mcsema_real_eip !16
  %99 = shl nsw i64 %98, 2
  %100 = add i64 %99, %96, !mcsema_real_eip !17
  %101 = inttoptr i64 %100 to i32*
  store i32 %97, i32* %101, align 4, !mcsema_real_eip !17
  %102 = load i32, i32* %81, align 4, !mcsema_real_eip !18
  %103 = add i32 %102, 1
  store i32 %103, i32* %81, align 4
  %104 = add i32 %102, -9
  %105 = xor i32 %104, %103, !mcsema_real_eip !19
  %106 = icmp slt i32 %104, 0
  %107 = and i32 %105, %103, !mcsema_real_eip !19
  %108 = icmp slt i32 %107, 0
  %tmp213.i = xor i1 %106, %108
  %109 = load i64, i64* %77, align 8
  br i1 %tmp213.i, label %block_0x12f.i, label %block_0x152.i, !mcsema_real_eip !20

block_0x152.i:                                    ; preds = %block_0x12f.i
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !3
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %110 = add i64 %4, -88
  %111 = icmp ult i32 %103, 10, !mcsema_real_eip !19
  %112 = icmp eq i32 %104, 0, !mcsema_real_eip !19
  %113 = trunc i32 %104 to i8, !mcsema_real_eip !19
  %114 = tail call i8 @llvm.ctpop.i8(i8 %113), !mcsema_real_eip !19
  %115 = and i8 %114, 1
  %116 = icmp eq i8 %115, 0
  %117 = and i32 %105, 16, !mcsema_real_eip !19
  %118 = icmp ne i32 %117, 0, !mcsema_real_eip !19
  %119 = load i64, i64* %74, align 8, !mcsema_real_eip !21
  %120 = inttoptr i64 %110 to i32*
  store i32 10, i32* %120, align 4, !mcsema_real_eip !22
  %121 = add i64 %4, -80, !mcsema_real_eip !23
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !23
  store i64 %119, i64* %122, align 8, !mcsema_real_eip !23
  %123 = add i64 %4, -72, !mcsema_real_eip !24
  %124 = inttoptr i64 %123 to i32*
  store i32 10, i32* %124, align 4, !mcsema_real_eip !24
  %125 = add i64 %4, -64, !mcsema_real_eip !25
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !25
  store i64 %109, i64* %126, align 8, !mcsema_real_eip !25
  %127 = add i64 %4, -52, !mcsema_real_eip !26
  %128 = inttoptr i64 %127 to i32*
  store i32 10, i32* %128, align 4, !mcsema_real_eip !26
  %129 = add i64 %4, -96
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !27
  store i64 -4981261766360305936, i64* %130, align 8, !mcsema_real_eip !27
  store i64 10, i64* %RAX.i, align 8, !mcsema_real_eip !27
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !27
  %131 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> <i64 400, i64 300>, <2 x i64>* %131, align 8
  %132 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 200, i64 100>, <2 x i64>* %132, align 8
  store i64 %129, i64* %RSP.i, align 8, !mcsema_real_eip !27
  store i64 %63, i64* %RBP.i, align 8, !mcsema_real_eip !27
  %133 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 500, i64 600>, <2 x i64>* %133, align 8
  store i64 %119, i64* %R10.i, align 8, !mcsema_real_eip !27
  store i64 %109, i64* %R11.i, align 8, !mcsema_real_eip !27
  store i64 %6, i64* %R12.i, align 8, !mcsema_real_eip !27
  store i64 %7, i64* %R13.i, align 8, !mcsema_real_eip !27
  store i64 %8, i64* %R14.i, align 8, !mcsema_real_eip !27
  store i64 %9, i64* %R15.i, align 8, !mcsema_real_eip !27
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !27
  store i1 %111, i1* %CF.i, align 1, !mcsema_real_eip !27
  store i1 %116, i1* %PF.i, align 1, !mcsema_real_eip !27
  store i1 %118, i1* %AF.i, align 1, !mcsema_real_eip !27
  store i1 %112, i1* %ZF.i, align 1, !mcsema_real_eip !27
  store i1 %106, i1* %SF.i, align 1, !mcsema_real_eip !27
  store i1 %108, i1* %OF.i, align 1, !mcsema_real_eip !27
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !27
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
  store i11 %44, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !27
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
  store i64 %61, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !27
  store i64 %62, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !27
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast.i, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false)
  %134 = add i64 %4, -104
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !2
  store i64 %63, i64* %135, align 8, !mcsema_real_eip !2
  %136 = add i64 %4, -112
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !28
  store i64 %1, i64* %137, align 8, !mcsema_real_eip !28
  %138 = load i64, i64* %126, align 8, !mcsema_real_eip !29
  %139 = load i32, i32* %124, align 4, !mcsema_real_eip !30
  %140 = zext i32 %139 to i64
  %141 = load i64, i64* %122, align 8
  %142 = load i32, i32* %120, align 4, !mcsema_real_eip !31
  %143 = add i64 %4, -116, !mcsema_real_eip !32
  %144 = inttoptr i64 %143 to i32*
  store i32 100, i32* %144, align 4, !mcsema_real_eip !32
  %145 = add i64 %4, -120, !mcsema_real_eip !33
  %146 = inttoptr i64 %145 to i32*
  store i32 200, i32* %146, align 4, !mcsema_real_eip !33
  %147 = add i64 %4, -124, !mcsema_real_eip !34
  %148 = inttoptr i64 %147 to i32*
  store i32 300, i32* %148, align 4, !mcsema_real_eip !34
  %149 = add i64 %4, -128, !mcsema_real_eip !35
  %150 = inttoptr i64 %149 to i32*
  store i32 400, i32* %150, align 4, !mcsema_real_eip !35
  %151 = add i64 %4, -132, !mcsema_real_eip !36
  %152 = inttoptr i64 %151 to i32*
  store i32 500, i32* %152, align 4, !mcsema_real_eip !36
  %153 = add i64 %4, -136, !mcsema_real_eip !37
  %154 = inttoptr i64 %153 to i32*
  store i32 600, i32* %154, align 4, !mcsema_real_eip !37
  %155 = add i64 %4, -140, !mcsema_real_eip !38
  %156 = inttoptr i64 %155 to i32*
  store i32 %142, i32* %156, align 4, !mcsema_real_eip !38
  %157 = add i64 %4, -152, !mcsema_real_eip !39
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !39
  store i64 %141, i64* %158, align 8, !mcsema_real_eip !39
  %159 = add i64 %4, -156, !mcsema_real_eip !40
  %160 = inttoptr i64 %159 to i32*
  store i32 %139, i32* %160, align 4, !mcsema_real_eip !40
  %161 = add i64 %4, -168, !mcsema_real_eip !41
  %162 = inttoptr i64 %161 to i64*, !mcsema_real_eip !41
  store i64 %138, i64* %162, align 8, !mcsema_real_eip !41
  %163 = add i64 %4, -172, !mcsema_real_eip !42
  %164 = inttoptr i64 %163 to i32*
  store i32 0, i32* %164, align 4, !mcsema_real_eip !42
  %165 = add i64 %4, -176
  %166 = inttoptr i64 %165 to i32*
  store i32 0, i32* %166, align 4
  %167 = load i32, i32* %156, align 4, !mcsema_real_eip !43
  %168 = sub i32 0, %167, !mcsema_real_eip !43
  %169 = icmp slt i32 %168, 0
  %170 = and i32 %167, %168, !mcsema_real_eip !43
  %171 = icmp slt i32 %170, 0
  %tmp52.i.i = xor i1 %169, %171
  %172 = load i32, i32* %164, align 4
  br i1 %tmp52.i.i, label %block_0x51.i.i.preheader, label %sub_a0.exit, !mcsema_real_eip !44

block_0x51.i.i.preheader:                         ; preds = %block_0x152.i
  br label %block_0x51.i.i

block_0x51.i.i:                                   ; preds = %block_0x51.i.i.preheader, %block_0x51.i.i
  %173 = phi i32 [ %195, %block_0x51.i.i ], [ %172, %block_0x51.i.i.preheader ]
  %.sink53.i.i = phi i32 [ %187, %block_0x51.i.i ], [ 0, %block_0x51.i.i.preheader ]
  %174 = sext i32 %.sink53.i.i to i64, !mcsema_real_eip !45
  %175 = load i64, i64* %158, align 8, !mcsema_real_eip !46
  %176 = shl nsw i64 %174, 2
  %177 = add i64 %176, %175, !mcsema_real_eip !47
  %178 = inttoptr i64 %177 to i32*
  %179 = load i32, i32* %178, align 4, !mcsema_real_eip !47
  %180 = load i64, i64* %162, align 8, !mcsema_real_eip !48
  %181 = add i64 %180, %176, !mcsema_real_eip !49
  %182 = inttoptr i64 %181 to i32*
  %183 = load i32, i32* %182, align 4, !mcsema_real_eip !49
  %184 = sub i32 %179, %183, !mcsema_real_eip !49
  %185 = add i32 %184, %173
  store i32 %185, i32* %164, align 4, !mcsema_real_eip !50
  %186 = load i32, i32* %166, align 4, !mcsema_real_eip !51
  %187 = add i32 %186, 1
  store i32 %187, i32* %166, align 4
  %188 = load i32, i32* %156, align 4, !mcsema_real_eip !43
  %189 = sub i32 %187, %188, !mcsema_real_eip !43
  %190 = xor i32 %189, %187, !mcsema_real_eip !43
  %191 = icmp slt i32 %189, 0
  %192 = xor i32 %188, %187, !mcsema_real_eip !43
  %193 = and i32 %190, %192, !mcsema_real_eip !43
  %194 = icmp slt i32 %193, 0
  %tmp.i.i = xor i1 %191, %194
  %195 = load i32, i32* %164, align 4
  br i1 %tmp.i.i, label %block_0x51.i.i, label %block_0x45.block_0x7f_crit_edge.i.i, !mcsema_real_eip !44

block_0x45.block_0x7f_crit_edge.i.i:              ; preds = %block_0x51.i.i
  %196 = zext i32 %184 to i64, !mcsema_real_eip !49
  %197 = zext i32 %185 to i64, !mcsema_real_eip !52
  br label %sub_a0.exit

sub_a0.exit:                                      ; preds = %block_0x152.i, %block_0x45.block_0x7f_crit_edge.i.i
  %RSI_val.0.lcssa.i.i = phi i64 [ %197, %block_0x45.block_0x7f_crit_edge.i.i ], [ 200, %block_0x152.i ]
  %RDX_val.0.lcssa.i.i = phi i64 [ %196, %block_0x45.block_0x7f_crit_edge.i.i ], [ 300, %block_0x152.i ]
  %.lcssa.i.i = phi i32 [ %195, %block_0x45.block_0x7f_crit_edge.i.i ], [ %172, %block_0x152.i ]
  %198 = load i32, i32* %144, align 4, !mcsema_real_eip !53
  %199 = load i32, i32* %146, align 4, !mcsema_real_eip !54
  %200 = add i32 %199, %198
  %201 = load i32, i32* %148, align 4, !mcsema_real_eip !55
  %202 = add i32 %200, %201
  %203 = load i32, i32* %150, align 4, !mcsema_real_eip !56
  %204 = add i32 %202, %203
  %205 = load i32, i32* %152, align 4, !mcsema_real_eip !57
  %206 = add i32 %204, %205
  %207 = load i32, i32* %154, align 4, !mcsema_real_eip !58
  %uadd76.i.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %206, i32 %207) #2
  %208 = extractvalue { i32, i1 } %uadd76.i.i, 0
  %209 = xor i32 %206, %207, !mcsema_real_eip !58
  %210 = xor i32 %209, %208, !mcsema_real_eip !58
  %211 = and i32 %210, 16, !mcsema_real_eip !58
  %212 = icmp ne i32 %211, 0, !mcsema_real_eip !58
  %213 = icmp eq i32 %208, 0, !mcsema_real_eip !58
  %214 = trunc i32 %208 to i8, !mcsema_real_eip !58
  %215 = tail call i8 @llvm.ctpop.i8(i8 %214) #2, !mcsema_real_eip !58
  %216 = and i8 %215, 1
  %217 = icmp eq i8 %216, 0
  %218 = extractvalue { i32, i1 } %uadd76.i.i, 1
  %219 = zext i32 %208 to i64
  %220 = sext i32 %.lcssa.i.i to i64, !mcsema_real_eip !59
  %221 = sext i32 %208 to i64, !mcsema_real_eip !59
  %222 = mul nsw i64 %221, %220, !mcsema_real_eip !59
  %223 = mul i32 %208, %.lcssa.i.i, !mcsema_real_eip !59
  %224 = sext i32 %223 to i64, !mcsema_real_eip !59
  %225 = icmp ne i64 %224, %222, !mcsema_real_eip !59
  %226 = zext i32 %223 to i64
  %227 = load i64, i64* %137, align 8
  %228 = load i64, i64* %135, align 8, !mcsema_real_eip !60
  store i64 %226, i64* %RAX.i, align 8, !mcsema_real_eip !61
  store i64 %227, i64* %RBX.i, align 8, !mcsema_real_eip !61
  store i64 %219, i64* %RCX.i, align 8, !mcsema_real_eip !61
  store i64 %RDX_val.0.lcssa.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !61
  store i64 %RSI_val.0.lcssa.i.i, i64* %RSI.i, align 8, !mcsema_real_eip !61
  store i64 100, i64* %RDI.i, align 8, !mcsema_real_eip !61
  store i64 %110, i64* %RSP.i, align 8, !mcsema_real_eip !61
  store i64 %228, i64* %RBP.i, align 8, !mcsema_real_eip !61
  %229 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 500, i64 600>, <2 x i64>* %229, align 8
  store i64 %140, i64* %R10.i, align 8, !mcsema_real_eip !61
  store i64 %141, i64* %R11.i, align 8, !mcsema_real_eip !61
  store i64 %6, i64* %R12.i, align 8, !mcsema_real_eip !61
  store i64 %7, i64* %R13.i, align 8, !mcsema_real_eip !61
  store i64 %8, i64* %R14.i, align 8, !mcsema_real_eip !61
  store i64 %9, i64* %R15.i, align 8, !mcsema_real_eip !61
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !61
  store i1 %218, i1* %CF.i, align 1, !mcsema_real_eip !61
  store i1 %217, i1* %PF.i, align 1, !mcsema_real_eip !61
  store i1 %212, i1* %AF.i, align 1, !mcsema_real_eip !61
  store i1 %213, i1* %ZF.i, align 1, !mcsema_real_eip !61
  store i1 %225, i1* %SF.i, align 1, !mcsema_real_eip !61
  store i1 %225, i1* %OF.i, align 1, !mcsema_real_eip !61
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !61
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* nonnull %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !61
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !61
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !61
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !61
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !61
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !61
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !61
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !61
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !61
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !61
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !61
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !61
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !61
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !61
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !61
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !61
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !61
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !61
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !61
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !61
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !61
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !61
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !61
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !61
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !61
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !61
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !61
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !61
  store i11 %44, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !61
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !61
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !61
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !61
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !61
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !61
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !61
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !61
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !61
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !61
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !61
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !61
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !61
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !61
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !61
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !61
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !61
  store i64 %61, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !61
  store i64 %62, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !61
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %13, i32 128, i32 4, i1 false), !mcsema_real_eip !27
  %uadd216.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %110, i64 80)
  %230 = extractvalue { i64, i1 } %uadd216.i, 0
  %231 = xor i64 %230, %110, !mcsema_real_eip !62
  %232 = and i64 %231, 16
  %233 = icmp eq i64 %232, 0
  %234 = icmp slt i64 %230, 0
  %235 = icmp eq i64 %230, 0, !mcsema_real_eip !62
  %236 = add i64 %4, 9223372036854775720
  %237 = and i64 %231, %236, !mcsema_real_eip !62
  %238 = icmp slt i64 %237, 0
  %239 = trunc i64 %230 to i8, !mcsema_real_eip !62
  %240 = tail call i8 @llvm.ctpop.i8(i8 %239), !mcsema_real_eip !62
  %241 = and i8 %240, 1
  %242 = icmp eq i8 %241, 0
  %243 = extractvalue { i64, i1 } %uadd216.i, 1
  %244 = inttoptr i64 %230 to i64*, !mcsema_real_eip !63
  %245 = load i64, i64* %244, align 8, !mcsema_real_eip !63
  %246 = add i64 %230, 16, !mcsema_real_eip !64
  store i64 %226, i64* %RAX.i, align 8, !mcsema_real_eip !64
  store i64 %227, i64* %RBX.i, align 8, !mcsema_real_eip !64
  store i64 %219, i64* %RCX.i, align 8, !mcsema_real_eip !64
  store i64 %RDX_val.0.lcssa.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !64
  store i64 %RSI_val.0.lcssa.i.i, i64* %RSI.i, align 8, !mcsema_real_eip !64
  store i64 100, i64* %RDI.i, align 8, !mcsema_real_eip !64
  store i64 %246, i64* %RSP.i, align 8, !mcsema_real_eip !64
  store i64 %245, i64* %RBP.i, align 8, !mcsema_real_eip !64
  store i64 500, i64* %R8.i, align 8, !mcsema_real_eip !64
  store i64 600, i64* %R9.i, align 8, !mcsema_real_eip !64
  store i64 %140, i64* %R10.i, align 8, !mcsema_real_eip !64
  store i64 %141, i64* %R11.i, align 8, !mcsema_real_eip !64
  store i64 %6, i64* %R12.i, align 8, !mcsema_real_eip !64
  store i64 %7, i64* %R13.i, align 8, !mcsema_real_eip !64
  store i64 %8, i64* %R14.i, align 8, !mcsema_real_eip !64
  store i64 %9, i64* %R15.i, align 8, !mcsema_real_eip !64
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !64
  store i1 %243, i1* %CF.i, align 1, !mcsema_real_eip !64
  store i1 %242, i1* %PF.i, align 1, !mcsema_real_eip !64
  store i1 %233, i1* %AF.i, align 1, !mcsema_real_eip !64
  store i1 %235, i1* %ZF.i, align 1, !mcsema_real_eip !64
  store i1 %234, i1* %SF.i, align 1, !mcsema_real_eip !64
  store i1 %238, i1* %OF.i, align 1, !mcsema_real_eip !64
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !64
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !64
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !64
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !64
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !64
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !64
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !64
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !64
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !64
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !64
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !64
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !64
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !64
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !64
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !64
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !64
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !64
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !64
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !64
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !64
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !64
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !64
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !64
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !64
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !64
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !64
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !64
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !64
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !64
  store i11 %44, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !64
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !64
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !64
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !64
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !64
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !64
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !64
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !64
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !64
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !64
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !64
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !64
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !64
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !64
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !64
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !64
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !64
  store i64 %61, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !64
  store i64 %62, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !64
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

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
!3 = !{i64 160}
!4 = !{i64 178}
!5 = !{i64 185}
!6 = !{i64 188}
!7 = !{i64 195}
!8 = !{i64 210}
!9 = !{i64 214}
!10 = !{i64 219}
!11 = !{i64 256}
!12 = !{i64 260}
!13 = !{i64 264}
!14 = !{i64 267}
!15 = !{i64 237}
!16 = !{i64 311}
!17 = !{i64 319}
!18 = !{i64 322}
!19 = !{i64 290}
!20 = !{i64 297}
!21 = !{i64 375}
!22 = !{i64 383}
!23 = !{i64 390}
!24 = !{i64 395}
!25 = !{i64 403}
!26 = !{i64 408}
!27 = !{i64 411}
!28 = !{i64 4}
!29 = !{i64 5}
!30 = !{i64 9}
!31 = !{i64 17}
!32 = !{i64 20}
!33 = !{i64 23}
!34 = !{i64 26}
!35 = !{i64 29}
!36 = !{i64 32}
!37 = !{i64 36}
!38 = !{i64 40}
!39 = !{i64 43}
!40 = !{i64 47}
!41 = !{i64 51}
!42 = !{i64 55}
!43 = !{i64 72}
!44 = !{i64 75}
!45 = !{i64 81}
!46 = !{i64 85}
!47 = !{i64 89}
!48 = !{i64 96}
!49 = !{i64 100}
!50 = !{i64 108}
!51 = !{i64 111}
!52 = !{i64 106}
!53 = !{i64 130}
!54 = !{i64 133}
!55 = !{i64 136}
!56 = !{i64 139}
!57 = !{i64 142}
!58 = !{i64 145}
!59 = !{i64 148}
!60 = !{i64 152}
!61 = !{i64 153}
!62 = !{i64 416}
!63 = !{i64 420}
!64 = !{i64 421}
