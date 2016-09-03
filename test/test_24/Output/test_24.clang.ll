; ModuleID = 'Output/test_24.clang.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_0(%struct.regs*) {
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
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %1 = load i64* %RAX, !mcsema_real_eip !2
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !2
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %2 = load i64* %RBX, !mcsema_real_eip !2
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !2
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %3 = load i64* %RCX, !mcsema_real_eip !2
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !2
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %4 = load i64* %RDX, !mcsema_real_eip !2
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !2
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %5 = load i64* %RSI, !mcsema_real_eip !2
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !2
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %6 = load i64* %RDI, !mcsema_real_eip !2
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !2
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %7 = load i64* %RSP, !mcsema_real_eip !2
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !2
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %8 = load i64* %RBP, !mcsema_real_eip !2
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !2
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %9 = load i64* %R8, !mcsema_real_eip !2
  store i64 %9, i64* %R8_val, !mcsema_real_eip !2
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %10 = load i64* %R9, !mcsema_real_eip !2
  store i64 %10, i64* %R9_val, !mcsema_real_eip !2
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %11 = load i64* %R10, !mcsema_real_eip !2
  store i64 %11, i64* %R10_val, !mcsema_real_eip !2
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %12 = load i64* %R11, !mcsema_real_eip !2
  store i64 %12, i64* %R11_val, !mcsema_real_eip !2
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %13 = load i64* %R12, !mcsema_real_eip !2
  store i64 %13, i64* %R12_val, !mcsema_real_eip !2
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %14 = load i64* %R13, !mcsema_real_eip !2
  store i64 %14, i64* %R13_val, !mcsema_real_eip !2
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %15 = load i64* %R14, !mcsema_real_eip !2
  store i64 %15, i64* %R14_val, !mcsema_real_eip !2
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %16 = load i64* %R15, !mcsema_real_eip !2
  store i64 %16, i64* %R15_val, !mcsema_real_eip !2
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %17 = load i64* %RIP, !mcsema_real_eip !2
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !2
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %18 = load i1* %CF, align 1, !mcsema_real_eip !2
  store i1 %18, i1* %CF_val, !mcsema_real_eip !2
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %19 = load i1* %PF, align 1, !mcsema_real_eip !2
  store i1 %19, i1* %PF_val, !mcsema_real_eip !2
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %20 = load i1* %AF, align 1, !mcsema_real_eip !2
  store i1 %20, i1* %AF_val, !mcsema_real_eip !2
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !2
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !2
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %22 = load i1* %SF, align 1, !mcsema_real_eip !2
  store i1 %22, i1* %SF_val, !mcsema_real_eip !2
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %23 = load i1* %OF, align 1, !mcsema_real_eip !2
  store i1 %23, i1* %OF_val, !mcsema_real_eip !2
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %24 = load i1* %DF, align 1, !mcsema_real_eip !2
  store i1 %24, i1* %DF_val, !mcsema_real_eip !2
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !2
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !2
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !2
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !2
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !2
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !2
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !2
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !2
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !2
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !2
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !2
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !2
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !2
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !2
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !2
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !2
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !2
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !2
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !2
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !2
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !2
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !2
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !2
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !2
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !2
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !2
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !2
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !2
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !2
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !2
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !2
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !2
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !2
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !2
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !2
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !2
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !2
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !2
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !2
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !2
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !2
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !2
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !2
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !2
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !2
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !2
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !2
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !2
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !2
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !2
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !2
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !2
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !2
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !2
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !2
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !2
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !2
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !2
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !2
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !2
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !2
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !2
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !2
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !2
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !2
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !2
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !2
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !2
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !2
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !2
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !2
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !2
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !2
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !2
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !2
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !2
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !2
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !2
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !2
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !2
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !2
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !2
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !2
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !2
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !2
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !2
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !2
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !2
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !2
  %77 = load i64* %RBP_val, !mcsema_real_eip !2
  %78 = load i64* %RSP_val, !mcsema_real_eip !2
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !2
  store i64 %77, i64* %80, !mcsema_real_eip !2
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !3
  %81 = add i64 %78, -88
  %82 = xor i64 %81, %79, !mcsema_real_eip !4
  %83 = and i64 %82, 16
  %84 = icmp eq i64 %83, 0
  store i1 %84, i1* %AF_val, !mcsema_real_eip !4
  %85 = trunc i64 %81 to i8, !mcsema_real_eip !4
  %86 = tail call i8 @llvm.ctpop.i8(i8 %85), !mcsema_real_eip !4
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  store i1 %88, i1* %PF_val, !mcsema_real_eip !4
  %89 = icmp eq i64 %81, 0, !mcsema_real_eip !4
  store i1 %89, i1* %ZF_val, !mcsema_real_eip !4
  %90 = icmp slt i64 %81, 0
  store i1 %90, i1* %SF_val, !mcsema_real_eip !4
  %91 = icmp ult i64 %79, 80, !mcsema_real_eip !4
  store i1 %91, i1* %CF_val, !mcsema_real_eip !4
  %92 = and i64 %82, %79, !mcsema_real_eip !4
  %93 = icmp slt i64 %92, 0
  store i1 %93, i1* %OF_val, !mcsema_real_eip !4
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !4
  %94 = load i64* %RBP_val, !mcsema_real_eip !5
  %95 = add i64 %94, -16, !mcsema_real_eip !5
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !5
  %97 = load i64* %RDI_val, !mcsema_real_eip !5
  store i64 %97, i64* %96, !mcsema_real_eip !5
  %98 = load i64* %RBP_val, !mcsema_real_eip !6
  %99 = add i64 %98, -16, !mcsema_real_eip !6
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !6
  %101 = load i64* %100, !mcsema_real_eip !6
  store i64 %101, i64* %RDI_val, !mcsema_real_eip !6
  %102 = tail call x86_64_sysvcc i64 @strlen(i64 %101), !mcsema_real_eip !7
  store i64 %102, i64* %RAX_val, !mcsema_real_eip !7
  %103 = and i64 %102, 4294967295
  store i64 %103, i64* %RCX_val, !mcsema_real_eip !8
  %104 = load i64* %RBP_val, !mcsema_real_eip !9
  %105 = add i64 %104, -32, !mcsema_real_eip !9
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !9
  %107 = trunc i64 %102 to i32, !mcsema_real_eip !9
  %108 = bitcast i64* %106 to i32*
  store i32 %107, i32* %108, !mcsema_real_eip !9
  %109 = load i64* %RBP_val, !mcsema_real_eip !10
  %110 = add i64 %109, -32, !mcsema_real_eip !10
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !10
  %112 = bitcast i64* %111 to i32*
  %113 = load i32* %112, !mcsema_real_eip !10
  %114 = add i32 %113, -37
  %115 = xor i32 %114, %113, !mcsema_real_eip !10
  %116 = and i32 %115, 16, !mcsema_real_eip !10
  %117 = icmp ne i32 %116, 0, !mcsema_real_eip !10
  store i1 %117, i1* %AF_val, !mcsema_real_eip !10
  %118 = trunc i32 %114 to i8, !mcsema_real_eip !10
  %119 = tail call i8 @llvm.ctpop.i8(i8 %118), !mcsema_real_eip !10
  %120 = and i8 %119, 1
  %121 = icmp eq i8 %120, 0
  store i1 %121, i1* %PF_val, !mcsema_real_eip !10
  %122 = icmp eq i32 %114, 0, !mcsema_real_eip !10
  store i1 %122, i1* %ZF_val, !mcsema_real_eip !10
  %123 = icmp slt i32 %114, 0
  store i1 %123, i1* %SF_val, !mcsema_real_eip !10
  %124 = icmp ult i32 %113, 37, !mcsema_real_eip !10
  store i1 %124, i1* %CF_val, !mcsema_real_eip !10
  %125 = and i32 %115, %113, !mcsema_real_eip !10
  %126 = icmp slt i32 %125, 0
  store i1 %126, i1* %OF_val, !mcsema_real_eip !10
  %127 = load i1* %ZF_val, !mcsema_real_eip !11
  %128 = load i64* %RBP_val, !mcsema_real_eip !12
  br i1 %127, label %block_0x32, label %block_0x27, !mcsema_real_eip !11

block_0x32:                                       ; preds = %entry
  %129 = add i64 %128, -16, !mcsema_real_eip !12
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !12
  %131 = load i64* %130, !mcsema_real_eip !12
  %uadd139 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %131, i64 4)
  %132 = extractvalue { i64, i1 } %uadd139, 0
  %133 = xor i64 %132, %131, !mcsema_real_eip !13
  %134 = and i64 %133, 16, !mcsema_real_eip !13
  %135 = icmp ne i64 %134, 0, !mcsema_real_eip !13
  store i1 %135, i1* %AF_val, !mcsema_real_eip !13
  %136 = icmp slt i64 %132, 0
  store i1 %136, i1* %SF_val, !mcsema_real_eip !13
  %137 = icmp eq i64 %132, 0, !mcsema_real_eip !13
  store i1 %137, i1* %ZF_val, !mcsema_real_eip !13
  %138 = xor i64 %131, -9223372036854775808, !mcsema_real_eip !13
  %139 = and i64 %133, %138, !mcsema_real_eip !13
  %140 = icmp slt i64 %139, 0
  store i1 %140, i1* %OF_val, !mcsema_real_eip !13
  %141 = trunc i64 %132 to i8, !mcsema_real_eip !13
  %142 = tail call i8 @llvm.ctpop.i8(i8 %141), !mcsema_real_eip !13
  %143 = and i8 %142, 1
  %144 = icmp eq i8 %143, 0
  store i1 %144, i1* %PF_val, !mcsema_real_eip !13
  %145 = extractvalue { i64, i1 } %uadd139, 1
  store i1 %145, i1* %CF_val, !mcsema_real_eip !13
  store i64 %132, i64* %RAX_val, !mcsema_real_eip !13
  %146 = load i64* %RBP_val, !mcsema_real_eip !14
  %147 = add i64 %146, -16, !mcsema_real_eip !14
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !14
  store i64 %132, i64* %148, !mcsema_real_eip !14
  %149 = load i64* %RBP_val, !mcsema_real_eip !15
  %150 = add i64 %149, -16, !mcsema_real_eip !15
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !15
  %152 = load i64* %151, !mcsema_real_eip !15
  store i64 %152, i64* %RAX_val, !mcsema_real_eip !15
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !16
  %154 = bitcast i64* %153 to i8*
  %155 = load i8* %154, !mcsema_real_eip !16
  %156 = sext i8 %155 to i32, !mcsema_real_eip !16
  %157 = zext i32 %156 to i64, !mcsema_real_eip !16
  store i64 %157, i64* %RCX_val, !mcsema_real_eip !16
  %158 = add nsw i32 %156, -100
  %159 = xor i32 %158, %156, !mcsema_real_eip !17
  %160 = and i32 %159, 16, !mcsema_real_eip !17
  %161 = icmp ne i32 %160, 0, !mcsema_real_eip !17
  store i1 %161, i1* %AF_val, !mcsema_real_eip !17
  %162 = trunc i32 %158 to i8, !mcsema_real_eip !17
  %163 = tail call i8 @llvm.ctpop.i8(i8 %162), !mcsema_real_eip !17
  %164 = and i8 %163, 1
  %165 = icmp eq i8 %164, 0
  store i1 %165, i1* %PF_val, !mcsema_real_eip !17
  %166 = icmp eq i32 %158, 0, !mcsema_real_eip !17
  store i1 %166, i1* %ZF_val, !mcsema_real_eip !17
  %167 = icmp slt i32 %158, 0
  store i1 %167, i1* %SF_val, !mcsema_real_eip !17
  %168 = icmp ult i8 %155, 100
  store i1 %168, i1* %CF_val, !mcsema_real_eip !17
  %169 = and i32 %159, %156, !mcsema_real_eip !17
  %170 = icmp slt i32 %169, 0
  store i1 %170, i1* %OF_val, !mcsema_real_eip !17
  %171 = load i1* %ZF_val, !mcsema_real_eip !18
  %172 = load i64* %RBP_val, !mcsema_real_eip !19
  br i1 %171, label %block_0x5f, label %block_0x53, !mcsema_real_eip !18

block_0x27:                                       ; preds = %entry
  %173 = add i64 %128, -32, !mcsema_real_eip !20
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !20
  %175 = bitcast i64* %174 to i32*
  %176 = load i32* %175, !mcsema_real_eip !20
  %177 = zext i32 %176 to i64, !mcsema_real_eip !20
  store i64 %177, i64* %RAX_val, !mcsema_real_eip !20
  %178 = load i64* %RBP_val, !mcsema_real_eip !21
  %179 = add i64 %178, -4, !mcsema_real_eip !21
  %180 = inttoptr i64 %179 to i64*, !mcsema_real_eip !21
  %181 = bitcast i64* %180 to i32*
  store i32 %176, i32* %181, !mcsema_real_eip !21
  br label %block_0x46d, !mcsema_real_eip !22

block_0x46d:                                      ; preds = %block_0x37e, %block_0x32d, %block_0x309, %block_0x1fa, %block_0x127, %block_0xdb, %block_0xa4, %block_0x77, %block_0x53, %block_0x27
  %182 = load i64* %RBP_val, !mcsema_real_eip !23
  %183 = add i64 %182, -4, !mcsema_real_eip !23
  %184 = inttoptr i64 %183 to i64*, !mcsema_real_eip !23
  %185 = bitcast i64* %184 to i32*
  %186 = load i32* %185, !mcsema_real_eip !23
  %187 = zext i32 %186 to i64, !mcsema_real_eip !23
  store i64 %187, i64* %RAX_val, !mcsema_real_eip !23
  %188 = load i64* %RSP_val, !mcsema_real_eip !24
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %188, i64 80)
  %189 = extractvalue { i64, i1 } %uadd, 0
  %190 = xor i64 %189, %188, !mcsema_real_eip !24
  %191 = and i64 %190, 16
  %192 = icmp eq i64 %191, 0
  store i1 %192, i1* %AF_val, !mcsema_real_eip !24
  %193 = icmp slt i64 %189, 0
  store i1 %193, i1* %SF_val, !mcsema_real_eip !24
  %194 = icmp eq i64 %189, 0, !mcsema_real_eip !24
  store i1 %194, i1* %ZF_val, !mcsema_real_eip !24
  %195 = xor i64 %188, -9223372036854775808, !mcsema_real_eip !24
  %196 = and i64 %190, %195, !mcsema_real_eip !24
  %197 = icmp slt i64 %196, 0
  store i1 %197, i1* %OF_val, !mcsema_real_eip !24
  %198 = trunc i64 %189 to i8, !mcsema_real_eip !24
  %199 = tail call i8 @llvm.ctpop.i8(i8 %198), !mcsema_real_eip !24
  %200 = and i8 %199, 1
  %201 = icmp eq i8 %200, 0
  store i1 %201, i1* %PF_val, !mcsema_real_eip !24
  %202 = extractvalue { i64, i1 } %uadd, 1
  store i1 %202, i1* %CF_val, !mcsema_real_eip !24
  store i64 %189, i64* %RSP_val, !mcsema_real_eip !24
  %203 = inttoptr i64 %189 to i64*, !mcsema_real_eip !25
  %204 = load i64* %203, !mcsema_real_eip !25
  store i64 %204, i64* %RBP_val, !mcsema_real_eip !25
  %205 = add i64 %189, 16, !mcsema_real_eip !26
  store i64 %205, i64* %RSP_val, !mcsema_real_eip !26
  %206 = load i64* %RAX_val, !mcsema_real_eip !26
  store i64 %206, i64* %RAX, !mcsema_real_eip !26
  %207 = load i64* %RBX_val, !mcsema_real_eip !26
  store i64 %207, i64* %RBX, !mcsema_real_eip !26
  %208 = load i64* %RCX_val, !mcsema_real_eip !26
  store i64 %208, i64* %RCX, !mcsema_real_eip !26
  %209 = load i64* %RDX_val, !mcsema_real_eip !26
  store i64 %209, i64* %RDX, !mcsema_real_eip !26
  %210 = load i64* %RSI_val, !mcsema_real_eip !26
  store i64 %210, i64* %RSI, !mcsema_real_eip !26
  %211 = load i64* %RDI_val, !mcsema_real_eip !26
  store i64 %211, i64* %RDI, !mcsema_real_eip !26
  %212 = load i64* %RSP_val, !mcsema_real_eip !26
  store i64 %212, i64* %RSP, !mcsema_real_eip !26
  %213 = load i64* %RBP_val, !mcsema_real_eip !26
  store i64 %213, i64* %RBP, !mcsema_real_eip !26
  %214 = load i64* %R8_val, !mcsema_real_eip !26
  store i64 %214, i64* %R8, !mcsema_real_eip !26
  %215 = load i64* %R9_val, !mcsema_real_eip !26
  store i64 %215, i64* %R9, !mcsema_real_eip !26
  %216 = load i64* %R10_val, !mcsema_real_eip !26
  store i64 %216, i64* %R10, !mcsema_real_eip !26
  %217 = load i64* %R11_val, !mcsema_real_eip !26
  store i64 %217, i64* %R11, !mcsema_real_eip !26
  %218 = load i64* %R12_val, !mcsema_real_eip !26
  store i64 %218, i64* %R12, !mcsema_real_eip !26
  %219 = load i64* %R13_val, !mcsema_real_eip !26
  store i64 %219, i64* %R13, !mcsema_real_eip !26
  %220 = load i64* %R14_val, !mcsema_real_eip !26
  store i64 %220, i64* %R14, !mcsema_real_eip !26
  %221 = load i64* %R15_val, !mcsema_real_eip !26
  store i64 %221, i64* %R15, !mcsema_real_eip !26
  %222 = load i64* %RIP_val, !mcsema_real_eip !26
  store i64 %222, i64* %RIP, !mcsema_real_eip !26
  %223 = load i1* %CF_val, !mcsema_real_eip !26
  store i1 %223, i1* %CF, align 1, !mcsema_real_eip !26
  %224 = load i1* %PF_val, !mcsema_real_eip !26
  store i1 %224, i1* %PF, align 1, !mcsema_real_eip !26
  %225 = load i1* %AF_val, !mcsema_real_eip !26
  store i1 %225, i1* %AF, align 1, !mcsema_real_eip !26
  %226 = load i1* %ZF_val, !mcsema_real_eip !26
  store i1 %226, i1* %ZF, align 1, !mcsema_real_eip !26
  %227 = load i1* %SF_val, !mcsema_real_eip !26
  store i1 %227, i1* %SF, align 1, !mcsema_real_eip !26
  %228 = load i1* %OF_val, !mcsema_real_eip !26
  store i1 %228, i1* %OF, align 1, !mcsema_real_eip !26
  %229 = load i1* %DF_val, !mcsema_real_eip !26
  store i1 %229, i1* %DF, align 1, !mcsema_real_eip !26
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !26
  %230 = load i1* %FPU_B_val, !mcsema_real_eip !26
  store i1 %230, i1* %FPU_B, align 1, !mcsema_real_eip !26
  %231 = load i1* %FPU_C3_val, !mcsema_real_eip !26
  store i1 %231, i1* %FPU_C3, align 1, !mcsema_real_eip !26
  %232 = load i3* %FPU_TOP_val, !mcsema_real_eip !26
  store i3 %232, i3* %FPU_TOP, align 1, !mcsema_real_eip !26
  %233 = load i1* %FPU_C2_val, !mcsema_real_eip !26
  store i1 %233, i1* %FPU_C2, align 1, !mcsema_real_eip !26
  %234 = load i1* %FPU_C1_val, !mcsema_real_eip !26
  store i1 %234, i1* %FPU_C1, align 1, !mcsema_real_eip !26
  %235 = load i1* %FPU_C0_val, !mcsema_real_eip !26
  store i1 %235, i1* %FPU_C0, align 1, !mcsema_real_eip !26
  %236 = load i1* %FPU_ES_val, !mcsema_real_eip !26
  store i1 %236, i1* %FPU_ES, align 1, !mcsema_real_eip !26
  %237 = load i1* %FPU_SF_val, !mcsema_real_eip !26
  store i1 %237, i1* %FPU_SF, align 1, !mcsema_real_eip !26
  %238 = load i1* %FPU_PE_val, !mcsema_real_eip !26
  store i1 %238, i1* %FPU_PE, align 1, !mcsema_real_eip !26
  %239 = load i1* %FPU_UE_val, !mcsema_real_eip !26
  store i1 %239, i1* %FPU_UE, align 1, !mcsema_real_eip !26
  %240 = load i1* %FPU_OE_val, !mcsema_real_eip !26
  store i1 %240, i1* %FPU_OE, align 1, !mcsema_real_eip !26
  %241 = load i1* %FPU_ZE_val, !mcsema_real_eip !26
  store i1 %241, i1* %FPU_ZE, align 1, !mcsema_real_eip !26
  %242 = load i1* %FPU_DE_val, !mcsema_real_eip !26
  store i1 %242, i1* %FPU_DE, align 1, !mcsema_real_eip !26
  %243 = load i1* %FPU_IE_val, !mcsema_real_eip !26
  store i1 %243, i1* %FPU_IE, align 1, !mcsema_real_eip !26
  %244 = load i1* %FPU_X_val, !mcsema_real_eip !26
  store i1 %244, i1* %FPU_X, align 1, !mcsema_real_eip !26
  %245 = load i2* %FPU_RC_val, !mcsema_real_eip !26
  store i2 %245, i2* %FPU_RC, align 1, !mcsema_real_eip !26
  %246 = load i2* %FPU_PC_val, !mcsema_real_eip !26
  store i2 %246, i2* %FPU_PC, align 1, !mcsema_real_eip !26
  %247 = load i1* %FPU_PM_val, !mcsema_real_eip !26
  store i1 %247, i1* %FPU_PM, align 1, !mcsema_real_eip !26
  %248 = load i1* %FPU_UM_val, !mcsema_real_eip !26
  store i1 %248, i1* %FPU_UM, align 1, !mcsema_real_eip !26
  %249 = load i1* %FPU_OM_val, !mcsema_real_eip !26
  store i1 %249, i1* %FPU_OM, align 1, !mcsema_real_eip !26
  %250 = load i1* %FPU_ZM_val, !mcsema_real_eip !26
  store i1 %250, i1* %FPU_ZM, align 1, !mcsema_real_eip !26
  %251 = load i1* %FPU_DM_val, !mcsema_real_eip !26
  store i1 %251, i1* %FPU_DM, align 1, !mcsema_real_eip !26
  %252 = load i1* %FPU_IM_val, !mcsema_real_eip !26
  store i1 %252, i1* %FPU_IM, align 1, !mcsema_real_eip !26
  %253 = load i64* %53, align 4
  store i64 %253, i64* %52, align 4
  %254 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !26
  store i16 %254, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !26
  %255 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !26
  store i64 %255, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !26
  %256 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !26
  store i16 %256, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !26
  %257 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !26
  store i64 %257, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !26
  %258 = load i128* %XMM0_val, !mcsema_real_eip !26
  store i128 %258, i128* %XMM0, align 1, !mcsema_real_eip !26
  %259 = load i128* %XMM1_val, !mcsema_real_eip !26
  store i128 %259, i128* %XMM1, align 1, !mcsema_real_eip !26
  %260 = load i128* %XMM2_val, !mcsema_real_eip !26
  store i128 %260, i128* %XMM2, align 1, !mcsema_real_eip !26
  %261 = load i128* %XMM3_val, !mcsema_real_eip !26
  store i128 %261, i128* %XMM3, align 1, !mcsema_real_eip !26
  %262 = load i128* %XMM4_val, !mcsema_real_eip !26
  store i128 %262, i128* %XMM4, align 1, !mcsema_real_eip !26
  %263 = load i128* %XMM5_val, !mcsema_real_eip !26
  store i128 %263, i128* %XMM5, align 1, !mcsema_real_eip !26
  %264 = load i128* %XMM6_val, !mcsema_real_eip !26
  store i128 %264, i128* %XMM6, align 1, !mcsema_real_eip !26
  %265 = load i128* %XMM7_val, !mcsema_real_eip !26
  store i128 %265, i128* %XMM7, align 1, !mcsema_real_eip !26
  %266 = load i128* %XMM8_val, !mcsema_real_eip !26
  store i128 %266, i128* %XMM8, align 1, !mcsema_real_eip !26
  %267 = load i128* %XMM9_val, !mcsema_real_eip !26
  store i128 %267, i128* %XMM9, align 1, !mcsema_real_eip !26
  %268 = load i128* %XMM10_val, !mcsema_real_eip !26
  store i128 %268, i128* %XMM10, align 1, !mcsema_real_eip !26
  %269 = load i128* %XMM11_val, !mcsema_real_eip !26
  store i128 %269, i128* %XMM11, align 1, !mcsema_real_eip !26
  %270 = load i128* %XMM12_val, !mcsema_real_eip !26
  store i128 %270, i128* %XMM12, align 1, !mcsema_real_eip !26
  %271 = load i128* %XMM13_val, !mcsema_real_eip !26
  store i128 %271, i128* %XMM13, align 1, !mcsema_real_eip !26
  %272 = load i128* %XMM14_val, !mcsema_real_eip !26
  store i128 %272, i128* %XMM14, align 1, !mcsema_real_eip !26
  %273 = load i128* %XMM15_val, !mcsema_real_eip !26
  store i128 %273, i128* %XMM15, align 1, !mcsema_real_eip !26
  %274 = load i64* %STACK_BASE_val, !mcsema_real_eip !26
  store i64 %274, i64* %STACK_BASE, align 1, !mcsema_real_eip !26
  %275 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !26
  store i64 %275, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !26
  ret void, !mcsema_real_eip !26

block_0x5f:                                       ; preds = %block_0x32
  %276 = add i64 %172, -16, !mcsema_real_eip !19
  %277 = inttoptr i64 %276 to i64*, !mcsema_real_eip !19
  %278 = load i64* %277, !mcsema_real_eip !19
  store i64 %278, i64* %RAX_val, !mcsema_real_eip !19
  %279 = add i64 %278, 1, !mcsema_real_eip !27
  %280 = inttoptr i64 %279 to i64*, !mcsema_real_eip !27
  %281 = bitcast i64* %280 to i8*
  %282 = load i8* %281, !mcsema_real_eip !27
  %283 = zext i8 %282 to i64
  store i64 %283, i64* %RDI_val, !mcsema_real_eip !27
  %284 = tail call x86_64_sysvcc i64 @to_byte(i64 %283), !mcsema_real_eip !28
  store i64 %284, i64* %RAX_val, !mcsema_real_eip !28
  %285 = trunc i64 %284 to i32, !mcsema_real_eip !29
  %286 = add i32 %285, -9
  %287 = xor i32 %286, %285, !mcsema_real_eip !29
  %288 = and i32 %287, 16, !mcsema_real_eip !29
  %289 = icmp ne i32 %288, 0, !mcsema_real_eip !29
  store i1 %289, i1* %AF_val, !mcsema_real_eip !29
  %290 = trunc i32 %286 to i8, !mcsema_real_eip !29
  %291 = tail call i8 @llvm.ctpop.i8(i8 %290), !mcsema_real_eip !29
  %292 = and i8 %291, 1
  %293 = icmp eq i8 %292, 0
  store i1 %293, i1* %PF_val, !mcsema_real_eip !29
  %294 = icmp eq i32 %286, 0, !mcsema_real_eip !29
  store i1 %294, i1* %ZF_val, !mcsema_real_eip !29
  %295 = icmp slt i32 %286, 0
  store i1 %295, i1* %SF_val, !mcsema_real_eip !29
  %296 = icmp ult i32 %285, 9, !mcsema_real_eip !29
  store i1 %296, i1* %CF_val, !mcsema_real_eip !29
  %297 = and i32 %287, %285, !mcsema_real_eip !29
  %298 = icmp slt i32 %297, 0
  store i1 %298, i1* %OF_val, !mcsema_real_eip !29
  %299 = load i1* %ZF_val, !mcsema_real_eip !30
  %300 = load i64* %RBP_val, !mcsema_real_eip !31
  br i1 %299, label %block_0x83, label %block_0x77, !mcsema_real_eip !30

block_0x53:                                       ; preds = %block_0x32
  %301 = add i64 %172, -4, !mcsema_real_eip !32
  %302 = inttoptr i64 %301 to i64*, !mcsema_real_eip !32
  %303 = bitcast i64* %302 to i32*
  store i32 -2, i32* %303, !mcsema_real_eip !32
  br label %block_0x46d, !mcsema_real_eip !33

block_0x83:                                       ; preds = %block_0x5f
  %304 = add i64 %300, -16, !mcsema_real_eip !31
  %305 = inttoptr i64 %304 to i64*, !mcsema_real_eip !31
  %306 = load i64* %305, !mcsema_real_eip !31
  store i64 %306, i64* %RAX_val, !mcsema_real_eip !31
  %307 = add i64 %306, 2, !mcsema_real_eip !34
  %308 = inttoptr i64 %307 to i64*, !mcsema_real_eip !34
  %309 = bitcast i64* %308 to i8*
  %310 = load i8* %309, !mcsema_real_eip !34
  %311 = zext i8 %310 to i64
  store i64 %311, i64* %RDI_val, !mcsema_real_eip !34
  %312 = tail call x86_64_sysvcc i64 @to_byte(i64 %311), !mcsema_real_eip !35
  store i64 %312, i64* %RAX_val, !mcsema_real_eip !35
  %313 = load i64* %RBP_val, !mcsema_real_eip !36
  %314 = add i64 %313, -24, !mcsema_real_eip !36
  %315 = inttoptr i64 %314 to i64*, !mcsema_real_eip !36
  %316 = trunc i64 %312 to i32, !mcsema_real_eip !36
  %317 = bitcast i64* %315 to i32*
  store i32 %316, i32* %317, !mcsema_real_eip !36
  %318 = load i64* %RBP_val, !mcsema_real_eip !37
  %319 = add i64 %318, -24, !mcsema_real_eip !37
  %320 = inttoptr i64 %319 to i64*, !mcsema_real_eip !37
  %321 = bitcast i64* %320 to i32*
  %322 = load i32* %321, !mcsema_real_eip !37
  %323 = shl i32 %322, 1, !mcsema_real_eip !38
  %324 = zext i32 %323 to i64, !mcsema_real_eip !38
  store i64 %324, i64* %RAX_val, !mcsema_real_eip !38
  %325 = add i32 %323, -26
  %326 = xor i32 %325, %323, !mcsema_real_eip !39
  %327 = and i32 %326, 16
  %328 = icmp eq i32 %327, 0
  store i1 %328, i1* %AF_val, !mcsema_real_eip !39
  %329 = trunc i32 %325 to i8, !mcsema_real_eip !39
  %330 = tail call i8 @llvm.ctpop.i8(i8 %329), !mcsema_real_eip !39
  %331 = and i8 %330, 1
  %332 = icmp eq i8 %331, 0
  store i1 %332, i1* %PF_val, !mcsema_real_eip !39
  %333 = icmp eq i32 %325, 0, !mcsema_real_eip !39
  store i1 %333, i1* %ZF_val, !mcsema_real_eip !39
  %334 = icmp slt i32 %325, 0
  store i1 %334, i1* %SF_val, !mcsema_real_eip !39
  %335 = icmp ult i32 %323, 26, !mcsema_real_eip !39
  store i1 %335, i1* %CF_val, !mcsema_real_eip !39
  %336 = and i32 %326, %323, !mcsema_real_eip !39
  %337 = icmp slt i32 %336, 0
  store i1 %337, i1* %OF_val, !mcsema_real_eip !39
  %338 = load i1* %ZF_val, !mcsema_real_eip !40
  %339 = load i64* %RBP_val, !mcsema_real_eip !41
  br i1 %338, label %block_0xb0, label %block_0xa4, !mcsema_real_eip !40

block_0x77:                                       ; preds = %block_0x5f
  %340 = add i64 %300, -4, !mcsema_real_eip !42
  %341 = inttoptr i64 %340 to i64*, !mcsema_real_eip !42
  %342 = bitcast i64* %341 to i32*
  store i32 -3, i32* %342, !mcsema_real_eip !42
  br label %block_0x46d, !mcsema_real_eip !43

block_0xb0:                                       ; preds = %block_0x83
  %343 = add i64 %339, -16, !mcsema_real_eip !41
  %344 = inttoptr i64 %343 to i64*, !mcsema_real_eip !41
  %345 = load i64* %344, !mcsema_real_eip !41
  store i64 %345, i64* %RAX_val, !mcsema_real_eip !41
  %346 = add i64 %345, 3, !mcsema_real_eip !44
  %347 = inttoptr i64 %346 to i64*, !mcsema_real_eip !44
  %348 = bitcast i64* %347 to i8*
  %349 = load i8* %348, !mcsema_real_eip !44
  %350 = zext i8 %349 to i64
  %351 = tail call x86_64_sysvcc i64 @to_byte(i64 %350), !mcsema_real_eip !45
  store i64 %351, i64* %RAX_val, !mcsema_real_eip !45
  store i64 2, i64* %RDI_val, !mcsema_real_eip !46
  %352 = load i64* %RBP_val, !mcsema_real_eip !47
  %353 = add i64 %352, -28, !mcsema_real_eip !47
  %354 = inttoptr i64 %353 to i64*, !mcsema_real_eip !47
  %355 = trunc i64 %351 to i32, !mcsema_real_eip !47
  %356 = bitcast i64* %354 to i32*
  store i32 %355, i32* %356, !mcsema_real_eip !47
  %357 = load i64* %RBP_val, !mcsema_real_eip !48
  %358 = add i64 %357, -28, !mcsema_real_eip !48
  %359 = inttoptr i64 %358 to i64*, !mcsema_real_eip !48
  %360 = bitcast i64* %359 to i32*
  %361 = load i32* %360, !mcsema_real_eip !48
  %362 = add i32 %361, 1
  %.lobit = ashr i32 %362, 31
  %363 = zext i32 %.lobit to i64, !mcsema_real_eip !49
  %364 = load i64* %RDI_val, !mcsema_real_eip !50
  %365 = shl nuw i64 %363, 32, !mcsema_real_eip !50
  %366 = sext i32 %362 to i64, !mcsema_real_eip !50
  %367 = or i64 %365, %366, !mcsema_real_eip !50
  %sext = shl i64 %364, 32
  %368 = ashr exact i64 %sext, 32
  %369 = sdiv i64 %367, %368, !mcsema_real_eip !50
  %370 = srem i64 %367, %368, !mcsema_real_eip !50
  %371 = and i64 %370, 4294967295
  store i64 %371, i64* %RDX_val, !mcsema_real_eip !50
  %372 = and i64 %369, 4294967295
  store i64 %372, i64* %RAX_val, !mcsema_real_eip !50
  %373 = trunc i64 %369 to i32, !mcsema_real_eip !51
  %374 = add i32 %373, -7
  %375 = xor i32 %374, %373, !mcsema_real_eip !51
  %376 = and i32 %375, 16, !mcsema_real_eip !51
  %377 = icmp ne i32 %376, 0, !mcsema_real_eip !51
  store i1 %377, i1* %AF_val, !mcsema_real_eip !51
  %378 = trunc i32 %374 to i8, !mcsema_real_eip !51
  %379 = tail call i8 @llvm.ctpop.i8(i8 %378), !mcsema_real_eip !51
  %380 = and i8 %379, 1
  %381 = icmp eq i8 %380, 0
  store i1 %381, i1* %PF_val, !mcsema_real_eip !51
  %382 = icmp eq i32 %374, 0, !mcsema_real_eip !51
  store i1 %382, i1* %ZF_val, !mcsema_real_eip !51
  %383 = icmp slt i32 %374, 0
  store i1 %383, i1* %SF_val, !mcsema_real_eip !51
  %384 = icmp ult i32 %373, 7, !mcsema_real_eip !51
  store i1 %384, i1* %CF_val, !mcsema_real_eip !51
  %385 = and i32 %375, %373, !mcsema_real_eip !51
  %386 = icmp slt i32 %385, 0
  store i1 %386, i1* %OF_val, !mcsema_real_eip !51
  %387 = load i1* %ZF_val, !mcsema_real_eip !52
  %388 = load i64* %RBP_val, !mcsema_real_eip !53
  br i1 %387, label %block_0xe7, label %block_0xdb, !mcsema_real_eip !52

block_0xa4:                                       ; preds = %block_0x83
  %389 = add i64 %339, -4, !mcsema_real_eip !54
  %390 = inttoptr i64 %389 to i64*, !mcsema_real_eip !54
  %391 = bitcast i64* %390 to i32*
  store i32 -4, i32* %391, !mcsema_real_eip !54
  br label %block_0x46d, !mcsema_real_eip !55

block_0xe7:                                       ; preds = %block_0xb0
  %392 = add i64 %388, -16, !mcsema_real_eip !53
  %393 = inttoptr i64 %392 to i64*, !mcsema_real_eip !53
  %394 = load i64* %393, !mcsema_real_eip !53
  store i64 %394, i64* %RAX_val, !mcsema_real_eip !53
  %395 = add i64 %394, 4, !mcsema_real_eip !56
  %396 = inttoptr i64 %395 to i64*, !mcsema_real_eip !56
  %397 = bitcast i64* %396 to i8*
  %398 = load i8* %397, !mcsema_real_eip !56
  %399 = zext i8 %398 to i32
  %400 = and i32 %399, 15, !mcsema_real_eip !57
  %401 = icmp eq i32 %400, 0, !mcsema_real_eip !57
  %402 = zext i32 %400 to i64, !mcsema_real_eip !57
  store i64 %402, i64* %RCX_val, !mcsema_real_eip !57
  %403 = add nsw i32 %400, -1
  %404 = and i32 %403, 16, !mcsema_real_eip !58
  %405 = icmp ne i32 %404, 0, !mcsema_real_eip !58
  store i1 %405, i1* %AF_val, !mcsema_real_eip !58
  %406 = trunc i32 %403 to i8, !mcsema_real_eip !58
  %407 = tail call i8 @llvm.ctpop.i8(i8 %406), !mcsema_real_eip !58
  %408 = and i8 %407, 1
  %409 = icmp eq i8 %408, 0
  store i1 %409, i1* %PF_val, !mcsema_real_eip !58
  %410 = icmp eq i32 %403, 0, !mcsema_real_eip !58
  store i1 %410, i1* %ZF_val, !mcsema_real_eip !58
  store i1 %401, i1* %SF_val, !mcsema_real_eip !58
  store i1 %401, i1* %CF_val, !mcsema_real_eip !58
  store i1 false, i1* %OF_val, !mcsema_real_eip !58
  br i1 %410, label %block_0x101, label %block_0x127, !mcsema_real_eip !59

block_0xdb:                                       ; preds = %block_0xb0
  %411 = add i64 %388, -4, !mcsema_real_eip !60
  %412 = inttoptr i64 %411 to i64*, !mcsema_real_eip !60
  %413 = bitcast i64* %412 to i32*
  store i32 -5, i32* %413, !mcsema_real_eip !60
  br label %block_0x46d, !mcsema_real_eip !61

block_0x127:                                      ; preds = %block_0x101, %block_0xe7
  %414 = load i64* %RBP_val, !mcsema_real_eip !62
  %415 = add i64 %414, -4, !mcsema_real_eip !62
  %416 = inttoptr i64 %415 to i64*, !mcsema_real_eip !62
  %417 = bitcast i64* %416 to i32*
  store i32 -6, i32* %417, !mcsema_real_eip !62
  br label %block_0x46d, !mcsema_real_eip !63

block_0x101:                                      ; preds = %block_0xe7
  %418 = load i64* %RBP_val, !mcsema_real_eip !64
  %419 = add i64 %418, -16, !mcsema_real_eip !64
  %420 = inttoptr i64 %419 to i64*, !mcsema_real_eip !64
  %421 = load i64* %420, !mcsema_real_eip !64
  store i64 %421, i64* %RAX_val, !mcsema_real_eip !64
  %422 = add i64 %421, 4, !mcsema_real_eip !65
  %423 = inttoptr i64 %422 to i64*, !mcsema_real_eip !65
  %424 = bitcast i64* %423 to i8*
  %425 = load i8* %424, !mcsema_real_eip !65
  %426 = sext i8 %425 to i32, !mcsema_real_eip !65
  %427 = and i32 %426, 240, !mcsema_real_eip !66
  %428 = zext i32 %427 to i64, !mcsema_real_eip !66
  store i64 %428, i64* %RCX_val, !mcsema_real_eip !66
  %429 = add nsw i32 %427, -48
  %430 = xor i32 %429, %426, !mcsema_real_eip !67
  %431 = and i32 %430, 16
  %432 = icmp eq i32 %431, 0
  store i1 %432, i1* %AF_val, !mcsema_real_eip !67
  %433 = trunc i32 %429 to i8, !mcsema_real_eip !67
  %434 = tail call i8 @llvm.ctpop.i8(i8 %433), !mcsema_real_eip !67
  %435 = and i8 %434, 1
  %436 = icmp eq i8 %435, 0
  store i1 %436, i1* %PF_val, !mcsema_real_eip !67
  %437 = icmp eq i32 %429, 0, !mcsema_real_eip !67
  store i1 %437, i1* %ZF_val, !mcsema_real_eip !67
  %438 = icmp slt i32 %429, 0
  store i1 %438, i1* %SF_val, !mcsema_real_eip !67
  %439 = icmp ult i32 %427, 48, !mcsema_real_eip !67
  store i1 %439, i1* %CF_val, !mcsema_real_eip !67
  store i1 false, i1* %OF_val, !mcsema_real_eip !67
  br i1 %437, label %block_0x11b, label %block_0x127, !mcsema_real_eip !68

block_0x11b:                                      ; preds = %block_0x101
  %440 = load i64* %RBP_val, !mcsema_real_eip !69
  %441 = add i64 %440, -20, !mcsema_real_eip !69
  %442 = inttoptr i64 %441 to i64*, !mcsema_real_eip !69
  %443 = bitcast i64* %442 to i32*
  store i32 -4, i32* %443, !mcsema_real_eip !69
  %444 = load i64* %RBP_val, !mcsema_real_eip !70
  %445 = add i64 %444, -16, !mcsema_real_eip !70
  %446 = inttoptr i64 %445 to i64*, !mcsema_real_eip !70
  %447 = load i64* %446, !mcsema_real_eip !70
  store i64 %447, i64* %RAX_val, !mcsema_real_eip !70
  %448 = add i64 %447, 5, !mcsema_real_eip !71
  %449 = inttoptr i64 %448 to i64*, !mcsema_real_eip !71
  %450 = bitcast i64* %449 to i8*
  %451 = load i8* %450, !mcsema_real_eip !71
  %452 = zext i8 %451 to i32
  %453 = and i32 %452, 15, !mcsema_real_eip !72
  store i1 false, i1* %SF_val, !mcsema_real_eip !72
  %454 = icmp eq i32 %453, 0, !mcsema_real_eip !72
  store i1 %454, i1* %ZF_val, !mcsema_real_eip !72
  %455 = trunc i32 %453 to i8, !mcsema_real_eip !72
  %456 = tail call i8 @llvm.ctpop.i8(i8 %455), !mcsema_real_eip !72
  %457 = and i8 %456, 1
  %458 = icmp eq i8 %457, 0
  store i1 %458, i1* %PF_val, !mcsema_real_eip !72
  store i1 false, i1* %OF_val, !mcsema_real_eip !72
  store i1 false, i1* %CF_val, !mcsema_real_eip !72
  %459 = zext i32 %453 to i64, !mcsema_real_eip !72
  store i64 %459, i64* %RCX_val, !mcsema_real_eip !72
  %460 = load i64* %RDX_val, !mcsema_real_eip !73
  %461 = and i64 %460, -256, !mcsema_real_eip !73
  %462 = or i64 %461, %459
  store i64 %462, i64* %RDX_val, !mcsema_real_eip !73
  %463 = load i64* %RBP_val, !mcsema_real_eip !74
  %464 = add i64 %463, -33, !mcsema_real_eip !74
  %465 = inttoptr i64 %464 to i64*, !mcsema_real_eip !74
  %466 = bitcast i64* %465 to i8*
  store i8 %455, i8* %466, !mcsema_real_eip !74
  %467 = load i64* %RBP_val, !mcsema_real_eip !75
  %468 = add i64 %467, -16, !mcsema_real_eip !75
  %469 = inttoptr i64 %468 to i64*, !mcsema_real_eip !75
  %470 = load i64* %469, !mcsema_real_eip !75
  store i64 %470, i64* %RAX_val, !mcsema_real_eip !75
  %471 = add i64 %470, 5, !mcsema_real_eip !76
  %472 = inttoptr i64 %471 to i64*, !mcsema_real_eip !76
  %473 = bitcast i64* %472 to i8*
  %474 = load i8* %473, !mcsema_real_eip !76
  %475 = zext i8 %474 to i32
  %476 = and i32 %475, 240, !mcsema_real_eip !77
  store i1 false, i1* %SF_val, !mcsema_real_eip !77
  %477 = icmp eq i32 %476, 0, !mcsema_real_eip !77
  store i1 %477, i1* %ZF_val, !mcsema_real_eip !77
  %478 = trunc i32 %476 to i8, !mcsema_real_eip !77
  %479 = tail call i8 @llvm.ctpop.i8(i8 %478), !mcsema_real_eip !77
  %480 = and i8 %479, 1
  %481 = icmp eq i8 %480, 0
  store i1 %481, i1* %PF_val, !mcsema_real_eip !77
  store i1 false, i1* %OF_val, !mcsema_real_eip !77
  store i1 false, i1* %CF_val, !mcsema_real_eip !77
  %482 = zext i32 %476 to i64, !mcsema_real_eip !77
  store i64 %482, i64* %RCX_val, !mcsema_real_eip !77
  %483 = load i64* %RDX_val, !mcsema_real_eip !78
  %484 = and i64 %483, -256, !mcsema_real_eip !78
  %485 = or i64 %484, %482
  store i64 %485, i64* %RDX_val, !mcsema_real_eip !78
  %486 = load i64* %RBP_val, !mcsema_real_eip !79
  %487 = add i64 %486, -34, !mcsema_real_eip !79
  %488 = inttoptr i64 %487 to i64*, !mcsema_real_eip !79
  %489 = bitcast i64* %488 to i8*
  store i8 %478, i8* %489, !mcsema_real_eip !79
  %490 = load i64* %RBP_val, !mcsema_real_eip !80
  %491 = add i64 %490, -33, !mcsema_real_eip !80
  %492 = inttoptr i64 %491 to i64*, !mcsema_real_eip !80
  %493 = bitcast i64* %492 to i8*
  %494 = load i8* %493, !mcsema_real_eip !80
  %495 = zext i8 %494 to i64
  store i64 %495, i64* %RCX_val, !mcsema_real_eip !80
  %496 = zext i8 %494 to i32
  %497 = add nsw i32 %496, -3
  %498 = xor i32 %497, %496, !mcsema_real_eip !81
  %499 = and i32 %498, 16, !mcsema_real_eip !81
  %500 = icmp ne i32 %499, 0, !mcsema_real_eip !81
  store i1 %500, i1* %AF_val, !mcsema_real_eip !81
  %501 = trunc i32 %497 to i8, !mcsema_real_eip !81
  %502 = tail call i8 @llvm.ctpop.i8(i8 %501), !mcsema_real_eip !81
  %503 = and i8 %502, 1
  %504 = icmp eq i8 %503, 0
  store i1 %504, i1* %PF_val, !mcsema_real_eip !81
  %505 = icmp eq i32 %497, 0, !mcsema_real_eip !81
  store i1 %505, i1* %ZF_val, !mcsema_real_eip !81
  %506 = icmp slt i32 %497, 0
  store i1 %506, i1* %SF_val, !mcsema_real_eip !81
  %507 = icmp ult i8 %494, 3
  store i1 %507, i1* %CF_val, !mcsema_real_eip !81
  store i1 false, i1* %OF_val, !mcsema_real_eip !81
  br i1 %505, label %block_0x169, label %block_0x188, !mcsema_real_eip !82

block_0x188:                                      ; preds = %block_0x169, %block_0x11b
  %508 = load i64* %RBP_val, !mcsema_real_eip !83
  %509 = add i64 %508, -20, !mcsema_real_eip !83
  %510 = inttoptr i64 %509 to i64*, !mcsema_real_eip !83
  %511 = bitcast i64* %510 to i32*
  %512 = load i32* %511, !mcsema_real_eip !83
  %uadd151 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %512, i32 5)
  %513 = extractvalue { i32, i1 } %uadd151, 0
  %514 = xor i32 %513, %512, !mcsema_real_eip !84
  %515 = and i32 %514, 16, !mcsema_real_eip !84
  %516 = icmp ne i32 %515, 0, !mcsema_real_eip !84
  store i1 %516, i1* %AF_val, !mcsema_real_eip !84
  %517 = icmp slt i32 %513, 0
  store i1 %517, i1* %SF_val, !mcsema_real_eip !84
  %518 = icmp eq i32 %513, 0, !mcsema_real_eip !84
  store i1 %518, i1* %ZF_val, !mcsema_real_eip !84
  %519 = xor i32 %512, -2147483648, !mcsema_real_eip !84
  %520 = and i32 %514, %519, !mcsema_real_eip !84
  %521 = icmp slt i32 %520, 0
  store i1 %521, i1* %OF_val, !mcsema_real_eip !84
  %522 = trunc i32 %513 to i8, !mcsema_real_eip !84
  %523 = tail call i8 @llvm.ctpop.i8(i8 %522), !mcsema_real_eip !84
  %524 = and i8 %523, 1
  %525 = icmp eq i8 %524, 0
  store i1 %525, i1* %PF_val, !mcsema_real_eip !84
  %526 = extractvalue { i32, i1 } %uadd151, 1
  store i1 %526, i1* %CF_val, !mcsema_real_eip !84
  %527 = zext i32 %513 to i64, !mcsema_real_eip !84
  store i64 %527, i64* %RAX_val, !mcsema_real_eip !84
  %528 = load i64* %RBP_val, !mcsema_real_eip !85
  %529 = add i64 %528, -20, !mcsema_real_eip !85
  %530 = inttoptr i64 %529 to i64*, !mcsema_real_eip !85
  %531 = bitcast i64* %530 to i32*
  store i32 %513, i32* %531, !mcsema_real_eip !85
  %532 = load i64* %RBP_val, !mcsema_real_eip !86
  %533 = add i64 %532, -16, !mcsema_real_eip !86
  %534 = inttoptr i64 %533 to i64*, !mcsema_real_eip !86
  %535 = load i64* %534, !mcsema_real_eip !86
  store i64 %535, i64* %RAX_val, !mcsema_real_eip !86
  %536 = add i64 %535, 6, !mcsema_real_eip !87
  %537 = inttoptr i64 %536 to i64*, !mcsema_real_eip !87
  %538 = bitcast i64* %537 to i8*
  %539 = load i8* %538, !mcsema_real_eip !87
  %540 = zext i8 %539 to i64
  store i64 %540, i64* %RDI_val, !mcsema_real_eip !87
  %541 = tail call x86_64_sysvcc i64 @to_byte(i64 %540), !mcsema_real_eip !88
  store i64 %541, i64* %RAX_val, !mcsema_real_eip !88
  %542 = and i64 %541, 255
  %543 = load i64* %RCX_val, !mcsema_real_eip !89
  %544 = and i64 %543, -256, !mcsema_real_eip !89
  %545 = or i64 %544, %542
  store i64 %545, i64* %RCX_val, !mcsema_real_eip !89
  %546 = load i64* %RBP_val, !mcsema_real_eip !90
  %547 = add i64 %546, -35, !mcsema_real_eip !90
  %548 = inttoptr i64 %547 to i64*, !mcsema_real_eip !90
  %549 = trunc i64 %541 to i8, !mcsema_real_eip !90
  %550 = bitcast i64* %548 to i8*
  store i8 %549, i8* %550, !mcsema_real_eip !90
  %551 = load i64* %RBP_val, !mcsema_real_eip !91
  %552 = add i64 %551, -16, !mcsema_real_eip !91
  %553 = inttoptr i64 %552 to i64*, !mcsema_real_eip !91
  %554 = load i64* %553, !mcsema_real_eip !91
  store i64 %554, i64* %RDX_val, !mcsema_real_eip !91
  %555 = add i64 %554, 7, !mcsema_real_eip !92
  %556 = inttoptr i64 %555 to i64*, !mcsema_real_eip !92
  %557 = bitcast i64* %556 to i8*
  %558 = load i8* %557, !mcsema_real_eip !92
  %559 = zext i8 %558 to i64
  store i64 %559, i64* %RDI_val, !mcsema_real_eip !92
  %560 = tail call x86_64_sysvcc i64 @to_byte(i64 %559), !mcsema_real_eip !93
  store i64 %560, i64* %RAX_val, !mcsema_real_eip !93
  %561 = load i64* %RBP_val, !mcsema_real_eip !94
  %562 = add i64 %561, -35, !mcsema_real_eip !94
  %563 = inttoptr i64 %562 to i64*, !mcsema_real_eip !94
  %564 = bitcast i64* %563 to i8*
  %565 = load i8* %564, !mcsema_real_eip !94
  %566 = zext i8 %565 to i32
  %567 = load i64* %RAX_val, !mcsema_real_eip !95
  %568 = trunc i64 %567 to i32, !mcsema_real_eip !95
  %569 = or i32 %568, %566, !mcsema_real_eip !95
  store i1 false, i1* %OF_val, !mcsema_real_eip !95
  store i1 false, i1* %CF_val, !mcsema_real_eip !95
  %570 = icmp slt i32 %568, 0
  store i1 %570, i1* %SF_val, !mcsema_real_eip !95
  %571 = icmp eq i32 %569, 0, !mcsema_real_eip !95
  store i1 %571, i1* %ZF_val, !mcsema_real_eip !95
  %572 = trunc i32 %569 to i8, !mcsema_real_eip !95
  %573 = tail call i8 @llvm.ctpop.i8(i8 %572), !mcsema_real_eip !95
  %574 = and i8 %573, 1
  %575 = icmp eq i8 %574, 0
  store i1 %575, i1* %PF_val, !mcsema_real_eip !95
  %576 = zext i32 %569 to i64, !mcsema_real_eip !95
  store i64 %576, i64* %RDI_val, !mcsema_real_eip !95
  %.mask152 = and i32 %569, 255
  %577 = zext i32 %.mask152 to i64
  %578 = load i64* %RCX_val, !mcsema_real_eip !96
  %579 = and i64 %578, -256, !mcsema_real_eip !96
  %580 = or i64 %577, %579
  store i64 %580, i64* %RCX_val, !mcsema_real_eip !96
  %581 = load i64* %RBP_val, !mcsema_real_eip !97
  %582 = add i64 %581, -35, !mcsema_real_eip !97
  %583 = inttoptr i64 %582 to i64*, !mcsema_real_eip !97
  %584 = bitcast i64* %583 to i8*
  store i8 %572, i8* %584, !mcsema_real_eip !97
  %585 = load i64* %RBP_val, !mcsema_real_eip !98
  %586 = add i64 %585, -35, !mcsema_real_eip !98
  %587 = inttoptr i64 %586 to i64*, !mcsema_real_eip !98
  %588 = bitcast i64* %587 to i8*
  %589 = load i8* %588, !mcsema_real_eip !98
  %590 = zext i8 %589 to i32
  %591 = xor i32 %590, -1, !mcsema_real_eip !99
  store i1 false, i1* %CF_val, !mcsema_real_eip !99
  store i1 false, i1* %OF_val, !mcsema_real_eip !99
  store i1 true, i1* %SF_val, !mcsema_real_eip !99
  store i1 false, i1* %ZF_val, !mcsema_real_eip !99
  %592 = trunc i32 %591 to i8, !mcsema_real_eip !99
  %593 = tail call i8 @llvm.ctpop.i8(i8 %592), !mcsema_real_eip !99
  %594 = and i8 %593, 1
  %595 = icmp eq i8 %594, 0
  store i1 %595, i1* %PF_val, !mcsema_real_eip !99
  %596 = zext i32 %591 to i64, !mcsema_real_eip !99
  store i64 %596, i64* %RAX_val, !mcsema_real_eip !99
  %597 = sub i32 -71, %590
  %598 = xor i32 %597, %591, !mcsema_real_eip !100
  %599 = and i32 %598, 16, !mcsema_real_eip !100
  %600 = icmp ne i32 %599, 0, !mcsema_real_eip !100
  store i1 %600, i1* %AF_val, !mcsema_real_eip !100
  %601 = trunc i32 %597 to i8, !mcsema_real_eip !100
  br label %block_0x1e2

block_0x169:                                      ; preds = %block_0x11b
  %602 = load i64* %RBP_val, !mcsema_real_eip !101
  %603 = add i64 %602, -34, !mcsema_real_eip !101
  %604 = inttoptr i64 %603 to i64*, !mcsema_real_eip !101
  %605 = bitcast i64* %604 to i8*
  %606 = load i8* %605, !mcsema_real_eip !101
  %607 = zext i8 %606 to i64
  store i64 %607, i64* %RAX_val, !mcsema_real_eip !101
  %608 = zext i8 %606 to i32
  %609 = add nsw i32 %608, -96
  %610 = xor i32 %609, %608, !mcsema_real_eip !102
  %611 = and i32 %610, 16, !mcsema_real_eip !102
  %612 = icmp ne i32 %611, 0, !mcsema_real_eip !102
  store i1 %612, i1* %AF_val, !mcsema_real_eip !102
  %613 = trunc i32 %609 to i8, !mcsema_real_eip !102
  %614 = tail call i8 @llvm.ctpop.i8(i8 %613), !mcsema_real_eip !102
  %615 = and i8 %614, 1
  %616 = icmp eq i8 %615, 0
  store i1 %616, i1* %PF_val, !mcsema_real_eip !102
  %617 = icmp eq i32 %609, 0, !mcsema_real_eip !102
  store i1 %617, i1* %ZF_val, !mcsema_real_eip !102
  %618 = icmp slt i32 %609, 0
  store i1 %618, i1* %SF_val, !mcsema_real_eip !102
  %619 = icmp ult i8 %606, 96
  store i1 %619, i1* %CF_val, !mcsema_real_eip !102
  store i1 false, i1* %OF_val, !mcsema_real_eip !102
  br i1 %617, label %block_0x178, label %block_0x188, !mcsema_real_eip !103

block_0x178:                                      ; preds = %block_0x169
  %620 = load i64* %RBP_val, !mcsema_real_eip !104
  %621 = add i64 %620, -20, !mcsema_real_eip !104
  %622 = inttoptr i64 %621 to i64*, !mcsema_real_eip !104
  %623 = bitcast i64* %622 to i32*
  %624 = load i32* %623, !mcsema_real_eip !104
  %uadd141 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %624, i32 4)
  %625 = extractvalue { i32, i1 } %uadd141, 0
  %626 = xor i32 %625, %624, !mcsema_real_eip !105
  %627 = and i32 %626, 16, !mcsema_real_eip !105
  %628 = icmp ne i32 %627, 0, !mcsema_real_eip !105
  store i1 %628, i1* %AF_val, !mcsema_real_eip !105
  %629 = icmp slt i32 %625, 0
  store i1 %629, i1* %SF_val, !mcsema_real_eip !105
  %630 = icmp eq i32 %625, 0, !mcsema_real_eip !105
  store i1 %630, i1* %ZF_val, !mcsema_real_eip !105
  %631 = xor i32 %624, -2147483648, !mcsema_real_eip !105
  %632 = and i32 %626, %631, !mcsema_real_eip !105
  %633 = icmp slt i32 %632, 0
  store i1 %633, i1* %OF_val, !mcsema_real_eip !105
  %634 = trunc i32 %625 to i8, !mcsema_real_eip !105
  %635 = tail call i8 @llvm.ctpop.i8(i8 %634), !mcsema_real_eip !105
  %636 = and i8 %635, 1
  %637 = icmp eq i8 %636, 0
  store i1 %637, i1* %PF_val, !mcsema_real_eip !105
  %638 = extractvalue { i32, i1 } %uadd141, 1
  store i1 %638, i1* %CF_val, !mcsema_real_eip !105
  %639 = zext i32 %625 to i64, !mcsema_real_eip !105
  store i64 %639, i64* %RAX_val, !mcsema_real_eip !105
  %640 = load i64* %RBP_val, !mcsema_real_eip !106
  %641 = add i64 %640, -20, !mcsema_real_eip !106
  %642 = inttoptr i64 %641 to i64*, !mcsema_real_eip !106
  %643 = bitcast i64* %642 to i32*
  store i32 %625, i32* %643, !mcsema_real_eip !106
  %644 = load i64* %RBP_val, !mcsema_real_eip !86
  %645 = add i64 %644, -16, !mcsema_real_eip !86
  %646 = inttoptr i64 %645 to i64*, !mcsema_real_eip !86
  %647 = load i64* %646, !mcsema_real_eip !86
  store i64 %647, i64* %RAX_val, !mcsema_real_eip !86
  %648 = add i64 %647, 6, !mcsema_real_eip !87
  %649 = inttoptr i64 %648 to i64*, !mcsema_real_eip !87
  %650 = bitcast i64* %649 to i8*
  %651 = load i8* %650, !mcsema_real_eip !87
  %652 = zext i8 %651 to i64
  store i64 %652, i64* %RDI_val, !mcsema_real_eip !87
  %653 = tail call x86_64_sysvcc i64 @to_byte(i64 %652), !mcsema_real_eip !88
  store i64 %653, i64* %RAX_val, !mcsema_real_eip !88
  %654 = and i64 %653, 255
  %655 = load i64* %RCX_val, !mcsema_real_eip !89
  %656 = and i64 %655, -256, !mcsema_real_eip !89
  %657 = or i64 %656, %654
  store i64 %657, i64* %RCX_val, !mcsema_real_eip !89
  %658 = load i64* %RBP_val, !mcsema_real_eip !90
  %659 = add i64 %658, -35, !mcsema_real_eip !90
  %660 = inttoptr i64 %659 to i64*, !mcsema_real_eip !90
  %661 = trunc i64 %653 to i8, !mcsema_real_eip !90
  %662 = bitcast i64* %660 to i8*
  store i8 %661, i8* %662, !mcsema_real_eip !90
  %663 = load i64* %RBP_val, !mcsema_real_eip !91
  %664 = add i64 %663, -16, !mcsema_real_eip !91
  %665 = inttoptr i64 %664 to i64*, !mcsema_real_eip !91
  %666 = load i64* %665, !mcsema_real_eip !91
  store i64 %666, i64* %RDX_val, !mcsema_real_eip !91
  %667 = add i64 %666, 7, !mcsema_real_eip !92
  %668 = inttoptr i64 %667 to i64*, !mcsema_real_eip !92
  %669 = bitcast i64* %668 to i8*
  %670 = load i8* %669, !mcsema_real_eip !92
  %671 = zext i8 %670 to i64
  store i64 %671, i64* %RDI_val, !mcsema_real_eip !92
  %672 = tail call x86_64_sysvcc i64 @to_byte(i64 %671), !mcsema_real_eip !93
  store i64 %672, i64* %RAX_val, !mcsema_real_eip !93
  %673 = load i64* %RBP_val, !mcsema_real_eip !94
  %674 = add i64 %673, -35, !mcsema_real_eip !94
  %675 = inttoptr i64 %674 to i64*, !mcsema_real_eip !94
  %676 = bitcast i64* %675 to i8*
  %677 = load i8* %676, !mcsema_real_eip !94
  %678 = zext i8 %677 to i32
  %679 = load i64* %RAX_val, !mcsema_real_eip !95
  %680 = trunc i64 %679 to i32, !mcsema_real_eip !95
  %681 = or i32 %680, %678, !mcsema_real_eip !95
  store i1 false, i1* %OF_val, !mcsema_real_eip !95
  store i1 false, i1* %CF_val, !mcsema_real_eip !95
  %682 = icmp slt i32 %680, 0
  store i1 %682, i1* %SF_val, !mcsema_real_eip !95
  %683 = icmp eq i32 %681, 0, !mcsema_real_eip !95
  store i1 %683, i1* %ZF_val, !mcsema_real_eip !95
  %684 = trunc i32 %681 to i8, !mcsema_real_eip !95
  %685 = tail call i8 @llvm.ctpop.i8(i8 %684), !mcsema_real_eip !95
  %686 = and i8 %685, 1
  %687 = icmp eq i8 %686, 0
  store i1 %687, i1* %PF_val, !mcsema_real_eip !95
  %688 = zext i32 %681 to i64, !mcsema_real_eip !95
  store i64 %688, i64* %RDI_val, !mcsema_real_eip !95
  %.mask = and i32 %681, 255
  %689 = zext i32 %.mask to i64
  %690 = load i64* %RCX_val, !mcsema_real_eip !96
  %691 = and i64 %690, -256, !mcsema_real_eip !96
  %692 = or i64 %689, %691
  store i64 %692, i64* %RCX_val, !mcsema_real_eip !96
  %693 = load i64* %RBP_val, !mcsema_real_eip !97
  %694 = add i64 %693, -35, !mcsema_real_eip !97
  %695 = inttoptr i64 %694 to i64*, !mcsema_real_eip !97
  %696 = bitcast i64* %695 to i8*
  store i8 %684, i8* %696, !mcsema_real_eip !97
  %697 = load i64* %RBP_val, !mcsema_real_eip !98
  %698 = add i64 %697, -35, !mcsema_real_eip !98
  %699 = inttoptr i64 %698 to i64*, !mcsema_real_eip !98
  %700 = bitcast i64* %699 to i8*
  %701 = load i8* %700, !mcsema_real_eip !98
  %702 = zext i8 %701 to i32
  %703 = xor i32 %702, -1, !mcsema_real_eip !99
  store i1 false, i1* %CF_val, !mcsema_real_eip !99
  store i1 false, i1* %OF_val, !mcsema_real_eip !99
  store i1 true, i1* %SF_val, !mcsema_real_eip !99
  store i1 false, i1* %ZF_val, !mcsema_real_eip !99
  %704 = trunc i32 %703 to i8, !mcsema_real_eip !99
  %705 = tail call i8 @llvm.ctpop.i8(i8 %704), !mcsema_real_eip !99
  %706 = and i8 %705, 1
  %707 = icmp eq i8 %706, 0
  store i1 %707, i1* %PF_val, !mcsema_real_eip !99
  %708 = zext i32 %703 to i64, !mcsema_real_eip !99
  store i64 %708, i64* %RAX_val, !mcsema_real_eip !99
  %709 = sub i32 -71, %702
  %710 = xor i32 %709, %703, !mcsema_real_eip !100
  %711 = and i32 %710, 16, !mcsema_real_eip !100
  %712 = icmp ne i32 %711, 0, !mcsema_real_eip !100
  store i1 %712, i1* %AF_val, !mcsema_real_eip !100
  %713 = trunc i32 %709 to i8, !mcsema_real_eip !100
  br label %block_0x1e2

block_0x1e2:                                      ; preds = %block_0x178, %block_0x188
  %.sink = phi i8 [ %601, %block_0x188 ], [ %713, %block_0x178 ]
  %storemerge244.in = phi i32 [ %597, %block_0x188 ], [ %709, %block_0x178 ]
  %storemerge.in = phi i32 [ %598, %block_0x188 ], [ %710, %block_0x178 ]
  %714 = tail call i8 @llvm.ctpop.i8(i8 %.sink), !mcsema_real_eip !100
  %storemerge245.in = and i8 %714, 1
  %storemerge245 = icmp eq i8 %storemerge245.in, 0
  store i1 %storemerge245, i1* %PF_val
  store i1 false, i1* %ZF_val
  %storemerge244 = icmp slt i32 %storemerge244.in, 0
  store i1 %storemerge244, i1* %SF_val
  store i1 false, i1* %CF_val
  %storemerge = icmp slt i32 %storemerge.in, 0
  store i1 %storemerge, i1* %OF_val
  %715 = load i64* %RBP_val, !mcsema_real_eip !107
  %716 = add i64 %715, -20, !mcsema_real_eip !107
  %717 = inttoptr i64 %716 to i64*, !mcsema_real_eip !107
  %718 = bitcast i64* %717 to i32*
  %719 = load i32* %718, !mcsema_real_eip !107
  %720 = zext i32 %719 to i64, !mcsema_real_eip !107
  store i64 %720, i64* %RCX_val, !mcsema_real_eip !107
  %721 = load i64* %RBP_val, !mcsema_real_eip !108
  %722 = add i64 %721, -20, !mcsema_real_eip !108
  %723 = inttoptr i64 %722 to i64*, !mcsema_real_eip !108
  %724 = bitcast i64* %723 to i32*
  %725 = load i32* %724, !mcsema_real_eip !108
  %726 = and i32 %719, 31, !mcsema_real_eip !109
  %727 = add i32 %719, -1
  %728 = icmp ne i32 %726, 0, !mcsema_real_eip !109
  %729 = select i1 %728, i32 %727, i32 0, !mcsema_real_eip !109
  %730 = zext i1 %728 to i32
  %731 = shl i32 %725, %729, !mcsema_real_eip !109
  %732 = icmp slt i32 %731, 0
  %733 = load i1* %CF_val, !mcsema_real_eip !109
  %734 = select i1 %728, i1 %732, i1 %733, !mcsema_real_eip !109
  %735 = shl i32 %731, %730, !mcsema_real_eip !109
  %736 = icmp eq i32 %726, 1, !mcsema_real_eip !109
  %737 = load i1* %OF_val, !mcsema_real_eip !109
  %738 = icmp slt i32 %735, 0
  %739 = xor i1 %738, %734, !mcsema_real_eip !109
  %740 = select i1 %736, i1 %739, i1 %737, !mcsema_real_eip !109
  store i1 %740, i1* %OF_val, !mcsema_real_eip !109
  store i1 %734, i1* %CF_val, !mcsema_real_eip !109
  %741 = load i1* %ZF_val, !mcsema_real_eip !109
  %742 = icmp eq i32 %735, 0, !mcsema_real_eip !109
  %743 = select i1 %728, i1 %742, i1 %741, !mcsema_real_eip !109
  store i1 %743, i1* %ZF_val, !mcsema_real_eip !109
  %744 = load i1* %SF_val, !mcsema_real_eip !109
  %745 = select i1 %728, i1 %738, i1 %744, !mcsema_real_eip !109
  store i1 %745, i1* %SF_val, !mcsema_real_eip !109
  %746 = load i1* %PF_val, !mcsema_real_eip !109
  %747 = trunc i32 %735 to i8, !mcsema_real_eip !109
  %748 = tail call i8 @llvm.ctpop.i8(i8 %747), !mcsema_real_eip !109
  %749 = and i8 %748, 1
  %750 = icmp eq i8 %749, 0
  %751 = select i1 %728, i1 %750, i1 %746, !mcsema_real_eip !109
  store i1 %751, i1* %PF_val, !mcsema_real_eip !109
  %752 = zext i32 %735 to i64, !mcsema_real_eip !109
  store i64 %752, i64* %RAX_val, !mcsema_real_eip !109
  %753 = load i64* %RBP_val, !mcsema_real_eip !110
  %754 = add i64 %753, -20, !mcsema_real_eip !110
  %755 = inttoptr i64 %754 to i64*, !mcsema_real_eip !110
  %756 = bitcast i64* %755 to i32*
  store i32 %735, i32* %756, !mcsema_real_eip !110
  %757 = load i64* %RBP_val, !mcsema_real_eip !111
  %758 = add i64 %757, -20, !mcsema_real_eip !111
  %759 = inttoptr i64 %758 to i64*, !mcsema_real_eip !111
  %760 = bitcast i64* %759 to i32*
  %761 = load i32* %760, !mcsema_real_eip !111
  store i1 false, i1* %AF_val, !mcsema_real_eip !111
  %762 = trunc i32 %761 to i8, !mcsema_real_eip !111
  %763 = tail call i8 @llvm.ctpop.i8(i8 %762), !mcsema_real_eip !111
  %764 = and i8 %763, 1
  %765 = icmp eq i8 %764, 0
  store i1 %765, i1* %PF_val, !mcsema_real_eip !111
  %766 = icmp eq i32 %761, 0, !mcsema_real_eip !111
  store i1 %766, i1* %ZF_val, !mcsema_real_eip !111
  %767 = icmp slt i32 %761, 0
  store i1 %767, i1* %SF_val, !mcsema_real_eip !111
  store i1 false, i1* %CF_val, !mcsema_real_eip !111
  store i1 false, i1* %OF_val, !mcsema_real_eip !111
  br i1 %766, label %block_0x206, label %block_0x1fa, !mcsema_real_eip !112

block_0x206:                                      ; preds = %block_0x1e2
  store i64 0, i64* %RDI_val, !mcsema_real_eip !113
  store i64 4, i64* %RDX_val, !mcsema_real_eip !114
  %768 = load i64* %RBP_val, !mcsema_real_eip !115
  %769 = add i64 %768, -16, !mcsema_real_eip !115
  %770 = inttoptr i64 %769 to i64*, !mcsema_real_eip !115
  %771 = load i64* %770, !mcsema_real_eip !115
  %uadd142 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %771, i64 8)
  %772 = extractvalue { i64, i1 } %uadd142, 0
  %773 = xor i64 %772, %771, !mcsema_real_eip !116
  %774 = and i64 %773, 16, !mcsema_real_eip !116
  %775 = icmp ne i64 %774, 0, !mcsema_real_eip !116
  store i1 %775, i1* %AF_val, !mcsema_real_eip !116
  %776 = icmp slt i64 %772, 0
  store i1 %776, i1* %SF_val, !mcsema_real_eip !116
  %777 = icmp eq i64 %772, 0, !mcsema_real_eip !116
  store i1 %777, i1* %ZF_val, !mcsema_real_eip !116
  %778 = xor i64 %771, -9223372036854775808, !mcsema_real_eip !116
  %779 = and i64 %773, %778, !mcsema_real_eip !116
  %780 = icmp slt i64 %779, 0
  store i1 %780, i1* %OF_val, !mcsema_real_eip !116
  %781 = trunc i64 %772 to i8, !mcsema_real_eip !116
  %782 = tail call i8 @llvm.ctpop.i8(i8 %781), !mcsema_real_eip !116
  %783 = and i8 %782, 1
  %784 = icmp eq i8 %783, 0
  store i1 %784, i1* %PF_val, !mcsema_real_eip !116
  %785 = extractvalue { i64, i1 } %uadd142, 1
  store i1 %785, i1* %CF_val, !mcsema_real_eip !116
  store i64 %772, i64* %RSI_val, !mcsema_real_eip !117
  %786 = load i64* %RDI_val, !mcsema_real_eip !118
  %787 = load i64* %RDX_val, !mcsema_real_eip !118
  %788 = tail call x86_64_sysvcc i64 @read_bytes(i64 %786, i64 %772, i64 %787), !mcsema_real_eip !118
  store i64 %788, i64* %RAX_val, !mcsema_real_eip !118
  %789 = and i64 %788, 65535
  %790 = load i64* %RCX_val, !mcsema_real_eip !119
  %791 = and i64 %790, -65536, !mcsema_real_eip !119
  %792 = or i64 %791, %789
  store i64 %792, i64* %RCX_val, !mcsema_real_eip !119
  %793 = load i64* %RBP_val, !mcsema_real_eip !120
  %794 = add i64 %793, -38, !mcsema_real_eip !120
  %795 = inttoptr i64 %794 to i64*, !mcsema_real_eip !120
  %796 = trunc i64 %788 to i16, !mcsema_real_eip !120
  %797 = bitcast i64* %795 to i16*
  store i16 %796, i16* %797, !mcsema_real_eip !120
  %798 = load i64* %RBP_val, !mcsema_real_eip !121
  %799 = add i64 %798, -38, !mcsema_real_eip !121
  %800 = inttoptr i64 %799 to i64*, !mcsema_real_eip !121
  %801 = bitcast i64* %800 to i16*
  %802 = load i16* %801, !mcsema_real_eip !121
  %803 = zext i16 %802 to i32
  %804 = or i32 %803, 21845, !mcsema_real_eip !122
  %805 = zext i32 %804 to i64, !mcsema_real_eip !122
  store i64 %805, i64* %RAX_val, !mcsema_real_eip !122
  %806 = add nsw i32 %804, -56663
  %807 = and i32 %806, 16
  %808 = icmp ne i32 %807, 0
  store i1 %808, i1* %AF_val, !mcsema_real_eip !123
  %809 = trunc i32 %806 to i8, !mcsema_real_eip !123
  %810 = tail call i8 @llvm.ctpop.i8(i8 %809), !mcsema_real_eip !123
  %811 = and i8 %810, 1
  %812 = icmp eq i8 %811, 0
  store i1 %812, i1* %PF_val, !mcsema_real_eip !123
  %813 = icmp eq i32 %806, 0, !mcsema_real_eip !123
  store i1 %813, i1* %ZF_val, !mcsema_real_eip !123
  %814 = icmp slt i32 %806, 0
  store i1 %814, i1* %SF_val, !mcsema_real_eip !123
  %815 = icmp ult i32 %804, 56663, !mcsema_real_eip !123
  store i1 %815, i1* %CF_val, !mcsema_real_eip !123
  store i1 false, i1* %OF_val, !mcsema_real_eip !123
  br i1 %813, label %block_0x23d, label %block_0x25d, !mcsema_real_eip !124

block_0x1fa:                                      ; preds = %block_0x1e2
  %816 = load i64* %RBP_val, !mcsema_real_eip !125
  %817 = add i64 %816, -4, !mcsema_real_eip !125
  %818 = inttoptr i64 %817 to i64*, !mcsema_real_eip !125
  %819 = bitcast i64* %818 to i32*
  store i32 -7, i32* %819, !mcsema_real_eip !125
  br label %block_0x46d, !mcsema_real_eip !126

block_0x25d:                                      ; preds = %block_0x23d, %block_0x206
  %820 = load i64* %RBP_val, !mcsema_real_eip !127
  %821 = add i64 %820, -20, !mcsema_real_eip !127
  %822 = inttoptr i64 %821 to i64*, !mcsema_real_eip !127
  %823 = bitcast i64* %822 to i32*
  store i32 48059, i32* %823, !mcsema_real_eip !127
  store i64 0, i64* %RDI_val, !mcsema_real_eip !128
  store i64 8, i64* %RDX_val, !mcsema_real_eip !129
  %824 = load i64* %RBP_val, !mcsema_real_eip !130
  %825 = add i64 %824, -16, !mcsema_real_eip !130
  %826 = inttoptr i64 %825 to i64*, !mcsema_real_eip !130
  %827 = load i64* %826, !mcsema_real_eip !130
  %uadd150 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %827, i64 12)
  %828 = extractvalue { i64, i1 } %uadd150, 0
  %829 = xor i64 %828, %827, !mcsema_real_eip !131
  %830 = and i64 %829, 16, !mcsema_real_eip !131
  %831 = icmp ne i64 %830, 0, !mcsema_real_eip !131
  store i1 %831, i1* %AF_val, !mcsema_real_eip !131
  %832 = icmp slt i64 %828, 0
  store i1 %832, i1* %SF_val, !mcsema_real_eip !131
  %833 = icmp eq i64 %828, 0, !mcsema_real_eip !131
  store i1 %833, i1* %ZF_val, !mcsema_real_eip !131
  %834 = xor i64 %827, -9223372036854775808, !mcsema_real_eip !131
  %835 = and i64 %829, %834, !mcsema_real_eip !131
  %836 = icmp slt i64 %835, 0
  store i1 %836, i1* %OF_val, !mcsema_real_eip !131
  %837 = trunc i64 %828 to i8, !mcsema_real_eip !131
  %838 = tail call i8 @llvm.ctpop.i8(i8 %837), !mcsema_real_eip !131
  %839 = and i8 %838, 1
  %840 = icmp eq i8 %839, 0
  store i1 %840, i1* %PF_val, !mcsema_real_eip !131
  %841 = extractvalue { i64, i1 } %uadd150, 1
  store i1 %841, i1* %CF_val, !mcsema_real_eip !131
  store i64 %828, i64* %RSI_val, !mcsema_real_eip !132
  %842 = load i64* %RDI_val, !mcsema_real_eip !133
  %843 = load i64* %RDX_val, !mcsema_real_eip !133
  %844 = tail call x86_64_sysvcc i64 @read_bytes(i64 %842, i64 %828, i64 %843), !mcsema_real_eip !133
  store i64 %844, i64* %RAX_val, !mcsema_real_eip !133
  %845 = load i64* %RBP_val, !mcsema_real_eip !134
  %846 = add i64 %845, -44, !mcsema_real_eip !134
  %847 = inttoptr i64 %846 to i64*, !mcsema_real_eip !134
  %848 = trunc i64 %844 to i32, !mcsema_real_eip !134
  %849 = bitcast i64* %847 to i32*
  store i32 %848, i32* %849, !mcsema_real_eip !134
  %850 = load i64* %RBP_val, !mcsema_real_eip !135
  %851 = add i64 %850, -44, !mcsema_real_eip !135
  %852 = inttoptr i64 %851 to i64*, !mcsema_real_eip !135
  %853 = bitcast i64* %852 to i32*
  %854 = load i32* %853, !mcsema_real_eip !135
  %855 = xor i32 %854, -1534560611, !mcsema_real_eip !136
  store i1 false, i1* %CF_val, !mcsema_real_eip !136
  store i1 false, i1* %OF_val, !mcsema_real_eip !136
  %856 = icmp sgt i32 %854, -1
  store i1 %856, i1* %SF_val, !mcsema_real_eip !136
  %857 = icmp eq i32 %854, -1534560611
  store i1 %857, i1* %ZF_val, !mcsema_real_eip !136
  %858 = trunc i32 %855 to i8, !mcsema_real_eip !136
  %859 = tail call i8 @llvm.ctpop.i8(i8 %858), !mcsema_real_eip !136
  %860 = and i8 %859, 1
  %861 = icmp eq i8 %860, 0
  store i1 %861, i1* %PF_val, !mcsema_real_eip !136
  %862 = zext i32 %855 to i64, !mcsema_real_eip !136
  store i64 %862, i64* %RAX_val, !mcsema_real_eip !136
  %863 = load i64* %RBP_val, !mcsema_real_eip !137
  %864 = add i64 %863, -48, !mcsema_real_eip !137
  %865 = inttoptr i64 %864 to i64*, !mcsema_real_eip !137
  %866 = bitcast i64* %865 to i32*
  store i32 %855, i32* %866, !mcsema_real_eip !137
  %867 = load i64* %RBP_val, !mcsema_real_eip !138
  %868 = add i64 %867, -48, !mcsema_real_eip !138
  %869 = inttoptr i64 %868 to i64*, !mcsema_real_eip !138
  %870 = bitcast i64* %869 to i32*
  %871 = load i32* %870, !mcsema_real_eip !138
  %872 = and i32 %871, 32768, !mcsema_real_eip !139
  %873 = icmp ne i32 %872, 0, !mcsema_real_eip !139
  %874 = lshr i32 %871, 16
  store i1 %873, i1* %CF_val, !mcsema_real_eip !139
  %875 = icmp eq i32 %874, 0, !mcsema_real_eip !139
  store i1 %875, i1* %ZF_val, !mcsema_real_eip !139
  store i1 false, i1* %SF_val, !mcsema_real_eip !139
  %876 = trunc i32 %874 to i8, !mcsema_real_eip !139
  %877 = tail call i8 @llvm.ctpop.i8(i8 %876), !mcsema_real_eip !139
  %878 = and i8 %877, 1
  %879 = icmp eq i8 %878, 0
  store i1 %879, i1* %PF_val, !mcsema_real_eip !139
  %880 = zext i32 %874 to i64, !mcsema_real_eip !139
  store i64 %880, i64* %RAX_val, !mcsema_real_eip !139
  %881 = load i64* %RBP_val, !mcsema_real_eip !140
  %882 = add i64 %881, -52, !mcsema_real_eip !140
  %883 = inttoptr i64 %882 to i64*, !mcsema_real_eip !140
  %884 = bitcast i64* %883 to i32*
  store i32 %874, i32* %884, !mcsema_real_eip !140
  %885 = load i64* %RBP_val, !mcsema_real_eip !141
  %886 = add i64 %885, -48, !mcsema_real_eip !141
  %887 = inttoptr i64 %886 to i64*, !mcsema_real_eip !141
  %888 = bitcast i64* %887 to i32*
  %889 = load i32* %888, !mcsema_real_eip !141
  %890 = and i32 %889, 65535, !mcsema_real_eip !142
  store i1 false, i1* %SF_val, !mcsema_real_eip !142
  %891 = icmp eq i32 %890, 0, !mcsema_real_eip !142
  store i1 %891, i1* %ZF_val, !mcsema_real_eip !142
  %892 = trunc i32 %889 to i8, !mcsema_real_eip !142
  %893 = tail call i8 @llvm.ctpop.i8(i8 %892), !mcsema_real_eip !142
  %894 = and i8 %893, 1
  %895 = icmp eq i8 %894, 0
  store i1 %895, i1* %PF_val, !mcsema_real_eip !142
  store i1 false, i1* %OF_val, !mcsema_real_eip !142
  store i1 false, i1* %CF_val, !mcsema_real_eip !142
  %896 = zext i32 %890 to i64, !mcsema_real_eip !142
  store i64 %896, i64* %RAX_val, !mcsema_real_eip !142
  %897 = load i64* %RBP_val, !mcsema_real_eip !143
  %898 = add i64 %897, -56, !mcsema_real_eip !143
  %899 = inttoptr i64 %898 to i64*, !mcsema_real_eip !143
  %900 = bitcast i64* %899 to i32*
  store i32 %890, i32* %900, !mcsema_real_eip !143
  %901 = load i64* %RBP_val, !mcsema_real_eip !144
  %902 = add i64 %901, -52, !mcsema_real_eip !144
  %903 = inttoptr i64 %902 to i64*, !mcsema_real_eip !144
  %904 = bitcast i64* %903 to i32*
  %905 = load i32* %904, !mcsema_real_eip !144
  %906 = add i32 %905, -20299
  %907 = xor i32 %906, %905, !mcsema_real_eip !144
  %908 = and i32 %907, 16, !mcsema_real_eip !144
  %909 = icmp ne i32 %908, 0, !mcsema_real_eip !144
  store i1 %909, i1* %AF_val, !mcsema_real_eip !144
  %910 = trunc i32 %906 to i8, !mcsema_real_eip !144
  %911 = tail call i8 @llvm.ctpop.i8(i8 %910), !mcsema_real_eip !144
  %912 = and i8 %911, 1
  %913 = icmp eq i8 %912, 0
  store i1 %913, i1* %PF_val, !mcsema_real_eip !144
  %914 = icmp eq i32 %906, 0, !mcsema_real_eip !144
  store i1 %914, i1* %ZF_val, !mcsema_real_eip !144
  %915 = icmp slt i32 %906, 0
  store i1 %915, i1* %SF_val, !mcsema_real_eip !144
  %916 = icmp ult i32 %905, 20299, !mcsema_real_eip !144
  store i1 %916, i1* %CF_val, !mcsema_real_eip !144
  %917 = and i32 %907, %905, !mcsema_real_eip !144
  %918 = icmp slt i32 %917, 0
  store i1 %918, i1* %OF_val, !mcsema_real_eip !144
  %919 = load i1* %ZF_val, !mcsema_real_eip !145
  br i1 %919, label %block_0x2af, label %block_0x2c7, !mcsema_real_eip !145

block_0x23d:                                      ; preds = %block_0x206
  %920 = load i64* %RBP_val, !mcsema_real_eip !146
  %921 = add i64 %920, -38, !mcsema_real_eip !146
  %922 = inttoptr i64 %921 to i64*, !mcsema_real_eip !146
  %923 = bitcast i64* %922 to i16*
  %924 = load i16* %923, !mcsema_real_eip !146
  %925 = zext i16 %924 to i32
  %926 = or i32 %925, 43690, !mcsema_real_eip !147
  %927 = zext i32 %926 to i64, !mcsema_real_eip !147
  store i64 %927, i64* %RAX_val, !mcsema_real_eip !147
  %928 = add nsw i32 %926, -65211
  %929 = xor i32 %928, %925, !mcsema_real_eip !148
  %930 = and i32 %929, 16
  %931 = icmp eq i32 %930, 0
  store i1 %931, i1* %AF_val, !mcsema_real_eip !148
  %932 = trunc i32 %928 to i8, !mcsema_real_eip !148
  %933 = tail call i8 @llvm.ctpop.i8(i8 %932), !mcsema_real_eip !148
  %934 = and i8 %933, 1
  %935 = icmp eq i8 %934, 0
  store i1 %935, i1* %PF_val, !mcsema_real_eip !148
  %936 = icmp eq i32 %928, 0, !mcsema_real_eip !148
  store i1 %936, i1* %ZF_val, !mcsema_real_eip !148
  %937 = icmp slt i32 %928, 0
  store i1 %937, i1* %SF_val, !mcsema_real_eip !148
  %938 = icmp ult i32 %926, 65211, !mcsema_real_eip !148
  store i1 %938, i1* %CF_val, !mcsema_real_eip !148
  store i1 false, i1* %OF_val, !mcsema_real_eip !148
  br i1 %936, label %block_0x251, label %block_0x25d, !mcsema_real_eip !149

block_0x251:                                      ; preds = %block_0x23d
  %939 = load i64* %RBP_val, !mcsema_real_eip !150
  %940 = add i64 %939, -20, !mcsema_real_eip !150
  %941 = inttoptr i64 %940 to i64*, !mcsema_real_eip !150
  %942 = bitcast i64* %941 to i32*
  store i32 43690, i32* %942, !mcsema_real_eip !150
  store i64 0, i64* %RDI_val, !mcsema_real_eip !128
  store i64 8, i64* %RDX_val, !mcsema_real_eip !129
  %943 = load i64* %RBP_val, !mcsema_real_eip !130
  %944 = add i64 %943, -16, !mcsema_real_eip !130
  %945 = inttoptr i64 %944 to i64*, !mcsema_real_eip !130
  %946 = load i64* %945, !mcsema_real_eip !130
  %uadd143 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %946, i64 12)
  %947 = extractvalue { i64, i1 } %uadd143, 0
  %948 = xor i64 %947, %946, !mcsema_real_eip !131
  %949 = and i64 %948, 16, !mcsema_real_eip !131
  %950 = icmp ne i64 %949, 0, !mcsema_real_eip !131
  store i1 %950, i1* %AF_val, !mcsema_real_eip !131
  %951 = icmp slt i64 %947, 0
  store i1 %951, i1* %SF_val, !mcsema_real_eip !131
  %952 = icmp eq i64 %947, 0, !mcsema_real_eip !131
  store i1 %952, i1* %ZF_val, !mcsema_real_eip !131
  %953 = xor i64 %946, -9223372036854775808, !mcsema_real_eip !131
  %954 = and i64 %948, %953, !mcsema_real_eip !131
  %955 = icmp slt i64 %954, 0
  store i1 %955, i1* %OF_val, !mcsema_real_eip !131
  %956 = trunc i64 %947 to i8, !mcsema_real_eip !131
  %957 = tail call i8 @llvm.ctpop.i8(i8 %956), !mcsema_real_eip !131
  %958 = and i8 %957, 1
  %959 = icmp eq i8 %958, 0
  store i1 %959, i1* %PF_val, !mcsema_real_eip !131
  %960 = extractvalue { i64, i1 } %uadd143, 1
  store i1 %960, i1* %CF_val, !mcsema_real_eip !131
  store i64 %947, i64* %RSI_val, !mcsema_real_eip !132
  %961 = load i64* %RDI_val, !mcsema_real_eip !133
  %962 = load i64* %RDX_val, !mcsema_real_eip !133
  %963 = tail call x86_64_sysvcc i64 @read_bytes(i64 %961, i64 %947, i64 %962), !mcsema_real_eip !133
  store i64 %963, i64* %RAX_val, !mcsema_real_eip !133
  %964 = load i64* %RBP_val, !mcsema_real_eip !134
  %965 = add i64 %964, -44, !mcsema_real_eip !134
  %966 = inttoptr i64 %965 to i64*, !mcsema_real_eip !134
  %967 = trunc i64 %963 to i32, !mcsema_real_eip !134
  %968 = bitcast i64* %966 to i32*
  store i32 %967, i32* %968, !mcsema_real_eip !134
  %969 = load i64* %RBP_val, !mcsema_real_eip !135
  %970 = add i64 %969, -44, !mcsema_real_eip !135
  %971 = inttoptr i64 %970 to i64*, !mcsema_real_eip !135
  %972 = bitcast i64* %971 to i32*
  %973 = load i32* %972, !mcsema_real_eip !135
  %974 = xor i32 %973, -1534560611, !mcsema_real_eip !136
  store i1 false, i1* %CF_val, !mcsema_real_eip !136
  store i1 false, i1* %OF_val, !mcsema_real_eip !136
  %975 = icmp sgt i32 %973, -1
  store i1 %975, i1* %SF_val, !mcsema_real_eip !136
  %976 = icmp eq i32 %973, -1534560611
  store i1 %976, i1* %ZF_val, !mcsema_real_eip !136
  %977 = trunc i32 %974 to i8, !mcsema_real_eip !136
  %978 = tail call i8 @llvm.ctpop.i8(i8 %977), !mcsema_real_eip !136
  %979 = and i8 %978, 1
  %980 = icmp eq i8 %979, 0
  store i1 %980, i1* %PF_val, !mcsema_real_eip !136
  %981 = zext i32 %974 to i64, !mcsema_real_eip !136
  store i64 %981, i64* %RAX_val, !mcsema_real_eip !136
  %982 = load i64* %RBP_val, !mcsema_real_eip !137
  %983 = add i64 %982, -48, !mcsema_real_eip !137
  %984 = inttoptr i64 %983 to i64*, !mcsema_real_eip !137
  %985 = bitcast i64* %984 to i32*
  store i32 %974, i32* %985, !mcsema_real_eip !137
  %986 = load i64* %RBP_val, !mcsema_real_eip !138
  %987 = add i64 %986, -48, !mcsema_real_eip !138
  %988 = inttoptr i64 %987 to i64*, !mcsema_real_eip !138
  %989 = bitcast i64* %988 to i32*
  %990 = load i32* %989, !mcsema_real_eip !138
  %991 = and i32 %990, 32768, !mcsema_real_eip !139
  %992 = icmp ne i32 %991, 0, !mcsema_real_eip !139
  %993 = lshr i32 %990, 16
  store i1 %992, i1* %CF_val, !mcsema_real_eip !139
  %994 = icmp eq i32 %993, 0, !mcsema_real_eip !139
  store i1 %994, i1* %ZF_val, !mcsema_real_eip !139
  store i1 false, i1* %SF_val, !mcsema_real_eip !139
  %995 = trunc i32 %993 to i8, !mcsema_real_eip !139
  %996 = tail call i8 @llvm.ctpop.i8(i8 %995), !mcsema_real_eip !139
  %997 = and i8 %996, 1
  %998 = icmp eq i8 %997, 0
  store i1 %998, i1* %PF_val, !mcsema_real_eip !139
  %999 = zext i32 %993 to i64, !mcsema_real_eip !139
  store i64 %999, i64* %RAX_val, !mcsema_real_eip !139
  %1000 = load i64* %RBP_val, !mcsema_real_eip !140
  %1001 = add i64 %1000, -52, !mcsema_real_eip !140
  %1002 = inttoptr i64 %1001 to i64*, !mcsema_real_eip !140
  %1003 = bitcast i64* %1002 to i32*
  store i32 %993, i32* %1003, !mcsema_real_eip !140
  %1004 = load i64* %RBP_val, !mcsema_real_eip !141
  %1005 = add i64 %1004, -48, !mcsema_real_eip !141
  %1006 = inttoptr i64 %1005 to i64*, !mcsema_real_eip !141
  %1007 = bitcast i64* %1006 to i32*
  %1008 = load i32* %1007, !mcsema_real_eip !141
  %1009 = and i32 %1008, 65535, !mcsema_real_eip !142
  store i1 false, i1* %SF_val, !mcsema_real_eip !142
  %1010 = icmp eq i32 %1009, 0, !mcsema_real_eip !142
  store i1 %1010, i1* %ZF_val, !mcsema_real_eip !142
  %1011 = trunc i32 %1008 to i8, !mcsema_real_eip !142
  %1012 = tail call i8 @llvm.ctpop.i8(i8 %1011), !mcsema_real_eip !142
  %1013 = and i8 %1012, 1
  %1014 = icmp eq i8 %1013, 0
  store i1 %1014, i1* %PF_val, !mcsema_real_eip !142
  store i1 false, i1* %OF_val, !mcsema_real_eip !142
  store i1 false, i1* %CF_val, !mcsema_real_eip !142
  %1015 = zext i32 %1009 to i64, !mcsema_real_eip !142
  store i64 %1015, i64* %RAX_val, !mcsema_real_eip !142
  %1016 = load i64* %RBP_val, !mcsema_real_eip !143
  %1017 = add i64 %1016, -56, !mcsema_real_eip !143
  %1018 = inttoptr i64 %1017 to i64*, !mcsema_real_eip !143
  %1019 = bitcast i64* %1018 to i32*
  store i32 %1009, i32* %1019, !mcsema_real_eip !143
  %1020 = load i64* %RBP_val, !mcsema_real_eip !144
  %1021 = add i64 %1020, -52, !mcsema_real_eip !144
  %1022 = inttoptr i64 %1021 to i64*, !mcsema_real_eip !144
  %1023 = bitcast i64* %1022 to i32*
  %1024 = load i32* %1023, !mcsema_real_eip !144
  %1025 = add i32 %1024, -20299
  %1026 = xor i32 %1025, %1024, !mcsema_real_eip !144
  %1027 = and i32 %1026, 16, !mcsema_real_eip !144
  %1028 = icmp ne i32 %1027, 0, !mcsema_real_eip !144
  store i1 %1028, i1* %AF_val, !mcsema_real_eip !144
  %1029 = trunc i32 %1025 to i8, !mcsema_real_eip !144
  %1030 = tail call i8 @llvm.ctpop.i8(i8 %1029), !mcsema_real_eip !144
  %1031 = and i8 %1030, 1
  %1032 = icmp eq i8 %1031, 0
  store i1 %1032, i1* %PF_val, !mcsema_real_eip !144
  %1033 = icmp eq i32 %1025, 0, !mcsema_real_eip !144
  store i1 %1033, i1* %ZF_val, !mcsema_real_eip !144
  %1034 = icmp slt i32 %1025, 0
  store i1 %1034, i1* %SF_val, !mcsema_real_eip !144
  %1035 = icmp ult i32 %1024, 20299, !mcsema_real_eip !144
  store i1 %1035, i1* %CF_val, !mcsema_real_eip !144
  %1036 = and i32 %1026, %1024, !mcsema_real_eip !144
  %1037 = icmp slt i32 %1036, 0
  store i1 %1037, i1* %OF_val, !mcsema_real_eip !144
  %1038 = load i1* %ZF_val, !mcsema_real_eip !145
  br i1 %1038, label %block_0x2af, label %block_0x2c7, !mcsema_real_eip !145

block_0x2c7:                                      ; preds = %block_0x2af, %block_0x251, %block_0x25d
  %1039 = load i64* %RBP_val, !mcsema_real_eip !151
  %1040 = add i64 %1039, -20, !mcsema_real_eip !151
  %1041 = inttoptr i64 %1040 to i64*, !mcsema_real_eip !151
  %1042 = bitcast i64* %1041 to i32*
  store i32 48351, i32* %1042, !mcsema_real_eip !151
  store i64 8, i64* %RDX_val, !mcsema_real_eip !152
  %1043 = load i64* %RBP_val, !mcsema_real_eip !153
  %1044 = add i64 %1043, -20, !mcsema_real_eip !153
  %1045 = inttoptr i64 %1044 to i64*, !mcsema_real_eip !153
  %1046 = bitcast i64* %1045 to i32*
  %1047 = load i32* %1046, !mcsema_real_eip !153
  %1048 = zext i32 %1047 to i64, !mcsema_real_eip !153
  store i64 %1048, i64* %RDI_val, !mcsema_real_eip !153
  %1049 = load i64* %RBP_val, !mcsema_real_eip !154
  %1050 = add i64 %1049, -16, !mcsema_real_eip !154
  %1051 = inttoptr i64 %1050 to i64*, !mcsema_real_eip !154
  %1052 = load i64* %1051, !mcsema_real_eip !154
  %uadd149 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1052, i64 20)
  %1053 = extractvalue { i64, i1 } %uadd149, 0
  %1054 = xor i64 %1053, %1052, !mcsema_real_eip !155
  %1055 = and i64 %1054, 16
  %1056 = icmp eq i64 %1055, 0
  store i1 %1056, i1* %AF_val, !mcsema_real_eip !155
  %1057 = icmp slt i64 %1053, 0
  store i1 %1057, i1* %SF_val, !mcsema_real_eip !155
  %1058 = icmp eq i64 %1053, 0, !mcsema_real_eip !155
  store i1 %1058, i1* %ZF_val, !mcsema_real_eip !155
  %1059 = xor i64 %1052, -9223372036854775808, !mcsema_real_eip !155
  %1060 = and i64 %1054, %1059, !mcsema_real_eip !155
  %1061 = icmp slt i64 %1060, 0
  store i1 %1061, i1* %OF_val, !mcsema_real_eip !155
  %1062 = trunc i64 %1053 to i8, !mcsema_real_eip !155
  %1063 = tail call i8 @llvm.ctpop.i8(i8 %1062), !mcsema_real_eip !155
  %1064 = and i8 %1063, 1
  %1065 = icmp eq i8 %1064, 0
  store i1 %1065, i1* %PF_val, !mcsema_real_eip !155
  %1066 = extractvalue { i64, i1 } %uadd149, 1
  store i1 %1066, i1* %CF_val, !mcsema_real_eip !155
  store i64 %1053, i64* %RSI_val, !mcsema_real_eip !156
  %1067 = load i64* %RDI_val, !mcsema_real_eip !157
  %1068 = load i64* %RDX_val, !mcsema_real_eip !157
  %1069 = tail call x86_64_sysvcc i64 @read_bytes(i64 %1067, i64 %1053, i64 %1068), !mcsema_real_eip !157
  store i64 %1069, i64* %RAX_val, !mcsema_real_eip !157
  %1070 = load i64* %RBP_val, !mcsema_real_eip !158
  %1071 = add i64 %1070, -60, !mcsema_real_eip !158
  %1072 = inttoptr i64 %1071 to i64*, !mcsema_real_eip !158
  %1073 = trunc i64 %1069 to i32, !mcsema_real_eip !158
  %1074 = bitcast i64* %1072 to i32*
  store i32 %1073, i32* %1074, !mcsema_real_eip !158
  %1075 = load i64* %RBP_val, !mcsema_real_eip !159
  %1076 = add i64 %1075, -60, !mcsema_real_eip !159
  %1077 = inttoptr i64 %1076 to i64*, !mcsema_real_eip !159
  %1078 = bitcast i64* %1077 to i32*
  %1079 = load i32* %1078, !mcsema_real_eip !159
  %1080 = add i32 %1079, -3
  %1081 = xor i32 %1080, %1079, !mcsema_real_eip !160
  %1082 = and i32 %1081, 16, !mcsema_real_eip !160
  %1083 = icmp ne i32 %1082, 0, !mcsema_real_eip !160
  store i1 %1083, i1* %AF_val, !mcsema_real_eip !160
  %1084 = trunc i32 %1080 to i8, !mcsema_real_eip !160
  %1085 = tail call i8 @llvm.ctpop.i8(i8 %1084), !mcsema_real_eip !160
  %1086 = and i8 %1085, 1
  %1087 = icmp eq i8 %1086, 0
  store i1 %1087, i1* %PF_val, !mcsema_real_eip !160
  %1088 = icmp eq i32 %1080, 0, !mcsema_real_eip !160
  store i1 %1088, i1* %ZF_val, !mcsema_real_eip !160
  %1089 = icmp slt i32 %1080, 0
  store i1 %1089, i1* %SF_val, !mcsema_real_eip !160
  %1090 = icmp ult i32 %1079, 3, !mcsema_real_eip !160
  store i1 %1090, i1* %CF_val, !mcsema_real_eip !160
  %1091 = and i32 %1081, %1079, !mcsema_real_eip !160
  %1092 = icmp slt i32 %1091, 0
  store i1 %1092, i1* %OF_val, !mcsema_real_eip !160
  %1093 = zext i32 %1080 to i64, !mcsema_real_eip !160
  store i64 %1093, i64* %RAX_val, !mcsema_real_eip !160
  %1094 = load i64* %RBP_val, !mcsema_real_eip !161
  %1095 = add i64 %1094, -60, !mcsema_real_eip !161
  %1096 = inttoptr i64 %1095 to i64*, !mcsema_real_eip !161
  %1097 = bitcast i64* %1096 to i32*
  store i32 %1080, i32* %1097, !mcsema_real_eip !161
  %1098 = load i64* %RBP_val, !mcsema_real_eip !162
  %1099 = add i64 %1098, -60, !mcsema_real_eip !162
  %1100 = inttoptr i64 %1099 to i64*, !mcsema_real_eip !162
  %1101 = bitcast i64* %1100 to i32*
  %1102 = load i32* %1101, !mcsema_real_eip !162
  %1103 = and i32 %1102, 7, !mcsema_real_eip !163
  %1104 = icmp eq i32 %1103, 0, !mcsema_real_eip !163
  %1105 = trunc i32 %1103 to i8, !mcsema_real_eip !163
  %1106 = tail call i8 @llvm.ctpop.i8(i8 %1105), !mcsema_real_eip !163
  %1107 = and i8 %1106, 1
  %1108 = icmp eq i8 %1107, 0
  %1109 = zext i32 %1103 to i64, !mcsema_real_eip !163
  store i64 %1109, i64* %RAX_val, !mcsema_real_eip !163
  store i1 false, i1* %AF_val, !mcsema_real_eip !164
  store i1 %1108, i1* %PF_val, !mcsema_real_eip !164
  store i1 %1104, i1* %ZF_val, !mcsema_real_eip !164
  store i1 false, i1* %SF_val, !mcsema_real_eip !164
  store i1 false, i1* %CF_val, !mcsema_real_eip !164
  store i1 false, i1* %OF_val, !mcsema_real_eip !164
  br i1 %1104, label %block_0x315, label %block_0x309, !mcsema_real_eip !165

block_0x2af:                                      ; preds = %block_0x251, %block_0x25d
  %1110 = load i64* %RBP_val, !mcsema_real_eip !166
  %1111 = add i64 %1110, -56, !mcsema_real_eip !166
  %1112 = inttoptr i64 %1111 to i64*, !mcsema_real_eip !166
  %1113 = bitcast i64* %1112 to i32*
  %1114 = load i32* %1113, !mcsema_real_eip !166
  %1115 = zext i32 %1114 to i64, !mcsema_real_eip !166
  store i64 %1115, i64* %RAX_val, !mcsema_real_eip !166
  %1116 = load i64* %RBP_val, !mcsema_real_eip !167
  %1117 = add i64 %1116, -20, !mcsema_real_eip !167
  %1118 = inttoptr i64 %1117 to i64*, !mcsema_real_eip !167
  %1119 = bitcast i64* %1118 to i32*
  %1120 = load i32* %1119, !mcsema_real_eip !167
  %1121 = sub i32 %1114, %1120, !mcsema_real_eip !167
  %1122 = xor i32 %1121, %1114, !mcsema_real_eip !167
  %1123 = xor i32 %1122, %1120, !mcsema_real_eip !167
  %1124 = and i32 %1123, 16, !mcsema_real_eip !167
  %1125 = icmp ne i32 %1124, 0, !mcsema_real_eip !167
  store i1 %1125, i1* %AF_val, !mcsema_real_eip !167
  %1126 = trunc i32 %1121 to i8, !mcsema_real_eip !167
  %1127 = tail call i8 @llvm.ctpop.i8(i8 %1126), !mcsema_real_eip !167
  %1128 = and i8 %1127, 1
  %1129 = icmp eq i8 %1128, 0
  store i1 %1129, i1* %PF_val, !mcsema_real_eip !167
  %1130 = icmp eq i32 %1114, %1120
  store i1 %1130, i1* %ZF_val, !mcsema_real_eip !167
  %1131 = icmp slt i32 %1121, 0
  store i1 %1131, i1* %SF_val, !mcsema_real_eip !167
  %1132 = icmp ult i32 %1114, %1120, !mcsema_real_eip !167
  store i1 %1132, i1* %CF_val, !mcsema_real_eip !167
  %1133 = xor i32 %1120, %1114, !mcsema_real_eip !167
  %1134 = and i32 %1122, %1133, !mcsema_real_eip !167
  %1135 = icmp slt i32 %1134, 0
  store i1 %1135, i1* %OF_val, !mcsema_real_eip !167
  %1136 = load i1* %ZF_val, !mcsema_real_eip !168
  br i1 %1136, label %block_0x2bb, label %block_0x2c7, !mcsema_real_eip !168

block_0x2bb:                                      ; preds = %block_0x2af
  %1137 = load i64* %RBP_val, !mcsema_real_eip !169
  %1138 = add i64 %1137, -20, !mcsema_real_eip !169
  %1139 = inttoptr i64 %1138 to i64*, !mcsema_real_eip !169
  %1140 = bitcast i64* %1139 to i32*
  store i32 0, i32* %1140, !mcsema_real_eip !169
  store i64 8, i64* %RDX_val, !mcsema_real_eip !152
  %1141 = load i64* %RBP_val, !mcsema_real_eip !153
  %1142 = add i64 %1141, -20, !mcsema_real_eip !153
  %1143 = inttoptr i64 %1142 to i64*, !mcsema_real_eip !153
  %1144 = bitcast i64* %1143 to i32*
  %1145 = load i32* %1144, !mcsema_real_eip !153
  %1146 = zext i32 %1145 to i64, !mcsema_real_eip !153
  store i64 %1146, i64* %RDI_val, !mcsema_real_eip !153
  %1147 = load i64* %RBP_val, !mcsema_real_eip !154
  %1148 = add i64 %1147, -16, !mcsema_real_eip !154
  %1149 = inttoptr i64 %1148 to i64*, !mcsema_real_eip !154
  %1150 = load i64* %1149, !mcsema_real_eip !154
  %uadd144 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1150, i64 20)
  %1151 = extractvalue { i64, i1 } %uadd144, 0
  %1152 = xor i64 %1151, %1150, !mcsema_real_eip !155
  %1153 = and i64 %1152, 16
  %1154 = icmp eq i64 %1153, 0
  store i1 %1154, i1* %AF_val, !mcsema_real_eip !155
  %1155 = icmp slt i64 %1151, 0
  store i1 %1155, i1* %SF_val, !mcsema_real_eip !155
  %1156 = icmp eq i64 %1151, 0, !mcsema_real_eip !155
  store i1 %1156, i1* %ZF_val, !mcsema_real_eip !155
  %1157 = xor i64 %1150, -9223372036854775808, !mcsema_real_eip !155
  %1158 = and i64 %1152, %1157, !mcsema_real_eip !155
  %1159 = icmp slt i64 %1158, 0
  store i1 %1159, i1* %OF_val, !mcsema_real_eip !155
  %1160 = trunc i64 %1151 to i8, !mcsema_real_eip !155
  %1161 = tail call i8 @llvm.ctpop.i8(i8 %1160), !mcsema_real_eip !155
  %1162 = and i8 %1161, 1
  %1163 = icmp eq i8 %1162, 0
  store i1 %1163, i1* %PF_val, !mcsema_real_eip !155
  %1164 = extractvalue { i64, i1 } %uadd144, 1
  store i1 %1164, i1* %CF_val, !mcsema_real_eip !155
  store i64 %1151, i64* %RSI_val, !mcsema_real_eip !156
  %1165 = load i64* %RDI_val, !mcsema_real_eip !157
  %1166 = load i64* %RDX_val, !mcsema_real_eip !157
  %1167 = tail call x86_64_sysvcc i64 @read_bytes(i64 %1165, i64 %1151, i64 %1166), !mcsema_real_eip !157
  store i64 %1167, i64* %RAX_val, !mcsema_real_eip !157
  %1168 = load i64* %RBP_val, !mcsema_real_eip !158
  %1169 = add i64 %1168, -60, !mcsema_real_eip !158
  %1170 = inttoptr i64 %1169 to i64*, !mcsema_real_eip !158
  %1171 = trunc i64 %1167 to i32, !mcsema_real_eip !158
  %1172 = bitcast i64* %1170 to i32*
  store i32 %1171, i32* %1172, !mcsema_real_eip !158
  %1173 = load i64* %RBP_val, !mcsema_real_eip !159
  %1174 = add i64 %1173, -60, !mcsema_real_eip !159
  %1175 = inttoptr i64 %1174 to i64*, !mcsema_real_eip !159
  %1176 = bitcast i64* %1175 to i32*
  %1177 = load i32* %1176, !mcsema_real_eip !159
  %1178 = add i32 %1177, -3
  %1179 = xor i32 %1178, %1177, !mcsema_real_eip !160
  %1180 = and i32 %1179, 16, !mcsema_real_eip !160
  %1181 = icmp ne i32 %1180, 0, !mcsema_real_eip !160
  store i1 %1181, i1* %AF_val, !mcsema_real_eip !160
  %1182 = trunc i32 %1178 to i8, !mcsema_real_eip !160
  %1183 = tail call i8 @llvm.ctpop.i8(i8 %1182), !mcsema_real_eip !160
  %1184 = and i8 %1183, 1
  %1185 = icmp eq i8 %1184, 0
  store i1 %1185, i1* %PF_val, !mcsema_real_eip !160
  %1186 = icmp eq i32 %1178, 0, !mcsema_real_eip !160
  store i1 %1186, i1* %ZF_val, !mcsema_real_eip !160
  %1187 = icmp slt i32 %1178, 0
  store i1 %1187, i1* %SF_val, !mcsema_real_eip !160
  %1188 = icmp ult i32 %1177, 3, !mcsema_real_eip !160
  store i1 %1188, i1* %CF_val, !mcsema_real_eip !160
  %1189 = and i32 %1179, %1177, !mcsema_real_eip !160
  %1190 = icmp slt i32 %1189, 0
  store i1 %1190, i1* %OF_val, !mcsema_real_eip !160
  %1191 = zext i32 %1178 to i64, !mcsema_real_eip !160
  store i64 %1191, i64* %RAX_val, !mcsema_real_eip !160
  %1192 = load i64* %RBP_val, !mcsema_real_eip !161
  %1193 = add i64 %1192, -60, !mcsema_real_eip !161
  %1194 = inttoptr i64 %1193 to i64*, !mcsema_real_eip !161
  %1195 = bitcast i64* %1194 to i32*
  store i32 %1178, i32* %1195, !mcsema_real_eip !161
  %1196 = load i64* %RBP_val, !mcsema_real_eip !162
  %1197 = add i64 %1196, -60, !mcsema_real_eip !162
  %1198 = inttoptr i64 %1197 to i64*, !mcsema_real_eip !162
  %1199 = bitcast i64* %1198 to i32*
  %1200 = load i32* %1199, !mcsema_real_eip !162
  %1201 = and i32 %1200, 7, !mcsema_real_eip !163
  %1202 = icmp eq i32 %1201, 0, !mcsema_real_eip !163
  %1203 = trunc i32 %1201 to i8, !mcsema_real_eip !163
  %1204 = tail call i8 @llvm.ctpop.i8(i8 %1203), !mcsema_real_eip !163
  %1205 = and i8 %1204, 1
  %1206 = icmp eq i8 %1205, 0
  %1207 = zext i32 %1201 to i64, !mcsema_real_eip !163
  store i64 %1207, i64* %RAX_val, !mcsema_real_eip !163
  store i1 false, i1* %AF_val, !mcsema_real_eip !164
  store i1 %1206, i1* %PF_val, !mcsema_real_eip !164
  store i1 %1202, i1* %ZF_val, !mcsema_real_eip !164
  store i1 false, i1* %SF_val, !mcsema_real_eip !164
  store i1 false, i1* %CF_val, !mcsema_real_eip !164
  store i1 false, i1* %OF_val, !mcsema_real_eip !164
  br i1 %1202, label %block_0x315, label %block_0x309, !mcsema_real_eip !165

block_0x315:                                      ; preds = %block_0x2bb, %block_0x2c7
  %1208 = load i64* %RBP_val, !mcsema_real_eip !170
  %1209 = add i64 %1208, -60, !mcsema_real_eip !170
  %1210 = inttoptr i64 %1209 to i64*, !mcsema_real_eip !170
  %1211 = bitcast i64* %1210 to i32*
  %1212 = load i32* %1211, !mcsema_real_eip !170
  %1213 = xor i32 %1212, -2147483648
  store i1 false, i1* %AF_val, !mcsema_real_eip !171
  %1214 = trunc i32 %1212 to i8, !mcsema_real_eip !171
  %1215 = tail call i8 @llvm.ctpop.i8(i8 %1214), !mcsema_real_eip !171
  %1216 = and i8 %1215, 1
  %1217 = icmp eq i8 %1216, 0
  store i1 %1217, i1* %PF_val, !mcsema_real_eip !171
  %1218 = icmp eq i32 %1212, -2147483648
  store i1 %1218, i1* %ZF_val, !mcsema_real_eip !171
  %1219 = icmp sgt i32 %1212, -1
  store i1 %1219, i1* %SF_val, !mcsema_real_eip !171
  store i1 %1219, i1* %CF_val, !mcsema_real_eip !171
  store i1 %1219, i1* %OF_val, !mcsema_real_eip !171
  %1220 = zext i32 %1213 to i64, !mcsema_real_eip !171
  store i64 %1220, i64* %RAX_val, !mcsema_real_eip !171
  %1221 = load i64* %RBP_val, !mcsema_real_eip !172
  %1222 = add i64 %1221, -60, !mcsema_real_eip !172
  %1223 = inttoptr i64 %1222 to i64*, !mcsema_real_eip !172
  %1224 = bitcast i64* %1223 to i32*
  store i32 %1213, i32* %1224, !mcsema_real_eip !172
  %1225 = load i64* %RBP_val, !mcsema_real_eip !173
  %1226 = add i64 %1225, -60, !mcsema_real_eip !173
  %1227 = inttoptr i64 %1226 to i64*, !mcsema_real_eip !173
  %1228 = bitcast i64* %1227 to i32*
  %1229 = load i32* %1228, !mcsema_real_eip !173
  %1230 = add i32 %1229, -268435455
  %1231 = xor i32 %1230, %1229, !mcsema_real_eip !173
  %1232 = and i32 %1231, 16
  %1233 = icmp eq i32 %1232, 0
  store i1 %1233, i1* %AF_val, !mcsema_real_eip !173
  %1234 = trunc i32 %1230 to i8, !mcsema_real_eip !173
  %1235 = tail call i8 @llvm.ctpop.i8(i8 %1234), !mcsema_real_eip !173
  %1236 = and i8 %1235, 1
  %1237 = icmp eq i8 %1236, 0
  store i1 %1237, i1* %PF_val, !mcsema_real_eip !173
  %1238 = icmp eq i32 %1230, 0, !mcsema_real_eip !173
  store i1 %1238, i1* %ZF_val, !mcsema_real_eip !173
  %1239 = icmp slt i32 %1230, 0
  store i1 %1239, i1* %SF_val, !mcsema_real_eip !173
  %1240 = icmp ult i32 %1229, 268435455, !mcsema_real_eip !173
  store i1 %1240, i1* %CF_val, !mcsema_real_eip !173
  %1241 = and i32 %1231, %1229, !mcsema_real_eip !173
  %1242 = icmp slt i32 %1241, 0
  store i1 %1242, i1* %OF_val, !mcsema_real_eip !173
  %1243 = load i1* %ZF_val, !mcsema_real_eip !174
  %1244 = or i1 %1240, %1243, !mcsema_real_eip !174
  br i1 %1244, label %block_0x339, label %block_0x32d, !mcsema_real_eip !174

block_0x309:                                      ; preds = %block_0x2bb, %block_0x2c7
  %1245 = load i64* %RBP_val, !mcsema_real_eip !175
  %1246 = add i64 %1245, -4, !mcsema_real_eip !175
  %1247 = inttoptr i64 %1246 to i64*, !mcsema_real_eip !175
  %1248 = bitcast i64* %1247 to i32*
  store i32 -21, i32* %1248, !mcsema_real_eip !175
  br label %block_0x46d, !mcsema_real_eip !176

block_0x339:                                      ; preds = %block_0x315
  store i64 10000, i64* %RAX_val, !mcsema_real_eip !177
  %1249 = load i64* %RBP_val, !mcsema_real_eip !178
  %1250 = add i64 %1249, -60, !mcsema_real_eip !178
  %1251 = inttoptr i64 %1250 to i64*, !mcsema_real_eip !178
  %1252 = bitcast i64* %1251 to i32*
  %1253 = load i32* %1252, !mcsema_real_eip !178
  %1254 = xor i32 %1253, 13631488, !mcsema_real_eip !179
  store i1 false, i1* %CF_val, !mcsema_real_eip !179
  store i1 false, i1* %OF_val, !mcsema_real_eip !179
  %1255 = icmp slt i32 %1253, 0
  store i1 %1255, i1* %SF_val, !mcsema_real_eip !179
  %1256 = icmp eq i32 %1253, 13631488
  store i1 %1256, i1* %ZF_val, !mcsema_real_eip !179
  %1257 = trunc i32 %1253 to i8, !mcsema_real_eip !179
  %1258 = tail call i8 @llvm.ctpop.i8(i8 %1257), !mcsema_real_eip !179
  %1259 = and i8 %1258, 1
  %1260 = icmp eq i8 %1259, 0
  store i1 %1260, i1* %PF_val, !mcsema_real_eip !179
  %1261 = zext i32 %1254 to i64, !mcsema_real_eip !179
  store i64 %1261, i64* %RCX_val, !mcsema_real_eip !179
  %1262 = load i64* %RBP_val, !mcsema_real_eip !180
  %1263 = add i64 %1262, -60, !mcsema_real_eip !180
  %1264 = inttoptr i64 %1263 to i64*, !mcsema_real_eip !180
  %1265 = bitcast i64* %1264 to i32*
  store i32 %1254, i32* %1265, !mcsema_real_eip !180
  %1266 = load i64* %RBP_val, !mcsema_real_eip !181
  %1267 = add i64 %1266, -60, !mcsema_real_eip !181
  %1268 = inttoptr i64 %1267 to i64*, !mcsema_real_eip !181
  %1269 = bitcast i64* %1268 to i32*
  %1270 = load i32* %1269, !mcsema_real_eip !181
  %1271 = and i32 %1270, 8, !mcsema_real_eip !182
  %1272 = icmp ne i32 %1271, 0, !mcsema_real_eip !182
  %1273 = lshr i32 %1270, 4
  store i1 %1272, i1* %CF_val, !mcsema_real_eip !182
  %1274 = icmp eq i32 %1273, 0, !mcsema_real_eip !182
  store i1 %1274, i1* %ZF_val, !mcsema_real_eip !182
  store i1 false, i1* %SF_val, !mcsema_real_eip !182
  %1275 = trunc i32 %1273 to i8, !mcsema_real_eip !182
  %1276 = tail call i8 @llvm.ctpop.i8(i8 %1275), !mcsema_real_eip !182
  %1277 = and i8 %1276, 1
  %1278 = icmp eq i8 %1277, 0
  store i1 %1278, i1* %PF_val, !mcsema_real_eip !182
  %1279 = zext i32 %1273 to i64, !mcsema_real_eip !182
  store i64 %1279, i64* %RCX_val, !mcsema_real_eip !182
  %1280 = load i64* %RBP_val, !mcsema_real_eip !183
  %1281 = add i64 %1280, -60, !mcsema_real_eip !183
  %1282 = inttoptr i64 %1281 to i64*, !mcsema_real_eip !183
  %1283 = bitcast i64* %1282 to i32*
  store i32 %1273, i32* %1283, !mcsema_real_eip !183
  %1284 = load i64* %RBP_val, !mcsema_real_eip !184
  %1285 = add i64 %1284, -60, !mcsema_real_eip !184
  %1286 = inttoptr i64 %1285 to i64*, !mcsema_real_eip !184
  %1287 = bitcast i64* %1286 to i32*
  %1288 = load i32* %1287, !mcsema_real_eip !184
  %1289 = add i32 %1288, -226
  %1290 = xor i32 %1289, %1288, !mcsema_real_eip !185
  %1291 = and i32 %1290, 16, !mcsema_real_eip !185
  %1292 = icmp ne i32 %1291, 0, !mcsema_real_eip !185
  store i1 %1292, i1* %AF_val, !mcsema_real_eip !185
  %1293 = trunc i32 %1289 to i8, !mcsema_real_eip !185
  %1294 = tail call i8 @llvm.ctpop.i8(i8 %1293), !mcsema_real_eip !185
  %1295 = and i8 %1294, 1
  %1296 = icmp eq i8 %1295, 0
  store i1 %1296, i1* %PF_val, !mcsema_real_eip !185
  %1297 = icmp eq i32 %1289, 0, !mcsema_real_eip !185
  store i1 %1297, i1* %ZF_val, !mcsema_real_eip !185
  %1298 = icmp slt i32 %1289, 0
  store i1 %1298, i1* %SF_val, !mcsema_real_eip !185
  %1299 = icmp ult i32 %1288, 226, !mcsema_real_eip !185
  store i1 %1299, i1* %CF_val, !mcsema_real_eip !185
  %1300 = and i32 %1290, %1288, !mcsema_real_eip !185
  %1301 = icmp slt i32 %1300, 0
  store i1 %1301, i1* %OF_val, !mcsema_real_eip !185
  %1302 = zext i32 %1289 to i64, !mcsema_real_eip !185
  store i64 %1302, i64* %RCX_val, !mcsema_real_eip !185
  %1303 = load i64* %RBP_val, !mcsema_real_eip !186
  %1304 = add i64 %1303, -60, !mcsema_real_eip !186
  %1305 = inttoptr i64 %1304 to i64*, !mcsema_real_eip !186
  %1306 = bitcast i64* %1305 to i32*
  store i32 %1289, i32* %1306, !mcsema_real_eip !186
  %1307 = load i64* %RBP_val, !mcsema_real_eip !187
  %1308 = add i64 %1307, -60, !mcsema_real_eip !187
  %1309 = inttoptr i64 %1308 to i64*, !mcsema_real_eip !187
  %1310 = bitcast i64* %1309 to i32*
  %1311 = load i32* %1310, !mcsema_real_eip !187
  %1312 = zext i32 %1311 to i64, !mcsema_real_eip !187
  store i64 %1312, i64* %RCX_val, !mcsema_real_eip !187
  %1313 = load i64* %RBP_val, !mcsema_real_eip !188
  %1314 = add i64 %1313, -68, !mcsema_real_eip !188
  %1315 = inttoptr i64 %1314 to i64*, !mcsema_real_eip !188
  %1316 = load i64* %RAX_val, !mcsema_real_eip !188
  %1317 = trunc i64 %1316 to i32, !mcsema_real_eip !188
  %1318 = bitcast i64* %1315 to i32*
  store i32 %1317, i32* %1318, !mcsema_real_eip !188
  %1319 = load i64* %RCX_val, !mcsema_real_eip !189
  %1320 = and i64 %1319, 4294967295
  store i64 %1320, i64* %RAX_val, !mcsema_real_eip !189
  store i1 false, i1* %CF_val, !mcsema_real_eip !190
  store i1 false, i1* %OF_val, !mcsema_real_eip !190
  store i1 false, i1* %SF_val, !mcsema_real_eip !190
  store i1 true, i1* %ZF_val, !mcsema_real_eip !190
  store i1 true, i1* %PF_val, !mcsema_real_eip !190
  store i64 0, i64* %RDX_val, !mcsema_real_eip !190
  %1321 = load i64* %RBP_val, !mcsema_real_eip !191
  %1322 = add i64 %1321, -68, !mcsema_real_eip !191
  %1323 = inttoptr i64 %1322 to i64*, !mcsema_real_eip !191
  %1324 = bitcast i64* %1323 to i32*
  %1325 = load i32* %1324, !mcsema_real_eip !191
  %1326 = zext i32 %1325 to i64, !mcsema_real_eip !191
  store i64 %1326, i64* %RCX_val, !mcsema_real_eip !191
  %1327 = load i64* %RAX_val, !mcsema_real_eip !192
  %1328 = load i64* %RDX_val, !mcsema_real_eip !192
  %1329 = shl i64 %1328, 32, !mcsema_real_eip !192
  %sext145 = shl i64 %1327, 32
  %1330 = ashr exact i64 %sext145, 32
  %1331 = or i64 %1329, %1330, !mcsema_real_eip !192
  %1332 = udiv i64 %1331, %1326, !mcsema_real_eip !192
  %1333 = urem i64 %1331, %1326, !mcsema_real_eip !192
  %1334 = and i64 %1333, 4294967295
  store i64 %1334, i64* %RDX_val, !mcsema_real_eip !192
  %1335 = and i64 %1332, 4294967295
  store i64 %1335, i64* %RAX_val, !mcsema_real_eip !192
  %1336 = load i64* %RBP_val, !mcsema_real_eip !193
  %1337 = add i64 %1336, -60, !mcsema_real_eip !193
  %1338 = inttoptr i64 %1337 to i64*, !mcsema_real_eip !193
  %1339 = trunc i64 %1332 to i32, !mcsema_real_eip !193
  %1340 = bitcast i64* %1338 to i32*
  store i32 %1339, i32* %1340, !mcsema_real_eip !193
  %1341 = load i64* %RBP_val, !mcsema_real_eip !194
  %1342 = add i64 %1341, -60, !mcsema_real_eip !194
  %1343 = inttoptr i64 %1342 to i64*, !mcsema_real_eip !194
  %1344 = bitcast i64* %1343 to i32*
  %1345 = load i32* %1344, !mcsema_real_eip !194
  %1346 = add i32 %1345, -3
  %1347 = xor i32 %1346, %1345, !mcsema_real_eip !194
  %1348 = and i32 %1347, 16, !mcsema_real_eip !194
  %1349 = icmp ne i32 %1348, 0, !mcsema_real_eip !194
  store i1 %1349, i1* %AF_val, !mcsema_real_eip !194
  %1350 = trunc i32 %1346 to i8, !mcsema_real_eip !194
  %1351 = tail call i8 @llvm.ctpop.i8(i8 %1350), !mcsema_real_eip !194
  %1352 = and i8 %1351, 1
  %1353 = icmp eq i8 %1352, 0
  store i1 %1353, i1* %PF_val, !mcsema_real_eip !194
  %1354 = icmp eq i32 %1346, 0, !mcsema_real_eip !194
  store i1 %1354, i1* %ZF_val, !mcsema_real_eip !194
  %1355 = icmp slt i32 %1346, 0
  store i1 %1355, i1* %SF_val, !mcsema_real_eip !194
  %1356 = icmp ult i32 %1345, 3, !mcsema_real_eip !194
  store i1 %1356, i1* %CF_val, !mcsema_real_eip !194
  %1357 = and i32 %1347, %1345, !mcsema_real_eip !194
  %1358 = icmp slt i32 %1357, 0
  store i1 %1358, i1* %OF_val, !mcsema_real_eip !194
  %1359 = load i1* %ZF_val, !mcsema_real_eip !195
  br i1 %1359, label %block_0x389, label %block_0x37e, !mcsema_real_eip !195

block_0x32d:                                      ; preds = %block_0x315
  %1360 = load i64* %RBP_val, !mcsema_real_eip !196
  %1361 = add i64 %1360, -4, !mcsema_real_eip !196
  %1362 = inttoptr i64 %1361 to i64*, !mcsema_real_eip !196
  %1363 = bitcast i64* %1362 to i32*
  store i32 -22, i32* %1363, !mcsema_real_eip !196
  br label %block_0x46d, !mcsema_real_eip !197

block_0x389:                                      ; preds = %block_0x339
  store i64 4, i64* %RDX_val, !mcsema_real_eip !198
  %1364 = load i64* %RBP_val, !mcsema_real_eip !199
  %1365 = add i64 %1364, -20, !mcsema_real_eip !199
  %1366 = inttoptr i64 %1365 to i64*, !mcsema_real_eip !199
  %1367 = bitcast i64* %1366 to i32*
  %1368 = load i32* %1367, !mcsema_real_eip !199
  %1369 = zext i32 %1368 to i64, !mcsema_real_eip !199
  store i64 %1369, i64* %RDI_val, !mcsema_real_eip !199
  %1370 = load i64* %RBP_val, !mcsema_real_eip !200
  %1371 = add i64 %1370, -16, !mcsema_real_eip !200
  %1372 = inttoptr i64 %1371 to i64*, !mcsema_real_eip !200
  %1373 = load i64* %1372, !mcsema_real_eip !200
  %uadd146 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1373, i64 28)
  %1374 = extractvalue { i64, i1 } %uadd146, 0
  %1375 = xor i64 %1374, %1373, !mcsema_real_eip !201
  %1376 = and i64 %1375, 16
  %1377 = icmp eq i64 %1376, 0
  store i1 %1377, i1* %AF_val, !mcsema_real_eip !201
  %1378 = icmp slt i64 %1374, 0
  store i1 %1378, i1* %SF_val, !mcsema_real_eip !201
  %1379 = icmp eq i64 %1374, 0, !mcsema_real_eip !201
  store i1 %1379, i1* %ZF_val, !mcsema_real_eip !201
  %1380 = xor i64 %1373, -9223372036854775808, !mcsema_real_eip !201
  %1381 = and i64 %1375, %1380, !mcsema_real_eip !201
  %1382 = icmp slt i64 %1381, 0
  store i1 %1382, i1* %OF_val, !mcsema_real_eip !201
  %1383 = trunc i64 %1374 to i8, !mcsema_real_eip !201
  %1384 = tail call i8 @llvm.ctpop.i8(i8 %1383), !mcsema_real_eip !201
  %1385 = and i8 %1384, 1
  %1386 = icmp eq i8 %1385, 0
  store i1 %1386, i1* %PF_val, !mcsema_real_eip !201
  %1387 = extractvalue { i64, i1 } %uadd146, 1
  store i1 %1387, i1* %CF_val, !mcsema_real_eip !201
  store i64 %1374, i64* %RSI_val, !mcsema_real_eip !202
  %1388 = load i64* %RDI_val, !mcsema_real_eip !203
  %1389 = load i64* %RDX_val, !mcsema_real_eip !203
  %1390 = tail call x86_64_sysvcc i64 @read_bytes(i64 %1388, i64 %1374, i64 %1389), !mcsema_real_eip !203
  store i64 %1390, i64* %RAX_val, !mcsema_real_eip !203
  %1391 = load i64* %RBP_val, !mcsema_real_eip !204
  %1392 = add i64 %1391, -64, !mcsema_real_eip !204
  %1393 = inttoptr i64 %1392 to i64*, !mcsema_real_eip !204
  %1394 = trunc i64 %1390 to i32, !mcsema_real_eip !204
  %1395 = bitcast i64* %1393 to i32*
  store i32 %1394, i32* %1395, !mcsema_real_eip !204
  %1396 = load i64* %RBP_val, !mcsema_real_eip !205
  %1397 = add i64 %1396, -16, !mcsema_real_eip !205
  %1398 = inttoptr i64 %1397 to i64*, !mcsema_real_eip !205
  %1399 = load i64* %1398, !mcsema_real_eip !205
  store i64 %1399, i64* %RSI_val, !mcsema_real_eip !205
  %1400 = add i64 %1399, 28, !mcsema_real_eip !206
  %1401 = inttoptr i64 %1400 to i64*, !mcsema_real_eip !206
  %1402 = bitcast i64* %1401 to i8*
  %1403 = load i8* %1402, !mcsema_real_eip !206
  %1404 = sext i8 %1403 to i32, !mcsema_real_eip !206
  %1405 = zext i32 %1404 to i64, !mcsema_real_eip !206
  store i64 %1405, i64* %RAX_val, !mcsema_real_eip !206
  %1406 = add nsw i32 %1404, -100
  %1407 = xor i32 %1406, %1404, !mcsema_real_eip !207
  %1408 = and i32 %1407, 16, !mcsema_real_eip !207
  %1409 = icmp ne i32 %1408, 0, !mcsema_real_eip !207
  store i1 %1409, i1* %AF_val, !mcsema_real_eip !207
  %1410 = trunc i32 %1406 to i8, !mcsema_real_eip !207
  %1411 = tail call i8 @llvm.ctpop.i8(i8 %1410), !mcsema_real_eip !207
  %1412 = and i8 %1411, 1
  %1413 = icmp eq i8 %1412, 0
  store i1 %1413, i1* %PF_val, !mcsema_real_eip !207
  %1414 = icmp eq i32 %1406, 0, !mcsema_real_eip !207
  store i1 %1414, i1* %ZF_val, !mcsema_real_eip !207
  %1415 = icmp slt i32 %1406, 0
  store i1 %1415, i1* %SF_val, !mcsema_real_eip !207
  %1416 = icmp ult i8 %1403, 100
  store i1 %1416, i1* %CF_val, !mcsema_real_eip !207
  %1417 = and i32 %1407, %1404, !mcsema_real_eip !207
  %1418 = icmp slt i32 %1417, 0
  store i1 %1418, i1* %OF_val, !mcsema_real_eip !207
  %1419 = load i1* %ZF_val, !mcsema_real_eip !208
  br i1 %1419, label %block_0x3b9, label %block_0x3dd, !mcsema_real_eip !208

block_0x37e:                                      ; preds = %block_0x339
  %1420 = load i64* %RBP_val, !mcsema_real_eip !209
  %1421 = add i64 %1420, -60, !mcsema_real_eip !209
  %1422 = inttoptr i64 %1421 to i64*, !mcsema_real_eip !209
  %1423 = bitcast i64* %1422 to i32*
  %1424 = load i32* %1423, !mcsema_real_eip !209
  %1425 = zext i32 %1424 to i64, !mcsema_real_eip !209
  store i64 %1425, i64* %RAX_val, !mcsema_real_eip !209
  %1426 = load i64* %RBP_val, !mcsema_real_eip !210
  %1427 = add i64 %1426, -4, !mcsema_real_eip !210
  %1428 = inttoptr i64 %1427 to i64*, !mcsema_real_eip !210
  %1429 = bitcast i64* %1428 to i32*
  store i32 %1424, i32* %1429, !mcsema_real_eip !210
  br label %block_0x46d, !mcsema_real_eip !211

block_0x3dd:                                      ; preds = %block_0x3b9, %block_0x389
  %1430 = load i64* %RBP_val, !mcsema_real_eip !212
  %1431 = add i64 %1430, -16, !mcsema_real_eip !212
  %1432 = inttoptr i64 %1431 to i64*, !mcsema_real_eip !212
  %1433 = load i64* %1432, !mcsema_real_eip !212
  store i64 %1433, i64* %RAX_val, !mcsema_real_eip !212
  %1434 = add i64 %1433, 28, !mcsema_real_eip !213
  %1435 = inttoptr i64 %1434 to i64*, !mcsema_real_eip !213
  %1436 = bitcast i64* %1435 to i8*
  %1437 = load i8* %1436, !mcsema_real_eip !213
  %1438 = sext i8 %1437 to i32, !mcsema_real_eip !213
  %1439 = zext i32 %1438 to i64, !mcsema_real_eip !213
  store i64 %1439, i64* %RCX_val, !mcsema_real_eip !213
  %1440 = load i64* %RBP_val, !mcsema_real_eip !214
  %1441 = add i64 %1440, -16, !mcsema_real_eip !214
  %1442 = inttoptr i64 %1441 to i64*, !mcsema_real_eip !214
  %1443 = load i64* %1442, !mcsema_real_eip !214
  store i64 %1443, i64* %RAX_val, !mcsema_real_eip !214
  %1444 = add i64 %1443, 29, !mcsema_real_eip !215
  %1445 = inttoptr i64 %1444 to i64*, !mcsema_real_eip !215
  %1446 = bitcast i64* %1445 to i8*
  %1447 = load i8* %1446, !mcsema_real_eip !215
  %1448 = sext i8 %1447 to i32, !mcsema_real_eip !215
  %1449 = zext i32 %1448 to i64, !mcsema_real_eip !215
  store i64 %1449, i64* %RDX_val, !mcsema_real_eip !215
  %1450 = load i64* %RCX_val, !mcsema_real_eip !216
  %1451 = trunc i64 %1450 to i32, !mcsema_real_eip !216
  %1452 = sub i32 %1451, %1448, !mcsema_real_eip !216
  %1453 = xor i32 %1452, %1451, !mcsema_real_eip !216
  %1454 = xor i32 %1453, %1448, !mcsema_real_eip !216
  %1455 = and i32 %1454, 16, !mcsema_real_eip !216
  %1456 = icmp ne i32 %1455, 0, !mcsema_real_eip !216
  store i1 %1456, i1* %AF_val, !mcsema_real_eip !216
  %1457 = trunc i32 %1452 to i8, !mcsema_real_eip !216
  %1458 = tail call i8 @llvm.ctpop.i8(i8 %1457), !mcsema_real_eip !216
  %1459 = and i8 %1458, 1
  %1460 = icmp eq i8 %1459, 0
  store i1 %1460, i1* %PF_val, !mcsema_real_eip !216
  %1461 = icmp eq i32 %1451, %1448
  store i1 %1461, i1* %ZF_val, !mcsema_real_eip !216
  %1462 = icmp slt i32 %1452, 0
  store i1 %1462, i1* %SF_val, !mcsema_real_eip !216
  %1463 = icmp ult i32 %1451, %1448, !mcsema_real_eip !216
  store i1 %1463, i1* %CF_val, !mcsema_real_eip !216
  %1464 = xor i32 %1451, %1448, !mcsema_real_eip !216
  %1465 = and i32 %1453, %1464, !mcsema_real_eip !216
  %1466 = icmp slt i32 %1465, 0
  store i1 %1466, i1* %OF_val, !mcsema_real_eip !216
  %1467 = load i1* %ZF_val, !mcsema_real_eip !217
  br i1 %1467, label %block_0x3f5, label %block_0x45c, !mcsema_real_eip !217

block_0x3b9:                                      ; preds = %block_0x389
  %1468 = load i64* %RBP_val, !mcsema_real_eip !218
  %1469 = add i64 %1468, -16, !mcsema_real_eip !218
  %1470 = inttoptr i64 %1469 to i64*, !mcsema_real_eip !218
  %1471 = load i64* %1470, !mcsema_real_eip !218
  store i64 %1471, i64* %RAX_val, !mcsema_real_eip !218
  %1472 = add i64 %1471, 29, !mcsema_real_eip !219
  %1473 = inttoptr i64 %1472 to i64*, !mcsema_real_eip !219
  %1474 = bitcast i64* %1473 to i8*
  %1475 = load i8* %1474, !mcsema_real_eip !219
  %1476 = sext i8 %1475 to i32, !mcsema_real_eip !219
  %1477 = zext i32 %1476 to i64, !mcsema_real_eip !219
  store i64 %1477, i64* %RCX_val, !mcsema_real_eip !219
  %1478 = add nsw i32 %1476, -100
  %1479 = xor i32 %1478, %1476, !mcsema_real_eip !220
  %1480 = and i32 %1479, 16, !mcsema_real_eip !220
  %1481 = icmp ne i32 %1480, 0, !mcsema_real_eip !220
  store i1 %1481, i1* %AF_val, !mcsema_real_eip !220
  %1482 = trunc i32 %1478 to i8, !mcsema_real_eip !220
  %1483 = tail call i8 @llvm.ctpop.i8(i8 %1482), !mcsema_real_eip !220
  %1484 = and i8 %1483, 1
  %1485 = icmp eq i8 %1484, 0
  store i1 %1485, i1* %PF_val, !mcsema_real_eip !220
  %1486 = icmp eq i32 %1478, 0, !mcsema_real_eip !220
  store i1 %1486, i1* %ZF_val, !mcsema_real_eip !220
  %1487 = icmp slt i32 %1478, 0
  store i1 %1487, i1* %SF_val, !mcsema_real_eip !220
  %1488 = icmp ult i8 %1475, 100
  store i1 %1488, i1* %CF_val, !mcsema_real_eip !220
  %1489 = and i32 %1479, %1476, !mcsema_real_eip !220
  %1490 = icmp slt i32 %1489, 0
  store i1 %1490, i1* %OF_val, !mcsema_real_eip !220
  %1491 = load i1* %ZF_val, !mcsema_real_eip !221
  br i1 %1491, label %block_0x3cd, label %block_0x3dd, !mcsema_real_eip !221

block_0x3cd:                                      ; preds = %block_0x3b9
  %1492 = load i64* %RBP_val, !mcsema_real_eip !222
  %1493 = add i64 %1492, -64, !mcsema_real_eip !222
  %1494 = inttoptr i64 %1493 to i64*, !mcsema_real_eip !222
  %1495 = bitcast i64* %1494 to i32*
  %1496 = load i32* %1495, !mcsema_real_eip !222
  %1497 = zext i32 %1496 to i64, !mcsema_real_eip !222
  store i64 %1497, i64* %RAX_val, !mcsema_real_eip !222
  %1498 = load i64* %RBP_val, !mcsema_real_eip !223
  %1499 = add i64 %1498, -20, !mcsema_real_eip !223
  %1500 = inttoptr i64 %1499 to i64*, !mcsema_real_eip !223
  %1501 = bitcast i64* %1500 to i32*
  %1502 = load i32* %1501, !mcsema_real_eip !223
  %1503 = xor i32 %1496, %1502, !mcsema_real_eip !224
  store i1 false, i1* %CF_val, !mcsema_real_eip !224
  store i1 false, i1* %OF_val, !mcsema_real_eip !224
  %1504 = icmp slt i32 %1503, 0
  store i1 %1504, i1* %SF_val, !mcsema_real_eip !224
  %1505 = icmp eq i32 %1502, %1496
  store i1 %1505, i1* %ZF_val, !mcsema_real_eip !224
  %1506 = trunc i32 %1503 to i8, !mcsema_real_eip !224
  %1507 = tail call i8 @llvm.ctpop.i8(i8 %1506), !mcsema_real_eip !224
  %1508 = and i8 %1507, 1
  %1509 = icmp eq i8 %1508, 0
  store i1 %1509, i1* %PF_val, !mcsema_real_eip !224
  %1510 = zext i32 %1503 to i64, !mcsema_real_eip !224
  store i64 %1510, i64* %RCX_val, !mcsema_real_eip !224
  %1511 = load i64* %RBP_val, !mcsema_real_eip !225
  %1512 = add i64 %1511, -20, !mcsema_real_eip !225
  %1513 = inttoptr i64 %1512 to i64*, !mcsema_real_eip !225
  %1514 = bitcast i64* %1513 to i32*
  store i32 %1503, i32* %1514, !mcsema_real_eip !225
  br label %block_0x467, !mcsema_real_eip !226

block_0x45c:                                      ; preds = %block_0x3dd
  %1515 = load i64* %RBP_val, !mcsema_real_eip !227
  %1516 = add i64 %1515, -64, !mcsema_real_eip !227
  %1517 = inttoptr i64 %1516 to i64*, !mcsema_real_eip !227
  %1518 = bitcast i64* %1517 to i32*
  %1519 = load i32* %1518, !mcsema_real_eip !227
  %1520 = zext i32 %1519 to i64, !mcsema_real_eip !227
  store i64 %1520, i64* %RAX_val, !mcsema_real_eip !227
  %1521 = load i64* %RBP_val, !mcsema_real_eip !228
  %1522 = add i64 %1521, -20, !mcsema_real_eip !228
  %1523 = inttoptr i64 %1522 to i64*, !mcsema_real_eip !228
  %1524 = bitcast i64* %1523 to i32*
  store i32 %1519, i32* %1524, !mcsema_real_eip !228
  br label %block_0x467, !mcsema_real_eip !229

block_0x3f5:                                      ; preds = %block_0x3dd
  store i64 15, i64* %RAX_val, !mcsema_real_eip !230
  %1525 = load i64* %RBP_val, !mcsema_real_eip !231
  %1526 = add i64 %1525, -16, !mcsema_real_eip !231
  %1527 = inttoptr i64 %1526 to i64*, !mcsema_real_eip !231
  %1528 = load i64* %1527, !mcsema_real_eip !231
  store i64 %1528, i64* %RCX_val, !mcsema_real_eip !231
  %1529 = add i64 %1528, 31, !mcsema_real_eip !232
  %1530 = inttoptr i64 %1529 to i64*, !mcsema_real_eip !232
  %1531 = bitcast i64* %1530 to i8*
  %1532 = load i8* %1531, !mcsema_real_eip !232
  %1533 = sext i8 %1532 to i32, !mcsema_real_eip !232
  %1534 = zext i32 %1533 to i64, !mcsema_real_eip !232
  store i64 %1534, i64* %RDX_val, !mcsema_real_eip !232
  %1535 = load i64* %RBP_val, !mcsema_real_eip !233
  %1536 = add i64 %1535, -16, !mcsema_real_eip !233
  %1537 = inttoptr i64 %1536 to i64*, !mcsema_real_eip !233
  %1538 = load i64* %1537, !mcsema_real_eip !233
  store i64 %1538, i64* %RCX_val, !mcsema_real_eip !233
  %1539 = add i64 %1538, 30, !mcsema_real_eip !234
  %1540 = inttoptr i64 %1539 to i64*, !mcsema_real_eip !234
  %1541 = bitcast i64* %1540 to i8*
  %1542 = load i8* %1541, !mcsema_real_eip !234
  %1543 = sext i8 %1542 to i32, !mcsema_real_eip !234
  %1544 = zext i32 %1543 to i64, !mcsema_real_eip !234
  store i64 %1544, i64* %RSI_val, !mcsema_real_eip !234
  %1545 = load i64* %RDX_val, !mcsema_real_eip !235
  %1546 = trunc i64 %1545 to i32, !mcsema_real_eip !235
  %1547 = sub i32 %1546, %1543, !mcsema_real_eip !235
  %1548 = zext i32 %1547 to i64, !mcsema_real_eip !235
  store i64 %1548, i64* %RDX_val, !mcsema_real_eip !235
  %1549 = load i64* %RAX_val, !mcsema_real_eip !236
  %1550 = trunc i64 %1549 to i32, !mcsema_real_eip !236
  %1551 = sub i32 %1550, %1547, !mcsema_real_eip !236
  %1552 = xor i32 %1551, %1550, !mcsema_real_eip !236
  %1553 = xor i32 %1552, %1547, !mcsema_real_eip !236
  %1554 = and i32 %1553, 16, !mcsema_real_eip !236
  %1555 = icmp ne i32 %1554, 0, !mcsema_real_eip !236
  store i1 %1555, i1* %AF_val, !mcsema_real_eip !236
  %1556 = trunc i32 %1551 to i8, !mcsema_real_eip !236
  %1557 = tail call i8 @llvm.ctpop.i8(i8 %1556), !mcsema_real_eip !236
  %1558 = and i8 %1557, 1
  %1559 = icmp eq i8 %1558, 0
  store i1 %1559, i1* %PF_val, !mcsema_real_eip !236
  %1560 = icmp eq i32 %1550, %1547
  store i1 %1560, i1* %ZF_val, !mcsema_real_eip !236
  %1561 = icmp slt i32 %1551, 0
  store i1 %1561, i1* %SF_val, !mcsema_real_eip !236
  %1562 = icmp ult i32 %1550, %1547, !mcsema_real_eip !236
  store i1 %1562, i1* %CF_val, !mcsema_real_eip !236
  %1563 = xor i32 %1550, %1547, !mcsema_real_eip !236
  %1564 = and i32 %1552, %1563, !mcsema_real_eip !236
  %1565 = icmp slt i32 %1564, 0
  store i1 %1565, i1* %OF_val, !mcsema_real_eip !236
  %1566 = zext i32 %1551 to i64, !mcsema_real_eip !236
  store i64 %1566, i64* %RAX_val, !mcsema_real_eip !236
  %1567 = load i64* %RBP_val, !mcsema_real_eip !237
  %1568 = add i64 %1567, -20, !mcsema_real_eip !237
  %1569 = inttoptr i64 %1568 to i64*, !mcsema_real_eip !237
  %1570 = bitcast i64* %1569 to i32*
  %1571 = load i32* %1570, !mcsema_real_eip !237
  %uadd148 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1551, i32 %1571)
  %1572 = extractvalue { i32, i1 } %uadd148, 0
  %1573 = xor i32 %1572, %1571, !mcsema_real_eip !238
  %1574 = xor i32 %1573, %1551, !mcsema_real_eip !238
  %1575 = and i32 %1574, 16, !mcsema_real_eip !238
  %1576 = icmp ne i32 %1575, 0, !mcsema_real_eip !238
  store i1 %1576, i1* %AF_val, !mcsema_real_eip !238
  %1577 = icmp slt i32 %1572, 0
  store i1 %1577, i1* %SF_val, !mcsema_real_eip !238
  %1578 = icmp eq i32 %1572, 0, !mcsema_real_eip !238
  store i1 %1578, i1* %ZF_val, !mcsema_real_eip !238
  %1579 = xor i32 %1571, -2147483648, !mcsema_real_eip !238
  %1580 = xor i32 %1579, %1551, !mcsema_real_eip !238
  %1581 = and i32 %1573, %1580, !mcsema_real_eip !238
  %1582 = icmp slt i32 %1581, 0
  store i1 %1582, i1* %OF_val, !mcsema_real_eip !238
  %1583 = trunc i32 %1572 to i8, !mcsema_real_eip !238
  %1584 = tail call i8 @llvm.ctpop.i8(i8 %1583), !mcsema_real_eip !238
  %1585 = and i8 %1584, 1
  %1586 = icmp eq i8 %1585, 0
  store i1 %1586, i1* %PF_val, !mcsema_real_eip !238
  %1587 = extractvalue { i32, i1 } %uadd148, 1
  store i1 %1587, i1* %CF_val, !mcsema_real_eip !238
  %1588 = zext i32 %1572 to i64, !mcsema_real_eip !238
  store i64 %1588, i64* %RDX_val, !mcsema_real_eip !238
  %1589 = load i64* %RBP_val, !mcsema_real_eip !239
  %1590 = add i64 %1589, -20, !mcsema_real_eip !239
  %1591 = inttoptr i64 %1590 to i64*, !mcsema_real_eip !239
  %1592 = bitcast i64* %1591 to i32*
  store i32 %1572, i32* %1592, !mcsema_real_eip !239
  %1593 = load i64* %RBP_val, !mcsema_real_eip !240
  %1594 = add i64 %1593, -16, !mcsema_real_eip !240
  %1595 = inttoptr i64 %1594 to i64*, !mcsema_real_eip !240
  %1596 = load i64* %1595, !mcsema_real_eip !240
  store i64 %1596, i64* %RCX_val, !mcsema_real_eip !240
  %1597 = add i64 %1596, 28, !mcsema_real_eip !241
  %1598 = inttoptr i64 %1597 to i64*, !mcsema_real_eip !241
  %1599 = bitcast i64* %1598 to i8*
  %1600 = load i8* %1599, !mcsema_real_eip !241
  %1601 = zext i8 %1600 to i64
  store i64 %1601, i64* %RDI_val, !mcsema_real_eip !241
  %1602 = tail call x86_64_sysvcc i64 @to_byte(i64 %1601), !mcsema_real_eip !242
  store i64 %1602, i64* %RAX_val, !mcsema_real_eip !242
  %1603 = load i64* %RBP_val, !mcsema_real_eip !243
  %1604 = add i64 %1603, -20, !mcsema_real_eip !243
  %1605 = inttoptr i64 %1604 to i64*, !mcsema_real_eip !243
  %1606 = bitcast i64* %1605 to i32*
  %1607 = load i32* %1606, !mcsema_real_eip !243
  %1608 = trunc i64 %1602 to i32, !mcsema_real_eip !244
  %1609 = sub i32 %1607, %1608, !mcsema_real_eip !244
  %1610 = xor i32 %1609, %1607, !mcsema_real_eip !244
  %1611 = xor i32 %1610, %1608, !mcsema_real_eip !244
  %1612 = and i32 %1611, 16, !mcsema_real_eip !244
  %1613 = icmp ne i32 %1612, 0, !mcsema_real_eip !244
  store i1 %1613, i1* %AF_val, !mcsema_real_eip !244
  %1614 = trunc i32 %1609 to i8, !mcsema_real_eip !244
  %1615 = tail call i8 @llvm.ctpop.i8(i8 %1614), !mcsema_real_eip !244
  %1616 = and i8 %1615, 1
  %1617 = icmp eq i8 %1616, 0
  store i1 %1617, i1* %PF_val, !mcsema_real_eip !244
  %1618 = icmp eq i32 %1607, %1608
  store i1 %1618, i1* %ZF_val, !mcsema_real_eip !244
  %1619 = icmp slt i32 %1609, 0
  store i1 %1619, i1* %SF_val, !mcsema_real_eip !244
  %1620 = icmp ult i32 %1607, %1608, !mcsema_real_eip !244
  store i1 %1620, i1* %CF_val, !mcsema_real_eip !244
  %1621 = xor i32 %1608, %1607, !mcsema_real_eip !244
  %1622 = and i32 %1610, %1621, !mcsema_real_eip !244
  %1623 = icmp slt i32 %1622, 0
  store i1 %1623, i1* %OF_val, !mcsema_real_eip !244
  %1624 = zext i32 %1609 to i64, !mcsema_real_eip !244
  store i64 %1624, i64* %RDX_val, !mcsema_real_eip !244
  %1625 = load i64* %RBP_val, !mcsema_real_eip !245
  %1626 = add i64 %1625, -20, !mcsema_real_eip !245
  %1627 = inttoptr i64 %1626 to i64*, !mcsema_real_eip !245
  %1628 = bitcast i64* %1627 to i32*
  store i32 %1609, i32* %1628, !mcsema_real_eip !245
  %1629 = load i64* %RBP_val, !mcsema_real_eip !246
  %1630 = add i64 %1629, -20, !mcsema_real_eip !246
  %1631 = inttoptr i64 %1630 to i64*, !mcsema_real_eip !246
  %1632 = bitcast i64* %1631 to i32*
  %1633 = load i32* %1632, !mcsema_real_eip !246
  store i1 false, i1* %AF_val, !mcsema_real_eip !246
  %1634 = trunc i32 %1633 to i8, !mcsema_real_eip !246
  %1635 = tail call i8 @llvm.ctpop.i8(i8 %1634), !mcsema_real_eip !246
  %1636 = and i8 %1635, 1
  %1637 = icmp eq i8 %1636, 0
  store i1 %1637, i1* %PF_val, !mcsema_real_eip !246
  %1638 = icmp eq i32 %1633, 0, !mcsema_real_eip !246
  store i1 %1638, i1* %ZF_val, !mcsema_real_eip !246
  %1639 = icmp slt i32 %1633, 0
  store i1 %1639, i1* %SF_val, !mcsema_real_eip !246
  store i1 false, i1* %CF_val, !mcsema_real_eip !246
  store i1 false, i1* %OF_val, !mcsema_real_eip !246
  br i1 %1638, label %block_0x438, label %block_0x467, !mcsema_real_eip !247

block_0x467:                                      ; preds = %block_0x450, %block_0x438, %block_0x3f5, %block_0x45c, %block_0x3cd
  %1640 = load i64* %RBP_val, !mcsema_real_eip !248
  %1641 = add i64 %1640, -20, !mcsema_real_eip !248
  %1642 = inttoptr i64 %1641 to i64*, !mcsema_real_eip !248
  %1643 = bitcast i64* %1642 to i32*
  %1644 = load i32* %1643, !mcsema_real_eip !248
  %1645 = zext i32 %1644 to i64, !mcsema_real_eip !248
  store i64 %1645, i64* %RAX_val, !mcsema_real_eip !248
  %1646 = load i64* %RBP_val, !mcsema_real_eip !249
  %1647 = add i64 %1646, -4, !mcsema_real_eip !249
  %1648 = inttoptr i64 %1647 to i64*, !mcsema_real_eip !249
  %1649 = bitcast i64* %1648 to i32*
  store i32 %1644, i32* %1649, !mcsema_real_eip !249
  %1650 = load i64* %RBP_val, !mcsema_real_eip !23
  %1651 = add i64 %1650, -4, !mcsema_real_eip !23
  %1652 = inttoptr i64 %1651 to i64*, !mcsema_real_eip !23
  %1653 = bitcast i64* %1652 to i32*
  %1654 = load i32* %1653, !mcsema_real_eip !23
  %1655 = zext i32 %1654 to i64, !mcsema_real_eip !23
  store i64 %1655, i64* %RAX_val, !mcsema_real_eip !23
  %1656 = load i64* %RSP_val, !mcsema_real_eip !24
  %uadd147 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1656, i64 80)
  %1657 = extractvalue { i64, i1 } %uadd147, 0
  %1658 = xor i64 %1657, %1656, !mcsema_real_eip !24
  %1659 = and i64 %1658, 16
  %1660 = icmp eq i64 %1659, 0
  store i1 %1660, i1* %AF_val, !mcsema_real_eip !24
  %1661 = icmp slt i64 %1657, 0
  store i1 %1661, i1* %SF_val, !mcsema_real_eip !24
  %1662 = icmp eq i64 %1657, 0, !mcsema_real_eip !24
  store i1 %1662, i1* %ZF_val, !mcsema_real_eip !24
  %1663 = xor i64 %1656, -9223372036854775808, !mcsema_real_eip !24
  %1664 = and i64 %1658, %1663, !mcsema_real_eip !24
  %1665 = icmp slt i64 %1664, 0
  store i1 %1665, i1* %OF_val, !mcsema_real_eip !24
  %1666 = trunc i64 %1657 to i8, !mcsema_real_eip !24
  %1667 = tail call i8 @llvm.ctpop.i8(i8 %1666), !mcsema_real_eip !24
  %1668 = and i8 %1667, 1
  %1669 = icmp eq i8 %1668, 0
  store i1 %1669, i1* %PF_val, !mcsema_real_eip !24
  %1670 = extractvalue { i64, i1 } %uadd147, 1
  store i1 %1670, i1* %CF_val, !mcsema_real_eip !24
  store i64 %1657, i64* %RSP_val, !mcsema_real_eip !24
  %1671 = inttoptr i64 %1657 to i64*, !mcsema_real_eip !25
  %1672 = load i64* %1671, !mcsema_real_eip !25
  store i64 %1672, i64* %RBP_val, !mcsema_real_eip !25
  %1673 = add i64 %1657, 16, !mcsema_real_eip !26
  store i64 %1673, i64* %RSP_val, !mcsema_real_eip !26
  %1674 = load i64* %RAX_val, !mcsema_real_eip !26
  store i64 %1674, i64* %RAX, !mcsema_real_eip !26
  %1675 = load i64* %RBX_val, !mcsema_real_eip !26
  store i64 %1675, i64* %RBX, !mcsema_real_eip !26
  %1676 = load i64* %RCX_val, !mcsema_real_eip !26
  store i64 %1676, i64* %RCX, !mcsema_real_eip !26
  %1677 = load i64* %RDX_val, !mcsema_real_eip !26
  store i64 %1677, i64* %RDX, !mcsema_real_eip !26
  %1678 = load i64* %RSI_val, !mcsema_real_eip !26
  store i64 %1678, i64* %RSI, !mcsema_real_eip !26
  %1679 = load i64* %RDI_val, !mcsema_real_eip !26
  store i64 %1679, i64* %RDI, !mcsema_real_eip !26
  %1680 = load i64* %RSP_val, !mcsema_real_eip !26
  store i64 %1680, i64* %RSP, !mcsema_real_eip !26
  %1681 = load i64* %RBP_val, !mcsema_real_eip !26
  store i64 %1681, i64* %RBP, !mcsema_real_eip !26
  %1682 = load i64* %R8_val, !mcsema_real_eip !26
  store i64 %1682, i64* %R8, !mcsema_real_eip !26
  %1683 = load i64* %R9_val, !mcsema_real_eip !26
  store i64 %1683, i64* %R9, !mcsema_real_eip !26
  %1684 = load i64* %R10_val, !mcsema_real_eip !26
  store i64 %1684, i64* %R10, !mcsema_real_eip !26
  %1685 = load i64* %R11_val, !mcsema_real_eip !26
  store i64 %1685, i64* %R11, !mcsema_real_eip !26
  %1686 = load i64* %R12_val, !mcsema_real_eip !26
  store i64 %1686, i64* %R12, !mcsema_real_eip !26
  %1687 = load i64* %R13_val, !mcsema_real_eip !26
  store i64 %1687, i64* %R13, !mcsema_real_eip !26
  %1688 = load i64* %R14_val, !mcsema_real_eip !26
  store i64 %1688, i64* %R14, !mcsema_real_eip !26
  %1689 = load i64* %R15_val, !mcsema_real_eip !26
  store i64 %1689, i64* %R15, !mcsema_real_eip !26
  %1690 = load i64* %RIP_val, !mcsema_real_eip !26
  store i64 %1690, i64* %RIP, !mcsema_real_eip !26
  %1691 = load i1* %CF_val, !mcsema_real_eip !26
  store i1 %1691, i1* %CF, align 1, !mcsema_real_eip !26
  %1692 = load i1* %PF_val, !mcsema_real_eip !26
  store i1 %1692, i1* %PF, align 1, !mcsema_real_eip !26
  %1693 = load i1* %AF_val, !mcsema_real_eip !26
  store i1 %1693, i1* %AF, align 1, !mcsema_real_eip !26
  %1694 = load i1* %ZF_val, !mcsema_real_eip !26
  store i1 %1694, i1* %ZF, align 1, !mcsema_real_eip !26
  %1695 = load i1* %SF_val, !mcsema_real_eip !26
  store i1 %1695, i1* %SF, align 1, !mcsema_real_eip !26
  %1696 = load i1* %OF_val, !mcsema_real_eip !26
  store i1 %1696, i1* %OF, align 1, !mcsema_real_eip !26
  %1697 = load i1* %DF_val, !mcsema_real_eip !26
  store i1 %1697, i1* %DF, align 1, !mcsema_real_eip !26
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !26
  %1698 = load i1* %FPU_B_val, !mcsema_real_eip !26
  store i1 %1698, i1* %FPU_B, align 1, !mcsema_real_eip !26
  %1699 = load i1* %FPU_C3_val, !mcsema_real_eip !26
  store i1 %1699, i1* %FPU_C3, align 1, !mcsema_real_eip !26
  %1700 = load i3* %FPU_TOP_val, !mcsema_real_eip !26
  store i3 %1700, i3* %FPU_TOP, align 1, !mcsema_real_eip !26
  %1701 = load i1* %FPU_C2_val, !mcsema_real_eip !26
  store i1 %1701, i1* %FPU_C2, align 1, !mcsema_real_eip !26
  %1702 = load i1* %FPU_C1_val, !mcsema_real_eip !26
  store i1 %1702, i1* %FPU_C1, align 1, !mcsema_real_eip !26
  %1703 = load i1* %FPU_C0_val, !mcsema_real_eip !26
  store i1 %1703, i1* %FPU_C0, align 1, !mcsema_real_eip !26
  %1704 = load i1* %FPU_ES_val, !mcsema_real_eip !26
  store i1 %1704, i1* %FPU_ES, align 1, !mcsema_real_eip !26
  %1705 = load i1* %FPU_SF_val, !mcsema_real_eip !26
  store i1 %1705, i1* %FPU_SF, align 1, !mcsema_real_eip !26
  %1706 = load i1* %FPU_PE_val, !mcsema_real_eip !26
  store i1 %1706, i1* %FPU_PE, align 1, !mcsema_real_eip !26
  %1707 = load i1* %FPU_UE_val, !mcsema_real_eip !26
  store i1 %1707, i1* %FPU_UE, align 1, !mcsema_real_eip !26
  %1708 = load i1* %FPU_OE_val, !mcsema_real_eip !26
  store i1 %1708, i1* %FPU_OE, align 1, !mcsema_real_eip !26
  %1709 = load i1* %FPU_ZE_val, !mcsema_real_eip !26
  store i1 %1709, i1* %FPU_ZE, align 1, !mcsema_real_eip !26
  %1710 = load i1* %FPU_DE_val, !mcsema_real_eip !26
  store i1 %1710, i1* %FPU_DE, align 1, !mcsema_real_eip !26
  %1711 = load i1* %FPU_IE_val, !mcsema_real_eip !26
  store i1 %1711, i1* %FPU_IE, align 1, !mcsema_real_eip !26
  %1712 = load i1* %FPU_X_val, !mcsema_real_eip !26
  store i1 %1712, i1* %FPU_X, align 1, !mcsema_real_eip !26
  %1713 = load i2* %FPU_RC_val, !mcsema_real_eip !26
  store i2 %1713, i2* %FPU_RC, align 1, !mcsema_real_eip !26
  %1714 = load i2* %FPU_PC_val, !mcsema_real_eip !26
  store i2 %1714, i2* %FPU_PC, align 1, !mcsema_real_eip !26
  %1715 = load i1* %FPU_PM_val, !mcsema_real_eip !26
  store i1 %1715, i1* %FPU_PM, align 1, !mcsema_real_eip !26
  %1716 = load i1* %FPU_UM_val, !mcsema_real_eip !26
  store i1 %1716, i1* %FPU_UM, align 1, !mcsema_real_eip !26
  %1717 = load i1* %FPU_OM_val, !mcsema_real_eip !26
  store i1 %1717, i1* %FPU_OM, align 1, !mcsema_real_eip !26
  %1718 = load i1* %FPU_ZM_val, !mcsema_real_eip !26
  store i1 %1718, i1* %FPU_ZM, align 1, !mcsema_real_eip !26
  %1719 = load i1* %FPU_DM_val, !mcsema_real_eip !26
  store i1 %1719, i1* %FPU_DM, align 1, !mcsema_real_eip !26
  %1720 = load i1* %FPU_IM_val, !mcsema_real_eip !26
  store i1 %1720, i1* %FPU_IM, align 1, !mcsema_real_eip !26
  %1721 = load i64* %53, align 4
  store i64 %1721, i64* %52, align 4
  %1722 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !26
  store i16 %1722, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !26
  %1723 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !26
  store i64 %1723, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !26
  %1724 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !26
  store i16 %1724, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !26
  %1725 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !26
  store i64 %1725, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !26
  %1726 = load i128* %XMM0_val, !mcsema_real_eip !26
  store i128 %1726, i128* %XMM0, align 1, !mcsema_real_eip !26
  %1727 = load i128* %XMM1_val, !mcsema_real_eip !26
  store i128 %1727, i128* %XMM1, align 1, !mcsema_real_eip !26
  %1728 = load i128* %XMM2_val, !mcsema_real_eip !26
  store i128 %1728, i128* %XMM2, align 1, !mcsema_real_eip !26
  %1729 = load i128* %XMM3_val, !mcsema_real_eip !26
  store i128 %1729, i128* %XMM3, align 1, !mcsema_real_eip !26
  %1730 = load i128* %XMM4_val, !mcsema_real_eip !26
  store i128 %1730, i128* %XMM4, align 1, !mcsema_real_eip !26
  %1731 = load i128* %XMM5_val, !mcsema_real_eip !26
  store i128 %1731, i128* %XMM5, align 1, !mcsema_real_eip !26
  %1732 = load i128* %XMM6_val, !mcsema_real_eip !26
  store i128 %1732, i128* %XMM6, align 1, !mcsema_real_eip !26
  %1733 = load i128* %XMM7_val, !mcsema_real_eip !26
  store i128 %1733, i128* %XMM7, align 1, !mcsema_real_eip !26
  %1734 = load i128* %XMM8_val, !mcsema_real_eip !26
  store i128 %1734, i128* %XMM8, align 1, !mcsema_real_eip !26
  %1735 = load i128* %XMM9_val, !mcsema_real_eip !26
  store i128 %1735, i128* %XMM9, align 1, !mcsema_real_eip !26
  %1736 = load i128* %XMM10_val, !mcsema_real_eip !26
  store i128 %1736, i128* %XMM10, align 1, !mcsema_real_eip !26
  %1737 = load i128* %XMM11_val, !mcsema_real_eip !26
  store i128 %1737, i128* %XMM11, align 1, !mcsema_real_eip !26
  %1738 = load i128* %XMM12_val, !mcsema_real_eip !26
  store i128 %1738, i128* %XMM12, align 1, !mcsema_real_eip !26
  %1739 = load i128* %XMM13_val, !mcsema_real_eip !26
  store i128 %1739, i128* %XMM13, align 1, !mcsema_real_eip !26
  %1740 = load i128* %XMM14_val, !mcsema_real_eip !26
  store i128 %1740, i128* %XMM14, align 1, !mcsema_real_eip !26
  %1741 = load i128* %XMM15_val, !mcsema_real_eip !26
  store i128 %1741, i128* %XMM15, align 1, !mcsema_real_eip !26
  %1742 = load i64* %STACK_BASE_val, !mcsema_real_eip !26
  store i64 %1742, i64* %STACK_BASE, align 1, !mcsema_real_eip !26
  %1743 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !26
  store i64 %1743, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !26
  ret void, !mcsema_real_eip !26

block_0x438:                                      ; preds = %block_0x3f5
  %1744 = load i64* %RBP_val, !mcsema_real_eip !250
  %1745 = add i64 %1744, -16, !mcsema_real_eip !250
  %1746 = inttoptr i64 %1745 to i64*, !mcsema_real_eip !250
  %1747 = load i64* %1746, !mcsema_real_eip !250
  store i64 %1747, i64* %RAX_val, !mcsema_real_eip !250
  %1748 = add i64 %1747, 31, !mcsema_real_eip !251
  %1749 = inttoptr i64 %1748 to i64*, !mcsema_real_eip !251
  %1750 = bitcast i64* %1749 to i8*
  %1751 = load i8* %1750, !mcsema_real_eip !251
  %1752 = zext i8 %1751 to i64
  store i64 %1752, i64* %RDI_val, !mcsema_real_eip !251
  %1753 = tail call x86_64_sysvcc i64 @to_byte(i64 %1752), !mcsema_real_eip !252
  store i64 %1753, i64* %RAX_val, !mcsema_real_eip !252
  %1754 = trunc i64 %1753 to i32, !mcsema_real_eip !253
  %1755 = add i32 %1754, -4
  %1756 = xor i32 %1755, %1754, !mcsema_real_eip !253
  %1757 = and i32 %1756, 16, !mcsema_real_eip !253
  %1758 = icmp ne i32 %1757, 0, !mcsema_real_eip !253
  store i1 %1758, i1* %AF_val, !mcsema_real_eip !253
  %1759 = trunc i32 %1755 to i8, !mcsema_real_eip !253
  %1760 = tail call i8 @llvm.ctpop.i8(i8 %1759), !mcsema_real_eip !253
  %1761 = and i8 %1760, 1
  %1762 = icmp eq i8 %1761, 0
  store i1 %1762, i1* %PF_val, !mcsema_real_eip !253
  %1763 = icmp eq i32 %1755, 0, !mcsema_real_eip !253
  store i1 %1763, i1* %ZF_val, !mcsema_real_eip !253
  %1764 = icmp slt i32 %1755, 0
  store i1 %1764, i1* %SF_val, !mcsema_real_eip !253
  %1765 = icmp ult i32 %1754, 4, !mcsema_real_eip !253
  store i1 %1765, i1* %CF_val, !mcsema_real_eip !253
  %1766 = and i32 %1756, %1754, !mcsema_real_eip !253
  %1767 = icmp slt i32 %1766, 0
  store i1 %1767, i1* %OF_val, !mcsema_real_eip !253
  %1768 = load i1* %ZF_val, !mcsema_real_eip !254
  br i1 %1768, label %block_0x467, label %block_0x450, !mcsema_real_eip !254

block_0x450:                                      ; preds = %block_0x438
  %1769 = load i64* %RBP_val, !mcsema_real_eip !255
  %1770 = add i64 %1769, -20, !mcsema_real_eip !255
  %1771 = inttoptr i64 %1770 to i64*, !mcsema_real_eip !255
  %1772 = bitcast i64* %1771 to i32*
  store i32 -32, i32* %1772, !mcsema_real_eip !255
  br label %block_0x467, !mcsema_real_eip !256
}

declare x86_64_sysvcc i64 @strlen(i64 inreg)

declare x86_64_sysvcc i64 @to_byte(i64 inreg)

declare x86_64_sysvcc i64 @read_bytes(i64 inreg, i64 inreg, i64 inreg)

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = metadata !{i64 4, [16 x i8] c"\09subq\09$80, %rsp\00"}
!5 = metadata !{i64 8, [22 x i8] c"\09movq\09%rdi, -16(%rbp)\00"}
!6 = metadata !{i64 12, [22 x i8] c"\09movq\09-16(%rbp), %rdi\00"}
!7 = metadata !{i64 16, [9 x i8] c"\09callq\090\00"}
!8 = metadata !{i64 21, [17 x i8] c"\09movl\09%eax, %ecx\00"}
!9 = metadata !{i64 23, [22 x i8] c"\09movl\09%ecx, -32(%rbp)\00"}
!10 = metadata !{i64 26, [21 x i8] c"\09cmpl\09$37, -32(%rbp)\00"}
!11 = metadata !{i64 33, [7 x i8] c"\09je\0911\00"}
!12 = metadata !{i64 50, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!13 = metadata !{i64 54, [15 x i8] c"\09addq\09$4, %rax\00"}
!14 = metadata !{i64 60, [22 x i8] c"\09movq\09%rax, -16(%rbp)\00"}
!15 = metadata !{i64 64, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!16 = metadata !{i64 68, [21 x i8] c"\09movsbl\09(%rax), %ecx\00"}
!17 = metadata !{i64 71, [17 x i8] c"\09cmpl\09$100, %ecx\00"}
!18 = metadata !{i64 77, [7 x i8] c"\09je\0912\00"}
!19 = metadata !{i64 95, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!20 = metadata !{i64 39, [22 x i8] c"\09movl\09-32(%rbp), %eax\00"}
!21 = metadata !{i64 42, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!22 = metadata !{i64 45, [10 x i8] c"\09jmp\091083\00"}
!23 = metadata !{i64 1133, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!24 = metadata !{i64 1136, [16 x i8] c"\09addq\09$80, %rsp\00"}
!25 = metadata !{i64 1140, [11 x i8] c"\09popq\09%rbp\00"}
!26 = metadata !{i64 1141, [6 x i8] c"\09retq\00"}
!27 = metadata !{i64 99, [22 x i8] c"\09movzbl\091(%rax), %edi\00"}
!28 = metadata !{i64 103, [9 x i8] c"\09callq\090\00"}
!29 = metadata !{i64 108, [15 x i8] c"\09cmpl\09$9, %eax\00"}
!30 = metadata !{i64 113, [7 x i8] c"\09je\0912\00"}
!31 = metadata !{i64 131, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!32 = metadata !{i64 83, [28 x i8] c"\09movl\09$4294967294, -4(%rbp)\00"}
!33 = metadata !{i64 90, [10 x i8] c"\09jmp\091038\00"}
!34 = metadata !{i64 135, [22 x i8] c"\09movzbl\092(%rax), %edi\00"}
!35 = metadata !{i64 139, [9 x i8] c"\09callq\090\00"}
!36 = metadata !{i64 144, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!37 = metadata !{i64 147, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!38 = metadata !{i64 150, [15 x i8] c"\09shll\09$1, %eax\00"}
!39 = metadata !{i64 153, [16 x i8] c"\09cmpl\09$26, %eax\00"}
!40 = metadata !{i64 158, [7 x i8] c"\09je\0912\00"}
!41 = metadata !{i64 176, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!42 = metadata !{i64 119, [28 x i8] c"\09movl\09$4294967293, -4(%rbp)\00"}
!43 = metadata !{i64 126, [10 x i8] c"\09jmp\091002\00"}
!44 = metadata !{i64 180, [22 x i8] c"\09movzbl\093(%rax), %edi\00"}
!45 = metadata !{i64 184, [9 x i8] c"\09callq\090\00"}
!46 = metadata !{i64 189, [15 x i8] c"\09movl\09$2, %edi\00"}
!47 = metadata !{i64 194, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
!48 = metadata !{i64 197, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!49 = metadata !{i64 205, [6 x i8] c"\09cltd\00"}
!50 = metadata !{i64 206, [12 x i8] c"\09idivl\09%edi\00"}
!51 = metadata !{i64 208, [15 x i8] c"\09cmpl\09$7, %eax\00"}
!52 = metadata !{i64 213, [7 x i8] c"\09je\0912\00"}
!53 = metadata !{i64 231, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!54 = metadata !{i64 164, [28 x i8] c"\09movl\09$4294967292, -4(%rbp)\00"}
!55 = metadata !{i64 171, [9 x i8] c"\09jmp\09957\00"}
!56 = metadata !{i64 235, [22 x i8] c"\09movsbl\094(%rax), %ecx\00"}
!57 = metadata !{i64 239, [16 x i8] c"\09andl\09$15, %ecx\00"}
!58 = metadata !{i64 245, [15 x i8] c"\09cmpl\09$1, %ecx\00"}
!59 = metadata !{i64 251, [8 x i8] c"\09jne\0938\00"}
!60 = metadata !{i64 219, [28 x i8] c"\09movl\09$4294967291, -4(%rbp)\00"}
!61 = metadata !{i64 226, [9 x i8] c"\09jmp\09902\00"}
!62 = metadata !{i64 295, [28 x i8] c"\09movl\09$4294967290, -4(%rbp)\00"}
!63 = metadata !{i64 302, [9 x i8] c"\09jmp\09826\00"}
!64 = metadata !{i64 257, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!65 = metadata !{i64 261, [22 x i8] c"\09movsbl\094(%rax), %ecx\00"}
!66 = metadata !{i64 265, [17 x i8] c"\09andl\09$240, %ecx\00"}
!67 = metadata !{i64 271, [16 x i8] c"\09cmpl\09$48, %ecx\00"}
!68 = metadata !{i64 277, [8 x i8] c"\09jne\0912\00"}
!69 = metadata !{i64 283, [29 x i8] c"\09movl\09$4294967292, -20(%rbp)\00"}
!70 = metadata !{i64 307, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!71 = metadata !{i64 311, [22 x i8] c"\09movsbl\095(%rax), %ecx\00"}
!72 = metadata !{i64 315, [16 x i8] c"\09andl\09$15, %ecx\00"}
!73 = metadata !{i64 321, [15 x i8] c"\09movb\09%cl, %dl\00"}
!74 = metadata !{i64 323, [21 x i8] c"\09movb\09%dl, -33(%rbp)\00"}
!75 = metadata !{i64 326, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!76 = metadata !{i64 330, [22 x i8] c"\09movsbl\095(%rax), %ecx\00"}
!77 = metadata !{i64 334, [17 x i8] c"\09andl\09$240, %ecx\00"}
!78 = metadata !{i64 340, [15 x i8] c"\09movb\09%cl, %dl\00"}
!79 = metadata !{i64 342, [21 x i8] c"\09movb\09%dl, -34(%rbp)\00"}
!80 = metadata !{i64 345, [24 x i8] c"\09movzbl\09-33(%rbp), %ecx\00"}
!81 = metadata !{i64 349, [15 x i8] c"\09cmpl\09$3, %ecx\00"}
!82 = metadata !{i64 355, [8 x i8] c"\09jne\0931\00"}
!83 = metadata !{i64 392, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!84 = metadata !{i64 395, [15 x i8] c"\09addl\09$5, %eax\00"}
!85 = metadata !{i64 400, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!86 = metadata !{i64 403, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!87 = metadata !{i64 407, [22 x i8] c"\09movzbl\096(%rax), %edi\00"}
!88 = metadata !{i64 411, [9 x i8] c"\09callq\090\00"}
!89 = metadata !{i64 416, [15 x i8] c"\09movb\09%al, %cl\00"}
!90 = metadata !{i64 418, [21 x i8] c"\09movb\09%cl, -35(%rbp)\00"}
!91 = metadata !{i64 421, [22 x i8] c"\09movq\09-16(%rbp), %rdx\00"}
!92 = metadata !{i64 425, [22 x i8] c"\09movzbl\097(%rdx), %edi\00"}
!93 = metadata !{i64 429, [9 x i8] c"\09callq\090\00"}
!94 = metadata !{i64 434, [24 x i8] c"\09movzbl\09-35(%rbp), %edi\00"}
!95 = metadata !{i64 438, [16 x i8] c"\09orl\09%eax, %edi\00"}
!96 = metadata !{i64 440, [16 x i8] c"\09movb\09%dil, %cl\00"}
!97 = metadata !{i64 443, [21 x i8] c"\09movb\09%cl, -35(%rbp)\00"}
!98 = metadata !{i64 446, [24 x i8] c"\09movzbl\09-35(%rbp), %eax\00"}
!99 = metadata !{i64 450, [24 x i8] c"\09xorl\09$4294967295, %eax\00"}
!100 = metadata !{i64 455, [16 x i8] c"\09cmpl\09$70, %eax\00"}
!101 = metadata !{i64 361, [24 x i8] c"\09movzbl\09-34(%rbp), %eax\00"}
!102 = metadata !{i64 365, [16 x i8] c"\09cmpl\09$96, %eax\00"}
!103 = metadata !{i64 370, [8 x i8] c"\09jne\0916\00"}
!104 = metadata !{i64 376, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!105 = metadata !{i64 379, [15 x i8] c"\09addl\09$4, %eax\00"}
!106 = metadata !{i64 384, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!107 = metadata !{i64 482, [22 x i8] c"\09movl\09-20(%rbp), %ecx\00"}
!108 = metadata !{i64 485, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!109 = metadata !{i64 488, [16 x i8] c"\09shll\09%cl, %eax\00"}
!110 = metadata !{i64 490, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!111 = metadata !{i64 493, [20 x i8] c"\09cmpl\09$0, -20(%rbp)\00"}
!112 = metadata !{i64 500, [7 x i8] c"\09je\0912\00"}
!113 = metadata !{i64 518, [15 x i8] c"\09movl\09$0, %edi\00"}
!114 = metadata !{i64 523, [15 x i8] c"\09movl\09$4, %edx\00"}
!115 = metadata !{i64 528, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!116 = metadata !{i64 532, [15 x i8] c"\09addq\09$8, %rax\00"}
!117 = metadata !{i64 538, [17 x i8] c"\09movq\09%rax, %rsi\00"}
!118 = metadata !{i64 541, [9 x i8] c"\09callq\090\00"}
!119 = metadata !{i64 546, [15 x i8] c"\09movw\09%ax, %cx\00"}
!120 = metadata !{i64 549, [21 x i8] c"\09movw\09%cx, -38(%rbp)\00"}
!121 = metadata !{i64 553, [24 x i8] c"\09movzwl\09-38(%rbp), %eax\00"}
!122 = metadata !{i64 557, [18 x i8] c"\09orl\09$21845, %eax\00"}
!123 = metadata !{i64 562, [19 x i8] c"\09cmpl\09$56663, %eax\00"}
!124 = metadata !{i64 567, [8 x i8] c"\09jne\0932\00"}
!125 = metadata !{i64 506, [28 x i8] c"\09movl\09$4294967289, -4(%rbp)\00"}
!126 = metadata !{i64 513, [9 x i8] c"\09jmp\09615\00"}
!127 = metadata !{i64 605, [24 x i8] c"\09movl\09$48059, -20(%rbp)\00"}
!128 = metadata !{i64 612, [15 x i8] c"\09movl\09$0, %edi\00"}
!129 = metadata !{i64 617, [15 x i8] c"\09movl\09$8, %edx\00"}
!130 = metadata !{i64 622, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!131 = metadata !{i64 626, [16 x i8] c"\09addq\09$12, %rax\00"}
!132 = metadata !{i64 632, [17 x i8] c"\09movq\09%rax, %rsi\00"}
!133 = metadata !{i64 635, [9 x i8] c"\09callq\090\00"}
!134 = metadata !{i64 640, [22 x i8] c"\09movl\09%eax, -44(%rbp)\00"}
!135 = metadata !{i64 643, [22 x i8] c"\09movl\09-44(%rbp), %eax\00"}
!136 = metadata !{i64 646, [24 x i8] c"\09xorl\09$2760406685, %eax\00"}
!137 = metadata !{i64 651, [22 x i8] c"\09movl\09%eax, -48(%rbp)\00"}
!138 = metadata !{i64 654, [22 x i8] c"\09movl\09-48(%rbp), %eax\00"}
!139 = metadata !{i64 657, [16 x i8] c"\09shrl\09$16, %eax\00"}
!140 = metadata !{i64 660, [22 x i8] c"\09movl\09%eax, -52(%rbp)\00"}
!141 = metadata !{i64 663, [22 x i8] c"\09movl\09-48(%rbp), %eax\00"}
!142 = metadata !{i64 666, [19 x i8] c"\09andl\09$65535, %eax\00"}
!143 = metadata !{i64 671, [22 x i8] c"\09movl\09%eax, -56(%rbp)\00"}
!144 = metadata !{i64 674, [24 x i8] c"\09cmpl\09$20299, -52(%rbp)\00"}
!145 = metadata !{i64 681, [8 x i8] c"\09jne\0924\00"}
!146 = metadata !{i64 573, [24 x i8] c"\09movzwl\09-38(%rbp), %eax\00"}
!147 = metadata !{i64 577, [18 x i8] c"\09orl\09$43690, %eax\00"}
!148 = metadata !{i64 582, [19 x i8] c"\09cmpl\09$65211, %eax\00"}
!149 = metadata !{i64 587, [8 x i8] c"\09jne\0912\00"}
!150 = metadata !{i64 593, [24 x i8] c"\09movl\09$43690, -20(%rbp)\00"}
!151 = metadata !{i64 711, [24 x i8] c"\09movl\09$48351, -20(%rbp)\00"}
!152 = metadata !{i64 718, [15 x i8] c"\09movl\09$8, %edx\00"}
!153 = metadata !{i64 723, [22 x i8] c"\09movl\09-20(%rbp), %edi\00"}
!154 = metadata !{i64 726, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!155 = metadata !{i64 730, [16 x i8] c"\09addq\09$20, %rax\00"}
!156 = metadata !{i64 736, [17 x i8] c"\09movq\09%rax, %rsi\00"}
!157 = metadata !{i64 739, [9 x i8] c"\09callq\090\00"}
!158 = metadata !{i64 744, [22 x i8] c"\09movl\09%eax, -60(%rbp)\00"}
!159 = metadata !{i64 747, [22 x i8] c"\09movl\09-60(%rbp), %eax\00"}
!160 = metadata !{i64 750, [15 x i8] c"\09subl\09$3, %eax\00"}
!161 = metadata !{i64 755, [22 x i8] c"\09movl\09%eax, -60(%rbp)\00"}
!162 = metadata !{i64 758, [22 x i8] c"\09movl\09-60(%rbp), %eax\00"}
!163 = metadata !{i64 761, [15 x i8] c"\09andl\09$7, %eax\00"}
!164 = metadata !{i64 766, [15 x i8] c"\09cmpl\09$0, %eax\00"}
!165 = metadata !{i64 771, [7 x i8] c"\09je\0912\00"}
!166 = metadata !{i64 687, [22 x i8] c"\09movl\09-56(%rbp), %eax\00"}
!167 = metadata !{i64 690, [22 x i8] c"\09cmpl\09-20(%rbp), %eax\00"}
!168 = metadata !{i64 693, [8 x i8] c"\09jne\0912\00"}
!169 = metadata !{i64 699, [20 x i8] c"\09movl\09$0, -20(%rbp)\00"}
!170 = metadata !{i64 789, [22 x i8] c"\09movl\09-60(%rbp), %eax\00"}
!171 = metadata !{i64 792, [24 x i8] c"\09subl\09$2147483648, %eax\00"}
!172 = metadata !{i64 797, [22 x i8] c"\09movl\09%eax, -60(%rbp)\00"}
!173 = metadata !{i64 800, [28 x i8] c"\09cmpl\09$268435455, -60(%rbp)\00"}
!174 = metadata !{i64 807, [8 x i8] c"\09jbe\0912\00"}
!175 = metadata !{i64 777, [28 x i8] c"\09movl\09$4294967275, -4(%rbp)\00"}
!176 = metadata !{i64 784, [9 x i8] c"\09jmp\09344\00"}
!177 = metadata !{i64 825, [19 x i8] c"\09movl\09$10000, %eax\00"}
!178 = metadata !{i64 830, [22 x i8] c"\09movl\09-60(%rbp), %ecx\00"}
!179 = metadata !{i64 833, [22 x i8] c"\09xorl\09$13631488, %ecx\00"}
!180 = metadata !{i64 839, [22 x i8] c"\09movl\09%ecx, -60(%rbp)\00"}
!181 = metadata !{i64 842, [22 x i8] c"\09movl\09-60(%rbp), %ecx\00"}
!182 = metadata !{i64 845, [15 x i8] c"\09shrl\09$4, %ecx\00"}
!183 = metadata !{i64 848, [22 x i8] c"\09movl\09%ecx, -60(%rbp)\00"}
!184 = metadata !{i64 851, [22 x i8] c"\09movl\09-60(%rbp), %ecx\00"}
!185 = metadata !{i64 854, [17 x i8] c"\09subl\09$226, %ecx\00"}
!186 = metadata !{i64 860, [22 x i8] c"\09movl\09%ecx, -60(%rbp)\00"}
!187 = metadata !{i64 863, [22 x i8] c"\09movl\09-60(%rbp), %ecx\00"}
!188 = metadata !{i64 866, [22 x i8] c"\09movl\09%eax, -68(%rbp)\00"}
!189 = metadata !{i64 869, [17 x i8] c"\09movl\09%ecx, %eax\00"}
!190 = metadata !{i64 871, [17 x i8] c"\09xorl\09%edx, %edx\00"}
!191 = metadata !{i64 873, [22 x i8] c"\09movl\09-68(%rbp), %ecx\00"}
!192 = metadata !{i64 876, [11 x i8] c"\09divl\09%ecx\00"}
!193 = metadata !{i64 878, [22 x i8] c"\09movl\09%eax, -60(%rbp)\00"}
!194 = metadata !{i64 881, [20 x i8] c"\09cmpl\09$3, -60(%rbp)\00"}
!195 = metadata !{i64 888, [7 x i8] c"\09je\0911\00"}
!196 = metadata !{i64 813, [28 x i8] c"\09movl\09$4294967274, -4(%rbp)\00"}
!197 = metadata !{i64 820, [9 x i8] c"\09jmp\09308\00"}
!198 = metadata !{i64 905, [15 x i8] c"\09movl\09$4, %edx\00"}
!199 = metadata !{i64 910, [22 x i8] c"\09movl\09-20(%rbp), %edi\00"}
!200 = metadata !{i64 913, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!201 = metadata !{i64 917, [16 x i8] c"\09addq\09$28, %rax\00"}
!202 = metadata !{i64 923, [17 x i8] c"\09movq\09%rax, %rsi\00"}
!203 = metadata !{i64 926, [9 x i8] c"\09callq\090\00"}
!204 = metadata !{i64 931, [22 x i8] c"\09movl\09%eax, -64(%rbp)\00"}
!205 = metadata !{i64 934, [22 x i8] c"\09movq\09-16(%rbp), %rsi\00"}
!206 = metadata !{i64 938, [23 x i8] c"\09movsbl\0928(%rsi), %eax\00"}
!207 = metadata !{i64 942, [17 x i8] c"\09cmpl\09$100, %eax\00"}
!208 = metadata !{i64 947, [8 x i8] c"\09jne\0936\00"}
!209 = metadata !{i64 894, [22 x i8] c"\09movl\09-60(%rbp), %eax\00"}
!210 = metadata !{i64 897, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!211 = metadata !{i64 900, [9 x i8] c"\09jmp\09228\00"}
!212 = metadata !{i64 989, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!213 = metadata !{i64 993, [23 x i8] c"\09movsbl\0928(%rax), %ecx\00"}
!214 = metadata !{i64 997, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!215 = metadata !{i64 1001, [23 x i8] c"\09movsbl\0929(%rax), %edx\00"}
!216 = metadata !{i64 1005, [17 x i8] c"\09cmpl\09%edx, %ecx\00"}
!217 = metadata !{i64 1007, [9 x i8] c"\09jne\09103\00"}
!218 = metadata !{i64 953, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!219 = metadata !{i64 957, [23 x i8] c"\09movsbl\0929(%rax), %ecx\00"}
!220 = metadata !{i64 961, [17 x i8] c"\09cmpl\09$100, %ecx\00"}
!221 = metadata !{i64 967, [8 x i8] c"\09jne\0916\00"}
!222 = metadata !{i64 973, [22 x i8] c"\09movl\09-64(%rbp), %eax\00"}
!223 = metadata !{i64 976, [22 x i8] c"\09movl\09-20(%rbp), %ecx\00"}
!224 = metadata !{i64 979, [17 x i8] c"\09xorl\09%eax, %ecx\00"}
!225 = metadata !{i64 981, [22 x i8] c"\09movl\09%ecx, -20(%rbp)\00"}
!226 = metadata !{i64 984, [9 x i8] c"\09jmp\09138\00"}
!227 = metadata !{i64 1116, [22 x i8] c"\09movl\09-64(%rbp), %eax\00"}
!228 = metadata !{i64 1119, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!229 = metadata !{i64 1122, [7 x i8] c"\09jmp\090\00"}
!230 = metadata !{i64 1013, [16 x i8] c"\09movl\09$15, %eax\00"}
!231 = metadata !{i64 1018, [22 x i8] c"\09movq\09-16(%rbp), %rcx\00"}
!232 = metadata !{i64 1022, [23 x i8] c"\09movsbl\0931(%rcx), %edx\00"}
!233 = metadata !{i64 1026, [22 x i8] c"\09movq\09-16(%rbp), %rcx\00"}
!234 = metadata !{i64 1030, [23 x i8] c"\09movsbl\0930(%rcx), %esi\00"}
!235 = metadata !{i64 1034, [17 x i8] c"\09subl\09%esi, %edx\00"}
!236 = metadata !{i64 1036, [17 x i8] c"\09subl\09%edx, %eax\00"}
!237 = metadata !{i64 1038, [22 x i8] c"\09movl\09-20(%rbp), %edx\00"}
!238 = metadata !{i64 1041, [17 x i8] c"\09addl\09%eax, %edx\00"}
!239 = metadata !{i64 1043, [22 x i8] c"\09movl\09%edx, -20(%rbp)\00"}
!240 = metadata !{i64 1046, [22 x i8] c"\09movq\09-16(%rbp), %rcx\00"}
!241 = metadata !{i64 1050, [23 x i8] c"\09movzbl\0928(%rcx), %edi\00"}
!242 = metadata !{i64 1054, [9 x i8] c"\09callq\090\00"}
!243 = metadata !{i64 1059, [22 x i8] c"\09movl\09-20(%rbp), %edx\00"}
!244 = metadata !{i64 1062, [17 x i8] c"\09subl\09%eax, %edx\00"}
!245 = metadata !{i64 1064, [22 x i8] c"\09movl\09%edx, -20(%rbp)\00"}
!246 = metadata !{i64 1067, [20 x i8] c"\09cmpl\09$0, -20(%rbp)\00"}
!247 = metadata !{i64 1074, [8 x i8] c"\09jne\0931\00"}
!248 = metadata !{i64 1127, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!249 = metadata !{i64 1130, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!250 = metadata !{i64 1080, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!251 = metadata !{i64 1084, [23 x i8] c"\09movzbl\0931(%rax), %edi\00"}
!252 = metadata !{i64 1088, [9 x i8] c"\09callq\090\00"}
!253 = metadata !{i64 1093, [15 x i8] c"\09cmpl\09$4, %eax\00"}
!254 = metadata !{i64 1098, [6 x i8] c"\09je\097\00"}
!255 = metadata !{i64 1104, [29 x i8] c"\09movl\09$4294967264, -20(%rbp)\00"}
!256 = metadata !{i64 1111, [7 x i8] c"\09jmp\096\00"}
