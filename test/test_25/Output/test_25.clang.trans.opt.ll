; ModuleID = 'Output/test_25.clang.trans.opt.bc'
source_filename = "Output/test_25.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

declare x86_64_sysvcc i64 @strlen(i64 inreg) local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) local_unnamed_addr {
driverBlockRaw:
  %_local_stack_alloc_27.i = alloca [40 x i64], align 8
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %1 = bitcast [40 x i64]* %_local_stack_alloc_27.i to i8*
  call void @llvm.lifetime.start(i64 320, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_start_.i = ptrtoint [40 x i64]* %_local_stack_alloc_27.i to i64
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %2 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %3 = load i64, i64* %RDX.i, align 8, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %4 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %5 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
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
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %49 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %63 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %64 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %65 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %66 = load <2 x i64>, <2 x i64>* %65, align 8
  %67 = add i64 %_local_stack_start_.i, 32
  %68 = inttoptr i64 %67 to i64*
  store i64 %6, i64* %68, align 8, !mcsema_real_eip !2
  %69 = add i64 %_local_stack_start_.i, 28, !mcsema_real_eip !3
  %70 = inttoptr i64 %69 to i32*
  store i32 0, i32* %70, align 4, !mcsema_real_eip !3
  %71 = add i64 %_local_stack_start_.i, 24, !mcsema_real_eip !4
  %72 = trunc i64 %5 to i32, !mcsema_real_eip !4
  %73 = inttoptr i64 %71 to i32*
  store i32 %72, i32* %73, align 8, !mcsema_real_eip !4
  %74 = add i64 %_local_stack_start_.i, 16, !mcsema_real_eip !5
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !5
  store i64 %4, i64* %75, align 8, !mcsema_real_eip !5
  %76 = add i64 %_local_stack_start_.i, 12, !mcsema_real_eip !6
  %77 = inttoptr i64 %76 to i32*
  store i32 0, i32* %77, align 4, !mcsema_real_eip !6
  %78 = load i64, i64* %75, align 8, !mcsema_real_eip !7
  %79 = add i64 %78, 8, !mcsema_real_eip !8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !8
  %81 = load i64, i64* %80, align 8, !mcsema_real_eip !8
  %82 = tail call x86_64_sysvcc i64 @strlen(i64 %81), !mcsema_real_eip !9
  %83 = and i64 %82, 4294967295
  %84 = add i64 %_local_stack_start_.i, 8, !mcsema_real_eip !10
  %85 = trunc i64 %82 to i32, !mcsema_real_eip !10
  %86 = inttoptr i64 %84 to i32*
  store i32 %85, i32* %86, align 8, !mcsema_real_eip !10
  %87 = or i64 %_local_stack_start_.i, 4
  %88 = inttoptr i64 %87 to i32*
  store i32 0, i32* %88, align 4, !mcsema_real_eip !11
  %89 = load i32, i32* %86, align 8, !mcsema_real_eip !12
  %90 = sub i32 0, %89, !mcsema_real_eip !12
  %91 = icmp slt i32 %90, 0
  %92 = and i32 %89, %90, !mcsema_real_eip !12
  %93 = icmp slt i32 %92, 0
  %tmp.i = xor i1 %91, %93
  br i1 %tmp.i, label %block_0x42.i.preheader, label %sub_0.exit, !mcsema_real_eip !13

block_0x42.i.preheader:                           ; preds = %driverBlockRaw
  br label %block_0x42.i

block_0x66.loopexit.i:                            ; preds = %block_0x42.i
  %94 = zext i32 %106 to i64, !mcsema_real_eip !14
  br label %sub_0.exit

block_0x42.i:                                     ; preds = %block_0x42.i.preheader, %block_0x42.i
  %95 = phi i32 [ %108, %block_0x42.i ], [ 0, %block_0x42.i.preheader ]
  %96 = sext i32 %95 to i64, !mcsema_real_eip !15
  %97 = load i64, i64* %75, align 8, !mcsema_real_eip !16
  %98 = add i64 %97, 8, !mcsema_real_eip !17
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !17
  %100 = load i64, i64* %99, align 8, !mcsema_real_eip !17
  %101 = add i64 %100, %96, !mcsema_real_eip !18
  %102 = inttoptr i64 %101 to i8*
  %103 = load i8, i8* %102, align 1, !mcsema_real_eip !18
  %104 = sext i8 %103 to i32, !mcsema_real_eip !18
  %105 = load i32, i32* %77, align 4, !mcsema_real_eip !14
  %106 = add i32 %104, %105
  store i32 %106, i32* %77, align 4, !mcsema_real_eip !19
  %107 = load i32, i32* %88, align 4, !mcsema_real_eip !20
  %108 = add i32 %107, 1
  store i32 %108, i32* %88, align 4, !mcsema_real_eip !21
  %109 = load i32, i32* %86, align 8, !mcsema_real_eip !12
  %110 = sub i32 %108, %109, !mcsema_real_eip !12
  %111 = xor i32 %110, %108, !mcsema_real_eip !12
  %112 = icmp slt i32 %110, 0
  %113 = xor i32 %109, %108, !mcsema_real_eip !12
  %114 = and i32 %111, %113, !mcsema_real_eip !12
  %115 = icmp slt i32 %114, 0
  %tmp71.i = xor i1 %112, %115
  br i1 %tmp71.i, label %block_0x42.i, label %block_0x66.loopexit.i, !mcsema_real_eip !13

sub_0.exit:                                       ; preds = %driverBlockRaw, %block_0x66.loopexit.i
  %116 = phi i32 [ %89, %driverBlockRaw ], [ %109, %block_0x66.loopexit.i ]
  %RDX_val.0.i = phi i64 [ %3, %driverBlockRaw ], [ %94, %block_0x66.loopexit.i ]
  %RCX_val.0.i = phi i64 [ %83, %driverBlockRaw ], [ %100, %block_0x66.loopexit.i ]
  %117 = zext i32 %116 to i64, !mcsema_real_eip !22
  %118 = xor i64 %67, %_local_stack_start_.i, !mcsema_real_eip !23
  %119 = and i64 %118, 16, !mcsema_real_eip !23
  %120 = icmp ne i64 %119, 0, !mcsema_real_eip !23
  %121 = icmp slt i64 %67, 0
  %122 = icmp eq i64 %67, 0, !mcsema_real_eip !23
  %123 = xor i64 %_local_stack_start_.i, -9223372036854775808, !mcsema_real_eip !23
  %124 = and i64 %118, %123, !mcsema_real_eip !23
  %125 = icmp slt i64 %124, 0
  %126 = trunc i64 %67 to i8, !mcsema_real_eip !23
  %127 = tail call i8 @llvm.ctpop.i8(i8 %126), !mcsema_real_eip !23
  %128 = and i8 %127, 1
  %129 = icmp eq i8 %128, 0
  %130 = icmp ugt [40 x i64]* %_local_stack_alloc_27.i, inttoptr (i64 -33 to [40 x i64]*)
  %131 = load i64, i64* %68, align 8, !mcsema_real_eip !24
  %132 = add i64 %_local_stack_start_.i, 48, !mcsema_real_eip !25
  store i64 %117, i64* %RAX.i, align 8, !mcsema_real_eip !25
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !25
  store i64 %RCX_val.0.i, i64* %RCX.i, align 8, !mcsema_real_eip !25
  store i64 %RDX_val.0.i, i64* %RDX.i, align 8, !mcsema_real_eip !25
  store i64 %78, i64* %RSI.i, align 8, !mcsema_real_eip !25
  store i64 %81, i64* %RDI.i, align 8, !mcsema_real_eip !25
  store i64 %132, i64* %RSP.i, align 8, !mcsema_real_eip !25
  store i64 %131, i64* %RBP.i, align 8, !mcsema_real_eip !25
  %133 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %133, align 8
  %134 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %134, align 8
  %135 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %135, align 8
  %136 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %14, <2 x i64>* %136, align 8
  store i64 %15, i64* %RIP.i, align 8, !mcsema_real_eip !25
  store i1 %130, i1* %CF.i, align 1, !mcsema_real_eip !25
  store i1 %129, i1* %PF.i, align 1, !mcsema_real_eip !25
  store i1 %120, i1* %AF.i, align 1, !mcsema_real_eip !25
  store i1 %122, i1* %ZF.i, align 1, !mcsema_real_eip !25
  store i1 %121, i1* %SF.i, align 1, !mcsema_real_eip !25
  store i1 %125, i1* %OF.i, align 1, !mcsema_real_eip !25
  store i1 %16, i1* %DF.i, align 1, !mcsema_real_eip !25
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !25
  store i1 %19, i1* %FPU_B.i, align 1, !mcsema_real_eip !25
  store i1 %20, i1* %FPU_C3.i, align 1, !mcsema_real_eip !25
  store i3 %21, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !25
  store i1 %22, i1* %FPU_C2.i, align 1, !mcsema_real_eip !25
  store i1 %23, i1* %FPU_C1.i, align 1, !mcsema_real_eip !25
  store i1 %24, i1* %FPU_C0.i, align 1, !mcsema_real_eip !25
  store i1 %25, i1* %FPU_ES.i, align 1, !mcsema_real_eip !25
  store i1 %26, i1* %FPU_SF.i, align 1, !mcsema_real_eip !25
  store i1 %27, i1* %FPU_PE.i, align 1, !mcsema_real_eip !25
  store i1 %28, i1* %FPU_UE.i, align 1, !mcsema_real_eip !25
  store i1 %29, i1* %FPU_OE.i, align 1, !mcsema_real_eip !25
  store i1 %30, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !25
  store i1 %31, i1* %FPU_DE.i, align 1, !mcsema_real_eip !25
  store i1 %32, i1* %FPU_IE.i, align 1, !mcsema_real_eip !25
  store i1 %33, i1* %FPU_X.i, align 1, !mcsema_real_eip !25
  store i2 %34, i2* %FPU_RC.i, align 1, !mcsema_real_eip !25
  store i2 %35, i2* %FPU_PC.i, align 1, !mcsema_real_eip !25
  store i1 %36, i1* %FPU_PM.i, align 1, !mcsema_real_eip !25
  store i1 %37, i1* %FPU_UM.i, align 1, !mcsema_real_eip !25
  store i1 %38, i1* %FPU_OM.i, align 1, !mcsema_real_eip !25
  store i1 %39, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !25
  store i1 %40, i1* %FPU_DM.i, align 1, !mcsema_real_eip !25
  store i1 %41, i1* %FPU_IM.i, align 1, !mcsema_real_eip !25
  store i64 %44, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !25
  store i64 %46, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !25
  store i16 %47, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !25
  store i64 %48, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !25
  store i128 %49, i128* %XMM0.i, align 1, !mcsema_real_eip !25
  store i128 %50, i128* %XMM1.i, align 1, !mcsema_real_eip !25
  store i128 %51, i128* %XMM2.i, align 1, !mcsema_real_eip !25
  store i128 %52, i128* %XMM3.i, align 1, !mcsema_real_eip !25
  store i128 %53, i128* %XMM4.i, align 1, !mcsema_real_eip !25
  store i128 %54, i128* %XMM5.i, align 1, !mcsema_real_eip !25
  store i128 %55, i128* %XMM6.i, align 1, !mcsema_real_eip !25
  store i128 %56, i128* %XMM7.i, align 1, !mcsema_real_eip !25
  store i128 %57, i128* %XMM8.i, align 1, !mcsema_real_eip !25
  store i128 %58, i128* %XMM9.i, align 1, !mcsema_real_eip !25
  store i128 %59, i128* %XMM10.i, align 1, !mcsema_real_eip !25
  store i128 %60, i128* %XMM11.i, align 1, !mcsema_real_eip !25
  store i128 %61, i128* %XMM12.i, align 1, !mcsema_real_eip !25
  store i128 %62, i128* %XMM13.i, align 1, !mcsema_real_eip !25
  store i128 %63, i128* %XMM14.i, align 1, !mcsema_real_eip !25
  store i128 %64, i128* %XMM15.i, align 1, !mcsema_real_eip !25
  %137 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %66, <2 x i64>* %137, align 1
  call void @llvm.lifetime.end(i64 320, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
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
!2 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 8, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!4 = !{i64 15, [21 x i8] c"\09movl\09%edi, -8(%rbp)\00"}
!5 = !{i64 18, [22 x i8] c"\09movq\09%rsi, -16(%rbp)\00"}
!6 = !{i64 22, [20 x i8] c"\09movl\09$0, -20(%rbp)\00"}
!7 = !{i64 29, [22 x i8] c"\09movq\09-16(%rbp), %rsi\00"}
!8 = !{i64 33, [20 x i8] c"\09movq\098(%rsi), %rdi\00"}
!9 = !{i64 37, [9 x i8] c"\09callq\090\00"}
!10 = !{i64 44, [22 x i8] c"\09movl\09%ecx, -24(%rbp)\00"}
!11 = !{i64 47, [20 x i8] c"\09movl\09$0, -28(%rbp)\00"}
!12 = !{i64 57, [22 x i8] c"\09cmpl\09-24(%rbp), %eax\00"}
!13 = !{i64 60, [8 x i8] c"\09jge\0936\00"}
!14 = !{i64 82, [22 x i8] c"\09addl\09-20(%rbp), %edx\00"}
!15 = !{i64 66, [24 x i8] c"\09movslq\09-28(%rbp), %rax\00"}
!16 = !{i64 70, [22 x i8] c"\09movq\09-16(%rbp), %rcx\00"}
!17 = !{i64 74, [20 x i8] c"\09movq\098(%rcx), %rcx\00"}
!18 = !{i64 78, [26 x i8] c"\09movsbl\09(%rcx,%rax), %edx\00"}
!19 = !{i64 85, [22 x i8] c"\09movl\09%edx, -20(%rbp)\00"}
!20 = !{i64 88, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!21 = !{i64 94, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
!22 = !{i64 102, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!23 = !{i64 105, [16 x i8] c"\09addq\09$32, %rsp\00"}
!24 = !{i64 109, [11 x i8] c"\09popq\09%rbp\00"}
!25 = !{i64 110, [6 x i8] c"\09retq\00"}
