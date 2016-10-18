; ModuleID = 'Output/test_11.clang.opt.bc'
source_filename = "Output/test_11.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

declare x86_64_sysvcc i64 @strlen(i64 inreg) local_unnamed_addr

declare x86_64_sysvcc i64 @malloc(i64 inreg) local_unnamed_addr

declare x86_64_sysvcc i64 @memset(i64 inreg, i64 inreg, i64 inreg) local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) local_unnamed_addr {
driverBlockRaw:
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %1 = bitcast i64* %RBX.i to <2 x i64>*
  %2 = load <2 x i64>, <2 x i64>* %1, align 8
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %3 = bitcast i64* %RDX.i to <2 x i64>*
  %4 = load <2 x i64>, <2 x i64>* %3, align 8
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %5 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %6 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !2
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
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !2
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
  %68 = add i64 %6, -8
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !2
  store i64 %7, i64* %69, align 8, !mcsema_real_eip !2
  %70 = add i64 %6, -56
  %71 = add i64 %6, -24, !mcsema_real_eip !3
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !3
  store i64 %5, i64* %72, align 8, !mcsema_real_eip !3
  %73 = tail call x86_64_sysvcc i64 @strlen(i64 %5), !mcsema_real_eip !4
  %74 = add i64 %73, 1
  %75 = add i64 %6, -32, !mcsema_real_eip !5
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !5
  store i64 %74, i64* %76, align 8, !mcsema_real_eip !5
  %77 = tail call x86_64_sysvcc i64 @malloc(i64 %74), !mcsema_real_eip !6
  %78 = add i64 %6, -40, !mcsema_real_eip !7
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !7
  store i64 %77, i64* %79, align 8, !mcsema_real_eip !7
  %80 = icmp eq i64 %77, 0, !mcsema_real_eip !8
  br i1 %80, label %block_0xd6.i, label %block_0x55.i, !mcsema_real_eip !9

block_0xd6.i:                                     ; preds = %driverBlockRaw
  %81 = add i64 %6, -16, !mcsema_real_eip !10
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !10
  store i64 0, i64* %82, align 8, !mcsema_real_eip !10
  %uadd144.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %70, i64 48)
  %83 = extractvalue { i64, i1 } %uadd144.i, 0
  %84 = xor i64 %83, %70, !mcsema_real_eip !11
  %85 = and i64 %84, 16
  %86 = icmp eq i64 %85, 0
  %87 = icmp slt i64 %83, 0
  %88 = icmp eq i64 %83, 0, !mcsema_real_eip !11
  %89 = add i64 %6, 9223372036854775752
  %90 = and i64 %84, %89, !mcsema_real_eip !11
  %91 = icmp slt i64 %90, 0
  %92 = trunc i64 %83 to i8, !mcsema_real_eip !11
  %93 = tail call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !11
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  %96 = extractvalue { i64, i1 } %uadd144.i, 1
  %97 = inttoptr i64 %83 to i64*, !mcsema_real_eip !12
  %98 = load i64, i64* %97, align 8, !mcsema_real_eip !12
  %99 = add i64 %83, 16, !mcsema_real_eip !13
  store i64 0, i64* %RAX.i, align 8, !mcsema_real_eip !13
  %100 = bitcast i64* %RBX.i to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %100, align 8
  %101 = bitcast i64* %RDX.i to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %101, align 8
  store i64 %74, i64* %RDI.i, align 8, !mcsema_real_eip !13
  store i64 %99, i64* %RSP.i, align 8, !mcsema_real_eip !13
  store i64 %98, i64* %RBP.i, align 8, !mcsema_real_eip !13
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !13
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !13
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !13
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !13
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !13
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !13
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !13
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !13
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !13
  store i1 %96, i1* %CF.i, align 1, !mcsema_real_eip !13
  store i1 %95, i1* %PF.i, align 1, !mcsema_real_eip !13
  store i1 %86, i1* %AF.i, align 1, !mcsema_real_eip !13
  store i1 %88, i1* %ZF.i, align 1, !mcsema_real_eip !13
  store i1 %87, i1* %SF.i, align 1, !mcsema_real_eip !13
  store i1 %91, i1* %OF.i, align 1, !mcsema_real_eip !13
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !13
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !13
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !13
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !13
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !13
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !13
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !13
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !13
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !13
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !13
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !13
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !13
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !13
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !13
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !13
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !13
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !13
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !13
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !13
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !13
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !13
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !13
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !13
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !13
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !13
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !13
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !13
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !13
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !13
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !13
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !13
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !13
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !13
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !13
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !13
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !13
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !13
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !13
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !13
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !13
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !13
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !13
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !13
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !13
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !13
  store i64 %66, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !13
  store i64 %67, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !13
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  br label %sub_20.exit

block_0x55.i:                                     ; preds = %driverBlockRaw
  %102 = load i64, i64* %72, align 8, !mcsema_real_eip !14
  %103 = add i64 %6, -48, !mcsema_real_eip !15
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !15
  store i64 %102, i64* %104, align 8, !mcsema_real_eip !15
  %105 = load i64, i64* %79, align 8, !mcsema_real_eip !16
  %106 = inttoptr i64 %70 to i64*, !mcsema_real_eip !17
  store i64 %105, i64* %106, align 8, !mcsema_real_eip !17
  %107 = load i64, i64* %79, align 8, !mcsema_real_eip !18
  %108 = load i64, i64* %76, align 8, !mcsema_real_eip !19
  %109 = tail call x86_64_sysvcc i64 @memset(i64 %107, i64 0, i64 %108), !mcsema_real_eip !20
  %110 = inttoptr i64 %103 to i8**
  %111 = load i8*, i8** %110, align 8
  %112 = load i8, i8* %111, align 1, !mcsema_real_eip !21
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %block_0xc9.i, label %block_0x84.preheader.i, !mcsema_real_eip !22

block_0x84.preheader.i:                           ; preds = %block_0x55.i
  %114 = inttoptr i64 %70 to i8**
  br label %block_0x84.i

block_0xc9.i.loopexit:                            ; preds = %block_0x84.i
  br label %block_0xc9.i

block_0xc9.i:                                     ; preds = %block_0xc9.i.loopexit, %block_0x55.i
  %115 = load i64, i64* %79, align 8, !mcsema_real_eip !23
  %116 = add i64 %6, -16, !mcsema_real_eip !24
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !24
  store i64 %115, i64* %117, align 8, !mcsema_real_eip !24
  %uadd141.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %70, i64 48)
  %118 = extractvalue { i64, i1 } %uadd141.i, 0
  %119 = xor i64 %118, %70, !mcsema_real_eip !11
  %120 = and i64 %119, 16
  %121 = icmp eq i64 %120, 0
  %122 = icmp slt i64 %118, 0
  %123 = icmp eq i64 %118, 0, !mcsema_real_eip !11
  %124 = add i64 %6, 9223372036854775752
  %125 = and i64 %119, %124, !mcsema_real_eip !11
  %126 = icmp slt i64 %125, 0
  %127 = trunc i64 %118 to i8, !mcsema_real_eip !11
  %128 = tail call i8 @llvm.ctpop.i8(i8 %127), !mcsema_real_eip !11
  %129 = and i8 %128, 1
  %130 = icmp eq i8 %129, 0
  %131 = extractvalue { i64, i1 } %uadd141.i, 1
  %132 = inttoptr i64 %118 to i64*, !mcsema_real_eip !12
  %133 = load i64, i64* %132, align 8, !mcsema_real_eip !12
  %134 = add i64 %118, 16, !mcsema_real_eip !13
  store i64 %115, i64* %RAX.i, align 8, !mcsema_real_eip !13
  %135 = extractelement <2 x i64> %2, i32 0
  store i64 %135, i64* %RBX.i, align 8, !mcsema_real_eip !13
  store i64 0, i64* %RCX.i, align 8, !mcsema_real_eip !13
  store i64 %108, i64* %RDX.i, align 8, !mcsema_real_eip !13
  store i64 0, i64* %RSI.i, align 8, !mcsema_real_eip !13
  store i64 %107, i64* %RDI.i, align 8, !mcsema_real_eip !13
  store i64 %134, i64* %RSP.i, align 8, !mcsema_real_eip !13
  store i64 %133, i64* %RBP.i, align 8, !mcsema_real_eip !13
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !13
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !13
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !13
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !13
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !13
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !13
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !13
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !13
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !13
  store i1 %131, i1* %CF.i, align 1, !mcsema_real_eip !13
  store i1 %130, i1* %PF.i, align 1, !mcsema_real_eip !13
  store i1 %121, i1* %AF.i, align 1, !mcsema_real_eip !13
  store i1 %123, i1* %ZF.i, align 1, !mcsema_real_eip !13
  store i1 %122, i1* %SF.i, align 1, !mcsema_real_eip !13
  store i1 %126, i1* %OF.i, align 1, !mcsema_real_eip !13
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !13
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !13
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !13
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !13
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !13
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !13
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !13
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !13
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !13
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !13
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !13
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !13
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !13
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !13
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !13
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !13
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !13
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !13
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !13
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !13
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !13
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !13
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !13
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !13
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !13
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !13
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !13
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !13
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !13
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !13
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !13
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !13
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !13
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !13
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !13
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !13
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !13
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !13
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !13
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !13
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !13
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !13
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !13
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !13
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !13
  store i64 %66, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !13
  store i64 %67, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !13
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  br label %sub_20.exit

block_0x84.i:                                     ; preds = %block_0x84.i, %block_0x84.preheader.i
  %136 = phi i8 [ %112, %block_0x84.preheader.i ], [ %140, %block_0x84.i ]
  %137 = icmp eq i8 %136, 47
  %138 = load i8*, i8** %114, align 8
  %.sink109.i = select i1 %137, i8 92, i8 %136
  store i8 %.sink109.i, i8* %138, align 1
  %storemerge.in.i = load i64, i64* %104, align 8
  %storemerge.i = add i64 %storemerge.in.i, 1
  store i64 %storemerge.i, i64* %104, align 8
  %.sink.in.i = load i64, i64* %106, align 8
  %.sink.i = add i64 %.sink.in.i, 1
  store i64 %.sink.i, i64* %106, align 8
  %139 = load i8*, i8** %110, align 8
  %140 = load i8, i8* %139, align 1, !mcsema_real_eip !21
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %block_0xc9.i.loopexit, label %block_0x84.i, !mcsema_real_eip !22

sub_20.exit:                                      ; preds = %block_0xc9.i, %block_0xd6.i
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

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 32, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 40, [22 x i8] c"\09movq\09%rdi, -16(%rbp)\00"}
!4 = !{i64 48, [9 x i8] c"\09callq\090\00"}
!5 = !{i64 57, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!6 = !{i64 65, [9 x i8] c"\09callq\090\00"}
!7 = !{i64 70, [22 x i8] c"\09movq\09%rax, -32(%rbp)\00"}
!8 = !{i64 74, [20 x i8] c"\09cmpq\09$0, -32(%rbp)\00"}
!9 = !{i64 79, [8 x i8] c"\09je\09129\00"}
!10 = !{i64 214, [19 x i8] c"\09movq\09$0, -8(%rbp)\00"}
!11 = !{i64 226, [16 x i8] c"\09addq\09$48, %rsp\00"}
!12 = !{i64 230, [11 x i8] c"\09popq\09%rbp\00"}
!13 = !{i64 231, [6 x i8] c"\09retq\00"}
!14 = !{i64 87, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!15 = !{i64 91, [22 x i8] c"\09movq\09%rax, -40(%rbp)\00"}
!16 = !{i64 95, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!17 = !{i64 99, [22 x i8] c"\09movq\09%rax, -48(%rbp)\00"}
!18 = !{i64 103, [22 x i8] c"\09movq\09-32(%rbp), %rdi\00"}
!19 = !{i64 107, [22 x i8] c"\09movq\09-24(%rbp), %rdx\00"}
!20 = !{i64 111, [9 x i8] c"\09callq\090\00"}
!21 = !{i64 120, [21 x i8] c"\09movsbl\09(%rax), %ecx\00"}
!22 = !{i64 126, [7 x i8] c"\09je\0969\00"}
!23 = !{i64 201, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!24 = !{i64 205, [21 x i8] c"\09movq\09%rax, -8(%rbp)\00"}
