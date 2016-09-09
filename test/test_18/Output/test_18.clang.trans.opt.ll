; ModuleID = 'Output/test_18.clang.trans.opt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [336 x i8], i64, [16 x i8], i64, [24 x i8], i64, [128 x i8], i64, [16 x i8], i64, [24 x i8], i64, [256 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x68 = internal global %0 <{ [336 x i8] c"\00\00\AA\00\00\BB\00\00\CC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 ptrtoint (%0* @data_0x68 to i64), [16 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x68 to i64), i64 4), [24 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x68 to i64), i64 8), [128 x i8] zeroinitializer, i64 ptrtoint (%0* @data_0x68 to i64), [16 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x68 to i64), i64 4), [24 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x68 to i64), i64 8), [256 x i8] zeroinitializer }>, align 64

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  %_local_stack_alloc_14.i = alloca [16 x i64], align 8
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %1 = bitcast [16 x i64]* %_local_stack_alloc_14.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %STi_val.i.0..sroa_cast)
  %_local_stack_start_.i = ptrtoint [16 x i64]* %_local_stack_alloc_14.i to i64
  %RBX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %2 = load i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %3 = load i64* %RCX.i, align 8, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %4 = load i64* %RDX.i, align 8, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %5 = bitcast i64* %RSI.i to <2 x i64>*
  %6 = load <2 x i64>* %5, align 8
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %7 = load i64* %RBP.i, align 8, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %8 = bitcast i64* %R8.i to <2 x i64>*
  %9 = load <2 x i64>* %8, align 8
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %10 = bitcast i64* %R10.i to <2 x i64>*
  %11 = load <2 x i64>* %10, align 8
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %12 = bitcast i64* %R12.i to <2 x i64>*
  %13 = load <2 x i64>* %12, align 8
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %14 = bitcast i64* %R14.i to <2 x i64>*
  %15 = load <2 x i64>* %14, align 8
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %16 = load i64* %RIP.i, align 8, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %17 = load i1* %DF.i, align 1, !mcsema_real_eip !2
  %18 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast, i8* %19, i32 128, i32 4, i1 false) #0, !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %20 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %21 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %22 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %23 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %24 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %25 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %26 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %27 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %28 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %29 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %30 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %31 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %32 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %33 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %34 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %35 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %36 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %37 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %38 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %39 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %40 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %41 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %42 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %43 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %44 = bitcast i8* %43 to i64*
  %45 = load i64* %44, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %46 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %47 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %48 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %49 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %50 = load i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %51 = load i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %52 = load i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %53 = load i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %54 = load i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %55 = load i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %56 = load i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %57 = load i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %58 = load i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %59 = load i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %60 = load i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %61 = load i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %62 = load i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %63 = load i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %64 = load i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %65 = load i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %66 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %67 = load <2 x i64>* %66, align 8
  %68 = add i64 %_local_stack_start_.i, 8
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !2
  store i64 %7, i64* %69, align 8, !mcsema_real_eip !2
  %70 = bitcast [16 x i64]* %_local_stack_alloc_14.i to i32*
  store i32 0, i32* %70, align 8, !mcsema_real_eip !3
  %71 = or i64 %_local_stack_start_.i, 4
  %72 = inttoptr i64 %71 to i32*
  store i32 0, i32* %72, align 4, !mcsema_real_eip !4
  br label %block_0x22.i

block_0x22.i:                                     ; preds = %block_0x53.i, %driverBlockRaw
  %73 = phi i32 [ 0, %driverBlockRaw ], [ %87, %block_0x53.i ]
  %RDX_val.1.i = phi i64 [ %4, %driverBlockRaw ], [ %RDX_val.2.i, %block_0x53.i ]
  %RCX_val.1.i = phi i64 [ %3, %driverBlockRaw ], [ %RCX_val.2.i, %block_0x53.i ]
  %74 = sext i32 %73 to i64, !mcsema_real_eip !5
  %75 = shl nsw i64 %74, 3
  %76 = add i64 %75, add (i64 ptrtoint (%0* @data_0x68 to i64), i64 16), !mcsema_real_eip !6
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !6
  %78 = load i64* %77, align 8, !mcsema_real_eip !6
  %79 = icmp eq i64 %78, 0, !mcsema_real_eip !6
  br i1 %79, label %block_0x53.i, label %block_0x38.i, !mcsema_real_eip !7

block_0x38.i:                                     ; preds = %block_0x22.i
  %80 = inttoptr i64 %78 to i32*
  %81 = load i32* %80, align 4, !mcsema_real_eip !8
  %82 = zext i32 %81 to i64, !mcsema_real_eip !8
  %83 = load i32* %70, align 8, !mcsema_real_eip !9
  %84 = add i32 %83, %81
  %85 = zext i32 %84 to i64, !mcsema_real_eip !10
  store i32 %84, i32* %70, align 8, !mcsema_real_eip !11
  %.pre.i = load i32* %72, align 4
  br label %block_0x53.i, !mcsema_real_eip !12

block_0x53.i:                                     ; preds = %block_0x38.i, %block_0x22.i
  %86 = phi i32 [ %73, %block_0x22.i ], [ %.pre.i, %block_0x38.i ]
  %RDX_val.2.i = phi i64 [ %RDX_val.1.i, %block_0x22.i ], [ %85, %block_0x38.i ]
  %RCX_val.2.i = phi i64 [ %RCX_val.1.i, %block_0x22.i ], [ %82, %block_0x38.i ]
  %87 = add i32 %86, 1
  store i32 %87, i32* %72, align 4, !mcsema_real_eip !13
  %88 = icmp ult i32 %87, 104
  br i1 %88, label %block_0x22.i, label %sub_0.exit, !mcsema_real_eip !14

sub_0.exit:                                       ; preds = %block_0x53.i
  %.lcssa = phi i32 [ %87, %block_0x53.i ]
  %RCX_val.2.i.lcssa = phi i64 [ %RCX_val.2.i, %block_0x53.i ]
  %RDX_val.2.i.lcssa = phi i64 [ %RDX_val.2.i, %block_0x53.i ]
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %RAX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %89 = sext i32 %.lcssa to i64, !mcsema_real_eip !15
  %90 = add nsw i64 %89, -104
  %91 = xor i64 %90, %89, !mcsema_real_eip !16
  %92 = and i64 %91, %89, !mcsema_real_eip !16
  %93 = icmp slt i64 %92, 0
  %94 = icmp slt i64 %90, 0
  %95 = icmp eq i64 %90, 0, !mcsema_real_eip !16
  %96 = trunc i64 %90 to i8, !mcsema_real_eip !16
  %97 = tail call i8 @llvm.ctpop.i8(i8 %96) #0, !mcsema_real_eip !16
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  %100 = and i64 %91, 16, !mcsema_real_eip !16
  %101 = icmp ne i64 %100, 0, !mcsema_real_eip !16
  %102 = load i32* %70, align 8, !mcsema_real_eip !17
  %103 = zext i32 %102 to i64, !mcsema_real_eip !17
  %104 = load i64* %69, align 8, !mcsema_real_eip !18
  %105 = add i64 %_local_stack_start_.i, 24, !mcsema_real_eip !19
  store i64 %103, i64* %RAX.i, align 8, !mcsema_real_eip !19
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !19
  store i64 %RCX_val.2.i.lcssa, i64* %RCX.i, align 8, !mcsema_real_eip !19
  store i64 %RDX_val.2.i.lcssa, i64* %RDX.i, align 8, !mcsema_real_eip !19
  store <2 x i64> %6, <2 x i64>* %5, align 8
  store i64 %105, i64* %RSP.i, align 8, !mcsema_real_eip !19
  store i64 %104, i64* %RBP.i, align 8, !mcsema_real_eip !19
  store <2 x i64> %9, <2 x i64>* %8, align 8
  store <2 x i64> %11, <2 x i64>* %10, align 8
  store <2 x i64> %13, <2 x i64>* %12, align 8
  store <2 x i64> %15, <2 x i64>* %14, align 8
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !19
  store i1 false, i1* %CF.i, align 1, !mcsema_real_eip !19
  store i1 %99, i1* %PF.i, align 1, !mcsema_real_eip !19
  store i1 %101, i1* %AF.i, align 1, !mcsema_real_eip !19
  store i1 %95, i1* %ZF.i, align 1, !mcsema_real_eip !19
  store i1 %94, i1* %SF.i, align 1, !mcsema_real_eip !19
  store i1 %93, i1* %OF.i, align 1, !mcsema_real_eip !19
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !19
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !19
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !19
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !19
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !19
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !19
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !19
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !19
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !19
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !19
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !19
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !19
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !19
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !19
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !19
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !19
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !19
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !19
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !19
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !19
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !19
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !19
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !19
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !19
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !19
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !19
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !19
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !19
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !19
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !19
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !19
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !19
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !19
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !19
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !19
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !19
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !19
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !19
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !19
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !19
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !19
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !19
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !19
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !19
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !19
  store <2 x i64> %67, <2 x i64>* %66, align 1
  call void @llvm.lifetime.end(i64 128, i8* %1)
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #0

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 4, [19 x i8] c"\09movl\09$0, -8(%rbp)\00"}
!4 = metadata !{i64 11, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!5 = metadata !{i64 34, [23 x i8] c"\09movslq\09-4(%rbp), %rax\00"}
!6 = metadata !{i64 38, [20 x i8] c"\09cmpq\09$0, (,%rax,8)\00"}
!7 = metadata !{i64 50, [7 x i8] c"\09je\0922\00"}
!8 = metadata !{i64 68, [19 x i8] c"\09movl\09(%rax), %ecx\00"}
!9 = metadata !{i64 70, [21 x i8] c"\09movl\09-8(%rbp), %edx\00"}
!10 = metadata !{i64 73, [17 x i8] c"\09addl\09%ecx, %edx\00"}
!11 = metadata !{i64 75, [21 x i8] c"\09movl\09%edx, -8(%rbp)\00"}
!12 = metadata !{i64 78, [7 x i8] c"\09jmp\090\00"}
!13 = metadata !{i64 91, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!14 = metadata !{i64 28, [8 x i8] c"\09jae\0965\00"}
!15 = metadata !{i64 18, [23 x i8] c"\09movslq\09-4(%rbp), %rax\00"}
!16 = metadata !{i64 22, [17 x i8] c"\09cmpq\09$104, %rax\00"}
!17 = metadata !{i64 99, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!18 = metadata !{i64 102, [11 x i8] c"\09popq\09%rbp\00"}
!19 = metadata !{i64 103, [6 x i8] c"\09retq\00"}
