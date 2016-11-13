; ModuleID = 'Output/test_34.clang.opt.bc'
source_filename = "Output/test_34.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [8 x i8] }>
%1 = type <{ [8 x i8] }>
%2 = type <{ [8 x i8] }>
%3 = type <{ [8 x i8] }>
%4 = type <{ [8 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x448 = internal unnamed_addr constant %0 <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 64
@data_0x450 = internal constant %1 <{ [8 x i8] c"$N\00\00\00\00\00\00" }>, align 64
@data_0x390 = internal unnamed_addr constant %2 <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 64
@data_0x3e8 = internal unnamed_addr constant %3 <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 64
@data_0x460 = internal unnamed_addr constant %4 <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 64

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) local_unnamed_addr #2 {
driverBlockRaw:
  %STi_val.i.i.i.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %STi_val.i.i.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !3
  %STi_val.i.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !4
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !5
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !5
  %1 = load i64, i64* %RAX.i, align 8
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !5
  %2 = load i64, i64* %RBX.i, align 8
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !5
  %3 = load i64, i64* %RCX.i, align 8
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !5
  %4 = load i64, i64* %RDX.i, align 8
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !5
  %5 = load i64, i64* %RSI.i, align 8
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !5
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !5
  %6 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !5
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !5
  %7 = load i64, i64* %RBP.i, align 8, !mcsema_real_eip !5
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !5
  %8 = load i64, i64* %R8.i, align 8
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !5
  %9 = load i64, i64* %R9.i, align 8
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !5
  %10 = load i64, i64* %R10.i, align 8
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !5
  %11 = load i64, i64* %R11.i, align 8
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !5
  %12 = load i64, i64* %R12.i, align 8
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !5
  %13 = load i64, i64* %R13.i, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !5
  %14 = load i64, i64* %R14.i, align 8
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !5
  %15 = load i64, i64* %R15.i, align 8
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !5
  %16 = load i64, i64* %RIP.i, align 8
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !5
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !5
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !5
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !5
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !5
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !5
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !5
  %17 = load i1, i1* %DF.i, align 1
  %18 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !5
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !5
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %19, i32 128, i32 4, i1 false) #2, !mcsema_real_eip !5
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !5
  %20 = load i1, i1* %FPU_B.i, align 1
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !5
  %21 = load i1, i1* %FPU_C3.i, align 1
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !5
  %22 = load i3, i3* %FPU_TOP.i, align 1
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !5
  %23 = load i1, i1* %FPU_C2.i, align 1
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !5
  %24 = load i1, i1* %FPU_C1.i, align 1
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !5
  %25 = load i1, i1* %FPU_C0.i, align 1
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !5
  %26 = load i1, i1* %FPU_ES.i, align 1
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !5
  %27 = load i1, i1* %FPU_SF.i, align 1
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !5
  %28 = load i1, i1* %FPU_PE.i, align 1
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !5
  %29 = load i1, i1* %FPU_UE.i, align 1
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !5
  %30 = load i1, i1* %FPU_OE.i, align 1
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !5
  %31 = load i1, i1* %FPU_ZE.i, align 1
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !5
  %32 = load i1, i1* %FPU_DE.i, align 1
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !5
  %33 = load i1, i1* %FPU_IE.i, align 1
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !5
  %34 = load i1, i1* %FPU_X.i, align 1
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !5
  %35 = load i2, i2* %FPU_RC.i, align 1
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !5
  %36 = load i2, i2* %FPU_PC.i, align 1
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !5
  %37 = load i1, i1* %FPU_PM.i, align 1
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !5
  %38 = load i1, i1* %FPU_UM.i, align 1
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !5
  %39 = load i1, i1* %FPU_OM.i, align 1
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !5
  %40 = load i1, i1* %FPU_ZM.i, align 1
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !5
  %41 = load i1, i1* %FPU_DM.i, align 1
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !5
  %42 = load i1, i1* %FPU_IM.i, align 1
  %43 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !5
  %44 = bitcast i8* %43 to i64*
  %45 = load i64, i64* %44, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !5
  %46 = load i16, i16* %FPU_LASTIP_SEG.i, align 1
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !5
  %47 = load i64, i64* %FPU_LASTIP_OFF.i, align 8
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !5
  %48 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !5
  %49 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !5
  %50 = load i11, i11* %FPU_FOPCODE.i, align 1
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !5
  %51 = load i128, i128* %XMM0.i, align 1
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !5
  %52 = load i128, i128* %XMM1.i, align 1
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !5
  %53 = load i128, i128* %XMM2.i, align 1
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !5
  %54 = load i128, i128* %XMM3.i, align 1
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !5
  %55 = load i128, i128* %XMM4.i, align 1
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !5
  %56 = load i128, i128* %XMM5.i, align 1
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !5
  %57 = load i128, i128* %XMM6.i, align 1
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !5
  %58 = load i128, i128* %XMM7.i, align 1
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !5
  %59 = load i128, i128* %XMM8.i, align 1
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !5
  %60 = load i128, i128* %XMM9.i, align 1
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !5
  %61 = load i128, i128* %XMM10.i, align 1
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !5
  %62 = load i128, i128* %XMM11.i, align 1
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !5
  %63 = load i128, i128* %XMM12.i, align 1
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !5
  %64 = load i128, i128* %XMM13.i, align 1
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !5
  %65 = load i128, i128* %XMM14.i, align 1
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !5
  %66 = load i128, i128* %XMM15.i, align 1
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !5
  %67 = load i64, i64* %STACK_BASE.i, align 8
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !5
  %68 = load i64, i64* %STACK_LIMIT.i, align 8
  %69 = add i64 %6, -8
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !5
  store i64 %7, i64* %70, align 8, !mcsema_real_eip !5
  %71 = add i64 %6, -12, !mcsema_real_eip !6
  %72 = inttoptr i64 %71 to i32*
  store i32 0, i32* %72, align 4, !mcsema_real_eip !6
  %73 = add i64 %6, -16
  %74 = inttoptr i64 %73 to i32*
  store i32 0, i32* %74, align 4
  %75 = add i64 %6, -32
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !7
  store i64 -4981261766360305936, i64* %76, align 8, !mcsema_real_eip !7
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast.i, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false) #2
  %77 = add i64 %6, -40
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !4
  store i64 %69, i64* %78, align 8, !mcsema_real_eip !4
  %79 = add i64 %6, -44, !mcsema_real_eip !8
  %80 = inttoptr i64 %79 to i32*
  store i32 0, i32* %80, align 4, !mcsema_real_eip !8
  %81 = add i64 %6, -80
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !9
  store i64 -4981261766360305936, i64* %82, align 8, !mcsema_real_eip !9
  %STi_val.i.0..sroa_cast.i.i = bitcast [8 x x86_fp80]* %STi_val.i.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast.i.i, i8* nonnull %STi_val.i.0..sroa_cast.i, i32 128, i32 16, i1 false) #2
  %83 = add i64 %6, -88
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !3
  store i64 %77, i64* %84, align 8, !mcsema_real_eip !3
  %85 = add i64 %6, -120
  %86 = xor i64 %85, %83, !mcsema_real_eip !10
  %87 = and i64 %86, 16, !mcsema_real_eip !10
  %88 = icmp ne i64 %87, 0
  %89 = trunc i64 %85 to i8, !mcsema_real_eip !10
  %90 = tail call i8 @llvm.ctpop.i8(i8 %89) #2, !mcsema_real_eip !10
  %91 = and i8 %90, 1
  %92 = icmp eq i8 %91, 0
  %93 = icmp eq i64 %85, 0
  %94 = icmp slt i64 %85, 0
  %95 = icmp ult i64 %83, 32
  %96 = and i64 %86, %83, !mcsema_real_eip !10
  %97 = icmp slt i64 %96, 0
  %98 = add i64 %6, -128
  %99 = inttoptr i64 %98 to i64*
  store i64 -4981261766360305936, i64* %99, align 8, !mcsema_real_eip !11
  store i64 %1, i64* %RAX.i, align 8, !mcsema_real_eip !11
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !11
  store i64 %3, i64* %RCX.i, align 8, !mcsema_real_eip !11
  store i64 %4, i64* %RDX.i, align 8, !mcsema_real_eip !11
  store i64 %5, i64* %RSI.i, align 8, !mcsema_real_eip !11
  store i64 0, i64* %RDI.i, align 8, !mcsema_real_eip !11
  store i64 %98, i64* %RSP.i, align 8, !mcsema_real_eip !11
  store i64 %83, i64* %RBP.i, align 8, !mcsema_real_eip !11
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !11
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !11
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !11
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !11
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !11
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !11
  store i1 %95, i1* %CF.i, align 1, !mcsema_real_eip !11
  store i1 %92, i1* %PF.i, align 1, !mcsema_real_eip !11
  store i1 %88, i1* %AF.i, align 1, !mcsema_real_eip !11
  store i1 %93, i1* %ZF.i, align 1, !mcsema_real_eip !11
  store i1 %94, i1* %SF.i, align 1, !mcsema_real_eip !11
  store i1 %97, i1* %OF.i, align 1, !mcsema_real_eip !11
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast.i.i, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !11
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !11
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !11
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !11
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !11
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !11
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !11
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !11
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !11
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !11
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !11
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !11
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !11
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !11
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !11
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !11
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !11
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !11
  store i11 %50, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !11
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !11
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !11
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !11
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !11
  store i64 %67, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !11
  store i64 %68, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !11
  %STi_val.i.0..sroa_cast.i.i.i = bitcast [8 x x86_fp80]* %STi_val.i.i.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i.i.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast.i.i.i, i8* nonnull %STi_val.i.0..sroa_cast.i.i, i32 128, i32 16, i1 false) #2
  %100 = add i64 %6, -136
  %101 = inttoptr i64 %100 to i64*
  store i64 %83, i64* %101, align 8, !mcsema_real_eip !2
  store i64 74755, i64* bitcast (%0* @data_0x448 to i64*), align 64, !mcsema_real_eip !12
  %102 = load i64, i64* %101, align 8
  store i64 %1, i64* %RAX.i, align 8, !mcsema_real_eip !13
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !13
  store i64 %3, i64* %RCX.i, align 8, !mcsema_real_eip !13
  store i64 %4, i64* %RDX.i, align 8, !mcsema_real_eip !13
  store i64 %5, i64* %RSI.i, align 8, !mcsema_real_eip !13
  store i64 0, i64* %RDI.i, align 8, !mcsema_real_eip !13
  store i64 %85, i64* %RSP.i, align 8, !mcsema_real_eip !13
  store i64 %102, i64* %RBP.i, align 8, !mcsema_real_eip !13
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !13
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !13
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !13
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !13
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !13
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !13
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !13
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !13
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !13
  store i1 %95, i1* %CF.i, align 1, !mcsema_real_eip !13
  store i1 %92, i1* %PF.i, align 1, !mcsema_real_eip !13
  store i1 %88, i1* %AF.i, align 1, !mcsema_real_eip !13
  store i1 %93, i1* %ZF.i, align 1, !mcsema_real_eip !13
  store i1 %94, i1* %SF.i, align 1, !mcsema_real_eip !13
  store i1 %97, i1* %OF.i, align 1, !mcsema_real_eip !13
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !13
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast.i.i.i, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !13
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
  store i11 %50, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !13
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !13
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !13
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !13
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !13
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !13
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !13
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !13
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !13
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !13
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !13
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !13
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !13
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !13
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !13
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !13
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !13
  store i64 %67, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !13
  store i64 %68, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !13
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i.i.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast.i.i, i8* %19, i32 128, i32 4, i1 false) #2, !mcsema_real_eip !11
  store i32 0, i32* bitcast (%2* @data_0x390 to i32*), align 64, !mcsema_real_eip !14
  store i32 0, i32* bitcast (%3* @data_0x3e8 to i32*), align 64, !mcsema_real_eip !15
  %103 = add i64 %102, -4
  %104 = inttoptr i64 %103 to i32*
  store i32 1, i32* %104, align 4
  br label %block_0x97.i.i.i

block_0x97.i.i.i:                                 ; preds = %block_0x140.i.i.i, %driverBlockRaw
  %105 = phi i1 [ false, %driverBlockRaw ], [ %165, %block_0x140.i.i.i ]
  %106 = phi i1 [ true, %driverBlockRaw ], [ %163, %block_0x140.i.i.i ]
  %107 = phi i1 [ false, %driverBlockRaw ], [ %162, %block_0x140.i.i.i ]
  %108 = phi i32 [ -500, %driverBlockRaw ], [ %161, %block_0x140.i.i.i ]
  %109 = phi i32 [ -499, %driverBlockRaw ], [ %160, %block_0x140.i.i.i ]
  %.sink311.i.i.i = phi i32 [ 1, %driverBlockRaw ], [ %158, %block_0x140.i.i.i ]
  %RAX_val.0310.i.i.i = phi i64 [ %1, %driverBlockRaw ], [ %159, %block_0x140.i.i.i ]
  %RCX_val.0308.i.i.i = phi i64 [ %3, %driverBlockRaw ], [ %156, %block_0x140.i.i.i ]
  %RDX_val.0307.i.i.i = phi i64 [ %4, %driverBlockRaw ], [ %132, %block_0x140.i.i.i ]
  %RSI_val.0306.i.i.i = phi i64 [ %5, %driverBlockRaw ], [ %133, %block_0x140.i.i.i ]
  %RDI_val.0305.i.i.i = phi i64 [ 0, %driverBlockRaw ], [ 100000, %block_0x140.i.i.i ]
  %RBP_val.0304.i.i.i = phi i64 [ %102, %driverBlockRaw ], [ %127, %block_0x140.i.i.i ]
  %110 = icmp ult i32 %.sink311.i.i.i, 500, !mcsema_real_eip !16
  %111 = trunc i32 %109 to i8, !mcsema_real_eip !16
  %112 = tail call i8 @llvm.ctpop.i8(i8 %111) #2, !mcsema_real_eip !16
  %113 = and i8 %112, 1
  %114 = icmp eq i8 %113, 0
  %115 = and i32 %108, 16
  %116 = icmp eq i32 %115, 0
  store i64 -4981261766360305936, i64* %99, align 8, !mcsema_real_eip !17
  store i64 %RAX_val.0310.i.i.i, i64* %RAX.i, align 8, !mcsema_real_eip !17
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !17
  store i64 %RCX_val.0308.i.i.i, i64* %RCX.i, align 8, !mcsema_real_eip !17
  store i64 %RDX_val.0307.i.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !17
  store i64 %RSI_val.0306.i.i.i, i64* %RSI.i, align 8, !mcsema_real_eip !17
  store i64 %RDI_val.0305.i.i.i, i64* %RDI.i, align 8, !mcsema_real_eip !17
  store i64 %98, i64* %RSP.i, align 8, !mcsema_real_eip !17
  store i64 %RBP_val.0304.i.i.i, i64* %RBP.i, align 8, !mcsema_real_eip !17
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !17
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !17
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !17
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !17
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !17
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !17
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !17
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !17
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !17
  store i1 %110, i1* %CF.i, align 1, !mcsema_real_eip !17
  store i1 %114, i1* %PF.i, align 1, !mcsema_real_eip !17
  store i1 %116, i1* %AF.i, align 1, !mcsema_real_eip !17
  store i1 %107, i1* %ZF.i, align 1, !mcsema_real_eip !17
  store i1 %106, i1* %SF.i, align 1, !mcsema_real_eip !17
  store i1 %105, i1* %OF.i, align 1, !mcsema_real_eip !17
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !17
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast.i.i, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !17
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !17
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !17
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !17
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !17
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !17
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !17
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !17
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !17
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !17
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !17
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !17
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !17
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !17
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !17
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !17
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !17
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !17
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !17
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !17
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !17
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !17
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !17
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !17
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !17
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !17
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !17
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !17
  store i11 %50, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !17
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !17
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !17
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !17
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !17
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !17
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !17
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !17
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !17
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !17
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !17
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !17
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !17
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !17
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !17
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !17
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !17
  store i64 %67, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !17
  store i64 %68, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !17
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i.i.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast.i.i.i, i8* nonnull %STi_val.i.0..sroa_cast.i.i, i32 128, i32 16, i1 false) #2
  store i64 %RBP_val.0304.i.i.i, i64* %101, align 8, !mcsema_real_eip !18
  %117 = add i64 %RAX_val.0310.i.i.i, 13849
  %118 = xor i64 %117, %RAX_val.0310.i.i.i, !mcsema_real_eip !19
  %119 = and i64 %118, 16
  %120 = icmp eq i64 %119, 0
  %121 = trunc i64 %117 to i8, !mcsema_real_eip !19
  %122 = tail call i8 @llvm.ctpop.i8(i8 %121) #2, !mcsema_real_eip !19
  %123 = and i8 %122, 1
  %124 = icmp eq i8 %123, 0
  %125 = and i64 %117, 65535
  %126 = icmp eq i64 %125, 0, !mcsema_real_eip !20
  store i64 %125, i64* bitcast (%0* @data_0x448 to i64*), align 64, !mcsema_real_eip !21
  %127 = load i64, i64* %101, align 8
  store i64 %125, i64* %RAX.i, align 8, !mcsema_real_eip !22
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !22
  store i64 %125, i64* %RCX.i, align 8, !mcsema_real_eip !22
  store i64 %RDX_val.0307.i.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !22
  store i64 %RSI_val.0306.i.i.i, i64* %RSI.i, align 8, !mcsema_real_eip !22
  store i64 %RDI_val.0305.i.i.i, i64* %RDI.i, align 8, !mcsema_real_eip !22
  store i64 %85, i64* %RSP.i, align 8, !mcsema_real_eip !22
  store i64 %127, i64* %RBP.i, align 8, !mcsema_real_eip !22
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !22
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !22
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !22
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !22
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !22
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !22
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !22
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !22
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !22
  store i1 false, i1* %CF.i, align 1, !mcsema_real_eip !22
  store i1 %124, i1* %PF.i, align 1, !mcsema_real_eip !22
  store i1 %120, i1* %AF.i, align 1, !mcsema_real_eip !22
  store i1 %126, i1* %ZF.i, align 1, !mcsema_real_eip !22
  store i1 false, i1* %SF.i, align 1, !mcsema_real_eip !22
  store i1 false, i1* %OF.i, align 1, !mcsema_real_eip !22
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !22
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast.i.i.i, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !22
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !22
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !22
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !22
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !22
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !22
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !22
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !22
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !22
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !22
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !22
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !22
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !22
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !22
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !22
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !22
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !22
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !22
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !22
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !22
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !22
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !22
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !22
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !22
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !22
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !22
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !22
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !22
  store i11 %50, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !22
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !22
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !22
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !22
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !22
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !22
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !22
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !22
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !22
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !22
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !22
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !22
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !22
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !22
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !22
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !22
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !22
  store i64 %67, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !22
  store i64 %68, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !22
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i.i.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast.i.i, i8* %19, i32 128, i32 4, i1 false) #2, !mcsema_real_eip !17
  %128 = add i64 %127, -16, !mcsema_real_eip !23
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !23
  store i64 %125, i64* %129, align 8, !mcsema_real_eip !23
  %130 = add i64 %127, -24, !mcsema_real_eip !24
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !24
  store i64 100000, i64* %131, align 8, !mcsema_real_eip !24
  %132 = urem i64 %125, 100000
  %133 = add nsw i64 %125, -50000
  %134 = add i64 %127, -4
  %135 = inttoptr i64 %134 to i32*
  %136 = load i32, i32* %135, align 4, !mcsema_real_eip !25
  %137 = sext i32 %136 to i64, !mcsema_real_eip !25
  %138 = shl nsw i64 %137, 2
  %139 = add i64 %138, ptrtoint (%1* @data_0x450 to i64), !mcsema_real_eip !26
  %140 = trunc i64 %133 to i32, !mcsema_real_eip !26
  %141 = inttoptr i64 %139 to i32*
  store i32 %140, i32* %141, align 4, !mcsema_real_eip !26
  %142 = load i32, i32* %135, align 4, !mcsema_real_eip !27
  %143 = sext i32 %142 to i64, !mcsema_real_eip !27
  %144 = shl nsw i64 %143, 2
  %145 = add i64 %144, ptrtoint (%1* @data_0x450 to i64), !mcsema_real_eip !28
  %146 = inttoptr i64 %145 to i32*
  %147 = load i32, i32* %146, align 4, !mcsema_real_eip !28
  %148 = add i32 %147, -4
  %149 = icmp eq i32 %147, 4
  %150 = icmp slt i32 %148, 0
  %151 = sub i32 3, %147
  %152 = and i32 %151, %147
  %153 = icmp slt i32 %152, 0
  %154 = xor i1 %150, %153
  %155 = or i1 %149, %154, !mcsema_real_eip !29
  %156 = zext i32 %147 to i64, !mcsema_real_eip !30
  %.not.i.i.i = xor i1 %155, true
  %brmerge.i.i.i = or i1 %154, %.not.i.i.i
  br i1 %brmerge.i.i.i, label %block_0x140.sink.split.i.i.i, label %block_0x140.i.i.i, !mcsema_real_eip !29

block_0x140.sink.split.i.i.i:                     ; preds = %block_0x97.i.i.i
  %.mux.i.i.i = select i1 %155, i32* bitcast (%3* @data_0x3e8 to i32*), i32* bitcast (%2* @data_0x390 to i32*)
  store i32 %147, i32* %.mux.i.i.i, align 64
  %.pre.i.i.i = load i32, i32* %135, align 4
  br label %block_0x140.i.i.i

block_0x140.i.i.i:                                ; preds = %block_0x140.sink.split.i.i.i, %block_0x97.i.i.i
  %157 = phi i32 [ %142, %block_0x97.i.i.i ], [ %.pre.i.i.i, %block_0x140.sink.split.i.i.i ]
  %158 = add i32 %157, 1
  %159 = zext i32 %158 to i64, !mcsema_real_eip !31
  store i32 %158, i32* %135, align 4
  %160 = add i32 %157, -499
  %161 = xor i32 %160, %158, !mcsema_real_eip !16
  %162 = icmp eq i32 %160, 0, !mcsema_real_eip !16
  %163 = icmp slt i32 %160, 0
  %164 = and i32 %161, %158, !mcsema_real_eip !16
  %165 = icmp slt i32 %164, 0
  %tmp.i.i.i = xor i1 %163, %165
  %.demorgan.i.i.i = or i1 %162, %tmp.i.i.i
  br i1 %.demorgan.i.i.i, label %block_0x97.i.i.i, label %sub_60.exit.i.i, !mcsema_real_eip !32

sub_60.exit.i.i:                                  ; preds = %block_0x140.i.i.i
  %uadd355.i.i.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %85, i64 32) #2
  %166 = extractvalue { i64, i1 } %uadd355.i.i.i, 0
  %167 = xor i64 %166, %85, !mcsema_real_eip !33
  %168 = and i64 %167, 16, !mcsema_real_eip !33
  %169 = icmp ne i64 %168, 0, !mcsema_real_eip !33
  %170 = icmp slt i64 %166, 0
  %171 = icmp eq i64 %166, 0, !mcsema_real_eip !33
  %172 = add i64 %6, 9223372036854775688
  %173 = and i64 %167, %172, !mcsema_real_eip !33
  %174 = icmp slt i64 %173, 0
  %175 = trunc i64 %166 to i8, !mcsema_real_eip !33
  %176 = tail call i8 @llvm.ctpop.i8(i8 %175) #2, !mcsema_real_eip !33
  %177 = and i8 %176, 1
  %178 = icmp eq i8 %177, 0
  %179 = extractvalue { i64, i1 } %uadd355.i.i.i, 1
  %180 = inttoptr i64 %166 to i64*, !mcsema_real_eip !34
  %181 = load i64, i64* %180, align 8
  %182 = add i64 %166, 16, !mcsema_real_eip !35
  store i64 %159, i64* %RAX.i, align 8, !mcsema_real_eip !35
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !35
  store i64 %156, i64* %RCX.i, align 8, !mcsema_real_eip !35
  store i64 %132, i64* %RDX.i, align 8, !mcsema_real_eip !35
  store i64 %133, i64* %RSI.i, align 8, !mcsema_real_eip !35
  store i64 100000, i64* %RDI.i, align 8, !mcsema_real_eip !35
  store i64 %182, i64* %RSP.i, align 8, !mcsema_real_eip !35
  store i64 %181, i64* %RBP.i, align 8, !mcsema_real_eip !35
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !35
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !35
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !35
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !35
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !35
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !35
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !35
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !35
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !35
  store i1 %179, i1* %CF.i, align 1, !mcsema_real_eip !35
  store i1 %178, i1* %PF.i, align 1, !mcsema_real_eip !35
  store i1 %169, i1* %AF.i, align 1, !mcsema_real_eip !35
  store i1 %171, i1* %ZF.i, align 1, !mcsema_real_eip !35
  store i1 %170, i1* %SF.i, align 1, !mcsema_real_eip !35
  store i1 %174, i1* %OF.i, align 1, !mcsema_real_eip !35
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !35
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %19, i8* nonnull %STi_val.i.0..sroa_cast.i.i, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !35
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !35
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !35
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !35
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !35
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !35
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !35
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !35
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !35
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !35
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !35
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !35
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !35
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !35
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !35
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !35
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !35
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !35
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !35
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !35
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !35
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !35
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !35
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !35
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !35
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !35
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !35
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !35
  store i11 %50, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !35
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !35
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !35
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !35
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !35
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !35
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !35
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !35
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !35
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !35
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !35
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !35
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !35
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !35
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !35
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !35
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !35
  store i64 %67, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !35
  store i64 %68, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !35
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast.i, i8* nonnull %19, i32 128, i32 4, i1 false) #2, !mcsema_real_eip !9
  %183 = add i64 %181, -8, !mcsema_real_eip !36
  %184 = inttoptr i64 %183 to i32*
  %185 = add i64 %181, -12
  %186 = inttoptr i64 %185 to i32*
  br label %block_0x17b.i.i, !mcsema_real_eip !37

block_0x17b.i.i.loopexit:                         ; preds = %block_0x1fd.i.i
  br label %block_0x17b.i.i

block_0x17b.i.i:                                  ; preds = %block_0x17b.i.i.loopexit, %sub_60.exit.i.i
  %storemerge.i.i = phi i32 [ 500, %sub_60.exit.i.i ], [ 3, %block_0x17b.i.i.loopexit ]
  store i32 %storemerge.i.i, i32* bitcast (%4* @data_0x460 to i32*), align 64
  store i32 1, i32* %184, align 4
  br label %block_0x1a0.i.i

block_0x1a0.i.i:                                  ; preds = %block_0x1fd.i.i, %block_0x17b.i.i
  %storemerge116124.i.i = phi i32 [ 1, %block_0x17b.i.i ], [ %226, %block_0x1fd.i.i ]
  %187 = sext i32 %storemerge116124.i.i to i64, !mcsema_real_eip !38
  %188 = shl nsw i64 %187, 2
  %189 = add i64 %188, ptrtoint (%1* @data_0x450 to i64), !mcsema_real_eip !39
  %190 = inttoptr i64 %189 to i32*
  %191 = load i32, i32* %190, align 4, !mcsema_real_eip !39
  %192 = add i32 %storemerge116124.i.i, 1
  %193 = sext i32 %192 to i64, !mcsema_real_eip !40
  %194 = shl nsw i64 %193, 2
  %195 = add i64 %194, ptrtoint (%1* @data_0x450 to i64), !mcsema_real_eip !41
  %196 = inttoptr i64 %195 to i32*
  %197 = load i32, i32* %196, align 4, !mcsema_real_eip !41
  %198 = sub i32 %191, %197, !mcsema_real_eip !41
  %199 = xor i32 %198, %191, !mcsema_real_eip !41
  %200 = icmp eq i32 %191, %197
  %201 = icmp slt i32 %198, 0
  %202 = xor i32 %197, %191, !mcsema_real_eip !41
  %203 = and i32 %199, %202, !mcsema_real_eip !41
  %204 = icmp slt i32 %203, 0
  %205 = xor i1 %201, %204
  %206 = or i1 %200, %205, !mcsema_real_eip !42
  br i1 %206, label %block_0x1fd.i.i, label %block_0x1c1.i.i, !mcsema_real_eip !42

block_0x1c1.i.i:                                  ; preds = %block_0x1a0.i.i
  store i32 %191, i32* %186, align 4, !mcsema_real_eip !43
  %207 = load i32, i32* %184, align 4, !mcsema_real_eip !44
  %208 = add i32 %207, 1
  %209 = sext i32 %208 to i64, !mcsema_real_eip !45
  %210 = shl nsw i64 %209, 2
  %211 = add i64 %210, ptrtoint (%1* @data_0x450 to i64), !mcsema_real_eip !46
  %212 = inttoptr i64 %211 to i32*
  %213 = load i32, i32* %212, align 4, !mcsema_real_eip !46
  %214 = sext i32 %207 to i64, !mcsema_real_eip !47
  %215 = shl nsw i64 %214, 2
  %216 = add i64 %215, ptrtoint (%1* @data_0x450 to i64), !mcsema_real_eip !48
  %217 = inttoptr i64 %216 to i32*
  store i32 %213, i32* %217, align 4, !mcsema_real_eip !48
  %218 = load i32, i32* %186, align 4, !mcsema_real_eip !49
  %219 = load i32, i32* %184, align 4, !mcsema_real_eip !50
  %220 = add i32 %219, 1
  %221 = sext i32 %220 to i64, !mcsema_real_eip !51
  %222 = shl nsw i64 %221, 2
  %223 = add i64 %222, ptrtoint (%1* @data_0x450 to i64), !mcsema_real_eip !52
  %224 = inttoptr i64 %223 to i32*
  store i32 %218, i32* %224, align 4, !mcsema_real_eip !52
  %.pre.i.i = load i32, i32* %184, align 4
  br label %block_0x1fd.i.i

block_0x1fd.i.i:                                  ; preds = %block_0x1c1.i.i, %block_0x1a0.i.i
  %225 = phi i32 [ %.pre.i.i, %block_0x1c1.i.i ], [ %storemerge116124.i.i, %block_0x1a0.i.i ]
  %226 = add i32 %225, 1
  store i32 %226, i32* %184, align 4
  %227 = add i32 %225, -3
  %228 = icmp slt i32 %227, 0
  %229 = sub i32 2, %225
  %230 = and i32 %229, %226
  %231 = icmp slt i32 %230, 0
  %tmp.i.i = xor i1 %228, %231
  br i1 %tmp.i.i, label %block_0x1a0.i.i, label %block_0x17b.i.i.loopexit, !mcsema_real_eip !53
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
!3 = !{i64 96}
!4 = !{i64 352}
!5 = !{i64 656}
!6 = !{i64 664}
!7 = !{i64 691}
!8 = !{i64 360}
!9 = !{i64 363}
!10 = !{i64 100}
!11 = !{i64 104}
!12 = !{i64 4}
!13 = !{i64 17}
!14 = !{i64 109}
!15 = !{i64 120}
!16 = !{i64 138}
!17 = !{i64 151}
!18 = !{i64 32}
!19 = !{i64 48}
!20 = !{i64 54}
!21 = !{i64 60}
!22 = !{i64 81}
!23 = !{i64 166}
!24 = !{i64 178}
!25 = !{i64 210}
!26 = !{i64 214}
!27 = !{i64 221}
!28 = !{i64 225}
!29 = !{i64 239}
!30 = !{i64 272}
!31 = !{i64 323}
!32 = !{i64 145}
!33 = !{i64 334}
!34 = !{i64 338}
!35 = !{i64 339}
!36 = !{i64 393}
!37 = !{i64 379}
!38 = !{i64 416}
!39 = !{i64 420}
!40 = !{i64 433}
!41 = !{i64 436}
!42 = !{i64 443}
!43 = !{i64 460}
!44 = !{i64 463}
!45 = !{i64 469}
!46 = !{i64 472}
!47 = !{i64 479}
!48 = !{i64 483}
!49 = !{i64 490}
!50 = !{i64 493}
!51 = !{i64 499}
!52 = !{i64 502}
!53 = !{i64 410}
