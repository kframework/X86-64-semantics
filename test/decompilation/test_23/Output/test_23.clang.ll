; ModuleID = 'Output/test_23.clang.bc'
source_filename = "Output/test_23.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [77 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x330 = internal global %0 <{ [77 x i8] c"+-+---+---+| |     |#|| | --+ | || |   | | || +-- | | ||     |   |+-----+---+" }>, align 64

define internal x86_64_sysvcc void @sub_c0(%struct.regs*) {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !2
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !2
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !2
  %XMM15_val = alloca i128, !mcsema_real_eip !2
  %XMM14_val = alloca i128, !mcsema_real_eip !2
  %XMM13_val = alloca i128, !mcsema_real_eip !2
  %XMM12_val = alloca i128, !mcsema_real_eip !2
  %XMM11_val = alloca i128, !mcsema_real_eip !2
  %XMM10_val = alloca i128, !mcsema_real_eip !2
  %XMM9_val = alloca i128, !mcsema_real_eip !2
  %XMM8_val = alloca i128, !mcsema_real_eip !2
  %XMM7_val = alloca i128, !mcsema_real_eip !2
  %XMM6_val = alloca i128, !mcsema_real_eip !2
  %XMM5_val = alloca i128, !mcsema_real_eip !2
  %XMM4_val = alloca i128, !mcsema_real_eip !2
  %XMM3_val = alloca i128, !mcsema_real_eip !2
  %XMM2_val = alloca i128, !mcsema_real_eip !2
  %XMM1_val = alloca i128, !mcsema_real_eip !2
  %XMM0_val = alloca i128, !mcsema_real_eip !2
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !2
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !2
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !2
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !2
  %FPU_IM_val = alloca i1, !mcsema_real_eip !2
  %FPU_DM_val = alloca i1, !mcsema_real_eip !2
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !2
  %FPU_OM_val = alloca i1, !mcsema_real_eip !2
  %FPU_UM_val = alloca i1, !mcsema_real_eip !2
  %FPU_PM_val = alloca i1, !mcsema_real_eip !2
  %FPU_PC_val = alloca i2, !mcsema_real_eip !2
  %FPU_RC_val = alloca i2, !mcsema_real_eip !2
  %FPU_X_val = alloca i1, !mcsema_real_eip !2
  %FPU_IE_val = alloca i1, !mcsema_real_eip !2
  %FPU_DE_val = alloca i1, !mcsema_real_eip !2
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !2
  %FPU_OE_val = alloca i1, !mcsema_real_eip !2
  %FPU_UE_val = alloca i1, !mcsema_real_eip !2
  %FPU_PE_val = alloca i1, !mcsema_real_eip !2
  %FPU_SF_val = alloca i1, !mcsema_real_eip !2
  %FPU_ES_val = alloca i1, !mcsema_real_eip !2
  %FPU_C0_val = alloca i1, !mcsema_real_eip !2
  %FPU_C1_val = alloca i1, !mcsema_real_eip !2
  %FPU_C2_val = alloca i1, !mcsema_real_eip !2
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !2
  %FPU_C3_val = alloca i1, !mcsema_real_eip !2
  %FPU_B_val = alloca i1, !mcsema_real_eip !2
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !2
  %DF_val = alloca i1, !mcsema_real_eip !2
  %OF_val = alloca i1, !mcsema_real_eip !2
  %SF_val = alloca i1, !mcsema_real_eip !2
  %CF_val = alloca i1, !mcsema_real_eip !2
  %AF_val = alloca i1, !mcsema_real_eip !2
  %PF_val = alloca i1, !mcsema_real_eip !2
  %ZF_val = alloca i1, !mcsema_real_eip !2
  %RIP_val = alloca i64, !mcsema_real_eip !2
  %R14_val = alloca i64, !mcsema_real_eip !2
  %R13_val = alloca i64, !mcsema_real_eip !2
  %R12_val = alloca i64, !mcsema_real_eip !2
  %R11_val = alloca i64, !mcsema_real_eip !2
  %R10_val = alloca i64, !mcsema_real_eip !2
  %R9_val = alloca i64, !mcsema_real_eip !2
  %R8_val = alloca i64, !mcsema_real_eip !2
  %RSP_val = alloca i64, !mcsema_real_eip !2
  %RBP_val = alloca i64, !mcsema_real_eip !2
  %RDI_val = alloca i64, !mcsema_real_eip !2
  %RSI_val = alloca i64, !mcsema_real_eip !2
  %RDX_val = alloca i64, !mcsema_real_eip !2
  %RCX_val = alloca i64, !mcsema_real_eip !2
  %RBX_val = alloca i64, !mcsema_real_eip !2
  %RAX_val = alloca i64, !mcsema_real_eip !2
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %1 = load i64, i64* %RAX, !mcsema_real_eip !2
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !2
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %2 = load i64, i64* %RBX, !mcsema_real_eip !2
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !2
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %3 = load i64, i64* %RCX, !mcsema_real_eip !2
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !2
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %4 = load i64, i64* %RDX, !mcsema_real_eip !2
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !2
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %5 = load i64, i64* %RSI, !mcsema_real_eip !2
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !2
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %6 = load i64, i64* %RDI, !mcsema_real_eip !2
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !2
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %7 = load i64, i64* %RSP, !mcsema_real_eip !2
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !2
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %8 = load i64, i64* %RBP, !mcsema_real_eip !2
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !2
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %9 = load i64, i64* %R8, !mcsema_real_eip !2
  store i64 %9, i64* %R8_val, !mcsema_real_eip !2
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %10 = load i64, i64* %R9, !mcsema_real_eip !2
  store i64 %10, i64* %R9_val, !mcsema_real_eip !2
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %11 = load i64, i64* %R10, !mcsema_real_eip !2
  store i64 %11, i64* %R10_val, !mcsema_real_eip !2
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %12 = load i64, i64* %R11, !mcsema_real_eip !2
  store i64 %12, i64* %R11_val, !mcsema_real_eip !2
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %13 = load i64, i64* %R12, !mcsema_real_eip !2
  store i64 %13, i64* %R12_val, !mcsema_real_eip !2
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %14 = load i64, i64* %R13, !mcsema_real_eip !2
  store i64 %14, i64* %R13_val, !mcsema_real_eip !2
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %15 = load i64, i64* %R14, !mcsema_real_eip !2
  store i64 %15, i64* %R14_val, !mcsema_real_eip !2
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %16 = load i64, i64* %R15, !mcsema_real_eip !2
  store i64 %16, i64* %R15_val, !mcsema_real_eip !2
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %17 = load i64, i64* %RIP, !mcsema_real_eip !2
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !2
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !2
  store i1 %18, i1* %CF_val, !mcsema_real_eip !2
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !2
  store i1 %19, i1* %PF_val, !mcsema_real_eip !2
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !2
  store i1 %20, i1* %AF_val, !mcsema_real_eip !2
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !2
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !2
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !2
  store i1 %22, i1* %SF_val, !mcsema_real_eip !2
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !2
  store i1 %23, i1* %OF_val, !mcsema_real_eip !2
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !2
  store i1 %24, i1* %DF_val, !mcsema_real_eip !2
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !2
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !2
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !2
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !2
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !2
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !2
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !2
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !2
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !2
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !2
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !2
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !2
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !2
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !2
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !2
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !2
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !2
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !2
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !2
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !2
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !2
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !2
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !2
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !2
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !2
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !2
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !2
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !2
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !2
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !2
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !2
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !2
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !2
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !2
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !2
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !2
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !2
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !2
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !2
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !2
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !2
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !2
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !2
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !2
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !2
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !2
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !2
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !2
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !2
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !2
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !2
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !2
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !2
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %59 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !2
  store i11 %59, i11* %FPU_FOPCODE_val, !mcsema_real_eip !2
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !2
  store i128 %60, i128* %XMM0_val, !mcsema_real_eip !2
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !2
  store i128 %61, i128* %XMM1_val, !mcsema_real_eip !2
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !2
  store i128 %62, i128* %XMM2_val, !mcsema_real_eip !2
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %63 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !2
  store i128 %63, i128* %XMM3_val, !mcsema_real_eip !2
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %64 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !2
  store i128 %64, i128* %XMM4_val, !mcsema_real_eip !2
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %65 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !2
  store i128 %65, i128* %XMM5_val, !mcsema_real_eip !2
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %66 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !2
  store i128 %66, i128* %XMM6_val, !mcsema_real_eip !2
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %67 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !2
  store i128 %67, i128* %XMM7_val, !mcsema_real_eip !2
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %68 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !2
  store i128 %68, i128* %XMM8_val, !mcsema_real_eip !2
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %69 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !2
  store i128 %69, i128* %XMM9_val, !mcsema_real_eip !2
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %70 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !2
  store i128 %70, i128* %XMM10_val, !mcsema_real_eip !2
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %71 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !2
  store i128 %71, i128* %XMM11_val, !mcsema_real_eip !2
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %72 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !2
  store i128 %72, i128* %XMM12_val, !mcsema_real_eip !2
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %73 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !2
  store i128 %73, i128* %XMM13_val, !mcsema_real_eip !2
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %74 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !2
  store i128 %74, i128* %XMM14_val, !mcsema_real_eip !2
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %75 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !2
  store i128 %75, i128* %XMM15_val, !mcsema_real_eip !2
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %76 = load i64, i64* %STACK_BASE, !mcsema_real_eip !2
  store i64 %76, i64* %STACK_BASE_val, !mcsema_real_eip !2
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %77 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !2
  store i64 %77, i64* %STACK_LIMIT_val, !mcsema_real_eip !2
  %78 = load i64, i64* %RBP_val, !mcsema_real_eip !2
  %79 = load i64, i64* %RSP_val, !mcsema_real_eip !2
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !2
  store i64 %78, i64* %81, !mcsema_real_eip !2
  store i64 %80, i64* %RBP_val, !mcsema_real_eip !3
  %82 = add i64 %79, -104
  %83 = xor i64 %82, %80, !mcsema_real_eip !4
  %84 = and i64 %83, 16, !mcsema_real_eip !4
  %85 = icmp ne i64 %84, 0, !mcsema_real_eip !4
  store i1 %85, i1* %AF_val, !mcsema_real_eip !4
  %86 = trunc i64 %82 to i8, !mcsema_real_eip !4
  %87 = tail call i8 @llvm.ctpop.i8(i8 %86), !mcsema_real_eip !4
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  store i1 %89, i1* %PF_val, !mcsema_real_eip !4
  %90 = icmp eq i64 %82, 0, !mcsema_real_eip !4
  store i1 %90, i1* %ZF_val, !mcsema_real_eip !4
  %91 = icmp slt i64 %82, 0
  store i1 %91, i1* %SF_val, !mcsema_real_eip !4
  %92 = icmp ult i64 %80, 96, !mcsema_real_eip !4
  store i1 %92, i1* %CF_val, !mcsema_real_eip !4
  %93 = and i64 %83, %80, !mcsema_real_eip !4
  %94 = icmp slt i64 %93, 0
  store i1 %94, i1* %OF_val, !mcsema_real_eip !4
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !4
  store i64 0, i64* %RAX_val, !mcsema_real_eip !5
  store i64 28, i64* %RDX_val, !mcsema_real_eip !6
  %95 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  %96 = add i64 %95, -64, !mcsema_real_eip !7
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !7
  %98 = ptrtoint i64* %97 to i64, !mcsema_real_eip !7
  store i64 %98, i64* %RCX_val, !mcsema_real_eip !7
  store i64 ptrtoint (%0* @data_0x330 to i64), i64* %R8_val, !mcsema_real_eip !8
  %99 = add i64 %95, -4, !mcsema_real_eip !9
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !9
  %101 = bitcast i64* %100 to i32*
  store i32 0, i32* %101, !mcsema_real_eip !9
  %102 = load i64, i64* %RBP_val, !mcsema_real_eip !10
  %103 = add i64 %102, -8, !mcsema_real_eip !10
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !10
  %105 = load i64, i64* %RDI_val, !mcsema_real_eip !10
  %106 = trunc i64 %105 to i32, !mcsema_real_eip !10
  %107 = bitcast i64* %104 to i32*
  store i32 %106, i32* %107, !mcsema_real_eip !10
  %108 = load i64, i64* %RBP_val, !mcsema_real_eip !11
  %109 = add i64 %108, -16, !mcsema_real_eip !11
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !11
  %111 = load i64, i64* %RSI_val, !mcsema_real_eip !11
  store i64 %111, i64* %110, !mcsema_real_eip !11
  %112 = load i64, i64* %RBP_val, !mcsema_real_eip !12
  %113 = add i64 %112, -36, !mcsema_real_eip !12
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !12
  %115 = bitcast i64* %114 to i32*
  store i32 0, i32* %115, !mcsema_real_eip !12
  %116 = load i64, i64* %RBP_val, !mcsema_real_eip !13
  %117 = add i64 %116, -20, !mcsema_real_eip !13
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !13
  %119 = bitcast i64* %118 to i32*
  store i32 1, i32* %119, !mcsema_real_eip !13
  %120 = load i64, i64* %RBP_val, !mcsema_real_eip !14
  %121 = add i64 %120, -24, !mcsema_real_eip !14
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !14
  %123 = bitcast i64* %122 to i32*
  store i32 1, i32* %123, !mcsema_real_eip !14
  %124 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %125 = add i64 %124, -20, !mcsema_real_eip !15
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !15
  %127 = bitcast i64* %126 to i32*
  %128 = load i32, i32* %127, !mcsema_real_eip !15
  %129 = sext i32 %128 to i64, !mcsema_real_eip !15
  store i64 %129, i64* %RSI_val, !mcsema_real_eip !15
  %130 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %131 = add i64 %130, -24, !mcsema_real_eip !16
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !16
  %133 = bitcast i64* %132 to i32*
  %134 = load i32, i32* %133, !mcsema_real_eip !16
  %135 = sext i32 %134 to i64, !mcsema_real_eip !16
  %136 = mul i64 %135, 11, !mcsema_real_eip !17
  store i64 %136, i64* %R9_val, !mcsema_real_eip !17
  %137 = load i64, i64* %R8_val, !mcsema_real_eip !18
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %136, i64 %137)
  %138 = extractvalue { i64, i1 } %uadd, 0
  %139 = xor i64 %138, %137, !mcsema_real_eip !18
  %140 = xor i64 %139, %136, !mcsema_real_eip !18
  %141 = and i64 %140, 16, !mcsema_real_eip !18
  %142 = icmp ne i64 %141, 0, !mcsema_real_eip !18
  store i1 %142, i1* %AF_val, !mcsema_real_eip !18
  %143 = icmp slt i64 %138, 0
  store i1 %143, i1* %SF_val, !mcsema_real_eip !18
  %144 = icmp eq i64 %138, 0, !mcsema_real_eip !18
  store i1 %144, i1* %ZF_val, !mcsema_real_eip !18
  %145 = xor i64 %137, -9223372036854775808, !mcsema_real_eip !18
  %146 = xor i64 %145, %136, !mcsema_real_eip !18
  %147 = and i64 %139, %146, !mcsema_real_eip !18
  %148 = icmp slt i64 %147, 0
  store i1 %148, i1* %OF_val, !mcsema_real_eip !18
  %149 = trunc i64 %138 to i8, !mcsema_real_eip !18
  %150 = tail call i8 @llvm.ctpop.i8(i8 %149), !mcsema_real_eip !18
  %151 = and i8 %150, 1
  %152 = icmp eq i8 %151, 0
  store i1 %152, i1* %PF_val, !mcsema_real_eip !18
  %153 = extractvalue { i64, i1 } %uadd, 1
  store i1 %153, i1* %CF_val, !mcsema_real_eip !18
  store i64 %138, i64* %R8_val, !mcsema_real_eip !18
  %154 = load i64, i64* %RSI_val, !mcsema_real_eip !19
  %155 = add i64 %154, %138, !mcsema_real_eip !19
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !19
  %157 = bitcast i64* %156 to i8*
  store i8 88, i8* %157, !mcsema_real_eip !19
  %158 = load i64, i64* %RAX_val, !mcsema_real_eip !20
  %159 = and i64 %158, 4294967295
  store i64 %159, i64* %RDI_val, !mcsema_real_eip !20
  %160 = load i64, i64* %RCX_val, !mcsema_real_eip !21
  store i64 %160, i64* %RSI_val, !mcsema_real_eip !21
  %161 = load i64, i64* %RDX_val, !mcsema_real_eip !22
  %162 = tail call x86_64_sysvcc i64 @read(i64 %159, i64 %160, i64 %161), !mcsema_real_eip !22
  store i64 %162, i64* %RAX_val, !mcsema_real_eip !22
  %163 = load i64, i64* %RBP_val, !mcsema_real_eip !23
  %164 = add i64 %163, -72, !mcsema_real_eip !23
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !23
  store i64 %162, i64* %165, !mcsema_real_eip !23
  br label %block_0x12d, !mcsema_real_eip !24

block_0x12d:                                      ; preds = %block_0x2e8, %entry
  %166 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %167 = add i64 %166, -36, !mcsema_real_eip !24
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !24
  %169 = bitcast i64* %168 to i32*
  %170 = load i32, i32* %169, !mcsema_real_eip !24
  %171 = add i32 %170, -28
  %172 = xor i32 %171, %170, !mcsema_real_eip !24
  %173 = and i32 %172, 16
  %174 = icmp eq i32 %173, 0
  store i1 %174, i1* %AF_val, !mcsema_real_eip !24
  %175 = trunc i32 %171 to i8, !mcsema_real_eip !24
  %176 = tail call i8 @llvm.ctpop.i8(i8 %175), !mcsema_real_eip !24
  %177 = and i8 %176, 1
  %178 = icmp eq i8 %177, 0
  store i1 %178, i1* %PF_val, !mcsema_real_eip !24
  %179 = icmp eq i32 %171, 0, !mcsema_real_eip !24
  store i1 %179, i1* %ZF_val, !mcsema_real_eip !24
  %180 = icmp slt i32 %171, 0
  store i1 %180, i1* %SF_val, !mcsema_real_eip !24
  %181 = icmp ult i32 %170, 28, !mcsema_real_eip !24
  store i1 %181, i1* %CF_val, !mcsema_real_eip !24
  %182 = and i32 %172, %170, !mcsema_real_eip !24
  %183 = icmp slt i32 %182, 0
  store i1 %183, i1* %OF_val, !mcsema_real_eip !24
  %tmp = xor i1 %180, %183
  %184 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  br i1 %tmp, label %block_0x13a, label %block_0x319, !mcsema_real_eip !26

block_0x13a:                                      ; preds = %block_0x12d
  %185 = add i64 %184, -20, !mcsema_real_eip !27
  %186 = inttoptr i64 %185 to i64*, !mcsema_real_eip !27
  %187 = bitcast i64* %186 to i32*
  %188 = load i32, i32* %187, !mcsema_real_eip !27
  %189 = zext i32 %188 to i64, !mcsema_real_eip !27
  store i64 %189, i64* %RAX_val, !mcsema_real_eip !27
  %190 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %191 = add i64 %190, -28, !mcsema_real_eip !28
  %192 = inttoptr i64 %191 to i64*, !mcsema_real_eip !28
  %193 = bitcast i64* %192 to i32*
  store i32 %188, i32* %193, !mcsema_real_eip !28
  %194 = load i64, i64* %RBP_val, !mcsema_real_eip !29
  %195 = add i64 %194, -24, !mcsema_real_eip !29
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !29
  %197 = bitcast i64* %196 to i32*
  %198 = load i32, i32* %197, !mcsema_real_eip !29
  %199 = zext i32 %198 to i64, !mcsema_real_eip !29
  store i64 %199, i64* %RAX_val, !mcsema_real_eip !29
  %200 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  %201 = add i64 %200, -32, !mcsema_real_eip !30
  %202 = inttoptr i64 %201 to i64*, !mcsema_real_eip !30
  %203 = bitcast i64* %202 to i32*
  store i32 %198, i32* %203, !mcsema_real_eip !30
  %204 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %205 = add i64 %204, -36, !mcsema_real_eip !31
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !31
  %207 = bitcast i64* %206 to i32*
  %208 = load i32, i32* %207, !mcsema_real_eip !31
  %209 = sext i32 %208 to i64, !mcsema_real_eip !31
  store i64 %209, i64* %RCX_val, !mcsema_real_eip !31
  %210 = load i64, i64* %RBP_val, !mcsema_real_eip !32
  %211 = add i64 %210, -64, !mcsema_real_eip !32
  %212 = add i64 %211, %209, !mcsema_real_eip !32
  %213 = inttoptr i64 %212 to i64*, !mcsema_real_eip !32
  %214 = bitcast i64* %213 to i8*
  %215 = load i8, i8* %214, !mcsema_real_eip !32
  %216 = sext i8 %215 to i32, !mcsema_real_eip !32
  %217 = zext i32 %216 to i64, !mcsema_real_eip !32
  store i64 %217, i64* %RAX_val, !mcsema_real_eip !32
  %218 = add nsw i32 %216, -114
  %219 = xor i32 %218, %216, !mcsema_real_eip !33
  %220 = and i32 %219, 16
  %221 = icmp eq i32 %220, 0
  store i1 %221, i1* %AF_val, !mcsema_real_eip !33
  %222 = trunc i32 %218 to i8, !mcsema_real_eip !33
  %223 = tail call i8 @llvm.ctpop.i8(i8 %222), !mcsema_real_eip !33
  %224 = and i8 %223, 1
  %225 = icmp eq i8 %224, 0
  store i1 %225, i1* %PF_val, !mcsema_real_eip !33
  %226 = icmp eq i32 %218, 0, !mcsema_real_eip !33
  store i1 %226, i1* %ZF_val, !mcsema_real_eip !33
  %227 = icmp slt i32 %218, 0
  store i1 %227, i1* %SF_val, !mcsema_real_eip !33
  %228 = icmp ult i8 %215, 114
  store i1 %228, i1* %CF_val, !mcsema_real_eip !33
  %229 = and i32 %219, %216, !mcsema_real_eip !33
  %230 = icmp slt i32 %229, 0
  store i1 %230, i1* %OF_val, !mcsema_real_eip !33
  %231 = zext i32 %218 to i64, !mcsema_real_eip !33
  store i64 %231, i64* %RDX_val, !mcsema_real_eip !33
  %232 = load i64, i64* %RBP_val, !mcsema_real_eip !34
  %233 = add i64 %232, -76, !mcsema_real_eip !34
  %234 = inttoptr i64 %233 to i64*, !mcsema_real_eip !34
  %235 = load i64, i64* %RAX_val, !mcsema_real_eip !34
  %236 = trunc i64 %235 to i32, !mcsema_real_eip !34
  %237 = bitcast i64* %234 to i32*
  store i32 %236, i32* %237, !mcsema_real_eip !34
  %238 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %239 = add i64 %238, -80, !mcsema_real_eip !35
  %240 = inttoptr i64 %239 to i64*, !mcsema_real_eip !35
  %241 = load i64, i64* %RDX_val, !mcsema_real_eip !35
  %242 = trunc i64 %241 to i32, !mcsema_real_eip !35
  %243 = bitcast i64* %240 to i32*
  store i32 %242, i32* %243, !mcsema_real_eip !35
  %244 = load i1, i1* %OF_val, !mcsema_real_eip !36
  %245 = load i1, i1* %SF_val, !mcsema_real_eip !36
  %tmp71 = xor i1 %245, %244
  %246 = load i1, i1* %ZF_val, !mcsema_real_eip !36
  %.demorgan = or i1 %246, %tmp71
  %247 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %248 = add i64 %247, -76, !mcsema_real_eip !37
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !37
  %250 = bitcast i64* %249 to i32*
  %251 = load i32, i32* %250, !mcsema_real_eip !37
  %252 = zext i32 %251 to i64, !mcsema_real_eip !37
  store i64 %252, i64* %RAX_val, !mcsema_real_eip !37
  br i1 %.demorgan, label %block_0x165, label %block_0x18d, !mcsema_real_eip !36

block_0x319:                                      ; preds = %block_0x12d
  %.lcssa = phi i64 [ %184, %block_0x12d ]
  %253 = add i64 %.lcssa, -4, !mcsema_real_eip !25
  %254 = inttoptr i64 %253 to i64*, !mcsema_real_eip !25
  %255 = bitcast i64* %254 to i32*
  store i32 1, i32* %255, !mcsema_real_eip !25
  br label %block_0x320, !mcsema_real_eip !27

block_0x320:                                      ; preds = %block_0x2dc, %block_0x1f5, %block_0x22d, %block_0x319
  %256 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %257 = add i64 %256, -4, !mcsema_real_eip !38
  %258 = inttoptr i64 %257 to i64*, !mcsema_real_eip !38
  %259 = bitcast i64* %258 to i32*
  %260 = load i32, i32* %259, !mcsema_real_eip !38
  %261 = zext i32 %260 to i64, !mcsema_real_eip !38
  store i64 %261, i64* %RAX_val, !mcsema_real_eip !38
  %262 = load i64, i64* %RSP_val, !mcsema_real_eip !39
  %uadd73 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %262, i64 96)
  %263 = extractvalue { i64, i1 } %uadd73, 0
  %264 = xor i64 %263, %262, !mcsema_real_eip !39
  %265 = and i64 %264, 16, !mcsema_real_eip !39
  %266 = icmp ne i64 %265, 0, !mcsema_real_eip !39
  store i1 %266, i1* %AF_val, !mcsema_real_eip !39
  %267 = icmp slt i64 %263, 0
  store i1 %267, i1* %SF_val, !mcsema_real_eip !39
  %268 = icmp eq i64 %263, 0, !mcsema_real_eip !39
  store i1 %268, i1* %ZF_val, !mcsema_real_eip !39
  %269 = xor i64 %262, -9223372036854775808, !mcsema_real_eip !39
  %270 = and i64 %264, %269, !mcsema_real_eip !39
  %271 = icmp slt i64 %270, 0
  store i1 %271, i1* %OF_val, !mcsema_real_eip !39
  %272 = trunc i64 %263 to i8, !mcsema_real_eip !39
  %273 = tail call i8 @llvm.ctpop.i8(i8 %272), !mcsema_real_eip !39
  %274 = and i8 %273, 1
  %275 = icmp eq i8 %274, 0
  store i1 %275, i1* %PF_val, !mcsema_real_eip !39
  %276 = extractvalue { i64, i1 } %uadd73, 1
  store i1 %276, i1* %CF_val, !mcsema_real_eip !39
  store i64 %263, i64* %RSP_val, !mcsema_real_eip !39
  %277 = inttoptr i64 %263 to i64*, !mcsema_real_eip !40
  %278 = load i64, i64* %277, !mcsema_real_eip !40
  store i64 %278, i64* %RBP_val, !mcsema_real_eip !40
  %279 = add i64 %263, 16, !mcsema_real_eip !41
  store i64 %279, i64* %RSP_val, !mcsema_real_eip !41
  %280 = load i64, i64* %RAX_val, !mcsema_real_eip !41
  store i64 %280, i64* %RAX, !mcsema_real_eip !41
  %281 = load i64, i64* %RBX_val, !mcsema_real_eip !41
  store i64 %281, i64* %RBX, !mcsema_real_eip !41
  %282 = load i64, i64* %RCX_val, !mcsema_real_eip !41
  store i64 %282, i64* %RCX, !mcsema_real_eip !41
  %283 = load i64, i64* %RDX_val, !mcsema_real_eip !41
  store i64 %283, i64* %RDX, !mcsema_real_eip !41
  %284 = load i64, i64* %RSI_val, !mcsema_real_eip !41
  store i64 %284, i64* %RSI, !mcsema_real_eip !41
  %285 = load i64, i64* %RDI_val, !mcsema_real_eip !41
  store i64 %285, i64* %RDI, !mcsema_real_eip !41
  %286 = load i64, i64* %RSP_val, !mcsema_real_eip !41
  store i64 %286, i64* %RSP, !mcsema_real_eip !41
  %287 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  store i64 %287, i64* %RBP, !mcsema_real_eip !41
  %288 = load i64, i64* %R8_val, !mcsema_real_eip !41
  store i64 %288, i64* %R8, !mcsema_real_eip !41
  %289 = load i64, i64* %R9_val, !mcsema_real_eip !41
  store i64 %289, i64* %R9, !mcsema_real_eip !41
  %290 = load i64, i64* %R10_val, !mcsema_real_eip !41
  store i64 %290, i64* %R10, !mcsema_real_eip !41
  %291 = load i64, i64* %R11_val, !mcsema_real_eip !41
  store i64 %291, i64* %R11, !mcsema_real_eip !41
  %292 = load i64, i64* %R12_val, !mcsema_real_eip !41
  store i64 %292, i64* %R12, !mcsema_real_eip !41
  %293 = load i64, i64* %R13_val, !mcsema_real_eip !41
  store i64 %293, i64* %R13, !mcsema_real_eip !41
  %294 = load i64, i64* %R14_val, !mcsema_real_eip !41
  store i64 %294, i64* %R14, !mcsema_real_eip !41
  %295 = load i64, i64* %R15_val, !mcsema_real_eip !41
  store i64 %295, i64* %R15, !mcsema_real_eip !41
  %296 = load i64, i64* %RIP_val, !mcsema_real_eip !41
  store i64 %296, i64* %RIP, !mcsema_real_eip !41
  %297 = load i1, i1* %CF_val, !mcsema_real_eip !41
  store i1 %297, i1* %CF, align 1, !mcsema_real_eip !41
  %298 = load i1, i1* %PF_val, !mcsema_real_eip !41
  store i1 %298, i1* %PF, align 1, !mcsema_real_eip !41
  %299 = load i1, i1* %AF_val, !mcsema_real_eip !41
  store i1 %299, i1* %AF, align 1, !mcsema_real_eip !41
  %300 = load i1, i1* %ZF_val, !mcsema_real_eip !41
  store i1 %300, i1* %ZF, align 1, !mcsema_real_eip !41
  %301 = load i1, i1* %SF_val, !mcsema_real_eip !41
  store i1 %301, i1* %SF, align 1, !mcsema_real_eip !41
  %302 = load i1, i1* %OF_val, !mcsema_real_eip !41
  store i1 %302, i1* %OF, align 1, !mcsema_real_eip !41
  %303 = load i1, i1* %DF_val, !mcsema_real_eip !41
  store i1 %303, i1* %DF, align 1, !mcsema_real_eip !41
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !41
  %304 = load i1, i1* %FPU_B_val, !mcsema_real_eip !41
  store i1 %304, i1* %FPU_B, align 1, !mcsema_real_eip !41
  %305 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !41
  store i1 %305, i1* %FPU_C3, align 1, !mcsema_real_eip !41
  %306 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !41
  store i3 %306, i3* %FPU_TOP, align 1, !mcsema_real_eip !41
  %307 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !41
  store i1 %307, i1* %FPU_C2, align 1, !mcsema_real_eip !41
  %308 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !41
  store i1 %308, i1* %FPU_C1, align 1, !mcsema_real_eip !41
  %309 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !41
  store i1 %309, i1* %FPU_C0, align 1, !mcsema_real_eip !41
  %310 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !41
  store i1 %310, i1* %FPU_ES, align 1, !mcsema_real_eip !41
  %311 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !41
  store i1 %311, i1* %FPU_SF, align 1, !mcsema_real_eip !41
  %312 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !41
  store i1 %312, i1* %FPU_PE, align 1, !mcsema_real_eip !41
  %313 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !41
  store i1 %313, i1* %FPU_UE, align 1, !mcsema_real_eip !41
  %314 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !41
  store i1 %314, i1* %FPU_OE, align 1, !mcsema_real_eip !41
  %315 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !41
  store i1 %315, i1* %FPU_ZE, align 1, !mcsema_real_eip !41
  %316 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !41
  store i1 %316, i1* %FPU_DE, align 1, !mcsema_real_eip !41
  %317 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !41
  store i1 %317, i1* %FPU_IE, align 1, !mcsema_real_eip !41
  %318 = load i1, i1* %FPU_X_val, !mcsema_real_eip !41
  store i1 %318, i1* %FPU_X, align 1, !mcsema_real_eip !41
  %319 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !41
  store i2 %319, i2* %FPU_RC, align 1, !mcsema_real_eip !41
  %320 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !41
  store i2 %320, i2* %FPU_PC, align 1, !mcsema_real_eip !41
  %321 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !41
  store i1 %321, i1* %FPU_PM, align 1, !mcsema_real_eip !41
  %322 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !41
  store i1 %322, i1* %FPU_UM, align 1, !mcsema_real_eip !41
  %323 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !41
  store i1 %323, i1* %FPU_OM, align 1, !mcsema_real_eip !41
  %324 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !41
  store i1 %324, i1* %FPU_ZM, align 1, !mcsema_real_eip !41
  %325 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !41
  store i1 %325, i1* %FPU_DM, align 1, !mcsema_real_eip !41
  %326 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !41
  store i1 %326, i1* %FPU_IM, align 1, !mcsema_real_eip !41
  %327 = load i64, i64* %53, align 4
  store i64 %327, i64* %52, align 4
  %328 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !41
  store i16 %328, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !41
  %329 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !41
  store i64 %329, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !41
  %330 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !41
  store i16 %330, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !41
  %331 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !41
  store i64 %331, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !41
  %332 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !41
  store i11 %332, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !41
  %333 = load i128, i128* %XMM0_val, !mcsema_real_eip !41
  store i128 %333, i128* %XMM0, align 1, !mcsema_real_eip !41
  %334 = load i128, i128* %XMM1_val, !mcsema_real_eip !41
  store i128 %334, i128* %XMM1, align 1, !mcsema_real_eip !41
  %335 = load i128, i128* %XMM2_val, !mcsema_real_eip !41
  store i128 %335, i128* %XMM2, align 1, !mcsema_real_eip !41
  %336 = load i128, i128* %XMM3_val, !mcsema_real_eip !41
  store i128 %336, i128* %XMM3, align 1, !mcsema_real_eip !41
  %337 = load i128, i128* %XMM4_val, !mcsema_real_eip !41
  store i128 %337, i128* %XMM4, align 1, !mcsema_real_eip !41
  %338 = load i128, i128* %XMM5_val, !mcsema_real_eip !41
  store i128 %338, i128* %XMM5, align 1, !mcsema_real_eip !41
  %339 = load i128, i128* %XMM6_val, !mcsema_real_eip !41
  store i128 %339, i128* %XMM6, align 1, !mcsema_real_eip !41
  %340 = load i128, i128* %XMM7_val, !mcsema_real_eip !41
  store i128 %340, i128* %XMM7, align 1, !mcsema_real_eip !41
  %341 = load i128, i128* %XMM8_val, !mcsema_real_eip !41
  store i128 %341, i128* %XMM8, align 1, !mcsema_real_eip !41
  %342 = load i128, i128* %XMM9_val, !mcsema_real_eip !41
  store i128 %342, i128* %XMM9, align 1, !mcsema_real_eip !41
  %343 = load i128, i128* %XMM10_val, !mcsema_real_eip !41
  store i128 %343, i128* %XMM10, align 1, !mcsema_real_eip !41
  %344 = load i128, i128* %XMM11_val, !mcsema_real_eip !41
  store i128 %344, i128* %XMM11, align 1, !mcsema_real_eip !41
  %345 = load i128, i128* %XMM12_val, !mcsema_real_eip !41
  store i128 %345, i128* %XMM12, align 1, !mcsema_real_eip !41
  %346 = load i128, i128* %XMM13_val, !mcsema_real_eip !41
  store i128 %346, i128* %XMM13, align 1, !mcsema_real_eip !41
  %347 = load i128, i128* %XMM14_val, !mcsema_real_eip !41
  store i128 %347, i128* %XMM14, align 1, !mcsema_real_eip !41
  %348 = load i128, i128* %XMM15_val, !mcsema_real_eip !41
  store i128 %348, i128* %XMM15, align 1, !mcsema_real_eip !41
  %349 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !41
  store i64 %349, i64* %STACK_BASE, align 1, !mcsema_real_eip !41
  %350 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !41
  store i64 %350, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !41
  ret void, !mcsema_real_eip !41

block_0x18d:                                      ; preds = %block_0x13a
  %351 = add i32 %251, -115
  %352 = xor i32 %351, %251, !mcsema_real_eip !42
  %353 = and i32 %352, 16
  %354 = icmp eq i32 %353, 0
  store i1 %354, i1* %AF_val, !mcsema_real_eip !42
  %355 = trunc i32 %351 to i8, !mcsema_real_eip !42
  %356 = tail call i8 @llvm.ctpop.i8(i8 %355), !mcsema_real_eip !42
  %357 = and i8 %356, 1
  %358 = icmp eq i8 %357, 0
  store i1 %358, i1* %PF_val, !mcsema_real_eip !42
  %359 = icmp eq i32 %351, 0, !mcsema_real_eip !42
  store i1 %359, i1* %ZF_val, !mcsema_real_eip !42
  %360 = icmp slt i32 %351, 0
  store i1 %360, i1* %SF_val, !mcsema_real_eip !42
  %361 = icmp ult i32 %251, 115, !mcsema_real_eip !42
  store i1 %361, i1* %CF_val, !mcsema_real_eip !42
  %362 = and i32 %352, %251, !mcsema_real_eip !42
  %363 = icmp slt i32 %362, 0
  store i1 %363, i1* %OF_val, !mcsema_real_eip !42
  %364 = zext i32 %351 to i64, !mcsema_real_eip !42
  store i64 %364, i64* %RAX_val, !mcsema_real_eip !42
  %365 = load i64, i64* %RBP_val, !mcsema_real_eip !43
  %366 = add i64 %365, -92, !mcsema_real_eip !43
  %367 = inttoptr i64 %366 to i64*, !mcsema_real_eip !43
  %368 = bitcast i64* %367 to i32*
  store i32 %351, i32* %368, !mcsema_real_eip !43
  %369 = load i1, i1* %ZF_val, !mcsema_real_eip !44
  %370 = load i64, i64* %RBP_val, !mcsema_real_eip !45
  br i1 %369, label %block_0x1c5, label %block_0x1a1, !mcsema_real_eip !44

block_0x1c5:                                      ; preds = %block_0x18d
  %371 = add i64 %370, -24, !mcsema_real_eip !45
  %372 = inttoptr i64 %371 to i64*, !mcsema_real_eip !45
  %373 = bitcast i64* %372 to i32*
  %374 = load i32, i32* %373, !mcsema_real_eip !45
  %uadd92 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %374, i32 1)
  %375 = extractvalue { i32, i1 } %uadd92, 0
  %376 = xor i32 %375, %374, !mcsema_real_eip !46
  %377 = and i32 %376, 16, !mcsema_real_eip !46
  %378 = icmp ne i32 %377, 0, !mcsema_real_eip !46
  store i1 %378, i1* %AF_val, !mcsema_real_eip !46
  %379 = icmp slt i32 %375, 0
  store i1 %379, i1* %SF_val, !mcsema_real_eip !46
  %380 = icmp eq i32 %375, 0, !mcsema_real_eip !46
  store i1 %380, i1* %ZF_val, !mcsema_real_eip !46
  %381 = xor i32 %374, -2147483648, !mcsema_real_eip !46
  %382 = and i32 %376, %381, !mcsema_real_eip !46
  %383 = icmp slt i32 %382, 0
  store i1 %383, i1* %OF_val, !mcsema_real_eip !46
  %384 = trunc i32 %375 to i8, !mcsema_real_eip !46
  %385 = tail call i8 @llvm.ctpop.i8(i8 %384), !mcsema_real_eip !46
  %386 = and i8 %385, 1
  %387 = icmp eq i8 %386, 0
  store i1 %387, i1* %PF_val, !mcsema_real_eip !46
  %388 = extractvalue { i32, i1 } %uadd92, 1
  store i1 %388, i1* %CF_val, !mcsema_real_eip !46
  %389 = zext i32 %375 to i64, !mcsema_real_eip !46
  store i64 %389, i64* %RAX_val, !mcsema_real_eip !46
  %390 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  %391 = add i64 %390, -24, !mcsema_real_eip !47
  %392 = inttoptr i64 %391 to i64*, !mcsema_real_eip !47
  %393 = bitcast i64* %392 to i32*
  store i32 %375, i32* %393, !mcsema_real_eip !47
  br label %block_0x201, !mcsema_real_eip !48

block_0x165:                                      ; preds = %block_0x13a
  %394 = add i32 %251, -97
  %395 = xor i32 %394, %251, !mcsema_real_eip !49
  %396 = and i32 %395, 16, !mcsema_real_eip !49
  %397 = icmp ne i32 %396, 0, !mcsema_real_eip !49
  store i1 %397, i1* %AF_val, !mcsema_real_eip !49
  %398 = trunc i32 %394 to i8, !mcsema_real_eip !49
  %399 = tail call i8 @llvm.ctpop.i8(i8 %398), !mcsema_real_eip !49
  %400 = and i8 %399, 1
  %401 = icmp eq i8 %400, 0
  store i1 %401, i1* %PF_val, !mcsema_real_eip !49
  %402 = icmp eq i32 %394, 0, !mcsema_real_eip !49
  store i1 %402, i1* %ZF_val, !mcsema_real_eip !49
  %403 = icmp slt i32 %394, 0
  store i1 %403, i1* %SF_val, !mcsema_real_eip !49
  %404 = icmp ult i32 %251, 97, !mcsema_real_eip !49
  store i1 %404, i1* %CF_val, !mcsema_real_eip !49
  %405 = and i32 %395, %251, !mcsema_real_eip !49
  %406 = icmp slt i32 %405, 0
  store i1 %406, i1* %OF_val, !mcsema_real_eip !49
  %407 = zext i32 %394 to i64, !mcsema_real_eip !49
  store i64 %407, i64* %RAX_val, !mcsema_real_eip !49
  %408 = load i64, i64* %RBP_val, !mcsema_real_eip !50
  %409 = add i64 %408, -84, !mcsema_real_eip !50
  %410 = inttoptr i64 %409 to i64*, !mcsema_real_eip !50
  %411 = bitcast i64* %410 to i32*
  store i32 %394, i32* %411, !mcsema_real_eip !50
  %412 = load i1, i1* %ZF_val, !mcsema_real_eip !51
  %413 = load i64, i64* %RBP_val, !mcsema_real_eip !52
  br i1 %412, label %block_0x1d5, label %block_0x179, !mcsema_real_eip !51

block_0x201:                                      ; preds = %block_0x1e5, %block_0x1b5, %block_0x1d5, %block_0x1c5
  store i64 ptrtoint (%0* @data_0x330 to i64), i64* %RAX_val, !mcsema_real_eip !53
  %414 = load i64, i64* %RBP_val, !mcsema_real_eip !54
  %415 = add i64 %414, -20, !mcsema_real_eip !54
  %416 = inttoptr i64 %415 to i64*, !mcsema_real_eip !54
  %417 = bitcast i64* %416 to i32*
  %418 = load i32, i32* %417, !mcsema_real_eip !54
  %419 = sext i32 %418 to i64, !mcsema_real_eip !54
  store i64 %419, i64* %RCX_val, !mcsema_real_eip !54
  %420 = load i64, i64* %RBP_val, !mcsema_real_eip !55
  %421 = add i64 %420, -24, !mcsema_real_eip !55
  %422 = inttoptr i64 %421 to i64*, !mcsema_real_eip !55
  %423 = bitcast i64* %422 to i32*
  %424 = load i32, i32* %423, !mcsema_real_eip !55
  %425 = sext i32 %424 to i64, !mcsema_real_eip !55
  %426 = mul i64 %425, 11, !mcsema_real_eip !56
  store i64 %426, i64* %RDX_val, !mcsema_real_eip !56
  %427 = load i64, i64* %RAX_val, !mcsema_real_eip !57
  %uadd75 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %426, i64 %427)
  %428 = extractvalue { i64, i1 } %uadd75, 0
  %429 = xor i64 %428, %427, !mcsema_real_eip !57
  %430 = xor i64 %429, %426, !mcsema_real_eip !57
  %431 = and i64 %430, 16, !mcsema_real_eip !57
  %432 = icmp ne i64 %431, 0, !mcsema_real_eip !57
  store i1 %432, i1* %AF_val, !mcsema_real_eip !57
  %433 = icmp slt i64 %428, 0
  store i1 %433, i1* %SF_val, !mcsema_real_eip !57
  %434 = icmp eq i64 %428, 0, !mcsema_real_eip !57
  store i1 %434, i1* %ZF_val, !mcsema_real_eip !57
  %435 = xor i64 %427, -9223372036854775808, !mcsema_real_eip !57
  %436 = xor i64 %435, %426, !mcsema_real_eip !57
  %437 = and i64 %429, %436, !mcsema_real_eip !57
  %438 = icmp slt i64 %437, 0
  store i1 %438, i1* %OF_val, !mcsema_real_eip !57
  %439 = trunc i64 %428 to i8, !mcsema_real_eip !57
  %440 = tail call i8 @llvm.ctpop.i8(i8 %439), !mcsema_real_eip !57
  %441 = and i8 %440, 1
  %442 = icmp eq i8 %441, 0
  store i1 %442, i1* %PF_val, !mcsema_real_eip !57
  %443 = extractvalue { i64, i1 } %uadd75, 1
  store i1 %443, i1* %CF_val, !mcsema_real_eip !57
  store i64 %428, i64* %RAX_val, !mcsema_real_eip !57
  %444 = load i64, i64* %RCX_val, !mcsema_real_eip !58
  %445 = add i64 %444, %428, !mcsema_real_eip !58
  %446 = inttoptr i64 %445 to i64*, !mcsema_real_eip !58
  %447 = bitcast i64* %446 to i8*
  %448 = load i8, i8* %447, !mcsema_real_eip !58
  %449 = sext i8 %448 to i32, !mcsema_real_eip !58
  %450 = zext i32 %449 to i64, !mcsema_real_eip !58
  store i64 %450, i64* %RSI_val, !mcsema_real_eip !58
  %451 = add nsw i32 %449, -35
  %452 = xor i32 %451, %449, !mcsema_real_eip !59
  %453 = and i32 %452, 16, !mcsema_real_eip !59
  %454 = icmp ne i32 %453, 0, !mcsema_real_eip !59
  store i1 %454, i1* %AF_val, !mcsema_real_eip !59
  %455 = trunc i32 %451 to i8, !mcsema_real_eip !59
  %456 = tail call i8 @llvm.ctpop.i8(i8 %455), !mcsema_real_eip !59
  %457 = and i8 %456, 1
  %458 = icmp eq i8 %457, 0
  store i1 %458, i1* %PF_val, !mcsema_real_eip !59
  %459 = icmp eq i32 %451, 0, !mcsema_real_eip !59
  store i1 %459, i1* %ZF_val, !mcsema_real_eip !59
  %460 = icmp slt i32 %451, 0
  store i1 %460, i1* %SF_val, !mcsema_real_eip !59
  %461 = icmp ult i8 %448, 35
  store i1 %461, i1* %CF_val, !mcsema_real_eip !59
  %462 = and i32 %452, %449, !mcsema_real_eip !59
  %463 = icmp slt i32 %462, 0
  store i1 %463, i1* %OF_val, !mcsema_real_eip !59
  %464 = load i1, i1* %ZF_val, !mcsema_real_eip !60
  br i1 %464, label %block_0x22d, label %block_0x239, !mcsema_real_eip !60

block_0x1a1:                                      ; preds = %block_0x18d
  %465 = add i64 %370, -76, !mcsema_real_eip !61
  %466 = inttoptr i64 %465 to i64*, !mcsema_real_eip !61
  %467 = bitcast i64* %466 to i32*
  %468 = load i32, i32* %467, !mcsema_real_eip !61
  %469 = add i32 %468, -119
  %470 = xor i32 %469, %468, !mcsema_real_eip !62
  %471 = and i32 %470, 16
  %472 = icmp eq i32 %471, 0
  store i1 %472, i1* %AF_val, !mcsema_real_eip !62
  %473 = trunc i32 %469 to i8, !mcsema_real_eip !62
  %474 = tail call i8 @llvm.ctpop.i8(i8 %473), !mcsema_real_eip !62
  %475 = and i8 %474, 1
  %476 = icmp eq i8 %475, 0
  store i1 %476, i1* %PF_val, !mcsema_real_eip !62
  %477 = icmp eq i32 %469, 0, !mcsema_real_eip !62
  store i1 %477, i1* %ZF_val, !mcsema_real_eip !62
  %478 = icmp slt i32 %469, 0
  store i1 %478, i1* %SF_val, !mcsema_real_eip !62
  %479 = icmp ult i32 %468, 119, !mcsema_real_eip !62
  store i1 %479, i1* %CF_val, !mcsema_real_eip !62
  %480 = and i32 %470, %468, !mcsema_real_eip !62
  %481 = icmp slt i32 %480, 0
  store i1 %481, i1* %OF_val, !mcsema_real_eip !62
  %482 = zext i32 %469 to i64, !mcsema_real_eip !62
  store i64 %482, i64* %RAX_val, !mcsema_real_eip !62
  %483 = load i64, i64* %RBP_val, !mcsema_real_eip !63
  %484 = add i64 %483, -96, !mcsema_real_eip !63
  %485 = inttoptr i64 %484 to i64*, !mcsema_real_eip !63
  %486 = bitcast i64* %485 to i32*
  store i32 %469, i32* %486, !mcsema_real_eip !63
  %487 = load i1, i1* %ZF_val, !mcsema_real_eip !64
  br i1 %487, label %block_0x1b5, label %block_0x1f5, !mcsema_real_eip !64

block_0x1d5:                                      ; preds = %block_0x165
  %488 = add i64 %413, -20, !mcsema_real_eip !52
  %489 = inttoptr i64 %488 to i64*, !mcsema_real_eip !52
  %490 = bitcast i64* %489 to i32*
  %491 = load i32, i32* %490, !mcsema_real_eip !52
  %uadd89 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %491, i32 -1)
  %492 = extractvalue { i32, i1 } %uadd89, 0
  %493 = xor i32 %492, %491, !mcsema_real_eip !65
  %494 = and i32 %493, 16
  %495 = icmp eq i32 %494, 0
  store i1 %495, i1* %AF_val, !mcsema_real_eip !65
  %496 = icmp slt i32 %492, 0
  store i1 %496, i1* %SF_val, !mcsema_real_eip !65
  %497 = icmp eq i32 %492, 0, !mcsema_real_eip !65
  store i1 %497, i1* %ZF_val, !mcsema_real_eip !65
  %498 = and i32 %493, %491, !mcsema_real_eip !65
  %499 = icmp slt i32 %498, 0
  store i1 %499, i1* %OF_val, !mcsema_real_eip !65
  %500 = trunc i32 %492 to i8, !mcsema_real_eip !65
  %501 = tail call i8 @llvm.ctpop.i8(i8 %500), !mcsema_real_eip !65
  %502 = and i8 %501, 1
  %503 = icmp eq i8 %502, 0
  store i1 %503, i1* %PF_val, !mcsema_real_eip !65
  %504 = extractvalue { i32, i1 } %uadd89, 1
  store i1 %504, i1* %CF_val, !mcsema_real_eip !65
  %505 = zext i32 %492 to i64, !mcsema_real_eip !65
  store i64 %505, i64* %RAX_val, !mcsema_real_eip !65
  %506 = load i64, i64* %RBP_val, !mcsema_real_eip !66
  %507 = add i64 %506, -20, !mcsema_real_eip !66
  %508 = inttoptr i64 %507 to i64*, !mcsema_real_eip !66
  %509 = bitcast i64* %508 to i32*
  store i32 %492, i32* %509, !mcsema_real_eip !66
  br label %block_0x201, !mcsema_real_eip !67

block_0x22d:                                      ; preds = %block_0x201
  %510 = load i64, i64* %RBP_val, !mcsema_real_eip !68
  %511 = add i64 %510, -4, !mcsema_real_eip !68
  %512 = inttoptr i64 %511 to i64*, !mcsema_real_eip !68
  %513 = bitcast i64* %512 to i32*
  store i32 0, i32* %513, !mcsema_real_eip !68
  br label %block_0x320, !mcsema_real_eip !69

block_0x239:                                      ; preds = %block_0x201
  store i64 ptrtoint (%0* @data_0x330 to i64), i64* %RAX_val, !mcsema_real_eip !70
  %514 = load i64, i64* %RBP_val, !mcsema_real_eip !71
  %515 = add i64 %514, -20, !mcsema_real_eip !71
  %516 = inttoptr i64 %515 to i64*, !mcsema_real_eip !71
  %517 = bitcast i64* %516 to i32*
  %518 = load i32, i32* %517, !mcsema_real_eip !71
  %519 = sext i32 %518 to i64, !mcsema_real_eip !71
  store i64 %519, i64* %RCX_val, !mcsema_real_eip !71
  %520 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %521 = add i64 %520, -24, !mcsema_real_eip !72
  %522 = inttoptr i64 %521 to i64*, !mcsema_real_eip !72
  %523 = bitcast i64* %522 to i32*
  %524 = load i32, i32* %523, !mcsema_real_eip !72
  %525 = sext i32 %524 to i64, !mcsema_real_eip !72
  %526 = mul i64 %525, 11, !mcsema_real_eip !73
  store i64 %526, i64* %RDX_val, !mcsema_real_eip !73
  %527 = load i64, i64* %RAX_val, !mcsema_real_eip !74
  %uadd77 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %526, i64 %527)
  %528 = extractvalue { i64, i1 } %uadd77, 0
  %529 = xor i64 %528, %527, !mcsema_real_eip !74
  %530 = xor i64 %529, %526, !mcsema_real_eip !74
  %531 = and i64 %530, 16, !mcsema_real_eip !74
  %532 = icmp ne i64 %531, 0, !mcsema_real_eip !74
  store i1 %532, i1* %AF_val, !mcsema_real_eip !74
  %533 = icmp slt i64 %528, 0
  store i1 %533, i1* %SF_val, !mcsema_real_eip !74
  %534 = icmp eq i64 %528, 0, !mcsema_real_eip !74
  store i1 %534, i1* %ZF_val, !mcsema_real_eip !74
  %535 = xor i64 %527, -9223372036854775808, !mcsema_real_eip !74
  %536 = xor i64 %535, %526, !mcsema_real_eip !74
  %537 = and i64 %529, %536, !mcsema_real_eip !74
  %538 = icmp slt i64 %537, 0
  store i1 %538, i1* %OF_val, !mcsema_real_eip !74
  %539 = trunc i64 %528 to i8, !mcsema_real_eip !74
  %540 = tail call i8 @llvm.ctpop.i8(i8 %539), !mcsema_real_eip !74
  %541 = and i8 %540, 1
  %542 = icmp eq i8 %541, 0
  store i1 %542, i1* %PF_val, !mcsema_real_eip !74
  %543 = extractvalue { i64, i1 } %uadd77, 1
  store i1 %543, i1* %CF_val, !mcsema_real_eip !74
  store i64 %528, i64* %RAX_val, !mcsema_real_eip !74
  %544 = load i64, i64* %RCX_val, !mcsema_real_eip !75
  %545 = add i64 %544, %528, !mcsema_real_eip !75
  %546 = inttoptr i64 %545 to i64*, !mcsema_real_eip !75
  %547 = bitcast i64* %546 to i8*
  %548 = load i8, i8* %547, !mcsema_real_eip !75
  %549 = sext i8 %548 to i32, !mcsema_real_eip !75
  %550 = zext i32 %549 to i64, !mcsema_real_eip !75
  store i64 %550, i64* %RSI_val, !mcsema_real_eip !75
  %551 = add nsw i32 %549, -32
  %552 = xor i32 %551, %549, !mcsema_real_eip !76
  %553 = and i32 %552, 16, !mcsema_real_eip !76
  %554 = icmp ne i32 %553, 0, !mcsema_real_eip !76
  store i1 %554, i1* %AF_val, !mcsema_real_eip !76
  %555 = trunc i32 %551 to i8, !mcsema_real_eip !76
  %556 = tail call i8 @llvm.ctpop.i8(i8 %555), !mcsema_real_eip !76
  %557 = and i8 %556, 1
  %558 = icmp eq i8 %557, 0
  store i1 %558, i1* %PF_val, !mcsema_real_eip !76
  %559 = icmp eq i32 %551, 0, !mcsema_real_eip !76
  store i1 %559, i1* %ZF_val, !mcsema_real_eip !76
  %560 = icmp slt i32 %551, 0
  store i1 %560, i1* %SF_val, !mcsema_real_eip !76
  %561 = icmp ult i8 %548, 32
  store i1 %561, i1* %CF_val, !mcsema_real_eip !76
  %562 = and i32 %552, %549, !mcsema_real_eip !76
  %563 = icmp slt i32 %562, 0
  store i1 %563, i1* %OF_val, !mcsema_real_eip !76
  %564 = load i1, i1* %ZF_val, !mcsema_real_eip !77
  br i1 %564, label %block_0x2c4, label %block_0x265, !mcsema_real_eip !77

block_0x1f5:                                      ; preds = %block_0x179, %block_0x1a1
  %565 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %566 = add i64 %565, -4, !mcsema_real_eip !78
  %567 = inttoptr i64 %566 to i64*, !mcsema_real_eip !78
  %568 = bitcast i64* %567 to i32*
  store i32 1, i32* %568, !mcsema_real_eip !78
  br label %block_0x320, !mcsema_real_eip !79

block_0x179:                                      ; preds = %block_0x165
  %569 = add i64 %413, -76, !mcsema_real_eip !80
  %570 = inttoptr i64 %569 to i64*, !mcsema_real_eip !80
  %571 = bitcast i64* %570 to i32*
  %572 = load i32, i32* %571, !mcsema_real_eip !80
  %573 = add i32 %572, -100
  %574 = xor i32 %573, %572, !mcsema_real_eip !81
  %575 = and i32 %574, 16, !mcsema_real_eip !81
  %576 = icmp ne i32 %575, 0, !mcsema_real_eip !81
  store i1 %576, i1* %AF_val, !mcsema_real_eip !81
  %577 = trunc i32 %573 to i8, !mcsema_real_eip !81
  %578 = tail call i8 @llvm.ctpop.i8(i8 %577), !mcsema_real_eip !81
  %579 = and i8 %578, 1
  %580 = icmp eq i8 %579, 0
  store i1 %580, i1* %PF_val, !mcsema_real_eip !81
  %581 = icmp eq i32 %573, 0, !mcsema_real_eip !81
  store i1 %581, i1* %ZF_val, !mcsema_real_eip !81
  %582 = icmp slt i32 %573, 0
  store i1 %582, i1* %SF_val, !mcsema_real_eip !81
  %583 = icmp ult i32 %572, 100, !mcsema_real_eip !81
  store i1 %583, i1* %CF_val, !mcsema_real_eip !81
  %584 = and i32 %574, %572, !mcsema_real_eip !81
  %585 = icmp slt i32 %584, 0
  store i1 %585, i1* %OF_val, !mcsema_real_eip !81
  %586 = zext i32 %573 to i64, !mcsema_real_eip !81
  store i64 %586, i64* %RAX_val, !mcsema_real_eip !81
  %587 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %588 = add i64 %587, -88, !mcsema_real_eip !82
  %589 = inttoptr i64 %588 to i64*, !mcsema_real_eip !82
  %590 = bitcast i64* %589 to i32*
  store i32 %573, i32* %590, !mcsema_real_eip !82
  %591 = load i1, i1* %ZF_val, !mcsema_real_eip !83
  br i1 %591, label %block_0x1e5, label %block_0x1f5, !mcsema_real_eip !83

block_0x265:                                      ; preds = %block_0x239
  %592 = load i64, i64* %RBP_val, !mcsema_real_eip !84
  %593 = add i64 %592, -24, !mcsema_real_eip !84
  %594 = inttoptr i64 %593 to i64*, !mcsema_real_eip !84
  %595 = bitcast i64* %594 to i32*
  %596 = load i32, i32* %595, !mcsema_real_eip !84
  %597 = add i32 %596, -2
  %598 = xor i32 %597, %596, !mcsema_real_eip !84
  %599 = and i32 %598, 16, !mcsema_real_eip !84
  %600 = icmp ne i32 %599, 0, !mcsema_real_eip !84
  store i1 %600, i1* %AF_val, !mcsema_real_eip !84
  %601 = trunc i32 %597 to i8, !mcsema_real_eip !84
  %602 = tail call i8 @llvm.ctpop.i8(i8 %601), !mcsema_real_eip !84
  %603 = and i8 %602, 1
  %604 = icmp eq i8 %603, 0
  store i1 %604, i1* %PF_val, !mcsema_real_eip !84
  %605 = icmp eq i32 %597, 0, !mcsema_real_eip !84
  store i1 %605, i1* %ZF_val, !mcsema_real_eip !84
  %606 = icmp slt i32 %597, 0
  store i1 %606, i1* %SF_val, !mcsema_real_eip !84
  %607 = icmp ult i32 %596, 2, !mcsema_real_eip !84
  store i1 %607, i1* %CF_val, !mcsema_real_eip !84
  %608 = and i32 %598, %596, !mcsema_real_eip !84
  %609 = icmp slt i32 %608, 0
  store i1 %609, i1* %OF_val, !mcsema_real_eip !84
  %610 = load i1, i1* %ZF_val, !mcsema_real_eip !85
  br i1 %610, label %block_0x272, label %block_0x2b8, !mcsema_real_eip !85

block_0x2c4:                                      ; preds = %block_0x2ab, %block_0x2b8, %block_0x239
  %611 = load i64, i64* %RBP_val, !mcsema_real_eip !86
  %612 = add i64 %611, -28, !mcsema_real_eip !86
  %613 = inttoptr i64 %612 to i64*, !mcsema_real_eip !86
  %614 = bitcast i64* %613 to i32*
  %615 = load i32, i32* %614, !mcsema_real_eip !86
  %616 = zext i32 %615 to i64, !mcsema_real_eip !86
  store i64 %616, i64* %RAX_val, !mcsema_real_eip !86
  %617 = load i64, i64* %RBP_val, !mcsema_real_eip !87
  %618 = add i64 %617, -20, !mcsema_real_eip !87
  %619 = inttoptr i64 %618 to i64*, !mcsema_real_eip !87
  %620 = bitcast i64* %619 to i32*
  %621 = load i32, i32* %620, !mcsema_real_eip !87
  %622 = sub i32 %615, %621, !mcsema_real_eip !87
  %623 = xor i32 %622, %615, !mcsema_real_eip !87
  %624 = xor i32 %623, %621, !mcsema_real_eip !87
  %625 = and i32 %624, 16, !mcsema_real_eip !87
  %626 = icmp ne i32 %625, 0, !mcsema_real_eip !87
  store i1 %626, i1* %AF_val, !mcsema_real_eip !87
  %627 = trunc i32 %622 to i8, !mcsema_real_eip !87
  %628 = tail call i8 @llvm.ctpop.i8(i8 %627), !mcsema_real_eip !87
  %629 = and i8 %628, 1
  %630 = icmp eq i8 %629, 0
  store i1 %630, i1* %PF_val, !mcsema_real_eip !87
  %631 = icmp eq i32 %615, %621
  store i1 %631, i1* %ZF_val, !mcsema_real_eip !87
  %632 = icmp slt i32 %622, 0
  store i1 %632, i1* %SF_val, !mcsema_real_eip !87
  %633 = icmp ult i32 %615, %621, !mcsema_real_eip !87
  store i1 %633, i1* %CF_val, !mcsema_real_eip !87
  %634 = xor i32 %621, %615, !mcsema_real_eip !87
  %635 = and i32 %623, %634, !mcsema_real_eip !87
  %636 = icmp slt i32 %635, 0
  store i1 %636, i1* %OF_val, !mcsema_real_eip !87
  %637 = load i1, i1* %ZF_val, !mcsema_real_eip !88
  br i1 %637, label %block_0x2d0, label %block_0x2e8, !mcsema_real_eip !88

block_0x1b5:                                      ; preds = %block_0x1a1
  %638 = load i64, i64* %RBP_val, !mcsema_real_eip !89
  %639 = add i64 %638, -24, !mcsema_real_eip !89
  %640 = inttoptr i64 %639 to i64*, !mcsema_real_eip !89
  %641 = bitcast i64* %640 to i32*
  %642 = load i32, i32* %641, !mcsema_real_eip !89
  %uadd91 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %642, i32 -1)
  %643 = extractvalue { i32, i1 } %uadd91, 0
  %644 = xor i32 %643, %642, !mcsema_real_eip !90
  %645 = and i32 %644, 16
  %646 = icmp eq i32 %645, 0
  store i1 %646, i1* %AF_val, !mcsema_real_eip !90
  %647 = icmp slt i32 %643, 0
  store i1 %647, i1* %SF_val, !mcsema_real_eip !90
  %648 = icmp eq i32 %643, 0, !mcsema_real_eip !90
  store i1 %648, i1* %ZF_val, !mcsema_real_eip !90
  %649 = and i32 %644, %642, !mcsema_real_eip !90
  %650 = icmp slt i32 %649, 0
  store i1 %650, i1* %OF_val, !mcsema_real_eip !90
  %651 = trunc i32 %643 to i8, !mcsema_real_eip !90
  %652 = tail call i8 @llvm.ctpop.i8(i8 %651), !mcsema_real_eip !90
  %653 = and i8 %652, 1
  %654 = icmp eq i8 %653, 0
  store i1 %654, i1* %PF_val, !mcsema_real_eip !90
  %655 = extractvalue { i32, i1 } %uadd91, 1
  store i1 %655, i1* %CF_val, !mcsema_real_eip !90
  %656 = zext i32 %643 to i64, !mcsema_real_eip !90
  store i64 %656, i64* %RAX_val, !mcsema_real_eip !90
  %657 = load i64, i64* %RBP_val, !mcsema_real_eip !91
  %658 = add i64 %657, -24, !mcsema_real_eip !91
  %659 = inttoptr i64 %658 to i64*, !mcsema_real_eip !91
  %660 = bitcast i64* %659 to i32*
  store i32 %643, i32* %660, !mcsema_real_eip !91
  br label %block_0x201, !mcsema_real_eip !92

block_0x1e5:                                      ; preds = %block_0x179
  %661 = load i64, i64* %RBP_val, !mcsema_real_eip !93
  %662 = add i64 %661, -20, !mcsema_real_eip !93
  %663 = inttoptr i64 %662 to i64*, !mcsema_real_eip !93
  %664 = bitcast i64* %663 to i32*
  %665 = load i32, i32* %664, !mcsema_real_eip !93
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %665, i32 1)
  %666 = extractvalue { i32, i1 } %uadd74, 0
  %667 = xor i32 %666, %665, !mcsema_real_eip !94
  %668 = and i32 %667, 16, !mcsema_real_eip !94
  %669 = icmp ne i32 %668, 0, !mcsema_real_eip !94
  store i1 %669, i1* %AF_val, !mcsema_real_eip !94
  %670 = icmp slt i32 %666, 0
  store i1 %670, i1* %SF_val, !mcsema_real_eip !94
  %671 = icmp eq i32 %666, 0, !mcsema_real_eip !94
  store i1 %671, i1* %ZF_val, !mcsema_real_eip !94
  %672 = xor i32 %665, -2147483648, !mcsema_real_eip !94
  %673 = and i32 %667, %672, !mcsema_real_eip !94
  %674 = icmp slt i32 %673, 0
  store i1 %674, i1* %OF_val, !mcsema_real_eip !94
  %675 = trunc i32 %666 to i8, !mcsema_real_eip !94
  %676 = tail call i8 @llvm.ctpop.i8(i8 %675), !mcsema_real_eip !94
  %677 = and i8 %676, 1
  %678 = icmp eq i8 %677, 0
  store i1 %678, i1* %PF_val, !mcsema_real_eip !94
  %679 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %679, i1* %CF_val, !mcsema_real_eip !94
  %680 = zext i32 %666 to i64, !mcsema_real_eip !94
  store i64 %680, i64* %RAX_val, !mcsema_real_eip !94
  %681 = load i64, i64* %RBP_val, !mcsema_real_eip !95
  %682 = add i64 %681, -20, !mcsema_real_eip !95
  %683 = inttoptr i64 %682 to i64*, !mcsema_real_eip !95
  %684 = bitcast i64* %683 to i32*
  store i32 %666, i32* %684, !mcsema_real_eip !95
  br label %block_0x201, !mcsema_real_eip !96

block_0x2d0:                                      ; preds = %block_0x2c4
  %685 = load i64, i64* %RBP_val, !mcsema_real_eip !97
  %686 = add i64 %685, -32, !mcsema_real_eip !97
  %687 = inttoptr i64 %686 to i64*, !mcsema_real_eip !97
  %688 = bitcast i64* %687 to i32*
  %689 = load i32, i32* %688, !mcsema_real_eip !97
  %690 = zext i32 %689 to i64, !mcsema_real_eip !97
  store i64 %690, i64* %RAX_val, !mcsema_real_eip !97
  %691 = load i64, i64* %RBP_val, !mcsema_real_eip !98
  %692 = add i64 %691, -24, !mcsema_real_eip !98
  %693 = inttoptr i64 %692 to i64*, !mcsema_real_eip !98
  %694 = bitcast i64* %693 to i32*
  %695 = load i32, i32* %694, !mcsema_real_eip !98
  %696 = sub i32 %689, %695, !mcsema_real_eip !98
  %697 = xor i32 %696, %689, !mcsema_real_eip !98
  %698 = xor i32 %697, %695, !mcsema_real_eip !98
  %699 = and i32 %698, 16, !mcsema_real_eip !98
  %700 = icmp ne i32 %699, 0, !mcsema_real_eip !98
  store i1 %700, i1* %AF_val, !mcsema_real_eip !98
  %701 = trunc i32 %696 to i8, !mcsema_real_eip !98
  %702 = tail call i8 @llvm.ctpop.i8(i8 %701), !mcsema_real_eip !98
  %703 = and i8 %702, 1
  %704 = icmp eq i8 %703, 0
  store i1 %704, i1* %PF_val, !mcsema_real_eip !98
  %705 = icmp eq i32 %689, %695
  store i1 %705, i1* %ZF_val, !mcsema_real_eip !98
  %706 = icmp slt i32 %696, 0
  store i1 %706, i1* %SF_val, !mcsema_real_eip !98
  %707 = icmp ult i32 %689, %695, !mcsema_real_eip !98
  store i1 %707, i1* %CF_val, !mcsema_real_eip !98
  %708 = xor i32 %695, %689, !mcsema_real_eip !98
  %709 = and i32 %697, %708, !mcsema_real_eip !98
  %710 = icmp slt i32 %709, 0
  store i1 %710, i1* %OF_val, !mcsema_real_eip !98
  %711 = load i1, i1* %ZF_val, !mcsema_real_eip !99
  br i1 %711, label %block_0x2dc, label %block_0x2e8, !mcsema_real_eip !99

block_0x2e8:                                      ; preds = %block_0x2d0, %block_0x2c4
  store i64 ptrtoint (%0* @data_0x330 to i64), i64* %RAX_val, !mcsema_real_eip !100
  %712 = load i64, i64* %RBP_val, !mcsema_real_eip !101
  %713 = add i64 %712, -20, !mcsema_real_eip !101
  %714 = inttoptr i64 %713 to i64*, !mcsema_real_eip !101
  %715 = bitcast i64* %714 to i32*
  %716 = load i32, i32* %715, !mcsema_real_eip !101
  %717 = sext i32 %716 to i64, !mcsema_real_eip !101
  store i64 %717, i64* %RCX_val, !mcsema_real_eip !101
  %718 = load i64, i64* %RBP_val, !mcsema_real_eip !102
  %719 = add i64 %718, -24, !mcsema_real_eip !102
  %720 = inttoptr i64 %719 to i64*, !mcsema_real_eip !102
  %721 = bitcast i64* %720 to i32*
  %722 = load i32, i32* %721, !mcsema_real_eip !102
  %723 = sext i32 %722 to i64, !mcsema_real_eip !102
  %724 = mul i64 %723, 11, !mcsema_real_eip !103
  store i64 %724, i64* %RDX_val, !mcsema_real_eip !103
  %725 = load i64, i64* %RAX_val, !mcsema_real_eip !104
  %uadd87 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %724, i64 %725)
  %726 = extractvalue { i64, i1 } %uadd87, 0
  %727 = xor i64 %726, %725, !mcsema_real_eip !104
  %728 = xor i64 %727, %724, !mcsema_real_eip !104
  %729 = and i64 %728, 16, !mcsema_real_eip !104
  %730 = icmp ne i64 %729, 0, !mcsema_real_eip !104
  store i1 %730, i1* %AF_val, !mcsema_real_eip !104
  %731 = icmp slt i64 %726, 0
  store i1 %731, i1* %SF_val, !mcsema_real_eip !104
  %732 = icmp eq i64 %726, 0, !mcsema_real_eip !104
  store i1 %732, i1* %ZF_val, !mcsema_real_eip !104
  %733 = xor i64 %725, -9223372036854775808, !mcsema_real_eip !104
  %734 = xor i64 %733, %724, !mcsema_real_eip !104
  %735 = and i64 %727, %734, !mcsema_real_eip !104
  %736 = icmp slt i64 %735, 0
  store i1 %736, i1* %OF_val, !mcsema_real_eip !104
  %737 = trunc i64 %726 to i8, !mcsema_real_eip !104
  %738 = tail call i8 @llvm.ctpop.i8(i8 %737), !mcsema_real_eip !104
  %739 = and i8 %738, 1
  %740 = icmp eq i8 %739, 0
  store i1 %740, i1* %PF_val, !mcsema_real_eip !104
  %741 = extractvalue { i64, i1 } %uadd87, 1
  store i1 %741, i1* %CF_val, !mcsema_real_eip !104
  store i64 %726, i64* %RAX_val, !mcsema_real_eip !104
  %742 = load i64, i64* %RCX_val, !mcsema_real_eip !105
  %743 = add i64 %742, %726, !mcsema_real_eip !105
  %744 = inttoptr i64 %743 to i64*, !mcsema_real_eip !105
  %745 = bitcast i64* %744 to i8*
  store i8 88, i8* %745, !mcsema_real_eip !105
  %746 = load i64, i64* %RBP_val, !mcsema_real_eip !106
  %747 = add i64 %746, -36, !mcsema_real_eip !106
  %748 = inttoptr i64 %747 to i64*, !mcsema_real_eip !106
  %749 = bitcast i64* %748 to i32*
  %750 = load i32, i32* %749, !mcsema_real_eip !106
  %uadd88 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %750, i32 1)
  %751 = extractvalue { i32, i1 } %uadd88, 0
  %752 = xor i32 %751, %750, !mcsema_real_eip !107
  %753 = and i32 %752, 16, !mcsema_real_eip !107
  %754 = icmp ne i32 %753, 0, !mcsema_real_eip !107
  store i1 %754, i1* %AF_val, !mcsema_real_eip !107
  %755 = icmp slt i32 %751, 0
  store i1 %755, i1* %SF_val, !mcsema_real_eip !107
  %756 = icmp eq i32 %751, 0, !mcsema_real_eip !107
  store i1 %756, i1* %ZF_val, !mcsema_real_eip !107
  %757 = xor i32 %750, -2147483648, !mcsema_real_eip !107
  %758 = and i32 %752, %757, !mcsema_real_eip !107
  %759 = icmp slt i32 %758, 0
  store i1 %759, i1* %OF_val, !mcsema_real_eip !107
  %760 = trunc i32 %751 to i8, !mcsema_real_eip !107
  %761 = tail call i8 @llvm.ctpop.i8(i8 %760), !mcsema_real_eip !107
  %762 = and i8 %761, 1
  %763 = icmp eq i8 %762, 0
  store i1 %763, i1* %PF_val, !mcsema_real_eip !107
  %764 = extractvalue { i32, i1 } %uadd88, 1
  store i1 %764, i1* %CF_val, !mcsema_real_eip !107
  %765 = zext i32 %751 to i64, !mcsema_real_eip !107
  store i64 %765, i64* %RSI_val, !mcsema_real_eip !107
  %766 = load i64, i64* %RBP_val, !mcsema_real_eip !108
  %767 = add i64 %766, -36, !mcsema_real_eip !108
  %768 = inttoptr i64 %767 to i64*, !mcsema_real_eip !108
  %769 = bitcast i64* %768 to i32*
  store i32 %751, i32* %769, !mcsema_real_eip !108
  br label %block_0x12d, !mcsema_real_eip !109

block_0x272:                                      ; preds = %block_0x265
  store i64 ptrtoint (%0* @data_0x330 to i64), i64* %RAX_val, !mcsema_real_eip !110
  %770 = load i64, i64* %RBP_val, !mcsema_real_eip !111
  %771 = add i64 %770, -20, !mcsema_real_eip !111
  %772 = inttoptr i64 %771 to i64*, !mcsema_real_eip !111
  %773 = bitcast i64* %772 to i32*
  %774 = load i32, i32* %773, !mcsema_real_eip !111
  %775 = sext i32 %774 to i64, !mcsema_real_eip !111
  store i64 %775, i64* %RCX_val, !mcsema_real_eip !111
  %776 = load i64, i64* %RBP_val, !mcsema_real_eip !112
  %777 = add i64 %776, -24, !mcsema_real_eip !112
  %778 = inttoptr i64 %777 to i64*, !mcsema_real_eip !112
  %779 = bitcast i64* %778 to i32*
  %780 = load i32, i32* %779, !mcsema_real_eip !112
  %781 = sext i32 %780 to i64, !mcsema_real_eip !112
  %782 = mul i64 %781, 11, !mcsema_real_eip !113
  store i64 %782, i64* %RDX_val, !mcsema_real_eip !113
  %783 = load i64, i64* %RAX_val, !mcsema_real_eip !114
  %uadd79 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %782, i64 %783)
  %784 = extractvalue { i64, i1 } %uadd79, 0
  %785 = xor i64 %784, %783, !mcsema_real_eip !114
  %786 = xor i64 %785, %782, !mcsema_real_eip !114
  %787 = and i64 %786, 16, !mcsema_real_eip !114
  %788 = icmp ne i64 %787, 0, !mcsema_real_eip !114
  store i1 %788, i1* %AF_val, !mcsema_real_eip !114
  %789 = icmp slt i64 %784, 0
  store i1 %789, i1* %SF_val, !mcsema_real_eip !114
  %790 = icmp eq i64 %784, 0, !mcsema_real_eip !114
  store i1 %790, i1* %ZF_val, !mcsema_real_eip !114
  %791 = xor i64 %783, -9223372036854775808, !mcsema_real_eip !114
  %792 = xor i64 %791, %782, !mcsema_real_eip !114
  %793 = and i64 %785, %792, !mcsema_real_eip !114
  %794 = icmp slt i64 %793, 0
  store i1 %794, i1* %OF_val, !mcsema_real_eip !114
  %795 = trunc i64 %784 to i8, !mcsema_real_eip !114
  %796 = tail call i8 @llvm.ctpop.i8(i8 %795), !mcsema_real_eip !114
  %797 = and i8 %796, 1
  %798 = icmp eq i8 %797, 0
  store i1 %798, i1* %PF_val, !mcsema_real_eip !114
  %799 = extractvalue { i64, i1 } %uadd79, 1
  store i1 %799, i1* %CF_val, !mcsema_real_eip !114
  store i64 %784, i64* %RAX_val, !mcsema_real_eip !114
  %800 = load i64, i64* %RCX_val, !mcsema_real_eip !115
  %801 = add i64 %800, %784, !mcsema_real_eip !115
  %802 = inttoptr i64 %801 to i64*, !mcsema_real_eip !115
  %803 = bitcast i64* %802 to i8*
  %804 = load i8, i8* %803, !mcsema_real_eip !115
  %805 = sext i8 %804 to i32, !mcsema_real_eip !115
  %806 = zext i32 %805 to i64, !mcsema_real_eip !115
  store i64 %806, i64* %RSI_val, !mcsema_real_eip !115
  %807 = add nsw i32 %805, -124
  %808 = xor i32 %807, %805, !mcsema_real_eip !116
  %809 = and i32 %808, 16
  %810 = icmp eq i32 %809, 0
  store i1 %810, i1* %AF_val, !mcsema_real_eip !116
  %811 = trunc i32 %807 to i8, !mcsema_real_eip !116
  %812 = tail call i8 @llvm.ctpop.i8(i8 %811), !mcsema_real_eip !116
  %813 = and i8 %812, 1
  %814 = icmp eq i8 %813, 0
  store i1 %814, i1* %PF_val, !mcsema_real_eip !116
  %815 = icmp eq i32 %807, 0, !mcsema_real_eip !116
  store i1 %815, i1* %ZF_val, !mcsema_real_eip !116
  %816 = icmp slt i32 %807, 0
  store i1 %816, i1* %SF_val, !mcsema_real_eip !116
  %817 = icmp ult i8 %804, 124
  store i1 %817, i1* %CF_val, !mcsema_real_eip !116
  %818 = and i32 %808, %805, !mcsema_real_eip !116
  %819 = icmp slt i32 %818, 0
  store i1 %819, i1* %OF_val, !mcsema_real_eip !116
  %820 = load i1, i1* %ZF_val, !mcsema_real_eip !117
  br i1 %820, label %block_0x29e, label %block_0x2b8, !mcsema_real_eip !117

block_0x2b8:                                      ; preds = %block_0x2ab, %block_0x29e, %block_0x272, %block_0x265
  %821 = load i64, i64* %RBP_val, !mcsema_real_eip !118
  %822 = add i64 %821, -28, !mcsema_real_eip !118
  %823 = inttoptr i64 %822 to i64*, !mcsema_real_eip !118
  %824 = bitcast i64* %823 to i32*
  %825 = load i32, i32* %824, !mcsema_real_eip !118
  %826 = zext i32 %825 to i64, !mcsema_real_eip !118
  store i64 %826, i64* %RAX_val, !mcsema_real_eip !118
  %827 = load i64, i64* %RBP_val, !mcsema_real_eip !119
  %828 = add i64 %827, -20, !mcsema_real_eip !119
  %829 = inttoptr i64 %828 to i64*, !mcsema_real_eip !119
  %830 = bitcast i64* %829 to i32*
  store i32 %825, i32* %830, !mcsema_real_eip !119
  %831 = load i64, i64* %RBP_val, !mcsema_real_eip !120
  %832 = add i64 %831, -32, !mcsema_real_eip !120
  %833 = inttoptr i64 %832 to i64*, !mcsema_real_eip !120
  %834 = bitcast i64* %833 to i32*
  %835 = load i32, i32* %834, !mcsema_real_eip !120
  %836 = zext i32 %835 to i64, !mcsema_real_eip !120
  store i64 %836, i64* %RAX_val, !mcsema_real_eip !120
  %837 = load i64, i64* %RBP_val, !mcsema_real_eip !121
  %838 = add i64 %837, -24, !mcsema_real_eip !121
  %839 = inttoptr i64 %838 to i64*, !mcsema_real_eip !121
  %840 = bitcast i64* %839 to i32*
  store i32 %835, i32* %840, !mcsema_real_eip !121
  br label %block_0x2c4, !mcsema_real_eip !110

block_0x2dc:                                      ; preds = %block_0x2d0
  %841 = load i64, i64* %RBP_val, !mcsema_real_eip !122
  %842 = add i64 %841, -4, !mcsema_real_eip !122
  %843 = inttoptr i64 %842 to i64*, !mcsema_real_eip !122
  %844 = bitcast i64* %843 to i32*
  store i32 2, i32* %844, !mcsema_real_eip !122
  br label %block_0x320, !mcsema_real_eip !123

block_0x29e:                                      ; preds = %block_0x272
  %845 = load i64, i64* %RBP_val, !mcsema_real_eip !124
  %846 = add i64 %845, -20, !mcsema_real_eip !124
  %847 = inttoptr i64 %846 to i64*, !mcsema_real_eip !124
  %848 = bitcast i64* %847 to i32*
  %849 = load i32, i32* %848, !mcsema_real_eip !124
  store i1 false, i1* %AF_val, !mcsema_real_eip !124
  %850 = trunc i32 %849 to i8, !mcsema_real_eip !124
  %851 = tail call i8 @llvm.ctpop.i8(i8 %850), !mcsema_real_eip !124
  %852 = and i8 %851, 1
  %853 = icmp eq i8 %852, 0
  store i1 %853, i1* %PF_val, !mcsema_real_eip !124
  %854 = icmp eq i32 %849, 0, !mcsema_real_eip !124
  store i1 %854, i1* %ZF_val, !mcsema_real_eip !124
  %855 = icmp slt i32 %849, 0
  store i1 %855, i1* %SF_val, !mcsema_real_eip !124
  store i1 false, i1* %CF_val, !mcsema_real_eip !124
  store i1 false, i1* %OF_val, !mcsema_real_eip !124
  %856 = icmp slt i32 %849, 1
  br i1 %856, label %block_0x2b8, label %block_0x2ab, !mcsema_real_eip !125

block_0x2ab:                                      ; preds = %block_0x29e
  %857 = load i64, i64* %RBP_val, !mcsema_real_eip !126
  %858 = add i64 %857, -20, !mcsema_real_eip !126
  %859 = inttoptr i64 %858 to i64*, !mcsema_real_eip !126
  %860 = bitcast i64* %859 to i32*
  %861 = load i32, i32* %860, !mcsema_real_eip !126
  %862 = add i32 %861, -11
  %863 = xor i32 %862, %861, !mcsema_real_eip !126
  %864 = and i32 %863, 16, !mcsema_real_eip !126
  %865 = icmp ne i32 %864, 0, !mcsema_real_eip !126
  store i1 %865, i1* %AF_val, !mcsema_real_eip !126
  %866 = trunc i32 %862 to i8, !mcsema_real_eip !126
  %867 = tail call i8 @llvm.ctpop.i8(i8 %866), !mcsema_real_eip !126
  %868 = and i8 %867, 1
  %869 = icmp eq i8 %868, 0
  store i1 %869, i1* %PF_val, !mcsema_real_eip !126
  %870 = icmp eq i32 %862, 0, !mcsema_real_eip !126
  store i1 %870, i1* %ZF_val, !mcsema_real_eip !126
  %871 = icmp slt i32 %862, 0
  store i1 %871, i1* %SF_val, !mcsema_real_eip !126
  %872 = icmp ult i32 %861, 11, !mcsema_real_eip !126
  store i1 %872, i1* %CF_val, !mcsema_real_eip !126
  %873 = and i32 %863, %861, !mcsema_real_eip !126
  %874 = icmp slt i32 %873, 0
  store i1 %874, i1* %OF_val, !mcsema_real_eip !126
  %875 = xor i1 %871, %874
  br i1 %875, label %block_0x2c4, label %block_0x2b8, !mcsema_real_eip !127
}

declare x86_64_sysvcc i64 @read(i64 inreg, i64 inreg, i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_c0(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 192}
!3 = !{i64 193}
!4 = !{i64 196}
!5 = !{i64 200}
!6 = !{i64 205}
!7 = !{i64 215}
!8 = !{i64 219}
!9 = !{i64 229}
!10 = !{i64 236}
!11 = !{i64 239}
!12 = !{i64 243}
!13 = !{i64 250}
!14 = !{i64 257}
!15 = !{i64 264}
!16 = !{i64 268}
!17 = !{i64 272}
!18 = !{i64 279}
!19 = !{i64 282}
!20 = !{i64 287}
!21 = !{i64 289}
!22 = !{i64 292}
!23 = !{i64 297}
!24 = !{i64 301}
!25 = !{i64 793}
!26 = !{i64 308}
!27 = !{i64 314}
!28 = !{i64 317}
!29 = !{i64 320}
!30 = !{i64 323}
!31 = !{i64 326}
!32 = !{i64 330}
!33 = !{i64 337}
!34 = !{i64 340}
!35 = !{i64 343}
!36 = !{i64 346}
!37 = !{i64 397}
!38 = !{i64 800}
!39 = !{i64 803}
!40 = !{i64 807}
!41 = !{i64 808}
!42 = !{i64 400}
!43 = !{i64 403}
!44 = !{i64 406}
!45 = !{i64 453}
!46 = !{i64 456}
!47 = !{i64 461}
!48 = !{i64 464}
!49 = !{i64 360}
!50 = !{i64 363}
!51 = !{i64 366}
!52 = !{i64 469}
!53 = !{i64 513}
!54 = !{i64 523}
!55 = !{i64 527}
!56 = !{i64 531}
!57 = !{i64 538}
!58 = !{i64 541}
!59 = !{i64 545}
!60 = !{i64 551}
!61 = !{i64 417}
!62 = !{i64 420}
!63 = !{i64 423}
!64 = !{i64 426}
!65 = !{i64 472}
!66 = !{i64 477}
!67 = !{i64 480}
!68 = !{i64 557}
!69 = !{i64 564}
!70 = !{i64 569}
!71 = !{i64 579}
!72 = !{i64 583}
!73 = !{i64 587}
!74 = !{i64 594}
!75 = !{i64 597}
!76 = !{i64 601}
!77 = !{i64 607}
!78 = !{i64 501}
!79 = !{i64 508}
!80 = !{i64 377}
!81 = !{i64 380}
!82 = !{i64 383}
!83 = !{i64 386}
!84 = !{i64 613}
!85 = !{i64 620}
!86 = !{i64 708}
!87 = !{i64 711}
!88 = !{i64 714}
!89 = !{i64 437}
!90 = !{i64 440}
!91 = !{i64 445}
!92 = !{i64 448}
!93 = !{i64 485}
!94 = !{i64 488}
!95 = !{i64 493}
!96 = !{i64 496}
!97 = !{i64 720}
!98 = !{i64 723}
!99 = !{i64 726}
!100 = !{i64 744}
!101 = !{i64 754}
!102 = !{i64 758}
!103 = !{i64 762}
!104 = !{i64 769}
!105 = !{i64 772}
!106 = !{i64 776}
!107 = !{i64 779}
!108 = !{i64 785}
!109 = !{i64 788}
!110 = !{i64 626}
!111 = !{i64 636}
!112 = !{i64 640}
!113 = !{i64 644}
!114 = !{i64 651}
!115 = !{i64 654}
!116 = !{i64 658}
!117 = !{i64 664}
!118 = !{i64 696}
!119 = !{i64 699}
!120 = !{i64 702}
!121 = !{i64 705}
!122 = !{i64 732}
!123 = !{i64 739}
!124 = !{i64 670}
!125 = !{i64 677}
!126 = !{i64 683}
!127 = !{i64 690}
