; ModuleID = 'Output/test_24.clang.trans.opt.bc'
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
  %_local_stack_alloc_254.i = alloca [88 x i64], align 8
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %1 = bitcast [88 x i64]* %_local_stack_alloc_254.i to i8*
  call void @llvm.lifetime.start(i64 704, i8* %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %STi_val.i.0..sroa_cast)
  %_local_stack_start_.i = ptrtoint [88 x i64]* %_local_stack_alloc_254.i to i64
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
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %6 = load i64* %RBP.i, align 8, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %7 = load i64* %R8.i, align 8, !mcsema_real_eip !2
  %R9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %8 = load i64* %R9.i, align 8, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %9 = load i64* %R10.i, align 8, !mcsema_real_eip !2
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %10 = load i64* %R11.i, align 8, !mcsema_real_eip !2
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %11 = load i64* %R12.i, align 8, !mcsema_real_eip !2
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %12 = load i64* %R13.i, align 8, !mcsema_real_eip !2
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %13 = load i64* %R14.i, align 8, !mcsema_real_eip !2
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %14 = load i64* %R15.i, align 8, !mcsema_real_eip !2
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %15 = load i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %16 = load i1* %DF.i, align 1, !mcsema_real_eip !2
  %17 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %19 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %20 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %21 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %22 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %23 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %24 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %25 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %26 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %27 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %28 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %29 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %30 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %31 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %32 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %33 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %34 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %35 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %36 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %37 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %38 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %39 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %40 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %41 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %42 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %43 = bitcast i8* %42 to i64*
  %44 = load i64* %43, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %45 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %46 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %47 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %48 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %49 = load i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %50 = load i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %51 = load i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %52 = load i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %53 = load i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %54 = load i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %55 = load i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %56 = load i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %57 = load i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %58 = load i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %59 = load i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %60 = load i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %61 = load i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %62 = load i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %63 = load i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %64 = load i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %65 = load i64* %STACK_BASE.i, align 8, !mcsema_real_eip !2
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %66 = load i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !2
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
  br i1 %75, label %block_0x32.i, label %block_0x27.i, !mcsema_real_eip !6

block_0x32.i:                                     ; preds = %driverBlockRaw
  %76 = load i64* %70, align 8, !mcsema_real_eip !7
  %77 = add i64 %76, 4
  store i64 %77, i64* %70, align 8, !mcsema_real_eip !8
  %78 = inttoptr i64 %77 to i8*
  %79 = load i8* %78, align 1, !mcsema_real_eip !9
  %80 = sext i8 %79 to i64
  %81 = and i64 %80, 4294967295
  %82 = icmp eq i8 %79, 100
  br i1 %82, label %block_0x5f.i, label %block_0x53.i, !mcsema_real_eip !10

block_0x27.i:                                     ; preds = %driverBlockRaw
  %83 = and i64 %71, 4294967295
  %84 = add i64 %_local_stack_start_.i, 76, !mcsema_real_eip !11
  %85 = inttoptr i64 %84 to i32*
  store i32 %73, i32* %85, align 4, !mcsema_real_eip !11
  br label %block_0x46d.i, !mcsema_real_eip !12

block_0x46d.i:                                    ; preds = %block_0x37e.i, %block_0x32d.i, %block_0x309.i, %block_0x1fa.i, %block_0x127.i, %block_0xdb.i, %block_0xa4.i, %block_0x77.i, %block_0x53.i, %block_0x27.i
  %RDI_val.0.i = phi i64 [ %RDI_val.2.i, %block_0x37e.i ], [ %RDI_val.2.i, %block_0x32d.i ], [ %RDI_val.3.i, %block_0x309.i ], [ %RDI_val.1.i, %block_0x1fa.i ], [ 2, %block_0x127.i ], [ 2, %block_0xdb.i ], [ %118, %block_0xa4.i ], [ %108, %block_0x77.i ], [ %5, %block_0x53.i ], [ %5, %block_0x27.i ]
  %RSI_val.0.i = phi i64 [ %RSI_val.1.i, %block_0x37e.i ], [ %RSI_val.1.i, %block_0x32d.i ], [ %RSI_val.2.i, %block_0x309.i ], [ %4, %block_0x1fa.i ], [ %4, %block_0x127.i ], [ %4, %block_0xdb.i ], [ %4, %block_0xa4.i ], [ %4, %block_0x77.i ], [ %4, %block_0x53.i ], [ %4, %block_0x27.i ]
  %RDX_val.0.i = phi i64 [ %346, %block_0x37e.i ], [ 8, %block_0x32d.i ], [ 8, %block_0x309.i ], [ %RDX_val.1.i, %block_0x1fa.i ], [ %142, %block_0x127.i ], [ %142, %block_0xdb.i ], [ %3, %block_0xa4.i ], [ %3, %block_0x77.i ], [ %3, %block_0x53.i ], [ %3, %block_0x27.i ]
  %RCX_val.0.i = phi i64 [ 10000, %block_0x37e.i ], [ %237, %block_0x32d.i ], [ %237, %block_0x309.i ], [ %223, %block_0x1fa.i ], [ %RCX_val.1.i, %block_0x127.i ], [ %81, %block_0xdb.i ], [ %81, %block_0xa4.i ], [ %81, %block_0x77.i ], [ %81, %block_0x53.i ], [ %83, %block_0x27.i ]
  %86 = add i64 %_local_stack_start_.i, 76, !mcsema_real_eip !13
  %87 = inttoptr i64 %86 to i32*
  %88 = load i32* %87, align 4, !mcsema_real_eip !13
  %89 = zext i32 %88 to i64, !mcsema_real_eip !13
  %90 = xor i64 %67, %_local_stack_start_.i, !mcsema_real_eip !14
  %91 = and i64 %90, 16
  %92 = icmp eq i64 %91, 0
  %93 = icmp slt i64 %67, 0
  %94 = icmp eq i64 %67, 0, !mcsema_real_eip !14
  %95 = xor i64 %_local_stack_start_.i, -9223372036854775808, !mcsema_real_eip !14
  %96 = and i64 %90, %95, !mcsema_real_eip !14
  %97 = icmp slt i64 %96, 0
  %98 = trunc i64 %67 to i8, !mcsema_real_eip !14
  %99 = tail call i8 @llvm.ctpop.i8(i8 %98), !mcsema_real_eip !14
  %100 = and i8 %99, 1
  %101 = icmp eq i8 %100, 0
  %102 = icmp ugt [88 x i64]* %_local_stack_alloc_254.i, inttoptr (i64 -81 to [88 x i64]*)
  %103 = load i64* %68, align 8, !mcsema_real_eip !15
  %104 = add i64 %_local_stack_start_.i, 96, !mcsema_real_eip !16
  store i64 %89, i64* %RAX.i, align 8, !mcsema_real_eip !16
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !16
  store i64 %RCX_val.0.i, i64* %RCX.i, align 8, !mcsema_real_eip !16
  store i64 %RDX_val.0.i, i64* %RDX.i, align 8, !mcsema_real_eip !16
  store i64 %RSI_val.0.i, i64* %RSI.i, align 8, !mcsema_real_eip !16
  store i64 %RDI_val.0.i, i64* %RDI.i, align 8, !mcsema_real_eip !16
  store i64 %104, i64* %RSP.i, align 8, !mcsema_real_eip !16
  store i64 %103, i64* %RBP.i, align 8, !mcsema_real_eip !16
  store i64 %7, i64* %R8.i, align 8, !mcsema_real_eip !16
  store i64 %8, i64* %R9.i, align 8, !mcsema_real_eip !16
  store i64 %9, i64* %R10.i, align 8, !mcsema_real_eip !16
  store i64 %10, i64* %R11.i, align 8, !mcsema_real_eip !16
  store i64 %11, i64* %R12.i, align 8, !mcsema_real_eip !16
  store i64 %12, i64* %R13.i, align 8, !mcsema_real_eip !16
  store i64 %13, i64* %R14.i, align 8, !mcsema_real_eip !16
  store i64 %14, i64* %R15.i, align 8, !mcsema_real_eip !16
  store i64 %15, i64* %RIP.i, align 8, !mcsema_real_eip !16
  store i1 %102, i1* %CF.i, align 1, !mcsema_real_eip !16
  store i1 %101, i1* %PF.i, align 1, !mcsema_real_eip !16
  store i1 %92, i1* %AF.i, align 1, !mcsema_real_eip !16
  store i1 %94, i1* %ZF.i, align 1, !mcsema_real_eip !16
  store i1 %93, i1* %SF.i, align 1, !mcsema_real_eip !16
  store i1 %97, i1* %OF.i, align 1, !mcsema_real_eip !16
  store i1 %16, i1* %DF.i, align 1, !mcsema_real_eip !16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !16
  store i1 %19, i1* %FPU_B.i, align 1, !mcsema_real_eip !16
  store i1 %20, i1* %FPU_C3.i, align 1, !mcsema_real_eip !16
  store i3 %21, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !16
  store i1 %22, i1* %FPU_C2.i, align 1, !mcsema_real_eip !16
  store i1 %23, i1* %FPU_C1.i, align 1, !mcsema_real_eip !16
  store i1 %24, i1* %FPU_C0.i, align 1, !mcsema_real_eip !16
  store i1 %25, i1* %FPU_ES.i, align 1, !mcsema_real_eip !16
  store i1 %26, i1* %FPU_SF.i, align 1, !mcsema_real_eip !16
  store i1 %27, i1* %FPU_PE.i, align 1, !mcsema_real_eip !16
  store i1 %28, i1* %FPU_UE.i, align 1, !mcsema_real_eip !16
  store i1 %29, i1* %FPU_OE.i, align 1, !mcsema_real_eip !16
  store i1 %30, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !16
  store i1 %31, i1* %FPU_DE.i, align 1, !mcsema_real_eip !16
  store i1 %32, i1* %FPU_IE.i, align 1, !mcsema_real_eip !16
  store i1 %33, i1* %FPU_X.i, align 1, !mcsema_real_eip !16
  store i2 %34, i2* %FPU_RC.i, align 1, !mcsema_real_eip !16
  store i2 %35, i2* %FPU_PC.i, align 1, !mcsema_real_eip !16
  store i1 %36, i1* %FPU_PM.i, align 1, !mcsema_real_eip !16
  store i1 %37, i1* %FPU_UM.i, align 1, !mcsema_real_eip !16
  store i1 %38, i1* %FPU_OM.i, align 1, !mcsema_real_eip !16
  store i1 %39, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !16
  store i1 %40, i1* %FPU_DM.i, align 1, !mcsema_real_eip !16
  store i1 %41, i1* %FPU_IM.i, align 1, !mcsema_real_eip !16
  store i64 %44, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !16
  store i64 %46, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !16
  store i16 %47, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !16
  store i64 %48, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !16
  store i128 %49, i128* %XMM0.i, align 1, !mcsema_real_eip !16
  store i128 %50, i128* %XMM1.i, align 1, !mcsema_real_eip !16
  store i128 %51, i128* %XMM2.i, align 1, !mcsema_real_eip !16
  store i128 %52, i128* %XMM3.i, align 1, !mcsema_real_eip !16
  store i128 %53, i128* %XMM4.i, align 1, !mcsema_real_eip !16
  store i128 %54, i128* %XMM5.i, align 1, !mcsema_real_eip !16
  store i128 %55, i128* %XMM6.i, align 1, !mcsema_real_eip !16
  store i128 %56, i128* %XMM7.i, align 1, !mcsema_real_eip !16
  store i128 %57, i128* %XMM8.i, align 1, !mcsema_real_eip !16
  store i128 %58, i128* %XMM9.i, align 1, !mcsema_real_eip !16
  store i128 %59, i128* %XMM10.i, align 1, !mcsema_real_eip !16
  store i128 %60, i128* %XMM11.i, align 1, !mcsema_real_eip !16
  store i128 %61, i128* %XMM12.i, align 1, !mcsema_real_eip !16
  store i128 %62, i128* %XMM13.i, align 1, !mcsema_real_eip !16
  store i128 %63, i128* %XMM14.i, align 1, !mcsema_real_eip !16
  store i128 %64, i128* %XMM15.i, align 1, !mcsema_real_eip !16
  store i64 %65, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !16
  store i64 %66, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !16
  call void @llvm.lifetime.end(i64 704, i8* %1)
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast)
  br label %sub_0.exit

block_0x5f.i:                                     ; preds = %block_0x32.i
  %105 = add i64 %76, 5, !mcsema_real_eip !17
  %106 = inttoptr i64 %105 to i8*
  %107 = load i8* %106, align 1, !mcsema_real_eip !17
  %108 = zext i8 %107 to i64
  %109 = tail call x86_64_sysvcc i64 @to_byte(i64 %108), !mcsema_real_eip !18
  %110 = trunc i64 %109 to i32, !mcsema_real_eip !19
  %111 = icmp eq i32 %110, 9
  br i1 %111, label %block_0x83.i, label %block_0x77.i, !mcsema_real_eip !20

block_0x53.i:                                     ; preds = %block_0x32.i
  %112 = add i64 %_local_stack_start_.i, 76, !mcsema_real_eip !21
  %113 = inttoptr i64 %112 to i32*
  store i32 -2, i32* %113, align 4, !mcsema_real_eip !21
  br label %block_0x46d.i, !mcsema_real_eip !22

block_0x83.i:                                     ; preds = %block_0x5f.i
  %114 = load i64* %70, align 8, !mcsema_real_eip !23
  %115 = add i64 %114, 2, !mcsema_real_eip !24
  %116 = inttoptr i64 %115 to i8*
  %117 = load i8* %116, align 1, !mcsema_real_eip !24
  %118 = zext i8 %117 to i64
  %119 = tail call x86_64_sysvcc i64 @to_byte(i64 %118), !mcsema_real_eip !25
  %120 = add i64 %_local_stack_start_.i, 56, !mcsema_real_eip !26
  %121 = trunc i64 %119 to i32, !mcsema_real_eip !26
  %122 = inttoptr i64 %120 to i32*
  store i32 %121, i32* %122, align 8, !mcsema_real_eip !26
  %.mask255.i = and i32 %121, 2147483647
  %123 = icmp eq i32 %.mask255.i, 13
  br i1 %123, label %block_0xb0.i, label %block_0xa4.i, !mcsema_real_eip !27

block_0x77.i:                                     ; preds = %block_0x5f.i
  %124 = add i64 %_local_stack_start_.i, 76, !mcsema_real_eip !28
  %125 = inttoptr i64 %124 to i32*
  store i32 -3, i32* %125, align 4, !mcsema_real_eip !28
  br label %block_0x46d.i, !mcsema_real_eip !29

block_0xb0.i:                                     ; preds = %block_0x83.i
  %126 = load i64* %70, align 8, !mcsema_real_eip !30
  %127 = add i64 %126, 3, !mcsema_real_eip !31
  %128 = inttoptr i64 %127 to i8*
  %129 = load i8* %128, align 1, !mcsema_real_eip !31
  %130 = zext i8 %129 to i64
  %131 = tail call x86_64_sysvcc i64 @to_byte(i64 %130), !mcsema_real_eip !32
  %132 = add i64 %_local_stack_start_.i, 52, !mcsema_real_eip !33
  %133 = trunc i64 %131 to i32, !mcsema_real_eip !33
  %134 = inttoptr i64 %132 to i32*
  store i32 %133, i32* %134, align 4, !mcsema_real_eip !33
  %135 = add i32 %133, 1
  %.lobit.i = ashr i32 %135, 31
  %136 = zext i32 %.lobit.i to i64, !mcsema_real_eip !34
  %137 = shl nuw i64 %136, 32, !mcsema_real_eip !35
  %138 = sext i32 %135 to i64, !mcsema_real_eip !35
  %139 = or i64 %137, %138, !mcsema_real_eip !35
  %140 = sdiv i64 %139, 2, !mcsema_real_eip !35
  %141 = srem i64 %139, 2, !mcsema_real_eip !35
  %142 = and i64 %141, 4294967295
  %143 = trunc i64 %140 to i32, !mcsema_real_eip !36
  %144 = icmp eq i32 %143, 7
  br i1 %144, label %block_0xe7.i, label %block_0xdb.i, !mcsema_real_eip !37

block_0xa4.i:                                     ; preds = %block_0x83.i
  %145 = add i64 %_local_stack_start_.i, 76, !mcsema_real_eip !38
  %146 = inttoptr i64 %145 to i32*
  store i32 -4, i32* %146, align 4, !mcsema_real_eip !38
  br label %block_0x46d.i, !mcsema_real_eip !39

block_0xe7.i:                                     ; preds = %block_0xb0.i
  %147 = load i64* %70, align 8, !mcsema_real_eip !40
  %148 = add i64 %147, 4, !mcsema_real_eip !41
  %149 = inttoptr i64 %148 to i8*
  %150 = load i8* %149, align 1, !mcsema_real_eip !41
  %151 = zext i8 %150 to i32
  %152 = and i32 %151, 15, !mcsema_real_eip !42
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %block_0x101.i, label %block_0x127.i, !mcsema_real_eip !43

block_0xdb.i:                                     ; preds = %block_0xb0.i
  %154 = add i64 %_local_stack_start_.i, 76, !mcsema_real_eip !44
  %155 = inttoptr i64 %154 to i32*
  store i32 -5, i32* %155, align 4, !mcsema_real_eip !44
  br label %block_0x46d.i, !mcsema_real_eip !45

block_0x127.i:                                    ; preds = %block_0x101.i, %block_0xe7.i
  %RCX_val.1.in.i = phi i32 [ %158, %block_0x101.i ], [ %152, %block_0xe7.i ]
  %RCX_val.1.i = zext i32 %RCX_val.1.in.i to i64
  %156 = add i64 %_local_stack_start_.i, 76, !mcsema_real_eip !46
  %157 = inttoptr i64 %156 to i32*
  store i32 -6, i32* %157, align 4, !mcsema_real_eip !46
  br label %block_0x46d.i, !mcsema_real_eip !47

block_0x101.i:                                    ; preds = %block_0xe7.i
  %158 = and i32 %151, 240, !mcsema_real_eip !48
  %159 = icmp eq i32 %158, 48
  br i1 %159, label %block_0x11b.i, label %block_0x127.i, !mcsema_real_eip !49

block_0x11b.i:                                    ; preds = %block_0x101.i
  %160 = add i64 %_local_stack_start_.i, 60, !mcsema_real_eip !50
  %161 = inttoptr i64 %160 to i32*
  store i32 -4, i32* %161, align 4, !mcsema_real_eip !50
  %162 = load i64* %70, align 8, !mcsema_real_eip !51
  %163 = add i64 %162, 5, !mcsema_real_eip !52
  %164 = inttoptr i64 %163 to i8*
  %165 = load i8* %164, align 1, !mcsema_real_eip !52
  %166 = and i8 %165, 15
  %167 = add i64 %_local_stack_start_.i, 47, !mcsema_real_eip !53
  %168 = inttoptr i64 %167 to i8*
  store i8 %166, i8* %168, align 1, !mcsema_real_eip !53
  %169 = load i64* %70, align 8, !mcsema_real_eip !54
  %170 = add i64 %169, 5, !mcsema_real_eip !55
  %171 = inttoptr i64 %170 to i8*
  %172 = load i8* %171, align 1, !mcsema_real_eip !55
  %173 = and i8 %172, -16
  %174 = add i64 %_local_stack_start_.i, 46, !mcsema_real_eip !56
  %175 = inttoptr i64 %174 to i8*
  store i8 %173, i8* %175, align 2, !mcsema_real_eip !56
  %176 = load i8* %168, align 1, !mcsema_real_eip !57
  %177 = icmp eq i8 %176, 3
  %178 = icmp eq i8 %173, 96
  %or.cond.i = and i1 %177, %178
  %179 = load i32* %161, align 4, !mcsema_real_eip !58
  br i1 %or.cond.i, label %block_0x178.i, label %block_0x188.i, !mcsema_real_eip !59

block_0x188.i:                                    ; preds = %block_0x11b.i
  %180 = add i32 %179, 5
  store i32 %180, i32* %161, align 4, !mcsema_real_eip !60
  %181 = load i64* %70, align 8, !mcsema_real_eip !61
  %182 = add i64 %181, 6, !mcsema_real_eip !62
  %183 = inttoptr i64 %182 to i8*
  %184 = load i8* %183, align 1, !mcsema_real_eip !62
  %185 = zext i8 %184 to i64
  %186 = tail call x86_64_sysvcc i64 @to_byte(i64 %185), !mcsema_real_eip !63
  %187 = add i64 %_local_stack_start_.i, 45, !mcsema_real_eip !64
  %188 = trunc i64 %186 to i8, !mcsema_real_eip !64
  %189 = inttoptr i64 %187 to i8*
  store i8 %188, i8* %189, align 1, !mcsema_real_eip !64
  %190 = load i64* %70, align 8, !mcsema_real_eip !65
  %191 = add i64 %190, 7, !mcsema_real_eip !66
  %192 = inttoptr i64 %191 to i8*
  %193 = load i8* %192, align 1, !mcsema_real_eip !66
  %194 = zext i8 %193 to i64
  %195 = tail call x86_64_sysvcc i64 @to_byte(i64 %194), !mcsema_real_eip !67
  %196 = load i8* %189, align 1, !mcsema_real_eip !68
  %197 = zext i8 %196 to i32
  %198 = trunc i64 %195 to i32, !mcsema_real_eip !69
  %199 = or i32 %197, %198, !mcsema_real_eip !69
  %200 = trunc i32 %199 to i8, !mcsema_real_eip !69
  store i8 %200, i8* %189, align 1, !mcsema_real_eip !70
  br label %block_0x1e2.i

block_0x178.i:                                    ; preds = %block_0x11b.i
  %201 = add i32 %179, 4
  store i32 %201, i32* %161, align 4, !mcsema_real_eip !71
  %202 = load i64* %70, align 8, !mcsema_real_eip !61
  %203 = add i64 %202, 6, !mcsema_real_eip !62
  %204 = inttoptr i64 %203 to i8*
  %205 = load i8* %204, align 1, !mcsema_real_eip !62
  %206 = zext i8 %205 to i64
  %207 = tail call x86_64_sysvcc i64 @to_byte(i64 %206), !mcsema_real_eip !63
  %208 = add i64 %_local_stack_start_.i, 45, !mcsema_real_eip !64
  %209 = trunc i64 %207 to i8, !mcsema_real_eip !64
  %210 = inttoptr i64 %208 to i8*
  store i8 %209, i8* %210, align 1, !mcsema_real_eip !64
  %211 = load i64* %70, align 8, !mcsema_real_eip !65
  %212 = add i64 %211, 7, !mcsema_real_eip !66
  %213 = inttoptr i64 %212 to i8*
  %214 = load i8* %213, align 1, !mcsema_real_eip !66
  %215 = zext i8 %214 to i64
  %216 = tail call x86_64_sysvcc i64 @to_byte(i64 %215), !mcsema_real_eip !67
  %217 = load i8* %210, align 1, !mcsema_real_eip !68
  %218 = zext i8 %217 to i32
  %219 = trunc i64 %216 to i32, !mcsema_real_eip !69
  %220 = or i32 %218, %219, !mcsema_real_eip !69
  %221 = trunc i32 %220 to i8, !mcsema_real_eip !69
  store i8 %221, i8* %210, align 1, !mcsema_real_eip !70
  br label %block_0x1e2.i

block_0x1e2.i:                                    ; preds = %block_0x178.i, %block_0x188.i
  %RDI_val.1.in.i = phi i32 [ %220, %block_0x178.i ], [ %199, %block_0x188.i ]
  %RDX_val.1.i = phi i64 [ %211, %block_0x178.i ], [ %190, %block_0x188.i ]
  %222 = load i32* %161, align 4, !mcsema_real_eip !72
  %223 = zext i32 %222 to i64, !mcsema_real_eip !72
  %224 = and i32 %222, 31, !mcsema_real_eip !73
  %225 = add i32 %222, -1
  %226 = icmp ne i32 %224, 0, !mcsema_real_eip !73
  %227 = select i1 %226, i32 %225, i32 0, !mcsema_real_eip !73
  %228 = zext i1 %226 to i32
  %229 = shl i32 %222, %227, !mcsema_real_eip !73
  %230 = shl i32 %229, %228, !mcsema_real_eip !73
  %231 = icmp eq i32 %230, 0, !mcsema_real_eip !73
  store i32 %230, i32* %161, align 4, !mcsema_real_eip !74
  br i1 %231, label %block_0x206.i, label %block_0x1fa.i, !mcsema_real_eip !75

block_0x206.i:                                    ; preds = %block_0x1e2.i
  %232 = load i64* %70, align 8, !mcsema_real_eip !76
  %233 = add i64 %232, 8
  %234 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %233, i64 4), !mcsema_real_eip !77
  %235 = and i64 %234, 65535
  %236 = and i64 %223, 4294901760, !mcsema_real_eip !78
  %237 = or i64 %235, %236
  %238 = add i64 %_local_stack_start_.i, 42, !mcsema_real_eip !79
  %239 = trunc i64 %234 to i16, !mcsema_real_eip !79
  %240 = inttoptr i64 %238 to i16*
  store i16 %239, i16* %240, align 2, !mcsema_real_eip !79
  %241 = trunc i64 %234 to i32
  %242 = and i32 %241, 65535
  %243 = or i32 %242, 21845, !mcsema_real_eip !80
  %244 = icmp eq i32 %243, 56663
  %245 = or i32 %242, 43690
  %246 = icmp eq i32 %245, 65211
  %or.cond257.i = and i1 %244, %246
  br i1 %or.cond257.i, label %block_0x251.i, label %block_0x25d.i, !mcsema_real_eip !81

block_0x1fa.i:                                    ; preds = %block_0x1e2.i
  %RDI_val.1.i = zext i32 %RDI_val.1.in.i to i64
  %247 = add i64 %_local_stack_start_.i, 76, !mcsema_real_eip !82
  %248 = inttoptr i64 %247 to i32*
  store i32 -7, i32* %248, align 4, !mcsema_real_eip !82
  br label %block_0x46d.i, !mcsema_real_eip !83

block_0x25d.i:                                    ; preds = %block_0x206.i
  store i32 48059, i32* %161, align 4, !mcsema_real_eip !84
  %249 = load i64* %70, align 8, !mcsema_real_eip !85
  %250 = add i64 %249, 12
  %251 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %250, i64 8), !mcsema_real_eip !86
  %252 = add i64 %_local_stack_start_.i, 36, !mcsema_real_eip !87
  %253 = trunc i64 %251 to i32, !mcsema_real_eip !87
  %254 = inttoptr i64 %252 to i32*
  store i32 %253, i32* %254, align 4, !mcsema_real_eip !87
  %255 = xor i32 %253, -1534560611, !mcsema_real_eip !88
  %256 = add i64 %_local_stack_start_.i, 32, !mcsema_real_eip !89
  %257 = inttoptr i64 %256 to i32*
  store i32 %255, i32* %257, align 8, !mcsema_real_eip !89
  %258 = lshr i32 %255, 16
  %259 = add i64 %_local_stack_start_.i, 28, !mcsema_real_eip !90
  %260 = inttoptr i64 %259 to i32*
  store i32 %258, i32* %260, align 4, !mcsema_real_eip !90
  %261 = load i32* %257, align 8, !mcsema_real_eip !91
  %262 = and i32 %261, 65535, !mcsema_real_eip !92
  %263 = add i64 %_local_stack_start_.i, 24, !mcsema_real_eip !93
  %264 = inttoptr i64 %263 to i32*
  store i32 %262, i32* %264, align 8, !mcsema_real_eip !93
  %265 = load i32* %260, align 4, !mcsema_real_eip !94
  %266 = icmp eq i32 %265, 20299
  br i1 %266, label %block_0x2af.i, label %block_0x2c7.i, !mcsema_real_eip !95

block_0x251.i:                                    ; preds = %block_0x206.i
  store i32 43690, i32* %161, align 4, !mcsema_real_eip !96
  %267 = load i64* %70, align 8, !mcsema_real_eip !85
  %268 = add i64 %267, 12
  %269 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %268, i64 8), !mcsema_real_eip !86
  %270 = add i64 %_local_stack_start_.i, 36, !mcsema_real_eip !87
  %271 = trunc i64 %269 to i32, !mcsema_real_eip !87
  %272 = inttoptr i64 %270 to i32*
  store i32 %271, i32* %272, align 4, !mcsema_real_eip !87
  %273 = xor i32 %271, -1534560611, !mcsema_real_eip !88
  %274 = add i64 %_local_stack_start_.i, 32, !mcsema_real_eip !89
  %275 = inttoptr i64 %274 to i32*
  store i32 %273, i32* %275, align 8, !mcsema_real_eip !89
  %276 = lshr i32 %273, 16
  %277 = add i64 %_local_stack_start_.i, 28, !mcsema_real_eip !90
  %278 = inttoptr i64 %277 to i32*
  store i32 %276, i32* %278, align 4, !mcsema_real_eip !90
  %279 = load i32* %275, align 8, !mcsema_real_eip !91
  %280 = and i32 %279, 65535, !mcsema_real_eip !92
  %281 = add i64 %_local_stack_start_.i, 24, !mcsema_real_eip !93
  %282 = inttoptr i64 %281 to i32*
  store i32 %280, i32* %282, align 8, !mcsema_real_eip !93
  %283 = load i32* %278, align 4, !mcsema_real_eip !94
  %284 = icmp eq i32 %283, 20299
  br i1 %284, label %block_0x2af.i, label %block_0x2c7.i, !mcsema_real_eip !95

block_0x2c7.i:                                    ; preds = %block_0x2af.i, %block_0x251.i, %block_0x25d.i
  store i32 48351, i32* %161, align 4, !mcsema_real_eip !97
  %285 = load i64* %70, align 8, !mcsema_real_eip !98
  %286 = add i64 %285, 20
  %287 = tail call x86_64_sysvcc i64 @read_bytes(i64 48351, i64 %286, i64 8), !mcsema_real_eip !99
  %288 = add i64 %_local_stack_start_.i, 20, !mcsema_real_eip !100
  %289 = trunc i64 %287 to i32, !mcsema_real_eip !100
  %290 = inttoptr i64 %288 to i32*
  %291 = add i32 %289, -3
  store i32 %291, i32* %290, align 4, !mcsema_real_eip !101
  %292 = and i32 %291, 7, !mcsema_real_eip !102
  %293 = icmp eq i32 %292, 0, !mcsema_real_eip !102
  br i1 %293, label %block_0x315.i, label %block_0x309.i, !mcsema_real_eip !103

block_0x2af.i:                                    ; preds = %block_0x251.i, %block_0x25d.i
  %294 = add i64 %_local_stack_start_.i, 24, !mcsema_real_eip !104
  %295 = inttoptr i64 %294 to i32*
  %296 = load i32* %295, align 8, !mcsema_real_eip !104
  %297 = load i32* %161, align 4, !mcsema_real_eip !105
  %298 = icmp eq i32 %296, %297
  br i1 %298, label %block_0x2bb.i, label %block_0x2c7.i, !mcsema_real_eip !106

block_0x2bb.i:                                    ; preds = %block_0x2af.i
  store i32 0, i32* %161, align 4, !mcsema_real_eip !107
  %299 = load i64* %70, align 8, !mcsema_real_eip !98
  %300 = add i64 %299, 20
  %301 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %300, i64 8), !mcsema_real_eip !99
  %302 = add i64 %_local_stack_start_.i, 20, !mcsema_real_eip !100
  %303 = trunc i64 %301 to i32, !mcsema_real_eip !100
  %304 = inttoptr i64 %302 to i32*
  %305 = add i32 %303, -3
  store i32 %305, i32* %304, align 4, !mcsema_real_eip !101
  %306 = and i32 %305, 7, !mcsema_real_eip !102
  %307 = icmp eq i32 %306, 0, !mcsema_real_eip !102
  br i1 %307, label %block_0x315.i, label %block_0x309.i, !mcsema_real_eip !103

block_0x315.i:                                    ; preds = %block_0x2bb.i, %block_0x2c7.i
  %RDI_val.2.i = phi i64 [ 0, %block_0x2bb.i ], [ 48351, %block_0x2c7.i ]
  %RSI_val.1.i = phi i64 [ %300, %block_0x2bb.i ], [ %286, %block_0x2c7.i ]
  %308 = add i64 %_local_stack_start_.i, 20, !mcsema_real_eip !108
  %309 = inttoptr i64 %308 to i32*
  %310 = load i32* %309, align 4, !mcsema_real_eip !108
  %311 = xor i32 %310, -2147483648
  store i32 %311, i32* %309, align 4, !mcsema_real_eip !109
  %312 = icmp eq i32 %310, -1879048193
  %313 = icmp ult i32 %311, 268435455, !mcsema_real_eip !110
  %314 = or i1 %313, %312, !mcsema_real_eip !111
  br i1 %314, label %block_0x339.i, label %block_0x32d.i, !mcsema_real_eip !111

block_0x309.i:                                    ; preds = %block_0x2bb.i, %block_0x2c7.i
  %RDI_val.3.i = phi i64 [ 0, %block_0x2bb.i ], [ 48351, %block_0x2c7.i ]
  %RSI_val.2.i = phi i64 [ %300, %block_0x2bb.i ], [ %286, %block_0x2c7.i ]
  %315 = add i64 %_local_stack_start_.i, 76, !mcsema_real_eip !112
  %316 = inttoptr i64 %315 to i32*
  store i32 -21, i32* %316, align 4, !mcsema_real_eip !112
  br label %block_0x46d.i, !mcsema_real_eip !113

block_0x339.i:                                    ; preds = %block_0x315.i
  %317 = lshr i32 %310, 4
  %318 = xor i32 %317, 135069696
  %319 = add nsw i32 %318, -226
  %320 = add i64 %_local_stack_start_.i, 12, !mcsema_real_eip !114
  %321 = inttoptr i64 %320 to i32*
  store i32 10000, i32* %321, align 4, !mcsema_real_eip !114
  %322 = sext i32 %319 to i64
  %323 = udiv i64 %322, 10000, !mcsema_real_eip !115
  %324 = trunc i64 %323 to i32, !mcsema_real_eip !116
  store i32 %324, i32* %309, align 4, !mcsema_real_eip !116
  %325 = icmp eq i32 %324, 3
  br i1 %325, label %block_0x389.i, label %block_0x37e.i, !mcsema_real_eip !117

block_0x32d.i:                                    ; preds = %block_0x315.i
  %326 = add i64 %_local_stack_start_.i, 76, !mcsema_real_eip !118
  %327 = inttoptr i64 %326 to i32*
  store i32 -22, i32* %327, align 4, !mcsema_real_eip !118
  br label %block_0x46d.i, !mcsema_real_eip !119

block_0x389.i:                                    ; preds = %block_0x339.i
  %328 = load i32* %161, align 4, !mcsema_real_eip !120
  %329 = zext i32 %328 to i64, !mcsema_real_eip !120
  %330 = load i64* %70, align 8, !mcsema_real_eip !121
  %331 = add i64 %330, 28
  %332 = tail call x86_64_sysvcc i64 @read_bytes(i64 %329, i64 %331, i64 4), !mcsema_real_eip !122
  %333 = add i64 %_local_stack_start_.i, 16, !mcsema_real_eip !123
  %334 = trunc i64 %332 to i32, !mcsema_real_eip !123
  %335 = inttoptr i64 %333 to i32*
  store i32 %334, i32* %335, align 8, !mcsema_real_eip !123
  %336 = load i64* %70, align 8, !mcsema_real_eip !124
  %337 = add i64 %336, 28
  %338 = inttoptr i64 %337 to i8*
  %339 = load i8* %338, align 1, !mcsema_real_eip !125
  %340 = icmp eq i8 %339, 100
  %341 = add i64 %336, 29, !mcsema_real_eip !126
  %342 = inttoptr i64 %341 to i8*
  %343 = load i8* %342, align 1, !mcsema_real_eip !126
  %344 = icmp eq i8 %343, 100
  %or.cond = and i1 %340, %344
  br i1 %or.cond, label %block_0x3cd.i, label %block_0x3dd.i, !mcsema_real_eip !127

block_0x37e.i:                                    ; preds = %block_0x339.i
  %345 = urem i64 %322, 10000, !mcsema_real_eip !115
  %346 = and i64 %345, 16383
  %347 = add i64 %_local_stack_start_.i, 76, !mcsema_real_eip !128
  %348 = inttoptr i64 %347 to i32*
  store i32 %324, i32* %348, align 4, !mcsema_real_eip !128
  br label %block_0x46d.i, !mcsema_real_eip !129

block_0x3dd.i:                                    ; preds = %block_0x389.i
  %349 = icmp eq i8 %339, %343
  br i1 %349, label %block_0x3f5.i, label %block_0x45c.i, !mcsema_real_eip !130

block_0x3cd.i:                                    ; preds = %block_0x389.i
  %350 = load i32* %161, align 4, !mcsema_real_eip !131
  %351 = xor i32 %350, %334, !mcsema_real_eip !132
  %352 = zext i32 %351 to i64, !mcsema_real_eip !132
  store i32 %351, i32* %161, align 4, !mcsema_real_eip !133
  br label %block_0x467.i, !mcsema_real_eip !134

block_0x45c.i:                                    ; preds = %block_0x3dd.i
  %353 = sext i8 %339 to i64
  %354 = and i64 %353, 4294967295
  %355 = sext i8 %343 to i64
  %356 = and i64 %355, 4294967295
  store i32 %334, i32* %161, align 4, !mcsema_real_eip !135
  br label %block_0x467.i, !mcsema_real_eip !136

block_0x3f5.i:                                    ; preds = %block_0x3dd.i
  %357 = add i64 %336, 31, !mcsema_real_eip !137
  %358 = inttoptr i64 %357 to i8*
  %359 = load i8* %358, align 1, !mcsema_real_eip !137
  %360 = sext i8 %359 to i32, !mcsema_real_eip !137
  %361 = add i64 %336, 30, !mcsema_real_eip !138
  %362 = inttoptr i64 %361 to i8*
  %363 = load i8* %362, align 1, !mcsema_real_eip !138
  %364 = sext i8 %363 to i32, !mcsema_real_eip !138
  %365 = zext i32 %364 to i64, !mcsema_real_eip !138
  %366 = load i32* %161, align 4, !mcsema_real_eip !139
  %367 = sub i32 15, %360
  %368 = add nsw i32 %367, %364
  %369 = add i32 %368, %366
  store i32 %369, i32* %161, align 4, !mcsema_real_eip !140
  %370 = load i64* %70, align 8, !mcsema_real_eip !141
  %371 = add i64 %370, 28, !mcsema_real_eip !142
  %372 = inttoptr i64 %371 to i8*
  %373 = load i8* %372, align 1, !mcsema_real_eip !142
  %374 = zext i8 %373 to i64
  %375 = tail call x86_64_sysvcc i64 @to_byte(i64 %374), !mcsema_real_eip !143
  %376 = load i32* %161, align 4, !mcsema_real_eip !144
  %377 = trunc i64 %375 to i32, !mcsema_real_eip !145
  %378 = sub i32 %376, %377, !mcsema_real_eip !145
  %379 = zext i32 %378 to i64, !mcsema_real_eip !145
  store i32 %378, i32* %161, align 4, !mcsema_real_eip !146
  %380 = icmp eq i32 %376, %377
  br i1 %380, label %block_0x438.i, label %block_0x467.i, !mcsema_real_eip !147

block_0x467.i:                                    ; preds = %block_0x450.i, %block_0x438.block_0x467_crit_edge.i, %block_0x3f5.i, %block_0x45c.i, %block_0x3cd.i
  %381 = phi i32 [ %351, %block_0x3cd.i ], [ %.pre.i, %block_0x438.block_0x467_crit_edge.i ], [ -32, %block_0x450.i ], [ %378, %block_0x3f5.i ], [ %334, %block_0x45c.i ]
  %RDI_val.4.i = phi i64 [ %329, %block_0x3cd.i ], [ %404, %block_0x438.block_0x467_crit_edge.i ], [ %404, %block_0x450.i ], [ %374, %block_0x3f5.i ], [ %329, %block_0x45c.i ]
  %RSI_val.3.i = phi i64 [ %336, %block_0x3cd.i ], [ %365, %block_0x438.block_0x467_crit_edge.i ], [ %365, %block_0x450.i ], [ %365, %block_0x3f5.i ], [ %336, %block_0x45c.i ]
  %RDX_val.4.i = phi i64 [ 4, %block_0x3cd.i ], [ %379, %block_0x438.block_0x467_crit_edge.i ], [ %379, %block_0x450.i ], [ %379, %block_0x3f5.i ], [ %356, %block_0x45c.i ]
  %RCX_val.2.i = phi i64 [ %352, %block_0x3cd.i ], [ %370, %block_0x438.block_0x467_crit_edge.i ], [ %370, %block_0x450.i ], [ %370, %block_0x3f5.i ], [ %354, %block_0x45c.i ]
  %382 = add i64 %_local_stack_start_.i, 76, !mcsema_real_eip !148
  %383 = inttoptr i64 %382 to i32*
  store i32 %381, i32* %383, align 4, !mcsema_real_eip !148
  %384 = zext i32 %381 to i64, !mcsema_real_eip !13
  %385 = xor i64 %67, %_local_stack_start_.i, !mcsema_real_eip !14
  %386 = and i64 %385, 16
  %387 = icmp eq i64 %386, 0
  %388 = icmp slt i64 %67, 0
  %389 = icmp eq i64 %67, 0, !mcsema_real_eip !14
  %390 = xor i64 %_local_stack_start_.i, -9223372036854775808, !mcsema_real_eip !14
  %391 = and i64 %385, %390, !mcsema_real_eip !14
  %392 = icmp slt i64 %391, 0
  %393 = trunc i64 %67 to i8, !mcsema_real_eip !14
  %394 = tail call i8 @llvm.ctpop.i8(i8 %393), !mcsema_real_eip !14
  %395 = and i8 %394, 1
  %396 = icmp eq i8 %395, 0
  %397 = icmp ugt [88 x i64]* %_local_stack_alloc_254.i, inttoptr (i64 -81 to [88 x i64]*)
  %398 = load i64* %68, align 8, !mcsema_real_eip !15
  %399 = add i64 %_local_stack_start_.i, 96, !mcsema_real_eip !16
  store i64 %384, i64* %RAX.i, align 8, !mcsema_real_eip !16
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !16
  store i64 %RCX_val.2.i, i64* %RCX.i, align 8, !mcsema_real_eip !16
  store i64 %RDX_val.4.i, i64* %RDX.i, align 8, !mcsema_real_eip !16
  store i64 %RSI_val.3.i, i64* %RSI.i, align 8, !mcsema_real_eip !16
  store i64 %RDI_val.4.i, i64* %RDI.i, align 8, !mcsema_real_eip !16
  store i64 %399, i64* %RSP.i, align 8, !mcsema_real_eip !16
  store i64 %398, i64* %RBP.i, align 8, !mcsema_real_eip !16
  store i64 %7, i64* %R8.i, align 8, !mcsema_real_eip !16
  store i64 %8, i64* %R9.i, align 8, !mcsema_real_eip !16
  store i64 %9, i64* %R10.i, align 8, !mcsema_real_eip !16
  store i64 %10, i64* %R11.i, align 8, !mcsema_real_eip !16
  store i64 %11, i64* %R12.i, align 8, !mcsema_real_eip !16
  store i64 %12, i64* %R13.i, align 8, !mcsema_real_eip !16
  store i64 %13, i64* %R14.i, align 8, !mcsema_real_eip !16
  store i64 %14, i64* %R15.i, align 8, !mcsema_real_eip !16
  store i64 %15, i64* %RIP.i, align 8, !mcsema_real_eip !16
  store i1 %397, i1* %CF.i, align 1, !mcsema_real_eip !16
  store i1 %396, i1* %PF.i, align 1, !mcsema_real_eip !16
  store i1 %387, i1* %AF.i, align 1, !mcsema_real_eip !16
  store i1 %389, i1* %ZF.i, align 1, !mcsema_real_eip !16
  store i1 %388, i1* %SF.i, align 1, !mcsema_real_eip !16
  store i1 %392, i1* %OF.i, align 1, !mcsema_real_eip !16
  store i1 %16, i1* %DF.i, align 1, !mcsema_real_eip !16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !16
  store i1 %19, i1* %FPU_B.i, align 1, !mcsema_real_eip !16
  store i1 %20, i1* %FPU_C3.i, align 1, !mcsema_real_eip !16
  store i3 %21, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !16
  store i1 %22, i1* %FPU_C2.i, align 1, !mcsema_real_eip !16
  store i1 %23, i1* %FPU_C1.i, align 1, !mcsema_real_eip !16
  store i1 %24, i1* %FPU_C0.i, align 1, !mcsema_real_eip !16
  store i1 %25, i1* %FPU_ES.i, align 1, !mcsema_real_eip !16
  store i1 %26, i1* %FPU_SF.i, align 1, !mcsema_real_eip !16
  store i1 %27, i1* %FPU_PE.i, align 1, !mcsema_real_eip !16
  store i1 %28, i1* %FPU_UE.i, align 1, !mcsema_real_eip !16
  store i1 %29, i1* %FPU_OE.i, align 1, !mcsema_real_eip !16
  store i1 %30, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !16
  store i1 %31, i1* %FPU_DE.i, align 1, !mcsema_real_eip !16
  store i1 %32, i1* %FPU_IE.i, align 1, !mcsema_real_eip !16
  store i1 %33, i1* %FPU_X.i, align 1, !mcsema_real_eip !16
  store i2 %34, i2* %FPU_RC.i, align 1, !mcsema_real_eip !16
  store i2 %35, i2* %FPU_PC.i, align 1, !mcsema_real_eip !16
  store i1 %36, i1* %FPU_PM.i, align 1, !mcsema_real_eip !16
  store i1 %37, i1* %FPU_UM.i, align 1, !mcsema_real_eip !16
  store i1 %38, i1* %FPU_OM.i, align 1, !mcsema_real_eip !16
  store i1 %39, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !16
  store i1 %40, i1* %FPU_DM.i, align 1, !mcsema_real_eip !16
  store i1 %41, i1* %FPU_IM.i, align 1, !mcsema_real_eip !16
  store i64 %44, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !16
  store i64 %46, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !16
  store i16 %47, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !16
  store i64 %48, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !16
  store i128 %49, i128* %XMM0.i, align 1, !mcsema_real_eip !16
  store i128 %50, i128* %XMM1.i, align 1, !mcsema_real_eip !16
  store i128 %51, i128* %XMM2.i, align 1, !mcsema_real_eip !16
  store i128 %52, i128* %XMM3.i, align 1, !mcsema_real_eip !16
  store i128 %53, i128* %XMM4.i, align 1, !mcsema_real_eip !16
  store i128 %54, i128* %XMM5.i, align 1, !mcsema_real_eip !16
  store i128 %55, i128* %XMM6.i, align 1, !mcsema_real_eip !16
  store i128 %56, i128* %XMM7.i, align 1, !mcsema_real_eip !16
  store i128 %57, i128* %XMM8.i, align 1, !mcsema_real_eip !16
  store i128 %58, i128* %XMM9.i, align 1, !mcsema_real_eip !16
  store i128 %59, i128* %XMM10.i, align 1, !mcsema_real_eip !16
  store i128 %60, i128* %XMM11.i, align 1, !mcsema_real_eip !16
  store i128 %61, i128* %XMM12.i, align 1, !mcsema_real_eip !16
  store i128 %62, i128* %XMM13.i, align 1, !mcsema_real_eip !16
  store i128 %63, i128* %XMM14.i, align 1, !mcsema_real_eip !16
  store i128 %64, i128* %XMM15.i, align 1, !mcsema_real_eip !16
  store i64 %65, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !16
  store i64 %66, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !16
  call void @llvm.lifetime.end(i64 704, i8* %1)
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast)
  br label %sub_0.exit

block_0x438.i:                                    ; preds = %block_0x3f5.i
  %400 = load i64* %70, align 8, !mcsema_real_eip !149
  %401 = add i64 %400, 31, !mcsema_real_eip !150
  %402 = inttoptr i64 %401 to i8*
  %403 = load i8* %402, align 1, !mcsema_real_eip !150
  %404 = zext i8 %403 to i64
  %405 = tail call x86_64_sysvcc i64 @to_byte(i64 %404), !mcsema_real_eip !151
  %406 = trunc i64 %405 to i32, !mcsema_real_eip !152
  %407 = icmp eq i32 %406, 4
  br i1 %407, label %block_0x438.block_0x467_crit_edge.i, label %block_0x450.i, !mcsema_real_eip !153

block_0x438.block_0x467_crit_edge.i:              ; preds = %block_0x438.i
  %.pre.i = load i32* %161, align 4
  br label %block_0x467.i

block_0x450.i:                                    ; preds = %block_0x438.i
  store i32 -32, i32* %161, align 4, !mcsema_real_eip !154
  br label %block_0x467.i, !mcsema_real_eip !155

sub_0.exit:                                       ; preds = %block_0x467.i, %block_0x46d.i
  ret void
}

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
