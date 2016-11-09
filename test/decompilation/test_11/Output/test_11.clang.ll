; ModuleID = 'Output/test_11.clang.bc'
source_filename = "Output/test_11.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_20(%struct.regs*) {
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
  %82 = add i64 %79, -56
  %83 = xor i64 %82, %80, !mcsema_real_eip !4
  %84 = and i64 %83, 16
  %85 = icmp eq i64 %84, 0
  store i1 %85, i1* %AF_val, !mcsema_real_eip !4
  %86 = trunc i64 %82 to i8, !mcsema_real_eip !4
  %87 = tail call i8 @llvm.ctpop.i8(i8 %86), !mcsema_real_eip !4
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  store i1 %89, i1* %PF_val, !mcsema_real_eip !4
  %90 = icmp eq i64 %82, 0, !mcsema_real_eip !4
  store i1 %90, i1* %ZF_val, !mcsema_real_eip !4
  %91 = icmp slt i64 %82, 0
  store i1 %91, i1* %SF_val, !mcsema_real_eip !4
  %92 = icmp ult i64 %80, 48, !mcsema_real_eip !4
  store i1 %92, i1* %CF_val, !mcsema_real_eip !4
  %93 = and i64 %83, %80, !mcsema_real_eip !4
  %94 = icmp slt i64 %93, 0
  store i1 %94, i1* %OF_val, !mcsema_real_eip !4
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !4
  %95 = load i64, i64* %RBP_val, !mcsema_real_eip !5
  %96 = add i64 %95, -16, !mcsema_real_eip !5
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !5
  %98 = load i64, i64* %RDI_val, !mcsema_real_eip !5
  store i64 %98, i64* %97, !mcsema_real_eip !5
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %100 = add i64 %99, -16, !mcsema_real_eip !6
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !6
  %102 = load i64, i64* %101, !mcsema_real_eip !6
  store i64 %102, i64* %RDI_val, !mcsema_real_eip !6
  %103 = tail call x86_64_sysvcc i64 @strlen(i64 %102), !mcsema_real_eip !7
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %103, i64 1)
  %104 = extractvalue { i64, i1 } %uadd, 0
  %105 = xor i64 %104, %103, !mcsema_real_eip !8
  %106 = and i64 %105, 16, !mcsema_real_eip !8
  %107 = icmp ne i64 %106, 0, !mcsema_real_eip !8
  store i1 %107, i1* %AF_val, !mcsema_real_eip !8
  %108 = icmp slt i64 %104, 0
  store i1 %108, i1* %SF_val, !mcsema_real_eip !8
  %109 = icmp eq i64 %104, 0, !mcsema_real_eip !8
  store i1 %109, i1* %ZF_val, !mcsema_real_eip !8
  %110 = xor i64 %103, -9223372036854775808, !mcsema_real_eip !8
  %111 = and i64 %105, %110, !mcsema_real_eip !8
  %112 = icmp slt i64 %111, 0
  store i1 %112, i1* %OF_val, !mcsema_real_eip !8
  %113 = trunc i64 %104 to i8, !mcsema_real_eip !8
  %114 = tail call i8 @llvm.ctpop.i8(i8 %113), !mcsema_real_eip !8
  %115 = and i8 %114, 1
  %116 = icmp eq i8 %115, 0
  store i1 %116, i1* %PF_val, !mcsema_real_eip !8
  %117 = extractvalue { i64, i1 } %uadd, 1
  store i1 %117, i1* %CF_val, !mcsema_real_eip !8
  store i64 %104, i64* %RAX_val, !mcsema_real_eip !8
  %118 = load i64, i64* %RBP_val, !mcsema_real_eip !9
  %119 = add i64 %118, -24, !mcsema_real_eip !9
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !9
  store i64 %104, i64* %120, !mcsema_real_eip !9
  %121 = load i64, i64* %RBP_val, !mcsema_real_eip !10
  %122 = add i64 %121, -24, !mcsema_real_eip !10
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !10
  %124 = load i64, i64* %123, !mcsema_real_eip !10
  store i64 %124, i64* %RDI_val, !mcsema_real_eip !10
  %125 = tail call x86_64_sysvcc i64 @malloc(i64 %124), !mcsema_real_eip !11
  store i64 %125, i64* %RAX_val, !mcsema_real_eip !11
  %126 = load i64, i64* %RBP_val, !mcsema_real_eip !12
  %127 = add i64 %126, -32, !mcsema_real_eip !12
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !12
  store i64 %125, i64* %128, !mcsema_real_eip !12
  %129 = load i64, i64* %RBP_val, !mcsema_real_eip !13
  %130 = add i64 %129, -32, !mcsema_real_eip !13
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !13
  %132 = load i64, i64* %131, !mcsema_real_eip !13
  store i1 false, i1* %AF_val, !mcsema_real_eip !13
  %133 = trunc i64 %132 to i8, !mcsema_real_eip !13
  %134 = tail call i8 @llvm.ctpop.i8(i8 %133), !mcsema_real_eip !13
  %135 = and i8 %134, 1
  %136 = icmp eq i8 %135, 0
  store i1 %136, i1* %PF_val, !mcsema_real_eip !13
  %137 = icmp eq i64 %132, 0, !mcsema_real_eip !13
  store i1 %137, i1* %ZF_val, !mcsema_real_eip !13
  %138 = icmp slt i64 %132, 0
  store i1 %138, i1* %SF_val, !mcsema_real_eip !13
  store i1 false, i1* %CF_val, !mcsema_real_eip !13
  store i1 false, i1* %OF_val, !mcsema_real_eip !13
  br i1 %137, label %block_0xe8, label %block_0x5a, !mcsema_real_eip !14

block_0x5a:                                       ; preds = %entry
  store i64 0, i64* %RSI_val, !mcsema_real_eip !15
  %139 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %140 = add i64 %139, -16, !mcsema_real_eip !16
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !16
  %142 = load i64, i64* %141, !mcsema_real_eip !16
  store i64 %142, i64* %RAX_val, !mcsema_real_eip !16
  %143 = add i64 %139, -40, !mcsema_real_eip !17
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !17
  store i64 %142, i64* %144, !mcsema_real_eip !17
  %145 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  %146 = add i64 %145, -32, !mcsema_real_eip !18
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !18
  %148 = load i64, i64* %147, !mcsema_real_eip !18
  store i64 %148, i64* %RAX_val, !mcsema_real_eip !18
  %149 = add i64 %145, -48, !mcsema_real_eip !19
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !19
  store i64 %148, i64* %150, !mcsema_real_eip !19
  %151 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %152 = add i64 %151, -32, !mcsema_real_eip !20
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !20
  %154 = load i64, i64* %153, !mcsema_real_eip !20
  store i64 %154, i64* %RDI_val, !mcsema_real_eip !20
  %155 = add i64 %151, -24, !mcsema_real_eip !21
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !21
  %157 = load i64, i64* %156, !mcsema_real_eip !21
  store i64 %157, i64* %RDX_val, !mcsema_real_eip !21
  %158 = load i64, i64* %RSI_val, !mcsema_real_eip !22
  %159 = tail call x86_64_sysvcc i64 @memset(i64 %154, i64 %158, i64 %157), !mcsema_real_eip !22
  store i64 %159, i64* %RAX_val, !mcsema_real_eip !22
  br label %block_0x7c, !mcsema_real_eip !23

block_0xe8:                                       ; preds = %entry
  %160 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %161 = add i64 %160, -8, !mcsema_real_eip !24
  %162 = inttoptr i64 %161 to i64*, !mcsema_real_eip !24
  store i64 0, i64* %162, !mcsema_real_eip !24
  br label %block_0xf0, !mcsema_real_eip !15

block_0xf0:                                       ; preds = %block_0xdb, %block_0xe8
  %163 = load i64, i64* %RBP_val, !mcsema_real_eip !23
  %164 = add i64 %163, -8, !mcsema_real_eip !23
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !23
  %166 = load i64, i64* %165, !mcsema_real_eip !23
  store i64 %166, i64* %RAX_val, !mcsema_real_eip !23
  %167 = load i64, i64* %RSP_val, !mcsema_real_eip !25
  %uadd73 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %167, i64 48)
  %168 = extractvalue { i64, i1 } %uadd73, 0
  %169 = xor i64 %168, %167, !mcsema_real_eip !25
  %170 = and i64 %169, 16
  %171 = icmp eq i64 %170, 0
  store i1 %171, i1* %AF_val, !mcsema_real_eip !25
  %172 = icmp slt i64 %168, 0
  store i1 %172, i1* %SF_val, !mcsema_real_eip !25
  %173 = icmp eq i64 %168, 0, !mcsema_real_eip !25
  store i1 %173, i1* %ZF_val, !mcsema_real_eip !25
  %174 = xor i64 %167, -9223372036854775808, !mcsema_real_eip !25
  %175 = and i64 %169, %174, !mcsema_real_eip !25
  %176 = icmp slt i64 %175, 0
  store i1 %176, i1* %OF_val, !mcsema_real_eip !25
  %177 = trunc i64 %168 to i8, !mcsema_real_eip !25
  %178 = tail call i8 @llvm.ctpop.i8(i8 %177), !mcsema_real_eip !25
  %179 = and i8 %178, 1
  %180 = icmp eq i8 %179, 0
  store i1 %180, i1* %PF_val, !mcsema_real_eip !25
  %181 = extractvalue { i64, i1 } %uadd73, 1
  store i1 %181, i1* %CF_val, !mcsema_real_eip !25
  store i64 %168, i64* %RSP_val, !mcsema_real_eip !25
  %182 = inttoptr i64 %168 to i64*, !mcsema_real_eip !26
  %183 = load i64, i64* %182, !mcsema_real_eip !26
  store i64 %183, i64* %RBP_val, !mcsema_real_eip !26
  %184 = add i64 %168, 16, !mcsema_real_eip !27
  store i64 %184, i64* %RSP_val, !mcsema_real_eip !27
  %185 = load i64, i64* %RAX_val, !mcsema_real_eip !27
  store i64 %185, i64* %RAX, !mcsema_real_eip !27
  %186 = load i64, i64* %RBX_val, !mcsema_real_eip !27
  store i64 %186, i64* %RBX, !mcsema_real_eip !27
  %187 = load i64, i64* %RCX_val, !mcsema_real_eip !27
  store i64 %187, i64* %RCX, !mcsema_real_eip !27
  %188 = load i64, i64* %RDX_val, !mcsema_real_eip !27
  store i64 %188, i64* %RDX, !mcsema_real_eip !27
  %189 = load i64, i64* %RSI_val, !mcsema_real_eip !27
  store i64 %189, i64* %RSI, !mcsema_real_eip !27
  %190 = load i64, i64* %RDI_val, !mcsema_real_eip !27
  store i64 %190, i64* %RDI, !mcsema_real_eip !27
  %191 = load i64, i64* %RSP_val, !mcsema_real_eip !27
  store i64 %191, i64* %RSP, !mcsema_real_eip !27
  %192 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  store i64 %192, i64* %RBP, !mcsema_real_eip !27
  %193 = load i64, i64* %R8_val, !mcsema_real_eip !27
  store i64 %193, i64* %R8, !mcsema_real_eip !27
  %194 = load i64, i64* %R9_val, !mcsema_real_eip !27
  store i64 %194, i64* %R9, !mcsema_real_eip !27
  %195 = load i64, i64* %R10_val, !mcsema_real_eip !27
  store i64 %195, i64* %R10, !mcsema_real_eip !27
  %196 = load i64, i64* %R11_val, !mcsema_real_eip !27
  store i64 %196, i64* %R11, !mcsema_real_eip !27
  %197 = load i64, i64* %R12_val, !mcsema_real_eip !27
  store i64 %197, i64* %R12, !mcsema_real_eip !27
  %198 = load i64, i64* %R13_val, !mcsema_real_eip !27
  store i64 %198, i64* %R13, !mcsema_real_eip !27
  %199 = load i64, i64* %R14_val, !mcsema_real_eip !27
  store i64 %199, i64* %R14, !mcsema_real_eip !27
  %200 = load i64, i64* %R15_val, !mcsema_real_eip !27
  store i64 %200, i64* %R15, !mcsema_real_eip !27
  %201 = load i64, i64* %RIP_val, !mcsema_real_eip !27
  store i64 %201, i64* %RIP, !mcsema_real_eip !27
  %202 = load i1, i1* %CF_val, !mcsema_real_eip !27
  store i1 %202, i1* %CF, align 1, !mcsema_real_eip !27
  %203 = load i1, i1* %PF_val, !mcsema_real_eip !27
  store i1 %203, i1* %PF, align 1, !mcsema_real_eip !27
  %204 = load i1, i1* %AF_val, !mcsema_real_eip !27
  store i1 %204, i1* %AF, align 1, !mcsema_real_eip !27
  %205 = load i1, i1* %ZF_val, !mcsema_real_eip !27
  store i1 %205, i1* %ZF, align 1, !mcsema_real_eip !27
  %206 = load i1, i1* %SF_val, !mcsema_real_eip !27
  store i1 %206, i1* %SF, align 1, !mcsema_real_eip !27
  %207 = load i1, i1* %OF_val, !mcsema_real_eip !27
  store i1 %207, i1* %OF, align 1, !mcsema_real_eip !27
  %208 = load i1, i1* %DF_val, !mcsema_real_eip !27
  store i1 %208, i1* %DF, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !27
  %209 = load i1, i1* %FPU_B_val, !mcsema_real_eip !27
  store i1 %209, i1* %FPU_B, align 1, !mcsema_real_eip !27
  %210 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !27
  store i1 %210, i1* %FPU_C3, align 1, !mcsema_real_eip !27
  %211 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !27
  store i3 %211, i3* %FPU_TOP, align 1, !mcsema_real_eip !27
  %212 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !27
  store i1 %212, i1* %FPU_C2, align 1, !mcsema_real_eip !27
  %213 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !27
  store i1 %213, i1* %FPU_C1, align 1, !mcsema_real_eip !27
  %214 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !27
  store i1 %214, i1* %FPU_C0, align 1, !mcsema_real_eip !27
  %215 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !27
  store i1 %215, i1* %FPU_ES, align 1, !mcsema_real_eip !27
  %216 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !27
  store i1 %216, i1* %FPU_SF, align 1, !mcsema_real_eip !27
  %217 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !27
  store i1 %217, i1* %FPU_PE, align 1, !mcsema_real_eip !27
  %218 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !27
  store i1 %218, i1* %FPU_UE, align 1, !mcsema_real_eip !27
  %219 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !27
  store i1 %219, i1* %FPU_OE, align 1, !mcsema_real_eip !27
  %220 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !27
  store i1 %220, i1* %FPU_ZE, align 1, !mcsema_real_eip !27
  %221 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !27
  store i1 %221, i1* %FPU_DE, align 1, !mcsema_real_eip !27
  %222 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !27
  store i1 %222, i1* %FPU_IE, align 1, !mcsema_real_eip !27
  %223 = load i1, i1* %FPU_X_val, !mcsema_real_eip !27
  store i1 %223, i1* %FPU_X, align 1, !mcsema_real_eip !27
  %224 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !27
  store i2 %224, i2* %FPU_RC, align 1, !mcsema_real_eip !27
  %225 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !27
  store i2 %225, i2* %FPU_PC, align 1, !mcsema_real_eip !27
  %226 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !27
  store i1 %226, i1* %FPU_PM, align 1, !mcsema_real_eip !27
  %227 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !27
  store i1 %227, i1* %FPU_UM, align 1, !mcsema_real_eip !27
  %228 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !27
  store i1 %228, i1* %FPU_OM, align 1, !mcsema_real_eip !27
  %229 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !27
  store i1 %229, i1* %FPU_ZM, align 1, !mcsema_real_eip !27
  %230 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !27
  store i1 %230, i1* %FPU_DM, align 1, !mcsema_real_eip !27
  %231 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !27
  store i1 %231, i1* %FPU_IM, align 1, !mcsema_real_eip !27
  %232 = load i64, i64* %53, align 4
  store i64 %232, i64* %52, align 4
  %233 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !27
  store i16 %233, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !27
  %234 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !27
  store i64 %234, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !27
  %235 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !27
  store i16 %235, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !27
  %236 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !27
  store i64 %236, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !27
  %237 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !27
  store i11 %237, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !27
  %238 = load i128, i128* %XMM0_val, !mcsema_real_eip !27
  store i128 %238, i128* %XMM0, align 1, !mcsema_real_eip !27
  %239 = load i128, i128* %XMM1_val, !mcsema_real_eip !27
  store i128 %239, i128* %XMM1, align 1, !mcsema_real_eip !27
  %240 = load i128, i128* %XMM2_val, !mcsema_real_eip !27
  store i128 %240, i128* %XMM2, align 1, !mcsema_real_eip !27
  %241 = load i128, i128* %XMM3_val, !mcsema_real_eip !27
  store i128 %241, i128* %XMM3, align 1, !mcsema_real_eip !27
  %242 = load i128, i128* %XMM4_val, !mcsema_real_eip !27
  store i128 %242, i128* %XMM4, align 1, !mcsema_real_eip !27
  %243 = load i128, i128* %XMM5_val, !mcsema_real_eip !27
  store i128 %243, i128* %XMM5, align 1, !mcsema_real_eip !27
  %244 = load i128, i128* %XMM6_val, !mcsema_real_eip !27
  store i128 %244, i128* %XMM6, align 1, !mcsema_real_eip !27
  %245 = load i128, i128* %XMM7_val, !mcsema_real_eip !27
  store i128 %245, i128* %XMM7, align 1, !mcsema_real_eip !27
  %246 = load i128, i128* %XMM8_val, !mcsema_real_eip !27
  store i128 %246, i128* %XMM8, align 1, !mcsema_real_eip !27
  %247 = load i128, i128* %XMM9_val, !mcsema_real_eip !27
  store i128 %247, i128* %XMM9, align 1, !mcsema_real_eip !27
  %248 = load i128, i128* %XMM10_val, !mcsema_real_eip !27
  store i128 %248, i128* %XMM10, align 1, !mcsema_real_eip !27
  %249 = load i128, i128* %XMM11_val, !mcsema_real_eip !27
  store i128 %249, i128* %XMM11, align 1, !mcsema_real_eip !27
  %250 = load i128, i128* %XMM12_val, !mcsema_real_eip !27
  store i128 %250, i128* %XMM12, align 1, !mcsema_real_eip !27
  %251 = load i128, i128* %XMM13_val, !mcsema_real_eip !27
  store i128 %251, i128* %XMM13, align 1, !mcsema_real_eip !27
  %252 = load i128, i128* %XMM14_val, !mcsema_real_eip !27
  store i128 %252, i128* %XMM14, align 1, !mcsema_real_eip !27
  %253 = load i128, i128* %XMM15_val, !mcsema_real_eip !27
  store i128 %253, i128* %XMM15, align 1, !mcsema_real_eip !27
  %254 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !27
  store i64 %254, i64* %STACK_BASE, align 1, !mcsema_real_eip !27
  %255 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !27
  store i64 %255, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27

block_0x7c:                                       ; preds = %block_0xba, %block_0x5a
  %256 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %257 = add i64 %256, -40, !mcsema_real_eip !28
  %258 = inttoptr i64 %257 to i64*, !mcsema_real_eip !28
  %259 = load i64, i64* %258, !mcsema_real_eip !28
  store i64 %259, i64* %RAX_val, !mcsema_real_eip !28
  %260 = inttoptr i64 %259 to i64*, !mcsema_real_eip !29
  %261 = bitcast i64* %260 to i8*
  %262 = load i8, i8* %261, !mcsema_real_eip !29
  %263 = sext i8 %262 to i32, !mcsema_real_eip !29
  %264 = zext i32 %263 to i64, !mcsema_real_eip !29
  store i64 %264, i64* %RCX_val, !mcsema_real_eip !29
  store i1 false, i1* %AF_val, !mcsema_real_eip !30
  %265 = tail call i8 @llvm.ctpop.i8(i8 %262), !mcsema_real_eip !30
  %266 = and i8 %265, 1
  %267 = icmp eq i8 %266, 0
  store i1 %267, i1* %PF_val, !mcsema_real_eip !30
  %268 = icmp eq i8 %262, 0
  store i1 %268, i1* %ZF_val, !mcsema_real_eip !30
  %269 = icmp slt i8 %262, 0
  store i1 %269, i1* %SF_val, !mcsema_real_eip !30
  store i1 false, i1* %CF_val, !mcsema_real_eip !30
  store i1 false, i1* %OF_val, !mcsema_real_eip !30
  %270 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  br i1 %268, label %block_0xdb, label %block_0x8f, !mcsema_real_eip !32

block_0x8f:                                       ; preds = %block_0x7c
  %271 = add i64 %270, -40, !mcsema_real_eip !33
  %272 = inttoptr i64 %271 to i64*, !mcsema_real_eip !33
  %273 = load i64, i64* %272, !mcsema_real_eip !33
  store i64 %273, i64* %RAX_val, !mcsema_real_eip !33
  %274 = inttoptr i64 %273 to i64*, !mcsema_real_eip !34
  %275 = bitcast i64* %274 to i8*
  %276 = load i8, i8* %275, !mcsema_real_eip !34
  %277 = sext i8 %276 to i32, !mcsema_real_eip !34
  %278 = zext i32 %277 to i64, !mcsema_real_eip !34
  store i64 %278, i64* %RCX_val, !mcsema_real_eip !34
  %279 = add nsw i32 %277, -47
  %280 = xor i32 %279, %277, !mcsema_real_eip !35
  %281 = and i32 %280, 16, !mcsema_real_eip !35
  %282 = icmp ne i32 %281, 0, !mcsema_real_eip !35
  store i1 %282, i1* %AF_val, !mcsema_real_eip !35
  %283 = trunc i32 %279 to i8, !mcsema_real_eip !35
  %284 = tail call i8 @llvm.ctpop.i8(i8 %283), !mcsema_real_eip !35
  %285 = and i8 %284, 1
  %286 = icmp eq i8 %285, 0
  store i1 %286, i1* %PF_val, !mcsema_real_eip !35
  %287 = icmp eq i32 %279, 0, !mcsema_real_eip !35
  store i1 %287, i1* %ZF_val, !mcsema_real_eip !35
  %288 = icmp slt i32 %279, 0
  store i1 %288, i1* %SF_val, !mcsema_real_eip !35
  %289 = icmp ult i8 %276, 47
  store i1 %289, i1* %CF_val, !mcsema_real_eip !35
  %290 = and i32 %280, %277, !mcsema_real_eip !35
  %291 = icmp slt i32 %290, 0
  store i1 %291, i1* %OF_val, !mcsema_real_eip !35
  %292 = load i1, i1* %ZF_val, !mcsema_real_eip !36
  %293 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  br i1 %292, label %block_0xa2, label %block_0xae, !mcsema_real_eip !36

block_0xdb:                                       ; preds = %block_0x7c
  %.lcssa = phi i64 [ %270, %block_0x7c ]
  %294 = add i64 %.lcssa, -32, !mcsema_real_eip !31
  %295 = inttoptr i64 %294 to i64*, !mcsema_real_eip !31
  %296 = load i64, i64* %295, !mcsema_real_eip !31
  store i64 %296, i64* %RAX_val, !mcsema_real_eip !31
  %297 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %298 = add i64 %297, -8, !mcsema_real_eip !38
  %299 = inttoptr i64 %298 to i64*, !mcsema_real_eip !38
  store i64 %296, i64* %299, !mcsema_real_eip !38
  br label %block_0xf0, !mcsema_real_eip !39

block_0xa2:                                       ; preds = %block_0x8f
  %300 = add i64 %293, -48, !mcsema_real_eip !40
  %301 = inttoptr i64 %300 to i64*, !mcsema_real_eip !40
  %302 = load i64, i64* %301, !mcsema_real_eip !40
  store i64 %302, i64* %RAX_val, !mcsema_real_eip !40
  %303 = inttoptr i64 %302 to i64*, !mcsema_real_eip !41
  %304 = bitcast i64* %303 to i8*
  store i8 92, i8* %304, !mcsema_real_eip !41
  br label %block_0xba, !mcsema_real_eip !42

block_0xae:                                       ; preds = %block_0x8f
  %305 = add i64 %293, -40, !mcsema_real_eip !37
  %306 = inttoptr i64 %305 to i64*, !mcsema_real_eip !37
  %307 = load i64, i64* %306, !mcsema_real_eip !37
  store i64 %307, i64* %RAX_val, !mcsema_real_eip !37
  %308 = inttoptr i64 %307 to i64*, !mcsema_real_eip !43
  %309 = bitcast i64* %308 to i8*
  %310 = load i8, i8* %309, !mcsema_real_eip !43
  %311 = zext i8 %310 to i64, !mcsema_real_eip !43
  %312 = load i64, i64* %RCX_val, !mcsema_real_eip !43
  %313 = and i64 %312, -256, !mcsema_real_eip !43
  %314 = or i64 %313, %311
  store i64 %314, i64* %RCX_val, !mcsema_real_eip !43
  %315 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  %316 = add i64 %315, -48, !mcsema_real_eip !44
  %317 = inttoptr i64 %316 to i64*, !mcsema_real_eip !44
  %318 = load i64, i64* %317, !mcsema_real_eip !44
  store i64 %318, i64* %RAX_val, !mcsema_real_eip !44
  %319 = inttoptr i64 %318 to i64*, !mcsema_real_eip !45
  %320 = load i64, i64* %RCX_val, !mcsema_real_eip !45
  %321 = trunc i64 %320 to i8, !mcsema_real_eip !45
  %322 = bitcast i64* %319 to i8*
  store i8 %321, i8* %322, !mcsema_real_eip !45
  br label %block_0xba, !mcsema_real_eip !40

block_0xba:                                       ; preds = %block_0xae, %block_0xa2
  %323 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %324 = add i64 %323, -40, !mcsema_real_eip !46
  %325 = inttoptr i64 %324 to i64*, !mcsema_real_eip !46
  %326 = load i64, i64* %325, !mcsema_real_eip !46
  %uadd71 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %326, i64 1)
  %327 = extractvalue { i64, i1 } %uadd71, 0
  %328 = xor i64 %327, %326, !mcsema_real_eip !47
  %329 = and i64 %328, 16, !mcsema_real_eip !47
  %330 = icmp ne i64 %329, 0, !mcsema_real_eip !47
  store i1 %330, i1* %AF_val, !mcsema_real_eip !47
  %331 = icmp slt i64 %327, 0
  store i1 %331, i1* %SF_val, !mcsema_real_eip !47
  %332 = icmp eq i64 %327, 0, !mcsema_real_eip !47
  store i1 %332, i1* %ZF_val, !mcsema_real_eip !47
  %333 = xor i64 %326, -9223372036854775808, !mcsema_real_eip !47
  %334 = and i64 %328, %333, !mcsema_real_eip !47
  %335 = icmp slt i64 %334, 0
  store i1 %335, i1* %OF_val, !mcsema_real_eip !47
  %336 = trunc i64 %327 to i8, !mcsema_real_eip !47
  %337 = tail call i8 @llvm.ctpop.i8(i8 %336), !mcsema_real_eip !47
  %338 = and i8 %337, 1
  %339 = icmp eq i8 %338, 0
  store i1 %339, i1* %PF_val, !mcsema_real_eip !47
  %340 = extractvalue { i64, i1 } %uadd71, 1
  store i1 %340, i1* %CF_val, !mcsema_real_eip !47
  store i64 %327, i64* %RAX_val, !mcsema_real_eip !47
  %341 = load i64, i64* %RBP_val, !mcsema_real_eip !48
  %342 = add i64 %341, -40, !mcsema_real_eip !48
  %343 = inttoptr i64 %342 to i64*, !mcsema_real_eip !48
  store i64 %327, i64* %343, !mcsema_real_eip !48
  %344 = load i64, i64* %RBP_val, !mcsema_real_eip !49
  %345 = add i64 %344, -48, !mcsema_real_eip !49
  %346 = inttoptr i64 %345 to i64*, !mcsema_real_eip !49
  %347 = load i64, i64* %346, !mcsema_real_eip !49
  %uadd72 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %347, i64 1)
  %348 = extractvalue { i64, i1 } %uadd72, 0
  %349 = xor i64 %348, %347, !mcsema_real_eip !50
  %350 = and i64 %349, 16, !mcsema_real_eip !50
  %351 = icmp ne i64 %350, 0, !mcsema_real_eip !50
  store i1 %351, i1* %AF_val, !mcsema_real_eip !50
  %352 = icmp slt i64 %348, 0
  store i1 %352, i1* %SF_val, !mcsema_real_eip !50
  %353 = icmp eq i64 %348, 0, !mcsema_real_eip !50
  store i1 %353, i1* %ZF_val, !mcsema_real_eip !50
  %354 = xor i64 %347, -9223372036854775808, !mcsema_real_eip !50
  %355 = and i64 %349, %354, !mcsema_real_eip !50
  %356 = icmp slt i64 %355, 0
  store i1 %356, i1* %OF_val, !mcsema_real_eip !50
  %357 = trunc i64 %348 to i8, !mcsema_real_eip !50
  %358 = tail call i8 @llvm.ctpop.i8(i8 %357), !mcsema_real_eip !50
  %359 = and i8 %358, 1
  %360 = icmp eq i8 %359, 0
  store i1 %360, i1* %PF_val, !mcsema_real_eip !50
  %361 = extractvalue { i64, i1 } %uadd72, 1
  store i1 %361, i1* %CF_val, !mcsema_real_eip !50
  store i64 %348, i64* %RAX_val, !mcsema_real_eip !50
  %362 = load i64, i64* %RBP_val, !mcsema_real_eip !51
  %363 = add i64 %362, -48, !mcsema_real_eip !51
  %364 = inttoptr i64 %363 to i64*, !mcsema_real_eip !51
  store i64 %348, i64* %364, !mcsema_real_eip !51
  br label %block_0x7c, !mcsema_real_eip !52
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

declare x86_64_sysvcc i64 @memset(i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @strlen(i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_20(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 32}
!3 = !{i64 33}
!4 = !{i64 36}
!5 = !{i64 40}
!6 = !{i64 44}
!7 = !{i64 48}
!8 = !{i64 53}
!9 = !{i64 59}
!10 = !{i64 63}
!11 = !{i64 67}
!12 = !{i64 72}
!13 = !{i64 76}
!14 = !{i64 84}
!15 = !{i64 90}
!16 = !{i64 95}
!17 = !{i64 99}
!18 = !{i64 103}
!19 = !{i64 107}
!20 = !{i64 111}
!21 = !{i64 115}
!22 = !{i64 119}
!23 = !{i64 240}
!24 = !{i64 232}
!25 = !{i64 244}
!26 = !{i64 248}
!27 = !{i64 249}
!28 = !{i64 124}
!29 = !{i64 128}
!30 = !{i64 131}
!31 = !{i64 219}
!32 = !{i64 137}
!33 = !{i64 143}
!34 = !{i64 147}
!35 = !{i64 150}
!36 = !{i64 156}
!37 = !{i64 174}
!38 = !{i64 223}
!39 = !{i64 227}
!40 = !{i64 162}
!41 = !{i64 166}
!42 = !{i64 169}
!43 = !{i64 178}
!44 = !{i64 180}
!45 = !{i64 184}
!46 = !{i64 186}
!47 = !{i64 190}
!48 = !{i64 196}
!49 = !{i64 200}
!50 = !{i64 204}
!51 = !{i64 210}
!52 = !{i64 214}
