; ModuleID = 'Output/test_24.clang.trans.opt.bc'
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
  %_local_stack_alloc_260.i = alloca [88 x i64], align 8
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %1 = bitcast [88 x i64]* %_local_stack_alloc_260.i to i8*
  call void @llvm.lifetime.start(i64 704, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_start_.i = ptrtoint [88 x i64]* %_local_stack_alloc_260.i to i64
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %2 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %3 = load i64, i64* %RDX.i, align 8, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %4 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %5 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
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
  %67 = add i64 %_local_stack_start_.i, 80
  %68 = inttoptr i64 %67 to i64*
  store i64 %6, i64* %68, align 8, !mcsema_real_eip !2
  %69 = add i64 %_local_stack_start_.i, 64, !mcsema_real_eip !3
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !3
  store i64 %5, i64* %70, align 8, !mcsema_real_eip !3
  %71 = tail call x86_64_sysvcc i64 @strlen(i64 %5), !mcsema_real_eip !4
  %72 = add i64 %_local_stack_start_.i, 48, !mcsema_real_eip !5
  %73 = trunc i64 %71 to i32, !mcsema_real_eip !5
  %74 = inttoptr i64 %72 to i32*
  store i32 %73, i32* %74, align 8, !mcsema_real_eip !5
  %75 = icmp eq i32 %73, 37
  br i1 %75, label %block_0x2f.i, label %block_0x24.i, !mcsema_real_eip !6

block_0x2f.i:                                     ; preds = %driverBlockRaw
  %76 = load i64, i64* %70, align 8, !mcsema_real_eip !7
  %77 = add i64 %76, 4
  store i64 %77, i64* %70, align 8, !mcsema_real_eip !8
  %78 = inttoptr i64 %77 to i8*
  %79 = load i8, i8* %78, align 1, !mcsema_real_eip !9
  %80 = sext i8 %79 to i64
  %81 = and i64 %80, 4294967295
  %82 = icmp eq i8 %79, 100
  br i1 %82, label %block_0x57.i, label %block_0x41a.i, !mcsema_real_eip !10

block_0x24.i:                                     ; preds = %driverBlockRaw
  %83 = and i64 %71, 4294967295
  br label %block_0x41a.i, !mcsema_real_eip !11

block_0x41a.i:                                    ; preds = %block_0x33b.i, %block_0x2d5.i, %block_0x283.i, %block_0x28f.i, %block_0x1cc.i, %block_0x10e.i, %block_0xa4.i, %block_0x79.i, %block_0x57.i, %block_0x24.i, %block_0x2f.i
  %RDI_val.0.i = phi i64 [ %RDI_val.2.i, %block_0x33b.i ], [ %RDI_val.1.i, %block_0x1cc.i ], [ 2, %block_0x10e.i ], [ 2, %block_0xa4.i ], [ %113, %block_0x79.i ], [ %105, %block_0x57.i ], [ %5, %block_0x2f.i ], [ %5, %block_0x24.i ], [ 0, %block_0x283.i ], [ 48351, %block_0x28f.i ], [ %RDI_val.2.i, %block_0x2d5.i ]
  %RSI_val.0.i = phi i64 [ %RSI_val.1.i, %block_0x33b.i ], [ %4, %block_0x1cc.i ], [ %4, %block_0x10e.i ], [ %4, %block_0xa4.i ], [ %4, %block_0x79.i ], [ %4, %block_0x57.i ], [ %4, %block_0x2f.i ], [ %4, %block_0x24.i ], [ %271, %block_0x283.i ], [ %259, %block_0x28f.i ], [ %RSI_val.1.i, %block_0x2d5.i ]
  %RDX_val.0.i = phi i64 [ %311, %block_0x33b.i ], [ %186, %block_0x1cc.i ], [ %135, %block_0x10e.i ], [ %135, %block_0xa4.i ], [ %3, %block_0x79.i ], [ %3, %block_0x57.i ], [ %3, %block_0x2f.i ], [ %3, %block_0x24.i ], [ 8, %block_0x283.i ], [ 8, %block_0x28f.i ], [ 8, %block_0x2d5.i ]
  %RCX_val.0.i = phi i64 [ 10000, %block_0x33b.i ], [ %198, %block_0x1cc.i ], [ %RCX_val.1.i, %block_0x10e.i ], [ %81, %block_0xa4.i ], [ %81, %block_0x79.i ], [ %81, %block_0x57.i ], [ %81, %block_0x2f.i ], [ %83, %block_0x24.i ], [ %212, %block_0x283.i ], [ %212, %block_0x28f.i ], [ %212, %block_0x2d5.i ]
  %.sink1.i = phi i32 [ %291, %block_0x33b.i ], [ -7, %block_0x1cc.i ], [ -6, %block_0x10e.i ], [ -5, %block_0xa4.i ], [ -4, %block_0x79.i ], [ -3, %block_0x57.i ], [ -2, %block_0x2f.i ], [ %73, %block_0x24.i ], [ -21, %block_0x283.i ], [ -21, %block_0x28f.i ], [ -22, %block_0x2d5.i ]
  %84 = add i64 %_local_stack_start_.i, 76
  %85 = inttoptr i64 %84 to i32*
  store i32 %.sink1.i, i32* %85, align 4
  %86 = zext i32 %.sink1.i to i64, !mcsema_real_eip !12
  %87 = xor i64 %67, %_local_stack_start_.i, !mcsema_real_eip !13
  %88 = and i64 %87, 16
  %89 = icmp eq i64 %88, 0
  %90 = icmp slt i64 %67, 0
  %91 = icmp eq i64 %67, 0, !mcsema_real_eip !13
  %92 = xor i64 %_local_stack_start_.i, -9223372036854775808, !mcsema_real_eip !13
  %93 = and i64 %87, %92, !mcsema_real_eip !13
  %94 = icmp slt i64 %93, 0
  %95 = trunc i64 %67 to i8, !mcsema_real_eip !13
  %96 = tail call i8 @llvm.ctpop.i8(i8 %95), !mcsema_real_eip !13
  %97 = and i8 %96, 1
  %98 = icmp eq i8 %97, 0
  %99 = icmp ugt [88 x i64]* %_local_stack_alloc_260.i, inttoptr (i64 -81 to [88 x i64]*)
  %100 = load i64, i64* %68, align 8, !mcsema_real_eip !14
  %101 = add i64 %_local_stack_start_.i, 96, !mcsema_real_eip !15
  store i64 %86, i64* %RAX.i, align 8, !mcsema_real_eip !15
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !15
  store i64 %RCX_val.0.i, i64* %RCX.i, align 8, !mcsema_real_eip !15
  store i64 %RDX_val.0.i, i64* %RDX.i, align 8, !mcsema_real_eip !15
  store i64 %RSI_val.0.i, i64* %RSI.i, align 8, !mcsema_real_eip !15
  store i64 %RDI_val.0.i, i64* %RDI.i, align 8, !mcsema_real_eip !15
  store i64 %101, i64* %RSP.i, align 8, !mcsema_real_eip !15
  store i64 %100, i64* %RBP.i, align 8, !mcsema_real_eip !15
  store i64 %7, i64* %R8.i, align 8, !mcsema_real_eip !15
  store i64 %8, i64* %R9.i, align 8, !mcsema_real_eip !15
  store i64 %9, i64* %R10.i, align 8, !mcsema_real_eip !15
  store i64 %10, i64* %R11.i, align 8, !mcsema_real_eip !15
  store i64 %11, i64* %R12.i, align 8, !mcsema_real_eip !15
  store i64 %12, i64* %R13.i, align 8, !mcsema_real_eip !15
  store i64 %13, i64* %R14.i, align 8, !mcsema_real_eip !15
  store i64 %14, i64* %R15.i, align 8, !mcsema_real_eip !15
  store i64 %15, i64* %RIP.i, align 8, !mcsema_real_eip !15
  store i1 %99, i1* %CF.i, align 1, !mcsema_real_eip !15
  store i1 %98, i1* %PF.i, align 1, !mcsema_real_eip !15
  store i1 %89, i1* %AF.i, align 1, !mcsema_real_eip !15
  store i1 %91, i1* %ZF.i, align 1, !mcsema_real_eip !15
  store i1 %90, i1* %SF.i, align 1, !mcsema_real_eip !15
  store i1 %94, i1* %OF.i, align 1, !mcsema_real_eip !15
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
  call void @llvm.lifetime.end(i64 704, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  br label %sub_0.exit

block_0x57.i:                                     ; preds = %block_0x2f.i
  %102 = add i64 %76, 5, !mcsema_real_eip !16
  %103 = inttoptr i64 %102 to i8*
  %104 = load i8, i8* %103, align 1, !mcsema_real_eip !16
  %105 = zext i8 %104 to i64
  %106 = tail call x86_64_sysvcc i64 @to_byte(i64 %105), !mcsema_real_eip !17
  %107 = trunc i64 %106 to i32, !mcsema_real_eip !18
  %108 = icmp eq i32 %107, 9
  br i1 %108, label %block_0x79.i, label %block_0x41a.i, !mcsema_real_eip !19

block_0x79.i:                                     ; preds = %block_0x57.i
  %109 = load i64, i64* %70, align 8, !mcsema_real_eip !20
  %110 = add i64 %109, 2, !mcsema_real_eip !21
  %111 = inttoptr i64 %110 to i8*
  %112 = load i8, i8* %111, align 1, !mcsema_real_eip !21
  %113 = zext i8 %112 to i64
  %114 = tail call x86_64_sysvcc i64 @to_byte(i64 %113), !mcsema_real_eip !22
  %115 = add i64 %_local_stack_start_.i, 56, !mcsema_real_eip !23
  %116 = trunc i64 %114 to i32, !mcsema_real_eip !23
  %117 = inttoptr i64 %115 to i32*
  store i32 %116, i32* %117, align 8, !mcsema_real_eip !23
  %.mask261.i = and i32 %116, 2147483647
  %118 = icmp eq i32 %.mask261.i, 13
  br i1 %118, label %block_0xa4.i, label %block_0x41a.i, !mcsema_real_eip !24

block_0xa4.i:                                     ; preds = %block_0x79.i
  %119 = load i64, i64* %70, align 8, !mcsema_real_eip !25
  %120 = add i64 %119, 3, !mcsema_real_eip !26
  %121 = inttoptr i64 %120 to i8*
  %122 = load i8, i8* %121, align 1, !mcsema_real_eip !26
  %123 = zext i8 %122 to i64
  %124 = tail call x86_64_sysvcc i64 @to_byte(i64 %123), !mcsema_real_eip !27
  %125 = add i64 %_local_stack_start_.i, 52, !mcsema_real_eip !28
  %126 = trunc i64 %124 to i32, !mcsema_real_eip !28
  %127 = inttoptr i64 %125 to i32*
  store i32 %126, i32* %127, align 4, !mcsema_real_eip !28
  %128 = add i32 %126, 1
  %.lobit.i = ashr i32 %128, 31
  %129 = zext i32 %.lobit.i to i64, !mcsema_real_eip !29
  %130 = shl nuw i64 %129, 32, !mcsema_real_eip !30
  %131 = sext i32 %128 to i64, !mcsema_real_eip !30
  %132 = or i64 %130, %131, !mcsema_real_eip !30
  %133 = sdiv i64 %132, 2, !mcsema_real_eip !30
  %134 = srem i64 %132, 2, !mcsema_real_eip !30
  %135 = and i64 %134, 4294967295
  %136 = trunc i64 %133 to i32, !mcsema_real_eip !31
  %137 = icmp eq i32 %136, 7
  br i1 %137, label %block_0xd7.i, label %block_0x41a.i, !mcsema_real_eip !32

block_0xd7.i:                                     ; preds = %block_0xa4.i
  %138 = load i64, i64* %70, align 8, !mcsema_real_eip !33
  %139 = add i64 %138, 4, !mcsema_real_eip !34
  %140 = inttoptr i64 %139 to i8*
  %141 = load i8, i8* %140, align 1, !mcsema_real_eip !34
  %142 = and i8 %141, 15
  %143 = icmp eq i8 %142, 1
  br i1 %143, label %block_0xeb.i, label %block_0x10e.i, !mcsema_real_eip !35

block_0x10e.i:                                    ; preds = %block_0xeb.i, %block_0xd7.i
  %RCX_val.1.in.i = phi i8 [ %144, %block_0xeb.i ], [ %142, %block_0xd7.i ]
  %RCX_val.1.i = zext i8 %RCX_val.1.in.i to i64
  br label %block_0x41a.i, !mcsema_real_eip !36

block_0xeb.i:                                     ; preds = %block_0xd7.i
  %144 = and i8 %141, -16
  %145 = icmp eq i8 %144, 48
  br i1 %145, label %block_0x102.i, label %block_0x10e.i, !mcsema_real_eip !37

block_0x102.i:                                    ; preds = %block_0xeb.i
  %146 = add i64 %_local_stack_start_.i, 60, !mcsema_real_eip !38
  %147 = inttoptr i64 %146 to i32*
  store i32 -4, i32* %147, align 4, !mcsema_real_eip !38
  %148 = load i64, i64* %70, align 8, !mcsema_real_eip !39
  %149 = add i64 %148, 5, !mcsema_real_eip !40
  %150 = inttoptr i64 %149 to i8*
  %151 = load i8, i8* %150, align 1, !mcsema_real_eip !40
  %152 = and i8 %151, 15
  %153 = add i64 %_local_stack_start_.i, 47, !mcsema_real_eip !41
  %154 = inttoptr i64 %153 to i8*
  store i8 %152, i8* %154, align 1, !mcsema_real_eip !41
  %155 = load i64, i64* %70, align 8, !mcsema_real_eip !42
  %156 = add i64 %155, 5, !mcsema_real_eip !43
  %157 = inttoptr i64 %156 to i8*
  %158 = load i8, i8* %157, align 1, !mcsema_real_eip !43
  %159 = and i8 %158, -16
  %160 = add i64 %_local_stack_start_.i, 46, !mcsema_real_eip !44
  %161 = inttoptr i64 %160 to i8*
  store i8 %159, i8* %161, align 2, !mcsema_real_eip !44
  %162 = load i8, i8* %154, align 1, !mcsema_real_eip !45
  %163 = icmp eq i8 %162, 3
  %164 = icmp eq i8 %159, 96
  %or.cond.i = and i1 %164, %163
  %165 = load i32, i32* %147, align 4
  br i1 %or.cond.i, label %block_0x157.i, label %block_0x165.i, !mcsema_real_eip !46

block_0x165.i:                                    ; preds = %block_0x102.i
  %166 = add i32 %165, 5
  store i32 %166, i32* %147, align 4, !mcsema_real_eip !47
  %167 = load i64, i64* %70, align 8, !mcsema_real_eip !48
  %168 = add i64 %167, 6, !mcsema_real_eip !49
  %169 = inttoptr i64 %168 to i8*
  %170 = load i8, i8* %169, align 1, !mcsema_real_eip !49
  %171 = zext i8 %170 to i64
  %172 = tail call x86_64_sysvcc i64 @to_byte(i64 %171), !mcsema_real_eip !50
  %173 = add i64 %_local_stack_start_.i, 45, !mcsema_real_eip !51
  %174 = trunc i64 %172 to i8, !mcsema_real_eip !51
  %175 = inttoptr i64 %173 to i8*
  store i8 %174, i8* %175, align 1, !mcsema_real_eip !51
  br label %block_0x1b7.i

block_0x157.i:                                    ; preds = %block_0x102.i
  %176 = add i32 %165, 4
  store i32 %176, i32* %147, align 4, !mcsema_real_eip !52
  %177 = load i64, i64* %70, align 8, !mcsema_real_eip !48
  %178 = add i64 %177, 6, !mcsema_real_eip !49
  %179 = inttoptr i64 %178 to i8*
  %180 = load i8, i8* %179, align 1, !mcsema_real_eip !49
  %181 = zext i8 %180 to i64
  %182 = tail call x86_64_sysvcc i64 @to_byte(i64 %181), !mcsema_real_eip !50
  %183 = add i64 %_local_stack_start_.i, 45, !mcsema_real_eip !51
  %184 = trunc i64 %182 to i8, !mcsema_real_eip !51
  %185 = inttoptr i64 %183 to i8*
  store i8 %184, i8* %185, align 1, !mcsema_real_eip !51
  br label %block_0x1b7.i

block_0x1b7.i:                                    ; preds = %block_0x157.i, %block_0x165.i
  %.sink268.i = phi i8* [ %185, %block_0x157.i ], [ %175, %block_0x165.i ]
  %186 = load i64, i64* %70, align 8
  %187 = add i64 %186, 7
  %188 = inttoptr i64 %187 to i8*
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i64
  %191 = tail call x86_64_sysvcc i64 @to_byte(i64 %190)
  %192 = load i8, i8* %.sink268.i, align 1
  %193 = zext i8 %192 to i32
  %194 = trunc i64 %191 to i32
  %195 = or i32 %193, %194
  %196 = trunc i32 %195 to i8
  store i8 %196, i8* %.sink268.i, align 1
  %197 = load i32, i32* %147, align 4, !mcsema_real_eip !53
  %198 = zext i32 %197 to i64, !mcsema_real_eip !53
  %199 = and i32 %197, 31, !mcsema_real_eip !54
  %200 = add i32 %197, -1
  %201 = icmp ne i32 %199, 0, !mcsema_real_eip !54
  %202 = select i1 %201, i32 %200, i32 0, !mcsema_real_eip !54
  %203 = zext i1 %201 to i32
  %204 = shl i32 %197, %202, !mcsema_real_eip !54
  %205 = shl i32 %204, %203, !mcsema_real_eip !54
  %206 = icmp eq i32 %205, 0, !mcsema_real_eip !54
  store i32 %205, i32* %147, align 4, !mcsema_real_eip !55
  br i1 %206, label %block_0x1d8.i, label %block_0x1cc.i, !mcsema_real_eip !56

block_0x1d8.i:                                    ; preds = %block_0x1b7.i
  %207 = load i64, i64* %70, align 8, !mcsema_real_eip !57
  %208 = add i64 %207, 8
  %209 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %208, i64 4), !mcsema_real_eip !58
  %210 = and i64 %209, 65535
  %211 = and i64 %198, 4294901760, !mcsema_real_eip !59
  %212 = or i64 %210, %211
  %213 = add i64 %_local_stack_start_.i, 42, !mcsema_real_eip !60
  %214 = trunc i64 %209 to i16, !mcsema_real_eip !60
  %215 = inttoptr i64 %213 to i16*
  store i16 %214, i16* %215, align 2, !mcsema_real_eip !60
  %216 = trunc i64 %209 to i32
  %217 = and i32 %216, 65535
  %218 = or i32 %217, 21845, !mcsema_real_eip !61
  %219 = icmp eq i32 %218, 56663
  %220 = or i32 %217, 43690
  %221 = icmp eq i32 %220, 65211
  %or.cond265.i = and i1 %219, %221
  br i1 %or.cond265.i, label %block_0x21e.i, label %block_0x22a.i, !mcsema_real_eip !62

block_0x1cc.i:                                    ; preds = %block_0x1b7.i
  %RDI_val.1.i = zext i32 %195 to i64
  br label %block_0x41a.i, !mcsema_real_eip !63

block_0x22a.i:                                    ; preds = %block_0x1d8.i
  store i32 48059, i32* %147, align 4, !mcsema_real_eip !64
  %222 = load i64, i64* %70, align 8, !mcsema_real_eip !65
  %223 = add i64 %222, 12
  %224 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %223, i64 8), !mcsema_real_eip !66
  %225 = add i64 %_local_stack_start_.i, 36, !mcsema_real_eip !67
  %226 = trunc i64 %224 to i32, !mcsema_real_eip !67
  %227 = inttoptr i64 %225 to i32*
  store i32 %226, i32* %227, align 4, !mcsema_real_eip !67
  %228 = xor i32 %226, -1534560611, !mcsema_real_eip !68
  %229 = add i64 %_local_stack_start_.i, 32, !mcsema_real_eip !69
  %230 = inttoptr i64 %229 to i32*
  store i32 %228, i32* %230, align 8, !mcsema_real_eip !69
  %231 = lshr i32 %228, 16
  %232 = add i64 %_local_stack_start_.i, 28, !mcsema_real_eip !70
  %233 = inttoptr i64 %232 to i32*
  store i32 %231, i32* %233, align 4, !mcsema_real_eip !70
  %234 = load i32, i32* %230, align 8, !mcsema_real_eip !71
  %235 = and i32 %234, 65535, !mcsema_real_eip !72
  %236 = add i64 %_local_stack_start_.i, 24, !mcsema_real_eip !73
  %237 = inttoptr i64 %236 to i32*
  store i32 %235, i32* %237, align 8, !mcsema_real_eip !73
  %238 = load i32, i32* %233, align 4, !mcsema_real_eip !74
  %239 = icmp eq i32 %238, 20299
  br i1 %239, label %block_0x277.i, label %block_0x28f.i, !mcsema_real_eip !75

block_0x21e.i:                                    ; preds = %block_0x1d8.i
  store i32 43690, i32* %147, align 4, !mcsema_real_eip !76
  %240 = load i64, i64* %70, align 8, !mcsema_real_eip !65
  %241 = add i64 %240, 12
  %242 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %241, i64 8), !mcsema_real_eip !66
  %243 = add i64 %_local_stack_start_.i, 36, !mcsema_real_eip !67
  %244 = trunc i64 %242 to i32, !mcsema_real_eip !67
  %245 = inttoptr i64 %243 to i32*
  store i32 %244, i32* %245, align 4, !mcsema_real_eip !67
  %246 = xor i32 %244, -1534560611, !mcsema_real_eip !68
  %247 = add i64 %_local_stack_start_.i, 32, !mcsema_real_eip !69
  %248 = inttoptr i64 %247 to i32*
  store i32 %246, i32* %248, align 8, !mcsema_real_eip !69
  %249 = lshr i32 %246, 16
  %250 = add i64 %_local_stack_start_.i, 28, !mcsema_real_eip !70
  %251 = inttoptr i64 %250 to i32*
  store i32 %249, i32* %251, align 4, !mcsema_real_eip !70
  %252 = load i32, i32* %248, align 8, !mcsema_real_eip !71
  %253 = and i32 %252, 65535, !mcsema_real_eip !72
  %254 = add i64 %_local_stack_start_.i, 24, !mcsema_real_eip !73
  %255 = inttoptr i64 %254 to i32*
  store i32 %253, i32* %255, align 8, !mcsema_real_eip !73
  %256 = load i32, i32* %251, align 4, !mcsema_real_eip !74
  %257 = icmp eq i32 %256, 20299
  br i1 %257, label %block_0x277.i, label %block_0x28f.i, !mcsema_real_eip !75

block_0x28f.i:                                    ; preds = %block_0x277.i, %block_0x21e.i, %block_0x22a.i
  store i32 48351, i32* %147, align 4, !mcsema_real_eip !77
  %258 = load i64, i64* %70, align 8, !mcsema_real_eip !78
  %259 = add i64 %258, 20
  %260 = tail call x86_64_sysvcc i64 @read_bytes(i64 48351, i64 %259, i64 8), !mcsema_real_eip !79
  %261 = add i64 %_local_stack_start_.i, 20, !mcsema_real_eip !80
  %262 = trunc i64 %260 to i32, !mcsema_real_eip !80
  %263 = inttoptr i64 %261 to i32*
  %264 = add i32 %262, -3
  store i32 %264, i32* %263, align 4, !mcsema_real_eip !81
  %265 = and i32 %264, 7, !mcsema_real_eip !82
  %266 = icmp eq i32 %265, 0, !mcsema_real_eip !82
  br i1 %266, label %block_0x2d5.i, label %block_0x41a.i, !mcsema_real_eip !83

block_0x277.i:                                    ; preds = %block_0x21e.i, %block_0x22a.i
  %267 = phi i32 [ %253, %block_0x21e.i ], [ %235, %block_0x22a.i ]
  %268 = load i32, i32* %147, align 4, !mcsema_real_eip !84
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %block_0x283.i, label %block_0x28f.i, !mcsema_real_eip !85

block_0x283.i:                                    ; preds = %block_0x277.i
  store i32 0, i32* %147, align 4, !mcsema_real_eip !86
  %270 = load i64, i64* %70, align 8, !mcsema_real_eip !78
  %271 = add i64 %270, 20
  %272 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %271, i64 8), !mcsema_real_eip !79
  %273 = add i64 %_local_stack_start_.i, 20, !mcsema_real_eip !80
  %274 = trunc i64 %272 to i32, !mcsema_real_eip !80
  %275 = inttoptr i64 %273 to i32*
  %276 = add i32 %274, -3
  store i32 %276, i32* %275, align 4, !mcsema_real_eip !81
  %277 = and i32 %276, 7, !mcsema_real_eip !82
  %278 = icmp eq i32 %277, 0, !mcsema_real_eip !82
  br i1 %278, label %block_0x2d5.i, label %block_0x41a.i, !mcsema_real_eip !83

block_0x2d5.i:                                    ; preds = %block_0x283.i, %block_0x28f.i
  %279 = phi i32 [ %276, %block_0x283.i ], [ %264, %block_0x28f.i ]
  %.pre-phi273.i = phi i32* [ %275, %block_0x283.i ], [ %263, %block_0x28f.i ]
  %RDI_val.2.i = phi i64 [ 0, %block_0x283.i ], [ 48351, %block_0x28f.i ]
  %RSI_val.1.i = phi i64 [ %271, %block_0x283.i ], [ %259, %block_0x28f.i ]
  %280 = xor i32 %279, -2147483648
  store i32 %280, i32* %.pre-phi273.i, align 4, !mcsema_real_eip !87
  %281 = icmp eq i32 %279, -1879048193
  %282 = icmp ult i32 %280, 268435455, !mcsema_real_eip !88
  %283 = or i1 %281, %282, !mcsema_real_eip !89
  br i1 %283, label %block_0x2f9.i, label %block_0x41a.i, !mcsema_real_eip !89

block_0x2f9.i:                                    ; preds = %block_0x2d5.i
  %284 = lshr i32 %279, 4
  %285 = xor i32 %284, 135069696
  %286 = add nsw i32 %285, -226
  %287 = add i64 %_local_stack_start_.i, 12, !mcsema_real_eip !90
  %288 = inttoptr i64 %287 to i32*
  store i32 10000, i32* %288, align 4, !mcsema_real_eip !90
  %289 = sext i32 %286 to i64
  %290 = udiv i64 %289, 10000, !mcsema_real_eip !91
  %291 = trunc i64 %290 to i32, !mcsema_real_eip !92
  store i32 %291, i32* %.pre-phi273.i, align 4, !mcsema_real_eip !92
  %292 = icmp eq i32 %291, 3
  br i1 %292, label %block_0x346.i, label %block_0x33b.i, !mcsema_real_eip !93

block_0x346.i:                                    ; preds = %block_0x2f9.i
  %293 = load i32, i32* %147, align 4, !mcsema_real_eip !94
  %294 = zext i32 %293 to i64, !mcsema_real_eip !94
  %295 = load i64, i64* %70, align 8, !mcsema_real_eip !95
  %296 = add i64 %295, 28
  %297 = tail call x86_64_sysvcc i64 @read_bytes(i64 %294, i64 %296, i64 4), !mcsema_real_eip !96
  %298 = add i64 %_local_stack_start_.i, 16, !mcsema_real_eip !97
  %299 = trunc i64 %297 to i32, !mcsema_real_eip !97
  %300 = inttoptr i64 %298 to i32*
  store i32 %299, i32* %300, align 8, !mcsema_real_eip !97
  %301 = load i64, i64* %70, align 8, !mcsema_real_eip !98
  %302 = add i64 %301, 28
  %303 = inttoptr i64 %302 to i8*
  %304 = load i8, i8* %303, align 1, !mcsema_real_eip !99
  %305 = icmp eq i8 %304, 100
  %306 = add i64 %301, 29
  %307 = inttoptr i64 %306 to i8*
  %308 = load i8, i8* %307, align 1
  %309 = icmp eq i8 %308, 100
  %or.cond = and i1 %305, %309
  br i1 %or.cond, label %block_0x383.i, label %block_0x391.i, !mcsema_real_eip !100

block_0x33b.i:                                    ; preds = %block_0x2f9.i
  %310 = urem i64 %289, 10000, !mcsema_real_eip !91
  %311 = and i64 %310, 16383
  br label %block_0x41a.i, !mcsema_real_eip !101

block_0x391.i:                                    ; preds = %block_0x346.i
  %312 = icmp eq i8 %304, %308
  br i1 %312, label %block_0x3a9.i, label %block_0x409.i, !mcsema_real_eip !102

block_0x383.i:                                    ; preds = %block_0x346.i
  %313 = load i32, i32* %147, align 4, !mcsema_real_eip !103
  %314 = xor i32 %313, %299, !mcsema_real_eip !103
  store i32 %314, i32* %147, align 4, !mcsema_real_eip !104
  br label %block_0x414.i, !mcsema_real_eip !105

block_0x409.i:                                    ; preds = %block_0x391.i
  %315 = sext i8 %304 to i64
  %316 = sext i8 %308 to i64
  %317 = and i64 %316, 4294967295
  %318 = and i64 %315, 4294967295
  store i32 %299, i32* %147, align 4, !mcsema_real_eip !106
  br label %block_0x414.i, !mcsema_real_eip !107

block_0x3a9.i:                                    ; preds = %block_0x391.i
  %319 = add i64 %301, 31, !mcsema_real_eip !108
  %320 = inttoptr i64 %319 to i8*
  %321 = load i8, i8* %320, align 1, !mcsema_real_eip !108
  %322 = sext i8 %321 to i32, !mcsema_real_eip !108
  %323 = add i64 %301, 30, !mcsema_real_eip !109
  %324 = inttoptr i64 %323 to i8*
  %325 = load i8, i8* %324, align 1, !mcsema_real_eip !109
  %326 = sext i8 %325 to i32, !mcsema_real_eip !109
  %327 = zext i32 %326 to i64, !mcsema_real_eip !109
  %328 = load i32, i32* %147, align 4, !mcsema_real_eip !110
  %329 = sub nsw i32 15, %322
  %330 = add nsw i32 %329, %326
  %331 = add i32 %330, %328
  store i32 %331, i32* %147, align 4, !mcsema_real_eip !111
  %332 = load i64, i64* %70, align 8, !mcsema_real_eip !112
  %333 = add i64 %332, 28, !mcsema_real_eip !113
  %334 = inttoptr i64 %333 to i8*
  %335 = load i8, i8* %334, align 1, !mcsema_real_eip !113
  %336 = zext i8 %335 to i64
  %337 = tail call x86_64_sysvcc i64 @to_byte(i64 %336), !mcsema_real_eip !114
  %338 = load i32, i32* %147, align 4, !mcsema_real_eip !115
  %339 = trunc i64 %337 to i32, !mcsema_real_eip !116
  %340 = sub i32 %338, %339, !mcsema_real_eip !116
  %341 = zext i32 %340 to i64, !mcsema_real_eip !116
  store i32 %340, i32* %147, align 4, !mcsema_real_eip !117
  %342 = icmp eq i32 %340, 0, !mcsema_real_eip !118
  br i1 %342, label %block_0x3e7.i, label %block_0x414.i, !mcsema_real_eip !119

block_0x414.i:                                    ; preds = %block_0x3fd.i, %block_0x3e7.block_0x414_crit_edge.i, %block_0x3a9.i, %block_0x409.i, %block_0x383.i
  %343 = phi i32 [ %314, %block_0x383.i ], [ %.pre.i, %block_0x3e7.block_0x414_crit_edge.i ], [ -32, %block_0x3fd.i ], [ %340, %block_0x3a9.i ], [ %299, %block_0x409.i ]
  %RDI_val.4.i = phi i64 [ %294, %block_0x383.i ], [ %366, %block_0x3e7.block_0x414_crit_edge.i ], [ %366, %block_0x3fd.i ], [ %336, %block_0x3a9.i ], [ %294, %block_0x409.i ]
  %RSI_val.3.i = phi i64 [ %301, %block_0x383.i ], [ %327, %block_0x3e7.block_0x414_crit_edge.i ], [ %327, %block_0x3fd.i ], [ %327, %block_0x3a9.i ], [ %301, %block_0x409.i ]
  %RDX_val.4.i = phi i64 [ 4, %block_0x383.i ], [ %341, %block_0x3e7.block_0x414_crit_edge.i ], [ %341, %block_0x3fd.i ], [ %341, %block_0x3a9.i ], [ %317, %block_0x409.i ]
  %RCX_val.2.i = phi i64 [ 100, %block_0x383.i ], [ %332, %block_0x3e7.block_0x414_crit_edge.i ], [ %332, %block_0x3fd.i ], [ %332, %block_0x3a9.i ], [ %318, %block_0x409.i ]
  %344 = add i64 %_local_stack_start_.i, 76, !mcsema_real_eip !120
  %345 = inttoptr i64 %344 to i32*
  store i32 %343, i32* %345, align 4, !mcsema_real_eip !120
  %346 = zext i32 %343 to i64, !mcsema_real_eip !12
  %347 = xor i64 %67, %_local_stack_start_.i, !mcsema_real_eip !13
  %348 = and i64 %347, 16
  %349 = icmp eq i64 %348, 0
  %350 = icmp slt i64 %67, 0
  %351 = icmp eq i64 %67, 0, !mcsema_real_eip !13
  %352 = xor i64 %_local_stack_start_.i, -9223372036854775808, !mcsema_real_eip !13
  %353 = and i64 %347, %352, !mcsema_real_eip !13
  %354 = icmp slt i64 %353, 0
  %355 = trunc i64 %67 to i8, !mcsema_real_eip !13
  %356 = tail call i8 @llvm.ctpop.i8(i8 %355), !mcsema_real_eip !13
  %357 = and i8 %356, 1
  %358 = icmp eq i8 %357, 0
  %359 = icmp ugt [88 x i64]* %_local_stack_alloc_260.i, inttoptr (i64 -81 to [88 x i64]*)
  %360 = load i64, i64* %68, align 8, !mcsema_real_eip !14
  %361 = add i64 %_local_stack_start_.i, 96, !mcsema_real_eip !15
  store i64 %346, i64* %RAX.i, align 8, !mcsema_real_eip !15
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !15
  store i64 %RCX_val.2.i, i64* %RCX.i, align 8, !mcsema_real_eip !15
  store i64 %RDX_val.4.i, i64* %RDX.i, align 8, !mcsema_real_eip !15
  store i64 %RSI_val.3.i, i64* %RSI.i, align 8, !mcsema_real_eip !15
  store i64 %RDI_val.4.i, i64* %RDI.i, align 8, !mcsema_real_eip !15
  store i64 %361, i64* %RSP.i, align 8, !mcsema_real_eip !15
  store i64 %360, i64* %RBP.i, align 8, !mcsema_real_eip !15
  store i64 %7, i64* %R8.i, align 8, !mcsema_real_eip !15
  store i64 %8, i64* %R9.i, align 8, !mcsema_real_eip !15
  store i64 %9, i64* %R10.i, align 8, !mcsema_real_eip !15
  store i64 %10, i64* %R11.i, align 8, !mcsema_real_eip !15
  store i64 %11, i64* %R12.i, align 8, !mcsema_real_eip !15
  store i64 %12, i64* %R13.i, align 8, !mcsema_real_eip !15
  store i64 %13, i64* %R14.i, align 8, !mcsema_real_eip !15
  store i64 %14, i64* %R15.i, align 8, !mcsema_real_eip !15
  store i64 %15, i64* %RIP.i, align 8, !mcsema_real_eip !15
  store i1 %359, i1* %CF.i, align 1, !mcsema_real_eip !15
  store i1 %358, i1* %PF.i, align 1, !mcsema_real_eip !15
  store i1 %349, i1* %AF.i, align 1, !mcsema_real_eip !15
  store i1 %351, i1* %ZF.i, align 1, !mcsema_real_eip !15
  store i1 %350, i1* %SF.i, align 1, !mcsema_real_eip !15
  store i1 %354, i1* %OF.i, align 1, !mcsema_real_eip !15
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
  call void @llvm.lifetime.end(i64 704, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  br label %sub_0.exit

block_0x3e7.i:                                    ; preds = %block_0x3a9.i
  %362 = load i64, i64* %70, align 8, !mcsema_real_eip !121
  %363 = add i64 %362, 31, !mcsema_real_eip !122
  %364 = inttoptr i64 %363 to i8*
  %365 = load i8, i8* %364, align 1, !mcsema_real_eip !122
  %366 = zext i8 %365 to i64
  %367 = tail call x86_64_sysvcc i64 @to_byte(i64 %366), !mcsema_real_eip !123
  %368 = trunc i64 %367 to i32, !mcsema_real_eip !124
  %369 = icmp eq i32 %368, 4
  br i1 %369, label %block_0x3e7.block_0x414_crit_edge.i, label %block_0x3fd.i, !mcsema_real_eip !125

block_0x3e7.block_0x414_crit_edge.i:              ; preds = %block_0x3e7.i
  %.pre.i = load i32, i32* %147, align 4
  br label %block_0x414.i

block_0x3fd.i:                                    ; preds = %block_0x3e7.i
  store i32 -32, i32* %147, align 4, !mcsema_real_eip !126
  br label %block_0x414.i, !mcsema_real_eip !127

sub_0.exit:                                       ; preds = %block_0x414.i, %block_0x41a.i
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
