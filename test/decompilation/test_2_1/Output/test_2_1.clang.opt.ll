; ModuleID = 'Output/test_2_1.clang.opt.bc'
source_filename = "Output/test_2_1.clang.bc"
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
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !3
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !3
  %1 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !3
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !3
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !3
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !3
  %2 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !3
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !3
  %3 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !3
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !3
  %4 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !3
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !3
  %5 = load i64, i64* %RBP.i, align 8, !mcsema_real_eip !3
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !3
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !3
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !3
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
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
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !3
  %11 = load i1, i1* %DF.i, align 1
  %12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !3
  %13 = bitcast x86_fp80* %12 to i8*, !mcsema_real_eip !3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %13, i32 128, i32 4, i1 false) #2, !mcsema_real_eip !3
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
  %65 = add i64 %4, -16
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !4
  store i64 %1, i64* %66, align 8, !mcsema_real_eip !4
  %67 = add i64 %4, -56
  %68 = xor i64 %67, %65, !mcsema_real_eip !5
  %69 = and i64 %68, 16, !mcsema_real_eip !5
  %70 = icmp ne i64 %69, 0, !mcsema_real_eip !5
  %71 = trunc i64 %67 to i8, !mcsema_real_eip !5
  %72 = tail call i8 @llvm.ctpop.i8(i8 %71) #2, !mcsema_real_eip !5
  %73 = and i8 %72, 1
  %74 = icmp eq i8 %73, 0
  %75 = icmp eq i64 %67, 0, !mcsema_real_eip !5
  %76 = icmp slt i64 %67, 0
  %77 = icmp ult i64 %65, 40, !mcsema_real_eip !5
  %78 = and i64 %68, %65, !mcsema_real_eip !5
  %79 = icmp slt i64 %78, 0
  %80 = add i64 %4, -20, !mcsema_real_eip !6
  %81 = inttoptr i64 %80 to i32*
  store i32 0, i32* %81, align 4, !mcsema_real_eip !6
  %82 = add i64 %4, -24, !mcsema_real_eip !7
  %83 = trunc i64 %3 to i32, !mcsema_real_eip !7
  %84 = inttoptr i64 %82 to i32*
  store i32 %83, i32* %84, align 4, !mcsema_real_eip !7
  %85 = add i64 %4, -32, !mcsema_real_eip !8
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !8
  store i64 %2, i64* %86, align 8, !mcsema_real_eip !8
  %87 = inttoptr i64 %67 to i32*
  store i32 10, i32* %87, align 4, !mcsema_real_eip !9
  %88 = add i64 %4, -48, !mcsema_real_eip !10
  %89 = inttoptr i64 %88 to i32*
  store i32 20, i32* %89, align 4, !mcsema_real_eip !10
  %90 = add i64 %4, -36, !mcsema_real_eip !11
  %91 = inttoptr i64 %90 to i32*
  store i32 20, i32* %91, align 4, !mcsema_real_eip !11
  %92 = add i64 %4, -40, !mcsema_real_eip !12
  %93 = inttoptr i64 %92 to i32*
  store i32 10, i32* %93, align 4, !mcsema_real_eip !12
  %94 = add i64 %4, -64
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !13
  store i64 -4981261766360305936, i64* %95, align 8, !mcsema_real_eip !13
  %96 = bitcast %struct.regs* %0 to <2 x i64>*
  store <2 x i64> <i64 100, i64 20>, <2 x i64>* %96, align 8
  %97 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> <i64 400, i64 300>, <2 x i64>* %97, align 8
  %98 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 200, i64 100>, <2 x i64>* %98, align 8
  store i64 %94, i64* %RSP.i, align 8, !mcsema_real_eip !13
  store i64 %63, i64* %RBP.i, align 8, !mcsema_real_eip !13
  %99 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 500, i64 600>, <2 x i64>* %99, align 8
  %100 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> <i64 600, i64 10>, <2 x i64>* %100, align 8
  store i64 %6, i64* %R12.i, align 8, !mcsema_real_eip !13
  store i64 %7, i64* %R13.i, align 8, !mcsema_real_eip !13
  store i64 %8, i64* %R14.i, align 8, !mcsema_real_eip !13
  store i64 %9, i64* %R15.i, align 8, !mcsema_real_eip !13
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !13
  store i1 %77, i1* %CF.i, align 1, !mcsema_real_eip !13
  store i1 %74, i1* %PF.i, align 1, !mcsema_real_eip !13
  store i1 %70, i1* %AF.i, align 1, !mcsema_real_eip !13
  store i1 %75, i1* %ZF.i, align 1, !mcsema_real_eip !13
  store i1 %76, i1* %SF.i, align 1, !mcsema_real_eip !13
  store i1 %79, i1* %OF.i, align 1, !mcsema_real_eip !13
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !13
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !13
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !13
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !13
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !13
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !13
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !13
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !13
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !13
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !13
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !13
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !13
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !13
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !13
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !13
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !13
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !13
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !13
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !13
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !13
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !13
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !13
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !13
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !13
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !13
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !13
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !13
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !13
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !13
  store i11 %44, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !13
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !13
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !13
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !13
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !13
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !13
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !13
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !13
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !13
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !13
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !13
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !13
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !13
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !13
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !13
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !13
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !13
  store i64 %61, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !13
  store i64 %62, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !13
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast.i, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false) #2
  %101 = add i64 %4, -72
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !2
  store i64 %63, i64* %102, align 8, !mcsema_real_eip !2
  %103 = load i32, i32* %89, align 4, !mcsema_real_eip !14
  %104 = load i32, i32* %87, align 4, !mcsema_real_eip !15
  %105 = zext i32 %104 to i64
  %106 = add i64 %4, -76, !mcsema_real_eip !16
  %107 = inttoptr i64 %106 to i32*
  store i32 100, i32* %107, align 4, !mcsema_real_eip !16
  %108 = add i64 %4, -80, !mcsema_real_eip !17
  %109 = inttoptr i64 %108 to i32*
  store i32 200, i32* %109, align 4, !mcsema_real_eip !17
  %110 = add i64 %4, -84, !mcsema_real_eip !18
  %111 = inttoptr i64 %110 to i32*
  store i32 300, i32* %111, align 4, !mcsema_real_eip !18
  %112 = add i64 %4, -88, !mcsema_real_eip !19
  %113 = inttoptr i64 %112 to i32*
  store i32 400, i32* %113, align 4, !mcsema_real_eip !19
  %114 = add i64 %4, -92, !mcsema_real_eip !20
  %115 = inttoptr i64 %114 to i32*
  store i32 500, i32* %115, align 4, !mcsema_real_eip !20
  %116 = add i64 %4, -96, !mcsema_real_eip !21
  %117 = inttoptr i64 %116 to i32*
  store i32 600, i32* %117, align 4, !mcsema_real_eip !21
  %118 = add i64 %4, -100, !mcsema_real_eip !22
  %119 = inttoptr i64 %118 to i32*
  store i32 %104, i32* %119, align 4, !mcsema_real_eip !22
  %120 = add i64 %4, -104, !mcsema_real_eip !23
  %121 = inttoptr i64 %120 to i32*
  store i32 %103, i32* %121, align 4, !mcsema_real_eip !23
  %122 = load i32, i32* %119, align 4, !mcsema_real_eip !24
  %uadd.i.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %122, i32 %103) #2
  %123 = extractvalue { i32, i1 } %uadd.i.i, 0
  %124 = xor i32 %123, %103, !mcsema_real_eip !25
  %125 = xor i32 %124, %122, !mcsema_real_eip !25
  %126 = and i32 %125, 16, !mcsema_real_eip !25
  %127 = icmp ne i32 %126, 0, !mcsema_real_eip !25
  %128 = icmp slt i32 %123, 0
  %129 = icmp eq i32 %123, 0, !mcsema_real_eip !25
  %130 = xor i32 %103, -2147483648, !mcsema_real_eip !25
  %131 = xor i32 %130, %122, !mcsema_real_eip !25
  %132 = and i32 %124, %131, !mcsema_real_eip !25
  %133 = icmp slt i32 %132, 0
  %134 = trunc i32 %123 to i8, !mcsema_real_eip !25
  %135 = tail call i8 @llvm.ctpop.i8(i8 %134) #2, !mcsema_real_eip !25
  %136 = and i8 %135, 1
  %137 = icmp eq i8 %136, 0
  %138 = extractvalue { i32, i1 } %uadd.i.i, 1
  %139 = add i64 %4, -108, !mcsema_real_eip !26
  %140 = inttoptr i64 %139 to i32*
  store i32 %123, i32* %140, align 4, !mcsema_real_eip !26
  %141 = zext i32 %123 to i64
  %142 = load i64, i64* %102, align 8, !mcsema_real_eip !27
  store i64 %141, i64* %RAX.i, align 8, !mcsema_real_eip !28
  %143 = bitcast i64* %RBX.i to <2 x i64>*
  store <2 x i64> <i64 20, i64 400>, <2 x i64>* %143, align 8
  %144 = bitcast i64* %RDX.i to <2 x i64>*
  store <2 x i64> <i64 300, i64 200>, <2 x i64>* %144, align 8
  store i64 100, i64* %RDI.i, align 8, !mcsema_real_eip !28
  store i64 %67, i64* %RSP.i, align 8, !mcsema_real_eip !28
  store i64 %142, i64* %RBP.i, align 8, !mcsema_real_eip !28
  store i64 500, i64* %R8.i, align 8, !mcsema_real_eip !28
  store i64 600, i64* %R9.i, align 8, !mcsema_real_eip !28
  store i64 %105, i64* %R10.i, align 8, !mcsema_real_eip !28
  store i64 10, i64* %R11.i, align 8, !mcsema_real_eip !28
  store i64 %6, i64* %R12.i, align 8, !mcsema_real_eip !28
  store i64 %7, i64* %R13.i, align 8, !mcsema_real_eip !28
  store i64 %8, i64* %R14.i, align 8, !mcsema_real_eip !28
  store i64 %9, i64* %R15.i, align 8, !mcsema_real_eip !28
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !28
  store i1 %138, i1* %CF.i, align 1, !mcsema_real_eip !28
  store i1 %137, i1* %PF.i, align 1, !mcsema_real_eip !28
  store i1 %127, i1* %AF.i, align 1, !mcsema_real_eip !28
  store i1 %129, i1* %ZF.i, align 1, !mcsema_real_eip !28
  store i1 %128, i1* %SF.i, align 1, !mcsema_real_eip !28
  store i1 %133, i1* %OF.i, align 1, !mcsema_real_eip !28
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !28
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* nonnull %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !28
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !28
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !28
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !28
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !28
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !28
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !28
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !28
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !28
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !28
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !28
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !28
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !28
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !28
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !28
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !28
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !28
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !28
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !28
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !28
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !28
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !28
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !28
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !28
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !28
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !28
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !28
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !28
  store i11 %44, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !28
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !28
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !28
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !28
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !28
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !28
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !28
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !28
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !28
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !28
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !28
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !28
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !28
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !28
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !28
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !28
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !28
  store i64 %61, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !28
  store i64 %62, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !28
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %13, i32 128, i32 4, i1 false) #2, !mcsema_real_eip !13
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %67, i64 40) #2
  %145 = extractvalue { i64, i1 } %uadd.i, 0
  %146 = xor i64 %145, %67, !mcsema_real_eip !29
  %147 = and i64 %146, 16, !mcsema_real_eip !29
  %148 = icmp ne i64 %147, 0, !mcsema_real_eip !29
  %149 = icmp slt i64 %145, 0
  %150 = icmp eq i64 %145, 0, !mcsema_real_eip !29
  %151 = add i64 %4, 9223372036854775752
  %152 = and i64 %146, %151, !mcsema_real_eip !29
  %153 = icmp slt i64 %152, 0
  %154 = trunc i64 %145 to i8, !mcsema_real_eip !29
  %155 = tail call i8 @llvm.ctpop.i8(i8 %154) #2, !mcsema_real_eip !29
  %156 = and i8 %155, 1
  %157 = icmp eq i8 %156, 0
  %158 = extractvalue { i64, i1 } %uadd.i, 1
  %159 = inttoptr i64 %145 to i64*, !mcsema_real_eip !30
  %160 = load i64, i64* %159, align 8, !mcsema_real_eip !30
  %161 = add i64 %145, 8, !mcsema_real_eip !30
  %162 = inttoptr i64 %161 to i64*, !mcsema_real_eip !31
  %163 = load i64, i64* %162, align 8, !mcsema_real_eip !31
  %164 = add i64 %145, 24, !mcsema_real_eip !32
  store i64 %141, i64* %RAX.i, align 8, !mcsema_real_eip !32
  store i64 %160, i64* %RBX.i, align 8, !mcsema_real_eip !32
  %165 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> <i64 400, i64 300>, <2 x i64>* %165, align 8
  %166 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 200, i64 100>, <2 x i64>* %166, align 8
  store i64 %164, i64* %RSP.i, align 8, !mcsema_real_eip !32
  store i64 %163, i64* %RBP.i, align 8, !mcsema_real_eip !32
  %167 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 500, i64 600>, <2 x i64>* %167, align 8
  store i64 %105, i64* %R10.i, align 8, !mcsema_real_eip !32
  store i64 10, i64* %R11.i, align 8, !mcsema_real_eip !32
  store i64 %6, i64* %R12.i, align 8, !mcsema_real_eip !32
  store i64 %7, i64* %R13.i, align 8, !mcsema_real_eip !32
  store i64 %8, i64* %R14.i, align 8, !mcsema_real_eip !32
  store i64 %9, i64* %R15.i, align 8, !mcsema_real_eip !32
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !32
  store i1 %158, i1* %CF.i, align 1, !mcsema_real_eip !32
  store i1 %157, i1* %PF.i, align 1, !mcsema_real_eip !32
  store i1 %148, i1* %AF.i, align 1, !mcsema_real_eip !32
  store i1 %150, i1* %ZF.i, align 1, !mcsema_real_eip !32
  store i1 %149, i1* %SF.i, align 1, !mcsema_real_eip !32
  store i1 %153, i1* %OF.i, align 1, !mcsema_real_eip !32
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !32
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !32
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !32
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !32
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !32
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !32
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !32
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !32
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !32
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !32
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !32
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !32
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !32
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !32
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !32
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !32
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !32
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !32
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !32
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !32
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !32
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !32
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !32
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !32
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !32
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !32
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !32
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !32
  store i11 %44, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !32
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !32
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !32
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !32
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !32
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !32
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !32
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !32
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !32
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !32
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !32
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !32
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !32
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !32
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !32
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !32
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !32
  store i64 %61, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !32
  store i64 %62, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !32
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

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
!3 = !{i64 64}
!4 = !{i64 68}
!5 = !{i64 69}
!6 = !{i64 117}
!7 = !{i64 124}
!8 = !{i64 127}
!9 = !{i64 144}
!10 = !{i64 151}
!11 = !{i64 159}
!12 = !{i64 162}
!13 = !{i64 166}
!14 = !{i64 4}
!15 = !{i64 7}
!16 = !{i64 11}
!17 = !{i64 14}
!18 = !{i64 17}
!19 = !{i64 20}
!20 = !{i64 23}
!21 = !{i64 27}
!22 = !{i64 31}
!23 = !{i64 35}
!24 = !{i64 38}
!25 = !{i64 41}
!26 = !{i64 44}
!27 = !{i64 50}
!28 = !{i64 51}
!29 = !{i64 171}
!30 = !{i64 175}
!31 = !{i64 176}
!32 = !{i64 177}
