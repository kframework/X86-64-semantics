; ModuleID = 'Output/test_26_1.clang.bc'
source_filename = "Output/test_26_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_90(%struct.regs*) {
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
  %94 = load i64, i64* %RBP_val, !mcsema_real_eip !5
  %95 = add i64 %94, -4, !mcsema_real_eip !5
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !5
  %97 = bitcast i64* %96 to i32*
  store i32 0, i32* %97, !mcsema_real_eip !5
  %98 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %99 = add i64 %98, -16, !mcsema_real_eip !6
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !6
  %101 = bitcast i64* %100 to i32*
  store i32 10, i32* %101, !mcsema_real_eip !6
  %102 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  %103 = add i64 %102, -12, !mcsema_real_eip !7
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !7
  %105 = bitcast i64* %104 to i32*
  store i32 10, i32* %105, !mcsema_real_eip !7
  %106 = load i64, i64* %RBP_val, !mcsema_real_eip !8
  %107 = add i64 %106, -8, !mcsema_real_eip !8
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !8
  %109 = bitcast i64* %108 to i32*
  store i32 10, i32* %109, !mcsema_real_eip !8
  store i64 24, i64* %RDI_val, !mcsema_real_eip !9
  %110 = tail call x86_64_sysvcc i64 @malloc(i64 24), !mcsema_real_eip !10
  store i64 %110, i64* %RAX_val, !mcsema_real_eip !10
  %111 = load i64, i64* %RBP_val, !mcsema_real_eip !11
  %112 = add i64 %111, -24, !mcsema_real_eip !11
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !11
  store i64 %110, i64* %113, !mcsema_real_eip !11
  %114 = load i64, i64* %RBP_val, !mcsema_real_eip !12
  %115 = add i64 %114, -24, !mcsema_real_eip !12
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !12
  %117 = load i64, i64* %116, !mcsema_real_eip !12
  store i64 %117, i64* %RAX_val, !mcsema_real_eip !12
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !13
  %119 = bitcast i64* %118 to i32*
  store i32 5, i32* %119, !mcsema_real_eip !13
  %120 = load i64, i64* %RBP_val, !mcsema_real_eip !14
  %121 = add i64 %120, -24, !mcsema_real_eip !14
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !14
  %123 = load i64, i64* %122, !mcsema_real_eip !14
  store i64 %123, i64* %RAX_val, !mcsema_real_eip !14
  %124 = add i64 %123, 4, !mcsema_real_eip !15
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !15
  %126 = bitcast i64* %125 to i32*
  store i32 5, i32* %126, !mcsema_real_eip !15
  %127 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %128 = add i64 %127, -24, !mcsema_real_eip !16
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !16
  %130 = load i64, i64* %129, !mcsema_real_eip !16
  store i64 %130, i64* %RAX_val, !mcsema_real_eip !16
  %131 = add i64 %130, 8, !mcsema_real_eip !17
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !17
  %133 = bitcast i64* %132 to i32*
  store i32 5, i32* %133, !mcsema_real_eip !17
  %134 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  %135 = add i64 %134, -24, !mcsema_real_eip !18
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !18
  %137 = load i64, i64* %136, !mcsema_real_eip !18
  %138 = load i64, i64* %RSP_val, !mcsema_real_eip !19
  store i64 %138, i64* %RDI_val, !mcsema_real_eip !19
  %139 = add i64 %138, 8, !mcsema_real_eip !20
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !20
  store i64 %137, i64* %140, !mcsema_real_eip !20
  %141 = load i64, i64* %RBP_val, !mcsema_real_eip !21
  %142 = add i64 %141, -16, !mcsema_real_eip !21
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !21
  %144 = ptrtoint i64* %143 to i64, !mcsema_real_eip !21
  store i64 %144, i64* %RAX_val, !mcsema_real_eip !21
  %145 = load i64, i64* %RDI_val, !mcsema_real_eip !22
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !22
  store i64 %144, i64* %146, !mcsema_real_eip !22
  store i64 1, i64* %RCX_val, !mcsema_real_eip !23
  store i64 2, i64* %RDX_val, !mcsema_real_eip !24
  store i64 1, i64* %RDI_val, !mcsema_real_eip !25
  %147 = load i64, i64* %RBP_val, !mcsema_real_eip !26
  %148 = add i64 %147, -60, !mcsema_real_eip !26
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !26
  %150 = bitcast i64* %149 to i32*
  store i32 3, i32* %150, !mcsema_real_eip !26
  %151 = load i64, i64* %RDX_val, !mcsema_real_eip !27
  %152 = and i64 %151, 4294967295
  store i64 %152, i64* %RSI_val, !mcsema_real_eip !27
  %153 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %154 = add i64 %153, -60, !mcsema_real_eip !28
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !28
  %156 = bitcast i64* %155 to i32*
  %157 = load i32, i32* %156, !mcsema_real_eip !28
  %158 = zext i32 %157 to i64, !mcsema_real_eip !28
  store i64 %158, i64* %R8_val, !mcsema_real_eip !28
  %159 = load i64, i64* %RBP_val, !mcsema_real_eip !29
  %160 = add i64 %159, -64, !mcsema_real_eip !29
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !29
  %162 = load i64, i64* %RDX_val, !mcsema_real_eip !29
  %163 = trunc i64 %162 to i32, !mcsema_real_eip !29
  %164 = bitcast i64* %161 to i32*
  store i32 %163, i32* %164, !mcsema_real_eip !29
  %165 = load i64, i64* %R8_val, !mcsema_real_eip !30
  %166 = and i64 %165, 4294967295
  store i64 %166, i64* %RDX_val, !mcsema_real_eip !30
  %167 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %168 = add i64 %167, -64, !mcsema_real_eip !31
  %169 = inttoptr i64 %168 to i64*, !mcsema_real_eip !31
  %170 = bitcast i64* %169 to i32*
  %171 = load i32, i32* %170, !mcsema_real_eip !31
  %172 = zext i32 %171 to i64, !mcsema_real_eip !31
  store i64 %172, i64* %R8_val, !mcsema_real_eip !31
  %173 = load i64, i64* %RBP_val, !mcsema_real_eip !32
  %174 = add i64 %173, -60, !mcsema_real_eip !32
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !32
  %176 = bitcast i64* %175 to i32*
  %177 = load i32, i32* %176, !mcsema_real_eip !32
  %178 = zext i32 %177 to i64, !mcsema_real_eip !32
  store i64 %178, i64* %R9_val, !mcsema_real_eip !32
  %179 = load i64, i64* %RSP_val, !mcsema_real_eip !33
  %180 = add i64 %179, -8
  %181 = inttoptr i64 %180 to i64*, !mcsema_real_eip !33
  store i64 -4981261766360305936, i64* %181, !mcsema_real_eip !33
  store i64 %180, i64* %RSP_val, !mcsema_real_eip !33
  %182 = load i64, i64* %RAX_val, !mcsema_real_eip !33
  store i64 %182, i64* %RAX, !mcsema_real_eip !33
  %183 = load i64, i64* %RBX_val, !mcsema_real_eip !33
  store i64 %183, i64* %RBX, !mcsema_real_eip !33
  %184 = load i64, i64* %RCX_val, !mcsema_real_eip !33
  store i64 %184, i64* %RCX, !mcsema_real_eip !33
  %185 = load i64, i64* %RDX_val, !mcsema_real_eip !33
  store i64 %185, i64* %RDX, !mcsema_real_eip !33
  %186 = load i64, i64* %RSI_val, !mcsema_real_eip !33
  store i64 %186, i64* %RSI, !mcsema_real_eip !33
  %187 = load i64, i64* %RDI_val, !mcsema_real_eip !33
  store i64 %187, i64* %RDI, !mcsema_real_eip !33
  %188 = load i64, i64* %RSP_val, !mcsema_real_eip !33
  store i64 %188, i64* %RSP, !mcsema_real_eip !33
  %189 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  store i64 %189, i64* %RBP, !mcsema_real_eip !33
  %190 = load i64, i64* %R8_val, !mcsema_real_eip !33
  store i64 %190, i64* %R8, !mcsema_real_eip !33
  %191 = load i64, i64* %R9_val, !mcsema_real_eip !33
  store i64 %191, i64* %R9, !mcsema_real_eip !33
  %192 = load i64, i64* %R10_val, !mcsema_real_eip !33
  store i64 %192, i64* %R10, !mcsema_real_eip !33
  %193 = load i64, i64* %R11_val, !mcsema_real_eip !33
  store i64 %193, i64* %R11, !mcsema_real_eip !33
  %194 = load i64, i64* %R12_val, !mcsema_real_eip !33
  store i64 %194, i64* %R12, !mcsema_real_eip !33
  %195 = load i64, i64* %R13_val, !mcsema_real_eip !33
  store i64 %195, i64* %R13, !mcsema_real_eip !33
  %196 = load i64, i64* %R14_val, !mcsema_real_eip !33
  store i64 %196, i64* %R14, !mcsema_real_eip !33
  %197 = load i64, i64* %R15_val, !mcsema_real_eip !33
  store i64 %197, i64* %R15, !mcsema_real_eip !33
  %198 = load i64, i64* %RIP_val, !mcsema_real_eip !33
  store i64 %198, i64* %RIP, !mcsema_real_eip !33
  %199 = load i1, i1* %CF_val, !mcsema_real_eip !33
  store i1 %199, i1* %CF, align 1, !mcsema_real_eip !33
  %200 = load i1, i1* %PF_val, !mcsema_real_eip !33
  store i1 %200, i1* %PF, align 1, !mcsema_real_eip !33
  %201 = load i1, i1* %AF_val, !mcsema_real_eip !33
  store i1 %201, i1* %AF, align 1, !mcsema_real_eip !33
  %202 = load i1, i1* %ZF_val, !mcsema_real_eip !33
  store i1 %202, i1* %ZF, align 1, !mcsema_real_eip !33
  %203 = load i1, i1* %SF_val, !mcsema_real_eip !33
  store i1 %203, i1* %SF, align 1, !mcsema_real_eip !33
  %204 = load i1, i1* %OF_val, !mcsema_real_eip !33
  store i1 %204, i1* %OF, align 1, !mcsema_real_eip !33
  %205 = load i1, i1* %DF_val, !mcsema_real_eip !33
  store i1 %205, i1* %DF, align 1, !mcsema_real_eip !33
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !33
  %206 = load i1, i1* %FPU_B_val, !mcsema_real_eip !33
  store i1 %206, i1* %FPU_B, align 1, !mcsema_real_eip !33
  %207 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !33
  store i1 %207, i1* %FPU_C3, align 1, !mcsema_real_eip !33
  %208 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !33
  store i3 %208, i3* %FPU_TOP, align 1, !mcsema_real_eip !33
  %209 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !33
  store i1 %209, i1* %FPU_C2, align 1, !mcsema_real_eip !33
  %210 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !33
  store i1 %210, i1* %FPU_C1, align 1, !mcsema_real_eip !33
  %211 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !33
  store i1 %211, i1* %FPU_C0, align 1, !mcsema_real_eip !33
  %212 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !33
  store i1 %212, i1* %FPU_ES, align 1, !mcsema_real_eip !33
  %213 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !33
  store i1 %213, i1* %FPU_SF, align 1, !mcsema_real_eip !33
  %214 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !33
  store i1 %214, i1* %FPU_PE, align 1, !mcsema_real_eip !33
  %215 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !33
  store i1 %215, i1* %FPU_UE, align 1, !mcsema_real_eip !33
  %216 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !33
  store i1 %216, i1* %FPU_OE, align 1, !mcsema_real_eip !33
  %217 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !33
  store i1 %217, i1* %FPU_ZE, align 1, !mcsema_real_eip !33
  %218 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !33
  store i1 %218, i1* %FPU_DE, align 1, !mcsema_real_eip !33
  %219 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !33
  store i1 %219, i1* %FPU_IE, align 1, !mcsema_real_eip !33
  %220 = load i1, i1* %FPU_X_val, !mcsema_real_eip !33
  store i1 %220, i1* %FPU_X, align 1, !mcsema_real_eip !33
  %221 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !33
  store i2 %221, i2* %FPU_RC, align 1, !mcsema_real_eip !33
  %222 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !33
  store i2 %222, i2* %FPU_PC, align 1, !mcsema_real_eip !33
  %223 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !33
  store i1 %223, i1* %FPU_PM, align 1, !mcsema_real_eip !33
  %224 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !33
  store i1 %224, i1* %FPU_UM, align 1, !mcsema_real_eip !33
  %225 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !33
  store i1 %225, i1* %FPU_OM, align 1, !mcsema_real_eip !33
  %226 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !33
  store i1 %226, i1* %FPU_ZM, align 1, !mcsema_real_eip !33
  %227 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !33
  store i1 %227, i1* %FPU_DM, align 1, !mcsema_real_eip !33
  %228 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !33
  store i1 %228, i1* %FPU_IM, align 1, !mcsema_real_eip !33
  %229 = load i64, i64* %53, align 4
  store i64 %229, i64* %52, align 4
  %230 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !33
  store i16 %230, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !33
  %231 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !33
  store i64 %231, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !33
  %232 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !33
  store i16 %232, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !33
  %233 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !33
  store i64 %233, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !33
  %234 = load i128, i128* %XMM0_val, !mcsema_real_eip !33
  store i128 %234, i128* %XMM0, align 1, !mcsema_real_eip !33
  %235 = load i128, i128* %XMM1_val, !mcsema_real_eip !33
  store i128 %235, i128* %XMM1, align 1, !mcsema_real_eip !33
  %236 = load i128, i128* %XMM2_val, !mcsema_real_eip !33
  store i128 %236, i128* %XMM2, align 1, !mcsema_real_eip !33
  %237 = load i128, i128* %XMM3_val, !mcsema_real_eip !33
  store i128 %237, i128* %XMM3, align 1, !mcsema_real_eip !33
  %238 = load i128, i128* %XMM4_val, !mcsema_real_eip !33
  store i128 %238, i128* %XMM4, align 1, !mcsema_real_eip !33
  %239 = load i128, i128* %XMM5_val, !mcsema_real_eip !33
  store i128 %239, i128* %XMM5, align 1, !mcsema_real_eip !33
  %240 = load i128, i128* %XMM6_val, !mcsema_real_eip !33
  store i128 %240, i128* %XMM6, align 1, !mcsema_real_eip !33
  %241 = load i128, i128* %XMM7_val, !mcsema_real_eip !33
  store i128 %241, i128* %XMM7, align 1, !mcsema_real_eip !33
  %242 = load i128, i128* %XMM8_val, !mcsema_real_eip !33
  store i128 %242, i128* %XMM8, align 1, !mcsema_real_eip !33
  %243 = load i128, i128* %XMM9_val, !mcsema_real_eip !33
  store i128 %243, i128* %XMM9, align 1, !mcsema_real_eip !33
  %244 = load i128, i128* %XMM10_val, !mcsema_real_eip !33
  store i128 %244, i128* %XMM10, align 1, !mcsema_real_eip !33
  %245 = load i128, i128* %XMM11_val, !mcsema_real_eip !33
  store i128 %245, i128* %XMM11, align 1, !mcsema_real_eip !33
  %246 = load i128, i128* %XMM12_val, !mcsema_real_eip !33
  store i128 %246, i128* %XMM12, align 1, !mcsema_real_eip !33
  %247 = load i128, i128* %XMM13_val, !mcsema_real_eip !33
  store i128 %247, i128* %XMM13, align 1, !mcsema_real_eip !33
  %248 = load i128, i128* %XMM14_val, !mcsema_real_eip !33
  store i128 %248, i128* %XMM14, align 1, !mcsema_real_eip !33
  %249 = load i128, i128* %XMM15_val, !mcsema_real_eip !33
  store i128 %249, i128* %XMM15, align 1, !mcsema_real_eip !33
  %250 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !33
  store i64 %250, i64* %STACK_BASE, align 1, !mcsema_real_eip !33
  %251 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !33
  store i64 %251, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !33
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !33
  %252 = load i64, i64* %RAX, !mcsema_real_eip !33
  store i64 %252, i64* %RAX_val, !mcsema_real_eip !33
  %253 = load i64, i64* %RBX, !mcsema_real_eip !33
  store i64 %253, i64* %RBX_val, !mcsema_real_eip !33
  %254 = load i64, i64* %RCX, !mcsema_real_eip !33
  store i64 %254, i64* %RCX_val, !mcsema_real_eip !33
  %255 = load i64, i64* %RDX, !mcsema_real_eip !33
  store i64 %255, i64* %RDX_val, !mcsema_real_eip !33
  %256 = load i64, i64* %RSI, !mcsema_real_eip !33
  store i64 %256, i64* %RSI_val, !mcsema_real_eip !33
  %257 = load i64, i64* %RDI, !mcsema_real_eip !33
  store i64 %257, i64* %RDI_val, !mcsema_real_eip !33
  %258 = load i64, i64* %RSP, !mcsema_real_eip !33
  store i64 %258, i64* %RSP_val, !mcsema_real_eip !33
  %259 = load i64, i64* %RBP, !mcsema_real_eip !33
  store i64 %259, i64* %RBP_val, !mcsema_real_eip !33
  %260 = load i64, i64* %R8, !mcsema_real_eip !33
  store i64 %260, i64* %R8_val, !mcsema_real_eip !33
  %261 = load i64, i64* %R9, !mcsema_real_eip !33
  store i64 %261, i64* %R9_val, !mcsema_real_eip !33
  %262 = load i64, i64* %R10, !mcsema_real_eip !33
  store i64 %262, i64* %R10_val, !mcsema_real_eip !33
  %263 = load i64, i64* %R11, !mcsema_real_eip !33
  store i64 %263, i64* %R11_val, !mcsema_real_eip !33
  %264 = load i64, i64* %R12, !mcsema_real_eip !33
  store i64 %264, i64* %R12_val, !mcsema_real_eip !33
  %265 = load i64, i64* %R13, !mcsema_real_eip !33
  store i64 %265, i64* %R13_val, !mcsema_real_eip !33
  %266 = load i64, i64* %R14, !mcsema_real_eip !33
  store i64 %266, i64* %R14_val, !mcsema_real_eip !33
  %267 = load i64, i64* %R15, !mcsema_real_eip !33
  store i64 %267, i64* %R15_val, !mcsema_real_eip !33
  %268 = load i64, i64* %RIP, !mcsema_real_eip !33
  store i64 %268, i64* %RIP_val, !mcsema_real_eip !33
  %269 = load i1, i1* %CF, align 1, !mcsema_real_eip !33
  store i1 %269, i1* %CF_val, !mcsema_real_eip !33
  %270 = load i1, i1* %PF, align 1, !mcsema_real_eip !33
  store i1 %270, i1* %PF_val, !mcsema_real_eip !33
  %271 = load i1, i1* %AF, align 1, !mcsema_real_eip !33
  store i1 %271, i1* %AF_val, !mcsema_real_eip !33
  %272 = load i1, i1* %ZF, align 1, !mcsema_real_eip !33
  store i1 %272, i1* %ZF_val, !mcsema_real_eip !33
  %273 = load i1, i1* %SF, align 1, !mcsema_real_eip !33
  store i1 %273, i1* %SF_val, !mcsema_real_eip !33
  %274 = load i1, i1* %OF, align 1, !mcsema_real_eip !33
  store i1 %274, i1* %OF_val, !mcsema_real_eip !33
  %275 = load i1, i1* %DF, align 1, !mcsema_real_eip !33
  store i1 %275, i1* %DF_val, !mcsema_real_eip !33
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !33
  %276 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !33
  store i1 %276, i1* %FPU_B_val, !mcsema_real_eip !33
  %277 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !33
  store i1 %277, i1* %FPU_C3_val, !mcsema_real_eip !33
  %278 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !33
  store i3 %278, i3* %FPU_TOP_val, !mcsema_real_eip !33
  %279 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !33
  store i1 %279, i1* %FPU_C2_val, !mcsema_real_eip !33
  %280 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !33
  store i1 %280, i1* %FPU_C1_val, !mcsema_real_eip !33
  %281 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !33
  store i1 %281, i1* %FPU_C0_val, !mcsema_real_eip !33
  %282 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !33
  store i1 %282, i1* %FPU_ES_val, !mcsema_real_eip !33
  %283 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !33
  store i1 %283, i1* %FPU_SF_val, !mcsema_real_eip !33
  %284 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !33
  store i1 %284, i1* %FPU_PE_val, !mcsema_real_eip !33
  %285 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !33
  store i1 %285, i1* %FPU_UE_val, !mcsema_real_eip !33
  %286 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !33
  store i1 %286, i1* %FPU_OE_val, !mcsema_real_eip !33
  %287 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !33
  store i1 %287, i1* %FPU_ZE_val, !mcsema_real_eip !33
  %288 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !33
  store i1 %288, i1* %FPU_DE_val, !mcsema_real_eip !33
  %289 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !33
  store i1 %289, i1* %FPU_IE_val, !mcsema_real_eip !33
  %290 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !33
  store i1 %290, i1* %FPU_X_val, !mcsema_real_eip !33
  %291 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !33
  store i2 %291, i2* %FPU_RC_val, !mcsema_real_eip !33
  %292 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !33
  store i2 %292, i2* %FPU_PC_val, !mcsema_real_eip !33
  %293 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !33
  store i1 %293, i1* %FPU_PM_val, !mcsema_real_eip !33
  %294 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !33
  store i1 %294, i1* %FPU_UM_val, !mcsema_real_eip !33
  %295 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !33
  store i1 %295, i1* %FPU_OM_val, !mcsema_real_eip !33
  %296 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !33
  store i1 %296, i1* %FPU_ZM_val, !mcsema_real_eip !33
  %297 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !33
  store i1 %297, i1* %FPU_DM_val, !mcsema_real_eip !33
  %298 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !33
  store i1 %298, i1* %FPU_IM_val, !mcsema_real_eip !33
  %299 = load i64, i64* %52, align 4
  store i64 %299, i64* %53, align 4
  %300 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !33
  store i16 %300, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !33
  %301 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !33
  store i64 %301, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !33
  %302 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !33
  store i16 %302, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !33
  %303 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !33
  store i64 %303, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !33
  %304 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !33
  store i128 %304, i128* %XMM0_val, !mcsema_real_eip !33
  %305 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !33
  store i128 %305, i128* %XMM1_val, !mcsema_real_eip !33
  %306 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !33
  store i128 %306, i128* %XMM2_val, !mcsema_real_eip !33
  %307 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !33
  store i128 %307, i128* %XMM3_val, !mcsema_real_eip !33
  %308 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !33
  store i128 %308, i128* %XMM4_val, !mcsema_real_eip !33
  %309 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !33
  store i128 %309, i128* %XMM5_val, !mcsema_real_eip !33
  %310 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !33
  store i128 %310, i128* %XMM6_val, !mcsema_real_eip !33
  %311 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !33
  store i128 %311, i128* %XMM7_val, !mcsema_real_eip !33
  %312 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !33
  store i128 %312, i128* %XMM8_val, !mcsema_real_eip !33
  %313 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !33
  store i128 %313, i128* %XMM9_val, !mcsema_real_eip !33
  %314 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !33
  store i128 %314, i128* %XMM10_val, !mcsema_real_eip !33
  %315 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !33
  store i128 %315, i128* %XMM11_val, !mcsema_real_eip !33
  %316 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !33
  store i128 %316, i128* %XMM12_val, !mcsema_real_eip !33
  %317 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !33
  store i128 %317, i128* %XMM13_val, !mcsema_real_eip !33
  %318 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !33
  store i128 %318, i128* %XMM14_val, !mcsema_real_eip !33
  %319 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !33
  store i128 %319, i128* %XMM15_val, !mcsema_real_eip !33
  %320 = load i64, i64* %STACK_BASE, !mcsema_real_eip !33
  store i64 %320, i64* %STACK_BASE_val, !mcsema_real_eip !33
  %321 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !33
  store i64 %321, i64* %STACK_LIMIT_val, !mcsema_real_eip !33
  %322 = load i64, i64* %RBP_val, !mcsema_real_eip !34
  %323 = add i64 %322, -48, !mcsema_real_eip !34
  %324 = inttoptr i64 %323 to i64*, !mcsema_real_eip !34
  %325 = load i64, i64* %RDX_val, !mcsema_real_eip !34
  %326 = trunc i64 %325 to i32, !mcsema_real_eip !34
  %327 = bitcast i64* %324 to i32*
  store i32 %326, i32* %327, !mcsema_real_eip !34
  %328 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %329 = add i64 %328, -56, !mcsema_real_eip !35
  %330 = inttoptr i64 %329 to i64*, !mcsema_real_eip !35
  %331 = load i64, i64* %RAX_val, !mcsema_real_eip !35
  store i64 %331, i64* %330, !mcsema_real_eip !35
  %332 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  %333 = add i64 %332, -56, !mcsema_real_eip !36
  %334 = inttoptr i64 %333 to i64*, !mcsema_real_eip !36
  %335 = load i64, i64* %334, !mcsema_real_eip !36
  store i64 %335, i64* %RAX_val, !mcsema_real_eip !36
  %336 = add i64 %332, -40, !mcsema_real_eip !37
  %337 = inttoptr i64 %336 to i64*, !mcsema_real_eip !37
  store i64 %335, i64* %337, !mcsema_real_eip !37
  %338 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %339 = add i64 %338, -48, !mcsema_real_eip !38
  %340 = inttoptr i64 %339 to i64*, !mcsema_real_eip !38
  %341 = bitcast i64* %340 to i32*
  %342 = load i32, i32* %341, !mcsema_real_eip !38
  %343 = zext i32 %342 to i64, !mcsema_real_eip !38
  store i64 %343, i64* %RCX_val, !mcsema_real_eip !38
  %344 = load i64, i64* %RBP_val, !mcsema_real_eip !39
  %345 = add i64 %344, -32, !mcsema_real_eip !39
  %346 = inttoptr i64 %345 to i64*, !mcsema_real_eip !39
  %347 = bitcast i64* %346 to i32*
  store i32 %342, i32* %347, !mcsema_real_eip !39
  %348 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %349 = add i64 %348, -40, !mcsema_real_eip !40
  %350 = inttoptr i64 %349 to i64*, !mcsema_real_eip !40
  %351 = bitcast i64* %350 to i32*
  %352 = load i32, i32* %351, !mcsema_real_eip !40
  %353 = zext i32 %352 to i64, !mcsema_real_eip !40
  store i64 %353, i64* %RCX_val, !mcsema_real_eip !40
  %354 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %355 = add i64 %354, -36, !mcsema_real_eip !41
  %356 = inttoptr i64 %355 to i64*, !mcsema_real_eip !41
  %357 = bitcast i64* %356 to i32*
  %358 = load i32, i32* %357, !mcsema_real_eip !41
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %352, i32 %358)
  %359 = extractvalue { i32, i1 } %uadd, 0
  %360 = xor i32 %359, %358, !mcsema_real_eip !41
  %361 = xor i32 %360, %352, !mcsema_real_eip !41
  %362 = and i32 %361, 16, !mcsema_real_eip !41
  %363 = icmp ne i32 %362, 0, !mcsema_real_eip !41
  store i1 %363, i1* %AF_val, !mcsema_real_eip !41
  %364 = icmp slt i32 %359, 0
  store i1 %364, i1* %SF_val, !mcsema_real_eip !41
  %365 = icmp eq i32 %359, 0, !mcsema_real_eip !41
  store i1 %365, i1* %ZF_val, !mcsema_real_eip !41
  %366 = xor i32 %352, -2147483648, !mcsema_real_eip !41
  %367 = xor i32 %366, %358, !mcsema_real_eip !41
  %368 = and i32 %360, %367, !mcsema_real_eip !41
  %369 = icmp slt i32 %368, 0
  store i1 %369, i1* %OF_val, !mcsema_real_eip !41
  %370 = trunc i32 %359 to i8, !mcsema_real_eip !41
  %371 = tail call i8 @llvm.ctpop.i8(i8 %370), !mcsema_real_eip !41
  %372 = and i8 %371, 1
  %373 = icmp eq i8 %372, 0
  store i1 %373, i1* %PF_val, !mcsema_real_eip !41
  %374 = extractvalue { i32, i1 } %uadd, 1
  store i1 %374, i1* %CF_val, !mcsema_real_eip !41
  %375 = zext i32 %359 to i64, !mcsema_real_eip !41
  store i64 %375, i64* %RCX_val, !mcsema_real_eip !41
  %376 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  %377 = add i64 %376, -32, !mcsema_real_eip !42
  %378 = inttoptr i64 %377 to i64*, !mcsema_real_eip !42
  %379 = bitcast i64* %378 to i32*
  %380 = load i32, i32* %379, !mcsema_real_eip !42
  %381 = add i32 %359, %380
  %382 = zext i32 %381 to i64, !mcsema_real_eip !42
  store i64 %382, i64* %RCX_val, !mcsema_real_eip !42
  store i64 %382, i64* %RAX_val, !mcsema_real_eip !43
  %383 = load i64, i64* %RSP_val, !mcsema_real_eip !44
  %uadd210 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %383, i64 80)
  %384 = extractvalue { i64, i1 } %uadd210, 0
  %385 = xor i64 %384, %383, !mcsema_real_eip !44
  %386 = and i64 %385, 16
  %387 = icmp eq i64 %386, 0
  store i1 %387, i1* %AF_val, !mcsema_real_eip !44
  %388 = icmp slt i64 %384, 0
  store i1 %388, i1* %SF_val, !mcsema_real_eip !44
  %389 = icmp eq i64 %384, 0, !mcsema_real_eip !44
  store i1 %389, i1* %ZF_val, !mcsema_real_eip !44
  %390 = xor i64 %383, -9223372036854775808, !mcsema_real_eip !44
  %391 = and i64 %385, %390, !mcsema_real_eip !44
  %392 = icmp slt i64 %391, 0
  store i1 %392, i1* %OF_val, !mcsema_real_eip !44
  %393 = trunc i64 %384 to i8, !mcsema_real_eip !44
  %394 = tail call i8 @llvm.ctpop.i8(i8 %393), !mcsema_real_eip !44
  %395 = and i8 %394, 1
  %396 = icmp eq i8 %395, 0
  store i1 %396, i1* %PF_val, !mcsema_real_eip !44
  %397 = extractvalue { i64, i1 } %uadd210, 1
  store i1 %397, i1* %CF_val, !mcsema_real_eip !44
  store i64 %384, i64* %RSP_val, !mcsema_real_eip !44
  %398 = inttoptr i64 %384 to i64*, !mcsema_real_eip !45
  %399 = load i64, i64* %398, !mcsema_real_eip !45
  store i64 %399, i64* %RBP_val, !mcsema_real_eip !45
  %400 = add i64 %384, 16, !mcsema_real_eip !46
  store i64 %400, i64* %RSP_val, !mcsema_real_eip !46
  %401 = load i64, i64* %RAX_val, !mcsema_real_eip !46
  store i64 %401, i64* %RAX, !mcsema_real_eip !46
  %402 = load i64, i64* %RBX_val, !mcsema_real_eip !46
  store i64 %402, i64* %RBX, !mcsema_real_eip !46
  %403 = load i64, i64* %RCX_val, !mcsema_real_eip !46
  store i64 %403, i64* %RCX, !mcsema_real_eip !46
  %404 = load i64, i64* %RDX_val, !mcsema_real_eip !46
  store i64 %404, i64* %RDX, !mcsema_real_eip !46
  %405 = load i64, i64* %RSI_val, !mcsema_real_eip !46
  store i64 %405, i64* %RSI, !mcsema_real_eip !46
  %406 = load i64, i64* %RDI_val, !mcsema_real_eip !46
  store i64 %406, i64* %RDI, !mcsema_real_eip !46
  %407 = load i64, i64* %RSP_val, !mcsema_real_eip !46
  store i64 %407, i64* %RSP, !mcsema_real_eip !46
  %408 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  store i64 %408, i64* %RBP, !mcsema_real_eip !46
  %409 = load i64, i64* %R8_val, !mcsema_real_eip !46
  store i64 %409, i64* %R8, !mcsema_real_eip !46
  %410 = load i64, i64* %R9_val, !mcsema_real_eip !46
  store i64 %410, i64* %R9, !mcsema_real_eip !46
  %411 = load i64, i64* %R10_val, !mcsema_real_eip !46
  store i64 %411, i64* %R10, !mcsema_real_eip !46
  %412 = load i64, i64* %R11_val, !mcsema_real_eip !46
  store i64 %412, i64* %R11, !mcsema_real_eip !46
  %413 = load i64, i64* %R12_val, !mcsema_real_eip !46
  store i64 %413, i64* %R12, !mcsema_real_eip !46
  %414 = load i64, i64* %R13_val, !mcsema_real_eip !46
  store i64 %414, i64* %R13, !mcsema_real_eip !46
  %415 = load i64, i64* %R14_val, !mcsema_real_eip !46
  store i64 %415, i64* %R14, !mcsema_real_eip !46
  %416 = load i64, i64* %R15_val, !mcsema_real_eip !46
  store i64 %416, i64* %R15, !mcsema_real_eip !46
  %417 = load i64, i64* %RIP_val, !mcsema_real_eip !46
  store i64 %417, i64* %RIP, !mcsema_real_eip !46
  %418 = load i1, i1* %CF_val, !mcsema_real_eip !46
  store i1 %418, i1* %CF, align 1, !mcsema_real_eip !46
  %419 = load i1, i1* %PF_val, !mcsema_real_eip !46
  store i1 %419, i1* %PF, align 1, !mcsema_real_eip !46
  %420 = load i1, i1* %AF_val, !mcsema_real_eip !46
  store i1 %420, i1* %AF, align 1, !mcsema_real_eip !46
  %421 = load i1, i1* %ZF_val, !mcsema_real_eip !46
  store i1 %421, i1* %ZF, align 1, !mcsema_real_eip !46
  %422 = load i1, i1* %SF_val, !mcsema_real_eip !46
  store i1 %422, i1* %SF, align 1, !mcsema_real_eip !46
  %423 = load i1, i1* %OF_val, !mcsema_real_eip !46
  store i1 %423, i1* %OF, align 1, !mcsema_real_eip !46
  %424 = load i1, i1* %DF_val, !mcsema_real_eip !46
  store i1 %424, i1* %DF, align 1, !mcsema_real_eip !46
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !46
  %425 = load i1, i1* %FPU_B_val, !mcsema_real_eip !46
  store i1 %425, i1* %FPU_B, align 1, !mcsema_real_eip !46
  %426 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !46
  store i1 %426, i1* %FPU_C3, align 1, !mcsema_real_eip !46
  %427 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !46
  store i3 %427, i3* %FPU_TOP, align 1, !mcsema_real_eip !46
  %428 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !46
  store i1 %428, i1* %FPU_C2, align 1, !mcsema_real_eip !46
  %429 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !46
  store i1 %429, i1* %FPU_C1, align 1, !mcsema_real_eip !46
  %430 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !46
  store i1 %430, i1* %FPU_C0, align 1, !mcsema_real_eip !46
  %431 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !46
  store i1 %431, i1* %FPU_ES, align 1, !mcsema_real_eip !46
  %432 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !46
  store i1 %432, i1* %FPU_SF, align 1, !mcsema_real_eip !46
  %433 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !46
  store i1 %433, i1* %FPU_PE, align 1, !mcsema_real_eip !46
  %434 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !46
  store i1 %434, i1* %FPU_UE, align 1, !mcsema_real_eip !46
  %435 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !46
  store i1 %435, i1* %FPU_OE, align 1, !mcsema_real_eip !46
  %436 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !46
  store i1 %436, i1* %FPU_ZE, align 1, !mcsema_real_eip !46
  %437 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !46
  store i1 %437, i1* %FPU_DE, align 1, !mcsema_real_eip !46
  %438 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !46
  store i1 %438, i1* %FPU_IE, align 1, !mcsema_real_eip !46
  %439 = load i1, i1* %FPU_X_val, !mcsema_real_eip !46
  store i1 %439, i1* %FPU_X, align 1, !mcsema_real_eip !46
  %440 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !46
  store i2 %440, i2* %FPU_RC, align 1, !mcsema_real_eip !46
  %441 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !46
  store i2 %441, i2* %FPU_PC, align 1, !mcsema_real_eip !46
  %442 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !46
  store i1 %442, i1* %FPU_PM, align 1, !mcsema_real_eip !46
  %443 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !46
  store i1 %443, i1* %FPU_UM, align 1, !mcsema_real_eip !46
  %444 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !46
  store i1 %444, i1* %FPU_OM, align 1, !mcsema_real_eip !46
  %445 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !46
  store i1 %445, i1* %FPU_ZM, align 1, !mcsema_real_eip !46
  %446 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !46
  store i1 %446, i1* %FPU_DM, align 1, !mcsema_real_eip !46
  %447 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !46
  store i1 %447, i1* %FPU_IM, align 1, !mcsema_real_eip !46
  %448 = load i64, i64* %53, align 4
  store i64 %448, i64* %52, align 4
  %449 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !46
  store i16 %449, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !46
  %450 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !46
  store i64 %450, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !46
  %451 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !46
  store i16 %451, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !46
  %452 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !46
  store i64 %452, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !46
  %453 = load i128, i128* %XMM0_val, !mcsema_real_eip !46
  store i128 %453, i128* %XMM0, align 1, !mcsema_real_eip !46
  %454 = load i128, i128* %XMM1_val, !mcsema_real_eip !46
  store i128 %454, i128* %XMM1, align 1, !mcsema_real_eip !46
  %455 = load i128, i128* %XMM2_val, !mcsema_real_eip !46
  store i128 %455, i128* %XMM2, align 1, !mcsema_real_eip !46
  %456 = load i128, i128* %XMM3_val, !mcsema_real_eip !46
  store i128 %456, i128* %XMM3, align 1, !mcsema_real_eip !46
  %457 = load i128, i128* %XMM4_val, !mcsema_real_eip !46
  store i128 %457, i128* %XMM4, align 1, !mcsema_real_eip !46
  %458 = load i128, i128* %XMM5_val, !mcsema_real_eip !46
  store i128 %458, i128* %XMM5, align 1, !mcsema_real_eip !46
  %459 = load i128, i128* %XMM6_val, !mcsema_real_eip !46
  store i128 %459, i128* %XMM6, align 1, !mcsema_real_eip !46
  %460 = load i128, i128* %XMM7_val, !mcsema_real_eip !46
  store i128 %460, i128* %XMM7, align 1, !mcsema_real_eip !46
  %461 = load i128, i128* %XMM8_val, !mcsema_real_eip !46
  store i128 %461, i128* %XMM8, align 1, !mcsema_real_eip !46
  %462 = load i128, i128* %XMM9_val, !mcsema_real_eip !46
  store i128 %462, i128* %XMM9, align 1, !mcsema_real_eip !46
  %463 = load i128, i128* %XMM10_val, !mcsema_real_eip !46
  store i128 %463, i128* %XMM10, align 1, !mcsema_real_eip !46
  %464 = load i128, i128* %XMM11_val, !mcsema_real_eip !46
  store i128 %464, i128* %XMM11, align 1, !mcsema_real_eip !46
  %465 = load i128, i128* %XMM12_val, !mcsema_real_eip !46
  store i128 %465, i128* %XMM12, align 1, !mcsema_real_eip !46
  %466 = load i128, i128* %XMM13_val, !mcsema_real_eip !46
  store i128 %466, i128* %XMM13, align 1, !mcsema_real_eip !46
  %467 = load i128, i128* %XMM14_val, !mcsema_real_eip !46
  store i128 %467, i128* %XMM14, align 1, !mcsema_real_eip !46
  %468 = load i128, i128* %XMM15_val, !mcsema_real_eip !46
  store i128 %468, i128* %XMM15, align 1, !mcsema_real_eip !46
  %469 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !46
  store i64 %469, i64* %STACK_BASE, align 1, !mcsema_real_eip !46
  %470 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !46
  store i64 %470, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !46
  ret void, !mcsema_real_eip !46
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !47
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !47
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !47
  %XMM15_val = alloca i128, !mcsema_real_eip !47
  %XMM14_val = alloca i128, !mcsema_real_eip !47
  %XMM13_val = alloca i128, !mcsema_real_eip !47
  %XMM12_val = alloca i128, !mcsema_real_eip !47
  %XMM11_val = alloca i128, !mcsema_real_eip !47
  %XMM10_val = alloca i128, !mcsema_real_eip !47
  %XMM9_val = alloca i128, !mcsema_real_eip !47
  %XMM8_val = alloca i128, !mcsema_real_eip !47
  %XMM7_val = alloca i128, !mcsema_real_eip !47
  %XMM6_val = alloca i128, !mcsema_real_eip !47
  %XMM5_val = alloca i128, !mcsema_real_eip !47
  %XMM4_val = alloca i128, !mcsema_real_eip !47
  %XMM3_val = alloca i128, !mcsema_real_eip !47
  %XMM2_val = alloca i128, !mcsema_real_eip !47
  %XMM1_val = alloca i128, !mcsema_real_eip !47
  %XMM0_val = alloca i128, !mcsema_real_eip !47
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !47
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !47
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !47
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !47
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !47
  %FPU_IM_val = alloca i1, !mcsema_real_eip !47
  %FPU_DM_val = alloca i1, !mcsema_real_eip !47
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !47
  %FPU_OM_val = alloca i1, !mcsema_real_eip !47
  %FPU_UM_val = alloca i1, !mcsema_real_eip !47
  %FPU_PM_val = alloca i1, !mcsema_real_eip !47
  %FPU_PC_val = alloca i2, !mcsema_real_eip !47
  %FPU_RC_val = alloca i2, !mcsema_real_eip !47
  %FPU_X_val = alloca i1, !mcsema_real_eip !47
  %FPU_IE_val = alloca i1, !mcsema_real_eip !47
  %FPU_DE_val = alloca i1, !mcsema_real_eip !47
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !47
  %FPU_OE_val = alloca i1, !mcsema_real_eip !47
  %FPU_UE_val = alloca i1, !mcsema_real_eip !47
  %FPU_PE_val = alloca i1, !mcsema_real_eip !47
  %FPU_SF_val = alloca i1, !mcsema_real_eip !47
  %FPU_ES_val = alloca i1, !mcsema_real_eip !47
  %FPU_C0_val = alloca i1, !mcsema_real_eip !47
  %FPU_C1_val = alloca i1, !mcsema_real_eip !47
  %FPU_C2_val = alloca i1, !mcsema_real_eip !47
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !47
  %FPU_C3_val = alloca i1, !mcsema_real_eip !47
  %FPU_B_val = alloca i1, !mcsema_real_eip !47
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !47
  %DF_val = alloca i1, !mcsema_real_eip !47
  %OF_val = alloca i1, !mcsema_real_eip !47
  %SF_val = alloca i1, !mcsema_real_eip !47
  %CF_val = alloca i1, !mcsema_real_eip !47
  %AF_val = alloca i1, !mcsema_real_eip !47
  %PF_val = alloca i1, !mcsema_real_eip !47
  %ZF_val = alloca i1, !mcsema_real_eip !47
  %RIP_val = alloca i64, !mcsema_real_eip !47
  %R14_val = alloca i64, !mcsema_real_eip !47
  %R13_val = alloca i64, !mcsema_real_eip !47
  %R12_val = alloca i64, !mcsema_real_eip !47
  %R11_val = alloca i64, !mcsema_real_eip !47
  %R10_val = alloca i64, !mcsema_real_eip !47
  %R9_val = alloca i64, !mcsema_real_eip !47
  %R8_val = alloca i64, !mcsema_real_eip !47
  %RSP_val = alloca i64, !mcsema_real_eip !47
  %RBP_val = alloca i64, !mcsema_real_eip !47
  %RDI_val = alloca i64, !mcsema_real_eip !47
  %RSI_val = alloca i64, !mcsema_real_eip !47
  %RDX_val = alloca i64, !mcsema_real_eip !47
  %RCX_val = alloca i64, !mcsema_real_eip !47
  %RBX_val = alloca i64, !mcsema_real_eip !47
  %RAX_val = alloca i64, !mcsema_real_eip !47
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !47
  %1 = load i64, i64* %RAX, !mcsema_real_eip !47
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !47
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !47
  %2 = load i64, i64* %RBX, !mcsema_real_eip !47
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !47
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !47
  %3 = load i64, i64* %RCX, !mcsema_real_eip !47
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !47
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !47
  %4 = load i64, i64* %RDX, !mcsema_real_eip !47
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !47
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !47
  %5 = load i64, i64* %RSI, !mcsema_real_eip !47
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !47
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !47
  %6 = load i64, i64* %RDI, !mcsema_real_eip !47
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !47
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !47
  %7 = load i64, i64* %RSP, !mcsema_real_eip !47
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !47
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !47
  %8 = load i64, i64* %RBP, !mcsema_real_eip !47
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !47
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !47
  %9 = load i64, i64* %R8, !mcsema_real_eip !47
  store i64 %9, i64* %R8_val, !mcsema_real_eip !47
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !47
  %10 = load i64, i64* %R9, !mcsema_real_eip !47
  store i64 %10, i64* %R9_val, !mcsema_real_eip !47
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !47
  %11 = load i64, i64* %R10, !mcsema_real_eip !47
  store i64 %11, i64* %R10_val, !mcsema_real_eip !47
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !47
  %12 = load i64, i64* %R11, !mcsema_real_eip !47
  store i64 %12, i64* %R11_val, !mcsema_real_eip !47
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !47
  %13 = load i64, i64* %R12, !mcsema_real_eip !47
  store i64 %13, i64* %R12_val, !mcsema_real_eip !47
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !47
  %14 = load i64, i64* %R13, !mcsema_real_eip !47
  store i64 %14, i64* %R13_val, !mcsema_real_eip !47
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !47
  %15 = load i64, i64* %R14, !mcsema_real_eip !47
  store i64 %15, i64* %R14_val, !mcsema_real_eip !47
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !47
  %16 = load i64, i64* %R15, !mcsema_real_eip !47
  store i64 %16, i64* %R15_val, !mcsema_real_eip !47
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !47
  %17 = load i64, i64* %RIP, !mcsema_real_eip !47
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !47
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !47
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !47
  store i1 %18, i1* %CF_val, !mcsema_real_eip !47
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !47
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !47
  store i1 %19, i1* %PF_val, !mcsema_real_eip !47
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !47
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !47
  store i1 %20, i1* %AF_val, !mcsema_real_eip !47
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !47
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !47
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !47
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !47
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !47
  store i1 %22, i1* %SF_val, !mcsema_real_eip !47
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !47
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !47
  store i1 %23, i1* %OF_val, !mcsema_real_eip !47
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !47
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !47
  store i1 %24, i1* %DF_val, !mcsema_real_eip !47
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !47
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !47
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !47
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !47
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !47
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !47
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !47
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !47
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !47
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !47
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !47
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !47
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !47
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !47
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !47
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !47
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !47
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !47
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !47
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !47
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !47
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !47
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !47
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !47
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !47
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !47
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !47
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !47
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !47
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !47
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !47
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !47
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !47
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !47
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !47
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !47
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !47
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !47
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !47
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !47
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !47
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !47
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !47
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !47
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !47
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !47
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !47
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !47
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !47
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !47
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !47
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !47
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !47
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !47
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !47
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !47
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !47
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !47
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !47
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !47
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !47
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !47
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !47
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !47
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !47
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !47
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !47
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !47
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !47
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !47
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !47
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !47
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !47
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !47
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !47
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !47
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !47
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !47
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !47
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !47
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !47
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !47
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !47
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !47
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !47
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !47
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !47
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !47
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !47
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !47
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !47
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !47
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !47
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !47
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !47
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !47
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !47
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !47
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !47
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !47
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !47
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !47
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !47
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !47
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !47
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !47
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !47
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !47
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !47
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !47
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !47
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !47
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !47
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !47
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !47
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !47
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !47
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !47
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !47
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !47
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !47
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !47
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !47
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !47
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !47
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !47
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !47
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !47
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !47
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !47
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !47
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !47
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !47
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !47
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !47
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !47
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !47
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !47
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !47
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  %78 = load i64, i64* %RSP_val, !mcsema_real_eip !47
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !47
  store i64 %77, i64* %80, !mcsema_real_eip !47
  store i64 %79, i64* %RSP_val, !mcsema_real_eip !47
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !48
  %81 = add i64 %78, 16, !mcsema_real_eip !49
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !49
  %83 = load i64, i64* %82, !mcsema_real_eip !49
  store i64 %83, i64* %RAX_val, !mcsema_real_eip !49
  %84 = add i64 %78, 8, !mcsema_real_eip !50
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !50
  %86 = load i64, i64* %85, !mcsema_real_eip !50
  store i64 %86, i64* %R10_val, !mcsema_real_eip !50
  %87 = load i64, i64* %RBP_val, !mcsema_real_eip !51
  %88 = add i64 %87, -20, !mcsema_real_eip !51
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !51
  %90 = load i64, i64* %RDI_val, !mcsema_real_eip !51
  %91 = trunc i64 %90 to i32, !mcsema_real_eip !51
  %92 = bitcast i64* %89 to i32*
  store i32 %91, i32* %92, !mcsema_real_eip !51
  %93 = load i64, i64* %RBP_val, !mcsema_real_eip !52
  %94 = add i64 %93, -24, !mcsema_real_eip !52
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !52
  %96 = load i64, i64* %RSI_val, !mcsema_real_eip !52
  %97 = trunc i64 %96 to i32, !mcsema_real_eip !52
  %98 = bitcast i64* %95 to i32*
  store i32 %97, i32* %98, !mcsema_real_eip !52
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !53
  %100 = add i64 %99, -28, !mcsema_real_eip !53
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !53
  %102 = load i64, i64* %RDX_val, !mcsema_real_eip !53
  %103 = trunc i64 %102 to i32, !mcsema_real_eip !53
  %104 = bitcast i64* %101 to i32*
  store i32 %103, i32* %104, !mcsema_real_eip !53
  %105 = load i64, i64* %RBP_val, !mcsema_real_eip !54
  %106 = add i64 %105, -32, !mcsema_real_eip !54
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !54
  %108 = load i64, i64* %RCX_val, !mcsema_real_eip !54
  %109 = trunc i64 %108 to i32, !mcsema_real_eip !54
  %110 = bitcast i64* %107 to i32*
  store i32 %109, i32* %110, !mcsema_real_eip !54
  %111 = load i64, i64* %RBP_val, !mcsema_real_eip !55
  %112 = add i64 %111, -36, !mcsema_real_eip !55
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !55
  %114 = load i64, i64* %R8_val, !mcsema_real_eip !55
  %115 = trunc i64 %114 to i32, !mcsema_real_eip !55
  %116 = bitcast i64* %113 to i32*
  store i32 %115, i32* %116, !mcsema_real_eip !55
  %117 = load i64, i64* %RBP_val, !mcsema_real_eip !56
  %118 = add i64 %117, -40, !mcsema_real_eip !56
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !56
  %120 = load i64, i64* %R9_val, !mcsema_real_eip !56
  %121 = trunc i64 %120 to i32, !mcsema_real_eip !56
  %122 = bitcast i64* %119 to i32*
  store i32 %121, i32* %122, !mcsema_real_eip !56
  %123 = load i64, i64* %RBP_val, !mcsema_real_eip !57
  %124 = add i64 %123, -48, !mcsema_real_eip !57
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !57
  %126 = load i64, i64* %R10_val, !mcsema_real_eip !57
  store i64 %126, i64* %125, !mcsema_real_eip !57
  %127 = load i64, i64* %RBP_val, !mcsema_real_eip !58
  %128 = add i64 %127, -56, !mcsema_real_eip !58
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !58
  %130 = load i64, i64* %RAX_val, !mcsema_real_eip !58
  store i64 %130, i64* %129, !mcsema_real_eip !58
  %131 = load i64, i64* %RBP_val, !mcsema_real_eip !59
  %132 = add i64 %131, -48, !mcsema_real_eip !59
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !59
  %134 = load i64, i64* %133, !mcsema_real_eip !59
  store i64 %134, i64* %RAX_val, !mcsema_real_eip !59
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !60
  %136 = bitcast i64* %135 to i32*
  %137 = load i32, i32* %136, !mcsema_real_eip !60
  %138 = zext i32 %137 to i64, !mcsema_real_eip !60
  store i64 %138, i64* %RCX_val, !mcsema_real_eip !60
  %139 = load i64, i64* %RBP_val, !mcsema_real_eip !61
  %140 = add i64 %139, -56, !mcsema_real_eip !61
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !61
  %142 = load i64, i64* %141, !mcsema_real_eip !61
  store i64 %142, i64* %RAX_val, !mcsema_real_eip !61
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !62
  %144 = bitcast i64* %143 to i32*
  %145 = load i32, i32* %144, !mcsema_real_eip !62
  %146 = zext i32 %145 to i64, !mcsema_real_eip !62
  store i64 %146, i64* %RDX_val, !mcsema_real_eip !62
  %147 = load i64, i64* %RCX_val, !mcsema_real_eip !63
  %148 = trunc i64 %147 to i32, !mcsema_real_eip !63
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %145, i32 %148)
  %149 = extractvalue { i32, i1 } %uadd, 0
  %150 = xor i32 %149, %148, !mcsema_real_eip !63
  %151 = xor i32 %150, %145, !mcsema_real_eip !63
  %152 = and i32 %151, 16, !mcsema_real_eip !63
  %153 = icmp ne i32 %152, 0, !mcsema_real_eip !63
  store i1 %153, i1* %AF_val, !mcsema_real_eip !63
  %154 = icmp slt i32 %149, 0
  store i1 %154, i1* %SF_val, !mcsema_real_eip !63
  %155 = icmp eq i32 %149, 0, !mcsema_real_eip !63
  store i1 %155, i1* %ZF_val, !mcsema_real_eip !63
  %156 = xor i32 %145, -2147483648, !mcsema_real_eip !63
  %157 = xor i32 %156, %148, !mcsema_real_eip !63
  %158 = and i32 %150, %157, !mcsema_real_eip !63
  %159 = icmp slt i32 %158, 0
  store i1 %159, i1* %OF_val, !mcsema_real_eip !63
  %160 = trunc i32 %149 to i8, !mcsema_real_eip !63
  %161 = tail call i8 @llvm.ctpop.i8(i8 %160), !mcsema_real_eip !63
  %162 = and i8 %161, 1
  %163 = icmp eq i8 %162, 0
  store i1 %163, i1* %PF_val, !mcsema_real_eip !63
  %164 = extractvalue { i32, i1 } %uadd, 1
  store i1 %164, i1* %CF_val, !mcsema_real_eip !63
  %165 = zext i32 %149 to i64, !mcsema_real_eip !63
  store i64 %165, i64* %RCX_val, !mcsema_real_eip !63
  %166 = load i64, i64* %RBP_val, !mcsema_real_eip !64
  %167 = add i64 %166, -72, !mcsema_real_eip !64
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !64
  %169 = bitcast i64* %168 to i32*
  store i32 %149, i32* %169, !mcsema_real_eip !64
  %170 = load i64, i64* %RBP_val, !mcsema_real_eip !65
  %171 = add i64 %170, -48, !mcsema_real_eip !65
  %172 = inttoptr i64 %171 to i64*, !mcsema_real_eip !65
  %173 = load i64, i64* %172, !mcsema_real_eip !65
  store i64 %173, i64* %RAX_val, !mcsema_real_eip !65
  %174 = add i64 %173, 4, !mcsema_real_eip !66
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !66
  %176 = bitcast i64* %175 to i32*
  %177 = load i32, i32* %176, !mcsema_real_eip !66
  %178 = zext i32 %177 to i64, !mcsema_real_eip !66
  store i64 %178, i64* %RCX_val, !mcsema_real_eip !66
  %179 = load i64, i64* %RBP_val, !mcsema_real_eip !67
  %180 = add i64 %179, -56, !mcsema_real_eip !67
  %181 = inttoptr i64 %180 to i64*, !mcsema_real_eip !67
  %182 = load i64, i64* %181, !mcsema_real_eip !67
  store i64 %182, i64* %RAX_val, !mcsema_real_eip !67
  %183 = add i64 %182, 4, !mcsema_real_eip !68
  %184 = inttoptr i64 %183 to i64*, !mcsema_real_eip !68
  %185 = bitcast i64* %184 to i32*
  %186 = load i32, i32* %185, !mcsema_real_eip !68
  %187 = zext i32 %186 to i64, !mcsema_real_eip !68
  store i64 %187, i64* %RDX_val, !mcsema_real_eip !68
  %188 = load i64, i64* %RCX_val, !mcsema_real_eip !69
  %189 = trunc i64 %188 to i32, !mcsema_real_eip !69
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %186, i32 %189)
  %190 = extractvalue { i32, i1 } %uadd70, 0
  %191 = xor i32 %190, %189, !mcsema_real_eip !69
  %192 = xor i32 %191, %186, !mcsema_real_eip !69
  %193 = and i32 %192, 16, !mcsema_real_eip !69
  %194 = icmp ne i32 %193, 0, !mcsema_real_eip !69
  store i1 %194, i1* %AF_val, !mcsema_real_eip !69
  %195 = icmp slt i32 %190, 0
  store i1 %195, i1* %SF_val, !mcsema_real_eip !69
  %196 = icmp eq i32 %190, 0, !mcsema_real_eip !69
  store i1 %196, i1* %ZF_val, !mcsema_real_eip !69
  %197 = xor i32 %186, -2147483648, !mcsema_real_eip !69
  %198 = xor i32 %197, %189, !mcsema_real_eip !69
  %199 = and i32 %191, %198, !mcsema_real_eip !69
  %200 = icmp slt i32 %199, 0
  store i1 %200, i1* %OF_val, !mcsema_real_eip !69
  %201 = trunc i32 %190 to i8, !mcsema_real_eip !69
  %202 = tail call i8 @llvm.ctpop.i8(i8 %201), !mcsema_real_eip !69
  %203 = and i8 %202, 1
  %204 = icmp eq i8 %203, 0
  store i1 %204, i1* %PF_val, !mcsema_real_eip !69
  %205 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %205, i1* %CF_val, !mcsema_real_eip !69
  %206 = zext i32 %190 to i64, !mcsema_real_eip !69
  store i64 %206, i64* %RCX_val, !mcsema_real_eip !69
  %207 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %208 = add i64 %207, -68, !mcsema_real_eip !70
  %209 = inttoptr i64 %208 to i64*, !mcsema_real_eip !70
  %210 = bitcast i64* %209 to i32*
  store i32 %190, i32* %210, !mcsema_real_eip !70
  %211 = load i64, i64* %RBP_val, !mcsema_real_eip !71
  %212 = add i64 %211, -48, !mcsema_real_eip !71
  %213 = inttoptr i64 %212 to i64*, !mcsema_real_eip !71
  %214 = load i64, i64* %213, !mcsema_real_eip !71
  store i64 %214, i64* %RAX_val, !mcsema_real_eip !71
  %215 = add i64 %214, 8, !mcsema_real_eip !72
  %216 = inttoptr i64 %215 to i64*, !mcsema_real_eip !72
  %217 = bitcast i64* %216 to i32*
  %218 = load i32, i32* %217, !mcsema_real_eip !72
  %219 = zext i32 %218 to i64, !mcsema_real_eip !72
  store i64 %219, i64* %RCX_val, !mcsema_real_eip !72
  %220 = load i64, i64* %RBP_val, !mcsema_real_eip !73
  %221 = add i64 %220, -56, !mcsema_real_eip !73
  %222 = inttoptr i64 %221 to i64*, !mcsema_real_eip !73
  %223 = load i64, i64* %222, !mcsema_real_eip !73
  store i64 %223, i64* %RAX_val, !mcsema_real_eip !73
  %224 = add i64 %223, 8, !mcsema_real_eip !74
  %225 = inttoptr i64 %224 to i64*, !mcsema_real_eip !74
  %226 = bitcast i64* %225 to i32*
  %227 = load i32, i32* %226, !mcsema_real_eip !74
  %228 = zext i32 %227 to i64, !mcsema_real_eip !74
  store i64 %228, i64* %RDX_val, !mcsema_real_eip !74
  %229 = load i64, i64* %RCX_val, !mcsema_real_eip !75
  %230 = trunc i64 %229 to i32, !mcsema_real_eip !75
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %227, i32 %230)
  %231 = extractvalue { i32, i1 } %uadd71, 0
  %232 = xor i32 %231, %230, !mcsema_real_eip !75
  %233 = xor i32 %232, %227, !mcsema_real_eip !75
  %234 = and i32 %233, 16, !mcsema_real_eip !75
  %235 = icmp ne i32 %234, 0, !mcsema_real_eip !75
  store i1 %235, i1* %AF_val, !mcsema_real_eip !75
  %236 = icmp slt i32 %231, 0
  store i1 %236, i1* %SF_val, !mcsema_real_eip !75
  %237 = icmp eq i32 %231, 0, !mcsema_real_eip !75
  store i1 %237, i1* %ZF_val, !mcsema_real_eip !75
  %238 = xor i32 %227, -2147483648, !mcsema_real_eip !75
  %239 = xor i32 %238, %230, !mcsema_real_eip !75
  %240 = and i32 %232, %239, !mcsema_real_eip !75
  %241 = icmp slt i32 %240, 0
  store i1 %241, i1* %OF_val, !mcsema_real_eip !75
  %242 = trunc i32 %231 to i8, !mcsema_real_eip !75
  %243 = tail call i8 @llvm.ctpop.i8(i8 %242), !mcsema_real_eip !75
  %244 = and i8 %243, 1
  %245 = icmp eq i8 %244, 0
  store i1 %245, i1* %PF_val, !mcsema_real_eip !75
  %246 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %246, i1* %CF_val, !mcsema_real_eip !75
  %247 = zext i32 %231 to i64, !mcsema_real_eip !75
  store i64 %247, i64* %RCX_val, !mcsema_real_eip !75
  %248 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %249 = add i64 %248, -64, !mcsema_real_eip !76
  %250 = inttoptr i64 %249 to i64*, !mcsema_real_eip !76
  %251 = bitcast i64* %250 to i32*
  store i32 %231, i32* %251, !mcsema_real_eip !76
  %252 = load i64, i64* %RBP_val, !mcsema_real_eip !77
  %253 = add i64 %252, -64, !mcsema_real_eip !77
  %254 = inttoptr i64 %253 to i64*, !mcsema_real_eip !77
  %255 = bitcast i64* %254 to i32*
  %256 = load i32, i32* %255, !mcsema_real_eip !77
  %257 = zext i32 %256 to i64, !mcsema_real_eip !77
  store i64 %257, i64* %RCX_val, !mcsema_real_eip !77
  %258 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %259 = add i64 %258, -8, !mcsema_real_eip !78
  %260 = inttoptr i64 %259 to i64*, !mcsema_real_eip !78
  %261 = bitcast i64* %260 to i32*
  store i32 %256, i32* %261, !mcsema_real_eip !78
  %262 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %263 = add i64 %262, -72, !mcsema_real_eip !79
  %264 = inttoptr i64 %263 to i64*, !mcsema_real_eip !79
  %265 = load i64, i64* %264, !mcsema_real_eip !79
  store i64 %265, i64* %RAX_val, !mcsema_real_eip !79
  %266 = add i64 %262, -16, !mcsema_real_eip !80
  %267 = inttoptr i64 %266 to i64*, !mcsema_real_eip !80
  store i64 %265, i64* %267, !mcsema_real_eip !80
  %268 = load i64, i64* %RBP_val, !mcsema_real_eip !81
  %269 = add i64 %268, -8, !mcsema_real_eip !81
  %270 = inttoptr i64 %269 to i64*, !mcsema_real_eip !81
  %271 = bitcast i64* %270 to i32*
  %272 = load i32, i32* %271, !mcsema_real_eip !81
  %273 = zext i32 %272 to i64, !mcsema_real_eip !81
  store i64 %273, i64* %RCX_val, !mcsema_real_eip !81
  %274 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %275 = add i64 %274, -80, !mcsema_real_eip !82
  %276 = inttoptr i64 %275 to i64*, !mcsema_real_eip !82
  %277 = bitcast i64* %276 to i32*
  store i32 %272, i32* %277, !mcsema_real_eip !82
  %278 = load i64, i64* %RBP_val, !mcsema_real_eip !83
  %279 = add i64 %278, -16, !mcsema_real_eip !83
  %280 = inttoptr i64 %279 to i64*, !mcsema_real_eip !83
  %281 = load i64, i64* %280, !mcsema_real_eip !83
  store i64 %281, i64* %RAX_val, !mcsema_real_eip !83
  %282 = add i64 %278, -88, !mcsema_real_eip !84
  %283 = inttoptr i64 %282 to i64*, !mcsema_real_eip !84
  store i64 %281, i64* %283, !mcsema_real_eip !84
  %284 = load i64, i64* %RBP_val, !mcsema_real_eip !85
  %285 = add i64 %284, -88, !mcsema_real_eip !85
  %286 = inttoptr i64 %285 to i64*, !mcsema_real_eip !85
  %287 = load i64, i64* %286, !mcsema_real_eip !85
  store i64 %287, i64* %RAX_val, !mcsema_real_eip !85
  %288 = add i64 %284, -80, !mcsema_real_eip !86
  %289 = inttoptr i64 %288 to i64*, !mcsema_real_eip !86
  %290 = bitcast i64* %289 to i32*
  %291 = load i32, i32* %290, !mcsema_real_eip !86
  %292 = zext i32 %291 to i64, !mcsema_real_eip !86
  store i64 %292, i64* %RDX_val, !mcsema_real_eip !86
  %293 = load i64, i64* %RSP_val, !mcsema_real_eip !87
  %294 = inttoptr i64 %293 to i64*, !mcsema_real_eip !87
  %295 = load i64, i64* %294, !mcsema_real_eip !87
  store i64 %295, i64* %RBP_val, !mcsema_real_eip !87
  %296 = add i64 %293, 16, !mcsema_real_eip !88
  store i64 %296, i64* %RSP_val, !mcsema_real_eip !88
  %297 = load i64, i64* %RAX_val, !mcsema_real_eip !88
  store i64 %297, i64* %RAX, !mcsema_real_eip !88
  %298 = load i64, i64* %RBX_val, !mcsema_real_eip !88
  store i64 %298, i64* %RBX, !mcsema_real_eip !88
  %299 = load i64, i64* %RCX_val, !mcsema_real_eip !88
  store i64 %299, i64* %RCX, !mcsema_real_eip !88
  %300 = load i64, i64* %RDX_val, !mcsema_real_eip !88
  store i64 %300, i64* %RDX, !mcsema_real_eip !88
  %301 = load i64, i64* %RSI_val, !mcsema_real_eip !88
  store i64 %301, i64* %RSI, !mcsema_real_eip !88
  %302 = load i64, i64* %RDI_val, !mcsema_real_eip !88
  store i64 %302, i64* %RDI, !mcsema_real_eip !88
  %303 = load i64, i64* %RSP_val, !mcsema_real_eip !88
  store i64 %303, i64* %RSP, !mcsema_real_eip !88
  %304 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  store i64 %304, i64* %RBP, !mcsema_real_eip !88
  %305 = load i64, i64* %R8_val, !mcsema_real_eip !88
  store i64 %305, i64* %R8, !mcsema_real_eip !88
  %306 = load i64, i64* %R9_val, !mcsema_real_eip !88
  store i64 %306, i64* %R9, !mcsema_real_eip !88
  %307 = load i64, i64* %R10_val, !mcsema_real_eip !88
  store i64 %307, i64* %R10, !mcsema_real_eip !88
  %308 = load i64, i64* %R11_val, !mcsema_real_eip !88
  store i64 %308, i64* %R11, !mcsema_real_eip !88
  %309 = load i64, i64* %R12_val, !mcsema_real_eip !88
  store i64 %309, i64* %R12, !mcsema_real_eip !88
  %310 = load i64, i64* %R13_val, !mcsema_real_eip !88
  store i64 %310, i64* %R13, !mcsema_real_eip !88
  %311 = load i64, i64* %R14_val, !mcsema_real_eip !88
  store i64 %311, i64* %R14, !mcsema_real_eip !88
  %312 = load i64, i64* %R15_val, !mcsema_real_eip !88
  store i64 %312, i64* %R15, !mcsema_real_eip !88
  %313 = load i64, i64* %RIP_val, !mcsema_real_eip !88
  store i64 %313, i64* %RIP, !mcsema_real_eip !88
  %314 = load i1, i1* %CF_val, !mcsema_real_eip !88
  store i1 %314, i1* %CF, align 1, !mcsema_real_eip !88
  %315 = load i1, i1* %PF_val, !mcsema_real_eip !88
  store i1 %315, i1* %PF, align 1, !mcsema_real_eip !88
  %316 = load i1, i1* %AF_val, !mcsema_real_eip !88
  store i1 %316, i1* %AF, align 1, !mcsema_real_eip !88
  %317 = load i1, i1* %ZF_val, !mcsema_real_eip !88
  store i1 %317, i1* %ZF, align 1, !mcsema_real_eip !88
  %318 = load i1, i1* %SF_val, !mcsema_real_eip !88
  store i1 %318, i1* %SF, align 1, !mcsema_real_eip !88
  %319 = load i1, i1* %OF_val, !mcsema_real_eip !88
  store i1 %319, i1* %OF, align 1, !mcsema_real_eip !88
  %320 = load i1, i1* %DF_val, !mcsema_real_eip !88
  store i1 %320, i1* %DF, align 1, !mcsema_real_eip !88
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !88
  %321 = load i1, i1* %FPU_B_val, !mcsema_real_eip !88
  store i1 %321, i1* %FPU_B, align 1, !mcsema_real_eip !88
  %322 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !88
  store i1 %322, i1* %FPU_C3, align 1, !mcsema_real_eip !88
  %323 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !88
  store i3 %323, i3* %FPU_TOP, align 1, !mcsema_real_eip !88
  %324 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !88
  store i1 %324, i1* %FPU_C2, align 1, !mcsema_real_eip !88
  %325 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !88
  store i1 %325, i1* %FPU_C1, align 1, !mcsema_real_eip !88
  %326 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !88
  store i1 %326, i1* %FPU_C0, align 1, !mcsema_real_eip !88
  %327 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !88
  store i1 %327, i1* %FPU_ES, align 1, !mcsema_real_eip !88
  %328 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !88
  store i1 %328, i1* %FPU_SF, align 1, !mcsema_real_eip !88
  %329 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !88
  store i1 %329, i1* %FPU_PE, align 1, !mcsema_real_eip !88
  %330 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !88
  store i1 %330, i1* %FPU_UE, align 1, !mcsema_real_eip !88
  %331 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !88
  store i1 %331, i1* %FPU_OE, align 1, !mcsema_real_eip !88
  %332 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !88
  store i1 %332, i1* %FPU_ZE, align 1, !mcsema_real_eip !88
  %333 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !88
  store i1 %333, i1* %FPU_DE, align 1, !mcsema_real_eip !88
  %334 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !88
  store i1 %334, i1* %FPU_IE, align 1, !mcsema_real_eip !88
  %335 = load i1, i1* %FPU_X_val, !mcsema_real_eip !88
  store i1 %335, i1* %FPU_X, align 1, !mcsema_real_eip !88
  %336 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !88
  store i2 %336, i2* %FPU_RC, align 1, !mcsema_real_eip !88
  %337 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !88
  store i2 %337, i2* %FPU_PC, align 1, !mcsema_real_eip !88
  %338 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !88
  store i1 %338, i1* %FPU_PM, align 1, !mcsema_real_eip !88
  %339 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !88
  store i1 %339, i1* %FPU_UM, align 1, !mcsema_real_eip !88
  %340 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !88
  store i1 %340, i1* %FPU_OM, align 1, !mcsema_real_eip !88
  %341 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !88
  store i1 %341, i1* %FPU_ZM, align 1, !mcsema_real_eip !88
  %342 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !88
  store i1 %342, i1* %FPU_DM, align 1, !mcsema_real_eip !88
  %343 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !88
  store i1 %343, i1* %FPU_IM, align 1, !mcsema_real_eip !88
  %344 = load i64, i64* %53, align 4
  store i64 %344, i64* %52, align 4
  %345 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !88
  store i16 %345, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !88
  %346 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !88
  store i64 %346, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !88
  %347 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !88
  store i16 %347, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !88
  %348 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !88
  store i64 %348, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !88
  %349 = load i128, i128* %XMM0_val, !mcsema_real_eip !88
  store i128 %349, i128* %XMM0, align 1, !mcsema_real_eip !88
  %350 = load i128, i128* %XMM1_val, !mcsema_real_eip !88
  store i128 %350, i128* %XMM1, align 1, !mcsema_real_eip !88
  %351 = load i128, i128* %XMM2_val, !mcsema_real_eip !88
  store i128 %351, i128* %XMM2, align 1, !mcsema_real_eip !88
  %352 = load i128, i128* %XMM3_val, !mcsema_real_eip !88
  store i128 %352, i128* %XMM3, align 1, !mcsema_real_eip !88
  %353 = load i128, i128* %XMM4_val, !mcsema_real_eip !88
  store i128 %353, i128* %XMM4, align 1, !mcsema_real_eip !88
  %354 = load i128, i128* %XMM5_val, !mcsema_real_eip !88
  store i128 %354, i128* %XMM5, align 1, !mcsema_real_eip !88
  %355 = load i128, i128* %XMM6_val, !mcsema_real_eip !88
  store i128 %355, i128* %XMM6, align 1, !mcsema_real_eip !88
  %356 = load i128, i128* %XMM7_val, !mcsema_real_eip !88
  store i128 %356, i128* %XMM7, align 1, !mcsema_real_eip !88
  %357 = load i128, i128* %XMM8_val, !mcsema_real_eip !88
  store i128 %357, i128* %XMM8, align 1, !mcsema_real_eip !88
  %358 = load i128, i128* %XMM9_val, !mcsema_real_eip !88
  store i128 %358, i128* %XMM9, align 1, !mcsema_real_eip !88
  %359 = load i128, i128* %XMM10_val, !mcsema_real_eip !88
  store i128 %359, i128* %XMM10, align 1, !mcsema_real_eip !88
  %360 = load i128, i128* %XMM11_val, !mcsema_real_eip !88
  store i128 %360, i128* %XMM11, align 1, !mcsema_real_eip !88
  %361 = load i128, i128* %XMM12_val, !mcsema_real_eip !88
  store i128 %361, i128* %XMM12, align 1, !mcsema_real_eip !88
  %362 = load i128, i128* %XMM13_val, !mcsema_real_eip !88
  store i128 %362, i128* %XMM13, align 1, !mcsema_real_eip !88
  %363 = load i128, i128* %XMM14_val, !mcsema_real_eip !88
  store i128 %363, i128* %XMM14, align 1, !mcsema_real_eip !88
  %364 = load i128, i128* %XMM15_val, !mcsema_real_eip !88
  store i128 %364, i128* %XMM15, align 1, !mcsema_real_eip !88
  %365 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !88
  store i64 %365, i64* %STACK_BASE, align 1, !mcsema_real_eip !88
  %366 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !88
  store i64 %366, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !88
  ret void, !mcsema_real_eip !88
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_90(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 144, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 145, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = !{i64 148, [16 x i8] c"\09subq\09$80, %rsp\00"}
!5 = !{i64 152, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!6 = !{i64 159, [21 x i8] c"\09movl\09$10, -16(%rbp)\00"}
!7 = !{i64 166, [21 x i8] c"\09movl\09$10, -12(%rbp)\00"}
!8 = !{i64 173, [20 x i8] c"\09movl\09$10, -8(%rbp)\00"}
!9 = !{i64 185, [17 x i8] c"\09movl\09%eax, %edi\00"}
!10 = !{i64 187, [9 x i8] c"\09callq\090\00"}
!11 = !{i64 192, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!12 = !{i64 196, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!13 = !{i64 200, [17 x i8] c"\09movl\09$5, (%rax)\00"}
!14 = !{i64 206, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!15 = !{i64 210, [18 x i8] c"\09movl\09$5, 4(%rax)\00"}
!16 = !{i64 217, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!17 = !{i64 221, [18 x i8] c"\09movl\09$5, 8(%rax)\00"}
!18 = !{i64 228, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!19 = !{i64 232, [17 x i8] c"\09movq\09%rsp, %rdi\00"}
!20 = !{i64 235, [20 x i8] c"\09movq\09%rax, 8(%rdi)\00"}
!21 = !{i64 239, [22 x i8] c"\09leaq\09-16(%rbp), %rax\00"}
!22 = !{i64 243, [19 x i8] c"\09movq\09%rax, (%rdi)\00"}
!23 = !{i64 246, [15 x i8] c"\09movl\09$1, %ecx\00"}
!24 = !{i64 251, [15 x i8] c"\09movl\09$2, %edx\00"}
!25 = !{i64 261, [17 x i8] c"\09movl\09%ecx, %edi\00"}
!26 = !{i64 263, [22 x i8] c"\09movl\09%esi, -60(%rbp)\00"}
!27 = !{i64 266, [17 x i8] c"\09movl\09%edx, %esi\00"}
!28 = !{i64 268, [22 x i8] c"\09movl\09-60(%rbp), %r8d\00"}
!29 = !{i64 272, [22 x i8] c"\09movl\09%edx, -64(%rbp)\00"}
!30 = !{i64 275, [17 x i8] c"\09movl\09%r8d, %edx\00"}
!31 = !{i64 278, [22 x i8] c"\09movl\09-64(%rbp), %r8d\00"}
!32 = !{i64 282, [22 x i8] c"\09movl\09-60(%rbp), %r9d\00"}
!33 = !{i64 286, [12 x i8] c"\09callq\09-291\00"}
!34 = !{i64 291, [22 x i8] c"\09movl\09%edx, -48(%rbp)\00"}
!35 = !{i64 294, [22 x i8] c"\09movq\09%rax, -56(%rbp)\00"}
!36 = !{i64 298, [22 x i8] c"\09movq\09-56(%rbp), %rax\00"}
!37 = !{i64 302, [22 x i8] c"\09movq\09%rax, -40(%rbp)\00"}
!38 = !{i64 306, [22 x i8] c"\09movl\09-48(%rbp), %ecx\00"}
!39 = !{i64 309, [22 x i8] c"\09movl\09%ecx, -32(%rbp)\00"}
!40 = !{i64 312, [22 x i8] c"\09movl\09-40(%rbp), %ecx\00"}
!41 = !{i64 315, [22 x i8] c"\09addl\09-36(%rbp), %ecx\00"}
!42 = !{i64 318, [22 x i8] c"\09addl\09-32(%rbp), %ecx\00"}
!43 = !{i64 321, [17 x i8] c"\09movl\09%ecx, %eax\00"}
!44 = !{i64 323, [16 x i8] c"\09addq\09$80, %rsp\00"}
!45 = !{i64 327, [11 x i8] c"\09popq\09%rbp\00"}
!46 = !{i64 328, [6 x i8] c"\09retq\00"}
!47 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!48 = !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!49 = !{i64 4, [21 x i8] c"\09movq\0924(%rbp), %rax\00"}
!50 = !{i64 8, [21 x i8] c"\09movq\0916(%rbp), %r10\00"}
!51 = !{i64 12, [22 x i8] c"\09movl\09%edi, -20(%rbp)\00"}
!52 = !{i64 15, [22 x i8] c"\09movl\09%esi, -24(%rbp)\00"}
!53 = !{i64 18, [22 x i8] c"\09movl\09%edx, -28(%rbp)\00"}
!54 = !{i64 21, [22 x i8] c"\09movl\09%ecx, -32(%rbp)\00"}
!55 = !{i64 24, [22 x i8] c"\09movl\09%r8d, -36(%rbp)\00"}
!56 = !{i64 28, [22 x i8] c"\09movl\09%r9d, -40(%rbp)\00"}
!57 = !{i64 32, [22 x i8] c"\09movq\09%r10, -48(%rbp)\00"}
!58 = !{i64 36, [22 x i8] c"\09movq\09%rax, -56(%rbp)\00"}
!59 = !{i64 40, [22 x i8] c"\09movq\09-48(%rbp), %rax\00"}
!60 = !{i64 44, [19 x i8] c"\09movl\09(%rax), %ecx\00"}
!61 = !{i64 46, [22 x i8] c"\09movq\09-56(%rbp), %rax\00"}
!62 = !{i64 50, [19 x i8] c"\09movl\09(%rax), %edx\00"}
!63 = !{i64 52, [17 x i8] c"\09addl\09%edx, %ecx\00"}
!64 = !{i64 54, [22 x i8] c"\09movl\09%ecx, -72(%rbp)\00"}
!65 = !{i64 57, [22 x i8] c"\09movq\09-48(%rbp), %rax\00"}
!66 = !{i64 61, [20 x i8] c"\09movl\094(%rax), %ecx\00"}
!67 = !{i64 64, [22 x i8] c"\09movq\09-56(%rbp), %rax\00"}
!68 = !{i64 68, [20 x i8] c"\09movl\094(%rax), %edx\00"}
!69 = !{i64 71, [17 x i8] c"\09addl\09%edx, %ecx\00"}
!70 = !{i64 73, [22 x i8] c"\09movl\09%ecx, -68(%rbp)\00"}
!71 = !{i64 76, [22 x i8] c"\09movq\09-48(%rbp), %rax\00"}
!72 = !{i64 80, [20 x i8] c"\09movl\098(%rax), %ecx\00"}
!73 = !{i64 83, [22 x i8] c"\09movq\09-56(%rbp), %rax\00"}
!74 = !{i64 87, [20 x i8] c"\09movl\098(%rax), %edx\00"}
!75 = !{i64 90, [17 x i8] c"\09addl\09%edx, %ecx\00"}
!76 = !{i64 92, [22 x i8] c"\09movl\09%ecx, -64(%rbp)\00"}
!77 = !{i64 95, [22 x i8] c"\09movl\09-64(%rbp), %ecx\00"}
!78 = !{i64 98, [21 x i8] c"\09movl\09%ecx, -8(%rbp)\00"}
!79 = !{i64 101, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!80 = !{i64 105, [22 x i8] c"\09movq\09%rax, -16(%rbp)\00"}
!81 = !{i64 109, [21 x i8] c"\09movl\09-8(%rbp), %ecx\00"}
!82 = !{i64 112, [22 x i8] c"\09movl\09%ecx, -80(%rbp)\00"}
!83 = !{i64 115, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!84 = !{i64 119, [22 x i8] c"\09movq\09%rax, -88(%rbp)\00"}
!85 = !{i64 123, [22 x i8] c"\09movq\09-88(%rbp), %rax\00"}
!86 = !{i64 127, [22 x i8] c"\09movl\09-80(%rbp), %edx\00"}
!87 = !{i64 130, [11 x i8] c"\09popq\09%rbp\00"}
!88 = !{i64 131, [6 x i8] c"\09retq\00"}
