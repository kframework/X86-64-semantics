; ModuleID = 'Output/test_6.clang.bc'
source_filename = "Output/test_6.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_a0(%struct.regs*) {
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
  %82 = add i64 %79, -88
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
  %92 = icmp ult i64 %80, 80, !mcsema_real_eip !4
  store i1 %92, i1* %CF_val, !mcsema_real_eip !4
  %93 = and i64 %83, %80, !mcsema_real_eip !4
  %94 = icmp slt i64 %93, 0
  store i1 %94, i1* %OF_val, !mcsema_real_eip !4
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !4
  store i64 40, i64* %RAX_val, !mcsema_real_eip !5
  %95 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %96 = add i64 %95, -4, !mcsema_real_eip !6
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !6
  %98 = bitcast i64* %97 to i32*
  store i32 0, i32* %98, !mcsema_real_eip !6
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  %100 = add i64 %99, -8, !mcsema_real_eip !7
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !7
  %102 = load i64, i64* %RDI_val, !mcsema_real_eip !7
  %103 = trunc i64 %102 to i32, !mcsema_real_eip !7
  %104 = bitcast i64* %101 to i32*
  store i32 %103, i32* %104, !mcsema_real_eip !7
  %105 = load i64, i64* %RBP_val, !mcsema_real_eip !8
  %106 = add i64 %105, -16, !mcsema_real_eip !8
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !8
  %108 = load i64, i64* %RSI_val, !mcsema_real_eip !8
  store i64 %108, i64* %107, !mcsema_real_eip !8
  %109 = load i64, i64* %RAX_val, !mcsema_real_eip !9
  %110 = tail call x86_64_sysvcc i64 @malloc(i64 %109), !mcsema_real_eip !10
  store i64 40, i64* %RDI_val, !mcsema_real_eip !11
  %111 = load i64, i64* %RBP_val, !mcsema_real_eip !12
  %112 = add i64 %111, -24, !mcsema_real_eip !12
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !12
  store i64 %110, i64* %113, !mcsema_real_eip !12
  %114 = load i64, i64* %RDI_val, !mcsema_real_eip !13
  %115 = tail call x86_64_sysvcc i64 @malloc(i64 %114), !mcsema_real_eip !13
  store i64 %115, i64* %RAX_val, !mcsema_real_eip !13
  %116 = load i64, i64* %RBP_val, !mcsema_real_eip !14
  %117 = add i64 %116, -32, !mcsema_real_eip !14
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !14
  store i64 %115, i64* %118, !mcsema_real_eip !14
  %119 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %120 = add i64 %119, -36, !mcsema_real_eip !15
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !15
  %122 = bitcast i64* %121 to i32*
  store i32 0, i32* %122, !mcsema_real_eip !15
  br label %block_0xe6, !mcsema_real_eip !16

block_0xe6:                                       ; preds = %block_0xf3, %entry
  %123 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %124 = add i64 %123, -36, !mcsema_real_eip !16
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !16
  %126 = bitcast i64* %125 to i32*
  %127 = load i32, i32* %126, !mcsema_real_eip !16
  %128 = add i32 %127, -10
  %129 = xor i32 %128, %127, !mcsema_real_eip !16
  %130 = and i32 %129, 16, !mcsema_real_eip !16
  %131 = icmp ne i32 %130, 0, !mcsema_real_eip !16
  store i1 %131, i1* %AF_val, !mcsema_real_eip !16
  %132 = trunc i32 %128 to i8, !mcsema_real_eip !16
  %133 = tail call i8 @llvm.ctpop.i8(i8 %132), !mcsema_real_eip !16
  %134 = and i8 %133, 1
  %135 = icmp eq i8 %134, 0
  store i1 %135, i1* %PF_val, !mcsema_real_eip !16
  %136 = icmp eq i32 %128, 0, !mcsema_real_eip !16
  store i1 %136, i1* %ZF_val, !mcsema_real_eip !16
  %137 = icmp slt i32 %128, 0
  store i1 %137, i1* %SF_val, !mcsema_real_eip !16
  %138 = icmp ult i32 %127, 10, !mcsema_real_eip !16
  store i1 %138, i1* %CF_val, !mcsema_real_eip !16
  %139 = and i32 %129, %127, !mcsema_real_eip !16
  %140 = icmp slt i32 %139, 0
  store i1 %140, i1* %OF_val, !mcsema_real_eip !16
  %tmp = xor i1 %137, %140
  %141 = load i64, i64* %RBP_val, !mcsema_real_eip !17
  br i1 %tmp, label %block_0xf3, label %block_0x11b, !mcsema_real_eip !18

block_0xf3:                                       ; preds = %block_0xe6
  %142 = add i64 %141, -36, !mcsema_real_eip !19
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !19
  %144 = bitcast i64* %143 to i32*
  %145 = load i32, i32* %144, !mcsema_real_eip !19
  %146 = add i32 %145, 10
  %uadd211 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %146, i32 1)
  %147 = extractvalue { i32, i1 } %uadd211, 0
  %148 = xor i32 %147, %146, !mcsema_real_eip !20
  %149 = and i32 %148, 16, !mcsema_real_eip !20
  %150 = icmp ne i32 %149, 0, !mcsema_real_eip !20
  store i1 %150, i1* %AF_val, !mcsema_real_eip !20
  %151 = icmp slt i32 %147, 0
  store i1 %151, i1* %SF_val, !mcsema_real_eip !20
  %152 = icmp eq i32 %147, 0, !mcsema_real_eip !20
  store i1 %152, i1* %ZF_val, !mcsema_real_eip !20
  %153 = add i32 %145, -2147483638
  %154 = and i32 %148, %153, !mcsema_real_eip !20
  %155 = icmp slt i32 %154, 0
  store i1 %155, i1* %OF_val, !mcsema_real_eip !20
  %156 = trunc i32 %147 to i8, !mcsema_real_eip !20
  %157 = tail call i8 @llvm.ctpop.i8(i8 %156), !mcsema_real_eip !20
  %158 = and i8 %157, 1
  %159 = icmp eq i8 %158, 0
  store i1 %159, i1* %PF_val, !mcsema_real_eip !20
  %160 = extractvalue { i32, i1 } %uadd211, 1
  store i1 %160, i1* %CF_val, !mcsema_real_eip !20
  %161 = zext i32 %147 to i64, !mcsema_real_eip !20
  store i64 %161, i64* %RAX_val, !mcsema_real_eip !20
  %162 = load i64, i64* %RBP_val, !mcsema_real_eip !21
  %163 = add i64 %162, -36, !mcsema_real_eip !21
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !21
  %165 = bitcast i64* %164 to i32*
  %166 = load i32, i32* %165, !mcsema_real_eip !21
  %167 = sext i32 %166 to i64, !mcsema_real_eip !21
  store i64 %167, i64* %RCX_val, !mcsema_real_eip !21
  %168 = load i64, i64* %RBP_val, !mcsema_real_eip !22
  %169 = add i64 %168, -24, !mcsema_real_eip !22
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !22
  %171 = load i64, i64* %170, !mcsema_real_eip !22
  store i64 %171, i64* %RDX_val, !mcsema_real_eip !22
  %172 = shl nsw i64 %167, 2
  %173 = add i64 %171, %172, !mcsema_real_eip !23
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !23
  %175 = load i64, i64* %RAX_val, !mcsema_real_eip !23
  %176 = trunc i64 %175 to i32, !mcsema_real_eip !23
  %177 = bitcast i64* %174 to i32*
  store i32 %176, i32* %177, !mcsema_real_eip !23
  %178 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %179 = add i64 %178, -36, !mcsema_real_eip !24
  %180 = inttoptr i64 %179 to i64*, !mcsema_real_eip !24
  %181 = bitcast i64* %180 to i32*
  %182 = load i32, i32* %181, !mcsema_real_eip !24
  %uadd212 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %182, i32 1)
  %183 = extractvalue { i32, i1 } %uadd212, 0
  %184 = xor i32 %183, %182, !mcsema_real_eip !25
  %185 = and i32 %184, 16, !mcsema_real_eip !25
  %186 = icmp ne i32 %185, 0, !mcsema_real_eip !25
  store i1 %186, i1* %AF_val, !mcsema_real_eip !25
  %187 = icmp slt i32 %183, 0
  store i1 %187, i1* %SF_val, !mcsema_real_eip !25
  %188 = icmp eq i32 %183, 0, !mcsema_real_eip !25
  store i1 %188, i1* %ZF_val, !mcsema_real_eip !25
  %189 = xor i32 %182, -2147483648, !mcsema_real_eip !25
  %190 = and i32 %184, %189, !mcsema_real_eip !25
  %191 = icmp slt i32 %190, 0
  store i1 %191, i1* %OF_val, !mcsema_real_eip !25
  %192 = trunc i32 %183 to i8, !mcsema_real_eip !25
  %193 = tail call i8 @llvm.ctpop.i8(i8 %192), !mcsema_real_eip !25
  %194 = and i8 %193, 1
  %195 = icmp eq i8 %194, 0
  store i1 %195, i1* %PF_val, !mcsema_real_eip !25
  %196 = extractvalue { i32, i1 } %uadd212, 1
  store i1 %196, i1* %CF_val, !mcsema_real_eip !25
  %197 = zext i32 %183 to i64, !mcsema_real_eip !25
  store i64 %197, i64* %RAX_val, !mcsema_real_eip !25
  %198 = load i64, i64* %RBP_val, !mcsema_real_eip !26
  %199 = add i64 %198, -36, !mcsema_real_eip !26
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !26
  %201 = bitcast i64* %200 to i32*
  store i32 %183, i32* %201, !mcsema_real_eip !26
  br label %block_0xe6, !mcsema_real_eip !27

block_0x11b:                                      ; preds = %block_0xe6
  %.lcssa = phi i64 [ %141, %block_0xe6 ]
  %202 = add i64 %.lcssa, -40, !mcsema_real_eip !17
  %203 = inttoptr i64 %202 to i64*, !mcsema_real_eip !17
  %204 = bitcast i64* %203 to i32*
  store i32 0, i32* %204, !mcsema_real_eip !17
  br label %block_0x122, !mcsema_real_eip !19

block_0x122:                                      ; preds = %block_0x12f, %block_0x11b
  %205 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %206 = add i64 %205, -40, !mcsema_real_eip !28
  %207 = inttoptr i64 %206 to i64*, !mcsema_real_eip !28
  %208 = bitcast i64* %207 to i32*
  %209 = load i32, i32* %208, !mcsema_real_eip !28
  %210 = add i32 %209, -10
  %211 = xor i32 %210, %209, !mcsema_real_eip !28
  %212 = and i32 %211, 16, !mcsema_real_eip !28
  %213 = icmp ne i32 %212, 0, !mcsema_real_eip !28
  store i1 %213, i1* %AF_val, !mcsema_real_eip !28
  %214 = trunc i32 %210 to i8, !mcsema_real_eip !28
  %215 = tail call i8 @llvm.ctpop.i8(i8 %214), !mcsema_real_eip !28
  %216 = and i8 %215, 1
  %217 = icmp eq i8 %216, 0
  store i1 %217, i1* %PF_val, !mcsema_real_eip !28
  %218 = icmp eq i32 %210, 0, !mcsema_real_eip !28
  store i1 %218, i1* %ZF_val, !mcsema_real_eip !28
  %219 = icmp slt i32 %210, 0
  store i1 %219, i1* %SF_val, !mcsema_real_eip !28
  %220 = icmp ult i32 %209, 10, !mcsema_real_eip !28
  store i1 %220, i1* %CF_val, !mcsema_real_eip !28
  %221 = and i32 %211, %209, !mcsema_real_eip !28
  %222 = icmp slt i32 %221, 0
  store i1 %222, i1* %OF_val, !mcsema_real_eip !28
  %tmp213 = xor i1 %219, %222
  br i1 %tmp213, label %block_0x12f, label %block_0x152, !mcsema_real_eip !29

block_0x12f:                                      ; preds = %block_0x122
  %223 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  %224 = add i64 %223, -40, !mcsema_real_eip !30
  %225 = inttoptr i64 %224 to i64*, !mcsema_real_eip !30
  %226 = bitcast i64* %225 to i32*
  %227 = load i32, i32* %226, !mcsema_real_eip !30
  %uadd214 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %227, i32 1)
  %228 = extractvalue { i32, i1 } %uadd214, 0
  %229 = xor i32 %228, %227, !mcsema_real_eip !31
  %230 = and i32 %229, 16, !mcsema_real_eip !31
  %231 = icmp ne i32 %230, 0, !mcsema_real_eip !31
  store i1 %231, i1* %AF_val, !mcsema_real_eip !31
  %232 = icmp slt i32 %228, 0
  store i1 %232, i1* %SF_val, !mcsema_real_eip !31
  %233 = icmp eq i32 %228, 0, !mcsema_real_eip !31
  store i1 %233, i1* %ZF_val, !mcsema_real_eip !31
  %234 = xor i32 %227, -2147483648, !mcsema_real_eip !31
  %235 = and i32 %229, %234, !mcsema_real_eip !31
  %236 = icmp slt i32 %235, 0
  store i1 %236, i1* %OF_val, !mcsema_real_eip !31
  %237 = trunc i32 %228 to i8, !mcsema_real_eip !31
  %238 = tail call i8 @llvm.ctpop.i8(i8 %237), !mcsema_real_eip !31
  %239 = and i8 %238, 1
  %240 = icmp eq i8 %239, 0
  store i1 %240, i1* %PF_val, !mcsema_real_eip !31
  %241 = extractvalue { i32, i1 } %uadd214, 1
  store i1 %241, i1* %CF_val, !mcsema_real_eip !31
  %242 = zext i32 %228 to i64, !mcsema_real_eip !31
  store i64 %242, i64* %RAX_val, !mcsema_real_eip !31
  %243 = load i64, i64* %RBP_val, !mcsema_real_eip !32
  %244 = add i64 %243, -40, !mcsema_real_eip !32
  %245 = inttoptr i64 %244 to i64*, !mcsema_real_eip !32
  %246 = bitcast i64* %245 to i32*
  %247 = load i32, i32* %246, !mcsema_real_eip !32
  %248 = sext i32 %247 to i64, !mcsema_real_eip !32
  store i64 %248, i64* %RCX_val, !mcsema_real_eip !32
  %249 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %250 = add i64 %249, -32, !mcsema_real_eip !33
  %251 = inttoptr i64 %250 to i64*, !mcsema_real_eip !33
  %252 = load i64, i64* %251, !mcsema_real_eip !33
  store i64 %252, i64* %RDX_val, !mcsema_real_eip !33
  %253 = shl nsw i64 %248, 2
  %254 = add i64 %252, %253, !mcsema_real_eip !34
  %255 = inttoptr i64 %254 to i64*, !mcsema_real_eip !34
  %256 = load i64, i64* %RAX_val, !mcsema_real_eip !34
  %257 = trunc i64 %256 to i32, !mcsema_real_eip !34
  %258 = bitcast i64* %255 to i32*
  store i32 %257, i32* %258, !mcsema_real_eip !34
  %259 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %260 = add i64 %259, -40, !mcsema_real_eip !35
  %261 = inttoptr i64 %260 to i64*, !mcsema_real_eip !35
  %262 = bitcast i64* %261 to i32*
  %263 = load i32, i32* %262, !mcsema_real_eip !35
  %uadd215 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %263, i32 1)
  %264 = extractvalue { i32, i1 } %uadd215, 0
  %265 = xor i32 %264, %263, !mcsema_real_eip !36
  %266 = and i32 %265, 16, !mcsema_real_eip !36
  %267 = icmp ne i32 %266, 0, !mcsema_real_eip !36
  store i1 %267, i1* %AF_val, !mcsema_real_eip !36
  %268 = icmp slt i32 %264, 0
  store i1 %268, i1* %SF_val, !mcsema_real_eip !36
  %269 = icmp eq i32 %264, 0, !mcsema_real_eip !36
  store i1 %269, i1* %ZF_val, !mcsema_real_eip !36
  %270 = xor i32 %263, -2147483648, !mcsema_real_eip !36
  %271 = and i32 %265, %270, !mcsema_real_eip !36
  %272 = icmp slt i32 %271, 0
  store i1 %272, i1* %OF_val, !mcsema_real_eip !36
  %273 = trunc i32 %264 to i8, !mcsema_real_eip !36
  %274 = tail call i8 @llvm.ctpop.i8(i8 %273), !mcsema_real_eip !36
  %275 = and i8 %274, 1
  %276 = icmp eq i8 %275, 0
  store i1 %276, i1* %PF_val, !mcsema_real_eip !36
  %277 = extractvalue { i32, i1 } %uadd215, 1
  store i1 %277, i1* %CF_val, !mcsema_real_eip !36
  %278 = zext i32 %264 to i64, !mcsema_real_eip !36
  store i64 %278, i64* %RAX_val, !mcsema_real_eip !36
  %279 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %280 = add i64 %279, -40, !mcsema_real_eip !37
  %281 = inttoptr i64 %280 to i64*, !mcsema_real_eip !37
  %282 = bitcast i64* %281 to i32*
  store i32 %264, i32* %282, !mcsema_real_eip !37
  br label %block_0x122, !mcsema_real_eip !38

block_0x152:                                      ; preds = %block_0x122
  store i64 100, i64* %RDI_val, !mcsema_real_eip !39
  store i64 200, i64* %RSI_val, !mcsema_real_eip !40
  store i64 300, i64* %RDX_val, !mcsema_real_eip !41
  store i64 400, i64* %RCX_val, !mcsema_real_eip !42
  store i64 500, i64* %R8_val, !mcsema_real_eip !43
  store i64 600, i64* %R9_val, !mcsema_real_eip !44
  store i64 10, i64* %RAX_val, !mcsema_real_eip !45
  %283 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %284 = add i64 %283, -24, !mcsema_real_eip !46
  %285 = inttoptr i64 %284 to i64*, !mcsema_real_eip !46
  %286 = load i64, i64* %285, !mcsema_real_eip !46
  store i64 %286, i64* %R10_val, !mcsema_real_eip !46
  %287 = add i64 %283, -32, !mcsema_real_eip !47
  %288 = inttoptr i64 %287 to i64*, !mcsema_real_eip !47
  %289 = load i64, i64* %288, !mcsema_real_eip !47
  store i64 %289, i64* %R11_val, !mcsema_real_eip !47
  %290 = load i64, i64* %RSP_val, !mcsema_real_eip !48
  %291 = inttoptr i64 %290 to i64*, !mcsema_real_eip !48
  %292 = bitcast i64* %291 to i32*
  store i32 10, i32* %292, !mcsema_real_eip !48
  %293 = load i64, i64* %RSP_val, !mcsema_real_eip !49
  %294 = add i64 %293, 8, !mcsema_real_eip !49
  %295 = inttoptr i64 %294 to i64*, !mcsema_real_eip !49
  %296 = load i64, i64* %R10_val, !mcsema_real_eip !49
  store i64 %296, i64* %295, !mcsema_real_eip !49
  %297 = load i64, i64* %RSP_val, !mcsema_real_eip !50
  %298 = add i64 %297, 16, !mcsema_real_eip !50
  %299 = inttoptr i64 %298 to i64*, !mcsema_real_eip !50
  %300 = bitcast i64* %299 to i32*
  store i32 10, i32* %300, !mcsema_real_eip !50
  %301 = load i64, i64* %RSP_val, !mcsema_real_eip !51
  %302 = add i64 %301, 24, !mcsema_real_eip !51
  %303 = inttoptr i64 %302 to i64*, !mcsema_real_eip !51
  %304 = load i64, i64* %R11_val, !mcsema_real_eip !51
  store i64 %304, i64* %303, !mcsema_real_eip !51
  %305 = load i64, i64* %RBP_val, !mcsema_real_eip !52
  %306 = add i64 %305, -44, !mcsema_real_eip !52
  %307 = inttoptr i64 %306 to i64*, !mcsema_real_eip !52
  %308 = load i64, i64* %RAX_val, !mcsema_real_eip !52
  %309 = trunc i64 %308 to i32, !mcsema_real_eip !52
  %310 = bitcast i64* %307 to i32*
  store i32 %309, i32* %310, !mcsema_real_eip !52
  %311 = load i64, i64* %RSP_val, !mcsema_real_eip !53
  %312 = add i64 %311, -8
  %313 = inttoptr i64 %312 to i64*, !mcsema_real_eip !53
  store i64 -4981261766360305936, i64* %313, !mcsema_real_eip !53
  store i64 %312, i64* %RSP_val, !mcsema_real_eip !53
  %314 = load i64, i64* %RAX_val, !mcsema_real_eip !53
  store i64 %314, i64* %RAX, !mcsema_real_eip !53
  %315 = load i64, i64* %RBX_val, !mcsema_real_eip !53
  store i64 %315, i64* %RBX, !mcsema_real_eip !53
  %316 = load i64, i64* %RCX_val, !mcsema_real_eip !53
  store i64 %316, i64* %RCX, !mcsema_real_eip !53
  %317 = load i64, i64* %RDX_val, !mcsema_real_eip !53
  store i64 %317, i64* %RDX, !mcsema_real_eip !53
  %318 = load i64, i64* %RSI_val, !mcsema_real_eip !53
  store i64 %318, i64* %RSI, !mcsema_real_eip !53
  %319 = load i64, i64* %RDI_val, !mcsema_real_eip !53
  store i64 %319, i64* %RDI, !mcsema_real_eip !53
  %320 = load i64, i64* %RSP_val, !mcsema_real_eip !53
  store i64 %320, i64* %RSP, !mcsema_real_eip !53
  %321 = load i64, i64* %RBP_val, !mcsema_real_eip !53
  store i64 %321, i64* %RBP, !mcsema_real_eip !53
  %322 = load i64, i64* %R8_val, !mcsema_real_eip !53
  store i64 %322, i64* %R8, !mcsema_real_eip !53
  %323 = load i64, i64* %R9_val, !mcsema_real_eip !53
  store i64 %323, i64* %R9, !mcsema_real_eip !53
  %324 = load i64, i64* %R10_val, !mcsema_real_eip !53
  store i64 %324, i64* %R10, !mcsema_real_eip !53
  %325 = load i64, i64* %R11_val, !mcsema_real_eip !53
  store i64 %325, i64* %R11, !mcsema_real_eip !53
  %326 = load i64, i64* %R12_val, !mcsema_real_eip !53
  store i64 %326, i64* %R12, !mcsema_real_eip !53
  %327 = load i64, i64* %R13_val, !mcsema_real_eip !53
  store i64 %327, i64* %R13, !mcsema_real_eip !53
  %328 = load i64, i64* %R14_val, !mcsema_real_eip !53
  store i64 %328, i64* %R14, !mcsema_real_eip !53
  %329 = load i64, i64* %R15_val, !mcsema_real_eip !53
  store i64 %329, i64* %R15, !mcsema_real_eip !53
  %330 = load i64, i64* %RIP_val, !mcsema_real_eip !53
  store i64 %330, i64* %RIP, !mcsema_real_eip !53
  %331 = load i1, i1* %CF_val, !mcsema_real_eip !53
  store i1 %331, i1* %CF, align 1, !mcsema_real_eip !53
  %332 = load i1, i1* %PF_val, !mcsema_real_eip !53
  store i1 %332, i1* %PF, align 1, !mcsema_real_eip !53
  %333 = load i1, i1* %AF_val, !mcsema_real_eip !53
  store i1 %333, i1* %AF, align 1, !mcsema_real_eip !53
  %334 = load i1, i1* %ZF_val, !mcsema_real_eip !53
  store i1 %334, i1* %ZF, align 1, !mcsema_real_eip !53
  %335 = load i1, i1* %SF_val, !mcsema_real_eip !53
  store i1 %335, i1* %SF, align 1, !mcsema_real_eip !53
  %336 = load i1, i1* %OF_val, !mcsema_real_eip !53
  store i1 %336, i1* %OF, align 1, !mcsema_real_eip !53
  %337 = load i1, i1* %DF_val, !mcsema_real_eip !53
  store i1 %337, i1* %DF, align 1, !mcsema_real_eip !53
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !53
  %338 = load i1, i1* %FPU_B_val, !mcsema_real_eip !53
  store i1 %338, i1* %FPU_B, align 1, !mcsema_real_eip !53
  %339 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !53
  store i1 %339, i1* %FPU_C3, align 1, !mcsema_real_eip !53
  %340 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !53
  store i3 %340, i3* %FPU_TOP, align 1, !mcsema_real_eip !53
  %341 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !53
  store i1 %341, i1* %FPU_C2, align 1, !mcsema_real_eip !53
  %342 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !53
  store i1 %342, i1* %FPU_C1, align 1, !mcsema_real_eip !53
  %343 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !53
  store i1 %343, i1* %FPU_C0, align 1, !mcsema_real_eip !53
  %344 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !53
  store i1 %344, i1* %FPU_ES, align 1, !mcsema_real_eip !53
  %345 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !53
  store i1 %345, i1* %FPU_SF, align 1, !mcsema_real_eip !53
  %346 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !53
  store i1 %346, i1* %FPU_PE, align 1, !mcsema_real_eip !53
  %347 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !53
  store i1 %347, i1* %FPU_UE, align 1, !mcsema_real_eip !53
  %348 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !53
  store i1 %348, i1* %FPU_OE, align 1, !mcsema_real_eip !53
  %349 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !53
  store i1 %349, i1* %FPU_ZE, align 1, !mcsema_real_eip !53
  %350 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !53
  store i1 %350, i1* %FPU_DE, align 1, !mcsema_real_eip !53
  %351 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !53
  store i1 %351, i1* %FPU_IE, align 1, !mcsema_real_eip !53
  %352 = load i1, i1* %FPU_X_val, !mcsema_real_eip !53
  store i1 %352, i1* %FPU_X, align 1, !mcsema_real_eip !53
  %353 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !53
  store i2 %353, i2* %FPU_RC, align 1, !mcsema_real_eip !53
  %354 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !53
  store i2 %354, i2* %FPU_PC, align 1, !mcsema_real_eip !53
  %355 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !53
  store i1 %355, i1* %FPU_PM, align 1, !mcsema_real_eip !53
  %356 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !53
  store i1 %356, i1* %FPU_UM, align 1, !mcsema_real_eip !53
  %357 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !53
  store i1 %357, i1* %FPU_OM, align 1, !mcsema_real_eip !53
  %358 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !53
  store i1 %358, i1* %FPU_ZM, align 1, !mcsema_real_eip !53
  %359 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !53
  store i1 %359, i1* %FPU_DM, align 1, !mcsema_real_eip !53
  %360 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !53
  store i1 %360, i1* %FPU_IM, align 1, !mcsema_real_eip !53
  %361 = load i64, i64* %53, align 4
  store i64 %361, i64* %52, align 4
  %362 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !53
  store i16 %362, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !53
  %363 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !53
  store i64 %363, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !53
  %364 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !53
  store i16 %364, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !53
  %365 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !53
  store i64 %365, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !53
  %366 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !53
  store i11 %366, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !53
  %367 = load i128, i128* %XMM0_val, !mcsema_real_eip !53
  store i128 %367, i128* %XMM0, align 1, !mcsema_real_eip !53
  %368 = load i128, i128* %XMM1_val, !mcsema_real_eip !53
  store i128 %368, i128* %XMM1, align 1, !mcsema_real_eip !53
  %369 = load i128, i128* %XMM2_val, !mcsema_real_eip !53
  store i128 %369, i128* %XMM2, align 1, !mcsema_real_eip !53
  %370 = load i128, i128* %XMM3_val, !mcsema_real_eip !53
  store i128 %370, i128* %XMM3, align 1, !mcsema_real_eip !53
  %371 = load i128, i128* %XMM4_val, !mcsema_real_eip !53
  store i128 %371, i128* %XMM4, align 1, !mcsema_real_eip !53
  %372 = load i128, i128* %XMM5_val, !mcsema_real_eip !53
  store i128 %372, i128* %XMM5, align 1, !mcsema_real_eip !53
  %373 = load i128, i128* %XMM6_val, !mcsema_real_eip !53
  store i128 %373, i128* %XMM6, align 1, !mcsema_real_eip !53
  %374 = load i128, i128* %XMM7_val, !mcsema_real_eip !53
  store i128 %374, i128* %XMM7, align 1, !mcsema_real_eip !53
  %375 = load i128, i128* %XMM8_val, !mcsema_real_eip !53
  store i128 %375, i128* %XMM8, align 1, !mcsema_real_eip !53
  %376 = load i128, i128* %XMM9_val, !mcsema_real_eip !53
  store i128 %376, i128* %XMM9, align 1, !mcsema_real_eip !53
  %377 = load i128, i128* %XMM10_val, !mcsema_real_eip !53
  store i128 %377, i128* %XMM10, align 1, !mcsema_real_eip !53
  %378 = load i128, i128* %XMM11_val, !mcsema_real_eip !53
  store i128 %378, i128* %XMM11, align 1, !mcsema_real_eip !53
  %379 = load i128, i128* %XMM12_val, !mcsema_real_eip !53
  store i128 %379, i128* %XMM12, align 1, !mcsema_real_eip !53
  %380 = load i128, i128* %XMM13_val, !mcsema_real_eip !53
  store i128 %380, i128* %XMM13, align 1, !mcsema_real_eip !53
  %381 = load i128, i128* %XMM14_val, !mcsema_real_eip !53
  store i128 %381, i128* %XMM14, align 1, !mcsema_real_eip !53
  %382 = load i128, i128* %XMM15_val, !mcsema_real_eip !53
  store i128 %382, i128* %XMM15, align 1, !mcsema_real_eip !53
  %383 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !53
  store i64 %383, i64* %STACK_BASE, align 1, !mcsema_real_eip !53
  %384 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !53
  store i64 %384, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !53
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !53
  %385 = load i64, i64* %RAX, !mcsema_real_eip !53
  store i64 %385, i64* %RAX_val, !mcsema_real_eip !53
  %386 = load i64, i64* %RBX, !mcsema_real_eip !53
  store i64 %386, i64* %RBX_val, !mcsema_real_eip !53
  %387 = load i64, i64* %RCX, !mcsema_real_eip !53
  store i64 %387, i64* %RCX_val, !mcsema_real_eip !53
  %388 = load i64, i64* %RDX, !mcsema_real_eip !53
  store i64 %388, i64* %RDX_val, !mcsema_real_eip !53
  %389 = load i64, i64* %RSI, !mcsema_real_eip !53
  store i64 %389, i64* %RSI_val, !mcsema_real_eip !53
  %390 = load i64, i64* %RDI, !mcsema_real_eip !53
  store i64 %390, i64* %RDI_val, !mcsema_real_eip !53
  %391 = load i64, i64* %RSP, !mcsema_real_eip !53
  store i64 %391, i64* %RSP_val, !mcsema_real_eip !53
  %392 = load i64, i64* %RBP, !mcsema_real_eip !53
  store i64 %392, i64* %RBP_val, !mcsema_real_eip !53
  %393 = load i64, i64* %R8, !mcsema_real_eip !53
  store i64 %393, i64* %R8_val, !mcsema_real_eip !53
  %394 = load i64, i64* %R9, !mcsema_real_eip !53
  store i64 %394, i64* %R9_val, !mcsema_real_eip !53
  %395 = load i64, i64* %R10, !mcsema_real_eip !53
  store i64 %395, i64* %R10_val, !mcsema_real_eip !53
  %396 = load i64, i64* %R11, !mcsema_real_eip !53
  store i64 %396, i64* %R11_val, !mcsema_real_eip !53
  %397 = load i64, i64* %R12, !mcsema_real_eip !53
  store i64 %397, i64* %R12_val, !mcsema_real_eip !53
  %398 = load i64, i64* %R13, !mcsema_real_eip !53
  store i64 %398, i64* %R13_val, !mcsema_real_eip !53
  %399 = load i64, i64* %R14, !mcsema_real_eip !53
  store i64 %399, i64* %R14_val, !mcsema_real_eip !53
  %400 = load i64, i64* %R15, !mcsema_real_eip !53
  store i64 %400, i64* %R15_val, !mcsema_real_eip !53
  %401 = load i64, i64* %RIP, !mcsema_real_eip !53
  store i64 %401, i64* %RIP_val, !mcsema_real_eip !53
  %402 = load i1, i1* %CF, align 1, !mcsema_real_eip !53
  store i1 %402, i1* %CF_val, !mcsema_real_eip !53
  %403 = load i1, i1* %PF, align 1, !mcsema_real_eip !53
  store i1 %403, i1* %PF_val, !mcsema_real_eip !53
  %404 = load i1, i1* %AF, align 1, !mcsema_real_eip !53
  store i1 %404, i1* %AF_val, !mcsema_real_eip !53
  %405 = load i1, i1* %ZF, align 1, !mcsema_real_eip !53
  store i1 %405, i1* %ZF_val, !mcsema_real_eip !53
  %406 = load i1, i1* %SF, align 1, !mcsema_real_eip !53
  store i1 %406, i1* %SF_val, !mcsema_real_eip !53
  %407 = load i1, i1* %OF, align 1, !mcsema_real_eip !53
  store i1 %407, i1* %OF_val, !mcsema_real_eip !53
  %408 = load i1, i1* %DF, align 1, !mcsema_real_eip !53
  store i1 %408, i1* %DF_val, !mcsema_real_eip !53
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !53
  %409 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !53
  store i1 %409, i1* %FPU_B_val, !mcsema_real_eip !53
  %410 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !53
  store i1 %410, i1* %FPU_C3_val, !mcsema_real_eip !53
  %411 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !53
  store i3 %411, i3* %FPU_TOP_val, !mcsema_real_eip !53
  %412 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !53
  store i1 %412, i1* %FPU_C2_val, !mcsema_real_eip !53
  %413 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !53
  store i1 %413, i1* %FPU_C1_val, !mcsema_real_eip !53
  %414 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !53
  store i1 %414, i1* %FPU_C0_val, !mcsema_real_eip !53
  %415 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !53
  store i1 %415, i1* %FPU_ES_val, !mcsema_real_eip !53
  %416 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !53
  store i1 %416, i1* %FPU_SF_val, !mcsema_real_eip !53
  %417 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !53
  store i1 %417, i1* %FPU_PE_val, !mcsema_real_eip !53
  %418 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !53
  store i1 %418, i1* %FPU_UE_val, !mcsema_real_eip !53
  %419 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !53
  store i1 %419, i1* %FPU_OE_val, !mcsema_real_eip !53
  %420 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !53
  store i1 %420, i1* %FPU_ZE_val, !mcsema_real_eip !53
  %421 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !53
  store i1 %421, i1* %FPU_DE_val, !mcsema_real_eip !53
  %422 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !53
  store i1 %422, i1* %FPU_IE_val, !mcsema_real_eip !53
  %423 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !53
  store i1 %423, i1* %FPU_X_val, !mcsema_real_eip !53
  %424 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !53
  store i2 %424, i2* %FPU_RC_val, !mcsema_real_eip !53
  %425 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !53
  store i2 %425, i2* %FPU_PC_val, !mcsema_real_eip !53
  %426 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !53
  store i1 %426, i1* %FPU_PM_val, !mcsema_real_eip !53
  %427 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !53
  store i1 %427, i1* %FPU_UM_val, !mcsema_real_eip !53
  %428 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !53
  store i1 %428, i1* %FPU_OM_val, !mcsema_real_eip !53
  %429 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !53
  store i1 %429, i1* %FPU_ZM_val, !mcsema_real_eip !53
  %430 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !53
  store i1 %430, i1* %FPU_DM_val, !mcsema_real_eip !53
  %431 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !53
  store i1 %431, i1* %FPU_IM_val, !mcsema_real_eip !53
  %432 = load i64, i64* %52, align 4
  store i64 %432, i64* %53, align 4
  %433 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !53
  store i16 %433, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !53
  %434 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !53
  store i64 %434, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !53
  %435 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !53
  store i16 %435, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !53
  %436 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !53
  store i64 %436, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !53
  %437 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !53
  store i11 %437, i11* %FPU_FOPCODE_val, !mcsema_real_eip !53
  %438 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !53
  store i128 %438, i128* %XMM0_val, !mcsema_real_eip !53
  %439 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !53
  store i128 %439, i128* %XMM1_val, !mcsema_real_eip !53
  %440 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !53
  store i128 %440, i128* %XMM2_val, !mcsema_real_eip !53
  %441 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !53
  store i128 %441, i128* %XMM3_val, !mcsema_real_eip !53
  %442 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !53
  store i128 %442, i128* %XMM4_val, !mcsema_real_eip !53
  %443 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !53
  store i128 %443, i128* %XMM5_val, !mcsema_real_eip !53
  %444 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !53
  store i128 %444, i128* %XMM6_val, !mcsema_real_eip !53
  %445 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !53
  store i128 %445, i128* %XMM7_val, !mcsema_real_eip !53
  %446 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !53
  store i128 %446, i128* %XMM8_val, !mcsema_real_eip !53
  %447 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !53
  store i128 %447, i128* %XMM9_val, !mcsema_real_eip !53
  %448 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !53
  store i128 %448, i128* %XMM10_val, !mcsema_real_eip !53
  %449 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !53
  store i128 %449, i128* %XMM11_val, !mcsema_real_eip !53
  %450 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !53
  store i128 %450, i128* %XMM12_val, !mcsema_real_eip !53
  %451 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !53
  store i128 %451, i128* %XMM13_val, !mcsema_real_eip !53
  %452 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !53
  store i128 %452, i128* %XMM14_val, !mcsema_real_eip !53
  %453 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !53
  store i128 %453, i128* %XMM15_val, !mcsema_real_eip !53
  %454 = load i64, i64* %STACK_BASE, !mcsema_real_eip !53
  store i64 %454, i64* %STACK_BASE_val, !mcsema_real_eip !53
  %455 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !53
  store i64 %455, i64* %STACK_LIMIT_val, !mcsema_real_eip !53
  %456 = load i64, i64* %RSP_val, !mcsema_real_eip !54
  %uadd216 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %456, i64 80)
  %457 = extractvalue { i64, i1 } %uadd216, 0
  %458 = xor i64 %457, %456, !mcsema_real_eip !54
  %459 = and i64 %458, 16
  %460 = icmp eq i64 %459, 0
  store i1 %460, i1* %AF_val, !mcsema_real_eip !54
  %461 = icmp slt i64 %457, 0
  store i1 %461, i1* %SF_val, !mcsema_real_eip !54
  %462 = icmp eq i64 %457, 0, !mcsema_real_eip !54
  store i1 %462, i1* %ZF_val, !mcsema_real_eip !54
  %463 = xor i64 %456, -9223372036854775808, !mcsema_real_eip !54
  %464 = and i64 %458, %463, !mcsema_real_eip !54
  %465 = icmp slt i64 %464, 0
  store i1 %465, i1* %OF_val, !mcsema_real_eip !54
  %466 = trunc i64 %457 to i8, !mcsema_real_eip !54
  %467 = tail call i8 @llvm.ctpop.i8(i8 %466), !mcsema_real_eip !54
  %468 = and i8 %467, 1
  %469 = icmp eq i8 %468, 0
  store i1 %469, i1* %PF_val, !mcsema_real_eip !54
  %470 = extractvalue { i64, i1 } %uadd216, 1
  store i1 %470, i1* %CF_val, !mcsema_real_eip !54
  store i64 %457, i64* %RSP_val, !mcsema_real_eip !54
  %471 = inttoptr i64 %457 to i64*, !mcsema_real_eip !55
  %472 = load i64, i64* %471, !mcsema_real_eip !55
  store i64 %472, i64* %RBP_val, !mcsema_real_eip !55
  %473 = add i64 %457, 16, !mcsema_real_eip !56
  store i64 %473, i64* %RSP_val, !mcsema_real_eip !56
  %474 = load i64, i64* %RAX_val, !mcsema_real_eip !56
  store i64 %474, i64* %RAX, !mcsema_real_eip !56
  %475 = load i64, i64* %RBX_val, !mcsema_real_eip !56
  store i64 %475, i64* %RBX, !mcsema_real_eip !56
  %476 = load i64, i64* %RCX_val, !mcsema_real_eip !56
  store i64 %476, i64* %RCX, !mcsema_real_eip !56
  %477 = load i64, i64* %RDX_val, !mcsema_real_eip !56
  store i64 %477, i64* %RDX, !mcsema_real_eip !56
  %478 = load i64, i64* %RSI_val, !mcsema_real_eip !56
  store i64 %478, i64* %RSI, !mcsema_real_eip !56
  %479 = load i64, i64* %RDI_val, !mcsema_real_eip !56
  store i64 %479, i64* %RDI, !mcsema_real_eip !56
  %480 = load i64, i64* %RSP_val, !mcsema_real_eip !56
  store i64 %480, i64* %RSP, !mcsema_real_eip !56
  %481 = load i64, i64* %RBP_val, !mcsema_real_eip !56
  store i64 %481, i64* %RBP, !mcsema_real_eip !56
  %482 = load i64, i64* %R8_val, !mcsema_real_eip !56
  store i64 %482, i64* %R8, !mcsema_real_eip !56
  %483 = load i64, i64* %R9_val, !mcsema_real_eip !56
  store i64 %483, i64* %R9, !mcsema_real_eip !56
  %484 = load i64, i64* %R10_val, !mcsema_real_eip !56
  store i64 %484, i64* %R10, !mcsema_real_eip !56
  %485 = load i64, i64* %R11_val, !mcsema_real_eip !56
  store i64 %485, i64* %R11, !mcsema_real_eip !56
  %486 = load i64, i64* %R12_val, !mcsema_real_eip !56
  store i64 %486, i64* %R12, !mcsema_real_eip !56
  %487 = load i64, i64* %R13_val, !mcsema_real_eip !56
  store i64 %487, i64* %R13, !mcsema_real_eip !56
  %488 = load i64, i64* %R14_val, !mcsema_real_eip !56
  store i64 %488, i64* %R14, !mcsema_real_eip !56
  %489 = load i64, i64* %R15_val, !mcsema_real_eip !56
  store i64 %489, i64* %R15, !mcsema_real_eip !56
  %490 = load i64, i64* %RIP_val, !mcsema_real_eip !56
  store i64 %490, i64* %RIP, !mcsema_real_eip !56
  %491 = load i1, i1* %CF_val, !mcsema_real_eip !56
  store i1 %491, i1* %CF, align 1, !mcsema_real_eip !56
  %492 = load i1, i1* %PF_val, !mcsema_real_eip !56
  store i1 %492, i1* %PF, align 1, !mcsema_real_eip !56
  %493 = load i1, i1* %AF_val, !mcsema_real_eip !56
  store i1 %493, i1* %AF, align 1, !mcsema_real_eip !56
  %494 = load i1, i1* %ZF_val, !mcsema_real_eip !56
  store i1 %494, i1* %ZF, align 1, !mcsema_real_eip !56
  %495 = load i1, i1* %SF_val, !mcsema_real_eip !56
  store i1 %495, i1* %SF, align 1, !mcsema_real_eip !56
  %496 = load i1, i1* %OF_val, !mcsema_real_eip !56
  store i1 %496, i1* %OF, align 1, !mcsema_real_eip !56
  %497 = load i1, i1* %DF_val, !mcsema_real_eip !56
  store i1 %497, i1* %DF, align 1, !mcsema_real_eip !56
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !56
  %498 = load i1, i1* %FPU_B_val, !mcsema_real_eip !56
  store i1 %498, i1* %FPU_B, align 1, !mcsema_real_eip !56
  %499 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !56
  store i1 %499, i1* %FPU_C3, align 1, !mcsema_real_eip !56
  %500 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !56
  store i3 %500, i3* %FPU_TOP, align 1, !mcsema_real_eip !56
  %501 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !56
  store i1 %501, i1* %FPU_C2, align 1, !mcsema_real_eip !56
  %502 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !56
  store i1 %502, i1* %FPU_C1, align 1, !mcsema_real_eip !56
  %503 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !56
  store i1 %503, i1* %FPU_C0, align 1, !mcsema_real_eip !56
  %504 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !56
  store i1 %504, i1* %FPU_ES, align 1, !mcsema_real_eip !56
  %505 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !56
  store i1 %505, i1* %FPU_SF, align 1, !mcsema_real_eip !56
  %506 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !56
  store i1 %506, i1* %FPU_PE, align 1, !mcsema_real_eip !56
  %507 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !56
  store i1 %507, i1* %FPU_UE, align 1, !mcsema_real_eip !56
  %508 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !56
  store i1 %508, i1* %FPU_OE, align 1, !mcsema_real_eip !56
  %509 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !56
  store i1 %509, i1* %FPU_ZE, align 1, !mcsema_real_eip !56
  %510 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !56
  store i1 %510, i1* %FPU_DE, align 1, !mcsema_real_eip !56
  %511 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !56
  store i1 %511, i1* %FPU_IE, align 1, !mcsema_real_eip !56
  %512 = load i1, i1* %FPU_X_val, !mcsema_real_eip !56
  store i1 %512, i1* %FPU_X, align 1, !mcsema_real_eip !56
  %513 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !56
  store i2 %513, i2* %FPU_RC, align 1, !mcsema_real_eip !56
  %514 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !56
  store i2 %514, i2* %FPU_PC, align 1, !mcsema_real_eip !56
  %515 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !56
  store i1 %515, i1* %FPU_PM, align 1, !mcsema_real_eip !56
  %516 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !56
  store i1 %516, i1* %FPU_UM, align 1, !mcsema_real_eip !56
  %517 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !56
  store i1 %517, i1* %FPU_OM, align 1, !mcsema_real_eip !56
  %518 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !56
  store i1 %518, i1* %FPU_ZM, align 1, !mcsema_real_eip !56
  %519 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !56
  store i1 %519, i1* %FPU_DM, align 1, !mcsema_real_eip !56
  %520 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !56
  store i1 %520, i1* %FPU_IM, align 1, !mcsema_real_eip !56
  %521 = load i64, i64* %53, align 4
  store i64 %521, i64* %52, align 4
  %522 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !56
  store i16 %522, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !56
  %523 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !56
  store i64 %523, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !56
  %524 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !56
  store i16 %524, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !56
  %525 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !56
  store i64 %525, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !56
  %526 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !56
  store i11 %526, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !56
  %527 = load i128, i128* %XMM0_val, !mcsema_real_eip !56
  store i128 %527, i128* %XMM0, align 1, !mcsema_real_eip !56
  %528 = load i128, i128* %XMM1_val, !mcsema_real_eip !56
  store i128 %528, i128* %XMM1, align 1, !mcsema_real_eip !56
  %529 = load i128, i128* %XMM2_val, !mcsema_real_eip !56
  store i128 %529, i128* %XMM2, align 1, !mcsema_real_eip !56
  %530 = load i128, i128* %XMM3_val, !mcsema_real_eip !56
  store i128 %530, i128* %XMM3, align 1, !mcsema_real_eip !56
  %531 = load i128, i128* %XMM4_val, !mcsema_real_eip !56
  store i128 %531, i128* %XMM4, align 1, !mcsema_real_eip !56
  %532 = load i128, i128* %XMM5_val, !mcsema_real_eip !56
  store i128 %532, i128* %XMM5, align 1, !mcsema_real_eip !56
  %533 = load i128, i128* %XMM6_val, !mcsema_real_eip !56
  store i128 %533, i128* %XMM6, align 1, !mcsema_real_eip !56
  %534 = load i128, i128* %XMM7_val, !mcsema_real_eip !56
  store i128 %534, i128* %XMM7, align 1, !mcsema_real_eip !56
  %535 = load i128, i128* %XMM8_val, !mcsema_real_eip !56
  store i128 %535, i128* %XMM8, align 1, !mcsema_real_eip !56
  %536 = load i128, i128* %XMM9_val, !mcsema_real_eip !56
  store i128 %536, i128* %XMM9, align 1, !mcsema_real_eip !56
  %537 = load i128, i128* %XMM10_val, !mcsema_real_eip !56
  store i128 %537, i128* %XMM10, align 1, !mcsema_real_eip !56
  %538 = load i128, i128* %XMM11_val, !mcsema_real_eip !56
  store i128 %538, i128* %XMM11, align 1, !mcsema_real_eip !56
  %539 = load i128, i128* %XMM12_val, !mcsema_real_eip !56
  store i128 %539, i128* %XMM12, align 1, !mcsema_real_eip !56
  %540 = load i128, i128* %XMM13_val, !mcsema_real_eip !56
  store i128 %540, i128* %XMM13, align 1, !mcsema_real_eip !56
  %541 = load i128, i128* %XMM14_val, !mcsema_real_eip !56
  store i128 %541, i128* %XMM14, align 1, !mcsema_real_eip !56
  %542 = load i128, i128* %XMM15_val, !mcsema_real_eip !56
  store i128 %542, i128* %XMM15, align 1, !mcsema_real_eip !56
  %543 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !56
  store i64 %543, i64* %STACK_BASE, align 1, !mcsema_real_eip !56
  %544 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !56
  store i64 %544, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !56
  ret void, !mcsema_real_eip !56
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !57
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !57
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !57
  %XMM15_val = alloca i128, !mcsema_real_eip !57
  %XMM14_val = alloca i128, !mcsema_real_eip !57
  %XMM13_val = alloca i128, !mcsema_real_eip !57
  %XMM12_val = alloca i128, !mcsema_real_eip !57
  %XMM11_val = alloca i128, !mcsema_real_eip !57
  %XMM10_val = alloca i128, !mcsema_real_eip !57
  %XMM9_val = alloca i128, !mcsema_real_eip !57
  %XMM8_val = alloca i128, !mcsema_real_eip !57
  %XMM7_val = alloca i128, !mcsema_real_eip !57
  %XMM6_val = alloca i128, !mcsema_real_eip !57
  %XMM5_val = alloca i128, !mcsema_real_eip !57
  %XMM4_val = alloca i128, !mcsema_real_eip !57
  %XMM3_val = alloca i128, !mcsema_real_eip !57
  %XMM2_val = alloca i128, !mcsema_real_eip !57
  %XMM1_val = alloca i128, !mcsema_real_eip !57
  %XMM0_val = alloca i128, !mcsema_real_eip !57
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !57
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !57
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !57
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !57
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !57
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !57
  %FPU_IM_val = alloca i1, !mcsema_real_eip !57
  %FPU_DM_val = alloca i1, !mcsema_real_eip !57
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !57
  %FPU_OM_val = alloca i1, !mcsema_real_eip !57
  %FPU_UM_val = alloca i1, !mcsema_real_eip !57
  %FPU_PM_val = alloca i1, !mcsema_real_eip !57
  %FPU_PC_val = alloca i2, !mcsema_real_eip !57
  %FPU_RC_val = alloca i2, !mcsema_real_eip !57
  %FPU_X_val = alloca i1, !mcsema_real_eip !57
  %FPU_IE_val = alloca i1, !mcsema_real_eip !57
  %FPU_DE_val = alloca i1, !mcsema_real_eip !57
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !57
  %FPU_OE_val = alloca i1, !mcsema_real_eip !57
  %FPU_UE_val = alloca i1, !mcsema_real_eip !57
  %FPU_PE_val = alloca i1, !mcsema_real_eip !57
  %FPU_SF_val = alloca i1, !mcsema_real_eip !57
  %FPU_ES_val = alloca i1, !mcsema_real_eip !57
  %FPU_C0_val = alloca i1, !mcsema_real_eip !57
  %FPU_C1_val = alloca i1, !mcsema_real_eip !57
  %FPU_C2_val = alloca i1, !mcsema_real_eip !57
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !57
  %FPU_C3_val = alloca i1, !mcsema_real_eip !57
  %FPU_B_val = alloca i1, !mcsema_real_eip !57
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !57
  %DF_val = alloca i1, !mcsema_real_eip !57
  %OF_val = alloca i1, !mcsema_real_eip !57
  %SF_val = alloca i1, !mcsema_real_eip !57
  %CF_val = alloca i1, !mcsema_real_eip !57
  %AF_val = alloca i1, !mcsema_real_eip !57
  %PF_val = alloca i1, !mcsema_real_eip !57
  %ZF_val = alloca i1, !mcsema_real_eip !57
  %RIP_val = alloca i64, !mcsema_real_eip !57
  %R14_val = alloca i64, !mcsema_real_eip !57
  %R13_val = alloca i64, !mcsema_real_eip !57
  %R12_val = alloca i64, !mcsema_real_eip !57
  %R11_val = alloca i64, !mcsema_real_eip !57
  %R10_val = alloca i64, !mcsema_real_eip !57
  %R9_val = alloca i64, !mcsema_real_eip !57
  %R8_val = alloca i64, !mcsema_real_eip !57
  %RSP_val = alloca i64, !mcsema_real_eip !57
  %RBP_val = alloca i64, !mcsema_real_eip !57
  %RDI_val = alloca i64, !mcsema_real_eip !57
  %RSI_val = alloca i64, !mcsema_real_eip !57
  %RDX_val = alloca i64, !mcsema_real_eip !57
  %RCX_val = alloca i64, !mcsema_real_eip !57
  %RBX_val = alloca i64, !mcsema_real_eip !57
  %RAX_val = alloca i64, !mcsema_real_eip !57
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !57
  %1 = load i64, i64* %RAX, !mcsema_real_eip !57
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !57
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !57
  %2 = load i64, i64* %RBX, !mcsema_real_eip !57
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !57
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !57
  %3 = load i64, i64* %RCX, !mcsema_real_eip !57
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !57
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !57
  %4 = load i64, i64* %RDX, !mcsema_real_eip !57
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !57
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !57
  %5 = load i64, i64* %RSI, !mcsema_real_eip !57
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !57
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !57
  %6 = load i64, i64* %RDI, !mcsema_real_eip !57
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !57
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !57
  %7 = load i64, i64* %RSP, !mcsema_real_eip !57
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !57
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !57
  %8 = load i64, i64* %RBP, !mcsema_real_eip !57
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !57
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !57
  %9 = load i64, i64* %R8, !mcsema_real_eip !57
  store i64 %9, i64* %R8_val, !mcsema_real_eip !57
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !57
  %10 = load i64, i64* %R9, !mcsema_real_eip !57
  store i64 %10, i64* %R9_val, !mcsema_real_eip !57
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !57
  %11 = load i64, i64* %R10, !mcsema_real_eip !57
  store i64 %11, i64* %R10_val, !mcsema_real_eip !57
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !57
  %12 = load i64, i64* %R11, !mcsema_real_eip !57
  store i64 %12, i64* %R11_val, !mcsema_real_eip !57
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !57
  %13 = load i64, i64* %R12, !mcsema_real_eip !57
  store i64 %13, i64* %R12_val, !mcsema_real_eip !57
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !57
  %14 = load i64, i64* %R13, !mcsema_real_eip !57
  store i64 %14, i64* %R13_val, !mcsema_real_eip !57
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !57
  %15 = load i64, i64* %R14, !mcsema_real_eip !57
  store i64 %15, i64* %R14_val, !mcsema_real_eip !57
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !57
  %16 = load i64, i64* %R15, !mcsema_real_eip !57
  store i64 %16, i64* %R15_val, !mcsema_real_eip !57
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !57
  %17 = load i64, i64* %RIP, !mcsema_real_eip !57
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !57
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !57
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !57
  store i1 %18, i1* %CF_val, !mcsema_real_eip !57
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !57
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !57
  store i1 %19, i1* %PF_val, !mcsema_real_eip !57
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !57
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !57
  store i1 %20, i1* %AF_val, !mcsema_real_eip !57
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !57
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !57
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !57
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !57
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !57
  store i1 %22, i1* %SF_val, !mcsema_real_eip !57
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !57
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !57
  store i1 %23, i1* %OF_val, !mcsema_real_eip !57
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !57
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !57
  store i1 %24, i1* %DF_val, !mcsema_real_eip !57
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !57
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !57
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !57
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !57
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !57
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !57
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !57
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !57
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !57
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !57
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !57
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !57
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !57
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !57
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !57
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !57
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !57
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !57
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !57
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !57
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !57
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !57
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !57
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !57
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !57
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !57
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !57
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !57
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !57
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !57
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !57
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !57
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !57
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !57
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !57
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !57
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !57
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !57
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !57
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !57
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !57
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !57
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !57
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !57
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !57
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !57
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !57
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !57
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !57
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !57
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !57
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !57
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !57
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !57
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !57
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !57
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !57
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !57
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !57
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !57
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !57
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !57
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !57
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !57
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !57
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !57
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !57
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !57
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !57
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !57
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !57
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !57
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !57
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !57
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !57
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !57
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !57
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !57
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !57
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !57
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !57
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !57
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !57
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !57
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !57
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !57
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !57
  %59 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !57
  store i11 %59, i11* %FPU_FOPCODE_val, !mcsema_real_eip !57
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !57
  %60 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !57
  store i128 %60, i128* %XMM0_val, !mcsema_real_eip !57
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !57
  %61 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !57
  store i128 %61, i128* %XMM1_val, !mcsema_real_eip !57
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !57
  %62 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !57
  store i128 %62, i128* %XMM2_val, !mcsema_real_eip !57
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !57
  %63 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !57
  store i128 %63, i128* %XMM3_val, !mcsema_real_eip !57
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !57
  %64 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !57
  store i128 %64, i128* %XMM4_val, !mcsema_real_eip !57
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !57
  %65 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !57
  store i128 %65, i128* %XMM5_val, !mcsema_real_eip !57
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !57
  %66 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !57
  store i128 %66, i128* %XMM6_val, !mcsema_real_eip !57
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !57
  %67 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !57
  store i128 %67, i128* %XMM7_val, !mcsema_real_eip !57
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !57
  %68 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !57
  store i128 %68, i128* %XMM8_val, !mcsema_real_eip !57
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !57
  %69 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !57
  store i128 %69, i128* %XMM9_val, !mcsema_real_eip !57
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !57
  %70 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !57
  store i128 %70, i128* %XMM10_val, !mcsema_real_eip !57
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !57
  %71 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !57
  store i128 %71, i128* %XMM11_val, !mcsema_real_eip !57
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !57
  %72 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !57
  store i128 %72, i128* %XMM12_val, !mcsema_real_eip !57
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !57
  %73 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !57
  store i128 %73, i128* %XMM13_val, !mcsema_real_eip !57
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !57
  %74 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !57
  store i128 %74, i128* %XMM14_val, !mcsema_real_eip !57
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !57
  %75 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !57
  store i128 %75, i128* %XMM15_val, !mcsema_real_eip !57
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !57
  %76 = load i64, i64* %STACK_BASE, !mcsema_real_eip !57
  store i64 %76, i64* %STACK_BASE_val, !mcsema_real_eip !57
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !57
  %77 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !57
  store i64 %77, i64* %STACK_LIMIT_val, !mcsema_real_eip !57
  %78 = load i64, i64* %RBP_val, !mcsema_real_eip !57
  %79 = load i64, i64* %RSP_val, !mcsema_real_eip !57
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !57
  store i64 %78, i64* %81, !mcsema_real_eip !57
  store i64 %80, i64* %RBP_val, !mcsema_real_eip !58
  %82 = load i64, i64* %RBX_val, !mcsema_real_eip !59
  %83 = add i64 %79, -16
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !59
  store i64 %82, i64* %84, !mcsema_real_eip !59
  store i64 %83, i64* %RSP_val, !mcsema_real_eip !59
  %85 = load i64, i64* %RBP_val, !mcsema_real_eip !60
  %86 = add i64 %85, 40, !mcsema_real_eip !60
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !60
  %88 = load i64, i64* %87, !mcsema_real_eip !60
  store i64 %88, i64* %RAX_val, !mcsema_real_eip !60
  %89 = add i64 %85, 32, !mcsema_real_eip !61
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !61
  %91 = bitcast i64* %90 to i32*
  %92 = load i32, i32* %91, !mcsema_real_eip !61
  %93 = zext i32 %92 to i64, !mcsema_real_eip !61
  store i64 %93, i64* %R10_val, !mcsema_real_eip !61
  %94 = load i64, i64* %RBP_val, !mcsema_real_eip !62
  %95 = add i64 %94, 24, !mcsema_real_eip !62
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !62
  %97 = load i64, i64* %96, !mcsema_real_eip !62
  store i64 %97, i64* %R11_val, !mcsema_real_eip !62
  %98 = add i64 %94, 16, !mcsema_real_eip !63
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !63
  %100 = bitcast i64* %99 to i32*
  %101 = load i32, i32* %100, !mcsema_real_eip !63
  %102 = zext i32 %101 to i64, !mcsema_real_eip !63
  store i64 %102, i64* %RBX_val, !mcsema_real_eip !63
  %103 = load i64, i64* %RBP_val, !mcsema_real_eip !64
  %104 = add i64 %103, -12, !mcsema_real_eip !64
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !64
  %106 = load i64, i64* %RDI_val, !mcsema_real_eip !64
  %107 = trunc i64 %106 to i32, !mcsema_real_eip !64
  %108 = bitcast i64* %105 to i32*
  store i32 %107, i32* %108, !mcsema_real_eip !64
  %109 = load i64, i64* %RBP_val, !mcsema_real_eip !65
  %110 = add i64 %109, -16, !mcsema_real_eip !65
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !65
  %112 = load i64, i64* %RSI_val, !mcsema_real_eip !65
  %113 = trunc i64 %112 to i32, !mcsema_real_eip !65
  %114 = bitcast i64* %111 to i32*
  store i32 %113, i32* %114, !mcsema_real_eip !65
  %115 = load i64, i64* %RBP_val, !mcsema_real_eip !66
  %116 = add i64 %115, -20, !mcsema_real_eip !66
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !66
  %118 = load i64, i64* %RDX_val, !mcsema_real_eip !66
  %119 = trunc i64 %118 to i32, !mcsema_real_eip !66
  %120 = bitcast i64* %117 to i32*
  store i32 %119, i32* %120, !mcsema_real_eip !66
  %121 = load i64, i64* %RBP_val, !mcsema_real_eip !67
  %122 = add i64 %121, -24, !mcsema_real_eip !67
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !67
  %124 = load i64, i64* %RCX_val, !mcsema_real_eip !67
  %125 = trunc i64 %124 to i32, !mcsema_real_eip !67
  %126 = bitcast i64* %123 to i32*
  store i32 %125, i32* %126, !mcsema_real_eip !67
  %127 = load i64, i64* %RBP_val, !mcsema_real_eip !68
  %128 = add i64 %127, -28, !mcsema_real_eip !68
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !68
  %130 = load i64, i64* %R8_val, !mcsema_real_eip !68
  %131 = trunc i64 %130 to i32, !mcsema_real_eip !68
  %132 = bitcast i64* %129 to i32*
  store i32 %131, i32* %132, !mcsema_real_eip !68
  %133 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  %134 = add i64 %133, -32, !mcsema_real_eip !69
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !69
  %136 = load i64, i64* %R9_val, !mcsema_real_eip !69
  %137 = trunc i64 %136 to i32, !mcsema_real_eip !69
  %138 = bitcast i64* %135 to i32*
  store i32 %137, i32* %138, !mcsema_real_eip !69
  %139 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %140 = add i64 %139, -36, !mcsema_real_eip !70
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !70
  %142 = load i64, i64* %RBX_val, !mcsema_real_eip !70
  %143 = trunc i64 %142 to i32, !mcsema_real_eip !70
  %144 = bitcast i64* %141 to i32*
  store i32 %143, i32* %144, !mcsema_real_eip !70
  %145 = load i64, i64* %RBP_val, !mcsema_real_eip !71
  %146 = add i64 %145, -48, !mcsema_real_eip !71
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !71
  %148 = load i64, i64* %R11_val, !mcsema_real_eip !71
  store i64 %148, i64* %147, !mcsema_real_eip !71
  %149 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %150 = add i64 %149, -52, !mcsema_real_eip !72
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !72
  %152 = load i64, i64* %R10_val, !mcsema_real_eip !72
  %153 = trunc i64 %152 to i32, !mcsema_real_eip !72
  %154 = bitcast i64* %151 to i32*
  store i32 %153, i32* %154, !mcsema_real_eip !72
  %155 = load i64, i64* %RBP_val, !mcsema_real_eip !73
  %156 = add i64 %155, -64, !mcsema_real_eip !73
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !73
  %158 = load i64, i64* %RAX_val, !mcsema_real_eip !73
  store i64 %158, i64* %157, !mcsema_real_eip !73
  %159 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %160 = add i64 %159, -68, !mcsema_real_eip !74
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !74
  %162 = bitcast i64* %161 to i32*
  store i32 0, i32* %162, !mcsema_real_eip !74
  %163 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %164 = add i64 %163, -72, !mcsema_real_eip !75
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !75
  %166 = bitcast i64* %165 to i32*
  store i32 0, i32* %166, !mcsema_real_eip !75
  br label %block_0x45, !mcsema_real_eip !76

block_0x45:                                       ; preds = %block_0x51, %entry
  %167 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %168 = add i64 %167, -72, !mcsema_real_eip !76
  %169 = inttoptr i64 %168 to i64*, !mcsema_real_eip !76
  %170 = bitcast i64* %169 to i32*
  %171 = load i32, i32* %170, !mcsema_real_eip !76
  %172 = zext i32 %171 to i64, !mcsema_real_eip !76
  store i64 %172, i64* %RAX_val, !mcsema_real_eip !76
  %173 = load i64, i64* %RBP_val, !mcsema_real_eip !77
  %174 = add i64 %173, -36, !mcsema_real_eip !77
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !77
  %176 = bitcast i64* %175 to i32*
  %177 = load i32, i32* %176, !mcsema_real_eip !77
  %178 = sub i32 %171, %177, !mcsema_real_eip !77
  %179 = xor i32 %178, %171, !mcsema_real_eip !77
  %180 = xor i32 %179, %177, !mcsema_real_eip !77
  %181 = and i32 %180, 16, !mcsema_real_eip !77
  %182 = icmp ne i32 %181, 0, !mcsema_real_eip !77
  store i1 %182, i1* %AF_val, !mcsema_real_eip !77
  %183 = trunc i32 %178 to i8, !mcsema_real_eip !77
  %184 = tail call i8 @llvm.ctpop.i8(i8 %183), !mcsema_real_eip !77
  %185 = and i8 %184, 1
  %186 = icmp eq i8 %185, 0
  store i1 %186, i1* %PF_val, !mcsema_real_eip !77
  %187 = icmp eq i32 %171, %177
  store i1 %187, i1* %ZF_val, !mcsema_real_eip !77
  %188 = icmp slt i32 %178, 0
  store i1 %188, i1* %SF_val, !mcsema_real_eip !77
  %189 = icmp ult i32 %171, %177, !mcsema_real_eip !77
  store i1 %189, i1* %CF_val, !mcsema_real_eip !77
  %190 = xor i32 %177, %171, !mcsema_real_eip !77
  %191 = and i32 %179, %190, !mcsema_real_eip !77
  %192 = icmp slt i32 %191, 0
  store i1 %192, i1* %OF_val, !mcsema_real_eip !77
  %193 = load i1, i1* %SF_val, !mcsema_real_eip !78
  %tmp = xor i1 %193, %192
  %194 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  br i1 %tmp, label %block_0x51, label %block_0x7f, !mcsema_real_eip !78

block_0x51:                                       ; preds = %block_0x45
  %195 = add i64 %194, -72, !mcsema_real_eip !80
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !80
  %197 = bitcast i64* %196 to i32*
  %198 = load i32, i32* %197, !mcsema_real_eip !80
  %199 = sext i32 %198 to i64, !mcsema_real_eip !80
  store i64 %199, i64* %RAX_val, !mcsema_real_eip !80
  %200 = load i64, i64* %RBP_val, !mcsema_real_eip !81
  %201 = add i64 %200, -48, !mcsema_real_eip !81
  %202 = inttoptr i64 %201 to i64*, !mcsema_real_eip !81
  %203 = load i64, i64* %202, !mcsema_real_eip !81
  store i64 %203, i64* %RCX_val, !mcsema_real_eip !81
  %204 = shl nsw i64 %199, 2
  %205 = add i64 %203, %204, !mcsema_real_eip !82
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !82
  %207 = bitcast i64* %206 to i32*
  %208 = load i32, i32* %207, !mcsema_real_eip !82
  %209 = zext i32 %208 to i64, !mcsema_real_eip !82
  store i64 %209, i64* %RDX_val, !mcsema_real_eip !82
  %210 = load i64, i64* %RBP_val, !mcsema_real_eip !83
  %211 = add i64 %210, -72, !mcsema_real_eip !83
  %212 = inttoptr i64 %211 to i64*, !mcsema_real_eip !83
  %213 = bitcast i64* %212 to i32*
  %214 = load i32, i32* %213, !mcsema_real_eip !83
  %215 = sext i32 %214 to i64, !mcsema_real_eip !83
  store i64 %215, i64* %RAX_val, !mcsema_real_eip !83
  %216 = load i64, i64* %RBP_val, !mcsema_real_eip !84
  %217 = add i64 %216, -64, !mcsema_real_eip !84
  %218 = inttoptr i64 %217 to i64*, !mcsema_real_eip !84
  %219 = load i64, i64* %218, !mcsema_real_eip !84
  store i64 %219, i64* %RCX_val, !mcsema_real_eip !84
  %220 = shl nsw i64 %215, 2
  %221 = add i64 %219, %220, !mcsema_real_eip !85
  %222 = inttoptr i64 %221 to i64*, !mcsema_real_eip !85
  %223 = load i64, i64* %RDX_val, !mcsema_real_eip !85
  %224 = trunc i64 %223 to i32, !mcsema_real_eip !85
  %225 = bitcast i64* %222 to i32*
  %226 = load i32, i32* %225, !mcsema_real_eip !85
  %227 = sub i32 %224, %226, !mcsema_real_eip !85
  %228 = xor i32 %227, %224, !mcsema_real_eip !85
  %229 = xor i32 %228, %226, !mcsema_real_eip !85
  %230 = and i32 %229, 16, !mcsema_real_eip !85
  %231 = icmp ne i32 %230, 0, !mcsema_real_eip !85
  store i1 %231, i1* %AF_val, !mcsema_real_eip !85
  %232 = trunc i32 %227 to i8, !mcsema_real_eip !85
  %233 = tail call i8 @llvm.ctpop.i8(i8 %232), !mcsema_real_eip !85
  %234 = and i8 %233, 1
  %235 = icmp eq i8 %234, 0
  store i1 %235, i1* %PF_val, !mcsema_real_eip !85
  %236 = icmp eq i32 %224, %226
  store i1 %236, i1* %ZF_val, !mcsema_real_eip !85
  %237 = icmp slt i32 %227, 0
  store i1 %237, i1* %SF_val, !mcsema_real_eip !85
  %238 = icmp ult i32 %224, %226, !mcsema_real_eip !85
  store i1 %238, i1* %CF_val, !mcsema_real_eip !85
  %239 = xor i32 %224, %226, !mcsema_real_eip !85
  %240 = and i32 %228, %239, !mcsema_real_eip !85
  %241 = icmp slt i32 %240, 0
  store i1 %241, i1* %OF_val, !mcsema_real_eip !85
  %242 = zext i32 %227 to i64, !mcsema_real_eip !85
  store i64 %242, i64* %RDX_val, !mcsema_real_eip !85
  %243 = load i64, i64* %RBP_val, !mcsema_real_eip !86
  %244 = add i64 %243, -68, !mcsema_real_eip !86
  %245 = inttoptr i64 %244 to i64*, !mcsema_real_eip !86
  %246 = bitcast i64* %245 to i32*
  %247 = load i32, i32* %246, !mcsema_real_eip !86
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %227, i32 %247)
  %248 = extractvalue { i32, i1 } %uadd, 0
  %249 = xor i32 %248, %247, !mcsema_real_eip !87
  %250 = xor i32 %249, %227, !mcsema_real_eip !87
  %251 = and i32 %250, 16, !mcsema_real_eip !87
  %252 = icmp ne i32 %251, 0, !mcsema_real_eip !87
  store i1 %252, i1* %AF_val, !mcsema_real_eip !87
  %253 = icmp slt i32 %248, 0
  store i1 %253, i1* %SF_val, !mcsema_real_eip !87
  %254 = icmp eq i32 %248, 0, !mcsema_real_eip !87
  store i1 %254, i1* %ZF_val, !mcsema_real_eip !87
  %255 = xor i32 %247, -2147483648, !mcsema_real_eip !87
  %256 = xor i32 %255, %227, !mcsema_real_eip !87
  %257 = and i32 %249, %256, !mcsema_real_eip !87
  %258 = icmp slt i32 %257, 0
  store i1 %258, i1* %OF_val, !mcsema_real_eip !87
  %259 = trunc i32 %248 to i8, !mcsema_real_eip !87
  %260 = tail call i8 @llvm.ctpop.i8(i8 %259), !mcsema_real_eip !87
  %261 = and i8 %260, 1
  %262 = icmp eq i8 %261, 0
  store i1 %262, i1* %PF_val, !mcsema_real_eip !87
  %263 = extractvalue { i32, i1 } %uadd, 1
  store i1 %263, i1* %CF_val, !mcsema_real_eip !87
  %264 = zext i32 %248 to i64, !mcsema_real_eip !87
  store i64 %264, i64* %RSI_val, !mcsema_real_eip !87
  %265 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  %266 = add i64 %265, -68, !mcsema_real_eip !88
  %267 = inttoptr i64 %266 to i64*, !mcsema_real_eip !88
  %268 = bitcast i64* %267 to i32*
  store i32 %248, i32* %268, !mcsema_real_eip !88
  %269 = load i64, i64* %RBP_val, !mcsema_real_eip !89
  %270 = add i64 %269, -72, !mcsema_real_eip !89
  %271 = inttoptr i64 %270 to i64*, !mcsema_real_eip !89
  %272 = bitcast i64* %271 to i32*
  %273 = load i32, i32* %272, !mcsema_real_eip !89
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %273, i32 1)
  %274 = extractvalue { i32, i1 } %uadd71, 0
  %275 = xor i32 %274, %273, !mcsema_real_eip !90
  %276 = and i32 %275, 16, !mcsema_real_eip !90
  %277 = icmp ne i32 %276, 0, !mcsema_real_eip !90
  store i1 %277, i1* %AF_val, !mcsema_real_eip !90
  %278 = icmp slt i32 %274, 0
  store i1 %278, i1* %SF_val, !mcsema_real_eip !90
  %279 = icmp eq i32 %274, 0, !mcsema_real_eip !90
  store i1 %279, i1* %ZF_val, !mcsema_real_eip !90
  %280 = xor i32 %273, -2147483648, !mcsema_real_eip !90
  %281 = and i32 %275, %280, !mcsema_real_eip !90
  %282 = icmp slt i32 %281, 0
  store i1 %282, i1* %OF_val, !mcsema_real_eip !90
  %283 = trunc i32 %274 to i8, !mcsema_real_eip !90
  %284 = tail call i8 @llvm.ctpop.i8(i8 %283), !mcsema_real_eip !90
  %285 = and i8 %284, 1
  %286 = icmp eq i8 %285, 0
  store i1 %286, i1* %PF_val, !mcsema_real_eip !90
  %287 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %287, i1* %CF_val, !mcsema_real_eip !90
  %288 = zext i32 %274 to i64, !mcsema_real_eip !90
  store i64 %288, i64* %RAX_val, !mcsema_real_eip !90
  %289 = load i64, i64* %RBP_val, !mcsema_real_eip !91
  %290 = add i64 %289, -72, !mcsema_real_eip !91
  %291 = inttoptr i64 %290 to i64*, !mcsema_real_eip !91
  %292 = bitcast i64* %291 to i32*
  store i32 %274, i32* %292, !mcsema_real_eip !91
  br label %block_0x45, !mcsema_real_eip !92

block_0x7f:                                       ; preds = %block_0x45
  %.lcssa = phi i64 [ %194, %block_0x45 ]
  %293 = add i64 %.lcssa, -68, !mcsema_real_eip !79
  %294 = inttoptr i64 %293 to i64*, !mcsema_real_eip !79
  %295 = bitcast i64* %294 to i32*
  %296 = load i32, i32* %295, !mcsema_real_eip !79
  %297 = zext i32 %296 to i64, !mcsema_real_eip !79
  store i64 %297, i64* %RAX_val, !mcsema_real_eip !79
  %298 = load i64, i64* %RBP_val, !mcsema_real_eip !93
  %299 = add i64 %298, -12, !mcsema_real_eip !93
  %300 = inttoptr i64 %299 to i64*, !mcsema_real_eip !93
  %301 = bitcast i64* %300 to i32*
  %302 = load i32, i32* %301, !mcsema_real_eip !93
  %303 = zext i32 %302 to i64, !mcsema_real_eip !93
  store i64 %303, i64* %RCX_val, !mcsema_real_eip !93
  %304 = load i64, i64* %RBP_val, !mcsema_real_eip !94
  %305 = add i64 %304, -16, !mcsema_real_eip !94
  %306 = inttoptr i64 %305 to i64*, !mcsema_real_eip !94
  %307 = bitcast i64* %306 to i32*
  %308 = load i32, i32* %307, !mcsema_real_eip !94
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %302, i32 %308)
  %309 = extractvalue { i32, i1 } %uadd72, 0
  %310 = xor i32 %309, %308, !mcsema_real_eip !94
  %311 = xor i32 %310, %302, !mcsema_real_eip !94
  %312 = and i32 %311, 16, !mcsema_real_eip !94
  %313 = icmp ne i32 %312, 0, !mcsema_real_eip !94
  store i1 %313, i1* %AF_val, !mcsema_real_eip !94
  %314 = icmp slt i32 %309, 0
  store i1 %314, i1* %SF_val, !mcsema_real_eip !94
  %315 = icmp eq i32 %309, 0, !mcsema_real_eip !94
  store i1 %315, i1* %ZF_val, !mcsema_real_eip !94
  %316 = xor i32 %302, -2147483648, !mcsema_real_eip !94
  %317 = xor i32 %316, %308, !mcsema_real_eip !94
  %318 = and i32 %310, %317, !mcsema_real_eip !94
  %319 = icmp slt i32 %318, 0
  store i1 %319, i1* %OF_val, !mcsema_real_eip !94
  %320 = trunc i32 %309 to i8, !mcsema_real_eip !94
  %321 = tail call i8 @llvm.ctpop.i8(i8 %320), !mcsema_real_eip !94
  %322 = and i8 %321, 1
  %323 = icmp eq i8 %322, 0
  store i1 %323, i1* %PF_val, !mcsema_real_eip !94
  %324 = extractvalue { i32, i1 } %uadd72, 1
  store i1 %324, i1* %CF_val, !mcsema_real_eip !94
  %325 = zext i32 %309 to i64, !mcsema_real_eip !94
  store i64 %325, i64* %RCX_val, !mcsema_real_eip !94
  %326 = load i64, i64* %RBP_val, !mcsema_real_eip !95
  %327 = add i64 %326, -20, !mcsema_real_eip !95
  %328 = inttoptr i64 %327 to i64*, !mcsema_real_eip !95
  %329 = bitcast i64* %328 to i32*
  %330 = load i32, i32* %329, !mcsema_real_eip !95
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %309, i32 %330)
  %331 = extractvalue { i32, i1 } %uadd73, 0
  %332 = xor i32 %331, %330, !mcsema_real_eip !95
  %333 = xor i32 %332, %309, !mcsema_real_eip !95
  %334 = and i32 %333, 16, !mcsema_real_eip !95
  %335 = icmp ne i32 %334, 0, !mcsema_real_eip !95
  store i1 %335, i1* %AF_val, !mcsema_real_eip !95
  %336 = icmp slt i32 %331, 0
  store i1 %336, i1* %SF_val, !mcsema_real_eip !95
  %337 = icmp eq i32 %331, 0, !mcsema_real_eip !95
  store i1 %337, i1* %ZF_val, !mcsema_real_eip !95
  %338 = xor i32 %309, -2147483648, !mcsema_real_eip !95
  %339 = xor i32 %338, %330, !mcsema_real_eip !95
  %340 = and i32 %332, %339, !mcsema_real_eip !95
  %341 = icmp slt i32 %340, 0
  store i1 %341, i1* %OF_val, !mcsema_real_eip !95
  %342 = trunc i32 %331 to i8, !mcsema_real_eip !95
  %343 = tail call i8 @llvm.ctpop.i8(i8 %342), !mcsema_real_eip !95
  %344 = and i8 %343, 1
  %345 = icmp eq i8 %344, 0
  store i1 %345, i1* %PF_val, !mcsema_real_eip !95
  %346 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %346, i1* %CF_val, !mcsema_real_eip !95
  %347 = zext i32 %331 to i64, !mcsema_real_eip !95
  store i64 %347, i64* %RCX_val, !mcsema_real_eip !95
  %348 = load i64, i64* %RBP_val, !mcsema_real_eip !96
  %349 = add i64 %348, -24, !mcsema_real_eip !96
  %350 = inttoptr i64 %349 to i64*, !mcsema_real_eip !96
  %351 = bitcast i64* %350 to i32*
  %352 = load i32, i32* %351, !mcsema_real_eip !96
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %331, i32 %352)
  %353 = extractvalue { i32, i1 } %uadd74, 0
  %354 = xor i32 %353, %352, !mcsema_real_eip !96
  %355 = xor i32 %354, %331, !mcsema_real_eip !96
  %356 = and i32 %355, 16, !mcsema_real_eip !96
  %357 = icmp ne i32 %356, 0, !mcsema_real_eip !96
  store i1 %357, i1* %AF_val, !mcsema_real_eip !96
  %358 = icmp slt i32 %353, 0
  store i1 %358, i1* %SF_val, !mcsema_real_eip !96
  %359 = icmp eq i32 %353, 0, !mcsema_real_eip !96
  store i1 %359, i1* %ZF_val, !mcsema_real_eip !96
  %360 = xor i32 %331, -2147483648, !mcsema_real_eip !96
  %361 = xor i32 %360, %352, !mcsema_real_eip !96
  %362 = and i32 %354, %361, !mcsema_real_eip !96
  %363 = icmp slt i32 %362, 0
  store i1 %363, i1* %OF_val, !mcsema_real_eip !96
  %364 = trunc i32 %353 to i8, !mcsema_real_eip !96
  %365 = tail call i8 @llvm.ctpop.i8(i8 %364), !mcsema_real_eip !96
  %366 = and i8 %365, 1
  %367 = icmp eq i8 %366, 0
  store i1 %367, i1* %PF_val, !mcsema_real_eip !96
  %368 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %368, i1* %CF_val, !mcsema_real_eip !96
  %369 = zext i32 %353 to i64, !mcsema_real_eip !96
  store i64 %369, i64* %RCX_val, !mcsema_real_eip !96
  %370 = load i64, i64* %RBP_val, !mcsema_real_eip !97
  %371 = add i64 %370, -28, !mcsema_real_eip !97
  %372 = inttoptr i64 %371 to i64*, !mcsema_real_eip !97
  %373 = bitcast i64* %372 to i32*
  %374 = load i32, i32* %373, !mcsema_real_eip !97
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %353, i32 %374)
  %375 = extractvalue { i32, i1 } %uadd75, 0
  %376 = xor i32 %375, %374, !mcsema_real_eip !97
  %377 = xor i32 %376, %353, !mcsema_real_eip !97
  %378 = and i32 %377, 16, !mcsema_real_eip !97
  %379 = icmp ne i32 %378, 0, !mcsema_real_eip !97
  store i1 %379, i1* %AF_val, !mcsema_real_eip !97
  %380 = icmp slt i32 %375, 0
  store i1 %380, i1* %SF_val, !mcsema_real_eip !97
  %381 = icmp eq i32 %375, 0, !mcsema_real_eip !97
  store i1 %381, i1* %ZF_val, !mcsema_real_eip !97
  %382 = xor i32 %353, -2147483648, !mcsema_real_eip !97
  %383 = xor i32 %382, %374, !mcsema_real_eip !97
  %384 = and i32 %376, %383, !mcsema_real_eip !97
  %385 = icmp slt i32 %384, 0
  store i1 %385, i1* %OF_val, !mcsema_real_eip !97
  %386 = trunc i32 %375 to i8, !mcsema_real_eip !97
  %387 = tail call i8 @llvm.ctpop.i8(i8 %386), !mcsema_real_eip !97
  %388 = and i8 %387, 1
  %389 = icmp eq i8 %388, 0
  store i1 %389, i1* %PF_val, !mcsema_real_eip !97
  %390 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %390, i1* %CF_val, !mcsema_real_eip !97
  %391 = zext i32 %375 to i64, !mcsema_real_eip !97
  store i64 %391, i64* %RCX_val, !mcsema_real_eip !97
  %392 = load i64, i64* %RBP_val, !mcsema_real_eip !98
  %393 = add i64 %392, -32, !mcsema_real_eip !98
  %394 = inttoptr i64 %393 to i64*, !mcsema_real_eip !98
  %395 = bitcast i64* %394 to i32*
  %396 = load i32, i32* %395, !mcsema_real_eip !98
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %375, i32 %396)
  %397 = extractvalue { i32, i1 } %uadd76, 0
  %398 = xor i32 %397, %396, !mcsema_real_eip !98
  %399 = xor i32 %398, %375, !mcsema_real_eip !98
  %400 = and i32 %399, 16, !mcsema_real_eip !98
  %401 = icmp ne i32 %400, 0, !mcsema_real_eip !98
  store i1 %401, i1* %AF_val, !mcsema_real_eip !98
  %402 = icmp eq i32 %397, 0, !mcsema_real_eip !98
  store i1 %402, i1* %ZF_val, !mcsema_real_eip !98
  %403 = trunc i32 %397 to i8, !mcsema_real_eip !98
  %404 = tail call i8 @llvm.ctpop.i8(i8 %403), !mcsema_real_eip !98
  %405 = and i8 %404, 1
  %406 = icmp eq i8 %405, 0
  store i1 %406, i1* %PF_val, !mcsema_real_eip !98
  %407 = extractvalue { i32, i1 } %uadd76, 1
  store i1 %407, i1* %CF_val, !mcsema_real_eip !98
  %408 = zext i32 %397 to i64, !mcsema_real_eip !98
  store i64 %408, i64* %RCX_val, !mcsema_real_eip !98
  %409 = load i64, i64* %RAX_val, !mcsema_real_eip !99
  %410 = trunc i64 %409 to i32, !mcsema_real_eip !99
  %411 = sext i32 %410 to i64, !mcsema_real_eip !99
  %412 = sext i32 %397 to i64, !mcsema_real_eip !99
  %413 = mul i64 %411, %412, !mcsema_real_eip !99
  %414 = mul i32 %410, %397, !mcsema_real_eip !99
  %415 = sext i32 %414 to i64, !mcsema_real_eip !99
  %416 = icmp ne i64 %415, %413, !mcsema_real_eip !99
  store i1 %416, i1* %SF_val, !mcsema_real_eip !99
  store i1 %416, i1* %OF_val, !mcsema_real_eip !99
  %417 = zext i32 %414 to i64, !mcsema_real_eip !99
  store i64 %417, i64* %RAX_val, !mcsema_real_eip !99
  %418 = load i64, i64* %RSP_val, !mcsema_real_eip !100
  %419 = inttoptr i64 %418 to i64*, !mcsema_real_eip !100
  %420 = load i64, i64* %419, !mcsema_real_eip !100
  store i64 %420, i64* %RBX_val, !mcsema_real_eip !100
  %421 = add i64 %418, 8, !mcsema_real_eip !100
  store i64 %421, i64* %RSP_val, !mcsema_real_eip !100
  %422 = inttoptr i64 %421 to i64*, !mcsema_real_eip !101
  %423 = load i64, i64* %422, !mcsema_real_eip !101
  store i64 %423, i64* %RBP_val, !mcsema_real_eip !101
  %424 = add i64 %418, 24, !mcsema_real_eip !102
  store i64 %424, i64* %RSP_val, !mcsema_real_eip !102
  %425 = load i64, i64* %RAX_val, !mcsema_real_eip !102
  store i64 %425, i64* %RAX, !mcsema_real_eip !102
  %426 = load i64, i64* %RBX_val, !mcsema_real_eip !102
  store i64 %426, i64* %RBX, !mcsema_real_eip !102
  %427 = load i64, i64* %RCX_val, !mcsema_real_eip !102
  store i64 %427, i64* %RCX, !mcsema_real_eip !102
  %428 = load i64, i64* %RDX_val, !mcsema_real_eip !102
  store i64 %428, i64* %RDX, !mcsema_real_eip !102
  %429 = load i64, i64* %RSI_val, !mcsema_real_eip !102
  store i64 %429, i64* %RSI, !mcsema_real_eip !102
  %430 = load i64, i64* %RDI_val, !mcsema_real_eip !102
  store i64 %430, i64* %RDI, !mcsema_real_eip !102
  %431 = load i64, i64* %RSP_val, !mcsema_real_eip !102
  store i64 %431, i64* %RSP, !mcsema_real_eip !102
  %432 = load i64, i64* %RBP_val, !mcsema_real_eip !102
  store i64 %432, i64* %RBP, !mcsema_real_eip !102
  %433 = load i64, i64* %R8_val, !mcsema_real_eip !102
  store i64 %433, i64* %R8, !mcsema_real_eip !102
  %434 = load i64, i64* %R9_val, !mcsema_real_eip !102
  store i64 %434, i64* %R9, !mcsema_real_eip !102
  %435 = load i64, i64* %R10_val, !mcsema_real_eip !102
  store i64 %435, i64* %R10, !mcsema_real_eip !102
  %436 = load i64, i64* %R11_val, !mcsema_real_eip !102
  store i64 %436, i64* %R11, !mcsema_real_eip !102
  %437 = load i64, i64* %R12_val, !mcsema_real_eip !102
  store i64 %437, i64* %R12, !mcsema_real_eip !102
  %438 = load i64, i64* %R13_val, !mcsema_real_eip !102
  store i64 %438, i64* %R13, !mcsema_real_eip !102
  %439 = load i64, i64* %R14_val, !mcsema_real_eip !102
  store i64 %439, i64* %R14, !mcsema_real_eip !102
  %440 = load i64, i64* %R15_val, !mcsema_real_eip !102
  store i64 %440, i64* %R15, !mcsema_real_eip !102
  %441 = load i64, i64* %RIP_val, !mcsema_real_eip !102
  store i64 %441, i64* %RIP, !mcsema_real_eip !102
  %442 = load i1, i1* %CF_val, !mcsema_real_eip !102
  store i1 %442, i1* %CF, align 1, !mcsema_real_eip !102
  %443 = load i1, i1* %PF_val, !mcsema_real_eip !102
  store i1 %443, i1* %PF, align 1, !mcsema_real_eip !102
  %444 = load i1, i1* %AF_val, !mcsema_real_eip !102
  store i1 %444, i1* %AF, align 1, !mcsema_real_eip !102
  %445 = load i1, i1* %ZF_val, !mcsema_real_eip !102
  store i1 %445, i1* %ZF, align 1, !mcsema_real_eip !102
  %446 = load i1, i1* %SF_val, !mcsema_real_eip !102
  store i1 %446, i1* %SF, align 1, !mcsema_real_eip !102
  %447 = load i1, i1* %OF_val, !mcsema_real_eip !102
  store i1 %447, i1* %OF, align 1, !mcsema_real_eip !102
  %448 = load i1, i1* %DF_val, !mcsema_real_eip !102
  store i1 %448, i1* %DF, align 1, !mcsema_real_eip !102
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !102
  %449 = load i1, i1* %FPU_B_val, !mcsema_real_eip !102
  store i1 %449, i1* %FPU_B, align 1, !mcsema_real_eip !102
  %450 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !102
  store i1 %450, i1* %FPU_C3, align 1, !mcsema_real_eip !102
  %451 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !102
  store i3 %451, i3* %FPU_TOP, align 1, !mcsema_real_eip !102
  %452 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !102
  store i1 %452, i1* %FPU_C2, align 1, !mcsema_real_eip !102
  %453 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !102
  store i1 %453, i1* %FPU_C1, align 1, !mcsema_real_eip !102
  %454 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !102
  store i1 %454, i1* %FPU_C0, align 1, !mcsema_real_eip !102
  %455 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !102
  store i1 %455, i1* %FPU_ES, align 1, !mcsema_real_eip !102
  %456 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !102
  store i1 %456, i1* %FPU_SF, align 1, !mcsema_real_eip !102
  %457 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !102
  store i1 %457, i1* %FPU_PE, align 1, !mcsema_real_eip !102
  %458 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !102
  store i1 %458, i1* %FPU_UE, align 1, !mcsema_real_eip !102
  %459 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !102
  store i1 %459, i1* %FPU_OE, align 1, !mcsema_real_eip !102
  %460 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !102
  store i1 %460, i1* %FPU_ZE, align 1, !mcsema_real_eip !102
  %461 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !102
  store i1 %461, i1* %FPU_DE, align 1, !mcsema_real_eip !102
  %462 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !102
  store i1 %462, i1* %FPU_IE, align 1, !mcsema_real_eip !102
  %463 = load i1, i1* %FPU_X_val, !mcsema_real_eip !102
  store i1 %463, i1* %FPU_X, align 1, !mcsema_real_eip !102
  %464 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !102
  store i2 %464, i2* %FPU_RC, align 1, !mcsema_real_eip !102
  %465 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !102
  store i2 %465, i2* %FPU_PC, align 1, !mcsema_real_eip !102
  %466 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !102
  store i1 %466, i1* %FPU_PM, align 1, !mcsema_real_eip !102
  %467 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !102
  store i1 %467, i1* %FPU_UM, align 1, !mcsema_real_eip !102
  %468 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !102
  store i1 %468, i1* %FPU_OM, align 1, !mcsema_real_eip !102
  %469 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !102
  store i1 %469, i1* %FPU_ZM, align 1, !mcsema_real_eip !102
  %470 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !102
  store i1 %470, i1* %FPU_DM, align 1, !mcsema_real_eip !102
  %471 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !102
  store i1 %471, i1* %FPU_IM, align 1, !mcsema_real_eip !102
  %472 = load i64, i64* %53, align 4
  store i64 %472, i64* %52, align 4
  %473 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !102
  store i16 %473, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !102
  %474 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !102
  store i64 %474, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !102
  %475 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !102
  store i16 %475, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !102
  %476 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !102
  store i64 %476, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !102
  %477 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !102
  store i11 %477, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !102
  %478 = load i128, i128* %XMM0_val, !mcsema_real_eip !102
  store i128 %478, i128* %XMM0, align 1, !mcsema_real_eip !102
  %479 = load i128, i128* %XMM1_val, !mcsema_real_eip !102
  store i128 %479, i128* %XMM1, align 1, !mcsema_real_eip !102
  %480 = load i128, i128* %XMM2_val, !mcsema_real_eip !102
  store i128 %480, i128* %XMM2, align 1, !mcsema_real_eip !102
  %481 = load i128, i128* %XMM3_val, !mcsema_real_eip !102
  store i128 %481, i128* %XMM3, align 1, !mcsema_real_eip !102
  %482 = load i128, i128* %XMM4_val, !mcsema_real_eip !102
  store i128 %482, i128* %XMM4, align 1, !mcsema_real_eip !102
  %483 = load i128, i128* %XMM5_val, !mcsema_real_eip !102
  store i128 %483, i128* %XMM5, align 1, !mcsema_real_eip !102
  %484 = load i128, i128* %XMM6_val, !mcsema_real_eip !102
  store i128 %484, i128* %XMM6, align 1, !mcsema_real_eip !102
  %485 = load i128, i128* %XMM7_val, !mcsema_real_eip !102
  store i128 %485, i128* %XMM7, align 1, !mcsema_real_eip !102
  %486 = load i128, i128* %XMM8_val, !mcsema_real_eip !102
  store i128 %486, i128* %XMM8, align 1, !mcsema_real_eip !102
  %487 = load i128, i128* %XMM9_val, !mcsema_real_eip !102
  store i128 %487, i128* %XMM9, align 1, !mcsema_real_eip !102
  %488 = load i128, i128* %XMM10_val, !mcsema_real_eip !102
  store i128 %488, i128* %XMM10, align 1, !mcsema_real_eip !102
  %489 = load i128, i128* %XMM11_val, !mcsema_real_eip !102
  store i128 %489, i128* %XMM11, align 1, !mcsema_real_eip !102
  %490 = load i128, i128* %XMM12_val, !mcsema_real_eip !102
  store i128 %490, i128* %XMM12, align 1, !mcsema_real_eip !102
  %491 = load i128, i128* %XMM13_val, !mcsema_real_eip !102
  store i128 %491, i128* %XMM13, align 1, !mcsema_real_eip !102
  %492 = load i128, i128* %XMM14_val, !mcsema_real_eip !102
  store i128 %492, i128* %XMM14, align 1, !mcsema_real_eip !102
  %493 = load i128, i128* %XMM15_val, !mcsema_real_eip !102
  store i128 %493, i128* %XMM15, align 1, !mcsema_real_eip !102
  %494 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !102
  store i64 %494, i64* %STACK_BASE, align 1, !mcsema_real_eip !102
  %495 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !102
  store i64 %495, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !102
  ret void, !mcsema_real_eip !102
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_a0(%struct.regs* %0)
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
!2 = !{i64 160}
!3 = !{i64 161}
!4 = !{i64 164}
!5 = !{i64 168}
!6 = !{i64 178}
!7 = !{i64 185}
!8 = !{i64 188}
!9 = !{i64 192}
!10 = !{i64 195}
!11 = !{i64 200}
!12 = !{i64 210}
!13 = !{i64 214}
!14 = !{i64 219}
!15 = !{i64 223}
!16 = !{i64 230}
!17 = !{i64 283}
!18 = !{i64 237}
!19 = !{i64 243}
!20 = !{i64 251}
!21 = !{i64 256}
!22 = !{i64 260}
!23 = !{i64 264}
!24 = !{i64 267}
!25 = !{i64 270}
!26 = !{i64 275}
!27 = !{i64 278}
!28 = !{i64 290}
!29 = !{i64 297}
!30 = !{i64 303}
!31 = !{i64 306}
!32 = !{i64 311}
!33 = !{i64 315}
!34 = !{i64 319}
!35 = !{i64 322}
!36 = !{i64 325}
!37 = !{i64 330}
!38 = !{i64 333}
!39 = !{i64 338}
!40 = !{i64 343}
!41 = !{i64 348}
!42 = !{i64 353}
!43 = !{i64 358}
!44 = !{i64 364}
!45 = !{i64 370}
!46 = !{i64 375}
!47 = !{i64 379}
!48 = !{i64 383}
!49 = !{i64 390}
!50 = !{i64 395}
!51 = !{i64 403}
!52 = !{i64 408}
!53 = !{i64 411}
!54 = !{i64 416}
!55 = !{i64 420}
!56 = !{i64 421}
!57 = !{i64 0}
!58 = !{i64 1}
!59 = !{i64 4}
!60 = !{i64 5}
!61 = !{i64 9}
!62 = !{i64 13}
!63 = !{i64 17}
!64 = !{i64 20}
!65 = !{i64 23}
!66 = !{i64 26}
!67 = !{i64 29}
!68 = !{i64 32}
!69 = !{i64 36}
!70 = !{i64 40}
!71 = !{i64 43}
!72 = !{i64 47}
!73 = !{i64 51}
!74 = !{i64 55}
!75 = !{i64 62}
!76 = !{i64 69}
!77 = !{i64 72}
!78 = !{i64 75}
!79 = !{i64 127}
!80 = !{i64 81}
!81 = !{i64 85}
!82 = !{i64 89}
!83 = !{i64 92}
!84 = !{i64 96}
!85 = !{i64 100}
!86 = !{i64 103}
!87 = !{i64 106}
!88 = !{i64 108}
!89 = !{i64 111}
!90 = !{i64 114}
!91 = !{i64 119}
!92 = !{i64 122}
!93 = !{i64 130}
!94 = !{i64 133}
!95 = !{i64 136}
!96 = !{i64 139}
!97 = !{i64 142}
!98 = !{i64 145}
!99 = !{i64 148}
!100 = !{i64 151}
!101 = !{i64 152}
!102 = !{i64 153}
