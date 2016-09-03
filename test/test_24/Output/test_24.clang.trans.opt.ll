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
  %67 = add i64 %_local_stack_start_.i, -8
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !2
  store i64 %6, i64* %68, align 8, !mcsema_real_eip !2
  %69 = add i64 %_local_stack_start_.i, -88
  %70 = add i64 %_local_stack_start_.i, -24, !mcsema_real_eip !3
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !3
  store i64 %5, i64* %71, align 8, !mcsema_real_eip !3
  %72 = tail call x86_64_sysvcc i64 @strlen(i64 %5), !mcsema_real_eip !4
  %73 = add i64 %_local_stack_start_.i, -40, !mcsema_real_eip !5
  %74 = trunc i64 %72 to i32, !mcsema_real_eip !5
  %75 = inttoptr i64 %73 to i32*
  store i32 %74, i32* %75, align 8, !mcsema_real_eip !5
  %76 = icmp eq i32 %74, 37
  br i1 %76, label %block_0x32.i, label %block_0x27.i, !mcsema_real_eip !6

block_0x32.i:                                     ; preds = %driverBlockRaw
  %77 = load i64* %71, align 8, !mcsema_real_eip !7
  %78 = add i64 %77, 4
  store i64 %78, i64* %71, align 8, !mcsema_real_eip !8
  %79 = inttoptr i64 %78 to i8*
  %80 = load i8* %79, align 1, !mcsema_real_eip !9
  %81 = sext i8 %80 to i64
  %82 = and i64 %81, 4294967295
  %83 = icmp eq i8 %80, 100
  br i1 %83, label %block_0x5f.i, label %block_0x53.i, !mcsema_real_eip !10

block_0x27.i:                                     ; preds = %driverBlockRaw
  %84 = and i64 %72, 4294967295
  %85 = add i64 %_local_stack_start_.i, -12, !mcsema_real_eip !11
  %86 = inttoptr i64 %85 to i32*
  store i32 %74, i32* %86, align 4, !mcsema_real_eip !11
  br label %block_0x46d.i, !mcsema_real_eip !12

block_0x46d.i:                                    ; preds = %block_0x37e.i, %block_0x32d.i, %block_0x309.i, %block_0x1fa.i, %block_0x127.i, %block_0xdb.i, %block_0xa4.i, %block_0x77.i, %block_0x53.i, %block_0x27.i
  %RDI_val.0.i = phi i64 [ %RDI_val.2.i, %block_0x37e.i ], [ %RDI_val.2.i, %block_0x32d.i ], [ %RDI_val.3.i, %block_0x309.i ], [ %RDI_val.1.i, %block_0x1fa.i ], [ 2, %block_0x127.i ], [ 2, %block_0xdb.i ], [ %121, %block_0xa4.i ], [ %111, %block_0x77.i ], [ %5, %block_0x53.i ], [ %5, %block_0x27.i ]
  %RSI_val.0.i = phi i64 [ %RSI_val.1.i, %block_0x37e.i ], [ %RSI_val.1.i, %block_0x32d.i ], [ %RSI_val.2.i, %block_0x309.i ], [ %4, %block_0x1fa.i ], [ %4, %block_0x127.i ], [ %4, %block_0xdb.i ], [ %4, %block_0xa4.i ], [ %4, %block_0x77.i ], [ %4, %block_0x53.i ], [ %4, %block_0x27.i ]
  %RDX_val.0.i = phi i64 [ %349, %block_0x37e.i ], [ 8, %block_0x32d.i ], [ 8, %block_0x309.i ], [ %RDX_val.1.i, %block_0x1fa.i ], [ %145, %block_0x127.i ], [ %145, %block_0xdb.i ], [ %3, %block_0xa4.i ], [ %3, %block_0x77.i ], [ %3, %block_0x53.i ], [ %3, %block_0x27.i ]
  %RCX_val.0.i = phi i64 [ 10000, %block_0x37e.i ], [ %240, %block_0x32d.i ], [ %240, %block_0x309.i ], [ %226, %block_0x1fa.i ], [ %RCX_val.1.i, %block_0x127.i ], [ %82, %block_0xdb.i ], [ %82, %block_0xa4.i ], [ %82, %block_0x77.i ], [ %82, %block_0x53.i ], [ %84, %block_0x27.i ]
  %87 = add i64 %_local_stack_start_.i, -12, !mcsema_real_eip !13
  %88 = inttoptr i64 %87 to i32*
  %89 = load i32* %88, align 4, !mcsema_real_eip !13
  %90 = zext i32 %89 to i64, !mcsema_real_eip !13
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %69, i64 80)
  %91 = extractvalue { i64, i1 } %uadd.i, 0
  %92 = xor i64 %91, %69, !mcsema_real_eip !14
  %93 = and i64 %92, 16
  %94 = icmp eq i64 %93, 0
  %95 = icmp slt i64 %91, 0
  %96 = icmp eq i64 %91, 0, !mcsema_real_eip !14
  %97 = add i64 %_local_stack_start_.i, 9223372036854775720
  %98 = and i64 %92, %97, !mcsema_real_eip !14
  %99 = icmp slt i64 %98, 0
  %100 = trunc i64 %91 to i8, !mcsema_real_eip !14
  %101 = tail call i8 @llvm.ctpop.i8(i8 %100), !mcsema_real_eip !14
  %102 = and i8 %101, 1
  %103 = icmp eq i8 %102, 0
  %104 = extractvalue { i64, i1 } %uadd.i, 1
  %105 = inttoptr i64 %91 to i64*, !mcsema_real_eip !15
  %106 = load i64* %105, align 8, !mcsema_real_eip !15
  %107 = add i64 %91, 16, !mcsema_real_eip !16
  store i64 %90, i64* %RAX.i, align 8, !mcsema_real_eip !16
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !16
  store i64 %RCX_val.0.i, i64* %RCX.i, align 8, !mcsema_real_eip !16
  store i64 %RDX_val.0.i, i64* %RDX.i, align 8, !mcsema_real_eip !16
  store i64 %RSI_val.0.i, i64* %RSI.i, align 8, !mcsema_real_eip !16
  store i64 %RDI_val.0.i, i64* %RDI.i, align 8, !mcsema_real_eip !16
  store i64 %107, i64* %RSP.i, align 8, !mcsema_real_eip !16
  store i64 %106, i64* %RBP.i, align 8, !mcsema_real_eip !16
  store i64 %7, i64* %R8.i, align 8, !mcsema_real_eip !16
  store i64 %8, i64* %R9.i, align 8, !mcsema_real_eip !16
  store i64 %9, i64* %R10.i, align 8, !mcsema_real_eip !16
  store i64 %10, i64* %R11.i, align 8, !mcsema_real_eip !16
  store i64 %11, i64* %R12.i, align 8, !mcsema_real_eip !16
  store i64 %12, i64* %R13.i, align 8, !mcsema_real_eip !16
  store i64 %13, i64* %R14.i, align 8, !mcsema_real_eip !16
  store i64 %14, i64* %R15.i, align 8, !mcsema_real_eip !16
  store i64 %15, i64* %RIP.i, align 8, !mcsema_real_eip !16
  store i1 %104, i1* %CF.i, align 1, !mcsema_real_eip !16
  store i1 %103, i1* %PF.i, align 1, !mcsema_real_eip !16
  store i1 %94, i1* %AF.i, align 1, !mcsema_real_eip !16
  store i1 %96, i1* %ZF.i, align 1, !mcsema_real_eip !16
  store i1 %95, i1* %SF.i, align 1, !mcsema_real_eip !16
  store i1 %99, i1* %OF.i, align 1, !mcsema_real_eip !16
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
  %108 = add i64 %77, 5, !mcsema_real_eip !17
  %109 = inttoptr i64 %108 to i8*
  %110 = load i8* %109, align 1, !mcsema_real_eip !17
  %111 = zext i8 %110 to i64
  %112 = tail call x86_64_sysvcc i64 @to_byte(i64 %111), !mcsema_real_eip !18
  %113 = trunc i64 %112 to i32, !mcsema_real_eip !19
  %114 = icmp eq i32 %113, 9
  br i1 %114, label %block_0x83.i, label %block_0x77.i, !mcsema_real_eip !20

block_0x53.i:                                     ; preds = %block_0x32.i
  %115 = add i64 %_local_stack_start_.i, -12, !mcsema_real_eip !21
  %116 = inttoptr i64 %115 to i32*
  store i32 -2, i32* %116, align 4, !mcsema_real_eip !21
  br label %block_0x46d.i, !mcsema_real_eip !22

block_0x83.i:                                     ; preds = %block_0x5f.i
  %117 = load i64* %71, align 8, !mcsema_real_eip !23
  %118 = add i64 %117, 2, !mcsema_real_eip !24
  %119 = inttoptr i64 %118 to i8*
  %120 = load i8* %119, align 1, !mcsema_real_eip !24
  %121 = zext i8 %120 to i64
  %122 = tail call x86_64_sysvcc i64 @to_byte(i64 %121), !mcsema_real_eip !25
  %123 = add i64 %_local_stack_start_.i, -32, !mcsema_real_eip !26
  %124 = trunc i64 %122 to i32, !mcsema_real_eip !26
  %125 = inttoptr i64 %123 to i32*
  store i32 %124, i32* %125, align 8, !mcsema_real_eip !26
  %.mask255.i = and i32 %124, 2147483647
  %126 = icmp eq i32 %.mask255.i, 13
  br i1 %126, label %block_0xb0.i, label %block_0xa4.i, !mcsema_real_eip !27

block_0x77.i:                                     ; preds = %block_0x5f.i
  %127 = add i64 %_local_stack_start_.i, -12, !mcsema_real_eip !28
  %128 = inttoptr i64 %127 to i32*
  store i32 -3, i32* %128, align 4, !mcsema_real_eip !28
  br label %block_0x46d.i, !mcsema_real_eip !29

block_0xb0.i:                                     ; preds = %block_0x83.i
  %129 = load i64* %71, align 8, !mcsema_real_eip !30
  %130 = add i64 %129, 3, !mcsema_real_eip !31
  %131 = inttoptr i64 %130 to i8*
  %132 = load i8* %131, align 1, !mcsema_real_eip !31
  %133 = zext i8 %132 to i64
  %134 = tail call x86_64_sysvcc i64 @to_byte(i64 %133), !mcsema_real_eip !32
  %135 = add i64 %_local_stack_start_.i, -36, !mcsema_real_eip !33
  %136 = trunc i64 %134 to i32, !mcsema_real_eip !33
  %137 = inttoptr i64 %135 to i32*
  store i32 %136, i32* %137, align 4, !mcsema_real_eip !33
  %138 = add i32 %136, 1
  %.lobit.i = ashr i32 %138, 31
  %139 = zext i32 %.lobit.i to i64, !mcsema_real_eip !34
  %140 = shl nuw i64 %139, 32, !mcsema_real_eip !35
  %141 = sext i32 %138 to i64, !mcsema_real_eip !35
  %142 = or i64 %140, %141, !mcsema_real_eip !35
  %143 = sdiv i64 %142, 2, !mcsema_real_eip !35
  %144 = srem i64 %142, 2, !mcsema_real_eip !35
  %145 = and i64 %144, 4294967295
  %146 = trunc i64 %143 to i32, !mcsema_real_eip !36
  %147 = icmp eq i32 %146, 7
  br i1 %147, label %block_0xe7.i, label %block_0xdb.i, !mcsema_real_eip !37

block_0xa4.i:                                     ; preds = %block_0x83.i
  %148 = add i64 %_local_stack_start_.i, -12, !mcsema_real_eip !38
  %149 = inttoptr i64 %148 to i32*
  store i32 -4, i32* %149, align 4, !mcsema_real_eip !38
  br label %block_0x46d.i, !mcsema_real_eip !39

block_0xe7.i:                                     ; preds = %block_0xb0.i
  %150 = load i64* %71, align 8, !mcsema_real_eip !40
  %151 = add i64 %150, 4, !mcsema_real_eip !41
  %152 = inttoptr i64 %151 to i8*
  %153 = load i8* %152, align 1, !mcsema_real_eip !41
  %154 = zext i8 %153 to i32
  %155 = and i32 %154, 15, !mcsema_real_eip !42
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %block_0x101.i, label %block_0x127.i, !mcsema_real_eip !43

block_0xdb.i:                                     ; preds = %block_0xb0.i
  %157 = add i64 %_local_stack_start_.i, -12, !mcsema_real_eip !44
  %158 = inttoptr i64 %157 to i32*
  store i32 -5, i32* %158, align 4, !mcsema_real_eip !44
  br label %block_0x46d.i, !mcsema_real_eip !45

block_0x127.i:                                    ; preds = %block_0x101.i, %block_0xe7.i
  %RCX_val.1.in.i = phi i32 [ %161, %block_0x101.i ], [ %155, %block_0xe7.i ]
  %RCX_val.1.i = zext i32 %RCX_val.1.in.i to i64
  %159 = add i64 %_local_stack_start_.i, -12, !mcsema_real_eip !46
  %160 = inttoptr i64 %159 to i32*
  store i32 -6, i32* %160, align 4, !mcsema_real_eip !46
  br label %block_0x46d.i, !mcsema_real_eip !47

block_0x101.i:                                    ; preds = %block_0xe7.i
  %161 = and i32 %154, 240, !mcsema_real_eip !48
  %162 = icmp eq i32 %161, 48
  br i1 %162, label %block_0x11b.i, label %block_0x127.i, !mcsema_real_eip !49

block_0x11b.i:                                    ; preds = %block_0x101.i
  %163 = add i64 %_local_stack_start_.i, -28, !mcsema_real_eip !50
  %164 = inttoptr i64 %163 to i32*
  store i32 -4, i32* %164, align 4, !mcsema_real_eip !50
  %165 = load i64* %71, align 8, !mcsema_real_eip !51
  %166 = add i64 %165, 5, !mcsema_real_eip !52
  %167 = inttoptr i64 %166 to i8*
  %168 = load i8* %167, align 1, !mcsema_real_eip !52
  %169 = and i8 %168, 15
  %170 = add i64 %_local_stack_start_.i, -41, !mcsema_real_eip !53
  %171 = inttoptr i64 %170 to i8*
  store i8 %169, i8* %171, align 1, !mcsema_real_eip !53
  %172 = load i64* %71, align 8, !mcsema_real_eip !54
  %173 = add i64 %172, 5, !mcsema_real_eip !55
  %174 = inttoptr i64 %173 to i8*
  %175 = load i8* %174, align 1, !mcsema_real_eip !55
  %176 = and i8 %175, -16
  %177 = add i64 %_local_stack_start_.i, -42, !mcsema_real_eip !56
  %178 = inttoptr i64 %177 to i8*
  store i8 %176, i8* %178, align 2, !mcsema_real_eip !56
  %179 = load i8* %171, align 1, !mcsema_real_eip !57
  %180 = icmp eq i8 %179, 3
  %181 = icmp eq i8 %176, 96
  %or.cond.i = and i1 %180, %181
  %182 = load i32* %164, align 4, !mcsema_real_eip !58
  br i1 %or.cond.i, label %block_0x178.i, label %block_0x188.i, !mcsema_real_eip !59

block_0x188.i:                                    ; preds = %block_0x11b.i
  %183 = add i32 %182, 5
  store i32 %183, i32* %164, align 4, !mcsema_real_eip !60
  %184 = load i64* %71, align 8, !mcsema_real_eip !61
  %185 = add i64 %184, 6, !mcsema_real_eip !62
  %186 = inttoptr i64 %185 to i8*
  %187 = load i8* %186, align 1, !mcsema_real_eip !62
  %188 = zext i8 %187 to i64
  %189 = tail call x86_64_sysvcc i64 @to_byte(i64 %188), !mcsema_real_eip !63
  %190 = add i64 %_local_stack_start_.i, -43, !mcsema_real_eip !64
  %191 = trunc i64 %189 to i8, !mcsema_real_eip !64
  %192 = inttoptr i64 %190 to i8*
  store i8 %191, i8* %192, align 1, !mcsema_real_eip !64
  %193 = load i64* %71, align 8, !mcsema_real_eip !65
  %194 = add i64 %193, 7, !mcsema_real_eip !66
  %195 = inttoptr i64 %194 to i8*
  %196 = load i8* %195, align 1, !mcsema_real_eip !66
  %197 = zext i8 %196 to i64
  %198 = tail call x86_64_sysvcc i64 @to_byte(i64 %197), !mcsema_real_eip !67
  %199 = load i8* %192, align 1, !mcsema_real_eip !68
  %200 = zext i8 %199 to i32
  %201 = trunc i64 %198 to i32, !mcsema_real_eip !69
  %202 = or i32 %200, %201, !mcsema_real_eip !69
  %203 = trunc i32 %202 to i8, !mcsema_real_eip !69
  store i8 %203, i8* %192, align 1, !mcsema_real_eip !70
  br label %block_0x1e2.i

block_0x178.i:                                    ; preds = %block_0x11b.i
  %204 = add i32 %182, 4
  store i32 %204, i32* %164, align 4, !mcsema_real_eip !71
  %205 = load i64* %71, align 8, !mcsema_real_eip !61
  %206 = add i64 %205, 6, !mcsema_real_eip !62
  %207 = inttoptr i64 %206 to i8*
  %208 = load i8* %207, align 1, !mcsema_real_eip !62
  %209 = zext i8 %208 to i64
  %210 = tail call x86_64_sysvcc i64 @to_byte(i64 %209), !mcsema_real_eip !63
  %211 = add i64 %_local_stack_start_.i, -43, !mcsema_real_eip !64
  %212 = trunc i64 %210 to i8, !mcsema_real_eip !64
  %213 = inttoptr i64 %211 to i8*
  store i8 %212, i8* %213, align 1, !mcsema_real_eip !64
  %214 = load i64* %71, align 8, !mcsema_real_eip !65
  %215 = add i64 %214, 7, !mcsema_real_eip !66
  %216 = inttoptr i64 %215 to i8*
  %217 = load i8* %216, align 1, !mcsema_real_eip !66
  %218 = zext i8 %217 to i64
  %219 = tail call x86_64_sysvcc i64 @to_byte(i64 %218), !mcsema_real_eip !67
  %220 = load i8* %213, align 1, !mcsema_real_eip !68
  %221 = zext i8 %220 to i32
  %222 = trunc i64 %219 to i32, !mcsema_real_eip !69
  %223 = or i32 %221, %222, !mcsema_real_eip !69
  %224 = trunc i32 %223 to i8, !mcsema_real_eip !69
  store i8 %224, i8* %213, align 1, !mcsema_real_eip !70
  br label %block_0x1e2.i

block_0x1e2.i:                                    ; preds = %block_0x178.i, %block_0x188.i
  %RDI_val.1.in.i = phi i32 [ %223, %block_0x178.i ], [ %202, %block_0x188.i ]
  %RDX_val.1.i = phi i64 [ %214, %block_0x178.i ], [ %193, %block_0x188.i ]
  %225 = load i32* %164, align 4, !mcsema_real_eip !72
  %226 = zext i32 %225 to i64, !mcsema_real_eip !72
  %227 = and i32 %225, 31, !mcsema_real_eip !73
  %228 = add i32 %225, -1
  %229 = icmp ne i32 %227, 0, !mcsema_real_eip !73
  %230 = select i1 %229, i32 %228, i32 0, !mcsema_real_eip !73
  %231 = zext i1 %229 to i32
  %232 = shl i32 %225, %230, !mcsema_real_eip !73
  %233 = shl i32 %232, %231, !mcsema_real_eip !73
  %234 = icmp eq i32 %233, 0, !mcsema_real_eip !73
  store i32 %233, i32* %164, align 4, !mcsema_real_eip !74
  br i1 %234, label %block_0x206.i, label %block_0x1fa.i, !mcsema_real_eip !75

block_0x206.i:                                    ; preds = %block_0x1e2.i
  %235 = load i64* %71, align 8, !mcsema_real_eip !76
  %236 = add i64 %235, 8
  %237 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %236, i64 4), !mcsema_real_eip !77
  %238 = and i64 %237, 65535
  %239 = and i64 %226, 4294901760, !mcsema_real_eip !78
  %240 = or i64 %238, %239
  %241 = add i64 %_local_stack_start_.i, -46, !mcsema_real_eip !79
  %242 = trunc i64 %237 to i16, !mcsema_real_eip !79
  %243 = inttoptr i64 %241 to i16*
  store i16 %242, i16* %243, align 2, !mcsema_real_eip !79
  %244 = trunc i64 %237 to i32
  %245 = and i32 %244, 65535
  %246 = or i32 %245, 21845, !mcsema_real_eip !80
  %247 = icmp eq i32 %246, 56663
  %248 = or i32 %245, 43690
  %249 = icmp eq i32 %248, 65211
  %or.cond257.i = and i1 %247, %249
  br i1 %or.cond257.i, label %block_0x251.i, label %block_0x25d.i, !mcsema_real_eip !81

block_0x1fa.i:                                    ; preds = %block_0x1e2.i
  %RDI_val.1.i = zext i32 %RDI_val.1.in.i to i64
  %250 = add i64 %_local_stack_start_.i, -12, !mcsema_real_eip !82
  %251 = inttoptr i64 %250 to i32*
  store i32 -7, i32* %251, align 4, !mcsema_real_eip !82
  br label %block_0x46d.i, !mcsema_real_eip !83

block_0x25d.i:                                    ; preds = %block_0x206.i
  store i32 48059, i32* %164, align 4, !mcsema_real_eip !84
  %252 = load i64* %71, align 8, !mcsema_real_eip !85
  %253 = add i64 %252, 12
  %254 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %253, i64 8), !mcsema_real_eip !86
  %255 = add i64 %_local_stack_start_.i, -52, !mcsema_real_eip !87
  %256 = trunc i64 %254 to i32, !mcsema_real_eip !87
  %257 = inttoptr i64 %255 to i32*
  store i32 %256, i32* %257, align 4, !mcsema_real_eip !87
  %258 = xor i32 %256, -1534560611, !mcsema_real_eip !88
  %259 = add i64 %_local_stack_start_.i, -56, !mcsema_real_eip !89
  %260 = inttoptr i64 %259 to i32*
  store i32 %258, i32* %260, align 8, !mcsema_real_eip !89
  %261 = lshr i32 %258, 16
  %262 = add i64 %_local_stack_start_.i, -60, !mcsema_real_eip !90
  %263 = inttoptr i64 %262 to i32*
  store i32 %261, i32* %263, align 4, !mcsema_real_eip !90
  %264 = load i32* %260, align 8, !mcsema_real_eip !91
  %265 = and i32 %264, 65535, !mcsema_real_eip !92
  %266 = add i64 %_local_stack_start_.i, -64, !mcsema_real_eip !93
  %267 = inttoptr i64 %266 to i32*
  store i32 %265, i32* %267, align 8, !mcsema_real_eip !93
  %268 = load i32* %263, align 4, !mcsema_real_eip !94
  %269 = icmp eq i32 %268, 20299
  br i1 %269, label %block_0x2af.i, label %block_0x2c7.i, !mcsema_real_eip !95

block_0x251.i:                                    ; preds = %block_0x206.i
  store i32 43690, i32* %164, align 4, !mcsema_real_eip !96
  %270 = load i64* %71, align 8, !mcsema_real_eip !85
  %271 = add i64 %270, 12
  %272 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %271, i64 8), !mcsema_real_eip !86
  %273 = add i64 %_local_stack_start_.i, -52, !mcsema_real_eip !87
  %274 = trunc i64 %272 to i32, !mcsema_real_eip !87
  %275 = inttoptr i64 %273 to i32*
  store i32 %274, i32* %275, align 4, !mcsema_real_eip !87
  %276 = xor i32 %274, -1534560611, !mcsema_real_eip !88
  %277 = add i64 %_local_stack_start_.i, -56, !mcsema_real_eip !89
  %278 = inttoptr i64 %277 to i32*
  store i32 %276, i32* %278, align 8, !mcsema_real_eip !89
  %279 = lshr i32 %276, 16
  %280 = add i64 %_local_stack_start_.i, -60, !mcsema_real_eip !90
  %281 = inttoptr i64 %280 to i32*
  store i32 %279, i32* %281, align 4, !mcsema_real_eip !90
  %282 = load i32* %278, align 8, !mcsema_real_eip !91
  %283 = and i32 %282, 65535, !mcsema_real_eip !92
  %284 = add i64 %_local_stack_start_.i, -64, !mcsema_real_eip !93
  %285 = inttoptr i64 %284 to i32*
  store i32 %283, i32* %285, align 8, !mcsema_real_eip !93
  %286 = load i32* %281, align 4, !mcsema_real_eip !94
  %287 = icmp eq i32 %286, 20299
  br i1 %287, label %block_0x2af.i, label %block_0x2c7.i, !mcsema_real_eip !95

block_0x2c7.i:                                    ; preds = %block_0x2af.i, %block_0x251.i, %block_0x25d.i
  store i32 48351, i32* %164, align 4, !mcsema_real_eip !97
  %288 = load i64* %71, align 8, !mcsema_real_eip !98
  %289 = add i64 %288, 20
  %290 = tail call x86_64_sysvcc i64 @read_bytes(i64 48351, i64 %289, i64 8), !mcsema_real_eip !99
  %291 = add i64 %_local_stack_start_.i, -68, !mcsema_real_eip !100
  %292 = trunc i64 %290 to i32, !mcsema_real_eip !100
  %293 = inttoptr i64 %291 to i32*
  %294 = add i32 %292, -3
  store i32 %294, i32* %293, align 4, !mcsema_real_eip !101
  %295 = and i32 %294, 7, !mcsema_real_eip !102
  %296 = icmp eq i32 %295, 0, !mcsema_real_eip !102
  br i1 %296, label %block_0x315.i, label %block_0x309.i, !mcsema_real_eip !103

block_0x2af.i:                                    ; preds = %block_0x251.i, %block_0x25d.i
  %297 = add i64 %_local_stack_start_.i, -64, !mcsema_real_eip !104
  %298 = inttoptr i64 %297 to i32*
  %299 = load i32* %298, align 8, !mcsema_real_eip !104
  %300 = load i32* %164, align 4, !mcsema_real_eip !105
  %301 = icmp eq i32 %299, %300
  br i1 %301, label %block_0x2bb.i, label %block_0x2c7.i, !mcsema_real_eip !106

block_0x2bb.i:                                    ; preds = %block_0x2af.i
  store i32 0, i32* %164, align 4, !mcsema_real_eip !107
  %302 = load i64* %71, align 8, !mcsema_real_eip !98
  %303 = add i64 %302, 20
  %304 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %303, i64 8), !mcsema_real_eip !99
  %305 = add i64 %_local_stack_start_.i, -68, !mcsema_real_eip !100
  %306 = trunc i64 %304 to i32, !mcsema_real_eip !100
  %307 = inttoptr i64 %305 to i32*
  %308 = add i32 %306, -3
  store i32 %308, i32* %307, align 4, !mcsema_real_eip !101
  %309 = and i32 %308, 7, !mcsema_real_eip !102
  %310 = icmp eq i32 %309, 0, !mcsema_real_eip !102
  br i1 %310, label %block_0x315.i, label %block_0x309.i, !mcsema_real_eip !103

block_0x315.i:                                    ; preds = %block_0x2bb.i, %block_0x2c7.i
  %RDI_val.2.i = phi i64 [ 0, %block_0x2bb.i ], [ 48351, %block_0x2c7.i ]
  %RSI_val.1.i = phi i64 [ %303, %block_0x2bb.i ], [ %289, %block_0x2c7.i ]
  %311 = add i64 %_local_stack_start_.i, -68, !mcsema_real_eip !108
  %312 = inttoptr i64 %311 to i32*
  %313 = load i32* %312, align 4, !mcsema_real_eip !108
  %314 = xor i32 %313, -2147483648
  store i32 %314, i32* %312, align 4, !mcsema_real_eip !109
  %315 = icmp eq i32 %313, -1879048193
  %316 = icmp ult i32 %314, 268435455, !mcsema_real_eip !110
  %317 = or i1 %316, %315, !mcsema_real_eip !111
  br i1 %317, label %block_0x339.i, label %block_0x32d.i, !mcsema_real_eip !111

block_0x309.i:                                    ; preds = %block_0x2bb.i, %block_0x2c7.i
  %RDI_val.3.i = phi i64 [ 0, %block_0x2bb.i ], [ 48351, %block_0x2c7.i ]
  %RSI_val.2.i = phi i64 [ %303, %block_0x2bb.i ], [ %289, %block_0x2c7.i ]
  %318 = add i64 %_local_stack_start_.i, -12, !mcsema_real_eip !112
  %319 = inttoptr i64 %318 to i32*
  store i32 -21, i32* %319, align 4, !mcsema_real_eip !112
  br label %block_0x46d.i, !mcsema_real_eip !113

block_0x339.i:                                    ; preds = %block_0x315.i
  %320 = lshr i32 %313, 4
  %321 = xor i32 %320, 135069696
  %322 = add nsw i32 %321, -226
  %323 = add i64 %_local_stack_start_.i, -76, !mcsema_real_eip !114
  %324 = inttoptr i64 %323 to i32*
  store i32 10000, i32* %324, align 4, !mcsema_real_eip !114
  %325 = sext i32 %322 to i64
  %326 = udiv i64 %325, 10000, !mcsema_real_eip !115
  %327 = trunc i64 %326 to i32, !mcsema_real_eip !116
  store i32 %327, i32* %312, align 4, !mcsema_real_eip !116
  %328 = icmp eq i32 %327, 3
  br i1 %328, label %block_0x389.i, label %block_0x37e.i, !mcsema_real_eip !117

block_0x32d.i:                                    ; preds = %block_0x315.i
  %329 = add i64 %_local_stack_start_.i, -12, !mcsema_real_eip !118
  %330 = inttoptr i64 %329 to i32*
  store i32 -22, i32* %330, align 4, !mcsema_real_eip !118
  br label %block_0x46d.i, !mcsema_real_eip !119

block_0x389.i:                                    ; preds = %block_0x339.i
  %331 = load i32* %164, align 4, !mcsema_real_eip !120
  %332 = zext i32 %331 to i64, !mcsema_real_eip !120
  %333 = load i64* %71, align 8, !mcsema_real_eip !121
  %334 = add i64 %333, 28
  %335 = tail call x86_64_sysvcc i64 @read_bytes(i64 %332, i64 %334, i64 4), !mcsema_real_eip !122
  %336 = add i64 %_local_stack_start_.i, -72, !mcsema_real_eip !123
  %337 = trunc i64 %335 to i32, !mcsema_real_eip !123
  %338 = inttoptr i64 %336 to i32*
  store i32 %337, i32* %338, align 8, !mcsema_real_eip !123
  %339 = load i64* %71, align 8, !mcsema_real_eip !124
  %340 = add i64 %339, 28
  %341 = inttoptr i64 %340 to i8*
  %342 = load i8* %341, align 1, !mcsema_real_eip !125
  %343 = icmp eq i8 %342, 100
  %344 = add i64 %339, 29, !mcsema_real_eip !126
  %345 = inttoptr i64 %344 to i8*
  %346 = load i8* %345, align 1, !mcsema_real_eip !126
  %347 = icmp eq i8 %346, 100
  %or.cond = and i1 %343, %347
  br i1 %or.cond, label %block_0x3cd.i, label %block_0x3dd.i, !mcsema_real_eip !127

block_0x37e.i:                                    ; preds = %block_0x339.i
  %348 = urem i64 %325, 10000, !mcsema_real_eip !115
  %349 = and i64 %348, 16383
  %350 = add i64 %_local_stack_start_.i, -12, !mcsema_real_eip !128
  %351 = inttoptr i64 %350 to i32*
  store i32 %327, i32* %351, align 4, !mcsema_real_eip !128
  br label %block_0x46d.i, !mcsema_real_eip !129

block_0x3dd.i:                                    ; preds = %block_0x389.i
  %352 = icmp eq i8 %342, %346
  br i1 %352, label %block_0x3f5.i, label %block_0x45c.i, !mcsema_real_eip !130

block_0x3cd.i:                                    ; preds = %block_0x389.i
  %353 = load i32* %164, align 4, !mcsema_real_eip !131
  %354 = xor i32 %353, %337, !mcsema_real_eip !132
  %355 = zext i32 %354 to i64, !mcsema_real_eip !132
  store i32 %354, i32* %164, align 4, !mcsema_real_eip !133
  br label %block_0x467.i, !mcsema_real_eip !134

block_0x45c.i:                                    ; preds = %block_0x3dd.i
  %356 = sext i8 %342 to i64
  %357 = and i64 %356, 4294967295
  %358 = sext i8 %346 to i64
  %359 = and i64 %358, 4294967295
  store i32 %337, i32* %164, align 4, !mcsema_real_eip !135
  br label %block_0x467.i, !mcsema_real_eip !136

block_0x3f5.i:                                    ; preds = %block_0x3dd.i
  %360 = add i64 %339, 31, !mcsema_real_eip !137
  %361 = inttoptr i64 %360 to i8*
  %362 = load i8* %361, align 1, !mcsema_real_eip !137
  %363 = sext i8 %362 to i32, !mcsema_real_eip !137
  %364 = add i64 %339, 30, !mcsema_real_eip !138
  %365 = inttoptr i64 %364 to i8*
  %366 = load i8* %365, align 1, !mcsema_real_eip !138
  %367 = sext i8 %366 to i32, !mcsema_real_eip !138
  %368 = zext i32 %367 to i64, !mcsema_real_eip !138
  %369 = load i32* %164, align 4, !mcsema_real_eip !139
  %370 = sub i32 15, %363
  %371 = add nsw i32 %370, %367
  %372 = add i32 %371, %369
  store i32 %372, i32* %164, align 4, !mcsema_real_eip !140
  %373 = load i64* %71, align 8, !mcsema_real_eip !141
  %374 = add i64 %373, 28, !mcsema_real_eip !142
  %375 = inttoptr i64 %374 to i8*
  %376 = load i8* %375, align 1, !mcsema_real_eip !142
  %377 = zext i8 %376 to i64
  %378 = tail call x86_64_sysvcc i64 @to_byte(i64 %377), !mcsema_real_eip !143
  %379 = load i32* %164, align 4, !mcsema_real_eip !144
  %380 = trunc i64 %378 to i32, !mcsema_real_eip !145
  %381 = sub i32 %379, %380, !mcsema_real_eip !145
  %382 = zext i32 %381 to i64, !mcsema_real_eip !145
  store i32 %381, i32* %164, align 4, !mcsema_real_eip !146
  %383 = icmp eq i32 %379, %380
  br i1 %383, label %block_0x438.i, label %block_0x467.i, !mcsema_real_eip !147

block_0x467.i:                                    ; preds = %block_0x450.i, %block_0x438.block_0x467_crit_edge.i, %block_0x3f5.i, %block_0x45c.i, %block_0x3cd.i
  %384 = phi i32 [ %354, %block_0x3cd.i ], [ %.pre.i, %block_0x438.block_0x467_crit_edge.i ], [ -32, %block_0x450.i ], [ %381, %block_0x3f5.i ], [ %337, %block_0x45c.i ]
  %RDI_val.4.i = phi i64 [ %332, %block_0x3cd.i ], [ %409, %block_0x438.block_0x467_crit_edge.i ], [ %409, %block_0x450.i ], [ %377, %block_0x3f5.i ], [ %332, %block_0x45c.i ]
  %RSI_val.3.i = phi i64 [ %339, %block_0x3cd.i ], [ %368, %block_0x438.block_0x467_crit_edge.i ], [ %368, %block_0x450.i ], [ %368, %block_0x3f5.i ], [ %339, %block_0x45c.i ]
  %RDX_val.4.i = phi i64 [ 4, %block_0x3cd.i ], [ %382, %block_0x438.block_0x467_crit_edge.i ], [ %382, %block_0x450.i ], [ %382, %block_0x3f5.i ], [ %359, %block_0x45c.i ]
  %RCX_val.2.i = phi i64 [ %355, %block_0x3cd.i ], [ %373, %block_0x438.block_0x467_crit_edge.i ], [ %373, %block_0x450.i ], [ %373, %block_0x3f5.i ], [ %357, %block_0x45c.i ]
  %385 = add i64 %_local_stack_start_.i, -12, !mcsema_real_eip !148
  %386 = inttoptr i64 %385 to i32*
  store i32 %384, i32* %386, align 4, !mcsema_real_eip !148
  %387 = zext i32 %384 to i64, !mcsema_real_eip !13
  %uadd147.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %69, i64 80)
  %388 = extractvalue { i64, i1 } %uadd147.i, 0
  %389 = xor i64 %388, %69, !mcsema_real_eip !14
  %390 = and i64 %389, 16
  %391 = icmp eq i64 %390, 0
  %392 = icmp slt i64 %388, 0
  %393 = icmp eq i64 %388, 0, !mcsema_real_eip !14
  %394 = add i64 %_local_stack_start_.i, 9223372036854775720
  %395 = and i64 %389, %394, !mcsema_real_eip !14
  %396 = icmp slt i64 %395, 0
  %397 = trunc i64 %388 to i8, !mcsema_real_eip !14
  %398 = tail call i8 @llvm.ctpop.i8(i8 %397), !mcsema_real_eip !14
  %399 = and i8 %398, 1
  %400 = icmp eq i8 %399, 0
  %401 = extractvalue { i64, i1 } %uadd147.i, 1
  %402 = inttoptr i64 %388 to i64*, !mcsema_real_eip !15
  %403 = load i64* %402, align 8, !mcsema_real_eip !15
  %404 = add i64 %388, 16, !mcsema_real_eip !16
  store i64 %387, i64* %RAX.i, align 8, !mcsema_real_eip !16
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !16
  store i64 %RCX_val.2.i, i64* %RCX.i, align 8, !mcsema_real_eip !16
  store i64 %RDX_val.4.i, i64* %RDX.i, align 8, !mcsema_real_eip !16
  store i64 %RSI_val.3.i, i64* %RSI.i, align 8, !mcsema_real_eip !16
  store i64 %RDI_val.4.i, i64* %RDI.i, align 8, !mcsema_real_eip !16
  store i64 %404, i64* %RSP.i, align 8, !mcsema_real_eip !16
  store i64 %403, i64* %RBP.i, align 8, !mcsema_real_eip !16
  store i64 %7, i64* %R8.i, align 8, !mcsema_real_eip !16
  store i64 %8, i64* %R9.i, align 8, !mcsema_real_eip !16
  store i64 %9, i64* %R10.i, align 8, !mcsema_real_eip !16
  store i64 %10, i64* %R11.i, align 8, !mcsema_real_eip !16
  store i64 %11, i64* %R12.i, align 8, !mcsema_real_eip !16
  store i64 %12, i64* %R13.i, align 8, !mcsema_real_eip !16
  store i64 %13, i64* %R14.i, align 8, !mcsema_real_eip !16
  store i64 %14, i64* %R15.i, align 8, !mcsema_real_eip !16
  store i64 %15, i64* %RIP.i, align 8, !mcsema_real_eip !16
  store i1 %401, i1* %CF.i, align 1, !mcsema_real_eip !16
  store i1 %400, i1* %PF.i, align 1, !mcsema_real_eip !16
  store i1 %391, i1* %AF.i, align 1, !mcsema_real_eip !16
  store i1 %393, i1* %ZF.i, align 1, !mcsema_real_eip !16
  store i1 %392, i1* %SF.i, align 1, !mcsema_real_eip !16
  store i1 %396, i1* %OF.i, align 1, !mcsema_real_eip !16
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
  %405 = load i64* %71, align 8, !mcsema_real_eip !149
  %406 = add i64 %405, 31, !mcsema_real_eip !150
  %407 = inttoptr i64 %406 to i8*
  %408 = load i8* %407, align 1, !mcsema_real_eip !150
  %409 = zext i8 %408 to i64
  %410 = tail call x86_64_sysvcc i64 @to_byte(i64 %409), !mcsema_real_eip !151
  %411 = trunc i64 %410 to i32, !mcsema_real_eip !152
  %412 = icmp eq i32 %411, 4
  br i1 %412, label %block_0x438.block_0x467_crit_edge.i, label %block_0x450.i, !mcsema_real_eip !153

block_0x438.block_0x467_crit_edge.i:              ; preds = %block_0x438.i
  %.pre.i = load i32* %164, align 4
  br label %block_0x467.i

block_0x450.i:                                    ; preds = %block_0x438.i
  store i32 -32, i32* %164, align 4, !mcsema_real_eip !154
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
