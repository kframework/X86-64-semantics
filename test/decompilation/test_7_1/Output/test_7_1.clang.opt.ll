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
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !3
  %43 = load i11, i11* %FPU_FOPCODE.i, align 1
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %44 = load i128, i128* %XMM0.i, align 1
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %45 = load i128, i128* %XMM1.i, align 1
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %46 = load i128, i128* %XMM2.i, align 1
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %47 = load i128, i128* %XMM3.i, align 1
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %48 = load i128, i128* %XMM4.i, align 1
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %49 = load i128, i128* %XMM5.i, align 1
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %50 = load i128, i128* %XMM6.i, align 1
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %51 = load i128, i128* %XMM7.i, align 1
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %52 = load i128, i128* %XMM8.i, align 1
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %53 = load i128, i128* %XMM9.i, align 1
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %54 = load i128, i128* %XMM10.i, align 1
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %55 = load i128, i128* %XMM11.i, align 1
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %56 = load i128, i128* %XMM12.i, align 1
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %57 = load i128, i128* %XMM13.i, align 1
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %58 = load i128, i128* %XMM14.i, align 1
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %59 = load i128, i128* %XMM15.i, align 1
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %60 = load i64, i64* %STACK_BASE.i, align 8
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %61 = load i64, i64* %STACK_LIMIT.i, align 8
  %62 = add i64 %2, -8
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !3
  store i64 %3, i64* %63, align 8, !mcsema_real_eip !3
  %64 = add i64 %2, -12, !mcsema_real_eip !4
  %65 = inttoptr i64 %64 to i32*
  store i32 0, i32* %65, align 4, !mcsema_real_eip !4
  %66 = add i64 %2, -60
  %67 = inttoptr i64 %66 to i32*
  store i32 0, i32* %67, align 4
  %68 = add i64 %2, -56
  br label %block_0x53.i

block_0x53.i:                                     ; preds = %block_0x53.i, %driverBlockRaw
  %.sink99.i = phi i32 [ 0, %driverBlockRaw ], [ %74, %block_0x53.i ]
  %69 = sext i32 %.sink99.i to i64, !mcsema_real_eip !5
  %70 = shl nsw i64 %69, 2
  %71 = add i64 %70, %68, !mcsema_real_eip !6
  %72 = inttoptr i64 %71 to i32*
  store i32 21, i32* %72, align 4, !mcsema_real_eip !6
  %73 = load i32, i32* %67, align 4, !mcsema_real_eip !7
  %74 = add i32 %73, 1
  store i32 %74, i32* %67, align 4
  %75 = add i32 %73, -9
  %76 = xor i32 %75, %74, !mcsema_real_eip !8
  %77 = icmp slt i32 %75, 0
  %78 = and i32 %76, %74, !mcsema_real_eip !8
  %79 = icmp slt i32 %78, 0
  %tmp.i = xor i1 %77, %79
  br i1 %tmp.i, label %block_0x53.i, label %sub_30.exit, !mcsema_real_eip !9

sub_30.exit:                                      ; preds = %block_0x53.i
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !3
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !3
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
  %83 = trunc i32 %75 to i8, !mcsema_real_eip !8
  %84 = tail call i8 @llvm.ctpop.i8(i8 %83) #2, !mcsema_real_eip !8
  %85 = and i8 %84, 1
  %86 = icmp eq i8 %85, 0
  %87 = and i32 %76, 16, !mcsema_real_eip !8
  %88 = icmp ne i32 %87, 0
  %89 = add i64 %2, -72, !mcsema_real_eip !10
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !10
  store i64 %68, i64* %90, align 8, !mcsema_real_eip !10
  %91 = inttoptr i64 %80 to i64*, !mcsema_real_eip !11
  store i64 %68, i64* %91, align 8, !mcsema_real_eip !11
  %92 = add i64 %2, -96
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !12
  store i64 -4981261766360305936, i64* %93, align 8, !mcsema_real_eip !12
  store i64 10, i64* %RAX.i, align 8, !mcsema_real_eip !12
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !12
  %94 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> <i64 10, i64 10>, <2 x i64>* %94, align 8
  %95 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 10, i64 10>, <2 x i64>* %95, align 8
  store i64 %92, i64* %RSP.i, align 8, !mcsema_real_eip !12
  store i64 %62, i64* %RBP.i, align 8, !mcsema_real_eip !12
  %96 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 10, i64 10>, <2 x i64>* %96, align 8
  store i64 %68, i64* %R10.i, align 8, !mcsema_real_eip !12
  store i64 %4, i64* %R11.i, align 8, !mcsema_real_eip !12
  store i64 %5, i64* %R12.i, align 8, !mcsema_real_eip !12
  store i64 %6, i64* %R13.i, align 8, !mcsema_real_eip !12
  store i64 %7, i64* %R14.i, align 8, !mcsema_real_eip !12
  store i64 %8, i64* %R15.i, align 8, !mcsema_real_eip !12
  store i64 %9, i64* %RIP.i, align 8, !mcsema_real_eip !12
  store i1 %81, i1* %CF.i, align 1, !mcsema_real_eip !12
  store i1 %86, i1* %PF.i, align 1, !mcsema_real_eip !12
  store i1 %88, i1* %AF.i, align 1, !mcsema_real_eip !12
  store i1 %82, i1* %ZF.i, align 1, !mcsema_real_eip !12
  store i1 %77, i1* %SF.i, align 1, !mcsema_real_eip !12
  store i1 %79, i1* %OF.i, align 1, !mcsema_real_eip !12
  store i1 %10, i1* %DF.i, align 1, !mcsema_real_eip !12
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !12
  store i1 %13, i1* %FPU_B.i, align 1, !mcsema_real_eip !12
  store i1 %14, i1* %FPU_C3.i, align 1, !mcsema_real_eip !12
  store i3 %15, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !12
  store i1 %16, i1* %FPU_C2.i, align 1, !mcsema_real_eip !12
  store i1 %17, i1* %FPU_C1.i, align 1, !mcsema_real_eip !12
  store i1 %18, i1* %FPU_C0.i, align 1, !mcsema_real_eip !12
  store i1 %19, i1* %FPU_ES.i, align 1, !mcsema_real_eip !12
  store i1 %20, i1* %FPU_SF.i, align 1, !mcsema_real_eip !12
  store i1 %21, i1* %FPU_PE.i, align 1, !mcsema_real_eip !12
  store i1 %22, i1* %FPU_UE.i, align 1, !mcsema_real_eip !12
  store i1 %23, i1* %FPU_OE.i, align 1, !mcsema_real_eip !12
  store i1 %24, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !12
  store i1 %25, i1* %FPU_DE.i, align 1, !mcsema_real_eip !12
  store i1 %26, i1* %FPU_IE.i, align 1, !mcsema_real_eip !12
  store i1 %27, i1* %FPU_X.i, align 1, !mcsema_real_eip !12
  store i2 %28, i2* %FPU_RC.i, align 1, !mcsema_real_eip !12
  store i2 %29, i2* %FPU_PC.i, align 1, !mcsema_real_eip !12
  store i1 %30, i1* %FPU_PM.i, align 1, !mcsema_real_eip !12
  store i1 %31, i1* %FPU_UM.i, align 1, !mcsema_real_eip !12
  store i1 %32, i1* %FPU_OM.i, align 1, !mcsema_real_eip !12
  store i1 %33, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !12
  store i1 %34, i1* %FPU_DM.i, align 1, !mcsema_real_eip !12
  store i1 %35, i1* %FPU_IM.i, align 1, !mcsema_real_eip !12
  store i64 %38, i64* %37, align 4
  store i16 %39, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !12
  store i64 %40, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !12
  store i16 %41, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !12
  store i64 %42, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !12
  store i11 %43, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !12
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !12
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !12
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !12
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !12
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !12
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !12
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !12
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !12
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !12
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !12
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !12
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !12
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !12
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !12
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !12
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !12
  store i64 %60, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !12
  store i64 %61, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !12
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast.i, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false) #2
  %97 = add i64 %2, -104
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !2
  store i64 %62, i64* %98, align 8, !mcsema_real_eip !2
  %99 = load i64, i64* %91, align 8, !mcsema_real_eip !13
  %100 = add i64 %2, -108, !mcsema_real_eip !14
  %101 = inttoptr i64 %100 to i32*
  store i32 10, i32* %101, align 4, !mcsema_real_eip !14
  %102 = add i64 %2, -112, !mcsema_real_eip !15
  %103 = inttoptr i64 %102 to i32*
  store i32 10, i32* %103, align 4, !mcsema_real_eip !15
  %104 = add i64 %2, -116, !mcsema_real_eip !16
  %105 = inttoptr i64 %104 to i32*
  store i32 10, i32* %105, align 4, !mcsema_real_eip !16
  %106 = add i64 %2, -120, !mcsema_real_eip !17
  %107 = inttoptr i64 %106 to i32*
  store i32 10, i32* %107, align 4, !mcsema_real_eip !17
  %108 = add i64 %2, -124, !mcsema_real_eip !18
  %109 = inttoptr i64 %108 to i32*
  store i32 10, i32* %109, align 4, !mcsema_real_eip !18
  %110 = add i64 %2, -128, !mcsema_real_eip !19
  %111 = inttoptr i64 %110 to i32*
  store i32 10, i32* %111, align 4, !mcsema_real_eip !19
  %112 = add i64 %2, -136, !mcsema_real_eip !20
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !20
  store i64 %99, i64* %113, align 8, !mcsema_real_eip !20
  %114 = inttoptr i64 %99 to i32*
  %115 = load i32, i32* %114, align 4, !mcsema_real_eip !21
  %116 = zext i32 %115 to i64
  %117 = add i64 %2, -140, !mcsema_real_eip !22
  %118 = inttoptr i64 %117 to i32*
  store i32 %115, i32* %118, align 4, !mcsema_real_eip !22
  %119 = load i64, i64* %98, align 8, !mcsema_real_eip !23
  store i64 %116, i64* %RAX.i, align 8, !mcsema_real_eip !24
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !24
  store i64 %116, i64* %RCX.i, align 8, !mcsema_real_eip !24
  %120 = bitcast i64* %RDX.i to <2 x i64>*
  store <2 x i64> <i64 10, i64 10>, <2 x i64>* %120, align 8
  store i64 10, i64* %RDI.i, align 8, !mcsema_real_eip !24
  store i64 %80, i64* %RSP.i, align 8, !mcsema_real_eip !24
  store i64 %119, i64* %RBP.i, align 8, !mcsema_real_eip !24
  store i64 10, i64* %R8.i, align 8, !mcsema_real_eip !24
  store i64 10, i64* %R9.i, align 8, !mcsema_real_eip !24
  store i64 %68, i64* %R10.i, align 8, !mcsema_real_eip !24
  store i64 %4, i64* %R11.i, align 8, !mcsema_real_eip !24
  store i64 %5, i64* %R12.i, align 8, !mcsema_real_eip !24
  store i64 %6, i64* %R13.i, align 8, !mcsema_real_eip !24
  store i64 %7, i64* %R14.i, align 8, !mcsema_real_eip !24
  store i64 %8, i64* %R15.i, align 8, !mcsema_real_eip !24
  store i64 %9, i64* %RIP.i, align 8, !mcsema_real_eip !24
  store i1 %81, i1* %CF.i, align 1, !mcsema_real_eip !24
  store i1 %86, i1* %PF.i, align 1, !mcsema_real_eip !24
  store i1 %88, i1* %AF.i, align 1, !mcsema_real_eip !24
  store i1 %82, i1* %ZF.i, align 1, !mcsema_real_eip !24
  store i1 %77, i1* %SF.i, align 1, !mcsema_real_eip !24
  store i1 %79, i1* %OF.i, align 1, !mcsema_real_eip !24
  store i1 %10, i1* %DF.i, align 1, !mcsema_real_eip !24
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* nonnull %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !24
  store i1 %13, i1* %FPU_B.i, align 1, !mcsema_real_eip !24
  store i1 %14, i1* %FPU_C3.i, align 1, !mcsema_real_eip !24
  store i3 %15, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !24
  store i1 %16, i1* %FPU_C2.i, align 1, !mcsema_real_eip !24
  store i1 %17, i1* %FPU_C1.i, align 1, !mcsema_real_eip !24
  store i1 %18, i1* %FPU_C0.i, align 1, !mcsema_real_eip !24
  store i1 %19, i1* %FPU_ES.i, align 1, !mcsema_real_eip !24
  store i1 %20, i1* %FPU_SF.i, align 1, !mcsema_real_eip !24
  store i1 %21, i1* %FPU_PE.i, align 1, !mcsema_real_eip !24
  store i1 %22, i1* %FPU_UE.i, align 1, !mcsema_real_eip !24
  store i1 %23, i1* %FPU_OE.i, align 1, !mcsema_real_eip !24
  store i1 %24, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !24
  store i1 %25, i1* %FPU_DE.i, align 1, !mcsema_real_eip !24
  store i1 %26, i1* %FPU_IE.i, align 1, !mcsema_real_eip !24
  store i1 %27, i1* %FPU_X.i, align 1, !mcsema_real_eip !24
  store i2 %28, i2* %FPU_RC.i, align 1, !mcsema_real_eip !24
  store i2 %29, i2* %FPU_PC.i, align 1, !mcsema_real_eip !24
  store i1 %30, i1* %FPU_PM.i, align 1, !mcsema_real_eip !24
  store i1 %31, i1* %FPU_UM.i, align 1, !mcsema_real_eip !24
  store i1 %32, i1* %FPU_OM.i, align 1, !mcsema_real_eip !24
  store i1 %33, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !24
  store i1 %34, i1* %FPU_DM.i, align 1, !mcsema_real_eip !24
  store i1 %35, i1* %FPU_IM.i, align 1, !mcsema_real_eip !24
  store i64 %38, i64* %37, align 4
  store i16 %39, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !24
  store i64 %40, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !24
  store i16 %41, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !24
  store i64 %42, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !24
  store i11 %43, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !24
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !24
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !24
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !24
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !24
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !24
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !24
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !24
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !24
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !24
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !24
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !24
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !24
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !24
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !24
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !24
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !24
  store i64 %60, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !24
  store i64 %61, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !24
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %12, i32 128, i32 4, i1 false) #2, !mcsema_real_eip !12
  %uadd211.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %80, i64 80) #2
  %121 = extractvalue { i64, i1 } %uadd211.i, 0
  %122 = xor i64 %121, %80, !mcsema_real_eip !25
  %123 = and i64 %122, 16
  %124 = icmp eq i64 %123, 0
  %125 = icmp slt i64 %121, 0
  %126 = icmp eq i64 %121, 0, !mcsema_real_eip !25
  %127 = add i64 %2, 9223372036854775720
  %128 = and i64 %122, %127, !mcsema_real_eip !25
  %129 = icmp slt i64 %128, 0
  %130 = trunc i64 %121 to i8, !mcsema_real_eip !25
  %131 = tail call i8 @llvm.ctpop.i8(i8 %130) #2, !mcsema_real_eip !25
  %132 = and i8 %131, 1
  %133 = icmp eq i8 %132, 0
  %134 = extractvalue { i64, i1 } %uadd211.i, 1
  %135 = inttoptr i64 %121 to i64*, !mcsema_real_eip !26
  %136 = load i64, i64* %135, align 8, !mcsema_real_eip !26
  %137 = add i64 %121, 16, !mcsema_real_eip !27
  store i64 %116, i64* %RAX.i, align 8, !mcsema_real_eip !27
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !27
  store i64 %116, i64* %RCX.i, align 8, !mcsema_real_eip !27
  %138 = bitcast i64* %RDX.i to <2 x i64>*
  store <2 x i64> <i64 10, i64 10>, <2 x i64>* %138, align 8
  store i64 10, i64* %RDI.i, align 8, !mcsema_real_eip !27
  store i64 %137, i64* %RSP.i, align 8, !mcsema_real_eip !27
  store i64 %136, i64* %RBP.i, align 8, !mcsema_real_eip !27
  %139 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 10, i64 10>, <2 x i64>* %139, align 8
  store i64 %68, i64* %R10.i, align 8, !mcsema_real_eip !27
  store i64 %4, i64* %R11.i, align 8, !mcsema_real_eip !27
  store i64 %5, i64* %R12.i, align 8, !mcsema_real_eip !27
  store i64 %6, i64* %R13.i, align 8, !mcsema_real_eip !27
  store i64 %7, i64* %R14.i, align 8, !mcsema_real_eip !27
  store i64 %8, i64* %R15.i, align 8, !mcsema_real_eip !27
  store i64 %9, i64* %RIP.i, align 8, !mcsema_real_eip !27
  store i1 %134, i1* %CF.i, align 1, !mcsema_real_eip !27
  store i1 %133, i1* %PF.i, align 1, !mcsema_real_eip !27
  store i1 %124, i1* %AF.i, align 1, !mcsema_real_eip !27
  store i1 %126, i1* %ZF.i, align 1, !mcsema_real_eip !27
  store i1 %125, i1* %SF.i, align 1, !mcsema_real_eip !27
  store i1 %129, i1* %OF.i, align 1, !mcsema_real_eip !27
  store i1 %10, i1* %DF.i, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !27
  store i1 %13, i1* %FPU_B.i, align 1, !mcsema_real_eip !27
  store i1 %14, i1* %FPU_C3.i, align 1, !mcsema_real_eip !27
  store i3 %15, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !27
  store i1 %16, i1* %FPU_C2.i, align 1, !mcsema_real_eip !27
  store i1 %17, i1* %FPU_C1.i, align 1, !mcsema_real_eip !27
  store i1 %18, i1* %FPU_C0.i, align 1, !mcsema_real_eip !27
  store i1 %19, i1* %FPU_ES.i, align 1, !mcsema_real_eip !27
  store i1 %20, i1* %FPU_SF.i, align 1, !mcsema_real_eip !27
  store i1 %21, i1* %FPU_PE.i, align 1, !mcsema_real_eip !27
  store i1 %22, i1* %FPU_UE.i, align 1, !mcsema_real_eip !27
  store i1 %23, i1* %FPU_OE.i, align 1, !mcsema_real_eip !27
  store i1 %24, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !27
  store i1 %25, i1* %FPU_DE.i, align 1, !mcsema_real_eip !27
  store i1 %26, i1* %FPU_IE.i, align 1, !mcsema_real_eip !27
  store i1 %27, i1* %FPU_X.i, align 1, !mcsema_real_eip !27
  store i2 %28, i2* %FPU_RC.i, align 1, !mcsema_real_eip !27
  store i2 %29, i2* %FPU_PC.i, align 1, !mcsema_real_eip !27
  store i1 %30, i1* %FPU_PM.i, align 1, !mcsema_real_eip !27
  store i1 %31, i1* %FPU_UM.i, align 1, !mcsema_real_eip !27
  store i1 %32, i1* %FPU_OM.i, align 1, !mcsema_real_eip !27
  store i1 %33, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !27
  store i1 %34, i1* %FPU_DM.i, align 1, !mcsema_real_eip !27
  store i1 %35, i1* %FPU_IM.i, align 1, !mcsema_real_eip !27
  store i64 %38, i64* %37, align 4
  store i16 %39, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !27
  store i64 %40, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !27
  store i16 %41, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !27
  store i64 %42, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !27
  store i11 %43, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !27
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
  store i64 %60, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !27
  store i64 %61, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !27
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
!3 = !{i64 48}
!4 = !{i64 56}
!5 = !{i64 83}
!6 = !{i64 87}
!7 = !{i64 95}
!8 = !{i64 70}
!9 = !{i64 77}
!10 = !{i64 126}
!11 = !{i64 142}
!12 = !{i64 146}
!13 = !{i64 4}
!14 = !{i64 8}
!15 = !{i64 11}
!16 = !{i64 14}
!17 = !{i64 17}
!18 = !{i64 20}
!19 = !{i64 24}
!20 = !{i64 28}
!21 = !{i64 36}
!22 = !{i64 38}
!23 = !{i64 44}
!24 = !{i64 45}
!25 = !{i64 151}
!26 = !{i64 155}
!27 = !{i64 156}
