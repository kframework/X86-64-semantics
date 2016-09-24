; ModuleID = 'Output/test_25.clang.bc'
source_filename = "Output/test_25.clang.bc"
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
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !2
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !2
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !2
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !2
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !2
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !2
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !2
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !2
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !2
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !2
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !2
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !2
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !2
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !2
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !2
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !2
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !2
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !2
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !2
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !2
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !2
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !2
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !2
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !2
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !2
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !2
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !2
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !2
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !2
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !2
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !2
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !2
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !2
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !2
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !2
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !2
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !2
  %78 = load i64, i64* %RSP_val, !mcsema_real_eip !2
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
  %94 = load i64, i64* %RBP_val, !mcsema_real_eip !5
  %95 = add i64 %94, -4, !mcsema_real_eip !5
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !5
  %97 = bitcast i64* %96 to i32*
  store i32 0, i32* %97, !mcsema_real_eip !5
  %98 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %99 = add i64 %98, -8, !mcsema_real_eip !6
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !6
  %101 = load i64, i64* %RDI_val, !mcsema_real_eip !6
  %102 = trunc i64 %101 to i32, !mcsema_real_eip !6
  %103 = bitcast i64* %100 to i32*
  store i32 %102, i32* %103, !mcsema_real_eip !6
  %104 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  %105 = add i64 %104, -16, !mcsema_real_eip !7
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !7
  %107 = load i64, i64* %RSI_val, !mcsema_real_eip !7
  store i64 %107, i64* %106, !mcsema_real_eip !7
  %108 = load i64, i64* %RBP_val, !mcsema_real_eip !8
  %109 = add i64 %108, -20, !mcsema_real_eip !8
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !8
  %111 = bitcast i64* %110 to i32*
  store i32 0, i32* %111, !mcsema_real_eip !8
  %112 = load i64, i64* %RBP_val, !mcsema_real_eip !9
  %113 = add i64 %112, -16, !mcsema_real_eip !9
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !9
  %115 = load i64, i64* %114, !mcsema_real_eip !9
  store i64 %115, i64* %RSI_val, !mcsema_real_eip !9
  %116 = add i64 %115, 8, !mcsema_real_eip !10
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !10
  %118 = load i64, i64* %117, !mcsema_real_eip !10
  store i64 %118, i64* %RDI_val, !mcsema_real_eip !10
  %119 = tail call x86_64_sysvcc i64 @strlen(i64 %118), !mcsema_real_eip !11
  store i64 %119, i64* %RAX_val, !mcsema_real_eip !11
  %120 = and i64 %119, 4294967295
  store i64 %120, i64* %RCX_val, !mcsema_real_eip !12
  %121 = load i64, i64* %RBP_val, !mcsema_real_eip !13
  %122 = add i64 %121, -24, !mcsema_real_eip !13
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !13
  %124 = trunc i64 %119 to i32, !mcsema_real_eip !13
  %125 = bitcast i64* %123 to i32*
  store i32 %124, i32* %125, !mcsema_real_eip !13
  %126 = load i64, i64* %RBP_val, !mcsema_real_eip !14
  %127 = add i64 %126, -28, !mcsema_real_eip !14
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !14
  %129 = bitcast i64* %128 to i32*
  store i32 0, i32* %129, !mcsema_real_eip !14
  %130 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %131 = add i64 %130, -28, !mcsema_real_eip !15
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !15
  %133 = bitcast i64* %132 to i32*
  %134 = load i32, i32* %133, !mcsema_real_eip !15
  %135 = zext i32 %134 to i64, !mcsema_real_eip !15
  store i64 %135, i64* %RAX_val, !mcsema_real_eip !15
  %136 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %137 = add i64 %136, -24, !mcsema_real_eip !16
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !16
  %139 = bitcast i64* %138 to i32*
  %140 = load i32, i32* %139, !mcsema_real_eip !16
  %141 = sub i32 %134, %140, !mcsema_real_eip !16
  %142 = xor i32 %141, %134, !mcsema_real_eip !16
  %143 = xor i32 %142, %140, !mcsema_real_eip !16
  %144 = and i32 %143, 16, !mcsema_real_eip !16
  %145 = icmp ne i32 %144, 0, !mcsema_real_eip !16
  store i1 %145, i1* %AF_val, !mcsema_real_eip !16
  %146 = trunc i32 %141 to i8, !mcsema_real_eip !16
  %147 = tail call i8 @llvm.ctpop.i8(i8 %146), !mcsema_real_eip !16
  %148 = and i8 %147, 1
  %149 = icmp eq i8 %148, 0
  store i1 %149, i1* %PF_val, !mcsema_real_eip !16
  %150 = icmp eq i32 %134, %140
  store i1 %150, i1* %ZF_val, !mcsema_real_eip !16
  %151 = icmp slt i32 %141, 0
  store i1 %151, i1* %SF_val, !mcsema_real_eip !16
  %152 = icmp ult i32 %134, %140, !mcsema_real_eip !16
  store i1 %152, i1* %CF_val, !mcsema_real_eip !16
  %153 = xor i32 %140, %134, !mcsema_real_eip !16
  %154 = and i32 %142, %153, !mcsema_real_eip !16
  %155 = icmp slt i32 %154, 0
  store i1 %155, i1* %OF_val, !mcsema_real_eip !16
  %156 = load i1, i1* %SF_val, !mcsema_real_eip !17
  %tmp = xor i1 %156, %155
  br i1 %tmp, label %block_0x42.preheader, label %block_0x66, !mcsema_real_eip !17

block_0x42.preheader:                             ; preds = %entry
  br label %block_0x42

block_0x66.loopexit:                              ; preds = %block_0x42
  br label %block_0x66

block_0x66:                                       ; preds = %block_0x66.loopexit, %entry
  %157 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  %158 = add i64 %157, -24, !mcsema_real_eip !18
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !18
  %160 = bitcast i64* %159 to i32*
  %161 = load i32, i32* %160, !mcsema_real_eip !18
  %162 = zext i32 %161 to i64, !mcsema_real_eip !18
  store i64 %162, i64* %RAX_val, !mcsema_real_eip !18
  %163 = load i64, i64* %RSP_val, !mcsema_real_eip !19
  %uadd72 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %163, i64 32)
  %164 = extractvalue { i64, i1 } %uadd72, 0
  %165 = xor i64 %164, %163, !mcsema_real_eip !19
  %166 = and i64 %165, 16, !mcsema_real_eip !19
  %167 = icmp ne i64 %166, 0, !mcsema_real_eip !19
  store i1 %167, i1* %AF_val, !mcsema_real_eip !19
  %168 = icmp slt i64 %164, 0
  store i1 %168, i1* %SF_val, !mcsema_real_eip !19
  %169 = icmp eq i64 %164, 0, !mcsema_real_eip !19
  store i1 %169, i1* %ZF_val, !mcsema_real_eip !19
  %170 = xor i64 %163, -9223372036854775808, !mcsema_real_eip !19
  %171 = and i64 %165, %170, !mcsema_real_eip !19
  %172 = icmp slt i64 %171, 0
  store i1 %172, i1* %OF_val, !mcsema_real_eip !19
  %173 = trunc i64 %164 to i8, !mcsema_real_eip !19
  %174 = tail call i8 @llvm.ctpop.i8(i8 %173), !mcsema_real_eip !19
  %175 = and i8 %174, 1
  %176 = icmp eq i8 %175, 0
  store i1 %176, i1* %PF_val, !mcsema_real_eip !19
  %177 = extractvalue { i64, i1 } %uadd72, 1
  store i1 %177, i1* %CF_val, !mcsema_real_eip !19
  store i64 %164, i64* %RSP_val, !mcsema_real_eip !19
  %178 = inttoptr i64 %164 to i64*, !mcsema_real_eip !20
  %179 = load i64, i64* %178, !mcsema_real_eip !20
  store i64 %179, i64* %RBP_val, !mcsema_real_eip !20
  %180 = add i64 %164, 16, !mcsema_real_eip !21
  store i64 %180, i64* %RSP_val, !mcsema_real_eip !21
  %181 = load i64, i64* %RAX_val, !mcsema_real_eip !21
  store i64 %181, i64* %RAX, !mcsema_real_eip !21
  %182 = load i64, i64* %RBX_val, !mcsema_real_eip !21
  store i64 %182, i64* %RBX, !mcsema_real_eip !21
  %183 = load i64, i64* %RCX_val, !mcsema_real_eip !21
  store i64 %183, i64* %RCX, !mcsema_real_eip !21
  %184 = load i64, i64* %RDX_val, !mcsema_real_eip !21
  store i64 %184, i64* %RDX, !mcsema_real_eip !21
  %185 = load i64, i64* %RSI_val, !mcsema_real_eip !21
  store i64 %185, i64* %RSI, !mcsema_real_eip !21
  %186 = load i64, i64* %RDI_val, !mcsema_real_eip !21
  store i64 %186, i64* %RDI, !mcsema_real_eip !21
  %187 = load i64, i64* %RSP_val, !mcsema_real_eip !21
  store i64 %187, i64* %RSP, !mcsema_real_eip !21
  %188 = load i64, i64* %RBP_val, !mcsema_real_eip !21
  store i64 %188, i64* %RBP, !mcsema_real_eip !21
  %189 = load i64, i64* %R8_val, !mcsema_real_eip !21
  store i64 %189, i64* %R8, !mcsema_real_eip !21
  %190 = load i64, i64* %R9_val, !mcsema_real_eip !21
  store i64 %190, i64* %R9, !mcsema_real_eip !21
  %191 = load i64, i64* %R10_val, !mcsema_real_eip !21
  store i64 %191, i64* %R10, !mcsema_real_eip !21
  %192 = load i64, i64* %R11_val, !mcsema_real_eip !21
  store i64 %192, i64* %R11, !mcsema_real_eip !21
  %193 = load i64, i64* %R12_val, !mcsema_real_eip !21
  store i64 %193, i64* %R12, !mcsema_real_eip !21
  %194 = load i64, i64* %R13_val, !mcsema_real_eip !21
  store i64 %194, i64* %R13, !mcsema_real_eip !21
  %195 = load i64, i64* %R14_val, !mcsema_real_eip !21
  store i64 %195, i64* %R14, !mcsema_real_eip !21
  %196 = load i64, i64* %R15_val, !mcsema_real_eip !21
  store i64 %196, i64* %R15, !mcsema_real_eip !21
  %197 = load i64, i64* %RIP_val, !mcsema_real_eip !21
  store i64 %197, i64* %RIP, !mcsema_real_eip !21
  %198 = load i1, i1* %CF_val, !mcsema_real_eip !21
  store i1 %198, i1* %CF, align 1, !mcsema_real_eip !21
  %199 = load i1, i1* %PF_val, !mcsema_real_eip !21
  store i1 %199, i1* %PF, align 1, !mcsema_real_eip !21
  %200 = load i1, i1* %AF_val, !mcsema_real_eip !21
  store i1 %200, i1* %AF, align 1, !mcsema_real_eip !21
  %201 = load i1, i1* %ZF_val, !mcsema_real_eip !21
  store i1 %201, i1* %ZF, align 1, !mcsema_real_eip !21
  %202 = load i1, i1* %SF_val, !mcsema_real_eip !21
  store i1 %202, i1* %SF, align 1, !mcsema_real_eip !21
  %203 = load i1, i1* %OF_val, !mcsema_real_eip !21
  store i1 %203, i1* %OF, align 1, !mcsema_real_eip !21
  %204 = load i1, i1* %DF_val, !mcsema_real_eip !21
  store i1 %204, i1* %DF, align 1, !mcsema_real_eip !21
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !21
  %205 = load i1, i1* %FPU_B_val, !mcsema_real_eip !21
  store i1 %205, i1* %FPU_B, align 1, !mcsema_real_eip !21
  %206 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !21
  store i1 %206, i1* %FPU_C3, align 1, !mcsema_real_eip !21
  %207 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !21
  store i3 %207, i3* %FPU_TOP, align 1, !mcsema_real_eip !21
  %208 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !21
  store i1 %208, i1* %FPU_C2, align 1, !mcsema_real_eip !21
  %209 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !21
  store i1 %209, i1* %FPU_C1, align 1, !mcsema_real_eip !21
  %210 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !21
  store i1 %210, i1* %FPU_C0, align 1, !mcsema_real_eip !21
  %211 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !21
  store i1 %211, i1* %FPU_ES, align 1, !mcsema_real_eip !21
  %212 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !21
  store i1 %212, i1* %FPU_SF, align 1, !mcsema_real_eip !21
  %213 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !21
  store i1 %213, i1* %FPU_PE, align 1, !mcsema_real_eip !21
  %214 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !21
  store i1 %214, i1* %FPU_UE, align 1, !mcsema_real_eip !21
  %215 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !21
  store i1 %215, i1* %FPU_OE, align 1, !mcsema_real_eip !21
  %216 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !21
  store i1 %216, i1* %FPU_ZE, align 1, !mcsema_real_eip !21
  %217 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !21
  store i1 %217, i1* %FPU_DE, align 1, !mcsema_real_eip !21
  %218 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !21
  store i1 %218, i1* %FPU_IE, align 1, !mcsema_real_eip !21
  %219 = load i1, i1* %FPU_X_val, !mcsema_real_eip !21
  store i1 %219, i1* %FPU_X, align 1, !mcsema_real_eip !21
  %220 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !21
  store i2 %220, i2* %FPU_RC, align 1, !mcsema_real_eip !21
  %221 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !21
  store i2 %221, i2* %FPU_PC, align 1, !mcsema_real_eip !21
  %222 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !21
  store i1 %222, i1* %FPU_PM, align 1, !mcsema_real_eip !21
  %223 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !21
  store i1 %223, i1* %FPU_UM, align 1, !mcsema_real_eip !21
  %224 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !21
  store i1 %224, i1* %FPU_OM, align 1, !mcsema_real_eip !21
  %225 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !21
  store i1 %225, i1* %FPU_ZM, align 1, !mcsema_real_eip !21
  %226 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !21
  store i1 %226, i1* %FPU_DM, align 1, !mcsema_real_eip !21
  %227 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !21
  store i1 %227, i1* %FPU_IM, align 1, !mcsema_real_eip !21
  %228 = load i64, i64* %53, align 4
  store i64 %228, i64* %52, align 4
  %229 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !21
  store i16 %229, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !21
  %230 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !21
  store i64 %230, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !21
  %231 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !21
  store i16 %231, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !21
  %232 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !21
  store i64 %232, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !21
  %233 = load i128, i128* %XMM0_val, !mcsema_real_eip !21
  store i128 %233, i128* %XMM0, align 1, !mcsema_real_eip !21
  %234 = load i128, i128* %XMM1_val, !mcsema_real_eip !21
  store i128 %234, i128* %XMM1, align 1, !mcsema_real_eip !21
  %235 = load i128, i128* %XMM2_val, !mcsema_real_eip !21
  store i128 %235, i128* %XMM2, align 1, !mcsema_real_eip !21
  %236 = load i128, i128* %XMM3_val, !mcsema_real_eip !21
  store i128 %236, i128* %XMM3, align 1, !mcsema_real_eip !21
  %237 = load i128, i128* %XMM4_val, !mcsema_real_eip !21
  store i128 %237, i128* %XMM4, align 1, !mcsema_real_eip !21
  %238 = load i128, i128* %XMM5_val, !mcsema_real_eip !21
  store i128 %238, i128* %XMM5, align 1, !mcsema_real_eip !21
  %239 = load i128, i128* %XMM6_val, !mcsema_real_eip !21
  store i128 %239, i128* %XMM6, align 1, !mcsema_real_eip !21
  %240 = load i128, i128* %XMM7_val, !mcsema_real_eip !21
  store i128 %240, i128* %XMM7, align 1, !mcsema_real_eip !21
  %241 = load i128, i128* %XMM8_val, !mcsema_real_eip !21
  store i128 %241, i128* %XMM8, align 1, !mcsema_real_eip !21
  %242 = load i128, i128* %XMM9_val, !mcsema_real_eip !21
  store i128 %242, i128* %XMM9, align 1, !mcsema_real_eip !21
  %243 = load i128, i128* %XMM10_val, !mcsema_real_eip !21
  store i128 %243, i128* %XMM10, align 1, !mcsema_real_eip !21
  %244 = load i128, i128* %XMM11_val, !mcsema_real_eip !21
  store i128 %244, i128* %XMM11, align 1, !mcsema_real_eip !21
  %245 = load i128, i128* %XMM12_val, !mcsema_real_eip !21
  store i128 %245, i128* %XMM12, align 1, !mcsema_real_eip !21
  %246 = load i128, i128* %XMM13_val, !mcsema_real_eip !21
  store i128 %246, i128* %XMM13, align 1, !mcsema_real_eip !21
  %247 = load i128, i128* %XMM14_val, !mcsema_real_eip !21
  store i128 %247, i128* %XMM14, align 1, !mcsema_real_eip !21
  %248 = load i128, i128* %XMM15_val, !mcsema_real_eip !21
  store i128 %248, i128* %XMM15, align 1, !mcsema_real_eip !21
  %249 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !21
  store i64 %249, i64* %STACK_BASE, align 1, !mcsema_real_eip !21
  %250 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !21
  store i64 %250, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !21
  ret void, !mcsema_real_eip !21

block_0x42:                                       ; preds = %block_0x42, %block_0x42.preheader
  %251 = load i64, i64* %RBP_val, !mcsema_real_eip !22
  %252 = add i64 %251, -28, !mcsema_real_eip !22
  %253 = inttoptr i64 %252 to i64*, !mcsema_real_eip !22
  %254 = bitcast i64* %253 to i32*
  %255 = load i32, i32* %254, !mcsema_real_eip !22
  %256 = sext i32 %255 to i64, !mcsema_real_eip !22
  store i64 %256, i64* %RAX_val, !mcsema_real_eip !22
  %257 = load i64, i64* %RBP_val, !mcsema_real_eip !23
  %258 = add i64 %257, -16, !mcsema_real_eip !23
  %259 = inttoptr i64 %258 to i64*, !mcsema_real_eip !23
  %260 = load i64, i64* %259, !mcsema_real_eip !23
  store i64 %260, i64* %RCX_val, !mcsema_real_eip !23
  %261 = add i64 %260, 8, !mcsema_real_eip !24
  %262 = inttoptr i64 %261 to i64*, !mcsema_real_eip !24
  %263 = load i64, i64* %262, !mcsema_real_eip !24
  store i64 %263, i64* %RCX_val, !mcsema_real_eip !24
  %264 = load i64, i64* %RAX_val, !mcsema_real_eip !25
  %265 = add i64 %264, %263, !mcsema_real_eip !25
  %266 = inttoptr i64 %265 to i64*, !mcsema_real_eip !25
  %267 = bitcast i64* %266 to i8*
  %268 = load i8, i8* %267, !mcsema_real_eip !25
  %269 = sext i8 %268 to i32, !mcsema_real_eip !25
  %270 = zext i32 %269 to i64, !mcsema_real_eip !25
  store i64 %270, i64* %RDX_val, !mcsema_real_eip !25
  %271 = load i64, i64* %RBP_val, !mcsema_real_eip !26
  %272 = add i64 %271, -20, !mcsema_real_eip !26
  %273 = inttoptr i64 %272 to i64*, !mcsema_real_eip !26
  %274 = bitcast i64* %273 to i32*
  %275 = load i32, i32* %274, !mcsema_real_eip !26
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %269, i32 %275)
  %276 = extractvalue { i32, i1 } %uadd, 0
  %277 = xor i32 %276, %275, !mcsema_real_eip !26
  %278 = xor i32 %277, %269, !mcsema_real_eip !26
  %279 = and i32 %278, 16, !mcsema_real_eip !26
  %280 = icmp ne i32 %279, 0, !mcsema_real_eip !26
  store i1 %280, i1* %AF_val, !mcsema_real_eip !26
  %281 = icmp slt i32 %276, 0
  store i1 %281, i1* %SF_val, !mcsema_real_eip !26
  %282 = icmp eq i32 %276, 0, !mcsema_real_eip !26
  store i1 %282, i1* %ZF_val, !mcsema_real_eip !26
  %283 = xor i32 %269, -2147483648, !mcsema_real_eip !26
  %284 = xor i32 %283, %275, !mcsema_real_eip !26
  %285 = and i32 %277, %284, !mcsema_real_eip !26
  %286 = icmp slt i32 %285, 0
  store i1 %286, i1* %OF_val, !mcsema_real_eip !26
  %287 = trunc i32 %276 to i8, !mcsema_real_eip !26
  %288 = tail call i8 @llvm.ctpop.i8(i8 %287), !mcsema_real_eip !26
  %289 = and i8 %288, 1
  %290 = icmp eq i8 %289, 0
  store i1 %290, i1* %PF_val, !mcsema_real_eip !26
  %291 = extractvalue { i32, i1 } %uadd, 1
  store i1 %291, i1* %CF_val, !mcsema_real_eip !26
  %292 = zext i32 %276 to i64, !mcsema_real_eip !26
  store i64 %292, i64* %RDX_val, !mcsema_real_eip !26
  %293 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %294 = add i64 %293, -20, !mcsema_real_eip !27
  %295 = inttoptr i64 %294 to i64*, !mcsema_real_eip !27
  %296 = bitcast i64* %295 to i32*
  store i32 %276, i32* %296, !mcsema_real_eip !27
  %297 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %298 = add i64 %297, -28, !mcsema_real_eip !28
  %299 = inttoptr i64 %298 to i64*, !mcsema_real_eip !28
  %300 = bitcast i64* %299 to i32*
  %301 = load i32, i32* %300, !mcsema_real_eip !28
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %301, i32 1)
  %302 = extractvalue { i32, i1 } %uadd70, 0
  %303 = xor i32 %302, %301, !mcsema_real_eip !29
  %304 = and i32 %303, 16, !mcsema_real_eip !29
  %305 = icmp ne i32 %304, 0, !mcsema_real_eip !29
  store i1 %305, i1* %AF_val, !mcsema_real_eip !29
  %306 = icmp slt i32 %302, 0
  store i1 %306, i1* %SF_val, !mcsema_real_eip !29
  %307 = icmp eq i32 %302, 0, !mcsema_real_eip !29
  store i1 %307, i1* %ZF_val, !mcsema_real_eip !29
  %308 = xor i32 %301, -2147483648, !mcsema_real_eip !29
  %309 = and i32 %303, %308, !mcsema_real_eip !29
  %310 = icmp slt i32 %309, 0
  store i1 %310, i1* %OF_val, !mcsema_real_eip !29
  %311 = trunc i32 %302 to i8, !mcsema_real_eip !29
  %312 = tail call i8 @llvm.ctpop.i8(i8 %311), !mcsema_real_eip !29
  %313 = and i8 %312, 1
  %314 = icmp eq i8 %313, 0
  store i1 %314, i1* %PF_val, !mcsema_real_eip !29
  %315 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %315, i1* %CF_val, !mcsema_real_eip !29
  %316 = zext i32 %302 to i64, !mcsema_real_eip !29
  store i64 %316, i64* %RAX_val, !mcsema_real_eip !29
  %317 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  %318 = add i64 %317, -28, !mcsema_real_eip !30
  %319 = inttoptr i64 %318 to i64*, !mcsema_real_eip !30
  %320 = bitcast i64* %319 to i32*
  store i32 %302, i32* %320, !mcsema_real_eip !30
  %321 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %322 = add i64 %321, -28, !mcsema_real_eip !15
  %323 = inttoptr i64 %322 to i64*, !mcsema_real_eip !15
  %324 = bitcast i64* %323 to i32*
  %325 = load i32, i32* %324, !mcsema_real_eip !15
  %326 = zext i32 %325 to i64, !mcsema_real_eip !15
  store i64 %326, i64* %RAX_val, !mcsema_real_eip !15
  %327 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %328 = add i64 %327, -24, !mcsema_real_eip !16
  %329 = inttoptr i64 %328 to i64*, !mcsema_real_eip !16
  %330 = bitcast i64* %329 to i32*
  %331 = load i32, i32* %330, !mcsema_real_eip !16
  %332 = sub i32 %325, %331, !mcsema_real_eip !16
  %333 = xor i32 %332, %325, !mcsema_real_eip !16
  %334 = xor i32 %333, %331, !mcsema_real_eip !16
  %335 = and i32 %334, 16, !mcsema_real_eip !16
  %336 = icmp ne i32 %335, 0, !mcsema_real_eip !16
  store i1 %336, i1* %AF_val, !mcsema_real_eip !16
  %337 = trunc i32 %332 to i8, !mcsema_real_eip !16
  %338 = tail call i8 @llvm.ctpop.i8(i8 %337), !mcsema_real_eip !16
  %339 = and i8 %338, 1
  %340 = icmp eq i8 %339, 0
  store i1 %340, i1* %PF_val, !mcsema_real_eip !16
  %341 = icmp eq i32 %325, %331
  store i1 %341, i1* %ZF_val, !mcsema_real_eip !16
  %342 = icmp slt i32 %332, 0
  store i1 %342, i1* %SF_val, !mcsema_real_eip !16
  %343 = icmp ult i32 %325, %331, !mcsema_real_eip !16
  store i1 %343, i1* %CF_val, !mcsema_real_eip !16
  %344 = xor i32 %331, %325, !mcsema_real_eip !16
  %345 = and i32 %333, %344, !mcsema_real_eip !16
  %346 = icmp slt i32 %345, 0
  store i1 %346, i1* %OF_val, !mcsema_real_eip !16
  %347 = load i1, i1* %SF_val, !mcsema_real_eip !17
  %tmp71 = xor i1 %347, %346
  br i1 %tmp71, label %block_0x42, label %block_0x66.loopexit, !mcsema_real_eip !17
}

declare x86_64_sysvcc i64 @strlen(i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = !{i64 4, [16 x i8] c"\09subq\09$32, %rsp\00"}
!5 = !{i64 8, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!6 = !{i64 15, [21 x i8] c"\09movl\09%edi, -8(%rbp)\00"}
!7 = !{i64 18, [22 x i8] c"\09movq\09%rsi, -16(%rbp)\00"}
!8 = !{i64 22, [20 x i8] c"\09movl\09$0, -20(%rbp)\00"}
!9 = !{i64 29, [22 x i8] c"\09movq\09-16(%rbp), %rsi\00"}
!10 = !{i64 33, [20 x i8] c"\09movq\098(%rsi), %rdi\00"}
!11 = !{i64 37, [9 x i8] c"\09callq\090\00"}
!12 = !{i64 42, [17 x i8] c"\09movl\09%eax, %ecx\00"}
!13 = !{i64 44, [22 x i8] c"\09movl\09%ecx, -24(%rbp)\00"}
!14 = !{i64 47, [20 x i8] c"\09movl\09$0, -28(%rbp)\00"}
!15 = !{i64 54, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!16 = !{i64 57, [22 x i8] c"\09cmpl\09-24(%rbp), %eax\00"}
!17 = !{i64 60, [8 x i8] c"\09jge\0936\00"}
!18 = !{i64 102, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!19 = !{i64 105, [16 x i8] c"\09addq\09$32, %rsp\00"}
!20 = !{i64 109, [11 x i8] c"\09popq\09%rbp\00"}
!21 = !{i64 110, [6 x i8] c"\09retq\00"}
!22 = !{i64 66, [24 x i8] c"\09movslq\09-28(%rbp), %rax\00"}
!23 = !{i64 70, [22 x i8] c"\09movq\09-16(%rbp), %rcx\00"}
!24 = !{i64 74, [20 x i8] c"\09movq\098(%rcx), %rcx\00"}
!25 = !{i64 78, [26 x i8] c"\09movsbl\09(%rcx,%rax), %edx\00"}
!26 = !{i64 82, [22 x i8] c"\09addl\09-20(%rbp), %edx\00"}
!27 = !{i64 85, [22 x i8] c"\09movl\09%edx, -20(%rbp)\00"}
!28 = !{i64 88, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!29 = !{i64 91, [15 x i8] c"\09addl\09$1, %eax\00"}
!30 = !{i64 94, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
