; ModuleID = 'test_24_opt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

declare x86_64_sysvcc i64 @strlen(i64 inreg)

declare x86_64_sysvcc i64 @to_byte(i64 inreg)

declare x86_64_sysvcc i64 @read_bytes(i64 inreg, i64 inreg, i64 inreg)

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %1 = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %1)
  %RAX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %2 = load i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %3 = load i64* %RCX.i, align 8, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %4 = load i64* %RDX.i, align 8, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %5 = load i64* %RSI.i, align 8, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %6 = load i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %7 = load i64* %RSP.i, align 8, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %8 = load i64* %RBP.i, align 8, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %9 = load i64* %R8.i, align 8, !mcsema_real_eip !2
  %R9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %10 = load i64* %R9.i, align 8, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %11 = load i64* %R10.i, align 8, !mcsema_real_eip !2
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %12 = load i64* %R11.i, align 8, !mcsema_real_eip !2
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %13 = load i64* %R12.i, align 8, !mcsema_real_eip !2
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %14 = load i64* %R13.i, align 8, !mcsema_real_eip !2
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %15 = load i64* %R14.i, align 8, !mcsema_real_eip !2
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %16 = load i64* %R15.i, align 8, !mcsema_real_eip !2
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %17 = load i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %18 = load i1* %DF.i, align 1, !mcsema_real_eip !2
  %19 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %20 = bitcast x86_fp80* %19 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %20, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %21 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %22 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %23 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %24 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %25 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %26 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %27 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %28 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %29 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %30 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %31 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %32 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %33 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %34 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %35 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %36 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %37 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %38 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %39 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %40 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %41 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %42 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %43 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %44 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %45 = bitcast i8* %44 to i64*
  %46 = load i64* %45, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %47 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %48 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %49 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %50 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %51 = load i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %52 = load i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %53 = load i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %54 = load i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %55 = load i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %56 = load i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %57 = load i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %58 = load i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %59 = load i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %60 = load i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %61 = load i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %62 = load i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %63 = load i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %64 = load i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %65 = load i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %66 = load i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %67 = load i64* %STACK_BASE.i, align 8, !mcsema_real_eip !2
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %68 = load i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !2
  %69 = add i64 %7, -8
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !2
  store i64 %8, i64* %70, align 8, !mcsema_real_eip !2
  %71 = add i64 %7, -16
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !3
  store i64 %2, i64* %72, align 8, !mcsema_real_eip !3
  %73 = add i64 %7, -88
  %74 = add i64 %7, -80, !mcsema_real_eip !4
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !4
  store i64 %6, i64* %75, align 8, !mcsema_real_eip !4
  %76 = tail call x86_64_sysvcc i64 @strlen(i64 %6), !mcsema_real_eip !5
  %77 = add i64 %7, -32, !mcsema_real_eip !6
  %78 = trunc i64 %76 to i32, !mcsema_real_eip !6
  %79 = inttoptr i64 %77 to i32*
  store i32 %78, i32* %79, align 4, !mcsema_real_eip !6
  %80 = icmp eq i32 %78, 37
  br i1 %80, label %block_0x2a.i, label %block_0x22.i, !mcsema_real_eip !7

block_0x2a.i:                                     ; preds = %driverBlockRaw
  %81 = load i64* %75, align 8, !mcsema_real_eip !8
  %82 = inttoptr i64 %81 to i8*
  %83 = load i8* %82, align 1, !mcsema_real_eip !9
  %84 = icmp eq i8 %83, 100
  br i1 %84, label %block_0x44.i, label %block_0x391.i, !mcsema_real_eip !10

block_0x22.i:                                     ; preds = %driverBlockRaw
  %85 = and i64 %76, 4294967295
  br label %block_0x391.i, !mcsema_real_eip !11

block_0x391.i:                                    ; preds = %block_0x2af.i, %block_0x26b.i, %block_0x226.i, %block_0x22f.i, %block_0x187.i, %block_0xc1.i, %block_0x94.i, %block_0x68.i, %block_0x44.i, %block_0x22.i, %block_0x2a.i
  %RDI_val.0.i = phi i64 [ %RDI_val.2.i, %block_0x2af.i ], [ %RDI_val.1.i, %block_0x187.i ], [ %6, %block_0x22.i ], [ %6, %block_0x2a.i ], [ %109, %block_0x44.i ], [ %117, %block_0x68.i ], [ %127, %block_0x94.i ], [ %127, %block_0xc1.i ], [ 0, %block_0x226.i ], [ 48351, %block_0x22f.i ], [ %RDI_val.2.i, %block_0x26b.i ]
  %RSI_val.0.i = phi i64 [ %RSI_val.1.i, %block_0x2af.i ], [ %5, %block_0x187.i ], [ %5, %block_0x22.i ], [ %5, %block_0x2a.i ], [ %5, %block_0x44.i ], [ %5, %block_0x68.i ], [ %5, %block_0x94.i ], [ %5, %block_0xc1.i ], [ %267, %block_0x226.i ], [ %253, %block_0x22f.i ], [ %RSI_val.1.i, %block_0x26b.i ]
  %RDX_val.0.i = phi i64 [ %307, %block_0x2af.i ], [ %4, %block_0x187.i ], [ %4, %block_0x22.i ], [ %4, %block_0x2a.i ], [ %4, %block_0x44.i ], [ %4, %block_0x68.i ], [ %4, %block_0x94.i ], [ %4, %block_0xc1.i ], [ 8, %block_0x226.i ], [ 8, %block_0x22f.i ], [ 8, %block_0x26b.i ]
  %RCX_val.0.i = phi i64 [ %RSI_val.1.i, %block_0x2af.i ], [ %215, %block_0x187.i ], [ %3, %block_0x22.i ], [ %3, %block_0x2a.i ], [ %3, %block_0x44.i ], [ %3, %block_0x68.i ], [ %3, %block_0x94.i ], [ %3, %block_0xc1.i ], [ %267, %block_0x226.i ], [ %253, %block_0x22f.i ], [ %RSI_val.1.i, %block_0x26b.i ]
  %RAX_val.0.i = phi i64 [ %287, %block_0x2af.i ], [ 4294967289, %block_0x187.i ], [ %85, %block_0x22.i ], [ 4294967294, %block_0x2a.i ], [ 4294967293, %block_0x44.i ], [ 4294967292, %block_0x68.i ], [ 4294967291, %block_0x94.i ], [ 4294967290, %block_0xc1.i ], [ 4294967275, %block_0x226.i ], [ 4294967275, %block_0x22f.i ], [ 4294967274, %block_0x26b.i ]
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %73, i64 72)
  %86 = extractvalue { i64, i1 } %uadd.i, 0
  %87 = xor i64 %86, %73, !mcsema_real_eip !12
  %88 = and i64 %87, 16, !mcsema_real_eip !12
  %89 = icmp ne i64 %88, 0, !mcsema_real_eip !12
  %90 = icmp slt i64 %86, 0
  %91 = icmp eq i64 %86, 0, !mcsema_real_eip !12
  %92 = add i64 %7, 9223372036854775720
  %93 = and i64 %87, %92, !mcsema_real_eip !12
  %94 = icmp slt i64 %93, 0
  %95 = trunc i64 %86 to i8, !mcsema_real_eip !12
  %96 = tail call i8 @llvm.ctpop.i8(i8 %95), !mcsema_real_eip !12
  %97 = and i8 %96, 1
  %98 = icmp eq i8 %97, 0
  %99 = extractvalue { i64, i1 } %uadd.i, 1
  %100 = inttoptr i64 %86 to i64*, !mcsema_real_eip !13
  %101 = load i64* %100, align 8, !mcsema_real_eip !13
  %102 = add i64 %86, 8, !mcsema_real_eip !13
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !14
  %104 = load i64* %103, align 8, !mcsema_real_eip !14
  %105 = add i64 %86, 24, !mcsema_real_eip !15
  store i64 %RAX_val.0.i, i64* %RAX.i, align 8, !mcsema_real_eip !15
  store i64 %101, i64* %RBX.i, align 8, !mcsema_real_eip !15
  store i64 %RCX_val.0.i, i64* %RCX.i, align 8, !mcsema_real_eip !15
  store i64 %RDX_val.0.i, i64* %RDX.i, align 8, !mcsema_real_eip !15
  store i64 %RSI_val.0.i, i64* %RSI.i, align 8, !mcsema_real_eip !15
  store i64 %RDI_val.0.i, i64* %RDI.i, align 8, !mcsema_real_eip !15
  store i64 %105, i64* %RSP.i, align 8, !mcsema_real_eip !15
  store i64 %104, i64* %RBP.i, align 8, !mcsema_real_eip !15
  store i64 %9, i64* %R8.i, align 8, !mcsema_real_eip !15
  store i64 %10, i64* %R9.i, align 8, !mcsema_real_eip !15
  store i64 %11, i64* %R10.i, align 8, !mcsema_real_eip !15
  store i64 %12, i64* %R11.i, align 8, !mcsema_real_eip !15
  store i64 %13, i64* %R12.i, align 8, !mcsema_real_eip !15
  store i64 %14, i64* %R13.i, align 8, !mcsema_real_eip !15
  store i64 %15, i64* %R14.i, align 8, !mcsema_real_eip !15
  store i64 %16, i64* %R15.i, align 8, !mcsema_real_eip !15
  store i64 %17, i64* %RIP.i, align 8, !mcsema_real_eip !15
  store i1 %99, i1* %CF.i, align 1, !mcsema_real_eip !15
  store i1 %98, i1* %PF.i, align 1, !mcsema_real_eip !15
  store i1 %89, i1* %AF.i, align 1, !mcsema_real_eip !15
  store i1 %91, i1* %ZF.i, align 1, !mcsema_real_eip !15
  store i1 %90, i1* %SF.i, align 1, !mcsema_real_eip !15
  store i1 %94, i1* %OF.i, align 1, !mcsema_real_eip !15
  store i1 %18, i1* %DF.i, align 1, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !15
  store i1 %21, i1* %FPU_B.i, align 1, !mcsema_real_eip !15
  store i1 %22, i1* %FPU_C3.i, align 1, !mcsema_real_eip !15
  store i3 %23, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !15
  store i1 %24, i1* %FPU_C2.i, align 1, !mcsema_real_eip !15
  store i1 %25, i1* %FPU_C1.i, align 1, !mcsema_real_eip !15
  store i1 %26, i1* %FPU_C0.i, align 1, !mcsema_real_eip !15
  store i1 %27, i1* %FPU_ES.i, align 1, !mcsema_real_eip !15
  store i1 %28, i1* %FPU_SF.i, align 1, !mcsema_real_eip !15
  store i1 %29, i1* %FPU_PE.i, align 1, !mcsema_real_eip !15
  store i1 %30, i1* %FPU_UE.i, align 1, !mcsema_real_eip !15
  store i1 %31, i1* %FPU_OE.i, align 1, !mcsema_real_eip !15
  store i1 %32, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !15
  store i1 %33, i1* %FPU_DE.i, align 1, !mcsema_real_eip !15
  store i1 %34, i1* %FPU_IE.i, align 1, !mcsema_real_eip !15
  store i1 %35, i1* %FPU_X.i, align 1, !mcsema_real_eip !15
  store i2 %36, i2* %FPU_RC.i, align 1, !mcsema_real_eip !15
  store i2 %37, i2* %FPU_PC.i, align 1, !mcsema_real_eip !15
  store i1 %38, i1* %FPU_PM.i, align 1, !mcsema_real_eip !15
  store i1 %39, i1* %FPU_UM.i, align 1, !mcsema_real_eip !15
  store i1 %40, i1* %FPU_OM.i, align 1, !mcsema_real_eip !15
  store i1 %41, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !15
  store i1 %42, i1* %FPU_DM.i, align 1, !mcsema_real_eip !15
  store i1 %43, i1* %FPU_IM.i, align 1, !mcsema_real_eip !15
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !15
  store i64 %48, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !15
  store i16 %49, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !15
  store i64 %50, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !15
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !15
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !15
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !15
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !15
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !15
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !15
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !15
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !15
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !15
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !15
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !15
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !15
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !15
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !15
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !15
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !15
  store i64 %67, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !15
  store i64 %68, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !15
  call void @llvm.lifetime.end(i64 128, i8* %1)
  br label %sub_0.exit

block_0x44.i:                                     ; preds = %block_0x2a.i
  %106 = add i64 %81, 1
  %107 = inttoptr i64 %106 to i8*
  %108 = load i8* %107, align 1, !mcsema_real_eip !16
  %109 = zext i8 %108 to i64
  %110 = tail call x86_64_sysvcc i64 @to_byte(i64 %109), !mcsema_real_eip !17
  %111 = trunc i64 %110 to i32, !mcsema_real_eip !18
  %112 = icmp eq i32 %111, 9
  br i1 %112, label %block_0x68.i, label %block_0x391.i, !mcsema_real_eip !19

block_0x68.i:                                     ; preds = %block_0x44.i
  %113 = load i64* %75, align 8, !mcsema_real_eip !20
  %114 = add i64 %113, 2
  %115 = inttoptr i64 %114 to i8*
  %116 = load i8* %115, align 1, !mcsema_real_eip !21
  %117 = zext i8 %116 to i64
  %118 = tail call x86_64_sysvcc i64 @to_byte(i64 %117), !mcsema_real_eip !22
  %119 = add i64 %7, -36, !mcsema_real_eip !23
  %120 = trunc i64 %118 to i32, !mcsema_real_eip !23
  %121 = inttoptr i64 %119 to i32*
  store i32 %120, i32* %121, align 4, !mcsema_real_eip !23
  %.mask.i = and i32 %120, 2147483647
  %122 = icmp eq i32 %.mask.i, 13
  br i1 %122, label %block_0x94.i, label %block_0x391.i, !mcsema_real_eip !24

block_0x94.i:                                     ; preds = %block_0x68.i
  %123 = load i64* %75, align 8, !mcsema_real_eip !25
  %124 = add i64 %123, 3
  %125 = inttoptr i64 %124 to i8*
  %126 = load i8* %125, align 1, !mcsema_real_eip !26
  %127 = zext i8 %126 to i64
  %128 = tail call x86_64_sysvcc i64 @to_byte(i64 %127), !mcsema_real_eip !27
  %129 = add i64 %7, -40, !mcsema_real_eip !28
  %130 = trunc i64 %128 to i32, !mcsema_real_eip !28
  %131 = inttoptr i64 %129 to i32*
  store i32 %130, i32* %131, align 4, !mcsema_real_eip !28
  %.off.i = add i32 %130, -13
  %132 = icmp ult i32 %.off.i, 2
  br i1 %132, label %block_0xc1.i, label %block_0x391.i, !mcsema_real_eip !29

block_0xc1.i:                                     ; preds = %block_0x94.i
  %133 = load i64* %75, align 8, !mcsema_real_eip !30
  %134 = add i64 %133, 4
  %135 = inttoptr i64 %134 to i8*
  %136 = load i8* %135, align 1, !mcsema_real_eip !31
  %137 = icmp eq i8 %136, 49
  br i1 %137, label %block_0xef.i, label %block_0x391.i, !mcsema_real_eip !32

block_0xef.i:                                     ; preds = %block_0xc1.i
  %138 = add i64 %7, -28, !mcsema_real_eip !33
  %139 = inttoptr i64 %138 to i32*
  store i32 -4, i32* %139, align 4, !mcsema_real_eip !33
  %140 = load i64* %75, align 8, !mcsema_real_eip !34
  %141 = add i64 %140, 5
  %142 = inttoptr i64 %141 to i8*
  %143 = load i8* %142, align 1, !mcsema_real_eip !35
  %144 = and i8 %143, 15
  %145 = add i64 %7, -41, !mcsema_real_eip !36
  %146 = inttoptr i64 %145 to i8*
  store i8 %144, i8* %146, align 1, !mcsema_real_eip !36
  %147 = load i64* %75, align 8, !mcsema_real_eip !37
  %148 = add i64 %147, 5
  %149 = inttoptr i64 %148 to i8*
  %150 = load i8* %149, align 1, !mcsema_real_eip !38
  %151 = and i8 %150, -16
  %152 = add i64 %7, -42, !mcsema_real_eip !39
  %153 = inttoptr i64 %152 to i8*
  store i8 %151, i8* %153, align 1, !mcsema_real_eip !39
  %154 = load i8* %146, align 1, !mcsema_real_eip !40
  %155 = icmp eq i8 %154, 3
  %156 = icmp eq i8 %151, 96
  %or.cond2.i = and i1 %155, %156
  %157 = load i32* %139, align 4, !mcsema_real_eip !41
  br i1 %or.cond2.i, label %block_0x130.i, label %block_0x136.i, !mcsema_real_eip !42

block_0x136.i:                                    ; preds = %block_0xef.i
  %158 = add i32 %157, 5
  store i32 %158, i32* %139, align 4, !mcsema_real_eip !43
  %159 = load i64* %75, align 8, !mcsema_real_eip !44
  %160 = add i64 %159, 6
  %161 = inttoptr i64 %160 to i8*
  %162 = load i8* %161, align 1, !mcsema_real_eip !45
  %163 = zext i8 %162 to i64
  %164 = tail call x86_64_sysvcc i64 @to_byte(i64 %163), !mcsema_real_eip !46
  %165 = add i64 %7, -43, !mcsema_real_eip !47
  %166 = trunc i64 %164 to i8, !mcsema_real_eip !47
  %167 = inttoptr i64 %165 to i8*
  store i8 %166, i8* %167, align 1, !mcsema_real_eip !47
  %168 = load i64* %75, align 8, !mcsema_real_eip !48
  %169 = add i64 %168, 7
  %170 = inttoptr i64 %169 to i8*
  %171 = load i8* %170, align 1, !mcsema_real_eip !49
  %172 = zext i8 %171 to i64
  %173 = tail call x86_64_sysvcc i64 @to_byte(i64 %172), !mcsema_real_eip !50
  %174 = load i8* %167, align 1, !mcsema_real_eip !51
  %175 = trunc i64 %173 to i8, !mcsema_real_eip !51
  %176 = or i8 %174, %175, !mcsema_real_eip !51
  store i8 %176, i8* %167, align 1, !mcsema_real_eip !51
  br label %block_0x179.i

block_0x130.i:                                    ; preds = %block_0xef.i
  %177 = add i32 %157, 4
  store i32 %177, i32* %139, align 4, !mcsema_real_eip !41
  %178 = load i64* %75, align 8, !mcsema_real_eip !44
  %179 = add i64 %178, 6
  %180 = inttoptr i64 %179 to i8*
  %181 = load i8* %180, align 1, !mcsema_real_eip !45
  %182 = zext i8 %181 to i64
  %183 = tail call x86_64_sysvcc i64 @to_byte(i64 %182), !mcsema_real_eip !46
  %184 = add i64 %7, -43, !mcsema_real_eip !47
  %185 = trunc i64 %183 to i8, !mcsema_real_eip !47
  %186 = inttoptr i64 %184 to i8*
  store i8 %185, i8* %186, align 1, !mcsema_real_eip !47
  %187 = load i64* %75, align 8, !mcsema_real_eip !48
  %188 = add i64 %187, 7
  %189 = inttoptr i64 %188 to i8*
  %190 = load i8* %189, align 1, !mcsema_real_eip !49
  %191 = zext i8 %190 to i64
  %192 = tail call x86_64_sysvcc i64 @to_byte(i64 %191), !mcsema_real_eip !50
  %193 = load i8* %186, align 1, !mcsema_real_eip !51
  %194 = trunc i64 %192 to i8, !mcsema_real_eip !51
  %195 = or i8 %193, %194, !mcsema_real_eip !51
  store i8 %195, i8* %186, align 1, !mcsema_real_eip !51
  br label %block_0x179.i

block_0x179.i:                                    ; preds = %block_0x130.i, %block_0x136.i
  %RDI_val.1.i = phi i64 [ %191, %block_0x130.i ], [ %172, %block_0x136.i ]
  %196 = load i32* %139, align 4, !mcsema_real_eip !52
  %197 = and i32 %196, 31, !mcsema_real_eip !53
  %198 = add i32 %196, -1
  %199 = icmp ne i32 %197, 0, !mcsema_real_eip !53
  %200 = select i1 %199, i32 %198, i32 0, !mcsema_real_eip !53
  %201 = zext i1 %199 to i32
  %202 = shl i32 %196, %200, !mcsema_real_eip !53
  %203 = shl i32 %202, %201, !mcsema_real_eip !53
  %204 = icmp eq i32 %203, 0, !mcsema_real_eip !53
  store i32 %203, i32* %139, align 4, !mcsema_real_eip !53
  br i1 %204, label %block_0x191.i, label %block_0x187.i, !mcsema_real_eip !54

block_0x191.i:                                    ; preds = %block_0x179.i
  %205 = load i64* %75, align 8, !mcsema_real_eip !55
  %206 = add i64 %205, 8
  %207 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %206, i64 4), !mcsema_real_eip !56
  %208 = add i64 %7, -46, !mcsema_real_eip !57
  %209 = trunc i64 %207 to i16, !mcsema_real_eip !57
  %210 = inttoptr i64 %208 to i16*
  store i16 %209, i16* %210, align 2, !mcsema_real_eip !57
  %211 = or i16 %209, 21845, !mcsema_real_eip !58
  %212 = icmp eq i16 %211, -8873
  %213 = or i16 %209, -21846
  %214 = icmp eq i16 %213, -325
  %or.cond4.i = and i1 %212, %214
  br i1 %or.cond4.i, label %block_0x1cb.i, label %block_0x1d4.i, !mcsema_real_eip !59

block_0x187.i:                                    ; preds = %block_0x179.i
  %215 = zext i32 %196 to i64, !mcsema_real_eip !52
  br label %block_0x391.i, !mcsema_real_eip !60

block_0x1d4.i:                                    ; preds = %block_0x191.i
  store i32 48059, i32* %139, align 4, !mcsema_real_eip !61
  %216 = load i64* %75, align 8, !mcsema_real_eip !62
  %217 = add i64 %216, 12
  %218 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %217, i64 8), !mcsema_real_eip !63
  %219 = add i64 %7, -52, !mcsema_real_eip !64
  %220 = trunc i64 %218 to i32, !mcsema_real_eip !64
  %221 = inttoptr i64 %219 to i32*
  store i32 %220, i32* %221, align 4, !mcsema_real_eip !64
  %222 = xor i32 %220, -1534560611, !mcsema_real_eip !65
  %223 = add i64 %7, -56, !mcsema_real_eip !66
  %224 = inttoptr i64 %223 to i32*
  store i32 %222, i32* %224, align 4, !mcsema_real_eip !66
  %225 = lshr i32 %222, 16
  %226 = add i64 %7, -60, !mcsema_real_eip !67
  %227 = inttoptr i64 %226 to i32*
  store i32 %225, i32* %227, align 4, !mcsema_real_eip !67
  %228 = load i32* %224, align 4, !mcsema_real_eip !68
  %229 = and i32 %228, 65535
  %230 = add i64 %7, -64, !mcsema_real_eip !69
  %231 = inttoptr i64 %230 to i32*
  store i32 %229, i32* %231, align 4, !mcsema_real_eip !69
  %232 = load i32* %227, align 4, !mcsema_real_eip !70
  %233 = icmp eq i32 %232, 20299
  br i1 %233, label %block_0x21e.i, label %block_0x22f.i, !mcsema_real_eip !71

block_0x1cb.i:                                    ; preds = %block_0x191.i
  store i32 43690, i32* %139, align 4, !mcsema_real_eip !72
  %234 = load i64* %75, align 8, !mcsema_real_eip !62
  %235 = add i64 %234, 12
  %236 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %235, i64 8), !mcsema_real_eip !63
  %237 = add i64 %7, -52, !mcsema_real_eip !64
  %238 = trunc i64 %236 to i32, !mcsema_real_eip !64
  %239 = inttoptr i64 %237 to i32*
  store i32 %238, i32* %239, align 4, !mcsema_real_eip !64
  %240 = xor i32 %238, -1534560611, !mcsema_real_eip !65
  %241 = add i64 %7, -56, !mcsema_real_eip !66
  %242 = inttoptr i64 %241 to i32*
  store i32 %240, i32* %242, align 4, !mcsema_real_eip !66
  %243 = lshr i32 %240, 16
  %244 = add i64 %7, -60, !mcsema_real_eip !67
  %245 = inttoptr i64 %244 to i32*
  store i32 %243, i32* %245, align 4, !mcsema_real_eip !67
  %246 = load i32* %242, align 4, !mcsema_real_eip !68
  %247 = and i32 %246, 65535
  %248 = add i64 %7, -64, !mcsema_real_eip !69
  %249 = inttoptr i64 %248 to i32*
  store i32 %247, i32* %249, align 4, !mcsema_real_eip !69
  %250 = load i32* %245, align 4, !mcsema_real_eip !70
  %251 = icmp eq i32 %250, 20299
  br i1 %251, label %block_0x21e.i, label %block_0x22f.i, !mcsema_real_eip !71

block_0x22f.i:                                    ; preds = %block_0x21e.i, %block_0x1cb.i, %block_0x1d4.i
  store i32 48351, i32* %139, align 4, !mcsema_real_eip !73
  %252 = load i64* %75, align 8, !mcsema_real_eip !74
  %253 = add i64 %252, 20, !mcsema_real_eip !75
  %254 = tail call x86_64_sysvcc i64 @read_bytes(i64 48351, i64 %253, i64 8), !mcsema_real_eip !76
  %255 = add i64 %7, -68, !mcsema_real_eip !77
  %256 = trunc i64 %254 to i32, !mcsema_real_eip !77
  %257 = inttoptr i64 %255 to i32*
  %258 = add i32 %256, -3
  store i32 %258, i32* %257, align 4, !mcsema_real_eip !78
  %259 = and i32 %258, 7, !mcsema_real_eip !79
  %260 = icmp eq i32 %259, 0, !mcsema_real_eip !79
  br i1 %260, label %block_0x26b.i, label %block_0x391.i, !mcsema_real_eip !80

block_0x21e.i:                                    ; preds = %block_0x1cb.i, %block_0x1d4.i
  %261 = load i32* %139, align 4, !mcsema_real_eip !81
  %262 = add i64 %7, -64, !mcsema_real_eip !82
  %263 = inttoptr i64 %262 to i32*
  %264 = load i32* %263, align 4, !mcsema_real_eip !82
  %265 = icmp eq i32 %261, %264
  br i1 %265, label %block_0x226.i, label %block_0x22f.i, !mcsema_real_eip !83

block_0x226.i:                                    ; preds = %block_0x21e.i
  store i32 0, i32* %139, align 4, !mcsema_real_eip !84
  %266 = load i64* %75, align 8, !mcsema_real_eip !74
  %267 = add i64 %266, 20, !mcsema_real_eip !75
  %268 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %267, i64 8), !mcsema_real_eip !76
  %269 = add i64 %7, -68, !mcsema_real_eip !77
  %270 = trunc i64 %268 to i32, !mcsema_real_eip !77
  %271 = inttoptr i64 %269 to i32*
  %272 = add i32 %270, -3
  store i32 %272, i32* %271, align 4, !mcsema_real_eip !78
  %273 = and i32 %272, 7, !mcsema_real_eip !79
  %274 = icmp eq i32 %273, 0, !mcsema_real_eip !79
  br i1 %274, label %block_0x26b.i, label %block_0x391.i, !mcsema_real_eip !80

block_0x26b.i:                                    ; preds = %block_0x226.i, %block_0x22f.i
  %RDI_val.2.i = phi i64 [ 0, %block_0x226.i ], [ 48351, %block_0x22f.i ]
  %RSI_val.1.i = phi i64 [ %267, %block_0x226.i ], [ %253, %block_0x22f.i ]
  %275 = add i64 %7, -68, !mcsema_real_eip !85
  %276 = inttoptr i64 %275 to i32*
  %277 = load i32* %276, align 4, !mcsema_real_eip !85
  %278 = xor i32 %277, -2147483648
  store i32 %278, i32* %276, align 4, !mcsema_real_eip !85
  %279 = icmp eq i32 %277, -1879048193
  %280 = icmp ult i32 %278, 268435455, !mcsema_real_eip !86
  %281 = or i1 %280, %279, !mcsema_real_eip !87
  br i1 %281, label %block_0x285.i, label %block_0x391.i, !mcsema_real_eip !87

block_0x285.i:                                    ; preds = %block_0x26b.i
  %282 = lshr i32 %277, 4
  %283 = xor i32 %282, 135069696
  %284 = add nsw i32 %283, -226
  %285 = zext i32 %284 to i64, !mcsema_real_eip !88
  %286 = mul i64 %285, 3518437209, !mcsema_real_eip !89
  %287 = lshr i64 %286, 45
  %288 = trunc i64 %287 to i32, !mcsema_real_eip !90
  store i32 %288, i32* %276, align 4, !mcsema_real_eip !90
  %289 = icmp eq i32 %288, 3
  br i1 %289, label %block_0x2b7.i, label %block_0x2af.i, !mcsema_real_eip !91

block_0x2b7.i:                                    ; preds = %block_0x285.i
  %290 = load i64* %75, align 8, !mcsema_real_eip !92
  %291 = add i64 %290, 28, !mcsema_real_eip !93
  %292 = load i32* %139, align 4, !mcsema_real_eip !94
  %293 = zext i32 %292 to i64, !mcsema_real_eip !94
  %294 = tail call x86_64_sysvcc i64 @read_bytes(i64 %293, i64 %291, i64 4), !mcsema_real_eip !95
  %295 = add i64 %7, -72, !mcsema_real_eip !96
  %296 = trunc i64 %294 to i32, !mcsema_real_eip !96
  %297 = inttoptr i64 %295 to i32*
  store i32 %296, i32* %297, align 4, !mcsema_real_eip !96
  %298 = load i64* %75, align 8, !mcsema_real_eip !97
  %299 = add i64 %298, 28
  %300 = inttoptr i64 %299 to i8*
  %301 = load i8* %300, align 1, !mcsema_real_eip !98
  %302 = icmp eq i8 %301, 100
  %303 = add i64 %298, 29
  %304 = inttoptr i64 %303 to i8*
  %305 = load i8* %304, align 1, !mcsema_real_eip !99
  %306 = icmp eq i8 %305, 100
  %or.cond = and i1 %302, %306
  br i1 %or.cond, label %block_0x2f2.i, label %block_0x300.i, !mcsema_real_eip !100

block_0x2af.i:                                    ; preds = %block_0x285.i
  %307 = lshr i64 %286, 32, !mcsema_real_eip !89
  br label %block_0x391.i, !mcsema_real_eip !101

block_0x300.i:                                    ; preds = %block_0x2b7.i
  %308 = icmp eq i8 %301, %305
  br i1 %308, label %block_0x31a.i, label %block_0x388.i, !mcsema_real_eip !102

block_0x2f2.i:                                    ; preds = %block_0x2b7.i
  %309 = load i32* %139, align 4, !mcsema_real_eip !103
  %310 = xor i32 %309, %296, !mcsema_real_eip !104
  store i32 %310, i32* %139, align 4, !mcsema_real_eip !105
  br label %block_0x38e.i, !mcsema_real_eip !106

block_0x388.i:                                    ; preds = %block_0x300.i
  %311 = zext i8 %301 to i64
  store i32 %296, i32* %139, align 4, !mcsema_real_eip !107
  %312 = and i64 %294, 4294967295
  %uadd231.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %73, i64 72)
  %313 = extractvalue { i64, i1 } %uadd231.i, 0
  %314 = xor i64 %313, %73, !mcsema_real_eip !12
  %315 = and i64 %314, 16, !mcsema_real_eip !12
  %316 = icmp ne i64 %315, 0, !mcsema_real_eip !12
  %317 = icmp slt i64 %313, 0
  %318 = icmp eq i64 %313, 0, !mcsema_real_eip !12
  %319 = add i64 %7, 9223372036854775720
  %320 = and i64 %314, %319, !mcsema_real_eip !12
  %321 = icmp slt i64 %320, 0
  %322 = trunc i64 %313 to i8, !mcsema_real_eip !12
  %323 = tail call i8 @llvm.ctpop.i8(i8 %322), !mcsema_real_eip !12
  %324 = and i8 %323, 1
  %325 = icmp eq i8 %324, 0
  %326 = extractvalue { i64, i1 } %uadd231.i, 1
  %327 = inttoptr i64 %313 to i64*, !mcsema_real_eip !13
  %328 = load i64* %327, align 8, !mcsema_real_eip !13
  %329 = add i64 %313, 8, !mcsema_real_eip !13
  %330 = inttoptr i64 %329 to i64*, !mcsema_real_eip !14
  %331 = load i64* %330, align 8, !mcsema_real_eip !14
  %332 = add i64 %313, 24, !mcsema_real_eip !15
  store i64 %312, i64* %RAX.i, align 8, !mcsema_real_eip !15
  store i64 %328, i64* %RBX.i, align 8, !mcsema_real_eip !15
  store i64 %291, i64* %RCX.i, align 8, !mcsema_real_eip !15
  store i64 %311, i64* %RDX.i, align 8, !mcsema_real_eip !15
  store i64 %291, i64* %RSI.i, align 8, !mcsema_real_eip !15
  store i64 %293, i64* %RDI.i, align 8, !mcsema_real_eip !15
  store i64 %332, i64* %RSP.i, align 8, !mcsema_real_eip !15
  store i64 %331, i64* %RBP.i, align 8, !mcsema_real_eip !15
  store i64 %9, i64* %R8.i, align 8, !mcsema_real_eip !15
  store i64 %10, i64* %R9.i, align 8, !mcsema_real_eip !15
  store i64 %11, i64* %R10.i, align 8, !mcsema_real_eip !15
  store i64 %12, i64* %R11.i, align 8, !mcsema_real_eip !15
  store i64 %13, i64* %R12.i, align 8, !mcsema_real_eip !15
  store i64 %14, i64* %R13.i, align 8, !mcsema_real_eip !15
  store i64 %15, i64* %R14.i, align 8, !mcsema_real_eip !15
  store i64 %16, i64* %R15.i, align 8, !mcsema_real_eip !15
  store i64 %17, i64* %RIP.i, align 8, !mcsema_real_eip !15
  store i1 %326, i1* %CF.i, align 1, !mcsema_real_eip !15
  store i1 %325, i1* %PF.i, align 1, !mcsema_real_eip !15
  store i1 %316, i1* %AF.i, align 1, !mcsema_real_eip !15
  store i1 %318, i1* %ZF.i, align 1, !mcsema_real_eip !15
  store i1 %317, i1* %SF.i, align 1, !mcsema_real_eip !15
  store i1 %321, i1* %OF.i, align 1, !mcsema_real_eip !15
  store i1 %18, i1* %DF.i, align 1, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !15
  store i1 %21, i1* %FPU_B.i, align 1, !mcsema_real_eip !15
  store i1 %22, i1* %FPU_C3.i, align 1, !mcsema_real_eip !15
  store i3 %23, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !15
  store i1 %24, i1* %FPU_C2.i, align 1, !mcsema_real_eip !15
  store i1 %25, i1* %FPU_C1.i, align 1, !mcsema_real_eip !15
  store i1 %26, i1* %FPU_C0.i, align 1, !mcsema_real_eip !15
  store i1 %27, i1* %FPU_ES.i, align 1, !mcsema_real_eip !15
  store i1 %28, i1* %FPU_SF.i, align 1, !mcsema_real_eip !15
  store i1 %29, i1* %FPU_PE.i, align 1, !mcsema_real_eip !15
  store i1 %30, i1* %FPU_UE.i, align 1, !mcsema_real_eip !15
  store i1 %31, i1* %FPU_OE.i, align 1, !mcsema_real_eip !15
  store i1 %32, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !15
  store i1 %33, i1* %FPU_DE.i, align 1, !mcsema_real_eip !15
  store i1 %34, i1* %FPU_IE.i, align 1, !mcsema_real_eip !15
  store i1 %35, i1* %FPU_X.i, align 1, !mcsema_real_eip !15
  store i2 %36, i2* %FPU_RC.i, align 1, !mcsema_real_eip !15
  store i2 %37, i2* %FPU_PC.i, align 1, !mcsema_real_eip !15
  store i1 %38, i1* %FPU_PM.i, align 1, !mcsema_real_eip !15
  store i1 %39, i1* %FPU_UM.i, align 1, !mcsema_real_eip !15
  store i1 %40, i1* %FPU_OM.i, align 1, !mcsema_real_eip !15
  store i1 %41, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !15
  store i1 %42, i1* %FPU_DM.i, align 1, !mcsema_real_eip !15
  store i1 %43, i1* %FPU_IM.i, align 1, !mcsema_real_eip !15
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !15
  store i64 %48, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !15
  store i16 %49, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !15
  store i64 %50, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !15
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !15
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !15
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !15
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !15
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !15
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !15
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !15
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !15
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !15
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !15
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !15
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !15
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !15
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !15
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !15
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !15
  store i64 %67, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !15
  store i64 %68, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !15
  call void @llvm.lifetime.end(i64 128, i8* %1)
  br label %sub_0.exit

block_0x31a.i:                                    ; preds = %block_0x300.i
  %333 = add i64 %298, 30
  %334 = inttoptr i64 %333 to i8*
  %335 = load i8* %334, align 1, !mcsema_real_eip !108
  %336 = sext i8 %335 to i32, !mcsema_real_eip !109
  %337 = add i64 %298, 31
  %338 = inttoptr i64 %337 to i8*
  %339 = load i8* %338, align 1, !mcsema_real_eip !110
  %340 = sext i8 %339 to i32, !mcsema_real_eip !111
  %341 = sub i32 %336, %340, !mcsema_real_eip !112
  %342 = zext i32 %341 to i64, !mcsema_real_eip !112
  %343 = load i32* %139, align 4, !mcsema_real_eip !113
  %344 = add i32 %343, 15
  %345 = add i32 %344, %341
  store i32 %345, i32* %139, align 4, !mcsema_real_eip !113
  %346 = load i64* %75, align 8, !mcsema_real_eip !114
  %347 = add i64 %346, 28
  %348 = inttoptr i64 %347 to i8*
  %349 = load i8* %348, align 1, !mcsema_real_eip !115
  %350 = zext i8 %349 to i64
  %351 = tail call x86_64_sysvcc i64 @to_byte(i64 %350), !mcsema_real_eip !116
  %352 = trunc i64 %351 to i32, !mcsema_real_eip !117
  %353 = sub i32 %345, %352, !mcsema_real_eip !117
  store i32 %353, i32* %139, align 4, !mcsema_real_eip !118
  %354 = icmp eq i32 %345, %352
  br i1 %354, label %block_0x365.i, label %block_0x38e.i, !mcsema_real_eip !119

block_0x38e.i:                                    ; preds = %block_0x37f.i, %block_0x365.block_0x38e_crit_edge.i, %block_0x31a.i, %block_0x2f2.i
  %355 = phi i32 [ %310, %block_0x2f2.i ], [ %.pre.i, %block_0x365.block_0x38e_crit_edge.i ], [ -32, %block_0x37f.i ], [ %353, %block_0x31a.i ]
  %RDI_val.4.i = phi i64 [ %293, %block_0x2f2.i ], [ %381, %block_0x365.block_0x38e_crit_edge.i ], [ %381, %block_0x37f.i ], [ %350, %block_0x31a.i ]
  %RDX_val.3.i = phi i64 [ 4, %block_0x2f2.i ], [ %342, %block_0x365.block_0x38e_crit_edge.i ], [ %342, %block_0x37f.i ], [ %342, %block_0x31a.i ]
  %356 = zext i32 %355 to i64, !mcsema_real_eip !120
  %uadd222.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %73, i64 72)
  %357 = extractvalue { i64, i1 } %uadd222.i, 0
  %358 = xor i64 %357, %73, !mcsema_real_eip !12
  %359 = and i64 %358, 16, !mcsema_real_eip !12
  %360 = icmp ne i64 %359, 0, !mcsema_real_eip !12
  %361 = icmp slt i64 %357, 0
  %362 = icmp eq i64 %357, 0, !mcsema_real_eip !12
  %363 = add i64 %7, 9223372036854775720
  %364 = and i64 %358, %363, !mcsema_real_eip !12
  %365 = icmp slt i64 %364, 0
  %366 = trunc i64 %357 to i8, !mcsema_real_eip !12
  %367 = tail call i8 @llvm.ctpop.i8(i8 %366), !mcsema_real_eip !12
  %368 = and i8 %367, 1
  %369 = icmp eq i8 %368, 0
  %370 = extractvalue { i64, i1 } %uadd222.i, 1
  %371 = inttoptr i64 %357 to i64*, !mcsema_real_eip !13
  %372 = load i64* %371, align 8, !mcsema_real_eip !13
  %373 = add i64 %357, 8, !mcsema_real_eip !13
  %374 = inttoptr i64 %373 to i64*, !mcsema_real_eip !14
  %375 = load i64* %374, align 8, !mcsema_real_eip !14
  %376 = add i64 %357, 24, !mcsema_real_eip !15
  store i64 %356, i64* %RAX.i, align 8, !mcsema_real_eip !15
  store i64 %372, i64* %RBX.i, align 8, !mcsema_real_eip !15
  store i64 %291, i64* %RCX.i, align 8, !mcsema_real_eip !15
  store i64 %RDX_val.3.i, i64* %RDX.i, align 8, !mcsema_real_eip !15
  store i64 %291, i64* %RSI.i, align 8, !mcsema_real_eip !15
  store i64 %RDI_val.4.i, i64* %RDI.i, align 8, !mcsema_real_eip !15
  store i64 %376, i64* %RSP.i, align 8, !mcsema_real_eip !15
  store i64 %375, i64* %RBP.i, align 8, !mcsema_real_eip !15
  store i64 %9, i64* %R8.i, align 8, !mcsema_real_eip !15
  store i64 %10, i64* %R9.i, align 8, !mcsema_real_eip !15
  store i64 %11, i64* %R10.i, align 8, !mcsema_real_eip !15
  store i64 %12, i64* %R11.i, align 8, !mcsema_real_eip !15
  store i64 %13, i64* %R12.i, align 8, !mcsema_real_eip !15
  store i64 %14, i64* %R13.i, align 8, !mcsema_real_eip !15
  store i64 %15, i64* %R14.i, align 8, !mcsema_real_eip !15
  store i64 %16, i64* %R15.i, align 8, !mcsema_real_eip !15
  store i64 %17, i64* %RIP.i, align 8, !mcsema_real_eip !15
  store i1 %370, i1* %CF.i, align 1, !mcsema_real_eip !15
  store i1 %369, i1* %PF.i, align 1, !mcsema_real_eip !15
  store i1 %360, i1* %AF.i, align 1, !mcsema_real_eip !15
  store i1 %362, i1* %ZF.i, align 1, !mcsema_real_eip !15
  store i1 %361, i1* %SF.i, align 1, !mcsema_real_eip !15
  store i1 %365, i1* %OF.i, align 1, !mcsema_real_eip !15
  store i1 %18, i1* %DF.i, align 1, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !15
  store i1 %21, i1* %FPU_B.i, align 1, !mcsema_real_eip !15
  store i1 %22, i1* %FPU_C3.i, align 1, !mcsema_real_eip !15
  store i3 %23, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !15
  store i1 %24, i1* %FPU_C2.i, align 1, !mcsema_real_eip !15
  store i1 %25, i1* %FPU_C1.i, align 1, !mcsema_real_eip !15
  store i1 %26, i1* %FPU_C0.i, align 1, !mcsema_real_eip !15
  store i1 %27, i1* %FPU_ES.i, align 1, !mcsema_real_eip !15
  store i1 %28, i1* %FPU_SF.i, align 1, !mcsema_real_eip !15
  store i1 %29, i1* %FPU_PE.i, align 1, !mcsema_real_eip !15
  store i1 %30, i1* %FPU_UE.i, align 1, !mcsema_real_eip !15
  store i1 %31, i1* %FPU_OE.i, align 1, !mcsema_real_eip !15
  store i1 %32, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !15
  store i1 %33, i1* %FPU_DE.i, align 1, !mcsema_real_eip !15
  store i1 %34, i1* %FPU_IE.i, align 1, !mcsema_real_eip !15
  store i1 %35, i1* %FPU_X.i, align 1, !mcsema_real_eip !15
  store i2 %36, i2* %FPU_RC.i, align 1, !mcsema_real_eip !15
  store i2 %37, i2* %FPU_PC.i, align 1, !mcsema_real_eip !15
  store i1 %38, i1* %FPU_PM.i, align 1, !mcsema_real_eip !15
  store i1 %39, i1* %FPU_UM.i, align 1, !mcsema_real_eip !15
  store i1 %40, i1* %FPU_OM.i, align 1, !mcsema_real_eip !15
  store i1 %41, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !15
  store i1 %42, i1* %FPU_DM.i, align 1, !mcsema_real_eip !15
  store i1 %43, i1* %FPU_IM.i, align 1, !mcsema_real_eip !15
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !15
  store i64 %48, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !15
  store i16 %49, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !15
  store i64 %50, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !15
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !15
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !15
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !15
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !15
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !15
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !15
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !15
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !15
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !15
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !15
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !15
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !15
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !15
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !15
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !15
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !15
  store i64 %67, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !15
  store i64 %68, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !15
  call void @llvm.lifetime.end(i64 128, i8* %1)
  br label %sub_0.exit

block_0x365.i:                                    ; preds = %block_0x31a.i
  %377 = load i64* %75, align 8, !mcsema_real_eip !121
  %378 = add i64 %377, 31
  %379 = inttoptr i64 %378 to i8*
  %380 = load i8* %379, align 1, !mcsema_real_eip !122
  %381 = zext i8 %380 to i64
  %382 = tail call x86_64_sysvcc i64 @to_byte(i64 %381), !mcsema_real_eip !123
  %383 = trunc i64 %382 to i32, !mcsema_real_eip !124
  %384 = icmp eq i32 %383, 4
  br i1 %384, label %block_0x365.block_0x38e_crit_edge.i, label %block_0x37f.i, !mcsema_real_eip !125

block_0x365.block_0x38e_crit_edge.i:              ; preds = %block_0x365.i
  %.pre.i = load i32* %139, align 4
  br label %block_0x38e.i

block_0x37f.i:                                    ; preds = %block_0x365.i
  store i32 -32, i32* %139, align 4, !mcsema_real_eip !126
  br label %block_0x38e.i, !mcsema_real_eip !127

sub_0.exit:                                       ; preds = %block_0x38e.i, %block_0x388.i, %block_0x391.i
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #0

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 4, [12 x i8] c"\09pushq\09%rbx\00"}
!4 = metadata !{i64 9, [22 x i8] c"\09movq\09%rdi, -72(%rbp)\00"}
!5 = metadata !{i64 20, [9 x i8] c"\09callq\090\00"}
!6 = metadata !{i64 25, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!7 = metadata !{i64 32, [6 x i8] c"\09je\098\00"}
!8 = metadata !{i64 47, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!9 = metadata !{i64 51, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!10 = metadata !{i64 56, [7 x i8] c"\09je\0910\00"}
!11 = metadata !{i64 37, [9 x i8] c"\09jmp\09871\00"}
!12 = metadata !{i64 913, [16 x i8] c"\09addq\09$72, %rsp\00"}
!13 = metadata !{i64 917, [11 x i8] c"\09popq\09%rbx\00"}
!14 = metadata !{i64 918, [11 x i8] c"\09popq\09%rbp\00"}
!15 = metadata !{i64 919, [6 x i8] c"\09retq\00"}
!16 = metadata !{i64 76, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!17 = metadata !{i64 84, [9 x i8] c"\09callq\090\00"}
!18 = metadata !{i64 89, [15 x i8] c"\09cmpl\09$9, %eax\00"}
!19 = metadata !{i64 92, [7 x i8] c"\09je\0910\00"}
!20 = metadata !{i64 104, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!21 = metadata !{i64 112, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!22 = metadata !{i64 120, [9 x i8] c"\09callq\090\00"}
!23 = metadata !{i64 125, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
!24 = metadata !{i64 136, [7 x i8] c"\09je\0910\00"}
!25 = metadata !{i64 148, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!26 = metadata !{i64 156, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!27 = metadata !{i64 164, [9 x i8] c"\09callq\090\00"}
!28 = metadata !{i64 169, [22 x i8] c"\09movl\09%eax, -32(%rbp)\00"}
!29 = metadata !{i64 181, [8 x i8] c"\09jbe\0910\00"}
!30 = metadata !{i64 193, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!31 = metadata !{i64 201, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!32 = metadata !{i64 213, [8 x i8] c"\09jne\0973\00"}
!33 = metadata !{i64 239, [29 x i8] c"\09movl\09$4294967292, -20(%rbp)\00"}
!34 = metadata !{i64 246, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!35 = metadata !{i64 254, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!36 = metadata !{i64 260, [21 x i8] c"\09movb\09%al, -33(%rbp)\00"}
!37 = metadata !{i64 263, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!38 = metadata !{i64 271, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!39 = metadata !{i64 277, [21 x i8] c"\09movb\09%al, -34(%rbp)\00"}
!40 = metadata !{i64 280, [20 x i8] c"\09cmpb\09$3, -33(%rbp)\00"}
!41 = metadata !{i64 304, [20 x i8] c"\09addl\09$4, -20(%rbp)\00"}
!42 = metadata !{i64 284, [7 x i8] c"\09je\0912\00"}
!43 = metadata !{i64 310, [20 x i8] c"\09addl\09$5, -20(%rbp)\00"}
!44 = metadata !{i64 314, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!45 = metadata !{i64 322, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!46 = metadata !{i64 330, [9 x i8] c"\09callq\090\00"}
!47 = metadata !{i64 335, [21 x i8] c"\09movb\09%al, -35(%rbp)\00"}
!48 = metadata !{i64 338, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!49 = metadata !{i64 346, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!50 = metadata !{i64 354, [9 x i8] c"\09callq\090\00"}
!51 = metadata !{i64 359, [20 x i8] c"\09orb\09%al, -35(%rbp)\00"}
!52 = metadata !{i64 377, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!53 = metadata !{i64 382, [21 x i8] c"\09shll\09%cl, -20(%rbp)\00"}
!54 = metadata !{i64 389, [7 x i8] c"\09je\0910\00"}
!55 = metadata !{i64 401, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!56 = metadata !{i64 422, [9 x i8] c"\09callq\090\00"}
!57 = metadata !{i64 427, [21 x i8] c"\09movw\09%ax, -38(%rbp)\00"}
!58 = metadata !{i64 435, [17 x i8] c"\09orw\09$21845, %ax\00"}
!59 = metadata !{i64 443, [8 x i8] c"\09jne\0923\00"}
!60 = metadata !{i64 396, [9 x i8] c"\09jmp\09512\00"}
!61 = metadata !{i64 468, [24 x i8] c"\09movl\09$48059, -20(%rbp)\00"}
!62 = metadata !{i64 475, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!63 = metadata !{i64 496, [9 x i8] c"\09callq\090\00"}
!64 = metadata !{i64 501, [22 x i8] c"\09movl\09%eax, -44(%rbp)\00"}
!65 = metadata !{i64 507, [24 x i8] c"\09xorl\09$2760406685, %eax\00"}
!66 = metadata !{i64 512, [22 x i8] c"\09movl\09%eax, -48(%rbp)\00"}
!67 = metadata !{i64 521, [22 x i8] c"\09movl\09%eax, -52(%rbp)\00"}
!68 = metadata !{i64 524, [22 x i8] c"\09movl\09-48(%rbp), %eax\00"}
!69 = metadata !{i64 530, [22 x i8] c"\09movl\09%eax, -56(%rbp)\00"}
!70 = metadata !{i64 533, [24 x i8] c"\09cmpl\09$20299, -52(%rbp)\00"}
!71 = metadata !{i64 540, [8 x i8] c"\09jne\0917\00"}
!72 = metadata !{i64 459, [24 x i8] c"\09movl\09$43690, -20(%rbp)\00"}
!73 = metadata !{i64 559, [24 x i8] c"\09movl\09$48351, -20(%rbp)\00"}
!74 = metadata !{i64 566, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!75 = metadata !{i64 570, [21 x i8] c"\09leaq\0920(%rax), %rcx\00"}
!76 = metadata !{i64 587, [9 x i8] c"\09callq\090\00"}
!77 = metadata !{i64 592, [22 x i8] c"\09movl\09%eax, -60(%rbp)\00"}
!78 = metadata !{i64 595, [20 x i8] c"\09subl\09$3, -60(%rbp)\00"}
!79 = metadata !{i64 602, [15 x i8] c"\09andl\09$7, %eax\00"}
!80 = metadata !{i64 607, [7 x i8] c"\09je\0910\00"}
!81 = metadata !{i64 542, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!82 = metadata !{i64 545, [22 x i8] c"\09cmpl\09-56(%rbp), %eax\00"}
!83 = metadata !{i64 548, [7 x i8] c"\09jne\099\00"}
!84 = metadata !{i64 550, [20 x i8] c"\09movl\09$0, -20(%rbp)\00"}
!85 = metadata !{i64 619, [29 x i8] c"\09addl\09$2147483648, -60(%rbp)\00"}
!86 = metadata !{i64 626, [28 x i8] c"\09cmpl\09$268435455, -60(%rbp)\00"}
!87 = metadata !{i64 633, [8 x i8] c"\09jbe\0910\00"}
!88 = metadata !{i64 663, [22 x i8] c"\09movl\09-60(%rbp), %eax\00"}
!89 = metadata !{i64 671, [11 x i8] c"\09mull\09%edx\00"}
!90 = metadata !{i64 678, [22 x i8] c"\09movl\09%eax, -60(%rbp)\00"}
!91 = metadata !{i64 685, [6 x i8] c"\09je\098\00"}
!92 = metadata !{i64 695, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!93 = metadata !{i64 699, [21 x i8] c"\09leaq\0928(%rax), %rcx\00"}
!94 = metadata !{i64 703, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!95 = metadata !{i64 716, [9 x i8] c"\09callq\090\00"}
!96 = metadata !{i64 721, [22 x i8] c"\09movl\09%eax, -64(%rbp)\00"}
!97 = metadata !{i64 724, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!98 = metadata !{i64 732, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!99 = metadata !{i64 747, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!100 = metadata !{i64 737, [8 x i8] c"\09jne\0929\00"}
!101 = metadata !{i64 690, [9 x i8] c"\09jmp\09218\00"}
!102 = metadata !{i64 792, [9 x i8] c"\09jne\09110\00"}
!103 = metadata !{i64 754, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!104 = metadata !{i64 757, [22 x i8] c"\09xorl\09-64(%rbp), %eax\00"}
!105 = metadata !{i64 760, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!106 = metadata !{i64 763, [9 x i8] c"\09jmp\09142\00"}
!107 = metadata !{i64 907, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!108 = metadata !{i64 802, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!109 = metadata !{i64 805, [18 x i8] c"\09movsbl\09%al, %edx\00"}
!110 = metadata !{i64 816, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!111 = metadata !{i64 819, [18 x i8] c"\09movsbl\09%al, %eax\00"}
!112 = metadata !{i64 822, [17 x i8] c"\09subl\09%eax, %edx\00"}
!113 = metadata !{i64 829, [22 x i8] c"\09addl\09%eax, -20(%rbp)\00"}
!114 = metadata !{i64 835, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!115 = metadata !{i64 843, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!116 = metadata !{i64 851, [9 x i8] c"\09callq\090\00"}
!117 = metadata !{i64 856, [17 x i8] c"\09subl\09%eax, %ebx\00"}
!118 = metadata !{i64 860, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!119 = metadata !{i64 867, [8 x i8] c"\09jne\0941\00"}
!120 = metadata !{i64 910, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!121 = metadata !{i64 869, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!122 = metadata !{i64 877, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!123 = metadata !{i64 885, [9 x i8] c"\09callq\090\00"}
!124 = metadata !{i64 890, [15 x i8] c"\09cmpl\09$4, %eax\00"}
!125 = metadata !{i64 893, [7 x i8] c"\09je\0915\00"}
!126 = metadata !{i64 895, [29 x i8] c"\09movl\09$4294967264, -20(%rbp)\00"}
!127 = metadata !{i64 902, [7 x i8] c"\09jmp\096\00"}
