; ModuleID = 'Output/test_12.clang.opt.bc'
source_filename = "Output/test_12.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

declare x86_64_sysvcc i64 @close(i64 inreg) local_unnamed_addr

declare x86_64_sysvcc i64 @open(i64 inreg, i64 inreg) local_unnamed_addr

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
  %1 = bitcast i64* %RBX.i to <2 x i64>*
  %2 = load <2 x i64>, <2 x i64>* %1, align 8
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %3 = load i64, i64* %RDX.i, align 8, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %4 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %5 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %6 = load i64, i64* %RBP.i, align 8, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %7 = bitcast i64* %R8.i to <2 x i64>*
  %8 = load <2 x i64>, <2 x i64>* %7, align 8
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %9 = bitcast i64* %R10.i to <2 x i64>*
  %10 = load <2 x i64>, <2 x i64>* %9, align 8
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %11 = bitcast i64* %R12.i to <2 x i64>*
  %12 = load <2 x i64>, <2 x i64>* %11, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %13 = bitcast i64* %R14.i to <2 x i64>*
  %14 = load <2 x i64>, <2 x i64>* %13, align 8
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
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %49 = load i11, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !2
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
  %68 = add i64 %5, -8
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !2
  store i64 %6, i64* %69, align 8, !mcsema_real_eip !2
  %70 = add i64 %5, -40
  %71 = add i64 %5, -24, !mcsema_real_eip !3
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !3
  store i64 %4, i64* %72, align 8, !mcsema_real_eip !3
  %73 = tail call x86_64_sysvcc i64 @open(i64 %4, i64 0), !mcsema_real_eip !4
  %74 = add i64 %5, -28, !mcsema_real_eip !5
  %75 = trunc i64 %73 to i32, !mcsema_real_eip !5
  %76 = inttoptr i64 %74 to i32*
  store i32 %75, i32* %76, align 4, !mcsema_real_eip !5
  %77 = icmp eq i32 %75, -1
  %78 = add i64 %5, -12
  br i1 %77, label %entry.block_0x5a_crit_edge.i, label %block_0x3c.i, !mcsema_real_eip !6

entry.block_0x5a_crit_edge.i:                     ; preds = %driverBlockRaw
  %.pre.i = inttoptr i64 %78 to i32*
  br label %sub_10.exit

block_0x3c.i:                                     ; preds = %driverBlockRaw
  %79 = and i64 %73, 4294967295
  %80 = tail call x86_64_sysvcc i64 @close(i64 %79), !mcsema_real_eip !7
  %81 = inttoptr i64 %78 to i32*
  store i32 0, i32* %81, align 4, !mcsema_real_eip !8
  %82 = add i64 %5, -32, !mcsema_real_eip !9
  %83 = trunc i64 %80 to i32, !mcsema_real_eip !9
  br label %sub_10.exit, !mcsema_real_eip !10

sub_10.exit:                                      ; preds = %entry.block_0x5a_crit_edge.i, %block_0x3c.i
  %.pre-phi.i = phi i32* [ %.pre.i, %entry.block_0x5a_crit_edge.i ], [ %81, %block_0x3c.i ]
  %RDI_val.0.i = phi i64 [ %4, %entry.block_0x5a_crit_edge.i ], [ %79, %block_0x3c.i ]
  %.sink2.in.i = phi i64 [ %78, %entry.block_0x5a_crit_edge.i ], [ %82, %block_0x3c.i ]
  %.sink.i = phi i32 [ -1, %entry.block_0x5a_crit_edge.i ], [ %83, %block_0x3c.i ]
  %84 = inttoptr i64 %.sink2.in.i to i32*
  store i32 %.sink.i, i32* %84, align 4
  %85 = load i32, i32* %.pre-phi.i, align 4, !mcsema_real_eip !11
  %86 = zext i32 %85 to i64, !mcsema_real_eip !11
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %70, i64 32)
  %87 = extractvalue { i64, i1 } %uadd.i, 0
  %88 = xor i64 %87, %70, !mcsema_real_eip !12
  %89 = and i64 %88, 16, !mcsema_real_eip !12
  %90 = icmp ne i64 %89, 0, !mcsema_real_eip !12
  %91 = icmp slt i64 %87, 0
  %92 = icmp eq i64 %87, 0, !mcsema_real_eip !12
  %93 = add i64 %5, 9223372036854775768
  %94 = and i64 %88, %93, !mcsema_real_eip !12
  %95 = icmp slt i64 %94, 0
  %96 = trunc i64 %87 to i8, !mcsema_real_eip !12
  %97 = tail call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !12
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  %100 = extractvalue { i64, i1 } %uadd.i, 1
  %101 = inttoptr i64 %87 to i64*, !mcsema_real_eip !13
  %102 = load i64, i64* %101, align 8, !mcsema_real_eip !13
  %103 = add i64 %87, 16, !mcsema_real_eip !14
  store i64 %86, i64* %RAX.i, align 8, !mcsema_real_eip !14
  %104 = bitcast i64* %RBX.i to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %104, align 8
  store i64 %3, i64* %RDX.i, align 8, !mcsema_real_eip !14
  store i64 0, i64* %RSI.i, align 8, !mcsema_real_eip !14
  store i64 %RDI_val.0.i, i64* %RDI.i, align 8, !mcsema_real_eip !14
  store i64 %103, i64* %RSP.i, align 8, !mcsema_real_eip !14
  store i64 %102, i64* %RBP.i, align 8, !mcsema_real_eip !14
  %105 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %105, align 8
  %106 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %106, align 8
  %107 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %107, align 8
  %108 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %14, <2 x i64>* %108, align 8
  store i64 %15, i64* %RIP.i, align 8, !mcsema_real_eip !14
  store i1 %100, i1* %CF.i, align 1, !mcsema_real_eip !14
  store i1 %99, i1* %PF.i, align 1, !mcsema_real_eip !14
  store i1 %90, i1* %AF.i, align 1, !mcsema_real_eip !14
  store i1 %92, i1* %ZF.i, align 1, !mcsema_real_eip !14
  store i1 %91, i1* %SF.i, align 1, !mcsema_real_eip !14
  store i1 %95, i1* %OF.i, align 1, !mcsema_real_eip !14
  store i1 %16, i1* %DF.i, align 1, !mcsema_real_eip !14
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !14
  store i1 %19, i1* %FPU_B.i, align 1, !mcsema_real_eip !14
  store i1 %20, i1* %FPU_C3.i, align 1, !mcsema_real_eip !14
  store i3 %21, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !14
  store i1 %22, i1* %FPU_C2.i, align 1, !mcsema_real_eip !14
  store i1 %23, i1* %FPU_C1.i, align 1, !mcsema_real_eip !14
  store i1 %24, i1* %FPU_C0.i, align 1, !mcsema_real_eip !14
  store i1 %25, i1* %FPU_ES.i, align 1, !mcsema_real_eip !14
  store i1 %26, i1* %FPU_SF.i, align 1, !mcsema_real_eip !14
  store i1 %27, i1* %FPU_PE.i, align 1, !mcsema_real_eip !14
  store i1 %28, i1* %FPU_UE.i, align 1, !mcsema_real_eip !14
  store i1 %29, i1* %FPU_OE.i, align 1, !mcsema_real_eip !14
  store i1 %30, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !14
  store i1 %31, i1* %FPU_DE.i, align 1, !mcsema_real_eip !14
  store i1 %32, i1* %FPU_IE.i, align 1, !mcsema_real_eip !14
  store i1 %33, i1* %FPU_X.i, align 1, !mcsema_real_eip !14
  store i2 %34, i2* %FPU_RC.i, align 1, !mcsema_real_eip !14
  store i2 %35, i2* %FPU_PC.i, align 1, !mcsema_real_eip !14
  store i1 %36, i1* %FPU_PM.i, align 1, !mcsema_real_eip !14
  store i1 %37, i1* %FPU_UM.i, align 1, !mcsema_real_eip !14
  store i1 %38, i1* %FPU_OM.i, align 1, !mcsema_real_eip !14
  store i1 %39, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !14
  store i1 %40, i1* %FPU_DM.i, align 1, !mcsema_real_eip !14
  store i1 %41, i1* %FPU_IM.i, align 1, !mcsema_real_eip !14
  store i64 %44, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !14
  store i64 %46, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !14
  store i16 %47, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !14
  store i64 %48, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !14
  store i11 %49, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !14
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !14
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !14
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !14
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !14
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !14
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !14
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !14
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !14
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !14
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !14
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !14
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !14
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !14
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !14
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !14
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !14
  %109 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %67, <2 x i64>* %109, align 1
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

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 16}
!3 = !{i64 29}
!4 = !{i64 39}
!5 = !{i64 44}
!6 = !{i64 54}
!7 = !{i64 63}
!8 = !{i64 68}
!9 = !{i64 75}
!10 = !{i64 78}
!11 = !{i64 90}
!12 = !{i64 93}
!13 = !{i64 97}
!14 = !{i64 98}
