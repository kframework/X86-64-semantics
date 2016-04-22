; ModuleID = 'test_12.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_7(%struct.regs*) {
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
  %81 = add i64 %78, -40
  %82 = xor i64 %81, %79, !mcsema_real_eip !4
  %83 = and i64 %82, 16, !mcsema_real_eip !4
  %84 = icmp ne i64 %83, 0, !mcsema_real_eip !4
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
  %91 = icmp ult i64 %79, 32, !mcsema_real_eip !4
  store i1 %91, i1* %CF_val, !mcsema_real_eip !4
  %92 = and i64 %82, %79, !mcsema_real_eip !4
  %93 = icmp slt i64 %92, 0
  store i1 %93, i1* %OF_val, !mcsema_real_eip !4
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !4
  %94 = load i64* %RBP_val, !mcsema_real_eip !5
  %95 = add i64 %94, -24, !mcsema_real_eip !5
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !5
  %97 = load i64* %RDI_val, !mcsema_real_eip !5
  store i64 %97, i64* %96, !mcsema_real_eip !5
  %98 = load i64* %RBP_val, !mcsema_real_eip !6
  %99 = add i64 %98, -24, !mcsema_real_eip !6
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !6
  %101 = load i64* %100, !mcsema_real_eip !6
  store i64 0, i64* %RSI_val, !mcsema_real_eip !7
  store i64 %101, i64* %RDI_val, !mcsema_real_eip !8
  %102 = tail call x86_64_sysvcc i64 @open(i64 %101, i64 0), !mcsema_real_eip !9
  store i64 %102, i64* %RAX_val, !mcsema_real_eip !9
  %103 = load i64* %RBP_val, !mcsema_real_eip !10
  %104 = add i64 %103, -4, !mcsema_real_eip !10
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !10
  %106 = trunc i64 %102 to i32, !mcsema_real_eip !10
  %107 = bitcast i64* %105 to i32*
  store i32 %106, i32* %107, !mcsema_real_eip !10
  %108 = load i64* %RBP_val, !mcsema_real_eip !11
  %109 = add i64 %108, -4, !mcsema_real_eip !11
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !11
  %111 = bitcast i64* %110 to i32*
  %112 = load i32* %111, !mcsema_real_eip !11
  %113 = add i32 %112, 1
  %114 = xor i32 %113, %112, !mcsema_real_eip !11
  %115 = and i32 %114, 16
  %116 = icmp eq i32 %115, 0
  store i1 %116, i1* %AF_val, !mcsema_real_eip !11
  %117 = trunc i32 %113 to i8, !mcsema_real_eip !11
  %118 = tail call i8 @llvm.ctpop.i8(i8 %117), !mcsema_real_eip !11
  %119 = and i8 %118, 1
  %120 = icmp eq i8 %119, 0
  store i1 %120, i1* %PF_val, !mcsema_real_eip !11
  %121 = icmp eq i32 %113, 0, !mcsema_real_eip !11
  store i1 %121, i1* %ZF_val, !mcsema_real_eip !11
  %122 = icmp slt i32 %113, 0
  store i1 %122, i1* %SF_val, !mcsema_real_eip !11
  %123 = icmp ne i32 %112, -1
  store i1 %123, i1* %CF_val, !mcsema_real_eip !11
  %124 = xor i32 %112, -2147483648, !mcsema_real_eip !11
  %125 = and i32 %114, %124, !mcsema_real_eip !11
  %126 = icmp slt i32 %125, 0
  store i1 %126, i1* %OF_val, !mcsema_real_eip !11
  %127 = load i1* %ZF_val, !mcsema_real_eip !12
  br i1 %127, label %block_0x43, label %block_0x32, !mcsema_real_eip !12

block_0x43:                                       ; preds = %entry
  store i64 4294967295, i64* %RAX_val, !mcsema_real_eip !13
  %128 = load i64* %RBP_val, !mcsema_real_eip !14
  store i64 %128, i64* %RSP_val, !mcsema_real_eip !14
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !14
  %130 = load i64* %129, !mcsema_real_eip !14
  store i64 %130, i64* %RBP_val, !mcsema_real_eip !14
  %131 = add i64 %128, 16, !mcsema_real_eip !15
  store i64 %131, i64* %RSP_val, !mcsema_real_eip !15
  %132 = load i64* %RAX_val, !mcsema_real_eip !15
  store i64 %132, i64* %RAX, !mcsema_real_eip !15
  %133 = load i64* %RBX_val, !mcsema_real_eip !15
  store i64 %133, i64* %RBX, !mcsema_real_eip !15
  %134 = load i64* %RCX_val, !mcsema_real_eip !15
  store i64 %134, i64* %RCX, !mcsema_real_eip !15
  %135 = load i64* %RDX_val, !mcsema_real_eip !15
  store i64 %135, i64* %RDX, !mcsema_real_eip !15
  %136 = load i64* %RSI_val, !mcsema_real_eip !15
  store i64 %136, i64* %RSI, !mcsema_real_eip !15
  %137 = load i64* %RDI_val, !mcsema_real_eip !15
  store i64 %137, i64* %RDI, !mcsema_real_eip !15
  %138 = load i64* %RSP_val, !mcsema_real_eip !15
  store i64 %138, i64* %RSP, !mcsema_real_eip !15
  %139 = load i64* %RBP_val, !mcsema_real_eip !15
  store i64 %139, i64* %RBP, !mcsema_real_eip !15
  %140 = load i64* %R8_val, !mcsema_real_eip !15
  store i64 %140, i64* %R8, !mcsema_real_eip !15
  %141 = load i64* %R9_val, !mcsema_real_eip !15
  store i64 %141, i64* %R9, !mcsema_real_eip !15
  %142 = load i64* %R10_val, !mcsema_real_eip !15
  store i64 %142, i64* %R10, !mcsema_real_eip !15
  %143 = load i64* %R11_val, !mcsema_real_eip !15
  store i64 %143, i64* %R11, !mcsema_real_eip !15
  %144 = load i64* %R12_val, !mcsema_real_eip !15
  store i64 %144, i64* %R12, !mcsema_real_eip !15
  %145 = load i64* %R13_val, !mcsema_real_eip !15
  store i64 %145, i64* %R13, !mcsema_real_eip !15
  %146 = load i64* %R14_val, !mcsema_real_eip !15
  store i64 %146, i64* %R14, !mcsema_real_eip !15
  %147 = load i64* %R15_val, !mcsema_real_eip !15
  store i64 %147, i64* %R15, !mcsema_real_eip !15
  %148 = load i64* %RIP_val, !mcsema_real_eip !15
  store i64 %148, i64* %RIP, !mcsema_real_eip !15
  %149 = load i1* %CF_val, !mcsema_real_eip !15
  store i1 %149, i1* %CF, align 1, !mcsema_real_eip !15
  %150 = load i1* %PF_val, !mcsema_real_eip !15
  store i1 %150, i1* %PF, align 1, !mcsema_real_eip !15
  %151 = load i1* %AF_val, !mcsema_real_eip !15
  store i1 %151, i1* %AF, align 1, !mcsema_real_eip !15
  %152 = load i1* %ZF_val, !mcsema_real_eip !15
  store i1 %152, i1* %ZF, align 1, !mcsema_real_eip !15
  %153 = load i1* %SF_val, !mcsema_real_eip !15
  store i1 %153, i1* %SF, align 1, !mcsema_real_eip !15
  %154 = load i1* %OF_val, !mcsema_real_eip !15
  store i1 %154, i1* %OF, align 1, !mcsema_real_eip !15
  %155 = load i1* %DF_val, !mcsema_real_eip !15
  store i1 %155, i1* %DF, align 1, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !15
  %156 = load i1* %FPU_B_val, !mcsema_real_eip !15
  store i1 %156, i1* %FPU_B, align 1, !mcsema_real_eip !15
  %157 = load i1* %FPU_C3_val, !mcsema_real_eip !15
  store i1 %157, i1* %FPU_C3, align 1, !mcsema_real_eip !15
  %158 = load i3* %FPU_TOP_val, !mcsema_real_eip !15
  store i3 %158, i3* %FPU_TOP, align 1, !mcsema_real_eip !15
  %159 = load i1* %FPU_C2_val, !mcsema_real_eip !15
  store i1 %159, i1* %FPU_C2, align 1, !mcsema_real_eip !15
  %160 = load i1* %FPU_C1_val, !mcsema_real_eip !15
  store i1 %160, i1* %FPU_C1, align 1, !mcsema_real_eip !15
  %161 = load i1* %FPU_C0_val, !mcsema_real_eip !15
  store i1 %161, i1* %FPU_C0, align 1, !mcsema_real_eip !15
  %162 = load i1* %FPU_ES_val, !mcsema_real_eip !15
  store i1 %162, i1* %FPU_ES, align 1, !mcsema_real_eip !15
  %163 = load i1* %FPU_SF_val, !mcsema_real_eip !15
  store i1 %163, i1* %FPU_SF, align 1, !mcsema_real_eip !15
  %164 = load i1* %FPU_PE_val, !mcsema_real_eip !15
  store i1 %164, i1* %FPU_PE, align 1, !mcsema_real_eip !15
  %165 = load i1* %FPU_UE_val, !mcsema_real_eip !15
  store i1 %165, i1* %FPU_UE, align 1, !mcsema_real_eip !15
  %166 = load i1* %FPU_OE_val, !mcsema_real_eip !15
  store i1 %166, i1* %FPU_OE, align 1, !mcsema_real_eip !15
  %167 = load i1* %FPU_ZE_val, !mcsema_real_eip !15
  store i1 %167, i1* %FPU_ZE, align 1, !mcsema_real_eip !15
  %168 = load i1* %FPU_DE_val, !mcsema_real_eip !15
  store i1 %168, i1* %FPU_DE, align 1, !mcsema_real_eip !15
  %169 = load i1* %FPU_IE_val, !mcsema_real_eip !15
  store i1 %169, i1* %FPU_IE, align 1, !mcsema_real_eip !15
  %170 = load i1* %FPU_X_val, !mcsema_real_eip !15
  store i1 %170, i1* %FPU_X, align 1, !mcsema_real_eip !15
  %171 = load i2* %FPU_RC_val, !mcsema_real_eip !15
  store i2 %171, i2* %FPU_RC, align 1, !mcsema_real_eip !15
  %172 = load i2* %FPU_PC_val, !mcsema_real_eip !15
  store i2 %172, i2* %FPU_PC, align 1, !mcsema_real_eip !15
  %173 = load i1* %FPU_PM_val, !mcsema_real_eip !15
  store i1 %173, i1* %FPU_PM, align 1, !mcsema_real_eip !15
  %174 = load i1* %FPU_UM_val, !mcsema_real_eip !15
  store i1 %174, i1* %FPU_UM, align 1, !mcsema_real_eip !15
  %175 = load i1* %FPU_OM_val, !mcsema_real_eip !15
  store i1 %175, i1* %FPU_OM, align 1, !mcsema_real_eip !15
  %176 = load i1* %FPU_ZM_val, !mcsema_real_eip !15
  store i1 %176, i1* %FPU_ZM, align 1, !mcsema_real_eip !15
  %177 = load i1* %FPU_DM_val, !mcsema_real_eip !15
  store i1 %177, i1* %FPU_DM, align 1, !mcsema_real_eip !15
  %178 = load i1* %FPU_IM_val, !mcsema_real_eip !15
  store i1 %178, i1* %FPU_IM, align 1, !mcsema_real_eip !15
  %179 = load i64* %53, align 4
  store i64 %179, i64* %52, align 4
  %180 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !15
  store i16 %180, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !15
  %181 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !15
  store i64 %181, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !15
  %182 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !15
  store i16 %182, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !15
  %183 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !15
  store i64 %183, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !15
  %184 = load i128* %XMM0_val, !mcsema_real_eip !15
  store i128 %184, i128* %XMM0, align 1, !mcsema_real_eip !15
  %185 = load i128* %XMM1_val, !mcsema_real_eip !15
  store i128 %185, i128* %XMM1, align 1, !mcsema_real_eip !15
  %186 = load i128* %XMM2_val, !mcsema_real_eip !15
  store i128 %186, i128* %XMM2, align 1, !mcsema_real_eip !15
  %187 = load i128* %XMM3_val, !mcsema_real_eip !15
  store i128 %187, i128* %XMM3, align 1, !mcsema_real_eip !15
  %188 = load i128* %XMM4_val, !mcsema_real_eip !15
  store i128 %188, i128* %XMM4, align 1, !mcsema_real_eip !15
  %189 = load i128* %XMM5_val, !mcsema_real_eip !15
  store i128 %189, i128* %XMM5, align 1, !mcsema_real_eip !15
  %190 = load i128* %XMM6_val, !mcsema_real_eip !15
  store i128 %190, i128* %XMM6, align 1, !mcsema_real_eip !15
  %191 = load i128* %XMM7_val, !mcsema_real_eip !15
  store i128 %191, i128* %XMM7, align 1, !mcsema_real_eip !15
  %192 = load i128* %XMM8_val, !mcsema_real_eip !15
  store i128 %192, i128* %XMM8, align 1, !mcsema_real_eip !15
  %193 = load i128* %XMM9_val, !mcsema_real_eip !15
  store i128 %193, i128* %XMM9, align 1, !mcsema_real_eip !15
  %194 = load i128* %XMM10_val, !mcsema_real_eip !15
  store i128 %194, i128* %XMM10, align 1, !mcsema_real_eip !15
  %195 = load i128* %XMM11_val, !mcsema_real_eip !15
  store i128 %195, i128* %XMM11, align 1, !mcsema_real_eip !15
  %196 = load i128* %XMM12_val, !mcsema_real_eip !15
  store i128 %196, i128* %XMM12, align 1, !mcsema_real_eip !15
  %197 = load i128* %XMM13_val, !mcsema_real_eip !15
  store i128 %197, i128* %XMM13, align 1, !mcsema_real_eip !15
  %198 = load i128* %XMM14_val, !mcsema_real_eip !15
  store i128 %198, i128* %XMM14, align 1, !mcsema_real_eip !15
  %199 = load i128* %XMM15_val, !mcsema_real_eip !15
  store i128 %199, i128* %XMM15, align 1, !mcsema_real_eip !15
  %200 = load i64* %STACK_BASE_val, !mcsema_real_eip !15
  store i64 %200, i64* %STACK_BASE, align 1, !mcsema_real_eip !15
  %201 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !15
  store i64 %201, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !15
  ret void, !mcsema_real_eip !15

block_0x32:                                       ; preds = %entry
  %202 = load i64* %RBP_val, !mcsema_real_eip !16
  %203 = add i64 %202, -4, !mcsema_real_eip !16
  %204 = inttoptr i64 %203 to i64*, !mcsema_real_eip !16
  %205 = bitcast i64* %204 to i32*
  %206 = load i32* %205, !mcsema_real_eip !16
  %207 = zext i32 %206 to i64, !mcsema_real_eip !16
  store i64 %207, i64* %RDI_val, !mcsema_real_eip !17
  %208 = tail call x86_64_sysvcc i64 @close(i64 %207), !mcsema_real_eip !18
  store i64 0, i64* %RAX_val, !mcsema_real_eip !19
  %209 = load i64* %RBP_val, !mcsema_real_eip !14
  store i64 %209, i64* %RSP_val, !mcsema_real_eip !14
  %210 = inttoptr i64 %209 to i64*, !mcsema_real_eip !14
  %211 = load i64* %210, !mcsema_real_eip !14
  store i64 %211, i64* %RBP_val, !mcsema_real_eip !14
  %212 = add i64 %209, 16, !mcsema_real_eip !15
  store i64 %212, i64* %RSP_val, !mcsema_real_eip !15
  %213 = load i64* %RAX_val, !mcsema_real_eip !15
  store i64 %213, i64* %RAX, !mcsema_real_eip !15
  %214 = load i64* %RBX_val, !mcsema_real_eip !15
  store i64 %214, i64* %RBX, !mcsema_real_eip !15
  %215 = load i64* %RCX_val, !mcsema_real_eip !15
  store i64 %215, i64* %RCX, !mcsema_real_eip !15
  %216 = load i64* %RDX_val, !mcsema_real_eip !15
  store i64 %216, i64* %RDX, !mcsema_real_eip !15
  %217 = load i64* %RSI_val, !mcsema_real_eip !15
  store i64 %217, i64* %RSI, !mcsema_real_eip !15
  %218 = load i64* %RDI_val, !mcsema_real_eip !15
  store i64 %218, i64* %RDI, !mcsema_real_eip !15
  %219 = load i64* %RSP_val, !mcsema_real_eip !15
  store i64 %219, i64* %RSP, !mcsema_real_eip !15
  %220 = load i64* %RBP_val, !mcsema_real_eip !15
  store i64 %220, i64* %RBP, !mcsema_real_eip !15
  %221 = load i64* %R8_val, !mcsema_real_eip !15
  store i64 %221, i64* %R8, !mcsema_real_eip !15
  %222 = load i64* %R9_val, !mcsema_real_eip !15
  store i64 %222, i64* %R9, !mcsema_real_eip !15
  %223 = load i64* %R10_val, !mcsema_real_eip !15
  store i64 %223, i64* %R10, !mcsema_real_eip !15
  %224 = load i64* %R11_val, !mcsema_real_eip !15
  store i64 %224, i64* %R11, !mcsema_real_eip !15
  %225 = load i64* %R12_val, !mcsema_real_eip !15
  store i64 %225, i64* %R12, !mcsema_real_eip !15
  %226 = load i64* %R13_val, !mcsema_real_eip !15
  store i64 %226, i64* %R13, !mcsema_real_eip !15
  %227 = load i64* %R14_val, !mcsema_real_eip !15
  store i64 %227, i64* %R14, !mcsema_real_eip !15
  %228 = load i64* %R15_val, !mcsema_real_eip !15
  store i64 %228, i64* %R15, !mcsema_real_eip !15
  %229 = load i64* %RIP_val, !mcsema_real_eip !15
  store i64 %229, i64* %RIP, !mcsema_real_eip !15
  %230 = load i1* %CF_val, !mcsema_real_eip !15
  store i1 %230, i1* %CF, align 1, !mcsema_real_eip !15
  %231 = load i1* %PF_val, !mcsema_real_eip !15
  store i1 %231, i1* %PF, align 1, !mcsema_real_eip !15
  %232 = load i1* %AF_val, !mcsema_real_eip !15
  store i1 %232, i1* %AF, align 1, !mcsema_real_eip !15
  %233 = load i1* %ZF_val, !mcsema_real_eip !15
  store i1 %233, i1* %ZF, align 1, !mcsema_real_eip !15
  %234 = load i1* %SF_val, !mcsema_real_eip !15
  store i1 %234, i1* %SF, align 1, !mcsema_real_eip !15
  %235 = load i1* %OF_val, !mcsema_real_eip !15
  store i1 %235, i1* %OF, align 1, !mcsema_real_eip !15
  %236 = load i1* %DF_val, !mcsema_real_eip !15
  store i1 %236, i1* %DF, align 1, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !15
  %237 = load i1* %FPU_B_val, !mcsema_real_eip !15
  store i1 %237, i1* %FPU_B, align 1, !mcsema_real_eip !15
  %238 = load i1* %FPU_C3_val, !mcsema_real_eip !15
  store i1 %238, i1* %FPU_C3, align 1, !mcsema_real_eip !15
  %239 = load i3* %FPU_TOP_val, !mcsema_real_eip !15
  store i3 %239, i3* %FPU_TOP, align 1, !mcsema_real_eip !15
  %240 = load i1* %FPU_C2_val, !mcsema_real_eip !15
  store i1 %240, i1* %FPU_C2, align 1, !mcsema_real_eip !15
  %241 = load i1* %FPU_C1_val, !mcsema_real_eip !15
  store i1 %241, i1* %FPU_C1, align 1, !mcsema_real_eip !15
  %242 = load i1* %FPU_C0_val, !mcsema_real_eip !15
  store i1 %242, i1* %FPU_C0, align 1, !mcsema_real_eip !15
  %243 = load i1* %FPU_ES_val, !mcsema_real_eip !15
  store i1 %243, i1* %FPU_ES, align 1, !mcsema_real_eip !15
  %244 = load i1* %FPU_SF_val, !mcsema_real_eip !15
  store i1 %244, i1* %FPU_SF, align 1, !mcsema_real_eip !15
  %245 = load i1* %FPU_PE_val, !mcsema_real_eip !15
  store i1 %245, i1* %FPU_PE, align 1, !mcsema_real_eip !15
  %246 = load i1* %FPU_UE_val, !mcsema_real_eip !15
  store i1 %246, i1* %FPU_UE, align 1, !mcsema_real_eip !15
  %247 = load i1* %FPU_OE_val, !mcsema_real_eip !15
  store i1 %247, i1* %FPU_OE, align 1, !mcsema_real_eip !15
  %248 = load i1* %FPU_ZE_val, !mcsema_real_eip !15
  store i1 %248, i1* %FPU_ZE, align 1, !mcsema_real_eip !15
  %249 = load i1* %FPU_DE_val, !mcsema_real_eip !15
  store i1 %249, i1* %FPU_DE, align 1, !mcsema_real_eip !15
  %250 = load i1* %FPU_IE_val, !mcsema_real_eip !15
  store i1 %250, i1* %FPU_IE, align 1, !mcsema_real_eip !15
  %251 = load i1* %FPU_X_val, !mcsema_real_eip !15
  store i1 %251, i1* %FPU_X, align 1, !mcsema_real_eip !15
  %252 = load i2* %FPU_RC_val, !mcsema_real_eip !15
  store i2 %252, i2* %FPU_RC, align 1, !mcsema_real_eip !15
  %253 = load i2* %FPU_PC_val, !mcsema_real_eip !15
  store i2 %253, i2* %FPU_PC, align 1, !mcsema_real_eip !15
  %254 = load i1* %FPU_PM_val, !mcsema_real_eip !15
  store i1 %254, i1* %FPU_PM, align 1, !mcsema_real_eip !15
  %255 = load i1* %FPU_UM_val, !mcsema_real_eip !15
  store i1 %255, i1* %FPU_UM, align 1, !mcsema_real_eip !15
  %256 = load i1* %FPU_OM_val, !mcsema_real_eip !15
  store i1 %256, i1* %FPU_OM, align 1, !mcsema_real_eip !15
  %257 = load i1* %FPU_ZM_val, !mcsema_real_eip !15
  store i1 %257, i1* %FPU_ZM, align 1, !mcsema_real_eip !15
  %258 = load i1* %FPU_DM_val, !mcsema_real_eip !15
  store i1 %258, i1* %FPU_DM, align 1, !mcsema_real_eip !15
  %259 = load i1* %FPU_IM_val, !mcsema_real_eip !15
  store i1 %259, i1* %FPU_IM, align 1, !mcsema_real_eip !15
  %260 = load i64* %53, align 4
  store i64 %260, i64* %52, align 4
  %261 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !15
  store i16 %261, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !15
  %262 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !15
  store i64 %262, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !15
  %263 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !15
  store i16 %263, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !15
  %264 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !15
  store i64 %264, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !15
  %265 = load i128* %XMM0_val, !mcsema_real_eip !15
  store i128 %265, i128* %XMM0, align 1, !mcsema_real_eip !15
  %266 = load i128* %XMM1_val, !mcsema_real_eip !15
  store i128 %266, i128* %XMM1, align 1, !mcsema_real_eip !15
  %267 = load i128* %XMM2_val, !mcsema_real_eip !15
  store i128 %267, i128* %XMM2, align 1, !mcsema_real_eip !15
  %268 = load i128* %XMM3_val, !mcsema_real_eip !15
  store i128 %268, i128* %XMM3, align 1, !mcsema_real_eip !15
  %269 = load i128* %XMM4_val, !mcsema_real_eip !15
  store i128 %269, i128* %XMM4, align 1, !mcsema_real_eip !15
  %270 = load i128* %XMM5_val, !mcsema_real_eip !15
  store i128 %270, i128* %XMM5, align 1, !mcsema_real_eip !15
  %271 = load i128* %XMM6_val, !mcsema_real_eip !15
  store i128 %271, i128* %XMM6, align 1, !mcsema_real_eip !15
  %272 = load i128* %XMM7_val, !mcsema_real_eip !15
  store i128 %272, i128* %XMM7, align 1, !mcsema_real_eip !15
  %273 = load i128* %XMM8_val, !mcsema_real_eip !15
  store i128 %273, i128* %XMM8, align 1, !mcsema_real_eip !15
  %274 = load i128* %XMM9_val, !mcsema_real_eip !15
  store i128 %274, i128* %XMM9, align 1, !mcsema_real_eip !15
  %275 = load i128* %XMM10_val, !mcsema_real_eip !15
  store i128 %275, i128* %XMM10, align 1, !mcsema_real_eip !15
  %276 = load i128* %XMM11_val, !mcsema_real_eip !15
  store i128 %276, i128* %XMM11, align 1, !mcsema_real_eip !15
  %277 = load i128* %XMM12_val, !mcsema_real_eip !15
  store i128 %277, i128* %XMM12, align 1, !mcsema_real_eip !15
  %278 = load i128* %XMM13_val, !mcsema_real_eip !15
  store i128 %278, i128* %XMM13, align 1, !mcsema_real_eip !15
  %279 = load i128* %XMM14_val, !mcsema_real_eip !15
  store i128 %279, i128* %XMM14, align 1, !mcsema_real_eip !15
  %280 = load i128* %XMM15_val, !mcsema_real_eip !15
  store i128 %280, i128* %XMM15, align 1, !mcsema_real_eip !15
  %281 = load i64* %STACK_BASE_val, !mcsema_real_eip !15
  store i64 %281, i64* %STACK_BASE, align 1, !mcsema_real_eip !15
  %282 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !15
  store i64 %282, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !15
  ret void, !mcsema_real_eip !15
}

declare x86_64_sysvcc i64 @open(i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @close(i64 inreg)

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_7(%struct.regs* %0)
  ret void
}

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 7, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 8, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = metadata !{i64 11, [16 x i8] c"\09subq\09$32, %rsp\00"}
!5 = metadata !{i64 15, [22 x i8] c"\09movq\09%rdi, -24(%rbp)\00"}
!6 = metadata !{i64 19, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!7 = metadata !{i64 23, [15 x i8] c"\09movl\09$0, %esi\00"}
!8 = metadata !{i64 28, [17 x i8] c"\09movq\09%rax, %rdi\00"}
!9 = metadata !{i64 36, [9 x i8] c"\09callq\090\00"}
!10 = metadata !{i64 41, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"} ; [ DW_TAG_file_type ] [/]
!11 = metadata !{i64 44, [20 x i8] c"\09cmpl\09$-1, -4(%rbp)\00"}
!12 = metadata !{i64 48, [7 x i8] c"\09je\0917\00"}
!13 = metadata !{i64 67, [24 x i8] c"\09movl\09$4294967295, %eax\00"}
!14 = metadata !{i64 72, [7 x i8] c"\09leave\00"}
!15 = metadata !{i64 73, [6 x i8] c"\09retq\00"}
!16 = metadata !{i64 50, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!17 = metadata !{i64 53, [17 x i8] c"\09movl\09%eax, %edi\00"}
!18 = metadata !{i64 55, [9 x i8] c"\09callq\090\00"}
!19 = metadata !{i64 60, [15 x i8] c"\09movl\09$0, %eax\00"}
