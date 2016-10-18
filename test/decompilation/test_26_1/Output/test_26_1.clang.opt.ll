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
  %64 = add i64 %2, -88
  %65 = xor i64 %64, %62, !mcsema_real_eip !4
  %66 = and i64 %65, 16
  %67 = icmp eq i64 %66, 0
  %68 = trunc i64 %64 to i8, !mcsema_real_eip !4
  %69 = tail call i8 @llvm.ctpop.i8(i8 %68), !mcsema_real_eip !4
  %70 = and i8 %69, 1
  %71 = icmp eq i8 %70, 0
  %72 = icmp eq i64 %64, 0, !mcsema_real_eip !4
  %73 = icmp slt i64 %64, 0
  %74 = icmp ult i64 %62, 80, !mcsema_real_eip !4
  %75 = and i64 %65, %62, !mcsema_real_eip !4
  %76 = icmp slt i64 %75, 0
  %77 = add i64 %2, -12, !mcsema_real_eip !5
  %78 = inttoptr i64 %77 to i32*
  store i32 0, i32* %78, align 4, !mcsema_real_eip !5
  %79 = add i64 %2, -24, !mcsema_real_eip !6
  %80 = inttoptr i64 %79 to i32*
  store i32 10, i32* %80, align 4, !mcsema_real_eip !6
  %81 = add i64 %2, -20, !mcsema_real_eip !7
  %82 = inttoptr i64 %81 to i32*
  store i32 10, i32* %82, align 4, !mcsema_real_eip !7
  %83 = add i64 %2, -16, !mcsema_real_eip !8
  %84 = inttoptr i64 %83 to i32*
  store i32 10, i32* %84, align 4, !mcsema_real_eip !8
  %85 = tail call x86_64_sysvcc i64 @malloc(i64 24), !mcsema_real_eip !9
  %86 = add i64 %2, -32, !mcsema_real_eip !10
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !10
  store i64 %85, i64* %87, align 8, !mcsema_real_eip !10
  %88 = inttoptr i64 %85 to i32*
  store i32 5, i32* %88, align 4, !mcsema_real_eip !11
  %89 = load i64, i64* %87, align 8, !mcsema_real_eip !12
  %90 = add i64 %89, 4, !mcsema_real_eip !13
  %91 = inttoptr i64 %90 to i32*
  store i32 5, i32* %91, align 4, !mcsema_real_eip !13
  %92 = load i64, i64* %87, align 8, !mcsema_real_eip !14
  %93 = add i64 %92, 8, !mcsema_real_eip !15
  %94 = inttoptr i64 %93 to i32*
  store i32 5, i32* %94, align 4, !mcsema_real_eip !15
  %95 = load i64, i64* %87, align 8, !mcsema_real_eip !16
  %96 = add i64 %2, -80, !mcsema_real_eip !17
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !17
  store i64 %95, i64* %97, align 8, !mcsema_real_eip !17
  %98 = inttoptr i64 %64 to i64*, !mcsema_real_eip !18
  store i64 %79, i64* %98, align 8, !mcsema_real_eip !18
  %99 = add i64 %2, -68, !mcsema_real_eip !19
  %100 = inttoptr i64 %99 to i32*
  store i32 3, i32* %100, align 4, !mcsema_real_eip !19
  %101 = add i64 %2, -72, !mcsema_real_eip !20
  %102 = inttoptr i64 %101 to i32*
  store i32 2, i32* %102, align 4, !mcsema_real_eip !20
  %103 = load i32, i32* %100, align 4, !mcsema_real_eip !21
  %104 = zext i32 %103 to i64
  %105 = add i64 %2, -96
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !22
  store i64 -4981261766360305936, i64* %106, align 8, !mcsema_real_eip !22
  store i64 %79, i64* %RAX.i, align 8, !mcsema_real_eip !22
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !22
  %107 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> <i64 1, i64 3>, <2 x i64>* %107, align 8
  %108 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 2, i64 1>, <2 x i64>* %108, align 8
  store i64 %105, i64* %RSP.i, align 8, !mcsema_real_eip !22
  store i64 %62, i64* %RBP.i, align 8, !mcsema_real_eip !22
  store i64 2, i64* %R8.i, align 8, !mcsema_real_eip !22
  store i64 %104, i64* %R9.i, align 8, !mcsema_real_eip !22
  %109 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> %5, <2 x i64>* %109, align 8
  store i64 %6, i64* %R12.i, align 8, !mcsema_real_eip !22
  store i64 %7, i64* %R13.i, align 8, !mcsema_real_eip !22
  store i64 %8, i64* %R14.i, align 8, !mcsema_real_eip !22
  store i64 %9, i64* %R15.i, align 8, !mcsema_real_eip !22
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !22
  store i1 %74, i1* %CF.i, align 1, !mcsema_real_eip !22
  store i1 %71, i1* %PF.i, align 1, !mcsema_real_eip !22
  store i1 %67, i1* %AF.i, align 1, !mcsema_real_eip !22
  store i1 %72, i1* %ZF.i, align 1, !mcsema_real_eip !22
  store i1 %73, i1* %SF.i, align 1, !mcsema_real_eip !22
  store i1 %76, i1* %OF.i, align 1, !mcsema_real_eip !22
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !22
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !22
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !22
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !22
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !22
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !22
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !22
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !22
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !22
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !22
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !22
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !22
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !22
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !22
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !22
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !22
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !22
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !22
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !22
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !22
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !22
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !22
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !22
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !22
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !22
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !22
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !22
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !22
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !22
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !22
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !22
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !22
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !22
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !22
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !22
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !22
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !22
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !22
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !22
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !22
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !22
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !22
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !22
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !22
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !22
  store i64 %60, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !22
  store i64 %61, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !22
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast.i, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false)
  %110 = add i64 %2, -104
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !2
  store i64 %62, i64* %111, align 8, !mcsema_real_eip !2
  %112 = load i64, i64* %97, align 8, !mcsema_real_eip !23
  %113 = load i64, i64* %98, align 8, !mcsema_real_eip !24
  %114 = add i64 %2, -124, !mcsema_real_eip !25
  %115 = inttoptr i64 %114 to i32*
  store i32 1, i32* %115, align 4, !mcsema_real_eip !25
  %116 = add i64 %2, -128, !mcsema_real_eip !26
  %117 = inttoptr i64 %116 to i32*
  store i32 2, i32* %117, align 4, !mcsema_real_eip !26
  %118 = add i64 %2, -132, !mcsema_real_eip !27
  %119 = inttoptr i64 %118 to i32*
  store i32 3, i32* %119, align 4, !mcsema_real_eip !27
  %120 = add i64 %2, -136, !mcsema_real_eip !28
  %121 = inttoptr i64 %120 to i32*
  store i32 1, i32* %121, align 4, !mcsema_real_eip !28
  %122 = add i64 %2, -140, !mcsema_real_eip !29
  %123 = inttoptr i64 %122 to i32*
  store i32 2, i32* %123, align 4, !mcsema_real_eip !29
  %124 = add i64 %2, -144, !mcsema_real_eip !30
  %125 = inttoptr i64 %124 to i32*
  store i32 %103, i32* %125, align 4, !mcsema_real_eip !30
  %126 = add i64 %2, -152, !mcsema_real_eip !31
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !31
  store i64 %113, i64* %127, align 8, !mcsema_real_eip !31
  %128 = add i64 %2, -160, !mcsema_real_eip !32
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !32
  store i64 %112, i64* %129, align 8, !mcsema_real_eip !32
  %130 = load i64, i64* %127, align 8
  %131 = inttoptr i64 %130 to i32*
  %132 = load i32, i32* %131, align 4, !mcsema_real_eip !33
  %133 = inttoptr i64 %112 to i32*
  %134 = load i32, i32* %133, align 4, !mcsema_real_eip !34
  %135 = add i32 %134, %132
  %136 = add i64 %2, -176, !mcsema_real_eip !35
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !35
  %138 = inttoptr i64 %136 to i32*
  store i32 %135, i32* %138, align 4, !mcsema_real_eip !35
  %139 = load i64, i64* %127, align 8, !mcsema_real_eip !36
  %140 = add i64 %139, 4, !mcsema_real_eip !37
  %141 = inttoptr i64 %140 to i32*
  %142 = load i32, i32* %141, align 4, !mcsema_real_eip !37
  %143 = load i64, i64* %129, align 8, !mcsema_real_eip !38
  %144 = add i64 %143, 4, !mcsema_real_eip !39
  %145 = inttoptr i64 %144 to i32*
  %146 = load i32, i32* %145, align 4, !mcsema_real_eip !39
  %147 = add i32 %146, %142
  %148 = add i64 %2, -172, !mcsema_real_eip !40
  %149 = inttoptr i64 %148 to i32*
  store i32 %147, i32* %149, align 4, !mcsema_real_eip !40
  %150 = load i64, i64* %127, align 8, !mcsema_real_eip !41
  %151 = add i64 %150, 8, !mcsema_real_eip !42
  %152 = inttoptr i64 %151 to i32*
  %153 = load i32, i32* %152, align 4, !mcsema_real_eip !42
  %154 = load i64, i64* %129, align 8, !mcsema_real_eip !43
  %155 = add i64 %154, 8, !mcsema_real_eip !44
  %156 = inttoptr i64 %155 to i32*
  %157 = load i32, i32* %156, align 4, !mcsema_real_eip !44
  %uadd71.i.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %157, i32 %153) #2
  %158 = extractvalue { i32, i1 } %uadd71.i.i, 0
  %159 = xor i32 %158, %153, !mcsema_real_eip !45
  %160 = xor i32 %159, %157, !mcsema_real_eip !45
  %161 = and i32 %160, 16, !mcsema_real_eip !45
  %162 = icmp ne i32 %161, 0, !mcsema_real_eip !45
  %163 = icmp slt i32 %158, 0
  %164 = icmp eq i32 %158, 0, !mcsema_real_eip !45
  %165 = xor i32 %153, -2147483648, !mcsema_real_eip !45
  %166 = xor i32 %165, %157, !mcsema_real_eip !45
  %167 = and i32 %159, %166, !mcsema_real_eip !45
  %168 = icmp slt i32 %167, 0
  %169 = trunc i32 %158 to i8, !mcsema_real_eip !45
  %170 = tail call i8 @llvm.ctpop.i8(i8 %169) #2, !mcsema_real_eip !45
  %171 = and i8 %170, 1
  %172 = icmp eq i8 %171, 0
  %173 = extractvalue { i32, i1 } %uadd71.i.i, 1
  %174 = add i64 %2, -168, !mcsema_real_eip !46
  %175 = inttoptr i64 %174 to i32*
  store i32 %158, i32* %175, align 4, !mcsema_real_eip !46
  %176 = add i64 %2, -112, !mcsema_real_eip !47
  %177 = inttoptr i64 %176 to i32*
  store i32 %158, i32* %177, align 4, !mcsema_real_eip !47
  %178 = load i64, i64* %137, align 8, !mcsema_real_eip !48
  %179 = add i64 %2, -120, !mcsema_real_eip !49
  %180 = inttoptr i64 %179 to i64*, !mcsema_real_eip !49
  store i64 %178, i64* %180, align 8, !mcsema_real_eip !49
  %181 = load i32, i32* %177, align 4, !mcsema_real_eip !50
  %182 = zext i32 %181 to i64, !mcsema_real_eip !50
  %183 = add i64 %2, -184, !mcsema_real_eip !51
  %184 = inttoptr i64 %183 to i32*
  store i32 %181, i32* %184, align 4, !mcsema_real_eip !51
  %185 = load i64, i64* %180, align 8
  %186 = add i64 %2, -192, !mcsema_real_eip !52
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !52
  store i64 %185, i64* %187, align 8, !mcsema_real_eip !52
  %188 = load i32, i32* %184, align 4, !mcsema_real_eip !53
  %189 = zext i32 %188 to i64
  %190 = load i64, i64* %111, align 8
  store i64 %185, i64* %RAX.i, align 8, !mcsema_real_eip !54
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !54
  store i64 %182, i64* %RCX.i, align 8, !mcsema_real_eip !54
  store i64 %189, i64* %RDX.i, align 8, !mcsema_real_eip !54
  %191 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 2, i64 1>, <2 x i64>* %191, align 8
  store i64 %64, i64* %RSP.i, align 8, !mcsema_real_eip !54
  store i64 %190, i64* %RBP.i, align 8, !mcsema_real_eip !54
  store i64 2, i64* %R8.i, align 8, !mcsema_real_eip !54
  store i64 %104, i64* %R9.i, align 8, !mcsema_real_eip !54
  store i64 %130, i64* %R10.i, align 8, !mcsema_real_eip !54
  %192 = extractelement <2 x i64> %5, i32 1
  store i64 %192, i64* %R11.i, align 8, !mcsema_real_eip !54
  store i64 %6, i64* %R12.i, align 8, !mcsema_real_eip !54
  store i64 %7, i64* %R13.i, align 8, !mcsema_real_eip !54
  store i64 %8, i64* %R14.i, align 8, !mcsema_real_eip !54
  store i64 %9, i64* %R15.i, align 8, !mcsema_real_eip !54
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !54
  store i1 %173, i1* %CF.i, align 1, !mcsema_real_eip !54
  store i1 %172, i1* %PF.i, align 1, !mcsema_real_eip !54
  store i1 %162, i1* %AF.i, align 1, !mcsema_real_eip !54
  store i1 %164, i1* %ZF.i, align 1, !mcsema_real_eip !54
  store i1 %163, i1* %SF.i, align 1, !mcsema_real_eip !54
  store i1 %168, i1* %OF.i, align 1, !mcsema_real_eip !54
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !54
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* nonnull %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !54
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !54
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !54
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !54
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !54
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !54
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !54
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !54
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !54
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !54
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !54
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !54
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !54
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !54
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !54
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !54
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !54
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !54
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !54
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !54
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !54
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !54
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !54
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !54
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !54
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !54
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !54
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !54
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !54
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !54
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !54
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !54
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !54
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !54
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !54
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !54
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !54
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !54
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !54
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !54
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !54
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !54
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !54
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !54
  store i64 %60, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !54
  store i64 %61, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !54
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %13, i32 128, i32 4, i1 false), !mcsema_real_eip !22
  %193 = add i64 %190, -48, !mcsema_real_eip !55
  %194 = inttoptr i64 %193 to i32*
  store i32 %188, i32* %194, align 4, !mcsema_real_eip !55
  %195 = add i64 %190, -56, !mcsema_real_eip !56
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !56
  store i64 %185, i64* %196, align 8, !mcsema_real_eip !56
  %197 = add i64 %190, -40, !mcsema_real_eip !57
  %198 = inttoptr i64 %197 to i64*, !mcsema_real_eip !57
  store i64 %185, i64* %198, align 8, !mcsema_real_eip !57
  %199 = load i32, i32* %194, align 4, !mcsema_real_eip !58
  %200 = add i64 %190, -32, !mcsema_real_eip !59
  %201 = inttoptr i64 %200 to i32*
  store i32 %199, i32* %201, align 4, !mcsema_real_eip !59
  %202 = inttoptr i64 %197 to i32*
  %203 = load i32, i32* %202, align 4, !mcsema_real_eip !60
  %204 = add i64 %190, -36, !mcsema_real_eip !61
  %205 = inttoptr i64 %204 to i32*
  %206 = load i32, i32* %205, align 4, !mcsema_real_eip !61
  %207 = add i32 %203, %199
  %208 = add i32 %207, %206
  %209 = zext i32 %208 to i64, !mcsema_real_eip !62
  %uadd210.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %64, i64 80)
  %210 = extractvalue { i64, i1 } %uadd210.i, 0
  %211 = xor i64 %210, %64, !mcsema_real_eip !63
  %212 = and i64 %211, 16
  %213 = icmp eq i64 %212, 0
  %214 = icmp slt i64 %210, 0
  %215 = icmp eq i64 %210, 0, !mcsema_real_eip !63
  %216 = add i64 %2, 9223372036854775720
  %217 = and i64 %211, %216, !mcsema_real_eip !63
  %218 = icmp slt i64 %217, 0
  %219 = trunc i64 %210 to i8, !mcsema_real_eip !63
  %220 = tail call i8 @llvm.ctpop.i8(i8 %219), !mcsema_real_eip !63
  %221 = and i8 %220, 1
  %222 = icmp eq i8 %221, 0
  %223 = extractvalue { i64, i1 } %uadd210.i, 1
  %224 = inttoptr i64 %210 to i64*, !mcsema_real_eip !64
  %225 = load i64, i64* %224, align 8, !mcsema_real_eip !64
  %226 = add i64 %210, 16, !mcsema_real_eip !65
  store i64 %209, i64* %RAX.i, align 8, !mcsema_real_eip !65
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !65
  store i64 %209, i64* %RCX.i, align 8, !mcsema_real_eip !65
  store i64 %189, i64* %RDX.i, align 8, !mcsema_real_eip !65
  %227 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 2, i64 1>, <2 x i64>* %227, align 8
  store i64 %226, i64* %RSP.i, align 8, !mcsema_real_eip !65
  store i64 %225, i64* %RBP.i, align 8, !mcsema_real_eip !65
  store i64 2, i64* %R8.i, align 8, !mcsema_real_eip !65
  store i64 %104, i64* %R9.i, align 8, !mcsema_real_eip !65
  store i64 %130, i64* %R10.i, align 8, !mcsema_real_eip !65
  store i64 %192, i64* %R11.i, align 8, !mcsema_real_eip !65
  store i64 %6, i64* %R12.i, align 8, !mcsema_real_eip !65
  store i64 %7, i64* %R13.i, align 8, !mcsema_real_eip !65
  store i64 %8, i64* %R14.i, align 8, !mcsema_real_eip !65
  store i64 %9, i64* %R15.i, align 8, !mcsema_real_eip !65
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !65
  store i1 %223, i1* %CF.i, align 1, !mcsema_real_eip !65
  store i1 %222, i1* %PF.i, align 1, !mcsema_real_eip !65
  store i1 %213, i1* %AF.i, align 1, !mcsema_real_eip !65
  store i1 %215, i1* %ZF.i, align 1, !mcsema_real_eip !65
  store i1 %214, i1* %SF.i, align 1, !mcsema_real_eip !65
  store i1 %218, i1* %OF.i, align 1, !mcsema_real_eip !65
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !65
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !65
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !65
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !65
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !65
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !65
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !65
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !65
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !65
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !65
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !65
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !65
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !65
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !65
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !65
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !65
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !65
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !65
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !65
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !65
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !65
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !65
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !65
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !65
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !65
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !65
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !65
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !65
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !65
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !65
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !65
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !65
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !65
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !65
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !65
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !65
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !65
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !65
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !65
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !65
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !65
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !65
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !65
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !65
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !65
  store i64 %60, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !65
  store i64 %61, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !65
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
!2 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 128, [12 x i8] c"\09pushq\09%rbp\00"}
!4 = !{i64 132, [16 x i8] c"\09subq\09$80, %rsp\00"}
!5 = !{i64 136, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!6 = !{i64 143, [21 x i8] c"\09movl\09$10, -16(%rbp)\00"}
!7 = !{i64 150, [21 x i8] c"\09movl\09$10, -12(%rbp)\00"}
!8 = !{i64 157, [20 x i8] c"\09movl\09$10, -8(%rbp)\00"}
!9 = !{i64 171, [9 x i8] c"\09callq\090\00"}
!10 = !{i64 176, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!11 = !{i64 180, [17 x i8] c"\09movl\09$5, (%rax)\00"}
!12 = !{i64 186, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!13 = !{i64 190, [18 x i8] c"\09movl\09$5, 4(%rax)\00"}
!14 = !{i64 197, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!15 = !{i64 201, [18 x i8] c"\09movl\09$5, 8(%rax)\00"}
!16 = !{i64 208, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!17 = !{i64 215, [20 x i8] c"\09movq\09%rax, 8(%rdi)\00"}
!18 = !{i64 223, [19 x i8] c"\09movq\09%rax, (%rdi)\00"}
!19 = !{i64 243, [22 x i8] c"\09movl\09%esi, -60(%rbp)\00"}
!20 = !{i64 252, [22 x i8] c"\09movl\09%edx, -64(%rbp)\00"}
!21 = !{i64 262, [22 x i8] c"\09movl\09-60(%rbp), %r9d\00"}
!22 = !{i64 266, [12 x i8] c"\09callq\09-271\00"}
!23 = !{i64 4, [21 x i8] c"\09movq\0924(%rbp), %rax\00"}
!24 = !{i64 8, [21 x i8] c"\09movq\0916(%rbp), %r10\00"}
!25 = !{i64 12, [22 x i8] c"\09movl\09%edi, -20(%rbp)\00"}
!26 = !{i64 15, [22 x i8] c"\09movl\09%esi, -24(%rbp)\00"}
!27 = !{i64 18, [22 x i8] c"\09movl\09%edx, -28(%rbp)\00"}
!28 = !{i64 21, [22 x i8] c"\09movl\09%ecx, -32(%rbp)\00"}
!29 = !{i64 24, [22 x i8] c"\09movl\09%r8d, -36(%rbp)\00"}
!30 = !{i64 28, [22 x i8] c"\09movl\09%r9d, -40(%rbp)\00"}
!31 = !{i64 32, [22 x i8] c"\09movq\09%r10, -48(%rbp)\00"}
!32 = !{i64 36, [22 x i8] c"\09movq\09%rax, -56(%rbp)\00"}
!33 = !{i64 44, [19 x i8] c"\09movl\09(%r10), %ecx\00"}
!34 = !{i64 47, [19 x i8] c"\09movl\09(%rax), %edx\00"}
!35 = !{i64 51, [22 x i8] c"\09movl\09%ecx, -72(%rbp)\00"}
!36 = !{i64 54, [22 x i8] c"\09movq\09-48(%rbp), %rax\00"}
!37 = !{i64 58, [20 x i8] c"\09movl\094(%rax), %ecx\00"}
!38 = !{i64 61, [22 x i8] c"\09movq\09-56(%rbp), %rax\00"}
!39 = !{i64 65, [20 x i8] c"\09movl\094(%rax), %edx\00"}
!40 = !{i64 70, [22 x i8] c"\09movl\09%ecx, -68(%rbp)\00"}
!41 = !{i64 73, [22 x i8] c"\09movq\09-48(%rbp), %rax\00"}
!42 = !{i64 77, [20 x i8] c"\09movl\098(%rax), %ecx\00"}
!43 = !{i64 80, [22 x i8] c"\09movq\09-56(%rbp), %rax\00"}
!44 = !{i64 84, [20 x i8] c"\09movl\098(%rax), %edx\00"}
!45 = !{i64 87, [17 x i8] c"\09addl\09%edx, %ecx\00"}
!46 = !{i64 89, [22 x i8] c"\09movl\09%ecx, -64(%rbp)\00"}
!47 = !{i64 92, [21 x i8] c"\09movl\09%ecx, -8(%rbp)\00"}
!48 = !{i64 95, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!49 = !{i64 99, [22 x i8] c"\09movq\09%rax, -16(%rbp)\00"}
!50 = !{i64 103, [21 x i8] c"\09movl\09-8(%rbp), %ecx\00"}
!51 = !{i64 106, [22 x i8] c"\09movl\09%ecx, -80(%rbp)\00"}
!52 = !{i64 113, [22 x i8] c"\09movq\09%rax, -88(%rbp)\00"}
!53 = !{i64 121, [22 x i8] c"\09movl\09-80(%rbp), %edx\00"}
!54 = !{i64 125, [6 x i8] c"\09retq\00"}
!55 = !{i64 271, [22 x i8] c"\09movl\09%edx, -48(%rbp)\00"}
!56 = !{i64 274, [22 x i8] c"\09movq\09%rax, -56(%rbp)\00"}
!57 = !{i64 282, [22 x i8] c"\09movq\09%rax, -40(%rbp)\00"}
!58 = !{i64 286, [22 x i8] c"\09movl\09-48(%rbp), %ecx\00"}
!59 = !{i64 289, [22 x i8] c"\09movl\09%ecx, -32(%rbp)\00"}
!60 = !{i64 292, [22 x i8] c"\09movl\09-40(%rbp), %ecx\00"}
!61 = !{i64 295, [22 x i8] c"\09addl\09-36(%rbp), %ecx\00"}
!62 = !{i64 298, [22 x i8] c"\09addl\09-32(%rbp), %ecx\00"}
!63 = !{i64 303, [16 x i8] c"\09addq\09$80, %rsp\00"}
!64 = !{i64 307, [11 x i8] c"\09popq\09%rbp\00"}
!65 = !{i64 308, [6 x i8] c"\09retq\00"}
