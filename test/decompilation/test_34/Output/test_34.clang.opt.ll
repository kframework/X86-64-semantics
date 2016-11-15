; ModuleID = 'Output/test_34.clang.opt.bc'
source_filename = "Output/test_34.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type <{ [48 x i8] }>
%1 = type <{ [94704 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x400900 = internal constant %0 <{ [48 x i8] c"\01\00\02\00%d\0A\00\00\00\00\00\00\00\00\00Error3 in Bubble.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 64
@data_0x601050 = internal global %1 zeroinitializer, align 64

declare x86_64_sysvcc i64 @puts(i64 inreg) local_unnamed_addr

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr

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
  %17 = load i1, i1* %AF.i, align 1, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !3
  %18 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !3
  %19 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !3
  %20 = bitcast x86_fp80* %19 to i8*, !mcsema_real_eip !3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %20, i32 128, i32 4, i1 false), !mcsema_real_eip !3
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
  %70 = add i64 %6, -8
  %71 = inttoptr i64 %70 to i64*
  store i64 %2, i64* %71, align 8, !mcsema_real_eip !3
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  %72 = add i64 %6, -16
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !4
  %74 = add i64 %6, -24
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !2
  %76 = add i64 %6, -32
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !5
  %78 = add i64 %6, -40
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !6
  %80 = inttoptr i64 %6 to i64*
  %81 = add i64 %6, 8
  %82 = inttoptr i64 %81 to i64*
  %83 = add i64 %6, 16
  %84 = inttoptr i64 %83 to i64*
  %85 = add i64 %6, 24
  %86 = inttoptr i64 %85 to i64*
  %87 = add i64 %6, 32
  %88 = inttoptr i64 %87 to i64*
  %89 = add i64 %6, 40
  %90 = inttoptr i64 %89 to i64*
  %91 = add i64 %6, 48
  %92 = inttoptr i64 %91 to i64*
  %93 = add i64 %6, 56
  %94 = inttoptr i64 %93 to i64*
  %95 = add i64 %6, 64
  %96 = inttoptr i64 %95 to i64*
  br label %block_0x400860.i, !mcsema_real_eip !7

block_0x400860.i:                                 ; preds = %sub_400710.exit.i, %driverBlockRaw
  %OF_val.0.i = phi i1 [ false, %driverBlockRaw ], [ %202, %sub_400710.exit.i ]
  %SF_val.0.i = phi i1 [ false, %driverBlockRaw ], [ %199, %sub_400710.exit.i ]
  %CF_val.0.i = phi i1 [ false, %driverBlockRaw ], [ %200, %sub_400710.exit.i ]
  %AF_val.0.i = phi i1 [ %17, %driverBlockRaw ], [ %193, %sub_400710.exit.i ]
  %PF_val.0.i = phi i1 [ true, %driverBlockRaw ], [ %197, %sub_400710.exit.i ]
  %ZF_val.0.i = phi i1 [ true, %driverBlockRaw ], [ false, %sub_400710.exit.i ]
  %R14_val.0.i = phi i64 [ %14, %driverBlockRaw ], [ %174, %sub_400710.exit.i ]
  %R8_val.0.i = phi i64 [ %8, %driverBlockRaw ], [ %R8_val.1.i.i, %sub_400710.exit.i ]
  %RBP_val.0.i = phi i64 [ %7, %driverBlockRaw ], [ %175, %sub_400710.exit.i ]
  %RSI_val.0.i = phi i64 [ %5, %driverBlockRaw ], [ %172, %sub_400710.exit.i ]
  %RDX_val.0.i = phi i64 [ %4, %driverBlockRaw ], [ %146, %sub_400710.exit.i ]
  %RCX_val.0.i = phi i64 [ %3, %driverBlockRaw ], [ %RCX_val.1.i.i, %sub_400710.exit.i ]
  %RBX_val.0.i = phi i64 [ 0, %driverBlockRaw ], [ %189, %sub_400710.exit.i ]
  %RAX_val.0.i = phi i64 [ %1, %driverBlockRaw ], [ %186, %sub_400710.exit.i ]
  store i64 -4981261766360305936, i64* %73, align 8, !mcsema_real_eip !4
  store i64 %RAX_val.0.i, i64* %RAX.i, align 8, !mcsema_real_eip !4
  store i64 %RBX_val.0.i, i64* %RBX.i, align 8, !mcsema_real_eip !4
  store i64 %RCX_val.0.i, i64* %RCX.i, align 8, !mcsema_real_eip !4
  store i64 %RDX_val.0.i, i64* %RDX.i, align 8, !mcsema_real_eip !4
  store i64 %RSI_val.0.i, i64* %RSI.i, align 8, !mcsema_real_eip !4
  store i64 %RBX_val.0.i, i64* %RDI.i, align 8, !mcsema_real_eip !4
  store i64 %72, i64* %RSP.i, align 8, !mcsema_real_eip !4
  store i64 %RBP_val.0.i, i64* %RBP.i, align 8, !mcsema_real_eip !4
  store i64 %R8_val.0.i, i64* %R8.i, align 8, !mcsema_real_eip !4
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !4
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !4
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !4
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !4
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !4
  store i64 %R14_val.0.i, i64* %R14.i, align 8, !mcsema_real_eip !4
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !4
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !4
  store i1 %CF_val.0.i, i1* %CF.i, align 1, !mcsema_real_eip !4
  store i1 %PF_val.0.i, i1* %PF.i, align 1, !mcsema_real_eip !4
  store i1 %AF_val.0.i, i1* %AF.i, align 1, !mcsema_real_eip !4
  store i1 %ZF_val.0.i, i1* %ZF.i, align 1, !mcsema_real_eip !4
  store i1 %SF_val.0.i, i1* %SF.i, align 1, !mcsema_real_eip !4
  store i1 %OF_val.0.i, i1* %OF.i, align 1, !mcsema_real_eip !4
  store i1 %18, i1* %DF.i, align 1, !mcsema_real_eip !4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !4
  store i1 %21, i1* %FPU_B.i, align 1, !mcsema_real_eip !4
  store i1 %22, i1* %FPU_C3.i, align 1, !mcsema_real_eip !4
  store i3 %23, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !4
  store i1 %24, i1* %FPU_C2.i, align 1, !mcsema_real_eip !4
  store i1 %25, i1* %FPU_C1.i, align 1, !mcsema_real_eip !4
  store i1 %26, i1* %FPU_C0.i, align 1, !mcsema_real_eip !4
  store i1 %27, i1* %FPU_ES.i, align 1, !mcsema_real_eip !4
  store i1 %28, i1* %FPU_SF.i, align 1, !mcsema_real_eip !4
  store i1 %29, i1* %FPU_PE.i, align 1, !mcsema_real_eip !4
  store i1 %30, i1* %FPU_UE.i, align 1, !mcsema_real_eip !4
  store i1 %31, i1* %FPU_OE.i, align 1, !mcsema_real_eip !4
  store i1 %32, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !4
  store i1 %33, i1* %FPU_DE.i, align 1, !mcsema_real_eip !4
  store i1 %34, i1* %FPU_IE.i, align 1, !mcsema_real_eip !4
  store i1 %35, i1* %FPU_X.i, align 1, !mcsema_real_eip !4
  store i2 %36, i2* %FPU_RC.i, align 1, !mcsema_real_eip !4
  store i2 %37, i2* %FPU_PC.i, align 1, !mcsema_real_eip !4
  store i1 %38, i1* %FPU_PM.i, align 1, !mcsema_real_eip !4
  store i1 %39, i1* %FPU_UM.i, align 1, !mcsema_real_eip !4
  store i1 %40, i1* %FPU_OM.i, align 1, !mcsema_real_eip !4
  store i1 %41, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !4
  store i1 %42, i1* %FPU_DM.i, align 1, !mcsema_real_eip !4
  store i1 %43, i1* %FPU_IM.i, align 1, !mcsema_real_eip !4
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !4
  store i64 %48, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !4
  store i16 %49, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !4
  store i64 %50, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !4
  store i11 %51, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !4
  store i128 %52, i128* %XMM0.i, align 1, !mcsema_real_eip !4
  store i128 %53, i128* %XMM1.i, align 1, !mcsema_real_eip !4
  store i128 %54, i128* %XMM2.i, align 1, !mcsema_real_eip !4
  store i128 %55, i128* %XMM3.i, align 1, !mcsema_real_eip !4
  store i128 %56, i128* %XMM4.i, align 1, !mcsema_real_eip !4
  store i128 %57, i128* %XMM5.i, align 1, !mcsema_real_eip !4
  store i128 %58, i128* %XMM6.i, align 1, !mcsema_real_eip !4
  store i128 %59, i128* %XMM7.i, align 1, !mcsema_real_eip !4
  store i128 %60, i128* %XMM8.i, align 1, !mcsema_real_eip !4
  store i128 %61, i128* %XMM9.i, align 1, !mcsema_real_eip !4
  store i128 %62, i128* %XMM10.i, align 1, !mcsema_real_eip !4
  store i128 %63, i128* %XMM11.i, align 1, !mcsema_real_eip !4
  store i128 %64, i128* %XMM12.i, align 1, !mcsema_real_eip !4
  store i128 %65, i128* %XMM13.i, align 1, !mcsema_real_eip !4
  store i128 %66, i128* %XMM14.i, align 1, !mcsema_real_eip !4
  store i128 %67, i128* %XMM15.i, align 1, !mcsema_real_eip !4
  store i64 %68, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !4
  store i64 %69, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !4
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast.i, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false)
  store i64 %RBP_val.0.i, i64* %75, align 8, !mcsema_real_eip !2
  store i64 %R14_val.0.i, i64* %77, align 8, !mcsema_real_eip !5
  store i64 %RBX_val.0.i, i64* %79, align 8, !mcsema_real_eip !6
  store i64 74755, i64* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 58896) to i64*), align 16, !mcsema_real_eip !8
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 58892) to i32*), align 4, !mcsema_real_eip !9
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 17588) to i32*), align 4, !mcsema_real_eip !10
  br label %block_0x400760.i.i, !mcsema_real_eip !11

block_0x400760.i.i:                               ; preds = %block_0x4007ae.i.i, %block_0x400860.i
  %R8_val.0.i.i = phi i64 [ 0, %block_0x400860.i ], [ %R8_val.1.i.i, %block_0x4007ae.i.i ]
  %RBP_val.0.i.i = phi i32 [ 74755, %block_0x400860.i ], [ %99, %block_0x4007ae.i.i ]
  %RDI_val.0.i.i = phi i64 [ -2000, %block_0x400860.i ], [ %122, %block_0x4007ae.i.i ]
  %RSI_val.0.i.i = phi i64 [ 0, %block_0x400860.i ], [ %RSI_val.1.i.i, %block_0x4007ae.i.i ]
  %97 = mul nuw nsw i32 %RBP_val.0.i.i, 1309, !mcsema_real_eip !11
  %98 = add nuw nsw i32 %97, 13849
  %99 = and i32 %98, 65535
  %100 = add nsw i32 %99, -50000
  %101 = zext i32 %100 to i64, !mcsema_real_eip !12
  %102 = trunc i64 %RSI_val.0.i.i to i32, !mcsema_real_eip !13
  %103 = sub i32 %100, %102, !mcsema_real_eip !13
  %104 = xor i32 %103, %100, !mcsema_real_eip !13
  %105 = icmp eq i32 %100, %102
  %106 = icmp slt i32 %103, 0
  %107 = xor i32 %100, %102, !mcsema_real_eip !13
  %108 = and i32 %104, %107, !mcsema_real_eip !13
  %109 = icmp slt i32 %108, 0
  %110 = add i64 %RDI_val.0.i.i, add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 69732), !mcsema_real_eip !14
  %111 = inttoptr i64 %110 to i32*
  store i32 %100, i32* %111, align 4, !mcsema_real_eip !14
  %112 = xor i1 %106, %109
  %113 = or i1 %105, %112, !mcsema_real_eip !15
  br i1 %113, label %block_0x4007a0.i.i, label %block_0x4007ae.sink.split.i.i, !mcsema_real_eip !15

block_0x4007a0.i.i:                               ; preds = %block_0x400760.i.i
  %114 = trunc i64 %R8_val.0.i.i to i32, !mcsema_real_eip !16
  %115 = sub i32 %100, %114, !mcsema_real_eip !16
  %116 = xor i32 %115, %100, !mcsema_real_eip !16
  %117 = icmp slt i32 %115, 0
  %118 = xor i64 %101, %R8_val.0.i.i
  %119 = trunc i64 %118 to i32
  %120 = and i32 %119, %116, !mcsema_real_eip !16
  %121 = icmp slt i32 %120, 0
  %tmp78.i.i = xor i1 %117, %121
  br i1 %tmp78.i.i, label %block_0x4007ae.sink.split.i.i, label %block_0x4007ae.i.i, !mcsema_real_eip !17

block_0x4007ae.sink.split.i.i:                    ; preds = %block_0x4007a0.i.i, %block_0x400760.i.i
  %.sink.i.i = phi i32* [ inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 17588) to i32*), %block_0x4007a0.i.i ], [ inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 58892) to i32*), %block_0x400760.i.i ]
  %R8_val.1.ph.i.i = phi i64 [ %101, %block_0x4007a0.i.i ], [ %R8_val.0.i.i, %block_0x400760.i.i ]
  %RSI_val.1.ph.i.i = phi i64 [ %RSI_val.0.i.i, %block_0x4007a0.i.i ], [ %101, %block_0x400760.i.i ]
  store i32 %100, i32* %.sink.i.i, align 4
  br label %block_0x4007ae.i.i

block_0x4007ae.i.i:                               ; preds = %block_0x4007ae.sink.split.i.i, %block_0x4007a0.i.i
  %R8_val.1.i.i = phi i64 [ %R8_val.0.i.i, %block_0x4007a0.i.i ], [ %R8_val.1.ph.i.i, %block_0x4007ae.sink.split.i.i ]
  %RSI_val.1.i.i = phi i64 [ %RSI_val.0.i.i, %block_0x4007a0.i.i ], [ %RSI_val.1.ph.i.i, %block_0x4007ae.sink.split.i.i ]
  %122 = add nsw i64 %RDI_val.0.i.i, 4
  %123 = icmp eq i64 %122, 0, !mcsema_real_eip !18
  br i1 %123, label %block_0x4007b4.i.i, label %block_0x400760.i.i, !mcsema_real_eip !19

block_0x4007b4.i.i:                               ; preds = %block_0x4007ae.i.i
  %124 = zext i32 %99 to i64, !mcsema_real_eip !20
  store i64 %124, i64* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 58896) to i64*), align 16, !mcsema_real_eip !21
  store i32 500, i32* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 44224) to i32*), align 64, !mcsema_real_eip !22
  br label %block_0x4007d0.i.i, !mcsema_real_eip !23

block_0x4007d0.i.i:                               ; preds = %block_0x4007fa.i.i, %block_0x4007b4.i.i
  %RBP_val.1.i.i = phi i64 [ 499, %block_0x4007b4.i.i ], [ %149, %block_0x4007fa.i.i ]
  %RAX_val.0.i.i = phi i32 [ 500, %block_0x4007b4.i.i ], [ %147, %block_0x4007fa.i.i ]
  %125 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 67732) to i32*), align 4, !mcsema_real_eip !23
  %126 = zext i32 %125 to i64, !mcsema_real_eip !23
  br label %block_0x4007e0.i.i, !mcsema_real_eip !24

block_0x4007e0.i.i:                               ; preds = %block_0x4007f2.i.i, %block_0x4007d0.i.i
  %RDX_val.0.i.i = phi i64 [ %RBP_val.1.i.i, %block_0x4007d0.i.i ], [ %146, %block_0x4007f2.i.i ]
  %RCX_val.0.i.i = phi i64 [ %126, %block_0x4007d0.i.i ], [ %RCX_val.1.i.i, %block_0x4007f2.i.i ]
  %RBX_val.0.i.i = phi i64 [ zext (i32 add (i32 ptrtoint (%1* @data_0x601050 to i32), i32 67736) to i64), %block_0x4007d0.i.i ], [ %142, %block_0x4007f2.i.i ]
  %127 = inttoptr i64 %RBX_val.0.i.i to i32*
  %128 = load i32, i32* %127, align 4, !mcsema_real_eip !24
  %129 = trunc i64 %RCX_val.0.i.i to i32, !mcsema_real_eip !25
  %130 = sub i32 %129, %128, !mcsema_real_eip !25
  %131 = xor i32 %130, %129, !mcsema_real_eip !25
  %132 = icmp eq i32 %129, %128
  %133 = icmp slt i32 %130, 0
  %134 = xor i32 %128, %129, !mcsema_real_eip !25
  %135 = and i32 %131, %134, !mcsema_real_eip !25
  %136 = icmp slt i32 %135, 0
  %137 = xor i1 %133, %136
  %138 = or i1 %132, %137, !mcsema_real_eip !26
  br i1 %138, label %block_0x4007f0.i.i, label %block_0x4007e6.i.i, !mcsema_real_eip !26

block_0x4007e6.i.i:                               ; preds = %block_0x4007e0.i.i
  %139 = add i64 %RBX_val.0.i.i, -4, !mcsema_real_eip !27
  %140 = inttoptr i64 %139 to i32*
  store i32 %128, i32* %140, align 4, !mcsema_real_eip !27
  store i32 %129, i32* %127, align 4, !mcsema_real_eip !28
  br label %block_0x4007f2.i.i, !mcsema_real_eip !29

block_0x4007f0.i.i:                               ; preds = %block_0x4007e0.i.i
  %141 = zext i32 %128 to i64, !mcsema_real_eip !24
  br label %block_0x4007f2.i.i, !mcsema_real_eip !27

block_0x4007f2.i.i:                               ; preds = %block_0x4007f0.i.i, %block_0x4007e6.i.i
  %RCX_val.1.i.i = phi i64 [ %141, %block_0x4007f0.i.i ], [ %RCX_val.0.i.i, %block_0x4007e6.i.i ]
  %142 = add i64 %RBX_val.0.i.i, 4
  %143 = trunc i64 %RDX_val.0.i.i to i32, !mcsema_real_eip !30
  %144 = add i32 %143, -1
  %145 = icmp eq i32 %144, 0, !mcsema_real_eip !30
  %146 = zext i32 %144 to i64
  br i1 %145, label %block_0x4007fa.i.i, label %block_0x4007e0.i.i, !mcsema_real_eip !31

block_0x4007fa.i.i:                               ; preds = %block_0x4007f2.i.i
  %147 = add nsw i32 %RAX_val.0.i.i, -1
  %148 = add nuw nsw i64 %RBP_val.1.i.i, 4294967295
  %149 = and i64 %148, 4294967295
  %150 = icmp eq i32 %RAX_val.0.i.i, 2
  %151 = sub nsw i32 1, %RAX_val.0.i.i
  %152 = and i32 %147, %151
  %153 = icmp slt i32 %152, 0
  %.demorgan.i.i = or i1 %150, %153
  br i1 %.demorgan.i.i, label %block_0x400803.i.i, label %block_0x4007d0.i.i, !mcsema_real_eip !32

block_0x400803.i.i:                               ; preds = %block_0x4007fa.i.i
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 44224) to i32*), align 64, !mcsema_real_eip !33
  %154 = trunc i64 %R8_val.1.i.i to i32, !mcsema_real_eip !34
  %155 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 67732) to i32*), align 4, !mcsema_real_eip !34
  %156 = icmp eq i32 %155, %154
  br i1 %156, label %block_0x400816.i.i, label %block_0x40081e.i.i, !mcsema_real_eip !35

block_0x400816.i.i:                               ; preds = %block_0x400803.i.i
  %157 = trunc i64 %RSI_val.1.i.i to i32, !mcsema_real_eip !36
  %158 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 69728) to i32*), align 32, !mcsema_real_eip !36
  %159 = icmp eq i32 %158, %157
  br i1 %159, label %sub_400710.exit.i, label %block_0x40081e.i.i, !mcsema_real_eip !37

block_0x40081e.i.i:                               ; preds = %block_0x400816.i.i, %block_0x400803.i.i
  %160 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x400900 to i32), i32 16) to i64)), !mcsema_real_eip !38
  br label %sub_400710.exit.i, !mcsema_real_eip !36

sub_400710.exit.i:                                ; preds = %block_0x40081e.i.i, %block_0x400816.i.i
  %161 = trunc i64 %RBX_val.0.i to i32, !mcsema_real_eip !39
  %162 = add i32 %161, 1, !mcsema_real_eip !39
  %163 = zext i32 %162 to i64, !mcsema_real_eip !39
  %164 = xor i64 %163, %RBX_val.0.i, !mcsema_real_eip !39
  %165 = and i64 %164, 16, !mcsema_real_eip !39
  %166 = icmp ne i64 %165, 0, !mcsema_real_eip !39
  %167 = sext i32 %162 to i64, !mcsema_real_eip !40
  %168 = shl nsw i64 %167, 2
  %169 = add i64 %168, add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 67728), !mcsema_real_eip !41
  %170 = inttoptr i64 %169 to i32*
  %171 = load i32, i32* %170, align 4, !mcsema_real_eip !41
  %172 = zext i32 %171 to i64
  %173 = load i64, i64* %79, align 8
  %174 = load i64, i64* %77, align 8
  %175 = load i64, i64* %75, align 8
  %176 = load i64, i64* %71, align 8, !mcsema_real_eip !42
  %177 = load i64, i64* %80, align 8, !mcsema_real_eip !42
  %178 = load i64, i64* %82, align 8, !mcsema_real_eip !42
  %179 = load i64, i64* %84, align 8, !mcsema_real_eip !42
  %180 = load i64, i64* %86, align 8, !mcsema_real_eip !42
  %181 = load i64, i64* %88, align 8, !mcsema_real_eip !42
  %182 = load i64, i64* %90, align 8, !mcsema_real_eip !42
  %183 = load i64, i64* %92, align 8, !mcsema_real_eip !42
  %184 = load i64, i64* %94, align 8, !mcsema_real_eip !42
  %185 = load i64, i64* %96, align 8, !mcsema_real_eip !42
  %186 = tail call x86_64_sysvcc i64 @printf(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x400900 to i32), i32 4) to i64), i64 %172, i64 %146, i64 %RCX_val.1.i.i, i64 %R8_val.1.i.i, i64 %9, i64 %176, i64 %177, i64 %178, i64 %179, i64 %180, i64 %181, i64 %182, i64 %183, i64 %184, i64 %185)
  store i64 %186, i64* %RAX.i, align 8, !mcsema_real_eip !42
  store i64 %173, i64* %RBX.i, align 8, !mcsema_real_eip !42
  store i64 %RCX_val.1.i.i, i64* %RCX.i, align 8, !mcsema_real_eip !42
  store i64 %146, i64* %RDX.i, align 8, !mcsema_real_eip !42
  store i64 %172, i64* %RSI.i, align 8, !mcsema_real_eip !42
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x400900 to i32), i32 4) to i64), i64* %RDI.i, align 8, !mcsema_real_eip !42
  store i64 %70, i64* %RSP.i, align 8, !mcsema_real_eip !42
  store i64 %175, i64* %RBP.i, align 8, !mcsema_real_eip !42
  store i64 %R8_val.1.i.i, i64* %R8.i, align 8, !mcsema_real_eip !42
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !42
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !42
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !42
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !42
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !42
  store i64 %174, i64* %R14.i, align 8, !mcsema_real_eip !42
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !42
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !42
  store i1 false, i1* %CF.i, align 1, !mcsema_real_eip !42
  store i1 true, i1* %PF.i, align 1, !mcsema_real_eip !42
  store i1 %166, i1* %AF.i, align 1, !mcsema_real_eip !42
  store i1 true, i1* %ZF.i, align 1, !mcsema_real_eip !42
  store i1 false, i1* %SF.i, align 1, !mcsema_real_eip !42
  store i1 false, i1* %OF.i, align 1, !mcsema_real_eip !42
  store i1 %18, i1* %DF.i, align 1, !mcsema_real_eip !42
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* nonnull %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false), !mcsema_real_eip !42
  store i1 %21, i1* %FPU_B.i, align 1, !mcsema_real_eip !42
  store i1 %22, i1* %FPU_C3.i, align 1, !mcsema_real_eip !42
  store i3 %23, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !42
  store i1 %24, i1* %FPU_C2.i, align 1, !mcsema_real_eip !42
  store i1 %25, i1* %FPU_C1.i, align 1, !mcsema_real_eip !42
  store i1 %26, i1* %FPU_C0.i, align 1, !mcsema_real_eip !42
  store i1 %27, i1* %FPU_ES.i, align 1, !mcsema_real_eip !42
  store i1 %28, i1* %FPU_SF.i, align 1, !mcsema_real_eip !42
  store i1 %29, i1* %FPU_PE.i, align 1, !mcsema_real_eip !42
  store i1 %30, i1* %FPU_UE.i, align 1, !mcsema_real_eip !42
  store i1 %31, i1* %FPU_OE.i, align 1, !mcsema_real_eip !42
  store i1 %32, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !42
  store i1 %33, i1* %FPU_DE.i, align 1, !mcsema_real_eip !42
  store i1 %34, i1* %FPU_IE.i, align 1, !mcsema_real_eip !42
  store i1 %35, i1* %FPU_X.i, align 1, !mcsema_real_eip !42
  store i2 %36, i2* %FPU_RC.i, align 1, !mcsema_real_eip !42
  store i2 %37, i2* %FPU_PC.i, align 1, !mcsema_real_eip !42
  store i1 %38, i1* %FPU_PM.i, align 1, !mcsema_real_eip !42
  store i1 %39, i1* %FPU_UM.i, align 1, !mcsema_real_eip !42
  store i1 %40, i1* %FPU_OM.i, align 1, !mcsema_real_eip !42
  store i1 %41, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !42
  store i1 %42, i1* %FPU_DM.i, align 1, !mcsema_real_eip !42
  store i1 %43, i1* %FPU_IM.i, align 1, !mcsema_real_eip !42
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !42
  store i64 %48, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !42
  store i16 %49, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !42
  store i64 %50, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !42
  store i11 %51, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !42
  store i128 %52, i128* %XMM0.i, align 1, !mcsema_real_eip !42
  store i128 %53, i128* %XMM1.i, align 1, !mcsema_real_eip !42
  store i128 %54, i128* %XMM2.i, align 1, !mcsema_real_eip !42
  store i128 %55, i128* %XMM3.i, align 1, !mcsema_real_eip !42
  store i128 %56, i128* %XMM4.i, align 1, !mcsema_real_eip !42
  store i128 %57, i128* %XMM5.i, align 1, !mcsema_real_eip !42
  store i128 %58, i128* %XMM6.i, align 1, !mcsema_real_eip !42
  store i128 %59, i128* %XMM7.i, align 1, !mcsema_real_eip !42
  store i128 %60, i128* %XMM8.i, align 1, !mcsema_real_eip !42
  store i128 %61, i128* %XMM9.i, align 1, !mcsema_real_eip !42
  store i128 %62, i128* %XMM10.i, align 1, !mcsema_real_eip !42
  store i128 %63, i128* %XMM11.i, align 1, !mcsema_real_eip !42
  store i128 %64, i128* %XMM12.i, align 1, !mcsema_real_eip !42
  store i128 %65, i128* %XMM13.i, align 1, !mcsema_real_eip !42
  store i128 %66, i128* %XMM14.i, align 1, !mcsema_real_eip !42
  store i128 %67, i128* %XMM15.i, align 1, !mcsema_real_eip !42
  store i64 %68, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !42
  store i64 %69, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !42
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %20, i32 128, i32 4, i1 false), !mcsema_real_eip !4
  %187 = trunc i64 %173 to i32, !mcsema_real_eip !43
  %188 = add i32 %187, 1, !mcsema_real_eip !43
  %189 = zext i32 %188 to i64, !mcsema_real_eip !43
  %190 = add i32 %187, -99
  %191 = xor i32 %190, %188, !mcsema_real_eip !44
  %192 = and i32 %191, 16, !mcsema_real_eip !44
  %193 = icmp ne i32 %192, 0, !mcsema_real_eip !44
  %194 = trunc i32 %190 to i8, !mcsema_real_eip !44
  %195 = tail call i8 @llvm.ctpop.i8(i8 %194), !mcsema_real_eip !44
  %196 = and i8 %195, 1
  %197 = icmp eq i8 %196, 0
  %198 = icmp eq i32 %190, 0, !mcsema_real_eip !44
  %199 = icmp slt i32 %190, 0
  %200 = icmp ult i32 %188, 100, !mcsema_real_eip !44
  %201 = and i32 %191, %188, !mcsema_real_eip !44
  %202 = icmp slt i32 %201, 0
  br i1 %198, label %sub_400850.exit, label %block_0x400860.i, !mcsema_real_eip !45

sub_400850.exit:                                  ; preds = %sub_400710.exit.i
  %203 = load i64, i64* %71, align 8, !mcsema_real_eip !46
  store i64 0, i64* %RAX.i, align 8, !mcsema_real_eip !47
  store i64 %203, i64* %RBX.i, align 8, !mcsema_real_eip !47
  store i64 %RCX_val.1.i.i, i64* %RCX.i, align 8, !mcsema_real_eip !47
  store i64 %146, i64* %RDX.i, align 8, !mcsema_real_eip !47
  store i64 %172, i64* %RSI.i, align 8, !mcsema_real_eip !47
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x400900 to i32), i32 4) to i64), i64* %RDI.i, align 8, !mcsema_real_eip !47
  store i64 %81, i64* %RSP.i, align 8, !mcsema_real_eip !47
  store i64 %175, i64* %RBP.i, align 8, !mcsema_real_eip !47
  store i64 %R8_val.1.i.i, i64* %R8.i, align 8, !mcsema_real_eip !47
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !47
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !47
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !47
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !47
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !47
  store i64 %174, i64* %R14.i, align 8, !mcsema_real_eip !47
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !47
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !47
  store i1 false, i1* %CF.i, align 1, !mcsema_real_eip !47
  store i1 true, i1* %PF.i, align 1, !mcsema_real_eip !47
  store i1 %193, i1* %AF.i, align 1, !mcsema_real_eip !47
  store i1 true, i1* %ZF.i, align 1, !mcsema_real_eip !47
  store i1 false, i1* %SF.i, align 1, !mcsema_real_eip !47
  store i1 false, i1* %OF.i, align 1, !mcsema_real_eip !47
  store i1 %18, i1* %DF.i, align 1, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %20, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !47
  store i1 %21, i1* %FPU_B.i, align 1, !mcsema_real_eip !47
  store i1 %22, i1* %FPU_C3.i, align 1, !mcsema_real_eip !47
  store i3 %23, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !47
  store i1 %24, i1* %FPU_C2.i, align 1, !mcsema_real_eip !47
  store i1 %25, i1* %FPU_C1.i, align 1, !mcsema_real_eip !47
  store i1 %26, i1* %FPU_C0.i, align 1, !mcsema_real_eip !47
  store i1 %27, i1* %FPU_ES.i, align 1, !mcsema_real_eip !47
  store i1 %28, i1* %FPU_SF.i, align 1, !mcsema_real_eip !47
  store i1 %29, i1* %FPU_PE.i, align 1, !mcsema_real_eip !47
  store i1 %30, i1* %FPU_UE.i, align 1, !mcsema_real_eip !47
  store i1 %31, i1* %FPU_OE.i, align 1, !mcsema_real_eip !47
  store i1 %32, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !47
  store i1 %33, i1* %FPU_DE.i, align 1, !mcsema_real_eip !47
  store i1 %34, i1* %FPU_IE.i, align 1, !mcsema_real_eip !47
  store i1 %35, i1* %FPU_X.i, align 1, !mcsema_real_eip !47
  store i2 %36, i2* %FPU_RC.i, align 1, !mcsema_real_eip !47
  store i2 %37, i2* %FPU_PC.i, align 1, !mcsema_real_eip !47
  store i1 %38, i1* %FPU_PM.i, align 1, !mcsema_real_eip !47
  store i1 %39, i1* %FPU_UM.i, align 1, !mcsema_real_eip !47
  store i1 %40, i1* %FPU_OM.i, align 1, !mcsema_real_eip !47
  store i1 %41, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !47
  store i1 %42, i1* %FPU_DM.i, align 1, !mcsema_real_eip !47
  store i1 %43, i1* %FPU_IM.i, align 1, !mcsema_real_eip !47
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !47
  store i64 %48, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !47
  store i16 %49, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !47
  store i64 %50, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !47
  store i11 %51, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !47
  store i128 %52, i128* %XMM0.i, align 1, !mcsema_real_eip !47
  store i128 %53, i128* %XMM1.i, align 1, !mcsema_real_eip !47
  store i128 %54, i128* %XMM2.i, align 1, !mcsema_real_eip !47
  store i128 %55, i128* %XMM3.i, align 1, !mcsema_real_eip !47
  store i128 %56, i128* %XMM4.i, align 1, !mcsema_real_eip !47
  store i128 %57, i128* %XMM5.i, align 1, !mcsema_real_eip !47
  store i128 %58, i128* %XMM6.i, align 1, !mcsema_real_eip !47
  store i128 %59, i128* %XMM7.i, align 1, !mcsema_real_eip !47
  store i128 %60, i128* %XMM8.i, align 1, !mcsema_real_eip !47
  store i128 %61, i128* %XMM9.i, align 1, !mcsema_real_eip !47
  store i128 %62, i128* %XMM10.i, align 1, !mcsema_real_eip !47
  store i128 %63, i128* %XMM11.i, align 1, !mcsema_real_eip !47
  store i128 %64, i128* %XMM12.i, align 1, !mcsema_real_eip !47
  store i128 %65, i128* %XMM13.i, align 1, !mcsema_real_eip !47
  store i128 %66, i128* %XMM14.i, align 1, !mcsema_real_eip !47
  store i128 %67, i128* %XMM15.i, align 1, !mcsema_real_eip !47
  store i64 %68, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !47
  store i64 %69, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !47
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #0

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 4196112}
!3 = !{i64 4196432}
!4 = !{i64 4196450}
!5 = !{i64 4196113}
!6 = !{i64 4196115}
!7 = !{i64 4196448}
!8 = !{i64 4196119}
!9 = !{i64 4196130}
!10 = !{i64 4196140}
!11 = !{i64 4196192}
!12 = !{i64 4196230}
!13 = !{i64 4196235}
!14 = !{i64 4196237}
!15 = !{i64 4196243}
!16 = !{i64 4196256}
!17 = !{i64 4196259}
!18 = !{i64 4196270}
!19 = !{i64 4196274}
!20 = !{i64 4196203}
!21 = !{i64 4196276}
!22 = !{i64 4196283}
!23 = !{i64 4196304}
!24 = !{i64 4196320}
!25 = !{i64 4196322}
!26 = !{i64 4196324}
!27 = !{i64 4196326}
!28 = !{i64 4196329}
!29 = !{i64 4196331}
!30 = !{i64 4196342}
!31 = !{i64 4196344}
!32 = !{i64 4196353}
!33 = !{i64 4196355}
!34 = !{i64 4196365}
!35 = !{i64 4196372}
!36 = !{i64 4196374}
!37 = !{i64 4196380}
!38 = !{i64 4196387}
!39 = !{i64 4196392}
!40 = !{i64 4196395}
!41 = !{i64 4196398}
!42 = !{i64 4195600}
!43 = !{i64 4196455}
!44 = !{i64 4196457}
!45 = !{i64 4196460}
!46 = !{i64 4196464}
!47 = !{i64 4196465}
