; ModuleID = 'Output/test_13.clang.opt.bc'
source_filename = "Output/test_13.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

declare x86_64_sysvcc i64 @malloc(i64 inreg) local_unnamed_addr

declare x86_64_sysvcc i64 @strlen(i64 inreg) local_unnamed_addr

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
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !3
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !3
  %1 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !3
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !3
  %2 = load i64, i64* %RCX.i, align 8, !mcsema_real_eip !3
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !3
  %3 = load i64, i64* %RDX.i, align 8, !mcsema_real_eip !3
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !3
  %4 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !3
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !3
  %5 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !3
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !3
  %6 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !3
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !3
  %7 = load i64, i64* %RBP.i, align 8, !mcsema_real_eip !3
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !3
  %8 = load i64, i64* %R8.i, align 8, !mcsema_real_eip !3
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !3
  %9 = load i64, i64* %R9.i, align 8, !mcsema_real_eip !3
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !3
  %10 = load i64, i64* %R10.i, align 8, !mcsema_real_eip !3
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
  %11 = load i64, i64* %R11.i, align 8, !mcsema_real_eip !3
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %12 = load i64, i64* %R12.i, align 8, !mcsema_real_eip !3
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !3
  %13 = load i64, i64* %R13.i, align 8, !mcsema_real_eip !3
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %14 = load i64, i64* %R14.i, align 8, !mcsema_real_eip !3
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !3
  %15 = load i64, i64* %R15.i, align 8, !mcsema_real_eip !3
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %16 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !3
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !3
  %17 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !3
  %18 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !3
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !3
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !3
  %20 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !3
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !3
  %21 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !3
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !3
  %22 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !3
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !3
  %23 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !3
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !3
  %24 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !3
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !3
  %25 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !3
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !3
  %26 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !3
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !3
  %27 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !3
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !3
  %28 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !3
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !3
  %29 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !3
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !3
  %30 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !3
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !3
  %31 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !3
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !3
  %32 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !3
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !3
  %33 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !3
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !3
  %34 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !3
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !3
  %35 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !3
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !3
  %36 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !3
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !3
  %37 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !3
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !3
  %38 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !3
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !3
  %39 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !3
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !3
  %40 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !3
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !3
  %41 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !3
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !3
  %42 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !3
  %43 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !3
  %44 = bitcast i8* %43 to i64*
  %45 = load i64, i64* %44, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !3
  %46 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !3
  %47 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !3
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !3
  %48 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !3
  %49 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !3
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %50 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !3
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %51 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !3
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %52 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !3
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %53 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !3
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %54 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !3
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %55 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !3
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %56 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !3
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %57 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !3
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %58 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !3
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %59 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !3
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %60 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !3
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %61 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !3
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %62 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !3
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %63 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !3
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %64 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !3
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %65 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !3
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %66 = load i64, i64* %STACK_BASE.i, align 8, !mcsema_real_eip !3
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %67 = load i64, i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !3
  %68 = add i64 %6, -8
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !3
  store i64 %7, i64* %69, align 8, !mcsema_real_eip !3
  %70 = add i64 %6, -40
  %71 = add i64 %6, -16, !mcsema_real_eip !4
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !4
  store i64 %5, i64* %72, align 8, !mcsema_real_eip !4
  %73 = add i64 %6, -20, !mcsema_real_eip !5
  %74 = trunc i64 %4 to i32, !mcsema_real_eip !5
  %75 = inttoptr i64 %73 to i32*
  store i32 %74, i32* %75, align 4, !mcsema_real_eip !5
  %76 = add i64 %6, -24, !mcsema_real_eip !6
  %77 = inttoptr i64 %76 to i32*
  store i32 0, i32* %77, align 4, !mcsema_real_eip !6
  %78 = load i32, i32* %75, align 4, !mcsema_real_eip !7
  %79 = sext i32 %78 to i64, !mcsema_real_eip !7
  %80 = shl nsw i64 %79, 3, !mcsema_real_eip !8
  %81 = tail call x86_64_sysvcc i64 @malloc(i64 %80), !mcsema_real_eip !9
  %82 = add i64 %6, -32, !mcsema_real_eip !10
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !10
  store i64 %81, i64* %83, align 8, !mcsema_real_eip !10
  %84 = load i32, i32* %77, align 4, !mcsema_real_eip !11
  %85 = load i32, i32* %75, align 4, !mcsema_real_eip !12
  %86 = sub i32 %84, %85, !mcsema_real_eip !12
  %87 = xor i32 %86, %84, !mcsema_real_eip !12
  %88 = icmp slt i32 %86, 0
  %89 = xor i32 %85, %84, !mcsema_real_eip !12
  %90 = and i32 %87, %89, !mcsema_real_eip !12
  %91 = icmp slt i32 %90, 0
  %tmp.i = xor i1 %88, %91
  br i1 %tmp.i, label %block_0x33.preheader.i, label %sub_0.exit, !mcsema_real_eip !13

block_0x33.preheader.i:                           ; preds = %driverBlockRaw
  %92 = icmp ult i32 %84, %85, !mcsema_real_eip !12
  %93 = icmp eq i32 %84, %85
  %94 = trunc i32 %86 to i8, !mcsema_real_eip !12
  %95 = tail call i8 @llvm.ctpop.i8(i8 %94), !mcsema_real_eip !12
  %96 = xor i32 %87, %85, !mcsema_real_eip !12
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  br label %block_0x33.i

block_0x33.i:                                     ; preds = %block_0x67.i, %block_0x33.preheader.i
  %97 = phi i32 [ %217, %block_0x67.i ], [ %84, %block_0x33.preheader.i ]
  %OF_val.0.i = phi i1 [ %231, %block_0x67.i ], [ %91, %block_0x33.preheader.i ]
  %SF_val.0.i = phi i1 [ %227, %block_0x67.i ], [ %88, %block_0x33.preheader.i ]
  %CF_val.0.i = phi i1 [ %228, %block_0x67.i ], [ %92, %block_0x33.preheader.i ]
  %AF_val.0.in.in.i = phi i32 [ %223, %block_0x67.i ], [ %96, %block_0x33.preheader.i ]
  %PF_val.0.in.in.i = phi i8 [ %225, %block_0x67.i ], [ %95, %block_0x33.preheader.i ]
  %ZF_val.0.i = phi i1 [ %226, %block_0x67.i ], [ %93, %block_0x33.preheader.i ]
  %RSP_val.1.i = phi i64 [ %172, %block_0x67.i ], [ %70, %block_0x33.preheader.i ]
  %RBP_val.1.i = phi i64 [ %RBP_val.2.i, %block_0x67.i ], [ %68, %block_0x33.preheader.i ]
  %RSI_val.1.i = phi i64 [ %RSI_val.2.i, %block_0x67.i ], [ %4, %block_0x33.preheader.i ]
  %RDX_val.1.i = phi i64 [ %RDX_val.0.i.i, %block_0x67.i ], [ %3, %block_0x33.preheader.i ]
  %PF_val.0.in.i = and i8 %PF_val.0.in.in.i, 1
  %AF_val.0.in.i = and i32 %AF_val.0.in.in.i, 16
  %PF_val.0.i = icmp eq i8 %PF_val.0.in.i, 0
  %AF_val.0.i = icmp ne i32 %AF_val.0.in.i, 0
  %98 = add i64 %RBP_val.1.i, -8, !mcsema_real_eip !14
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !14
  %100 = load i64, i64* %99, align 8, !mcsema_real_eip !14
  %101 = sext i32 %97 to i64, !mcsema_real_eip !15
  %102 = shl nsw i64 %101, 3
  %103 = add i64 %100, %102, !mcsema_real_eip !16
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !16
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %RBP_val.1.i, -32, !mcsema_real_eip !17
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !17
  store i64 %105, i64* %107, align 8, !mcsema_real_eip !17
  %108 = add i64 %RSP_val.1.i, -8
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !18
  store i64 -4981261766360305936, i64* %109, align 8, !mcsema_real_eip !18
  store i64 %105, i64* %RAX.i, align 8, !mcsema_real_eip !18
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !18
  store i64 %101, i64* %RCX.i, align 8, !mcsema_real_eip !18
  store i64 %RDX_val.1.i, i64* %RDX.i, align 8, !mcsema_real_eip !18
  store i64 %RSI_val.1.i, i64* %RSI.i, align 8, !mcsema_real_eip !18
  store i64 %105, i64* %RDI.i, align 8, !mcsema_real_eip !18
  store i64 %108, i64* %RSP.i, align 8, !mcsema_real_eip !18
  store i64 %RBP_val.1.i, i64* %RBP.i, align 8, !mcsema_real_eip !18
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !18
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !18
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !18
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !18
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !18
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !18
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !18
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !18
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !18
  store i1 %CF_val.0.i, i1* %CF.i, align 1, !mcsema_real_eip !18
  store i1 %PF_val.0.i, i1* %PF.i, align 1, !mcsema_real_eip !18
  store i1 %AF_val.0.i, i1* %AF.i, align 1, !mcsema_real_eip !18
  store i1 %ZF_val.0.i, i1* %ZF.i, align 1, !mcsema_real_eip !18
  store i1 %SF_val.0.i, i1* %SF.i, align 1, !mcsema_real_eip !18
  store i1 %OF_val.0.i, i1* %OF.i, align 1, !mcsema_real_eip !18
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !18
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !18
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !18
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !18
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !18
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !18
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !18
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !18
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !18
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !18
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !18
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !18
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !18
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !18
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !18
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !18
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !18
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !18
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !18
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !18
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !18
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !18
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !18
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !18
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !18
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !18
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !18
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !18
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !18
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !18
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !18
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !18
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !18
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !18
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !18
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !18
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !18
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !18
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !18
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !18
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !18
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !18
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !18
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !18
  store i64 %66, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !18
  store i64 %67, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !18
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast.i, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false)
  %110 = add i64 %RSP_val.1.i, -16
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.1.i, i64* %111, align 8, !mcsema_real_eip !2
  %112 = add i64 %RSP_val.1.i, -48
  %113 = add i64 %RSP_val.1.i, -24, !mcsema_real_eip !19
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !19
  store i64 %105, i64* %114, align 8, !mcsema_real_eip !19
  %115 = add i64 %RSP_val.1.i, -28, !mcsema_real_eip !20
  %116 = inttoptr i64 %115 to i32*
  store i32 1, i32* %116, align 4, !mcsema_real_eip !20
  %117 = load i64, i64* %114, align 8, !mcsema_real_eip !21
  %118 = tail call x86_64_sysvcc i64 @strlen(i64 %117), !mcsema_real_eip !22
  %119 = and i64 %118, 4294967295
  %120 = add i64 %RSP_val.1.i, -32, !mcsema_real_eip !23
  %121 = trunc i64 %118 to i32, !mcsema_real_eip !23
  %122 = inttoptr i64 %120 to i32*
  store i32 %121, i32* %122, align 4, !mcsema_real_eip !23
  %123 = add i32 %121, -1
  %124 = icmp eq i32 %123, 0, !mcsema_real_eip !24
  %125 = icmp slt i32 %123, 0
  %126 = sub i32 0, %121
  %127 = and i32 %121, %126
  %128 = icmp slt i32 %127, 0
  %129 = xor i1 %125, %128
  %130 = or i1 %124, %129, !mcsema_real_eip !25
  br i1 %130, label %sub_90.exitthread-pre-split.i, label %block_0xbb.i.i, !mcsema_real_eip !25

block_0xbb.i.i:                                   ; preds = %block_0x33.i
  %131 = inttoptr i64 %113 to i8**
  %132 = load i8*, i8** %131, align 8
  %133 = load i8, i8* %132, align 1, !mcsema_real_eip !26
  %134 = and i64 %118, 4294967040, !mcsema_real_eip !26
  %135 = add i64 %RSP_val.1.i, -33, !mcsema_real_eip !27
  %136 = inttoptr i64 %135 to i8*
  store i8 %133, i8* %136, align 1, !mcsema_real_eip !27
  %137 = load i64, i64* %114, align 8, !mcsema_real_eip !28
  %138 = load i32, i32* %122, align 4, !mcsema_real_eip !29
  %139 = add i32 %138, -1
  %140 = sext i32 %139 to i64, !mcsema_real_eip !30
  %141 = add i64 %140, %137, !mcsema_real_eip !31
  %142 = inttoptr i64 %141 to i8*
  %143 = load i8, i8* %142, align 1, !mcsema_real_eip !31
  %144 = zext i8 %143 to i64, !mcsema_real_eip !31
  %145 = or i64 %144, %134
  %146 = add i64 %RSP_val.1.i, -34, !mcsema_real_eip !32
  %147 = inttoptr i64 %146 to i8*
  store i8 %143, i8* %147, align 1, !mcsema_real_eip !32
  %148 = load i8, i8* %136, align 1, !mcsema_real_eip !33
  %149 = sext i8 %148 to i64
  %150 = and i64 %149, 4294967295
  %151 = sext i8 %143 to i64
  %152 = and i64 %151, 4294967295
  %153 = icmp eq i8 %148, %143
  br i1 %153, label %block_0xe7.i.i, label %sub_90.exitthread-pre-split.i, !mcsema_real_eip !34

block_0xe7.i.i:                                   ; preds = %block_0xbb.i.i
  store i32 0, i32* %116, align 4, !mcsema_real_eip !35
  br label %sub_90.exit.i, !mcsema_real_eip !36

sub_90.exitthread-pre-split.i:                    ; preds = %block_0xbb.i.i, %block_0x33.i
  %RDI_val.0.i.ph.i = phi i64 [ %152, %block_0xbb.i.i ], [ %117, %block_0x33.i ]
  %RSI_val.0.i.ph.i = phi i64 [ %140, %block_0xbb.i.i ], [ %RSI_val.1.i, %block_0x33.i ]
  %RDX_val.0.i.ph.i = phi i64 [ %150, %block_0xbb.i.i ], [ %RDX_val.1.i, %block_0x33.i ]
  %RCX_val.0.i.ph.i = phi i64 [ %145, %block_0xbb.i.i ], [ %119, %block_0x33.i ]
  %.pr.i = load i32, i32* %116, align 4
  br label %sub_90.exit.i

sub_90.exit.i:                                    ; preds = %sub_90.exitthread-pre-split.i, %block_0xe7.i.i
  %154 = phi i32 [ %.pr.i, %sub_90.exitthread-pre-split.i ], [ 0, %block_0xe7.i.i ]
  %RDI_val.0.i.i = phi i64 [ %RDI_val.0.i.ph.i, %sub_90.exitthread-pre-split.i ], [ %152, %block_0xe7.i.i ]
  %RSI_val.0.i.i = phi i64 [ %RSI_val.0.i.ph.i, %sub_90.exitthread-pre-split.i ], [ %140, %block_0xe7.i.i ]
  %RDX_val.0.i.i = phi i64 [ %RDX_val.0.i.ph.i, %sub_90.exitthread-pre-split.i ], [ %150, %block_0xe7.i.i ]
  %RCX_val.0.i.i = phi i64 [ %RCX_val.0.i.ph.i, %sub_90.exitthread-pre-split.i ], [ %145, %block_0xe7.i.i ]
  %155 = zext i32 %154 to i64
  %uadd.i.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %112, i64 32)
  %156 = extractvalue { i64, i1 } %uadd.i.i, 0
  %157 = xor i64 %156, %112, !mcsema_real_eip !37
  %158 = and i64 %157, 16, !mcsema_real_eip !37
  %159 = icmp ne i64 %158, 0, !mcsema_real_eip !37
  %160 = icmp slt i64 %156, 0
  %161 = icmp eq i64 %156, 0, !mcsema_real_eip !37
  %162 = add i64 %RSP_val.1.i, 9223372036854775760
  %163 = and i64 %157, %162, !mcsema_real_eip !37
  %164 = icmp slt i64 %163, 0
  %165 = trunc i64 %156 to i8, !mcsema_real_eip !37
  %166 = tail call i8 @llvm.ctpop.i8(i8 %165), !mcsema_real_eip !37
  %167 = and i8 %166, 1
  %168 = icmp eq i8 %167, 0
  %169 = extractvalue { i64, i1 } %uadd.i.i, 1
  %170 = inttoptr i64 %156 to i64*
  %171 = load i64, i64* %170, align 8
  %172 = add i64 %156, 16
  store i64 %155, i64* %RAX.i, align 8, !mcsema_real_eip !38
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !38
  store i64 %RCX_val.0.i.i, i64* %RCX.i, align 8, !mcsema_real_eip !38
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !38
  store i64 %RSI_val.0.i.i, i64* %RSI.i, align 8, !mcsema_real_eip !38
  store i64 %RDI_val.0.i.i, i64* %RDI.i, align 8, !mcsema_real_eip !38
  store i64 %172, i64* %RSP.i, align 8, !mcsema_real_eip !38
  store i64 %171, i64* %RBP.i, align 8, !mcsema_real_eip !38
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !38
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !38
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !38
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !38
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !38
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !38
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !38
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !38
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !38
  store i1 %169, i1* %CF.i, align 1, !mcsema_real_eip !38
  store i1 %168, i1* %PF.i, align 1, !mcsema_real_eip !38
  store i1 %159, i1* %AF.i, align 1, !mcsema_real_eip !38
  store i1 %161, i1* %ZF.i, align 1, !mcsema_real_eip !38
  store i1 %160, i1* %SF.i, align 1, !mcsema_real_eip !38
  store i1 %164, i1* %OF.i, align 1, !mcsema_real_eip !38
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !38
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %19, i8* nonnull %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false), !mcsema_real_eip !38
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !38
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !38
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !38
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !38
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !38
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !38
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !38
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !38
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !38
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !38
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !38
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !38
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !38
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !38
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !38
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !38
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !38
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !38
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !38
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !38
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !38
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !38
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !38
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !38
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !38
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !38
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !38
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !38
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !38
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !38
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !38
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !38
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !38
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !38
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !38
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !38
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !38
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !38
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !38
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !38
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !38
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !38
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !38
  store i64 %66, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !38
  store i64 %67, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !38
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* nonnull %19, i32 128, i32 4, i1 false), !mcsema_real_eip !18
  %173 = icmp eq i32 %154, 0, !mcsema_real_eip !39
  br i1 %173, label %block_0x55.i, label %block_0x67.i, !mcsema_real_eip !40

block_0x55.i:                                     ; preds = %sub_90.exit.i
  %174 = add i64 %171, -32, !mcsema_real_eip !41
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !41
  %176 = load i64, i64* %175, align 8
  %177 = add i64 %156, 8
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !42
  store i64 -4981261766360305936, i64* %178, align 8, !mcsema_real_eip !42
  store i64 %155, i64* %RAX.i, align 8, !mcsema_real_eip !42
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !42
  store i64 %RCX_val.0.i.i, i64* %RCX.i, align 8, !mcsema_real_eip !42
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !42
  store i64 %176, i64* %RSI.i, align 8, !mcsema_real_eip !42
  store i64 %176, i64* %RDI.i, align 8, !mcsema_real_eip !42
  store i64 %177, i64* %RSP.i, align 8, !mcsema_real_eip !42
  store i64 %171, i64* %RBP.i, align 8, !mcsema_real_eip !42
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !42
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !42
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !42
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !42
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !42
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !42
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !42
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !42
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !42
  store i1 false, i1* %CF.i, align 1, !mcsema_real_eip !42
  store i1 true, i1* %PF.i, align 1, !mcsema_real_eip !42
  store i1 false, i1* %AF.i, align 1, !mcsema_real_eip !42
  store i1 true, i1* %ZF.i, align 1, !mcsema_real_eip !42
  store i1 false, i1* %SF.i, align 1, !mcsema_real_eip !42
  store i1 false, i1* %OF.i, align 1, !mcsema_real_eip !42
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !42
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !42
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !42
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !42
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !42
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !42
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !42
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !42
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !42
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !42
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !42
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !42
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !42
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !42
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !42
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !42
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !42
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !42
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !42
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !42
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !42
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !42
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !42
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !42
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !42
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !42
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !42
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !42
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !42
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !42
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !42
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !42
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !42
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !42
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !42
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !42
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !42
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !42
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !42
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !42
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !42
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !42
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !42
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !42
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !42
  store i64 %66, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !42
  store i64 %67, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !42
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast.i, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false)
  store i64 %171, i64* %170, align 8, !mcsema_real_eip !43
  %179 = add i64 %156, -8, !mcsema_real_eip !44
  %180 = inttoptr i64 %179 to i64*, !mcsema_real_eip !44
  store i64 %176, i64* %180, align 8, !mcsema_real_eip !44
  %181 = add i64 %156, -16, !mcsema_real_eip !45
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !45
  store i64 %176, i64* %182, align 8, !mcsema_real_eip !45
  %183 = load i64, i64* %180, align 8, !mcsema_real_eip !46
  %184 = add i64 %156, -24, !mcsema_real_eip !47
  %185 = inttoptr i64 %184 to i64*, !mcsema_real_eip !47
  store i64 %183, i64* %185, align 8, !mcsema_real_eip !47
  %186 = load i64, i64* %182, align 8, !mcsema_real_eip !48
  %187 = add i64 %156, -32, !mcsema_real_eip !49
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !49
  store i64 %186, i64* %188, align 8, !mcsema_real_eip !49
  %189 = load i64, i64* %185, align 8
  %190 = inttoptr i64 %189 to i8*
  %191 = load i8, i8* %190, align 1, !mcsema_real_eip !50
  %192 = add i64 %156, -33, !mcsema_real_eip !51
  %193 = inttoptr i64 %192 to i8*
  store i8 %191, i8* %193, align 1, !mcsema_real_eip !51
  %194 = tail call i8 @llvm.ctpop.i8(i8 %191) #2, !mcsema_real_eip !52
  %195 = icmp eq i8 %191, 0
  br i1 %195, label %sub_100.exit.i, label %block_0x132.preheader.i.i, !mcsema_real_eip !53

block_0x132.preheader.i.i:                        ; preds = %block_0x55.i
  %196 = inttoptr i64 %187 to i8**
  %197 = inttoptr i64 %184 to i8**
  br label %block_0x132.i.i

block_0x132.i.i:                                  ; preds = %block_0x125.i.i, %block_0x132.preheader.i.i
  %198 = phi i8 [ %208, %block_0x125.i.i ], [ %191, %block_0x132.preheader.i.i ]
  %RCX_val.1.i.i = phi i64 [ %211, %block_0x125.i.i ], [ %RCX_val.0.i.i, %block_0x132.preheader.i.i ]
  %199 = icmp eq i8 %198, 47
  br i1 %199, label %block_0x13f.i.i, label %block_0x14b.i.i, !mcsema_real_eip !54

block_0x14b.i.i:                                  ; preds = %block_0x132.i.i
  %200 = load i64, i64* %188, align 8, !mcsema_real_eip !55
  %201 = inttoptr i64 %200 to i8*
  store i8 %198, i8* %201, align 1, !mcsema_real_eip !56
  br label %block_0x125.i.i, !mcsema_real_eip !57

block_0x13f.i.i:                                  ; preds = %block_0x132.i.i
  %202 = load i8*, i8** %196, align 8
  store i8 92, i8* %202, align 1, !mcsema_real_eip !58
  br label %block_0x125.i.i, !mcsema_real_eip !57

block_0x125.i.i:                                  ; preds = %block_0x13f.i.i, %block_0x14b.i.i
  %RCX_val.1.sink.i.i = phi i64 [ %RCX_val.1.i.i, %block_0x13f.i.i ], [ %200, %block_0x14b.i.i ]
  %203 = load i64, i64* %185, align 8
  %204 = add i64 %203, 1
  store i64 %204, i64* %185, align 8
  %205 = load i64, i64* %188, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %188, align 8
  %207 = load i8*, i8** %197, align 8
  %208 = load i8, i8* %207, align 1
  %209 = zext i8 %208 to i64
  %210 = and i64 %RCX_val.1.sink.i.i, -256
  %211 = or i64 %209, %210
  store i8 %208, i8* %193, align 1
  %212 = icmp eq i8 %208, 0
  br i1 %212, label %sub_100.exit.i.loopexit, label %block_0x132.i.i, !mcsema_real_eip !53

sub_100.exit.i.loopexit:                          ; preds = %block_0x125.i.i
  br label %sub_100.exit.i

sub_100.exit.i:                                   ; preds = %sub_100.exit.i.loopexit, %block_0x55.i
  %PF_val.0.in.in.i.i = phi i8 [ %194, %block_0x55.i ], [ 0, %sub_100.exit.i.loopexit ]
  %RCX_val.0.i238.i = phi i64 [ %RCX_val.0.i.i, %block_0x55.i ], [ %211, %sub_100.exit.i.loopexit ]
  %PF_val.0.in.i.i = and i8 %PF_val.0.in.in.i.i, 1
  %PF_val.0.i.i = icmp eq i8 %PF_val.0.in.i.i, 0
  %213 = load i64, i64* %170, align 8
  store i64 0, i64* %RAX.i, align 8, !mcsema_real_eip !59
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !59
  store i64 %RCX_val.0.i238.i, i64* %RCX.i, align 8, !mcsema_real_eip !59
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !59
  store i64 %189, i64* %RSI.i, align 8, !mcsema_real_eip !59
  store i64 %176, i64* %RDI.i, align 8, !mcsema_real_eip !59
  store i64 %172, i64* %RSP.i, align 8, !mcsema_real_eip !59
  store i64 %213, i64* %RBP.i, align 8, !mcsema_real_eip !59
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !59
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !59
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !59
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !59
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !59
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !59
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !59
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !59
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !59
  store i1 false, i1* %CF.i, align 1, !mcsema_real_eip !59
  store i1 %PF_val.0.i.i, i1* %PF.i, align 1, !mcsema_real_eip !59
  store i1 false, i1* %AF.i, align 1, !mcsema_real_eip !59
  store i1 true, i1* %ZF.i, align 1, !mcsema_real_eip !59
  store i1 false, i1* %SF.i, align 1, !mcsema_real_eip !59
  store i1 false, i1* %OF.i, align 1, !mcsema_real_eip !59
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !59
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !59
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !59
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !59
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !59
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !59
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !59
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !59
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !59
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !59
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !59
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !59
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !59
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !59
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !59
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !59
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !59
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !59
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !59
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !59
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !59
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !59
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !59
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !59
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !59
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !59
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !59
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !59
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !59
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !59
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !59
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !59
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !59
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !59
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !59
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !59
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !59
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !59
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !59
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !59
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !59
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !59
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !59
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !59
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !59
  store i64 %66, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !59
  store i64 %67, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !59
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !42
  br label %block_0x67.i, !mcsema_real_eip !60

block_0x67.i:                                     ; preds = %sub_100.exit.i, %sub_90.exit.i
  %RBP_val.2.i = phi i64 [ %213, %sub_100.exit.i ], [ %171, %sub_90.exit.i ]
  %RDI_val.1.i = phi i64 [ %176, %sub_100.exit.i ], [ %RDI_val.0.i.i, %sub_90.exit.i ]
  %RSI_val.2.i = phi i64 [ %189, %sub_100.exit.i ], [ %RSI_val.0.i.i, %sub_90.exit.i ]
  %RCX_val.1.i = phi i64 [ %RCX_val.0.i238.i, %sub_100.exit.i ], [ %RCX_val.0.i.i, %sub_90.exit.i ]
  %214 = add i64 %RBP_val.2.i, -16, !mcsema_real_eip !61
  %215 = inttoptr i64 %214 to i32*
  %216 = load i32, i32* %215, align 4, !mcsema_real_eip !61
  %217 = add i32 %216, 1
  store i32 %217, i32* %215, align 4, !mcsema_real_eip !62
  %218 = add i64 %RBP_val.2.i, -12, !mcsema_real_eip !12
  %219 = inttoptr i64 %218 to i32*
  %220 = load i32, i32* %219, align 4, !mcsema_real_eip !12
  %221 = sub i32 %217, %220, !mcsema_real_eip !12
  %222 = xor i32 %221, %217, !mcsema_real_eip !12
  %223 = xor i32 %222, %220, !mcsema_real_eip !12
  %224 = trunc i32 %221 to i8, !mcsema_real_eip !12
  %225 = tail call i8 @llvm.ctpop.i8(i8 %224), !mcsema_real_eip !12
  %226 = icmp eq i32 %217, %220
  %227 = icmp slt i32 %221, 0
  %228 = icmp ult i32 %217, %220, !mcsema_real_eip !12
  %229 = xor i32 %220, %217, !mcsema_real_eip !12
  %230 = and i32 %222, %229, !mcsema_real_eip !12
  %231 = icmp slt i32 %230, 0
  %tmp349.i = xor i1 %227, %231
  br i1 %tmp349.i, label %block_0x33.i, label %sub_0.exit.loopexit, !mcsema_real_eip !13

sub_0.exit.loopexit:                              ; preds = %block_0x67.i
  br label %sub_0.exit

sub_0.exit:                                       ; preds = %sub_0.exit.loopexit, %driverBlockRaw
  %RSP_val.0.i = phi i64 [ %70, %driverBlockRaw ], [ %172, %sub_0.exit.loopexit ]
  %RBP_val.0.i = phi i64 [ %68, %driverBlockRaw ], [ %RBP_val.2.i, %sub_0.exit.loopexit ]
  %RDI_val.0.i = phi i64 [ %80, %driverBlockRaw ], [ %RDI_val.1.i, %sub_0.exit.loopexit ]
  %RSI_val.0.i = phi i64 [ %4, %driverBlockRaw ], [ %RSI_val.2.i, %sub_0.exit.loopexit ]
  %RDX_val.0.i = phi i64 [ %3, %driverBlockRaw ], [ %RDX_val.0.i.i, %sub_0.exit.loopexit ]
  %RCX_val.0.i = phi i64 [ %2, %driverBlockRaw ], [ %RCX_val.1.i, %sub_0.exit.loopexit ]
  %232 = add i64 %RBP_val.0.i, -24, !mcsema_real_eip !63
  %233 = inttoptr i64 %232 to i64*, !mcsema_real_eip !63
  %234 = load i64, i64* %233, align 8, !mcsema_real_eip !63
  %235 = add i64 %234, 1, !mcsema_real_eip !64
  %236 = inttoptr i64 %235 to i8*
  store i8 2, i8* %236, align 1, !mcsema_real_eip !64
  %uadd350.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %RSP_val.0.i, i64 32)
  %237 = extractvalue { i64, i1 } %uadd350.i, 0
  %238 = xor i64 %237, %RSP_val.0.i, !mcsema_real_eip !65
  %239 = and i64 %238, 16, !mcsema_real_eip !65
  %240 = icmp ne i64 %239, 0, !mcsema_real_eip !65
  %241 = icmp slt i64 %237, 0
  %242 = icmp eq i64 %237, 0, !mcsema_real_eip !65
  %243 = xor i64 %RSP_val.0.i, -9223372036854775808, !mcsema_real_eip !65
  %244 = and i64 %238, %243, !mcsema_real_eip !65
  %245 = icmp slt i64 %244, 0
  %246 = trunc i64 %237 to i8, !mcsema_real_eip !65
  %247 = tail call i8 @llvm.ctpop.i8(i8 %246), !mcsema_real_eip !65
  %248 = and i8 %247, 1
  %249 = icmp eq i8 %248, 0
  %250 = extractvalue { i64, i1 } %uadd350.i, 1
  %251 = inttoptr i64 %237 to i64*, !mcsema_real_eip !66
  %252 = load i64, i64* %251, align 8, !mcsema_real_eip !66
  %253 = add i64 %237, 16, !mcsema_real_eip !67
  store i64 %234, i64* %RAX.i, align 8, !mcsema_real_eip !67
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !67
  store i64 %RCX_val.0.i, i64* %RCX.i, align 8, !mcsema_real_eip !67
  store i64 %RDX_val.0.i, i64* %RDX.i, align 8, !mcsema_real_eip !67
  store i64 %RSI_val.0.i, i64* %RSI.i, align 8, !mcsema_real_eip !67
  store i64 %RDI_val.0.i, i64* %RDI.i, align 8, !mcsema_real_eip !67
  store i64 %253, i64* %RSP.i, align 8, !mcsema_real_eip !67
  store i64 %252, i64* %RBP.i, align 8, !mcsema_real_eip !67
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !67
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !67
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !67
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !67
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !67
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !67
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !67
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !67
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !67
  store i1 %250, i1* %CF.i, align 1, !mcsema_real_eip !67
  store i1 %249, i1* %PF.i, align 1, !mcsema_real_eip !67
  store i1 %240, i1* %AF.i, align 1, !mcsema_real_eip !67
  store i1 %242, i1* %ZF.i, align 1, !mcsema_real_eip !67
  store i1 %241, i1* %SF.i, align 1, !mcsema_real_eip !67
  store i1 %245, i1* %OF.i, align 1, !mcsema_real_eip !67
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !67
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !67
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !67
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !67
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !67
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !67
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !67
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !67
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !67
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !67
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !67
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !67
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !67
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !67
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !67
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !67
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !67
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !67
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !67
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !67
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !67
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !67
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !67
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !67
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !67
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !67
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !67
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !67
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !67
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !67
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !67
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !67
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !67
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !67
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !67
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !67
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !67
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !67
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !67
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !67
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !67
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !67
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !67
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !67
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !67
  store i64 %66, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !67
  store i64 %67, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !67
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
!2 = !{i64 144, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!4 = !{i64 8, [21 x i8] c"\09movq\09%rdi, -8(%rbp)\00"}
!5 = !{i64 12, [22 x i8] c"\09movl\09%esi, -12(%rbp)\00"}
!6 = !{i64 15, [20 x i8] c"\09movl\09$0, -16(%rbp)\00"}
!7 = !{i64 22, [24 x i8] c"\09movslq\09-12(%rbp), %rdi\00"}
!8 = !{i64 26, [15 x i8] c"\09shlq\09$3, %rdi\00"}
!9 = !{i64 30, [9 x i8] c"\09callq\090\00"}
!10 = !{i64 35, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!11 = !{i64 39, [22 x i8] c"\09movl\09-16(%rbp), %eax\00"}
!12 = !{i64 42, [22 x i8] c"\09cmpl\09-12(%rbp), %eax\00"}
!13 = !{i64 45, [8 x i8] c"\09jge\0966\00"}
!14 = !{i64 51, [21 x i8] c"\09movq\09-8(%rbp), %rax\00"}
!15 = !{i64 55, [24 x i8] c"\09movslq\09-16(%rbp), %rcx\00"}
!16 = !{i64 59, [26 x i8] c"\09movq\09(%rax,%rcx,8), %rax\00"}
!17 = !{i64 63, [22 x i8] c"\09movq\09%rax, -32(%rbp)\00"}
!18 = !{i64 71, [10 x i8] c"\09callq\0968\00"}
!19 = !{i64 152, [21 x i8] c"\09movq\09%rdi, -8(%rbp)\00"}
!20 = !{i64 156, [20 x i8] c"\09movl\09$1, -12(%rbp)\00"}
!21 = !{i64 163, [21 x i8] c"\09movq\09-8(%rbp), %rdi\00"}
!22 = !{i64 167, [9 x i8] c"\09callq\090\00"}
!23 = !{i64 174, [22 x i8] c"\09movl\09%ecx, -16(%rbp)\00"}
!24 = !{i64 177, [20 x i8] c"\09cmpl\09$1, -16(%rbp)\00"}
!25 = !{i64 181, [8 x i8] c"\09jle\0956\00"}
!26 = !{i64 191, [18 x i8] c"\09movb\09(%rax), %cl\00"}
!27 = !{i64 193, [21 x i8] c"\09movb\09%cl, -17(%rbp)\00"}
!28 = !{i64 196, [21 x i8] c"\09movq\09-8(%rbp), %rax\00"}
!29 = !{i64 200, [22 x i8] c"\09movl\09-16(%rbp), %edx\00"}
!30 = !{i64 206, [19 x i8] c"\09movslq\09%edx, %rsi\00"}
!31 = !{i64 209, [23 x i8] c"\09movb\09(%rax,%rsi), %cl\00"}
!32 = !{i64 212, [21 x i8] c"\09movb\09%cl, -18(%rbp)\00"}
!33 = !{i64 215, [24 x i8] c"\09movsbl\09-17(%rbp), %edx\00"}
!34 = !{i64 225, [7 x i8] c"\09jne\097\00"}
!35 = !{i64 231, [20 x i8] c"\09movl\09$0, -12(%rbp)\00"}
!36 = !{i64 238, [7 x i8] c"\09jmp\090\00"}
!37 = !{i64 246, [16 x i8] c"\09addq\09$32, %rsp\00"}
!38 = !{i64 251, [6 x i8] c"\09retq\00"}
!39 = !{i64 76, [15 x i8] c"\09cmpl\09$0, %eax\00"}
!40 = !{i64 79, [8 x i8] c"\09jne\0913\00"}
!41 = !{i64 85, [22 x i8] c"\09movq\09-32(%rbp), %rdi\00"}
!42 = !{i64 93, [11 x i8] c"\09callq\09158\00"}
!43 = !{i64 256, [12 x i8] c"\09pushq\09%rbp\00"}
!44 = !{i64 260, [21 x i8] c"\09movq\09%rdi, -8(%rbp)\00"}
!45 = !{i64 264, [22 x i8] c"\09movq\09%rsi, -16(%rbp)\00"}
!46 = !{i64 268, [21 x i8] c"\09movq\09-8(%rbp), %rsi\00"}
!47 = !{i64 272, [22 x i8] c"\09movq\09%rsi, -24(%rbp)\00"}
!48 = !{i64 276, [22 x i8] c"\09movq\09-16(%rbp), %rsi\00"}
!49 = !{i64 280, [22 x i8] c"\09movq\09%rsi, -32(%rbp)\00"}
!50 = !{i64 288, [18 x i8] c"\09movb\09(%rsi), %al\00"}
!51 = !{i64 290, [21 x i8] c"\09movb\09%al, -33(%rbp)\00"}
!52 = !{i64 297, [15 x i8] c"\09cmpl\09$0, %eax\00"}
!53 = !{i64 300, [7 x i8] c"\09je\0972\00"}
!54 = !{i64 313, [8 x i8] c"\09jne\0912\00"}
!55 = !{i64 334, [22 x i8] c"\09movq\09-32(%rbp), %rcx\00"}
!56 = !{i64 338, [18 x i8] c"\09movb\09%al, (%rcx)\00"}
!57 = !{i64 373, [9 x i8] c"\09jmp\09-85\00"}
!58 = !{i64 323, [18 x i8] c"\09movb\09$92, (%rax)\00"}
!59 = !{i64 379, [6 x i8] c"\09retq\00"}
!60 = !{i64 98, [7 x i8] c"\09jmp\090\00"}
!61 = !{i64 103, [22 x i8] c"\09movl\09-16(%rbp), %eax\00"}
!62 = !{i64 109, [22 x i8] c"\09movl\09%eax, -16(%rbp)\00"}
!63 = !{i64 117, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!64 = !{i64 121, [18 x i8] c"\09movb\09$2, 1(%rax)\00"}
!65 = !{i64 125, [16 x i8] c"\09addq\09$32, %rsp\00"}
!66 = !{i64 129, [11 x i8] c"\09popq\09%rbp\00"}
!67 = !{i64 130, [6 x i8] c"\09retq\00"}
