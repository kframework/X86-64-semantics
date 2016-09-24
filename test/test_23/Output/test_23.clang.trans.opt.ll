; ModuleID = 'Output/test_23.clang.trans.opt.bc'
source_filename = "Output/test_23.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [77 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x329 = internal global %0 <{ [77 x i8] c"+-+---+---+| |     |#|| | --+ | || |   | | || +-- | | ||     |   |+-----+---+" }>, align 64

declare x86_64_sysvcc i64 @read(i64 inreg, i64 inreg, i64 inreg) local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) local_unnamed_addr {
driverBlockRaw:
  %_local_stack_alloc_175.i = alloca [104 x i64], align 8
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %1 = bitcast [104 x i64]* %_local_stack_alloc_175.i to i8*
  call void @llvm.lifetime.start(i64 832, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_start_.i = ptrtoint [104 x i64]* %_local_stack_alloc_175.i to i64
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %2 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %3 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %4 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %5 = load i64, i64* %RBP.i, align 8, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %6 = load i64, i64* %R10.i, align 8, !mcsema_real_eip !2
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %7 = load i64, i64* %R11.i, align 8, !mcsema_real_eip !2
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %8 = load i64, i64* %R12.i, align 8, !mcsema_real_eip !2
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %9 = load i64, i64* %R13.i, align 8, !mcsema_real_eip !2
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %10 = load i64, i64* %R14.i, align 8, !mcsema_real_eip !2
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %11 = load i64, i64* %R15.i, align 8, !mcsema_real_eip !2
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %12 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %13 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !2
  %14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %15 = bitcast x86_fp80* %14 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %15, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %16 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %17 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %18 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %19 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %31 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %32 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %35 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %36 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %37 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %38 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %39 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %40 = bitcast i8* %39 to i64*
  %41 = load i64, i64* %40, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %42 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %43 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %44 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %45 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %46 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %47 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %48 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %49 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %62 = load i64, i64* %STACK_BASE.i, align 8, !mcsema_real_eip !2
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %63 = load i64, i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !2
  %64 = add i64 %_local_stack_start_.i, 96
  %65 = inttoptr i64 %64 to i64*
  store i64 %5, i64* %65, align 8, !mcsema_real_eip !2
  %66 = add i64 %_local_stack_start_.i, 32, !mcsema_real_eip !3
  %67 = add i64 %_local_stack_start_.i, 92, !mcsema_real_eip !4
  %68 = inttoptr i64 %67 to i32*
  store i32 0, i32* %68, align 4, !mcsema_real_eip !4
  %69 = add i64 %_local_stack_start_.i, 88, !mcsema_real_eip !5
  %70 = trunc i64 %4 to i32, !mcsema_real_eip !5
  %71 = inttoptr i64 %69 to i32*
  store i32 %70, i32* %71, align 8, !mcsema_real_eip !5
  %72 = add i64 %_local_stack_start_.i, 80, !mcsema_real_eip !6
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !6
  store i64 %3, i64* %73, align 8, !mcsema_real_eip !6
  %74 = add i64 %_local_stack_start_.i, 60, !mcsema_real_eip !7
  %75 = inttoptr i64 %74 to i32*
  store i32 0, i32* %75, align 4, !mcsema_real_eip !7
  %76 = add i64 %_local_stack_start_.i, 76, !mcsema_real_eip !8
  %77 = inttoptr i64 %76 to i32*
  store i32 1, i32* %77, align 4, !mcsema_real_eip !8
  %78 = add i64 %_local_stack_start_.i, 72, !mcsema_real_eip !9
  %79 = inttoptr i64 %78 to i32*
  store i32 1, i32* %79, align 8, !mcsema_real_eip !9
  %80 = load i32, i32* %77, align 4, !mcsema_real_eip !10
  %81 = sext i32 %80 to i64, !mcsema_real_eip !10
  %82 = add i64 %81, add (i64 ptrtoint (%0* @data_0x329 to i64), i64 11), !mcsema_real_eip !11
  %83 = inttoptr i64 %82 to i8*
  store i8 88, i8* %83, align 1, !mcsema_real_eip !11
  %84 = tail call x86_64_sysvcc i64 @read(i64 0, i64 %66, i64 28), !mcsema_real_eip !12
  %85 = add i64 %_local_stack_start_.i, 24, !mcsema_real_eip !13
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !13
  store i64 %84, i64* %86, align 8, !mcsema_real_eip !13
  %87 = load i32, i32* %75, align 4, !mcsema_real_eip !14
  %88 = add i32 %87, -28
  %89 = icmp slt i32 %88, 0
  %90 = sub i32 27, %87
  %91 = and i32 %90, %87
  %92 = icmp slt i32 %91, 0
  %tmp.i = xor i1 %89, %92
  br i1 %tmp.i, label %block_0x13a.preheader.i, label %block_0x319.i, !mcsema_real_eip !15

block_0x13a.preheader.i:                          ; preds = %driverBlockRaw
  %93 = add i64 %_local_stack_start_.i, 68, !mcsema_real_eip !16
  %94 = inttoptr i64 %93 to i32*
  %95 = add i64 %_local_stack_start_.i, 64, !mcsema_real_eip !17
  %96 = inttoptr i64 %95 to i32*
  %97 = add i64 %_local_stack_start_.i, 20, !mcsema_real_eip !18
  %98 = inttoptr i64 %97 to i32*
  %99 = add i64 %_local_stack_start_.i, 16, !mcsema_real_eip !19
  %100 = inttoptr i64 %99 to i32*
  %101 = add i64 %_local_stack_start_.i, 12
  %102 = inttoptr i64 %101 to i32*
  %103 = add i64 %_local_stack_start_.i, 8
  %104 = inttoptr i64 %103 to i32*
  %105 = or i64 %_local_stack_start_.i, 4
  %106 = inttoptr i64 %105 to i32*
  %107 = bitcast [104 x i64]* %_local_stack_alloc_175.i to i32*
  br label %block_0x13a.i

block_0x319.i.loopexit:                           ; preds = %block_0x2e8.i
  br label %block_0x319.i

block_0x319.i:                                    ; preds = %block_0x319.i.loopexit, %driverBlockRaw
  %RSI_val.0.i = phi i64 [ %66, %driverBlockRaw ], [ %205, %block_0x319.i.loopexit ]
  %RDX_val.0.i = phi i64 [ 28, %driverBlockRaw ], [ %199, %block_0x319.i.loopexit ]
  %RCX_val.0.i = phi i64 [ %66, %driverBlockRaw ], [ %197, %block_0x319.i.loopexit ]
  store i32 1, i32* %68, align 4, !mcsema_real_eip !20
  %108 = xor i64 %64, %_local_stack_start_.i, !mcsema_real_eip !21
  %109 = and i64 %108, 16, !mcsema_real_eip !21
  %110 = icmp ne i64 %109, 0, !mcsema_real_eip !21
  %111 = icmp slt i64 %64, 0
  %112 = icmp eq i64 %64, 0, !mcsema_real_eip !21
  %113 = xor i64 %_local_stack_start_.i, -9223372036854775808, !mcsema_real_eip !21
  %114 = and i64 %108, %113, !mcsema_real_eip !21
  %115 = icmp slt i64 %114, 0
  %116 = trunc i64 %64 to i8, !mcsema_real_eip !21
  %117 = tail call i8 @llvm.ctpop.i8(i8 %116), !mcsema_real_eip !21
  %118 = and i8 %117, 1
  %119 = icmp eq i8 %118, 0
  %120 = icmp ugt [104 x i64]* %_local_stack_alloc_175.i, inttoptr (i64 -97 to [104 x i64]*)
  %121 = load i64, i64* %65, align 8, !mcsema_real_eip !22
  %122 = add i64 %_local_stack_start_.i, 112, !mcsema_real_eip !23
  store i64 1, i64* %RAX.i, align 8, !mcsema_real_eip !23
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !23
  store i64 %RCX_val.0.i, i64* %RCX.i, align 8, !mcsema_real_eip !23
  store i64 %RDX_val.0.i, i64* %RDX.i, align 8, !mcsema_real_eip !23
  store i64 %RSI_val.0.i, i64* %RSI.i, align 8, !mcsema_real_eip !23
  store i64 0, i64* %RDI.i, align 8, !mcsema_real_eip !23
  store i64 %122, i64* %RSP.i, align 8, !mcsema_real_eip !23
  store i64 %121, i64* %RBP.i, align 8, !mcsema_real_eip !23
  %123 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 add (i64 ptrtoint (%0* @data_0x329 to i64), i64 11), i64 11>, <2 x i64>* %123, align 8
  store i64 %6, i64* %R10.i, align 8, !mcsema_real_eip !23
  store i64 %7, i64* %R11.i, align 8, !mcsema_real_eip !23
  store i64 %8, i64* %R12.i, align 8, !mcsema_real_eip !23
  store i64 %9, i64* %R13.i, align 8, !mcsema_real_eip !23
  store i64 %10, i64* %R14.i, align 8, !mcsema_real_eip !23
  store i64 %11, i64* %R15.i, align 8, !mcsema_real_eip !23
  store i64 %12, i64* %RIP.i, align 8, !mcsema_real_eip !23
  store i1 %120, i1* %CF.i, align 1, !mcsema_real_eip !23
  store i1 %119, i1* %PF.i, align 1, !mcsema_real_eip !23
  store i1 %110, i1* %AF.i, align 1, !mcsema_real_eip !23
  store i1 %112, i1* %ZF.i, align 1, !mcsema_real_eip !23
  store i1 %111, i1* %SF.i, align 1, !mcsema_real_eip !23
  store i1 %115, i1* %OF.i, align 1, !mcsema_real_eip !23
  store i1 %13, i1* %DF.i, align 1, !mcsema_real_eip !23
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !23
  store i1 %16, i1* %FPU_B.i, align 1, !mcsema_real_eip !23
  store i1 %17, i1* %FPU_C3.i, align 1, !mcsema_real_eip !23
  store i3 %18, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !23
  store i1 %19, i1* %FPU_C2.i, align 1, !mcsema_real_eip !23
  store i1 %20, i1* %FPU_C1.i, align 1, !mcsema_real_eip !23
  store i1 %21, i1* %FPU_C0.i, align 1, !mcsema_real_eip !23
  store i1 %22, i1* %FPU_ES.i, align 1, !mcsema_real_eip !23
  store i1 %23, i1* %FPU_SF.i, align 1, !mcsema_real_eip !23
  store i1 %24, i1* %FPU_PE.i, align 1, !mcsema_real_eip !23
  store i1 %25, i1* %FPU_UE.i, align 1, !mcsema_real_eip !23
  store i1 %26, i1* %FPU_OE.i, align 1, !mcsema_real_eip !23
  store i1 %27, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !23
  store i1 %28, i1* %FPU_DE.i, align 1, !mcsema_real_eip !23
  store i1 %29, i1* %FPU_IE.i, align 1, !mcsema_real_eip !23
  store i1 %30, i1* %FPU_X.i, align 1, !mcsema_real_eip !23
  store i2 %31, i2* %FPU_RC.i, align 1, !mcsema_real_eip !23
  store i2 %32, i2* %FPU_PC.i, align 1, !mcsema_real_eip !23
  store i1 %33, i1* %FPU_PM.i, align 1, !mcsema_real_eip !23
  store i1 %34, i1* %FPU_UM.i, align 1, !mcsema_real_eip !23
  store i1 %35, i1* %FPU_OM.i, align 1, !mcsema_real_eip !23
  store i1 %36, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !23
  store i1 %37, i1* %FPU_DM.i, align 1, !mcsema_real_eip !23
  store i1 %38, i1* %FPU_IM.i, align 1, !mcsema_real_eip !23
  store i64 %41, i64* %40, align 4
  store i16 %42, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !23
  store i64 %43, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !23
  store i16 %44, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !23
  store i64 %45, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !23
  store i128 %46, i128* %XMM0.i, align 1, !mcsema_real_eip !23
  store i128 %47, i128* %XMM1.i, align 1, !mcsema_real_eip !23
  store i128 %48, i128* %XMM2.i, align 1, !mcsema_real_eip !23
  store i128 %49, i128* %XMM3.i, align 1, !mcsema_real_eip !23
  store i128 %50, i128* %XMM4.i, align 1, !mcsema_real_eip !23
  store i128 %51, i128* %XMM5.i, align 1, !mcsema_real_eip !23
  store i128 %52, i128* %XMM6.i, align 1, !mcsema_real_eip !23
  store i128 %53, i128* %XMM7.i, align 1, !mcsema_real_eip !23
  store i128 %54, i128* %XMM8.i, align 1, !mcsema_real_eip !23
  store i128 %55, i128* %XMM9.i, align 1, !mcsema_real_eip !23
  store i128 %56, i128* %XMM10.i, align 1, !mcsema_real_eip !23
  store i128 %57, i128* %XMM11.i, align 1, !mcsema_real_eip !23
  store i128 %58, i128* %XMM12.i, align 1, !mcsema_real_eip !23
  store i128 %59, i128* %XMM13.i, align 1, !mcsema_real_eip !23
  store i128 %60, i128* %XMM14.i, align 1, !mcsema_real_eip !23
  store i128 %61, i128* %XMM15.i, align 1, !mcsema_real_eip !23
  store i64 %62, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !23
  store i64 %63, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !23
  call void @llvm.lifetime.end(i64 832, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  br label %sub_c0.exit

block_0x13a.i:                                    ; preds = %block_0x2e8.i, %block_0x13a.preheader.i
  %RSI_val.1.i = phi i64 [ %205, %block_0x2e8.i ], [ %66, %block_0x13a.preheader.i ]
  %124 = load i32, i32* %77, align 4, !mcsema_real_eip !24
  store i32 %124, i32* %94, align 4, !mcsema_real_eip !16
  %125 = load i32, i32* %79, align 8, !mcsema_real_eip !25
  store i32 %125, i32* %96, align 8, !mcsema_real_eip !17
  %126 = load i32, i32* %75, align 4, !mcsema_real_eip !26
  %127 = sext i32 %126 to i64, !mcsema_real_eip !26
  %128 = add i64 %127, %66, !mcsema_real_eip !27
  %129 = inttoptr i64 %128 to i8*
  %130 = load i8, i8* %129, align 1, !mcsema_real_eip !27
  %131 = sext i8 %130 to i32, !mcsema_real_eip !27
  %132 = add nsw i32 %131, -114
  %133 = icmp eq i32 %132, 0, !mcsema_real_eip !28
  %134 = icmp slt i8 %130, 114
  %135 = sub nsw i32 113, %131
  %136 = and i32 %135, %131
  %137 = icmp slt i32 %136, 0
  %138 = zext i32 %132 to i64, !mcsema_real_eip !28
  store i32 %131, i32* %98, align 4, !mcsema_real_eip !18
  store i32 %132, i32* %100, align 8, !mcsema_real_eip !19
  %tmp139.i = xor i1 %134, %137
  %.demorgan.i = or i1 %133, %tmp139.i
  %139 = load i32, i32* %98, align 4, !mcsema_real_eip !29
  br i1 %.demorgan.i, label %block_0x165.i, label %block_0x18d.i, !mcsema_real_eip !30

block_0x18d.i:                                    ; preds = %block_0x13a.i
  %140 = add i32 %139, -115
  %141 = icmp eq i32 %140, 0, !mcsema_real_eip !31
  store i32 %140, i32* %106, align 4, !mcsema_real_eip !32
  br i1 %141, label %block_0x1c5.i, label %block_0x1a1.i, !mcsema_real_eip !33

block_0x165.i:                                    ; preds = %block_0x13a.i
  %142 = add i32 %139, -97
  %143 = icmp eq i32 %142, 0, !mcsema_real_eip !34
  store i32 %142, i32* %102, align 4, !mcsema_real_eip !35
  br i1 %143, label %block_0x1d5.i, label %block_0x179.i, !mcsema_real_eip !36

block_0x1c5.i:                                    ; preds = %block_0x18d.i
  %144 = load i32, i32* %79, align 8, !mcsema_real_eip !37
  %145 = add i32 %144, 1
  br label %block_0x201.i, !mcsema_real_eip !38

block_0x1d5.i:                                    ; preds = %block_0x165.i
  %146 = load i32, i32* %77, align 4, !mcsema_real_eip !39
  %147 = add i32 %146, -1
  br label %block_0x201.i, !mcsema_real_eip !40

block_0x1a1.i:                                    ; preds = %block_0x18d.i
  %148 = load i32, i32* %98, align 4, !mcsema_real_eip !41
  %149 = add i32 %148, -119
  %150 = icmp eq i32 %149, 0, !mcsema_real_eip !42
  store i32 %149, i32* %107, align 8, !mcsema_real_eip !43
  br i1 %150, label %block_0x1b5.i, label %block_0x320.i, !mcsema_real_eip !44

block_0x201.i:                                    ; preds = %block_0x1b5.i, %block_0x1e5.i, %block_0x1d5.i, %block_0x1c5.i
  %.sink3.i = phi i64 [ %78, %block_0x1b5.i ], [ %76, %block_0x1e5.i ], [ %76, %block_0x1d5.i ], [ %78, %block_0x1c5.i ]
  %.sink.i = phi i32 [ %186, %block_0x1b5.i ], [ %167, %block_0x1e5.i ], [ %147, %block_0x1d5.i ], [ %145, %block_0x1c5.i ]
  %151 = inttoptr i64 %.sink3.i to i32*
  store i32 %.sink.i, i32* %151, align 4
  %152 = load i32, i32* %77, align 4, !mcsema_real_eip !45
  %153 = sext i32 %152 to i64, !mcsema_real_eip !45
  %154 = load i32, i32* %79, align 8, !mcsema_real_eip !46
  %155 = sext i32 %154 to i64, !mcsema_real_eip !46
  %156 = mul nsw i64 %155, 11, !mcsema_real_eip !47
  %157 = add i64 %153, ptrtoint (%0* @data_0x329 to i64)
  %158 = add i64 %157, %156, !mcsema_real_eip !48
  %159 = inttoptr i64 %158 to i8*
  %160 = load i8, i8* %159, align 1, !mcsema_real_eip !48
  %161 = sext i8 %160 to i64
  %162 = and i64 %161, 4294967295
  switch i8 %160, label %block_0x265.i [
    i8 35, label %block_0x320.i
    i8 32, label %block_0x2c4.i
  ]

block_0x179.i:                                    ; preds = %block_0x165.i
  %163 = load i32, i32* %98, align 4, !mcsema_real_eip !49
  %164 = add i32 %163, -100
  %165 = icmp eq i32 %164, 0, !mcsema_real_eip !50
  store i32 %164, i32* %104, align 8, !mcsema_real_eip !51
  br i1 %165, label %block_0x1e5.i, label %block_0x320.i, !mcsema_real_eip !52

block_0x1e5.i:                                    ; preds = %block_0x179.i
  %166 = load i32, i32* %77, align 4, !mcsema_real_eip !53
  %167 = add i32 %166, 1
  br label %block_0x201.i, !mcsema_real_eip !54

block_0x320.i:                                    ; preds = %block_0x2d0.i, %block_0x179.i, %block_0x201.i, %block_0x1a1.i
  %RSI_val.2.i = phi i64 [ %RSI_val.1.i, %block_0x179.i ], [ %RSI_val.1.i, %block_0x1a1.i ], [ %162, %block_0x201.i ], [ %162, %block_0x2d0.i ]
  %RDX_val.1.i = phi i64 [ %138, %block_0x179.i ], [ %138, %block_0x1a1.i ], [ %156, %block_0x201.i ], [ %156, %block_0x2d0.i ]
  %RCX_val.1.i = phi i64 [ %127, %block_0x179.i ], [ %127, %block_0x1a1.i ], [ %153, %block_0x201.i ], [ %153, %block_0x2d0.i ]
  %.sink4.i = phi i32 [ 1, %block_0x179.i ], [ 1, %block_0x1a1.i ], [ 0, %block_0x201.i ], [ 2, %block_0x2d0.i ]
  store i32 %.sink4.i, i32* %68, align 4
  %168 = zext i32 %.sink4.i to i64, !mcsema_real_eip !55
  %169 = xor i64 %64, %_local_stack_start_.i, !mcsema_real_eip !21
  %170 = and i64 %169, 16, !mcsema_real_eip !21
  %171 = icmp ne i64 %170, 0, !mcsema_real_eip !21
  %172 = icmp slt i64 %64, 0
  %173 = icmp eq i64 %64, 0, !mcsema_real_eip !21
  %174 = xor i64 %_local_stack_start_.i, -9223372036854775808, !mcsema_real_eip !21
  %175 = and i64 %169, %174, !mcsema_real_eip !21
  %176 = icmp slt i64 %175, 0
  %177 = trunc i64 %64 to i8, !mcsema_real_eip !21
  %178 = tail call i8 @llvm.ctpop.i8(i8 %177), !mcsema_real_eip !21
  %179 = and i8 %178, 1
  %180 = icmp eq i8 %179, 0
  %181 = icmp ugt [104 x i64]* %_local_stack_alloc_175.i, inttoptr (i64 -97 to [104 x i64]*)
  %182 = load i64, i64* %65, align 8, !mcsema_real_eip !22
  %183 = add i64 %_local_stack_start_.i, 112, !mcsema_real_eip !23
  store i64 %168, i64* %RAX.i, align 8, !mcsema_real_eip !23
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !23
  store i64 %RCX_val.1.i, i64* %RCX.i, align 8, !mcsema_real_eip !23
  store i64 %RDX_val.1.i, i64* %RDX.i, align 8, !mcsema_real_eip !23
  store i64 %RSI_val.2.i, i64* %RSI.i, align 8, !mcsema_real_eip !23
  store i64 0, i64* %RDI.i, align 8, !mcsema_real_eip !23
  store i64 %183, i64* %RSP.i, align 8, !mcsema_real_eip !23
  store i64 %182, i64* %RBP.i, align 8, !mcsema_real_eip !23
  %184 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 add (i64 ptrtoint (%0* @data_0x329 to i64), i64 11), i64 11>, <2 x i64>* %184, align 8
  store i64 %6, i64* %R10.i, align 8, !mcsema_real_eip !23
  store i64 %7, i64* %R11.i, align 8, !mcsema_real_eip !23
  store i64 %8, i64* %R12.i, align 8, !mcsema_real_eip !23
  store i64 %9, i64* %R13.i, align 8, !mcsema_real_eip !23
  store i64 %10, i64* %R14.i, align 8, !mcsema_real_eip !23
  store i64 %11, i64* %R15.i, align 8, !mcsema_real_eip !23
  store i64 %12, i64* %RIP.i, align 8, !mcsema_real_eip !23
  store i1 %181, i1* %CF.i, align 1, !mcsema_real_eip !23
  store i1 %180, i1* %PF.i, align 1, !mcsema_real_eip !23
  store i1 %171, i1* %AF.i, align 1, !mcsema_real_eip !23
  store i1 %173, i1* %ZF.i, align 1, !mcsema_real_eip !23
  store i1 %172, i1* %SF.i, align 1, !mcsema_real_eip !23
  store i1 %176, i1* %OF.i, align 1, !mcsema_real_eip !23
  store i1 %13, i1* %DF.i, align 1, !mcsema_real_eip !23
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !23
  store i1 %16, i1* %FPU_B.i, align 1, !mcsema_real_eip !23
  store i1 %17, i1* %FPU_C3.i, align 1, !mcsema_real_eip !23
  store i3 %18, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !23
  store i1 %19, i1* %FPU_C2.i, align 1, !mcsema_real_eip !23
  store i1 %20, i1* %FPU_C1.i, align 1, !mcsema_real_eip !23
  store i1 %21, i1* %FPU_C0.i, align 1, !mcsema_real_eip !23
  store i1 %22, i1* %FPU_ES.i, align 1, !mcsema_real_eip !23
  store i1 %23, i1* %FPU_SF.i, align 1, !mcsema_real_eip !23
  store i1 %24, i1* %FPU_PE.i, align 1, !mcsema_real_eip !23
  store i1 %25, i1* %FPU_UE.i, align 1, !mcsema_real_eip !23
  store i1 %26, i1* %FPU_OE.i, align 1, !mcsema_real_eip !23
  store i1 %27, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !23
  store i1 %28, i1* %FPU_DE.i, align 1, !mcsema_real_eip !23
  store i1 %29, i1* %FPU_IE.i, align 1, !mcsema_real_eip !23
  store i1 %30, i1* %FPU_X.i, align 1, !mcsema_real_eip !23
  store i2 %31, i2* %FPU_RC.i, align 1, !mcsema_real_eip !23
  store i2 %32, i2* %FPU_PC.i, align 1, !mcsema_real_eip !23
  store i1 %33, i1* %FPU_PM.i, align 1, !mcsema_real_eip !23
  store i1 %34, i1* %FPU_UM.i, align 1, !mcsema_real_eip !23
  store i1 %35, i1* %FPU_OM.i, align 1, !mcsema_real_eip !23
  store i1 %36, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !23
  store i1 %37, i1* %FPU_DM.i, align 1, !mcsema_real_eip !23
  store i1 %38, i1* %FPU_IM.i, align 1, !mcsema_real_eip !23
  store i64 %41, i64* %40, align 4
  store i16 %42, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !23
  store i64 %43, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !23
  store i16 %44, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !23
  store i64 %45, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !23
  store i128 %46, i128* %XMM0.i, align 1, !mcsema_real_eip !23
  store i128 %47, i128* %XMM1.i, align 1, !mcsema_real_eip !23
  store i128 %48, i128* %XMM2.i, align 1, !mcsema_real_eip !23
  store i128 %49, i128* %XMM3.i, align 1, !mcsema_real_eip !23
  store i128 %50, i128* %XMM4.i, align 1, !mcsema_real_eip !23
  store i128 %51, i128* %XMM5.i, align 1, !mcsema_real_eip !23
  store i128 %52, i128* %XMM6.i, align 1, !mcsema_real_eip !23
  store i128 %53, i128* %XMM7.i, align 1, !mcsema_real_eip !23
  store i128 %54, i128* %XMM8.i, align 1, !mcsema_real_eip !23
  store i128 %55, i128* %XMM9.i, align 1, !mcsema_real_eip !23
  store i128 %56, i128* %XMM10.i, align 1, !mcsema_real_eip !23
  store i128 %57, i128* %XMM11.i, align 1, !mcsema_real_eip !23
  store i128 %58, i128* %XMM12.i, align 1, !mcsema_real_eip !23
  store i128 %59, i128* %XMM13.i, align 1, !mcsema_real_eip !23
  store i128 %60, i128* %XMM14.i, align 1, !mcsema_real_eip !23
  store i128 %61, i128* %XMM15.i, align 1, !mcsema_real_eip !23
  store i64 %62, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !23
  store i64 %63, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !23
  call void @llvm.lifetime.end(i64 832, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  br label %sub_c0.exit

block_0x1b5.i:                                    ; preds = %block_0x1a1.i
  %185 = load i32, i32* %79, align 8, !mcsema_real_eip !56
  %186 = add i32 %185, -1
  br label %block_0x201.i, !mcsema_real_eip !57

block_0x2c4.i:                                    ; preds = %block_0x2ab.i, %block_0x201.i
  %187 = load i32, i32* %94, align 4, !mcsema_real_eip !58
  %188 = icmp eq i32 %187, %152
  br i1 %188, label %block_0x2d0.i, label %block_0x2e8.i, !mcsema_real_eip !59

block_0x265.i:                                    ; preds = %block_0x201.i
  %notlhs.i = icmp ne i32 %154, 2
  %notrhs.i = icmp ne i8 %160, 124
  %or.cond.not.i = or i1 %notlhs.i, %notrhs.i
  %189 = icmp slt i32 %152, 1
  %or.cond176.i = or i1 %189, %or.cond.not.i
  br i1 %or.cond176.i, label %block_0x2b8.i, label %block_0x2ab.i, !mcsema_real_eip !60

block_0x2b8.i:                                    ; preds = %block_0x2ab.i, %block_0x265.i
  %190 = load i32, i32* %94, align 4, !mcsema_real_eip !61
  store i32 %190, i32* %77, align 4, !mcsema_real_eip !62
  %191 = load i32, i32* %96, align 8, !mcsema_real_eip !63
  store i32 %191, i32* %79, align 8, !mcsema_real_eip !64
  %192 = load i32, i32* %94, align 4, !mcsema_real_eip !58
  %193 = load i32, i32* %77, align 4, !mcsema_real_eip !65
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %block_0x2d0.i, label %block_0x2e8.i, !mcsema_real_eip !59

block_0x2e8.i:                                    ; preds = %block_0x2d0.i, %block_0x2b8.i, %block_0x2c4.i
  %195 = phi i32 [ %212, %block_0x2d0.i ], [ %191, %block_0x2b8.i ], [ %154, %block_0x2c4.i ]
  %196 = phi i32 [ %211, %block_0x2d0.i ], [ %193, %block_0x2b8.i ], [ %152, %block_0x2c4.i ]
  %197 = sext i32 %196 to i64, !mcsema_real_eip !66
  %198 = sext i32 %195 to i64, !mcsema_real_eip !67
  %199 = mul nsw i64 %198, 11, !mcsema_real_eip !68
  %200 = add i64 %197, ptrtoint (%0* @data_0x329 to i64)
  %201 = add i64 %200, %199, !mcsema_real_eip !69
  %202 = inttoptr i64 %201 to i8*
  store i8 88, i8* %202, align 1, !mcsema_real_eip !69
  %203 = load i32, i32* %75, align 4, !mcsema_real_eip !70
  %204 = add i32 %203, 1
  %205 = zext i32 %204 to i64, !mcsema_real_eip !71
  store i32 %204, i32* %75, align 4, !mcsema_real_eip !72
  %206 = add i32 %203, -27
  %207 = icmp slt i32 %206, 0
  %208 = sub i32 26, %203
  %209 = and i32 %204, %208
  %210 = icmp slt i32 %209, 0
  %tmp157.i = xor i1 %207, %210
  br i1 %tmp157.i, label %block_0x13a.i, label %block_0x319.i.loopexit, !mcsema_real_eip !15

block_0x2d0.i:                                    ; preds = %block_0x2b8.i, %block_0x2c4.i
  %211 = phi i32 [ %192, %block_0x2b8.i ], [ %152, %block_0x2c4.i ]
  %212 = phi i32 [ %191, %block_0x2b8.i ], [ %154, %block_0x2c4.i ]
  %213 = load i32, i32* %96, align 8, !mcsema_real_eip !73
  %214 = icmp eq i32 %213, %212
  br i1 %214, label %block_0x320.i, label %block_0x2e8.i, !mcsema_real_eip !74

block_0x2ab.i:                                    ; preds = %block_0x265.i
  %215 = add i32 %152, -11
  %216 = icmp slt i32 %215, 0
  %217 = sub i32 10, %152
  %218 = and i32 %217, %152
  %219 = icmp slt i32 %218, 0
  %220 = xor i1 %216, %219
  br i1 %220, label %block_0x2c4.i, label %block_0x2b8.i, !mcsema_real_eip !75

sub_c0.exit:                                      ; preds = %block_0x320.i, %block_0x319.i
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #0

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 192, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 215, [22 x i8] c"\09leaq\09-64(%rbp), %rcx\00"}
!4 = !{i64 229, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!5 = !{i64 236, [21 x i8] c"\09movl\09%edi, -8(%rbp)\00"}
!6 = !{i64 239, [22 x i8] c"\09movq\09%rsi, -16(%rbp)\00"}
!7 = !{i64 243, [20 x i8] c"\09movl\09$0, -36(%rbp)\00"}
!8 = !{i64 250, [20 x i8] c"\09movl\09$1, -20(%rbp)\00"}
!9 = !{i64 257, [20 x i8] c"\09movl\09$1, -24(%rbp)\00"}
!10 = !{i64 264, [24 x i8] c"\09movslq\09-20(%rbp), %rsi\00"}
!11 = !{i64 282, [22 x i8] c"\09movb\09$88, (%r8,%rsi)\00"}
!12 = !{i64 292, [9 x i8] c"\09callq\090\00"}
!13 = !{i64 297, [22 x i8] c"\09movq\09%rax, -72(%rbp)\00"}
!14 = !{i64 301, [21 x i8] c"\09cmpl\09$28, -36(%rbp)\00"}
!15 = !{i64 308, [9 x i8] c"\09jge\09479\00"}
!16 = !{i64 317, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
!17 = !{i64 323, [22 x i8] c"\09movl\09%eax, -32(%rbp)\00"}
!18 = !{i64 340, [22 x i8] c"\09movl\09%eax, -76(%rbp)\00"}
!19 = !{i64 343, [22 x i8] c"\09movl\09%edx, -80(%rbp)\00"}
!20 = !{i64 793, [19 x i8] c"\09movl\09$1, -4(%rbp)\00"}
!21 = !{i64 803, [16 x i8] c"\09addq\09$96, %rsp\00"}
!22 = !{i64 807, [11 x i8] c"\09popq\09%rbp\00"}
!23 = !{i64 808, [6 x i8] c"\09retq\00"}
!24 = !{i64 314, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!25 = !{i64 320, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!26 = !{i64 326, [24 x i8] c"\09movslq\09-36(%rbp), %rcx\00"}
!27 = !{i64 330, [29 x i8] c"\09movsbl\09-64(%rbp,%rcx), %eax\00"}
!28 = !{i64 337, [17 x i8] c"\09subl\09$114, %edx\00"}
!29 = !{i64 397, [22 x i8] c"\09movl\09-76(%rbp), %eax\00"}
!30 = !{i64 346, [7 x i8] c"\09jg\0945\00"}
!31 = !{i64 400, [17 x i8] c"\09subl\09$115, %eax\00"}
!32 = !{i64 403, [22 x i8] c"\09movl\09%eax, -92(%rbp)\00"}
!33 = !{i64 406, [7 x i8] c"\09je\0941\00"}
!34 = !{i64 360, [16 x i8] c"\09subl\09$97, %eax\00"}
!35 = !{i64 363, [22 x i8] c"\09movl\09%eax, -84(%rbp)\00"}
!36 = !{i64 366, [7 x i8] c"\09je\0997\00"}
!37 = !{i64 453, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!38 = !{i64 464, [8 x i8] c"\09jmp\0944\00"}
!39 = !{i64 469, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!40 = !{i64 480, [8 x i8] c"\09jmp\0928\00"}
!41 = !{i64 417, [22 x i8] c"\09movl\09-76(%rbp), %eax\00"}
!42 = !{i64 420, [17 x i8] c"\09subl\09$119, %eax\00"}
!43 = !{i64 423, [22 x i8] c"\09movl\09%eax, -96(%rbp)\00"}
!44 = !{i64 426, [8 x i8] c"\09jne\0969\00"}
!45 = !{i64 523, [24 x i8] c"\09movslq\09-20(%rbp), %rcx\00"}
!46 = !{i64 527, [24 x i8] c"\09movslq\09-24(%rbp), %rdx\00"}
!47 = !{i64 531, [18 x i8] c"\09imulq\09 $11, %rdx\00"}
!48 = !{i64 541, [26 x i8] c"\09movsbl\09(%rax,%rcx), %esi\00"}
!49 = !{i64 377, [22 x i8] c"\09movl\09-76(%rbp), %eax\00"}
!50 = !{i64 380, [17 x i8] c"\09subl\09$100, %eax\00"}
!51 = !{i64 383, [22 x i8] c"\09movl\09%eax, -88(%rbp)\00"}
!52 = !{i64 386, [7 x i8] c"\09je\0993\00"}
!53 = !{i64 485, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!54 = !{i64 496, [8 x i8] c"\09jmp\0912\00"}
!55 = !{i64 800, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!56 = !{i64 437, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!57 = !{i64 448, [8 x i8] c"\09jmp\0960\00"}
!58 = !{i64 708, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!59 = !{i64 714, [8 x i8] c"\09jne\0924\00"}
!60 = !{i64 620, [8 x i8] c"\09jne\0970\00"}
!61 = !{i64 696, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!62 = !{i64 699, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!63 = !{i64 702, [22 x i8] c"\09movl\09-32(%rbp), %eax\00"}
!64 = !{i64 705, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!65 = !{i64 711, [22 x i8] c"\09cmpl\09-20(%rbp), %eax\00"}
!66 = !{i64 754, [24 x i8] c"\09movslq\09-20(%rbp), %rcx\00"}
!67 = !{i64 758, [24 x i8] c"\09movslq\09-24(%rbp), %rdx\00"}
!68 = !{i64 762, [18 x i8] c"\09imulq\09 $11, %rdx\00"}
!69 = !{i64 772, [23 x i8] c"\09movb\09$88, (%rax,%rcx)\00"}
!70 = !{i64 776, [22 x i8] c"\09movl\09-36(%rbp), %esi\00"}
!71 = !{i64 779, [15 x i8] c"\09addl\09$1, %esi\00"}
!72 = !{i64 785, [22 x i8] c"\09movl\09%esi, -36(%rbp)\00"}
!73 = !{i64 720, [22 x i8] c"\09movl\09-32(%rbp), %eax\00"}
!74 = !{i64 726, [8 x i8] c"\09jne\0912\00"}
!75 = !{i64 690, [7 x i8] c"\09jl\0912\00"}
