; ModuleID = 'Output/test_7.clang.bc'
source_filename = "Output/test_7.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_160(%struct.regs*) {
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
  %82 = load i64, i64* %R14_val, !mcsema_real_eip !4
  %83 = add i64 %79, -16
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !4
  store i64 %82, i64* %84, !mcsema_real_eip !4
  %85 = load i64, i64* %RBX_val, !mcsema_real_eip !5
  %86 = add i64 %79, -24
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !5
  store i64 %85, i64* %87, !mcsema_real_eip !5
  %88 = add i64 %79, -168
  %89 = xor i64 %88, %86, !mcsema_real_eip !6
  %90 = and i64 %89, 16
  %91 = icmp eq i64 %90, 0
  store i1 %91, i1* %AF_val, !mcsema_real_eip !6
  %92 = trunc i64 %88 to i8, !mcsema_real_eip !6
  %93 = tail call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !6
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  store i1 %95, i1* %PF_val, !mcsema_real_eip !6
  %96 = icmp eq i64 %88, 0, !mcsema_real_eip !6
  store i1 %96, i1* %ZF_val, !mcsema_real_eip !6
  %97 = icmp slt i64 %88, 0
  store i1 %97, i1* %SF_val, !mcsema_real_eip !6
  %98 = icmp ult i64 %86, 144, !mcsema_real_eip !6
  store i1 %98, i1* %CF_val, !mcsema_real_eip !6
  %99 = and i64 %89, %86, !mcsema_real_eip !6
  %100 = icmp slt i64 %99, 0
  store i1 %100, i1* %OF_val, !mcsema_real_eip !6
  store i64 %88, i64* %RSP_val, !mcsema_real_eip !6
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  %102 = add i64 %101, -20, !mcsema_real_eip !7
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !7
  %104 = bitcast i64* %103 to i32*
  store i32 0, i32* %104, !mcsema_real_eip !7
  %105 = load i64, i64* %RBP_val, !mcsema_real_eip !8
  %106 = add i64 %105, -24, !mcsema_real_eip !8
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !8
  %108 = bitcast i64* %107 to i32*
  store i32 1, i32* %108, !mcsema_real_eip !8
  %109 = load i64, i64* %RBP_val, !mcsema_real_eip !9
  %110 = add i64 %109, -68, !mcsema_real_eip !9
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !9
  %112 = bitcast i64* %111 to i32*
  store i32 0, i32* %112, !mcsema_real_eip !9
  br label %block_0x183, !mcsema_real_eip !10

block_0x183:                                      ; preds = %block_0x190, %entry
  %113 = load i64, i64* %RBP_val, !mcsema_real_eip !10
  %114 = add i64 %113, -68, !mcsema_real_eip !10
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !10
  %116 = bitcast i64* %115 to i32*
  %117 = load i32, i32* %116, !mcsema_real_eip !10
  %118 = add i32 %117, -10
  %119 = xor i32 %118, %117, !mcsema_real_eip !10
  %120 = and i32 %119, 16, !mcsema_real_eip !10
  %121 = icmp ne i32 %120, 0, !mcsema_real_eip !10
  store i1 %121, i1* %AF_val, !mcsema_real_eip !10
  %122 = trunc i32 %118 to i8, !mcsema_real_eip !10
  %123 = tail call i8 @llvm.ctpop.i8(i8 %122), !mcsema_real_eip !10
  %124 = and i8 %123, 1
  %125 = icmp eq i8 %124, 0
  store i1 %125, i1* %PF_val, !mcsema_real_eip !10
  %126 = icmp eq i32 %118, 0, !mcsema_real_eip !10
  store i1 %126, i1* %ZF_val, !mcsema_real_eip !10
  %127 = icmp slt i32 %118, 0
  store i1 %127, i1* %SF_val, !mcsema_real_eip !10
  %128 = icmp ult i32 %117, 10, !mcsema_real_eip !10
  store i1 %128, i1* %CF_val, !mcsema_real_eip !10
  %129 = and i32 %119, %117, !mcsema_real_eip !10
  %130 = icmp slt i32 %129, 0
  store i1 %130, i1* %OF_val, !mcsema_real_eip !10
  %tmp = xor i1 %127, %130
  br i1 %tmp, label %block_0x190, label %block_0x1b0, !mcsema_real_eip !11

block_0x190:                                      ; preds = %block_0x183
  %131 = load i64, i64* %RBP_val, !mcsema_real_eip !12
  %132 = add i64 %131, -68, !mcsema_real_eip !12
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !12
  %134 = bitcast i64* %133 to i32*
  %135 = load i32, i32* %134, !mcsema_real_eip !12
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %135, i32 1)
  %136 = extractvalue { i32, i1 } %uadd, 0
  %137 = xor i32 %136, %135, !mcsema_real_eip !13
  %138 = and i32 %137, 16, !mcsema_real_eip !13
  %139 = icmp ne i32 %138, 0, !mcsema_real_eip !13
  store i1 %139, i1* %AF_val, !mcsema_real_eip !13
  %140 = icmp slt i32 %136, 0
  store i1 %140, i1* %SF_val, !mcsema_real_eip !13
  %141 = icmp eq i32 %136, 0, !mcsema_real_eip !13
  store i1 %141, i1* %ZF_val, !mcsema_real_eip !13
  %142 = xor i32 %135, -2147483648, !mcsema_real_eip !13
  %143 = and i32 %137, %142, !mcsema_real_eip !13
  %144 = icmp slt i32 %143, 0
  store i1 %144, i1* %OF_val, !mcsema_real_eip !13
  %145 = trunc i32 %136 to i8, !mcsema_real_eip !13
  %146 = tail call i8 @llvm.ctpop.i8(i8 %145), !mcsema_real_eip !13
  %147 = and i8 %146, 1
  %148 = icmp eq i8 %147, 0
  store i1 %148, i1* %PF_val, !mcsema_real_eip !13
  %149 = extractvalue { i32, i1 } %uadd, 1
  store i1 %149, i1* %CF_val, !mcsema_real_eip !13
  %150 = zext i32 %136 to i64, !mcsema_real_eip !13
  store i64 %150, i64* %RAX_val, !mcsema_real_eip !13
  %151 = load i64, i64* %RBP_val, !mcsema_real_eip !14
  %152 = add i64 %151, -68, !mcsema_real_eip !14
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !14
  %154 = bitcast i64* %153 to i32*
  %155 = load i32, i32* %154, !mcsema_real_eip !14
  %156 = sext i32 %155 to i64, !mcsema_real_eip !14
  store i64 %156, i64* %RCX_val, !mcsema_real_eip !14
  %157 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %158 = add i64 %157, -64, !mcsema_real_eip !15
  %159 = shl nsw i64 %156, 2
  %160 = add i64 %158, %159, !mcsema_real_eip !15
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !15
  %162 = load i64, i64* %RAX_val, !mcsema_real_eip !15
  %163 = trunc i64 %162 to i32, !mcsema_real_eip !15
  %164 = bitcast i64* %161 to i32*
  store i32 %163, i32* %164, !mcsema_real_eip !15
  %165 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %166 = add i64 %165, -68, !mcsema_real_eip !16
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !16
  %168 = bitcast i64* %167 to i32*
  %169 = load i32, i32* %168, !mcsema_real_eip !16
  %uadd211 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %169, i32 1)
  %170 = extractvalue { i32, i1 } %uadd211, 0
  %171 = xor i32 %170, %169, !mcsema_real_eip !17
  %172 = and i32 %171, 16, !mcsema_real_eip !17
  %173 = icmp ne i32 %172, 0, !mcsema_real_eip !17
  store i1 %173, i1* %AF_val, !mcsema_real_eip !17
  %174 = icmp slt i32 %170, 0
  store i1 %174, i1* %SF_val, !mcsema_real_eip !17
  %175 = icmp eq i32 %170, 0, !mcsema_real_eip !17
  store i1 %175, i1* %ZF_val, !mcsema_real_eip !17
  %176 = xor i32 %169, -2147483648, !mcsema_real_eip !17
  %177 = and i32 %171, %176, !mcsema_real_eip !17
  %178 = icmp slt i32 %177, 0
  store i1 %178, i1* %OF_val, !mcsema_real_eip !17
  %179 = trunc i32 %170 to i8, !mcsema_real_eip !17
  %180 = tail call i8 @llvm.ctpop.i8(i8 %179), !mcsema_real_eip !17
  %181 = and i8 %180, 1
  %182 = icmp eq i8 %181, 0
  store i1 %182, i1* %PF_val, !mcsema_real_eip !17
  %183 = extractvalue { i32, i1 } %uadd211, 1
  store i1 %183, i1* %CF_val, !mcsema_real_eip !17
  %184 = zext i32 %170 to i64, !mcsema_real_eip !17
  store i64 %184, i64* %RAX_val, !mcsema_real_eip !17
  %185 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  %186 = add i64 %185, -68, !mcsema_real_eip !18
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !18
  %188 = bitcast i64* %187 to i32*
  store i32 %170, i32* %188, !mcsema_real_eip !18
  br label %block_0x183, !mcsema_real_eip !19

block_0x1b0:                                      ; preds = %block_0x183
  store i64 40, i64* %RDI_val, !mcsema_real_eip !20
  %189 = load i64, i64* %RBP_val, !mcsema_real_eip !21
  %190 = add i64 %189, -24, !mcsema_real_eip !21
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !21
  %192 = ptrtoint i64* %191 to i64, !mcsema_real_eip !21
  %193 = add i64 %189, -80, !mcsema_real_eip !22
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !22
  store i64 %192, i64* %194, !mcsema_real_eip !22
  %195 = load i64, i64* %RDI_val, !mcsema_real_eip !23
  %196 = tail call x86_64_sysvcc i64 @malloc(i64 %195), !mcsema_real_eip !23
  store i64 %196, i64* %RAX_val, !mcsema_real_eip !23
  %197 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %198 = add i64 %197, -88, !mcsema_real_eip !24
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !24
  store i64 %196, i64* %199, !mcsema_real_eip !24
  %200 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %201 = add i64 %200, -92, !mcsema_real_eip !25
  %202 = inttoptr i64 %201 to i64*, !mcsema_real_eip !25
  %203 = bitcast i64* %202 to i32*
  store i32 0, i32* %203, !mcsema_real_eip !25
  br label %block_0x1d2, !mcsema_real_eip !12

block_0x1d2:                                      ; preds = %block_0x1df, %block_0x1b0
  %204 = load i64, i64* %RBP_val, !mcsema_real_eip !26
  %205 = add i64 %204, -92, !mcsema_real_eip !26
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !26
  %207 = bitcast i64* %206 to i32*
  %208 = load i32, i32* %207, !mcsema_real_eip !26
  %209 = add i32 %208, -10
  %210 = xor i32 %209, %208, !mcsema_real_eip !26
  %211 = and i32 %210, 16, !mcsema_real_eip !26
  %212 = icmp ne i32 %211, 0, !mcsema_real_eip !26
  store i1 %212, i1* %AF_val, !mcsema_real_eip !26
  %213 = trunc i32 %209 to i8, !mcsema_real_eip !26
  %214 = tail call i8 @llvm.ctpop.i8(i8 %213), !mcsema_real_eip !26
  %215 = and i8 %214, 1
  %216 = icmp eq i8 %215, 0
  store i1 %216, i1* %PF_val, !mcsema_real_eip !26
  %217 = icmp eq i32 %209, 0, !mcsema_real_eip !26
  store i1 %217, i1* %ZF_val, !mcsema_real_eip !26
  %218 = icmp slt i32 %209, 0
  store i1 %218, i1* %SF_val, !mcsema_real_eip !26
  %219 = icmp ult i32 %208, 10, !mcsema_real_eip !26
  store i1 %219, i1* %CF_val, !mcsema_real_eip !26
  %220 = and i32 %210, %208, !mcsema_real_eip !26
  %221 = icmp slt i32 %220, 0
  store i1 %221, i1* %OF_val, !mcsema_real_eip !26
  %tmp212 = xor i1 %218, %221
  br i1 %tmp212, label %block_0x1df, label %block_0x202, !mcsema_real_eip !27

block_0x1df:                                      ; preds = %block_0x1d2
  %222 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %223 = add i64 %222, -92, !mcsema_real_eip !28
  %224 = inttoptr i64 %223 to i64*, !mcsema_real_eip !28
  %225 = bitcast i64* %224 to i32*
  %226 = load i32, i32* %225, !mcsema_real_eip !28
  %uadd213 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %226, i32 1)
  %227 = extractvalue { i32, i1 } %uadd213, 0
  %228 = xor i32 %227, %226, !mcsema_real_eip !29
  %229 = and i32 %228, 16, !mcsema_real_eip !29
  %230 = icmp ne i32 %229, 0, !mcsema_real_eip !29
  store i1 %230, i1* %AF_val, !mcsema_real_eip !29
  %231 = icmp slt i32 %227, 0
  store i1 %231, i1* %SF_val, !mcsema_real_eip !29
  %232 = icmp eq i32 %227, 0, !mcsema_real_eip !29
  store i1 %232, i1* %ZF_val, !mcsema_real_eip !29
  %233 = xor i32 %226, -2147483648, !mcsema_real_eip !29
  %234 = and i32 %228, %233, !mcsema_real_eip !29
  %235 = icmp slt i32 %234, 0
  store i1 %235, i1* %OF_val, !mcsema_real_eip !29
  %236 = trunc i32 %227 to i8, !mcsema_real_eip !29
  %237 = tail call i8 @llvm.ctpop.i8(i8 %236), !mcsema_real_eip !29
  %238 = and i8 %237, 1
  %239 = icmp eq i8 %238, 0
  store i1 %239, i1* %PF_val, !mcsema_real_eip !29
  %240 = extractvalue { i32, i1 } %uadd213, 1
  store i1 %240, i1* %CF_val, !mcsema_real_eip !29
  %241 = zext i32 %227 to i64, !mcsema_real_eip !29
  store i64 %241, i64* %RAX_val, !mcsema_real_eip !29
  %242 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  %243 = add i64 %242, -92, !mcsema_real_eip !30
  %244 = inttoptr i64 %243 to i64*, !mcsema_real_eip !30
  %245 = bitcast i64* %244 to i32*
  %246 = load i32, i32* %245, !mcsema_real_eip !30
  %247 = sext i32 %246 to i64, !mcsema_real_eip !30
  store i64 %247, i64* %RCX_val, !mcsema_real_eip !30
  %248 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %249 = add i64 %248, -88, !mcsema_real_eip !31
  %250 = inttoptr i64 %249 to i64*, !mcsema_real_eip !31
  %251 = load i64, i64* %250, !mcsema_real_eip !31
  store i64 %251, i64* %RDX_val, !mcsema_real_eip !31
  %252 = shl nsw i64 %247, 2
  %253 = add i64 %251, %252, !mcsema_real_eip !32
  %254 = inttoptr i64 %253 to i64*, !mcsema_real_eip !32
  %255 = load i64, i64* %RAX_val, !mcsema_real_eip !32
  %256 = trunc i64 %255 to i32, !mcsema_real_eip !32
  %257 = bitcast i64* %254 to i32*
  store i32 %256, i32* %257, !mcsema_real_eip !32
  %258 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %259 = add i64 %258, -92, !mcsema_real_eip !33
  %260 = inttoptr i64 %259 to i64*, !mcsema_real_eip !33
  %261 = bitcast i64* %260 to i32*
  %262 = load i32, i32* %261, !mcsema_real_eip !33
  %uadd214 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %262, i32 1)
  %263 = extractvalue { i32, i1 } %uadd214, 0
  %264 = xor i32 %263, %262, !mcsema_real_eip !34
  %265 = and i32 %264, 16, !mcsema_real_eip !34
  %266 = icmp ne i32 %265, 0, !mcsema_real_eip !34
  store i1 %266, i1* %AF_val, !mcsema_real_eip !34
  %267 = icmp slt i32 %263, 0
  store i1 %267, i1* %SF_val, !mcsema_real_eip !34
  %268 = icmp eq i32 %263, 0, !mcsema_real_eip !34
  store i1 %268, i1* %ZF_val, !mcsema_real_eip !34
  %269 = xor i32 %262, -2147483648, !mcsema_real_eip !34
  %270 = and i32 %264, %269, !mcsema_real_eip !34
  %271 = icmp slt i32 %270, 0
  store i1 %271, i1* %OF_val, !mcsema_real_eip !34
  %272 = trunc i32 %263 to i8, !mcsema_real_eip !34
  %273 = tail call i8 @llvm.ctpop.i8(i8 %272), !mcsema_real_eip !34
  %274 = and i8 %273, 1
  %275 = icmp eq i8 %274, 0
  store i1 %275, i1* %PF_val, !mcsema_real_eip !34
  %276 = extractvalue { i32, i1 } %uadd214, 1
  store i1 %276, i1* %CF_val, !mcsema_real_eip !34
  %277 = zext i32 %263 to i64, !mcsema_real_eip !34
  store i64 %277, i64* %RAX_val, !mcsema_real_eip !34
  %278 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %279 = add i64 %278, -92, !mcsema_real_eip !35
  %280 = inttoptr i64 %279 to i64*, !mcsema_real_eip !35
  %281 = bitcast i64* %280 to i32*
  store i32 %263, i32* %281, !mcsema_real_eip !35
  br label %block_0x1d2, !mcsema_real_eip !36

block_0x202:                                      ; preds = %block_0x1d2
  store i64 10, i64* %RAX_val, !mcsema_real_eip !37
  %282 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %283 = add i64 %282, -64, !mcsema_real_eip !38
  %284 = inttoptr i64 %283 to i64*, !mcsema_real_eip !38
  %285 = ptrtoint i64* %284 to i64, !mcsema_real_eip !38
  store i64 %285, i64* %RCX_val, !mcsema_real_eip !38
  %286 = add i64 %282, -24, !mcsema_real_eip !39
  %287 = inttoptr i64 %286 to i64*, !mcsema_real_eip !39
  %288 = bitcast i64* %287 to i32*
  %289 = load i32, i32* %288, !mcsema_real_eip !39
  %290 = zext i32 %289 to i64, !mcsema_real_eip !39
  store i64 %290, i64* %RDI_val, !mcsema_real_eip !39
  %291 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %292 = add i64 %291, -80, !mcsema_real_eip !40
  %293 = inttoptr i64 %292 to i64*, !mcsema_real_eip !40
  %294 = load i64, i64* %293, !mcsema_real_eip !40
  store i64 %294, i64* %RDX_val, !mcsema_real_eip !40
  %295 = add i64 %291, -88, !mcsema_real_eip !41
  %296 = inttoptr i64 %295 to i64*, !mcsema_real_eip !41
  %297 = load i64, i64* %296, !mcsema_real_eip !41
  store i64 %297, i64* %RSI_val, !mcsema_real_eip !41
  %298 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  %299 = add i64 %298, -24, !mcsema_real_eip !42
  %300 = inttoptr i64 %299 to i64*, !mcsema_real_eip !42
  %301 = bitcast i64* %300 to i32*
  %302 = load i32, i32* %301, !mcsema_real_eip !42
  %303 = zext i32 %302 to i64, !mcsema_real_eip !42
  store i64 %303, i64* %R8_val, !mcsema_real_eip !42
  %304 = load i64, i64* %RBP_val, !mcsema_real_eip !43
  %305 = add i64 %304, -80, !mcsema_real_eip !43
  %306 = inttoptr i64 %305 to i64*, !mcsema_real_eip !43
  %307 = load i64, i64* %306, !mcsema_real_eip !43
  store i64 %307, i64* %R9_val, !mcsema_real_eip !43
  %308 = add i64 %304, -88, !mcsema_real_eip !44
  %309 = inttoptr i64 %308 to i64*, !mcsema_real_eip !44
  %310 = load i64, i64* %309, !mcsema_real_eip !44
  store i64 %310, i64* %R10_val, !mcsema_real_eip !44
  %311 = load i64, i64* %RBP_val, !mcsema_real_eip !45
  %312 = add i64 %311, -104, !mcsema_real_eip !45
  %313 = inttoptr i64 %312 to i64*, !mcsema_real_eip !45
  %314 = load i64, i64* %RSI_val, !mcsema_real_eip !45
  store i64 %314, i64* %313, !mcsema_real_eip !45
  %315 = load i64, i64* %RCX_val, !mcsema_real_eip !46
  store i64 %315, i64* %RSI_val, !mcsema_real_eip !46
  %316 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  %317 = add i64 %316, -104, !mcsema_real_eip !47
  %318 = inttoptr i64 %317 to i64*, !mcsema_real_eip !47
  %319 = load i64, i64* %318, !mcsema_real_eip !47
  store i64 %319, i64* %R11_val, !mcsema_real_eip !47
  %320 = add i64 %316, -112, !mcsema_real_eip !48
  %321 = inttoptr i64 %320 to i64*, !mcsema_real_eip !48
  %322 = load i64, i64* %RCX_val, !mcsema_real_eip !48
  store i64 %322, i64* %321, !mcsema_real_eip !48
  %323 = load i64, i64* %R11_val, !mcsema_real_eip !49
  store i64 %323, i64* %RCX_val, !mcsema_real_eip !49
  %324 = load i64, i64* %RBP_val, !mcsema_real_eip !50
  %325 = add i64 %324, -116, !mcsema_real_eip !50
  %326 = inttoptr i64 %325 to i64*, !mcsema_real_eip !50
  %327 = load i64, i64* %R8_val, !mcsema_real_eip !50
  %328 = trunc i64 %327 to i32, !mcsema_real_eip !50
  %329 = bitcast i64* %326 to i32*
  store i32 %328, i32* %329, !mcsema_real_eip !50
  %330 = load i64, i64* %RAX_val, !mcsema_real_eip !51
  %331 = and i64 %330, 4294967295
  store i64 %331, i64* %R8_val, !mcsema_real_eip !51
  %332 = load i64, i64* %RBP_val, !mcsema_real_eip !52
  %333 = add i64 %332, -128, !mcsema_real_eip !52
  %334 = inttoptr i64 %333 to i64*, !mcsema_real_eip !52
  %335 = load i64, i64* %R9_val, !mcsema_real_eip !52
  store i64 %335, i64* %334, !mcsema_real_eip !52
  %336 = load i64, i64* %RAX_val, !mcsema_real_eip !53
  %337 = and i64 %336, 4294967295
  store i64 %337, i64* %R9_val, !mcsema_real_eip !53
  %338 = load i64, i64* %RBP_val, !mcsema_real_eip !54
  %339 = add i64 %338, -116, !mcsema_real_eip !54
  %340 = inttoptr i64 %339 to i64*, !mcsema_real_eip !54
  %341 = bitcast i64* %340 to i32*
  %342 = load i32, i32* %341, !mcsema_real_eip !54
  %343 = zext i32 %342 to i64, !mcsema_real_eip !54
  store i64 %343, i64* %RAX_val, !mcsema_real_eip !54
  %344 = load i64, i64* %RSP_val, !mcsema_real_eip !55
  %345 = inttoptr i64 %344 to i64*, !mcsema_real_eip !55
  %346 = bitcast i64* %345 to i32*
  store i32 %342, i32* %346, !mcsema_real_eip !55
  %347 = load i64, i64* %RBP_val, !mcsema_real_eip !56
  %348 = add i64 %347, -112, !mcsema_real_eip !56
  %349 = inttoptr i64 %348 to i64*, !mcsema_real_eip !56
  %350 = load i64, i64* %349, !mcsema_real_eip !56
  store i64 %350, i64* %RBX_val, !mcsema_real_eip !56
  %351 = load i64, i64* %RSP_val, !mcsema_real_eip !57
  %352 = add i64 %351, 8, !mcsema_real_eip !57
  %353 = inttoptr i64 %352 to i64*, !mcsema_real_eip !57
  store i64 %350, i64* %353, !mcsema_real_eip !57
  %354 = load i64, i64* %RBP_val, !mcsema_real_eip !58
  %355 = add i64 %354, -128, !mcsema_real_eip !58
  %356 = inttoptr i64 %355 to i64*, !mcsema_real_eip !58
  %357 = load i64, i64* %356, !mcsema_real_eip !58
  store i64 %357, i64* %R14_val, !mcsema_real_eip !58
  %358 = load i64, i64* %RSP_val, !mcsema_real_eip !59
  %359 = add i64 %358, 16, !mcsema_real_eip !59
  %360 = inttoptr i64 %359 to i64*, !mcsema_real_eip !59
  store i64 %357, i64* %360, !mcsema_real_eip !59
  %361 = load i64, i64* %RSP_val, !mcsema_real_eip !60
  %362 = add i64 %361, 24, !mcsema_real_eip !60
  %363 = inttoptr i64 %362 to i64*, !mcsema_real_eip !60
  %364 = load i64, i64* %R10_val, !mcsema_real_eip !60
  store i64 %364, i64* %363, !mcsema_real_eip !60
  %365 = load i64, i64* %RSP_val, !mcsema_real_eip !61
  %366 = add i64 %365, -8
  %367 = inttoptr i64 %366 to i64*, !mcsema_real_eip !61
  store i64 -4981261766360305936, i64* %367, !mcsema_real_eip !61
  store i64 %366, i64* %RSP_val, !mcsema_real_eip !61
  %368 = load i64, i64* %RAX_val, !mcsema_real_eip !61
  store i64 %368, i64* %RAX, !mcsema_real_eip !61
  %369 = load i64, i64* %RBX_val, !mcsema_real_eip !61
  store i64 %369, i64* %RBX, !mcsema_real_eip !61
  %370 = load i64, i64* %RCX_val, !mcsema_real_eip !61
  store i64 %370, i64* %RCX, !mcsema_real_eip !61
  %371 = load i64, i64* %RDX_val, !mcsema_real_eip !61
  store i64 %371, i64* %RDX, !mcsema_real_eip !61
  %372 = load i64, i64* %RSI_val, !mcsema_real_eip !61
  store i64 %372, i64* %RSI, !mcsema_real_eip !61
  %373 = load i64, i64* %RDI_val, !mcsema_real_eip !61
  store i64 %373, i64* %RDI, !mcsema_real_eip !61
  %374 = load i64, i64* %RSP_val, !mcsema_real_eip !61
  store i64 %374, i64* %RSP, !mcsema_real_eip !61
  %375 = load i64, i64* %RBP_val, !mcsema_real_eip !61
  store i64 %375, i64* %RBP, !mcsema_real_eip !61
  %376 = load i64, i64* %R8_val, !mcsema_real_eip !61
  store i64 %376, i64* %R8, !mcsema_real_eip !61
  %377 = load i64, i64* %R9_val, !mcsema_real_eip !61
  store i64 %377, i64* %R9, !mcsema_real_eip !61
  %378 = load i64, i64* %R10_val, !mcsema_real_eip !61
  store i64 %378, i64* %R10, !mcsema_real_eip !61
  %379 = load i64, i64* %R11_val, !mcsema_real_eip !61
  store i64 %379, i64* %R11, !mcsema_real_eip !61
  %380 = load i64, i64* %R12_val, !mcsema_real_eip !61
  store i64 %380, i64* %R12, !mcsema_real_eip !61
  %381 = load i64, i64* %R13_val, !mcsema_real_eip !61
  store i64 %381, i64* %R13, !mcsema_real_eip !61
  %382 = load i64, i64* %R14_val, !mcsema_real_eip !61
  store i64 %382, i64* %R14, !mcsema_real_eip !61
  %383 = load i64, i64* %R15_val, !mcsema_real_eip !61
  store i64 %383, i64* %R15, !mcsema_real_eip !61
  %384 = load i64, i64* %RIP_val, !mcsema_real_eip !61
  store i64 %384, i64* %RIP, !mcsema_real_eip !61
  %385 = load i1, i1* %CF_val, !mcsema_real_eip !61
  store i1 %385, i1* %CF, align 1, !mcsema_real_eip !61
  %386 = load i1, i1* %PF_val, !mcsema_real_eip !61
  store i1 %386, i1* %PF, align 1, !mcsema_real_eip !61
  %387 = load i1, i1* %AF_val, !mcsema_real_eip !61
  store i1 %387, i1* %AF, align 1, !mcsema_real_eip !61
  %388 = load i1, i1* %ZF_val, !mcsema_real_eip !61
  store i1 %388, i1* %ZF, align 1, !mcsema_real_eip !61
  %389 = load i1, i1* %SF_val, !mcsema_real_eip !61
  store i1 %389, i1* %SF, align 1, !mcsema_real_eip !61
  %390 = load i1, i1* %OF_val, !mcsema_real_eip !61
  store i1 %390, i1* %OF, align 1, !mcsema_real_eip !61
  %391 = load i1, i1* %DF_val, !mcsema_real_eip !61
  store i1 %391, i1* %DF, align 1, !mcsema_real_eip !61
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !61
  %392 = load i1, i1* %FPU_B_val, !mcsema_real_eip !61
  store i1 %392, i1* %FPU_B, align 1, !mcsema_real_eip !61
  %393 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !61
  store i1 %393, i1* %FPU_C3, align 1, !mcsema_real_eip !61
  %394 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !61
  store i3 %394, i3* %FPU_TOP, align 1, !mcsema_real_eip !61
  %395 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !61
  store i1 %395, i1* %FPU_C2, align 1, !mcsema_real_eip !61
  %396 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !61
  store i1 %396, i1* %FPU_C1, align 1, !mcsema_real_eip !61
  %397 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !61
  store i1 %397, i1* %FPU_C0, align 1, !mcsema_real_eip !61
  %398 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !61
  store i1 %398, i1* %FPU_ES, align 1, !mcsema_real_eip !61
  %399 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !61
  store i1 %399, i1* %FPU_SF, align 1, !mcsema_real_eip !61
  %400 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !61
  store i1 %400, i1* %FPU_PE, align 1, !mcsema_real_eip !61
  %401 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !61
  store i1 %401, i1* %FPU_UE, align 1, !mcsema_real_eip !61
  %402 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !61
  store i1 %402, i1* %FPU_OE, align 1, !mcsema_real_eip !61
  %403 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !61
  store i1 %403, i1* %FPU_ZE, align 1, !mcsema_real_eip !61
  %404 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !61
  store i1 %404, i1* %FPU_DE, align 1, !mcsema_real_eip !61
  %405 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !61
  store i1 %405, i1* %FPU_IE, align 1, !mcsema_real_eip !61
  %406 = load i1, i1* %FPU_X_val, !mcsema_real_eip !61
  store i1 %406, i1* %FPU_X, align 1, !mcsema_real_eip !61
  %407 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !61
  store i2 %407, i2* %FPU_RC, align 1, !mcsema_real_eip !61
  %408 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !61
  store i2 %408, i2* %FPU_PC, align 1, !mcsema_real_eip !61
  %409 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !61
  store i1 %409, i1* %FPU_PM, align 1, !mcsema_real_eip !61
  %410 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !61
  store i1 %410, i1* %FPU_UM, align 1, !mcsema_real_eip !61
  %411 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !61
  store i1 %411, i1* %FPU_OM, align 1, !mcsema_real_eip !61
  %412 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !61
  store i1 %412, i1* %FPU_ZM, align 1, !mcsema_real_eip !61
  %413 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !61
  store i1 %413, i1* %FPU_DM, align 1, !mcsema_real_eip !61
  %414 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !61
  store i1 %414, i1* %FPU_IM, align 1, !mcsema_real_eip !61
  %415 = load i64, i64* %53, align 4
  store i64 %415, i64* %52, align 4
  %416 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !61
  store i16 %416, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !61
  %417 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !61
  store i64 %417, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !61
  %418 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !61
  store i16 %418, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !61
  %419 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !61
  store i64 %419, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !61
  %420 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !61
  store i11 %420, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !61
  %421 = load i128, i128* %XMM0_val, !mcsema_real_eip !61
  store i128 %421, i128* %XMM0, align 1, !mcsema_real_eip !61
  %422 = load i128, i128* %XMM1_val, !mcsema_real_eip !61
  store i128 %422, i128* %XMM1, align 1, !mcsema_real_eip !61
  %423 = load i128, i128* %XMM2_val, !mcsema_real_eip !61
  store i128 %423, i128* %XMM2, align 1, !mcsema_real_eip !61
  %424 = load i128, i128* %XMM3_val, !mcsema_real_eip !61
  store i128 %424, i128* %XMM3, align 1, !mcsema_real_eip !61
  %425 = load i128, i128* %XMM4_val, !mcsema_real_eip !61
  store i128 %425, i128* %XMM4, align 1, !mcsema_real_eip !61
  %426 = load i128, i128* %XMM5_val, !mcsema_real_eip !61
  store i128 %426, i128* %XMM5, align 1, !mcsema_real_eip !61
  %427 = load i128, i128* %XMM6_val, !mcsema_real_eip !61
  store i128 %427, i128* %XMM6, align 1, !mcsema_real_eip !61
  %428 = load i128, i128* %XMM7_val, !mcsema_real_eip !61
  store i128 %428, i128* %XMM7, align 1, !mcsema_real_eip !61
  %429 = load i128, i128* %XMM8_val, !mcsema_real_eip !61
  store i128 %429, i128* %XMM8, align 1, !mcsema_real_eip !61
  %430 = load i128, i128* %XMM9_val, !mcsema_real_eip !61
  store i128 %430, i128* %XMM9, align 1, !mcsema_real_eip !61
  %431 = load i128, i128* %XMM10_val, !mcsema_real_eip !61
  store i128 %431, i128* %XMM10, align 1, !mcsema_real_eip !61
  %432 = load i128, i128* %XMM11_val, !mcsema_real_eip !61
  store i128 %432, i128* %XMM11, align 1, !mcsema_real_eip !61
  %433 = load i128, i128* %XMM12_val, !mcsema_real_eip !61
  store i128 %433, i128* %XMM12, align 1, !mcsema_real_eip !61
  %434 = load i128, i128* %XMM13_val, !mcsema_real_eip !61
  store i128 %434, i128* %XMM13, align 1, !mcsema_real_eip !61
  %435 = load i128, i128* %XMM14_val, !mcsema_real_eip !61
  store i128 %435, i128* %XMM14, align 1, !mcsema_real_eip !61
  %436 = load i128, i128* %XMM15_val, !mcsema_real_eip !61
  store i128 %436, i128* %XMM15, align 1, !mcsema_real_eip !61
  %437 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !61
  store i64 %437, i64* %STACK_BASE, align 1, !mcsema_real_eip !61
  %438 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !61
  store i64 %438, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !61
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !61
  %439 = load i64, i64* %RAX, !mcsema_real_eip !61
  store i64 %439, i64* %RAX_val, !mcsema_real_eip !61
  %440 = load i64, i64* %RBX, !mcsema_real_eip !61
  store i64 %440, i64* %RBX_val, !mcsema_real_eip !61
  %441 = load i64, i64* %RCX, !mcsema_real_eip !61
  store i64 %441, i64* %RCX_val, !mcsema_real_eip !61
  %442 = load i64, i64* %RDX, !mcsema_real_eip !61
  store i64 %442, i64* %RDX_val, !mcsema_real_eip !61
  %443 = load i64, i64* %RSI, !mcsema_real_eip !61
  store i64 %443, i64* %RSI_val, !mcsema_real_eip !61
  %444 = load i64, i64* %RDI, !mcsema_real_eip !61
  store i64 %444, i64* %RDI_val, !mcsema_real_eip !61
  %445 = load i64, i64* %RSP, !mcsema_real_eip !61
  store i64 %445, i64* %RSP_val, !mcsema_real_eip !61
  %446 = load i64, i64* %RBP, !mcsema_real_eip !61
  store i64 %446, i64* %RBP_val, !mcsema_real_eip !61
  %447 = load i64, i64* %R8, !mcsema_real_eip !61
  store i64 %447, i64* %R8_val, !mcsema_real_eip !61
  %448 = load i64, i64* %R9, !mcsema_real_eip !61
  store i64 %448, i64* %R9_val, !mcsema_real_eip !61
  %449 = load i64, i64* %R10, !mcsema_real_eip !61
  store i64 %449, i64* %R10_val, !mcsema_real_eip !61
  %450 = load i64, i64* %R11, !mcsema_real_eip !61
  store i64 %450, i64* %R11_val, !mcsema_real_eip !61
  %451 = load i64, i64* %R12, !mcsema_real_eip !61
  store i64 %451, i64* %R12_val, !mcsema_real_eip !61
  %452 = load i64, i64* %R13, !mcsema_real_eip !61
  store i64 %452, i64* %R13_val, !mcsema_real_eip !61
  %453 = load i64, i64* %R14, !mcsema_real_eip !61
  store i64 %453, i64* %R14_val, !mcsema_real_eip !61
  %454 = load i64, i64* %R15, !mcsema_real_eip !61
  store i64 %454, i64* %R15_val, !mcsema_real_eip !61
  %455 = load i64, i64* %RIP, !mcsema_real_eip !61
  store i64 %455, i64* %RIP_val, !mcsema_real_eip !61
  %456 = load i1, i1* %CF, align 1, !mcsema_real_eip !61
  store i1 %456, i1* %CF_val, !mcsema_real_eip !61
  %457 = load i1, i1* %PF, align 1, !mcsema_real_eip !61
  store i1 %457, i1* %PF_val, !mcsema_real_eip !61
  %458 = load i1, i1* %AF, align 1, !mcsema_real_eip !61
  store i1 %458, i1* %AF_val, !mcsema_real_eip !61
  %459 = load i1, i1* %ZF, align 1, !mcsema_real_eip !61
  store i1 %459, i1* %ZF_val, !mcsema_real_eip !61
  %460 = load i1, i1* %SF, align 1, !mcsema_real_eip !61
  store i1 %460, i1* %SF_val, !mcsema_real_eip !61
  %461 = load i1, i1* %OF, align 1, !mcsema_real_eip !61
  store i1 %461, i1* %OF_val, !mcsema_real_eip !61
  %462 = load i1, i1* %DF, align 1, !mcsema_real_eip !61
  store i1 %462, i1* %DF_val, !mcsema_real_eip !61
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !61
  %463 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !61
  store i1 %463, i1* %FPU_B_val, !mcsema_real_eip !61
  %464 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !61
  store i1 %464, i1* %FPU_C3_val, !mcsema_real_eip !61
  %465 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !61
  store i3 %465, i3* %FPU_TOP_val, !mcsema_real_eip !61
  %466 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !61
  store i1 %466, i1* %FPU_C2_val, !mcsema_real_eip !61
  %467 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !61
  store i1 %467, i1* %FPU_C1_val, !mcsema_real_eip !61
  %468 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !61
  store i1 %468, i1* %FPU_C0_val, !mcsema_real_eip !61
  %469 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !61
  store i1 %469, i1* %FPU_ES_val, !mcsema_real_eip !61
  %470 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !61
  store i1 %470, i1* %FPU_SF_val, !mcsema_real_eip !61
  %471 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !61
  store i1 %471, i1* %FPU_PE_val, !mcsema_real_eip !61
  %472 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !61
  store i1 %472, i1* %FPU_UE_val, !mcsema_real_eip !61
  %473 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !61
  store i1 %473, i1* %FPU_OE_val, !mcsema_real_eip !61
  %474 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !61
  store i1 %474, i1* %FPU_ZE_val, !mcsema_real_eip !61
  %475 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !61
  store i1 %475, i1* %FPU_DE_val, !mcsema_real_eip !61
  %476 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !61
  store i1 %476, i1* %FPU_IE_val, !mcsema_real_eip !61
  %477 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !61
  store i1 %477, i1* %FPU_X_val, !mcsema_real_eip !61
  %478 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !61
  store i2 %478, i2* %FPU_RC_val, !mcsema_real_eip !61
  %479 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !61
  store i2 %479, i2* %FPU_PC_val, !mcsema_real_eip !61
  %480 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !61
  store i1 %480, i1* %FPU_PM_val, !mcsema_real_eip !61
  %481 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !61
  store i1 %481, i1* %FPU_UM_val, !mcsema_real_eip !61
  %482 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !61
  store i1 %482, i1* %FPU_OM_val, !mcsema_real_eip !61
  %483 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !61
  store i1 %483, i1* %FPU_ZM_val, !mcsema_real_eip !61
  %484 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !61
  store i1 %484, i1* %FPU_DM_val, !mcsema_real_eip !61
  %485 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !61
  store i1 %485, i1* %FPU_IM_val, !mcsema_real_eip !61
  %486 = load i64, i64* %52, align 4
  store i64 %486, i64* %53, align 4
  %487 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !61
  store i16 %487, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !61
  %488 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !61
  store i64 %488, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !61
  %489 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !61
  store i16 %489, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !61
  %490 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !61
  store i64 %490, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !61
  %491 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !61
  store i11 %491, i11* %FPU_FOPCODE_val, !mcsema_real_eip !61
  %492 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !61
  store i128 %492, i128* %XMM0_val, !mcsema_real_eip !61
  %493 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !61
  store i128 %493, i128* %XMM1_val, !mcsema_real_eip !61
  %494 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !61
  store i128 %494, i128* %XMM2_val, !mcsema_real_eip !61
  %495 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !61
  store i128 %495, i128* %XMM3_val, !mcsema_real_eip !61
  %496 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !61
  store i128 %496, i128* %XMM4_val, !mcsema_real_eip !61
  %497 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !61
  store i128 %497, i128* %XMM5_val, !mcsema_real_eip !61
  %498 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !61
  store i128 %498, i128* %XMM6_val, !mcsema_real_eip !61
  %499 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !61
  store i128 %499, i128* %XMM7_val, !mcsema_real_eip !61
  %500 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !61
  store i128 %500, i128* %XMM8_val, !mcsema_real_eip !61
  %501 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !61
  store i128 %501, i128* %XMM9_val, !mcsema_real_eip !61
  %502 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !61
  store i128 %502, i128* %XMM10_val, !mcsema_real_eip !61
  %503 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !61
  store i128 %503, i128* %XMM11_val, !mcsema_real_eip !61
  %504 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !61
  store i128 %504, i128* %XMM12_val, !mcsema_real_eip !61
  %505 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !61
  store i128 %505, i128* %XMM13_val, !mcsema_real_eip !61
  %506 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !61
  store i128 %506, i128* %XMM14_val, !mcsema_real_eip !61
  %507 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !61
  store i128 %507, i128* %XMM15_val, !mcsema_real_eip !61
  %508 = load i64, i64* %STACK_BASE, !mcsema_real_eip !61
  store i64 %508, i64* %STACK_BASE_val, !mcsema_real_eip !61
  %509 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !61
  store i64 %509, i64* %STACK_LIMIT_val, !mcsema_real_eip !61
  %510 = load i64, i64* %RSP_val, !mcsema_real_eip !62
  %uadd215 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %510, i64 144)
  %511 = extractvalue { i64, i1 } %uadd215, 0
  %512 = xor i64 %511, %510, !mcsema_real_eip !62
  %513 = and i64 %512, 16
  %514 = icmp eq i64 %513, 0
  store i1 %514, i1* %AF_val, !mcsema_real_eip !62
  %515 = icmp slt i64 %511, 0
  store i1 %515, i1* %SF_val, !mcsema_real_eip !62
  %516 = icmp eq i64 %511, 0, !mcsema_real_eip !62
  store i1 %516, i1* %ZF_val, !mcsema_real_eip !62
  %517 = xor i64 %510, -9223372036854775808, !mcsema_real_eip !62
  %518 = and i64 %512, %517, !mcsema_real_eip !62
  %519 = icmp slt i64 %518, 0
  store i1 %519, i1* %OF_val, !mcsema_real_eip !62
  %520 = trunc i64 %511 to i8, !mcsema_real_eip !62
  %521 = tail call i8 @llvm.ctpop.i8(i8 %520), !mcsema_real_eip !62
  %522 = and i8 %521, 1
  %523 = icmp eq i8 %522, 0
  store i1 %523, i1* %PF_val, !mcsema_real_eip !62
  %524 = extractvalue { i64, i1 } %uadd215, 1
  store i1 %524, i1* %CF_val, !mcsema_real_eip !62
  store i64 %511, i64* %RSP_val, !mcsema_real_eip !62
  %525 = inttoptr i64 %511 to i64*, !mcsema_real_eip !63
  %526 = load i64, i64* %525, !mcsema_real_eip !63
  store i64 %526, i64* %RBX_val, !mcsema_real_eip !63
  %527 = add i64 %511, 8, !mcsema_real_eip !63
  store i64 %527, i64* %RSP_val, !mcsema_real_eip !63
  %528 = inttoptr i64 %527 to i64*, !mcsema_real_eip !64
  %529 = load i64, i64* %528, !mcsema_real_eip !64
  store i64 %529, i64* %R14_val, !mcsema_real_eip !64
  %530 = add i64 %511, 16, !mcsema_real_eip !64
  store i64 %530, i64* %RSP_val, !mcsema_real_eip !64
  %531 = inttoptr i64 %530 to i64*, !mcsema_real_eip !65
  %532 = load i64, i64* %531, !mcsema_real_eip !65
  store i64 %532, i64* %RBP_val, !mcsema_real_eip !65
  %533 = add i64 %511, 32, !mcsema_real_eip !66
  store i64 %533, i64* %RSP_val, !mcsema_real_eip !66
  %534 = load i64, i64* %RAX_val, !mcsema_real_eip !66
  store i64 %534, i64* %RAX, !mcsema_real_eip !66
  %535 = load i64, i64* %RBX_val, !mcsema_real_eip !66
  store i64 %535, i64* %RBX, !mcsema_real_eip !66
  %536 = load i64, i64* %RCX_val, !mcsema_real_eip !66
  store i64 %536, i64* %RCX, !mcsema_real_eip !66
  %537 = load i64, i64* %RDX_val, !mcsema_real_eip !66
  store i64 %537, i64* %RDX, !mcsema_real_eip !66
  %538 = load i64, i64* %RSI_val, !mcsema_real_eip !66
  store i64 %538, i64* %RSI, !mcsema_real_eip !66
  %539 = load i64, i64* %RDI_val, !mcsema_real_eip !66
  store i64 %539, i64* %RDI, !mcsema_real_eip !66
  %540 = load i64, i64* %RSP_val, !mcsema_real_eip !66
  store i64 %540, i64* %RSP, !mcsema_real_eip !66
  %541 = load i64, i64* %RBP_val, !mcsema_real_eip !66
  store i64 %541, i64* %RBP, !mcsema_real_eip !66
  %542 = load i64, i64* %R8_val, !mcsema_real_eip !66
  store i64 %542, i64* %R8, !mcsema_real_eip !66
  %543 = load i64, i64* %R9_val, !mcsema_real_eip !66
  store i64 %543, i64* %R9, !mcsema_real_eip !66
  %544 = load i64, i64* %R10_val, !mcsema_real_eip !66
  store i64 %544, i64* %R10, !mcsema_real_eip !66
  %545 = load i64, i64* %R11_val, !mcsema_real_eip !66
  store i64 %545, i64* %R11, !mcsema_real_eip !66
  %546 = load i64, i64* %R12_val, !mcsema_real_eip !66
  store i64 %546, i64* %R12, !mcsema_real_eip !66
  %547 = load i64, i64* %R13_val, !mcsema_real_eip !66
  store i64 %547, i64* %R13, !mcsema_real_eip !66
  %548 = load i64, i64* %R14_val, !mcsema_real_eip !66
  store i64 %548, i64* %R14, !mcsema_real_eip !66
  %549 = load i64, i64* %R15_val, !mcsema_real_eip !66
  store i64 %549, i64* %R15, !mcsema_real_eip !66
  %550 = load i64, i64* %RIP_val, !mcsema_real_eip !66
  store i64 %550, i64* %RIP, !mcsema_real_eip !66
  %551 = load i1, i1* %CF_val, !mcsema_real_eip !66
  store i1 %551, i1* %CF, align 1, !mcsema_real_eip !66
  %552 = load i1, i1* %PF_val, !mcsema_real_eip !66
  store i1 %552, i1* %PF, align 1, !mcsema_real_eip !66
  %553 = load i1, i1* %AF_val, !mcsema_real_eip !66
  store i1 %553, i1* %AF, align 1, !mcsema_real_eip !66
  %554 = load i1, i1* %ZF_val, !mcsema_real_eip !66
  store i1 %554, i1* %ZF, align 1, !mcsema_real_eip !66
  %555 = load i1, i1* %SF_val, !mcsema_real_eip !66
  store i1 %555, i1* %SF, align 1, !mcsema_real_eip !66
  %556 = load i1, i1* %OF_val, !mcsema_real_eip !66
  store i1 %556, i1* %OF, align 1, !mcsema_real_eip !66
  %557 = load i1, i1* %DF_val, !mcsema_real_eip !66
  store i1 %557, i1* %DF, align 1, !mcsema_real_eip !66
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !66
  %558 = load i1, i1* %FPU_B_val, !mcsema_real_eip !66
  store i1 %558, i1* %FPU_B, align 1, !mcsema_real_eip !66
  %559 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !66
  store i1 %559, i1* %FPU_C3, align 1, !mcsema_real_eip !66
  %560 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !66
  store i3 %560, i3* %FPU_TOP, align 1, !mcsema_real_eip !66
  %561 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !66
  store i1 %561, i1* %FPU_C2, align 1, !mcsema_real_eip !66
  %562 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !66
  store i1 %562, i1* %FPU_C1, align 1, !mcsema_real_eip !66
  %563 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !66
  store i1 %563, i1* %FPU_C0, align 1, !mcsema_real_eip !66
  %564 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !66
  store i1 %564, i1* %FPU_ES, align 1, !mcsema_real_eip !66
  %565 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !66
  store i1 %565, i1* %FPU_SF, align 1, !mcsema_real_eip !66
  %566 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !66
  store i1 %566, i1* %FPU_PE, align 1, !mcsema_real_eip !66
  %567 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !66
  store i1 %567, i1* %FPU_UE, align 1, !mcsema_real_eip !66
  %568 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !66
  store i1 %568, i1* %FPU_OE, align 1, !mcsema_real_eip !66
  %569 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !66
  store i1 %569, i1* %FPU_ZE, align 1, !mcsema_real_eip !66
  %570 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !66
  store i1 %570, i1* %FPU_DE, align 1, !mcsema_real_eip !66
  %571 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !66
  store i1 %571, i1* %FPU_IE, align 1, !mcsema_real_eip !66
  %572 = load i1, i1* %FPU_X_val, !mcsema_real_eip !66
  store i1 %572, i1* %FPU_X, align 1, !mcsema_real_eip !66
  %573 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !66
  store i2 %573, i2* %FPU_RC, align 1, !mcsema_real_eip !66
  %574 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !66
  store i2 %574, i2* %FPU_PC, align 1, !mcsema_real_eip !66
  %575 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !66
  store i1 %575, i1* %FPU_PM, align 1, !mcsema_real_eip !66
  %576 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !66
  store i1 %576, i1* %FPU_UM, align 1, !mcsema_real_eip !66
  %577 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !66
  store i1 %577, i1* %FPU_OM, align 1, !mcsema_real_eip !66
  %578 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !66
  store i1 %578, i1* %FPU_ZM, align 1, !mcsema_real_eip !66
  %579 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !66
  store i1 %579, i1* %FPU_DM, align 1, !mcsema_real_eip !66
  %580 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !66
  store i1 %580, i1* %FPU_IM, align 1, !mcsema_real_eip !66
  %581 = load i64, i64* %53, align 4
  store i64 %581, i64* %52, align 4
  %582 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !66
  store i16 %582, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !66
  %583 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !66
  store i64 %583, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !66
  %584 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !66
  store i16 %584, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !66
  %585 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !66
  store i64 %585, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !66
  %586 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !66
  store i11 %586, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !66
  %587 = load i128, i128* %XMM0_val, !mcsema_real_eip !66
  store i128 %587, i128* %XMM0, align 1, !mcsema_real_eip !66
  %588 = load i128, i128* %XMM1_val, !mcsema_real_eip !66
  store i128 %588, i128* %XMM1, align 1, !mcsema_real_eip !66
  %589 = load i128, i128* %XMM2_val, !mcsema_real_eip !66
  store i128 %589, i128* %XMM2, align 1, !mcsema_real_eip !66
  %590 = load i128, i128* %XMM3_val, !mcsema_real_eip !66
  store i128 %590, i128* %XMM3, align 1, !mcsema_real_eip !66
  %591 = load i128, i128* %XMM4_val, !mcsema_real_eip !66
  store i128 %591, i128* %XMM4, align 1, !mcsema_real_eip !66
  %592 = load i128, i128* %XMM5_val, !mcsema_real_eip !66
  store i128 %592, i128* %XMM5, align 1, !mcsema_real_eip !66
  %593 = load i128, i128* %XMM6_val, !mcsema_real_eip !66
  store i128 %593, i128* %XMM6, align 1, !mcsema_real_eip !66
  %594 = load i128, i128* %XMM7_val, !mcsema_real_eip !66
  store i128 %594, i128* %XMM7, align 1, !mcsema_real_eip !66
  %595 = load i128, i128* %XMM8_val, !mcsema_real_eip !66
  store i128 %595, i128* %XMM8, align 1, !mcsema_real_eip !66
  %596 = load i128, i128* %XMM9_val, !mcsema_real_eip !66
  store i128 %596, i128* %XMM9, align 1, !mcsema_real_eip !66
  %597 = load i128, i128* %XMM10_val, !mcsema_real_eip !66
  store i128 %597, i128* %XMM10, align 1, !mcsema_real_eip !66
  %598 = load i128, i128* %XMM11_val, !mcsema_real_eip !66
  store i128 %598, i128* %XMM11, align 1, !mcsema_real_eip !66
  %599 = load i128, i128* %XMM12_val, !mcsema_real_eip !66
  store i128 %599, i128* %XMM12, align 1, !mcsema_real_eip !66
  %600 = load i128, i128* %XMM13_val, !mcsema_real_eip !66
  store i128 %600, i128* %XMM13, align 1, !mcsema_real_eip !66
  %601 = load i128, i128* %XMM14_val, !mcsema_real_eip !66
  store i128 %601, i128* %XMM14, align 1, !mcsema_real_eip !66
  %602 = load i128, i128* %XMM15_val, !mcsema_real_eip !66
  store i128 %602, i128* %XMM15, align 1, !mcsema_real_eip !66
  %603 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !66
  store i64 %603, i64* %STACK_BASE, align 1, !mcsema_real_eip !66
  %604 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !66
  store i64 %604, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !66
  ret void, !mcsema_real_eip !66
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !67
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !67
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !67
  %XMM15_val = alloca i128, !mcsema_real_eip !67
  %XMM14_val = alloca i128, !mcsema_real_eip !67
  %XMM13_val = alloca i128, !mcsema_real_eip !67
  %XMM12_val = alloca i128, !mcsema_real_eip !67
  %XMM11_val = alloca i128, !mcsema_real_eip !67
  %XMM10_val = alloca i128, !mcsema_real_eip !67
  %XMM9_val = alloca i128, !mcsema_real_eip !67
  %XMM8_val = alloca i128, !mcsema_real_eip !67
  %XMM7_val = alloca i128, !mcsema_real_eip !67
  %XMM6_val = alloca i128, !mcsema_real_eip !67
  %XMM5_val = alloca i128, !mcsema_real_eip !67
  %XMM4_val = alloca i128, !mcsema_real_eip !67
  %XMM3_val = alloca i128, !mcsema_real_eip !67
  %XMM2_val = alloca i128, !mcsema_real_eip !67
  %XMM1_val = alloca i128, !mcsema_real_eip !67
  %XMM0_val = alloca i128, !mcsema_real_eip !67
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !67
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !67
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !67
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !67
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !67
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !67
  %FPU_IM_val = alloca i1, !mcsema_real_eip !67
  %FPU_DM_val = alloca i1, !mcsema_real_eip !67
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !67
  %FPU_OM_val = alloca i1, !mcsema_real_eip !67
  %FPU_UM_val = alloca i1, !mcsema_real_eip !67
  %FPU_PM_val = alloca i1, !mcsema_real_eip !67
  %FPU_PC_val = alloca i2, !mcsema_real_eip !67
  %FPU_RC_val = alloca i2, !mcsema_real_eip !67
  %FPU_X_val = alloca i1, !mcsema_real_eip !67
  %FPU_IE_val = alloca i1, !mcsema_real_eip !67
  %FPU_DE_val = alloca i1, !mcsema_real_eip !67
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !67
  %FPU_OE_val = alloca i1, !mcsema_real_eip !67
  %FPU_UE_val = alloca i1, !mcsema_real_eip !67
  %FPU_PE_val = alloca i1, !mcsema_real_eip !67
  %FPU_SF_val = alloca i1, !mcsema_real_eip !67
  %FPU_ES_val = alloca i1, !mcsema_real_eip !67
  %FPU_C0_val = alloca i1, !mcsema_real_eip !67
  %FPU_C1_val = alloca i1, !mcsema_real_eip !67
  %FPU_C2_val = alloca i1, !mcsema_real_eip !67
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !67
  %FPU_C3_val = alloca i1, !mcsema_real_eip !67
  %FPU_B_val = alloca i1, !mcsema_real_eip !67
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !67
  %DF_val = alloca i1, !mcsema_real_eip !67
  %OF_val = alloca i1, !mcsema_real_eip !67
  %SF_val = alloca i1, !mcsema_real_eip !67
  %CF_val = alloca i1, !mcsema_real_eip !67
  %AF_val = alloca i1, !mcsema_real_eip !67
  %PF_val = alloca i1, !mcsema_real_eip !67
  %ZF_val = alloca i1, !mcsema_real_eip !67
  %RIP_val = alloca i64, !mcsema_real_eip !67
  %R14_val = alloca i64, !mcsema_real_eip !67
  %R13_val = alloca i64, !mcsema_real_eip !67
  %R12_val = alloca i64, !mcsema_real_eip !67
  %R11_val = alloca i64, !mcsema_real_eip !67
  %R10_val = alloca i64, !mcsema_real_eip !67
  %R9_val = alloca i64, !mcsema_real_eip !67
  %R8_val = alloca i64, !mcsema_real_eip !67
  %RSP_val = alloca i64, !mcsema_real_eip !67
  %RBP_val = alloca i64, !mcsema_real_eip !67
  %RDI_val = alloca i64, !mcsema_real_eip !67
  %RSI_val = alloca i64, !mcsema_real_eip !67
  %RDX_val = alloca i64, !mcsema_real_eip !67
  %RCX_val = alloca i64, !mcsema_real_eip !67
  %RBX_val = alloca i64, !mcsema_real_eip !67
  %RAX_val = alloca i64, !mcsema_real_eip !67
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !67
  %1 = load i64, i64* %RAX, !mcsema_real_eip !67
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !67
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !67
  %2 = load i64, i64* %RBX, !mcsema_real_eip !67
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !67
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !67
  %3 = load i64, i64* %RCX, !mcsema_real_eip !67
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !67
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !67
  %4 = load i64, i64* %RDX, !mcsema_real_eip !67
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !67
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !67
  %5 = load i64, i64* %RSI, !mcsema_real_eip !67
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !67
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !67
  %6 = load i64, i64* %RDI, !mcsema_real_eip !67
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !67
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !67
  %7 = load i64, i64* %RSP, !mcsema_real_eip !67
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !67
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !67
  %8 = load i64, i64* %RBP, !mcsema_real_eip !67
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !67
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !67
  %9 = load i64, i64* %R8, !mcsema_real_eip !67
  store i64 %9, i64* %R8_val, !mcsema_real_eip !67
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !67
  %10 = load i64, i64* %R9, !mcsema_real_eip !67
  store i64 %10, i64* %R9_val, !mcsema_real_eip !67
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !67
  %11 = load i64, i64* %R10, !mcsema_real_eip !67
  store i64 %11, i64* %R10_val, !mcsema_real_eip !67
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !67
  %12 = load i64, i64* %R11, !mcsema_real_eip !67
  store i64 %12, i64* %R11_val, !mcsema_real_eip !67
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !67
  %13 = load i64, i64* %R12, !mcsema_real_eip !67
  store i64 %13, i64* %R12_val, !mcsema_real_eip !67
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !67
  %14 = load i64, i64* %R13, !mcsema_real_eip !67
  store i64 %14, i64* %R13_val, !mcsema_real_eip !67
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !67
  %15 = load i64, i64* %R14, !mcsema_real_eip !67
  store i64 %15, i64* %R14_val, !mcsema_real_eip !67
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !67
  %16 = load i64, i64* %R15, !mcsema_real_eip !67
  store i64 %16, i64* %R15_val, !mcsema_real_eip !67
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !67
  %17 = load i64, i64* %RIP, !mcsema_real_eip !67
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !67
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !67
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !67
  store i1 %18, i1* %CF_val, !mcsema_real_eip !67
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !67
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !67
  store i1 %19, i1* %PF_val, !mcsema_real_eip !67
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !67
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !67
  store i1 %20, i1* %AF_val, !mcsema_real_eip !67
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !67
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !67
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !67
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !67
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !67
  store i1 %22, i1* %SF_val, !mcsema_real_eip !67
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !67
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !67
  store i1 %23, i1* %OF_val, !mcsema_real_eip !67
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !67
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !67
  store i1 %24, i1* %DF_val, !mcsema_real_eip !67
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !67
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !67
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !67
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !67
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !67
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !67
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !67
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !67
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !67
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !67
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !67
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !67
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !67
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !67
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !67
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !67
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !67
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !67
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !67
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !67
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !67
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !67
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !67
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !67
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !67
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !67
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !67
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !67
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !67
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !67
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !67
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !67
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !67
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !67
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !67
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !67
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !67
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !67
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !67
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !67
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !67
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !67
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !67
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !67
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !67
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !67
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !67
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !67
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !67
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !67
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !67
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !67
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !67
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !67
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !67
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !67
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !67
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !67
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !67
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !67
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !67
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !67
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !67
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !67
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !67
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !67
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !67
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !67
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !67
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !67
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !67
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !67
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !67
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !67
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !67
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !67
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !67
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !67
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !67
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !67
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !67
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !67
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !67
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !67
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !67
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !67
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !67
  %59 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !67
  store i11 %59, i11* %FPU_FOPCODE_val, !mcsema_real_eip !67
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !67
  %60 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !67
  store i128 %60, i128* %XMM0_val, !mcsema_real_eip !67
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !67
  %61 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !67
  store i128 %61, i128* %XMM1_val, !mcsema_real_eip !67
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !67
  %62 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !67
  store i128 %62, i128* %XMM2_val, !mcsema_real_eip !67
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !67
  %63 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !67
  store i128 %63, i128* %XMM3_val, !mcsema_real_eip !67
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !67
  %64 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !67
  store i128 %64, i128* %XMM4_val, !mcsema_real_eip !67
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !67
  %65 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !67
  store i128 %65, i128* %XMM5_val, !mcsema_real_eip !67
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !67
  %66 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !67
  store i128 %66, i128* %XMM6_val, !mcsema_real_eip !67
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !67
  %67 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !67
  store i128 %67, i128* %XMM7_val, !mcsema_real_eip !67
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !67
  %68 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !67
  store i128 %68, i128* %XMM8_val, !mcsema_real_eip !67
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !67
  %69 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !67
  store i128 %69, i128* %XMM9_val, !mcsema_real_eip !67
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !67
  %70 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !67
  store i128 %70, i128* %XMM10_val, !mcsema_real_eip !67
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !67
  %71 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !67
  store i128 %71, i128* %XMM11_val, !mcsema_real_eip !67
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !67
  %72 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !67
  store i128 %72, i128* %XMM12_val, !mcsema_real_eip !67
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !67
  %73 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !67
  store i128 %73, i128* %XMM13_val, !mcsema_real_eip !67
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !67
  %74 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !67
  store i128 %74, i128* %XMM14_val, !mcsema_real_eip !67
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !67
  %75 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !67
  store i128 %75, i128* %XMM15_val, !mcsema_real_eip !67
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !67
  %76 = load i64, i64* %STACK_BASE, !mcsema_real_eip !67
  store i64 %76, i64* %STACK_BASE_val, !mcsema_real_eip !67
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !67
  %77 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !67
  store i64 %77, i64* %STACK_LIMIT_val, !mcsema_real_eip !67
  %78 = load i64, i64* %RBP_val, !mcsema_real_eip !67
  %79 = load i64, i64* %RSP_val, !mcsema_real_eip !67
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !67
  store i64 %78, i64* %81, !mcsema_real_eip !67
  store i64 %80, i64* %RBP_val, !mcsema_real_eip !68
  %82 = load i64, i64* %RBX_val, !mcsema_real_eip !69
  %83 = add i64 %79, -16
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !69
  store i64 %82, i64* %84, !mcsema_real_eip !69
  store i64 %83, i64* %RSP_val, !mcsema_real_eip !69
  %85 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %86 = add i64 %85, 40, !mcsema_real_eip !70
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !70
  %88 = load i64, i64* %87, !mcsema_real_eip !70
  store i64 %88, i64* %RAX_val, !mcsema_real_eip !70
  %89 = add i64 %85, 32, !mcsema_real_eip !71
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !71
  %91 = load i64, i64* %90, !mcsema_real_eip !71
  store i64 %91, i64* %R10_val, !mcsema_real_eip !71
  %92 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %93 = add i64 %92, 24, !mcsema_real_eip !72
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !72
  %95 = load i64, i64* %94, !mcsema_real_eip !72
  store i64 %95, i64* %R11_val, !mcsema_real_eip !72
  %96 = add i64 %92, 16, !mcsema_real_eip !73
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !73
  %98 = bitcast i64* %97 to i32*
  %99 = load i32, i32* %98, !mcsema_real_eip !73
  %100 = zext i32 %99 to i64, !mcsema_real_eip !73
  store i64 %100, i64* %RBX_val, !mcsema_real_eip !73
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %102 = add i64 %101, -12, !mcsema_real_eip !74
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !74
  %104 = load i64, i64* %RDI_val, !mcsema_real_eip !74
  %105 = trunc i64 %104 to i32, !mcsema_real_eip !74
  %106 = bitcast i64* %103 to i32*
  store i32 %105, i32* %106, !mcsema_real_eip !74
  %107 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %108 = add i64 %107, -24, !mcsema_real_eip !75
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !75
  %110 = load i64, i64* %RSI_val, !mcsema_real_eip !75
  store i64 %110, i64* %109, !mcsema_real_eip !75
  %111 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %112 = add i64 %111, -32, !mcsema_real_eip !76
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !76
  %114 = load i64, i64* %RDX_val, !mcsema_real_eip !76
  store i64 %114, i64* %113, !mcsema_real_eip !76
  %115 = load i64, i64* %RBP_val, !mcsema_real_eip !77
  %116 = add i64 %115, -40, !mcsema_real_eip !77
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !77
  %118 = load i64, i64* %RCX_val, !mcsema_real_eip !77
  store i64 %118, i64* %117, !mcsema_real_eip !77
  %119 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %120 = add i64 %119, -44, !mcsema_real_eip !78
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !78
  %122 = load i64, i64* %R8_val, !mcsema_real_eip !78
  %123 = trunc i64 %122 to i32, !mcsema_real_eip !78
  %124 = bitcast i64* %121 to i32*
  store i32 %123, i32* %124, !mcsema_real_eip !78
  %125 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %126 = add i64 %125, -48, !mcsema_real_eip !79
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !79
  %128 = load i64, i64* %R9_val, !mcsema_real_eip !79
  %129 = trunc i64 %128 to i32, !mcsema_real_eip !79
  %130 = bitcast i64* %127 to i32*
  store i32 %129, i32* %130, !mcsema_real_eip !79
  %131 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %132 = add i64 %131, -52, !mcsema_real_eip !80
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !80
  %134 = load i64, i64* %RBX_val, !mcsema_real_eip !80
  %135 = trunc i64 %134 to i32, !mcsema_real_eip !80
  %136 = bitcast i64* %133 to i32*
  store i32 %135, i32* %136, !mcsema_real_eip !80
  %137 = load i64, i64* %RBP_val, !mcsema_real_eip !81
  %138 = add i64 %137, -64, !mcsema_real_eip !81
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !81
  %140 = load i64, i64* %R11_val, !mcsema_real_eip !81
  store i64 %140, i64* %139, !mcsema_real_eip !81
  %141 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %142 = add i64 %141, -72, !mcsema_real_eip !82
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !82
  %144 = load i64, i64* %R10_val, !mcsema_real_eip !82
  store i64 %144, i64* %143, !mcsema_real_eip !82
  %145 = load i64, i64* %RBP_val, !mcsema_real_eip !83
  %146 = add i64 %145, -80, !mcsema_real_eip !83
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !83
  %148 = load i64, i64* %RAX_val, !mcsema_real_eip !83
  store i64 %148, i64* %147, !mcsema_real_eip !83
  %149 = load i64, i64* %RBP_val, !mcsema_real_eip !84
  %150 = add i64 %149, -84, !mcsema_real_eip !84
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !84
  %152 = bitcast i64* %151 to i32*
  store i32 0, i32* %152, !mcsema_real_eip !84
  %153 = load i64, i64* %RBP_val, !mcsema_real_eip !85
  %154 = add i64 %153, -12, !mcsema_real_eip !85
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !85
  %156 = bitcast i64* %155 to i32*
  %157 = load i32, i32* %156, !mcsema_real_eip !85
  %158 = zext i32 %157 to i64, !mcsema_real_eip !85
  store i64 %158, i64* %RDI_val, !mcsema_real_eip !85
  %159 = load i64, i64* %RBP_val, !mcsema_real_eip !86
  %160 = add i64 %159, -84, !mcsema_real_eip !86
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !86
  %162 = bitcast i64* %161 to i32*
  %163 = load i32, i32* %162, !mcsema_real_eip !86
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %157, i32 %163)
  %164 = extractvalue { i32, i1 } %uadd, 0
  %165 = xor i32 %164, %163, !mcsema_real_eip !87
  %166 = xor i32 %165, %157, !mcsema_real_eip !87
  %167 = and i32 %166, 16, !mcsema_real_eip !87
  %168 = icmp ne i32 %167, 0, !mcsema_real_eip !87
  store i1 %168, i1* %AF_val, !mcsema_real_eip !87
  %169 = icmp slt i32 %164, 0
  store i1 %169, i1* %SF_val, !mcsema_real_eip !87
  %170 = icmp eq i32 %164, 0, !mcsema_real_eip !87
  store i1 %170, i1* %ZF_val, !mcsema_real_eip !87
  %171 = xor i32 %163, -2147483648, !mcsema_real_eip !87
  %172 = xor i32 %171, %157, !mcsema_real_eip !87
  %173 = and i32 %165, %172, !mcsema_real_eip !87
  %174 = icmp slt i32 %173, 0
  store i1 %174, i1* %OF_val, !mcsema_real_eip !87
  %175 = trunc i32 %164 to i8, !mcsema_real_eip !87
  %176 = tail call i8 @llvm.ctpop.i8(i8 %175), !mcsema_real_eip !87
  %177 = and i8 %176, 1
  %178 = icmp eq i8 %177, 0
  store i1 %178, i1* %PF_val, !mcsema_real_eip !87
  %179 = extractvalue { i32, i1 } %uadd, 1
  store i1 %179, i1* %CF_val, !mcsema_real_eip !87
  %180 = zext i32 %164 to i64, !mcsema_real_eip !87
  store i64 %180, i64* %R8_val, !mcsema_real_eip !87
  %181 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  %182 = add i64 %181, -84, !mcsema_real_eip !88
  %183 = inttoptr i64 %182 to i64*, !mcsema_real_eip !88
  %184 = bitcast i64* %183 to i32*
  store i32 %164, i32* %184, !mcsema_real_eip !88
  %185 = load i64, i64* %RBP_val, !mcsema_real_eip !89
  %186 = add i64 %185, -88, !mcsema_real_eip !89
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !89
  %188 = bitcast i64* %187 to i32*
  store i32 0, i32* %188, !mcsema_real_eip !89
  br label %block_0x56, !mcsema_real_eip !90

block_0x56:                                       ; preds = %block_0x62, %entry
  %189 = load i64, i64* %RBP_val, !mcsema_real_eip !90
  %190 = add i64 %189, -88, !mcsema_real_eip !90
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !90
  %192 = bitcast i64* %191 to i32*
  %193 = load i32, i32* %192, !mcsema_real_eip !90
  %194 = zext i32 %193 to i64, !mcsema_real_eip !90
  store i64 %194, i64* %RAX_val, !mcsema_real_eip !90
  %195 = load i64, i64* %RBP_val, !mcsema_real_eip !91
  %196 = add i64 %195, -44, !mcsema_real_eip !91
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !91
  %198 = bitcast i64* %197 to i32*
  %199 = load i32, i32* %198, !mcsema_real_eip !91
  %200 = sub i32 %193, %199, !mcsema_real_eip !91
  %201 = xor i32 %200, %193, !mcsema_real_eip !91
  %202 = xor i32 %201, %199, !mcsema_real_eip !91
  %203 = and i32 %202, 16, !mcsema_real_eip !91
  %204 = icmp ne i32 %203, 0, !mcsema_real_eip !91
  store i1 %204, i1* %AF_val, !mcsema_real_eip !91
  %205 = trunc i32 %200 to i8, !mcsema_real_eip !91
  %206 = tail call i8 @llvm.ctpop.i8(i8 %205), !mcsema_real_eip !91
  %207 = and i8 %206, 1
  %208 = icmp eq i8 %207, 0
  store i1 %208, i1* %PF_val, !mcsema_real_eip !91
  %209 = icmp eq i32 %193, %199
  store i1 %209, i1* %ZF_val, !mcsema_real_eip !91
  %210 = icmp slt i32 %200, 0
  store i1 %210, i1* %SF_val, !mcsema_real_eip !91
  %211 = icmp ult i32 %193, %199, !mcsema_real_eip !91
  store i1 %211, i1* %CF_val, !mcsema_real_eip !91
  %212 = xor i32 %199, %193, !mcsema_real_eip !91
  %213 = and i32 %201, %212, !mcsema_real_eip !91
  %214 = icmp slt i32 %213, 0
  store i1 %214, i1* %OF_val, !mcsema_real_eip !91
  %215 = load i1, i1* %SF_val, !mcsema_real_eip !92
  %tmp = xor i1 %215, %214
  %216 = load i64, i64* %RBP_val, !mcsema_real_eip !93
  br i1 %tmp, label %block_0x62, label %block_0x85, !mcsema_real_eip !92

block_0x62:                                       ; preds = %block_0x56
  %217 = add i64 %216, -88, !mcsema_real_eip !94
  %218 = inttoptr i64 %217 to i64*, !mcsema_real_eip !94
  %219 = bitcast i64* %218 to i32*
  %220 = load i32, i32* %219, !mcsema_real_eip !94
  %221 = sext i32 %220 to i64, !mcsema_real_eip !94
  store i64 %221, i64* %RAX_val, !mcsema_real_eip !94
  %222 = load i64, i64* %RBP_val, !mcsema_real_eip !95
  %223 = add i64 %222, -24, !mcsema_real_eip !95
  %224 = inttoptr i64 %223 to i64*, !mcsema_real_eip !95
  %225 = load i64, i64* %224, !mcsema_real_eip !95
  store i64 %225, i64* %RCX_val, !mcsema_real_eip !95
  %226 = shl nsw i64 %221, 2
  %227 = add i64 %225, %226, !mcsema_real_eip !96
  %228 = inttoptr i64 %227 to i64*, !mcsema_real_eip !96
  %229 = bitcast i64* %228 to i32*
  %230 = load i32, i32* %229, !mcsema_real_eip !96
  %231 = zext i32 %230 to i64, !mcsema_real_eip !96
  store i64 %231, i64* %RDX_val, !mcsema_real_eip !96
  %232 = load i64, i64* %RBP_val, !mcsema_real_eip !97
  %233 = add i64 %232, -84, !mcsema_real_eip !97
  %234 = inttoptr i64 %233 to i64*, !mcsema_real_eip !97
  %235 = bitcast i64* %234 to i32*
  %236 = load i32, i32* %235, !mcsema_real_eip !97
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %230, i32 %236)
  %237 = extractvalue { i32, i1 } %uadd71, 0
  %238 = xor i32 %237, %236, !mcsema_real_eip !98
  %239 = xor i32 %238, %230, !mcsema_real_eip !98
  %240 = and i32 %239, 16, !mcsema_real_eip !98
  %241 = icmp ne i32 %240, 0, !mcsema_real_eip !98
  store i1 %241, i1* %AF_val, !mcsema_real_eip !98
  %242 = icmp slt i32 %237, 0
  store i1 %242, i1* %SF_val, !mcsema_real_eip !98
  %243 = icmp eq i32 %237, 0, !mcsema_real_eip !98
  store i1 %243, i1* %ZF_val, !mcsema_real_eip !98
  %244 = xor i32 %236, -2147483648, !mcsema_real_eip !98
  %245 = xor i32 %244, %230, !mcsema_real_eip !98
  %246 = and i32 %238, %245, !mcsema_real_eip !98
  %247 = icmp slt i32 %246, 0
  store i1 %247, i1* %OF_val, !mcsema_real_eip !98
  %248 = trunc i32 %237 to i8, !mcsema_real_eip !98
  %249 = tail call i8 @llvm.ctpop.i8(i8 %248), !mcsema_real_eip !98
  %250 = and i8 %249, 1
  %251 = icmp eq i8 %250, 0
  store i1 %251, i1* %PF_val, !mcsema_real_eip !98
  %252 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %252, i1* %CF_val, !mcsema_real_eip !98
  %253 = zext i32 %237 to i64, !mcsema_real_eip !98
  store i64 %253, i64* %RSI_val, !mcsema_real_eip !98
  %254 = load i64, i64* %RBP_val, !mcsema_real_eip !99
  %255 = add i64 %254, -84, !mcsema_real_eip !99
  %256 = inttoptr i64 %255 to i64*, !mcsema_real_eip !99
  %257 = bitcast i64* %256 to i32*
  store i32 %237, i32* %257, !mcsema_real_eip !99
  %258 = load i64, i64* %RBP_val, !mcsema_real_eip !100
  %259 = add i64 %258, -88, !mcsema_real_eip !100
  %260 = inttoptr i64 %259 to i64*, !mcsema_real_eip !100
  %261 = bitcast i64* %260 to i32*
  %262 = load i32, i32* %261, !mcsema_real_eip !100
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %262, i32 1)
  %263 = extractvalue { i32, i1 } %uadd72, 0
  %264 = xor i32 %263, %262, !mcsema_real_eip !101
  %265 = and i32 %264, 16, !mcsema_real_eip !101
  %266 = icmp ne i32 %265, 0, !mcsema_real_eip !101
  store i1 %266, i1* %AF_val, !mcsema_real_eip !101
  %267 = icmp slt i32 %263, 0
  store i1 %267, i1* %SF_val, !mcsema_real_eip !101
  %268 = icmp eq i32 %263, 0, !mcsema_real_eip !101
  store i1 %268, i1* %ZF_val, !mcsema_real_eip !101
  %269 = xor i32 %262, -2147483648, !mcsema_real_eip !101
  %270 = and i32 %264, %269, !mcsema_real_eip !101
  %271 = icmp slt i32 %270, 0
  store i1 %271, i1* %OF_val, !mcsema_real_eip !101
  %272 = trunc i32 %263 to i8, !mcsema_real_eip !101
  %273 = tail call i8 @llvm.ctpop.i8(i8 %272), !mcsema_real_eip !101
  %274 = and i8 %273, 1
  %275 = icmp eq i8 %274, 0
  store i1 %275, i1* %PF_val, !mcsema_real_eip !101
  %276 = extractvalue { i32, i1 } %uadd72, 1
  store i1 %276, i1* %CF_val, !mcsema_real_eip !101
  %277 = zext i32 %263 to i64, !mcsema_real_eip !101
  store i64 %277, i64* %RAX_val, !mcsema_real_eip !101
  %278 = load i64, i64* %RBP_val, !mcsema_real_eip !102
  %279 = add i64 %278, -88, !mcsema_real_eip !102
  %280 = inttoptr i64 %279 to i64*, !mcsema_real_eip !102
  %281 = bitcast i64* %280 to i32*
  store i32 %263, i32* %281, !mcsema_real_eip !102
  br label %block_0x56, !mcsema_real_eip !103

block_0x85:                                       ; preds = %block_0x56
  %.lcssa96 = phi i64 [ %216, %block_0x56 ]
  %282 = add i64 %.lcssa96, -32, !mcsema_real_eip !93
  %283 = inttoptr i64 %282 to i64*, !mcsema_real_eip !93
  %284 = load i64, i64* %283, !mcsema_real_eip !93
  store i64 %284, i64* %RAX_val, !mcsema_real_eip !93
  %285 = inttoptr i64 %284 to i64*, !mcsema_real_eip !104
  %286 = bitcast i64* %285 to i32*
  %287 = load i32, i32* %286, !mcsema_real_eip !104
  %288 = zext i32 %287 to i64, !mcsema_real_eip !104
  store i64 %288, i64* %RCX_val, !mcsema_real_eip !104
  %289 = load i64, i64* %RBP_val, !mcsema_real_eip !105
  %290 = add i64 %289, -84, !mcsema_real_eip !105
  %291 = inttoptr i64 %290 to i64*, !mcsema_real_eip !105
  %292 = bitcast i64* %291 to i32*
  %293 = load i32, i32* %292, !mcsema_real_eip !105
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %287, i32 %293)
  %294 = extractvalue { i32, i1 } %uadd73, 0
  %295 = xor i32 %294, %293, !mcsema_real_eip !106
  %296 = xor i32 %295, %287, !mcsema_real_eip !106
  %297 = and i32 %296, 16, !mcsema_real_eip !106
  %298 = icmp ne i32 %297, 0, !mcsema_real_eip !106
  store i1 %298, i1* %AF_val, !mcsema_real_eip !106
  %299 = icmp slt i32 %294, 0
  store i1 %299, i1* %SF_val, !mcsema_real_eip !106
  %300 = icmp eq i32 %294, 0, !mcsema_real_eip !106
  store i1 %300, i1* %ZF_val, !mcsema_real_eip !106
  %301 = xor i32 %293, -2147483648, !mcsema_real_eip !106
  %302 = xor i32 %301, %287, !mcsema_real_eip !106
  %303 = and i32 %295, %302, !mcsema_real_eip !106
  %304 = icmp slt i32 %303, 0
  store i1 %304, i1* %OF_val, !mcsema_real_eip !106
  %305 = trunc i32 %294 to i8, !mcsema_real_eip !106
  %306 = tail call i8 @llvm.ctpop.i8(i8 %305), !mcsema_real_eip !106
  %307 = and i8 %306, 1
  %308 = icmp eq i8 %307, 0
  store i1 %308, i1* %PF_val, !mcsema_real_eip !106
  %309 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %309, i1* %CF_val, !mcsema_real_eip !106
  %310 = zext i32 %294 to i64, !mcsema_real_eip !106
  store i64 %310, i64* %RDX_val, !mcsema_real_eip !106
  %311 = load i64, i64* %RBP_val, !mcsema_real_eip !107
  %312 = add i64 %311, -84, !mcsema_real_eip !107
  %313 = inttoptr i64 %312 to i64*, !mcsema_real_eip !107
  %314 = bitcast i64* %313 to i32*
  store i32 %294, i32* %314, !mcsema_real_eip !107
  %315 = load i64, i64* %RBP_val, !mcsema_real_eip !108
  %316 = add i64 %315, -92, !mcsema_real_eip !108
  %317 = inttoptr i64 %316 to i64*, !mcsema_real_eip !108
  %318 = bitcast i64* %317 to i32*
  store i32 0, i32* %318, !mcsema_real_eip !108
  br label %block_0x9a, !mcsema_real_eip !94

block_0x9a:                                       ; preds = %block_0xa6, %block_0x85
  %319 = load i64, i64* %RBP_val, !mcsema_real_eip !109
  %320 = add i64 %319, -92, !mcsema_real_eip !109
  %321 = inttoptr i64 %320 to i64*, !mcsema_real_eip !109
  %322 = bitcast i64* %321 to i32*
  %323 = load i32, i32* %322, !mcsema_real_eip !109
  %324 = zext i32 %323 to i64, !mcsema_real_eip !109
  store i64 %324, i64* %RAX_val, !mcsema_real_eip !109
  %325 = load i64, i64* %RBP_val, !mcsema_real_eip !110
  %326 = add i64 %325, -48, !mcsema_real_eip !110
  %327 = inttoptr i64 %326 to i64*, !mcsema_real_eip !110
  %328 = bitcast i64* %327 to i32*
  %329 = load i32, i32* %328, !mcsema_real_eip !110
  %330 = sub i32 %323, %329, !mcsema_real_eip !110
  %331 = xor i32 %330, %323, !mcsema_real_eip !110
  %332 = xor i32 %331, %329, !mcsema_real_eip !110
  %333 = and i32 %332, 16, !mcsema_real_eip !110
  %334 = icmp ne i32 %333, 0, !mcsema_real_eip !110
  store i1 %334, i1* %AF_val, !mcsema_real_eip !110
  %335 = trunc i32 %330 to i8, !mcsema_real_eip !110
  %336 = tail call i8 @llvm.ctpop.i8(i8 %335), !mcsema_real_eip !110
  %337 = and i8 %336, 1
  %338 = icmp eq i8 %337, 0
  store i1 %338, i1* %PF_val, !mcsema_real_eip !110
  %339 = icmp eq i32 %323, %329
  store i1 %339, i1* %ZF_val, !mcsema_real_eip !110
  %340 = icmp slt i32 %330, 0
  store i1 %340, i1* %SF_val, !mcsema_real_eip !110
  %341 = icmp ult i32 %323, %329, !mcsema_real_eip !110
  store i1 %341, i1* %CF_val, !mcsema_real_eip !110
  %342 = xor i32 %329, %323, !mcsema_real_eip !110
  %343 = and i32 %331, %342, !mcsema_real_eip !110
  %344 = icmp slt i32 %343, 0
  store i1 %344, i1* %OF_val, !mcsema_real_eip !110
  %345 = load i1, i1* %SF_val, !mcsema_real_eip !111
  %tmp74 = xor i1 %345, %344
  %346 = load i64, i64* %RBP_val, !mcsema_real_eip !112
  br i1 %tmp74, label %block_0xa6, label %block_0xc9, !mcsema_real_eip !111

block_0xa6:                                       ; preds = %block_0x9a
  %347 = add i64 %346, -92, !mcsema_real_eip !113
  %348 = inttoptr i64 %347 to i64*, !mcsema_real_eip !113
  %349 = bitcast i64* %348 to i32*
  %350 = load i32, i32* %349, !mcsema_real_eip !113
  %351 = sext i32 %350 to i64, !mcsema_real_eip !113
  store i64 %351, i64* %RAX_val, !mcsema_real_eip !113
  %352 = load i64, i64* %RBP_val, !mcsema_real_eip !114
  %353 = add i64 %352, -40, !mcsema_real_eip !114
  %354 = inttoptr i64 %353 to i64*, !mcsema_real_eip !114
  %355 = load i64, i64* %354, !mcsema_real_eip !114
  store i64 %355, i64* %RCX_val, !mcsema_real_eip !114
  %356 = shl nsw i64 %351, 2
  %357 = add i64 %355, %356, !mcsema_real_eip !115
  %358 = inttoptr i64 %357 to i64*, !mcsema_real_eip !115
  %359 = bitcast i64* %358 to i32*
  %360 = load i32, i32* %359, !mcsema_real_eip !115
  %361 = zext i32 %360 to i64, !mcsema_real_eip !115
  store i64 %361, i64* %RDX_val, !mcsema_real_eip !115
  %362 = load i64, i64* %RBP_val, !mcsema_real_eip !116
  %363 = add i64 %362, -84, !mcsema_real_eip !116
  %364 = inttoptr i64 %363 to i64*, !mcsema_real_eip !116
  %365 = bitcast i64* %364 to i32*
  %366 = load i32, i32* %365, !mcsema_real_eip !116
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %360, i32 %366)
  %367 = extractvalue { i32, i1 } %uadd75, 0
  %368 = xor i32 %367, %366, !mcsema_real_eip !117
  %369 = xor i32 %368, %360, !mcsema_real_eip !117
  %370 = and i32 %369, 16, !mcsema_real_eip !117
  %371 = icmp ne i32 %370, 0, !mcsema_real_eip !117
  store i1 %371, i1* %AF_val, !mcsema_real_eip !117
  %372 = icmp slt i32 %367, 0
  store i1 %372, i1* %SF_val, !mcsema_real_eip !117
  %373 = icmp eq i32 %367, 0, !mcsema_real_eip !117
  store i1 %373, i1* %ZF_val, !mcsema_real_eip !117
  %374 = xor i32 %366, -2147483648, !mcsema_real_eip !117
  %375 = xor i32 %374, %360, !mcsema_real_eip !117
  %376 = and i32 %368, %375, !mcsema_real_eip !117
  %377 = icmp slt i32 %376, 0
  store i1 %377, i1* %OF_val, !mcsema_real_eip !117
  %378 = trunc i32 %367 to i8, !mcsema_real_eip !117
  %379 = tail call i8 @llvm.ctpop.i8(i8 %378), !mcsema_real_eip !117
  %380 = and i8 %379, 1
  %381 = icmp eq i8 %380, 0
  store i1 %381, i1* %PF_val, !mcsema_real_eip !117
  %382 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %382, i1* %CF_val, !mcsema_real_eip !117
  %383 = zext i32 %367 to i64, !mcsema_real_eip !117
  store i64 %383, i64* %RSI_val, !mcsema_real_eip !117
  %384 = load i64, i64* %RBP_val, !mcsema_real_eip !118
  %385 = add i64 %384, -84, !mcsema_real_eip !118
  %386 = inttoptr i64 %385 to i64*, !mcsema_real_eip !118
  %387 = bitcast i64* %386 to i32*
  store i32 %367, i32* %387, !mcsema_real_eip !118
  %388 = load i64, i64* %RBP_val, !mcsema_real_eip !119
  %389 = add i64 %388, -92, !mcsema_real_eip !119
  %390 = inttoptr i64 %389 to i64*, !mcsema_real_eip !119
  %391 = bitcast i64* %390 to i32*
  %392 = load i32, i32* %391, !mcsema_real_eip !119
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %392, i32 1)
  %393 = extractvalue { i32, i1 } %uadd76, 0
  %394 = xor i32 %393, %392, !mcsema_real_eip !120
  %395 = and i32 %394, 16, !mcsema_real_eip !120
  %396 = icmp ne i32 %395, 0, !mcsema_real_eip !120
  store i1 %396, i1* %AF_val, !mcsema_real_eip !120
  %397 = icmp slt i32 %393, 0
  store i1 %397, i1* %SF_val, !mcsema_real_eip !120
  %398 = icmp eq i32 %393, 0, !mcsema_real_eip !120
  store i1 %398, i1* %ZF_val, !mcsema_real_eip !120
  %399 = xor i32 %392, -2147483648, !mcsema_real_eip !120
  %400 = and i32 %394, %399, !mcsema_real_eip !120
  %401 = icmp slt i32 %400, 0
  store i1 %401, i1* %OF_val, !mcsema_real_eip !120
  %402 = trunc i32 %393 to i8, !mcsema_real_eip !120
  %403 = tail call i8 @llvm.ctpop.i8(i8 %402), !mcsema_real_eip !120
  %404 = and i8 %403, 1
  %405 = icmp eq i8 %404, 0
  store i1 %405, i1* %PF_val, !mcsema_real_eip !120
  %406 = extractvalue { i32, i1 } %uadd76, 1
  store i1 %406, i1* %CF_val, !mcsema_real_eip !120
  %407 = zext i32 %393 to i64, !mcsema_real_eip !120
  store i64 %407, i64* %RAX_val, !mcsema_real_eip !120
  %408 = load i64, i64* %RBP_val, !mcsema_real_eip !121
  %409 = add i64 %408, -92, !mcsema_real_eip !121
  %410 = inttoptr i64 %409 to i64*, !mcsema_real_eip !121
  %411 = bitcast i64* %410 to i32*
  store i32 %393, i32* %411, !mcsema_real_eip !121
  br label %block_0x9a, !mcsema_real_eip !122

block_0xc9:                                       ; preds = %block_0x9a
  %.lcssa95 = phi i64 [ %346, %block_0x9a ]
  %412 = add i64 %.lcssa95, -52, !mcsema_real_eip !112
  %413 = inttoptr i64 %412 to i64*, !mcsema_real_eip !112
  %414 = bitcast i64* %413 to i32*
  %415 = load i32, i32* %414, !mcsema_real_eip !112
  %416 = zext i32 %415 to i64, !mcsema_real_eip !112
  store i64 %416, i64* %RAX_val, !mcsema_real_eip !112
  %417 = load i64, i64* %RBP_val, !mcsema_real_eip !123
  %418 = add i64 %417, -84, !mcsema_real_eip !123
  %419 = inttoptr i64 %418 to i64*, !mcsema_real_eip !123
  %420 = bitcast i64* %419 to i32*
  %421 = load i32, i32* %420, !mcsema_real_eip !123
  %uadd77 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %415, i32 %421)
  %422 = extractvalue { i32, i1 } %uadd77, 0
  %423 = xor i32 %422, %421, !mcsema_real_eip !124
  %424 = xor i32 %423, %415, !mcsema_real_eip !124
  %425 = and i32 %424, 16, !mcsema_real_eip !124
  %426 = icmp ne i32 %425, 0, !mcsema_real_eip !124
  store i1 %426, i1* %AF_val, !mcsema_real_eip !124
  %427 = icmp slt i32 %422, 0
  store i1 %427, i1* %SF_val, !mcsema_real_eip !124
  %428 = icmp eq i32 %422, 0, !mcsema_real_eip !124
  store i1 %428, i1* %ZF_val, !mcsema_real_eip !124
  %429 = xor i32 %421, -2147483648, !mcsema_real_eip !124
  %430 = xor i32 %429, %415, !mcsema_real_eip !124
  %431 = and i32 %423, %430, !mcsema_real_eip !124
  %432 = icmp slt i32 %431, 0
  store i1 %432, i1* %OF_val, !mcsema_real_eip !124
  %433 = trunc i32 %422 to i8, !mcsema_real_eip !124
  %434 = tail call i8 @llvm.ctpop.i8(i8 %433), !mcsema_real_eip !124
  %435 = and i8 %434, 1
  %436 = icmp eq i8 %435, 0
  store i1 %436, i1* %PF_val, !mcsema_real_eip !124
  %437 = extractvalue { i32, i1 } %uadd77, 1
  store i1 %437, i1* %CF_val, !mcsema_real_eip !124
  %438 = zext i32 %422 to i64, !mcsema_real_eip !124
  store i64 %438, i64* %RCX_val, !mcsema_real_eip !124
  %439 = load i64, i64* %RBP_val, !mcsema_real_eip !125
  %440 = add i64 %439, -84, !mcsema_real_eip !125
  %441 = inttoptr i64 %440 to i64*, !mcsema_real_eip !125
  %442 = bitcast i64* %441 to i32*
  store i32 %422, i32* %442, !mcsema_real_eip !125
  %443 = load i64, i64* %RBP_val, !mcsema_real_eip !126
  %444 = add i64 %443, -96, !mcsema_real_eip !126
  %445 = inttoptr i64 %444 to i64*, !mcsema_real_eip !126
  %446 = bitcast i64* %445 to i32*
  store i32 0, i32* %446, !mcsema_real_eip !126
  br label %block_0xdb, !mcsema_real_eip !113

block_0xdb:                                       ; preds = %block_0xe7, %block_0xc9
  %447 = load i64, i64* %RBP_val, !mcsema_real_eip !127
  %448 = add i64 %447, -96, !mcsema_real_eip !127
  %449 = inttoptr i64 %448 to i64*, !mcsema_real_eip !127
  %450 = bitcast i64* %449 to i32*
  %451 = load i32, i32* %450, !mcsema_real_eip !127
  %452 = zext i32 %451 to i64, !mcsema_real_eip !127
  store i64 %452, i64* %RAX_val, !mcsema_real_eip !127
  %453 = load i64, i64* %RBP_val, !mcsema_real_eip !128
  %454 = add i64 %453, -44, !mcsema_real_eip !128
  %455 = inttoptr i64 %454 to i64*, !mcsema_real_eip !128
  %456 = bitcast i64* %455 to i32*
  %457 = load i32, i32* %456, !mcsema_real_eip !128
  %458 = sub i32 %451, %457, !mcsema_real_eip !128
  %459 = xor i32 %458, %451, !mcsema_real_eip !128
  %460 = xor i32 %459, %457, !mcsema_real_eip !128
  %461 = and i32 %460, 16, !mcsema_real_eip !128
  %462 = icmp ne i32 %461, 0, !mcsema_real_eip !128
  store i1 %462, i1* %AF_val, !mcsema_real_eip !128
  %463 = trunc i32 %458 to i8, !mcsema_real_eip !128
  %464 = tail call i8 @llvm.ctpop.i8(i8 %463), !mcsema_real_eip !128
  %465 = and i8 %464, 1
  %466 = icmp eq i8 %465, 0
  store i1 %466, i1* %PF_val, !mcsema_real_eip !128
  %467 = icmp eq i32 %451, %457
  store i1 %467, i1* %ZF_val, !mcsema_real_eip !128
  %468 = icmp slt i32 %458, 0
  store i1 %468, i1* %SF_val, !mcsema_real_eip !128
  %469 = icmp ult i32 %451, %457, !mcsema_real_eip !128
  store i1 %469, i1* %CF_val, !mcsema_real_eip !128
  %470 = xor i32 %457, %451, !mcsema_real_eip !128
  %471 = and i32 %459, %470, !mcsema_real_eip !128
  %472 = icmp slt i32 %471, 0
  store i1 %472, i1* %OF_val, !mcsema_real_eip !128
  %473 = load i1, i1* %SF_val, !mcsema_real_eip !129
  %tmp78 = xor i1 %473, %472
  %474 = load i64, i64* %RBP_val, !mcsema_real_eip !130
  br i1 %tmp78, label %block_0xe7, label %block_0x10a, !mcsema_real_eip !129

block_0xe7:                                       ; preds = %block_0xdb
  %475 = add i64 %474, -96, !mcsema_real_eip !131
  %476 = inttoptr i64 %475 to i64*, !mcsema_real_eip !131
  %477 = bitcast i64* %476 to i32*
  %478 = load i32, i32* %477, !mcsema_real_eip !131
  %479 = sext i32 %478 to i64, !mcsema_real_eip !131
  store i64 %479, i64* %RAX_val, !mcsema_real_eip !131
  %480 = load i64, i64* %RBP_val, !mcsema_real_eip !132
  %481 = add i64 %480, -64, !mcsema_real_eip !132
  %482 = inttoptr i64 %481 to i64*, !mcsema_real_eip !132
  %483 = load i64, i64* %482, !mcsema_real_eip !132
  store i64 %483, i64* %RCX_val, !mcsema_real_eip !132
  %484 = shl nsw i64 %479, 2
  %485 = add i64 %483, %484, !mcsema_real_eip !133
  %486 = inttoptr i64 %485 to i64*, !mcsema_real_eip !133
  %487 = bitcast i64* %486 to i32*
  %488 = load i32, i32* %487, !mcsema_real_eip !133
  %489 = zext i32 %488 to i64, !mcsema_real_eip !133
  store i64 %489, i64* %RDX_val, !mcsema_real_eip !133
  %490 = load i64, i64* %RBP_val, !mcsema_real_eip !134
  %491 = add i64 %490, -84, !mcsema_real_eip !134
  %492 = inttoptr i64 %491 to i64*, !mcsema_real_eip !134
  %493 = bitcast i64* %492 to i32*
  %494 = load i32, i32* %493, !mcsema_real_eip !134
  %uadd79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %488, i32 %494)
  %495 = extractvalue { i32, i1 } %uadd79, 0
  %496 = xor i32 %495, %494, !mcsema_real_eip !135
  %497 = xor i32 %496, %488, !mcsema_real_eip !135
  %498 = and i32 %497, 16, !mcsema_real_eip !135
  %499 = icmp ne i32 %498, 0, !mcsema_real_eip !135
  store i1 %499, i1* %AF_val, !mcsema_real_eip !135
  %500 = icmp slt i32 %495, 0
  store i1 %500, i1* %SF_val, !mcsema_real_eip !135
  %501 = icmp eq i32 %495, 0, !mcsema_real_eip !135
  store i1 %501, i1* %ZF_val, !mcsema_real_eip !135
  %502 = xor i32 %494, -2147483648, !mcsema_real_eip !135
  %503 = xor i32 %502, %488, !mcsema_real_eip !135
  %504 = and i32 %496, %503, !mcsema_real_eip !135
  %505 = icmp slt i32 %504, 0
  store i1 %505, i1* %OF_val, !mcsema_real_eip !135
  %506 = trunc i32 %495 to i8, !mcsema_real_eip !135
  %507 = tail call i8 @llvm.ctpop.i8(i8 %506), !mcsema_real_eip !135
  %508 = and i8 %507, 1
  %509 = icmp eq i8 %508, 0
  store i1 %509, i1* %PF_val, !mcsema_real_eip !135
  %510 = extractvalue { i32, i1 } %uadd79, 1
  store i1 %510, i1* %CF_val, !mcsema_real_eip !135
  %511 = zext i32 %495 to i64, !mcsema_real_eip !135
  store i64 %511, i64* %RSI_val, !mcsema_real_eip !135
  %512 = load i64, i64* %RBP_val, !mcsema_real_eip !136
  %513 = add i64 %512, -84, !mcsema_real_eip !136
  %514 = inttoptr i64 %513 to i64*, !mcsema_real_eip !136
  %515 = bitcast i64* %514 to i32*
  store i32 %495, i32* %515, !mcsema_real_eip !136
  %516 = load i64, i64* %RBP_val, !mcsema_real_eip !137
  %517 = add i64 %516, -96, !mcsema_real_eip !137
  %518 = inttoptr i64 %517 to i64*, !mcsema_real_eip !137
  %519 = bitcast i64* %518 to i32*
  %520 = load i32, i32* %519, !mcsema_real_eip !137
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %520, i32 1)
  %521 = extractvalue { i32, i1 } %uadd80, 0
  %522 = xor i32 %521, %520, !mcsema_real_eip !138
  %523 = and i32 %522, 16, !mcsema_real_eip !138
  %524 = icmp ne i32 %523, 0, !mcsema_real_eip !138
  store i1 %524, i1* %AF_val, !mcsema_real_eip !138
  %525 = icmp slt i32 %521, 0
  store i1 %525, i1* %SF_val, !mcsema_real_eip !138
  %526 = icmp eq i32 %521, 0, !mcsema_real_eip !138
  store i1 %526, i1* %ZF_val, !mcsema_real_eip !138
  %527 = xor i32 %520, -2147483648, !mcsema_real_eip !138
  %528 = and i32 %522, %527, !mcsema_real_eip !138
  %529 = icmp slt i32 %528, 0
  store i1 %529, i1* %OF_val, !mcsema_real_eip !138
  %530 = trunc i32 %521 to i8, !mcsema_real_eip !138
  %531 = tail call i8 @llvm.ctpop.i8(i8 %530), !mcsema_real_eip !138
  %532 = and i8 %531, 1
  %533 = icmp eq i8 %532, 0
  store i1 %533, i1* %PF_val, !mcsema_real_eip !138
  %534 = extractvalue { i32, i1 } %uadd80, 1
  store i1 %534, i1* %CF_val, !mcsema_real_eip !138
  %535 = zext i32 %521 to i64, !mcsema_real_eip !138
  store i64 %535, i64* %RAX_val, !mcsema_real_eip !138
  %536 = load i64, i64* %RBP_val, !mcsema_real_eip !139
  %537 = add i64 %536, -96, !mcsema_real_eip !139
  %538 = inttoptr i64 %537 to i64*, !mcsema_real_eip !139
  %539 = bitcast i64* %538 to i32*
  store i32 %521, i32* %539, !mcsema_real_eip !139
  br label %block_0xdb, !mcsema_real_eip !140

block_0x10a:                                      ; preds = %block_0xdb
  %.lcssa94 = phi i64 [ %474, %block_0xdb ]
  %540 = add i64 %.lcssa94, -72, !mcsema_real_eip !130
  %541 = inttoptr i64 %540 to i64*, !mcsema_real_eip !130
  %542 = load i64, i64* %541, !mcsema_real_eip !130
  store i64 %542, i64* %RAX_val, !mcsema_real_eip !130
  %543 = inttoptr i64 %542 to i64*, !mcsema_real_eip !141
  %544 = bitcast i64* %543 to i32*
  %545 = load i32, i32* %544, !mcsema_real_eip !141
  %546 = zext i32 %545 to i64, !mcsema_real_eip !141
  store i64 %546, i64* %RCX_val, !mcsema_real_eip !141
  %547 = load i64, i64* %RBP_val, !mcsema_real_eip !142
  %548 = add i64 %547, -84, !mcsema_real_eip !142
  %549 = inttoptr i64 %548 to i64*, !mcsema_real_eip !142
  %550 = bitcast i64* %549 to i32*
  %551 = load i32, i32* %550, !mcsema_real_eip !142
  %uadd81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %545, i32 %551)
  %552 = extractvalue { i32, i1 } %uadd81, 0
  %553 = xor i32 %552, %551, !mcsema_real_eip !143
  %554 = xor i32 %553, %545, !mcsema_real_eip !143
  %555 = and i32 %554, 16, !mcsema_real_eip !143
  %556 = icmp ne i32 %555, 0, !mcsema_real_eip !143
  store i1 %556, i1* %AF_val, !mcsema_real_eip !143
  %557 = icmp slt i32 %552, 0
  store i1 %557, i1* %SF_val, !mcsema_real_eip !143
  %558 = icmp eq i32 %552, 0, !mcsema_real_eip !143
  store i1 %558, i1* %ZF_val, !mcsema_real_eip !143
  %559 = xor i32 %551, -2147483648, !mcsema_real_eip !143
  %560 = xor i32 %559, %545, !mcsema_real_eip !143
  %561 = and i32 %553, %560, !mcsema_real_eip !143
  %562 = icmp slt i32 %561, 0
  store i1 %562, i1* %OF_val, !mcsema_real_eip !143
  %563 = trunc i32 %552 to i8, !mcsema_real_eip !143
  %564 = tail call i8 @llvm.ctpop.i8(i8 %563), !mcsema_real_eip !143
  %565 = and i8 %564, 1
  %566 = icmp eq i8 %565, 0
  store i1 %566, i1* %PF_val, !mcsema_real_eip !143
  %567 = extractvalue { i32, i1 } %uadd81, 1
  store i1 %567, i1* %CF_val, !mcsema_real_eip !143
  %568 = zext i32 %552 to i64, !mcsema_real_eip !143
  store i64 %568, i64* %RDX_val, !mcsema_real_eip !143
  %569 = load i64, i64* %RBP_val, !mcsema_real_eip !144
  %570 = add i64 %569, -84, !mcsema_real_eip !144
  %571 = inttoptr i64 %570 to i64*, !mcsema_real_eip !144
  %572 = bitcast i64* %571 to i32*
  store i32 %552, i32* %572, !mcsema_real_eip !144
  %573 = load i64, i64* %RBP_val, !mcsema_real_eip !145
  %574 = add i64 %573, -100, !mcsema_real_eip !145
  %575 = inttoptr i64 %574 to i64*, !mcsema_real_eip !145
  %576 = bitcast i64* %575 to i32*
  store i32 0, i32* %576, !mcsema_real_eip !145
  br label %block_0x11f, !mcsema_real_eip !131

block_0x11f:                                      ; preds = %block_0x12b, %block_0x10a
  %577 = load i64, i64* %RBP_val, !mcsema_real_eip !146
  %578 = add i64 %577, -100, !mcsema_real_eip !146
  %579 = inttoptr i64 %578 to i64*, !mcsema_real_eip !146
  %580 = bitcast i64* %579 to i32*
  %581 = load i32, i32* %580, !mcsema_real_eip !146
  %582 = zext i32 %581 to i64, !mcsema_real_eip !146
  store i64 %582, i64* %RAX_val, !mcsema_real_eip !146
  %583 = load i64, i64* %RBP_val, !mcsema_real_eip !147
  %584 = add i64 %583, -48, !mcsema_real_eip !147
  %585 = inttoptr i64 %584 to i64*, !mcsema_real_eip !147
  %586 = bitcast i64* %585 to i32*
  %587 = load i32, i32* %586, !mcsema_real_eip !147
  %588 = sub i32 %581, %587, !mcsema_real_eip !147
  %589 = xor i32 %588, %581, !mcsema_real_eip !147
  %590 = xor i32 %589, %587, !mcsema_real_eip !147
  %591 = and i32 %590, 16, !mcsema_real_eip !147
  %592 = icmp ne i32 %591, 0, !mcsema_real_eip !147
  store i1 %592, i1* %AF_val, !mcsema_real_eip !147
  %593 = trunc i32 %588 to i8, !mcsema_real_eip !147
  %594 = tail call i8 @llvm.ctpop.i8(i8 %593), !mcsema_real_eip !147
  %595 = and i8 %594, 1
  %596 = icmp eq i8 %595, 0
  store i1 %596, i1* %PF_val, !mcsema_real_eip !147
  %597 = icmp eq i32 %581, %587
  store i1 %597, i1* %ZF_val, !mcsema_real_eip !147
  %598 = icmp slt i32 %588, 0
  store i1 %598, i1* %SF_val, !mcsema_real_eip !147
  %599 = icmp ult i32 %581, %587, !mcsema_real_eip !147
  store i1 %599, i1* %CF_val, !mcsema_real_eip !147
  %600 = xor i32 %587, %581, !mcsema_real_eip !147
  %601 = and i32 %589, %600, !mcsema_real_eip !147
  %602 = icmp slt i32 %601, 0
  store i1 %602, i1* %OF_val, !mcsema_real_eip !147
  %603 = load i1, i1* %SF_val, !mcsema_real_eip !148
  %tmp82 = xor i1 %603, %602
  %604 = load i64, i64* %RBP_val, !mcsema_real_eip !149
  br i1 %tmp82, label %block_0x12b, label %block_0x14e, !mcsema_real_eip !148

block_0x12b:                                      ; preds = %block_0x11f
  %605 = add i64 %604, -100, !mcsema_real_eip !150
  %606 = inttoptr i64 %605 to i64*, !mcsema_real_eip !150
  %607 = bitcast i64* %606 to i32*
  %608 = load i32, i32* %607, !mcsema_real_eip !150
  %609 = sext i32 %608 to i64, !mcsema_real_eip !150
  store i64 %609, i64* %RAX_val, !mcsema_real_eip !150
  %610 = load i64, i64* %RBP_val, !mcsema_real_eip !151
  %611 = add i64 %610, -80, !mcsema_real_eip !151
  %612 = inttoptr i64 %611 to i64*, !mcsema_real_eip !151
  %613 = load i64, i64* %612, !mcsema_real_eip !151
  store i64 %613, i64* %RCX_val, !mcsema_real_eip !151
  %614 = shl nsw i64 %609, 2
  %615 = add i64 %613, %614, !mcsema_real_eip !152
  %616 = inttoptr i64 %615 to i64*, !mcsema_real_eip !152
  %617 = bitcast i64* %616 to i32*
  %618 = load i32, i32* %617, !mcsema_real_eip !152
  %619 = zext i32 %618 to i64, !mcsema_real_eip !152
  store i64 %619, i64* %RDX_val, !mcsema_real_eip !152
  %620 = load i64, i64* %RBP_val, !mcsema_real_eip !153
  %621 = add i64 %620, -84, !mcsema_real_eip !153
  %622 = inttoptr i64 %621 to i64*, !mcsema_real_eip !153
  %623 = bitcast i64* %622 to i32*
  %624 = load i32, i32* %623, !mcsema_real_eip !153
  %uadd83 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %618, i32 %624)
  %625 = extractvalue { i32, i1 } %uadd83, 0
  %626 = xor i32 %625, %624, !mcsema_real_eip !154
  %627 = xor i32 %626, %618, !mcsema_real_eip !154
  %628 = and i32 %627, 16, !mcsema_real_eip !154
  %629 = icmp ne i32 %628, 0, !mcsema_real_eip !154
  store i1 %629, i1* %AF_val, !mcsema_real_eip !154
  %630 = icmp slt i32 %625, 0
  store i1 %630, i1* %SF_val, !mcsema_real_eip !154
  %631 = icmp eq i32 %625, 0, !mcsema_real_eip !154
  store i1 %631, i1* %ZF_val, !mcsema_real_eip !154
  %632 = xor i32 %624, -2147483648, !mcsema_real_eip !154
  %633 = xor i32 %632, %618, !mcsema_real_eip !154
  %634 = and i32 %626, %633, !mcsema_real_eip !154
  %635 = icmp slt i32 %634, 0
  store i1 %635, i1* %OF_val, !mcsema_real_eip !154
  %636 = trunc i32 %625 to i8, !mcsema_real_eip !154
  %637 = tail call i8 @llvm.ctpop.i8(i8 %636), !mcsema_real_eip !154
  %638 = and i8 %637, 1
  %639 = icmp eq i8 %638, 0
  store i1 %639, i1* %PF_val, !mcsema_real_eip !154
  %640 = extractvalue { i32, i1 } %uadd83, 1
  store i1 %640, i1* %CF_val, !mcsema_real_eip !154
  %641 = zext i32 %625 to i64, !mcsema_real_eip !154
  store i64 %641, i64* %RSI_val, !mcsema_real_eip !154
  %642 = load i64, i64* %RBP_val, !mcsema_real_eip !155
  %643 = add i64 %642, -84, !mcsema_real_eip !155
  %644 = inttoptr i64 %643 to i64*, !mcsema_real_eip !155
  %645 = bitcast i64* %644 to i32*
  store i32 %625, i32* %645, !mcsema_real_eip !155
  %646 = load i64, i64* %RBP_val, !mcsema_real_eip !156
  %647 = add i64 %646, -100, !mcsema_real_eip !156
  %648 = inttoptr i64 %647 to i64*, !mcsema_real_eip !156
  %649 = bitcast i64* %648 to i32*
  %650 = load i32, i32* %649, !mcsema_real_eip !156
  %uadd84 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %650, i32 1)
  %651 = extractvalue { i32, i1 } %uadd84, 0
  %652 = xor i32 %651, %650, !mcsema_real_eip !157
  %653 = and i32 %652, 16, !mcsema_real_eip !157
  %654 = icmp ne i32 %653, 0, !mcsema_real_eip !157
  store i1 %654, i1* %AF_val, !mcsema_real_eip !157
  %655 = icmp slt i32 %651, 0
  store i1 %655, i1* %SF_val, !mcsema_real_eip !157
  %656 = icmp eq i32 %651, 0, !mcsema_real_eip !157
  store i1 %656, i1* %ZF_val, !mcsema_real_eip !157
  %657 = xor i32 %650, -2147483648, !mcsema_real_eip !157
  %658 = and i32 %652, %657, !mcsema_real_eip !157
  %659 = icmp slt i32 %658, 0
  store i1 %659, i1* %OF_val, !mcsema_real_eip !157
  %660 = trunc i32 %651 to i8, !mcsema_real_eip !157
  %661 = tail call i8 @llvm.ctpop.i8(i8 %660), !mcsema_real_eip !157
  %662 = and i8 %661, 1
  %663 = icmp eq i8 %662, 0
  store i1 %663, i1* %PF_val, !mcsema_real_eip !157
  %664 = extractvalue { i32, i1 } %uadd84, 1
  store i1 %664, i1* %CF_val, !mcsema_real_eip !157
  %665 = zext i32 %651 to i64, !mcsema_real_eip !157
  store i64 %665, i64* %RAX_val, !mcsema_real_eip !157
  %666 = load i64, i64* %RBP_val, !mcsema_real_eip !158
  %667 = add i64 %666, -100, !mcsema_real_eip !158
  %668 = inttoptr i64 %667 to i64*, !mcsema_real_eip !158
  %669 = bitcast i64* %668 to i32*
  store i32 %651, i32* %669, !mcsema_real_eip !158
  br label %block_0x11f, !mcsema_real_eip !159

block_0x14e:                                      ; preds = %block_0x11f
  %.lcssa = phi i64 [ %604, %block_0x11f ]
  %670 = add i64 %.lcssa, -84, !mcsema_real_eip !149
  %671 = inttoptr i64 %670 to i64*, !mcsema_real_eip !149
  %672 = bitcast i64* %671 to i32*
  %673 = load i32, i32* %672, !mcsema_real_eip !149
  %674 = zext i32 %673 to i64, !mcsema_real_eip !149
  store i64 %674, i64* %RAX_val, !mcsema_real_eip !149
  %675 = load i64, i64* %RSP_val, !mcsema_real_eip !160
  %676 = inttoptr i64 %675 to i64*, !mcsema_real_eip !160
  %677 = load i64, i64* %676, !mcsema_real_eip !160
  store i64 %677, i64* %RBX_val, !mcsema_real_eip !160
  %678 = add i64 %675, 8, !mcsema_real_eip !160
  store i64 %678, i64* %RSP_val, !mcsema_real_eip !160
  %679 = inttoptr i64 %678 to i64*, !mcsema_real_eip !161
  %680 = load i64, i64* %679, !mcsema_real_eip !161
  store i64 %680, i64* %RBP_val, !mcsema_real_eip !161
  %681 = add i64 %675, 24, !mcsema_real_eip !162
  store i64 %681, i64* %RSP_val, !mcsema_real_eip !162
  %682 = load i64, i64* %RAX_val, !mcsema_real_eip !162
  store i64 %682, i64* %RAX, !mcsema_real_eip !162
  %683 = load i64, i64* %RBX_val, !mcsema_real_eip !162
  store i64 %683, i64* %RBX, !mcsema_real_eip !162
  %684 = load i64, i64* %RCX_val, !mcsema_real_eip !162
  store i64 %684, i64* %RCX, !mcsema_real_eip !162
  %685 = load i64, i64* %RDX_val, !mcsema_real_eip !162
  store i64 %685, i64* %RDX, !mcsema_real_eip !162
  %686 = load i64, i64* %RSI_val, !mcsema_real_eip !162
  store i64 %686, i64* %RSI, !mcsema_real_eip !162
  %687 = load i64, i64* %RDI_val, !mcsema_real_eip !162
  store i64 %687, i64* %RDI, !mcsema_real_eip !162
  %688 = load i64, i64* %RSP_val, !mcsema_real_eip !162
  store i64 %688, i64* %RSP, !mcsema_real_eip !162
  %689 = load i64, i64* %RBP_val, !mcsema_real_eip !162
  store i64 %689, i64* %RBP, !mcsema_real_eip !162
  %690 = load i64, i64* %R8_val, !mcsema_real_eip !162
  store i64 %690, i64* %R8, !mcsema_real_eip !162
  %691 = load i64, i64* %R9_val, !mcsema_real_eip !162
  store i64 %691, i64* %R9, !mcsema_real_eip !162
  %692 = load i64, i64* %R10_val, !mcsema_real_eip !162
  store i64 %692, i64* %R10, !mcsema_real_eip !162
  %693 = load i64, i64* %R11_val, !mcsema_real_eip !162
  store i64 %693, i64* %R11, !mcsema_real_eip !162
  %694 = load i64, i64* %R12_val, !mcsema_real_eip !162
  store i64 %694, i64* %R12, !mcsema_real_eip !162
  %695 = load i64, i64* %R13_val, !mcsema_real_eip !162
  store i64 %695, i64* %R13, !mcsema_real_eip !162
  %696 = load i64, i64* %R14_val, !mcsema_real_eip !162
  store i64 %696, i64* %R14, !mcsema_real_eip !162
  %697 = load i64, i64* %R15_val, !mcsema_real_eip !162
  store i64 %697, i64* %R15, !mcsema_real_eip !162
  %698 = load i64, i64* %RIP_val, !mcsema_real_eip !162
  store i64 %698, i64* %RIP, !mcsema_real_eip !162
  %699 = load i1, i1* %CF_val, !mcsema_real_eip !162
  store i1 %699, i1* %CF, align 1, !mcsema_real_eip !162
  %700 = load i1, i1* %PF_val, !mcsema_real_eip !162
  store i1 %700, i1* %PF, align 1, !mcsema_real_eip !162
  %701 = load i1, i1* %AF_val, !mcsema_real_eip !162
  store i1 %701, i1* %AF, align 1, !mcsema_real_eip !162
  %702 = load i1, i1* %ZF_val, !mcsema_real_eip !162
  store i1 %702, i1* %ZF, align 1, !mcsema_real_eip !162
  %703 = load i1, i1* %SF_val, !mcsema_real_eip !162
  store i1 %703, i1* %SF, align 1, !mcsema_real_eip !162
  %704 = load i1, i1* %OF_val, !mcsema_real_eip !162
  store i1 %704, i1* %OF, align 1, !mcsema_real_eip !162
  %705 = load i1, i1* %DF_val, !mcsema_real_eip !162
  store i1 %705, i1* %DF, align 1, !mcsema_real_eip !162
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !162
  %706 = load i1, i1* %FPU_B_val, !mcsema_real_eip !162
  store i1 %706, i1* %FPU_B, align 1, !mcsema_real_eip !162
  %707 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !162
  store i1 %707, i1* %FPU_C3, align 1, !mcsema_real_eip !162
  %708 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !162
  store i3 %708, i3* %FPU_TOP, align 1, !mcsema_real_eip !162
  %709 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !162
  store i1 %709, i1* %FPU_C2, align 1, !mcsema_real_eip !162
  %710 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !162
  store i1 %710, i1* %FPU_C1, align 1, !mcsema_real_eip !162
  %711 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !162
  store i1 %711, i1* %FPU_C0, align 1, !mcsema_real_eip !162
  %712 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !162
  store i1 %712, i1* %FPU_ES, align 1, !mcsema_real_eip !162
  %713 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !162
  store i1 %713, i1* %FPU_SF, align 1, !mcsema_real_eip !162
  %714 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !162
  store i1 %714, i1* %FPU_PE, align 1, !mcsema_real_eip !162
  %715 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !162
  store i1 %715, i1* %FPU_UE, align 1, !mcsema_real_eip !162
  %716 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !162
  store i1 %716, i1* %FPU_OE, align 1, !mcsema_real_eip !162
  %717 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !162
  store i1 %717, i1* %FPU_ZE, align 1, !mcsema_real_eip !162
  %718 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !162
  store i1 %718, i1* %FPU_DE, align 1, !mcsema_real_eip !162
  %719 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !162
  store i1 %719, i1* %FPU_IE, align 1, !mcsema_real_eip !162
  %720 = load i1, i1* %FPU_X_val, !mcsema_real_eip !162
  store i1 %720, i1* %FPU_X, align 1, !mcsema_real_eip !162
  %721 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !162
  store i2 %721, i2* %FPU_RC, align 1, !mcsema_real_eip !162
  %722 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !162
  store i2 %722, i2* %FPU_PC, align 1, !mcsema_real_eip !162
  %723 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !162
  store i1 %723, i1* %FPU_PM, align 1, !mcsema_real_eip !162
  %724 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !162
  store i1 %724, i1* %FPU_UM, align 1, !mcsema_real_eip !162
  %725 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !162
  store i1 %725, i1* %FPU_OM, align 1, !mcsema_real_eip !162
  %726 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !162
  store i1 %726, i1* %FPU_ZM, align 1, !mcsema_real_eip !162
  %727 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !162
  store i1 %727, i1* %FPU_DM, align 1, !mcsema_real_eip !162
  %728 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !162
  store i1 %728, i1* %FPU_IM, align 1, !mcsema_real_eip !162
  %729 = load i64, i64* %53, align 4
  store i64 %729, i64* %52, align 4
  %730 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !162
  store i16 %730, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !162
  %731 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !162
  store i64 %731, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !162
  %732 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !162
  store i16 %732, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !162
  %733 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !162
  store i64 %733, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !162
  %734 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !162
  store i11 %734, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !162
  %735 = load i128, i128* %XMM0_val, !mcsema_real_eip !162
  store i128 %735, i128* %XMM0, align 1, !mcsema_real_eip !162
  %736 = load i128, i128* %XMM1_val, !mcsema_real_eip !162
  store i128 %736, i128* %XMM1, align 1, !mcsema_real_eip !162
  %737 = load i128, i128* %XMM2_val, !mcsema_real_eip !162
  store i128 %737, i128* %XMM2, align 1, !mcsema_real_eip !162
  %738 = load i128, i128* %XMM3_val, !mcsema_real_eip !162
  store i128 %738, i128* %XMM3, align 1, !mcsema_real_eip !162
  %739 = load i128, i128* %XMM4_val, !mcsema_real_eip !162
  store i128 %739, i128* %XMM4, align 1, !mcsema_real_eip !162
  %740 = load i128, i128* %XMM5_val, !mcsema_real_eip !162
  store i128 %740, i128* %XMM5, align 1, !mcsema_real_eip !162
  %741 = load i128, i128* %XMM6_val, !mcsema_real_eip !162
  store i128 %741, i128* %XMM6, align 1, !mcsema_real_eip !162
  %742 = load i128, i128* %XMM7_val, !mcsema_real_eip !162
  store i128 %742, i128* %XMM7, align 1, !mcsema_real_eip !162
  %743 = load i128, i128* %XMM8_val, !mcsema_real_eip !162
  store i128 %743, i128* %XMM8, align 1, !mcsema_real_eip !162
  %744 = load i128, i128* %XMM9_val, !mcsema_real_eip !162
  store i128 %744, i128* %XMM9, align 1, !mcsema_real_eip !162
  %745 = load i128, i128* %XMM10_val, !mcsema_real_eip !162
  store i128 %745, i128* %XMM10, align 1, !mcsema_real_eip !162
  %746 = load i128, i128* %XMM11_val, !mcsema_real_eip !162
  store i128 %746, i128* %XMM11, align 1, !mcsema_real_eip !162
  %747 = load i128, i128* %XMM12_val, !mcsema_real_eip !162
  store i128 %747, i128* %XMM12, align 1, !mcsema_real_eip !162
  %748 = load i128, i128* %XMM13_val, !mcsema_real_eip !162
  store i128 %748, i128* %XMM13, align 1, !mcsema_real_eip !162
  %749 = load i128, i128* %XMM14_val, !mcsema_real_eip !162
  store i128 %749, i128* %XMM14, align 1, !mcsema_real_eip !162
  %750 = load i128, i128* %XMM15_val, !mcsema_real_eip !162
  store i128 %750, i128* %XMM15, align 1, !mcsema_real_eip !162
  %751 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !162
  store i64 %751, i64* %STACK_BASE, align 1, !mcsema_real_eip !162
  %752 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !162
  store i64 %752, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !162
  ret void, !mcsema_real_eip !162
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_160(%struct.regs* %0)
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
!2 = !{i64 352}
!3 = !{i64 353}
!4 = !{i64 356}
!5 = !{i64 358}
!6 = !{i64 359}
!7 = !{i64 366}
!8 = !{i64 373}
!9 = !{i64 380}
!10 = !{i64 387}
!11 = !{i64 394}
!12 = !{i64 400}
!13 = !{i64 403}
!14 = !{i64 408}
!15 = !{i64 412}
!16 = !{i64 416}
!17 = !{i64 419}
!18 = !{i64 424}
!19 = !{i64 427}
!20 = !{i64 432}
!21 = !{i64 442}
!22 = !{i64 446}
!23 = !{i64 450}
!24 = !{i64 455}
!25 = !{i64 459}
!26 = !{i64 466}
!27 = !{i64 473}
!28 = !{i64 479}
!29 = !{i64 482}
!30 = !{i64 487}
!31 = !{i64 491}
!32 = !{i64 495}
!33 = !{i64 498}
!34 = !{i64 501}
!35 = !{i64 506}
!36 = !{i64 509}
!37 = !{i64 514}
!38 = !{i64 519}
!39 = !{i64 523}
!40 = !{i64 526}
!41 = !{i64 530}
!42 = !{i64 534}
!43 = !{i64 538}
!44 = !{i64 542}
!45 = !{i64 546}
!46 = !{i64 550}
!47 = !{i64 553}
!48 = !{i64 557}
!49 = !{i64 561}
!50 = !{i64 564}
!51 = !{i64 568}
!52 = !{i64 571}
!53 = !{i64 575}
!54 = !{i64 578}
!55 = !{i64 581}
!56 = !{i64 584}
!57 = !{i64 588}
!58 = !{i64 593}
!59 = !{i64 597}
!60 = !{i64 602}
!61 = !{i64 607}
!62 = !{i64 612}
!63 = !{i64 619}
!64 = !{i64 620}
!65 = !{i64 622}
!66 = !{i64 623}
!67 = !{i64 0}
!68 = !{i64 1}
!69 = !{i64 4}
!70 = !{i64 5}
!71 = !{i64 9}
!72 = !{i64 13}
!73 = !{i64 17}
!74 = !{i64 20}
!75 = !{i64 23}
!76 = !{i64 27}
!77 = !{i64 31}
!78 = !{i64 35}
!79 = !{i64 39}
!80 = !{i64 43}
!81 = !{i64 46}
!82 = !{i64 50}
!83 = !{i64 54}
!84 = !{i64 58}
!85 = !{i64 65}
!86 = !{i64 68}
!87 = !{i64 72}
!88 = !{i64 75}
!89 = !{i64 79}
!90 = !{i64 86}
!91 = !{i64 89}
!92 = !{i64 92}
!93 = !{i64 133}
!94 = !{i64 98}
!95 = !{i64 102}
!96 = !{i64 106}
!97 = !{i64 109}
!98 = !{i64 112}
!99 = !{i64 114}
!100 = !{i64 117}
!101 = !{i64 120}
!102 = !{i64 125}
!103 = !{i64 128}
!104 = !{i64 137}
!105 = !{i64 139}
!106 = !{i64 142}
!107 = !{i64 144}
!108 = !{i64 147}
!109 = !{i64 154}
!110 = !{i64 157}
!111 = !{i64 160}
!112 = !{i64 201}
!113 = !{i64 166}
!114 = !{i64 170}
!115 = !{i64 174}
!116 = !{i64 177}
!117 = !{i64 180}
!118 = !{i64 182}
!119 = !{i64 185}
!120 = !{i64 188}
!121 = !{i64 193}
!122 = !{i64 196}
!123 = !{i64 204}
!124 = !{i64 207}
!125 = !{i64 209}
!126 = !{i64 212}
!127 = !{i64 219}
!128 = !{i64 222}
!129 = !{i64 225}
!130 = !{i64 266}
!131 = !{i64 231}
!132 = !{i64 235}
!133 = !{i64 239}
!134 = !{i64 242}
!135 = !{i64 245}
!136 = !{i64 247}
!137 = !{i64 250}
!138 = !{i64 253}
!139 = !{i64 258}
!140 = !{i64 261}
!141 = !{i64 270}
!142 = !{i64 272}
!143 = !{i64 275}
!144 = !{i64 277}
!145 = !{i64 280}
!146 = !{i64 287}
!147 = !{i64 290}
!148 = !{i64 293}
!149 = !{i64 334}
!150 = !{i64 299}
!151 = !{i64 303}
!152 = !{i64 307}
!153 = !{i64 310}
!154 = !{i64 313}
!155 = !{i64 315}
!156 = !{i64 318}
!157 = !{i64 321}
!158 = !{i64 326}
!159 = !{i64 329}
!160 = !{i64 337}
!161 = !{i64 338}
!162 = !{i64 339}
