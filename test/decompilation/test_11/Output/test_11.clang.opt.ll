; ModuleID = 'Output/test_11.clang.opt.bc'
source_filename = "Output/test_11.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

declare x86_64_sysvcc i64 @malloc(i64 inreg) local_unnamed_addr

declare x86_64_sysvcc i64 @memset(i64 inreg, i64 inreg, i64 inreg) local_unnamed_addr

declare x86_64_sysvcc i64 @strlen(i64 inreg) local_unnamed_addr

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
  %2 = load i64, i64* %RCX.i, align 8, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %3 = load i64, i64* %RDX.i, align 8, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %4 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !2
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
  %71 = add i64 %6, -56
  %72 = add i64 %6, -24, !mcsema_real_eip !3
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !3
  store i64 %5, i64* %73, align 8, !mcsema_real_eip !3
  %74 = tail call x86_64_sysvcc i64 @strlen(i64 %5), !mcsema_real_eip !4
  %75 = add i64 %74, 1
  %76 = add i64 %6, -32, !mcsema_real_eip !5
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !5
  store i64 %75, i64* %77, align 8, !mcsema_real_eip !5
  %78 = tail call x86_64_sysvcc i64 @malloc(i64 %75), !mcsema_real_eip !6
  %79 = add i64 %6, -40, !mcsema_real_eip !7
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !7
  store i64 %78, i64* %80, align 8, !mcsema_real_eip !7
  %81 = icmp eq i64 %78, 0, !mcsema_real_eip !8
  br i1 %81, label %sub_20.exit, label %block_0x5a.i, !mcsema_real_eip !9

block_0x5a.i:                                     ; preds = %driverBlockRaw
  %82 = load i64, i64* %73, align 8, !mcsema_real_eip !10
  %83 = add i64 %6, -48, !mcsema_real_eip !11
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !11
  store i64 %82, i64* %84, align 8, !mcsema_real_eip !11
  %85 = load i64, i64* %80, align 8, !mcsema_real_eip !12
  %86 = inttoptr i64 %71 to i64*, !mcsema_real_eip !13
  store i64 %85, i64* %86, align 8, !mcsema_real_eip !13
  %87 = load i64, i64* %80, align 8, !mcsema_real_eip !14
  %88 = load i64, i64* %77, align 8, !mcsema_real_eip !15
  %89 = tail call x86_64_sysvcc i64 @memset(i64 %87, i64 0, i64 %88), !mcsema_real_eip !16
  %90 = inttoptr i64 %83 to i8**
  %91 = inttoptr i64 %71 to i8**
  br label %block_0x7c.i, !mcsema_real_eip !17

block_0x7c.i:                                     ; preds = %block_0xba.i, %block_0x5a.i
  %92 = load i8*, i8** %90, align 8
  %93 = load i8, i8* %92, align 1, !mcsema_real_eip !18
  switch i8 %93, label %block_0xae.i [
    i8 0, label %block_0xdb.i
    i8 47, label %block_0xba.i
  ]

block_0xdb.i:                                     ; preds = %block_0x7c.i
  %94 = load i64, i64* %80, align 8, !mcsema_real_eip !19
  br label %sub_20.exit, !mcsema_real_eip !20

block_0xae.i:                                     ; preds = %block_0x7c.i
  br label %block_0xba.i, !mcsema_real_eip !21

block_0xba.i:                                     ; preds = %block_0xae.i, %block_0x7c.i
  %.sink4.i = phi i8 [ %93, %block_0xae.i ], [ 92, %block_0x7c.i ]
  %.sink635.i = load i8*, i8** %91, align 8
  store i8 %.sink4.i, i8* %.sink635.i, align 1
  %95 = load i64, i64* %84, align 8, !mcsema_real_eip !22
  %96 = add i64 %95, 1
  store i64 %96, i64* %84, align 8, !mcsema_real_eip !23
  %97 = load i64, i64* %86, align 8, !mcsema_real_eip !24
  %98 = add i64 %97, 1
  store i64 %98, i64* %86, align 8, !mcsema_real_eip !25
  br label %block_0x7c.i, !mcsema_real_eip !26

sub_20.exit:                                      ; preds = %driverBlockRaw, %block_0xdb.i
  %RDI_val.0.i = phi i64 [ %87, %block_0xdb.i ], [ %75, %driverBlockRaw ]
  %RSI_val.0.i = phi i64 [ 0, %block_0xdb.i ], [ %4, %driverBlockRaw ]
  %RDX_val.0.i = phi i64 [ %88, %block_0xdb.i ], [ %3, %driverBlockRaw ]
  %RCX_val.0.i = phi i64 [ 0, %block_0xdb.i ], [ %2, %driverBlockRaw ]
  %.sink.i = phi i64 [ %94, %block_0xdb.i ], [ 0, %driverBlockRaw ]
  %99 = add i64 %6, -16
  %100 = inttoptr i64 %99 to i64*
  store i64 %.sink.i, i64* %100, align 8
  %uadd73.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %71, i64 48)
  %101 = extractvalue { i64, i1 } %uadd73.i, 0
  %102 = xor i64 %101, %71, !mcsema_real_eip !27
  %103 = and i64 %102, 16
  %104 = icmp eq i64 %103, 0
  %105 = icmp slt i64 %101, 0
  %106 = icmp eq i64 %101, 0, !mcsema_real_eip !27
  %107 = add i64 %6, 9223372036854775752
  %108 = and i64 %102, %107, !mcsema_real_eip !27
  %109 = icmp slt i64 %108, 0
  %110 = trunc i64 %101 to i8, !mcsema_real_eip !27
  %111 = tail call i8 @llvm.ctpop.i8(i8 %110), !mcsema_real_eip !27
  %112 = and i8 %111, 1
  %113 = icmp eq i8 %112, 0
  %114 = extractvalue { i64, i1 } %uadd73.i, 1
  %115 = inttoptr i64 %101 to i64*, !mcsema_real_eip !28
  %116 = load i64, i64* %115, align 8, !mcsema_real_eip !28
  %117 = add i64 %101, 16, !mcsema_real_eip !29
  store i64 %.sink.i, i64* %RAX.i, align 8, !mcsema_real_eip !29
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !29
  store i64 %RCX_val.0.i, i64* %RCX.i, align 8, !mcsema_real_eip !29
  store i64 %RDX_val.0.i, i64* %RDX.i, align 8, !mcsema_real_eip !29
  store i64 %RSI_val.0.i, i64* %RSI.i, align 8, !mcsema_real_eip !29
  store i64 %RDI_val.0.i, i64* %RDI.i, align 8, !mcsema_real_eip !29
  store i64 %117, i64* %RSP.i, align 8, !mcsema_real_eip !29
  store i64 %116, i64* %RBP.i, align 8, !mcsema_real_eip !29
  %118 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %118, align 8
  %119 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %119, align 8
  %120 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %120, align 8
  %121 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %121, align 8
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !29
  store i1 %114, i1* %CF.i, align 1, !mcsema_real_eip !29
  store i1 %113, i1* %PF.i, align 1, !mcsema_real_eip !29
  store i1 %104, i1* %AF.i, align 1, !mcsema_real_eip !29
  store i1 %106, i1* %ZF.i, align 1, !mcsema_real_eip !29
  store i1 %105, i1* %SF.i, align 1, !mcsema_real_eip !29
  store i1 %109, i1* %OF.i, align 1, !mcsema_real_eip !29
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !29
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !29
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !29
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !29
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !29
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !29
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !29
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !29
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !29
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !29
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !29
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !29
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !29
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !29
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !29
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !29
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !29
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !29
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !29
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !29
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !29
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !29
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !29
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !29
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !29
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !29
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !29
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !29
  store i11 %50, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !29
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !29
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !29
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !29
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !29
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !29
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !29
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !29
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !29
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !29
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !29
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !29
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !29
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !29
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !29
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !29
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !29
  %122 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %68, <2 x i64>* %122, align 1
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
!2 = !{i64 32}
!3 = !{i64 40}
!4 = !{i64 48}
!5 = !{i64 59}
!6 = !{i64 67}
!7 = !{i64 72}
!8 = !{i64 76}
!9 = !{i64 84}
!10 = !{i64 95}
!11 = !{i64 99}
!12 = !{i64 103}
!13 = !{i64 107}
!14 = !{i64 111}
!15 = !{i64 115}
!16 = !{i64 119}
!17 = !{i64 240}
!18 = !{i64 128}
!19 = !{i64 219}
!20 = !{i64 227}
!21 = !{i64 162}
!22 = !{i64 186}
!23 = !{i64 196}
!24 = !{i64 200}
!25 = !{i64 210}
!26 = !{i64 214}
!27 = !{i64 244}
!28 = !{i64 248}
!29 = !{i64 249}
