; ModuleID = 'Output/test_13_1.clang.opt.bc'
source_filename = "Output/test_13_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !3
  %51 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !3
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %52 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !3
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %53 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !3
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %54 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !3
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %55 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !3
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %56 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !3
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %57 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !3
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %58 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !3
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %59 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !3
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %60 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !3
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %61 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !3
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %62 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !3
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %63 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !3
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %64 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !3
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %65 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !3
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %66 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !3
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %67 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !3
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %68 = load i64, i64* %STACK_BASE.i, align 8, !mcsema_real_eip !3
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %69 = load i64, i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !3
  %70 = add i64 %7, -8
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !3
  store i64 %8, i64* %71, align 8, !mcsema_real_eip !3
  %72 = add i64 %7, -24
  %73 = add i64 %7, -12
  %74 = inttoptr i64 %73 to i32*
  store i32 0, i32* %74, align 4
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  %75 = add i64 %7, -32
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !4
  %77 = add i64 %7, -40
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !2
  br label %block_0x2c.i

block_0x2c.i:                                     ; preds = %block_0x2c.i, %driverBlockRaw
  %79 = phi i1 [ false, %driverBlockRaw ], [ %98, %block_0x2c.i ]
  %80 = phi i1 [ true, %driverBlockRaw ], [ %96, %block_0x2c.i ]
  %81 = phi i32 [ -2, %driverBlockRaw ], [ %95, %block_0x2c.i ]
  %82 = phi i32 [ -2, %driverBlockRaw ], [ %94, %block_0x2c.i ]
  %.sink149.i = phi i32 [ 0, %driverBlockRaw ], [ %92, %block_0x2c.i ]
  %RAX_val.0148.i = phi i64 [ %1, %driverBlockRaw ], [ %93, %block_0x2c.i ]
  %83 = icmp ult i32 %.sink149.i, 2
  %84 = icmp eq i32 %82, 0
  %85 = trunc i32 %82 to i8, !mcsema_real_eip !5
  %86 = tail call i8 @llvm.ctpop.i8(i8 %85) #2, !mcsema_real_eip !5
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  %89 = and i32 %81, 16, !mcsema_real_eip !5
  %90 = icmp ne i32 %89, 0
  store i64 -4981261766360305936, i64* %76, align 8, !mcsema_real_eip !4
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast.i, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false) #2
  store i64 %70, i64* %78, align 8, !mcsema_real_eip !2
  store i64 %RAX_val.0148.i, i64* %RAX.i, align 8, !mcsema_real_eip !6
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !6
  store i64 %3, i64* %RCX.i, align 8, !mcsema_real_eip !6
  store i64 %4, i64* %RDX.i, align 8, !mcsema_real_eip !6
  store i64 %5, i64* %RSI.i, align 8, !mcsema_real_eip !6
  store i64 %6, i64* %RDI.i, align 8, !mcsema_real_eip !6
  store i64 %72, i64* %RSP.i, align 8, !mcsema_real_eip !6
  store i64 %70, i64* %RBP.i, align 8, !mcsema_real_eip !6
  store i64 %9, i64* %R8.i, align 8, !mcsema_real_eip !6
  store i64 %10, i64* %R9.i, align 8, !mcsema_real_eip !6
  store i64 %11, i64* %R10.i, align 8, !mcsema_real_eip !6
  store i64 %12, i64* %R11.i, align 8, !mcsema_real_eip !6
  store i64 %13, i64* %R12.i, align 8, !mcsema_real_eip !6
  store i64 %14, i64* %R13.i, align 8, !mcsema_real_eip !6
  store i64 %15, i64* %R14.i, align 8, !mcsema_real_eip !6
  store i64 %16, i64* %R15.i, align 8, !mcsema_real_eip !6
  store i64 %17, i64* %RIP.i, align 8, !mcsema_real_eip !6
  store i1 %83, i1* %CF.i, align 1, !mcsema_real_eip !6
  store i1 %88, i1* %PF.i, align 1, !mcsema_real_eip !6
  store i1 %90, i1* %AF.i, align 1, !mcsema_real_eip !6
  store i1 %84, i1* %ZF.i, align 1, !mcsema_real_eip !6
  store i1 %80, i1* %SF.i, align 1, !mcsema_real_eip !6
  store i1 %79, i1* %OF.i, align 1, !mcsema_real_eip !6
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
  store i11 %51, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !6
  store i128 %52, i128* %XMM0.i, align 1, !mcsema_real_eip !6
  store i128 %53, i128* %XMM1.i, align 1, !mcsema_real_eip !6
  store i128 %54, i128* %XMM2.i, align 1, !mcsema_real_eip !6
  store i128 %55, i128* %XMM3.i, align 1, !mcsema_real_eip !6
  store i128 %56, i128* %XMM4.i, align 1, !mcsema_real_eip !6
  store i128 %57, i128* %XMM5.i, align 1, !mcsema_real_eip !6
  store i128 %58, i128* %XMM6.i, align 1, !mcsema_real_eip !6
  store i128 %59, i128* %XMM7.i, align 1, !mcsema_real_eip !6
  store i128 %60, i128* %XMM8.i, align 1, !mcsema_real_eip !6
  store i128 %61, i128* %XMM9.i, align 1, !mcsema_real_eip !6
  store i128 %62, i128* %XMM10.i, align 1, !mcsema_real_eip !6
  store i128 %63, i128* %XMM11.i, align 1, !mcsema_real_eip !6
  store i128 %64, i128* %XMM12.i, align 1, !mcsema_real_eip !6
  store i128 %65, i128* %XMM13.i, align 1, !mcsema_real_eip !6
  store i128 %66, i128* %XMM14.i, align 1, !mcsema_real_eip !6
  store i128 %67, i128* %XMM15.i, align 1, !mcsema_real_eip !6
  store i64 %68, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !6
  store i64 %69, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !6
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %20, i32 128, i32 4, i1 false) #2, !mcsema_real_eip !4
  %91 = load i32, i32* %74, align 4, !mcsema_real_eip !7
  %92 = add i32 %91, 1
  %93 = zext i32 %92 to i64, !mcsema_real_eip !8
  store i32 %92, i32* %74, align 4
  %94 = add i32 %91, -1
  %95 = xor i32 %94, %92, !mcsema_real_eip !5
  %96 = icmp slt i32 %94, 0
  %97 = and i32 %95, %92, !mcsema_real_eip !5
  %98 = icmp slt i32 %97, 0
  %tmp.i = xor i1 %96, %98
  br i1 %tmp.i, label %block_0x2c.i, label %sub_10.exit, !mcsema_real_eip !9

sub_10.exit:                                      ; preds = %block_0x2c.i
  %uadd211.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %72, i64 16) #2
  %99 = extractvalue { i64, i1 } %uadd211.i, 0
  %100 = xor i64 %99, %72, !mcsema_real_eip !10
  %101 = and i64 %100, 16
  %102 = icmp eq i64 %101, 0
  %103 = icmp slt i64 %99, 0
  %104 = icmp eq i64 %99, 0, !mcsema_real_eip !10
  %105 = add i64 %7, 9223372036854775784
  %106 = and i64 %100, %105, !mcsema_real_eip !10
  %107 = icmp slt i64 %106, 0
  %108 = trunc i64 %99 to i8, !mcsema_real_eip !10
  %109 = tail call i8 @llvm.ctpop.i8(i8 %108) #2, !mcsema_real_eip !10
  %110 = and i8 %109, 1
  %111 = icmp eq i8 %110, 0
  %112 = extractvalue { i64, i1 } %uadd211.i, 1
  %113 = inttoptr i64 %99 to i64*, !mcsema_real_eip !11
  %114 = load i64, i64* %113, align 8, !mcsema_real_eip !11
  %115 = add i64 %99, 16, !mcsema_real_eip !12
  store i64 %93, i64* %RAX.i, align 8, !mcsema_real_eip !12
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !12
  store i64 %3, i64* %RCX.i, align 8, !mcsema_real_eip !12
  store i64 %4, i64* %RDX.i, align 8, !mcsema_real_eip !12
  store i64 %5, i64* %RSI.i, align 8, !mcsema_real_eip !12
  store i64 %6, i64* %RDI.i, align 8, !mcsema_real_eip !12
  store i64 %115, i64* %RSP.i, align 8, !mcsema_real_eip !12
  store i64 %114, i64* %RBP.i, align 8, !mcsema_real_eip !12
  store i64 %9, i64* %R8.i, align 8, !mcsema_real_eip !12
  store i64 %10, i64* %R9.i, align 8, !mcsema_real_eip !12
  store i64 %11, i64* %R10.i, align 8, !mcsema_real_eip !12
  store i64 %12, i64* %R11.i, align 8, !mcsema_real_eip !12
  store i64 %13, i64* %R12.i, align 8, !mcsema_real_eip !12
  store i64 %14, i64* %R13.i, align 8, !mcsema_real_eip !12
  store i64 %15, i64* %R14.i, align 8, !mcsema_real_eip !12
  store i64 %16, i64* %R15.i, align 8, !mcsema_real_eip !12
  store i64 %17, i64* %RIP.i, align 8, !mcsema_real_eip !12
  store i1 %112, i1* %CF.i, align 1, !mcsema_real_eip !12
  store i1 %111, i1* %PF.i, align 1, !mcsema_real_eip !12
  store i1 %102, i1* %AF.i, align 1, !mcsema_real_eip !12
  store i1 %104, i1* %ZF.i, align 1, !mcsema_real_eip !12
  store i1 %103, i1* %SF.i, align 1, !mcsema_real_eip !12
  store i1 %107, i1* %OF.i, align 1, !mcsema_real_eip !12
  store i1 %18, i1* %DF.i, align 1, !mcsema_real_eip !12
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %20, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !12
  store i1 %21, i1* %FPU_B.i, align 1, !mcsema_real_eip !12
  store i1 %22, i1* %FPU_C3.i, align 1, !mcsema_real_eip !12
  store i3 %23, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !12
  store i1 %24, i1* %FPU_C2.i, align 1, !mcsema_real_eip !12
  store i1 %25, i1* %FPU_C1.i, align 1, !mcsema_real_eip !12
  store i1 %26, i1* %FPU_C0.i, align 1, !mcsema_real_eip !12
  store i1 %27, i1* %FPU_ES.i, align 1, !mcsema_real_eip !12
  store i1 %28, i1* %FPU_SF.i, align 1, !mcsema_real_eip !12
  store i1 %29, i1* %FPU_PE.i, align 1, !mcsema_real_eip !12
  store i1 %30, i1* %FPU_UE.i, align 1, !mcsema_real_eip !12
  store i1 %31, i1* %FPU_OE.i, align 1, !mcsema_real_eip !12
  store i1 %32, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !12
  store i1 %33, i1* %FPU_DE.i, align 1, !mcsema_real_eip !12
  store i1 %34, i1* %FPU_IE.i, align 1, !mcsema_real_eip !12
  store i1 %35, i1* %FPU_X.i, align 1, !mcsema_real_eip !12
  store i2 %36, i2* %FPU_RC.i, align 1, !mcsema_real_eip !12
  store i2 %37, i2* %FPU_PC.i, align 1, !mcsema_real_eip !12
  store i1 %38, i1* %FPU_PM.i, align 1, !mcsema_real_eip !12
  store i1 %39, i1* %FPU_UM.i, align 1, !mcsema_real_eip !12
  store i1 %40, i1* %FPU_OM.i, align 1, !mcsema_real_eip !12
  store i1 %41, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !12
  store i1 %42, i1* %FPU_DM.i, align 1, !mcsema_real_eip !12
  store i1 %43, i1* %FPU_IM.i, align 1, !mcsema_real_eip !12
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !12
  store i64 %48, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !12
  store i16 %49, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !12
  store i64 %50, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !12
  store i11 %51, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !12
  store i128 %52, i128* %XMM0.i, align 1, !mcsema_real_eip !12
  store i128 %53, i128* %XMM1.i, align 1, !mcsema_real_eip !12
  store i128 %54, i128* %XMM2.i, align 1, !mcsema_real_eip !12
  store i128 %55, i128* %XMM3.i, align 1, !mcsema_real_eip !12
  store i128 %56, i128* %XMM4.i, align 1, !mcsema_real_eip !12
  store i128 %57, i128* %XMM5.i, align 1, !mcsema_real_eip !12
  store i128 %58, i128* %XMM6.i, align 1, !mcsema_real_eip !12
  store i128 %59, i128* %XMM7.i, align 1, !mcsema_real_eip !12
  store i128 %60, i128* %XMM8.i, align 1, !mcsema_real_eip !12
  store i128 %61, i128* %XMM9.i, align 1, !mcsema_real_eip !12
  store i128 %62, i128* %XMM10.i, align 1, !mcsema_real_eip !12
  store i128 %63, i128* %XMM11.i, align 1, !mcsema_real_eip !12
  store i128 %64, i128* %XMM12.i, align 1, !mcsema_real_eip !12
  store i128 %65, i128* %XMM13.i, align 1, !mcsema_real_eip !12
  store i128 %66, i128* %XMM14.i, align 1, !mcsema_real_eip !12
  store i128 %67, i128* %XMM15.i, align 1, !mcsema_real_eip !12
  store i64 %68, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !12
  store i64 %69, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !12
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
!2 = !{i64 0}
!3 = !{i64 16}
!4 = !{i64 44}
!5 = !{i64 31}
!6 = !{i64 5}
!7 = !{i64 49}
!8 = !{i64 52}
!9 = !{i64 38}
!10 = !{i64 65}
!11 = !{i64 69}
!12 = !{i64 70}
