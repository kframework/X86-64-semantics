; ModuleID = 'Output/test_26_1.clang.bc'
source_filename = "Output/test_26_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_80(%struct.regs*) {
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
  %114 = load i64, i64* %RAX_val, !mcsema_real_eip !12
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !12
  %116 = bitcast i64* %115 to i32*
  store i32 5, i32* %116, !mcsema_real_eip !12
  %117 = load i64, i64* %RBP_val, !mcsema_real_eip !13
  %118 = add i64 %117, -24, !mcsema_real_eip !13
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !13
  %120 = load i64, i64* %119, !mcsema_real_eip !13
  store i64 %120, i64* %RAX_val, !mcsema_real_eip !13
  %121 = add i64 %120, 4, !mcsema_real_eip !14
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !14
  %123 = bitcast i64* %122 to i32*
  store i32 5, i32* %123, !mcsema_real_eip !14
  %124 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %125 = add i64 %124, -24, !mcsema_real_eip !15
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !15
  %127 = load i64, i64* %126, !mcsema_real_eip !15
  store i64 %127, i64* %RAX_val, !mcsema_real_eip !15
  %128 = add i64 %127, 8, !mcsema_real_eip !16
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !16
  %130 = bitcast i64* %129 to i32*
  store i32 5, i32* %130, !mcsema_real_eip !16
  %131 = load i64, i64* %RBP_val, !mcsema_real_eip !17
  %132 = add i64 %131, -24, !mcsema_real_eip !17
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !17
  %134 = load i64, i64* %133, !mcsema_real_eip !17
  %135 = load i64, i64* %RSP_val, !mcsema_real_eip !18
  store i64 %135, i64* %RDI_val, !mcsema_real_eip !18
  %136 = add i64 %135, 8, !mcsema_real_eip !19
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !19
  store i64 %134, i64* %137, !mcsema_real_eip !19
  %138 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %139 = add i64 %138, -16, !mcsema_real_eip !20
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !20
  %141 = ptrtoint i64* %140 to i64, !mcsema_real_eip !20
  store i64 %141, i64* %RAX_val, !mcsema_real_eip !20
  %142 = load i64, i64* %RDI_val, !mcsema_real_eip !21
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !21
  store i64 %141, i64* %143, !mcsema_real_eip !21
  store i64 1, i64* %RCX_val, !mcsema_real_eip !22
  store i64 2, i64* %RDX_val, !mcsema_real_eip !23
  store i64 1, i64* %RDI_val, !mcsema_real_eip !24
  %144 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %145 = add i64 %144, -60, !mcsema_real_eip !25
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !25
  %147 = bitcast i64* %146 to i32*
  store i32 3, i32* %147, !mcsema_real_eip !25
  %148 = load i64, i64* %RDX_val, !mcsema_real_eip !26
  %149 = and i64 %148, 4294967295
  store i64 %149, i64* %RSI_val, !mcsema_real_eip !26
  %150 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %151 = add i64 %150, -60, !mcsema_real_eip !27
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !27
  %153 = bitcast i64* %152 to i32*
  %154 = load i32, i32* %153, !mcsema_real_eip !27
  %155 = zext i32 %154 to i64, !mcsema_real_eip !27
  store i64 %155, i64* %R8_val, !mcsema_real_eip !27
  %156 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %157 = add i64 %156, -64, !mcsema_real_eip !28
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !28
  %159 = load i64, i64* %RDX_val, !mcsema_real_eip !28
  %160 = trunc i64 %159 to i32, !mcsema_real_eip !28
  %161 = bitcast i64* %158 to i32*
  store i32 %160, i32* %161, !mcsema_real_eip !28
  %162 = load i64, i64* %R8_val, !mcsema_real_eip !29
  %163 = and i64 %162, 4294967295
  store i64 %163, i64* %RDX_val, !mcsema_real_eip !29
  %164 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  %165 = add i64 %164, -64, !mcsema_real_eip !30
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !30
  %167 = bitcast i64* %166 to i32*
  %168 = load i32, i32* %167, !mcsema_real_eip !30
  %169 = zext i32 %168 to i64, !mcsema_real_eip !30
  store i64 %169, i64* %R8_val, !mcsema_real_eip !30
  %170 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %171 = add i64 %170, -60, !mcsema_real_eip !31
  %172 = inttoptr i64 %171 to i64*, !mcsema_real_eip !31
  %173 = bitcast i64* %172 to i32*
  %174 = load i32, i32* %173, !mcsema_real_eip !31
  %175 = zext i32 %174 to i64, !mcsema_real_eip !31
  store i64 %175, i64* %R9_val, !mcsema_real_eip !31
  %176 = load i64, i64* %RSP_val, !mcsema_real_eip !32
  %177 = add i64 %176, -8
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !32
  store i64 -4981261766360305936, i64* %178, !mcsema_real_eip !32
  store i64 %177, i64* %RSP_val, !mcsema_real_eip !32
  %179 = load i64, i64* %RAX_val, !mcsema_real_eip !32
  store i64 %179, i64* %RAX, !mcsema_real_eip !32
  %180 = load i64, i64* %RBX_val, !mcsema_real_eip !32
  store i64 %180, i64* %RBX, !mcsema_real_eip !32
  %181 = load i64, i64* %RCX_val, !mcsema_real_eip !32
  store i64 %181, i64* %RCX, !mcsema_real_eip !32
  %182 = load i64, i64* %RDX_val, !mcsema_real_eip !32
  store i64 %182, i64* %RDX, !mcsema_real_eip !32
  %183 = load i64, i64* %RSI_val, !mcsema_real_eip !32
  store i64 %183, i64* %RSI, !mcsema_real_eip !32
  %184 = load i64, i64* %RDI_val, !mcsema_real_eip !32
  store i64 %184, i64* %RDI, !mcsema_real_eip !32
  %185 = load i64, i64* %RSP_val, !mcsema_real_eip !32
  store i64 %185, i64* %RSP, !mcsema_real_eip !32
  %186 = load i64, i64* %RBP_val, !mcsema_real_eip !32
  store i64 %186, i64* %RBP, !mcsema_real_eip !32
  %187 = load i64, i64* %R8_val, !mcsema_real_eip !32
  store i64 %187, i64* %R8, !mcsema_real_eip !32
  %188 = load i64, i64* %R9_val, !mcsema_real_eip !32
  store i64 %188, i64* %R9, !mcsema_real_eip !32
  %189 = load i64, i64* %R10_val, !mcsema_real_eip !32
  store i64 %189, i64* %R10, !mcsema_real_eip !32
  %190 = load i64, i64* %R11_val, !mcsema_real_eip !32
  store i64 %190, i64* %R11, !mcsema_real_eip !32
  %191 = load i64, i64* %R12_val, !mcsema_real_eip !32
  store i64 %191, i64* %R12, !mcsema_real_eip !32
  %192 = load i64, i64* %R13_val, !mcsema_real_eip !32
  store i64 %192, i64* %R13, !mcsema_real_eip !32
  %193 = load i64, i64* %R14_val, !mcsema_real_eip !32
  store i64 %193, i64* %R14, !mcsema_real_eip !32
  %194 = load i64, i64* %R15_val, !mcsema_real_eip !32
  store i64 %194, i64* %R15, !mcsema_real_eip !32
  %195 = load i64, i64* %RIP_val, !mcsema_real_eip !32
  store i64 %195, i64* %RIP, !mcsema_real_eip !32
  %196 = load i1, i1* %CF_val, !mcsema_real_eip !32
  store i1 %196, i1* %CF, align 1, !mcsema_real_eip !32
  %197 = load i1, i1* %PF_val, !mcsema_real_eip !32
  store i1 %197, i1* %PF, align 1, !mcsema_real_eip !32
  %198 = load i1, i1* %AF_val, !mcsema_real_eip !32
  store i1 %198, i1* %AF, align 1, !mcsema_real_eip !32
  %199 = load i1, i1* %ZF_val, !mcsema_real_eip !32
  store i1 %199, i1* %ZF, align 1, !mcsema_real_eip !32
  %200 = load i1, i1* %SF_val, !mcsema_real_eip !32
  store i1 %200, i1* %SF, align 1, !mcsema_real_eip !32
  %201 = load i1, i1* %OF_val, !mcsema_real_eip !32
  store i1 %201, i1* %OF, align 1, !mcsema_real_eip !32
  %202 = load i1, i1* %DF_val, !mcsema_real_eip !32
  store i1 %202, i1* %DF, align 1, !mcsema_real_eip !32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !32
  %203 = load i1, i1* %FPU_B_val, !mcsema_real_eip !32
  store i1 %203, i1* %FPU_B, align 1, !mcsema_real_eip !32
  %204 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !32
  store i1 %204, i1* %FPU_C3, align 1, !mcsema_real_eip !32
  %205 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !32
  store i3 %205, i3* %FPU_TOP, align 1, !mcsema_real_eip !32
  %206 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !32
  store i1 %206, i1* %FPU_C2, align 1, !mcsema_real_eip !32
  %207 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !32
  store i1 %207, i1* %FPU_C1, align 1, !mcsema_real_eip !32
  %208 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !32
  store i1 %208, i1* %FPU_C0, align 1, !mcsema_real_eip !32
  %209 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !32
  store i1 %209, i1* %FPU_ES, align 1, !mcsema_real_eip !32
  %210 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !32
  store i1 %210, i1* %FPU_SF, align 1, !mcsema_real_eip !32
  %211 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !32
  store i1 %211, i1* %FPU_PE, align 1, !mcsema_real_eip !32
  %212 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !32
  store i1 %212, i1* %FPU_UE, align 1, !mcsema_real_eip !32
  %213 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !32
  store i1 %213, i1* %FPU_OE, align 1, !mcsema_real_eip !32
  %214 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !32
  store i1 %214, i1* %FPU_ZE, align 1, !mcsema_real_eip !32
  %215 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !32
  store i1 %215, i1* %FPU_DE, align 1, !mcsema_real_eip !32
  %216 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !32
  store i1 %216, i1* %FPU_IE, align 1, !mcsema_real_eip !32
  %217 = load i1, i1* %FPU_X_val, !mcsema_real_eip !32
  store i1 %217, i1* %FPU_X, align 1, !mcsema_real_eip !32
  %218 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !32
  store i2 %218, i2* %FPU_RC, align 1, !mcsema_real_eip !32
  %219 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !32
  store i2 %219, i2* %FPU_PC, align 1, !mcsema_real_eip !32
  %220 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !32
  store i1 %220, i1* %FPU_PM, align 1, !mcsema_real_eip !32
  %221 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !32
  store i1 %221, i1* %FPU_UM, align 1, !mcsema_real_eip !32
  %222 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !32
  store i1 %222, i1* %FPU_OM, align 1, !mcsema_real_eip !32
  %223 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !32
  store i1 %223, i1* %FPU_ZM, align 1, !mcsema_real_eip !32
  %224 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !32
  store i1 %224, i1* %FPU_DM, align 1, !mcsema_real_eip !32
  %225 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !32
  store i1 %225, i1* %FPU_IM, align 1, !mcsema_real_eip !32
  %226 = load i64, i64* %53, align 4
  store i64 %226, i64* %52, align 4
  %227 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !32
  store i16 %227, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !32
  %228 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !32
  store i64 %228, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !32
  %229 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !32
  store i16 %229, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !32
  %230 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !32
  store i64 %230, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !32
  %231 = load i128, i128* %XMM0_val, !mcsema_real_eip !32
  store i128 %231, i128* %XMM0, align 1, !mcsema_real_eip !32
  %232 = load i128, i128* %XMM1_val, !mcsema_real_eip !32
  store i128 %232, i128* %XMM1, align 1, !mcsema_real_eip !32
  %233 = load i128, i128* %XMM2_val, !mcsema_real_eip !32
  store i128 %233, i128* %XMM2, align 1, !mcsema_real_eip !32
  %234 = load i128, i128* %XMM3_val, !mcsema_real_eip !32
  store i128 %234, i128* %XMM3, align 1, !mcsema_real_eip !32
  %235 = load i128, i128* %XMM4_val, !mcsema_real_eip !32
  store i128 %235, i128* %XMM4, align 1, !mcsema_real_eip !32
  %236 = load i128, i128* %XMM5_val, !mcsema_real_eip !32
  store i128 %236, i128* %XMM5, align 1, !mcsema_real_eip !32
  %237 = load i128, i128* %XMM6_val, !mcsema_real_eip !32
  store i128 %237, i128* %XMM6, align 1, !mcsema_real_eip !32
  %238 = load i128, i128* %XMM7_val, !mcsema_real_eip !32
  store i128 %238, i128* %XMM7, align 1, !mcsema_real_eip !32
  %239 = load i128, i128* %XMM8_val, !mcsema_real_eip !32
  store i128 %239, i128* %XMM8, align 1, !mcsema_real_eip !32
  %240 = load i128, i128* %XMM9_val, !mcsema_real_eip !32
  store i128 %240, i128* %XMM9, align 1, !mcsema_real_eip !32
  %241 = load i128, i128* %XMM10_val, !mcsema_real_eip !32
  store i128 %241, i128* %XMM10, align 1, !mcsema_real_eip !32
  %242 = load i128, i128* %XMM11_val, !mcsema_real_eip !32
  store i128 %242, i128* %XMM11, align 1, !mcsema_real_eip !32
  %243 = load i128, i128* %XMM12_val, !mcsema_real_eip !32
  store i128 %243, i128* %XMM12, align 1, !mcsema_real_eip !32
  %244 = load i128, i128* %XMM13_val, !mcsema_real_eip !32
  store i128 %244, i128* %XMM13, align 1, !mcsema_real_eip !32
  %245 = load i128, i128* %XMM14_val, !mcsema_real_eip !32
  store i128 %245, i128* %XMM14, align 1, !mcsema_real_eip !32
  %246 = load i128, i128* %XMM15_val, !mcsema_real_eip !32
  store i128 %246, i128* %XMM15, align 1, !mcsema_real_eip !32
  %247 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !32
  store i64 %247, i64* %STACK_BASE, align 1, !mcsema_real_eip !32
  %248 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !32
  store i64 %248, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !32
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !32
  %249 = load i64, i64* %RAX, !mcsema_real_eip !32
  store i64 %249, i64* %RAX_val, !mcsema_real_eip !32
  %250 = load i64, i64* %RBX, !mcsema_real_eip !32
  store i64 %250, i64* %RBX_val, !mcsema_real_eip !32
  %251 = load i64, i64* %RCX, !mcsema_real_eip !32
  store i64 %251, i64* %RCX_val, !mcsema_real_eip !32
  %252 = load i64, i64* %RDX, !mcsema_real_eip !32
  store i64 %252, i64* %RDX_val, !mcsema_real_eip !32
  %253 = load i64, i64* %RSI, !mcsema_real_eip !32
  store i64 %253, i64* %RSI_val, !mcsema_real_eip !32
  %254 = load i64, i64* %RDI, !mcsema_real_eip !32
  store i64 %254, i64* %RDI_val, !mcsema_real_eip !32
  %255 = load i64, i64* %RSP, !mcsema_real_eip !32
  store i64 %255, i64* %RSP_val, !mcsema_real_eip !32
  %256 = load i64, i64* %RBP, !mcsema_real_eip !32
  store i64 %256, i64* %RBP_val, !mcsema_real_eip !32
  %257 = load i64, i64* %R8, !mcsema_real_eip !32
  store i64 %257, i64* %R8_val, !mcsema_real_eip !32
  %258 = load i64, i64* %R9, !mcsema_real_eip !32
  store i64 %258, i64* %R9_val, !mcsema_real_eip !32
  %259 = load i64, i64* %R10, !mcsema_real_eip !32
  store i64 %259, i64* %R10_val, !mcsema_real_eip !32
  %260 = load i64, i64* %R11, !mcsema_real_eip !32
  store i64 %260, i64* %R11_val, !mcsema_real_eip !32
  %261 = load i64, i64* %R12, !mcsema_real_eip !32
  store i64 %261, i64* %R12_val, !mcsema_real_eip !32
  %262 = load i64, i64* %R13, !mcsema_real_eip !32
  store i64 %262, i64* %R13_val, !mcsema_real_eip !32
  %263 = load i64, i64* %R14, !mcsema_real_eip !32
  store i64 %263, i64* %R14_val, !mcsema_real_eip !32
  %264 = load i64, i64* %R15, !mcsema_real_eip !32
  store i64 %264, i64* %R15_val, !mcsema_real_eip !32
  %265 = load i64, i64* %RIP, !mcsema_real_eip !32
  store i64 %265, i64* %RIP_val, !mcsema_real_eip !32
  %266 = load i1, i1* %CF, align 1, !mcsema_real_eip !32
  store i1 %266, i1* %CF_val, !mcsema_real_eip !32
  %267 = load i1, i1* %PF, align 1, !mcsema_real_eip !32
  store i1 %267, i1* %PF_val, !mcsema_real_eip !32
  %268 = load i1, i1* %AF, align 1, !mcsema_real_eip !32
  store i1 %268, i1* %AF_val, !mcsema_real_eip !32
  %269 = load i1, i1* %ZF, align 1, !mcsema_real_eip !32
  store i1 %269, i1* %ZF_val, !mcsema_real_eip !32
  %270 = load i1, i1* %SF, align 1, !mcsema_real_eip !32
  store i1 %270, i1* %SF_val, !mcsema_real_eip !32
  %271 = load i1, i1* %OF, align 1, !mcsema_real_eip !32
  store i1 %271, i1* %OF_val, !mcsema_real_eip !32
  %272 = load i1, i1* %DF, align 1, !mcsema_real_eip !32
  store i1 %272, i1* %DF_val, !mcsema_real_eip !32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !32
  %273 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !32
  store i1 %273, i1* %FPU_B_val, !mcsema_real_eip !32
  %274 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !32
  store i1 %274, i1* %FPU_C3_val, !mcsema_real_eip !32
  %275 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !32
  store i3 %275, i3* %FPU_TOP_val, !mcsema_real_eip !32
  %276 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !32
  store i1 %276, i1* %FPU_C2_val, !mcsema_real_eip !32
  %277 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !32
  store i1 %277, i1* %FPU_C1_val, !mcsema_real_eip !32
  %278 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !32
  store i1 %278, i1* %FPU_C0_val, !mcsema_real_eip !32
  %279 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !32
  store i1 %279, i1* %FPU_ES_val, !mcsema_real_eip !32
  %280 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !32
  store i1 %280, i1* %FPU_SF_val, !mcsema_real_eip !32
  %281 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !32
  store i1 %281, i1* %FPU_PE_val, !mcsema_real_eip !32
  %282 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !32
  store i1 %282, i1* %FPU_UE_val, !mcsema_real_eip !32
  %283 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !32
  store i1 %283, i1* %FPU_OE_val, !mcsema_real_eip !32
  %284 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !32
  store i1 %284, i1* %FPU_ZE_val, !mcsema_real_eip !32
  %285 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !32
  store i1 %285, i1* %FPU_DE_val, !mcsema_real_eip !32
  %286 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !32
  store i1 %286, i1* %FPU_IE_val, !mcsema_real_eip !32
  %287 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !32
  store i1 %287, i1* %FPU_X_val, !mcsema_real_eip !32
  %288 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !32
  store i2 %288, i2* %FPU_RC_val, !mcsema_real_eip !32
  %289 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !32
  store i2 %289, i2* %FPU_PC_val, !mcsema_real_eip !32
  %290 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !32
  store i1 %290, i1* %FPU_PM_val, !mcsema_real_eip !32
  %291 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !32
  store i1 %291, i1* %FPU_UM_val, !mcsema_real_eip !32
  %292 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !32
  store i1 %292, i1* %FPU_OM_val, !mcsema_real_eip !32
  %293 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !32
  store i1 %293, i1* %FPU_ZM_val, !mcsema_real_eip !32
  %294 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !32
  store i1 %294, i1* %FPU_DM_val, !mcsema_real_eip !32
  %295 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !32
  store i1 %295, i1* %FPU_IM_val, !mcsema_real_eip !32
  %296 = load i64, i64* %52, align 4
  store i64 %296, i64* %53, align 4
  %297 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !32
  store i16 %297, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !32
  %298 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !32
  store i64 %298, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !32
  %299 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !32
  store i16 %299, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !32
  %300 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !32
  store i64 %300, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !32
  %301 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !32
  store i128 %301, i128* %XMM0_val, !mcsema_real_eip !32
  %302 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !32
  store i128 %302, i128* %XMM1_val, !mcsema_real_eip !32
  %303 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !32
  store i128 %303, i128* %XMM2_val, !mcsema_real_eip !32
  %304 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !32
  store i128 %304, i128* %XMM3_val, !mcsema_real_eip !32
  %305 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !32
  store i128 %305, i128* %XMM4_val, !mcsema_real_eip !32
  %306 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !32
  store i128 %306, i128* %XMM5_val, !mcsema_real_eip !32
  %307 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !32
  store i128 %307, i128* %XMM6_val, !mcsema_real_eip !32
  %308 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !32
  store i128 %308, i128* %XMM7_val, !mcsema_real_eip !32
  %309 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !32
  store i128 %309, i128* %XMM8_val, !mcsema_real_eip !32
  %310 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !32
  store i128 %310, i128* %XMM9_val, !mcsema_real_eip !32
  %311 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !32
  store i128 %311, i128* %XMM10_val, !mcsema_real_eip !32
  %312 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !32
  store i128 %312, i128* %XMM11_val, !mcsema_real_eip !32
  %313 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !32
  store i128 %313, i128* %XMM12_val, !mcsema_real_eip !32
  %314 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !32
  store i128 %314, i128* %XMM13_val, !mcsema_real_eip !32
  %315 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !32
  store i128 %315, i128* %XMM14_val, !mcsema_real_eip !32
  %316 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !32
  store i128 %316, i128* %XMM15_val, !mcsema_real_eip !32
  %317 = load i64, i64* %STACK_BASE, !mcsema_real_eip !32
  store i64 %317, i64* %STACK_BASE_val, !mcsema_real_eip !32
  %318 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !32
  store i64 %318, i64* %STACK_LIMIT_val, !mcsema_real_eip !32
  %319 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %320 = add i64 %319, -48, !mcsema_real_eip !33
  %321 = inttoptr i64 %320 to i64*, !mcsema_real_eip !33
  %322 = load i64, i64* %RDX_val, !mcsema_real_eip !33
  %323 = trunc i64 %322 to i32, !mcsema_real_eip !33
  %324 = bitcast i64* %321 to i32*
  store i32 %323, i32* %324, !mcsema_real_eip !33
  %325 = load i64, i64* %RBP_val, !mcsema_real_eip !34
  %326 = add i64 %325, -56, !mcsema_real_eip !34
  %327 = inttoptr i64 %326 to i64*, !mcsema_real_eip !34
  %328 = load i64, i64* %RAX_val, !mcsema_real_eip !34
  store i64 %328, i64* %327, !mcsema_real_eip !34
  %329 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %330 = add i64 %329, -56, !mcsema_real_eip !35
  %331 = inttoptr i64 %330 to i64*, !mcsema_real_eip !35
  %332 = load i64, i64* %331, !mcsema_real_eip !35
  store i64 %332, i64* %RAX_val, !mcsema_real_eip !35
  %333 = add i64 %329, -40, !mcsema_real_eip !36
  %334 = inttoptr i64 %333 to i64*, !mcsema_real_eip !36
  store i64 %332, i64* %334, !mcsema_real_eip !36
  %335 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %336 = add i64 %335, -48, !mcsema_real_eip !37
  %337 = inttoptr i64 %336 to i64*, !mcsema_real_eip !37
  %338 = bitcast i64* %337 to i32*
  %339 = load i32, i32* %338, !mcsema_real_eip !37
  %340 = zext i32 %339 to i64, !mcsema_real_eip !37
  store i64 %340, i64* %RCX_val, !mcsema_real_eip !37
  %341 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %342 = add i64 %341, -32, !mcsema_real_eip !38
  %343 = inttoptr i64 %342 to i64*, !mcsema_real_eip !38
  %344 = bitcast i64* %343 to i32*
  store i32 %339, i32* %344, !mcsema_real_eip !38
  %345 = load i64, i64* %RBP_val, !mcsema_real_eip !39
  %346 = add i64 %345, -40, !mcsema_real_eip !39
  %347 = inttoptr i64 %346 to i64*, !mcsema_real_eip !39
  %348 = bitcast i64* %347 to i32*
  %349 = load i32, i32* %348, !mcsema_real_eip !39
  %350 = zext i32 %349 to i64, !mcsema_real_eip !39
  store i64 %350, i64* %RCX_val, !mcsema_real_eip !39
  %351 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %352 = add i64 %351, -36, !mcsema_real_eip !40
  %353 = inttoptr i64 %352 to i64*, !mcsema_real_eip !40
  %354 = bitcast i64* %353 to i32*
  %355 = load i32, i32* %354, !mcsema_real_eip !40
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %349, i32 %355)
  %356 = extractvalue { i32, i1 } %uadd, 0
  %357 = xor i32 %356, %355, !mcsema_real_eip !40
  %358 = xor i32 %357, %349, !mcsema_real_eip !40
  %359 = and i32 %358, 16, !mcsema_real_eip !40
  %360 = icmp ne i32 %359, 0, !mcsema_real_eip !40
  store i1 %360, i1* %AF_val, !mcsema_real_eip !40
  %361 = icmp slt i32 %356, 0
  store i1 %361, i1* %SF_val, !mcsema_real_eip !40
  %362 = icmp eq i32 %356, 0, !mcsema_real_eip !40
  store i1 %362, i1* %ZF_val, !mcsema_real_eip !40
  %363 = xor i32 %349, -2147483648, !mcsema_real_eip !40
  %364 = xor i32 %363, %355, !mcsema_real_eip !40
  %365 = and i32 %357, %364, !mcsema_real_eip !40
  %366 = icmp slt i32 %365, 0
  store i1 %366, i1* %OF_val, !mcsema_real_eip !40
  %367 = trunc i32 %356 to i8, !mcsema_real_eip !40
  %368 = tail call i8 @llvm.ctpop.i8(i8 %367), !mcsema_real_eip !40
  %369 = and i8 %368, 1
  %370 = icmp eq i8 %369, 0
  store i1 %370, i1* %PF_val, !mcsema_real_eip !40
  %371 = extractvalue { i32, i1 } %uadd, 1
  store i1 %371, i1* %CF_val, !mcsema_real_eip !40
  %372 = zext i32 %356 to i64, !mcsema_real_eip !40
  store i64 %372, i64* %RCX_val, !mcsema_real_eip !40
  %373 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %374 = add i64 %373, -32, !mcsema_real_eip !41
  %375 = inttoptr i64 %374 to i64*, !mcsema_real_eip !41
  %376 = bitcast i64* %375 to i32*
  %377 = load i32, i32* %376, !mcsema_real_eip !41
  %378 = add i32 %356, %377
  %379 = zext i32 %378 to i64, !mcsema_real_eip !41
  store i64 %379, i64* %RCX_val, !mcsema_real_eip !41
  store i64 %379, i64* %RAX_val, !mcsema_real_eip !42
  %380 = load i64, i64* %RSP_val, !mcsema_real_eip !43
  %uadd210 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %380, i64 80)
  %381 = extractvalue { i64, i1 } %uadd210, 0
  %382 = xor i64 %381, %380, !mcsema_real_eip !43
  %383 = and i64 %382, 16
  %384 = icmp eq i64 %383, 0
  store i1 %384, i1* %AF_val, !mcsema_real_eip !43
  %385 = icmp slt i64 %381, 0
  store i1 %385, i1* %SF_val, !mcsema_real_eip !43
  %386 = icmp eq i64 %381, 0, !mcsema_real_eip !43
  store i1 %386, i1* %ZF_val, !mcsema_real_eip !43
  %387 = xor i64 %380, -9223372036854775808, !mcsema_real_eip !43
  %388 = and i64 %382, %387, !mcsema_real_eip !43
  %389 = icmp slt i64 %388, 0
  store i1 %389, i1* %OF_val, !mcsema_real_eip !43
  %390 = trunc i64 %381 to i8, !mcsema_real_eip !43
  %391 = tail call i8 @llvm.ctpop.i8(i8 %390), !mcsema_real_eip !43
  %392 = and i8 %391, 1
  %393 = icmp eq i8 %392, 0
  store i1 %393, i1* %PF_val, !mcsema_real_eip !43
  %394 = extractvalue { i64, i1 } %uadd210, 1
  store i1 %394, i1* %CF_val, !mcsema_real_eip !43
  store i64 %381, i64* %RSP_val, !mcsema_real_eip !43
  %395 = inttoptr i64 %381 to i64*, !mcsema_real_eip !44
  %396 = load i64, i64* %395, !mcsema_real_eip !44
  store i64 %396, i64* %RBP_val, !mcsema_real_eip !44
  %397 = add i64 %381, 16, !mcsema_real_eip !45
  store i64 %397, i64* %RSP_val, !mcsema_real_eip !45
  %398 = load i64, i64* %RAX_val, !mcsema_real_eip !45
  store i64 %398, i64* %RAX, !mcsema_real_eip !45
  %399 = load i64, i64* %RBX_val, !mcsema_real_eip !45
  store i64 %399, i64* %RBX, !mcsema_real_eip !45
  %400 = load i64, i64* %RCX_val, !mcsema_real_eip !45
  store i64 %400, i64* %RCX, !mcsema_real_eip !45
  %401 = load i64, i64* %RDX_val, !mcsema_real_eip !45
  store i64 %401, i64* %RDX, !mcsema_real_eip !45
  %402 = load i64, i64* %RSI_val, !mcsema_real_eip !45
  store i64 %402, i64* %RSI, !mcsema_real_eip !45
  %403 = load i64, i64* %RDI_val, !mcsema_real_eip !45
  store i64 %403, i64* %RDI, !mcsema_real_eip !45
  %404 = load i64, i64* %RSP_val, !mcsema_real_eip !45
  store i64 %404, i64* %RSP, !mcsema_real_eip !45
  %405 = load i64, i64* %RBP_val, !mcsema_real_eip !45
  store i64 %405, i64* %RBP, !mcsema_real_eip !45
  %406 = load i64, i64* %R8_val, !mcsema_real_eip !45
  store i64 %406, i64* %R8, !mcsema_real_eip !45
  %407 = load i64, i64* %R9_val, !mcsema_real_eip !45
  store i64 %407, i64* %R9, !mcsema_real_eip !45
  %408 = load i64, i64* %R10_val, !mcsema_real_eip !45
  store i64 %408, i64* %R10, !mcsema_real_eip !45
  %409 = load i64, i64* %R11_val, !mcsema_real_eip !45
  store i64 %409, i64* %R11, !mcsema_real_eip !45
  %410 = load i64, i64* %R12_val, !mcsema_real_eip !45
  store i64 %410, i64* %R12, !mcsema_real_eip !45
  %411 = load i64, i64* %R13_val, !mcsema_real_eip !45
  store i64 %411, i64* %R13, !mcsema_real_eip !45
  %412 = load i64, i64* %R14_val, !mcsema_real_eip !45
  store i64 %412, i64* %R14, !mcsema_real_eip !45
  %413 = load i64, i64* %R15_val, !mcsema_real_eip !45
  store i64 %413, i64* %R15, !mcsema_real_eip !45
  %414 = load i64, i64* %RIP_val, !mcsema_real_eip !45
  store i64 %414, i64* %RIP, !mcsema_real_eip !45
  %415 = load i1, i1* %CF_val, !mcsema_real_eip !45
  store i1 %415, i1* %CF, align 1, !mcsema_real_eip !45
  %416 = load i1, i1* %PF_val, !mcsema_real_eip !45
  store i1 %416, i1* %PF, align 1, !mcsema_real_eip !45
  %417 = load i1, i1* %AF_val, !mcsema_real_eip !45
  store i1 %417, i1* %AF, align 1, !mcsema_real_eip !45
  %418 = load i1, i1* %ZF_val, !mcsema_real_eip !45
  store i1 %418, i1* %ZF, align 1, !mcsema_real_eip !45
  %419 = load i1, i1* %SF_val, !mcsema_real_eip !45
  store i1 %419, i1* %SF, align 1, !mcsema_real_eip !45
  %420 = load i1, i1* %OF_val, !mcsema_real_eip !45
  store i1 %420, i1* %OF, align 1, !mcsema_real_eip !45
  %421 = load i1, i1* %DF_val, !mcsema_real_eip !45
  store i1 %421, i1* %DF, align 1, !mcsema_real_eip !45
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !45
  %422 = load i1, i1* %FPU_B_val, !mcsema_real_eip !45
  store i1 %422, i1* %FPU_B, align 1, !mcsema_real_eip !45
  %423 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !45
  store i1 %423, i1* %FPU_C3, align 1, !mcsema_real_eip !45
  %424 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !45
  store i3 %424, i3* %FPU_TOP, align 1, !mcsema_real_eip !45
  %425 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !45
  store i1 %425, i1* %FPU_C2, align 1, !mcsema_real_eip !45
  %426 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !45
  store i1 %426, i1* %FPU_C1, align 1, !mcsema_real_eip !45
  %427 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !45
  store i1 %427, i1* %FPU_C0, align 1, !mcsema_real_eip !45
  %428 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !45
  store i1 %428, i1* %FPU_ES, align 1, !mcsema_real_eip !45
  %429 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !45
  store i1 %429, i1* %FPU_SF, align 1, !mcsema_real_eip !45
  %430 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !45
  store i1 %430, i1* %FPU_PE, align 1, !mcsema_real_eip !45
  %431 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !45
  store i1 %431, i1* %FPU_UE, align 1, !mcsema_real_eip !45
  %432 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !45
  store i1 %432, i1* %FPU_OE, align 1, !mcsema_real_eip !45
  %433 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !45
  store i1 %433, i1* %FPU_ZE, align 1, !mcsema_real_eip !45
  %434 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !45
  store i1 %434, i1* %FPU_DE, align 1, !mcsema_real_eip !45
  %435 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !45
  store i1 %435, i1* %FPU_IE, align 1, !mcsema_real_eip !45
  %436 = load i1, i1* %FPU_X_val, !mcsema_real_eip !45
  store i1 %436, i1* %FPU_X, align 1, !mcsema_real_eip !45
  %437 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !45
  store i2 %437, i2* %FPU_RC, align 1, !mcsema_real_eip !45
  %438 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !45
  store i2 %438, i2* %FPU_PC, align 1, !mcsema_real_eip !45
  %439 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !45
  store i1 %439, i1* %FPU_PM, align 1, !mcsema_real_eip !45
  %440 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !45
  store i1 %440, i1* %FPU_UM, align 1, !mcsema_real_eip !45
  %441 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !45
  store i1 %441, i1* %FPU_OM, align 1, !mcsema_real_eip !45
  %442 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !45
  store i1 %442, i1* %FPU_ZM, align 1, !mcsema_real_eip !45
  %443 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !45
  store i1 %443, i1* %FPU_DM, align 1, !mcsema_real_eip !45
  %444 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !45
  store i1 %444, i1* %FPU_IM, align 1, !mcsema_real_eip !45
  %445 = load i64, i64* %53, align 4
  store i64 %445, i64* %52, align 4
  %446 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !45
  store i16 %446, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !45
  %447 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !45
  store i64 %447, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !45
  %448 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !45
  store i16 %448, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !45
  %449 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !45
  store i64 %449, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !45
  %450 = load i128, i128* %XMM0_val, !mcsema_real_eip !45
  store i128 %450, i128* %XMM0, align 1, !mcsema_real_eip !45
  %451 = load i128, i128* %XMM1_val, !mcsema_real_eip !45
  store i128 %451, i128* %XMM1, align 1, !mcsema_real_eip !45
  %452 = load i128, i128* %XMM2_val, !mcsema_real_eip !45
  store i128 %452, i128* %XMM2, align 1, !mcsema_real_eip !45
  %453 = load i128, i128* %XMM3_val, !mcsema_real_eip !45
  store i128 %453, i128* %XMM3, align 1, !mcsema_real_eip !45
  %454 = load i128, i128* %XMM4_val, !mcsema_real_eip !45
  store i128 %454, i128* %XMM4, align 1, !mcsema_real_eip !45
  %455 = load i128, i128* %XMM5_val, !mcsema_real_eip !45
  store i128 %455, i128* %XMM5, align 1, !mcsema_real_eip !45
  %456 = load i128, i128* %XMM6_val, !mcsema_real_eip !45
  store i128 %456, i128* %XMM6, align 1, !mcsema_real_eip !45
  %457 = load i128, i128* %XMM7_val, !mcsema_real_eip !45
  store i128 %457, i128* %XMM7, align 1, !mcsema_real_eip !45
  %458 = load i128, i128* %XMM8_val, !mcsema_real_eip !45
  store i128 %458, i128* %XMM8, align 1, !mcsema_real_eip !45
  %459 = load i128, i128* %XMM9_val, !mcsema_real_eip !45
  store i128 %459, i128* %XMM9, align 1, !mcsema_real_eip !45
  %460 = load i128, i128* %XMM10_val, !mcsema_real_eip !45
  store i128 %460, i128* %XMM10, align 1, !mcsema_real_eip !45
  %461 = load i128, i128* %XMM11_val, !mcsema_real_eip !45
  store i128 %461, i128* %XMM11, align 1, !mcsema_real_eip !45
  %462 = load i128, i128* %XMM12_val, !mcsema_real_eip !45
  store i128 %462, i128* %XMM12, align 1, !mcsema_real_eip !45
  %463 = load i128, i128* %XMM13_val, !mcsema_real_eip !45
  store i128 %463, i128* %XMM13, align 1, !mcsema_real_eip !45
  %464 = load i128, i128* %XMM14_val, !mcsema_real_eip !45
  store i128 %464, i128* %XMM14, align 1, !mcsema_real_eip !45
  %465 = load i128, i128* %XMM15_val, !mcsema_real_eip !45
  store i128 %465, i128* %XMM15, align 1, !mcsema_real_eip !45
  %466 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !45
  store i64 %466, i64* %STACK_BASE, align 1, !mcsema_real_eip !45
  %467 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !45
  store i64 %467, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !45
  ret void, !mcsema_real_eip !45
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !46
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !46
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !46
  %XMM15_val = alloca i128, !mcsema_real_eip !46
  %XMM14_val = alloca i128, !mcsema_real_eip !46
  %XMM13_val = alloca i128, !mcsema_real_eip !46
  %XMM12_val = alloca i128, !mcsema_real_eip !46
  %XMM11_val = alloca i128, !mcsema_real_eip !46
  %XMM10_val = alloca i128, !mcsema_real_eip !46
  %XMM9_val = alloca i128, !mcsema_real_eip !46
  %XMM8_val = alloca i128, !mcsema_real_eip !46
  %XMM7_val = alloca i128, !mcsema_real_eip !46
  %XMM6_val = alloca i128, !mcsema_real_eip !46
  %XMM5_val = alloca i128, !mcsema_real_eip !46
  %XMM4_val = alloca i128, !mcsema_real_eip !46
  %XMM3_val = alloca i128, !mcsema_real_eip !46
  %XMM2_val = alloca i128, !mcsema_real_eip !46
  %XMM1_val = alloca i128, !mcsema_real_eip !46
  %XMM0_val = alloca i128, !mcsema_real_eip !46
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !46
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !46
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !46
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !46
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !46
  %FPU_IM_val = alloca i1, !mcsema_real_eip !46
  %FPU_DM_val = alloca i1, !mcsema_real_eip !46
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !46
  %FPU_OM_val = alloca i1, !mcsema_real_eip !46
  %FPU_UM_val = alloca i1, !mcsema_real_eip !46
  %FPU_PM_val = alloca i1, !mcsema_real_eip !46
  %FPU_PC_val = alloca i2, !mcsema_real_eip !46
  %FPU_RC_val = alloca i2, !mcsema_real_eip !46
  %FPU_X_val = alloca i1, !mcsema_real_eip !46
  %FPU_IE_val = alloca i1, !mcsema_real_eip !46
  %FPU_DE_val = alloca i1, !mcsema_real_eip !46
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !46
  %FPU_OE_val = alloca i1, !mcsema_real_eip !46
  %FPU_UE_val = alloca i1, !mcsema_real_eip !46
  %FPU_PE_val = alloca i1, !mcsema_real_eip !46
  %FPU_SF_val = alloca i1, !mcsema_real_eip !46
  %FPU_ES_val = alloca i1, !mcsema_real_eip !46
  %FPU_C0_val = alloca i1, !mcsema_real_eip !46
  %FPU_C1_val = alloca i1, !mcsema_real_eip !46
  %FPU_C2_val = alloca i1, !mcsema_real_eip !46
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !46
  %FPU_C3_val = alloca i1, !mcsema_real_eip !46
  %FPU_B_val = alloca i1, !mcsema_real_eip !46
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !46
  %DF_val = alloca i1, !mcsema_real_eip !46
  %OF_val = alloca i1, !mcsema_real_eip !46
  %SF_val = alloca i1, !mcsema_real_eip !46
  %CF_val = alloca i1, !mcsema_real_eip !46
  %AF_val = alloca i1, !mcsema_real_eip !46
  %PF_val = alloca i1, !mcsema_real_eip !46
  %ZF_val = alloca i1, !mcsema_real_eip !46
  %RIP_val = alloca i64, !mcsema_real_eip !46
  %R14_val = alloca i64, !mcsema_real_eip !46
  %R13_val = alloca i64, !mcsema_real_eip !46
  %R12_val = alloca i64, !mcsema_real_eip !46
  %R11_val = alloca i64, !mcsema_real_eip !46
  %R10_val = alloca i64, !mcsema_real_eip !46
  %R9_val = alloca i64, !mcsema_real_eip !46
  %R8_val = alloca i64, !mcsema_real_eip !46
  %RSP_val = alloca i64, !mcsema_real_eip !46
  %RBP_val = alloca i64, !mcsema_real_eip !46
  %RDI_val = alloca i64, !mcsema_real_eip !46
  %RSI_val = alloca i64, !mcsema_real_eip !46
  %RDX_val = alloca i64, !mcsema_real_eip !46
  %RCX_val = alloca i64, !mcsema_real_eip !46
  %RBX_val = alloca i64, !mcsema_real_eip !46
  %RAX_val = alloca i64, !mcsema_real_eip !46
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !46
  %1 = load i64, i64* %RAX, !mcsema_real_eip !46
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !46
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !46
  %2 = load i64, i64* %RBX, !mcsema_real_eip !46
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !46
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !46
  %3 = load i64, i64* %RCX, !mcsema_real_eip !46
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !46
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !46
  %4 = load i64, i64* %RDX, !mcsema_real_eip !46
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !46
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !46
  %5 = load i64, i64* %RSI, !mcsema_real_eip !46
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !46
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !46
  %6 = load i64, i64* %RDI, !mcsema_real_eip !46
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !46
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !46
  %7 = load i64, i64* %RSP, !mcsema_real_eip !46
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !46
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !46
  %8 = load i64, i64* %RBP, !mcsema_real_eip !46
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !46
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !46
  %9 = load i64, i64* %R8, !mcsema_real_eip !46
  store i64 %9, i64* %R8_val, !mcsema_real_eip !46
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !46
  %10 = load i64, i64* %R9, !mcsema_real_eip !46
  store i64 %10, i64* %R9_val, !mcsema_real_eip !46
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !46
  %11 = load i64, i64* %R10, !mcsema_real_eip !46
  store i64 %11, i64* %R10_val, !mcsema_real_eip !46
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !46
  %12 = load i64, i64* %R11, !mcsema_real_eip !46
  store i64 %12, i64* %R11_val, !mcsema_real_eip !46
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !46
  %13 = load i64, i64* %R12, !mcsema_real_eip !46
  store i64 %13, i64* %R12_val, !mcsema_real_eip !46
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !46
  %14 = load i64, i64* %R13, !mcsema_real_eip !46
  store i64 %14, i64* %R13_val, !mcsema_real_eip !46
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !46
  %15 = load i64, i64* %R14, !mcsema_real_eip !46
  store i64 %15, i64* %R14_val, !mcsema_real_eip !46
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !46
  %16 = load i64, i64* %R15, !mcsema_real_eip !46
  store i64 %16, i64* %R15_val, !mcsema_real_eip !46
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !46
  %17 = load i64, i64* %RIP, !mcsema_real_eip !46
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !46
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !46
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !46
  store i1 %18, i1* %CF_val, !mcsema_real_eip !46
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !46
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !46
  store i1 %19, i1* %PF_val, !mcsema_real_eip !46
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !46
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !46
  store i1 %20, i1* %AF_val, !mcsema_real_eip !46
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !46
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !46
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !46
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !46
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !46
  store i1 %22, i1* %SF_val, !mcsema_real_eip !46
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !46
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !46
  store i1 %23, i1* %OF_val, !mcsema_real_eip !46
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !46
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !46
  store i1 %24, i1* %DF_val, !mcsema_real_eip !46
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !46
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !46
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !46
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !46
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !46
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !46
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !46
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !46
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !46
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !46
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !46
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !46
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !46
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !46
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !46
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !46
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !46
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !46
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !46
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !46
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !46
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !46
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !46
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !46
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !46
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !46
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !46
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !46
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !46
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !46
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !46
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !46
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !46
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !46
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !46
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !46
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !46
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !46
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !46
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !46
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !46
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !46
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !46
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !46
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !46
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !46
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !46
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !46
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !46
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !46
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !46
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !46
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !46
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !46
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !46
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !46
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !46
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !46
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !46
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !46
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !46
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !46
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !46
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !46
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !46
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !46
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !46
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !46
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !46
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !46
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !46
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !46
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !46
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !46
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !46
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !46
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !46
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !46
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !46
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !46
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !46
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !46
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !46
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !46
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !46
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !46
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !46
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !46
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !46
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !46
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !46
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !46
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !46
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !46
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !46
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !46
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !46
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !46
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !46
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !46
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !46
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !46
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !46
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !46
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !46
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !46
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !46
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !46
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !46
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !46
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !46
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !46
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !46
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !46
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !46
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !46
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !46
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !46
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !46
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !46
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !46
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !46
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !46
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !46
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !46
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !46
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !46
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !46
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !46
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !46
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !46
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !46
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !46
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !46
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !46
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !46
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !46
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !46
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !46
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !46
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %78 = load i64, i64* %RSP_val, !mcsema_real_eip !46
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !46
  store i64 %77, i64* %80, !mcsema_real_eip !46
  store i64 %79, i64* %RSP_val, !mcsema_real_eip !46
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !47
  %81 = add i64 %78, 16, !mcsema_real_eip !48
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !48
  %83 = load i64, i64* %82, !mcsema_real_eip !48
  store i64 %83, i64* %RAX_val, !mcsema_real_eip !48
  %84 = add i64 %78, 8, !mcsema_real_eip !49
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !49
  %86 = load i64, i64* %85, !mcsema_real_eip !49
  store i64 %86, i64* %R10_val, !mcsema_real_eip !49
  %87 = load i64, i64* %RBP_val, !mcsema_real_eip !50
  %88 = add i64 %87, -20, !mcsema_real_eip !50
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !50
  %90 = load i64, i64* %RDI_val, !mcsema_real_eip !50
  %91 = trunc i64 %90 to i32, !mcsema_real_eip !50
  %92 = bitcast i64* %89 to i32*
  store i32 %91, i32* %92, !mcsema_real_eip !50
  %93 = load i64, i64* %RBP_val, !mcsema_real_eip !51
  %94 = add i64 %93, -24, !mcsema_real_eip !51
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !51
  %96 = load i64, i64* %RSI_val, !mcsema_real_eip !51
  %97 = trunc i64 %96 to i32, !mcsema_real_eip !51
  %98 = bitcast i64* %95 to i32*
  store i32 %97, i32* %98, !mcsema_real_eip !51
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !52
  %100 = add i64 %99, -28, !mcsema_real_eip !52
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !52
  %102 = load i64, i64* %RDX_val, !mcsema_real_eip !52
  %103 = trunc i64 %102 to i32, !mcsema_real_eip !52
  %104 = bitcast i64* %101 to i32*
  store i32 %103, i32* %104, !mcsema_real_eip !52
  %105 = load i64, i64* %RBP_val, !mcsema_real_eip !53
  %106 = add i64 %105, -32, !mcsema_real_eip !53
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !53
  %108 = load i64, i64* %RCX_val, !mcsema_real_eip !53
  %109 = trunc i64 %108 to i32, !mcsema_real_eip !53
  %110 = bitcast i64* %107 to i32*
  store i32 %109, i32* %110, !mcsema_real_eip !53
  %111 = load i64, i64* %RBP_val, !mcsema_real_eip !54
  %112 = add i64 %111, -36, !mcsema_real_eip !54
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !54
  %114 = load i64, i64* %R8_val, !mcsema_real_eip !54
  %115 = trunc i64 %114 to i32, !mcsema_real_eip !54
  %116 = bitcast i64* %113 to i32*
  store i32 %115, i32* %116, !mcsema_real_eip !54
  %117 = load i64, i64* %RBP_val, !mcsema_real_eip !55
  %118 = add i64 %117, -40, !mcsema_real_eip !55
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !55
  %120 = load i64, i64* %R9_val, !mcsema_real_eip !55
  %121 = trunc i64 %120 to i32, !mcsema_real_eip !55
  %122 = bitcast i64* %119 to i32*
  store i32 %121, i32* %122, !mcsema_real_eip !55
  %123 = load i64, i64* %RBP_val, !mcsema_real_eip !56
  %124 = add i64 %123, -48, !mcsema_real_eip !56
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !56
  %126 = load i64, i64* %R10_val, !mcsema_real_eip !56
  store i64 %126, i64* %125, !mcsema_real_eip !56
  %127 = load i64, i64* %RBP_val, !mcsema_real_eip !57
  %128 = add i64 %127, -56, !mcsema_real_eip !57
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !57
  %130 = load i64, i64* %RAX_val, !mcsema_real_eip !57
  store i64 %130, i64* %129, !mcsema_real_eip !57
  %131 = load i64, i64* %RBP_val, !mcsema_real_eip !58
  %132 = add i64 %131, -48, !mcsema_real_eip !58
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !58
  %134 = load i64, i64* %133, !mcsema_real_eip !58
  store i64 %134, i64* %R10_val, !mcsema_real_eip !58
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !59
  %136 = bitcast i64* %135 to i32*
  %137 = load i32, i32* %136, !mcsema_real_eip !59
  %138 = zext i32 %137 to i64, !mcsema_real_eip !59
  store i64 %138, i64* %RCX_val, !mcsema_real_eip !59
  %139 = load i64, i64* %RAX_val, !mcsema_real_eip !60
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !60
  %141 = bitcast i64* %140 to i32*
  %142 = load i32, i32* %141, !mcsema_real_eip !60
  %143 = zext i32 %142 to i64, !mcsema_real_eip !60
  store i64 %143, i64* %RDX_val, !mcsema_real_eip !60
  %144 = load i64, i64* %RCX_val, !mcsema_real_eip !61
  %145 = trunc i64 %144 to i32, !mcsema_real_eip !61
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %142, i32 %145)
  %146 = extractvalue { i32, i1 } %uadd, 0
  %147 = xor i32 %146, %145, !mcsema_real_eip !61
  %148 = xor i32 %147, %142, !mcsema_real_eip !61
  %149 = and i32 %148, 16, !mcsema_real_eip !61
  %150 = icmp ne i32 %149, 0, !mcsema_real_eip !61
  store i1 %150, i1* %AF_val, !mcsema_real_eip !61
  %151 = icmp slt i32 %146, 0
  store i1 %151, i1* %SF_val, !mcsema_real_eip !61
  %152 = icmp eq i32 %146, 0, !mcsema_real_eip !61
  store i1 %152, i1* %ZF_val, !mcsema_real_eip !61
  %153 = xor i32 %142, -2147483648, !mcsema_real_eip !61
  %154 = xor i32 %153, %145, !mcsema_real_eip !61
  %155 = and i32 %147, %154, !mcsema_real_eip !61
  %156 = icmp slt i32 %155, 0
  store i1 %156, i1* %OF_val, !mcsema_real_eip !61
  %157 = trunc i32 %146 to i8, !mcsema_real_eip !61
  %158 = tail call i8 @llvm.ctpop.i8(i8 %157), !mcsema_real_eip !61
  %159 = and i8 %158, 1
  %160 = icmp eq i8 %159, 0
  store i1 %160, i1* %PF_val, !mcsema_real_eip !61
  %161 = extractvalue { i32, i1 } %uadd, 1
  store i1 %161, i1* %CF_val, !mcsema_real_eip !61
  %162 = zext i32 %146 to i64, !mcsema_real_eip !61
  store i64 %162, i64* %RCX_val, !mcsema_real_eip !61
  %163 = load i64, i64* %RBP_val, !mcsema_real_eip !62
  %164 = add i64 %163, -72, !mcsema_real_eip !62
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !62
  %166 = bitcast i64* %165 to i32*
  store i32 %146, i32* %166, !mcsema_real_eip !62
  %167 = load i64, i64* %RBP_val, !mcsema_real_eip !63
  %168 = add i64 %167, -48, !mcsema_real_eip !63
  %169 = inttoptr i64 %168 to i64*, !mcsema_real_eip !63
  %170 = load i64, i64* %169, !mcsema_real_eip !63
  store i64 %170, i64* %RAX_val, !mcsema_real_eip !63
  %171 = add i64 %170, 4, !mcsema_real_eip !64
  %172 = inttoptr i64 %171 to i64*, !mcsema_real_eip !64
  %173 = bitcast i64* %172 to i32*
  %174 = load i32, i32* %173, !mcsema_real_eip !64
  %175 = zext i32 %174 to i64, !mcsema_real_eip !64
  store i64 %175, i64* %RCX_val, !mcsema_real_eip !64
  %176 = load i64, i64* %RBP_val, !mcsema_real_eip !65
  %177 = add i64 %176, -56, !mcsema_real_eip !65
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !65
  %179 = load i64, i64* %178, !mcsema_real_eip !65
  store i64 %179, i64* %RAX_val, !mcsema_real_eip !65
  %180 = add i64 %179, 4, !mcsema_real_eip !66
  %181 = inttoptr i64 %180 to i64*, !mcsema_real_eip !66
  %182 = bitcast i64* %181 to i32*
  %183 = load i32, i32* %182, !mcsema_real_eip !66
  %184 = zext i32 %183 to i64, !mcsema_real_eip !66
  store i64 %184, i64* %RDX_val, !mcsema_real_eip !66
  %185 = load i64, i64* %RCX_val, !mcsema_real_eip !67
  %186 = trunc i64 %185 to i32, !mcsema_real_eip !67
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %183, i32 %186)
  %187 = extractvalue { i32, i1 } %uadd70, 0
  %188 = xor i32 %187, %186, !mcsema_real_eip !67
  %189 = xor i32 %188, %183, !mcsema_real_eip !67
  %190 = and i32 %189, 16, !mcsema_real_eip !67
  %191 = icmp ne i32 %190, 0, !mcsema_real_eip !67
  store i1 %191, i1* %AF_val, !mcsema_real_eip !67
  %192 = icmp slt i32 %187, 0
  store i1 %192, i1* %SF_val, !mcsema_real_eip !67
  %193 = icmp eq i32 %187, 0, !mcsema_real_eip !67
  store i1 %193, i1* %ZF_val, !mcsema_real_eip !67
  %194 = xor i32 %183, -2147483648, !mcsema_real_eip !67
  %195 = xor i32 %194, %186, !mcsema_real_eip !67
  %196 = and i32 %188, %195, !mcsema_real_eip !67
  %197 = icmp slt i32 %196, 0
  store i1 %197, i1* %OF_val, !mcsema_real_eip !67
  %198 = trunc i32 %187 to i8, !mcsema_real_eip !67
  %199 = tail call i8 @llvm.ctpop.i8(i8 %198), !mcsema_real_eip !67
  %200 = and i8 %199, 1
  %201 = icmp eq i8 %200, 0
  store i1 %201, i1* %PF_val, !mcsema_real_eip !67
  %202 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %202, i1* %CF_val, !mcsema_real_eip !67
  %203 = zext i32 %187 to i64, !mcsema_real_eip !67
  store i64 %203, i64* %RCX_val, !mcsema_real_eip !67
  %204 = load i64, i64* %RBP_val, !mcsema_real_eip !68
  %205 = add i64 %204, -68, !mcsema_real_eip !68
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !68
  %207 = bitcast i64* %206 to i32*
  store i32 %187, i32* %207, !mcsema_real_eip !68
  %208 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  %209 = add i64 %208, -48, !mcsema_real_eip !69
  %210 = inttoptr i64 %209 to i64*, !mcsema_real_eip !69
  %211 = load i64, i64* %210, !mcsema_real_eip !69
  store i64 %211, i64* %RAX_val, !mcsema_real_eip !69
  %212 = add i64 %211, 8, !mcsema_real_eip !70
  %213 = inttoptr i64 %212 to i64*, !mcsema_real_eip !70
  %214 = bitcast i64* %213 to i32*
  %215 = load i32, i32* %214, !mcsema_real_eip !70
  %216 = zext i32 %215 to i64, !mcsema_real_eip !70
  store i64 %216, i64* %RCX_val, !mcsema_real_eip !70
  %217 = load i64, i64* %RBP_val, !mcsema_real_eip !71
  %218 = add i64 %217, -56, !mcsema_real_eip !71
  %219 = inttoptr i64 %218 to i64*, !mcsema_real_eip !71
  %220 = load i64, i64* %219, !mcsema_real_eip !71
  store i64 %220, i64* %RAX_val, !mcsema_real_eip !71
  %221 = add i64 %220, 8, !mcsema_real_eip !72
  %222 = inttoptr i64 %221 to i64*, !mcsema_real_eip !72
  %223 = bitcast i64* %222 to i32*
  %224 = load i32, i32* %223, !mcsema_real_eip !72
  %225 = zext i32 %224 to i64, !mcsema_real_eip !72
  store i64 %225, i64* %RDX_val, !mcsema_real_eip !72
  %226 = load i64, i64* %RCX_val, !mcsema_real_eip !73
  %227 = trunc i64 %226 to i32, !mcsema_real_eip !73
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %224, i32 %227)
  %228 = extractvalue { i32, i1 } %uadd71, 0
  %229 = xor i32 %228, %227, !mcsema_real_eip !73
  %230 = xor i32 %229, %224, !mcsema_real_eip !73
  %231 = and i32 %230, 16, !mcsema_real_eip !73
  %232 = icmp ne i32 %231, 0, !mcsema_real_eip !73
  store i1 %232, i1* %AF_val, !mcsema_real_eip !73
  %233 = icmp slt i32 %228, 0
  store i1 %233, i1* %SF_val, !mcsema_real_eip !73
  %234 = icmp eq i32 %228, 0, !mcsema_real_eip !73
  store i1 %234, i1* %ZF_val, !mcsema_real_eip !73
  %235 = xor i32 %224, -2147483648, !mcsema_real_eip !73
  %236 = xor i32 %235, %227, !mcsema_real_eip !73
  %237 = and i32 %229, %236, !mcsema_real_eip !73
  %238 = icmp slt i32 %237, 0
  store i1 %238, i1* %OF_val, !mcsema_real_eip !73
  %239 = trunc i32 %228 to i8, !mcsema_real_eip !73
  %240 = tail call i8 @llvm.ctpop.i8(i8 %239), !mcsema_real_eip !73
  %241 = and i8 %240, 1
  %242 = icmp eq i8 %241, 0
  store i1 %242, i1* %PF_val, !mcsema_real_eip !73
  %243 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %243, i1* %CF_val, !mcsema_real_eip !73
  %244 = zext i32 %228 to i64, !mcsema_real_eip !73
  store i64 %244, i64* %RCX_val, !mcsema_real_eip !73
  %245 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %246 = add i64 %245, -64, !mcsema_real_eip !74
  %247 = inttoptr i64 %246 to i64*, !mcsema_real_eip !74
  %248 = bitcast i64* %247 to i32*
  store i32 %228, i32* %248, !mcsema_real_eip !74
  %249 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %250 = add i64 %249, -8, !mcsema_real_eip !75
  %251 = inttoptr i64 %250 to i64*, !mcsema_real_eip !75
  %252 = load i64, i64* %RCX_val, !mcsema_real_eip !75
  %253 = trunc i64 %252 to i32, !mcsema_real_eip !75
  %254 = bitcast i64* %251 to i32*
  store i32 %253, i32* %254, !mcsema_real_eip !75
  %255 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %256 = add i64 %255, -72, !mcsema_real_eip !76
  %257 = inttoptr i64 %256 to i64*, !mcsema_real_eip !76
  %258 = load i64, i64* %257, !mcsema_real_eip !76
  store i64 %258, i64* %RAX_val, !mcsema_real_eip !76
  %259 = add i64 %255, -16, !mcsema_real_eip !77
  %260 = inttoptr i64 %259 to i64*, !mcsema_real_eip !77
  store i64 %258, i64* %260, !mcsema_real_eip !77
  %261 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %262 = add i64 %261, -8, !mcsema_real_eip !78
  %263 = inttoptr i64 %262 to i64*, !mcsema_real_eip !78
  %264 = bitcast i64* %263 to i32*
  %265 = load i32, i32* %264, !mcsema_real_eip !78
  %266 = zext i32 %265 to i64, !mcsema_real_eip !78
  store i64 %266, i64* %RCX_val, !mcsema_real_eip !78
  %267 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %268 = add i64 %267, -80, !mcsema_real_eip !79
  %269 = inttoptr i64 %268 to i64*, !mcsema_real_eip !79
  %270 = bitcast i64* %269 to i32*
  store i32 %265, i32* %270, !mcsema_real_eip !79
  %271 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %272 = add i64 %271, -16, !mcsema_real_eip !80
  %273 = inttoptr i64 %272 to i64*, !mcsema_real_eip !80
  %274 = load i64, i64* %273, !mcsema_real_eip !80
  store i64 %274, i64* %RAX_val, !mcsema_real_eip !80
  %275 = add i64 %271, -88, !mcsema_real_eip !81
  %276 = inttoptr i64 %275 to i64*, !mcsema_real_eip !81
  store i64 %274, i64* %276, !mcsema_real_eip !81
  %277 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %278 = add i64 %277, -88, !mcsema_real_eip !82
  %279 = inttoptr i64 %278 to i64*, !mcsema_real_eip !82
  %280 = load i64, i64* %279, !mcsema_real_eip !82
  store i64 %280, i64* %RAX_val, !mcsema_real_eip !82
  %281 = add i64 %277, -80, !mcsema_real_eip !83
  %282 = inttoptr i64 %281 to i64*, !mcsema_real_eip !83
  %283 = bitcast i64* %282 to i32*
  %284 = load i32, i32* %283, !mcsema_real_eip !83
  %285 = zext i32 %284 to i64, !mcsema_real_eip !83
  store i64 %285, i64* %RDX_val, !mcsema_real_eip !83
  %286 = load i64, i64* %RSP_val, !mcsema_real_eip !84
  %287 = inttoptr i64 %286 to i64*, !mcsema_real_eip !84
  %288 = load i64, i64* %287, !mcsema_real_eip !84
  store i64 %288, i64* %RBP_val, !mcsema_real_eip !84
  %289 = add i64 %286, 16, !mcsema_real_eip !85
  store i64 %289, i64* %RSP_val, !mcsema_real_eip !85
  %290 = load i64, i64* %RAX_val, !mcsema_real_eip !85
  store i64 %290, i64* %RAX, !mcsema_real_eip !85
  %291 = load i64, i64* %RBX_val, !mcsema_real_eip !85
  store i64 %291, i64* %RBX, !mcsema_real_eip !85
  %292 = load i64, i64* %RCX_val, !mcsema_real_eip !85
  store i64 %292, i64* %RCX, !mcsema_real_eip !85
  %293 = load i64, i64* %RDX_val, !mcsema_real_eip !85
  store i64 %293, i64* %RDX, !mcsema_real_eip !85
  %294 = load i64, i64* %RSI_val, !mcsema_real_eip !85
  store i64 %294, i64* %RSI, !mcsema_real_eip !85
  %295 = load i64, i64* %RDI_val, !mcsema_real_eip !85
  store i64 %295, i64* %RDI, !mcsema_real_eip !85
  %296 = load i64, i64* %RSP_val, !mcsema_real_eip !85
  store i64 %296, i64* %RSP, !mcsema_real_eip !85
  %297 = load i64, i64* %RBP_val, !mcsema_real_eip !85
  store i64 %297, i64* %RBP, !mcsema_real_eip !85
  %298 = load i64, i64* %R8_val, !mcsema_real_eip !85
  store i64 %298, i64* %R8, !mcsema_real_eip !85
  %299 = load i64, i64* %R9_val, !mcsema_real_eip !85
  store i64 %299, i64* %R9, !mcsema_real_eip !85
  %300 = load i64, i64* %R10_val, !mcsema_real_eip !85
  store i64 %300, i64* %R10, !mcsema_real_eip !85
  %301 = load i64, i64* %R11_val, !mcsema_real_eip !85
  store i64 %301, i64* %R11, !mcsema_real_eip !85
  %302 = load i64, i64* %R12_val, !mcsema_real_eip !85
  store i64 %302, i64* %R12, !mcsema_real_eip !85
  %303 = load i64, i64* %R13_val, !mcsema_real_eip !85
  store i64 %303, i64* %R13, !mcsema_real_eip !85
  %304 = load i64, i64* %R14_val, !mcsema_real_eip !85
  store i64 %304, i64* %R14, !mcsema_real_eip !85
  %305 = load i64, i64* %R15_val, !mcsema_real_eip !85
  store i64 %305, i64* %R15, !mcsema_real_eip !85
  %306 = load i64, i64* %RIP_val, !mcsema_real_eip !85
  store i64 %306, i64* %RIP, !mcsema_real_eip !85
  %307 = load i1, i1* %CF_val, !mcsema_real_eip !85
  store i1 %307, i1* %CF, align 1, !mcsema_real_eip !85
  %308 = load i1, i1* %PF_val, !mcsema_real_eip !85
  store i1 %308, i1* %PF, align 1, !mcsema_real_eip !85
  %309 = load i1, i1* %AF_val, !mcsema_real_eip !85
  store i1 %309, i1* %AF, align 1, !mcsema_real_eip !85
  %310 = load i1, i1* %ZF_val, !mcsema_real_eip !85
  store i1 %310, i1* %ZF, align 1, !mcsema_real_eip !85
  %311 = load i1, i1* %SF_val, !mcsema_real_eip !85
  store i1 %311, i1* %SF, align 1, !mcsema_real_eip !85
  %312 = load i1, i1* %OF_val, !mcsema_real_eip !85
  store i1 %312, i1* %OF, align 1, !mcsema_real_eip !85
  %313 = load i1, i1* %DF_val, !mcsema_real_eip !85
  store i1 %313, i1* %DF, align 1, !mcsema_real_eip !85
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !85
  %314 = load i1, i1* %FPU_B_val, !mcsema_real_eip !85
  store i1 %314, i1* %FPU_B, align 1, !mcsema_real_eip !85
  %315 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !85
  store i1 %315, i1* %FPU_C3, align 1, !mcsema_real_eip !85
  %316 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !85
  store i3 %316, i3* %FPU_TOP, align 1, !mcsema_real_eip !85
  %317 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !85
  store i1 %317, i1* %FPU_C2, align 1, !mcsema_real_eip !85
  %318 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !85
  store i1 %318, i1* %FPU_C1, align 1, !mcsema_real_eip !85
  %319 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !85
  store i1 %319, i1* %FPU_C0, align 1, !mcsema_real_eip !85
  %320 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !85
  store i1 %320, i1* %FPU_ES, align 1, !mcsema_real_eip !85
  %321 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !85
  store i1 %321, i1* %FPU_SF, align 1, !mcsema_real_eip !85
  %322 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !85
  store i1 %322, i1* %FPU_PE, align 1, !mcsema_real_eip !85
  %323 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !85
  store i1 %323, i1* %FPU_UE, align 1, !mcsema_real_eip !85
  %324 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !85
  store i1 %324, i1* %FPU_OE, align 1, !mcsema_real_eip !85
  %325 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !85
  store i1 %325, i1* %FPU_ZE, align 1, !mcsema_real_eip !85
  %326 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !85
  store i1 %326, i1* %FPU_DE, align 1, !mcsema_real_eip !85
  %327 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !85
  store i1 %327, i1* %FPU_IE, align 1, !mcsema_real_eip !85
  %328 = load i1, i1* %FPU_X_val, !mcsema_real_eip !85
  store i1 %328, i1* %FPU_X, align 1, !mcsema_real_eip !85
  %329 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !85
  store i2 %329, i2* %FPU_RC, align 1, !mcsema_real_eip !85
  %330 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !85
  store i2 %330, i2* %FPU_PC, align 1, !mcsema_real_eip !85
  %331 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !85
  store i1 %331, i1* %FPU_PM, align 1, !mcsema_real_eip !85
  %332 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !85
  store i1 %332, i1* %FPU_UM, align 1, !mcsema_real_eip !85
  %333 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !85
  store i1 %333, i1* %FPU_OM, align 1, !mcsema_real_eip !85
  %334 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !85
  store i1 %334, i1* %FPU_ZM, align 1, !mcsema_real_eip !85
  %335 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !85
  store i1 %335, i1* %FPU_DM, align 1, !mcsema_real_eip !85
  %336 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !85
  store i1 %336, i1* %FPU_IM, align 1, !mcsema_real_eip !85
  %337 = load i64, i64* %53, align 4
  store i64 %337, i64* %52, align 4
  %338 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !85
  store i16 %338, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !85
  %339 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !85
  store i64 %339, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !85
  %340 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !85
  store i16 %340, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !85
  %341 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !85
  store i64 %341, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !85
  %342 = load i128, i128* %XMM0_val, !mcsema_real_eip !85
  store i128 %342, i128* %XMM0, align 1, !mcsema_real_eip !85
  %343 = load i128, i128* %XMM1_val, !mcsema_real_eip !85
  store i128 %343, i128* %XMM1, align 1, !mcsema_real_eip !85
  %344 = load i128, i128* %XMM2_val, !mcsema_real_eip !85
  store i128 %344, i128* %XMM2, align 1, !mcsema_real_eip !85
  %345 = load i128, i128* %XMM3_val, !mcsema_real_eip !85
  store i128 %345, i128* %XMM3, align 1, !mcsema_real_eip !85
  %346 = load i128, i128* %XMM4_val, !mcsema_real_eip !85
  store i128 %346, i128* %XMM4, align 1, !mcsema_real_eip !85
  %347 = load i128, i128* %XMM5_val, !mcsema_real_eip !85
  store i128 %347, i128* %XMM5, align 1, !mcsema_real_eip !85
  %348 = load i128, i128* %XMM6_val, !mcsema_real_eip !85
  store i128 %348, i128* %XMM6, align 1, !mcsema_real_eip !85
  %349 = load i128, i128* %XMM7_val, !mcsema_real_eip !85
  store i128 %349, i128* %XMM7, align 1, !mcsema_real_eip !85
  %350 = load i128, i128* %XMM8_val, !mcsema_real_eip !85
  store i128 %350, i128* %XMM8, align 1, !mcsema_real_eip !85
  %351 = load i128, i128* %XMM9_val, !mcsema_real_eip !85
  store i128 %351, i128* %XMM9, align 1, !mcsema_real_eip !85
  %352 = load i128, i128* %XMM10_val, !mcsema_real_eip !85
  store i128 %352, i128* %XMM10, align 1, !mcsema_real_eip !85
  %353 = load i128, i128* %XMM11_val, !mcsema_real_eip !85
  store i128 %353, i128* %XMM11, align 1, !mcsema_real_eip !85
  %354 = load i128, i128* %XMM12_val, !mcsema_real_eip !85
  store i128 %354, i128* %XMM12, align 1, !mcsema_real_eip !85
  %355 = load i128, i128* %XMM13_val, !mcsema_real_eip !85
  store i128 %355, i128* %XMM13, align 1, !mcsema_real_eip !85
  %356 = load i128, i128* %XMM14_val, !mcsema_real_eip !85
  store i128 %356, i128* %XMM14, align 1, !mcsema_real_eip !85
  %357 = load i128, i128* %XMM15_val, !mcsema_real_eip !85
  store i128 %357, i128* %XMM15, align 1, !mcsema_real_eip !85
  %358 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !85
  store i64 %358, i64* %STACK_BASE, align 1, !mcsema_real_eip !85
  %359 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !85
  store i64 %359, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !85
  ret void, !mcsema_real_eip !85
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_80(%struct.regs* %0)
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
!2 = !{i64 128, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 129, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = !{i64 132, [16 x i8] c"\09subq\09$80, %rsp\00"}
!5 = !{i64 136, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!6 = !{i64 143, [21 x i8] c"\09movl\09$10, -16(%rbp)\00"}
!7 = !{i64 150, [21 x i8] c"\09movl\09$10, -12(%rbp)\00"}
!8 = !{i64 157, [20 x i8] c"\09movl\09$10, -8(%rbp)\00"}
!9 = !{i64 169, [17 x i8] c"\09movl\09%eax, %edi\00"}
!10 = !{i64 171, [9 x i8] c"\09callq\090\00"}
!11 = !{i64 176, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!12 = !{i64 180, [17 x i8] c"\09movl\09$5, (%rax)\00"}
!13 = !{i64 186, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!14 = !{i64 190, [18 x i8] c"\09movl\09$5, 4(%rax)\00"}
!15 = !{i64 197, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!16 = !{i64 201, [18 x i8] c"\09movl\09$5, 8(%rax)\00"}
!17 = !{i64 208, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!18 = !{i64 212, [17 x i8] c"\09movq\09%rsp, %rdi\00"}
!19 = !{i64 215, [20 x i8] c"\09movq\09%rax, 8(%rdi)\00"}
!20 = !{i64 219, [22 x i8] c"\09leaq\09-16(%rbp), %rax\00"}
!21 = !{i64 223, [19 x i8] c"\09movq\09%rax, (%rdi)\00"}
!22 = !{i64 226, [15 x i8] c"\09movl\09$1, %ecx\00"}
!23 = !{i64 231, [15 x i8] c"\09movl\09$2, %edx\00"}
!24 = !{i64 241, [17 x i8] c"\09movl\09%ecx, %edi\00"}
!25 = !{i64 243, [22 x i8] c"\09movl\09%esi, -60(%rbp)\00"}
!26 = !{i64 246, [17 x i8] c"\09movl\09%edx, %esi\00"}
!27 = !{i64 248, [22 x i8] c"\09movl\09-60(%rbp), %r8d\00"}
!28 = !{i64 252, [22 x i8] c"\09movl\09%edx, -64(%rbp)\00"}
!29 = !{i64 255, [17 x i8] c"\09movl\09%r8d, %edx\00"}
!30 = !{i64 258, [22 x i8] c"\09movl\09-64(%rbp), %r8d\00"}
!31 = !{i64 262, [22 x i8] c"\09movl\09-60(%rbp), %r9d\00"}
!32 = !{i64 266, [12 x i8] c"\09callq\09-271\00"}
!33 = !{i64 271, [22 x i8] c"\09movl\09%edx, -48(%rbp)\00"}
!34 = !{i64 274, [22 x i8] c"\09movq\09%rax, -56(%rbp)\00"}
!35 = !{i64 278, [22 x i8] c"\09movq\09-56(%rbp), %rax\00"}
!36 = !{i64 282, [22 x i8] c"\09movq\09%rax, -40(%rbp)\00"}
!37 = !{i64 286, [22 x i8] c"\09movl\09-48(%rbp), %ecx\00"}
!38 = !{i64 289, [22 x i8] c"\09movl\09%ecx, -32(%rbp)\00"}
!39 = !{i64 292, [22 x i8] c"\09movl\09-40(%rbp), %ecx\00"}
!40 = !{i64 295, [22 x i8] c"\09addl\09-36(%rbp), %ecx\00"}
!41 = !{i64 298, [22 x i8] c"\09addl\09-32(%rbp), %ecx\00"}
!42 = !{i64 301, [17 x i8] c"\09movl\09%ecx, %eax\00"}
!43 = !{i64 303, [16 x i8] c"\09addq\09$80, %rsp\00"}
!44 = !{i64 307, [11 x i8] c"\09popq\09%rbp\00"}
!45 = !{i64 308, [6 x i8] c"\09retq\00"}
!46 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!47 = !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!48 = !{i64 4, [21 x i8] c"\09movq\0924(%rbp), %rax\00"}
!49 = !{i64 8, [21 x i8] c"\09movq\0916(%rbp), %r10\00"}
!50 = !{i64 12, [22 x i8] c"\09movl\09%edi, -20(%rbp)\00"}
!51 = !{i64 15, [22 x i8] c"\09movl\09%esi, -24(%rbp)\00"}
!52 = !{i64 18, [22 x i8] c"\09movl\09%edx, -28(%rbp)\00"}
!53 = !{i64 21, [22 x i8] c"\09movl\09%ecx, -32(%rbp)\00"}
!54 = !{i64 24, [22 x i8] c"\09movl\09%r8d, -36(%rbp)\00"}
!55 = !{i64 28, [22 x i8] c"\09movl\09%r9d, -40(%rbp)\00"}
!56 = !{i64 32, [22 x i8] c"\09movq\09%r10, -48(%rbp)\00"}
!57 = !{i64 36, [22 x i8] c"\09movq\09%rax, -56(%rbp)\00"}
!58 = !{i64 40, [22 x i8] c"\09movq\09-48(%rbp), %r10\00"}
!59 = !{i64 44, [19 x i8] c"\09movl\09(%r10), %ecx\00"}
!60 = !{i64 47, [19 x i8] c"\09movl\09(%rax), %edx\00"}
!61 = !{i64 49, [17 x i8] c"\09addl\09%edx, %ecx\00"}
!62 = !{i64 51, [22 x i8] c"\09movl\09%ecx, -72(%rbp)\00"}
!63 = !{i64 54, [22 x i8] c"\09movq\09-48(%rbp), %rax\00"}
!64 = !{i64 58, [20 x i8] c"\09movl\094(%rax), %ecx\00"}
!65 = !{i64 61, [22 x i8] c"\09movq\09-56(%rbp), %rax\00"}
!66 = !{i64 65, [20 x i8] c"\09movl\094(%rax), %edx\00"}
!67 = !{i64 68, [17 x i8] c"\09addl\09%edx, %ecx\00"}
!68 = !{i64 70, [22 x i8] c"\09movl\09%ecx, -68(%rbp)\00"}
!69 = !{i64 73, [22 x i8] c"\09movq\09-48(%rbp), %rax\00"}
!70 = !{i64 77, [20 x i8] c"\09movl\098(%rax), %ecx\00"}
!71 = !{i64 80, [22 x i8] c"\09movq\09-56(%rbp), %rax\00"}
!72 = !{i64 84, [20 x i8] c"\09movl\098(%rax), %edx\00"}
!73 = !{i64 87, [17 x i8] c"\09addl\09%edx, %ecx\00"}
!74 = !{i64 89, [22 x i8] c"\09movl\09%ecx, -64(%rbp)\00"}
!75 = !{i64 92, [21 x i8] c"\09movl\09%ecx, -8(%rbp)\00"}
!76 = !{i64 95, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!77 = !{i64 99, [22 x i8] c"\09movq\09%rax, -16(%rbp)\00"}
!78 = !{i64 103, [21 x i8] c"\09movl\09-8(%rbp), %ecx\00"}
!79 = !{i64 106, [22 x i8] c"\09movl\09%ecx, -80(%rbp)\00"}
!80 = !{i64 109, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!81 = !{i64 113, [22 x i8] c"\09movq\09%rax, -88(%rbp)\00"}
!82 = !{i64 117, [22 x i8] c"\09movq\09-88(%rbp), %rax\00"}
!83 = !{i64 121, [22 x i8] c"\09movl\09-80(%rbp), %edx\00"}
!84 = !{i64 124, [11 x i8] c"\09popq\09%rbp\00"}
!85 = !{i64 125, [6 x i8] c"\09retq\00"}
