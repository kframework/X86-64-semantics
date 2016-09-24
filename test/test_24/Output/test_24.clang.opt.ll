; ModuleID = 'Output/test_24.clang.opt.bc'
source_filename = "Output/test_24.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

declare x86_64_sysvcc i64 @strlen(i64 inreg) local_unnamed_addr

declare x86_64_sysvcc i64 @to_byte(i64 inreg) local_unnamed_addr

declare x86_64_sysvcc i64 @read_bytes(i64 inreg, i64 inreg, i64 inreg) local_unnamed_addr

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
  %1 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %2 = load i64, i64* %RDX.i, align 8, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %3 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %4 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %5 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %6 = load i64, i64* %RBP.i, align 8, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %7 = load i64, i64* %R8.i, align 8, !mcsema_real_eip !2
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %8 = load i64, i64* %R9.i, align 8, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %9 = load i64, i64* %R10.i, align 8, !mcsema_real_eip !2
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %10 = load i64, i64* %R11.i, align 8, !mcsema_real_eip !2
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %11 = load i64, i64* %R12.i, align 8, !mcsema_real_eip !2
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %12 = load i64, i64* %R13.i, align 8, !mcsema_real_eip !2
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %13 = load i64, i64* %R14.i, align 8, !mcsema_real_eip !2
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %14 = load i64, i64* %R15.i, align 8, !mcsema_real_eip !2
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %15 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %16 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !2
  %17 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %19 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %21 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %34 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %35 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %36 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %37 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %38 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %39 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %40 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %41 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %42 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %43 = bitcast i8* %42 to i64*
  %44 = load i64, i64* %43, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %45 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %46 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %47 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %48 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %49 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %63 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %64 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %65 = load i64, i64* %STACK_BASE.i, align 8, !mcsema_real_eip !2
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %66 = load i64, i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !2
  %67 = add i64 %5, -8
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !2
  store i64 %6, i64* %68, align 8, !mcsema_real_eip !2
  %69 = add i64 %5, -88
  %70 = add i64 %5, -24, !mcsema_real_eip !3
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !3
  store i64 %4, i64* %71, align 8, !mcsema_real_eip !3
  %72 = tail call x86_64_sysvcc i64 @strlen(i64 %4), !mcsema_real_eip !4
  %73 = add i64 %5, -40, !mcsema_real_eip !5
  %74 = trunc i64 %72 to i32, !mcsema_real_eip !5
  %75 = inttoptr i64 %73 to i32*
  store i32 %74, i32* %75, align 4, !mcsema_real_eip !5
  %76 = icmp eq i32 %74, 37
  br i1 %76, label %block_0x2f.i, label %block_0x24.i, !mcsema_real_eip !6

block_0x2f.i:                                     ; preds = %driverBlockRaw
  %77 = load i64, i64* %71, align 8, !mcsema_real_eip !7
  %78 = add i64 %77, 4
  store i64 %78, i64* %71, align 8, !mcsema_real_eip !8
  %79 = inttoptr i64 %78 to i8*
  %80 = load i8, i8* %79, align 1, !mcsema_real_eip !9
  %81 = sext i8 %80 to i64
  %82 = and i64 %81, 4294967295
  %83 = icmp eq i8 %80, 100
  br i1 %83, label %block_0x57.i, label %block_0x41a.i, !mcsema_real_eip !10

block_0x24.i:                                     ; preds = %driverBlockRaw
  %84 = and i64 %72, 4294967295
  br label %block_0x41a.i, !mcsema_real_eip !11

block_0x41a.i:                                    ; preds = %block_0x33b.i, %block_0x2d5.i, %block_0x283.i, %block_0x28f.i, %block_0x1cc.i, %block_0x10e.i, %block_0xa4.i, %block_0x79.i, %block_0x57.i, %block_0x24.i, %block_0x2f.i
  %RDI_val.0.i = phi i64 [ %RDI_val.2.i, %block_0x33b.i ], [ %RDI_val.1.i, %block_0x1cc.i ], [ 2, %block_0x10e.i ], [ 2, %block_0xa4.i ], [ %116, %block_0x79.i ], [ %108, %block_0x57.i ], [ %4, %block_0x2f.i ], [ %4, %block_0x24.i ], [ 0, %block_0x283.i ], [ 48351, %block_0x28f.i ], [ %RDI_val.2.i, %block_0x2d5.i ]
  %RSI_val.0.i = phi i64 [ %RSI_val.1.i, %block_0x33b.i ], [ %3, %block_0x1cc.i ], [ %3, %block_0x10e.i ], [ %3, %block_0xa4.i ], [ %3, %block_0x79.i ], [ %3, %block_0x57.i ], [ %3, %block_0x2f.i ], [ %3, %block_0x24.i ], [ %274, %block_0x283.i ], [ %262, %block_0x28f.i ], [ %RSI_val.1.i, %block_0x2d5.i ]
  %RDX_val.0.i = phi i64 [ %314, %block_0x33b.i ], [ %189, %block_0x1cc.i ], [ %138, %block_0x10e.i ], [ %138, %block_0xa4.i ], [ %2, %block_0x79.i ], [ %2, %block_0x57.i ], [ %2, %block_0x2f.i ], [ %2, %block_0x24.i ], [ 8, %block_0x283.i ], [ 8, %block_0x28f.i ], [ 8, %block_0x2d5.i ]
  %RCX_val.0.i = phi i64 [ 10000, %block_0x33b.i ], [ %201, %block_0x1cc.i ], [ %RCX_val.1.i, %block_0x10e.i ], [ %82, %block_0xa4.i ], [ %82, %block_0x79.i ], [ %82, %block_0x57.i ], [ %82, %block_0x2f.i ], [ %84, %block_0x24.i ], [ %215, %block_0x283.i ], [ %215, %block_0x28f.i ], [ %215, %block_0x2d5.i ]
  %.sink1.i = phi i32 [ %294, %block_0x33b.i ], [ -7, %block_0x1cc.i ], [ -6, %block_0x10e.i ], [ -5, %block_0xa4.i ], [ -4, %block_0x79.i ], [ -3, %block_0x57.i ], [ -2, %block_0x2f.i ], [ %74, %block_0x24.i ], [ -21, %block_0x283.i ], [ -21, %block_0x28f.i ], [ -22, %block_0x2d5.i ]
  %85 = add i64 %5, -12
  %86 = inttoptr i64 %85 to i32*
  store i32 %.sink1.i, i32* %86, align 4
  %87 = zext i32 %.sink1.i to i64, !mcsema_real_eip !12
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %69, i64 80)
  %88 = extractvalue { i64, i1 } %uadd.i, 0
  %89 = xor i64 %88, %69, !mcsema_real_eip !13
  %90 = and i64 %89, 16
  %91 = icmp eq i64 %90, 0
  %92 = icmp slt i64 %88, 0
  %93 = icmp eq i64 %88, 0, !mcsema_real_eip !13
  %94 = add i64 %5, 9223372036854775720
  %95 = and i64 %89, %94, !mcsema_real_eip !13
  %96 = icmp slt i64 %95, 0
  %97 = trunc i64 %88 to i8, !mcsema_real_eip !13
  %98 = tail call i8 @llvm.ctpop.i8(i8 %97), !mcsema_real_eip !13
  %99 = and i8 %98, 1
  %100 = icmp eq i8 %99, 0
  %101 = extractvalue { i64, i1 } %uadd.i, 1
  %102 = inttoptr i64 %88 to i64*, !mcsema_real_eip !14
  %103 = load i64, i64* %102, align 8, !mcsema_real_eip !14
  %104 = add i64 %88, 16, !mcsema_real_eip !15
  store i64 %87, i64* %RAX.i, align 8, !mcsema_real_eip !15
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !15
  store i64 %RCX_val.0.i, i64* %RCX.i, align 8, !mcsema_real_eip !15
  store i64 %RDX_val.0.i, i64* %RDX.i, align 8, !mcsema_real_eip !15
  store i64 %RSI_val.0.i, i64* %RSI.i, align 8, !mcsema_real_eip !15
  store i64 %RDI_val.0.i, i64* %RDI.i, align 8, !mcsema_real_eip !15
  store i64 %104, i64* %RSP.i, align 8, !mcsema_real_eip !15
  store i64 %103, i64* %RBP.i, align 8, !mcsema_real_eip !15
  store i64 %7, i64* %R8.i, align 8, !mcsema_real_eip !15
  store i64 %8, i64* %R9.i, align 8, !mcsema_real_eip !15
  store i64 %9, i64* %R10.i, align 8, !mcsema_real_eip !15
  store i64 %10, i64* %R11.i, align 8, !mcsema_real_eip !15
  store i64 %11, i64* %R12.i, align 8, !mcsema_real_eip !15
  store i64 %12, i64* %R13.i, align 8, !mcsema_real_eip !15
  store i64 %13, i64* %R14.i, align 8, !mcsema_real_eip !15
  store i64 %14, i64* %R15.i, align 8, !mcsema_real_eip !15
  store i64 %15, i64* %RIP.i, align 8, !mcsema_real_eip !15
  store i1 %101, i1* %CF.i, align 1, !mcsema_real_eip !15
  store i1 %100, i1* %PF.i, align 1, !mcsema_real_eip !15
  store i1 %91, i1* %AF.i, align 1, !mcsema_real_eip !15
  store i1 %93, i1* %ZF.i, align 1, !mcsema_real_eip !15
  store i1 %92, i1* %SF.i, align 1, !mcsema_real_eip !15
  store i1 %96, i1* %OF.i, align 1, !mcsema_real_eip !15
  store i1 %16, i1* %DF.i, align 1, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !15
  store i1 %19, i1* %FPU_B.i, align 1, !mcsema_real_eip !15
  store i1 %20, i1* %FPU_C3.i, align 1, !mcsema_real_eip !15
  store i3 %21, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !15
  store i1 %22, i1* %FPU_C2.i, align 1, !mcsema_real_eip !15
  store i1 %23, i1* %FPU_C1.i, align 1, !mcsema_real_eip !15
  store i1 %24, i1* %FPU_C0.i, align 1, !mcsema_real_eip !15
  store i1 %25, i1* %FPU_ES.i, align 1, !mcsema_real_eip !15
  store i1 %26, i1* %FPU_SF.i, align 1, !mcsema_real_eip !15
  store i1 %27, i1* %FPU_PE.i, align 1, !mcsema_real_eip !15
  store i1 %28, i1* %FPU_UE.i, align 1, !mcsema_real_eip !15
  store i1 %29, i1* %FPU_OE.i, align 1, !mcsema_real_eip !15
  store i1 %30, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !15
  store i1 %31, i1* %FPU_DE.i, align 1, !mcsema_real_eip !15
  store i1 %32, i1* %FPU_IE.i, align 1, !mcsema_real_eip !15
  store i1 %33, i1* %FPU_X.i, align 1, !mcsema_real_eip !15
  store i2 %34, i2* %FPU_RC.i, align 1, !mcsema_real_eip !15
  store i2 %35, i2* %FPU_PC.i, align 1, !mcsema_real_eip !15
  store i1 %36, i1* %FPU_PM.i, align 1, !mcsema_real_eip !15
  store i1 %37, i1* %FPU_UM.i, align 1, !mcsema_real_eip !15
  store i1 %38, i1* %FPU_OM.i, align 1, !mcsema_real_eip !15
  store i1 %39, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !15
  store i1 %40, i1* %FPU_DM.i, align 1, !mcsema_real_eip !15
  store i1 %41, i1* %FPU_IM.i, align 1, !mcsema_real_eip !15
  store i64 %44, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !15
  store i64 %46, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !15
  store i16 %47, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !15
  store i64 %48, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !15
  store i128 %49, i128* %XMM0.i, align 1, !mcsema_real_eip !15
  store i128 %50, i128* %XMM1.i, align 1, !mcsema_real_eip !15
  store i128 %51, i128* %XMM2.i, align 1, !mcsema_real_eip !15
  store i128 %52, i128* %XMM3.i, align 1, !mcsema_real_eip !15
  store i128 %53, i128* %XMM4.i, align 1, !mcsema_real_eip !15
  store i128 %54, i128* %XMM5.i, align 1, !mcsema_real_eip !15
  store i128 %55, i128* %XMM6.i, align 1, !mcsema_real_eip !15
  store i128 %56, i128* %XMM7.i, align 1, !mcsema_real_eip !15
  store i128 %57, i128* %XMM8.i, align 1, !mcsema_real_eip !15
  store i128 %58, i128* %XMM9.i, align 1, !mcsema_real_eip !15
  store i128 %59, i128* %XMM10.i, align 1, !mcsema_real_eip !15
  store i128 %60, i128* %XMM11.i, align 1, !mcsema_real_eip !15
  store i128 %61, i128* %XMM12.i, align 1, !mcsema_real_eip !15
  store i128 %62, i128* %XMM13.i, align 1, !mcsema_real_eip !15
  store i128 %63, i128* %XMM14.i, align 1, !mcsema_real_eip !15
  store i128 %64, i128* %XMM15.i, align 1, !mcsema_real_eip !15
  store i64 %65, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !15
  store i64 %66, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !15
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  br label %sub_0.exit

block_0x57.i:                                     ; preds = %block_0x2f.i
  %105 = add i64 %77, 5, !mcsema_real_eip !16
  %106 = inttoptr i64 %105 to i8*
  %107 = load i8, i8* %106, align 1, !mcsema_real_eip !16
  %108 = zext i8 %107 to i64
  %109 = tail call x86_64_sysvcc i64 @to_byte(i64 %108), !mcsema_real_eip !17
  %110 = trunc i64 %109 to i32, !mcsema_real_eip !18
  %111 = icmp eq i32 %110, 9
  br i1 %111, label %block_0x79.i, label %block_0x41a.i, !mcsema_real_eip !19

block_0x79.i:                                     ; preds = %block_0x57.i
  %112 = load i64, i64* %71, align 8, !mcsema_real_eip !20
  %113 = add i64 %112, 2, !mcsema_real_eip !21
  %114 = inttoptr i64 %113 to i8*
  %115 = load i8, i8* %114, align 1, !mcsema_real_eip !21
  %116 = zext i8 %115 to i64
  %117 = tail call x86_64_sysvcc i64 @to_byte(i64 %116), !mcsema_real_eip !22
  %118 = add i64 %5, -32, !mcsema_real_eip !23
  %119 = trunc i64 %117 to i32, !mcsema_real_eip !23
  %120 = inttoptr i64 %118 to i32*
  store i32 %119, i32* %120, align 4, !mcsema_real_eip !23
  %.mask260.i = and i32 %119, 2147483647
  %121 = icmp eq i32 %.mask260.i, 13
  br i1 %121, label %block_0xa4.i, label %block_0x41a.i, !mcsema_real_eip !24

block_0xa4.i:                                     ; preds = %block_0x79.i
  %122 = load i64, i64* %71, align 8, !mcsema_real_eip !25
  %123 = add i64 %122, 3, !mcsema_real_eip !26
  %124 = inttoptr i64 %123 to i8*
  %125 = load i8, i8* %124, align 1, !mcsema_real_eip !26
  %126 = zext i8 %125 to i64
  %127 = tail call x86_64_sysvcc i64 @to_byte(i64 %126), !mcsema_real_eip !27
  %128 = add i64 %5, -36, !mcsema_real_eip !28
  %129 = trunc i64 %127 to i32, !mcsema_real_eip !28
  %130 = inttoptr i64 %128 to i32*
  store i32 %129, i32* %130, align 4, !mcsema_real_eip !28
  %131 = add i32 %129, 1
  %.lobit.i = ashr i32 %131, 31
  %132 = zext i32 %.lobit.i to i64, !mcsema_real_eip !29
  %133 = shl nuw i64 %132, 32, !mcsema_real_eip !30
  %134 = sext i32 %131 to i64, !mcsema_real_eip !30
  %135 = or i64 %133, %134, !mcsema_real_eip !30
  %136 = sdiv i64 %135, 2, !mcsema_real_eip !30
  %137 = srem i64 %135, 2, !mcsema_real_eip !30
  %138 = and i64 %137, 4294967295
  %139 = trunc i64 %136 to i32, !mcsema_real_eip !31
  %140 = icmp eq i32 %139, 7
  br i1 %140, label %block_0xd7.i, label %block_0x41a.i, !mcsema_real_eip !32

block_0xd7.i:                                     ; preds = %block_0xa4.i
  %141 = load i64, i64* %71, align 8, !mcsema_real_eip !33
  %142 = add i64 %141, 4, !mcsema_real_eip !34
  %143 = inttoptr i64 %142 to i8*
  %144 = load i8, i8* %143, align 1, !mcsema_real_eip !34
  %145 = and i8 %144, 15
  %146 = icmp eq i8 %145, 1
  br i1 %146, label %block_0xeb.i, label %block_0x10e.i, !mcsema_real_eip !35

block_0x10e.i:                                    ; preds = %block_0xeb.i, %block_0xd7.i
  %RCX_val.1.in.i = phi i8 [ %147, %block_0xeb.i ], [ %145, %block_0xd7.i ]
  %RCX_val.1.i = zext i8 %RCX_val.1.in.i to i64
  br label %block_0x41a.i, !mcsema_real_eip !36

block_0xeb.i:                                     ; preds = %block_0xd7.i
  %147 = and i8 %144, -16
  %148 = icmp eq i8 %147, 48
  br i1 %148, label %block_0x102.i, label %block_0x10e.i, !mcsema_real_eip !37

block_0x102.i:                                    ; preds = %block_0xeb.i
  %149 = add i64 %5, -28, !mcsema_real_eip !38
  %150 = inttoptr i64 %149 to i32*
  store i32 -4, i32* %150, align 4, !mcsema_real_eip !38
  %151 = load i64, i64* %71, align 8, !mcsema_real_eip !39
  %152 = add i64 %151, 5, !mcsema_real_eip !40
  %153 = inttoptr i64 %152 to i8*
  %154 = load i8, i8* %153, align 1, !mcsema_real_eip !40
  %155 = and i8 %154, 15
  %156 = add i64 %5, -41, !mcsema_real_eip !41
  %157 = inttoptr i64 %156 to i8*
  store i8 %155, i8* %157, align 1, !mcsema_real_eip !41
  %158 = load i64, i64* %71, align 8, !mcsema_real_eip !42
  %159 = add i64 %158, 5, !mcsema_real_eip !43
  %160 = inttoptr i64 %159 to i8*
  %161 = load i8, i8* %160, align 1, !mcsema_real_eip !43
  %162 = and i8 %161, -16
  %163 = add i64 %5, -42, !mcsema_real_eip !44
  %164 = inttoptr i64 %163 to i8*
  store i8 %162, i8* %164, align 1, !mcsema_real_eip !44
  %165 = load i8, i8* %157, align 1, !mcsema_real_eip !45
  %166 = icmp eq i8 %165, 3
  %167 = icmp eq i8 %162, 96
  %or.cond.i = and i1 %167, %166
  %168 = load i32, i32* %150, align 4
  br i1 %or.cond.i, label %block_0x157.i, label %block_0x165.i, !mcsema_real_eip !46

block_0x165.i:                                    ; preds = %block_0x102.i
  %169 = add i32 %168, 5
  store i32 %169, i32* %150, align 4, !mcsema_real_eip !47
  %170 = load i64, i64* %71, align 8, !mcsema_real_eip !48
  %171 = add i64 %170, 6, !mcsema_real_eip !49
  %172 = inttoptr i64 %171 to i8*
  %173 = load i8, i8* %172, align 1, !mcsema_real_eip !49
  %174 = zext i8 %173 to i64
  %175 = tail call x86_64_sysvcc i64 @to_byte(i64 %174), !mcsema_real_eip !50
  %176 = add i64 %5, -43, !mcsema_real_eip !51
  %177 = trunc i64 %175 to i8, !mcsema_real_eip !51
  %178 = inttoptr i64 %176 to i8*
  store i8 %177, i8* %178, align 1, !mcsema_real_eip !51
  br label %block_0x1b7.i

block_0x157.i:                                    ; preds = %block_0x102.i
  %179 = add i32 %168, 4
  store i32 %179, i32* %150, align 4, !mcsema_real_eip !52
  %180 = load i64, i64* %71, align 8, !mcsema_real_eip !48
  %181 = add i64 %180, 6, !mcsema_real_eip !49
  %182 = inttoptr i64 %181 to i8*
  %183 = load i8, i8* %182, align 1, !mcsema_real_eip !49
  %184 = zext i8 %183 to i64
  %185 = tail call x86_64_sysvcc i64 @to_byte(i64 %184), !mcsema_real_eip !50
  %186 = add i64 %5, -43, !mcsema_real_eip !51
  %187 = trunc i64 %185 to i8, !mcsema_real_eip !51
  %188 = inttoptr i64 %186 to i8*
  store i8 %187, i8* %188, align 1, !mcsema_real_eip !51
  br label %block_0x1b7.i

block_0x1b7.i:                                    ; preds = %block_0x157.i, %block_0x165.i
  %.sink267.i = phi i8* [ %188, %block_0x157.i ], [ %178, %block_0x165.i ]
  %189 = load i64, i64* %71, align 8
  %190 = add i64 %189, 7
  %191 = inttoptr i64 %190 to i8*
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i64
  %194 = tail call x86_64_sysvcc i64 @to_byte(i64 %193)
  %195 = load i8, i8* %.sink267.i, align 1
  %196 = zext i8 %195 to i32
  %197 = trunc i64 %194 to i32
  %198 = or i32 %196, %197
  %199 = trunc i32 %198 to i8
  store i8 %199, i8* %.sink267.i, align 1
  %200 = load i32, i32* %150, align 4, !mcsema_real_eip !53
  %201 = zext i32 %200 to i64, !mcsema_real_eip !53
  %202 = and i32 %200, 31, !mcsema_real_eip !54
  %203 = add i32 %200, -1
  %204 = icmp ne i32 %202, 0, !mcsema_real_eip !54
  %205 = select i1 %204, i32 %203, i32 0, !mcsema_real_eip !54
  %206 = zext i1 %204 to i32
  %207 = shl i32 %200, %205, !mcsema_real_eip !54
  %208 = shl i32 %207, %206, !mcsema_real_eip !54
  %209 = icmp eq i32 %208, 0, !mcsema_real_eip !54
  store i32 %208, i32* %150, align 4, !mcsema_real_eip !55
  br i1 %209, label %block_0x1d8.i, label %block_0x1cc.i, !mcsema_real_eip !56

block_0x1d8.i:                                    ; preds = %block_0x1b7.i
  %210 = load i64, i64* %71, align 8, !mcsema_real_eip !57
  %211 = add i64 %210, 8
  %212 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %211, i64 4), !mcsema_real_eip !58
  %213 = and i64 %212, 65535
  %214 = and i64 %201, 4294901760, !mcsema_real_eip !59
  %215 = or i64 %213, %214
  %216 = add i64 %5, -46, !mcsema_real_eip !60
  %217 = trunc i64 %212 to i16, !mcsema_real_eip !60
  %218 = inttoptr i64 %216 to i16*
  store i16 %217, i16* %218, align 2, !mcsema_real_eip !60
  %219 = trunc i64 %212 to i32
  %220 = and i32 %219, 65535
  %221 = or i32 %220, 21845, !mcsema_real_eip !61
  %222 = icmp eq i32 %221, 56663
  %223 = or i32 %220, 43690
  %224 = icmp eq i32 %223, 65211
  %or.cond264.i = and i1 %222, %224
  br i1 %or.cond264.i, label %block_0x21e.i, label %block_0x22a.i, !mcsema_real_eip !62

block_0x1cc.i:                                    ; preds = %block_0x1b7.i
  %RDI_val.1.i = zext i32 %198 to i64
  br label %block_0x41a.i, !mcsema_real_eip !63

block_0x22a.i:                                    ; preds = %block_0x1d8.i
  store i32 48059, i32* %150, align 4, !mcsema_real_eip !64
  %225 = load i64, i64* %71, align 8, !mcsema_real_eip !65
  %226 = add i64 %225, 12
  %227 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %226, i64 8), !mcsema_real_eip !66
  %228 = add i64 %5, -52, !mcsema_real_eip !67
  %229 = trunc i64 %227 to i32, !mcsema_real_eip !67
  %230 = inttoptr i64 %228 to i32*
  store i32 %229, i32* %230, align 4, !mcsema_real_eip !67
  %231 = xor i32 %229, -1534560611, !mcsema_real_eip !68
  %232 = add i64 %5, -56, !mcsema_real_eip !69
  %233 = inttoptr i64 %232 to i32*
  store i32 %231, i32* %233, align 4, !mcsema_real_eip !69
  %234 = lshr i32 %231, 16
  %235 = add i64 %5, -60, !mcsema_real_eip !70
  %236 = inttoptr i64 %235 to i32*
  store i32 %234, i32* %236, align 4, !mcsema_real_eip !70
  %237 = load i32, i32* %233, align 4, !mcsema_real_eip !71
  %238 = and i32 %237, 65535, !mcsema_real_eip !72
  %239 = add i64 %5, -64, !mcsema_real_eip !73
  %240 = inttoptr i64 %239 to i32*
  store i32 %238, i32* %240, align 4, !mcsema_real_eip !73
  %241 = load i32, i32* %236, align 4, !mcsema_real_eip !74
  %242 = icmp eq i32 %241, 20299
  br i1 %242, label %block_0x277.i, label %block_0x28f.i, !mcsema_real_eip !75

block_0x21e.i:                                    ; preds = %block_0x1d8.i
  store i32 43690, i32* %150, align 4, !mcsema_real_eip !76
  %243 = load i64, i64* %71, align 8, !mcsema_real_eip !65
  %244 = add i64 %243, 12
  %245 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %244, i64 8), !mcsema_real_eip !66
  %246 = add i64 %5, -52, !mcsema_real_eip !67
  %247 = trunc i64 %245 to i32, !mcsema_real_eip !67
  %248 = inttoptr i64 %246 to i32*
  store i32 %247, i32* %248, align 4, !mcsema_real_eip !67
  %249 = xor i32 %247, -1534560611, !mcsema_real_eip !68
  %250 = add i64 %5, -56, !mcsema_real_eip !69
  %251 = inttoptr i64 %250 to i32*
  store i32 %249, i32* %251, align 4, !mcsema_real_eip !69
  %252 = lshr i32 %249, 16
  %253 = add i64 %5, -60, !mcsema_real_eip !70
  %254 = inttoptr i64 %253 to i32*
  store i32 %252, i32* %254, align 4, !mcsema_real_eip !70
  %255 = load i32, i32* %251, align 4, !mcsema_real_eip !71
  %256 = and i32 %255, 65535, !mcsema_real_eip !72
  %257 = add i64 %5, -64, !mcsema_real_eip !73
  %258 = inttoptr i64 %257 to i32*
  store i32 %256, i32* %258, align 4, !mcsema_real_eip !73
  %259 = load i32, i32* %254, align 4, !mcsema_real_eip !74
  %260 = icmp eq i32 %259, 20299
  br i1 %260, label %block_0x277.i, label %block_0x28f.i, !mcsema_real_eip !75

block_0x28f.i:                                    ; preds = %block_0x277.i, %block_0x21e.i, %block_0x22a.i
  store i32 48351, i32* %150, align 4, !mcsema_real_eip !77
  %261 = load i64, i64* %71, align 8, !mcsema_real_eip !78
  %262 = add i64 %261, 20
  %263 = tail call x86_64_sysvcc i64 @read_bytes(i64 48351, i64 %262, i64 8), !mcsema_real_eip !79
  %264 = add i64 %5, -68, !mcsema_real_eip !80
  %265 = trunc i64 %263 to i32, !mcsema_real_eip !80
  %266 = inttoptr i64 %264 to i32*
  %267 = add i32 %265, -3
  store i32 %267, i32* %266, align 4, !mcsema_real_eip !81
  %268 = and i32 %267, 7, !mcsema_real_eip !82
  %269 = icmp eq i32 %268, 0, !mcsema_real_eip !82
  br i1 %269, label %block_0x2d5.i, label %block_0x41a.i, !mcsema_real_eip !83

block_0x277.i:                                    ; preds = %block_0x21e.i, %block_0x22a.i
  %270 = phi i32 [ %256, %block_0x21e.i ], [ %238, %block_0x22a.i ]
  %271 = load i32, i32* %150, align 4, !mcsema_real_eip !84
  %272 = icmp eq i32 %270, %271
  br i1 %272, label %block_0x283.i, label %block_0x28f.i, !mcsema_real_eip !85

block_0x283.i:                                    ; preds = %block_0x277.i
  store i32 0, i32* %150, align 4, !mcsema_real_eip !86
  %273 = load i64, i64* %71, align 8, !mcsema_real_eip !78
  %274 = add i64 %273, 20
  %275 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %274, i64 8), !mcsema_real_eip !79
  %276 = add i64 %5, -68, !mcsema_real_eip !80
  %277 = trunc i64 %275 to i32, !mcsema_real_eip !80
  %278 = inttoptr i64 %276 to i32*
  %279 = add i32 %277, -3
  store i32 %279, i32* %278, align 4, !mcsema_real_eip !81
  %280 = and i32 %279, 7, !mcsema_real_eip !82
  %281 = icmp eq i32 %280, 0, !mcsema_real_eip !82
  br i1 %281, label %block_0x2d5.i, label %block_0x41a.i, !mcsema_real_eip !83

block_0x2d5.i:                                    ; preds = %block_0x283.i, %block_0x28f.i
  %282 = phi i32 [ %279, %block_0x283.i ], [ %267, %block_0x28f.i ]
  %.pre-phi272.i = phi i32* [ %278, %block_0x283.i ], [ %266, %block_0x28f.i ]
  %RDI_val.2.i = phi i64 [ 0, %block_0x283.i ], [ 48351, %block_0x28f.i ]
  %RSI_val.1.i = phi i64 [ %274, %block_0x283.i ], [ %262, %block_0x28f.i ]
  %283 = xor i32 %282, -2147483648
  store i32 %283, i32* %.pre-phi272.i, align 4, !mcsema_real_eip !87
  %284 = icmp eq i32 %282, -1879048193
  %285 = icmp ult i32 %283, 268435455, !mcsema_real_eip !88
  %286 = or i1 %284, %285, !mcsema_real_eip !89
  br i1 %286, label %block_0x2f9.i, label %block_0x41a.i, !mcsema_real_eip !89

block_0x2f9.i:                                    ; preds = %block_0x2d5.i
  %287 = lshr i32 %282, 4
  %288 = xor i32 %287, 135069696
  %289 = add nsw i32 %288, -226
  %290 = add i64 %5, -76, !mcsema_real_eip !90
  %291 = inttoptr i64 %290 to i32*
  store i32 10000, i32* %291, align 4, !mcsema_real_eip !90
  %292 = sext i32 %289 to i64
  %293 = udiv i64 %292, 10000, !mcsema_real_eip !91
  %294 = trunc i64 %293 to i32, !mcsema_real_eip !92
  store i32 %294, i32* %.pre-phi272.i, align 4, !mcsema_real_eip !92
  %295 = icmp eq i32 %294, 3
  br i1 %295, label %block_0x346.i, label %block_0x33b.i, !mcsema_real_eip !93

block_0x346.i:                                    ; preds = %block_0x2f9.i
  %296 = load i32, i32* %150, align 4, !mcsema_real_eip !94
  %297 = zext i32 %296 to i64, !mcsema_real_eip !94
  %298 = load i64, i64* %71, align 8, !mcsema_real_eip !95
  %299 = add i64 %298, 28
  %300 = tail call x86_64_sysvcc i64 @read_bytes(i64 %297, i64 %299, i64 4), !mcsema_real_eip !96
  %301 = add i64 %5, -72, !mcsema_real_eip !97
  %302 = trunc i64 %300 to i32, !mcsema_real_eip !97
  %303 = inttoptr i64 %301 to i32*
  store i32 %302, i32* %303, align 4, !mcsema_real_eip !97
  %304 = load i64, i64* %71, align 8, !mcsema_real_eip !98
  %305 = add i64 %304, 28
  %306 = inttoptr i64 %305 to i8*
  %307 = load i8, i8* %306, align 1, !mcsema_real_eip !99
  %308 = icmp eq i8 %307, 100
  %309 = add i64 %304, 29
  %310 = inttoptr i64 %309 to i8*
  %311 = load i8, i8* %310, align 1
  %312 = icmp eq i8 %311, 100
  %or.cond = and i1 %308, %312
  br i1 %or.cond, label %block_0x383.i, label %block_0x391.i, !mcsema_real_eip !100

block_0x33b.i:                                    ; preds = %block_0x2f9.i
  %313 = urem i64 %292, 10000, !mcsema_real_eip !91
  %314 = and i64 %313, 16383
  br label %block_0x41a.i, !mcsema_real_eip !101

block_0x391.i:                                    ; preds = %block_0x346.i
  %315 = icmp eq i8 %307, %311
  br i1 %315, label %block_0x3a9.i, label %block_0x409.i, !mcsema_real_eip !102

block_0x383.i:                                    ; preds = %block_0x346.i
  %316 = load i32, i32* %150, align 4, !mcsema_real_eip !103
  %317 = xor i32 %316, %302, !mcsema_real_eip !103
  store i32 %317, i32* %150, align 4, !mcsema_real_eip !104
  br label %block_0x414.i, !mcsema_real_eip !105

block_0x409.i:                                    ; preds = %block_0x391.i
  %318 = sext i8 %307 to i64
  %319 = sext i8 %311 to i64
  %320 = and i64 %319, 4294967295
  %321 = and i64 %318, 4294967295
  store i32 %302, i32* %150, align 4, !mcsema_real_eip !106
  br label %block_0x414.i, !mcsema_real_eip !107

block_0x3a9.i:                                    ; preds = %block_0x391.i
  %322 = add i64 %304, 31, !mcsema_real_eip !108
  %323 = inttoptr i64 %322 to i8*
  %324 = load i8, i8* %323, align 1, !mcsema_real_eip !108
  %325 = sext i8 %324 to i32, !mcsema_real_eip !108
  %326 = add i64 %304, 30, !mcsema_real_eip !109
  %327 = inttoptr i64 %326 to i8*
  %328 = load i8, i8* %327, align 1, !mcsema_real_eip !109
  %329 = sext i8 %328 to i32, !mcsema_real_eip !109
  %330 = zext i32 %329 to i64, !mcsema_real_eip !109
  %331 = load i32, i32* %150, align 4, !mcsema_real_eip !110
  %332 = sub nsw i32 15, %325
  %333 = add nsw i32 %332, %329
  %334 = add i32 %333, %331
  store i32 %334, i32* %150, align 4, !mcsema_real_eip !111
  %335 = load i64, i64* %71, align 8, !mcsema_real_eip !112
  %336 = add i64 %335, 28, !mcsema_real_eip !113
  %337 = inttoptr i64 %336 to i8*
  %338 = load i8, i8* %337, align 1, !mcsema_real_eip !113
  %339 = zext i8 %338 to i64
  %340 = tail call x86_64_sysvcc i64 @to_byte(i64 %339), !mcsema_real_eip !114
  %341 = load i32, i32* %150, align 4, !mcsema_real_eip !115
  %342 = trunc i64 %340 to i32, !mcsema_real_eip !116
  %343 = sub i32 %341, %342, !mcsema_real_eip !116
  %344 = zext i32 %343 to i64, !mcsema_real_eip !116
  store i32 %343, i32* %150, align 4, !mcsema_real_eip !117
  %345 = icmp eq i32 %343, 0, !mcsema_real_eip !118
  br i1 %345, label %block_0x3e7.i, label %block_0x414.i, !mcsema_real_eip !119

block_0x414.i:                                    ; preds = %block_0x3fd.i, %block_0x3e7.block_0x414_crit_edge.i, %block_0x3a9.i, %block_0x409.i, %block_0x383.i
  %346 = phi i32 [ %317, %block_0x383.i ], [ %.pre.i, %block_0x3e7.block_0x414_crit_edge.i ], [ -32, %block_0x3fd.i ], [ %343, %block_0x3a9.i ], [ %302, %block_0x409.i ]
  %RDI_val.4.i = phi i64 [ %297, %block_0x383.i ], [ %371, %block_0x3e7.block_0x414_crit_edge.i ], [ %371, %block_0x3fd.i ], [ %339, %block_0x3a9.i ], [ %297, %block_0x409.i ]
  %RSI_val.3.i = phi i64 [ %304, %block_0x383.i ], [ %330, %block_0x3e7.block_0x414_crit_edge.i ], [ %330, %block_0x3fd.i ], [ %330, %block_0x3a9.i ], [ %304, %block_0x409.i ]
  %RDX_val.4.i = phi i64 [ 4, %block_0x383.i ], [ %344, %block_0x3e7.block_0x414_crit_edge.i ], [ %344, %block_0x3fd.i ], [ %344, %block_0x3a9.i ], [ %320, %block_0x409.i ]
  %RCX_val.2.i = phi i64 [ 100, %block_0x383.i ], [ %335, %block_0x3e7.block_0x414_crit_edge.i ], [ %335, %block_0x3fd.i ], [ %335, %block_0x3a9.i ], [ %321, %block_0x409.i ]
  %347 = add i64 %5, -12, !mcsema_real_eip !120
  %348 = inttoptr i64 %347 to i32*
  store i32 %346, i32* %348, align 4, !mcsema_real_eip !120
  %349 = zext i32 %346 to i64, !mcsema_real_eip !12
  %uadd147.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %69, i64 80)
  %350 = extractvalue { i64, i1 } %uadd147.i, 0
  %351 = xor i64 %350, %69, !mcsema_real_eip !13
  %352 = and i64 %351, 16
  %353 = icmp eq i64 %352, 0
  %354 = icmp slt i64 %350, 0
  %355 = icmp eq i64 %350, 0, !mcsema_real_eip !13
  %356 = add i64 %5, 9223372036854775720
  %357 = and i64 %351, %356, !mcsema_real_eip !13
  %358 = icmp slt i64 %357, 0
  %359 = trunc i64 %350 to i8, !mcsema_real_eip !13
  %360 = tail call i8 @llvm.ctpop.i8(i8 %359), !mcsema_real_eip !13
  %361 = and i8 %360, 1
  %362 = icmp eq i8 %361, 0
  %363 = extractvalue { i64, i1 } %uadd147.i, 1
  %364 = inttoptr i64 %350 to i64*, !mcsema_real_eip !14
  %365 = load i64, i64* %364, align 8, !mcsema_real_eip !14
  %366 = add i64 %350, 16, !mcsema_real_eip !15
  store i64 %349, i64* %RAX.i, align 8, !mcsema_real_eip !15
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !15
  store i64 %RCX_val.2.i, i64* %RCX.i, align 8, !mcsema_real_eip !15
  store i64 %RDX_val.4.i, i64* %RDX.i, align 8, !mcsema_real_eip !15
  store i64 %RSI_val.3.i, i64* %RSI.i, align 8, !mcsema_real_eip !15
  store i64 %RDI_val.4.i, i64* %RDI.i, align 8, !mcsema_real_eip !15
  store i64 %366, i64* %RSP.i, align 8, !mcsema_real_eip !15
  store i64 %365, i64* %RBP.i, align 8, !mcsema_real_eip !15
  store i64 %7, i64* %R8.i, align 8, !mcsema_real_eip !15
  store i64 %8, i64* %R9.i, align 8, !mcsema_real_eip !15
  store i64 %9, i64* %R10.i, align 8, !mcsema_real_eip !15
  store i64 %10, i64* %R11.i, align 8, !mcsema_real_eip !15
  store i64 %11, i64* %R12.i, align 8, !mcsema_real_eip !15
  store i64 %12, i64* %R13.i, align 8, !mcsema_real_eip !15
  store i64 %13, i64* %R14.i, align 8, !mcsema_real_eip !15
  store i64 %14, i64* %R15.i, align 8, !mcsema_real_eip !15
  store i64 %15, i64* %RIP.i, align 8, !mcsema_real_eip !15
  store i1 %363, i1* %CF.i, align 1, !mcsema_real_eip !15
  store i1 %362, i1* %PF.i, align 1, !mcsema_real_eip !15
  store i1 %353, i1* %AF.i, align 1, !mcsema_real_eip !15
  store i1 %355, i1* %ZF.i, align 1, !mcsema_real_eip !15
  store i1 %354, i1* %SF.i, align 1, !mcsema_real_eip !15
  store i1 %358, i1* %OF.i, align 1, !mcsema_real_eip !15
  store i1 %16, i1* %DF.i, align 1, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !15
  store i1 %19, i1* %FPU_B.i, align 1, !mcsema_real_eip !15
  store i1 %20, i1* %FPU_C3.i, align 1, !mcsema_real_eip !15
  store i3 %21, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !15
  store i1 %22, i1* %FPU_C2.i, align 1, !mcsema_real_eip !15
  store i1 %23, i1* %FPU_C1.i, align 1, !mcsema_real_eip !15
  store i1 %24, i1* %FPU_C0.i, align 1, !mcsema_real_eip !15
  store i1 %25, i1* %FPU_ES.i, align 1, !mcsema_real_eip !15
  store i1 %26, i1* %FPU_SF.i, align 1, !mcsema_real_eip !15
  store i1 %27, i1* %FPU_PE.i, align 1, !mcsema_real_eip !15
  store i1 %28, i1* %FPU_UE.i, align 1, !mcsema_real_eip !15
  store i1 %29, i1* %FPU_OE.i, align 1, !mcsema_real_eip !15
  store i1 %30, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !15
  store i1 %31, i1* %FPU_DE.i, align 1, !mcsema_real_eip !15
  store i1 %32, i1* %FPU_IE.i, align 1, !mcsema_real_eip !15
  store i1 %33, i1* %FPU_X.i, align 1, !mcsema_real_eip !15
  store i2 %34, i2* %FPU_RC.i, align 1, !mcsema_real_eip !15
  store i2 %35, i2* %FPU_PC.i, align 1, !mcsema_real_eip !15
  store i1 %36, i1* %FPU_PM.i, align 1, !mcsema_real_eip !15
  store i1 %37, i1* %FPU_UM.i, align 1, !mcsema_real_eip !15
  store i1 %38, i1* %FPU_OM.i, align 1, !mcsema_real_eip !15
  store i1 %39, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !15
  store i1 %40, i1* %FPU_DM.i, align 1, !mcsema_real_eip !15
  store i1 %41, i1* %FPU_IM.i, align 1, !mcsema_real_eip !15
  store i64 %44, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !15
  store i64 %46, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !15
  store i16 %47, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !15
  store i64 %48, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !15
  store i128 %49, i128* %XMM0.i, align 1, !mcsema_real_eip !15
  store i128 %50, i128* %XMM1.i, align 1, !mcsema_real_eip !15
  store i128 %51, i128* %XMM2.i, align 1, !mcsema_real_eip !15
  store i128 %52, i128* %XMM3.i, align 1, !mcsema_real_eip !15
  store i128 %53, i128* %XMM4.i, align 1, !mcsema_real_eip !15
  store i128 %54, i128* %XMM5.i, align 1, !mcsema_real_eip !15
  store i128 %55, i128* %XMM6.i, align 1, !mcsema_real_eip !15
  store i128 %56, i128* %XMM7.i, align 1, !mcsema_real_eip !15
  store i128 %57, i128* %XMM8.i, align 1, !mcsema_real_eip !15
  store i128 %58, i128* %XMM9.i, align 1, !mcsema_real_eip !15
  store i128 %59, i128* %XMM10.i, align 1, !mcsema_real_eip !15
  store i128 %60, i128* %XMM11.i, align 1, !mcsema_real_eip !15
  store i128 %61, i128* %XMM12.i, align 1, !mcsema_real_eip !15
  store i128 %62, i128* %XMM13.i, align 1, !mcsema_real_eip !15
  store i128 %63, i128* %XMM14.i, align 1, !mcsema_real_eip !15
  store i128 %64, i128* %XMM15.i, align 1, !mcsema_real_eip !15
  store i64 %65, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !15
  store i64 %66, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !15
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  br label %sub_0.exit

block_0x3e7.i:                                    ; preds = %block_0x3a9.i
  %367 = load i64, i64* %71, align 8, !mcsema_real_eip !121
  %368 = add i64 %367, 31, !mcsema_real_eip !122
  %369 = inttoptr i64 %368 to i8*
  %370 = load i8, i8* %369, align 1, !mcsema_real_eip !122
  %371 = zext i8 %370 to i64
  %372 = tail call x86_64_sysvcc i64 @to_byte(i64 %371), !mcsema_real_eip !123
  %373 = trunc i64 %372 to i32, !mcsema_real_eip !124
  %374 = icmp eq i32 %373, 4
  br i1 %374, label %block_0x3e7.block_0x414_crit_edge.i, label %block_0x3fd.i, !mcsema_real_eip !125

block_0x3e7.block_0x414_crit_edge.i:              ; preds = %block_0x3e7.i
  %.pre.i = load i32, i32* %150, align 4
  br label %block_0x414.i

block_0x3fd.i:                                    ; preds = %block_0x3e7.i
  store i32 -32, i32* %150, align 4, !mcsema_real_eip !126
  br label %block_0x414.i, !mcsema_real_eip !127

sub_0.exit:                                       ; preds = %block_0x414.i, %block_0x41a.i
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
!2 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 8, [22 x i8] c"\09movq\09%rdi, -16(%rbp)\00"}
!4 = !{i64 16, [9 x i8] c"\09callq\090\00"}
!5 = !{i64 23, [22 x i8] c"\09movl\09%ecx, -32(%rbp)\00"}
!6 = !{i64 30, [7 x i8] c"\09je\0911\00"}
!7 = !{i64 47, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!8 = !{i64 55, [22 x i8] c"\09movq\09%rax, -16(%rbp)\00"}
!9 = !{i64 63, [21 x i8] c"\09movsbl\09(%rax), %ecx\00"}
!10 = !{i64 69, [7 x i8] c"\09je\0912\00"}
!11 = !{i64 42, [10 x i8] c"\09jmp\091003\00"}
!12 = !{i64 1050, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!13 = !{i64 1053, [16 x i8] c"\09addq\09$80, %rsp\00"}
!14 = !{i64 1057, [11 x i8] c"\09popq\09%rbp\00"}
!15 = !{i64 1058, [6 x i8] c"\09retq\00"}
!16 = !{i64 91, [22 x i8] c"\09movzbl\091(%rax), %edi\00"}
!17 = !{i64 95, [9 x i8] c"\09callq\090\00"}
!18 = !{i64 100, [15 x i8] c"\09cmpl\09$9, %eax\00"}
!19 = !{i64 103, [7 x i8] c"\09je\0912\00"}
!20 = !{i64 121, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!21 = !{i64 125, [22 x i8] c"\09movzbl\092(%rax), %edi\00"}
!22 = !{i64 129, [9 x i8] c"\09callq\090\00"}
!23 = !{i64 134, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!24 = !{i64 146, [7 x i8] c"\09je\0912\00"}
!25 = !{i64 164, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!26 = !{i64 168, [22 x i8] c"\09movzbl\093(%rax), %edi\00"}
!27 = !{i64 172, [9 x i8] c"\09callq\090\00"}
!28 = !{i64 182, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
!29 = !{i64 191, [6 x i8] c"\09cltd\00"}
!30 = !{i64 192, [12 x i8] c"\09idivl\09%edi\00"}
!31 = !{i64 194, [15 x i8] c"\09cmpl\09$7, %eax\00"}
!32 = !{i64 197, [7 x i8] c"\09je\0912\00"}
!33 = !{i64 215, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!34 = !{i64 219, [22 x i8] c"\09movsbl\094(%rax), %ecx\00"}
!35 = !{i64 229, [8 x i8] c"\09jne\0935\00"}
!36 = !{i64 277, [9 x i8] c"\09jmp\09768\00"}
!37 = !{i64 252, [8 x i8] c"\09jne\0912\00"}
!38 = !{i64 258, [29 x i8] c"\09movl\09$4294967292, -20(%rbp)\00"}
!39 = !{i64 282, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!40 = !{i64 286, [22 x i8] c"\09movsbl\095(%rax), %ecx\00"}
!41 = !{i64 295, [21 x i8] c"\09movb\09%dl, -33(%rbp)\00"}
!42 = !{i64 298, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!43 = !{i64 302, [22 x i8] c"\09movsbl\095(%rax), %ecx\00"}
!44 = !{i64 314, [21 x i8] c"\09movb\09%dl, -34(%rbp)\00"}
!45 = !{i64 317, [24 x i8] c"\09movzbl\09-33(%rbp), %ecx\00"}
!46 = !{i64 324, [8 x i8] c"\09jne\0927\00"}
!47 = !{i64 363, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!48 = !{i64 366, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!49 = !{i64 370, [22 x i8] c"\09movzbl\096(%rax), %edi\00"}
!50 = !{i64 374, [9 x i8] c"\09callq\090\00"}
!51 = !{i64 381, [21 x i8] c"\09movb\09%cl, -35(%rbp)\00"}
!52 = !{i64 349, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!53 = !{i64 439, [22 x i8] c"\09movl\09-20(%rbp), %ecx\00"}
!54 = !{i64 445, [16 x i8] c"\09shll\09%cl, %eax\00"}
!55 = !{i64 447, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!56 = !{i64 454, [7 x i8] c"\09je\0912\00"}
!57 = !{i64 479, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!58 = !{i64 490, [9 x i8] c"\09callq\090\00"}
!59 = !{i64 495, [15 x i8] c"\09movw\09%ax, %cx\00"}
!60 = !{i64 498, [21 x i8] c"\09movw\09%cx, -38(%rbp)\00"}
!61 = !{i64 506, [18 x i8] c"\09orl\09$21845, %eax\00"}
!62 = !{i64 516, [8 x i8] c"\09jne\0932\00"}
!63 = !{i64 467, [9 x i8] c"\09jmp\09578\00"}
!64 = !{i64 554, [24 x i8] c"\09movl\09$48059, -20(%rbp)\00"}
!65 = !{i64 568, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!66 = !{i64 579, [9 x i8] c"\09callq\090\00"}
!67 = !{i64 584, [22 x i8] c"\09movl\09%eax, -44(%rbp)\00"}
!68 = !{i64 590, [24 x i8] c"\09xorl\09$2760406685, %eax\00"}
!69 = !{i64 595, [22 x i8] c"\09movl\09%eax, -48(%rbp)\00"}
!70 = !{i64 604, [22 x i8] c"\09movl\09%eax, -52(%rbp)\00"}
!71 = !{i64 607, [22 x i8] c"\09movl\09-48(%rbp), %eax\00"}
!72 = !{i64 610, [19 x i8] c"\09andl\09$65535, %eax\00"}
!73 = !{i64 615, [22 x i8] c"\09movl\09%eax, -56(%rbp)\00"}
!74 = !{i64 618, [24 x i8] c"\09cmpl\09$20299, -52(%rbp)\00"}
!75 = !{i64 625, [8 x i8] c"\09jne\0924\00"}
!76 = !{i64 542, [24 x i8] c"\09movl\09$43690, -20(%rbp)\00"}
!77 = !{i64 655, [24 x i8] c"\09movl\09$48351, -20(%rbp)\00"}
!78 = !{i64 670, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!79 = !{i64 681, [9 x i8] c"\09callq\090\00"}
!80 = !{i64 686, [22 x i8] c"\09movl\09%eax, -60(%rbp)\00"}
!81 = !{i64 695, [22 x i8] c"\09movl\09%eax, -60(%rbp)\00"}
!82 = !{i64 701, [15 x i8] c"\09andl\09$7, %eax\00"}
!83 = !{i64 707, [7 x i8] c"\09je\0912\00"}
!84 = !{i64 634, [22 x i8] c"\09cmpl\09-20(%rbp), %eax\00"}
!85 = !{i64 637, [8 x i8] c"\09jne\0912\00"}
!86 = !{i64 643, [20 x i8] c"\09movl\09$0, -20(%rbp)\00"}
!87 = !{i64 733, [22 x i8] c"\09movl\09%eax, -60(%rbp)\00"}
!88 = !{i64 736, [28 x i8] c"\09cmpl\09$268435455, -60(%rbp)\00"}
!89 = !{i64 743, [8 x i8] c"\09jbe\0912\00"}
!90 = !{i64 802, [22 x i8] c"\09movl\09%eax, -68(%rbp)\00"}
!91 = !{i64 812, [11 x i8] c"\09divl\09%ecx\00"}
!92 = !{i64 814, [22 x i8] c"\09movl\09%eax, -60(%rbp)\00"}
!93 = !{i64 821, [7 x i8] c"\09je\0911\00"}
!94 = !{i64 843, [22 x i8] c"\09movl\09-20(%rbp), %edi\00"}
!95 = !{i64 846, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!96 = !{i64 857, [9 x i8] c"\09callq\090\00"}
!97 = !{i64 862, [22 x i8] c"\09movl\09%eax, -64(%rbp)\00"}
!98 = !{i64 865, [22 x i8] c"\09movq\09-16(%rbp), %rsi\00"}
!99 = !{i64 869, [23 x i8] c"\09movsbl\0928(%rsi), %eax\00"}
!100 = !{i64 876, [8 x i8] c"\09jne\0931\00"}
!101 = !{i64 833, [9 x i8] c"\09jmp\09212\00"}
!102 = !{i64 931, [8 x i8] c"\09jne\0996\00"}
!103 = !{i64 902, [22 x i8] c"\09xorl\09-20(%rbp), %eax\00"}
!104 = !{i64 905, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!105 = !{i64 908, [9 x i8] c"\09jmp\09131\00"}
!106 = !{i64 1036, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!107 = !{i64 1039, [7 x i8] c"\09jmp\090\00"}
!108 = !{i64 946, [23 x i8] c"\09movsbl\0931(%rcx), %edx\00"}
!109 = !{i64 954, [23 x i8] c"\09movsbl\0930(%rcx), %esi\00"}
!110 = !{i64 962, [22 x i8] c"\09addl\09-20(%rbp), %eax\00"}
!111 = !{i64 965, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!112 = !{i64 968, [22 x i8] c"\09movq\09-16(%rbp), %rcx\00"}
!113 = !{i64 972, [23 x i8] c"\09movzbl\0928(%rcx), %edi\00"}
!114 = !{i64 976, [9 x i8] c"\09callq\090\00"}
!115 = !{i64 981, [22 x i8] c"\09movl\09-20(%rbp), %edx\00"}
!116 = !{i64 984, [17 x i8] c"\09subl\09%eax, %edx\00"}
!117 = !{i64 986, [22 x i8] c"\09movl\09%edx, -20(%rbp)\00"}
!118 = !{i64 989, [20 x i8] c"\09cmpl\09$0, -20(%rbp)\00"}
!119 = !{i64 993, [8 x i8] c"\09jne\0929\00"}
!120 = !{i64 1047, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!121 = !{i64 999, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!122 = !{i64 1003, [23 x i8] c"\09movzbl\0931(%rax), %edi\00"}
!123 = !{i64 1007, [9 x i8] c"\09callq\090\00"}
!124 = !{i64 1012, [15 x i8] c"\09cmpl\09$4, %eax\00"}
!125 = !{i64 1015, [6 x i8] c"\09je\097\00"}
!126 = !{i64 1021, [29 x i8] c"\09movl\09$4294967264, -20(%rbp)\00"}
!127 = !{i64 1028, [7 x i8] c"\09jmp\096\00"}
