; ModuleID = 'Output/test_26_1.clang.opt.bc'
source_filename = "Output/test_26_1.clang.bc"
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
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !3
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !3
  %1 = load i64, i64* %RBX.i, align 8
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !3
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !3
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !3
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !3
  %2 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !3
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !3
  %3 = load i64, i64* %RBP.i, align 8, !mcsema_real_eip !3
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !3
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !3
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !3
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
  %4 = bitcast i64* %R10.i to <2 x i64>*
  %5 = load <2 x i64>, <2 x i64>* %4, align 8
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
  %63 = add i64 %2, -8
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !3
  store i64 %3, i64* %64, align 8, !mcsema_real_eip !3
  %65 = add i64 %2, -88
  %66 = xor i64 %65, %63, !mcsema_real_eip !4
  %67 = and i64 %66, 16
  %68 = icmp eq i64 %67, 0
  %69 = trunc i64 %65 to i8, !mcsema_real_eip !4
  %70 = tail call i8 @llvm.ctpop.i8(i8 %69), !mcsema_real_eip !4
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  %73 = icmp eq i64 %65, 0, !mcsema_real_eip !4
  %74 = icmp slt i64 %65, 0
  %75 = icmp ult i64 %63, 80, !mcsema_real_eip !4
  %76 = and i64 %66, %63, !mcsema_real_eip !4
  %77 = icmp slt i64 %76, 0
  %78 = add i64 %2, -12, !mcsema_real_eip !5
  %79 = inttoptr i64 %78 to i32*
  store i32 0, i32* %79, align 4, !mcsema_real_eip !5
  %80 = add i64 %2, -24, !mcsema_real_eip !6
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !6
  store i64 42949672970, i64* %81, align 8, !mcsema_real_eip !6
  %82 = add i64 %2, -16, !mcsema_real_eip !7
  %83 = inttoptr i64 %82 to i32*
  store i32 10, i32* %83, align 4, !mcsema_real_eip !7
  %84 = tail call x86_64_sysvcc i64 @malloc(i64 24), !mcsema_real_eip !8
  %85 = add i64 %2, -32, !mcsema_real_eip !9
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !9
  store i64 %84, i64* %86, align 8, !mcsema_real_eip !9
  %87 = inttoptr i64 %84 to i32*
  store i32 5, i32* %87, align 4, !mcsema_real_eip !10
  %88 = load i64, i64* %86, align 8, !mcsema_real_eip !11
  %89 = add i64 %88, 4, !mcsema_real_eip !12
  %90 = inttoptr i64 %89 to i32*
  store i32 5, i32* %90, align 4, !mcsema_real_eip !12
  %91 = load i64, i64* %86, align 8, !mcsema_real_eip !13
  %92 = add i64 %91, 8, !mcsema_real_eip !14
  %93 = inttoptr i64 %92 to i32*
  store i32 5, i32* %93, align 4, !mcsema_real_eip !14
  %94 = load i64, i64* %86, align 8, !mcsema_real_eip !15
  %95 = add i64 %2, -80, !mcsema_real_eip !16
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !16
  store i64 %94, i64* %96, align 8, !mcsema_real_eip !16
  %97 = inttoptr i64 %65 to i64*, !mcsema_real_eip !17
  store i64 %80, i64* %97, align 8, !mcsema_real_eip !17
  %98 = add i64 %2, -68, !mcsema_real_eip !18
  %99 = inttoptr i64 %98 to i32*
  store i32 3, i32* %99, align 4, !mcsema_real_eip !18
  %100 = add i64 %2, -72, !mcsema_real_eip !19
  %101 = inttoptr i64 %100 to i32*
  store i32 2, i32* %101, align 4, !mcsema_real_eip !19
  %102 = load i32, i32* %99, align 4, !mcsema_real_eip !20
  %103 = zext i32 %102 to i64
  %104 = add i64 %2, -96
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !21
  store i64 -4981261766360305936, i64* %105, align 8, !mcsema_real_eip !21
  store i64 %80, i64* %RAX.i, align 8, !mcsema_real_eip !21
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !21
  %106 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> <i64 1, i64 3>, <2 x i64>* %106, align 8
  %107 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 2, i64 1>, <2 x i64>* %107, align 8
  store i64 %104, i64* %RSP.i, align 8, !mcsema_real_eip !21
  store i64 %63, i64* %RBP.i, align 8, !mcsema_real_eip !21
  store i64 2, i64* %R8.i, align 8, !mcsema_real_eip !21
  store i64 %103, i64* %R9.i, align 8, !mcsema_real_eip !21
  %108 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> %5, <2 x i64>* %108, align 8
  store i64 %6, i64* %R12.i, align 8, !mcsema_real_eip !21
  store i64 %7, i64* %R13.i, align 8, !mcsema_real_eip !21
  store i64 %8, i64* %R14.i, align 8, !mcsema_real_eip !21
  store i64 %9, i64* %R15.i, align 8, !mcsema_real_eip !21
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !21
  store i1 %75, i1* %CF.i, align 1, !mcsema_real_eip !21
  store i1 %72, i1* %PF.i, align 1, !mcsema_real_eip !21
  store i1 %68, i1* %AF.i, align 1, !mcsema_real_eip !21
  store i1 %73, i1* %ZF.i, align 1, !mcsema_real_eip !21
  store i1 %74, i1* %SF.i, align 1, !mcsema_real_eip !21
  store i1 %77, i1* %OF.i, align 1, !mcsema_real_eip !21
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !21
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !21
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !21
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !21
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !21
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !21
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !21
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !21
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !21
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !21
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !21
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !21
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !21
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !21
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !21
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !21
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !21
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !21
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !21
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !21
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !21
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !21
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !21
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !21
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !21
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !21
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !21
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !21
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !21
  store i11 %44, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !21
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !21
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !21
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !21
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !21
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !21
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !21
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !21
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !21
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !21
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !21
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !21
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !21
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !21
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !21
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !21
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !21
  store i64 %61, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !21
  store i64 %62, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !21
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast.i, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false)
  %109 = add i64 %2, -104
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !2
  store i64 %63, i64* %110, align 8, !mcsema_real_eip !2
  %111 = load i64, i64* %96, align 8, !mcsema_real_eip !22
  %112 = load i64, i64* %97, align 8, !mcsema_real_eip !23
  %113 = add i64 %2, -124, !mcsema_real_eip !24
  %114 = inttoptr i64 %113 to i32*
  store i32 1, i32* %114, align 4, !mcsema_real_eip !24
  %115 = add i64 %2, -128, !mcsema_real_eip !25
  %116 = inttoptr i64 %115 to i32*
  store i32 2, i32* %116, align 4, !mcsema_real_eip !25
  %117 = add i64 %2, -132, !mcsema_real_eip !26
  %118 = inttoptr i64 %117 to i32*
  store i32 3, i32* %118, align 4, !mcsema_real_eip !26
  %119 = add i64 %2, -136, !mcsema_real_eip !27
  %120 = inttoptr i64 %119 to i32*
  store i32 1, i32* %120, align 4, !mcsema_real_eip !27
  %121 = add i64 %2, -140, !mcsema_real_eip !28
  %122 = inttoptr i64 %121 to i32*
  store i32 2, i32* %122, align 4, !mcsema_real_eip !28
  %123 = add i64 %2, -144, !mcsema_real_eip !29
  %124 = inttoptr i64 %123 to i32*
  store i32 %102, i32* %124, align 4, !mcsema_real_eip !29
  %125 = add i64 %2, -152, !mcsema_real_eip !30
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !30
  store i64 %112, i64* %126, align 8, !mcsema_real_eip !30
  %127 = add i64 %2, -160, !mcsema_real_eip !31
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !31
  store i64 %111, i64* %128, align 8, !mcsema_real_eip !31
  %129 = load i64, i64* %126, align 8
  %130 = inttoptr i64 %129 to i32*
  %131 = load i32, i32* %130, align 4, !mcsema_real_eip !32
  %132 = inttoptr i64 %111 to i32*
  %133 = load i32, i32* %132, align 4, !mcsema_real_eip !33
  %134 = add i32 %133, %131
  %135 = add i64 %2, -176, !mcsema_real_eip !34
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !34
  %137 = inttoptr i64 %135 to i32*
  store i32 %134, i32* %137, align 4, !mcsema_real_eip !34
  %138 = load i64, i64* %126, align 8, !mcsema_real_eip !35
  %139 = add i64 %138, 4, !mcsema_real_eip !36
  %140 = inttoptr i64 %139 to i32*
  %141 = load i32, i32* %140, align 4, !mcsema_real_eip !36
  %142 = load i64, i64* %128, align 8, !mcsema_real_eip !37
  %143 = add i64 %142, 4, !mcsema_real_eip !38
  %144 = inttoptr i64 %143 to i32*
  %145 = load i32, i32* %144, align 4, !mcsema_real_eip !38
  %146 = add i32 %145, %141
  %147 = add i64 %2, -172, !mcsema_real_eip !39
  %148 = inttoptr i64 %147 to i32*
  store i32 %146, i32* %148, align 4, !mcsema_real_eip !39
  %149 = load i64, i64* %126, align 8, !mcsema_real_eip !40
  %150 = add i64 %149, 8, !mcsema_real_eip !41
  %151 = inttoptr i64 %150 to i32*
  %152 = load i32, i32* %151, align 4, !mcsema_real_eip !41
  %153 = load i64, i64* %128, align 8, !mcsema_real_eip !42
  %154 = add i64 %153, 8, !mcsema_real_eip !43
  %155 = inttoptr i64 %154 to i32*
  %156 = load i32, i32* %155, align 4, !mcsema_real_eip !43
  %uadd72.i.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %156, i32 %152) #2
  %157 = extractvalue { i32, i1 } %uadd72.i.i, 0
  %158 = xor i32 %157, %152, !mcsema_real_eip !44
  %159 = xor i32 %158, %156, !mcsema_real_eip !44
  %160 = and i32 %159, 16, !mcsema_real_eip !44
  %161 = icmp ne i32 %160, 0, !mcsema_real_eip !44
  %162 = icmp slt i32 %157, 0
  %163 = icmp eq i32 %157, 0, !mcsema_real_eip !44
  %164 = xor i32 %152, -2147483648, !mcsema_real_eip !44
  %165 = xor i32 %164, %156, !mcsema_real_eip !44
  %166 = and i32 %158, %165, !mcsema_real_eip !44
  %167 = icmp slt i32 %166, 0
  %168 = trunc i32 %157 to i8, !mcsema_real_eip !44
  %169 = tail call i8 @llvm.ctpop.i8(i8 %168) #2, !mcsema_real_eip !44
  %170 = and i8 %169, 1
  %171 = icmp eq i8 %170, 0
  %172 = extractvalue { i32, i1 } %uadd72.i.i, 1
  %173 = add i64 %2, -168, !mcsema_real_eip !45
  %174 = inttoptr i64 %173 to i32*
  store i32 %157, i32* %174, align 4, !mcsema_real_eip !45
  %175 = add i64 %2, -112, !mcsema_real_eip !46
  %176 = inttoptr i64 %175 to i32*
  store i32 %157, i32* %176, align 4, !mcsema_real_eip !46
  %177 = load i64, i64* %136, align 8, !mcsema_real_eip !47
  %178 = add i64 %2, -120, !mcsema_real_eip !48
  %179 = inttoptr i64 %178 to i64*, !mcsema_real_eip !48
  store i64 %177, i64* %179, align 8, !mcsema_real_eip !48
  %180 = load i32, i32* %176, align 4, !mcsema_real_eip !49
  %181 = zext i32 %180 to i64, !mcsema_real_eip !49
  %182 = add i64 %2, -184, !mcsema_real_eip !50
  %183 = inttoptr i64 %182 to i32*
  store i32 %180, i32* %183, align 4, !mcsema_real_eip !50
  %184 = load i64, i64* %179, align 8
  %185 = add i64 %2, -192, !mcsema_real_eip !51
  %186 = inttoptr i64 %185 to i64*, !mcsema_real_eip !51
  store i64 %184, i64* %186, align 8, !mcsema_real_eip !51
  %187 = load i32, i32* %183, align 4, !mcsema_real_eip !52
  %188 = zext i32 %187 to i64
  %189 = load i64, i64* %110, align 8
  store i64 %184, i64* %RAX.i, align 8, !mcsema_real_eip !53
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !53
  store i64 %181, i64* %RCX.i, align 8, !mcsema_real_eip !53
  store i64 %188, i64* %RDX.i, align 8, !mcsema_real_eip !53
  %190 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 2, i64 1>, <2 x i64>* %190, align 8
  store i64 %65, i64* %RSP.i, align 8, !mcsema_real_eip !53
  store i64 %189, i64* %RBP.i, align 8, !mcsema_real_eip !53
  store i64 2, i64* %R8.i, align 8, !mcsema_real_eip !53
  store i64 %103, i64* %R9.i, align 8, !mcsema_real_eip !53
  store i64 %129, i64* %R10.i, align 8, !mcsema_real_eip !53
  %191 = extractelement <2 x i64> %5, i32 1
  store i64 %191, i64* %R11.i, align 8, !mcsema_real_eip !53
  store i64 %6, i64* %R12.i, align 8, !mcsema_real_eip !53
  store i64 %7, i64* %R13.i, align 8, !mcsema_real_eip !53
  store i64 %8, i64* %R14.i, align 8, !mcsema_real_eip !53
  store i64 %9, i64* %R15.i, align 8, !mcsema_real_eip !53
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !53
  store i1 %172, i1* %CF.i, align 1, !mcsema_real_eip !53
  store i1 %171, i1* %PF.i, align 1, !mcsema_real_eip !53
  store i1 %161, i1* %AF.i, align 1, !mcsema_real_eip !53
  store i1 %163, i1* %ZF.i, align 1, !mcsema_real_eip !53
  store i1 %162, i1* %SF.i, align 1, !mcsema_real_eip !53
  store i1 %167, i1* %OF.i, align 1, !mcsema_real_eip !53
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !53
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* nonnull %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !53
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !53
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !53
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !53
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !53
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !53
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !53
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !53
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !53
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !53
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !53
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !53
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !53
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !53
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !53
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !53
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !53
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !53
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !53
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !53
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !53
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !53
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !53
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !53
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !53
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !53
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !53
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !53
  store i11 %44, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !53
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !53
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !53
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !53
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !53
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !53
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !53
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !53
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !53
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !53
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !53
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !53
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !53
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !53
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !53
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !53
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !53
  store i64 %61, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !53
  store i64 %62, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !53
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %13, i32 128, i32 4, i1 false), !mcsema_real_eip !21
  %192 = add i64 %189, -48, !mcsema_real_eip !54
  %193 = inttoptr i64 %192 to i32*
  store i32 %187, i32* %193, align 4, !mcsema_real_eip !54
  %194 = add i64 %189, -56, !mcsema_real_eip !55
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !55
  store i64 %184, i64* %195, align 8, !mcsema_real_eip !55
  %196 = add i64 %189, -40, !mcsema_real_eip !56
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !56
  store i64 %184, i64* %197, align 8, !mcsema_real_eip !56
  %198 = load i32, i32* %193, align 4, !mcsema_real_eip !57
  %199 = add i64 %189, -32, !mcsema_real_eip !58
  %200 = inttoptr i64 %199 to i32*
  store i32 %198, i32* %200, align 4, !mcsema_real_eip !58
  %201 = inttoptr i64 %196 to i32*
  %202 = load i32, i32* %201, align 4, !mcsema_real_eip !59
  %203 = add i64 %189, -36, !mcsema_real_eip !60
  %204 = inttoptr i64 %203 to i32*
  %205 = load i32, i32* %204, align 4, !mcsema_real_eip !60
  %206 = add i32 %202, %198
  %207 = add i32 %206, %205
  %208 = zext i32 %207 to i64, !mcsema_real_eip !61
  %uadd212.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %65, i64 80)
  %209 = extractvalue { i64, i1 } %uadd212.i, 0
  %210 = xor i64 %209, %65, !mcsema_real_eip !62
  %211 = and i64 %210, 16
  %212 = icmp eq i64 %211, 0
  %213 = icmp slt i64 %209, 0
  %214 = icmp eq i64 %209, 0, !mcsema_real_eip !62
  %215 = add i64 %2, 9223372036854775720
  %216 = and i64 %210, %215, !mcsema_real_eip !62
  %217 = icmp slt i64 %216, 0
  %218 = trunc i64 %209 to i8, !mcsema_real_eip !62
  %219 = tail call i8 @llvm.ctpop.i8(i8 %218), !mcsema_real_eip !62
  %220 = and i8 %219, 1
  %221 = icmp eq i8 %220, 0
  %222 = extractvalue { i64, i1 } %uadd212.i, 1
  %223 = inttoptr i64 %209 to i64*, !mcsema_real_eip !63
  %224 = load i64, i64* %223, align 8, !mcsema_real_eip !63
  %225 = add i64 %209, 16, !mcsema_real_eip !64
  store i64 %208, i64* %RAX.i, align 8, !mcsema_real_eip !64
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !64
  store i64 %208, i64* %RCX.i, align 8, !mcsema_real_eip !64
  store i64 %188, i64* %RDX.i, align 8, !mcsema_real_eip !64
  %226 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 2, i64 1>, <2 x i64>* %226, align 8
  store i64 %225, i64* %RSP.i, align 8, !mcsema_real_eip !64
  store i64 %224, i64* %RBP.i, align 8, !mcsema_real_eip !64
  store i64 2, i64* %R8.i, align 8, !mcsema_real_eip !64
  store i64 %103, i64* %R9.i, align 8, !mcsema_real_eip !64
  store i64 %129, i64* %R10.i, align 8, !mcsema_real_eip !64
  store i64 %191, i64* %R11.i, align 8, !mcsema_real_eip !64
  store i64 %6, i64* %R12.i, align 8, !mcsema_real_eip !64
  store i64 %7, i64* %R13.i, align 8, !mcsema_real_eip !64
  store i64 %8, i64* %R14.i, align 8, !mcsema_real_eip !64
  store i64 %9, i64* %R15.i, align 8, !mcsema_real_eip !64
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !64
  store i1 %222, i1* %CF.i, align 1, !mcsema_real_eip !64
  store i1 %221, i1* %PF.i, align 1, !mcsema_real_eip !64
  store i1 %212, i1* %AF.i, align 1, !mcsema_real_eip !64
  store i1 %214, i1* %ZF.i, align 1, !mcsema_real_eip !64
  store i1 %213, i1* %SF.i, align 1, !mcsema_real_eip !64
  store i1 %217, i1* %OF.i, align 1, !mcsema_real_eip !64
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
!3 = !{i64 128}
!4 = !{i64 132}
!5 = !{i64 136}
!6 = !{i64 153}
!7 = !{i64 157}
!8 = !{i64 171}
!9 = !{i64 176}
!10 = !{i64 180}
!11 = !{i64 186}
!12 = !{i64 190}
!13 = !{i64 197}
!14 = !{i64 201}
!15 = !{i64 208}
!16 = !{i64 215}
!17 = !{i64 223}
!18 = !{i64 243}
!19 = !{i64 252}
!20 = !{i64 262}
!21 = !{i64 266}
!22 = !{i64 4}
!23 = !{i64 8}
!24 = !{i64 12}
!25 = !{i64 15}
!26 = !{i64 18}
!27 = !{i64 21}
!28 = !{i64 24}
!29 = !{i64 28}
!30 = !{i64 32}
!31 = !{i64 36}
!32 = !{i64 44}
!33 = !{i64 47}
!34 = !{i64 51}
!35 = !{i64 54}
!36 = !{i64 58}
!37 = !{i64 61}
!38 = !{i64 65}
!39 = !{i64 70}
!40 = !{i64 73}
!41 = !{i64 77}
!42 = !{i64 80}
!43 = !{i64 84}
!44 = !{i64 87}
!45 = !{i64 89}
!46 = !{i64 92}
!47 = !{i64 95}
!48 = !{i64 99}
!49 = !{i64 103}
!50 = !{i64 106}
!51 = !{i64 113}
!52 = !{i64 121}
!53 = !{i64 125}
!54 = !{i64 271}
!55 = !{i64 274}
!56 = !{i64 282}
!57 = !{i64 286}
!58 = !{i64 289}
!59 = !{i64 292}
!60 = !{i64 295}
!61 = !{i64 298}
!62 = !{i64 303}
!63 = !{i64 307}
!64 = !{i64 308}
