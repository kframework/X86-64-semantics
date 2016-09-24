; ModuleID = 'Output/test_20.clang.trans.opt.bc'
source_filename = "Output/test_20.clang.bc"
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
  %_local_stack_alloc_162.i = alloca [92 x i64], align 8
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %1 = bitcast [92 x i64]* %_local_stack_alloc_162.i to i8*
  call void @llvm.lifetime.start(i64 736, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_start_.i = ptrtoint [92 x i64]* %_local_stack_alloc_162.i to i64
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %2 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %3 = load i64, i64* %RCX.i, align 8, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %4 = load i64, i64* %RDX.i, align 8, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %5 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %6 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %7 = load i64, i64* %RBP.i, align 8, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %8 = load i64, i64* %R8.i, align 8, !mcsema_real_eip !2
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %9 = load i64, i64* %R9.i, align 8, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %10 = load i64, i64* %R10.i, align 8, !mcsema_real_eip !2
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %11 = load i64, i64* %R11.i, align 8, !mcsema_real_eip !2
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %12 = load i64, i64* %R12.i, align 8, !mcsema_real_eip !2
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %13 = load i64, i64* %R13.i, align 8, !mcsema_real_eip !2
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %14 = load i64, i64* %R14.i, align 8, !mcsema_real_eip !2
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %15 = load i64, i64* %R15.i, align 8, !mcsema_real_eip !2
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %16 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %17 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !2
  %18 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %19, i32 128, i32 4, i1 false) #2, !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %22 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %35 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %36 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %37 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %38 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %39 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %40 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %41 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %42 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %43 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %44 = bitcast i8* %43 to i64*
  %45 = load i64, i64* %44, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %46 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %47 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %48 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %49 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
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
  %66 = load i64, i64* %STACK_BASE.i, align 8, !mcsema_real_eip !2
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %67 = load i64, i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !2
  %68 = add i64 %_local_stack_start_.i, 84
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !2
  store i64 %7, i64* %69, align 8, !mcsema_real_eip !2
  %70 = add i64 %_local_stack_start_.i, 80, !mcsema_real_eip !3
  %71 = trunc i64 %6 to i32, !mcsema_real_eip !3
  %72 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %72, align 8, !mcsema_real_eip !3
  %73 = add i64 %_local_stack_start_.i, 76, !mcsema_real_eip !4
  %74 = inttoptr i64 %73 to i32*
  store i32 0, i32* %74, align 4, !mcsema_real_eip !4
  %75 = load i32, i32* %72, align 8, !mcsema_real_eip !5
  %76 = zext i32 %75 to i64, !mcsema_real_eip !5
  %77 = icmp eq i32 %75, 0, !mcsema_real_eip !6
  %78 = add i64 %_local_stack_start_.i, 72, !mcsema_real_eip !7
  %79 = inttoptr i64 %78 to i32*
  store i32 %75, i32* %79, align 8, !mcsema_real_eip !7
  br i1 %77, label %block_0x19f.i, label %block_0x21.i, !mcsema_real_eip !8

block_0x19f.i:                                    ; preds = %driverBlockRaw
  %80 = load i32, i32* %74, align 4, !mcsema_real_eip !9
  %81 = trunc i32 %80 to i8, !mcsema_real_eip !10
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81) #2, !mcsema_real_eip !10
  br label %block_0x2c8.i, !mcsema_real_eip !11

block_0x21.i:                                     ; preds = %driverBlockRaw
  %83 = add i32 %75, -1
  %84 = icmp eq i32 %83, 0, !mcsema_real_eip !12
  %85 = add i64 %_local_stack_start_.i, 68, !mcsema_real_eip !13
  %86 = inttoptr i64 %85 to i32*
  store i32 %83, i32* %86, align 4, !mcsema_real_eip !13
  br i1 %84, label %block_0x1ad.i, label %block_0x35.i, !mcsema_real_eip !14

block_0x2c8.i:                                    ; preds = %block_0x2af.i, %block_0x29f.i, %block_0x28f.i, %block_0x27f.i, %block_0x26f.i, %block_0x25f.i, %block_0x24f.i, %block_0x23f.i, %block_0x22f.i, %block_0x21f.i, %block_0x20f.i, %block_0x201.i, %block_0x1f3.i, %block_0x1e5.i, %block_0x1d7.i, %block_0x1c9.i, %block_0x1bb.i, %block_0x1ad.i, %block_0x19f.i
  %ZF_val.0.in.i = phi i32 [ %80, %block_0x19f.i ], [ %91, %block_0x1ad.i ], [ %107, %block_0x1bb.i ], [ %123, %block_0x1c9.i ], [ %139, %block_0x1d7.i ], [ %155, %block_0x1e5.i ], [ %171, %block_0x1f3.i ], [ %187, %block_0x201.i ], [ %203, %block_0x20f.i ], [ %219, %block_0x21f.i ], [ %235, %block_0x22f.i ], [ %251, %block_0x23f.i ], [ %267, %block_0x24f.i ], [ %283, %block_0x25f.i ], [ %299, %block_0x26f.i ], [ %315, %block_0x27f.i ], [ %331, %block_0x28f.i ], [ %347, %block_0x29f.i ], [ %362, %block_0x2af.i ]
  %PF_val.0.in.in.i = phi i8 [ %82, %block_0x19f.i ], [ %99, %block_0x1ad.i ], [ %115, %block_0x1bb.i ], [ %131, %block_0x1c9.i ], [ %147, %block_0x1d7.i ], [ %163, %block_0x1e5.i ], [ %179, %block_0x1f3.i ], [ %195, %block_0x201.i ], [ %211, %block_0x20f.i ], [ %227, %block_0x21f.i ], [ %243, %block_0x22f.i ], [ %259, %block_0x23f.i ], [ %275, %block_0x24f.i ], [ %291, %block_0x25f.i ], [ %307, %block_0x26f.i ], [ %323, %block_0x27f.i ], [ %339, %block_0x28f.i ], [ %355, %block_0x29f.i ], [ %370, %block_0x2af.i ]
  %AF_val.0.i = phi i1 [ false, %block_0x19f.i ], [ %94, %block_0x1ad.i ], [ %110, %block_0x1bb.i ], [ %126, %block_0x1c9.i ], [ %142, %block_0x1d7.i ], [ %158, %block_0x1e5.i ], [ %174, %block_0x1f3.i ], [ %190, %block_0x201.i ], [ %206, %block_0x20f.i ], [ %222, %block_0x21f.i ], [ %238, %block_0x22f.i ], [ %254, %block_0x23f.i ], [ %270, %block_0x24f.i ], [ %286, %block_0x25f.i ], [ %302, %block_0x26f.i ], [ %318, %block_0x27f.i ], [ %334, %block_0x28f.i ], [ %350, %block_0x29f.i ], [ %365, %block_0x2af.i ]
  %CF_val.0.i = phi i1 [ false, %block_0x19f.i ], [ %100, %block_0x1ad.i ], [ %116, %block_0x1bb.i ], [ %132, %block_0x1c9.i ], [ %148, %block_0x1d7.i ], [ %164, %block_0x1e5.i ], [ %180, %block_0x1f3.i ], [ %196, %block_0x201.i ], [ %212, %block_0x20f.i ], [ %228, %block_0x21f.i ], [ %244, %block_0x22f.i ], [ %260, %block_0x23f.i ], [ %276, %block_0x24f.i ], [ %292, %block_0x25f.i ], [ %308, %block_0x26f.i ], [ %324, %block_0x27f.i ], [ %340, %block_0x28f.i ], [ %356, %block_0x29f.i ], [ %371, %block_0x2af.i ]
  %OF_val.0.i = phi i1 [ false, %block_0x19f.i ], [ %97, %block_0x1ad.i ], [ %113, %block_0x1bb.i ], [ %129, %block_0x1c9.i ], [ %145, %block_0x1d7.i ], [ %161, %block_0x1e5.i ], [ %177, %block_0x1f3.i ], [ %193, %block_0x201.i ], [ %209, %block_0x20f.i ], [ %225, %block_0x21f.i ], [ %241, %block_0x22f.i ], [ %257, %block_0x23f.i ], [ %273, %block_0x24f.i ], [ %289, %block_0x25f.i ], [ %305, %block_0x26f.i ], [ %321, %block_0x27f.i ], [ %337, %block_0x28f.i ], [ %353, %block_0x29f.i ], [ %368, %block_0x2af.i ]
  %PF_val.0.in.i = and i8 %PF_val.0.in.in.i, 1
  %SF_val.0.i = icmp slt i32 %ZF_val.0.in.i, 0
  %PF_val.0.i = icmp eq i8 %PF_val.0.in.i, 0
  %ZF_val.0.i = icmp eq i32 %ZF_val.0.in.i, 0
  store i32 %ZF_val.0.in.i, i32* %74, align 4
  %87 = zext i32 %ZF_val.0.in.i to i64, !mcsema_real_eip !15
  %88 = load i64, i64* %69, align 8, !mcsema_real_eip !16
  %89 = add i64 %_local_stack_start_.i, 100, !mcsema_real_eip !17
  store i64 %87, i64* %RAX.i, align 8, !mcsema_real_eip !17
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !17
  store i64 %3, i64* %RCX.i, align 8, !mcsema_real_eip !17
  store i64 %4, i64* %RDX.i, align 8, !mcsema_real_eip !17
  store i64 %5, i64* %RSI.i, align 8, !mcsema_real_eip !17
  store i64 %76, i64* %RDI.i, align 8, !mcsema_real_eip !17
  store i64 %89, i64* %RSP.i, align 8, !mcsema_real_eip !17
  store i64 %88, i64* %RBP.i, align 8, !mcsema_real_eip !17
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !17
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !17
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !17
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !17
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !17
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !17
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !17
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !17
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !17
  store i1 %CF_val.0.i, i1* %CF.i, align 1, !mcsema_real_eip !17
  store i1 %PF_val.0.i, i1* %PF.i, align 1, !mcsema_real_eip !17
  store i1 %AF_val.0.i, i1* %AF.i, align 1, !mcsema_real_eip !17
  store i1 %ZF_val.0.i, i1* %ZF.i, align 1, !mcsema_real_eip !17
  store i1 %SF_val.0.i, i1* %SF.i, align 1, !mcsema_real_eip !17
  store i1 %OF_val.0.i, i1* %OF.i, align 1, !mcsema_real_eip !17
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !17
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !17
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !17
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !17
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !17
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !17
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !17
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !17
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !17
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !17
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !17
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !17
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !17
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !17
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !17
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !17
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !17
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !17
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !17
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !17
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !17
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !17
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !17
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !17
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !17
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !17
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !17
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !17
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !17
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !17
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !17
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !17
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !17
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !17
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !17
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !17
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !17
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !17
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !17
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !17
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !17
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !17
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !17
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !17
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !17
  store i64 %66, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !17
  store i64 %67, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !17
  call void @llvm.lifetime.end(i64 736, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  br label %sub_0.exit

block_0x1ad.i:                                    ; preds = %block_0x21.i
  %90 = load i32, i32* %74, align 4, !mcsema_real_eip !18
  %uadd155.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %90, i32 1) #2
  %91 = extractvalue { i32, i1 } %uadd155.i, 0
  %92 = xor i32 %91, %90, !mcsema_real_eip !19
  %93 = and i32 %92, 16, !mcsema_real_eip !19
  %94 = icmp ne i32 %93, 0, !mcsema_real_eip !19
  %95 = xor i32 %90, -2147483648, !mcsema_real_eip !19
  %96 = and i32 %92, %95, !mcsema_real_eip !19
  %97 = icmp slt i32 %96, 0
  %98 = trunc i32 %91 to i8, !mcsema_real_eip !19
  %99 = tail call i8 @llvm.ctpop.i8(i8 %98) #2, !mcsema_real_eip !19
  %100 = extractvalue { i32, i1 } %uadd155.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !20

block_0x35.i:                                     ; preds = %block_0x21.i
  %101 = load i32, i32* %79, align 8, !mcsema_real_eip !21
  %102 = add i32 %101, -2
  %103 = icmp eq i32 %102, 0, !mcsema_real_eip !22
  %104 = add i64 %_local_stack_start_.i, 64, !mcsema_real_eip !23
  %105 = inttoptr i64 %104 to i32*
  store i32 %102, i32* %105, align 8, !mcsema_real_eip !23
  br i1 %103, label %block_0x1bb.i, label %block_0x49.i, !mcsema_real_eip !24

block_0x1bb.i:                                    ; preds = %block_0x35.i
  %106 = load i32, i32* %74, align 4, !mcsema_real_eip !25
  %uadd154.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %106, i32 2) #2
  %107 = extractvalue { i32, i1 } %uadd154.i, 0
  %108 = xor i32 %107, %106, !mcsema_real_eip !26
  %109 = and i32 %108, 16, !mcsema_real_eip !26
  %110 = icmp ne i32 %109, 0, !mcsema_real_eip !26
  %111 = xor i32 %106, -2147483648, !mcsema_real_eip !26
  %112 = and i32 %108, %111, !mcsema_real_eip !26
  %113 = icmp slt i32 %112, 0
  %114 = trunc i32 %107 to i8, !mcsema_real_eip !26
  %115 = tail call i8 @llvm.ctpop.i8(i8 %114) #2, !mcsema_real_eip !26
  %116 = extractvalue { i32, i1 } %uadd154.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !27

block_0x49.i:                                     ; preds = %block_0x35.i
  %117 = load i32, i32* %79, align 8, !mcsema_real_eip !28
  %118 = add i32 %117, -4
  %119 = icmp eq i32 %118, 0, !mcsema_real_eip !29
  %120 = add i64 %_local_stack_start_.i, 60, !mcsema_real_eip !30
  %121 = inttoptr i64 %120 to i32*
  store i32 %118, i32* %121, align 4, !mcsema_real_eip !30
  br i1 %119, label %block_0x1c9.i, label %block_0x5d.i, !mcsema_real_eip !31

block_0x1c9.i:                                    ; preds = %block_0x49.i
  %122 = load i32, i32* %74, align 4, !mcsema_real_eip !32
  %uadd153.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %122, i32 4) #2
  %123 = extractvalue { i32, i1 } %uadd153.i, 0
  %124 = xor i32 %123, %122, !mcsema_real_eip !33
  %125 = and i32 %124, 16, !mcsema_real_eip !33
  %126 = icmp ne i32 %125, 0, !mcsema_real_eip !33
  %127 = xor i32 %122, -2147483648, !mcsema_real_eip !33
  %128 = and i32 %124, %127, !mcsema_real_eip !33
  %129 = icmp slt i32 %128, 0
  %130 = trunc i32 %123 to i8, !mcsema_real_eip !33
  %131 = tail call i8 @llvm.ctpop.i8(i8 %130) #2, !mcsema_real_eip !33
  %132 = extractvalue { i32, i1 } %uadd153.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !34

block_0x5d.i:                                     ; preds = %block_0x49.i
  %133 = load i32, i32* %79, align 8, !mcsema_real_eip !35
  %134 = add i32 %133, -6
  %135 = icmp eq i32 %134, 0, !mcsema_real_eip !36
  %136 = add i64 %_local_stack_start_.i, 56, !mcsema_real_eip !37
  %137 = inttoptr i64 %136 to i32*
  store i32 %134, i32* %137, align 8, !mcsema_real_eip !37
  br i1 %135, label %block_0x1d7.i, label %block_0x71.i, !mcsema_real_eip !38

block_0x1d7.i:                                    ; preds = %block_0x5d.i
  %138 = load i32, i32* %74, align 4, !mcsema_real_eip !39
  %uadd152.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %138, i32 6) #2
  %139 = extractvalue { i32, i1 } %uadd152.i, 0
  %140 = xor i32 %139, %138, !mcsema_real_eip !40
  %141 = and i32 %140, 16, !mcsema_real_eip !40
  %142 = icmp ne i32 %141, 0, !mcsema_real_eip !40
  %143 = xor i32 %138, -2147483648, !mcsema_real_eip !40
  %144 = and i32 %140, %143, !mcsema_real_eip !40
  %145 = icmp slt i32 %144, 0
  %146 = trunc i32 %139 to i8, !mcsema_real_eip !40
  %147 = tail call i8 @llvm.ctpop.i8(i8 %146) #2, !mcsema_real_eip !40
  %148 = extractvalue { i32, i1 } %uadd152.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !41

block_0x71.i:                                     ; preds = %block_0x5d.i
  %149 = load i32, i32* %79, align 8, !mcsema_real_eip !42
  %150 = add i32 %149, -12
  %151 = icmp eq i32 %150, 0, !mcsema_real_eip !43
  %152 = add i64 %_local_stack_start_.i, 52, !mcsema_real_eip !44
  %153 = inttoptr i64 %152 to i32*
  store i32 %150, i32* %153, align 4, !mcsema_real_eip !44
  br i1 %151, label %block_0x1e5.i, label %block_0x85.i, !mcsema_real_eip !45

block_0x1e5.i:                                    ; preds = %block_0x71.i
  %154 = load i32, i32* %74, align 4, !mcsema_real_eip !46
  %uadd151.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %154, i32 12) #2
  %155 = extractvalue { i32, i1 } %uadd151.i, 0
  %156 = xor i32 %155, %154, !mcsema_real_eip !47
  %157 = and i32 %156, 16, !mcsema_real_eip !47
  %158 = icmp ne i32 %157, 0, !mcsema_real_eip !47
  %159 = xor i32 %154, -2147483648, !mcsema_real_eip !47
  %160 = and i32 %156, %159, !mcsema_real_eip !47
  %161 = icmp slt i32 %160, 0
  %162 = trunc i32 %155 to i8, !mcsema_real_eip !47
  %163 = tail call i8 @llvm.ctpop.i8(i8 %162) #2, !mcsema_real_eip !47
  %164 = extractvalue { i32, i1 } %uadd151.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !48

block_0x85.i:                                     ; preds = %block_0x71.i
  %165 = load i32, i32* %79, align 8, !mcsema_real_eip !49
  %166 = add i32 %165, -13
  %167 = icmp eq i32 %166, 0, !mcsema_real_eip !50
  %168 = add i64 %_local_stack_start_.i, 48, !mcsema_real_eip !51
  %169 = inttoptr i64 %168 to i32*
  store i32 %166, i32* %169, align 8, !mcsema_real_eip !51
  br i1 %167, label %block_0x1f3.i, label %block_0x99.i, !mcsema_real_eip !52

block_0x1f3.i:                                    ; preds = %block_0x85.i
  %170 = load i32, i32* %74, align 4, !mcsema_real_eip !53
  %uadd150.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %170, i32 13) #2
  %171 = extractvalue { i32, i1 } %uadd150.i, 0
  %172 = xor i32 %171, %170, !mcsema_real_eip !54
  %173 = and i32 %172, 16, !mcsema_real_eip !54
  %174 = icmp ne i32 %173, 0, !mcsema_real_eip !54
  %175 = xor i32 %170, -2147483648, !mcsema_real_eip !54
  %176 = and i32 %172, %175, !mcsema_real_eip !54
  %177 = icmp slt i32 %176, 0
  %178 = trunc i32 %171 to i8, !mcsema_real_eip !54
  %179 = tail call i8 @llvm.ctpop.i8(i8 %178) #2, !mcsema_real_eip !54
  %180 = extractvalue { i32, i1 } %uadd150.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !55

block_0x99.i:                                     ; preds = %block_0x85.i
  %181 = load i32, i32* %79, align 8, !mcsema_real_eip !56
  %182 = add i32 %181, -19
  %183 = icmp eq i32 %182, 0, !mcsema_real_eip !57
  %184 = add i64 %_local_stack_start_.i, 44, !mcsema_real_eip !58
  %185 = inttoptr i64 %184 to i32*
  store i32 %182, i32* %185, align 4, !mcsema_real_eip !58
  br i1 %183, label %block_0x201.i, label %block_0xad.i, !mcsema_real_eip !59

block_0x201.i:                                    ; preds = %block_0x99.i
  %186 = load i32, i32* %74, align 4, !mcsema_real_eip !60
  %uadd149.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %186, i32 19) #2
  %187 = extractvalue { i32, i1 } %uadd149.i, 0
  %188 = xor i32 %187, %186, !mcsema_real_eip !61
  %189 = and i32 %188, 16
  %190 = icmp eq i32 %189, 0
  %191 = xor i32 %186, -2147483648, !mcsema_real_eip !61
  %192 = and i32 %188, %191, !mcsema_real_eip !61
  %193 = icmp slt i32 %192, 0
  %194 = trunc i32 %187 to i8, !mcsema_real_eip !61
  %195 = tail call i8 @llvm.ctpop.i8(i8 %194) #2, !mcsema_real_eip !61
  %196 = extractvalue { i32, i1 } %uadd149.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !62

block_0xad.i:                                     ; preds = %block_0x99.i
  %197 = load i32, i32* %79, align 8, !mcsema_real_eip !63
  %198 = add i32 %197, -255
  %199 = icmp eq i32 %198, 0, !mcsema_real_eip !64
  %200 = add i64 %_local_stack_start_.i, 40, !mcsema_real_eip !65
  %201 = inttoptr i64 %200 to i32*
  store i32 %198, i32* %201, align 8, !mcsema_real_eip !65
  br i1 %199, label %block_0x20f.i, label %block_0xc3.i, !mcsema_real_eip !66

block_0x20f.i:                                    ; preds = %block_0xad.i
  %202 = load i32, i32* %74, align 4, !mcsema_real_eip !67
  %uadd148.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %202, i32 255) #2
  %203 = extractvalue { i32, i1 } %uadd148.i, 0
  %204 = xor i32 %203, %202, !mcsema_real_eip !68
  %205 = and i32 %204, 16
  %206 = icmp eq i32 %205, 0
  %207 = xor i32 %202, -2147483648, !mcsema_real_eip !68
  %208 = and i32 %204, %207, !mcsema_real_eip !68
  %209 = icmp slt i32 %208, 0
  %210 = trunc i32 %203 to i8, !mcsema_real_eip !68
  %211 = tail call i8 @llvm.ctpop.i8(i8 %210) #2, !mcsema_real_eip !68
  %212 = extractvalue { i32, i1 } %uadd148.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !69

block_0xc3.i:                                     ; preds = %block_0xad.i
  %213 = load i32, i32* %79, align 8, !mcsema_real_eip !70
  %214 = add i32 %213, -74633
  %215 = icmp eq i32 %214, 0, !mcsema_real_eip !71
  %216 = add i64 %_local_stack_start_.i, 36, !mcsema_real_eip !72
  %217 = inttoptr i64 %216 to i32*
  store i32 %214, i32* %217, align 4, !mcsema_real_eip !72
  br i1 %215, label %block_0x21f.i, label %block_0xd9.i, !mcsema_real_eip !73

block_0x21f.i:                                    ; preds = %block_0xc3.i
  %218 = load i32, i32* %74, align 4, !mcsema_real_eip !74
  %uadd147.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %218, i32 74633) #2
  %219 = extractvalue { i32, i1 } %uadd147.i, 0
  %220 = xor i32 %219, %218, !mcsema_real_eip !75
  %221 = and i32 %220, 16, !mcsema_real_eip !75
  %222 = icmp ne i32 %221, 0, !mcsema_real_eip !75
  %223 = xor i32 %218, -2147483648, !mcsema_real_eip !75
  %224 = and i32 %220, %223, !mcsema_real_eip !75
  %225 = icmp slt i32 %224, 0
  %226 = trunc i32 %219 to i8, !mcsema_real_eip !75
  %227 = tail call i8 @llvm.ctpop.i8(i8 %226) #2, !mcsema_real_eip !75
  %228 = extractvalue { i32, i1 } %uadd147.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !76

block_0xd9.i:                                     ; preds = %block_0xc3.i
  %229 = load i32, i32* %79, align 8, !mcsema_real_eip !77
  %230 = add i32 %229, -74634
  %231 = icmp eq i32 %230, 0, !mcsema_real_eip !78
  %232 = add i64 %_local_stack_start_.i, 32, !mcsema_real_eip !79
  %233 = inttoptr i64 %232 to i32*
  store i32 %230, i32* %233, align 8, !mcsema_real_eip !79
  br i1 %231, label %block_0x22f.i, label %block_0xef.i, !mcsema_real_eip !80

block_0x22f.i:                                    ; preds = %block_0xd9.i
  %234 = load i32, i32* %74, align 4, !mcsema_real_eip !81
  %uadd146.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %234, i32 74634) #2
  %235 = extractvalue { i32, i1 } %uadd146.i, 0
  %236 = xor i32 %235, %234, !mcsema_real_eip !82
  %237 = and i32 %236, 16, !mcsema_real_eip !82
  %238 = icmp ne i32 %237, 0, !mcsema_real_eip !82
  %239 = xor i32 %234, -2147483648, !mcsema_real_eip !82
  %240 = and i32 %236, %239, !mcsema_real_eip !82
  %241 = icmp slt i32 %240, 0
  %242 = trunc i32 %235 to i8, !mcsema_real_eip !82
  %243 = tail call i8 @llvm.ctpop.i8(i8 %242) #2, !mcsema_real_eip !82
  %244 = extractvalue { i32, i1 } %uadd146.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !83

block_0xef.i:                                     ; preds = %block_0xd9.i
  %245 = load i32, i32* %79, align 8, !mcsema_real_eip !84
  %246 = add i32 %245, -74635
  %247 = icmp eq i32 %246, 0, !mcsema_real_eip !85
  %248 = add i64 %_local_stack_start_.i, 28, !mcsema_real_eip !86
  %249 = inttoptr i64 %248 to i32*
  store i32 %246, i32* %249, align 4, !mcsema_real_eip !86
  br i1 %247, label %block_0x23f.i, label %block_0x105.i, !mcsema_real_eip !87

block_0x23f.i:                                    ; preds = %block_0xef.i
  %250 = load i32, i32* %74, align 4, !mcsema_real_eip !88
  %uadd145.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %250, i32 74635) #2
  %251 = extractvalue { i32, i1 } %uadd145.i, 0
  %252 = xor i32 %251, %250, !mcsema_real_eip !89
  %253 = and i32 %252, 16, !mcsema_real_eip !89
  %254 = icmp ne i32 %253, 0, !mcsema_real_eip !89
  %255 = xor i32 %250, -2147483648, !mcsema_real_eip !89
  %256 = and i32 %252, %255, !mcsema_real_eip !89
  %257 = icmp slt i32 %256, 0
  %258 = trunc i32 %251 to i8, !mcsema_real_eip !89
  %259 = tail call i8 @llvm.ctpop.i8(i8 %258) #2, !mcsema_real_eip !89
  %260 = extractvalue { i32, i1 } %uadd145.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !90

block_0x105.i:                                    ; preds = %block_0xef.i
  %261 = load i32, i32* %79, align 8, !mcsema_real_eip !91
  %262 = add i32 %261, -74636
  %263 = icmp eq i32 %262, 0, !mcsema_real_eip !92
  %264 = add i64 %_local_stack_start_.i, 24, !mcsema_real_eip !93
  %265 = inttoptr i64 %264 to i32*
  store i32 %262, i32* %265, align 8, !mcsema_real_eip !93
  br i1 %263, label %block_0x24f.i, label %block_0x11b.i, !mcsema_real_eip !94

block_0x24f.i:                                    ; preds = %block_0x105.i
  %266 = load i32, i32* %74, align 4, !mcsema_real_eip !95
  %uadd144.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %266, i32 74636) #2
  %267 = extractvalue { i32, i1 } %uadd144.i, 0
  %268 = xor i32 %267, %266, !mcsema_real_eip !96
  %269 = and i32 %268, 16, !mcsema_real_eip !96
  %270 = icmp ne i32 %269, 0, !mcsema_real_eip !96
  %271 = xor i32 %266, -2147483648, !mcsema_real_eip !96
  %272 = and i32 %268, %271, !mcsema_real_eip !96
  %273 = icmp slt i32 %272, 0
  %274 = trunc i32 %267 to i8, !mcsema_real_eip !96
  %275 = tail call i8 @llvm.ctpop.i8(i8 %274) #2, !mcsema_real_eip !96
  %276 = extractvalue { i32, i1 } %uadd144.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !97

block_0x11b.i:                                    ; preds = %block_0x105.i
  %277 = load i32, i32* %79, align 8, !mcsema_real_eip !98
  %278 = add i32 %277, -74637
  %279 = icmp eq i32 %278, 0, !mcsema_real_eip !99
  %280 = add i64 %_local_stack_start_.i, 20, !mcsema_real_eip !100
  %281 = inttoptr i64 %280 to i32*
  store i32 %278, i32* %281, align 4, !mcsema_real_eip !100
  br i1 %279, label %block_0x25f.i, label %block_0x131.i, !mcsema_real_eip !101

block_0x25f.i:                                    ; preds = %block_0x11b.i
  %282 = load i32, i32* %74, align 4, !mcsema_real_eip !102
  %uadd143.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %282, i32 74637) #2
  %283 = extractvalue { i32, i1 } %uadd143.i, 0
  %284 = xor i32 %283, %282, !mcsema_real_eip !103
  %285 = and i32 %284, 16, !mcsema_real_eip !103
  %286 = icmp ne i32 %285, 0, !mcsema_real_eip !103
  %287 = xor i32 %282, -2147483648, !mcsema_real_eip !103
  %288 = and i32 %284, %287, !mcsema_real_eip !103
  %289 = icmp slt i32 %288, 0
  %290 = trunc i32 %283 to i8, !mcsema_real_eip !103
  %291 = tail call i8 @llvm.ctpop.i8(i8 %290) #2, !mcsema_real_eip !103
  %292 = extractvalue { i32, i1 } %uadd143.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !104

block_0x131.i:                                    ; preds = %block_0x11b.i
  %293 = load i32, i32* %79, align 8, !mcsema_real_eip !105
  %294 = add i32 %293, -74639
  %295 = icmp eq i32 %294, 0, !mcsema_real_eip !106
  %296 = add i64 %_local_stack_start_.i, 16, !mcsema_real_eip !107
  %297 = inttoptr i64 %296 to i32*
  store i32 %294, i32* %297, align 8, !mcsema_real_eip !107
  br i1 %295, label %block_0x26f.i, label %block_0x147.i, !mcsema_real_eip !108

block_0x26f.i:                                    ; preds = %block_0x131.i
  %298 = load i32, i32* %74, align 4, !mcsema_real_eip !109
  %uadd142.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %298, i32 74639) #2
  %299 = extractvalue { i32, i1 } %uadd142.i, 0
  %300 = xor i32 %299, %298, !mcsema_real_eip !110
  %301 = and i32 %300, 16, !mcsema_real_eip !110
  %302 = icmp ne i32 %301, 0, !mcsema_real_eip !110
  %303 = xor i32 %298, -2147483648, !mcsema_real_eip !110
  %304 = and i32 %300, %303, !mcsema_real_eip !110
  %305 = icmp slt i32 %304, 0
  %306 = trunc i32 %299 to i8, !mcsema_real_eip !110
  %307 = tail call i8 @llvm.ctpop.i8(i8 %306) #2, !mcsema_real_eip !110
  %308 = extractvalue { i32, i1 } %uadd142.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !111

block_0x147.i:                                    ; preds = %block_0x131.i
  %309 = load i32, i32* %79, align 8, !mcsema_real_eip !112
  %310 = add i32 %309, -74640
  %311 = icmp eq i32 %310, 0, !mcsema_real_eip !113
  %312 = add i64 %_local_stack_start_.i, 12, !mcsema_real_eip !114
  %313 = inttoptr i64 %312 to i32*
  store i32 %310, i32* %313, align 4, !mcsema_real_eip !114
  br i1 %311, label %block_0x27f.i, label %block_0x15d.i, !mcsema_real_eip !115

block_0x27f.i:                                    ; preds = %block_0x147.i
  %314 = load i32, i32* %74, align 4, !mcsema_real_eip !116
  %uadd141.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %314, i32 74640) #2
  %315 = extractvalue { i32, i1 } %uadd141.i, 0
  %316 = xor i32 %315, %314, !mcsema_real_eip !117
  %317 = and i32 %316, 16
  %318 = icmp eq i32 %317, 0
  %319 = xor i32 %314, -2147483648, !mcsema_real_eip !117
  %320 = and i32 %316, %319, !mcsema_real_eip !117
  %321 = icmp slt i32 %320, 0
  %322 = trunc i32 %315 to i8, !mcsema_real_eip !117
  %323 = tail call i8 @llvm.ctpop.i8(i8 %322) #2, !mcsema_real_eip !117
  %324 = extractvalue { i32, i1 } %uadd141.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !118

block_0x15d.i:                                    ; preds = %block_0x147.i
  %325 = load i32, i32* %79, align 8, !mcsema_real_eip !119
  %326 = add i32 %325, -74641
  %327 = icmp eq i32 %326, 0, !mcsema_real_eip !120
  %328 = add i64 %_local_stack_start_.i, 8, !mcsema_real_eip !121
  %329 = inttoptr i64 %328 to i32*
  store i32 %326, i32* %329, align 8, !mcsema_real_eip !121
  br i1 %327, label %block_0x28f.i, label %block_0x173.i, !mcsema_real_eip !122

block_0x28f.i:                                    ; preds = %block_0x15d.i
  %330 = load i32, i32* %74, align 4, !mcsema_real_eip !123
  %uadd140.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %330, i32 74641) #2
  %331 = extractvalue { i32, i1 } %uadd140.i, 0
  %332 = xor i32 %331, %330, !mcsema_real_eip !124
  %333 = and i32 %332, 16
  %334 = icmp eq i32 %333, 0
  %335 = xor i32 %330, -2147483648, !mcsema_real_eip !124
  %336 = and i32 %332, %335, !mcsema_real_eip !124
  %337 = icmp slt i32 %336, 0
  %338 = trunc i32 %331 to i8, !mcsema_real_eip !124
  %339 = tail call i8 @llvm.ctpop.i8(i8 %338) #2, !mcsema_real_eip !124
  %340 = extractvalue { i32, i1 } %uadd140.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !125

block_0x173.i:                                    ; preds = %block_0x15d.i
  %341 = load i32, i32* %79, align 8, !mcsema_real_eip !126
  %342 = add i32 %341, -74642
  %343 = icmp eq i32 %342, 0, !mcsema_real_eip !127
  %344 = or i64 %_local_stack_start_.i, 4
  %345 = inttoptr i64 %344 to i32*
  store i32 %342, i32* %345, align 4, !mcsema_real_eip !128
  br i1 %343, label %block_0x29f.i, label %block_0x189.i, !mcsema_real_eip !129

block_0x29f.i:                                    ; preds = %block_0x173.i
  %346 = load i32, i32* %74, align 4, !mcsema_real_eip !130
  %uadd139.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %346, i32 74642) #2
  %347 = extractvalue { i32, i1 } %uadd139.i, 0
  %348 = xor i32 %347, %346, !mcsema_real_eip !131
  %349 = and i32 %348, 16
  %350 = icmp eq i32 %349, 0
  %351 = xor i32 %346, -2147483648, !mcsema_real_eip !131
  %352 = and i32 %348, %351, !mcsema_real_eip !131
  %353 = icmp slt i32 %352, 0
  %354 = trunc i32 %347 to i8, !mcsema_real_eip !131
  %355 = tail call i8 @llvm.ctpop.i8(i8 %354) #2, !mcsema_real_eip !131
  %356 = extractvalue { i32, i1 } %uadd139.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !132

block_0x189.i:                                    ; preds = %block_0x173.i
  %357 = load i32, i32* %79, align 8, !mcsema_real_eip !133
  %358 = add i32 %357, -74643
  %359 = icmp eq i32 %358, 0, !mcsema_real_eip !134
  %360 = bitcast [92 x i64]* %_local_stack_alloc_162.i to i32*
  store i32 %358, i32* %360, align 8, !mcsema_real_eip !135
  %361 = load i32, i32* %74, align 4, !mcsema_real_eip !136
  br i1 %359, label %block_0x2af.i, label %block_0x2bf.i, !mcsema_real_eip !137

block_0x2af.i:                                    ; preds = %block_0x189.i
  %uadd.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %361, i32 74643) #2
  %362 = extractvalue { i32, i1 } %uadd.i, 0
  %363 = xor i32 %362, %361, !mcsema_real_eip !138
  %364 = and i32 %363, 16
  %365 = icmp eq i32 %364, 0
  %366 = xor i32 %361, -2147483648, !mcsema_real_eip !138
  %367 = and i32 %363, %366, !mcsema_real_eip !138
  %368 = icmp slt i32 %367, 0
  %369 = trunc i32 %362 to i8, !mcsema_real_eip !138
  %370 = tail call i8 @llvm.ctpop.i8(i8 %369) #2, !mcsema_real_eip !138
  %371 = extractvalue { i32, i1 } %uadd.i, 1
  br label %block_0x2c8.i, !mcsema_real_eip !139

block_0x2bf.i:                                    ; preds = %block_0x189.i
  %372 = icmp slt i32 %361, 0
  %373 = icmp eq i32 %361, 0, !mcsema_real_eip !140
  %374 = trunc i32 %361 to i8, !mcsema_real_eip !140
  %375 = tail call i8 @llvm.ctpop.i8(i8 %374) #2, !mcsema_real_eip !140
  %376 = and i8 %375, 1
  %377 = icmp eq i8 %376, 0
  %378 = zext i32 %361 to i64, !mcsema_real_eip !15
  %379 = load i64, i64* %69, align 8, !mcsema_real_eip !16
  %380 = add i64 %_local_stack_start_.i, 100, !mcsema_real_eip !17
  store i64 %378, i64* %RAX.i, align 8, !mcsema_real_eip !17
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !17
  store i64 %3, i64* %RCX.i, align 8, !mcsema_real_eip !17
  store i64 %4, i64* %RDX.i, align 8, !mcsema_real_eip !17
  store i64 %5, i64* %RSI.i, align 8, !mcsema_real_eip !17
  store i64 %76, i64* %RDI.i, align 8, !mcsema_real_eip !17
  store i64 %380, i64* %RSP.i, align 8, !mcsema_real_eip !17
  store i64 %379, i64* %RBP.i, align 8, !mcsema_real_eip !17
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !17
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !17
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !17
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !17
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !17
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !17
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !17
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !17
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !17
  store i1 false, i1* %CF.i, align 1, !mcsema_real_eip !17
  store i1 %377, i1* %PF.i, align 1, !mcsema_real_eip !17
  store i1 false, i1* %AF.i, align 1, !mcsema_real_eip !17
  store i1 %373, i1* %ZF.i, align 1, !mcsema_real_eip !17
  store i1 %372, i1* %SF.i, align 1, !mcsema_real_eip !17
  store i1 false, i1* %OF.i, align 1, !mcsema_real_eip !17
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !17
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !17
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !17
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !17
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !17
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !17
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !17
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !17
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !17
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !17
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !17
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !17
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !17
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !17
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !17
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !17
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !17
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !17
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !17
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !17
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !17
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !17
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !17
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !17
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !17
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !17
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !17
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !17
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !17
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !17
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !17
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !17
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !17
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !17
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !17
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !17
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !17
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !17
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !17
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !17
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !17
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !17
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !17
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !17
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !17
  store i64 %66, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !17
  store i64 %67, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !17
  call void @llvm.lifetime.end(i64 736, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  br label %sub_0.exit

sub_0.exit:                                       ; preds = %block_0x2bf.i, %block_0x2c8.i
  ret void
}

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
!2 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 4, [21 x i8] c"\09movl\09%edi, -4(%rbp)\00"}
!4 = !{i64 7, [19 x i8] c"\09movl\09$0, -8(%rbp)\00"}
!5 = !{i64 14, [21 x i8] c"\09movl\09-4(%rbp), %edi\00"}
!6 = !{i64 17, [18 x i8] c"\09testl\09%edi, %edi\00"}
!7 = !{i64 19, [22 x i8] c"\09movl\09%edi, -12(%rbp)\00"}
!8 = !{i64 22, [8 x i8] c"\09je\09387\00"}
!9 = !{i64 415, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!10 = !{i64 418, [15 x i8] c"\09addl\09$0, %eax\00"}
!11 = !{i64 424, [9 x i8] c"\09jmp\09283\00"}
!12 = !{i64 36, [15 x i8] c"\09subl\09$1, %eax\00"}
!13 = !{i64 39, [22 x i8] c"\09movl\09%eax, -16(%rbp)\00"}
!14 = !{i64 42, [8 x i8] c"\09je\09381\00"}
!15 = !{i64 712, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!16 = !{i64 715, [11 x i8] c"\09popq\09%rbp\00"}
!17 = !{i64 716, [6 x i8] c"\09retq\00"}
!18 = !{i64 429, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!19 = !{i64 432, [15 x i8] c"\09addl\09$1, %eax\00"}
!20 = !{i64 438, [9 x i8] c"\09jmp\09269\00"}
!21 = !{i64 53, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!22 = !{i64 56, [15 x i8] c"\09subl\09$2, %eax\00"}
!23 = !{i64 59, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!24 = !{i64 62, [8 x i8] c"\09je\09375\00"}
!25 = !{i64 443, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!26 = !{i64 446, [15 x i8] c"\09addl\09$2, %eax\00"}
!27 = !{i64 452, [9 x i8] c"\09jmp\09255\00"}
!28 = !{i64 73, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!29 = !{i64 76, [15 x i8] c"\09subl\09$4, %eax\00"}
!30 = !{i64 79, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!31 = !{i64 82, [8 x i8] c"\09je\09369\00"}
!32 = !{i64 457, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!33 = !{i64 460, [15 x i8] c"\09addl\09$4, %eax\00"}
!34 = !{i64 466, [9 x i8] c"\09jmp\09241\00"}
!35 = !{i64 93, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!36 = !{i64 96, [15 x i8] c"\09subl\09$6, %eax\00"}
!37 = !{i64 99, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
!38 = !{i64 102, [8 x i8] c"\09je\09363\00"}
!39 = !{i64 471, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!40 = !{i64 474, [15 x i8] c"\09addl\09$6, %eax\00"}
!41 = !{i64 480, [9 x i8] c"\09jmp\09227\00"}
!42 = !{i64 113, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!43 = !{i64 116, [16 x i8] c"\09subl\09$12, %eax\00"}
!44 = !{i64 119, [22 x i8] c"\09movl\09%eax, -32(%rbp)\00"}
!45 = !{i64 122, [8 x i8] c"\09je\09357\00"}
!46 = !{i64 485, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!47 = !{i64 488, [16 x i8] c"\09addl\09$12, %eax\00"}
!48 = !{i64 494, [9 x i8] c"\09jmp\09213\00"}
!49 = !{i64 133, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!50 = !{i64 136, [16 x i8] c"\09subl\09$13, %eax\00"}
!51 = !{i64 139, [22 x i8] c"\09movl\09%eax, -36(%rbp)\00"}
!52 = !{i64 142, [8 x i8] c"\09je\09351\00"}
!53 = !{i64 499, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!54 = !{i64 502, [16 x i8] c"\09addl\09$13, %eax\00"}
!55 = !{i64 508, [9 x i8] c"\09jmp\09199\00"}
!56 = !{i64 153, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!57 = !{i64 156, [16 x i8] c"\09subl\09$19, %eax\00"}
!58 = !{i64 159, [22 x i8] c"\09movl\09%eax, -40(%rbp)\00"}
!59 = !{i64 162, [8 x i8] c"\09je\09345\00"}
!60 = !{i64 513, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!61 = !{i64 516, [16 x i8] c"\09addl\09$19, %eax\00"}
!62 = !{i64 522, [9 x i8] c"\09jmp\09185\00"}
!63 = !{i64 173, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!64 = !{i64 176, [17 x i8] c"\09subl\09$255, %eax\00"}
!65 = !{i64 181, [22 x i8] c"\09movl\09%eax, -44(%rbp)\00"}
!66 = !{i64 184, [8 x i8] c"\09je\09337\00"}
!67 = !{i64 527, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!68 = !{i64 530, [17 x i8] c"\09addl\09$255, %eax\00"}
!69 = !{i64 538, [9 x i8] c"\09jmp\09169\00"}
!70 = !{i64 195, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!71 = !{i64 198, [19 x i8] c"\09subl\09$74633, %eax\00"}
!72 = !{i64 203, [22 x i8] c"\09movl\09%eax, -48(%rbp)\00"}
!73 = !{i64 206, [8 x i8] c"\09je\09331\00"}
!74 = !{i64 543, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!75 = !{i64 546, [19 x i8] c"\09addl\09$74633, %eax\00"}
!76 = !{i64 554, [9 x i8] c"\09jmp\09153\00"}
!77 = !{i64 217, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!78 = !{i64 220, [19 x i8] c"\09subl\09$74634, %eax\00"}
!79 = !{i64 225, [22 x i8] c"\09movl\09%eax, -52(%rbp)\00"}
!80 = !{i64 228, [8 x i8] c"\09je\09325\00"}
!81 = !{i64 559, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!82 = !{i64 562, [19 x i8] c"\09addl\09$74634, %eax\00"}
!83 = !{i64 570, [9 x i8] c"\09jmp\09137\00"}
!84 = !{i64 239, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!85 = !{i64 242, [19 x i8] c"\09subl\09$74635, %eax\00"}
!86 = !{i64 247, [22 x i8] c"\09movl\09%eax, -56(%rbp)\00"}
!87 = !{i64 250, [8 x i8] c"\09je\09319\00"}
!88 = !{i64 575, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!89 = !{i64 578, [19 x i8] c"\09addl\09$74635, %eax\00"}
!90 = !{i64 586, [9 x i8] c"\09jmp\09121\00"}
!91 = !{i64 261, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!92 = !{i64 264, [19 x i8] c"\09subl\09$74636, %eax\00"}
!93 = !{i64 269, [22 x i8] c"\09movl\09%eax, -60(%rbp)\00"}
!94 = !{i64 272, [8 x i8] c"\09je\09313\00"}
!95 = !{i64 591, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!96 = !{i64 594, [19 x i8] c"\09addl\09$74636, %eax\00"}
!97 = !{i64 602, [9 x i8] c"\09jmp\09105\00"}
!98 = !{i64 283, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!99 = !{i64 286, [19 x i8] c"\09subl\09$74637, %eax\00"}
!100 = !{i64 291, [22 x i8] c"\09movl\09%eax, -64(%rbp)\00"}
!101 = !{i64 294, [8 x i8] c"\09je\09307\00"}
!102 = !{i64 607, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!103 = !{i64 610, [19 x i8] c"\09addl\09$74637, %eax\00"}
!104 = !{i64 618, [8 x i8] c"\09jmp\0989\00"}
!105 = !{i64 305, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!106 = !{i64 308, [19 x i8] c"\09subl\09$74639, %eax\00"}
!107 = !{i64 313, [22 x i8] c"\09movl\09%eax, -68(%rbp)\00"}
!108 = !{i64 316, [8 x i8] c"\09je\09301\00"}
!109 = !{i64 623, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!110 = !{i64 626, [19 x i8] c"\09addl\09$74639, %eax\00"}
!111 = !{i64 634, [8 x i8] c"\09jmp\0973\00"}
!112 = !{i64 327, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!113 = !{i64 330, [19 x i8] c"\09subl\09$74640, %eax\00"}
!114 = !{i64 335, [22 x i8] c"\09movl\09%eax, -72(%rbp)\00"}
!115 = !{i64 338, [8 x i8] c"\09je\09295\00"}
!116 = !{i64 639, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!117 = !{i64 642, [19 x i8] c"\09addl\09$74640, %eax\00"}
!118 = !{i64 650, [8 x i8] c"\09jmp\0957\00"}
!119 = !{i64 349, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!120 = !{i64 352, [19 x i8] c"\09subl\09$74641, %eax\00"}
!121 = !{i64 357, [22 x i8] c"\09movl\09%eax, -76(%rbp)\00"}
!122 = !{i64 360, [8 x i8] c"\09je\09289\00"}
!123 = !{i64 655, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!124 = !{i64 658, [19 x i8] c"\09addl\09$74641, %eax\00"}
!125 = !{i64 666, [8 x i8] c"\09jmp\0941\00"}
!126 = !{i64 371, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!127 = !{i64 374, [19 x i8] c"\09subl\09$74642, %eax\00"}
!128 = !{i64 379, [22 x i8] c"\09movl\09%eax, -80(%rbp)\00"}
!129 = !{i64 382, [8 x i8] c"\09je\09283\00"}
!130 = !{i64 671, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!131 = !{i64 674, [19 x i8] c"\09addl\09$74642, %eax\00"}
!132 = !{i64 682, [8 x i8] c"\09jmp\0925\00"}
!133 = !{i64 393, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!134 = !{i64 396, [19 x i8] c"\09subl\09$74643, %eax\00"}
!135 = !{i64 401, [22 x i8] c"\09movl\09%eax, -84(%rbp)\00"}
!136 = !{i64 687, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!137 = !{i64 404, [8 x i8] c"\09je\09277\00"}
!138 = !{i64 690, [19 x i8] c"\09addl\09$74643, %eax\00"}
!139 = !{i64 698, [7 x i8] c"\09jmp\099\00"}
!140 = !{i64 706, [15 x i8] c"\09addl\09$0, %eax\00"}
