; ModuleID = 'Output/test_13_1.clang.opt.bc'
source_filename = "Output/test_13_1.clang.bc"
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
  %STi_val.i.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !3
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !3
  %1 = load i64, i64* %RAX.i, align 8, !mcsema_real_eip !3
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !3
  %2 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !3
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !3
  %3 = load i64, i64* %RCX.i, align 8, !mcsema_real_eip !3
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !3
  %4 = load i64, i64* %RDX.i, align 8, !mcsema_real_eip !3
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !3
  %5 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !3
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !3
  %6 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !3
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !3
  %7 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !3
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !3
  %8 = load i64, i64* %RBP.i, align 8, !mcsema_real_eip !3
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !3
  %9 = load i64, i64* %R8.i, align 8, !mcsema_real_eip !3
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !3
  %10 = load i64, i64* %R9.i, align 8, !mcsema_real_eip !3
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !3
  %11 = load i64, i64* %R10.i, align 8, !mcsema_real_eip !3
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
  %12 = load i64, i64* %R11.i, align 8, !mcsema_real_eip !3
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %13 = load i64, i64* %R12.i, align 8, !mcsema_real_eip !3
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !3
  %14 = load i64, i64* %R13.i, align 8, !mcsema_real_eip !3
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %15 = load i64, i64* %R14.i, align 8, !mcsema_real_eip !3
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !3
  %16 = load i64, i64* %R15.i, align 8, !mcsema_real_eip !3
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %17 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !3
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !3
  %18 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !3
  %19 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !3
  %20 = bitcast x86_fp80* %19 to i8*, !mcsema_real_eip !3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %20, i32 128, i32 4, i1 false) #2, !mcsema_real_eip !3
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !3
  %21 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !3
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !3
  %22 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !3
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !3
  %23 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !3
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !3
  %24 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !3
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !3
  %25 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !3
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !3
  %26 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !3
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !3
  %27 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !3
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !3
  %28 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !3
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !3
  %29 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !3
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !3
  %30 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !3
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !3
  %31 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !3
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !3
  %32 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !3
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !3
  %33 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !3
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !3
  %34 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !3
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !3
  %35 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !3
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !3
  %36 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !3
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !3
  %37 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !3
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !3
  %38 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !3
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !3
  %39 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !3
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !3
  %40 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !3
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !3
  %41 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !3
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !3
  %42 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !3
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !3
  %43 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !3
  %44 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !3
  %45 = bitcast i8* %44 to i64*
  %46 = load i64, i64* %45, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !3
  %47 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !3
  %48 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !3
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !3
  %49 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !3
  %50 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !3
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
  %69 = add i64 %7, -8
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !3
  store i64 %8, i64* %70, align 8, !mcsema_real_eip !3
  %71 = add i64 %7, -24
  %72 = add i64 %7, -12, !mcsema_real_eip !4
  %73 = inttoptr i64 %72 to i32*
  store i32 0, i32* %73, align 4, !mcsema_real_eip !4
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  %74 = add i64 %7, -32
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !5
  %76 = add i64 %7, -40
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !2
  br label %block_0x29.i

block_0x29.i:                                     ; preds = %block_0x29.i, %driverBlockRaw
  %OF_val.0.i = phi i1 [ false, %driverBlockRaw ], [ %93, %block_0x29.i ]
  %SF_val.0.i = phi i1 [ true, %driverBlockRaw ], [ %90, %block_0x29.i ]
  %CF_val.0.i = phi i1 [ true, %driverBlockRaw ], [ %91, %block_0x29.i ]
  %AF_val.0.i = phi i1 [ true, %driverBlockRaw ], [ %84, %block_0x29.i ]
  %PF_val.0.i = phi i1 [ false, %driverBlockRaw ], [ %88, %block_0x29.i ]
  %ZF_val.0.i = phi i1 [ false, %driverBlockRaw ], [ %89, %block_0x29.i ]
  %RAX_val.1.i = phi i64 [ %1, %driverBlockRaw ], [ %80, %block_0x29.i ]
  store i64 -4981261766360305936, i64* %75, align 8, !mcsema_real_eip !5
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast.i, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false) #2
  store i64 %69, i64* %77, align 8, !mcsema_real_eip !2
  store i64 %RAX_val.1.i, i64* %RAX.i, align 8, !mcsema_real_eip !6
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !6
  store i64 %3, i64* %RCX.i, align 8, !mcsema_real_eip !6
  store i64 %4, i64* %RDX.i, align 8, !mcsema_real_eip !6
  store i64 %5, i64* %RSI.i, align 8, !mcsema_real_eip !6
  store i64 %6, i64* %RDI.i, align 8, !mcsema_real_eip !6
  store i64 %71, i64* %RSP.i, align 8, !mcsema_real_eip !6
  store i64 %69, i64* %RBP.i, align 8, !mcsema_real_eip !6
  store i64 %9, i64* %R8.i, align 8, !mcsema_real_eip !6
  store i64 %10, i64* %R9.i, align 8, !mcsema_real_eip !6
  store i64 %11, i64* %R10.i, align 8, !mcsema_real_eip !6
  store i64 %12, i64* %R11.i, align 8, !mcsema_real_eip !6
  store i64 %13, i64* %R12.i, align 8, !mcsema_real_eip !6
  store i64 %14, i64* %R13.i, align 8, !mcsema_real_eip !6
  store i64 %15, i64* %R14.i, align 8, !mcsema_real_eip !6
  store i64 %16, i64* %R15.i, align 8, !mcsema_real_eip !6
  store i64 %17, i64* %RIP.i, align 8, !mcsema_real_eip !6
  store i1 %CF_val.0.i, i1* %CF.i, align 1, !mcsema_real_eip !6
  store i1 %PF_val.0.i, i1* %PF.i, align 1, !mcsema_real_eip !6
  store i1 %AF_val.0.i, i1* %AF.i, align 1, !mcsema_real_eip !6
  store i1 %ZF_val.0.i, i1* %ZF.i, align 1, !mcsema_real_eip !6
  store i1 %SF_val.0.i, i1* %SF.i, align 1, !mcsema_real_eip !6
  store i1 %OF_val.0.i, i1* %OF.i, align 1, !mcsema_real_eip !6
  store i1 %18, i1* %DF.i, align 1, !mcsema_real_eip !6
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* nonnull %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !6
  store i1 %21, i1* %FPU_B.i, align 1, !mcsema_real_eip !6
  store i1 %22, i1* %FPU_C3.i, align 1, !mcsema_real_eip !6
  store i3 %23, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !6
  store i1 %24, i1* %FPU_C2.i, align 1, !mcsema_real_eip !6
  store i1 %25, i1* %FPU_C1.i, align 1, !mcsema_real_eip !6
  store i1 %26, i1* %FPU_C0.i, align 1, !mcsema_real_eip !6
  store i1 %27, i1* %FPU_ES.i, align 1, !mcsema_real_eip !6
  store i1 %28, i1* %FPU_SF.i, align 1, !mcsema_real_eip !6
  store i1 %29, i1* %FPU_PE.i, align 1, !mcsema_real_eip !6
  store i1 %30, i1* %FPU_UE.i, align 1, !mcsema_real_eip !6
  store i1 %31, i1* %FPU_OE.i, align 1, !mcsema_real_eip !6
  store i1 %32, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !6
  store i1 %33, i1* %FPU_DE.i, align 1, !mcsema_real_eip !6
  store i1 %34, i1* %FPU_IE.i, align 1, !mcsema_real_eip !6
  store i1 %35, i1* %FPU_X.i, align 1, !mcsema_real_eip !6
  store i2 %36, i2* %FPU_RC.i, align 1, !mcsema_real_eip !6
  store i2 %37, i2* %FPU_PC.i, align 1, !mcsema_real_eip !6
  store i1 %38, i1* %FPU_PM.i, align 1, !mcsema_real_eip !6
  store i1 %39, i1* %FPU_UM.i, align 1, !mcsema_real_eip !6
  store i1 %40, i1* %FPU_OM.i, align 1, !mcsema_real_eip !6
  store i1 %41, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !6
  store i1 %42, i1* %FPU_DM.i, align 1, !mcsema_real_eip !6
  store i1 %43, i1* %FPU_IM.i, align 1, !mcsema_real_eip !6
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !6
  store i64 %48, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !6
  store i16 %49, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !6
  store i64 %50, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !6
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !6
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !6
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !6
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !6
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !6
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !6
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !6
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !6
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !6
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !6
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !6
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !6
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !6
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !6
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !6
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !6
  store i64 %67, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !6
  store i64 %68, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !6
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %20, i32 128, i32 4, i1 false) #2, !mcsema_real_eip !5
  %78 = load i32, i32* %73, align 4, !mcsema_real_eip !7
  %79 = add i32 %78, 1
  %80 = zext i32 %79 to i64, !mcsema_real_eip !8
  store i32 %79, i32* %73, align 4, !mcsema_real_eip !9
  %81 = add i32 %78, -1
  %82 = xor i32 %81, %79, !mcsema_real_eip !10
  %83 = and i32 %82, 16, !mcsema_real_eip !10
  %84 = icmp ne i32 %83, 0, !mcsema_real_eip !10
  %85 = trunc i32 %81 to i8, !mcsema_real_eip !10
  %86 = tail call i8 @llvm.ctpop.i8(i8 %85) #2, !mcsema_real_eip !10
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  %89 = icmp eq i32 %81, 0, !mcsema_real_eip !10
  %90 = icmp slt i32 %81, 0
  %91 = icmp ult i32 %79, 2, !mcsema_real_eip !10
  %92 = and i32 %82, %79, !mcsema_real_eip !10
  %93 = icmp slt i32 %92, 0
  %tmp209.i = xor i1 %90, %93
  br i1 %tmp209.i, label %block_0x29.i, label %sub_10.exit, !mcsema_real_eip !11

sub_10.exit:                                      ; preds = %block_0x29.i
  %uadd210.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %71, i64 16) #2
  %94 = extractvalue { i64, i1 } %uadd210.i, 0
  %95 = xor i64 %94, %71, !mcsema_real_eip !12
  %96 = and i64 %95, 16
  %97 = icmp eq i64 %96, 0
  %98 = icmp slt i64 %94, 0
  %99 = icmp eq i64 %94, 0, !mcsema_real_eip !12
  %100 = add i64 %7, 9223372036854775784
  %101 = and i64 %95, %100, !mcsema_real_eip !12
  %102 = icmp slt i64 %101, 0
  %103 = trunc i64 %94 to i8, !mcsema_real_eip !12
  %104 = tail call i8 @llvm.ctpop.i8(i8 %103) #2, !mcsema_real_eip !12
  %105 = and i8 %104, 1
  %106 = icmp eq i8 %105, 0
  %107 = extractvalue { i64, i1 } %uadd210.i, 1
  %108 = inttoptr i64 %94 to i64*, !mcsema_real_eip !13
  %109 = load i64, i64* %108, align 8, !mcsema_real_eip !13
  %110 = add i64 %94, 16, !mcsema_real_eip !14
  store i64 %80, i64* %RAX.i, align 8, !mcsema_real_eip !14
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !14
  store i64 %3, i64* %RCX.i, align 8, !mcsema_real_eip !14
  store i64 %4, i64* %RDX.i, align 8, !mcsema_real_eip !14
  store i64 %5, i64* %RSI.i, align 8, !mcsema_real_eip !14
  store i64 %6, i64* %RDI.i, align 8, !mcsema_real_eip !14
  store i64 %110, i64* %RSP.i, align 8, !mcsema_real_eip !14
  store i64 %109, i64* %RBP.i, align 8, !mcsema_real_eip !14
  store i64 %9, i64* %R8.i, align 8, !mcsema_real_eip !14
  store i64 %10, i64* %R9.i, align 8, !mcsema_real_eip !14
  store i64 %11, i64* %R10.i, align 8, !mcsema_real_eip !14
  store i64 %12, i64* %R11.i, align 8, !mcsema_real_eip !14
  store i64 %13, i64* %R12.i, align 8, !mcsema_real_eip !14
  store i64 %14, i64* %R13.i, align 8, !mcsema_real_eip !14
  store i64 %15, i64* %R14.i, align 8, !mcsema_real_eip !14
  store i64 %16, i64* %R15.i, align 8, !mcsema_real_eip !14
  store i64 %17, i64* %RIP.i, align 8, !mcsema_real_eip !14
  store i1 %107, i1* %CF.i, align 1, !mcsema_real_eip !14
  store i1 %106, i1* %PF.i, align 1, !mcsema_real_eip !14
  store i1 %97, i1* %AF.i, align 1, !mcsema_real_eip !14
  store i1 %99, i1* %ZF.i, align 1, !mcsema_real_eip !14
  store i1 %98, i1* %SF.i, align 1, !mcsema_real_eip !14
  store i1 %102, i1* %OF.i, align 1, !mcsema_real_eip !14
  store i1 %18, i1* %DF.i, align 1, !mcsema_real_eip !14
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %20, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !14
  store i1 %21, i1* %FPU_B.i, align 1, !mcsema_real_eip !14
  store i1 %22, i1* %FPU_C3.i, align 1, !mcsema_real_eip !14
  store i3 %23, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !14
  store i1 %24, i1* %FPU_C2.i, align 1, !mcsema_real_eip !14
  store i1 %25, i1* %FPU_C1.i, align 1, !mcsema_real_eip !14
  store i1 %26, i1* %FPU_C0.i, align 1, !mcsema_real_eip !14
  store i1 %27, i1* %FPU_ES.i, align 1, !mcsema_real_eip !14
  store i1 %28, i1* %FPU_SF.i, align 1, !mcsema_real_eip !14
  store i1 %29, i1* %FPU_PE.i, align 1, !mcsema_real_eip !14
  store i1 %30, i1* %FPU_UE.i, align 1, !mcsema_real_eip !14
  store i1 %31, i1* %FPU_OE.i, align 1, !mcsema_real_eip !14
  store i1 %32, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !14
  store i1 %33, i1* %FPU_DE.i, align 1, !mcsema_real_eip !14
  store i1 %34, i1* %FPU_IE.i, align 1, !mcsema_real_eip !14
  store i1 %35, i1* %FPU_X.i, align 1, !mcsema_real_eip !14
  store i2 %36, i2* %FPU_RC.i, align 1, !mcsema_real_eip !14
  store i2 %37, i2* %FPU_PC.i, align 1, !mcsema_real_eip !14
  store i1 %38, i1* %FPU_PM.i, align 1, !mcsema_real_eip !14
  store i1 %39, i1* %FPU_UM.i, align 1, !mcsema_real_eip !14
  store i1 %40, i1* %FPU_OM.i, align 1, !mcsema_real_eip !14
  store i1 %41, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !14
  store i1 %42, i1* %FPU_DM.i, align 1, !mcsema_real_eip !14
  store i1 %43, i1* %FPU_IM.i, align 1, !mcsema_real_eip !14
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !14
  store i64 %48, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !14
  store i16 %49, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !14
  store i64 %50, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !14
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !14
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !14
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !14
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !14
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !14
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !14
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !14
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !14
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !14
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !14
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !14
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !14
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !14
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !14
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !14
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !14
  store i64 %67, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !14
  store i64 %68, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !14
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
!2 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 16, [12 x i8] c"\09pushq\09%rbp\00"}
!4 = !{i64 24, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!5 = !{i64 41, [11 x i8] c"\09callq\09-46\00"}
!6 = !{i64 5, [6 x i8] c"\09retq\00"}
!7 = !{i64 46, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!8 = !{i64 49, [15 x i8] c"\09addl\09$1, %eax\00"}
!9 = !{i64 52, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!10 = !{i64 31, [19 x i8] c"\09cmpl\09$2, -4(%rbp)\00"}
!11 = !{i64 35, [8 x i8] c"\09jge\0919\00"}
!12 = !{i64 60, [16 x i8] c"\09addq\09$16, %rsp\00"}
!13 = !{i64 64, [11 x i8] c"\09popq\09%rbp\00"}
!14 = !{i64 65, [6 x i8] c"\09retq\00"}
