; ModuleID = 'Output/test_7_1.clang.opt.bc'
source_filename = "Output/test_7_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) local_unnamed_addr #2 {
driverBlockRaw:
  %STi_val.i.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !3
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !3
  %1 = load i64, i64* %RBX.i, align 8
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !3
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !3
  %2 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !3
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !3
  %3 = load i64, i64* %RBP.i, align 8, !mcsema_real_eip !3
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
  %4 = load i64, i64* %R11.i, align 8
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %5 = load i64, i64* %R12.i, align 8
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !3
  %6 = load i64, i64* %R13.i, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %7 = load i64, i64* %R14.i, align 8
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !3
  %8 = load i64, i64* %R15.i, align 8
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %9 = load i64, i64* %RIP.i, align 8
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !3
  %10 = load i1, i1* %DF.i, align 1
  %11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !3
  %12 = bitcast x86_fp80* %11 to i8*, !mcsema_real_eip !3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %12, i32 128, i32 4, i1 false) #2, !mcsema_real_eip !3
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !3
  %13 = load i1, i1* %FPU_B.i, align 1
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !3
  %14 = load i1, i1* %FPU_C3.i, align 1
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !3
  %15 = load i3, i3* %FPU_TOP.i, align 1
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !3
  %16 = load i1, i1* %FPU_C2.i, align 1
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !3
  %17 = load i1, i1* %FPU_C1.i, align 1
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !3
  %18 = load i1, i1* %FPU_C0.i, align 1
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !3
  %19 = load i1, i1* %FPU_ES.i, align 1
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !3
  %20 = load i1, i1* %FPU_SF.i, align 1
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !3
  %21 = load i1, i1* %FPU_PE.i, align 1
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !3
  %22 = load i1, i1* %FPU_UE.i, align 1
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !3
  %23 = load i1, i1* %FPU_OE.i, align 1
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !3
  %24 = load i1, i1* %FPU_ZE.i, align 1
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !3
  %25 = load i1, i1* %FPU_DE.i, align 1
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !3
  %26 = load i1, i1* %FPU_IE.i, align 1
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !3
  %27 = load i1, i1* %FPU_X.i, align 1
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !3
  %28 = load i2, i2* %FPU_RC.i, align 1
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !3
  %29 = load i2, i2* %FPU_PC.i, align 1
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !3
  %30 = load i1, i1* %FPU_PM.i, align 1
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !3
  %31 = load i1, i1* %FPU_UM.i, align 1
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !3
  %32 = load i1, i1* %FPU_OM.i, align 1
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !3
  %33 = load i1, i1* %FPU_ZM.i, align 1
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !3
  %34 = load i1, i1* %FPU_DM.i, align 1
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !3
  %35 = load i1, i1* %FPU_IM.i, align 1
  %36 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !3
  %37 = bitcast i8* %36 to i64*
  %38 = load i64, i64* %37, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !3
  %39 = load i16, i16* %FPU_LASTIP_SEG.i, align 1
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !3
  %40 = load i64, i64* %FPU_LASTIP_OFF.i, align 8
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !3
  %41 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !3
  %42 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8
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
  %63 = add i64 %2, -12, !mcsema_real_eip !4
  %64 = inttoptr i64 %63 to i32*
  store i32 0, i32* %64, align 4, !mcsema_real_eip !4
  %65 = add i64 %2, -60, !mcsema_real_eip !5
  %66 = inttoptr i64 %65 to i32*
  store i32 0, i32* %66, align 4, !mcsema_real_eip !5
  %67 = add i64 %2, -56
  br label %block_0x50.i

block_0x50.i:                                     ; preds = %block_0x50.i, %driverBlockRaw
  %68 = phi i32 [ 0, %driverBlockRaw ], [ %74, %block_0x50.i ]
  %69 = sext i32 %68 to i64, !mcsema_real_eip !6
  %70 = shl nsw i64 %69, 2
  %71 = add i64 %70, %67, !mcsema_real_eip !7
  %72 = inttoptr i64 %71 to i32*
  store i32 21, i32* %72, align 4, !mcsema_real_eip !7
  %73 = load i32, i32* %66, align 4, !mcsema_real_eip !8
  %74 = add i32 %73, 1
  store i32 %74, i32* %66, align 4, !mcsema_real_eip !9
  %75 = add i32 %73, -9
  %76 = xor i32 %75, %74, !mcsema_real_eip !10
  %77 = icmp slt i32 %75, 0
  %78 = and i32 %76, %74, !mcsema_real_eip !10
  %79 = icmp slt i32 %78, 0
  %tmp209.i = xor i1 %77, %79
  br i1 %tmp209.i, label %block_0x50.i, label %sub_30.exit, !mcsema_real_eip !11

sub_30.exit:                                      ; preds = %block_0x50.i
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !3
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !3
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !3
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !3
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !3
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %80 = add i64 %2, -88
  %81 = icmp ult i32 %74, 10
  %82 = icmp eq i32 %75, 0
  %83 = trunc i32 %75 to i8, !mcsema_real_eip !10
  %84 = tail call i8 @llvm.ctpop.i8(i8 %83) #2, !mcsema_real_eip !10
  %85 = and i8 %84, 1
  %86 = icmp eq i8 %85, 0
  %87 = and i32 %76, 16, !mcsema_real_eip !10
  %88 = icmp ne i32 %87, 0
  %89 = add i64 %2, -72, !mcsema_real_eip !12
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !12
  store i64 %67, i64* %90, align 8, !mcsema_real_eip !12
  %91 = inttoptr i64 %80 to i64*, !mcsema_real_eip !13
  store i64 %67, i64* %91, align 8, !mcsema_real_eip !13
  %92 = add i64 %2, -96
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !14
  store i64 -4981261766360305936, i64* %93, align 8, !mcsema_real_eip !14
  store i64 10, i64* %RAX.i, align 8, !mcsema_real_eip !14
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !14
  %94 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> <i64 10, i64 10>, <2 x i64>* %94, align 8
  %95 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 10, i64 10>, <2 x i64>* %95, align 8
  store i64 %92, i64* %RSP.i, align 8, !mcsema_real_eip !14
  store i64 %61, i64* %RBP.i, align 8, !mcsema_real_eip !14
  %96 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 10, i64 10>, <2 x i64>* %96, align 8
  store i64 %67, i64* %R10.i, align 8, !mcsema_real_eip !14
  store i64 %4, i64* %R11.i, align 8, !mcsema_real_eip !14
  store i64 %5, i64* %R12.i, align 8, !mcsema_real_eip !14
  store i64 %6, i64* %R13.i, align 8, !mcsema_real_eip !14
  store i64 %7, i64* %R14.i, align 8, !mcsema_real_eip !14
  store i64 %8, i64* %R15.i, align 8, !mcsema_real_eip !14
  store i64 %9, i64* %RIP.i, align 8, !mcsema_real_eip !14
  store i1 %81, i1* %CF.i, align 1, !mcsema_real_eip !14
  store i1 %86, i1* %PF.i, align 1, !mcsema_real_eip !14
  store i1 %88, i1* %AF.i, align 1, !mcsema_real_eip !14
  store i1 %82, i1* %ZF.i, align 1, !mcsema_real_eip !14
  store i1 %77, i1* %SF.i, align 1, !mcsema_real_eip !14
  store i1 %79, i1* %OF.i, align 1, !mcsema_real_eip !14
  store i1 %10, i1* %DF.i, align 1, !mcsema_real_eip !14
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !14
  store i1 %13, i1* %FPU_B.i, align 1, !mcsema_real_eip !14
  store i1 %14, i1* %FPU_C3.i, align 1, !mcsema_real_eip !14
  store i3 %15, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !14
  store i1 %16, i1* %FPU_C2.i, align 1, !mcsema_real_eip !14
  store i1 %17, i1* %FPU_C1.i, align 1, !mcsema_real_eip !14
  store i1 %18, i1* %FPU_C0.i, align 1, !mcsema_real_eip !14
  store i1 %19, i1* %FPU_ES.i, align 1, !mcsema_real_eip !14
  store i1 %20, i1* %FPU_SF.i, align 1, !mcsema_real_eip !14
  store i1 %21, i1* %FPU_PE.i, align 1, !mcsema_real_eip !14
  store i1 %22, i1* %FPU_UE.i, align 1, !mcsema_real_eip !14
  store i1 %23, i1* %FPU_OE.i, align 1, !mcsema_real_eip !14
  store i1 %24, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !14
  store i1 %25, i1* %FPU_DE.i, align 1, !mcsema_real_eip !14
  store i1 %26, i1* %FPU_IE.i, align 1, !mcsema_real_eip !14
  store i1 %27, i1* %FPU_X.i, align 1, !mcsema_real_eip !14
  store i2 %28, i2* %FPU_RC.i, align 1, !mcsema_real_eip !14
  store i2 %29, i2* %FPU_PC.i, align 1, !mcsema_real_eip !14
  store i1 %30, i1* %FPU_PM.i, align 1, !mcsema_real_eip !14
  store i1 %31, i1* %FPU_UM.i, align 1, !mcsema_real_eip !14
  store i1 %32, i1* %FPU_OM.i, align 1, !mcsema_real_eip !14
  store i1 %33, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !14
  store i1 %34, i1* %FPU_DM.i, align 1, !mcsema_real_eip !14
  store i1 %35, i1* %FPU_IM.i, align 1, !mcsema_real_eip !14
  store i64 %38, i64* %37, align 4
  store i16 %39, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !14
  store i64 %40, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !14
  store i16 %41, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !14
  store i64 %42, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !14
  store i128 %43, i128* %XMM0.i, align 1, !mcsema_real_eip !14
  store i128 %44, i128* %XMM1.i, align 1, !mcsema_real_eip !14
  store i128 %45, i128* %XMM2.i, align 1, !mcsema_real_eip !14
  store i128 %46, i128* %XMM3.i, align 1, !mcsema_real_eip !14
  store i128 %47, i128* %XMM4.i, align 1, !mcsema_real_eip !14
  store i128 %48, i128* %XMM5.i, align 1, !mcsema_real_eip !14
  store i128 %49, i128* %XMM6.i, align 1, !mcsema_real_eip !14
  store i128 %50, i128* %XMM7.i, align 1, !mcsema_real_eip !14
  store i128 %51, i128* %XMM8.i, align 1, !mcsema_real_eip !14
  store i128 %52, i128* %XMM9.i, align 1, !mcsema_real_eip !14
  store i128 %53, i128* %XMM10.i, align 1, !mcsema_real_eip !14
  store i128 %54, i128* %XMM11.i, align 1, !mcsema_real_eip !14
  store i128 %55, i128* %XMM12.i, align 1, !mcsema_real_eip !14
  store i128 %56, i128* %XMM13.i, align 1, !mcsema_real_eip !14
  store i128 %57, i128* %XMM14.i, align 1, !mcsema_real_eip !14
  store i128 %58, i128* %XMM15.i, align 1, !mcsema_real_eip !14
  store i64 %59, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !14
  store i64 %60, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !14
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast.i, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false) #2
  %97 = add i64 %2, -104
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !2
  store i64 %61, i64* %98, align 8, !mcsema_real_eip !2
  %99 = load i64, i64* %91, align 8, !mcsema_real_eip !15
  %100 = add i64 %2, -108, !mcsema_real_eip !16
  %101 = inttoptr i64 %100 to i32*
  store i32 10, i32* %101, align 4, !mcsema_real_eip !16
  %102 = add i64 %2, -112, !mcsema_real_eip !17
  %103 = inttoptr i64 %102 to i32*
  store i32 10, i32* %103, align 4, !mcsema_real_eip !17
  %104 = add i64 %2, -116, !mcsema_real_eip !18
  %105 = inttoptr i64 %104 to i32*
  store i32 10, i32* %105, align 4, !mcsema_real_eip !18
  %106 = add i64 %2, -120, !mcsema_real_eip !19
  %107 = inttoptr i64 %106 to i32*
  store i32 10, i32* %107, align 4, !mcsema_real_eip !19
  %108 = add i64 %2, -124, !mcsema_real_eip !20
  %109 = inttoptr i64 %108 to i32*
  store i32 10, i32* %109, align 4, !mcsema_real_eip !20
  %110 = add i64 %2, -128, !mcsema_real_eip !21
  %111 = inttoptr i64 %110 to i32*
  store i32 10, i32* %111, align 4, !mcsema_real_eip !21
  %112 = add i64 %2, -136, !mcsema_real_eip !22
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !22
  store i64 %99, i64* %113, align 8, !mcsema_real_eip !22
  %114 = inttoptr i64 %99 to i32*
  %115 = load i32, i32* %114, align 4, !mcsema_real_eip !23
  %116 = zext i32 %115 to i64
  %117 = add i64 %2, -140, !mcsema_real_eip !24
  %118 = inttoptr i64 %117 to i32*
  store i32 %115, i32* %118, align 4, !mcsema_real_eip !24
  %119 = load i64, i64* %98, align 8, !mcsema_real_eip !25
  store i64 %116, i64* %RAX.i, align 8, !mcsema_real_eip !26
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !26
  store i64 %116, i64* %RCX.i, align 8, !mcsema_real_eip !26
  %120 = bitcast i64* %RDX.i to <2 x i64>*
  store <2 x i64> <i64 10, i64 10>, <2 x i64>* %120, align 8
  store i64 10, i64* %RDI.i, align 8, !mcsema_real_eip !26
  store i64 %80, i64* %RSP.i, align 8, !mcsema_real_eip !26
  store i64 %119, i64* %RBP.i, align 8, !mcsema_real_eip !26
  %121 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 10, i64 10>, <2 x i64>* %121, align 8
  store i64 %67, i64* %R10.i, align 8, !mcsema_real_eip !26
  store i64 %4, i64* %R11.i, align 8, !mcsema_real_eip !26
  store i64 %5, i64* %R12.i, align 8, !mcsema_real_eip !26
  store i64 %6, i64* %R13.i, align 8, !mcsema_real_eip !26
  store i64 %7, i64* %R14.i, align 8, !mcsema_real_eip !26
  store i64 %8, i64* %R15.i, align 8, !mcsema_real_eip !26
  store i64 %9, i64* %RIP.i, align 8, !mcsema_real_eip !26
  store i1 %81, i1* %CF.i, align 1, !mcsema_real_eip !26
  store i1 %86, i1* %PF.i, align 1, !mcsema_real_eip !26
  store i1 %88, i1* %AF.i, align 1, !mcsema_real_eip !26
  store i1 %82, i1* %ZF.i, align 1, !mcsema_real_eip !26
  store i1 %77, i1* %SF.i, align 1, !mcsema_real_eip !26
  store i1 %79, i1* %OF.i, align 1, !mcsema_real_eip !26
  store i1 %10, i1* %DF.i, align 1, !mcsema_real_eip !26
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* nonnull %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !26
  store i1 %13, i1* %FPU_B.i, align 1, !mcsema_real_eip !26
  store i1 %14, i1* %FPU_C3.i, align 1, !mcsema_real_eip !26
  store i3 %15, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !26
  store i1 %16, i1* %FPU_C2.i, align 1, !mcsema_real_eip !26
  store i1 %17, i1* %FPU_C1.i, align 1, !mcsema_real_eip !26
  store i1 %18, i1* %FPU_C0.i, align 1, !mcsema_real_eip !26
  store i1 %19, i1* %FPU_ES.i, align 1, !mcsema_real_eip !26
  store i1 %20, i1* %FPU_SF.i, align 1, !mcsema_real_eip !26
  store i1 %21, i1* %FPU_PE.i, align 1, !mcsema_real_eip !26
  store i1 %22, i1* %FPU_UE.i, align 1, !mcsema_real_eip !26
  store i1 %23, i1* %FPU_OE.i, align 1, !mcsema_real_eip !26
  store i1 %24, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !26
  store i1 %25, i1* %FPU_DE.i, align 1, !mcsema_real_eip !26
  store i1 %26, i1* %FPU_IE.i, align 1, !mcsema_real_eip !26
  store i1 %27, i1* %FPU_X.i, align 1, !mcsema_real_eip !26
  store i2 %28, i2* %FPU_RC.i, align 1, !mcsema_real_eip !26
  store i2 %29, i2* %FPU_PC.i, align 1, !mcsema_real_eip !26
  store i1 %30, i1* %FPU_PM.i, align 1, !mcsema_real_eip !26
  store i1 %31, i1* %FPU_UM.i, align 1, !mcsema_real_eip !26
  store i1 %32, i1* %FPU_OM.i, align 1, !mcsema_real_eip !26
  store i1 %33, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !26
  store i1 %34, i1* %FPU_DM.i, align 1, !mcsema_real_eip !26
  store i1 %35, i1* %FPU_IM.i, align 1, !mcsema_real_eip !26
  store i64 %38, i64* %37, align 4
  store i16 %39, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !26
  store i64 %40, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !26
  store i16 %41, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !26
  store i64 %42, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !26
  store i128 %43, i128* %XMM0.i, align 1, !mcsema_real_eip !26
  store i128 %44, i128* %XMM1.i, align 1, !mcsema_real_eip !26
  store i128 %45, i128* %XMM2.i, align 1, !mcsema_real_eip !26
  store i128 %46, i128* %XMM3.i, align 1, !mcsema_real_eip !26
  store i128 %47, i128* %XMM4.i, align 1, !mcsema_real_eip !26
  store i128 %48, i128* %XMM5.i, align 1, !mcsema_real_eip !26
  store i128 %49, i128* %XMM6.i, align 1, !mcsema_real_eip !26
  store i128 %50, i128* %XMM7.i, align 1, !mcsema_real_eip !26
  store i128 %51, i128* %XMM8.i, align 1, !mcsema_real_eip !26
  store i128 %52, i128* %XMM9.i, align 1, !mcsema_real_eip !26
  store i128 %53, i128* %XMM10.i, align 1, !mcsema_real_eip !26
  store i128 %54, i128* %XMM11.i, align 1, !mcsema_real_eip !26
  store i128 %55, i128* %XMM12.i, align 1, !mcsema_real_eip !26
  store i128 %56, i128* %XMM13.i, align 1, !mcsema_real_eip !26
  store i128 %57, i128* %XMM14.i, align 1, !mcsema_real_eip !26
  store i128 %58, i128* %XMM15.i, align 1, !mcsema_real_eip !26
  store i64 %59, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !26
  store i64 %60, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !26
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %12, i32 128, i32 4, i1 false) #2, !mcsema_real_eip !14
  %uadd210.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %80, i64 80) #2
  %122 = extractvalue { i64, i1 } %uadd210.i, 0
  %123 = xor i64 %122, %80, !mcsema_real_eip !27
  %124 = and i64 %123, 16
  %125 = icmp eq i64 %124, 0
  %126 = icmp slt i64 %122, 0
  %127 = icmp eq i64 %122, 0, !mcsema_real_eip !27
  %128 = add i64 %2, 9223372036854775720
  %129 = and i64 %123, %128, !mcsema_real_eip !27
  %130 = icmp slt i64 %129, 0
  %131 = trunc i64 %122 to i8, !mcsema_real_eip !27
  %132 = tail call i8 @llvm.ctpop.i8(i8 %131) #2, !mcsema_real_eip !27
  %133 = and i8 %132, 1
  %134 = icmp eq i8 %133, 0
  %135 = extractvalue { i64, i1 } %uadd210.i, 1
  %136 = inttoptr i64 %122 to i64*, !mcsema_real_eip !28
  %137 = load i64, i64* %136, align 8, !mcsema_real_eip !28
  %138 = add i64 %122, 16, !mcsema_real_eip !29
  store i64 %116, i64* %RAX.i, align 8, !mcsema_real_eip !29
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !29
  store i64 %116, i64* %RCX.i, align 8, !mcsema_real_eip !29
  store i64 10, i64* %RDX.i, align 8, !mcsema_real_eip !29
  %139 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 10, i64 10>, <2 x i64>* %139, align 8
  store i64 %138, i64* %RSP.i, align 8, !mcsema_real_eip !29
  store i64 %137, i64* %RBP.i, align 8, !mcsema_real_eip !29
  %140 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 10, i64 10>, <2 x i64>* %140, align 8
  store i64 %67, i64* %R10.i, align 8, !mcsema_real_eip !29
  store i64 %4, i64* %R11.i, align 8, !mcsema_real_eip !29
  store i64 %5, i64* %R12.i, align 8, !mcsema_real_eip !29
  store i64 %6, i64* %R13.i, align 8, !mcsema_real_eip !29
  store i64 %7, i64* %R14.i, align 8, !mcsema_real_eip !29
  store i64 %8, i64* %R15.i, align 8, !mcsema_real_eip !29
  store i64 %9, i64* %RIP.i, align 8, !mcsema_real_eip !29
  store i1 %135, i1* %CF.i, align 1, !mcsema_real_eip !29
  store i1 %134, i1* %PF.i, align 1, !mcsema_real_eip !29
  store i1 %125, i1* %AF.i, align 1, !mcsema_real_eip !29
  store i1 %127, i1* %ZF.i, align 1, !mcsema_real_eip !29
  store i1 %126, i1* %SF.i, align 1, !mcsema_real_eip !29
  store i1 %130, i1* %OF.i, align 1, !mcsema_real_eip !29
  store i1 %10, i1* %DF.i, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !29
  store i1 %13, i1* %FPU_B.i, align 1, !mcsema_real_eip !29
  store i1 %14, i1* %FPU_C3.i, align 1, !mcsema_real_eip !29
  store i3 %15, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !29
  store i1 %16, i1* %FPU_C2.i, align 1, !mcsema_real_eip !29
  store i1 %17, i1* %FPU_C1.i, align 1, !mcsema_real_eip !29
  store i1 %18, i1* %FPU_C0.i, align 1, !mcsema_real_eip !29
  store i1 %19, i1* %FPU_ES.i, align 1, !mcsema_real_eip !29
  store i1 %20, i1* %FPU_SF.i, align 1, !mcsema_real_eip !29
  store i1 %21, i1* %FPU_PE.i, align 1, !mcsema_real_eip !29
  store i1 %22, i1* %FPU_UE.i, align 1, !mcsema_real_eip !29
  store i1 %23, i1* %FPU_OE.i, align 1, !mcsema_real_eip !29
  store i1 %24, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !29
  store i1 %25, i1* %FPU_DE.i, align 1, !mcsema_real_eip !29
  store i1 %26, i1* %FPU_IE.i, align 1, !mcsema_real_eip !29
  store i1 %27, i1* %FPU_X.i, align 1, !mcsema_real_eip !29
  store i2 %28, i2* %FPU_RC.i, align 1, !mcsema_real_eip !29
  store i2 %29, i2* %FPU_PC.i, align 1, !mcsema_real_eip !29
  store i1 %30, i1* %FPU_PM.i, align 1, !mcsema_real_eip !29
  store i1 %31, i1* %FPU_UM.i, align 1, !mcsema_real_eip !29
  store i1 %32, i1* %FPU_OM.i, align 1, !mcsema_real_eip !29
  store i1 %33, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !29
  store i1 %34, i1* %FPU_DM.i, align 1, !mcsema_real_eip !29
  store i1 %35, i1* %FPU_IM.i, align 1, !mcsema_real_eip !29
  store i64 %38, i64* %37, align 4
  store i16 %39, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !29
  store i64 %40, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !29
  store i16 %41, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !29
  store i64 %42, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !29
  store i128 %43, i128* %XMM0.i, align 1, !mcsema_real_eip !29
  store i128 %44, i128* %XMM1.i, align 1, !mcsema_real_eip !29
  store i128 %45, i128* %XMM2.i, align 1, !mcsema_real_eip !29
  store i128 %46, i128* %XMM3.i, align 1, !mcsema_real_eip !29
  store i128 %47, i128* %XMM4.i, align 1, !mcsema_real_eip !29
  store i128 %48, i128* %XMM5.i, align 1, !mcsema_real_eip !29
  store i128 %49, i128* %XMM6.i, align 1, !mcsema_real_eip !29
  store i128 %50, i128* %XMM7.i, align 1, !mcsema_real_eip !29
  store i128 %51, i128* %XMM8.i, align 1, !mcsema_real_eip !29
  store i128 %52, i128* %XMM9.i, align 1, !mcsema_real_eip !29
  store i128 %53, i128* %XMM10.i, align 1, !mcsema_real_eip !29
  store i128 %54, i128* %XMM11.i, align 1, !mcsema_real_eip !29
  store i128 %55, i128* %XMM12.i, align 1, !mcsema_real_eip !29
  store i128 %56, i128* %XMM13.i, align 1, !mcsema_real_eip !29
  store i128 %57, i128* %XMM14.i, align 1, !mcsema_real_eip !29
  store i128 %58, i128* %XMM15.i, align 1, !mcsema_real_eip !29
  store i64 %59, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !29
  store i64 %60, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !29
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
!3 = !{i64 48, [12 x i8] c"\09pushq\09%rbp\00"}
!4 = !{i64 56, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!5 = !{i64 63, [20 x i8] c"\09movl\09$0, -52(%rbp)\00"}
!6 = !{i64 80, [24 x i8] c"\09movslq\09-52(%rbp), %rax\00"}
!7 = !{i64 84, [28 x i8] c"\09movl\09$21, -48(%rbp,%rax,4)\00"}
!8 = !{i64 92, [22 x i8] c"\09movl\09-52(%rbp), %eax\00"}
!9 = !{i64 98, [22 x i8] c"\09movl\09%eax, -52(%rbp)\00"}
!10 = !{i64 70, [21 x i8] c"\09cmpl\09$10, -52(%rbp)\00"}
!11 = !{i64 74, [8 x i8] c"\09jge\0926\00"}
!12 = !{i64 121, [22 x i8] c"\09movq\09%rcx, -64(%rbp)\00"}
!13 = !{i64 137, [19 x i8] c"\09movq\09%r10, (%rsp)\00"}
!14 = !{i64 141, [12 x i8] c"\09callq\09-146\00"}
!15 = !{i64 4, [21 x i8] c"\09movq\0916(%rbp), %rax\00"}
!16 = !{i64 8, [21 x i8] c"\09movl\09%edi, -4(%rbp)\00"}
!17 = !{i64 11, [21 x i8] c"\09movl\09%esi, -8(%rbp)\00"}
!18 = !{i64 14, [22 x i8] c"\09movl\09%edx, -12(%rbp)\00"}
!19 = !{i64 17, [22 x i8] c"\09movl\09%ecx, -16(%rbp)\00"}
!20 = !{i64 20, [22 x i8] c"\09movl\09%r8d, -20(%rbp)\00"}
!21 = !{i64 24, [22 x i8] c"\09movl\09%r9d, -24(%rbp)\00"}
!22 = !{i64 28, [22 x i8] c"\09movq\09%rax, -32(%rbp)\00"}
!23 = !{i64 36, [19 x i8] c"\09movl\09(%rax), %ecx\00"}
!24 = !{i64 38, [22 x i8] c"\09movl\09%ecx, -36(%rbp)\00"}
!25 = !{i64 44, [11 x i8] c"\09popq\09%rbp\00"}
!26 = !{i64 45, [6 x i8] c"\09retq\00"}
!27 = !{i64 146, [16 x i8] c"\09addq\09$80, %rsp\00"}
!28 = !{i64 150, [11 x i8] c"\09popq\09%rbp\00"}
!29 = !{i64 151, [6 x i8] c"\09retq\00"}
