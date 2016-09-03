; ModuleID = 'Output/test_17.clang.trans.opt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [24 x i8], i64, [16 x i8], i64, [16 x i8], i64, [16 x i8] }>
%1 = type <{ [27 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x86 = internal global %0 <{ [24 x i8] c"\00\00\AA\00\00\BB\00\00\CC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 ptrtoint (%0* @data_0x86 to i64), [16 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x86 to i64), i64 4), [16 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x86 to i64), i64 8), [16 x i8] zeroinitializer }>, align 64
@data_0xe6 = internal constant %1 <{ [27 x i8] c"mydata[%d] = %p => 0x%06X\0A\00" }>, align 64

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg)

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %STi_val.i.0..sroa_cast)
  %RBX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %1 = load i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %2 = load i64* %RCX.i, align 8, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %3 = load i64* %RDX.i, align 8, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %4 = load i64* %RSI.i, align 8, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %5 = load i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %6 = load i64* %RSP.i, align 8, !mcsema_real_eip !2
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
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !2
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
  %68 = add i64 %6, -8
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !2
  store i64 %7, i64* %69, align 8, !mcsema_real_eip !2
  %70 = add i64 %6, -12, !mcsema_real_eip !3
  %71 = inttoptr i64 %70 to i32*
  store i32 0, i32* %71, align 4, !mcsema_real_eip !3
  %72 = add i64 %6, -16, !mcsema_real_eip !4
  %73 = inttoptr i64 %72 to i32*
  br label %block_0x1f.i

block_0x1f.i:                                     ; preds = %block_0x6b.i, %driverBlockRaw
  %74 = phi i32 [ 0, %driverBlockRaw ], [ %88, %block_0x6b.i ]
  %RDI_val.1.i = phi i64 [ %5, %driverBlockRaw ], [ %RDI_val.2.i, %block_0x6b.i ]
  %RSI_val.1.i = phi i64 [ %4, %driverBlockRaw ], [ %RSI_val.2.i, %block_0x6b.i ]
  %RDX_val.1.i = phi i64 [ %3, %driverBlockRaw ], [ %RDX_val.2.i, %block_0x6b.i ]
  %RCX_val.1.i = phi i64 [ %2, %driverBlockRaw ], [ %RCX_val.2.i, %block_0x6b.i ]
  %75 = sext i32 %74 to i64, !mcsema_real_eip !5
  %76 = shl nsw i64 %75, 3
  %77 = add i64 %76, add (i64 ptrtoint (%0* @data_0x86 to i64), i64 16), !mcsema_real_eip !6
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !6
  %79 = load i64* %78, align 8, !mcsema_real_eip !6
  %80 = icmp eq i64 %79, 0, !mcsema_real_eip !6
  br i1 %80, label %block_0x6b.i, label %block_0x35.i, !mcsema_real_eip !7

block_0x35.i:                                     ; preds = %block_0x1f.i
  %81 = zext i32 %74 to i64, !mcsema_real_eip !8
  %82 = inttoptr i64 %79 to i32*
  %83 = load i32* %82, align 4, !mcsema_real_eip !9
  %84 = zext i32 %83 to i64, !mcsema_real_eip !9
  %85 = tail call x86_64_sysvcc i64 @printf(i64 ptrtoint (%1* @data_0xe6 to i64), i64 %81, i64 %79, i64 %84), !mcsema_real_eip !10
  %86 = trunc i64 %85 to i32, !mcsema_real_eip !4
  store i32 %86, i32* %73, align 4, !mcsema_real_eip !4
  %.pre.i = load i32* %71, align 4
  br label %block_0x6b.i, !mcsema_real_eip !11

block_0x6b.i:                                     ; preds = %block_0x35.i, %block_0x1f.i
  %87 = phi i32 [ %74, %block_0x1f.i ], [ %.pre.i, %block_0x35.i ]
  %RDI_val.2.i = phi i64 [ %RDI_val.1.i, %block_0x1f.i ], [ ptrtoint (%1* @data_0xe6 to i64), %block_0x35.i ]
  %RSI_val.2.i = phi i64 [ %RSI_val.1.i, %block_0x1f.i ], [ %81, %block_0x35.i ]
  %RDX_val.2.i = phi i64 [ %RDX_val.1.i, %block_0x1f.i ], [ %79, %block_0x35.i ]
  %RCX_val.2.i = phi i64 [ %RCX_val.1.i, %block_0x1f.i ], [ %84, %block_0x35.i ]
  %88 = add i32 %87, 1
  store i32 %88, i32* %71, align 4, !mcsema_real_eip !12
  %89 = icmp ult i32 %88, 10
  br i1 %89, label %block_0x1f.i, label %sub_0.exit, !mcsema_real_eip !13

sub_0.exit:                                       ; preds = %block_0x6b.i
  %RCX_val.2.i.lcssa = phi i64 [ %RCX_val.2.i, %block_0x6b.i ]
  %RDX_val.2.i.lcssa = phi i64 [ %RDX_val.2.i, %block_0x6b.i ]
  %RSI_val.2.i.lcssa = phi i64 [ %RSI_val.2.i, %block_0x6b.i ]
  %RDI_val.2.i.lcssa = phi i64 [ %RDI_val.2.i, %block_0x6b.i ]
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %RAX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %90 = add i64 %6, -24
  %uadd70.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %90, i64 16)
  %91 = extractvalue { i64, i1 } %uadd70.i, 0
  %92 = xor i64 %91, %90, !mcsema_real_eip !14
  %93 = and i64 %92, 16
  %94 = icmp eq i64 %93, 0
  %95 = icmp slt i64 %91, 0
  %96 = icmp eq i64 %91, 0, !mcsema_real_eip !14
  %97 = add i64 %6, 9223372036854775784
  %98 = and i64 %92, %97, !mcsema_real_eip !14
  %99 = icmp slt i64 %98, 0
  %100 = trunc i64 %91 to i8, !mcsema_real_eip !14
  %101 = tail call i8 @llvm.ctpop.i8(i8 %100), !mcsema_real_eip !14
  %102 = and i8 %101, 1
  %103 = icmp eq i8 %102, 0
  %104 = extractvalue { i64, i1 } %uadd70.i, 1
  %105 = inttoptr i64 %91 to i64*, !mcsema_real_eip !15
  %106 = load i64* %105, align 8, !mcsema_real_eip !15
  %107 = add i64 %91, 16, !mcsema_real_eip !16
  store i64 0, i64* %RAX.i, align 8, !mcsema_real_eip !16
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !16
  store i64 %RCX_val.2.i.lcssa, i64* %RCX.i, align 8, !mcsema_real_eip !16
  store i64 %RDX_val.2.i.lcssa, i64* %RDX.i, align 8, !mcsema_real_eip !16
  store i64 %RSI_val.2.i.lcssa, i64* %RSI.i, align 8, !mcsema_real_eip !16
  store i64 %RDI_val.2.i.lcssa, i64* %RDI.i, align 8, !mcsema_real_eip !16
  store i64 %107, i64* %RSP.i, align 8, !mcsema_real_eip !16
  store i64 %106, i64* %RBP.i, align 8, !mcsema_real_eip !16
  store <2 x i64> %9, <2 x i64>* %8, align 8
  store <2 x i64> %11, <2 x i64>* %10, align 8
  store <2 x i64> %13, <2 x i64>* %12, align 8
  store <2 x i64> %15, <2 x i64>* %14, align 8
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !16
  store i1 %104, i1* %CF.i, align 1, !mcsema_real_eip !16
  store i1 %103, i1* %PF.i, align 1, !mcsema_real_eip !16
  store i1 %94, i1* %AF.i, align 1, !mcsema_real_eip !16
  store i1 %96, i1* %ZF.i, align 1, !mcsema_real_eip !16
  store i1 %95, i1* %SF.i, align 1, !mcsema_real_eip !16
  store i1 %99, i1* %OF.i, align 1, !mcsema_real_eip !16
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !16
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !16
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !16
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !16
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !16
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !16
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !16
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !16
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !16
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !16
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !16
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !16
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !16
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !16
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !16
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !16
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !16
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !16
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !16
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !16
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !16
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !16
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !16
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !16
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !16
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !16
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !16
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !16
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !16
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !16
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !16
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !16
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !16
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !16
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !16
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !16
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !16
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !16
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !16
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !16
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !16
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !16
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !16
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !16
  store <2 x i64> %67, <2 x i64>* %66, align 1
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

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
!3 = metadata !{i64 8, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!4 = metadata !{i64 99, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!5 = metadata !{i64 31, [23 x i8] c"\09movslq\09-4(%rbp), %rax\00"}
!6 = metadata !{i64 35, [20 x i8] c"\09cmpq\09$0, (,%rax,8)\00"}
!7 = metadata !{i64 47, [7 x i8] c"\09je\0949\00"}
!8 = metadata !{i64 63, [21 x i8] c"\09movl\09-4(%rbp), %esi\00"}
!9 = metadata !{i64 90, [19 x i8] c"\09movl\09(%rax), %ecx\00"}
!10 = metadata !{i64 94, [9 x i8] c"\09callq\090\00"}
!11 = metadata !{i64 102, [7 x i8] c"\09jmp\090\00"}
!12 = metadata !{i64 115, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!13 = metadata !{i64 25, [8 x i8] c"\09jae\0992\00"}
!14 = metadata !{i64 128, [16 x i8] c"\09addq\09$16, %rsp\00"}
!15 = metadata !{i64 132, [11 x i8] c"\09popq\09%rbp\00"}
!16 = metadata !{i64 133, [6 x i8] c"\09retq\00"}
