; ModuleID = 'Output/test_5.clang.trans.opt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [77 x i8] }>
%1 = type <{ [95 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x3b2 = internal global %0 <{ [77 x i8] c"+-+---+---+| |     |#|| | --+ | || |   | | || +-- | | ||     |   |+-----+---+" }>, align 64
@data_0x3ff = internal constant %1 <{ [95 x i8] c"%c\00\0A\00Wrong command!(only w,s,a,d accepted!)\0A\00You lose!\0A\00You win!\0A\00Your solution:%s \0A\00You lose\0A\00" }>, align 64

declare x86_64_sysvcc i64 @read(i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg)

declare x86_64_sysvcc i64 @exit(i64 inreg)

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  %_local_stack_alloc_267.i = alloca [144 x i64], align 8
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %1 = bitcast [144 x i64]* %_local_stack_alloc_267.i to i8*
  call void @llvm.lifetime.start(i64 1152, i8* %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %STi_val.i.0..sroa_cast)
  %_local_stack_start_.i = ptrtoint [144 x i64]* %_local_stack_alloc_267.i to i64
  %RAX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %2 = load i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %3 = load i64* %RSI.i, align 8, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %4 = load i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %5 = load i64* %RBP.i, align 8, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %R9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %6 = load i64* %R10.i, align 8, !mcsema_real_eip !2
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %7 = load i64* %R11.i, align 8, !mcsema_real_eip !2
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %8 = load i64* %R12.i, align 8, !mcsema_real_eip !2
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %9 = load i64* %R13.i, align 8, !mcsema_real_eip !2
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %10 = load i64* %R14.i, align 8, !mcsema_real_eip !2
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %11 = load i64* %R15.i, align 8, !mcsema_real_eip !2
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %12 = load i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %13 = load i1* %DF.i, align 1, !mcsema_real_eip !2
  %14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %15 = bitcast x86_fp80* %14 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast, i8* %15, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %16 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %17 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %18 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %19 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %20 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %21 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %22 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %23 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %24 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %25 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %26 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %27 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %28 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %29 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %30 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %31 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %32 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %33 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %34 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %35 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %36 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %37 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %38 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %39 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %40 = bitcast i8* %39 to i64*
  %41 = load i64* %40, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %42 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %43 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %44 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %45 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %46 = load i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %47 = load i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %48 = load i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %49 = load i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %50 = load i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %51 = load i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %52 = load i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %53 = load i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %54 = load i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %55 = load i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %56 = load i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %57 = load i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %58 = load i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %59 = load i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %60 = load i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %61 = load i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %62 = load i64* %STACK_BASE.i, align 8, !mcsema_real_eip !2
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %63 = load i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !2
  %64 = add i64 %_local_stack_start_.i, -8
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !2
  store i64 %5, i64* %65, align 8, !mcsema_real_eip !2
  %66 = add i64 %_local_stack_start_.i, -136
  %67 = add i64 %_local_stack_start_.i, -72
  %68 = add i64 %_local_stack_start_.i, -12
  %69 = inttoptr i64 %68 to i32*
  store i32 0, i32* %69, align 4, !mcsema_real_eip !3
  %70 = add i64 %_local_stack_start_.i, -16, !mcsema_real_eip !4
  %71 = trunc i64 %4 to i32, !mcsema_real_eip !4
  %72 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %72, align 8, !mcsema_real_eip !4
  %73 = add i64 %_local_stack_start_.i, -24, !mcsema_real_eip !5
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !5
  store i64 %3, i64* %74, align 8, !mcsema_real_eip !5
  %75 = add i64 %_local_stack_start_.i, -44
  %76 = inttoptr i64 %75 to i32*
  store i32 0, i32* %76, align 4, !mcsema_real_eip !6
  %77 = add i64 %_local_stack_start_.i, -28
  %78 = inttoptr i64 %77 to i32*
  store i32 1, i32* %78, align 4, !mcsema_real_eip !7
  %79 = add i64 %_local_stack_start_.i, -32
  %80 = inttoptr i64 %79 to i32*
  store i32 1, i32* %80, align 8, !mcsema_real_eip !8
  %81 = load i32* %78, align 4, !mcsema_real_eip !9
  %82 = sext i32 %81 to i64, !mcsema_real_eip !9
  %83 = add i64 %82, add (i64 ptrtoint (%0* @data_0x3b2 to i64), i64 11), !mcsema_real_eip !10
  %84 = inttoptr i64 %83 to i8*
  store i8 88, i8* %84, align 1, !mcsema_real_eip !10
  %85 = tail call x86_64_sysvcc i64 @read(i64 0, i64 %67, i64 28), !mcsema_real_eip !11
  %86 = add i64 %_local_stack_start_.i, -80, !mcsema_real_eip !12
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !12
  store i64 %85, i64* %87, align 8, !mcsema_real_eip !12
  %88 = load i32* %76, align 4, !mcsema_real_eip !13
  %89 = add i32 %88, -28
  %90 = icmp slt i32 %89, 0
  %91 = sub i32 27, %88
  %92 = and i32 %91, %88
  %93 = icmp slt i32 %92, 0
  %tmp.i = xor i1 %90, %93
  br i1 %tmp.i, label %block_0x13d.i, label %sub_c0.exit, !mcsema_real_eip !14

block_0x13d.i:                                    ; preds = %driverBlockRaw
  %94 = load i32* %78, align 4, !mcsema_real_eip !15
  %95 = add i64 %_local_stack_start_.i, -36, !mcsema_real_eip !16
  %96 = inttoptr i64 %95 to i32*
  store i32 %94, i32* %96, align 4, !mcsema_real_eip !16
  %97 = load i32* %80, align 8, !mcsema_real_eip !17
  %98 = add i64 %_local_stack_start_.i, -40, !mcsema_real_eip !18
  %99 = inttoptr i64 %98 to i32*
  store i32 %97, i32* %99, align 8, !mcsema_real_eip !18
  %100 = load i32* %76, align 4, !mcsema_real_eip !19
  %101 = sext i32 %100 to i64, !mcsema_real_eip !19
  %102 = add i64 %101, %67, !mcsema_real_eip !20
  %103 = inttoptr i64 %102 to i8*
  %104 = load i8* %103, align 1, !mcsema_real_eip !20
  %105 = sext i8 %104 to i32, !mcsema_real_eip !20
  %106 = add nsw i32 %105, -114
  %107 = icmp eq i32 %106, 0, !mcsema_real_eip !21
  %108 = icmp slt i32 %106, 0
  %109 = sub i32 113, %105
  %110 = and i32 %109, %105
  %111 = icmp slt i32 %110, 0
  %112 = add i64 %_local_stack_start_.i, -84, !mcsema_real_eip !22
  %113 = inttoptr i64 %112 to i32*
  store i32 %105, i32* %113, align 4, !mcsema_real_eip !22
  %114 = add i64 %_local_stack_start_.i, -88, !mcsema_real_eip !23
  %115 = inttoptr i64 %114 to i32*
  store i32 %106, i32* %115, align 8, !mcsema_real_eip !23
  %tmp348.i = xor i1 %108, %111
  %.demorgan.i = or i1 %107, %tmp348.i
  %116 = load i32* %113, align 4, !mcsema_real_eip !24
  br i1 %.demorgan.i, label %block_0x168.i, label %block_0x190.i, !mcsema_real_eip !25

block_0x190.i:                                    ; preds = %block_0x13d.i
  %117 = add i32 %116, -115
  %118 = icmp eq i32 %117, 0, !mcsema_real_eip !26
  %119 = add i64 %_local_stack_start_.i, -100, !mcsema_real_eip !27
  %120 = inttoptr i64 %119 to i32*
  store i32 %117, i32* %120, align 4, !mcsema_real_eip !27
  br i1 %118, label %block_0x1c8.i, label %block_0x1a4.i, !mcsema_real_eip !28

block_0x168.i:                                    ; preds = %block_0x13d.i
  %121 = add i32 %116, -97
  %122 = icmp eq i32 %121, 0, !mcsema_real_eip !29
  %123 = add i64 %_local_stack_start_.i, -92, !mcsema_real_eip !30
  %124 = inttoptr i64 %123 to i32*
  store i32 %121, i32* %124, align 4, !mcsema_real_eip !30
  br i1 %122, label %block_0x1d8.i, label %block_0x17c.i, !mcsema_real_eip !31

block_0x1c8.i:                                    ; preds = %block_0x190.i
  %125 = load i32* %80, align 8, !mcsema_real_eip !32
  %126 = add i32 %125, 1
  store i32 %126, i32* %80, align 8, !mcsema_real_eip !33
  br label %block_0x22a.i, !mcsema_real_eip !34

block_0x1d8.i:                                    ; preds = %block_0x168.i
  %127 = load i32* %78, align 4, !mcsema_real_eip !35
  %128 = add i32 %127, -1
  store i32 %128, i32* %78, align 4, !mcsema_real_eip !36
  br label %block_0x22a.i, !mcsema_real_eip !37

block_0x1a4.i:                                    ; preds = %block_0x190.i
  %129 = load i32* %113, align 4, !mcsema_real_eip !38
  %130 = add i32 %129, -119
  %131 = icmp eq i32 %130, 0, !mcsema_real_eip !39
  %132 = add i64 %_local_stack_start_.i, -104, !mcsema_real_eip !40
  %133 = inttoptr i64 %132 to i32*
  store i32 %130, i32* %133, align 8, !mcsema_real_eip !40
  br i1 %131, label %block_0x1b8.i, label %block_0x1f8.i, !mcsema_real_eip !41

block_0x22a.i:                                    ; preds = %block_0x1b8.i, %block_0x1e8.i, %block_0x1d8.i, %block_0x1c8.i
  %134 = load i32* %78, align 4, !mcsema_real_eip !42
  %135 = sext i32 %134 to i64, !mcsema_real_eip !42
  %136 = load i32* %80, align 8, !mcsema_real_eip !43
  %137 = sext i32 %136 to i64, !mcsema_real_eip !43
  %138 = mul i64 %137, 11, !mcsema_real_eip !44
  %139 = add i64 %135, ptrtoint (%0* @data_0x3b2 to i64)
  %140 = add i64 %139, %138, !mcsema_real_eip !45
  %141 = inttoptr i64 %140 to i8*
  %142 = load i8* %141, align 1, !mcsema_real_eip !45
  %143 = icmp eq i8 %142, 35
  br i1 %143, label %block_0x256.i, label %block_0x28c.i, !mcsema_real_eip !46

block_0x17c.i:                                    ; preds = %block_0x168.i
  %144 = load i32* %113, align 4, !mcsema_real_eip !47
  %145 = add i32 %144, -100
  %146 = icmp eq i32 %145, 0, !mcsema_real_eip !48
  %147 = add i64 %_local_stack_start_.i, -96, !mcsema_real_eip !49
  %148 = inttoptr i64 %147 to i32*
  store i32 %145, i32* %148, align 8, !mcsema_real_eip !49
  br i1 %146, label %block_0x1e8.i, label %block_0x1f8.i, !mcsema_real_eip !50

block_0x1f8.i:                                    ; preds = %block_0x17c.i, %block_0x1a4.i
  %149 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 5)), !mcsema_real_eip !51
  %150 = add i64 %_local_stack_start_.i, -108, !mcsema_real_eip !52
  %151 = trunc i64 %149 to i32, !mcsema_real_eip !52
  %152 = inttoptr i64 %150 to i32*
  store i32 %151, i32* %152, align 4, !mcsema_real_eip !52
  %153 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 45)), !mcsema_real_eip !53
  %154 = add i64 %_local_stack_start_.i, -112, !mcsema_real_eip !54
  %155 = trunc i64 %153 to i32, !mcsema_real_eip !54
  %156 = inttoptr i64 %154 to i32*
  store i32 %155, i32* %156, align 8, !mcsema_real_eip !54
  %157 = tail call x86_64_sysvcc i64 @exit(i64 4294967295), !mcsema_real_eip !55
  %158 = load i32* %78, align 4, !mcsema_real_eip !42
  %159 = sext i32 %158 to i64, !mcsema_real_eip !42
  %160 = load i32* %80, align 8, !mcsema_real_eip !43
  %161 = sext i32 %160 to i64, !mcsema_real_eip !43
  %162 = mul i64 %161, 11, !mcsema_real_eip !44
  %163 = add i64 %159, ptrtoint (%0* @data_0x3b2 to i64)
  %164 = add i64 %163, %162, !mcsema_real_eip !45
  %165 = inttoptr i64 %164 to i8*
  %166 = load i8* %165, align 1, !mcsema_real_eip !45
  %167 = icmp eq i8 %166, 35
  br i1 %167, label %block_0x256.i, label %block_0x28c.i, !mcsema_real_eip !46

block_0x28c.i:                                    ; preds = %block_0x1f8.i, %block_0x22a.i
  %168 = phi i32 [ %136, %block_0x22a.i ], [ %160, %block_0x1f8.i ]
  %169 = phi i32 [ %134, %block_0x22a.i ], [ %158, %block_0x1f8.i ]
  %RDI_val.1.i = phi i64 [ 0, %block_0x22a.i ], [ 4294967295, %block_0x1f8.i ]
  %170 = sext i32 %169 to i64, !mcsema_real_eip !56
  %171 = sext i32 %168 to i64, !mcsema_real_eip !57
  %172 = mul i64 %171, 11, !mcsema_real_eip !58
  %173 = add i64 %170, ptrtoint (%0* @data_0x3b2 to i64)
  %174 = add i64 %173, %172, !mcsema_real_eip !59
  %175 = inttoptr i64 %174 to i8*
  %176 = load i8* %175, align 1, !mcsema_real_eip !59
  %177 = sext i8 %176 to i64
  %178 = and i64 %177, 4294967295
  %179 = icmp eq i8 %176, 32
  br i1 %179, label %block_0x317.i, label %block_0x2b8.i, !mcsema_real_eip !60

block_0x256.i:                                    ; preds = %block_0x1f8.i, %block_0x22a.i
  %180 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 56)), !mcsema_real_eip !61
  %181 = add i64 %_local_stack_start_.i, -116, !mcsema_real_eip !62
  %182 = trunc i64 %180 to i32, !mcsema_real_eip !62
  %183 = inttoptr i64 %181 to i32*
  store i32 %182, i32* %183, align 4, !mcsema_real_eip !62
  %184 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 66)), !mcsema_real_eip !63
  %185 = add i64 %_local_stack_start_.i, -120, !mcsema_real_eip !64
  %186 = trunc i64 %184 to i32, !mcsema_real_eip !64
  %187 = inttoptr i64 %185 to i32*
  store i32 %186, i32* %187, align 8, !mcsema_real_eip !64
  %188 = tail call x86_64_sysvcc i64 @exit(i64 0), !mcsema_real_eip !65
  %189 = load i32* %78, align 4, !mcsema_real_eip !56
  %190 = sext i32 %189 to i64, !mcsema_real_eip !56
  %191 = load i32* %80, align 8, !mcsema_real_eip !57
  %192 = sext i32 %191 to i64, !mcsema_real_eip !57
  %193 = mul i64 %192, 11, !mcsema_real_eip !58
  %194 = add i64 %190, ptrtoint (%0* @data_0x3b2 to i64)
  %195 = add i64 %194, %193, !mcsema_real_eip !59
  %196 = inttoptr i64 %195 to i8*
  %197 = load i8* %196, align 1, !mcsema_real_eip !59
  %198 = sext i8 %197 to i64
  %199 = and i64 %198, 4294967295
  %200 = icmp eq i8 %197, 32
  br i1 %200, label %block_0x317.i, label %block_0x2b8.i, !mcsema_real_eip !60

block_0x1e8.i:                                    ; preds = %block_0x17c.i
  %201 = load i32* %78, align 4, !mcsema_real_eip !66
  %202 = add i32 %201, 1
  store i32 %202, i32* %78, align 4, !mcsema_real_eip !67
  br label %block_0x22a.i, !mcsema_real_eip !68

block_0x1b8.i:                                    ; preds = %block_0x1a4.i
  %203 = load i32* %80, align 8, !mcsema_real_eip !69
  %204 = add i32 %203, -1
  store i32 %204, i32* %80, align 8, !mcsema_real_eip !70
  br label %block_0x22a.i, !mcsema_real_eip !71

block_0x317.i:                                    ; preds = %block_0x2fe.i, %block_0x256.i, %block_0x28c.i
  %205 = phi i32 [ %191, %block_0x256.i ], [ 2, %block_0x2fe.i ], [ %168, %block_0x28c.i ]
  %206 = phi i32 [ %189, %block_0x256.i ], [ %209, %block_0x2fe.i ], [ %169, %block_0x28c.i ]
  %RDI_val.2.i = phi i64 [ 0, %block_0x256.i ], [ %RDI_val.3.i, %block_0x2fe.i ], [ %RDI_val.1.i, %block_0x28c.i ]
  %RSI_val.1.i = phi i64 [ %199, %block_0x256.i ], [ %222, %block_0x2fe.i ], [ %178, %block_0x28c.i ]
  %207 = load i32* %96, align 4, !mcsema_real_eip !72
  %208 = icmp eq i32 %207, %206
  br i1 %208, label %block_0x323.i, label %block_0x34d.i, !mcsema_real_eip !73

block_0x2b8.i:                                    ; preds = %block_0x256.i, %block_0x28c.i
  %209 = phi i32 [ %189, %block_0x256.i ], [ %169, %block_0x28c.i ]
  %210 = phi i32 [ %191, %block_0x256.i ], [ %168, %block_0x28c.i ]
  %RDI_val.3.i = phi i64 [ 0, %block_0x256.i ], [ %RDI_val.1.i, %block_0x28c.i ]
  %RSI_val.2.i = phi i64 [ %199, %block_0x256.i ], [ %178, %block_0x28c.i ]
  %211 = icmp eq i32 %210, 2
  br i1 %211, label %block_0x2c5.i, label %block_0x30b.i, !mcsema_real_eip !74

block_0x30b.i:                                    ; preds = %block_0x2fe.i, %block_0x2c5.i, %block_0x2b8.i
  %RSI_val.3.i = phi i64 [ %222, %block_0x2fe.i ], [ %222, %block_0x2c5.i ], [ %RSI_val.2.i, %block_0x2b8.i ]
  %212 = load i32* %96, align 4, !mcsema_real_eip !75
  store i32 %212, i32* %78, align 4, !mcsema_real_eip !76
  %213 = load i32* %99, align 8, !mcsema_real_eip !77
  store i32 %213, i32* %80, align 8, !mcsema_real_eip !78
  %214 = load i32* %96, align 4, !mcsema_real_eip !72
  %215 = load i32* %78, align 4, !mcsema_real_eip !79
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %block_0x323.i, label %block_0x34d.i, !mcsema_real_eip !73

block_0x2c5.i:                                    ; preds = %block_0x2b8.i
  %217 = sext i32 %209 to i64, !mcsema_real_eip !80
  %218 = add i64 %217, add (i64 ptrtoint (%0* @data_0x3b2 to i64), i64 22), !mcsema_real_eip !81
  %219 = inttoptr i64 %218 to i8*
  %220 = load i8* %219, align 1, !mcsema_real_eip !81
  %221 = sext i8 %220 to i64
  %222 = and i64 %221, 4294967295
  %223 = icmp ne i8 %220, 124
  %224 = icmp slt i32 %209, 1
  %or.cond.i = or i1 %223, %224
  br i1 %or.cond.i, label %block_0x30b.i, label %block_0x2fe.i, !mcsema_real_eip !82

block_0x34d.i:                                    ; preds = %block_0x323.i, %block_0x30b.i, %block_0x317.i
  %225 = phi i32 [ %250, %block_0x323.i ], [ %205, %block_0x317.i ], [ %213, %block_0x30b.i ]
  %226 = phi i32 [ %249, %block_0x323.i ], [ %206, %block_0x317.i ], [ %215, %block_0x30b.i ]
  %RDI_val.4.i = phi i64 [ %RDI_val.5.i, %block_0x323.i ], [ %RDI_val.2.i, %block_0x317.i ], [ %RDI_val.3.i, %block_0x30b.i ]
  %RSI_val.4.i = phi i64 [ %RSI_val.5.i, %block_0x323.i ], [ %RSI_val.1.i, %block_0x317.i ], [ %RSI_val.3.i, %block_0x30b.i ]
  %227 = sext i32 %226 to i64, !mcsema_real_eip !83
  %228 = sext i32 %225 to i64, !mcsema_real_eip !84
  %229 = mul i64 %228, 11, !mcsema_real_eip !85
  %uadd366.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %229, i64 ptrtoint (%0* @data_0x3b2 to i64))
  %230 = extractvalue { i64, i1 } %uadd366.i, 0
  %231 = xor i64 %230, ptrtoint (%0* @data_0x3b2 to i64), !mcsema_real_eip !86
  %232 = xor i64 %230, %229, !mcsema_real_eip !86
  %233 = and i64 %232, 16, !mcsema_real_eip !86
  %234 = icmp ne i64 %233, 0, !mcsema_real_eip !86
  %235 = icmp slt i64 %230, 0
  %236 = icmp eq i64 %230, 0, !mcsema_real_eip !86
  %237 = xor i64 %229, xor (i64 ptrtoint (%0* @data_0x3b2 to i64), i64 -9223372036854775808), !mcsema_real_eip !86
  %238 = and i64 %231, %237, !mcsema_real_eip !86
  %239 = icmp slt i64 %238, 0
  %240 = trunc i64 %230 to i8, !mcsema_real_eip !86
  %241 = tail call i8 @llvm.ctpop.i8(i8 %240), !mcsema_real_eip !86
  %242 = and i8 %241, 1
  %243 = icmp eq i8 %242, 0
  %244 = extractvalue { i64, i1 } %uadd366.i, 1
  %245 = add i64 %230, %227, !mcsema_real_eip !87
  %246 = inttoptr i64 %245 to i8*
  store i8 88, i8* %246, align 1, !mcsema_real_eip !87
  %247 = add i64 %_local_stack_start_.i, -144
  %248 = inttoptr i64 %247 to i64*, !mcsema_real_eip !88
  store i64 -4981261766360305936, i64* %248, align 8, !mcsema_real_eip !88
  store i64 %230, i64* %RAX.i, align 8, !mcsema_real_eip !88
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !88
  store i64 %227, i64* %RCX.i, align 8, !mcsema_real_eip !88
  store i64 %229, i64* %RDX.i, align 8, !mcsema_real_eip !88
  store i64 %RSI_val.4.i, i64* %RSI.i, align 8, !mcsema_real_eip !88
  store i64 %RDI_val.4.i, i64* %RDI.i, align 8, !mcsema_real_eip !88
  store i64 %247, i64* %RSP.i, align 8, !mcsema_real_eip !88
  store i64 %64, i64* %RBP.i, align 8, !mcsema_real_eip !88
  store i64 add (i64 ptrtoint (%0* @data_0x3b2 to i64), i64 11), i64* %R8.i, align 8, !mcsema_real_eip !88
  store i64 11, i64* %R9.i, align 8, !mcsema_real_eip !88
  store i64 %6, i64* %R10.i, align 8, !mcsema_real_eip !88
  store i64 %7, i64* %R11.i, align 8, !mcsema_real_eip !88
  store i64 %8, i64* %R12.i, align 8, !mcsema_real_eip !88
  store i64 %9, i64* %R13.i, align 8, !mcsema_real_eip !88
  store i64 %10, i64* %R14.i, align 8, !mcsema_real_eip !88
  store i64 %11, i64* %R15.i, align 8, !mcsema_real_eip !88
  store i64 %12, i64* %RIP.i, align 8, !mcsema_real_eip !88
  store i1 %244, i1* %CF.i, align 1, !mcsema_real_eip !88
  store i1 %243, i1* %PF.i, align 1, !mcsema_real_eip !88
  store i1 %234, i1* %AF.i, align 1, !mcsema_real_eip !88
  store i1 %236, i1* %ZF.i, align 1, !mcsema_real_eip !88
  store i1 %235, i1* %SF.i, align 1, !mcsema_real_eip !88
  store i1 %239, i1* %OF.i, align 1, !mcsema_real_eip !88
  store i1 %13, i1* %DF.i, align 1, !mcsema_real_eip !88
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !88
  store i1 %16, i1* %FPU_B.i, align 1, !mcsema_real_eip !88
  store i1 %17, i1* %FPU_C3.i, align 1, !mcsema_real_eip !88
  store i3 %18, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !88
  store i1 %19, i1* %FPU_C2.i, align 1, !mcsema_real_eip !88
  store i1 %20, i1* %FPU_C1.i, align 1, !mcsema_real_eip !88
  store i1 %21, i1* %FPU_C0.i, align 1, !mcsema_real_eip !88
  store i1 %22, i1* %FPU_ES.i, align 1, !mcsema_real_eip !88
  store i1 %23, i1* %FPU_SF.i, align 1, !mcsema_real_eip !88
  store i1 %24, i1* %FPU_PE.i, align 1, !mcsema_real_eip !88
  store i1 %25, i1* %FPU_UE.i, align 1, !mcsema_real_eip !88
  store i1 %26, i1* %FPU_OE.i, align 1, !mcsema_real_eip !88
  store i1 %27, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !88
  store i1 %28, i1* %FPU_DE.i, align 1, !mcsema_real_eip !88
  store i1 %29, i1* %FPU_IE.i, align 1, !mcsema_real_eip !88
  store i1 %30, i1* %FPU_X.i, align 1, !mcsema_real_eip !88
  store i2 %31, i2* %FPU_RC.i, align 1, !mcsema_real_eip !88
  store i2 %32, i2* %FPU_PC.i, align 1, !mcsema_real_eip !88
  store i1 %33, i1* %FPU_PM.i, align 1, !mcsema_real_eip !88
  store i1 %34, i1* %FPU_UM.i, align 1, !mcsema_real_eip !88
  store i1 %35, i1* %FPU_OM.i, align 1, !mcsema_real_eip !88
  store i1 %36, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !88
  store i1 %37, i1* %FPU_DM.i, align 1, !mcsema_real_eip !88
  store i1 %38, i1* %FPU_IM.i, align 1, !mcsema_real_eip !88
  store i64 %41, i64* %40, align 4
  store i16 %42, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !88
  store i64 %43, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !88
  store i16 %44, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !88
  store i64 %45, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !88
  store i128 %46, i128* %XMM0.i, align 1, !mcsema_real_eip !88
  store i128 %47, i128* %XMM1.i, align 1, !mcsema_real_eip !88
  store i128 %48, i128* %XMM2.i, align 1, !mcsema_real_eip !88
  store i128 %49, i128* %XMM3.i, align 1, !mcsema_real_eip !88
  store i128 %50, i128* %XMM4.i, align 1, !mcsema_real_eip !88
  store i128 %51, i128* %XMM5.i, align 1, !mcsema_real_eip !88
  store i128 %52, i128* %XMM6.i, align 1, !mcsema_real_eip !88
  store i128 %53, i128* %XMM7.i, align 1, !mcsema_real_eip !88
  store i128 %54, i128* %XMM8.i, align 1, !mcsema_real_eip !88
  store i128 %55, i128* %XMM9.i, align 1, !mcsema_real_eip !88
  store i128 %56, i128* %XMM10.i, align 1, !mcsema_real_eip !88
  store i128 %57, i128* %XMM11.i, align 1, !mcsema_real_eip !88
  store i128 %58, i128* %XMM12.i, align 1, !mcsema_real_eip !88
  store i128 %59, i128* %XMM13.i, align 1, !mcsema_real_eip !88
  store i128 %60, i128* %XMM14.i, align 1, !mcsema_real_eip !88
  store i128 %61, i128* %XMM15.i, align 1, !mcsema_real_eip !88
  store i64 %62, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !88
  store i64 %63, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !88
  call void @llvm.trap()
  unreachable

block_0x323.i:                                    ; preds = %block_0x30b.i, %block_0x317.i
  %249 = phi i32 [ %206, %block_0x317.i ], [ %214, %block_0x30b.i ]
  %250 = phi i32 [ %205, %block_0x317.i ], [ %213, %block_0x30b.i ]
  %RDI_val.5.i = phi i64 [ %RDI_val.2.i, %block_0x317.i ], [ %RDI_val.3.i, %block_0x30b.i ]
  %RSI_val.5.i = phi i64 [ %RSI_val.1.i, %block_0x317.i ], [ %RSI_val.3.i, %block_0x30b.i ]
  %251 = load i32* %99, align 8, !mcsema_real_eip !89
  %252 = icmp eq i32 %251, %250
  br i1 %252, label %block_0x32f.i, label %block_0x34d.i, !mcsema_real_eip !90

block_0x32f.i:                                    ; preds = %block_0x323.i
  %253 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 85)), !mcsema_real_eip !91
  %254 = add i64 %_local_stack_start_.i, -124, !mcsema_real_eip !92
  %255 = trunc i64 %253 to i32, !mcsema_real_eip !92
  %256 = inttoptr i64 %254 to i32*
  store i32 %255, i32* %256, align 4, !mcsema_real_eip !92
  %257 = tail call x86_64_sysvcc i64 @exit(i64 4294967294), !mcsema_real_eip !93
  %258 = load i32* %78, align 4, !mcsema_real_eip !83
  %259 = sext i32 %258 to i64, !mcsema_real_eip !83
  %260 = load i32* %80, align 8, !mcsema_real_eip !84
  %261 = sext i32 %260 to i64, !mcsema_real_eip !84
  %262 = mul i64 %261, 11, !mcsema_real_eip !85
  %uadd362.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %262, i64 ptrtoint (%0* @data_0x3b2 to i64))
  %263 = extractvalue { i64, i1 } %uadd362.i, 0
  %264 = xor i64 %263, ptrtoint (%0* @data_0x3b2 to i64), !mcsema_real_eip !86
  %265 = xor i64 %263, %262, !mcsema_real_eip !86
  %266 = and i64 %265, 16, !mcsema_real_eip !86
  %267 = icmp ne i64 %266, 0, !mcsema_real_eip !86
  %268 = icmp slt i64 %263, 0
  %269 = icmp eq i64 %263, 0, !mcsema_real_eip !86
  %270 = xor i64 %262, xor (i64 ptrtoint (%0* @data_0x3b2 to i64), i64 -9223372036854775808), !mcsema_real_eip !86
  %271 = and i64 %264, %270, !mcsema_real_eip !86
  %272 = icmp slt i64 %271, 0
  %273 = trunc i64 %263 to i8, !mcsema_real_eip !86
  %274 = tail call i8 @llvm.ctpop.i8(i8 %273), !mcsema_real_eip !86
  %275 = and i8 %274, 1
  %276 = icmp eq i8 %275, 0
  %277 = extractvalue { i64, i1 } %uadd362.i, 1
  %278 = add i64 %263, %259, !mcsema_real_eip !87
  %279 = inttoptr i64 %278 to i8*
  store i8 88, i8* %279, align 1, !mcsema_real_eip !87
  %280 = add i64 %_local_stack_start_.i, -144
  %281 = inttoptr i64 %280 to i64*, !mcsema_real_eip !88
  store i64 -4981261766360305936, i64* %281, align 8, !mcsema_real_eip !88
  store i64 %263, i64* %RAX.i, align 8, !mcsema_real_eip !88
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !88
  store i64 %259, i64* %RCX.i, align 8, !mcsema_real_eip !88
  store i64 %262, i64* %RDX.i, align 8, !mcsema_real_eip !88
  store i64 %RSI_val.5.i, i64* %RSI.i, align 8, !mcsema_real_eip !88
  store i64 4294967294, i64* %RDI.i, align 8, !mcsema_real_eip !88
  store i64 %280, i64* %RSP.i, align 8, !mcsema_real_eip !88
  store i64 %64, i64* %RBP.i, align 8, !mcsema_real_eip !88
  store i64 add (i64 ptrtoint (%0* @data_0x3b2 to i64), i64 11), i64* %R8.i, align 8, !mcsema_real_eip !88
  store i64 11, i64* %R9.i, align 8, !mcsema_real_eip !88
  store i64 %6, i64* %R10.i, align 8, !mcsema_real_eip !88
  store i64 %7, i64* %R11.i, align 8, !mcsema_real_eip !88
  store i64 %8, i64* %R12.i, align 8, !mcsema_real_eip !88
  store i64 %9, i64* %R13.i, align 8, !mcsema_real_eip !88
  store i64 %10, i64* %R14.i, align 8, !mcsema_real_eip !88
  store i64 %11, i64* %R15.i, align 8, !mcsema_real_eip !88
  store i64 %12, i64* %RIP.i, align 8, !mcsema_real_eip !88
  store i1 %277, i1* %CF.i, align 1, !mcsema_real_eip !88
  store i1 %276, i1* %PF.i, align 1, !mcsema_real_eip !88
  store i1 %267, i1* %AF.i, align 1, !mcsema_real_eip !88
  store i1 %269, i1* %ZF.i, align 1, !mcsema_real_eip !88
  store i1 %268, i1* %SF.i, align 1, !mcsema_real_eip !88
  store i1 %272, i1* %OF.i, align 1, !mcsema_real_eip !88
  store i1 %13, i1* %DF.i, align 1, !mcsema_real_eip !88
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !88
  store i1 %16, i1* %FPU_B.i, align 1, !mcsema_real_eip !88
  store i1 %17, i1* %FPU_C3.i, align 1, !mcsema_real_eip !88
  store i3 %18, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !88
  store i1 %19, i1* %FPU_C2.i, align 1, !mcsema_real_eip !88
  store i1 %20, i1* %FPU_C1.i, align 1, !mcsema_real_eip !88
  store i1 %21, i1* %FPU_C0.i, align 1, !mcsema_real_eip !88
  store i1 %22, i1* %FPU_ES.i, align 1, !mcsema_real_eip !88
  store i1 %23, i1* %FPU_SF.i, align 1, !mcsema_real_eip !88
  store i1 %24, i1* %FPU_PE.i, align 1, !mcsema_real_eip !88
  store i1 %25, i1* %FPU_UE.i, align 1, !mcsema_real_eip !88
  store i1 %26, i1* %FPU_OE.i, align 1, !mcsema_real_eip !88
  store i1 %27, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !88
  store i1 %28, i1* %FPU_DE.i, align 1, !mcsema_real_eip !88
  store i1 %29, i1* %FPU_IE.i, align 1, !mcsema_real_eip !88
  store i1 %30, i1* %FPU_X.i, align 1, !mcsema_real_eip !88
  store i2 %31, i2* %FPU_RC.i, align 1, !mcsema_real_eip !88
  store i2 %32, i2* %FPU_PC.i, align 1, !mcsema_real_eip !88
  store i1 %33, i1* %FPU_PM.i, align 1, !mcsema_real_eip !88
  store i1 %34, i1* %FPU_UM.i, align 1, !mcsema_real_eip !88
  store i1 %35, i1* %FPU_OM.i, align 1, !mcsema_real_eip !88
  store i1 %36, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !88
  store i1 %37, i1* %FPU_DM.i, align 1, !mcsema_real_eip !88
  store i1 %38, i1* %FPU_IM.i, align 1, !mcsema_real_eip !88
  store i64 %41, i64* %40, align 4
  store i16 %42, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !88
  store i64 %43, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !88
  store i16 %44, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !88
  store i64 %45, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !88
  store i128 %46, i128* %XMM0.i, align 1, !mcsema_real_eip !88
  store i128 %47, i128* %XMM1.i, align 1, !mcsema_real_eip !88
  store i128 %48, i128* %XMM2.i, align 1, !mcsema_real_eip !88
  store i128 %49, i128* %XMM3.i, align 1, !mcsema_real_eip !88
  store i128 %50, i128* %XMM4.i, align 1, !mcsema_real_eip !88
  store i128 %51, i128* %XMM5.i, align 1, !mcsema_real_eip !88
  store i128 %52, i128* %XMM6.i, align 1, !mcsema_real_eip !88
  store i128 %53, i128* %XMM7.i, align 1, !mcsema_real_eip !88
  store i128 %54, i128* %XMM8.i, align 1, !mcsema_real_eip !88
  store i128 %55, i128* %XMM9.i, align 1, !mcsema_real_eip !88
  store i128 %56, i128* %XMM10.i, align 1, !mcsema_real_eip !88
  store i128 %57, i128* %XMM11.i, align 1, !mcsema_real_eip !88
  store i128 %58, i128* %XMM12.i, align 1, !mcsema_real_eip !88
  store i128 %59, i128* %XMM13.i, align 1, !mcsema_real_eip !88
  store i128 %60, i128* %XMM14.i, align 1, !mcsema_real_eip !88
  store i128 %61, i128* %XMM15.i, align 1, !mcsema_real_eip !88
  store i64 %62, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !88
  store i64 %63, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !88
  call void @llvm.trap()
  unreachable

block_0x2fe.i:                                    ; preds = %block_0x2c5.i
  %282 = add i32 %209, -11
  %283 = icmp slt i32 %282, 0
  %284 = sub i32 10, %209
  %285 = and i32 %284, %209
  %286 = icmp slt i32 %285, 0
  %287 = xor i1 %283, %286
  br i1 %287, label %block_0x317.i, label %block_0x30b.i, !mcsema_real_eip !94

sub_c0.exit:                                      ; preds = %driverBlockRaw
  %288 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 85)), !mcsema_real_eip !95
  %289 = load i32* %69, align 4, !mcsema_real_eip !96
  %290 = zext i32 %289 to i64, !mcsema_real_eip !96
  %291 = add i64 %_local_stack_start_.i, -132, !mcsema_real_eip !97
  %292 = trunc i64 %288 to i32, !mcsema_real_eip !97
  %293 = inttoptr i64 %291 to i32*
  store i32 %292, i32* %293, align 4, !mcsema_real_eip !97
  %uadd365.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %66, i64 128)
  %294 = extractvalue { i64, i1 } %uadd365.i, 0
  %295 = xor i64 %294, %66, !mcsema_real_eip !98
  %296 = and i64 %295, 16, !mcsema_real_eip !98
  %297 = icmp ne i64 %296, 0, !mcsema_real_eip !98
  %298 = icmp slt i64 %294, 0
  %299 = icmp eq i64 %294, 0, !mcsema_real_eip !98
  %300 = add i64 %_local_stack_start_.i, 9223372036854775672
  %301 = and i64 %295, %300, !mcsema_real_eip !98
  %302 = icmp slt i64 %301, 0
  %303 = trunc i64 %294 to i8, !mcsema_real_eip !98
  %304 = tail call i8 @llvm.ctpop.i8(i8 %303), !mcsema_real_eip !98
  %305 = and i8 %304, 1
  %306 = icmp eq i8 %305, 0
  %307 = extractvalue { i64, i1 } %uadd365.i, 1
  %308 = inttoptr i64 %294 to i64*, !mcsema_real_eip !99
  %309 = load i64* %308, align 8, !mcsema_real_eip !99
  %310 = add i64 %294, 16, !mcsema_real_eip !100
  store i64 %290, i64* %RAX.i, align 8, !mcsema_real_eip !100
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !100
  store i64 %290, i64* %RCX.i, align 8, !mcsema_real_eip !100
  store i64 28, i64* %RDX.i, align 8, !mcsema_real_eip !100
  store i64 %67, i64* %RSI.i, align 8, !mcsema_real_eip !100
  store i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 85), i64* %RDI.i, align 8, !mcsema_real_eip !100
  store i64 %310, i64* %RSP.i, align 8, !mcsema_real_eip !100
  store i64 %309, i64* %RBP.i, align 8, !mcsema_real_eip !100
  store i64 add (i64 ptrtoint (%0* @data_0x3b2 to i64), i64 11), i64* %R8.i, align 8, !mcsema_real_eip !100
  store i64 11, i64* %R9.i, align 8, !mcsema_real_eip !100
  store i64 %6, i64* %R10.i, align 8, !mcsema_real_eip !100
  store i64 %7, i64* %R11.i, align 8, !mcsema_real_eip !100
  store i64 %8, i64* %R12.i, align 8, !mcsema_real_eip !100
  store i64 %9, i64* %R13.i, align 8, !mcsema_real_eip !100
  store i64 %10, i64* %R14.i, align 8, !mcsema_real_eip !100
  store i64 %11, i64* %R15.i, align 8, !mcsema_real_eip !100
  store i64 %12, i64* %RIP.i, align 8, !mcsema_real_eip !100
  store i1 %307, i1* %CF.i, align 1, !mcsema_real_eip !100
  store i1 %306, i1* %PF.i, align 1, !mcsema_real_eip !100
  store i1 %297, i1* %AF.i, align 1, !mcsema_real_eip !100
  store i1 %299, i1* %ZF.i, align 1, !mcsema_real_eip !100
  store i1 %298, i1* %SF.i, align 1, !mcsema_real_eip !100
  store i1 %302, i1* %OF.i, align 1, !mcsema_real_eip !100
  store i1 %13, i1* %DF.i, align 1, !mcsema_real_eip !100
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !100
  store i1 %16, i1* %FPU_B.i, align 1, !mcsema_real_eip !100
  store i1 %17, i1* %FPU_C3.i, align 1, !mcsema_real_eip !100
  store i3 %18, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !100
  store i1 %19, i1* %FPU_C2.i, align 1, !mcsema_real_eip !100
  store i1 %20, i1* %FPU_C1.i, align 1, !mcsema_real_eip !100
  store i1 %21, i1* %FPU_C0.i, align 1, !mcsema_real_eip !100
  store i1 %22, i1* %FPU_ES.i, align 1, !mcsema_real_eip !100
  store i1 %23, i1* %FPU_SF.i, align 1, !mcsema_real_eip !100
  store i1 %24, i1* %FPU_PE.i, align 1, !mcsema_real_eip !100
  store i1 %25, i1* %FPU_UE.i, align 1, !mcsema_real_eip !100
  store i1 %26, i1* %FPU_OE.i, align 1, !mcsema_real_eip !100
  store i1 %27, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !100
  store i1 %28, i1* %FPU_DE.i, align 1, !mcsema_real_eip !100
  store i1 %29, i1* %FPU_IE.i, align 1, !mcsema_real_eip !100
  store i1 %30, i1* %FPU_X.i, align 1, !mcsema_real_eip !100
  store i2 %31, i2* %FPU_RC.i, align 1, !mcsema_real_eip !100
  store i2 %32, i2* %FPU_PC.i, align 1, !mcsema_real_eip !100
  store i1 %33, i1* %FPU_PM.i, align 1, !mcsema_real_eip !100
  store i1 %34, i1* %FPU_UM.i, align 1, !mcsema_real_eip !100
  store i1 %35, i1* %FPU_OM.i, align 1, !mcsema_real_eip !100
  store i1 %36, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !100
  store i1 %37, i1* %FPU_DM.i, align 1, !mcsema_real_eip !100
  store i1 %38, i1* %FPU_IM.i, align 1, !mcsema_real_eip !100
  store i64 %41, i64* %40, align 4
  store i16 %42, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !100
  store i64 %43, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !100
  store i16 %44, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !100
  store i64 %45, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !100
  store i128 %46, i128* %XMM0.i, align 1, !mcsema_real_eip !100
  store i128 %47, i128* %XMM1.i, align 1, !mcsema_real_eip !100
  store i128 %48, i128* %XMM2.i, align 1, !mcsema_real_eip !100
  store i128 %49, i128* %XMM3.i, align 1, !mcsema_real_eip !100
  store i128 %50, i128* %XMM4.i, align 1, !mcsema_real_eip !100
  store i128 %51, i128* %XMM5.i, align 1, !mcsema_real_eip !100
  store i128 %52, i128* %XMM6.i, align 1, !mcsema_real_eip !100
  store i128 %53, i128* %XMM7.i, align 1, !mcsema_real_eip !100
  store i128 %54, i128* %XMM8.i, align 1, !mcsema_real_eip !100
  store i128 %55, i128* %XMM9.i, align 1, !mcsema_real_eip !100
  store i128 %56, i128* %XMM10.i, align 1, !mcsema_real_eip !100
  store i128 %57, i128* %XMM11.i, align 1, !mcsema_real_eip !100
  store i128 %58, i128* %XMM12.i, align 1, !mcsema_real_eip !100
  store i128 %59, i128* %XMM13.i, align 1, !mcsema_real_eip !100
  store i128 %60, i128* %XMM14.i, align 1, !mcsema_real_eip !100
  store i128 %61, i128* %XMM15.i, align 1, !mcsema_real_eip !100
  store i64 %62, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !100
  store i64 %63, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !100
  call void @llvm.lifetime.end(i64 1152, i8* %1)
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #0

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 192, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 232, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!4 = metadata !{i64 239, [21 x i8] c"\09movl\09%edi, -8(%rbp)\00"}
!5 = metadata !{i64 242, [22 x i8] c"\09movq\09%rsi, -16(%rbp)\00"}
!6 = metadata !{i64 246, [20 x i8] c"\09movl\09$0, -36(%rbp)\00"}
!7 = metadata !{i64 253, [20 x i8] c"\09movl\09$1, -20(%rbp)\00"}
!8 = metadata !{i64 260, [20 x i8] c"\09movl\09$1, -24(%rbp)\00"}
!9 = metadata !{i64 267, [24 x i8] c"\09movslq\09-20(%rbp), %rsi\00"}
!10 = metadata !{i64 285, [22 x i8] c"\09movb\09$88, (%r8,%rsi)\00"}
!11 = metadata !{i64 295, [9 x i8] c"\09callq\090\00"}
!12 = metadata !{i64 300, [22 x i8] c"\09movq\09%rax, -72(%rbp)\00"}
!13 = metadata !{i64 304, [21 x i8] c"\09cmpl\09$28, -36(%rbp)\00"}
!14 = metadata !{i64 311, [9 x i8] c"\09jge\09595\00"}
!15 = metadata !{i64 317, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!16 = metadata !{i64 320, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
!17 = metadata !{i64 323, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!18 = metadata !{i64 326, [22 x i8] c"\09movl\09%eax, -32(%rbp)\00"}
!19 = metadata !{i64 329, [24 x i8] c"\09movslq\09-36(%rbp), %rcx\00"}
!20 = metadata !{i64 333, [29 x i8] c"\09movsbl\09-64(%rbp,%rcx), %eax\00"}
!21 = metadata !{i64 340, [17 x i8] c"\09subl\09$114, %edx\00"}
!22 = metadata !{i64 343, [22 x i8] c"\09movl\09%eax, -76(%rbp)\00"}
!23 = metadata !{i64 346, [22 x i8] c"\09movl\09%edx, -80(%rbp)\00"}
!24 = metadata !{i64 400, [22 x i8] c"\09movl\09-76(%rbp), %eax\00"}
!25 = metadata !{i64 349, [7 x i8] c"\09jg\0945\00"}
!26 = metadata !{i64 403, [17 x i8] c"\09subl\09$115, %eax\00"}
!27 = metadata !{i64 406, [22 x i8] c"\09movl\09%eax, -92(%rbp)\00"}
!28 = metadata !{i64 409, [7 x i8] c"\09je\0941\00"}
!29 = metadata !{i64 363, [16 x i8] c"\09subl\09$97, %eax\00"}
!30 = metadata !{i64 366, [22 x i8] c"\09movl\09%eax, -84(%rbp)\00"}
!31 = metadata !{i64 369, [7 x i8] c"\09je\0997\00"}
!32 = metadata !{i64 456, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!33 = metadata !{i64 464, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!34 = metadata !{i64 467, [8 x i8] c"\09jmp\0982\00"}
!35 = metadata !{i64 472, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!36 = metadata !{i64 480, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!37 = metadata !{i64 483, [8 x i8] c"\09jmp\0966\00"}
!38 = metadata !{i64 420, [22 x i8] c"\09movl\09-76(%rbp), %eax\00"}
!39 = metadata !{i64 423, [17 x i8] c"\09subl\09$119, %eax\00"}
!40 = metadata !{i64 426, [22 x i8] c"\09movl\09%eax, -96(%rbp)\00"}
!41 = metadata !{i64 429, [8 x i8] c"\09jne\0969\00"}
!42 = metadata !{i64 564, [24 x i8] c"\09movslq\09-20(%rbp), %rcx\00"}
!43 = metadata !{i64 568, [24 x i8] c"\09movslq\09-24(%rbp), %rdx\00"}
!44 = metadata !{i64 572, [18 x i8] c"\09imulq\09 $11, %rdx\00"}
!45 = metadata !{i64 582, [26 x i8] c"\09movsbl\09(%rax,%rcx), %esi\00"}
!46 = metadata !{i64 592, [8 x i8] c"\09jne\0954\00"}
!47 = metadata !{i64 380, [22 x i8] c"\09movl\09-76(%rbp), %eax\00"}
!48 = metadata !{i64 383, [17 x i8] c"\09subl\09$100, %eax\00"}
!49 = metadata !{i64 386, [22 x i8] c"\09movl\09%eax, -88(%rbp)\00"}
!50 = metadata !{i64 389, [7 x i8] c"\09je\0993\00"}
!51 = metadata !{i64 516, [9 x i8] c"\09callq\090\00"}
!52 = metadata !{i64 531, [23 x i8] c"\09movl\09%eax, -100(%rbp)\00"}
!53 = metadata !{i64 536, [9 x i8] c"\09callq\090\00"}
!54 = metadata !{i64 546, [23 x i8] c"\09movl\09%eax, -104(%rbp)\00"}
!55 = metadata !{i64 549, [9 x i8] c"\09callq\090\00"}
!56 = metadata !{i64 662, [24 x i8] c"\09movslq\09-20(%rbp), %rcx\00"}
!57 = metadata !{i64 666, [24 x i8] c"\09movslq\09-24(%rbp), %rdx\00"}
!58 = metadata !{i64 670, [18 x i8] c"\09imulq\09 $11, %rdx\00"}
!59 = metadata !{i64 680, [26 x i8] c"\09movsbl\09(%rax,%rcx), %esi\00"}
!60 = metadata !{i64 690, [7 x i8] c"\09je\0995\00"}
!61 = metadata !{i64 610, [9 x i8] c"\09callq\090\00"}
!62 = metadata !{i64 629, [23 x i8] c"\09movl\09%eax, -108(%rbp)\00"}
!63 = metadata !{i64 634, [9 x i8] c"\09callq\090\00"}
!64 = metadata !{i64 644, [23 x i8] c"\09movl\09%eax, -112(%rbp)\00"}
!65 = metadata !{i64 647, [9 x i8] c"\09callq\090\00"}
!66 = metadata !{i64 488, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!67 = metadata !{i64 496, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!68 = metadata !{i64 499, [8 x i8] c"\09jmp\0950\00"}
!69 = metadata !{i64 440, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!70 = metadata !{i64 448, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!71 = metadata !{i64 451, [8 x i8] c"\09jmp\0998\00"}
!72 = metadata !{i64 791, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!73 = metadata !{i64 797, [8 x i8] c"\09jne\0942\00"}
!74 = metadata !{i64 703, [8 x i8] c"\09jne\0970\00"}
!75 = metadata !{i64 779, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!76 = metadata !{i64 782, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!77 = metadata !{i64 785, [22 x i8] c"\09movl\09-32(%rbp), %eax\00"}
!78 = metadata !{i64 788, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!79 = metadata !{i64 794, [22 x i8] c"\09cmpl\09-20(%rbp), %eax\00"}
!80 = metadata !{i64 719, [24 x i8] c"\09movslq\09-20(%rbp), %rcx\00"}
!81 = metadata !{i64 737, [26 x i8] c"\09movsbl\09(%rax,%rcx), %esi\00"}
!82 = metadata !{i64 747, [8 x i8] c"\09jne\0926\00"}
!83 = metadata !{i64 855, [24 x i8] c"\09movslq\09-20(%rbp), %rcx\00"}
!84 = metadata !{i64 859, [24 x i8] c"\09movslq\09-24(%rbp), %rdx\00"}
!85 = metadata !{i64 863, [18 x i8] c"\09imulq\09 $11, %rdx\00"}
!86 = metadata !{i64 870, [17 x i8] c"\09addq\09%rdx, %rax\00"}
!87 = metadata !{i64 873, [23 x i8] c"\09movb\09$88, (%rax,%rcx)\00"}
!88 = metadata !{i64 877, [12 x i8] c"\09callq\09-882\00"}
!89 = metadata !{i64 803, [22 x i8] c"\09movl\09-32(%rbp), %eax\00"}
!90 = metadata !{i64 809, [8 x i8] c"\09jne\0930\00"}
!91 = metadata !{i64 827, [9 x i8] c"\09callq\090\00"}
!92 = metadata !{i64 837, [23 x i8] c"\09movl\09%eax, -116(%rbp)\00"}
!93 = metadata !{i64 840, [9 x i8] c"\09callq\090\00"}
!94 = metadata !{i64 773, [7 x i8] c"\09jl\0912\00"}
!95 = metadata !{i64 924, [9 x i8] c"\09callq\090\00"}
!96 = metadata !{i64 929, [21 x i8] c"\09movl\09-4(%rbp), %ecx\00"}
!97 = metadata !{i64 932, [23 x i8] c"\09movl\09%eax, -124(%rbp)\00"}
!98 = metadata !{i64 937, [17 x i8] c"\09addq\09$128, %rsp\00"}
!99 = metadata !{i64 944, [11 x i8] c"\09popq\09%rbp\00"}
!100 = metadata !{i64 945, [6 x i8] c"\09retq\00"}
