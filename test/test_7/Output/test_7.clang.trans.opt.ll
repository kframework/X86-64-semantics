; ModuleID = 'Output/test_7.clang.trans.opt.bc'
source_filename = "Output/test_7.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

declare x86_64_sysvcc i64 @malloc(i64 inreg) local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: noreturn
define void @mcsema_main(%struct.regs*) local_unnamed_addr #2 {
driverBlockRaw:
  %_local_stack_alloc_124.i = alloca [176 x i64], align 8
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %1 = bitcast [176 x i64]* %_local_stack_alloc_124.i to i8*
  call void @llvm.lifetime.start(i64 1408, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_start_.i = ptrtoint [176 x i64]* %_local_stack_alloc_124.i to i64
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %2 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %3 = load i64, i64* %RBP.i, align 8, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %4 = bitcast i64* %R12.i to <2 x i64>*
  %5 = load <2 x i64>, <2 x i64>* %4, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %6 = load i64, i64* %R14.i, align 8, !mcsema_real_eip !2
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %7 = load i64, i64* %R15.i, align 8, !mcsema_real_eip !2
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %8 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %9 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !2
  %10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %11 = bitcast x86_fp80* %10 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %11, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %12 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %13 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %14 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %15 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %16 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %17 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %18 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %19 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %27 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %28 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %35 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %36 = bitcast i8* %35 to i64*
  %37 = load i64, i64* %36, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %38 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %39 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %40 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %41 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %42 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %43 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %44 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %45 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %46 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %47 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %48 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %49 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %58 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %59 = load <2 x i64>, <2 x i64>* %58, align 8
  %60 = add i64 %_local_stack_start_.i, 168
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !2
  store i64 %3, i64* %61, align 8, !mcsema_real_eip !2
  %62 = add i64 %_local_stack_start_.i, 160
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !3
  store i64 %6, i64* %63, align 8, !mcsema_real_eip !3
  %64 = add i64 %_local_stack_start_.i, 152
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !4
  store i64 %2, i64* %65, align 8, !mcsema_real_eip !4
  %66 = add i64 %_local_stack_start_.i, 148, !mcsema_real_eip !5
  %67 = inttoptr i64 %66 to i32*
  store i32 0, i32* %67, align 4, !mcsema_real_eip !5
  %68 = add i64 %_local_stack_start_.i, 144, !mcsema_real_eip !6
  %69 = inttoptr i64 %68 to i32*
  store i32 1, i32* %69, align 8, !mcsema_real_eip !6
  %70 = add i64 %_local_stack_start_.i, 100, !mcsema_real_eip !7
  %71 = inttoptr i64 %70 to i32*
  store i32 0, i32* %71, align 4, !mcsema_real_eip !7
  %72 = add i64 %_local_stack_start_.i, 104, !mcsema_real_eip !8
  br label %block_0x16d.i

block_0x189.i:                                    ; preds = %block_0x16d.i
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %73 = add i64 %_local_stack_start_.i, 88, !mcsema_real_eip !9
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !9
  store i64 %68, i64* %74, align 8, !mcsema_real_eip !9
  %75 = tail call x86_64_sysvcc i64 @malloc(i64 40), !mcsema_real_eip !10
  %76 = add i64 %_local_stack_start_.i, 80, !mcsema_real_eip !11
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !11
  store i64 %75, i64* %77, align 8, !mcsema_real_eip !11
  %78 = add i64 %_local_stack_start_.i, 76, !mcsema_real_eip !12
  %79 = inttoptr i64 %78 to i32*
  store i32 0, i32* %79, align 4, !mcsema_real_eip !12
  br label %block_0x1b2.i

block_0x16d.i:                                    ; preds = %block_0x16d.i, %driverBlockRaw
  %80 = phi i32 [ 0, %driverBlockRaw ], [ %87, %block_0x16d.i ]
  %81 = add i32 %80, 1
  %82 = sext i32 %80 to i64, !mcsema_real_eip !13
  %83 = shl nsw i64 %82, 2
  %84 = add i64 %83, %72, !mcsema_real_eip !8
  %85 = inttoptr i64 %84 to i32*
  store i32 %81, i32* %85, align 4, !mcsema_real_eip !8
  %86 = load i32, i32* %71, align 4, !mcsema_real_eip !14
  %87 = add i32 %86, 1
  store i32 %87, i32* %71, align 4, !mcsema_real_eip !15
  %88 = add i32 %86, -9
  %89 = icmp slt i32 %88, 0
  %90 = sub i32 8, %86
  %91 = and i32 %87, %90
  %92 = icmp slt i32 %91, 0
  %tmp210.i = xor i1 %89, %92
  br i1 %tmp210.i, label %block_0x16d.i, label %block_0x189.i, !mcsema_real_eip !16

block_0x1d1.i:                                    ; preds = %block_0x1b2.i
  %_local_stack_alloc_124.sub.i = getelementptr inbounds [176 x i64], [176 x i64]* %_local_stack_alloc_124.i, i64 0, i64 0
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %93 = add i64 %_local_stack_start_.i, 8
  %94 = icmp ult i32 %136, 10, !mcsema_real_eip !17
  %95 = icmp eq i32 %137, 0, !mcsema_real_eip !17
  %96 = trunc i32 %137 to i8, !mcsema_real_eip !17
  %97 = tail call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !17
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  %100 = and i32 %138, 16, !mcsema_real_eip !17
  %101 = icmp ne i32 %100, 0, !mcsema_real_eip !17
  %102 = load i32, i32* %69, align 8, !mcsema_real_eip !18
  %103 = zext i32 %102 to i64, !mcsema_real_eip !18
  %104 = load i64, i64* %74, align 8, !mcsema_real_eip !19
  %105 = load i64, i64* %77, align 8, !mcsema_real_eip !20
  %106 = add i64 %_local_stack_start_.i, 64, !mcsema_real_eip !21
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !21
  store i64 %105, i64* %107, align 8, !mcsema_real_eip !21
  %108 = add i64 %_local_stack_start_.i, 56, !mcsema_real_eip !22
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !22
  store i64 %72, i64* %109, align 8, !mcsema_real_eip !22
  %110 = add i64 %_local_stack_start_.i, 52, !mcsema_real_eip !23
  %111 = inttoptr i64 %110 to i32*
  store i32 %102, i32* %111, align 4, !mcsema_real_eip !23
  %112 = add i64 %_local_stack_start_.i, 40, !mcsema_real_eip !24
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !24
  store i64 %104, i64* %113, align 8, !mcsema_real_eip !24
  %114 = load i32, i32* %111, align 4, !mcsema_real_eip !25
  %115 = zext i32 %114 to i64, !mcsema_real_eip !25
  %116 = inttoptr i64 %93 to i32*
  store i32 %114, i32* %116, align 8, !mcsema_real_eip !26
  %117 = load i64, i64* %109, align 8, !mcsema_real_eip !27
  %118 = add i64 %_local_stack_start_.i, 16, !mcsema_real_eip !28
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !28
  store i64 %117, i64* %119, align 8, !mcsema_real_eip !28
  %120 = load i64, i64* %113, align 8, !mcsema_real_eip !29
  %121 = add i64 %_local_stack_start_.i, 24, !mcsema_real_eip !30
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !30
  store i64 %120, i64* %122, align 8, !mcsema_real_eip !30
  %123 = add i64 %_local_stack_start_.i, 32, !mcsema_real_eip !31
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !31
  store i64 %105, i64* %124, align 8, !mcsema_real_eip !31
  store i64 -4981261766360305936, i64* %_local_stack_alloc_124.sub.i, align 8, !mcsema_real_eip !32
  store i64 %115, i64* %RAX.i, align 8, !mcsema_real_eip !32
  store i64 %117, i64* %RBX.i, align 8, !mcsema_real_eip !32
  store i64 %105, i64* %RCX.i, align 8, !mcsema_real_eip !32
  store i64 %104, i64* %RDX.i, align 8, !mcsema_real_eip !32
  store i64 %72, i64* %RSI.i, align 8, !mcsema_real_eip !32
  store i64 %103, i64* %RDI.i, align 8, !mcsema_real_eip !32
  store i64 %_local_stack_start_.i, i64* %RSP.i, align 8, !mcsema_real_eip !32
  store i64 %60, i64* %RBP.i, align 8, !mcsema_real_eip !32
  %125 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 10, i64 10>, <2 x i64>* %125, align 8
  store i64 %105, i64* %R10.i, align 8, !mcsema_real_eip !32
  store i64 %105, i64* %R11.i, align 8, !mcsema_real_eip !32
  %126 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %5, <2 x i64>* %126, align 8
  store i64 %120, i64* %R14.i, align 8, !mcsema_real_eip !32
  store i64 %7, i64* %R15.i, align 8, !mcsema_real_eip !32
  store i64 %8, i64* %RIP.i, align 8, !mcsema_real_eip !32
  store i1 %94, i1* %CF.i, align 1, !mcsema_real_eip !32
  store i1 %99, i1* %PF.i, align 1, !mcsema_real_eip !32
  store i1 %101, i1* %AF.i, align 1, !mcsema_real_eip !32
  store i1 %95, i1* %ZF.i, align 1, !mcsema_real_eip !32
  store i1 %139, i1* %SF.i, align 1, !mcsema_real_eip !32
  store i1 %141, i1* %OF.i, align 1, !mcsema_real_eip !32
  store i1 %9, i1* %DF.i, align 1, !mcsema_real_eip !32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !32
  store i1 %12, i1* %FPU_B.i, align 1, !mcsema_real_eip !32
  store i1 %13, i1* %FPU_C3.i, align 1, !mcsema_real_eip !32
  store i3 %14, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !32
  store i1 %15, i1* %FPU_C2.i, align 1, !mcsema_real_eip !32
  store i1 %16, i1* %FPU_C1.i, align 1, !mcsema_real_eip !32
  store i1 %17, i1* %FPU_C0.i, align 1, !mcsema_real_eip !32
  store i1 %18, i1* %FPU_ES.i, align 1, !mcsema_real_eip !32
  store i1 %19, i1* %FPU_SF.i, align 1, !mcsema_real_eip !32
  store i1 %20, i1* %FPU_PE.i, align 1, !mcsema_real_eip !32
  store i1 %21, i1* %FPU_UE.i, align 1, !mcsema_real_eip !32
  store i1 %22, i1* %FPU_OE.i, align 1, !mcsema_real_eip !32
  store i1 %23, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !32
  store i1 %24, i1* %FPU_DE.i, align 1, !mcsema_real_eip !32
  store i1 %25, i1* %FPU_IE.i, align 1, !mcsema_real_eip !32
  store i1 %26, i1* %FPU_X.i, align 1, !mcsema_real_eip !32
  store i2 %27, i2* %FPU_RC.i, align 1, !mcsema_real_eip !32
  store i2 %28, i2* %FPU_PC.i, align 1, !mcsema_real_eip !32
  store i1 %29, i1* %FPU_PM.i, align 1, !mcsema_real_eip !32
  store i1 %30, i1* %FPU_UM.i, align 1, !mcsema_real_eip !32
  store i1 %31, i1* %FPU_OM.i, align 1, !mcsema_real_eip !32
  store i1 %32, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !32
  store i1 %33, i1* %FPU_DM.i, align 1, !mcsema_real_eip !32
  store i1 %34, i1* %FPU_IM.i, align 1, !mcsema_real_eip !32
  store i64 %37, i64* %36, align 4
  store i16 %38, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !32
  store i64 %39, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !32
  store i16 %40, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !32
  store i64 %41, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !32
  store i128 %42, i128* %XMM0.i, align 1, !mcsema_real_eip !32
  store i128 %43, i128* %XMM1.i, align 1, !mcsema_real_eip !32
  store i128 %44, i128* %XMM2.i, align 1, !mcsema_real_eip !32
  store i128 %45, i128* %XMM3.i, align 1, !mcsema_real_eip !32
  store i128 %46, i128* %XMM4.i, align 1, !mcsema_real_eip !32
  store i128 %47, i128* %XMM5.i, align 1, !mcsema_real_eip !32
  store i128 %48, i128* %XMM6.i, align 1, !mcsema_real_eip !32
  store i128 %49, i128* %XMM7.i, align 1, !mcsema_real_eip !32
  store i128 %50, i128* %XMM8.i, align 1, !mcsema_real_eip !32
  store i128 %51, i128* %XMM9.i, align 1, !mcsema_real_eip !32
  store i128 %52, i128* %XMM10.i, align 1, !mcsema_real_eip !32
  store i128 %53, i128* %XMM11.i, align 1, !mcsema_real_eip !32
  store i128 %54, i128* %XMM12.i, align 1, !mcsema_real_eip !32
  store i128 %55, i128* %XMM13.i, align 1, !mcsema_real_eip !32
  store i128 %56, i128* %XMM14.i, align 1, !mcsema_real_eip !32
  store i128 %57, i128* %XMM15.i, align 1, !mcsema_real_eip !32
  %127 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %59, <2 x i64>* %127, align 1
  call void @llvm.trap()
  unreachable

block_0x1b2.i:                                    ; preds = %block_0x1b2.i, %block_0x189.i
  %128 = phi i32 [ 0, %block_0x189.i ], [ %136, %block_0x1b2.i ]
  %129 = add i32 %128, 1
  %130 = sext i32 %128 to i64, !mcsema_real_eip !33
  %131 = load i64, i64* %77, align 8, !mcsema_real_eip !34
  %132 = shl nsw i64 %130, 2
  %133 = add i64 %132, %131, !mcsema_real_eip !35
  %134 = inttoptr i64 %133 to i32*
  store i32 %129, i32* %134, align 4, !mcsema_real_eip !35
  %135 = load i32, i32* %79, align 4, !mcsema_real_eip !36
  %136 = add i32 %135, 1
  store i32 %136, i32* %79, align 4, !mcsema_real_eip !37
  %137 = add i32 %135, -9
  %138 = xor i32 %137, %136, !mcsema_real_eip !17
  %139 = icmp slt i32 %137, 0
  %140 = and i32 %138, %136, !mcsema_real_eip !17
  %141 = icmp slt i32 %140, 0
  %tmp214.i = xor i1 %139, %141
  br i1 %tmp214.i, label %block_0x1b2.i, label %block_0x1d1.i, !mcsema_real_eip !38
}

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 320, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 324, [12 x i8] c"\09pushq\09%r14\00"}
!4 = !{i64 326, [12 x i8] c"\09pushq\09%rbx\00"}
!5 = !{i64 334, [20 x i8] c"\09movl\09$0, -20(%rbp)\00"}
!6 = !{i64 341, [20 x i8] c"\09movl\09$1, -24(%rbp)\00"}
!7 = !{i64 348, [20 x i8] c"\09movl\09$0, -68(%rbp)\00"}
!8 = !{i64 375, [29 x i8] c"\09movl\09%eax, -64(%rbp,%rcx,4)\00"}
!9 = !{i64 404, [22 x i8] c"\09movq\09%rcx, -80(%rbp)\00"}
!10 = !{i64 408, [9 x i8] c"\09callq\090\00"}
!11 = !{i64 413, [22 x i8] c"\09movq\09%rax, -88(%rbp)\00"}
!12 = !{i64 417, [20 x i8] c"\09movl\09$0, -92(%rbp)\00"}
!13 = !{i64 371, [24 x i8] c"\09movslq\09-68(%rbp), %rcx\00"}
!14 = !{i64 379, [22 x i8] c"\09movl\09-68(%rbp), %eax\00"}
!15 = !{i64 385, [22 x i8] c"\09movl\09%eax, -68(%rbp)\00"}
!16 = !{i64 359, [8 x i8] c"\09jge\0928\00"}
!17 = !{i64 424, [21 x i8] c"\09cmpl\09$10, -92(%rbp)\00"}
!18 = !{i64 474, [22 x i8] c"\09movl\09-24(%rbp), %edi\00"}
!19 = !{i64 477, [22 x i8] c"\09movq\09-80(%rbp), %rdx\00"}
!20 = !{i64 481, [22 x i8] c"\09movq\09-88(%rbp), %rsi\00"}
!21 = !{i64 497, [23 x i8] c"\09movq\09%rsi, -104(%rbp)\00"}
!22 = !{i64 508, [23 x i8] c"\09movq\09%rcx, -112(%rbp)\00"}
!23 = !{i64 515, [23 x i8] c"\09movl\09%r8d, -116(%rbp)\00"}
!24 = !{i64 522, [22 x i8] c"\09movq\09%r9, -128(%rbp)\00"}
!25 = !{i64 529, [23 x i8] c"\09movl\09-116(%rbp), %eax\00"}
!26 = !{i64 532, [19 x i8] c"\09movl\09%eax, (%rsp)\00"}
!27 = !{i64 535, [23 x i8] c"\09movq\09-112(%rbp), %rbx\00"}
!28 = !{i64 539, [20 x i8] c"\09movq\09%rbx, 8(%rsp)\00"}
!29 = !{i64 544, [23 x i8] c"\09movq\09-128(%rbp), %r14\00"}
!30 = !{i64 548, [21 x i8] c"\09movq\09%r14, 16(%rsp)\00"}
!31 = !{i64 553, [21 x i8] c"\09movq\09%r10, 24(%rsp)\00"}
!32 = !{i64 558, [12 x i8] c"\09callq\09-563\00"}
!33 = !{i64 440, [24 x i8] c"\09movslq\09-92(%rbp), %rcx\00"}
!34 = !{i64 444, [22 x i8] c"\09movq\09-88(%rbp), %rdx\00"}
!35 = !{i64 448, [26 x i8] c"\09movl\09%eax, (%rdx,%rcx,4)\00"}
!36 = !{i64 451, [22 x i8] c"\09movl\09-92(%rbp), %eax\00"}
!37 = !{i64 457, [22 x i8] c"\09movl\09%eax, -92(%rbp)\00"}
!38 = !{i64 428, [8 x i8] c"\09jge\0931\00"}
