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
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %42 = load i128, i128* %XMM0.i, align 1
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %43 = load i128, i128* %XMM1.i, align 1
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %44 = load i128, i128* %XMM2.i, align 1
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %45 = load i128, i128* %XMM3.i, align 1
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %46 = load i128, i128* %XMM4.i, align 1
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %47 = load i128, i128* %XMM5.i, align 1
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %48 = load i128, i128* %XMM6.i, align 1
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %49 = load i128, i128* %XMM7.i, align 1
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %50 = load i128, i128* %XMM8.i, align 1
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %51 = load i128, i128* %XMM9.i, align 1
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %52 = load i128, i128* %XMM10.i, align 1
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %53 = load i128, i128* %XMM11.i, align 1
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %54 = load i128, i128* %XMM12.i, align 1
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %55 = load i128, i128* %XMM13.i, align 1
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %56 = load i128, i128* %XMM14.i, align 1
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %57 = load i128, i128* %XMM15.i, align 1
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %58 = load i64, i64* %STACK_BASE.i, align 8
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %59 = load i64, i64* %STACK_LIMIT.i, align 8
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
  %72 = add i64 %2, -72
  br label %block_0x16d.i

block_0x189.i:                                    ; preds = %block_0x16d.i
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !3
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !3
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %73 = add i64 %2, -88, !mcsema_real_eip !9
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !9
  store i64 %68, i64* %74, align 8, !mcsema_real_eip !9
  %75 = tail call x86_64_sysvcc i64 @malloc(i64 40), !mcsema_real_eip !10
  %76 = add i64 %2, -96, !mcsema_real_eip !11
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !11
  store i64 %75, i64* %77, align 8, !mcsema_real_eip !11
  %78 = add i64 %2, -100, !mcsema_real_eip !12
  %79 = inttoptr i64 %78 to i32*
  store i32 0, i32* %79, align 4, !mcsema_real_eip !12
  br label %block_0x1b2.i

block_0x16d.i:                                    ; preds = %block_0x16d.i, %driverBlockRaw
  %80 = phi i32 [ 0, %driverBlockRaw ], [ %87, %block_0x16d.i ]
  %81 = add i32 %80, 1
  %82 = sext i32 %80 to i64, !mcsema_real_eip !13
  %83 = shl nsw i64 %82, 2
  %84 = add i64 %83, %72, !mcsema_real_eip !14
  %85 = inttoptr i64 %84 to i32*
  store i32 %81, i32* %85, align 4, !mcsema_real_eip !14
  %86 = load i32, i32* %71, align 4, !mcsema_real_eip !15
  %87 = add i32 %86, 1
  store i32 %87, i32* %71, align 4, !mcsema_real_eip !16
  %88 = add i32 %86, -9
  %89 = icmp slt i32 %88, 0
  %90 = sub i32 8, %86
  %91 = and i32 %87, %90
  %92 = icmp slt i32 %91, 0
  %tmp210.i = xor i1 %89, %92
  br i1 %tmp210.i, label %block_0x16d.i, label %block_0x189.i, !mcsema_real_eip !17

block_0x1d1.i:                                    ; preds = %block_0x1b2.i
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !3
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !3
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %93 = add i64 %2, -168
  %94 = icmp ult i32 %296, 10, !mcsema_real_eip !18
  %95 = icmp eq i32 %297, 0, !mcsema_real_eip !18
  %96 = trunc i32 %297 to i8, !mcsema_real_eip !18
  %97 = tail call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !18
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  %100 = and i32 %298, 16, !mcsema_real_eip !18
  %101 = icmp ne i32 %100, 0, !mcsema_real_eip !18
  %102 = load i32, i32* %69, align 4, !mcsema_real_eip !19
  %103 = zext i32 %102 to i64
  %104 = load i64, i64* %74, align 8
  %105 = load i64, i64* %77, align 8
  %106 = add i64 %2, -112, !mcsema_real_eip !20
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !20
  store i64 %105, i64* %107, align 8, !mcsema_real_eip !20
  %108 = add i64 %2, -120, !mcsema_real_eip !21
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !21
  store i64 %72, i64* %109, align 8, !mcsema_real_eip !21
  %110 = add i64 %2, -124, !mcsema_real_eip !22
  %111 = inttoptr i64 %110 to i32*
  store i32 %102, i32* %111, align 4, !mcsema_real_eip !22
  %112 = add i64 %2, -136, !mcsema_real_eip !23
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !23
  store i64 %104, i64* %113, align 8, !mcsema_real_eip !23
  %114 = load i32, i32* %111, align 4, !mcsema_real_eip !24
  %115 = zext i32 %114 to i64, !mcsema_real_eip !24
  %116 = inttoptr i64 %93 to i32*
  store i32 %114, i32* %116, align 4, !mcsema_real_eip !25
  %117 = load i64, i64* %109, align 8
  %118 = add i64 %2, -160, !mcsema_real_eip !26
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !26
  store i64 %117, i64* %119, align 8, !mcsema_real_eip !26
  %120 = load i64, i64* %113, align 8
  %121 = add i64 %2, -152, !mcsema_real_eip !27
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !27
  store i64 %120, i64* %122, align 8, !mcsema_real_eip !27
  %123 = add i64 %2, -144, !mcsema_real_eip !28
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !28
  store i64 %105, i64* %124, align 8, !mcsema_real_eip !28
  %125 = add i64 %2, -176
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !29
  store i64 -4981261766360305936, i64* %126, align 8, !mcsema_real_eip !29
  store i64 %115, i64* %RAX.i, align 8, !mcsema_real_eip !29
  store i64 %117, i64* %RBX.i, align 8, !mcsema_real_eip !29
  store i64 %105, i64* %RCX.i, align 8, !mcsema_real_eip !29
  store i64 %104, i64* %RDX.i, align 8, !mcsema_real_eip !29
  store i64 %72, i64* %RSI.i, align 8, !mcsema_real_eip !29
  store i64 %103, i64* %RDI.i, align 8, !mcsema_real_eip !29
  store i64 %125, i64* %RSP.i, align 8, !mcsema_real_eip !29
  store i64 %60, i64* %RBP.i, align 8, !mcsema_real_eip !29
  %127 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 10, i64 10>, <2 x i64>* %127, align 8
  store i64 %105, i64* %R10.i, align 8, !mcsema_real_eip !29
  store i64 %105, i64* %R11.i, align 8, !mcsema_real_eip !29
  store i64 %4, i64* %R12.i, align 8, !mcsema_real_eip !29
  store i64 %5, i64* %R13.i, align 8, !mcsema_real_eip !29
  store i64 %120, i64* %R14.i, align 8, !mcsema_real_eip !29
  store i64 %7, i64* %R15.i, align 8, !mcsema_real_eip !29
  store i64 %8, i64* %RIP.i, align 8, !mcsema_real_eip !29
  store i1 %94, i1* %CF.i, align 1, !mcsema_real_eip !29
  store i1 %99, i1* %PF.i, align 1, !mcsema_real_eip !29
  store i1 %101, i1* %AF.i, align 1, !mcsema_real_eip !29
  store i1 %95, i1* %ZF.i, align 1, !mcsema_real_eip !29
  store i1 %299, i1* %SF.i, align 1, !mcsema_real_eip !29
  store i1 %301, i1* %OF.i, align 1, !mcsema_real_eip !29
  store i1 %9, i1* %DF.i, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !29
  store i1 %12, i1* %FPU_B.i, align 1, !mcsema_real_eip !29
  store i1 %13, i1* %FPU_C3.i, align 1, !mcsema_real_eip !29
  store i3 %14, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !29
  store i1 %15, i1* %FPU_C2.i, align 1, !mcsema_real_eip !29
  store i1 %16, i1* %FPU_C1.i, align 1, !mcsema_real_eip !29
  store i1 %17, i1* %FPU_C0.i, align 1, !mcsema_real_eip !29
  store i1 %18, i1* %FPU_ES.i, align 1, !mcsema_real_eip !29
  store i1 %19, i1* %FPU_SF.i, align 1, !mcsema_real_eip !29
  store i1 %20, i1* %FPU_PE.i, align 1, !mcsema_real_eip !29
  store i1 %21, i1* %FPU_UE.i, align 1, !mcsema_real_eip !29
  store i1 %22, i1* %FPU_OE.i, align 1, !mcsema_real_eip !29
  store i1 %23, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !29
  store i1 %24, i1* %FPU_DE.i, align 1, !mcsema_real_eip !29
  store i1 %25, i1* %FPU_IE.i, align 1, !mcsema_real_eip !29
  store i1 %26, i1* %FPU_X.i, align 1, !mcsema_real_eip !29
  store i2 %27, i2* %FPU_RC.i, align 1, !mcsema_real_eip !29
  store i2 %28, i2* %FPU_PC.i, align 1, !mcsema_real_eip !29
  store i1 %29, i1* %FPU_PM.i, align 1, !mcsema_real_eip !29
  store i1 %30, i1* %FPU_UM.i, align 1, !mcsema_real_eip !29
  store i1 %31, i1* %FPU_OM.i, align 1, !mcsema_real_eip !29
  store i1 %32, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !29
  store i1 %33, i1* %FPU_DM.i, align 1, !mcsema_real_eip !29
  store i1 %34, i1* %FPU_IM.i, align 1, !mcsema_real_eip !29
  store i64 %37, i64* %36, align 4
  store i16 %38, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !29
  store i64 %39, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !29
  store i16 %40, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !29
  store i64 %41, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !29
  store i128 %42, i128* %XMM0.i, align 1, !mcsema_real_eip !29
  store i128 %43, i128* %XMM1.i, align 1, !mcsema_real_eip !29
  store i128 %44, i128* %XMM2.i, align 1, !mcsema_real_eip !29
  store i128 %45, i128* %XMM3.i, align 1, !mcsema_real_eip !29
  store i128 %46, i128* %XMM4.i, align 1, !mcsema_real_eip !29
  store i128 %47, i128* %XMM5.i, align 1, !mcsema_real_eip !29
  store i128 %48, i128* %XMM6.i, align 1, !mcsema_real_eip !29
  store i128 %49, i128* %XMM7.i, align 1, !mcsema_real_eip !29
  store i128 %50, i128* %XMM8.i, align 1, !mcsema_real_eip !29
  store i128 %51, i128* %XMM9.i, align 1, !mcsema_real_eip !29
  store i128 %52, i128* %XMM10.i, align 1, !mcsema_real_eip !29
  store i128 %53, i128* %XMM11.i, align 1, !mcsema_real_eip !29
  store i128 %54, i128* %XMM12.i, align 1, !mcsema_real_eip !29
  store i128 %55, i128* %XMM13.i, align 1, !mcsema_real_eip !29
  store i128 %56, i128* %XMM14.i, align 1, !mcsema_real_eip !29
  store i128 %57, i128* %XMM15.i, align 1, !mcsema_real_eip !29
  store i64 %58, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !29
  store i64 %59, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !29
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast.i, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false)
  %128 = add i64 %2, -184
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !2
  store i64 %60, i64* %129, align 8, !mcsema_real_eip !2
  %130 = add i64 %2, -192
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !30
  store i64 %117, i64* %131, align 8, !mcsema_real_eip !30
  %132 = load i64, i64* %124, align 8, !mcsema_real_eip !31
  %133 = load i64, i64* %122, align 8
  %134 = load i64, i64* %119, align 8
  %135 = load i32, i32* %116, align 4, !mcsema_real_eip !32
  %136 = add i64 %2, -196, !mcsema_real_eip !33
  %137 = inttoptr i64 %136 to i32*
  store i32 %102, i32* %137, align 4, !mcsema_real_eip !33
  %138 = add i64 %2, -208, !mcsema_real_eip !34
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !34
  store i64 %72, i64* %139, align 8, !mcsema_real_eip !34
  %140 = add i64 %2, -216, !mcsema_real_eip !35
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !35
  store i64 %104, i64* %141, align 8, !mcsema_real_eip !35
  %142 = add i64 %2, -224, !mcsema_real_eip !36
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !36
  store i64 %105, i64* %143, align 8, !mcsema_real_eip !36
  %144 = add i64 %2, -228, !mcsema_real_eip !37
  %145 = inttoptr i64 %144 to i32*
  store i32 10, i32* %145, align 4, !mcsema_real_eip !37
  %146 = add i64 %2, -232, !mcsema_real_eip !38
  %147 = inttoptr i64 %146 to i32*
  store i32 10, i32* %147, align 4, !mcsema_real_eip !38
  %148 = add i64 %2, -236, !mcsema_real_eip !39
  %149 = inttoptr i64 %148 to i32*
  store i32 %135, i32* %149, align 4, !mcsema_real_eip !39
  %150 = add i64 %2, -248, !mcsema_real_eip !40
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !40
  store i64 %134, i64* %151, align 8, !mcsema_real_eip !40
  %152 = add i64 %2, -256, !mcsema_real_eip !41
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !41
  store i64 %133, i64* %153, align 8, !mcsema_real_eip !41
  %154 = add i64 %2, -264, !mcsema_real_eip !42
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !42
  store i64 %132, i64* %155, align 8, !mcsema_real_eip !42
  %156 = add i64 %2, -268, !mcsema_real_eip !43
  %157 = inttoptr i64 %156 to i32*
  store i32 0, i32* %157, align 4, !mcsema_real_eip !43
  %158 = load i32, i32* %137, align 4, !mcsema_real_eip !44
  %159 = zext i32 %158 to i64
  store i32 %158, i32* %157, align 4, !mcsema_real_eip !45
  %160 = add i64 %2, -272, !mcsema_real_eip !46
  %161 = inttoptr i64 %160 to i32*
  store i32 0, i32* %161, align 4, !mcsema_real_eip !46
  %162 = load i32, i32* %145, align 4, !mcsema_real_eip !47
  %163 = sub i32 0, %162, !mcsema_real_eip !47
  %164 = icmp slt i32 %163, 0
  %165 = and i32 %162, %163, !mcsema_real_eip !47
  %166 = icmp slt i32 %165, 0
  %tmp.i.i = xor i1 %164, %166
  br i1 %tmp.i.i, label %block_0x5d.i.i.preheader, label %block_0x7c.i.i, !mcsema_real_eip !48

block_0x5d.i.i.preheader:                         ; preds = %block_0x1d1.i
  br label %block_0x5d.i.i

block_0x7c.loopexit.i.i:                          ; preds = %block_0x5d.i.i
  %167 = zext i32 %188 to i64, !mcsema_real_eip !49
  br label %block_0x7c.i.i

block_0x7c.i.i:                                   ; preds = %block_0x7c.loopexit.i.i, %block_0x1d1.i
  %RDX_val.0.i.i = phi i64 [ %104, %block_0x1d1.i ], [ %167, %block_0x7c.loopexit.i.i ]
  %168 = inttoptr i64 %140 to i32**
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %169, align 4, !mcsema_real_eip !50
  %171 = load i32, i32* %157, align 4, !mcsema_real_eip !51
  %172 = add i32 %171, %170
  store i32 %172, i32* %157, align 4, !mcsema_real_eip !52
  %173 = add i64 %2, -276, !mcsema_real_eip !53
  %174 = inttoptr i64 %173 to i32*
  store i32 0, i32* %174, align 4, !mcsema_real_eip !53
  %175 = load i32, i32* %147, align 4, !mcsema_real_eip !54
  %176 = sub i32 0, %175, !mcsema_real_eip !54
  %177 = icmp slt i32 %176, 0
  %178 = and i32 %175, %176, !mcsema_real_eip !54
  %179 = icmp slt i32 %178, 0
  %tmp74.i.i = xor i1 %177, %179
  br i1 %tmp74.i.i, label %block_0x9b.i.i.preheader, label %block_0xba.i.i, !mcsema_real_eip !55

block_0x9b.i.i.preheader:                         ; preds = %block_0x7c.i.i
  br label %block_0x9b.i.i

block_0x5d.i.i:                                   ; preds = %block_0x5d.i.i.preheader, %block_0x5d.i.i
  %180 = phi i32 [ %190, %block_0x5d.i.i ], [ 0, %block_0x5d.i.i.preheader ]
  %181 = sext i32 %180 to i64, !mcsema_real_eip !56
  %182 = load i64, i64* %139, align 8, !mcsema_real_eip !57
  %183 = shl nsw i64 %181, 2
  %184 = add i64 %183, %182, !mcsema_real_eip !58
  %185 = inttoptr i64 %184 to i32*
  %186 = load i32, i32* %185, align 4, !mcsema_real_eip !58
  %187 = load i32, i32* %157, align 4, !mcsema_real_eip !49
  %188 = add i32 %187, %186
  store i32 %188, i32* %157, align 4, !mcsema_real_eip !59
  %189 = load i32, i32* %161, align 4, !mcsema_real_eip !60
  %190 = add i32 %189, 1
  store i32 %190, i32* %161, align 4, !mcsema_real_eip !61
  %191 = load i32, i32* %145, align 4, !mcsema_real_eip !47
  %192 = sub i32 %190, %191, !mcsema_real_eip !47
  %193 = xor i32 %192, %190, !mcsema_real_eip !47
  %194 = icmp slt i32 %192, 0
  %195 = xor i32 %191, %190, !mcsema_real_eip !47
  %196 = and i32 %193, %195, !mcsema_real_eip !47
  %197 = icmp slt i32 %196, 0
  %tmp72.i.i = xor i1 %194, %197
  br i1 %tmp72.i.i, label %block_0x5d.i.i, label %block_0x7c.loopexit.i.i, !mcsema_real_eip !48

block_0xba.loopexit.i.i:                          ; preds = %block_0x9b.i.i
  %198 = zext i32 %217 to i64, !mcsema_real_eip !62
  br label %block_0xba.i.i

block_0xba.i.i:                                   ; preds = %block_0xba.loopexit.i.i, %block_0x7c.i.i
  %RDX_val.1.i.i = phi i64 [ %RDX_val.0.i.i, %block_0x7c.i.i ], [ %198, %block_0xba.loopexit.i.i ]
  %199 = load i32, i32* %149, align 4, !mcsema_real_eip !63
  %200 = load i32, i32* %157, align 4, !mcsema_real_eip !64
  %201 = add i32 %200, %199
  store i32 %201, i32* %157, align 4, !mcsema_real_eip !65
  %202 = add i64 %2, -280, !mcsema_real_eip !66
  %203 = inttoptr i64 %202 to i32*
  store i32 0, i32* %203, align 4, !mcsema_real_eip !66
  %204 = load i32, i32* %145, align 4, !mcsema_real_eip !67
  %205 = sub i32 0, %204, !mcsema_real_eip !67
  %206 = icmp slt i32 %205, 0
  %207 = and i32 %204, %205, !mcsema_real_eip !67
  %208 = icmp slt i32 %207, 0
  %tmp79.i.i = xor i1 %206, %208
  br i1 %tmp79.i.i, label %block_0xd6.i.i.preheader, label %block_0xf5.i.i, !mcsema_real_eip !68

block_0xd6.i.i.preheader:                         ; preds = %block_0xba.i.i
  br label %block_0xd6.i.i

block_0x9b.i.i:                                   ; preds = %block_0x9b.i.i.preheader, %block_0x9b.i.i
  %209 = phi i32 [ %219, %block_0x9b.i.i ], [ 0, %block_0x9b.i.i.preheader ]
  %210 = sext i32 %209 to i64, !mcsema_real_eip !69
  %211 = load i64, i64* %143, align 8, !mcsema_real_eip !70
  %212 = shl nsw i64 %210, 2
  %213 = add i64 %212, %211, !mcsema_real_eip !71
  %214 = inttoptr i64 %213 to i32*
  %215 = load i32, i32* %214, align 4, !mcsema_real_eip !71
  %216 = load i32, i32* %157, align 4, !mcsema_real_eip !62
  %217 = add i32 %216, %215
  store i32 %217, i32* %157, align 4, !mcsema_real_eip !72
  %218 = load i32, i32* %174, align 4, !mcsema_real_eip !73
  %219 = add i32 %218, 1
  store i32 %219, i32* %174, align 4, !mcsema_real_eip !74
  %220 = load i32, i32* %147, align 4, !mcsema_real_eip !54
  %221 = sub i32 %219, %220, !mcsema_real_eip !54
  %222 = xor i32 %221, %219, !mcsema_real_eip !54
  %223 = icmp slt i32 %221, 0
  %224 = xor i32 %220, %219, !mcsema_real_eip !54
  %225 = and i32 %222, %224, !mcsema_real_eip !54
  %226 = icmp slt i32 %225, 0
  %tmp77.i.i = xor i1 %223, %226
  br i1 %tmp77.i.i, label %block_0x9b.i.i, label %block_0xba.loopexit.i.i, !mcsema_real_eip !55

block_0xf5.loopexit.i.i:                          ; preds = %block_0xd6.i.i
  %227 = zext i32 %254 to i64, !mcsema_real_eip !75
  br label %block_0xf5.i.i

block_0xf5.i.i:                                   ; preds = %block_0xf5.loopexit.i.i, %block_0xba.i.i
  %RDX_val.2.i.i = phi i64 [ %RDX_val.1.i.i, %block_0xba.i.i ], [ %227, %block_0xf5.loopexit.i.i ]
  %228 = inttoptr i64 %152 to i32**
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %229, align 4, !mcsema_real_eip !76
  %231 = load i32, i32* %157, align 4, !mcsema_real_eip !77
  %232 = add i32 %231, %230
  %233 = zext i32 %232 to i64, !mcsema_real_eip !77
  store i32 %232, i32* %157, align 4, !mcsema_real_eip !78
  %234 = add i64 %2, -284, !mcsema_real_eip !79
  %235 = inttoptr i64 %234 to i32*
  store i32 0, i32* %235, align 4, !mcsema_real_eip !79
  %236 = load i32, i32* %147, align 4, !mcsema_real_eip !80
  %237 = sub i32 0, %236, !mcsema_real_eip !80
  %238 = xor i32 %236, %237, !mcsema_real_eip !80
  %239 = trunc i32 %237 to i8, !mcsema_real_eip !80
  %240 = tail call i8 @llvm.ctpop.i8(i8 %239) #2, !mcsema_real_eip !80
  %241 = icmp eq i32 %236, 0
  %242 = icmp slt i32 %237, 0
  %243 = icmp ne i32 %236, 0
  %244 = and i32 %236, %237, !mcsema_real_eip !80
  %245 = icmp slt i32 %244, 0
  %tmp84.i.i = xor i1 %242, %245
  br i1 %tmp84.i.i, label %block_0x114.i.i.preheader, label %sub_140.exit, !mcsema_real_eip !81

block_0x114.i.i.preheader:                        ; preds = %block_0xf5.i.i
  br label %block_0x114.i.i

block_0xd6.i.i:                                   ; preds = %block_0xd6.i.i.preheader, %block_0xd6.i.i
  %246 = phi i32 [ %256, %block_0xd6.i.i ], [ 0, %block_0xd6.i.i.preheader ]
  %247 = sext i32 %246 to i64, !mcsema_real_eip !82
  %248 = load i64, i64* %151, align 8, !mcsema_real_eip !83
  %249 = shl nsw i64 %247, 2
  %250 = add i64 %249, %248, !mcsema_real_eip !84
  %251 = inttoptr i64 %250 to i32*
  %252 = load i32, i32* %251, align 4, !mcsema_real_eip !84
  %253 = load i32, i32* %157, align 4, !mcsema_real_eip !75
  %254 = add i32 %253, %252
  store i32 %254, i32* %157, align 4, !mcsema_real_eip !85
  %255 = load i32, i32* %203, align 4, !mcsema_real_eip !86
  %256 = add i32 %255, 1
  store i32 %256, i32* %203, align 4, !mcsema_real_eip !87
  %257 = load i32, i32* %145, align 4, !mcsema_real_eip !67
  %258 = sub i32 %256, %257, !mcsema_real_eip !67
  %259 = xor i32 %258, %256, !mcsema_real_eip !67
  %260 = icmp slt i32 %258, 0
  %261 = xor i32 %257, %256, !mcsema_real_eip !67
  %262 = and i32 %259, %261, !mcsema_real_eip !67
  %263 = icmp slt i32 %262, 0
  %tmp82.i.i = xor i1 %260, %263
  br i1 %tmp82.i.i, label %block_0xd6.i.i, label %block_0xf5.loopexit.i.i, !mcsema_real_eip !68

block_0x133.loopexit.i.i:                         ; preds = %block_0x114.i.i
  %264 = zext i32 %278 to i64, !mcsema_real_eip !88
  %265 = xor i32 %283, %281, !mcsema_real_eip !80
  %266 = trunc i32 %282 to i8, !mcsema_real_eip !80
  %267 = tail call i8 @llvm.ctpop.i8(i8 %266) #2
  %268 = icmp eq i32 %280, %281
  %269 = icmp ult i32 %280, %281, !mcsema_real_eip !80
  br label %sub_140.exit

block_0x114.i.i:                                  ; preds = %block_0x114.i.i.preheader, %block_0x114.i.i
  %270 = phi i32 [ %280, %block_0x114.i.i ], [ 0, %block_0x114.i.i.preheader ]
  %271 = sext i32 %270 to i64, !mcsema_real_eip !89
  %272 = load i64, i64* %155, align 8, !mcsema_real_eip !90
  %273 = shl nsw i64 %271, 2
  %274 = add i64 %273, %272, !mcsema_real_eip !91
  %275 = inttoptr i64 %274 to i32*
  %276 = load i32, i32* %275, align 4, !mcsema_real_eip !91
  %277 = load i32, i32* %157, align 4, !mcsema_real_eip !88
  %278 = add i32 %277, %276
  store i32 %278, i32* %157, align 4, !mcsema_real_eip !92
  %279 = load i32, i32* %235, align 4, !mcsema_real_eip !93
  %280 = add i32 %279, 1
  store i32 %280, i32* %235, align 4, !mcsema_real_eip !94
  %281 = load i32, i32* %147, align 4, !mcsema_real_eip !80
  %282 = sub i32 %280, %281, !mcsema_real_eip !80
  %283 = xor i32 %282, %280, !mcsema_real_eip !80
  %284 = icmp slt i32 %282, 0
  %285 = xor i32 %281, %280, !mcsema_real_eip !80
  %286 = and i32 %283, %285, !mcsema_real_eip !80
  %287 = icmp slt i32 %286, 0
  %tmp87.i.i = xor i1 %284, %287
  br i1 %tmp87.i.i, label %block_0x114.i.i, label %block_0x133.loopexit.i.i, !mcsema_real_eip !81

block_0x1b2.i:                                    ; preds = %block_0x1b2.i, %block_0x189.i
  %288 = phi i32 [ 0, %block_0x189.i ], [ %296, %block_0x1b2.i ]
  %289 = add i32 %288, 1
  %290 = sext i32 %288 to i64, !mcsema_real_eip !95
  %291 = load i64, i64* %77, align 8, !mcsema_real_eip !96
  %292 = shl nsw i64 %290, 2
  %293 = add i64 %292, %291, !mcsema_real_eip !97
  %294 = inttoptr i64 %293 to i32*
  store i32 %289, i32* %294, align 4, !mcsema_real_eip !97
  %295 = load i32, i32* %79, align 4, !mcsema_real_eip !98
  %296 = add i32 %295, 1
  store i32 %296, i32* %79, align 4, !mcsema_real_eip !99
  %297 = add i32 %295, -9
  %298 = xor i32 %297, %296, !mcsema_real_eip !18
  %299 = icmp slt i32 %297, 0
  %300 = and i32 %298, %296, !mcsema_real_eip !18
  %301 = icmp slt i32 %300, 0
  %tmp214.i = xor i1 %299, %301
  br i1 %tmp214.i, label %block_0x1b2.i, label %block_0x1d1.i, !mcsema_real_eip !100

sub_140.exit:                                     ; preds = %block_0xf5.i.i, %block_0x133.loopexit.i.i
  %ZF_val.0.i.i = phi i1 [ %241, %block_0xf5.i.i ], [ %268, %block_0x133.loopexit.i.i ]
  %PF_val.0.in.in.i.i = phi i8 [ %240, %block_0xf5.i.i ], [ %267, %block_0x133.loopexit.i.i ]
  %AF_val.0.in.in.i.i = phi i32 [ %238, %block_0xf5.i.i ], [ %265, %block_0x133.loopexit.i.i ]
  %CF_val.0.i.i = phi i1 [ %243, %block_0xf5.i.i ], [ %269, %block_0x133.loopexit.i.i ]
  %SF_val.0.i.i = phi i1 [ %242, %block_0xf5.i.i ], [ %284, %block_0x133.loopexit.i.i ]
  %OF_val.0.i.i = phi i1 [ %245, %block_0xf5.i.i ], [ %287, %block_0x133.loopexit.i.i ]
  %RDX_val.3.i.i = phi i64 [ %RDX_val.2.i.i, %block_0xf5.i.i ], [ %264, %block_0x133.loopexit.i.i ]
  %RCX_val.0.i.i = phi i64 [ %233, %block_0xf5.i.i ], [ %272, %block_0x133.loopexit.i.i ]
  %AF_val.0.in.i.i = and i32 %AF_val.0.in.in.i.i, 16
  %PF_val.0.in.i.i = and i8 %PF_val.0.in.in.i.i, 1
  %AF_val.0.i.i = icmp ne i32 %AF_val.0.in.i.i, 0
  %PF_val.0.i.i = icmp eq i8 %PF_val.0.in.i.i, 0
  %302 = load i32, i32* %157, align 4, !mcsema_real_eip !101
  %303 = zext i32 %302 to i64
  %304 = load i64, i64* %131, align 8, !mcsema_real_eip !102
  %305 = load i64, i64* %129, align 8, !mcsema_real_eip !103
  store i64 %303, i64* %RAX.i, align 8, !mcsema_real_eip !104
  store i64 %304, i64* %RBX.i, align 8, !mcsema_real_eip !104
  store i64 %RCX_val.0.i.i, i64* %RCX.i, align 8, !mcsema_real_eip !104
  store i64 %RDX_val.3.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !104
  store i64 %72, i64* %RSI.i, align 8, !mcsema_real_eip !104
  store i64 %159, i64* %RDI.i, align 8, !mcsema_real_eip !104
  store i64 %93, i64* %RSP.i, align 8, !mcsema_real_eip !104
  store i64 %305, i64* %RBP.i, align 8, !mcsema_real_eip !104
  %306 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 10, i64 10>, <2 x i64>* %306, align 8
  store i64 %133, i64* %R10.i, align 8, !mcsema_real_eip !104
  store i64 %134, i64* %R11.i, align 8, !mcsema_real_eip !104
  store i64 %4, i64* %R12.i, align 8, !mcsema_real_eip !104
  store i64 %5, i64* %R13.i, align 8, !mcsema_real_eip !104
  store i64 %120, i64* %R14.i, align 8, !mcsema_real_eip !104
  store i64 %7, i64* %R15.i, align 8, !mcsema_real_eip !104
  store i64 %8, i64* %RIP.i, align 8, !mcsema_real_eip !104
  store i1 %CF_val.0.i.i, i1* %CF.i, align 1, !mcsema_real_eip !104
  store i1 %PF_val.0.i.i, i1* %PF.i, align 1, !mcsema_real_eip !104
  store i1 %AF_val.0.i.i, i1* %AF.i, align 1, !mcsema_real_eip !104
  store i1 %ZF_val.0.i.i, i1* %ZF.i, align 1, !mcsema_real_eip !104
  store i1 %SF_val.0.i.i, i1* %SF.i, align 1, !mcsema_real_eip !104
  store i1 %OF_val.0.i.i, i1* %OF.i, align 1, !mcsema_real_eip !104
  store i1 %9, i1* %DF.i, align 1, !mcsema_real_eip !104
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* nonnull %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !104
  store i1 %12, i1* %FPU_B.i, align 1, !mcsema_real_eip !104
  store i1 %13, i1* %FPU_C3.i, align 1, !mcsema_real_eip !104
  store i3 %14, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !104
  store i1 %15, i1* %FPU_C2.i, align 1, !mcsema_real_eip !104
  store i1 %16, i1* %FPU_C1.i, align 1, !mcsema_real_eip !104
  store i1 %17, i1* %FPU_C0.i, align 1, !mcsema_real_eip !104
  store i1 %18, i1* %FPU_ES.i, align 1, !mcsema_real_eip !104
  store i1 %19, i1* %FPU_SF.i, align 1, !mcsema_real_eip !104
  store i1 %20, i1* %FPU_PE.i, align 1, !mcsema_real_eip !104
  store i1 %21, i1* %FPU_UE.i, align 1, !mcsema_real_eip !104
  store i1 %22, i1* %FPU_OE.i, align 1, !mcsema_real_eip !104
  store i1 %23, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !104
  store i1 %24, i1* %FPU_DE.i, align 1, !mcsema_real_eip !104
  store i1 %25, i1* %FPU_IE.i, align 1, !mcsema_real_eip !104
  store i1 %26, i1* %FPU_X.i, align 1, !mcsema_real_eip !104
  store i2 %27, i2* %FPU_RC.i, align 1, !mcsema_real_eip !104
  store i2 %28, i2* %FPU_PC.i, align 1, !mcsema_real_eip !104
  store i1 %29, i1* %FPU_PM.i, align 1, !mcsema_real_eip !104
  store i1 %30, i1* %FPU_UM.i, align 1, !mcsema_real_eip !104
  store i1 %31, i1* %FPU_OM.i, align 1, !mcsema_real_eip !104
  store i1 %32, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !104
  store i1 %33, i1* %FPU_DM.i, align 1, !mcsema_real_eip !104
  store i1 %34, i1* %FPU_IM.i, align 1, !mcsema_real_eip !104
  store i64 %37, i64* %36, align 4
  store i16 %38, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !104
  store i64 %39, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !104
  store i16 %40, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !104
  store i64 %41, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !104
  store i128 %42, i128* %XMM0.i, align 1, !mcsema_real_eip !104
  store i128 %43, i128* %XMM1.i, align 1, !mcsema_real_eip !104
  store i128 %44, i128* %XMM2.i, align 1, !mcsema_real_eip !104
  store i128 %45, i128* %XMM3.i, align 1, !mcsema_real_eip !104
  store i128 %46, i128* %XMM4.i, align 1, !mcsema_real_eip !104
  store i128 %47, i128* %XMM5.i, align 1, !mcsema_real_eip !104
  store i128 %48, i128* %XMM6.i, align 1, !mcsema_real_eip !104
  store i128 %49, i128* %XMM7.i, align 1, !mcsema_real_eip !104
  store i128 %50, i128* %XMM8.i, align 1, !mcsema_real_eip !104
  store i128 %51, i128* %XMM9.i, align 1, !mcsema_real_eip !104
  store i128 %52, i128* %XMM10.i, align 1, !mcsema_real_eip !104
  store i128 %53, i128* %XMM11.i, align 1, !mcsema_real_eip !104
  store i128 %54, i128* %XMM12.i, align 1, !mcsema_real_eip !104
  store i128 %55, i128* %XMM13.i, align 1, !mcsema_real_eip !104
  store i128 %56, i128* %XMM14.i, align 1, !mcsema_real_eip !104
  store i128 %57, i128* %XMM15.i, align 1, !mcsema_real_eip !104
  store i64 %58, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !104
  store i64 %59, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !104
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %11, i32 128, i32 4, i1 false), !mcsema_real_eip !29
  %uadd215.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %93, i64 144)
  %307 = extractvalue { i64, i1 } %uadd215.i, 0
  %308 = xor i64 %307, %93, !mcsema_real_eip !105
  %309 = and i64 %308, 16
  %310 = icmp eq i64 %309, 0
  %311 = icmp slt i64 %307, 0
  %312 = icmp eq i64 %307, 0, !mcsema_real_eip !105
  %313 = add i64 %2, 9223372036854775640
  %314 = and i64 %308, %313, !mcsema_real_eip !105
  %315 = icmp slt i64 %314, 0
  %316 = trunc i64 %307 to i8, !mcsema_real_eip !105
  %317 = tail call i8 @llvm.ctpop.i8(i8 %316), !mcsema_real_eip !105
  %318 = and i8 %317, 1
  %319 = icmp eq i8 %318, 0
  %320 = extractvalue { i64, i1 } %uadd215.i, 1
  %321 = inttoptr i64 %307 to i64*, !mcsema_real_eip !106
  %322 = load i64, i64* %321, align 8, !mcsema_real_eip !106
  %323 = add i64 %307, 8, !mcsema_real_eip !106
  %324 = inttoptr i64 %323 to i64*, !mcsema_real_eip !107
  %325 = load i64, i64* %324, align 8, !mcsema_real_eip !107
  %326 = add i64 %307, 16, !mcsema_real_eip !107
  %327 = inttoptr i64 %326 to i64*, !mcsema_real_eip !108
  %328 = load i64, i64* %327, align 8, !mcsema_real_eip !108
  %329 = add i64 %307, 32, !mcsema_real_eip !109
  store i64 %303, i64* %RAX.i, align 8, !mcsema_real_eip !109
  store i64 %322, i64* %RBX.i, align 8, !mcsema_real_eip !109
  store i64 %RCX_val.0.i.i, i64* %RCX.i, align 8, !mcsema_real_eip !109
  store i64 %RDX_val.3.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !109
  store i64 %72, i64* %RSI.i, align 8, !mcsema_real_eip !109
  store i64 %159, i64* %RDI.i, align 8, !mcsema_real_eip !109
  store i64 %329, i64* %RSP.i, align 8, !mcsema_real_eip !109
  store i64 %328, i64* %RBP.i, align 8, !mcsema_real_eip !109
  %330 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 10, i64 10>, <2 x i64>* %330, align 8
  store i64 %133, i64* %R10.i, align 8, !mcsema_real_eip !109
  store i64 %134, i64* %R11.i, align 8, !mcsema_real_eip !109
  store i64 %4, i64* %R12.i, align 8, !mcsema_real_eip !109
  store i64 %5, i64* %R13.i, align 8, !mcsema_real_eip !109
  store i64 %325, i64* %R14.i, align 8, !mcsema_real_eip !109
  store i64 %7, i64* %R15.i, align 8, !mcsema_real_eip !109
  store i64 %8, i64* %RIP.i, align 8, !mcsema_real_eip !109
  store i1 %320, i1* %CF.i, align 1, !mcsema_real_eip !109
  store i1 %319, i1* %PF.i, align 1, !mcsema_real_eip !109
  store i1 %310, i1* %AF.i, align 1, !mcsema_real_eip !109
  store i1 %312, i1* %ZF.i, align 1, !mcsema_real_eip !109
  store i1 %311, i1* %SF.i, align 1, !mcsema_real_eip !109
  store i1 %315, i1* %OF.i, align 1, !mcsema_real_eip !109
  store i1 %9, i1* %DF.i, align 1, !mcsema_real_eip !109
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !109
  store i1 %12, i1* %FPU_B.i, align 1, !mcsema_real_eip !109
  store i1 %13, i1* %FPU_C3.i, align 1, !mcsema_real_eip !109
  store i3 %14, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !109
  store i1 %15, i1* %FPU_C2.i, align 1, !mcsema_real_eip !109
  store i1 %16, i1* %FPU_C1.i, align 1, !mcsema_real_eip !109
  store i1 %17, i1* %FPU_C0.i, align 1, !mcsema_real_eip !109
  store i1 %18, i1* %FPU_ES.i, align 1, !mcsema_real_eip !109
  store i1 %19, i1* %FPU_SF.i, align 1, !mcsema_real_eip !109
  store i1 %20, i1* %FPU_PE.i, align 1, !mcsema_real_eip !109
  store i1 %21, i1* %FPU_UE.i, align 1, !mcsema_real_eip !109
  store i1 %22, i1* %FPU_OE.i, align 1, !mcsema_real_eip !109
  store i1 %23, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !109
  store i1 %24, i1* %FPU_DE.i, align 1, !mcsema_real_eip !109
  store i1 %25, i1* %FPU_IE.i, align 1, !mcsema_real_eip !109
  store i1 %26, i1* %FPU_X.i, align 1, !mcsema_real_eip !109
  store i2 %27, i2* %FPU_RC.i, align 1, !mcsema_real_eip !109
  store i2 %28, i2* %FPU_PC.i, align 1, !mcsema_real_eip !109
  store i1 %29, i1* %FPU_PM.i, align 1, !mcsema_real_eip !109
  store i1 %30, i1* %FPU_UM.i, align 1, !mcsema_real_eip !109
  store i1 %31, i1* %FPU_OM.i, align 1, !mcsema_real_eip !109
  store i1 %32, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !109
  store i1 %33, i1* %FPU_DM.i, align 1, !mcsema_real_eip !109
  store i1 %34, i1* %FPU_IM.i, align 1, !mcsema_real_eip !109
  store i64 %37, i64* %36, align 4
  store i16 %38, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !109
  store i64 %39, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !109
  store i16 %40, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !109
  store i64 %41, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !109
  store i128 %42, i128* %XMM0.i, align 1, !mcsema_real_eip !109
  store i128 %43, i128* %XMM1.i, align 1, !mcsema_real_eip !109
  store i128 %44, i128* %XMM2.i, align 1, !mcsema_real_eip !109
  store i128 %45, i128* %XMM3.i, align 1, !mcsema_real_eip !109
  store i128 %46, i128* %XMM4.i, align 1, !mcsema_real_eip !109
  store i128 %47, i128* %XMM5.i, align 1, !mcsema_real_eip !109
  store i128 %48, i128* %XMM6.i, align 1, !mcsema_real_eip !109
  store i128 %49, i128* %XMM7.i, align 1, !mcsema_real_eip !109
  store i128 %50, i128* %XMM8.i, align 1, !mcsema_real_eip !109
  store i128 %51, i128* %XMM9.i, align 1, !mcsema_real_eip !109
  store i128 %52, i128* %XMM10.i, align 1, !mcsema_real_eip !109
  store i128 %53, i128* %XMM11.i, align 1, !mcsema_real_eip !109
  store i128 %54, i128* %XMM12.i, align 1, !mcsema_real_eip !109
  store i128 %55, i128* %XMM13.i, align 1, !mcsema_real_eip !109
  store i128 %56, i128* %XMM14.i, align 1, !mcsema_real_eip !109
  store i128 %57, i128* %XMM15.i, align 1, !mcsema_real_eip !109
  store i64 %58, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !109
  store i64 %59, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !109
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
!2 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 320, [12 x i8] c"\09pushq\09%rbp\00"}
!4 = !{i64 324, [12 x i8] c"\09pushq\09%r14\00"}
!5 = !{i64 326, [12 x i8] c"\09pushq\09%rbx\00"}
!6 = !{i64 334, [20 x i8] c"\09movl\09$0, -20(%rbp)\00"}
!7 = !{i64 341, [20 x i8] c"\09movl\09$1, -24(%rbp)\00"}
!8 = !{i64 348, [20 x i8] c"\09movl\09$0, -68(%rbp)\00"}
!9 = !{i64 404, [22 x i8] c"\09movq\09%rcx, -80(%rbp)\00"}
!10 = !{i64 408, [9 x i8] c"\09callq\090\00"}
!11 = !{i64 413, [22 x i8] c"\09movq\09%rax, -88(%rbp)\00"}
!12 = !{i64 417, [20 x i8] c"\09movl\09$0, -92(%rbp)\00"}
!13 = !{i64 371, [24 x i8] c"\09movslq\09-68(%rbp), %rcx\00"}
!14 = !{i64 375, [29 x i8] c"\09movl\09%eax, -64(%rbp,%rcx,4)\00"}
!15 = !{i64 379, [22 x i8] c"\09movl\09-68(%rbp), %eax\00"}
!16 = !{i64 385, [22 x i8] c"\09movl\09%eax, -68(%rbp)\00"}
!17 = !{i64 359, [8 x i8] c"\09jge\0928\00"}
!18 = !{i64 424, [21 x i8] c"\09cmpl\09$10, -92(%rbp)\00"}
!19 = !{i64 474, [22 x i8] c"\09movl\09-24(%rbp), %edi\00"}
!20 = !{i64 497, [23 x i8] c"\09movq\09%rsi, -104(%rbp)\00"}
!21 = !{i64 508, [23 x i8] c"\09movq\09%rcx, -112(%rbp)\00"}
!22 = !{i64 515, [23 x i8] c"\09movl\09%r8d, -116(%rbp)\00"}
!23 = !{i64 522, [22 x i8] c"\09movq\09%r9, -128(%rbp)\00"}
!24 = !{i64 529, [23 x i8] c"\09movl\09-116(%rbp), %eax\00"}
!25 = !{i64 532, [19 x i8] c"\09movl\09%eax, (%rsp)\00"}
!26 = !{i64 539, [20 x i8] c"\09movq\09%rbx, 8(%rsp)\00"}
!27 = !{i64 548, [21 x i8] c"\09movq\09%r14, 16(%rsp)\00"}
!28 = !{i64 553, [21 x i8] c"\09movq\09%r10, 24(%rsp)\00"}
!29 = !{i64 558, [12 x i8] c"\09callq\09-563\00"}
!30 = !{i64 4, [12 x i8] c"\09pushq\09%rbx\00"}
!31 = !{i64 5, [21 x i8] c"\09movq\0940(%rbp), %rax\00"}
!32 = !{i64 17, [21 x i8] c"\09movl\0916(%rbp), %ebx\00"}
!33 = !{i64 20, [22 x i8] c"\09movl\09%edi, -12(%rbp)\00"}
!34 = !{i64 23, [22 x i8] c"\09movq\09%rsi, -24(%rbp)\00"}
!35 = !{i64 27, [22 x i8] c"\09movq\09%rdx, -32(%rbp)\00"}
!36 = !{i64 31, [22 x i8] c"\09movq\09%rcx, -40(%rbp)\00"}
!37 = !{i64 35, [22 x i8] c"\09movl\09%r8d, -44(%rbp)\00"}
!38 = !{i64 39, [22 x i8] c"\09movl\09%r9d, -48(%rbp)\00"}
!39 = !{i64 43, [22 x i8] c"\09movl\09%ebx, -52(%rbp)\00"}
!40 = !{i64 46, [22 x i8] c"\09movq\09%r11, -64(%rbp)\00"}
!41 = !{i64 50, [22 x i8] c"\09movq\09%r10, -72(%rbp)\00"}
!42 = !{i64 54, [22 x i8] c"\09movq\09%rax, -80(%rbp)\00"}
!43 = !{i64 58, [20 x i8] c"\09movl\09$0, -84(%rbp)\00"}
!44 = !{i64 65, [22 x i8] c"\09movl\09-12(%rbp), %edi\00"}
!45 = !{i64 71, [22 x i8] c"\09movl\09%edi, -84(%rbp)\00"}
!46 = !{i64 74, [20 x i8] c"\09movl\09$0, -88(%rbp)\00"}
!47 = !{i64 84, [22 x i8] c"\09cmpl\09-44(%rbp), %eax\00"}
!48 = !{i64 87, [8 x i8] c"\09jge\0931\00"}
!49 = !{i64 104, [22 x i8] c"\09addl\09-84(%rbp), %edx\00"}
!50 = !{i64 128, [19 x i8] c"\09movl\09(%rax), %ecx\00"}
!51 = !{i64 130, [22 x i8] c"\09addl\09-84(%rbp), %ecx\00"}
!52 = !{i64 133, [22 x i8] c"\09movl\09%ecx, -84(%rbp)\00"}
!53 = !{i64 136, [20 x i8] c"\09movl\09$0, -92(%rbp)\00"}
!54 = !{i64 146, [22 x i8] c"\09cmpl\09-48(%rbp), %eax\00"}
!55 = !{i64 149, [8 x i8] c"\09jge\0931\00"}
!56 = !{i64 93, [24 x i8] c"\09movslq\09-88(%rbp), %rax\00"}
!57 = !{i64 97, [22 x i8] c"\09movq\09-24(%rbp), %rcx\00"}
!58 = !{i64 101, [26 x i8] c"\09movl\09(%rcx,%rax,4), %edx\00"}
!59 = !{i64 107, [22 x i8] c"\09movl\09%edx, -84(%rbp)\00"}
!60 = !{i64 110, [22 x i8] c"\09movl\09-88(%rbp), %eax\00"}
!61 = !{i64 116, [22 x i8] c"\09movl\09%eax, -88(%rbp)\00"}
!62 = !{i64 166, [22 x i8] c"\09addl\09-84(%rbp), %edx\00"}
!63 = !{i64 186, [22 x i8] c"\09movl\09-52(%rbp), %eax\00"}
!64 = !{i64 189, [22 x i8] c"\09addl\09-84(%rbp), %eax\00"}
!65 = !{i64 192, [22 x i8] c"\09movl\09%eax, -84(%rbp)\00"}
!66 = !{i64 195, [20 x i8] c"\09movl\09$0, -96(%rbp)\00"}
!67 = !{i64 205, [22 x i8] c"\09cmpl\09-44(%rbp), %eax\00"}
!68 = !{i64 208, [8 x i8] c"\09jge\0931\00"}
!69 = !{i64 155, [24 x i8] c"\09movslq\09-92(%rbp), %rax\00"}
!70 = !{i64 159, [22 x i8] c"\09movq\09-40(%rbp), %rcx\00"}
!71 = !{i64 163, [26 x i8] c"\09movl\09(%rcx,%rax,4), %edx\00"}
!72 = !{i64 169, [22 x i8] c"\09movl\09%edx, -84(%rbp)\00"}
!73 = !{i64 172, [22 x i8] c"\09movl\09-92(%rbp), %eax\00"}
!74 = !{i64 178, [22 x i8] c"\09movl\09%eax, -92(%rbp)\00"}
!75 = !{i64 225, [22 x i8] c"\09addl\09-84(%rbp), %edx\00"}
!76 = !{i64 249, [19 x i8] c"\09movl\09(%rax), %ecx\00"}
!77 = !{i64 251, [22 x i8] c"\09addl\09-84(%rbp), %ecx\00"}
!78 = !{i64 254, [22 x i8] c"\09movl\09%ecx, -84(%rbp)\00"}
!79 = !{i64 257, [21 x i8] c"\09movl\09$0, -100(%rbp)\00"}
!80 = !{i64 267, [22 x i8] c"\09cmpl\09-48(%rbp), %eax\00"}
!81 = !{i64 270, [8 x i8] c"\09jge\0931\00"}
!82 = !{i64 214, [24 x i8] c"\09movslq\09-96(%rbp), %rax\00"}
!83 = !{i64 218, [22 x i8] c"\09movq\09-64(%rbp), %rcx\00"}
!84 = !{i64 222, [26 x i8] c"\09movl\09(%rcx,%rax,4), %edx\00"}
!85 = !{i64 228, [22 x i8] c"\09movl\09%edx, -84(%rbp)\00"}
!86 = !{i64 231, [22 x i8] c"\09movl\09-96(%rbp), %eax\00"}
!87 = !{i64 237, [22 x i8] c"\09movl\09%eax, -96(%rbp)\00"}
!88 = !{i64 287, [22 x i8] c"\09addl\09-84(%rbp), %edx\00"}
!89 = !{i64 276, [25 x i8] c"\09movslq\09-100(%rbp), %rax\00"}
!90 = !{i64 280, [22 x i8] c"\09movq\09-80(%rbp), %rcx\00"}
!91 = !{i64 284, [26 x i8] c"\09movl\09(%rcx,%rax,4), %edx\00"}
!92 = !{i64 290, [22 x i8] c"\09movl\09%edx, -84(%rbp)\00"}
!93 = !{i64 293, [23 x i8] c"\09movl\09-100(%rbp), %eax\00"}
!94 = !{i64 299, [23 x i8] c"\09movl\09%eax, -100(%rbp)\00"}
!95 = !{i64 440, [24 x i8] c"\09movslq\09-92(%rbp), %rcx\00"}
!96 = !{i64 444, [22 x i8] c"\09movq\09-88(%rbp), %rdx\00"}
!97 = !{i64 448, [26 x i8] c"\09movl\09%eax, (%rdx,%rcx,4)\00"}
!98 = !{i64 451, [22 x i8] c"\09movl\09-92(%rbp), %eax\00"}
!99 = !{i64 457, [22 x i8] c"\09movl\09%eax, -92(%rbp)\00"}
!100 = !{i64 428, [8 x i8] c"\09jge\0931\00"}
!101 = !{i64 307, [22 x i8] c"\09movl\09-84(%rbp), %eax\00"}
!102 = !{i64 310, [11 x i8] c"\09popq\09%rbx\00"}
!103 = !{i64 311, [11 x i8] c"\09popq\09%rbp\00"}
!104 = !{i64 312, [6 x i8] c"\09retq\00"}
!105 = !{i64 563, [17 x i8] c"\09addq\09$144, %rsp\00"}
!106 = !{i64 570, [11 x i8] c"\09popq\09%rbx\00"}
!107 = !{i64 571, [11 x i8] c"\09popq\09%r14\00"}
!108 = !{i64 573, [11 x i8] c"\09popq\09%rbp\00"}
!109 = !{i64 574, [6 x i8] c"\09retq\00"}
