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
  %64 = add i64 %2, -136
  %65 = xor i64 %64, %62, !mcsema_real_eip !4
  %66 = and i64 %65, 16, !mcsema_real_eip !4
  %67 = icmp ne i64 %66, 0, !mcsema_real_eip !4
  %68 = trunc i64 %64 to i8, !mcsema_real_eip !4
  %69 = tail call i8 @llvm.ctpop.i8(i8 %68), !mcsema_real_eip !4
  %70 = and i8 %69, 1
  %71 = icmp eq i8 %70, 0
  %72 = icmp eq i64 %64, 0, !mcsema_real_eip !4
  %73 = icmp slt i64 %64, 0
  %74 = icmp ult i64 %62, 128, !mcsema_real_eip !4
  %75 = and i64 %65, %62, !mcsema_real_eip !4
  %76 = icmp slt i64 %75, 0
  %77 = add i64 %2, -12, !mcsema_real_eip !5
  %78 = inttoptr i64 %77 to i32*
  store i32 0, i32* %78, align 4, !mcsema_real_eip !5
  %79 = add i64 %2, -24
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !6
  %81 = inttoptr i64 %79 to i32*
  store i32 10, i32* %81, align 4, !mcsema_real_eip !6
  %82 = add i64 %2, -20, !mcsema_real_eip !7
  %83 = inttoptr i64 %82 to i32*
  store i32 10, i32* %83, align 4, !mcsema_real_eip !7
  %84 = add i64 %2, -16, !mcsema_real_eip !8
  %85 = inttoptr i64 %84 to i32*
  store i32 10, i32* %85, align 4, !mcsema_real_eip !8
  %86 = tail call x86_64_sysvcc i64 @malloc(i64 24), !mcsema_real_eip !9
  %87 = add i64 %2, -32, !mcsema_real_eip !10
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !10
  store i64 %86, i64* %88, align 8, !mcsema_real_eip !10
  %89 = inttoptr i64 %86 to i32*
  store i32 5, i32* %89, align 4, !mcsema_real_eip !11
  %90 = load i64, i64* %88, align 8, !mcsema_real_eip !12
  %91 = add i64 %90, 4, !mcsema_real_eip !13
  %92 = inttoptr i64 %91 to i32*
  store i32 5, i32* %92, align 4, !mcsema_real_eip !13
  %93 = load i64, i64* %88, align 8, !mcsema_real_eip !14
  %94 = add i64 %93, 8, !mcsema_real_eip !15
  %95 = inttoptr i64 %94 to i32*
  store i32 5, i32* %95, align 4, !mcsema_real_eip !15
  %96 = load i64, i64* %88, align 8
  %97 = load i32, i32* %85, align 4, !mcsema_real_eip !16
  %98 = add i64 %2, -56, !mcsema_real_eip !17
  %99 = inttoptr i64 %98 to i32*
  store i32 %97, i32* %99, align 4, !mcsema_real_eip !17
  %100 = load i64, i64* %80, align 8
  %101 = add i64 %2, -64, !mcsema_real_eip !18
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !18
  store i64 %100, i64* %102, align 8, !mcsema_real_eip !18
  %103 = load i32, i32* %99, align 4, !mcsema_real_eip !19
  %104 = zext i32 %103 to i64
  %105 = load i32, i32* %85, align 4, !mcsema_real_eip !20
  %106 = add i64 %2, -120, !mcsema_real_eip !21
  %107 = inttoptr i64 %106 to i32*
  store i32 %105, i32* %107, align 4, !mcsema_real_eip !21
  %108 = load i64, i64* %80, align 8, !mcsema_real_eip !22
  %109 = add i64 %2, -128, !mcsema_real_eip !23
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !23
  store i64 %108, i64* %110, align 8, !mcsema_real_eip !23
  %111 = add i64 %2, -104, !mcsema_real_eip !24
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !24
  store i64 %96, i64* %112, align 8, !mcsema_real_eip !24
  %113 = add i64 %2, -112, !mcsema_real_eip !25
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !25
  store i64 %79, i64* %114, align 8, !mcsema_real_eip !25
  %115 = inttoptr i64 %64 to i32*
  store i32 3, i32* %115, align 4, !mcsema_real_eip !26
  %116 = add i64 %2, -84, !mcsema_real_eip !27
  %117 = inttoptr i64 %116 to i32*
  store i32 1, i32* %117, align 4, !mcsema_real_eip !27
  %118 = add i64 %2, -144
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !28
  store i64 -4981261766360305936, i64* %119, align 8, !mcsema_real_eip !28
  store i64 %96, i64* %RAX.i, align 8, !mcsema_real_eip !28
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !28
  store i64 %96, i64* %RCX.i, align 8, !mcsema_real_eip !28
  store i64 %79, i64* %RDX.i, align 8, !mcsema_real_eip !28
  store i64 %104, i64* %RSI.i, align 8, !mcsema_real_eip !28
  store i64 %100, i64* %RDI.i, align 8, !mcsema_real_eip !28
  store i64 %118, i64* %RSP.i, align 8, !mcsema_real_eip !28
  store i64 %62, i64* %RBP.i, align 8, !mcsema_real_eip !28
  %120 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 1, i64 2>, <2 x i64>* %120, align 8
  %121 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> %5, <2 x i64>* %121, align 8
  store i64 %6, i64* %R12.i, align 8, !mcsema_real_eip !28
  store i64 %7, i64* %R13.i, align 8, !mcsema_real_eip !28
  store i64 %8, i64* %R14.i, align 8, !mcsema_real_eip !28
  store i64 %9, i64* %R15.i, align 8, !mcsema_real_eip !28
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !28
  store i1 %74, i1* %CF.i, align 1, !mcsema_real_eip !28
  store i1 %71, i1* %PF.i, align 1, !mcsema_real_eip !28
  store i1 %67, i1* %AF.i, align 1, !mcsema_real_eip !28
  store i1 %72, i1* %ZF.i, align 1, !mcsema_real_eip !28
  store i1 %73, i1* %SF.i, align 1, !mcsema_real_eip !28
  store i1 %76, i1* %OF.i, align 1, !mcsema_real_eip !28
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !28
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !28
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
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !28
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !28
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !28
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !28
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !28
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !28
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !28
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !28
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !28
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !28
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !28
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !28
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !28
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !28
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !28
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !28
  store i64 %60, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !28
  store i64 %61, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !28
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast.i, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false)
  %122 = add i64 %2, -152
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !2
  store i64 %62, i64* %123, align 8, !mcsema_real_eip !2
  %124 = add i64 %2, -160
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !29
  store i64 %1, i64* %125, align 8, !mcsema_real_eip !29
  %126 = load i64, i64* %112, align 8, !mcsema_real_eip !30
  %127 = load i64, i64* %114, align 8
  %128 = load i32, i32* %115, align 4, !mcsema_real_eip !31
  %129 = add i64 %2, -208, !mcsema_real_eip !32
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !32
  store i64 %100, i64* %130, align 8, !mcsema_real_eip !32
  %131 = add i64 %2, -200, !mcsema_real_eip !33
  %132 = inttoptr i64 %131 to i32*
  store i32 %103, i32* %132, align 4, !mcsema_real_eip !33
  %133 = add i64 %2, -184, !mcsema_real_eip !34
  %134 = inttoptr i64 %133 to i32*
  store i32 %103, i32* %134, align 4, !mcsema_real_eip !34
  %135 = load i64, i64* %130, align 8
  %136 = add i64 %2, -192, !mcsema_real_eip !35
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !35
  store i64 %135, i64* %137, align 8, !mcsema_real_eip !35
  %138 = add i64 %2, -216, !mcsema_real_eip !36
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !36
  store i64 %79, i64* %139, align 8, !mcsema_real_eip !36
  %140 = add i64 %2, -224, !mcsema_real_eip !37
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !37
  store i64 %96, i64* %141, align 8, !mcsema_real_eip !37
  %142 = add i64 %2, -228, !mcsema_real_eip !38
  %143 = inttoptr i64 %142 to i32*
  store i32 1, i32* %143, align 4, !mcsema_real_eip !38
  %144 = add i64 %2, -232, !mcsema_real_eip !39
  %145 = inttoptr i64 %144 to i32*
  store i32 2, i32* %145, align 4, !mcsema_real_eip !39
  %146 = add i64 %2, -236, !mcsema_real_eip !40
  %147 = inttoptr i64 %146 to i32*
  store i32 %128, i32* %147, align 4, !mcsema_real_eip !40
  %148 = add i64 %2, -248, !mcsema_real_eip !41
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !41
  store i64 %127, i64* %149, align 8, !mcsema_real_eip !41
  %150 = add i64 %2, -256, !mcsema_real_eip !42
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !42
  store i64 %126, i64* %151, align 8, !mcsema_real_eip !42
  %152 = inttoptr i64 %136 to i32*
  %153 = load i32, i32* %152, align 4, !mcsema_real_eip !43
  %154 = inttoptr i64 %138 to i32**
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %155, align 4, !mcsema_real_eip !44
  %157 = inttoptr i64 %140 to i32**
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %158, align 4, !mcsema_real_eip !45
  %160 = inttoptr i64 %109 to i32*
  %161 = load i32, i32* %160, align 4, !mcsema_real_eip !46
  %162 = inttoptr i64 %148 to i32**
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %163, align 4, !mcsema_real_eip !47
  %165 = inttoptr i64 %126 to i32*
  %166 = load i32, i32* %165, align 4, !mcsema_real_eip !48
  %167 = add i32 %156, %153
  %168 = add i32 %167, %159
  %169 = add i32 %168, %161
  %170 = add i32 %169, %164
  %171 = add i32 %170, %166
  %172 = add i64 %2, -272, !mcsema_real_eip !49
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !49
  %174 = inttoptr i64 %172 to i32*
  store i32 %171, i32* %174, align 4, !mcsema_real_eip !49
  %175 = add i64 %2, -188, !mcsema_real_eip !50
  %176 = inttoptr i64 %175 to i32*
  %177 = load i32, i32* %176, align 4, !mcsema_real_eip !50
  %178 = load i64, i64* %139, align 8, !mcsema_real_eip !51
  %179 = add i64 %178, 4, !mcsema_real_eip !52
  %180 = inttoptr i64 %179 to i32*
  %181 = load i32, i32* %180, align 4, !mcsema_real_eip !52
  %182 = load i64, i64* %141, align 8, !mcsema_real_eip !53
  %183 = add i64 %182, 4, !mcsema_real_eip !54
  %184 = inttoptr i64 %183 to i32*
  %185 = load i32, i32* %184, align 4, !mcsema_real_eip !54
  %186 = add i64 %2, -124, !mcsema_real_eip !55
  %187 = inttoptr i64 %186 to i32*
  %188 = load i32, i32* %187, align 4, !mcsema_real_eip !55
  %189 = load i64, i64* %149, align 8, !mcsema_real_eip !56
  %190 = add i64 %189, 4, !mcsema_real_eip !57
  %191 = inttoptr i64 %190 to i32*
  %192 = load i32, i32* %191, align 4, !mcsema_real_eip !57
  %193 = load i64, i64* %151, align 8, !mcsema_real_eip !58
  %194 = add i64 %193, 4, !mcsema_real_eip !59
  %195 = inttoptr i64 %194 to i32*
  %196 = load i32, i32* %195, align 4, !mcsema_real_eip !59
  %197 = add i32 %181, %177
  %198 = add i32 %197, %185
  %199 = add i32 %198, %188
  %200 = add i32 %199, %192
  %201 = add i32 %200, %196
  %202 = add i64 %2, -268, !mcsema_real_eip !60
  %203 = inttoptr i64 %202 to i32*
  store i32 %201, i32* %203, align 4, !mcsema_real_eip !60
  %204 = load i32, i32* %134, align 4, !mcsema_real_eip !61
  %205 = load i64, i64* %139, align 8, !mcsema_real_eip !62
  %206 = add i64 %205, 8, !mcsema_real_eip !63
  %207 = inttoptr i64 %206 to i32*
  %208 = load i32, i32* %207, align 4, !mcsema_real_eip !63
  %209 = add i32 %208, %204
  %210 = load i64, i64* %141, align 8, !mcsema_real_eip !64
  %211 = add i64 %210, 8, !mcsema_real_eip !65
  %212 = inttoptr i64 %211 to i32*
  %213 = load i32, i32* %212, align 4, !mcsema_real_eip !65
  %214 = add i32 %209, %213
  %215 = load i32, i32* %107, align 4, !mcsema_real_eip !66
  %216 = load i64, i64* %149, align 8, !mcsema_real_eip !67
  %217 = add i64 %216, 8, !mcsema_real_eip !68
  %218 = inttoptr i64 %217 to i32*
  %219 = load i32, i32* %218, align 4, !mcsema_real_eip !68
  %220 = add i32 %219, %215
  %221 = load i64, i64* %151, align 8, !mcsema_real_eip !69
  %222 = add i64 %221, 8, !mcsema_real_eip !70
  %223 = inttoptr i64 %222 to i32*
  %224 = load i32, i32* %223, align 4, !mcsema_real_eip !70
  %225 = zext i32 %224 to i64
  %226 = add i32 %220, %224
  %227 = zext i32 %226 to i64
  %uadd83.i.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %226, i32 %214) #2
  %228 = extractvalue { i32, i1 } %uadd83.i.i, 0
  %229 = xor i32 %228, %214, !mcsema_real_eip !71
  %230 = xor i32 %229, %226, !mcsema_real_eip !71
  %231 = and i32 %230, 16, !mcsema_real_eip !71
  %232 = icmp ne i32 %231, 0, !mcsema_real_eip !71
  %233 = icmp slt i32 %228, 0
  %234 = icmp eq i32 %228, 0, !mcsema_real_eip !71
  %235 = xor i32 %214, -2147483648, !mcsema_real_eip !71
  %236 = xor i32 %235, %226, !mcsema_real_eip !71
  %237 = and i32 %229, %236, !mcsema_real_eip !71
  %238 = icmp slt i32 %237, 0
  %239 = trunc i32 %228 to i8, !mcsema_real_eip !71
  %240 = tail call i8 @llvm.ctpop.i8(i8 %239) #2, !mcsema_real_eip !71
  %241 = and i8 %240, 1
  %242 = icmp eq i8 %241, 0
  %243 = extractvalue { i32, i1 } %uadd83.i.i, 1
  %244 = add i64 %2, -264, !mcsema_real_eip !72
  %245 = inttoptr i64 %244 to i32*
  store i32 %228, i32* %245, align 4, !mcsema_real_eip !72
  %246 = add i64 %2, -168, !mcsema_real_eip !73
  %247 = inttoptr i64 %246 to i32*
  store i32 %228, i32* %247, align 4, !mcsema_real_eip !73
  %248 = load i64, i64* %173, align 8, !mcsema_real_eip !74
  %249 = add i64 %2, -176, !mcsema_real_eip !75
  %250 = inttoptr i64 %249 to i64*, !mcsema_real_eip !75
  store i64 %248, i64* %250, align 8, !mcsema_real_eip !75
  %251 = load i32, i32* %247, align 4, !mcsema_real_eip !76
  %252 = zext i32 %251 to i64
  %253 = add i64 %2, -280, !mcsema_real_eip !77
  %254 = inttoptr i64 %253 to i32*
  store i32 %251, i32* %254, align 4, !mcsema_real_eip !77
  %255 = load i64, i64* %250, align 8
  %256 = add i64 %2, -288, !mcsema_real_eip !78
  %257 = inttoptr i64 %256 to i64*, !mcsema_real_eip !78
  store i64 %255, i64* %257, align 8, !mcsema_real_eip !78
  %258 = load i32, i32* %254, align 4, !mcsema_real_eip !79
  %259 = zext i32 %258 to i64
  %260 = load i64, i64* %125, align 8
  %261 = load i64, i64* %123, align 8
  store i64 %255, i64* %RAX.i, align 8, !mcsema_real_eip !80
  store i64 %260, i64* %RBX.i, align 8, !mcsema_real_eip !80
  store i64 %96, i64* %RCX.i, align 8, !mcsema_real_eip !80
  store i64 %259, i64* %RDX.i, align 8, !mcsema_real_eip !80
  store i64 %252, i64* %RSI.i, align 8, !mcsema_real_eip !80
  store i64 %135, i64* %RDI.i, align 8, !mcsema_real_eip !80
  store i64 %64, i64* %RSP.i, align 8, !mcsema_real_eip !80
  store i64 %261, i64* %RBP.i, align 8, !mcsema_real_eip !80
  store i64 %227, i64* %R8.i, align 8, !mcsema_real_eip !80
  store i64 %225, i64* %R9.i, align 8, !mcsema_real_eip !80
  store i64 %127, i64* %R10.i, align 8, !mcsema_real_eip !80
  store i64 %109, i64* %R11.i, align 8, !mcsema_real_eip !80
  store i64 %6, i64* %R12.i, align 8, !mcsema_real_eip !80
  store i64 %7, i64* %R13.i, align 8, !mcsema_real_eip !80
  store i64 %8, i64* %R14.i, align 8, !mcsema_real_eip !80
  store i64 %9, i64* %R15.i, align 8, !mcsema_real_eip !80
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !80
  store i1 %243, i1* %CF.i, align 1, !mcsema_real_eip !80
  store i1 %242, i1* %PF.i, align 1, !mcsema_real_eip !80
  store i1 %232, i1* %AF.i, align 1, !mcsema_real_eip !80
  store i1 %234, i1* %ZF.i, align 1, !mcsema_real_eip !80
  store i1 %233, i1* %SF.i, align 1, !mcsema_real_eip !80
  store i1 %238, i1* %OF.i, align 1, !mcsema_real_eip !80
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !80
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* nonnull %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !80
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !80
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !80
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !80
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !80
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !80
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !80
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !80
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !80
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !80
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !80
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !80
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !80
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !80
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !80
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !80
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !80
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !80
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !80
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !80
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !80
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !80
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !80
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !80
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !80
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !80
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !80
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !80
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !80
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !80
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !80
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !80
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !80
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !80
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !80
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !80
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !80
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !80
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !80
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !80
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !80
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !80
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !80
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !80
  store i64 %60, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !80
  store i64 %61, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !80
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %13, i32 128, i32 4, i1 false), !mcsema_real_eip !28
  %262 = add i64 %261, -64, !mcsema_real_eip !81
  %263 = inttoptr i64 %262 to i32*
  store i32 %258, i32* %263, align 4, !mcsema_real_eip !81
  %264 = add i64 %261, -72, !mcsema_real_eip !82
  %265 = inttoptr i64 %264 to i64*, !mcsema_real_eip !82
  store i64 %255, i64* %265, align 8, !mcsema_real_eip !82
  %266 = add i64 %261, -40, !mcsema_real_eip !83
  %267 = inttoptr i64 %266 to i64*, !mcsema_real_eip !83
  store i64 %255, i64* %267, align 8, !mcsema_real_eip !83
  %268 = load i32, i32* %263, align 4, !mcsema_real_eip !84
  %269 = add i64 %261, -32, !mcsema_real_eip !85
  %270 = inttoptr i64 %269 to i32*
  store i32 %268, i32* %270, align 4, !mcsema_real_eip !85
  %271 = inttoptr i64 %266 to i32*
  %272 = load i32, i32* %271, align 4, !mcsema_real_eip !86
  %273 = add i64 %261, -36, !mcsema_real_eip !87
  %274 = inttoptr i64 %273 to i32*
  %275 = load i32, i32* %274, align 4, !mcsema_real_eip !87
  %276 = add i32 %272, %268
  %277 = add i32 %276, %275
  %278 = zext i32 %277 to i64, !mcsema_real_eip !88
  %uadd210.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %64, i64 128)
  %279 = extractvalue { i64, i1 } %uadd210.i, 0
  %280 = xor i64 %279, %64, !mcsema_real_eip !89
  %281 = and i64 %280, 16, !mcsema_real_eip !89
  %282 = icmp ne i64 %281, 0, !mcsema_real_eip !89
  %283 = icmp slt i64 %279, 0
  %284 = icmp eq i64 %279, 0, !mcsema_real_eip !89
  %285 = add i64 %2, 9223372036854775672
  %286 = and i64 %280, %285, !mcsema_real_eip !89
  %287 = icmp slt i64 %286, 0
  %288 = trunc i64 %279 to i8, !mcsema_real_eip !89
  %289 = tail call i8 @llvm.ctpop.i8(i8 %288), !mcsema_real_eip !89
  %290 = and i8 %289, 1
  %291 = icmp eq i8 %290, 0
  %292 = extractvalue { i64, i1 } %uadd210.i, 1
  %293 = inttoptr i64 %279 to i64*, !mcsema_real_eip !90
  %294 = load i64, i64* %293, align 8, !mcsema_real_eip !90
  %295 = add i64 %279, 16, !mcsema_real_eip !91
  store i64 %278, i64* %RAX.i, align 8, !mcsema_real_eip !91
  store i64 %260, i64* %RBX.i, align 8, !mcsema_real_eip !91
  store i64 %96, i64* %RCX.i, align 8, !mcsema_real_eip !91
  store i64 %278, i64* %RDX.i, align 8, !mcsema_real_eip !91
  store i64 %252, i64* %RSI.i, align 8, !mcsema_real_eip !91
  store i64 %135, i64* %RDI.i, align 8, !mcsema_real_eip !91
  store i64 %295, i64* %RSP.i, align 8, !mcsema_real_eip !91
  store i64 %294, i64* %RBP.i, align 8, !mcsema_real_eip !91
  store i64 %227, i64* %R8.i, align 8, !mcsema_real_eip !91
  store i64 %225, i64* %R9.i, align 8, !mcsema_real_eip !91
  store i64 %127, i64* %R10.i, align 8, !mcsema_real_eip !91
  store i64 %109, i64* %R11.i, align 8, !mcsema_real_eip !91
  store i64 %6, i64* %R12.i, align 8, !mcsema_real_eip !91
  store i64 %7, i64* %R13.i, align 8, !mcsema_real_eip !91
  store i64 %8, i64* %R14.i, align 8, !mcsema_real_eip !91
  store i64 %9, i64* %R15.i, align 8, !mcsema_real_eip !91
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !91
  store i1 %292, i1* %CF.i, align 1, !mcsema_real_eip !91
  store i1 %291, i1* %PF.i, align 1, !mcsema_real_eip !91
  store i1 %282, i1* %AF.i, align 1, !mcsema_real_eip !91
  store i1 %284, i1* %ZF.i, align 1, !mcsema_real_eip !91
  store i1 %283, i1* %SF.i, align 1, !mcsema_real_eip !91
  store i1 %287, i1* %OF.i, align 1, !mcsema_real_eip !91
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !91
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !91
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !91
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !91
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !91
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !91
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !91
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !91
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !91
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !91
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !91
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !91
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !91
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !91
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !91
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !91
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !91
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !91
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !91
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !91
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !91
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !91
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !91
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !91
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !91
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !91
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !91
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !91
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !91
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !91
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !91
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !91
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !91
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !91
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !91
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !91
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !91
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !91
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !91
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !91
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !91
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !91
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !91
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !91
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !91
  store i64 %60, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !91
  store i64 %61, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !91
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
!3 = !{i64 288, [12 x i8] c"\09pushq\09%rbp\00"}
!4 = !{i64 292, [17 x i8] c"\09subq\09$128, %rsp\00"}
!5 = !{i64 299, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!6 = !{i64 306, [21 x i8] c"\09movl\09$10, -16(%rbp)\00"}
!7 = !{i64 313, [21 x i8] c"\09movl\09$10, -12(%rbp)\00"}
!8 = !{i64 320, [20 x i8] c"\09movl\09$10, -8(%rbp)\00"}
!9 = !{i64 334, [9 x i8] c"\09callq\090\00"}
!10 = !{i64 339, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!11 = !{i64 347, [17 x i8] c"\09movl\09$5, (%rax)\00"}
!12 = !{i64 353, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!13 = !{i64 357, [18 x i8] c"\09movl\09$5, 4(%rax)\00"}
!14 = !{i64 364, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!15 = !{i64 368, [18 x i8] c"\09movl\09$5, 8(%rax)\00"}
!16 = !{i64 379, [21 x i8] c"\09movl\09-8(%rbp), %ecx\00"}
!17 = !{i64 382, [22 x i8] c"\09movl\09%ecx, -48(%rbp)\00"}
!18 = !{i64 389, [22 x i8] c"\09movq\09%rdi, -56(%rbp)\00"}
!19 = !{i64 397, [22 x i8] c"\09movl\09-48(%rbp), %esi\00"}
!20 = !{i64 400, [21 x i8] c"\09movl\09-8(%rbp), %ecx\00"}
!21 = !{i64 406, [21 x i8] c"\09movl\09%ecx, 16(%rdx)\00"}
!22 = !{i64 409, [21 x i8] c"\09movq\09-16(%rbp), %r8\00"}
!23 = !{i64 413, [19 x i8] c"\09movq\09%r8, 8(%rdx)\00"}
!24 = !{i64 417, [21 x i8] c"\09movq\09%rax, 32(%rdx)\00"}
!25 = !{i64 425, [20 x i8] c"\09movq\09%r8, 24(%rdx)\00"}
!26 = !{i64 429, [17 x i8] c"\09movl\09$3, (%rdx)\00"}
!27 = !{i64 449, [22 x i8] c"\09movl\09%ecx, -76(%rbp)\00"}
!28 = !{i64 459, [12 x i8] c"\09callq\09-464\00"}
!29 = !{i64 4, [12 x i8] c"\09pushq\09%rbx\00"}
!30 = !{i64 5, [21 x i8] c"\09movq\0948(%rbp), %rax\00"}
!31 = !{i64 17, [21 x i8] c"\09movl\0916(%rbp), %ebx\00"}
!32 = !{i64 20, [22 x i8] c"\09movq\09%rdi, -56(%rbp)\00"}
!33 = !{i64 24, [22 x i8] c"\09movl\09%esi, -48(%rbp)\00"}
!34 = !{i64 30, [22 x i8] c"\09movl\09%esi, -32(%rbp)\00"}
!35 = !{i64 37, [22 x i8] c"\09movq\09%rdi, -40(%rbp)\00"}
!36 = !{i64 41, [22 x i8] c"\09movq\09%rdx, -64(%rbp)\00"}
!37 = !{i64 45, [22 x i8] c"\09movq\09%rcx, -72(%rbp)\00"}
!38 = !{i64 49, [22 x i8] c"\09movl\09%r8d, -76(%rbp)\00"}
!39 = !{i64 53, [22 x i8] c"\09movl\09%r9d, -80(%rbp)\00"}
!40 = !{i64 57, [22 x i8] c"\09movl\09%ebx, -84(%rbp)\00"}
!41 = !{i64 60, [22 x i8] c"\09movq\09%r10, -96(%rbp)\00"}
!42 = !{i64 64, [23 x i8] c"\09movq\09%rax, -104(%rbp)\00"}
!43 = !{i64 68, [22 x i8] c"\09movl\09-40(%rbp), %esi\00"}
!44 = !{i64 75, [19 x i8] c"\09movl\09(%rax), %r8d\00"}
!45 = !{i64 85, [19 x i8] c"\09movl\09(%rax), %r8d\00"}
!46 = !{i64 91, [19 x i8] c"\09movl\09(%r11), %r8d\00"}
!47 = !{i64 98, [19 x i8] c"\09movl\09(%rax), %r9d\00"}
!48 = !{i64 108, [19 x i8] c"\09movl\09(%rax), %r9d\00"}
!49 = !{i64 117, [23 x i8] c"\09movl\09%esi, -120(%rbp)\00"}
!50 = !{i64 120, [22 x i8] c"\09movl\09-36(%rbp), %esi\00"}
!51 = !{i64 123, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!52 = !{i64 127, [20 x i8] c"\09movl\094(%rax), %r8d\00"}
!53 = !{i64 134, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!54 = !{i64 138, [20 x i8] c"\09movl\094(%rax), %r8d\00"}
!55 = !{i64 145, [20 x i8] c"\09movl\094(%r11), %r8d\00"}
!56 = !{i64 149, [22 x i8] c"\09movq\09-96(%rbp), %rax\00"}
!57 = !{i64 153, [20 x i8] c"\09movl\094(%rax), %r9d\00"}
!58 = !{i64 160, [23 x i8] c"\09movq\09-104(%rbp), %rax\00"}
!59 = !{i64 164, [20 x i8] c"\09movl\094(%rax), %r9d\00"}
!60 = !{i64 174, [23 x i8] c"\09movl\09%esi, -116(%rbp)\00"}
!61 = !{i64 177, [22 x i8] c"\09movl\09-32(%rbp), %esi\00"}
!62 = !{i64 180, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!63 = !{i64 184, [20 x i8] c"\09movl\098(%rax), %r8d\00"}
!64 = !{i64 191, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!65 = !{i64 195, [20 x i8] c"\09movl\098(%rax), %r8d\00"}
!66 = !{i64 202, [20 x i8] c"\09movl\098(%r11), %r8d\00"}
!67 = !{i64 206, [22 x i8] c"\09movq\09-96(%rbp), %rax\00"}
!68 = !{i64 210, [20 x i8] c"\09movl\098(%rax), %r9d\00"}
!69 = !{i64 217, [23 x i8] c"\09movq\09-104(%rbp), %rax\00"}
!70 = !{i64 221, [20 x i8] c"\09movl\098(%rax), %r9d\00"}
!71 = !{i64 228, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!72 = !{i64 231, [23 x i8] c"\09movl\09%esi, -112(%rbp)\00"}
!73 = !{i64 237, [22 x i8] c"\09movl\09%esi, -16(%rbp)\00"}
!74 = !{i64 240, [23 x i8] c"\09movq\09-120(%rbp), %rax\00"}
!75 = !{i64 244, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!76 = !{i64 248, [22 x i8] c"\09movl\09-16(%rbp), %esi\00"}
!77 = !{i64 251, [23 x i8] c"\09movl\09%esi, -128(%rbp)\00"}
!78 = !{i64 258, [23 x i8] c"\09movq\09%rax, -136(%rbp)\00"}
!79 = !{i64 272, [23 x i8] c"\09movl\09-128(%rbp), %edx\00"}
!80 = !{i64 277, [6 x i8] c"\09retq\00"}
!81 = !{i64 464, [22 x i8] c"\09movl\09%edx, -64(%rbp)\00"}
!82 = !{i64 467, [22 x i8] c"\09movq\09%rax, -72(%rbp)\00"}
!83 = !{i64 475, [22 x i8] c"\09movq\09%rax, -40(%rbp)\00"}
!84 = !{i64 479, [22 x i8] c"\09movl\09-64(%rbp), %edx\00"}
!85 = !{i64 482, [22 x i8] c"\09movl\09%edx, -32(%rbp)\00"}
!86 = !{i64 485, [22 x i8] c"\09movl\09-40(%rbp), %edx\00"}
!87 = !{i64 488, [22 x i8] c"\09addl\09-36(%rbp), %edx\00"}
!88 = !{i64 491, [22 x i8] c"\09addl\09-32(%rbp), %edx\00"}
!89 = !{i64 496, [17 x i8] c"\09addq\09$128, %rsp\00"}
!90 = !{i64 503, [11 x i8] c"\09popq\09%rbp\00"}
!91 = !{i64 504, [6 x i8] c"\09retq\00"}
