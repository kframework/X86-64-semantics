; ModuleID = 'Output/test_26.clang.opt.bc'
source_filename = "Output/test_26.clang.bc"
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
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !3
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
  %65 = add i64 %2, -136
  %66 = xor i64 %65, %63, !mcsema_real_eip !4
  %67 = and i64 %66, 16, !mcsema_real_eip !4
  %68 = icmp ne i64 %67, 0, !mcsema_real_eip !4
  %69 = trunc i64 %65 to i8, !mcsema_real_eip !4
  %70 = tail call i8 @llvm.ctpop.i8(i8 %69), !mcsema_real_eip !4
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  %73 = icmp eq i64 %65, 0, !mcsema_real_eip !4
  %74 = icmp slt i64 %65, 0
  %75 = icmp ult i64 %63, 128, !mcsema_real_eip !4
  %76 = and i64 %66, %63, !mcsema_real_eip !4
  %77 = icmp slt i64 %76, 0
  %78 = add i64 %2, -12, !mcsema_real_eip !5
  %79 = inttoptr i64 %78 to i32*
  store i32 0, i32* %79, align 4, !mcsema_real_eip !5
  %80 = add i64 %2, -24
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
  %94 = load i64, i64* %86, align 8
  %95 = load i32, i32* %83, align 4, !mcsema_real_eip !15
  %96 = add i64 %2, -56, !mcsema_real_eip !16
  %97 = inttoptr i64 %96 to i32*
  store i32 %95, i32* %97, align 4, !mcsema_real_eip !16
  %98 = load i64, i64* %81, align 8
  %99 = add i64 %2, -64, !mcsema_real_eip !17
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !17
  store i64 %98, i64* %100, align 8, !mcsema_real_eip !17
  %101 = load i32, i32* %97, align 4, !mcsema_real_eip !18
  %102 = zext i32 %101 to i64
  %103 = load i32, i32* %83, align 4, !mcsema_real_eip !19
  %104 = add i64 %2, -120, !mcsema_real_eip !20
  %105 = inttoptr i64 %104 to i32*
  store i32 %103, i32* %105, align 4, !mcsema_real_eip !20
  %106 = load i64, i64* %81, align 8, !mcsema_real_eip !21
  %107 = add i64 %2, -128, !mcsema_real_eip !22
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !22
  store i64 %106, i64* %108, align 8, !mcsema_real_eip !22
  %109 = add i64 %2, -104, !mcsema_real_eip !23
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !23
  store i64 %94, i64* %110, align 8, !mcsema_real_eip !23
  %111 = add i64 %2, -112, !mcsema_real_eip !24
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !24
  store i64 %80, i64* %112, align 8, !mcsema_real_eip !24
  %113 = inttoptr i64 %65 to i32*
  store i32 3, i32* %113, align 4, !mcsema_real_eip !25
  %114 = add i64 %2, -84, !mcsema_real_eip !26
  %115 = inttoptr i64 %114 to i32*
  store i32 1, i32* %115, align 4, !mcsema_real_eip !26
  %116 = add i64 %2, -144
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !27
  store i64 -4981261766360305936, i64* %117, align 8, !mcsema_real_eip !27
  store i64 %94, i64* %RAX.i, align 8, !mcsema_real_eip !27
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !27
  store i64 %94, i64* %RCX.i, align 8, !mcsema_real_eip !27
  store i64 %80, i64* %RDX.i, align 8, !mcsema_real_eip !27
  store i64 %102, i64* %RSI.i, align 8, !mcsema_real_eip !27
  store i64 %98, i64* %RDI.i, align 8, !mcsema_real_eip !27
  store i64 %116, i64* %RSP.i, align 8, !mcsema_real_eip !27
  store i64 %63, i64* %RBP.i, align 8, !mcsema_real_eip !27
  %118 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 1, i64 2>, <2 x i64>* %118, align 8
  %119 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> %5, <2 x i64>* %119, align 8
  store i64 %6, i64* %R12.i, align 8, !mcsema_real_eip !27
  store i64 %7, i64* %R13.i, align 8, !mcsema_real_eip !27
  store i64 %8, i64* %R14.i, align 8, !mcsema_real_eip !27
  store i64 %9, i64* %R15.i, align 8, !mcsema_real_eip !27
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !27
  store i1 %75, i1* %CF.i, align 1, !mcsema_real_eip !27
  store i1 %72, i1* %PF.i, align 1, !mcsema_real_eip !27
  store i1 %68, i1* %AF.i, align 1, !mcsema_real_eip !27
  store i1 %73, i1* %ZF.i, align 1, !mcsema_real_eip !27
  store i1 %74, i1* %SF.i, align 1, !mcsema_real_eip !27
  store i1 %77, i1* %OF.i, align 1, !mcsema_real_eip !27
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
  %120 = add i64 %2, -152
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !2
  store i64 %63, i64* %121, align 8, !mcsema_real_eip !2
  %122 = add i64 %2, -160
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !28
  store i64 %1, i64* %123, align 8, !mcsema_real_eip !28
  %124 = load i64, i64* %110, align 8, !mcsema_real_eip !29
  %125 = load i64, i64* %112, align 8
  %126 = load i32, i32* %113, align 4, !mcsema_real_eip !30
  %127 = add i64 %2, -208, !mcsema_real_eip !31
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !31
  store i64 %98, i64* %128, align 8, !mcsema_real_eip !31
  %129 = add i64 %2, -200, !mcsema_real_eip !32
  %130 = inttoptr i64 %129 to i32*
  store i32 %101, i32* %130, align 4, !mcsema_real_eip !32
  %131 = add i64 %2, -184, !mcsema_real_eip !33
  %132 = inttoptr i64 %131 to i32*
  store i32 %101, i32* %132, align 4, !mcsema_real_eip !33
  %133 = load i64, i64* %128, align 8
  %134 = add i64 %2, -192, !mcsema_real_eip !34
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !34
  store i64 %133, i64* %135, align 8, !mcsema_real_eip !34
  %136 = add i64 %2, -216, !mcsema_real_eip !35
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !35
  store i64 %80, i64* %137, align 8, !mcsema_real_eip !35
  %138 = add i64 %2, -224, !mcsema_real_eip !36
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !36
  store i64 %94, i64* %139, align 8, !mcsema_real_eip !36
  %140 = add i64 %2, -228, !mcsema_real_eip !37
  %141 = inttoptr i64 %140 to i32*
  store i32 1, i32* %141, align 4, !mcsema_real_eip !37
  %142 = add i64 %2, -232, !mcsema_real_eip !38
  %143 = inttoptr i64 %142 to i32*
  store i32 2, i32* %143, align 4, !mcsema_real_eip !38
  %144 = add i64 %2, -236, !mcsema_real_eip !39
  %145 = inttoptr i64 %144 to i32*
  store i32 %126, i32* %145, align 4, !mcsema_real_eip !39
  %146 = add i64 %2, -248, !mcsema_real_eip !40
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !40
  store i64 %125, i64* %147, align 8, !mcsema_real_eip !40
  %148 = add i64 %2, -256, !mcsema_real_eip !41
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !41
  store i64 %124, i64* %149, align 8, !mcsema_real_eip !41
  %150 = inttoptr i64 %134 to i32*
  %151 = load i32, i32* %150, align 4, !mcsema_real_eip !42
  %152 = inttoptr i64 %136 to i32**
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %153, align 4, !mcsema_real_eip !43
  %155 = inttoptr i64 %138 to i32**
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %156, align 4, !mcsema_real_eip !44
  %158 = inttoptr i64 %107 to i32*
  %159 = load i32, i32* %158, align 4, !mcsema_real_eip !45
  %160 = load i64, i64* %147, align 8
  %161 = inttoptr i64 %160 to i32*
  %162 = load i32, i32* %161, align 4, !mcsema_real_eip !46
  %163 = inttoptr i64 %124 to i32*
  %164 = load i32, i32* %163, align 4, !mcsema_real_eip !47
  %165 = add i32 %154, %151
  %166 = add i32 %165, %157
  %167 = add i32 %166, %159
  %168 = add i32 %167, %162
  %169 = add i32 %168, %164
  %170 = add i64 %2, -272, !mcsema_real_eip !48
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !48
  %172 = inttoptr i64 %170 to i32*
  store i32 %169, i32* %172, align 4, !mcsema_real_eip !48
  %173 = add i64 %2, -188, !mcsema_real_eip !49
  %174 = inttoptr i64 %173 to i32*
  %175 = load i32, i32* %174, align 4, !mcsema_real_eip !49
  %176 = load i64, i64* %137, align 8, !mcsema_real_eip !50
  %177 = add i64 %176, 4, !mcsema_real_eip !51
  %178 = inttoptr i64 %177 to i32*
  %179 = load i32, i32* %178, align 4, !mcsema_real_eip !51
  %180 = load i64, i64* %139, align 8, !mcsema_real_eip !52
  %181 = add i64 %180, 4, !mcsema_real_eip !53
  %182 = inttoptr i64 %181 to i32*
  %183 = load i32, i32* %182, align 4, !mcsema_real_eip !53
  %184 = add i64 %2, -124, !mcsema_real_eip !54
  %185 = inttoptr i64 %184 to i32*
  %186 = load i32, i32* %185, align 4, !mcsema_real_eip !54
  %187 = load i64, i64* %147, align 8, !mcsema_real_eip !55
  %188 = add i64 %187, 4, !mcsema_real_eip !56
  %189 = inttoptr i64 %188 to i32*
  %190 = load i32, i32* %189, align 4, !mcsema_real_eip !56
  %191 = load i64, i64* %149, align 8, !mcsema_real_eip !57
  %192 = add i64 %191, 4, !mcsema_real_eip !58
  %193 = inttoptr i64 %192 to i32*
  %194 = load i32, i32* %193, align 4, !mcsema_real_eip !58
  %195 = add i32 %179, %175
  %196 = add i32 %195, %183
  %197 = add i32 %196, %186
  %198 = add i32 %197, %190
  %199 = add i32 %198, %194
  %200 = add i64 %2, -268, !mcsema_real_eip !59
  %201 = inttoptr i64 %200 to i32*
  store i32 %199, i32* %201, align 4, !mcsema_real_eip !59
  %202 = load i32, i32* %132, align 4, !mcsema_real_eip !60
  %203 = load i64, i64* %137, align 8, !mcsema_real_eip !61
  %204 = add i64 %203, 8, !mcsema_real_eip !62
  %205 = inttoptr i64 %204 to i32*
  %206 = load i32, i32* %205, align 4, !mcsema_real_eip !62
  %207 = add i32 %206, %202
  %208 = load i64, i64* %139, align 8, !mcsema_real_eip !63
  %209 = add i64 %208, 8, !mcsema_real_eip !64
  %210 = inttoptr i64 %209 to i32*
  %211 = load i32, i32* %210, align 4, !mcsema_real_eip !64
  %212 = add i32 %207, %211
  %213 = load i32, i32* %105, align 4, !mcsema_real_eip !65
  %214 = load i64, i64* %147, align 8, !mcsema_real_eip !66
  %215 = add i64 %214, 8, !mcsema_real_eip !67
  %216 = inttoptr i64 %215 to i32*
  %217 = load i32, i32* %216, align 4, !mcsema_real_eip !67
  %218 = add i32 %217, %213
  %219 = load i64, i64* %149, align 8, !mcsema_real_eip !68
  %220 = add i64 %219, 8, !mcsema_real_eip !69
  %221 = inttoptr i64 %220 to i32*
  %222 = load i32, i32* %221, align 4, !mcsema_real_eip !69
  %223 = zext i32 %222 to i64
  %224 = add i32 %218, %222
  %225 = zext i32 %224 to i64
  %uadd84.i.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %224, i32 %212) #2
  %226 = extractvalue { i32, i1 } %uadd84.i.i, 0
  %227 = xor i32 %226, %212, !mcsema_real_eip !70
  %228 = xor i32 %227, %224, !mcsema_real_eip !70
  %229 = and i32 %228, 16, !mcsema_real_eip !70
  %230 = icmp ne i32 %229, 0, !mcsema_real_eip !70
  %231 = icmp slt i32 %226, 0
  %232 = icmp eq i32 %226, 0, !mcsema_real_eip !70
  %233 = xor i32 %212, -2147483648, !mcsema_real_eip !70
  %234 = xor i32 %233, %224, !mcsema_real_eip !70
  %235 = and i32 %227, %234, !mcsema_real_eip !70
  %236 = icmp slt i32 %235, 0
  %237 = trunc i32 %226 to i8, !mcsema_real_eip !70
  %238 = tail call i8 @llvm.ctpop.i8(i8 %237) #2, !mcsema_real_eip !70
  %239 = and i8 %238, 1
  %240 = icmp eq i8 %239, 0
  %241 = extractvalue { i32, i1 } %uadd84.i.i, 1
  %242 = add i64 %2, -264, !mcsema_real_eip !71
  %243 = inttoptr i64 %242 to i32*
  store i32 %226, i32* %243, align 4, !mcsema_real_eip !71
  %244 = add i64 %2, -168, !mcsema_real_eip !72
  %245 = inttoptr i64 %244 to i32*
  store i32 %226, i32* %245, align 4, !mcsema_real_eip !72
  %246 = load i64, i64* %171, align 8, !mcsema_real_eip !73
  %247 = add i64 %2, -176, !mcsema_real_eip !74
  %248 = inttoptr i64 %247 to i64*, !mcsema_real_eip !74
  store i64 %246, i64* %248, align 8, !mcsema_real_eip !74
  %249 = load i32, i32* %245, align 4, !mcsema_real_eip !75
  %250 = zext i32 %249 to i64
  %251 = add i64 %2, -280, !mcsema_real_eip !76
  %252 = inttoptr i64 %251 to i32*
  store i32 %249, i32* %252, align 4, !mcsema_real_eip !76
  %253 = load i64, i64* %248, align 8
  %254 = add i64 %2, -288, !mcsema_real_eip !77
  %255 = inttoptr i64 %254 to i64*, !mcsema_real_eip !77
  store i64 %253, i64* %255, align 8, !mcsema_real_eip !77
  %256 = load i32, i32* %252, align 4, !mcsema_real_eip !78
  %257 = zext i32 %256 to i64
  %258 = load i64, i64* %123, align 8
  %259 = load i64, i64* %121, align 8
  store i64 %253, i64* %RAX.i, align 8, !mcsema_real_eip !79
  store i64 %258, i64* %RBX.i, align 8, !mcsema_real_eip !79
  store i64 %160, i64* %RCX.i, align 8, !mcsema_real_eip !79
  store i64 %257, i64* %RDX.i, align 8, !mcsema_real_eip !79
  store i64 %250, i64* %RSI.i, align 8, !mcsema_real_eip !79
  store i64 %133, i64* %RDI.i, align 8, !mcsema_real_eip !79
  store i64 %65, i64* %RSP.i, align 8, !mcsema_real_eip !79
  store i64 %259, i64* %RBP.i, align 8, !mcsema_real_eip !79
  store i64 %225, i64* %R8.i, align 8, !mcsema_real_eip !79
  store i64 %223, i64* %R9.i, align 8, !mcsema_real_eip !79
  store i64 %125, i64* %R10.i, align 8, !mcsema_real_eip !79
  store i64 %107, i64* %R11.i, align 8, !mcsema_real_eip !79
  store i64 %6, i64* %R12.i, align 8, !mcsema_real_eip !79
  store i64 %7, i64* %R13.i, align 8, !mcsema_real_eip !79
  store i64 %8, i64* %R14.i, align 8, !mcsema_real_eip !79
  store i64 %9, i64* %R15.i, align 8, !mcsema_real_eip !79
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !79
  store i1 %241, i1* %CF.i, align 1, !mcsema_real_eip !79
  store i1 %240, i1* %PF.i, align 1, !mcsema_real_eip !79
  store i1 %230, i1* %AF.i, align 1, !mcsema_real_eip !79
  store i1 %232, i1* %ZF.i, align 1, !mcsema_real_eip !79
  store i1 %231, i1* %SF.i, align 1, !mcsema_real_eip !79
  store i1 %236, i1* %OF.i, align 1, !mcsema_real_eip !79
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !79
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* nonnull %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !79
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !79
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !79
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !79
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !79
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !79
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !79
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !79
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !79
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !79
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !79
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !79
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !79
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !79
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !79
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !79
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !79
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !79
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !79
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !79
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !79
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !79
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !79
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !79
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !79
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !79
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !79
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !79
  store i11 %44, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !79
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !79
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !79
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !79
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !79
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !79
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !79
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !79
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !79
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !79
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !79
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !79
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !79
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !79
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !79
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !79
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !79
  store i64 %61, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !79
  store i64 %62, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !79
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %13, i32 128, i32 4, i1 false), !mcsema_real_eip !27
  %260 = add i64 %259, -64, !mcsema_real_eip !80
  %261 = inttoptr i64 %260 to i32*
  store i32 %256, i32* %261, align 4, !mcsema_real_eip !80
  %262 = add i64 %259, -72, !mcsema_real_eip !81
  %263 = inttoptr i64 %262 to i64*, !mcsema_real_eip !81
  store i64 %253, i64* %263, align 8, !mcsema_real_eip !81
  %264 = add i64 %259, -40, !mcsema_real_eip !82
  %265 = inttoptr i64 %264 to i64*, !mcsema_real_eip !82
  store i64 %253, i64* %265, align 8, !mcsema_real_eip !82
  %266 = load i32, i32* %261, align 4, !mcsema_real_eip !83
  %267 = add i64 %259, -32, !mcsema_real_eip !84
  %268 = inttoptr i64 %267 to i32*
  store i32 %266, i32* %268, align 4, !mcsema_real_eip !84
  %269 = inttoptr i64 %264 to i32*
  %270 = load i32, i32* %269, align 4, !mcsema_real_eip !85
  %271 = add i64 %259, -36, !mcsema_real_eip !86
  %272 = inttoptr i64 %271 to i32*
  %273 = load i32, i32* %272, align 4, !mcsema_real_eip !86
  %274 = add i32 %270, %266
  %275 = add i32 %274, %273
  %276 = zext i32 %275 to i64, !mcsema_real_eip !87
  %uadd212.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %65, i64 128)
  %277 = extractvalue { i64, i1 } %uadd212.i, 0
  %278 = xor i64 %277, %65, !mcsema_real_eip !88
  %279 = and i64 %278, 16, !mcsema_real_eip !88
  %280 = icmp ne i64 %279, 0, !mcsema_real_eip !88
  %281 = icmp slt i64 %277, 0
  %282 = icmp eq i64 %277, 0, !mcsema_real_eip !88
  %283 = add i64 %2, 9223372036854775672
  %284 = and i64 %278, %283, !mcsema_real_eip !88
  %285 = icmp slt i64 %284, 0
  %286 = trunc i64 %277 to i8, !mcsema_real_eip !88
  %287 = tail call i8 @llvm.ctpop.i8(i8 %286), !mcsema_real_eip !88
  %288 = and i8 %287, 1
  %289 = icmp eq i8 %288, 0
  %290 = extractvalue { i64, i1 } %uadd212.i, 1
  %291 = inttoptr i64 %277 to i64*, !mcsema_real_eip !89
  %292 = load i64, i64* %291, align 8, !mcsema_real_eip !89
  %293 = add i64 %277, 16, !mcsema_real_eip !90
  store i64 %276, i64* %RAX.i, align 8, !mcsema_real_eip !90
  store i64 %258, i64* %RBX.i, align 8, !mcsema_real_eip !90
  store i64 %160, i64* %RCX.i, align 8, !mcsema_real_eip !90
  store i64 %276, i64* %RDX.i, align 8, !mcsema_real_eip !90
  store i64 %250, i64* %RSI.i, align 8, !mcsema_real_eip !90
  store i64 %133, i64* %RDI.i, align 8, !mcsema_real_eip !90
  store i64 %293, i64* %RSP.i, align 8, !mcsema_real_eip !90
  store i64 %292, i64* %RBP.i, align 8, !mcsema_real_eip !90
  store i64 %225, i64* %R8.i, align 8, !mcsema_real_eip !90
  store i64 %223, i64* %R9.i, align 8, !mcsema_real_eip !90
  store i64 %125, i64* %R10.i, align 8, !mcsema_real_eip !90
  store i64 %107, i64* %R11.i, align 8, !mcsema_real_eip !90
  store i64 %6, i64* %R12.i, align 8, !mcsema_real_eip !90
  store i64 %7, i64* %R13.i, align 8, !mcsema_real_eip !90
  store i64 %8, i64* %R14.i, align 8, !mcsema_real_eip !90
  store i64 %9, i64* %R15.i, align 8, !mcsema_real_eip !90
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !90
  store i1 %290, i1* %CF.i, align 1, !mcsema_real_eip !90
  store i1 %289, i1* %PF.i, align 1, !mcsema_real_eip !90
  store i1 %280, i1* %AF.i, align 1, !mcsema_real_eip !90
  store i1 %282, i1* %ZF.i, align 1, !mcsema_real_eip !90
  store i1 %281, i1* %SF.i, align 1, !mcsema_real_eip !90
  store i1 %285, i1* %OF.i, align 1, !mcsema_real_eip !90
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !90
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !90
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !90
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !90
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !90
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !90
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !90
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !90
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !90
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !90
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !90
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !90
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !90
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !90
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !90
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !90
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !90
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !90
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !90
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !90
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !90
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !90
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !90
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !90
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !90
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !90
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !90
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !90
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !90
  store i11 %44, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !90
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !90
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !90
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !90
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !90
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !90
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !90
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !90
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !90
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !90
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !90
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !90
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !90
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !90
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !90
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !90
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !90
  store i64 %61, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !90
  store i64 %62, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !90
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
!3 = !{i64 272}
!4 = !{i64 276}
!5 = !{i64 283}
!6 = !{i64 300}
!7 = !{i64 304}
!8 = !{i64 318}
!9 = !{i64 323}
!10 = !{i64 327}
!11 = !{i64 333}
!12 = !{i64 337}
!13 = !{i64 344}
!14 = !{i64 348}
!15 = !{i64 359}
!16 = !{i64 362}
!17 = !{i64 369}
!18 = !{i64 377}
!19 = !{i64 380}
!20 = !{i64 386}
!21 = !{i64 389}
!22 = !{i64 393}
!23 = !{i64 397}
!24 = !{i64 405}
!25 = !{i64 409}
!26 = !{i64 429}
!27 = !{i64 439}
!28 = !{i64 4}
!29 = !{i64 5}
!30 = !{i64 17}
!31 = !{i64 20}
!32 = !{i64 24}
!33 = !{i64 27}
!34 = !{i64 34}
!35 = !{i64 38}
!36 = !{i64 42}
!37 = !{i64 46}
!38 = !{i64 50}
!39 = !{i64 54}
!40 = !{i64 57}
!41 = !{i64 61}
!42 = !{i64 65}
!43 = !{i64 72}
!44 = !{i64 82}
!45 = !{i64 88}
!46 = !{i64 95}
!47 = !{i64 101}
!48 = !{i64 110}
!49 = !{i64 113}
!50 = !{i64 116}
!51 = !{i64 120}
!52 = !{i64 127}
!53 = !{i64 131}
!54 = !{i64 138}
!55 = !{i64 142}
!56 = !{i64 146}
!57 = !{i64 153}
!58 = !{i64 157}
!59 = !{i64 167}
!60 = !{i64 170}
!61 = !{i64 173}
!62 = !{i64 177}
!63 = !{i64 184}
!64 = !{i64 188}
!65 = !{i64 195}
!66 = !{i64 199}
!67 = !{i64 203}
!68 = !{i64 210}
!69 = !{i64 214}
!70 = !{i64 221}
!71 = !{i64 224}
!72 = !{i64 227}
!73 = !{i64 230}
!74 = !{i64 234}
!75 = !{i64 238}
!76 = !{i64 241}
!77 = !{i64 248}
!78 = !{i64 262}
!79 = !{i64 267}
!80 = !{i64 444}
!81 = !{i64 447}
!82 = !{i64 455}
!83 = !{i64 459}
!84 = !{i64 462}
!85 = !{i64 465}
!86 = !{i64 468}
!87 = !{i64 471}
!88 = !{i64 476}
!89 = !{i64 483}
!90 = !{i64 484}
