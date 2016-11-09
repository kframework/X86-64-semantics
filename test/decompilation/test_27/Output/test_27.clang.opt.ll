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
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !3
  %42 = load i11, i11* %FPU_FOPCODE.i, align 1
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
  %63 = add i64 %2, -120
  %64 = xor i64 %63, %61, !mcsema_real_eip !4
  %65 = and i64 %64, 16
  %66 = icmp eq i64 %65, 0
  %67 = trunc i64 %63 to i8, !mcsema_real_eip !4
  %68 = tail call i8 @llvm.ctpop.i8(i8 %67), !mcsema_real_eip !4
  %69 = and i8 %68, 1
  %70 = icmp eq i8 %69, 0
  %71 = icmp eq i64 %63, 0, !mcsema_real_eip !4
  %72 = icmp slt i64 %63, 0
  %73 = icmp ult i64 %61, 112, !mcsema_real_eip !4
  %74 = and i64 %64, %61, !mcsema_real_eip !4
  %75 = icmp slt i64 %74, 0
  %76 = add i64 %2, -12, !mcsema_real_eip !5
  %77 = inttoptr i64 %76 to i32*
  store i32 0, i32* %77, align 4, !mcsema_real_eip !5
  %78 = add i64 %2, -24
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !6
  %80 = inttoptr i64 %78 to i32*
  store i32 10, i32* %80, align 4, !mcsema_real_eip !6
  %81 = add i64 %2, -20, !mcsema_real_eip !7
  %82 = inttoptr i64 %81 to i32*
  store i32 10, i32* %82, align 4, !mcsema_real_eip !7
  %83 = add i64 %2, -16, !mcsema_real_eip !8
  %84 = inttoptr i64 %83 to i32*
  store i32 10, i32* %84, align 4, !mcsema_real_eip !8
  %85 = tail call x86_64_sysvcc i64 @malloc(i64 12), !mcsema_real_eip !9
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
  %95 = load i64, i64* %87, align 8
  %96 = load i64, i64* %79, align 8, !mcsema_real_eip !16
  %97 = add i64 %2, -56, !mcsema_real_eip !17
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !17
  store i64 %96, i64* %98, align 8, !mcsema_real_eip !17
  %99 = load i32, i32* %84, align 4, !mcsema_real_eip !18
  %100 = add i64 %2, -48, !mcsema_real_eip !19
  %101 = inttoptr i64 %100 to i32*
  store i32 %99, i32* %101, align 4, !mcsema_real_eip !19
  %102 = load i64, i64* %98, align 8
  %103 = zext i32 %99 to i64
  %104 = add i64 %2, -64, !mcsema_real_eip !20
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !20
  store i64 %78, i64* %105, align 8, !mcsema_real_eip !20
  %106 = add i64 %2, -72, !mcsema_real_eip !21
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !21
  store i64 %95, i64* %107, align 8, !mcsema_real_eip !21
  %108 = add i64 %2, -76, !mcsema_real_eip !22
  %109 = inttoptr i64 %108 to i32*
  store i32 3, i32* %109, align 4, !mcsema_real_eip !22
  %110 = inttoptr i64 %63 to i32*
  store i32 3, i32* %110, align 4, !mcsema_real_eip !23
  %111 = load i64, i64* %79, align 8, !mcsema_real_eip !24
  %112 = add i64 %2, -112, !mcsema_real_eip !25
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !25
  store i64 %111, i64* %113, align 8, !mcsema_real_eip !25
  %114 = load i32, i32* %84, align 4, !mcsema_real_eip !26
  %115 = zext i32 %114 to i64, !mcsema_real_eip !26
  %116 = add i64 %2, -104, !mcsema_real_eip !27
  %117 = inttoptr i64 %116 to i32*
  store i32 %114, i32* %117, align 4, !mcsema_real_eip !27
  %118 = add i64 %2, -96, !mcsema_real_eip !28
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !28
  store i64 %78, i64* %119, align 8, !mcsema_real_eip !28
  %120 = load i64, i64* %107, align 8, !mcsema_real_eip !29
  %121 = add i64 %2, -88, !mcsema_real_eip !30
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !30
  store i64 %120, i64* %122, align 8, !mcsema_real_eip !30
  %123 = add i64 %2, -128
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !31
  store i64 -4981261766360305936, i64* %124, align 8, !mcsema_real_eip !31
  store i64 %120, i64* %RAX.i, align 8, !mcsema_real_eip !31
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !31
  store i64 %95, i64* %RCX.i, align 8, !mcsema_real_eip !31
  store i64 %78, i64* %RDX.i, align 8, !mcsema_real_eip !31
  store i64 %103, i64* %RSI.i, align 8, !mcsema_real_eip !31
  store i64 %102, i64* %RDI.i, align 8, !mcsema_real_eip !31
  store i64 %123, i64* %RSP.i, align 8, !mcsema_real_eip !31
  store i64 %61, i64* %RBP.i, align 8, !mcsema_real_eip !31
  %125 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 1, i64 2>, <2 x i64>* %125, align 8
  store i64 %115, i64* %R10.i, align 8, !mcsema_real_eip !31
  store i64 %78, i64* %R11.i, align 8, !mcsema_real_eip !31
  store i64 %4, i64* %R12.i, align 8, !mcsema_real_eip !31
  store i64 %5, i64* %R13.i, align 8, !mcsema_real_eip !31
  store i64 %6, i64* %R14.i, align 8, !mcsema_real_eip !31
  store i64 %7, i64* %R15.i, align 8, !mcsema_real_eip !31
  store i64 %8, i64* %RIP.i, align 8, !mcsema_real_eip !31
  store i1 %73, i1* %CF.i, align 1, !mcsema_real_eip !31
  store i1 %70, i1* %PF.i, align 1, !mcsema_real_eip !31
  store i1 %66, i1* %AF.i, align 1, !mcsema_real_eip !31
  store i1 %71, i1* %ZF.i, align 1, !mcsema_real_eip !31
  store i1 %72, i1* %SF.i, align 1, !mcsema_real_eip !31
  store i1 %75, i1* %OF.i, align 1, !mcsema_real_eip !31
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
  store i11 %42, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !31
  store i128 %43, i128* %XMM0.i, align 1, !mcsema_real_eip !31
  store i128 %44, i128* %XMM1.i, align 1, !mcsema_real_eip !31
  store i128 %45, i128* %XMM2.i, align 1, !mcsema_real_eip !31
  store i128 %46, i128* %XMM3.i, align 1, !mcsema_real_eip !31
  store i128 %47, i128* %XMM4.i, align 1, !mcsema_real_eip !31
  store i128 %48, i128* %XMM5.i, align 1, !mcsema_real_eip !31
  store i128 %49, i128* %XMM6.i, align 1, !mcsema_real_eip !31
  store i128 %50, i128* %XMM7.i, align 1, !mcsema_real_eip !31
  store i128 %51, i128* %XMM8.i, align 1, !mcsema_real_eip !31
  store i128 %52, i128* %XMM9.i, align 1, !mcsema_real_eip !31
  store i128 %53, i128* %XMM10.i, align 1, !mcsema_real_eip !31
  store i128 %54, i128* %XMM11.i, align 1, !mcsema_real_eip !31
  store i128 %55, i128* %XMM12.i, align 1, !mcsema_real_eip !31
  store i128 %56, i128* %XMM13.i, align 1, !mcsema_real_eip !31
  store i128 %57, i128* %XMM14.i, align 1, !mcsema_real_eip !31
  store i128 %58, i128* %XMM15.i, align 1, !mcsema_real_eip !31
  store i64 %59, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !31
  store i64 %60, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !31
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast.i, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false)
  %126 = add i64 %2, -136
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !2
  store i64 %61, i64* %127, align 8, !mcsema_real_eip !2
  %128 = add i64 %2, -144
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !32
  store i64 %6, i64* %129, align 8, !mcsema_real_eip !32
  %130 = add i64 %2, -152
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !33
  store i64 %1, i64* %131, align 8, !mcsema_real_eip !33
  %132 = add i64 %2, -248
  %133 = load i64, i64* %122, align 8, !mcsema_real_eip !34
  %134 = load i64, i64* %119, align 8
  %135 = load i32, i32* %110, align 4, !mcsema_real_eip !35
  %136 = add i64 %2, -184, !mcsema_real_eip !36
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !36
  store i64 %102, i64* %137, align 8, !mcsema_real_eip !36
  %138 = add i64 %2, -176, !mcsema_real_eip !37
  %139 = inttoptr i64 %138 to i32*
  store i32 %99, i32* %139, align 4, !mcsema_real_eip !37
  %140 = load i64, i64* %137, align 8, !mcsema_real_eip !38
  %141 = add i64 %2, -168, !mcsema_real_eip !39
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !39
  store i64 %140, i64* %142, align 8, !mcsema_real_eip !39
  %143 = load i32, i32* %139, align 4, !mcsema_real_eip !40
  %144 = add i64 %2, -160, !mcsema_real_eip !41
  %145 = inttoptr i64 %144 to i32*
  store i32 %143, i32* %145, align 4, !mcsema_real_eip !41
  %146 = add i64 %2, -192, !mcsema_real_eip !42
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !42
  store i64 %78, i64* %147, align 8, !mcsema_real_eip !42
  %148 = add i64 %2, -200, !mcsema_real_eip !43
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !43
  store i64 %95, i64* %149, align 8, !mcsema_real_eip !43
  %150 = add i64 %2, -204, !mcsema_real_eip !44
  %151 = inttoptr i64 %150 to i32*
  store i32 1, i32* %151, align 4, !mcsema_real_eip !44
  %152 = add i64 %2, -208, !mcsema_real_eip !45
  %153 = inttoptr i64 %152 to i32*
  store i32 2, i32* %153, align 4, !mcsema_real_eip !45
  %154 = add i64 %2, -212, !mcsema_real_eip !46
  %155 = inttoptr i64 %154 to i32*
  store i32 %135, i32* %155, align 4, !mcsema_real_eip !46
  %156 = add i64 %2, -224, !mcsema_real_eip !47
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !47
  store i64 %134, i64* %157, align 8, !mcsema_real_eip !47
  %158 = add i64 %2, -232, !mcsema_real_eip !48
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !48
  store i64 %133, i64* %159, align 8, !mcsema_real_eip !48
  %160 = inttoptr i64 %132 to i64*, !mcsema_real_eip !49
  store i64 %112, i64* %160, align 8, !mcsema_real_eip !49
  %161 = tail call x86_64_sysvcc i64 @malloc(i64 12), !mcsema_real_eip !50
  %162 = add i64 %2, -240, !mcsema_real_eip !51
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !51
  store i64 %161, i64* %163, align 8, !mcsema_real_eip !51
  %164 = inttoptr i64 %141 to i32*
  %165 = load i32, i32* %164, align 4, !mcsema_real_eip !52
  %166 = inttoptr i64 %146 to i32**
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %167, align 4, !mcsema_real_eip !53
  %169 = inttoptr i64 %148 to i32**
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %170, align 4, !mcsema_real_eip !54
  %172 = load i64, i64* %160, align 8, !mcsema_real_eip !55
  %173 = inttoptr i64 %172 to i32*
  %174 = load i32, i32* %173, align 4, !mcsema_real_eip !56
  %175 = inttoptr i64 %156 to i32**
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %176, align 4, !mcsema_real_eip !57
  %178 = inttoptr i64 %158 to i32**
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %179, align 4, !mcsema_real_eip !58
  %181 = add i32 %168, %165
  %182 = add i32 %181, %171
  %183 = add i32 %182, %174
  %184 = add i32 %183, %177
  %185 = add i32 %184, %180
  %186 = inttoptr i64 %161 to i32*
  store i32 %185, i32* %186, align 4, !mcsema_real_eip !59
  %187 = add i64 %2, -164, !mcsema_real_eip !60
  %188 = inttoptr i64 %187 to i32*
  %189 = load i32, i32* %188, align 4, !mcsema_real_eip !60
  %190 = load i64, i64* %147, align 8, !mcsema_real_eip !61
  %191 = add i64 %190, 4, !mcsema_real_eip !62
  %192 = inttoptr i64 %191 to i32*
  %193 = load i32, i32* %192, align 4, !mcsema_real_eip !62
  %194 = load i64, i64* %149, align 8, !mcsema_real_eip !63
  %195 = add i64 %194, 4, !mcsema_real_eip !64
  %196 = inttoptr i64 %195 to i32*
  %197 = load i32, i32* %196, align 4, !mcsema_real_eip !64
  %198 = add i64 %172, 4, !mcsema_real_eip !65
  %199 = inttoptr i64 %198 to i32*
  %200 = load i32, i32* %199, align 4, !mcsema_real_eip !65
  %201 = load i64, i64* %157, align 8, !mcsema_real_eip !66
  %202 = add i64 %201, 4, !mcsema_real_eip !67
  %203 = inttoptr i64 %202 to i32*
  %204 = load i32, i32* %203, align 4, !mcsema_real_eip !67
  %205 = load i64, i64* %159, align 8, !mcsema_real_eip !68
  %206 = add i64 %205, 4, !mcsema_real_eip !69
  %207 = inttoptr i64 %206 to i32*
  %208 = load i32, i32* %207, align 4, !mcsema_real_eip !69
  %209 = add i32 %193, %189
  %210 = add i32 %209, %197
  %211 = add i32 %210, %200
  %212 = add i32 %211, %204
  %213 = add i32 %212, %208
  %214 = load i64, i64* %163, align 8, !mcsema_real_eip !70
  %215 = add i64 %214, 4, !mcsema_real_eip !71
  %216 = inttoptr i64 %215 to i32*
  store i32 %213, i32* %216, align 4, !mcsema_real_eip !71
  %217 = load i32, i32* %145, align 4, !mcsema_real_eip !72
  %218 = load i64, i64* %147, align 8, !mcsema_real_eip !73
  %219 = add i64 %218, 8, !mcsema_real_eip !74
  %220 = inttoptr i64 %219 to i32*
  %221 = load i32, i32* %220, align 4, !mcsema_real_eip !74
  %222 = add i32 %221, %217
  %223 = load i64, i64* %149, align 8, !mcsema_real_eip !75
  %224 = add i64 %223, 8, !mcsema_real_eip !76
  %225 = inttoptr i64 %224 to i32*
  %226 = load i32, i32* %225, align 4, !mcsema_real_eip !76
  %227 = add i32 %222, %226
  %228 = add i64 %172, 8, !mcsema_real_eip !77
  %229 = inttoptr i64 %228 to i32*
  %230 = load i32, i32* %229, align 4, !mcsema_real_eip !77
  %231 = load i64, i64* %157, align 8, !mcsema_real_eip !78
  %232 = add i64 %231, 8, !mcsema_real_eip !79
  %233 = inttoptr i64 %232 to i32*
  %234 = load i32, i32* %233, align 4, !mcsema_real_eip !79
  %235 = add i32 %234, %230
  %236 = load i64, i64* %159, align 8, !mcsema_real_eip !80
  %237 = add i64 %236, 8, !mcsema_real_eip !81
  %238 = inttoptr i64 %237 to i32*
  %239 = load i32, i32* %238, align 4, !mcsema_real_eip !81
  %240 = add i32 %235, %239
  %241 = zext i32 %240 to i64
  %242 = add i32 %227, %240
  %243 = zext i32 %242 to i64, !mcsema_real_eip !82
  %244 = load i64, i64* %163, align 8
  %245 = add i64 %244, 8, !mcsema_real_eip !83
  %246 = inttoptr i64 %245 to i32*
  store i32 %242, i32* %246, align 4, !mcsema_real_eip !83
  %247 = load i64, i64* %163, align 8
  %uadd85.i.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %132, i64 96)
  %248 = extractvalue { i64, i1 } %uadd85.i.i, 0
  %249 = xor i64 %248, %132, !mcsema_real_eip !84
  %250 = and i64 %249, 16, !mcsema_real_eip !84
  %251 = icmp ne i64 %250, 0, !mcsema_real_eip !84
  %252 = icmp slt i64 %248, 0
  %253 = icmp eq i64 %248, 0, !mcsema_real_eip !84
  %254 = add i64 %2, 9223372036854775560
  %255 = and i64 %249, %254, !mcsema_real_eip !84
  %256 = icmp slt i64 %255, 0
  %257 = trunc i64 %248 to i8, !mcsema_real_eip !84
  %258 = tail call i8 @llvm.ctpop.i8(i8 %257), !mcsema_real_eip !84
  %259 = and i8 %258, 1
  %260 = icmp eq i8 %259, 0
  %261 = extractvalue { i64, i1 } %uadd85.i.i, 1
  %262 = inttoptr i64 %248 to i64*, !mcsema_real_eip !85
  %263 = load i64, i64* %262, align 8
  %264 = add i64 %248, 8, !mcsema_real_eip !85
  %265 = inttoptr i64 %264 to i64*, !mcsema_real_eip !86
  %266 = load i64, i64* %265, align 8
  %267 = add i64 %248, 16, !mcsema_real_eip !86
  %268 = inttoptr i64 %267 to i64*, !mcsema_real_eip !87
  %269 = load i64, i64* %268, align 8
  %270 = add i64 %248, 32
  store i64 %247, i64* %RAX.i, align 8, !mcsema_real_eip !88
  store i64 %263, i64* %RBX.i, align 8, !mcsema_real_eip !88
  store i64 %244, i64* %RCX.i, align 8, !mcsema_real_eip !88
  store i64 %78, i64* %RDX.i, align 8, !mcsema_real_eip !88
  store i64 %243, i64* %RSI.i, align 8, !mcsema_real_eip !88
  store i64 12, i64* %RDI.i, align 8, !mcsema_real_eip !88
  store i64 %270, i64* %RSP.i, align 8, !mcsema_real_eip !88
  store i64 %269, i64* %RBP.i, align 8, !mcsema_real_eip !88
  store i64 %241, i64* %R8.i, align 8, !mcsema_real_eip !88
  store i64 2, i64* %R9.i, align 8, !mcsema_real_eip !88
  store i64 %134, i64* %R10.i, align 8, !mcsema_real_eip !88
  store i64 %112, i64* %R11.i, align 8, !mcsema_real_eip !88
  store i64 %4, i64* %R12.i, align 8, !mcsema_real_eip !88
  store i64 %5, i64* %R13.i, align 8, !mcsema_real_eip !88
  store i64 %266, i64* %R14.i, align 8, !mcsema_real_eip !88
  store i64 %7, i64* %R15.i, align 8, !mcsema_real_eip !88
  store i64 %8, i64* %RIP.i, align 8, !mcsema_real_eip !88
  store i1 %261, i1* %CF.i, align 1, !mcsema_real_eip !88
  store i1 %260, i1* %PF.i, align 1, !mcsema_real_eip !88
  store i1 %251, i1* %AF.i, align 1, !mcsema_real_eip !88
  store i1 %253, i1* %ZF.i, align 1, !mcsema_real_eip !88
  store i1 %252, i1* %SF.i, align 1, !mcsema_real_eip !88
  store i1 %256, i1* %OF.i, align 1, !mcsema_real_eip !88
  store i1 %9, i1* %DF.i, align 1, !mcsema_real_eip !88
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* nonnull %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false), !mcsema_real_eip !88
  store i1 %12, i1* %FPU_B.i, align 1, !mcsema_real_eip !88
  store i1 %13, i1* %FPU_C3.i, align 1, !mcsema_real_eip !88
  store i3 %14, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !88
  store i1 %15, i1* %FPU_C2.i, align 1, !mcsema_real_eip !88
  store i1 %16, i1* %FPU_C1.i, align 1, !mcsema_real_eip !88
  store i1 %17, i1* %FPU_C0.i, align 1, !mcsema_real_eip !88
  store i1 %18, i1* %FPU_ES.i, align 1, !mcsema_real_eip !88
  store i1 %19, i1* %FPU_SF.i, align 1, !mcsema_real_eip !88
  store i1 %20, i1* %FPU_PE.i, align 1, !mcsema_real_eip !88
  store i1 %21, i1* %FPU_UE.i, align 1, !mcsema_real_eip !88
  store i1 %22, i1* %FPU_OE.i, align 1, !mcsema_real_eip !88
  store i1 %23, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !88
  store i1 %24, i1* %FPU_DE.i, align 1, !mcsema_real_eip !88
  store i1 %25, i1* %FPU_IE.i, align 1, !mcsema_real_eip !88
  store i1 %26, i1* %FPU_X.i, align 1, !mcsema_real_eip !88
  store i2 %27, i2* %FPU_RC.i, align 1, !mcsema_real_eip !88
  store i2 %28, i2* %FPU_PC.i, align 1, !mcsema_real_eip !88
  store i1 %29, i1* %FPU_PM.i, align 1, !mcsema_real_eip !88
  store i1 %30, i1* %FPU_UM.i, align 1, !mcsema_real_eip !88
  store i1 %31, i1* %FPU_OM.i, align 1, !mcsema_real_eip !88
  store i1 %32, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !88
  store i1 %33, i1* %FPU_DM.i, align 1, !mcsema_real_eip !88
  store i1 %34, i1* %FPU_IM.i, align 1, !mcsema_real_eip !88
  store i64 %37, i64* %36, align 4
  store i16 %38, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !88
  store i64 %39, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !88
  store i16 %40, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !88
  store i64 %41, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !88
  store i11 %42, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !88
  store i128 %43, i128* %XMM0.i, align 1, !mcsema_real_eip !88
  store i128 %44, i128* %XMM1.i, align 1, !mcsema_real_eip !88
  store i128 %45, i128* %XMM2.i, align 1, !mcsema_real_eip !88
  store i128 %46, i128* %XMM3.i, align 1, !mcsema_real_eip !88
  store i128 %47, i128* %XMM4.i, align 1, !mcsema_real_eip !88
  store i128 %48, i128* %XMM5.i, align 1, !mcsema_real_eip !88
  store i128 %49, i128* %XMM6.i, align 1, !mcsema_real_eip !88
  store i128 %50, i128* %XMM7.i, align 1, !mcsema_real_eip !88
  store i128 %51, i128* %XMM8.i, align 1, !mcsema_real_eip !88
  store i128 %52, i128* %XMM9.i, align 1, !mcsema_real_eip !88
  store i128 %53, i128* %XMM10.i, align 1, !mcsema_real_eip !88
  store i128 %54, i128* %XMM11.i, align 1, !mcsema_real_eip !88
  store i128 %55, i128* %XMM12.i, align 1, !mcsema_real_eip !88
  store i128 %56, i128* %XMM13.i, align 1, !mcsema_real_eip !88
  store i128 %57, i128* %XMM14.i, align 1, !mcsema_real_eip !88
  store i128 %58, i128* %XMM15.i, align 1, !mcsema_real_eip !88
  store i64 %59, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !88
  store i64 %60, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !88
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %11, i32 128, i32 4, i1 false), !mcsema_real_eip !31
  %271 = add i64 %269, -32, !mcsema_real_eip !89
  %272 = inttoptr i64 %271 to i64*, !mcsema_real_eip !89
  store i64 %247, i64* %272, align 8, !mcsema_real_eip !89
  %273 = inttoptr i64 %247 to i32*
  %274 = load i32, i32* %273, align 4, !mcsema_real_eip !90
  %275 = add i64 %247, 4, !mcsema_real_eip !91
  %276 = inttoptr i64 %275 to i32*
  %277 = load i32, i32* %276, align 4, !mcsema_real_eip !91
  %278 = add i32 %277, %274
  %279 = add i64 %247, 8, !mcsema_real_eip !92
  %280 = inttoptr i64 %279 to i32*
  %281 = load i32, i32* %280, align 4, !mcsema_real_eip !92
  %282 = add i32 %278, %281
  %283 = zext i32 %282 to i64, !mcsema_real_eip !92
  %uadd212.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %270, i64 112)
  %284 = extractvalue { i64, i1 } %uadd212.i, 0
  %285 = xor i64 %284, %270, !mcsema_real_eip !93
  %286 = and i64 %285, 16
  %287 = icmp eq i64 %286, 0
  %288 = icmp slt i64 %284, 0
  %289 = icmp eq i64 %284, 0, !mcsema_real_eip !93
  %290 = add i64 %248, -9223372036854775776
  %291 = and i64 %285, %290, !mcsema_real_eip !93
  %292 = icmp slt i64 %291, 0
  %293 = trunc i64 %284 to i8, !mcsema_real_eip !93
  %294 = tail call i8 @llvm.ctpop.i8(i8 %293), !mcsema_real_eip !93
  %295 = and i8 %294, 1
  %296 = icmp eq i8 %295, 0
  %297 = extractvalue { i64, i1 } %uadd212.i, 1
  %298 = inttoptr i64 %284 to i64*, !mcsema_real_eip !94
  %299 = load i64, i64* %298, align 8, !mcsema_real_eip !94
  %300 = add i64 %284, 16, !mcsema_real_eip !95
  store i64 %283, i64* %RAX.i, align 8, !mcsema_real_eip !95
  store i64 %263, i64* %RBX.i, align 8, !mcsema_real_eip !95
  store i64 %244, i64* %RCX.i, align 8, !mcsema_real_eip !95
  store i64 %78, i64* %RDX.i, align 8, !mcsema_real_eip !95
  store i64 %283, i64* %RSI.i, align 8, !mcsema_real_eip !95
  store i64 12, i64* %RDI.i, align 8, !mcsema_real_eip !95
  store i64 %300, i64* %RSP.i, align 8, !mcsema_real_eip !95
  store i64 %299, i64* %RBP.i, align 8, !mcsema_real_eip !95
  store i64 %241, i64* %R8.i, align 8, !mcsema_real_eip !95
  store i64 2, i64* %R9.i, align 8, !mcsema_real_eip !95
  store i64 %134, i64* %R10.i, align 8, !mcsema_real_eip !95
  store i64 %112, i64* %R11.i, align 8, !mcsema_real_eip !95
  store i64 %4, i64* %R12.i, align 8, !mcsema_real_eip !95
  store i64 %5, i64* %R13.i, align 8, !mcsema_real_eip !95
  store i64 %266, i64* %R14.i, align 8, !mcsema_real_eip !95
  store i64 %7, i64* %R15.i, align 8, !mcsema_real_eip !95
  store i64 %8, i64* %RIP.i, align 8, !mcsema_real_eip !95
  store i1 %297, i1* %CF.i, align 1, !mcsema_real_eip !95
  store i1 %296, i1* %PF.i, align 1, !mcsema_real_eip !95
  store i1 %287, i1* %AF.i, align 1, !mcsema_real_eip !95
  store i1 %289, i1* %ZF.i, align 1, !mcsema_real_eip !95
  store i1 %288, i1* %SF.i, align 1, !mcsema_real_eip !95
  store i1 %292, i1* %OF.i, align 1, !mcsema_real_eip !95
  store i1 %9, i1* %DF.i, align 1, !mcsema_real_eip !95
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !95
  store i1 %12, i1* %FPU_B.i, align 1, !mcsema_real_eip !95
  store i1 %13, i1* %FPU_C3.i, align 1, !mcsema_real_eip !95
  store i3 %14, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !95
  store i1 %15, i1* %FPU_C2.i, align 1, !mcsema_real_eip !95
  store i1 %16, i1* %FPU_C1.i, align 1, !mcsema_real_eip !95
  store i1 %17, i1* %FPU_C0.i, align 1, !mcsema_real_eip !95
  store i1 %18, i1* %FPU_ES.i, align 1, !mcsema_real_eip !95
  store i1 %19, i1* %FPU_SF.i, align 1, !mcsema_real_eip !95
  store i1 %20, i1* %FPU_PE.i, align 1, !mcsema_real_eip !95
  store i1 %21, i1* %FPU_UE.i, align 1, !mcsema_real_eip !95
  store i1 %22, i1* %FPU_OE.i, align 1, !mcsema_real_eip !95
  store i1 %23, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !95
  store i1 %24, i1* %FPU_DE.i, align 1, !mcsema_real_eip !95
  store i1 %25, i1* %FPU_IE.i, align 1, !mcsema_real_eip !95
  store i1 %26, i1* %FPU_X.i, align 1, !mcsema_real_eip !95
  store i2 %27, i2* %FPU_RC.i, align 1, !mcsema_real_eip !95
  store i2 %28, i2* %FPU_PC.i, align 1, !mcsema_real_eip !95
  store i1 %29, i1* %FPU_PM.i, align 1, !mcsema_real_eip !95
  store i1 %30, i1* %FPU_UM.i, align 1, !mcsema_real_eip !95
  store i1 %31, i1* %FPU_OM.i, align 1, !mcsema_real_eip !95
  store i1 %32, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !95
  store i1 %33, i1* %FPU_DM.i, align 1, !mcsema_real_eip !95
  store i1 %34, i1* %FPU_IM.i, align 1, !mcsema_real_eip !95
  store i64 %37, i64* %36, align 4
  store i16 %38, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !95
  store i64 %39, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !95
  store i16 %40, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !95
  store i64 %41, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !95
  store i11 %42, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !95
  store i128 %43, i128* %XMM0.i, align 1, !mcsema_real_eip !95
  store i128 %44, i128* %XMM1.i, align 1, !mcsema_real_eip !95
  store i128 %45, i128* %XMM2.i, align 1, !mcsema_real_eip !95
  store i128 %46, i128* %XMM3.i, align 1, !mcsema_real_eip !95
  store i128 %47, i128* %XMM4.i, align 1, !mcsema_real_eip !95
  store i128 %48, i128* %XMM5.i, align 1, !mcsema_real_eip !95
  store i128 %49, i128* %XMM6.i, align 1, !mcsema_real_eip !95
  store i128 %50, i128* %XMM7.i, align 1, !mcsema_real_eip !95
  store i128 %51, i128* %XMM8.i, align 1, !mcsema_real_eip !95
  store i128 %52, i128* %XMM9.i, align 1, !mcsema_real_eip !95
  store i128 %53, i128* %XMM10.i, align 1, !mcsema_real_eip !95
  store i128 %54, i128* %XMM11.i, align 1, !mcsema_real_eip !95
  store i128 %55, i128* %XMM12.i, align 1, !mcsema_real_eip !95
  store i128 %56, i128* %XMM13.i, align 1, !mcsema_real_eip !95
  store i128 %57, i128* %XMM14.i, align 1, !mcsema_real_eip !95
  store i128 %58, i128* %XMM15.i, align 1, !mcsema_real_eip !95
  store i64 %59, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !95
  store i64 %60, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !95
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
!2 = !{i64 0}
!3 = !{i64 256}
!4 = !{i64 260}
!5 = !{i64 274}
!6 = !{i64 281}
!7 = !{i64 288}
!8 = !{i64 295}
!9 = !{i64 302}
!10 = !{i64 328}
!11 = !{i64 336}
!12 = !{i64 342}
!13 = !{i64 346}
!14 = !{i64 353}
!15 = !{i64 357}
!16 = !{i64 372}
!17 = !{i64 376}
!18 = !{i64 380}
!19 = !{i64 384}
!20 = !{i64 396}
!21 = !{i64 410}
!22 = !{i64 417}
!23 = !{i64 423}
!24 = !{i64 430}
!25 = !{i64 433}
!26 = !{i64 438}
!27 = !{i64 442}
!28 = !{i64 447}
!29 = !{i64 452}
!30 = !{i64 456}
!31 = !{i64 461}
!32 = !{i64 4}
!33 = !{i64 6}
!34 = !{i64 11}
!35 = !{i64 23}
!36 = !{i64 36}
!37 = !{i64 40}
!38 = !{i64 43}
!39 = !{i64 47}
!40 = !{i64 51}
!41 = !{i64 54}
!42 = !{i64 57}
!43 = !{i64 61}
!44 = !{i64 65}
!45 = !{i64 69}
!46 = !{i64 73}
!47 = !{i64 76}
!48 = !{i64 80}
!49 = !{i64 87}
!50 = !{i64 91}
!51 = !{i64 96}
!52 = !{i64 100}
!53 = !{i64 107}
!54 = !{i64 113}
!55 = !{i64 115}
!56 = !{i64 119}
!57 = !{i64 126}
!58 = !{i64 133}
!59 = !{i64 143}
!60 = !{i64 145}
!61 = !{i64 148}
!62 = !{i64 152}
!63 = !{i64 155}
!64 = !{i64 159}
!65 = !{i64 162}
!66 = !{i64 166}
!67 = !{i64 170}
!68 = !{i64 174}
!69 = !{i64 178}
!70 = !{i64 185}
!71 = !{i64 189}
!72 = !{i64 192}
!73 = !{i64 195}
!74 = !{i64 199}
!75 = !{i64 202}
!76 = !{i64 206}
!77 = !{i64 209}
!78 = !{i64 213}
!79 = !{i64 217}
!80 = !{i64 221}
!81 = !{i64 225}
!82 = !{i64 229}
!83 = !{i64 236}
!84 = !{i64 243}
!85 = !{i64 247}
!86 = !{i64 248}
!87 = !{i64 250}
!88 = !{i64 251}
!89 = !{i64 466}
!90 = !{i64 474}
!91 = !{i64 480}
!92 = !{i64 487}
!93 = !{i64 492}
!94 = !{i64 496}
!95 = !{i64 497}
