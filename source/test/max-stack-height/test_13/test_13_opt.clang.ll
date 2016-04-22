; ModuleID = 'test_13_opt.bc'
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
  %1 = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %1)
  %RAX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !3
  %RBX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !3
  %2 = load i64* %RBX.i, align 8, !mcsema_real_eip !3
  %RCX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !3
  %3 = load i64* %RCX.i, align 8, !mcsema_real_eip !3
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !3
  %4 = load i64* %RDX.i, align 8, !mcsema_real_eip !3
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !3
  %5 = load i64* %RSI.i, align 8, !mcsema_real_eip !3
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !3
  %6 = load i64* %RDI.i, align 8, !mcsema_real_eip !3
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !3
  %7 = load i64* %RSP.i, align 8, !mcsema_real_eip !3
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !3
  %8 = load i64* %RBP.i, align 8, !mcsema_real_eip !3
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !3
  %9 = load i64* %R8.i, align 8, !mcsema_real_eip !3
  %R9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !3
  %10 = load i64* %R9.i, align 8, !mcsema_real_eip !3
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !3
  %11 = load i64* %R10.i, align 8, !mcsema_real_eip !3
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
  %12 = load i64* %R11.i, align 8, !mcsema_real_eip !3
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %13 = load i64* %R12.i, align 8, !mcsema_real_eip !3
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !3
  %14 = load i64* %R13.i, align 8, !mcsema_real_eip !3
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %15 = load i64* %R14.i, align 8, !mcsema_real_eip !3
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !3
  %16 = load i64* %R15.i, align 8, !mcsema_real_eip !3
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %17 = load i64* %RIP.i, align 8, !mcsema_real_eip !3
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !3
  %18 = load i1* %DF.i, align 1, !mcsema_real_eip !3
  %19 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !3
  %20 = bitcast x86_fp80* %19 to i8*, !mcsema_real_eip !3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %20, i32 128, i32 4, i1 false), !mcsema_real_eip !3
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !3
  %21 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !3
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !3
  %22 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !3
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !3
  %23 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !3
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !3
  %24 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !3
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !3
  %25 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !3
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !3
  %26 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !3
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !3
  %27 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !3
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !3
  %28 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !3
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !3
  %29 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !3
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !3
  %30 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !3
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !3
  %31 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !3
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !3
  %32 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !3
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !3
  %33 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !3
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !3
  %34 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !3
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !3
  %35 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !3
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !3
  %36 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !3
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !3
  %37 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !3
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !3
  %38 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !3
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !3
  %39 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !3
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !3
  %40 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !3
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !3
  %41 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !3
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !3
  %42 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !3
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !3
  %43 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !3
  %44 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !3
  %45 = bitcast i8* %44 to i64*
  %46 = load i64* %45, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !3
  %47 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !3
  %48 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !3
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !3
  %49 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !3
  %50 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !3
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %51 = load i128* %XMM0.i, align 1, !mcsema_real_eip !3
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %52 = load i128* %XMM1.i, align 1, !mcsema_real_eip !3
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %53 = load i128* %XMM2.i, align 1, !mcsema_real_eip !3
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %54 = load i128* %XMM3.i, align 1, !mcsema_real_eip !3
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %55 = load i128* %XMM4.i, align 1, !mcsema_real_eip !3
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %56 = load i128* %XMM5.i, align 1, !mcsema_real_eip !3
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %57 = load i128* %XMM6.i, align 1, !mcsema_real_eip !3
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %58 = load i128* %XMM7.i, align 1, !mcsema_real_eip !3
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %59 = load i128* %XMM8.i, align 1, !mcsema_real_eip !3
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %60 = load i128* %XMM9.i, align 1, !mcsema_real_eip !3
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %61 = load i128* %XMM10.i, align 1, !mcsema_real_eip !3
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %62 = load i128* %XMM11.i, align 1, !mcsema_real_eip !3
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %63 = load i128* %XMM12.i, align 1, !mcsema_real_eip !3
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %64 = load i128* %XMM13.i, align 1, !mcsema_real_eip !3
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %65 = load i128* %XMM14.i, align 1, !mcsema_real_eip !3
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %66 = load i128* %XMM15.i, align 1, !mcsema_real_eip !3
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %67 = load i64* %STACK_BASE.i, align 8, !mcsema_real_eip !3
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %68 = load i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !3
  %69 = add i64 %7, -8
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !3
  store i64 %8, i64* %70, align 8, !mcsema_real_eip !3
  %71 = add i64 %7, -40
  %72 = add i64 %7, -16, !mcsema_real_eip !4
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !4
  store i64 %6, i64* %73, align 8, !mcsema_real_eip !4
  %74 = add i64 %7, -20, !mcsema_real_eip !5
  %75 = trunc i64 %5 to i32, !mcsema_real_eip !5
  %76 = inttoptr i64 %74 to i32*
  store i32 %75, i32* %76, align 4, !mcsema_real_eip !5
  %77 = add i64 %7, -24, !mcsema_real_eip !6
  %78 = inttoptr i64 %77 to i32*
  store i32 0, i32* %78, align 4, !mcsema_real_eip !6
  %79 = load i32* %76, align 4, !mcsema_real_eip !7
  %80 = sext i32 %79 to i64, !mcsema_real_eip !7
  %81 = shl nsw i64 %80, 3, !mcsema_real_eip !8
  %82 = tail call x86_64_sysvcc i64 @malloc(i64 %81), !mcsema_real_eip !9
  %83 = add i64 %7, -32, !mcsema_real_eip !10
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !10
  store i64 %82, i64* %84, align 8, !mcsema_real_eip !10
  %85 = load i32* %78, align 4, !mcsema_real_eip !11
  %86 = load i32* %76, align 4, !mcsema_real_eip !12
  %87 = sub i32 %85, %86, !mcsema_real_eip !12
  %88 = xor i32 %87, %85, !mcsema_real_eip !12
  %89 = icmp slt i32 %87, 0
  %90 = xor i32 %86, %85, !mcsema_real_eip !12
  %91 = and i32 %88, %90, !mcsema_real_eip !12
  %92 = icmp slt i32 %91, 0
  %tmp.i = xor i1 %89, %92
  br i1 %tmp.i, label %block_0x43.preheader.i, label %sub_10.exit, !mcsema_real_eip !13

block_0x43.preheader.i:                           ; preds = %driverBlockRaw
  %93 = icmp ult i32 %85, %86, !mcsema_real_eip !12
  %94 = icmp eq i32 %85, %86
  %95 = trunc i32 %87 to i8, !mcsema_real_eip !12
  %96 = tail call i8 @llvm.ctpop.i8(i8 %95), !mcsema_real_eip !12
  %97 = xor i32 %88, %86, !mcsema_real_eip !12
  %98 = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  %99 = bitcast i64* %R8.i to <2 x i64>*
  %100 = bitcast i64* %R10.i to <2 x i64>*
  %101 = bitcast i64* %R12.i to <2 x i64>*
  %102 = bitcast i64* %R14.i to <2 x i64>*
  %103 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  br label %block_0x43.i

block_0x43.i:                                     ; preds = %block_0x79.i, %block_0x43.preheader.i
  %104 = phi i32 [ %272, %block_0x79.i ], [ %85, %block_0x43.preheader.i ]
  %R15_val.1.i = phi i64 [ %R15_val.2.i, %block_0x79.i ], [ %16, %block_0x43.preheader.i ]
  %STACK_LIMIT_val.1.i = phi i64 [ %STACK_LIMIT_val.2.i, %block_0x79.i ], [ %68, %block_0x43.preheader.i ]
  %STACK_BASE_val.1.i = phi i64 [ %STACK_BASE_val.2.i, %block_0x79.i ], [ %67, %block_0x43.preheader.i ]
  %OF_val.0.i = phi i1 [ %286, %block_0x79.i ], [ %92, %block_0x43.preheader.i ]
  %SF_val.0.i = phi i1 [ %282, %block_0x79.i ], [ %89, %block_0x43.preheader.i ]
  %CF_val.0.i = phi i1 [ %283, %block_0x79.i ], [ %93, %block_0x43.preheader.i ]
  %AF_val.0.in.in.i = phi i32 [ %278, %block_0x79.i ], [ %97, %block_0x43.preheader.i ]
  %PF_val.0.in.in.i = phi i8 [ %280, %block_0x79.i ], [ %96, %block_0x43.preheader.i ]
  %ZF_val.0.i = phi i1 [ %281, %block_0x79.i ], [ %94, %block_0x43.preheader.i ]
  %R14_val.1.i = phi i64 [ %R14_val.2.i, %block_0x79.i ], [ %15, %block_0x43.preheader.i ]
  %R13_val.1.i = phi i64 [ %R13_val.2.i, %block_0x79.i ], [ %14, %block_0x43.preheader.i ]
  %R12_val.1.i = phi i64 [ %R12_val.2.i, %block_0x79.i ], [ %13, %block_0x43.preheader.i ]
  %R11_val.1.i = phi i64 [ %R11_val.2.i, %block_0x79.i ], [ %12, %block_0x43.preheader.i ]
  %R10_val.1.i = phi i64 [ %R10_val.2.i, %block_0x79.i ], [ %11, %block_0x43.preheader.i ]
  %R9_val.1.i = phi i64 [ %R9_val.2.i, %block_0x79.i ], [ %10, %block_0x43.preheader.i ]
  %R8_val.1.i = phi i64 [ %R8_val.2.i, %block_0x79.i ], [ %9, %block_0x43.preheader.i ]
  %RSP_val.1.i = phi i64 [ %184, %block_0x79.i ], [ %71, %block_0x43.preheader.i ]
  %RBP_val.1.i = phi i64 [ %RBP_val.2.i, %block_0x79.i ], [ %69, %block_0x43.preheader.i ]
  %RSI_val.1.i = phi i64 [ %RSI_val.2.i, %block_0x79.i ], [ %5, %block_0x43.preheader.i ]
  %RDX_val.1.i = phi i64 [ %RDX_val.0.i.i, %block_0x79.i ], [ %4, %block_0x43.preheader.i ]
  %PF_val.0.in.i = and i8 %PF_val.0.in.in.i, 1
  %AF_val.0.in.i = and i32 %AF_val.0.in.in.i, 16
  %PF_val.0.i = icmp eq i8 %PF_val.0.in.i, 0
  %AF_val.0.i = icmp ne i32 %AF_val.0.in.i, 0
  %105 = sext i32 %104 to i64, !mcsema_real_eip !14
  %106 = add i64 %RBP_val.1.i, -8, !mcsema_real_eip !15
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !15
  %108 = load i64* %107, align 8, !mcsema_real_eip !15
  %109 = shl nsw i64 %105, 3
  %110 = add i64 %108, %109, !mcsema_real_eip !16
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !16
  %112 = load i64* %111, align 8, !mcsema_real_eip !16
  %113 = add i64 %RBP_val.1.i, -32, !mcsema_real_eip !17
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !17
  store i64 %112, i64* %114, align 8, !mcsema_real_eip !17
  %115 = add i64 %RSP_val.1.i, -8
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !18
  store i64 -4981261766360305936, i64* %116, align 8, !mcsema_real_eip !18
  store i64 %112, i64* %RAX.i, align 8, !mcsema_real_eip !18
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !18
  store i64 %108, i64* %RCX.i, align 8, !mcsema_real_eip !18
  store i64 %RDX_val.1.i, i64* %RDX.i, align 8, !mcsema_real_eip !18
  store i64 %RSI_val.1.i, i64* %RSI.i, align 8, !mcsema_real_eip !18
  store i64 %112, i64* %RDI.i, align 8, !mcsema_real_eip !18
  store i64 %115, i64* %RSP.i, align 8, !mcsema_real_eip !18
  store i64 %RBP_val.1.i, i64* %RBP.i, align 8, !mcsema_real_eip !18
  store i64 %R8_val.1.i, i64* %R8.i, align 8, !mcsema_real_eip !18
  store i64 %R9_val.1.i, i64* %R9.i, align 8, !mcsema_real_eip !18
  store i64 %R10_val.1.i, i64* %R10.i, align 8, !mcsema_real_eip !18
  store i64 %R11_val.1.i, i64* %R11.i, align 8, !mcsema_real_eip !18
  store i64 %R12_val.1.i, i64* %R12.i, align 8, !mcsema_real_eip !18
  store i64 %R13_val.1.i, i64* %R13.i, align 8, !mcsema_real_eip !18
  store i64 %R14_val.1.i, i64* %R14.i, align 8, !mcsema_real_eip !18
  store i64 %R15_val.1.i, i64* %R15.i, align 8, !mcsema_real_eip !18
  store i64 %17, i64* %RIP.i, align 8, !mcsema_real_eip !18
  store i1 %CF_val.0.i, i1* %CF.i, align 1, !mcsema_real_eip !18
  store i1 %PF_val.0.i, i1* %PF.i, align 1, !mcsema_real_eip !18
  store i1 %AF_val.0.i, i1* %AF.i, align 1, !mcsema_real_eip !18
  store i1 %ZF_val.0.i, i1* %ZF.i, align 1, !mcsema_real_eip !18
  store i1 %SF_val.0.i, i1* %SF.i, align 1, !mcsema_real_eip !18
  store i1 %OF_val.0.i, i1* %OF.i, align 1, !mcsema_real_eip !18
  store i1 %18, i1* %DF.i, align 1, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !18
  store i1 %21, i1* %FPU_B.i, align 1, !mcsema_real_eip !18
  store i1 %22, i1* %FPU_C3.i, align 1, !mcsema_real_eip !18
  store i3 %23, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !18
  store i1 %24, i1* %FPU_C2.i, align 1, !mcsema_real_eip !18
  store i1 %25, i1* %FPU_C1.i, align 1, !mcsema_real_eip !18
  store i1 %26, i1* %FPU_C0.i, align 1, !mcsema_real_eip !18
  store i1 %27, i1* %FPU_ES.i, align 1, !mcsema_real_eip !18
  store i1 %28, i1* %FPU_SF.i, align 1, !mcsema_real_eip !18
  store i1 %29, i1* %FPU_PE.i, align 1, !mcsema_real_eip !18
  store i1 %30, i1* %FPU_UE.i, align 1, !mcsema_real_eip !18
  store i1 %31, i1* %FPU_OE.i, align 1, !mcsema_real_eip !18
  store i1 %32, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !18
  store i1 %33, i1* %FPU_DE.i, align 1, !mcsema_real_eip !18
  store i1 %34, i1* %FPU_IE.i, align 1, !mcsema_real_eip !18
  store i1 %35, i1* %FPU_X.i, align 1, !mcsema_real_eip !18
  store i2 %36, i2* %FPU_RC.i, align 1, !mcsema_real_eip !18
  store i2 %37, i2* %FPU_PC.i, align 1, !mcsema_real_eip !18
  store i1 %38, i1* %FPU_PM.i, align 1, !mcsema_real_eip !18
  store i1 %39, i1* %FPU_UM.i, align 1, !mcsema_real_eip !18
  store i1 %40, i1* %FPU_OM.i, align 1, !mcsema_real_eip !18
  store i1 %41, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !18
  store i1 %42, i1* %FPU_DM.i, align 1, !mcsema_real_eip !18
  store i1 %43, i1* %FPU_IM.i, align 1, !mcsema_real_eip !18
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !18
  store i64 %48, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !18
  store i16 %49, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !18
  store i64 %50, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !18
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !18
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !18
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !18
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !18
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !18
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !18
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !18
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !18
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !18
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !18
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !18
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !18
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !18
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !18
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !18
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !18
  store i64 %STACK_BASE_val.1.i, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !18
  store i64 %STACK_LIMIT_val.1.i, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !18
  call void @llvm.lifetime.start(i64 128, i8* %98)
  %117 = load <2 x i64>* %99, align 8
  %118 = load <2 x i64>* %100, align 8
  %119 = load <2 x i64>* %101, align 8
  %120 = load <2 x i64>* %102, align 8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %98, i8* %1, i32 128, i32 16, i1 false)
  %121 = load <2 x i64>* %103, align 8
  %122 = add i64 %RSP_val.1.i, -16
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.1.i, i64* %123, align 8, !mcsema_real_eip !2
  %124 = add i64 %RSP_val.1.i, -48
  %125 = add i64 %RSP_val.1.i, -24, !mcsema_real_eip !19
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !19
  store i64 %112, i64* %126, align 8, !mcsema_real_eip !19
  %127 = add i64 %RSP_val.1.i, -28, !mcsema_real_eip !20
  %128 = inttoptr i64 %127 to i32*
  store i32 1, i32* %128, align 4, !mcsema_real_eip !20
  %129 = load i64* %126, align 8, !mcsema_real_eip !21
  %130 = tail call x86_64_sysvcc i64 @strlen(i64 %129), !mcsema_real_eip !22
  %131 = and i64 %130, 4294967295
  %132 = add i64 %RSP_val.1.i, -32, !mcsema_real_eip !23
  %133 = trunc i64 %130 to i32, !mcsema_real_eip !23
  %134 = inttoptr i64 %132 to i32*
  store i32 %133, i32* %134, align 4, !mcsema_real_eip !23
  %135 = add i32 %133, -1
  %136 = icmp eq i32 %135, 0, !mcsema_real_eip !24
  %137 = icmp slt i32 %135, 0
  %138 = sub i32 0, %133
  %139 = and i32 %133, %138
  %140 = icmp slt i32 %139, 0
  %141 = xor i1 %137, %140
  %142 = or i1 %136, %141, !mcsema_real_eip !25
  br i1 %142, label %sub_a0.exitthread-pre-split.i, label %block_0xce.i.i, !mcsema_real_eip !25

block_0xce.i.i:                                   ; preds = %block_0x43.i
  %143 = load i64* %126, align 8, !mcsema_real_eip !26
  %144 = inttoptr i64 %143 to i8*
  %145 = load i8* %144, align 1, !mcsema_real_eip !27
  %146 = and i64 %130, 4294967040, !mcsema_real_eip !27
  %147 = add i64 %RSP_val.1.i, -33, !mcsema_real_eip !28
  %148 = inttoptr i64 %147 to i8*
  store i8 %145, i8* %148, align 1, !mcsema_real_eip !28
  %149 = load i32* %134, align 4, !mcsema_real_eip !29
  %150 = add i32 %149, -1
  %151 = sext i32 %150 to i64, !mcsema_real_eip !30
  %152 = load i64* %126, align 8, !mcsema_real_eip !31
  %153 = add i64 %151, %152, !mcsema_real_eip !32
  %154 = inttoptr i64 %153 to i8*
  %155 = load i8* %154, align 1, !mcsema_real_eip !32
  %156 = zext i8 %155 to i64, !mcsema_real_eip !32
  %157 = or i64 %156, %146
  %158 = add i64 %RSP_val.1.i, -34, !mcsema_real_eip !33
  %159 = inttoptr i64 %158 to i8*
  store i8 %155, i8* %159, align 1, !mcsema_real_eip !33
  %160 = load i8* %148, align 1, !mcsema_real_eip !34
  %161 = sext i8 %160 to i64
  %162 = and i64 %161, 4294967295
  %163 = sext i8 %155 to i64
  %164 = and i64 %163, 4294967295
  %165 = icmp eq i8 %160, %155
  br i1 %165, label %block_0xfd.i.i, label %sub_a0.exitthread-pre-split.i, !mcsema_real_eip !35

block_0xfd.i.i:                                   ; preds = %block_0xce.i.i
  store i32 0, i32* %128, align 4, !mcsema_real_eip !36
  br label %sub_a0.exit.i, !mcsema_real_eip !37

sub_a0.exitthread-pre-split.i:                    ; preds = %block_0xce.i.i, %block_0x43.i
  %RDI_val.0.i.ph.i = phi i64 [ %164, %block_0xce.i.i ], [ %129, %block_0x43.i ]
  %RSI_val.0.i.ph.i = phi i64 [ %152, %block_0xce.i.i ], [ %RSI_val.1.i, %block_0x43.i ]
  %RDX_val.0.i.ph.i = phi i64 [ %162, %block_0xce.i.i ], [ %RDX_val.1.i, %block_0x43.i ]
  %RCX_val.0.i.ph.i = phi i64 [ %157, %block_0xce.i.i ], [ %131, %block_0x43.i ]
  %.pr.i = load i32* %128, align 4
  br label %sub_a0.exit.i

sub_a0.exit.i:                                    ; preds = %sub_a0.exitthread-pre-split.i, %block_0xfd.i.i
  %166 = phi i32 [ %.pr.i, %sub_a0.exitthread-pre-split.i ], [ 0, %block_0xfd.i.i ]
  %RDI_val.0.i.i = phi i64 [ %RDI_val.0.i.ph.i, %sub_a0.exitthread-pre-split.i ], [ %164, %block_0xfd.i.i ]
  %RSI_val.0.i.i = phi i64 [ %RSI_val.0.i.ph.i, %sub_a0.exitthread-pre-split.i ], [ %152, %block_0xfd.i.i ]
  %RDX_val.0.i.i = phi i64 [ %RDX_val.0.i.ph.i, %sub_a0.exitthread-pre-split.i ], [ %162, %block_0xfd.i.i ]
  %RCX_val.0.i.i = phi i64 [ %RCX_val.0.i.ph.i, %sub_a0.exitthread-pre-split.i ], [ %157, %block_0xfd.i.i ]
  %167 = zext i32 %166 to i64, !mcsema_real_eip !38
  %uadd.i.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %124, i64 32)
  %168 = extractvalue { i64, i1 } %uadd.i.i, 0
  %169 = xor i64 %168, %124, !mcsema_real_eip !39
  %170 = and i64 %169, 16, !mcsema_real_eip !39
  %171 = icmp ne i64 %170, 0, !mcsema_real_eip !39
  %172 = icmp slt i64 %168, 0
  %173 = icmp eq i64 %168, 0, !mcsema_real_eip !39
  %174 = add i64 %RSP_val.1.i, 9223372036854775760
  %175 = and i64 %169, %174, !mcsema_real_eip !39
  %176 = icmp slt i64 %175, 0
  %177 = trunc i64 %168 to i8, !mcsema_real_eip !39
  %178 = tail call i8 @llvm.ctpop.i8(i8 %177), !mcsema_real_eip !39
  %179 = and i8 %178, 1
  %180 = icmp eq i8 %179, 0
  %181 = extractvalue { i64, i1 } %uadd.i.i, 1
  %182 = inttoptr i64 %168 to i64*
  %183 = load i64* %182, align 8, !mcsema_real_eip !40
  %184 = add i64 %168, 16, !mcsema_real_eip !41
  store i64 %167, i64* %RAX.i, align 8, !mcsema_real_eip !41
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !41
  store i64 %RCX_val.0.i.i, i64* %RCX.i, align 8, !mcsema_real_eip !41
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !41
  store i64 %RSI_val.0.i.i, i64* %RSI.i, align 8, !mcsema_real_eip !41
  store i64 %RDI_val.0.i.i, i64* %RDI.i, align 8, !mcsema_real_eip !41
  store i64 %184, i64* %RSP.i, align 8, !mcsema_real_eip !41
  store i64 %183, i64* %RBP.i, align 8, !mcsema_real_eip !41
  store <2 x i64> %117, <2 x i64>* %99, align 8
  store <2 x i64> %118, <2 x i64>* %100, align 8
  store <2 x i64> %119, <2 x i64>* %101, align 8
  store <2 x i64> %120, <2 x i64>* %102, align 8
  store i64 %17, i64* %RIP.i, align 8, !mcsema_real_eip !41
  store i1 %181, i1* %CF.i, align 1, !mcsema_real_eip !41
  store i1 %180, i1* %PF.i, align 1, !mcsema_real_eip !41
  store i1 %171, i1* %AF.i, align 1, !mcsema_real_eip !41
  store i1 %173, i1* %ZF.i, align 1, !mcsema_real_eip !41
  store i1 %172, i1* %SF.i, align 1, !mcsema_real_eip !41
  store i1 %176, i1* %OF.i, align 1, !mcsema_real_eip !41
  store i1 %18, i1* %DF.i, align 1, !mcsema_real_eip !41
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %98, i32 128, i32 8, i1 false), !mcsema_real_eip !41
  store i1 %21, i1* %FPU_B.i, align 1, !mcsema_real_eip !41
  store i1 %22, i1* %FPU_C3.i, align 1, !mcsema_real_eip !41
  store i3 %23, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !41
  store i1 %24, i1* %FPU_C2.i, align 1, !mcsema_real_eip !41
  store i1 %25, i1* %FPU_C1.i, align 1, !mcsema_real_eip !41
  store i1 %26, i1* %FPU_C0.i, align 1, !mcsema_real_eip !41
  store i1 %27, i1* %FPU_ES.i, align 1, !mcsema_real_eip !41
  store i1 %28, i1* %FPU_SF.i, align 1, !mcsema_real_eip !41
  store i1 %29, i1* %FPU_PE.i, align 1, !mcsema_real_eip !41
  store i1 %30, i1* %FPU_UE.i, align 1, !mcsema_real_eip !41
  store i1 %31, i1* %FPU_OE.i, align 1, !mcsema_real_eip !41
  store i1 %32, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !41
  store i1 %33, i1* %FPU_DE.i, align 1, !mcsema_real_eip !41
  store i1 %34, i1* %FPU_IE.i, align 1, !mcsema_real_eip !41
  store i1 %35, i1* %FPU_X.i, align 1, !mcsema_real_eip !41
  store i2 %36, i2* %FPU_RC.i, align 1, !mcsema_real_eip !41
  store i2 %37, i2* %FPU_PC.i, align 1, !mcsema_real_eip !41
  store i1 %38, i1* %FPU_PM.i, align 1, !mcsema_real_eip !41
  store i1 %39, i1* %FPU_UM.i, align 1, !mcsema_real_eip !41
  store i1 %40, i1* %FPU_OM.i, align 1, !mcsema_real_eip !41
  store i1 %41, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !41
  store i1 %42, i1* %FPU_DM.i, align 1, !mcsema_real_eip !41
  store i1 %43, i1* %FPU_IM.i, align 1, !mcsema_real_eip !41
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !41
  store i64 %48, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !41
  store i16 %49, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !41
  store i64 %50, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !41
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !41
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !41
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !41
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !41
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !41
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !41
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !41
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !41
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !41
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !41
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !41
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !41
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !41
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !41
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !41
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !41
  store <2 x i64> %121, <2 x i64>* %103, align 1
  call void @llvm.lifetime.end(i64 128, i8* %98)
  %185 = bitcast <2 x i64> %117 to i128
  %trunc.i = trunc i128 %185 to i64
  %186 = lshr i128 %185, 64
  %187 = trunc i128 %186 to i64
  %188 = bitcast <2 x i64> %118 to i128
  %trunc67.i = trunc i128 %188 to i64
  %189 = lshr i128 %188, 64
  %190 = trunc i128 %189 to i64
  %191 = bitcast <2 x i64> %119 to i128
  %trunc68.i = trunc i128 %191 to i64
  %192 = lshr i128 %191, 64
  %193 = trunc i128 %192 to i64
  %194 = bitcast <2 x i64> %120 to i128
  %trunc69.i = trunc i128 %194 to i64
  %195 = lshr i128 %194, 64
  %196 = trunc i128 %195 to i64
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %20, i32 128, i32 4, i1 false), !mcsema_real_eip !18
  %197 = bitcast <2 x i64> %121 to i128
  %trunc70.i = trunc i128 %197 to i64
  %198 = lshr i128 %197, 64
  %199 = trunc i128 %198 to i64
  %200 = icmp eq i32 %166, 0, !mcsema_real_eip !42
  br i1 %200, label %block_0x67.i, label %block_0x79.i, !mcsema_real_eip !43

block_0x67.i:                                     ; preds = %sub_a0.exit.i
  %201 = add i64 %183, -32, !mcsema_real_eip !44
  %202 = inttoptr i64 %201 to i64*, !mcsema_real_eip !44
  %203 = load i64* %202, align 8, !mcsema_real_eip !44
  %204 = add i64 %168, 8
  %205 = inttoptr i64 %204 to i64*, !mcsema_real_eip !45
  store i64 -4981261766360305936, i64* %205, align 8, !mcsema_real_eip !45
  store i64 %167, i64* %RAX.i, align 8, !mcsema_real_eip !45
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !45
  store i64 %RCX_val.0.i.i, i64* %RCX.i, align 8, !mcsema_real_eip !45
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !45
  store i64 %203, i64* %RSI.i, align 8, !mcsema_real_eip !45
  store i64 %203, i64* %RDI.i, align 8, !mcsema_real_eip !45
  store i64 %204, i64* %RSP.i, align 8, !mcsema_real_eip !45
  store i64 %183, i64* %RBP.i, align 8, !mcsema_real_eip !45
  store i64 %trunc.i, i64* %R8.i, align 8, !mcsema_real_eip !45
  store i64 %187, i64* %R9.i, align 8, !mcsema_real_eip !45
  store i64 %trunc67.i, i64* %R10.i, align 8, !mcsema_real_eip !45
  store i64 %190, i64* %R11.i, align 8, !mcsema_real_eip !45
  store i64 %trunc68.i, i64* %R12.i, align 8, !mcsema_real_eip !45
  store i64 %193, i64* %R13.i, align 8, !mcsema_real_eip !45
  store i64 %trunc69.i, i64* %R14.i, align 8, !mcsema_real_eip !45
  store i64 %196, i64* %R15.i, align 8, !mcsema_real_eip !45
  store i64 %17, i64* %RIP.i, align 8, !mcsema_real_eip !45
  store i1 false, i1* %CF.i, align 1, !mcsema_real_eip !45
  store i1 true, i1* %PF.i, align 1, !mcsema_real_eip !45
  store i1 false, i1* %AF.i, align 1, !mcsema_real_eip !45
  store i1 true, i1* %ZF.i, align 1, !mcsema_real_eip !45
  store i1 false, i1* %SF.i, align 1, !mcsema_real_eip !45
  store i1 false, i1* %OF.i, align 1, !mcsema_real_eip !45
  store i1 %18, i1* %DF.i, align 1, !mcsema_real_eip !45
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !45
  store i1 %21, i1* %FPU_B.i, align 1, !mcsema_real_eip !45
  store i1 %22, i1* %FPU_C3.i, align 1, !mcsema_real_eip !45
  store i3 %23, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !45
  store i1 %24, i1* %FPU_C2.i, align 1, !mcsema_real_eip !45
  store i1 %25, i1* %FPU_C1.i, align 1, !mcsema_real_eip !45
  store i1 %26, i1* %FPU_C0.i, align 1, !mcsema_real_eip !45
  store i1 %27, i1* %FPU_ES.i, align 1, !mcsema_real_eip !45
  store i1 %28, i1* %FPU_SF.i, align 1, !mcsema_real_eip !45
  store i1 %29, i1* %FPU_PE.i, align 1, !mcsema_real_eip !45
  store i1 %30, i1* %FPU_UE.i, align 1, !mcsema_real_eip !45
  store i1 %31, i1* %FPU_OE.i, align 1, !mcsema_real_eip !45
  store i1 %32, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !45
  store i1 %33, i1* %FPU_DE.i, align 1, !mcsema_real_eip !45
  store i1 %34, i1* %FPU_IE.i, align 1, !mcsema_real_eip !45
  store i1 %35, i1* %FPU_X.i, align 1, !mcsema_real_eip !45
  store i2 %36, i2* %FPU_RC.i, align 1, !mcsema_real_eip !45
  store i2 %37, i2* %FPU_PC.i, align 1, !mcsema_real_eip !45
  store i1 %38, i1* %FPU_PM.i, align 1, !mcsema_real_eip !45
  store i1 %39, i1* %FPU_UM.i, align 1, !mcsema_real_eip !45
  store i1 %40, i1* %FPU_OM.i, align 1, !mcsema_real_eip !45
  store i1 %41, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !45
  store i1 %42, i1* %FPU_DM.i, align 1, !mcsema_real_eip !45
  store i1 %43, i1* %FPU_IM.i, align 1, !mcsema_real_eip !45
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !45
  store i64 %48, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !45
  store i16 %49, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !45
  store i64 %50, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !45
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !45
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !45
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !45
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !45
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !45
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !45
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !45
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !45
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !45
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !45
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !45
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !45
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !45
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !45
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !45
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !45
  store i64 %trunc70.i, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !45
  store i64 %199, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !45
  call void @llvm.lifetime.start(i64 128, i8* %98)
  %206 = load <2 x i64>* %99, align 8
  %207 = load <2 x i64>* %100, align 8
  %208 = load <2 x i64>* %101, align 8
  %209 = load <2 x i64>* %102, align 8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %98, i8* %1, i32 128, i32 16, i1 false)
  %210 = load <2 x i64>* %103, align 8
  store i64 %183, i64* %182, align 8, !mcsema_real_eip !46
  %211 = add i64 %168, -8, !mcsema_real_eip !47
  %212 = inttoptr i64 %211 to i64*, !mcsema_real_eip !47
  store i64 %203, i64* %212, align 8, !mcsema_real_eip !47
  %213 = add i64 %168, -16, !mcsema_real_eip !48
  %214 = inttoptr i64 %213 to i64*, !mcsema_real_eip !48
  store i64 %203, i64* %214, align 8, !mcsema_real_eip !48
  %215 = load i64* %212, align 8, !mcsema_real_eip !49
  %216 = add i64 %168, -24, !mcsema_real_eip !50
  %217 = inttoptr i64 %216 to i64*, !mcsema_real_eip !50
  store i64 %215, i64* %217, align 8, !mcsema_real_eip !50
  %218 = load i64* %214, align 8, !mcsema_real_eip !51
  %219 = add i64 %168, -32, !mcsema_real_eip !52
  %220 = inttoptr i64 %219 to i64*, !mcsema_real_eip !52
  store i64 %218, i64* %220, align 8, !mcsema_real_eip !52
  %221 = load i64* %217, align 8, !mcsema_real_eip !53
  %222 = inttoptr i64 %221 to i8*
  %223 = load i8* %222, align 1, !mcsema_real_eip !54
  %224 = add i64 %168, -33, !mcsema_real_eip !55
  %225 = inttoptr i64 %224 to i8*
  store i8 %223, i8* %225, align 1, !mcsema_real_eip !55
  %226 = tail call i8 @llvm.ctpop.i8(i8 %223) #0, !mcsema_real_eip !56
  %227 = icmp eq i8 %223, 0
  br i1 %227, label %sub_120.exit.i, label %block_0x154.i.i.preheader, !mcsema_real_eip !57

block_0x154.i.i.preheader:                        ; preds = %block_0x67.i
  br label %block_0x154.i.i

block_0x154.i.i:                                  ; preds = %block_0x145.i.i, %block_0x154.i.i.preheader
  %228 = phi i8 [ %storemerge.i.i, %block_0x145.i.i ], [ %223, %block_0x154.i.i.preheader ]
  %RCX_val.1.i.i = phi i64 [ %RCX_val.2.i.i, %block_0x145.i.i ], [ %RCX_val.0.i.i, %block_0x154.i.i.preheader ]
  %229 = icmp eq i8 %228, 47
  %230 = load i64* %220, align 8, !mcsema_real_eip !58
  %231 = inttoptr i64 %230 to i8*
  br i1 %229, label %block_0x163.i.i, label %block_0x16f.i.i, !mcsema_real_eip !59

block_0x16f.i.i:                                  ; preds = %block_0x154.i.i
  store i8 %228, i8* %231, align 1, !mcsema_real_eip !60
  %232 = load i64* %217, align 8, !mcsema_real_eip !61
  %233 = add i64 %232, 1
  store i64 %233, i64* %217, align 8, !mcsema_real_eip !62
  %234 = load i64* %220, align 8, !mcsema_real_eip !63
  %235 = add i64 %234, 1
  store i64 %235, i64* %220, align 8, !mcsema_real_eip !64
  %236 = load i64* %217, align 8, !mcsema_real_eip !65
  %237 = inttoptr i64 %236 to i8*
  %238 = load i8* %237, align 1, !mcsema_real_eip !66
  %239 = zext i8 %238 to i64, !mcsema_real_eip !66
  %240 = and i64 %230, -256, !mcsema_real_eip !66
  %241 = or i64 %239, %240
  br label %block_0x145.i.i, !mcsema_real_eip !67

block_0x163.i.i:                                  ; preds = %block_0x154.i.i
  store i8 92, i8* %231, align 1, !mcsema_real_eip !68
  %242 = load i64* %217, align 8, !mcsema_real_eip !61
  %243 = add i64 %242, 1
  store i64 %243, i64* %217, align 8, !mcsema_real_eip !62
  %244 = load i64* %220, align 8, !mcsema_real_eip !63
  %245 = add i64 %244, 1
  store i64 %245, i64* %220, align 8, !mcsema_real_eip !64
  %246 = load i64* %217, align 8, !mcsema_real_eip !65
  %247 = inttoptr i64 %246 to i8*
  %248 = load i8* %247, align 1, !mcsema_real_eip !66
  %249 = zext i8 %248 to i64, !mcsema_real_eip !66
  %250 = and i64 %RCX_val.1.i.i, -256, !mcsema_real_eip !66
  %251 = or i64 %249, %250
  br label %block_0x145.i.i, !mcsema_real_eip !67

block_0x145.i.i:                                  ; preds = %block_0x163.i.i, %block_0x16f.i.i
  %storemerge.i.i = phi i8 [ %248, %block_0x163.i.i ], [ %238, %block_0x16f.i.i ]
  %RCX_val.2.i.i = phi i64 [ %251, %block_0x163.i.i ], [ %241, %block_0x16f.i.i ]
  store i8 %storemerge.i.i, i8* %225, align 1
  %252 = icmp eq i8 %storemerge.i.i, 0
  br i1 %252, label %sub_120.exit.i.loopexit, label %block_0x154.i.i, !mcsema_real_eip !57

sub_120.exit.i.loopexit:                          ; preds = %block_0x145.i.i
  %RCX_val.2.i.i.lcssa = phi i64 [ %RCX_val.2.i.i, %block_0x145.i.i ]
  br label %sub_120.exit.i

sub_120.exit.i:                                   ; preds = %sub_120.exit.i.loopexit, %block_0x67.i
  %PF_val.0.in.in.i.i = phi i8 [ %226, %block_0x67.i ], [ 0, %sub_120.exit.i.loopexit ]
  %RCX_val.0.i66.i = phi i64 [ %RCX_val.0.i.i, %block_0x67.i ], [ %RCX_val.2.i.i.lcssa, %sub_120.exit.i.loopexit ]
  %PF_val.0.in.i.i = and i8 %PF_val.0.in.in.i.i, 1
  %PF_val.0.i.i = icmp eq i8 %PF_val.0.in.i.i, 0
  %253 = load i64* %182, align 8, !mcsema_real_eip !69
  store i64 0, i64* %RAX.i, align 8, !mcsema_real_eip !70
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !70
  store i64 %RCX_val.0.i66.i, i64* %RCX.i, align 8, !mcsema_real_eip !70
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !70
  store i64 %221, i64* %RSI.i, align 8, !mcsema_real_eip !70
  store i64 %203, i64* %RDI.i, align 8, !mcsema_real_eip !70
  store i64 %184, i64* %RSP.i, align 8, !mcsema_real_eip !70
  store i64 %253, i64* %RBP.i, align 8, !mcsema_real_eip !70
  store <2 x i64> %206, <2 x i64>* %99, align 8
  store <2 x i64> %207, <2 x i64>* %100, align 8
  store <2 x i64> %208, <2 x i64>* %101, align 8
  store <2 x i64> %209, <2 x i64>* %102, align 8
  store i64 %17, i64* %RIP.i, align 8, !mcsema_real_eip !70
  store i1 false, i1* %CF.i, align 1, !mcsema_real_eip !70
  store i1 %PF_val.0.i.i, i1* %PF.i, align 1, !mcsema_real_eip !70
  store i1 false, i1* %AF.i, align 1, !mcsema_real_eip !70
  store i1 true, i1* %ZF.i, align 1, !mcsema_real_eip !70
  store i1 false, i1* %SF.i, align 1, !mcsema_real_eip !70
  store i1 false, i1* %OF.i, align 1, !mcsema_real_eip !70
  store i1 %18, i1* %DF.i, align 1, !mcsema_real_eip !70
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %98, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !70
  store i1 %21, i1* %FPU_B.i, align 1, !mcsema_real_eip !70
  store i1 %22, i1* %FPU_C3.i, align 1, !mcsema_real_eip !70
  store i3 %23, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !70
  store i1 %24, i1* %FPU_C2.i, align 1, !mcsema_real_eip !70
  store i1 %25, i1* %FPU_C1.i, align 1, !mcsema_real_eip !70
  store i1 %26, i1* %FPU_C0.i, align 1, !mcsema_real_eip !70
  store i1 %27, i1* %FPU_ES.i, align 1, !mcsema_real_eip !70
  store i1 %28, i1* %FPU_SF.i, align 1, !mcsema_real_eip !70
  store i1 %29, i1* %FPU_PE.i, align 1, !mcsema_real_eip !70
  store i1 %30, i1* %FPU_UE.i, align 1, !mcsema_real_eip !70
  store i1 %31, i1* %FPU_OE.i, align 1, !mcsema_real_eip !70
  store i1 %32, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !70
  store i1 %33, i1* %FPU_DE.i, align 1, !mcsema_real_eip !70
  store i1 %34, i1* %FPU_IE.i, align 1, !mcsema_real_eip !70
  store i1 %35, i1* %FPU_X.i, align 1, !mcsema_real_eip !70
  store i2 %36, i2* %FPU_RC.i, align 1, !mcsema_real_eip !70
  store i2 %37, i2* %FPU_PC.i, align 1, !mcsema_real_eip !70
  store i1 %38, i1* %FPU_PM.i, align 1, !mcsema_real_eip !70
  store i1 %39, i1* %FPU_UM.i, align 1, !mcsema_real_eip !70
  store i1 %40, i1* %FPU_OM.i, align 1, !mcsema_real_eip !70
  store i1 %41, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !70
  store i1 %42, i1* %FPU_DM.i, align 1, !mcsema_real_eip !70
  store i1 %43, i1* %FPU_IM.i, align 1, !mcsema_real_eip !70
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !70
  store i64 %48, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !70
  store i16 %49, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !70
  store i64 %50, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !70
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !70
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !70
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !70
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !70
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !70
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !70
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !70
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !70
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !70
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !70
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !70
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !70
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !70
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !70
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !70
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !70
  store <2 x i64> %210, <2 x i64>* %103, align 1
  call void @llvm.lifetime.end(i64 128, i8* %98)
  %254 = bitcast <2 x i64> %206 to i128
  %trunc71.i = trunc i128 %254 to i64
  %255 = lshr i128 %254, 64
  %256 = trunc i128 %255 to i64
  %257 = bitcast <2 x i64> %207 to i128
  %trunc72.i = trunc i128 %257 to i64
  %258 = lshr i128 %257, 64
  %259 = trunc i128 %258 to i64
  %260 = bitcast <2 x i64> %208 to i128
  %trunc73.i = trunc i128 %260 to i64
  %261 = lshr i128 %260, 64
  %262 = trunc i128 %261 to i64
  %263 = bitcast <2 x i64> %209 to i128
  %trunc74.i = trunc i128 %263 to i64
  %264 = lshr i128 %263, 64
  %265 = trunc i128 %264 to i64
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %20, i32 128, i32 4, i1 false), !mcsema_real_eip !45
  %266 = bitcast <2 x i64> %210 to i128
  %trunc75.i = trunc i128 %266 to i64
  %267 = lshr i128 %266, 64
  %268 = trunc i128 %267 to i64
  br label %block_0x79.i, !mcsema_real_eip !71

block_0x79.i:                                     ; preds = %sub_120.exit.i, %sub_a0.exit.i
  %R15_val.2.i = phi i64 [ %265, %sub_120.exit.i ], [ %196, %sub_a0.exit.i ]
  %STACK_LIMIT_val.2.i = phi i64 [ %268, %sub_120.exit.i ], [ %199, %sub_a0.exit.i ]
  %STACK_BASE_val.2.i = phi i64 [ %trunc75.i, %sub_120.exit.i ], [ %trunc70.i, %sub_a0.exit.i ]
  %R14_val.2.i = phi i64 [ %trunc74.i, %sub_120.exit.i ], [ %trunc69.i, %sub_a0.exit.i ]
  %R13_val.2.i = phi i64 [ %262, %sub_120.exit.i ], [ %193, %sub_a0.exit.i ]
  %R12_val.2.i = phi i64 [ %trunc73.i, %sub_120.exit.i ], [ %trunc68.i, %sub_a0.exit.i ]
  %R11_val.2.i = phi i64 [ %259, %sub_120.exit.i ], [ %190, %sub_a0.exit.i ]
  %R10_val.2.i = phi i64 [ %trunc72.i, %sub_120.exit.i ], [ %trunc67.i, %sub_a0.exit.i ]
  %R9_val.2.i = phi i64 [ %256, %sub_120.exit.i ], [ %187, %sub_a0.exit.i ]
  %R8_val.2.i = phi i64 [ %trunc71.i, %sub_120.exit.i ], [ %trunc.i, %sub_a0.exit.i ]
  %RBP_val.2.i = phi i64 [ %253, %sub_120.exit.i ], [ %183, %sub_a0.exit.i ]
  %RDI_val.1.i = phi i64 [ %203, %sub_120.exit.i ], [ %RDI_val.0.i.i, %sub_a0.exit.i ]
  %RSI_val.2.i = phi i64 [ %221, %sub_120.exit.i ], [ %RSI_val.0.i.i, %sub_a0.exit.i ]
  %RCX_val.1.i = phi i64 [ %RCX_val.0.i66.i, %sub_120.exit.i ], [ %RCX_val.0.i.i, %sub_a0.exit.i ]
  %269 = add i64 %RBP_val.2.i, -16, !mcsema_real_eip !72
  %270 = inttoptr i64 %269 to i32*
  %271 = load i32* %270, align 4, !mcsema_real_eip !72
  %272 = add i32 %271, 1
  store i32 %272, i32* %270, align 4, !mcsema_real_eip !73
  %273 = add i64 %RBP_val.2.i, -12, !mcsema_real_eip !12
  %274 = inttoptr i64 %273 to i32*
  %275 = load i32* %274, align 4, !mcsema_real_eip !12
  %276 = sub i32 %272, %275, !mcsema_real_eip !12
  %277 = xor i32 %276, %272, !mcsema_real_eip !12
  %278 = xor i32 %277, %275, !mcsema_real_eip !12
  %279 = trunc i32 %276 to i8, !mcsema_real_eip !12
  %280 = tail call i8 @llvm.ctpop.i8(i8 %279), !mcsema_real_eip !12
  %281 = icmp eq i32 %272, %275
  %282 = icmp slt i32 %276, 0
  %283 = icmp ult i32 %272, %275, !mcsema_real_eip !12
  %284 = xor i32 %275, %272, !mcsema_real_eip !12
  %285 = and i32 %277, %284, !mcsema_real_eip !12
  %286 = icmp slt i32 %285, 0
  %tmp349.i = xor i1 %282, %286
  br i1 %tmp349.i, label %block_0x43.i, label %sub_10.exit.loopexit, !mcsema_real_eip !13

sub_10.exit.loopexit:                             ; preds = %block_0x79.i
  %RCX_val.1.i.lcssa = phi i64 [ %RCX_val.1.i, %block_0x79.i ]
  %RSI_val.2.i.lcssa = phi i64 [ %RSI_val.2.i, %block_0x79.i ]
  %RDI_val.1.i.lcssa = phi i64 [ %RDI_val.1.i, %block_0x79.i ]
  %RBP_val.2.i.lcssa = phi i64 [ %RBP_val.2.i, %block_0x79.i ]
  %R8_val.2.i.lcssa = phi i64 [ %R8_val.2.i, %block_0x79.i ]
  %R9_val.2.i.lcssa = phi i64 [ %R9_val.2.i, %block_0x79.i ]
  %R10_val.2.i.lcssa = phi i64 [ %R10_val.2.i, %block_0x79.i ]
  %R11_val.2.i.lcssa = phi i64 [ %R11_val.2.i, %block_0x79.i ]
  %R12_val.2.i.lcssa = phi i64 [ %R12_val.2.i, %block_0x79.i ]
  %R13_val.2.i.lcssa = phi i64 [ %R13_val.2.i, %block_0x79.i ]
  %R14_val.2.i.lcssa = phi i64 [ %R14_val.2.i, %block_0x79.i ]
  %STACK_BASE_val.2.i.lcssa = phi i64 [ %STACK_BASE_val.2.i, %block_0x79.i ]
  %STACK_LIMIT_val.2.i.lcssa = phi i64 [ %STACK_LIMIT_val.2.i, %block_0x79.i ]
  %R15_val.2.i.lcssa = phi i64 [ %R15_val.2.i, %block_0x79.i ]
  %.lcssa = phi i64 [ %184, %block_0x79.i ]
  %RDX_val.0.i.i.lcssa = phi i64 [ %RDX_val.0.i.i, %block_0x79.i ]
  br label %sub_10.exit

sub_10.exit:                                      ; preds = %sub_10.exit.loopexit, %driverBlockRaw
  %R15_val.0.i = phi i64 [ %16, %driverBlockRaw ], [ %R15_val.2.i.lcssa, %sub_10.exit.loopexit ]
  %STACK_LIMIT_val.0.i = phi i64 [ %68, %driverBlockRaw ], [ %STACK_LIMIT_val.2.i.lcssa, %sub_10.exit.loopexit ]
  %STACK_BASE_val.0.i = phi i64 [ %67, %driverBlockRaw ], [ %STACK_BASE_val.2.i.lcssa, %sub_10.exit.loopexit ]
  %R14_val.0.i = phi i64 [ %15, %driverBlockRaw ], [ %R14_val.2.i.lcssa, %sub_10.exit.loopexit ]
  %R13_val.0.i = phi i64 [ %14, %driverBlockRaw ], [ %R13_val.2.i.lcssa, %sub_10.exit.loopexit ]
  %R12_val.0.i = phi i64 [ %13, %driverBlockRaw ], [ %R12_val.2.i.lcssa, %sub_10.exit.loopexit ]
  %R11_val.0.i = phi i64 [ %12, %driverBlockRaw ], [ %R11_val.2.i.lcssa, %sub_10.exit.loopexit ]
  %R10_val.0.i = phi i64 [ %11, %driverBlockRaw ], [ %R10_val.2.i.lcssa, %sub_10.exit.loopexit ]
  %R9_val.0.i = phi i64 [ %10, %driverBlockRaw ], [ %R9_val.2.i.lcssa, %sub_10.exit.loopexit ]
  %R8_val.0.i = phi i64 [ %9, %driverBlockRaw ], [ %R8_val.2.i.lcssa, %sub_10.exit.loopexit ]
  %RSP_val.0.i = phi i64 [ %71, %driverBlockRaw ], [ %.lcssa, %sub_10.exit.loopexit ]
  %RBP_val.0.i = phi i64 [ %69, %driverBlockRaw ], [ %RBP_val.2.i.lcssa, %sub_10.exit.loopexit ]
  %RDI_val.0.i = phi i64 [ %81, %driverBlockRaw ], [ %RDI_val.1.i.lcssa, %sub_10.exit.loopexit ]
  %RSI_val.0.i = phi i64 [ %5, %driverBlockRaw ], [ %RSI_val.2.i.lcssa, %sub_10.exit.loopexit ]
  %RDX_val.0.i = phi i64 [ %4, %driverBlockRaw ], [ %RDX_val.0.i.i.lcssa, %sub_10.exit.loopexit ]
  %RCX_val.0.i = phi i64 [ %3, %driverBlockRaw ], [ %RCX_val.1.i.lcssa, %sub_10.exit.loopexit ]
  %287 = add i64 %RBP_val.0.i, -24, !mcsema_real_eip !74
  %288 = inttoptr i64 %287 to i64*, !mcsema_real_eip !74
  %289 = load i64* %288, align 8, !mcsema_real_eip !74
  %290 = add i64 %289, 1, !mcsema_real_eip !75
  %291 = inttoptr i64 %290 to i8*
  store i8 2, i8* %291, align 1, !mcsema_real_eip !75
  %uadd350.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %RSP_val.0.i, i64 32)
  %292 = extractvalue { i64, i1 } %uadd350.i, 0
  %293 = xor i64 %292, %RSP_val.0.i, !mcsema_real_eip !76
  %294 = and i64 %293, 16, !mcsema_real_eip !76
  %295 = icmp ne i64 %294, 0, !mcsema_real_eip !76
  %296 = icmp slt i64 %292, 0
  %297 = icmp eq i64 %292, 0, !mcsema_real_eip !76
  %298 = xor i64 %RSP_val.0.i, -9223372036854775808, !mcsema_real_eip !76
  %299 = and i64 %293, %298, !mcsema_real_eip !76
  %300 = icmp slt i64 %299, 0
  %301 = trunc i64 %292 to i8, !mcsema_real_eip !76
  %302 = tail call i8 @llvm.ctpop.i8(i8 %301), !mcsema_real_eip !76
  %303 = and i8 %302, 1
  %304 = icmp eq i8 %303, 0
  %305 = extractvalue { i64, i1 } %uadd350.i, 1
  %306 = inttoptr i64 %292 to i64*, !mcsema_real_eip !77
  %307 = load i64* %306, align 8, !mcsema_real_eip !77
  %308 = add i64 %292, 16, !mcsema_real_eip !78
  store i64 %289, i64* %RAX.i, align 8, !mcsema_real_eip !78
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !78
  store i64 %RCX_val.0.i, i64* %RCX.i, align 8, !mcsema_real_eip !78
  store i64 %RDX_val.0.i, i64* %RDX.i, align 8, !mcsema_real_eip !78
  store i64 %RSI_val.0.i, i64* %RSI.i, align 8, !mcsema_real_eip !78
  store i64 %RDI_val.0.i, i64* %RDI.i, align 8, !mcsema_real_eip !78
  store i64 %308, i64* %RSP.i, align 8, !mcsema_real_eip !78
  store i64 %307, i64* %RBP.i, align 8, !mcsema_real_eip !78
  store i64 %R8_val.0.i, i64* %R8.i, align 8, !mcsema_real_eip !78
  store i64 %R9_val.0.i, i64* %R9.i, align 8, !mcsema_real_eip !78
  store i64 %R10_val.0.i, i64* %R10.i, align 8, !mcsema_real_eip !78
  store i64 %R11_val.0.i, i64* %R11.i, align 8, !mcsema_real_eip !78
  store i64 %R12_val.0.i, i64* %R12.i, align 8, !mcsema_real_eip !78
  store i64 %R13_val.0.i, i64* %R13.i, align 8, !mcsema_real_eip !78
  store i64 %R14_val.0.i, i64* %R14.i, align 8, !mcsema_real_eip !78
  store i64 %R15_val.0.i, i64* %R15.i, align 8, !mcsema_real_eip !78
  store i64 %17, i64* %RIP.i, align 8, !mcsema_real_eip !78
  store i1 %305, i1* %CF.i, align 1, !mcsema_real_eip !78
  store i1 %304, i1* %PF.i, align 1, !mcsema_real_eip !78
  store i1 %295, i1* %AF.i, align 1, !mcsema_real_eip !78
  store i1 %297, i1* %ZF.i, align 1, !mcsema_real_eip !78
  store i1 %296, i1* %SF.i, align 1, !mcsema_real_eip !78
  store i1 %300, i1* %OF.i, align 1, !mcsema_real_eip !78
  store i1 %18, i1* %DF.i, align 1, !mcsema_real_eip !78
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !78
  store i1 %21, i1* %FPU_B.i, align 1, !mcsema_real_eip !78
  store i1 %22, i1* %FPU_C3.i, align 1, !mcsema_real_eip !78
  store i3 %23, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !78
  store i1 %24, i1* %FPU_C2.i, align 1, !mcsema_real_eip !78
  store i1 %25, i1* %FPU_C1.i, align 1, !mcsema_real_eip !78
  store i1 %26, i1* %FPU_C0.i, align 1, !mcsema_real_eip !78
  store i1 %27, i1* %FPU_ES.i, align 1, !mcsema_real_eip !78
  store i1 %28, i1* %FPU_SF.i, align 1, !mcsema_real_eip !78
  store i1 %29, i1* %FPU_PE.i, align 1, !mcsema_real_eip !78
  store i1 %30, i1* %FPU_UE.i, align 1, !mcsema_real_eip !78
  store i1 %31, i1* %FPU_OE.i, align 1, !mcsema_real_eip !78
  store i1 %32, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !78
  store i1 %33, i1* %FPU_DE.i, align 1, !mcsema_real_eip !78
  store i1 %34, i1* %FPU_IE.i, align 1, !mcsema_real_eip !78
  store i1 %35, i1* %FPU_X.i, align 1, !mcsema_real_eip !78
  store i2 %36, i2* %FPU_RC.i, align 1, !mcsema_real_eip !78
  store i2 %37, i2* %FPU_PC.i, align 1, !mcsema_real_eip !78
  store i1 %38, i1* %FPU_PM.i, align 1, !mcsema_real_eip !78
  store i1 %39, i1* %FPU_UM.i, align 1, !mcsema_real_eip !78
  store i1 %40, i1* %FPU_OM.i, align 1, !mcsema_real_eip !78
  store i1 %41, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !78
  store i1 %42, i1* %FPU_DM.i, align 1, !mcsema_real_eip !78
  store i1 %43, i1* %FPU_IM.i, align 1, !mcsema_real_eip !78
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !78
  store i64 %48, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !78
  store i16 %49, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !78
  store i64 %50, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !78
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !78
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !78
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !78
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !78
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !78
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !78
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !78
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !78
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !78
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !78
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !78
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !78
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !78
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !78
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !78
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !78
  store i64 %STACK_BASE_val.0.i, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !78
  store i64 %STACK_LIMIT_val.0.i, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !78
  call void @llvm.lifetime.end(i64 128, i8* %1)
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
!2 = metadata !{i64 160, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 16, [12 x i8] c"\09pushq\09%rbp\00"}
!4 = metadata !{i64 24, [21 x i8] c"\09movq\09%rdi, -8(%rbp)\00"}
!5 = metadata !{i64 28, [22 x i8] c"\09movl\09%esi, -12(%rbp)\00"}
!6 = metadata !{i64 31, [20 x i8] c"\09movl\09$0, -16(%rbp)\00"}
!7 = metadata !{i64 38, [24 x i8] c"\09movslq\09-12(%rbp), %rdi\00"}
!8 = metadata !{i64 42, [15 x i8] c"\09shlq\09$3, %rdi\00"}
!9 = metadata !{i64 46, [9 x i8] c"\09callq\090\00"}
!10 = metadata !{i64 51, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!11 = metadata !{i64 55, [22 x i8] c"\09movl\09-16(%rbp), %eax\00"}
!12 = metadata !{i64 58, [22 x i8] c"\09cmpl\09-12(%rbp), %eax\00"}
!13 = metadata !{i64 61, [8 x i8] c"\09jge\0970\00"}
!14 = metadata !{i64 67, [24 x i8] c"\09movslq\09-16(%rbp), %rax\00"}
!15 = metadata !{i64 71, [21 x i8] c"\09movq\09-8(%rbp), %rcx\00"}
!16 = metadata !{i64 75, [26 x i8] c"\09movq\09(%rcx,%rax,8), %rax\00"}
!17 = metadata !{i64 79, [22 x i8] c"\09movq\09%rax, -32(%rbp)\00"}
!18 = metadata !{i64 87, [10 x i8] c"\09callq\0968\00"}
!19 = metadata !{i64 168, [21 x i8] c"\09movq\09%rdi, -8(%rbp)\00"}
!20 = metadata !{i64 172, [20 x i8] c"\09movl\09$1, -12(%rbp)\00"}
!21 = metadata !{i64 179, [21 x i8] c"\09movq\09-8(%rbp), %rdi\00"}
!22 = metadata !{i64 183, [9 x i8] c"\09callq\090\00"}
!23 = metadata !{i64 190, [22 x i8] c"\09movl\09%ecx, -16(%rbp)\00"}
!24 = metadata !{i64 193, [20 x i8] c"\09cmpl\09$1, -16(%rbp)\00"}
!25 = metadata !{i64 200, [8 x i8] c"\09jle\0959\00"}
!26 = metadata !{i64 206, [21 x i8] c"\09movq\09-8(%rbp), %rax\00"}
!27 = metadata !{i64 210, [18 x i8] c"\09movb\09(%rax), %cl\00"}
!28 = metadata !{i64 212, [21 x i8] c"\09movb\09%cl, -17(%rbp)\00"}
!29 = metadata !{i64 215, [22 x i8] c"\09movl\09-16(%rbp), %edx\00"}
!30 = metadata !{i64 224, [19 x i8] c"\09movslq\09%edx, %rax\00"}
!31 = metadata !{i64 227, [21 x i8] c"\09movq\09-8(%rbp), %rsi\00"}
!32 = metadata !{i64 231, [23 x i8] c"\09movb\09(%rsi,%rax), %cl\00"}
!33 = metadata !{i64 234, [21 x i8] c"\09movb\09%cl, -18(%rbp)\00"}
!34 = metadata !{i64 237, [24 x i8] c"\09movsbl\09-17(%rbp), %edx\00"}
!35 = metadata !{i64 247, [7 x i8] c"\09jne\097\00"}
!36 = metadata !{i64 253, [20 x i8] c"\09movl\09$0, -12(%rbp)\00"}
!37 = metadata !{i64 260, [7 x i8] c"\09jmp\090\00"}
!38 = metadata !{i64 265, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!39 = metadata !{i64 268, [16 x i8] c"\09addq\09$32, %rsp\00"}
!40 = metadata !{i64 272, [11 x i8] c"\09popq\09%rbp\00"}
!41 = metadata !{i64 273, [6 x i8] c"\09retq\00"}
!42 = metadata !{i64 92, [15 x i8] c"\09cmpl\09$0, %eax\00"}
!43 = metadata !{i64 97, [8 x i8] c"\09jne\0913\00"}
!44 = metadata !{i64 103, [22 x i8] c"\09movq\09-32(%rbp), %rdi\00"}
!45 = metadata !{i64 111, [11 x i8] c"\09callq\09172\00"}
!46 = metadata !{i64 288, [12 x i8] c"\09pushq\09%rbp\00"}
!47 = metadata !{i64 292, [21 x i8] c"\09movq\09%rdi, -8(%rbp)\00"}
!48 = metadata !{i64 296, [22 x i8] c"\09movq\09%rsi, -16(%rbp)\00"}
!49 = metadata !{i64 300, [21 x i8] c"\09movq\09-8(%rbp), %rsi\00"}
!50 = metadata !{i64 304, [22 x i8] c"\09movq\09%rsi, -24(%rbp)\00"}
!51 = metadata !{i64 308, [22 x i8] c"\09movq\09-16(%rbp), %rsi\00"}
!52 = metadata !{i64 312, [22 x i8] c"\09movq\09%rsi, -32(%rbp)\00"}
!53 = metadata !{i64 316, [22 x i8] c"\09movq\09-24(%rbp), %rsi\00"}
!54 = metadata !{i64 320, [18 x i8] c"\09movb\09(%rsi), %al\00"}
!55 = metadata !{i64 322, [21 x i8] c"\09movb\09%al, -33(%rbp)\00"}
!56 = metadata !{i64 329, [15 x i8] c"\09cmpl\09$0, %eax\00"}
!57 = metadata !{i64 334, [7 x i8] c"\09je\0978\00"}
!58 = metadata !{i64 355, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!59 = metadata !{i64 349, [8 x i8] c"\09jne\0912\00"}
!60 = metadata !{i64 374, [18 x i8] c"\09movb\09%al, (%rcx)\00"}
!61 = metadata !{i64 376, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!62 = metadata !{i64 386, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!63 = metadata !{i64 390, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!64 = metadata !{i64 400, [22 x i8] c"\09movq\09%rax, -32(%rbp)\00"}
!65 = metadata !{i64 404, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!66 = metadata !{i64 408, [18 x i8] c"\09movb\09(%rax), %cl\00"}
!67 = metadata !{i64 413, [9 x i8] c"\09jmp\09-93\00"}
!68 = metadata !{i64 359, [18 x i8] c"\09movb\09$92, (%rax)\00"}
!69 = metadata !{i64 418, [11 x i8] c"\09popq\09%rbp\00"}
!70 = metadata !{i64 419, [6 x i8] c"\09retq\00"}
!71 = metadata !{i64 116, [7 x i8] c"\09jmp\090\00"}
!72 = metadata !{i64 121, [22 x i8] c"\09movl\09-16(%rbp), %eax\00"}
!73 = metadata !{i64 129, [22 x i8] c"\09movl\09%eax, -16(%rbp)\00"}
!74 = metadata !{i64 137, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!75 = metadata !{i64 141, [18 x i8] c"\09movb\09$2, 1(%rax)\00"}
!76 = metadata !{i64 145, [16 x i8] c"\09addq\09$32, %rsp\00"}
!77 = metadata !{i64 149, [11 x i8] c"\09popq\09%rbp\00"}
!78 = metadata !{i64 150, [6 x i8] c"\09retq\00"}
