; ModuleID = 'Output/test_20.clang.opt.bc'
source_filename = "Output/test_20.clang.bc"
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
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %1 = bitcast i64* %RBX.i to <2 x i64>*
  %2 = load <2 x i64>, <2 x i64>* %1, align 8
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %3 = bitcast i64* %RDX.i to <2 x i64>*
  %4 = load <2 x i64>, <2 x i64>* %3, align 8
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %5 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %6 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !2
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
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %50 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %63 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %64 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %65 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %66 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %67 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %68 = load <2 x i64>, <2 x i64>* %67, align 8
  %69 = add i64 %6, -8
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !2
  store i64 %7, i64* %70, align 8, !mcsema_real_eip !2
  %71 = add i64 %6, -12, !mcsema_real_eip !3
  %72 = trunc i64 %5 to i32, !mcsema_real_eip !3
  %73 = inttoptr i64 %71 to i32*
  store i32 %72, i32* %73, align 4, !mcsema_real_eip !3
  %74 = add i64 %6, -16, !mcsema_real_eip !4
  %75 = inttoptr i64 %74 to i32*
  store i32 0, i32* %75, align 4, !mcsema_real_eip !4
  %76 = load i32, i32* %73, align 4, !mcsema_real_eip !5
  %77 = zext i32 %76 to i64, !mcsema_real_eip !5
  %78 = icmp eq i32 %76, 0, !mcsema_real_eip !6
  %79 = add i64 %6, -20, !mcsema_real_eip !7
  %80 = inttoptr i64 %79 to i32*
  store i32 %76, i32* %80, align 4, !mcsema_real_eip !7
  br i1 %78, label %block_0x19f.i, label %block_0x21.i, !mcsema_real_eip !8

block_0x19f.i:                                    ; preds = %driverBlockRaw
  %81 = load i32, i32* %75, align 4, !mcsema_real_eip !9
  %82 = trunc i32 %81 to i8, !mcsema_real_eip !10
  %83 = tail call i8 @llvm.ctpop.i8(i8 %82) #2, !mcsema_real_eip !10
  br label %sub_0.exit, !mcsema_real_eip !11

block_0x21.i:                                     ; preds = %driverBlockRaw
  %84 = add i32 %76, -1
  %85 = icmp eq i32 %84, 0, !mcsema_real_eip !12
  %86 = add i64 %6, -24, !mcsema_real_eip !13
  %87 = inttoptr i64 %86 to i32*
  store i32 %84, i32* %87, align 4, !mcsema_real_eip !13
  br i1 %85, label %block_0x1ad.i, label %block_0x35.i, !mcsema_real_eip !14

block_0x1ad.i:                                    ; preds = %block_0x21.i
  %88 = load i32, i32* %75, align 4, !mcsema_real_eip !15
  %uadd87.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %88, i32 1) #2
  %89 = extractvalue { i32, i1 } %uadd87.i, 0
  %90 = xor i32 %89, %88, !mcsema_real_eip !16
  %91 = and i32 %90, 16, !mcsema_real_eip !16
  %92 = icmp ne i32 %91, 0, !mcsema_real_eip !16
  %93 = xor i32 %88, -2147483648, !mcsema_real_eip !16
  %94 = and i32 %90, %93, !mcsema_real_eip !16
  %95 = icmp slt i32 %94, 0
  %96 = trunc i32 %89 to i8, !mcsema_real_eip !16
  %97 = tail call i8 @llvm.ctpop.i8(i8 %96) #2, !mcsema_real_eip !16
  %98 = extractvalue { i32, i1 } %uadd87.i, 1
  br label %sub_0.exit, !mcsema_real_eip !17

block_0x35.i:                                     ; preds = %block_0x21.i
  %99 = load i32, i32* %80, align 4, !mcsema_real_eip !18
  %100 = add i32 %99, -2
  %101 = icmp eq i32 %100, 0, !mcsema_real_eip !19
  %102 = add i64 %6, -28, !mcsema_real_eip !20
  %103 = inttoptr i64 %102 to i32*
  store i32 %100, i32* %103, align 4, !mcsema_real_eip !20
  br i1 %101, label %block_0x1bb.i, label %block_0x49.i, !mcsema_real_eip !21

block_0x1bb.i:                                    ; preds = %block_0x35.i
  %104 = load i32, i32* %75, align 4, !mcsema_real_eip !22
  %uadd86.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %104, i32 2) #2
  %105 = extractvalue { i32, i1 } %uadd86.i, 0
  %106 = xor i32 %105, %104, !mcsema_real_eip !23
  %107 = and i32 %106, 16, !mcsema_real_eip !23
  %108 = icmp ne i32 %107, 0, !mcsema_real_eip !23
  %109 = xor i32 %104, -2147483648, !mcsema_real_eip !23
  %110 = and i32 %106, %109, !mcsema_real_eip !23
  %111 = icmp slt i32 %110, 0
  %112 = trunc i32 %105 to i8, !mcsema_real_eip !23
  %113 = tail call i8 @llvm.ctpop.i8(i8 %112) #2, !mcsema_real_eip !23
  %114 = extractvalue { i32, i1 } %uadd86.i, 1
  br label %sub_0.exit, !mcsema_real_eip !24

block_0x49.i:                                     ; preds = %block_0x35.i
  %115 = load i32, i32* %80, align 4, !mcsema_real_eip !25
  %116 = add i32 %115, -4
  %117 = icmp eq i32 %116, 0, !mcsema_real_eip !26
  %118 = add i64 %6, -32, !mcsema_real_eip !27
  %119 = inttoptr i64 %118 to i32*
  store i32 %116, i32* %119, align 4, !mcsema_real_eip !27
  br i1 %117, label %block_0x1c9.i, label %block_0x5d.i, !mcsema_real_eip !28

block_0x1c9.i:                                    ; preds = %block_0x49.i
  %120 = load i32, i32* %75, align 4, !mcsema_real_eip !29
  %uadd85.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %120, i32 4) #2
  %121 = extractvalue { i32, i1 } %uadd85.i, 0
  %122 = xor i32 %121, %120, !mcsema_real_eip !30
  %123 = and i32 %122, 16, !mcsema_real_eip !30
  %124 = icmp ne i32 %123, 0, !mcsema_real_eip !30
  %125 = xor i32 %120, -2147483648, !mcsema_real_eip !30
  %126 = and i32 %122, %125, !mcsema_real_eip !30
  %127 = icmp slt i32 %126, 0
  %128 = trunc i32 %121 to i8, !mcsema_real_eip !30
  %129 = tail call i8 @llvm.ctpop.i8(i8 %128) #2, !mcsema_real_eip !30
  %130 = extractvalue { i32, i1 } %uadd85.i, 1
  br label %sub_0.exit, !mcsema_real_eip !31

block_0x5d.i:                                     ; preds = %block_0x49.i
  %131 = load i32, i32* %80, align 4, !mcsema_real_eip !32
  %132 = add i32 %131, -6
  %133 = icmp eq i32 %132, 0, !mcsema_real_eip !33
  %134 = add i64 %6, -36, !mcsema_real_eip !34
  %135 = inttoptr i64 %134 to i32*
  store i32 %132, i32* %135, align 4, !mcsema_real_eip !34
  br i1 %133, label %block_0x1d7.i, label %block_0x71.i, !mcsema_real_eip !35

block_0x1d7.i:                                    ; preds = %block_0x5d.i
  %136 = load i32, i32* %75, align 4, !mcsema_real_eip !36
  %uadd84.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %136, i32 6) #2
  %137 = extractvalue { i32, i1 } %uadd84.i, 0
  %138 = xor i32 %137, %136, !mcsema_real_eip !37
  %139 = and i32 %138, 16, !mcsema_real_eip !37
  %140 = icmp ne i32 %139, 0, !mcsema_real_eip !37
  %141 = xor i32 %136, -2147483648, !mcsema_real_eip !37
  %142 = and i32 %138, %141, !mcsema_real_eip !37
  %143 = icmp slt i32 %142, 0
  %144 = trunc i32 %137 to i8, !mcsema_real_eip !37
  %145 = tail call i8 @llvm.ctpop.i8(i8 %144) #2, !mcsema_real_eip !37
  %146 = extractvalue { i32, i1 } %uadd84.i, 1
  br label %sub_0.exit, !mcsema_real_eip !38

block_0x71.i:                                     ; preds = %block_0x5d.i
  %147 = load i32, i32* %80, align 4, !mcsema_real_eip !39
  %148 = add i32 %147, -12
  %149 = icmp eq i32 %148, 0, !mcsema_real_eip !40
  %150 = add i64 %6, -40, !mcsema_real_eip !41
  %151 = inttoptr i64 %150 to i32*
  store i32 %148, i32* %151, align 4, !mcsema_real_eip !41
  br i1 %149, label %block_0x1e5.i, label %block_0x85.i, !mcsema_real_eip !42

block_0x1e5.i:                                    ; preds = %block_0x71.i
  %152 = load i32, i32* %75, align 4, !mcsema_real_eip !43
  %uadd83.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %152, i32 12) #2
  %153 = extractvalue { i32, i1 } %uadd83.i, 0
  %154 = xor i32 %153, %152, !mcsema_real_eip !44
  %155 = and i32 %154, 16, !mcsema_real_eip !44
  %156 = icmp ne i32 %155, 0, !mcsema_real_eip !44
  %157 = xor i32 %152, -2147483648, !mcsema_real_eip !44
  %158 = and i32 %154, %157, !mcsema_real_eip !44
  %159 = icmp slt i32 %158, 0
  %160 = trunc i32 %153 to i8, !mcsema_real_eip !44
  %161 = tail call i8 @llvm.ctpop.i8(i8 %160) #2, !mcsema_real_eip !44
  %162 = extractvalue { i32, i1 } %uadd83.i, 1
  br label %sub_0.exit, !mcsema_real_eip !45

block_0x85.i:                                     ; preds = %block_0x71.i
  %163 = load i32, i32* %80, align 4, !mcsema_real_eip !46
  %164 = add i32 %163, -13
  %165 = icmp eq i32 %164, 0, !mcsema_real_eip !47
  %166 = add i64 %6, -44, !mcsema_real_eip !48
  %167 = inttoptr i64 %166 to i32*
  store i32 %164, i32* %167, align 4, !mcsema_real_eip !48
  br i1 %165, label %block_0x1f3.i, label %block_0x99.i, !mcsema_real_eip !49

block_0x1f3.i:                                    ; preds = %block_0x85.i
  %168 = load i32, i32* %75, align 4, !mcsema_real_eip !50
  %uadd82.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %168, i32 13) #2
  %169 = extractvalue { i32, i1 } %uadd82.i, 0
  %170 = xor i32 %169, %168, !mcsema_real_eip !51
  %171 = and i32 %170, 16, !mcsema_real_eip !51
  %172 = icmp ne i32 %171, 0, !mcsema_real_eip !51
  %173 = xor i32 %168, -2147483648, !mcsema_real_eip !51
  %174 = and i32 %170, %173, !mcsema_real_eip !51
  %175 = icmp slt i32 %174, 0
  %176 = trunc i32 %169 to i8, !mcsema_real_eip !51
  %177 = tail call i8 @llvm.ctpop.i8(i8 %176) #2, !mcsema_real_eip !51
  %178 = extractvalue { i32, i1 } %uadd82.i, 1
  br label %sub_0.exit, !mcsema_real_eip !52

block_0x99.i:                                     ; preds = %block_0x85.i
  %179 = load i32, i32* %80, align 4, !mcsema_real_eip !53
  %180 = add i32 %179, -19
  %181 = icmp eq i32 %180, 0, !mcsema_real_eip !54
  %182 = add i64 %6, -48, !mcsema_real_eip !55
  %183 = inttoptr i64 %182 to i32*
  store i32 %180, i32* %183, align 4, !mcsema_real_eip !55
  br i1 %181, label %block_0x201.i, label %block_0xad.i, !mcsema_real_eip !56

block_0x201.i:                                    ; preds = %block_0x99.i
  %184 = load i32, i32* %75, align 4, !mcsema_real_eip !57
  %uadd81.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %184, i32 19) #2
  %185 = extractvalue { i32, i1 } %uadd81.i, 0
  %186 = xor i32 %185, %184, !mcsema_real_eip !58
  %187 = and i32 %186, 16
  %188 = icmp eq i32 %187, 0
  %189 = xor i32 %184, -2147483648, !mcsema_real_eip !58
  %190 = and i32 %186, %189, !mcsema_real_eip !58
  %191 = icmp slt i32 %190, 0
  %192 = trunc i32 %185 to i8, !mcsema_real_eip !58
  %193 = tail call i8 @llvm.ctpop.i8(i8 %192) #2, !mcsema_real_eip !58
  %194 = extractvalue { i32, i1 } %uadd81.i, 1
  br label %sub_0.exit, !mcsema_real_eip !59

block_0xad.i:                                     ; preds = %block_0x99.i
  %195 = load i32, i32* %80, align 4, !mcsema_real_eip !60
  %196 = add i32 %195, -255
  %197 = icmp eq i32 %196, 0, !mcsema_real_eip !61
  %198 = add i64 %6, -52, !mcsema_real_eip !62
  %199 = inttoptr i64 %198 to i32*
  store i32 %196, i32* %199, align 4, !mcsema_real_eip !62
  br i1 %197, label %block_0x20f.i, label %block_0xc3.i, !mcsema_real_eip !63

block_0x20f.i:                                    ; preds = %block_0xad.i
  %200 = load i32, i32* %75, align 4, !mcsema_real_eip !64
  %uadd80.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %200, i32 255) #2
  %201 = extractvalue { i32, i1 } %uadd80.i, 0
  %202 = xor i32 %201, %200, !mcsema_real_eip !65
  %203 = and i32 %202, 16
  %204 = icmp eq i32 %203, 0
  %205 = xor i32 %200, -2147483648, !mcsema_real_eip !65
  %206 = and i32 %202, %205, !mcsema_real_eip !65
  %207 = icmp slt i32 %206, 0
  %208 = trunc i32 %201 to i8, !mcsema_real_eip !65
  %209 = tail call i8 @llvm.ctpop.i8(i8 %208) #2, !mcsema_real_eip !65
  %210 = extractvalue { i32, i1 } %uadd80.i, 1
  br label %sub_0.exit, !mcsema_real_eip !66

block_0xc3.i:                                     ; preds = %block_0xad.i
  %211 = load i32, i32* %80, align 4, !mcsema_real_eip !67
  %212 = add i32 %211, -74633
  %213 = icmp eq i32 %212, 0, !mcsema_real_eip !68
  %214 = add i64 %6, -56, !mcsema_real_eip !69
  %215 = inttoptr i64 %214 to i32*
  store i32 %212, i32* %215, align 4, !mcsema_real_eip !69
  br i1 %213, label %block_0x21f.i, label %block_0xd9.i, !mcsema_real_eip !70

block_0x21f.i:                                    ; preds = %block_0xc3.i
  %216 = load i32, i32* %75, align 4, !mcsema_real_eip !71
  %uadd79.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %216, i32 74633) #2
  %217 = extractvalue { i32, i1 } %uadd79.i, 0
  %218 = xor i32 %217, %216, !mcsema_real_eip !72
  %219 = and i32 %218, 16, !mcsema_real_eip !72
  %220 = icmp ne i32 %219, 0, !mcsema_real_eip !72
  %221 = xor i32 %216, -2147483648, !mcsema_real_eip !72
  %222 = and i32 %218, %221, !mcsema_real_eip !72
  %223 = icmp slt i32 %222, 0
  %224 = trunc i32 %217 to i8, !mcsema_real_eip !72
  %225 = tail call i8 @llvm.ctpop.i8(i8 %224) #2, !mcsema_real_eip !72
  %226 = extractvalue { i32, i1 } %uadd79.i, 1
  br label %sub_0.exit, !mcsema_real_eip !73

block_0xd9.i:                                     ; preds = %block_0xc3.i
  %227 = load i32, i32* %80, align 4, !mcsema_real_eip !74
  %228 = add i32 %227, -74634
  %229 = icmp eq i32 %228, 0, !mcsema_real_eip !75
  %230 = add i64 %6, -60, !mcsema_real_eip !76
  %231 = inttoptr i64 %230 to i32*
  store i32 %228, i32* %231, align 4, !mcsema_real_eip !76
  br i1 %229, label %block_0x22f.i, label %block_0xef.i, !mcsema_real_eip !77

block_0x22f.i:                                    ; preds = %block_0xd9.i
  %232 = load i32, i32* %75, align 4, !mcsema_real_eip !78
  %uadd78.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %232, i32 74634) #2
  %233 = extractvalue { i32, i1 } %uadd78.i, 0
  %234 = xor i32 %233, %232, !mcsema_real_eip !79
  %235 = and i32 %234, 16, !mcsema_real_eip !79
  %236 = icmp ne i32 %235, 0, !mcsema_real_eip !79
  %237 = xor i32 %232, -2147483648, !mcsema_real_eip !79
  %238 = and i32 %234, %237, !mcsema_real_eip !79
  %239 = icmp slt i32 %238, 0
  %240 = trunc i32 %233 to i8, !mcsema_real_eip !79
  %241 = tail call i8 @llvm.ctpop.i8(i8 %240) #2, !mcsema_real_eip !79
  %242 = extractvalue { i32, i1 } %uadd78.i, 1
  br label %sub_0.exit, !mcsema_real_eip !80

block_0xef.i:                                     ; preds = %block_0xd9.i
  %243 = load i32, i32* %80, align 4, !mcsema_real_eip !81
  %244 = add i32 %243, -74635
  %245 = icmp eq i32 %244, 0, !mcsema_real_eip !82
  %246 = add i64 %6, -64, !mcsema_real_eip !83
  %247 = inttoptr i64 %246 to i32*
  store i32 %244, i32* %247, align 4, !mcsema_real_eip !83
  br i1 %245, label %block_0x23f.i, label %block_0x105.i, !mcsema_real_eip !84

block_0x23f.i:                                    ; preds = %block_0xef.i
  %248 = load i32, i32* %75, align 4, !mcsema_real_eip !85
  %uadd77.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %248, i32 74635) #2
  %249 = extractvalue { i32, i1 } %uadd77.i, 0
  %250 = xor i32 %249, %248, !mcsema_real_eip !86
  %251 = and i32 %250, 16, !mcsema_real_eip !86
  %252 = icmp ne i32 %251, 0, !mcsema_real_eip !86
  %253 = xor i32 %248, -2147483648, !mcsema_real_eip !86
  %254 = and i32 %250, %253, !mcsema_real_eip !86
  %255 = icmp slt i32 %254, 0
  %256 = trunc i32 %249 to i8, !mcsema_real_eip !86
  %257 = tail call i8 @llvm.ctpop.i8(i8 %256) #2, !mcsema_real_eip !86
  %258 = extractvalue { i32, i1 } %uadd77.i, 1
  br label %sub_0.exit, !mcsema_real_eip !87

block_0x105.i:                                    ; preds = %block_0xef.i
  %259 = load i32, i32* %80, align 4, !mcsema_real_eip !88
  %260 = add i32 %259, -74636
  %261 = icmp eq i32 %260, 0, !mcsema_real_eip !89
  %262 = add i64 %6, -68, !mcsema_real_eip !90
  %263 = inttoptr i64 %262 to i32*
  store i32 %260, i32* %263, align 4, !mcsema_real_eip !90
  br i1 %261, label %block_0x24f.i, label %block_0x11b.i, !mcsema_real_eip !91

block_0x24f.i:                                    ; preds = %block_0x105.i
  %264 = load i32, i32* %75, align 4, !mcsema_real_eip !92
  %uadd76.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %264, i32 74636) #2
  %265 = extractvalue { i32, i1 } %uadd76.i, 0
  %266 = xor i32 %265, %264, !mcsema_real_eip !93
  %267 = and i32 %266, 16, !mcsema_real_eip !93
  %268 = icmp ne i32 %267, 0, !mcsema_real_eip !93
  %269 = xor i32 %264, -2147483648, !mcsema_real_eip !93
  %270 = and i32 %266, %269, !mcsema_real_eip !93
  %271 = icmp slt i32 %270, 0
  %272 = trunc i32 %265 to i8, !mcsema_real_eip !93
  %273 = tail call i8 @llvm.ctpop.i8(i8 %272) #2, !mcsema_real_eip !93
  %274 = extractvalue { i32, i1 } %uadd76.i, 1
  br label %sub_0.exit, !mcsema_real_eip !94

block_0x11b.i:                                    ; preds = %block_0x105.i
  %275 = load i32, i32* %80, align 4, !mcsema_real_eip !95
  %276 = add i32 %275, -74637
  %277 = icmp eq i32 %276, 0, !mcsema_real_eip !96
  %278 = add i64 %6, -72, !mcsema_real_eip !97
  %279 = inttoptr i64 %278 to i32*
  store i32 %276, i32* %279, align 4, !mcsema_real_eip !97
  br i1 %277, label %block_0x25f.i, label %block_0x131.i, !mcsema_real_eip !98

block_0x25f.i:                                    ; preds = %block_0x11b.i
  %280 = load i32, i32* %75, align 4, !mcsema_real_eip !99
  %uadd75.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %280, i32 74637) #2
  %281 = extractvalue { i32, i1 } %uadd75.i, 0
  %282 = xor i32 %281, %280, !mcsema_real_eip !100
  %283 = and i32 %282, 16, !mcsema_real_eip !100
  %284 = icmp ne i32 %283, 0, !mcsema_real_eip !100
  %285 = xor i32 %280, -2147483648, !mcsema_real_eip !100
  %286 = and i32 %282, %285, !mcsema_real_eip !100
  %287 = icmp slt i32 %286, 0
  %288 = trunc i32 %281 to i8, !mcsema_real_eip !100
  %289 = tail call i8 @llvm.ctpop.i8(i8 %288) #2, !mcsema_real_eip !100
  %290 = extractvalue { i32, i1 } %uadd75.i, 1
  br label %sub_0.exit, !mcsema_real_eip !101

block_0x131.i:                                    ; preds = %block_0x11b.i
  %291 = load i32, i32* %80, align 4, !mcsema_real_eip !102
  %292 = add i32 %291, -74639
  %293 = icmp eq i32 %292, 0, !mcsema_real_eip !103
  %294 = add i64 %6, -76, !mcsema_real_eip !104
  %295 = inttoptr i64 %294 to i32*
  store i32 %292, i32* %295, align 4, !mcsema_real_eip !104
  br i1 %293, label %block_0x26f.i, label %block_0x147.i, !mcsema_real_eip !105

block_0x26f.i:                                    ; preds = %block_0x131.i
  %296 = load i32, i32* %75, align 4, !mcsema_real_eip !106
  %uadd74.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %296, i32 74639) #2
  %297 = extractvalue { i32, i1 } %uadd74.i, 0
  %298 = xor i32 %297, %296, !mcsema_real_eip !107
  %299 = and i32 %298, 16, !mcsema_real_eip !107
  %300 = icmp ne i32 %299, 0, !mcsema_real_eip !107
  %301 = xor i32 %296, -2147483648, !mcsema_real_eip !107
  %302 = and i32 %298, %301, !mcsema_real_eip !107
  %303 = icmp slt i32 %302, 0
  %304 = trunc i32 %297 to i8, !mcsema_real_eip !107
  %305 = tail call i8 @llvm.ctpop.i8(i8 %304) #2, !mcsema_real_eip !107
  %306 = extractvalue { i32, i1 } %uadd74.i, 1
  br label %sub_0.exit, !mcsema_real_eip !108

block_0x147.i:                                    ; preds = %block_0x131.i
  %307 = load i32, i32* %80, align 4, !mcsema_real_eip !109
  %308 = add i32 %307, -74640
  %309 = icmp eq i32 %308, 0, !mcsema_real_eip !110
  %310 = add i64 %6, -80, !mcsema_real_eip !111
  %311 = inttoptr i64 %310 to i32*
  store i32 %308, i32* %311, align 4, !mcsema_real_eip !111
  br i1 %309, label %block_0x27f.i, label %block_0x15d.i, !mcsema_real_eip !112

block_0x27f.i:                                    ; preds = %block_0x147.i
  %312 = load i32, i32* %75, align 4, !mcsema_real_eip !113
  %uadd73.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %312, i32 74640) #2
  %313 = extractvalue { i32, i1 } %uadd73.i, 0
  %314 = xor i32 %313, %312, !mcsema_real_eip !114
  %315 = and i32 %314, 16
  %316 = icmp eq i32 %315, 0
  %317 = xor i32 %312, -2147483648, !mcsema_real_eip !114
  %318 = and i32 %314, %317, !mcsema_real_eip !114
  %319 = icmp slt i32 %318, 0
  %320 = trunc i32 %313 to i8, !mcsema_real_eip !114
  %321 = tail call i8 @llvm.ctpop.i8(i8 %320) #2, !mcsema_real_eip !114
  %322 = extractvalue { i32, i1 } %uadd73.i, 1
  br label %sub_0.exit, !mcsema_real_eip !115

block_0x15d.i:                                    ; preds = %block_0x147.i
  %323 = load i32, i32* %80, align 4, !mcsema_real_eip !116
  %324 = add i32 %323, -74641
  %325 = icmp eq i32 %324, 0, !mcsema_real_eip !117
  %326 = add i64 %6, -84, !mcsema_real_eip !118
  %327 = inttoptr i64 %326 to i32*
  store i32 %324, i32* %327, align 4, !mcsema_real_eip !118
  br i1 %325, label %block_0x28f.i, label %block_0x173.i, !mcsema_real_eip !119

block_0x28f.i:                                    ; preds = %block_0x15d.i
  %328 = load i32, i32* %75, align 4, !mcsema_real_eip !120
  %uadd72.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %328, i32 74641) #2
  %329 = extractvalue { i32, i1 } %uadd72.i, 0
  %330 = xor i32 %329, %328, !mcsema_real_eip !121
  %331 = and i32 %330, 16
  %332 = icmp eq i32 %331, 0
  %333 = xor i32 %328, -2147483648, !mcsema_real_eip !121
  %334 = and i32 %330, %333, !mcsema_real_eip !121
  %335 = icmp slt i32 %334, 0
  %336 = trunc i32 %329 to i8, !mcsema_real_eip !121
  %337 = tail call i8 @llvm.ctpop.i8(i8 %336) #2, !mcsema_real_eip !121
  %338 = extractvalue { i32, i1 } %uadd72.i, 1
  br label %sub_0.exit, !mcsema_real_eip !122

block_0x173.i:                                    ; preds = %block_0x15d.i
  %339 = load i32, i32* %80, align 4, !mcsema_real_eip !123
  %340 = add i32 %339, -74642
  %341 = icmp eq i32 %340, 0, !mcsema_real_eip !124
  %342 = add i64 %6, -88, !mcsema_real_eip !125
  %343 = inttoptr i64 %342 to i32*
  store i32 %340, i32* %343, align 4, !mcsema_real_eip !125
  br i1 %341, label %block_0x29f.i, label %block_0x189.i, !mcsema_real_eip !126

block_0x29f.i:                                    ; preds = %block_0x173.i
  %344 = load i32, i32* %75, align 4, !mcsema_real_eip !127
  %uadd71.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %344, i32 74642) #2
  %345 = extractvalue { i32, i1 } %uadd71.i, 0
  %346 = xor i32 %345, %344, !mcsema_real_eip !128
  %347 = and i32 %346, 16
  %348 = icmp eq i32 %347, 0
  %349 = xor i32 %344, -2147483648, !mcsema_real_eip !128
  %350 = and i32 %346, %349, !mcsema_real_eip !128
  %351 = icmp slt i32 %350, 0
  %352 = trunc i32 %345 to i8, !mcsema_real_eip !128
  %353 = tail call i8 @llvm.ctpop.i8(i8 %352) #2, !mcsema_real_eip !128
  %354 = extractvalue { i32, i1 } %uadd71.i, 1
  br label %sub_0.exit, !mcsema_real_eip !129

block_0x189.i:                                    ; preds = %block_0x173.i
  %355 = load i32, i32* %80, align 4, !mcsema_real_eip !130
  %356 = add i32 %355, -74643
  %357 = icmp eq i32 %356, 0, !mcsema_real_eip !131
  %358 = add i64 %6, -92, !mcsema_real_eip !132
  %359 = inttoptr i64 %358 to i32*
  store i32 %356, i32* %359, align 4, !mcsema_real_eip !132
  %360 = load i32, i32* %75, align 4, !mcsema_real_eip !133
  br i1 %357, label %block_0x2af.i, label %block_0x2bf.i, !mcsema_real_eip !134

block_0x2af.i:                                    ; preds = %block_0x189.i
  %uadd.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %360, i32 74643) #2
  %361 = extractvalue { i32, i1 } %uadd.i, 0
  %362 = xor i32 %361, %360, !mcsema_real_eip !135
  %363 = and i32 %362, 16
  %364 = icmp eq i32 %363, 0
  %365 = xor i32 %360, -2147483648, !mcsema_real_eip !135
  %366 = and i32 %362, %365, !mcsema_real_eip !135
  %367 = icmp slt i32 %366, 0
  %368 = trunc i32 %361 to i8, !mcsema_real_eip !135
  %369 = tail call i8 @llvm.ctpop.i8(i8 %368) #2, !mcsema_real_eip !135
  %370 = extractvalue { i32, i1 } %uadd.i, 1
  br label %sub_0.exit, !mcsema_real_eip !136

block_0x2bf.i:                                    ; preds = %block_0x189.i
  %371 = trunc i32 %360 to i8, !mcsema_real_eip !137
  %372 = tail call i8 @llvm.ctpop.i8(i8 %371) #2, !mcsema_real_eip !137
  br label %sub_0.exit

sub_0.exit:                                       ; preds = %block_0x19f.i, %block_0x1ad.i, %block_0x1bb.i, %block_0x1c9.i, %block_0x1d7.i, %block_0x1e5.i, %block_0x1f3.i, %block_0x201.i, %block_0x20f.i, %block_0x21f.i, %block_0x22f.i, %block_0x23f.i, %block_0x24f.i, %block_0x25f.i, %block_0x26f.i, %block_0x27f.i, %block_0x28f.i, %block_0x29f.i, %block_0x2af.i, %block_0x2bf.i
  %ZF_val.0.in.i = phi i32 [ %81, %block_0x19f.i ], [ %89, %block_0x1ad.i ], [ %105, %block_0x1bb.i ], [ %121, %block_0x1c9.i ], [ %137, %block_0x1d7.i ], [ %153, %block_0x1e5.i ], [ %169, %block_0x1f3.i ], [ %185, %block_0x201.i ], [ %201, %block_0x20f.i ], [ %217, %block_0x21f.i ], [ %233, %block_0x22f.i ], [ %249, %block_0x23f.i ], [ %265, %block_0x24f.i ], [ %281, %block_0x25f.i ], [ %297, %block_0x26f.i ], [ %313, %block_0x27f.i ], [ %329, %block_0x28f.i ], [ %345, %block_0x29f.i ], [ %361, %block_0x2af.i ], [ %360, %block_0x2bf.i ]
  %PF_val.0.in.in.i = phi i8 [ %83, %block_0x19f.i ], [ %97, %block_0x1ad.i ], [ %113, %block_0x1bb.i ], [ %129, %block_0x1c9.i ], [ %145, %block_0x1d7.i ], [ %161, %block_0x1e5.i ], [ %177, %block_0x1f3.i ], [ %193, %block_0x201.i ], [ %209, %block_0x20f.i ], [ %225, %block_0x21f.i ], [ %241, %block_0x22f.i ], [ %257, %block_0x23f.i ], [ %273, %block_0x24f.i ], [ %289, %block_0x25f.i ], [ %305, %block_0x26f.i ], [ %321, %block_0x27f.i ], [ %337, %block_0x28f.i ], [ %353, %block_0x29f.i ], [ %369, %block_0x2af.i ], [ %372, %block_0x2bf.i ]
  %AF_val.0.i = phi i1 [ false, %block_0x19f.i ], [ %92, %block_0x1ad.i ], [ %108, %block_0x1bb.i ], [ %124, %block_0x1c9.i ], [ %140, %block_0x1d7.i ], [ %156, %block_0x1e5.i ], [ %172, %block_0x1f3.i ], [ %188, %block_0x201.i ], [ %204, %block_0x20f.i ], [ %220, %block_0x21f.i ], [ %236, %block_0x22f.i ], [ %252, %block_0x23f.i ], [ %268, %block_0x24f.i ], [ %284, %block_0x25f.i ], [ %300, %block_0x26f.i ], [ %316, %block_0x27f.i ], [ %332, %block_0x28f.i ], [ %348, %block_0x29f.i ], [ %364, %block_0x2af.i ], [ false, %block_0x2bf.i ]
  %CF_val.0.i = phi i1 [ false, %block_0x19f.i ], [ %98, %block_0x1ad.i ], [ %114, %block_0x1bb.i ], [ %130, %block_0x1c9.i ], [ %146, %block_0x1d7.i ], [ %162, %block_0x1e5.i ], [ %178, %block_0x1f3.i ], [ %194, %block_0x201.i ], [ %210, %block_0x20f.i ], [ %226, %block_0x21f.i ], [ %242, %block_0x22f.i ], [ %258, %block_0x23f.i ], [ %274, %block_0x24f.i ], [ %290, %block_0x25f.i ], [ %306, %block_0x26f.i ], [ %322, %block_0x27f.i ], [ %338, %block_0x28f.i ], [ %354, %block_0x29f.i ], [ %370, %block_0x2af.i ], [ false, %block_0x2bf.i ]
  %OF_val.0.i = phi i1 [ false, %block_0x19f.i ], [ %95, %block_0x1ad.i ], [ %111, %block_0x1bb.i ], [ %127, %block_0x1c9.i ], [ %143, %block_0x1d7.i ], [ %159, %block_0x1e5.i ], [ %175, %block_0x1f3.i ], [ %191, %block_0x201.i ], [ %207, %block_0x20f.i ], [ %223, %block_0x21f.i ], [ %239, %block_0x22f.i ], [ %255, %block_0x23f.i ], [ %271, %block_0x24f.i ], [ %287, %block_0x25f.i ], [ %303, %block_0x26f.i ], [ %319, %block_0x27f.i ], [ %335, %block_0x28f.i ], [ %351, %block_0x29f.i ], [ %367, %block_0x2af.i ], [ false, %block_0x2bf.i ]
  %PF_val.0.in.i = and i8 %PF_val.0.in.in.i, 1
  %SF_val.0.i = icmp slt i32 %ZF_val.0.in.i, 0
  %PF_val.0.i = icmp eq i8 %PF_val.0.in.i, 0
  %ZF_val.0.i = icmp eq i32 %ZF_val.0.in.i, 0
  store i32 %ZF_val.0.in.i, i32* %75, align 4
  %373 = zext i32 %ZF_val.0.in.i to i64, !mcsema_real_eip !138
  %374 = load i64, i64* %70, align 8, !mcsema_real_eip !139
  %375 = add i64 %6, 8, !mcsema_real_eip !140
  store i64 %373, i64* %RAX.i, align 8, !mcsema_real_eip !140
  %376 = bitcast i64* %RBX.i to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %376, align 8
  %377 = bitcast i64* %RDX.i to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %377, align 8
  store i64 %77, i64* %RDI.i, align 8, !mcsema_real_eip !140
  store i64 %375, i64* %RSP.i, align 8, !mcsema_real_eip !140
  store i64 %374, i64* %RBP.i, align 8, !mcsema_real_eip !140
  %378 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %378, align 8
  %379 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %379, align 8
  %380 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %380, align 8
  %381 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %381, align 8
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !140
  store i1 %CF_val.0.i, i1* %CF.i, align 1, !mcsema_real_eip !140
  store i1 %PF_val.0.i, i1* %PF.i, align 1, !mcsema_real_eip !140
  store i1 %AF_val.0.i, i1* %AF.i, align 1, !mcsema_real_eip !140
  store i1 %ZF_val.0.i, i1* %ZF.i, align 1, !mcsema_real_eip !140
  store i1 %SF_val.0.i, i1* %SF.i, align 1, !mcsema_real_eip !140
  store i1 %OF_val.0.i, i1* %OF.i, align 1, !mcsema_real_eip !140
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !140
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !140
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !140
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !140
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !140
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !140
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !140
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !140
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !140
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !140
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !140
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !140
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !140
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !140
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !140
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !140
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !140
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !140
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !140
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !140
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !140
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !140
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !140
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !140
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !140
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !140
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !140
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !140
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !140
  store i11 %50, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !140
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !140
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !140
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !140
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !140
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !140
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !140
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !140
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !140
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !140
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !140
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !140
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !140
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !140
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !140
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !140
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !140
  %382 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %68, <2 x i64>* %382, align 1
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
!2 = !{i64 0}
!3 = !{i64 4}
!4 = !{i64 7}
!5 = !{i64 14}
!6 = !{i64 17}
!7 = !{i64 19}
!8 = !{i64 22}
!9 = !{i64 415}
!10 = !{i64 418}
!11 = !{i64 424}
!12 = !{i64 36}
!13 = !{i64 39}
!14 = !{i64 42}
!15 = !{i64 429}
!16 = !{i64 432}
!17 = !{i64 438}
!18 = !{i64 53}
!19 = !{i64 56}
!20 = !{i64 59}
!21 = !{i64 62}
!22 = !{i64 443}
!23 = !{i64 446}
!24 = !{i64 452}
!25 = !{i64 73}
!26 = !{i64 76}
!27 = !{i64 79}
!28 = !{i64 82}
!29 = !{i64 457}
!30 = !{i64 460}
!31 = !{i64 466}
!32 = !{i64 93}
!33 = !{i64 96}
!34 = !{i64 99}
!35 = !{i64 102}
!36 = !{i64 471}
!37 = !{i64 474}
!38 = !{i64 480}
!39 = !{i64 113}
!40 = !{i64 116}
!41 = !{i64 119}
!42 = !{i64 122}
!43 = !{i64 485}
!44 = !{i64 488}
!45 = !{i64 494}
!46 = !{i64 133}
!47 = !{i64 136}
!48 = !{i64 139}
!49 = !{i64 142}
!50 = !{i64 499}
!51 = !{i64 502}
!52 = !{i64 508}
!53 = !{i64 153}
!54 = !{i64 156}
!55 = !{i64 159}
!56 = !{i64 162}
!57 = !{i64 513}
!58 = !{i64 516}
!59 = !{i64 522}
!60 = !{i64 173}
!61 = !{i64 176}
!62 = !{i64 181}
!63 = !{i64 184}
!64 = !{i64 527}
!65 = !{i64 530}
!66 = !{i64 538}
!67 = !{i64 195}
!68 = !{i64 198}
!69 = !{i64 203}
!70 = !{i64 206}
!71 = !{i64 543}
!72 = !{i64 546}
!73 = !{i64 554}
!74 = !{i64 217}
!75 = !{i64 220}
!76 = !{i64 225}
!77 = !{i64 228}
!78 = !{i64 559}
!79 = !{i64 562}
!80 = !{i64 570}
!81 = !{i64 239}
!82 = !{i64 242}
!83 = !{i64 247}
!84 = !{i64 250}
!85 = !{i64 575}
!86 = !{i64 578}
!87 = !{i64 586}
!88 = !{i64 261}
!89 = !{i64 264}
!90 = !{i64 269}
!91 = !{i64 272}
!92 = !{i64 591}
!93 = !{i64 594}
!94 = !{i64 602}
!95 = !{i64 283}
!96 = !{i64 286}
!97 = !{i64 291}
!98 = !{i64 294}
!99 = !{i64 607}
!100 = !{i64 610}
!101 = !{i64 618}
!102 = !{i64 305}
!103 = !{i64 308}
!104 = !{i64 313}
!105 = !{i64 316}
!106 = !{i64 623}
!107 = !{i64 626}
!108 = !{i64 634}
!109 = !{i64 327}
!110 = !{i64 330}
!111 = !{i64 335}
!112 = !{i64 338}
!113 = !{i64 639}
!114 = !{i64 642}
!115 = !{i64 650}
!116 = !{i64 349}
!117 = !{i64 352}
!118 = !{i64 357}
!119 = !{i64 360}
!120 = !{i64 655}
!121 = !{i64 658}
!122 = !{i64 666}
!123 = !{i64 371}
!124 = !{i64 374}
!125 = !{i64 379}
!126 = !{i64 382}
!127 = !{i64 671}
!128 = !{i64 674}
!129 = !{i64 682}
!130 = !{i64 393}
!131 = !{i64 396}
!132 = !{i64 401}
!133 = !{i64 687}
!134 = !{i64 404}
!135 = !{i64 690}
!136 = !{i64 698}
!137 = !{i64 706}
!138 = !{i64 712}
!139 = !{i64 715}
!140 = !{i64 716}
