; ModuleID = 'test_24.bc'
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
  %81 = load i64* %RBX_val, !mcsema_real_eip !4
  %82 = add i64 %78, -16
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !4
  store i64 %81, i64* %83, !mcsema_real_eip !4
  %84 = add i64 %78, -88
  %85 = xor i64 %84, %82, !mcsema_real_eip !5
  %86 = and i64 %85, 16, !mcsema_real_eip !5
  %87 = icmp ne i64 %86, 0, !mcsema_real_eip !5
  store i1 %87, i1* %AF_val, !mcsema_real_eip !5
  %88 = trunc i64 %84 to i8, !mcsema_real_eip !5
  %89 = tail call i8 @llvm.ctpop.i8(i8 %88), !mcsema_real_eip !5
  %90 = and i8 %89, 1
  %91 = icmp eq i8 %90, 0
  store i1 %91, i1* %PF_val, !mcsema_real_eip !5
  %92 = icmp eq i64 %84, 0, !mcsema_real_eip !5
  store i1 %92, i1* %ZF_val, !mcsema_real_eip !5
  %93 = icmp slt i64 %84, 0
  store i1 %93, i1* %SF_val, !mcsema_real_eip !5
  %94 = icmp ult i64 %82, 72, !mcsema_real_eip !5
  store i1 %94, i1* %CF_val, !mcsema_real_eip !5
  %95 = and i64 %85, %82, !mcsema_real_eip !5
  %96 = icmp slt i64 %95, 0
  store i1 %96, i1* %OF_val, !mcsema_real_eip !5
  store i64 %84, i64* %RSP_val, !mcsema_real_eip !5
  %97 = load i64* %RBP_val, !mcsema_real_eip !6
  %98 = add i64 %97, -72, !mcsema_real_eip !6
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !6
  %100 = load i64* %RDI_val, !mcsema_real_eip !6
  store i64 %100, i64* %99, !mcsema_real_eip !6
  %101 = load i64* %RBP_val, !mcsema_real_eip !7
  %102 = add i64 %101, -72, !mcsema_real_eip !7
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !7
  %104 = load i64* %103, !mcsema_real_eip !7
  store i64 %104, i64* %RDI_val, !mcsema_real_eip !8
  %105 = tail call x86_64_sysvcc i64 @strlen(i64 %104), !mcsema_real_eip !9
  store i64 %105, i64* %RAX_val, !mcsema_real_eip !9
  %106 = load i64* %RBP_val, !mcsema_real_eip !10
  %107 = add i64 %106, -24, !mcsema_real_eip !10
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !10
  %109 = trunc i64 %105 to i32, !mcsema_real_eip !10
  %110 = bitcast i64* %108 to i32*
  store i32 %109, i32* %110, !mcsema_real_eip !10
  %111 = load i64* %RBP_val, !mcsema_real_eip !11
  %112 = add i64 %111, -24, !mcsema_real_eip !11
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !11
  %114 = bitcast i64* %113 to i32*
  %115 = load i32* %114, !mcsema_real_eip !11
  %116 = add i32 %115, -37
  %117 = xor i32 %116, %115, !mcsema_real_eip !11
  %118 = and i32 %117, 16, !mcsema_real_eip !11
  %119 = icmp ne i32 %118, 0, !mcsema_real_eip !11
  store i1 %119, i1* %AF_val, !mcsema_real_eip !11
  %120 = trunc i32 %116 to i8, !mcsema_real_eip !11
  %121 = tail call i8 @llvm.ctpop.i8(i8 %120), !mcsema_real_eip !11
  %122 = and i8 %121, 1
  %123 = icmp eq i8 %122, 0
  store i1 %123, i1* %PF_val, !mcsema_real_eip !11
  %124 = icmp eq i32 %116, 0, !mcsema_real_eip !11
  store i1 %124, i1* %ZF_val, !mcsema_real_eip !11
  %125 = icmp slt i32 %116, 0
  store i1 %125, i1* %SF_val, !mcsema_real_eip !11
  %126 = icmp ult i32 %115, 37, !mcsema_real_eip !11
  store i1 %126, i1* %CF_val, !mcsema_real_eip !11
  %127 = and i32 %117, %115, !mcsema_real_eip !11
  %128 = icmp slt i32 %127, 0
  store i1 %128, i1* %OF_val, !mcsema_real_eip !11
  %129 = load i1* %ZF_val, !mcsema_real_eip !12
  %130 = load i64* %RBP_val, !mcsema_real_eip !13
  br i1 %129, label %block_0x2a, label %block_0x22, !mcsema_real_eip !12

block_0x2a:                                       ; preds = %entry
  %131 = add i64 %130, -72, !mcsema_real_eip !13
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !13
  %133 = load i64* %132, !mcsema_real_eip !13
  store i64 %133, i64* %RAX_val, !mcsema_real_eip !13
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !14
  %135 = bitcast i64* %134 to i8*
  %136 = load i8* %135, !mcsema_real_eip !14
  %137 = zext i8 %136 to i64
  store i64 %137, i64* %RAX_val, !mcsema_real_eip !14
  %138 = add i8 %136, -100
  %139 = xor i8 %138, %136, !mcsema_real_eip !15
  %140 = and i8 %139, 16, !mcsema_real_eip !15
  %141 = icmp ne i8 %140, 0, !mcsema_real_eip !15
  store i1 %141, i1* %AF_val, !mcsema_real_eip !15
  %142 = tail call i8 @llvm.ctpop.i8(i8 %138), !mcsema_real_eip !15
  %143 = and i8 %142, 1
  %144 = icmp eq i8 %143, 0
  store i1 %144, i1* %PF_val, !mcsema_real_eip !15
  %145 = icmp eq i8 %138, 0, !mcsema_real_eip !15
  store i1 %145, i1* %ZF_val, !mcsema_real_eip !15
  %146 = icmp slt i8 %138, 0
  store i1 %146, i1* %SF_val, !mcsema_real_eip !15
  %147 = icmp ult i8 %136, 100, !mcsema_real_eip !15
  store i1 %147, i1* %CF_val, !mcsema_real_eip !15
  %148 = and i8 %139, %136, !mcsema_real_eip !15
  %149 = icmp slt i8 %148, 0
  store i1 %149, i1* %OF_val, !mcsema_real_eip !15
  %150 = load i1* %ZF_val, !mcsema_real_eip !16
  br i1 %150, label %block_0x44, label %block_0x3a, !mcsema_real_eip !16

block_0x22:                                       ; preds = %entry
  %151 = add i64 %130, -24, !mcsema_real_eip !17
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !17
  %153 = bitcast i64* %152 to i32*
  %154 = load i32* %153, !mcsema_real_eip !17
  %155 = zext i32 %154 to i64, !mcsema_real_eip !17
  store i64 %155, i64* %RAX_val, !mcsema_real_eip !17
  br label %block_0x391, !mcsema_real_eip !18

block_0x391:                                      ; preds = %block_0x2af, %block_0x27b, %block_0x261, %block_0x187, %block_0x120, %block_0xb7, %block_0x8a, %block_0x5e, %block_0x3a, %block_0x22
  %156 = load i64* %RSP_val, !mcsema_real_eip !19
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %156, i64 72)
  %157 = extractvalue { i64, i1 } %uadd, 0
  %158 = xor i64 %157, %156, !mcsema_real_eip !19
  %159 = and i64 %158, 16, !mcsema_real_eip !19
  %160 = icmp ne i64 %159, 0, !mcsema_real_eip !19
  store i1 %160, i1* %AF_val, !mcsema_real_eip !19
  %161 = icmp slt i64 %157, 0
  store i1 %161, i1* %SF_val, !mcsema_real_eip !19
  %162 = icmp eq i64 %157, 0, !mcsema_real_eip !19
  store i1 %162, i1* %ZF_val, !mcsema_real_eip !19
  %163 = xor i64 %156, -9223372036854775808, !mcsema_real_eip !19
  %164 = and i64 %158, %163, !mcsema_real_eip !19
  %165 = icmp slt i64 %164, 0
  store i1 %165, i1* %OF_val, !mcsema_real_eip !19
  %166 = trunc i64 %157 to i8, !mcsema_real_eip !19
  %167 = tail call i8 @llvm.ctpop.i8(i8 %166), !mcsema_real_eip !19
  %168 = and i8 %167, 1
  %169 = icmp eq i8 %168, 0
  store i1 %169, i1* %PF_val, !mcsema_real_eip !19
  %170 = extractvalue { i64, i1 } %uadd, 1
  store i1 %170, i1* %CF_val, !mcsema_real_eip !19
  store i64 %157, i64* %RSP_val, !mcsema_real_eip !19
  %171 = inttoptr i64 %157 to i64*, !mcsema_real_eip !20
  %172 = load i64* %171, !mcsema_real_eip !20
  store i64 %172, i64* %RBX_val, !mcsema_real_eip !20
  %173 = add i64 %157, 8, !mcsema_real_eip !20
  store i64 %173, i64* %RSP_val, !mcsema_real_eip !20
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !21
  %175 = load i64* %174, !mcsema_real_eip !21
  store i64 %175, i64* %RBP_val, !mcsema_real_eip !21
  %176 = add i64 %157, 24, !mcsema_real_eip !22
  store i64 %176, i64* %RSP_val, !mcsema_real_eip !22
  %177 = load i64* %RAX_val, !mcsema_real_eip !22
  store i64 %177, i64* %RAX, !mcsema_real_eip !22
  %178 = load i64* %RBX_val, !mcsema_real_eip !22
  store i64 %178, i64* %RBX, !mcsema_real_eip !22
  %179 = load i64* %RCX_val, !mcsema_real_eip !22
  store i64 %179, i64* %RCX, !mcsema_real_eip !22
  %180 = load i64* %RDX_val, !mcsema_real_eip !22
  store i64 %180, i64* %RDX, !mcsema_real_eip !22
  %181 = load i64* %RSI_val, !mcsema_real_eip !22
  store i64 %181, i64* %RSI, !mcsema_real_eip !22
  %182 = load i64* %RDI_val, !mcsema_real_eip !22
  store i64 %182, i64* %RDI, !mcsema_real_eip !22
  %183 = load i64* %RSP_val, !mcsema_real_eip !22
  store i64 %183, i64* %RSP, !mcsema_real_eip !22
  %184 = load i64* %RBP_val, !mcsema_real_eip !22
  store i64 %184, i64* %RBP, !mcsema_real_eip !22
  %185 = load i64* %R8_val, !mcsema_real_eip !22
  store i64 %185, i64* %R8, !mcsema_real_eip !22
  %186 = load i64* %R9_val, !mcsema_real_eip !22
  store i64 %186, i64* %R9, !mcsema_real_eip !22
  %187 = load i64* %R10_val, !mcsema_real_eip !22
  store i64 %187, i64* %R10, !mcsema_real_eip !22
  %188 = load i64* %R11_val, !mcsema_real_eip !22
  store i64 %188, i64* %R11, !mcsema_real_eip !22
  %189 = load i64* %R12_val, !mcsema_real_eip !22
  store i64 %189, i64* %R12, !mcsema_real_eip !22
  %190 = load i64* %R13_val, !mcsema_real_eip !22
  store i64 %190, i64* %R13, !mcsema_real_eip !22
  %191 = load i64* %R14_val, !mcsema_real_eip !22
  store i64 %191, i64* %R14, !mcsema_real_eip !22
  %192 = load i64* %R15_val, !mcsema_real_eip !22
  store i64 %192, i64* %R15, !mcsema_real_eip !22
  %193 = load i64* %RIP_val, !mcsema_real_eip !22
  store i64 %193, i64* %RIP, !mcsema_real_eip !22
  %194 = load i1* %CF_val, !mcsema_real_eip !22
  store i1 %194, i1* %CF, align 1, !mcsema_real_eip !22
  %195 = load i1* %PF_val, !mcsema_real_eip !22
  store i1 %195, i1* %PF, align 1, !mcsema_real_eip !22
  %196 = load i1* %AF_val, !mcsema_real_eip !22
  store i1 %196, i1* %AF, align 1, !mcsema_real_eip !22
  %197 = load i1* %ZF_val, !mcsema_real_eip !22
  store i1 %197, i1* %ZF, align 1, !mcsema_real_eip !22
  %198 = load i1* %SF_val, !mcsema_real_eip !22
  store i1 %198, i1* %SF, align 1, !mcsema_real_eip !22
  %199 = load i1* %OF_val, !mcsema_real_eip !22
  store i1 %199, i1* %OF, align 1, !mcsema_real_eip !22
  %200 = load i1* %DF_val, !mcsema_real_eip !22
  store i1 %200, i1* %DF, align 1, !mcsema_real_eip !22
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !22
  %201 = load i1* %FPU_B_val, !mcsema_real_eip !22
  store i1 %201, i1* %FPU_B, align 1, !mcsema_real_eip !22
  %202 = load i1* %FPU_C3_val, !mcsema_real_eip !22
  store i1 %202, i1* %FPU_C3, align 1, !mcsema_real_eip !22
  %203 = load i3* %FPU_TOP_val, !mcsema_real_eip !22
  store i3 %203, i3* %FPU_TOP, align 1, !mcsema_real_eip !22
  %204 = load i1* %FPU_C2_val, !mcsema_real_eip !22
  store i1 %204, i1* %FPU_C2, align 1, !mcsema_real_eip !22
  %205 = load i1* %FPU_C1_val, !mcsema_real_eip !22
  store i1 %205, i1* %FPU_C1, align 1, !mcsema_real_eip !22
  %206 = load i1* %FPU_C0_val, !mcsema_real_eip !22
  store i1 %206, i1* %FPU_C0, align 1, !mcsema_real_eip !22
  %207 = load i1* %FPU_ES_val, !mcsema_real_eip !22
  store i1 %207, i1* %FPU_ES, align 1, !mcsema_real_eip !22
  %208 = load i1* %FPU_SF_val, !mcsema_real_eip !22
  store i1 %208, i1* %FPU_SF, align 1, !mcsema_real_eip !22
  %209 = load i1* %FPU_PE_val, !mcsema_real_eip !22
  store i1 %209, i1* %FPU_PE, align 1, !mcsema_real_eip !22
  %210 = load i1* %FPU_UE_val, !mcsema_real_eip !22
  store i1 %210, i1* %FPU_UE, align 1, !mcsema_real_eip !22
  %211 = load i1* %FPU_OE_val, !mcsema_real_eip !22
  store i1 %211, i1* %FPU_OE, align 1, !mcsema_real_eip !22
  %212 = load i1* %FPU_ZE_val, !mcsema_real_eip !22
  store i1 %212, i1* %FPU_ZE, align 1, !mcsema_real_eip !22
  %213 = load i1* %FPU_DE_val, !mcsema_real_eip !22
  store i1 %213, i1* %FPU_DE, align 1, !mcsema_real_eip !22
  %214 = load i1* %FPU_IE_val, !mcsema_real_eip !22
  store i1 %214, i1* %FPU_IE, align 1, !mcsema_real_eip !22
  %215 = load i1* %FPU_X_val, !mcsema_real_eip !22
  store i1 %215, i1* %FPU_X, align 1, !mcsema_real_eip !22
  %216 = load i2* %FPU_RC_val, !mcsema_real_eip !22
  store i2 %216, i2* %FPU_RC, align 1, !mcsema_real_eip !22
  %217 = load i2* %FPU_PC_val, !mcsema_real_eip !22
  store i2 %217, i2* %FPU_PC, align 1, !mcsema_real_eip !22
  %218 = load i1* %FPU_PM_val, !mcsema_real_eip !22
  store i1 %218, i1* %FPU_PM, align 1, !mcsema_real_eip !22
  %219 = load i1* %FPU_UM_val, !mcsema_real_eip !22
  store i1 %219, i1* %FPU_UM, align 1, !mcsema_real_eip !22
  %220 = load i1* %FPU_OM_val, !mcsema_real_eip !22
  store i1 %220, i1* %FPU_OM, align 1, !mcsema_real_eip !22
  %221 = load i1* %FPU_ZM_val, !mcsema_real_eip !22
  store i1 %221, i1* %FPU_ZM, align 1, !mcsema_real_eip !22
  %222 = load i1* %FPU_DM_val, !mcsema_real_eip !22
  store i1 %222, i1* %FPU_DM, align 1, !mcsema_real_eip !22
  %223 = load i1* %FPU_IM_val, !mcsema_real_eip !22
  store i1 %223, i1* %FPU_IM, align 1, !mcsema_real_eip !22
  %224 = load i64* %53, align 4
  store i64 %224, i64* %52, align 4
  %225 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !22
  store i16 %225, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !22
  %226 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !22
  store i64 %226, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !22
  %227 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !22
  store i16 %227, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !22
  %228 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !22
  store i64 %228, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !22
  %229 = load i128* %XMM0_val, !mcsema_real_eip !22
  store i128 %229, i128* %XMM0, align 1, !mcsema_real_eip !22
  %230 = load i128* %XMM1_val, !mcsema_real_eip !22
  store i128 %230, i128* %XMM1, align 1, !mcsema_real_eip !22
  %231 = load i128* %XMM2_val, !mcsema_real_eip !22
  store i128 %231, i128* %XMM2, align 1, !mcsema_real_eip !22
  %232 = load i128* %XMM3_val, !mcsema_real_eip !22
  store i128 %232, i128* %XMM3, align 1, !mcsema_real_eip !22
  %233 = load i128* %XMM4_val, !mcsema_real_eip !22
  store i128 %233, i128* %XMM4, align 1, !mcsema_real_eip !22
  %234 = load i128* %XMM5_val, !mcsema_real_eip !22
  store i128 %234, i128* %XMM5, align 1, !mcsema_real_eip !22
  %235 = load i128* %XMM6_val, !mcsema_real_eip !22
  store i128 %235, i128* %XMM6, align 1, !mcsema_real_eip !22
  %236 = load i128* %XMM7_val, !mcsema_real_eip !22
  store i128 %236, i128* %XMM7, align 1, !mcsema_real_eip !22
  %237 = load i128* %XMM8_val, !mcsema_real_eip !22
  store i128 %237, i128* %XMM8, align 1, !mcsema_real_eip !22
  %238 = load i128* %XMM9_val, !mcsema_real_eip !22
  store i128 %238, i128* %XMM9, align 1, !mcsema_real_eip !22
  %239 = load i128* %XMM10_val, !mcsema_real_eip !22
  store i128 %239, i128* %XMM10, align 1, !mcsema_real_eip !22
  %240 = load i128* %XMM11_val, !mcsema_real_eip !22
  store i128 %240, i128* %XMM11, align 1, !mcsema_real_eip !22
  %241 = load i128* %XMM12_val, !mcsema_real_eip !22
  store i128 %241, i128* %XMM12, align 1, !mcsema_real_eip !22
  %242 = load i128* %XMM13_val, !mcsema_real_eip !22
  store i128 %242, i128* %XMM13, align 1, !mcsema_real_eip !22
  %243 = load i128* %XMM14_val, !mcsema_real_eip !22
  store i128 %243, i128* %XMM14, align 1, !mcsema_real_eip !22
  %244 = load i128* %XMM15_val, !mcsema_real_eip !22
  store i128 %244, i128* %XMM15, align 1, !mcsema_real_eip !22
  %245 = load i64* %STACK_BASE_val, !mcsema_real_eip !22
  store i64 %245, i64* %STACK_BASE, align 1, !mcsema_real_eip !22
  %246 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !22
  store i64 %246, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !22
  ret void, !mcsema_real_eip !22

block_0x44:                                       ; preds = %block_0x2a
  %247 = load i64* %RBP_val, !mcsema_real_eip !23
  %248 = add i64 %247, -72, !mcsema_real_eip !23
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !23
  %250 = load i64* %249, !mcsema_real_eip !23
  %uadd208 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %250, i64 1)
  %251 = extractvalue { i64, i1 } %uadd208, 0
  %252 = xor i64 %251, %250, !mcsema_real_eip !24
  %253 = and i64 %252, 16, !mcsema_real_eip !24
  %254 = icmp ne i64 %253, 0, !mcsema_real_eip !24
  store i1 %254, i1* %AF_val, !mcsema_real_eip !24
  %255 = icmp slt i64 %251, 0
  store i1 %255, i1* %SF_val, !mcsema_real_eip !24
  %256 = icmp eq i64 %251, 0, !mcsema_real_eip !24
  store i1 %256, i1* %ZF_val, !mcsema_real_eip !24
  %257 = xor i64 %250, -9223372036854775808, !mcsema_real_eip !24
  %258 = and i64 %252, %257, !mcsema_real_eip !24
  %259 = icmp slt i64 %258, 0
  store i1 %259, i1* %OF_val, !mcsema_real_eip !24
  %260 = trunc i64 %251 to i8, !mcsema_real_eip !24
  %261 = tail call i8 @llvm.ctpop.i8(i8 %260), !mcsema_real_eip !24
  %262 = and i8 %261, 1
  %263 = icmp eq i8 %262, 0
  store i1 %263, i1* %PF_val, !mcsema_real_eip !24
  %264 = extractvalue { i64, i1 } %uadd208, 1
  store i1 %264, i1* %CF_val, !mcsema_real_eip !24
  store i64 %251, i64* %RAX_val, !mcsema_real_eip !24
  %265 = inttoptr i64 %251 to i64*, !mcsema_real_eip !25
  %266 = bitcast i64* %265 to i8*
  %267 = load i8* %266, !mcsema_real_eip !25
  %268 = zext i8 %267 to i64
  store i64 %268, i64* %RDI_val, !mcsema_real_eip !26
  %269 = tail call x86_64_sysvcc i64 @to_byte(i64 %268), !mcsema_real_eip !27
  store i64 %269, i64* %RAX_val, !mcsema_real_eip !27
  %270 = trunc i64 %269 to i32, !mcsema_real_eip !28
  %271 = add i32 %270, -9
  %272 = xor i32 %271, %270, !mcsema_real_eip !28
  %273 = and i32 %272, 16, !mcsema_real_eip !28
  %274 = icmp ne i32 %273, 0, !mcsema_real_eip !28
  store i1 %274, i1* %AF_val, !mcsema_real_eip !28
  %275 = trunc i32 %271 to i8, !mcsema_real_eip !28
  %276 = tail call i8 @llvm.ctpop.i8(i8 %275), !mcsema_real_eip !28
  %277 = and i8 %276, 1
  %278 = icmp eq i8 %277, 0
  store i1 %278, i1* %PF_val, !mcsema_real_eip !28
  %279 = icmp eq i32 %271, 0, !mcsema_real_eip !28
  store i1 %279, i1* %ZF_val, !mcsema_real_eip !28
  %280 = icmp slt i32 %271, 0
  store i1 %280, i1* %SF_val, !mcsema_real_eip !28
  %281 = icmp ult i32 %270, 9, !mcsema_real_eip !28
  store i1 %281, i1* %CF_val, !mcsema_real_eip !28
  %282 = and i32 %272, %270, !mcsema_real_eip !28
  %283 = icmp slt i32 %282, 0
  store i1 %283, i1* %OF_val, !mcsema_real_eip !28
  %284 = load i1* %ZF_val, !mcsema_real_eip !29
  br i1 %284, label %block_0x68, label %block_0x5e, !mcsema_real_eip !29

block_0x3a:                                       ; preds = %block_0x2a
  store i64 4294967294, i64* %RAX_val, !mcsema_real_eip !30
  br label %block_0x391, !mcsema_real_eip !31

block_0x68:                                       ; preds = %block_0x44
  %285 = load i64* %RBP_val, !mcsema_real_eip !32
  %286 = add i64 %285, -72, !mcsema_real_eip !32
  %287 = inttoptr i64 %286 to i64*, !mcsema_real_eip !32
  %288 = load i64* %287, !mcsema_real_eip !32
  %uadd209 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %288, i64 2)
  %289 = extractvalue { i64, i1 } %uadd209, 0
  %290 = xor i64 %289, %288, !mcsema_real_eip !33
  %291 = and i64 %290, 16, !mcsema_real_eip !33
  %292 = icmp ne i64 %291, 0, !mcsema_real_eip !33
  store i1 %292, i1* %AF_val, !mcsema_real_eip !33
  %293 = icmp slt i64 %289, 0
  store i1 %293, i1* %SF_val, !mcsema_real_eip !33
  %294 = icmp eq i64 %289, 0, !mcsema_real_eip !33
  store i1 %294, i1* %ZF_val, !mcsema_real_eip !33
  %295 = xor i64 %288, -9223372036854775808, !mcsema_real_eip !33
  %296 = and i64 %290, %295, !mcsema_real_eip !33
  %297 = icmp slt i64 %296, 0
  store i1 %297, i1* %OF_val, !mcsema_real_eip !33
  %298 = trunc i64 %289 to i8, !mcsema_real_eip !33
  %299 = tail call i8 @llvm.ctpop.i8(i8 %298), !mcsema_real_eip !33
  %300 = and i8 %299, 1
  %301 = icmp eq i8 %300, 0
  store i1 %301, i1* %PF_val, !mcsema_real_eip !33
  %302 = extractvalue { i64, i1 } %uadd209, 1
  store i1 %302, i1* %CF_val, !mcsema_real_eip !33
  store i64 %289, i64* %RAX_val, !mcsema_real_eip !33
  %303 = inttoptr i64 %289 to i64*, !mcsema_real_eip !34
  %304 = bitcast i64* %303 to i8*
  %305 = load i8* %304, !mcsema_real_eip !34
  %306 = zext i8 %305 to i64
  store i64 %306, i64* %RDI_val, !mcsema_real_eip !35
  %307 = tail call x86_64_sysvcc i64 @to_byte(i64 %306), !mcsema_real_eip !36
  store i64 %307, i64* %RAX_val, !mcsema_real_eip !36
  %308 = load i64* %RBP_val, !mcsema_real_eip !37
  %309 = add i64 %308, -28, !mcsema_real_eip !37
  %310 = inttoptr i64 %309 to i64*, !mcsema_real_eip !37
  %311 = trunc i64 %307 to i32, !mcsema_real_eip !37
  %312 = bitcast i64* %310 to i32*
  store i32 %311, i32* %312, !mcsema_real_eip !37
  %313 = load i64* %RBP_val, !mcsema_real_eip !38
  %314 = add i64 %313, -28, !mcsema_real_eip !38
  %315 = inttoptr i64 %314 to i64*, !mcsema_real_eip !38
  %316 = bitcast i64* %315 to i32*
  %317 = load i32* %316, !mcsema_real_eip !38
  %318 = shl i32 %317, 1
  %319 = zext i32 %318 to i64, !mcsema_real_eip !39
  store i64 %319, i64* %RAX_val, !mcsema_real_eip !39
  %320 = add i32 %318, -26
  %321 = xor i32 %320, %318, !mcsema_real_eip !40
  %322 = and i32 %321, 16
  %323 = icmp eq i32 %322, 0
  store i1 %323, i1* %AF_val, !mcsema_real_eip !40
  %324 = trunc i32 %320 to i8, !mcsema_real_eip !40
  %325 = tail call i8 @llvm.ctpop.i8(i8 %324), !mcsema_real_eip !40
  %326 = and i8 %325, 1
  %327 = icmp eq i8 %326, 0
  store i1 %327, i1* %PF_val, !mcsema_real_eip !40
  %328 = icmp eq i32 %320, 0, !mcsema_real_eip !40
  store i1 %328, i1* %ZF_val, !mcsema_real_eip !40
  %329 = icmp slt i32 %320, 0
  store i1 %329, i1* %SF_val, !mcsema_real_eip !40
  %330 = icmp ult i32 %318, 26, !mcsema_real_eip !40
  store i1 %330, i1* %CF_val, !mcsema_real_eip !40
  %331 = and i32 %321, %318, !mcsema_real_eip !40
  %332 = icmp slt i32 %331, 0
  store i1 %332, i1* %OF_val, !mcsema_real_eip !40
  %333 = load i1* %ZF_val, !mcsema_real_eip !41
  br i1 %333, label %block_0x94, label %block_0x8a, !mcsema_real_eip !41

block_0x5e:                                       ; preds = %block_0x44
  store i64 4294967293, i64* %RAX_val, !mcsema_real_eip !42
  br label %block_0x391, !mcsema_real_eip !43

block_0x94:                                       ; preds = %block_0x68
  %334 = load i64* %RBP_val, !mcsema_real_eip !44
  %335 = add i64 %334, -72, !mcsema_real_eip !44
  %336 = inttoptr i64 %335 to i64*, !mcsema_real_eip !44
  %337 = load i64* %336, !mcsema_real_eip !44
  %uadd210 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %337, i64 3)
  %338 = extractvalue { i64, i1 } %uadd210, 0
  %339 = xor i64 %338, %337, !mcsema_real_eip !45
  %340 = and i64 %339, 16, !mcsema_real_eip !45
  %341 = icmp ne i64 %340, 0, !mcsema_real_eip !45
  store i1 %341, i1* %AF_val, !mcsema_real_eip !45
  %342 = icmp slt i64 %338, 0
  store i1 %342, i1* %SF_val, !mcsema_real_eip !45
  %343 = icmp eq i64 %338, 0, !mcsema_real_eip !45
  store i1 %343, i1* %ZF_val, !mcsema_real_eip !45
  %344 = xor i64 %337, -9223372036854775808, !mcsema_real_eip !45
  %345 = and i64 %339, %344, !mcsema_real_eip !45
  %346 = icmp slt i64 %345, 0
  store i1 %346, i1* %OF_val, !mcsema_real_eip !45
  %347 = trunc i64 %338 to i8, !mcsema_real_eip !45
  %348 = tail call i8 @llvm.ctpop.i8(i8 %347), !mcsema_real_eip !45
  %349 = and i8 %348, 1
  %350 = icmp eq i8 %349, 0
  store i1 %350, i1* %PF_val, !mcsema_real_eip !45
  %351 = extractvalue { i64, i1 } %uadd210, 1
  store i1 %351, i1* %CF_val, !mcsema_real_eip !45
  store i64 %338, i64* %RAX_val, !mcsema_real_eip !45
  %352 = inttoptr i64 %338 to i64*, !mcsema_real_eip !46
  %353 = bitcast i64* %352 to i8*
  %354 = load i8* %353, !mcsema_real_eip !46
  %355 = zext i8 %354 to i64
  store i64 %355, i64* %RDI_val, !mcsema_real_eip !47
  %356 = tail call x86_64_sysvcc i64 @to_byte(i64 %355), !mcsema_real_eip !48
  store i64 %356, i64* %RAX_val, !mcsema_real_eip !48
  %357 = load i64* %RBP_val, !mcsema_real_eip !49
  %358 = add i64 %357, -32, !mcsema_real_eip !49
  %359 = inttoptr i64 %358 to i64*, !mcsema_real_eip !49
  %360 = trunc i64 %356 to i32, !mcsema_real_eip !49
  %361 = bitcast i64* %359 to i32*
  store i32 %360, i32* %361, !mcsema_real_eip !49
  %362 = load i64* %RBP_val, !mcsema_real_eip !50
  %363 = add i64 %362, -32, !mcsema_real_eip !50
  %364 = inttoptr i64 %363 to i64*, !mcsema_real_eip !50
  %365 = bitcast i64* %364 to i32*
  %366 = load i32* %365, !mcsema_real_eip !50
  %367 = add i32 %366, -13
  %368 = icmp eq i32 %367, 0, !mcsema_real_eip !51
  %369 = zext i32 %367 to i64, !mcsema_real_eip !51
  store i64 %369, i64* %RAX_val, !mcsema_real_eip !51
  %370 = add i32 %366, -14
  %371 = xor i32 %370, %367, !mcsema_real_eip !52
  %372 = and i32 %371, 16, !mcsema_real_eip !52
  %373 = icmp ne i32 %372, 0, !mcsema_real_eip !52
  store i1 %373, i1* %AF_val, !mcsema_real_eip !52
  %374 = trunc i32 %370 to i8, !mcsema_real_eip !52
  %375 = tail call i8 @llvm.ctpop.i8(i8 %374), !mcsema_real_eip !52
  %376 = and i8 %375, 1
  %377 = icmp eq i8 %376, 0
  store i1 %377, i1* %PF_val, !mcsema_real_eip !52
  %378 = icmp eq i32 %370, 0, !mcsema_real_eip !52
  store i1 %378, i1* %ZF_val, !mcsema_real_eip !52
  %379 = icmp slt i32 %370, 0
  store i1 %379, i1* %SF_val, !mcsema_real_eip !52
  store i1 %368, i1* %CF_val, !mcsema_real_eip !52
  %380 = and i32 %371, %367, !mcsema_real_eip !52
  %381 = icmp slt i32 %380, 0
  store i1 %381, i1* %OF_val, !mcsema_real_eip !52
  %382 = load i1* %ZF_val, !mcsema_real_eip !53
  %383 = or i1 %368, %382, !mcsema_real_eip !53
  br i1 %383, label %block_0xc1, label %block_0xb7, !mcsema_real_eip !53

block_0x8a:                                       ; preds = %block_0x68
  store i64 4294967292, i64* %RAX_val, !mcsema_real_eip !54
  br label %block_0x391, !mcsema_real_eip !55

block_0xc1:                                       ; preds = %block_0x94
  %384 = load i64* %RBP_val, !mcsema_real_eip !56
  %385 = add i64 %384, -72, !mcsema_real_eip !56
  %386 = inttoptr i64 %385 to i64*, !mcsema_real_eip !56
  %387 = load i64* %386, !mcsema_real_eip !56
  %uadd211 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %387, i64 4)
  %388 = extractvalue { i64, i1 } %uadd211, 0
  %389 = xor i64 %388, %387, !mcsema_real_eip !57
  %390 = and i64 %389, 16, !mcsema_real_eip !57
  %391 = icmp ne i64 %390, 0, !mcsema_real_eip !57
  store i1 %391, i1* %AF_val, !mcsema_real_eip !57
  %392 = icmp slt i64 %388, 0
  store i1 %392, i1* %SF_val, !mcsema_real_eip !57
  %393 = icmp eq i64 %388, 0, !mcsema_real_eip !57
  store i1 %393, i1* %ZF_val, !mcsema_real_eip !57
  %394 = xor i64 %387, -9223372036854775808, !mcsema_real_eip !57
  %395 = and i64 %389, %394, !mcsema_real_eip !57
  %396 = icmp slt i64 %395, 0
  store i1 %396, i1* %OF_val, !mcsema_real_eip !57
  %397 = trunc i64 %388 to i8, !mcsema_real_eip !57
  %398 = tail call i8 @llvm.ctpop.i8(i8 %397), !mcsema_real_eip !57
  %399 = and i8 %398, 1
  %400 = icmp eq i8 %399, 0
  store i1 %400, i1* %PF_val, !mcsema_real_eip !57
  %401 = extractvalue { i64, i1 } %uadd211, 1
  store i1 %401, i1* %CF_val, !mcsema_real_eip !57
  store i64 %388, i64* %RAX_val, !mcsema_real_eip !57
  %402 = inttoptr i64 %388 to i64*, !mcsema_real_eip !58
  %403 = bitcast i64* %402 to i8*
  %404 = load i8* %403, !mcsema_real_eip !58
  %405 = zext i8 %404 to i32
  %406 = and i32 %405, 15, !mcsema_real_eip !59
  %407 = icmp eq i32 %406, 0, !mcsema_real_eip !59
  %408 = zext i32 %406 to i64, !mcsema_real_eip !59
  store i64 %408, i64* %RAX_val, !mcsema_real_eip !59
  %409 = add nsw i32 %406, -1
  %410 = and i32 %409, 16, !mcsema_real_eip !60
  %411 = icmp ne i32 %410, 0, !mcsema_real_eip !60
  store i1 %411, i1* %AF_val, !mcsema_real_eip !60
  %412 = trunc i32 %409 to i8, !mcsema_real_eip !60
  %413 = tail call i8 @llvm.ctpop.i8(i8 %412), !mcsema_real_eip !60
  %414 = and i8 %413, 1
  %415 = icmp eq i8 %414, 0
  store i1 %415, i1* %PF_val, !mcsema_real_eip !60
  %416 = icmp eq i32 %409, 0, !mcsema_real_eip !60
  store i1 %416, i1* %ZF_val, !mcsema_real_eip !60
  store i1 %407, i1* %SF_val, !mcsema_real_eip !60
  store i1 %407, i1* %CF_val, !mcsema_real_eip !60
  store i1 false, i1* %OF_val, !mcsema_real_eip !60
  br i1 %416, label %block_0xd7, label %block_0x120, !mcsema_real_eip !61

block_0xb7:                                       ; preds = %block_0x94
  store i64 4294967291, i64* %RAX_val, !mcsema_real_eip !62
  br label %block_0x391, !mcsema_real_eip !63

block_0x120:                                      ; preds = %block_0xd7, %block_0xc1
  store i64 4294967290, i64* %RAX_val, !mcsema_real_eip !64
  br label %block_0x391, !mcsema_real_eip !65

block_0xd7:                                       ; preds = %block_0xc1
  %417 = load i64* %RBP_val, !mcsema_real_eip !66
  %418 = add i64 %417, -72, !mcsema_real_eip !66
  %419 = inttoptr i64 %418 to i64*, !mcsema_real_eip !66
  %420 = load i64* %419, !mcsema_real_eip !66
  %uadd212 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %420, i64 4)
  %421 = extractvalue { i64, i1 } %uadd212, 0
  %422 = xor i64 %421, %420, !mcsema_real_eip !67
  %423 = and i64 %422, 16, !mcsema_real_eip !67
  %424 = icmp ne i64 %423, 0, !mcsema_real_eip !67
  store i1 %424, i1* %AF_val, !mcsema_real_eip !67
  %425 = icmp slt i64 %421, 0
  store i1 %425, i1* %SF_val, !mcsema_real_eip !67
  %426 = icmp eq i64 %421, 0, !mcsema_real_eip !67
  store i1 %426, i1* %ZF_val, !mcsema_real_eip !67
  %427 = xor i64 %420, -9223372036854775808, !mcsema_real_eip !67
  %428 = and i64 %422, %427, !mcsema_real_eip !67
  %429 = icmp slt i64 %428, 0
  store i1 %429, i1* %OF_val, !mcsema_real_eip !67
  %430 = trunc i64 %421 to i8, !mcsema_real_eip !67
  %431 = tail call i8 @llvm.ctpop.i8(i8 %430), !mcsema_real_eip !67
  %432 = and i8 %431, 1
  %433 = icmp eq i8 %432, 0
  store i1 %433, i1* %PF_val, !mcsema_real_eip !67
  %434 = extractvalue { i64, i1 } %uadd212, 1
  store i1 %434, i1* %CF_val, !mcsema_real_eip !67
  store i64 %421, i64* %RAX_val, !mcsema_real_eip !67
  %435 = inttoptr i64 %421 to i64*, !mcsema_real_eip !68
  %436 = bitcast i64* %435 to i8*
  %437 = load i8* %436, !mcsema_real_eip !68
  %438 = sext i8 %437 to i32, !mcsema_real_eip !69
  %439 = and i32 %438, 240, !mcsema_real_eip !70
  %440 = zext i32 %439 to i64, !mcsema_real_eip !70
  store i64 %440, i64* %RAX_val, !mcsema_real_eip !70
  %441 = add nsw i32 %439, -48
  %442 = xor i32 %441, %438, !mcsema_real_eip !71
  %443 = and i32 %442, 16
  %444 = icmp eq i32 %443, 0
  store i1 %444, i1* %AF_val, !mcsema_real_eip !71
  %445 = trunc i32 %441 to i8, !mcsema_real_eip !71
  %446 = tail call i8 @llvm.ctpop.i8(i8 %445), !mcsema_real_eip !71
  %447 = and i8 %446, 1
  %448 = icmp eq i8 %447, 0
  store i1 %448, i1* %PF_val, !mcsema_real_eip !71
  %449 = icmp eq i32 %441, 0, !mcsema_real_eip !71
  store i1 %449, i1* %ZF_val, !mcsema_real_eip !71
  %450 = icmp slt i32 %441, 0
  store i1 %450, i1* %SF_val, !mcsema_real_eip !71
  %451 = icmp ult i32 %439, 48, !mcsema_real_eip !71
  store i1 %451, i1* %CF_val, !mcsema_real_eip !71
  store i1 false, i1* %OF_val, !mcsema_real_eip !71
  br i1 %449, label %block_0xef, label %block_0x120, !mcsema_real_eip !72

block_0xef:                                       ; preds = %block_0xd7
  %452 = load i64* %RBP_val, !mcsema_real_eip !73
  %453 = add i64 %452, -20, !mcsema_real_eip !73
  %454 = inttoptr i64 %453 to i64*, !mcsema_real_eip !73
  %455 = bitcast i64* %454 to i32*
  store i32 -4, i32* %455, !mcsema_real_eip !73
  %456 = load i64* %RBP_val, !mcsema_real_eip !74
  %457 = add i64 %456, -72, !mcsema_real_eip !74
  %458 = inttoptr i64 %457 to i64*, !mcsema_real_eip !74
  %459 = load i64* %458, !mcsema_real_eip !74
  %uadd213 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %459, i64 5)
  %460 = extractvalue { i64, i1 } %uadd213, 0
  %461 = xor i64 %460, %459, !mcsema_real_eip !75
  %462 = and i64 %461, 16, !mcsema_real_eip !75
  %463 = icmp ne i64 %462, 0, !mcsema_real_eip !75
  store i1 %463, i1* %AF_val, !mcsema_real_eip !75
  %464 = icmp slt i64 %460, 0
  store i1 %464, i1* %SF_val, !mcsema_real_eip !75
  %465 = icmp eq i64 %460, 0, !mcsema_real_eip !75
  store i1 %465, i1* %ZF_val, !mcsema_real_eip !75
  %466 = xor i64 %459, -9223372036854775808, !mcsema_real_eip !75
  %467 = and i64 %461, %466, !mcsema_real_eip !75
  %468 = icmp slt i64 %467, 0
  store i1 %468, i1* %OF_val, !mcsema_real_eip !75
  %469 = trunc i64 %460 to i8, !mcsema_real_eip !75
  %470 = tail call i8 @llvm.ctpop.i8(i8 %469), !mcsema_real_eip !75
  %471 = and i8 %470, 1
  %472 = icmp eq i8 %471, 0
  store i1 %472, i1* %PF_val, !mcsema_real_eip !75
  %473 = extractvalue { i64, i1 } %uadd213, 1
  store i1 %473, i1* %CF_val, !mcsema_real_eip !75
  store i64 %460, i64* %RAX_val, !mcsema_real_eip !75
  %474 = inttoptr i64 %460 to i64*, !mcsema_real_eip !76
  %475 = bitcast i64* %474 to i8*
  %476 = load i8* %475, !mcsema_real_eip !76
  %477 = zext i8 %476 to i32
  %478 = and i32 %477, 15, !mcsema_real_eip !77
  store i1 false, i1* %SF_val, !mcsema_real_eip !77
  %479 = icmp eq i32 %478, 0, !mcsema_real_eip !77
  store i1 %479, i1* %ZF_val, !mcsema_real_eip !77
  %480 = trunc i32 %478 to i8, !mcsema_real_eip !77
  %481 = tail call i8 @llvm.ctpop.i8(i8 %480), !mcsema_real_eip !77
  %482 = and i8 %481, 1
  %483 = icmp eq i8 %482, 0
  store i1 %483, i1* %PF_val, !mcsema_real_eip !77
  store i1 false, i1* %OF_val, !mcsema_real_eip !77
  store i1 false, i1* %CF_val, !mcsema_real_eip !77
  %484 = zext i32 %478 to i64, !mcsema_real_eip !77
  store i64 %484, i64* %RAX_val, !mcsema_real_eip !77
  %485 = load i64* %RBP_val, !mcsema_real_eip !78
  %486 = add i64 %485, -33, !mcsema_real_eip !78
  %487 = inttoptr i64 %486 to i64*, !mcsema_real_eip !78
  %488 = bitcast i64* %487 to i8*
  store i8 %480, i8* %488, !mcsema_real_eip !78
  %489 = load i64* %RBP_val, !mcsema_real_eip !79
  %490 = add i64 %489, -72, !mcsema_real_eip !79
  %491 = inttoptr i64 %490 to i64*, !mcsema_real_eip !79
  %492 = load i64* %491, !mcsema_real_eip !79
  %uadd214 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %492, i64 5)
  %493 = extractvalue { i64, i1 } %uadd214, 0
  %494 = xor i64 %493, %492, !mcsema_real_eip !80
  %495 = and i64 %494, 16, !mcsema_real_eip !80
  %496 = icmp ne i64 %495, 0, !mcsema_real_eip !80
  store i1 %496, i1* %AF_val, !mcsema_real_eip !80
  %497 = icmp slt i64 %493, 0
  store i1 %497, i1* %SF_val, !mcsema_real_eip !80
  %498 = icmp eq i64 %493, 0, !mcsema_real_eip !80
  store i1 %498, i1* %ZF_val, !mcsema_real_eip !80
  %499 = xor i64 %492, -9223372036854775808, !mcsema_real_eip !80
  %500 = and i64 %494, %499, !mcsema_real_eip !80
  %501 = icmp slt i64 %500, 0
  store i1 %501, i1* %OF_val, !mcsema_real_eip !80
  %502 = trunc i64 %493 to i8, !mcsema_real_eip !80
  %503 = tail call i8 @llvm.ctpop.i8(i8 %502), !mcsema_real_eip !80
  %504 = and i8 %503, 1
  %505 = icmp eq i8 %504, 0
  store i1 %505, i1* %PF_val, !mcsema_real_eip !80
  %506 = extractvalue { i64, i1 } %uadd214, 1
  store i1 %506, i1* %CF_val, !mcsema_real_eip !80
  store i64 %493, i64* %RAX_val, !mcsema_real_eip !80
  %507 = inttoptr i64 %493 to i64*, !mcsema_real_eip !81
  %508 = bitcast i64* %507 to i8*
  %509 = load i8* %508, !mcsema_real_eip !81
  %510 = zext i8 %509 to i32
  %511 = and i32 %510, 240, !mcsema_real_eip !82
  store i1 false, i1* %SF_val, !mcsema_real_eip !82
  %512 = icmp eq i32 %511, 0, !mcsema_real_eip !82
  store i1 %512, i1* %ZF_val, !mcsema_real_eip !82
  %513 = trunc i32 %511 to i8, !mcsema_real_eip !82
  %514 = tail call i8 @llvm.ctpop.i8(i8 %513), !mcsema_real_eip !82
  %515 = and i8 %514, 1
  %516 = icmp eq i8 %515, 0
  store i1 %516, i1* %PF_val, !mcsema_real_eip !82
  store i1 false, i1* %OF_val, !mcsema_real_eip !82
  store i1 false, i1* %CF_val, !mcsema_real_eip !82
  %517 = zext i32 %511 to i64, !mcsema_real_eip !82
  store i64 %517, i64* %RAX_val, !mcsema_real_eip !82
  %518 = load i64* %RBP_val, !mcsema_real_eip !83
  %519 = add i64 %518, -34, !mcsema_real_eip !83
  %520 = inttoptr i64 %519 to i64*, !mcsema_real_eip !83
  %521 = bitcast i64* %520 to i8*
  store i8 %513, i8* %521, !mcsema_real_eip !83
  %522 = load i64* %RBP_val, !mcsema_real_eip !84
  %523 = add i64 %522, -33, !mcsema_real_eip !84
  %524 = inttoptr i64 %523 to i64*, !mcsema_real_eip !84
  %525 = bitcast i64* %524 to i8*
  %526 = load i8* %525, !mcsema_real_eip !84
  %527 = add i8 %526, -3
  %528 = xor i8 %527, %526, !mcsema_real_eip !84
  %529 = and i8 %528, 16, !mcsema_real_eip !84
  %530 = icmp ne i8 %529, 0, !mcsema_real_eip !84
  store i1 %530, i1* %AF_val, !mcsema_real_eip !84
  %531 = tail call i8 @llvm.ctpop.i8(i8 %527), !mcsema_real_eip !84
  %532 = and i8 %531, 1
  %533 = icmp eq i8 %532, 0
  store i1 %533, i1* %PF_val, !mcsema_real_eip !84
  %534 = icmp eq i8 %527, 0, !mcsema_real_eip !84
  store i1 %534, i1* %ZF_val, !mcsema_real_eip !84
  %535 = icmp slt i8 %527, 0
  store i1 %535, i1* %SF_val, !mcsema_real_eip !84
  %536 = icmp ult i8 %526, 3, !mcsema_real_eip !84
  store i1 %536, i1* %CF_val, !mcsema_real_eip !84
  %537 = and i8 %528, %526, !mcsema_real_eip !84
  %538 = icmp slt i8 %537, 0
  store i1 %538, i1* %OF_val, !mcsema_real_eip !84
  %539 = load i1* %ZF_val, !mcsema_real_eip !85
  br i1 %539, label %block_0x12a, label %block_0x136, !mcsema_real_eip !85

block_0x12a:                                      ; preds = %block_0xef
  %540 = load i64* %RBP_val, !mcsema_real_eip !86
  %541 = add i64 %540, -34, !mcsema_real_eip !86
  %542 = inttoptr i64 %541 to i64*, !mcsema_real_eip !86
  %543 = bitcast i64* %542 to i8*
  %544 = load i8* %543, !mcsema_real_eip !86
  %545 = add i8 %544, -96
  %546 = xor i8 %545, %544, !mcsema_real_eip !86
  %547 = and i8 %546, 16, !mcsema_real_eip !86
  %548 = icmp ne i8 %547, 0, !mcsema_real_eip !86
  store i1 %548, i1* %AF_val, !mcsema_real_eip !86
  %549 = tail call i8 @llvm.ctpop.i8(i8 %545), !mcsema_real_eip !86
  %550 = and i8 %549, 1
  %551 = icmp eq i8 %550, 0
  store i1 %551, i1* %PF_val, !mcsema_real_eip !86
  %552 = icmp eq i8 %545, 0, !mcsema_real_eip !86
  store i1 %552, i1* %ZF_val, !mcsema_real_eip !86
  %553 = icmp slt i8 %545, 0
  store i1 %553, i1* %SF_val, !mcsema_real_eip !86
  %554 = icmp ult i8 %544, 96, !mcsema_real_eip !86
  store i1 %554, i1* %CF_val, !mcsema_real_eip !86
  %555 = and i8 %546, %544, !mcsema_real_eip !86
  %556 = icmp slt i8 %555, 0
  store i1 %556, i1* %OF_val, !mcsema_real_eip !86
  %557 = load i1* %ZF_val, !mcsema_real_eip !87
  br i1 %557, label %block_0x130, label %block_0x136, !mcsema_real_eip !87

block_0x136:                                      ; preds = %block_0x12a, %block_0xef
  %558 = load i64* %RBP_val, !mcsema_real_eip !88
  %559 = add i64 %558, -20, !mcsema_real_eip !88
  %560 = inttoptr i64 %559 to i64*, !mcsema_real_eip !88
  %561 = bitcast i64* %560 to i32*
  %562 = load i32* %561, !mcsema_real_eip !88
  %uadd215 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %562, i32 5)
  %563 = extractvalue { i32, i1 } %uadd215, 0
  %564 = xor i32 %563, %562, !mcsema_real_eip !88
  %565 = and i32 %564, 16, !mcsema_real_eip !88
  %566 = icmp ne i32 %565, 0, !mcsema_real_eip !88
  store i1 %566, i1* %AF_val, !mcsema_real_eip !88
  %567 = icmp slt i32 %563, 0
  store i1 %567, i1* %SF_val, !mcsema_real_eip !88
  %568 = icmp eq i32 %563, 0, !mcsema_real_eip !88
  store i1 %568, i1* %ZF_val, !mcsema_real_eip !88
  %569 = xor i32 %562, -2147483648, !mcsema_real_eip !88
  %570 = and i32 %564, %569, !mcsema_real_eip !88
  %571 = icmp slt i32 %570, 0
  store i1 %571, i1* %OF_val, !mcsema_real_eip !88
  %572 = trunc i32 %563 to i8, !mcsema_real_eip !88
  %573 = tail call i8 @llvm.ctpop.i8(i8 %572), !mcsema_real_eip !88
  %574 = and i8 %573, 1
  %575 = icmp eq i8 %574, 0
  store i1 %575, i1* %PF_val, !mcsema_real_eip !88
  %576 = extractvalue { i32, i1 } %uadd215, 1
  store i1 %576, i1* %CF_val, !mcsema_real_eip !88
  store i32 %563, i32* %561, !mcsema_real_eip !88
  %577 = load i64* %RBP_val, !mcsema_real_eip !89
  %578 = add i64 %577, -72, !mcsema_real_eip !89
  %579 = inttoptr i64 %578 to i64*, !mcsema_real_eip !89
  %580 = load i64* %579, !mcsema_real_eip !89
  %uadd216 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %580, i64 6)
  %581 = extractvalue { i64, i1 } %uadd216, 0
  %582 = xor i64 %581, %580, !mcsema_real_eip !90
  %583 = and i64 %582, 16, !mcsema_real_eip !90
  %584 = icmp ne i64 %583, 0, !mcsema_real_eip !90
  store i1 %584, i1* %AF_val, !mcsema_real_eip !90
  %585 = icmp slt i64 %581, 0
  store i1 %585, i1* %SF_val, !mcsema_real_eip !90
  %586 = icmp eq i64 %581, 0, !mcsema_real_eip !90
  store i1 %586, i1* %ZF_val, !mcsema_real_eip !90
  %587 = xor i64 %580, -9223372036854775808, !mcsema_real_eip !90
  %588 = and i64 %582, %587, !mcsema_real_eip !90
  %589 = icmp slt i64 %588, 0
  store i1 %589, i1* %OF_val, !mcsema_real_eip !90
  %590 = trunc i64 %581 to i8, !mcsema_real_eip !90
  %591 = tail call i8 @llvm.ctpop.i8(i8 %590), !mcsema_real_eip !90
  %592 = and i8 %591, 1
  %593 = icmp eq i8 %592, 0
  store i1 %593, i1* %PF_val, !mcsema_real_eip !90
  %594 = extractvalue { i64, i1 } %uadd216, 1
  store i1 %594, i1* %CF_val, !mcsema_real_eip !90
  store i64 %581, i64* %RAX_val, !mcsema_real_eip !90
  %595 = inttoptr i64 %581 to i64*, !mcsema_real_eip !91
  %596 = bitcast i64* %595 to i8*
  %597 = load i8* %596, !mcsema_real_eip !91
  %598 = zext i8 %597 to i64
  store i64 %598, i64* %RDI_val, !mcsema_real_eip !92
  %599 = tail call x86_64_sysvcc i64 @to_byte(i64 %598), !mcsema_real_eip !93
  store i64 %599, i64* %RAX_val, !mcsema_real_eip !93
  %600 = load i64* %RBP_val, !mcsema_real_eip !94
  %601 = add i64 %600, -35, !mcsema_real_eip !94
  %602 = inttoptr i64 %601 to i64*, !mcsema_real_eip !94
  %603 = trunc i64 %599 to i8, !mcsema_real_eip !94
  %604 = bitcast i64* %602 to i8*
  store i8 %603, i8* %604, !mcsema_real_eip !94
  %605 = load i64* %RBP_val, !mcsema_real_eip !95
  %606 = add i64 %605, -72, !mcsema_real_eip !95
  %607 = inttoptr i64 %606 to i64*, !mcsema_real_eip !95
  %608 = load i64* %607, !mcsema_real_eip !95
  %uadd217 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %608, i64 7)
  %609 = extractvalue { i64, i1 } %uadd217, 0
  %610 = xor i64 %609, %608, !mcsema_real_eip !96
  %611 = and i64 %610, 16, !mcsema_real_eip !96
  %612 = icmp ne i64 %611, 0, !mcsema_real_eip !96
  store i1 %612, i1* %AF_val, !mcsema_real_eip !96
  %613 = icmp slt i64 %609, 0
  store i1 %613, i1* %SF_val, !mcsema_real_eip !96
  %614 = icmp eq i64 %609, 0, !mcsema_real_eip !96
  store i1 %614, i1* %ZF_val, !mcsema_real_eip !96
  %615 = xor i64 %608, -9223372036854775808, !mcsema_real_eip !96
  %616 = and i64 %610, %615, !mcsema_real_eip !96
  %617 = icmp slt i64 %616, 0
  store i1 %617, i1* %OF_val, !mcsema_real_eip !96
  %618 = trunc i64 %609 to i8, !mcsema_real_eip !96
  %619 = tail call i8 @llvm.ctpop.i8(i8 %618), !mcsema_real_eip !96
  %620 = and i8 %619, 1
  %621 = icmp eq i8 %620, 0
  store i1 %621, i1* %PF_val, !mcsema_real_eip !96
  %622 = extractvalue { i64, i1 } %uadd217, 1
  store i1 %622, i1* %CF_val, !mcsema_real_eip !96
  store i64 %609, i64* %RAX_val, !mcsema_real_eip !96
  %623 = inttoptr i64 %609 to i64*, !mcsema_real_eip !97
  %624 = bitcast i64* %623 to i8*
  %625 = load i8* %624, !mcsema_real_eip !97
  %626 = zext i8 %625 to i64
  store i64 %626, i64* %RDI_val, !mcsema_real_eip !98
  %627 = tail call x86_64_sysvcc i64 @to_byte(i64 %626), !mcsema_real_eip !99
  store i64 %627, i64* %RAX_val, !mcsema_real_eip !99
  %628 = load i64* %RBP_val, !mcsema_real_eip !100
  %629 = add i64 %628, -35, !mcsema_real_eip !100
  %630 = inttoptr i64 %629 to i64*, !mcsema_real_eip !100
  %631 = bitcast i64* %630 to i8*
  %632 = load i8* %631, !mcsema_real_eip !100
  %633 = trunc i64 %627 to i8, !mcsema_real_eip !100
  %634 = or i8 %632, %633, !mcsema_real_eip !100
  store i1 false, i1* %OF_val, !mcsema_real_eip !100
  store i1 false, i1* %CF_val, !mcsema_real_eip !100
  %635 = icmp slt i8 %634, 0
  store i1 %635, i1* %SF_val, !mcsema_real_eip !100
  %636 = icmp eq i8 %634, 0, !mcsema_real_eip !100
  store i1 %636, i1* %ZF_val, !mcsema_real_eip !100
  %637 = tail call i8 @llvm.ctpop.i8(i8 %634), !mcsema_real_eip !100
  %638 = and i8 %637, 1
  %639 = icmp eq i8 %638, 0
  store i1 %639, i1* %PF_val, !mcsema_real_eip !100
  store i8 %634, i8* %631, !mcsema_real_eip !100
  %640 = load i64* %RBP_val, !mcsema_real_eip !101
  %641 = add i64 %640, -35, !mcsema_real_eip !101
  %642 = inttoptr i64 %641 to i64*, !mcsema_real_eip !101
  %643 = bitcast i64* %642 to i8*
  %644 = load i8* %643, !mcsema_real_eip !101
  %645 = zext i8 %644 to i64
  store i64 %645, i64* %RAX_val, !mcsema_real_eip !101
  %646 = zext i8 %644 to i32
  %647 = add nuw nsw i32 %646, 71
  %648 = xor i32 %647, %646, !mcsema_real_eip !102
  br label %block_0x179

block_0x130:                                      ; preds = %block_0x12a
  %649 = load i64* %RBP_val, !mcsema_real_eip !103
  %650 = add i64 %649, -20, !mcsema_real_eip !103
  %651 = inttoptr i64 %650 to i64*, !mcsema_real_eip !103
  %652 = bitcast i64* %651 to i32*
  %653 = load i32* %652, !mcsema_real_eip !103
  %uadd233 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %653, i32 4)
  %654 = extractvalue { i32, i1 } %uadd233, 0
  %655 = xor i32 %654, %653, !mcsema_real_eip !103
  %656 = and i32 %655, 16, !mcsema_real_eip !103
  %657 = icmp ne i32 %656, 0, !mcsema_real_eip !103
  store i1 %657, i1* %AF_val, !mcsema_real_eip !103
  %658 = icmp slt i32 %654, 0
  store i1 %658, i1* %SF_val, !mcsema_real_eip !103
  %659 = icmp eq i32 %654, 0, !mcsema_real_eip !103
  store i1 %659, i1* %ZF_val, !mcsema_real_eip !103
  %660 = xor i32 %653, -2147483648, !mcsema_real_eip !103
  %661 = and i32 %655, %660, !mcsema_real_eip !103
  %662 = icmp slt i32 %661, 0
  store i1 %662, i1* %OF_val, !mcsema_real_eip !103
  %663 = trunc i32 %654 to i8, !mcsema_real_eip !103
  %664 = tail call i8 @llvm.ctpop.i8(i8 %663), !mcsema_real_eip !103
  %665 = and i8 %664, 1
  %666 = icmp eq i8 %665, 0
  store i1 %666, i1* %PF_val, !mcsema_real_eip !103
  %667 = extractvalue { i32, i1 } %uadd233, 1
  store i1 %667, i1* %CF_val, !mcsema_real_eip !103
  store i32 %654, i32* %652, !mcsema_real_eip !103
  %668 = load i64* %RBP_val, !mcsema_real_eip !89
  %669 = add i64 %668, -72, !mcsema_real_eip !89
  %670 = inttoptr i64 %669 to i64*, !mcsema_real_eip !89
  %671 = load i64* %670, !mcsema_real_eip !89
  %uadd234 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %671, i64 6)
  %672 = extractvalue { i64, i1 } %uadd234, 0
  %673 = xor i64 %672, %671, !mcsema_real_eip !90
  %674 = and i64 %673, 16, !mcsema_real_eip !90
  %675 = icmp ne i64 %674, 0, !mcsema_real_eip !90
  store i1 %675, i1* %AF_val, !mcsema_real_eip !90
  %676 = icmp slt i64 %672, 0
  store i1 %676, i1* %SF_val, !mcsema_real_eip !90
  %677 = icmp eq i64 %672, 0, !mcsema_real_eip !90
  store i1 %677, i1* %ZF_val, !mcsema_real_eip !90
  %678 = xor i64 %671, -9223372036854775808, !mcsema_real_eip !90
  %679 = and i64 %673, %678, !mcsema_real_eip !90
  %680 = icmp slt i64 %679, 0
  store i1 %680, i1* %OF_val, !mcsema_real_eip !90
  %681 = trunc i64 %672 to i8, !mcsema_real_eip !90
  %682 = tail call i8 @llvm.ctpop.i8(i8 %681), !mcsema_real_eip !90
  %683 = and i8 %682, 1
  %684 = icmp eq i8 %683, 0
  store i1 %684, i1* %PF_val, !mcsema_real_eip !90
  %685 = extractvalue { i64, i1 } %uadd234, 1
  store i1 %685, i1* %CF_val, !mcsema_real_eip !90
  store i64 %672, i64* %RAX_val, !mcsema_real_eip !90
  %686 = inttoptr i64 %672 to i64*, !mcsema_real_eip !91
  %687 = bitcast i64* %686 to i8*
  %688 = load i8* %687, !mcsema_real_eip !91
  %689 = zext i8 %688 to i64
  store i64 %689, i64* %RDI_val, !mcsema_real_eip !92
  %690 = tail call x86_64_sysvcc i64 @to_byte(i64 %689), !mcsema_real_eip !93
  store i64 %690, i64* %RAX_val, !mcsema_real_eip !93
  %691 = load i64* %RBP_val, !mcsema_real_eip !94
  %692 = add i64 %691, -35, !mcsema_real_eip !94
  %693 = inttoptr i64 %692 to i64*, !mcsema_real_eip !94
  %694 = trunc i64 %690 to i8, !mcsema_real_eip !94
  %695 = bitcast i64* %693 to i8*
  store i8 %694, i8* %695, !mcsema_real_eip !94
  %696 = load i64* %RBP_val, !mcsema_real_eip !95
  %697 = add i64 %696, -72, !mcsema_real_eip !95
  %698 = inttoptr i64 %697 to i64*, !mcsema_real_eip !95
  %699 = load i64* %698, !mcsema_real_eip !95
  %uadd235 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %699, i64 7)
  %700 = extractvalue { i64, i1 } %uadd235, 0
  %701 = xor i64 %700, %699, !mcsema_real_eip !96
  %702 = and i64 %701, 16, !mcsema_real_eip !96
  %703 = icmp ne i64 %702, 0, !mcsema_real_eip !96
  store i1 %703, i1* %AF_val, !mcsema_real_eip !96
  %704 = icmp slt i64 %700, 0
  store i1 %704, i1* %SF_val, !mcsema_real_eip !96
  %705 = icmp eq i64 %700, 0, !mcsema_real_eip !96
  store i1 %705, i1* %ZF_val, !mcsema_real_eip !96
  %706 = xor i64 %699, -9223372036854775808, !mcsema_real_eip !96
  %707 = and i64 %701, %706, !mcsema_real_eip !96
  %708 = icmp slt i64 %707, 0
  store i1 %708, i1* %OF_val, !mcsema_real_eip !96
  %709 = trunc i64 %700 to i8, !mcsema_real_eip !96
  %710 = tail call i8 @llvm.ctpop.i8(i8 %709), !mcsema_real_eip !96
  %711 = and i8 %710, 1
  %712 = icmp eq i8 %711, 0
  store i1 %712, i1* %PF_val, !mcsema_real_eip !96
  %713 = extractvalue { i64, i1 } %uadd235, 1
  store i1 %713, i1* %CF_val, !mcsema_real_eip !96
  store i64 %700, i64* %RAX_val, !mcsema_real_eip !96
  %714 = inttoptr i64 %700 to i64*, !mcsema_real_eip !97
  %715 = bitcast i64* %714 to i8*
  %716 = load i8* %715, !mcsema_real_eip !97
  %717 = zext i8 %716 to i64
  store i64 %717, i64* %RDI_val, !mcsema_real_eip !98
  %718 = tail call x86_64_sysvcc i64 @to_byte(i64 %717), !mcsema_real_eip !99
  store i64 %718, i64* %RAX_val, !mcsema_real_eip !99
  %719 = load i64* %RBP_val, !mcsema_real_eip !100
  %720 = add i64 %719, -35, !mcsema_real_eip !100
  %721 = inttoptr i64 %720 to i64*, !mcsema_real_eip !100
  %722 = bitcast i64* %721 to i8*
  %723 = load i8* %722, !mcsema_real_eip !100
  %724 = trunc i64 %718 to i8, !mcsema_real_eip !100
  %725 = or i8 %723, %724, !mcsema_real_eip !100
  store i1 false, i1* %OF_val, !mcsema_real_eip !100
  store i1 false, i1* %CF_val, !mcsema_real_eip !100
  %726 = icmp slt i8 %725, 0
  store i1 %726, i1* %SF_val, !mcsema_real_eip !100
  %727 = icmp eq i8 %725, 0, !mcsema_real_eip !100
  store i1 %727, i1* %ZF_val, !mcsema_real_eip !100
  %728 = tail call i8 @llvm.ctpop.i8(i8 %725), !mcsema_real_eip !100
  %729 = and i8 %728, 1
  %730 = icmp eq i8 %729, 0
  store i1 %730, i1* %PF_val, !mcsema_real_eip !100
  store i8 %725, i8* %722, !mcsema_real_eip !100
  %731 = load i64* %RBP_val, !mcsema_real_eip !101
  %732 = add i64 %731, -35, !mcsema_real_eip !101
  %733 = inttoptr i64 %732 to i64*, !mcsema_real_eip !101
  %734 = bitcast i64* %733 to i8*
  %735 = load i8* %734, !mcsema_real_eip !101
  %736 = zext i8 %735 to i64
  store i64 %736, i64* %RAX_val, !mcsema_real_eip !101
  %737 = zext i8 %735 to i32
  %738 = add nuw nsw i32 %737, 71
  %739 = xor i32 %738, %737, !mcsema_real_eip !102
  br label %block_0x179

block_0x179:                                      ; preds = %block_0x130, %block_0x136
  %storemerge237.in.in = phi i32 [ %648, %block_0x136 ], [ %739, %block_0x130 ]
  %.sink236 = phi i32 [ %647, %block_0x136 ], [ %738, %block_0x130 ]
  %storemerge237.in = and i32 %storemerge237.in.in, 16
  %storemerge237 = icmp eq i32 %storemerge237.in, 0
  store i1 %storemerge237, i1* %AF_val
  %740 = trunc i32 %.sink236 to i8, !mcsema_real_eip !102
  %741 = tail call i8 @llvm.ctpop.i8(i8 %740), !mcsema_real_eip !102
  %storemerge.in = and i8 %741, 1
  %storemerge = icmp eq i8 %storemerge.in, 0
  store i1 %storemerge, i1* %PF_val
  store i1 false, i1* %ZF_val
  store i1 false, i1* %SF_val
  store i1 true, i1* %CF_val
  store i1 false, i1* %OF_val
  %742 = load i64* %RBP_val, !mcsema_real_eip !104
  %743 = add i64 %742, -20, !mcsema_real_eip !104
  %744 = inttoptr i64 %743 to i64*, !mcsema_real_eip !104
  %745 = bitcast i64* %744 to i32*
  %746 = load i32* %745, !mcsema_real_eip !104
  %747 = zext i32 %746 to i64, !mcsema_real_eip !104
  store i64 %747, i64* %RAX_val, !mcsema_real_eip !104
  store i64 %747, i64* %RCX_val, !mcsema_real_eip !105
  %748 = load i64* %RBP_val, !mcsema_real_eip !106
  %749 = add i64 %748, -20, !mcsema_real_eip !106
  %750 = inttoptr i64 %749 to i64*, !mcsema_real_eip !106
  %751 = bitcast i64* %750 to i32*
  %752 = load i32* %751, !mcsema_real_eip !106
  %753 = and i32 %746, 31, !mcsema_real_eip !106
  %754 = add i32 %746, -1
  %755 = icmp ne i32 %753, 0, !mcsema_real_eip !106
  %756 = select i1 %755, i32 %754, i32 0, !mcsema_real_eip !106
  %757 = zext i1 %755 to i32
  %758 = shl i32 %752, %756, !mcsema_real_eip !106
  %759 = icmp slt i32 %758, 0
  %760 = load i1* %CF_val, !mcsema_real_eip !106
  %761 = select i1 %755, i1 %759, i1 %760, !mcsema_real_eip !106
  %762 = shl i32 %758, %757, !mcsema_real_eip !106
  %763 = icmp eq i32 %753, 1, !mcsema_real_eip !106
  %764 = load i1* %OF_val, !mcsema_real_eip !106
  %765 = icmp slt i32 %762, 0
  %766 = xor i1 %765, %761, !mcsema_real_eip !106
  %767 = select i1 %763, i1 %766, i1 %764, !mcsema_real_eip !106
  store i1 %767, i1* %OF_val, !mcsema_real_eip !106
  store i1 %761, i1* %CF_val, !mcsema_real_eip !106
  %768 = load i1* %ZF_val, !mcsema_real_eip !106
  %769 = icmp eq i32 %762, 0, !mcsema_real_eip !106
  %770 = select i1 %755, i1 %769, i1 %768, !mcsema_real_eip !106
  store i1 %770, i1* %ZF_val, !mcsema_real_eip !106
  %771 = load i1* %SF_val, !mcsema_real_eip !106
  %772 = select i1 %755, i1 %765, i1 %771, !mcsema_real_eip !106
  store i1 %772, i1* %SF_val, !mcsema_real_eip !106
  %773 = load i1* %PF_val, !mcsema_real_eip !106
  %774 = trunc i32 %762 to i8, !mcsema_real_eip !106
  %775 = tail call i8 @llvm.ctpop.i8(i8 %774), !mcsema_real_eip !106
  %776 = and i8 %775, 1
  %777 = icmp eq i8 %776, 0
  %778 = select i1 %755, i1 %777, i1 %773, !mcsema_real_eip !106
  store i1 %778, i1* %PF_val, !mcsema_real_eip !106
  store i32 %762, i32* %751, !mcsema_real_eip !106
  %779 = load i64* %RBP_val, !mcsema_real_eip !107
  %780 = add i64 %779, -20, !mcsema_real_eip !107
  %781 = inttoptr i64 %780 to i64*, !mcsema_real_eip !107
  %782 = bitcast i64* %781 to i32*
  %783 = load i32* %782, !mcsema_real_eip !107
  store i1 false, i1* %AF_val, !mcsema_real_eip !107
  %784 = trunc i32 %783 to i8, !mcsema_real_eip !107
  %785 = tail call i8 @llvm.ctpop.i8(i8 %784), !mcsema_real_eip !107
  %786 = and i8 %785, 1
  %787 = icmp eq i8 %786, 0
  store i1 %787, i1* %PF_val, !mcsema_real_eip !107
  %788 = icmp eq i32 %783, 0, !mcsema_real_eip !107
  store i1 %788, i1* %ZF_val, !mcsema_real_eip !107
  %789 = icmp slt i32 %783, 0
  store i1 %789, i1* %SF_val, !mcsema_real_eip !107
  store i1 false, i1* %CF_val, !mcsema_real_eip !107
  store i1 false, i1* %OF_val, !mcsema_real_eip !107
  br i1 %788, label %block_0x191, label %block_0x187, !mcsema_real_eip !108

block_0x191:                                      ; preds = %block_0x179
  %790 = load i64* %RBP_val, !mcsema_real_eip !109
  %791 = add i64 %790, -72, !mcsema_real_eip !109
  %792 = inttoptr i64 %791 to i64*, !mcsema_real_eip !109
  %793 = load i64* %792, !mcsema_real_eip !109
  %uadd218 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %793, i64 8)
  %794 = extractvalue { i64, i1 } %uadd218, 0
  %795 = xor i64 %794, %793, !mcsema_real_eip !110
  %796 = and i64 %795, 16, !mcsema_real_eip !110
  %797 = icmp ne i64 %796, 0, !mcsema_real_eip !110
  store i1 %797, i1* %AF_val, !mcsema_real_eip !110
  %798 = icmp slt i64 %794, 0
  store i1 %798, i1* %SF_val, !mcsema_real_eip !110
  %799 = icmp eq i64 %794, 0, !mcsema_real_eip !110
  store i1 %799, i1* %ZF_val, !mcsema_real_eip !110
  %800 = xor i64 %793, -9223372036854775808, !mcsema_real_eip !110
  %801 = and i64 %795, %800, !mcsema_real_eip !110
  %802 = icmp slt i64 %801, 0
  store i1 %802, i1* %OF_val, !mcsema_real_eip !110
  %803 = trunc i64 %794 to i8, !mcsema_real_eip !110
  %804 = tail call i8 @llvm.ctpop.i8(i8 %803), !mcsema_real_eip !110
  %805 = and i8 %804, 1
  %806 = icmp eq i8 %805, 0
  store i1 %806, i1* %PF_val, !mcsema_real_eip !110
  %807 = extractvalue { i64, i1 } %uadd218, 1
  store i1 %807, i1* %CF_val, !mcsema_real_eip !110
  store i64 4, i64* %RDX_val, !mcsema_real_eip !111
  store i64 %794, i64* %RSI_val, !mcsema_real_eip !112
  store i64 0, i64* %RDI_val, !mcsema_real_eip !113
  %808 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %794, i64 4), !mcsema_real_eip !114
  store i64 %808, i64* %RAX_val, !mcsema_real_eip !114
  %809 = load i64* %RBP_val, !mcsema_real_eip !115
  %810 = add i64 %809, -38, !mcsema_real_eip !115
  %811 = inttoptr i64 %810 to i64*, !mcsema_real_eip !115
  %812 = trunc i64 %808 to i16, !mcsema_real_eip !115
  %813 = bitcast i64* %811 to i16*
  store i16 %812, i16* %813, !mcsema_real_eip !115
  %814 = load i64* %RBP_val, !mcsema_real_eip !116
  %815 = add i64 %814, -38, !mcsema_real_eip !116
  %816 = inttoptr i64 %815 to i64*, !mcsema_real_eip !116
  %817 = bitcast i64* %816 to i16*
  %818 = load i16* %817, !mcsema_real_eip !116
  %819 = or i16 %818, 21845, !mcsema_real_eip !117
  %820 = zext i16 %819 to i64, !mcsema_real_eip !117
  store i64 %820, i64* %RAX_val, !mcsema_real_eip !117
  %821 = add i16 %819, 8873
  %822 = xor i16 %821, %819, !mcsema_real_eip !118
  %823 = and i16 %822, 16
  %824 = icmp eq i16 %823, 0
  store i1 %824, i1* %AF_val, !mcsema_real_eip !118
  %825 = trunc i16 %821 to i8, !mcsema_real_eip !118
  %826 = tail call i8 @llvm.ctpop.i8(i8 %825), !mcsema_real_eip !118
  %827 = and i8 %826, 1
  %828 = icmp eq i8 %827, 0
  store i1 %828, i1* %PF_val, !mcsema_real_eip !118
  %829 = icmp eq i16 %821, 0, !mcsema_real_eip !118
  store i1 %829, i1* %ZF_val, !mcsema_real_eip !118
  %830 = icmp slt i16 %821, 0
  store i1 %830, i1* %SF_val, !mcsema_real_eip !118
  %831 = icmp ult i16 %819, -8873, !mcsema_real_eip !118
  store i1 %831, i1* %CF_val, !mcsema_real_eip !118
  %832 = xor i16 %818, -32768, !mcsema_real_eip !118
  %833 = and i16 %822, %832, !mcsema_real_eip !118
  %834 = icmp slt i16 %833, 0
  store i1 %834, i1* %OF_val, !mcsema_real_eip !118
  %835 = load i1* %ZF_val, !mcsema_real_eip !119
  br i1 %835, label %block_0x1bd, label %block_0x1d4, !mcsema_real_eip !119

block_0x187:                                      ; preds = %block_0x179
  store i64 4294967289, i64* %RAX_val, !mcsema_real_eip !120
  br label %block_0x391, !mcsema_real_eip !121

block_0x1d4:                                      ; preds = %block_0x1bd, %block_0x191
  %836 = load i64* %RBP_val, !mcsema_real_eip !122
  %837 = add i64 %836, -20, !mcsema_real_eip !122
  %838 = inttoptr i64 %837 to i64*, !mcsema_real_eip !122
  %839 = bitcast i64* %838 to i32*
  store i32 48059, i32* %839, !mcsema_real_eip !122
  %840 = load i64* %RBP_val, !mcsema_real_eip !123
  %841 = add i64 %840, -72, !mcsema_real_eip !123
  %842 = inttoptr i64 %841 to i64*, !mcsema_real_eip !123
  %843 = load i64* %842, !mcsema_real_eip !123
  %uadd232 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %843, i64 12)
  %844 = extractvalue { i64, i1 } %uadd232, 0
  %845 = xor i64 %844, %843, !mcsema_real_eip !124
  %846 = and i64 %845, 16, !mcsema_real_eip !124
  %847 = icmp ne i64 %846, 0, !mcsema_real_eip !124
  store i1 %847, i1* %AF_val, !mcsema_real_eip !124
  %848 = icmp slt i64 %844, 0
  store i1 %848, i1* %SF_val, !mcsema_real_eip !124
  %849 = icmp eq i64 %844, 0, !mcsema_real_eip !124
  store i1 %849, i1* %ZF_val, !mcsema_real_eip !124
  %850 = xor i64 %843, -9223372036854775808, !mcsema_real_eip !124
  %851 = and i64 %845, %850, !mcsema_real_eip !124
  %852 = icmp slt i64 %851, 0
  store i1 %852, i1* %OF_val, !mcsema_real_eip !124
  %853 = trunc i64 %844 to i8, !mcsema_real_eip !124
  %854 = tail call i8 @llvm.ctpop.i8(i8 %853), !mcsema_real_eip !124
  %855 = and i8 %854, 1
  %856 = icmp eq i8 %855, 0
  store i1 %856, i1* %PF_val, !mcsema_real_eip !124
  %857 = extractvalue { i64, i1 } %uadd232, 1
  store i1 %857, i1* %CF_val, !mcsema_real_eip !124
  store i64 8, i64* %RDX_val, !mcsema_real_eip !125
  store i64 %844, i64* %RSI_val, !mcsema_real_eip !126
  store i64 0, i64* %RDI_val, !mcsema_real_eip !127
  %858 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %844, i64 8), !mcsema_real_eip !128
  store i64 %858, i64* %RAX_val, !mcsema_real_eip !128
  %859 = load i64* %RBP_val, !mcsema_real_eip !129
  %860 = add i64 %859, -44, !mcsema_real_eip !129
  %861 = inttoptr i64 %860 to i64*, !mcsema_real_eip !129
  %862 = trunc i64 %858 to i32, !mcsema_real_eip !129
  %863 = bitcast i64* %861 to i32*
  store i32 %862, i32* %863, !mcsema_real_eip !129
  %864 = load i64* %RBP_val, !mcsema_real_eip !130
  %865 = add i64 %864, -44, !mcsema_real_eip !130
  %866 = inttoptr i64 %865 to i64*, !mcsema_real_eip !130
  %867 = bitcast i64* %866 to i32*
  %868 = load i32* %867, !mcsema_real_eip !130
  %869 = xor i32 %868, -1534560611, !mcsema_real_eip !131
  store i1 false, i1* %CF_val, !mcsema_real_eip !131
  store i1 false, i1* %OF_val, !mcsema_real_eip !131
  %870 = icmp sgt i32 %868, -1
  store i1 %870, i1* %SF_val, !mcsema_real_eip !131
  %871 = icmp eq i32 %868, -1534560611
  store i1 %871, i1* %ZF_val, !mcsema_real_eip !131
  %872 = trunc i32 %869 to i8, !mcsema_real_eip !131
  %873 = tail call i8 @llvm.ctpop.i8(i8 %872), !mcsema_real_eip !131
  %874 = and i8 %873, 1
  %875 = icmp eq i8 %874, 0
  store i1 %875, i1* %PF_val, !mcsema_real_eip !131
  %876 = zext i32 %869 to i64, !mcsema_real_eip !131
  store i64 %876, i64* %RAX_val, !mcsema_real_eip !131
  %877 = load i64* %RBP_val, !mcsema_real_eip !132
  %878 = add i64 %877, -48, !mcsema_real_eip !132
  %879 = inttoptr i64 %878 to i64*, !mcsema_real_eip !132
  %880 = bitcast i64* %879 to i32*
  store i32 %869, i32* %880, !mcsema_real_eip !132
  %881 = load i64* %RBP_val, !mcsema_real_eip !133
  %882 = add i64 %881, -48, !mcsema_real_eip !133
  %883 = inttoptr i64 %882 to i64*, !mcsema_real_eip !133
  %884 = bitcast i64* %883 to i32*
  %885 = load i32* %884, !mcsema_real_eip !133
  %886 = and i32 %885, 32768, !mcsema_real_eip !134
  %887 = icmp ne i32 %886, 0, !mcsema_real_eip !134
  %888 = lshr i32 %885, 16
  store i1 %887, i1* %CF_val, !mcsema_real_eip !134
  %889 = icmp eq i32 %888, 0, !mcsema_real_eip !134
  store i1 %889, i1* %ZF_val, !mcsema_real_eip !134
  store i1 false, i1* %SF_val, !mcsema_real_eip !134
  %890 = trunc i32 %888 to i8, !mcsema_real_eip !134
  %891 = tail call i8 @llvm.ctpop.i8(i8 %890), !mcsema_real_eip !134
  %892 = and i8 %891, 1
  %893 = icmp eq i8 %892, 0
  store i1 %893, i1* %PF_val, !mcsema_real_eip !134
  %894 = zext i32 %888 to i64, !mcsema_real_eip !134
  store i64 %894, i64* %RAX_val, !mcsema_real_eip !134
  %895 = load i64* %RBP_val, !mcsema_real_eip !135
  %896 = add i64 %895, -52, !mcsema_real_eip !135
  %897 = inttoptr i64 %896 to i64*, !mcsema_real_eip !135
  %898 = bitcast i64* %897 to i32*
  store i32 %888, i32* %898, !mcsema_real_eip !135
  %899 = load i64* %RBP_val, !mcsema_real_eip !136
  %900 = add i64 %899, -48, !mcsema_real_eip !136
  %901 = inttoptr i64 %900 to i64*, !mcsema_real_eip !136
  %902 = bitcast i64* %901 to i32*
  %903 = load i32* %902, !mcsema_real_eip !136
  %904 = and i32 %903, 65535
  %905 = zext i32 %904 to i64, !mcsema_real_eip !137
  store i64 %905, i64* %RAX_val, !mcsema_real_eip !137
  %906 = load i64* %RBP_val, !mcsema_real_eip !138
  %907 = add i64 %906, -56, !mcsema_real_eip !138
  %908 = inttoptr i64 %907 to i64*, !mcsema_real_eip !138
  %909 = bitcast i64* %908 to i32*
  store i32 %904, i32* %909, !mcsema_real_eip !138
  %910 = load i64* %RBP_val, !mcsema_real_eip !139
  %911 = add i64 %910, -52, !mcsema_real_eip !139
  %912 = inttoptr i64 %911 to i64*, !mcsema_real_eip !139
  %913 = bitcast i64* %912 to i32*
  %914 = load i32* %913, !mcsema_real_eip !139
  %915 = add i32 %914, -20299
  %916 = xor i32 %915, %914, !mcsema_real_eip !139
  %917 = and i32 %916, 16, !mcsema_real_eip !139
  %918 = icmp ne i32 %917, 0, !mcsema_real_eip !139
  store i1 %918, i1* %AF_val, !mcsema_real_eip !139
  %919 = trunc i32 %915 to i8, !mcsema_real_eip !139
  %920 = tail call i8 @llvm.ctpop.i8(i8 %919), !mcsema_real_eip !139
  %921 = and i8 %920, 1
  %922 = icmp eq i8 %921, 0
  store i1 %922, i1* %PF_val, !mcsema_real_eip !139
  %923 = icmp eq i32 %915, 0, !mcsema_real_eip !139
  store i1 %923, i1* %ZF_val, !mcsema_real_eip !139
  %924 = icmp slt i32 %915, 0
  store i1 %924, i1* %SF_val, !mcsema_real_eip !139
  %925 = icmp ult i32 %914, 20299, !mcsema_real_eip !139
  store i1 %925, i1* %CF_val, !mcsema_real_eip !139
  %926 = and i32 %916, %914, !mcsema_real_eip !139
  %927 = icmp slt i32 %926, 0
  store i1 %927, i1* %OF_val, !mcsema_real_eip !139
  %928 = load i1* %ZF_val, !mcsema_real_eip !140
  br i1 %928, label %block_0x21e, label %block_0x22f, !mcsema_real_eip !140

block_0x1bd:                                      ; preds = %block_0x191
  %929 = load i64* %RBP_val, !mcsema_real_eip !141
  %930 = add i64 %929, -38, !mcsema_real_eip !141
  %931 = inttoptr i64 %930 to i64*, !mcsema_real_eip !141
  %932 = bitcast i64* %931 to i16*
  %933 = load i16* %932, !mcsema_real_eip !141
  %934 = or i16 %933, -21846, !mcsema_real_eip !142
  %935 = zext i16 %934 to i64, !mcsema_real_eip !142
  store i64 %935, i64* %RAX_val, !mcsema_real_eip !142
  %936 = add nsw i16 %934, 325
  %937 = xor i16 %936, %933, !mcsema_real_eip !143
  %938 = and i16 %937, 16
  %939 = icmp eq i16 %938, 0
  store i1 %939, i1* %AF_val, !mcsema_real_eip !143
  %940 = trunc i16 %936 to i8, !mcsema_real_eip !143
  %941 = tail call i8 @llvm.ctpop.i8(i8 %940), !mcsema_real_eip !143
  %942 = and i8 %941, 1
  %943 = icmp eq i8 %942, 0
  store i1 %943, i1* %PF_val, !mcsema_real_eip !143
  %944 = icmp eq i16 %936, 0, !mcsema_real_eip !143
  store i1 %944, i1* %ZF_val, !mcsema_real_eip !143
  %945 = icmp slt i16 %936, 0
  store i1 %945, i1* %SF_val, !mcsema_real_eip !143
  %946 = icmp ult i16 %934, -325, !mcsema_real_eip !143
  store i1 %946, i1* %CF_val, !mcsema_real_eip !143
  store i1 false, i1* %OF_val, !mcsema_real_eip !143
  br i1 %944, label %block_0x1cb, label %block_0x1d4, !mcsema_real_eip !144

block_0x1cb:                                      ; preds = %block_0x1bd
  %947 = load i64* %RBP_val, !mcsema_real_eip !145
  %948 = add i64 %947, -20, !mcsema_real_eip !145
  %949 = inttoptr i64 %948 to i64*, !mcsema_real_eip !145
  %950 = bitcast i64* %949 to i32*
  store i32 43690, i32* %950, !mcsema_real_eip !145
  %951 = load i64* %RBP_val, !mcsema_real_eip !123
  %952 = add i64 %951, -72, !mcsema_real_eip !123
  %953 = inttoptr i64 %952 to i64*, !mcsema_real_eip !123
  %954 = load i64* %953, !mcsema_real_eip !123
  %uadd219 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %954, i64 12)
  %955 = extractvalue { i64, i1 } %uadd219, 0
  %956 = xor i64 %955, %954, !mcsema_real_eip !124
  %957 = and i64 %956, 16, !mcsema_real_eip !124
  %958 = icmp ne i64 %957, 0, !mcsema_real_eip !124
  store i1 %958, i1* %AF_val, !mcsema_real_eip !124
  %959 = icmp slt i64 %955, 0
  store i1 %959, i1* %SF_val, !mcsema_real_eip !124
  %960 = icmp eq i64 %955, 0, !mcsema_real_eip !124
  store i1 %960, i1* %ZF_val, !mcsema_real_eip !124
  %961 = xor i64 %954, -9223372036854775808, !mcsema_real_eip !124
  %962 = and i64 %956, %961, !mcsema_real_eip !124
  %963 = icmp slt i64 %962, 0
  store i1 %963, i1* %OF_val, !mcsema_real_eip !124
  %964 = trunc i64 %955 to i8, !mcsema_real_eip !124
  %965 = tail call i8 @llvm.ctpop.i8(i8 %964), !mcsema_real_eip !124
  %966 = and i8 %965, 1
  %967 = icmp eq i8 %966, 0
  store i1 %967, i1* %PF_val, !mcsema_real_eip !124
  %968 = extractvalue { i64, i1 } %uadd219, 1
  store i1 %968, i1* %CF_val, !mcsema_real_eip !124
  store i64 8, i64* %RDX_val, !mcsema_real_eip !125
  store i64 %955, i64* %RSI_val, !mcsema_real_eip !126
  store i64 0, i64* %RDI_val, !mcsema_real_eip !127
  %969 = tail call x86_64_sysvcc i64 @read_bytes(i64 0, i64 %955, i64 8), !mcsema_real_eip !128
  store i64 %969, i64* %RAX_val, !mcsema_real_eip !128
  %970 = load i64* %RBP_val, !mcsema_real_eip !129
  %971 = add i64 %970, -44, !mcsema_real_eip !129
  %972 = inttoptr i64 %971 to i64*, !mcsema_real_eip !129
  %973 = trunc i64 %969 to i32, !mcsema_real_eip !129
  %974 = bitcast i64* %972 to i32*
  store i32 %973, i32* %974, !mcsema_real_eip !129
  %975 = load i64* %RBP_val, !mcsema_real_eip !130
  %976 = add i64 %975, -44, !mcsema_real_eip !130
  %977 = inttoptr i64 %976 to i64*, !mcsema_real_eip !130
  %978 = bitcast i64* %977 to i32*
  %979 = load i32* %978, !mcsema_real_eip !130
  %980 = xor i32 %979, -1534560611, !mcsema_real_eip !131
  store i1 false, i1* %CF_val, !mcsema_real_eip !131
  store i1 false, i1* %OF_val, !mcsema_real_eip !131
  %981 = icmp sgt i32 %979, -1
  store i1 %981, i1* %SF_val, !mcsema_real_eip !131
  %982 = icmp eq i32 %979, -1534560611
  store i1 %982, i1* %ZF_val, !mcsema_real_eip !131
  %983 = trunc i32 %980 to i8, !mcsema_real_eip !131
  %984 = tail call i8 @llvm.ctpop.i8(i8 %983), !mcsema_real_eip !131
  %985 = and i8 %984, 1
  %986 = icmp eq i8 %985, 0
  store i1 %986, i1* %PF_val, !mcsema_real_eip !131
  %987 = zext i32 %980 to i64, !mcsema_real_eip !131
  store i64 %987, i64* %RAX_val, !mcsema_real_eip !131
  %988 = load i64* %RBP_val, !mcsema_real_eip !132
  %989 = add i64 %988, -48, !mcsema_real_eip !132
  %990 = inttoptr i64 %989 to i64*, !mcsema_real_eip !132
  %991 = bitcast i64* %990 to i32*
  store i32 %980, i32* %991, !mcsema_real_eip !132
  %992 = load i64* %RBP_val, !mcsema_real_eip !133
  %993 = add i64 %992, -48, !mcsema_real_eip !133
  %994 = inttoptr i64 %993 to i64*, !mcsema_real_eip !133
  %995 = bitcast i64* %994 to i32*
  %996 = load i32* %995, !mcsema_real_eip !133
  %997 = and i32 %996, 32768, !mcsema_real_eip !134
  %998 = icmp ne i32 %997, 0, !mcsema_real_eip !134
  %999 = lshr i32 %996, 16
  store i1 %998, i1* %CF_val, !mcsema_real_eip !134
  %1000 = icmp eq i32 %999, 0, !mcsema_real_eip !134
  store i1 %1000, i1* %ZF_val, !mcsema_real_eip !134
  store i1 false, i1* %SF_val, !mcsema_real_eip !134
  %1001 = trunc i32 %999 to i8, !mcsema_real_eip !134
  %1002 = tail call i8 @llvm.ctpop.i8(i8 %1001), !mcsema_real_eip !134
  %1003 = and i8 %1002, 1
  %1004 = icmp eq i8 %1003, 0
  store i1 %1004, i1* %PF_val, !mcsema_real_eip !134
  %1005 = zext i32 %999 to i64, !mcsema_real_eip !134
  store i64 %1005, i64* %RAX_val, !mcsema_real_eip !134
  %1006 = load i64* %RBP_val, !mcsema_real_eip !135
  %1007 = add i64 %1006, -52, !mcsema_real_eip !135
  %1008 = inttoptr i64 %1007 to i64*, !mcsema_real_eip !135
  %1009 = bitcast i64* %1008 to i32*
  store i32 %999, i32* %1009, !mcsema_real_eip !135
  %1010 = load i64* %RBP_val, !mcsema_real_eip !136
  %1011 = add i64 %1010, -48, !mcsema_real_eip !136
  %1012 = inttoptr i64 %1011 to i64*, !mcsema_real_eip !136
  %1013 = bitcast i64* %1012 to i32*
  %1014 = load i32* %1013, !mcsema_real_eip !136
  %1015 = and i32 %1014, 65535
  %1016 = zext i32 %1015 to i64, !mcsema_real_eip !137
  store i64 %1016, i64* %RAX_val, !mcsema_real_eip !137
  %1017 = load i64* %RBP_val, !mcsema_real_eip !138
  %1018 = add i64 %1017, -56, !mcsema_real_eip !138
  %1019 = inttoptr i64 %1018 to i64*, !mcsema_real_eip !138
  %1020 = bitcast i64* %1019 to i32*
  store i32 %1015, i32* %1020, !mcsema_real_eip !138
  %1021 = load i64* %RBP_val, !mcsema_real_eip !139
  %1022 = add i64 %1021, -52, !mcsema_real_eip !139
  %1023 = inttoptr i64 %1022 to i64*, !mcsema_real_eip !139
  %1024 = bitcast i64* %1023 to i32*
  %1025 = load i32* %1024, !mcsema_real_eip !139
  %1026 = add i32 %1025, -20299
  %1027 = xor i32 %1026, %1025, !mcsema_real_eip !139
  %1028 = and i32 %1027, 16, !mcsema_real_eip !139
  %1029 = icmp ne i32 %1028, 0, !mcsema_real_eip !139
  store i1 %1029, i1* %AF_val, !mcsema_real_eip !139
  %1030 = trunc i32 %1026 to i8, !mcsema_real_eip !139
  %1031 = tail call i8 @llvm.ctpop.i8(i8 %1030), !mcsema_real_eip !139
  %1032 = and i8 %1031, 1
  %1033 = icmp eq i8 %1032, 0
  store i1 %1033, i1* %PF_val, !mcsema_real_eip !139
  %1034 = icmp eq i32 %1026, 0, !mcsema_real_eip !139
  store i1 %1034, i1* %ZF_val, !mcsema_real_eip !139
  %1035 = icmp slt i32 %1026, 0
  store i1 %1035, i1* %SF_val, !mcsema_real_eip !139
  %1036 = icmp ult i32 %1025, 20299, !mcsema_real_eip !139
  store i1 %1036, i1* %CF_val, !mcsema_real_eip !139
  %1037 = and i32 %1027, %1025, !mcsema_real_eip !139
  %1038 = icmp slt i32 %1037, 0
  store i1 %1038, i1* %OF_val, !mcsema_real_eip !139
  %1039 = load i1* %ZF_val, !mcsema_real_eip !140
  br i1 %1039, label %block_0x21e, label %block_0x22f, !mcsema_real_eip !140

block_0x22f:                                      ; preds = %block_0x21e, %block_0x1cb, %block_0x1d4
  %1040 = load i64* %RBP_val, !mcsema_real_eip !146
  %1041 = add i64 %1040, -20, !mcsema_real_eip !146
  %1042 = inttoptr i64 %1041 to i64*, !mcsema_real_eip !146
  %1043 = bitcast i64* %1042 to i32*
  store i32 48351, i32* %1043, !mcsema_real_eip !146
  %1044 = load i64* %RBP_val, !mcsema_real_eip !147
  %1045 = add i64 %1044, -72, !mcsema_real_eip !147
  %1046 = inttoptr i64 %1045 to i64*, !mcsema_real_eip !147
  %1047 = load i64* %1046, !mcsema_real_eip !147
  store i64 %1047, i64* %RAX_val, !mcsema_real_eip !147
  %1048 = add i64 %1047, 20, !mcsema_real_eip !148
  %1049 = inttoptr i64 %1048 to i64*, !mcsema_real_eip !148
  %1050 = ptrtoint i64* %1049 to i64, !mcsema_real_eip !148
  store i64 %1050, i64* %RCX_val, !mcsema_real_eip !148
  %1051 = load i64* %RBP_val, !mcsema_real_eip !149
  %1052 = add i64 %1051, -20, !mcsema_real_eip !149
  %1053 = inttoptr i64 %1052 to i64*, !mcsema_real_eip !149
  %1054 = bitcast i64* %1053 to i32*
  %1055 = load i32* %1054, !mcsema_real_eip !149
  %1056 = zext i32 %1055 to i64, !mcsema_real_eip !149
  store i64 8, i64* %RDX_val, !mcsema_real_eip !150
  %1057 = load i64* %RCX_val, !mcsema_real_eip !151
  store i64 %1057, i64* %RSI_val, !mcsema_real_eip !151
  store i64 %1056, i64* %RDI_val, !mcsema_real_eip !152
  %1058 = tail call x86_64_sysvcc i64 @read_bytes(i64 %1056, i64 %1057, i64 8), !mcsema_real_eip !153
  store i64 %1058, i64* %RAX_val, !mcsema_real_eip !153
  %1059 = load i64* %RBP_val, !mcsema_real_eip !154
  %1060 = add i64 %1059, -60, !mcsema_real_eip !154
  %1061 = inttoptr i64 %1060 to i64*, !mcsema_real_eip !154
  %1062 = trunc i64 %1058 to i32, !mcsema_real_eip !154
  %1063 = bitcast i64* %1061 to i32*
  store i32 %1062, i32* %1063, !mcsema_real_eip !154
  %1064 = load i64* %RBP_val, !mcsema_real_eip !155
  %1065 = add i64 %1064, -60, !mcsema_real_eip !155
  %1066 = inttoptr i64 %1065 to i64*, !mcsema_real_eip !155
  %1067 = bitcast i64* %1066 to i32*
  %1068 = load i32* %1067, !mcsema_real_eip !155
  %1069 = add i32 %1068, -3
  %1070 = xor i32 %1069, %1068, !mcsema_real_eip !155
  %1071 = and i32 %1070, 16, !mcsema_real_eip !155
  %1072 = icmp ne i32 %1071, 0, !mcsema_real_eip !155
  store i1 %1072, i1* %AF_val, !mcsema_real_eip !155
  %1073 = trunc i32 %1069 to i8, !mcsema_real_eip !155
  %1074 = tail call i8 @llvm.ctpop.i8(i8 %1073), !mcsema_real_eip !155
  %1075 = and i8 %1074, 1
  %1076 = icmp eq i8 %1075, 0
  store i1 %1076, i1* %PF_val, !mcsema_real_eip !155
  %1077 = icmp eq i32 %1069, 0, !mcsema_real_eip !155
  store i1 %1077, i1* %ZF_val, !mcsema_real_eip !155
  %1078 = icmp slt i32 %1069, 0
  store i1 %1078, i1* %SF_val, !mcsema_real_eip !155
  %1079 = icmp ult i32 %1068, 3, !mcsema_real_eip !155
  store i1 %1079, i1* %CF_val, !mcsema_real_eip !155
  %1080 = and i32 %1070, %1068, !mcsema_real_eip !155
  %1081 = icmp slt i32 %1080, 0
  store i1 %1081, i1* %OF_val, !mcsema_real_eip !155
  store i32 %1069, i32* %1067, !mcsema_real_eip !155
  %1082 = load i64* %RBP_val, !mcsema_real_eip !156
  %1083 = add i64 %1082, -60, !mcsema_real_eip !156
  %1084 = inttoptr i64 %1083 to i64*, !mcsema_real_eip !156
  %1085 = bitcast i64* %1084 to i32*
  %1086 = load i32* %1085, !mcsema_real_eip !156
  %1087 = and i32 %1086, 7, !mcsema_real_eip !157
  %1088 = icmp eq i32 %1087, 0, !mcsema_real_eip !157
  %1089 = trunc i32 %1087 to i8, !mcsema_real_eip !157
  %1090 = tail call i8 @llvm.ctpop.i8(i8 %1089), !mcsema_real_eip !157
  %1091 = and i8 %1090, 1
  %1092 = icmp eq i8 %1091, 0
  %1093 = zext i32 %1087 to i64, !mcsema_real_eip !157
  store i64 %1093, i64* %RAX_val, !mcsema_real_eip !157
  store i1 %1088, i1* %ZF_val, !mcsema_real_eip !158
  store i1 false, i1* %SF_val, !mcsema_real_eip !158
  store i1 %1092, i1* %PF_val, !mcsema_real_eip !158
  store i1 false, i1* %CF_val, !mcsema_real_eip !158
  store i1 false, i1* %OF_val, !mcsema_real_eip !158
  br i1 %1088, label %block_0x26b, label %block_0x261, !mcsema_real_eip !159

block_0x21e:                                      ; preds = %block_0x1cb, %block_0x1d4
  %1094 = load i64* %RBP_val, !mcsema_real_eip !160
  %1095 = add i64 %1094, -20, !mcsema_real_eip !160
  %1096 = inttoptr i64 %1095 to i64*, !mcsema_real_eip !160
  %1097 = bitcast i64* %1096 to i32*
  %1098 = load i32* %1097, !mcsema_real_eip !160
  %1099 = zext i32 %1098 to i64, !mcsema_real_eip !160
  store i64 %1099, i64* %RAX_val, !mcsema_real_eip !160
  %1100 = load i64* %RBP_val, !mcsema_real_eip !161
  %1101 = add i64 %1100, -56, !mcsema_real_eip !161
  %1102 = inttoptr i64 %1101 to i64*, !mcsema_real_eip !161
  %1103 = bitcast i64* %1102 to i32*
  %1104 = load i32* %1103, !mcsema_real_eip !161
  %1105 = sub i32 %1098, %1104, !mcsema_real_eip !161
  %1106 = xor i32 %1105, %1098, !mcsema_real_eip !161
  %1107 = xor i32 %1106, %1104, !mcsema_real_eip !161
  %1108 = and i32 %1107, 16, !mcsema_real_eip !161
  %1109 = icmp ne i32 %1108, 0, !mcsema_real_eip !161
  store i1 %1109, i1* %AF_val, !mcsema_real_eip !161
  %1110 = trunc i32 %1105 to i8, !mcsema_real_eip !161
  %1111 = tail call i8 @llvm.ctpop.i8(i8 %1110), !mcsema_real_eip !161
  %1112 = and i8 %1111, 1
  %1113 = icmp eq i8 %1112, 0
  store i1 %1113, i1* %PF_val, !mcsema_real_eip !161
  %1114 = icmp eq i32 %1098, %1104
  store i1 %1114, i1* %ZF_val, !mcsema_real_eip !161
  %1115 = icmp slt i32 %1105, 0
  store i1 %1115, i1* %SF_val, !mcsema_real_eip !161
  %1116 = icmp ult i32 %1098, %1104, !mcsema_real_eip !161
  store i1 %1116, i1* %CF_val, !mcsema_real_eip !161
  %1117 = xor i32 %1104, %1098, !mcsema_real_eip !161
  %1118 = and i32 %1106, %1117, !mcsema_real_eip !161
  %1119 = icmp slt i32 %1118, 0
  store i1 %1119, i1* %OF_val, !mcsema_real_eip !161
  %1120 = load i1* %ZF_val, !mcsema_real_eip !162
  br i1 %1120, label %block_0x226, label %block_0x22f, !mcsema_real_eip !162

block_0x226:                                      ; preds = %block_0x21e
  %1121 = load i64* %RBP_val, !mcsema_real_eip !163
  %1122 = add i64 %1121, -20, !mcsema_real_eip !163
  %1123 = inttoptr i64 %1122 to i64*, !mcsema_real_eip !163
  %1124 = bitcast i64* %1123 to i32*
  store i32 0, i32* %1124, !mcsema_real_eip !163
  %1125 = load i64* %RBP_val, !mcsema_real_eip !147
  %1126 = add i64 %1125, -72, !mcsema_real_eip !147
  %1127 = inttoptr i64 %1126 to i64*, !mcsema_real_eip !147
  %1128 = load i64* %1127, !mcsema_real_eip !147
  store i64 %1128, i64* %RAX_val, !mcsema_real_eip !147
  %1129 = add i64 %1128, 20, !mcsema_real_eip !148
  %1130 = inttoptr i64 %1129 to i64*, !mcsema_real_eip !148
  %1131 = ptrtoint i64* %1130 to i64, !mcsema_real_eip !148
  store i64 %1131, i64* %RCX_val, !mcsema_real_eip !148
  %1132 = load i64* %RBP_val, !mcsema_real_eip !149
  %1133 = add i64 %1132, -20, !mcsema_real_eip !149
  %1134 = inttoptr i64 %1133 to i64*, !mcsema_real_eip !149
  %1135 = bitcast i64* %1134 to i32*
  %1136 = load i32* %1135, !mcsema_real_eip !149
  %1137 = zext i32 %1136 to i64, !mcsema_real_eip !149
  store i64 8, i64* %RDX_val, !mcsema_real_eip !150
  %1138 = load i64* %RCX_val, !mcsema_real_eip !151
  store i64 %1138, i64* %RSI_val, !mcsema_real_eip !151
  store i64 %1137, i64* %RDI_val, !mcsema_real_eip !152
  %1139 = tail call x86_64_sysvcc i64 @read_bytes(i64 %1137, i64 %1138, i64 8), !mcsema_real_eip !153
  store i64 %1139, i64* %RAX_val, !mcsema_real_eip !153
  %1140 = load i64* %RBP_val, !mcsema_real_eip !154
  %1141 = add i64 %1140, -60, !mcsema_real_eip !154
  %1142 = inttoptr i64 %1141 to i64*, !mcsema_real_eip !154
  %1143 = trunc i64 %1139 to i32, !mcsema_real_eip !154
  %1144 = bitcast i64* %1142 to i32*
  store i32 %1143, i32* %1144, !mcsema_real_eip !154
  %1145 = load i64* %RBP_val, !mcsema_real_eip !155
  %1146 = add i64 %1145, -60, !mcsema_real_eip !155
  %1147 = inttoptr i64 %1146 to i64*, !mcsema_real_eip !155
  %1148 = bitcast i64* %1147 to i32*
  %1149 = load i32* %1148, !mcsema_real_eip !155
  %1150 = add i32 %1149, -3
  %1151 = xor i32 %1150, %1149, !mcsema_real_eip !155
  %1152 = and i32 %1151, 16, !mcsema_real_eip !155
  %1153 = icmp ne i32 %1152, 0, !mcsema_real_eip !155
  store i1 %1153, i1* %AF_val, !mcsema_real_eip !155
  %1154 = trunc i32 %1150 to i8, !mcsema_real_eip !155
  %1155 = tail call i8 @llvm.ctpop.i8(i8 %1154), !mcsema_real_eip !155
  %1156 = and i8 %1155, 1
  %1157 = icmp eq i8 %1156, 0
  store i1 %1157, i1* %PF_val, !mcsema_real_eip !155
  %1158 = icmp eq i32 %1150, 0, !mcsema_real_eip !155
  store i1 %1158, i1* %ZF_val, !mcsema_real_eip !155
  %1159 = icmp slt i32 %1150, 0
  store i1 %1159, i1* %SF_val, !mcsema_real_eip !155
  %1160 = icmp ult i32 %1149, 3, !mcsema_real_eip !155
  store i1 %1160, i1* %CF_val, !mcsema_real_eip !155
  %1161 = and i32 %1151, %1149, !mcsema_real_eip !155
  %1162 = icmp slt i32 %1161, 0
  store i1 %1162, i1* %OF_val, !mcsema_real_eip !155
  store i32 %1150, i32* %1148, !mcsema_real_eip !155
  %1163 = load i64* %RBP_val, !mcsema_real_eip !156
  %1164 = add i64 %1163, -60, !mcsema_real_eip !156
  %1165 = inttoptr i64 %1164 to i64*, !mcsema_real_eip !156
  %1166 = bitcast i64* %1165 to i32*
  %1167 = load i32* %1166, !mcsema_real_eip !156
  %1168 = and i32 %1167, 7, !mcsema_real_eip !157
  %1169 = icmp eq i32 %1168, 0, !mcsema_real_eip !157
  %1170 = trunc i32 %1168 to i8, !mcsema_real_eip !157
  %1171 = tail call i8 @llvm.ctpop.i8(i8 %1170), !mcsema_real_eip !157
  %1172 = and i8 %1171, 1
  %1173 = icmp eq i8 %1172, 0
  %1174 = zext i32 %1168 to i64, !mcsema_real_eip !157
  store i64 %1174, i64* %RAX_val, !mcsema_real_eip !157
  store i1 %1169, i1* %ZF_val, !mcsema_real_eip !158
  store i1 false, i1* %SF_val, !mcsema_real_eip !158
  store i1 %1173, i1* %PF_val, !mcsema_real_eip !158
  store i1 false, i1* %CF_val, !mcsema_real_eip !158
  store i1 false, i1* %OF_val, !mcsema_real_eip !158
  br i1 %1169, label %block_0x26b, label %block_0x261, !mcsema_real_eip !159

block_0x26b:                                      ; preds = %block_0x226, %block_0x22f
  %1175 = load i64* %RBP_val, !mcsema_real_eip !164
  %1176 = add i64 %1175, -60, !mcsema_real_eip !164
  %1177 = inttoptr i64 %1176 to i64*, !mcsema_real_eip !164
  %1178 = bitcast i64* %1177 to i32*
  %1179 = load i32* %1178, !mcsema_real_eip !164
  %1180 = xor i32 %1179, -2147483648
  store i1 false, i1* %AF_val, !mcsema_real_eip !164
  %1181 = icmp sgt i32 %1179, -1
  store i1 %1181, i1* %SF_val, !mcsema_real_eip !164
  %1182 = icmp eq i32 %1179, -2147483648
  store i1 %1182, i1* %ZF_val, !mcsema_real_eip !164
  %1183 = icmp slt i32 %1179, 0
  store i1 %1183, i1* %OF_val, !mcsema_real_eip !164
  %1184 = trunc i32 %1179 to i8, !mcsema_real_eip !164
  %1185 = tail call i8 @llvm.ctpop.i8(i8 %1184), !mcsema_real_eip !164
  %1186 = and i8 %1185, 1
  %1187 = icmp eq i8 %1186, 0
  store i1 %1187, i1* %PF_val, !mcsema_real_eip !164
  %1188 = icmp ult i32 %1180, %1179, !mcsema_real_eip !164
  store i1 %1188, i1* %CF_val, !mcsema_real_eip !164
  store i32 %1180, i32* %1178, !mcsema_real_eip !164
  %1189 = load i64* %RBP_val, !mcsema_real_eip !165
  %1190 = add i64 %1189, -60, !mcsema_real_eip !165
  %1191 = inttoptr i64 %1190 to i64*, !mcsema_real_eip !165
  %1192 = bitcast i64* %1191 to i32*
  %1193 = load i32* %1192, !mcsema_real_eip !165
  %1194 = add i32 %1193, -268435455
  %1195 = xor i32 %1194, %1193, !mcsema_real_eip !165
  %1196 = and i32 %1195, 16
  %1197 = icmp eq i32 %1196, 0
  store i1 %1197, i1* %AF_val, !mcsema_real_eip !165
  %1198 = trunc i32 %1194 to i8, !mcsema_real_eip !165
  %1199 = tail call i8 @llvm.ctpop.i8(i8 %1198), !mcsema_real_eip !165
  %1200 = and i8 %1199, 1
  %1201 = icmp eq i8 %1200, 0
  store i1 %1201, i1* %PF_val, !mcsema_real_eip !165
  %1202 = icmp eq i32 %1194, 0, !mcsema_real_eip !165
  store i1 %1202, i1* %ZF_val, !mcsema_real_eip !165
  %1203 = icmp slt i32 %1194, 0
  store i1 %1203, i1* %SF_val, !mcsema_real_eip !165
  %1204 = icmp ult i32 %1193, 268435455, !mcsema_real_eip !165
  store i1 %1204, i1* %CF_val, !mcsema_real_eip !165
  %1205 = and i32 %1195, %1193, !mcsema_real_eip !165
  %1206 = icmp slt i32 %1205, 0
  store i1 %1206, i1* %OF_val, !mcsema_real_eip !165
  %1207 = load i1* %ZF_val, !mcsema_real_eip !166
  %1208 = or i1 %1204, %1207, !mcsema_real_eip !166
  br i1 %1208, label %block_0x285, label %block_0x27b, !mcsema_real_eip !166

block_0x261:                                      ; preds = %block_0x226, %block_0x22f
  store i64 4294967275, i64* %RAX_val, !mcsema_real_eip !167
  br label %block_0x391, !mcsema_real_eip !168

block_0x285:                                      ; preds = %block_0x26b
  %1209 = load i64* %RBP_val, !mcsema_real_eip !169
  %1210 = add i64 %1209, -60, !mcsema_real_eip !169
  %1211 = inttoptr i64 %1210 to i64*, !mcsema_real_eip !169
  %1212 = bitcast i64* %1211 to i32*
  %1213 = load i32* %1212, !mcsema_real_eip !169
  %1214 = xor i32 %1213, 13631488, !mcsema_real_eip !169
  store i1 false, i1* %CF_val, !mcsema_real_eip !169
  store i1 false, i1* %OF_val, !mcsema_real_eip !169
  %1215 = icmp slt i32 %1213, 0
  store i1 %1215, i1* %SF_val, !mcsema_real_eip !169
  %1216 = icmp eq i32 %1213, 13631488
  store i1 %1216, i1* %ZF_val, !mcsema_real_eip !169
  %1217 = trunc i32 %1213 to i8, !mcsema_real_eip !169
  %1218 = tail call i8 @llvm.ctpop.i8(i8 %1217), !mcsema_real_eip !169
  %1219 = and i8 %1218, 1
  %1220 = icmp eq i8 %1219, 0
  store i1 %1220, i1* %PF_val, !mcsema_real_eip !169
  store i32 %1214, i32* %1212, !mcsema_real_eip !169
  %1221 = load i64* %RBP_val, !mcsema_real_eip !170
  %1222 = add i64 %1221, -60, !mcsema_real_eip !170
  %1223 = inttoptr i64 %1222 to i64*, !mcsema_real_eip !170
  %1224 = bitcast i64* %1223 to i32*
  %1225 = load i32* %1224, !mcsema_real_eip !170
  %1226 = and i32 %1225, 8, !mcsema_real_eip !170
  %1227 = icmp ne i32 %1226, 0, !mcsema_real_eip !170
  %1228 = lshr i32 %1225, 4
  store i1 %1227, i1* %CF_val, !mcsema_real_eip !170
  %1229 = icmp eq i32 %1228, 0, !mcsema_real_eip !170
  store i1 %1229, i1* %ZF_val, !mcsema_real_eip !170
  store i1 false, i1* %SF_val, !mcsema_real_eip !170
  %1230 = trunc i32 %1228 to i8, !mcsema_real_eip !170
  %1231 = tail call i8 @llvm.ctpop.i8(i8 %1230), !mcsema_real_eip !170
  %1232 = and i8 %1231, 1
  %1233 = icmp eq i8 %1232, 0
  store i1 %1233, i1* %PF_val, !mcsema_real_eip !170
  store i32 %1228, i32* %1224, !mcsema_real_eip !170
  %1234 = load i64* %RBP_val, !mcsema_real_eip !171
  %1235 = add i64 %1234, -60, !mcsema_real_eip !171
  %1236 = inttoptr i64 %1235 to i64*, !mcsema_real_eip !171
  %1237 = bitcast i64* %1236 to i32*
  %1238 = load i32* %1237, !mcsema_real_eip !171
  %1239 = add i32 %1238, -226
  %1240 = xor i32 %1239, %1238, !mcsema_real_eip !171
  %1241 = and i32 %1240, 16, !mcsema_real_eip !171
  %1242 = icmp ne i32 %1241, 0, !mcsema_real_eip !171
  store i1 %1242, i1* %AF_val, !mcsema_real_eip !171
  %1243 = trunc i32 %1239 to i8, !mcsema_real_eip !171
  %1244 = tail call i8 @llvm.ctpop.i8(i8 %1243), !mcsema_real_eip !171
  %1245 = and i8 %1244, 1
  %1246 = icmp eq i8 %1245, 0
  store i1 %1246, i1* %PF_val, !mcsema_real_eip !171
  %1247 = icmp eq i32 %1239, 0, !mcsema_real_eip !171
  store i1 %1247, i1* %ZF_val, !mcsema_real_eip !171
  %1248 = icmp slt i32 %1239, 0
  store i1 %1248, i1* %SF_val, !mcsema_real_eip !171
  %1249 = icmp ult i32 %1238, 226, !mcsema_real_eip !171
  store i1 %1249, i1* %CF_val, !mcsema_real_eip !171
  %1250 = and i32 %1240, %1238, !mcsema_real_eip !171
  %1251 = icmp slt i32 %1250, 0
  store i1 %1251, i1* %OF_val, !mcsema_real_eip !171
  store i32 %1239, i32* %1237, !mcsema_real_eip !171
  %1252 = load i64* %RBP_val, !mcsema_real_eip !172
  %1253 = add i64 %1252, -60, !mcsema_real_eip !172
  %1254 = inttoptr i64 %1253 to i64*, !mcsema_real_eip !172
  %1255 = bitcast i64* %1254 to i32*
  %1256 = load i32* %1255, !mcsema_real_eip !172
  %1257 = zext i32 %1256 to i64, !mcsema_real_eip !172
  %1258 = mul i64 %1257, 3518437209, !mcsema_real_eip !173
  %1259 = lshr i64 %1258, 32, !mcsema_real_eip !173
  %1260 = icmp ne i64 %1259, 0
  store i1 %1260, i1* %OF_val, !mcsema_real_eip !173
  store i64 %1259, i64* %RDX_val, !mcsema_real_eip !173
  %1261 = and i64 %1258, 17592186044416
  %1262 = icmp ne i64 %1261, 0
  %1263 = lshr i64 %1258, 45
  store i1 %1262, i1* %CF_val, !mcsema_real_eip !174
  %1264 = icmp eq i64 %1263, 0
  store i1 %1264, i1* %ZF_val, !mcsema_real_eip !174
  store i1 false, i1* %SF_val, !mcsema_real_eip !174
  %1265 = trunc i64 %1263 to i8
  %1266 = tail call i8 @llvm.ctpop.i8(i8 %1265), !mcsema_real_eip !174
  %1267 = and i8 %1266, 1
  %1268 = icmp eq i8 %1267, 0
  store i1 %1268, i1* %PF_val, !mcsema_real_eip !174
  store i64 %1263, i64* %RAX_val, !mcsema_real_eip !174
  %1269 = load i64* %RBP_val, !mcsema_real_eip !175
  %1270 = add i64 %1269, -60, !mcsema_real_eip !175
  %1271 = inttoptr i64 %1270 to i64*, !mcsema_real_eip !175
  %1272 = trunc i64 %1263 to i32, !mcsema_real_eip !175
  %1273 = bitcast i64* %1271 to i32*
  store i32 %1272, i32* %1273, !mcsema_real_eip !175
  %1274 = load i64* %RBP_val, !mcsema_real_eip !176
  %1275 = add i64 %1274, -60, !mcsema_real_eip !176
  %1276 = inttoptr i64 %1275 to i64*, !mcsema_real_eip !176
  %1277 = bitcast i64* %1276 to i32*
  %1278 = load i32* %1277, !mcsema_real_eip !176
  %1279 = add i32 %1278, -3
  %1280 = xor i32 %1279, %1278, !mcsema_real_eip !176
  %1281 = and i32 %1280, 16, !mcsema_real_eip !176
  %1282 = icmp ne i32 %1281, 0, !mcsema_real_eip !176
  store i1 %1282, i1* %AF_val, !mcsema_real_eip !176
  %1283 = trunc i32 %1279 to i8, !mcsema_real_eip !176
  %1284 = tail call i8 @llvm.ctpop.i8(i8 %1283), !mcsema_real_eip !176
  %1285 = and i8 %1284, 1
  %1286 = icmp eq i8 %1285, 0
  store i1 %1286, i1* %PF_val, !mcsema_real_eip !176
  %1287 = icmp eq i32 %1279, 0, !mcsema_real_eip !176
  store i1 %1287, i1* %ZF_val, !mcsema_real_eip !176
  %1288 = icmp slt i32 %1279, 0
  store i1 %1288, i1* %SF_val, !mcsema_real_eip !176
  %1289 = icmp ult i32 %1278, 3, !mcsema_real_eip !176
  store i1 %1289, i1* %CF_val, !mcsema_real_eip !176
  %1290 = and i32 %1280, %1278, !mcsema_real_eip !176
  %1291 = icmp slt i32 %1290, 0
  store i1 %1291, i1* %OF_val, !mcsema_real_eip !176
  %1292 = load i1* %ZF_val, !mcsema_real_eip !177
  %1293 = load i64* %RBP_val, !mcsema_real_eip !178
  br i1 %1292, label %block_0x2b7, label %block_0x2af, !mcsema_real_eip !177

block_0x27b:                                      ; preds = %block_0x26b
  store i64 4294967274, i64* %RAX_val, !mcsema_real_eip !179
  br label %block_0x391, !mcsema_real_eip !180

block_0x2b7:                                      ; preds = %block_0x285
  %1294 = add i64 %1293, -72, !mcsema_real_eip !178
  %1295 = inttoptr i64 %1294 to i64*, !mcsema_real_eip !178
  %1296 = load i64* %1295, !mcsema_real_eip !178
  store i64 %1296, i64* %RAX_val, !mcsema_real_eip !178
  %1297 = add i64 %1296, 28, !mcsema_real_eip !181
  %1298 = inttoptr i64 %1297 to i64*, !mcsema_real_eip !181
  %1299 = ptrtoint i64* %1298 to i64, !mcsema_real_eip !181
  store i64 %1299, i64* %RCX_val, !mcsema_real_eip !181
  %1300 = load i64* %RBP_val, !mcsema_real_eip !182
  %1301 = add i64 %1300, -20, !mcsema_real_eip !182
  %1302 = inttoptr i64 %1301 to i64*, !mcsema_real_eip !182
  %1303 = bitcast i64* %1302 to i32*
  %1304 = load i32* %1303, !mcsema_real_eip !182
  %1305 = zext i32 %1304 to i64, !mcsema_real_eip !182
  store i64 4, i64* %RDX_val, !mcsema_real_eip !183
  %1306 = load i64* %RCX_val, !mcsema_real_eip !184
  store i64 %1306, i64* %RSI_val, !mcsema_real_eip !184
  store i64 %1305, i64* %RDI_val, !mcsema_real_eip !185
  %1307 = tail call x86_64_sysvcc i64 @read_bytes(i64 %1305, i64 %1306, i64 4), !mcsema_real_eip !186
  store i64 %1307, i64* %RAX_val, !mcsema_real_eip !186
  %1308 = load i64* %RBP_val, !mcsema_real_eip !187
  %1309 = add i64 %1308, -64, !mcsema_real_eip !187
  %1310 = inttoptr i64 %1309 to i64*, !mcsema_real_eip !187
  %1311 = trunc i64 %1307 to i32, !mcsema_real_eip !187
  %1312 = bitcast i64* %1310 to i32*
  store i32 %1311, i32* %1312, !mcsema_real_eip !187
  %1313 = load i64* %RBP_val, !mcsema_real_eip !188
  %1314 = add i64 %1313, -72, !mcsema_real_eip !188
  %1315 = inttoptr i64 %1314 to i64*, !mcsema_real_eip !188
  %1316 = load i64* %1315, !mcsema_real_eip !188
  %uadd220 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1316, i64 28)
  %1317 = extractvalue { i64, i1 } %uadd220, 0
  %1318 = xor i64 %1317, %1316, !mcsema_real_eip !189
  %1319 = and i64 %1318, 16
  %1320 = icmp eq i64 %1319, 0
  store i1 %1320, i1* %AF_val, !mcsema_real_eip !189
  %1321 = icmp slt i64 %1317, 0
  store i1 %1321, i1* %SF_val, !mcsema_real_eip !189
  %1322 = icmp eq i64 %1317, 0, !mcsema_real_eip !189
  store i1 %1322, i1* %ZF_val, !mcsema_real_eip !189
  %1323 = xor i64 %1316, -9223372036854775808, !mcsema_real_eip !189
  %1324 = and i64 %1318, %1323, !mcsema_real_eip !189
  %1325 = icmp slt i64 %1324, 0
  store i1 %1325, i1* %OF_val, !mcsema_real_eip !189
  %1326 = trunc i64 %1317 to i8, !mcsema_real_eip !189
  %1327 = tail call i8 @llvm.ctpop.i8(i8 %1326), !mcsema_real_eip !189
  %1328 = and i8 %1327, 1
  %1329 = icmp eq i8 %1328, 0
  store i1 %1329, i1* %PF_val, !mcsema_real_eip !189
  %1330 = extractvalue { i64, i1 } %uadd220, 1
  store i1 %1330, i1* %CF_val, !mcsema_real_eip !189
  store i64 %1317, i64* %RAX_val, !mcsema_real_eip !189
  %1331 = inttoptr i64 %1317 to i64*, !mcsema_real_eip !190
  %1332 = bitcast i64* %1331 to i8*
  %1333 = load i8* %1332, !mcsema_real_eip !190
  %1334 = zext i8 %1333 to i64
  store i64 %1334, i64* %RAX_val, !mcsema_real_eip !190
  %1335 = add i8 %1333, -100
  %1336 = xor i8 %1335, %1333, !mcsema_real_eip !191
  %1337 = and i8 %1336, 16, !mcsema_real_eip !191
  %1338 = icmp ne i8 %1337, 0, !mcsema_real_eip !191
  store i1 %1338, i1* %AF_val, !mcsema_real_eip !191
  %1339 = tail call i8 @llvm.ctpop.i8(i8 %1335), !mcsema_real_eip !191
  %1340 = and i8 %1339, 1
  %1341 = icmp eq i8 %1340, 0
  store i1 %1341, i1* %PF_val, !mcsema_real_eip !191
  %1342 = icmp eq i8 %1335, 0, !mcsema_real_eip !191
  store i1 %1342, i1* %ZF_val, !mcsema_real_eip !191
  %1343 = icmp slt i8 %1335, 0
  store i1 %1343, i1* %SF_val, !mcsema_real_eip !191
  %1344 = icmp ult i8 %1333, 100, !mcsema_real_eip !191
  store i1 %1344, i1* %CF_val, !mcsema_real_eip !191
  %1345 = and i8 %1336, %1333, !mcsema_real_eip !191
  %1346 = icmp slt i8 %1345, 0
  store i1 %1346, i1* %OF_val, !mcsema_real_eip !191
  %1347 = load i1* %ZF_val, !mcsema_real_eip !192
  br i1 %1347, label %block_0x2e3, label %block_0x300, !mcsema_real_eip !192

block_0x2af:                                      ; preds = %block_0x285
  %1348 = add i64 %1293, -60, !mcsema_real_eip !193
  %1349 = inttoptr i64 %1348 to i64*, !mcsema_real_eip !193
  %1350 = bitcast i64* %1349 to i32*
  %1351 = load i32* %1350, !mcsema_real_eip !193
  %1352 = zext i32 %1351 to i64, !mcsema_real_eip !193
  store i64 %1352, i64* %RAX_val, !mcsema_real_eip !193
  br label %block_0x391, !mcsema_real_eip !194

block_0x300:                                      ; preds = %block_0x2e3, %block_0x2b7
  %1353 = load i64* %RBP_val, !mcsema_real_eip !195
  %1354 = add i64 %1353, -72, !mcsema_real_eip !195
  %1355 = inttoptr i64 %1354 to i64*, !mcsema_real_eip !195
  %1356 = load i64* %1355, !mcsema_real_eip !195
  %uadd223 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1356, i64 28)
  %1357 = extractvalue { i64, i1 } %uadd223, 0
  %1358 = xor i64 %1357, %1356, !mcsema_real_eip !196
  %1359 = and i64 %1358, 16
  %1360 = icmp eq i64 %1359, 0
  store i1 %1360, i1* %AF_val, !mcsema_real_eip !196
  %1361 = icmp slt i64 %1357, 0
  store i1 %1361, i1* %SF_val, !mcsema_real_eip !196
  %1362 = icmp eq i64 %1357, 0, !mcsema_real_eip !196
  store i1 %1362, i1* %ZF_val, !mcsema_real_eip !196
  %1363 = xor i64 %1356, -9223372036854775808, !mcsema_real_eip !196
  %1364 = and i64 %1358, %1363, !mcsema_real_eip !196
  %1365 = icmp slt i64 %1364, 0
  store i1 %1365, i1* %OF_val, !mcsema_real_eip !196
  %1366 = trunc i64 %1357 to i8, !mcsema_real_eip !196
  %1367 = tail call i8 @llvm.ctpop.i8(i8 %1366), !mcsema_real_eip !196
  %1368 = and i8 %1367, 1
  %1369 = icmp eq i8 %1368, 0
  store i1 %1369, i1* %PF_val, !mcsema_real_eip !196
  %1370 = extractvalue { i64, i1 } %uadd223, 1
  store i1 %1370, i1* %CF_val, !mcsema_real_eip !196
  store i64 %1357, i64* %RAX_val, !mcsema_real_eip !196
  %1371 = inttoptr i64 %1357 to i64*, !mcsema_real_eip !197
  %1372 = bitcast i64* %1371 to i8*
  %1373 = load i8* %1372, !mcsema_real_eip !197
  %1374 = zext i8 %1373 to i64
  store i64 %1374, i64* %RDX_val, !mcsema_real_eip !197
  %1375 = load i64* %RBP_val, !mcsema_real_eip !198
  %1376 = add i64 %1375, -72, !mcsema_real_eip !198
  %1377 = inttoptr i64 %1376 to i64*, !mcsema_real_eip !198
  %1378 = load i64* %1377, !mcsema_real_eip !198
  %uadd224 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1378, i64 29)
  %1379 = extractvalue { i64, i1 } %uadd224, 0
  %1380 = xor i64 %1379, %1378, !mcsema_real_eip !199
  %1381 = and i64 %1380, 16
  %1382 = icmp eq i64 %1381, 0
  store i1 %1382, i1* %AF_val, !mcsema_real_eip !199
  %1383 = icmp slt i64 %1379, 0
  store i1 %1383, i1* %SF_val, !mcsema_real_eip !199
  %1384 = icmp eq i64 %1379, 0, !mcsema_real_eip !199
  store i1 %1384, i1* %ZF_val, !mcsema_real_eip !199
  %1385 = xor i64 %1378, -9223372036854775808, !mcsema_real_eip !199
  %1386 = and i64 %1380, %1385, !mcsema_real_eip !199
  %1387 = icmp slt i64 %1386, 0
  store i1 %1387, i1* %OF_val, !mcsema_real_eip !199
  %1388 = trunc i64 %1379 to i8, !mcsema_real_eip !199
  %1389 = tail call i8 @llvm.ctpop.i8(i8 %1388), !mcsema_real_eip !199
  %1390 = and i8 %1389, 1
  %1391 = icmp eq i8 %1390, 0
  store i1 %1391, i1* %PF_val, !mcsema_real_eip !199
  %1392 = extractvalue { i64, i1 } %uadd224, 1
  store i1 %1392, i1* %CF_val, !mcsema_real_eip !199
  store i64 %1379, i64* %RAX_val, !mcsema_real_eip !199
  %1393 = inttoptr i64 %1379 to i64*, !mcsema_real_eip !200
  %1394 = bitcast i64* %1393 to i8*
  %1395 = load i8* %1394, !mcsema_real_eip !200
  %1396 = zext i8 %1395 to i64
  store i64 %1396, i64* %RAX_val, !mcsema_real_eip !200
  %1397 = load i64* %RDX_val, !mcsema_real_eip !201
  %1398 = trunc i64 %1397 to i8, !mcsema_real_eip !201
  %1399 = sub i8 %1398, %1395, !mcsema_real_eip !201
  %1400 = xor i8 %1399, %1398, !mcsema_real_eip !201
  %1401 = xor i8 %1400, %1395, !mcsema_real_eip !201
  %1402 = and i8 %1401, 16, !mcsema_real_eip !201
  %1403 = icmp ne i8 %1402, 0, !mcsema_real_eip !201
  store i1 %1403, i1* %AF_val, !mcsema_real_eip !201
  %1404 = tail call i8 @llvm.ctpop.i8(i8 %1399), !mcsema_real_eip !201
  %1405 = and i8 %1404, 1
  %1406 = icmp eq i8 %1405, 0
  store i1 %1406, i1* %PF_val, !mcsema_real_eip !201
  %1407 = icmp eq i8 %1398, %1395
  store i1 %1407, i1* %ZF_val, !mcsema_real_eip !201
  %1408 = icmp slt i8 %1399, 0
  store i1 %1408, i1* %SF_val, !mcsema_real_eip !201
  %1409 = icmp ult i8 %1398, %1395, !mcsema_real_eip !201
  store i1 %1409, i1* %CF_val, !mcsema_real_eip !201
  %1410 = xor i8 %1398, %1395, !mcsema_real_eip !201
  %1411 = and i8 %1400, %1410, !mcsema_real_eip !201
  %1412 = icmp slt i8 %1411, 0
  store i1 %1412, i1* %OF_val, !mcsema_real_eip !201
  %1413 = load i1* %ZF_val, !mcsema_real_eip !202
  %1414 = load i64* %RBP_val, !mcsema_real_eip !203
  br i1 %1413, label %block_0x31a, label %block_0x388, !mcsema_real_eip !202

block_0x2e3:                                      ; preds = %block_0x2b7
  %1415 = load i64* %RBP_val, !mcsema_real_eip !204
  %1416 = add i64 %1415, -72, !mcsema_real_eip !204
  %1417 = inttoptr i64 %1416 to i64*, !mcsema_real_eip !204
  %1418 = load i64* %1417, !mcsema_real_eip !204
  %uadd221 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1418, i64 29)
  %1419 = extractvalue { i64, i1 } %uadd221, 0
  %1420 = xor i64 %1419, %1418, !mcsema_real_eip !205
  %1421 = and i64 %1420, 16
  %1422 = icmp eq i64 %1421, 0
  store i1 %1422, i1* %AF_val, !mcsema_real_eip !205
  %1423 = icmp slt i64 %1419, 0
  store i1 %1423, i1* %SF_val, !mcsema_real_eip !205
  %1424 = icmp eq i64 %1419, 0, !mcsema_real_eip !205
  store i1 %1424, i1* %ZF_val, !mcsema_real_eip !205
  %1425 = xor i64 %1418, -9223372036854775808, !mcsema_real_eip !205
  %1426 = and i64 %1420, %1425, !mcsema_real_eip !205
  %1427 = icmp slt i64 %1426, 0
  store i1 %1427, i1* %OF_val, !mcsema_real_eip !205
  %1428 = trunc i64 %1419 to i8, !mcsema_real_eip !205
  %1429 = tail call i8 @llvm.ctpop.i8(i8 %1428), !mcsema_real_eip !205
  %1430 = and i8 %1429, 1
  %1431 = icmp eq i8 %1430, 0
  store i1 %1431, i1* %PF_val, !mcsema_real_eip !205
  %1432 = extractvalue { i64, i1 } %uadd221, 1
  store i1 %1432, i1* %CF_val, !mcsema_real_eip !205
  store i64 %1419, i64* %RAX_val, !mcsema_real_eip !205
  %1433 = inttoptr i64 %1419 to i64*, !mcsema_real_eip !206
  %1434 = bitcast i64* %1433 to i8*
  %1435 = load i8* %1434, !mcsema_real_eip !206
  %1436 = zext i8 %1435 to i64
  store i64 %1436, i64* %RAX_val, !mcsema_real_eip !206
  %1437 = add i8 %1435, -100
  %1438 = xor i8 %1437, %1435, !mcsema_real_eip !207
  %1439 = and i8 %1438, 16, !mcsema_real_eip !207
  %1440 = icmp ne i8 %1439, 0, !mcsema_real_eip !207
  store i1 %1440, i1* %AF_val, !mcsema_real_eip !207
  %1441 = tail call i8 @llvm.ctpop.i8(i8 %1437), !mcsema_real_eip !207
  %1442 = and i8 %1441, 1
  %1443 = icmp eq i8 %1442, 0
  store i1 %1443, i1* %PF_val, !mcsema_real_eip !207
  %1444 = icmp eq i8 %1437, 0, !mcsema_real_eip !207
  store i1 %1444, i1* %ZF_val, !mcsema_real_eip !207
  %1445 = icmp slt i8 %1437, 0
  store i1 %1445, i1* %SF_val, !mcsema_real_eip !207
  %1446 = icmp ult i8 %1435, 100, !mcsema_real_eip !207
  store i1 %1446, i1* %CF_val, !mcsema_real_eip !207
  %1447 = and i8 %1438, %1435, !mcsema_real_eip !207
  %1448 = icmp slt i8 %1447, 0
  store i1 %1448, i1* %OF_val, !mcsema_real_eip !207
  %1449 = load i1* %ZF_val, !mcsema_real_eip !208
  br i1 %1449, label %block_0x2f2, label %block_0x300, !mcsema_real_eip !208

block_0x2f2:                                      ; preds = %block_0x2e3
  %1450 = load i64* %RBP_val, !mcsema_real_eip !209
  %1451 = add i64 %1450, -20, !mcsema_real_eip !209
  %1452 = inttoptr i64 %1451 to i64*, !mcsema_real_eip !209
  %1453 = bitcast i64* %1452 to i32*
  %1454 = load i32* %1453, !mcsema_real_eip !209
  %1455 = zext i32 %1454 to i64, !mcsema_real_eip !209
  store i64 %1455, i64* %RAX_val, !mcsema_real_eip !209
  %1456 = load i64* %RBP_val, !mcsema_real_eip !210
  %1457 = add i64 %1456, -64, !mcsema_real_eip !210
  %1458 = inttoptr i64 %1457 to i64*, !mcsema_real_eip !210
  %1459 = bitcast i64* %1458 to i32*
  %1460 = load i32* %1459, !mcsema_real_eip !210
  %1461 = xor i32 %1460, %1454, !mcsema_real_eip !210
  store i1 false, i1* %CF_val, !mcsema_real_eip !210
  store i1 false, i1* %OF_val, !mcsema_real_eip !210
  %1462 = icmp slt i32 %1461, 0
  store i1 %1462, i1* %SF_val, !mcsema_real_eip !210
  %1463 = icmp eq i32 %1460, %1454
  store i1 %1463, i1* %ZF_val, !mcsema_real_eip !210
  %1464 = trunc i32 %1461 to i8, !mcsema_real_eip !210
  %1465 = tail call i8 @llvm.ctpop.i8(i8 %1464), !mcsema_real_eip !210
  %1466 = and i8 %1465, 1
  %1467 = icmp eq i8 %1466, 0
  store i1 %1467, i1* %PF_val, !mcsema_real_eip !210
  %1468 = zext i32 %1461 to i64, !mcsema_real_eip !210
  store i64 %1468, i64* %RAX_val, !mcsema_real_eip !210
  %1469 = load i64* %RBP_val, !mcsema_real_eip !211
  %1470 = add i64 %1469, -20, !mcsema_real_eip !211
  %1471 = inttoptr i64 %1470 to i64*, !mcsema_real_eip !211
  %1472 = bitcast i64* %1471 to i32*
  store i32 %1461, i32* %1472, !mcsema_real_eip !211
  br label %block_0x38e, !mcsema_real_eip !212

block_0x388:                                      ; preds = %block_0x300
  %1473 = add i64 %1414, -64, !mcsema_real_eip !203
  %1474 = inttoptr i64 %1473 to i64*, !mcsema_real_eip !203
  %1475 = bitcast i64* %1474 to i32*
  %1476 = load i32* %1475, !mcsema_real_eip !203
  %1477 = zext i32 %1476 to i64, !mcsema_real_eip !203
  store i64 %1477, i64* %RAX_val, !mcsema_real_eip !203
  %1478 = load i64* %RBP_val, !mcsema_real_eip !213
  %1479 = add i64 %1478, -20, !mcsema_real_eip !213
  %1480 = inttoptr i64 %1479 to i64*, !mcsema_real_eip !213
  %1481 = bitcast i64* %1480 to i32*
  store i32 %1476, i32* %1481, !mcsema_real_eip !213
  %1482 = load i64* %RBP_val, !mcsema_real_eip !214
  %1483 = add i64 %1482, -20, !mcsema_real_eip !214
  %1484 = inttoptr i64 %1483 to i64*, !mcsema_real_eip !214
  %1485 = bitcast i64* %1484 to i32*
  %1486 = load i32* %1485, !mcsema_real_eip !214
  %1487 = zext i32 %1486 to i64, !mcsema_real_eip !214
  store i64 %1487, i64* %RAX_val, !mcsema_real_eip !214
  %1488 = load i64* %RSP_val, !mcsema_real_eip !19
  %uadd231 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1488, i64 72)
  %1489 = extractvalue { i64, i1 } %uadd231, 0
  %1490 = xor i64 %1489, %1488, !mcsema_real_eip !19
  %1491 = and i64 %1490, 16, !mcsema_real_eip !19
  %1492 = icmp ne i64 %1491, 0, !mcsema_real_eip !19
  store i1 %1492, i1* %AF_val, !mcsema_real_eip !19
  %1493 = icmp slt i64 %1489, 0
  store i1 %1493, i1* %SF_val, !mcsema_real_eip !19
  %1494 = icmp eq i64 %1489, 0, !mcsema_real_eip !19
  store i1 %1494, i1* %ZF_val, !mcsema_real_eip !19
  %1495 = xor i64 %1488, -9223372036854775808, !mcsema_real_eip !19
  %1496 = and i64 %1490, %1495, !mcsema_real_eip !19
  %1497 = icmp slt i64 %1496, 0
  store i1 %1497, i1* %OF_val, !mcsema_real_eip !19
  %1498 = trunc i64 %1489 to i8, !mcsema_real_eip !19
  %1499 = tail call i8 @llvm.ctpop.i8(i8 %1498), !mcsema_real_eip !19
  %1500 = and i8 %1499, 1
  %1501 = icmp eq i8 %1500, 0
  store i1 %1501, i1* %PF_val, !mcsema_real_eip !19
  %1502 = extractvalue { i64, i1 } %uadd231, 1
  store i1 %1502, i1* %CF_val, !mcsema_real_eip !19
  store i64 %1489, i64* %RSP_val, !mcsema_real_eip !19
  %1503 = inttoptr i64 %1489 to i64*, !mcsema_real_eip !20
  %1504 = load i64* %1503, !mcsema_real_eip !20
  store i64 %1504, i64* %RBX_val, !mcsema_real_eip !20
  %1505 = add i64 %1489, 8, !mcsema_real_eip !20
  store i64 %1505, i64* %RSP_val, !mcsema_real_eip !20
  %1506 = inttoptr i64 %1505 to i64*, !mcsema_real_eip !21
  %1507 = load i64* %1506, !mcsema_real_eip !21
  store i64 %1507, i64* %RBP_val, !mcsema_real_eip !21
  %1508 = add i64 %1489, 24, !mcsema_real_eip !22
  store i64 %1508, i64* %RSP_val, !mcsema_real_eip !22
  %1509 = load i64* %RAX_val, !mcsema_real_eip !22
  store i64 %1509, i64* %RAX, !mcsema_real_eip !22
  %1510 = load i64* %RBX_val, !mcsema_real_eip !22
  store i64 %1510, i64* %RBX, !mcsema_real_eip !22
  %1511 = load i64* %RCX_val, !mcsema_real_eip !22
  store i64 %1511, i64* %RCX, !mcsema_real_eip !22
  %1512 = load i64* %RDX_val, !mcsema_real_eip !22
  store i64 %1512, i64* %RDX, !mcsema_real_eip !22
  %1513 = load i64* %RSI_val, !mcsema_real_eip !22
  store i64 %1513, i64* %RSI, !mcsema_real_eip !22
  %1514 = load i64* %RDI_val, !mcsema_real_eip !22
  store i64 %1514, i64* %RDI, !mcsema_real_eip !22
  %1515 = load i64* %RSP_val, !mcsema_real_eip !22
  store i64 %1515, i64* %RSP, !mcsema_real_eip !22
  %1516 = load i64* %RBP_val, !mcsema_real_eip !22
  store i64 %1516, i64* %RBP, !mcsema_real_eip !22
  %1517 = load i64* %R8_val, !mcsema_real_eip !22
  store i64 %1517, i64* %R8, !mcsema_real_eip !22
  %1518 = load i64* %R9_val, !mcsema_real_eip !22
  store i64 %1518, i64* %R9, !mcsema_real_eip !22
  %1519 = load i64* %R10_val, !mcsema_real_eip !22
  store i64 %1519, i64* %R10, !mcsema_real_eip !22
  %1520 = load i64* %R11_val, !mcsema_real_eip !22
  store i64 %1520, i64* %R11, !mcsema_real_eip !22
  %1521 = load i64* %R12_val, !mcsema_real_eip !22
  store i64 %1521, i64* %R12, !mcsema_real_eip !22
  %1522 = load i64* %R13_val, !mcsema_real_eip !22
  store i64 %1522, i64* %R13, !mcsema_real_eip !22
  %1523 = load i64* %R14_val, !mcsema_real_eip !22
  store i64 %1523, i64* %R14, !mcsema_real_eip !22
  %1524 = load i64* %R15_val, !mcsema_real_eip !22
  store i64 %1524, i64* %R15, !mcsema_real_eip !22
  %1525 = load i64* %RIP_val, !mcsema_real_eip !22
  store i64 %1525, i64* %RIP, !mcsema_real_eip !22
  %1526 = load i1* %CF_val, !mcsema_real_eip !22
  store i1 %1526, i1* %CF, align 1, !mcsema_real_eip !22
  %1527 = load i1* %PF_val, !mcsema_real_eip !22
  store i1 %1527, i1* %PF, align 1, !mcsema_real_eip !22
  %1528 = load i1* %AF_val, !mcsema_real_eip !22
  store i1 %1528, i1* %AF, align 1, !mcsema_real_eip !22
  %1529 = load i1* %ZF_val, !mcsema_real_eip !22
  store i1 %1529, i1* %ZF, align 1, !mcsema_real_eip !22
  %1530 = load i1* %SF_val, !mcsema_real_eip !22
  store i1 %1530, i1* %SF, align 1, !mcsema_real_eip !22
  %1531 = load i1* %OF_val, !mcsema_real_eip !22
  store i1 %1531, i1* %OF, align 1, !mcsema_real_eip !22
  %1532 = load i1* %DF_val, !mcsema_real_eip !22
  store i1 %1532, i1* %DF, align 1, !mcsema_real_eip !22
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !22
  %1533 = load i1* %FPU_B_val, !mcsema_real_eip !22
  store i1 %1533, i1* %FPU_B, align 1, !mcsema_real_eip !22
  %1534 = load i1* %FPU_C3_val, !mcsema_real_eip !22
  store i1 %1534, i1* %FPU_C3, align 1, !mcsema_real_eip !22
  %1535 = load i3* %FPU_TOP_val, !mcsema_real_eip !22
  store i3 %1535, i3* %FPU_TOP, align 1, !mcsema_real_eip !22
  %1536 = load i1* %FPU_C2_val, !mcsema_real_eip !22
  store i1 %1536, i1* %FPU_C2, align 1, !mcsema_real_eip !22
  %1537 = load i1* %FPU_C1_val, !mcsema_real_eip !22
  store i1 %1537, i1* %FPU_C1, align 1, !mcsema_real_eip !22
  %1538 = load i1* %FPU_C0_val, !mcsema_real_eip !22
  store i1 %1538, i1* %FPU_C0, align 1, !mcsema_real_eip !22
  %1539 = load i1* %FPU_ES_val, !mcsema_real_eip !22
  store i1 %1539, i1* %FPU_ES, align 1, !mcsema_real_eip !22
  %1540 = load i1* %FPU_SF_val, !mcsema_real_eip !22
  store i1 %1540, i1* %FPU_SF, align 1, !mcsema_real_eip !22
  %1541 = load i1* %FPU_PE_val, !mcsema_real_eip !22
  store i1 %1541, i1* %FPU_PE, align 1, !mcsema_real_eip !22
  %1542 = load i1* %FPU_UE_val, !mcsema_real_eip !22
  store i1 %1542, i1* %FPU_UE, align 1, !mcsema_real_eip !22
  %1543 = load i1* %FPU_OE_val, !mcsema_real_eip !22
  store i1 %1543, i1* %FPU_OE, align 1, !mcsema_real_eip !22
  %1544 = load i1* %FPU_ZE_val, !mcsema_real_eip !22
  store i1 %1544, i1* %FPU_ZE, align 1, !mcsema_real_eip !22
  %1545 = load i1* %FPU_DE_val, !mcsema_real_eip !22
  store i1 %1545, i1* %FPU_DE, align 1, !mcsema_real_eip !22
  %1546 = load i1* %FPU_IE_val, !mcsema_real_eip !22
  store i1 %1546, i1* %FPU_IE, align 1, !mcsema_real_eip !22
  %1547 = load i1* %FPU_X_val, !mcsema_real_eip !22
  store i1 %1547, i1* %FPU_X, align 1, !mcsema_real_eip !22
  %1548 = load i2* %FPU_RC_val, !mcsema_real_eip !22
  store i2 %1548, i2* %FPU_RC, align 1, !mcsema_real_eip !22
  %1549 = load i2* %FPU_PC_val, !mcsema_real_eip !22
  store i2 %1549, i2* %FPU_PC, align 1, !mcsema_real_eip !22
  %1550 = load i1* %FPU_PM_val, !mcsema_real_eip !22
  store i1 %1550, i1* %FPU_PM, align 1, !mcsema_real_eip !22
  %1551 = load i1* %FPU_UM_val, !mcsema_real_eip !22
  store i1 %1551, i1* %FPU_UM, align 1, !mcsema_real_eip !22
  %1552 = load i1* %FPU_OM_val, !mcsema_real_eip !22
  store i1 %1552, i1* %FPU_OM, align 1, !mcsema_real_eip !22
  %1553 = load i1* %FPU_ZM_val, !mcsema_real_eip !22
  store i1 %1553, i1* %FPU_ZM, align 1, !mcsema_real_eip !22
  %1554 = load i1* %FPU_DM_val, !mcsema_real_eip !22
  store i1 %1554, i1* %FPU_DM, align 1, !mcsema_real_eip !22
  %1555 = load i1* %FPU_IM_val, !mcsema_real_eip !22
  store i1 %1555, i1* %FPU_IM, align 1, !mcsema_real_eip !22
  %1556 = load i64* %53, align 4
  store i64 %1556, i64* %52, align 4
  %1557 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !22
  store i16 %1557, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !22
  %1558 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !22
  store i64 %1558, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !22
  %1559 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !22
  store i16 %1559, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !22
  %1560 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !22
  store i64 %1560, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !22
  %1561 = load i128* %XMM0_val, !mcsema_real_eip !22
  store i128 %1561, i128* %XMM0, align 1, !mcsema_real_eip !22
  %1562 = load i128* %XMM1_val, !mcsema_real_eip !22
  store i128 %1562, i128* %XMM1, align 1, !mcsema_real_eip !22
  %1563 = load i128* %XMM2_val, !mcsema_real_eip !22
  store i128 %1563, i128* %XMM2, align 1, !mcsema_real_eip !22
  %1564 = load i128* %XMM3_val, !mcsema_real_eip !22
  store i128 %1564, i128* %XMM3, align 1, !mcsema_real_eip !22
  %1565 = load i128* %XMM4_val, !mcsema_real_eip !22
  store i128 %1565, i128* %XMM4, align 1, !mcsema_real_eip !22
  %1566 = load i128* %XMM5_val, !mcsema_real_eip !22
  store i128 %1566, i128* %XMM5, align 1, !mcsema_real_eip !22
  %1567 = load i128* %XMM6_val, !mcsema_real_eip !22
  store i128 %1567, i128* %XMM6, align 1, !mcsema_real_eip !22
  %1568 = load i128* %XMM7_val, !mcsema_real_eip !22
  store i128 %1568, i128* %XMM7, align 1, !mcsema_real_eip !22
  %1569 = load i128* %XMM8_val, !mcsema_real_eip !22
  store i128 %1569, i128* %XMM8, align 1, !mcsema_real_eip !22
  %1570 = load i128* %XMM9_val, !mcsema_real_eip !22
  store i128 %1570, i128* %XMM9, align 1, !mcsema_real_eip !22
  %1571 = load i128* %XMM10_val, !mcsema_real_eip !22
  store i128 %1571, i128* %XMM10, align 1, !mcsema_real_eip !22
  %1572 = load i128* %XMM11_val, !mcsema_real_eip !22
  store i128 %1572, i128* %XMM11, align 1, !mcsema_real_eip !22
  %1573 = load i128* %XMM12_val, !mcsema_real_eip !22
  store i128 %1573, i128* %XMM12, align 1, !mcsema_real_eip !22
  %1574 = load i128* %XMM13_val, !mcsema_real_eip !22
  store i128 %1574, i128* %XMM13, align 1, !mcsema_real_eip !22
  %1575 = load i128* %XMM14_val, !mcsema_real_eip !22
  store i128 %1575, i128* %XMM14, align 1, !mcsema_real_eip !22
  %1576 = load i128* %XMM15_val, !mcsema_real_eip !22
  store i128 %1576, i128* %XMM15, align 1, !mcsema_real_eip !22
  %1577 = load i64* %STACK_BASE_val, !mcsema_real_eip !22
  store i64 %1577, i64* %STACK_BASE, align 1, !mcsema_real_eip !22
  %1578 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !22
  store i64 %1578, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !22
  ret void, !mcsema_real_eip !22

block_0x31a:                                      ; preds = %block_0x300
  %1579 = add i64 %1414, -72, !mcsema_real_eip !215
  %1580 = inttoptr i64 %1579 to i64*, !mcsema_real_eip !215
  %1581 = load i64* %1580, !mcsema_real_eip !215
  %uadd225 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1581, i64 30)
  %1582 = extractvalue { i64, i1 } %uadd225, 0
  %1583 = xor i64 %1582, %1581, !mcsema_real_eip !216
  %1584 = and i64 %1583, 16
  %1585 = icmp eq i64 %1584, 0
  store i1 %1585, i1* %AF_val, !mcsema_real_eip !216
  %1586 = icmp slt i64 %1582, 0
  store i1 %1586, i1* %SF_val, !mcsema_real_eip !216
  %1587 = icmp eq i64 %1582, 0, !mcsema_real_eip !216
  store i1 %1587, i1* %ZF_val, !mcsema_real_eip !216
  %1588 = xor i64 %1581, -9223372036854775808, !mcsema_real_eip !216
  %1589 = and i64 %1583, %1588, !mcsema_real_eip !216
  %1590 = icmp slt i64 %1589, 0
  store i1 %1590, i1* %OF_val, !mcsema_real_eip !216
  %1591 = trunc i64 %1582 to i8, !mcsema_real_eip !216
  %1592 = tail call i8 @llvm.ctpop.i8(i8 %1591), !mcsema_real_eip !216
  %1593 = and i8 %1592, 1
  %1594 = icmp eq i8 %1593, 0
  store i1 %1594, i1* %PF_val, !mcsema_real_eip !216
  %1595 = extractvalue { i64, i1 } %uadd225, 1
  store i1 %1595, i1* %CF_val, !mcsema_real_eip !216
  store i64 %1582, i64* %RAX_val, !mcsema_real_eip !216
  %1596 = inttoptr i64 %1582 to i64*, !mcsema_real_eip !217
  %1597 = bitcast i64* %1596 to i8*
  %1598 = load i8* %1597, !mcsema_real_eip !217
  %1599 = zext i8 %1598 to i64
  store i64 %1599, i64* %RAX_val, !mcsema_real_eip !217
  %1600 = sext i8 %1598 to i32, !mcsema_real_eip !218
  %1601 = zext i32 %1600 to i64, !mcsema_real_eip !218
  store i64 %1601, i64* %RDX_val, !mcsema_real_eip !218
  %1602 = load i64* %RBP_val, !mcsema_real_eip !219
  %1603 = add i64 %1602, -72, !mcsema_real_eip !219
  %1604 = inttoptr i64 %1603 to i64*, !mcsema_real_eip !219
  %1605 = load i64* %1604, !mcsema_real_eip !219
  %uadd226 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1605, i64 31)
  %1606 = extractvalue { i64, i1 } %uadd226, 0
  %1607 = xor i64 %1606, %1605, !mcsema_real_eip !220
  %1608 = and i64 %1607, 16
  %1609 = icmp eq i64 %1608, 0
  store i1 %1609, i1* %AF_val, !mcsema_real_eip !220
  %1610 = icmp slt i64 %1606, 0
  store i1 %1610, i1* %SF_val, !mcsema_real_eip !220
  %1611 = icmp eq i64 %1606, 0, !mcsema_real_eip !220
  store i1 %1611, i1* %ZF_val, !mcsema_real_eip !220
  %1612 = xor i64 %1605, -9223372036854775808, !mcsema_real_eip !220
  %1613 = and i64 %1607, %1612, !mcsema_real_eip !220
  %1614 = icmp slt i64 %1613, 0
  store i1 %1614, i1* %OF_val, !mcsema_real_eip !220
  %1615 = trunc i64 %1606 to i8, !mcsema_real_eip !220
  %1616 = tail call i8 @llvm.ctpop.i8(i8 %1615), !mcsema_real_eip !220
  %1617 = and i8 %1616, 1
  %1618 = icmp eq i8 %1617, 0
  store i1 %1618, i1* %PF_val, !mcsema_real_eip !220
  %1619 = extractvalue { i64, i1 } %uadd226, 1
  store i1 %1619, i1* %CF_val, !mcsema_real_eip !220
  store i64 %1606, i64* %RAX_val, !mcsema_real_eip !220
  %1620 = inttoptr i64 %1606 to i64*, !mcsema_real_eip !221
  %1621 = bitcast i64* %1620 to i8*
  %1622 = load i8* %1621, !mcsema_real_eip !221
  %1623 = sext i8 %1622 to i32, !mcsema_real_eip !222
  %1624 = load i64* %RDX_val, !mcsema_real_eip !223
  %1625 = trunc i64 %1624 to i32, !mcsema_real_eip !223
  %1626 = sub i32 %1625, %1623, !mcsema_real_eip !223
  %1627 = zext i32 %1626 to i64, !mcsema_real_eip !223
  store i64 %1627, i64* %RDX_val, !mcsema_real_eip !223
  %uadd227 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1626, i32 15)
  %1628 = extractvalue { i32, i1 } %uadd227, 0
  %1629 = xor i32 %1628, %1626, !mcsema_real_eip !224
  %1630 = and i32 %1629, 16, !mcsema_real_eip !224
  %1631 = icmp ne i32 %1630, 0, !mcsema_real_eip !224
  store i1 %1631, i1* %AF_val, !mcsema_real_eip !224
  %1632 = icmp slt i32 %1628, 0
  store i1 %1632, i1* %SF_val, !mcsema_real_eip !224
  %1633 = icmp eq i32 %1628, 0, !mcsema_real_eip !224
  store i1 %1633, i1* %ZF_val, !mcsema_real_eip !224
  %1634 = xor i32 %1626, -2147483648, !mcsema_real_eip !224
  %1635 = and i32 %1629, %1634, !mcsema_real_eip !224
  %1636 = icmp slt i32 %1635, 0
  store i1 %1636, i1* %OF_val, !mcsema_real_eip !224
  %1637 = trunc i32 %1628 to i8, !mcsema_real_eip !224
  %1638 = tail call i8 @llvm.ctpop.i8(i8 %1637), !mcsema_real_eip !224
  %1639 = and i8 %1638, 1
  %1640 = icmp eq i8 %1639, 0
  store i1 %1640, i1* %PF_val, !mcsema_real_eip !224
  %1641 = extractvalue { i32, i1 } %uadd227, 1
  store i1 %1641, i1* %CF_val, !mcsema_real_eip !224
  %1642 = zext i32 %1628 to i64, !mcsema_real_eip !224
  store i64 %1642, i64* %RAX_val, !mcsema_real_eip !224
  %1643 = load i64* %RBP_val, !mcsema_real_eip !225
  %1644 = add i64 %1643, -20, !mcsema_real_eip !225
  %1645 = inttoptr i64 %1644 to i64*, !mcsema_real_eip !225
  %1646 = bitcast i64* %1645 to i32*
  %1647 = load i32* %1646, !mcsema_real_eip !225
  %uadd228 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1628, i32 %1647)
  %1648 = extractvalue { i32, i1 } %uadd228, 0
  %1649 = xor i32 %1648, %1647, !mcsema_real_eip !225
  %1650 = xor i32 %1649, %1628, !mcsema_real_eip !225
  %1651 = and i32 %1650, 16, !mcsema_real_eip !225
  %1652 = icmp ne i32 %1651, 0, !mcsema_real_eip !225
  store i1 %1652, i1* %AF_val, !mcsema_real_eip !225
  %1653 = icmp slt i32 %1648, 0
  store i1 %1653, i1* %SF_val, !mcsema_real_eip !225
  %1654 = icmp eq i32 %1648, 0, !mcsema_real_eip !225
  store i1 %1654, i1* %ZF_val, !mcsema_real_eip !225
  %1655 = xor i32 %1628, -2147483648, !mcsema_real_eip !225
  %1656 = xor i32 %1655, %1647, !mcsema_real_eip !225
  %1657 = and i32 %1649, %1656, !mcsema_real_eip !225
  %1658 = icmp slt i32 %1657, 0
  store i1 %1658, i1* %OF_val, !mcsema_real_eip !225
  %1659 = trunc i32 %1648 to i8, !mcsema_real_eip !225
  %1660 = tail call i8 @llvm.ctpop.i8(i8 %1659), !mcsema_real_eip !225
  %1661 = and i8 %1660, 1
  %1662 = icmp eq i8 %1661, 0
  store i1 %1662, i1* %PF_val, !mcsema_real_eip !225
  %1663 = extractvalue { i32, i1 } %uadd228, 1
  store i1 %1663, i1* %CF_val, !mcsema_real_eip !225
  store i32 %1648, i32* %1646, !mcsema_real_eip !225
  %1664 = load i64* %RBP_val, !mcsema_real_eip !226
  %1665 = add i64 %1664, -20, !mcsema_real_eip !226
  %1666 = inttoptr i64 %1665 to i64*, !mcsema_real_eip !226
  %1667 = bitcast i64* %1666 to i32*
  %1668 = load i32* %1667, !mcsema_real_eip !226
  %1669 = zext i32 %1668 to i64, !mcsema_real_eip !226
  store i64 %1669, i64* %RBX_val, !mcsema_real_eip !226
  %1670 = load i64* %RBP_val, !mcsema_real_eip !227
  %1671 = add i64 %1670, -72, !mcsema_real_eip !227
  %1672 = inttoptr i64 %1671 to i64*, !mcsema_real_eip !227
  %1673 = load i64* %1672, !mcsema_real_eip !227
  %uadd229 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1673, i64 28)
  %1674 = extractvalue { i64, i1 } %uadd229, 0
  %1675 = xor i64 %1674, %1673, !mcsema_real_eip !228
  %1676 = and i64 %1675, 16
  %1677 = icmp eq i64 %1676, 0
  store i1 %1677, i1* %AF_val, !mcsema_real_eip !228
  %1678 = icmp slt i64 %1674, 0
  store i1 %1678, i1* %SF_val, !mcsema_real_eip !228
  %1679 = icmp eq i64 %1674, 0, !mcsema_real_eip !228
  store i1 %1679, i1* %ZF_val, !mcsema_real_eip !228
  %1680 = xor i64 %1673, -9223372036854775808, !mcsema_real_eip !228
  %1681 = and i64 %1675, %1680, !mcsema_real_eip !228
  %1682 = icmp slt i64 %1681, 0
  store i1 %1682, i1* %OF_val, !mcsema_real_eip !228
  %1683 = trunc i64 %1674 to i8, !mcsema_real_eip !228
  %1684 = tail call i8 @llvm.ctpop.i8(i8 %1683), !mcsema_real_eip !228
  %1685 = and i8 %1684, 1
  %1686 = icmp eq i8 %1685, 0
  store i1 %1686, i1* %PF_val, !mcsema_real_eip !228
  %1687 = extractvalue { i64, i1 } %uadd229, 1
  store i1 %1687, i1* %CF_val, !mcsema_real_eip !228
  store i64 %1674, i64* %RAX_val, !mcsema_real_eip !228
  %1688 = inttoptr i64 %1674 to i64*, !mcsema_real_eip !229
  %1689 = bitcast i64* %1688 to i8*
  %1690 = load i8* %1689, !mcsema_real_eip !229
  %1691 = zext i8 %1690 to i64
  store i64 %1691, i64* %RDI_val, !mcsema_real_eip !230
  %1692 = tail call x86_64_sysvcc i64 @to_byte(i64 %1691), !mcsema_real_eip !231
  %1693 = load i64* %RBX_val, !mcsema_real_eip !232
  %1694 = trunc i64 %1693 to i32, !mcsema_real_eip !232
  %1695 = trunc i64 %1692 to i32, !mcsema_real_eip !232
  %1696 = sub i32 %1694, %1695, !mcsema_real_eip !232
  %1697 = xor i32 %1696, %1694, !mcsema_real_eip !232
  %1698 = xor i32 %1697, %1695, !mcsema_real_eip !232
  %1699 = and i32 %1698, 16, !mcsema_real_eip !232
  %1700 = icmp ne i32 %1699, 0, !mcsema_real_eip !232
  store i1 %1700, i1* %AF_val, !mcsema_real_eip !232
  %1701 = trunc i32 %1696 to i8, !mcsema_real_eip !232
  %1702 = tail call i8 @llvm.ctpop.i8(i8 %1701), !mcsema_real_eip !232
  %1703 = and i8 %1702, 1
  %1704 = icmp eq i8 %1703, 0
  store i1 %1704, i1* %PF_val, !mcsema_real_eip !232
  %1705 = icmp eq i32 %1694, %1695
  store i1 %1705, i1* %ZF_val, !mcsema_real_eip !232
  %1706 = icmp slt i32 %1696, 0
  store i1 %1706, i1* %SF_val, !mcsema_real_eip !232
  %1707 = icmp ult i32 %1694, %1695, !mcsema_real_eip !232
  store i1 %1707, i1* %CF_val, !mcsema_real_eip !232
  %1708 = xor i64 %1693, %1692
  %1709 = trunc i64 %1708 to i32
  %1710 = and i32 %1697, %1709, !mcsema_real_eip !232
  %1711 = icmp slt i32 %1710, 0
  store i1 %1711, i1* %OF_val, !mcsema_real_eip !232
  %1712 = zext i32 %1696 to i64, !mcsema_real_eip !232
  store i64 %1712, i64* %RBX_val, !mcsema_real_eip !232
  store i64 %1712, i64* %RAX_val, !mcsema_real_eip !233
  %1713 = load i64* %RBP_val, !mcsema_real_eip !234
  %1714 = add i64 %1713, -20, !mcsema_real_eip !234
  %1715 = inttoptr i64 %1714 to i64*, !mcsema_real_eip !234
  %1716 = bitcast i64* %1715 to i32*
  store i32 %1696, i32* %1716, !mcsema_real_eip !234
  %1717 = load i64* %RBP_val, !mcsema_real_eip !235
  %1718 = add i64 %1717, -20, !mcsema_real_eip !235
  %1719 = inttoptr i64 %1718 to i64*, !mcsema_real_eip !235
  %1720 = bitcast i64* %1719 to i32*
  %1721 = load i32* %1720, !mcsema_real_eip !235
  store i1 false, i1* %AF_val, !mcsema_real_eip !235
  %1722 = trunc i32 %1721 to i8, !mcsema_real_eip !235
  %1723 = tail call i8 @llvm.ctpop.i8(i8 %1722), !mcsema_real_eip !235
  %1724 = and i8 %1723, 1
  %1725 = icmp eq i8 %1724, 0
  store i1 %1725, i1* %PF_val, !mcsema_real_eip !235
  %1726 = icmp eq i32 %1721, 0, !mcsema_real_eip !235
  store i1 %1726, i1* %ZF_val, !mcsema_real_eip !235
  %1727 = icmp slt i32 %1721, 0
  store i1 %1727, i1* %SF_val, !mcsema_real_eip !235
  store i1 false, i1* %CF_val, !mcsema_real_eip !235
  store i1 false, i1* %OF_val, !mcsema_real_eip !235
  br i1 %1726, label %block_0x365, label %block_0x38e, !mcsema_real_eip !236

block_0x38e:                                      ; preds = %block_0x37f, %block_0x365, %block_0x31a, %block_0x2f2
  %1728 = load i64* %RBP_val, !mcsema_real_eip !214
  %1729 = add i64 %1728, -20, !mcsema_real_eip !214
  %1730 = inttoptr i64 %1729 to i64*, !mcsema_real_eip !214
  %1731 = bitcast i64* %1730 to i32*
  %1732 = load i32* %1731, !mcsema_real_eip !214
  %1733 = zext i32 %1732 to i64, !mcsema_real_eip !214
  store i64 %1733, i64* %RAX_val, !mcsema_real_eip !214
  %1734 = load i64* %RSP_val, !mcsema_real_eip !19
  %uadd222 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1734, i64 72)
  %1735 = extractvalue { i64, i1 } %uadd222, 0
  %1736 = xor i64 %1735, %1734, !mcsema_real_eip !19
  %1737 = and i64 %1736, 16, !mcsema_real_eip !19
  %1738 = icmp ne i64 %1737, 0, !mcsema_real_eip !19
  store i1 %1738, i1* %AF_val, !mcsema_real_eip !19
  %1739 = icmp slt i64 %1735, 0
  store i1 %1739, i1* %SF_val, !mcsema_real_eip !19
  %1740 = icmp eq i64 %1735, 0, !mcsema_real_eip !19
  store i1 %1740, i1* %ZF_val, !mcsema_real_eip !19
  %1741 = xor i64 %1734, -9223372036854775808, !mcsema_real_eip !19
  %1742 = and i64 %1736, %1741, !mcsema_real_eip !19
  %1743 = icmp slt i64 %1742, 0
  store i1 %1743, i1* %OF_val, !mcsema_real_eip !19
  %1744 = trunc i64 %1735 to i8, !mcsema_real_eip !19
  %1745 = tail call i8 @llvm.ctpop.i8(i8 %1744), !mcsema_real_eip !19
  %1746 = and i8 %1745, 1
  %1747 = icmp eq i8 %1746, 0
  store i1 %1747, i1* %PF_val, !mcsema_real_eip !19
  %1748 = extractvalue { i64, i1 } %uadd222, 1
  store i1 %1748, i1* %CF_val, !mcsema_real_eip !19
  store i64 %1735, i64* %RSP_val, !mcsema_real_eip !19
  %1749 = inttoptr i64 %1735 to i64*, !mcsema_real_eip !20
  %1750 = load i64* %1749, !mcsema_real_eip !20
  store i64 %1750, i64* %RBX_val, !mcsema_real_eip !20
  %1751 = add i64 %1735, 8, !mcsema_real_eip !20
  store i64 %1751, i64* %RSP_val, !mcsema_real_eip !20
  %1752 = inttoptr i64 %1751 to i64*, !mcsema_real_eip !21
  %1753 = load i64* %1752, !mcsema_real_eip !21
  store i64 %1753, i64* %RBP_val, !mcsema_real_eip !21
  %1754 = add i64 %1735, 24, !mcsema_real_eip !22
  store i64 %1754, i64* %RSP_val, !mcsema_real_eip !22
  %1755 = load i64* %RAX_val, !mcsema_real_eip !22
  store i64 %1755, i64* %RAX, !mcsema_real_eip !22
  %1756 = load i64* %RBX_val, !mcsema_real_eip !22
  store i64 %1756, i64* %RBX, !mcsema_real_eip !22
  %1757 = load i64* %RCX_val, !mcsema_real_eip !22
  store i64 %1757, i64* %RCX, !mcsema_real_eip !22
  %1758 = load i64* %RDX_val, !mcsema_real_eip !22
  store i64 %1758, i64* %RDX, !mcsema_real_eip !22
  %1759 = load i64* %RSI_val, !mcsema_real_eip !22
  store i64 %1759, i64* %RSI, !mcsema_real_eip !22
  %1760 = load i64* %RDI_val, !mcsema_real_eip !22
  store i64 %1760, i64* %RDI, !mcsema_real_eip !22
  %1761 = load i64* %RSP_val, !mcsema_real_eip !22
  store i64 %1761, i64* %RSP, !mcsema_real_eip !22
  %1762 = load i64* %RBP_val, !mcsema_real_eip !22
  store i64 %1762, i64* %RBP, !mcsema_real_eip !22
  %1763 = load i64* %R8_val, !mcsema_real_eip !22
  store i64 %1763, i64* %R8, !mcsema_real_eip !22
  %1764 = load i64* %R9_val, !mcsema_real_eip !22
  store i64 %1764, i64* %R9, !mcsema_real_eip !22
  %1765 = load i64* %R10_val, !mcsema_real_eip !22
  store i64 %1765, i64* %R10, !mcsema_real_eip !22
  %1766 = load i64* %R11_val, !mcsema_real_eip !22
  store i64 %1766, i64* %R11, !mcsema_real_eip !22
  %1767 = load i64* %R12_val, !mcsema_real_eip !22
  store i64 %1767, i64* %R12, !mcsema_real_eip !22
  %1768 = load i64* %R13_val, !mcsema_real_eip !22
  store i64 %1768, i64* %R13, !mcsema_real_eip !22
  %1769 = load i64* %R14_val, !mcsema_real_eip !22
  store i64 %1769, i64* %R14, !mcsema_real_eip !22
  %1770 = load i64* %R15_val, !mcsema_real_eip !22
  store i64 %1770, i64* %R15, !mcsema_real_eip !22
  %1771 = load i64* %RIP_val, !mcsema_real_eip !22
  store i64 %1771, i64* %RIP, !mcsema_real_eip !22
  %1772 = load i1* %CF_val, !mcsema_real_eip !22
  store i1 %1772, i1* %CF, align 1, !mcsema_real_eip !22
  %1773 = load i1* %PF_val, !mcsema_real_eip !22
  store i1 %1773, i1* %PF, align 1, !mcsema_real_eip !22
  %1774 = load i1* %AF_val, !mcsema_real_eip !22
  store i1 %1774, i1* %AF, align 1, !mcsema_real_eip !22
  %1775 = load i1* %ZF_val, !mcsema_real_eip !22
  store i1 %1775, i1* %ZF, align 1, !mcsema_real_eip !22
  %1776 = load i1* %SF_val, !mcsema_real_eip !22
  store i1 %1776, i1* %SF, align 1, !mcsema_real_eip !22
  %1777 = load i1* %OF_val, !mcsema_real_eip !22
  store i1 %1777, i1* %OF, align 1, !mcsema_real_eip !22
  %1778 = load i1* %DF_val, !mcsema_real_eip !22
  store i1 %1778, i1* %DF, align 1, !mcsema_real_eip !22
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !22
  %1779 = load i1* %FPU_B_val, !mcsema_real_eip !22
  store i1 %1779, i1* %FPU_B, align 1, !mcsema_real_eip !22
  %1780 = load i1* %FPU_C3_val, !mcsema_real_eip !22
  store i1 %1780, i1* %FPU_C3, align 1, !mcsema_real_eip !22
  %1781 = load i3* %FPU_TOP_val, !mcsema_real_eip !22
  store i3 %1781, i3* %FPU_TOP, align 1, !mcsema_real_eip !22
  %1782 = load i1* %FPU_C2_val, !mcsema_real_eip !22
  store i1 %1782, i1* %FPU_C2, align 1, !mcsema_real_eip !22
  %1783 = load i1* %FPU_C1_val, !mcsema_real_eip !22
  store i1 %1783, i1* %FPU_C1, align 1, !mcsema_real_eip !22
  %1784 = load i1* %FPU_C0_val, !mcsema_real_eip !22
  store i1 %1784, i1* %FPU_C0, align 1, !mcsema_real_eip !22
  %1785 = load i1* %FPU_ES_val, !mcsema_real_eip !22
  store i1 %1785, i1* %FPU_ES, align 1, !mcsema_real_eip !22
  %1786 = load i1* %FPU_SF_val, !mcsema_real_eip !22
  store i1 %1786, i1* %FPU_SF, align 1, !mcsema_real_eip !22
  %1787 = load i1* %FPU_PE_val, !mcsema_real_eip !22
  store i1 %1787, i1* %FPU_PE, align 1, !mcsema_real_eip !22
  %1788 = load i1* %FPU_UE_val, !mcsema_real_eip !22
  store i1 %1788, i1* %FPU_UE, align 1, !mcsema_real_eip !22
  %1789 = load i1* %FPU_OE_val, !mcsema_real_eip !22
  store i1 %1789, i1* %FPU_OE, align 1, !mcsema_real_eip !22
  %1790 = load i1* %FPU_ZE_val, !mcsema_real_eip !22
  store i1 %1790, i1* %FPU_ZE, align 1, !mcsema_real_eip !22
  %1791 = load i1* %FPU_DE_val, !mcsema_real_eip !22
  store i1 %1791, i1* %FPU_DE, align 1, !mcsema_real_eip !22
  %1792 = load i1* %FPU_IE_val, !mcsema_real_eip !22
  store i1 %1792, i1* %FPU_IE, align 1, !mcsema_real_eip !22
  %1793 = load i1* %FPU_X_val, !mcsema_real_eip !22
  store i1 %1793, i1* %FPU_X, align 1, !mcsema_real_eip !22
  %1794 = load i2* %FPU_RC_val, !mcsema_real_eip !22
  store i2 %1794, i2* %FPU_RC, align 1, !mcsema_real_eip !22
  %1795 = load i2* %FPU_PC_val, !mcsema_real_eip !22
  store i2 %1795, i2* %FPU_PC, align 1, !mcsema_real_eip !22
  %1796 = load i1* %FPU_PM_val, !mcsema_real_eip !22
  store i1 %1796, i1* %FPU_PM, align 1, !mcsema_real_eip !22
  %1797 = load i1* %FPU_UM_val, !mcsema_real_eip !22
  store i1 %1797, i1* %FPU_UM, align 1, !mcsema_real_eip !22
  %1798 = load i1* %FPU_OM_val, !mcsema_real_eip !22
  store i1 %1798, i1* %FPU_OM, align 1, !mcsema_real_eip !22
  %1799 = load i1* %FPU_ZM_val, !mcsema_real_eip !22
  store i1 %1799, i1* %FPU_ZM, align 1, !mcsema_real_eip !22
  %1800 = load i1* %FPU_DM_val, !mcsema_real_eip !22
  store i1 %1800, i1* %FPU_DM, align 1, !mcsema_real_eip !22
  %1801 = load i1* %FPU_IM_val, !mcsema_real_eip !22
  store i1 %1801, i1* %FPU_IM, align 1, !mcsema_real_eip !22
  %1802 = load i64* %53, align 4
  store i64 %1802, i64* %52, align 4
  %1803 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !22
  store i16 %1803, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !22
  %1804 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !22
  store i64 %1804, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !22
  %1805 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !22
  store i16 %1805, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !22
  %1806 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !22
  store i64 %1806, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !22
  %1807 = load i128* %XMM0_val, !mcsema_real_eip !22
  store i128 %1807, i128* %XMM0, align 1, !mcsema_real_eip !22
  %1808 = load i128* %XMM1_val, !mcsema_real_eip !22
  store i128 %1808, i128* %XMM1, align 1, !mcsema_real_eip !22
  %1809 = load i128* %XMM2_val, !mcsema_real_eip !22
  store i128 %1809, i128* %XMM2, align 1, !mcsema_real_eip !22
  %1810 = load i128* %XMM3_val, !mcsema_real_eip !22
  store i128 %1810, i128* %XMM3, align 1, !mcsema_real_eip !22
  %1811 = load i128* %XMM4_val, !mcsema_real_eip !22
  store i128 %1811, i128* %XMM4, align 1, !mcsema_real_eip !22
  %1812 = load i128* %XMM5_val, !mcsema_real_eip !22
  store i128 %1812, i128* %XMM5, align 1, !mcsema_real_eip !22
  %1813 = load i128* %XMM6_val, !mcsema_real_eip !22
  store i128 %1813, i128* %XMM6, align 1, !mcsema_real_eip !22
  %1814 = load i128* %XMM7_val, !mcsema_real_eip !22
  store i128 %1814, i128* %XMM7, align 1, !mcsema_real_eip !22
  %1815 = load i128* %XMM8_val, !mcsema_real_eip !22
  store i128 %1815, i128* %XMM8, align 1, !mcsema_real_eip !22
  %1816 = load i128* %XMM9_val, !mcsema_real_eip !22
  store i128 %1816, i128* %XMM9, align 1, !mcsema_real_eip !22
  %1817 = load i128* %XMM10_val, !mcsema_real_eip !22
  store i128 %1817, i128* %XMM10, align 1, !mcsema_real_eip !22
  %1818 = load i128* %XMM11_val, !mcsema_real_eip !22
  store i128 %1818, i128* %XMM11, align 1, !mcsema_real_eip !22
  %1819 = load i128* %XMM12_val, !mcsema_real_eip !22
  store i128 %1819, i128* %XMM12, align 1, !mcsema_real_eip !22
  %1820 = load i128* %XMM13_val, !mcsema_real_eip !22
  store i128 %1820, i128* %XMM13, align 1, !mcsema_real_eip !22
  %1821 = load i128* %XMM14_val, !mcsema_real_eip !22
  store i128 %1821, i128* %XMM14, align 1, !mcsema_real_eip !22
  %1822 = load i128* %XMM15_val, !mcsema_real_eip !22
  store i128 %1822, i128* %XMM15, align 1, !mcsema_real_eip !22
  %1823 = load i64* %STACK_BASE_val, !mcsema_real_eip !22
  store i64 %1823, i64* %STACK_BASE, align 1, !mcsema_real_eip !22
  %1824 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !22
  store i64 %1824, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !22
  ret void, !mcsema_real_eip !22

block_0x365:                                      ; preds = %block_0x31a
  %1825 = load i64* %RBP_val, !mcsema_real_eip !237
  %1826 = add i64 %1825, -72, !mcsema_real_eip !237
  %1827 = inttoptr i64 %1826 to i64*, !mcsema_real_eip !237
  %1828 = load i64* %1827, !mcsema_real_eip !237
  %uadd230 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1828, i64 31)
  %1829 = extractvalue { i64, i1 } %uadd230, 0
  %1830 = xor i64 %1829, %1828, !mcsema_real_eip !238
  %1831 = and i64 %1830, 16
  %1832 = icmp eq i64 %1831, 0
  store i1 %1832, i1* %AF_val, !mcsema_real_eip !238
  %1833 = icmp slt i64 %1829, 0
  store i1 %1833, i1* %SF_val, !mcsema_real_eip !238
  %1834 = icmp eq i64 %1829, 0, !mcsema_real_eip !238
  store i1 %1834, i1* %ZF_val, !mcsema_real_eip !238
  %1835 = xor i64 %1828, -9223372036854775808, !mcsema_real_eip !238
  %1836 = and i64 %1830, %1835, !mcsema_real_eip !238
  %1837 = icmp slt i64 %1836, 0
  store i1 %1837, i1* %OF_val, !mcsema_real_eip !238
  %1838 = trunc i64 %1829 to i8, !mcsema_real_eip !238
  %1839 = tail call i8 @llvm.ctpop.i8(i8 %1838), !mcsema_real_eip !238
  %1840 = and i8 %1839, 1
  %1841 = icmp eq i8 %1840, 0
  store i1 %1841, i1* %PF_val, !mcsema_real_eip !238
  %1842 = extractvalue { i64, i1 } %uadd230, 1
  store i1 %1842, i1* %CF_val, !mcsema_real_eip !238
  store i64 %1829, i64* %RAX_val, !mcsema_real_eip !238
  %1843 = inttoptr i64 %1829 to i64*, !mcsema_real_eip !239
  %1844 = bitcast i64* %1843 to i8*
  %1845 = load i8* %1844, !mcsema_real_eip !239
  %1846 = zext i8 %1845 to i64
  store i64 %1846, i64* %RDI_val, !mcsema_real_eip !240
  %1847 = tail call x86_64_sysvcc i64 @to_byte(i64 %1846), !mcsema_real_eip !241
  store i64 %1847, i64* %RAX_val, !mcsema_real_eip !241
  %1848 = trunc i64 %1847 to i32, !mcsema_real_eip !242
  %1849 = add i32 %1848, -4
  %1850 = xor i32 %1849, %1848, !mcsema_real_eip !242
  %1851 = and i32 %1850, 16, !mcsema_real_eip !242
  %1852 = icmp ne i32 %1851, 0, !mcsema_real_eip !242
  store i1 %1852, i1* %AF_val, !mcsema_real_eip !242
  %1853 = trunc i32 %1849 to i8, !mcsema_real_eip !242
  %1854 = tail call i8 @llvm.ctpop.i8(i8 %1853), !mcsema_real_eip !242
  %1855 = and i8 %1854, 1
  %1856 = icmp eq i8 %1855, 0
  store i1 %1856, i1* %PF_val, !mcsema_real_eip !242
  %1857 = icmp eq i32 %1849, 0, !mcsema_real_eip !242
  store i1 %1857, i1* %ZF_val, !mcsema_real_eip !242
  %1858 = icmp slt i32 %1849, 0
  store i1 %1858, i1* %SF_val, !mcsema_real_eip !242
  %1859 = icmp ult i32 %1848, 4, !mcsema_real_eip !242
  store i1 %1859, i1* %CF_val, !mcsema_real_eip !242
  %1860 = and i32 %1850, %1848, !mcsema_real_eip !242
  %1861 = icmp slt i32 %1860, 0
  store i1 %1861, i1* %OF_val, !mcsema_real_eip !242
  %1862 = load i1* %ZF_val, !mcsema_real_eip !243
  br i1 %1862, label %block_0x38e, label %block_0x37f, !mcsema_real_eip !243

block_0x37f:                                      ; preds = %block_0x365
  %1863 = load i64* %RBP_val, !mcsema_real_eip !244
  %1864 = add i64 %1863, -20, !mcsema_real_eip !244
  %1865 = inttoptr i64 %1864 to i64*, !mcsema_real_eip !244
  %1866 = bitcast i64* %1865 to i32*
  store i32 -32, i32* %1866, !mcsema_real_eip !244
  br label %block_0x38e, !mcsema_real_eip !245
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
!4 = metadata !{i64 4, [12 x i8] c"\09pushq\09%rbx\00"}
!5 = metadata !{i64 5, [16 x i8] c"\09subq\09$72, %rsp\00"}
!6 = metadata !{i64 9, [22 x i8] c"\09movq\09%rdi, -72(%rbp)\00"}
!7 = metadata !{i64 13, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!8 = metadata !{i64 17, [17 x i8] c"\09movq\09%rax, %rdi\00"}
!9 = metadata !{i64 20, [9 x i8] c"\09callq\090\00"}
!10 = metadata !{i64 25, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!11 = metadata !{i64 28, [21 x i8] c"\09cmpl\09$37, -24(%rbp)\00"}
!12 = metadata !{i64 32, [6 x i8] c"\09je\098\00"}
!13 = metadata !{i64 47, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!14 = metadata !{i64 51, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!15 = metadata !{i64 54, [16 x i8] c"\09cmpb\09$100, %al\00"}
!16 = metadata !{i64 56, [7 x i8] c"\09je\0910\00"}
!17 = metadata !{i64 34, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!18 = metadata !{i64 37, [9 x i8] c"\09jmp\09871\00"}
!19 = metadata !{i64 913, [16 x i8] c"\09addq\09$72, %rsp\00"}
!20 = metadata !{i64 917, [11 x i8] c"\09popq\09%rbx\00"}
!21 = metadata !{i64 918, [11 x i8] c"\09popq\09%rbp\00"}
!22 = metadata !{i64 919, [6 x i8] c"\09retq\00"}
!23 = metadata !{i64 68, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!24 = metadata !{i64 72, [15 x i8] c"\09addq\09$1, %rax\00"}
!25 = metadata !{i64 76, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!26 = metadata !{i64 82, [17 x i8] c"\09movl\09%eax, %edi\00"}
!27 = metadata !{i64 84, [9 x i8] c"\09callq\090\00"}
!28 = metadata !{i64 89, [15 x i8] c"\09cmpl\09$9, %eax\00"}
!29 = metadata !{i64 92, [7 x i8] c"\09je\0910\00"}
!30 = metadata !{i64 58, [24 x i8] c"\09movl\09$4294967294, %eax\00"}
!31 = metadata !{i64 63, [9 x i8] c"\09jmp\09845\00"}
!32 = metadata !{i64 104, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!33 = metadata !{i64 108, [15 x i8] c"\09addq\09$2, %rax\00"}
!34 = metadata !{i64 112, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!35 = metadata !{i64 118, [17 x i8] c"\09movl\09%eax, %edi\00"}
!36 = metadata !{i64 120, [9 x i8] c"\09callq\090\00"}
!37 = metadata !{i64 125, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
!38 = metadata !{i64 128, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!39 = metadata !{i64 131, [17 x i8] c"\09addl\09%eax, %eax\00"}
!40 = metadata !{i64 133, [16 x i8] c"\09cmpl\09$26, %eax\00"}
!41 = metadata !{i64 136, [7 x i8] c"\09je\0910\00"}
!42 = metadata !{i64 94, [24 x i8] c"\09movl\09$4294967293, %eax\00"}
!43 = metadata !{i64 99, [9 x i8] c"\09jmp\09809\00"}
!44 = metadata !{i64 148, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!45 = metadata !{i64 152, [15 x i8] c"\09addq\09$3, %rax\00"}
!46 = metadata !{i64 156, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!47 = metadata !{i64 162, [17 x i8] c"\09movl\09%eax, %edi\00"}
!48 = metadata !{i64 164, [9 x i8] c"\09callq\090\00"}
!49 = metadata !{i64 169, [22 x i8] c"\09movl\09%eax, -32(%rbp)\00"}
!50 = metadata !{i64 172, [22 x i8] c"\09movl\09-32(%rbp), %eax\00"}
!51 = metadata !{i64 175, [16 x i8] c"\09subl\09$13, %eax\00"}
!52 = metadata !{i64 178, [15 x i8] c"\09cmpl\09$1, %eax\00"}
!53 = metadata !{i64 181, [8 x i8] c"\09jbe\0910\00"}
!54 = metadata !{i64 138, [24 x i8] c"\09movl\09$4294967292, %eax\00"}
!55 = metadata !{i64 143, [9 x i8] c"\09jmp\09765\00"}
!56 = metadata !{i64 193, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!57 = metadata !{i64 197, [15 x i8] c"\09addq\09$4, %rax\00"}
!58 = metadata !{i64 201, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!59 = metadata !{i64 207, [16 x i8] c"\09andl\09$15, %eax\00"}
!60 = metadata !{i64 210, [15 x i8] c"\09cmpl\09$1, %eax\00"}
!61 = metadata !{i64 213, [8 x i8] c"\09jne\0973\00"}
!62 = metadata !{i64 183, [24 x i8] c"\09movl\09$4294967291, %eax\00"}
!63 = metadata !{i64 188, [9 x i8] c"\09jmp\09720\00"}
!64 = metadata !{i64 288, [24 x i8] c"\09movl\09$4294967290, %eax\00"}
!65 = metadata !{i64 293, [9 x i8] c"\09jmp\09615\00"}
!66 = metadata !{i64 215, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!67 = metadata !{i64 219, [15 x i8] c"\09addq\09$4, %rax\00"}
!68 = metadata !{i64 223, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!69 = metadata !{i64 226, [18 x i8] c"\09movsbl\09%al, %eax\00"}
!70 = metadata !{i64 229, [17 x i8] c"\09andl\09$240, %eax\00"}
!71 = metadata !{i64 234, [16 x i8] c"\09cmpl\09$48, %eax\00"}
!72 = metadata !{i64 237, [8 x i8] c"\09jne\0949\00"}
!73 = metadata !{i64 239, [29 x i8] c"\09movl\09$4294967292, -20(%rbp)\00"}
!74 = metadata !{i64 246, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!75 = metadata !{i64 250, [15 x i8] c"\09addq\09$5, %rax\00"}
!76 = metadata !{i64 254, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!77 = metadata !{i64 257, [16 x i8] c"\09andl\09$15, %eax\00"}
!78 = metadata !{i64 260, [21 x i8] c"\09movb\09%al, -33(%rbp)\00"}
!79 = metadata !{i64 263, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!80 = metadata !{i64 267, [15 x i8] c"\09addq\09$5, %rax\00"}
!81 = metadata !{i64 271, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!82 = metadata !{i64 274, [17 x i8] c"\09andl\09$-16, %eax\00"}
!83 = metadata !{i64 277, [21 x i8] c"\09movb\09%al, -34(%rbp)\00"}
!84 = metadata !{i64 280, [20 x i8] c"\09cmpb\09$3, -33(%rbp)\00"}
!85 = metadata !{i64 284, [7 x i8] c"\09je\0912\00"}
!86 = metadata !{i64 298, [21 x i8] c"\09cmpb\09$96, -34(%rbp)\00"}
!87 = metadata !{i64 302, [7 x i8] c"\09jne\096\00"}
!88 = metadata !{i64 310, [20 x i8] c"\09addl\09$5, -20(%rbp)\00"}
!89 = metadata !{i64 314, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!90 = metadata !{i64 318, [15 x i8] c"\09addq\09$6, %rax\00"}
!91 = metadata !{i64 322, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!92 = metadata !{i64 328, [17 x i8] c"\09movl\09%eax, %edi\00"}
!93 = metadata !{i64 330, [9 x i8] c"\09callq\090\00"}
!94 = metadata !{i64 335, [21 x i8] c"\09movb\09%al, -35(%rbp)\00"}
!95 = metadata !{i64 338, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!96 = metadata !{i64 342, [15 x i8] c"\09addq\09$7, %rax\00"}
!97 = metadata !{i64 346, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!98 = metadata !{i64 352, [17 x i8] c"\09movl\09%eax, %edi\00"}
!99 = metadata !{i64 354, [9 x i8] c"\09callq\090\00"}
!100 = metadata !{i64 359, [20 x i8] c"\09orb\09%al, -35(%rbp)\00"}
!101 = metadata !{i64 362, [24 x i8] c"\09movzbl\09-35(%rbp), %eax\00"}
!102 = metadata !{i64 366, [17 x i8] c"\09cmpl\09$-71, %eax\00"}
!103 = metadata !{i64 304, [20 x i8] c"\09addl\09$4, -20(%rbp)\00"}
!104 = metadata !{i64 377, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!105 = metadata !{i64 380, [17 x i8] c"\09movl\09%eax, %ecx\00"}
!106 = metadata !{i64 382, [21 x i8] c"\09shll\09%cl, -20(%rbp)\00"}
!107 = metadata !{i64 385, [20 x i8] c"\09cmpl\09$0, -20(%rbp)\00"}
!108 = metadata !{i64 389, [7 x i8] c"\09je\0910\00"}
!109 = metadata !{i64 401, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!110 = metadata !{i64 405, [15 x i8] c"\09addq\09$8, %rax\00"}
!111 = metadata !{i64 409, [15 x i8] c"\09movl\09$4, %edx\00"}
!112 = metadata !{i64 414, [17 x i8] c"\09movq\09%rax, %rsi\00"}
!113 = metadata !{i64 417, [15 x i8] c"\09movl\09$0, %edi\00"}
!114 = metadata !{i64 422, [9 x i8] c"\09callq\090\00"}
!115 = metadata !{i64 427, [21 x i8] c"\09movw\09%ax, -38(%rbp)\00"}
!116 = metadata !{i64 431, [24 x i8] c"\09movzwl\09-38(%rbp), %eax\00"}
!117 = metadata !{i64 435, [17 x i8] c"\09orw\09$21845, %ax\00"}
!118 = metadata !{i64 439, [18 x i8] c"\09cmpw\09$56663, %ax\00"}
!119 = metadata !{i64 443, [8 x i8] c"\09jne\0923\00"}
!120 = metadata !{i64 391, [24 x i8] c"\09movl\09$4294967289, %eax\00"}
!121 = metadata !{i64 396, [9 x i8] c"\09jmp\09512\00"}
!122 = metadata !{i64 468, [24 x i8] c"\09movl\09$48059, -20(%rbp)\00"}
!123 = metadata !{i64 475, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!124 = metadata !{i64 479, [16 x i8] c"\09addq\09$12, %rax\00"}
!125 = metadata !{i64 483, [15 x i8] c"\09movl\09$8, %edx\00"}
!126 = metadata !{i64 488, [17 x i8] c"\09movq\09%rax, %rsi\00"}
!127 = metadata !{i64 491, [15 x i8] c"\09movl\09$0, %edi\00"}
!128 = metadata !{i64 496, [9 x i8] c"\09callq\090\00"}
!129 = metadata !{i64 501, [22 x i8] c"\09movl\09%eax, -44(%rbp)\00"}
!130 = metadata !{i64 504, [22 x i8] c"\09movl\09-44(%rbp), %eax\00"}
!131 = metadata !{i64 507, [24 x i8] c"\09xorl\09$2760406685, %eax\00"}
!132 = metadata !{i64 512, [22 x i8] c"\09movl\09%eax, -48(%rbp)\00"}
!133 = metadata !{i64 515, [22 x i8] c"\09movl\09-48(%rbp), %eax\00"}
!134 = metadata !{i64 518, [16 x i8] c"\09shrl\09$16, %eax\00"}
!135 = metadata !{i64 521, [22 x i8] c"\09movl\09%eax, -52(%rbp)\00"}
!136 = metadata !{i64 524, [22 x i8] c"\09movl\09-48(%rbp), %eax\00"}
!137 = metadata !{i64 527, [18 x i8] c"\09movzwl\09%ax, %eax\00"}
!138 = metadata !{i64 530, [22 x i8] c"\09movl\09%eax, -56(%rbp)\00"}
!139 = metadata !{i64 533, [24 x i8] c"\09cmpl\09$20299, -52(%rbp)\00"}
!140 = metadata !{i64 540, [8 x i8] c"\09jne\0917\00"}
!141 = metadata !{i64 445, [24 x i8] c"\09movzwl\09-38(%rbp), %eax\00"}
!142 = metadata !{i64 449, [17 x i8] c"\09orw\09$43690, %ax\00"}
!143 = metadata !{i64 453, [18 x i8] c"\09cmpw\09$65211, %ax\00"}
!144 = metadata !{i64 457, [7 x i8] c"\09jne\099\00"}
!145 = metadata !{i64 459, [24 x i8] c"\09movl\09$43690, -20(%rbp)\00"}
!146 = metadata !{i64 559, [24 x i8] c"\09movl\09$48351, -20(%rbp)\00"}
!147 = metadata !{i64 566, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!148 = metadata !{i64 570, [21 x i8] c"\09leaq\0920(%rax), %rcx\00"}
!149 = metadata !{i64 574, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!150 = metadata !{i64 577, [15 x i8] c"\09movl\09$8, %edx\00"}
!151 = metadata !{i64 582, [17 x i8] c"\09movq\09%rcx, %rsi\00"}
!152 = metadata !{i64 585, [17 x i8] c"\09movl\09%eax, %edi\00"}
!153 = metadata !{i64 587, [9 x i8] c"\09callq\090\00"}
!154 = metadata !{i64 592, [22 x i8] c"\09movl\09%eax, -60(%rbp)\00"}
!155 = metadata !{i64 595, [20 x i8] c"\09subl\09$3, -60(%rbp)\00"}
!156 = metadata !{i64 599, [22 x i8] c"\09movl\09-60(%rbp), %eax\00"}
!157 = metadata !{i64 602, [15 x i8] c"\09andl\09$7, %eax\00"}
!158 = metadata !{i64 605, [18 x i8] c"\09testl\09%eax, %eax\00"}
!159 = metadata !{i64 607, [7 x i8] c"\09je\0910\00"}
!160 = metadata !{i64 542, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!161 = metadata !{i64 545, [22 x i8] c"\09cmpl\09-56(%rbp), %eax\00"}
!162 = metadata !{i64 548, [7 x i8] c"\09jne\099\00"}
!163 = metadata !{i64 550, [20 x i8] c"\09movl\09$0, -20(%rbp)\00"}
!164 = metadata !{i64 619, [29 x i8] c"\09addl\09$2147483648, -60(%rbp)\00"}
!165 = metadata !{i64 626, [28 x i8] c"\09cmpl\09$268435455, -60(%rbp)\00"}
!166 = metadata !{i64 633, [8 x i8] c"\09jbe\0910\00"}
!167 = metadata !{i64 609, [24 x i8] c"\09movl\09$4294967275, %eax\00"}
!168 = metadata !{i64 614, [9 x i8] c"\09jmp\09294\00"}
!169 = metadata !{i64 645, [27 x i8] c"\09xorl\09$13631488, -60(%rbp)\00"}
!170 = metadata !{i64 652, [20 x i8] c"\09shrl\09$4, -60(%rbp)\00"}
!171 = metadata !{i64 656, [22 x i8] c"\09subl\09$226, -60(%rbp)\00"}
!172 = metadata !{i64 663, [22 x i8] c"\09movl\09-60(%rbp), %eax\00"}
!173 = metadata !{i64 671, [11 x i8] c"\09mull\09%edx\00"}
!174 = metadata !{i64 675, [16 x i8] c"\09shrl\09$13, %eax\00"}
!175 = metadata !{i64 678, [22 x i8] c"\09movl\09%eax, -60(%rbp)\00"}
!176 = metadata !{i64 681, [20 x i8] c"\09cmpl\09$3, -60(%rbp)\00"}
!177 = metadata !{i64 685, [6 x i8] c"\09je\098\00"}
!178 = metadata !{i64 695, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!179 = metadata !{i64 635, [24 x i8] c"\09movl\09$4294967274, %eax\00"}
!180 = metadata !{i64 640, [9 x i8] c"\09jmp\09268\00"}
!181 = metadata !{i64 699, [21 x i8] c"\09leaq\0928(%rax), %rcx\00"}
!182 = metadata !{i64 703, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!183 = metadata !{i64 706, [15 x i8] c"\09movl\09$4, %edx\00"}
!184 = metadata !{i64 711, [17 x i8] c"\09movq\09%rcx, %rsi\00"}
!185 = metadata !{i64 714, [17 x i8] c"\09movl\09%eax, %edi\00"}
!186 = metadata !{i64 716, [9 x i8] c"\09callq\090\00"}
!187 = metadata !{i64 721, [22 x i8] c"\09movl\09%eax, -64(%rbp)\00"}
!188 = metadata !{i64 724, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!189 = metadata !{i64 728, [16 x i8] c"\09addq\09$28, %rax\00"}
!190 = metadata !{i64 732, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!191 = metadata !{i64 735, [16 x i8] c"\09cmpb\09$100, %al\00"}
!192 = metadata !{i64 737, [8 x i8] c"\09jne\0929\00"}
!193 = metadata !{i64 687, [22 x i8] c"\09movl\09-60(%rbp), %eax\00"}
!194 = metadata !{i64 690, [9 x i8] c"\09jmp\09218\00"}
!195 = metadata !{i64 768, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!196 = metadata !{i64 772, [16 x i8] c"\09addq\09$28, %rax\00"}
!197 = metadata !{i64 776, [21 x i8] c"\09movzbl\09(%rax), %edx\00"}
!198 = metadata !{i64 779, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!199 = metadata !{i64 783, [16 x i8] c"\09addq\09$29, %rax\00"}
!200 = metadata !{i64 787, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!201 = metadata !{i64 790, [15 x i8] c"\09cmpb\09%al, %dl\00"}
!202 = metadata !{i64 792, [9 x i8] c"\09jne\09110\00"}
!203 = metadata !{i64 904, [22 x i8] c"\09movl\09-64(%rbp), %eax\00"}
!204 = metadata !{i64 739, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!205 = metadata !{i64 743, [16 x i8] c"\09addq\09$29, %rax\00"}
!206 = metadata !{i64 747, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!207 = metadata !{i64 750, [16 x i8] c"\09cmpb\09$100, %al\00"}
!208 = metadata !{i64 752, [8 x i8] c"\09jne\0914\00"}
!209 = metadata !{i64 754, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!210 = metadata !{i64 757, [22 x i8] c"\09xorl\09-64(%rbp), %eax\00"}
!211 = metadata !{i64 760, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!212 = metadata !{i64 763, [9 x i8] c"\09jmp\09142\00"}
!213 = metadata !{i64 907, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!214 = metadata !{i64 910, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!215 = metadata !{i64 794, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!216 = metadata !{i64 798, [16 x i8] c"\09addq\09$30, %rax\00"}
!217 = metadata !{i64 802, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!218 = metadata !{i64 805, [18 x i8] c"\09movsbl\09%al, %edx\00"}
!219 = metadata !{i64 808, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!220 = metadata !{i64 812, [16 x i8] c"\09addq\09$31, %rax\00"}
!221 = metadata !{i64 816, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!222 = metadata !{i64 819, [18 x i8] c"\09movsbl\09%al, %eax\00"}
!223 = metadata !{i64 822, [17 x i8] c"\09subl\09%eax, %edx\00"}
!224 = metadata !{i64 826, [16 x i8] c"\09addl\09$15, %eax\00"}
!225 = metadata !{i64 829, [22 x i8] c"\09addl\09%eax, -20(%rbp)\00"}
!226 = metadata !{i64 832, [22 x i8] c"\09movl\09-20(%rbp), %ebx\00"}
!227 = metadata !{i64 835, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!228 = metadata !{i64 839, [16 x i8] c"\09addq\09$28, %rax\00"}
!229 = metadata !{i64 843, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!230 = metadata !{i64 849, [17 x i8] c"\09movl\09%eax, %edi\00"}
!231 = metadata !{i64 851, [9 x i8] c"\09callq\090\00"}
!232 = metadata !{i64 856, [17 x i8] c"\09subl\09%eax, %ebx\00"}
!233 = metadata !{i64 858, [17 x i8] c"\09movl\09%ebx, %eax\00"}
!234 = metadata !{i64 860, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!235 = metadata !{i64 863, [20 x i8] c"\09cmpl\09$0, -20(%rbp)\00"}
!236 = metadata !{i64 867, [8 x i8] c"\09jne\0941\00"}
!237 = metadata !{i64 869, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!238 = metadata !{i64 873, [16 x i8] c"\09addq\09$31, %rax\00"}
!239 = metadata !{i64 877, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!240 = metadata !{i64 883, [17 x i8] c"\09movl\09%eax, %edi\00"}
!241 = metadata !{i64 885, [9 x i8] c"\09callq\090\00"}
!242 = metadata !{i64 890, [15 x i8] c"\09cmpl\09$4, %eax\00"}
!243 = metadata !{i64 893, [7 x i8] c"\09je\0915\00"}
!244 = metadata !{i64 895, [29 x i8] c"\09movl\09$4294967264, -20(%rbp)\00"}
!245 = metadata !{i64 902, [7 x i8] c"\09jmp\096\00"}
