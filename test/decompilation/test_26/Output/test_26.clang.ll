; ModuleID = 'Output/test_26.clang.bc'
source_filename = "Output/test_26.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_110(%struct.regs*) {
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
  %81 = add i64 %78, -136
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
  %91 = icmp ult i64 %79, 128, !mcsema_real_eip !4
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
  store i64 %134, i64* %RAX_val, !mcsema_real_eip !17
  %135 = add i64 %131, -8, !mcsema_real_eip !18
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !18
  %137 = bitcast i64* %136 to i32*
  %138 = load i32, i32* %137, !mcsema_real_eip !18
  %139 = zext i32 %138 to i64, !mcsema_real_eip !18
  store i64 %139, i64* %RCX_val, !mcsema_real_eip !18
  %140 = load i64, i64* %RBP_val, !mcsema_real_eip !19
  %141 = add i64 %140, -48, !mcsema_real_eip !19
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !19
  %143 = bitcast i64* %142 to i32*
  store i32 %138, i32* %143, !mcsema_real_eip !19
  %144 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %145 = add i64 %144, -16, !mcsema_real_eip !20
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !20
  %147 = load i64, i64* %146, !mcsema_real_eip !20
  store i64 %147, i64* %RDI_val, !mcsema_real_eip !20
  %148 = add i64 %144, -56, !mcsema_real_eip !21
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !21
  store i64 %147, i64* %149, !mcsema_real_eip !21
  %150 = load i64, i64* %RBP_val, !mcsema_real_eip !22
  %151 = add i64 %150, -56, !mcsema_real_eip !22
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !22
  %153 = load i64, i64* %152, !mcsema_real_eip !22
  store i64 %153, i64* %RDI_val, !mcsema_real_eip !22
  %154 = add i64 %150, -48, !mcsema_real_eip !23
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !23
  %156 = bitcast i64* %155 to i32*
  %157 = load i32, i32* %156, !mcsema_real_eip !23
  %158 = zext i32 %157 to i64, !mcsema_real_eip !23
  store i64 %158, i64* %RSI_val, !mcsema_real_eip !23
  %159 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %160 = add i64 %159, -8, !mcsema_real_eip !24
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !24
  %162 = bitcast i64* %161 to i32*
  %163 = load i32, i32* %162, !mcsema_real_eip !24
  %164 = zext i32 %163 to i64, !mcsema_real_eip !24
  store i64 %164, i64* %RCX_val, !mcsema_real_eip !24
  %165 = load i64, i64* %RSP_val, !mcsema_real_eip !25
  store i64 %165, i64* %RDX_val, !mcsema_real_eip !25
  %166 = add i64 %165, 16, !mcsema_real_eip !26
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !26
  %168 = bitcast i64* %167 to i32*
  store i32 %163, i32* %168, !mcsema_real_eip !26
  %169 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %170 = add i64 %169, -16, !mcsema_real_eip !27
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !27
  %172 = load i64, i64* %171, !mcsema_real_eip !27
  %173 = load i64, i64* %RDX_val, !mcsema_real_eip !28
  %174 = add i64 %173, 8, !mcsema_real_eip !28
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !28
  store i64 %172, i64* %175, !mcsema_real_eip !28
  %176 = load i64, i64* %RDX_val, !mcsema_real_eip !29
  %177 = add i64 %176, 32, !mcsema_real_eip !29
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !29
  %179 = load i64, i64* %RAX_val, !mcsema_real_eip !29
  store i64 %179, i64* %178, !mcsema_real_eip !29
  %180 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  %181 = add i64 %180, -16, !mcsema_real_eip !30
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !30
  %183 = ptrtoint i64* %182 to i64, !mcsema_real_eip !30
  store i64 %183, i64* %R8_val, !mcsema_real_eip !30
  %184 = load i64, i64* %RDX_val, !mcsema_real_eip !31
  %185 = add i64 %184, 24, !mcsema_real_eip !31
  %186 = inttoptr i64 %185 to i64*, !mcsema_real_eip !31
  store i64 %183, i64* %186, !mcsema_real_eip !31
  %187 = load i64, i64* %RDX_val, !mcsema_real_eip !32
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !32
  %189 = bitcast i64* %188 to i32*
  store i32 3, i32* %189, !mcsema_real_eip !32
  store i64 1, i64* %RCX_val, !mcsema_real_eip !33
  store i64 2, i64* %R9_val, !mcsema_real_eip !34
  %190 = load i64, i64* %R8_val, !mcsema_real_eip !35
  store i64 %190, i64* %RDX_val, !mcsema_real_eip !35
  %191 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  %192 = add i64 %191, -76, !mcsema_real_eip !36
  %193 = inttoptr i64 %192 to i64*, !mcsema_real_eip !36
  %194 = load i64, i64* %RCX_val, !mcsema_real_eip !36
  %195 = trunc i64 %194 to i32, !mcsema_real_eip !36
  %196 = bitcast i64* %193 to i32*
  store i32 %195, i32* %196, !mcsema_real_eip !36
  %197 = load i64, i64* %RAX_val, !mcsema_real_eip !37
  store i64 %197, i64* %RCX_val, !mcsema_real_eip !37
  %198 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %199 = add i64 %198, -76, !mcsema_real_eip !38
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !38
  %201 = bitcast i64* %200 to i32*
  %202 = load i32, i32* %201, !mcsema_real_eip !38
  %203 = zext i32 %202 to i64, !mcsema_real_eip !38
  store i64 %203, i64* %R8_val, !mcsema_real_eip !38
  %204 = load i64, i64* %RSP_val, !mcsema_real_eip !39
  %205 = add i64 %204, -8
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !39
  store i64 -4981261766360305936, i64* %206, !mcsema_real_eip !39
  store i64 %205, i64* %RSP_val, !mcsema_real_eip !39
  %207 = load i64, i64* %RAX_val, !mcsema_real_eip !39
  store i64 %207, i64* %RAX, !mcsema_real_eip !39
  %208 = load i64, i64* %RBX_val, !mcsema_real_eip !39
  store i64 %208, i64* %RBX, !mcsema_real_eip !39
  %209 = load i64, i64* %RCX_val, !mcsema_real_eip !39
  store i64 %209, i64* %RCX, !mcsema_real_eip !39
  %210 = load i64, i64* %RDX_val, !mcsema_real_eip !39
  store i64 %210, i64* %RDX, !mcsema_real_eip !39
  %211 = load i64, i64* %RSI_val, !mcsema_real_eip !39
  store i64 %211, i64* %RSI, !mcsema_real_eip !39
  %212 = load i64, i64* %RDI_val, !mcsema_real_eip !39
  store i64 %212, i64* %RDI, !mcsema_real_eip !39
  %213 = load i64, i64* %RSP_val, !mcsema_real_eip !39
  store i64 %213, i64* %RSP, !mcsema_real_eip !39
  %214 = load i64, i64* %RBP_val, !mcsema_real_eip !39
  store i64 %214, i64* %RBP, !mcsema_real_eip !39
  %215 = load i64, i64* %R8_val, !mcsema_real_eip !39
  store i64 %215, i64* %R8, !mcsema_real_eip !39
  %216 = load i64, i64* %R9_val, !mcsema_real_eip !39
  store i64 %216, i64* %R9, !mcsema_real_eip !39
  %217 = load i64, i64* %R10_val, !mcsema_real_eip !39
  store i64 %217, i64* %R10, !mcsema_real_eip !39
  %218 = load i64, i64* %R11_val, !mcsema_real_eip !39
  store i64 %218, i64* %R11, !mcsema_real_eip !39
  %219 = load i64, i64* %R12_val, !mcsema_real_eip !39
  store i64 %219, i64* %R12, !mcsema_real_eip !39
  %220 = load i64, i64* %R13_val, !mcsema_real_eip !39
  store i64 %220, i64* %R13, !mcsema_real_eip !39
  %221 = load i64, i64* %R14_val, !mcsema_real_eip !39
  store i64 %221, i64* %R14, !mcsema_real_eip !39
  %222 = load i64, i64* %R15_val, !mcsema_real_eip !39
  store i64 %222, i64* %R15, !mcsema_real_eip !39
  %223 = load i64, i64* %RIP_val, !mcsema_real_eip !39
  store i64 %223, i64* %RIP, !mcsema_real_eip !39
  %224 = load i1, i1* %CF_val, !mcsema_real_eip !39
  store i1 %224, i1* %CF, align 1, !mcsema_real_eip !39
  %225 = load i1, i1* %PF_val, !mcsema_real_eip !39
  store i1 %225, i1* %PF, align 1, !mcsema_real_eip !39
  %226 = load i1, i1* %AF_val, !mcsema_real_eip !39
  store i1 %226, i1* %AF, align 1, !mcsema_real_eip !39
  %227 = load i1, i1* %ZF_val, !mcsema_real_eip !39
  store i1 %227, i1* %ZF, align 1, !mcsema_real_eip !39
  %228 = load i1, i1* %SF_val, !mcsema_real_eip !39
  store i1 %228, i1* %SF, align 1, !mcsema_real_eip !39
  %229 = load i1, i1* %OF_val, !mcsema_real_eip !39
  store i1 %229, i1* %OF, align 1, !mcsema_real_eip !39
  %230 = load i1, i1* %DF_val, !mcsema_real_eip !39
  store i1 %230, i1* %DF, align 1, !mcsema_real_eip !39
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !39
  %231 = load i1, i1* %FPU_B_val, !mcsema_real_eip !39
  store i1 %231, i1* %FPU_B, align 1, !mcsema_real_eip !39
  %232 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !39
  store i1 %232, i1* %FPU_C3, align 1, !mcsema_real_eip !39
  %233 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !39
  store i3 %233, i3* %FPU_TOP, align 1, !mcsema_real_eip !39
  %234 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !39
  store i1 %234, i1* %FPU_C2, align 1, !mcsema_real_eip !39
  %235 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !39
  store i1 %235, i1* %FPU_C1, align 1, !mcsema_real_eip !39
  %236 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !39
  store i1 %236, i1* %FPU_C0, align 1, !mcsema_real_eip !39
  %237 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !39
  store i1 %237, i1* %FPU_ES, align 1, !mcsema_real_eip !39
  %238 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !39
  store i1 %238, i1* %FPU_SF, align 1, !mcsema_real_eip !39
  %239 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !39
  store i1 %239, i1* %FPU_PE, align 1, !mcsema_real_eip !39
  %240 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !39
  store i1 %240, i1* %FPU_UE, align 1, !mcsema_real_eip !39
  %241 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !39
  store i1 %241, i1* %FPU_OE, align 1, !mcsema_real_eip !39
  %242 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !39
  store i1 %242, i1* %FPU_ZE, align 1, !mcsema_real_eip !39
  %243 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !39
  store i1 %243, i1* %FPU_DE, align 1, !mcsema_real_eip !39
  %244 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !39
  store i1 %244, i1* %FPU_IE, align 1, !mcsema_real_eip !39
  %245 = load i1, i1* %FPU_X_val, !mcsema_real_eip !39
  store i1 %245, i1* %FPU_X, align 1, !mcsema_real_eip !39
  %246 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !39
  store i2 %246, i2* %FPU_RC, align 1, !mcsema_real_eip !39
  %247 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !39
  store i2 %247, i2* %FPU_PC, align 1, !mcsema_real_eip !39
  %248 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !39
  store i1 %248, i1* %FPU_PM, align 1, !mcsema_real_eip !39
  %249 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !39
  store i1 %249, i1* %FPU_UM, align 1, !mcsema_real_eip !39
  %250 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !39
  store i1 %250, i1* %FPU_OM, align 1, !mcsema_real_eip !39
  %251 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !39
  store i1 %251, i1* %FPU_ZM, align 1, !mcsema_real_eip !39
  %252 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !39
  store i1 %252, i1* %FPU_DM, align 1, !mcsema_real_eip !39
  %253 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !39
  store i1 %253, i1* %FPU_IM, align 1, !mcsema_real_eip !39
  %254 = load i64, i64* %53, align 4
  store i64 %254, i64* %52, align 4
  %255 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !39
  store i16 %255, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !39
  %256 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !39
  store i64 %256, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !39
  %257 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !39
  store i16 %257, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !39
  %258 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !39
  store i64 %258, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !39
  %259 = load i128, i128* %XMM0_val, !mcsema_real_eip !39
  store i128 %259, i128* %XMM0, align 1, !mcsema_real_eip !39
  %260 = load i128, i128* %XMM1_val, !mcsema_real_eip !39
  store i128 %260, i128* %XMM1, align 1, !mcsema_real_eip !39
  %261 = load i128, i128* %XMM2_val, !mcsema_real_eip !39
  store i128 %261, i128* %XMM2, align 1, !mcsema_real_eip !39
  %262 = load i128, i128* %XMM3_val, !mcsema_real_eip !39
  store i128 %262, i128* %XMM3, align 1, !mcsema_real_eip !39
  %263 = load i128, i128* %XMM4_val, !mcsema_real_eip !39
  store i128 %263, i128* %XMM4, align 1, !mcsema_real_eip !39
  %264 = load i128, i128* %XMM5_val, !mcsema_real_eip !39
  store i128 %264, i128* %XMM5, align 1, !mcsema_real_eip !39
  %265 = load i128, i128* %XMM6_val, !mcsema_real_eip !39
  store i128 %265, i128* %XMM6, align 1, !mcsema_real_eip !39
  %266 = load i128, i128* %XMM7_val, !mcsema_real_eip !39
  store i128 %266, i128* %XMM7, align 1, !mcsema_real_eip !39
  %267 = load i128, i128* %XMM8_val, !mcsema_real_eip !39
  store i128 %267, i128* %XMM8, align 1, !mcsema_real_eip !39
  %268 = load i128, i128* %XMM9_val, !mcsema_real_eip !39
  store i128 %268, i128* %XMM9, align 1, !mcsema_real_eip !39
  %269 = load i128, i128* %XMM10_val, !mcsema_real_eip !39
  store i128 %269, i128* %XMM10, align 1, !mcsema_real_eip !39
  %270 = load i128, i128* %XMM11_val, !mcsema_real_eip !39
  store i128 %270, i128* %XMM11, align 1, !mcsema_real_eip !39
  %271 = load i128, i128* %XMM12_val, !mcsema_real_eip !39
  store i128 %271, i128* %XMM12, align 1, !mcsema_real_eip !39
  %272 = load i128, i128* %XMM13_val, !mcsema_real_eip !39
  store i128 %272, i128* %XMM13, align 1, !mcsema_real_eip !39
  %273 = load i128, i128* %XMM14_val, !mcsema_real_eip !39
  store i128 %273, i128* %XMM14, align 1, !mcsema_real_eip !39
  %274 = load i128, i128* %XMM15_val, !mcsema_real_eip !39
  store i128 %274, i128* %XMM15, align 1, !mcsema_real_eip !39
  %275 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !39
  store i64 %275, i64* %STACK_BASE, align 1, !mcsema_real_eip !39
  %276 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !39
  store i64 %276, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !39
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !39
  %277 = load i64, i64* %RAX, !mcsema_real_eip !39
  store i64 %277, i64* %RAX_val, !mcsema_real_eip !39
  %278 = load i64, i64* %RBX, !mcsema_real_eip !39
  store i64 %278, i64* %RBX_val, !mcsema_real_eip !39
  %279 = load i64, i64* %RCX, !mcsema_real_eip !39
  store i64 %279, i64* %RCX_val, !mcsema_real_eip !39
  %280 = load i64, i64* %RDX, !mcsema_real_eip !39
  store i64 %280, i64* %RDX_val, !mcsema_real_eip !39
  %281 = load i64, i64* %RSI, !mcsema_real_eip !39
  store i64 %281, i64* %RSI_val, !mcsema_real_eip !39
  %282 = load i64, i64* %RDI, !mcsema_real_eip !39
  store i64 %282, i64* %RDI_val, !mcsema_real_eip !39
  %283 = load i64, i64* %RSP, !mcsema_real_eip !39
  store i64 %283, i64* %RSP_val, !mcsema_real_eip !39
  %284 = load i64, i64* %RBP, !mcsema_real_eip !39
  store i64 %284, i64* %RBP_val, !mcsema_real_eip !39
  %285 = load i64, i64* %R8, !mcsema_real_eip !39
  store i64 %285, i64* %R8_val, !mcsema_real_eip !39
  %286 = load i64, i64* %R9, !mcsema_real_eip !39
  store i64 %286, i64* %R9_val, !mcsema_real_eip !39
  %287 = load i64, i64* %R10, !mcsema_real_eip !39
  store i64 %287, i64* %R10_val, !mcsema_real_eip !39
  %288 = load i64, i64* %R11, !mcsema_real_eip !39
  store i64 %288, i64* %R11_val, !mcsema_real_eip !39
  %289 = load i64, i64* %R12, !mcsema_real_eip !39
  store i64 %289, i64* %R12_val, !mcsema_real_eip !39
  %290 = load i64, i64* %R13, !mcsema_real_eip !39
  store i64 %290, i64* %R13_val, !mcsema_real_eip !39
  %291 = load i64, i64* %R14, !mcsema_real_eip !39
  store i64 %291, i64* %R14_val, !mcsema_real_eip !39
  %292 = load i64, i64* %R15, !mcsema_real_eip !39
  store i64 %292, i64* %R15_val, !mcsema_real_eip !39
  %293 = load i64, i64* %RIP, !mcsema_real_eip !39
  store i64 %293, i64* %RIP_val, !mcsema_real_eip !39
  %294 = load i1, i1* %CF, align 1, !mcsema_real_eip !39
  store i1 %294, i1* %CF_val, !mcsema_real_eip !39
  %295 = load i1, i1* %PF, align 1, !mcsema_real_eip !39
  store i1 %295, i1* %PF_val, !mcsema_real_eip !39
  %296 = load i1, i1* %AF, align 1, !mcsema_real_eip !39
  store i1 %296, i1* %AF_val, !mcsema_real_eip !39
  %297 = load i1, i1* %ZF, align 1, !mcsema_real_eip !39
  store i1 %297, i1* %ZF_val, !mcsema_real_eip !39
  %298 = load i1, i1* %SF, align 1, !mcsema_real_eip !39
  store i1 %298, i1* %SF_val, !mcsema_real_eip !39
  %299 = load i1, i1* %OF, align 1, !mcsema_real_eip !39
  store i1 %299, i1* %OF_val, !mcsema_real_eip !39
  %300 = load i1, i1* %DF, align 1, !mcsema_real_eip !39
  store i1 %300, i1* %DF_val, !mcsema_real_eip !39
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !39
  %301 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !39
  store i1 %301, i1* %FPU_B_val, !mcsema_real_eip !39
  %302 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !39
  store i1 %302, i1* %FPU_C3_val, !mcsema_real_eip !39
  %303 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !39
  store i3 %303, i3* %FPU_TOP_val, !mcsema_real_eip !39
  %304 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !39
  store i1 %304, i1* %FPU_C2_val, !mcsema_real_eip !39
  %305 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !39
  store i1 %305, i1* %FPU_C1_val, !mcsema_real_eip !39
  %306 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !39
  store i1 %306, i1* %FPU_C0_val, !mcsema_real_eip !39
  %307 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !39
  store i1 %307, i1* %FPU_ES_val, !mcsema_real_eip !39
  %308 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !39
  store i1 %308, i1* %FPU_SF_val, !mcsema_real_eip !39
  %309 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !39
  store i1 %309, i1* %FPU_PE_val, !mcsema_real_eip !39
  %310 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !39
  store i1 %310, i1* %FPU_UE_val, !mcsema_real_eip !39
  %311 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !39
  store i1 %311, i1* %FPU_OE_val, !mcsema_real_eip !39
  %312 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !39
  store i1 %312, i1* %FPU_ZE_val, !mcsema_real_eip !39
  %313 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !39
  store i1 %313, i1* %FPU_DE_val, !mcsema_real_eip !39
  %314 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !39
  store i1 %314, i1* %FPU_IE_val, !mcsema_real_eip !39
  %315 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !39
  store i1 %315, i1* %FPU_X_val, !mcsema_real_eip !39
  %316 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !39
  store i2 %316, i2* %FPU_RC_val, !mcsema_real_eip !39
  %317 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !39
  store i2 %317, i2* %FPU_PC_val, !mcsema_real_eip !39
  %318 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !39
  store i1 %318, i1* %FPU_PM_val, !mcsema_real_eip !39
  %319 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !39
  store i1 %319, i1* %FPU_UM_val, !mcsema_real_eip !39
  %320 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !39
  store i1 %320, i1* %FPU_OM_val, !mcsema_real_eip !39
  %321 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !39
  store i1 %321, i1* %FPU_ZM_val, !mcsema_real_eip !39
  %322 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !39
  store i1 %322, i1* %FPU_DM_val, !mcsema_real_eip !39
  %323 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !39
  store i1 %323, i1* %FPU_IM_val, !mcsema_real_eip !39
  %324 = load i64, i64* %52, align 4
  store i64 %324, i64* %53, align 4
  %325 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !39
  store i16 %325, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !39
  %326 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !39
  store i64 %326, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !39
  %327 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !39
  store i16 %327, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !39
  %328 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !39
  store i64 %328, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !39
  %329 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !39
  store i128 %329, i128* %XMM0_val, !mcsema_real_eip !39
  %330 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !39
  store i128 %330, i128* %XMM1_val, !mcsema_real_eip !39
  %331 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !39
  store i128 %331, i128* %XMM2_val, !mcsema_real_eip !39
  %332 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !39
  store i128 %332, i128* %XMM3_val, !mcsema_real_eip !39
  %333 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !39
  store i128 %333, i128* %XMM4_val, !mcsema_real_eip !39
  %334 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !39
  store i128 %334, i128* %XMM5_val, !mcsema_real_eip !39
  %335 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !39
  store i128 %335, i128* %XMM6_val, !mcsema_real_eip !39
  %336 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !39
  store i128 %336, i128* %XMM7_val, !mcsema_real_eip !39
  %337 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !39
  store i128 %337, i128* %XMM8_val, !mcsema_real_eip !39
  %338 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !39
  store i128 %338, i128* %XMM9_val, !mcsema_real_eip !39
  %339 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !39
  store i128 %339, i128* %XMM10_val, !mcsema_real_eip !39
  %340 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !39
  store i128 %340, i128* %XMM11_val, !mcsema_real_eip !39
  %341 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !39
  store i128 %341, i128* %XMM12_val, !mcsema_real_eip !39
  %342 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !39
  store i128 %342, i128* %XMM13_val, !mcsema_real_eip !39
  %343 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !39
  store i128 %343, i128* %XMM14_val, !mcsema_real_eip !39
  %344 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !39
  store i128 %344, i128* %XMM15_val, !mcsema_real_eip !39
  %345 = load i64, i64* %STACK_BASE, !mcsema_real_eip !39
  store i64 %345, i64* %STACK_BASE_val, !mcsema_real_eip !39
  %346 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !39
  store i64 %346, i64* %STACK_LIMIT_val, !mcsema_real_eip !39
  %347 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %348 = add i64 %347, -64, !mcsema_real_eip !40
  %349 = inttoptr i64 %348 to i64*, !mcsema_real_eip !40
  %350 = load i64, i64* %RDX_val, !mcsema_real_eip !40
  %351 = trunc i64 %350 to i32, !mcsema_real_eip !40
  %352 = bitcast i64* %349 to i32*
  store i32 %351, i32* %352, !mcsema_real_eip !40
  %353 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %354 = add i64 %353, -72, !mcsema_real_eip !41
  %355 = inttoptr i64 %354 to i64*, !mcsema_real_eip !41
  %356 = load i64, i64* %RAX_val, !mcsema_real_eip !41
  store i64 %356, i64* %355, !mcsema_real_eip !41
  %357 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  %358 = add i64 %357, -72, !mcsema_real_eip !42
  %359 = inttoptr i64 %358 to i64*, !mcsema_real_eip !42
  %360 = load i64, i64* %359, !mcsema_real_eip !42
  store i64 %360, i64* %RAX_val, !mcsema_real_eip !42
  %361 = add i64 %357, -40, !mcsema_real_eip !43
  %362 = inttoptr i64 %361 to i64*, !mcsema_real_eip !43
  store i64 %360, i64* %362, !mcsema_real_eip !43
  %363 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  %364 = add i64 %363, -64, !mcsema_real_eip !44
  %365 = inttoptr i64 %364 to i64*, !mcsema_real_eip !44
  %366 = bitcast i64* %365 to i32*
  %367 = load i32, i32* %366, !mcsema_real_eip !44
  %368 = zext i32 %367 to i64, !mcsema_real_eip !44
  store i64 %368, i64* %RDX_val, !mcsema_real_eip !44
  %369 = load i64, i64* %RBP_val, !mcsema_real_eip !45
  %370 = add i64 %369, -32, !mcsema_real_eip !45
  %371 = inttoptr i64 %370 to i64*, !mcsema_real_eip !45
  %372 = bitcast i64* %371 to i32*
  store i32 %367, i32* %372, !mcsema_real_eip !45
  %373 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %374 = add i64 %373, -40, !mcsema_real_eip !46
  %375 = inttoptr i64 %374 to i64*, !mcsema_real_eip !46
  %376 = bitcast i64* %375 to i32*
  %377 = load i32, i32* %376, !mcsema_real_eip !46
  %378 = zext i32 %377 to i64, !mcsema_real_eip !46
  store i64 %378, i64* %RDX_val, !mcsema_real_eip !46
  %379 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  %380 = add i64 %379, -36, !mcsema_real_eip !47
  %381 = inttoptr i64 %380 to i64*, !mcsema_real_eip !47
  %382 = bitcast i64* %381 to i32*
  %383 = load i32, i32* %382, !mcsema_real_eip !47
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %377, i32 %383)
  %384 = extractvalue { i32, i1 } %uadd, 0
  %385 = xor i32 %384, %383, !mcsema_real_eip !47
  %386 = xor i32 %385, %377, !mcsema_real_eip !47
  %387 = and i32 %386, 16, !mcsema_real_eip !47
  %388 = icmp ne i32 %387, 0, !mcsema_real_eip !47
  store i1 %388, i1* %AF_val, !mcsema_real_eip !47
  %389 = icmp slt i32 %384, 0
  store i1 %389, i1* %SF_val, !mcsema_real_eip !47
  %390 = icmp eq i32 %384, 0, !mcsema_real_eip !47
  store i1 %390, i1* %ZF_val, !mcsema_real_eip !47
  %391 = xor i32 %377, -2147483648, !mcsema_real_eip !47
  %392 = xor i32 %391, %383, !mcsema_real_eip !47
  %393 = and i32 %385, %392, !mcsema_real_eip !47
  %394 = icmp slt i32 %393, 0
  store i1 %394, i1* %OF_val, !mcsema_real_eip !47
  %395 = trunc i32 %384 to i8, !mcsema_real_eip !47
  %396 = tail call i8 @llvm.ctpop.i8(i8 %395), !mcsema_real_eip !47
  %397 = and i8 %396, 1
  %398 = icmp eq i8 %397, 0
  store i1 %398, i1* %PF_val, !mcsema_real_eip !47
  %399 = extractvalue { i32, i1 } %uadd, 1
  store i1 %399, i1* %CF_val, !mcsema_real_eip !47
  %400 = zext i32 %384 to i64, !mcsema_real_eip !47
  store i64 %400, i64* %RDX_val, !mcsema_real_eip !47
  %401 = load i64, i64* %RBP_val, !mcsema_real_eip !48
  %402 = add i64 %401, -32, !mcsema_real_eip !48
  %403 = inttoptr i64 %402 to i64*, !mcsema_real_eip !48
  %404 = bitcast i64* %403 to i32*
  %405 = load i32, i32* %404, !mcsema_real_eip !48
  %406 = add i32 %384, %405
  %407 = zext i32 %406 to i64, !mcsema_real_eip !48
  store i64 %407, i64* %RDX_val, !mcsema_real_eip !48
  store i64 %407, i64* %RAX_val, !mcsema_real_eip !49
  %408 = load i64, i64* %RSP_val, !mcsema_real_eip !50
  %uadd210 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %408, i64 128)
  %409 = extractvalue { i64, i1 } %uadd210, 0
  %410 = xor i64 %409, %408, !mcsema_real_eip !50
  %411 = and i64 %410, 16, !mcsema_real_eip !50
  %412 = icmp ne i64 %411, 0, !mcsema_real_eip !50
  store i1 %412, i1* %AF_val, !mcsema_real_eip !50
  %413 = icmp slt i64 %409, 0
  store i1 %413, i1* %SF_val, !mcsema_real_eip !50
  %414 = icmp eq i64 %409, 0, !mcsema_real_eip !50
  store i1 %414, i1* %ZF_val, !mcsema_real_eip !50
  %415 = xor i64 %408, -9223372036854775808, !mcsema_real_eip !50
  %416 = and i64 %410, %415, !mcsema_real_eip !50
  %417 = icmp slt i64 %416, 0
  store i1 %417, i1* %OF_val, !mcsema_real_eip !50
  %418 = trunc i64 %409 to i8, !mcsema_real_eip !50
  %419 = tail call i8 @llvm.ctpop.i8(i8 %418), !mcsema_real_eip !50
  %420 = and i8 %419, 1
  %421 = icmp eq i8 %420, 0
  store i1 %421, i1* %PF_val, !mcsema_real_eip !50
  %422 = extractvalue { i64, i1 } %uadd210, 1
  store i1 %422, i1* %CF_val, !mcsema_real_eip !50
  store i64 %409, i64* %RSP_val, !mcsema_real_eip !50
  %423 = inttoptr i64 %409 to i64*, !mcsema_real_eip !51
  %424 = load i64, i64* %423, !mcsema_real_eip !51
  store i64 %424, i64* %RBP_val, !mcsema_real_eip !51
  %425 = add i64 %409, 16, !mcsema_real_eip !52
  store i64 %425, i64* %RSP_val, !mcsema_real_eip !52
  %426 = load i64, i64* %RAX_val, !mcsema_real_eip !52
  store i64 %426, i64* %RAX, !mcsema_real_eip !52
  %427 = load i64, i64* %RBX_val, !mcsema_real_eip !52
  store i64 %427, i64* %RBX, !mcsema_real_eip !52
  %428 = load i64, i64* %RCX_val, !mcsema_real_eip !52
  store i64 %428, i64* %RCX, !mcsema_real_eip !52
  %429 = load i64, i64* %RDX_val, !mcsema_real_eip !52
  store i64 %429, i64* %RDX, !mcsema_real_eip !52
  %430 = load i64, i64* %RSI_val, !mcsema_real_eip !52
  store i64 %430, i64* %RSI, !mcsema_real_eip !52
  %431 = load i64, i64* %RDI_val, !mcsema_real_eip !52
  store i64 %431, i64* %RDI, !mcsema_real_eip !52
  %432 = load i64, i64* %RSP_val, !mcsema_real_eip !52
  store i64 %432, i64* %RSP, !mcsema_real_eip !52
  %433 = load i64, i64* %RBP_val, !mcsema_real_eip !52
  store i64 %433, i64* %RBP, !mcsema_real_eip !52
  %434 = load i64, i64* %R8_val, !mcsema_real_eip !52
  store i64 %434, i64* %R8, !mcsema_real_eip !52
  %435 = load i64, i64* %R9_val, !mcsema_real_eip !52
  store i64 %435, i64* %R9, !mcsema_real_eip !52
  %436 = load i64, i64* %R10_val, !mcsema_real_eip !52
  store i64 %436, i64* %R10, !mcsema_real_eip !52
  %437 = load i64, i64* %R11_val, !mcsema_real_eip !52
  store i64 %437, i64* %R11, !mcsema_real_eip !52
  %438 = load i64, i64* %R12_val, !mcsema_real_eip !52
  store i64 %438, i64* %R12, !mcsema_real_eip !52
  %439 = load i64, i64* %R13_val, !mcsema_real_eip !52
  store i64 %439, i64* %R13, !mcsema_real_eip !52
  %440 = load i64, i64* %R14_val, !mcsema_real_eip !52
  store i64 %440, i64* %R14, !mcsema_real_eip !52
  %441 = load i64, i64* %R15_val, !mcsema_real_eip !52
  store i64 %441, i64* %R15, !mcsema_real_eip !52
  %442 = load i64, i64* %RIP_val, !mcsema_real_eip !52
  store i64 %442, i64* %RIP, !mcsema_real_eip !52
  %443 = load i1, i1* %CF_val, !mcsema_real_eip !52
  store i1 %443, i1* %CF, align 1, !mcsema_real_eip !52
  %444 = load i1, i1* %PF_val, !mcsema_real_eip !52
  store i1 %444, i1* %PF, align 1, !mcsema_real_eip !52
  %445 = load i1, i1* %AF_val, !mcsema_real_eip !52
  store i1 %445, i1* %AF, align 1, !mcsema_real_eip !52
  %446 = load i1, i1* %ZF_val, !mcsema_real_eip !52
  store i1 %446, i1* %ZF, align 1, !mcsema_real_eip !52
  %447 = load i1, i1* %SF_val, !mcsema_real_eip !52
  store i1 %447, i1* %SF, align 1, !mcsema_real_eip !52
  %448 = load i1, i1* %OF_val, !mcsema_real_eip !52
  store i1 %448, i1* %OF, align 1, !mcsema_real_eip !52
  %449 = load i1, i1* %DF_val, !mcsema_real_eip !52
  store i1 %449, i1* %DF, align 1, !mcsema_real_eip !52
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !52
  %450 = load i1, i1* %FPU_B_val, !mcsema_real_eip !52
  store i1 %450, i1* %FPU_B, align 1, !mcsema_real_eip !52
  %451 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !52
  store i1 %451, i1* %FPU_C3, align 1, !mcsema_real_eip !52
  %452 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !52
  store i3 %452, i3* %FPU_TOP, align 1, !mcsema_real_eip !52
  %453 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !52
  store i1 %453, i1* %FPU_C2, align 1, !mcsema_real_eip !52
  %454 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !52
  store i1 %454, i1* %FPU_C1, align 1, !mcsema_real_eip !52
  %455 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !52
  store i1 %455, i1* %FPU_C0, align 1, !mcsema_real_eip !52
  %456 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !52
  store i1 %456, i1* %FPU_ES, align 1, !mcsema_real_eip !52
  %457 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !52
  store i1 %457, i1* %FPU_SF, align 1, !mcsema_real_eip !52
  %458 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !52
  store i1 %458, i1* %FPU_PE, align 1, !mcsema_real_eip !52
  %459 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !52
  store i1 %459, i1* %FPU_UE, align 1, !mcsema_real_eip !52
  %460 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !52
  store i1 %460, i1* %FPU_OE, align 1, !mcsema_real_eip !52
  %461 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !52
  store i1 %461, i1* %FPU_ZE, align 1, !mcsema_real_eip !52
  %462 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !52
  store i1 %462, i1* %FPU_DE, align 1, !mcsema_real_eip !52
  %463 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !52
  store i1 %463, i1* %FPU_IE, align 1, !mcsema_real_eip !52
  %464 = load i1, i1* %FPU_X_val, !mcsema_real_eip !52
  store i1 %464, i1* %FPU_X, align 1, !mcsema_real_eip !52
  %465 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !52
  store i2 %465, i2* %FPU_RC, align 1, !mcsema_real_eip !52
  %466 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !52
  store i2 %466, i2* %FPU_PC, align 1, !mcsema_real_eip !52
  %467 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !52
  store i1 %467, i1* %FPU_PM, align 1, !mcsema_real_eip !52
  %468 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !52
  store i1 %468, i1* %FPU_UM, align 1, !mcsema_real_eip !52
  %469 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !52
  store i1 %469, i1* %FPU_OM, align 1, !mcsema_real_eip !52
  %470 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !52
  store i1 %470, i1* %FPU_ZM, align 1, !mcsema_real_eip !52
  %471 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !52
  store i1 %471, i1* %FPU_DM, align 1, !mcsema_real_eip !52
  %472 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !52
  store i1 %472, i1* %FPU_IM, align 1, !mcsema_real_eip !52
  %473 = load i64, i64* %53, align 4
  store i64 %473, i64* %52, align 4
  %474 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !52
  store i16 %474, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !52
  %475 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !52
  store i64 %475, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !52
  %476 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !52
  store i16 %476, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !52
  %477 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !52
  store i64 %477, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !52
  %478 = load i128, i128* %XMM0_val, !mcsema_real_eip !52
  store i128 %478, i128* %XMM0, align 1, !mcsema_real_eip !52
  %479 = load i128, i128* %XMM1_val, !mcsema_real_eip !52
  store i128 %479, i128* %XMM1, align 1, !mcsema_real_eip !52
  %480 = load i128, i128* %XMM2_val, !mcsema_real_eip !52
  store i128 %480, i128* %XMM2, align 1, !mcsema_real_eip !52
  %481 = load i128, i128* %XMM3_val, !mcsema_real_eip !52
  store i128 %481, i128* %XMM3, align 1, !mcsema_real_eip !52
  %482 = load i128, i128* %XMM4_val, !mcsema_real_eip !52
  store i128 %482, i128* %XMM4, align 1, !mcsema_real_eip !52
  %483 = load i128, i128* %XMM5_val, !mcsema_real_eip !52
  store i128 %483, i128* %XMM5, align 1, !mcsema_real_eip !52
  %484 = load i128, i128* %XMM6_val, !mcsema_real_eip !52
  store i128 %484, i128* %XMM6, align 1, !mcsema_real_eip !52
  %485 = load i128, i128* %XMM7_val, !mcsema_real_eip !52
  store i128 %485, i128* %XMM7, align 1, !mcsema_real_eip !52
  %486 = load i128, i128* %XMM8_val, !mcsema_real_eip !52
  store i128 %486, i128* %XMM8, align 1, !mcsema_real_eip !52
  %487 = load i128, i128* %XMM9_val, !mcsema_real_eip !52
  store i128 %487, i128* %XMM9, align 1, !mcsema_real_eip !52
  %488 = load i128, i128* %XMM10_val, !mcsema_real_eip !52
  store i128 %488, i128* %XMM10, align 1, !mcsema_real_eip !52
  %489 = load i128, i128* %XMM11_val, !mcsema_real_eip !52
  store i128 %489, i128* %XMM11, align 1, !mcsema_real_eip !52
  %490 = load i128, i128* %XMM12_val, !mcsema_real_eip !52
  store i128 %490, i128* %XMM12, align 1, !mcsema_real_eip !52
  %491 = load i128, i128* %XMM13_val, !mcsema_real_eip !52
  store i128 %491, i128* %XMM13, align 1, !mcsema_real_eip !52
  %492 = load i128, i128* %XMM14_val, !mcsema_real_eip !52
  store i128 %492, i128* %XMM14, align 1, !mcsema_real_eip !52
  %493 = load i128, i128* %XMM15_val, !mcsema_real_eip !52
  store i128 %493, i128* %XMM15, align 1, !mcsema_real_eip !52
  %494 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !52
  store i64 %494, i64* %STACK_BASE, align 1, !mcsema_real_eip !52
  %495 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !52
  store i64 %495, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !52
  ret void, !mcsema_real_eip !52
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !53
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !53
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !53
  %XMM15_val = alloca i128, !mcsema_real_eip !53
  %XMM14_val = alloca i128, !mcsema_real_eip !53
  %XMM13_val = alloca i128, !mcsema_real_eip !53
  %XMM12_val = alloca i128, !mcsema_real_eip !53
  %XMM11_val = alloca i128, !mcsema_real_eip !53
  %XMM10_val = alloca i128, !mcsema_real_eip !53
  %XMM9_val = alloca i128, !mcsema_real_eip !53
  %XMM8_val = alloca i128, !mcsema_real_eip !53
  %XMM7_val = alloca i128, !mcsema_real_eip !53
  %XMM6_val = alloca i128, !mcsema_real_eip !53
  %XMM5_val = alloca i128, !mcsema_real_eip !53
  %XMM4_val = alloca i128, !mcsema_real_eip !53
  %XMM3_val = alloca i128, !mcsema_real_eip !53
  %XMM2_val = alloca i128, !mcsema_real_eip !53
  %XMM1_val = alloca i128, !mcsema_real_eip !53
  %XMM0_val = alloca i128, !mcsema_real_eip !53
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !53
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !53
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !53
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !53
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !53
  %FPU_IM_val = alloca i1, !mcsema_real_eip !53
  %FPU_DM_val = alloca i1, !mcsema_real_eip !53
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !53
  %FPU_OM_val = alloca i1, !mcsema_real_eip !53
  %FPU_UM_val = alloca i1, !mcsema_real_eip !53
  %FPU_PM_val = alloca i1, !mcsema_real_eip !53
  %FPU_PC_val = alloca i2, !mcsema_real_eip !53
  %FPU_RC_val = alloca i2, !mcsema_real_eip !53
  %FPU_X_val = alloca i1, !mcsema_real_eip !53
  %FPU_IE_val = alloca i1, !mcsema_real_eip !53
  %FPU_DE_val = alloca i1, !mcsema_real_eip !53
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !53
  %FPU_OE_val = alloca i1, !mcsema_real_eip !53
  %FPU_UE_val = alloca i1, !mcsema_real_eip !53
  %FPU_PE_val = alloca i1, !mcsema_real_eip !53
  %FPU_SF_val = alloca i1, !mcsema_real_eip !53
  %FPU_ES_val = alloca i1, !mcsema_real_eip !53
  %FPU_C0_val = alloca i1, !mcsema_real_eip !53
  %FPU_C1_val = alloca i1, !mcsema_real_eip !53
  %FPU_C2_val = alloca i1, !mcsema_real_eip !53
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !53
  %FPU_C3_val = alloca i1, !mcsema_real_eip !53
  %FPU_B_val = alloca i1, !mcsema_real_eip !53
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !53
  %DF_val = alloca i1, !mcsema_real_eip !53
  %OF_val = alloca i1, !mcsema_real_eip !53
  %SF_val = alloca i1, !mcsema_real_eip !53
  %CF_val = alloca i1, !mcsema_real_eip !53
  %AF_val = alloca i1, !mcsema_real_eip !53
  %PF_val = alloca i1, !mcsema_real_eip !53
  %ZF_val = alloca i1, !mcsema_real_eip !53
  %RIP_val = alloca i64, !mcsema_real_eip !53
  %R14_val = alloca i64, !mcsema_real_eip !53
  %R13_val = alloca i64, !mcsema_real_eip !53
  %R12_val = alloca i64, !mcsema_real_eip !53
  %R11_val = alloca i64, !mcsema_real_eip !53
  %R10_val = alloca i64, !mcsema_real_eip !53
  %R9_val = alloca i64, !mcsema_real_eip !53
  %R8_val = alloca i64, !mcsema_real_eip !53
  %RSP_val = alloca i64, !mcsema_real_eip !53
  %RBP_val = alloca i64, !mcsema_real_eip !53
  %RDI_val = alloca i64, !mcsema_real_eip !53
  %RSI_val = alloca i64, !mcsema_real_eip !53
  %RDX_val = alloca i64, !mcsema_real_eip !53
  %RCX_val = alloca i64, !mcsema_real_eip !53
  %RBX_val = alloca i64, !mcsema_real_eip !53
  %RAX_val = alloca i64, !mcsema_real_eip !53
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !53
  %1 = load i64, i64* %RAX, !mcsema_real_eip !53
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !53
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !53
  %2 = load i64, i64* %RBX, !mcsema_real_eip !53
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !53
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !53
  %3 = load i64, i64* %RCX, !mcsema_real_eip !53
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !53
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !53
  %4 = load i64, i64* %RDX, !mcsema_real_eip !53
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !53
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !53
  %5 = load i64, i64* %RSI, !mcsema_real_eip !53
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !53
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !53
  %6 = load i64, i64* %RDI, !mcsema_real_eip !53
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !53
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !53
  %7 = load i64, i64* %RSP, !mcsema_real_eip !53
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !53
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !53
  %8 = load i64, i64* %RBP, !mcsema_real_eip !53
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !53
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !53
  %9 = load i64, i64* %R8, !mcsema_real_eip !53
  store i64 %9, i64* %R8_val, !mcsema_real_eip !53
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !53
  %10 = load i64, i64* %R9, !mcsema_real_eip !53
  store i64 %10, i64* %R9_val, !mcsema_real_eip !53
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !53
  %11 = load i64, i64* %R10, !mcsema_real_eip !53
  store i64 %11, i64* %R10_val, !mcsema_real_eip !53
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !53
  %12 = load i64, i64* %R11, !mcsema_real_eip !53
  store i64 %12, i64* %R11_val, !mcsema_real_eip !53
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !53
  %13 = load i64, i64* %R12, !mcsema_real_eip !53
  store i64 %13, i64* %R12_val, !mcsema_real_eip !53
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !53
  %14 = load i64, i64* %R13, !mcsema_real_eip !53
  store i64 %14, i64* %R13_val, !mcsema_real_eip !53
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !53
  %15 = load i64, i64* %R14, !mcsema_real_eip !53
  store i64 %15, i64* %R14_val, !mcsema_real_eip !53
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !53
  %16 = load i64, i64* %R15, !mcsema_real_eip !53
  store i64 %16, i64* %R15_val, !mcsema_real_eip !53
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !53
  %17 = load i64, i64* %RIP, !mcsema_real_eip !53
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !53
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !53
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !53
  store i1 %18, i1* %CF_val, !mcsema_real_eip !53
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !53
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !53
  store i1 %19, i1* %PF_val, !mcsema_real_eip !53
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !53
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !53
  store i1 %20, i1* %AF_val, !mcsema_real_eip !53
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !53
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !53
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !53
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !53
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !53
  store i1 %22, i1* %SF_val, !mcsema_real_eip !53
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !53
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !53
  store i1 %23, i1* %OF_val, !mcsema_real_eip !53
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !53
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !53
  store i1 %24, i1* %DF_val, !mcsema_real_eip !53
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !53
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !53
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !53
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !53
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !53
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !53
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !53
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !53
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !53
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !53
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !53
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !53
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !53
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !53
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !53
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !53
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !53
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !53
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !53
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !53
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !53
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !53
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !53
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !53
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !53
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !53
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !53
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !53
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !53
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !53
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !53
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !53
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !53
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !53
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !53
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !53
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !53
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !53
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !53
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !53
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !53
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !53
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !53
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !53
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !53
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !53
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !53
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !53
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !53
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !53
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !53
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !53
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !53
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !53
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !53
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !53
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !53
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !53
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !53
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !53
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !53
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !53
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !53
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !53
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !53
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !53
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !53
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !53
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !53
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !53
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !53
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !53
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !53
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !53
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !53
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !53
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !53
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !53
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !53
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !53
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !53
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !53
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !53
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !53
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !53
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !53
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !53
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !53
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !53
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !53
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !53
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !53
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !53
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !53
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !53
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !53
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !53
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !53
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !53
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !53
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !53
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !53
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !53
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !53
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !53
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !53
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !53
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !53
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !53
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !53
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !53
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !53
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !53
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !53
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !53
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !53
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !53
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !53
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !53
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !53
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !53
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !53
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !53
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !53
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !53
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !53
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !53
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !53
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !53
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !53
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !53
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !53
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !53
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !53
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !53
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !53
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !53
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !53
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !53
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !53
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !53
  %78 = load i64, i64* %RSP_val, !mcsema_real_eip !53
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !53
  store i64 %77, i64* %80, !mcsema_real_eip !53
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !54
  %81 = load i64, i64* %RBX_val, !mcsema_real_eip !55
  %82 = add i64 %78, -16
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !55
  store i64 %81, i64* %83, !mcsema_real_eip !55
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !55
  %84 = load i64, i64* %RBP_val, !mcsema_real_eip !56
  %85 = add i64 %84, 48, !mcsema_real_eip !56
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !56
  %87 = load i64, i64* %86, !mcsema_real_eip !56
  store i64 %87, i64* %RAX_val, !mcsema_real_eip !56
  %88 = add i64 %84, 40, !mcsema_real_eip !57
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !57
  %90 = load i64, i64* %89, !mcsema_real_eip !57
  store i64 %90, i64* %R10_val, !mcsema_real_eip !57
  %91 = load i64, i64* %RBP_val, !mcsema_real_eip !58
  %92 = add i64 %91, 24, !mcsema_real_eip !58
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !58
  %94 = ptrtoint i64* %93 to i64, !mcsema_real_eip !58
  store i64 %94, i64* %R11_val, !mcsema_real_eip !58
  %95 = add i64 %91, 16, !mcsema_real_eip !59
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !59
  %97 = bitcast i64* %96 to i32*
  %98 = load i32, i32* %97, !mcsema_real_eip !59
  %99 = zext i32 %98 to i64, !mcsema_real_eip !59
  store i64 %99, i64* %RBX_val, !mcsema_real_eip !59
  %100 = load i64, i64* %RBP_val, !mcsema_real_eip !60
  %101 = add i64 %100, -56, !mcsema_real_eip !60
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !60
  %103 = load i64, i64* %RDI_val, !mcsema_real_eip !60
  store i64 %103, i64* %102, !mcsema_real_eip !60
  %104 = load i64, i64* %RBP_val, !mcsema_real_eip !61
  %105 = add i64 %104, -48, !mcsema_real_eip !61
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !61
  %107 = load i64, i64* %RSI_val, !mcsema_real_eip !61
  %108 = trunc i64 %107 to i32, !mcsema_real_eip !61
  %109 = bitcast i64* %106 to i32*
  store i32 %108, i32* %109, !mcsema_real_eip !61
  %110 = load i64, i64* %RBP_val, !mcsema_real_eip !62
  %111 = add i64 %110, -32, !mcsema_real_eip !62
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !62
  %113 = load i64, i64* %RSI_val, !mcsema_real_eip !62
  %114 = trunc i64 %113 to i32, !mcsema_real_eip !62
  %115 = bitcast i64* %112 to i32*
  store i32 %114, i32* %115, !mcsema_real_eip !62
  %116 = load i64, i64* %RBP_val, !mcsema_real_eip !63
  %117 = add i64 %116, -56, !mcsema_real_eip !63
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !63
  %119 = load i64, i64* %118, !mcsema_real_eip !63
  store i64 %119, i64* %RDI_val, !mcsema_real_eip !63
  %120 = add i64 %116, -40, !mcsema_real_eip !64
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !64
  store i64 %119, i64* %121, !mcsema_real_eip !64
  %122 = load i64, i64* %RBP_val, !mcsema_real_eip !65
  %123 = add i64 %122, -64, !mcsema_real_eip !65
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !65
  %125 = load i64, i64* %RDX_val, !mcsema_real_eip !65
  store i64 %125, i64* %124, !mcsema_real_eip !65
  %126 = load i64, i64* %RBP_val, !mcsema_real_eip !66
  %127 = add i64 %126, -72, !mcsema_real_eip !66
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !66
  %129 = load i64, i64* %RCX_val, !mcsema_real_eip !66
  store i64 %129, i64* %128, !mcsema_real_eip !66
  %130 = load i64, i64* %RBP_val, !mcsema_real_eip !67
  %131 = add i64 %130, -76, !mcsema_real_eip !67
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !67
  %133 = load i64, i64* %R8_val, !mcsema_real_eip !67
  %134 = trunc i64 %133 to i32, !mcsema_real_eip !67
  %135 = bitcast i64* %132 to i32*
  store i32 %134, i32* %135, !mcsema_real_eip !67
  %136 = load i64, i64* %RBP_val, !mcsema_real_eip !68
  %137 = add i64 %136, -80, !mcsema_real_eip !68
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !68
  %139 = load i64, i64* %R9_val, !mcsema_real_eip !68
  %140 = trunc i64 %139 to i32, !mcsema_real_eip !68
  %141 = bitcast i64* %138 to i32*
  store i32 %140, i32* %141, !mcsema_real_eip !68
  %142 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  %143 = add i64 %142, -84, !mcsema_real_eip !69
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !69
  %145 = load i64, i64* %RBX_val, !mcsema_real_eip !69
  %146 = trunc i64 %145 to i32, !mcsema_real_eip !69
  %147 = bitcast i64* %144 to i32*
  store i32 %146, i32* %147, !mcsema_real_eip !69
  %148 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %149 = add i64 %148, -96, !mcsema_real_eip !70
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !70
  %151 = load i64, i64* %R10_val, !mcsema_real_eip !70
  store i64 %151, i64* %150, !mcsema_real_eip !70
  %152 = load i64, i64* %RBP_val, !mcsema_real_eip !71
  %153 = add i64 %152, -104, !mcsema_real_eip !71
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !71
  %155 = load i64, i64* %RAX_val, !mcsema_real_eip !71
  store i64 %155, i64* %154, !mcsema_real_eip !71
  %156 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %157 = add i64 %156, -40, !mcsema_real_eip !72
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !72
  %159 = bitcast i64* %158 to i32*
  %160 = load i32, i32* %159, !mcsema_real_eip !72
  %161 = zext i32 %160 to i64, !mcsema_real_eip !72
  store i64 %161, i64* %RSI_val, !mcsema_real_eip !72
  %162 = load i64, i64* %RBP_val, !mcsema_real_eip !73
  %163 = add i64 %162, -64, !mcsema_real_eip !73
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !73
  %165 = load i64, i64* %164, !mcsema_real_eip !73
  store i64 %165, i64* %RCX_val, !mcsema_real_eip !73
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !74
  %167 = bitcast i64* %166 to i32*
  %168 = load i32, i32* %167, !mcsema_real_eip !74
  %169 = zext i32 %168 to i64, !mcsema_real_eip !74
  store i64 %169, i64* %R8_val, !mcsema_real_eip !74
  %170 = load i64, i64* %RSI_val, !mcsema_real_eip !75
  %171 = trunc i64 %170 to i32, !mcsema_real_eip !75
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %168, i32 %171)
  %172 = extractvalue { i32, i1 } %uadd, 0
  %173 = xor i32 %172, %171, !mcsema_real_eip !75
  %174 = xor i32 %173, %168, !mcsema_real_eip !75
  %175 = and i32 %174, 16, !mcsema_real_eip !75
  %176 = icmp ne i32 %175, 0, !mcsema_real_eip !75
  store i1 %176, i1* %AF_val, !mcsema_real_eip !75
  %177 = icmp slt i32 %172, 0
  store i1 %177, i1* %SF_val, !mcsema_real_eip !75
  %178 = icmp eq i32 %172, 0, !mcsema_real_eip !75
  store i1 %178, i1* %ZF_val, !mcsema_real_eip !75
  %179 = xor i32 %168, -2147483648, !mcsema_real_eip !75
  %180 = xor i32 %179, %171, !mcsema_real_eip !75
  %181 = and i32 %173, %180, !mcsema_real_eip !75
  %182 = icmp slt i32 %181, 0
  store i1 %182, i1* %OF_val, !mcsema_real_eip !75
  %183 = trunc i32 %172 to i8, !mcsema_real_eip !75
  %184 = tail call i8 @llvm.ctpop.i8(i8 %183), !mcsema_real_eip !75
  %185 = and i8 %184, 1
  %186 = icmp eq i8 %185, 0
  store i1 %186, i1* %PF_val, !mcsema_real_eip !75
  %187 = extractvalue { i32, i1 } %uadd, 1
  store i1 %187, i1* %CF_val, !mcsema_real_eip !75
  %188 = zext i32 %172 to i64, !mcsema_real_eip !75
  store i64 %188, i64* %RSI_val, !mcsema_real_eip !75
  %189 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %190 = add i64 %189, -72, !mcsema_real_eip !76
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !76
  %192 = load i64, i64* %191, !mcsema_real_eip !76
  store i64 %192, i64* %RCX_val, !mcsema_real_eip !76
  %193 = inttoptr i64 %192 to i64*, !mcsema_real_eip !77
  %194 = bitcast i64* %193 to i32*
  %195 = load i32, i32* %194, !mcsema_real_eip !77
  %196 = zext i32 %195 to i64, !mcsema_real_eip !77
  store i64 %196, i64* %R8_val, !mcsema_real_eip !77
  %197 = load i64, i64* %RSI_val, !mcsema_real_eip !78
  %198 = trunc i64 %197 to i32, !mcsema_real_eip !78
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %195, i32 %198)
  %199 = extractvalue { i32, i1 } %uadd70, 0
  %200 = xor i32 %199, %198, !mcsema_real_eip !78
  %201 = xor i32 %200, %195, !mcsema_real_eip !78
  %202 = and i32 %201, 16, !mcsema_real_eip !78
  %203 = icmp ne i32 %202, 0, !mcsema_real_eip !78
  store i1 %203, i1* %AF_val, !mcsema_real_eip !78
  %204 = icmp slt i32 %199, 0
  store i1 %204, i1* %SF_val, !mcsema_real_eip !78
  %205 = icmp eq i32 %199, 0, !mcsema_real_eip !78
  store i1 %205, i1* %ZF_val, !mcsema_real_eip !78
  %206 = xor i32 %195, -2147483648, !mcsema_real_eip !78
  %207 = xor i32 %206, %198, !mcsema_real_eip !78
  %208 = and i32 %200, %207, !mcsema_real_eip !78
  %209 = icmp slt i32 %208, 0
  store i1 %209, i1* %OF_val, !mcsema_real_eip !78
  %210 = trunc i32 %199 to i8, !mcsema_real_eip !78
  %211 = tail call i8 @llvm.ctpop.i8(i8 %210), !mcsema_real_eip !78
  %212 = and i8 %211, 1
  %213 = icmp eq i8 %212, 0
  store i1 %213, i1* %PF_val, !mcsema_real_eip !78
  %214 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %214, i1* %CF_val, !mcsema_real_eip !78
  %215 = zext i32 %199 to i64, !mcsema_real_eip !78
  store i64 %215, i64* %RSI_val, !mcsema_real_eip !78
  %216 = load i64, i64* %R11_val, !mcsema_real_eip !79
  %217 = inttoptr i64 %216 to i64*, !mcsema_real_eip !79
  %218 = bitcast i64* %217 to i32*
  %219 = load i32, i32* %218, !mcsema_real_eip !79
  %220 = zext i32 %219 to i64, !mcsema_real_eip !79
  store i64 %220, i64* %R8_val, !mcsema_real_eip !79
  %221 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %222 = add i64 %221, -96, !mcsema_real_eip !80
  %223 = inttoptr i64 %222 to i64*, !mcsema_real_eip !80
  %224 = load i64, i64* %223, !mcsema_real_eip !80
  store i64 %224, i64* %RCX_val, !mcsema_real_eip !80
  %225 = inttoptr i64 %224 to i64*, !mcsema_real_eip !81
  %226 = bitcast i64* %225 to i32*
  %227 = load i32, i32* %226, !mcsema_real_eip !81
  %228 = zext i32 %227 to i64, !mcsema_real_eip !81
  store i64 %228, i64* %R9_val, !mcsema_real_eip !81
  %229 = load i64, i64* %R8_val, !mcsema_real_eip !82
  %230 = trunc i64 %229 to i32, !mcsema_real_eip !82
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %227, i32 %230)
  %231 = extractvalue { i32, i1 } %uadd71, 0
  %232 = xor i32 %231, %230, !mcsema_real_eip !82
  %233 = xor i32 %232, %227, !mcsema_real_eip !82
  %234 = and i32 %233, 16, !mcsema_real_eip !82
  %235 = icmp ne i32 %234, 0, !mcsema_real_eip !82
  store i1 %235, i1* %AF_val, !mcsema_real_eip !82
  %236 = icmp slt i32 %231, 0
  store i1 %236, i1* %SF_val, !mcsema_real_eip !82
  %237 = icmp eq i32 %231, 0, !mcsema_real_eip !82
  store i1 %237, i1* %ZF_val, !mcsema_real_eip !82
  %238 = xor i32 %227, -2147483648, !mcsema_real_eip !82
  %239 = xor i32 %238, %230, !mcsema_real_eip !82
  %240 = and i32 %232, %239, !mcsema_real_eip !82
  %241 = icmp slt i32 %240, 0
  store i1 %241, i1* %OF_val, !mcsema_real_eip !82
  %242 = trunc i32 %231 to i8, !mcsema_real_eip !82
  %243 = tail call i8 @llvm.ctpop.i8(i8 %242), !mcsema_real_eip !82
  %244 = and i8 %243, 1
  %245 = icmp eq i8 %244, 0
  store i1 %245, i1* %PF_val, !mcsema_real_eip !82
  %246 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %246, i1* %CF_val, !mcsema_real_eip !82
  %247 = zext i32 %231 to i64, !mcsema_real_eip !82
  store i64 %247, i64* %R8_val, !mcsema_real_eip !82
  %248 = load i64, i64* %RAX_val, !mcsema_real_eip !83
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !83
  %250 = bitcast i64* %249 to i32*
  %251 = load i32, i32* %250, !mcsema_real_eip !83
  %252 = zext i32 %251 to i64, !mcsema_real_eip !83
  store i64 %252, i64* %R9_val, !mcsema_real_eip !83
  %253 = load i64, i64* %R8_val, !mcsema_real_eip !84
  %254 = trunc i64 %253 to i32, !mcsema_real_eip !84
  %255 = add i32 %251, %254
  %256 = zext i32 %255 to i64, !mcsema_real_eip !84
  store i64 %256, i64* %R8_val, !mcsema_real_eip !84
  %257 = load i64, i64* %RSI_val, !mcsema_real_eip !85
  %258 = trunc i64 %257 to i32, !mcsema_real_eip !85
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %255, i32 %258)
  %259 = extractvalue { i32, i1 } %uadd73, 0
  %260 = xor i32 %259, %258, !mcsema_real_eip !85
  %261 = xor i32 %260, %255, !mcsema_real_eip !85
  %262 = and i32 %261, 16, !mcsema_real_eip !85
  %263 = icmp ne i32 %262, 0, !mcsema_real_eip !85
  store i1 %263, i1* %AF_val, !mcsema_real_eip !85
  %264 = icmp slt i32 %259, 0
  store i1 %264, i1* %SF_val, !mcsema_real_eip !85
  %265 = icmp eq i32 %259, 0, !mcsema_real_eip !85
  store i1 %265, i1* %ZF_val, !mcsema_real_eip !85
  %266 = xor i32 %255, -2147483648, !mcsema_real_eip !85
  %267 = xor i32 %266, %258, !mcsema_real_eip !85
  %268 = and i32 %260, %267, !mcsema_real_eip !85
  %269 = icmp slt i32 %268, 0
  store i1 %269, i1* %OF_val, !mcsema_real_eip !85
  %270 = trunc i32 %259 to i8, !mcsema_real_eip !85
  %271 = tail call i8 @llvm.ctpop.i8(i8 %270), !mcsema_real_eip !85
  %272 = and i8 %271, 1
  %273 = icmp eq i8 %272, 0
  store i1 %273, i1* %PF_val, !mcsema_real_eip !85
  %274 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %274, i1* %CF_val, !mcsema_real_eip !85
  %275 = zext i32 %259 to i64, !mcsema_real_eip !85
  store i64 %275, i64* %RSI_val, !mcsema_real_eip !85
  %276 = load i64, i64* %RBP_val, !mcsema_real_eip !86
  %277 = add i64 %276, -120, !mcsema_real_eip !86
  %278 = inttoptr i64 %277 to i64*, !mcsema_real_eip !86
  %279 = bitcast i64* %278 to i32*
  store i32 %259, i32* %279, !mcsema_real_eip !86
  %280 = load i64, i64* %RBP_val, !mcsema_real_eip !87
  %281 = add i64 %280, -36, !mcsema_real_eip !87
  %282 = inttoptr i64 %281 to i64*, !mcsema_real_eip !87
  %283 = bitcast i64* %282 to i32*
  %284 = load i32, i32* %283, !mcsema_real_eip !87
  %285 = zext i32 %284 to i64, !mcsema_real_eip !87
  store i64 %285, i64* %RSI_val, !mcsema_real_eip !87
  %286 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  %287 = add i64 %286, -64, !mcsema_real_eip !88
  %288 = inttoptr i64 %287 to i64*, !mcsema_real_eip !88
  %289 = load i64, i64* %288, !mcsema_real_eip !88
  store i64 %289, i64* %RAX_val, !mcsema_real_eip !88
  %290 = add i64 %289, 4, !mcsema_real_eip !89
  %291 = inttoptr i64 %290 to i64*, !mcsema_real_eip !89
  %292 = bitcast i64* %291 to i32*
  %293 = load i32, i32* %292, !mcsema_real_eip !89
  %294 = zext i32 %293 to i64, !mcsema_real_eip !89
  store i64 %294, i64* %R8_val, !mcsema_real_eip !89
  %295 = load i64, i64* %RSI_val, !mcsema_real_eip !90
  %296 = trunc i64 %295 to i32, !mcsema_real_eip !90
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %293, i32 %296)
  %297 = extractvalue { i32, i1 } %uadd74, 0
  %298 = xor i32 %297, %296, !mcsema_real_eip !90
  %299 = xor i32 %298, %293, !mcsema_real_eip !90
  %300 = and i32 %299, 16, !mcsema_real_eip !90
  %301 = icmp ne i32 %300, 0, !mcsema_real_eip !90
  store i1 %301, i1* %AF_val, !mcsema_real_eip !90
  %302 = icmp slt i32 %297, 0
  store i1 %302, i1* %SF_val, !mcsema_real_eip !90
  %303 = icmp eq i32 %297, 0, !mcsema_real_eip !90
  store i1 %303, i1* %ZF_val, !mcsema_real_eip !90
  %304 = xor i32 %293, -2147483648, !mcsema_real_eip !90
  %305 = xor i32 %304, %296, !mcsema_real_eip !90
  %306 = and i32 %298, %305, !mcsema_real_eip !90
  %307 = icmp slt i32 %306, 0
  store i1 %307, i1* %OF_val, !mcsema_real_eip !90
  %308 = trunc i32 %297 to i8, !mcsema_real_eip !90
  %309 = tail call i8 @llvm.ctpop.i8(i8 %308), !mcsema_real_eip !90
  %310 = and i8 %309, 1
  %311 = icmp eq i8 %310, 0
  store i1 %311, i1* %PF_val, !mcsema_real_eip !90
  %312 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %312, i1* %CF_val, !mcsema_real_eip !90
  %313 = zext i32 %297 to i64, !mcsema_real_eip !90
  store i64 %313, i64* %RSI_val, !mcsema_real_eip !90
  %314 = load i64, i64* %RBP_val, !mcsema_real_eip !91
  %315 = add i64 %314, -72, !mcsema_real_eip !91
  %316 = inttoptr i64 %315 to i64*, !mcsema_real_eip !91
  %317 = load i64, i64* %316, !mcsema_real_eip !91
  store i64 %317, i64* %RAX_val, !mcsema_real_eip !91
  %318 = add i64 %317, 4, !mcsema_real_eip !92
  %319 = inttoptr i64 %318 to i64*, !mcsema_real_eip !92
  %320 = bitcast i64* %319 to i32*
  %321 = load i32, i32* %320, !mcsema_real_eip !92
  %322 = zext i32 %321 to i64, !mcsema_real_eip !92
  store i64 %322, i64* %R8_val, !mcsema_real_eip !92
  %323 = load i64, i64* %RSI_val, !mcsema_real_eip !93
  %324 = trunc i64 %323 to i32, !mcsema_real_eip !93
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %321, i32 %324)
  %325 = extractvalue { i32, i1 } %uadd75, 0
  %326 = xor i32 %325, %324, !mcsema_real_eip !93
  %327 = xor i32 %326, %321, !mcsema_real_eip !93
  %328 = and i32 %327, 16, !mcsema_real_eip !93
  %329 = icmp ne i32 %328, 0, !mcsema_real_eip !93
  store i1 %329, i1* %AF_val, !mcsema_real_eip !93
  %330 = icmp slt i32 %325, 0
  store i1 %330, i1* %SF_val, !mcsema_real_eip !93
  %331 = icmp eq i32 %325, 0, !mcsema_real_eip !93
  store i1 %331, i1* %ZF_val, !mcsema_real_eip !93
  %332 = xor i32 %321, -2147483648, !mcsema_real_eip !93
  %333 = xor i32 %332, %324, !mcsema_real_eip !93
  %334 = and i32 %326, %333, !mcsema_real_eip !93
  %335 = icmp slt i32 %334, 0
  store i1 %335, i1* %OF_val, !mcsema_real_eip !93
  %336 = trunc i32 %325 to i8, !mcsema_real_eip !93
  %337 = tail call i8 @llvm.ctpop.i8(i8 %336), !mcsema_real_eip !93
  %338 = and i8 %337, 1
  %339 = icmp eq i8 %338, 0
  store i1 %339, i1* %PF_val, !mcsema_real_eip !93
  %340 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %340, i1* %CF_val, !mcsema_real_eip !93
  %341 = zext i32 %325 to i64, !mcsema_real_eip !93
  store i64 %341, i64* %RSI_val, !mcsema_real_eip !93
  %342 = load i64, i64* %R11_val, !mcsema_real_eip !94
  %343 = add i64 %342, 4, !mcsema_real_eip !94
  %344 = inttoptr i64 %343 to i64*, !mcsema_real_eip !94
  %345 = bitcast i64* %344 to i32*
  %346 = load i32, i32* %345, !mcsema_real_eip !94
  %347 = zext i32 %346 to i64, !mcsema_real_eip !94
  store i64 %347, i64* %R8_val, !mcsema_real_eip !94
  %348 = load i64, i64* %RBP_val, !mcsema_real_eip !95
  %349 = add i64 %348, -96, !mcsema_real_eip !95
  %350 = inttoptr i64 %349 to i64*, !mcsema_real_eip !95
  %351 = load i64, i64* %350, !mcsema_real_eip !95
  store i64 %351, i64* %RAX_val, !mcsema_real_eip !95
  %352 = add i64 %351, 4, !mcsema_real_eip !96
  %353 = inttoptr i64 %352 to i64*, !mcsema_real_eip !96
  %354 = bitcast i64* %353 to i32*
  %355 = load i32, i32* %354, !mcsema_real_eip !96
  %356 = zext i32 %355 to i64, !mcsema_real_eip !96
  store i64 %356, i64* %R9_val, !mcsema_real_eip !96
  %357 = load i64, i64* %R8_val, !mcsema_real_eip !97
  %358 = trunc i64 %357 to i32, !mcsema_real_eip !97
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %355, i32 %358)
  %359 = extractvalue { i32, i1 } %uadd76, 0
  %360 = xor i32 %359, %358, !mcsema_real_eip !97
  %361 = xor i32 %360, %355, !mcsema_real_eip !97
  %362 = and i32 %361, 16, !mcsema_real_eip !97
  %363 = icmp ne i32 %362, 0, !mcsema_real_eip !97
  store i1 %363, i1* %AF_val, !mcsema_real_eip !97
  %364 = icmp slt i32 %359, 0
  store i1 %364, i1* %SF_val, !mcsema_real_eip !97
  %365 = icmp eq i32 %359, 0, !mcsema_real_eip !97
  store i1 %365, i1* %ZF_val, !mcsema_real_eip !97
  %366 = xor i32 %355, -2147483648, !mcsema_real_eip !97
  %367 = xor i32 %366, %358, !mcsema_real_eip !97
  %368 = and i32 %360, %367, !mcsema_real_eip !97
  %369 = icmp slt i32 %368, 0
  store i1 %369, i1* %OF_val, !mcsema_real_eip !97
  %370 = trunc i32 %359 to i8, !mcsema_real_eip !97
  %371 = tail call i8 @llvm.ctpop.i8(i8 %370), !mcsema_real_eip !97
  %372 = and i8 %371, 1
  %373 = icmp eq i8 %372, 0
  store i1 %373, i1* %PF_val, !mcsema_real_eip !97
  %374 = extractvalue { i32, i1 } %uadd76, 1
  store i1 %374, i1* %CF_val, !mcsema_real_eip !97
  %375 = zext i32 %359 to i64, !mcsema_real_eip !97
  store i64 %375, i64* %R8_val, !mcsema_real_eip !97
  %376 = load i64, i64* %RBP_val, !mcsema_real_eip !98
  %377 = add i64 %376, -104, !mcsema_real_eip !98
  %378 = inttoptr i64 %377 to i64*, !mcsema_real_eip !98
  %379 = load i64, i64* %378, !mcsema_real_eip !98
  store i64 %379, i64* %RAX_val, !mcsema_real_eip !98
  %380 = add i64 %379, 4, !mcsema_real_eip !99
  %381 = inttoptr i64 %380 to i64*, !mcsema_real_eip !99
  %382 = bitcast i64* %381 to i32*
  %383 = load i32, i32* %382, !mcsema_real_eip !99
  %384 = zext i32 %383 to i64, !mcsema_real_eip !99
  store i64 %384, i64* %R9_val, !mcsema_real_eip !99
  %385 = load i64, i64* %R8_val, !mcsema_real_eip !100
  %386 = trunc i64 %385 to i32, !mcsema_real_eip !100
  %387 = add i32 %383, %386
  %388 = zext i32 %387 to i64, !mcsema_real_eip !100
  store i64 %388, i64* %R8_val, !mcsema_real_eip !100
  %389 = load i64, i64* %RSI_val, !mcsema_real_eip !101
  %390 = trunc i64 %389 to i32, !mcsema_real_eip !101
  %uadd78 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %387, i32 %390)
  %391 = extractvalue { i32, i1 } %uadd78, 0
  %392 = xor i32 %391, %390, !mcsema_real_eip !101
  %393 = xor i32 %392, %387, !mcsema_real_eip !101
  %394 = and i32 %393, 16, !mcsema_real_eip !101
  %395 = icmp ne i32 %394, 0, !mcsema_real_eip !101
  store i1 %395, i1* %AF_val, !mcsema_real_eip !101
  %396 = icmp slt i32 %391, 0
  store i1 %396, i1* %SF_val, !mcsema_real_eip !101
  %397 = icmp eq i32 %391, 0, !mcsema_real_eip !101
  store i1 %397, i1* %ZF_val, !mcsema_real_eip !101
  %398 = xor i32 %387, -2147483648, !mcsema_real_eip !101
  %399 = xor i32 %398, %390, !mcsema_real_eip !101
  %400 = and i32 %392, %399, !mcsema_real_eip !101
  %401 = icmp slt i32 %400, 0
  store i1 %401, i1* %OF_val, !mcsema_real_eip !101
  %402 = trunc i32 %391 to i8, !mcsema_real_eip !101
  %403 = tail call i8 @llvm.ctpop.i8(i8 %402), !mcsema_real_eip !101
  %404 = and i8 %403, 1
  %405 = icmp eq i8 %404, 0
  store i1 %405, i1* %PF_val, !mcsema_real_eip !101
  %406 = extractvalue { i32, i1 } %uadd78, 1
  store i1 %406, i1* %CF_val, !mcsema_real_eip !101
  %407 = zext i32 %391 to i64, !mcsema_real_eip !101
  store i64 %407, i64* %RSI_val, !mcsema_real_eip !101
  %408 = load i64, i64* %RBP_val, !mcsema_real_eip !102
  %409 = add i64 %408, -116, !mcsema_real_eip !102
  %410 = inttoptr i64 %409 to i64*, !mcsema_real_eip !102
  %411 = bitcast i64* %410 to i32*
  store i32 %391, i32* %411, !mcsema_real_eip !102
  %412 = load i64, i64* %RBP_val, !mcsema_real_eip !103
  %413 = add i64 %412, -32, !mcsema_real_eip !103
  %414 = inttoptr i64 %413 to i64*, !mcsema_real_eip !103
  %415 = bitcast i64* %414 to i32*
  %416 = load i32, i32* %415, !mcsema_real_eip !103
  %417 = zext i32 %416 to i64, !mcsema_real_eip !103
  store i64 %417, i64* %RSI_val, !mcsema_real_eip !103
  %418 = load i64, i64* %RBP_val, !mcsema_real_eip !104
  %419 = add i64 %418, -64, !mcsema_real_eip !104
  %420 = inttoptr i64 %419 to i64*, !mcsema_real_eip !104
  %421 = load i64, i64* %420, !mcsema_real_eip !104
  store i64 %421, i64* %RAX_val, !mcsema_real_eip !104
  %422 = add i64 %421, 8, !mcsema_real_eip !105
  %423 = inttoptr i64 %422 to i64*, !mcsema_real_eip !105
  %424 = bitcast i64* %423 to i32*
  %425 = load i32, i32* %424, !mcsema_real_eip !105
  %426 = zext i32 %425 to i64, !mcsema_real_eip !105
  store i64 %426, i64* %R8_val, !mcsema_real_eip !105
  %427 = load i64, i64* %RSI_val, !mcsema_real_eip !106
  %428 = trunc i64 %427 to i32, !mcsema_real_eip !106
  %uadd79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %425, i32 %428)
  %429 = extractvalue { i32, i1 } %uadd79, 0
  %430 = xor i32 %429, %428, !mcsema_real_eip !106
  %431 = xor i32 %430, %425, !mcsema_real_eip !106
  %432 = and i32 %431, 16, !mcsema_real_eip !106
  %433 = icmp ne i32 %432, 0, !mcsema_real_eip !106
  store i1 %433, i1* %AF_val, !mcsema_real_eip !106
  %434 = icmp slt i32 %429, 0
  store i1 %434, i1* %SF_val, !mcsema_real_eip !106
  %435 = icmp eq i32 %429, 0, !mcsema_real_eip !106
  store i1 %435, i1* %ZF_val, !mcsema_real_eip !106
  %436 = xor i32 %425, -2147483648, !mcsema_real_eip !106
  %437 = xor i32 %436, %428, !mcsema_real_eip !106
  %438 = and i32 %430, %437, !mcsema_real_eip !106
  %439 = icmp slt i32 %438, 0
  store i1 %439, i1* %OF_val, !mcsema_real_eip !106
  %440 = trunc i32 %429 to i8, !mcsema_real_eip !106
  %441 = tail call i8 @llvm.ctpop.i8(i8 %440), !mcsema_real_eip !106
  %442 = and i8 %441, 1
  %443 = icmp eq i8 %442, 0
  store i1 %443, i1* %PF_val, !mcsema_real_eip !106
  %444 = extractvalue { i32, i1 } %uadd79, 1
  store i1 %444, i1* %CF_val, !mcsema_real_eip !106
  %445 = zext i32 %429 to i64, !mcsema_real_eip !106
  store i64 %445, i64* %RSI_val, !mcsema_real_eip !106
  %446 = load i64, i64* %RBP_val, !mcsema_real_eip !107
  %447 = add i64 %446, -72, !mcsema_real_eip !107
  %448 = inttoptr i64 %447 to i64*, !mcsema_real_eip !107
  %449 = load i64, i64* %448, !mcsema_real_eip !107
  store i64 %449, i64* %RAX_val, !mcsema_real_eip !107
  %450 = add i64 %449, 8, !mcsema_real_eip !108
  %451 = inttoptr i64 %450 to i64*, !mcsema_real_eip !108
  %452 = bitcast i64* %451 to i32*
  %453 = load i32, i32* %452, !mcsema_real_eip !108
  %454 = zext i32 %453 to i64, !mcsema_real_eip !108
  store i64 %454, i64* %R8_val, !mcsema_real_eip !108
  %455 = load i64, i64* %RSI_val, !mcsema_real_eip !109
  %456 = trunc i64 %455 to i32, !mcsema_real_eip !109
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %453, i32 %456)
  %457 = extractvalue { i32, i1 } %uadd80, 0
  %458 = xor i32 %457, %456, !mcsema_real_eip !109
  %459 = xor i32 %458, %453, !mcsema_real_eip !109
  %460 = and i32 %459, 16, !mcsema_real_eip !109
  %461 = icmp ne i32 %460, 0, !mcsema_real_eip !109
  store i1 %461, i1* %AF_val, !mcsema_real_eip !109
  %462 = icmp slt i32 %457, 0
  store i1 %462, i1* %SF_val, !mcsema_real_eip !109
  %463 = icmp eq i32 %457, 0, !mcsema_real_eip !109
  store i1 %463, i1* %ZF_val, !mcsema_real_eip !109
  %464 = xor i32 %453, -2147483648, !mcsema_real_eip !109
  %465 = xor i32 %464, %456, !mcsema_real_eip !109
  %466 = and i32 %458, %465, !mcsema_real_eip !109
  %467 = icmp slt i32 %466, 0
  store i1 %467, i1* %OF_val, !mcsema_real_eip !109
  %468 = trunc i32 %457 to i8, !mcsema_real_eip !109
  %469 = tail call i8 @llvm.ctpop.i8(i8 %468), !mcsema_real_eip !109
  %470 = and i8 %469, 1
  %471 = icmp eq i8 %470, 0
  store i1 %471, i1* %PF_val, !mcsema_real_eip !109
  %472 = extractvalue { i32, i1 } %uadd80, 1
  store i1 %472, i1* %CF_val, !mcsema_real_eip !109
  %473 = zext i32 %457 to i64, !mcsema_real_eip !109
  store i64 %473, i64* %RSI_val, !mcsema_real_eip !109
  %474 = load i64, i64* %R11_val, !mcsema_real_eip !110
  %475 = add i64 %474, 8, !mcsema_real_eip !110
  %476 = inttoptr i64 %475 to i64*, !mcsema_real_eip !110
  %477 = bitcast i64* %476 to i32*
  %478 = load i32, i32* %477, !mcsema_real_eip !110
  %479 = zext i32 %478 to i64, !mcsema_real_eip !110
  store i64 %479, i64* %R8_val, !mcsema_real_eip !110
  %480 = load i64, i64* %RBP_val, !mcsema_real_eip !111
  %481 = add i64 %480, -96, !mcsema_real_eip !111
  %482 = inttoptr i64 %481 to i64*, !mcsema_real_eip !111
  %483 = load i64, i64* %482, !mcsema_real_eip !111
  store i64 %483, i64* %RAX_val, !mcsema_real_eip !111
  %484 = add i64 %483, 8, !mcsema_real_eip !112
  %485 = inttoptr i64 %484 to i64*, !mcsema_real_eip !112
  %486 = bitcast i64* %485 to i32*
  %487 = load i32, i32* %486, !mcsema_real_eip !112
  %488 = zext i32 %487 to i64, !mcsema_real_eip !112
  store i64 %488, i64* %R9_val, !mcsema_real_eip !112
  %489 = load i64, i64* %R8_val, !mcsema_real_eip !113
  %490 = trunc i64 %489 to i32, !mcsema_real_eip !113
  %uadd81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %487, i32 %490)
  %491 = extractvalue { i32, i1 } %uadd81, 0
  %492 = xor i32 %491, %490, !mcsema_real_eip !113
  %493 = xor i32 %492, %487, !mcsema_real_eip !113
  %494 = and i32 %493, 16, !mcsema_real_eip !113
  %495 = icmp ne i32 %494, 0, !mcsema_real_eip !113
  store i1 %495, i1* %AF_val, !mcsema_real_eip !113
  %496 = icmp slt i32 %491, 0
  store i1 %496, i1* %SF_val, !mcsema_real_eip !113
  %497 = icmp eq i32 %491, 0, !mcsema_real_eip !113
  store i1 %497, i1* %ZF_val, !mcsema_real_eip !113
  %498 = xor i32 %487, -2147483648, !mcsema_real_eip !113
  %499 = xor i32 %498, %490, !mcsema_real_eip !113
  %500 = and i32 %492, %499, !mcsema_real_eip !113
  %501 = icmp slt i32 %500, 0
  store i1 %501, i1* %OF_val, !mcsema_real_eip !113
  %502 = trunc i32 %491 to i8, !mcsema_real_eip !113
  %503 = tail call i8 @llvm.ctpop.i8(i8 %502), !mcsema_real_eip !113
  %504 = and i8 %503, 1
  %505 = icmp eq i8 %504, 0
  store i1 %505, i1* %PF_val, !mcsema_real_eip !113
  %506 = extractvalue { i32, i1 } %uadd81, 1
  store i1 %506, i1* %CF_val, !mcsema_real_eip !113
  %507 = zext i32 %491 to i64, !mcsema_real_eip !113
  store i64 %507, i64* %R8_val, !mcsema_real_eip !113
  %508 = load i64, i64* %RBP_val, !mcsema_real_eip !114
  %509 = add i64 %508, -104, !mcsema_real_eip !114
  %510 = inttoptr i64 %509 to i64*, !mcsema_real_eip !114
  %511 = load i64, i64* %510, !mcsema_real_eip !114
  store i64 %511, i64* %RAX_val, !mcsema_real_eip !114
  %512 = add i64 %511, 8, !mcsema_real_eip !115
  %513 = inttoptr i64 %512 to i64*, !mcsema_real_eip !115
  %514 = bitcast i64* %513 to i32*
  %515 = load i32, i32* %514, !mcsema_real_eip !115
  %516 = zext i32 %515 to i64, !mcsema_real_eip !115
  store i64 %516, i64* %R9_val, !mcsema_real_eip !115
  %517 = load i64, i64* %R8_val, !mcsema_real_eip !116
  %518 = trunc i64 %517 to i32, !mcsema_real_eip !116
  %519 = add i32 %515, %518
  %520 = zext i32 %519 to i64, !mcsema_real_eip !116
  store i64 %520, i64* %R8_val, !mcsema_real_eip !116
  %521 = load i64, i64* %RSI_val, !mcsema_real_eip !117
  %522 = trunc i64 %521 to i32, !mcsema_real_eip !117
  %uadd83 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %519, i32 %522)
  %523 = extractvalue { i32, i1 } %uadd83, 0
  %524 = xor i32 %523, %522, !mcsema_real_eip !117
  %525 = xor i32 %524, %519, !mcsema_real_eip !117
  %526 = and i32 %525, 16, !mcsema_real_eip !117
  %527 = icmp ne i32 %526, 0, !mcsema_real_eip !117
  store i1 %527, i1* %AF_val, !mcsema_real_eip !117
  %528 = icmp slt i32 %523, 0
  store i1 %528, i1* %SF_val, !mcsema_real_eip !117
  %529 = icmp eq i32 %523, 0, !mcsema_real_eip !117
  store i1 %529, i1* %ZF_val, !mcsema_real_eip !117
  %530 = xor i32 %519, -2147483648, !mcsema_real_eip !117
  %531 = xor i32 %530, %522, !mcsema_real_eip !117
  %532 = and i32 %524, %531, !mcsema_real_eip !117
  %533 = icmp slt i32 %532, 0
  store i1 %533, i1* %OF_val, !mcsema_real_eip !117
  %534 = trunc i32 %523 to i8, !mcsema_real_eip !117
  %535 = tail call i8 @llvm.ctpop.i8(i8 %534), !mcsema_real_eip !117
  %536 = and i8 %535, 1
  %537 = icmp eq i8 %536, 0
  store i1 %537, i1* %PF_val, !mcsema_real_eip !117
  %538 = extractvalue { i32, i1 } %uadd83, 1
  store i1 %538, i1* %CF_val, !mcsema_real_eip !117
  %539 = zext i32 %523 to i64, !mcsema_real_eip !117
  store i64 %539, i64* %RSI_val, !mcsema_real_eip !117
  %540 = load i64, i64* %RBP_val, !mcsema_real_eip !118
  %541 = add i64 %540, -112, !mcsema_real_eip !118
  %542 = inttoptr i64 %541 to i64*, !mcsema_real_eip !118
  %543 = bitcast i64* %542 to i32*
  store i32 %523, i32* %543, !mcsema_real_eip !118
  %544 = load i64, i64* %RBP_val, !mcsema_real_eip !119
  %545 = add i64 %544, -16, !mcsema_real_eip !119
  %546 = inttoptr i64 %545 to i64*, !mcsema_real_eip !119
  %547 = load i64, i64* %RSI_val, !mcsema_real_eip !119
  %548 = trunc i64 %547 to i32, !mcsema_real_eip !119
  %549 = bitcast i64* %546 to i32*
  store i32 %548, i32* %549, !mcsema_real_eip !119
  %550 = load i64, i64* %RBP_val, !mcsema_real_eip !120
  %551 = add i64 %550, -120, !mcsema_real_eip !120
  %552 = inttoptr i64 %551 to i64*, !mcsema_real_eip !120
  %553 = load i64, i64* %552, !mcsema_real_eip !120
  store i64 %553, i64* %RAX_val, !mcsema_real_eip !120
  %554 = add i64 %550, -24, !mcsema_real_eip !121
  %555 = inttoptr i64 %554 to i64*, !mcsema_real_eip !121
  store i64 %553, i64* %555, !mcsema_real_eip !121
  %556 = load i64, i64* %RBP_val, !mcsema_real_eip !122
  %557 = add i64 %556, -16, !mcsema_real_eip !122
  %558 = inttoptr i64 %557 to i64*, !mcsema_real_eip !122
  %559 = bitcast i64* %558 to i32*
  %560 = load i32, i32* %559, !mcsema_real_eip !122
  %561 = zext i32 %560 to i64, !mcsema_real_eip !122
  store i64 %561, i64* %RSI_val, !mcsema_real_eip !122
  %562 = load i64, i64* %RBP_val, !mcsema_real_eip !123
  %563 = add i64 %562, -128, !mcsema_real_eip !123
  %564 = inttoptr i64 %563 to i64*, !mcsema_real_eip !123
  %565 = bitcast i64* %564 to i32*
  store i32 %560, i32* %565, !mcsema_real_eip !123
  %566 = load i64, i64* %RBP_val, !mcsema_real_eip !124
  %567 = add i64 %566, -24, !mcsema_real_eip !124
  %568 = inttoptr i64 %567 to i64*, !mcsema_real_eip !124
  %569 = load i64, i64* %568, !mcsema_real_eip !124
  store i64 %569, i64* %RAX_val, !mcsema_real_eip !124
  %570 = add i64 %566, -136, !mcsema_real_eip !125
  %571 = inttoptr i64 %570 to i64*, !mcsema_real_eip !125
  store i64 %569, i64* %571, !mcsema_real_eip !125
  %572 = load i64, i64* %RBP_val, !mcsema_real_eip !126
  %573 = add i64 %572, -136, !mcsema_real_eip !126
  %574 = inttoptr i64 %573 to i64*, !mcsema_real_eip !126
  %575 = load i64, i64* %574, !mcsema_real_eip !126
  store i64 %575, i64* %RAX_val, !mcsema_real_eip !126
  %576 = add i64 %572, -128, !mcsema_real_eip !127
  %577 = inttoptr i64 %576 to i64*, !mcsema_real_eip !127
  %578 = bitcast i64* %577 to i32*
  %579 = load i32, i32* %578, !mcsema_real_eip !127
  %580 = zext i32 %579 to i64, !mcsema_real_eip !127
  store i64 %580, i64* %RDX_val, !mcsema_real_eip !127
  %581 = load i64, i64* %RSP_val, !mcsema_real_eip !128
  %582 = inttoptr i64 %581 to i64*, !mcsema_real_eip !128
  %583 = load i64, i64* %582, !mcsema_real_eip !128
  store i64 %583, i64* %RBX_val, !mcsema_real_eip !128
  %584 = add i64 %581, 8, !mcsema_real_eip !128
  store i64 %584, i64* %RSP_val, !mcsema_real_eip !128
  %585 = inttoptr i64 %584 to i64*, !mcsema_real_eip !129
  %586 = load i64, i64* %585, !mcsema_real_eip !129
  store i64 %586, i64* %RBP_val, !mcsema_real_eip !129
  %587 = add i64 %581, 24, !mcsema_real_eip !130
  store i64 %587, i64* %RSP_val, !mcsema_real_eip !130
  %588 = load i64, i64* %RAX_val, !mcsema_real_eip !130
  store i64 %588, i64* %RAX, !mcsema_real_eip !130
  %589 = load i64, i64* %RBX_val, !mcsema_real_eip !130
  store i64 %589, i64* %RBX, !mcsema_real_eip !130
  %590 = load i64, i64* %RCX_val, !mcsema_real_eip !130
  store i64 %590, i64* %RCX, !mcsema_real_eip !130
  %591 = load i64, i64* %RDX_val, !mcsema_real_eip !130
  store i64 %591, i64* %RDX, !mcsema_real_eip !130
  %592 = load i64, i64* %RSI_val, !mcsema_real_eip !130
  store i64 %592, i64* %RSI, !mcsema_real_eip !130
  %593 = load i64, i64* %RDI_val, !mcsema_real_eip !130
  store i64 %593, i64* %RDI, !mcsema_real_eip !130
  %594 = load i64, i64* %RSP_val, !mcsema_real_eip !130
  store i64 %594, i64* %RSP, !mcsema_real_eip !130
  %595 = load i64, i64* %RBP_val, !mcsema_real_eip !130
  store i64 %595, i64* %RBP, !mcsema_real_eip !130
  %596 = load i64, i64* %R8_val, !mcsema_real_eip !130
  store i64 %596, i64* %R8, !mcsema_real_eip !130
  %597 = load i64, i64* %R9_val, !mcsema_real_eip !130
  store i64 %597, i64* %R9, !mcsema_real_eip !130
  %598 = load i64, i64* %R10_val, !mcsema_real_eip !130
  store i64 %598, i64* %R10, !mcsema_real_eip !130
  %599 = load i64, i64* %R11_val, !mcsema_real_eip !130
  store i64 %599, i64* %R11, !mcsema_real_eip !130
  %600 = load i64, i64* %R12_val, !mcsema_real_eip !130
  store i64 %600, i64* %R12, !mcsema_real_eip !130
  %601 = load i64, i64* %R13_val, !mcsema_real_eip !130
  store i64 %601, i64* %R13, !mcsema_real_eip !130
  %602 = load i64, i64* %R14_val, !mcsema_real_eip !130
  store i64 %602, i64* %R14, !mcsema_real_eip !130
  %603 = load i64, i64* %R15_val, !mcsema_real_eip !130
  store i64 %603, i64* %R15, !mcsema_real_eip !130
  %604 = load i64, i64* %RIP_val, !mcsema_real_eip !130
  store i64 %604, i64* %RIP, !mcsema_real_eip !130
  %605 = load i1, i1* %CF_val, !mcsema_real_eip !130
  store i1 %605, i1* %CF, align 1, !mcsema_real_eip !130
  %606 = load i1, i1* %PF_val, !mcsema_real_eip !130
  store i1 %606, i1* %PF, align 1, !mcsema_real_eip !130
  %607 = load i1, i1* %AF_val, !mcsema_real_eip !130
  store i1 %607, i1* %AF, align 1, !mcsema_real_eip !130
  %608 = load i1, i1* %ZF_val, !mcsema_real_eip !130
  store i1 %608, i1* %ZF, align 1, !mcsema_real_eip !130
  %609 = load i1, i1* %SF_val, !mcsema_real_eip !130
  store i1 %609, i1* %SF, align 1, !mcsema_real_eip !130
  %610 = load i1, i1* %OF_val, !mcsema_real_eip !130
  store i1 %610, i1* %OF, align 1, !mcsema_real_eip !130
  %611 = load i1, i1* %DF_val, !mcsema_real_eip !130
  store i1 %611, i1* %DF, align 1, !mcsema_real_eip !130
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !130
  %612 = load i1, i1* %FPU_B_val, !mcsema_real_eip !130
  store i1 %612, i1* %FPU_B, align 1, !mcsema_real_eip !130
  %613 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !130
  store i1 %613, i1* %FPU_C3, align 1, !mcsema_real_eip !130
  %614 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !130
  store i3 %614, i3* %FPU_TOP, align 1, !mcsema_real_eip !130
  %615 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !130
  store i1 %615, i1* %FPU_C2, align 1, !mcsema_real_eip !130
  %616 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !130
  store i1 %616, i1* %FPU_C1, align 1, !mcsema_real_eip !130
  %617 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !130
  store i1 %617, i1* %FPU_C0, align 1, !mcsema_real_eip !130
  %618 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !130
  store i1 %618, i1* %FPU_ES, align 1, !mcsema_real_eip !130
  %619 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !130
  store i1 %619, i1* %FPU_SF, align 1, !mcsema_real_eip !130
  %620 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !130
  store i1 %620, i1* %FPU_PE, align 1, !mcsema_real_eip !130
  %621 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !130
  store i1 %621, i1* %FPU_UE, align 1, !mcsema_real_eip !130
  %622 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !130
  store i1 %622, i1* %FPU_OE, align 1, !mcsema_real_eip !130
  %623 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !130
  store i1 %623, i1* %FPU_ZE, align 1, !mcsema_real_eip !130
  %624 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !130
  store i1 %624, i1* %FPU_DE, align 1, !mcsema_real_eip !130
  %625 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !130
  store i1 %625, i1* %FPU_IE, align 1, !mcsema_real_eip !130
  %626 = load i1, i1* %FPU_X_val, !mcsema_real_eip !130
  store i1 %626, i1* %FPU_X, align 1, !mcsema_real_eip !130
  %627 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !130
  store i2 %627, i2* %FPU_RC, align 1, !mcsema_real_eip !130
  %628 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !130
  store i2 %628, i2* %FPU_PC, align 1, !mcsema_real_eip !130
  %629 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !130
  store i1 %629, i1* %FPU_PM, align 1, !mcsema_real_eip !130
  %630 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !130
  store i1 %630, i1* %FPU_UM, align 1, !mcsema_real_eip !130
  %631 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !130
  store i1 %631, i1* %FPU_OM, align 1, !mcsema_real_eip !130
  %632 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !130
  store i1 %632, i1* %FPU_ZM, align 1, !mcsema_real_eip !130
  %633 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !130
  store i1 %633, i1* %FPU_DM, align 1, !mcsema_real_eip !130
  %634 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !130
  store i1 %634, i1* %FPU_IM, align 1, !mcsema_real_eip !130
  %635 = load i64, i64* %53, align 4
  store i64 %635, i64* %52, align 4
  %636 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !130
  store i16 %636, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !130
  %637 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !130
  store i64 %637, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !130
  %638 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !130
  store i16 %638, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !130
  %639 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !130
  store i64 %639, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !130
  %640 = load i128, i128* %XMM0_val, !mcsema_real_eip !130
  store i128 %640, i128* %XMM0, align 1, !mcsema_real_eip !130
  %641 = load i128, i128* %XMM1_val, !mcsema_real_eip !130
  store i128 %641, i128* %XMM1, align 1, !mcsema_real_eip !130
  %642 = load i128, i128* %XMM2_val, !mcsema_real_eip !130
  store i128 %642, i128* %XMM2, align 1, !mcsema_real_eip !130
  %643 = load i128, i128* %XMM3_val, !mcsema_real_eip !130
  store i128 %643, i128* %XMM3, align 1, !mcsema_real_eip !130
  %644 = load i128, i128* %XMM4_val, !mcsema_real_eip !130
  store i128 %644, i128* %XMM4, align 1, !mcsema_real_eip !130
  %645 = load i128, i128* %XMM5_val, !mcsema_real_eip !130
  store i128 %645, i128* %XMM5, align 1, !mcsema_real_eip !130
  %646 = load i128, i128* %XMM6_val, !mcsema_real_eip !130
  store i128 %646, i128* %XMM6, align 1, !mcsema_real_eip !130
  %647 = load i128, i128* %XMM7_val, !mcsema_real_eip !130
  store i128 %647, i128* %XMM7, align 1, !mcsema_real_eip !130
  %648 = load i128, i128* %XMM8_val, !mcsema_real_eip !130
  store i128 %648, i128* %XMM8, align 1, !mcsema_real_eip !130
  %649 = load i128, i128* %XMM9_val, !mcsema_real_eip !130
  store i128 %649, i128* %XMM9, align 1, !mcsema_real_eip !130
  %650 = load i128, i128* %XMM10_val, !mcsema_real_eip !130
  store i128 %650, i128* %XMM10, align 1, !mcsema_real_eip !130
  %651 = load i128, i128* %XMM11_val, !mcsema_real_eip !130
  store i128 %651, i128* %XMM11, align 1, !mcsema_real_eip !130
  %652 = load i128, i128* %XMM12_val, !mcsema_real_eip !130
  store i128 %652, i128* %XMM12, align 1, !mcsema_real_eip !130
  %653 = load i128, i128* %XMM13_val, !mcsema_real_eip !130
  store i128 %653, i128* %XMM13, align 1, !mcsema_real_eip !130
  %654 = load i128, i128* %XMM14_val, !mcsema_real_eip !130
  store i128 %654, i128* %XMM14, align 1, !mcsema_real_eip !130
  %655 = load i128, i128* %XMM15_val, !mcsema_real_eip !130
  store i128 %655, i128* %XMM15, align 1, !mcsema_real_eip !130
  %656 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !130
  store i64 %656, i64* %STACK_BASE, align 1, !mcsema_real_eip !130
  %657 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !130
  store i64 %657, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !130
  ret void, !mcsema_real_eip !130
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_110(%struct.regs* %0)
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
!2 = !{i64 272, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 273, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = !{i64 276, [17 x i8] c"\09subq\09$128, %rsp\00"}
!5 = !{i64 283, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!6 = !{i64 290, [21 x i8] c"\09movl\09$10, -16(%rbp)\00"}
!7 = !{i64 297, [21 x i8] c"\09movl\09$10, -12(%rbp)\00"}
!8 = !{i64 304, [20 x i8] c"\09movl\09$10, -8(%rbp)\00"}
!9 = !{i64 316, [17 x i8] c"\09movl\09%eax, %edi\00"}
!10 = !{i64 318, [9 x i8] c"\09callq\090\00"}
!11 = !{i64 323, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!12 = !{i64 327, [17 x i8] c"\09movl\09$5, (%rax)\00"}
!13 = !{i64 333, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!14 = !{i64 337, [18 x i8] c"\09movl\09$5, 4(%rax)\00"}
!15 = !{i64 344, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!16 = !{i64 348, [18 x i8] c"\09movl\09$5, 8(%rax)\00"}
!17 = !{i64 355, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!18 = !{i64 359, [21 x i8] c"\09movl\09-8(%rbp), %ecx\00"}
!19 = !{i64 362, [22 x i8] c"\09movl\09%ecx, -48(%rbp)\00"}
!20 = !{i64 365, [22 x i8] c"\09movq\09-16(%rbp), %rdi\00"}
!21 = !{i64 369, [22 x i8] c"\09movq\09%rdi, -56(%rbp)\00"}
!22 = !{i64 373, [22 x i8] c"\09movq\09-56(%rbp), %rdi\00"}
!23 = !{i64 377, [22 x i8] c"\09movl\09-48(%rbp), %esi\00"}
!24 = !{i64 380, [21 x i8] c"\09movl\09-8(%rbp), %ecx\00"}
!25 = !{i64 383, [17 x i8] c"\09movq\09%rsp, %rdx\00"}
!26 = !{i64 386, [21 x i8] c"\09movl\09%ecx, 16(%rdx)\00"}
!27 = !{i64 389, [21 x i8] c"\09movq\09-16(%rbp), %r8\00"}
!28 = !{i64 393, [19 x i8] c"\09movq\09%r8, 8(%rdx)\00"}
!29 = !{i64 397, [21 x i8] c"\09movq\09%rax, 32(%rdx)\00"}
!30 = !{i64 401, [21 x i8] c"\09leaq\09-16(%rbp), %r8\00"}
!31 = !{i64 405, [20 x i8] c"\09movq\09%r8, 24(%rdx)\00"}
!32 = !{i64 409, [17 x i8] c"\09movl\09$3, (%rdx)\00"}
!33 = !{i64 415, [15 x i8] c"\09movl\09$1, %ecx\00"}
!34 = !{i64 420, [15 x i8] c"\09movl\09$2, %r9d\00"}
!35 = !{i64 426, [16 x i8] c"\09movq\09%r8, %rdx\00"}
!36 = !{i64 429, [22 x i8] c"\09movl\09%ecx, -76(%rbp)\00"}
!37 = !{i64 432, [17 x i8] c"\09movq\09%rax, %rcx\00"}
!38 = !{i64 435, [22 x i8] c"\09movl\09-76(%rbp), %r8d\00"}
!39 = !{i64 439, [12 x i8] c"\09callq\09-444\00"}
!40 = !{i64 444, [22 x i8] c"\09movl\09%edx, -64(%rbp)\00"}
!41 = !{i64 447, [22 x i8] c"\09movq\09%rax, -72(%rbp)\00"}
!42 = !{i64 451, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!43 = !{i64 455, [22 x i8] c"\09movq\09%rax, -40(%rbp)\00"}
!44 = !{i64 459, [22 x i8] c"\09movl\09-64(%rbp), %edx\00"}
!45 = !{i64 462, [22 x i8] c"\09movl\09%edx, -32(%rbp)\00"}
!46 = !{i64 465, [22 x i8] c"\09movl\09-40(%rbp), %edx\00"}
!47 = !{i64 468, [22 x i8] c"\09addl\09-36(%rbp), %edx\00"}
!48 = !{i64 471, [22 x i8] c"\09addl\09-32(%rbp), %edx\00"}
!49 = !{i64 474, [17 x i8] c"\09movl\09%edx, %eax\00"}
!50 = !{i64 476, [17 x i8] c"\09addq\09$128, %rsp\00"}
!51 = !{i64 483, [11 x i8] c"\09popq\09%rbp\00"}
!52 = !{i64 484, [6 x i8] c"\09retq\00"}
!53 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!54 = !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!55 = !{i64 4, [12 x i8] c"\09pushq\09%rbx\00"}
!56 = !{i64 5, [21 x i8] c"\09movq\0948(%rbp), %rax\00"}
!57 = !{i64 9, [21 x i8] c"\09movq\0940(%rbp), %r10\00"}
!58 = !{i64 13, [21 x i8] c"\09leaq\0924(%rbp), %r11\00"}
!59 = !{i64 17, [21 x i8] c"\09movl\0916(%rbp), %ebx\00"}
!60 = !{i64 20, [22 x i8] c"\09movq\09%rdi, -56(%rbp)\00"}
!61 = !{i64 24, [22 x i8] c"\09movl\09%esi, -48(%rbp)\00"}
!62 = !{i64 27, [22 x i8] c"\09movl\09%esi, -32(%rbp)\00"}
!63 = !{i64 30, [22 x i8] c"\09movq\09-56(%rbp), %rdi\00"}
!64 = !{i64 34, [22 x i8] c"\09movq\09%rdi, -40(%rbp)\00"}
!65 = !{i64 38, [22 x i8] c"\09movq\09%rdx, -64(%rbp)\00"}
!66 = !{i64 42, [22 x i8] c"\09movq\09%rcx, -72(%rbp)\00"}
!67 = !{i64 46, [22 x i8] c"\09movl\09%r8d, -76(%rbp)\00"}
!68 = !{i64 50, [22 x i8] c"\09movl\09%r9d, -80(%rbp)\00"}
!69 = !{i64 54, [22 x i8] c"\09movl\09%ebx, -84(%rbp)\00"}
!70 = !{i64 57, [22 x i8] c"\09movq\09%r10, -96(%rbp)\00"}
!71 = !{i64 61, [23 x i8] c"\09movq\09%rax, -104(%rbp)\00"}
!72 = !{i64 65, [22 x i8] c"\09movl\09-40(%rbp), %esi\00"}
!73 = !{i64 68, [22 x i8] c"\09movq\09-64(%rbp), %rcx\00"}
!74 = !{i64 72, [19 x i8] c"\09movl\09(%rcx), %r8d\00"}
!75 = !{i64 75, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!76 = !{i64 78, [22 x i8] c"\09movq\09-72(%rbp), %rcx\00"}
!77 = !{i64 82, [19 x i8] c"\09movl\09(%rcx), %r8d\00"}
!78 = !{i64 85, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!79 = !{i64 88, [19 x i8] c"\09movl\09(%r11), %r8d\00"}
!80 = !{i64 91, [22 x i8] c"\09movq\09-96(%rbp), %rcx\00"}
!81 = !{i64 95, [19 x i8] c"\09movl\09(%rcx), %r9d\00"}
!82 = !{i64 98, [17 x i8] c"\09addl\09%r9d, %r8d\00"}
!83 = !{i64 101, [19 x i8] c"\09movl\09(%rax), %r9d\00"}
!84 = !{i64 104, [17 x i8] c"\09addl\09%r9d, %r8d\00"}
!85 = !{i64 107, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!86 = !{i64 110, [23 x i8] c"\09movl\09%esi, -120(%rbp)\00"}
!87 = !{i64 113, [22 x i8] c"\09movl\09-36(%rbp), %esi\00"}
!88 = !{i64 116, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!89 = !{i64 120, [20 x i8] c"\09movl\094(%rax), %r8d\00"}
!90 = !{i64 124, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!91 = !{i64 127, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!92 = !{i64 131, [20 x i8] c"\09movl\094(%rax), %r8d\00"}
!93 = !{i64 135, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!94 = !{i64 138, [20 x i8] c"\09movl\094(%r11), %r8d\00"}
!95 = !{i64 142, [22 x i8] c"\09movq\09-96(%rbp), %rax\00"}
!96 = !{i64 146, [20 x i8] c"\09movl\094(%rax), %r9d\00"}
!97 = !{i64 150, [17 x i8] c"\09addl\09%r9d, %r8d\00"}
!98 = !{i64 153, [23 x i8] c"\09movq\09-104(%rbp), %rax\00"}
!99 = !{i64 157, [20 x i8] c"\09movl\094(%rax), %r9d\00"}
!100 = !{i64 161, [17 x i8] c"\09addl\09%r9d, %r8d\00"}
!101 = !{i64 164, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!102 = !{i64 167, [23 x i8] c"\09movl\09%esi, -116(%rbp)\00"}
!103 = !{i64 170, [22 x i8] c"\09movl\09-32(%rbp), %esi\00"}
!104 = !{i64 173, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!105 = !{i64 177, [20 x i8] c"\09movl\098(%rax), %r8d\00"}
!106 = !{i64 181, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!107 = !{i64 184, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!108 = !{i64 188, [20 x i8] c"\09movl\098(%rax), %r8d\00"}
!109 = !{i64 192, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!110 = !{i64 195, [20 x i8] c"\09movl\098(%r11), %r8d\00"}
!111 = !{i64 199, [22 x i8] c"\09movq\09-96(%rbp), %rax\00"}
!112 = !{i64 203, [20 x i8] c"\09movl\098(%rax), %r9d\00"}
!113 = !{i64 207, [17 x i8] c"\09addl\09%r9d, %r8d\00"}
!114 = !{i64 210, [23 x i8] c"\09movq\09-104(%rbp), %rax\00"}
!115 = !{i64 214, [20 x i8] c"\09movl\098(%rax), %r9d\00"}
!116 = !{i64 218, [17 x i8] c"\09addl\09%r9d, %r8d\00"}
!117 = !{i64 221, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!118 = !{i64 224, [23 x i8] c"\09movl\09%esi, -112(%rbp)\00"}
!119 = !{i64 227, [22 x i8] c"\09movl\09%esi, -16(%rbp)\00"}
!120 = !{i64 230, [23 x i8] c"\09movq\09-120(%rbp), %rax\00"}
!121 = !{i64 234, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!122 = !{i64 238, [22 x i8] c"\09movl\09-16(%rbp), %esi\00"}
!123 = !{i64 241, [23 x i8] c"\09movl\09%esi, -128(%rbp)\00"}
!124 = !{i64 244, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!125 = !{i64 248, [23 x i8] c"\09movq\09%rax, -136(%rbp)\00"}
!126 = !{i64 255, [23 x i8] c"\09movq\09-136(%rbp), %rax\00"}
!127 = !{i64 262, [23 x i8] c"\09movl\09-128(%rbp), %edx\00"}
!128 = !{i64 265, [11 x i8] c"\09popq\09%rbx\00"}
!129 = !{i64 266, [11 x i8] c"\09popq\09%rbp\00"}
!130 = !{i64 267, [6 x i8] c"\09retq\00"}
