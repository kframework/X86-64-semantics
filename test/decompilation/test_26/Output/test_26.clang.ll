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
  %82 = add i64 %79, -136
  %83 = xor i64 %82, %80, !mcsema_real_eip !4
  %84 = and i64 %83, 16, !mcsema_real_eip !4
  %85 = icmp ne i64 %84, 0, !mcsema_real_eip !4
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
  %92 = icmp ult i64 %80, 128, !mcsema_real_eip !4
  store i1 %92, i1* %CF_val, !mcsema_real_eip !4
  %93 = and i64 %83, %80, !mcsema_real_eip !4
  %94 = icmp slt i64 %93, 0
  store i1 %94, i1* %OF_val, !mcsema_real_eip !4
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !4
  %95 = load i64, i64* %RBP_val, !mcsema_real_eip !5
  %96 = add i64 %95, -4, !mcsema_real_eip !5
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !5
  %98 = bitcast i64* %97 to i32*
  store i32 0, i32* %98, !mcsema_real_eip !5
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %100 = add i64 %99, -16, !mcsema_real_eip !6
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !6
  store i64 42949672970, i64* %101, !mcsema_real_eip !6
  %102 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  %103 = add i64 %102, -8, !mcsema_real_eip !7
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !7
  %105 = bitcast i64* %104 to i32*
  store i32 10, i32* %105, !mcsema_real_eip !7
  store i64 24, i64* %RCX_val, !mcsema_real_eip !8
  store i64 24, i64* %RDI_val, !mcsema_real_eip !9
  %106 = tail call x86_64_sysvcc i64 @malloc(i64 24), !mcsema_real_eip !10
  store i64 %106, i64* %RAX_val, !mcsema_real_eip !10
  %107 = load i64, i64* %RBP_val, !mcsema_real_eip !11
  %108 = add i64 %107, -24, !mcsema_real_eip !11
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !11
  store i64 %106, i64* %109, !mcsema_real_eip !11
  %110 = load i64, i64* %RAX_val, !mcsema_real_eip !12
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !12
  %112 = bitcast i64* %111 to i32*
  store i32 5, i32* %112, !mcsema_real_eip !12
  %113 = load i64, i64* %RBP_val, !mcsema_real_eip !13
  %114 = add i64 %113, -24, !mcsema_real_eip !13
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !13
  %116 = load i64, i64* %115, !mcsema_real_eip !13
  store i64 %116, i64* %RAX_val, !mcsema_real_eip !13
  %117 = add i64 %116, 4, !mcsema_real_eip !14
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !14
  %119 = bitcast i64* %118 to i32*
  store i32 5, i32* %119, !mcsema_real_eip !14
  %120 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %121 = add i64 %120, -24, !mcsema_real_eip !15
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !15
  %123 = load i64, i64* %122, !mcsema_real_eip !15
  store i64 %123, i64* %RAX_val, !mcsema_real_eip !15
  %124 = add i64 %123, 8, !mcsema_real_eip !16
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !16
  %126 = bitcast i64* %125 to i32*
  store i32 5, i32* %126, !mcsema_real_eip !16
  %127 = load i64, i64* %RBP_val, !mcsema_real_eip !17
  %128 = add i64 %127, -24, !mcsema_real_eip !17
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !17
  %130 = load i64, i64* %129, !mcsema_real_eip !17
  store i64 %130, i64* %RAX_val, !mcsema_real_eip !17
  %131 = add i64 %127, -8, !mcsema_real_eip !18
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !18
  %133 = bitcast i64* %132 to i32*
  %134 = load i32, i32* %133, !mcsema_real_eip !18
  %135 = zext i32 %134 to i64, !mcsema_real_eip !18
  store i64 %135, i64* %RCX_val, !mcsema_real_eip !18
  %136 = load i64, i64* %RBP_val, !mcsema_real_eip !19
  %137 = add i64 %136, -48, !mcsema_real_eip !19
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !19
  %139 = bitcast i64* %138 to i32*
  store i32 %134, i32* %139, !mcsema_real_eip !19
  %140 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %141 = add i64 %140, -16, !mcsema_real_eip !20
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !20
  %143 = load i64, i64* %142, !mcsema_real_eip !20
  store i64 %143, i64* %RDI_val, !mcsema_real_eip !20
  %144 = add i64 %140, -56, !mcsema_real_eip !21
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !21
  store i64 %143, i64* %145, !mcsema_real_eip !21
  %146 = load i64, i64* %RBP_val, !mcsema_real_eip !22
  %147 = add i64 %146, -56, !mcsema_real_eip !22
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !22
  %149 = load i64, i64* %148, !mcsema_real_eip !22
  store i64 %149, i64* %RDI_val, !mcsema_real_eip !22
  %150 = add i64 %146, -48, !mcsema_real_eip !23
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !23
  %152 = bitcast i64* %151 to i32*
  %153 = load i32, i32* %152, !mcsema_real_eip !23
  %154 = zext i32 %153 to i64, !mcsema_real_eip !23
  store i64 %154, i64* %RSI_val, !mcsema_real_eip !23
  %155 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %156 = add i64 %155, -8, !mcsema_real_eip !24
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !24
  %158 = bitcast i64* %157 to i32*
  %159 = load i32, i32* %158, !mcsema_real_eip !24
  %160 = zext i32 %159 to i64, !mcsema_real_eip !24
  store i64 %160, i64* %RCX_val, !mcsema_real_eip !24
  %161 = load i64, i64* %RSP_val, !mcsema_real_eip !25
  store i64 %161, i64* %RDX_val, !mcsema_real_eip !25
  %162 = add i64 %161, 16, !mcsema_real_eip !26
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !26
  %164 = bitcast i64* %163 to i32*
  store i32 %159, i32* %164, !mcsema_real_eip !26
  %165 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %166 = add i64 %165, -16, !mcsema_real_eip !27
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !27
  %168 = load i64, i64* %167, !mcsema_real_eip !27
  %169 = load i64, i64* %RDX_val, !mcsema_real_eip !28
  %170 = add i64 %169, 8, !mcsema_real_eip !28
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !28
  store i64 %168, i64* %171, !mcsema_real_eip !28
  %172 = load i64, i64* %RDX_val, !mcsema_real_eip !29
  %173 = add i64 %172, 32, !mcsema_real_eip !29
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !29
  %175 = load i64, i64* %RAX_val, !mcsema_real_eip !29
  store i64 %175, i64* %174, !mcsema_real_eip !29
  %176 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  %177 = add i64 %176, -16, !mcsema_real_eip !30
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !30
  %179 = ptrtoint i64* %178 to i64, !mcsema_real_eip !30
  store i64 %179, i64* %R8_val, !mcsema_real_eip !30
  %180 = load i64, i64* %RDX_val, !mcsema_real_eip !31
  %181 = add i64 %180, 24, !mcsema_real_eip !31
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !31
  store i64 %179, i64* %182, !mcsema_real_eip !31
  %183 = load i64, i64* %RDX_val, !mcsema_real_eip !32
  %184 = inttoptr i64 %183 to i64*, !mcsema_real_eip !32
  %185 = bitcast i64* %184 to i32*
  store i32 3, i32* %185, !mcsema_real_eip !32
  store i64 1, i64* %RCX_val, !mcsema_real_eip !33
  store i64 2, i64* %R9_val, !mcsema_real_eip !34
  %186 = load i64, i64* %R8_val, !mcsema_real_eip !35
  store i64 %186, i64* %RDX_val, !mcsema_real_eip !35
  %187 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  %188 = add i64 %187, -76, !mcsema_real_eip !36
  %189 = inttoptr i64 %188 to i64*, !mcsema_real_eip !36
  %190 = load i64, i64* %RCX_val, !mcsema_real_eip !36
  %191 = trunc i64 %190 to i32, !mcsema_real_eip !36
  %192 = bitcast i64* %189 to i32*
  store i32 %191, i32* %192, !mcsema_real_eip !36
  %193 = load i64, i64* %RAX_val, !mcsema_real_eip !37
  store i64 %193, i64* %RCX_val, !mcsema_real_eip !37
  %194 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %195 = add i64 %194, -76, !mcsema_real_eip !38
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !38
  %197 = bitcast i64* %196 to i32*
  %198 = load i32, i32* %197, !mcsema_real_eip !38
  %199 = zext i32 %198 to i64, !mcsema_real_eip !38
  store i64 %199, i64* %R8_val, !mcsema_real_eip !38
  %200 = load i64, i64* %RSP_val, !mcsema_real_eip !39
  %201 = add i64 %200, -8
  %202 = inttoptr i64 %201 to i64*, !mcsema_real_eip !39
  store i64 -4981261766360305936, i64* %202, !mcsema_real_eip !39
  store i64 %201, i64* %RSP_val, !mcsema_real_eip !39
  %203 = load i64, i64* %RAX_val, !mcsema_real_eip !39
  store i64 %203, i64* %RAX, !mcsema_real_eip !39
  %204 = load i64, i64* %RBX_val, !mcsema_real_eip !39
  store i64 %204, i64* %RBX, !mcsema_real_eip !39
  %205 = load i64, i64* %RCX_val, !mcsema_real_eip !39
  store i64 %205, i64* %RCX, !mcsema_real_eip !39
  %206 = load i64, i64* %RDX_val, !mcsema_real_eip !39
  store i64 %206, i64* %RDX, !mcsema_real_eip !39
  %207 = load i64, i64* %RSI_val, !mcsema_real_eip !39
  store i64 %207, i64* %RSI, !mcsema_real_eip !39
  %208 = load i64, i64* %RDI_val, !mcsema_real_eip !39
  store i64 %208, i64* %RDI, !mcsema_real_eip !39
  %209 = load i64, i64* %RSP_val, !mcsema_real_eip !39
  store i64 %209, i64* %RSP, !mcsema_real_eip !39
  %210 = load i64, i64* %RBP_val, !mcsema_real_eip !39
  store i64 %210, i64* %RBP, !mcsema_real_eip !39
  %211 = load i64, i64* %R8_val, !mcsema_real_eip !39
  store i64 %211, i64* %R8, !mcsema_real_eip !39
  %212 = load i64, i64* %R9_val, !mcsema_real_eip !39
  store i64 %212, i64* %R9, !mcsema_real_eip !39
  %213 = load i64, i64* %R10_val, !mcsema_real_eip !39
  store i64 %213, i64* %R10, !mcsema_real_eip !39
  %214 = load i64, i64* %R11_val, !mcsema_real_eip !39
  store i64 %214, i64* %R11, !mcsema_real_eip !39
  %215 = load i64, i64* %R12_val, !mcsema_real_eip !39
  store i64 %215, i64* %R12, !mcsema_real_eip !39
  %216 = load i64, i64* %R13_val, !mcsema_real_eip !39
  store i64 %216, i64* %R13, !mcsema_real_eip !39
  %217 = load i64, i64* %R14_val, !mcsema_real_eip !39
  store i64 %217, i64* %R14, !mcsema_real_eip !39
  %218 = load i64, i64* %R15_val, !mcsema_real_eip !39
  store i64 %218, i64* %R15, !mcsema_real_eip !39
  %219 = load i64, i64* %RIP_val, !mcsema_real_eip !39
  store i64 %219, i64* %RIP, !mcsema_real_eip !39
  %220 = load i1, i1* %CF_val, !mcsema_real_eip !39
  store i1 %220, i1* %CF, align 1, !mcsema_real_eip !39
  %221 = load i1, i1* %PF_val, !mcsema_real_eip !39
  store i1 %221, i1* %PF, align 1, !mcsema_real_eip !39
  %222 = load i1, i1* %AF_val, !mcsema_real_eip !39
  store i1 %222, i1* %AF, align 1, !mcsema_real_eip !39
  %223 = load i1, i1* %ZF_val, !mcsema_real_eip !39
  store i1 %223, i1* %ZF, align 1, !mcsema_real_eip !39
  %224 = load i1, i1* %SF_val, !mcsema_real_eip !39
  store i1 %224, i1* %SF, align 1, !mcsema_real_eip !39
  %225 = load i1, i1* %OF_val, !mcsema_real_eip !39
  store i1 %225, i1* %OF, align 1, !mcsema_real_eip !39
  %226 = load i1, i1* %DF_val, !mcsema_real_eip !39
  store i1 %226, i1* %DF, align 1, !mcsema_real_eip !39
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !39
  %227 = load i1, i1* %FPU_B_val, !mcsema_real_eip !39
  store i1 %227, i1* %FPU_B, align 1, !mcsema_real_eip !39
  %228 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !39
  store i1 %228, i1* %FPU_C3, align 1, !mcsema_real_eip !39
  %229 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !39
  store i3 %229, i3* %FPU_TOP, align 1, !mcsema_real_eip !39
  %230 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !39
  store i1 %230, i1* %FPU_C2, align 1, !mcsema_real_eip !39
  %231 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !39
  store i1 %231, i1* %FPU_C1, align 1, !mcsema_real_eip !39
  %232 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !39
  store i1 %232, i1* %FPU_C0, align 1, !mcsema_real_eip !39
  %233 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !39
  store i1 %233, i1* %FPU_ES, align 1, !mcsema_real_eip !39
  %234 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !39
  store i1 %234, i1* %FPU_SF, align 1, !mcsema_real_eip !39
  %235 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !39
  store i1 %235, i1* %FPU_PE, align 1, !mcsema_real_eip !39
  %236 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !39
  store i1 %236, i1* %FPU_UE, align 1, !mcsema_real_eip !39
  %237 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !39
  store i1 %237, i1* %FPU_OE, align 1, !mcsema_real_eip !39
  %238 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !39
  store i1 %238, i1* %FPU_ZE, align 1, !mcsema_real_eip !39
  %239 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !39
  store i1 %239, i1* %FPU_DE, align 1, !mcsema_real_eip !39
  %240 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !39
  store i1 %240, i1* %FPU_IE, align 1, !mcsema_real_eip !39
  %241 = load i1, i1* %FPU_X_val, !mcsema_real_eip !39
  store i1 %241, i1* %FPU_X, align 1, !mcsema_real_eip !39
  %242 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !39
  store i2 %242, i2* %FPU_RC, align 1, !mcsema_real_eip !39
  %243 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !39
  store i2 %243, i2* %FPU_PC, align 1, !mcsema_real_eip !39
  %244 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !39
  store i1 %244, i1* %FPU_PM, align 1, !mcsema_real_eip !39
  %245 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !39
  store i1 %245, i1* %FPU_UM, align 1, !mcsema_real_eip !39
  %246 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !39
  store i1 %246, i1* %FPU_OM, align 1, !mcsema_real_eip !39
  %247 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !39
  store i1 %247, i1* %FPU_ZM, align 1, !mcsema_real_eip !39
  %248 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !39
  store i1 %248, i1* %FPU_DM, align 1, !mcsema_real_eip !39
  %249 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !39
  store i1 %249, i1* %FPU_IM, align 1, !mcsema_real_eip !39
  %250 = load i64, i64* %53, align 4
  store i64 %250, i64* %52, align 4
  %251 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !39
  store i16 %251, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !39
  %252 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !39
  store i64 %252, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !39
  %253 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !39
  store i16 %253, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !39
  %254 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !39
  store i64 %254, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !39
  %255 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !39
  store i11 %255, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !39
  %256 = load i128, i128* %XMM0_val, !mcsema_real_eip !39
  store i128 %256, i128* %XMM0, align 1, !mcsema_real_eip !39
  %257 = load i128, i128* %XMM1_val, !mcsema_real_eip !39
  store i128 %257, i128* %XMM1, align 1, !mcsema_real_eip !39
  %258 = load i128, i128* %XMM2_val, !mcsema_real_eip !39
  store i128 %258, i128* %XMM2, align 1, !mcsema_real_eip !39
  %259 = load i128, i128* %XMM3_val, !mcsema_real_eip !39
  store i128 %259, i128* %XMM3, align 1, !mcsema_real_eip !39
  %260 = load i128, i128* %XMM4_val, !mcsema_real_eip !39
  store i128 %260, i128* %XMM4, align 1, !mcsema_real_eip !39
  %261 = load i128, i128* %XMM5_val, !mcsema_real_eip !39
  store i128 %261, i128* %XMM5, align 1, !mcsema_real_eip !39
  %262 = load i128, i128* %XMM6_val, !mcsema_real_eip !39
  store i128 %262, i128* %XMM6, align 1, !mcsema_real_eip !39
  %263 = load i128, i128* %XMM7_val, !mcsema_real_eip !39
  store i128 %263, i128* %XMM7, align 1, !mcsema_real_eip !39
  %264 = load i128, i128* %XMM8_val, !mcsema_real_eip !39
  store i128 %264, i128* %XMM8, align 1, !mcsema_real_eip !39
  %265 = load i128, i128* %XMM9_val, !mcsema_real_eip !39
  store i128 %265, i128* %XMM9, align 1, !mcsema_real_eip !39
  %266 = load i128, i128* %XMM10_val, !mcsema_real_eip !39
  store i128 %266, i128* %XMM10, align 1, !mcsema_real_eip !39
  %267 = load i128, i128* %XMM11_val, !mcsema_real_eip !39
  store i128 %267, i128* %XMM11, align 1, !mcsema_real_eip !39
  %268 = load i128, i128* %XMM12_val, !mcsema_real_eip !39
  store i128 %268, i128* %XMM12, align 1, !mcsema_real_eip !39
  %269 = load i128, i128* %XMM13_val, !mcsema_real_eip !39
  store i128 %269, i128* %XMM13, align 1, !mcsema_real_eip !39
  %270 = load i128, i128* %XMM14_val, !mcsema_real_eip !39
  store i128 %270, i128* %XMM14, align 1, !mcsema_real_eip !39
  %271 = load i128, i128* %XMM15_val, !mcsema_real_eip !39
  store i128 %271, i128* %XMM15, align 1, !mcsema_real_eip !39
  %272 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !39
  store i64 %272, i64* %STACK_BASE, align 1, !mcsema_real_eip !39
  %273 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !39
  store i64 %273, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !39
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !39
  %274 = load i64, i64* %RAX, !mcsema_real_eip !39
  store i64 %274, i64* %RAX_val, !mcsema_real_eip !39
  %275 = load i64, i64* %RBX, !mcsema_real_eip !39
  store i64 %275, i64* %RBX_val, !mcsema_real_eip !39
  %276 = load i64, i64* %RCX, !mcsema_real_eip !39
  store i64 %276, i64* %RCX_val, !mcsema_real_eip !39
  %277 = load i64, i64* %RDX, !mcsema_real_eip !39
  store i64 %277, i64* %RDX_val, !mcsema_real_eip !39
  %278 = load i64, i64* %RSI, !mcsema_real_eip !39
  store i64 %278, i64* %RSI_val, !mcsema_real_eip !39
  %279 = load i64, i64* %RDI, !mcsema_real_eip !39
  store i64 %279, i64* %RDI_val, !mcsema_real_eip !39
  %280 = load i64, i64* %RSP, !mcsema_real_eip !39
  store i64 %280, i64* %RSP_val, !mcsema_real_eip !39
  %281 = load i64, i64* %RBP, !mcsema_real_eip !39
  store i64 %281, i64* %RBP_val, !mcsema_real_eip !39
  %282 = load i64, i64* %R8, !mcsema_real_eip !39
  store i64 %282, i64* %R8_val, !mcsema_real_eip !39
  %283 = load i64, i64* %R9, !mcsema_real_eip !39
  store i64 %283, i64* %R9_val, !mcsema_real_eip !39
  %284 = load i64, i64* %R10, !mcsema_real_eip !39
  store i64 %284, i64* %R10_val, !mcsema_real_eip !39
  %285 = load i64, i64* %R11, !mcsema_real_eip !39
  store i64 %285, i64* %R11_val, !mcsema_real_eip !39
  %286 = load i64, i64* %R12, !mcsema_real_eip !39
  store i64 %286, i64* %R12_val, !mcsema_real_eip !39
  %287 = load i64, i64* %R13, !mcsema_real_eip !39
  store i64 %287, i64* %R13_val, !mcsema_real_eip !39
  %288 = load i64, i64* %R14, !mcsema_real_eip !39
  store i64 %288, i64* %R14_val, !mcsema_real_eip !39
  %289 = load i64, i64* %R15, !mcsema_real_eip !39
  store i64 %289, i64* %R15_val, !mcsema_real_eip !39
  %290 = load i64, i64* %RIP, !mcsema_real_eip !39
  store i64 %290, i64* %RIP_val, !mcsema_real_eip !39
  %291 = load i1, i1* %CF, align 1, !mcsema_real_eip !39
  store i1 %291, i1* %CF_val, !mcsema_real_eip !39
  %292 = load i1, i1* %PF, align 1, !mcsema_real_eip !39
  store i1 %292, i1* %PF_val, !mcsema_real_eip !39
  %293 = load i1, i1* %AF, align 1, !mcsema_real_eip !39
  store i1 %293, i1* %AF_val, !mcsema_real_eip !39
  %294 = load i1, i1* %ZF, align 1, !mcsema_real_eip !39
  store i1 %294, i1* %ZF_val, !mcsema_real_eip !39
  %295 = load i1, i1* %SF, align 1, !mcsema_real_eip !39
  store i1 %295, i1* %SF_val, !mcsema_real_eip !39
  %296 = load i1, i1* %OF, align 1, !mcsema_real_eip !39
  store i1 %296, i1* %OF_val, !mcsema_real_eip !39
  %297 = load i1, i1* %DF, align 1, !mcsema_real_eip !39
  store i1 %297, i1* %DF_val, !mcsema_real_eip !39
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !39
  %298 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !39
  store i1 %298, i1* %FPU_B_val, !mcsema_real_eip !39
  %299 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !39
  store i1 %299, i1* %FPU_C3_val, !mcsema_real_eip !39
  %300 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !39
  store i3 %300, i3* %FPU_TOP_val, !mcsema_real_eip !39
  %301 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !39
  store i1 %301, i1* %FPU_C2_val, !mcsema_real_eip !39
  %302 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !39
  store i1 %302, i1* %FPU_C1_val, !mcsema_real_eip !39
  %303 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !39
  store i1 %303, i1* %FPU_C0_val, !mcsema_real_eip !39
  %304 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !39
  store i1 %304, i1* %FPU_ES_val, !mcsema_real_eip !39
  %305 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !39
  store i1 %305, i1* %FPU_SF_val, !mcsema_real_eip !39
  %306 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !39
  store i1 %306, i1* %FPU_PE_val, !mcsema_real_eip !39
  %307 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !39
  store i1 %307, i1* %FPU_UE_val, !mcsema_real_eip !39
  %308 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !39
  store i1 %308, i1* %FPU_OE_val, !mcsema_real_eip !39
  %309 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !39
  store i1 %309, i1* %FPU_ZE_val, !mcsema_real_eip !39
  %310 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !39
  store i1 %310, i1* %FPU_DE_val, !mcsema_real_eip !39
  %311 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !39
  store i1 %311, i1* %FPU_IE_val, !mcsema_real_eip !39
  %312 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !39
  store i1 %312, i1* %FPU_X_val, !mcsema_real_eip !39
  %313 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !39
  store i2 %313, i2* %FPU_RC_val, !mcsema_real_eip !39
  %314 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !39
  store i2 %314, i2* %FPU_PC_val, !mcsema_real_eip !39
  %315 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !39
  store i1 %315, i1* %FPU_PM_val, !mcsema_real_eip !39
  %316 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !39
  store i1 %316, i1* %FPU_UM_val, !mcsema_real_eip !39
  %317 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !39
  store i1 %317, i1* %FPU_OM_val, !mcsema_real_eip !39
  %318 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !39
  store i1 %318, i1* %FPU_ZM_val, !mcsema_real_eip !39
  %319 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !39
  store i1 %319, i1* %FPU_DM_val, !mcsema_real_eip !39
  %320 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !39
  store i1 %320, i1* %FPU_IM_val, !mcsema_real_eip !39
  %321 = load i64, i64* %52, align 4
  store i64 %321, i64* %53, align 4
  %322 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !39
  store i16 %322, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !39
  %323 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !39
  store i64 %323, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !39
  %324 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !39
  store i16 %324, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !39
  %325 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !39
  store i64 %325, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !39
  %326 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !39
  store i11 %326, i11* %FPU_FOPCODE_val, !mcsema_real_eip !39
  %327 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !39
  store i128 %327, i128* %XMM0_val, !mcsema_real_eip !39
  %328 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !39
  store i128 %328, i128* %XMM1_val, !mcsema_real_eip !39
  %329 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !39
  store i128 %329, i128* %XMM2_val, !mcsema_real_eip !39
  %330 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !39
  store i128 %330, i128* %XMM3_val, !mcsema_real_eip !39
  %331 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !39
  store i128 %331, i128* %XMM4_val, !mcsema_real_eip !39
  %332 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !39
  store i128 %332, i128* %XMM5_val, !mcsema_real_eip !39
  %333 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !39
  store i128 %333, i128* %XMM6_val, !mcsema_real_eip !39
  %334 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !39
  store i128 %334, i128* %XMM7_val, !mcsema_real_eip !39
  %335 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !39
  store i128 %335, i128* %XMM8_val, !mcsema_real_eip !39
  %336 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !39
  store i128 %336, i128* %XMM9_val, !mcsema_real_eip !39
  %337 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !39
  store i128 %337, i128* %XMM10_val, !mcsema_real_eip !39
  %338 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !39
  store i128 %338, i128* %XMM11_val, !mcsema_real_eip !39
  %339 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !39
  store i128 %339, i128* %XMM12_val, !mcsema_real_eip !39
  %340 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !39
  store i128 %340, i128* %XMM13_val, !mcsema_real_eip !39
  %341 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !39
  store i128 %341, i128* %XMM14_val, !mcsema_real_eip !39
  %342 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !39
  store i128 %342, i128* %XMM15_val, !mcsema_real_eip !39
  %343 = load i64, i64* %STACK_BASE, !mcsema_real_eip !39
  store i64 %343, i64* %STACK_BASE_val, !mcsema_real_eip !39
  %344 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !39
  store i64 %344, i64* %STACK_LIMIT_val, !mcsema_real_eip !39
  %345 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %346 = add i64 %345, -64, !mcsema_real_eip !40
  %347 = inttoptr i64 %346 to i64*, !mcsema_real_eip !40
  %348 = load i64, i64* %RDX_val, !mcsema_real_eip !40
  %349 = trunc i64 %348 to i32, !mcsema_real_eip !40
  %350 = bitcast i64* %347 to i32*
  store i32 %349, i32* %350, !mcsema_real_eip !40
  %351 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %352 = add i64 %351, -72, !mcsema_real_eip !41
  %353 = inttoptr i64 %352 to i64*, !mcsema_real_eip !41
  %354 = load i64, i64* %RAX_val, !mcsema_real_eip !41
  store i64 %354, i64* %353, !mcsema_real_eip !41
  %355 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  %356 = add i64 %355, -72, !mcsema_real_eip !42
  %357 = inttoptr i64 %356 to i64*, !mcsema_real_eip !42
  %358 = load i64, i64* %357, !mcsema_real_eip !42
  store i64 %358, i64* %RAX_val, !mcsema_real_eip !42
  %359 = add i64 %355, -40, !mcsema_real_eip !43
  %360 = inttoptr i64 %359 to i64*, !mcsema_real_eip !43
  store i64 %358, i64* %360, !mcsema_real_eip !43
  %361 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  %362 = add i64 %361, -64, !mcsema_real_eip !44
  %363 = inttoptr i64 %362 to i64*, !mcsema_real_eip !44
  %364 = bitcast i64* %363 to i32*
  %365 = load i32, i32* %364, !mcsema_real_eip !44
  %366 = zext i32 %365 to i64, !mcsema_real_eip !44
  store i64 %366, i64* %RDX_val, !mcsema_real_eip !44
  %367 = load i64, i64* %RBP_val, !mcsema_real_eip !45
  %368 = add i64 %367, -32, !mcsema_real_eip !45
  %369 = inttoptr i64 %368 to i64*, !mcsema_real_eip !45
  %370 = bitcast i64* %369 to i32*
  store i32 %365, i32* %370, !mcsema_real_eip !45
  %371 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %372 = add i64 %371, -40, !mcsema_real_eip !46
  %373 = inttoptr i64 %372 to i64*, !mcsema_real_eip !46
  %374 = bitcast i64* %373 to i32*
  %375 = load i32, i32* %374, !mcsema_real_eip !46
  %376 = zext i32 %375 to i64, !mcsema_real_eip !46
  store i64 %376, i64* %RDX_val, !mcsema_real_eip !46
  %377 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  %378 = add i64 %377, -36, !mcsema_real_eip !47
  %379 = inttoptr i64 %378 to i64*, !mcsema_real_eip !47
  %380 = bitcast i64* %379 to i32*
  %381 = load i32, i32* %380, !mcsema_real_eip !47
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %375, i32 %381)
  %382 = extractvalue { i32, i1 } %uadd, 0
  %383 = xor i32 %382, %381, !mcsema_real_eip !47
  %384 = xor i32 %383, %375, !mcsema_real_eip !47
  %385 = and i32 %384, 16, !mcsema_real_eip !47
  %386 = icmp ne i32 %385, 0, !mcsema_real_eip !47
  store i1 %386, i1* %AF_val, !mcsema_real_eip !47
  %387 = icmp slt i32 %382, 0
  store i1 %387, i1* %SF_val, !mcsema_real_eip !47
  %388 = icmp eq i32 %382, 0, !mcsema_real_eip !47
  store i1 %388, i1* %ZF_val, !mcsema_real_eip !47
  %389 = xor i32 %375, -2147483648, !mcsema_real_eip !47
  %390 = xor i32 %389, %381, !mcsema_real_eip !47
  %391 = and i32 %383, %390, !mcsema_real_eip !47
  %392 = icmp slt i32 %391, 0
  store i1 %392, i1* %OF_val, !mcsema_real_eip !47
  %393 = trunc i32 %382 to i8, !mcsema_real_eip !47
  %394 = tail call i8 @llvm.ctpop.i8(i8 %393), !mcsema_real_eip !47
  %395 = and i8 %394, 1
  %396 = icmp eq i8 %395, 0
  store i1 %396, i1* %PF_val, !mcsema_real_eip !47
  %397 = extractvalue { i32, i1 } %uadd, 1
  store i1 %397, i1* %CF_val, !mcsema_real_eip !47
  %398 = zext i32 %382 to i64, !mcsema_real_eip !47
  store i64 %398, i64* %RDX_val, !mcsema_real_eip !47
  %399 = load i64, i64* %RBP_val, !mcsema_real_eip !48
  %400 = add i64 %399, -32, !mcsema_real_eip !48
  %401 = inttoptr i64 %400 to i64*, !mcsema_real_eip !48
  %402 = bitcast i64* %401 to i32*
  %403 = load i32, i32* %402, !mcsema_real_eip !48
  %404 = add i32 %382, %403
  %405 = zext i32 %404 to i64, !mcsema_real_eip !48
  store i64 %405, i64* %RDX_val, !mcsema_real_eip !48
  store i64 %405, i64* %RAX_val, !mcsema_real_eip !49
  %406 = load i64, i64* %RSP_val, !mcsema_real_eip !50
  %uadd212 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %406, i64 128)
  %407 = extractvalue { i64, i1 } %uadd212, 0
  %408 = xor i64 %407, %406, !mcsema_real_eip !50
  %409 = and i64 %408, 16, !mcsema_real_eip !50
  %410 = icmp ne i64 %409, 0, !mcsema_real_eip !50
  store i1 %410, i1* %AF_val, !mcsema_real_eip !50
  %411 = icmp slt i64 %407, 0
  store i1 %411, i1* %SF_val, !mcsema_real_eip !50
  %412 = icmp eq i64 %407, 0, !mcsema_real_eip !50
  store i1 %412, i1* %ZF_val, !mcsema_real_eip !50
  %413 = xor i64 %406, -9223372036854775808, !mcsema_real_eip !50
  %414 = and i64 %408, %413, !mcsema_real_eip !50
  %415 = icmp slt i64 %414, 0
  store i1 %415, i1* %OF_val, !mcsema_real_eip !50
  %416 = trunc i64 %407 to i8, !mcsema_real_eip !50
  %417 = tail call i8 @llvm.ctpop.i8(i8 %416), !mcsema_real_eip !50
  %418 = and i8 %417, 1
  %419 = icmp eq i8 %418, 0
  store i1 %419, i1* %PF_val, !mcsema_real_eip !50
  %420 = extractvalue { i64, i1 } %uadd212, 1
  store i1 %420, i1* %CF_val, !mcsema_real_eip !50
  store i64 %407, i64* %RSP_val, !mcsema_real_eip !50
  %421 = inttoptr i64 %407 to i64*, !mcsema_real_eip !51
  %422 = load i64, i64* %421, !mcsema_real_eip !51
  store i64 %422, i64* %RBP_val, !mcsema_real_eip !51
  %423 = add i64 %407, 16, !mcsema_real_eip !52
  store i64 %423, i64* %RSP_val, !mcsema_real_eip !52
  %424 = load i64, i64* %RAX_val, !mcsema_real_eip !52
  store i64 %424, i64* %RAX, !mcsema_real_eip !52
  %425 = load i64, i64* %RBX_val, !mcsema_real_eip !52
  store i64 %425, i64* %RBX, !mcsema_real_eip !52
  %426 = load i64, i64* %RCX_val, !mcsema_real_eip !52
  store i64 %426, i64* %RCX, !mcsema_real_eip !52
  %427 = load i64, i64* %RDX_val, !mcsema_real_eip !52
  store i64 %427, i64* %RDX, !mcsema_real_eip !52
  %428 = load i64, i64* %RSI_val, !mcsema_real_eip !52
  store i64 %428, i64* %RSI, !mcsema_real_eip !52
  %429 = load i64, i64* %RDI_val, !mcsema_real_eip !52
  store i64 %429, i64* %RDI, !mcsema_real_eip !52
  %430 = load i64, i64* %RSP_val, !mcsema_real_eip !52
  store i64 %430, i64* %RSP, !mcsema_real_eip !52
  %431 = load i64, i64* %RBP_val, !mcsema_real_eip !52
  store i64 %431, i64* %RBP, !mcsema_real_eip !52
  %432 = load i64, i64* %R8_val, !mcsema_real_eip !52
  store i64 %432, i64* %R8, !mcsema_real_eip !52
  %433 = load i64, i64* %R9_val, !mcsema_real_eip !52
  store i64 %433, i64* %R9, !mcsema_real_eip !52
  %434 = load i64, i64* %R10_val, !mcsema_real_eip !52
  store i64 %434, i64* %R10, !mcsema_real_eip !52
  %435 = load i64, i64* %R11_val, !mcsema_real_eip !52
  store i64 %435, i64* %R11, !mcsema_real_eip !52
  %436 = load i64, i64* %R12_val, !mcsema_real_eip !52
  store i64 %436, i64* %R12, !mcsema_real_eip !52
  %437 = load i64, i64* %R13_val, !mcsema_real_eip !52
  store i64 %437, i64* %R13, !mcsema_real_eip !52
  %438 = load i64, i64* %R14_val, !mcsema_real_eip !52
  store i64 %438, i64* %R14, !mcsema_real_eip !52
  %439 = load i64, i64* %R15_val, !mcsema_real_eip !52
  store i64 %439, i64* %R15, !mcsema_real_eip !52
  %440 = load i64, i64* %RIP_val, !mcsema_real_eip !52
  store i64 %440, i64* %RIP, !mcsema_real_eip !52
  %441 = load i1, i1* %CF_val, !mcsema_real_eip !52
  store i1 %441, i1* %CF, align 1, !mcsema_real_eip !52
  %442 = load i1, i1* %PF_val, !mcsema_real_eip !52
  store i1 %442, i1* %PF, align 1, !mcsema_real_eip !52
  %443 = load i1, i1* %AF_val, !mcsema_real_eip !52
  store i1 %443, i1* %AF, align 1, !mcsema_real_eip !52
  %444 = load i1, i1* %ZF_val, !mcsema_real_eip !52
  store i1 %444, i1* %ZF, align 1, !mcsema_real_eip !52
  %445 = load i1, i1* %SF_val, !mcsema_real_eip !52
  store i1 %445, i1* %SF, align 1, !mcsema_real_eip !52
  %446 = load i1, i1* %OF_val, !mcsema_real_eip !52
  store i1 %446, i1* %OF, align 1, !mcsema_real_eip !52
  %447 = load i1, i1* %DF_val, !mcsema_real_eip !52
  store i1 %447, i1* %DF, align 1, !mcsema_real_eip !52
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !52
  %448 = load i1, i1* %FPU_B_val, !mcsema_real_eip !52
  store i1 %448, i1* %FPU_B, align 1, !mcsema_real_eip !52
  %449 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !52
  store i1 %449, i1* %FPU_C3, align 1, !mcsema_real_eip !52
  %450 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !52
  store i3 %450, i3* %FPU_TOP, align 1, !mcsema_real_eip !52
  %451 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !52
  store i1 %451, i1* %FPU_C2, align 1, !mcsema_real_eip !52
  %452 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !52
  store i1 %452, i1* %FPU_C1, align 1, !mcsema_real_eip !52
  %453 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !52
  store i1 %453, i1* %FPU_C0, align 1, !mcsema_real_eip !52
  %454 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !52
  store i1 %454, i1* %FPU_ES, align 1, !mcsema_real_eip !52
  %455 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !52
  store i1 %455, i1* %FPU_SF, align 1, !mcsema_real_eip !52
  %456 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !52
  store i1 %456, i1* %FPU_PE, align 1, !mcsema_real_eip !52
  %457 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !52
  store i1 %457, i1* %FPU_UE, align 1, !mcsema_real_eip !52
  %458 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !52
  store i1 %458, i1* %FPU_OE, align 1, !mcsema_real_eip !52
  %459 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !52
  store i1 %459, i1* %FPU_ZE, align 1, !mcsema_real_eip !52
  %460 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !52
  store i1 %460, i1* %FPU_DE, align 1, !mcsema_real_eip !52
  %461 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !52
  store i1 %461, i1* %FPU_IE, align 1, !mcsema_real_eip !52
  %462 = load i1, i1* %FPU_X_val, !mcsema_real_eip !52
  store i1 %462, i1* %FPU_X, align 1, !mcsema_real_eip !52
  %463 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !52
  store i2 %463, i2* %FPU_RC, align 1, !mcsema_real_eip !52
  %464 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !52
  store i2 %464, i2* %FPU_PC, align 1, !mcsema_real_eip !52
  %465 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !52
  store i1 %465, i1* %FPU_PM, align 1, !mcsema_real_eip !52
  %466 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !52
  store i1 %466, i1* %FPU_UM, align 1, !mcsema_real_eip !52
  %467 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !52
  store i1 %467, i1* %FPU_OM, align 1, !mcsema_real_eip !52
  %468 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !52
  store i1 %468, i1* %FPU_ZM, align 1, !mcsema_real_eip !52
  %469 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !52
  store i1 %469, i1* %FPU_DM, align 1, !mcsema_real_eip !52
  %470 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !52
  store i1 %470, i1* %FPU_IM, align 1, !mcsema_real_eip !52
  %471 = load i64, i64* %53, align 4
  store i64 %471, i64* %52, align 4
  %472 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !52
  store i16 %472, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !52
  %473 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !52
  store i64 %473, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !52
  %474 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !52
  store i16 %474, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !52
  %475 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !52
  store i64 %475, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !52
  %476 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !52
  store i11 %476, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !52
  %477 = load i128, i128* %XMM0_val, !mcsema_real_eip !52
  store i128 %477, i128* %XMM0, align 1, !mcsema_real_eip !52
  %478 = load i128, i128* %XMM1_val, !mcsema_real_eip !52
  store i128 %478, i128* %XMM1, align 1, !mcsema_real_eip !52
  %479 = load i128, i128* %XMM2_val, !mcsema_real_eip !52
  store i128 %479, i128* %XMM2, align 1, !mcsema_real_eip !52
  %480 = load i128, i128* %XMM3_val, !mcsema_real_eip !52
  store i128 %480, i128* %XMM3, align 1, !mcsema_real_eip !52
  %481 = load i128, i128* %XMM4_val, !mcsema_real_eip !52
  store i128 %481, i128* %XMM4, align 1, !mcsema_real_eip !52
  %482 = load i128, i128* %XMM5_val, !mcsema_real_eip !52
  store i128 %482, i128* %XMM5, align 1, !mcsema_real_eip !52
  %483 = load i128, i128* %XMM6_val, !mcsema_real_eip !52
  store i128 %483, i128* %XMM6, align 1, !mcsema_real_eip !52
  %484 = load i128, i128* %XMM7_val, !mcsema_real_eip !52
  store i128 %484, i128* %XMM7, align 1, !mcsema_real_eip !52
  %485 = load i128, i128* %XMM8_val, !mcsema_real_eip !52
  store i128 %485, i128* %XMM8, align 1, !mcsema_real_eip !52
  %486 = load i128, i128* %XMM9_val, !mcsema_real_eip !52
  store i128 %486, i128* %XMM9, align 1, !mcsema_real_eip !52
  %487 = load i128, i128* %XMM10_val, !mcsema_real_eip !52
  store i128 %487, i128* %XMM10, align 1, !mcsema_real_eip !52
  %488 = load i128, i128* %XMM11_val, !mcsema_real_eip !52
  store i128 %488, i128* %XMM11, align 1, !mcsema_real_eip !52
  %489 = load i128, i128* %XMM12_val, !mcsema_real_eip !52
  store i128 %489, i128* %XMM12, align 1, !mcsema_real_eip !52
  %490 = load i128, i128* %XMM13_val, !mcsema_real_eip !52
  store i128 %490, i128* %XMM13, align 1, !mcsema_real_eip !52
  %491 = load i128, i128* %XMM14_val, !mcsema_real_eip !52
  store i128 %491, i128* %XMM14, align 1, !mcsema_real_eip !52
  %492 = load i128, i128* %XMM15_val, !mcsema_real_eip !52
  store i128 %492, i128* %XMM15, align 1, !mcsema_real_eip !52
  %493 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !52
  store i64 %493, i64* %STACK_BASE, align 1, !mcsema_real_eip !52
  %494 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !52
  store i64 %494, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !52
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
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !53
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
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !53
  %59 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !53
  store i11 %59, i11* %FPU_FOPCODE_val, !mcsema_real_eip !53
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !53
  %60 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !53
  store i128 %60, i128* %XMM0_val, !mcsema_real_eip !53
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !53
  %61 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !53
  store i128 %61, i128* %XMM1_val, !mcsema_real_eip !53
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !53
  %62 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !53
  store i128 %62, i128* %XMM2_val, !mcsema_real_eip !53
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !53
  %63 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !53
  store i128 %63, i128* %XMM3_val, !mcsema_real_eip !53
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !53
  %64 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !53
  store i128 %64, i128* %XMM4_val, !mcsema_real_eip !53
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !53
  %65 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !53
  store i128 %65, i128* %XMM5_val, !mcsema_real_eip !53
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !53
  %66 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !53
  store i128 %66, i128* %XMM6_val, !mcsema_real_eip !53
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !53
  %67 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !53
  store i128 %67, i128* %XMM7_val, !mcsema_real_eip !53
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !53
  %68 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !53
  store i128 %68, i128* %XMM8_val, !mcsema_real_eip !53
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !53
  %69 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !53
  store i128 %69, i128* %XMM9_val, !mcsema_real_eip !53
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !53
  %70 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !53
  store i128 %70, i128* %XMM10_val, !mcsema_real_eip !53
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !53
  %71 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !53
  store i128 %71, i128* %XMM11_val, !mcsema_real_eip !53
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !53
  %72 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !53
  store i128 %72, i128* %XMM12_val, !mcsema_real_eip !53
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !53
  %73 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !53
  store i128 %73, i128* %XMM13_val, !mcsema_real_eip !53
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !53
  %74 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !53
  store i128 %74, i128* %XMM14_val, !mcsema_real_eip !53
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !53
  %75 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !53
  store i128 %75, i128* %XMM15_val, !mcsema_real_eip !53
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !53
  %76 = load i64, i64* %STACK_BASE, !mcsema_real_eip !53
  store i64 %76, i64* %STACK_BASE_val, !mcsema_real_eip !53
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !53
  %77 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !53
  store i64 %77, i64* %STACK_LIMIT_val, !mcsema_real_eip !53
  %78 = load i64, i64* %RBP_val, !mcsema_real_eip !53
  %79 = load i64, i64* %RSP_val, !mcsema_real_eip !53
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !53
  store i64 %78, i64* %81, !mcsema_real_eip !53
  store i64 %80, i64* %RBP_val, !mcsema_real_eip !54
  %82 = load i64, i64* %RBX_val, !mcsema_real_eip !55
  %83 = add i64 %79, -16
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !55
  store i64 %82, i64* %84, !mcsema_real_eip !55
  store i64 %83, i64* %RSP_val, !mcsema_real_eip !55
  %85 = load i64, i64* %RBP_val, !mcsema_real_eip !56
  %86 = add i64 %85, 48, !mcsema_real_eip !56
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !56
  %88 = load i64, i64* %87, !mcsema_real_eip !56
  store i64 %88, i64* %RAX_val, !mcsema_real_eip !56
  %89 = add i64 %85, 40, !mcsema_real_eip !57
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !57
  %91 = load i64, i64* %90, !mcsema_real_eip !57
  store i64 %91, i64* %R10_val, !mcsema_real_eip !57
  %92 = load i64, i64* %RBP_val, !mcsema_real_eip !58
  %93 = add i64 %92, 24, !mcsema_real_eip !58
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !58
  %95 = ptrtoint i64* %94 to i64, !mcsema_real_eip !58
  store i64 %95, i64* %R11_val, !mcsema_real_eip !58
  %96 = add i64 %92, 16, !mcsema_real_eip !59
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !59
  %98 = bitcast i64* %97 to i32*
  %99 = load i32, i32* %98, !mcsema_real_eip !59
  %100 = zext i32 %99 to i64, !mcsema_real_eip !59
  store i64 %100, i64* %RBX_val, !mcsema_real_eip !59
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !60
  %102 = add i64 %101, -56, !mcsema_real_eip !60
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !60
  %104 = load i64, i64* %RDI_val, !mcsema_real_eip !60
  store i64 %104, i64* %103, !mcsema_real_eip !60
  %105 = load i64, i64* %RBP_val, !mcsema_real_eip !61
  %106 = add i64 %105, -48, !mcsema_real_eip !61
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !61
  %108 = load i64, i64* %RSI_val, !mcsema_real_eip !61
  %109 = trunc i64 %108 to i32, !mcsema_real_eip !61
  %110 = bitcast i64* %107 to i32*
  store i32 %109, i32* %110, !mcsema_real_eip !61
  %111 = load i64, i64* %RBP_val, !mcsema_real_eip !62
  %112 = add i64 %111, -32, !mcsema_real_eip !62
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !62
  %114 = load i64, i64* %RSI_val, !mcsema_real_eip !62
  %115 = trunc i64 %114 to i32, !mcsema_real_eip !62
  %116 = bitcast i64* %113 to i32*
  store i32 %115, i32* %116, !mcsema_real_eip !62
  %117 = load i64, i64* %RBP_val, !mcsema_real_eip !63
  %118 = add i64 %117, -56, !mcsema_real_eip !63
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !63
  %120 = load i64, i64* %119, !mcsema_real_eip !63
  store i64 %120, i64* %RDI_val, !mcsema_real_eip !63
  %121 = add i64 %117, -40, !mcsema_real_eip !64
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !64
  store i64 %120, i64* %122, !mcsema_real_eip !64
  %123 = load i64, i64* %RBP_val, !mcsema_real_eip !65
  %124 = add i64 %123, -64, !mcsema_real_eip !65
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !65
  %126 = load i64, i64* %RDX_val, !mcsema_real_eip !65
  store i64 %126, i64* %125, !mcsema_real_eip !65
  %127 = load i64, i64* %RBP_val, !mcsema_real_eip !66
  %128 = add i64 %127, -72, !mcsema_real_eip !66
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !66
  %130 = load i64, i64* %RCX_val, !mcsema_real_eip !66
  store i64 %130, i64* %129, !mcsema_real_eip !66
  %131 = load i64, i64* %RBP_val, !mcsema_real_eip !67
  %132 = add i64 %131, -76, !mcsema_real_eip !67
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !67
  %134 = load i64, i64* %R8_val, !mcsema_real_eip !67
  %135 = trunc i64 %134 to i32, !mcsema_real_eip !67
  %136 = bitcast i64* %133 to i32*
  store i32 %135, i32* %136, !mcsema_real_eip !67
  %137 = load i64, i64* %RBP_val, !mcsema_real_eip !68
  %138 = add i64 %137, -80, !mcsema_real_eip !68
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !68
  %140 = load i64, i64* %R9_val, !mcsema_real_eip !68
  %141 = trunc i64 %140 to i32, !mcsema_real_eip !68
  %142 = bitcast i64* %139 to i32*
  store i32 %141, i32* %142, !mcsema_real_eip !68
  %143 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  %144 = add i64 %143, -84, !mcsema_real_eip !69
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !69
  %146 = load i64, i64* %RBX_val, !mcsema_real_eip !69
  %147 = trunc i64 %146 to i32, !mcsema_real_eip !69
  %148 = bitcast i64* %145 to i32*
  store i32 %147, i32* %148, !mcsema_real_eip !69
  %149 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %150 = add i64 %149, -96, !mcsema_real_eip !70
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !70
  %152 = load i64, i64* %R10_val, !mcsema_real_eip !70
  store i64 %152, i64* %151, !mcsema_real_eip !70
  %153 = load i64, i64* %RBP_val, !mcsema_real_eip !71
  %154 = add i64 %153, -104, !mcsema_real_eip !71
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !71
  %156 = load i64, i64* %RAX_val, !mcsema_real_eip !71
  store i64 %156, i64* %155, !mcsema_real_eip !71
  %157 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %158 = add i64 %157, -40, !mcsema_real_eip !72
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !72
  %160 = bitcast i64* %159 to i32*
  %161 = load i32, i32* %160, !mcsema_real_eip !72
  %162 = zext i32 %161 to i64, !mcsema_real_eip !72
  store i64 %162, i64* %RSI_val, !mcsema_real_eip !72
  %163 = load i64, i64* %RBP_val, !mcsema_real_eip !73
  %164 = add i64 %163, -64, !mcsema_real_eip !73
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !73
  %166 = load i64, i64* %165, !mcsema_real_eip !73
  store i64 %166, i64* %RCX_val, !mcsema_real_eip !73
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !74
  %168 = bitcast i64* %167 to i32*
  %169 = load i32, i32* %168, !mcsema_real_eip !74
  %170 = zext i32 %169 to i64, !mcsema_real_eip !74
  store i64 %170, i64* %R8_val, !mcsema_real_eip !74
  %171 = load i64, i64* %RSI_val, !mcsema_real_eip !75
  %172 = trunc i64 %171 to i32, !mcsema_real_eip !75
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %169, i32 %172)
  %173 = extractvalue { i32, i1 } %uadd, 0
  %174 = xor i32 %173, %172, !mcsema_real_eip !75
  %175 = xor i32 %174, %169, !mcsema_real_eip !75
  %176 = and i32 %175, 16, !mcsema_real_eip !75
  %177 = icmp ne i32 %176, 0, !mcsema_real_eip !75
  store i1 %177, i1* %AF_val, !mcsema_real_eip !75
  %178 = icmp slt i32 %173, 0
  store i1 %178, i1* %SF_val, !mcsema_real_eip !75
  %179 = icmp eq i32 %173, 0, !mcsema_real_eip !75
  store i1 %179, i1* %ZF_val, !mcsema_real_eip !75
  %180 = xor i32 %169, -2147483648, !mcsema_real_eip !75
  %181 = xor i32 %180, %172, !mcsema_real_eip !75
  %182 = and i32 %174, %181, !mcsema_real_eip !75
  %183 = icmp slt i32 %182, 0
  store i1 %183, i1* %OF_val, !mcsema_real_eip !75
  %184 = trunc i32 %173 to i8, !mcsema_real_eip !75
  %185 = tail call i8 @llvm.ctpop.i8(i8 %184), !mcsema_real_eip !75
  %186 = and i8 %185, 1
  %187 = icmp eq i8 %186, 0
  store i1 %187, i1* %PF_val, !mcsema_real_eip !75
  %188 = extractvalue { i32, i1 } %uadd, 1
  store i1 %188, i1* %CF_val, !mcsema_real_eip !75
  %189 = zext i32 %173 to i64, !mcsema_real_eip !75
  store i64 %189, i64* %RSI_val, !mcsema_real_eip !75
  %190 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %191 = add i64 %190, -72, !mcsema_real_eip !76
  %192 = inttoptr i64 %191 to i64*, !mcsema_real_eip !76
  %193 = load i64, i64* %192, !mcsema_real_eip !76
  store i64 %193, i64* %RCX_val, !mcsema_real_eip !76
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !77
  %195 = bitcast i64* %194 to i32*
  %196 = load i32, i32* %195, !mcsema_real_eip !77
  %197 = zext i32 %196 to i64, !mcsema_real_eip !77
  store i64 %197, i64* %R8_val, !mcsema_real_eip !77
  %198 = load i64, i64* %RSI_val, !mcsema_real_eip !78
  %199 = trunc i64 %198 to i32, !mcsema_real_eip !78
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %196, i32 %199)
  %200 = extractvalue { i32, i1 } %uadd71, 0
  %201 = xor i32 %200, %199, !mcsema_real_eip !78
  %202 = xor i32 %201, %196, !mcsema_real_eip !78
  %203 = and i32 %202, 16, !mcsema_real_eip !78
  %204 = icmp ne i32 %203, 0, !mcsema_real_eip !78
  store i1 %204, i1* %AF_val, !mcsema_real_eip !78
  %205 = icmp slt i32 %200, 0
  store i1 %205, i1* %SF_val, !mcsema_real_eip !78
  %206 = icmp eq i32 %200, 0, !mcsema_real_eip !78
  store i1 %206, i1* %ZF_val, !mcsema_real_eip !78
  %207 = xor i32 %196, -2147483648, !mcsema_real_eip !78
  %208 = xor i32 %207, %199, !mcsema_real_eip !78
  %209 = and i32 %201, %208, !mcsema_real_eip !78
  %210 = icmp slt i32 %209, 0
  store i1 %210, i1* %OF_val, !mcsema_real_eip !78
  %211 = trunc i32 %200 to i8, !mcsema_real_eip !78
  %212 = tail call i8 @llvm.ctpop.i8(i8 %211), !mcsema_real_eip !78
  %213 = and i8 %212, 1
  %214 = icmp eq i8 %213, 0
  store i1 %214, i1* %PF_val, !mcsema_real_eip !78
  %215 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %215, i1* %CF_val, !mcsema_real_eip !78
  %216 = zext i32 %200 to i64, !mcsema_real_eip !78
  store i64 %216, i64* %RSI_val, !mcsema_real_eip !78
  %217 = load i64, i64* %R11_val, !mcsema_real_eip !79
  %218 = inttoptr i64 %217 to i64*, !mcsema_real_eip !79
  %219 = bitcast i64* %218 to i32*
  %220 = load i32, i32* %219, !mcsema_real_eip !79
  %221 = zext i32 %220 to i64, !mcsema_real_eip !79
  store i64 %221, i64* %R8_val, !mcsema_real_eip !79
  %222 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %223 = add i64 %222, -96, !mcsema_real_eip !80
  %224 = inttoptr i64 %223 to i64*, !mcsema_real_eip !80
  %225 = load i64, i64* %224, !mcsema_real_eip !80
  store i64 %225, i64* %RCX_val, !mcsema_real_eip !80
  %226 = inttoptr i64 %225 to i64*, !mcsema_real_eip !81
  %227 = bitcast i64* %226 to i32*
  %228 = load i32, i32* %227, !mcsema_real_eip !81
  %229 = zext i32 %228 to i64, !mcsema_real_eip !81
  store i64 %229, i64* %R9_val, !mcsema_real_eip !81
  %230 = load i64, i64* %R8_val, !mcsema_real_eip !82
  %231 = trunc i64 %230 to i32, !mcsema_real_eip !82
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %228, i32 %231)
  %232 = extractvalue { i32, i1 } %uadd72, 0
  %233 = xor i32 %232, %231, !mcsema_real_eip !82
  %234 = xor i32 %233, %228, !mcsema_real_eip !82
  %235 = and i32 %234, 16, !mcsema_real_eip !82
  %236 = icmp ne i32 %235, 0, !mcsema_real_eip !82
  store i1 %236, i1* %AF_val, !mcsema_real_eip !82
  %237 = icmp slt i32 %232, 0
  store i1 %237, i1* %SF_val, !mcsema_real_eip !82
  %238 = icmp eq i32 %232, 0, !mcsema_real_eip !82
  store i1 %238, i1* %ZF_val, !mcsema_real_eip !82
  %239 = xor i32 %228, -2147483648, !mcsema_real_eip !82
  %240 = xor i32 %239, %231, !mcsema_real_eip !82
  %241 = and i32 %233, %240, !mcsema_real_eip !82
  %242 = icmp slt i32 %241, 0
  store i1 %242, i1* %OF_val, !mcsema_real_eip !82
  %243 = trunc i32 %232 to i8, !mcsema_real_eip !82
  %244 = tail call i8 @llvm.ctpop.i8(i8 %243), !mcsema_real_eip !82
  %245 = and i8 %244, 1
  %246 = icmp eq i8 %245, 0
  store i1 %246, i1* %PF_val, !mcsema_real_eip !82
  %247 = extractvalue { i32, i1 } %uadd72, 1
  store i1 %247, i1* %CF_val, !mcsema_real_eip !82
  %248 = zext i32 %232 to i64, !mcsema_real_eip !82
  store i64 %248, i64* %R8_val, !mcsema_real_eip !82
  %249 = load i64, i64* %RAX_val, !mcsema_real_eip !83
  %250 = inttoptr i64 %249 to i64*, !mcsema_real_eip !83
  %251 = bitcast i64* %250 to i32*
  %252 = load i32, i32* %251, !mcsema_real_eip !83
  %253 = zext i32 %252 to i64, !mcsema_real_eip !83
  store i64 %253, i64* %R9_val, !mcsema_real_eip !83
  %254 = load i64, i64* %R8_val, !mcsema_real_eip !84
  %255 = trunc i64 %254 to i32, !mcsema_real_eip !84
  %256 = add i32 %252, %255
  %257 = zext i32 %256 to i64, !mcsema_real_eip !84
  store i64 %257, i64* %R8_val, !mcsema_real_eip !84
  %258 = load i64, i64* %RSI_val, !mcsema_real_eip !85
  %259 = trunc i64 %258 to i32, !mcsema_real_eip !85
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %256, i32 %259)
  %260 = extractvalue { i32, i1 } %uadd74, 0
  %261 = xor i32 %260, %259, !mcsema_real_eip !85
  %262 = xor i32 %261, %256, !mcsema_real_eip !85
  %263 = and i32 %262, 16, !mcsema_real_eip !85
  %264 = icmp ne i32 %263, 0, !mcsema_real_eip !85
  store i1 %264, i1* %AF_val, !mcsema_real_eip !85
  %265 = icmp slt i32 %260, 0
  store i1 %265, i1* %SF_val, !mcsema_real_eip !85
  %266 = icmp eq i32 %260, 0, !mcsema_real_eip !85
  store i1 %266, i1* %ZF_val, !mcsema_real_eip !85
  %267 = xor i32 %256, -2147483648, !mcsema_real_eip !85
  %268 = xor i32 %267, %259, !mcsema_real_eip !85
  %269 = and i32 %261, %268, !mcsema_real_eip !85
  %270 = icmp slt i32 %269, 0
  store i1 %270, i1* %OF_val, !mcsema_real_eip !85
  %271 = trunc i32 %260 to i8, !mcsema_real_eip !85
  %272 = tail call i8 @llvm.ctpop.i8(i8 %271), !mcsema_real_eip !85
  %273 = and i8 %272, 1
  %274 = icmp eq i8 %273, 0
  store i1 %274, i1* %PF_val, !mcsema_real_eip !85
  %275 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %275, i1* %CF_val, !mcsema_real_eip !85
  %276 = zext i32 %260 to i64, !mcsema_real_eip !85
  store i64 %276, i64* %RSI_val, !mcsema_real_eip !85
  %277 = load i64, i64* %RBP_val, !mcsema_real_eip !86
  %278 = add i64 %277, -120, !mcsema_real_eip !86
  %279 = inttoptr i64 %278 to i64*, !mcsema_real_eip !86
  %280 = bitcast i64* %279 to i32*
  store i32 %260, i32* %280, !mcsema_real_eip !86
  %281 = load i64, i64* %RBP_val, !mcsema_real_eip !87
  %282 = add i64 %281, -36, !mcsema_real_eip !87
  %283 = inttoptr i64 %282 to i64*, !mcsema_real_eip !87
  %284 = bitcast i64* %283 to i32*
  %285 = load i32, i32* %284, !mcsema_real_eip !87
  %286 = zext i32 %285 to i64, !mcsema_real_eip !87
  store i64 %286, i64* %RSI_val, !mcsema_real_eip !87
  %287 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  %288 = add i64 %287, -64, !mcsema_real_eip !88
  %289 = inttoptr i64 %288 to i64*, !mcsema_real_eip !88
  %290 = load i64, i64* %289, !mcsema_real_eip !88
  store i64 %290, i64* %RAX_val, !mcsema_real_eip !88
  %291 = add i64 %290, 4, !mcsema_real_eip !89
  %292 = inttoptr i64 %291 to i64*, !mcsema_real_eip !89
  %293 = bitcast i64* %292 to i32*
  %294 = load i32, i32* %293, !mcsema_real_eip !89
  %295 = zext i32 %294 to i64, !mcsema_real_eip !89
  store i64 %295, i64* %R8_val, !mcsema_real_eip !89
  %296 = load i64, i64* %RSI_val, !mcsema_real_eip !90
  %297 = trunc i64 %296 to i32, !mcsema_real_eip !90
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %294, i32 %297)
  %298 = extractvalue { i32, i1 } %uadd75, 0
  %299 = xor i32 %298, %297, !mcsema_real_eip !90
  %300 = xor i32 %299, %294, !mcsema_real_eip !90
  %301 = and i32 %300, 16, !mcsema_real_eip !90
  %302 = icmp ne i32 %301, 0, !mcsema_real_eip !90
  store i1 %302, i1* %AF_val, !mcsema_real_eip !90
  %303 = icmp slt i32 %298, 0
  store i1 %303, i1* %SF_val, !mcsema_real_eip !90
  %304 = icmp eq i32 %298, 0, !mcsema_real_eip !90
  store i1 %304, i1* %ZF_val, !mcsema_real_eip !90
  %305 = xor i32 %294, -2147483648, !mcsema_real_eip !90
  %306 = xor i32 %305, %297, !mcsema_real_eip !90
  %307 = and i32 %299, %306, !mcsema_real_eip !90
  %308 = icmp slt i32 %307, 0
  store i1 %308, i1* %OF_val, !mcsema_real_eip !90
  %309 = trunc i32 %298 to i8, !mcsema_real_eip !90
  %310 = tail call i8 @llvm.ctpop.i8(i8 %309), !mcsema_real_eip !90
  %311 = and i8 %310, 1
  %312 = icmp eq i8 %311, 0
  store i1 %312, i1* %PF_val, !mcsema_real_eip !90
  %313 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %313, i1* %CF_val, !mcsema_real_eip !90
  %314 = zext i32 %298 to i64, !mcsema_real_eip !90
  store i64 %314, i64* %RSI_val, !mcsema_real_eip !90
  %315 = load i64, i64* %RBP_val, !mcsema_real_eip !91
  %316 = add i64 %315, -72, !mcsema_real_eip !91
  %317 = inttoptr i64 %316 to i64*, !mcsema_real_eip !91
  %318 = load i64, i64* %317, !mcsema_real_eip !91
  store i64 %318, i64* %RAX_val, !mcsema_real_eip !91
  %319 = add i64 %318, 4, !mcsema_real_eip !92
  %320 = inttoptr i64 %319 to i64*, !mcsema_real_eip !92
  %321 = bitcast i64* %320 to i32*
  %322 = load i32, i32* %321, !mcsema_real_eip !92
  %323 = zext i32 %322 to i64, !mcsema_real_eip !92
  store i64 %323, i64* %R8_val, !mcsema_real_eip !92
  %324 = load i64, i64* %RSI_val, !mcsema_real_eip !93
  %325 = trunc i64 %324 to i32, !mcsema_real_eip !93
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %322, i32 %325)
  %326 = extractvalue { i32, i1 } %uadd76, 0
  %327 = xor i32 %326, %325, !mcsema_real_eip !93
  %328 = xor i32 %327, %322, !mcsema_real_eip !93
  %329 = and i32 %328, 16, !mcsema_real_eip !93
  %330 = icmp ne i32 %329, 0, !mcsema_real_eip !93
  store i1 %330, i1* %AF_val, !mcsema_real_eip !93
  %331 = icmp slt i32 %326, 0
  store i1 %331, i1* %SF_val, !mcsema_real_eip !93
  %332 = icmp eq i32 %326, 0, !mcsema_real_eip !93
  store i1 %332, i1* %ZF_val, !mcsema_real_eip !93
  %333 = xor i32 %322, -2147483648, !mcsema_real_eip !93
  %334 = xor i32 %333, %325, !mcsema_real_eip !93
  %335 = and i32 %327, %334, !mcsema_real_eip !93
  %336 = icmp slt i32 %335, 0
  store i1 %336, i1* %OF_val, !mcsema_real_eip !93
  %337 = trunc i32 %326 to i8, !mcsema_real_eip !93
  %338 = tail call i8 @llvm.ctpop.i8(i8 %337), !mcsema_real_eip !93
  %339 = and i8 %338, 1
  %340 = icmp eq i8 %339, 0
  store i1 %340, i1* %PF_val, !mcsema_real_eip !93
  %341 = extractvalue { i32, i1 } %uadd76, 1
  store i1 %341, i1* %CF_val, !mcsema_real_eip !93
  %342 = zext i32 %326 to i64, !mcsema_real_eip !93
  store i64 %342, i64* %RSI_val, !mcsema_real_eip !93
  %343 = load i64, i64* %R11_val, !mcsema_real_eip !94
  %344 = add i64 %343, 4, !mcsema_real_eip !94
  %345 = inttoptr i64 %344 to i64*, !mcsema_real_eip !94
  %346 = bitcast i64* %345 to i32*
  %347 = load i32, i32* %346, !mcsema_real_eip !94
  %348 = zext i32 %347 to i64, !mcsema_real_eip !94
  store i64 %348, i64* %R8_val, !mcsema_real_eip !94
  %349 = load i64, i64* %RBP_val, !mcsema_real_eip !95
  %350 = add i64 %349, -96, !mcsema_real_eip !95
  %351 = inttoptr i64 %350 to i64*, !mcsema_real_eip !95
  %352 = load i64, i64* %351, !mcsema_real_eip !95
  store i64 %352, i64* %RAX_val, !mcsema_real_eip !95
  %353 = add i64 %352, 4, !mcsema_real_eip !96
  %354 = inttoptr i64 %353 to i64*, !mcsema_real_eip !96
  %355 = bitcast i64* %354 to i32*
  %356 = load i32, i32* %355, !mcsema_real_eip !96
  %357 = zext i32 %356 to i64, !mcsema_real_eip !96
  store i64 %357, i64* %R9_val, !mcsema_real_eip !96
  %358 = load i64, i64* %R8_val, !mcsema_real_eip !97
  %359 = trunc i64 %358 to i32, !mcsema_real_eip !97
  %uadd77 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %356, i32 %359)
  %360 = extractvalue { i32, i1 } %uadd77, 0
  %361 = xor i32 %360, %359, !mcsema_real_eip !97
  %362 = xor i32 %361, %356, !mcsema_real_eip !97
  %363 = and i32 %362, 16, !mcsema_real_eip !97
  %364 = icmp ne i32 %363, 0, !mcsema_real_eip !97
  store i1 %364, i1* %AF_val, !mcsema_real_eip !97
  %365 = icmp slt i32 %360, 0
  store i1 %365, i1* %SF_val, !mcsema_real_eip !97
  %366 = icmp eq i32 %360, 0, !mcsema_real_eip !97
  store i1 %366, i1* %ZF_val, !mcsema_real_eip !97
  %367 = xor i32 %356, -2147483648, !mcsema_real_eip !97
  %368 = xor i32 %367, %359, !mcsema_real_eip !97
  %369 = and i32 %361, %368, !mcsema_real_eip !97
  %370 = icmp slt i32 %369, 0
  store i1 %370, i1* %OF_val, !mcsema_real_eip !97
  %371 = trunc i32 %360 to i8, !mcsema_real_eip !97
  %372 = tail call i8 @llvm.ctpop.i8(i8 %371), !mcsema_real_eip !97
  %373 = and i8 %372, 1
  %374 = icmp eq i8 %373, 0
  store i1 %374, i1* %PF_val, !mcsema_real_eip !97
  %375 = extractvalue { i32, i1 } %uadd77, 1
  store i1 %375, i1* %CF_val, !mcsema_real_eip !97
  %376 = zext i32 %360 to i64, !mcsema_real_eip !97
  store i64 %376, i64* %R8_val, !mcsema_real_eip !97
  %377 = load i64, i64* %RBP_val, !mcsema_real_eip !98
  %378 = add i64 %377, -104, !mcsema_real_eip !98
  %379 = inttoptr i64 %378 to i64*, !mcsema_real_eip !98
  %380 = load i64, i64* %379, !mcsema_real_eip !98
  store i64 %380, i64* %RAX_val, !mcsema_real_eip !98
  %381 = add i64 %380, 4, !mcsema_real_eip !99
  %382 = inttoptr i64 %381 to i64*, !mcsema_real_eip !99
  %383 = bitcast i64* %382 to i32*
  %384 = load i32, i32* %383, !mcsema_real_eip !99
  %385 = zext i32 %384 to i64, !mcsema_real_eip !99
  store i64 %385, i64* %R9_val, !mcsema_real_eip !99
  %386 = load i64, i64* %R8_val, !mcsema_real_eip !100
  %387 = trunc i64 %386 to i32, !mcsema_real_eip !100
  %388 = add i32 %384, %387
  %389 = zext i32 %388 to i64, !mcsema_real_eip !100
  store i64 %389, i64* %R8_val, !mcsema_real_eip !100
  %390 = load i64, i64* %RSI_val, !mcsema_real_eip !101
  %391 = trunc i64 %390 to i32, !mcsema_real_eip !101
  %uadd79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %388, i32 %391)
  %392 = extractvalue { i32, i1 } %uadd79, 0
  %393 = xor i32 %392, %391, !mcsema_real_eip !101
  %394 = xor i32 %393, %388, !mcsema_real_eip !101
  %395 = and i32 %394, 16, !mcsema_real_eip !101
  %396 = icmp ne i32 %395, 0, !mcsema_real_eip !101
  store i1 %396, i1* %AF_val, !mcsema_real_eip !101
  %397 = icmp slt i32 %392, 0
  store i1 %397, i1* %SF_val, !mcsema_real_eip !101
  %398 = icmp eq i32 %392, 0, !mcsema_real_eip !101
  store i1 %398, i1* %ZF_val, !mcsema_real_eip !101
  %399 = xor i32 %388, -2147483648, !mcsema_real_eip !101
  %400 = xor i32 %399, %391, !mcsema_real_eip !101
  %401 = and i32 %393, %400, !mcsema_real_eip !101
  %402 = icmp slt i32 %401, 0
  store i1 %402, i1* %OF_val, !mcsema_real_eip !101
  %403 = trunc i32 %392 to i8, !mcsema_real_eip !101
  %404 = tail call i8 @llvm.ctpop.i8(i8 %403), !mcsema_real_eip !101
  %405 = and i8 %404, 1
  %406 = icmp eq i8 %405, 0
  store i1 %406, i1* %PF_val, !mcsema_real_eip !101
  %407 = extractvalue { i32, i1 } %uadd79, 1
  store i1 %407, i1* %CF_val, !mcsema_real_eip !101
  %408 = zext i32 %392 to i64, !mcsema_real_eip !101
  store i64 %408, i64* %RSI_val, !mcsema_real_eip !101
  %409 = load i64, i64* %RBP_val, !mcsema_real_eip !102
  %410 = add i64 %409, -116, !mcsema_real_eip !102
  %411 = inttoptr i64 %410 to i64*, !mcsema_real_eip !102
  %412 = bitcast i64* %411 to i32*
  store i32 %392, i32* %412, !mcsema_real_eip !102
  %413 = load i64, i64* %RBP_val, !mcsema_real_eip !103
  %414 = add i64 %413, -32, !mcsema_real_eip !103
  %415 = inttoptr i64 %414 to i64*, !mcsema_real_eip !103
  %416 = bitcast i64* %415 to i32*
  %417 = load i32, i32* %416, !mcsema_real_eip !103
  %418 = zext i32 %417 to i64, !mcsema_real_eip !103
  store i64 %418, i64* %RSI_val, !mcsema_real_eip !103
  %419 = load i64, i64* %RBP_val, !mcsema_real_eip !104
  %420 = add i64 %419, -64, !mcsema_real_eip !104
  %421 = inttoptr i64 %420 to i64*, !mcsema_real_eip !104
  %422 = load i64, i64* %421, !mcsema_real_eip !104
  store i64 %422, i64* %RAX_val, !mcsema_real_eip !104
  %423 = add i64 %422, 8, !mcsema_real_eip !105
  %424 = inttoptr i64 %423 to i64*, !mcsema_real_eip !105
  %425 = bitcast i64* %424 to i32*
  %426 = load i32, i32* %425, !mcsema_real_eip !105
  %427 = zext i32 %426 to i64, !mcsema_real_eip !105
  store i64 %427, i64* %R8_val, !mcsema_real_eip !105
  %428 = load i64, i64* %RSI_val, !mcsema_real_eip !106
  %429 = trunc i64 %428 to i32, !mcsema_real_eip !106
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %426, i32 %429)
  %430 = extractvalue { i32, i1 } %uadd80, 0
  %431 = xor i32 %430, %429, !mcsema_real_eip !106
  %432 = xor i32 %431, %426, !mcsema_real_eip !106
  %433 = and i32 %432, 16, !mcsema_real_eip !106
  %434 = icmp ne i32 %433, 0, !mcsema_real_eip !106
  store i1 %434, i1* %AF_val, !mcsema_real_eip !106
  %435 = icmp slt i32 %430, 0
  store i1 %435, i1* %SF_val, !mcsema_real_eip !106
  %436 = icmp eq i32 %430, 0, !mcsema_real_eip !106
  store i1 %436, i1* %ZF_val, !mcsema_real_eip !106
  %437 = xor i32 %426, -2147483648, !mcsema_real_eip !106
  %438 = xor i32 %437, %429, !mcsema_real_eip !106
  %439 = and i32 %431, %438, !mcsema_real_eip !106
  %440 = icmp slt i32 %439, 0
  store i1 %440, i1* %OF_val, !mcsema_real_eip !106
  %441 = trunc i32 %430 to i8, !mcsema_real_eip !106
  %442 = tail call i8 @llvm.ctpop.i8(i8 %441), !mcsema_real_eip !106
  %443 = and i8 %442, 1
  %444 = icmp eq i8 %443, 0
  store i1 %444, i1* %PF_val, !mcsema_real_eip !106
  %445 = extractvalue { i32, i1 } %uadd80, 1
  store i1 %445, i1* %CF_val, !mcsema_real_eip !106
  %446 = zext i32 %430 to i64, !mcsema_real_eip !106
  store i64 %446, i64* %RSI_val, !mcsema_real_eip !106
  %447 = load i64, i64* %RBP_val, !mcsema_real_eip !107
  %448 = add i64 %447, -72, !mcsema_real_eip !107
  %449 = inttoptr i64 %448 to i64*, !mcsema_real_eip !107
  %450 = load i64, i64* %449, !mcsema_real_eip !107
  store i64 %450, i64* %RAX_val, !mcsema_real_eip !107
  %451 = add i64 %450, 8, !mcsema_real_eip !108
  %452 = inttoptr i64 %451 to i64*, !mcsema_real_eip !108
  %453 = bitcast i64* %452 to i32*
  %454 = load i32, i32* %453, !mcsema_real_eip !108
  %455 = zext i32 %454 to i64, !mcsema_real_eip !108
  store i64 %455, i64* %R8_val, !mcsema_real_eip !108
  %456 = load i64, i64* %RSI_val, !mcsema_real_eip !109
  %457 = trunc i64 %456 to i32, !mcsema_real_eip !109
  %uadd81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %454, i32 %457)
  %458 = extractvalue { i32, i1 } %uadd81, 0
  %459 = xor i32 %458, %457, !mcsema_real_eip !109
  %460 = xor i32 %459, %454, !mcsema_real_eip !109
  %461 = and i32 %460, 16, !mcsema_real_eip !109
  %462 = icmp ne i32 %461, 0, !mcsema_real_eip !109
  store i1 %462, i1* %AF_val, !mcsema_real_eip !109
  %463 = icmp slt i32 %458, 0
  store i1 %463, i1* %SF_val, !mcsema_real_eip !109
  %464 = icmp eq i32 %458, 0, !mcsema_real_eip !109
  store i1 %464, i1* %ZF_val, !mcsema_real_eip !109
  %465 = xor i32 %454, -2147483648, !mcsema_real_eip !109
  %466 = xor i32 %465, %457, !mcsema_real_eip !109
  %467 = and i32 %459, %466, !mcsema_real_eip !109
  %468 = icmp slt i32 %467, 0
  store i1 %468, i1* %OF_val, !mcsema_real_eip !109
  %469 = trunc i32 %458 to i8, !mcsema_real_eip !109
  %470 = tail call i8 @llvm.ctpop.i8(i8 %469), !mcsema_real_eip !109
  %471 = and i8 %470, 1
  %472 = icmp eq i8 %471, 0
  store i1 %472, i1* %PF_val, !mcsema_real_eip !109
  %473 = extractvalue { i32, i1 } %uadd81, 1
  store i1 %473, i1* %CF_val, !mcsema_real_eip !109
  %474 = zext i32 %458 to i64, !mcsema_real_eip !109
  store i64 %474, i64* %RSI_val, !mcsema_real_eip !109
  %475 = load i64, i64* %R11_val, !mcsema_real_eip !110
  %476 = add i64 %475, 8, !mcsema_real_eip !110
  %477 = inttoptr i64 %476 to i64*, !mcsema_real_eip !110
  %478 = bitcast i64* %477 to i32*
  %479 = load i32, i32* %478, !mcsema_real_eip !110
  %480 = zext i32 %479 to i64, !mcsema_real_eip !110
  store i64 %480, i64* %R8_val, !mcsema_real_eip !110
  %481 = load i64, i64* %RBP_val, !mcsema_real_eip !111
  %482 = add i64 %481, -96, !mcsema_real_eip !111
  %483 = inttoptr i64 %482 to i64*, !mcsema_real_eip !111
  %484 = load i64, i64* %483, !mcsema_real_eip !111
  store i64 %484, i64* %RAX_val, !mcsema_real_eip !111
  %485 = add i64 %484, 8, !mcsema_real_eip !112
  %486 = inttoptr i64 %485 to i64*, !mcsema_real_eip !112
  %487 = bitcast i64* %486 to i32*
  %488 = load i32, i32* %487, !mcsema_real_eip !112
  %489 = zext i32 %488 to i64, !mcsema_real_eip !112
  store i64 %489, i64* %R9_val, !mcsema_real_eip !112
  %490 = load i64, i64* %R8_val, !mcsema_real_eip !113
  %491 = trunc i64 %490 to i32, !mcsema_real_eip !113
  %uadd82 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %488, i32 %491)
  %492 = extractvalue { i32, i1 } %uadd82, 0
  %493 = xor i32 %492, %491, !mcsema_real_eip !113
  %494 = xor i32 %493, %488, !mcsema_real_eip !113
  %495 = and i32 %494, 16, !mcsema_real_eip !113
  %496 = icmp ne i32 %495, 0, !mcsema_real_eip !113
  store i1 %496, i1* %AF_val, !mcsema_real_eip !113
  %497 = icmp slt i32 %492, 0
  store i1 %497, i1* %SF_val, !mcsema_real_eip !113
  %498 = icmp eq i32 %492, 0, !mcsema_real_eip !113
  store i1 %498, i1* %ZF_val, !mcsema_real_eip !113
  %499 = xor i32 %488, -2147483648, !mcsema_real_eip !113
  %500 = xor i32 %499, %491, !mcsema_real_eip !113
  %501 = and i32 %493, %500, !mcsema_real_eip !113
  %502 = icmp slt i32 %501, 0
  store i1 %502, i1* %OF_val, !mcsema_real_eip !113
  %503 = trunc i32 %492 to i8, !mcsema_real_eip !113
  %504 = tail call i8 @llvm.ctpop.i8(i8 %503), !mcsema_real_eip !113
  %505 = and i8 %504, 1
  %506 = icmp eq i8 %505, 0
  store i1 %506, i1* %PF_val, !mcsema_real_eip !113
  %507 = extractvalue { i32, i1 } %uadd82, 1
  store i1 %507, i1* %CF_val, !mcsema_real_eip !113
  %508 = zext i32 %492 to i64, !mcsema_real_eip !113
  store i64 %508, i64* %R8_val, !mcsema_real_eip !113
  %509 = load i64, i64* %RBP_val, !mcsema_real_eip !114
  %510 = add i64 %509, -104, !mcsema_real_eip !114
  %511 = inttoptr i64 %510 to i64*, !mcsema_real_eip !114
  %512 = load i64, i64* %511, !mcsema_real_eip !114
  store i64 %512, i64* %RAX_val, !mcsema_real_eip !114
  %513 = add i64 %512, 8, !mcsema_real_eip !115
  %514 = inttoptr i64 %513 to i64*, !mcsema_real_eip !115
  %515 = bitcast i64* %514 to i32*
  %516 = load i32, i32* %515, !mcsema_real_eip !115
  %517 = zext i32 %516 to i64, !mcsema_real_eip !115
  store i64 %517, i64* %R9_val, !mcsema_real_eip !115
  %518 = load i64, i64* %R8_val, !mcsema_real_eip !116
  %519 = trunc i64 %518 to i32, !mcsema_real_eip !116
  %520 = add i32 %516, %519
  %521 = zext i32 %520 to i64, !mcsema_real_eip !116
  store i64 %521, i64* %R8_val, !mcsema_real_eip !116
  %522 = load i64, i64* %RSI_val, !mcsema_real_eip !117
  %523 = trunc i64 %522 to i32, !mcsema_real_eip !117
  %uadd84 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %520, i32 %523)
  %524 = extractvalue { i32, i1 } %uadd84, 0
  %525 = xor i32 %524, %523, !mcsema_real_eip !117
  %526 = xor i32 %525, %520, !mcsema_real_eip !117
  %527 = and i32 %526, 16, !mcsema_real_eip !117
  %528 = icmp ne i32 %527, 0, !mcsema_real_eip !117
  store i1 %528, i1* %AF_val, !mcsema_real_eip !117
  %529 = icmp slt i32 %524, 0
  store i1 %529, i1* %SF_val, !mcsema_real_eip !117
  %530 = icmp eq i32 %524, 0, !mcsema_real_eip !117
  store i1 %530, i1* %ZF_val, !mcsema_real_eip !117
  %531 = xor i32 %520, -2147483648, !mcsema_real_eip !117
  %532 = xor i32 %531, %523, !mcsema_real_eip !117
  %533 = and i32 %525, %532, !mcsema_real_eip !117
  %534 = icmp slt i32 %533, 0
  store i1 %534, i1* %OF_val, !mcsema_real_eip !117
  %535 = trunc i32 %524 to i8, !mcsema_real_eip !117
  %536 = tail call i8 @llvm.ctpop.i8(i8 %535), !mcsema_real_eip !117
  %537 = and i8 %536, 1
  %538 = icmp eq i8 %537, 0
  store i1 %538, i1* %PF_val, !mcsema_real_eip !117
  %539 = extractvalue { i32, i1 } %uadd84, 1
  store i1 %539, i1* %CF_val, !mcsema_real_eip !117
  %540 = zext i32 %524 to i64, !mcsema_real_eip !117
  store i64 %540, i64* %RSI_val, !mcsema_real_eip !117
  %541 = load i64, i64* %RBP_val, !mcsema_real_eip !118
  %542 = add i64 %541, -112, !mcsema_real_eip !118
  %543 = inttoptr i64 %542 to i64*, !mcsema_real_eip !118
  %544 = bitcast i64* %543 to i32*
  store i32 %524, i32* %544, !mcsema_real_eip !118
  %545 = load i64, i64* %RBP_val, !mcsema_real_eip !119
  %546 = add i64 %545, -16, !mcsema_real_eip !119
  %547 = inttoptr i64 %546 to i64*, !mcsema_real_eip !119
  %548 = load i64, i64* %RSI_val, !mcsema_real_eip !119
  %549 = trunc i64 %548 to i32, !mcsema_real_eip !119
  %550 = bitcast i64* %547 to i32*
  store i32 %549, i32* %550, !mcsema_real_eip !119
  %551 = load i64, i64* %RBP_val, !mcsema_real_eip !120
  %552 = add i64 %551, -120, !mcsema_real_eip !120
  %553 = inttoptr i64 %552 to i64*, !mcsema_real_eip !120
  %554 = load i64, i64* %553, !mcsema_real_eip !120
  store i64 %554, i64* %RAX_val, !mcsema_real_eip !120
  %555 = add i64 %551, -24, !mcsema_real_eip !121
  %556 = inttoptr i64 %555 to i64*, !mcsema_real_eip !121
  store i64 %554, i64* %556, !mcsema_real_eip !121
  %557 = load i64, i64* %RBP_val, !mcsema_real_eip !122
  %558 = add i64 %557, -16, !mcsema_real_eip !122
  %559 = inttoptr i64 %558 to i64*, !mcsema_real_eip !122
  %560 = bitcast i64* %559 to i32*
  %561 = load i32, i32* %560, !mcsema_real_eip !122
  %562 = zext i32 %561 to i64, !mcsema_real_eip !122
  store i64 %562, i64* %RSI_val, !mcsema_real_eip !122
  %563 = load i64, i64* %RBP_val, !mcsema_real_eip !123
  %564 = add i64 %563, -128, !mcsema_real_eip !123
  %565 = inttoptr i64 %564 to i64*, !mcsema_real_eip !123
  %566 = bitcast i64* %565 to i32*
  store i32 %561, i32* %566, !mcsema_real_eip !123
  %567 = load i64, i64* %RBP_val, !mcsema_real_eip !124
  %568 = add i64 %567, -24, !mcsema_real_eip !124
  %569 = inttoptr i64 %568 to i64*, !mcsema_real_eip !124
  %570 = load i64, i64* %569, !mcsema_real_eip !124
  store i64 %570, i64* %RAX_val, !mcsema_real_eip !124
  %571 = add i64 %567, -136, !mcsema_real_eip !125
  %572 = inttoptr i64 %571 to i64*, !mcsema_real_eip !125
  store i64 %570, i64* %572, !mcsema_real_eip !125
  %573 = load i64, i64* %RBP_val, !mcsema_real_eip !126
  %574 = add i64 %573, -136, !mcsema_real_eip !126
  %575 = inttoptr i64 %574 to i64*, !mcsema_real_eip !126
  %576 = load i64, i64* %575, !mcsema_real_eip !126
  store i64 %576, i64* %RAX_val, !mcsema_real_eip !126
  %577 = add i64 %573, -128, !mcsema_real_eip !127
  %578 = inttoptr i64 %577 to i64*, !mcsema_real_eip !127
  %579 = bitcast i64* %578 to i32*
  %580 = load i32, i32* %579, !mcsema_real_eip !127
  %581 = zext i32 %580 to i64, !mcsema_real_eip !127
  store i64 %581, i64* %RDX_val, !mcsema_real_eip !127
  %582 = load i64, i64* %RSP_val, !mcsema_real_eip !128
  %583 = inttoptr i64 %582 to i64*, !mcsema_real_eip !128
  %584 = load i64, i64* %583, !mcsema_real_eip !128
  store i64 %584, i64* %RBX_val, !mcsema_real_eip !128
  %585 = add i64 %582, 8, !mcsema_real_eip !128
  store i64 %585, i64* %RSP_val, !mcsema_real_eip !128
  %586 = inttoptr i64 %585 to i64*, !mcsema_real_eip !129
  %587 = load i64, i64* %586, !mcsema_real_eip !129
  store i64 %587, i64* %RBP_val, !mcsema_real_eip !129
  %588 = add i64 %582, 24, !mcsema_real_eip !130
  store i64 %588, i64* %RSP_val, !mcsema_real_eip !130
  %589 = load i64, i64* %RAX_val, !mcsema_real_eip !130
  store i64 %589, i64* %RAX, !mcsema_real_eip !130
  %590 = load i64, i64* %RBX_val, !mcsema_real_eip !130
  store i64 %590, i64* %RBX, !mcsema_real_eip !130
  %591 = load i64, i64* %RCX_val, !mcsema_real_eip !130
  store i64 %591, i64* %RCX, !mcsema_real_eip !130
  %592 = load i64, i64* %RDX_val, !mcsema_real_eip !130
  store i64 %592, i64* %RDX, !mcsema_real_eip !130
  %593 = load i64, i64* %RSI_val, !mcsema_real_eip !130
  store i64 %593, i64* %RSI, !mcsema_real_eip !130
  %594 = load i64, i64* %RDI_val, !mcsema_real_eip !130
  store i64 %594, i64* %RDI, !mcsema_real_eip !130
  %595 = load i64, i64* %RSP_val, !mcsema_real_eip !130
  store i64 %595, i64* %RSP, !mcsema_real_eip !130
  %596 = load i64, i64* %RBP_val, !mcsema_real_eip !130
  store i64 %596, i64* %RBP, !mcsema_real_eip !130
  %597 = load i64, i64* %R8_val, !mcsema_real_eip !130
  store i64 %597, i64* %R8, !mcsema_real_eip !130
  %598 = load i64, i64* %R9_val, !mcsema_real_eip !130
  store i64 %598, i64* %R9, !mcsema_real_eip !130
  %599 = load i64, i64* %R10_val, !mcsema_real_eip !130
  store i64 %599, i64* %R10, !mcsema_real_eip !130
  %600 = load i64, i64* %R11_val, !mcsema_real_eip !130
  store i64 %600, i64* %R11, !mcsema_real_eip !130
  %601 = load i64, i64* %R12_val, !mcsema_real_eip !130
  store i64 %601, i64* %R12, !mcsema_real_eip !130
  %602 = load i64, i64* %R13_val, !mcsema_real_eip !130
  store i64 %602, i64* %R13, !mcsema_real_eip !130
  %603 = load i64, i64* %R14_val, !mcsema_real_eip !130
  store i64 %603, i64* %R14, !mcsema_real_eip !130
  %604 = load i64, i64* %R15_val, !mcsema_real_eip !130
  store i64 %604, i64* %R15, !mcsema_real_eip !130
  %605 = load i64, i64* %RIP_val, !mcsema_real_eip !130
  store i64 %605, i64* %RIP, !mcsema_real_eip !130
  %606 = load i1, i1* %CF_val, !mcsema_real_eip !130
  store i1 %606, i1* %CF, align 1, !mcsema_real_eip !130
  %607 = load i1, i1* %PF_val, !mcsema_real_eip !130
  store i1 %607, i1* %PF, align 1, !mcsema_real_eip !130
  %608 = load i1, i1* %AF_val, !mcsema_real_eip !130
  store i1 %608, i1* %AF, align 1, !mcsema_real_eip !130
  %609 = load i1, i1* %ZF_val, !mcsema_real_eip !130
  store i1 %609, i1* %ZF, align 1, !mcsema_real_eip !130
  %610 = load i1, i1* %SF_val, !mcsema_real_eip !130
  store i1 %610, i1* %SF, align 1, !mcsema_real_eip !130
  %611 = load i1, i1* %OF_val, !mcsema_real_eip !130
  store i1 %611, i1* %OF, align 1, !mcsema_real_eip !130
  %612 = load i1, i1* %DF_val, !mcsema_real_eip !130
  store i1 %612, i1* %DF, align 1, !mcsema_real_eip !130
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !130
  %613 = load i1, i1* %FPU_B_val, !mcsema_real_eip !130
  store i1 %613, i1* %FPU_B, align 1, !mcsema_real_eip !130
  %614 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !130
  store i1 %614, i1* %FPU_C3, align 1, !mcsema_real_eip !130
  %615 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !130
  store i3 %615, i3* %FPU_TOP, align 1, !mcsema_real_eip !130
  %616 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !130
  store i1 %616, i1* %FPU_C2, align 1, !mcsema_real_eip !130
  %617 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !130
  store i1 %617, i1* %FPU_C1, align 1, !mcsema_real_eip !130
  %618 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !130
  store i1 %618, i1* %FPU_C0, align 1, !mcsema_real_eip !130
  %619 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !130
  store i1 %619, i1* %FPU_ES, align 1, !mcsema_real_eip !130
  %620 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !130
  store i1 %620, i1* %FPU_SF, align 1, !mcsema_real_eip !130
  %621 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !130
  store i1 %621, i1* %FPU_PE, align 1, !mcsema_real_eip !130
  %622 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !130
  store i1 %622, i1* %FPU_UE, align 1, !mcsema_real_eip !130
  %623 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !130
  store i1 %623, i1* %FPU_OE, align 1, !mcsema_real_eip !130
  %624 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !130
  store i1 %624, i1* %FPU_ZE, align 1, !mcsema_real_eip !130
  %625 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !130
  store i1 %625, i1* %FPU_DE, align 1, !mcsema_real_eip !130
  %626 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !130
  store i1 %626, i1* %FPU_IE, align 1, !mcsema_real_eip !130
  %627 = load i1, i1* %FPU_X_val, !mcsema_real_eip !130
  store i1 %627, i1* %FPU_X, align 1, !mcsema_real_eip !130
  %628 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !130
  store i2 %628, i2* %FPU_RC, align 1, !mcsema_real_eip !130
  %629 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !130
  store i2 %629, i2* %FPU_PC, align 1, !mcsema_real_eip !130
  %630 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !130
  store i1 %630, i1* %FPU_PM, align 1, !mcsema_real_eip !130
  %631 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !130
  store i1 %631, i1* %FPU_UM, align 1, !mcsema_real_eip !130
  %632 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !130
  store i1 %632, i1* %FPU_OM, align 1, !mcsema_real_eip !130
  %633 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !130
  store i1 %633, i1* %FPU_ZM, align 1, !mcsema_real_eip !130
  %634 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !130
  store i1 %634, i1* %FPU_DM, align 1, !mcsema_real_eip !130
  %635 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !130
  store i1 %635, i1* %FPU_IM, align 1, !mcsema_real_eip !130
  %636 = load i64, i64* %53, align 4
  store i64 %636, i64* %52, align 4
  %637 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !130
  store i16 %637, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !130
  %638 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !130
  store i64 %638, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !130
  %639 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !130
  store i16 %639, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !130
  %640 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !130
  store i64 %640, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !130
  %641 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !130
  store i11 %641, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !130
  %642 = load i128, i128* %XMM0_val, !mcsema_real_eip !130
  store i128 %642, i128* %XMM0, align 1, !mcsema_real_eip !130
  %643 = load i128, i128* %XMM1_val, !mcsema_real_eip !130
  store i128 %643, i128* %XMM1, align 1, !mcsema_real_eip !130
  %644 = load i128, i128* %XMM2_val, !mcsema_real_eip !130
  store i128 %644, i128* %XMM2, align 1, !mcsema_real_eip !130
  %645 = load i128, i128* %XMM3_val, !mcsema_real_eip !130
  store i128 %645, i128* %XMM3, align 1, !mcsema_real_eip !130
  %646 = load i128, i128* %XMM4_val, !mcsema_real_eip !130
  store i128 %646, i128* %XMM4, align 1, !mcsema_real_eip !130
  %647 = load i128, i128* %XMM5_val, !mcsema_real_eip !130
  store i128 %647, i128* %XMM5, align 1, !mcsema_real_eip !130
  %648 = load i128, i128* %XMM6_val, !mcsema_real_eip !130
  store i128 %648, i128* %XMM6, align 1, !mcsema_real_eip !130
  %649 = load i128, i128* %XMM7_val, !mcsema_real_eip !130
  store i128 %649, i128* %XMM7, align 1, !mcsema_real_eip !130
  %650 = load i128, i128* %XMM8_val, !mcsema_real_eip !130
  store i128 %650, i128* %XMM8, align 1, !mcsema_real_eip !130
  %651 = load i128, i128* %XMM9_val, !mcsema_real_eip !130
  store i128 %651, i128* %XMM9, align 1, !mcsema_real_eip !130
  %652 = load i128, i128* %XMM10_val, !mcsema_real_eip !130
  store i128 %652, i128* %XMM10, align 1, !mcsema_real_eip !130
  %653 = load i128, i128* %XMM11_val, !mcsema_real_eip !130
  store i128 %653, i128* %XMM11, align 1, !mcsema_real_eip !130
  %654 = load i128, i128* %XMM12_val, !mcsema_real_eip !130
  store i128 %654, i128* %XMM12, align 1, !mcsema_real_eip !130
  %655 = load i128, i128* %XMM13_val, !mcsema_real_eip !130
  store i128 %655, i128* %XMM13, align 1, !mcsema_real_eip !130
  %656 = load i128, i128* %XMM14_val, !mcsema_real_eip !130
  store i128 %656, i128* %XMM14, align 1, !mcsema_real_eip !130
  %657 = load i128, i128* %XMM15_val, !mcsema_real_eip !130
  store i128 %657, i128* %XMM15, align 1, !mcsema_real_eip !130
  %658 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !130
  store i64 %658, i64* %STACK_BASE, align 1, !mcsema_real_eip !130
  %659 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !130
  store i64 %659, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !130
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
!2 = !{i64 272}
!3 = !{i64 273}
!4 = !{i64 276}
!5 = !{i64 283}
!6 = !{i64 300}
!7 = !{i64 304}
!8 = !{i64 311}
!9 = !{i64 316}
!10 = !{i64 318}
!11 = !{i64 323}
!12 = !{i64 327}
!13 = !{i64 333}
!14 = !{i64 337}
!15 = !{i64 344}
!16 = !{i64 348}
!17 = !{i64 355}
!18 = !{i64 359}
!19 = !{i64 362}
!20 = !{i64 365}
!21 = !{i64 369}
!22 = !{i64 373}
!23 = !{i64 377}
!24 = !{i64 380}
!25 = !{i64 383}
!26 = !{i64 386}
!27 = !{i64 389}
!28 = !{i64 393}
!29 = !{i64 397}
!30 = !{i64 401}
!31 = !{i64 405}
!32 = !{i64 409}
!33 = !{i64 415}
!34 = !{i64 420}
!35 = !{i64 426}
!36 = !{i64 429}
!37 = !{i64 432}
!38 = !{i64 435}
!39 = !{i64 439}
!40 = !{i64 444}
!41 = !{i64 447}
!42 = !{i64 451}
!43 = !{i64 455}
!44 = !{i64 459}
!45 = !{i64 462}
!46 = !{i64 465}
!47 = !{i64 468}
!48 = !{i64 471}
!49 = !{i64 474}
!50 = !{i64 476}
!51 = !{i64 483}
!52 = !{i64 484}
!53 = !{i64 0}
!54 = !{i64 1}
!55 = !{i64 4}
!56 = !{i64 5}
!57 = !{i64 9}
!58 = !{i64 13}
!59 = !{i64 17}
!60 = !{i64 20}
!61 = !{i64 24}
!62 = !{i64 27}
!63 = !{i64 30}
!64 = !{i64 34}
!65 = !{i64 38}
!66 = !{i64 42}
!67 = !{i64 46}
!68 = !{i64 50}
!69 = !{i64 54}
!70 = !{i64 57}
!71 = !{i64 61}
!72 = !{i64 65}
!73 = !{i64 68}
!74 = !{i64 72}
!75 = !{i64 75}
!76 = !{i64 78}
!77 = !{i64 82}
!78 = !{i64 85}
!79 = !{i64 88}
!80 = !{i64 91}
!81 = !{i64 95}
!82 = !{i64 98}
!83 = !{i64 101}
!84 = !{i64 104}
!85 = !{i64 107}
!86 = !{i64 110}
!87 = !{i64 113}
!88 = !{i64 116}
!89 = !{i64 120}
!90 = !{i64 124}
!91 = !{i64 127}
!92 = !{i64 131}
!93 = !{i64 135}
!94 = !{i64 138}
!95 = !{i64 142}
!96 = !{i64 146}
!97 = !{i64 150}
!98 = !{i64 153}
!99 = !{i64 157}
!100 = !{i64 161}
!101 = !{i64 164}
!102 = !{i64 167}
!103 = !{i64 170}
!104 = !{i64 173}
!105 = !{i64 177}
!106 = !{i64 181}
!107 = !{i64 184}
!108 = !{i64 188}
!109 = !{i64 192}
!110 = !{i64 195}
!111 = !{i64 199}
!112 = !{i64 203}
!113 = !{i64 207}
!114 = !{i64 210}
!115 = !{i64 214}
!116 = !{i64 218}
!117 = !{i64 221}
!118 = !{i64 224}
!119 = !{i64 227}
!120 = !{i64 230}
!121 = !{i64 234}
!122 = !{i64 238}
!123 = !{i64 241}
!124 = !{i64 244}
!125 = !{i64 248}
!126 = !{i64 255}
!127 = !{i64 262}
!128 = !{i64 265}
!129 = !{i64 266}
!130 = !{i64 267}
