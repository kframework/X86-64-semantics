; ModuleID = 'test_11.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_f(%struct.regs*) {
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
  %99 = add i64 %98, -40, !mcsema_real_eip !6
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !6
  %101 = load i64* %100, !mcsema_real_eip !6
  store i64 %101, i64* %RDI_val, !mcsema_real_eip !7
  %102 = tail call x86_64_sysvcc i64 @strlen(i64 %101), !mcsema_real_eip !8
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %102, i64 1)
  %103 = extractvalue { i64, i1 } %uadd, 0
  %104 = xor i64 %103, %102, !mcsema_real_eip !9
  %105 = and i64 %104, 16, !mcsema_real_eip !9
  %106 = icmp ne i64 %105, 0, !mcsema_real_eip !9
  store i1 %106, i1* %AF_val, !mcsema_real_eip !9
  %107 = icmp slt i64 %103, 0
  store i1 %107, i1* %SF_val, !mcsema_real_eip !9
  %108 = icmp eq i64 %103, 0, !mcsema_real_eip !9
  store i1 %108, i1* %ZF_val, !mcsema_real_eip !9
  %109 = xor i64 %102, -9223372036854775808, !mcsema_real_eip !9
  %110 = and i64 %104, %109, !mcsema_real_eip !9
  %111 = icmp slt i64 %110, 0
  store i1 %111, i1* %OF_val, !mcsema_real_eip !9
  %112 = trunc i64 %103 to i8, !mcsema_real_eip !9
  %113 = tail call i8 @llvm.ctpop.i8(i8 %112), !mcsema_real_eip !9
  %114 = and i8 %113, 1
  %115 = icmp eq i8 %114, 0
  store i1 %115, i1* %PF_val, !mcsema_real_eip !9
  %116 = extractvalue { i64, i1 } %uadd, 1
  store i1 %116, i1* %CF_val, !mcsema_real_eip !9
  store i64 %103, i64* %RAX_val, !mcsema_real_eip !9
  %117 = load i64* %RBP_val, !mcsema_real_eip !10
  %118 = add i64 %117, -24, !mcsema_real_eip !10
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !10
  store i64 %103, i64* %119, !mcsema_real_eip !10
  %120 = load i64* %RBP_val, !mcsema_real_eip !11
  %121 = add i64 %120, -24, !mcsema_real_eip !11
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !11
  %123 = load i64* %122, !mcsema_real_eip !11
  store i64 %123, i64* %RDI_val, !mcsema_real_eip !12
  %124 = tail call x86_64_sysvcc i64 @malloc(i64 %123), !mcsema_real_eip !13
  store i64 %124, i64* %RAX_val, !mcsema_real_eip !13
  %125 = load i64* %RBP_val, !mcsema_real_eip !14
  %126 = add i64 %125, -32, !mcsema_real_eip !14
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !14
  store i64 %124, i64* %127, !mcsema_real_eip !14
  %128 = load i64* %RBP_val, !mcsema_real_eip !15
  %129 = add i64 %128, -32, !mcsema_real_eip !15
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !15
  %131 = load i64* %130, !mcsema_real_eip !15
  store i1 false, i1* %AF_val, !mcsema_real_eip !15
  %132 = trunc i64 %131 to i8, !mcsema_real_eip !15
  %133 = tail call i8 @llvm.ctpop.i8(i8 %132), !mcsema_real_eip !15
  %134 = and i8 %133, 1
  %135 = icmp eq i8 %134, 0
  store i1 %135, i1* %PF_val, !mcsema_real_eip !15
  %136 = icmp eq i64 %131, 0, !mcsema_real_eip !15
  store i1 %136, i1* %ZF_val, !mcsema_real_eip !15
  %137 = icmp slt i64 %131, 0
  store i1 %137, i1* %SF_val, !mcsema_real_eip !15
  store i1 false, i1* %CF_val, !mcsema_real_eip !15
  store i1 false, i1* %OF_val, !mcsema_real_eip !15
  br i1 %136, label %block_0xa9, label %block_0x46, !mcsema_real_eip !16

block_0xa9:                                       ; preds = %entry
  store i64 0, i64* %RAX_val, !mcsema_real_eip !17
  %138 = load i64* %RBP_val, !mcsema_real_eip !18
  store i64 %138, i64* %RSP_val, !mcsema_real_eip !18
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !18
  %140 = load i64* %139, !mcsema_real_eip !18
  store i64 %140, i64* %RBP_val, !mcsema_real_eip !18
  %141 = add i64 %138, 16, !mcsema_real_eip !19
  store i64 %141, i64* %RSP_val, !mcsema_real_eip !19
  %142 = load i64* %RAX_val, !mcsema_real_eip !19
  store i64 %142, i64* %RAX, !mcsema_real_eip !19
  %143 = load i64* %RBX_val, !mcsema_real_eip !19
  store i64 %143, i64* %RBX, !mcsema_real_eip !19
  %144 = load i64* %RCX_val, !mcsema_real_eip !19
  store i64 %144, i64* %RCX, !mcsema_real_eip !19
  %145 = load i64* %RDX_val, !mcsema_real_eip !19
  store i64 %145, i64* %RDX, !mcsema_real_eip !19
  %146 = load i64* %RSI_val, !mcsema_real_eip !19
  store i64 %146, i64* %RSI, !mcsema_real_eip !19
  %147 = load i64* %RDI_val, !mcsema_real_eip !19
  store i64 %147, i64* %RDI, !mcsema_real_eip !19
  %148 = load i64* %RSP_val, !mcsema_real_eip !19
  store i64 %148, i64* %RSP, !mcsema_real_eip !19
  %149 = load i64* %RBP_val, !mcsema_real_eip !19
  store i64 %149, i64* %RBP, !mcsema_real_eip !19
  %150 = load i64* %R8_val, !mcsema_real_eip !19
  store i64 %150, i64* %R8, !mcsema_real_eip !19
  %151 = load i64* %R9_val, !mcsema_real_eip !19
  store i64 %151, i64* %R9, !mcsema_real_eip !19
  %152 = load i64* %R10_val, !mcsema_real_eip !19
  store i64 %152, i64* %R10, !mcsema_real_eip !19
  %153 = load i64* %R11_val, !mcsema_real_eip !19
  store i64 %153, i64* %R11, !mcsema_real_eip !19
  %154 = load i64* %R12_val, !mcsema_real_eip !19
  store i64 %154, i64* %R12, !mcsema_real_eip !19
  %155 = load i64* %R13_val, !mcsema_real_eip !19
  store i64 %155, i64* %R13, !mcsema_real_eip !19
  %156 = load i64* %R14_val, !mcsema_real_eip !19
  store i64 %156, i64* %R14, !mcsema_real_eip !19
  %157 = load i64* %R15_val, !mcsema_real_eip !19
  store i64 %157, i64* %R15, !mcsema_real_eip !19
  %158 = load i64* %RIP_val, !mcsema_real_eip !19
  store i64 %158, i64* %RIP, !mcsema_real_eip !19
  %159 = load i1* %CF_val, !mcsema_real_eip !19
  store i1 %159, i1* %CF, align 1, !mcsema_real_eip !19
  %160 = load i1* %PF_val, !mcsema_real_eip !19
  store i1 %160, i1* %PF, align 1, !mcsema_real_eip !19
  %161 = load i1* %AF_val, !mcsema_real_eip !19
  store i1 %161, i1* %AF, align 1, !mcsema_real_eip !19
  %162 = load i1* %ZF_val, !mcsema_real_eip !19
  store i1 %162, i1* %ZF, align 1, !mcsema_real_eip !19
  %163 = load i1* %SF_val, !mcsema_real_eip !19
  store i1 %163, i1* %SF, align 1, !mcsema_real_eip !19
  %164 = load i1* %OF_val, !mcsema_real_eip !19
  store i1 %164, i1* %OF, align 1, !mcsema_real_eip !19
  %165 = load i1* %DF_val, !mcsema_real_eip !19
  store i1 %165, i1* %DF, align 1, !mcsema_real_eip !19
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !19
  %166 = load i1* %FPU_B_val, !mcsema_real_eip !19
  store i1 %166, i1* %FPU_B, align 1, !mcsema_real_eip !19
  %167 = load i1* %FPU_C3_val, !mcsema_real_eip !19
  store i1 %167, i1* %FPU_C3, align 1, !mcsema_real_eip !19
  %168 = load i3* %FPU_TOP_val, !mcsema_real_eip !19
  store i3 %168, i3* %FPU_TOP, align 1, !mcsema_real_eip !19
  %169 = load i1* %FPU_C2_val, !mcsema_real_eip !19
  store i1 %169, i1* %FPU_C2, align 1, !mcsema_real_eip !19
  %170 = load i1* %FPU_C1_val, !mcsema_real_eip !19
  store i1 %170, i1* %FPU_C1, align 1, !mcsema_real_eip !19
  %171 = load i1* %FPU_C0_val, !mcsema_real_eip !19
  store i1 %171, i1* %FPU_C0, align 1, !mcsema_real_eip !19
  %172 = load i1* %FPU_ES_val, !mcsema_real_eip !19
  store i1 %172, i1* %FPU_ES, align 1, !mcsema_real_eip !19
  %173 = load i1* %FPU_SF_val, !mcsema_real_eip !19
  store i1 %173, i1* %FPU_SF, align 1, !mcsema_real_eip !19
  %174 = load i1* %FPU_PE_val, !mcsema_real_eip !19
  store i1 %174, i1* %FPU_PE, align 1, !mcsema_real_eip !19
  %175 = load i1* %FPU_UE_val, !mcsema_real_eip !19
  store i1 %175, i1* %FPU_UE, align 1, !mcsema_real_eip !19
  %176 = load i1* %FPU_OE_val, !mcsema_real_eip !19
  store i1 %176, i1* %FPU_OE, align 1, !mcsema_real_eip !19
  %177 = load i1* %FPU_ZE_val, !mcsema_real_eip !19
  store i1 %177, i1* %FPU_ZE, align 1, !mcsema_real_eip !19
  %178 = load i1* %FPU_DE_val, !mcsema_real_eip !19
  store i1 %178, i1* %FPU_DE, align 1, !mcsema_real_eip !19
  %179 = load i1* %FPU_IE_val, !mcsema_real_eip !19
  store i1 %179, i1* %FPU_IE, align 1, !mcsema_real_eip !19
  %180 = load i1* %FPU_X_val, !mcsema_real_eip !19
  store i1 %180, i1* %FPU_X, align 1, !mcsema_real_eip !19
  %181 = load i2* %FPU_RC_val, !mcsema_real_eip !19
  store i2 %181, i2* %FPU_RC, align 1, !mcsema_real_eip !19
  %182 = load i2* %FPU_PC_val, !mcsema_real_eip !19
  store i2 %182, i2* %FPU_PC, align 1, !mcsema_real_eip !19
  %183 = load i1* %FPU_PM_val, !mcsema_real_eip !19
  store i1 %183, i1* %FPU_PM, align 1, !mcsema_real_eip !19
  %184 = load i1* %FPU_UM_val, !mcsema_real_eip !19
  store i1 %184, i1* %FPU_UM, align 1, !mcsema_real_eip !19
  %185 = load i1* %FPU_OM_val, !mcsema_real_eip !19
  store i1 %185, i1* %FPU_OM, align 1, !mcsema_real_eip !19
  %186 = load i1* %FPU_ZM_val, !mcsema_real_eip !19
  store i1 %186, i1* %FPU_ZM, align 1, !mcsema_real_eip !19
  %187 = load i1* %FPU_DM_val, !mcsema_real_eip !19
  store i1 %187, i1* %FPU_DM, align 1, !mcsema_real_eip !19
  %188 = load i1* %FPU_IM_val, !mcsema_real_eip !19
  store i1 %188, i1* %FPU_IM, align 1, !mcsema_real_eip !19
  %189 = load i64* %53, align 4
  store i64 %189, i64* %52, align 4
  %190 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !19
  store i16 %190, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !19
  %191 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !19
  store i64 %191, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !19
  %192 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !19
  store i16 %192, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !19
  %193 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !19
  store i64 %193, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !19
  %194 = load i128* %XMM0_val, !mcsema_real_eip !19
  store i128 %194, i128* %XMM0, align 1, !mcsema_real_eip !19
  %195 = load i128* %XMM1_val, !mcsema_real_eip !19
  store i128 %195, i128* %XMM1, align 1, !mcsema_real_eip !19
  %196 = load i128* %XMM2_val, !mcsema_real_eip !19
  store i128 %196, i128* %XMM2, align 1, !mcsema_real_eip !19
  %197 = load i128* %XMM3_val, !mcsema_real_eip !19
  store i128 %197, i128* %XMM3, align 1, !mcsema_real_eip !19
  %198 = load i128* %XMM4_val, !mcsema_real_eip !19
  store i128 %198, i128* %XMM4, align 1, !mcsema_real_eip !19
  %199 = load i128* %XMM5_val, !mcsema_real_eip !19
  store i128 %199, i128* %XMM5, align 1, !mcsema_real_eip !19
  %200 = load i128* %XMM6_val, !mcsema_real_eip !19
  store i128 %200, i128* %XMM6, align 1, !mcsema_real_eip !19
  %201 = load i128* %XMM7_val, !mcsema_real_eip !19
  store i128 %201, i128* %XMM7, align 1, !mcsema_real_eip !19
  %202 = load i128* %XMM8_val, !mcsema_real_eip !19
  store i128 %202, i128* %XMM8, align 1, !mcsema_real_eip !19
  %203 = load i128* %XMM9_val, !mcsema_real_eip !19
  store i128 %203, i128* %XMM9, align 1, !mcsema_real_eip !19
  %204 = load i128* %XMM10_val, !mcsema_real_eip !19
  store i128 %204, i128* %XMM10, align 1, !mcsema_real_eip !19
  %205 = load i128* %XMM11_val, !mcsema_real_eip !19
  store i128 %205, i128* %XMM11, align 1, !mcsema_real_eip !19
  %206 = load i128* %XMM12_val, !mcsema_real_eip !19
  store i128 %206, i128* %XMM12, align 1, !mcsema_real_eip !19
  %207 = load i128* %XMM13_val, !mcsema_real_eip !19
  store i128 %207, i128* %XMM13, align 1, !mcsema_real_eip !19
  %208 = load i128* %XMM14_val, !mcsema_real_eip !19
  store i128 %208, i128* %XMM14, align 1, !mcsema_real_eip !19
  %209 = load i128* %XMM15_val, !mcsema_real_eip !19
  store i128 %209, i128* %XMM15, align 1, !mcsema_real_eip !19
  %210 = load i64* %STACK_BASE_val, !mcsema_real_eip !19
  store i64 %210, i64* %STACK_BASE, align 1, !mcsema_real_eip !19
  %211 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !19
  store i64 %211, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !19
  ret void, !mcsema_real_eip !19

block_0x46:                                       ; preds = %entry
  %212 = load i64* %RBP_val, !mcsema_real_eip !20
  %213 = add i64 %212, -40, !mcsema_real_eip !20
  %214 = inttoptr i64 %213 to i64*, !mcsema_real_eip !20
  %215 = load i64* %214, !mcsema_real_eip !20
  store i64 %215, i64* %RAX_val, !mcsema_real_eip !20
  %216 = add i64 %212, -8, !mcsema_real_eip !21
  %217 = inttoptr i64 %216 to i64*, !mcsema_real_eip !21
  store i64 %215, i64* %217, !mcsema_real_eip !21
  %218 = load i64* %RBP_val, !mcsema_real_eip !22
  %219 = add i64 %218, -32, !mcsema_real_eip !22
  %220 = inttoptr i64 %219 to i64*, !mcsema_real_eip !22
  %221 = load i64* %220, !mcsema_real_eip !22
  store i64 %221, i64* %RAX_val, !mcsema_real_eip !22
  %222 = add i64 %218, -16, !mcsema_real_eip !23
  %223 = inttoptr i64 %222 to i64*, !mcsema_real_eip !23
  store i64 %221, i64* %223, !mcsema_real_eip !23
  %224 = load i64* %RBP_val, !mcsema_real_eip !24
  %225 = add i64 %224, -24, !mcsema_real_eip !24
  %226 = inttoptr i64 %225 to i64*, !mcsema_real_eip !24
  %227 = load i64* %226, !mcsema_real_eip !24
  store i64 %227, i64* %RDX_val, !mcsema_real_eip !24
  %228 = add i64 %224, -32, !mcsema_real_eip !25
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !25
  %230 = load i64* %229, !mcsema_real_eip !25
  store i64 0, i64* %RSI_val, !mcsema_real_eip !26
  store i64 %230, i64* %RDI_val, !mcsema_real_eip !27
  %231 = tail call x86_64_sysvcc i64 @memset(i64 %230, i64 0, i64 %227), !mcsema_real_eip !28
  store i64 %231, i64* %RAX_val, !mcsema_real_eip !28
  %232 = load i64* %RBP_val, !mcsema_real_eip !29
  %233 = add i64 %232, -8, !mcsema_real_eip !29
  %234 = inttoptr i64 %233 to i64*, !mcsema_real_eip !29
  %235 = load i64* %234, !mcsema_real_eip !29
  store i64 %235, i64* %RAX_val, !mcsema_real_eip !29
  %236 = inttoptr i64 %235 to i64*, !mcsema_real_eip !30
  %237 = bitcast i64* %236 to i8*
  %238 = load i8* %237, !mcsema_real_eip !30
  %239 = zext i8 %238 to i64
  store i64 %239, i64* %RAX_val, !mcsema_real_eip !30
  %240 = icmp eq i8 %238, 0, !mcsema_real_eip !31
  store i1 %240, i1* %ZF_val, !mcsema_real_eip !31
  %241 = icmp slt i8 %238, 0
  store i1 %241, i1* %SF_val, !mcsema_real_eip !31
  %242 = tail call i8 @llvm.ctpop.i8(i8 %238), !mcsema_real_eip !31
  %243 = and i8 %242, 1
  %244 = icmp eq i8 %243, 0
  store i1 %244, i1* %PF_val, !mcsema_real_eip !31
  store i1 false, i1* %CF_val, !mcsema_real_eip !31
  store i1 false, i1* %OF_val, !mcsema_real_eip !31
  %245 = load i1* %ZF_val, !mcsema_real_eip !32
  br i1 %245, label %block_0xa3, label %block_0x6d.preheader, !mcsema_real_eip !32

block_0x6d.preheader:                             ; preds = %block_0x46
  br label %block_0x6d

block_0x6d:                                       ; preds = %block_0x6d.backedge, %block_0x6d.preheader
  %246 = load i64* %RBP_val, !mcsema_real_eip !33
  %247 = add i64 %246, -8, !mcsema_real_eip !33
  %248 = inttoptr i64 %247 to i64*, !mcsema_real_eip !33
  %249 = load i64* %248, !mcsema_real_eip !33
  store i64 %249, i64* %RAX_val, !mcsema_real_eip !33
  %250 = inttoptr i64 %249 to i64*, !mcsema_real_eip !34
  %251 = bitcast i64* %250 to i8*
  %252 = load i8* %251, !mcsema_real_eip !34
  %253 = zext i8 %252 to i64
  store i64 %253, i64* %RAX_val, !mcsema_real_eip !34
  %254 = add i8 %252, -47
  %255 = xor i8 %254, %252, !mcsema_real_eip !35
  %256 = and i8 %255, 16, !mcsema_real_eip !35
  %257 = icmp ne i8 %256, 0, !mcsema_real_eip !35
  store i1 %257, i1* %AF_val, !mcsema_real_eip !35
  %258 = tail call i8 @llvm.ctpop.i8(i8 %254), !mcsema_real_eip !35
  %259 = and i8 %258, 1
  %260 = icmp eq i8 %259, 0
  store i1 %260, i1* %PF_val, !mcsema_real_eip !35
  %261 = icmp eq i8 %254, 0, !mcsema_real_eip !35
  store i1 %261, i1* %ZF_val, !mcsema_real_eip !35
  %262 = icmp slt i8 %254, 0
  store i1 %262, i1* %SF_val, !mcsema_real_eip !35
  %263 = icmp ult i8 %252, 47, !mcsema_real_eip !35
  store i1 %263, i1* %CF_val, !mcsema_real_eip !35
  %264 = and i8 %255, %252, !mcsema_real_eip !35
  %265 = icmp slt i8 %264, 0
  store i1 %265, i1* %OF_val, !mcsema_real_eip !35
  %266 = load i1* %ZF_val, !mcsema_real_eip !36
  %267 = load i64* %RBP_val, !mcsema_real_eip !37
  br i1 %266, label %block_0x78, label %block_0x81, !mcsema_real_eip !36

block_0xa3.loopexit:                              ; preds = %block_0x78, %block_0x81
  br label %block_0xa3

block_0xa3:                                       ; preds = %block_0xa3.loopexit, %block_0x46
  %268 = load i64* %RBP_val, !mcsema_real_eip !38
  %269 = add i64 %268, -32, !mcsema_real_eip !38
  %270 = inttoptr i64 %269 to i64*, !mcsema_real_eip !38
  %271 = load i64* %270, !mcsema_real_eip !38
  store i64 %271, i64* %RAX_val, !mcsema_real_eip !38
  store i64 %268, i64* %RSP_val, !mcsema_real_eip !18
  %272 = inttoptr i64 %268 to i64*, !mcsema_real_eip !18
  %273 = load i64* %272, !mcsema_real_eip !18
  store i64 %273, i64* %RBP_val, !mcsema_real_eip !18
  %274 = add i64 %268, 16, !mcsema_real_eip !19
  store i64 %274, i64* %RSP_val, !mcsema_real_eip !19
  %275 = load i64* %RAX_val, !mcsema_real_eip !19
  store i64 %275, i64* %RAX, !mcsema_real_eip !19
  %276 = load i64* %RBX_val, !mcsema_real_eip !19
  store i64 %276, i64* %RBX, !mcsema_real_eip !19
  %277 = load i64* %RCX_val, !mcsema_real_eip !19
  store i64 %277, i64* %RCX, !mcsema_real_eip !19
  %278 = load i64* %RDX_val, !mcsema_real_eip !19
  store i64 %278, i64* %RDX, !mcsema_real_eip !19
  %279 = load i64* %RSI_val, !mcsema_real_eip !19
  store i64 %279, i64* %RSI, !mcsema_real_eip !19
  %280 = load i64* %RDI_val, !mcsema_real_eip !19
  store i64 %280, i64* %RDI, !mcsema_real_eip !19
  %281 = load i64* %RSP_val, !mcsema_real_eip !19
  store i64 %281, i64* %RSP, !mcsema_real_eip !19
  %282 = load i64* %RBP_val, !mcsema_real_eip !19
  store i64 %282, i64* %RBP, !mcsema_real_eip !19
  %283 = load i64* %R8_val, !mcsema_real_eip !19
  store i64 %283, i64* %R8, !mcsema_real_eip !19
  %284 = load i64* %R9_val, !mcsema_real_eip !19
  store i64 %284, i64* %R9, !mcsema_real_eip !19
  %285 = load i64* %R10_val, !mcsema_real_eip !19
  store i64 %285, i64* %R10, !mcsema_real_eip !19
  %286 = load i64* %R11_val, !mcsema_real_eip !19
  store i64 %286, i64* %R11, !mcsema_real_eip !19
  %287 = load i64* %R12_val, !mcsema_real_eip !19
  store i64 %287, i64* %R12, !mcsema_real_eip !19
  %288 = load i64* %R13_val, !mcsema_real_eip !19
  store i64 %288, i64* %R13, !mcsema_real_eip !19
  %289 = load i64* %R14_val, !mcsema_real_eip !19
  store i64 %289, i64* %R14, !mcsema_real_eip !19
  %290 = load i64* %R15_val, !mcsema_real_eip !19
  store i64 %290, i64* %R15, !mcsema_real_eip !19
  %291 = load i64* %RIP_val, !mcsema_real_eip !19
  store i64 %291, i64* %RIP, !mcsema_real_eip !19
  %292 = load i1* %CF_val, !mcsema_real_eip !19
  store i1 %292, i1* %CF, align 1, !mcsema_real_eip !19
  %293 = load i1* %PF_val, !mcsema_real_eip !19
  store i1 %293, i1* %PF, align 1, !mcsema_real_eip !19
  %294 = load i1* %AF_val, !mcsema_real_eip !19
  store i1 %294, i1* %AF, align 1, !mcsema_real_eip !19
  %295 = load i1* %ZF_val, !mcsema_real_eip !19
  store i1 %295, i1* %ZF, align 1, !mcsema_real_eip !19
  %296 = load i1* %SF_val, !mcsema_real_eip !19
  store i1 %296, i1* %SF, align 1, !mcsema_real_eip !19
  %297 = load i1* %OF_val, !mcsema_real_eip !19
  store i1 %297, i1* %OF, align 1, !mcsema_real_eip !19
  %298 = load i1* %DF_val, !mcsema_real_eip !19
  store i1 %298, i1* %DF, align 1, !mcsema_real_eip !19
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !19
  %299 = load i1* %FPU_B_val, !mcsema_real_eip !19
  store i1 %299, i1* %FPU_B, align 1, !mcsema_real_eip !19
  %300 = load i1* %FPU_C3_val, !mcsema_real_eip !19
  store i1 %300, i1* %FPU_C3, align 1, !mcsema_real_eip !19
  %301 = load i3* %FPU_TOP_val, !mcsema_real_eip !19
  store i3 %301, i3* %FPU_TOP, align 1, !mcsema_real_eip !19
  %302 = load i1* %FPU_C2_val, !mcsema_real_eip !19
  store i1 %302, i1* %FPU_C2, align 1, !mcsema_real_eip !19
  %303 = load i1* %FPU_C1_val, !mcsema_real_eip !19
  store i1 %303, i1* %FPU_C1, align 1, !mcsema_real_eip !19
  %304 = load i1* %FPU_C0_val, !mcsema_real_eip !19
  store i1 %304, i1* %FPU_C0, align 1, !mcsema_real_eip !19
  %305 = load i1* %FPU_ES_val, !mcsema_real_eip !19
  store i1 %305, i1* %FPU_ES, align 1, !mcsema_real_eip !19
  %306 = load i1* %FPU_SF_val, !mcsema_real_eip !19
  store i1 %306, i1* %FPU_SF, align 1, !mcsema_real_eip !19
  %307 = load i1* %FPU_PE_val, !mcsema_real_eip !19
  store i1 %307, i1* %FPU_PE, align 1, !mcsema_real_eip !19
  %308 = load i1* %FPU_UE_val, !mcsema_real_eip !19
  store i1 %308, i1* %FPU_UE, align 1, !mcsema_real_eip !19
  %309 = load i1* %FPU_OE_val, !mcsema_real_eip !19
  store i1 %309, i1* %FPU_OE, align 1, !mcsema_real_eip !19
  %310 = load i1* %FPU_ZE_val, !mcsema_real_eip !19
  store i1 %310, i1* %FPU_ZE, align 1, !mcsema_real_eip !19
  %311 = load i1* %FPU_DE_val, !mcsema_real_eip !19
  store i1 %311, i1* %FPU_DE, align 1, !mcsema_real_eip !19
  %312 = load i1* %FPU_IE_val, !mcsema_real_eip !19
  store i1 %312, i1* %FPU_IE, align 1, !mcsema_real_eip !19
  %313 = load i1* %FPU_X_val, !mcsema_real_eip !19
  store i1 %313, i1* %FPU_X, align 1, !mcsema_real_eip !19
  %314 = load i2* %FPU_RC_val, !mcsema_real_eip !19
  store i2 %314, i2* %FPU_RC, align 1, !mcsema_real_eip !19
  %315 = load i2* %FPU_PC_val, !mcsema_real_eip !19
  store i2 %315, i2* %FPU_PC, align 1, !mcsema_real_eip !19
  %316 = load i1* %FPU_PM_val, !mcsema_real_eip !19
  store i1 %316, i1* %FPU_PM, align 1, !mcsema_real_eip !19
  %317 = load i1* %FPU_UM_val, !mcsema_real_eip !19
  store i1 %317, i1* %FPU_UM, align 1, !mcsema_real_eip !19
  %318 = load i1* %FPU_OM_val, !mcsema_real_eip !19
  store i1 %318, i1* %FPU_OM, align 1, !mcsema_real_eip !19
  %319 = load i1* %FPU_ZM_val, !mcsema_real_eip !19
  store i1 %319, i1* %FPU_ZM, align 1, !mcsema_real_eip !19
  %320 = load i1* %FPU_DM_val, !mcsema_real_eip !19
  store i1 %320, i1* %FPU_DM, align 1, !mcsema_real_eip !19
  %321 = load i1* %FPU_IM_val, !mcsema_real_eip !19
  store i1 %321, i1* %FPU_IM, align 1, !mcsema_real_eip !19
  %322 = load i64* %53, align 4
  store i64 %322, i64* %52, align 4
  %323 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !19
  store i16 %323, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !19
  %324 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !19
  store i64 %324, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !19
  %325 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !19
  store i16 %325, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !19
  %326 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !19
  store i64 %326, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !19
  %327 = load i128* %XMM0_val, !mcsema_real_eip !19
  store i128 %327, i128* %XMM0, align 1, !mcsema_real_eip !19
  %328 = load i128* %XMM1_val, !mcsema_real_eip !19
  store i128 %328, i128* %XMM1, align 1, !mcsema_real_eip !19
  %329 = load i128* %XMM2_val, !mcsema_real_eip !19
  store i128 %329, i128* %XMM2, align 1, !mcsema_real_eip !19
  %330 = load i128* %XMM3_val, !mcsema_real_eip !19
  store i128 %330, i128* %XMM3, align 1, !mcsema_real_eip !19
  %331 = load i128* %XMM4_val, !mcsema_real_eip !19
  store i128 %331, i128* %XMM4, align 1, !mcsema_real_eip !19
  %332 = load i128* %XMM5_val, !mcsema_real_eip !19
  store i128 %332, i128* %XMM5, align 1, !mcsema_real_eip !19
  %333 = load i128* %XMM6_val, !mcsema_real_eip !19
  store i128 %333, i128* %XMM6, align 1, !mcsema_real_eip !19
  %334 = load i128* %XMM7_val, !mcsema_real_eip !19
  store i128 %334, i128* %XMM7, align 1, !mcsema_real_eip !19
  %335 = load i128* %XMM8_val, !mcsema_real_eip !19
  store i128 %335, i128* %XMM8, align 1, !mcsema_real_eip !19
  %336 = load i128* %XMM9_val, !mcsema_real_eip !19
  store i128 %336, i128* %XMM9, align 1, !mcsema_real_eip !19
  %337 = load i128* %XMM10_val, !mcsema_real_eip !19
  store i128 %337, i128* %XMM10, align 1, !mcsema_real_eip !19
  %338 = load i128* %XMM11_val, !mcsema_real_eip !19
  store i128 %338, i128* %XMM11, align 1, !mcsema_real_eip !19
  %339 = load i128* %XMM12_val, !mcsema_real_eip !19
  store i128 %339, i128* %XMM12, align 1, !mcsema_real_eip !19
  %340 = load i128* %XMM13_val, !mcsema_real_eip !19
  store i128 %340, i128* %XMM13, align 1, !mcsema_real_eip !19
  %341 = load i128* %XMM14_val, !mcsema_real_eip !19
  store i128 %341, i128* %XMM14, align 1, !mcsema_real_eip !19
  %342 = load i128* %XMM15_val, !mcsema_real_eip !19
  store i128 %342, i128* %XMM15, align 1, !mcsema_real_eip !19
  %343 = load i64* %STACK_BASE_val, !mcsema_real_eip !19
  store i64 %343, i64* %STACK_BASE, align 1, !mcsema_real_eip !19
  %344 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !19
  store i64 %344, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !19
  ret void, !mcsema_real_eip !19

block_0x81:                                       ; preds = %block_0x6d
  %345 = add i64 %267, -8, !mcsema_real_eip !37
  %346 = inttoptr i64 %345 to i64*, !mcsema_real_eip !37
  %347 = load i64* %346, !mcsema_real_eip !37
  store i64 %347, i64* %RAX_val, !mcsema_real_eip !37
  %348 = inttoptr i64 %347 to i64*, !mcsema_real_eip !39
  %349 = bitcast i64* %348 to i8*
  %350 = load i8* %349, !mcsema_real_eip !39
  %351 = zext i8 %350 to i64
  store i64 %351, i64* %RDX_val, !mcsema_real_eip !39
  %352 = load i64* %RBP_val, !mcsema_real_eip !40
  %353 = add i64 %352, -16, !mcsema_real_eip !40
  %354 = inttoptr i64 %353 to i64*, !mcsema_real_eip !40
  %355 = load i64* %354, !mcsema_real_eip !40
  store i64 %355, i64* %RAX_val, !mcsema_real_eip !40
  %356 = inttoptr i64 %355 to i64*, !mcsema_real_eip !41
  %357 = load i64* %RDX_val, !mcsema_real_eip !41
  %358 = trunc i64 %357 to i8, !mcsema_real_eip !41
  %359 = bitcast i64* %356 to i8*
  store i8 %358, i8* %359, !mcsema_real_eip !41
  %360 = load i64* %RBP_val, !mcsema_real_eip !29
  %361 = add i64 %360, -8, !mcsema_real_eip !29
  %362 = inttoptr i64 %361 to i64*, !mcsema_real_eip !29
  %363 = load i64* %362, !mcsema_real_eip !29
  store i64 %363, i64* %RAX_val, !mcsema_real_eip !29
  %364 = inttoptr i64 %363 to i64*, !mcsema_real_eip !30
  %365 = bitcast i64* %364 to i8*
  %366 = load i8* %365, !mcsema_real_eip !30
  %367 = zext i8 %366 to i64
  store i64 %367, i64* %RAX_val, !mcsema_real_eip !30
  %368 = icmp eq i8 %366, 0, !mcsema_real_eip !31
  store i1 %368, i1* %ZF_val, !mcsema_real_eip !31
  %369 = icmp slt i8 %366, 0
  store i1 %369, i1* %SF_val, !mcsema_real_eip !31
  %370 = tail call i8 @llvm.ctpop.i8(i8 %366), !mcsema_real_eip !31
  %371 = and i8 %370, 1
  %372 = icmp eq i8 %371, 0
  store i1 %372, i1* %PF_val, !mcsema_real_eip !31
  store i1 false, i1* %CF_val, !mcsema_real_eip !31
  store i1 false, i1* %OF_val, !mcsema_real_eip !31
  %373 = load i1* %ZF_val, !mcsema_real_eip !32
  br i1 %373, label %block_0xa3.loopexit, label %block_0x6d.backedge, !mcsema_real_eip !32

block_0x78:                                       ; preds = %block_0x6d
  %374 = add i64 %267, -16, !mcsema_real_eip !42
  %375 = inttoptr i64 %374 to i64*, !mcsema_real_eip !42
  %376 = load i64* %375, !mcsema_real_eip !42
  store i64 %376, i64* %RAX_val, !mcsema_real_eip !42
  %377 = inttoptr i64 %376 to i64*, !mcsema_real_eip !43
  %378 = bitcast i64* %377 to i8*
  store i8 92, i8* %378, !mcsema_real_eip !43
  %379 = load i64* %RBP_val, !mcsema_real_eip !29
  %380 = add i64 %379, -8, !mcsema_real_eip !29
  %381 = inttoptr i64 %380 to i64*, !mcsema_real_eip !29
  %382 = load i64* %381, !mcsema_real_eip !29
  store i64 %382, i64* %RAX_val, !mcsema_real_eip !29
  %383 = inttoptr i64 %382 to i64*, !mcsema_real_eip !30
  %384 = bitcast i64* %383 to i8*
  %385 = load i8* %384, !mcsema_real_eip !30
  %386 = zext i8 %385 to i64
  store i64 %386, i64* %RAX_val, !mcsema_real_eip !30
  %387 = icmp eq i8 %385, 0, !mcsema_real_eip !31
  store i1 %387, i1* %ZF_val, !mcsema_real_eip !31
  %388 = icmp slt i8 %385, 0
  store i1 %388, i1* %SF_val, !mcsema_real_eip !31
  %389 = tail call i8 @llvm.ctpop.i8(i8 %385), !mcsema_real_eip !31
  %390 = and i8 %389, 1
  %391 = icmp eq i8 %390, 0
  store i1 %391, i1* %PF_val, !mcsema_real_eip !31
  store i1 false, i1* %CF_val, !mcsema_real_eip !31
  store i1 false, i1* %OF_val, !mcsema_real_eip !31
  %392 = load i1* %ZF_val, !mcsema_real_eip !32
  br i1 %392, label %block_0xa3.loopexit, label %block_0x6d.backedge, !mcsema_real_eip !32

block_0x6d.backedge:                              ; preds = %block_0x78, %block_0x81
  br label %block_0x6d
}

declare x86_64_sysvcc i64 @strlen(i64 inreg)

declare x86_64_sysvcc i64 @malloc(i64 inreg)

declare x86_64_sysvcc i64 @memset(i64 inreg, i64 inreg, i64 inreg)

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_f(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 15, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 16, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = metadata !{i64 19, [16 x i8] c"\09subq\09$48, %rsp\00"}
!5 = metadata !{i64 23, [22 x i8] c"\09movq\09%rdi, -40(%rbp)\00"}
!6 = metadata !{i64 27, [22 x i8] c"\09movq\09-40(%rbp), %rax\00"}
!7 = metadata !{i64 31, [17 x i8] c"\09movq\09%rax, %rdi\00"}
!8 = metadata !{i64 34, [9 x i8] c"\09callq\090\00"}
!9 = metadata !{i64 39, [15 x i8] c"\09addq\09$1, %rax\00"}
!10 = metadata !{i64 43, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!11 = metadata !{i64 47, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!12 = metadata !{i64 51, [17 x i8] c"\09movq\09%rax, %rdi\00"}
!13 = metadata !{i64 54, [9 x i8] c"\09callq\090\00"}
!14 = metadata !{i64 59, [22 x i8] c"\09movq\09%rax, -32(%rbp)\00"}
!15 = metadata !{i64 63, [20 x i8] c"\09cmpq\09$0, -32(%rbp)\00"}
!16 = metadata !{i64 68, [7 x i8] c"\09je\0999\00"}
!17 = metadata !{i64 169, [15 x i8] c"\09movl\09$0, %eax\00"}
!18 = metadata !{i64 174, [7 x i8] c"\09leave\00"}
!19 = metadata !{i64 175, [6 x i8] c"\09retq\00"}
!20 = metadata !{i64 70, [22 x i8] c"\09movq\09-40(%rbp), %rax\00"}
!21 = metadata !{i64 74, [21 x i8] c"\09movq\09%rax, -8(%rbp)\00"}
!22 = metadata !{i64 78, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!23 = metadata !{i64 82, [22 x i8] c"\09movq\09%rax, -16(%rbp)\00"}
!24 = metadata !{i64 86, [22 x i8] c"\09movq\09-24(%rbp), %rdx\00"}
!25 = metadata !{i64 90, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!26 = metadata !{i64 94, [15 x i8] c"\09movl\09$0, %esi\00"}
!27 = metadata !{i64 99, [17 x i8] c"\09movq\09%rax, %rdi\00"}
!28 = metadata !{i64 102, [9 x i8] c"\09callq\090\00"}
!29 = metadata !{i64 152, [21 x i8] c"\09movq\09-8(%rbp), %rax\00"}
!30 = metadata !{i64 156, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!31 = metadata !{i64 159, [16 x i8] c"\09testb\09%al, %al\00"}
!32 = metadata !{i64 161, [9 x i8] c"\09jne\09-54\00"}
!33 = metadata !{i64 109, [21 x i8] c"\09movq\09-8(%rbp), %rax\00"}
!34 = metadata !{i64 113, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!35 = metadata !{i64 116, [15 x i8] c"\09cmpb\09$47, %al\00"}
!36 = metadata !{i64 118, [7 x i8] c"\09jne\099\00"}
!37 = metadata !{i64 129, [21 x i8] c"\09movq\09-8(%rbp), %rax\00"}
!38 = metadata !{i64 163, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!39 = metadata !{i64 133, [21 x i8] c"\09movzbl\09(%rax), %edx\00"}
!40 = metadata !{i64 136, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!41 = metadata !{i64 140, [18 x i8] c"\09movb\09%dl, (%rax)\00"}
!42 = metadata !{i64 120, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!43 = metadata !{i64 124, [18 x i8] c"\09movb\09$92, (%rax)\00"}
