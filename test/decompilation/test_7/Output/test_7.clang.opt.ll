; ModuleID = 'Output/test_7.clang.opt.bc'
source_filename = "Output/test_7.clang.bc"
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
  %1 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !3
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !3
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !3
  %2 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !3
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !3
  %3 = load i64, i64* %RBP.i, align 8, !mcsema_real_eip !3
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !3
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %4 = load i64, i64* %R12.i, align 8
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !3
  %5 = load i64, i64* %R13.i, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %6 = load i64, i64* %R14.i, align 8, !mcsema_real_eip !3
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !3
  %7 = load i64, i64* %R15.i, align 8
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %8 = load i64, i64* %RIP.i, align 8
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !3
  %9 = load i1, i1* %DF.i, align 1
  %10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !3
  %11 = bitcast x86_fp80* %10 to i8*, !mcsema_real_eip !3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %11, i32 128, i32 4, i1 false), !mcsema_real_eip !3
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !3
  %12 = load i1, i1* %FPU_B.i, align 1
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !3
  %13 = load i1, i1* %FPU_C3.i, align 1
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !3
  %14 = load i3, i3* %FPU_TOP.i, align 1
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !3
  %15 = load i1, i1* %FPU_C2.i, align 1
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !3
  %16 = load i1, i1* %FPU_C1.i, align 1
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !3
  %17 = load i1, i1* %FPU_C0.i, align 1
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !3
  %18 = load i1, i1* %FPU_ES.i, align 1
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !3
  %19 = load i1, i1* %FPU_SF.i, align 1
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !3
  %20 = load i1, i1* %FPU_PE.i, align 1
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !3
  %21 = load i1, i1* %FPU_UE.i, align 1
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !3
  %22 = load i1, i1* %FPU_OE.i, align 1
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !3
  %23 = load i1, i1* %FPU_ZE.i, align 1
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !3
  %24 = load i1, i1* %FPU_DE.i, align 1
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !3
  %25 = load i1, i1* %FPU_IE.i, align 1
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !3
  %26 = load i1, i1* %FPU_X.i, align 1
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !3
  %27 = load i2, i2* %FPU_RC.i, align 1
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !3
  %28 = load i2, i2* %FPU_PC.i, align 1
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !3
  %29 = load i1, i1* %FPU_PM.i, align 1
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !3
  %30 = load i1, i1* %FPU_UM.i, align 1
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !3
  %31 = load i1, i1* %FPU_OM.i, align 1
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !3
  %32 = load i1, i1* %FPU_ZM.i, align 1
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !3
  %33 = load i1, i1* %FPU_DM.i, align 1
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !3
  %34 = load i1, i1* %FPU_IM.i, align 1
  %35 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !3
  %36 = bitcast i8* %35 to i64*
  %37 = load i64, i64* %36, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !3
  %38 = load i16, i16* %FPU_LASTIP_SEG.i, align 1
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !3
  %39 = load i64, i64* %FPU_LASTIP_OFF.i, align 8
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !3
  %40 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !3
  %41 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !3
  %42 = load i11, i11* %FPU_FOPCODE.i, align 1
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %43 = load i128, i128* %XMM0.i, align 1
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %44 = load i128, i128* %XMM1.i, align 1
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %45 = load i128, i128* %XMM2.i, align 1
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %46 = load i128, i128* %XMM3.i, align 1
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %47 = load i128, i128* %XMM4.i, align 1
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %48 = load i128, i128* %XMM5.i, align 1
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %49 = load i128, i128* %XMM6.i, align 1
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %50 = load i128, i128* %XMM7.i, align 1
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %51 = load i128, i128* %XMM8.i, align 1
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %52 = load i128, i128* %XMM9.i, align 1
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %53 = load i128, i128* %XMM10.i, align 1
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %54 = load i128, i128* %XMM11.i, align 1
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %55 = load i128, i128* %XMM12.i, align 1
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %56 = load i128, i128* %XMM13.i, align 1
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %57 = load i128, i128* %XMM14.i, align 1
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %58 = load i128, i128* %XMM15.i, align 1
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %59 = load i64, i64* %STACK_BASE.i, align 8
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %60 = load i64, i64* %STACK_LIMIT.i, align 8
  %61 = add i64 %2, -8
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !3
  store i64 %3, i64* %62, align 8, !mcsema_real_eip !3
  %63 = add i64 %2, -16
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !4
  store i64 %6, i64* %64, align 8, !mcsema_real_eip !4
  %65 = add i64 %2, -24
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !5
  store i64 %1, i64* %66, align 8, !mcsema_real_eip !5
  %67 = add i64 %2, -28, !mcsema_real_eip !6
  %68 = inttoptr i64 %67 to i32*
  store i32 0, i32* %68, align 4, !mcsema_real_eip !6
  %69 = add i64 %2, -32, !mcsema_real_eip !7
  %70 = inttoptr i64 %69 to i32*
  store i32 1, i32* %70, align 4, !mcsema_real_eip !7
  %71 = add i64 %2, -76
  %72 = inttoptr i64 %71 to i32*
  store i32 0, i32* %72, align 4
  %73 = add i64 %2, -72
  br label %block_0x190.i

block_0x190.i:                                    ; preds = %block_0x190.i, %driverBlockRaw
  %.sink154.i = phi i32 [ 0, %driverBlockRaw ], [ %80, %block_0x190.i ]
  %74 = add i32 %.sink154.i, 1
  %75 = sext i32 %.sink154.i to i64, !mcsema_real_eip !8
  %76 = shl nsw i64 %75, 2
  %77 = add i64 %76, %73, !mcsema_real_eip !9
  %78 = inttoptr i64 %77 to i32*
  store i32 %74, i32* %78, align 4, !mcsema_real_eip !9
  %79 = load i32, i32* %72, align 4, !mcsema_real_eip !10
  %80 = add i32 %79, 1
  store i32 %80, i32* %72, align 4
  %81 = add i32 %79, -9
  %82 = icmp slt i32 %81, 0
  %83 = sub i32 8, %79
  %84 = and i32 %83, %80
  %85 = icmp slt i32 %84, 0
  %tmp.i = xor i1 %82, %85
  br i1 %tmp.i, label %block_0x190.i, label %block_0x1b0.i, !mcsema_real_eip !11

block_0x1b0.i:                                    ; preds = %block_0x190.i
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !3
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !3
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !3
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %86 = add i64 %2, -88, !mcsema_real_eip !12
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !12
  store i64 %69, i64* %87, align 8, !mcsema_real_eip !12
  %88 = tail call x86_64_sysvcc i64 @malloc(i64 40), !mcsema_real_eip !13
  %89 = add i64 %2, -96, !mcsema_real_eip !14
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !14
  store i64 %88, i64* %90, align 8, !mcsema_real_eip !14
  %91 = add i64 %2, -100
  %92 = inttoptr i64 %91 to i32*
  store i32 0, i32* %92, align 4
  %93 = load i64, i64* %90, align 8
  br label %block_0x1df.i

block_0x1df.i:                                    ; preds = %block_0x1df.i, %block_0x1b0.i
  %94 = phi i64 [ %93, %block_0x1b0.i ], [ %107, %block_0x1df.i ]
  %.sink5153.i = phi i32 [ 0, %block_0x1b0.i ], [ %101, %block_0x1df.i ]
  %95 = add i32 %.sink5153.i, 1
  %96 = sext i32 %.sink5153.i to i64, !mcsema_real_eip !15
  %97 = shl nsw i64 %96, 2
  %98 = add i64 %97, %94, !mcsema_real_eip !16
  %99 = inttoptr i64 %98 to i32*
  store i32 %95, i32* %99, align 4, !mcsema_real_eip !16
  %100 = load i32, i32* %92, align 4, !mcsema_real_eip !17
  %101 = add i32 %100, 1
  store i32 %101, i32* %92, align 4
  %102 = add i32 %100, -9
  %103 = xor i32 %102, %101, !mcsema_real_eip !18
  %104 = icmp slt i32 %102, 0
  %105 = and i32 %103, %101, !mcsema_real_eip !18
  %106 = icmp slt i32 %105, 0
  %tmp212.i = xor i1 %104, %106
  %107 = load i64, i64* %90, align 8
  br i1 %tmp212.i, label %block_0x1df.i, label %block_0x202.i, !mcsema_real_eip !19

block_0x202.i:                                    ; preds = %block_0x1df.i
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !3
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !3
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %108 = add i64 %2, -168
  %109 = icmp ult i32 %101, 10, !mcsema_real_eip !18
  %110 = icmp eq i32 %102, 0, !mcsema_real_eip !18
  %111 = trunc i32 %102 to i8, !mcsema_real_eip !18
  %112 = tail call i8 @llvm.ctpop.i8(i8 %111), !mcsema_real_eip !18
  %113 = and i8 %112, 1
  %114 = icmp eq i8 %113, 0
  %115 = and i32 %103, 16, !mcsema_real_eip !18
  %116 = icmp ne i32 %115, 0, !mcsema_real_eip !18
  %117 = load i32, i32* %70, align 4, !mcsema_real_eip !20
  %118 = zext i32 %117 to i64
  %119 = load i64, i64* %87, align 8
  %120 = add i64 %2, -112, !mcsema_real_eip !21
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !21
  store i64 %107, i64* %121, align 8, !mcsema_real_eip !21
  %122 = add i64 %2, -120, !mcsema_real_eip !22
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !22
  store i64 %73, i64* %123, align 8, !mcsema_real_eip !22
  %124 = add i64 %2, -124, !mcsema_real_eip !23
  %125 = inttoptr i64 %124 to i32*
  store i32 %117, i32* %125, align 4, !mcsema_real_eip !23
  %126 = add i64 %2, -136, !mcsema_real_eip !24
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !24
  store i64 %119, i64* %127, align 8, !mcsema_real_eip !24
  %128 = load i32, i32* %125, align 4, !mcsema_real_eip !25
  %129 = zext i32 %128 to i64, !mcsema_real_eip !25
  %130 = inttoptr i64 %108 to i32*
  store i32 %128, i32* %130, align 4, !mcsema_real_eip !26
  %131 = load i64, i64* %123, align 8
  %132 = add i64 %2, -160, !mcsema_real_eip !27
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !27
  store i64 %131, i64* %133, align 8, !mcsema_real_eip !27
  %134 = load i64, i64* %127, align 8
  %135 = add i64 %2, -152, !mcsema_real_eip !28
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !28
  store i64 %134, i64* %136, align 8, !mcsema_real_eip !28
  %137 = add i64 %2, -144, !mcsema_real_eip !29
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !29
  store i64 %107, i64* %138, align 8, !mcsema_real_eip !29
  %139 = add i64 %2, -176
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !30
  store i64 -4981261766360305936, i64* %140, align 8, !mcsema_real_eip !30
  store i64 %129, i64* %RAX.i, align 8, !mcsema_real_eip !30
  store i64 %131, i64* %RBX.i, align 8, !mcsema_real_eip !30
  store i64 %107, i64* %RCX.i, align 8, !mcsema_real_eip !30
  store i64 %119, i64* %RDX.i, align 8, !mcsema_real_eip !30
  store i64 %73, i64* %RSI.i, align 8, !mcsema_real_eip !30
  store i64 %118, i64* %RDI.i, align 8, !mcsema_real_eip !30
  store i64 %139, i64* %RSP.i, align 8, !mcsema_real_eip !30
  store i64 %61, i64* %RBP.i, align 8, !mcsema_real_eip !30
  %141 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 10, i64 10>, <2 x i64>* %141, align 8
  store i64 %107, i64* %R10.i, align 8, !mcsema_real_eip !30
  store i64 %107, i64* %R11.i, align 8, !mcsema_real_eip !30
  store i64 %4, i64* %R12.i, align 8, !mcsema_real_eip !30
  store i64 %5, i64* %R13.i, align 8, !mcsema_real_eip !30
  store i64 %134, i64* %R14.i, align 8, !mcsema_real_eip !30
  store i64 %7, i64* %R15.i, align 8, !mcsema_real_eip !30
  store i64 %8, i64* %RIP.i, align 8, !mcsema_real_eip !30
  store i1 %109, i1* %CF.i, align 1, !mcsema_real_eip !30
  store i1 %114, i1* %PF.i, align 1, !mcsema_real_eip !30
  store i1 %116, i1* %AF.i, align 1, !mcsema_real_eip !30
  store i1 %110, i1* %ZF.i, align 1, !mcsema_real_eip !30
  store i1 %104, i1* %SF.i, align 1, !mcsema_real_eip !30
  store i1 %106, i1* %OF.i, align 1, !mcsema_real_eip !30
  store i1 %9, i1* %DF.i, align 1, !mcsema_real_eip !30
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !30
  store i1 %12, i1* %FPU_B.i, align 1, !mcsema_real_eip !30
  store i1 %13, i1* %FPU_C3.i, align 1, !mcsema_real_eip !30
  store i3 %14, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !30
  store i1 %15, i1* %FPU_C2.i, align 1, !mcsema_real_eip !30
  store i1 %16, i1* %FPU_C1.i, align 1, !mcsema_real_eip !30
  store i1 %17, i1* %FPU_C0.i, align 1, !mcsema_real_eip !30
  store i1 %18, i1* %FPU_ES.i, align 1, !mcsema_real_eip !30
  store i1 %19, i1* %FPU_SF.i, align 1, !mcsema_real_eip !30
  store i1 %20, i1* %FPU_PE.i, align 1, !mcsema_real_eip !30
  store i1 %21, i1* %FPU_UE.i, align 1, !mcsema_real_eip !30
  store i1 %22, i1* %FPU_OE.i, align 1, !mcsema_real_eip !30
  store i1 %23, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !30
  store i1 %24, i1* %FPU_DE.i, align 1, !mcsema_real_eip !30
  store i1 %25, i1* %FPU_IE.i, align 1, !mcsema_real_eip !30
  store i1 %26, i1* %FPU_X.i, align 1, !mcsema_real_eip !30
  store i2 %27, i2* %FPU_RC.i, align 1, !mcsema_real_eip !30
  store i2 %28, i2* %FPU_PC.i, align 1, !mcsema_real_eip !30
  store i1 %29, i1* %FPU_PM.i, align 1, !mcsema_real_eip !30
  store i1 %30, i1* %FPU_UM.i, align 1, !mcsema_real_eip !30
  store i1 %31, i1* %FPU_OM.i, align 1, !mcsema_real_eip !30
  store i1 %32, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !30
  store i1 %33, i1* %FPU_DM.i, align 1, !mcsema_real_eip !30
  store i1 %34, i1* %FPU_IM.i, align 1, !mcsema_real_eip !30
  store i64 %37, i64* %36, align 4
  store i16 %38, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !30
  store i64 %39, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !30
  store i16 %40, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !30
  store i64 %41, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !30
  store i11 %42, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !30
  store i128 %43, i128* %XMM0.i, align 1, !mcsema_real_eip !30
  store i128 %44, i128* %XMM1.i, align 1, !mcsema_real_eip !30
  store i128 %45, i128* %XMM2.i, align 1, !mcsema_real_eip !30
  store i128 %46, i128* %XMM3.i, align 1, !mcsema_real_eip !30
  store i128 %47, i128* %XMM4.i, align 1, !mcsema_real_eip !30
  store i128 %48, i128* %XMM5.i, align 1, !mcsema_real_eip !30
  store i128 %49, i128* %XMM6.i, align 1, !mcsema_real_eip !30
  store i128 %50, i128* %XMM7.i, align 1, !mcsema_real_eip !30
  store i128 %51, i128* %XMM8.i, align 1, !mcsema_real_eip !30
  store i128 %52, i128* %XMM9.i, align 1, !mcsema_real_eip !30
  store i128 %53, i128* %XMM10.i, align 1, !mcsema_real_eip !30
  store i128 %54, i128* %XMM11.i, align 1, !mcsema_real_eip !30
  store i128 %55, i128* %XMM12.i, align 1, !mcsema_real_eip !30
  store i128 %56, i128* %XMM13.i, align 1, !mcsema_real_eip !30
  store i128 %57, i128* %XMM14.i, align 1, !mcsema_real_eip !30
  store i128 %58, i128* %XMM15.i, align 1, !mcsema_real_eip !30
  store i64 %59, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !30
  store i64 %60, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !30
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast.i, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false)
  %142 = add i64 %2, -184
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !2
  store i64 %61, i64* %143, align 8, !mcsema_real_eip !2
  %144 = add i64 %2, -192
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !31
  store i64 %131, i64* %145, align 8, !mcsema_real_eip !31
  %146 = load i64, i64* %138, align 8, !mcsema_real_eip !32
  %147 = load i64, i64* %136, align 8
  %148 = load i64, i64* %133, align 8
  %149 = load i32, i32* %130, align 4, !mcsema_real_eip !33
  %150 = add i64 %2, -196, !mcsema_real_eip !34
  %151 = inttoptr i64 %150 to i32*
  store i32 %117, i32* %151, align 4, !mcsema_real_eip !34
  %152 = add i64 %2, -208, !mcsema_real_eip !35
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !35
  store i64 %73, i64* %153, align 8, !mcsema_real_eip !35
  %154 = add i64 %2, -216, !mcsema_real_eip !36
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !36
  store i64 %119, i64* %155, align 8, !mcsema_real_eip !36
  %156 = add i64 %2, -224, !mcsema_real_eip !37
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !37
  store i64 %107, i64* %157, align 8, !mcsema_real_eip !37
  %158 = add i64 %2, -228, !mcsema_real_eip !38
  %159 = inttoptr i64 %158 to i32*
  store i32 10, i32* %159, align 4, !mcsema_real_eip !38
  %160 = add i64 %2, -232, !mcsema_real_eip !39
  %161 = inttoptr i64 %160 to i32*
  store i32 10, i32* %161, align 4, !mcsema_real_eip !39
  %162 = add i64 %2, -236, !mcsema_real_eip !40
  %163 = inttoptr i64 %162 to i32*
  store i32 %149, i32* %163, align 4, !mcsema_real_eip !40
  %164 = add i64 %2, -248, !mcsema_real_eip !41
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !41
  store i64 %148, i64* %165, align 8, !mcsema_real_eip !41
  %166 = add i64 %2, -256, !mcsema_real_eip !42
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !42
  store i64 %147, i64* %167, align 8, !mcsema_real_eip !42
  %168 = add i64 %2, -264, !mcsema_real_eip !43
  %169 = inttoptr i64 %168 to i64*, !mcsema_real_eip !43
  store i64 %146, i64* %169, align 8, !mcsema_real_eip !43
  %170 = add i64 %2, -268, !mcsema_real_eip !44
  %171 = inttoptr i64 %170 to i32*
  store i32 0, i32* %171, align 4, !mcsema_real_eip !44
  %172 = load i32, i32* %151, align 4, !mcsema_real_eip !45
  %173 = zext i32 %172 to i64
  store i32 %172, i32* %171, align 4, !mcsema_real_eip !46
  %174 = add i64 %2, -272
  %175 = inttoptr i64 %174 to i32*
  store i32 0, i32* %175, align 4
  %176 = load i32, i32* %159, align 4, !mcsema_real_eip !47
  %177 = sub i32 0, %176, !mcsema_real_eip !47
  %178 = icmp slt i32 %177, 0
  %179 = and i32 %176, %177, !mcsema_real_eip !47
  %180 = icmp slt i32 %179, 0
  %tmp124.i.i = xor i1 %178, %180
  %181 = load i32, i32* %171, align 4
  br i1 %tmp124.i.i, label %block_0x62.i.i.preheader, label %block_0x85.i.i, !mcsema_real_eip !48

block_0x62.i.i.preheader:                         ; preds = %block_0x202.i
  br label %block_0x62.i.i

block_0x62.i.i:                                   ; preds = %block_0x62.i.i.preheader, %block_0x62.i.i
  %182 = phi i32 [ %199, %block_0x62.i.i ], [ %181, %block_0x62.i.i.preheader ]
  %.sink125.i.i = phi i32 [ %191, %block_0x62.i.i ], [ 0, %block_0x62.i.i.preheader ]
  %183 = sext i32 %.sink125.i.i to i64, !mcsema_real_eip !49
  %184 = load i64, i64* %153, align 8, !mcsema_real_eip !50
  %185 = shl nsw i64 %183, 2
  %186 = add i64 %185, %184, !mcsema_real_eip !51
  %187 = inttoptr i64 %186 to i32*
  %188 = load i32, i32* %187, align 4, !mcsema_real_eip !51
  %189 = add i32 %188, %182
  store i32 %189, i32* %171, align 4, !mcsema_real_eip !52
  %190 = load i32, i32* %175, align 4, !mcsema_real_eip !53
  %191 = add i32 %190, 1
  store i32 %191, i32* %175, align 4
  %192 = load i32, i32* %159, align 4, !mcsema_real_eip !47
  %193 = sub i32 %191, %192, !mcsema_real_eip !47
  %194 = xor i32 %193, %191, !mcsema_real_eip !47
  %195 = icmp slt i32 %193, 0
  %196 = xor i32 %192, %191, !mcsema_real_eip !47
  %197 = and i32 %194, %196, !mcsema_real_eip !47
  %198 = icmp slt i32 %197, 0
  %tmp.i.i = xor i1 %195, %198
  %199 = load i32, i32* %171, align 4
  br i1 %tmp.i.i, label %block_0x62.i.i, label %block_0x56.block_0x85_crit_edge.i.i, !mcsema_real_eip !48

block_0x56.block_0x85_crit_edge.i.i:              ; preds = %block_0x62.i.i
  %200 = zext i32 %189 to i64, !mcsema_real_eip !54
  br label %block_0x85.i.i

block_0x85.i.i:                                   ; preds = %block_0x56.block_0x85_crit_edge.i.i, %block_0x202.i
  %RSI_val.0.lcssa.i.i = phi i64 [ %200, %block_0x56.block_0x85_crit_edge.i.i ], [ %73, %block_0x202.i ]
  %.lcssa103.i.i = phi i32 [ %199, %block_0x56.block_0x85_crit_edge.i.i ], [ %181, %block_0x202.i ]
  %201 = inttoptr i64 %154 to i32**
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %202, align 4, !mcsema_real_eip !55
  %204 = add i32 %203, %.lcssa103.i.i
  store i32 %204, i32* %171, align 4, !mcsema_real_eip !56
  %205 = add i64 %2, -276
  %206 = inttoptr i64 %205 to i32*
  store i32 0, i32* %206, align 4
  %207 = load i32, i32* %161, align 4, !mcsema_real_eip !57
  %208 = sub i32 0, %207, !mcsema_real_eip !57
  %209 = icmp slt i32 %208, 0
  %210 = and i32 %207, %208, !mcsema_real_eip !57
  %211 = icmp slt i32 %210, 0
  %tmp74120.i.i = xor i1 %209, %211
  %212 = load i32, i32* %171, align 4
  br i1 %tmp74120.i.i, label %block_0xa6.i.i.preheader, label %block_0xc9.i.i, !mcsema_real_eip !58

block_0xa6.i.i.preheader:                         ; preds = %block_0x85.i.i
  br label %block_0xa6.i.i

block_0xa6.i.i:                                   ; preds = %block_0xa6.i.i.preheader, %block_0xa6.i.i
  %213 = phi i32 [ %230, %block_0xa6.i.i ], [ %212, %block_0xa6.i.i.preheader ]
  %.sink5121.i.i = phi i32 [ %222, %block_0xa6.i.i ], [ 0, %block_0xa6.i.i.preheader ]
  %214 = sext i32 %.sink5121.i.i to i64, !mcsema_real_eip !59
  %215 = load i64, i64* %157, align 8, !mcsema_real_eip !60
  %216 = shl nsw i64 %214, 2
  %217 = add i64 %216, %215, !mcsema_real_eip !61
  %218 = inttoptr i64 %217 to i32*
  %219 = load i32, i32* %218, align 4, !mcsema_real_eip !61
  %220 = add i32 %219, %213
  store i32 %220, i32* %171, align 4, !mcsema_real_eip !62
  %221 = load i32, i32* %206, align 4, !mcsema_real_eip !63
  %222 = add i32 %221, 1
  store i32 %222, i32* %206, align 4
  %223 = load i32, i32* %161, align 4, !mcsema_real_eip !57
  %224 = sub i32 %222, %223, !mcsema_real_eip !57
  %225 = xor i32 %224, %222, !mcsema_real_eip !57
  %226 = icmp slt i32 %224, 0
  %227 = xor i32 %223, %222, !mcsema_real_eip !57
  %228 = and i32 %225, %227, !mcsema_real_eip !57
  %229 = icmp slt i32 %228, 0
  %tmp74.i.i = xor i1 %226, %229
  %230 = load i32, i32* %171, align 4
  br i1 %tmp74.i.i, label %block_0xa6.i.i, label %block_0x9a.block_0xc9_crit_edge.i.i, !mcsema_real_eip !58

block_0x9a.block_0xc9_crit_edge.i.i:              ; preds = %block_0xa6.i.i
  %231 = zext i32 %220 to i64, !mcsema_real_eip !64
  br label %block_0xc9.i.i

block_0xc9.i.i:                                   ; preds = %block_0x9a.block_0xc9_crit_edge.i.i, %block_0x85.i.i
  %RSI_val.1.lcssa.i.i = phi i64 [ %231, %block_0x9a.block_0xc9_crit_edge.i.i ], [ %RSI_val.0.lcssa.i.i, %block_0x85.i.i ]
  %.lcssa102.i.i = phi i32 [ %230, %block_0x9a.block_0xc9_crit_edge.i.i ], [ %212, %block_0x85.i.i ]
  %232 = load i32, i32* %163, align 4, !mcsema_real_eip !65
  %233 = add i32 %232, %.lcssa102.i.i
  store i32 %233, i32* %171, align 4, !mcsema_real_eip !66
  %234 = add i64 %2, -280
  %235 = inttoptr i64 %234 to i32*
  store i32 0, i32* %235, align 4
  %236 = load i32, i32* %159, align 4, !mcsema_real_eip !67
  %237 = sub i32 0, %236, !mcsema_real_eip !67
  %238 = icmp slt i32 %237, 0
  %239 = and i32 %236, %237, !mcsema_real_eip !67
  %240 = icmp slt i32 %239, 0
  %tmp78116.i.i = xor i1 %238, %240
  %241 = load i32, i32* %171, align 4
  br i1 %tmp78116.i.i, label %block_0xe7.i.i.preheader, label %block_0x10a.i.i, !mcsema_real_eip !68

block_0xe7.i.i.preheader:                         ; preds = %block_0xc9.i.i
  br label %block_0xe7.i.i

block_0xe7.i.i:                                   ; preds = %block_0xe7.i.i.preheader, %block_0xe7.i.i
  %242 = phi i32 [ %259, %block_0xe7.i.i ], [ %241, %block_0xe7.i.i.preheader ]
  %.sink10117.i.i = phi i32 [ %251, %block_0xe7.i.i ], [ 0, %block_0xe7.i.i.preheader ]
  %243 = sext i32 %.sink10117.i.i to i64, !mcsema_real_eip !69
  %244 = load i64, i64* %165, align 8, !mcsema_real_eip !70
  %245 = shl nsw i64 %243, 2
  %246 = add i64 %245, %244, !mcsema_real_eip !71
  %247 = inttoptr i64 %246 to i32*
  %248 = load i32, i32* %247, align 4, !mcsema_real_eip !71
  %249 = add i32 %248, %242
  store i32 %249, i32* %171, align 4, !mcsema_real_eip !72
  %250 = load i32, i32* %235, align 4, !mcsema_real_eip !73
  %251 = add i32 %250, 1
  store i32 %251, i32* %235, align 4
  %252 = load i32, i32* %159, align 4, !mcsema_real_eip !67
  %253 = sub i32 %251, %252, !mcsema_real_eip !67
  %254 = xor i32 %253, %251, !mcsema_real_eip !67
  %255 = icmp slt i32 %253, 0
  %256 = xor i32 %252, %251, !mcsema_real_eip !67
  %257 = and i32 %254, %256, !mcsema_real_eip !67
  %258 = icmp slt i32 %257, 0
  %tmp78.i.i = xor i1 %255, %258
  %259 = load i32, i32* %171, align 4
  br i1 %tmp78.i.i, label %block_0xe7.i.i, label %block_0xdb.block_0x10a_crit_edge.i.i, !mcsema_real_eip !68

block_0xdb.block_0x10a_crit_edge.i.i:             ; preds = %block_0xe7.i.i
  %260 = zext i32 %249 to i64, !mcsema_real_eip !74
  br label %block_0x10a.i.i

block_0x10a.i.i:                                  ; preds = %block_0xdb.block_0x10a_crit_edge.i.i, %block_0xc9.i.i
  %RSI_val.2.lcssa.i.i = phi i64 [ %260, %block_0xdb.block_0x10a_crit_edge.i.i ], [ %RSI_val.1.lcssa.i.i, %block_0xc9.i.i ]
  %.lcssa101.i.i = phi i32 [ %259, %block_0xdb.block_0x10a_crit_edge.i.i ], [ %241, %block_0xc9.i.i ]
  %261 = inttoptr i64 %166 to i32**
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %262, align 4, !mcsema_real_eip !75
  %264 = zext i32 %263 to i64, !mcsema_real_eip !75
  %265 = add i32 %263, %.lcssa101.i.i
  store i32 %265, i32* %171, align 4, !mcsema_real_eip !76
  %266 = add i64 %2, -284
  %267 = inttoptr i64 %266 to i32*
  store i32 0, i32* %267, align 4
  %268 = load i32, i32* %161, align 4, !mcsema_real_eip !77
  %269 = sub i32 0, %268, !mcsema_real_eip !77
  %270 = icmp slt i32 %269, 0
  %271 = and i32 %268, %269, !mcsema_real_eip !77
  %272 = icmp slt i32 %271, 0
  %tmp82104.i.i = xor i1 %270, %272
  %273 = load i32, i32* %171, align 4
  br i1 %tmp82104.i.i, label %block_0x12b.i.i.preheader, label %sub_160.exit, !mcsema_real_eip !78

block_0x12b.i.i.preheader:                        ; preds = %block_0x10a.i.i
  br label %block_0x12b.i.i

block_0x12b.i.i:                                  ; preds = %block_0x12b.i.i.preheader, %block_0x12b.i.i
  %274 = phi i32 [ %291, %block_0x12b.i.i ], [ %273, %block_0x12b.i.i.preheader ]
  %.sink15105.i.i = phi i32 [ %283, %block_0x12b.i.i ], [ 0, %block_0x12b.i.i.preheader ]
  %275 = sext i32 %.sink15105.i.i to i64, !mcsema_real_eip !79
  %276 = load i64, i64* %169, align 8, !mcsema_real_eip !80
  %277 = shl nsw i64 %275, 2
  %278 = add i64 %277, %276, !mcsema_real_eip !81
  %279 = inttoptr i64 %278 to i32*
  %280 = load i32, i32* %279, align 4, !mcsema_real_eip !81
  %281 = add i32 %280, %274
  store i32 %281, i32* %171, align 4, !mcsema_real_eip !82
  %282 = load i32, i32* %267, align 4, !mcsema_real_eip !83
  %283 = add i32 %282, 1
  store i32 %283, i32* %267, align 4
  %284 = load i32, i32* %161, align 4, !mcsema_real_eip !77
  %285 = sub i32 %283, %284, !mcsema_real_eip !77
  %286 = xor i32 %285, %283, !mcsema_real_eip !77
  %287 = icmp slt i32 %285, 0
  %288 = xor i32 %284, %283, !mcsema_real_eip !77
  %289 = and i32 %286, %288, !mcsema_real_eip !77
  %290 = icmp slt i32 %289, 0
  %tmp82.i.i = xor i1 %287, %290
  %291 = load i32, i32* %171, align 4
  br i1 %tmp82.i.i, label %block_0x12b.i.i, label %block_0x11f.block_0x14e_crit_edge.i.i, !mcsema_real_eip !78

block_0x11f.block_0x14e_crit_edge.i.i:            ; preds = %block_0x12b.i.i
  %292 = zext i32 %281 to i64, !mcsema_real_eip !84
  br label %sub_160.exit

sub_160.exit:                                     ; preds = %block_0x10a.i.i, %block_0x11f.block_0x14e_crit_edge.i.i
  %RSI_val.3.lcssa.i.i = phi i64 [ %292, %block_0x11f.block_0x14e_crit_edge.i.i ], [ %RSI_val.2.lcssa.i.i, %block_0x10a.i.i ]
  %RDX_val.0.in.lcssa.i.i = phi i32 [ %280, %block_0x11f.block_0x14e_crit_edge.i.i ], [ %265, %block_0x10a.i.i ]
  %RCX_val.0.lcssa.i.i = phi i64 [ %276, %block_0x11f.block_0x14e_crit_edge.i.i ], [ %264, %block_0x10a.i.i ]
  %.sink15.lcssa.i.i = phi i32 [ %283, %block_0x11f.block_0x14e_crit_edge.i.i ], [ 0, %block_0x10a.i.i ]
  %.lcssa100.i.i = phi i32 [ %284, %block_0x11f.block_0x14e_crit_edge.i.i ], [ %268, %block_0x10a.i.i ]
  %.lcssa99.i.i = phi i32 [ %285, %block_0x11f.block_0x14e_crit_edge.i.i ], [ %269, %block_0x10a.i.i ]
  %.lcssa98.i.i = phi i32 [ %286, %block_0x11f.block_0x14e_crit_edge.i.i ], [ %269, %block_0x10a.i.i ]
  %.lcssa97.i.i = phi i1 [ %287, %block_0x11f.block_0x14e_crit_edge.i.i ], [ %270, %block_0x10a.i.i ]
  %.lcssa96.i.i = phi i1 [ %290, %block_0x11f.block_0x14e_crit_edge.i.i ], [ %272, %block_0x10a.i.i ]
  %.lcssa.i.i = phi i32 [ %291, %block_0x11f.block_0x14e_crit_edge.i.i ], [ %273, %block_0x10a.i.i ]
  %293 = icmp ult i32 %.sink15.lcssa.i.i, %.lcssa100.i.i, !mcsema_real_eip !77
  %294 = icmp eq i32 %.sink15.lcssa.i.i, %.lcssa100.i.i
  %295 = trunc i32 %.lcssa99.i.i to i8, !mcsema_real_eip !77
  %296 = tail call i8 @llvm.ctpop.i8(i8 %295) #2, !mcsema_real_eip !77
  %297 = and i8 %296, 1
  %298 = icmp eq i8 %297, 0
  %299 = xor i32 %.lcssa98.i.i, %.lcssa100.i.i, !mcsema_real_eip !77
  %300 = and i32 %299, 16, !mcsema_real_eip !77
  %301 = icmp ne i32 %300, 0, !mcsema_real_eip !77
  %RDX_val.0.i.i = zext i32 %RDX_val.0.in.lcssa.i.i to i64
  %302 = zext i32 %.lcssa.i.i to i64
  %303 = load i64, i64* %145, align 8, !mcsema_real_eip !85
  %304 = load i64, i64* %143, align 8, !mcsema_real_eip !86
  store i64 %302, i64* %RAX.i, align 8, !mcsema_real_eip !87
  store i64 %303, i64* %RBX.i, align 8, !mcsema_real_eip !87
  store i64 %RCX_val.0.lcssa.i.i, i64* %RCX.i, align 8, !mcsema_real_eip !87
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !87
  store i64 %RSI_val.3.lcssa.i.i, i64* %RSI.i, align 8, !mcsema_real_eip !87
  store i64 %173, i64* %RDI.i, align 8, !mcsema_real_eip !87
  store i64 %108, i64* %RSP.i, align 8, !mcsema_real_eip !87
  store i64 %304, i64* %RBP.i, align 8, !mcsema_real_eip !87
  store i64 %173, i64* %R8.i, align 8, !mcsema_real_eip !87
  store i64 10, i64* %R9.i, align 8, !mcsema_real_eip !87
  store i64 %147, i64* %R10.i, align 8, !mcsema_real_eip !87
  store i64 %148, i64* %R11.i, align 8, !mcsema_real_eip !87
  store i64 %4, i64* %R12.i, align 8, !mcsema_real_eip !87
  store i64 %5, i64* %R13.i, align 8, !mcsema_real_eip !87
  store i64 %134, i64* %R14.i, align 8, !mcsema_real_eip !87
  store i64 %7, i64* %R15.i, align 8, !mcsema_real_eip !87
  store i64 %8, i64* %RIP.i, align 8, !mcsema_real_eip !87
  store i1 %293, i1* %CF.i, align 1, !mcsema_real_eip !87
  store i1 %298, i1* %PF.i, align 1, !mcsema_real_eip !87
  store i1 %301, i1* %AF.i, align 1, !mcsema_real_eip !87
  store i1 %294, i1* %ZF.i, align 1, !mcsema_real_eip !87
  store i1 %.lcssa97.i.i, i1* %SF.i, align 1, !mcsema_real_eip !87
  store i1 %.lcssa96.i.i, i1* %OF.i, align 1, !mcsema_real_eip !87
  store i1 %9, i1* %DF.i, align 1, !mcsema_real_eip !87
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* nonnull %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !87
  store i1 %12, i1* %FPU_B.i, align 1, !mcsema_real_eip !87
  store i1 %13, i1* %FPU_C3.i, align 1, !mcsema_real_eip !87
  store i3 %14, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !87
  store i1 %15, i1* %FPU_C2.i, align 1, !mcsema_real_eip !87
  store i1 %16, i1* %FPU_C1.i, align 1, !mcsema_real_eip !87
  store i1 %17, i1* %FPU_C0.i, align 1, !mcsema_real_eip !87
  store i1 %18, i1* %FPU_ES.i, align 1, !mcsema_real_eip !87
  store i1 %19, i1* %FPU_SF.i, align 1, !mcsema_real_eip !87
  store i1 %20, i1* %FPU_PE.i, align 1, !mcsema_real_eip !87
  store i1 %21, i1* %FPU_UE.i, align 1, !mcsema_real_eip !87
  store i1 %22, i1* %FPU_OE.i, align 1, !mcsema_real_eip !87
  store i1 %23, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !87
  store i1 %24, i1* %FPU_DE.i, align 1, !mcsema_real_eip !87
  store i1 %25, i1* %FPU_IE.i, align 1, !mcsema_real_eip !87
  store i1 %26, i1* %FPU_X.i, align 1, !mcsema_real_eip !87
  store i2 %27, i2* %FPU_RC.i, align 1, !mcsema_real_eip !87
  store i2 %28, i2* %FPU_PC.i, align 1, !mcsema_real_eip !87
  store i1 %29, i1* %FPU_PM.i, align 1, !mcsema_real_eip !87
  store i1 %30, i1* %FPU_UM.i, align 1, !mcsema_real_eip !87
  store i1 %31, i1* %FPU_OM.i, align 1, !mcsema_real_eip !87
  store i1 %32, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !87
  store i1 %33, i1* %FPU_DM.i, align 1, !mcsema_real_eip !87
  store i1 %34, i1* %FPU_IM.i, align 1, !mcsema_real_eip !87
  store i64 %37, i64* %36, align 4
  store i16 %38, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !87
  store i64 %39, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !87
  store i16 %40, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !87
  store i64 %41, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !87
  store i11 %42, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !87
  store i128 %43, i128* %XMM0.i, align 1, !mcsema_real_eip !87
  store i128 %44, i128* %XMM1.i, align 1, !mcsema_real_eip !87
  store i128 %45, i128* %XMM2.i, align 1, !mcsema_real_eip !87
  store i128 %46, i128* %XMM3.i, align 1, !mcsema_real_eip !87
  store i128 %47, i128* %XMM4.i, align 1, !mcsema_real_eip !87
  store i128 %48, i128* %XMM5.i, align 1, !mcsema_real_eip !87
  store i128 %49, i128* %XMM6.i, align 1, !mcsema_real_eip !87
  store i128 %50, i128* %XMM7.i, align 1, !mcsema_real_eip !87
  store i128 %51, i128* %XMM8.i, align 1, !mcsema_real_eip !87
  store i128 %52, i128* %XMM9.i, align 1, !mcsema_real_eip !87
  store i128 %53, i128* %XMM10.i, align 1, !mcsema_real_eip !87
  store i128 %54, i128* %XMM11.i, align 1, !mcsema_real_eip !87
  store i128 %55, i128* %XMM12.i, align 1, !mcsema_real_eip !87
  store i128 %56, i128* %XMM13.i, align 1, !mcsema_real_eip !87
  store i128 %57, i128* %XMM14.i, align 1, !mcsema_real_eip !87
  store i128 %58, i128* %XMM15.i, align 1, !mcsema_real_eip !87
  store i64 %59, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !87
  store i64 %60, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !87
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %11, i32 128, i32 4, i1 false), !mcsema_real_eip !30
  %uadd215.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %108, i64 144)
  %305 = extractvalue { i64, i1 } %uadd215.i, 0
  %306 = xor i64 %305, %108, !mcsema_real_eip !88
  %307 = and i64 %306, 16
  %308 = icmp eq i64 %307, 0
  %309 = icmp slt i64 %305, 0
  %310 = icmp eq i64 %305, 0, !mcsema_real_eip !88
  %311 = add i64 %2, 9223372036854775640
  %312 = and i64 %306, %311, !mcsema_real_eip !88
  %313 = icmp slt i64 %312, 0
  %314 = trunc i64 %305 to i8, !mcsema_real_eip !88
  %315 = tail call i8 @llvm.ctpop.i8(i8 %314), !mcsema_real_eip !88
  %316 = and i8 %315, 1
  %317 = icmp eq i8 %316, 0
  %318 = extractvalue { i64, i1 } %uadd215.i, 1
  %319 = inttoptr i64 %305 to i64*, !mcsema_real_eip !89
  %320 = load i64, i64* %319, align 8, !mcsema_real_eip !89
  %321 = add i64 %305, 8, !mcsema_real_eip !89
  %322 = inttoptr i64 %321 to i64*, !mcsema_real_eip !90
  %323 = load i64, i64* %322, align 8, !mcsema_real_eip !90
  %324 = add i64 %305, 16, !mcsema_real_eip !90
  %325 = inttoptr i64 %324 to i64*, !mcsema_real_eip !91
  %326 = load i64, i64* %325, align 8, !mcsema_real_eip !91
  %327 = add i64 %305, 32, !mcsema_real_eip !92
  store i64 %302, i64* %RAX.i, align 8, !mcsema_real_eip !92
  store i64 %320, i64* %RBX.i, align 8, !mcsema_real_eip !92
  store i64 %RCX_val.0.lcssa.i.i, i64* %RCX.i, align 8, !mcsema_real_eip !92
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !92
  store i64 %RSI_val.3.lcssa.i.i, i64* %RSI.i, align 8, !mcsema_real_eip !92
  store i64 %173, i64* %RDI.i, align 8, !mcsema_real_eip !92
  store i64 %327, i64* %RSP.i, align 8, !mcsema_real_eip !92
  store i64 %326, i64* %RBP.i, align 8, !mcsema_real_eip !92
  store i64 %173, i64* %R8.i, align 8, !mcsema_real_eip !92
  store i64 10, i64* %R9.i, align 8, !mcsema_real_eip !92
  store i64 %147, i64* %R10.i, align 8, !mcsema_real_eip !92
  store i64 %148, i64* %R11.i, align 8, !mcsema_real_eip !92
  store i64 %4, i64* %R12.i, align 8, !mcsema_real_eip !92
  store i64 %5, i64* %R13.i, align 8, !mcsema_real_eip !92
  store i64 %323, i64* %R14.i, align 8, !mcsema_real_eip !92
  store i64 %7, i64* %R15.i, align 8, !mcsema_real_eip !92
  store i64 %8, i64* %RIP.i, align 8, !mcsema_real_eip !92
  store i1 %318, i1* %CF.i, align 1, !mcsema_real_eip !92
  store i1 %317, i1* %PF.i, align 1, !mcsema_real_eip !92
  store i1 %308, i1* %AF.i, align 1, !mcsema_real_eip !92
  store i1 %310, i1* %ZF.i, align 1, !mcsema_real_eip !92
  store i1 %309, i1* %SF.i, align 1, !mcsema_real_eip !92
  store i1 %313, i1* %OF.i, align 1, !mcsema_real_eip !92
  store i1 %9, i1* %DF.i, align 1, !mcsema_real_eip !92
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !92
  store i1 %12, i1* %FPU_B.i, align 1, !mcsema_real_eip !92
  store i1 %13, i1* %FPU_C3.i, align 1, !mcsema_real_eip !92
  store i3 %14, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !92
  store i1 %15, i1* %FPU_C2.i, align 1, !mcsema_real_eip !92
  store i1 %16, i1* %FPU_C1.i, align 1, !mcsema_real_eip !92
  store i1 %17, i1* %FPU_C0.i, align 1, !mcsema_real_eip !92
  store i1 %18, i1* %FPU_ES.i, align 1, !mcsema_real_eip !92
  store i1 %19, i1* %FPU_SF.i, align 1, !mcsema_real_eip !92
  store i1 %20, i1* %FPU_PE.i, align 1, !mcsema_real_eip !92
  store i1 %21, i1* %FPU_UE.i, align 1, !mcsema_real_eip !92
  store i1 %22, i1* %FPU_OE.i, align 1, !mcsema_real_eip !92
  store i1 %23, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !92
  store i1 %24, i1* %FPU_DE.i, align 1, !mcsema_real_eip !92
  store i1 %25, i1* %FPU_IE.i, align 1, !mcsema_real_eip !92
  store i1 %26, i1* %FPU_X.i, align 1, !mcsema_real_eip !92
  store i2 %27, i2* %FPU_RC.i, align 1, !mcsema_real_eip !92
  store i2 %28, i2* %FPU_PC.i, align 1, !mcsema_real_eip !92
  store i1 %29, i1* %FPU_PM.i, align 1, !mcsema_real_eip !92
  store i1 %30, i1* %FPU_UM.i, align 1, !mcsema_real_eip !92
  store i1 %31, i1* %FPU_OM.i, align 1, !mcsema_real_eip !92
  store i1 %32, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !92
  store i1 %33, i1* %FPU_DM.i, align 1, !mcsema_real_eip !92
  store i1 %34, i1* %FPU_IM.i, align 1, !mcsema_real_eip !92
  store i64 %37, i64* %36, align 4
  store i16 %38, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !92
  store i64 %39, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !92
  store i16 %40, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !92
  store i64 %41, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !92
  store i11 %42, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !92
  store i128 %43, i128* %XMM0.i, align 1, !mcsema_real_eip !92
  store i128 %44, i128* %XMM1.i, align 1, !mcsema_real_eip !92
  store i128 %45, i128* %XMM2.i, align 1, !mcsema_real_eip !92
  store i128 %46, i128* %XMM3.i, align 1, !mcsema_real_eip !92
  store i128 %47, i128* %XMM4.i, align 1, !mcsema_real_eip !92
  store i128 %48, i128* %XMM5.i, align 1, !mcsema_real_eip !92
  store i128 %49, i128* %XMM6.i, align 1, !mcsema_real_eip !92
  store i128 %50, i128* %XMM7.i, align 1, !mcsema_real_eip !92
  store i128 %51, i128* %XMM8.i, align 1, !mcsema_real_eip !92
  store i128 %52, i128* %XMM9.i, align 1, !mcsema_real_eip !92
  store i128 %53, i128* %XMM10.i, align 1, !mcsema_real_eip !92
  store i128 %54, i128* %XMM11.i, align 1, !mcsema_real_eip !92
  store i128 %55, i128* %XMM12.i, align 1, !mcsema_real_eip !92
  store i128 %56, i128* %XMM13.i, align 1, !mcsema_real_eip !92
  store i128 %57, i128* %XMM14.i, align 1, !mcsema_real_eip !92
  store i128 %58, i128* %XMM15.i, align 1, !mcsema_real_eip !92
  store i64 %59, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !92
  store i64 %60, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !92
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
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 352}
!4 = !{i64 356}
!5 = !{i64 358}
!6 = !{i64 366}
!7 = !{i64 373}
!8 = !{i64 408}
!9 = !{i64 412}
!10 = !{i64 416}
!11 = !{i64 394}
!12 = !{i64 446}
!13 = !{i64 450}
!14 = !{i64 455}
!15 = !{i64 487}
!16 = !{i64 495}
!17 = !{i64 498}
!18 = !{i64 466}
!19 = !{i64 473}
!20 = !{i64 523}
!21 = !{i64 546}
!22 = !{i64 557}
!23 = !{i64 564}
!24 = !{i64 571}
!25 = !{i64 578}
!26 = !{i64 581}
!27 = !{i64 588}
!28 = !{i64 597}
!29 = !{i64 602}
!30 = !{i64 607}
!31 = !{i64 4}
!32 = !{i64 5}
!33 = !{i64 17}
!34 = !{i64 20}
!35 = !{i64 23}
!36 = !{i64 27}
!37 = !{i64 31}
!38 = !{i64 35}
!39 = !{i64 39}
!40 = !{i64 43}
!41 = !{i64 46}
!42 = !{i64 50}
!43 = !{i64 54}
!44 = !{i64 58}
!45 = !{i64 65}
!46 = !{i64 75}
!47 = !{i64 89}
!48 = !{i64 92}
!49 = !{i64 98}
!50 = !{i64 102}
!51 = !{i64 106}
!52 = !{i64 114}
!53 = !{i64 117}
!54 = !{i64 112}
!55 = !{i64 137}
!56 = !{i64 144}
!57 = !{i64 157}
!58 = !{i64 160}
!59 = !{i64 166}
!60 = !{i64 170}
!61 = !{i64 174}
!62 = !{i64 182}
!63 = !{i64 185}
!64 = !{i64 180}
!65 = !{i64 201}
!66 = !{i64 209}
!67 = !{i64 222}
!68 = !{i64 225}
!69 = !{i64 231}
!70 = !{i64 235}
!71 = !{i64 239}
!72 = !{i64 247}
!73 = !{i64 250}
!74 = !{i64 245}
!75 = !{i64 270}
!76 = !{i64 277}
!77 = !{i64 290}
!78 = !{i64 293}
!79 = !{i64 299}
!80 = !{i64 303}
!81 = !{i64 307}
!82 = !{i64 315}
!83 = !{i64 318}
!84 = !{i64 313}
!85 = !{i64 337}
!86 = !{i64 338}
!87 = !{i64 339}
!88 = !{i64 612}
!89 = !{i64 619}
!90 = !{i64 620}
!91 = !{i64 622}
!92 = !{i64 623}
