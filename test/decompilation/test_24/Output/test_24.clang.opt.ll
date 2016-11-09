; ModuleID = 'Output/test_24.clang.opt.bc'
source_filename = "Output/test_24.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

declare x86_64_sysvcc i64 @read_bytes(i64 inreg, i64 inreg, i64 inreg) local_unnamed_addr

declare x86_64_sysvcc i64 @strlen(i64 inreg) local_unnamed_addr

declare x86_64_sysvcc i64 @to_byte(i64 inreg) local_unnamed_addr

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
  %70 = add i64 %5, -88
  %71 = add i64 %5, -24, !mcsema_real_eip !3
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !3
  store i64 %4, i64* %72, align 8, !mcsema_real_eip !3
  %73 = tail call x86_64_sysvcc i64 @strlen(i64 %4), !mcsema_real_eip !4
  %74 = add i64 %5, -40, !mcsema_real_eip !5
  %75 = trunc i64 %73 to i32, !mcsema_real_eip !5
  %76 = inttoptr i64 %74 to i32*
  store i32 %75, i32* %76, align 4, !mcsema_real_eip !5
  %77 = icmp eq i32 %75, 37
  br i1 %77, label %block_0x32.i, label %block_0x27.i, !mcsema_real_eip !6

block_0x27.i:                                     ; preds = %driverBlockRaw
  %78 = and i64 %73, 4294967295
  br label %sub_0.exit, !mcsema_real_eip !7

block_0x32.i:                                     ; preds = %driverBlockRaw
  %79 = load i64, i64* %72, align 8, !mcsema_real_eip !8
  %80 = add i64 %79, 4
  store i64 %80, i64* %72, align 8, !mcsema_real_eip !9
  %81 = inttoptr i64 %80 to i8*
  %82 = load i8, i8* %81, align 1, !mcsema_real_eip !10
  %83 = sext i8 %82 to i64
  %84 = and i64 %83, 4294967295
  %85 = icmp eq i8 %82, 100
  br i1 %85, label %block_0x5f.i, label %sub_0.exit, !mcsema_real_eip !11

block_0x5f.i:                                     ; preds = %block_0x32.i
  %86 = add i64 %79, 5, !mcsema_real_eip !12
  %87 = inttoptr i64 %86 to i8*
  %88 = load i8, i8* %87, align 1, !mcsema_real_eip !12
  %89 = zext i8 %88 to i64
  %90 = tail call x86_64_sysvcc i64 @to_byte(i64 %89), !mcsema_real_eip !13
  %91 = trunc i64 %90 to i32, !mcsema_real_eip !14
  %92 = icmp eq i32 %91, 9
  br i1 %92, label %block_0x83.i, label %sub_0.exit, !mcsema_real_eip !15

block_0x83.i:                                     ; preds = %block_0x5f.i
  %93 = load i64, i64* %72, align 8, !mcsema_real_eip !16
  %94 = add i64 %93, 2, !mcsema_real_eip !17
  %95 = inttoptr i64 %94 to i8*
  %96 = load i8, i8* %95, align 1, !mcsema_real_eip !17
  %97 = zext i8 %96 to i64
  %98 = tail call x86_64_sysvcc i64 @to_byte(i64 %97), !mcsema_real_eip !18
  %99 = add i64 %5, -32, !mcsema_real_eip !19
  %100 = trunc i64 %98 to i32, !mcsema_real_eip !19
  %101 = inttoptr i64 %99 to i32*
  store i32 %100, i32* %101, align 4, !mcsema_real_eip !19
  %.mask171.i = and i32 %100, 2147483647
  %102 = icmp eq i32 %.mask171.i, 13
  br i1 %102, label %block_0xb0.i, label %sub_0.exit, !mcsema_real_eip !20

block_0xb0.i:                                     ; preds = %block_0x83.i
  %103 = load i64, i64* %72, align 8, !mcsema_real_eip !21
  %104 = add i64 %103, 3, !mcsema_real_eip !22
  %105 = inttoptr i64 %104 to i8*
  %106 = load i8, i8* %105, align 1, !mcsema_real_eip !22
  %107 = zext i8 %106 to i64
  %108 = tail call x86_64_sysvcc i64 @to_byte(i64 %107), !mcsema_real_eip !23
  %109 = add i64 %5, -36, !mcsema_real_eip !24
  %110 = trunc i64 %108 to i32, !mcsema_real_eip !24
  %111 = inttoptr i64 %109 to i32*
  store i32 %110, i32* %111, align 4, !mcsema_real_eip !24
  %112 = add i32 %110, 1
  %.lobit.i = ashr i32 %112, 31
  %113 = zext i32 %.lobit.i to i64, !mcsema_real_eip !25
  %114 = shl nuw i64 %113, 32, !mcsema_real_eip !26
  %115 = sext i32 %112 to i64, !mcsema_real_eip !26
  %116 = or i64 %114, %115, !mcsema_real_eip !26
  %117 = sdiv i64 %116, 2, !mcsema_real_eip !26
  %118 = srem i64 %116, 2, !mcsema_real_eip !26
  %119 = and i64 %118, 4294967295
  %120 = trunc i64 %117 to i32, !mcsema_real_eip !27
  %121 = icmp eq i32 %120, 7
  br i1 %121, label %block_0xe7.i, label %sub_0.exit, !mcsema_real_eip !28

block_0xe7.i:                                     ; preds = %block_0xb0.i
  %122 = load i64, i64* %72, align 8, !mcsema_real_eip !29
  %123 = add i64 %122, 4, !mcsema_real_eip !30
  %124 = inttoptr i64 %123 to i8*
  %125 = load i8, i8* %124, align 1, !mcsema_real_eip !30
  %126 = and i8 %125, 15
  %127 = icmp eq i8 %126, 1
  br i1 %127, label %block_0x101.i, label %block_0x127.i, !mcsema_real_eip !31

block_0x101.i:                                    ; preds = %block_0xe7.i
  %128 = and i8 %125, -16
  %129 = icmp eq i8 %128, 48
  br i1 %129, label %block_0x11b.i, label %block_0x127.i, !mcsema_real_eip !32

block_0x127.i:                                    ; preds = %block_0x101.i, %block_0xe7.i
  %RCX_val.1.in.i = phi i8 [ %128, %block_0x101.i ], [ %126, %block_0xe7.i ]
  %RCX_val.1.i = zext i8 %RCX_val.1.in.i to i64
  br label %sub_0.exit, !mcsema_real_eip !33

block_0x11b.i:                                    ; preds = %block_0x101.i
  %130 = add i64 %5, -28, !mcsema_real_eip !34
  %131 = inttoptr i64 %130 to i32*
  store i32 -4, i32* %131, align 4, !mcsema_real_eip !34
  %132 = load i64, i64* %72, align 8, !mcsema_real_eip !35
  %133 = add i64 %132, 5, !mcsema_real_eip !36
  %134 = inttoptr i64 %133 to i8*
  %135 = load i8, i8* %134, align 1, !mcsema_real_eip !36
  %136 = and i8 %135, 15
  %137 = add i64 %5, -41, !mcsema_real_eip !37
  %138 = inttoptr i64 %137 to i8*
  store i8 %136, i8* %138, align 1, !mcsema_real_eip !37
  %139 = load i64, i64* %72, align 8, !mcsema_real_eip !38
  %140 = add i64 %139, 5, !mcsema_real_eip !39
  %141 = inttoptr i64 %140 to i8*
  %142 = load i8, i8* %141, align 1, !mcsema_real_eip !39
  %143 = and i8 %142, -16
  %144 = add i64 %5, -42, !mcsema_real_eip !40
  %145 = inttoptr i64 %144 to i8*
  store i8 %143, i8* %145, align 1, !mcsema_real_eip !40
  %146 = load i8, i8* %138, align 1, !mcsema_real_eip !41
  %147 = icmp eq i8 %146, 3
  %148 = icmp eq i8 %143, 96
  %or.cond.i = and i1 %148, %147
  %.sink173.i = select i1 %or.cond.i, i32 4, i32 5
  %149 = load i32, i32* %131, align 4
  %150 = add i32 %.sink173.i, %149
  store i32 %150, i32* %131, align 4
  %151 = load i64, i64* %72, align 8, !mcsema_real_eip !42
  %152 = add i64 %151, 6, !mcsema_real_eip !43
  %153 = inttoptr i64 %152 to i8*
  %154 = load i8, i8* %153, align 1, !mcsema_real_eip !43
  %155 = zext i8 %154 to i64
  %156 = tail call x86_64_sysvcc i64 @to_byte(i64 %155), !mcsema_real_eip !44
  %157 = add i64 %5, -43, !mcsema_real_eip !45
  %158 = trunc i64 %156 to i8, !mcsema_real_eip !45
  %159 = inttoptr i64 %157 to i8*
  store i8 %158, i8* %159, align 1, !mcsema_real_eip !45
  %160 = load i64, i64* %72, align 8, !mcsema_real_eip !46
  %161 = add i64 %160, 7, !mcsema_real_eip !47
  %162 = inttoptr i64 %161 to i8*
  %163 = load i8, i8* %162, align 1, !mcsema_real_eip !47
  %164 = zext i8 %163 to i64
  %165 = tail call x86_64_sysvcc i64 @to_byte(i64 %164), !mcsema_real_eip !48
  %166 = load i8, i8* %159, align 1, !mcsema_real_eip !49
  %167 = zext i8 %166 to i32
  %168 = trunc i64 %165 to i32, !mcsema_real_eip !50
  %169 = or i32 %167, %168, !mcsema_real_eip !50
  %170 = trunc i32 %169 to i8, !mcsema_real_eip !50
  store i8 %170, i8* %159, align 1, !mcsema_real_eip !51
  %171 = load i32, i32* %131, align 4, !mcsema_real_eip !52
  %172 = zext i32 %171 to i64, !mcsema_real_eip !52
  %173 = and i32 %171, 31, !mcsema_real_eip !53
  %174 = add i32 %171, -1
  %175 = icmp ne i32 %173, 0, !mcsema_real_eip !53
  %176 = select i1 %175, i32 %174, i32 0, !mcsema_real_eip !53
  %177 = zext i1 %175 to i32
  %178 = shl i32 %171, %176, !mcsema_real_eip !53
  %179 = shl i32 %178, %177, !mcsema_real_eip !53
  %180 = icmp eq i32 %179, 0, !mcsema_real_eip !53
  store i32 %179, i32* %131, align 4, !mcsema_real_eip !54
  br i1 %180, label %block_0x206.i, label %block_0x1fa.i, !mcsema_real_eip !55

block_0x1fa.i:                                    ; preds = %block_0x11b.i
  %181 = zext i32 %169 to i64, !mcsema_real_eip !50
  br label %sub_0.exit, !mcsema_real_eip !56

block_0x206.i:                                    ; preds = %block_0x11b.i
  %182 = load i64, i64* %72, align 8, !mcsema_real_eip !57
  %183 = add i64 %182, 8
  %184 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %183, i64 4), !mcsema_real_eip !58
  %185 = and i64 %184, 65535
  %186 = and i64 %172, 4294901760, !mcsema_real_eip !59
  %187 = or i64 %185, %186
  %188 = add i64 %5, -46, !mcsema_real_eip !60
  %189 = trunc i64 %184 to i16, !mcsema_real_eip !60
  %190 = inttoptr i64 %188 to i16*
  store i16 %189, i16* %190, align 2, !mcsema_real_eip !60
  %191 = trunc i64 %184 to i32
  %192 = and i32 %191, 65535
  %193 = or i32 %192, 21845, !mcsema_real_eip !61
  %194 = icmp eq i32 %193, 56663
  %195 = or i32 %192, 43690
  %196 = icmp eq i32 %195, 65211
  %or.cond175.i = and i1 %194, %196
  %.sink10.i = select i1 %or.cond175.i, i32 43690, i32 48059
  store i32 %.sink10.i, i32* %131, align 4
  %197 = load i64, i64* %72, align 8, !mcsema_real_eip !62
  %198 = add i64 %197, 12
  %199 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %198, i64 8), !mcsema_real_eip !63
  %200 = add i64 %5, -52, !mcsema_real_eip !64
  %201 = trunc i64 %199 to i32, !mcsema_real_eip !64
  %202 = inttoptr i64 %200 to i32*
  store i32 %201, i32* %202, align 4, !mcsema_real_eip !64
  %203 = xor i32 %201, -1534560611, !mcsema_real_eip !65
  %204 = add i64 %5, -56, !mcsema_real_eip !66
  %205 = inttoptr i64 %204 to i32*
  store i32 %203, i32* %205, align 4, !mcsema_real_eip !66
  %206 = lshr i32 %203, 16
  %207 = add i64 %5, -60, !mcsema_real_eip !67
  %208 = inttoptr i64 %207 to i32*
  store i32 %206, i32* %208, align 4, !mcsema_real_eip !67
  %209 = load i32, i32* %205, align 4, !mcsema_real_eip !68
  %210 = and i32 %209, 65535, !mcsema_real_eip !69
  %211 = add i64 %5, -64, !mcsema_real_eip !70
  %212 = inttoptr i64 %211 to i32*
  store i32 %210, i32* %212, align 4, !mcsema_real_eip !70
  %213 = load i32, i32* %208, align 4, !mcsema_real_eip !71
  %214 = icmp eq i32 %213, 79
  br i1 %214, label %block_0x2af.i, label %block_0x2ce.i, !mcsema_real_eip !72

block_0x2af.i:                                    ; preds = %block_0x206.i
  %215 = load i32, i32* %131, align 4, !mcsema_real_eip !73
  %216 = icmp eq i32 %210, %215
  %..i = select i1 %216, i32 0, i32 48351
  br label %block_0x2ce.i

block_0x2ce.i:                                    ; preds = %block_0x2af.i, %block_0x206.i
  %.sink15.i = phi i32 [ 48351, %block_0x206.i ], [ %..i, %block_0x2af.i ]
  store i32 %.sink15.i, i32* %131, align 4
  %217 = zext i32 %.sink15.i to i64, !mcsema_real_eip !74
  %218 = load i64, i64* %72, align 8, !mcsema_real_eip !75
  %219 = add i64 %218, 20
  %220 = tail call x86_64_sysvcc i64 @read_bytes(i64 %217, i64 %219, i64 8), !mcsema_real_eip !76
  %221 = add i64 %5, -68, !mcsema_real_eip !77
  %222 = trunc i64 %220 to i32, !mcsema_real_eip !77
  %223 = inttoptr i64 %221 to i32*
  %224 = add i32 %222, -3
  store i32 %224, i32* %223, align 4, !mcsema_real_eip !78
  %225 = and i32 %224, 7, !mcsema_real_eip !79
  %226 = icmp eq i32 %225, 0, !mcsema_real_eip !79
  br i1 %226, label %block_0x315.i, label %sub_0.exit, !mcsema_real_eip !80

block_0x315.i:                                    ; preds = %block_0x2ce.i
  %227 = add i32 %222, 2147483645
  store i32 %227, i32* %223, align 4, !mcsema_real_eip !81
  %228 = icmp ult i32 %227, 268435456
  br i1 %228, label %block_0x339.i, label %sub_0.exit, !mcsema_real_eip !82

block_0x339.i:                                    ; preds = %block_0x315.i
  %229 = lshr i32 %227, 4
  %230 = xor i32 %229, 851968
  %231 = add nsw i32 %230, -226
  %232 = add i64 %5, -76, !mcsema_real_eip !83
  %233 = inttoptr i64 %232 to i32*
  store i32 10000, i32* %233, align 4, !mcsema_real_eip !83
  %234 = sext i32 %231 to i64
  %235 = udiv i64 %234, 10000, !mcsema_real_eip !84
  %236 = trunc i64 %235 to i32, !mcsema_real_eip !85
  store i32 %236, i32* %223, align 4, !mcsema_real_eip !85
  %237 = icmp eq i32 %236, 3
  br i1 %237, label %block_0x389.i, label %block_0x37e.i, !mcsema_real_eip !86

block_0x37e.i:                                    ; preds = %block_0x339.i
  %238 = urem i64 %234, 10000, !mcsema_real_eip !84
  %239 = and i64 %238, 16383
  br label %sub_0.exit, !mcsema_real_eip !87

block_0x389.i:                                    ; preds = %block_0x339.i
  %240 = load i32, i32* %131, align 4, !mcsema_real_eip !88
  %241 = zext i32 %240 to i64, !mcsema_real_eip !88
  %242 = load i64, i64* %72, align 8, !mcsema_real_eip !89
  %243 = add i64 %242, 28
  %244 = tail call x86_64_sysvcc i64 @read_bytes(i64 %241, i64 %243, i64 4), !mcsema_real_eip !90
  %245 = add i64 %5, -72, !mcsema_real_eip !91
  %246 = trunc i64 %244 to i32, !mcsema_real_eip !91
  %247 = inttoptr i64 %245 to i32*
  store i32 %246, i32* %247, align 4, !mcsema_real_eip !91
  %248 = load i64, i64* %72, align 8, !mcsema_real_eip !92
  %249 = add i64 %248, 28
  %250 = inttoptr i64 %249 to i8*
  %251 = load i8, i8* %250, align 1, !mcsema_real_eip !93
  %252 = icmp eq i8 %251, 100
  %253 = add i64 %248, 29
  %254 = inttoptr i64 %253 to i8*
  %255 = load i8, i8* %254, align 1
  %256 = icmp eq i8 %255, 100
  %or.cond = and i1 %252, %256
  br i1 %or.cond, label %block_0x3cd.i, label %block_0x3dd.i, !mcsema_real_eip !94

block_0x3dd.i:                                    ; preds = %block_0x389.i
  %257 = icmp eq i8 %251, %255
  br i1 %257, label %block_0x3f5.i, label %block_0x45c.i, !mcsema_real_eip !95

block_0x3f5.i:                                    ; preds = %block_0x3dd.i
  %258 = add i64 %248, 31, !mcsema_real_eip !96
  %259 = inttoptr i64 %258 to i8*
  %260 = load i8, i8* %259, align 1, !mcsema_real_eip !96
  %261 = sext i8 %260 to i32, !mcsema_real_eip !96
  %262 = add i64 %248, 30, !mcsema_real_eip !97
  %263 = inttoptr i64 %262 to i8*
  %264 = load i8, i8* %263, align 1, !mcsema_real_eip !97
  %265 = sext i8 %264 to i32, !mcsema_real_eip !97
  %266 = zext i32 %265 to i64, !mcsema_real_eip !97
  %267 = load i32, i32* %131, align 4, !mcsema_real_eip !98
  %268 = sub nsw i32 15, %261
  %269 = add nsw i32 %268, %265
  %270 = add i32 %269, %267
  store i32 %270, i32* %131, align 4, !mcsema_real_eip !99
  %271 = load i64, i64* %72, align 8, !mcsema_real_eip !100
  %272 = add i64 %271, 28, !mcsema_real_eip !101
  %273 = inttoptr i64 %272 to i8*
  %274 = load i8, i8* %273, align 1, !mcsema_real_eip !101
  %275 = zext i8 %274 to i64
  %276 = tail call x86_64_sysvcc i64 @to_byte(i64 %275), !mcsema_real_eip !102
  %277 = load i32, i32* %131, align 4, !mcsema_real_eip !103
  %278 = trunc i64 %276 to i32, !mcsema_real_eip !104
  %279 = sub i32 %277, %278, !mcsema_real_eip !104
  %280 = zext i32 %279 to i64, !mcsema_real_eip !104
  store i32 %279, i32* %131, align 4, !mcsema_real_eip !105
  %281 = icmp eq i32 %279, 0, !mcsema_real_eip !106
  br i1 %281, label %block_0x438.i, label %sub_0.exit, !mcsema_real_eip !107

block_0x45c.i:                                    ; preds = %block_0x3dd.i
  %282 = sext i8 %251 to i64
  %283 = sext i8 %255 to i64
  %284 = and i64 %283, 4294967295
  %285 = and i64 %282, 4294967295
  store i32 %246, i32* %131, align 4, !mcsema_real_eip !108
  br label %sub_0.exit, !mcsema_real_eip !109

block_0x3cd.i:                                    ; preds = %block_0x389.i
  %286 = load i32, i32* %131, align 4, !mcsema_real_eip !110
  %287 = xor i32 %286, %246, !mcsema_real_eip !111
  %288 = zext i32 %287 to i64, !mcsema_real_eip !111
  store i32 %287, i32* %131, align 4, !mcsema_real_eip !112
  br label %sub_0.exit, !mcsema_real_eip !113

block_0x438.i:                                    ; preds = %block_0x3f5.i
  %289 = load i64, i64* %72, align 8, !mcsema_real_eip !114
  %290 = add i64 %289, 31, !mcsema_real_eip !115
  %291 = inttoptr i64 %290 to i8*
  %292 = load i8, i8* %291, align 1, !mcsema_real_eip !115
  %293 = zext i8 %292 to i64
  %294 = tail call x86_64_sysvcc i64 @to_byte(i64 %293), !mcsema_real_eip !116
  %295 = trunc i64 %294 to i32, !mcsema_real_eip !117
  %296 = icmp eq i32 %295, 4
  br i1 %296, label %block_0x438.block_0x467_crit_edge.i, label %block_0x450.i, !mcsema_real_eip !118

block_0x438.block_0x467_crit_edge.i:              ; preds = %block_0x438.i
  %.pre.i = load i32, i32* %131, align 4
  br label %sub_0.exit

block_0x450.i:                                    ; preds = %block_0x438.i
  store i32 -32, i32* %131, align 4, !mcsema_real_eip !119
  br label %sub_0.exit

sub_0.exit:                                       ; preds = %block_0x27.i, %block_0x32.i, %block_0x5f.i, %block_0x83.i, %block_0xb0.i, %block_0x127.i, %block_0x1fa.i, %block_0x2ce.i, %block_0x315.i, %block_0x37e.i, %block_0x3f5.i, %block_0x45c.i, %block_0x3cd.i, %block_0x438.block_0x467_crit_edge.i, %block_0x450.i
  %RDI_val.0.i = phi i64 [ %217, %block_0x37e.i ], [ %217, %block_0x2ce.i ], [ %181, %block_0x1fa.i ], [ 2, %block_0x127.i ], [ 2, %block_0xb0.i ], [ %97, %block_0x83.i ], [ %89, %block_0x5f.i ], [ %4, %block_0x32.i ], [ %4, %block_0x27.i ], [ %217, %block_0x315.i ], [ %241, %block_0x3cd.i ], [ %293, %block_0x438.block_0x467_crit_edge.i ], [ %293, %block_0x450.i ], [ %275, %block_0x3f5.i ], [ %241, %block_0x45c.i ]
  %RSI_val.0.i = phi i64 [ %219, %block_0x37e.i ], [ %219, %block_0x2ce.i ], [ %3, %block_0x1fa.i ], [ %3, %block_0x127.i ], [ %3, %block_0xb0.i ], [ %3, %block_0x83.i ], [ %3, %block_0x5f.i ], [ %3, %block_0x32.i ], [ %3, %block_0x27.i ], [ %219, %block_0x315.i ], [ %248, %block_0x3cd.i ], [ %266, %block_0x438.block_0x467_crit_edge.i ], [ %266, %block_0x450.i ], [ %266, %block_0x3f5.i ], [ %248, %block_0x45c.i ]
  %RDX_val.0.i = phi i64 [ %239, %block_0x37e.i ], [ 8, %block_0x2ce.i ], [ %160, %block_0x1fa.i ], [ %119, %block_0x127.i ], [ %119, %block_0xb0.i ], [ %2, %block_0x83.i ], [ %2, %block_0x5f.i ], [ %2, %block_0x32.i ], [ %2, %block_0x27.i ], [ 8, %block_0x315.i ], [ 4, %block_0x3cd.i ], [ %280, %block_0x438.block_0x467_crit_edge.i ], [ %280, %block_0x450.i ], [ %280, %block_0x3f5.i ], [ %284, %block_0x45c.i ]
  %RCX_val.0.i = phi i64 [ 10000, %block_0x37e.i ], [ %187, %block_0x2ce.i ], [ %172, %block_0x1fa.i ], [ %RCX_val.1.i, %block_0x127.i ], [ %84, %block_0xb0.i ], [ %84, %block_0x83.i ], [ %84, %block_0x5f.i ], [ %84, %block_0x32.i ], [ %78, %block_0x27.i ], [ %187, %block_0x315.i ], [ %288, %block_0x3cd.i ], [ %271, %block_0x438.block_0x467_crit_edge.i ], [ %271, %block_0x450.i ], [ %271, %block_0x3f5.i ], [ %285, %block_0x45c.i ]
  %.sink.i = phi i32 [ %236, %block_0x37e.i ], [ -21, %block_0x2ce.i ], [ -7, %block_0x1fa.i ], [ -6, %block_0x127.i ], [ -5, %block_0xb0.i ], [ -4, %block_0x83.i ], [ -3, %block_0x5f.i ], [ -2, %block_0x32.i ], [ %75, %block_0x27.i ], [ -22, %block_0x315.i ], [ %287, %block_0x3cd.i ], [ %.pre.i, %block_0x438.block_0x467_crit_edge.i ], [ -32, %block_0x450.i ], [ %279, %block_0x3f5.i ], [ %246, %block_0x45c.i ]
  %297 = add i64 %5, -12
  %298 = inttoptr i64 %297 to i32*
  store i32 %.sink.i, i32* %298, align 4
  %299 = zext i32 %.sink.i to i64, !mcsema_real_eip !120
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %70, i64 80)
  %300 = extractvalue { i64, i1 } %uadd.i, 0
  %301 = xor i64 %300, %70, !mcsema_real_eip !121
  %302 = and i64 %301, 16
  %303 = icmp eq i64 %302, 0
  %304 = icmp slt i64 %300, 0
  %305 = icmp eq i64 %300, 0, !mcsema_real_eip !121
  %306 = add i64 %5, 9223372036854775720
  %307 = and i64 %301, %306, !mcsema_real_eip !121
  %308 = icmp slt i64 %307, 0
  %309 = trunc i64 %300 to i8, !mcsema_real_eip !121
  %310 = tail call i8 @llvm.ctpop.i8(i8 %309), !mcsema_real_eip !121
  %311 = and i8 %310, 1
  %312 = icmp eq i8 %311, 0
  %313 = extractvalue { i64, i1 } %uadd.i, 1
  %314 = inttoptr i64 %300 to i64*, !mcsema_real_eip !122
  %315 = load i64, i64* %314, align 8, !mcsema_real_eip !122
  %316 = add i64 %300, 16, !mcsema_real_eip !123
  store i64 %299, i64* %RAX.i, align 8, !mcsema_real_eip !123
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !123
  store i64 %RCX_val.0.i, i64* %RCX.i, align 8, !mcsema_real_eip !123
  store i64 %RDX_val.0.i, i64* %RDX.i, align 8, !mcsema_real_eip !123
  store i64 %RSI_val.0.i, i64* %RSI.i, align 8, !mcsema_real_eip !123
  store i64 %RDI_val.0.i, i64* %RDI.i, align 8, !mcsema_real_eip !123
  store i64 %316, i64* %RSP.i, align 8, !mcsema_real_eip !123
  store i64 %315, i64* %RBP.i, align 8, !mcsema_real_eip !123
  %317 = bitcast i64* %R8.i to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %317, align 8
  %318 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %318, align 8
  %319 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %319, align 8
  %320 = bitcast i64* %R14.i to <2 x i64>*
  store <2 x i64> %14, <2 x i64>* %320, align 8
  store i64 %15, i64* %RIP.i, align 8, !mcsema_real_eip !123
  store i1 %313, i1* %CF.i, align 1, !mcsema_real_eip !123
  store i1 %312, i1* %PF.i, align 1, !mcsema_real_eip !123
  store i1 %303, i1* %AF.i, align 1, !mcsema_real_eip !123
  store i1 %305, i1* %ZF.i, align 1, !mcsema_real_eip !123
  store i1 %304, i1* %SF.i, align 1, !mcsema_real_eip !123
  store i1 %308, i1* %OF.i, align 1, !mcsema_real_eip !123
  store i1 %16, i1* %DF.i, align 1, !mcsema_real_eip !123
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !123
  store i1 %19, i1* %FPU_B.i, align 1, !mcsema_real_eip !123
  store i1 %20, i1* %FPU_C3.i, align 1, !mcsema_real_eip !123
  store i3 %21, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !123
  store i1 %22, i1* %FPU_C2.i, align 1, !mcsema_real_eip !123
  store i1 %23, i1* %FPU_C1.i, align 1, !mcsema_real_eip !123
  store i1 %24, i1* %FPU_C0.i, align 1, !mcsema_real_eip !123
  store i1 %25, i1* %FPU_ES.i, align 1, !mcsema_real_eip !123
  store i1 %26, i1* %FPU_SF.i, align 1, !mcsema_real_eip !123
  store i1 %27, i1* %FPU_PE.i, align 1, !mcsema_real_eip !123
  store i1 %28, i1* %FPU_UE.i, align 1, !mcsema_real_eip !123
  store i1 %29, i1* %FPU_OE.i, align 1, !mcsema_real_eip !123
  store i1 %30, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !123
  store i1 %31, i1* %FPU_DE.i, align 1, !mcsema_real_eip !123
  store i1 %32, i1* %FPU_IE.i, align 1, !mcsema_real_eip !123
  store i1 %33, i1* %FPU_X.i, align 1, !mcsema_real_eip !123
  store i2 %34, i2* %FPU_RC.i, align 1, !mcsema_real_eip !123
  store i2 %35, i2* %FPU_PC.i, align 1, !mcsema_real_eip !123
  store i1 %36, i1* %FPU_PM.i, align 1, !mcsema_real_eip !123
  store i1 %37, i1* %FPU_UM.i, align 1, !mcsema_real_eip !123
  store i1 %38, i1* %FPU_OM.i, align 1, !mcsema_real_eip !123
  store i1 %39, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !123
  store i1 %40, i1* %FPU_DM.i, align 1, !mcsema_real_eip !123
  store i1 %41, i1* %FPU_IM.i, align 1, !mcsema_real_eip !123
  store i64 %44, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !123
  store i64 %46, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !123
  store i16 %47, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !123
  store i64 %48, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !123
  store i11 %49, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !123
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !123
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !123
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !123
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !123
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !123
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !123
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !123
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !123
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !123
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !123
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !123
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !123
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !123
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !123
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !123
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !123
  %321 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  store <2 x i64> %67, <2 x i64>* %321, align 1
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
!2 = !{i64 0}
!3 = !{i64 8}
!4 = !{i64 16}
!5 = !{i64 23}
!6 = !{i64 33}
!7 = !{i64 45}
!8 = !{i64 50}
!9 = !{i64 60}
!10 = !{i64 68}
!11 = !{i64 77}
!12 = !{i64 99}
!13 = !{i64 103}
!14 = !{i64 108}
!15 = !{i64 113}
!16 = !{i64 131}
!17 = !{i64 135}
!18 = !{i64 139}
!19 = !{i64 144}
!20 = !{i64 158}
!21 = !{i64 176}
!22 = !{i64 180}
!23 = !{i64 184}
!24 = !{i64 194}
!25 = !{i64 205}
!26 = !{i64 206}
!27 = !{i64 208}
!28 = !{i64 213}
!29 = !{i64 231}
!30 = !{i64 235}
!31 = !{i64 251}
!32 = !{i64 277}
!33 = !{i64 302}
!34 = !{i64 283}
!35 = !{i64 307}
!36 = !{i64 311}
!37 = !{i64 323}
!38 = !{i64 326}
!39 = !{i64 330}
!40 = !{i64 342}
!41 = !{i64 345}
!42 = !{i64 403}
!43 = !{i64 407}
!44 = !{i64 411}
!45 = !{i64 418}
!46 = !{i64 421}
!47 = !{i64 425}
!48 = !{i64 429}
!49 = !{i64 434}
!50 = !{i64 438}
!51 = !{i64 443}
!52 = !{i64 482}
!53 = !{i64 488}
!54 = !{i64 490}
!55 = !{i64 500}
!56 = !{i64 513}
!57 = !{i64 528}
!58 = !{i64 541}
!59 = !{i64 546}
!60 = !{i64 549}
!61 = !{i64 557}
!62 = !{i64 622}
!63 = !{i64 635}
!64 = !{i64 640}
!65 = !{i64 646}
!66 = !{i64 651}
!67 = !{i64 660}
!68 = !{i64 663}
!69 = !{i64 666}
!70 = !{i64 671}
!71 = !{i64 674}
!72 = !{i64 681}
!73 = !{i64 690}
!74 = !{i64 723}
!75 = !{i64 726}
!76 = !{i64 739}
!77 = !{i64 744}
!78 = !{i64 755}
!79 = !{i64 761}
!80 = !{i64 771}
!81 = !{i64 797}
!82 = !{i64 807}
!83 = !{i64 866}
!84 = !{i64 876}
!85 = !{i64 878}
!86 = !{i64 888}
!87 = !{i64 900}
!88 = !{i64 910}
!89 = !{i64 913}
!90 = !{i64 926}
!91 = !{i64 931}
!92 = !{i64 934}
!93 = !{i64 938}
!94 = !{i64 947}
!95 = !{i64 1007}
!96 = !{i64 1022}
!97 = !{i64 1030}
!98 = !{i64 1038}
!99 = !{i64 1043}
!100 = !{i64 1046}
!101 = !{i64 1050}
!102 = !{i64 1054}
!103 = !{i64 1059}
!104 = !{i64 1062}
!105 = !{i64 1064}
!106 = !{i64 1067}
!107 = !{i64 1074}
!108 = !{i64 1119}
!109 = !{i64 1013}
!110 = !{i64 976}
!111 = !{i64 979}
!112 = !{i64 981}
!113 = !{i64 984}
!114 = !{i64 1080}
!115 = !{i64 1084}
!116 = !{i64 1088}
!117 = !{i64 1093}
!118 = !{i64 1098}
!119 = !{i64 1104}
!120 = !{i64 1133}
!121 = !{i64 1136}
!122 = !{i64 1140}
!123 = !{i64 1141}
