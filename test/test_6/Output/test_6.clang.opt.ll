; ModuleID = 'Output/test_6.clang.opt.bc'
source_filename = "Output/test_6.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

declare x86_64_sysvcc i64 @malloc(i64 inreg) local_unnamed_addr

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
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !3
  %1 = load i64, i64* %RBX.i, align 8
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !3
  %2 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !3
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !3
  %3 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !3
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !3
  %4 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !3
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !3
  %5 = load i64, i64* %RBP.i, align 8, !mcsema_real_eip !3
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !3
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %6 = load i64, i64* %R12.i, align 8
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !3
  %7 = load i64, i64* %R13.i, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %8 = load i64, i64* %R14.i, align 8
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !3
  %9 = load i64, i64* %R15.i, align 8
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %10 = load i64, i64* %RIP.i, align 8
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !3
  %11 = load i1, i1* %DF.i, align 1
  %12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !3
  %13 = bitcast x86_fp80* %12 to i8*, !mcsema_real_eip !3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %13, i32 128, i32 4, i1 false), !mcsema_real_eip !3
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !3
  %14 = load i1, i1* %FPU_B.i, align 1
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !3
  %15 = load i1, i1* %FPU_C3.i, align 1
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !3
  %16 = load i3, i3* %FPU_TOP.i, align 1
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !3
  %17 = load i1, i1* %FPU_C2.i, align 1
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !3
  %18 = load i1, i1* %FPU_C1.i, align 1
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !3
  %19 = load i1, i1* %FPU_C0.i, align 1
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !3
  %20 = load i1, i1* %FPU_ES.i, align 1
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !3
  %21 = load i1, i1* %FPU_SF.i, align 1
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !3
  %22 = load i1, i1* %FPU_PE.i, align 1
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !3
  %23 = load i1, i1* %FPU_UE.i, align 1
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !3
  %24 = load i1, i1* %FPU_OE.i, align 1
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !3
  %25 = load i1, i1* %FPU_ZE.i, align 1
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !3
  %26 = load i1, i1* %FPU_DE.i, align 1
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !3
  %27 = load i1, i1* %FPU_IE.i, align 1
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !3
  %28 = load i1, i1* %FPU_X.i, align 1
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !3
  %29 = load i2, i2* %FPU_RC.i, align 1
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !3
  %30 = load i2, i2* %FPU_PC.i, align 1
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !3
  %31 = load i1, i1* %FPU_PM.i, align 1
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !3
  %32 = load i1, i1* %FPU_UM.i, align 1
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !3
  %33 = load i1, i1* %FPU_OM.i, align 1
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !3
  %34 = load i1, i1* %FPU_ZM.i, align 1
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !3
  %35 = load i1, i1* %FPU_DM.i, align 1
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !3
  %36 = load i1, i1* %FPU_IM.i, align 1
  %37 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !3
  %38 = bitcast i8* %37 to i64*
  %39 = load i64, i64* %38, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !3
  %40 = load i16, i16* %FPU_LASTIP_SEG.i, align 1
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !3
  %41 = load i64, i64* %FPU_LASTIP_OFF.i, align 8
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !3
  %42 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !3
  %43 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %44 = load i128, i128* %XMM0.i, align 1
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %45 = load i128, i128* %XMM1.i, align 1
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %46 = load i128, i128* %XMM2.i, align 1
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %47 = load i128, i128* %XMM3.i, align 1
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %48 = load i128, i128* %XMM4.i, align 1
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %49 = load i128, i128* %XMM5.i, align 1
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %50 = load i128, i128* %XMM6.i, align 1
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %51 = load i128, i128* %XMM7.i, align 1
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %52 = load i128, i128* %XMM8.i, align 1
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %53 = load i128, i128* %XMM9.i, align 1
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %54 = load i128, i128* %XMM10.i, align 1
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %55 = load i128, i128* %XMM11.i, align 1
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %56 = load i128, i128* %XMM12.i, align 1
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %57 = load i128, i128* %XMM13.i, align 1
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %58 = load i128, i128* %XMM14.i, align 1
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %59 = load i128, i128* %XMM15.i, align 1
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %60 = load i64, i64* %STACK_BASE.i, align 8
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %61 = load i64, i64* %STACK_LIMIT.i, align 8
  %62 = add i64 %4, -8
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !3
  store i64 %5, i64* %63, align 8, !mcsema_real_eip !3
  %64 = add i64 %4, -12, !mcsema_real_eip !4
  %65 = inttoptr i64 %64 to i32*
  store i32 0, i32* %65, align 4, !mcsema_real_eip !4
  %66 = add i64 %4, -16, !mcsema_real_eip !5
  %67 = trunc i64 %3 to i32, !mcsema_real_eip !5
  %68 = inttoptr i64 %66 to i32*
  store i32 %67, i32* %68, align 4, !mcsema_real_eip !5
  %69 = add i64 %4, -24, !mcsema_real_eip !6
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !6
  store i64 %2, i64* %70, align 8, !mcsema_real_eip !6
  %71 = tail call x86_64_sysvcc i64 @malloc(i64 40), !mcsema_real_eip !7
  %72 = add i64 %4, -32, !mcsema_real_eip !8
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !8
  store i64 %71, i64* %73, align 8, !mcsema_real_eip !8
  %74 = tail call x86_64_sysvcc i64 @malloc(i64 40), !mcsema_real_eip !9
  %75 = add i64 %4, -40, !mcsema_real_eip !10
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !10
  store i64 %74, i64* %76, align 8, !mcsema_real_eip !10
  %77 = add i64 %4, -44, !mcsema_real_eip !11
  %78 = inttoptr i64 %77 to i32*
  store i32 0, i32* %78, align 4, !mcsema_real_eip !11
  br label %block_0xea.i

block_0x10c.i:                                    ; preds = %block_0xea.i
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !3
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !3
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %79 = add i64 %4, -48, !mcsema_real_eip !12
  %80 = inttoptr i64 %79 to i32*
  store i32 0, i32* %80, align 4, !mcsema_real_eip !12
  br label %block_0x11d.i

block_0xea.i:                                     ; preds = %block_0xea.i, %driverBlockRaw
  %81 = phi i32 [ 0, %driverBlockRaw ], [ %89, %block_0xea.i ]
  %82 = add i32 %81, 11
  %83 = sext i32 %81 to i64, !mcsema_real_eip !13
  %84 = load i64, i64* %73, align 8, !mcsema_real_eip !14
  %85 = shl nsw i64 %83, 2
  %86 = add i64 %85, %84, !mcsema_real_eip !15
  %87 = inttoptr i64 %86 to i32*
  store i32 %82, i32* %87, align 4, !mcsema_real_eip !15
  %88 = load i32, i32* %78, align 4, !mcsema_real_eip !16
  %89 = add i32 %88, 1
  store i32 %89, i32* %78, align 4, !mcsema_real_eip !17
  %90 = add i32 %88, -9
  %91 = icmp slt i32 %90, 0
  %92 = sub i32 8, %88
  %93 = and i32 %89, %92
  %94 = icmp slt i32 %93, 0
  %tmp211.i = xor i1 %91, %94
  br i1 %tmp211.i, label %block_0xea.i, label %block_0x10c.i, !mcsema_real_eip !18

block_0x13c.i:                                    ; preds = %block_0x11d.i
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !3
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %95 = add i64 %4, -88
  %96 = icmp ult i32 %190, 10, !mcsema_real_eip !19
  %97 = icmp eq i32 %191, 0, !mcsema_real_eip !19
  %98 = trunc i32 %191 to i8, !mcsema_real_eip !19
  %99 = tail call i8 @llvm.ctpop.i8(i8 %98), !mcsema_real_eip !19
  %100 = and i8 %99, 1
  %101 = icmp eq i8 %100, 0
  %102 = and i32 %192, 16, !mcsema_real_eip !19
  %103 = icmp ne i32 %102, 0, !mcsema_real_eip !19
  %104 = load i64, i64* %73, align 8, !mcsema_real_eip !20
  %105 = load i64, i64* %76, align 8, !mcsema_real_eip !21
  %106 = inttoptr i64 %95 to i32*
  store i32 10, i32* %106, align 4, !mcsema_real_eip !22
  %107 = add i64 %4, -80, !mcsema_real_eip !23
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !23
  store i64 %104, i64* %108, align 8, !mcsema_real_eip !23
  %109 = add i64 %4, -72, !mcsema_real_eip !24
  %110 = inttoptr i64 %109 to i32*
  store i32 10, i32* %110, align 4, !mcsema_real_eip !24
  %111 = add i64 %4, -64, !mcsema_real_eip !25
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !25
  store i64 %105, i64* %112, align 8, !mcsema_real_eip !25
  %113 = add i64 %4, -52, !mcsema_real_eip !26
  %114 = inttoptr i64 %113 to i32*
  store i32 10, i32* %114, align 4, !mcsema_real_eip !26
  %115 = add i64 %4, -96
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !27
  store i64 -4981261766360305936, i64* %116, align 8, !mcsema_real_eip !27
  store i64 10, i64* %RAX.i, align 8, !mcsema_real_eip !27
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !27
  %117 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> <i64 400, i64 300>, <2 x i64>* %117, align 8
  %118 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 200, i64 100>, <2 x i64>* %118, align 8
  store i64 %115, i64* %RSP.i, align 8, !mcsema_real_eip !27
  store i64 %62, i64* %RBP.i, align 8, !mcsema_real_eip !27
  %119 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 500, i64 600>, <2 x i64>* %119, align 8
  store i64 %104, i64* %R10.i, align 8, !mcsema_real_eip !27
  store i64 %105, i64* %R11.i, align 8, !mcsema_real_eip !27
  store i64 %6, i64* %R12.i, align 8, !mcsema_real_eip !27
  store i64 %7, i64* %R13.i, align 8, !mcsema_real_eip !27
  store i64 %8, i64* %R14.i, align 8, !mcsema_real_eip !27
  store i64 %9, i64* %R15.i, align 8, !mcsema_real_eip !27
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !27
  store i1 %96, i1* %CF.i, align 1, !mcsema_real_eip !27
  store i1 %101, i1* %PF.i, align 1, !mcsema_real_eip !27
  store i1 %103, i1* %AF.i, align 1, !mcsema_real_eip !27
  store i1 %97, i1* %ZF.i, align 1, !mcsema_real_eip !27
  store i1 %193, i1* %SF.i, align 1, !mcsema_real_eip !27
  store i1 %195, i1* %OF.i, align 1, !mcsema_real_eip !27
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !27
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !27
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !27
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !27
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !27
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !27
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !27
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !27
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !27
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !27
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !27
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !27
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !27
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !27
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !27
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !27
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !27
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !27
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !27
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !27
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !27
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !27
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !27
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !27
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !27
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !27
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !27
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !27
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !27
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !27
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !27
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !27
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !27
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !27
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !27
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !27
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !27
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !27
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !27
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !27
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !27
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !27
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !27
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !27
  store i64 %60, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !27
  store i64 %61, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !27
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast.i, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false)
  %120 = add i64 %4, -104
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !2
  store i64 %62, i64* %121, align 8, !mcsema_real_eip !2
  %122 = add i64 %4, -112
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !28
  store i64 %1, i64* %123, align 8, !mcsema_real_eip !28
  %124 = load i64, i64* %112, align 8, !mcsema_real_eip !29
  %125 = load i32, i32* %110, align 4, !mcsema_real_eip !30
  %126 = zext i32 %125 to i64
  %127 = load i64, i64* %108, align 8
  %128 = load i32, i32* %106, align 4, !mcsema_real_eip !31
  %129 = add i64 %4, -116, !mcsema_real_eip !32
  %130 = inttoptr i64 %129 to i32*
  store i32 100, i32* %130, align 4, !mcsema_real_eip !32
  %131 = add i64 %4, -120, !mcsema_real_eip !33
  %132 = inttoptr i64 %131 to i32*
  store i32 200, i32* %132, align 4, !mcsema_real_eip !33
  %133 = add i64 %4, -124, !mcsema_real_eip !34
  %134 = inttoptr i64 %133 to i32*
  store i32 300, i32* %134, align 4, !mcsema_real_eip !34
  %135 = add i64 %4, -128, !mcsema_real_eip !35
  %136 = inttoptr i64 %135 to i32*
  store i32 400, i32* %136, align 4, !mcsema_real_eip !35
  %137 = add i64 %4, -132, !mcsema_real_eip !36
  %138 = inttoptr i64 %137 to i32*
  store i32 500, i32* %138, align 4, !mcsema_real_eip !36
  %139 = add i64 %4, -136, !mcsema_real_eip !37
  %140 = inttoptr i64 %139 to i32*
  store i32 600, i32* %140, align 4, !mcsema_real_eip !37
  %141 = add i64 %4, -140, !mcsema_real_eip !38
  %142 = inttoptr i64 %141 to i32*
  store i32 %128, i32* %142, align 4, !mcsema_real_eip !38
  %143 = add i64 %4, -152, !mcsema_real_eip !39
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !39
  store i64 %127, i64* %144, align 8, !mcsema_real_eip !39
  %145 = add i64 %4, -156, !mcsema_real_eip !40
  %146 = inttoptr i64 %145 to i32*
  store i32 %125, i32* %146, align 4, !mcsema_real_eip !40
  %147 = add i64 %4, -168, !mcsema_real_eip !41
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !41
  store i64 %124, i64* %148, align 8, !mcsema_real_eip !41
  %149 = add i64 %4, -172, !mcsema_real_eip !42
  %150 = inttoptr i64 %149 to i32*
  store i32 0, i32* %150, align 4, !mcsema_real_eip !42
  %151 = add i64 %4, -176, !mcsema_real_eip !43
  %152 = inttoptr i64 %151 to i32*
  store i32 0, i32* %152, align 4, !mcsema_real_eip !43
  %153 = load i32, i32* %142, align 4, !mcsema_real_eip !44
  %154 = sub i32 0, %153, !mcsema_real_eip !44
  %155 = icmp slt i32 %154, 0
  %156 = and i32 %153, %154, !mcsema_real_eip !44
  %157 = icmp slt i32 %156, 0
  %tmp.i.i = xor i1 %155, %157
  br i1 %tmp.i.i, label %block_0x51.i.i.preheader, label %sub_a0.exit, !mcsema_real_eip !45

block_0x51.i.i.preheader:                         ; preds = %block_0x13c.i
  br label %block_0x51.i.i

block_0x7b.loopexit.i.i:                          ; preds = %block_0x51.i.i
  %158 = zext i32 %172 to i64, !mcsema_real_eip !46
  br label %sub_a0.exit

block_0x51.i.i:                                   ; preds = %block_0x51.i.i.preheader, %block_0x51.i.i
  %159 = phi i32 [ %174, %block_0x51.i.i ], [ 0, %block_0x51.i.i.preheader ]
  %160 = sext i32 %159 to i64, !mcsema_real_eip !47
  %161 = load i64, i64* %144, align 8, !mcsema_real_eip !48
  %162 = shl nsw i64 %160, 2
  %163 = add i64 %162, %161, !mcsema_real_eip !49
  %164 = inttoptr i64 %163 to i32*
  %165 = load i32, i32* %164, align 4, !mcsema_real_eip !49
  %166 = load i64, i64* %148, align 8, !mcsema_real_eip !50
  %167 = add i64 %166, %162, !mcsema_real_eip !51
  %168 = inttoptr i64 %167 to i32*
  %169 = load i32, i32* %168, align 4, !mcsema_real_eip !51
  %170 = sub i32 %165, %169, !mcsema_real_eip !51
  %171 = load i32, i32* %150, align 4, !mcsema_real_eip !46
  %172 = add i32 %170, %171
  store i32 %172, i32* %150, align 4, !mcsema_real_eip !52
  %173 = load i32, i32* %152, align 4, !mcsema_real_eip !53
  %174 = add i32 %173, 1
  store i32 %174, i32* %152, align 4, !mcsema_real_eip !54
  %175 = load i32, i32* %142, align 4, !mcsema_real_eip !44
  %176 = sub i32 %174, %175, !mcsema_real_eip !44
  %177 = xor i32 %176, %174, !mcsema_real_eip !44
  %178 = icmp slt i32 %176, 0
  %179 = xor i32 %175, %174, !mcsema_real_eip !44
  %180 = and i32 %177, %179, !mcsema_real_eip !44
  %181 = icmp slt i32 %180, 0
  %tmp71.i.i = xor i1 %178, %181
  br i1 %tmp71.i.i, label %block_0x51.i.i, label %block_0x7b.loopexit.i.i, !mcsema_real_eip !45

block_0x11d.i:                                    ; preds = %block_0x11d.i, %block_0x10c.i
  %182 = phi i32 [ 0, %block_0x10c.i ], [ %190, %block_0x11d.i ]
  %183 = add i32 %182, 1
  %184 = sext i32 %182 to i64, !mcsema_real_eip !55
  %185 = load i64, i64* %76, align 8, !mcsema_real_eip !56
  %186 = shl nsw i64 %184, 2
  %187 = add i64 %186, %185, !mcsema_real_eip !57
  %188 = inttoptr i64 %187 to i32*
  store i32 %183, i32* %188, align 4, !mcsema_real_eip !57
  %189 = load i32, i32* %80, align 4, !mcsema_real_eip !58
  %190 = add i32 %189, 1
  store i32 %190, i32* %80, align 4, !mcsema_real_eip !59
  %191 = add i32 %189, -9
  %192 = xor i32 %191, %190, !mcsema_real_eip !19
  %193 = icmp slt i32 %191, 0
  %194 = and i32 %192, %190, !mcsema_real_eip !19
  %195 = icmp slt i32 %194, 0
  %tmp215.i = xor i1 %193, %195
  br i1 %tmp215.i, label %block_0x11d.i, label %block_0x13c.i, !mcsema_real_eip !60

sub_a0.exit:                                      ; preds = %block_0x13c.i, %block_0x7b.loopexit.i.i
  %RDX_val.0.i.i = phi i64 [ 300, %block_0x13c.i ], [ %158, %block_0x7b.loopexit.i.i ]
  %196 = load i32, i32* %150, align 4, !mcsema_real_eip !61
  %197 = load i32, i32* %130, align 4, !mcsema_real_eip !62
  %198 = load i32, i32* %132, align 4, !mcsema_real_eip !63
  %199 = add i32 %198, %197
  %200 = load i32, i32* %134, align 4, !mcsema_real_eip !64
  %201 = add i32 %199, %200
  %202 = load i32, i32* %136, align 4, !mcsema_real_eip !65
  %203 = add i32 %201, %202
  %204 = load i32, i32* %138, align 4, !mcsema_real_eip !66
  %205 = add i32 %203, %204
  %206 = load i32, i32* %140, align 4, !mcsema_real_eip !67
  %uadd76.i.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %205, i32 %206) #2
  %207 = extractvalue { i32, i1 } %uadd76.i.i, 0
  %208 = xor i32 %205, %206, !mcsema_real_eip !67
  %209 = xor i32 %208, %207, !mcsema_real_eip !67
  %210 = and i32 %209, 16, !mcsema_real_eip !67
  %211 = icmp ne i32 %210, 0, !mcsema_real_eip !67
  %212 = icmp eq i32 %207, 0, !mcsema_real_eip !67
  %213 = trunc i32 %207 to i8, !mcsema_real_eip !67
  %214 = tail call i8 @llvm.ctpop.i8(i8 %213) #2, !mcsema_real_eip !67
  %215 = and i8 %214, 1
  %216 = icmp eq i8 %215, 0
  %217 = extractvalue { i32, i1 } %uadd76.i.i, 1
  %218 = zext i32 %207 to i64
  %219 = sext i32 %196 to i64, !mcsema_real_eip !68
  %220 = sext i32 %207 to i64, !mcsema_real_eip !68
  %221 = mul nsw i64 %220, %219, !mcsema_real_eip !68
  %222 = mul i32 %207, %196, !mcsema_real_eip !68
  %223 = sext i32 %222 to i64, !mcsema_real_eip !68
  %224 = icmp ne i64 %223, %221, !mcsema_real_eip !68
  %225 = zext i32 %222 to i64
  %226 = load i64, i64* %123, align 8
  %227 = load i64, i64* %121, align 8, !mcsema_real_eip !69
  store i64 %225, i64* %RAX.i, align 8, !mcsema_real_eip !70
  store i64 %226, i64* %RBX.i, align 8, !mcsema_real_eip !70
  store i64 %218, i64* %RCX.i, align 8, !mcsema_real_eip !70
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !70
  %228 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 200, i64 100>, <2 x i64>* %228, align 8
  store i64 %95, i64* %RSP.i, align 8, !mcsema_real_eip !70
  store i64 %227, i64* %RBP.i, align 8, !mcsema_real_eip !70
  %229 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 500, i64 600>, <2 x i64>* %229, align 8
  store i64 %126, i64* %R10.i, align 8, !mcsema_real_eip !70
  store i64 %127, i64* %R11.i, align 8, !mcsema_real_eip !70
  store i64 %6, i64* %R12.i, align 8, !mcsema_real_eip !70
  store i64 %7, i64* %R13.i, align 8, !mcsema_real_eip !70
  store i64 %8, i64* %R14.i, align 8, !mcsema_real_eip !70
  store i64 %9, i64* %R15.i, align 8, !mcsema_real_eip !70
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !70
  store i1 %217, i1* %CF.i, align 1, !mcsema_real_eip !70
  store i1 %216, i1* %PF.i, align 1, !mcsema_real_eip !70
  store i1 %211, i1* %AF.i, align 1, !mcsema_real_eip !70
  store i1 %212, i1* %ZF.i, align 1, !mcsema_real_eip !70
  store i1 %224, i1* %SF.i, align 1, !mcsema_real_eip !70
  store i1 %224, i1* %OF.i, align 1, !mcsema_real_eip !70
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !70
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* nonnull %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !70
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !70
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !70
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !70
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !70
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !70
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !70
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !70
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !70
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !70
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !70
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !70
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !70
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !70
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !70
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !70
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !70
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !70
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !70
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !70
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !70
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !70
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !70
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !70
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !70
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !70
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !70
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !70
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !70
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !70
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !70
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !70
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !70
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !70
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !70
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !70
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !70
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !70
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !70
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !70
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !70
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !70
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !70
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !70
  store i64 %60, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !70
  store i64 %61, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !70
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %13, i32 128, i32 4, i1 false), !mcsema_real_eip !27
  %uadd216.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %95, i64 80)
  %230 = extractvalue { i64, i1 } %uadd216.i, 0
  %231 = xor i64 %230, %95, !mcsema_real_eip !71
  %232 = and i64 %231, 16
  %233 = icmp eq i64 %232, 0
  %234 = icmp slt i64 %230, 0
  %235 = icmp eq i64 %230, 0, !mcsema_real_eip !71
  %236 = add i64 %4, 9223372036854775720
  %237 = and i64 %231, %236, !mcsema_real_eip !71
  %238 = icmp slt i64 %237, 0
  %239 = trunc i64 %230 to i8, !mcsema_real_eip !71
  %240 = tail call i8 @llvm.ctpop.i8(i8 %239), !mcsema_real_eip !71
  %241 = and i8 %240, 1
  %242 = icmp eq i8 %241, 0
  %243 = extractvalue { i64, i1 } %uadd216.i, 1
  %244 = inttoptr i64 %230 to i64*, !mcsema_real_eip !72
  %245 = load i64, i64* %244, align 8, !mcsema_real_eip !72
  %246 = add i64 %230, 16, !mcsema_real_eip !73
  store i64 %225, i64* %RAX.i, align 8, !mcsema_real_eip !73
  store i64 %226, i64* %RBX.i, align 8, !mcsema_real_eip !73
  store i64 %218, i64* %RCX.i, align 8, !mcsema_real_eip !73
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !73
  %247 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 200, i64 100>, <2 x i64>* %247, align 8
  store i64 %246, i64* %RSP.i, align 8, !mcsema_real_eip !73
  store i64 %245, i64* %RBP.i, align 8, !mcsema_real_eip !73
  %248 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> <i64 500, i64 600>, <2 x i64>* %248, align 8
  store i64 %126, i64* %R10.i, align 8, !mcsema_real_eip !73
  store i64 %127, i64* %R11.i, align 8, !mcsema_real_eip !73
  store i64 %6, i64* %R12.i, align 8, !mcsema_real_eip !73
  store i64 %7, i64* %R13.i, align 8, !mcsema_real_eip !73
  store i64 %8, i64* %R14.i, align 8, !mcsema_real_eip !73
  store i64 %9, i64* %R15.i, align 8, !mcsema_real_eip !73
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !73
  store i1 %243, i1* %CF.i, align 1, !mcsema_real_eip !73
  store i1 %242, i1* %PF.i, align 1, !mcsema_real_eip !73
  store i1 %233, i1* %AF.i, align 1, !mcsema_real_eip !73
  store i1 %235, i1* %ZF.i, align 1, !mcsema_real_eip !73
  store i1 %234, i1* %SF.i, align 1, !mcsema_real_eip !73
  store i1 %238, i1* %OF.i, align 1, !mcsema_real_eip !73
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !73
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !73
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !73
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !73
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !73
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !73
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !73
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !73
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !73
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !73
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !73
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !73
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !73
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !73
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !73
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !73
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !73
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !73
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !73
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !73
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !73
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !73
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !73
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !73
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !73
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !73
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !73
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !73
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !73
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !73
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !73
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !73
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !73
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !73
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !73
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !73
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !73
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !73
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !73
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !73
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !73
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !73
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !73
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !73
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !73
  store i64 %60, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !73
  store i64 %61, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !73
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

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
!3 = !{i64 160, [12 x i8] c"\09pushq\09%rbp\00"}
!4 = !{i64 175, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!5 = !{i64 182, [21 x i8] c"\09movl\09%edi, -8(%rbp)\00"}
!6 = !{i64 185, [22 x i8] c"\09movq\09%rsi, -16(%rbp)\00"}
!7 = !{i64 192, [9 x i8] c"\09callq\090\00"}
!8 = !{i64 204, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!9 = !{i64 208, [9 x i8] c"\09callq\090\00"}
!10 = !{i64 213, [22 x i8] c"\09movq\09%rax, -32(%rbp)\00"}
!11 = !{i64 217, [20 x i8] c"\09movl\09$0, -36(%rbp)\00"}
!12 = !{i64 268, [20 x i8] c"\09movl\09$0, -40(%rbp)\00"}
!13 = !{i64 243, [24 x i8] c"\09movslq\09-36(%rbp), %rcx\00"}
!14 = !{i64 247, [22 x i8] c"\09movq\09-24(%rbp), %rdx\00"}
!15 = !{i64 251, [26 x i8] c"\09movl\09%eax, (%rdx,%rcx,4)\00"}
!16 = !{i64 254, [22 x i8] c"\09movl\09-36(%rbp), %eax\00"}
!17 = !{i64 260, [22 x i8] c"\09movl\09%eax, -36(%rbp)\00"}
!18 = !{i64 228, [8 x i8] c"\09jge\0934\00"}
!19 = !{i64 275, [21 x i8] c"\09cmpl\09$10, -40(%rbp)\00"}
!20 = !{i64 353, [22 x i8] c"\09movq\09-24(%rbp), %r10\00"}
!21 = !{i64 357, [22 x i8] c"\09movq\09-32(%rbp), %r11\00"}
!22 = !{i64 361, [18 x i8] c"\09movl\09$10, (%rsp)\00"}
!23 = !{i64 368, [20 x i8] c"\09movq\09%r10, 8(%rsp)\00"}
!24 = !{i64 373, [20 x i8] c"\09movl\09$10, 16(%rsp)\00"}
!25 = !{i64 381, [21 x i8] c"\09movq\09%r11, 24(%rsp)\00"}
!26 = !{i64 386, [22 x i8] c"\09movl\09%eax, -44(%rbp)\00"}
!27 = !{i64 389, [12 x i8] c"\09callq\09-394\00"}
!28 = !{i64 4, [12 x i8] c"\09pushq\09%rbx\00"}
!29 = !{i64 5, [21 x i8] c"\09movq\0940(%rbp), %rax\00"}
!30 = !{i64 9, [22 x i8] c"\09movl\0932(%rbp), %r10d\00"}
!31 = !{i64 17, [21 x i8] c"\09movl\0916(%rbp), %ebx\00"}
!32 = !{i64 20, [22 x i8] c"\09movl\09%edi, -12(%rbp)\00"}
!33 = !{i64 23, [22 x i8] c"\09movl\09%esi, -16(%rbp)\00"}
!34 = !{i64 26, [22 x i8] c"\09movl\09%edx, -20(%rbp)\00"}
!35 = !{i64 29, [22 x i8] c"\09movl\09%ecx, -24(%rbp)\00"}
!36 = !{i64 32, [22 x i8] c"\09movl\09%r8d, -28(%rbp)\00"}
!37 = !{i64 36, [22 x i8] c"\09movl\09%r9d, -32(%rbp)\00"}
!38 = !{i64 40, [22 x i8] c"\09movl\09%ebx, -36(%rbp)\00"}
!39 = !{i64 43, [22 x i8] c"\09movq\09%r11, -48(%rbp)\00"}
!40 = !{i64 47, [23 x i8] c"\09movl\09%r10d, -52(%rbp)\00"}
!41 = !{i64 51, [22 x i8] c"\09movq\09%rax, -64(%rbp)\00"}
!42 = !{i64 55, [20 x i8] c"\09movl\09$0, -68(%rbp)\00"}
!43 = !{i64 62, [20 x i8] c"\09movl\09$0, -72(%rbp)\00"}
!44 = !{i64 72, [22 x i8] c"\09cmpl\09-36(%rbp), %eax\00"}
!45 = !{i64 75, [8 x i8] c"\09jge\0942\00"}
!46 = !{i64 103, [22 x i8] c"\09addl\09-68(%rbp), %edx\00"}
!47 = !{i64 81, [24 x i8] c"\09movslq\09-72(%rbp), %rax\00"}
!48 = !{i64 85, [22 x i8] c"\09movq\09-48(%rbp), %rcx\00"}
!49 = !{i64 89, [26 x i8] c"\09movl\09(%rcx,%rax,4), %edx\00"}
!50 = !{i64 96, [22 x i8] c"\09movq\09-64(%rbp), %rcx\00"}
!51 = !{i64 100, [26 x i8] c"\09subl\09(%rcx,%rax,4), %edx\00"}
!52 = !{i64 106, [22 x i8] c"\09movl\09%edx, -68(%rbp)\00"}
!53 = !{i64 109, [22 x i8] c"\09movl\09-72(%rbp), %eax\00"}
!54 = !{i64 115, [22 x i8] c"\09movl\09%eax, -72(%rbp)\00"}
!55 = !{i64 291, [24 x i8] c"\09movslq\09-40(%rbp), %rcx\00"}
!56 = !{i64 295, [22 x i8] c"\09movq\09-32(%rbp), %rdx\00"}
!57 = !{i64 299, [26 x i8] c"\09movl\09%eax, (%rdx,%rcx,4)\00"}
!58 = !{i64 302, [22 x i8] c"\09movl\09-40(%rbp), %eax\00"}
!59 = !{i64 308, [22 x i8] c"\09movl\09%eax, -40(%rbp)\00"}
!60 = !{i64 279, [8 x i8] c"\09jge\0931\00"}
!61 = !{i64 123, [22 x i8] c"\09movl\09-68(%rbp), %eax\00"}
!62 = !{i64 126, [22 x i8] c"\09movl\09-12(%rbp), %ecx\00"}
!63 = !{i64 129, [22 x i8] c"\09addl\09-16(%rbp), %ecx\00"}
!64 = !{i64 132, [22 x i8] c"\09addl\09-20(%rbp), %ecx\00"}
!65 = !{i64 135, [22 x i8] c"\09addl\09-24(%rbp), %ecx\00"}
!66 = !{i64 138, [22 x i8] c"\09addl\09-28(%rbp), %ecx\00"}
!67 = !{i64 141, [22 x i8] c"\09addl\09-32(%rbp), %ecx\00"}
!68 = !{i64 144, [18 x i8] c"\09imull\09%ecx, %eax\00"}
!69 = !{i64 148, [11 x i8] c"\09popq\09%rbp\00"}
!70 = !{i64 149, [6 x i8] c"\09retq\00"}
!71 = !{i64 394, [16 x i8] c"\09addq\09$80, %rsp\00"}
!72 = !{i64 398, [11 x i8] c"\09popq\09%rbp\00"}
!73 = !{i64 399, [6 x i8] c"\09retq\00"}
