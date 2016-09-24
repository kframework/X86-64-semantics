; ModuleID = 'Output/test_23.clang.trans.opt.bc'
source_filename = "Output/test_23.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)* }>
%1 = type <{ [77 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x2a1 = internal constant %0 <{ void (%struct.regs*)* @sub_172, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_180, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_164, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_156 }>, align 64
@data_0x359 = internal global %1 <{ [77 x i8] c"+-+---+---+| |     |#|| | --+ | || |   | | || +-- | | ||     |   |+-----+---+" }>, align 64

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_172(%struct.regs*) #0 {
entry:
  %_local_stack_alloc_275 = alloca [84 x i64], align 8
  %_local_stack_start_ = ptrtoint [84 x i64]* %_local_stack_alloc_275 to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 84
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %1 = load i64, i64* %RBX, align 8, !mcsema_real_eip !2
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %2 = load i64, i64* %RDI, align 8, !mcsema_real_eip !2
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %3 = load i64, i64* %RBP, align 8, !mcsema_real_eip !2
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %4 = load i64, i64* %R8, align 8, !mcsema_real_eip !2
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %5 = load i64, i64* %R9, align 8, !mcsema_real_eip !2
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %6 = load i64, i64* %R10, align 8, !mcsema_real_eip !2
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %7 = load i64, i64* %R11, align 8, !mcsema_real_eip !2
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %8 = load i64, i64* %R12, align 8, !mcsema_real_eip !2
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %9 = load i64, i64* %R13, align 8, !mcsema_real_eip !2
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %10 = load i64, i64* %R14, align 8, !mcsema_real_eip !2
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %11 = load i64, i64* %R15, align 8, !mcsema_real_eip !2
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %12 = load i64, i64* %RIP, align 8, !mcsema_real_eip !2
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %13 = load i1, i1* %DF, align 1, !mcsema_real_eip !2
  %14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %15 = bitcast x86_fp80* %14 to i8*, !mcsema_real_eip !2
  %16 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %16, i8* %15, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %17 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !2
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %18 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !2
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %19 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !2
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !2
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !2
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !2
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !2
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !2
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !2
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !2
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !2
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !2
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !2
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !2
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !2
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %32 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !2
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %33 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !2
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !2
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %35 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !2
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %36 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !2
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %37 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !2
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %38 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !2
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %39 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !2
  %40 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %41 = bitcast i8* %40 to i64*
  %42 = load i64, i64* %41, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %43 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %44 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %45 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %46 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !2
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %47 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !2
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %48 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !2
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %49 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !2
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !2
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !2
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !2
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !2
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !2
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !2
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !2
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !2
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !2
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !2
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !2
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !2
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !2
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %63 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !2
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %64 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !2
  %65 = add i64 %3, -20, !mcsema_real_eip !2
  %66 = inttoptr i64 %65 to i32*
  %67 = load i32, i32* %66, align 4, !mcsema_real_eip !2
  %68 = add i32 %67, -1
  store i32 %68, i32* %66, align 4, !mcsema_real_eip !3
  %69 = sext i32 %68 to i64, !mcsema_real_eip !4
  %70 = add i64 %3, -24, !mcsema_real_eip !5
  %71 = inttoptr i64 %70 to i32*
  %72 = load i32, i32* %71, align 4, !mcsema_real_eip !5
  %73 = sext i32 %72 to i64, !mcsema_real_eip !5
  %74 = mul nsw i64 %73, 11, !mcsema_real_eip !6
  %75 = add i64 %69, ptrtoint (%1* @data_0x359 to i64)
  %76 = add i64 %75, %74, !mcsema_real_eip !7
  %77 = inttoptr i64 %76 to i8*
  %78 = load i8, i8* %77, align 1, !mcsema_real_eip !7
  %79 = sext i8 %78 to i64
  %80 = and i64 %79, 4294967295
  switch i8 %78, label %block_0x1f2 [
    i8 35, label %block_0x298
    i8 32, label %block_0x242
  ]

block_0x298:                                      ; preds = %block_0x24e, %entry, %block_0x11e
  %RSI_val.0 = phi i64 [ %126, %block_0x11e ], [ %80, %entry ], [ %80, %block_0x24e ]
  %RDX_val.0 = phi i64 [ %118, %block_0x11e ], [ %74, %entry ], [ %74, %block_0x24e ]
  %RCX_val.0 = phi i64 [ %174, %block_0x11e ], [ %69, %entry ], [ %69, %block_0x24e ]
  %.sink = phi i32 [ 1, %block_0x11e ], [ 0, %entry ], [ 2, %block_0x24e ]
  %81 = add i64 %3, -4
  %82 = inttoptr i64 %81 to i32*
  store i32 %.sink, i32* %82, align 4
  %83 = zext i32 %.sink to i64, !mcsema_real_eip !8
  %uadd348 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_local_stack_end_, i64 96)
  %84 = extractvalue { i64, i1 } %uadd348, 0
  %85 = xor i64 %84, %_local_stack_end_, !mcsema_real_eip !9
  %86 = and i64 %85, 16, !mcsema_real_eip !9
  %87 = icmp ne i64 %86, 0, !mcsema_real_eip !9
  %88 = icmp slt i64 %84, 0
  %89 = add i64 %_local_stack_start_, -9223372036854775724
  %90 = and i64 %85, %89, !mcsema_real_eip !9
  %91 = icmp slt i64 %90, 0
  %92 = trunc i64 %84 to i8, !mcsema_real_eip !9
  %93 = tail call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !9
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  %96 = extractvalue { i64, i1 } %uadd348, 1
  %97 = inttoptr i64 %84 to i64*, !mcsema_real_eip !10
  %98 = load i64, i64* %97, align 8, !mcsema_real_eip !10
  %99 = add i64 %84, 16, !mcsema_real_eip !11
  store i64 %83, i64* %RAX, align 8, !mcsema_real_eip !11
  store i64 %1, i64* %RBX, align 8, !mcsema_real_eip !11
  store i64 %RCX_val.0, i64* %RCX, align 8, !mcsema_real_eip !11
  store i64 %RDX_val.0, i64* %RDX, align 8, !mcsema_real_eip !11
  store i64 %RSI_val.0, i64* %RSI, align 8, !mcsema_real_eip !11
  store i64 %2, i64* %RDI, align 8, !mcsema_real_eip !11
  store i64 %99, i64* %RSP, align 8, !mcsema_real_eip !11
  store i64 %98, i64* %RBP, align 8, !mcsema_real_eip !11
  store i64 %4, i64* %R8, align 8, !mcsema_real_eip !11
  store i64 %5, i64* %R9, align 8, !mcsema_real_eip !11
  store i64 %6, i64* %R10, align 8, !mcsema_real_eip !11
  store i64 %7, i64* %R11, align 8, !mcsema_real_eip !11
  store i64 %8, i64* %R12, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R13, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R14, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %R15, align 8, !mcsema_real_eip !11
  store i64 %12, i64* %RIP, align 8, !mcsema_real_eip !11
  store i1 %96, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 %95, i1* %PF, align 1, !mcsema_real_eip !11
  store i1 %87, i1* %AF, align 1, !mcsema_real_eip !11
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 %88, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 %91, i1* %OF, align 1, !mcsema_real_eip !11
  store i1 %13, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* nonnull %16, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %17, i1* %FPU_B, align 1, !mcsema_real_eip !11
  store i1 %18, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  store i3 %19, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  store i1 %20, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  store i1 %21, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  store i1 %22, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  store i1 %23, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_X, align 1, !mcsema_real_eip !11
  store i2 %32, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  store i2 %33, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  store i1 %34, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  store i1 %35, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  store i1 %36, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  store i1 %37, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  store i64 %42, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  store i64 %44, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  store i16 %45, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  store i64 %46, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  store i128 %47, i128* %XMM0, align 1, !mcsema_real_eip !11
  store i128 %48, i128* %XMM1, align 1, !mcsema_real_eip !11
  store i128 %49, i128* %XMM2, align 1, !mcsema_real_eip !11
  store i128 %50, i128* %XMM3, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM4, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM5, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM6, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM7, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM8, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM9, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM10, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM11, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM12, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM13, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM14, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM15, align 1, !mcsema_real_eip !11
  store i64 %63, i64* %STACK_BASE, align 1, !mcsema_real_eip !11
  store i64 %64, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11

block_0x242:                                      ; preds = %entry, %block_0x22c
  %100 = add i64 %3, -28, !mcsema_real_eip !12
  %101 = inttoptr i64 %100 to i32*
  %102 = load i32, i32* %101, align 4, !mcsema_real_eip !12
  %103 = icmp eq i32 %102, %68
  br i1 %103, label %block_0x242.block_0x24e_crit_edge, label %block_0x266, !mcsema_real_eip !13

block_0x242.block_0x24e_crit_edge:                ; preds = %block_0x242
  %.pre = add i64 %3, -32, !mcsema_real_eip !14
  %.pre277 = inttoptr i64 %.pre to i32*
  br label %block_0x24e

block_0x1f2:                                      ; preds = %entry
  %notlhs = icmp ne i32 %72, 2
  %notrhs = icmp ne i8 %78, 124
  %or.cond.not = or i1 %notlhs, %notrhs
  %104 = icmp slt i32 %68, 1
  %or.cond276 = or i1 %104, %or.cond.not
  br i1 %or.cond276, label %block_0x236, label %block_0x22c, !mcsema_real_eip !15

block_0x236:                                      ; preds = %block_0x1f2, %block_0x22c
  %105 = add i64 %3, -28, !mcsema_real_eip !16
  %106 = inttoptr i64 %105 to i32*
  %107 = load i32, i32* %106, align 4, !mcsema_real_eip !16
  store i32 %107, i32* %66, align 4, !mcsema_real_eip !17
  %108 = add i64 %3, -32, !mcsema_real_eip !18
  %109 = inttoptr i64 %108 to i32*
  %110 = load i32, i32* %109, align 4, !mcsema_real_eip !18
  store i32 %110, i32* %71, align 4, !mcsema_real_eip !19
  %111 = load i32, i32* %106, align 4, !mcsema_real_eip !12
  %112 = load i32, i32* %66, align 4, !mcsema_real_eip !20
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %block_0x24e, label %block_0x266, !mcsema_real_eip !13

block_0x266:                                      ; preds = %block_0x24e, %block_0x236, %block_0x242
  %114 = phi i32 [ %133, %block_0x24e ], [ %110, %block_0x236 ], [ %72, %block_0x242 ]
  %115 = phi i32 [ %132, %block_0x24e ], [ %112, %block_0x236 ], [ %68, %block_0x242 ]
  %116 = sext i32 %115 to i64, !mcsema_real_eip !21
  %117 = sext i32 %114 to i64, !mcsema_real_eip !22
  %118 = mul nsw i64 %117, 11, !mcsema_real_eip !23
  %119 = add i64 %116, ptrtoint (%1* @data_0x359 to i64)
  %120 = add i64 %119, %118, !mcsema_real_eip !24
  %121 = inttoptr i64 %120 to i8*
  store i8 88, i8* %121, align 1, !mcsema_real_eip !24
  %122 = add i64 %3, -36, !mcsema_real_eip !25
  %123 = inttoptr i64 %122 to i32*
  %124 = load i32, i32* %123, align 4, !mcsema_real_eip !25
  %125 = add i32 %124, 1
  %126 = zext i32 %125 to i64, !mcsema_real_eip !26
  store i32 %125, i32* %123, align 4, !mcsema_real_eip !27
  %127 = add i32 %124, -27
  %128 = icmp slt i32 %127, 0
  %129 = sub i32 26, %124
  %130 = and i32 %125, %129
  %131 = icmp slt i32 %130, 0
  %tmp = xor i1 %128, %131
  br i1 %tmp, label %block_0x11e, label %block_0x291, !mcsema_real_eip !28

block_0x24e:                                      ; preds = %block_0x242.block_0x24e_crit_edge, %block_0x236
  %.pre-phi278 = phi i32* [ %.pre277, %block_0x242.block_0x24e_crit_edge ], [ %109, %block_0x236 ]
  %132 = phi i32 [ %68, %block_0x242.block_0x24e_crit_edge ], [ %111, %block_0x236 ]
  %133 = phi i32 [ %72, %block_0x242.block_0x24e_crit_edge ], [ %110, %block_0x236 ]
  %134 = load i32, i32* %.pre-phi278, align 4, !mcsema_real_eip !14
  %135 = icmp eq i32 %134, %133
  br i1 %135, label %block_0x298, label %block_0x266, !mcsema_real_eip !29

block_0x22c:                                      ; preds = %block_0x1f2
  %136 = add i32 %67, -12
  %137 = icmp slt i32 %136, 0
  %138 = sub i32 11, %67
  %139 = and i32 %68, %138
  %140 = icmp slt i32 %139, 0
  %141 = xor i1 %137, %140
  br i1 %141, label %block_0x242, label %block_0x236, !mcsema_real_eip !30

block_0x291:                                      ; preds = %block_0x266
  %142 = add i64 %3, -4, !mcsema_real_eip !31
  %143 = inttoptr i64 %142 to i32*
  store i32 1, i32* %143, align 4, !mcsema_real_eip !31
  %uadd357 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_local_stack_end_, i64 96)
  %144 = extractvalue { i64, i1 } %uadd357, 0
  %145 = xor i64 %144, %_local_stack_end_, !mcsema_real_eip !9
  %146 = and i64 %145, 16, !mcsema_real_eip !9
  %147 = icmp ne i64 %146, 0, !mcsema_real_eip !9
  %148 = icmp slt i64 %144, 0
  %149 = add i64 %_local_stack_start_, -9223372036854775724
  %150 = and i64 %145, %149, !mcsema_real_eip !9
  %151 = icmp slt i64 %150, 0
  %152 = trunc i64 %144 to i8, !mcsema_real_eip !9
  %153 = tail call i8 @llvm.ctpop.i8(i8 %152), !mcsema_real_eip !9
  %154 = and i8 %153, 1
  %155 = icmp eq i8 %154, 0
  %156 = extractvalue { i64, i1 } %uadd357, 1
  %157 = inttoptr i64 %144 to i64*, !mcsema_real_eip !10
  %158 = load i64, i64* %157, align 8, !mcsema_real_eip !10
  %159 = add i64 %144, 16, !mcsema_real_eip !11
  store i64 1, i64* %RAX, align 8, !mcsema_real_eip !11
  store i64 %1, i64* %RBX, align 8, !mcsema_real_eip !11
  store i64 %116, i64* %RCX, align 8, !mcsema_real_eip !11
  store i64 %118, i64* %RDX, align 8, !mcsema_real_eip !11
  store i64 %126, i64* %RSI, align 8, !mcsema_real_eip !11
  store i64 %2, i64* %RDI, align 8, !mcsema_real_eip !11
  store i64 %159, i64* %RSP, align 8, !mcsema_real_eip !11
  store i64 %158, i64* %RBP, align 8, !mcsema_real_eip !11
  store i64 %4, i64* %R8, align 8, !mcsema_real_eip !11
  store i64 %5, i64* %R9, align 8, !mcsema_real_eip !11
  store i64 %6, i64* %R10, align 8, !mcsema_real_eip !11
  store i64 %7, i64* %R11, align 8, !mcsema_real_eip !11
  store i64 %8, i64* %R12, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R13, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R14, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %R15, align 8, !mcsema_real_eip !11
  store i64 %12, i64* %RIP, align 8, !mcsema_real_eip !11
  store i1 %156, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 %155, i1* %PF, align 1, !mcsema_real_eip !11
  store i1 %147, i1* %AF, align 1, !mcsema_real_eip !11
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 %148, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 %151, i1* %OF, align 1, !mcsema_real_eip !11
  store i1 %13, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* nonnull %16, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %17, i1* %FPU_B, align 1, !mcsema_real_eip !11
  store i1 %18, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  store i3 %19, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  store i1 %20, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  store i1 %21, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  store i1 %22, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  store i1 %23, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_X, align 1, !mcsema_real_eip !11
  store i2 %32, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  store i2 %33, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  store i1 %34, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  store i1 %35, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  store i1 %36, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  store i1 %37, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  store i64 %42, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  store i64 %44, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  store i16 %45, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  store i64 %46, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  store i128 %47, i128* %XMM0, align 1, !mcsema_real_eip !11
  store i128 %48, i128* %XMM1, align 1, !mcsema_real_eip !11
  store i128 %49, i128* %XMM2, align 1, !mcsema_real_eip !11
  store i128 %50, i128* %XMM3, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM4, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM5, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM6, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM7, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM8, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM9, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM10, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM11, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM12, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM13, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM14, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM15, align 1, !mcsema_real_eip !11
  store i64 %63, i64* %STACK_BASE, align 1, !mcsema_real_eip !11
  store i64 %64, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11

block_0x11e:                                      ; preds = %block_0x266
  %160 = load i32, i32* %66, align 4, !mcsema_real_eip !32
  %161 = add i64 %3, -28, !mcsema_real_eip !33
  %162 = inttoptr i64 %161 to i32*
  store i32 %160, i32* %162, align 4, !mcsema_real_eip !33
  %163 = load i32, i32* %71, align 4, !mcsema_real_eip !34
  %164 = add i64 %3, -32, !mcsema_real_eip !35
  %165 = inttoptr i64 %164 to i32*
  store i32 %163, i32* %165, align 4, !mcsema_real_eip !35
  %166 = load i32, i32* %123, align 4, !mcsema_real_eip !36
  %167 = sext i32 %166 to i64, !mcsema_real_eip !36
  %168 = add i64 %3, -64, !mcsema_real_eip !37
  %169 = add i64 %168, %167, !mcsema_real_eip !37
  %170 = inttoptr i64 %169 to i8*
  %171 = load i8, i8* %170, align 1, !mcsema_real_eip !37
  %172 = sext i8 %171 to i32, !mcsema_real_eip !37
  %173 = add nsw i32 %172, -97
  %174 = zext i32 %173 to i64, !mcsema_real_eip !38
  %175 = add nsw i32 %172, -119
  %176 = xor i32 %175, %173, !mcsema_real_eip !39
  %177 = icmp eq i32 %175, 0, !mcsema_real_eip !39
  %178 = icmp ult i32 %173, 22, !mcsema_real_eip !39
  %179 = add i64 %3, -80, !mcsema_real_eip !40
  %180 = inttoptr i64 %179 to i64*, !mcsema_real_eip !40
  store i64 %174, i64* %180, align 8, !mcsema_real_eip !40
  %181 = add i64 %3, -84, !mcsema_real_eip !41
  %182 = inttoptr i64 %181 to i32*
  store i32 %175, i32* %182, align 4, !mcsema_real_eip !41
  %.demorgan = or i1 %178, %177
  br i1 %.demorgan, label %block_0x148, label %block_0x298, !mcsema_real_eip !42

block_0x148:                                      ; preds = %block_0x11e
  %183 = and i32 %176, %173, !mcsema_real_eip !39
  %184 = icmp slt i32 %183, 0
  %185 = icmp slt i8 %171, 119
  %186 = trunc i32 %175 to i8, !mcsema_real_eip !39
  %187 = tail call i8 @llvm.ctpop.i8(i8 %186), !mcsema_real_eip !39
  %188 = and i8 %187, 1
  %189 = icmp eq i8 %188, 0
  %190 = and i32 %176, 16
  %191 = icmp eq i32 %190, 0
  %192 = load i64, i64* %180, align 8, !mcsema_real_eip !43
  %193 = shl i64 %192, 3
  %194 = add i64 %193, ptrtoint (%0* @data_0x2a1 to i64), !mcsema_real_eip !44
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !44
  %196 = load i64, i64* %195, align 8, !mcsema_real_eip !44
  store i64 %192, i64* %RAX, align 8, !mcsema_real_eip !45
  store i64 %1, i64* %RBX, align 8, !mcsema_real_eip !45
  store i64 %196, i64* %RCX, align 8, !mcsema_real_eip !45
  store i64 %118, i64* %RDX, align 8, !mcsema_real_eip !45
  store i64 %126, i64* %RSI, align 8, !mcsema_real_eip !45
  store i64 %2, i64* %RDI, align 8, !mcsema_real_eip !45
  store i64 %_local_stack_end_, i64* %RSP, align 8, !mcsema_real_eip !45
  store i64 %3, i64* %RBP, align 8, !mcsema_real_eip !45
  store i64 %4, i64* %R8, align 8, !mcsema_real_eip !45
  store i64 %5, i64* %R9, align 8, !mcsema_real_eip !45
  store i64 %6, i64* %R10, align 8, !mcsema_real_eip !45
  store i64 %7, i64* %R11, align 8, !mcsema_real_eip !45
  store i64 %8, i64* %R12, align 8, !mcsema_real_eip !45
  store i64 %9, i64* %R13, align 8, !mcsema_real_eip !45
  store i64 %10, i64* %R14, align 8, !mcsema_real_eip !45
  store i64 %11, i64* %R15, align 8, !mcsema_real_eip !45
  store i64 %12, i64* %RIP, align 8, !mcsema_real_eip !45
  store i1 %178, i1* %CF, align 1, !mcsema_real_eip !45
  store i1 %189, i1* %PF, align 1, !mcsema_real_eip !45
  store i1 %191, i1* %AF, align 1, !mcsema_real_eip !45
  store i1 %177, i1* %ZF, align 1, !mcsema_real_eip !45
  store i1 %185, i1* %SF, align 1, !mcsema_real_eip !45
  store i1 %184, i1* %OF, align 1, !mcsema_real_eip !45
  store i1 %13, i1* %DF, align 1, !mcsema_real_eip !45
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* nonnull %16, i32 128, i32 8, i1 false), !mcsema_real_eip !45
  store i1 %17, i1* %FPU_B, align 1, !mcsema_real_eip !45
  store i1 %18, i1* %FPU_C3, align 1, !mcsema_real_eip !45
  store i3 %19, i3* %FPU_TOP, align 1, !mcsema_real_eip !45
  store i1 %20, i1* %FPU_C2, align 1, !mcsema_real_eip !45
  store i1 %21, i1* %FPU_C1, align 1, !mcsema_real_eip !45
  store i1 %22, i1* %FPU_C0, align 1, !mcsema_real_eip !45
  store i1 %23, i1* %FPU_ES, align 1, !mcsema_real_eip !45
  store i1 %24, i1* %FPU_SF, align 1, !mcsema_real_eip !45
  store i1 %25, i1* %FPU_PE, align 1, !mcsema_real_eip !45
  store i1 %26, i1* %FPU_UE, align 1, !mcsema_real_eip !45
  store i1 %27, i1* %FPU_OE, align 1, !mcsema_real_eip !45
  store i1 %28, i1* %FPU_ZE, align 1, !mcsema_real_eip !45
  store i1 %29, i1* %FPU_DE, align 1, !mcsema_real_eip !45
  store i1 %30, i1* %FPU_IE, align 1, !mcsema_real_eip !45
  store i1 %31, i1* %FPU_X, align 1, !mcsema_real_eip !45
  store i2 %32, i2* %FPU_RC, align 1, !mcsema_real_eip !45
  store i2 %33, i2* %FPU_PC, align 1, !mcsema_real_eip !45
  store i1 %34, i1* %FPU_PM, align 1, !mcsema_real_eip !45
  store i1 %35, i1* %FPU_UM, align 1, !mcsema_real_eip !45
  store i1 %36, i1* %FPU_OM, align 1, !mcsema_real_eip !45
  store i1 %37, i1* %FPU_ZM, align 1, !mcsema_real_eip !45
  store i1 %38, i1* %FPU_DM, align 1, !mcsema_real_eip !45
  store i1 %39, i1* %FPU_IM, align 1, !mcsema_real_eip !45
  store i64 %42, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !45
  store i64 %44, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !45
  store i16 %45, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !45
  store i64 %46, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !45
  store i128 %47, i128* %XMM0, align 1, !mcsema_real_eip !45
  store i128 %48, i128* %XMM1, align 1, !mcsema_real_eip !45
  store i128 %49, i128* %XMM2, align 1, !mcsema_real_eip !45
  store i128 %50, i128* %XMM3, align 1, !mcsema_real_eip !45
  store i128 %51, i128* %XMM4, align 1, !mcsema_real_eip !45
  store i128 %52, i128* %XMM5, align 1, !mcsema_real_eip !45
  store i128 %53, i128* %XMM6, align 1, !mcsema_real_eip !45
  store i128 %54, i128* %XMM7, align 1, !mcsema_real_eip !45
  store i128 %55, i128* %XMM8, align 1, !mcsema_real_eip !45
  store i128 %56, i128* %XMM9, align 1, !mcsema_real_eip !45
  store i128 %57, i128* %XMM10, align 1, !mcsema_real_eip !45
  store i128 %58, i128* %XMM11, align 1, !mcsema_real_eip !45
  store i128 %59, i128* %XMM12, align 1, !mcsema_real_eip !45
  store i128 %60, i128* %XMM13, align 1, !mcsema_real_eip !45
  store i128 %61, i128* %XMM14, align 1, !mcsema_real_eip !45
  store i128 %62, i128* %XMM15, align 1, !mcsema_real_eip !45
  store i64 %63, i64* %STACK_BASE, align 1, !mcsema_real_eip !45
  store i64 %64, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !45
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_18e(%struct.regs*) #0 {
entry:
  %_local_stack_alloc_4 = alloca [4 x i64], align 8
  %_local_stack_start_ = ptrtoint [4 x i64]* %_local_stack_alloc_4 to i64
  %_local_stack_end_ = or i64 %_local_stack_start_, 4
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !46
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !46
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !46
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>, <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !46
  %3 = bitcast i64* %RDX to <2 x i64>*
  %4 = load <2 x i64>, <2 x i64>* %3, align 8
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !46
  %5 = load i64, i64* %RDI, align 8, !mcsema_real_eip !46
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !46
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !46
  %6 = load i64, i64* %RBP, align 8, !mcsema_real_eip !46
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !46
  %7 = bitcast i64* %R8 to <2 x i64>*
  %8 = load <2 x i64>, <2 x i64>* %7, align 8
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !46
  %9 = bitcast i64* %R10 to <2 x i64>*
  %10 = load <2 x i64>, <2 x i64>* %9, align 8
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !46
  %11 = bitcast i64* %R12 to <2 x i64>*
  %12 = load <2 x i64>, <2 x i64>* %11, align 8
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !46
  %13 = bitcast i64* %R14 to <2 x i64>*
  %14 = load <2 x i64>, <2 x i64>* %13, align 8
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !46
  %15 = load i64, i64* %RIP, align 8, !mcsema_real_eip !46
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !46
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !46
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !46
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !46
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !46
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !46
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !46
  %16 = load i1, i1* %DF, align 1, !mcsema_real_eip !46
  %17 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !46
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !46
  %19 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !46
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !46
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !46
  %20 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !46
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !46
  %21 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !46
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !46
  %22 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !46
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !46
  %23 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !46
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !46
  %24 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !46
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !46
  %25 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !46
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !46
  %26 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !46
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !46
  %27 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !46
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !46
  %28 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !46
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !46
  %29 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !46
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !46
  %30 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !46
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !46
  %31 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !46
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !46
  %32 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !46
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !46
  %33 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !46
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !46
  %34 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !46
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !46
  %35 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !46
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !46
  %36 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !46
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !46
  %37 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !46
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !46
  %38 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !46
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !46
  %39 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !46
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !46
  %40 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !46
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !46
  %41 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !46
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !46
  %42 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !46
  %43 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !46
  %44 = bitcast i8* %43 to i64*
  %45 = load i64, i64* %44, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !46
  %46 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !46
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !46
  %47 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !46
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !46
  %48 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !46
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !46
  %49 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !46
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !46
  %50 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !46
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !46
  %51 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !46
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !46
  %52 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !46
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !46
  %53 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !46
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !46
  %54 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !46
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !46
  %55 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !46
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !46
  %56 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !46
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !46
  %57 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !46
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !46
  %58 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !46
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !46
  %59 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !46
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !46
  %60 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !46
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !46
  %61 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !46
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !46
  %62 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !46
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !46
  %63 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !46
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !46
  %64 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !46
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !46
  %65 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !46
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !46
  %66 = bitcast i64* %STACK_BASE to <2 x i64>*
  %67 = load <2 x i64>, <2 x i64>* %66, align 8
  %68 = add i64 %6, -4, !mcsema_real_eip !46
  %69 = inttoptr i64 %68 to i32*
  store i32 1, i32* %69, align 4, !mcsema_real_eip !46
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_local_stack_end_, i64 96)
  %70 = extractvalue { i64, i1 } %uadd, 0
  %71 = xor i64 %70, %_local_stack_end_, !mcsema_real_eip !9
  %72 = and i64 %71, 16, !mcsema_real_eip !9
  %73 = icmp ne i64 %72, 0, !mcsema_real_eip !9
  %74 = icmp slt i64 %70, 0
  %75 = xor i64 %_local_stack_start_, -9223372036854775808, !mcsema_real_eip !9
  %76 = and i64 %71, %75, !mcsema_real_eip !9
  %77 = icmp slt i64 %76, 0
  %78 = trunc i64 %70 to i8, !mcsema_real_eip !9
  %79 = tail call i8 @llvm.ctpop.i8(i8 %78), !mcsema_real_eip !9
  %80 = and i8 %79, 1
  %81 = icmp eq i8 %80, 0
  %82 = extractvalue { i64, i1 } %uadd, 1
  %83 = inttoptr i64 %70 to i64*, !mcsema_real_eip !10
  %84 = load i64, i64* %83, align 8, !mcsema_real_eip !10
  %85 = add i64 %70, 16, !mcsema_real_eip !11
  store i64 1, i64* %RAX, align 8, !mcsema_real_eip !11
  %86 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %86, align 8
  %87 = bitcast i64* %RDX to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %87, align 8
  store i64 %5, i64* %RDI, align 8, !mcsema_real_eip !11
  store i64 %85, i64* %RSP, align 8, !mcsema_real_eip !11
  store i64 %84, i64* %RBP, align 8, !mcsema_real_eip !11
  %88 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %88, align 8
  %89 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %89, align 8
  %90 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %90, align 8
  %91 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %14, <2 x i64>* %91, align 8
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !11
  store i1 %82, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 %81, i1* %PF, align 1, !mcsema_real_eip !11
  store i1 %73, i1* %AF, align 1, !mcsema_real_eip !11
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 %74, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 %77, i1* %OF, align 1, !mcsema_real_eip !11
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* nonnull %19, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !11
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !11
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !11
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !11
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !11
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !11
  %92 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %67, <2 x i64>* %92, align 1
  ret void, !mcsema_real_eip !11
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_180(%struct.regs*) #0 {
entry:
  %_local_stack_alloc_275 = alloca [84 x i64], align 8
  %_local_stack_start_ = ptrtoint [84 x i64]* %_local_stack_alloc_275 to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 84
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !47
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !47
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !47
  %1 = load i64, i64* %RBX, align 8, !mcsema_real_eip !47
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !47
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !47
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !47
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !47
  %2 = load i64, i64* %RDI, align 8, !mcsema_real_eip !47
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !47
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !47
  %3 = load i64, i64* %RBP, align 8, !mcsema_real_eip !47
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !47
  %4 = load i64, i64* %R8, align 8, !mcsema_real_eip !47
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !47
  %5 = load i64, i64* %R9, align 8, !mcsema_real_eip !47
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !47
  %6 = load i64, i64* %R10, align 8, !mcsema_real_eip !47
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !47
  %7 = load i64, i64* %R11, align 8, !mcsema_real_eip !47
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !47
  %8 = load i64, i64* %R12, align 8, !mcsema_real_eip !47
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !47
  %9 = load i64, i64* %R13, align 8, !mcsema_real_eip !47
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !47
  %10 = load i64, i64* %R14, align 8, !mcsema_real_eip !47
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !47
  %11 = load i64, i64* %R15, align 8, !mcsema_real_eip !47
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !47
  %12 = load i64, i64* %RIP, align 8, !mcsema_real_eip !47
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !47
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !47
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !47
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !47
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !47
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !47
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !47
  %13 = load i1, i1* %DF, align 1, !mcsema_real_eip !47
  %14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !47
  %15 = bitcast x86_fp80* %14 to i8*, !mcsema_real_eip !47
  %16 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %16, i8* %15, i32 128, i32 4, i1 false), !mcsema_real_eip !47
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !47
  %17 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !47
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !47
  %18 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !47
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !47
  %19 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !47
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !47
  %20 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !47
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !47
  %21 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !47
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !47
  %22 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !47
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !47
  %23 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !47
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !47
  %24 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !47
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !47
  %25 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !47
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !47
  %26 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !47
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !47
  %27 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !47
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !47
  %28 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !47
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !47
  %29 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !47
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !47
  %30 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !47
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !47
  %31 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !47
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !47
  %32 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !47
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !47
  %33 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !47
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !47
  %34 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !47
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !47
  %35 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !47
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !47
  %36 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !47
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !47
  %37 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !47
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !47
  %38 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !47
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !47
  %39 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !47
  %40 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !47
  %41 = bitcast i8* %40 to i64*
  %42 = load i64, i64* %41, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !47
  %43 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !47
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !47
  %44 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !47
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !47
  %45 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !47
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !47
  %46 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !47
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !47
  %47 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !47
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !47
  %48 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !47
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !47
  %49 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !47
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !47
  %50 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !47
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !47
  %51 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !47
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !47
  %52 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !47
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !47
  %53 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !47
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !47
  %54 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !47
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !47
  %55 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !47
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !47
  %56 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !47
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !47
  %57 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !47
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !47
  %58 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !47
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !47
  %59 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !47
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !47
  %60 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !47
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !47
  %61 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !47
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !47
  %62 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !47
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !47
  %63 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !47
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !47
  %64 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !47
  %65 = add i64 %3, -20, !mcsema_real_eip !47
  %66 = inttoptr i64 %65 to i32*
  %67 = load i32, i32* %66, align 4, !mcsema_real_eip !47
  %68 = add i32 %67, 1
  store i32 %68, i32* %66, align 4, !mcsema_real_eip !48
  %69 = sext i32 %68 to i64, !mcsema_real_eip !4
  %70 = add i64 %3, -24, !mcsema_real_eip !5
  %71 = inttoptr i64 %70 to i32*
  %72 = load i32, i32* %71, align 4, !mcsema_real_eip !5
  %73 = sext i32 %72 to i64, !mcsema_real_eip !5
  %74 = mul nsw i64 %73, 11, !mcsema_real_eip !6
  %75 = add i64 %69, ptrtoint (%1* @data_0x359 to i64)
  %76 = add i64 %75, %74, !mcsema_real_eip !7
  %77 = inttoptr i64 %76 to i8*
  %78 = load i8, i8* %77, align 1, !mcsema_real_eip !7
  %79 = sext i8 %78 to i64
  %80 = and i64 %79, 4294967295
  switch i8 %78, label %block_0x1f2 [
    i8 35, label %block_0x298
    i8 32, label %block_0x242
  ]

block_0x298:                                      ; preds = %block_0x24e, %entry, %block_0x11e
  %RSI_val.0 = phi i64 [ %126, %block_0x11e ], [ %80, %entry ], [ %80, %block_0x24e ]
  %RDX_val.0 = phi i64 [ %118, %block_0x11e ], [ %74, %entry ], [ %74, %block_0x24e ]
  %RCX_val.0 = phi i64 [ %174, %block_0x11e ], [ %69, %entry ], [ %69, %block_0x24e ]
  %.sink = phi i32 [ 1, %block_0x11e ], [ 0, %entry ], [ 2, %block_0x24e ]
  %81 = add i64 %3, -4
  %82 = inttoptr i64 %81 to i32*
  store i32 %.sink, i32* %82, align 4
  %83 = zext i32 %.sink to i64, !mcsema_real_eip !8
  %uadd348 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_local_stack_end_, i64 96)
  %84 = extractvalue { i64, i1 } %uadd348, 0
  %85 = xor i64 %84, %_local_stack_end_, !mcsema_real_eip !9
  %86 = and i64 %85, 16, !mcsema_real_eip !9
  %87 = icmp ne i64 %86, 0, !mcsema_real_eip !9
  %88 = icmp slt i64 %84, 0
  %89 = add i64 %_local_stack_start_, -9223372036854775724
  %90 = and i64 %85, %89, !mcsema_real_eip !9
  %91 = icmp slt i64 %90, 0
  %92 = trunc i64 %84 to i8, !mcsema_real_eip !9
  %93 = tail call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !9
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  %96 = extractvalue { i64, i1 } %uadd348, 1
  %97 = inttoptr i64 %84 to i64*, !mcsema_real_eip !10
  %98 = load i64, i64* %97, align 8, !mcsema_real_eip !10
  %99 = add i64 %84, 16, !mcsema_real_eip !11
  store i64 %83, i64* %RAX, align 8, !mcsema_real_eip !11
  store i64 %1, i64* %RBX, align 8, !mcsema_real_eip !11
  store i64 %RCX_val.0, i64* %RCX, align 8, !mcsema_real_eip !11
  store i64 %RDX_val.0, i64* %RDX, align 8, !mcsema_real_eip !11
  store i64 %RSI_val.0, i64* %RSI, align 8, !mcsema_real_eip !11
  store i64 %2, i64* %RDI, align 8, !mcsema_real_eip !11
  store i64 %99, i64* %RSP, align 8, !mcsema_real_eip !11
  store i64 %98, i64* %RBP, align 8, !mcsema_real_eip !11
  store i64 %4, i64* %R8, align 8, !mcsema_real_eip !11
  store i64 %5, i64* %R9, align 8, !mcsema_real_eip !11
  store i64 %6, i64* %R10, align 8, !mcsema_real_eip !11
  store i64 %7, i64* %R11, align 8, !mcsema_real_eip !11
  store i64 %8, i64* %R12, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R13, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R14, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %R15, align 8, !mcsema_real_eip !11
  store i64 %12, i64* %RIP, align 8, !mcsema_real_eip !11
  store i1 %96, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 %95, i1* %PF, align 1, !mcsema_real_eip !11
  store i1 %87, i1* %AF, align 1, !mcsema_real_eip !11
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 %88, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 %91, i1* %OF, align 1, !mcsema_real_eip !11
  store i1 %13, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* nonnull %16, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %17, i1* %FPU_B, align 1, !mcsema_real_eip !11
  store i1 %18, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  store i3 %19, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  store i1 %20, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  store i1 %21, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  store i1 %22, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  store i1 %23, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_X, align 1, !mcsema_real_eip !11
  store i2 %32, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  store i2 %33, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  store i1 %34, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  store i1 %35, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  store i1 %36, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  store i1 %37, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  store i64 %42, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  store i64 %44, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  store i16 %45, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  store i64 %46, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  store i128 %47, i128* %XMM0, align 1, !mcsema_real_eip !11
  store i128 %48, i128* %XMM1, align 1, !mcsema_real_eip !11
  store i128 %49, i128* %XMM2, align 1, !mcsema_real_eip !11
  store i128 %50, i128* %XMM3, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM4, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM5, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM6, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM7, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM8, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM9, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM10, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM11, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM12, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM13, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM14, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM15, align 1, !mcsema_real_eip !11
  store i64 %63, i64* %STACK_BASE, align 1, !mcsema_real_eip !11
  store i64 %64, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11

block_0x242:                                      ; preds = %entry, %block_0x22c
  %100 = add i64 %3, -28, !mcsema_real_eip !12
  %101 = inttoptr i64 %100 to i32*
  %102 = load i32, i32* %101, align 4, !mcsema_real_eip !12
  %103 = icmp eq i32 %102, %68
  br i1 %103, label %block_0x242.block_0x24e_crit_edge, label %block_0x266, !mcsema_real_eip !13

block_0x242.block_0x24e_crit_edge:                ; preds = %block_0x242
  %.pre = add i64 %3, -32, !mcsema_real_eip !14
  %.pre277 = inttoptr i64 %.pre to i32*
  br label %block_0x24e

block_0x1f2:                                      ; preds = %entry
  %notlhs = icmp ne i32 %72, 2
  %notrhs = icmp ne i8 %78, 124
  %or.cond.not = or i1 %notlhs, %notrhs
  %104 = icmp slt i32 %68, 1
  %or.cond276 = or i1 %104, %or.cond.not
  br i1 %or.cond276, label %block_0x236, label %block_0x22c, !mcsema_real_eip !15

block_0x236:                                      ; preds = %block_0x1f2, %block_0x22c
  %105 = add i64 %3, -28, !mcsema_real_eip !16
  %106 = inttoptr i64 %105 to i32*
  %107 = load i32, i32* %106, align 4, !mcsema_real_eip !16
  store i32 %107, i32* %66, align 4, !mcsema_real_eip !17
  %108 = add i64 %3, -32, !mcsema_real_eip !18
  %109 = inttoptr i64 %108 to i32*
  %110 = load i32, i32* %109, align 4, !mcsema_real_eip !18
  store i32 %110, i32* %71, align 4, !mcsema_real_eip !19
  %111 = load i32, i32* %106, align 4, !mcsema_real_eip !12
  %112 = load i32, i32* %66, align 4, !mcsema_real_eip !20
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %block_0x24e, label %block_0x266, !mcsema_real_eip !13

block_0x266:                                      ; preds = %block_0x24e, %block_0x236, %block_0x242
  %114 = phi i32 [ %133, %block_0x24e ], [ %110, %block_0x236 ], [ %72, %block_0x242 ]
  %115 = phi i32 [ %132, %block_0x24e ], [ %112, %block_0x236 ], [ %68, %block_0x242 ]
  %116 = sext i32 %115 to i64, !mcsema_real_eip !21
  %117 = sext i32 %114 to i64, !mcsema_real_eip !22
  %118 = mul nsw i64 %117, 11, !mcsema_real_eip !23
  %119 = add i64 %116, ptrtoint (%1* @data_0x359 to i64)
  %120 = add i64 %119, %118, !mcsema_real_eip !24
  %121 = inttoptr i64 %120 to i8*
  store i8 88, i8* %121, align 1, !mcsema_real_eip !24
  %122 = add i64 %3, -36, !mcsema_real_eip !25
  %123 = inttoptr i64 %122 to i32*
  %124 = load i32, i32* %123, align 4, !mcsema_real_eip !25
  %125 = add i32 %124, 1
  %126 = zext i32 %125 to i64, !mcsema_real_eip !26
  store i32 %125, i32* %123, align 4, !mcsema_real_eip !27
  %127 = add i32 %124, -27
  %128 = icmp slt i32 %127, 0
  %129 = sub i32 26, %124
  %130 = and i32 %125, %129
  %131 = icmp slt i32 %130, 0
  %tmp = xor i1 %128, %131
  br i1 %tmp, label %block_0x11e, label %block_0x291, !mcsema_real_eip !28

block_0x24e:                                      ; preds = %block_0x242.block_0x24e_crit_edge, %block_0x236
  %.pre-phi278 = phi i32* [ %.pre277, %block_0x242.block_0x24e_crit_edge ], [ %109, %block_0x236 ]
  %132 = phi i32 [ %68, %block_0x242.block_0x24e_crit_edge ], [ %111, %block_0x236 ]
  %133 = phi i32 [ %72, %block_0x242.block_0x24e_crit_edge ], [ %110, %block_0x236 ]
  %134 = load i32, i32* %.pre-phi278, align 4, !mcsema_real_eip !14
  %135 = icmp eq i32 %134, %133
  br i1 %135, label %block_0x298, label %block_0x266, !mcsema_real_eip !29

block_0x22c:                                      ; preds = %block_0x1f2
  %136 = add i32 %67, -10
  %137 = icmp slt i32 %136, 0
  %138 = sub i32 9, %67
  %139 = and i32 %68, %138
  %140 = icmp slt i32 %139, 0
  %141 = xor i1 %137, %140
  br i1 %141, label %block_0x242, label %block_0x236, !mcsema_real_eip !30

block_0x291:                                      ; preds = %block_0x266
  %142 = add i64 %3, -4, !mcsema_real_eip !31
  %143 = inttoptr i64 %142 to i32*
  store i32 1, i32* %143, align 4, !mcsema_real_eip !31
  %uadd357 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_local_stack_end_, i64 96)
  %144 = extractvalue { i64, i1 } %uadd357, 0
  %145 = xor i64 %144, %_local_stack_end_, !mcsema_real_eip !9
  %146 = and i64 %145, 16, !mcsema_real_eip !9
  %147 = icmp ne i64 %146, 0, !mcsema_real_eip !9
  %148 = icmp slt i64 %144, 0
  %149 = add i64 %_local_stack_start_, -9223372036854775724
  %150 = and i64 %145, %149, !mcsema_real_eip !9
  %151 = icmp slt i64 %150, 0
  %152 = trunc i64 %144 to i8, !mcsema_real_eip !9
  %153 = tail call i8 @llvm.ctpop.i8(i8 %152), !mcsema_real_eip !9
  %154 = and i8 %153, 1
  %155 = icmp eq i8 %154, 0
  %156 = extractvalue { i64, i1 } %uadd357, 1
  %157 = inttoptr i64 %144 to i64*, !mcsema_real_eip !10
  %158 = load i64, i64* %157, align 8, !mcsema_real_eip !10
  %159 = add i64 %144, 16, !mcsema_real_eip !11
  store i64 1, i64* %RAX, align 8, !mcsema_real_eip !11
  store i64 %1, i64* %RBX, align 8, !mcsema_real_eip !11
  store i64 %116, i64* %RCX, align 8, !mcsema_real_eip !11
  store i64 %118, i64* %RDX, align 8, !mcsema_real_eip !11
  store i64 %126, i64* %RSI, align 8, !mcsema_real_eip !11
  store i64 %2, i64* %RDI, align 8, !mcsema_real_eip !11
  store i64 %159, i64* %RSP, align 8, !mcsema_real_eip !11
  store i64 %158, i64* %RBP, align 8, !mcsema_real_eip !11
  store i64 %4, i64* %R8, align 8, !mcsema_real_eip !11
  store i64 %5, i64* %R9, align 8, !mcsema_real_eip !11
  store i64 %6, i64* %R10, align 8, !mcsema_real_eip !11
  store i64 %7, i64* %R11, align 8, !mcsema_real_eip !11
  store i64 %8, i64* %R12, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R13, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R14, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %R15, align 8, !mcsema_real_eip !11
  store i64 %12, i64* %RIP, align 8, !mcsema_real_eip !11
  store i1 %156, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 %155, i1* %PF, align 1, !mcsema_real_eip !11
  store i1 %147, i1* %AF, align 1, !mcsema_real_eip !11
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 %148, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 %151, i1* %OF, align 1, !mcsema_real_eip !11
  store i1 %13, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* nonnull %16, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %17, i1* %FPU_B, align 1, !mcsema_real_eip !11
  store i1 %18, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  store i3 %19, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  store i1 %20, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  store i1 %21, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  store i1 %22, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  store i1 %23, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_X, align 1, !mcsema_real_eip !11
  store i2 %32, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  store i2 %33, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  store i1 %34, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  store i1 %35, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  store i1 %36, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  store i1 %37, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  store i64 %42, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  store i64 %44, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  store i16 %45, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  store i64 %46, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  store i128 %47, i128* %XMM0, align 1, !mcsema_real_eip !11
  store i128 %48, i128* %XMM1, align 1, !mcsema_real_eip !11
  store i128 %49, i128* %XMM2, align 1, !mcsema_real_eip !11
  store i128 %50, i128* %XMM3, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM4, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM5, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM6, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM7, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM8, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM9, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM10, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM11, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM12, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM13, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM14, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM15, align 1, !mcsema_real_eip !11
  store i64 %63, i64* %STACK_BASE, align 1, !mcsema_real_eip !11
  store i64 %64, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11

block_0x11e:                                      ; preds = %block_0x266
  %160 = load i32, i32* %66, align 4, !mcsema_real_eip !32
  %161 = add i64 %3, -28, !mcsema_real_eip !33
  %162 = inttoptr i64 %161 to i32*
  store i32 %160, i32* %162, align 4, !mcsema_real_eip !33
  %163 = load i32, i32* %71, align 4, !mcsema_real_eip !34
  %164 = add i64 %3, -32, !mcsema_real_eip !35
  %165 = inttoptr i64 %164 to i32*
  store i32 %163, i32* %165, align 4, !mcsema_real_eip !35
  %166 = load i32, i32* %123, align 4, !mcsema_real_eip !36
  %167 = sext i32 %166 to i64, !mcsema_real_eip !36
  %168 = add i64 %3, -64, !mcsema_real_eip !37
  %169 = add i64 %168, %167, !mcsema_real_eip !37
  %170 = inttoptr i64 %169 to i8*
  %171 = load i8, i8* %170, align 1, !mcsema_real_eip !37
  %172 = sext i8 %171 to i32, !mcsema_real_eip !37
  %173 = add nsw i32 %172, -97
  %174 = zext i32 %173 to i64, !mcsema_real_eip !38
  %175 = add nsw i32 %172, -119
  %176 = xor i32 %175, %173, !mcsema_real_eip !39
  %177 = icmp eq i32 %175, 0, !mcsema_real_eip !39
  %178 = icmp ult i32 %173, 22, !mcsema_real_eip !39
  %179 = add i64 %3, -80, !mcsema_real_eip !40
  %180 = inttoptr i64 %179 to i64*, !mcsema_real_eip !40
  store i64 %174, i64* %180, align 8, !mcsema_real_eip !40
  %181 = add i64 %3, -84, !mcsema_real_eip !41
  %182 = inttoptr i64 %181 to i32*
  store i32 %175, i32* %182, align 4, !mcsema_real_eip !41
  %.demorgan = or i1 %178, %177
  br i1 %.demorgan, label %block_0x148, label %block_0x298, !mcsema_real_eip !42

block_0x148:                                      ; preds = %block_0x11e
  %183 = and i32 %176, %173, !mcsema_real_eip !39
  %184 = icmp slt i32 %183, 0
  %185 = icmp slt i8 %171, 119
  %186 = trunc i32 %175 to i8, !mcsema_real_eip !39
  %187 = tail call i8 @llvm.ctpop.i8(i8 %186), !mcsema_real_eip !39
  %188 = and i8 %187, 1
  %189 = icmp eq i8 %188, 0
  %190 = and i32 %176, 16
  %191 = icmp eq i32 %190, 0
  %192 = load i64, i64* %180, align 8, !mcsema_real_eip !43
  %193 = shl i64 %192, 3
  %194 = add i64 %193, ptrtoint (%0* @data_0x2a1 to i64), !mcsema_real_eip !44
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !44
  %196 = load i64, i64* %195, align 8, !mcsema_real_eip !44
  store i64 %192, i64* %RAX, align 8, !mcsema_real_eip !45
  store i64 %1, i64* %RBX, align 8, !mcsema_real_eip !45
  store i64 %196, i64* %RCX, align 8, !mcsema_real_eip !45
  store i64 %118, i64* %RDX, align 8, !mcsema_real_eip !45
  store i64 %126, i64* %RSI, align 8, !mcsema_real_eip !45
  store i64 %2, i64* %RDI, align 8, !mcsema_real_eip !45
  store i64 %_local_stack_end_, i64* %RSP, align 8, !mcsema_real_eip !45
  store i64 %3, i64* %RBP, align 8, !mcsema_real_eip !45
  store i64 %4, i64* %R8, align 8, !mcsema_real_eip !45
  store i64 %5, i64* %R9, align 8, !mcsema_real_eip !45
  store i64 %6, i64* %R10, align 8, !mcsema_real_eip !45
  store i64 %7, i64* %R11, align 8, !mcsema_real_eip !45
  store i64 %8, i64* %R12, align 8, !mcsema_real_eip !45
  store i64 %9, i64* %R13, align 8, !mcsema_real_eip !45
  store i64 %10, i64* %R14, align 8, !mcsema_real_eip !45
  store i64 %11, i64* %R15, align 8, !mcsema_real_eip !45
  store i64 %12, i64* %RIP, align 8, !mcsema_real_eip !45
  store i1 %178, i1* %CF, align 1, !mcsema_real_eip !45
  store i1 %189, i1* %PF, align 1, !mcsema_real_eip !45
  store i1 %191, i1* %AF, align 1, !mcsema_real_eip !45
  store i1 %177, i1* %ZF, align 1, !mcsema_real_eip !45
  store i1 %185, i1* %SF, align 1, !mcsema_real_eip !45
  store i1 %184, i1* %OF, align 1, !mcsema_real_eip !45
  store i1 %13, i1* %DF, align 1, !mcsema_real_eip !45
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* nonnull %16, i32 128, i32 8, i1 false), !mcsema_real_eip !45
  store i1 %17, i1* %FPU_B, align 1, !mcsema_real_eip !45
  store i1 %18, i1* %FPU_C3, align 1, !mcsema_real_eip !45
  store i3 %19, i3* %FPU_TOP, align 1, !mcsema_real_eip !45
  store i1 %20, i1* %FPU_C2, align 1, !mcsema_real_eip !45
  store i1 %21, i1* %FPU_C1, align 1, !mcsema_real_eip !45
  store i1 %22, i1* %FPU_C0, align 1, !mcsema_real_eip !45
  store i1 %23, i1* %FPU_ES, align 1, !mcsema_real_eip !45
  store i1 %24, i1* %FPU_SF, align 1, !mcsema_real_eip !45
  store i1 %25, i1* %FPU_PE, align 1, !mcsema_real_eip !45
  store i1 %26, i1* %FPU_UE, align 1, !mcsema_real_eip !45
  store i1 %27, i1* %FPU_OE, align 1, !mcsema_real_eip !45
  store i1 %28, i1* %FPU_ZE, align 1, !mcsema_real_eip !45
  store i1 %29, i1* %FPU_DE, align 1, !mcsema_real_eip !45
  store i1 %30, i1* %FPU_IE, align 1, !mcsema_real_eip !45
  store i1 %31, i1* %FPU_X, align 1, !mcsema_real_eip !45
  store i2 %32, i2* %FPU_RC, align 1, !mcsema_real_eip !45
  store i2 %33, i2* %FPU_PC, align 1, !mcsema_real_eip !45
  store i1 %34, i1* %FPU_PM, align 1, !mcsema_real_eip !45
  store i1 %35, i1* %FPU_UM, align 1, !mcsema_real_eip !45
  store i1 %36, i1* %FPU_OM, align 1, !mcsema_real_eip !45
  store i1 %37, i1* %FPU_ZM, align 1, !mcsema_real_eip !45
  store i1 %38, i1* %FPU_DM, align 1, !mcsema_real_eip !45
  store i1 %39, i1* %FPU_IM, align 1, !mcsema_real_eip !45
  store i64 %42, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !45
  store i64 %44, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !45
  store i16 %45, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !45
  store i64 %46, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !45
  store i128 %47, i128* %XMM0, align 1, !mcsema_real_eip !45
  store i128 %48, i128* %XMM1, align 1, !mcsema_real_eip !45
  store i128 %49, i128* %XMM2, align 1, !mcsema_real_eip !45
  store i128 %50, i128* %XMM3, align 1, !mcsema_real_eip !45
  store i128 %51, i128* %XMM4, align 1, !mcsema_real_eip !45
  store i128 %52, i128* %XMM5, align 1, !mcsema_real_eip !45
  store i128 %53, i128* %XMM6, align 1, !mcsema_real_eip !45
  store i128 %54, i128* %XMM7, align 1, !mcsema_real_eip !45
  store i128 %55, i128* %XMM8, align 1, !mcsema_real_eip !45
  store i128 %56, i128* %XMM9, align 1, !mcsema_real_eip !45
  store i128 %57, i128* %XMM10, align 1, !mcsema_real_eip !45
  store i128 %58, i128* %XMM11, align 1, !mcsema_real_eip !45
  store i128 %59, i128* %XMM12, align 1, !mcsema_real_eip !45
  store i128 %60, i128* %XMM13, align 1, !mcsema_real_eip !45
  store i128 %61, i128* %XMM14, align 1, !mcsema_real_eip !45
  store i128 %62, i128* %XMM15, align 1, !mcsema_real_eip !45
  store i64 %63, i64* %STACK_BASE, align 1, !mcsema_real_eip !45
  store i64 %64, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !45
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_164(%struct.regs*) #0 {
entry:
  %_local_stack_alloc_275 = alloca [84 x i64], align 8
  %_local_stack_start_ = ptrtoint [84 x i64]* %_local_stack_alloc_275 to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 84
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !49
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !49
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !49
  %1 = load i64, i64* %RBX, align 8, !mcsema_real_eip !49
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !49
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !49
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !49
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !49
  %2 = load i64, i64* %RDI, align 8, !mcsema_real_eip !49
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !49
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !49
  %3 = load i64, i64* %RBP, align 8, !mcsema_real_eip !49
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !49
  %4 = load i64, i64* %R8, align 8, !mcsema_real_eip !49
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !49
  %5 = load i64, i64* %R9, align 8, !mcsema_real_eip !49
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !49
  %6 = load i64, i64* %R10, align 8, !mcsema_real_eip !49
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !49
  %7 = load i64, i64* %R11, align 8, !mcsema_real_eip !49
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !49
  %8 = load i64, i64* %R12, align 8, !mcsema_real_eip !49
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !49
  %9 = load i64, i64* %R13, align 8, !mcsema_real_eip !49
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !49
  %10 = load i64, i64* %R14, align 8, !mcsema_real_eip !49
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !49
  %11 = load i64, i64* %R15, align 8, !mcsema_real_eip !49
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !49
  %12 = load i64, i64* %RIP, align 8, !mcsema_real_eip !49
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !49
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !49
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !49
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !49
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !49
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !49
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !49
  %13 = load i1, i1* %DF, align 1, !mcsema_real_eip !49
  %14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !49
  %15 = bitcast x86_fp80* %14 to i8*, !mcsema_real_eip !49
  %16 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !49
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %16, i8* %15, i32 128, i32 4, i1 false), !mcsema_real_eip !49
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !49
  %17 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !49
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !49
  %18 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !49
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !49
  %19 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !49
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !49
  %20 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !49
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !49
  %21 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !49
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !49
  %22 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !49
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !49
  %23 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !49
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !49
  %24 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !49
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !49
  %25 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !49
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !49
  %26 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !49
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !49
  %27 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !49
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !49
  %28 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !49
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !49
  %29 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !49
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !49
  %30 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !49
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !49
  %31 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !49
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !49
  %32 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !49
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !49
  %33 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !49
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !49
  %34 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !49
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !49
  %35 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !49
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !49
  %36 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !49
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !49
  %37 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !49
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !49
  %38 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !49
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !49
  %39 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !49
  %40 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !49
  %41 = bitcast i8* %40 to i64*
  %42 = load i64, i64* %41, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !49
  %43 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !49
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !49
  %44 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !49
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !49
  %45 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !49
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !49
  %46 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !49
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !49
  %47 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !49
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !49
  %48 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !49
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !49
  %49 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !49
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !49
  %50 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !49
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !49
  %51 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !49
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !49
  %52 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !49
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !49
  %53 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !49
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !49
  %54 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !49
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !49
  %55 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !49
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !49
  %56 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !49
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !49
  %57 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !49
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !49
  %58 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !49
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !49
  %59 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !49
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !49
  %60 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !49
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !49
  %61 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !49
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !49
  %62 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !49
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !49
  %63 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !49
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !49
  %64 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !49
  %65 = add i64 %3, -24, !mcsema_real_eip !49
  %66 = inttoptr i64 %65 to i32*
  %67 = load i32, i32* %66, align 4, !mcsema_real_eip !49
  %68 = add i32 %67, 1
  store i32 %68, i32* %66, align 4, !mcsema_real_eip !50
  %69 = add i64 %3, -20, !mcsema_real_eip !4
  %70 = inttoptr i64 %69 to i32*
  %71 = load i32, i32* %70, align 4, !mcsema_real_eip !4
  %72 = sext i32 %71 to i64, !mcsema_real_eip !4
  %73 = sext i32 %68 to i64, !mcsema_real_eip !5
  %74 = mul nsw i64 %73, 11, !mcsema_real_eip !6
  %75 = add i64 %74, ptrtoint (%1* @data_0x359 to i64)
  %76 = add i64 %75, %72, !mcsema_real_eip !7
  %77 = inttoptr i64 %76 to i8*
  %78 = load i8, i8* %77, align 1, !mcsema_real_eip !7
  %79 = sext i8 %78 to i64
  %80 = and i64 %79, 4294967295
  switch i8 %78, label %block_0x1f2 [
    i8 35, label %block_0x298
    i8 32, label %block_0x242
  ]

block_0x298:                                      ; preds = %block_0x24e, %entry, %block_0x11e
  %RSI_val.0 = phi i64 [ %126, %block_0x11e ], [ %80, %entry ], [ %80, %block_0x24e ]
  %RDX_val.0 = phi i64 [ %118, %block_0x11e ], [ %74, %entry ], [ %74, %block_0x24e ]
  %RCX_val.0 = phi i64 [ %174, %block_0x11e ], [ %72, %entry ], [ %72, %block_0x24e ]
  %.sink = phi i32 [ 1, %block_0x11e ], [ 0, %entry ], [ 2, %block_0x24e ]
  %81 = add i64 %3, -4
  %82 = inttoptr i64 %81 to i32*
  store i32 %.sink, i32* %82, align 4
  %83 = zext i32 %.sink to i64, !mcsema_real_eip !8
  %uadd348 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_local_stack_end_, i64 96)
  %84 = extractvalue { i64, i1 } %uadd348, 0
  %85 = xor i64 %84, %_local_stack_end_, !mcsema_real_eip !9
  %86 = and i64 %85, 16, !mcsema_real_eip !9
  %87 = icmp ne i64 %86, 0, !mcsema_real_eip !9
  %88 = icmp slt i64 %84, 0
  %89 = add i64 %_local_stack_start_, -9223372036854775724
  %90 = and i64 %85, %89, !mcsema_real_eip !9
  %91 = icmp slt i64 %90, 0
  %92 = trunc i64 %84 to i8, !mcsema_real_eip !9
  %93 = tail call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !9
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  %96 = extractvalue { i64, i1 } %uadd348, 1
  %97 = inttoptr i64 %84 to i64*, !mcsema_real_eip !10
  %98 = load i64, i64* %97, align 8, !mcsema_real_eip !10
  %99 = add i64 %84, 16, !mcsema_real_eip !11
  store i64 %83, i64* %RAX, align 8, !mcsema_real_eip !11
  store i64 %1, i64* %RBX, align 8, !mcsema_real_eip !11
  store i64 %RCX_val.0, i64* %RCX, align 8, !mcsema_real_eip !11
  store i64 %RDX_val.0, i64* %RDX, align 8, !mcsema_real_eip !11
  store i64 %RSI_val.0, i64* %RSI, align 8, !mcsema_real_eip !11
  store i64 %2, i64* %RDI, align 8, !mcsema_real_eip !11
  store i64 %99, i64* %RSP, align 8, !mcsema_real_eip !11
  store i64 %98, i64* %RBP, align 8, !mcsema_real_eip !11
  store i64 %4, i64* %R8, align 8, !mcsema_real_eip !11
  store i64 %5, i64* %R9, align 8, !mcsema_real_eip !11
  store i64 %6, i64* %R10, align 8, !mcsema_real_eip !11
  store i64 %7, i64* %R11, align 8, !mcsema_real_eip !11
  store i64 %8, i64* %R12, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R13, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R14, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %R15, align 8, !mcsema_real_eip !11
  store i64 %12, i64* %RIP, align 8, !mcsema_real_eip !11
  store i1 %96, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 %95, i1* %PF, align 1, !mcsema_real_eip !11
  store i1 %87, i1* %AF, align 1, !mcsema_real_eip !11
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 %88, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 %91, i1* %OF, align 1, !mcsema_real_eip !11
  store i1 %13, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* nonnull %16, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %17, i1* %FPU_B, align 1, !mcsema_real_eip !11
  store i1 %18, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  store i3 %19, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  store i1 %20, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  store i1 %21, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  store i1 %22, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  store i1 %23, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_X, align 1, !mcsema_real_eip !11
  store i2 %32, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  store i2 %33, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  store i1 %34, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  store i1 %35, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  store i1 %36, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  store i1 %37, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  store i64 %42, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  store i64 %44, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  store i16 %45, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  store i64 %46, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  store i128 %47, i128* %XMM0, align 1, !mcsema_real_eip !11
  store i128 %48, i128* %XMM1, align 1, !mcsema_real_eip !11
  store i128 %49, i128* %XMM2, align 1, !mcsema_real_eip !11
  store i128 %50, i128* %XMM3, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM4, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM5, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM6, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM7, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM8, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM9, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM10, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM11, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM12, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM13, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM14, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM15, align 1, !mcsema_real_eip !11
  store i64 %63, i64* %STACK_BASE, align 1, !mcsema_real_eip !11
  store i64 %64, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11

block_0x242:                                      ; preds = %entry, %block_0x22c
  %100 = add i64 %3, -28, !mcsema_real_eip !12
  %101 = inttoptr i64 %100 to i32*
  %102 = load i32, i32* %101, align 4, !mcsema_real_eip !12
  %103 = icmp eq i32 %102, %71
  br i1 %103, label %block_0x242.block_0x24e_crit_edge, label %block_0x266, !mcsema_real_eip !13

block_0x242.block_0x24e_crit_edge:                ; preds = %block_0x242
  %.pre = add i64 %3, -32, !mcsema_real_eip !14
  %.pre277 = inttoptr i64 %.pre to i32*
  br label %block_0x24e

block_0x1f2:                                      ; preds = %entry
  %notlhs = icmp ne i32 %67, 1
  %notrhs = icmp ne i8 %78, 124
  %or.cond.not = or i1 %notlhs, %notrhs
  %104 = icmp slt i32 %71, 1
  %or.cond276 = or i1 %104, %or.cond.not
  br i1 %or.cond276, label %block_0x236, label %block_0x22c, !mcsema_real_eip !15

block_0x236:                                      ; preds = %block_0x1f2, %block_0x22c
  %105 = add i64 %3, -28, !mcsema_real_eip !16
  %106 = inttoptr i64 %105 to i32*
  %107 = load i32, i32* %106, align 4, !mcsema_real_eip !16
  store i32 %107, i32* %70, align 4, !mcsema_real_eip !17
  %108 = add i64 %3, -32, !mcsema_real_eip !18
  %109 = inttoptr i64 %108 to i32*
  %110 = load i32, i32* %109, align 4, !mcsema_real_eip !18
  store i32 %110, i32* %66, align 4, !mcsema_real_eip !19
  %111 = load i32, i32* %106, align 4, !mcsema_real_eip !12
  %112 = load i32, i32* %70, align 4, !mcsema_real_eip !20
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %block_0x24e, label %block_0x266, !mcsema_real_eip !13

block_0x266:                                      ; preds = %block_0x24e, %block_0x236, %block_0x242
  %114 = phi i32 [ %133, %block_0x24e ], [ %110, %block_0x236 ], [ %68, %block_0x242 ]
  %115 = phi i32 [ %132, %block_0x24e ], [ %112, %block_0x236 ], [ %71, %block_0x242 ]
  %116 = sext i32 %115 to i64, !mcsema_real_eip !21
  %117 = sext i32 %114 to i64, !mcsema_real_eip !22
  %118 = mul nsw i64 %117, 11, !mcsema_real_eip !23
  %119 = add i64 %116, ptrtoint (%1* @data_0x359 to i64)
  %120 = add i64 %119, %118, !mcsema_real_eip !24
  %121 = inttoptr i64 %120 to i8*
  store i8 88, i8* %121, align 1, !mcsema_real_eip !24
  %122 = add i64 %3, -36, !mcsema_real_eip !25
  %123 = inttoptr i64 %122 to i32*
  %124 = load i32, i32* %123, align 4, !mcsema_real_eip !25
  %125 = add i32 %124, 1
  %126 = zext i32 %125 to i64, !mcsema_real_eip !26
  store i32 %125, i32* %123, align 4, !mcsema_real_eip !27
  %127 = add i32 %124, -27
  %128 = icmp slt i32 %127, 0
  %129 = sub i32 26, %124
  %130 = and i32 %125, %129
  %131 = icmp slt i32 %130, 0
  %tmp = xor i1 %128, %131
  br i1 %tmp, label %block_0x11e, label %block_0x291, !mcsema_real_eip !28

block_0x24e:                                      ; preds = %block_0x242.block_0x24e_crit_edge, %block_0x236
  %.pre-phi278 = phi i32* [ %.pre277, %block_0x242.block_0x24e_crit_edge ], [ %109, %block_0x236 ]
  %132 = phi i32 [ %71, %block_0x242.block_0x24e_crit_edge ], [ %111, %block_0x236 ]
  %133 = phi i32 [ %68, %block_0x242.block_0x24e_crit_edge ], [ %110, %block_0x236 ]
  %134 = load i32, i32* %.pre-phi278, align 4, !mcsema_real_eip !14
  %135 = icmp eq i32 %134, %133
  br i1 %135, label %block_0x298, label %block_0x266, !mcsema_real_eip !29

block_0x22c:                                      ; preds = %block_0x1f2
  %136 = add i32 %71, -11
  %137 = icmp slt i32 %136, 0
  %138 = sub i32 10, %71
  %139 = and i32 %138, %71
  %140 = icmp slt i32 %139, 0
  %141 = xor i1 %137, %140
  br i1 %141, label %block_0x242, label %block_0x236, !mcsema_real_eip !30

block_0x291:                                      ; preds = %block_0x266
  %142 = add i64 %3, -4, !mcsema_real_eip !31
  %143 = inttoptr i64 %142 to i32*
  store i32 1, i32* %143, align 4, !mcsema_real_eip !31
  %uadd357 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_local_stack_end_, i64 96)
  %144 = extractvalue { i64, i1 } %uadd357, 0
  %145 = xor i64 %144, %_local_stack_end_, !mcsema_real_eip !9
  %146 = and i64 %145, 16, !mcsema_real_eip !9
  %147 = icmp ne i64 %146, 0, !mcsema_real_eip !9
  %148 = icmp slt i64 %144, 0
  %149 = add i64 %_local_stack_start_, -9223372036854775724
  %150 = and i64 %145, %149, !mcsema_real_eip !9
  %151 = icmp slt i64 %150, 0
  %152 = trunc i64 %144 to i8, !mcsema_real_eip !9
  %153 = tail call i8 @llvm.ctpop.i8(i8 %152), !mcsema_real_eip !9
  %154 = and i8 %153, 1
  %155 = icmp eq i8 %154, 0
  %156 = extractvalue { i64, i1 } %uadd357, 1
  %157 = inttoptr i64 %144 to i64*, !mcsema_real_eip !10
  %158 = load i64, i64* %157, align 8, !mcsema_real_eip !10
  %159 = add i64 %144, 16, !mcsema_real_eip !11
  store i64 1, i64* %RAX, align 8, !mcsema_real_eip !11
  store i64 %1, i64* %RBX, align 8, !mcsema_real_eip !11
  store i64 %116, i64* %RCX, align 8, !mcsema_real_eip !11
  store i64 %118, i64* %RDX, align 8, !mcsema_real_eip !11
  store i64 %126, i64* %RSI, align 8, !mcsema_real_eip !11
  store i64 %2, i64* %RDI, align 8, !mcsema_real_eip !11
  store i64 %159, i64* %RSP, align 8, !mcsema_real_eip !11
  store i64 %158, i64* %RBP, align 8, !mcsema_real_eip !11
  store i64 %4, i64* %R8, align 8, !mcsema_real_eip !11
  store i64 %5, i64* %R9, align 8, !mcsema_real_eip !11
  store i64 %6, i64* %R10, align 8, !mcsema_real_eip !11
  store i64 %7, i64* %R11, align 8, !mcsema_real_eip !11
  store i64 %8, i64* %R12, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R13, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R14, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %R15, align 8, !mcsema_real_eip !11
  store i64 %12, i64* %RIP, align 8, !mcsema_real_eip !11
  store i1 %156, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 %155, i1* %PF, align 1, !mcsema_real_eip !11
  store i1 %147, i1* %AF, align 1, !mcsema_real_eip !11
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 %148, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 %151, i1* %OF, align 1, !mcsema_real_eip !11
  store i1 %13, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* nonnull %16, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %17, i1* %FPU_B, align 1, !mcsema_real_eip !11
  store i1 %18, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  store i3 %19, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  store i1 %20, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  store i1 %21, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  store i1 %22, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  store i1 %23, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_X, align 1, !mcsema_real_eip !11
  store i2 %32, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  store i2 %33, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  store i1 %34, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  store i1 %35, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  store i1 %36, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  store i1 %37, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  store i64 %42, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  store i64 %44, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  store i16 %45, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  store i64 %46, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  store i128 %47, i128* %XMM0, align 1, !mcsema_real_eip !11
  store i128 %48, i128* %XMM1, align 1, !mcsema_real_eip !11
  store i128 %49, i128* %XMM2, align 1, !mcsema_real_eip !11
  store i128 %50, i128* %XMM3, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM4, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM5, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM6, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM7, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM8, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM9, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM10, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM11, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM12, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM13, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM14, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM15, align 1, !mcsema_real_eip !11
  store i64 %63, i64* %STACK_BASE, align 1, !mcsema_real_eip !11
  store i64 %64, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11

block_0x11e:                                      ; preds = %block_0x266
  %160 = load i32, i32* %70, align 4, !mcsema_real_eip !32
  %161 = add i64 %3, -28, !mcsema_real_eip !33
  %162 = inttoptr i64 %161 to i32*
  store i32 %160, i32* %162, align 4, !mcsema_real_eip !33
  %163 = load i32, i32* %66, align 4, !mcsema_real_eip !34
  %164 = add i64 %3, -32, !mcsema_real_eip !35
  %165 = inttoptr i64 %164 to i32*
  store i32 %163, i32* %165, align 4, !mcsema_real_eip !35
  %166 = load i32, i32* %123, align 4, !mcsema_real_eip !36
  %167 = sext i32 %166 to i64, !mcsema_real_eip !36
  %168 = add i64 %3, -64, !mcsema_real_eip !37
  %169 = add i64 %168, %167, !mcsema_real_eip !37
  %170 = inttoptr i64 %169 to i8*
  %171 = load i8, i8* %170, align 1, !mcsema_real_eip !37
  %172 = sext i8 %171 to i32, !mcsema_real_eip !37
  %173 = add nsw i32 %172, -97
  %174 = zext i32 %173 to i64, !mcsema_real_eip !38
  %175 = add nsw i32 %172, -119
  %176 = xor i32 %175, %173, !mcsema_real_eip !39
  %177 = icmp eq i32 %175, 0, !mcsema_real_eip !39
  %178 = icmp ult i32 %173, 22, !mcsema_real_eip !39
  %179 = add i64 %3, -80, !mcsema_real_eip !40
  %180 = inttoptr i64 %179 to i64*, !mcsema_real_eip !40
  store i64 %174, i64* %180, align 8, !mcsema_real_eip !40
  %181 = add i64 %3, -84, !mcsema_real_eip !41
  %182 = inttoptr i64 %181 to i32*
  store i32 %175, i32* %182, align 4, !mcsema_real_eip !41
  %.demorgan = or i1 %178, %177
  br i1 %.demorgan, label %block_0x148, label %block_0x298, !mcsema_real_eip !42

block_0x148:                                      ; preds = %block_0x11e
  %183 = and i32 %176, %173, !mcsema_real_eip !39
  %184 = icmp slt i32 %183, 0
  %185 = icmp slt i8 %171, 119
  %186 = trunc i32 %175 to i8, !mcsema_real_eip !39
  %187 = tail call i8 @llvm.ctpop.i8(i8 %186), !mcsema_real_eip !39
  %188 = and i8 %187, 1
  %189 = icmp eq i8 %188, 0
  %190 = and i32 %176, 16
  %191 = icmp eq i32 %190, 0
  %192 = load i64, i64* %180, align 8, !mcsema_real_eip !43
  %193 = shl i64 %192, 3
  %194 = add i64 %193, ptrtoint (%0* @data_0x2a1 to i64), !mcsema_real_eip !44
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !44
  %196 = load i64, i64* %195, align 8, !mcsema_real_eip !44
  store i64 %192, i64* %RAX, align 8, !mcsema_real_eip !45
  store i64 %1, i64* %RBX, align 8, !mcsema_real_eip !45
  store i64 %196, i64* %RCX, align 8, !mcsema_real_eip !45
  store i64 %118, i64* %RDX, align 8, !mcsema_real_eip !45
  store i64 %126, i64* %RSI, align 8, !mcsema_real_eip !45
  store i64 %2, i64* %RDI, align 8, !mcsema_real_eip !45
  store i64 %_local_stack_end_, i64* %RSP, align 8, !mcsema_real_eip !45
  store i64 %3, i64* %RBP, align 8, !mcsema_real_eip !45
  store i64 %4, i64* %R8, align 8, !mcsema_real_eip !45
  store i64 %5, i64* %R9, align 8, !mcsema_real_eip !45
  store i64 %6, i64* %R10, align 8, !mcsema_real_eip !45
  store i64 %7, i64* %R11, align 8, !mcsema_real_eip !45
  store i64 %8, i64* %R12, align 8, !mcsema_real_eip !45
  store i64 %9, i64* %R13, align 8, !mcsema_real_eip !45
  store i64 %10, i64* %R14, align 8, !mcsema_real_eip !45
  store i64 %11, i64* %R15, align 8, !mcsema_real_eip !45
  store i64 %12, i64* %RIP, align 8, !mcsema_real_eip !45
  store i1 %178, i1* %CF, align 1, !mcsema_real_eip !45
  store i1 %189, i1* %PF, align 1, !mcsema_real_eip !45
  store i1 %191, i1* %AF, align 1, !mcsema_real_eip !45
  store i1 %177, i1* %ZF, align 1, !mcsema_real_eip !45
  store i1 %185, i1* %SF, align 1, !mcsema_real_eip !45
  store i1 %184, i1* %OF, align 1, !mcsema_real_eip !45
  store i1 %13, i1* %DF, align 1, !mcsema_real_eip !45
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* nonnull %16, i32 128, i32 8, i1 false), !mcsema_real_eip !45
  store i1 %17, i1* %FPU_B, align 1, !mcsema_real_eip !45
  store i1 %18, i1* %FPU_C3, align 1, !mcsema_real_eip !45
  store i3 %19, i3* %FPU_TOP, align 1, !mcsema_real_eip !45
  store i1 %20, i1* %FPU_C2, align 1, !mcsema_real_eip !45
  store i1 %21, i1* %FPU_C1, align 1, !mcsema_real_eip !45
  store i1 %22, i1* %FPU_C0, align 1, !mcsema_real_eip !45
  store i1 %23, i1* %FPU_ES, align 1, !mcsema_real_eip !45
  store i1 %24, i1* %FPU_SF, align 1, !mcsema_real_eip !45
  store i1 %25, i1* %FPU_PE, align 1, !mcsema_real_eip !45
  store i1 %26, i1* %FPU_UE, align 1, !mcsema_real_eip !45
  store i1 %27, i1* %FPU_OE, align 1, !mcsema_real_eip !45
  store i1 %28, i1* %FPU_ZE, align 1, !mcsema_real_eip !45
  store i1 %29, i1* %FPU_DE, align 1, !mcsema_real_eip !45
  store i1 %30, i1* %FPU_IE, align 1, !mcsema_real_eip !45
  store i1 %31, i1* %FPU_X, align 1, !mcsema_real_eip !45
  store i2 %32, i2* %FPU_RC, align 1, !mcsema_real_eip !45
  store i2 %33, i2* %FPU_PC, align 1, !mcsema_real_eip !45
  store i1 %34, i1* %FPU_PM, align 1, !mcsema_real_eip !45
  store i1 %35, i1* %FPU_UM, align 1, !mcsema_real_eip !45
  store i1 %36, i1* %FPU_OM, align 1, !mcsema_real_eip !45
  store i1 %37, i1* %FPU_ZM, align 1, !mcsema_real_eip !45
  store i1 %38, i1* %FPU_DM, align 1, !mcsema_real_eip !45
  store i1 %39, i1* %FPU_IM, align 1, !mcsema_real_eip !45
  store i64 %42, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !45
  store i64 %44, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !45
  store i16 %45, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !45
  store i64 %46, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !45
  store i128 %47, i128* %XMM0, align 1, !mcsema_real_eip !45
  store i128 %48, i128* %XMM1, align 1, !mcsema_real_eip !45
  store i128 %49, i128* %XMM2, align 1, !mcsema_real_eip !45
  store i128 %50, i128* %XMM3, align 1, !mcsema_real_eip !45
  store i128 %51, i128* %XMM4, align 1, !mcsema_real_eip !45
  store i128 %52, i128* %XMM5, align 1, !mcsema_real_eip !45
  store i128 %53, i128* %XMM6, align 1, !mcsema_real_eip !45
  store i128 %54, i128* %XMM7, align 1, !mcsema_real_eip !45
  store i128 %55, i128* %XMM8, align 1, !mcsema_real_eip !45
  store i128 %56, i128* %XMM9, align 1, !mcsema_real_eip !45
  store i128 %57, i128* %XMM10, align 1, !mcsema_real_eip !45
  store i128 %58, i128* %XMM11, align 1, !mcsema_real_eip !45
  store i128 %59, i128* %XMM12, align 1, !mcsema_real_eip !45
  store i128 %60, i128* %XMM13, align 1, !mcsema_real_eip !45
  store i128 %61, i128* %XMM14, align 1, !mcsema_real_eip !45
  store i128 %62, i128* %XMM15, align 1, !mcsema_real_eip !45
  store i64 %63, i64* %STACK_BASE, align 1, !mcsema_real_eip !45
  store i64 %64, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !45
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_156(%struct.regs*) #0 {
entry:
  %_local_stack_alloc_275 = alloca [84 x i64], align 8
  %_local_stack_start_ = ptrtoint [84 x i64]* %_local_stack_alloc_275 to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 84
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !51
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !51
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !51
  %1 = load i64, i64* %RBX, align 8, !mcsema_real_eip !51
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !51
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !51
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !51
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !51
  %2 = load i64, i64* %RDI, align 8, !mcsema_real_eip !51
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !51
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !51
  %3 = load i64, i64* %RBP, align 8, !mcsema_real_eip !51
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !51
  %4 = load i64, i64* %R8, align 8, !mcsema_real_eip !51
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !51
  %5 = load i64, i64* %R9, align 8, !mcsema_real_eip !51
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !51
  %6 = load i64, i64* %R10, align 8, !mcsema_real_eip !51
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !51
  %7 = load i64, i64* %R11, align 8, !mcsema_real_eip !51
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !51
  %8 = load i64, i64* %R12, align 8, !mcsema_real_eip !51
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !51
  %9 = load i64, i64* %R13, align 8, !mcsema_real_eip !51
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !51
  %10 = load i64, i64* %R14, align 8, !mcsema_real_eip !51
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !51
  %11 = load i64, i64* %R15, align 8, !mcsema_real_eip !51
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !51
  %12 = load i64, i64* %RIP, align 8, !mcsema_real_eip !51
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !51
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !51
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !51
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !51
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !51
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !51
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !51
  %13 = load i1, i1* %DF, align 1, !mcsema_real_eip !51
  %14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !51
  %15 = bitcast x86_fp80* %14 to i8*, !mcsema_real_eip !51
  %16 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !51
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %16, i8* %15, i32 128, i32 4, i1 false), !mcsema_real_eip !51
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !51
  %17 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !51
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !51
  %18 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !51
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !51
  %19 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !51
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !51
  %20 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !51
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !51
  %21 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !51
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !51
  %22 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !51
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !51
  %23 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !51
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !51
  %24 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !51
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !51
  %25 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !51
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !51
  %26 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !51
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !51
  %27 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !51
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !51
  %28 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !51
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !51
  %29 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !51
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !51
  %30 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !51
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !51
  %31 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !51
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !51
  %32 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !51
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !51
  %33 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !51
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !51
  %34 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !51
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !51
  %35 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !51
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !51
  %36 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !51
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !51
  %37 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !51
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !51
  %38 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !51
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !51
  %39 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !51
  %40 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !51
  %41 = bitcast i8* %40 to i64*
  %42 = load i64, i64* %41, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !51
  %43 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !51
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !51
  %44 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !51
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !51
  %45 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !51
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !51
  %46 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !51
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !51
  %47 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !51
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !51
  %48 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !51
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !51
  %49 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !51
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !51
  %50 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !51
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !51
  %51 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !51
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !51
  %52 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !51
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !51
  %53 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !51
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !51
  %54 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !51
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !51
  %55 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !51
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !51
  %56 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !51
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !51
  %57 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !51
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !51
  %58 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !51
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !51
  %59 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !51
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !51
  %60 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !51
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !51
  %61 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !51
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !51
  %62 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !51
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !51
  %63 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !51
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !51
  %64 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !51
  %65 = add i64 %3, -24, !mcsema_real_eip !51
  %66 = inttoptr i64 %65 to i32*
  %67 = load i32, i32* %66, align 4, !mcsema_real_eip !51
  %68 = add i32 %67, -1
  store i32 %68, i32* %66, align 4, !mcsema_real_eip !52
  %69 = add i64 %3, -20, !mcsema_real_eip !4
  %70 = inttoptr i64 %69 to i32*
  %71 = load i32, i32* %70, align 4, !mcsema_real_eip !4
  %72 = sext i32 %71 to i64, !mcsema_real_eip !4
  %73 = sext i32 %68 to i64, !mcsema_real_eip !5
  %74 = mul nsw i64 %73, 11, !mcsema_real_eip !6
  %75 = add i64 %74, ptrtoint (%1* @data_0x359 to i64)
  %76 = add i64 %75, %72, !mcsema_real_eip !7
  %77 = inttoptr i64 %76 to i8*
  %78 = load i8, i8* %77, align 1, !mcsema_real_eip !7
  %79 = sext i8 %78 to i64
  %80 = and i64 %79, 4294967295
  switch i8 %78, label %block_0x1f2 [
    i8 35, label %block_0x298
    i8 32, label %block_0x242
  ]

block_0x298:                                      ; preds = %block_0x24e, %entry, %block_0x11e
  %RSI_val.0 = phi i64 [ %126, %block_0x11e ], [ %80, %entry ], [ %80, %block_0x24e ]
  %RDX_val.0 = phi i64 [ %118, %block_0x11e ], [ %74, %entry ], [ %74, %block_0x24e ]
  %RCX_val.0 = phi i64 [ %174, %block_0x11e ], [ %72, %entry ], [ %72, %block_0x24e ]
  %.sink = phi i32 [ 1, %block_0x11e ], [ 0, %entry ], [ 2, %block_0x24e ]
  %81 = add i64 %3, -4
  %82 = inttoptr i64 %81 to i32*
  store i32 %.sink, i32* %82, align 4
  %83 = zext i32 %.sink to i64, !mcsema_real_eip !8
  %uadd348 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_local_stack_end_, i64 96)
  %84 = extractvalue { i64, i1 } %uadd348, 0
  %85 = xor i64 %84, %_local_stack_end_, !mcsema_real_eip !9
  %86 = and i64 %85, 16, !mcsema_real_eip !9
  %87 = icmp ne i64 %86, 0, !mcsema_real_eip !9
  %88 = icmp slt i64 %84, 0
  %89 = add i64 %_local_stack_start_, -9223372036854775724
  %90 = and i64 %85, %89, !mcsema_real_eip !9
  %91 = icmp slt i64 %90, 0
  %92 = trunc i64 %84 to i8, !mcsema_real_eip !9
  %93 = tail call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !9
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  %96 = extractvalue { i64, i1 } %uadd348, 1
  %97 = inttoptr i64 %84 to i64*, !mcsema_real_eip !10
  %98 = load i64, i64* %97, align 8, !mcsema_real_eip !10
  %99 = add i64 %84, 16, !mcsema_real_eip !11
  store i64 %83, i64* %RAX, align 8, !mcsema_real_eip !11
  store i64 %1, i64* %RBX, align 8, !mcsema_real_eip !11
  store i64 %RCX_val.0, i64* %RCX, align 8, !mcsema_real_eip !11
  store i64 %RDX_val.0, i64* %RDX, align 8, !mcsema_real_eip !11
  store i64 %RSI_val.0, i64* %RSI, align 8, !mcsema_real_eip !11
  store i64 %2, i64* %RDI, align 8, !mcsema_real_eip !11
  store i64 %99, i64* %RSP, align 8, !mcsema_real_eip !11
  store i64 %98, i64* %RBP, align 8, !mcsema_real_eip !11
  store i64 %4, i64* %R8, align 8, !mcsema_real_eip !11
  store i64 %5, i64* %R9, align 8, !mcsema_real_eip !11
  store i64 %6, i64* %R10, align 8, !mcsema_real_eip !11
  store i64 %7, i64* %R11, align 8, !mcsema_real_eip !11
  store i64 %8, i64* %R12, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R13, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R14, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %R15, align 8, !mcsema_real_eip !11
  store i64 %12, i64* %RIP, align 8, !mcsema_real_eip !11
  store i1 %96, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 %95, i1* %PF, align 1, !mcsema_real_eip !11
  store i1 %87, i1* %AF, align 1, !mcsema_real_eip !11
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 %88, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 %91, i1* %OF, align 1, !mcsema_real_eip !11
  store i1 %13, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* nonnull %16, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %17, i1* %FPU_B, align 1, !mcsema_real_eip !11
  store i1 %18, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  store i3 %19, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  store i1 %20, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  store i1 %21, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  store i1 %22, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  store i1 %23, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_X, align 1, !mcsema_real_eip !11
  store i2 %32, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  store i2 %33, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  store i1 %34, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  store i1 %35, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  store i1 %36, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  store i1 %37, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  store i64 %42, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  store i64 %44, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  store i16 %45, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  store i64 %46, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  store i128 %47, i128* %XMM0, align 1, !mcsema_real_eip !11
  store i128 %48, i128* %XMM1, align 1, !mcsema_real_eip !11
  store i128 %49, i128* %XMM2, align 1, !mcsema_real_eip !11
  store i128 %50, i128* %XMM3, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM4, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM5, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM6, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM7, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM8, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM9, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM10, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM11, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM12, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM13, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM14, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM15, align 1, !mcsema_real_eip !11
  store i64 %63, i64* %STACK_BASE, align 1, !mcsema_real_eip !11
  store i64 %64, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11

block_0x242:                                      ; preds = %entry, %block_0x22c
  %100 = add i64 %3, -28, !mcsema_real_eip !12
  %101 = inttoptr i64 %100 to i32*
  %102 = load i32, i32* %101, align 4, !mcsema_real_eip !12
  %103 = icmp eq i32 %102, %71
  br i1 %103, label %block_0x242.block_0x24e_crit_edge, label %block_0x266, !mcsema_real_eip !13

block_0x242.block_0x24e_crit_edge:                ; preds = %block_0x242
  %.pre = add i64 %3, -32, !mcsema_real_eip !14
  %.pre277 = inttoptr i64 %.pre to i32*
  br label %block_0x24e

block_0x1f2:                                      ; preds = %entry
  %notlhs = icmp ne i32 %67, 3
  %notrhs = icmp ne i8 %78, 124
  %or.cond.not = or i1 %notlhs, %notrhs
  %104 = icmp slt i32 %71, 1
  %or.cond276 = or i1 %104, %or.cond.not
  br i1 %or.cond276, label %block_0x236, label %block_0x22c, !mcsema_real_eip !15

block_0x236:                                      ; preds = %block_0x1f2, %block_0x22c
  %105 = add i64 %3, -28, !mcsema_real_eip !16
  %106 = inttoptr i64 %105 to i32*
  %107 = load i32, i32* %106, align 4, !mcsema_real_eip !16
  store i32 %107, i32* %70, align 4, !mcsema_real_eip !17
  %108 = add i64 %3, -32, !mcsema_real_eip !18
  %109 = inttoptr i64 %108 to i32*
  %110 = load i32, i32* %109, align 4, !mcsema_real_eip !18
  store i32 %110, i32* %66, align 4, !mcsema_real_eip !19
  %111 = load i32, i32* %106, align 4, !mcsema_real_eip !12
  %112 = load i32, i32* %70, align 4, !mcsema_real_eip !20
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %block_0x24e, label %block_0x266, !mcsema_real_eip !13

block_0x266:                                      ; preds = %block_0x24e, %block_0x236, %block_0x242
  %114 = phi i32 [ %133, %block_0x24e ], [ %110, %block_0x236 ], [ %68, %block_0x242 ]
  %115 = phi i32 [ %132, %block_0x24e ], [ %112, %block_0x236 ], [ %71, %block_0x242 ]
  %116 = sext i32 %115 to i64, !mcsema_real_eip !21
  %117 = sext i32 %114 to i64, !mcsema_real_eip !22
  %118 = mul nsw i64 %117, 11, !mcsema_real_eip !23
  %119 = add i64 %116, ptrtoint (%1* @data_0x359 to i64)
  %120 = add i64 %119, %118, !mcsema_real_eip !24
  %121 = inttoptr i64 %120 to i8*
  store i8 88, i8* %121, align 1, !mcsema_real_eip !24
  %122 = add i64 %3, -36, !mcsema_real_eip !25
  %123 = inttoptr i64 %122 to i32*
  %124 = load i32, i32* %123, align 4, !mcsema_real_eip !25
  %125 = add i32 %124, 1
  %126 = zext i32 %125 to i64, !mcsema_real_eip !26
  store i32 %125, i32* %123, align 4, !mcsema_real_eip !27
  %127 = add i32 %124, -27
  %128 = icmp slt i32 %127, 0
  %129 = sub i32 26, %124
  %130 = and i32 %125, %129
  %131 = icmp slt i32 %130, 0
  %tmp = xor i1 %128, %131
  br i1 %tmp, label %block_0x11e, label %block_0x291, !mcsema_real_eip !28

block_0x24e:                                      ; preds = %block_0x242.block_0x24e_crit_edge, %block_0x236
  %.pre-phi278 = phi i32* [ %.pre277, %block_0x242.block_0x24e_crit_edge ], [ %109, %block_0x236 ]
  %132 = phi i32 [ %71, %block_0x242.block_0x24e_crit_edge ], [ %111, %block_0x236 ]
  %133 = phi i32 [ %68, %block_0x242.block_0x24e_crit_edge ], [ %110, %block_0x236 ]
  %134 = load i32, i32* %.pre-phi278, align 4, !mcsema_real_eip !14
  %135 = icmp eq i32 %134, %133
  br i1 %135, label %block_0x298, label %block_0x266, !mcsema_real_eip !29

block_0x22c:                                      ; preds = %block_0x1f2
  %136 = add i32 %71, -11
  %137 = icmp slt i32 %136, 0
  %138 = sub i32 10, %71
  %139 = and i32 %138, %71
  %140 = icmp slt i32 %139, 0
  %141 = xor i1 %137, %140
  br i1 %141, label %block_0x242, label %block_0x236, !mcsema_real_eip !30

block_0x291:                                      ; preds = %block_0x266
  %142 = add i64 %3, -4, !mcsema_real_eip !31
  %143 = inttoptr i64 %142 to i32*
  store i32 1, i32* %143, align 4, !mcsema_real_eip !31
  %uadd357 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_local_stack_end_, i64 96)
  %144 = extractvalue { i64, i1 } %uadd357, 0
  %145 = xor i64 %144, %_local_stack_end_, !mcsema_real_eip !9
  %146 = and i64 %145, 16, !mcsema_real_eip !9
  %147 = icmp ne i64 %146, 0, !mcsema_real_eip !9
  %148 = icmp slt i64 %144, 0
  %149 = add i64 %_local_stack_start_, -9223372036854775724
  %150 = and i64 %145, %149, !mcsema_real_eip !9
  %151 = icmp slt i64 %150, 0
  %152 = trunc i64 %144 to i8, !mcsema_real_eip !9
  %153 = tail call i8 @llvm.ctpop.i8(i8 %152), !mcsema_real_eip !9
  %154 = and i8 %153, 1
  %155 = icmp eq i8 %154, 0
  %156 = extractvalue { i64, i1 } %uadd357, 1
  %157 = inttoptr i64 %144 to i64*, !mcsema_real_eip !10
  %158 = load i64, i64* %157, align 8, !mcsema_real_eip !10
  %159 = add i64 %144, 16, !mcsema_real_eip !11
  store i64 1, i64* %RAX, align 8, !mcsema_real_eip !11
  store i64 %1, i64* %RBX, align 8, !mcsema_real_eip !11
  store i64 %116, i64* %RCX, align 8, !mcsema_real_eip !11
  store i64 %118, i64* %RDX, align 8, !mcsema_real_eip !11
  store i64 %126, i64* %RSI, align 8, !mcsema_real_eip !11
  store i64 %2, i64* %RDI, align 8, !mcsema_real_eip !11
  store i64 %159, i64* %RSP, align 8, !mcsema_real_eip !11
  store i64 %158, i64* %RBP, align 8, !mcsema_real_eip !11
  store i64 %4, i64* %R8, align 8, !mcsema_real_eip !11
  store i64 %5, i64* %R9, align 8, !mcsema_real_eip !11
  store i64 %6, i64* %R10, align 8, !mcsema_real_eip !11
  store i64 %7, i64* %R11, align 8, !mcsema_real_eip !11
  store i64 %8, i64* %R12, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R13, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R14, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %R15, align 8, !mcsema_real_eip !11
  store i64 %12, i64* %RIP, align 8, !mcsema_real_eip !11
  store i1 %156, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 %155, i1* %PF, align 1, !mcsema_real_eip !11
  store i1 %147, i1* %AF, align 1, !mcsema_real_eip !11
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 %148, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 %151, i1* %OF, align 1, !mcsema_real_eip !11
  store i1 %13, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* nonnull %16, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %17, i1* %FPU_B, align 1, !mcsema_real_eip !11
  store i1 %18, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  store i3 %19, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  store i1 %20, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  store i1 %21, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  store i1 %22, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  store i1 %23, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_X, align 1, !mcsema_real_eip !11
  store i2 %32, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  store i2 %33, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  store i1 %34, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  store i1 %35, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  store i1 %36, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  store i1 %37, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  store i64 %42, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  store i64 %44, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  store i16 %45, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  store i64 %46, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  store i128 %47, i128* %XMM0, align 1, !mcsema_real_eip !11
  store i128 %48, i128* %XMM1, align 1, !mcsema_real_eip !11
  store i128 %49, i128* %XMM2, align 1, !mcsema_real_eip !11
  store i128 %50, i128* %XMM3, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM4, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM5, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM6, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM7, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM8, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM9, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM10, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM11, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM12, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM13, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM14, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM15, align 1, !mcsema_real_eip !11
  store i64 %63, i64* %STACK_BASE, align 1, !mcsema_real_eip !11
  store i64 %64, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11

block_0x11e:                                      ; preds = %block_0x266
  %160 = load i32, i32* %70, align 4, !mcsema_real_eip !32
  %161 = add i64 %3, -28, !mcsema_real_eip !33
  %162 = inttoptr i64 %161 to i32*
  store i32 %160, i32* %162, align 4, !mcsema_real_eip !33
  %163 = load i32, i32* %66, align 4, !mcsema_real_eip !34
  %164 = add i64 %3, -32, !mcsema_real_eip !35
  %165 = inttoptr i64 %164 to i32*
  store i32 %163, i32* %165, align 4, !mcsema_real_eip !35
  %166 = load i32, i32* %123, align 4, !mcsema_real_eip !36
  %167 = sext i32 %166 to i64, !mcsema_real_eip !36
  %168 = add i64 %3, -64, !mcsema_real_eip !37
  %169 = add i64 %168, %167, !mcsema_real_eip !37
  %170 = inttoptr i64 %169 to i8*
  %171 = load i8, i8* %170, align 1, !mcsema_real_eip !37
  %172 = sext i8 %171 to i32, !mcsema_real_eip !37
  %173 = add nsw i32 %172, -97
  %174 = zext i32 %173 to i64, !mcsema_real_eip !38
  %175 = add nsw i32 %172, -119
  %176 = xor i32 %175, %173, !mcsema_real_eip !39
  %177 = icmp eq i32 %175, 0, !mcsema_real_eip !39
  %178 = icmp ult i32 %173, 22, !mcsema_real_eip !39
  %179 = add i64 %3, -80, !mcsema_real_eip !40
  %180 = inttoptr i64 %179 to i64*, !mcsema_real_eip !40
  store i64 %174, i64* %180, align 8, !mcsema_real_eip !40
  %181 = add i64 %3, -84, !mcsema_real_eip !41
  %182 = inttoptr i64 %181 to i32*
  store i32 %175, i32* %182, align 4, !mcsema_real_eip !41
  %.demorgan = or i1 %178, %177
  br i1 %.demorgan, label %block_0x148, label %block_0x298, !mcsema_real_eip !42

block_0x148:                                      ; preds = %block_0x11e
  %183 = and i32 %176, %173, !mcsema_real_eip !39
  %184 = icmp slt i32 %183, 0
  %185 = icmp slt i8 %171, 119
  %186 = trunc i32 %175 to i8, !mcsema_real_eip !39
  %187 = tail call i8 @llvm.ctpop.i8(i8 %186), !mcsema_real_eip !39
  %188 = and i8 %187, 1
  %189 = icmp eq i8 %188, 0
  %190 = and i32 %176, 16
  %191 = icmp eq i32 %190, 0
  %192 = load i64, i64* %180, align 8, !mcsema_real_eip !43
  %193 = shl i64 %192, 3
  %194 = add i64 %193, ptrtoint (%0* @data_0x2a1 to i64), !mcsema_real_eip !44
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !44
  %196 = load i64, i64* %195, align 8, !mcsema_real_eip !44
  store i64 %192, i64* %RAX, align 8, !mcsema_real_eip !45
  store i64 %1, i64* %RBX, align 8, !mcsema_real_eip !45
  store i64 %196, i64* %RCX, align 8, !mcsema_real_eip !45
  store i64 %118, i64* %RDX, align 8, !mcsema_real_eip !45
  store i64 %126, i64* %RSI, align 8, !mcsema_real_eip !45
  store i64 %2, i64* %RDI, align 8, !mcsema_real_eip !45
  store i64 %_local_stack_end_, i64* %RSP, align 8, !mcsema_real_eip !45
  store i64 %3, i64* %RBP, align 8, !mcsema_real_eip !45
  store i64 %4, i64* %R8, align 8, !mcsema_real_eip !45
  store i64 %5, i64* %R9, align 8, !mcsema_real_eip !45
  store i64 %6, i64* %R10, align 8, !mcsema_real_eip !45
  store i64 %7, i64* %R11, align 8, !mcsema_real_eip !45
  store i64 %8, i64* %R12, align 8, !mcsema_real_eip !45
  store i64 %9, i64* %R13, align 8, !mcsema_real_eip !45
  store i64 %10, i64* %R14, align 8, !mcsema_real_eip !45
  store i64 %11, i64* %R15, align 8, !mcsema_real_eip !45
  store i64 %12, i64* %RIP, align 8, !mcsema_real_eip !45
  store i1 %178, i1* %CF, align 1, !mcsema_real_eip !45
  store i1 %189, i1* %PF, align 1, !mcsema_real_eip !45
  store i1 %191, i1* %AF, align 1, !mcsema_real_eip !45
  store i1 %177, i1* %ZF, align 1, !mcsema_real_eip !45
  store i1 %185, i1* %SF, align 1, !mcsema_real_eip !45
  store i1 %184, i1* %OF, align 1, !mcsema_real_eip !45
  store i1 %13, i1* %DF, align 1, !mcsema_real_eip !45
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* nonnull %16, i32 128, i32 8, i1 false), !mcsema_real_eip !45
  store i1 %17, i1* %FPU_B, align 1, !mcsema_real_eip !45
  store i1 %18, i1* %FPU_C3, align 1, !mcsema_real_eip !45
  store i3 %19, i3* %FPU_TOP, align 1, !mcsema_real_eip !45
  store i1 %20, i1* %FPU_C2, align 1, !mcsema_real_eip !45
  store i1 %21, i1* %FPU_C1, align 1, !mcsema_real_eip !45
  store i1 %22, i1* %FPU_C0, align 1, !mcsema_real_eip !45
  store i1 %23, i1* %FPU_ES, align 1, !mcsema_real_eip !45
  store i1 %24, i1* %FPU_SF, align 1, !mcsema_real_eip !45
  store i1 %25, i1* %FPU_PE, align 1, !mcsema_real_eip !45
  store i1 %26, i1* %FPU_UE, align 1, !mcsema_real_eip !45
  store i1 %27, i1* %FPU_OE, align 1, !mcsema_real_eip !45
  store i1 %28, i1* %FPU_ZE, align 1, !mcsema_real_eip !45
  store i1 %29, i1* %FPU_DE, align 1, !mcsema_real_eip !45
  store i1 %30, i1* %FPU_IE, align 1, !mcsema_real_eip !45
  store i1 %31, i1* %FPU_X, align 1, !mcsema_real_eip !45
  store i2 %32, i2* %FPU_RC, align 1, !mcsema_real_eip !45
  store i2 %33, i2* %FPU_PC, align 1, !mcsema_real_eip !45
  store i1 %34, i1* %FPU_PM, align 1, !mcsema_real_eip !45
  store i1 %35, i1* %FPU_UM, align 1, !mcsema_real_eip !45
  store i1 %36, i1* %FPU_OM, align 1, !mcsema_real_eip !45
  store i1 %37, i1* %FPU_ZM, align 1, !mcsema_real_eip !45
  store i1 %38, i1* %FPU_DM, align 1, !mcsema_real_eip !45
  store i1 %39, i1* %FPU_IM, align 1, !mcsema_real_eip !45
  store i64 %42, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !45
  store i64 %44, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !45
  store i16 %45, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !45
  store i64 %46, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !45
  store i128 %47, i128* %XMM0, align 1, !mcsema_real_eip !45
  store i128 %48, i128* %XMM1, align 1, !mcsema_real_eip !45
  store i128 %49, i128* %XMM2, align 1, !mcsema_real_eip !45
  store i128 %50, i128* %XMM3, align 1, !mcsema_real_eip !45
  store i128 %51, i128* %XMM4, align 1, !mcsema_real_eip !45
  store i128 %52, i128* %XMM5, align 1, !mcsema_real_eip !45
  store i128 %53, i128* %XMM6, align 1, !mcsema_real_eip !45
  store i128 %54, i128* %XMM7, align 1, !mcsema_real_eip !45
  store i128 %55, i128* %XMM8, align 1, !mcsema_real_eip !45
  store i128 %56, i128* %XMM9, align 1, !mcsema_real_eip !45
  store i128 %57, i128* %XMM10, align 1, !mcsema_real_eip !45
  store i128 %58, i128* %XMM11, align 1, !mcsema_real_eip !45
  store i128 %59, i128* %XMM12, align 1, !mcsema_real_eip !45
  store i128 %60, i128* %XMM13, align 1, !mcsema_real_eip !45
  store i128 %61, i128* %XMM14, align 1, !mcsema_real_eip !45
  store i128 %62, i128* %XMM15, align 1, !mcsema_real_eip !45
  store i64 %63, i64* %STACK_BASE, align 1, !mcsema_real_eip !45
  store i64 %64, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !45
  call void @llvm.trap()
  unreachable
}

declare x86_64_sysvcc i64 @read(i64 inreg, i64 inreg, i64 inreg) local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) local_unnamed_addr {
driverBlockRaw:
  %_local_stack_alloc_247.i = alloca [104 x i64], align 8
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !53
  %1 = bitcast [104 x i64]* %_local_stack_alloc_247.i to i8*
  call void @llvm.lifetime.start(i64 832, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %_local_stack_start_.i = ptrtoint [104 x i64]* %_local_stack_alloc_247.i to i64
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !53
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !53
  %2 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !53
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !53
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !53
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !53
  %3 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !53
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !53
  %4 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !53
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !53
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !53
  %5 = load i64, i64* %RBP.i, align 8, !mcsema_real_eip !53
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !53
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !53
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !53
  %6 = load i64, i64* %R11.i, align 8, !mcsema_real_eip !53
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !53
  %7 = load i64, i64* %R12.i, align 8, !mcsema_real_eip !53
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !53
  %8 = load i64, i64* %R13.i, align 8, !mcsema_real_eip !53
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !53
  %9 = load i64, i64* %R14.i, align 8, !mcsema_real_eip !53
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !53
  %10 = load i64, i64* %R15.i, align 8, !mcsema_real_eip !53
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !53
  %11 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !53
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !53
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !53
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !53
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !53
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !53
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !53
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !53
  %12 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !53
  %13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !53
  %14 = bitcast x86_fp80* %13 to i8*, !mcsema_real_eip !53
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %14, i32 128, i32 4, i1 false), !mcsema_real_eip !53
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !53
  %15 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !53
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !53
  %16 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !53
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !53
  %17 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !53
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !53
  %18 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !53
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !53
  %19 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !53
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !53
  %20 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !53
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !53
  %21 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !53
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !53
  %22 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !53
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !53
  %23 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !53
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !53
  %24 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !53
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !53
  %25 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !53
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !53
  %26 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !53
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !53
  %27 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !53
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !53
  %28 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !53
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !53
  %29 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !53
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !53
  %30 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !53
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !53
  %31 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !53
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !53
  %32 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !53
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !53
  %33 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !53
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !53
  %34 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !53
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !53
  %35 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !53
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !53
  %36 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !53
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !53
  %37 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !53
  %38 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !53
  %39 = bitcast i8* %38 to i64*
  %40 = load i64, i64* %39, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !53
  %41 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !53
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !53
  %42 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !53
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !53
  %43 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !53
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !53
  %44 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !53
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !53
  %45 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !53
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !53
  %46 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !53
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !53
  %47 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !53
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !53
  %48 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !53
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !53
  %49 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !53
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !53
  %50 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !53
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !53
  %51 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !53
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !53
  %52 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !53
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !53
  %53 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !53
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !53
  %54 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !53
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !53
  %55 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !53
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !53
  %56 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !53
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !53
  %57 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !53
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !53
  %58 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !53
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !53
  %59 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !53
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !53
  %60 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !53
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !53
  %61 = load i64, i64* %STACK_BASE.i, align 8, !mcsema_real_eip !53
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !53
  %62 = load i64, i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !53
  %63 = add i64 %_local_stack_start_.i, 96
  %64 = inttoptr i64 %63 to i64*
  store i64 %5, i64* %64, align 8, !mcsema_real_eip !53
  %65 = add i64 %_local_stack_start_.i, 32, !mcsema_real_eip !54
  %66 = add i64 %_local_stack_start_.i, 92, !mcsema_real_eip !55
  %67 = inttoptr i64 %66 to i32*
  store i32 0, i32* %67, align 4, !mcsema_real_eip !55
  %68 = add i64 %_local_stack_start_.i, 88, !mcsema_real_eip !56
  %69 = trunc i64 %4 to i32, !mcsema_real_eip !56
  %70 = inttoptr i64 %68 to i32*
  store i32 %69, i32* %70, align 8, !mcsema_real_eip !56
  %71 = add i64 %_local_stack_start_.i, 80, !mcsema_real_eip !57
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !57
  store i64 %3, i64* %72, align 8, !mcsema_real_eip !57
  %73 = add i64 %_local_stack_start_.i, 60, !mcsema_real_eip !58
  %74 = inttoptr i64 %73 to i32*
  store i32 0, i32* %74, align 4, !mcsema_real_eip !58
  %75 = add i64 %_local_stack_start_.i, 76, !mcsema_real_eip !59
  %76 = inttoptr i64 %75 to i32*
  store i32 1, i32* %76, align 4, !mcsema_real_eip !59
  %77 = add i64 %_local_stack_start_.i, 72, !mcsema_real_eip !60
  %78 = inttoptr i64 %77 to i32*
  store i32 1, i32* %78, align 8, !mcsema_real_eip !60
  %79 = load i32, i32* %76, align 4, !mcsema_real_eip !61
  %80 = sext i32 %79 to i64, !mcsema_real_eip !61
  %81 = add i64 %80, add (i64 ptrtoint (%1* @data_0x359 to i64), i64 11), !mcsema_real_eip !62
  %82 = inttoptr i64 %81 to i8*
  store i8 88, i8* %82, align 1, !mcsema_real_eip !62
  %83 = tail call x86_64_sysvcc i64 @read(i64 0, i64 %65, i64 28), !mcsema_real_eip !63
  %84 = add i64 %_local_stack_start_.i, 24, !mcsema_real_eip !64
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !64
  store i64 %83, i64* %85, align 8, !mcsema_real_eip !64
  %86 = load i32, i32* %74, align 4, !mcsema_real_eip !65
  %87 = add i32 %86, -28
  %88 = icmp slt i32 %87, 0
  %89 = sub i32 27, %86
  %90 = and i32 %89, %86
  %91 = icmp slt i32 %90, 0
  %tmp.i = xor i1 %88, %91
  br i1 %tmp.i, label %block_0x11e.i, label %block_0x291.i, !mcsema_real_eip !28

block_0x291.i:                                    ; preds = %driverBlockRaw
  store i32 1, i32* %67, align 4, !mcsema_real_eip !31
  %92 = xor i64 %63, %_local_stack_start_.i, !mcsema_real_eip !9
  %93 = and i64 %92, 16, !mcsema_real_eip !9
  %94 = icmp ne i64 %93, 0, !mcsema_real_eip !9
  %95 = icmp slt i64 %63, 0
  %96 = icmp eq i64 %63, 0, !mcsema_real_eip !9
  %97 = xor i64 %_local_stack_start_.i, -9223372036854775808, !mcsema_real_eip !9
  %98 = and i64 %92, %97, !mcsema_real_eip !9
  %99 = icmp slt i64 %98, 0
  %100 = trunc i64 %63 to i8, !mcsema_real_eip !9
  %101 = tail call i8 @llvm.ctpop.i8(i8 %100), !mcsema_real_eip !9
  %102 = and i8 %101, 1
  %103 = icmp eq i8 %102, 0
  %104 = icmp ugt [104 x i64]* %_local_stack_alloc_247.i, inttoptr (i64 -97 to [104 x i64]*)
  %105 = load i64, i64* %64, align 8, !mcsema_real_eip !10
  %106 = add i64 %_local_stack_start_.i, 112, !mcsema_real_eip !11
  store i64 1, i64* %RAX.i, align 8, !mcsema_real_eip !11
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !11
  %107 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> <i64 28, i64 28>, <2 x i64>* %107, align 8
  store i64 %65, i64* %RSI.i, align 8, !mcsema_real_eip !11
  store i64 0, i64* %RDI.i, align 8, !mcsema_real_eip !11
  store i64 %106, i64* %RSP.i, align 8, !mcsema_real_eip !11
  store i64 %105, i64* %RBP.i, align 8, !mcsema_real_eip !11
  store i64 %65, i64* %R8.i, align 8, !mcsema_real_eip !11
  %108 = bitcast i64* %R9.i to <2 x i64>*
  store <2 x i64> <i64 add (i64 ptrtoint (%1* @data_0x359 to i64), i64 11), i64 11>, <2 x i64>* %108, align 8
  store i64 %6, i64* %R11.i, align 8, !mcsema_real_eip !11
  store i64 %7, i64* %R12.i, align 8, !mcsema_real_eip !11
  store i64 %8, i64* %R13.i, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R14.i, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R15.i, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %RIP.i, align 8, !mcsema_real_eip !11
  store i1 %104, i1* %CF.i, align 1, !mcsema_real_eip !11
  store i1 %103, i1* %PF.i, align 1, !mcsema_real_eip !11
  store i1 %94, i1* %AF.i, align 1, !mcsema_real_eip !11
  store i1 %96, i1* %ZF.i, align 1, !mcsema_real_eip !11
  store i1 %95, i1* %SF.i, align 1, !mcsema_real_eip !11
  store i1 %99, i1* %OF.i, align 1, !mcsema_real_eip !11
  store i1 %12, i1* %DF.i, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %15, i1* %FPU_B.i, align 1, !mcsema_real_eip !11
  store i1 %16, i1* %FPU_C3.i, align 1, !mcsema_real_eip !11
  store i3 %17, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !11
  store i1 %18, i1* %FPU_C2.i, align 1, !mcsema_real_eip !11
  store i1 %19, i1* %FPU_C1.i, align 1, !mcsema_real_eip !11
  store i1 %20, i1* %FPU_C0.i, align 1, !mcsema_real_eip !11
  store i1 %21, i1* %FPU_ES.i, align 1, !mcsema_real_eip !11
  store i1 %22, i1* %FPU_SF.i, align 1, !mcsema_real_eip !11
  store i1 %23, i1* %FPU_PE.i, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_UE.i, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_OE.i, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_DE.i, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_IE.i, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_X.i, align 1, !mcsema_real_eip !11
  store i2 %30, i2* %FPU_RC.i, align 1, !mcsema_real_eip !11
  store i2 %31, i2* %FPU_PC.i, align 1, !mcsema_real_eip !11
  store i1 %32, i1* %FPU_PM.i, align 1, !mcsema_real_eip !11
  store i1 %33, i1* %FPU_UM.i, align 1, !mcsema_real_eip !11
  store i1 %34, i1* %FPU_OM.i, align 1, !mcsema_real_eip !11
  store i1 %35, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !11
  store i1 %36, i1* %FPU_DM.i, align 1, !mcsema_real_eip !11
  store i1 %37, i1* %FPU_IM.i, align 1, !mcsema_real_eip !11
  store i64 %40, i64* %39, align 4
  store i16 %41, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !11
  store i64 %42, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !11
  store i16 %43, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !11
  store i64 %44, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !11
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !11
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !11
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !11
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !11
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !11
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !11
  store i64 %61, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !11
  store i64 %62, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !11
  call void @llvm.lifetime.end(i64 832, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  br label %sub_b0.exit

block_0x11e.i:                                    ; preds = %driverBlockRaw
  %109 = load i32, i32* %76, align 4, !mcsema_real_eip !32
  %110 = add i64 %_local_stack_start_.i, 68, !mcsema_real_eip !33
  %111 = inttoptr i64 %110 to i32*
  store i32 %109, i32* %111, align 4, !mcsema_real_eip !33
  %112 = load i32, i32* %78, align 8, !mcsema_real_eip !34
  %113 = add i64 %_local_stack_start_.i, 64, !mcsema_real_eip !35
  %114 = inttoptr i64 %113 to i32*
  store i32 %112, i32* %114, align 8, !mcsema_real_eip !35
  %115 = load i32, i32* %74, align 4, !mcsema_real_eip !36
  %116 = sext i32 %115 to i64, !mcsema_real_eip !36
  %117 = add i64 %116, %65, !mcsema_real_eip !37
  %118 = inttoptr i64 %117 to i8*
  %119 = load i8, i8* %118, align 1, !mcsema_real_eip !37
  %120 = sext i8 %119 to i32, !mcsema_real_eip !37
  %121 = add nsw i32 %120, -97
  %122 = zext i32 %121 to i64, !mcsema_real_eip !38
  %123 = add nsw i32 %120, -119
  %124 = xor i32 %123, %121, !mcsema_real_eip !39
  %125 = icmp eq i32 %123, 0, !mcsema_real_eip !39
  %126 = icmp ult i32 %121, 22, !mcsema_real_eip !39
  %127 = add i64 %_local_stack_start_.i, 16, !mcsema_real_eip !40
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !40
  store i64 %122, i64* %128, align 8, !mcsema_real_eip !40
  %129 = add i64 %_local_stack_start_.i, 12, !mcsema_real_eip !41
  %130 = inttoptr i64 %129 to i32*
  store i32 %123, i32* %130, align 4, !mcsema_real_eip !41
  %.demorgan.i = or i1 %126, %125
  br i1 %.demorgan.i, label %block_0x148.i, label %block_0x18e.i, !mcsema_real_eip !42

block_0x18e.i:                                    ; preds = %block_0x11e.i
  store i32 1, i32* %67, align 4, !mcsema_real_eip !46
  %131 = xor i64 %63, %_local_stack_start_.i, !mcsema_real_eip !9
  %132 = and i64 %131, 16, !mcsema_real_eip !9
  %133 = icmp ne i64 %132, 0, !mcsema_real_eip !9
  %134 = icmp slt i64 %63, 0
  %135 = icmp eq i64 %63, 0, !mcsema_real_eip !9
  %136 = xor i64 %_local_stack_start_.i, -9223372036854775808, !mcsema_real_eip !9
  %137 = and i64 %131, %136, !mcsema_real_eip !9
  %138 = icmp slt i64 %137, 0
  %139 = trunc i64 %63 to i8, !mcsema_real_eip !9
  %140 = tail call i8 @llvm.ctpop.i8(i8 %139), !mcsema_real_eip !9
  %141 = and i8 %140, 1
  %142 = icmp eq i8 %141, 0
  %143 = icmp ugt [104 x i64]* %_local_stack_alloc_247.i, inttoptr (i64 -97 to [104 x i64]*)
  %144 = load i64, i64* %64, align 8, !mcsema_real_eip !10
  %145 = add i64 %_local_stack_start_.i, 112, !mcsema_real_eip !11
  store i64 1, i64* %RAX.i, align 8, !mcsema_real_eip !11
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !11
  store i64 %122, i64* %RCX.i, align 8, !mcsema_real_eip !11
  store i64 28, i64* %RDX.i, align 8, !mcsema_real_eip !11
  store i64 %65, i64* %RSI.i, align 8, !mcsema_real_eip !11
  store i64 0, i64* %RDI.i, align 8, !mcsema_real_eip !11
  store i64 %145, i64* %RSP.i, align 8, !mcsema_real_eip !11
  store i64 %144, i64* %RBP.i, align 8, !mcsema_real_eip !11
  store i64 %65, i64* %R8.i, align 8, !mcsema_real_eip !11
  %146 = bitcast i64* %R9.i to <2 x i64>*
  store <2 x i64> <i64 add (i64 ptrtoint (%1* @data_0x359 to i64), i64 11), i64 11>, <2 x i64>* %146, align 8
  store i64 %6, i64* %R11.i, align 8, !mcsema_real_eip !11
  store i64 %7, i64* %R12.i, align 8, !mcsema_real_eip !11
  store i64 %8, i64* %R13.i, align 8, !mcsema_real_eip !11
  store i64 %9, i64* %R14.i, align 8, !mcsema_real_eip !11
  store i64 %10, i64* %R15.i, align 8, !mcsema_real_eip !11
  store i64 %11, i64* %RIP.i, align 8, !mcsema_real_eip !11
  store i1 %143, i1* %CF.i, align 1, !mcsema_real_eip !11
  store i1 %142, i1* %PF.i, align 1, !mcsema_real_eip !11
  store i1 %133, i1* %AF.i, align 1, !mcsema_real_eip !11
  store i1 %135, i1* %ZF.i, align 1, !mcsema_real_eip !11
  store i1 %134, i1* %SF.i, align 1, !mcsema_real_eip !11
  store i1 %138, i1* %OF.i, align 1, !mcsema_real_eip !11
  store i1 %12, i1* %DF.i, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %15, i1* %FPU_B.i, align 1, !mcsema_real_eip !11
  store i1 %16, i1* %FPU_C3.i, align 1, !mcsema_real_eip !11
  store i3 %17, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !11
  store i1 %18, i1* %FPU_C2.i, align 1, !mcsema_real_eip !11
  store i1 %19, i1* %FPU_C1.i, align 1, !mcsema_real_eip !11
  store i1 %20, i1* %FPU_C0.i, align 1, !mcsema_real_eip !11
  store i1 %21, i1* %FPU_ES.i, align 1, !mcsema_real_eip !11
  store i1 %22, i1* %FPU_SF.i, align 1, !mcsema_real_eip !11
  store i1 %23, i1* %FPU_PE.i, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_UE.i, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_OE.i, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_DE.i, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_IE.i, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_X.i, align 1, !mcsema_real_eip !11
  store i2 %30, i2* %FPU_RC.i, align 1, !mcsema_real_eip !11
  store i2 %31, i2* %FPU_PC.i, align 1, !mcsema_real_eip !11
  store i1 %32, i1* %FPU_PM.i, align 1, !mcsema_real_eip !11
  store i1 %33, i1* %FPU_UM.i, align 1, !mcsema_real_eip !11
  store i1 %34, i1* %FPU_OM.i, align 1, !mcsema_real_eip !11
  store i1 %35, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !11
  store i1 %36, i1* %FPU_DM.i, align 1, !mcsema_real_eip !11
  store i1 %37, i1* %FPU_IM.i, align 1, !mcsema_real_eip !11
  store i64 %40, i64* %39, align 4
  store i16 %41, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !11
  store i64 %42, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !11
  store i16 %43, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !11
  store i64 %44, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !11
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !11
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !11
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !11
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !11
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !11
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !11
  store i64 %61, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !11
  store i64 %62, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !11
  call void @llvm.lifetime.end(i64 832, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  br label %sub_b0.exit

block_0x148.i:                                    ; preds = %block_0x11e.i
  %147 = and i32 %124, %121, !mcsema_real_eip !39
  %148 = icmp slt i32 %147, 0
  %149 = icmp slt i8 %119, 119
  %150 = trunc i32 %123 to i8, !mcsema_real_eip !39
  %151 = tail call i8 @llvm.ctpop.i8(i8 %150), !mcsema_real_eip !39
  %152 = and i8 %151, 1
  %153 = icmp eq i8 %152, 0
  %154 = and i32 %124, 16
  %155 = icmp eq i32 %154, 0
  %156 = load i64, i64* %128, align 8, !mcsema_real_eip !43
  %157 = shl i64 %156, 3
  %158 = add i64 %157, ptrtoint (%0* @data_0x2a1 to i64), !mcsema_real_eip !44
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !44
  %160 = load i64, i64* %159, align 8, !mcsema_real_eip !44
  store i64 %156, i64* %RAX.i, align 8, !mcsema_real_eip !45
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !45
  store i64 %160, i64* %RCX.i, align 8, !mcsema_real_eip !45
  store i64 28, i64* %RDX.i, align 8, !mcsema_real_eip !45
  store i64 %65, i64* %RSI.i, align 8, !mcsema_real_eip !45
  store i64 0, i64* %RDI.i, align 8, !mcsema_real_eip !45
  store i64 %_local_stack_start_.i, i64* %RSP.i, align 8, !mcsema_real_eip !45
  store i64 %63, i64* %RBP.i, align 8, !mcsema_real_eip !45
  store i64 %65, i64* %R8.i, align 8, !mcsema_real_eip !45
  %161 = bitcast i64* %R9.i to <2 x i64>*
  store <2 x i64> <i64 add (i64 ptrtoint (%1* @data_0x359 to i64), i64 11), i64 11>, <2 x i64>* %161, align 8
  store i64 %6, i64* %R11.i, align 8, !mcsema_real_eip !45
  store i64 %7, i64* %R12.i, align 8, !mcsema_real_eip !45
  store i64 %8, i64* %R13.i, align 8, !mcsema_real_eip !45
  store i64 %9, i64* %R14.i, align 8, !mcsema_real_eip !45
  store i64 %10, i64* %R15.i, align 8, !mcsema_real_eip !45
  store i64 %11, i64* %RIP.i, align 8, !mcsema_real_eip !45
  store i1 %126, i1* %CF.i, align 1, !mcsema_real_eip !45
  store i1 %153, i1* %PF.i, align 1, !mcsema_real_eip !45
  store i1 %155, i1* %AF.i, align 1, !mcsema_real_eip !45
  store i1 %125, i1* %ZF.i, align 1, !mcsema_real_eip !45
  store i1 %149, i1* %SF.i, align 1, !mcsema_real_eip !45
  store i1 %148, i1* %OF.i, align 1, !mcsema_real_eip !45
  store i1 %12, i1* %DF.i, align 1, !mcsema_real_eip !45
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !45
  store i1 %15, i1* %FPU_B.i, align 1, !mcsema_real_eip !45
  store i1 %16, i1* %FPU_C3.i, align 1, !mcsema_real_eip !45
  store i3 %17, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !45
  store i1 %18, i1* %FPU_C2.i, align 1, !mcsema_real_eip !45
  store i1 %19, i1* %FPU_C1.i, align 1, !mcsema_real_eip !45
  store i1 %20, i1* %FPU_C0.i, align 1, !mcsema_real_eip !45
  store i1 %21, i1* %FPU_ES.i, align 1, !mcsema_real_eip !45
  store i1 %22, i1* %FPU_SF.i, align 1, !mcsema_real_eip !45
  store i1 %23, i1* %FPU_PE.i, align 1, !mcsema_real_eip !45
  store i1 %24, i1* %FPU_UE.i, align 1, !mcsema_real_eip !45
  store i1 %25, i1* %FPU_OE.i, align 1, !mcsema_real_eip !45
  store i1 %26, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !45
  store i1 %27, i1* %FPU_DE.i, align 1, !mcsema_real_eip !45
  store i1 %28, i1* %FPU_IE.i, align 1, !mcsema_real_eip !45
  store i1 %29, i1* %FPU_X.i, align 1, !mcsema_real_eip !45
  store i2 %30, i2* %FPU_RC.i, align 1, !mcsema_real_eip !45
  store i2 %31, i2* %FPU_PC.i, align 1, !mcsema_real_eip !45
  store i1 %32, i1* %FPU_PM.i, align 1, !mcsema_real_eip !45
  store i1 %33, i1* %FPU_UM.i, align 1, !mcsema_real_eip !45
  store i1 %34, i1* %FPU_OM.i, align 1, !mcsema_real_eip !45
  store i1 %35, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !45
  store i1 %36, i1* %FPU_DM.i, align 1, !mcsema_real_eip !45
  store i1 %37, i1* %FPU_IM.i, align 1, !mcsema_real_eip !45
  store i64 %40, i64* %39, align 4
  store i16 %41, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !45
  store i64 %42, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !45
  store i16 %43, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !45
  store i64 %44, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !45
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !45
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !45
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !45
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !45
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !45
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !45
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !45
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !45
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !45
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !45
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !45
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !45
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !45
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !45
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !45
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !45
  store i64 %61, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !45
  store i64 %62, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !45
  call void @llvm.trap()
  unreachable

sub_b0.exit:                                      ; preds = %block_0x18e.i, %block_0x291.i
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 370, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!3 = !{i64 376, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!4 = !{i64 420, [24 x i8] c"\09movslq\09-20(%rbp), %rcx\00"}
!5 = !{i64 424, [24 x i8] c"\09movslq\09-24(%rbp), %rdx\00"}
!6 = !{i64 428, [18 x i8] c"\09imulq\09 $11, %rdx\00"}
!7 = !{i64 435, [26 x i8] c"\09movsbl\09(%rax,%rcx), %esi\00"}
!8 = !{i64 664, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!9 = !{i64 667, [16 x i8] c"\09addq\09$96, %rsp\00"}
!10 = !{i64 671, [11 x i8] c"\09popq\09%rbp\00"}
!11 = !{i64 672, [6 x i8] c"\09retq\00"}
!12 = !{i64 578, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!13 = !{i64 584, [8 x i8] c"\09jne\0924\00"}
!14 = !{i64 590, [22 x i8] c"\09movl\09-32(%rbp), %eax\00"}
!15 = !{i64 502, [8 x i8] c"\09jne\0958\00"}
!16 = !{i64 566, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!17 = !{i64 569, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!18 = !{i64 572, [22 x i8] c"\09movl\09-32(%rbp), %eax\00"}
!19 = !{i64 575, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!20 = !{i64 581, [22 x i8] c"\09cmpl\09-20(%rbp), %eax\00"}
!21 = !{i64 624, [24 x i8] c"\09movslq\09-20(%rbp), %rcx\00"}
!22 = !{i64 628, [24 x i8] c"\09movslq\09-24(%rbp), %rdx\00"}
!23 = !{i64 632, [18 x i8] c"\09imulq\09 $11, %rdx\00"}
!24 = !{i64 639, [23 x i8] c"\09movb\09$88, (%rax,%rcx)\00"}
!25 = !{i64 643, [22 x i8] c"\09movl\09-36(%rbp), %esi\00"}
!26 = !{i64 646, [15 x i8] c"\09addl\09$1, %esi\00"}
!27 = !{i64 649, [22 x i8] c"\09movl\09%esi, -36(%rbp)\00"}
!28 = !{i64 280, [9 x i8] c"\09jge\09371\00"}
!29 = !{i64 596, [8 x i8] c"\09jne\0912\00"}
!30 = !{i64 560, [7 x i8] c"\09jl\0912\00"}
!31 = !{i64 657, [19 x i8] c"\09movl\09$1, -4(%rbp)\00"}
!32 = !{i64 286, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!33 = !{i64 289, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
!34 = !{i64 292, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!35 = !{i64 295, [22 x i8] c"\09movl\09%eax, -32(%rbp)\00"}
!36 = !{i64 298, [24 x i8] c"\09movslq\09-36(%rbp), %rcx\00"}
!37 = !{i64 302, [29 x i8] c"\09movsbl\09-64(%rbp,%rcx), %eax\00"}
!38 = !{i64 307, [17 x i8] c"\09addl\09$-97, %eax\00"}
!39 = !{i64 312, [16 x i8] c"\09subl\09$22, %eax\00"}
!40 = !{i64 315, [22 x i8] c"\09movq\09%rcx, -80(%rbp)\00"}
!41 = !{i64 319, [22 x i8] c"\09movl\09%eax, -84(%rbp)\00"}
!42 = !{i64 322, [7 x i8] c"\09ja\0970\00"}
!43 = !{i64 328, [22 x i8] c"\09movq\09-80(%rbp), %rax\00"}
!44 = !{i64 332, [22 x i8] c"\09movq\09(,%rax,8), %rcx\00"}
!45 = !{i64 340, [12 x i8] c"\09jmpq\09*%rcx\00"}
!46 = !{i64 398, [19 x i8] c"\09movl\09$1, -4(%rbp)\00"}
!47 = !{i64 384, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!48 = !{i64 390, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!49 = !{i64 356, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!50 = !{i64 362, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!51 = !{i64 342, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!52 = !{i64 348, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!53 = !{i64 176, [12 x i8] c"\09pushq\09%rbp\00"}
!54 = !{i64 193, [21 x i8] c"\09leaq\09-64(%rbp), %r8\00"}
!55 = !{i64 207, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!56 = !{i64 214, [21 x i8] c"\09movl\09%edi, -8(%rbp)\00"}
!57 = !{i64 217, [22 x i8] c"\09movq\09%rsi, -16(%rbp)\00"}
!58 = !{i64 221, [20 x i8] c"\09movl\09$0, -36(%rbp)\00"}
!59 = !{i64 228, [20 x i8] c"\09movl\09$1, -20(%rbp)\00"}
!60 = !{i64 235, [20 x i8] c"\09movl\09$1, -24(%rbp)\00"}
!61 = !{i64 242, [24 x i8] c"\09movslq\09-20(%rbp), %rsi\00"}
!62 = !{i64 257, [22 x i8] c"\09movb\09$88, (%r9,%rsi)\00"}
!63 = !{i64 267, [9 x i8] c"\09callq\090\00"}
!64 = !{i64 272, [22 x i8] c"\09movq\09%rax, -72(%rbp)\00"}
!65 = !{i64 276, [21 x i8] c"\09cmpl\09$28, -36(%rbp)\00"}
