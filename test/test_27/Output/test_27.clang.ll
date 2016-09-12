; ModuleID = 'Output/test_27.clang.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_100(%struct.regs*) {
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
  %81 = add i64 %78, -120
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
  %91 = icmp ult i64 %79, 112, !mcsema_real_eip !4
  store i1 %91, i1* %CF_val, !mcsema_real_eip !4
  %92 = and i64 %82, %79, !mcsema_real_eip !4
  %93 = icmp slt i64 %92, 0
  store i1 %93, i1* %OF_val, !mcsema_real_eip !4
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !4
  store i64 12, i64* %RDI_val, !mcsema_real_eip !5
  %94 = load i64* %RBP_val, !mcsema_real_eip !6
  %95 = add i64 %94, -4, !mcsema_real_eip !6
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !6
  %97 = bitcast i64* %96 to i32*
  store i32 0, i32* %97, !mcsema_real_eip !6
  %98 = load i64* %RBP_val, !mcsema_real_eip !7
  %99 = add i64 %98, -16, !mcsema_real_eip !7
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !7
  %101 = bitcast i64* %100 to i32*
  store i32 10, i32* %101, !mcsema_real_eip !7
  %102 = load i64* %RBP_val, !mcsema_real_eip !8
  %103 = add i64 %102, -12, !mcsema_real_eip !8
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !8
  %105 = bitcast i64* %104 to i32*
  store i32 10, i32* %105, !mcsema_real_eip !8
  %106 = load i64* %RBP_val, !mcsema_real_eip !9
  %107 = add i64 %106, -8, !mcsema_real_eip !9
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !9
  %109 = bitcast i64* %108 to i32*
  store i32 10, i32* %109, !mcsema_real_eip !9
  %110 = load i64* %RDI_val, !mcsema_real_eip !10
  %111 = tail call x86_64_sysvcc i64 @malloc(i64 %110), !mcsema_real_eip !10
  store i64 %111, i64* %RAX_val, !mcsema_real_eip !10
  %112 = load i64* %RBP_val, !mcsema_real_eip !11
  %113 = add i64 %112, -16, !mcsema_real_eip !11
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !11
  %115 = ptrtoint i64* %114 to i64, !mcsema_real_eip !11
  store i64 %115, i64* %RDI_val, !mcsema_real_eip !11
  store i64 1, i64* %R8_val, !mcsema_real_eip !12
  store i64 2, i64* %R9_val, !mcsema_real_eip !13
  store i64 3, i64* %RCX_val, !mcsema_real_eip !14
  %116 = load i64* %RBP_val, !mcsema_real_eip !15
  %117 = add i64 %116, -24, !mcsema_real_eip !15
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !15
  %119 = load i64* %RAX_val, !mcsema_real_eip !15
  store i64 %119, i64* %118, !mcsema_real_eip !15
  %120 = load i64* %RBP_val, !mcsema_real_eip !16
  %121 = add i64 %120, -24, !mcsema_real_eip !16
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !16
  %123 = load i64* %122, !mcsema_real_eip !16
  store i64 %123, i64* %RAX_val, !mcsema_real_eip !16
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !17
  %125 = bitcast i64* %124 to i32*
  store i32 5, i32* %125, !mcsema_real_eip !17
  %126 = load i64* %RBP_val, !mcsema_real_eip !18
  %127 = add i64 %126, -24, !mcsema_real_eip !18
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !18
  %129 = load i64* %128, !mcsema_real_eip !18
  store i64 %129, i64* %RAX_val, !mcsema_real_eip !18
  %130 = add i64 %129, 4, !mcsema_real_eip !19
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !19
  %132 = bitcast i64* %131 to i32*
  store i32 5, i32* %132, !mcsema_real_eip !19
  %133 = load i64* %RBP_val, !mcsema_real_eip !20
  %134 = add i64 %133, -24, !mcsema_real_eip !20
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !20
  %136 = load i64* %135, !mcsema_real_eip !20
  store i64 %136, i64* %RAX_val, !mcsema_real_eip !20
  %137 = add i64 %136, 8, !mcsema_real_eip !21
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !21
  %139 = bitcast i64* %138 to i32*
  store i32 5, i32* %139, !mcsema_real_eip !21
  %140 = load i64* %RBP_val, !mcsema_real_eip !22
  %141 = add i64 %140, -24, !mcsema_real_eip !22
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !22
  %143 = load i64* %142, !mcsema_real_eip !22
  store i64 %143, i64* %RAX_val, !mcsema_real_eip !22
  %144 = load i64* %142, !mcsema_real_eip !23
  store i64 %144, i64* %RDX_val, !mcsema_real_eip !23
  %145 = load i64* %RBP_val, !mcsema_real_eip !24
  %146 = add i64 %145, -16, !mcsema_real_eip !24
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !24
  %148 = load i64* %147, !mcsema_real_eip !24
  store i64 %148, i64* %RSI_val, !mcsema_real_eip !24
  %149 = add i64 %145, -48, !mcsema_real_eip !25
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !25
  store i64 %148, i64* %150, !mcsema_real_eip !25
  %151 = load i64* %RBP_val, !mcsema_real_eip !26
  %152 = add i64 %151, -8, !mcsema_real_eip !26
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !26
  %154 = bitcast i64* %153 to i32*
  %155 = load i32* %154, !mcsema_real_eip !26
  %156 = zext i32 %155 to i64, !mcsema_real_eip !26
  store i64 %156, i64* %R10_val, !mcsema_real_eip !26
  %157 = load i64* %RBP_val, !mcsema_real_eip !27
  %158 = add i64 %157, -40, !mcsema_real_eip !27
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !27
  %160 = bitcast i64* %159 to i32*
  store i32 %155, i32* %160, !mcsema_real_eip !27
  %161 = load i64* %RBP_val, !mcsema_real_eip !28
  %162 = add i64 %161, -48, !mcsema_real_eip !28
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !28
  %164 = load i64* %163, !mcsema_real_eip !28
  store i64 %164, i64* %RSI_val, !mcsema_real_eip !28
  %165 = add i64 %161, -40, !mcsema_real_eip !29
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !29
  %167 = bitcast i64* %166 to i32*
  %168 = load i32* %167, !mcsema_real_eip !29
  %169 = zext i32 %168 to i64, !mcsema_real_eip !29
  store i64 %169, i64* %R10_val, !mcsema_real_eip !29
  %170 = load i64* %RBP_val, !mcsema_real_eip !30
  %171 = add i64 %170, -56, !mcsema_real_eip !30
  %172 = inttoptr i64 %171 to i64*, !mcsema_real_eip !30
  %173 = load i64* %RDI_val, !mcsema_real_eip !30
  store i64 %173, i64* %172, !mcsema_real_eip !30
  %174 = load i64* %RSI_val, !mcsema_real_eip !31
  store i64 %174, i64* %RDI_val, !mcsema_real_eip !31
  %175 = load i64* %R10_val, !mcsema_real_eip !32
  %176 = and i64 %175, 4294967295
  store i64 %176, i64* %RSI_val, !mcsema_real_eip !32
  %177 = load i64* %RBP_val, !mcsema_real_eip !33
  %178 = add i64 %177, -56, !mcsema_real_eip !33
  %179 = inttoptr i64 %178 to i64*, !mcsema_real_eip !33
  %180 = load i64* %179, !mcsema_real_eip !33
  store i64 %180, i64* %R11_val, !mcsema_real_eip !33
  %181 = add i64 %177, -64, !mcsema_real_eip !34
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !34
  %183 = load i64* %RDX_val, !mcsema_real_eip !34
  store i64 %183, i64* %182, !mcsema_real_eip !34
  %184 = load i64* %R11_val, !mcsema_real_eip !35
  store i64 %184, i64* %RDX_val, !mcsema_real_eip !35
  %185 = load i64* %RBP_val, !mcsema_real_eip !36
  %186 = add i64 %185, -68, !mcsema_real_eip !36
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !36
  %188 = load i64* %RCX_val, !mcsema_real_eip !36
  %189 = trunc i64 %188 to i32, !mcsema_real_eip !36
  %190 = bitcast i64* %187 to i32*
  store i32 %189, i32* %190, !mcsema_real_eip !36
  %191 = load i64* %RAX_val, !mcsema_real_eip !37
  store i64 %191, i64* %RCX_val, !mcsema_real_eip !37
  %192 = load i64* %RSP_val, !mcsema_real_eip !38
  %193 = inttoptr i64 %192 to i64*, !mcsema_real_eip !38
  %194 = bitcast i64* %193 to i32*
  store i32 3, i32* %194, !mcsema_real_eip !38
  %195 = load i64* %R11_val, !mcsema_real_eip !39
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !39
  %197 = load i64* %196, !mcsema_real_eip !39
  store i64 %197, i64* %RAX_val, !mcsema_real_eip !39
  %198 = load i64* %RSP_val, !mcsema_real_eip !40
  %199 = add i64 %198, 8, !mcsema_real_eip !40
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !40
  store i64 %197, i64* %200, !mcsema_real_eip !40
  %201 = load i64* %R11_val, !mcsema_real_eip !41
  %202 = add i64 %201, 8, !mcsema_real_eip !41
  %203 = inttoptr i64 %202 to i64*, !mcsema_real_eip !41
  %204 = bitcast i64* %203 to i32*
  %205 = load i32* %204, !mcsema_real_eip !41
  %206 = zext i32 %205 to i64, !mcsema_real_eip !41
  store i64 %206, i64* %R10_val, !mcsema_real_eip !41
  %207 = load i64* %RSP_val, !mcsema_real_eip !42
  %208 = add i64 %207, 16, !mcsema_real_eip !42
  %209 = inttoptr i64 %208 to i64*, !mcsema_real_eip !42
  %210 = bitcast i64* %209 to i32*
  store i32 %205, i32* %210, !mcsema_real_eip !42
  %211 = load i64* %RSP_val, !mcsema_real_eip !43
  %212 = add i64 %211, 24, !mcsema_real_eip !43
  %213 = inttoptr i64 %212 to i64*, !mcsema_real_eip !43
  %214 = load i64* %R11_val, !mcsema_real_eip !43
  store i64 %214, i64* %213, !mcsema_real_eip !43
  %215 = load i64* %RBP_val, !mcsema_real_eip !44
  %216 = add i64 %215, -64, !mcsema_real_eip !44
  %217 = inttoptr i64 %216 to i64*, !mcsema_real_eip !44
  %218 = load i64* %217, !mcsema_real_eip !44
  store i64 %218, i64* %RAX_val, !mcsema_real_eip !44
  %219 = load i64* %RSP_val, !mcsema_real_eip !45
  %220 = add i64 %219, 32, !mcsema_real_eip !45
  %221 = inttoptr i64 %220 to i64*, !mcsema_real_eip !45
  store i64 %218, i64* %221, !mcsema_real_eip !45
  %222 = load i64* %RSP_val, !mcsema_real_eip !46
  %223 = add i64 %222, -8
  %224 = inttoptr i64 %223 to i64*, !mcsema_real_eip !46
  store i64 -4981261766360305936, i64* %224, !mcsema_real_eip !46
  store i64 %223, i64* %RSP_val, !mcsema_real_eip !46
  %225 = load i64* %RAX_val, !mcsema_real_eip !46
  store i64 %225, i64* %RAX, !mcsema_real_eip !46
  %226 = load i64* %RBX_val, !mcsema_real_eip !46
  store i64 %226, i64* %RBX, !mcsema_real_eip !46
  %227 = load i64* %RCX_val, !mcsema_real_eip !46
  store i64 %227, i64* %RCX, !mcsema_real_eip !46
  %228 = load i64* %RDX_val, !mcsema_real_eip !46
  store i64 %228, i64* %RDX, !mcsema_real_eip !46
  %229 = load i64* %RSI_val, !mcsema_real_eip !46
  store i64 %229, i64* %RSI, !mcsema_real_eip !46
  %230 = load i64* %RDI_val, !mcsema_real_eip !46
  store i64 %230, i64* %RDI, !mcsema_real_eip !46
  %231 = load i64* %RSP_val, !mcsema_real_eip !46
  store i64 %231, i64* %RSP, !mcsema_real_eip !46
  %232 = load i64* %RBP_val, !mcsema_real_eip !46
  store i64 %232, i64* %RBP, !mcsema_real_eip !46
  %233 = load i64* %R8_val, !mcsema_real_eip !46
  store i64 %233, i64* %R8, !mcsema_real_eip !46
  %234 = load i64* %R9_val, !mcsema_real_eip !46
  store i64 %234, i64* %R9, !mcsema_real_eip !46
  %235 = load i64* %R10_val, !mcsema_real_eip !46
  store i64 %235, i64* %R10, !mcsema_real_eip !46
  %236 = load i64* %R11_val, !mcsema_real_eip !46
  store i64 %236, i64* %R11, !mcsema_real_eip !46
  %237 = load i64* %R12_val, !mcsema_real_eip !46
  store i64 %237, i64* %R12, !mcsema_real_eip !46
  %238 = load i64* %R13_val, !mcsema_real_eip !46
  store i64 %238, i64* %R13, !mcsema_real_eip !46
  %239 = load i64* %R14_val, !mcsema_real_eip !46
  store i64 %239, i64* %R14, !mcsema_real_eip !46
  %240 = load i64* %R15_val, !mcsema_real_eip !46
  store i64 %240, i64* %R15, !mcsema_real_eip !46
  %241 = load i64* %RIP_val, !mcsema_real_eip !46
  store i64 %241, i64* %RIP, !mcsema_real_eip !46
  %242 = load i1* %CF_val, !mcsema_real_eip !46
  store i1 %242, i1* %CF, align 1, !mcsema_real_eip !46
  %243 = load i1* %PF_val, !mcsema_real_eip !46
  store i1 %243, i1* %PF, align 1, !mcsema_real_eip !46
  %244 = load i1* %AF_val, !mcsema_real_eip !46
  store i1 %244, i1* %AF, align 1, !mcsema_real_eip !46
  %245 = load i1* %ZF_val, !mcsema_real_eip !46
  store i1 %245, i1* %ZF, align 1, !mcsema_real_eip !46
  %246 = load i1* %SF_val, !mcsema_real_eip !46
  store i1 %246, i1* %SF, align 1, !mcsema_real_eip !46
  %247 = load i1* %OF_val, !mcsema_real_eip !46
  store i1 %247, i1* %OF, align 1, !mcsema_real_eip !46
  %248 = load i1* %DF_val, !mcsema_real_eip !46
  store i1 %248, i1* %DF, align 1, !mcsema_real_eip !46
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !46
  %249 = load i1* %FPU_B_val, !mcsema_real_eip !46
  store i1 %249, i1* %FPU_B, align 1, !mcsema_real_eip !46
  %250 = load i1* %FPU_C3_val, !mcsema_real_eip !46
  store i1 %250, i1* %FPU_C3, align 1, !mcsema_real_eip !46
  %251 = load i3* %FPU_TOP_val, !mcsema_real_eip !46
  store i3 %251, i3* %FPU_TOP, align 1, !mcsema_real_eip !46
  %252 = load i1* %FPU_C2_val, !mcsema_real_eip !46
  store i1 %252, i1* %FPU_C2, align 1, !mcsema_real_eip !46
  %253 = load i1* %FPU_C1_val, !mcsema_real_eip !46
  store i1 %253, i1* %FPU_C1, align 1, !mcsema_real_eip !46
  %254 = load i1* %FPU_C0_val, !mcsema_real_eip !46
  store i1 %254, i1* %FPU_C0, align 1, !mcsema_real_eip !46
  %255 = load i1* %FPU_ES_val, !mcsema_real_eip !46
  store i1 %255, i1* %FPU_ES, align 1, !mcsema_real_eip !46
  %256 = load i1* %FPU_SF_val, !mcsema_real_eip !46
  store i1 %256, i1* %FPU_SF, align 1, !mcsema_real_eip !46
  %257 = load i1* %FPU_PE_val, !mcsema_real_eip !46
  store i1 %257, i1* %FPU_PE, align 1, !mcsema_real_eip !46
  %258 = load i1* %FPU_UE_val, !mcsema_real_eip !46
  store i1 %258, i1* %FPU_UE, align 1, !mcsema_real_eip !46
  %259 = load i1* %FPU_OE_val, !mcsema_real_eip !46
  store i1 %259, i1* %FPU_OE, align 1, !mcsema_real_eip !46
  %260 = load i1* %FPU_ZE_val, !mcsema_real_eip !46
  store i1 %260, i1* %FPU_ZE, align 1, !mcsema_real_eip !46
  %261 = load i1* %FPU_DE_val, !mcsema_real_eip !46
  store i1 %261, i1* %FPU_DE, align 1, !mcsema_real_eip !46
  %262 = load i1* %FPU_IE_val, !mcsema_real_eip !46
  store i1 %262, i1* %FPU_IE, align 1, !mcsema_real_eip !46
  %263 = load i1* %FPU_X_val, !mcsema_real_eip !46
  store i1 %263, i1* %FPU_X, align 1, !mcsema_real_eip !46
  %264 = load i2* %FPU_RC_val, !mcsema_real_eip !46
  store i2 %264, i2* %FPU_RC, align 1, !mcsema_real_eip !46
  %265 = load i2* %FPU_PC_val, !mcsema_real_eip !46
  store i2 %265, i2* %FPU_PC, align 1, !mcsema_real_eip !46
  %266 = load i1* %FPU_PM_val, !mcsema_real_eip !46
  store i1 %266, i1* %FPU_PM, align 1, !mcsema_real_eip !46
  %267 = load i1* %FPU_UM_val, !mcsema_real_eip !46
  store i1 %267, i1* %FPU_UM, align 1, !mcsema_real_eip !46
  %268 = load i1* %FPU_OM_val, !mcsema_real_eip !46
  store i1 %268, i1* %FPU_OM, align 1, !mcsema_real_eip !46
  %269 = load i1* %FPU_ZM_val, !mcsema_real_eip !46
  store i1 %269, i1* %FPU_ZM, align 1, !mcsema_real_eip !46
  %270 = load i1* %FPU_DM_val, !mcsema_real_eip !46
  store i1 %270, i1* %FPU_DM, align 1, !mcsema_real_eip !46
  %271 = load i1* %FPU_IM_val, !mcsema_real_eip !46
  store i1 %271, i1* %FPU_IM, align 1, !mcsema_real_eip !46
  %272 = load i64* %53, align 4
  store i64 %272, i64* %52, align 4
  %273 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !46
  store i16 %273, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !46
  %274 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !46
  store i64 %274, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !46
  %275 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !46
  store i16 %275, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !46
  %276 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !46
  store i64 %276, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !46
  %277 = load i128* %XMM0_val, !mcsema_real_eip !46
  store i128 %277, i128* %XMM0, align 1, !mcsema_real_eip !46
  %278 = load i128* %XMM1_val, !mcsema_real_eip !46
  store i128 %278, i128* %XMM1, align 1, !mcsema_real_eip !46
  %279 = load i128* %XMM2_val, !mcsema_real_eip !46
  store i128 %279, i128* %XMM2, align 1, !mcsema_real_eip !46
  %280 = load i128* %XMM3_val, !mcsema_real_eip !46
  store i128 %280, i128* %XMM3, align 1, !mcsema_real_eip !46
  %281 = load i128* %XMM4_val, !mcsema_real_eip !46
  store i128 %281, i128* %XMM4, align 1, !mcsema_real_eip !46
  %282 = load i128* %XMM5_val, !mcsema_real_eip !46
  store i128 %282, i128* %XMM5, align 1, !mcsema_real_eip !46
  %283 = load i128* %XMM6_val, !mcsema_real_eip !46
  store i128 %283, i128* %XMM6, align 1, !mcsema_real_eip !46
  %284 = load i128* %XMM7_val, !mcsema_real_eip !46
  store i128 %284, i128* %XMM7, align 1, !mcsema_real_eip !46
  %285 = load i128* %XMM8_val, !mcsema_real_eip !46
  store i128 %285, i128* %XMM8, align 1, !mcsema_real_eip !46
  %286 = load i128* %XMM9_val, !mcsema_real_eip !46
  store i128 %286, i128* %XMM9, align 1, !mcsema_real_eip !46
  %287 = load i128* %XMM10_val, !mcsema_real_eip !46
  store i128 %287, i128* %XMM10, align 1, !mcsema_real_eip !46
  %288 = load i128* %XMM11_val, !mcsema_real_eip !46
  store i128 %288, i128* %XMM11, align 1, !mcsema_real_eip !46
  %289 = load i128* %XMM12_val, !mcsema_real_eip !46
  store i128 %289, i128* %XMM12, align 1, !mcsema_real_eip !46
  %290 = load i128* %XMM13_val, !mcsema_real_eip !46
  store i128 %290, i128* %XMM13, align 1, !mcsema_real_eip !46
  %291 = load i128* %XMM14_val, !mcsema_real_eip !46
  store i128 %291, i128* %XMM14, align 1, !mcsema_real_eip !46
  %292 = load i128* %XMM15_val, !mcsema_real_eip !46
  store i128 %292, i128* %XMM15, align 1, !mcsema_real_eip !46
  %293 = load i64* %STACK_BASE_val, !mcsema_real_eip !46
  store i64 %293, i64* %STACK_BASE, align 1, !mcsema_real_eip !46
  %294 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !46
  store i64 %294, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !46
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !46
  %295 = load i64* %RAX, !mcsema_real_eip !46
  store i64 %295, i64* %RAX_val, !mcsema_real_eip !46
  %296 = load i64* %RBX, !mcsema_real_eip !46
  store i64 %296, i64* %RBX_val, !mcsema_real_eip !46
  %297 = load i64* %RCX, !mcsema_real_eip !46
  store i64 %297, i64* %RCX_val, !mcsema_real_eip !46
  %298 = load i64* %RDX, !mcsema_real_eip !46
  store i64 %298, i64* %RDX_val, !mcsema_real_eip !46
  %299 = load i64* %RSI, !mcsema_real_eip !46
  store i64 %299, i64* %RSI_val, !mcsema_real_eip !46
  %300 = load i64* %RDI, !mcsema_real_eip !46
  store i64 %300, i64* %RDI_val, !mcsema_real_eip !46
  %301 = load i64* %RSP, !mcsema_real_eip !46
  store i64 %301, i64* %RSP_val, !mcsema_real_eip !46
  %302 = load i64* %RBP, !mcsema_real_eip !46
  store i64 %302, i64* %RBP_val, !mcsema_real_eip !46
  %303 = load i64* %R8, !mcsema_real_eip !46
  store i64 %303, i64* %R8_val, !mcsema_real_eip !46
  %304 = load i64* %R9, !mcsema_real_eip !46
  store i64 %304, i64* %R9_val, !mcsema_real_eip !46
  %305 = load i64* %R10, !mcsema_real_eip !46
  store i64 %305, i64* %R10_val, !mcsema_real_eip !46
  %306 = load i64* %R11, !mcsema_real_eip !46
  store i64 %306, i64* %R11_val, !mcsema_real_eip !46
  %307 = load i64* %R12, !mcsema_real_eip !46
  store i64 %307, i64* %R12_val, !mcsema_real_eip !46
  %308 = load i64* %R13, !mcsema_real_eip !46
  store i64 %308, i64* %R13_val, !mcsema_real_eip !46
  %309 = load i64* %R14, !mcsema_real_eip !46
  store i64 %309, i64* %R14_val, !mcsema_real_eip !46
  %310 = load i64* %R15, !mcsema_real_eip !46
  store i64 %310, i64* %R15_val, !mcsema_real_eip !46
  %311 = load i64* %RIP, !mcsema_real_eip !46
  store i64 %311, i64* %RIP_val, !mcsema_real_eip !46
  %312 = load i1* %CF, align 1, !mcsema_real_eip !46
  store i1 %312, i1* %CF_val, !mcsema_real_eip !46
  %313 = load i1* %PF, align 1, !mcsema_real_eip !46
  store i1 %313, i1* %PF_val, !mcsema_real_eip !46
  %314 = load i1* %AF, align 1, !mcsema_real_eip !46
  store i1 %314, i1* %AF_val, !mcsema_real_eip !46
  %315 = load i1* %ZF, align 1, !mcsema_real_eip !46
  store i1 %315, i1* %ZF_val, !mcsema_real_eip !46
  %316 = load i1* %SF, align 1, !mcsema_real_eip !46
  store i1 %316, i1* %SF_val, !mcsema_real_eip !46
  %317 = load i1* %OF, align 1, !mcsema_real_eip !46
  store i1 %317, i1* %OF_val, !mcsema_real_eip !46
  %318 = load i1* %DF, align 1, !mcsema_real_eip !46
  store i1 %318, i1* %DF_val, !mcsema_real_eip !46
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !46
  %319 = load i1* %FPU_B, align 1, !mcsema_real_eip !46
  store i1 %319, i1* %FPU_B_val, !mcsema_real_eip !46
  %320 = load i1* %FPU_C3, align 1, !mcsema_real_eip !46
  store i1 %320, i1* %FPU_C3_val, !mcsema_real_eip !46
  %321 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !46
  store i3 %321, i3* %FPU_TOP_val, !mcsema_real_eip !46
  %322 = load i1* %FPU_C2, align 1, !mcsema_real_eip !46
  store i1 %322, i1* %FPU_C2_val, !mcsema_real_eip !46
  %323 = load i1* %FPU_C1, align 1, !mcsema_real_eip !46
  store i1 %323, i1* %FPU_C1_val, !mcsema_real_eip !46
  %324 = load i1* %FPU_C0, align 1, !mcsema_real_eip !46
  store i1 %324, i1* %FPU_C0_val, !mcsema_real_eip !46
  %325 = load i1* %FPU_ES, align 1, !mcsema_real_eip !46
  store i1 %325, i1* %FPU_ES_val, !mcsema_real_eip !46
  %326 = load i1* %FPU_SF, align 1, !mcsema_real_eip !46
  store i1 %326, i1* %FPU_SF_val, !mcsema_real_eip !46
  %327 = load i1* %FPU_PE, align 1, !mcsema_real_eip !46
  store i1 %327, i1* %FPU_PE_val, !mcsema_real_eip !46
  %328 = load i1* %FPU_UE, align 1, !mcsema_real_eip !46
  store i1 %328, i1* %FPU_UE_val, !mcsema_real_eip !46
  %329 = load i1* %FPU_OE, align 1, !mcsema_real_eip !46
  store i1 %329, i1* %FPU_OE_val, !mcsema_real_eip !46
  %330 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !46
  store i1 %330, i1* %FPU_ZE_val, !mcsema_real_eip !46
  %331 = load i1* %FPU_DE, align 1, !mcsema_real_eip !46
  store i1 %331, i1* %FPU_DE_val, !mcsema_real_eip !46
  %332 = load i1* %FPU_IE, align 1, !mcsema_real_eip !46
  store i1 %332, i1* %FPU_IE_val, !mcsema_real_eip !46
  %333 = load i1* %FPU_X, align 1, !mcsema_real_eip !46
  store i1 %333, i1* %FPU_X_val, !mcsema_real_eip !46
  %334 = load i2* %FPU_RC, align 1, !mcsema_real_eip !46
  store i2 %334, i2* %FPU_RC_val, !mcsema_real_eip !46
  %335 = load i2* %FPU_PC, align 1, !mcsema_real_eip !46
  store i2 %335, i2* %FPU_PC_val, !mcsema_real_eip !46
  %336 = load i1* %FPU_PM, align 1, !mcsema_real_eip !46
  store i1 %336, i1* %FPU_PM_val, !mcsema_real_eip !46
  %337 = load i1* %FPU_UM, align 1, !mcsema_real_eip !46
  store i1 %337, i1* %FPU_UM_val, !mcsema_real_eip !46
  %338 = load i1* %FPU_OM, align 1, !mcsema_real_eip !46
  store i1 %338, i1* %FPU_OM_val, !mcsema_real_eip !46
  %339 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !46
  store i1 %339, i1* %FPU_ZM_val, !mcsema_real_eip !46
  %340 = load i1* %FPU_DM, align 1, !mcsema_real_eip !46
  store i1 %340, i1* %FPU_DM_val, !mcsema_real_eip !46
  %341 = load i1* %FPU_IM, align 1, !mcsema_real_eip !46
  store i1 %341, i1* %FPU_IM_val, !mcsema_real_eip !46
  %342 = load i64* %52, align 4
  store i64 %342, i64* %53, align 4
  %343 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !46
  store i16 %343, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !46
  %344 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !46
  store i64 %344, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !46
  %345 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !46
  store i16 %345, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !46
  %346 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !46
  store i64 %346, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !46
  %347 = load i128* %XMM0, align 1, !mcsema_real_eip !46
  store i128 %347, i128* %XMM0_val, !mcsema_real_eip !46
  %348 = load i128* %XMM1, align 1, !mcsema_real_eip !46
  store i128 %348, i128* %XMM1_val, !mcsema_real_eip !46
  %349 = load i128* %XMM2, align 1, !mcsema_real_eip !46
  store i128 %349, i128* %XMM2_val, !mcsema_real_eip !46
  %350 = load i128* %XMM3, align 1, !mcsema_real_eip !46
  store i128 %350, i128* %XMM3_val, !mcsema_real_eip !46
  %351 = load i128* %XMM4, align 1, !mcsema_real_eip !46
  store i128 %351, i128* %XMM4_val, !mcsema_real_eip !46
  %352 = load i128* %XMM5, align 1, !mcsema_real_eip !46
  store i128 %352, i128* %XMM5_val, !mcsema_real_eip !46
  %353 = load i128* %XMM6, align 1, !mcsema_real_eip !46
  store i128 %353, i128* %XMM6_val, !mcsema_real_eip !46
  %354 = load i128* %XMM7, align 1, !mcsema_real_eip !46
  store i128 %354, i128* %XMM7_val, !mcsema_real_eip !46
  %355 = load i128* %XMM8, align 1, !mcsema_real_eip !46
  store i128 %355, i128* %XMM8_val, !mcsema_real_eip !46
  %356 = load i128* %XMM9, align 1, !mcsema_real_eip !46
  store i128 %356, i128* %XMM9_val, !mcsema_real_eip !46
  %357 = load i128* %XMM10, align 1, !mcsema_real_eip !46
  store i128 %357, i128* %XMM10_val, !mcsema_real_eip !46
  %358 = load i128* %XMM11, align 1, !mcsema_real_eip !46
  store i128 %358, i128* %XMM11_val, !mcsema_real_eip !46
  %359 = load i128* %XMM12, align 1, !mcsema_real_eip !46
  store i128 %359, i128* %XMM12_val, !mcsema_real_eip !46
  %360 = load i128* %XMM13, align 1, !mcsema_real_eip !46
  store i128 %360, i128* %XMM13_val, !mcsema_real_eip !46
  %361 = load i128* %XMM14, align 1, !mcsema_real_eip !46
  store i128 %361, i128* %XMM14_val, !mcsema_real_eip !46
  %362 = load i128* %XMM15, align 1, !mcsema_real_eip !46
  store i128 %362, i128* %XMM15_val, !mcsema_real_eip !46
  %363 = load i64* %STACK_BASE, !mcsema_real_eip !46
  store i64 %363, i64* %STACK_BASE_val, !mcsema_real_eip !46
  %364 = load i64* %STACK_LIMIT, !mcsema_real_eip !46
  store i64 %364, i64* %STACK_LIMIT_val, !mcsema_real_eip !46
  %365 = load i64* %RBP_val, !mcsema_real_eip !47
  %366 = add i64 %365, -32, !mcsema_real_eip !47
  %367 = inttoptr i64 %366 to i64*, !mcsema_real_eip !47
  %368 = load i64* %RAX_val, !mcsema_real_eip !47
  store i64 %368, i64* %367, !mcsema_real_eip !47
  %369 = load i64* %RBP_val, !mcsema_real_eip !48
  %370 = add i64 %369, -32, !mcsema_real_eip !48
  %371 = inttoptr i64 %370 to i64*, !mcsema_real_eip !48
  %372 = load i64* %371, !mcsema_real_eip !48
  store i64 %372, i64* %RAX_val, !mcsema_real_eip !48
  %373 = inttoptr i64 %372 to i64*, !mcsema_real_eip !49
  %374 = bitcast i64* %373 to i32*
  %375 = load i32* %374, !mcsema_real_eip !49
  %376 = zext i32 %375 to i64, !mcsema_real_eip !49
  store i64 %376, i64* %RSI_val, !mcsema_real_eip !49
  %377 = load i64* %RBP_val, !mcsema_real_eip !50
  %378 = add i64 %377, -32, !mcsema_real_eip !50
  %379 = inttoptr i64 %378 to i64*, !mcsema_real_eip !50
  %380 = load i64* %379, !mcsema_real_eip !50
  store i64 %380, i64* %RAX_val, !mcsema_real_eip !50
  %381 = add i64 %380, 4, !mcsema_real_eip !51
  %382 = inttoptr i64 %381 to i64*, !mcsema_real_eip !51
  %383 = bitcast i64* %382 to i32*
  %384 = load i32* %383, !mcsema_real_eip !51
  %385 = load i64* %RSI_val, !mcsema_real_eip !51
  %386 = trunc i64 %385 to i32, !mcsema_real_eip !51
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %386, i32 %384)
  %387 = extractvalue { i32, i1 } %uadd, 0
  %388 = xor i32 %387, %384, !mcsema_real_eip !51
  %389 = xor i32 %388, %386, !mcsema_real_eip !51
  %390 = and i32 %389, 16, !mcsema_real_eip !51
  %391 = icmp ne i32 %390, 0, !mcsema_real_eip !51
  store i1 %391, i1* %AF_val, !mcsema_real_eip !51
  %392 = icmp slt i32 %387, 0
  store i1 %392, i1* %SF_val, !mcsema_real_eip !51
  %393 = icmp eq i32 %387, 0, !mcsema_real_eip !51
  store i1 %393, i1* %ZF_val, !mcsema_real_eip !51
  %394 = xor i32 %384, -2147483648, !mcsema_real_eip !51
  %395 = xor i32 %394, %386, !mcsema_real_eip !51
  %396 = and i32 %388, %395, !mcsema_real_eip !51
  %397 = icmp slt i32 %396, 0
  store i1 %397, i1* %OF_val, !mcsema_real_eip !51
  %398 = trunc i32 %387 to i8, !mcsema_real_eip !51
  %399 = tail call i8 @llvm.ctpop.i8(i8 %398), !mcsema_real_eip !51
  %400 = and i8 %399, 1
  %401 = icmp eq i8 %400, 0
  store i1 %401, i1* %PF_val, !mcsema_real_eip !51
  %402 = extractvalue { i32, i1 } %uadd, 1
  store i1 %402, i1* %CF_val, !mcsema_real_eip !51
  %403 = zext i32 %387 to i64, !mcsema_real_eip !51
  store i64 %403, i64* %RSI_val, !mcsema_real_eip !51
  %404 = load i64* %RBP_val, !mcsema_real_eip !52
  %405 = add i64 %404, -32, !mcsema_real_eip !52
  %406 = inttoptr i64 %405 to i64*, !mcsema_real_eip !52
  %407 = load i64* %406, !mcsema_real_eip !52
  store i64 %407, i64* %RAX_val, !mcsema_real_eip !52
  %408 = add i64 %407, 8, !mcsema_real_eip !53
  %409 = inttoptr i64 %408 to i64*, !mcsema_real_eip !53
  %410 = bitcast i64* %409 to i32*
  %411 = load i32* %410, !mcsema_real_eip !53
  %412 = load i64* %RSI_val, !mcsema_real_eip !53
  %413 = trunc i64 %412 to i32, !mcsema_real_eip !53
  %414 = add i32 %413, %411
  %415 = zext i32 %414 to i64, !mcsema_real_eip !53
  store i64 %415, i64* %RSI_val, !mcsema_real_eip !53
  store i64 %415, i64* %RAX_val, !mcsema_real_eip !54
  %416 = load i64* %RSP_val, !mcsema_real_eip !55
  %uadd210 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %416, i64 112)
  %417 = extractvalue { i64, i1 } %uadd210, 0
  %418 = xor i64 %417, %416, !mcsema_real_eip !55
  %419 = and i64 %418, 16
  %420 = icmp eq i64 %419, 0
  store i1 %420, i1* %AF_val, !mcsema_real_eip !55
  %421 = icmp slt i64 %417, 0
  store i1 %421, i1* %SF_val, !mcsema_real_eip !55
  %422 = icmp eq i64 %417, 0, !mcsema_real_eip !55
  store i1 %422, i1* %ZF_val, !mcsema_real_eip !55
  %423 = xor i64 %416, -9223372036854775808, !mcsema_real_eip !55
  %424 = and i64 %418, %423, !mcsema_real_eip !55
  %425 = icmp slt i64 %424, 0
  store i1 %425, i1* %OF_val, !mcsema_real_eip !55
  %426 = trunc i64 %417 to i8, !mcsema_real_eip !55
  %427 = tail call i8 @llvm.ctpop.i8(i8 %426), !mcsema_real_eip !55
  %428 = and i8 %427, 1
  %429 = icmp eq i8 %428, 0
  store i1 %429, i1* %PF_val, !mcsema_real_eip !55
  %430 = extractvalue { i64, i1 } %uadd210, 1
  store i1 %430, i1* %CF_val, !mcsema_real_eip !55
  store i64 %417, i64* %RSP_val, !mcsema_real_eip !55
  %431 = inttoptr i64 %417 to i64*, !mcsema_real_eip !56
  %432 = load i64* %431, !mcsema_real_eip !56
  store i64 %432, i64* %RBP_val, !mcsema_real_eip !56
  %433 = add i64 %417, 16, !mcsema_real_eip !57
  store i64 %433, i64* %RSP_val, !mcsema_real_eip !57
  %434 = load i64* %RAX_val, !mcsema_real_eip !57
  store i64 %434, i64* %RAX, !mcsema_real_eip !57
  %435 = load i64* %RBX_val, !mcsema_real_eip !57
  store i64 %435, i64* %RBX, !mcsema_real_eip !57
  %436 = load i64* %RCX_val, !mcsema_real_eip !57
  store i64 %436, i64* %RCX, !mcsema_real_eip !57
  %437 = load i64* %RDX_val, !mcsema_real_eip !57
  store i64 %437, i64* %RDX, !mcsema_real_eip !57
  %438 = load i64* %RSI_val, !mcsema_real_eip !57
  store i64 %438, i64* %RSI, !mcsema_real_eip !57
  %439 = load i64* %RDI_val, !mcsema_real_eip !57
  store i64 %439, i64* %RDI, !mcsema_real_eip !57
  %440 = load i64* %RSP_val, !mcsema_real_eip !57
  store i64 %440, i64* %RSP, !mcsema_real_eip !57
  %441 = load i64* %RBP_val, !mcsema_real_eip !57
  store i64 %441, i64* %RBP, !mcsema_real_eip !57
  %442 = load i64* %R8_val, !mcsema_real_eip !57
  store i64 %442, i64* %R8, !mcsema_real_eip !57
  %443 = load i64* %R9_val, !mcsema_real_eip !57
  store i64 %443, i64* %R9, !mcsema_real_eip !57
  %444 = load i64* %R10_val, !mcsema_real_eip !57
  store i64 %444, i64* %R10, !mcsema_real_eip !57
  %445 = load i64* %R11_val, !mcsema_real_eip !57
  store i64 %445, i64* %R11, !mcsema_real_eip !57
  %446 = load i64* %R12_val, !mcsema_real_eip !57
  store i64 %446, i64* %R12, !mcsema_real_eip !57
  %447 = load i64* %R13_val, !mcsema_real_eip !57
  store i64 %447, i64* %R13, !mcsema_real_eip !57
  %448 = load i64* %R14_val, !mcsema_real_eip !57
  store i64 %448, i64* %R14, !mcsema_real_eip !57
  %449 = load i64* %R15_val, !mcsema_real_eip !57
  store i64 %449, i64* %R15, !mcsema_real_eip !57
  %450 = load i64* %RIP_val, !mcsema_real_eip !57
  store i64 %450, i64* %RIP, !mcsema_real_eip !57
  %451 = load i1* %CF_val, !mcsema_real_eip !57
  store i1 %451, i1* %CF, align 1, !mcsema_real_eip !57
  %452 = load i1* %PF_val, !mcsema_real_eip !57
  store i1 %452, i1* %PF, align 1, !mcsema_real_eip !57
  %453 = load i1* %AF_val, !mcsema_real_eip !57
  store i1 %453, i1* %AF, align 1, !mcsema_real_eip !57
  %454 = load i1* %ZF_val, !mcsema_real_eip !57
  store i1 %454, i1* %ZF, align 1, !mcsema_real_eip !57
  %455 = load i1* %SF_val, !mcsema_real_eip !57
  store i1 %455, i1* %SF, align 1, !mcsema_real_eip !57
  %456 = load i1* %OF_val, !mcsema_real_eip !57
  store i1 %456, i1* %OF, align 1, !mcsema_real_eip !57
  %457 = load i1* %DF_val, !mcsema_real_eip !57
  store i1 %457, i1* %DF, align 1, !mcsema_real_eip !57
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !57
  %458 = load i1* %FPU_B_val, !mcsema_real_eip !57
  store i1 %458, i1* %FPU_B, align 1, !mcsema_real_eip !57
  %459 = load i1* %FPU_C3_val, !mcsema_real_eip !57
  store i1 %459, i1* %FPU_C3, align 1, !mcsema_real_eip !57
  %460 = load i3* %FPU_TOP_val, !mcsema_real_eip !57
  store i3 %460, i3* %FPU_TOP, align 1, !mcsema_real_eip !57
  %461 = load i1* %FPU_C2_val, !mcsema_real_eip !57
  store i1 %461, i1* %FPU_C2, align 1, !mcsema_real_eip !57
  %462 = load i1* %FPU_C1_val, !mcsema_real_eip !57
  store i1 %462, i1* %FPU_C1, align 1, !mcsema_real_eip !57
  %463 = load i1* %FPU_C0_val, !mcsema_real_eip !57
  store i1 %463, i1* %FPU_C0, align 1, !mcsema_real_eip !57
  %464 = load i1* %FPU_ES_val, !mcsema_real_eip !57
  store i1 %464, i1* %FPU_ES, align 1, !mcsema_real_eip !57
  %465 = load i1* %FPU_SF_val, !mcsema_real_eip !57
  store i1 %465, i1* %FPU_SF, align 1, !mcsema_real_eip !57
  %466 = load i1* %FPU_PE_val, !mcsema_real_eip !57
  store i1 %466, i1* %FPU_PE, align 1, !mcsema_real_eip !57
  %467 = load i1* %FPU_UE_val, !mcsema_real_eip !57
  store i1 %467, i1* %FPU_UE, align 1, !mcsema_real_eip !57
  %468 = load i1* %FPU_OE_val, !mcsema_real_eip !57
  store i1 %468, i1* %FPU_OE, align 1, !mcsema_real_eip !57
  %469 = load i1* %FPU_ZE_val, !mcsema_real_eip !57
  store i1 %469, i1* %FPU_ZE, align 1, !mcsema_real_eip !57
  %470 = load i1* %FPU_DE_val, !mcsema_real_eip !57
  store i1 %470, i1* %FPU_DE, align 1, !mcsema_real_eip !57
  %471 = load i1* %FPU_IE_val, !mcsema_real_eip !57
  store i1 %471, i1* %FPU_IE, align 1, !mcsema_real_eip !57
  %472 = load i1* %FPU_X_val, !mcsema_real_eip !57
  store i1 %472, i1* %FPU_X, align 1, !mcsema_real_eip !57
  %473 = load i2* %FPU_RC_val, !mcsema_real_eip !57
  store i2 %473, i2* %FPU_RC, align 1, !mcsema_real_eip !57
  %474 = load i2* %FPU_PC_val, !mcsema_real_eip !57
  store i2 %474, i2* %FPU_PC, align 1, !mcsema_real_eip !57
  %475 = load i1* %FPU_PM_val, !mcsema_real_eip !57
  store i1 %475, i1* %FPU_PM, align 1, !mcsema_real_eip !57
  %476 = load i1* %FPU_UM_val, !mcsema_real_eip !57
  store i1 %476, i1* %FPU_UM, align 1, !mcsema_real_eip !57
  %477 = load i1* %FPU_OM_val, !mcsema_real_eip !57
  store i1 %477, i1* %FPU_OM, align 1, !mcsema_real_eip !57
  %478 = load i1* %FPU_ZM_val, !mcsema_real_eip !57
  store i1 %478, i1* %FPU_ZM, align 1, !mcsema_real_eip !57
  %479 = load i1* %FPU_DM_val, !mcsema_real_eip !57
  store i1 %479, i1* %FPU_DM, align 1, !mcsema_real_eip !57
  %480 = load i1* %FPU_IM_val, !mcsema_real_eip !57
  store i1 %480, i1* %FPU_IM, align 1, !mcsema_real_eip !57
  %481 = load i64* %53, align 4
  store i64 %481, i64* %52, align 4
  %482 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !57
  store i16 %482, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !57
  %483 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !57
  store i64 %483, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !57
  %484 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !57
  store i16 %484, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !57
  %485 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !57
  store i64 %485, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !57
  %486 = load i128* %XMM0_val, !mcsema_real_eip !57
  store i128 %486, i128* %XMM0, align 1, !mcsema_real_eip !57
  %487 = load i128* %XMM1_val, !mcsema_real_eip !57
  store i128 %487, i128* %XMM1, align 1, !mcsema_real_eip !57
  %488 = load i128* %XMM2_val, !mcsema_real_eip !57
  store i128 %488, i128* %XMM2, align 1, !mcsema_real_eip !57
  %489 = load i128* %XMM3_val, !mcsema_real_eip !57
  store i128 %489, i128* %XMM3, align 1, !mcsema_real_eip !57
  %490 = load i128* %XMM4_val, !mcsema_real_eip !57
  store i128 %490, i128* %XMM4, align 1, !mcsema_real_eip !57
  %491 = load i128* %XMM5_val, !mcsema_real_eip !57
  store i128 %491, i128* %XMM5, align 1, !mcsema_real_eip !57
  %492 = load i128* %XMM6_val, !mcsema_real_eip !57
  store i128 %492, i128* %XMM6, align 1, !mcsema_real_eip !57
  %493 = load i128* %XMM7_val, !mcsema_real_eip !57
  store i128 %493, i128* %XMM7, align 1, !mcsema_real_eip !57
  %494 = load i128* %XMM8_val, !mcsema_real_eip !57
  store i128 %494, i128* %XMM8, align 1, !mcsema_real_eip !57
  %495 = load i128* %XMM9_val, !mcsema_real_eip !57
  store i128 %495, i128* %XMM9, align 1, !mcsema_real_eip !57
  %496 = load i128* %XMM10_val, !mcsema_real_eip !57
  store i128 %496, i128* %XMM10, align 1, !mcsema_real_eip !57
  %497 = load i128* %XMM11_val, !mcsema_real_eip !57
  store i128 %497, i128* %XMM11, align 1, !mcsema_real_eip !57
  %498 = load i128* %XMM12_val, !mcsema_real_eip !57
  store i128 %498, i128* %XMM12, align 1, !mcsema_real_eip !57
  %499 = load i128* %XMM13_val, !mcsema_real_eip !57
  store i128 %499, i128* %XMM13, align 1, !mcsema_real_eip !57
  %500 = load i128* %XMM14_val, !mcsema_real_eip !57
  store i128 %500, i128* %XMM14, align 1, !mcsema_real_eip !57
  %501 = load i128* %XMM15_val, !mcsema_real_eip !57
  store i128 %501, i128* %XMM15, align 1, !mcsema_real_eip !57
  %502 = load i64* %STACK_BASE_val, !mcsema_real_eip !57
  store i64 %502, i64* %STACK_BASE, align 1, !mcsema_real_eip !57
  %503 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !57
  store i64 %503, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !57
  ret void, !mcsema_real_eip !57
}

define internal x86_64_sysvcc void @sub_0(%struct.regs*) {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !58
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !58
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !58
  %XMM15_val = alloca i128, !mcsema_real_eip !58
  %XMM14_val = alloca i128, !mcsema_real_eip !58
  %XMM13_val = alloca i128, !mcsema_real_eip !58
  %XMM12_val = alloca i128, !mcsema_real_eip !58
  %XMM11_val = alloca i128, !mcsema_real_eip !58
  %XMM10_val = alloca i128, !mcsema_real_eip !58
  %XMM9_val = alloca i128, !mcsema_real_eip !58
  %XMM8_val = alloca i128, !mcsema_real_eip !58
  %XMM7_val = alloca i128, !mcsema_real_eip !58
  %XMM6_val = alloca i128, !mcsema_real_eip !58
  %XMM5_val = alloca i128, !mcsema_real_eip !58
  %XMM4_val = alloca i128, !mcsema_real_eip !58
  %XMM3_val = alloca i128, !mcsema_real_eip !58
  %XMM2_val = alloca i128, !mcsema_real_eip !58
  %XMM1_val = alloca i128, !mcsema_real_eip !58
  %XMM0_val = alloca i128, !mcsema_real_eip !58
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !58
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !58
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !58
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !58
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !58
  %FPU_IM_val = alloca i1, !mcsema_real_eip !58
  %FPU_DM_val = alloca i1, !mcsema_real_eip !58
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !58
  %FPU_OM_val = alloca i1, !mcsema_real_eip !58
  %FPU_UM_val = alloca i1, !mcsema_real_eip !58
  %FPU_PM_val = alloca i1, !mcsema_real_eip !58
  %FPU_PC_val = alloca i2, !mcsema_real_eip !58
  %FPU_RC_val = alloca i2, !mcsema_real_eip !58
  %FPU_X_val = alloca i1, !mcsema_real_eip !58
  %FPU_IE_val = alloca i1, !mcsema_real_eip !58
  %FPU_DE_val = alloca i1, !mcsema_real_eip !58
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !58
  %FPU_OE_val = alloca i1, !mcsema_real_eip !58
  %FPU_UE_val = alloca i1, !mcsema_real_eip !58
  %FPU_PE_val = alloca i1, !mcsema_real_eip !58
  %FPU_SF_val = alloca i1, !mcsema_real_eip !58
  %FPU_ES_val = alloca i1, !mcsema_real_eip !58
  %FPU_C0_val = alloca i1, !mcsema_real_eip !58
  %FPU_C1_val = alloca i1, !mcsema_real_eip !58
  %FPU_C2_val = alloca i1, !mcsema_real_eip !58
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !58
  %FPU_C3_val = alloca i1, !mcsema_real_eip !58
  %FPU_B_val = alloca i1, !mcsema_real_eip !58
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !58
  %DF_val = alloca i1, !mcsema_real_eip !58
  %OF_val = alloca i1, !mcsema_real_eip !58
  %SF_val = alloca i1, !mcsema_real_eip !58
  %CF_val = alloca i1, !mcsema_real_eip !58
  %AF_val = alloca i1, !mcsema_real_eip !58
  %PF_val = alloca i1, !mcsema_real_eip !58
  %ZF_val = alloca i1, !mcsema_real_eip !58
  %RIP_val = alloca i64, !mcsema_real_eip !58
  %R14_val = alloca i64, !mcsema_real_eip !58
  %R13_val = alloca i64, !mcsema_real_eip !58
  %R12_val = alloca i64, !mcsema_real_eip !58
  %R11_val = alloca i64, !mcsema_real_eip !58
  %R10_val = alloca i64, !mcsema_real_eip !58
  %R9_val = alloca i64, !mcsema_real_eip !58
  %R8_val = alloca i64, !mcsema_real_eip !58
  %RSP_val = alloca i64, !mcsema_real_eip !58
  %RBP_val = alloca i64, !mcsema_real_eip !58
  %RDI_val = alloca i64, !mcsema_real_eip !58
  %RSI_val = alloca i64, !mcsema_real_eip !58
  %RDX_val = alloca i64, !mcsema_real_eip !58
  %RCX_val = alloca i64, !mcsema_real_eip !58
  %RBX_val = alloca i64, !mcsema_real_eip !58
  %RAX_val = alloca i64, !mcsema_real_eip !58
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !58
  %1 = load i64* %RAX, !mcsema_real_eip !58
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !58
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !58
  %2 = load i64* %RBX, !mcsema_real_eip !58
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !58
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !58
  %3 = load i64* %RCX, !mcsema_real_eip !58
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !58
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !58
  %4 = load i64* %RDX, !mcsema_real_eip !58
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !58
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !58
  %5 = load i64* %RSI, !mcsema_real_eip !58
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !58
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !58
  %6 = load i64* %RDI, !mcsema_real_eip !58
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !58
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !58
  %7 = load i64* %RSP, !mcsema_real_eip !58
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !58
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !58
  %8 = load i64* %RBP, !mcsema_real_eip !58
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !58
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !58
  %9 = load i64* %R8, !mcsema_real_eip !58
  store i64 %9, i64* %R8_val, !mcsema_real_eip !58
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !58
  %10 = load i64* %R9, !mcsema_real_eip !58
  store i64 %10, i64* %R9_val, !mcsema_real_eip !58
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !58
  %11 = load i64* %R10, !mcsema_real_eip !58
  store i64 %11, i64* %R10_val, !mcsema_real_eip !58
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !58
  %12 = load i64* %R11, !mcsema_real_eip !58
  store i64 %12, i64* %R11_val, !mcsema_real_eip !58
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !58
  %13 = load i64* %R12, !mcsema_real_eip !58
  store i64 %13, i64* %R12_val, !mcsema_real_eip !58
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !58
  %14 = load i64* %R13, !mcsema_real_eip !58
  store i64 %14, i64* %R13_val, !mcsema_real_eip !58
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !58
  %15 = load i64* %R14, !mcsema_real_eip !58
  store i64 %15, i64* %R14_val, !mcsema_real_eip !58
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !58
  %16 = load i64* %R15, !mcsema_real_eip !58
  store i64 %16, i64* %R15_val, !mcsema_real_eip !58
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !58
  %17 = load i64* %RIP, !mcsema_real_eip !58
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !58
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !58
  %18 = load i1* %CF, align 1, !mcsema_real_eip !58
  store i1 %18, i1* %CF_val, !mcsema_real_eip !58
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !58
  %19 = load i1* %PF, align 1, !mcsema_real_eip !58
  store i1 %19, i1* %PF_val, !mcsema_real_eip !58
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !58
  %20 = load i1* %AF, align 1, !mcsema_real_eip !58
  store i1 %20, i1* %AF_val, !mcsema_real_eip !58
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !58
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !58
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !58
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !58
  %22 = load i1* %SF, align 1, !mcsema_real_eip !58
  store i1 %22, i1* %SF_val, !mcsema_real_eip !58
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !58
  %23 = load i1* %OF, align 1, !mcsema_real_eip !58
  store i1 %23, i1* %OF_val, !mcsema_real_eip !58
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !58
  %24 = load i1* %DF, align 1, !mcsema_real_eip !58
  store i1 %24, i1* %DF_val, !mcsema_real_eip !58
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !58
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !58
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !58
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !58
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !58
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !58
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !58
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !58
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !58
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !58
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !58
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !58
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !58
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !58
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !58
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !58
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !58
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !58
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !58
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !58
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !58
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !58
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !58
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !58
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !58
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !58
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !58
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !58
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !58
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !58
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !58
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !58
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !58
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !58
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !58
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !58
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !58
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !58
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !58
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !58
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !58
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !58
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !58
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !58
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !58
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !58
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !58
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !58
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !58
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !58
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !58
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !58
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !58
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !58
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !58
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !58
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !58
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !58
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !58
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !58
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !58
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !58
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !58
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !58
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !58
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !58
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !58
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !58
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !58
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !58
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !58
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !58
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !58
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !58
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !58
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !58
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !58
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !58
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !58
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !58
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !58
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !58
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !58
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !58
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !58
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !58
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !58
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !58
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !58
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !58
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !58
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !58
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !58
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !58
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !58
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !58
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !58
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !58
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !58
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !58
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !58
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !58
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !58
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !58
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !58
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !58
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !58
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !58
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !58
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !58
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !58
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !58
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !58
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !58
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !58
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !58
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !58
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !58
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !58
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !58
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !58
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !58
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !58
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !58
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !58
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !58
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !58
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !58
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !58
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !58
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !58
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !58
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !58
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !58
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !58
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !58
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !58
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !58
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !58
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !58
  %77 = load i64* %RBP_val, !mcsema_real_eip !58
  %78 = load i64* %RSP_val, !mcsema_real_eip !58
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !58
  store i64 %77, i64* %80, !mcsema_real_eip !58
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !59
  %81 = load i64* %R14_val, !mcsema_real_eip !60
  %82 = add i64 %78, -16
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !60
  store i64 %81, i64* %83, !mcsema_real_eip !60
  %84 = load i64* %RBX_val, !mcsema_real_eip !61
  %85 = add i64 %78, -24
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !61
  store i64 %84, i64* %86, !mcsema_real_eip !61
  %87 = add i64 %78, -120
  %88 = xor i64 %87, %85, !mcsema_real_eip !62
  %89 = and i64 %88, 16, !mcsema_real_eip !62
  %90 = icmp ne i64 %89, 0, !mcsema_real_eip !62
  store i1 %90, i1* %AF_val, !mcsema_real_eip !62
  %91 = trunc i64 %87 to i8, !mcsema_real_eip !62
  %92 = tail call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !62
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  store i1 %94, i1* %PF_val, !mcsema_real_eip !62
  %95 = icmp eq i64 %87, 0, !mcsema_real_eip !62
  store i1 %95, i1* %ZF_val, !mcsema_real_eip !62
  %96 = icmp slt i64 %87, 0
  store i1 %96, i1* %SF_val, !mcsema_real_eip !62
  %97 = icmp ult i64 %85, 96, !mcsema_real_eip !62
  store i1 %97, i1* %CF_val, !mcsema_real_eip !62
  %98 = and i64 %88, %85, !mcsema_real_eip !62
  %99 = icmp slt i64 %98, 0
  store i1 %99, i1* %OF_val, !mcsema_real_eip !62
  store i64 %87, i64* %RSP_val, !mcsema_real_eip !62
  %100 = load i64* %RBP_val, !mcsema_real_eip !63
  %101 = add i64 %100, 48, !mcsema_real_eip !63
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !63
  %103 = load i64* %102, !mcsema_real_eip !63
  store i64 %103, i64* %RAX_val, !mcsema_real_eip !63
  %104 = add i64 %100, 40, !mcsema_real_eip !64
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !64
  %106 = load i64* %105, !mcsema_real_eip !64
  store i64 %106, i64* %R10_val, !mcsema_real_eip !64
  %107 = load i64* %RBP_val, !mcsema_real_eip !65
  %108 = add i64 %107, 24, !mcsema_real_eip !65
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !65
  %110 = ptrtoint i64* %109 to i64, !mcsema_real_eip !65
  store i64 %110, i64* %R11_val, !mcsema_real_eip !65
  %111 = add i64 %107, 16, !mcsema_real_eip !66
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !66
  %113 = bitcast i64* %112 to i32*
  %114 = load i32* %113, !mcsema_real_eip !66
  %115 = zext i32 %114 to i64, !mcsema_real_eip !66
  store i64 %115, i64* %RBX_val, !mcsema_real_eip !66
  store i64 12, i64* %R14_val, !mcsema_real_eip !67
  %116 = load i64* %RBP_val, !mcsema_real_eip !68
  %117 = add i64 %116, -48, !mcsema_real_eip !68
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !68
  %119 = load i64* %RDI_val, !mcsema_real_eip !68
  store i64 %119, i64* %118, !mcsema_real_eip !68
  %120 = load i64* %RBP_val, !mcsema_real_eip !69
  %121 = add i64 %120, -40, !mcsema_real_eip !69
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !69
  %123 = load i64* %RSI_val, !mcsema_real_eip !69
  %124 = trunc i64 %123 to i32, !mcsema_real_eip !69
  %125 = bitcast i64* %122 to i32*
  store i32 %124, i32* %125, !mcsema_real_eip !69
  %126 = load i64* %RBP_val, !mcsema_real_eip !70
  %127 = add i64 %126, -48, !mcsema_real_eip !70
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !70
  %129 = load i64* %128, !mcsema_real_eip !70
  store i64 %129, i64* %RDI_val, !mcsema_real_eip !70
  %130 = add i64 %126, -32, !mcsema_real_eip !71
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !71
  store i64 %129, i64* %131, !mcsema_real_eip !71
  %132 = load i64* %RBP_val, !mcsema_real_eip !72
  %133 = add i64 %132, -40, !mcsema_real_eip !72
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !72
  %135 = bitcast i64* %134 to i32*
  %136 = load i32* %135, !mcsema_real_eip !72
  %137 = zext i32 %136 to i64, !mcsema_real_eip !72
  store i64 %137, i64* %RSI_val, !mcsema_real_eip !72
  %138 = load i64* %RBP_val, !mcsema_real_eip !73
  %139 = add i64 %138, -24, !mcsema_real_eip !73
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !73
  %141 = bitcast i64* %140 to i32*
  store i32 %136, i32* %141, !mcsema_real_eip !73
  %142 = load i64* %RBP_val, !mcsema_real_eip !74
  %143 = add i64 %142, -56, !mcsema_real_eip !74
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !74
  %145 = load i64* %RDX_val, !mcsema_real_eip !74
  store i64 %145, i64* %144, !mcsema_real_eip !74
  %146 = load i64* %RBP_val, !mcsema_real_eip !75
  %147 = add i64 %146, -64, !mcsema_real_eip !75
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !75
  %149 = load i64* %RCX_val, !mcsema_real_eip !75
  store i64 %149, i64* %148, !mcsema_real_eip !75
  %150 = load i64* %RBP_val, !mcsema_real_eip !76
  %151 = add i64 %150, -68, !mcsema_real_eip !76
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !76
  %153 = load i64* %R8_val, !mcsema_real_eip !76
  %154 = trunc i64 %153 to i32, !mcsema_real_eip !76
  %155 = bitcast i64* %152 to i32*
  store i32 %154, i32* %155, !mcsema_real_eip !76
  %156 = load i64* %RBP_val, !mcsema_real_eip !77
  %157 = add i64 %156, -72, !mcsema_real_eip !77
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !77
  %159 = load i64* %R9_val, !mcsema_real_eip !77
  %160 = trunc i64 %159 to i32, !mcsema_real_eip !77
  %161 = bitcast i64* %158 to i32*
  store i32 %160, i32* %161, !mcsema_real_eip !77
  %162 = load i64* %RBP_val, !mcsema_real_eip !78
  %163 = add i64 %162, -76, !mcsema_real_eip !78
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !78
  %165 = load i64* %RBX_val, !mcsema_real_eip !78
  %166 = trunc i64 %165 to i32, !mcsema_real_eip !78
  %167 = bitcast i64* %164 to i32*
  store i32 %166, i32* %167, !mcsema_real_eip !78
  %168 = load i64* %RBP_val, !mcsema_real_eip !79
  %169 = add i64 %168, -88, !mcsema_real_eip !79
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !79
  %171 = load i64* %R10_val, !mcsema_real_eip !79
  store i64 %171, i64* %170, !mcsema_real_eip !79
  %172 = load i64* %RBP_val, !mcsema_real_eip !80
  %173 = add i64 %172, -96, !mcsema_real_eip !80
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !80
  %175 = load i64* %RAX_val, !mcsema_real_eip !80
  store i64 %175, i64* %174, !mcsema_real_eip !80
  %176 = load i64* %R14_val, !mcsema_real_eip !81
  store i64 %176, i64* %RDI_val, !mcsema_real_eip !81
  %177 = load i64* %RBP_val, !mcsema_real_eip !82
  %178 = add i64 %177, -112, !mcsema_real_eip !82
  %179 = inttoptr i64 %178 to i64*, !mcsema_real_eip !82
  %180 = load i64* %R11_val, !mcsema_real_eip !82
  store i64 %180, i64* %179, !mcsema_real_eip !82
  %181 = load i64* %RDI_val, !mcsema_real_eip !83
  %182 = tail call x86_64_sysvcc i64 @malloc(i64 %181), !mcsema_real_eip !83
  store i64 %182, i64* %RAX_val, !mcsema_real_eip !83
  %183 = load i64* %RBP_val, !mcsema_real_eip !84
  %184 = add i64 %183, -104, !mcsema_real_eip !84
  %185 = inttoptr i64 %184 to i64*, !mcsema_real_eip !84
  store i64 %182, i64* %185, !mcsema_real_eip !84
  %186 = load i64* %RBP_val, !mcsema_real_eip !85
  %187 = add i64 %186, -32, !mcsema_real_eip !85
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !85
  %189 = bitcast i64* %188 to i32*
  %190 = load i32* %189, !mcsema_real_eip !85
  %191 = zext i32 %190 to i64, !mcsema_real_eip !85
  store i64 %191, i64* %RSI_val, !mcsema_real_eip !85
  %192 = load i64* %RBP_val, !mcsema_real_eip !86
  %193 = add i64 %192, -56, !mcsema_real_eip !86
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !86
  %195 = load i64* %194, !mcsema_real_eip !86
  store i64 %195, i64* %RAX_val, !mcsema_real_eip !86
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !87
  %197 = bitcast i64* %196 to i32*
  %198 = load i32* %197, !mcsema_real_eip !87
  %199 = load i64* %RSI_val, !mcsema_real_eip !87
  %200 = trunc i64 %199 to i32, !mcsema_real_eip !87
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %200, i32 %198)
  %201 = extractvalue { i32, i1 } %uadd, 0
  %202 = xor i32 %201, %198, !mcsema_real_eip !87
  %203 = xor i32 %202, %200, !mcsema_real_eip !87
  %204 = and i32 %203, 16, !mcsema_real_eip !87
  %205 = icmp ne i32 %204, 0, !mcsema_real_eip !87
  store i1 %205, i1* %AF_val, !mcsema_real_eip !87
  %206 = icmp slt i32 %201, 0
  store i1 %206, i1* %SF_val, !mcsema_real_eip !87
  %207 = icmp eq i32 %201, 0, !mcsema_real_eip !87
  store i1 %207, i1* %ZF_val, !mcsema_real_eip !87
  %208 = xor i32 %198, -2147483648, !mcsema_real_eip !87
  %209 = xor i32 %208, %200, !mcsema_real_eip !87
  %210 = and i32 %202, %209, !mcsema_real_eip !87
  %211 = icmp slt i32 %210, 0
  store i1 %211, i1* %OF_val, !mcsema_real_eip !87
  %212 = trunc i32 %201 to i8, !mcsema_real_eip !87
  %213 = tail call i8 @llvm.ctpop.i8(i8 %212), !mcsema_real_eip !87
  %214 = and i8 %213, 1
  %215 = icmp eq i8 %214, 0
  store i1 %215, i1* %PF_val, !mcsema_real_eip !87
  %216 = extractvalue { i32, i1 } %uadd, 1
  store i1 %216, i1* %CF_val, !mcsema_real_eip !87
  %217 = zext i32 %201 to i64, !mcsema_real_eip !87
  store i64 %217, i64* %RSI_val, !mcsema_real_eip !87
  %218 = load i64* %RBP_val, !mcsema_real_eip !88
  %219 = add i64 %218, -64, !mcsema_real_eip !88
  %220 = inttoptr i64 %219 to i64*, !mcsema_real_eip !88
  %221 = load i64* %220, !mcsema_real_eip !88
  store i64 %221, i64* %RAX_val, !mcsema_real_eip !88
  %222 = inttoptr i64 %221 to i64*, !mcsema_real_eip !89
  %223 = bitcast i64* %222 to i32*
  %224 = load i32* %223, !mcsema_real_eip !89
  %225 = load i64* %RSI_val, !mcsema_real_eip !89
  %226 = trunc i64 %225 to i32, !mcsema_real_eip !89
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %226, i32 %224)
  %227 = extractvalue { i32, i1 } %uadd70, 0
  %228 = xor i32 %227, %224, !mcsema_real_eip !89
  %229 = xor i32 %228, %226, !mcsema_real_eip !89
  %230 = and i32 %229, 16, !mcsema_real_eip !89
  %231 = icmp ne i32 %230, 0, !mcsema_real_eip !89
  store i1 %231, i1* %AF_val, !mcsema_real_eip !89
  %232 = icmp slt i32 %227, 0
  store i1 %232, i1* %SF_val, !mcsema_real_eip !89
  %233 = icmp eq i32 %227, 0, !mcsema_real_eip !89
  store i1 %233, i1* %ZF_val, !mcsema_real_eip !89
  %234 = xor i32 %224, -2147483648, !mcsema_real_eip !89
  %235 = xor i32 %234, %226, !mcsema_real_eip !89
  %236 = and i32 %228, %235, !mcsema_real_eip !89
  %237 = icmp slt i32 %236, 0
  store i1 %237, i1* %OF_val, !mcsema_real_eip !89
  %238 = trunc i32 %227 to i8, !mcsema_real_eip !89
  %239 = tail call i8 @llvm.ctpop.i8(i8 %238), !mcsema_real_eip !89
  %240 = and i8 %239, 1
  %241 = icmp eq i8 %240, 0
  store i1 %241, i1* %PF_val, !mcsema_real_eip !89
  %242 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %242, i1* %CF_val, !mcsema_real_eip !89
  %243 = zext i32 %227 to i64, !mcsema_real_eip !89
  store i64 %243, i64* %RSI_val, !mcsema_real_eip !89
  %244 = load i64* %RBP_val, !mcsema_real_eip !90
  %245 = add i64 %244, -112, !mcsema_real_eip !90
  %246 = inttoptr i64 %245 to i64*, !mcsema_real_eip !90
  %247 = load i64* %246, !mcsema_real_eip !90
  store i64 %247, i64* %RAX_val, !mcsema_real_eip !90
  %248 = inttoptr i64 %247 to i64*, !mcsema_real_eip !91
  %249 = bitcast i64* %248 to i32*
  %250 = load i32* %249, !mcsema_real_eip !91
  %251 = zext i32 %250 to i64, !mcsema_real_eip !91
  store i64 %251, i64* %R8_val, !mcsema_real_eip !91
  %252 = load i64* %RBP_val, !mcsema_real_eip !92
  %253 = add i64 %252, -88, !mcsema_real_eip !92
  %254 = inttoptr i64 %253 to i64*, !mcsema_real_eip !92
  %255 = load i64* %254, !mcsema_real_eip !92
  store i64 %255, i64* %RCX_val, !mcsema_real_eip !92
  %256 = inttoptr i64 %255 to i64*, !mcsema_real_eip !93
  %257 = bitcast i64* %256 to i32*
  %258 = load i32* %257, !mcsema_real_eip !93
  %259 = load i64* %R8_val, !mcsema_real_eip !93
  %260 = trunc i64 %259 to i32, !mcsema_real_eip !93
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %260, i32 %258)
  %261 = extractvalue { i32, i1 } %uadd71, 0
  %262 = xor i32 %261, %258, !mcsema_real_eip !93
  %263 = xor i32 %262, %260, !mcsema_real_eip !93
  %264 = and i32 %263, 16, !mcsema_real_eip !93
  %265 = icmp ne i32 %264, 0, !mcsema_real_eip !93
  store i1 %265, i1* %AF_val, !mcsema_real_eip !93
  %266 = icmp slt i32 %261, 0
  store i1 %266, i1* %SF_val, !mcsema_real_eip !93
  %267 = icmp eq i32 %261, 0, !mcsema_real_eip !93
  store i1 %267, i1* %ZF_val, !mcsema_real_eip !93
  %268 = xor i32 %258, -2147483648, !mcsema_real_eip !93
  %269 = xor i32 %268, %260, !mcsema_real_eip !93
  %270 = and i32 %262, %269, !mcsema_real_eip !93
  %271 = icmp slt i32 %270, 0
  store i1 %271, i1* %OF_val, !mcsema_real_eip !93
  %272 = trunc i32 %261 to i8, !mcsema_real_eip !93
  %273 = tail call i8 @llvm.ctpop.i8(i8 %272), !mcsema_real_eip !93
  %274 = and i8 %273, 1
  %275 = icmp eq i8 %274, 0
  store i1 %275, i1* %PF_val, !mcsema_real_eip !93
  %276 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %276, i1* %CF_val, !mcsema_real_eip !93
  %277 = zext i32 %261 to i64, !mcsema_real_eip !93
  store i64 %277, i64* %R8_val, !mcsema_real_eip !93
  %278 = load i64* %RBP_val, !mcsema_real_eip !94
  %279 = add i64 %278, -96, !mcsema_real_eip !94
  %280 = inttoptr i64 %279 to i64*, !mcsema_real_eip !94
  %281 = load i64* %280, !mcsema_real_eip !94
  store i64 %281, i64* %RCX_val, !mcsema_real_eip !94
  %282 = inttoptr i64 %281 to i64*, !mcsema_real_eip !95
  %283 = bitcast i64* %282 to i32*
  %284 = load i32* %283, !mcsema_real_eip !95
  %285 = load i64* %R8_val, !mcsema_real_eip !95
  %286 = trunc i64 %285 to i32, !mcsema_real_eip !95
  %287 = add i32 %286, %284
  %288 = zext i32 %287 to i64, !mcsema_real_eip !95
  store i64 %288, i64* %R8_val, !mcsema_real_eip !95
  %289 = load i64* %RSI_val, !mcsema_real_eip !96
  %290 = trunc i64 %289 to i32, !mcsema_real_eip !96
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %287, i32 %290)
  %291 = extractvalue { i32, i1 } %uadd73, 0
  %292 = xor i32 %291, %290, !mcsema_real_eip !96
  %293 = xor i32 %292, %287, !mcsema_real_eip !96
  %294 = and i32 %293, 16, !mcsema_real_eip !96
  %295 = icmp ne i32 %294, 0, !mcsema_real_eip !96
  store i1 %295, i1* %AF_val, !mcsema_real_eip !96
  %296 = icmp slt i32 %291, 0
  store i1 %296, i1* %SF_val, !mcsema_real_eip !96
  %297 = icmp eq i32 %291, 0, !mcsema_real_eip !96
  store i1 %297, i1* %ZF_val, !mcsema_real_eip !96
  %298 = xor i32 %287, -2147483648, !mcsema_real_eip !96
  %299 = xor i32 %298, %290, !mcsema_real_eip !96
  %300 = and i32 %292, %299, !mcsema_real_eip !96
  %301 = icmp slt i32 %300, 0
  store i1 %301, i1* %OF_val, !mcsema_real_eip !96
  %302 = trunc i32 %291 to i8, !mcsema_real_eip !96
  %303 = tail call i8 @llvm.ctpop.i8(i8 %302), !mcsema_real_eip !96
  %304 = and i8 %303, 1
  %305 = icmp eq i8 %304, 0
  store i1 %305, i1* %PF_val, !mcsema_real_eip !96
  %306 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %306, i1* %CF_val, !mcsema_real_eip !96
  %307 = zext i32 %291 to i64, !mcsema_real_eip !96
  store i64 %307, i64* %RSI_val, !mcsema_real_eip !96
  %308 = load i64* %RBP_val, !mcsema_real_eip !97
  %309 = add i64 %308, -104, !mcsema_real_eip !97
  %310 = inttoptr i64 %309 to i64*, !mcsema_real_eip !97
  %311 = load i64* %310, !mcsema_real_eip !97
  store i64 %311, i64* %RCX_val, !mcsema_real_eip !97
  %312 = inttoptr i64 %311 to i64*, !mcsema_real_eip !98
  %313 = load i64* %RSI_val, !mcsema_real_eip !98
  %314 = trunc i64 %313 to i32, !mcsema_real_eip !98
  %315 = bitcast i64* %312 to i32*
  store i32 %314, i32* %315, !mcsema_real_eip !98
  %316 = load i64* %RBP_val, !mcsema_real_eip !99
  %317 = add i64 %316, -28, !mcsema_real_eip !99
  %318 = inttoptr i64 %317 to i64*, !mcsema_real_eip !99
  %319 = bitcast i64* %318 to i32*
  %320 = load i32* %319, !mcsema_real_eip !99
  %321 = zext i32 %320 to i64, !mcsema_real_eip !99
  store i64 %321, i64* %RSI_val, !mcsema_real_eip !99
  %322 = load i64* %RBP_val, !mcsema_real_eip !100
  %323 = add i64 %322, -56, !mcsema_real_eip !100
  %324 = inttoptr i64 %323 to i64*, !mcsema_real_eip !100
  %325 = load i64* %324, !mcsema_real_eip !100
  store i64 %325, i64* %RCX_val, !mcsema_real_eip !100
  %326 = add i64 %325, 4, !mcsema_real_eip !101
  %327 = inttoptr i64 %326 to i64*, !mcsema_real_eip !101
  %328 = bitcast i64* %327 to i32*
  %329 = load i32* %328, !mcsema_real_eip !101
  %330 = load i64* %RSI_val, !mcsema_real_eip !101
  %331 = trunc i64 %330 to i32, !mcsema_real_eip !101
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %331, i32 %329)
  %332 = extractvalue { i32, i1 } %uadd74, 0
  %333 = xor i32 %332, %329, !mcsema_real_eip !101
  %334 = xor i32 %333, %331, !mcsema_real_eip !101
  %335 = and i32 %334, 16, !mcsema_real_eip !101
  %336 = icmp ne i32 %335, 0, !mcsema_real_eip !101
  store i1 %336, i1* %AF_val, !mcsema_real_eip !101
  %337 = icmp slt i32 %332, 0
  store i1 %337, i1* %SF_val, !mcsema_real_eip !101
  %338 = icmp eq i32 %332, 0, !mcsema_real_eip !101
  store i1 %338, i1* %ZF_val, !mcsema_real_eip !101
  %339 = xor i32 %329, -2147483648, !mcsema_real_eip !101
  %340 = xor i32 %339, %331, !mcsema_real_eip !101
  %341 = and i32 %333, %340, !mcsema_real_eip !101
  %342 = icmp slt i32 %341, 0
  store i1 %342, i1* %OF_val, !mcsema_real_eip !101
  %343 = trunc i32 %332 to i8, !mcsema_real_eip !101
  %344 = tail call i8 @llvm.ctpop.i8(i8 %343), !mcsema_real_eip !101
  %345 = and i8 %344, 1
  %346 = icmp eq i8 %345, 0
  store i1 %346, i1* %PF_val, !mcsema_real_eip !101
  %347 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %347, i1* %CF_val, !mcsema_real_eip !101
  %348 = zext i32 %332 to i64, !mcsema_real_eip !101
  store i64 %348, i64* %RSI_val, !mcsema_real_eip !101
  %349 = load i64* %RBP_val, !mcsema_real_eip !102
  %350 = add i64 %349, -64, !mcsema_real_eip !102
  %351 = inttoptr i64 %350 to i64*, !mcsema_real_eip !102
  %352 = load i64* %351, !mcsema_real_eip !102
  store i64 %352, i64* %RCX_val, !mcsema_real_eip !102
  %353 = add i64 %352, 4, !mcsema_real_eip !103
  %354 = inttoptr i64 %353 to i64*, !mcsema_real_eip !103
  %355 = bitcast i64* %354 to i32*
  %356 = load i32* %355, !mcsema_real_eip !103
  %357 = load i64* %RSI_val, !mcsema_real_eip !103
  %358 = trunc i64 %357 to i32, !mcsema_real_eip !103
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %358, i32 %356)
  %359 = extractvalue { i32, i1 } %uadd75, 0
  %360 = xor i32 %359, %356, !mcsema_real_eip !103
  %361 = xor i32 %360, %358, !mcsema_real_eip !103
  %362 = and i32 %361, 16, !mcsema_real_eip !103
  %363 = icmp ne i32 %362, 0, !mcsema_real_eip !103
  store i1 %363, i1* %AF_val, !mcsema_real_eip !103
  %364 = icmp slt i32 %359, 0
  store i1 %364, i1* %SF_val, !mcsema_real_eip !103
  %365 = icmp eq i32 %359, 0, !mcsema_real_eip !103
  store i1 %365, i1* %ZF_val, !mcsema_real_eip !103
  %366 = xor i32 %356, -2147483648, !mcsema_real_eip !103
  %367 = xor i32 %366, %358, !mcsema_real_eip !103
  %368 = and i32 %360, %367, !mcsema_real_eip !103
  %369 = icmp slt i32 %368, 0
  store i1 %369, i1* %OF_val, !mcsema_real_eip !103
  %370 = trunc i32 %359 to i8, !mcsema_real_eip !103
  %371 = tail call i8 @llvm.ctpop.i8(i8 %370), !mcsema_real_eip !103
  %372 = and i8 %371, 1
  %373 = icmp eq i8 %372, 0
  store i1 %373, i1* %PF_val, !mcsema_real_eip !103
  %374 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %374, i1* %CF_val, !mcsema_real_eip !103
  %375 = zext i32 %359 to i64, !mcsema_real_eip !103
  store i64 %375, i64* %RSI_val, !mcsema_real_eip !103
  %376 = load i64* %RAX_val, !mcsema_real_eip !104
  %377 = add i64 %376, 4, !mcsema_real_eip !104
  %378 = inttoptr i64 %377 to i64*, !mcsema_real_eip !104
  %379 = bitcast i64* %378 to i32*
  %380 = load i32* %379, !mcsema_real_eip !104
  %381 = zext i32 %380 to i64, !mcsema_real_eip !104
  store i64 %381, i64* %R8_val, !mcsema_real_eip !104
  %382 = load i64* %RBP_val, !mcsema_real_eip !105
  %383 = add i64 %382, -88, !mcsema_real_eip !105
  %384 = inttoptr i64 %383 to i64*, !mcsema_real_eip !105
  %385 = load i64* %384, !mcsema_real_eip !105
  store i64 %385, i64* %RCX_val, !mcsema_real_eip !105
  %386 = add i64 %385, 4, !mcsema_real_eip !106
  %387 = inttoptr i64 %386 to i64*, !mcsema_real_eip !106
  %388 = bitcast i64* %387 to i32*
  %389 = load i32* %388, !mcsema_real_eip !106
  %390 = load i64* %R8_val, !mcsema_real_eip !106
  %391 = trunc i64 %390 to i32, !mcsema_real_eip !106
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %391, i32 %389)
  %392 = extractvalue { i32, i1 } %uadd76, 0
  %393 = xor i32 %392, %389, !mcsema_real_eip !106
  %394 = xor i32 %393, %391, !mcsema_real_eip !106
  %395 = and i32 %394, 16, !mcsema_real_eip !106
  %396 = icmp ne i32 %395, 0, !mcsema_real_eip !106
  store i1 %396, i1* %AF_val, !mcsema_real_eip !106
  %397 = icmp slt i32 %392, 0
  store i1 %397, i1* %SF_val, !mcsema_real_eip !106
  %398 = icmp eq i32 %392, 0, !mcsema_real_eip !106
  store i1 %398, i1* %ZF_val, !mcsema_real_eip !106
  %399 = xor i32 %389, -2147483648, !mcsema_real_eip !106
  %400 = xor i32 %399, %391, !mcsema_real_eip !106
  %401 = and i32 %393, %400, !mcsema_real_eip !106
  %402 = icmp slt i32 %401, 0
  store i1 %402, i1* %OF_val, !mcsema_real_eip !106
  %403 = trunc i32 %392 to i8, !mcsema_real_eip !106
  %404 = tail call i8 @llvm.ctpop.i8(i8 %403), !mcsema_real_eip !106
  %405 = and i8 %404, 1
  %406 = icmp eq i8 %405, 0
  store i1 %406, i1* %PF_val, !mcsema_real_eip !106
  %407 = extractvalue { i32, i1 } %uadd76, 1
  store i1 %407, i1* %CF_val, !mcsema_real_eip !106
  %408 = zext i32 %392 to i64, !mcsema_real_eip !106
  store i64 %408, i64* %R8_val, !mcsema_real_eip !106
  %409 = load i64* %RBP_val, !mcsema_real_eip !107
  %410 = add i64 %409, -96, !mcsema_real_eip !107
  %411 = inttoptr i64 %410 to i64*, !mcsema_real_eip !107
  %412 = load i64* %411, !mcsema_real_eip !107
  store i64 %412, i64* %RCX_val, !mcsema_real_eip !107
  %413 = add i64 %412, 4, !mcsema_real_eip !108
  %414 = inttoptr i64 %413 to i64*, !mcsema_real_eip !108
  %415 = bitcast i64* %414 to i32*
  %416 = load i32* %415, !mcsema_real_eip !108
  %417 = load i64* %R8_val, !mcsema_real_eip !108
  %418 = trunc i64 %417 to i32, !mcsema_real_eip !108
  %419 = add i32 %418, %416
  %420 = zext i32 %419 to i64, !mcsema_real_eip !108
  store i64 %420, i64* %R8_val, !mcsema_real_eip !108
  %421 = load i64* %RSI_val, !mcsema_real_eip !109
  %422 = trunc i64 %421 to i32, !mcsema_real_eip !109
  %uadd78 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %419, i32 %422)
  %423 = extractvalue { i32, i1 } %uadd78, 0
  %424 = xor i32 %423, %422, !mcsema_real_eip !109
  %425 = xor i32 %424, %419, !mcsema_real_eip !109
  %426 = and i32 %425, 16, !mcsema_real_eip !109
  %427 = icmp ne i32 %426, 0, !mcsema_real_eip !109
  store i1 %427, i1* %AF_val, !mcsema_real_eip !109
  %428 = icmp slt i32 %423, 0
  store i1 %428, i1* %SF_val, !mcsema_real_eip !109
  %429 = icmp eq i32 %423, 0, !mcsema_real_eip !109
  store i1 %429, i1* %ZF_val, !mcsema_real_eip !109
  %430 = xor i32 %419, -2147483648, !mcsema_real_eip !109
  %431 = xor i32 %430, %422, !mcsema_real_eip !109
  %432 = and i32 %424, %431, !mcsema_real_eip !109
  %433 = icmp slt i32 %432, 0
  store i1 %433, i1* %OF_val, !mcsema_real_eip !109
  %434 = trunc i32 %423 to i8, !mcsema_real_eip !109
  %435 = tail call i8 @llvm.ctpop.i8(i8 %434), !mcsema_real_eip !109
  %436 = and i8 %435, 1
  %437 = icmp eq i8 %436, 0
  store i1 %437, i1* %PF_val, !mcsema_real_eip !109
  %438 = extractvalue { i32, i1 } %uadd78, 1
  store i1 %438, i1* %CF_val, !mcsema_real_eip !109
  %439 = zext i32 %423 to i64, !mcsema_real_eip !109
  store i64 %439, i64* %RSI_val, !mcsema_real_eip !109
  %440 = load i64* %RBP_val, !mcsema_real_eip !110
  %441 = add i64 %440, -104, !mcsema_real_eip !110
  %442 = inttoptr i64 %441 to i64*, !mcsema_real_eip !110
  %443 = load i64* %442, !mcsema_real_eip !110
  store i64 %443, i64* %RCX_val, !mcsema_real_eip !110
  %444 = add i64 %443, 4, !mcsema_real_eip !111
  %445 = inttoptr i64 %444 to i64*, !mcsema_real_eip !111
  %446 = load i64* %RSI_val, !mcsema_real_eip !111
  %447 = trunc i64 %446 to i32, !mcsema_real_eip !111
  %448 = bitcast i64* %445 to i32*
  store i32 %447, i32* %448, !mcsema_real_eip !111
  %449 = load i64* %RBP_val, !mcsema_real_eip !112
  %450 = add i64 %449, -24, !mcsema_real_eip !112
  %451 = inttoptr i64 %450 to i64*, !mcsema_real_eip !112
  %452 = bitcast i64* %451 to i32*
  %453 = load i32* %452, !mcsema_real_eip !112
  %454 = zext i32 %453 to i64, !mcsema_real_eip !112
  store i64 %454, i64* %RSI_val, !mcsema_real_eip !112
  %455 = load i64* %RBP_val, !mcsema_real_eip !113
  %456 = add i64 %455, -56, !mcsema_real_eip !113
  %457 = inttoptr i64 %456 to i64*, !mcsema_real_eip !113
  %458 = load i64* %457, !mcsema_real_eip !113
  store i64 %458, i64* %RCX_val, !mcsema_real_eip !113
  %459 = add i64 %458, 8, !mcsema_real_eip !114
  %460 = inttoptr i64 %459 to i64*, !mcsema_real_eip !114
  %461 = bitcast i64* %460 to i32*
  %462 = load i32* %461, !mcsema_real_eip !114
  %463 = load i64* %RSI_val, !mcsema_real_eip !114
  %464 = trunc i64 %463 to i32, !mcsema_real_eip !114
  %uadd79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %464, i32 %462)
  %465 = extractvalue { i32, i1 } %uadd79, 0
  %466 = xor i32 %465, %462, !mcsema_real_eip !114
  %467 = xor i32 %466, %464, !mcsema_real_eip !114
  %468 = and i32 %467, 16, !mcsema_real_eip !114
  %469 = icmp ne i32 %468, 0, !mcsema_real_eip !114
  store i1 %469, i1* %AF_val, !mcsema_real_eip !114
  %470 = icmp slt i32 %465, 0
  store i1 %470, i1* %SF_val, !mcsema_real_eip !114
  %471 = icmp eq i32 %465, 0, !mcsema_real_eip !114
  store i1 %471, i1* %ZF_val, !mcsema_real_eip !114
  %472 = xor i32 %462, -2147483648, !mcsema_real_eip !114
  %473 = xor i32 %472, %464, !mcsema_real_eip !114
  %474 = and i32 %466, %473, !mcsema_real_eip !114
  %475 = icmp slt i32 %474, 0
  store i1 %475, i1* %OF_val, !mcsema_real_eip !114
  %476 = trunc i32 %465 to i8, !mcsema_real_eip !114
  %477 = tail call i8 @llvm.ctpop.i8(i8 %476), !mcsema_real_eip !114
  %478 = and i8 %477, 1
  %479 = icmp eq i8 %478, 0
  store i1 %479, i1* %PF_val, !mcsema_real_eip !114
  %480 = extractvalue { i32, i1 } %uadd79, 1
  store i1 %480, i1* %CF_val, !mcsema_real_eip !114
  %481 = zext i32 %465 to i64, !mcsema_real_eip !114
  store i64 %481, i64* %RSI_val, !mcsema_real_eip !114
  %482 = load i64* %RBP_val, !mcsema_real_eip !115
  %483 = add i64 %482, -64, !mcsema_real_eip !115
  %484 = inttoptr i64 %483 to i64*, !mcsema_real_eip !115
  %485 = load i64* %484, !mcsema_real_eip !115
  store i64 %485, i64* %RCX_val, !mcsema_real_eip !115
  %486 = add i64 %485, 8, !mcsema_real_eip !116
  %487 = inttoptr i64 %486 to i64*, !mcsema_real_eip !116
  %488 = bitcast i64* %487 to i32*
  %489 = load i32* %488, !mcsema_real_eip !116
  %490 = load i64* %RSI_val, !mcsema_real_eip !116
  %491 = trunc i64 %490 to i32, !mcsema_real_eip !116
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %491, i32 %489)
  %492 = extractvalue { i32, i1 } %uadd80, 0
  %493 = xor i32 %492, %489, !mcsema_real_eip !116
  %494 = xor i32 %493, %491, !mcsema_real_eip !116
  %495 = and i32 %494, 16, !mcsema_real_eip !116
  %496 = icmp ne i32 %495, 0, !mcsema_real_eip !116
  store i1 %496, i1* %AF_val, !mcsema_real_eip !116
  %497 = icmp slt i32 %492, 0
  store i1 %497, i1* %SF_val, !mcsema_real_eip !116
  %498 = icmp eq i32 %492, 0, !mcsema_real_eip !116
  store i1 %498, i1* %ZF_val, !mcsema_real_eip !116
  %499 = xor i32 %489, -2147483648, !mcsema_real_eip !116
  %500 = xor i32 %499, %491, !mcsema_real_eip !116
  %501 = and i32 %493, %500, !mcsema_real_eip !116
  %502 = icmp slt i32 %501, 0
  store i1 %502, i1* %OF_val, !mcsema_real_eip !116
  %503 = trunc i32 %492 to i8, !mcsema_real_eip !116
  %504 = tail call i8 @llvm.ctpop.i8(i8 %503), !mcsema_real_eip !116
  %505 = and i8 %504, 1
  %506 = icmp eq i8 %505, 0
  store i1 %506, i1* %PF_val, !mcsema_real_eip !116
  %507 = extractvalue { i32, i1 } %uadd80, 1
  store i1 %507, i1* %CF_val, !mcsema_real_eip !116
  %508 = zext i32 %492 to i64, !mcsema_real_eip !116
  store i64 %508, i64* %RSI_val, !mcsema_real_eip !116
  %509 = load i64* %RAX_val, !mcsema_real_eip !117
  %510 = add i64 %509, 8, !mcsema_real_eip !117
  %511 = inttoptr i64 %510 to i64*, !mcsema_real_eip !117
  %512 = bitcast i64* %511 to i32*
  %513 = load i32* %512, !mcsema_real_eip !117
  %514 = zext i32 %513 to i64, !mcsema_real_eip !117
  store i64 %514, i64* %R8_val, !mcsema_real_eip !117
  %515 = load i64* %RBP_val, !mcsema_real_eip !118
  %516 = add i64 %515, -88, !mcsema_real_eip !118
  %517 = inttoptr i64 %516 to i64*, !mcsema_real_eip !118
  %518 = load i64* %517, !mcsema_real_eip !118
  store i64 %518, i64* %RCX_val, !mcsema_real_eip !118
  %519 = add i64 %518, 8, !mcsema_real_eip !119
  %520 = inttoptr i64 %519 to i64*, !mcsema_real_eip !119
  %521 = bitcast i64* %520 to i32*
  %522 = load i32* %521, !mcsema_real_eip !119
  %523 = load i64* %R8_val, !mcsema_real_eip !119
  %524 = trunc i64 %523 to i32, !mcsema_real_eip !119
  %uadd81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %524, i32 %522)
  %525 = extractvalue { i32, i1 } %uadd81, 0
  %526 = xor i32 %525, %522, !mcsema_real_eip !119
  %527 = xor i32 %526, %524, !mcsema_real_eip !119
  %528 = and i32 %527, 16, !mcsema_real_eip !119
  %529 = icmp ne i32 %528, 0, !mcsema_real_eip !119
  store i1 %529, i1* %AF_val, !mcsema_real_eip !119
  %530 = icmp slt i32 %525, 0
  store i1 %530, i1* %SF_val, !mcsema_real_eip !119
  %531 = icmp eq i32 %525, 0, !mcsema_real_eip !119
  store i1 %531, i1* %ZF_val, !mcsema_real_eip !119
  %532 = xor i32 %522, -2147483648, !mcsema_real_eip !119
  %533 = xor i32 %532, %524, !mcsema_real_eip !119
  %534 = and i32 %526, %533, !mcsema_real_eip !119
  %535 = icmp slt i32 %534, 0
  store i1 %535, i1* %OF_val, !mcsema_real_eip !119
  %536 = trunc i32 %525 to i8, !mcsema_real_eip !119
  %537 = tail call i8 @llvm.ctpop.i8(i8 %536), !mcsema_real_eip !119
  %538 = and i8 %537, 1
  %539 = icmp eq i8 %538, 0
  store i1 %539, i1* %PF_val, !mcsema_real_eip !119
  %540 = extractvalue { i32, i1 } %uadd81, 1
  store i1 %540, i1* %CF_val, !mcsema_real_eip !119
  %541 = zext i32 %525 to i64, !mcsema_real_eip !119
  store i64 %541, i64* %R8_val, !mcsema_real_eip !119
  %542 = load i64* %RBP_val, !mcsema_real_eip !120
  %543 = add i64 %542, -96, !mcsema_real_eip !120
  %544 = inttoptr i64 %543 to i64*, !mcsema_real_eip !120
  %545 = load i64* %544, !mcsema_real_eip !120
  store i64 %545, i64* %RCX_val, !mcsema_real_eip !120
  %546 = add i64 %545, 8, !mcsema_real_eip !121
  %547 = inttoptr i64 %546 to i64*, !mcsema_real_eip !121
  %548 = bitcast i64* %547 to i32*
  %549 = load i32* %548, !mcsema_real_eip !121
  %550 = load i64* %R8_val, !mcsema_real_eip !121
  %551 = trunc i64 %550 to i32, !mcsema_real_eip !121
  %552 = add i32 %551, %549
  %553 = zext i32 %552 to i64, !mcsema_real_eip !121
  store i64 %553, i64* %R8_val, !mcsema_real_eip !121
  %554 = load i64* %RSI_val, !mcsema_real_eip !122
  %555 = trunc i64 %554 to i32, !mcsema_real_eip !122
  %uadd83 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %552, i32 %555)
  %556 = extractvalue { i32, i1 } %uadd83, 0
  %557 = xor i32 %556, %555, !mcsema_real_eip !122
  %558 = xor i32 %557, %552, !mcsema_real_eip !122
  %559 = and i32 %558, 16, !mcsema_real_eip !122
  %560 = icmp ne i32 %559, 0, !mcsema_real_eip !122
  store i1 %560, i1* %AF_val, !mcsema_real_eip !122
  %561 = icmp slt i32 %556, 0
  store i1 %561, i1* %SF_val, !mcsema_real_eip !122
  %562 = icmp eq i32 %556, 0, !mcsema_real_eip !122
  store i1 %562, i1* %ZF_val, !mcsema_real_eip !122
  %563 = xor i32 %552, -2147483648, !mcsema_real_eip !122
  %564 = xor i32 %563, %555, !mcsema_real_eip !122
  %565 = and i32 %557, %564, !mcsema_real_eip !122
  %566 = icmp slt i32 %565, 0
  store i1 %566, i1* %OF_val, !mcsema_real_eip !122
  %567 = trunc i32 %556 to i8, !mcsema_real_eip !122
  %568 = tail call i8 @llvm.ctpop.i8(i8 %567), !mcsema_real_eip !122
  %569 = and i8 %568, 1
  %570 = icmp eq i8 %569, 0
  store i1 %570, i1* %PF_val, !mcsema_real_eip !122
  %571 = extractvalue { i32, i1 } %uadd83, 1
  store i1 %571, i1* %CF_val, !mcsema_real_eip !122
  %572 = zext i32 %556 to i64, !mcsema_real_eip !122
  store i64 %572, i64* %RSI_val, !mcsema_real_eip !122
  %573 = load i64* %RBP_val, !mcsema_real_eip !123
  %574 = add i64 %573, -104, !mcsema_real_eip !123
  %575 = inttoptr i64 %574 to i64*, !mcsema_real_eip !123
  %576 = load i64* %575, !mcsema_real_eip !123
  store i64 %576, i64* %RCX_val, !mcsema_real_eip !123
  %577 = add i64 %576, 8, !mcsema_real_eip !124
  %578 = inttoptr i64 %577 to i64*, !mcsema_real_eip !124
  %579 = load i64* %RSI_val, !mcsema_real_eip !124
  %580 = trunc i64 %579 to i32, !mcsema_real_eip !124
  %581 = bitcast i64* %578 to i32*
  store i32 %580, i32* %581, !mcsema_real_eip !124
  %582 = load i64* %RBP_val, !mcsema_real_eip !125
  %583 = add i64 %582, -104, !mcsema_real_eip !125
  %584 = inttoptr i64 %583 to i64*, !mcsema_real_eip !125
  %585 = load i64* %584, !mcsema_real_eip !125
  store i64 %585, i64* %RAX_val, !mcsema_real_eip !125
  %586 = load i64* %RSP_val, !mcsema_real_eip !126
  %uadd84 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %586, i64 96)
  %587 = extractvalue { i64, i1 } %uadd84, 0
  %588 = xor i64 %587, %586, !mcsema_real_eip !126
  %589 = and i64 %588, 16, !mcsema_real_eip !126
  %590 = icmp ne i64 %589, 0, !mcsema_real_eip !126
  store i1 %590, i1* %AF_val, !mcsema_real_eip !126
  %591 = icmp slt i64 %587, 0
  store i1 %591, i1* %SF_val, !mcsema_real_eip !126
  %592 = icmp eq i64 %587, 0, !mcsema_real_eip !126
  store i1 %592, i1* %ZF_val, !mcsema_real_eip !126
  %593 = xor i64 %586, -9223372036854775808, !mcsema_real_eip !126
  %594 = and i64 %588, %593, !mcsema_real_eip !126
  %595 = icmp slt i64 %594, 0
  store i1 %595, i1* %OF_val, !mcsema_real_eip !126
  %596 = trunc i64 %587 to i8, !mcsema_real_eip !126
  %597 = tail call i8 @llvm.ctpop.i8(i8 %596), !mcsema_real_eip !126
  %598 = and i8 %597, 1
  %599 = icmp eq i8 %598, 0
  store i1 %599, i1* %PF_val, !mcsema_real_eip !126
  %600 = extractvalue { i64, i1 } %uadd84, 1
  store i1 %600, i1* %CF_val, !mcsema_real_eip !126
  store i64 %587, i64* %RSP_val, !mcsema_real_eip !126
  %601 = inttoptr i64 %587 to i64*, !mcsema_real_eip !127
  %602 = load i64* %601, !mcsema_real_eip !127
  store i64 %602, i64* %RBX_val, !mcsema_real_eip !127
  %603 = add i64 %587, 8, !mcsema_real_eip !127
  store i64 %603, i64* %RSP_val, !mcsema_real_eip !127
  %604 = inttoptr i64 %603 to i64*, !mcsema_real_eip !128
  %605 = load i64* %604, !mcsema_real_eip !128
  store i64 %605, i64* %R14_val, !mcsema_real_eip !128
  %606 = add i64 %587, 16, !mcsema_real_eip !128
  store i64 %606, i64* %RSP_val, !mcsema_real_eip !128
  %607 = inttoptr i64 %606 to i64*, !mcsema_real_eip !129
  %608 = load i64* %607, !mcsema_real_eip !129
  store i64 %608, i64* %RBP_val, !mcsema_real_eip !129
  %609 = add i64 %587, 32, !mcsema_real_eip !130
  store i64 %609, i64* %RSP_val, !mcsema_real_eip !130
  %610 = load i64* %RAX_val, !mcsema_real_eip !130
  store i64 %610, i64* %RAX, !mcsema_real_eip !130
  %611 = load i64* %RBX_val, !mcsema_real_eip !130
  store i64 %611, i64* %RBX, !mcsema_real_eip !130
  %612 = load i64* %RCX_val, !mcsema_real_eip !130
  store i64 %612, i64* %RCX, !mcsema_real_eip !130
  %613 = load i64* %RDX_val, !mcsema_real_eip !130
  store i64 %613, i64* %RDX, !mcsema_real_eip !130
  %614 = load i64* %RSI_val, !mcsema_real_eip !130
  store i64 %614, i64* %RSI, !mcsema_real_eip !130
  %615 = load i64* %RDI_val, !mcsema_real_eip !130
  store i64 %615, i64* %RDI, !mcsema_real_eip !130
  %616 = load i64* %RSP_val, !mcsema_real_eip !130
  store i64 %616, i64* %RSP, !mcsema_real_eip !130
  %617 = load i64* %RBP_val, !mcsema_real_eip !130
  store i64 %617, i64* %RBP, !mcsema_real_eip !130
  %618 = load i64* %R8_val, !mcsema_real_eip !130
  store i64 %618, i64* %R8, !mcsema_real_eip !130
  %619 = load i64* %R9_val, !mcsema_real_eip !130
  store i64 %619, i64* %R9, !mcsema_real_eip !130
  %620 = load i64* %R10_val, !mcsema_real_eip !130
  store i64 %620, i64* %R10, !mcsema_real_eip !130
  %621 = load i64* %R11_val, !mcsema_real_eip !130
  store i64 %621, i64* %R11, !mcsema_real_eip !130
  %622 = load i64* %R12_val, !mcsema_real_eip !130
  store i64 %622, i64* %R12, !mcsema_real_eip !130
  %623 = load i64* %R13_val, !mcsema_real_eip !130
  store i64 %623, i64* %R13, !mcsema_real_eip !130
  %624 = load i64* %R14_val, !mcsema_real_eip !130
  store i64 %624, i64* %R14, !mcsema_real_eip !130
  %625 = load i64* %R15_val, !mcsema_real_eip !130
  store i64 %625, i64* %R15, !mcsema_real_eip !130
  %626 = load i64* %RIP_val, !mcsema_real_eip !130
  store i64 %626, i64* %RIP, !mcsema_real_eip !130
  %627 = load i1* %CF_val, !mcsema_real_eip !130
  store i1 %627, i1* %CF, align 1, !mcsema_real_eip !130
  %628 = load i1* %PF_val, !mcsema_real_eip !130
  store i1 %628, i1* %PF, align 1, !mcsema_real_eip !130
  %629 = load i1* %AF_val, !mcsema_real_eip !130
  store i1 %629, i1* %AF, align 1, !mcsema_real_eip !130
  %630 = load i1* %ZF_val, !mcsema_real_eip !130
  store i1 %630, i1* %ZF, align 1, !mcsema_real_eip !130
  %631 = load i1* %SF_val, !mcsema_real_eip !130
  store i1 %631, i1* %SF, align 1, !mcsema_real_eip !130
  %632 = load i1* %OF_val, !mcsema_real_eip !130
  store i1 %632, i1* %OF, align 1, !mcsema_real_eip !130
  %633 = load i1* %DF_val, !mcsema_real_eip !130
  store i1 %633, i1* %DF, align 1, !mcsema_real_eip !130
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !130
  %634 = load i1* %FPU_B_val, !mcsema_real_eip !130
  store i1 %634, i1* %FPU_B, align 1, !mcsema_real_eip !130
  %635 = load i1* %FPU_C3_val, !mcsema_real_eip !130
  store i1 %635, i1* %FPU_C3, align 1, !mcsema_real_eip !130
  %636 = load i3* %FPU_TOP_val, !mcsema_real_eip !130
  store i3 %636, i3* %FPU_TOP, align 1, !mcsema_real_eip !130
  %637 = load i1* %FPU_C2_val, !mcsema_real_eip !130
  store i1 %637, i1* %FPU_C2, align 1, !mcsema_real_eip !130
  %638 = load i1* %FPU_C1_val, !mcsema_real_eip !130
  store i1 %638, i1* %FPU_C1, align 1, !mcsema_real_eip !130
  %639 = load i1* %FPU_C0_val, !mcsema_real_eip !130
  store i1 %639, i1* %FPU_C0, align 1, !mcsema_real_eip !130
  %640 = load i1* %FPU_ES_val, !mcsema_real_eip !130
  store i1 %640, i1* %FPU_ES, align 1, !mcsema_real_eip !130
  %641 = load i1* %FPU_SF_val, !mcsema_real_eip !130
  store i1 %641, i1* %FPU_SF, align 1, !mcsema_real_eip !130
  %642 = load i1* %FPU_PE_val, !mcsema_real_eip !130
  store i1 %642, i1* %FPU_PE, align 1, !mcsema_real_eip !130
  %643 = load i1* %FPU_UE_val, !mcsema_real_eip !130
  store i1 %643, i1* %FPU_UE, align 1, !mcsema_real_eip !130
  %644 = load i1* %FPU_OE_val, !mcsema_real_eip !130
  store i1 %644, i1* %FPU_OE, align 1, !mcsema_real_eip !130
  %645 = load i1* %FPU_ZE_val, !mcsema_real_eip !130
  store i1 %645, i1* %FPU_ZE, align 1, !mcsema_real_eip !130
  %646 = load i1* %FPU_DE_val, !mcsema_real_eip !130
  store i1 %646, i1* %FPU_DE, align 1, !mcsema_real_eip !130
  %647 = load i1* %FPU_IE_val, !mcsema_real_eip !130
  store i1 %647, i1* %FPU_IE, align 1, !mcsema_real_eip !130
  %648 = load i1* %FPU_X_val, !mcsema_real_eip !130
  store i1 %648, i1* %FPU_X, align 1, !mcsema_real_eip !130
  %649 = load i2* %FPU_RC_val, !mcsema_real_eip !130
  store i2 %649, i2* %FPU_RC, align 1, !mcsema_real_eip !130
  %650 = load i2* %FPU_PC_val, !mcsema_real_eip !130
  store i2 %650, i2* %FPU_PC, align 1, !mcsema_real_eip !130
  %651 = load i1* %FPU_PM_val, !mcsema_real_eip !130
  store i1 %651, i1* %FPU_PM, align 1, !mcsema_real_eip !130
  %652 = load i1* %FPU_UM_val, !mcsema_real_eip !130
  store i1 %652, i1* %FPU_UM, align 1, !mcsema_real_eip !130
  %653 = load i1* %FPU_OM_val, !mcsema_real_eip !130
  store i1 %653, i1* %FPU_OM, align 1, !mcsema_real_eip !130
  %654 = load i1* %FPU_ZM_val, !mcsema_real_eip !130
  store i1 %654, i1* %FPU_ZM, align 1, !mcsema_real_eip !130
  %655 = load i1* %FPU_DM_val, !mcsema_real_eip !130
  store i1 %655, i1* %FPU_DM, align 1, !mcsema_real_eip !130
  %656 = load i1* %FPU_IM_val, !mcsema_real_eip !130
  store i1 %656, i1* %FPU_IM, align 1, !mcsema_real_eip !130
  %657 = load i64* %53, align 4
  store i64 %657, i64* %52, align 4
  %658 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !130
  store i16 %658, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !130
  %659 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !130
  store i64 %659, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !130
  %660 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !130
  store i16 %660, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !130
  %661 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !130
  store i64 %661, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !130
  %662 = load i128* %XMM0_val, !mcsema_real_eip !130
  store i128 %662, i128* %XMM0, align 1, !mcsema_real_eip !130
  %663 = load i128* %XMM1_val, !mcsema_real_eip !130
  store i128 %663, i128* %XMM1, align 1, !mcsema_real_eip !130
  %664 = load i128* %XMM2_val, !mcsema_real_eip !130
  store i128 %664, i128* %XMM2, align 1, !mcsema_real_eip !130
  %665 = load i128* %XMM3_val, !mcsema_real_eip !130
  store i128 %665, i128* %XMM3, align 1, !mcsema_real_eip !130
  %666 = load i128* %XMM4_val, !mcsema_real_eip !130
  store i128 %666, i128* %XMM4, align 1, !mcsema_real_eip !130
  %667 = load i128* %XMM5_val, !mcsema_real_eip !130
  store i128 %667, i128* %XMM5, align 1, !mcsema_real_eip !130
  %668 = load i128* %XMM6_val, !mcsema_real_eip !130
  store i128 %668, i128* %XMM6, align 1, !mcsema_real_eip !130
  %669 = load i128* %XMM7_val, !mcsema_real_eip !130
  store i128 %669, i128* %XMM7, align 1, !mcsema_real_eip !130
  %670 = load i128* %XMM8_val, !mcsema_real_eip !130
  store i128 %670, i128* %XMM8, align 1, !mcsema_real_eip !130
  %671 = load i128* %XMM9_val, !mcsema_real_eip !130
  store i128 %671, i128* %XMM9, align 1, !mcsema_real_eip !130
  %672 = load i128* %XMM10_val, !mcsema_real_eip !130
  store i128 %672, i128* %XMM10, align 1, !mcsema_real_eip !130
  %673 = load i128* %XMM11_val, !mcsema_real_eip !130
  store i128 %673, i128* %XMM11, align 1, !mcsema_real_eip !130
  %674 = load i128* %XMM12_val, !mcsema_real_eip !130
  store i128 %674, i128* %XMM12, align 1, !mcsema_real_eip !130
  %675 = load i128* %XMM13_val, !mcsema_real_eip !130
  store i128 %675, i128* %XMM13, align 1, !mcsema_real_eip !130
  %676 = load i128* %XMM14_val, !mcsema_real_eip !130
  store i128 %676, i128* %XMM14, align 1, !mcsema_real_eip !130
  %677 = load i128* %XMM15_val, !mcsema_real_eip !130
  store i128 %677, i128* %XMM15, align 1, !mcsema_real_eip !130
  %678 = load i64* %STACK_BASE_val, !mcsema_real_eip !130
  store i64 %678, i64* %STACK_BASE, align 1, !mcsema_real_eip !130
  %679 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !130
  store i64 %679, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !130
  ret void, !mcsema_real_eip !130
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_100(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 256, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 257, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = metadata !{i64 260, [17 x i8] c"\09subq\09$112, %rsp\00"}
!5 = metadata !{i64 264, [19 x i8] c"\09movabsq\09$12, %rdi\00"}
!6 = metadata !{i64 274, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!7 = metadata !{i64 281, [21 x i8] c"\09movl\09$10, -16(%rbp)\00"}
!8 = metadata !{i64 288, [21 x i8] c"\09movl\09$10, -12(%rbp)\00"}
!9 = metadata !{i64 295, [20 x i8] c"\09movl\09$10, -8(%rbp)\00"}
!10 = metadata !{i64 302, [9 x i8] c"\09callq\090\00"}
!11 = metadata !{i64 307, [22 x i8] c"\09leaq\09-16(%rbp), %rdi\00"}
!12 = metadata !{i64 311, [15 x i8] c"\09movl\09$1, %r8d\00"}
!13 = metadata !{i64 317, [15 x i8] c"\09movl\09$2, %r9d\00"}
!14 = metadata !{i64 323, [15 x i8] c"\09movl\09$3, %ecx\00"}
!15 = metadata !{i64 328, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!16 = metadata !{i64 332, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!17 = metadata !{i64 336, [17 x i8] c"\09movl\09$5, (%rax)\00"}
!18 = metadata !{i64 342, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!19 = metadata !{i64 346, [18 x i8] c"\09movl\09$5, 4(%rax)\00"}
!20 = metadata !{i64 353, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!21 = metadata !{i64 357, [18 x i8] c"\09movl\09$5, 8(%rax)\00"}
!22 = metadata !{i64 364, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!23 = metadata !{i64 368, [22 x i8] c"\09movq\09-24(%rbp), %rdx\00"}
!24 = metadata !{i64 372, [22 x i8] c"\09movq\09-16(%rbp), %rsi\00"}
!25 = metadata !{i64 376, [22 x i8] c"\09movq\09%rsi, -48(%rbp)\00"}
!26 = metadata !{i64 380, [22 x i8] c"\09movl\09-8(%rbp), %r10d\00"}
!27 = metadata !{i64 384, [23 x i8] c"\09movl\09%r10d, -40(%rbp)\00"}
!28 = metadata !{i64 388, [22 x i8] c"\09movq\09-48(%rbp), %rsi\00"}
!29 = metadata !{i64 392, [23 x i8] c"\09movl\09-40(%rbp), %r10d\00"}
!30 = metadata !{i64 396, [22 x i8] c"\09movq\09%rdi, -56(%rbp)\00"}
!31 = metadata !{i64 400, [17 x i8] c"\09movq\09%rsi, %rdi\00"}
!32 = metadata !{i64 403, [18 x i8] c"\09movl\09%r10d, %esi\00"}
!33 = metadata !{i64 406, [22 x i8] c"\09movq\09-56(%rbp), %r11\00"}
!34 = metadata !{i64 410, [22 x i8] c"\09movq\09%rdx, -64(%rbp)\00"}
!35 = metadata !{i64 414, [17 x i8] c"\09movq\09%r11, %rdx\00"}
!36 = metadata !{i64 417, [22 x i8] c"\09movl\09%ecx, -68(%rbp)\00"}
!37 = metadata !{i64 420, [17 x i8] c"\09movq\09%rax, %rcx\00"}
!38 = metadata !{i64 423, [17 x i8] c"\09movl\09$3, (%rsp)\00"}
!39 = metadata !{i64 430, [19 x i8] c"\09movq\09(%r11), %rax\00"}
!40 = metadata !{i64 433, [20 x i8] c"\09movq\09%rax, 8(%rsp)\00"}
!41 = metadata !{i64 438, [21 x i8] c"\09movl\098(%r11), %r10d\00"}
!42 = metadata !{i64 442, [22 x i8] c"\09movl\09%r10d, 16(%rsp)\00"}
!43 = metadata !{i64 447, [21 x i8] c"\09movq\09%r11, 24(%rsp)\00"}
!44 = metadata !{i64 452, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!45 = metadata !{i64 456, [21 x i8] c"\09movq\09%rax, 32(%rsp)\00"}
!46 = metadata !{i64 461, [12 x i8] c"\09callq\09-466\00"}
!47 = metadata !{i64 466, [22 x i8] c"\09movq\09%rax, -32(%rbp)\00"}
!48 = metadata !{i64 470, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!49 = metadata !{i64 474, [19 x i8] c"\09movl\09(%rax), %esi\00"}
!50 = metadata !{i64 476, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!51 = metadata !{i64 480, [20 x i8] c"\09addl\094(%rax), %esi\00"}
!52 = metadata !{i64 483, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!53 = metadata !{i64 487, [20 x i8] c"\09addl\098(%rax), %esi\00"}
!54 = metadata !{i64 490, [17 x i8] c"\09movl\09%esi, %eax\00"}
!55 = metadata !{i64 492, [17 x i8] c"\09addq\09$112, %rsp\00"}
!56 = metadata !{i64 496, [11 x i8] c"\09popq\09%rbp\00"}
!57 = metadata !{i64 497, [6 x i8] c"\09retq\00"}
!58 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!59 = metadata !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!60 = metadata !{i64 4, [12 x i8] c"\09pushq\09%r14\00"}
!61 = metadata !{i64 6, [12 x i8] c"\09pushq\09%rbx\00"}
!62 = metadata !{i64 7, [16 x i8] c"\09subq\09$96, %rsp\00"}
!63 = metadata !{i64 11, [21 x i8] c"\09movq\0948(%rbp), %rax\00"}
!64 = metadata !{i64 15, [21 x i8] c"\09movq\0940(%rbp), %r10\00"}
!65 = metadata !{i64 19, [21 x i8] c"\09leaq\0924(%rbp), %r11\00"}
!66 = metadata !{i64 23, [21 x i8] c"\09movl\0916(%rbp), %ebx\00"}
!67 = metadata !{i64 26, [19 x i8] c"\09movabsq\09$12, %r14\00"}
!68 = metadata !{i64 36, [22 x i8] c"\09movq\09%rdi, -48(%rbp)\00"}
!69 = metadata !{i64 40, [22 x i8] c"\09movl\09%esi, -40(%rbp)\00"}
!70 = metadata !{i64 43, [22 x i8] c"\09movq\09-48(%rbp), %rdi\00"}
!71 = metadata !{i64 47, [22 x i8] c"\09movq\09%rdi, -32(%rbp)\00"}
!72 = metadata !{i64 51, [22 x i8] c"\09movl\09-40(%rbp), %esi\00"}
!73 = metadata !{i64 54, [22 x i8] c"\09movl\09%esi, -24(%rbp)\00"}
!74 = metadata !{i64 57, [22 x i8] c"\09movq\09%rdx, -56(%rbp)\00"}
!75 = metadata !{i64 61, [22 x i8] c"\09movq\09%rcx, -64(%rbp)\00"}
!76 = metadata !{i64 65, [22 x i8] c"\09movl\09%r8d, -68(%rbp)\00"}
!77 = metadata !{i64 69, [22 x i8] c"\09movl\09%r9d, -72(%rbp)\00"}
!78 = metadata !{i64 73, [22 x i8] c"\09movl\09%ebx, -76(%rbp)\00"}
!79 = metadata !{i64 76, [22 x i8] c"\09movq\09%r10, -88(%rbp)\00"}
!80 = metadata !{i64 80, [22 x i8] c"\09movq\09%rax, -96(%rbp)\00"}
!81 = metadata !{i64 84, [17 x i8] c"\09movq\09%r14, %rdi\00"}
!82 = metadata !{i64 87, [23 x i8] c"\09movq\09%r11, -112(%rbp)\00"}
!83 = metadata !{i64 91, [9 x i8] c"\09callq\090\00"}
!84 = metadata !{i64 96, [23 x i8] c"\09movq\09%rax, -104(%rbp)\00"}
!85 = metadata !{i64 100, [22 x i8] c"\09movl\09-32(%rbp), %esi\00"}
!86 = metadata !{i64 103, [22 x i8] c"\09movq\09-56(%rbp), %rax\00"}
!87 = metadata !{i64 107, [19 x i8] c"\09addl\09(%rax), %esi\00"}
!88 = metadata !{i64 109, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!89 = metadata !{i64 113, [19 x i8] c"\09addl\09(%rax), %esi\00"}
!90 = metadata !{i64 115, [23 x i8] c"\09movq\09-112(%rbp), %rax\00"}
!91 = metadata !{i64 119, [19 x i8] c"\09movl\09(%rax), %r8d\00"}
!92 = metadata !{i64 122, [22 x i8] c"\09movq\09-88(%rbp), %rcx\00"}
!93 = metadata !{i64 126, [19 x i8] c"\09addl\09(%rcx), %r8d\00"}
!94 = metadata !{i64 129, [22 x i8] c"\09movq\09-96(%rbp), %rcx\00"}
!95 = metadata !{i64 133, [19 x i8] c"\09addl\09(%rcx), %r8d\00"}
!96 = metadata !{i64 136, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!97 = metadata !{i64 139, [23 x i8] c"\09movq\09-104(%rbp), %rcx\00"}
!98 = metadata !{i64 143, [19 x i8] c"\09movl\09%esi, (%rcx)\00"}
!99 = metadata !{i64 145, [22 x i8] c"\09movl\09-28(%rbp), %esi\00"}
!100 = metadata !{i64 148, [22 x i8] c"\09movq\09-56(%rbp), %rcx\00"}
!101 = metadata !{i64 152, [20 x i8] c"\09addl\094(%rcx), %esi\00"}
!102 = metadata !{i64 155, [22 x i8] c"\09movq\09-64(%rbp), %rcx\00"}
!103 = metadata !{i64 159, [20 x i8] c"\09addl\094(%rcx), %esi\00"}
!104 = metadata !{i64 162, [20 x i8] c"\09movl\094(%rax), %r8d\00"}
!105 = metadata !{i64 166, [22 x i8] c"\09movq\09-88(%rbp), %rcx\00"}
!106 = metadata !{i64 170, [20 x i8] c"\09addl\094(%rcx), %r8d\00"}
!107 = metadata !{i64 174, [22 x i8] c"\09movq\09-96(%rbp), %rcx\00"}
!108 = metadata !{i64 178, [20 x i8] c"\09addl\094(%rcx), %r8d\00"}
!109 = metadata !{i64 182, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!110 = metadata !{i64 185, [23 x i8] c"\09movq\09-104(%rbp), %rcx\00"}
!111 = metadata !{i64 189, [20 x i8] c"\09movl\09%esi, 4(%rcx)\00"}
!112 = metadata !{i64 192, [22 x i8] c"\09movl\09-24(%rbp), %esi\00"}
!113 = metadata !{i64 195, [22 x i8] c"\09movq\09-56(%rbp), %rcx\00"}
!114 = metadata !{i64 199, [20 x i8] c"\09addl\098(%rcx), %esi\00"}
!115 = metadata !{i64 202, [22 x i8] c"\09movq\09-64(%rbp), %rcx\00"}
!116 = metadata !{i64 206, [20 x i8] c"\09addl\098(%rcx), %esi\00"}
!117 = metadata !{i64 209, [20 x i8] c"\09movl\098(%rax), %r8d\00"}
!118 = metadata !{i64 213, [22 x i8] c"\09movq\09-88(%rbp), %rcx\00"}
!119 = metadata !{i64 217, [20 x i8] c"\09addl\098(%rcx), %r8d\00"}
!120 = metadata !{i64 221, [22 x i8] c"\09movq\09-96(%rbp), %rcx\00"}
!121 = metadata !{i64 225, [20 x i8] c"\09addl\098(%rcx), %r8d\00"}
!122 = metadata !{i64 229, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!123 = metadata !{i64 232, [23 x i8] c"\09movq\09-104(%rbp), %rcx\00"}
!124 = metadata !{i64 236, [20 x i8] c"\09movl\09%esi, 8(%rcx)\00"}
!125 = metadata !{i64 239, [23 x i8] c"\09movq\09-104(%rbp), %rax\00"}
!126 = metadata !{i64 243, [16 x i8] c"\09addq\09$96, %rsp\00"}
!127 = metadata !{i64 247, [11 x i8] c"\09popq\09%rbx\00"}
!128 = metadata !{i64 248, [11 x i8] c"\09popq\09%r14\00"}
!129 = metadata !{i64 250, [11 x i8] c"\09popq\09%rbp\00"}
!130 = metadata !{i64 251, [6 x i8] c"\09retq\00"}
