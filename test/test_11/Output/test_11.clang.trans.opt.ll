; ModuleID = 'Output/test_11.clang.trans.opt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

declare x86_64_sysvcc i64 @strlen(i64 inreg)

declare x86_64_sysvcc i64 @malloc(i64 inreg)

declare x86_64_sysvcc i64 @memset(i64 inreg, i64 inreg, i64 inreg)

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  %_local_stack_alloc_106.i = alloca [56 x i64], align 8
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %1 = bitcast [56 x i64]* %_local_stack_alloc_106.i to i8*
  call void @llvm.lifetime.start(i64 448, i8* %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %STi_val.i.0..sroa_cast)
  %_local_stack_start_.i = ptrtoint [56 x i64]* %_local_stack_alloc_106.i to i64
  %RAX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %2 = bitcast i64* %RBX.i to <2 x i64>*
  %3 = load <2 x i64>* %2, align 8
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %4 = bitcast i64* %RDX.i to <2 x i64>*
  %5 = load <2 x i64>* %4, align 8
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %6 = load i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %7 = load i64* %RBP.i, align 8, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %8 = load i64* %R8.i, align 8, !mcsema_real_eip !2
  %R9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %9 = load i64* %R9.i, align 8, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %10 = load i64* %R10.i, align 8, !mcsema_real_eip !2
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %11 = load i64* %R11.i, align 8, !mcsema_real_eip !2
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %12 = load i64* %R12.i, align 8, !mcsema_real_eip !2
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %13 = load i64* %R13.i, align 8, !mcsema_real_eip !2
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %14 = load i64* %R14.i, align 8, !mcsema_real_eip !2
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %15 = load i64* %R15.i, align 8, !mcsema_real_eip !2
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %16 = load i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
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
  %66 = load i64* %STACK_BASE.i, align 8, !mcsema_real_eip !2
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %67 = load i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !2
  %68 = add i64 %_local_stack_start_.i, 48
  %69 = inttoptr i64 %68 to i64*
  store i64 %7, i64* %69, align 8, !mcsema_real_eip !2
  %70 = add i64 %_local_stack_start_.i, 32, !mcsema_real_eip !3
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !3
  store i64 %6, i64* %71, align 8, !mcsema_real_eip !3
  %72 = tail call x86_64_sysvcc i64 @strlen(i64 %6), !mcsema_real_eip !4
  %73 = add i64 %72, 1
  %74 = add i64 %_local_stack_start_.i, 24, !mcsema_real_eip !5
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !5
  store i64 %73, i64* %75, align 8, !mcsema_real_eip !5
  %76 = tail call x86_64_sysvcc i64 @malloc(i64 %73), !mcsema_real_eip !6
  %77 = add i64 %_local_stack_start_.i, 16, !mcsema_real_eip !7
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !7
  store i64 %76, i64* %78, align 8, !mcsema_real_eip !7
  %79 = icmp eq i64 %76, 0, !mcsema_real_eip !8
  br i1 %79, label %block_0xe8.i, label %block_0x5a.i, !mcsema_real_eip !9

block_0xe8.i:                                     ; preds = %driverBlockRaw
  %80 = add i64 %_local_stack_start_.i, 40, !mcsema_real_eip !10
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !10
  store i64 0, i64* %81, align 8, !mcsema_real_eip !10
  %82 = xor i64 %68, %_local_stack_start_.i, !mcsema_real_eip !11
  %83 = and i64 %82, 16
  %84 = icmp eq i64 %83, 0
  %85 = icmp slt i64 %68, 0
  %86 = icmp eq i64 %68, 0, !mcsema_real_eip !11
  %87 = xor i64 %_local_stack_start_.i, -9223372036854775808, !mcsema_real_eip !11
  %88 = and i64 %82, %87, !mcsema_real_eip !11
  %89 = icmp slt i64 %88, 0
  %90 = trunc i64 %68 to i8, !mcsema_real_eip !11
  %91 = tail call i8 @llvm.ctpop.i8(i8 %90), !mcsema_real_eip !11
  %92 = and i8 %91, 1
  %93 = icmp eq i8 %92, 0
  %94 = icmp ugt [56 x i64]* %_local_stack_alloc_106.i, inttoptr (i64 -49 to [56 x i64]*)
  %95 = load i64* %69, align 8, !mcsema_real_eip !12
  %96 = add i64 %_local_stack_start_.i, 64, !mcsema_real_eip !13
  store i64 0, i64* %RAX.i, align 8, !mcsema_real_eip !13
  store <2 x i64> %3, <2 x i64>* %2, align 8
  store <2 x i64> %5, <2 x i64>* %4, align 8
  store i64 %73, i64* %RDI.i, align 8, !mcsema_real_eip !13
  store i64 %96, i64* %RSP.i, align 8, !mcsema_real_eip !13
  store i64 %95, i64* %RBP.i, align 8, !mcsema_real_eip !13
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !13
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !13
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !13
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !13
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !13
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !13
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !13
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !13
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !13
  store i1 %94, i1* %CF.i, align 1, !mcsema_real_eip !13
  store i1 %93, i1* %PF.i, align 1, !mcsema_real_eip !13
  store i1 %84, i1* %AF.i, align 1, !mcsema_real_eip !13
  store i1 %86, i1* %ZF.i, align 1, !mcsema_real_eip !13
  store i1 %85, i1* %SF.i, align 1, !mcsema_real_eip !13
  store i1 %89, i1* %OF.i, align 1, !mcsema_real_eip !13
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !13
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !13
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
  call void @llvm.lifetime.end(i64 448, i8* %1)
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast)
  br label %sub_20.exit

block_0x5a.i:                                     ; preds = %driverBlockRaw
  %97 = load i64* %71, align 8, !mcsema_real_eip !14
  %98 = add i64 %_local_stack_start_.i, 8, !mcsema_real_eip !15
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !15
  store i64 %97, i64* %99, align 8, !mcsema_real_eip !15
  %100 = load i64* %78, align 8, !mcsema_real_eip !16
  %101 = getelementptr inbounds [56 x i64]* %_local_stack_alloc_106.i, i64 0, i64 0
  store i64 %100, i64* %101, align 8, !mcsema_real_eip !17
  %102 = load i64* %78, align 8, !mcsema_real_eip !18
  %103 = load i64* %75, align 8, !mcsema_real_eip !19
  %104 = tail call x86_64_sysvcc i64 @memset(i64 %102, i64 0, i64 %103), !mcsema_real_eip !20
  %105 = load i64* %99, align 8, !mcsema_real_eip !21
  %106 = inttoptr i64 %105 to i8*
  %107 = load i8* %106, align 1, !mcsema_real_eip !22
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %block_0xdb.i, label %block_0x8f.i.preheader, !mcsema_real_eip !23

block_0x8f.i.preheader:                           ; preds = %block_0x5a.i
  br label %block_0x8f.i

block_0xdb.i.loopexit:                            ; preds = %block_0x7c.i
  br label %block_0xdb.i

block_0xdb.i:                                     ; preds = %block_0xdb.i.loopexit, %block_0x5a.i
  %109 = load i64* %78, align 8, !mcsema_real_eip !24
  %110 = add i64 %_local_stack_start_.i, 40, !mcsema_real_eip !25
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !25
  store i64 %109, i64* %111, align 8, !mcsema_real_eip !25
  %112 = xor i64 %68, %_local_stack_start_.i, !mcsema_real_eip !11
  %113 = and i64 %112, 16
  %114 = icmp eq i64 %113, 0
  %115 = icmp slt i64 %68, 0
  %116 = icmp eq i64 %68, 0, !mcsema_real_eip !11
  %117 = xor i64 %_local_stack_start_.i, -9223372036854775808, !mcsema_real_eip !11
  %118 = and i64 %112, %117, !mcsema_real_eip !11
  %119 = icmp slt i64 %118, 0
  %120 = trunc i64 %68 to i8, !mcsema_real_eip !11
  %121 = tail call i8 @llvm.ctpop.i8(i8 %120), !mcsema_real_eip !11
  %122 = and i8 %121, 1
  %123 = icmp eq i8 %122, 0
  %124 = icmp ugt [56 x i64]* %_local_stack_alloc_106.i, inttoptr (i64 -49 to [56 x i64]*)
  %125 = load i64* %69, align 8, !mcsema_real_eip !12
  %126 = add i64 %_local_stack_start_.i, 64, !mcsema_real_eip !13
  store i64 %109, i64* %RAX.i, align 8, !mcsema_real_eip !13
  %127 = extractelement <2 x i64> %3, i32 0
  store i64 %127, i64* %RBX.i, align 8, !mcsema_real_eip !13
  store i64 0, i64* %RCX.i, align 8, !mcsema_real_eip !13
  store i64 %103, i64* %RDX.i, align 8, !mcsema_real_eip !13
  store i64 0, i64* %RSI.i, align 8, !mcsema_real_eip !13
  store i64 %102, i64* %RDI.i, align 8, !mcsema_real_eip !13
  store i64 %126, i64* %RSP.i, align 8, !mcsema_real_eip !13
  store i64 %125, i64* %RBP.i, align 8, !mcsema_real_eip !13
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !13
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !13
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !13
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !13
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !13
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !13
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !13
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !13
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !13
  store i1 %124, i1* %CF.i, align 1, !mcsema_real_eip !13
  store i1 %123, i1* %PF.i, align 1, !mcsema_real_eip !13
  store i1 %114, i1* %AF.i, align 1, !mcsema_real_eip !13
  store i1 %116, i1* %ZF.i, align 1, !mcsema_real_eip !13
  store i1 %115, i1* %SF.i, align 1, !mcsema_real_eip !13
  store i1 %119, i1* %OF.i, align 1, !mcsema_real_eip !13
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !13
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !13
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
  call void @llvm.lifetime.end(i64 448, i8* %1)
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast)
  br label %sub_20.exit

block_0x8f.i:                                     ; preds = %block_0x7c.i, %block_0x8f.i.preheader
  %128 = phi i64 [ %storemerge.i, %block_0x7c.i ], [ %100, %block_0x8f.i.preheader ]
  %129 = phi i8 [ %140, %block_0x7c.i ], [ %107, %block_0x8f.i.preheader ]
  %130 = icmp eq i8 %129, 47
  %131 = inttoptr i64 %128 to i8*
  br i1 %130, label %block_0xa2.i, label %block_0xae.i, !mcsema_real_eip !26

block_0xae.i:                                     ; preds = %block_0x8f.i
  store i8 %129, i8* %131, align 1, !mcsema_real_eip !27
  %132 = load i64* %99, align 8, !mcsema_real_eip !28
  %133 = add i64 %132, 1
  store i64 %133, i64* %99, align 8, !mcsema_real_eip !29
  %134 = load i64* %101, align 8, !mcsema_real_eip !30
  br label %block_0x7c.i, !mcsema_real_eip !31

block_0xa2.i:                                     ; preds = %block_0x8f.i
  store i8 92, i8* %131, align 1, !mcsema_real_eip !32
  %135 = load i64* %99, align 8, !mcsema_real_eip !28
  %136 = add i64 %135, 1
  store i64 %136, i64* %99, align 8, !mcsema_real_eip !29
  %137 = load i64* %101, align 8, !mcsema_real_eip !30
  br label %block_0x7c.i, !mcsema_real_eip !31

block_0x7c.i:                                     ; preds = %block_0xa2.i, %block_0xae.i
  %storemerge.in.i = phi i64 [ %137, %block_0xa2.i ], [ %134, %block_0xae.i ]
  %storemerge.i = add i64 %storemerge.in.i, 1
  store i64 %storemerge.i, i64* %101, align 8
  %138 = load i64* %99, align 8, !mcsema_real_eip !21
  %139 = inttoptr i64 %138 to i8*
  %140 = load i8* %139, align 1, !mcsema_real_eip !22
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %block_0xdb.i.loopexit, label %block_0x8f.i, !mcsema_real_eip !23

sub_20.exit:                                      ; preds = %block_0xdb.i, %block_0xe8.i
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
!2 = metadata !{i64 32, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 40, [22 x i8] c"\09movq\09%rdi, -16(%rbp)\00"}
!4 = metadata !{i64 48, [9 x i8] c"\09callq\090\00"}
!5 = metadata !{i64 59, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!6 = metadata !{i64 67, [9 x i8] c"\09callq\090\00"}
!7 = metadata !{i64 72, [22 x i8] c"\09movq\09%rax, -32(%rbp)\00"}
!8 = metadata !{i64 76, [20 x i8] c"\09cmpq\09$0, -32(%rbp)\00"}
!9 = metadata !{i64 84, [8 x i8] c"\09je\09142\00"}
!10 = metadata !{i64 232, [19 x i8] c"\09movq\09$0, -8(%rbp)\00"}
!11 = metadata !{i64 244, [16 x i8] c"\09addq\09$48, %rsp\00"}
!12 = metadata !{i64 248, [11 x i8] c"\09popq\09%rbp\00"}
!13 = metadata !{i64 249, [6 x i8] c"\09retq\00"}
!14 = metadata !{i64 95, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!15 = metadata !{i64 99, [22 x i8] c"\09movq\09%rax, -40(%rbp)\00"}
!16 = metadata !{i64 103, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!17 = metadata !{i64 107, [22 x i8] c"\09movq\09%rax, -48(%rbp)\00"}
!18 = metadata !{i64 111, [22 x i8] c"\09movq\09-32(%rbp), %rdi\00"}
!19 = metadata !{i64 115, [22 x i8] c"\09movq\09-24(%rbp), %rdx\00"}
!20 = metadata !{i64 119, [9 x i8] c"\09callq\090\00"}
!21 = metadata !{i64 124, [22 x i8] c"\09movq\09-40(%rbp), %rax\00"}
!22 = metadata !{i64 128, [21 x i8] c"\09movsbl\09(%rax), %ecx\00"}
!23 = metadata !{i64 137, [7 x i8] c"\09je\0976\00"}
!24 = metadata !{i64 219, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!25 = metadata !{i64 223, [21 x i8] c"\09movq\09%rax, -8(%rbp)\00"}
!26 = metadata !{i64 156, [8 x i8] c"\09jne\0912\00"}
!27 = metadata !{i64 184, [18 x i8] c"\09movb\09%cl, (%rax)\00"}
!28 = metadata !{i64 186, [22 x i8] c"\09movq\09-40(%rbp), %rax\00"}
!29 = metadata !{i64 196, [22 x i8] c"\09movq\09%rax, -40(%rbp)\00"}
!30 = metadata !{i64 200, [22 x i8] c"\09movq\09-48(%rbp), %rax\00"}
!31 = metadata !{i64 214, [9 x i8] c"\09jmp\09-95\00"}
!32 = metadata !{i64 166, [18 x i8] c"\09movb\09$92, (%rax)\00"}
