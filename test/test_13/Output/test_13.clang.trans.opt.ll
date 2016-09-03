; ModuleID = 'Output/test_13.clang.trans.opt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

declare x86_64_sysvcc i64 @malloc(i64 inreg)

declare x86_64_sysvcc i64 @strlen(i64 inreg)

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  %STi_val.i.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !3
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %STi_val.i.0..sroa_cast)
  %RAX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !3
  %RBX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !3
  %1 = load i64* %RBX.i, align 8, !mcsema_real_eip !3
  %RCX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !3
  %2 = load i64* %RCX.i, align 8, !mcsema_real_eip !3
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !3
  %3 = load i64* %RDX.i, align 8, !mcsema_real_eip !3
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !3
  %4 = load i64* %RSI.i, align 8, !mcsema_real_eip !3
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !3
  %5 = load i64* %RDI.i, align 8, !mcsema_real_eip !3
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !3
  %6 = load i64* %RSP.i, align 8, !mcsema_real_eip !3
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !3
  %7 = load i64* %RBP.i, align 8, !mcsema_real_eip !3
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !3
  %8 = load i64* %R8.i, align 8, !mcsema_real_eip !3
  %R9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !3
  %9 = load i64* %R9.i, align 8, !mcsema_real_eip !3
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !3
  %10 = load i64* %R10.i, align 8, !mcsema_real_eip !3
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
  %11 = load i64* %R11.i, align 8, !mcsema_real_eip !3
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %12 = load i64* %R12.i, align 8, !mcsema_real_eip !3
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !3
  %13 = load i64* %R13.i, align 8, !mcsema_real_eip !3
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %14 = load i64* %R14.i, align 8, !mcsema_real_eip !3
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !3
  %15 = load i64* %R15.i, align 8, !mcsema_real_eip !3
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %16 = load i64* %RIP.i, align 8, !mcsema_real_eip !3
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !3
  %17 = load i1* %DF.i, align 1, !mcsema_real_eip !3
  %18 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !3
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !3
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !3
  %20 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !3
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !3
  %21 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !3
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !3
  %22 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !3
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !3
  %23 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !3
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !3
  %24 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !3
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !3
  %25 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !3
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !3
  %26 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !3
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !3
  %27 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !3
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !3
  %28 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !3
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !3
  %29 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !3
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !3
  %30 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !3
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !3
  %31 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !3
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !3
  %32 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !3
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !3
  %33 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !3
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !3
  %34 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !3
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !3
  %35 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !3
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !3
  %36 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !3
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !3
  %37 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !3
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !3
  %38 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !3
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !3
  %39 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !3
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !3
  %40 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !3
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !3
  %41 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !3
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !3
  %42 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !3
  %43 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !3
  %44 = bitcast i8* %43 to i64*
  %45 = load i64* %44, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !3
  %46 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !3
  %47 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !3
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !3
  %48 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !3
  %49 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !3
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %50 = load i128* %XMM0.i, align 1, !mcsema_real_eip !3
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %51 = load i128* %XMM1.i, align 1, !mcsema_real_eip !3
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %52 = load i128* %XMM2.i, align 1, !mcsema_real_eip !3
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %53 = load i128* %XMM3.i, align 1, !mcsema_real_eip !3
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %54 = load i128* %XMM4.i, align 1, !mcsema_real_eip !3
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %55 = load i128* %XMM5.i, align 1, !mcsema_real_eip !3
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %56 = load i128* %XMM6.i, align 1, !mcsema_real_eip !3
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %57 = load i128* %XMM7.i, align 1, !mcsema_real_eip !3
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %58 = load i128* %XMM8.i, align 1, !mcsema_real_eip !3
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %59 = load i128* %XMM9.i, align 1, !mcsema_real_eip !3
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %60 = load i128* %XMM10.i, align 1, !mcsema_real_eip !3
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %61 = load i128* %XMM11.i, align 1, !mcsema_real_eip !3
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %62 = load i128* %XMM12.i, align 1, !mcsema_real_eip !3
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %63 = load i128* %XMM13.i, align 1, !mcsema_real_eip !3
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %64 = load i128* %XMM14.i, align 1, !mcsema_real_eip !3
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %65 = load i128* %XMM15.i, align 1, !mcsema_real_eip !3
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %66 = load i64* %STACK_BASE.i, align 8, !mcsema_real_eip !3
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %67 = load i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !3
  %68 = add i64 %6, -8
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !3
  store i64 %7, i64* %69, align 8, !mcsema_real_eip !3
  %70 = add i64 %6, -40
  %71 = add i64 %6, -16, !mcsema_real_eip !4
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !4
  store i64 %5, i64* %72, align 8, !mcsema_real_eip !4
  %73 = add i64 %6, -20, !mcsema_real_eip !5
  %74 = trunc i64 %4 to i32, !mcsema_real_eip !5
  %75 = inttoptr i64 %73 to i32*
  store i32 %74, i32* %75, align 4, !mcsema_real_eip !5
  %76 = add i64 %6, -24, !mcsema_real_eip !6
  %77 = inttoptr i64 %76 to i32*
  store i32 0, i32* %77, align 4, !mcsema_real_eip !6
  %78 = load i32* %75, align 4, !mcsema_real_eip !7
  %79 = sext i32 %78 to i64, !mcsema_real_eip !7
  %80 = shl nsw i64 %79, 3, !mcsema_real_eip !8
  %81 = tail call x86_64_sysvcc i64 @malloc(i64 %80), !mcsema_real_eip !9
  %82 = add i64 %6, -32, !mcsema_real_eip !10
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !10
  store i64 %81, i64* %83, align 8, !mcsema_real_eip !10
  %84 = load i32* %77, align 4, !mcsema_real_eip !11
  %85 = load i32* %75, align 4, !mcsema_real_eip !12
  %86 = sub i32 %84, %85, !mcsema_real_eip !12
  %87 = xor i32 %86, %84, !mcsema_real_eip !12
  %88 = icmp slt i32 %86, 0
  %89 = xor i32 %85, %84, !mcsema_real_eip !12
  %90 = and i32 %87, %89, !mcsema_real_eip !12
  %91 = icmp slt i32 %90, 0
  %tmp.i = xor i1 %88, %91
  br i1 %tmp.i, label %block_0x33.preheader.i, label %sub_0.exit, !mcsema_real_eip !13

block_0x33.preheader.i:                           ; preds = %driverBlockRaw
  %92 = icmp ult i32 %84, %85, !mcsema_real_eip !12
  %93 = icmp eq i32 %84, %85
  %94 = trunc i32 %86 to i8, !mcsema_real_eip !12
  %95 = tail call i8 @llvm.ctpop.i8(i8 %94), !mcsema_real_eip !12
  %96 = xor i32 %87, %85, !mcsema_real_eip !12
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  %97 = bitcast i64* %R8.i to <2 x i64>*
  %98 = bitcast i64* %R10.i to <2 x i64>*
  %99 = bitcast i64* %R12.i to <2 x i64>*
  %100 = bitcast i64* %R14.i to <2 x i64>*
  %101 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  br label %block_0x33.i

block_0x33.i:                                     ; preds = %block_0x69.i, %block_0x33.preheader.i
  %102 = phi i32 [ %270, %block_0x69.i ], [ %84, %block_0x33.preheader.i ]
  %R15_val.1.i = phi i64 [ %R15_val.2.i, %block_0x69.i ], [ %15, %block_0x33.preheader.i ]
  %STACK_LIMIT_val.1.i = phi i64 [ %STACK_LIMIT_val.2.i, %block_0x69.i ], [ %67, %block_0x33.preheader.i ]
  %STACK_BASE_val.1.i = phi i64 [ %STACK_BASE_val.2.i, %block_0x69.i ], [ %66, %block_0x33.preheader.i ]
  %OF_val.0.i = phi i1 [ %284, %block_0x69.i ], [ %91, %block_0x33.preheader.i ]
  %SF_val.0.i = phi i1 [ %280, %block_0x69.i ], [ %88, %block_0x33.preheader.i ]
  %CF_val.0.i = phi i1 [ %281, %block_0x69.i ], [ %92, %block_0x33.preheader.i ]
  %AF_val.0.in.in.i = phi i32 [ %276, %block_0x69.i ], [ %96, %block_0x33.preheader.i ]
  %PF_val.0.in.in.i = phi i8 [ %278, %block_0x69.i ], [ %95, %block_0x33.preheader.i ]
  %ZF_val.0.i = phi i1 [ %279, %block_0x69.i ], [ %93, %block_0x33.preheader.i ]
  %R14_val.1.i = phi i64 [ %R14_val.2.i, %block_0x69.i ], [ %14, %block_0x33.preheader.i ]
  %R13_val.1.i = phi i64 [ %R13_val.2.i, %block_0x69.i ], [ %13, %block_0x33.preheader.i ]
  %R12_val.1.i = phi i64 [ %R12_val.2.i, %block_0x69.i ], [ %12, %block_0x33.preheader.i ]
  %R11_val.1.i = phi i64 [ %R11_val.2.i, %block_0x69.i ], [ %11, %block_0x33.preheader.i ]
  %R10_val.1.i = phi i64 [ %R10_val.2.i, %block_0x69.i ], [ %10, %block_0x33.preheader.i ]
  %R9_val.1.i = phi i64 [ %R9_val.2.i, %block_0x69.i ], [ %9, %block_0x33.preheader.i ]
  %R8_val.1.i = phi i64 [ %R8_val.2.i, %block_0x69.i ], [ %8, %block_0x33.preheader.i ]
  %RSP_val.1.i = phi i64 [ %182, %block_0x69.i ], [ %70, %block_0x33.preheader.i ]
  %RBP_val.1.i = phi i64 [ %RBP_val.2.i, %block_0x69.i ], [ %68, %block_0x33.preheader.i ]
  %RSI_val.1.i = phi i64 [ %RSI_val.2.i, %block_0x69.i ], [ %4, %block_0x33.preheader.i ]
  %RDX_val.1.i = phi i64 [ %RDX_val.0.i.i, %block_0x69.i ], [ %3, %block_0x33.preheader.i ]
  %PF_val.0.in.i = and i8 %PF_val.0.in.in.i, 1
  %AF_val.0.in.i = and i32 %AF_val.0.in.in.i, 16
  %PF_val.0.i = icmp eq i8 %PF_val.0.in.i, 0
  %AF_val.0.i = icmp ne i32 %AF_val.0.in.i, 0
  %103 = sext i32 %102 to i64, !mcsema_real_eip !14
  %104 = add i64 %RBP_val.1.i, -8, !mcsema_real_eip !15
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !15
  %106 = load i64* %105, align 8, !mcsema_real_eip !15
  %107 = shl nsw i64 %103, 3
  %108 = add i64 %106, %107, !mcsema_real_eip !16
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !16
  %110 = load i64* %109, align 8, !mcsema_real_eip !16
  %111 = add i64 %RBP_val.1.i, -32, !mcsema_real_eip !17
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !17
  store i64 %110, i64* %112, align 8, !mcsema_real_eip !17
  %113 = add i64 %RSP_val.1.i, -8
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !18
  store i64 -4981261766360305936, i64* %114, align 8, !mcsema_real_eip !18
  store i64 %110, i64* %RAX.i, align 8, !mcsema_real_eip !18
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !18
  store i64 %106, i64* %RCX.i, align 8, !mcsema_real_eip !18
  store i64 %RDX_val.1.i, i64* %RDX.i, align 8, !mcsema_real_eip !18
  store i64 %RSI_val.1.i, i64* %RSI.i, align 8, !mcsema_real_eip !18
  store i64 %110, i64* %RDI.i, align 8, !mcsema_real_eip !18
  store i64 %113, i64* %RSP.i, align 8, !mcsema_real_eip !18
  store i64 %RBP_val.1.i, i64* %RBP.i, align 8, !mcsema_real_eip !18
  store i64 %R8_val.1.i, i64* %R8.i, align 8, !mcsema_real_eip !18
  store i64 %R9_val.1.i, i64* %R9.i, align 8, !mcsema_real_eip !18
  store i64 %R10_val.1.i, i64* %R10.i, align 8, !mcsema_real_eip !18
  store i64 %R11_val.1.i, i64* %R11.i, align 8, !mcsema_real_eip !18
  store i64 %R12_val.1.i, i64* %R12.i, align 8, !mcsema_real_eip !18
  store i64 %R13_val.1.i, i64* %R13.i, align 8, !mcsema_real_eip !18
  store i64 %R14_val.1.i, i64* %R14.i, align 8, !mcsema_real_eip !18
  store i64 %R15_val.1.i, i64* %R15.i, align 8, !mcsema_real_eip !18
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !18
  store i1 %CF_val.0.i, i1* %CF.i, align 1, !mcsema_real_eip !18
  store i1 %PF_val.0.i, i1* %PF.i, align 1, !mcsema_real_eip !18
  store i1 %AF_val.0.i, i1* %AF.i, align 1, !mcsema_real_eip !18
  store i1 %ZF_val.0.i, i1* %ZF.i, align 1, !mcsema_real_eip !18
  store i1 %SF_val.0.i, i1* %SF.i, align 1, !mcsema_real_eip !18
  store i1 %OF_val.0.i, i1* %OF.i, align 1, !mcsema_real_eip !18
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !18
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !18
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !18
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !18
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !18
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !18
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !18
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !18
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !18
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !18
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !18
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !18
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !18
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !18
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !18
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !18
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !18
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !18
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !18
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !18
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !18
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !18
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !18
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !18
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !18
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !18
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !18
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !18
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !18
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !18
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !18
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !18
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !18
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !18
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !18
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !18
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !18
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !18
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !18
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !18
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !18
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !18
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !18
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !18
  store i64 %STACK_BASE_val.1.i, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !18
  store i64 %STACK_LIMIT_val.1.i, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !18
  call void @llvm.lifetime.start(i64 128, i8* %STi_val.i.0..sroa_cast.i)
  %115 = load <2 x i64>* %97, align 8
  %116 = load <2 x i64>* %98, align 8
  %117 = load <2 x i64>* %99, align 8
  %118 = load <2 x i64>* %100, align 8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast.i, i8* %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false)
  %119 = load <2 x i64>* %101, align 8
  %120 = add i64 %RSP_val.1.i, -16
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.1.i, i64* %121, align 8, !mcsema_real_eip !2
  %122 = add i64 %RSP_val.1.i, -48
  %123 = add i64 %RSP_val.1.i, -24, !mcsema_real_eip !19
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !19
  store i64 %110, i64* %124, align 8, !mcsema_real_eip !19
  %125 = add i64 %RSP_val.1.i, -28, !mcsema_real_eip !20
  %126 = inttoptr i64 %125 to i32*
  store i32 1, i32* %126, align 4, !mcsema_real_eip !20
  %127 = load i64* %124, align 8, !mcsema_real_eip !21
  %128 = tail call x86_64_sysvcc i64 @strlen(i64 %127), !mcsema_real_eip !22
  %129 = and i64 %128, 4294967295
  %130 = add i64 %RSP_val.1.i, -32, !mcsema_real_eip !23
  %131 = trunc i64 %128 to i32, !mcsema_real_eip !23
  %132 = inttoptr i64 %130 to i32*
  store i32 %131, i32* %132, align 4, !mcsema_real_eip !23
  %133 = add i32 %131, -1
  %134 = icmp eq i32 %133, 0, !mcsema_real_eip !24
  %135 = icmp slt i32 %133, 0
  %136 = sub i32 0, %131
  %137 = and i32 %131, %136
  %138 = icmp slt i32 %137, 0
  %139 = xor i1 %135, %138
  %140 = or i1 %134, %139, !mcsema_real_eip !25
  br i1 %140, label %sub_90.exitthread-pre-split.i, label %block_0xbe.i.i, !mcsema_real_eip !25

block_0xbe.i.i:                                   ; preds = %block_0x33.i
  %141 = load i64* %124, align 8, !mcsema_real_eip !26
  %142 = inttoptr i64 %141 to i8*
  %143 = load i8* %142, align 1, !mcsema_real_eip !27
  %144 = and i64 %128, 4294967040, !mcsema_real_eip !27
  %145 = add i64 %RSP_val.1.i, -33, !mcsema_real_eip !28
  %146 = inttoptr i64 %145 to i8*
  store i8 %143, i8* %146, align 1, !mcsema_real_eip !28
  %147 = load i32* %132, align 4, !mcsema_real_eip !29
  %148 = add i32 %147, -1
  %149 = sext i32 %148 to i64, !mcsema_real_eip !30
  %150 = load i64* %124, align 8, !mcsema_real_eip !31
  %151 = add i64 %149, %150, !mcsema_real_eip !32
  %152 = inttoptr i64 %151 to i8*
  %153 = load i8* %152, align 1, !mcsema_real_eip !32
  %154 = zext i8 %153 to i64, !mcsema_real_eip !32
  %155 = or i64 %154, %144
  %156 = add i64 %RSP_val.1.i, -34, !mcsema_real_eip !33
  %157 = inttoptr i64 %156 to i8*
  store i8 %153, i8* %157, align 1, !mcsema_real_eip !33
  %158 = load i8* %146, align 1, !mcsema_real_eip !34
  %159 = sext i8 %158 to i64
  %160 = and i64 %159, 4294967295
  %161 = sext i8 %153 to i64
  %162 = and i64 %161, 4294967295
  %163 = icmp eq i8 %158, %153
  br i1 %163, label %block_0xed.i.i, label %sub_90.exitthread-pre-split.i, !mcsema_real_eip !35

block_0xed.i.i:                                   ; preds = %block_0xbe.i.i
  store i32 0, i32* %126, align 4, !mcsema_real_eip !36
  br label %sub_90.exit.i, !mcsema_real_eip !37

sub_90.exitthread-pre-split.i:                    ; preds = %block_0xbe.i.i, %block_0x33.i
  %RDI_val.0.i.ph.i = phi i64 [ %162, %block_0xbe.i.i ], [ %127, %block_0x33.i ]
  %RSI_val.0.i.ph.i = phi i64 [ %150, %block_0xbe.i.i ], [ %RSI_val.1.i, %block_0x33.i ]
  %RDX_val.0.i.ph.i = phi i64 [ %160, %block_0xbe.i.i ], [ %RDX_val.1.i, %block_0x33.i ]
  %RCX_val.0.i.ph.i = phi i64 [ %155, %block_0xbe.i.i ], [ %129, %block_0x33.i ]
  %.pr.i = load i32* %126, align 4
  br label %sub_90.exit.i

sub_90.exit.i:                                    ; preds = %sub_90.exitthread-pre-split.i, %block_0xed.i.i
  %164 = phi i32 [ %.pr.i, %sub_90.exitthread-pre-split.i ], [ 0, %block_0xed.i.i ]
  %RDI_val.0.i.i = phi i64 [ %RDI_val.0.i.ph.i, %sub_90.exitthread-pre-split.i ], [ %162, %block_0xed.i.i ]
  %RSI_val.0.i.i = phi i64 [ %RSI_val.0.i.ph.i, %sub_90.exitthread-pre-split.i ], [ %150, %block_0xed.i.i ]
  %RDX_val.0.i.i = phi i64 [ %RDX_val.0.i.ph.i, %sub_90.exitthread-pre-split.i ], [ %160, %block_0xed.i.i ]
  %RCX_val.0.i.i = phi i64 [ %RCX_val.0.i.ph.i, %sub_90.exitthread-pre-split.i ], [ %155, %block_0xed.i.i ]
  %165 = zext i32 %164 to i64, !mcsema_real_eip !38
  %uadd.i.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %122, i64 32)
  %166 = extractvalue { i64, i1 } %uadd.i.i, 0
  %167 = xor i64 %166, %122, !mcsema_real_eip !39
  %168 = and i64 %167, 16, !mcsema_real_eip !39
  %169 = icmp ne i64 %168, 0, !mcsema_real_eip !39
  %170 = icmp slt i64 %166, 0
  %171 = icmp eq i64 %166, 0, !mcsema_real_eip !39
  %172 = add i64 %RSP_val.1.i, 9223372036854775760
  %173 = and i64 %167, %172, !mcsema_real_eip !39
  %174 = icmp slt i64 %173, 0
  %175 = trunc i64 %166 to i8, !mcsema_real_eip !39
  %176 = tail call i8 @llvm.ctpop.i8(i8 %175), !mcsema_real_eip !39
  %177 = and i8 %176, 1
  %178 = icmp eq i8 %177, 0
  %179 = extractvalue { i64, i1 } %uadd.i.i, 1
  %180 = inttoptr i64 %166 to i64*
  %181 = load i64* %180, align 8, !mcsema_real_eip !40
  %182 = add i64 %166, 16, !mcsema_real_eip !41
  store i64 %165, i64* %RAX.i, align 8, !mcsema_real_eip !41
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !41
  store i64 %RCX_val.0.i.i, i64* %RCX.i, align 8, !mcsema_real_eip !41
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !41
  store i64 %RSI_val.0.i.i, i64* %RSI.i, align 8, !mcsema_real_eip !41
  store i64 %RDI_val.0.i.i, i64* %RDI.i, align 8, !mcsema_real_eip !41
  store i64 %182, i64* %RSP.i, align 8, !mcsema_real_eip !41
  store i64 %181, i64* %RBP.i, align 8, !mcsema_real_eip !41
  store <2 x i64> %115, <2 x i64>* %97, align 8
  store <2 x i64> %116, <2 x i64>* %98, align 8
  store <2 x i64> %117, <2 x i64>* %99, align 8
  store <2 x i64> %118, <2 x i64>* %100, align 8
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !41
  store i1 %179, i1* %CF.i, align 1, !mcsema_real_eip !41
  store i1 %178, i1* %PF.i, align 1, !mcsema_real_eip !41
  store i1 %169, i1* %AF.i, align 1, !mcsema_real_eip !41
  store i1 %171, i1* %ZF.i, align 1, !mcsema_real_eip !41
  store i1 %170, i1* %SF.i, align 1, !mcsema_real_eip !41
  store i1 %174, i1* %OF.i, align 1, !mcsema_real_eip !41
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !41
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false), !mcsema_real_eip !41
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !41
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !41
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !41
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !41
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !41
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !41
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !41
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !41
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !41
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !41
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !41
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !41
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !41
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !41
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !41
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !41
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !41
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !41
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !41
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !41
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !41
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !41
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !41
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !41
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !41
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !41
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !41
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !41
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !41
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !41
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !41
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !41
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !41
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !41
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !41
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !41
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !41
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !41
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !41
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !41
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !41
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !41
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !41
  store <2 x i64> %119, <2 x i64>* %101, align 1
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast.i)
  %183 = bitcast <2 x i64> %115 to i128
  %trunc.i = trunc i128 %183 to i64
  %184 = lshr i128 %183, 64
  %185 = trunc i128 %184 to i64
  %186 = bitcast <2 x i64> %116 to i128
  %trunc237.i = trunc i128 %186 to i64
  %187 = lshr i128 %186, 64
  %188 = trunc i128 %187 to i64
  %189 = bitcast <2 x i64> %117 to i128
  %trunc238.i = trunc i128 %189 to i64
  %190 = lshr i128 %189, 64
  %191 = trunc i128 %190 to i64
  %192 = bitcast <2 x i64> %118 to i128
  %trunc239.i = trunc i128 %192 to i64
  %193 = lshr i128 %192, 64
  %194 = trunc i128 %193 to i64
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !18
  %195 = bitcast <2 x i64> %119 to i128
  %trunc240.i = trunc i128 %195 to i64
  %196 = lshr i128 %195, 64
  %197 = trunc i128 %196 to i64
  %198 = icmp eq i32 %164, 0, !mcsema_real_eip !42
  br i1 %198, label %block_0x57.i, label %block_0x69.i, !mcsema_real_eip !43

block_0x57.i:                                     ; preds = %sub_90.exit.i
  %199 = add i64 %181, -32, !mcsema_real_eip !44
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !44
  %201 = load i64* %200, align 8, !mcsema_real_eip !44
  %202 = add i64 %166, 8
  %203 = inttoptr i64 %202 to i64*, !mcsema_real_eip !45
  store i64 -4981261766360305936, i64* %203, align 8, !mcsema_real_eip !45
  store i64 %165, i64* %RAX.i, align 8, !mcsema_real_eip !45
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !45
  store i64 %RCX_val.0.i.i, i64* %RCX.i, align 8, !mcsema_real_eip !45
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !45
  store i64 %201, i64* %RSI.i, align 8, !mcsema_real_eip !45
  store i64 %201, i64* %RDI.i, align 8, !mcsema_real_eip !45
  store i64 %202, i64* %RSP.i, align 8, !mcsema_real_eip !45
  store i64 %181, i64* %RBP.i, align 8, !mcsema_real_eip !45
  store i64 %trunc.i, i64* %R8.i, align 8, !mcsema_real_eip !45
  store i64 %185, i64* %R9.i, align 8, !mcsema_real_eip !45
  store i64 %trunc237.i, i64* %R10.i, align 8, !mcsema_real_eip !45
  store i64 %188, i64* %R11.i, align 8, !mcsema_real_eip !45
  store i64 %trunc238.i, i64* %R12.i, align 8, !mcsema_real_eip !45
  store i64 %191, i64* %R13.i, align 8, !mcsema_real_eip !45
  store i64 %trunc239.i, i64* %R14.i, align 8, !mcsema_real_eip !45
  store i64 %194, i64* %R15.i, align 8, !mcsema_real_eip !45
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !45
  store i1 false, i1* %CF.i, align 1, !mcsema_real_eip !45
  store i1 true, i1* %PF.i, align 1, !mcsema_real_eip !45
  store i1 false, i1* %AF.i, align 1, !mcsema_real_eip !45
  store i1 true, i1* %ZF.i, align 1, !mcsema_real_eip !45
  store i1 false, i1* %SF.i, align 1, !mcsema_real_eip !45
  store i1 false, i1* %OF.i, align 1, !mcsema_real_eip !45
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !45
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !45
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !45
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !45
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !45
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !45
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !45
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !45
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !45
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !45
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !45
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !45
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !45
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !45
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !45
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !45
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !45
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !45
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !45
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !45
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !45
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !45
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !45
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !45
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !45
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !45
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !45
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !45
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !45
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !45
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !45
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !45
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !45
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !45
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !45
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !45
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !45
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !45
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !45
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !45
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !45
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !45
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !45
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !45
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !45
  store i64 %trunc240.i, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !45
  store i64 %197, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !45
  call void @llvm.lifetime.start(i64 128, i8* %STi_val.i.0..sroa_cast.i)
  %204 = load <2 x i64>* %97, align 8
  %205 = load <2 x i64>* %98, align 8
  %206 = load <2 x i64>* %99, align 8
  %207 = load <2 x i64>* %100, align 8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast.i, i8* %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false)
  %208 = load <2 x i64>* %101, align 8
  store i64 %181, i64* %180, align 8, !mcsema_real_eip !46
  %209 = add i64 %166, -8, !mcsema_real_eip !47
  %210 = inttoptr i64 %209 to i64*, !mcsema_real_eip !47
  store i64 %201, i64* %210, align 8, !mcsema_real_eip !47
  %211 = add i64 %166, -16, !mcsema_real_eip !48
  %212 = inttoptr i64 %211 to i64*, !mcsema_real_eip !48
  store i64 %201, i64* %212, align 8, !mcsema_real_eip !48
  %213 = load i64* %210, align 8, !mcsema_real_eip !49
  %214 = add i64 %166, -24, !mcsema_real_eip !50
  %215 = inttoptr i64 %214 to i64*, !mcsema_real_eip !50
  store i64 %213, i64* %215, align 8, !mcsema_real_eip !50
  %216 = load i64* %212, align 8, !mcsema_real_eip !51
  %217 = add i64 %166, -32, !mcsema_real_eip !52
  %218 = inttoptr i64 %217 to i64*, !mcsema_real_eip !52
  store i64 %216, i64* %218, align 8, !mcsema_real_eip !52
  %219 = load i64* %215, align 8, !mcsema_real_eip !53
  %220 = inttoptr i64 %219 to i8*
  %221 = load i8* %220, align 1, !mcsema_real_eip !54
  %222 = add i64 %166, -33, !mcsema_real_eip !55
  %223 = inttoptr i64 %222 to i8*
  store i8 %221, i8* %223, align 1, !mcsema_real_eip !55
  %224 = tail call i8 @llvm.ctpop.i8(i8 %221) #0, !mcsema_real_eip !56
  %225 = icmp eq i8 %221, 0
  br i1 %225, label %sub_110.exit.i, label %block_0x144.i.i.preheader, !mcsema_real_eip !57

block_0x144.i.i.preheader:                        ; preds = %block_0x57.i
  br label %block_0x144.i.i

block_0x144.i.i:                                  ; preds = %block_0x135.i.i, %block_0x144.i.i.preheader
  %226 = phi i8 [ %storemerge.i.i, %block_0x135.i.i ], [ %221, %block_0x144.i.i.preheader ]
  %RCX_val.1.i.i = phi i64 [ %RCX_val.2.i.i, %block_0x135.i.i ], [ %RCX_val.0.i.i, %block_0x144.i.i.preheader ]
  %227 = icmp eq i8 %226, 47
  %228 = load i64* %218, align 8, !mcsema_real_eip !58
  %229 = inttoptr i64 %228 to i8*
  br i1 %227, label %block_0x153.i.i, label %block_0x15f.i.i, !mcsema_real_eip !59

block_0x15f.i.i:                                  ; preds = %block_0x144.i.i
  store i8 %226, i8* %229, align 1, !mcsema_real_eip !60
  %230 = load i64* %215, align 8, !mcsema_real_eip !61
  %231 = add i64 %230, 1
  store i64 %231, i64* %215, align 8, !mcsema_real_eip !62
  %232 = load i64* %218, align 8, !mcsema_real_eip !63
  %233 = add i64 %232, 1
  store i64 %233, i64* %218, align 8, !mcsema_real_eip !64
  %234 = load i64* %215, align 8, !mcsema_real_eip !65
  %235 = inttoptr i64 %234 to i8*
  %236 = load i8* %235, align 1, !mcsema_real_eip !66
  %237 = zext i8 %236 to i64, !mcsema_real_eip !66
  %238 = and i64 %228, -256, !mcsema_real_eip !66
  %239 = or i64 %237, %238
  br label %block_0x135.i.i, !mcsema_real_eip !67

block_0x153.i.i:                                  ; preds = %block_0x144.i.i
  store i8 92, i8* %229, align 1, !mcsema_real_eip !68
  %240 = load i64* %215, align 8, !mcsema_real_eip !61
  %241 = add i64 %240, 1
  store i64 %241, i64* %215, align 8, !mcsema_real_eip !62
  %242 = load i64* %218, align 8, !mcsema_real_eip !63
  %243 = add i64 %242, 1
  store i64 %243, i64* %218, align 8, !mcsema_real_eip !64
  %244 = load i64* %215, align 8, !mcsema_real_eip !65
  %245 = inttoptr i64 %244 to i8*
  %246 = load i8* %245, align 1, !mcsema_real_eip !66
  %247 = zext i8 %246 to i64, !mcsema_real_eip !66
  %248 = and i64 %RCX_val.1.i.i, -256, !mcsema_real_eip !66
  %249 = or i64 %247, %248
  br label %block_0x135.i.i, !mcsema_real_eip !67

block_0x135.i.i:                                  ; preds = %block_0x153.i.i, %block_0x15f.i.i
  %storemerge.i.i = phi i8 [ %246, %block_0x153.i.i ], [ %236, %block_0x15f.i.i ]
  %RCX_val.2.i.i = phi i64 [ %249, %block_0x153.i.i ], [ %239, %block_0x15f.i.i ]
  store i8 %storemerge.i.i, i8* %223, align 1
  %250 = icmp eq i8 %storemerge.i.i, 0
  br i1 %250, label %sub_110.exit.i.loopexit, label %block_0x144.i.i, !mcsema_real_eip !57

sub_110.exit.i.loopexit:                          ; preds = %block_0x135.i.i
  %RCX_val.2.i.i.lcssa = phi i64 [ %RCX_val.2.i.i, %block_0x135.i.i ]
  br label %sub_110.exit.i

sub_110.exit.i:                                   ; preds = %sub_110.exit.i.loopexit, %block_0x57.i
  %PF_val.0.in.in.i.i = phi i8 [ %224, %block_0x57.i ], [ 0, %sub_110.exit.i.loopexit ]
  %RCX_val.0.i233.i = phi i64 [ %RCX_val.0.i.i, %block_0x57.i ], [ %RCX_val.2.i.i.lcssa, %sub_110.exit.i.loopexit ]
  %PF_val.0.in.i.i = and i8 %PF_val.0.in.in.i.i, 1
  %PF_val.0.i.i = icmp eq i8 %PF_val.0.in.i.i, 0
  %251 = load i64* %180, align 8, !mcsema_real_eip !69
  store i64 0, i64* %RAX.i, align 8, !mcsema_real_eip !70
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !70
  store i64 %RCX_val.0.i233.i, i64* %RCX.i, align 8, !mcsema_real_eip !70
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !70
  store i64 %219, i64* %RSI.i, align 8, !mcsema_real_eip !70
  store i64 %201, i64* %RDI.i, align 8, !mcsema_real_eip !70
  store i64 %182, i64* %RSP.i, align 8, !mcsema_real_eip !70
  store i64 %251, i64* %RBP.i, align 8, !mcsema_real_eip !70
  store <2 x i64> %204, <2 x i64>* %97, align 8
  store <2 x i64> %205, <2 x i64>* %98, align 8
  store <2 x i64> %206, <2 x i64>* %99, align 8
  store <2 x i64> %207, <2 x i64>* %100, align 8
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !70
  store i1 false, i1* %CF.i, align 1, !mcsema_real_eip !70
  store i1 %PF_val.0.i.i, i1* %PF.i, align 1, !mcsema_real_eip !70
  store i1 false, i1* %AF.i, align 1, !mcsema_real_eip !70
  store i1 true, i1* %ZF.i, align 1, !mcsema_real_eip !70
  store i1 false, i1* %SF.i, align 1, !mcsema_real_eip !70
  store i1 false, i1* %OF.i, align 1, !mcsema_real_eip !70
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !70
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !70
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !70
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !70
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !70
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !70
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !70
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !70
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !70
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !70
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !70
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !70
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !70
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !70
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !70
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !70
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !70
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !70
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !70
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !70
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !70
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !70
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !70
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !70
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !70
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !70
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !70
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !70
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !70
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !70
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !70
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !70
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !70
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !70
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !70
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !70
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !70
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !70
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !70
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !70
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !70
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !70
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !70
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !70
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !70
  store <2 x i64> %208, <2 x i64>* %101, align 1
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast.i)
  %252 = bitcast <2 x i64> %204 to i128
  %trunc241.i = trunc i128 %252 to i64
  %253 = lshr i128 %252, 64
  %254 = trunc i128 %253 to i64
  %255 = bitcast <2 x i64> %205 to i128
  %trunc242.i = trunc i128 %255 to i64
  %256 = lshr i128 %255, 64
  %257 = trunc i128 %256 to i64
  %258 = bitcast <2 x i64> %206 to i128
  %trunc243.i = trunc i128 %258 to i64
  %259 = lshr i128 %258, 64
  %260 = trunc i128 %259 to i64
  %261 = bitcast <2 x i64> %207 to i128
  %trunc244.i = trunc i128 %261 to i64
  %262 = lshr i128 %261, 64
  %263 = trunc i128 %262 to i64
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !45
  %264 = bitcast <2 x i64> %208 to i128
  %trunc245.i = trunc i128 %264 to i64
  %265 = lshr i128 %264, 64
  %266 = trunc i128 %265 to i64
  br label %block_0x69.i, !mcsema_real_eip !71

block_0x69.i:                                     ; preds = %sub_110.exit.i, %sub_90.exit.i
  %R15_val.2.i = phi i64 [ %263, %sub_110.exit.i ], [ %194, %sub_90.exit.i ]
  %STACK_LIMIT_val.2.i = phi i64 [ %266, %sub_110.exit.i ], [ %197, %sub_90.exit.i ]
  %STACK_BASE_val.2.i = phi i64 [ %trunc245.i, %sub_110.exit.i ], [ %trunc240.i, %sub_90.exit.i ]
  %R14_val.2.i = phi i64 [ %trunc244.i, %sub_110.exit.i ], [ %trunc239.i, %sub_90.exit.i ]
  %R13_val.2.i = phi i64 [ %260, %sub_110.exit.i ], [ %191, %sub_90.exit.i ]
  %R12_val.2.i = phi i64 [ %trunc243.i, %sub_110.exit.i ], [ %trunc238.i, %sub_90.exit.i ]
  %R11_val.2.i = phi i64 [ %257, %sub_110.exit.i ], [ %188, %sub_90.exit.i ]
  %R10_val.2.i = phi i64 [ %trunc242.i, %sub_110.exit.i ], [ %trunc237.i, %sub_90.exit.i ]
  %R9_val.2.i = phi i64 [ %254, %sub_110.exit.i ], [ %185, %sub_90.exit.i ]
  %R8_val.2.i = phi i64 [ %trunc241.i, %sub_110.exit.i ], [ %trunc.i, %sub_90.exit.i ]
  %RBP_val.2.i = phi i64 [ %251, %sub_110.exit.i ], [ %181, %sub_90.exit.i ]
  %RDI_val.1.i = phi i64 [ %201, %sub_110.exit.i ], [ %RDI_val.0.i.i, %sub_90.exit.i ]
  %RSI_val.2.i = phi i64 [ %219, %sub_110.exit.i ], [ %RSI_val.0.i.i, %sub_90.exit.i ]
  %RCX_val.1.i = phi i64 [ %RCX_val.0.i233.i, %sub_110.exit.i ], [ %RCX_val.0.i.i, %sub_90.exit.i ]
  %267 = add i64 %RBP_val.2.i, -16, !mcsema_real_eip !72
  %268 = inttoptr i64 %267 to i32*
  %269 = load i32* %268, align 4, !mcsema_real_eip !72
  %270 = add i32 %269, 1
  store i32 %270, i32* %268, align 4, !mcsema_real_eip !73
  %271 = add i64 %RBP_val.2.i, -12, !mcsema_real_eip !12
  %272 = inttoptr i64 %271 to i32*
  %273 = load i32* %272, align 4, !mcsema_real_eip !12
  %274 = sub i32 %270, %273, !mcsema_real_eip !12
  %275 = xor i32 %274, %270, !mcsema_real_eip !12
  %276 = xor i32 %275, %273, !mcsema_real_eip !12
  %277 = trunc i32 %274 to i8, !mcsema_real_eip !12
  %278 = tail call i8 @llvm.ctpop.i8(i8 %277), !mcsema_real_eip !12
  %279 = icmp eq i32 %270, %273
  %280 = icmp slt i32 %274, 0
  %281 = icmp ult i32 %270, %273, !mcsema_real_eip !12
  %282 = xor i32 %273, %270, !mcsema_real_eip !12
  %283 = and i32 %275, %282, !mcsema_real_eip !12
  %284 = icmp slt i32 %283, 0
  %tmp349.i = xor i1 %280, %284
  br i1 %tmp349.i, label %block_0x33.i, label %sub_0.exit.loopexit, !mcsema_real_eip !13

sub_0.exit.loopexit:                              ; preds = %block_0x69.i
  %RCX_val.1.i.lcssa = phi i64 [ %RCX_val.1.i, %block_0x69.i ]
  %RSI_val.2.i.lcssa = phi i64 [ %RSI_val.2.i, %block_0x69.i ]
  %RDI_val.1.i.lcssa = phi i64 [ %RDI_val.1.i, %block_0x69.i ]
  %RBP_val.2.i.lcssa = phi i64 [ %RBP_val.2.i, %block_0x69.i ]
  %R8_val.2.i.lcssa = phi i64 [ %R8_val.2.i, %block_0x69.i ]
  %R9_val.2.i.lcssa = phi i64 [ %R9_val.2.i, %block_0x69.i ]
  %R10_val.2.i.lcssa = phi i64 [ %R10_val.2.i, %block_0x69.i ]
  %R11_val.2.i.lcssa = phi i64 [ %R11_val.2.i, %block_0x69.i ]
  %R12_val.2.i.lcssa = phi i64 [ %R12_val.2.i, %block_0x69.i ]
  %R13_val.2.i.lcssa = phi i64 [ %R13_val.2.i, %block_0x69.i ]
  %R14_val.2.i.lcssa = phi i64 [ %R14_val.2.i, %block_0x69.i ]
  %STACK_BASE_val.2.i.lcssa = phi i64 [ %STACK_BASE_val.2.i, %block_0x69.i ]
  %STACK_LIMIT_val.2.i.lcssa = phi i64 [ %STACK_LIMIT_val.2.i, %block_0x69.i ]
  %R15_val.2.i.lcssa = phi i64 [ %R15_val.2.i, %block_0x69.i ]
  %.lcssa = phi i64 [ %182, %block_0x69.i ]
  %RDX_val.0.i.i.lcssa = phi i64 [ %RDX_val.0.i.i, %block_0x69.i ]
  br label %sub_0.exit

sub_0.exit:                                       ; preds = %sub_0.exit.loopexit, %driverBlockRaw
  %R15_val.0.i = phi i64 [ %15, %driverBlockRaw ], [ %R15_val.2.i.lcssa, %sub_0.exit.loopexit ]
  %STACK_LIMIT_val.0.i = phi i64 [ %67, %driverBlockRaw ], [ %STACK_LIMIT_val.2.i.lcssa, %sub_0.exit.loopexit ]
  %STACK_BASE_val.0.i = phi i64 [ %66, %driverBlockRaw ], [ %STACK_BASE_val.2.i.lcssa, %sub_0.exit.loopexit ]
  %R14_val.0.i = phi i64 [ %14, %driverBlockRaw ], [ %R14_val.2.i.lcssa, %sub_0.exit.loopexit ]
  %R13_val.0.i = phi i64 [ %13, %driverBlockRaw ], [ %R13_val.2.i.lcssa, %sub_0.exit.loopexit ]
  %R12_val.0.i = phi i64 [ %12, %driverBlockRaw ], [ %R12_val.2.i.lcssa, %sub_0.exit.loopexit ]
  %R11_val.0.i = phi i64 [ %11, %driverBlockRaw ], [ %R11_val.2.i.lcssa, %sub_0.exit.loopexit ]
  %R10_val.0.i = phi i64 [ %10, %driverBlockRaw ], [ %R10_val.2.i.lcssa, %sub_0.exit.loopexit ]
  %R9_val.0.i = phi i64 [ %9, %driverBlockRaw ], [ %R9_val.2.i.lcssa, %sub_0.exit.loopexit ]
  %R8_val.0.i = phi i64 [ %8, %driverBlockRaw ], [ %R8_val.2.i.lcssa, %sub_0.exit.loopexit ]
  %RSP_val.0.i = phi i64 [ %70, %driverBlockRaw ], [ %.lcssa, %sub_0.exit.loopexit ]
  %RBP_val.0.i = phi i64 [ %68, %driverBlockRaw ], [ %RBP_val.2.i.lcssa, %sub_0.exit.loopexit ]
  %RDI_val.0.i = phi i64 [ %80, %driverBlockRaw ], [ %RDI_val.1.i.lcssa, %sub_0.exit.loopexit ]
  %RSI_val.0.i = phi i64 [ %4, %driverBlockRaw ], [ %RSI_val.2.i.lcssa, %sub_0.exit.loopexit ]
  %RDX_val.0.i = phi i64 [ %3, %driverBlockRaw ], [ %RDX_val.0.i.i.lcssa, %sub_0.exit.loopexit ]
  %RCX_val.0.i = phi i64 [ %2, %driverBlockRaw ], [ %RCX_val.1.i.lcssa, %sub_0.exit.loopexit ]
  %285 = add i64 %RBP_val.0.i, -24, !mcsema_real_eip !74
  %286 = inttoptr i64 %285 to i64*, !mcsema_real_eip !74
  %287 = load i64* %286, align 8, !mcsema_real_eip !74
  %288 = add i64 %287, 1, !mcsema_real_eip !75
  %289 = inttoptr i64 %288 to i8*
  store i8 2, i8* %289, align 1, !mcsema_real_eip !75
  %uadd350.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %RSP_val.0.i, i64 32)
  %290 = extractvalue { i64, i1 } %uadd350.i, 0
  %291 = xor i64 %290, %RSP_val.0.i, !mcsema_real_eip !76
  %292 = and i64 %291, 16, !mcsema_real_eip !76
  %293 = icmp ne i64 %292, 0, !mcsema_real_eip !76
  %294 = icmp slt i64 %290, 0
  %295 = icmp eq i64 %290, 0, !mcsema_real_eip !76
  %296 = xor i64 %RSP_val.0.i, -9223372036854775808, !mcsema_real_eip !76
  %297 = and i64 %291, %296, !mcsema_real_eip !76
  %298 = icmp slt i64 %297, 0
  %299 = trunc i64 %290 to i8, !mcsema_real_eip !76
  %300 = tail call i8 @llvm.ctpop.i8(i8 %299), !mcsema_real_eip !76
  %301 = and i8 %300, 1
  %302 = icmp eq i8 %301, 0
  %303 = extractvalue { i64, i1 } %uadd350.i, 1
  %304 = inttoptr i64 %290 to i64*, !mcsema_real_eip !77
  %305 = load i64* %304, align 8, !mcsema_real_eip !77
  %306 = add i64 %290, 16, !mcsema_real_eip !78
  store i64 %287, i64* %RAX.i, align 8, !mcsema_real_eip !78
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !78
  store i64 %RCX_val.0.i, i64* %RCX.i, align 8, !mcsema_real_eip !78
  store i64 %RDX_val.0.i, i64* %RDX.i, align 8, !mcsema_real_eip !78
  store i64 %RSI_val.0.i, i64* %RSI.i, align 8, !mcsema_real_eip !78
  store i64 %RDI_val.0.i, i64* %RDI.i, align 8, !mcsema_real_eip !78
  store i64 %306, i64* %RSP.i, align 8, !mcsema_real_eip !78
  store i64 %305, i64* %RBP.i, align 8, !mcsema_real_eip !78
  store i64 %R8_val.0.i, i64* %R8.i, align 8, !mcsema_real_eip !78
  store i64 %R9_val.0.i, i64* %R9.i, align 8, !mcsema_real_eip !78
  store i64 %R10_val.0.i, i64* %R10.i, align 8, !mcsema_real_eip !78
  store i64 %R11_val.0.i, i64* %R11.i, align 8, !mcsema_real_eip !78
  store i64 %R12_val.0.i, i64* %R12.i, align 8, !mcsema_real_eip !78
  store i64 %R13_val.0.i, i64* %R13.i, align 8, !mcsema_real_eip !78
  store i64 %R14_val.0.i, i64* %R14.i, align 8, !mcsema_real_eip !78
  store i64 %R15_val.0.i, i64* %R15.i, align 8, !mcsema_real_eip !78
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !78
  store i1 %303, i1* %CF.i, align 1, !mcsema_real_eip !78
  store i1 %302, i1* %PF.i, align 1, !mcsema_real_eip !78
  store i1 %293, i1* %AF.i, align 1, !mcsema_real_eip !78
  store i1 %295, i1* %ZF.i, align 1, !mcsema_real_eip !78
  store i1 %294, i1* %SF.i, align 1, !mcsema_real_eip !78
  store i1 %298, i1* %OF.i, align 1, !mcsema_real_eip !78
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !78
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !78
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !78
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !78
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !78
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !78
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !78
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !78
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !78
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !78
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !78
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !78
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !78
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !78
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !78
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !78
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !78
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !78
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !78
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !78
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !78
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !78
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !78
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !78
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !78
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !78
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !78
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !78
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !78
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !78
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !78
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !78
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !78
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !78
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !78
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !78
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !78
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !78
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !78
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !78
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !78
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !78
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !78
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !78
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !78
  store i64 %STACK_BASE_val.0.i, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !78
  store i64 %STACK_LIMIT_val.0.i, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !78
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
!2 = metadata !{i64 144, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!4 = metadata !{i64 8, [21 x i8] c"\09movq\09%rdi, -8(%rbp)\00"}
!5 = metadata !{i64 12, [22 x i8] c"\09movl\09%esi, -12(%rbp)\00"}
!6 = metadata !{i64 15, [20 x i8] c"\09movl\09$0, -16(%rbp)\00"}
!7 = metadata !{i64 22, [24 x i8] c"\09movslq\09-12(%rbp), %rdi\00"}
!8 = metadata !{i64 26, [15 x i8] c"\09shlq\09$3, %rdi\00"}
!9 = metadata !{i64 30, [9 x i8] c"\09callq\090\00"}
!10 = metadata !{i64 35, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!11 = metadata !{i64 39, [22 x i8] c"\09movl\09-16(%rbp), %eax\00"}
!12 = metadata !{i64 42, [22 x i8] c"\09cmpl\09-12(%rbp), %eax\00"}
!13 = metadata !{i64 45, [8 x i8] c"\09jge\0970\00"}
!14 = metadata !{i64 51, [24 x i8] c"\09movslq\09-16(%rbp), %rax\00"}
!15 = metadata !{i64 55, [21 x i8] c"\09movq\09-8(%rbp), %rcx\00"}
!16 = metadata !{i64 59, [26 x i8] c"\09movq\09(%rcx,%rax,8), %rax\00"}
!17 = metadata !{i64 63, [22 x i8] c"\09movq\09%rax, -32(%rbp)\00"}
!18 = metadata !{i64 71, [10 x i8] c"\09callq\0968\00"}
!19 = metadata !{i64 152, [21 x i8] c"\09movq\09%rdi, -8(%rbp)\00"}
!20 = metadata !{i64 156, [20 x i8] c"\09movl\09$1, -12(%rbp)\00"}
!21 = metadata !{i64 163, [21 x i8] c"\09movq\09-8(%rbp), %rdi\00"}
!22 = metadata !{i64 167, [9 x i8] c"\09callq\090\00"}
!23 = metadata !{i64 174, [22 x i8] c"\09movl\09%ecx, -16(%rbp)\00"}
!24 = metadata !{i64 177, [20 x i8] c"\09cmpl\09$1, -16(%rbp)\00"}
!25 = metadata !{i64 184, [8 x i8] c"\09jle\0959\00"}
!26 = metadata !{i64 190, [21 x i8] c"\09movq\09-8(%rbp), %rax\00"}
!27 = metadata !{i64 194, [18 x i8] c"\09movb\09(%rax), %cl\00"}
!28 = metadata !{i64 196, [21 x i8] c"\09movb\09%cl, -17(%rbp)\00"}
!29 = metadata !{i64 199, [22 x i8] c"\09movl\09-16(%rbp), %edx\00"}
!30 = metadata !{i64 208, [19 x i8] c"\09movslq\09%edx, %rax\00"}
!31 = metadata !{i64 211, [21 x i8] c"\09movq\09-8(%rbp), %rsi\00"}
!32 = metadata !{i64 215, [23 x i8] c"\09movb\09(%rsi,%rax), %cl\00"}
!33 = metadata !{i64 218, [21 x i8] c"\09movb\09%cl, -18(%rbp)\00"}
!34 = metadata !{i64 221, [24 x i8] c"\09movsbl\09-17(%rbp), %edx\00"}
!35 = metadata !{i64 231, [7 x i8] c"\09jne\097\00"}
!36 = metadata !{i64 237, [20 x i8] c"\09movl\09$0, -12(%rbp)\00"}
!37 = metadata !{i64 244, [7 x i8] c"\09jmp\090\00"}
!38 = metadata !{i64 249, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!39 = metadata !{i64 252, [16 x i8] c"\09addq\09$32, %rsp\00"}
!40 = metadata !{i64 256, [11 x i8] c"\09popq\09%rbp\00"}
!41 = metadata !{i64 257, [6 x i8] c"\09retq\00"}
!42 = metadata !{i64 76, [15 x i8] c"\09cmpl\09$0, %eax\00"}
!43 = metadata !{i64 81, [8 x i8] c"\09jne\0913\00"}
!44 = metadata !{i64 87, [22 x i8] c"\09movq\09-32(%rbp), %rdi\00"}
!45 = metadata !{i64 95, [11 x i8] c"\09callq\09172\00"}
!46 = metadata !{i64 272, [12 x i8] c"\09pushq\09%rbp\00"}
!47 = metadata !{i64 276, [21 x i8] c"\09movq\09%rdi, -8(%rbp)\00"}
!48 = metadata !{i64 280, [22 x i8] c"\09movq\09%rsi, -16(%rbp)\00"}
!49 = metadata !{i64 284, [21 x i8] c"\09movq\09-8(%rbp), %rsi\00"}
!50 = metadata !{i64 288, [22 x i8] c"\09movq\09%rsi, -24(%rbp)\00"}
!51 = metadata !{i64 292, [22 x i8] c"\09movq\09-16(%rbp), %rsi\00"}
!52 = metadata !{i64 296, [22 x i8] c"\09movq\09%rsi, -32(%rbp)\00"}
!53 = metadata !{i64 300, [22 x i8] c"\09movq\09-24(%rbp), %rsi\00"}
!54 = metadata !{i64 304, [18 x i8] c"\09movb\09(%rsi), %al\00"}
!55 = metadata !{i64 306, [21 x i8] c"\09movb\09%al, -33(%rbp)\00"}
!56 = metadata !{i64 313, [15 x i8] c"\09cmpl\09$0, %eax\00"}
!57 = metadata !{i64 318, [7 x i8] c"\09je\0978\00"}
!58 = metadata !{i64 339, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!59 = metadata !{i64 333, [8 x i8] c"\09jne\0912\00"}
!60 = metadata !{i64 358, [18 x i8] c"\09movb\09%al, (%rcx)\00"}
!61 = metadata !{i64 360, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!62 = metadata !{i64 370, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!63 = metadata !{i64 374, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!64 = metadata !{i64 384, [22 x i8] c"\09movq\09%rax, -32(%rbp)\00"}
!65 = metadata !{i64 388, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!66 = metadata !{i64 392, [18 x i8] c"\09movb\09(%rax), %cl\00"}
!67 = metadata !{i64 397, [9 x i8] c"\09jmp\09-93\00"}
!68 = metadata !{i64 343, [18 x i8] c"\09movb\09$92, (%rax)\00"}
!69 = metadata !{i64 402, [11 x i8] c"\09popq\09%rbp\00"}
!70 = metadata !{i64 403, [6 x i8] c"\09retq\00"}
!71 = metadata !{i64 100, [7 x i8] c"\09jmp\090\00"}
!72 = metadata !{i64 105, [22 x i8] c"\09movl\09-16(%rbp), %eax\00"}
!73 = metadata !{i64 113, [22 x i8] c"\09movl\09%eax, -16(%rbp)\00"}
!74 = metadata !{i64 121, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!75 = metadata !{i64 125, [18 x i8] c"\09movb\09$2, 1(%rax)\00"}
!76 = metadata !{i64 129, [16 x i8] c"\09addq\09$32, %rsp\00"}
!77 = metadata !{i64 133, [11 x i8] c"\09popq\09%rbp\00"}
!78 = metadata !{i64 134, [6 x i8] c"\09retq\00"}
