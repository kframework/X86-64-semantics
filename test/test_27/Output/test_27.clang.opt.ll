; ModuleID = 'Output/test_27.clang.opt.bc'
source_filename = "Output/test_27.clang.bc"
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
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %4 = load i64, i64* %R12.i, align 8
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !3
  %5 = load i64, i64* %R13.i, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %6 = load i64, i64* %R14.i, align 8
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !3
  %7 = load i64, i64* %R15.i, align 8
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %8 = load i64, i64* %RIP.i, align 8
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
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
  %62 = add i64 %2, -120
  %63 = xor i64 %62, %60, !mcsema_real_eip !4
  %64 = and i64 %63, 16
  %65 = icmp eq i64 %64, 0
  %66 = trunc i64 %62 to i8, !mcsema_real_eip !4
  %67 = tail call i8 @llvm.ctpop.i8(i8 %66), !mcsema_real_eip !4
  %68 = and i8 %67, 1
  %69 = icmp eq i8 %68, 0
  %70 = icmp eq i64 %62, 0, !mcsema_real_eip !4
  %71 = icmp slt i64 %62, 0
  %72 = icmp ult i64 %60, 112, !mcsema_real_eip !4
  %73 = and i64 %63, %60, !mcsema_real_eip !4
  %74 = icmp slt i64 %73, 0
  %75 = add i64 %2, -12, !mcsema_real_eip !5
  %76 = inttoptr i64 %75 to i32*
  store i32 0, i32* %76, align 4, !mcsema_real_eip !5
  %77 = add i64 %2, -24
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !6
  %79 = inttoptr i64 %77 to i32*
  store i32 10, i32* %79, align 4, !mcsema_real_eip !6
  %80 = add i64 %2, -20, !mcsema_real_eip !7
  %81 = inttoptr i64 %80 to i32*
  store i32 10, i32* %81, align 4, !mcsema_real_eip !7
  %82 = add i64 %2, -16, !mcsema_real_eip !8
  %83 = inttoptr i64 %82 to i32*
  store i32 10, i32* %83, align 4, !mcsema_real_eip !8
  %84 = tail call x86_64_sysvcc i64 @malloc(i64 12), !mcsema_real_eip !9
  %85 = add i64 %2, -32, !mcsema_real_eip !10
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !10
  store i64 %84, i64* %86, align 8, !mcsema_real_eip !10
  %87 = inttoptr i64 %84 to i32*
  store i32 5, i32* %87, align 4, !mcsema_real_eip !11
  %88 = load i64, i64* %86, align 8, !mcsema_real_eip !12
  %89 = add i64 %88, 4, !mcsema_real_eip !13
  %90 = inttoptr i64 %89 to i32*
  store i32 5, i32* %90, align 4, !mcsema_real_eip !13
  %91 = load i64, i64* %86, align 8, !mcsema_real_eip !14
  %92 = add i64 %91, 8, !mcsema_real_eip !15
  %93 = inttoptr i64 %92 to i32*
  store i32 5, i32* %93, align 4, !mcsema_real_eip !15
  %94 = load i64, i64* %86, align 8
  %95 = load i64, i64* %78, align 8, !mcsema_real_eip !16
  %96 = add i64 %2, -56, !mcsema_real_eip !17
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !17
  store i64 %95, i64* %97, align 8, !mcsema_real_eip !17
  %98 = load i32, i32* %83, align 4, !mcsema_real_eip !18
  %99 = add i64 %2, -48, !mcsema_real_eip !19
  %100 = inttoptr i64 %99 to i32*
  store i32 %98, i32* %100, align 4, !mcsema_real_eip !19
  %101 = load i64, i64* %97, align 8
  %102 = zext i32 %98 to i64
  %103 = add i64 %2, -64, !mcsema_real_eip !20
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !20
  store i64 %77, i64* %104, align 8, !mcsema_real_eip !20
  %105 = add i64 %2, -72, !mcsema_real_eip !21
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !21
  store i64 %94, i64* %106, align 8, !mcsema_real_eip !21
  %107 = add i64 %2, -76, !mcsema_real_eip !22
  %108 = inttoptr i64 %107 to i32*
  store i32 3, i32* %108, align 4, !mcsema_real_eip !22
  %109 = inttoptr i64 %62 to i32*
  store i32 3, i32* %109, align 4, !mcsema_real_eip !23
  %110 = load i64, i64* %78, align 8, !mcsema_real_eip !24
  %111 = add i64 %2, -112, !mcsema_real_eip !25
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !25
  store i64 %110, i64* %112, align 8, !mcsema_real_eip !25
  %113 = load i32, i32* %83, align 4, !mcsema_real_eip !26
  %114 = zext i32 %113 to i64, !mcsema_real_eip !26
  %115 = add i64 %2, -104, !mcsema_real_eip !27
  %116 = inttoptr i64 %115 to i32*
  store i32 %113, i32* %116, align 4, !mcsema_real_eip !27
  %117 = add i64 %2, -96, !mcsema_real_eip !28
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !28
  store i64 %77, i64* %118, align 8, !mcsema_real_eip !28
  %119 = load i64, i64* %106, align 8, !mcsema_real_eip !29
  %120 = add i64 %2, -88, !mcsema_real_eip !30
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !30
  store i64 %119, i64* %121, align 8, !mcsema_real_eip !30
  %122 = add i64 %2, -128
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !31
  store i64 -4981261766360305936, i64* %123, align 8, !mcsema_real_eip !31
  store i64 %119, i64* %RAX.i, align 8, !mcsema_real_eip !31
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !31
  store i64 %94, i64* %RCX.i, align 8, !mcsema_real_eip !31
  store i64 %77, i64* %RDX.i, align 8, !mcsema_real_eip !31
  store i64 %102, i64* %RSI.i, align 8, !mcsema_real_eip !31
  store i64 %101, i64* %RDI.i, align 8, !mcsema_real_eip !31
  store i64 %122, i64* %RSP.i, align 8, !mcsema_real_eip !31
  store i64 %60, i64* %RBP.i, align 8, !mcsema_real_eip !31
  %124 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 1, i64 2>, <2 x i64>* %124, align 8
  store i64 %114, i64* %R10.i, align 8, !mcsema_real_eip !31
  store i64 %77, i64* %R11.i, align 8, !mcsema_real_eip !31
  store i64 %4, i64* %R12.i, align 8, !mcsema_real_eip !31
  store i64 %5, i64* %R13.i, align 8, !mcsema_real_eip !31
  store i64 %6, i64* %R14.i, align 8, !mcsema_real_eip !31
  store i64 %7, i64* %R15.i, align 8, !mcsema_real_eip !31
  store i64 %8, i64* %RIP.i, align 8, !mcsema_real_eip !31
  store i1 %72, i1* %CF.i, align 1, !mcsema_real_eip !31
  store i1 %69, i1* %PF.i, align 1, !mcsema_real_eip !31
  store i1 %65, i1* %AF.i, align 1, !mcsema_real_eip !31
  store i1 %70, i1* %ZF.i, align 1, !mcsema_real_eip !31
  store i1 %71, i1* %SF.i, align 1, !mcsema_real_eip !31
  store i1 %74, i1* %OF.i, align 1, !mcsema_real_eip !31
  store i1 %9, i1* %DF.i, align 1, !mcsema_real_eip !31
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !31
  store i1 %12, i1* %FPU_B.i, align 1, !mcsema_real_eip !31
  store i1 %13, i1* %FPU_C3.i, align 1, !mcsema_real_eip !31
  store i3 %14, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !31
  store i1 %15, i1* %FPU_C2.i, align 1, !mcsema_real_eip !31
  store i1 %16, i1* %FPU_C1.i, align 1, !mcsema_real_eip !31
  store i1 %17, i1* %FPU_C0.i, align 1, !mcsema_real_eip !31
  store i1 %18, i1* %FPU_ES.i, align 1, !mcsema_real_eip !31
  store i1 %19, i1* %FPU_SF.i, align 1, !mcsema_real_eip !31
  store i1 %20, i1* %FPU_PE.i, align 1, !mcsema_real_eip !31
  store i1 %21, i1* %FPU_UE.i, align 1, !mcsema_real_eip !31
  store i1 %22, i1* %FPU_OE.i, align 1, !mcsema_real_eip !31
  store i1 %23, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !31
  store i1 %24, i1* %FPU_DE.i, align 1, !mcsema_real_eip !31
  store i1 %25, i1* %FPU_IE.i, align 1, !mcsema_real_eip !31
  store i1 %26, i1* %FPU_X.i, align 1, !mcsema_real_eip !31
  store i2 %27, i2* %FPU_RC.i, align 1, !mcsema_real_eip !31
  store i2 %28, i2* %FPU_PC.i, align 1, !mcsema_real_eip !31
  store i1 %29, i1* %FPU_PM.i, align 1, !mcsema_real_eip !31
  store i1 %30, i1* %FPU_UM.i, align 1, !mcsema_real_eip !31
  store i1 %31, i1* %FPU_OM.i, align 1, !mcsema_real_eip !31
  store i1 %32, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !31
  store i1 %33, i1* %FPU_DM.i, align 1, !mcsema_real_eip !31
  store i1 %34, i1* %FPU_IM.i, align 1, !mcsema_real_eip !31
  store i64 %37, i64* %36, align 4
  store i16 %38, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !31
  store i64 %39, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !31
  store i16 %40, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !31
  store i64 %41, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !31
  store i128 %42, i128* %XMM0.i, align 1, !mcsema_real_eip !31
  store i128 %43, i128* %XMM1.i, align 1, !mcsema_real_eip !31
  store i128 %44, i128* %XMM2.i, align 1, !mcsema_real_eip !31
  store i128 %45, i128* %XMM3.i, align 1, !mcsema_real_eip !31
  store i128 %46, i128* %XMM4.i, align 1, !mcsema_real_eip !31
  store i128 %47, i128* %XMM5.i, align 1, !mcsema_real_eip !31
  store i128 %48, i128* %XMM6.i, align 1, !mcsema_real_eip !31
  store i128 %49, i128* %XMM7.i, align 1, !mcsema_real_eip !31
  store i128 %50, i128* %XMM8.i, align 1, !mcsema_real_eip !31
  store i128 %51, i128* %XMM9.i, align 1, !mcsema_real_eip !31
  store i128 %52, i128* %XMM10.i, align 1, !mcsema_real_eip !31
  store i128 %53, i128* %XMM11.i, align 1, !mcsema_real_eip !31
  store i128 %54, i128* %XMM12.i, align 1, !mcsema_real_eip !31
  store i128 %55, i128* %XMM13.i, align 1, !mcsema_real_eip !31
  store i128 %56, i128* %XMM14.i, align 1, !mcsema_real_eip !31
  store i128 %57, i128* %XMM15.i, align 1, !mcsema_real_eip !31
  store i64 %58, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !31
  store i64 %59, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !31
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast.i, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false)
  %125 = add i64 %2, -136
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !2
  store i64 %60, i64* %126, align 8, !mcsema_real_eip !2
  %127 = add i64 %2, -144
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !32
  store i64 %7, i64* %128, align 8, !mcsema_real_eip !32
  %129 = add i64 %2, -152
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !33
  store i64 %6, i64* %130, align 8, !mcsema_real_eip !33
  %131 = add i64 %2, -160
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !34
  store i64 %1, i64* %132, align 8, !mcsema_real_eip !34
  %133 = add i64 %2, -264
  %134 = load i64, i64* %121, align 8, !mcsema_real_eip !35
  %135 = load i64, i64* %118, align 8
  %136 = load i32, i32* %109, align 4, !mcsema_real_eip !36
  %137 = add i64 %2, -192, !mcsema_real_eip !37
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !37
  store i64 %101, i64* %138, align 8, !mcsema_real_eip !37
  %139 = add i64 %2, -184, !mcsema_real_eip !38
  %140 = inttoptr i64 %139 to i32*
  store i32 %98, i32* %140, align 4, !mcsema_real_eip !38
  %141 = load i64, i64* %138, align 8, !mcsema_real_eip !39
  %142 = add i64 %2, -176, !mcsema_real_eip !40
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !40
  store i64 %141, i64* %143, align 8, !mcsema_real_eip !40
  %144 = load i32, i32* %140, align 4, !mcsema_real_eip !41
  %145 = add i64 %2, -168, !mcsema_real_eip !42
  %146 = inttoptr i64 %145 to i32*
  store i32 %144, i32* %146, align 4, !mcsema_real_eip !42
  %147 = add i64 %2, -200, !mcsema_real_eip !43
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !43
  store i64 %77, i64* %148, align 8, !mcsema_real_eip !43
  %149 = add i64 %2, -208, !mcsema_real_eip !44
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !44
  store i64 %94, i64* %150, align 8, !mcsema_real_eip !44
  %151 = add i64 %2, -212, !mcsema_real_eip !45
  %152 = inttoptr i64 %151 to i32*
  store i32 1, i32* %152, align 4, !mcsema_real_eip !45
  %153 = add i64 %2, -216, !mcsema_real_eip !46
  %154 = inttoptr i64 %153 to i32*
  store i32 2, i32* %154, align 4, !mcsema_real_eip !46
  %155 = add i64 %2, -220, !mcsema_real_eip !47
  %156 = inttoptr i64 %155 to i32*
  store i32 %136, i32* %156, align 4, !mcsema_real_eip !47
  %157 = add i64 %2, -232, !mcsema_real_eip !48
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !48
  store i64 %135, i64* %158, align 8, !mcsema_real_eip !48
  %159 = add i64 %2, -240, !mcsema_real_eip !49
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !49
  store i64 %134, i64* %160, align 8, !mcsema_real_eip !49
  %161 = add i64 %2, -256, !mcsema_real_eip !50
  %162 = inttoptr i64 %161 to i64*, !mcsema_real_eip !50
  store i64 %111, i64* %162, align 8, !mcsema_real_eip !50
  %163 = tail call x86_64_sysvcc i64 @malloc(i64 12), !mcsema_real_eip !51
  %164 = add i64 %2, -248, !mcsema_real_eip !52
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !52
  store i64 %163, i64* %165, align 8, !mcsema_real_eip !52
  %166 = inttoptr i64 %142 to i32*
  %167 = load i32, i32* %166, align 4, !mcsema_real_eip !53
  %168 = inttoptr i64 %147 to i32**
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %169, align 4, !mcsema_real_eip !54
  %171 = inttoptr i64 %149 to i32**
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %172, align 4, !mcsema_real_eip !55
  %174 = load i64, i64* %162, align 8, !mcsema_real_eip !56
  %175 = inttoptr i64 %174 to i32*
  %176 = load i32, i32* %175, align 4, !mcsema_real_eip !57
  %177 = inttoptr i64 %157 to i32**
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %178, align 4, !mcsema_real_eip !58
  %180 = inttoptr i64 %159 to i32**
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %181, align 4, !mcsema_real_eip !59
  %183 = add i32 %170, %167
  %184 = add i32 %183, %173
  %185 = add i32 %184, %176
  %186 = add i32 %185, %179
  %187 = add i32 %186, %182
  %188 = inttoptr i64 %163 to i32*
  store i32 %187, i32* %188, align 4, !mcsema_real_eip !60
  %189 = add i64 %2, -172, !mcsema_real_eip !61
  %190 = inttoptr i64 %189 to i32*
  %191 = load i32, i32* %190, align 4, !mcsema_real_eip !61
  %192 = load i64, i64* %148, align 8, !mcsema_real_eip !62
  %193 = add i64 %192, 4, !mcsema_real_eip !63
  %194 = inttoptr i64 %193 to i32*
  %195 = load i32, i32* %194, align 4, !mcsema_real_eip !63
  %196 = load i64, i64* %150, align 8, !mcsema_real_eip !64
  %197 = add i64 %196, 4, !mcsema_real_eip !65
  %198 = inttoptr i64 %197 to i32*
  %199 = load i32, i32* %198, align 4, !mcsema_real_eip !65
  %200 = add i64 %174, 4, !mcsema_real_eip !66
  %201 = inttoptr i64 %200 to i32*
  %202 = load i32, i32* %201, align 4, !mcsema_real_eip !66
  %203 = load i64, i64* %158, align 8, !mcsema_real_eip !67
  %204 = add i64 %203, 4, !mcsema_real_eip !68
  %205 = inttoptr i64 %204 to i32*
  %206 = load i32, i32* %205, align 4, !mcsema_real_eip !68
  %207 = load i64, i64* %160, align 8, !mcsema_real_eip !69
  %208 = add i64 %207, 4, !mcsema_real_eip !70
  %209 = inttoptr i64 %208 to i32*
  %210 = load i32, i32* %209, align 4, !mcsema_real_eip !70
  %211 = add i32 %195, %191
  %212 = add i32 %211, %199
  %213 = add i32 %212, %202
  %214 = add i32 %213, %206
  %215 = add i32 %214, %210
  %216 = load i64, i64* %165, align 8, !mcsema_real_eip !71
  %217 = add i64 %216, 4, !mcsema_real_eip !72
  %218 = inttoptr i64 %217 to i32*
  store i32 %215, i32* %218, align 4, !mcsema_real_eip !72
  %219 = load i32, i32* %146, align 4, !mcsema_real_eip !73
  %220 = load i64, i64* %148, align 8, !mcsema_real_eip !74
  %221 = add i64 %220, 8, !mcsema_real_eip !75
  %222 = inttoptr i64 %221 to i32*
  %223 = load i32, i32* %222, align 4, !mcsema_real_eip !75
  %224 = add i32 %223, %219
  %225 = load i64, i64* %150, align 8, !mcsema_real_eip !76
  %226 = add i64 %225, 8, !mcsema_real_eip !77
  %227 = inttoptr i64 %226 to i32*
  %228 = load i32, i32* %227, align 4, !mcsema_real_eip !77
  %229 = add i32 %224, %228
  %230 = add i64 %174, 8, !mcsema_real_eip !78
  %231 = inttoptr i64 %230 to i32*
  %232 = load i32, i32* %231, align 4, !mcsema_real_eip !78
  %233 = load i64, i64* %158, align 8, !mcsema_real_eip !79
  %234 = add i64 %233, 8, !mcsema_real_eip !80
  %235 = inttoptr i64 %234 to i32*
  %236 = load i32, i32* %235, align 4, !mcsema_real_eip !80
  %237 = add i32 %236, %232
  %238 = load i64, i64* %160, align 8, !mcsema_real_eip !81
  %239 = add i64 %238, 8, !mcsema_real_eip !82
  %240 = inttoptr i64 %239 to i32*
  %241 = load i32, i32* %240, align 4, !mcsema_real_eip !82
  %242 = add i32 %237, %241
  %243 = zext i32 %242 to i64
  %244 = add i32 %229, %242
  %245 = zext i32 %244 to i64, !mcsema_real_eip !83
  %246 = load i64, i64* %165, align 8
  %247 = add i64 %246, 8, !mcsema_real_eip !84
  %248 = inttoptr i64 %247 to i32*
  store i32 %244, i32* %248, align 4, !mcsema_real_eip !84
  %249 = load i64, i64* %165, align 8
  %uadd84.i.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %133, i64 104)
  %250 = extractvalue { i64, i1 } %uadd84.i.i, 0
  %251 = xor i64 %250, %133, !mcsema_real_eip !85
  %252 = and i64 %251, 16, !mcsema_real_eip !85
  %253 = icmp ne i64 %252, 0, !mcsema_real_eip !85
  %254 = icmp slt i64 %250, 0
  %255 = icmp eq i64 %250, 0, !mcsema_real_eip !85
  %256 = add i64 %2, 9223372036854775544
  %257 = and i64 %251, %256, !mcsema_real_eip !85
  %258 = icmp slt i64 %257, 0
  %259 = trunc i64 %250 to i8, !mcsema_real_eip !85
  %260 = tail call i8 @llvm.ctpop.i8(i8 %259), !mcsema_real_eip !85
  %261 = and i8 %260, 1
  %262 = icmp eq i8 %261, 0
  %263 = extractvalue { i64, i1 } %uadd84.i.i, 1
  %264 = inttoptr i64 %250 to i64*, !mcsema_real_eip !86
  %265 = load i64, i64* %264, align 8
  %266 = add i64 %250, 8, !mcsema_real_eip !86
  %267 = inttoptr i64 %266 to i64*, !mcsema_real_eip !87
  %268 = load i64, i64* %267, align 8
  %269 = add i64 %250, 16, !mcsema_real_eip !87
  %270 = inttoptr i64 %269 to i64*, !mcsema_real_eip !88
  %271 = load i64, i64* %270, align 8
  %272 = add i64 %250, 24, !mcsema_real_eip !88
  %273 = inttoptr i64 %272 to i64*, !mcsema_real_eip !89
  %274 = load i64, i64* %273, align 8
  %275 = add i64 %250, 40
  store i64 %249, i64* %RAX.i, align 8, !mcsema_real_eip !90
  store i64 %265, i64* %RBX.i, align 8, !mcsema_real_eip !90
  store i64 %246, i64* %RCX.i, align 8, !mcsema_real_eip !90
  store i64 %77, i64* %RDX.i, align 8, !mcsema_real_eip !90
  store i64 %245, i64* %RSI.i, align 8, !mcsema_real_eip !90
  store i64 12, i64* %RDI.i, align 8, !mcsema_real_eip !90
  store i64 %275, i64* %RSP.i, align 8, !mcsema_real_eip !90
  store i64 %274, i64* %RBP.i, align 8, !mcsema_real_eip !90
  store i64 %243, i64* %R8.i, align 8, !mcsema_real_eip !90
  store i64 2, i64* %R9.i, align 8, !mcsema_real_eip !90
  store i64 %135, i64* %R10.i, align 8, !mcsema_real_eip !90
  store i64 %111, i64* %R11.i, align 8, !mcsema_real_eip !90
  store i64 %4, i64* %R12.i, align 8, !mcsema_real_eip !90
  store i64 %5, i64* %R13.i, align 8, !mcsema_real_eip !90
  store i64 %268, i64* %R14.i, align 8, !mcsema_real_eip !90
  store i64 %271, i64* %R15.i, align 8, !mcsema_real_eip !90
  store i64 %8, i64* %RIP.i, align 8, !mcsema_real_eip !90
  store i1 %263, i1* %CF.i, align 1, !mcsema_real_eip !90
  store i1 %262, i1* %PF.i, align 1, !mcsema_real_eip !90
  store i1 %253, i1* %AF.i, align 1, !mcsema_real_eip !90
  store i1 %255, i1* %ZF.i, align 1, !mcsema_real_eip !90
  store i1 %254, i1* %SF.i, align 1, !mcsema_real_eip !90
  store i1 %258, i1* %OF.i, align 1, !mcsema_real_eip !90
  store i1 %9, i1* %DF.i, align 1, !mcsema_real_eip !90
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* nonnull %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false), !mcsema_real_eip !90
  store i1 %12, i1* %FPU_B.i, align 1, !mcsema_real_eip !90
  store i1 %13, i1* %FPU_C3.i, align 1, !mcsema_real_eip !90
  store i3 %14, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !90
  store i1 %15, i1* %FPU_C2.i, align 1, !mcsema_real_eip !90
  store i1 %16, i1* %FPU_C1.i, align 1, !mcsema_real_eip !90
  store i1 %17, i1* %FPU_C0.i, align 1, !mcsema_real_eip !90
  store i1 %18, i1* %FPU_ES.i, align 1, !mcsema_real_eip !90
  store i1 %19, i1* %FPU_SF.i, align 1, !mcsema_real_eip !90
  store i1 %20, i1* %FPU_PE.i, align 1, !mcsema_real_eip !90
  store i1 %21, i1* %FPU_UE.i, align 1, !mcsema_real_eip !90
  store i1 %22, i1* %FPU_OE.i, align 1, !mcsema_real_eip !90
  store i1 %23, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !90
  store i1 %24, i1* %FPU_DE.i, align 1, !mcsema_real_eip !90
  store i1 %25, i1* %FPU_IE.i, align 1, !mcsema_real_eip !90
  store i1 %26, i1* %FPU_X.i, align 1, !mcsema_real_eip !90
  store i2 %27, i2* %FPU_RC.i, align 1, !mcsema_real_eip !90
  store i2 %28, i2* %FPU_PC.i, align 1, !mcsema_real_eip !90
  store i1 %29, i1* %FPU_PM.i, align 1, !mcsema_real_eip !90
  store i1 %30, i1* %FPU_UM.i, align 1, !mcsema_real_eip !90
  store i1 %31, i1* %FPU_OM.i, align 1, !mcsema_real_eip !90
  store i1 %32, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !90
  store i1 %33, i1* %FPU_DM.i, align 1, !mcsema_real_eip !90
  store i1 %34, i1* %FPU_IM.i, align 1, !mcsema_real_eip !90
  store i64 %37, i64* %36, align 4
  store i16 %38, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !90
  store i64 %39, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !90
  store i16 %40, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !90
  store i64 %41, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !90
  store i128 %42, i128* %XMM0.i, align 1, !mcsema_real_eip !90
  store i128 %43, i128* %XMM1.i, align 1, !mcsema_real_eip !90
  store i128 %44, i128* %XMM2.i, align 1, !mcsema_real_eip !90
  store i128 %45, i128* %XMM3.i, align 1, !mcsema_real_eip !90
  store i128 %46, i128* %XMM4.i, align 1, !mcsema_real_eip !90
  store i128 %47, i128* %XMM5.i, align 1, !mcsema_real_eip !90
  store i128 %48, i128* %XMM6.i, align 1, !mcsema_real_eip !90
  store i128 %49, i128* %XMM7.i, align 1, !mcsema_real_eip !90
  store i128 %50, i128* %XMM8.i, align 1, !mcsema_real_eip !90
  store i128 %51, i128* %XMM9.i, align 1, !mcsema_real_eip !90
  store i128 %52, i128* %XMM10.i, align 1, !mcsema_real_eip !90
  store i128 %53, i128* %XMM11.i, align 1, !mcsema_real_eip !90
  store i128 %54, i128* %XMM12.i, align 1, !mcsema_real_eip !90
  store i128 %55, i128* %XMM13.i, align 1, !mcsema_real_eip !90
  store i128 %56, i128* %XMM14.i, align 1, !mcsema_real_eip !90
  store i128 %57, i128* %XMM15.i, align 1, !mcsema_real_eip !90
  store i64 %58, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !90
  store i64 %59, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !90
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %11, i32 128, i32 4, i1 false), !mcsema_real_eip !31
  %276 = add i64 %274, -32, !mcsema_real_eip !91
  %277 = inttoptr i64 %276 to i64*, !mcsema_real_eip !91
  store i64 %249, i64* %277, align 8, !mcsema_real_eip !91
  %278 = inttoptr i64 %249 to i32*
  %279 = load i32, i32* %278, align 4, !mcsema_real_eip !92
  %280 = add i64 %249, 4, !mcsema_real_eip !93
  %281 = inttoptr i64 %280 to i32*
  %282 = load i32, i32* %281, align 4, !mcsema_real_eip !93
  %283 = add i32 %282, %279
  %284 = add i64 %249, 8, !mcsema_real_eip !94
  %285 = inttoptr i64 %284 to i32*
  %286 = load i32, i32* %285, align 4, !mcsema_real_eip !94
  %287 = add i32 %283, %286
  %288 = zext i32 %287 to i64, !mcsema_real_eip !94
  %uadd210.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %275, i64 112)
  %289 = extractvalue { i64, i1 } %uadd210.i, 0
  %290 = xor i64 %289, %275, !mcsema_real_eip !95
  %291 = and i64 %290, 16
  %292 = icmp eq i64 %291, 0
  %293 = icmp slt i64 %289, 0
  %294 = icmp eq i64 %289, 0, !mcsema_real_eip !95
  %295 = add i64 %250, -9223372036854775768
  %296 = and i64 %290, %295, !mcsema_real_eip !95
  %297 = icmp slt i64 %296, 0
  %298 = trunc i64 %289 to i8, !mcsema_real_eip !95
  %299 = tail call i8 @llvm.ctpop.i8(i8 %298), !mcsema_real_eip !95
  %300 = and i8 %299, 1
  %301 = icmp eq i8 %300, 0
  %302 = extractvalue { i64, i1 } %uadd210.i, 1
  %303 = inttoptr i64 %289 to i64*, !mcsema_real_eip !96
  %304 = load i64, i64* %303, align 8, !mcsema_real_eip !96
  %305 = add i64 %289, 16, !mcsema_real_eip !97
  store i64 %288, i64* %RAX.i, align 8, !mcsema_real_eip !97
  store i64 %265, i64* %RBX.i, align 8, !mcsema_real_eip !97
  store i64 %246, i64* %RCX.i, align 8, !mcsema_real_eip !97
  store i64 %77, i64* %RDX.i, align 8, !mcsema_real_eip !97
  store i64 %288, i64* %RSI.i, align 8, !mcsema_real_eip !97
  store i64 12, i64* %RDI.i, align 8, !mcsema_real_eip !97
  store i64 %305, i64* %RSP.i, align 8, !mcsema_real_eip !97
  store i64 %304, i64* %RBP.i, align 8, !mcsema_real_eip !97
  store i64 %243, i64* %R8.i, align 8, !mcsema_real_eip !97
  store i64 2, i64* %R9.i, align 8, !mcsema_real_eip !97
  store i64 %135, i64* %R10.i, align 8, !mcsema_real_eip !97
  store i64 %111, i64* %R11.i, align 8, !mcsema_real_eip !97
  store i64 %4, i64* %R12.i, align 8, !mcsema_real_eip !97
  store i64 %5, i64* %R13.i, align 8, !mcsema_real_eip !97
  store i64 %268, i64* %R14.i, align 8, !mcsema_real_eip !97
  store i64 %271, i64* %R15.i, align 8, !mcsema_real_eip !97
  store i64 %8, i64* %RIP.i, align 8, !mcsema_real_eip !97
  store i1 %302, i1* %CF.i, align 1, !mcsema_real_eip !97
  store i1 %301, i1* %PF.i, align 1, !mcsema_real_eip !97
  store i1 %292, i1* %AF.i, align 1, !mcsema_real_eip !97
  store i1 %294, i1* %ZF.i, align 1, !mcsema_real_eip !97
  store i1 %293, i1* %SF.i, align 1, !mcsema_real_eip !97
  store i1 %297, i1* %OF.i, align 1, !mcsema_real_eip !97
  store i1 %9, i1* %DF.i, align 1, !mcsema_real_eip !97
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !97
  store i1 %12, i1* %FPU_B.i, align 1, !mcsema_real_eip !97
  store i1 %13, i1* %FPU_C3.i, align 1, !mcsema_real_eip !97
  store i3 %14, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !97
  store i1 %15, i1* %FPU_C2.i, align 1, !mcsema_real_eip !97
  store i1 %16, i1* %FPU_C1.i, align 1, !mcsema_real_eip !97
  store i1 %17, i1* %FPU_C0.i, align 1, !mcsema_real_eip !97
  store i1 %18, i1* %FPU_ES.i, align 1, !mcsema_real_eip !97
  store i1 %19, i1* %FPU_SF.i, align 1, !mcsema_real_eip !97
  store i1 %20, i1* %FPU_PE.i, align 1, !mcsema_real_eip !97
  store i1 %21, i1* %FPU_UE.i, align 1, !mcsema_real_eip !97
  store i1 %22, i1* %FPU_OE.i, align 1, !mcsema_real_eip !97
  store i1 %23, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !97
  store i1 %24, i1* %FPU_DE.i, align 1, !mcsema_real_eip !97
  store i1 %25, i1* %FPU_IE.i, align 1, !mcsema_real_eip !97
  store i1 %26, i1* %FPU_X.i, align 1, !mcsema_real_eip !97
  store i2 %27, i2* %FPU_RC.i, align 1, !mcsema_real_eip !97
  store i2 %28, i2* %FPU_PC.i, align 1, !mcsema_real_eip !97
  store i1 %29, i1* %FPU_PM.i, align 1, !mcsema_real_eip !97
  store i1 %30, i1* %FPU_UM.i, align 1, !mcsema_real_eip !97
  store i1 %31, i1* %FPU_OM.i, align 1, !mcsema_real_eip !97
  store i1 %32, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !97
  store i1 %33, i1* %FPU_DM.i, align 1, !mcsema_real_eip !97
  store i1 %34, i1* %FPU_IM.i, align 1, !mcsema_real_eip !97
  store i64 %37, i64* %36, align 4
  store i16 %38, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !97
  store i64 %39, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !97
  store i16 %40, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !97
  store i64 %41, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !97
  store i128 %42, i128* %XMM0.i, align 1, !mcsema_real_eip !97
  store i128 %43, i128* %XMM1.i, align 1, !mcsema_real_eip !97
  store i128 %44, i128* %XMM2.i, align 1, !mcsema_real_eip !97
  store i128 %45, i128* %XMM3.i, align 1, !mcsema_real_eip !97
  store i128 %46, i128* %XMM4.i, align 1, !mcsema_real_eip !97
  store i128 %47, i128* %XMM5.i, align 1, !mcsema_real_eip !97
  store i128 %48, i128* %XMM6.i, align 1, !mcsema_real_eip !97
  store i128 %49, i128* %XMM7.i, align 1, !mcsema_real_eip !97
  store i128 %50, i128* %XMM8.i, align 1, !mcsema_real_eip !97
  store i128 %51, i128* %XMM9.i, align 1, !mcsema_real_eip !97
  store i128 %52, i128* %XMM10.i, align 1, !mcsema_real_eip !97
  store i128 %53, i128* %XMM11.i, align 1, !mcsema_real_eip !97
  store i128 %54, i128* %XMM12.i, align 1, !mcsema_real_eip !97
  store i128 %55, i128* %XMM13.i, align 1, !mcsema_real_eip !97
  store i128 %56, i128* %XMM14.i, align 1, !mcsema_real_eip !97
  store i128 %57, i128* %XMM15.i, align 1, !mcsema_real_eip !97
  store i64 %58, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !97
  store i64 %59, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !97
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

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 256, [12 x i8] c"\09pushq\09%rbp\00"}
!4 = !{i64 260, [17 x i8] c"\09subq\09$112, %rsp\00"}
!5 = !{i64 271, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!6 = !{i64 278, [21 x i8] c"\09movl\09$10, -16(%rbp)\00"}
!7 = !{i64 285, [21 x i8] c"\09movl\09$10, -12(%rbp)\00"}
!8 = !{i64 292, [20 x i8] c"\09movl\09$10, -8(%rbp)\00"}
!9 = !{i64 299, [9 x i8] c"\09callq\090\00"}
!10 = !{i64 325, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!11 = !{i64 333, [17 x i8] c"\09movl\09$5, (%rax)\00"}
!12 = !{i64 339, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!13 = !{i64 343, [18 x i8] c"\09movl\09$5, 4(%rax)\00"}
!14 = !{i64 350, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!15 = !{i64 354, [18 x i8] c"\09movl\09$5, 8(%rax)\00"}
!16 = !{i64 369, [22 x i8] c"\09movq\09-16(%rbp), %rsi\00"}
!17 = !{i64 373, [22 x i8] c"\09movq\09%rsi, -48(%rbp)\00"}
!18 = !{i64 377, [22 x i8] c"\09movl\09-8(%rbp), %r10d\00"}
!19 = !{i64 381, [23 x i8] c"\09movl\09%r10d, -40(%rbp)\00"}
!20 = !{i64 393, [22 x i8] c"\09movq\09%rdi, -56(%rbp)\00"}
!21 = !{i64 407, [22 x i8] c"\09movq\09%rdx, -64(%rbp)\00"}
!22 = !{i64 414, [22 x i8] c"\09movl\09%ecx, -68(%rbp)\00"}
!23 = !{i64 420, [17 x i8] c"\09movl\09$3, (%rsp)\00"}
!24 = !{i64 427, [19 x i8] c"\09movq\09(%r11), %rax\00"}
!25 = !{i64 430, [20 x i8] c"\09movq\09%rax, 8(%rsp)\00"}
!26 = !{i64 435, [21 x i8] c"\09movl\098(%r11), %r10d\00"}
!27 = !{i64 439, [22 x i8] c"\09movl\09%r10d, 16(%rsp)\00"}
!28 = !{i64 444, [21 x i8] c"\09movq\09%r11, 24(%rsp)\00"}
!29 = !{i64 449, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!30 = !{i64 453, [21 x i8] c"\09movq\09%rax, 32(%rsp)\00"}
!31 = !{i64 458, [12 x i8] c"\09callq\09-463\00"}
!32 = !{i64 4, [12 x i8] c"\09pushq\09%r15\00"}
!33 = !{i64 6, [12 x i8] c"\09pushq\09%r14\00"}
!34 = !{i64 8, [12 x i8] c"\09pushq\09%rbx\00"}
!35 = !{i64 13, [21 x i8] c"\09movq\0948(%rbp), %rax\00"}
!36 = !{i64 25, [21 x i8] c"\09movl\0916(%rbp), %ebx\00"}
!37 = !{i64 37, [22 x i8] c"\09movq\09%rdi, -56(%rbp)\00"}
!38 = !{i64 41, [22 x i8] c"\09movl\09%esi, -48(%rbp)\00"}
!39 = !{i64 44, [22 x i8] c"\09movq\09-56(%rbp), %rdi\00"}
!40 = !{i64 48, [22 x i8] c"\09movq\09%rdi, -40(%rbp)\00"}
!41 = !{i64 52, [22 x i8] c"\09movl\09-48(%rbp), %esi\00"}
!42 = !{i64 55, [22 x i8] c"\09movl\09%esi, -32(%rbp)\00"}
!43 = !{i64 58, [22 x i8] c"\09movq\09%rdx, -64(%rbp)\00"}
!44 = !{i64 62, [22 x i8] c"\09movq\09%rcx, -72(%rbp)\00"}
!45 = !{i64 66, [22 x i8] c"\09movl\09%r8d, -76(%rbp)\00"}
!46 = !{i64 70, [22 x i8] c"\09movl\09%r9d, -80(%rbp)\00"}
!47 = !{i64 74, [22 x i8] c"\09movl\09%ebx, -84(%rbp)\00"}
!48 = !{i64 77, [22 x i8] c"\09movq\09%r10, -96(%rbp)\00"}
!49 = !{i64 81, [23 x i8] c"\09movq\09%rax, -104(%rbp)\00"}
!50 = !{i64 88, [23 x i8] c"\09movq\09%r11, -120(%rbp)\00"}
!51 = !{i64 92, [9 x i8] c"\09callq\090\00"}
!52 = !{i64 97, [23 x i8] c"\09movq\09%rax, -112(%rbp)\00"}
!53 = !{i64 101, [22 x i8] c"\09movl\09-40(%rbp), %esi\00"}
!54 = !{i64 108, [19 x i8] c"\09addl\09(%rax), %esi\00"}
!55 = !{i64 114, [19 x i8] c"\09addl\09(%rax), %esi\00"}
!56 = !{i64 116, [23 x i8] c"\09movq\09-120(%rbp), %rax\00"}
!57 = !{i64 120, [19 x i8] c"\09movl\09(%rax), %r8d\00"}
!58 = !{i64 127, [19 x i8] c"\09addl\09(%rcx), %r8d\00"}
!59 = !{i64 134, [19 x i8] c"\09addl\09(%rcx), %r8d\00"}
!60 = !{i64 144, [19 x i8] c"\09movl\09%esi, (%rcx)\00"}
!61 = !{i64 146, [22 x i8] c"\09movl\09-36(%rbp), %esi\00"}
!62 = !{i64 149, [22 x i8] c"\09movq\09-64(%rbp), %rcx\00"}
!63 = !{i64 153, [20 x i8] c"\09addl\094(%rcx), %esi\00"}
!64 = !{i64 156, [22 x i8] c"\09movq\09-72(%rbp), %rcx\00"}
!65 = !{i64 160, [20 x i8] c"\09addl\094(%rcx), %esi\00"}
!66 = !{i64 163, [20 x i8] c"\09movl\094(%rax), %r8d\00"}
!67 = !{i64 167, [22 x i8] c"\09movq\09-96(%rbp), %rcx\00"}
!68 = !{i64 171, [20 x i8] c"\09addl\094(%rcx), %r8d\00"}
!69 = !{i64 175, [23 x i8] c"\09movq\09-104(%rbp), %rcx\00"}
!70 = !{i64 179, [20 x i8] c"\09addl\094(%rcx), %r8d\00"}
!71 = !{i64 186, [23 x i8] c"\09movq\09-112(%rbp), %rcx\00"}
!72 = !{i64 190, [20 x i8] c"\09movl\09%esi, 4(%rcx)\00"}
!73 = !{i64 193, [22 x i8] c"\09movl\09-32(%rbp), %esi\00"}
!74 = !{i64 196, [22 x i8] c"\09movq\09-64(%rbp), %rcx\00"}
!75 = !{i64 200, [20 x i8] c"\09addl\098(%rcx), %esi\00"}
!76 = !{i64 203, [22 x i8] c"\09movq\09-72(%rbp), %rcx\00"}
!77 = !{i64 207, [20 x i8] c"\09addl\098(%rcx), %esi\00"}
!78 = !{i64 210, [20 x i8] c"\09movl\098(%rax), %r8d\00"}
!79 = !{i64 214, [22 x i8] c"\09movq\09-96(%rbp), %rcx\00"}
!80 = !{i64 218, [20 x i8] c"\09addl\098(%rcx), %r8d\00"}
!81 = !{i64 222, [23 x i8] c"\09movq\09-104(%rbp), %rcx\00"}
!82 = !{i64 226, [20 x i8] c"\09addl\098(%rcx), %r8d\00"}
!83 = !{i64 230, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!84 = !{i64 237, [20 x i8] c"\09movl\09%esi, 8(%rcx)\00"}
!85 = !{i64 244, [17 x i8] c"\09addq\09$104, %rsp\00"}
!86 = !{i64 248, [11 x i8] c"\09popq\09%rbx\00"}
!87 = !{i64 249, [11 x i8] c"\09popq\09%r14\00"}
!88 = !{i64 251, [11 x i8] c"\09popq\09%r15\00"}
!89 = !{i64 253, [11 x i8] c"\09popq\09%rbp\00"}
!90 = !{i64 254, [6 x i8] c"\09retq\00"}
!91 = !{i64 463, [22 x i8] c"\09movq\09%rax, -32(%rbp)\00"}
!92 = !{i64 471, [19 x i8] c"\09movl\09(%rax), %esi\00"}
!93 = !{i64 477, [20 x i8] c"\09addl\094(%rax), %esi\00"}
!94 = !{i64 484, [20 x i8] c"\09addl\098(%rax), %esi\00"}
!95 = !{i64 489, [17 x i8] c"\09addq\09$112, %rsp\00"}
!96 = !{i64 493, [11 x i8] c"\09popq\09%rbp\00"}
!97 = !{i64 494, [6 x i8] c"\09retq\00"}
