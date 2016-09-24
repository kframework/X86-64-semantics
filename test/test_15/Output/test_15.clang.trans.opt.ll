; ModuleID = 'Output/test_15.clang.trans.opt.bc'
source_filename = "Output/test_15.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [4 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x37 = internal unnamed_addr global %0 <{ [4 x i8] c"\01\00\00\00" }>, align 64

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) local_unnamed_addr #2 {
driverBlockRaw:
  %_local_stack_alloc_8.i = alloca [16 x i64], align 8
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %1 = bitcast [16 x i64]* %_local_stack_alloc_8.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_start_.i = ptrtoint [16 x i64]* %_local_stack_alloc_8.i to i64
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %2 = bitcast i64* %RBX.i to <2 x i64>*
  %3 = load <2 x i64>, <2 x i64>* %2, align 8
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %4 = bitcast i64* %RDX.i to <2 x i64>*
  %5 = load <2 x i64>, <2 x i64>* %4, align 8
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %6 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %7 = load i64, i64* %RBP.i, align 8, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %8 = bitcast i64* %R8.i to <2 x i64>*
  %9 = load <2 x i64>, <2 x i64>* %8, align 8
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %10 = bitcast i64* %R10.i to <2 x i64>*
  %11 = load <2 x i64>, <2 x i64>* %10, align 8
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %12 = bitcast i64* %R12.i to <2 x i64>*
  %13 = load <2 x i64>, <2 x i64>* %12, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %14 = bitcast i64* %R14.i to <2 x i64>*
  %15 = load <2 x i64>, <2 x i64>* %14, align 8
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
  %66 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %67 = load <2 x i64>, <2 x i64>* %66, align 8
  %68 = add i64 %_local_stack_start_.i, 8
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !2
  store i64 %7, i64* %69, align 8, !mcsema_real_eip !2
  %70 = or i64 %_local_stack_start_.i, 4
  %71 = trunc i64 %6 to i32, !mcsema_real_eip !3
  %72 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %72, align 4, !mcsema_real_eip !3
  %73 = load i32, i32* bitcast (%0* @data_0x37 to i32*), align 64
  %74 = bitcast [16 x i64]* %_local_stack_alloc_8.i to i32*
  store i32 %73, i32* %74, align 8, !mcsema_real_eip !4
  %75 = load i32, i32* %72, align 4, !mcsema_real_eip !5
  %uadd.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %75, i32 %73) #2
  %76 = extractvalue { i32, i1 } %uadd.i, 0
  %77 = xor i32 %76, %73, !mcsema_real_eip !6
  %78 = xor i32 %77, %75, !mcsema_real_eip !6
  %79 = and i32 %78, 16, !mcsema_real_eip !6
  %80 = icmp ne i32 %79, 0, !mcsema_real_eip !6
  %81 = icmp slt i32 %76, 0
  %82 = icmp eq i32 %76, 0, !mcsema_real_eip !6
  %83 = xor i32 %73, -2147483648, !mcsema_real_eip !6
  %84 = xor i32 %83, %75, !mcsema_real_eip !6
  %85 = and i32 %77, %84, !mcsema_real_eip !6
  %86 = icmp slt i32 %85, 0
  %87 = trunc i32 %76 to i8, !mcsema_real_eip !6
  %88 = tail call i8 @llvm.ctpop.i8(i8 %87) #2, !mcsema_real_eip !6
  %89 = and i8 %88, 1
  %90 = icmp eq i8 %89, 0
  %91 = extractvalue { i32, i1 } %uadd.i, 1
  %92 = zext i32 %76 to i64, !mcsema_real_eip !6
  store i32 %76, i32* bitcast (%0* @data_0x37 to i32*), align 64, !mcsema_real_eip !7
  %93 = zext i32 %73 to i64, !mcsema_real_eip !8
  %94 = load i64, i64* %69, align 8, !mcsema_real_eip !9
  %95 = add i64 %_local_stack_start_.i, 24, !mcsema_real_eip !10
  store i64 %93, i64* %RAX.i, align 8, !mcsema_real_eip !10
  %96 = bitcast i64* %RBX.i to <2 x i64>*
  store <2 x i64> %3, <2 x i64>* %96, align 8
  %97 = bitcast i64* %RDX.i to <2 x i64>*
  store <2 x i64> %5, <2 x i64>* %97, align 8
  store i64 %92, i64* %RDI.i, align 8, !mcsema_real_eip !10
  store i64 %95, i64* %RSP.i, align 8, !mcsema_real_eip !10
  store i64 %94, i64* %RBP.i, align 8, !mcsema_real_eip !10
  %98 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %98, align 8
  %99 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %99, align 8
  %100 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %100, align 8
  %101 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %101, align 8
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !10
  store i1 %91, i1* %CF.i, align 1, !mcsema_real_eip !10
  store i1 %90, i1* %PF.i, align 1, !mcsema_real_eip !10
  store i1 %80, i1* %AF.i, align 1, !mcsema_real_eip !10
  store i1 %82, i1* %ZF.i, align 1, !mcsema_real_eip !10
  store i1 %81, i1* %SF.i, align 1, !mcsema_real_eip !10
  store i1 %86, i1* %OF.i, align 1, !mcsema_real_eip !10
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !10
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !10
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !10
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !10
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !10
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !10
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !10
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !10
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !10
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !10
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !10
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !10
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !10
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !10
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !10
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !10
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !10
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !10
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !10
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !10
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !10
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !10
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !10
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !10
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !10
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !10
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !10
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !10
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !10
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !10
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !10
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !10
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !10
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !10
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !10
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !10
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !10
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !10
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !10
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !10
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !10
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !10
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !10
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !10
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !10
  %102 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %67, <2 x i64>* %102, align 1
  call void @llvm.lifetime.end(i64 128, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
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
!2 = !{i64 16, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 20, [21 x i8] c"\09movl\09%edi, -4(%rbp)\00"}
!4 = !{i64 30, [21 x i8] c"\09movl\09%edi, -8(%rbp)\00"}
!5 = !{i64 33, [21 x i8] c"\09movl\09-4(%rbp), %edi\00"}
!6 = !{i64 36, [14 x i8] c"\09addl\090, %edi\00"}
!7 = !{i64 43, [14 x i8] c"\09movl\09%edi, 0\00"}
!8 = !{i64 50, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!9 = !{i64 53, [11 x i8] c"\09popq\09%rbp\00"}
!10 = !{i64 54, [6 x i8] c"\09retq\00"}
