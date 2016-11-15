; ModuleID = 'Output/test_25.clang.opt.bc'
source_filename = "Output/test_25.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type <{ [10 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x8b = internal constant %0 <{ [10 x i8] c"I am: %s\0A\00" }>, align 64

declare x86_64_sysvcc i64 @strlen(i64 inreg) local_unnamed_addr

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg) local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) local_unnamed_addr {
driverBlockRaw:
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %1 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %2 = load i64, i64* %RDX.i, align 8, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %3 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %4 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %5 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %6 = load i64, i64* %RBP.i, align 8, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %7 = bitcast i64* %R8.i to <2 x i64>*
  %8 = load <2 x i64>, <2 x i64>* %7, align 8
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %9 = bitcast i64* %R10.i to <2 x i64>*
  %10 = load <2 x i64>, <2 x i64>* %9, align 8
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %11 = bitcast i64* %R12.i to <2 x i64>*
  %12 = load <2 x i64>, <2 x i64>* %11, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %13 = bitcast i64* %R14.i to <2 x i64>*
  %14 = load <2 x i64>, <2 x i64>* %13, align 8
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %15 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %16 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !2
  %17 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %19 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %21 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %34 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %35 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %36 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %37 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %38 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %39 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %40 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %41 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %42 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %43 = bitcast i8* %42 to i64*
  %44 = load i64, i64* %43, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %45 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %46 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %47 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %48 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %49 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %63 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %64 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %65 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %66 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %67 = load <2 x i64>, <2 x i64>* %66, align 8
  %68 = add i64 %5, -8
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !2
  store i64 %6, i64* %69, align 8, !mcsema_real_eip !2
  %70 = add i64 %5, -40
  %71 = add i64 %5, -12, !mcsema_real_eip !3
  %72 = inttoptr i64 %71 to i32*
  store i32 0, i32* %72, align 4, !mcsema_real_eip !3
  %73 = add i64 %5, -16, !mcsema_real_eip !4
  %74 = trunc i64 %4 to i32, !mcsema_real_eip !4
  %75 = inttoptr i64 %73 to i32*
  store i32 %74, i32* %75, align 4, !mcsema_real_eip !4
  %76 = add i64 %5, -24, !mcsema_real_eip !5
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !5
  store i64 %3, i64* %77, align 8, !mcsema_real_eip !5
  %78 = add i64 %5, -28, !mcsema_real_eip !6
  %79 = inttoptr i64 %78 to i32*
  store i32 0, i32* %79, align 4, !mcsema_real_eip !6
  %80 = load i64, i64* %77, align 8, !mcsema_real_eip !7
  %81 = add i64 %80, 8, !mcsema_real_eip !8
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !8
  %83 = load i64, i64* %82, align 8, !mcsema_real_eip !8
  %84 = tail call x86_64_sysvcc i64 @strlen(i64 %83), !mcsema_real_eip !9
  %85 = and i64 %84, 4294967295
  %86 = add i64 %5, -32, !mcsema_real_eip !10
  %87 = trunc i64 %84 to i32, !mcsema_real_eip !10
  %88 = inttoptr i64 %86 to i32*
  store i32 %87, i32* %88, align 4, !mcsema_real_eip !10
  %89 = add i64 %5, -36
  %90 = inttoptr i64 %89 to i32*
  store i32 0, i32* %90, align 4
  %91 = load i32, i32* %88, align 4, !mcsema_real_eip !11
  %92 = sub i32 0, %91, !mcsema_real_eip !11
  %93 = icmp slt i32 %92, 0
  %94 = and i32 %91, %92, !mcsema_real_eip !11
  %95 = icmp slt i32 %94, 0
  %tmp32.i = xor i1 %93, %95
  br i1 %tmp32.i, label %block_0x42.lr.ph.i, label %sub_0.exit, !mcsema_real_eip !12

block_0x42.lr.ph.i:                               ; preds = %driverBlockRaw
  %96 = inttoptr i64 %70 to i32*
  br label %block_0x42.i

block_0x42.i:                                     ; preds = %block_0x42.i, %block_0x42.lr.ph.i
  %97 = load i64, i64* %77, align 8, !mcsema_real_eip !13
  %98 = add i64 %97, 8, !mcsema_real_eip !14
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !14
  %100 = load i64, i64* %99, align 8, !mcsema_real_eip !14
  %101 = tail call x86_64_sysvcc i64 @printf(i64 ptrtoint (%0* @data_0x8b to i64), i64 %100), !mcsema_real_eip !15
  %102 = load i64, i64* %77, align 8, !mcsema_real_eip !16
  %103 = add i64 %102, 8, !mcsema_real_eip !17
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !17
  %105 = load i64, i64* %104, align 8, !mcsema_real_eip !17
  %106 = load i32, i32* %90, align 4, !mcsema_real_eip !18
  %107 = sext i32 %106 to i64, !mcsema_real_eip !18
  %108 = add i64 %107, %105, !mcsema_real_eip !19
  %109 = inttoptr i64 %108 to i8*
  %110 = load i8, i8* %109, align 1, !mcsema_real_eip !19
  %111 = sext i8 %110 to i32, !mcsema_real_eip !19
  %112 = load i32, i32* %79, align 4, !mcsema_real_eip !20
  %113 = add i32 %111, %112
  store i32 %113, i32* %79, align 4, !mcsema_real_eip !21
  %114 = trunc i64 %101 to i32, !mcsema_real_eip !22
  store i32 %114, i32* %96, align 4, !mcsema_real_eip !22
  %115 = load i32, i32* %90, align 4, !mcsema_real_eip !23
  %116 = add i32 %115, 1
  store i32 %116, i32* %90, align 4
  %117 = load i32, i32* %88, align 4, !mcsema_real_eip !11
  %118 = sub i32 %116, %117, !mcsema_real_eip !11
  %119 = xor i32 %118, %116, !mcsema_real_eip !11
  %120 = icmp slt i32 %118, 0
  %121 = xor i32 %117, %116, !mcsema_real_eip !11
  %122 = and i32 %119, %121, !mcsema_real_eip !11
  %123 = icmp slt i32 %122, 0
  %tmp.i = xor i1 %120, %123
  br i1 %tmp.i, label %block_0x42.i, label %block_0x36.block_0x82_crit_edge.i, !mcsema_real_eip !12

block_0x36.block_0x82_crit_edge.i:                ; preds = %block_0x42.i
  %124 = zext i32 %113 to i64, !mcsema_real_eip !20
  br label %sub_0.exit

sub_0.exit:                                       ; preds = %driverBlockRaw, %block_0x36.block_0x82_crit_edge.i
  %RDI_val.0.lcssa.i = phi i64 [ %107, %block_0x36.block_0x82_crit_edge.i ], [ %83, %driverBlockRaw ]
  %RSI_val.0.lcssa.i = phi i64 [ %105, %block_0x36.block_0x82_crit_edge.i ], [ %80, %driverBlockRaw ]
  %RCX_val.0.lcssa.i = phi i64 [ %124, %block_0x36.block_0x82_crit_edge.i ], [ %85, %driverBlockRaw ]
  %.lcssa.i = phi i32 [ %117, %block_0x36.block_0x82_crit_edge.i ], [ %91, %driverBlockRaw ]
  %125 = zext i32 %.lcssa.i to i64, !mcsema_real_eip !24
  %uadd72.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %70, i64 32)
  %126 = extractvalue { i64, i1 } %uadd72.i, 0
  %127 = xor i64 %126, %70, !mcsema_real_eip !25
  %128 = and i64 %127, 16, !mcsema_real_eip !25
  %129 = icmp ne i64 %128, 0, !mcsema_real_eip !25
  %130 = icmp slt i64 %126, 0
  %131 = icmp eq i64 %126, 0, !mcsema_real_eip !25
  %132 = add i64 %5, 9223372036854775768
  %133 = and i64 %127, %132, !mcsema_real_eip !25
  %134 = icmp slt i64 %133, 0
  %135 = trunc i64 %126 to i8, !mcsema_real_eip !25
  %136 = tail call i8 @llvm.ctpop.i8(i8 %135), !mcsema_real_eip !25
  %137 = and i8 %136, 1
  %138 = icmp eq i8 %137, 0
  %139 = extractvalue { i64, i1 } %uadd72.i, 1
  %140 = inttoptr i64 %126 to i64*, !mcsema_real_eip !26
  %141 = load i64, i64* %140, align 8, !mcsema_real_eip !26
  %142 = add i64 %126, 16, !mcsema_real_eip !27
  store i64 %125, i64* %RAX.i, align 8, !mcsema_real_eip !27
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !27
  store i64 %RCX_val.0.lcssa.i, i64* %RCX.i, align 8, !mcsema_real_eip !27
  store i64 %2, i64* %RDX.i, align 8, !mcsema_real_eip !27
  store i64 %RSI_val.0.lcssa.i, i64* %RSI.i, align 8, !mcsema_real_eip !27
  store i64 %RDI_val.0.lcssa.i, i64* %RDI.i, align 8, !mcsema_real_eip !27
  store i64 %142, i64* %RSP.i, align 8, !mcsema_real_eip !27
  store i64 %141, i64* %RBP.i, align 8, !mcsema_real_eip !27
  %143 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %143, align 8
  %144 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %144, align 8
  %145 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %145, align 8
  %146 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %14, <2 x i64>* %146, align 8
  store i64 %15, i64* %RIP.i, align 8, !mcsema_real_eip !27
  store i1 %139, i1* %CF.i, align 1, !mcsema_real_eip !27
  store i1 %138, i1* %PF.i, align 1, !mcsema_real_eip !27
  store i1 %129, i1* %AF.i, align 1, !mcsema_real_eip !27
  store i1 %131, i1* %ZF.i, align 1, !mcsema_real_eip !27
  store i1 %130, i1* %SF.i, align 1, !mcsema_real_eip !27
  store i1 %134, i1* %OF.i, align 1, !mcsema_real_eip !27
  store i1 %16, i1* %DF.i, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !27
  store i1 %19, i1* %FPU_B.i, align 1, !mcsema_real_eip !27
  store i1 %20, i1* %FPU_C3.i, align 1, !mcsema_real_eip !27
  store i3 %21, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !27
  store i1 %22, i1* %FPU_C2.i, align 1, !mcsema_real_eip !27
  store i1 %23, i1* %FPU_C1.i, align 1, !mcsema_real_eip !27
  store i1 %24, i1* %FPU_C0.i, align 1, !mcsema_real_eip !27
  store i1 %25, i1* %FPU_ES.i, align 1, !mcsema_real_eip !27
  store i1 %26, i1* %FPU_SF.i, align 1, !mcsema_real_eip !27
  store i1 %27, i1* %FPU_PE.i, align 1, !mcsema_real_eip !27
  store i1 %28, i1* %FPU_UE.i, align 1, !mcsema_real_eip !27
  store i1 %29, i1* %FPU_OE.i, align 1, !mcsema_real_eip !27
  store i1 %30, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !27
  store i1 %31, i1* %FPU_DE.i, align 1, !mcsema_real_eip !27
  store i1 %32, i1* %FPU_IE.i, align 1, !mcsema_real_eip !27
  store i1 %33, i1* %FPU_X.i, align 1, !mcsema_real_eip !27
  store i2 %34, i2* %FPU_RC.i, align 1, !mcsema_real_eip !27
  store i2 %35, i2* %FPU_PC.i, align 1, !mcsema_real_eip !27
  store i1 %36, i1* %FPU_PM.i, align 1, !mcsema_real_eip !27
  store i1 %37, i1* %FPU_UM.i, align 1, !mcsema_real_eip !27
  store i1 %38, i1* %FPU_OM.i, align 1, !mcsema_real_eip !27
  store i1 %39, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !27
  store i1 %40, i1* %FPU_DM.i, align 1, !mcsema_real_eip !27
  store i1 %41, i1* %FPU_IM.i, align 1, !mcsema_real_eip !27
  store i64 %44, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !27
  store i64 %46, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !27
  store i16 %47, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !27
  store i64 %48, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !27
  store i11 %49, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !27
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !27
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !27
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !27
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !27
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !27
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !27
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !27
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !27
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !27
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !27
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !27
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !27
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !27
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !27
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !27
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !27
  %147 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %67, <2 x i64>* %147, align 1
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
!3 = !{i64 8}
!4 = !{i64 15}
!5 = !{i64 18}
!6 = !{i64 22}
!7 = !{i64 29}
!8 = !{i64 33}
!9 = !{i64 37}
!10 = !{i64 44}
!11 = !{i64 57}
!12 = !{i64 60}
!13 = !{i64 76}
!14 = !{i64 80}
!15 = !{i64 86}
!16 = !{i64 91}
!17 = !{i64 95}
!18 = !{i64 99}
!19 = !{i64 103}
!20 = !{i64 107}
!21 = !{i64 110}
!22 = !{i64 113}
!23 = !{i64 116}
!24 = !{i64 130}
!25 = !{i64 133}
!26 = !{i64 137}
!27 = !{i64 138}
