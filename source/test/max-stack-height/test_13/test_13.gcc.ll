; ModuleID = 'test_13.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_c2(%struct.regs*) {
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
  %81 = add i64 %78, -56
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
  %91 = icmp ult i64 %79, 48, !mcsema_real_eip !4
  store i1 %91, i1* %CF_val, !mcsema_real_eip !4
  %92 = and i64 %82, %79, !mcsema_real_eip !4
  %93 = icmp slt i64 %92, 0
  store i1 %93, i1* %OF_val, !mcsema_real_eip !4
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !4
  %94 = load i64* %RBP_val, !mcsema_real_eip !5
  %95 = add i64 %94, -40, !mcsema_real_eip !5
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !5
  %97 = load i64* %RDI_val, !mcsema_real_eip !5
  store i64 %97, i64* %96, !mcsema_real_eip !5
  %98 = load i64* %RBP_val, !mcsema_real_eip !6
  %99 = add i64 %98, -44, !mcsema_real_eip !6
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !6
  %101 = load i64* %RSI_val, !mcsema_real_eip !6
  %102 = trunc i64 %101 to i32, !mcsema_real_eip !6
  %103 = bitcast i64* %100 to i32*
  store i32 %102, i32* %103, !mcsema_real_eip !6
  %104 = load i64* %RBP_val, !mcsema_real_eip !7
  %105 = add i64 %104, -4, !mcsema_real_eip !7
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !7
  %107 = bitcast i64* %106 to i32*
  store i32 0, i32* %107, !mcsema_real_eip !7
  %108 = load i64* %RBP_val, !mcsema_real_eip !8
  %109 = add i64 %108, -44, !mcsema_real_eip !8
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !8
  %111 = bitcast i64* %110 to i32*
  %112 = load i32* %111, !mcsema_real_eip !8
  %113 = sext i32 %112 to i64, !mcsema_real_eip !9
  %114 = shl nsw i64 %113, 3, !mcsema_real_eip !10
  store i1 false, i1* %CF_val, !mcsema_real_eip !10
  %115 = icmp eq i32 %112, 0
  store i1 %115, i1* %ZF_val, !mcsema_real_eip !10
  %116 = icmp slt i32 %112, 0
  store i1 %116, i1* %SF_val, !mcsema_real_eip !10
  %117 = trunc i64 %114 to i8, !mcsema_real_eip !10
  %118 = tail call i8 @llvm.ctpop.i8(i8 %117), !mcsema_real_eip !10
  %119 = and i8 %118, 1
  %120 = icmp eq i8 %119, 0
  store i1 %120, i1* %PF_val, !mcsema_real_eip !10
  store i64 %114, i64* %RDI_val, !mcsema_real_eip !11
  %121 = tail call x86_64_sysvcc i64 @malloc(i64 %114), !mcsema_real_eip !12
  store i64 %121, i64* %RAX_val, !mcsema_real_eip !12
  %122 = load i64* %RBP_val, !mcsema_real_eip !13
  %123 = add i64 %122, -16, !mcsema_real_eip !13
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !13
  store i64 %121, i64* %124, !mcsema_real_eip !13
  %125 = load i64* %RBP_val, !mcsema_real_eip !14
  %126 = add i64 %125, -4, !mcsema_real_eip !14
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !14
  %128 = bitcast i64* %127 to i32*
  %129 = load i32* %128, !mcsema_real_eip !14
  %130 = zext i32 %129 to i64, !mcsema_real_eip !14
  store i64 %130, i64* %RAX_val, !mcsema_real_eip !14
  %131 = load i64* %RBP_val, !mcsema_real_eip !15
  %132 = add i64 %131, -44, !mcsema_real_eip !15
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !15
  %134 = bitcast i64* %133 to i32*
  %135 = load i32* %134, !mcsema_real_eip !15
  %136 = sub i32 %129, %135, !mcsema_real_eip !15
  %137 = xor i32 %136, %129, !mcsema_real_eip !15
  %138 = xor i32 %137, %135, !mcsema_real_eip !15
  %139 = and i32 %138, 16, !mcsema_real_eip !15
  %140 = icmp ne i32 %139, 0, !mcsema_real_eip !15
  store i1 %140, i1* %AF_val, !mcsema_real_eip !15
  %141 = trunc i32 %136 to i8, !mcsema_real_eip !15
  %142 = tail call i8 @llvm.ctpop.i8(i8 %141), !mcsema_real_eip !15
  %143 = and i8 %142, 1
  %144 = icmp eq i8 %143, 0
  store i1 %144, i1* %PF_val, !mcsema_real_eip !15
  %145 = icmp eq i32 %129, %135
  store i1 %145, i1* %ZF_val, !mcsema_real_eip !15
  %146 = icmp slt i32 %136, 0
  store i1 %146, i1* %SF_val, !mcsema_real_eip !15
  %147 = icmp ult i32 %129, %135, !mcsema_real_eip !15
  store i1 %147, i1* %CF_val, !mcsema_real_eip !15
  %148 = xor i32 %135, %129, !mcsema_real_eip !15
  %149 = and i32 %137, %148, !mcsema_real_eip !15
  %150 = icmp slt i32 %149, 0
  store i1 %150, i1* %OF_val, !mcsema_real_eip !15
  %151 = load i1* %SF_val, !mcsema_real_eip !16
  %152 = xor i1 %151, %150
  br i1 %152, label %block_0xef.preheader, label %block_0x139, !mcsema_real_eip !16

block_0xef.preheader:                             ; preds = %entry
  br label %block_0xef

block_0xef:                                       ; preds = %block_0xef.backedge, %block_0xef.preheader
  %153 = load i64* %RBP_val, !mcsema_real_eip !17
  %154 = add i64 %153, -4, !mcsema_real_eip !17
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !17
  %156 = bitcast i64* %155 to i32*
  %157 = load i32* %156, !mcsema_real_eip !17
  %158 = sext i32 %157 to i64, !mcsema_real_eip !18
  store i64 %158, i64* %RAX_val, !mcsema_real_eip !18
  %159 = shl nsw i64 %158, 3
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !19
  %161 = ptrtoint i64* %160 to i64, !mcsema_real_eip !19
  store i64 %161, i64* %RDX_val, !mcsema_real_eip !19
  %162 = load i64* %RBP_val, !mcsema_real_eip !20
  %163 = add i64 %162, -40, !mcsema_real_eip !20
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !20
  %165 = load i64* %164, !mcsema_real_eip !20
  %uadd349 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %161, i64 %165)
  %166 = extractvalue { i64, i1 } %uadd349, 0
  %167 = xor i64 %166, %165, !mcsema_real_eip !21
  %168 = xor i64 %167, %161, !mcsema_real_eip !21
  %169 = and i64 %168, 16, !mcsema_real_eip !21
  %170 = icmp ne i64 %169, 0, !mcsema_real_eip !21
  store i1 %170, i1* %AF_val, !mcsema_real_eip !21
  %171 = icmp slt i64 %166, 0
  store i1 %171, i1* %SF_val, !mcsema_real_eip !21
  %172 = icmp eq i64 %166, 0, !mcsema_real_eip !21
  store i1 %172, i1* %ZF_val, !mcsema_real_eip !21
  %173 = xor i64 %165, -9223372036854775808, !mcsema_real_eip !21
  %174 = xor i64 %173, %161, !mcsema_real_eip !21
  %175 = and i64 %167, %174, !mcsema_real_eip !21
  %176 = icmp slt i64 %175, 0
  store i1 %176, i1* %OF_val, !mcsema_real_eip !21
  %177 = trunc i64 %166 to i8, !mcsema_real_eip !21
  %178 = tail call i8 @llvm.ctpop.i8(i8 %177), !mcsema_real_eip !21
  %179 = and i8 %178, 1
  %180 = icmp eq i8 %179, 0
  store i1 %180, i1* %PF_val, !mcsema_real_eip !21
  %181 = extractvalue { i64, i1 } %uadd349, 1
  store i1 %181, i1* %CF_val, !mcsema_real_eip !21
  store i64 %166, i64* %RAX_val, !mcsema_real_eip !21
  %182 = inttoptr i64 %166 to i64*, !mcsema_real_eip !22
  %183 = load i64* %182, !mcsema_real_eip !22
  store i64 %183, i64* %RAX_val, !mcsema_real_eip !22
  %184 = load i64* %RBP_val, !mcsema_real_eip !23
  %185 = add i64 %184, -24, !mcsema_real_eip !23
  %186 = inttoptr i64 %185 to i64*, !mcsema_real_eip !23
  store i64 %183, i64* %186, !mcsema_real_eip !23
  %187 = load i64* %RBP_val, !mcsema_real_eip !24
  %188 = add i64 %187, -24, !mcsema_real_eip !24
  %189 = inttoptr i64 %188 to i64*, !mcsema_real_eip !24
  %190 = load i64* %189, !mcsema_real_eip !24
  store i64 %190, i64* %RAX_val, !mcsema_real_eip !24
  store i64 %190, i64* %RDI_val, !mcsema_real_eip !25
  %191 = load i64* %RSP_val, !mcsema_real_eip !26
  %192 = add i64 %191, -8
  %193 = inttoptr i64 %192 to i64*, !mcsema_real_eip !26
  store i64 -4981261766360305936, i64* %193, !mcsema_real_eip !26
  store i64 %192, i64* %RSP_val, !mcsema_real_eip !26
  %194 = load i64* %RAX_val, !mcsema_real_eip !26
  store i64 %194, i64* %RAX, !mcsema_real_eip !26
  %195 = load i64* %RBX_val, !mcsema_real_eip !26
  store i64 %195, i64* %RBX, !mcsema_real_eip !26
  %196 = load i64* %RCX_val, !mcsema_real_eip !26
  store i64 %196, i64* %RCX, !mcsema_real_eip !26
  %197 = load i64* %RDX_val, !mcsema_real_eip !26
  store i64 %197, i64* %RDX, !mcsema_real_eip !26
  %198 = load i64* %RSI_val, !mcsema_real_eip !26
  store i64 %198, i64* %RSI, !mcsema_real_eip !26
  %199 = load i64* %RDI_val, !mcsema_real_eip !26
  store i64 %199, i64* %RDI, !mcsema_real_eip !26
  %200 = load i64* %RSP_val, !mcsema_real_eip !26
  store i64 %200, i64* %RSP, !mcsema_real_eip !26
  %201 = load i64* %RBP_val, !mcsema_real_eip !26
  store i64 %201, i64* %RBP, !mcsema_real_eip !26
  %202 = load i64* %R8_val, !mcsema_real_eip !26
  store i64 %202, i64* %R8, !mcsema_real_eip !26
  %203 = load i64* %R9_val, !mcsema_real_eip !26
  store i64 %203, i64* %R9, !mcsema_real_eip !26
  %204 = load i64* %R10_val, !mcsema_real_eip !26
  store i64 %204, i64* %R10, !mcsema_real_eip !26
  %205 = load i64* %R11_val, !mcsema_real_eip !26
  store i64 %205, i64* %R11, !mcsema_real_eip !26
  %206 = load i64* %R12_val, !mcsema_real_eip !26
  store i64 %206, i64* %R12, !mcsema_real_eip !26
  %207 = load i64* %R13_val, !mcsema_real_eip !26
  store i64 %207, i64* %R13, !mcsema_real_eip !26
  %208 = load i64* %R14_val, !mcsema_real_eip !26
  store i64 %208, i64* %R14, !mcsema_real_eip !26
  %209 = load i64* %R15_val, !mcsema_real_eip !26
  store i64 %209, i64* %R15, !mcsema_real_eip !26
  %210 = load i64* %RIP_val, !mcsema_real_eip !26
  store i64 %210, i64* %RIP, !mcsema_real_eip !26
  %211 = load i1* %CF_val, !mcsema_real_eip !26
  store i1 %211, i1* %CF, align 1, !mcsema_real_eip !26
  %212 = load i1* %PF_val, !mcsema_real_eip !26
  store i1 %212, i1* %PF, align 1, !mcsema_real_eip !26
  %213 = load i1* %AF_val, !mcsema_real_eip !26
  store i1 %213, i1* %AF, align 1, !mcsema_real_eip !26
  %214 = load i1* %ZF_val, !mcsema_real_eip !26
  store i1 %214, i1* %ZF, align 1, !mcsema_real_eip !26
  %215 = load i1* %SF_val, !mcsema_real_eip !26
  store i1 %215, i1* %SF, align 1, !mcsema_real_eip !26
  %216 = load i1* %OF_val, !mcsema_real_eip !26
  store i1 %216, i1* %OF, align 1, !mcsema_real_eip !26
  %217 = load i1* %DF_val, !mcsema_real_eip !26
  store i1 %217, i1* %DF, align 1, !mcsema_real_eip !26
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !26
  %218 = load i1* %FPU_B_val, !mcsema_real_eip !26
  store i1 %218, i1* %FPU_B, align 1, !mcsema_real_eip !26
  %219 = load i1* %FPU_C3_val, !mcsema_real_eip !26
  store i1 %219, i1* %FPU_C3, align 1, !mcsema_real_eip !26
  %220 = load i3* %FPU_TOP_val, !mcsema_real_eip !26
  store i3 %220, i3* %FPU_TOP, align 1, !mcsema_real_eip !26
  %221 = load i1* %FPU_C2_val, !mcsema_real_eip !26
  store i1 %221, i1* %FPU_C2, align 1, !mcsema_real_eip !26
  %222 = load i1* %FPU_C1_val, !mcsema_real_eip !26
  store i1 %222, i1* %FPU_C1, align 1, !mcsema_real_eip !26
  %223 = load i1* %FPU_C0_val, !mcsema_real_eip !26
  store i1 %223, i1* %FPU_C0, align 1, !mcsema_real_eip !26
  %224 = load i1* %FPU_ES_val, !mcsema_real_eip !26
  store i1 %224, i1* %FPU_ES, align 1, !mcsema_real_eip !26
  %225 = load i1* %FPU_SF_val, !mcsema_real_eip !26
  store i1 %225, i1* %FPU_SF, align 1, !mcsema_real_eip !26
  %226 = load i1* %FPU_PE_val, !mcsema_real_eip !26
  store i1 %226, i1* %FPU_PE, align 1, !mcsema_real_eip !26
  %227 = load i1* %FPU_UE_val, !mcsema_real_eip !26
  store i1 %227, i1* %FPU_UE, align 1, !mcsema_real_eip !26
  %228 = load i1* %FPU_OE_val, !mcsema_real_eip !26
  store i1 %228, i1* %FPU_OE, align 1, !mcsema_real_eip !26
  %229 = load i1* %FPU_ZE_val, !mcsema_real_eip !26
  store i1 %229, i1* %FPU_ZE, align 1, !mcsema_real_eip !26
  %230 = load i1* %FPU_DE_val, !mcsema_real_eip !26
  store i1 %230, i1* %FPU_DE, align 1, !mcsema_real_eip !26
  %231 = load i1* %FPU_IE_val, !mcsema_real_eip !26
  store i1 %231, i1* %FPU_IE, align 1, !mcsema_real_eip !26
  %232 = load i1* %FPU_X_val, !mcsema_real_eip !26
  store i1 %232, i1* %FPU_X, align 1, !mcsema_real_eip !26
  %233 = load i2* %FPU_RC_val, !mcsema_real_eip !26
  store i2 %233, i2* %FPU_RC, align 1, !mcsema_real_eip !26
  %234 = load i2* %FPU_PC_val, !mcsema_real_eip !26
  store i2 %234, i2* %FPU_PC, align 1, !mcsema_real_eip !26
  %235 = load i1* %FPU_PM_val, !mcsema_real_eip !26
  store i1 %235, i1* %FPU_PM, align 1, !mcsema_real_eip !26
  %236 = load i1* %FPU_UM_val, !mcsema_real_eip !26
  store i1 %236, i1* %FPU_UM, align 1, !mcsema_real_eip !26
  %237 = load i1* %FPU_OM_val, !mcsema_real_eip !26
  store i1 %237, i1* %FPU_OM, align 1, !mcsema_real_eip !26
  %238 = load i1* %FPU_ZM_val, !mcsema_real_eip !26
  store i1 %238, i1* %FPU_ZM, align 1, !mcsema_real_eip !26
  %239 = load i1* %FPU_DM_val, !mcsema_real_eip !26
  store i1 %239, i1* %FPU_DM, align 1, !mcsema_real_eip !26
  %240 = load i1* %FPU_IM_val, !mcsema_real_eip !26
  store i1 %240, i1* %FPU_IM, align 1, !mcsema_real_eip !26
  %241 = load i64* %53, align 4
  store i64 %241, i64* %52, align 4
  %242 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !26
  store i16 %242, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !26
  %243 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !26
  store i64 %243, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !26
  %244 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !26
  store i16 %244, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !26
  %245 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !26
  store i64 %245, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !26
  %246 = load i128* %XMM0_val, !mcsema_real_eip !26
  store i128 %246, i128* %XMM0, align 1, !mcsema_real_eip !26
  %247 = load i128* %XMM1_val, !mcsema_real_eip !26
  store i128 %247, i128* %XMM1, align 1, !mcsema_real_eip !26
  %248 = load i128* %XMM2_val, !mcsema_real_eip !26
  store i128 %248, i128* %XMM2, align 1, !mcsema_real_eip !26
  %249 = load i128* %XMM3_val, !mcsema_real_eip !26
  store i128 %249, i128* %XMM3, align 1, !mcsema_real_eip !26
  %250 = load i128* %XMM4_val, !mcsema_real_eip !26
  store i128 %250, i128* %XMM4, align 1, !mcsema_real_eip !26
  %251 = load i128* %XMM5_val, !mcsema_real_eip !26
  store i128 %251, i128* %XMM5, align 1, !mcsema_real_eip !26
  %252 = load i128* %XMM6_val, !mcsema_real_eip !26
  store i128 %252, i128* %XMM6, align 1, !mcsema_real_eip !26
  %253 = load i128* %XMM7_val, !mcsema_real_eip !26
  store i128 %253, i128* %XMM7, align 1, !mcsema_real_eip !26
  %254 = load i128* %XMM8_val, !mcsema_real_eip !26
  store i128 %254, i128* %XMM8, align 1, !mcsema_real_eip !26
  %255 = load i128* %XMM9_val, !mcsema_real_eip !26
  store i128 %255, i128* %XMM9, align 1, !mcsema_real_eip !26
  %256 = load i128* %XMM10_val, !mcsema_real_eip !26
  store i128 %256, i128* %XMM10, align 1, !mcsema_real_eip !26
  %257 = load i128* %XMM11_val, !mcsema_real_eip !26
  store i128 %257, i128* %XMM11, align 1, !mcsema_real_eip !26
  %258 = load i128* %XMM12_val, !mcsema_real_eip !26
  store i128 %258, i128* %XMM12, align 1, !mcsema_real_eip !26
  %259 = load i128* %XMM13_val, !mcsema_real_eip !26
  store i128 %259, i128* %XMM13, align 1, !mcsema_real_eip !26
  %260 = load i128* %XMM14_val, !mcsema_real_eip !26
  store i128 %260, i128* %XMM14, align 1, !mcsema_real_eip !26
  %261 = load i128* %XMM15_val, !mcsema_real_eip !26
  store i128 %261, i128* %XMM15, align 1, !mcsema_real_eip !26
  %262 = load i64* %STACK_BASE_val, !mcsema_real_eip !26
  store i64 %262, i64* %STACK_BASE, align 1, !mcsema_real_eip !26
  %263 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !26
  store i64 %263, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !26
  tail call x86_64_sysvcc void @sub_7(%struct.regs* %0), !mcsema_real_eip !26
  %264 = load i64* %RAX, !mcsema_real_eip !26
  store i64 %264, i64* %RAX_val, !mcsema_real_eip !26
  %265 = load i64* %RBX, !mcsema_real_eip !26
  store i64 %265, i64* %RBX_val, !mcsema_real_eip !26
  %266 = load i64* %RCX, !mcsema_real_eip !26
  store i64 %266, i64* %RCX_val, !mcsema_real_eip !26
  %267 = load i64* %RDX, !mcsema_real_eip !26
  store i64 %267, i64* %RDX_val, !mcsema_real_eip !26
  %268 = load i64* %RSI, !mcsema_real_eip !26
  store i64 %268, i64* %RSI_val, !mcsema_real_eip !26
  %269 = load i64* %RDI, !mcsema_real_eip !26
  store i64 %269, i64* %RDI_val, !mcsema_real_eip !26
  %270 = load i64* %RSP, !mcsema_real_eip !26
  store i64 %270, i64* %RSP_val, !mcsema_real_eip !26
  %271 = load i64* %RBP, !mcsema_real_eip !26
  store i64 %271, i64* %RBP_val, !mcsema_real_eip !26
  %272 = load i64* %R8, !mcsema_real_eip !26
  store i64 %272, i64* %R8_val, !mcsema_real_eip !26
  %273 = load i64* %R9, !mcsema_real_eip !26
  store i64 %273, i64* %R9_val, !mcsema_real_eip !26
  %274 = load i64* %R10, !mcsema_real_eip !26
  store i64 %274, i64* %R10_val, !mcsema_real_eip !26
  %275 = load i64* %R11, !mcsema_real_eip !26
  store i64 %275, i64* %R11_val, !mcsema_real_eip !26
  %276 = load i64* %R12, !mcsema_real_eip !26
  store i64 %276, i64* %R12_val, !mcsema_real_eip !26
  %277 = load i64* %R13, !mcsema_real_eip !26
  store i64 %277, i64* %R13_val, !mcsema_real_eip !26
  %278 = load i64* %R14, !mcsema_real_eip !26
  store i64 %278, i64* %R14_val, !mcsema_real_eip !26
  %279 = load i64* %R15, !mcsema_real_eip !26
  store i64 %279, i64* %R15_val, !mcsema_real_eip !26
  %280 = load i64* %RIP, !mcsema_real_eip !26
  store i64 %280, i64* %RIP_val, !mcsema_real_eip !26
  %281 = load i1* %CF, align 1, !mcsema_real_eip !26
  store i1 %281, i1* %CF_val, !mcsema_real_eip !26
  %282 = load i1* %PF, align 1, !mcsema_real_eip !26
  store i1 %282, i1* %PF_val, !mcsema_real_eip !26
  %283 = load i1* %AF, align 1, !mcsema_real_eip !26
  store i1 %283, i1* %AF_val, !mcsema_real_eip !26
  %284 = load i1* %ZF, align 1, !mcsema_real_eip !26
  store i1 %284, i1* %ZF_val, !mcsema_real_eip !26
  %285 = load i1* %SF, align 1, !mcsema_real_eip !26
  store i1 %285, i1* %SF_val, !mcsema_real_eip !26
  %286 = load i1* %OF, align 1, !mcsema_real_eip !26
  store i1 %286, i1* %OF_val, !mcsema_real_eip !26
  %287 = load i1* %DF, align 1, !mcsema_real_eip !26
  store i1 %287, i1* %DF_val, !mcsema_real_eip !26
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !26
  %288 = load i1* %FPU_B, align 1, !mcsema_real_eip !26
  store i1 %288, i1* %FPU_B_val, !mcsema_real_eip !26
  %289 = load i1* %FPU_C3, align 1, !mcsema_real_eip !26
  store i1 %289, i1* %FPU_C3_val, !mcsema_real_eip !26
  %290 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !26
  store i3 %290, i3* %FPU_TOP_val, !mcsema_real_eip !26
  %291 = load i1* %FPU_C2, align 1, !mcsema_real_eip !26
  store i1 %291, i1* %FPU_C2_val, !mcsema_real_eip !26
  %292 = load i1* %FPU_C1, align 1, !mcsema_real_eip !26
  store i1 %292, i1* %FPU_C1_val, !mcsema_real_eip !26
  %293 = load i1* %FPU_C0, align 1, !mcsema_real_eip !26
  store i1 %293, i1* %FPU_C0_val, !mcsema_real_eip !26
  %294 = load i1* %FPU_ES, align 1, !mcsema_real_eip !26
  store i1 %294, i1* %FPU_ES_val, !mcsema_real_eip !26
  %295 = load i1* %FPU_SF, align 1, !mcsema_real_eip !26
  store i1 %295, i1* %FPU_SF_val, !mcsema_real_eip !26
  %296 = load i1* %FPU_PE, align 1, !mcsema_real_eip !26
  store i1 %296, i1* %FPU_PE_val, !mcsema_real_eip !26
  %297 = load i1* %FPU_UE, align 1, !mcsema_real_eip !26
  store i1 %297, i1* %FPU_UE_val, !mcsema_real_eip !26
  %298 = load i1* %FPU_OE, align 1, !mcsema_real_eip !26
  store i1 %298, i1* %FPU_OE_val, !mcsema_real_eip !26
  %299 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !26
  store i1 %299, i1* %FPU_ZE_val, !mcsema_real_eip !26
  %300 = load i1* %FPU_DE, align 1, !mcsema_real_eip !26
  store i1 %300, i1* %FPU_DE_val, !mcsema_real_eip !26
  %301 = load i1* %FPU_IE, align 1, !mcsema_real_eip !26
  store i1 %301, i1* %FPU_IE_val, !mcsema_real_eip !26
  %302 = load i1* %FPU_X, align 1, !mcsema_real_eip !26
  store i1 %302, i1* %FPU_X_val, !mcsema_real_eip !26
  %303 = load i2* %FPU_RC, align 1, !mcsema_real_eip !26
  store i2 %303, i2* %FPU_RC_val, !mcsema_real_eip !26
  %304 = load i2* %FPU_PC, align 1, !mcsema_real_eip !26
  store i2 %304, i2* %FPU_PC_val, !mcsema_real_eip !26
  %305 = load i1* %FPU_PM, align 1, !mcsema_real_eip !26
  store i1 %305, i1* %FPU_PM_val, !mcsema_real_eip !26
  %306 = load i1* %FPU_UM, align 1, !mcsema_real_eip !26
  store i1 %306, i1* %FPU_UM_val, !mcsema_real_eip !26
  %307 = load i1* %FPU_OM, align 1, !mcsema_real_eip !26
  store i1 %307, i1* %FPU_OM_val, !mcsema_real_eip !26
  %308 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !26
  store i1 %308, i1* %FPU_ZM_val, !mcsema_real_eip !26
  %309 = load i1* %FPU_DM, align 1, !mcsema_real_eip !26
  store i1 %309, i1* %FPU_DM_val, !mcsema_real_eip !26
  %310 = load i1* %FPU_IM, align 1, !mcsema_real_eip !26
  store i1 %310, i1* %FPU_IM_val, !mcsema_real_eip !26
  %311 = load i64* %52, align 4
  store i64 %311, i64* %53, align 4
  %312 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !26
  store i16 %312, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !26
  %313 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !26
  store i64 %313, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !26
  %314 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !26
  store i16 %314, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !26
  %315 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !26
  store i64 %315, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !26
  %316 = load i128* %XMM0, align 1, !mcsema_real_eip !26
  store i128 %316, i128* %XMM0_val, !mcsema_real_eip !26
  %317 = load i128* %XMM1, align 1, !mcsema_real_eip !26
  store i128 %317, i128* %XMM1_val, !mcsema_real_eip !26
  %318 = load i128* %XMM2, align 1, !mcsema_real_eip !26
  store i128 %318, i128* %XMM2_val, !mcsema_real_eip !26
  %319 = load i128* %XMM3, align 1, !mcsema_real_eip !26
  store i128 %319, i128* %XMM3_val, !mcsema_real_eip !26
  %320 = load i128* %XMM4, align 1, !mcsema_real_eip !26
  store i128 %320, i128* %XMM4_val, !mcsema_real_eip !26
  %321 = load i128* %XMM5, align 1, !mcsema_real_eip !26
  store i128 %321, i128* %XMM5_val, !mcsema_real_eip !26
  %322 = load i128* %XMM6, align 1, !mcsema_real_eip !26
  store i128 %322, i128* %XMM6_val, !mcsema_real_eip !26
  %323 = load i128* %XMM7, align 1, !mcsema_real_eip !26
  store i128 %323, i128* %XMM7_val, !mcsema_real_eip !26
  %324 = load i128* %XMM8, align 1, !mcsema_real_eip !26
  store i128 %324, i128* %XMM8_val, !mcsema_real_eip !26
  %325 = load i128* %XMM9, align 1, !mcsema_real_eip !26
  store i128 %325, i128* %XMM9_val, !mcsema_real_eip !26
  %326 = load i128* %XMM10, align 1, !mcsema_real_eip !26
  store i128 %326, i128* %XMM10_val, !mcsema_real_eip !26
  %327 = load i128* %XMM11, align 1, !mcsema_real_eip !26
  store i128 %327, i128* %XMM11_val, !mcsema_real_eip !26
  %328 = load i128* %XMM12, align 1, !mcsema_real_eip !26
  store i128 %328, i128* %XMM12_val, !mcsema_real_eip !26
  %329 = load i128* %XMM13, align 1, !mcsema_real_eip !26
  store i128 %329, i128* %XMM13_val, !mcsema_real_eip !26
  %330 = load i128* %XMM14, align 1, !mcsema_real_eip !26
  store i128 %330, i128* %XMM14_val, !mcsema_real_eip !26
  %331 = load i128* %XMM15, align 1, !mcsema_real_eip !26
  store i128 %331, i128* %XMM15_val, !mcsema_real_eip !26
  %332 = load i64* %STACK_BASE, !mcsema_real_eip !26
  store i64 %332, i64* %STACK_BASE_val, !mcsema_real_eip !26
  %333 = load i64* %STACK_LIMIT, !mcsema_real_eip !26
  store i64 %333, i64* %STACK_LIMIT_val, !mcsema_real_eip !26
  %334 = load i64* %RAX_val, !mcsema_real_eip !27
  %335 = trunc i64 %334 to i32, !mcsema_real_eip !27
  %336 = icmp eq i32 %335, 0, !mcsema_real_eip !27
  store i1 %336, i1* %ZF_val, !mcsema_real_eip !27
  %337 = icmp slt i32 %335, 0
  store i1 %337, i1* %SF_val, !mcsema_real_eip !27
  %338 = trunc i64 %334 to i8
  %339 = tail call i8 @llvm.ctpop.i8(i8 %338), !mcsema_real_eip !27
  %340 = and i8 %339, 1
  %341 = icmp eq i8 %340, 0
  store i1 %341, i1* %PF_val, !mcsema_real_eip !27
  store i1 false, i1* %CF_val, !mcsema_real_eip !27
  store i1 false, i1* %OF_val, !mcsema_real_eip !27
  %342 = load i1* %ZF_val, !mcsema_real_eip !28
  %343 = load i64* %RBP_val, !mcsema_real_eip !29
  br i1 %342, label %block_0x11a, label %block_0x12d, !mcsema_real_eip !28

block_0x139.loopexit:                             ; preds = %block_0x11a, %block_0x12d
  br label %block_0x139

block_0x139:                                      ; preds = %block_0x139.loopexit, %entry
  %344 = load i64* %RBP_val, !mcsema_real_eip !30
  %345 = add i64 %344, -16, !mcsema_real_eip !30
  %346 = inttoptr i64 %345 to i64*, !mcsema_real_eip !30
  %347 = load i64* %346, !mcsema_real_eip !30
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %347, i64 1)
  %348 = extractvalue { i64, i1 } %uadd, 0
  %349 = xor i64 %348, %347, !mcsema_real_eip !31
  %350 = and i64 %349, 16, !mcsema_real_eip !31
  %351 = icmp ne i64 %350, 0, !mcsema_real_eip !31
  store i1 %351, i1* %AF_val, !mcsema_real_eip !31
  %352 = icmp slt i64 %348, 0
  store i1 %352, i1* %SF_val, !mcsema_real_eip !31
  %353 = icmp eq i64 %348, 0, !mcsema_real_eip !31
  store i1 %353, i1* %ZF_val, !mcsema_real_eip !31
  %354 = xor i64 %347, -9223372036854775808, !mcsema_real_eip !31
  %355 = and i64 %349, %354, !mcsema_real_eip !31
  %356 = icmp slt i64 %355, 0
  store i1 %356, i1* %OF_val, !mcsema_real_eip !31
  %357 = trunc i64 %348 to i8, !mcsema_real_eip !31
  %358 = tail call i8 @llvm.ctpop.i8(i8 %357), !mcsema_real_eip !31
  %359 = and i8 %358, 1
  %360 = icmp eq i8 %359, 0
  store i1 %360, i1* %PF_val, !mcsema_real_eip !31
  %361 = extractvalue { i64, i1 } %uadd, 1
  store i1 %361, i1* %CF_val, !mcsema_real_eip !31
  store i64 %348, i64* %RAX_val, !mcsema_real_eip !31
  %362 = inttoptr i64 %348 to i64*, !mcsema_real_eip !32
  %363 = bitcast i64* %362 to i8*
  store i8 2, i8* %363, !mcsema_real_eip !32
  %364 = load i64* %RBP_val, !mcsema_real_eip !33
  store i64 %364, i64* %RSP_val, !mcsema_real_eip !33
  %365 = inttoptr i64 %364 to i64*, !mcsema_real_eip !33
  %366 = load i64* %365, !mcsema_real_eip !33
  store i64 %366, i64* %RBP_val, !mcsema_real_eip !33
  %367 = add i64 %364, 16, !mcsema_real_eip !34
  store i64 %367, i64* %RSP_val, !mcsema_real_eip !34
  %368 = load i64* %RAX_val, !mcsema_real_eip !34
  store i64 %368, i64* %RAX, !mcsema_real_eip !34
  %369 = load i64* %RBX_val, !mcsema_real_eip !34
  store i64 %369, i64* %RBX, !mcsema_real_eip !34
  %370 = load i64* %RCX_val, !mcsema_real_eip !34
  store i64 %370, i64* %RCX, !mcsema_real_eip !34
  %371 = load i64* %RDX_val, !mcsema_real_eip !34
  store i64 %371, i64* %RDX, !mcsema_real_eip !34
  %372 = load i64* %RSI_val, !mcsema_real_eip !34
  store i64 %372, i64* %RSI, !mcsema_real_eip !34
  %373 = load i64* %RDI_val, !mcsema_real_eip !34
  store i64 %373, i64* %RDI, !mcsema_real_eip !34
  %374 = load i64* %RSP_val, !mcsema_real_eip !34
  store i64 %374, i64* %RSP, !mcsema_real_eip !34
  %375 = load i64* %RBP_val, !mcsema_real_eip !34
  store i64 %375, i64* %RBP, !mcsema_real_eip !34
  %376 = load i64* %R8_val, !mcsema_real_eip !34
  store i64 %376, i64* %R8, !mcsema_real_eip !34
  %377 = load i64* %R9_val, !mcsema_real_eip !34
  store i64 %377, i64* %R9, !mcsema_real_eip !34
  %378 = load i64* %R10_val, !mcsema_real_eip !34
  store i64 %378, i64* %R10, !mcsema_real_eip !34
  %379 = load i64* %R11_val, !mcsema_real_eip !34
  store i64 %379, i64* %R11, !mcsema_real_eip !34
  %380 = load i64* %R12_val, !mcsema_real_eip !34
  store i64 %380, i64* %R12, !mcsema_real_eip !34
  %381 = load i64* %R13_val, !mcsema_real_eip !34
  store i64 %381, i64* %R13, !mcsema_real_eip !34
  %382 = load i64* %R14_val, !mcsema_real_eip !34
  store i64 %382, i64* %R14, !mcsema_real_eip !34
  %383 = load i64* %R15_val, !mcsema_real_eip !34
  store i64 %383, i64* %R15, !mcsema_real_eip !34
  %384 = load i64* %RIP_val, !mcsema_real_eip !34
  store i64 %384, i64* %RIP, !mcsema_real_eip !34
  %385 = load i1* %CF_val, !mcsema_real_eip !34
  store i1 %385, i1* %CF, align 1, !mcsema_real_eip !34
  %386 = load i1* %PF_val, !mcsema_real_eip !34
  store i1 %386, i1* %PF, align 1, !mcsema_real_eip !34
  %387 = load i1* %AF_val, !mcsema_real_eip !34
  store i1 %387, i1* %AF, align 1, !mcsema_real_eip !34
  %388 = load i1* %ZF_val, !mcsema_real_eip !34
  store i1 %388, i1* %ZF, align 1, !mcsema_real_eip !34
  %389 = load i1* %SF_val, !mcsema_real_eip !34
  store i1 %389, i1* %SF, align 1, !mcsema_real_eip !34
  %390 = load i1* %OF_val, !mcsema_real_eip !34
  store i1 %390, i1* %OF, align 1, !mcsema_real_eip !34
  %391 = load i1* %DF_val, !mcsema_real_eip !34
  store i1 %391, i1* %DF, align 1, !mcsema_real_eip !34
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !34
  %392 = load i1* %FPU_B_val, !mcsema_real_eip !34
  store i1 %392, i1* %FPU_B, align 1, !mcsema_real_eip !34
  %393 = load i1* %FPU_C3_val, !mcsema_real_eip !34
  store i1 %393, i1* %FPU_C3, align 1, !mcsema_real_eip !34
  %394 = load i3* %FPU_TOP_val, !mcsema_real_eip !34
  store i3 %394, i3* %FPU_TOP, align 1, !mcsema_real_eip !34
  %395 = load i1* %FPU_C2_val, !mcsema_real_eip !34
  store i1 %395, i1* %FPU_C2, align 1, !mcsema_real_eip !34
  %396 = load i1* %FPU_C1_val, !mcsema_real_eip !34
  store i1 %396, i1* %FPU_C1, align 1, !mcsema_real_eip !34
  %397 = load i1* %FPU_C0_val, !mcsema_real_eip !34
  store i1 %397, i1* %FPU_C0, align 1, !mcsema_real_eip !34
  %398 = load i1* %FPU_ES_val, !mcsema_real_eip !34
  store i1 %398, i1* %FPU_ES, align 1, !mcsema_real_eip !34
  %399 = load i1* %FPU_SF_val, !mcsema_real_eip !34
  store i1 %399, i1* %FPU_SF, align 1, !mcsema_real_eip !34
  %400 = load i1* %FPU_PE_val, !mcsema_real_eip !34
  store i1 %400, i1* %FPU_PE, align 1, !mcsema_real_eip !34
  %401 = load i1* %FPU_UE_val, !mcsema_real_eip !34
  store i1 %401, i1* %FPU_UE, align 1, !mcsema_real_eip !34
  %402 = load i1* %FPU_OE_val, !mcsema_real_eip !34
  store i1 %402, i1* %FPU_OE, align 1, !mcsema_real_eip !34
  %403 = load i1* %FPU_ZE_val, !mcsema_real_eip !34
  store i1 %403, i1* %FPU_ZE, align 1, !mcsema_real_eip !34
  %404 = load i1* %FPU_DE_val, !mcsema_real_eip !34
  store i1 %404, i1* %FPU_DE, align 1, !mcsema_real_eip !34
  %405 = load i1* %FPU_IE_val, !mcsema_real_eip !34
  store i1 %405, i1* %FPU_IE, align 1, !mcsema_real_eip !34
  %406 = load i1* %FPU_X_val, !mcsema_real_eip !34
  store i1 %406, i1* %FPU_X, align 1, !mcsema_real_eip !34
  %407 = load i2* %FPU_RC_val, !mcsema_real_eip !34
  store i2 %407, i2* %FPU_RC, align 1, !mcsema_real_eip !34
  %408 = load i2* %FPU_PC_val, !mcsema_real_eip !34
  store i2 %408, i2* %FPU_PC, align 1, !mcsema_real_eip !34
  %409 = load i1* %FPU_PM_val, !mcsema_real_eip !34
  store i1 %409, i1* %FPU_PM, align 1, !mcsema_real_eip !34
  %410 = load i1* %FPU_UM_val, !mcsema_real_eip !34
  store i1 %410, i1* %FPU_UM, align 1, !mcsema_real_eip !34
  %411 = load i1* %FPU_OM_val, !mcsema_real_eip !34
  store i1 %411, i1* %FPU_OM, align 1, !mcsema_real_eip !34
  %412 = load i1* %FPU_ZM_val, !mcsema_real_eip !34
  store i1 %412, i1* %FPU_ZM, align 1, !mcsema_real_eip !34
  %413 = load i1* %FPU_DM_val, !mcsema_real_eip !34
  store i1 %413, i1* %FPU_DM, align 1, !mcsema_real_eip !34
  %414 = load i1* %FPU_IM_val, !mcsema_real_eip !34
  store i1 %414, i1* %FPU_IM, align 1, !mcsema_real_eip !34
  %415 = load i64* %53, align 4
  store i64 %415, i64* %52, align 4
  %416 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !34
  store i16 %416, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !34
  %417 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !34
  store i64 %417, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !34
  %418 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !34
  store i16 %418, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !34
  %419 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !34
  store i64 %419, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !34
  %420 = load i128* %XMM0_val, !mcsema_real_eip !34
  store i128 %420, i128* %XMM0, align 1, !mcsema_real_eip !34
  %421 = load i128* %XMM1_val, !mcsema_real_eip !34
  store i128 %421, i128* %XMM1, align 1, !mcsema_real_eip !34
  %422 = load i128* %XMM2_val, !mcsema_real_eip !34
  store i128 %422, i128* %XMM2, align 1, !mcsema_real_eip !34
  %423 = load i128* %XMM3_val, !mcsema_real_eip !34
  store i128 %423, i128* %XMM3, align 1, !mcsema_real_eip !34
  %424 = load i128* %XMM4_val, !mcsema_real_eip !34
  store i128 %424, i128* %XMM4, align 1, !mcsema_real_eip !34
  %425 = load i128* %XMM5_val, !mcsema_real_eip !34
  store i128 %425, i128* %XMM5, align 1, !mcsema_real_eip !34
  %426 = load i128* %XMM6_val, !mcsema_real_eip !34
  store i128 %426, i128* %XMM6, align 1, !mcsema_real_eip !34
  %427 = load i128* %XMM7_val, !mcsema_real_eip !34
  store i128 %427, i128* %XMM7, align 1, !mcsema_real_eip !34
  %428 = load i128* %XMM8_val, !mcsema_real_eip !34
  store i128 %428, i128* %XMM8, align 1, !mcsema_real_eip !34
  %429 = load i128* %XMM9_val, !mcsema_real_eip !34
  store i128 %429, i128* %XMM9, align 1, !mcsema_real_eip !34
  %430 = load i128* %XMM10_val, !mcsema_real_eip !34
  store i128 %430, i128* %XMM10, align 1, !mcsema_real_eip !34
  %431 = load i128* %XMM11_val, !mcsema_real_eip !34
  store i128 %431, i128* %XMM11, align 1, !mcsema_real_eip !34
  %432 = load i128* %XMM12_val, !mcsema_real_eip !34
  store i128 %432, i128* %XMM12, align 1, !mcsema_real_eip !34
  %433 = load i128* %XMM13_val, !mcsema_real_eip !34
  store i128 %433, i128* %XMM13, align 1, !mcsema_real_eip !34
  %434 = load i128* %XMM14_val, !mcsema_real_eip !34
  store i128 %434, i128* %XMM14, align 1, !mcsema_real_eip !34
  %435 = load i128* %XMM15_val, !mcsema_real_eip !34
  store i128 %435, i128* %XMM15, align 1, !mcsema_real_eip !34
  %436 = load i64* %STACK_BASE_val, !mcsema_real_eip !34
  store i64 %436, i64* %STACK_BASE, align 1, !mcsema_real_eip !34
  %437 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !34
  store i64 %437, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !34
  ret void, !mcsema_real_eip !34

block_0x12d:                                      ; preds = %block_0xef
  %438 = add i64 %343, -4, !mcsema_real_eip !29
  %439 = inttoptr i64 %438 to i64*, !mcsema_real_eip !29
  %440 = bitcast i64* %439 to i32*
  %441 = load i32* %440, !mcsema_real_eip !29
  %uadd352 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %441, i32 1)
  %442 = extractvalue { i32, i1 } %uadd352, 0
  %443 = xor i32 %442, %441, !mcsema_real_eip !29
  %444 = and i32 %443, 16, !mcsema_real_eip !29
  %445 = icmp ne i32 %444, 0, !mcsema_real_eip !29
  store i1 %445, i1* %AF_val, !mcsema_real_eip !29
  %446 = icmp slt i32 %442, 0
  store i1 %446, i1* %SF_val, !mcsema_real_eip !29
  %447 = icmp eq i32 %442, 0, !mcsema_real_eip !29
  store i1 %447, i1* %ZF_val, !mcsema_real_eip !29
  %448 = xor i32 %441, -2147483648, !mcsema_real_eip !29
  %449 = and i32 %443, %448, !mcsema_real_eip !29
  %450 = icmp slt i32 %449, 0
  store i1 %450, i1* %OF_val, !mcsema_real_eip !29
  %451 = trunc i32 %442 to i8, !mcsema_real_eip !29
  %452 = tail call i8 @llvm.ctpop.i8(i8 %451), !mcsema_real_eip !29
  %453 = and i8 %452, 1
  %454 = icmp eq i8 %453, 0
  store i1 %454, i1* %PF_val, !mcsema_real_eip !29
  %455 = extractvalue { i32, i1 } %uadd352, 1
  store i1 %455, i1* %CF_val, !mcsema_real_eip !29
  store i32 %442, i32* %440, !mcsema_real_eip !29
  %456 = load i64* %RBP_val, !mcsema_real_eip !14
  %457 = add i64 %456, -4, !mcsema_real_eip !14
  %458 = inttoptr i64 %457 to i64*, !mcsema_real_eip !14
  %459 = bitcast i64* %458 to i32*
  %460 = load i32* %459, !mcsema_real_eip !14
  %461 = zext i32 %460 to i64, !mcsema_real_eip !14
  store i64 %461, i64* %RAX_val, !mcsema_real_eip !14
  %462 = load i64* %RBP_val, !mcsema_real_eip !15
  %463 = add i64 %462, -44, !mcsema_real_eip !15
  %464 = inttoptr i64 %463 to i64*, !mcsema_real_eip !15
  %465 = bitcast i64* %464 to i32*
  %466 = load i32* %465, !mcsema_real_eip !15
  %467 = sub i32 %460, %466, !mcsema_real_eip !15
  %468 = xor i32 %467, %460, !mcsema_real_eip !15
  %469 = xor i32 %468, %466, !mcsema_real_eip !15
  %470 = and i32 %469, 16, !mcsema_real_eip !15
  %471 = icmp ne i32 %470, 0, !mcsema_real_eip !15
  store i1 %471, i1* %AF_val, !mcsema_real_eip !15
  %472 = trunc i32 %467 to i8, !mcsema_real_eip !15
  %473 = tail call i8 @llvm.ctpop.i8(i8 %472), !mcsema_real_eip !15
  %474 = and i8 %473, 1
  %475 = icmp eq i8 %474, 0
  store i1 %475, i1* %PF_val, !mcsema_real_eip !15
  %476 = icmp eq i32 %460, %466
  store i1 %476, i1* %ZF_val, !mcsema_real_eip !15
  %477 = icmp slt i32 %467, 0
  store i1 %477, i1* %SF_val, !mcsema_real_eip !15
  %478 = icmp ult i32 %460, %466, !mcsema_real_eip !15
  store i1 %478, i1* %CF_val, !mcsema_real_eip !15
  %479 = xor i32 %466, %460, !mcsema_real_eip !15
  %480 = and i32 %468, %479, !mcsema_real_eip !15
  %481 = icmp slt i32 %480, 0
  store i1 %481, i1* %OF_val, !mcsema_real_eip !15
  %482 = load i1* %SF_val, !mcsema_real_eip !16
  %483 = xor i1 %482, %481
  br i1 %483, label %block_0xef.backedge, label %block_0x139.loopexit, !mcsema_real_eip !16

block_0x11a:                                      ; preds = %block_0xef
  %484 = add i64 %343, -24, !mcsema_real_eip !35
  %485 = inttoptr i64 %484 to i64*, !mcsema_real_eip !35
  %486 = load i64* %485, !mcsema_real_eip !35
  store i64 %486, i64* %RDX_val, !mcsema_real_eip !35
  %487 = load i64* %RBP_val, !mcsema_real_eip !36
  %488 = add i64 %487, -24, !mcsema_real_eip !36
  %489 = inttoptr i64 %488 to i64*, !mcsema_real_eip !36
  %490 = load i64* %489, !mcsema_real_eip !36
  store i64 %490, i64* %RAX_val, !mcsema_real_eip !36
  store i64 %486, i64* %RSI_val, !mcsema_real_eip !37
  store i64 %490, i64* %RDI_val, !mcsema_real_eip !38
  %491 = load i64* %RSP_val, !mcsema_real_eip !39
  %492 = add i64 %491, -8
  %493 = inttoptr i64 %492 to i64*, !mcsema_real_eip !39
  store i64 -4981261766360305936, i64* %493, !mcsema_real_eip !39
  store i64 %492, i64* %RSP_val, !mcsema_real_eip !39
  %494 = load i64* %RAX_val, !mcsema_real_eip !39
  store i64 %494, i64* %RAX, !mcsema_real_eip !39
  %495 = load i64* %RBX_val, !mcsema_real_eip !39
  store i64 %495, i64* %RBX, !mcsema_real_eip !39
  %496 = load i64* %RCX_val, !mcsema_real_eip !39
  store i64 %496, i64* %RCX, !mcsema_real_eip !39
  %497 = load i64* %RDX_val, !mcsema_real_eip !39
  store i64 %497, i64* %RDX, !mcsema_real_eip !39
  %498 = load i64* %RSI_val, !mcsema_real_eip !39
  store i64 %498, i64* %RSI, !mcsema_real_eip !39
  %499 = load i64* %RDI_val, !mcsema_real_eip !39
  store i64 %499, i64* %RDI, !mcsema_real_eip !39
  %500 = load i64* %RSP_val, !mcsema_real_eip !39
  store i64 %500, i64* %RSP, !mcsema_real_eip !39
  %501 = load i64* %RBP_val, !mcsema_real_eip !39
  store i64 %501, i64* %RBP, !mcsema_real_eip !39
  %502 = load i64* %R8_val, !mcsema_real_eip !39
  store i64 %502, i64* %R8, !mcsema_real_eip !39
  %503 = load i64* %R9_val, !mcsema_real_eip !39
  store i64 %503, i64* %R9, !mcsema_real_eip !39
  %504 = load i64* %R10_val, !mcsema_real_eip !39
  store i64 %504, i64* %R10, !mcsema_real_eip !39
  %505 = load i64* %R11_val, !mcsema_real_eip !39
  store i64 %505, i64* %R11, !mcsema_real_eip !39
  %506 = load i64* %R12_val, !mcsema_real_eip !39
  store i64 %506, i64* %R12, !mcsema_real_eip !39
  %507 = load i64* %R13_val, !mcsema_real_eip !39
  store i64 %507, i64* %R13, !mcsema_real_eip !39
  %508 = load i64* %R14_val, !mcsema_real_eip !39
  store i64 %508, i64* %R14, !mcsema_real_eip !39
  %509 = load i64* %R15_val, !mcsema_real_eip !39
  store i64 %509, i64* %R15, !mcsema_real_eip !39
  %510 = load i64* %RIP_val, !mcsema_real_eip !39
  store i64 %510, i64* %RIP, !mcsema_real_eip !39
  %511 = load i1* %CF_val, !mcsema_real_eip !39
  store i1 %511, i1* %CF, align 1, !mcsema_real_eip !39
  %512 = load i1* %PF_val, !mcsema_real_eip !39
  store i1 %512, i1* %PF, align 1, !mcsema_real_eip !39
  %513 = load i1* %AF_val, !mcsema_real_eip !39
  store i1 %513, i1* %AF, align 1, !mcsema_real_eip !39
  %514 = load i1* %ZF_val, !mcsema_real_eip !39
  store i1 %514, i1* %ZF, align 1, !mcsema_real_eip !39
  %515 = load i1* %SF_val, !mcsema_real_eip !39
  store i1 %515, i1* %SF, align 1, !mcsema_real_eip !39
  %516 = load i1* %OF_val, !mcsema_real_eip !39
  store i1 %516, i1* %OF, align 1, !mcsema_real_eip !39
  %517 = load i1* %DF_val, !mcsema_real_eip !39
  store i1 %517, i1* %DF, align 1, !mcsema_real_eip !39
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !39
  %518 = load i1* %FPU_B_val, !mcsema_real_eip !39
  store i1 %518, i1* %FPU_B, align 1, !mcsema_real_eip !39
  %519 = load i1* %FPU_C3_val, !mcsema_real_eip !39
  store i1 %519, i1* %FPU_C3, align 1, !mcsema_real_eip !39
  %520 = load i3* %FPU_TOP_val, !mcsema_real_eip !39
  store i3 %520, i3* %FPU_TOP, align 1, !mcsema_real_eip !39
  %521 = load i1* %FPU_C2_val, !mcsema_real_eip !39
  store i1 %521, i1* %FPU_C2, align 1, !mcsema_real_eip !39
  %522 = load i1* %FPU_C1_val, !mcsema_real_eip !39
  store i1 %522, i1* %FPU_C1, align 1, !mcsema_real_eip !39
  %523 = load i1* %FPU_C0_val, !mcsema_real_eip !39
  store i1 %523, i1* %FPU_C0, align 1, !mcsema_real_eip !39
  %524 = load i1* %FPU_ES_val, !mcsema_real_eip !39
  store i1 %524, i1* %FPU_ES, align 1, !mcsema_real_eip !39
  %525 = load i1* %FPU_SF_val, !mcsema_real_eip !39
  store i1 %525, i1* %FPU_SF, align 1, !mcsema_real_eip !39
  %526 = load i1* %FPU_PE_val, !mcsema_real_eip !39
  store i1 %526, i1* %FPU_PE, align 1, !mcsema_real_eip !39
  %527 = load i1* %FPU_UE_val, !mcsema_real_eip !39
  store i1 %527, i1* %FPU_UE, align 1, !mcsema_real_eip !39
  %528 = load i1* %FPU_OE_val, !mcsema_real_eip !39
  store i1 %528, i1* %FPU_OE, align 1, !mcsema_real_eip !39
  %529 = load i1* %FPU_ZE_val, !mcsema_real_eip !39
  store i1 %529, i1* %FPU_ZE, align 1, !mcsema_real_eip !39
  %530 = load i1* %FPU_DE_val, !mcsema_real_eip !39
  store i1 %530, i1* %FPU_DE, align 1, !mcsema_real_eip !39
  %531 = load i1* %FPU_IE_val, !mcsema_real_eip !39
  store i1 %531, i1* %FPU_IE, align 1, !mcsema_real_eip !39
  %532 = load i1* %FPU_X_val, !mcsema_real_eip !39
  store i1 %532, i1* %FPU_X, align 1, !mcsema_real_eip !39
  %533 = load i2* %FPU_RC_val, !mcsema_real_eip !39
  store i2 %533, i2* %FPU_RC, align 1, !mcsema_real_eip !39
  %534 = load i2* %FPU_PC_val, !mcsema_real_eip !39
  store i2 %534, i2* %FPU_PC, align 1, !mcsema_real_eip !39
  %535 = load i1* %FPU_PM_val, !mcsema_real_eip !39
  store i1 %535, i1* %FPU_PM, align 1, !mcsema_real_eip !39
  %536 = load i1* %FPU_UM_val, !mcsema_real_eip !39
  store i1 %536, i1* %FPU_UM, align 1, !mcsema_real_eip !39
  %537 = load i1* %FPU_OM_val, !mcsema_real_eip !39
  store i1 %537, i1* %FPU_OM, align 1, !mcsema_real_eip !39
  %538 = load i1* %FPU_ZM_val, !mcsema_real_eip !39
  store i1 %538, i1* %FPU_ZM, align 1, !mcsema_real_eip !39
  %539 = load i1* %FPU_DM_val, !mcsema_real_eip !39
  store i1 %539, i1* %FPU_DM, align 1, !mcsema_real_eip !39
  %540 = load i1* %FPU_IM_val, !mcsema_real_eip !39
  store i1 %540, i1* %FPU_IM, align 1, !mcsema_real_eip !39
  %541 = load i64* %53, align 4
  store i64 %541, i64* %52, align 4
  %542 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !39
  store i16 %542, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !39
  %543 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !39
  store i64 %543, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !39
  %544 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !39
  store i16 %544, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !39
  %545 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !39
  store i64 %545, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !39
  %546 = load i128* %XMM0_val, !mcsema_real_eip !39
  store i128 %546, i128* %XMM0, align 1, !mcsema_real_eip !39
  %547 = load i128* %XMM1_val, !mcsema_real_eip !39
  store i128 %547, i128* %XMM1, align 1, !mcsema_real_eip !39
  %548 = load i128* %XMM2_val, !mcsema_real_eip !39
  store i128 %548, i128* %XMM2, align 1, !mcsema_real_eip !39
  %549 = load i128* %XMM3_val, !mcsema_real_eip !39
  store i128 %549, i128* %XMM3, align 1, !mcsema_real_eip !39
  %550 = load i128* %XMM4_val, !mcsema_real_eip !39
  store i128 %550, i128* %XMM4, align 1, !mcsema_real_eip !39
  %551 = load i128* %XMM5_val, !mcsema_real_eip !39
  store i128 %551, i128* %XMM5, align 1, !mcsema_real_eip !39
  %552 = load i128* %XMM6_val, !mcsema_real_eip !39
  store i128 %552, i128* %XMM6, align 1, !mcsema_real_eip !39
  %553 = load i128* %XMM7_val, !mcsema_real_eip !39
  store i128 %553, i128* %XMM7, align 1, !mcsema_real_eip !39
  %554 = load i128* %XMM8_val, !mcsema_real_eip !39
  store i128 %554, i128* %XMM8, align 1, !mcsema_real_eip !39
  %555 = load i128* %XMM9_val, !mcsema_real_eip !39
  store i128 %555, i128* %XMM9, align 1, !mcsema_real_eip !39
  %556 = load i128* %XMM10_val, !mcsema_real_eip !39
  store i128 %556, i128* %XMM10, align 1, !mcsema_real_eip !39
  %557 = load i128* %XMM11_val, !mcsema_real_eip !39
  store i128 %557, i128* %XMM11, align 1, !mcsema_real_eip !39
  %558 = load i128* %XMM12_val, !mcsema_real_eip !39
  store i128 %558, i128* %XMM12, align 1, !mcsema_real_eip !39
  %559 = load i128* %XMM13_val, !mcsema_real_eip !39
  store i128 %559, i128* %XMM13, align 1, !mcsema_real_eip !39
  %560 = load i128* %XMM14_val, !mcsema_real_eip !39
  store i128 %560, i128* %XMM14, align 1, !mcsema_real_eip !39
  %561 = load i128* %XMM15_val, !mcsema_real_eip !39
  store i128 %561, i128* %XMM15, align 1, !mcsema_real_eip !39
  %562 = load i64* %STACK_BASE_val, !mcsema_real_eip !39
  store i64 %562, i64* %STACK_BASE, align 1, !mcsema_real_eip !39
  %563 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !39
  store i64 %563, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !39
  tail call x86_64_sysvcc void @sub_64(%struct.regs* %0), !mcsema_real_eip !39
  %564 = load i64* %RAX, !mcsema_real_eip !39
  store i64 %564, i64* %RAX_val, !mcsema_real_eip !39
  %565 = load i64* %RBX, !mcsema_real_eip !39
  store i64 %565, i64* %RBX_val, !mcsema_real_eip !39
  %566 = load i64* %RCX, !mcsema_real_eip !39
  store i64 %566, i64* %RCX_val, !mcsema_real_eip !39
  %567 = load i64* %RDX, !mcsema_real_eip !39
  store i64 %567, i64* %RDX_val, !mcsema_real_eip !39
  %568 = load i64* %RSI, !mcsema_real_eip !39
  store i64 %568, i64* %RSI_val, !mcsema_real_eip !39
  %569 = load i64* %RDI, !mcsema_real_eip !39
  store i64 %569, i64* %RDI_val, !mcsema_real_eip !39
  %570 = load i64* %RSP, !mcsema_real_eip !39
  store i64 %570, i64* %RSP_val, !mcsema_real_eip !39
  %571 = load i64* %RBP, !mcsema_real_eip !39
  store i64 %571, i64* %RBP_val, !mcsema_real_eip !39
  %572 = load i64* %R8, !mcsema_real_eip !39
  store i64 %572, i64* %R8_val, !mcsema_real_eip !39
  %573 = load i64* %R9, !mcsema_real_eip !39
  store i64 %573, i64* %R9_val, !mcsema_real_eip !39
  %574 = load i64* %R10, !mcsema_real_eip !39
  store i64 %574, i64* %R10_val, !mcsema_real_eip !39
  %575 = load i64* %R11, !mcsema_real_eip !39
  store i64 %575, i64* %R11_val, !mcsema_real_eip !39
  %576 = load i64* %R12, !mcsema_real_eip !39
  store i64 %576, i64* %R12_val, !mcsema_real_eip !39
  %577 = load i64* %R13, !mcsema_real_eip !39
  store i64 %577, i64* %R13_val, !mcsema_real_eip !39
  %578 = load i64* %R14, !mcsema_real_eip !39
  store i64 %578, i64* %R14_val, !mcsema_real_eip !39
  %579 = load i64* %R15, !mcsema_real_eip !39
  store i64 %579, i64* %R15_val, !mcsema_real_eip !39
  %580 = load i64* %RIP, !mcsema_real_eip !39
  store i64 %580, i64* %RIP_val, !mcsema_real_eip !39
  %581 = load i1* %CF, align 1, !mcsema_real_eip !39
  store i1 %581, i1* %CF_val, !mcsema_real_eip !39
  %582 = load i1* %PF, align 1, !mcsema_real_eip !39
  store i1 %582, i1* %PF_val, !mcsema_real_eip !39
  %583 = load i1* %AF, align 1, !mcsema_real_eip !39
  store i1 %583, i1* %AF_val, !mcsema_real_eip !39
  %584 = load i1* %ZF, align 1, !mcsema_real_eip !39
  store i1 %584, i1* %ZF_val, !mcsema_real_eip !39
  %585 = load i1* %SF, align 1, !mcsema_real_eip !39
  store i1 %585, i1* %SF_val, !mcsema_real_eip !39
  %586 = load i1* %OF, align 1, !mcsema_real_eip !39
  store i1 %586, i1* %OF_val, !mcsema_real_eip !39
  %587 = load i1* %DF, align 1, !mcsema_real_eip !39
  store i1 %587, i1* %DF_val, !mcsema_real_eip !39
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !39
  %588 = load i1* %FPU_B, align 1, !mcsema_real_eip !39
  store i1 %588, i1* %FPU_B_val, !mcsema_real_eip !39
  %589 = load i1* %FPU_C3, align 1, !mcsema_real_eip !39
  store i1 %589, i1* %FPU_C3_val, !mcsema_real_eip !39
  %590 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !39
  store i3 %590, i3* %FPU_TOP_val, !mcsema_real_eip !39
  %591 = load i1* %FPU_C2, align 1, !mcsema_real_eip !39
  store i1 %591, i1* %FPU_C2_val, !mcsema_real_eip !39
  %592 = load i1* %FPU_C1, align 1, !mcsema_real_eip !39
  store i1 %592, i1* %FPU_C1_val, !mcsema_real_eip !39
  %593 = load i1* %FPU_C0, align 1, !mcsema_real_eip !39
  store i1 %593, i1* %FPU_C0_val, !mcsema_real_eip !39
  %594 = load i1* %FPU_ES, align 1, !mcsema_real_eip !39
  store i1 %594, i1* %FPU_ES_val, !mcsema_real_eip !39
  %595 = load i1* %FPU_SF, align 1, !mcsema_real_eip !39
  store i1 %595, i1* %FPU_SF_val, !mcsema_real_eip !39
  %596 = load i1* %FPU_PE, align 1, !mcsema_real_eip !39
  store i1 %596, i1* %FPU_PE_val, !mcsema_real_eip !39
  %597 = load i1* %FPU_UE, align 1, !mcsema_real_eip !39
  store i1 %597, i1* %FPU_UE_val, !mcsema_real_eip !39
  %598 = load i1* %FPU_OE, align 1, !mcsema_real_eip !39
  store i1 %598, i1* %FPU_OE_val, !mcsema_real_eip !39
  %599 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !39
  store i1 %599, i1* %FPU_ZE_val, !mcsema_real_eip !39
  %600 = load i1* %FPU_DE, align 1, !mcsema_real_eip !39
  store i1 %600, i1* %FPU_DE_val, !mcsema_real_eip !39
  %601 = load i1* %FPU_IE, align 1, !mcsema_real_eip !39
  store i1 %601, i1* %FPU_IE_val, !mcsema_real_eip !39
  %602 = load i1* %FPU_X, align 1, !mcsema_real_eip !39
  store i1 %602, i1* %FPU_X_val, !mcsema_real_eip !39
  %603 = load i2* %FPU_RC, align 1, !mcsema_real_eip !39
  store i2 %603, i2* %FPU_RC_val, !mcsema_real_eip !39
  %604 = load i2* %FPU_PC, align 1, !mcsema_real_eip !39
  store i2 %604, i2* %FPU_PC_val, !mcsema_real_eip !39
  %605 = load i1* %FPU_PM, align 1, !mcsema_real_eip !39
  store i1 %605, i1* %FPU_PM_val, !mcsema_real_eip !39
  %606 = load i1* %FPU_UM, align 1, !mcsema_real_eip !39
  store i1 %606, i1* %FPU_UM_val, !mcsema_real_eip !39
  %607 = load i1* %FPU_OM, align 1, !mcsema_real_eip !39
  store i1 %607, i1* %FPU_OM_val, !mcsema_real_eip !39
  %608 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !39
  store i1 %608, i1* %FPU_ZM_val, !mcsema_real_eip !39
  %609 = load i1* %FPU_DM, align 1, !mcsema_real_eip !39
  store i1 %609, i1* %FPU_DM_val, !mcsema_real_eip !39
  %610 = load i1* %FPU_IM, align 1, !mcsema_real_eip !39
  store i1 %610, i1* %FPU_IM_val, !mcsema_real_eip !39
  %611 = load i64* %52, align 4
  store i64 %611, i64* %53, align 4
  %612 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !39
  store i16 %612, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !39
  %613 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !39
  store i64 %613, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !39
  %614 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !39
  store i16 %614, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !39
  %615 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !39
  store i64 %615, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !39
  %616 = load i128* %XMM0, align 1, !mcsema_real_eip !39
  store i128 %616, i128* %XMM0_val, !mcsema_real_eip !39
  %617 = load i128* %XMM1, align 1, !mcsema_real_eip !39
  store i128 %617, i128* %XMM1_val, !mcsema_real_eip !39
  %618 = load i128* %XMM2, align 1, !mcsema_real_eip !39
  store i128 %618, i128* %XMM2_val, !mcsema_real_eip !39
  %619 = load i128* %XMM3, align 1, !mcsema_real_eip !39
  store i128 %619, i128* %XMM3_val, !mcsema_real_eip !39
  %620 = load i128* %XMM4, align 1, !mcsema_real_eip !39
  store i128 %620, i128* %XMM4_val, !mcsema_real_eip !39
  %621 = load i128* %XMM5, align 1, !mcsema_real_eip !39
  store i128 %621, i128* %XMM5_val, !mcsema_real_eip !39
  %622 = load i128* %XMM6, align 1, !mcsema_real_eip !39
  store i128 %622, i128* %XMM6_val, !mcsema_real_eip !39
  %623 = load i128* %XMM7, align 1, !mcsema_real_eip !39
  store i128 %623, i128* %XMM7_val, !mcsema_real_eip !39
  %624 = load i128* %XMM8, align 1, !mcsema_real_eip !39
  store i128 %624, i128* %XMM8_val, !mcsema_real_eip !39
  %625 = load i128* %XMM9, align 1, !mcsema_real_eip !39
  store i128 %625, i128* %XMM9_val, !mcsema_real_eip !39
  %626 = load i128* %XMM10, align 1, !mcsema_real_eip !39
  store i128 %626, i128* %XMM10_val, !mcsema_real_eip !39
  %627 = load i128* %XMM11, align 1, !mcsema_real_eip !39
  store i128 %627, i128* %XMM11_val, !mcsema_real_eip !39
  %628 = load i128* %XMM12, align 1, !mcsema_real_eip !39
  store i128 %628, i128* %XMM12_val, !mcsema_real_eip !39
  %629 = load i128* %XMM13, align 1, !mcsema_real_eip !39
  store i128 %629, i128* %XMM13_val, !mcsema_real_eip !39
  %630 = load i128* %XMM14, align 1, !mcsema_real_eip !39
  store i128 %630, i128* %XMM14_val, !mcsema_real_eip !39
  %631 = load i128* %XMM15, align 1, !mcsema_real_eip !39
  store i128 %631, i128* %XMM15_val, !mcsema_real_eip !39
  %632 = load i64* %STACK_BASE, !mcsema_real_eip !39
  store i64 %632, i64* %STACK_BASE_val, !mcsema_real_eip !39
  %633 = load i64* %STACK_LIMIT, !mcsema_real_eip !39
  store i64 %633, i64* %STACK_LIMIT_val, !mcsema_real_eip !39
  %634 = load i64* %RBP_val, !mcsema_real_eip !29
  %635 = add i64 %634, -4, !mcsema_real_eip !29
  %636 = inttoptr i64 %635 to i64*, !mcsema_real_eip !29
  %637 = bitcast i64* %636 to i32*
  %638 = load i32* %637, !mcsema_real_eip !29
  %uadd350 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %638, i32 1)
  %639 = extractvalue { i32, i1 } %uadd350, 0
  %640 = xor i32 %639, %638, !mcsema_real_eip !29
  %641 = and i32 %640, 16, !mcsema_real_eip !29
  %642 = icmp ne i32 %641, 0, !mcsema_real_eip !29
  store i1 %642, i1* %AF_val, !mcsema_real_eip !29
  %643 = icmp slt i32 %639, 0
  store i1 %643, i1* %SF_val, !mcsema_real_eip !29
  %644 = icmp eq i32 %639, 0, !mcsema_real_eip !29
  store i1 %644, i1* %ZF_val, !mcsema_real_eip !29
  %645 = xor i32 %638, -2147483648, !mcsema_real_eip !29
  %646 = and i32 %640, %645, !mcsema_real_eip !29
  %647 = icmp slt i32 %646, 0
  store i1 %647, i1* %OF_val, !mcsema_real_eip !29
  %648 = trunc i32 %639 to i8, !mcsema_real_eip !29
  %649 = tail call i8 @llvm.ctpop.i8(i8 %648), !mcsema_real_eip !29
  %650 = and i8 %649, 1
  %651 = icmp eq i8 %650, 0
  store i1 %651, i1* %PF_val, !mcsema_real_eip !29
  %652 = extractvalue { i32, i1 } %uadd350, 1
  store i1 %652, i1* %CF_val, !mcsema_real_eip !29
  store i32 %639, i32* %637, !mcsema_real_eip !29
  %653 = load i64* %RBP_val, !mcsema_real_eip !14
  %654 = add i64 %653, -4, !mcsema_real_eip !14
  %655 = inttoptr i64 %654 to i64*, !mcsema_real_eip !14
  %656 = bitcast i64* %655 to i32*
  %657 = load i32* %656, !mcsema_real_eip !14
  %658 = zext i32 %657 to i64, !mcsema_real_eip !14
  store i64 %658, i64* %RAX_val, !mcsema_real_eip !14
  %659 = load i64* %RBP_val, !mcsema_real_eip !15
  %660 = add i64 %659, -44, !mcsema_real_eip !15
  %661 = inttoptr i64 %660 to i64*, !mcsema_real_eip !15
  %662 = bitcast i64* %661 to i32*
  %663 = load i32* %662, !mcsema_real_eip !15
  %664 = sub i32 %657, %663, !mcsema_real_eip !15
  %665 = xor i32 %664, %657, !mcsema_real_eip !15
  %666 = xor i32 %665, %663, !mcsema_real_eip !15
  %667 = and i32 %666, 16, !mcsema_real_eip !15
  %668 = icmp ne i32 %667, 0, !mcsema_real_eip !15
  store i1 %668, i1* %AF_val, !mcsema_real_eip !15
  %669 = trunc i32 %664 to i8, !mcsema_real_eip !15
  %670 = tail call i8 @llvm.ctpop.i8(i8 %669), !mcsema_real_eip !15
  %671 = and i8 %670, 1
  %672 = icmp eq i8 %671, 0
  store i1 %672, i1* %PF_val, !mcsema_real_eip !15
  %673 = icmp eq i32 %657, %663
  store i1 %673, i1* %ZF_val, !mcsema_real_eip !15
  %674 = icmp slt i32 %664, 0
  store i1 %674, i1* %SF_val, !mcsema_real_eip !15
  %675 = icmp ult i32 %657, %663, !mcsema_real_eip !15
  store i1 %675, i1* %CF_val, !mcsema_real_eip !15
  %676 = xor i32 %663, %657, !mcsema_real_eip !15
  %677 = and i32 %665, %676, !mcsema_real_eip !15
  %678 = icmp slt i32 %677, 0
  store i1 %678, i1* %OF_val, !mcsema_real_eip !15
  %679 = load i1* %SF_val, !mcsema_real_eip !16
  %680 = xor i1 %679, %678
  br i1 %680, label %block_0xef.backedge, label %block_0x139.loopexit, !mcsema_real_eip !16

block_0xef.backedge:                              ; preds = %block_0x11a, %block_0x12d
  br label %block_0xef
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_64(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !40
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !40
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !40
  %XMM15_val = alloca i128, !mcsema_real_eip !40
  %XMM14_val = alloca i128, !mcsema_real_eip !40
  %XMM13_val = alloca i128, !mcsema_real_eip !40
  %XMM12_val = alloca i128, !mcsema_real_eip !40
  %XMM11_val = alloca i128, !mcsema_real_eip !40
  %XMM10_val = alloca i128, !mcsema_real_eip !40
  %XMM9_val = alloca i128, !mcsema_real_eip !40
  %XMM8_val = alloca i128, !mcsema_real_eip !40
  %XMM7_val = alloca i128, !mcsema_real_eip !40
  %XMM6_val = alloca i128, !mcsema_real_eip !40
  %XMM5_val = alloca i128, !mcsema_real_eip !40
  %XMM4_val = alloca i128, !mcsema_real_eip !40
  %XMM3_val = alloca i128, !mcsema_real_eip !40
  %XMM2_val = alloca i128, !mcsema_real_eip !40
  %XMM1_val = alloca i128, !mcsema_real_eip !40
  %XMM0_val = alloca i128, !mcsema_real_eip !40
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !40
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !40
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !40
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !40
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !40
  %FPU_IM_val = alloca i1, !mcsema_real_eip !40
  %FPU_DM_val = alloca i1, !mcsema_real_eip !40
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !40
  %FPU_OM_val = alloca i1, !mcsema_real_eip !40
  %FPU_UM_val = alloca i1, !mcsema_real_eip !40
  %FPU_PM_val = alloca i1, !mcsema_real_eip !40
  %FPU_PC_val = alloca i2, !mcsema_real_eip !40
  %FPU_RC_val = alloca i2, !mcsema_real_eip !40
  %FPU_X_val = alloca i1, !mcsema_real_eip !40
  %FPU_IE_val = alloca i1, !mcsema_real_eip !40
  %FPU_DE_val = alloca i1, !mcsema_real_eip !40
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !40
  %FPU_OE_val = alloca i1, !mcsema_real_eip !40
  %FPU_UE_val = alloca i1, !mcsema_real_eip !40
  %FPU_PE_val = alloca i1, !mcsema_real_eip !40
  %FPU_SF_val = alloca i1, !mcsema_real_eip !40
  %FPU_ES_val = alloca i1, !mcsema_real_eip !40
  %FPU_C0_val = alloca i1, !mcsema_real_eip !40
  %FPU_C1_val = alloca i1, !mcsema_real_eip !40
  %FPU_C2_val = alloca i1, !mcsema_real_eip !40
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !40
  %FPU_C3_val = alloca i1, !mcsema_real_eip !40
  %FPU_B_val = alloca i1, !mcsema_real_eip !40
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !40
  %DF_val = alloca i1, !mcsema_real_eip !40
  %OF_val = alloca i1, !mcsema_real_eip !40
  %SF_val = alloca i1, !mcsema_real_eip !40
  %CF_val = alloca i1, !mcsema_real_eip !40
  %AF_val = alloca i1, !mcsema_real_eip !40
  %PF_val = alloca i1, !mcsema_real_eip !40
  %ZF_val = alloca i1, !mcsema_real_eip !40
  %RIP_val = alloca i64, !mcsema_real_eip !40
  %R14_val = alloca i64, !mcsema_real_eip !40
  %R13_val = alloca i64, !mcsema_real_eip !40
  %R12_val = alloca i64, !mcsema_real_eip !40
  %R11_val = alloca i64, !mcsema_real_eip !40
  %R10_val = alloca i64, !mcsema_real_eip !40
  %R9_val = alloca i64, !mcsema_real_eip !40
  %R8_val = alloca i64, !mcsema_real_eip !40
  %RSP_val = alloca i64, !mcsema_real_eip !40
  %RBP_val = alloca i64, !mcsema_real_eip !40
  %RDI_val = alloca i64, !mcsema_real_eip !40
  %RSI_val = alloca i64, !mcsema_real_eip !40
  %RDX_val = alloca i64, !mcsema_real_eip !40
  %RCX_val = alloca i64, !mcsema_real_eip !40
  %RBX_val = alloca i64, !mcsema_real_eip !40
  %RAX_val = alloca i64, !mcsema_real_eip !40
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !40
  %1 = load i64* %RAX, !mcsema_real_eip !40
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !40
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !40
  %2 = load i64* %RBX, !mcsema_real_eip !40
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !40
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !40
  %3 = load i64* %RCX, !mcsema_real_eip !40
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !40
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !40
  %4 = load i64* %RDX, !mcsema_real_eip !40
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !40
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !40
  %5 = load i64* %RSI, !mcsema_real_eip !40
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !40
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !40
  %6 = load i64* %RDI, !mcsema_real_eip !40
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !40
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !40
  %7 = load i64* %RSP, !mcsema_real_eip !40
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !40
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !40
  %8 = load i64* %RBP, !mcsema_real_eip !40
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !40
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !40
  %9 = load i64* %R8, !mcsema_real_eip !40
  store i64 %9, i64* %R8_val, !mcsema_real_eip !40
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !40
  %10 = load i64* %R9, !mcsema_real_eip !40
  store i64 %10, i64* %R9_val, !mcsema_real_eip !40
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !40
  %11 = load i64* %R10, !mcsema_real_eip !40
  store i64 %11, i64* %R10_val, !mcsema_real_eip !40
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !40
  %12 = load i64* %R11, !mcsema_real_eip !40
  store i64 %12, i64* %R11_val, !mcsema_real_eip !40
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !40
  %13 = load i64* %R12, !mcsema_real_eip !40
  store i64 %13, i64* %R12_val, !mcsema_real_eip !40
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !40
  %14 = load i64* %R13, !mcsema_real_eip !40
  store i64 %14, i64* %R13_val, !mcsema_real_eip !40
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !40
  %15 = load i64* %R14, !mcsema_real_eip !40
  store i64 %15, i64* %R14_val, !mcsema_real_eip !40
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !40
  %16 = load i64* %R15, !mcsema_real_eip !40
  store i64 %16, i64* %R15_val, !mcsema_real_eip !40
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !40
  %17 = load i64* %RIP, !mcsema_real_eip !40
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !40
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !40
  %18 = load i1* %CF, align 1, !mcsema_real_eip !40
  store i1 %18, i1* %CF_val, !mcsema_real_eip !40
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !40
  %19 = load i1* %PF, align 1, !mcsema_real_eip !40
  store i1 %19, i1* %PF_val, !mcsema_real_eip !40
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !40
  %20 = load i1* %AF, align 1, !mcsema_real_eip !40
  store i1 %20, i1* %AF_val, !mcsema_real_eip !40
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !40
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !40
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !40
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !40
  %22 = load i1* %SF, align 1, !mcsema_real_eip !40
  store i1 %22, i1* %SF_val, !mcsema_real_eip !40
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !40
  %23 = load i1* %OF, align 1, !mcsema_real_eip !40
  store i1 %23, i1* %OF_val, !mcsema_real_eip !40
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !40
  %24 = load i1* %DF, align 1, !mcsema_real_eip !40
  store i1 %24, i1* %DF_val, !mcsema_real_eip !40
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !40
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !40
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !40
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !40
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !40
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !40
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !40
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !40
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !40
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !40
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !40
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !40
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !40
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !40
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !40
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !40
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !40
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !40
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !40
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !40
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !40
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !40
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !40
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !40
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !40
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !40
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !40
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !40
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !40
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !40
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !40
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !40
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !40
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !40
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !40
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !40
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !40
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !40
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !40
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !40
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !40
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !40
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !40
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !40
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !40
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !40
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !40
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !40
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !40
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !40
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !40
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !40
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !40
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !40
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !40
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !40
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !40
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !40
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !40
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !40
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !40
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !40
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !40
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !40
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !40
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !40
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !40
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !40
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !40
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !40
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !40
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !40
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !40
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !40
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !40
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !40
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !40
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !40
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !40
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !40
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !40
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !40
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !40
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !40
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !40
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !40
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !40
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !40
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !40
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !40
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !40
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !40
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !40
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !40
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !40
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !40
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !40
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !40
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !40
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !40
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !40
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !40
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !40
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !40
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !40
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !40
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !40
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !40
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !40
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !40
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !40
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !40
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !40
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !40
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !40
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !40
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !40
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !40
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !40
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !40
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !40
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !40
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !40
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !40
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !40
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !40
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !40
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !40
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !40
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !40
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !40
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !40
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !40
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !40
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !40
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !40
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !40
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !40
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !40
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !40
  %77 = load i64* %RBP_val, !mcsema_real_eip !40
  %78 = load i64* %RSP_val, !mcsema_real_eip !40
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !40
  store i64 %77, i64* %80, !mcsema_real_eip !40
  store i64 %79, i64* %RSP_val, !mcsema_real_eip !40
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !41
  %81 = add i64 %78, -48, !mcsema_real_eip !42
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !42
  %83 = load i64* %RDI_val, !mcsema_real_eip !42
  store i64 %83, i64* %82, !mcsema_real_eip !42
  %84 = load i64* %RBP_val, !mcsema_real_eip !43
  %85 = add i64 %84, -48, !mcsema_real_eip !43
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !43
  %87 = load i64* %RSI_val, !mcsema_real_eip !43
  store i64 %87, i64* %86, !mcsema_real_eip !43
  %88 = load i64* %RBP_val, !mcsema_real_eip !44
  %89 = add i64 %88, -40, !mcsema_real_eip !44
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !44
  %91 = load i64* %90, !mcsema_real_eip !44
  store i64 %91, i64* %RAX_val, !mcsema_real_eip !44
  %92 = add i64 %88, -8, !mcsema_real_eip !45
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !45
  store i64 %91, i64* %93, !mcsema_real_eip !45
  %94 = load i64* %RBP_val, !mcsema_real_eip !46
  %95 = add i64 %94, -48, !mcsema_real_eip !46
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !46
  %97 = load i64* %96, !mcsema_real_eip !46
  store i64 %97, i64* %RAX_val, !mcsema_real_eip !46
  %98 = add i64 %94, -16, !mcsema_real_eip !47
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !47
  store i64 %97, i64* %99, !mcsema_real_eip !47
  %100 = load i64* %RBP_val, !mcsema_real_eip !48
  %101 = add i64 %100, -8, !mcsema_real_eip !48
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !48
  %103 = load i64* %102, !mcsema_real_eip !48
  store i64 %103, i64* %RAX_val, !mcsema_real_eip !48
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !49
  %105 = bitcast i64* %104 to i8*
  %106 = load i8* %105, !mcsema_real_eip !49
  %107 = zext i8 %106 to i64
  store i64 %107, i64* %RAX_val, !mcsema_real_eip !49
  %108 = load i64* %RBP_val, !mcsema_real_eip !50
  %109 = add i64 %108, -17, !mcsema_real_eip !50
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !50
  %111 = bitcast i64* %110 to i8*
  store i8 %106, i8* %111, !mcsema_real_eip !50
  %112 = load i64* %RBP_val, !mcsema_real_eip !51
  %113 = add i64 %112, -17, !mcsema_real_eip !51
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !51
  %115 = bitcast i64* %114 to i8*
  %116 = load i8* %115, !mcsema_real_eip !51
  store i1 false, i1* %AF_val, !mcsema_real_eip !51
  %117 = tail call i8 @llvm.ctpop.i8(i8 %116), !mcsema_real_eip !51
  %118 = and i8 %117, 1
  %119 = icmp eq i8 %118, 0
  store i1 %119, i1* %PF_val, !mcsema_real_eip !51
  %120 = icmp eq i8 %116, 0, !mcsema_real_eip !51
  store i1 %120, i1* %ZF_val, !mcsema_real_eip !51
  %121 = icmp slt i8 %116, 0
  store i1 %121, i1* %SF_val, !mcsema_real_eip !51
  store i1 false, i1* %CF_val, !mcsema_real_eip !51
  store i1 false, i1* %OF_val, !mcsema_real_eip !51
  br i1 %120, label %block_0xbf, label %block_0x8c.preheader, !mcsema_real_eip !52

block_0x8c.preheader:                             ; preds = %entry
  br label %block_0x8c

block_0x8c:                                       ; preds = %block_0x8c.backedge, %block_0x8c.preheader
  %122 = load i64* %RBP_val, !mcsema_real_eip !53
  %123 = add i64 %122, -17, !mcsema_real_eip !53
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !53
  %125 = bitcast i64* %124 to i8*
  %126 = load i8* %125, !mcsema_real_eip !53
  %127 = add i8 %126, -47
  %128 = xor i8 %127, %126, !mcsema_real_eip !53
  %129 = and i8 %128, 16, !mcsema_real_eip !53
  %130 = icmp ne i8 %129, 0, !mcsema_real_eip !53
  store i1 %130, i1* %AF_val, !mcsema_real_eip !53
  %131 = tail call i8 @llvm.ctpop.i8(i8 %127), !mcsema_real_eip !53
  %132 = and i8 %131, 1
  %133 = icmp eq i8 %132, 0
  store i1 %133, i1* %PF_val, !mcsema_real_eip !53
  %134 = icmp eq i8 %127, 0, !mcsema_real_eip !53
  store i1 %134, i1* %ZF_val, !mcsema_real_eip !53
  %135 = icmp slt i8 %127, 0
  store i1 %135, i1* %SF_val, !mcsema_real_eip !53
  %136 = icmp ult i8 %126, 47, !mcsema_real_eip !53
  store i1 %136, i1* %CF_val, !mcsema_real_eip !53
  %137 = and i8 %128, %126, !mcsema_real_eip !53
  %138 = icmp slt i8 %137, 0
  store i1 %138, i1* %OF_val, !mcsema_real_eip !53
  %139 = load i1* %ZF_val, !mcsema_real_eip !54
  %140 = load i64* %RBP_val, !mcsema_real_eip !55
  %141 = add i64 %140, -16, !mcsema_real_eip !55
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !55
  %143 = load i64* %142, !mcsema_real_eip !55
  store i64 %143, i64* %RAX_val, !mcsema_real_eip !55
  br i1 %139, label %block_0x92, label %block_0x9b, !mcsema_real_eip !54

block_0xbf.loopexit:                              ; preds = %block_0x92, %block_0x9b
  br label %block_0xbf

block_0xbf:                                       ; preds = %block_0xbf.loopexit, %entry
  %144 = load i64* %RSP_val, !mcsema_real_eip !56
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !56
  %146 = load i64* %145, !mcsema_real_eip !56
  store i64 %146, i64* %RBP_val, !mcsema_real_eip !56
  %147 = add i64 %144, 16, !mcsema_real_eip !57
  store i64 %147, i64* %RSP_val, !mcsema_real_eip !57
  %148 = load i64* %RAX_val, !mcsema_real_eip !57
  store i64 %148, i64* %RAX, !mcsema_real_eip !57
  %149 = load i64* %RBX_val, !mcsema_real_eip !57
  store i64 %149, i64* %RBX, !mcsema_real_eip !57
  %150 = load i64* %RCX_val, !mcsema_real_eip !57
  store i64 %150, i64* %RCX, !mcsema_real_eip !57
  %151 = load i64* %RDX_val, !mcsema_real_eip !57
  store i64 %151, i64* %RDX, !mcsema_real_eip !57
  %152 = load i64* %RSI_val, !mcsema_real_eip !57
  store i64 %152, i64* %RSI, !mcsema_real_eip !57
  %153 = load i64* %RDI_val, !mcsema_real_eip !57
  store i64 %153, i64* %RDI, !mcsema_real_eip !57
  %154 = load i64* %RSP_val, !mcsema_real_eip !57
  store i64 %154, i64* %RSP, !mcsema_real_eip !57
  %155 = load i64* %RBP_val, !mcsema_real_eip !57
  store i64 %155, i64* %RBP, !mcsema_real_eip !57
  %156 = load i64* %R8_val, !mcsema_real_eip !57
  store i64 %156, i64* %R8, !mcsema_real_eip !57
  %157 = load i64* %R9_val, !mcsema_real_eip !57
  store i64 %157, i64* %R9, !mcsema_real_eip !57
  %158 = load i64* %R10_val, !mcsema_real_eip !57
  store i64 %158, i64* %R10, !mcsema_real_eip !57
  %159 = load i64* %R11_val, !mcsema_real_eip !57
  store i64 %159, i64* %R11, !mcsema_real_eip !57
  %160 = load i64* %R12_val, !mcsema_real_eip !57
  store i64 %160, i64* %R12, !mcsema_real_eip !57
  %161 = load i64* %R13_val, !mcsema_real_eip !57
  store i64 %161, i64* %R13, !mcsema_real_eip !57
  %162 = load i64* %R14_val, !mcsema_real_eip !57
  store i64 %162, i64* %R14, !mcsema_real_eip !57
  %163 = load i64* %R15_val, !mcsema_real_eip !57
  store i64 %163, i64* %R15, !mcsema_real_eip !57
  %164 = load i64* %RIP_val, !mcsema_real_eip !57
  store i64 %164, i64* %RIP, !mcsema_real_eip !57
  %165 = load i1* %CF_val, !mcsema_real_eip !57
  store i1 %165, i1* %CF, align 1, !mcsema_real_eip !57
  %166 = load i1* %PF_val, !mcsema_real_eip !57
  store i1 %166, i1* %PF, align 1, !mcsema_real_eip !57
  %167 = load i1* %AF_val, !mcsema_real_eip !57
  store i1 %167, i1* %AF, align 1, !mcsema_real_eip !57
  %168 = load i1* %ZF_val, !mcsema_real_eip !57
  store i1 %168, i1* %ZF, align 1, !mcsema_real_eip !57
  %169 = load i1* %SF_val, !mcsema_real_eip !57
  store i1 %169, i1* %SF, align 1, !mcsema_real_eip !57
  %170 = load i1* %OF_val, !mcsema_real_eip !57
  store i1 %170, i1* %OF, align 1, !mcsema_real_eip !57
  %171 = load i1* %DF_val, !mcsema_real_eip !57
  store i1 %171, i1* %DF, align 1, !mcsema_real_eip !57
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !57
  %172 = load i1* %FPU_B_val, !mcsema_real_eip !57
  store i1 %172, i1* %FPU_B, align 1, !mcsema_real_eip !57
  %173 = load i1* %FPU_C3_val, !mcsema_real_eip !57
  store i1 %173, i1* %FPU_C3, align 1, !mcsema_real_eip !57
  %174 = load i3* %FPU_TOP_val, !mcsema_real_eip !57
  store i3 %174, i3* %FPU_TOP, align 1, !mcsema_real_eip !57
  %175 = load i1* %FPU_C2_val, !mcsema_real_eip !57
  store i1 %175, i1* %FPU_C2, align 1, !mcsema_real_eip !57
  %176 = load i1* %FPU_C1_val, !mcsema_real_eip !57
  store i1 %176, i1* %FPU_C1, align 1, !mcsema_real_eip !57
  %177 = load i1* %FPU_C0_val, !mcsema_real_eip !57
  store i1 %177, i1* %FPU_C0, align 1, !mcsema_real_eip !57
  %178 = load i1* %FPU_ES_val, !mcsema_real_eip !57
  store i1 %178, i1* %FPU_ES, align 1, !mcsema_real_eip !57
  %179 = load i1* %FPU_SF_val, !mcsema_real_eip !57
  store i1 %179, i1* %FPU_SF, align 1, !mcsema_real_eip !57
  %180 = load i1* %FPU_PE_val, !mcsema_real_eip !57
  store i1 %180, i1* %FPU_PE, align 1, !mcsema_real_eip !57
  %181 = load i1* %FPU_UE_val, !mcsema_real_eip !57
  store i1 %181, i1* %FPU_UE, align 1, !mcsema_real_eip !57
  %182 = load i1* %FPU_OE_val, !mcsema_real_eip !57
  store i1 %182, i1* %FPU_OE, align 1, !mcsema_real_eip !57
  %183 = load i1* %FPU_ZE_val, !mcsema_real_eip !57
  store i1 %183, i1* %FPU_ZE, align 1, !mcsema_real_eip !57
  %184 = load i1* %FPU_DE_val, !mcsema_real_eip !57
  store i1 %184, i1* %FPU_DE, align 1, !mcsema_real_eip !57
  %185 = load i1* %FPU_IE_val, !mcsema_real_eip !57
  store i1 %185, i1* %FPU_IE, align 1, !mcsema_real_eip !57
  %186 = load i1* %FPU_X_val, !mcsema_real_eip !57
  store i1 %186, i1* %FPU_X, align 1, !mcsema_real_eip !57
  %187 = load i2* %FPU_RC_val, !mcsema_real_eip !57
  store i2 %187, i2* %FPU_RC, align 1, !mcsema_real_eip !57
  %188 = load i2* %FPU_PC_val, !mcsema_real_eip !57
  store i2 %188, i2* %FPU_PC, align 1, !mcsema_real_eip !57
  %189 = load i1* %FPU_PM_val, !mcsema_real_eip !57
  store i1 %189, i1* %FPU_PM, align 1, !mcsema_real_eip !57
  %190 = load i1* %FPU_UM_val, !mcsema_real_eip !57
  store i1 %190, i1* %FPU_UM, align 1, !mcsema_real_eip !57
  %191 = load i1* %FPU_OM_val, !mcsema_real_eip !57
  store i1 %191, i1* %FPU_OM, align 1, !mcsema_real_eip !57
  %192 = load i1* %FPU_ZM_val, !mcsema_real_eip !57
  store i1 %192, i1* %FPU_ZM, align 1, !mcsema_real_eip !57
  %193 = load i1* %FPU_DM_val, !mcsema_real_eip !57
  store i1 %193, i1* %FPU_DM, align 1, !mcsema_real_eip !57
  %194 = load i1* %FPU_IM_val, !mcsema_real_eip !57
  store i1 %194, i1* %FPU_IM, align 1, !mcsema_real_eip !57
  %195 = load i64* %53, align 4
  store i64 %195, i64* %52, align 4
  %196 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !57
  store i16 %196, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !57
  %197 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !57
  store i64 %197, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !57
  %198 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !57
  store i16 %198, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !57
  %199 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !57
  store i64 %199, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !57
  %200 = load i128* %XMM0_val, !mcsema_real_eip !57
  store i128 %200, i128* %XMM0, align 1, !mcsema_real_eip !57
  %201 = load i128* %XMM1_val, !mcsema_real_eip !57
  store i128 %201, i128* %XMM1, align 1, !mcsema_real_eip !57
  %202 = load i128* %XMM2_val, !mcsema_real_eip !57
  store i128 %202, i128* %XMM2, align 1, !mcsema_real_eip !57
  %203 = load i128* %XMM3_val, !mcsema_real_eip !57
  store i128 %203, i128* %XMM3, align 1, !mcsema_real_eip !57
  %204 = load i128* %XMM4_val, !mcsema_real_eip !57
  store i128 %204, i128* %XMM4, align 1, !mcsema_real_eip !57
  %205 = load i128* %XMM5_val, !mcsema_real_eip !57
  store i128 %205, i128* %XMM5, align 1, !mcsema_real_eip !57
  %206 = load i128* %XMM6_val, !mcsema_real_eip !57
  store i128 %206, i128* %XMM6, align 1, !mcsema_real_eip !57
  %207 = load i128* %XMM7_val, !mcsema_real_eip !57
  store i128 %207, i128* %XMM7, align 1, !mcsema_real_eip !57
  %208 = load i128* %XMM8_val, !mcsema_real_eip !57
  store i128 %208, i128* %XMM8, align 1, !mcsema_real_eip !57
  %209 = load i128* %XMM9_val, !mcsema_real_eip !57
  store i128 %209, i128* %XMM9, align 1, !mcsema_real_eip !57
  %210 = load i128* %XMM10_val, !mcsema_real_eip !57
  store i128 %210, i128* %XMM10, align 1, !mcsema_real_eip !57
  %211 = load i128* %XMM11_val, !mcsema_real_eip !57
  store i128 %211, i128* %XMM11, align 1, !mcsema_real_eip !57
  %212 = load i128* %XMM12_val, !mcsema_real_eip !57
  store i128 %212, i128* %XMM12, align 1, !mcsema_real_eip !57
  %213 = load i128* %XMM13_val, !mcsema_real_eip !57
  store i128 %213, i128* %XMM13, align 1, !mcsema_real_eip !57
  %214 = load i128* %XMM14_val, !mcsema_real_eip !57
  store i128 %214, i128* %XMM14, align 1, !mcsema_real_eip !57
  %215 = load i128* %XMM15_val, !mcsema_real_eip !57
  store i128 %215, i128* %XMM15, align 1, !mcsema_real_eip !57
  %216 = load i64* %STACK_BASE_val, !mcsema_real_eip !57
  store i64 %216, i64* %STACK_BASE, align 1, !mcsema_real_eip !57
  %217 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !57
  store i64 %217, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !57
  ret void, !mcsema_real_eip !57

block_0x9b:                                       ; preds = %block_0x8c
  %218 = load i64* %RBP_val, !mcsema_real_eip !58
  %219 = add i64 %218, -17, !mcsema_real_eip !58
  %220 = inttoptr i64 %219 to i64*, !mcsema_real_eip !58
  %221 = bitcast i64* %220 to i8*
  %222 = load i8* %221, !mcsema_real_eip !58
  %223 = zext i8 %222 to i64
  store i64 %223, i64* %RDX_val, !mcsema_real_eip !58
  %224 = load i64* %RAX_val, !mcsema_real_eip !59
  %225 = inttoptr i64 %224 to i64*, !mcsema_real_eip !59
  %226 = bitcast i64* %225 to i8*
  store i8 %222, i8* %226, !mcsema_real_eip !59
  %227 = load i64* %RBP_val, !mcsema_real_eip !60
  %228 = add i64 %227, -8, !mcsema_real_eip !60
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !60
  %230 = load i64* %229, !mcsema_real_eip !60
  store i64 %230, i64* %RAX_val, !mcsema_real_eip !60
  %231 = inttoptr i64 %230 to i64*, !mcsema_real_eip !61
  %232 = bitcast i64* %231 to i8*
  %233 = load i8* %232, !mcsema_real_eip !61
  %234 = zext i8 %233 to i64
  store i64 %234, i64* %RAX_val, !mcsema_real_eip !61
  %235 = load i64* %RBP_val, !mcsema_real_eip !62
  %236 = add i64 %235, -17, !mcsema_real_eip !62
  %237 = inttoptr i64 %236 to i64*, !mcsema_real_eip !62
  %238 = bitcast i64* %237 to i8*
  store i8 %233, i8* %238, !mcsema_real_eip !62
  %239 = load i64* %RBP_val, !mcsema_real_eip !51
  %240 = add i64 %239, -17, !mcsema_real_eip !51
  %241 = inttoptr i64 %240 to i64*, !mcsema_real_eip !51
  %242 = bitcast i64* %241 to i8*
  %243 = load i8* %242, !mcsema_real_eip !51
  store i1 false, i1* %AF_val, !mcsema_real_eip !51
  %244 = tail call i8 @llvm.ctpop.i8(i8 %243), !mcsema_real_eip !51
  %245 = and i8 %244, 1
  %246 = icmp eq i8 %245, 0
  store i1 %246, i1* %PF_val, !mcsema_real_eip !51
  %247 = icmp eq i8 %243, 0, !mcsema_real_eip !51
  store i1 %247, i1* %ZF_val, !mcsema_real_eip !51
  %248 = icmp slt i8 %243, 0
  store i1 %248, i1* %SF_val, !mcsema_real_eip !51
  store i1 false, i1* %CF_val, !mcsema_real_eip !51
  store i1 false, i1* %OF_val, !mcsema_real_eip !51
  br i1 %247, label %block_0xbf.loopexit, label %block_0x8c.backedge, !mcsema_real_eip !52

block_0x92:                                       ; preds = %block_0x8c
  %249 = inttoptr i64 %143 to i64*, !mcsema_real_eip !63
  %250 = bitcast i64* %249 to i8*
  store i8 92, i8* %250, !mcsema_real_eip !63
  %251 = load i64* %RBP_val, !mcsema_real_eip !60
  %252 = add i64 %251, -8, !mcsema_real_eip !60
  %253 = inttoptr i64 %252 to i64*, !mcsema_real_eip !60
  %254 = load i64* %253, !mcsema_real_eip !60
  store i64 %254, i64* %RAX_val, !mcsema_real_eip !60
  %255 = inttoptr i64 %254 to i64*, !mcsema_real_eip !61
  %256 = bitcast i64* %255 to i8*
  %257 = load i8* %256, !mcsema_real_eip !61
  %258 = zext i8 %257 to i64
  store i64 %258, i64* %RAX_val, !mcsema_real_eip !61
  %259 = load i64* %RBP_val, !mcsema_real_eip !62
  %260 = add i64 %259, -17, !mcsema_real_eip !62
  %261 = inttoptr i64 %260 to i64*, !mcsema_real_eip !62
  %262 = bitcast i64* %261 to i8*
  store i8 %257, i8* %262, !mcsema_real_eip !62
  %263 = load i64* %RBP_val, !mcsema_real_eip !51
  %264 = add i64 %263, -17, !mcsema_real_eip !51
  %265 = inttoptr i64 %264 to i64*, !mcsema_real_eip !51
  %266 = bitcast i64* %265 to i8*
  %267 = load i8* %266, !mcsema_real_eip !51
  store i1 false, i1* %AF_val, !mcsema_real_eip !51
  %268 = tail call i8 @llvm.ctpop.i8(i8 %267), !mcsema_real_eip !51
  %269 = and i8 %268, 1
  %270 = icmp eq i8 %269, 0
  store i1 %270, i1* %PF_val, !mcsema_real_eip !51
  %271 = icmp eq i8 %267, 0, !mcsema_real_eip !51
  store i1 %271, i1* %ZF_val, !mcsema_real_eip !51
  %272 = icmp slt i8 %267, 0
  store i1 %272, i1* %SF_val, !mcsema_real_eip !51
  store i1 false, i1* %CF_val, !mcsema_real_eip !51
  store i1 false, i1* %OF_val, !mcsema_real_eip !51
  br i1 %271, label %block_0xbf.loopexit, label %block_0x8c.backedge, !mcsema_real_eip !52

block_0x8c.backedge:                              ; preds = %block_0x92, %block_0x9b
  br label %block_0x8c
}

define internal x86_64_sysvcc void @sub_7(%struct.regs*) {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !64
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !64
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !64
  %XMM15_val = alloca i128, !mcsema_real_eip !64
  %XMM14_val = alloca i128, !mcsema_real_eip !64
  %XMM13_val = alloca i128, !mcsema_real_eip !64
  %XMM12_val = alloca i128, !mcsema_real_eip !64
  %XMM11_val = alloca i128, !mcsema_real_eip !64
  %XMM10_val = alloca i128, !mcsema_real_eip !64
  %XMM9_val = alloca i128, !mcsema_real_eip !64
  %XMM8_val = alloca i128, !mcsema_real_eip !64
  %XMM7_val = alloca i128, !mcsema_real_eip !64
  %XMM6_val = alloca i128, !mcsema_real_eip !64
  %XMM5_val = alloca i128, !mcsema_real_eip !64
  %XMM4_val = alloca i128, !mcsema_real_eip !64
  %XMM3_val = alloca i128, !mcsema_real_eip !64
  %XMM2_val = alloca i128, !mcsema_real_eip !64
  %XMM1_val = alloca i128, !mcsema_real_eip !64
  %XMM0_val = alloca i128, !mcsema_real_eip !64
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !64
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !64
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !64
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !64
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !64
  %FPU_IM_val = alloca i1, !mcsema_real_eip !64
  %FPU_DM_val = alloca i1, !mcsema_real_eip !64
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !64
  %FPU_OM_val = alloca i1, !mcsema_real_eip !64
  %FPU_UM_val = alloca i1, !mcsema_real_eip !64
  %FPU_PM_val = alloca i1, !mcsema_real_eip !64
  %FPU_PC_val = alloca i2, !mcsema_real_eip !64
  %FPU_RC_val = alloca i2, !mcsema_real_eip !64
  %FPU_X_val = alloca i1, !mcsema_real_eip !64
  %FPU_IE_val = alloca i1, !mcsema_real_eip !64
  %FPU_DE_val = alloca i1, !mcsema_real_eip !64
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !64
  %FPU_OE_val = alloca i1, !mcsema_real_eip !64
  %FPU_UE_val = alloca i1, !mcsema_real_eip !64
  %FPU_PE_val = alloca i1, !mcsema_real_eip !64
  %FPU_SF_val = alloca i1, !mcsema_real_eip !64
  %FPU_ES_val = alloca i1, !mcsema_real_eip !64
  %FPU_C0_val = alloca i1, !mcsema_real_eip !64
  %FPU_C1_val = alloca i1, !mcsema_real_eip !64
  %FPU_C2_val = alloca i1, !mcsema_real_eip !64
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !64
  %FPU_C3_val = alloca i1, !mcsema_real_eip !64
  %FPU_B_val = alloca i1, !mcsema_real_eip !64
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !64
  %DF_val = alloca i1, !mcsema_real_eip !64
  %OF_val = alloca i1, !mcsema_real_eip !64
  %SF_val = alloca i1, !mcsema_real_eip !64
  %CF_val = alloca i1, !mcsema_real_eip !64
  %AF_val = alloca i1, !mcsema_real_eip !64
  %PF_val = alloca i1, !mcsema_real_eip !64
  %ZF_val = alloca i1, !mcsema_real_eip !64
  %RIP_val = alloca i64, !mcsema_real_eip !64
  %R14_val = alloca i64, !mcsema_real_eip !64
  %R13_val = alloca i64, !mcsema_real_eip !64
  %R12_val = alloca i64, !mcsema_real_eip !64
  %R11_val = alloca i64, !mcsema_real_eip !64
  %R10_val = alloca i64, !mcsema_real_eip !64
  %R9_val = alloca i64, !mcsema_real_eip !64
  %R8_val = alloca i64, !mcsema_real_eip !64
  %RSP_val = alloca i64, !mcsema_real_eip !64
  %RBP_val = alloca i64, !mcsema_real_eip !64
  %RDI_val = alloca i64, !mcsema_real_eip !64
  %RSI_val = alloca i64, !mcsema_real_eip !64
  %RDX_val = alloca i64, !mcsema_real_eip !64
  %RCX_val = alloca i64, !mcsema_real_eip !64
  %RBX_val = alloca i64, !mcsema_real_eip !64
  %RAX_val = alloca i64, !mcsema_real_eip !64
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !64
  %1 = load i64* %RAX, !mcsema_real_eip !64
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !64
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !64
  %2 = load i64* %RBX, !mcsema_real_eip !64
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !64
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !64
  %3 = load i64* %RCX, !mcsema_real_eip !64
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !64
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !64
  %4 = load i64* %RDX, !mcsema_real_eip !64
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !64
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !64
  %5 = load i64* %RSI, !mcsema_real_eip !64
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !64
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !64
  %6 = load i64* %RDI, !mcsema_real_eip !64
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !64
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !64
  %7 = load i64* %RSP, !mcsema_real_eip !64
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !64
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !64
  %8 = load i64* %RBP, !mcsema_real_eip !64
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !64
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !64
  %9 = load i64* %R8, !mcsema_real_eip !64
  store i64 %9, i64* %R8_val, !mcsema_real_eip !64
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !64
  %10 = load i64* %R9, !mcsema_real_eip !64
  store i64 %10, i64* %R9_val, !mcsema_real_eip !64
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !64
  %11 = load i64* %R10, !mcsema_real_eip !64
  store i64 %11, i64* %R10_val, !mcsema_real_eip !64
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !64
  %12 = load i64* %R11, !mcsema_real_eip !64
  store i64 %12, i64* %R11_val, !mcsema_real_eip !64
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !64
  %13 = load i64* %R12, !mcsema_real_eip !64
  store i64 %13, i64* %R12_val, !mcsema_real_eip !64
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !64
  %14 = load i64* %R13, !mcsema_real_eip !64
  store i64 %14, i64* %R13_val, !mcsema_real_eip !64
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !64
  %15 = load i64* %R14, !mcsema_real_eip !64
  store i64 %15, i64* %R14_val, !mcsema_real_eip !64
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !64
  %16 = load i64* %R15, !mcsema_real_eip !64
  store i64 %16, i64* %R15_val, !mcsema_real_eip !64
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !64
  %17 = load i64* %RIP, !mcsema_real_eip !64
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !64
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !64
  %18 = load i1* %CF, align 1, !mcsema_real_eip !64
  store i1 %18, i1* %CF_val, !mcsema_real_eip !64
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !64
  %19 = load i1* %PF, align 1, !mcsema_real_eip !64
  store i1 %19, i1* %PF_val, !mcsema_real_eip !64
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !64
  %20 = load i1* %AF, align 1, !mcsema_real_eip !64
  store i1 %20, i1* %AF_val, !mcsema_real_eip !64
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !64
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !64
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !64
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !64
  %22 = load i1* %SF, align 1, !mcsema_real_eip !64
  store i1 %22, i1* %SF_val, !mcsema_real_eip !64
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !64
  %23 = load i1* %OF, align 1, !mcsema_real_eip !64
  store i1 %23, i1* %OF_val, !mcsema_real_eip !64
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !64
  %24 = load i1* %DF, align 1, !mcsema_real_eip !64
  store i1 %24, i1* %DF_val, !mcsema_real_eip !64
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !64
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !64
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !64
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !64
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !64
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !64
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !64
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !64
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !64
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !64
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !64
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !64
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !64
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !64
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !64
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !64
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !64
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !64
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !64
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !64
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !64
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !64
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !64
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !64
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !64
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !64
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !64
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !64
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !64
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !64
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !64
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !64
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !64
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !64
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !64
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !64
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !64
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !64
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !64
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !64
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !64
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !64
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !64
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !64
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !64
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !64
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !64
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !64
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !64
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !64
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !64
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !64
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !64
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !64
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !64
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !64
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !64
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !64
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !64
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !64
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !64
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !64
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !64
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !64
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !64
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !64
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !64
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !64
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !64
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !64
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !64
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !64
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !64
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !64
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !64
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !64
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !64
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !64
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !64
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !64
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !64
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !64
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !64
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !64
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !64
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !64
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !64
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !64
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !64
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !64
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !64
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !64
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !64
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !64
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !64
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !64
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !64
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !64
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !64
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !64
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !64
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !64
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !64
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !64
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !64
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !64
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !64
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !64
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !64
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !64
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !64
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !64
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !64
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !64
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !64
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !64
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !64
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !64
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !64
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !64
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !64
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !64
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !64
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !64
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !64
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !64
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !64
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !64
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !64
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !64
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !64
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !64
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !64
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !64
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !64
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !64
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !64
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !64
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !64
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !64
  %77 = load i64* %RBP_val, !mcsema_real_eip !64
  %78 = load i64* %RSP_val, !mcsema_real_eip !64
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !64
  store i64 %77, i64* %80, !mcsema_real_eip !64
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !65
  %81 = add i64 %78, -40
  %82 = xor i64 %81, %79, !mcsema_real_eip !66
  %83 = and i64 %82, 16, !mcsema_real_eip !66
  %84 = icmp ne i64 %83, 0, !mcsema_real_eip !66
  store i1 %84, i1* %AF_val, !mcsema_real_eip !66
  %85 = trunc i64 %81 to i8, !mcsema_real_eip !66
  %86 = tail call i8 @llvm.ctpop.i8(i8 %85), !mcsema_real_eip !66
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  store i1 %88, i1* %PF_val, !mcsema_real_eip !66
  %89 = icmp eq i64 %81, 0, !mcsema_real_eip !66
  store i1 %89, i1* %ZF_val, !mcsema_real_eip !66
  %90 = icmp slt i64 %81, 0
  store i1 %90, i1* %SF_val, !mcsema_real_eip !66
  %91 = icmp ult i64 %79, 32, !mcsema_real_eip !66
  store i1 %91, i1* %CF_val, !mcsema_real_eip !66
  %92 = and i64 %82, %79, !mcsema_real_eip !66
  %93 = icmp slt i64 %92, 0
  store i1 %93, i1* %OF_val, !mcsema_real_eip !66
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !66
  %94 = load i64* %RBP_val, !mcsema_real_eip !67
  %95 = add i64 %94, -24, !mcsema_real_eip !67
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !67
  %97 = load i64* %RDI_val, !mcsema_real_eip !67
  store i64 %97, i64* %96, !mcsema_real_eip !67
  %98 = load i64* %RBP_val, !mcsema_real_eip !68
  %99 = add i64 %98, -4, !mcsema_real_eip !68
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !68
  %101 = bitcast i64* %100 to i32*
  store i32 1, i32* %101, !mcsema_real_eip !68
  %102 = load i64* %RBP_val, !mcsema_real_eip !69
  %103 = add i64 %102, -24, !mcsema_real_eip !69
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !69
  %105 = load i64* %104, !mcsema_real_eip !69
  store i64 %105, i64* %RDI_val, !mcsema_real_eip !70
  %106 = tail call x86_64_sysvcc i64 @strlen(i64 %105), !mcsema_real_eip !71
  store i64 %106, i64* %RAX_val, !mcsema_real_eip !71
  %107 = load i64* %RBP_val, !mcsema_real_eip !72
  %108 = add i64 %107, -8, !mcsema_real_eip !72
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !72
  %110 = trunc i64 %106 to i32, !mcsema_real_eip !72
  %111 = bitcast i64* %109 to i32*
  store i32 %110, i32* %111, !mcsema_real_eip !72
  %112 = load i64* %RBP_val, !mcsema_real_eip !73
  %113 = add i64 %112, -8, !mcsema_real_eip !73
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !73
  %115 = bitcast i64* %114 to i32*
  %116 = load i32* %115, !mcsema_real_eip !73
  %117 = add i32 %116, -1
  %118 = xor i32 %117, %116, !mcsema_real_eip !73
  %119 = and i32 %118, 16, !mcsema_real_eip !73
  %120 = icmp ne i32 %119, 0, !mcsema_real_eip !73
  store i1 %120, i1* %AF_val, !mcsema_real_eip !73
  %121 = trunc i32 %117 to i8, !mcsema_real_eip !73
  %122 = tail call i8 @llvm.ctpop.i8(i8 %121), !mcsema_real_eip !73
  %123 = and i8 %122, 1
  %124 = icmp eq i8 %123, 0
  store i1 %124, i1* %PF_val, !mcsema_real_eip !73
  %125 = icmp eq i32 %117, 0, !mcsema_real_eip !73
  store i1 %125, i1* %ZF_val, !mcsema_real_eip !73
  %126 = icmp slt i32 %117, 0
  store i1 %126, i1* %SF_val, !mcsema_real_eip !73
  %127 = icmp eq i32 %116, 0
  store i1 %127, i1* %CF_val, !mcsema_real_eip !73
  %128 = and i32 %118, %116, !mcsema_real_eip !73
  %129 = icmp slt i32 %128, 0
  store i1 %129, i1* %OF_val, !mcsema_real_eip !73
  %130 = xor i1 %126, %129
  %131 = load i1* %ZF_val, !mcsema_real_eip !74
  %132 = or i1 %131, %130, !mcsema_real_eip !74
  br i1 %132, label %block_0x5f, label %block_0x2f, !mcsema_real_eip !74

block_0x5f:                                       ; preds = %block_0x2f, %entry
  %133 = load i64* %RBP_val, !mcsema_real_eip !75
  %134 = add i64 %133, -4, !mcsema_real_eip !75
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !75
  %136 = bitcast i64* %135 to i32*
  %137 = load i32* %136, !mcsema_real_eip !75
  %138 = zext i32 %137 to i64, !mcsema_real_eip !75
  store i64 %138, i64* %RAX_val, !mcsema_real_eip !75
  %139 = load i64* %RBP_val, !mcsema_real_eip !76
  store i64 %139, i64* %RSP_val, !mcsema_real_eip !76
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !76
  %141 = load i64* %140, !mcsema_real_eip !76
  store i64 %141, i64* %RBP_val, !mcsema_real_eip !76
  %142 = add i64 %139, 16, !mcsema_real_eip !77
  store i64 %142, i64* %RSP_val, !mcsema_real_eip !77
  %143 = load i64* %RAX_val, !mcsema_real_eip !77
  store i64 %143, i64* %RAX, !mcsema_real_eip !77
  %144 = load i64* %RBX_val, !mcsema_real_eip !77
  store i64 %144, i64* %RBX, !mcsema_real_eip !77
  %145 = load i64* %RCX_val, !mcsema_real_eip !77
  store i64 %145, i64* %RCX, !mcsema_real_eip !77
  %146 = load i64* %RDX_val, !mcsema_real_eip !77
  store i64 %146, i64* %RDX, !mcsema_real_eip !77
  %147 = load i64* %RSI_val, !mcsema_real_eip !77
  store i64 %147, i64* %RSI, !mcsema_real_eip !77
  %148 = load i64* %RDI_val, !mcsema_real_eip !77
  store i64 %148, i64* %RDI, !mcsema_real_eip !77
  %149 = load i64* %RSP_val, !mcsema_real_eip !77
  store i64 %149, i64* %RSP, !mcsema_real_eip !77
  %150 = load i64* %RBP_val, !mcsema_real_eip !77
  store i64 %150, i64* %RBP, !mcsema_real_eip !77
  %151 = load i64* %R8_val, !mcsema_real_eip !77
  store i64 %151, i64* %R8, !mcsema_real_eip !77
  %152 = load i64* %R9_val, !mcsema_real_eip !77
  store i64 %152, i64* %R9, !mcsema_real_eip !77
  %153 = load i64* %R10_val, !mcsema_real_eip !77
  store i64 %153, i64* %R10, !mcsema_real_eip !77
  %154 = load i64* %R11_val, !mcsema_real_eip !77
  store i64 %154, i64* %R11, !mcsema_real_eip !77
  %155 = load i64* %R12_val, !mcsema_real_eip !77
  store i64 %155, i64* %R12, !mcsema_real_eip !77
  %156 = load i64* %R13_val, !mcsema_real_eip !77
  store i64 %156, i64* %R13, !mcsema_real_eip !77
  %157 = load i64* %R14_val, !mcsema_real_eip !77
  store i64 %157, i64* %R14, !mcsema_real_eip !77
  %158 = load i64* %R15_val, !mcsema_real_eip !77
  store i64 %158, i64* %R15, !mcsema_real_eip !77
  %159 = load i64* %RIP_val, !mcsema_real_eip !77
  store i64 %159, i64* %RIP, !mcsema_real_eip !77
  %160 = load i1* %CF_val, !mcsema_real_eip !77
  store i1 %160, i1* %CF, align 1, !mcsema_real_eip !77
  %161 = load i1* %PF_val, !mcsema_real_eip !77
  store i1 %161, i1* %PF, align 1, !mcsema_real_eip !77
  %162 = load i1* %AF_val, !mcsema_real_eip !77
  store i1 %162, i1* %AF, align 1, !mcsema_real_eip !77
  %163 = load i1* %ZF_val, !mcsema_real_eip !77
  store i1 %163, i1* %ZF, align 1, !mcsema_real_eip !77
  %164 = load i1* %SF_val, !mcsema_real_eip !77
  store i1 %164, i1* %SF, align 1, !mcsema_real_eip !77
  %165 = load i1* %OF_val, !mcsema_real_eip !77
  store i1 %165, i1* %OF, align 1, !mcsema_real_eip !77
  %166 = load i1* %DF_val, !mcsema_real_eip !77
  store i1 %166, i1* %DF, align 1, !mcsema_real_eip !77
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !77
  %167 = load i1* %FPU_B_val, !mcsema_real_eip !77
  store i1 %167, i1* %FPU_B, align 1, !mcsema_real_eip !77
  %168 = load i1* %FPU_C3_val, !mcsema_real_eip !77
  store i1 %168, i1* %FPU_C3, align 1, !mcsema_real_eip !77
  %169 = load i3* %FPU_TOP_val, !mcsema_real_eip !77
  store i3 %169, i3* %FPU_TOP, align 1, !mcsema_real_eip !77
  %170 = load i1* %FPU_C2_val, !mcsema_real_eip !77
  store i1 %170, i1* %FPU_C2, align 1, !mcsema_real_eip !77
  %171 = load i1* %FPU_C1_val, !mcsema_real_eip !77
  store i1 %171, i1* %FPU_C1, align 1, !mcsema_real_eip !77
  %172 = load i1* %FPU_C0_val, !mcsema_real_eip !77
  store i1 %172, i1* %FPU_C0, align 1, !mcsema_real_eip !77
  %173 = load i1* %FPU_ES_val, !mcsema_real_eip !77
  store i1 %173, i1* %FPU_ES, align 1, !mcsema_real_eip !77
  %174 = load i1* %FPU_SF_val, !mcsema_real_eip !77
  store i1 %174, i1* %FPU_SF, align 1, !mcsema_real_eip !77
  %175 = load i1* %FPU_PE_val, !mcsema_real_eip !77
  store i1 %175, i1* %FPU_PE, align 1, !mcsema_real_eip !77
  %176 = load i1* %FPU_UE_val, !mcsema_real_eip !77
  store i1 %176, i1* %FPU_UE, align 1, !mcsema_real_eip !77
  %177 = load i1* %FPU_OE_val, !mcsema_real_eip !77
  store i1 %177, i1* %FPU_OE, align 1, !mcsema_real_eip !77
  %178 = load i1* %FPU_ZE_val, !mcsema_real_eip !77
  store i1 %178, i1* %FPU_ZE, align 1, !mcsema_real_eip !77
  %179 = load i1* %FPU_DE_val, !mcsema_real_eip !77
  store i1 %179, i1* %FPU_DE, align 1, !mcsema_real_eip !77
  %180 = load i1* %FPU_IE_val, !mcsema_real_eip !77
  store i1 %180, i1* %FPU_IE, align 1, !mcsema_real_eip !77
  %181 = load i1* %FPU_X_val, !mcsema_real_eip !77
  store i1 %181, i1* %FPU_X, align 1, !mcsema_real_eip !77
  %182 = load i2* %FPU_RC_val, !mcsema_real_eip !77
  store i2 %182, i2* %FPU_RC, align 1, !mcsema_real_eip !77
  %183 = load i2* %FPU_PC_val, !mcsema_real_eip !77
  store i2 %183, i2* %FPU_PC, align 1, !mcsema_real_eip !77
  %184 = load i1* %FPU_PM_val, !mcsema_real_eip !77
  store i1 %184, i1* %FPU_PM, align 1, !mcsema_real_eip !77
  %185 = load i1* %FPU_UM_val, !mcsema_real_eip !77
  store i1 %185, i1* %FPU_UM, align 1, !mcsema_real_eip !77
  %186 = load i1* %FPU_OM_val, !mcsema_real_eip !77
  store i1 %186, i1* %FPU_OM, align 1, !mcsema_real_eip !77
  %187 = load i1* %FPU_ZM_val, !mcsema_real_eip !77
  store i1 %187, i1* %FPU_ZM, align 1, !mcsema_real_eip !77
  %188 = load i1* %FPU_DM_val, !mcsema_real_eip !77
  store i1 %188, i1* %FPU_DM, align 1, !mcsema_real_eip !77
  %189 = load i1* %FPU_IM_val, !mcsema_real_eip !77
  store i1 %189, i1* %FPU_IM, align 1, !mcsema_real_eip !77
  %190 = load i64* %53, align 4
  store i64 %190, i64* %52, align 4
  %191 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !77
  store i16 %191, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !77
  %192 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !77
  store i64 %192, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !77
  %193 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !77
  store i16 %193, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !77
  %194 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !77
  store i64 %194, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !77
  %195 = load i128* %XMM0_val, !mcsema_real_eip !77
  store i128 %195, i128* %XMM0, align 1, !mcsema_real_eip !77
  %196 = load i128* %XMM1_val, !mcsema_real_eip !77
  store i128 %196, i128* %XMM1, align 1, !mcsema_real_eip !77
  %197 = load i128* %XMM2_val, !mcsema_real_eip !77
  store i128 %197, i128* %XMM2, align 1, !mcsema_real_eip !77
  %198 = load i128* %XMM3_val, !mcsema_real_eip !77
  store i128 %198, i128* %XMM3, align 1, !mcsema_real_eip !77
  %199 = load i128* %XMM4_val, !mcsema_real_eip !77
  store i128 %199, i128* %XMM4, align 1, !mcsema_real_eip !77
  %200 = load i128* %XMM5_val, !mcsema_real_eip !77
  store i128 %200, i128* %XMM5, align 1, !mcsema_real_eip !77
  %201 = load i128* %XMM6_val, !mcsema_real_eip !77
  store i128 %201, i128* %XMM6, align 1, !mcsema_real_eip !77
  %202 = load i128* %XMM7_val, !mcsema_real_eip !77
  store i128 %202, i128* %XMM7, align 1, !mcsema_real_eip !77
  %203 = load i128* %XMM8_val, !mcsema_real_eip !77
  store i128 %203, i128* %XMM8, align 1, !mcsema_real_eip !77
  %204 = load i128* %XMM9_val, !mcsema_real_eip !77
  store i128 %204, i128* %XMM9, align 1, !mcsema_real_eip !77
  %205 = load i128* %XMM10_val, !mcsema_real_eip !77
  store i128 %205, i128* %XMM10, align 1, !mcsema_real_eip !77
  %206 = load i128* %XMM11_val, !mcsema_real_eip !77
  store i128 %206, i128* %XMM11, align 1, !mcsema_real_eip !77
  %207 = load i128* %XMM12_val, !mcsema_real_eip !77
  store i128 %207, i128* %XMM12, align 1, !mcsema_real_eip !77
  %208 = load i128* %XMM13_val, !mcsema_real_eip !77
  store i128 %208, i128* %XMM13, align 1, !mcsema_real_eip !77
  %209 = load i128* %XMM14_val, !mcsema_real_eip !77
  store i128 %209, i128* %XMM14, align 1, !mcsema_real_eip !77
  %210 = load i128* %XMM15_val, !mcsema_real_eip !77
  store i128 %210, i128* %XMM15, align 1, !mcsema_real_eip !77
  %211 = load i64* %STACK_BASE_val, !mcsema_real_eip !77
  store i64 %211, i64* %STACK_BASE, align 1, !mcsema_real_eip !77
  %212 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !77
  store i64 %212, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !77
  ret void, !mcsema_real_eip !77

block_0x2f:                                       ; preds = %entry
  %213 = load i64* %RBP_val, !mcsema_real_eip !78
  %214 = add i64 %213, -24, !mcsema_real_eip !78
  %215 = inttoptr i64 %214 to i64*, !mcsema_real_eip !78
  %216 = load i64* %215, !mcsema_real_eip !78
  store i64 %216, i64* %RAX_val, !mcsema_real_eip !78
  %217 = inttoptr i64 %216 to i64*, !mcsema_real_eip !79
  %218 = bitcast i64* %217 to i8*
  %219 = load i8* %218, !mcsema_real_eip !79
  %220 = zext i8 %219 to i64
  store i64 %220, i64* %RAX_val, !mcsema_real_eip !79
  %221 = load i64* %RBP_val, !mcsema_real_eip !80
  %222 = add i64 %221, -9, !mcsema_real_eip !80
  %223 = inttoptr i64 %222 to i64*, !mcsema_real_eip !80
  %224 = bitcast i64* %223 to i8*
  store i8 %219, i8* %224, !mcsema_real_eip !80
  %225 = load i64* %RBP_val, !mcsema_real_eip !81
  %226 = add i64 %225, -8, !mcsema_real_eip !81
  %227 = inttoptr i64 %226 to i64*, !mcsema_real_eip !81
  %228 = bitcast i64* %227 to i32*
  %229 = load i32* %228, !mcsema_real_eip !81
  %230 = sext i32 %229 to i64, !mcsema_real_eip !82
  store i64 %230, i64* %RAX_val, !mcsema_real_eip !82
  %231 = add nsw i64 %230, -1, !mcsema_real_eip !83
  %232 = inttoptr i64 %231 to i64*, !mcsema_real_eip !83
  %233 = ptrtoint i64* %232 to i64, !mcsema_real_eip !83
  store i64 %233, i64* %RDX_val, !mcsema_real_eip !83
  %234 = load i64* %RBP_val, !mcsema_real_eip !84
  %235 = add i64 %234, -24, !mcsema_real_eip !84
  %236 = inttoptr i64 %235 to i64*, !mcsema_real_eip !84
  %237 = load i64* %236, !mcsema_real_eip !84
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %233, i64 %237)
  %238 = extractvalue { i64, i1 } %uadd, 0
  %239 = xor i64 %238, %237, !mcsema_real_eip !85
  %240 = xor i64 %239, %233, !mcsema_real_eip !85
  %241 = and i64 %240, 16, !mcsema_real_eip !85
  %242 = icmp ne i64 %241, 0, !mcsema_real_eip !85
  store i1 %242, i1* %AF_val, !mcsema_real_eip !85
  %243 = icmp slt i64 %238, 0
  store i1 %243, i1* %SF_val, !mcsema_real_eip !85
  %244 = icmp eq i64 %238, 0, !mcsema_real_eip !85
  store i1 %244, i1* %ZF_val, !mcsema_real_eip !85
  %245 = xor i64 %237, -9223372036854775808, !mcsema_real_eip !85
  %246 = xor i64 %245, %233, !mcsema_real_eip !85
  %247 = and i64 %239, %246, !mcsema_real_eip !85
  %248 = icmp slt i64 %247, 0
  store i1 %248, i1* %OF_val, !mcsema_real_eip !85
  %249 = trunc i64 %238 to i8, !mcsema_real_eip !85
  %250 = tail call i8 @llvm.ctpop.i8(i8 %249), !mcsema_real_eip !85
  %251 = and i8 %250, 1
  %252 = icmp eq i8 %251, 0
  store i1 %252, i1* %PF_val, !mcsema_real_eip !85
  %253 = extractvalue { i64, i1 } %uadd, 1
  store i1 %253, i1* %CF_val, !mcsema_real_eip !85
  store i64 %238, i64* %RAX_val, !mcsema_real_eip !85
  %254 = inttoptr i64 %238 to i64*, !mcsema_real_eip !86
  %255 = bitcast i64* %254 to i8*
  %256 = load i8* %255, !mcsema_real_eip !86
  %257 = zext i8 %256 to i64
  store i64 %257, i64* %RAX_val, !mcsema_real_eip !86
  %258 = load i64* %RBP_val, !mcsema_real_eip !87
  %259 = add i64 %258, -10, !mcsema_real_eip !87
  %260 = inttoptr i64 %259 to i64*, !mcsema_real_eip !87
  %261 = bitcast i64* %260 to i8*
  store i8 %256, i8* %261, !mcsema_real_eip !87
  %262 = load i64* %RBP_val, !mcsema_real_eip !88
  %263 = add i64 %262, -9, !mcsema_real_eip !88
  %264 = inttoptr i64 %263 to i64*, !mcsema_real_eip !88
  %265 = bitcast i64* %264 to i8*
  %266 = load i8* %265, !mcsema_real_eip !88
  %267 = zext i8 %266 to i64
  store i64 %267, i64* %RAX_val, !mcsema_real_eip !88
  %268 = load i64* %RBP_val, !mcsema_real_eip !89
  %269 = add i64 %268, -10, !mcsema_real_eip !89
  %270 = inttoptr i64 %269 to i64*, !mcsema_real_eip !89
  %271 = bitcast i64* %270 to i8*
  %272 = load i8* %271, !mcsema_real_eip !89
  %273 = sub i8 %266, %272, !mcsema_real_eip !89
  %274 = xor i8 %273, %266, !mcsema_real_eip !89
  %275 = xor i8 %274, %272, !mcsema_real_eip !89
  %276 = and i8 %275, 16, !mcsema_real_eip !89
  %277 = icmp ne i8 %276, 0, !mcsema_real_eip !89
  store i1 %277, i1* %AF_val, !mcsema_real_eip !89
  %278 = tail call i8 @llvm.ctpop.i8(i8 %273), !mcsema_real_eip !89
  %279 = and i8 %278, 1
  %280 = icmp eq i8 %279, 0
  store i1 %280, i1* %PF_val, !mcsema_real_eip !89
  %281 = icmp eq i8 %266, %272
  store i1 %281, i1* %ZF_val, !mcsema_real_eip !89
  %282 = icmp slt i8 %273, 0
  store i1 %282, i1* %SF_val, !mcsema_real_eip !89
  %283 = icmp ult i8 %266, %272, !mcsema_real_eip !89
  store i1 %283, i1* %CF_val, !mcsema_real_eip !89
  %284 = xor i8 %272, %266, !mcsema_real_eip !89
  %285 = and i8 %274, %284, !mcsema_real_eip !89
  %286 = icmp slt i8 %285, 0
  store i1 %286, i1* %OF_val, !mcsema_real_eip !89
  %287 = load i1* %ZF_val, !mcsema_real_eip !90
  br i1 %287, label %block_0x58, label %block_0x5f, !mcsema_real_eip !90

block_0x58:                                       ; preds = %block_0x2f
  %288 = load i64* %RBP_val, !mcsema_real_eip !91
  %289 = add i64 %288, -4, !mcsema_real_eip !91
  %290 = inttoptr i64 %289 to i64*, !mcsema_real_eip !91
  %291 = bitcast i64* %290 to i32*
  store i32 0, i32* %291, !mcsema_real_eip !91
  %292 = load i64* %RBP_val, !mcsema_real_eip !75
  %293 = add i64 %292, -4, !mcsema_real_eip !75
  %294 = inttoptr i64 %293 to i64*, !mcsema_real_eip !75
  %295 = bitcast i64* %294 to i32*
  %296 = load i32* %295, !mcsema_real_eip !75
  %297 = zext i32 %296 to i64, !mcsema_real_eip !75
  store i64 %297, i64* %RAX_val, !mcsema_real_eip !75
  %298 = load i64* %RBP_val, !mcsema_real_eip !76
  store i64 %298, i64* %RSP_val, !mcsema_real_eip !76
  %299 = inttoptr i64 %298 to i64*, !mcsema_real_eip !76
  %300 = load i64* %299, !mcsema_real_eip !76
  store i64 %300, i64* %RBP_val, !mcsema_real_eip !76
  %301 = add i64 %298, 16, !mcsema_real_eip !77
  store i64 %301, i64* %RSP_val, !mcsema_real_eip !77
  %302 = load i64* %RAX_val, !mcsema_real_eip !77
  store i64 %302, i64* %RAX, !mcsema_real_eip !77
  %303 = load i64* %RBX_val, !mcsema_real_eip !77
  store i64 %303, i64* %RBX, !mcsema_real_eip !77
  %304 = load i64* %RCX_val, !mcsema_real_eip !77
  store i64 %304, i64* %RCX, !mcsema_real_eip !77
  %305 = load i64* %RDX_val, !mcsema_real_eip !77
  store i64 %305, i64* %RDX, !mcsema_real_eip !77
  %306 = load i64* %RSI_val, !mcsema_real_eip !77
  store i64 %306, i64* %RSI, !mcsema_real_eip !77
  %307 = load i64* %RDI_val, !mcsema_real_eip !77
  store i64 %307, i64* %RDI, !mcsema_real_eip !77
  %308 = load i64* %RSP_val, !mcsema_real_eip !77
  store i64 %308, i64* %RSP, !mcsema_real_eip !77
  %309 = load i64* %RBP_val, !mcsema_real_eip !77
  store i64 %309, i64* %RBP, !mcsema_real_eip !77
  %310 = load i64* %R8_val, !mcsema_real_eip !77
  store i64 %310, i64* %R8, !mcsema_real_eip !77
  %311 = load i64* %R9_val, !mcsema_real_eip !77
  store i64 %311, i64* %R9, !mcsema_real_eip !77
  %312 = load i64* %R10_val, !mcsema_real_eip !77
  store i64 %312, i64* %R10, !mcsema_real_eip !77
  %313 = load i64* %R11_val, !mcsema_real_eip !77
  store i64 %313, i64* %R11, !mcsema_real_eip !77
  %314 = load i64* %R12_val, !mcsema_real_eip !77
  store i64 %314, i64* %R12, !mcsema_real_eip !77
  %315 = load i64* %R13_val, !mcsema_real_eip !77
  store i64 %315, i64* %R13, !mcsema_real_eip !77
  %316 = load i64* %R14_val, !mcsema_real_eip !77
  store i64 %316, i64* %R14, !mcsema_real_eip !77
  %317 = load i64* %R15_val, !mcsema_real_eip !77
  store i64 %317, i64* %R15, !mcsema_real_eip !77
  %318 = load i64* %RIP_val, !mcsema_real_eip !77
  store i64 %318, i64* %RIP, !mcsema_real_eip !77
  %319 = load i1* %CF_val, !mcsema_real_eip !77
  store i1 %319, i1* %CF, align 1, !mcsema_real_eip !77
  %320 = load i1* %PF_val, !mcsema_real_eip !77
  store i1 %320, i1* %PF, align 1, !mcsema_real_eip !77
  %321 = load i1* %AF_val, !mcsema_real_eip !77
  store i1 %321, i1* %AF, align 1, !mcsema_real_eip !77
  %322 = load i1* %ZF_val, !mcsema_real_eip !77
  store i1 %322, i1* %ZF, align 1, !mcsema_real_eip !77
  %323 = load i1* %SF_val, !mcsema_real_eip !77
  store i1 %323, i1* %SF, align 1, !mcsema_real_eip !77
  %324 = load i1* %OF_val, !mcsema_real_eip !77
  store i1 %324, i1* %OF, align 1, !mcsema_real_eip !77
  %325 = load i1* %DF_val, !mcsema_real_eip !77
  store i1 %325, i1* %DF, align 1, !mcsema_real_eip !77
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !77
  %326 = load i1* %FPU_B_val, !mcsema_real_eip !77
  store i1 %326, i1* %FPU_B, align 1, !mcsema_real_eip !77
  %327 = load i1* %FPU_C3_val, !mcsema_real_eip !77
  store i1 %327, i1* %FPU_C3, align 1, !mcsema_real_eip !77
  %328 = load i3* %FPU_TOP_val, !mcsema_real_eip !77
  store i3 %328, i3* %FPU_TOP, align 1, !mcsema_real_eip !77
  %329 = load i1* %FPU_C2_val, !mcsema_real_eip !77
  store i1 %329, i1* %FPU_C2, align 1, !mcsema_real_eip !77
  %330 = load i1* %FPU_C1_val, !mcsema_real_eip !77
  store i1 %330, i1* %FPU_C1, align 1, !mcsema_real_eip !77
  %331 = load i1* %FPU_C0_val, !mcsema_real_eip !77
  store i1 %331, i1* %FPU_C0, align 1, !mcsema_real_eip !77
  %332 = load i1* %FPU_ES_val, !mcsema_real_eip !77
  store i1 %332, i1* %FPU_ES, align 1, !mcsema_real_eip !77
  %333 = load i1* %FPU_SF_val, !mcsema_real_eip !77
  store i1 %333, i1* %FPU_SF, align 1, !mcsema_real_eip !77
  %334 = load i1* %FPU_PE_val, !mcsema_real_eip !77
  store i1 %334, i1* %FPU_PE, align 1, !mcsema_real_eip !77
  %335 = load i1* %FPU_UE_val, !mcsema_real_eip !77
  store i1 %335, i1* %FPU_UE, align 1, !mcsema_real_eip !77
  %336 = load i1* %FPU_OE_val, !mcsema_real_eip !77
  store i1 %336, i1* %FPU_OE, align 1, !mcsema_real_eip !77
  %337 = load i1* %FPU_ZE_val, !mcsema_real_eip !77
  store i1 %337, i1* %FPU_ZE, align 1, !mcsema_real_eip !77
  %338 = load i1* %FPU_DE_val, !mcsema_real_eip !77
  store i1 %338, i1* %FPU_DE, align 1, !mcsema_real_eip !77
  %339 = load i1* %FPU_IE_val, !mcsema_real_eip !77
  store i1 %339, i1* %FPU_IE, align 1, !mcsema_real_eip !77
  %340 = load i1* %FPU_X_val, !mcsema_real_eip !77
  store i1 %340, i1* %FPU_X, align 1, !mcsema_real_eip !77
  %341 = load i2* %FPU_RC_val, !mcsema_real_eip !77
  store i2 %341, i2* %FPU_RC, align 1, !mcsema_real_eip !77
  %342 = load i2* %FPU_PC_val, !mcsema_real_eip !77
  store i2 %342, i2* %FPU_PC, align 1, !mcsema_real_eip !77
  %343 = load i1* %FPU_PM_val, !mcsema_real_eip !77
  store i1 %343, i1* %FPU_PM, align 1, !mcsema_real_eip !77
  %344 = load i1* %FPU_UM_val, !mcsema_real_eip !77
  store i1 %344, i1* %FPU_UM, align 1, !mcsema_real_eip !77
  %345 = load i1* %FPU_OM_val, !mcsema_real_eip !77
  store i1 %345, i1* %FPU_OM, align 1, !mcsema_real_eip !77
  %346 = load i1* %FPU_ZM_val, !mcsema_real_eip !77
  store i1 %346, i1* %FPU_ZM, align 1, !mcsema_real_eip !77
  %347 = load i1* %FPU_DM_val, !mcsema_real_eip !77
  store i1 %347, i1* %FPU_DM, align 1, !mcsema_real_eip !77
  %348 = load i1* %FPU_IM_val, !mcsema_real_eip !77
  store i1 %348, i1* %FPU_IM, align 1, !mcsema_real_eip !77
  %349 = load i64* %53, align 4
  store i64 %349, i64* %52, align 4
  %350 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !77
  store i16 %350, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !77
  %351 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !77
  store i64 %351, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !77
  %352 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !77
  store i16 %352, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !77
  %353 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !77
  store i64 %353, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !77
  %354 = load i128* %XMM0_val, !mcsema_real_eip !77
  store i128 %354, i128* %XMM0, align 1, !mcsema_real_eip !77
  %355 = load i128* %XMM1_val, !mcsema_real_eip !77
  store i128 %355, i128* %XMM1, align 1, !mcsema_real_eip !77
  %356 = load i128* %XMM2_val, !mcsema_real_eip !77
  store i128 %356, i128* %XMM2, align 1, !mcsema_real_eip !77
  %357 = load i128* %XMM3_val, !mcsema_real_eip !77
  store i128 %357, i128* %XMM3, align 1, !mcsema_real_eip !77
  %358 = load i128* %XMM4_val, !mcsema_real_eip !77
  store i128 %358, i128* %XMM4, align 1, !mcsema_real_eip !77
  %359 = load i128* %XMM5_val, !mcsema_real_eip !77
  store i128 %359, i128* %XMM5, align 1, !mcsema_real_eip !77
  %360 = load i128* %XMM6_val, !mcsema_real_eip !77
  store i128 %360, i128* %XMM6, align 1, !mcsema_real_eip !77
  %361 = load i128* %XMM7_val, !mcsema_real_eip !77
  store i128 %361, i128* %XMM7, align 1, !mcsema_real_eip !77
  %362 = load i128* %XMM8_val, !mcsema_real_eip !77
  store i128 %362, i128* %XMM8, align 1, !mcsema_real_eip !77
  %363 = load i128* %XMM9_val, !mcsema_real_eip !77
  store i128 %363, i128* %XMM9, align 1, !mcsema_real_eip !77
  %364 = load i128* %XMM10_val, !mcsema_real_eip !77
  store i128 %364, i128* %XMM10, align 1, !mcsema_real_eip !77
  %365 = load i128* %XMM11_val, !mcsema_real_eip !77
  store i128 %365, i128* %XMM11, align 1, !mcsema_real_eip !77
  %366 = load i128* %XMM12_val, !mcsema_real_eip !77
  store i128 %366, i128* %XMM12, align 1, !mcsema_real_eip !77
  %367 = load i128* %XMM13_val, !mcsema_real_eip !77
  store i128 %367, i128* %XMM13, align 1, !mcsema_real_eip !77
  %368 = load i128* %XMM14_val, !mcsema_real_eip !77
  store i128 %368, i128* %XMM14, align 1, !mcsema_real_eip !77
  %369 = load i128* %XMM15_val, !mcsema_real_eip !77
  store i128 %369, i128* %XMM15, align 1, !mcsema_real_eip !77
  %370 = load i64* %STACK_BASE_val, !mcsema_real_eip !77
  store i64 %370, i64* %STACK_BASE, align 1, !mcsema_real_eip !77
  %371 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !77
  store i64 %371, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !77
  ret void, !mcsema_real_eip !77
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

declare x86_64_sysvcc i64 @strlen(i64 inreg)

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_c2(%struct.regs* %0)
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
!2 = metadata !{i64 194, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 195, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = metadata !{i64 198, [16 x i8] c"\09subq\09$48, %rsp\00"}
!5 = metadata !{i64 202, [22 x i8] c"\09movq\09%rdi, -40(%rbp)\00"}
!6 = metadata !{i64 206, [22 x i8] c"\09movl\09%esi, -44(%rbp)\00"}
!7 = metadata !{i64 209, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!8 = metadata !{i64 216, [22 x i8] c"\09movl\09-44(%rbp), %eax\00"}
!9 = metadata !{i64 219, [6 x i8] c"\09cltq\00"}
!10 = metadata !{i64 221, [15 x i8] c"\09shlq\09$3, %rax\00"}
!11 = metadata !{i64 225, [17 x i8] c"\09movq\09%rax, %rdi\00"}
!12 = metadata !{i64 228, [9 x i8] c"\09callq\090\00"}
!13 = metadata !{i64 233, [22 x i8] c"\09movq\09%rax, -16(%rbp)\00"}
!14 = metadata !{i64 305, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!15 = metadata !{i64 308, [22 x i8] c"\09cmpl\09-44(%rbp), %eax\00"}
!16 = metadata !{i64 311, [8 x i8] c"\09jl\09-74\00"}
!17 = metadata !{i64 239, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!18 = metadata !{i64 242, [6 x i8] c"\09cltq\00"}
!19 = metadata !{i64 244, [22 x i8] c"\09leaq\09(,%rax,8), %rdx\00"}
!20 = metadata !{i64 252, [22 x i8] c"\09movq\09-40(%rbp), %rax\00"}
!21 = metadata !{i64 256, [17 x i8] c"\09addq\09%rdx, %rax\00"}
!22 = metadata !{i64 259, [19 x i8] c"\09movq\09(%rax), %rax\00"}
!23 = metadata !{i64 262, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!24 = metadata !{i64 266, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!25 = metadata !{i64 270, [17 x i8] c"\09movq\09%rax, %rdi\00"}
!26 = metadata !{i64 273, [12 x i8] c"\09callq\09-271\00"}
!27 = metadata !{i64 278, [18 x i8] c"\09testl\09%eax, %eax\00"}
!28 = metadata !{i64 280, [8 x i8] c"\09jne\0919\00"}
!29 = metadata !{i64 301, [19 x i8] c"\09addl\09$1, -4(%rbp)\00"}
!30 = metadata !{i64 313, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!31 = metadata !{i64 317, [15 x i8] c"\09addq\09$1, %rax\00"}
!32 = metadata !{i64 321, [17 x i8] c"\09movb\09$2, (%rax)\00"}
!33 = metadata !{i64 325, [7 x i8] c"\09leave\00"}
!34 = metadata !{i64 326, [6 x i8] c"\09retq\00"}
!35 = metadata !{i64 282, [22 x i8] c"\09movq\09-24(%rbp), %rdx\00"}
!36 = metadata !{i64 286, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!37 = metadata !{i64 290, [17 x i8] c"\09movq\09%rdx, %rsi\00"}
!38 = metadata !{i64 293, [17 x i8] c"\09movq\09%rax, %rdi\00"}
!39 = metadata !{i64 296, [12 x i8] c"\09callq\09-201\00"}
!40 = metadata !{i64 100, [12 x i8] c"\09pushq\09%rbp\00"}
!41 = metadata !{i64 101, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!42 = metadata !{i64 104, [22 x i8] c"\09movq\09%rdi, -40(%rbp)\00"}
!43 = metadata !{i64 108, [22 x i8] c"\09movq\09%rsi, -48(%rbp)\00"}
!44 = metadata !{i64 112, [22 x i8] c"\09movq\09-40(%rbp), %rax\00"}
!45 = metadata !{i64 116, [21 x i8] c"\09movq\09%rax, -8(%rbp)\00"}
!46 = metadata !{i64 120, [22 x i8] c"\09movq\09-48(%rbp), %rax\00"}
!47 = metadata !{i64 124, [22 x i8] c"\09movq\09%rax, -16(%rbp)\00"}
!48 = metadata !{i64 128, [21 x i8] c"\09movq\09-8(%rbp), %rax\00"}
!49 = metadata !{i64 132, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!50 = metadata !{i64 135, [21 x i8] c"\09movb\09%al, -17(%rbp)\00"}
!51 = metadata !{i64 185, [20 x i8] c"\09cmpb\09$0, -17(%rbp)\00"}
!52 = metadata !{i64 189, [9 x i8] c"\09jne\09-51\00"}
!53 = metadata !{i64 140, [21 x i8] c"\09cmpb\09$47, -17(%rbp)\00"}
!54 = metadata !{i64 144, [7 x i8] c"\09jne\099\00"}
!55 = metadata !{i64 155, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!56 = metadata !{i64 192, [11 x i8] c"\09popq\09%rbp\00"}
!57 = metadata !{i64 193, [6 x i8] c"\09retq\00"}
!58 = metadata !{i64 159, [24 x i8] c"\09movzbl\09-17(%rbp), %edx\00"}
!59 = metadata !{i64 163, [18 x i8] c"\09movb\09%dl, (%rax)\00"}
!60 = metadata !{i64 175, [21 x i8] c"\09movq\09-8(%rbp), %rax\00"}
!61 = metadata !{i64 179, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!62 = metadata !{i64 182, [21 x i8] c"\09movb\09%al, -17(%rbp)\00"}
!63 = metadata !{i64 150, [18 x i8] c"\09movb\09$92, (%rax)\00"}
!64 = metadata !{i64 7, [12 x i8] c"\09pushq\09%rbp\00"}
!65 = metadata !{i64 8, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!66 = metadata !{i64 11, [16 x i8] c"\09subq\09$32, %rsp\00"}
!67 = metadata !{i64 15, [22 x i8] c"\09movq\09%rdi, -24(%rbp)\00"}
!68 = metadata !{i64 19, [19 x i8] c"\09movl\09$1, -4(%rbp)\00"}
!69 = metadata !{i64 26, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!70 = metadata !{i64 30, [17 x i8] c"\09movq\09%rax, %rdi\00"}
!71 = metadata !{i64 33, [9 x i8] c"\09callq\090\00"}
!72 = metadata !{i64 38, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!73 = metadata !{i64 41, [19 x i8] c"\09cmpl\09$1, -8(%rbp)\00"} ; [ DW_TAG_file_type ] [/]
!74 = metadata !{i64 45, [8 x i8] c"\09jle\0948\00"}
!75 = metadata !{i64 95, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!76 = metadata !{i64 98, [7 x i8] c"\09leave\00"}
!77 = metadata !{i64 99, [6 x i8] c"\09retq\00"}
!78 = metadata !{i64 47, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!79 = metadata !{i64 51, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!80 = metadata !{i64 54, [20 x i8] c"\09movb\09%al, -9(%rbp)\00"}
!81 = metadata !{i64 57, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!82 = metadata !{i64 60, [6 x i8] c"\09cltq\00"}
!83 = metadata !{i64 62, [21 x i8] c"\09leaq\09-1(%rax), %rdx\00"}
!84 = metadata !{i64 66, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!85 = metadata !{i64 70, [17 x i8] c"\09addq\09%rdx, %rax\00"}
!86 = metadata !{i64 73, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!87 = metadata !{i64 76, [21 x i8] c"\09movb\09%al, -10(%rbp)\00"}
!88 = metadata !{i64 79, [23 x i8] c"\09movzbl\09-9(%rbp), %eax\00"}
!89 = metadata !{i64 83, [21 x i8] c"\09cmpb\09-10(%rbp), %al\00"}
!90 = metadata !{i64 86, [7 x i8] c"\09jne\097\00"}
!91 = metadata !{i64 88, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
