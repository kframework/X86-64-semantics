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
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %3 = load i64* %RDX.i, align 8, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %4 = load i64* %RSI.i, align 8, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %5 = load i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %6 = load i64* %RSP.i, align 8, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %7 = load i64* %RBP.i, align 8, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %8 = load i64* %R8.i, align 8, !mcsema_real_eip !2
  %R9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %9 = load i64* %R9.i, align 8, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %10 = load i64* %R10.i, align 8, !mcsema_real_eip !2
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %11 = load i64* %R11.i, align 8, !mcsema_real_eip !2
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %12 = load i64* %R12.i, align 8, !mcsema_real_eip !2
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %13 = load i64* %R13.i, align 8, !mcsema_real_eip !2
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %14 = load i64* %R14.i, align 8, !mcsema_real_eip !2
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %15 = load i64* %R15.i, align 8, !mcsema_real_eip !2
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %16 = load i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %17 = load i1* %DF.i, align 1, !mcsema_real_eip !2
  %18 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %20 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %21 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %22 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %23 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %24 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %25 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %26 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %27 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %28 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %29 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %30 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %31 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %32 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %33 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %34 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %35 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %36 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %37 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %38 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %39 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %40 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %41 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %42 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %43 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %44 = bitcast i8* %43 to i64*
  %45 = load i64* %44, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %46 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %47 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %48 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %49 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %50 = load i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %51 = load i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %52 = load i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %53 = load i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %54 = load i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %55 = load i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %56 = load i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %57 = load i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %58 = load i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %59 = load i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %60 = load i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %61 = load i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %62 = load i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %63 = load i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %64 = load i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %65 = load i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %66 = load i64* %STACK_BASE.i, align 8, !mcsema_real_eip !2
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %67 = load i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !2
  %68 = add i64 %6, -8
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !2
  store i64 %7, i64* %69, align 8, !mcsema_real_eip !2
  %70 = add i64 %6, -88
  %71 = add i64 %6, -24, !mcsema_real_eip !3
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !3
  store i64 %5, i64* %72, align 8, !mcsema_real_eip !3
  %73 = tail call x86_64_sysvcc i64 @strlen(i64 %5), !mcsema_real_eip !4
  %74 = add i64 %6, -40, !mcsema_real_eip !5
  %75 = trunc i64 %73 to i32, !mcsema_real_eip !5
  %76 = inttoptr i64 %74 to i32*
  store i32 %75, i32* %76, align 4, !mcsema_real_eip !5
  %77 = icmp eq i32 %75, 37
  br i1 %77, label %block_0x32.i, label %block_0x27.i, !mcsema_real_eip !6

block_0x32.i:                                     ; preds = %driverBlockRaw
  %78 = load i64* %72, align 8, !mcsema_real_eip !7
  %79 = add i64 %78, 4
  store i64 %79, i64* %72, align 8, !mcsema_real_eip !8
  %80 = inttoptr i64 %79 to i8*
  %81 = load i8* %80, align 1, !mcsema_real_eip !9
  %82 = sext i8 %81 to i64
  %83 = and i64 %82, 4294967295
  %84 = icmp eq i8 %81, 100
  br i1 %84, label %block_0x5f.i, label %block_0x53.i, !mcsema_real_eip !10

block_0x27.i:                                     ; preds = %driverBlockRaw
  %85 = and i64 %73, 4294967295
  %86 = add i64 %6, -12, !mcsema_real_eip !11
  %87 = inttoptr i64 %86 to i32*
  store i32 %75, i32* %87, align 4, !mcsema_real_eip !11
  br label %block_0x46d.i, !mcsema_real_eip !12

block_0x46d.i:                                    ; preds = %block_0x37e.i, %block_0x32d.i, %block_0x309.i, %block_0x1fa.i, %block_0x127.i, %block_0xdb.i, %block_0xa4.i, %block_0x77.i, %block_0x53.i, %block_0x27.i
  %RDI_val.0.i = phi i64 [ %RDI_val.2.i, %block_0x37e.i ], [ %RDI_val.2.i, %block_0x32d.i ], [ %RDI_val.3.i, %block_0x309.i ], [ %RDI_val.1.i, %block_0x1fa.i ], [ 2, %block_0x127.i ], [ 2, %block_0xdb.i ], [ %122, %block_0xa4.i ], [ %112, %block_0x77.i ], [ %5, %block_0x53.i ], [ %5, %block_0x27.i ]
  %RSI_val.0.i = phi i64 [ %RSI_val.1.i, %block_0x37e.i ], [ %RSI_val.1.i, %block_0x32d.i ], [ %RSI_val.2.i, %block_0x309.i ], [ %4, %block_0x1fa.i ], [ %4, %block_0x127.i ], [ %4, %block_0xdb.i ], [ %4, %block_0xa4.i ], [ %4, %block_0x77.i ], [ %4, %block_0x53.i ], [ %4, %block_0x27.i ]
  %RDX_val.0.i = phi i64 [ %350, %block_0x37e.i ], [ 8, %block_0x32d.i ], [ 8, %block_0x309.i ], [ %RDX_val.1.i, %block_0x1fa.i ], [ %146, %block_0x127.i ], [ %146, %block_0xdb.i ], [ %3, %block_0xa4.i ], [ %3, %block_0x77.i ], [ %3, %block_0x53.i ], [ %3, %block_0x27.i ]
  %RCX_val.0.i = phi i64 [ 10000, %block_0x37e.i ], [ %241, %block_0x32d.i ], [ %241, %block_0x309.i ], [ %227, %block_0x1fa.i ], [ %RCX_val.1.i, %block_0x127.i ], [ %83, %block_0xdb.i ], [ %83, %block_0xa4.i ], [ %83, %block_0x77.i ], [ %83, %block_0x53.i ], [ %85, %block_0x27.i ]
  %88 = add i64 %6, -12, !mcsema_real_eip !13
  %89 = inttoptr i64 %88 to i32*
  %90 = load i32* %89, align 4, !mcsema_real_eip !13
  %91 = zext i32 %90 to i64, !mcsema_real_eip !13
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %70, i64 80)
  %92 = extractvalue { i64, i1 } %uadd.i, 0
  %93 = xor i64 %92, %70, !mcsema_real_eip !14
  %94 = and i64 %93, 16
  %95 = icmp eq i64 %94, 0
  %96 = icmp slt i64 %92, 0
  %97 = icmp eq i64 %92, 0, !mcsema_real_eip !14
  %98 = add i64 %6, 9223372036854775720
  %99 = and i64 %93, %98, !mcsema_real_eip !14
  %100 = icmp slt i64 %99, 0
  %101 = trunc i64 %92 to i8, !mcsema_real_eip !14
  %102 = tail call i8 @llvm.ctpop.i8(i8 %101), !mcsema_real_eip !14
  %103 = and i8 %102, 1
  %104 = icmp eq i8 %103, 0
  %105 = extractvalue { i64, i1 } %uadd.i, 1
  %106 = inttoptr i64 %92 to i64*, !mcsema_real_eip !15
  %107 = load i64* %106, align 8, !mcsema_real_eip !15
  %108 = add i64 %92, 16, !mcsema_real_eip !16
  store i64 %91, i64* %RAX.i, align 8, !mcsema_real_eip !16
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !16
  store i64 %RCX_val.0.i, i64* %RCX.i, align 8, !mcsema_real_eip !16
  store i64 %RDX_val.0.i, i64* %RDX.i, align 8, !mcsema_real_eip !16
  store i64 %RSI_val.0.i, i64* %RSI.i, align 8, !mcsema_real_eip !16
  store i64 %RDI_val.0.i, i64* %RDI.i, align 8, !mcsema_real_eip !16
  store i64 %108, i64* %RSP.i, align 8, !mcsema_real_eip !16
  store i64 %107, i64* %RBP.i, align 8, !mcsema_real_eip !16
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !16
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !16
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !16
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !16
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !16
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !16
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !16
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !16
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !16
  store i1 %105, i1* %CF.i, align 1, !mcsema_real_eip !16
  store i1 %104, i1* %PF.i, align 1, !mcsema_real_eip !16
  store i1 %95, i1* %AF.i, align 1, !mcsema_real_eip !16
  store i1 %97, i1* %ZF.i, align 1, !mcsema_real_eip !16
  store i1 %96, i1* %SF.i, align 1, !mcsema_real_eip !16
  store i1 %100, i1* %OF.i, align 1, !mcsema_real_eip !16
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !16
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !16
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !16
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !16
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !16
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !16
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !16
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !16
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !16
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !16
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !16
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !16
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !16
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !16
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !16
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !16
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !16
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !16
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !16
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !16
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !16
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !16
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !16
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !16
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !16
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !16
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !16
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !16
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !16
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !16
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !16
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !16
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !16
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !16
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !16
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !16
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !16
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !16
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !16
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !16
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !16
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !16
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !16
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !16
  store i64 %66, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !16
  store i64 %67, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !16
  call void @llvm.lifetime.end(i64 128, i8* %1)
  br label %sub_0.exit

block_0x5f.i:                                     ; preds = %block_0x32.i
  %109 = add i64 %78, 5, !mcsema_real_eip !17
  %110 = inttoptr i64 %109 to i8*
  %111 = load i8* %110, align 1, !mcsema_real_eip !17
  %112 = zext i8 %111 to i64
  %113 = tail call x86_64_sysvcc i64 @to_byte(i64 %112), !mcsema_real_eip !18
  %114 = trunc i64 %113 to i32, !mcsema_real_eip !19
  %115 = icmp eq i32 %114, 9
  br i1 %115, label %block_0x83.i, label %block_0x77.i, !mcsema_real_eip !20

block_0x53.i:                                     ; preds = %block_0x32.i
  %116 = add i64 %6, -12, !mcsema_real_eip !21
  %117 = inttoptr i64 %116 to i32*
  store i32 -2, i32* %117, align 4, !mcsema_real_eip !21
  br label %block_0x46d.i, !mcsema_real_eip !22

block_0x83.i:                                     ; preds = %block_0x5f.i
  %118 = load i64* %72, align 8, !mcsema_real_eip !23
  %119 = add i64 %118, 2, !mcsema_real_eip !24
  %120 = inttoptr i64 %119 to i8*
  %121 = load i8* %120, align 1, !mcsema_real_eip !24
  %122 = zext i8 %121 to i64
  %123 = tail call x86_64_sysvcc i64 @to_byte(i64 %122), !mcsema_real_eip !25
  %124 = add i64 %6, -32, !mcsema_real_eip !26
  %125 = trunc i64 %123 to i32, !mcsema_real_eip !26
  %126 = inttoptr i64 %124 to i32*
  store i32 %125, i32* %126, align 4, !mcsema_real_eip !26
  %.mask1.i = and i32 %125, 2147483647
  %127 = icmp eq i32 %.mask1.i, 13
  br i1 %127, label %block_0xb0.i, label %block_0xa4.i, !mcsema_real_eip !27

block_0x77.i:                                     ; preds = %block_0x5f.i
  %128 = add i64 %6, -12, !mcsema_real_eip !28
  %129 = inttoptr i64 %128 to i32*
  store i32 -3, i32* %129, align 4, !mcsema_real_eip !28
  br label %block_0x46d.i, !mcsema_real_eip !29

block_0xb0.i:                                     ; preds = %block_0x83.i
  %130 = load i64* %72, align 8, !mcsema_real_eip !30
  %131 = add i64 %130, 3, !mcsema_real_eip !31
  %132 = inttoptr i64 %131 to i8*
  %133 = load i8* %132, align 1, !mcsema_real_eip !31
  %134 = zext i8 %133 to i64
  %135 = tail call x86_64_sysvcc i64 @to_byte(i64 %134), !mcsema_real_eip !32
  %136 = add i64 %6, -36, !mcsema_real_eip !33
  %137 = trunc i64 %135 to i32, !mcsema_real_eip !33
  %138 = inttoptr i64 %136 to i32*
  store i32 %137, i32* %138, align 4, !mcsema_real_eip !33
  %139 = add i32 %137, 1
  %.lobit.i = ashr i32 %139, 31
  %140 = zext i32 %.lobit.i to i64, !mcsema_real_eip !34
  %141 = shl nuw i64 %140, 32, !mcsema_real_eip !35
  %142 = sext i32 %139 to i64, !mcsema_real_eip !35
  %143 = or i64 %141, %142, !mcsema_real_eip !35
  %144 = sdiv i64 %143, 2, !mcsema_real_eip !35
  %145 = srem i64 %143, 2, !mcsema_real_eip !35
  %146 = and i64 %145, 4294967295
  %147 = trunc i64 %144 to i32, !mcsema_real_eip !36
  %148 = icmp eq i32 %147, 7
  br i1 %148, label %block_0xe7.i, label %block_0xdb.i, !mcsema_real_eip !37

block_0xa4.i:                                     ; preds = %block_0x83.i
  %149 = add i64 %6, -12, !mcsema_real_eip !38
  %150 = inttoptr i64 %149 to i32*
  store i32 -4, i32* %150, align 4, !mcsema_real_eip !38
  br label %block_0x46d.i, !mcsema_real_eip !39

block_0xe7.i:                                     ; preds = %block_0xb0.i
  %151 = load i64* %72, align 8, !mcsema_real_eip !40
  %152 = add i64 %151, 4, !mcsema_real_eip !41
  %153 = inttoptr i64 %152 to i8*
  %154 = load i8* %153, align 1, !mcsema_real_eip !41
  %155 = zext i8 %154 to i32
  %156 = and i32 %155, 15, !mcsema_real_eip !42
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %block_0x101.i, label %block_0x127.i, !mcsema_real_eip !43

block_0xdb.i:                                     ; preds = %block_0xb0.i
  %158 = add i64 %6, -12, !mcsema_real_eip !44
  %159 = inttoptr i64 %158 to i32*
  store i32 -5, i32* %159, align 4, !mcsema_real_eip !44
  br label %block_0x46d.i, !mcsema_real_eip !45

block_0x127.i:                                    ; preds = %block_0x101.i, %block_0xe7.i
  %RCX_val.1.in.i = phi i32 [ %162, %block_0x101.i ], [ %156, %block_0xe7.i ]
  %RCX_val.1.i = zext i32 %RCX_val.1.in.i to i64
  %160 = add i64 %6, -12, !mcsema_real_eip !46
  %161 = inttoptr i64 %160 to i32*
  store i32 -6, i32* %161, align 4, !mcsema_real_eip !46
  br label %block_0x46d.i, !mcsema_real_eip !47

block_0x101.i:                                    ; preds = %block_0xe7.i
  %162 = and i32 %155, 240, !mcsema_real_eip !48
  %163 = icmp eq i32 %162, 48
  br i1 %163, label %block_0x11b.i, label %block_0x127.i, !mcsema_real_eip !49

block_0x11b.i:                                    ; preds = %block_0x101.i
  %164 = add i64 %6, -28, !mcsema_real_eip !50
  %165 = inttoptr i64 %164 to i32*
  store i32 -4, i32* %165, align 4, !mcsema_real_eip !50
  %166 = load i64* %72, align 8, !mcsema_real_eip !51
  %167 = add i64 %166, 5, !mcsema_real_eip !52
  %168 = inttoptr i64 %167 to i8*
  %169 = load i8* %168, align 1, !mcsema_real_eip !52
  %170 = and i8 %169, 15
  %171 = add i64 %6, -41, !mcsema_real_eip !53
  %172 = inttoptr i64 %171 to i8*
  store i8 %170, i8* %172, align 1, !mcsema_real_eip !53
  %173 = load i64* %72, align 8, !mcsema_real_eip !54
  %174 = add i64 %173, 5, !mcsema_real_eip !55
  %175 = inttoptr i64 %174 to i8*
  %176 = load i8* %175, align 1, !mcsema_real_eip !55
  %177 = and i8 %176, -16
  %178 = add i64 %6, -42, !mcsema_real_eip !56
  %179 = inttoptr i64 %178 to i8*
  store i8 %177, i8* %179, align 1, !mcsema_real_eip !56
  %180 = load i8* %172, align 1, !mcsema_real_eip !57
  %181 = icmp eq i8 %180, 3
  %182 = icmp eq i8 %177, 96
  %or.cond.i = and i1 %181, %182
  %183 = load i32* %165, align 4, !mcsema_real_eip !58
  br i1 %or.cond.i, label %block_0x178.i, label %block_0x188.i, !mcsema_real_eip !59

block_0x188.i:                                    ; preds = %block_0x11b.i
  %184 = add i32 %183, 5
  store i32 %184, i32* %165, align 4, !mcsema_real_eip !60
  %185 = load i64* %72, align 8, !mcsema_real_eip !61
  %186 = add i64 %185, 6, !mcsema_real_eip !62
  %187 = inttoptr i64 %186 to i8*
  %188 = load i8* %187, align 1, !mcsema_real_eip !62
  %189 = zext i8 %188 to i64
  %190 = tail call x86_64_sysvcc i64 @to_byte(i64 %189), !mcsema_real_eip !63
  %191 = add i64 %6, -43, !mcsema_real_eip !64
  %192 = trunc i64 %190 to i8, !mcsema_real_eip !64
  %193 = inttoptr i64 %191 to i8*
  store i8 %192, i8* %193, align 1, !mcsema_real_eip !64
  %194 = load i64* %72, align 8, !mcsema_real_eip !65
  %195 = add i64 %194, 7, !mcsema_real_eip !66
  %196 = inttoptr i64 %195 to i8*
  %197 = load i8* %196, align 1, !mcsema_real_eip !66
  %198 = zext i8 %197 to i64
  %199 = tail call x86_64_sysvcc i64 @to_byte(i64 %198), !mcsema_real_eip !67
  %200 = load i8* %193, align 1, !mcsema_real_eip !68
  %201 = zext i8 %200 to i32
  %202 = trunc i64 %199 to i32, !mcsema_real_eip !69
  %203 = or i32 %201, %202, !mcsema_real_eip !69
  %204 = trunc i32 %203 to i8, !mcsema_real_eip !69
  store i8 %204, i8* %193, align 1, !mcsema_real_eip !70
  br label %block_0x1e2.i

block_0x178.i:                                    ; preds = %block_0x11b.i
  %205 = add i32 %183, 4
  store i32 %205, i32* %165, align 4, !mcsema_real_eip !71
  %206 = load i64* %72, align 8, !mcsema_real_eip !61
  %207 = add i64 %206, 6, !mcsema_real_eip !62
  %208 = inttoptr i64 %207 to i8*
  %209 = load i8* %208, align 1, !mcsema_real_eip !62
  %210 = zext i8 %209 to i64
  %211 = tail call x86_64_sysvcc i64 @to_byte(i64 %210), !mcsema_real_eip !63
  %212 = add i64 %6, -43, !mcsema_real_eip !64
  %213 = trunc i64 %211 to i8, !mcsema_real_eip !64
  %214 = inttoptr i64 %212 to i8*
  store i8 %213, i8* %214, align 1, !mcsema_real_eip !64
  %215 = load i64* %72, align 8, !mcsema_real_eip !65
  %216 = add i64 %215, 7, !mcsema_real_eip !66
  %217 = inttoptr i64 %216 to i8*
  %218 = load i8* %217, align 1, !mcsema_real_eip !66
  %219 = zext i8 %218 to i64
  %220 = tail call x86_64_sysvcc i64 @to_byte(i64 %219), !mcsema_real_eip !67
  %221 = load i8* %214, align 1, !mcsema_real_eip !68
  %222 = zext i8 %221 to i32
  %223 = trunc i64 %220 to i32, !mcsema_real_eip !69
  %224 = or i32 %222, %223, !mcsema_real_eip !69
  %225 = trunc i32 %224 to i8, !mcsema_real_eip !69
  store i8 %225, i8* %214, align 1, !mcsema_real_eip !70
  br label %block_0x1e2.i

block_0x1e2.i:                                    ; preds = %block_0x178.i, %block_0x188.i
  %RDI_val.1.in.i = phi i32 [ %224, %block_0x178.i ], [ %203, %block_0x188.i ]
  %RDX_val.1.i = phi i64 [ %215, %block_0x178.i ], [ %194, %block_0x188.i ]
  %226 = load i32* %165, align 4, !mcsema_real_eip !72
  %227 = zext i32 %226 to i64, !mcsema_real_eip !72
  %228 = and i32 %226, 31, !mcsema_real_eip !73
  %229 = add i32 %226, -1
  %230 = icmp ne i32 %228, 0, !mcsema_real_eip !73
  %231 = select i1 %230, i32 %229, i32 0, !mcsema_real_eip !73
  %232 = zext i1 %230 to i32
  %233 = shl i32 %226, %231, !mcsema_real_eip !73
  %234 = shl i32 %233, %232, !mcsema_real_eip !73
  %235 = icmp eq i32 %234, 0, !mcsema_real_eip !73
  store i32 %234, i32* %165, align 4, !mcsema_real_eip !74
  br i1 %235, label %block_0x206.i, label %block_0x1fa.i, !mcsema_real_eip !75

block_0x206.i:                                    ; preds = %block_0x1e2.i
  %236 = load i64* %72, align 8, !mcsema_real_eip !76
  %237 = add i64 %236, 8
  %238 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %237, i64 4), !mcsema_real_eip !77
  %239 = and i64 %238, 65535
  %240 = and i64 %227, 4294901760, !mcsema_real_eip !78
  %241 = or i64 %239, %240
  %242 = add i64 %6, -46, !mcsema_real_eip !79
  %243 = trunc i64 %238 to i16, !mcsema_real_eip !79
  %244 = inttoptr i64 %242 to i16*
  store i16 %243, i16* %244, align 2, !mcsema_real_eip !79
  %245 = trunc i64 %238 to i32
  %246 = and i32 %245, 65535
  %247 = or i32 %246, 21845, !mcsema_real_eip !80
  %248 = icmp eq i32 %247, 56663
  %249 = or i32 %246, 43690
  %250 = icmp eq i32 %249, 65211
  %or.cond3.i = and i1 %248, %250
  br i1 %or.cond3.i, label %block_0x251.i, label %block_0x25d.i, !mcsema_real_eip !81

block_0x1fa.i:                                    ; preds = %block_0x1e2.i
  %RDI_val.1.i = zext i32 %RDI_val.1.in.i to i64
  %251 = add i64 %6, -12, !mcsema_real_eip !82
  %252 = inttoptr i64 %251 to i32*
  store i32 -7, i32* %252, align 4, !mcsema_real_eip !82
  br label %block_0x46d.i, !mcsema_real_eip !83

block_0x25d.i:                                    ; preds = %block_0x206.i
  store i32 48059, i32* %165, align 4, !mcsema_real_eip !84
  %253 = load i64* %72, align 8, !mcsema_real_eip !85
  %254 = add i64 %253, 12
  %255 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %254, i64 8), !mcsema_real_eip !86
  %256 = add i64 %6, -52, !mcsema_real_eip !87
  %257 = trunc i64 %255 to i32, !mcsema_real_eip !87
  %258 = inttoptr i64 %256 to i32*
  store i32 %257, i32* %258, align 4, !mcsema_real_eip !87
  %259 = xor i32 %257, -1534560611, !mcsema_real_eip !88
  %260 = add i64 %6, -56, !mcsema_real_eip !89
  %261 = inttoptr i64 %260 to i32*
  store i32 %259, i32* %261, align 4, !mcsema_real_eip !89
  %262 = lshr i32 %259, 16
  %263 = add i64 %6, -60, !mcsema_real_eip !90
  %264 = inttoptr i64 %263 to i32*
  store i32 %262, i32* %264, align 4, !mcsema_real_eip !90
  %265 = load i32* %261, align 4, !mcsema_real_eip !91
  %266 = and i32 %265, 65535, !mcsema_real_eip !92
  %267 = add i64 %6, -64, !mcsema_real_eip !93
  %268 = inttoptr i64 %267 to i32*
  store i32 %266, i32* %268, align 4, !mcsema_real_eip !93
  %269 = load i32* %264, align 4, !mcsema_real_eip !94
  %270 = icmp eq i32 %269, 20299
  br i1 %270, label %block_0x2af.i, label %block_0x2c7.i, !mcsema_real_eip !95

block_0x251.i:                                    ; preds = %block_0x206.i
  store i32 43690, i32* %165, align 4, !mcsema_real_eip !96
  %271 = load i64* %72, align 8, !mcsema_real_eip !85
  %272 = add i64 %271, 12
  %273 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %272, i64 8), !mcsema_real_eip !86
  %274 = add i64 %6, -52, !mcsema_real_eip !87
  %275 = trunc i64 %273 to i32, !mcsema_real_eip !87
  %276 = inttoptr i64 %274 to i32*
  store i32 %275, i32* %276, align 4, !mcsema_real_eip !87
  %277 = xor i32 %275, -1534560611, !mcsema_real_eip !88
  %278 = add i64 %6, -56, !mcsema_real_eip !89
  %279 = inttoptr i64 %278 to i32*
  store i32 %277, i32* %279, align 4, !mcsema_real_eip !89
  %280 = lshr i32 %277, 16
  %281 = add i64 %6, -60, !mcsema_real_eip !90
  %282 = inttoptr i64 %281 to i32*
  store i32 %280, i32* %282, align 4, !mcsema_real_eip !90
  %283 = load i32* %279, align 4, !mcsema_real_eip !91
  %284 = and i32 %283, 65535, !mcsema_real_eip !92
  %285 = add i64 %6, -64, !mcsema_real_eip !93
  %286 = inttoptr i64 %285 to i32*
  store i32 %284, i32* %286, align 4, !mcsema_real_eip !93
  %287 = load i32* %282, align 4, !mcsema_real_eip !94
  %288 = icmp eq i32 %287, 20299
  br i1 %288, label %block_0x2af.i, label %block_0x2c7.i, !mcsema_real_eip !95

block_0x2c7.i:                                    ; preds = %block_0x2af.i, %block_0x251.i, %block_0x25d.i
  store i32 48351, i32* %165, align 4, !mcsema_real_eip !97
  %289 = load i64* %72, align 8, !mcsema_real_eip !98
  %290 = add i64 %289, 20
  %291 = tail call x86_64_sysvcc i64 @read_bytes(i64 48351, i64 %290, i64 8), !mcsema_real_eip !99
  %292 = add i64 %6, -68, !mcsema_real_eip !100
  %293 = trunc i64 %291 to i32, !mcsema_real_eip !100
  %294 = inttoptr i64 %292 to i32*
  %295 = add i32 %293, -3
  store i32 %295, i32* %294, align 4, !mcsema_real_eip !101
  %296 = and i32 %295, 7, !mcsema_real_eip !102
  %297 = icmp eq i32 %296, 0, !mcsema_real_eip !102
  br i1 %297, label %block_0x315.i, label %block_0x309.i, !mcsema_real_eip !103

block_0x2af.i:                                    ; preds = %block_0x251.i, %block_0x25d.i
  %298 = add i64 %6, -64, !mcsema_real_eip !104
  %299 = inttoptr i64 %298 to i32*
  %300 = load i32* %299, align 4, !mcsema_real_eip !104
  %301 = load i32* %165, align 4, !mcsema_real_eip !105
  %302 = icmp eq i32 %300, %301
  br i1 %302, label %block_0x2bb.i, label %block_0x2c7.i, !mcsema_real_eip !106

block_0x2bb.i:                                    ; preds = %block_0x2af.i
  store i32 0, i32* %165, align 4, !mcsema_real_eip !107
  %303 = load i64* %72, align 8, !mcsema_real_eip !98
  %304 = add i64 %303, 20
  %305 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %304, i64 8), !mcsema_real_eip !99
  %306 = add i64 %6, -68, !mcsema_real_eip !100
  %307 = trunc i64 %305 to i32, !mcsema_real_eip !100
  %308 = inttoptr i64 %306 to i32*
  %309 = add i32 %307, -3
  store i32 %309, i32* %308, align 4, !mcsema_real_eip !101
  %310 = and i32 %309, 7, !mcsema_real_eip !102
  %311 = icmp eq i32 %310, 0, !mcsema_real_eip !102
  br i1 %311, label %block_0x315.i, label %block_0x309.i, !mcsema_real_eip !103

block_0x315.i:                                    ; preds = %block_0x2bb.i, %block_0x2c7.i
  %RDI_val.2.i = phi i64 [ 0, %block_0x2bb.i ], [ 48351, %block_0x2c7.i ]
  %RSI_val.1.i = phi i64 [ %304, %block_0x2bb.i ], [ %290, %block_0x2c7.i ]
  %312 = add i64 %6, -68, !mcsema_real_eip !108
  %313 = inttoptr i64 %312 to i32*
  %314 = load i32* %313, align 4, !mcsema_real_eip !108
  %315 = xor i32 %314, -2147483648
  store i32 %315, i32* %313, align 4, !mcsema_real_eip !109
  %316 = icmp eq i32 %314, -1879048193
  %317 = icmp ult i32 %315, 268435455, !mcsema_real_eip !110
  %318 = or i1 %317, %316, !mcsema_real_eip !111
  br i1 %318, label %block_0x339.i, label %block_0x32d.i, !mcsema_real_eip !111

block_0x309.i:                                    ; preds = %block_0x2bb.i, %block_0x2c7.i
  %RDI_val.3.i = phi i64 [ 0, %block_0x2bb.i ], [ 48351, %block_0x2c7.i ]
  %RSI_val.2.i = phi i64 [ %304, %block_0x2bb.i ], [ %290, %block_0x2c7.i ]
  %319 = add i64 %6, -12, !mcsema_real_eip !112
  %320 = inttoptr i64 %319 to i32*
  store i32 -21, i32* %320, align 4, !mcsema_real_eip !112
  br label %block_0x46d.i, !mcsema_real_eip !113

block_0x339.i:                                    ; preds = %block_0x315.i
  %321 = lshr i32 %314, 4
  %322 = xor i32 %321, 135069696
  %323 = add nsw i32 %322, -226
  %324 = add i64 %6, -76, !mcsema_real_eip !114
  %325 = inttoptr i64 %324 to i32*
  store i32 10000, i32* %325, align 4, !mcsema_real_eip !114
  %326 = sext i32 %323 to i64
  %327 = udiv i64 %326, 10000, !mcsema_real_eip !115
  %328 = trunc i64 %327 to i32, !mcsema_real_eip !116
  store i32 %328, i32* %313, align 4, !mcsema_real_eip !116
  %329 = icmp eq i32 %328, 3
  br i1 %329, label %block_0x389.i, label %block_0x37e.i, !mcsema_real_eip !117

block_0x32d.i:                                    ; preds = %block_0x315.i
  %330 = add i64 %6, -12, !mcsema_real_eip !118
  %331 = inttoptr i64 %330 to i32*
  store i32 -22, i32* %331, align 4, !mcsema_real_eip !118
  br label %block_0x46d.i, !mcsema_real_eip !119

block_0x389.i:                                    ; preds = %block_0x339.i
  %332 = load i32* %165, align 4, !mcsema_real_eip !120
  %333 = zext i32 %332 to i64, !mcsema_real_eip !120
  %334 = load i64* %72, align 8, !mcsema_real_eip !121
  %335 = add i64 %334, 28
  %336 = tail call x86_64_sysvcc i64 @read_bytes(i64 %333, i64 %335, i64 4), !mcsema_real_eip !122
  %337 = add i64 %6, -72, !mcsema_real_eip !123
  %338 = trunc i64 %336 to i32, !mcsema_real_eip !123
  %339 = inttoptr i64 %337 to i32*
  store i32 %338, i32* %339, align 4, !mcsema_real_eip !123
  %340 = load i64* %72, align 8, !mcsema_real_eip !124
  %341 = add i64 %340, 28
  %342 = inttoptr i64 %341 to i8*
  %343 = load i8* %342, align 1, !mcsema_real_eip !125
  %344 = icmp eq i8 %343, 100
  %345 = add i64 %340, 29, !mcsema_real_eip !126
  %346 = inttoptr i64 %345 to i8*
  %347 = load i8* %346, align 1, !mcsema_real_eip !126
  %348 = icmp eq i8 %347, 100
  %or.cond = and i1 %344, %348
  br i1 %or.cond, label %block_0x3cd.i, label %block_0x3dd.i, !mcsema_real_eip !127

block_0x37e.i:                                    ; preds = %block_0x339.i
  %349 = urem i64 %326, 10000, !mcsema_real_eip !115
  %350 = and i64 %349, 16383
  %351 = add i64 %6, -12, !mcsema_real_eip !128
  %352 = inttoptr i64 %351 to i32*
  store i32 %328, i32* %352, align 4, !mcsema_real_eip !128
  br label %block_0x46d.i, !mcsema_real_eip !129

block_0x3dd.i:                                    ; preds = %block_0x389.i
  %353 = icmp eq i8 %343, %347
  br i1 %353, label %block_0x3f5.i, label %block_0x45c.i, !mcsema_real_eip !130

block_0x3cd.i:                                    ; preds = %block_0x389.i
  %354 = load i32* %165, align 4, !mcsema_real_eip !131
  %355 = xor i32 %354, %338, !mcsema_real_eip !132
  %356 = zext i32 %355 to i64, !mcsema_real_eip !132
  store i32 %355, i32* %165, align 4, !mcsema_real_eip !133
  br label %block_0x467.i, !mcsema_real_eip !134

block_0x45c.i:                                    ; preds = %block_0x3dd.i
  %357 = sext i8 %343 to i64
  %358 = and i64 %357, 4294967295
  %359 = sext i8 %347 to i64
  %360 = and i64 %359, 4294967295
  store i32 %338, i32* %165, align 4, !mcsema_real_eip !135
  br label %block_0x467.i, !mcsema_real_eip !136

block_0x3f5.i:                                    ; preds = %block_0x3dd.i
  %361 = add i64 %340, 31, !mcsema_real_eip !137
  %362 = inttoptr i64 %361 to i8*
  %363 = load i8* %362, align 1, !mcsema_real_eip !137
  %364 = sext i8 %363 to i32, !mcsema_real_eip !137
  %365 = add i64 %340, 30, !mcsema_real_eip !138
  %366 = inttoptr i64 %365 to i8*
  %367 = load i8* %366, align 1, !mcsema_real_eip !138
  %368 = sext i8 %367 to i32, !mcsema_real_eip !138
  %369 = zext i32 %368 to i64, !mcsema_real_eip !138
  %370 = load i32* %165, align 4, !mcsema_real_eip !139
  %371 = sub i32 15, %364
  %372 = add nsw i32 %371, %368
  %373 = add i32 %372, %370
  store i32 %373, i32* %165, align 4, !mcsema_real_eip !140
  %374 = load i64* %72, align 8, !mcsema_real_eip !141
  %375 = add i64 %374, 28, !mcsema_real_eip !142
  %376 = inttoptr i64 %375 to i8*
  %377 = load i8* %376, align 1, !mcsema_real_eip !142
  %378 = zext i8 %377 to i64
  %379 = tail call x86_64_sysvcc i64 @to_byte(i64 %378), !mcsema_real_eip !143
  %380 = load i32* %165, align 4, !mcsema_real_eip !144
  %381 = trunc i64 %379 to i32, !mcsema_real_eip !145
  %382 = sub i32 %380, %381, !mcsema_real_eip !145
  %383 = zext i32 %382 to i64, !mcsema_real_eip !145
  store i32 %382, i32* %165, align 4, !mcsema_real_eip !146
  %384 = icmp eq i32 %380, %381
  br i1 %384, label %block_0x438.i, label %block_0x467.i, !mcsema_real_eip !147

block_0x467.i:                                    ; preds = %block_0x450.i, %block_0x438.block_0x467_crit_edge.i, %block_0x3f5.i, %block_0x45c.i, %block_0x3cd.i
  %385 = phi i32 [ %355, %block_0x3cd.i ], [ %.pre.i, %block_0x438.block_0x467_crit_edge.i ], [ -32, %block_0x450.i ], [ %382, %block_0x3f5.i ], [ %338, %block_0x45c.i ]
  %RDI_val.4.i = phi i64 [ %333, %block_0x3cd.i ], [ %410, %block_0x438.block_0x467_crit_edge.i ], [ %410, %block_0x450.i ], [ %378, %block_0x3f5.i ], [ %333, %block_0x45c.i ]
  %RSI_val.3.i = phi i64 [ %340, %block_0x3cd.i ], [ %369, %block_0x438.block_0x467_crit_edge.i ], [ %369, %block_0x450.i ], [ %369, %block_0x3f5.i ], [ %340, %block_0x45c.i ]
  %RDX_val.4.i = phi i64 [ 4, %block_0x3cd.i ], [ %383, %block_0x438.block_0x467_crit_edge.i ], [ %383, %block_0x450.i ], [ %383, %block_0x3f5.i ], [ %360, %block_0x45c.i ]
  %RCX_val.2.i = phi i64 [ %356, %block_0x3cd.i ], [ %374, %block_0x438.block_0x467_crit_edge.i ], [ %374, %block_0x450.i ], [ %374, %block_0x3f5.i ], [ %358, %block_0x45c.i ]
  %386 = add i64 %6, -12, !mcsema_real_eip !148
  %387 = inttoptr i64 %386 to i32*
  store i32 %385, i32* %387, align 4, !mcsema_real_eip !148
  %388 = zext i32 %385 to i64, !mcsema_real_eip !13
  %uadd147.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %70, i64 80)
  %389 = extractvalue { i64, i1 } %uadd147.i, 0
  %390 = xor i64 %389, %70, !mcsema_real_eip !14
  %391 = and i64 %390, 16
  %392 = icmp eq i64 %391, 0
  %393 = icmp slt i64 %389, 0
  %394 = icmp eq i64 %389, 0, !mcsema_real_eip !14
  %395 = add i64 %6, 9223372036854775720
  %396 = and i64 %390, %395, !mcsema_real_eip !14
  %397 = icmp slt i64 %396, 0
  %398 = trunc i64 %389 to i8, !mcsema_real_eip !14
  %399 = tail call i8 @llvm.ctpop.i8(i8 %398), !mcsema_real_eip !14
  %400 = and i8 %399, 1
  %401 = icmp eq i8 %400, 0
  %402 = extractvalue { i64, i1 } %uadd147.i, 1
  %403 = inttoptr i64 %389 to i64*, !mcsema_real_eip !15
  %404 = load i64* %403, align 8, !mcsema_real_eip !15
  %405 = add i64 %389, 16, !mcsema_real_eip !16
  store i64 %388, i64* %RAX.i, align 8, !mcsema_real_eip !16
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !16
  store i64 %RCX_val.2.i, i64* %RCX.i, align 8, !mcsema_real_eip !16
  store i64 %RDX_val.4.i, i64* %RDX.i, align 8, !mcsema_real_eip !16
  store i64 %RSI_val.3.i, i64* %RSI.i, align 8, !mcsema_real_eip !16
  store i64 %RDI_val.4.i, i64* %RDI.i, align 8, !mcsema_real_eip !16
  store i64 %405, i64* %RSP.i, align 8, !mcsema_real_eip !16
  store i64 %404, i64* %RBP.i, align 8, !mcsema_real_eip !16
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !16
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !16
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !16
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !16
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !16
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !16
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !16
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !16
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !16
  store i1 %402, i1* %CF.i, align 1, !mcsema_real_eip !16
  store i1 %401, i1* %PF.i, align 1, !mcsema_real_eip !16
  store i1 %392, i1* %AF.i, align 1, !mcsema_real_eip !16
  store i1 %394, i1* %ZF.i, align 1, !mcsema_real_eip !16
  store i1 %393, i1* %SF.i, align 1, !mcsema_real_eip !16
  store i1 %397, i1* %OF.i, align 1, !mcsema_real_eip !16
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !16
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !16
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !16
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !16
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !16
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !16
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !16
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !16
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !16
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !16
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !16
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !16
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !16
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !16
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !16
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !16
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !16
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !16
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !16
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !16
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !16
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !16
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !16
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !16
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !16
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !16
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !16
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !16
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !16
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !16
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !16
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !16
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !16
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !16
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !16
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !16
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !16
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !16
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !16
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !16
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !16
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !16
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !16
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !16
  store i64 %66, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !16
  store i64 %67, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !16
  call void @llvm.lifetime.end(i64 128, i8* %1)
  br label %sub_0.exit

block_0x438.i:                                    ; preds = %block_0x3f5.i
  %406 = load i64* %72, align 8, !mcsema_real_eip !149
  %407 = add i64 %406, 31, !mcsema_real_eip !150
  %408 = inttoptr i64 %407 to i8*
  %409 = load i8* %408, align 1, !mcsema_real_eip !150
  %410 = zext i8 %409 to i64
  %411 = tail call x86_64_sysvcc i64 @to_byte(i64 %410), !mcsema_real_eip !151
  %412 = trunc i64 %411 to i32, !mcsema_real_eip !152
  %413 = icmp eq i32 %412, 4
  br i1 %413, label %block_0x438.block_0x467_crit_edge.i, label %block_0x450.i, !mcsema_real_eip !153

block_0x438.block_0x467_crit_edge.i:              ; preds = %block_0x438.i
  %.pre.i = load i32* %165, align 4
  br label %block_0x467.i

block_0x450.i:                                    ; preds = %block_0x438.i
  store i32 -32, i32* %165, align 4, !mcsema_real_eip !154
  br label %block_0x467.i, !mcsema_real_eip !155

sub_0.exit:                                       ; preds = %block_0x467.i, %block_0x46d.i
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
!3 = metadata !{i64 8, [22 x i8] c"\09movq\09%rdi, -16(%rbp)\00"}
!4 = metadata !{i64 16, [9 x i8] c"\09callq\090\00"}
!5 = metadata !{i64 23, [22 x i8] c"\09movl\09%ecx, -32(%rbp)\00"}
!6 = metadata !{i64 33, [7 x i8] c"\09je\0911\00"}
!7 = metadata !{i64 50, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!8 = metadata !{i64 60, [22 x i8] c"\09movq\09%rax, -16(%rbp)\00"}
!9 = metadata !{i64 68, [21 x i8] c"\09movsbl\09(%rax), %ecx\00"}
!10 = metadata !{i64 77, [7 x i8] c"\09je\0912\00"}
!11 = metadata !{i64 42, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!12 = metadata !{i64 45, [10 x i8] c"\09jmp\091083\00"}
!13 = metadata !{i64 1133, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!14 = metadata !{i64 1136, [16 x i8] c"\09addq\09$80, %rsp\00"}
!15 = metadata !{i64 1140, [11 x i8] c"\09popq\09%rbp\00"}
!16 = metadata !{i64 1141, [6 x i8] c"\09retq\00"}
!17 = metadata !{i64 99, [22 x i8] c"\09movzbl\091(%rax), %edi\00"}
!18 = metadata !{i64 103, [9 x i8] c"\09callq\090\00"}
!19 = metadata !{i64 108, [15 x i8] c"\09cmpl\09$9, %eax\00"}
!20 = metadata !{i64 113, [7 x i8] c"\09je\0912\00"}
!21 = metadata !{i64 83, [28 x i8] c"\09movl\09$4294967294, -4(%rbp)\00"}
!22 = metadata !{i64 90, [10 x i8] c"\09jmp\091038\00"}
!23 = metadata !{i64 131, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!24 = metadata !{i64 135, [22 x i8] c"\09movzbl\092(%rax), %edi\00"}
!25 = metadata !{i64 139, [9 x i8] c"\09callq\090\00"}
!26 = metadata !{i64 144, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!27 = metadata !{i64 158, [7 x i8] c"\09je\0912\00"}
!28 = metadata !{i64 119, [28 x i8] c"\09movl\09$4294967293, -4(%rbp)\00"}
!29 = metadata !{i64 126, [10 x i8] c"\09jmp\091002\00"}
!30 = metadata !{i64 176, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!31 = metadata !{i64 180, [22 x i8] c"\09movzbl\093(%rax), %edi\00"}
!32 = metadata !{i64 184, [9 x i8] c"\09callq\090\00"}
!33 = metadata !{i64 194, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
!34 = metadata !{i64 205, [6 x i8] c"\09cltd\00"}
!35 = metadata !{i64 206, [12 x i8] c"\09idivl\09%edi\00"}
!36 = metadata !{i64 208, [15 x i8] c"\09cmpl\09$7, %eax\00"}
!37 = metadata !{i64 213, [7 x i8] c"\09je\0912\00"}
!38 = metadata !{i64 164, [28 x i8] c"\09movl\09$4294967292, -4(%rbp)\00"}
!39 = metadata !{i64 171, [9 x i8] c"\09jmp\09957\00"}
!40 = metadata !{i64 231, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!41 = metadata !{i64 235, [22 x i8] c"\09movsbl\094(%rax), %ecx\00"}
!42 = metadata !{i64 239, [16 x i8] c"\09andl\09$15, %ecx\00"}
!43 = metadata !{i64 251, [8 x i8] c"\09jne\0938\00"}
!44 = metadata !{i64 219, [28 x i8] c"\09movl\09$4294967291, -4(%rbp)\00"}
!45 = metadata !{i64 226, [9 x i8] c"\09jmp\09902\00"}
!46 = metadata !{i64 295, [28 x i8] c"\09movl\09$4294967290, -4(%rbp)\00"}
!47 = metadata !{i64 302, [9 x i8] c"\09jmp\09826\00"}
!48 = metadata !{i64 265, [17 x i8] c"\09andl\09$240, %ecx\00"}
!49 = metadata !{i64 277, [8 x i8] c"\09jne\0912\00"}
!50 = metadata !{i64 283, [29 x i8] c"\09movl\09$4294967292, -20(%rbp)\00"}
!51 = metadata !{i64 307, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!52 = metadata !{i64 311, [22 x i8] c"\09movsbl\095(%rax), %ecx\00"}
!53 = metadata !{i64 323, [21 x i8] c"\09movb\09%dl, -33(%rbp)\00"}
!54 = metadata !{i64 326, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!55 = metadata !{i64 330, [22 x i8] c"\09movsbl\095(%rax), %ecx\00"}
!56 = metadata !{i64 342, [21 x i8] c"\09movb\09%dl, -34(%rbp)\00"}
!57 = metadata !{i64 345, [24 x i8] c"\09movzbl\09-33(%rbp), %ecx\00"}
!58 = metadata !{i64 376, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!59 = metadata !{i64 355, [8 x i8] c"\09jne\0931\00"}
!60 = metadata !{i64 400, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!61 = metadata !{i64 403, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!62 = metadata !{i64 407, [22 x i8] c"\09movzbl\096(%rax), %edi\00"}
!63 = metadata !{i64 411, [9 x i8] c"\09callq\090\00"}
!64 = metadata !{i64 418, [21 x i8] c"\09movb\09%cl, -35(%rbp)\00"}
!65 = metadata !{i64 421, [22 x i8] c"\09movq\09-16(%rbp), %rdx\00"}
!66 = metadata !{i64 425, [22 x i8] c"\09movzbl\097(%rdx), %edi\00"}
!67 = metadata !{i64 429, [9 x i8] c"\09callq\090\00"}
!68 = metadata !{i64 434, [24 x i8] c"\09movzbl\09-35(%rbp), %edi\00"}
!69 = metadata !{i64 438, [16 x i8] c"\09orl\09%eax, %edi\00"}
!70 = metadata !{i64 443, [21 x i8] c"\09movb\09%cl, -35(%rbp)\00"}
!71 = metadata !{i64 384, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!72 = metadata !{i64 482, [22 x i8] c"\09movl\09-20(%rbp), %ecx\00"}
!73 = metadata !{i64 488, [16 x i8] c"\09shll\09%cl, %eax\00"}
!74 = metadata !{i64 490, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!75 = metadata !{i64 500, [7 x i8] c"\09je\0912\00"}
!76 = metadata !{i64 528, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!77 = metadata !{i64 541, [9 x i8] c"\09callq\090\00"}
!78 = metadata !{i64 546, [15 x i8] c"\09movw\09%ax, %cx\00"}
!79 = metadata !{i64 549, [21 x i8] c"\09movw\09%cx, -38(%rbp)\00"}
!80 = metadata !{i64 557, [18 x i8] c"\09orl\09$21845, %eax\00"}
!81 = metadata !{i64 567, [8 x i8] c"\09jne\0932\00"}
!82 = metadata !{i64 506, [28 x i8] c"\09movl\09$4294967289, -4(%rbp)\00"}
!83 = metadata !{i64 513, [9 x i8] c"\09jmp\09615\00"}
!84 = metadata !{i64 605, [24 x i8] c"\09movl\09$48059, -20(%rbp)\00"}
!85 = metadata !{i64 622, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!86 = metadata !{i64 635, [9 x i8] c"\09callq\090\00"}
!87 = metadata !{i64 640, [22 x i8] c"\09movl\09%eax, -44(%rbp)\00"}
!88 = metadata !{i64 646, [24 x i8] c"\09xorl\09$2760406685, %eax\00"}
!89 = metadata !{i64 651, [22 x i8] c"\09movl\09%eax, -48(%rbp)\00"}
!90 = metadata !{i64 660, [22 x i8] c"\09movl\09%eax, -52(%rbp)\00"}
!91 = metadata !{i64 663, [22 x i8] c"\09movl\09-48(%rbp), %eax\00"}
!92 = metadata !{i64 666, [19 x i8] c"\09andl\09$65535, %eax\00"}
!93 = metadata !{i64 671, [22 x i8] c"\09movl\09%eax, -56(%rbp)\00"}
!94 = metadata !{i64 674, [24 x i8] c"\09cmpl\09$20299, -52(%rbp)\00"}
!95 = metadata !{i64 681, [8 x i8] c"\09jne\0924\00"}
!96 = metadata !{i64 593, [24 x i8] c"\09movl\09$43690, -20(%rbp)\00"}
!97 = metadata !{i64 711, [24 x i8] c"\09movl\09$48351, -20(%rbp)\00"}
!98 = metadata !{i64 726, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!99 = metadata !{i64 739, [9 x i8] c"\09callq\090\00"}
!100 = metadata !{i64 744, [22 x i8] c"\09movl\09%eax, -60(%rbp)\00"}
!101 = metadata !{i64 755, [22 x i8] c"\09movl\09%eax, -60(%rbp)\00"}
!102 = metadata !{i64 761, [15 x i8] c"\09andl\09$7, %eax\00"}
!103 = metadata !{i64 771, [7 x i8] c"\09je\0912\00"}
!104 = metadata !{i64 687, [22 x i8] c"\09movl\09-56(%rbp), %eax\00"}
!105 = metadata !{i64 690, [22 x i8] c"\09cmpl\09-20(%rbp), %eax\00"}
!106 = metadata !{i64 693, [8 x i8] c"\09jne\0912\00"}
!107 = metadata !{i64 699, [20 x i8] c"\09movl\09$0, -20(%rbp)\00"}
!108 = metadata !{i64 789, [22 x i8] c"\09movl\09-60(%rbp), %eax\00"}
!109 = metadata !{i64 797, [22 x i8] c"\09movl\09%eax, -60(%rbp)\00"}
!110 = metadata !{i64 800, [28 x i8] c"\09cmpl\09$268435455, -60(%rbp)\00"}
!111 = metadata !{i64 807, [8 x i8] c"\09jbe\0912\00"}
!112 = metadata !{i64 777, [28 x i8] c"\09movl\09$4294967275, -4(%rbp)\00"}
!113 = metadata !{i64 784, [9 x i8] c"\09jmp\09344\00"}
!114 = metadata !{i64 866, [22 x i8] c"\09movl\09%eax, -68(%rbp)\00"}
!115 = metadata !{i64 876, [11 x i8] c"\09divl\09%ecx\00"}
!116 = metadata !{i64 878, [22 x i8] c"\09movl\09%eax, -60(%rbp)\00"}
!117 = metadata !{i64 888, [7 x i8] c"\09je\0911\00"}
!118 = metadata !{i64 813, [28 x i8] c"\09movl\09$4294967274, -4(%rbp)\00"}
!119 = metadata !{i64 820, [9 x i8] c"\09jmp\09308\00"}
!120 = metadata !{i64 910, [22 x i8] c"\09movl\09-20(%rbp), %edi\00"}
!121 = metadata !{i64 913, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!122 = metadata !{i64 926, [9 x i8] c"\09callq\090\00"}
!123 = metadata !{i64 931, [22 x i8] c"\09movl\09%eax, -64(%rbp)\00"}
!124 = metadata !{i64 934, [22 x i8] c"\09movq\09-16(%rbp), %rsi\00"}
!125 = metadata !{i64 938, [23 x i8] c"\09movsbl\0928(%rsi), %eax\00"}
!126 = metadata !{i64 957, [23 x i8] c"\09movsbl\0929(%rax), %ecx\00"}
!127 = metadata !{i64 947, [8 x i8] c"\09jne\0936\00"}
!128 = metadata !{i64 897, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!129 = metadata !{i64 900, [9 x i8] c"\09jmp\09228\00"}
!130 = metadata !{i64 1007, [9 x i8] c"\09jne\09103\00"}
!131 = metadata !{i64 976, [22 x i8] c"\09movl\09-20(%rbp), %ecx\00"}
!132 = metadata !{i64 979, [17 x i8] c"\09xorl\09%eax, %ecx\00"}
!133 = metadata !{i64 981, [22 x i8] c"\09movl\09%ecx, -20(%rbp)\00"}
!134 = metadata !{i64 984, [9 x i8] c"\09jmp\09138\00"}
!135 = metadata !{i64 1119, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!136 = metadata !{i64 1122, [7 x i8] c"\09jmp\090\00"}
!137 = metadata !{i64 1022, [23 x i8] c"\09movsbl\0931(%rcx), %edx\00"}
!138 = metadata !{i64 1030, [23 x i8] c"\09movsbl\0930(%rcx), %esi\00"}
!139 = metadata !{i64 1038, [22 x i8] c"\09movl\09-20(%rbp), %edx\00"}
!140 = metadata !{i64 1043, [22 x i8] c"\09movl\09%edx, -20(%rbp)\00"}
!141 = metadata !{i64 1046, [22 x i8] c"\09movq\09-16(%rbp), %rcx\00"}
!142 = metadata !{i64 1050, [23 x i8] c"\09movzbl\0928(%rcx), %edi\00"}
!143 = metadata !{i64 1054, [9 x i8] c"\09callq\090\00"}
!144 = metadata !{i64 1059, [22 x i8] c"\09movl\09-20(%rbp), %edx\00"}
!145 = metadata !{i64 1062, [17 x i8] c"\09subl\09%eax, %edx\00"}
!146 = metadata !{i64 1064, [22 x i8] c"\09movl\09%edx, -20(%rbp)\00"}
!147 = metadata !{i64 1074, [8 x i8] c"\09jne\0931\00"}
!148 = metadata !{i64 1130, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!149 = metadata !{i64 1080, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!150 = metadata !{i64 1084, [23 x i8] c"\09movzbl\0931(%rax), %edi\00"}
!151 = metadata !{i64 1088, [9 x i8] c"\09callq\090\00"}
!152 = metadata !{i64 1093, [15 x i8] c"\09cmpl\09$4, %eax\00"}
!153 = metadata !{i64 1098, [6 x i8] c"\09je\097\00"}
!154 = metadata !{i64 1104, [29 x i8] c"\09movl\09$4294967264, -20(%rbp)\00"}
!155 = metadata !{i64 1111, [7 x i8] c"\09jmp\096\00"}
