; ModuleID = 'Output/test_13.clang.opt.bc'
source_filename = "Output/test_13.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

declare x86_64_sysvcc i64 @malloc(i64 inreg) local_unnamed_addr

declare x86_64_sysvcc i64 @strlen(i64 inreg) local_unnamed_addr

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
  %1 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !3
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !3
  %2 = load i64, i64* %RCX.i, align 8, !mcsema_real_eip !3
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !3
  %3 = load i64, i64* %RDX.i, align 8, !mcsema_real_eip !3
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !3
  %4 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !3
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !3
  %5 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !3
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !3
  %6 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !3
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !3
  %7 = load i64, i64* %RBP.i, align 8, !mcsema_real_eip !3
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !3
  %8 = load i64, i64* %R8.i, align 8, !mcsema_real_eip !3
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !3
  %9 = load i64, i64* %R9.i, align 8, !mcsema_real_eip !3
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !3
  %10 = load i64, i64* %R10.i, align 8, !mcsema_real_eip !3
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
  %11 = load i64, i64* %R11.i, align 8, !mcsema_real_eip !3
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %12 = load i64, i64* %R12.i, align 8, !mcsema_real_eip !3
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !3
  %13 = load i64, i64* %R13.i, align 8, !mcsema_real_eip !3
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %14 = load i64, i64* %R14.i, align 8, !mcsema_real_eip !3
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !3
  %15 = load i64, i64* %R15.i, align 8, !mcsema_real_eip !3
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %16 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !3
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !3
  %17 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !3
  %18 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !3
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !3
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !3
  %20 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !3
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !3
  %21 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !3
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !3
  %22 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !3
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !3
  %23 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !3
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !3
  %24 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !3
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !3
  %25 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !3
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !3
  %26 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !3
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !3
  %27 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !3
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !3
  %28 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !3
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !3
  %29 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !3
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !3
  %30 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !3
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !3
  %31 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !3
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !3
  %32 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !3
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !3
  %33 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !3
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !3
  %34 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !3
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !3
  %35 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !3
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !3
  %36 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !3
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !3
  %37 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !3
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !3
  %38 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !3
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !3
  %39 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !3
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !3
  %40 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !3
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !3
  %41 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !3
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !3
  %42 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !3
  %43 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !3
  %44 = bitcast i8* %43 to i64*
  %45 = load i64, i64* %44, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !3
  %46 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !3
  %47 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !3
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !3
  %48 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !3
  %49 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !3
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !3
  %50 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !3
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %51 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !3
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %52 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !3
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %53 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !3
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %54 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !3
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %55 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !3
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %56 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !3
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %57 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !3
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %58 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !3
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %59 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !3
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %60 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !3
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %61 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !3
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %62 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !3
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %63 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !3
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %64 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !3
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %65 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !3
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %66 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !3
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %67 = load i64, i64* %STACK_BASE.i, align 8, !mcsema_real_eip !3
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %68 = load i64, i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !3
  %69 = add i64 %6, -8
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !3
  store i64 %7, i64* %70, align 8, !mcsema_real_eip !3
  %71 = add i64 %6, -40
  %72 = add i64 %6, -16, !mcsema_real_eip !4
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !4
  store i64 %5, i64* %73, align 8, !mcsema_real_eip !4
  %74 = add i64 %6, -20
  %75 = trunc i64 %4 to i32, !mcsema_real_eip !5
  %76 = inttoptr i64 %74 to i32*
  store i32 %75, i32* %76, align 4, !mcsema_real_eip !5
  %77 = add i64 %6, -24
  %78 = inttoptr i64 %77 to i32*
  store i32 0, i32* %78, align 4, !mcsema_real_eip !6
  %79 = load i32, i32* %76, align 4, !mcsema_real_eip !7
  %80 = sext i32 %79 to i64, !mcsema_real_eip !7
  %81 = shl nsw i64 %80, 3, !mcsema_real_eip !8
  %82 = tail call x86_64_sysvcc i64 @malloc(i64 %81), !mcsema_real_eip !9
  %83 = add i64 %6, -32, !mcsema_real_eip !10
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !10
  store i64 %82, i64* %84, align 8, !mcsema_real_eip !10
  %85 = load i32, i32* %78, align 4, !mcsema_real_eip !11
  %86 = load i32, i32* %76, align 4, !mcsema_real_eip !12
  %87 = sub i32 %85, %86, !mcsema_real_eip !12
  %88 = xor i32 %87, %85, !mcsema_real_eip !12
  %89 = icmp slt i32 %87, 0
  %90 = xor i32 %86, %85, !mcsema_real_eip !12
  %91 = and i32 %88, %90, !mcsema_real_eip !12
  %92 = icmp slt i32 %91, 0
  %tmp241.i = xor i1 %89, %92
  br i1 %tmp241.i, label %block_0x33.lr.ph.i, label %sub_0.exit, !mcsema_real_eip !13

block_0x33.lr.ph.i:                               ; preds = %driverBlockRaw
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  br label %block_0x33.i

block_0x33.i:                                     ; preds = %block_0x69.i, %block_0x33.lr.ph.i
  %93 = phi i1 [ %92, %block_0x33.lr.ph.i ], [ %230, %block_0x69.i ]
  %94 = phi i1 [ %89, %block_0x33.lr.ph.i ], [ %227, %block_0x69.i ]
  %95 = phi i32 [ %88, %block_0x33.lr.ph.i ], [ %226, %block_0x69.i ]
  %96 = phi i32 [ %87, %block_0x33.lr.ph.i ], [ %225, %block_0x69.i ]
  %97 = phi i32 [ %86, %block_0x33.lr.ph.i ], [ %224, %block_0x69.i ]
  %98 = phi i32 [ %85, %block_0x33.lr.ph.i ], [ %221, %block_0x69.i ]
  %RDX_val.0302.i = phi i64 [ %3, %block_0x33.lr.ph.i ], [ %RDX_val.0.i.i, %block_0x69.i ]
  %RSI_val.0301.i = phi i64 [ %4, %block_0x33.lr.ph.i ], [ %RSI_val.1.i, %block_0x69.i ]
  %RBP_val.0300.i = phi i64 [ %69, %block_0x33.lr.ph.i ], [ %RBP_val.1.i, %block_0x69.i ]
  %RSP_val.0299.i = phi i64 [ %71, %block_0x33.lr.ph.i ], [ %182, %block_0x69.i ]
  %99 = icmp ult i32 %98, %97, !mcsema_real_eip !12
  %100 = icmp eq i32 %98, %97
  %101 = trunc i32 %96 to i8, !mcsema_real_eip !12
  %102 = tail call i8 @llvm.ctpop.i8(i8 %101), !mcsema_real_eip !12
  %103 = and i8 %102, 1
  %104 = icmp eq i8 %103, 0
  %105 = xor i32 %97, %95, !mcsema_real_eip !12
  %106 = and i32 %105, 16, !mcsema_real_eip !12
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !12
  %108 = sext i32 %98 to i64, !mcsema_real_eip !14
  %109 = add i64 %RBP_val.0300.i, -8, !mcsema_real_eip !15
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !15
  %111 = load i64, i64* %110, align 8, !mcsema_real_eip !15
  %112 = shl nsw i64 %108, 3
  %113 = add i64 %111, %112, !mcsema_real_eip !16
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !16
  %115 = load i64, i64* %114, align 8
  %116 = add i64 %RBP_val.0300.i, -32, !mcsema_real_eip !17
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !17
  store i64 %115, i64* %117, align 8, !mcsema_real_eip !17
  %118 = add i64 %RSP_val.0299.i, -8
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !18
  store i64 -4981261766360305936, i64* %119, align 8, !mcsema_real_eip !18
  store i64 %115, i64* %RAX.i, align 8, !mcsema_real_eip !18
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !18
  store i64 %111, i64* %RCX.i, align 8, !mcsema_real_eip !18
  store i64 %RDX_val.0302.i, i64* %RDX.i, align 8, !mcsema_real_eip !18
  store i64 %RSI_val.0301.i, i64* %RSI.i, align 8, !mcsema_real_eip !18
  store i64 %115, i64* %RDI.i, align 8, !mcsema_real_eip !18
  store i64 %118, i64* %RSP.i, align 8, !mcsema_real_eip !18
  store i64 %RBP_val.0300.i, i64* %RBP.i, align 8, !mcsema_real_eip !18
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !18
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !18
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !18
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !18
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !18
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !18
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !18
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !18
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !18
  store i1 %99, i1* %CF.i, align 1, !mcsema_real_eip !18
  store i1 %104, i1* %PF.i, align 1, !mcsema_real_eip !18
  store i1 %107, i1* %AF.i, align 1, !mcsema_real_eip !18
  store i1 %100, i1* %ZF.i, align 1, !mcsema_real_eip !18
  store i1 %94, i1* %SF.i, align 1, !mcsema_real_eip !18
  store i1 %93, i1* %OF.i, align 1, !mcsema_real_eip !18
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !18
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
  store i11 %50, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !18
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
  store i64 %67, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !18
  store i64 %68, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !18
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast.i, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false)
  %120 = add i64 %RSP_val.0299.i, -16
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0300.i, i64* %121, align 8, !mcsema_real_eip !2
  %122 = add i64 %RSP_val.0299.i, -48
  %123 = add i64 %RSP_val.0299.i, -24, !mcsema_real_eip !19
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !19
  store i64 %115, i64* %124, align 8, !mcsema_real_eip !19
  %125 = add i64 %RSP_val.0299.i, -28, !mcsema_real_eip !20
  %126 = inttoptr i64 %125 to i32*
  store i32 1, i32* %126, align 4, !mcsema_real_eip !20
  %127 = load i64, i64* %124, align 8, !mcsema_real_eip !21
  %128 = tail call x86_64_sysvcc i64 @strlen(i64 %127), !mcsema_real_eip !22
  %129 = and i64 %128, 4294967295
  %130 = add i64 %RSP_val.0299.i, -32, !mcsema_real_eip !23
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
  %141 = inttoptr i64 %123 to i8**
  %142 = load i8*, i8** %141, align 8
  %143 = load i8, i8* %142, align 1, !mcsema_real_eip !26
  %144 = and i64 %128, 4294967040, !mcsema_real_eip !26
  %145 = add i64 %RSP_val.0299.i, -33, !mcsema_real_eip !27
  %146 = inttoptr i64 %145 to i8*
  store i8 %143, i8* %146, align 1, !mcsema_real_eip !27
  %147 = load i32, i32* %132, align 4, !mcsema_real_eip !28
  %148 = add i32 %147, -1
  %149 = sext i32 %148 to i64, !mcsema_real_eip !29
  %150 = load i64, i64* %124, align 8, !mcsema_real_eip !30
  %151 = add i64 %149, %150, !mcsema_real_eip !31
  %152 = inttoptr i64 %151 to i8*
  %153 = load i8, i8* %152, align 1, !mcsema_real_eip !31
  %154 = zext i8 %153 to i64, !mcsema_real_eip !31
  %155 = or i64 %154, %144
  %156 = add i64 %RSP_val.0299.i, -34, !mcsema_real_eip !32
  %157 = inttoptr i64 %156 to i8*
  store i8 %153, i8* %157, align 1, !mcsema_real_eip !32
  %158 = load i8, i8* %146, align 1, !mcsema_real_eip !33
  %159 = sext i8 %158 to i64
  %160 = and i64 %159, 4294967295
  %161 = sext i8 %153 to i64
  %162 = and i64 %161, 4294967295
  %163 = icmp eq i8 %158, %153
  br i1 %163, label %block_0xed.i.i, label %sub_90.exitthread-pre-split.i, !mcsema_real_eip !34

block_0xed.i.i:                                   ; preds = %block_0xbe.i.i
  store i32 0, i32* %126, align 4, !mcsema_real_eip !35
  br label %sub_90.exit.i

sub_90.exitthread-pre-split.i:                    ; preds = %block_0xbe.i.i, %block_0x33.i
  %RDI_val.0.i.ph.i = phi i64 [ %162, %block_0xbe.i.i ], [ %127, %block_0x33.i ]
  %RSI_val.0.i.ph.i = phi i64 [ %150, %block_0xbe.i.i ], [ %RSI_val.0301.i, %block_0x33.i ]
  %RDX_val.0.i.ph.i = phi i64 [ %160, %block_0xbe.i.i ], [ %RDX_val.0302.i, %block_0x33.i ]
  %RCX_val.0.i.ph.i = phi i64 [ %155, %block_0xbe.i.i ], [ %129, %block_0x33.i ]
  %.pr.i = load i32, i32* %126, align 4
  br label %sub_90.exit.i

sub_90.exit.i:                                    ; preds = %sub_90.exitthread-pre-split.i, %block_0xed.i.i
  %164 = phi i32 [ %.pr.i, %sub_90.exitthread-pre-split.i ], [ 0, %block_0xed.i.i ]
  %RDI_val.0.i.i = phi i64 [ %RDI_val.0.i.ph.i, %sub_90.exitthread-pre-split.i ], [ %162, %block_0xed.i.i ]
  %RSI_val.0.i.i = phi i64 [ %RSI_val.0.i.ph.i, %sub_90.exitthread-pre-split.i ], [ %150, %block_0xed.i.i ]
  %RDX_val.0.i.i = phi i64 [ %RDX_val.0.i.ph.i, %sub_90.exitthread-pre-split.i ], [ %160, %block_0xed.i.i ]
  %RCX_val.0.i.i = phi i64 [ %RCX_val.0.i.ph.i, %sub_90.exitthread-pre-split.i ], [ %155, %block_0xed.i.i ]
  %165 = zext i32 %164 to i64
  %uadd.i.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %122, i64 32)
  %166 = extractvalue { i64, i1 } %uadd.i.i, 0
  %167 = xor i64 %166, %122, !mcsema_real_eip !36
  %168 = and i64 %167, 16, !mcsema_real_eip !36
  %169 = icmp ne i64 %168, 0, !mcsema_real_eip !36
  %170 = icmp slt i64 %166, 0
  %171 = icmp eq i64 %166, 0, !mcsema_real_eip !36
  %172 = add i64 %RSP_val.0299.i, 9223372036854775760
  %173 = and i64 %167, %172, !mcsema_real_eip !36
  %174 = icmp slt i64 %173, 0
  %175 = trunc i64 %166 to i8, !mcsema_real_eip !36
  %176 = tail call i8 @llvm.ctpop.i8(i8 %175), !mcsema_real_eip !36
  %177 = and i8 %176, 1
  %178 = icmp eq i8 %177, 0
  %179 = extractvalue { i64, i1 } %uadd.i.i, 1
  %180 = inttoptr i64 %166 to i64*
  %181 = load i64, i64* %180, align 8
  %182 = add i64 %166, 16
  store i64 %165, i64* %RAX.i, align 8, !mcsema_real_eip !37
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !37
  store i64 %RCX_val.0.i.i, i64* %RCX.i, align 8, !mcsema_real_eip !37
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !37
  store i64 %RSI_val.0.i.i, i64* %RSI.i, align 8, !mcsema_real_eip !37
  store i64 %RDI_val.0.i.i, i64* %RDI.i, align 8, !mcsema_real_eip !37
  store i64 %182, i64* %RSP.i, align 8, !mcsema_real_eip !37
  store i64 %181, i64* %RBP.i, align 8, !mcsema_real_eip !37
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !37
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !37
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !37
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !37
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !37
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !37
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !37
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !37
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !37
  store i1 %179, i1* %CF.i, align 1, !mcsema_real_eip !37
  store i1 %178, i1* %PF.i, align 1, !mcsema_real_eip !37
  store i1 %169, i1* %AF.i, align 1, !mcsema_real_eip !37
  store i1 %171, i1* %ZF.i, align 1, !mcsema_real_eip !37
  store i1 %170, i1* %SF.i, align 1, !mcsema_real_eip !37
  store i1 %174, i1* %OF.i, align 1, !mcsema_real_eip !37
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !37
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %19, i8* nonnull %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false), !mcsema_real_eip !37
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !37
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !37
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !37
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !37
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !37
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !37
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !37
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !37
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !37
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !37
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !37
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !37
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !37
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !37
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !37
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !37
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !37
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !37
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !37
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !37
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !37
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !37
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !37
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !37
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !37
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !37
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !37
  store i11 %50, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !37
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !37
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !37
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !37
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !37
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !37
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !37
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !37
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !37
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !37
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !37
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !37
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !37
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !37
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !37
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !37
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !37
  store i64 %67, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !37
  store i64 %68, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !37
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* nonnull %19, i32 128, i32 4, i1 false), !mcsema_real_eip !18
  %183 = icmp eq i32 %164, 0, !mcsema_real_eip !38
  br i1 %183, label %block_0x57.i, label %block_0x69.i, !mcsema_real_eip !39

block_0x57.i:                                     ; preds = %sub_90.exit.i
  %184 = add i64 %181, -32, !mcsema_real_eip !40
  %185 = inttoptr i64 %184 to i64*, !mcsema_real_eip !40
  %186 = load i64, i64* %185, align 8
  %187 = add i64 %166, 8
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !41
  store i64 -4981261766360305936, i64* %188, align 8, !mcsema_real_eip !41
  store i64 %165, i64* %RAX.i, align 8, !mcsema_real_eip !41
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !41
  store i64 %RCX_val.0.i.i, i64* %RCX.i, align 8, !mcsema_real_eip !41
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !41
  store i64 %186, i64* %RSI.i, align 8, !mcsema_real_eip !41
  store i64 %186, i64* %RDI.i, align 8, !mcsema_real_eip !41
  store i64 %187, i64* %RSP.i, align 8, !mcsema_real_eip !41
  store i64 %181, i64* %RBP.i, align 8, !mcsema_real_eip !41
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !41
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !41
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !41
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !41
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !41
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !41
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !41
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !41
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !41
  store i1 false, i1* %CF.i, align 1, !mcsema_real_eip !41
  store i1 true, i1* %PF.i, align 1, !mcsema_real_eip !41
  store i1 false, i1* %AF.i, align 1, !mcsema_real_eip !41
  store i1 true, i1* %ZF.i, align 1, !mcsema_real_eip !41
  store i1 false, i1* %SF.i, align 1, !mcsema_real_eip !41
  store i1 false, i1* %OF.i, align 1, !mcsema_real_eip !41
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !41
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !41
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
  store i11 %50, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !41
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
  store i64 %67, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !41
  store i64 %68, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !41
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast.i, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false)
  store i64 %181, i64* %180, align 8, !mcsema_real_eip !42
  %189 = add i64 %166, -8, !mcsema_real_eip !43
  %190 = inttoptr i64 %189 to i64*, !mcsema_real_eip !43
  store i64 %186, i64* %190, align 8, !mcsema_real_eip !43
  %191 = add i64 %166, -16, !mcsema_real_eip !44
  %192 = inttoptr i64 %191 to i64*, !mcsema_real_eip !44
  store i64 %186, i64* %192, align 8, !mcsema_real_eip !44
  %193 = load i64, i64* %190, align 8, !mcsema_real_eip !45
  %194 = add i64 %166, -24, !mcsema_real_eip !46
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !46
  store i64 %193, i64* %195, align 8, !mcsema_real_eip !46
  %196 = load i64, i64* %192, align 8, !mcsema_real_eip !47
  %197 = add i64 %166, -32, !mcsema_real_eip !48
  %198 = inttoptr i64 %197 to i64*, !mcsema_real_eip !48
  store i64 %196, i64* %198, align 8, !mcsema_real_eip !48
  %199 = load i64, i64* %195, align 8
  %200 = inttoptr i64 %199 to i8*
  %201 = load i8, i8* %200, align 1, !mcsema_real_eip !49
  %202 = add i64 %166, -33
  %203 = inttoptr i64 %202 to i8*
  %204 = inttoptr i64 %194 to i8**
  br label %block_0x135.i.i, !mcsema_real_eip !50

block_0x135.i.i:                                  ; preds = %block_0x168.i.i, %block_0x57.i
  %RCX_val.0.i233.i = phi i64 [ %RCX_val.0.i.i, %block_0x57.i ], [ %216, %block_0x168.i.i ]
  %.sink.i.i = phi i8 [ %201, %block_0x57.i ], [ %213, %block_0x168.i.i ]
  store i8 %.sink.i.i, i8* %203, align 1
  switch i8 %.sink.i.i, label %block_0x15f.i.i [
    i8 0, label %sub_110.exit.i
    i8 47, label %block_0x153.i.i
  ]

block_0x153.i.i:                                  ; preds = %block_0x135.i.i
  %205 = load i64, i64* %198, align 8, !mcsema_real_eip !51
  br label %block_0x168.i.i, !mcsema_real_eip !52

block_0x15f.i.i:                                  ; preds = %block_0x135.i.i
  %206 = load i64, i64* %198, align 8, !mcsema_real_eip !53
  br label %block_0x168.i.i, !mcsema_real_eip !51

block_0x168.i.i:                                  ; preds = %block_0x15f.i.i, %block_0x153.i.i
  %RCX_val.1.i.i = phi i64 [ %RCX_val.0.i233.i, %block_0x153.i.i ], [ %206, %block_0x15f.i.i ]
  %.sink7.in.i.i = phi i64 [ %205, %block_0x153.i.i ], [ %206, %block_0x15f.i.i ]
  %.sink5.i.i = phi i8 [ 92, %block_0x153.i.i ], [ %.sink.i.i, %block_0x15f.i.i ]
  %207 = inttoptr i64 %.sink7.in.i.i to i8*
  store i8 %.sink5.i.i, i8* %207, align 1
  %208 = load i64, i64* %195, align 8, !mcsema_real_eip !54
  %209 = add i64 %208, 1
  store i64 %209, i64* %195, align 8, !mcsema_real_eip !55
  %210 = load i64, i64* %198, align 8, !mcsema_real_eip !56
  %211 = add i64 %210, 1
  store i64 %211, i64* %198, align 8, !mcsema_real_eip !57
  %212 = load i8*, i8** %204, align 8
  %213 = load i8, i8* %212, align 1, !mcsema_real_eip !58
  %214 = zext i8 %213 to i64, !mcsema_real_eip !58
  %215 = and i64 %RCX_val.1.i.i, -256, !mcsema_real_eip !58
  %216 = or i64 %214, %215
  br label %block_0x135.i.i, !mcsema_real_eip !59

sub_110.exit.i:                                   ; preds = %block_0x135.i.i
  %217 = load i64, i64* %180, align 8
  store i64 0, i64* %RAX.i, align 8, !mcsema_real_eip !60
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !60
  store i64 %RCX_val.0.i233.i, i64* %RCX.i, align 8, !mcsema_real_eip !60
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !60
  store i64 %199, i64* %RSI.i, align 8, !mcsema_real_eip !60
  store i64 %186, i64* %RDI.i, align 8, !mcsema_real_eip !60
  store i64 %182, i64* %RSP.i, align 8, !mcsema_real_eip !60
  store i64 %217, i64* %RBP.i, align 8, !mcsema_real_eip !60
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !60
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !60
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !60
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !60
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !60
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !60
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !60
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !60
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !60
  store i1 false, i1* %CF.i, align 1, !mcsema_real_eip !60
  store i1 true, i1* %PF.i, align 1, !mcsema_real_eip !60
  store i1 false, i1* %AF.i, align 1, !mcsema_real_eip !60
  store i1 true, i1* %ZF.i, align 1, !mcsema_real_eip !60
  store i1 false, i1* %SF.i, align 1, !mcsema_real_eip !60
  store i1 false, i1* %OF.i, align 1, !mcsema_real_eip !60
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !60
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !60
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !60
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !60
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !60
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !60
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !60
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !60
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !60
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !60
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !60
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !60
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !60
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !60
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !60
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !60
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !60
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !60
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !60
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !60
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !60
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !60
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !60
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !60
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !60
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !60
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !60
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !60
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !60
  store i11 %50, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !60
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !60
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !60
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !60
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !60
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !60
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !60
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !60
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !60
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !60
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !60
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !60
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !60
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !60
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !60
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !60
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !60
  store i64 %67, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !60
  store i64 %68, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !60
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !41
  br label %block_0x69.i, !mcsema_real_eip !61

block_0x69.i:                                     ; preds = %sub_110.exit.i, %sub_90.exit.i
  %RBP_val.1.i = phi i64 [ %217, %sub_110.exit.i ], [ %181, %sub_90.exit.i ]
  %RDI_val.1.i = phi i64 [ %186, %sub_110.exit.i ], [ %RDI_val.0.i.i, %sub_90.exit.i ]
  %RSI_val.1.i = phi i64 [ %199, %sub_110.exit.i ], [ %RSI_val.0.i.i, %sub_90.exit.i ]
  %RCX_val.1.i = phi i64 [ %RCX_val.0.i233.i, %sub_110.exit.i ], [ %RCX_val.0.i.i, %sub_90.exit.i ]
  %218 = add i64 %RBP_val.1.i, -16
  %219 = inttoptr i64 %218 to i32*
  %220 = load i32, i32* %219, align 4, !mcsema_real_eip !61
  %221 = add i32 %220, 1
  store i32 %221, i32* %219, align 4, !mcsema_real_eip !62
  %222 = add i64 %RBP_val.1.i, -12, !mcsema_real_eip !12
  %223 = inttoptr i64 %222 to i32*
  %224 = load i32, i32* %223, align 4, !mcsema_real_eip !12
  %225 = sub i32 %221, %224, !mcsema_real_eip !12
  %226 = xor i32 %225, %221, !mcsema_real_eip !12
  %227 = icmp slt i32 %225, 0
  %228 = xor i32 %224, %221, !mcsema_real_eip !12
  %229 = and i32 %226, %228, !mcsema_real_eip !12
  %230 = icmp slt i32 %229, 0
  %tmp.i = xor i1 %227, %230
  br i1 %tmp.i, label %block_0x33.i, label %sub_0.exit.loopexit, !mcsema_real_eip !13

sub_0.exit.loopexit:                              ; preds = %block_0x69.i
  br label %sub_0.exit

sub_0.exit:                                       ; preds = %sub_0.exit.loopexit, %driverBlockRaw
  %RSP_val.0.lcssa.i = phi i64 [ %71, %driverBlockRaw ], [ %182, %sub_0.exit.loopexit ]
  %RBP_val.0.lcssa.i = phi i64 [ %69, %driverBlockRaw ], [ %RBP_val.1.i, %sub_0.exit.loopexit ]
  %RDI_val.0.lcssa.i = phi i64 [ %81, %driverBlockRaw ], [ %RDI_val.1.i, %sub_0.exit.loopexit ]
  %RSI_val.0.lcssa.i = phi i64 [ %4, %driverBlockRaw ], [ %RSI_val.1.i, %sub_0.exit.loopexit ]
  %RDX_val.0.lcssa.i = phi i64 [ %3, %driverBlockRaw ], [ %RDX_val.0.i.i, %sub_0.exit.loopexit ]
  %RCX_val.0.lcssa.i = phi i64 [ %2, %driverBlockRaw ], [ %RCX_val.1.i, %sub_0.exit.loopexit ]
  %231 = add i64 %RBP_val.0.lcssa.i, -24, !mcsema_real_eip !63
  %232 = inttoptr i64 %231 to i64*, !mcsema_real_eip !63
  %233 = load i64, i64* %232, align 8, !mcsema_real_eip !63
  %234 = add i64 %233, 1, !mcsema_real_eip !64
  %235 = inttoptr i64 %234 to i8*
  store i8 2, i8* %235, align 1, !mcsema_real_eip !64
  %uadd352.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %RSP_val.0.lcssa.i, i64 32)
  %236 = extractvalue { i64, i1 } %uadd352.i, 0
  %237 = xor i64 %236, %RSP_val.0.lcssa.i, !mcsema_real_eip !65
  %238 = and i64 %237, 16, !mcsema_real_eip !65
  %239 = icmp ne i64 %238, 0, !mcsema_real_eip !65
  %240 = icmp slt i64 %236, 0
  %241 = icmp eq i64 %236, 0, !mcsema_real_eip !65
  %242 = xor i64 %RSP_val.0.lcssa.i, -9223372036854775808, !mcsema_real_eip !65
  %243 = and i64 %237, %242, !mcsema_real_eip !65
  %244 = icmp slt i64 %243, 0
  %245 = trunc i64 %236 to i8, !mcsema_real_eip !65
  %246 = tail call i8 @llvm.ctpop.i8(i8 %245), !mcsema_real_eip !65
  %247 = and i8 %246, 1
  %248 = icmp eq i8 %247, 0
  %249 = extractvalue { i64, i1 } %uadd352.i, 1
  %250 = inttoptr i64 %236 to i64*, !mcsema_real_eip !66
  %251 = load i64, i64* %250, align 8, !mcsema_real_eip !66
  %252 = add i64 %236, 16, !mcsema_real_eip !67
  store i64 %233, i64* %RAX.i, align 8, !mcsema_real_eip !67
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !67
  store i64 %RCX_val.0.lcssa.i, i64* %RCX.i, align 8, !mcsema_real_eip !67
  store i64 %RDX_val.0.lcssa.i, i64* %RDX.i, align 8, !mcsema_real_eip !67
  store i64 %RSI_val.0.lcssa.i, i64* %RSI.i, align 8, !mcsema_real_eip !67
  store i64 %RDI_val.0.lcssa.i, i64* %RDI.i, align 8, !mcsema_real_eip !67
  store i64 %252, i64* %RSP.i, align 8, !mcsema_real_eip !67
  store i64 %251, i64* %RBP.i, align 8, !mcsema_real_eip !67
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !67
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !67
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !67
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !67
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !67
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !67
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !67
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !67
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !67
  store i1 %249, i1* %CF.i, align 1, !mcsema_real_eip !67
  store i1 %248, i1* %PF.i, align 1, !mcsema_real_eip !67
  store i1 %239, i1* %AF.i, align 1, !mcsema_real_eip !67
  store i1 %241, i1* %ZF.i, align 1, !mcsema_real_eip !67
  store i1 %240, i1* %SF.i, align 1, !mcsema_real_eip !67
  store i1 %244, i1* %OF.i, align 1, !mcsema_real_eip !67
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !67
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !67
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !67
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !67
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !67
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !67
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !67
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !67
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !67
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !67
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !67
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !67
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !67
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !67
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !67
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !67
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !67
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !67
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !67
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !67
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !67
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !67
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !67
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !67
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !67
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !67
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !67
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !67
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !67
  store i11 %50, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !67
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !67
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !67
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !67
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !67
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !67
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !67
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !67
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !67
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !67
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !67
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !67
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !67
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !67
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !67
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !67
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !67
  store i64 %67, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !67
  store i64 %68, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !67
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
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 144}
!3 = !{i64 0}
!4 = !{i64 8}
!5 = !{i64 12}
!6 = !{i64 15}
!7 = !{i64 22}
!8 = !{i64 26}
!9 = !{i64 30}
!10 = !{i64 35}
!11 = !{i64 39}
!12 = !{i64 42}
!13 = !{i64 45}
!14 = !{i64 51}
!15 = !{i64 55}
!16 = !{i64 59}
!17 = !{i64 63}
!18 = !{i64 71}
!19 = !{i64 152}
!20 = !{i64 156}
!21 = !{i64 163}
!22 = !{i64 167}
!23 = !{i64 174}
!24 = !{i64 177}
!25 = !{i64 184}
!26 = !{i64 194}
!27 = !{i64 196}
!28 = !{i64 199}
!29 = !{i64 208}
!30 = !{i64 211}
!31 = !{i64 215}
!32 = !{i64 218}
!33 = !{i64 221}
!34 = !{i64 231}
!35 = !{i64 237}
!36 = !{i64 252}
!37 = !{i64 257}
!38 = !{i64 76}
!39 = !{i64 81}
!40 = !{i64 87}
!41 = !{i64 95}
!42 = !{i64 272}
!43 = !{i64 276}
!44 = !{i64 280}
!45 = !{i64 284}
!46 = !{i64 288}
!47 = !{i64 292}
!48 = !{i64 296}
!49 = !{i64 304}
!50 = !{i64 309}
!51 = !{i64 339}
!52 = !{i64 346}
!53 = !{i64 354}
!54 = !{i64 360}
!55 = !{i64 370}
!56 = !{i64 374}
!57 = !{i64 384}
!58 = !{i64 392}
!59 = !{i64 397}
!60 = !{i64 403}
!61 = !{i64 105}
!62 = !{i64 113}
!63 = !{i64 121}
!64 = !{i64 125}
!65 = !{i64 129}
!66 = !{i64 133}
!67 = !{i64 134}
