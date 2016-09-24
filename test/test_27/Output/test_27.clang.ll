; ModuleID = 'Output/test_27.clang.bc'
source_filename = "Output/test_27.clang.bc"
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
  %94 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %95 = add i64 %94, -4, !mcsema_real_eip !6
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !6
  %97 = bitcast i64* %96 to i32*
  store i32 0, i32* %97, !mcsema_real_eip !6
  %98 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  %99 = add i64 %98, -16, !mcsema_real_eip !7
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !7
  %101 = bitcast i64* %100 to i32*
  store i32 10, i32* %101, !mcsema_real_eip !7
  %102 = load i64, i64* %RBP_val, !mcsema_real_eip !8
  %103 = add i64 %102, -12, !mcsema_real_eip !8
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !8
  %105 = bitcast i64* %104 to i32*
  store i32 10, i32* %105, !mcsema_real_eip !8
  %106 = load i64, i64* %RBP_val, !mcsema_real_eip !9
  %107 = add i64 %106, -8, !mcsema_real_eip !9
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !9
  %109 = bitcast i64* %108 to i32*
  store i32 10, i32* %109, !mcsema_real_eip !9
  %110 = load i64, i64* %RDI_val, !mcsema_real_eip !10
  %111 = tail call x86_64_sysvcc i64 @malloc(i64 %110), !mcsema_real_eip !10
  store i64 %111, i64* %RAX_val, !mcsema_real_eip !10
  %112 = load i64, i64* %RBP_val, !mcsema_real_eip !11
  %113 = add i64 %112, -16, !mcsema_real_eip !11
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !11
  %115 = ptrtoint i64* %114 to i64, !mcsema_real_eip !11
  store i64 %115, i64* %RDI_val, !mcsema_real_eip !11
  store i64 1, i64* %R8_val, !mcsema_real_eip !12
  store i64 2, i64* %R9_val, !mcsema_real_eip !13
  store i64 3, i64* %RCX_val, !mcsema_real_eip !14
  %116 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %117 = add i64 %116, -24, !mcsema_real_eip !15
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !15
  %119 = load i64, i64* %RAX_val, !mcsema_real_eip !15
  store i64 %119, i64* %118, !mcsema_real_eip !15
  %120 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %121 = add i64 %120, -24, !mcsema_real_eip !16
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !16
  %123 = load i64, i64* %122, !mcsema_real_eip !16
  store i64 %123, i64* %RAX_val, !mcsema_real_eip !16
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !17
  %125 = bitcast i64* %124 to i32*
  store i32 5, i32* %125, !mcsema_real_eip !17
  %126 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  %127 = add i64 %126, -24, !mcsema_real_eip !18
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !18
  %129 = load i64, i64* %128, !mcsema_real_eip !18
  store i64 %129, i64* %RAX_val, !mcsema_real_eip !18
  %130 = add i64 %129, 4, !mcsema_real_eip !19
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !19
  %132 = bitcast i64* %131 to i32*
  store i32 5, i32* %132, !mcsema_real_eip !19
  %133 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %134 = add i64 %133, -24, !mcsema_real_eip !20
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !20
  %136 = load i64, i64* %135, !mcsema_real_eip !20
  store i64 %136, i64* %RAX_val, !mcsema_real_eip !20
  %137 = add i64 %136, 8, !mcsema_real_eip !21
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !21
  %139 = bitcast i64* %138 to i32*
  store i32 5, i32* %139, !mcsema_real_eip !21
  %140 = load i64, i64* %RBP_val, !mcsema_real_eip !22
  %141 = add i64 %140, -24, !mcsema_real_eip !22
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !22
  %143 = load i64, i64* %142, !mcsema_real_eip !22
  store i64 %143, i64* %RAX_val, !mcsema_real_eip !22
  %144 = load i64, i64* %142, !mcsema_real_eip !23
  store i64 %144, i64* %RDX_val, !mcsema_real_eip !23
  %145 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %146 = add i64 %145, -16, !mcsema_real_eip !24
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !24
  %148 = load i64, i64* %147, !mcsema_real_eip !24
  store i64 %148, i64* %RSI_val, !mcsema_real_eip !24
  %149 = add i64 %145, -48, !mcsema_real_eip !25
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !25
  store i64 %148, i64* %150, !mcsema_real_eip !25
  %151 = load i64, i64* %RBP_val, !mcsema_real_eip !26
  %152 = add i64 %151, -8, !mcsema_real_eip !26
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !26
  %154 = bitcast i64* %153 to i32*
  %155 = load i32, i32* %154, !mcsema_real_eip !26
  %156 = zext i32 %155 to i64, !mcsema_real_eip !26
  store i64 %156, i64* %R10_val, !mcsema_real_eip !26
  %157 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %158 = add i64 %157, -40, !mcsema_real_eip !27
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !27
  %160 = bitcast i64* %159 to i32*
  store i32 %155, i32* %160, !mcsema_real_eip !27
  %161 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %162 = add i64 %161, -48, !mcsema_real_eip !28
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !28
  %164 = load i64, i64* %163, !mcsema_real_eip !28
  store i64 %164, i64* %RSI_val, !mcsema_real_eip !28
  %165 = add i64 %161, -40, !mcsema_real_eip !29
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !29
  %167 = bitcast i64* %166 to i32*
  %168 = load i32, i32* %167, !mcsema_real_eip !29
  %169 = zext i32 %168 to i64, !mcsema_real_eip !29
  store i64 %169, i64* %R10_val, !mcsema_real_eip !29
  %170 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  %171 = add i64 %170, -56, !mcsema_real_eip !30
  %172 = inttoptr i64 %171 to i64*, !mcsema_real_eip !30
  %173 = load i64, i64* %RDI_val, !mcsema_real_eip !30
  store i64 %173, i64* %172, !mcsema_real_eip !30
  %174 = load i64, i64* %RSI_val, !mcsema_real_eip !31
  store i64 %174, i64* %RDI_val, !mcsema_real_eip !31
  %175 = load i64, i64* %R10_val, !mcsema_real_eip !32
  %176 = and i64 %175, 4294967295
  store i64 %176, i64* %RSI_val, !mcsema_real_eip !32
  %177 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %178 = add i64 %177, -56, !mcsema_real_eip !33
  %179 = inttoptr i64 %178 to i64*, !mcsema_real_eip !33
  %180 = load i64, i64* %179, !mcsema_real_eip !33
  store i64 %180, i64* %R11_val, !mcsema_real_eip !33
  %181 = add i64 %177, -64, !mcsema_real_eip !34
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !34
  %183 = load i64, i64* %RDX_val, !mcsema_real_eip !34
  store i64 %183, i64* %182, !mcsema_real_eip !34
  %184 = load i64, i64* %R11_val, !mcsema_real_eip !35
  store i64 %184, i64* %RDX_val, !mcsema_real_eip !35
  %185 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  %186 = add i64 %185, -68, !mcsema_real_eip !36
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !36
  %188 = load i64, i64* %RCX_val, !mcsema_real_eip !36
  %189 = trunc i64 %188 to i32, !mcsema_real_eip !36
  %190 = bitcast i64* %187 to i32*
  store i32 %189, i32* %190, !mcsema_real_eip !36
  %191 = load i64, i64* %RAX_val, !mcsema_real_eip !37
  store i64 %191, i64* %RCX_val, !mcsema_real_eip !37
  %192 = load i64, i64* %RSP_val, !mcsema_real_eip !38
  %193 = inttoptr i64 %192 to i64*, !mcsema_real_eip !38
  %194 = bitcast i64* %193 to i32*
  store i32 3, i32* %194, !mcsema_real_eip !38
  %195 = load i64, i64* %R11_val, !mcsema_real_eip !39
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !39
  %197 = load i64, i64* %196, !mcsema_real_eip !39
  store i64 %197, i64* %RAX_val, !mcsema_real_eip !39
  %198 = load i64, i64* %RSP_val, !mcsema_real_eip !40
  %199 = add i64 %198, 8, !mcsema_real_eip !40
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !40
  store i64 %197, i64* %200, !mcsema_real_eip !40
  %201 = load i64, i64* %R11_val, !mcsema_real_eip !41
  %202 = add i64 %201, 8, !mcsema_real_eip !41
  %203 = inttoptr i64 %202 to i64*, !mcsema_real_eip !41
  %204 = bitcast i64* %203 to i32*
  %205 = load i32, i32* %204, !mcsema_real_eip !41
  %206 = zext i32 %205 to i64, !mcsema_real_eip !41
  store i64 %206, i64* %R10_val, !mcsema_real_eip !41
  %207 = load i64, i64* %RSP_val, !mcsema_real_eip !42
  %208 = add i64 %207, 16, !mcsema_real_eip !42
  %209 = inttoptr i64 %208 to i64*, !mcsema_real_eip !42
  %210 = bitcast i64* %209 to i32*
  store i32 %205, i32* %210, !mcsema_real_eip !42
  %211 = load i64, i64* %RSP_val, !mcsema_real_eip !43
  %212 = add i64 %211, 24, !mcsema_real_eip !43
  %213 = inttoptr i64 %212 to i64*, !mcsema_real_eip !43
  %214 = load i64, i64* %R11_val, !mcsema_real_eip !43
  store i64 %214, i64* %213, !mcsema_real_eip !43
  %215 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  %216 = add i64 %215, -64, !mcsema_real_eip !44
  %217 = inttoptr i64 %216 to i64*, !mcsema_real_eip !44
  %218 = load i64, i64* %217, !mcsema_real_eip !44
  store i64 %218, i64* %RAX_val, !mcsema_real_eip !44
  %219 = load i64, i64* %RSP_val, !mcsema_real_eip !45
  %220 = add i64 %219, 32, !mcsema_real_eip !45
  %221 = inttoptr i64 %220 to i64*, !mcsema_real_eip !45
  store i64 %218, i64* %221, !mcsema_real_eip !45
  %222 = load i64, i64* %RSP_val, !mcsema_real_eip !46
  %223 = add i64 %222, -8
  %224 = inttoptr i64 %223 to i64*, !mcsema_real_eip !46
  store i64 -4981261766360305936, i64* %224, !mcsema_real_eip !46
  store i64 %223, i64* %RSP_val, !mcsema_real_eip !46
  %225 = load i64, i64* %RAX_val, !mcsema_real_eip !46
  store i64 %225, i64* %RAX, !mcsema_real_eip !46
  %226 = load i64, i64* %RBX_val, !mcsema_real_eip !46
  store i64 %226, i64* %RBX, !mcsema_real_eip !46
  %227 = load i64, i64* %RCX_val, !mcsema_real_eip !46
  store i64 %227, i64* %RCX, !mcsema_real_eip !46
  %228 = load i64, i64* %RDX_val, !mcsema_real_eip !46
  store i64 %228, i64* %RDX, !mcsema_real_eip !46
  %229 = load i64, i64* %RSI_val, !mcsema_real_eip !46
  store i64 %229, i64* %RSI, !mcsema_real_eip !46
  %230 = load i64, i64* %RDI_val, !mcsema_real_eip !46
  store i64 %230, i64* %RDI, !mcsema_real_eip !46
  %231 = load i64, i64* %RSP_val, !mcsema_real_eip !46
  store i64 %231, i64* %RSP, !mcsema_real_eip !46
  %232 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  store i64 %232, i64* %RBP, !mcsema_real_eip !46
  %233 = load i64, i64* %R8_val, !mcsema_real_eip !46
  store i64 %233, i64* %R8, !mcsema_real_eip !46
  %234 = load i64, i64* %R9_val, !mcsema_real_eip !46
  store i64 %234, i64* %R9, !mcsema_real_eip !46
  %235 = load i64, i64* %R10_val, !mcsema_real_eip !46
  store i64 %235, i64* %R10, !mcsema_real_eip !46
  %236 = load i64, i64* %R11_val, !mcsema_real_eip !46
  store i64 %236, i64* %R11, !mcsema_real_eip !46
  %237 = load i64, i64* %R12_val, !mcsema_real_eip !46
  store i64 %237, i64* %R12, !mcsema_real_eip !46
  %238 = load i64, i64* %R13_val, !mcsema_real_eip !46
  store i64 %238, i64* %R13, !mcsema_real_eip !46
  %239 = load i64, i64* %R14_val, !mcsema_real_eip !46
  store i64 %239, i64* %R14, !mcsema_real_eip !46
  %240 = load i64, i64* %R15_val, !mcsema_real_eip !46
  store i64 %240, i64* %R15, !mcsema_real_eip !46
  %241 = load i64, i64* %RIP_val, !mcsema_real_eip !46
  store i64 %241, i64* %RIP, !mcsema_real_eip !46
  %242 = load i1, i1* %CF_val, !mcsema_real_eip !46
  store i1 %242, i1* %CF, align 1, !mcsema_real_eip !46
  %243 = load i1, i1* %PF_val, !mcsema_real_eip !46
  store i1 %243, i1* %PF, align 1, !mcsema_real_eip !46
  %244 = load i1, i1* %AF_val, !mcsema_real_eip !46
  store i1 %244, i1* %AF, align 1, !mcsema_real_eip !46
  %245 = load i1, i1* %ZF_val, !mcsema_real_eip !46
  store i1 %245, i1* %ZF, align 1, !mcsema_real_eip !46
  %246 = load i1, i1* %SF_val, !mcsema_real_eip !46
  store i1 %246, i1* %SF, align 1, !mcsema_real_eip !46
  %247 = load i1, i1* %OF_val, !mcsema_real_eip !46
  store i1 %247, i1* %OF, align 1, !mcsema_real_eip !46
  %248 = load i1, i1* %DF_val, !mcsema_real_eip !46
  store i1 %248, i1* %DF, align 1, !mcsema_real_eip !46
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !46
  %249 = load i1, i1* %FPU_B_val, !mcsema_real_eip !46
  store i1 %249, i1* %FPU_B, align 1, !mcsema_real_eip !46
  %250 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !46
  store i1 %250, i1* %FPU_C3, align 1, !mcsema_real_eip !46
  %251 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !46
  store i3 %251, i3* %FPU_TOP, align 1, !mcsema_real_eip !46
  %252 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !46
  store i1 %252, i1* %FPU_C2, align 1, !mcsema_real_eip !46
  %253 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !46
  store i1 %253, i1* %FPU_C1, align 1, !mcsema_real_eip !46
  %254 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !46
  store i1 %254, i1* %FPU_C0, align 1, !mcsema_real_eip !46
  %255 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !46
  store i1 %255, i1* %FPU_ES, align 1, !mcsema_real_eip !46
  %256 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !46
  store i1 %256, i1* %FPU_SF, align 1, !mcsema_real_eip !46
  %257 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !46
  store i1 %257, i1* %FPU_PE, align 1, !mcsema_real_eip !46
  %258 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !46
  store i1 %258, i1* %FPU_UE, align 1, !mcsema_real_eip !46
  %259 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !46
  store i1 %259, i1* %FPU_OE, align 1, !mcsema_real_eip !46
  %260 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !46
  store i1 %260, i1* %FPU_ZE, align 1, !mcsema_real_eip !46
  %261 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !46
  store i1 %261, i1* %FPU_DE, align 1, !mcsema_real_eip !46
  %262 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !46
  store i1 %262, i1* %FPU_IE, align 1, !mcsema_real_eip !46
  %263 = load i1, i1* %FPU_X_val, !mcsema_real_eip !46
  store i1 %263, i1* %FPU_X, align 1, !mcsema_real_eip !46
  %264 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !46
  store i2 %264, i2* %FPU_RC, align 1, !mcsema_real_eip !46
  %265 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !46
  store i2 %265, i2* %FPU_PC, align 1, !mcsema_real_eip !46
  %266 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !46
  store i1 %266, i1* %FPU_PM, align 1, !mcsema_real_eip !46
  %267 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !46
  store i1 %267, i1* %FPU_UM, align 1, !mcsema_real_eip !46
  %268 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !46
  store i1 %268, i1* %FPU_OM, align 1, !mcsema_real_eip !46
  %269 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !46
  store i1 %269, i1* %FPU_ZM, align 1, !mcsema_real_eip !46
  %270 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !46
  store i1 %270, i1* %FPU_DM, align 1, !mcsema_real_eip !46
  %271 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !46
  store i1 %271, i1* %FPU_IM, align 1, !mcsema_real_eip !46
  %272 = load i64, i64* %53, align 4
  store i64 %272, i64* %52, align 4
  %273 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !46
  store i16 %273, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !46
  %274 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !46
  store i64 %274, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !46
  %275 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !46
  store i16 %275, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !46
  %276 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !46
  store i64 %276, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !46
  %277 = load i128, i128* %XMM0_val, !mcsema_real_eip !46
  store i128 %277, i128* %XMM0, align 1, !mcsema_real_eip !46
  %278 = load i128, i128* %XMM1_val, !mcsema_real_eip !46
  store i128 %278, i128* %XMM1, align 1, !mcsema_real_eip !46
  %279 = load i128, i128* %XMM2_val, !mcsema_real_eip !46
  store i128 %279, i128* %XMM2, align 1, !mcsema_real_eip !46
  %280 = load i128, i128* %XMM3_val, !mcsema_real_eip !46
  store i128 %280, i128* %XMM3, align 1, !mcsema_real_eip !46
  %281 = load i128, i128* %XMM4_val, !mcsema_real_eip !46
  store i128 %281, i128* %XMM4, align 1, !mcsema_real_eip !46
  %282 = load i128, i128* %XMM5_val, !mcsema_real_eip !46
  store i128 %282, i128* %XMM5, align 1, !mcsema_real_eip !46
  %283 = load i128, i128* %XMM6_val, !mcsema_real_eip !46
  store i128 %283, i128* %XMM6, align 1, !mcsema_real_eip !46
  %284 = load i128, i128* %XMM7_val, !mcsema_real_eip !46
  store i128 %284, i128* %XMM7, align 1, !mcsema_real_eip !46
  %285 = load i128, i128* %XMM8_val, !mcsema_real_eip !46
  store i128 %285, i128* %XMM8, align 1, !mcsema_real_eip !46
  %286 = load i128, i128* %XMM9_val, !mcsema_real_eip !46
  store i128 %286, i128* %XMM9, align 1, !mcsema_real_eip !46
  %287 = load i128, i128* %XMM10_val, !mcsema_real_eip !46
  store i128 %287, i128* %XMM10, align 1, !mcsema_real_eip !46
  %288 = load i128, i128* %XMM11_val, !mcsema_real_eip !46
  store i128 %288, i128* %XMM11, align 1, !mcsema_real_eip !46
  %289 = load i128, i128* %XMM12_val, !mcsema_real_eip !46
  store i128 %289, i128* %XMM12, align 1, !mcsema_real_eip !46
  %290 = load i128, i128* %XMM13_val, !mcsema_real_eip !46
  store i128 %290, i128* %XMM13, align 1, !mcsema_real_eip !46
  %291 = load i128, i128* %XMM14_val, !mcsema_real_eip !46
  store i128 %291, i128* %XMM14, align 1, !mcsema_real_eip !46
  %292 = load i128, i128* %XMM15_val, !mcsema_real_eip !46
  store i128 %292, i128* %XMM15, align 1, !mcsema_real_eip !46
  %293 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !46
  store i64 %293, i64* %STACK_BASE, align 1, !mcsema_real_eip !46
  %294 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !46
  store i64 %294, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !46
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !46
  %295 = load i64, i64* %RAX, !mcsema_real_eip !46
  store i64 %295, i64* %RAX_val, !mcsema_real_eip !46
  %296 = load i64, i64* %RBX, !mcsema_real_eip !46
  store i64 %296, i64* %RBX_val, !mcsema_real_eip !46
  %297 = load i64, i64* %RCX, !mcsema_real_eip !46
  store i64 %297, i64* %RCX_val, !mcsema_real_eip !46
  %298 = load i64, i64* %RDX, !mcsema_real_eip !46
  store i64 %298, i64* %RDX_val, !mcsema_real_eip !46
  %299 = load i64, i64* %RSI, !mcsema_real_eip !46
  store i64 %299, i64* %RSI_val, !mcsema_real_eip !46
  %300 = load i64, i64* %RDI, !mcsema_real_eip !46
  store i64 %300, i64* %RDI_val, !mcsema_real_eip !46
  %301 = load i64, i64* %RSP, !mcsema_real_eip !46
  store i64 %301, i64* %RSP_val, !mcsema_real_eip !46
  %302 = load i64, i64* %RBP, !mcsema_real_eip !46
  store i64 %302, i64* %RBP_val, !mcsema_real_eip !46
  %303 = load i64, i64* %R8, !mcsema_real_eip !46
  store i64 %303, i64* %R8_val, !mcsema_real_eip !46
  %304 = load i64, i64* %R9, !mcsema_real_eip !46
  store i64 %304, i64* %R9_val, !mcsema_real_eip !46
  %305 = load i64, i64* %R10, !mcsema_real_eip !46
  store i64 %305, i64* %R10_val, !mcsema_real_eip !46
  %306 = load i64, i64* %R11, !mcsema_real_eip !46
  store i64 %306, i64* %R11_val, !mcsema_real_eip !46
  %307 = load i64, i64* %R12, !mcsema_real_eip !46
  store i64 %307, i64* %R12_val, !mcsema_real_eip !46
  %308 = load i64, i64* %R13, !mcsema_real_eip !46
  store i64 %308, i64* %R13_val, !mcsema_real_eip !46
  %309 = load i64, i64* %R14, !mcsema_real_eip !46
  store i64 %309, i64* %R14_val, !mcsema_real_eip !46
  %310 = load i64, i64* %R15, !mcsema_real_eip !46
  store i64 %310, i64* %R15_val, !mcsema_real_eip !46
  %311 = load i64, i64* %RIP, !mcsema_real_eip !46
  store i64 %311, i64* %RIP_val, !mcsema_real_eip !46
  %312 = load i1, i1* %CF, align 1, !mcsema_real_eip !46
  store i1 %312, i1* %CF_val, !mcsema_real_eip !46
  %313 = load i1, i1* %PF, align 1, !mcsema_real_eip !46
  store i1 %313, i1* %PF_val, !mcsema_real_eip !46
  %314 = load i1, i1* %AF, align 1, !mcsema_real_eip !46
  store i1 %314, i1* %AF_val, !mcsema_real_eip !46
  %315 = load i1, i1* %ZF, align 1, !mcsema_real_eip !46
  store i1 %315, i1* %ZF_val, !mcsema_real_eip !46
  %316 = load i1, i1* %SF, align 1, !mcsema_real_eip !46
  store i1 %316, i1* %SF_val, !mcsema_real_eip !46
  %317 = load i1, i1* %OF, align 1, !mcsema_real_eip !46
  store i1 %317, i1* %OF_val, !mcsema_real_eip !46
  %318 = load i1, i1* %DF, align 1, !mcsema_real_eip !46
  store i1 %318, i1* %DF_val, !mcsema_real_eip !46
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !46
  %319 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !46
  store i1 %319, i1* %FPU_B_val, !mcsema_real_eip !46
  %320 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !46
  store i1 %320, i1* %FPU_C3_val, !mcsema_real_eip !46
  %321 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !46
  store i3 %321, i3* %FPU_TOP_val, !mcsema_real_eip !46
  %322 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !46
  store i1 %322, i1* %FPU_C2_val, !mcsema_real_eip !46
  %323 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !46
  store i1 %323, i1* %FPU_C1_val, !mcsema_real_eip !46
  %324 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !46
  store i1 %324, i1* %FPU_C0_val, !mcsema_real_eip !46
  %325 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !46
  store i1 %325, i1* %FPU_ES_val, !mcsema_real_eip !46
  %326 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !46
  store i1 %326, i1* %FPU_SF_val, !mcsema_real_eip !46
  %327 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !46
  store i1 %327, i1* %FPU_PE_val, !mcsema_real_eip !46
  %328 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !46
  store i1 %328, i1* %FPU_UE_val, !mcsema_real_eip !46
  %329 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !46
  store i1 %329, i1* %FPU_OE_val, !mcsema_real_eip !46
  %330 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !46
  store i1 %330, i1* %FPU_ZE_val, !mcsema_real_eip !46
  %331 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !46
  store i1 %331, i1* %FPU_DE_val, !mcsema_real_eip !46
  %332 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !46
  store i1 %332, i1* %FPU_IE_val, !mcsema_real_eip !46
  %333 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !46
  store i1 %333, i1* %FPU_X_val, !mcsema_real_eip !46
  %334 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !46
  store i2 %334, i2* %FPU_RC_val, !mcsema_real_eip !46
  %335 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !46
  store i2 %335, i2* %FPU_PC_val, !mcsema_real_eip !46
  %336 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !46
  store i1 %336, i1* %FPU_PM_val, !mcsema_real_eip !46
  %337 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !46
  store i1 %337, i1* %FPU_UM_val, !mcsema_real_eip !46
  %338 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !46
  store i1 %338, i1* %FPU_OM_val, !mcsema_real_eip !46
  %339 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !46
  store i1 %339, i1* %FPU_ZM_val, !mcsema_real_eip !46
  %340 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !46
  store i1 %340, i1* %FPU_DM_val, !mcsema_real_eip !46
  %341 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !46
  store i1 %341, i1* %FPU_IM_val, !mcsema_real_eip !46
  %342 = load i64, i64* %52, align 4
  store i64 %342, i64* %53, align 4
  %343 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !46
  store i16 %343, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !46
  %344 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !46
  store i64 %344, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !46
  %345 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !46
  store i16 %345, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !46
  %346 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !46
  store i64 %346, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !46
  %347 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !46
  store i128 %347, i128* %XMM0_val, !mcsema_real_eip !46
  %348 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !46
  store i128 %348, i128* %XMM1_val, !mcsema_real_eip !46
  %349 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !46
  store i128 %349, i128* %XMM2_val, !mcsema_real_eip !46
  %350 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !46
  store i128 %350, i128* %XMM3_val, !mcsema_real_eip !46
  %351 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !46
  store i128 %351, i128* %XMM4_val, !mcsema_real_eip !46
  %352 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !46
  store i128 %352, i128* %XMM5_val, !mcsema_real_eip !46
  %353 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !46
  store i128 %353, i128* %XMM6_val, !mcsema_real_eip !46
  %354 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !46
  store i128 %354, i128* %XMM7_val, !mcsema_real_eip !46
  %355 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !46
  store i128 %355, i128* %XMM8_val, !mcsema_real_eip !46
  %356 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !46
  store i128 %356, i128* %XMM9_val, !mcsema_real_eip !46
  %357 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !46
  store i128 %357, i128* %XMM10_val, !mcsema_real_eip !46
  %358 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !46
  store i128 %358, i128* %XMM11_val, !mcsema_real_eip !46
  %359 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !46
  store i128 %359, i128* %XMM12_val, !mcsema_real_eip !46
  %360 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !46
  store i128 %360, i128* %XMM13_val, !mcsema_real_eip !46
  %361 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !46
  store i128 %361, i128* %XMM14_val, !mcsema_real_eip !46
  %362 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !46
  store i128 %362, i128* %XMM15_val, !mcsema_real_eip !46
  %363 = load i64, i64* %STACK_BASE, !mcsema_real_eip !46
  store i64 %363, i64* %STACK_BASE_val, !mcsema_real_eip !46
  %364 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !46
  store i64 %364, i64* %STACK_LIMIT_val, !mcsema_real_eip !46
  %365 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  %366 = add i64 %365, -32, !mcsema_real_eip !47
  %367 = inttoptr i64 %366 to i64*, !mcsema_real_eip !47
  %368 = load i64, i64* %RAX_val, !mcsema_real_eip !47
  store i64 %368, i64* %367, !mcsema_real_eip !47
  %369 = load i64, i64* %RBP_val, !mcsema_real_eip !48
  %370 = add i64 %369, -32, !mcsema_real_eip !48
  %371 = inttoptr i64 %370 to i64*, !mcsema_real_eip !48
  %372 = load i64, i64* %371, !mcsema_real_eip !48
  store i64 %372, i64* %RAX_val, !mcsema_real_eip !48
  %373 = inttoptr i64 %372 to i64*, !mcsema_real_eip !49
  %374 = bitcast i64* %373 to i32*
  %375 = load i32, i32* %374, !mcsema_real_eip !49
  %376 = zext i32 %375 to i64, !mcsema_real_eip !49
  store i64 %376, i64* %RSI_val, !mcsema_real_eip !49
  %377 = load i64, i64* %RBP_val, !mcsema_real_eip !50
  %378 = add i64 %377, -32, !mcsema_real_eip !50
  %379 = inttoptr i64 %378 to i64*, !mcsema_real_eip !50
  %380 = load i64, i64* %379, !mcsema_real_eip !50
  store i64 %380, i64* %RAX_val, !mcsema_real_eip !50
  %381 = add i64 %380, 4, !mcsema_real_eip !51
  %382 = inttoptr i64 %381 to i64*, !mcsema_real_eip !51
  %383 = bitcast i64* %382 to i32*
  %384 = load i32, i32* %383, !mcsema_real_eip !51
  %385 = load i64, i64* %RSI_val, !mcsema_real_eip !51
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
  %404 = load i64, i64* %RBP_val, !mcsema_real_eip !52
  %405 = add i64 %404, -32, !mcsema_real_eip !52
  %406 = inttoptr i64 %405 to i64*, !mcsema_real_eip !52
  %407 = load i64, i64* %406, !mcsema_real_eip !52
  store i64 %407, i64* %RAX_val, !mcsema_real_eip !52
  %408 = add i64 %407, 8, !mcsema_real_eip !53
  %409 = inttoptr i64 %408 to i64*, !mcsema_real_eip !53
  %410 = bitcast i64* %409 to i32*
  %411 = load i32, i32* %410, !mcsema_real_eip !53
  %412 = load i64, i64* %RSI_val, !mcsema_real_eip !53
  %413 = trunc i64 %412 to i32, !mcsema_real_eip !53
  %414 = add i32 %413, %411
  %415 = zext i32 %414 to i64, !mcsema_real_eip !53
  store i64 %415, i64* %RSI_val, !mcsema_real_eip !53
  store i64 %415, i64* %RAX_val, !mcsema_real_eip !54
  %416 = load i64, i64* %RSP_val, !mcsema_real_eip !55
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
  %432 = load i64, i64* %431, !mcsema_real_eip !56
  store i64 %432, i64* %RBP_val, !mcsema_real_eip !56
  %433 = add i64 %417, 16, !mcsema_real_eip !57
  store i64 %433, i64* %RSP_val, !mcsema_real_eip !57
  %434 = load i64, i64* %RAX_val, !mcsema_real_eip !57
  store i64 %434, i64* %RAX, !mcsema_real_eip !57
  %435 = load i64, i64* %RBX_val, !mcsema_real_eip !57
  store i64 %435, i64* %RBX, !mcsema_real_eip !57
  %436 = load i64, i64* %RCX_val, !mcsema_real_eip !57
  store i64 %436, i64* %RCX, !mcsema_real_eip !57
  %437 = load i64, i64* %RDX_val, !mcsema_real_eip !57
  store i64 %437, i64* %RDX, !mcsema_real_eip !57
  %438 = load i64, i64* %RSI_val, !mcsema_real_eip !57
  store i64 %438, i64* %RSI, !mcsema_real_eip !57
  %439 = load i64, i64* %RDI_val, !mcsema_real_eip !57
  store i64 %439, i64* %RDI, !mcsema_real_eip !57
  %440 = load i64, i64* %RSP_val, !mcsema_real_eip !57
  store i64 %440, i64* %RSP, !mcsema_real_eip !57
  %441 = load i64, i64* %RBP_val, !mcsema_real_eip !57
  store i64 %441, i64* %RBP, !mcsema_real_eip !57
  %442 = load i64, i64* %R8_val, !mcsema_real_eip !57
  store i64 %442, i64* %R8, !mcsema_real_eip !57
  %443 = load i64, i64* %R9_val, !mcsema_real_eip !57
  store i64 %443, i64* %R9, !mcsema_real_eip !57
  %444 = load i64, i64* %R10_val, !mcsema_real_eip !57
  store i64 %444, i64* %R10, !mcsema_real_eip !57
  %445 = load i64, i64* %R11_val, !mcsema_real_eip !57
  store i64 %445, i64* %R11, !mcsema_real_eip !57
  %446 = load i64, i64* %R12_val, !mcsema_real_eip !57
  store i64 %446, i64* %R12, !mcsema_real_eip !57
  %447 = load i64, i64* %R13_val, !mcsema_real_eip !57
  store i64 %447, i64* %R13, !mcsema_real_eip !57
  %448 = load i64, i64* %R14_val, !mcsema_real_eip !57
  store i64 %448, i64* %R14, !mcsema_real_eip !57
  %449 = load i64, i64* %R15_val, !mcsema_real_eip !57
  store i64 %449, i64* %R15, !mcsema_real_eip !57
  %450 = load i64, i64* %RIP_val, !mcsema_real_eip !57
  store i64 %450, i64* %RIP, !mcsema_real_eip !57
  %451 = load i1, i1* %CF_val, !mcsema_real_eip !57
  store i1 %451, i1* %CF, align 1, !mcsema_real_eip !57
  %452 = load i1, i1* %PF_val, !mcsema_real_eip !57
  store i1 %452, i1* %PF, align 1, !mcsema_real_eip !57
  %453 = load i1, i1* %AF_val, !mcsema_real_eip !57
  store i1 %453, i1* %AF, align 1, !mcsema_real_eip !57
  %454 = load i1, i1* %ZF_val, !mcsema_real_eip !57
  store i1 %454, i1* %ZF, align 1, !mcsema_real_eip !57
  %455 = load i1, i1* %SF_val, !mcsema_real_eip !57
  store i1 %455, i1* %SF, align 1, !mcsema_real_eip !57
  %456 = load i1, i1* %OF_val, !mcsema_real_eip !57
  store i1 %456, i1* %OF, align 1, !mcsema_real_eip !57
  %457 = load i1, i1* %DF_val, !mcsema_real_eip !57
  store i1 %457, i1* %DF, align 1, !mcsema_real_eip !57
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !57
  %458 = load i1, i1* %FPU_B_val, !mcsema_real_eip !57
  store i1 %458, i1* %FPU_B, align 1, !mcsema_real_eip !57
  %459 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !57
  store i1 %459, i1* %FPU_C3, align 1, !mcsema_real_eip !57
  %460 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !57
  store i3 %460, i3* %FPU_TOP, align 1, !mcsema_real_eip !57
  %461 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !57
  store i1 %461, i1* %FPU_C2, align 1, !mcsema_real_eip !57
  %462 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !57
  store i1 %462, i1* %FPU_C1, align 1, !mcsema_real_eip !57
  %463 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !57
  store i1 %463, i1* %FPU_C0, align 1, !mcsema_real_eip !57
  %464 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !57
  store i1 %464, i1* %FPU_ES, align 1, !mcsema_real_eip !57
  %465 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !57
  store i1 %465, i1* %FPU_SF, align 1, !mcsema_real_eip !57
  %466 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !57
  store i1 %466, i1* %FPU_PE, align 1, !mcsema_real_eip !57
  %467 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !57
  store i1 %467, i1* %FPU_UE, align 1, !mcsema_real_eip !57
  %468 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !57
  store i1 %468, i1* %FPU_OE, align 1, !mcsema_real_eip !57
  %469 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !57
  store i1 %469, i1* %FPU_ZE, align 1, !mcsema_real_eip !57
  %470 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !57
  store i1 %470, i1* %FPU_DE, align 1, !mcsema_real_eip !57
  %471 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !57
  store i1 %471, i1* %FPU_IE, align 1, !mcsema_real_eip !57
  %472 = load i1, i1* %FPU_X_val, !mcsema_real_eip !57
  store i1 %472, i1* %FPU_X, align 1, !mcsema_real_eip !57
  %473 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !57
  store i2 %473, i2* %FPU_RC, align 1, !mcsema_real_eip !57
  %474 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !57
  store i2 %474, i2* %FPU_PC, align 1, !mcsema_real_eip !57
  %475 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !57
  store i1 %475, i1* %FPU_PM, align 1, !mcsema_real_eip !57
  %476 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !57
  store i1 %476, i1* %FPU_UM, align 1, !mcsema_real_eip !57
  %477 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !57
  store i1 %477, i1* %FPU_OM, align 1, !mcsema_real_eip !57
  %478 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !57
  store i1 %478, i1* %FPU_ZM, align 1, !mcsema_real_eip !57
  %479 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !57
  store i1 %479, i1* %FPU_DM, align 1, !mcsema_real_eip !57
  %480 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !57
  store i1 %480, i1* %FPU_IM, align 1, !mcsema_real_eip !57
  %481 = load i64, i64* %53, align 4
  store i64 %481, i64* %52, align 4
  %482 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !57
  store i16 %482, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !57
  %483 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !57
  store i64 %483, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !57
  %484 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !57
  store i16 %484, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !57
  %485 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !57
  store i64 %485, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !57
  %486 = load i128, i128* %XMM0_val, !mcsema_real_eip !57
  store i128 %486, i128* %XMM0, align 1, !mcsema_real_eip !57
  %487 = load i128, i128* %XMM1_val, !mcsema_real_eip !57
  store i128 %487, i128* %XMM1, align 1, !mcsema_real_eip !57
  %488 = load i128, i128* %XMM2_val, !mcsema_real_eip !57
  store i128 %488, i128* %XMM2, align 1, !mcsema_real_eip !57
  %489 = load i128, i128* %XMM3_val, !mcsema_real_eip !57
  store i128 %489, i128* %XMM3, align 1, !mcsema_real_eip !57
  %490 = load i128, i128* %XMM4_val, !mcsema_real_eip !57
  store i128 %490, i128* %XMM4, align 1, !mcsema_real_eip !57
  %491 = load i128, i128* %XMM5_val, !mcsema_real_eip !57
  store i128 %491, i128* %XMM5, align 1, !mcsema_real_eip !57
  %492 = load i128, i128* %XMM6_val, !mcsema_real_eip !57
  store i128 %492, i128* %XMM6, align 1, !mcsema_real_eip !57
  %493 = load i128, i128* %XMM7_val, !mcsema_real_eip !57
  store i128 %493, i128* %XMM7, align 1, !mcsema_real_eip !57
  %494 = load i128, i128* %XMM8_val, !mcsema_real_eip !57
  store i128 %494, i128* %XMM8, align 1, !mcsema_real_eip !57
  %495 = load i128, i128* %XMM9_val, !mcsema_real_eip !57
  store i128 %495, i128* %XMM9, align 1, !mcsema_real_eip !57
  %496 = load i128, i128* %XMM10_val, !mcsema_real_eip !57
  store i128 %496, i128* %XMM10, align 1, !mcsema_real_eip !57
  %497 = load i128, i128* %XMM11_val, !mcsema_real_eip !57
  store i128 %497, i128* %XMM11, align 1, !mcsema_real_eip !57
  %498 = load i128, i128* %XMM12_val, !mcsema_real_eip !57
  store i128 %498, i128* %XMM12, align 1, !mcsema_real_eip !57
  %499 = load i128, i128* %XMM13_val, !mcsema_real_eip !57
  store i128 %499, i128* %XMM13, align 1, !mcsema_real_eip !57
  %500 = load i128, i128* %XMM14_val, !mcsema_real_eip !57
  store i128 %500, i128* %XMM14, align 1, !mcsema_real_eip !57
  %501 = load i128, i128* %XMM15_val, !mcsema_real_eip !57
  store i128 %501, i128* %XMM15, align 1, !mcsema_real_eip !57
  %502 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !57
  store i64 %502, i64* %STACK_BASE, align 1, !mcsema_real_eip !57
  %503 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !57
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
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !58
  %1 = load i64, i64* %RAX, !mcsema_real_eip !58
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !58
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !58
  %2 = load i64, i64* %RBX, !mcsema_real_eip !58
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !58
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !58
  %3 = load i64, i64* %RCX, !mcsema_real_eip !58
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !58
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !58
  %4 = load i64, i64* %RDX, !mcsema_real_eip !58
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !58
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !58
  %5 = load i64, i64* %RSI, !mcsema_real_eip !58
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !58
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !58
  %6 = load i64, i64* %RDI, !mcsema_real_eip !58
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !58
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !58
  %7 = load i64, i64* %RSP, !mcsema_real_eip !58
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !58
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !58
  %8 = load i64, i64* %RBP, !mcsema_real_eip !58
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !58
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !58
  %9 = load i64, i64* %R8, !mcsema_real_eip !58
  store i64 %9, i64* %R8_val, !mcsema_real_eip !58
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !58
  %10 = load i64, i64* %R9, !mcsema_real_eip !58
  store i64 %10, i64* %R9_val, !mcsema_real_eip !58
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !58
  %11 = load i64, i64* %R10, !mcsema_real_eip !58
  store i64 %11, i64* %R10_val, !mcsema_real_eip !58
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !58
  %12 = load i64, i64* %R11, !mcsema_real_eip !58
  store i64 %12, i64* %R11_val, !mcsema_real_eip !58
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !58
  %13 = load i64, i64* %R12, !mcsema_real_eip !58
  store i64 %13, i64* %R12_val, !mcsema_real_eip !58
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !58
  %14 = load i64, i64* %R13, !mcsema_real_eip !58
  store i64 %14, i64* %R13_val, !mcsema_real_eip !58
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !58
  %15 = load i64, i64* %R14, !mcsema_real_eip !58
  store i64 %15, i64* %R14_val, !mcsema_real_eip !58
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !58
  %16 = load i64, i64* %R15, !mcsema_real_eip !58
  store i64 %16, i64* %R15_val, !mcsema_real_eip !58
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !58
  %17 = load i64, i64* %RIP, !mcsema_real_eip !58
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !58
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !58
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !58
  store i1 %18, i1* %CF_val, !mcsema_real_eip !58
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !58
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !58
  store i1 %19, i1* %PF_val, !mcsema_real_eip !58
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !58
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !58
  store i1 %20, i1* %AF_val, !mcsema_real_eip !58
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !58
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !58
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !58
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !58
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !58
  store i1 %22, i1* %SF_val, !mcsema_real_eip !58
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !58
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !58
  store i1 %23, i1* %OF_val, !mcsema_real_eip !58
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !58
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !58
  store i1 %24, i1* %DF_val, !mcsema_real_eip !58
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !58
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !58
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !58
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !58
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !58
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !58
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !58
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !58
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !58
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !58
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !58
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !58
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !58
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !58
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !58
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !58
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !58
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !58
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !58
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !58
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !58
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !58
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !58
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !58
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !58
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !58
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !58
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !58
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !58
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !58
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !58
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !58
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !58
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !58
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !58
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !58
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !58
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !58
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !58
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !58
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !58
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !58
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !58
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !58
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !58
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !58
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !58
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !58
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !58
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !58
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !58
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !58
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !58
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !58
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !58
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !58
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !58
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !58
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !58
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !58
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !58
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !58
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !58
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !58
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !58
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !58
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !58
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !58
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !58
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !58
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !58
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !58
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !58
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !58
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !58
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !58
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !58
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !58
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !58
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !58
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !58
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !58
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !58
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !58
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !58
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !58
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !58
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !58
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !58
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !58
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !58
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !58
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !58
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !58
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !58
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !58
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !58
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !58
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !58
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !58
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !58
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !58
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !58
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !58
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !58
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !58
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !58
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !58
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !58
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !58
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !58
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !58
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !58
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !58
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !58
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !58
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !58
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !58
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !58
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !58
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !58
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !58
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !58
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !58
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !58
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !58
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !58
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !58
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !58
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !58
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !58
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !58
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !58
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !58
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !58
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !58
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !58
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !58
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !58
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !58
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !58
  %78 = load i64, i64* %RSP_val, !mcsema_real_eip !58
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !58
  store i64 %77, i64* %80, !mcsema_real_eip !58
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !59
  %81 = load i64, i64* %R15_val, !mcsema_real_eip !60
  %82 = add i64 %78, -16
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !60
  store i64 %81, i64* %83, !mcsema_real_eip !60
  %84 = load i64, i64* %R14_val, !mcsema_real_eip !61
  %85 = add i64 %78, -24
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !61
  store i64 %84, i64* %86, !mcsema_real_eip !61
  %87 = load i64, i64* %RBX_val, !mcsema_real_eip !62
  %88 = add i64 %78, -32
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !62
  store i64 %87, i64* %89, !mcsema_real_eip !62
  %90 = add i64 %78, -136
  %91 = xor i64 %90, %88, !mcsema_real_eip !63
  %92 = and i64 %91, 16, !mcsema_real_eip !63
  %93 = icmp ne i64 %92, 0, !mcsema_real_eip !63
  store i1 %93, i1* %AF_val, !mcsema_real_eip !63
  %94 = trunc i64 %90 to i8, !mcsema_real_eip !63
  %95 = tail call i8 @llvm.ctpop.i8(i8 %94), !mcsema_real_eip !63
  %96 = and i8 %95, 1
  %97 = icmp eq i8 %96, 0
  store i1 %97, i1* %PF_val, !mcsema_real_eip !63
  %98 = icmp eq i64 %90, 0, !mcsema_real_eip !63
  store i1 %98, i1* %ZF_val, !mcsema_real_eip !63
  %99 = icmp slt i64 %90, 0
  store i1 %99, i1* %SF_val, !mcsema_real_eip !63
  %100 = icmp ult i64 %88, 104, !mcsema_real_eip !63
  store i1 %100, i1* %CF_val, !mcsema_real_eip !63
  %101 = and i64 %91, %88, !mcsema_real_eip !63
  %102 = icmp slt i64 %101, 0
  store i1 %102, i1* %OF_val, !mcsema_real_eip !63
  store i64 %90, i64* %RSP_val, !mcsema_real_eip !63
  %103 = load i64, i64* %RBP_val, !mcsema_real_eip !64
  %104 = add i64 %103, 48, !mcsema_real_eip !64
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !64
  %106 = load i64, i64* %105, !mcsema_real_eip !64
  store i64 %106, i64* %RAX_val, !mcsema_real_eip !64
  %107 = add i64 %103, 40, !mcsema_real_eip !65
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !65
  %109 = load i64, i64* %108, !mcsema_real_eip !65
  store i64 %109, i64* %R10_val, !mcsema_real_eip !65
  %110 = load i64, i64* %RBP_val, !mcsema_real_eip !66
  %111 = add i64 %110, 24, !mcsema_real_eip !66
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !66
  %113 = ptrtoint i64* %112 to i64, !mcsema_real_eip !66
  store i64 %113, i64* %R11_val, !mcsema_real_eip !66
  %114 = add i64 %110, 16, !mcsema_real_eip !67
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !67
  %116 = bitcast i64* %115 to i32*
  %117 = load i32, i32* %116, !mcsema_real_eip !67
  %118 = zext i32 %117 to i64, !mcsema_real_eip !67
  store i64 %118, i64* %RBX_val, !mcsema_real_eip !67
  store i64 12, i64* %R14_val, !mcsema_real_eip !68
  store i64 12, i64* %R15_val, !mcsema_real_eip !69
  %119 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %120 = add i64 %119, -56, !mcsema_real_eip !70
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !70
  %122 = load i64, i64* %RDI_val, !mcsema_real_eip !70
  store i64 %122, i64* %121, !mcsema_real_eip !70
  %123 = load i64, i64* %RBP_val, !mcsema_real_eip !71
  %124 = add i64 %123, -48, !mcsema_real_eip !71
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !71
  %126 = load i64, i64* %RSI_val, !mcsema_real_eip !71
  %127 = trunc i64 %126 to i32, !mcsema_real_eip !71
  %128 = bitcast i64* %125 to i32*
  store i32 %127, i32* %128, !mcsema_real_eip !71
  %129 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %130 = add i64 %129, -56, !mcsema_real_eip !72
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !72
  %132 = load i64, i64* %131, !mcsema_real_eip !72
  store i64 %132, i64* %RDI_val, !mcsema_real_eip !72
  %133 = add i64 %129, -40, !mcsema_real_eip !73
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !73
  store i64 %132, i64* %134, !mcsema_real_eip !73
  %135 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %136 = add i64 %135, -48, !mcsema_real_eip !74
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !74
  %138 = bitcast i64* %137 to i32*
  %139 = load i32, i32* %138, !mcsema_real_eip !74
  %140 = zext i32 %139 to i64, !mcsema_real_eip !74
  store i64 %140, i64* %RSI_val, !mcsema_real_eip !74
  %141 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %142 = add i64 %141, -32, !mcsema_real_eip !75
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !75
  %144 = bitcast i64* %143 to i32*
  store i32 %139, i32* %144, !mcsema_real_eip !75
  %145 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %146 = add i64 %145, -64, !mcsema_real_eip !76
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !76
  %148 = load i64, i64* %RDX_val, !mcsema_real_eip !76
  store i64 %148, i64* %147, !mcsema_real_eip !76
  %149 = load i64, i64* %RBP_val, !mcsema_real_eip !77
  %150 = add i64 %149, -72, !mcsema_real_eip !77
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !77
  %152 = load i64, i64* %RCX_val, !mcsema_real_eip !77
  store i64 %152, i64* %151, !mcsema_real_eip !77
  %153 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %154 = add i64 %153, -76, !mcsema_real_eip !78
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !78
  %156 = load i64, i64* %R8_val, !mcsema_real_eip !78
  %157 = trunc i64 %156 to i32, !mcsema_real_eip !78
  %158 = bitcast i64* %155 to i32*
  store i32 %157, i32* %158, !mcsema_real_eip !78
  %159 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %160 = add i64 %159, -80, !mcsema_real_eip !79
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !79
  %162 = load i64, i64* %R9_val, !mcsema_real_eip !79
  %163 = trunc i64 %162 to i32, !mcsema_real_eip !79
  %164 = bitcast i64* %161 to i32*
  store i32 %163, i32* %164, !mcsema_real_eip !79
  %165 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %166 = add i64 %165, -84, !mcsema_real_eip !80
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !80
  %168 = load i64, i64* %RBX_val, !mcsema_real_eip !80
  %169 = trunc i64 %168 to i32, !mcsema_real_eip !80
  %170 = bitcast i64* %167 to i32*
  store i32 %169, i32* %170, !mcsema_real_eip !80
  %171 = load i64, i64* %RBP_val, !mcsema_real_eip !81
  %172 = add i64 %171, -96, !mcsema_real_eip !81
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !81
  %174 = load i64, i64* %R10_val, !mcsema_real_eip !81
  store i64 %174, i64* %173, !mcsema_real_eip !81
  %175 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %176 = add i64 %175, -104, !mcsema_real_eip !82
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !82
  %178 = load i64, i64* %RAX_val, !mcsema_real_eip !82
  store i64 %178, i64* %177, !mcsema_real_eip !82
  %179 = load i64, i64* %R15_val, !mcsema_real_eip !83
  store i64 %179, i64* %RDI_val, !mcsema_real_eip !83
  %180 = load i64, i64* %RBP_val, !mcsema_real_eip !84
  %181 = add i64 %180, -120, !mcsema_real_eip !84
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !84
  %183 = load i64, i64* %R11_val, !mcsema_real_eip !84
  store i64 %183, i64* %182, !mcsema_real_eip !84
  %184 = load i64, i64* %RDI_val, !mcsema_real_eip !85
  %185 = tail call x86_64_sysvcc i64 @malloc(i64 %184), !mcsema_real_eip !85
  store i64 %185, i64* %RAX_val, !mcsema_real_eip !85
  %186 = load i64, i64* %RBP_val, !mcsema_real_eip !86
  %187 = add i64 %186, -112, !mcsema_real_eip !86
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !86
  store i64 %185, i64* %188, !mcsema_real_eip !86
  %189 = load i64, i64* %RBP_val, !mcsema_real_eip !87
  %190 = add i64 %189, -40, !mcsema_real_eip !87
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !87
  %192 = bitcast i64* %191 to i32*
  %193 = load i32, i32* %192, !mcsema_real_eip !87
  %194 = zext i32 %193 to i64, !mcsema_real_eip !87
  store i64 %194, i64* %RSI_val, !mcsema_real_eip !87
  %195 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  %196 = add i64 %195, -64, !mcsema_real_eip !88
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !88
  %198 = load i64, i64* %197, !mcsema_real_eip !88
  store i64 %198, i64* %RAX_val, !mcsema_real_eip !88
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !89
  %200 = bitcast i64* %199 to i32*
  %201 = load i32, i32* %200, !mcsema_real_eip !89
  %202 = load i64, i64* %RSI_val, !mcsema_real_eip !89
  %203 = trunc i64 %202 to i32, !mcsema_real_eip !89
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %203, i32 %201)
  %204 = extractvalue { i32, i1 } %uadd, 0
  %205 = xor i32 %204, %201, !mcsema_real_eip !89
  %206 = xor i32 %205, %203, !mcsema_real_eip !89
  %207 = and i32 %206, 16, !mcsema_real_eip !89
  %208 = icmp ne i32 %207, 0, !mcsema_real_eip !89
  store i1 %208, i1* %AF_val, !mcsema_real_eip !89
  %209 = icmp slt i32 %204, 0
  store i1 %209, i1* %SF_val, !mcsema_real_eip !89
  %210 = icmp eq i32 %204, 0, !mcsema_real_eip !89
  store i1 %210, i1* %ZF_val, !mcsema_real_eip !89
  %211 = xor i32 %201, -2147483648, !mcsema_real_eip !89
  %212 = xor i32 %211, %203, !mcsema_real_eip !89
  %213 = and i32 %205, %212, !mcsema_real_eip !89
  %214 = icmp slt i32 %213, 0
  store i1 %214, i1* %OF_val, !mcsema_real_eip !89
  %215 = trunc i32 %204 to i8, !mcsema_real_eip !89
  %216 = tail call i8 @llvm.ctpop.i8(i8 %215), !mcsema_real_eip !89
  %217 = and i8 %216, 1
  %218 = icmp eq i8 %217, 0
  store i1 %218, i1* %PF_val, !mcsema_real_eip !89
  %219 = extractvalue { i32, i1 } %uadd, 1
  store i1 %219, i1* %CF_val, !mcsema_real_eip !89
  %220 = zext i32 %204 to i64, !mcsema_real_eip !89
  store i64 %220, i64* %RSI_val, !mcsema_real_eip !89
  %221 = load i64, i64* %RBP_val, !mcsema_real_eip !90
  %222 = add i64 %221, -72, !mcsema_real_eip !90
  %223 = inttoptr i64 %222 to i64*, !mcsema_real_eip !90
  %224 = load i64, i64* %223, !mcsema_real_eip !90
  store i64 %224, i64* %RAX_val, !mcsema_real_eip !90
  %225 = inttoptr i64 %224 to i64*, !mcsema_real_eip !91
  %226 = bitcast i64* %225 to i32*
  %227 = load i32, i32* %226, !mcsema_real_eip !91
  %228 = load i64, i64* %RSI_val, !mcsema_real_eip !91
  %229 = trunc i64 %228 to i32, !mcsema_real_eip !91
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %229, i32 %227)
  %230 = extractvalue { i32, i1 } %uadd70, 0
  %231 = xor i32 %230, %227, !mcsema_real_eip !91
  %232 = xor i32 %231, %229, !mcsema_real_eip !91
  %233 = and i32 %232, 16, !mcsema_real_eip !91
  %234 = icmp ne i32 %233, 0, !mcsema_real_eip !91
  store i1 %234, i1* %AF_val, !mcsema_real_eip !91
  %235 = icmp slt i32 %230, 0
  store i1 %235, i1* %SF_val, !mcsema_real_eip !91
  %236 = icmp eq i32 %230, 0, !mcsema_real_eip !91
  store i1 %236, i1* %ZF_val, !mcsema_real_eip !91
  %237 = xor i32 %227, -2147483648, !mcsema_real_eip !91
  %238 = xor i32 %237, %229, !mcsema_real_eip !91
  %239 = and i32 %231, %238, !mcsema_real_eip !91
  %240 = icmp slt i32 %239, 0
  store i1 %240, i1* %OF_val, !mcsema_real_eip !91
  %241 = trunc i32 %230 to i8, !mcsema_real_eip !91
  %242 = tail call i8 @llvm.ctpop.i8(i8 %241), !mcsema_real_eip !91
  %243 = and i8 %242, 1
  %244 = icmp eq i8 %243, 0
  store i1 %244, i1* %PF_val, !mcsema_real_eip !91
  %245 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %245, i1* %CF_val, !mcsema_real_eip !91
  %246 = zext i32 %230 to i64, !mcsema_real_eip !91
  store i64 %246, i64* %RSI_val, !mcsema_real_eip !91
  %247 = load i64, i64* %RBP_val, !mcsema_real_eip !92
  %248 = add i64 %247, -120, !mcsema_real_eip !92
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !92
  %250 = load i64, i64* %249, !mcsema_real_eip !92
  store i64 %250, i64* %RAX_val, !mcsema_real_eip !92
  %251 = inttoptr i64 %250 to i64*, !mcsema_real_eip !93
  %252 = bitcast i64* %251 to i32*
  %253 = load i32, i32* %252, !mcsema_real_eip !93
  %254 = zext i32 %253 to i64, !mcsema_real_eip !93
  store i64 %254, i64* %R8_val, !mcsema_real_eip !93
  %255 = load i64, i64* %RBP_val, !mcsema_real_eip !94
  %256 = add i64 %255, -96, !mcsema_real_eip !94
  %257 = inttoptr i64 %256 to i64*, !mcsema_real_eip !94
  %258 = load i64, i64* %257, !mcsema_real_eip !94
  store i64 %258, i64* %RCX_val, !mcsema_real_eip !94
  %259 = inttoptr i64 %258 to i64*, !mcsema_real_eip !95
  %260 = bitcast i64* %259 to i32*
  %261 = load i32, i32* %260, !mcsema_real_eip !95
  %262 = load i64, i64* %R8_val, !mcsema_real_eip !95
  %263 = trunc i64 %262 to i32, !mcsema_real_eip !95
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %263, i32 %261)
  %264 = extractvalue { i32, i1 } %uadd71, 0
  %265 = xor i32 %264, %261, !mcsema_real_eip !95
  %266 = xor i32 %265, %263, !mcsema_real_eip !95
  %267 = and i32 %266, 16, !mcsema_real_eip !95
  %268 = icmp ne i32 %267, 0, !mcsema_real_eip !95
  store i1 %268, i1* %AF_val, !mcsema_real_eip !95
  %269 = icmp slt i32 %264, 0
  store i1 %269, i1* %SF_val, !mcsema_real_eip !95
  %270 = icmp eq i32 %264, 0, !mcsema_real_eip !95
  store i1 %270, i1* %ZF_val, !mcsema_real_eip !95
  %271 = xor i32 %261, -2147483648, !mcsema_real_eip !95
  %272 = xor i32 %271, %263, !mcsema_real_eip !95
  %273 = and i32 %265, %272, !mcsema_real_eip !95
  %274 = icmp slt i32 %273, 0
  store i1 %274, i1* %OF_val, !mcsema_real_eip !95
  %275 = trunc i32 %264 to i8, !mcsema_real_eip !95
  %276 = tail call i8 @llvm.ctpop.i8(i8 %275), !mcsema_real_eip !95
  %277 = and i8 %276, 1
  %278 = icmp eq i8 %277, 0
  store i1 %278, i1* %PF_val, !mcsema_real_eip !95
  %279 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %279, i1* %CF_val, !mcsema_real_eip !95
  %280 = zext i32 %264 to i64, !mcsema_real_eip !95
  store i64 %280, i64* %R8_val, !mcsema_real_eip !95
  %281 = load i64, i64* %RBP_val, !mcsema_real_eip !96
  %282 = add i64 %281, -104, !mcsema_real_eip !96
  %283 = inttoptr i64 %282 to i64*, !mcsema_real_eip !96
  %284 = load i64, i64* %283, !mcsema_real_eip !96
  store i64 %284, i64* %RCX_val, !mcsema_real_eip !96
  %285 = inttoptr i64 %284 to i64*, !mcsema_real_eip !97
  %286 = bitcast i64* %285 to i32*
  %287 = load i32, i32* %286, !mcsema_real_eip !97
  %288 = load i64, i64* %R8_val, !mcsema_real_eip !97
  %289 = trunc i64 %288 to i32, !mcsema_real_eip !97
  %290 = add i32 %289, %287
  %291 = zext i32 %290 to i64, !mcsema_real_eip !97
  store i64 %291, i64* %R8_val, !mcsema_real_eip !97
  %292 = load i64, i64* %RSI_val, !mcsema_real_eip !98
  %293 = trunc i64 %292 to i32, !mcsema_real_eip !98
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %290, i32 %293)
  %294 = extractvalue { i32, i1 } %uadd73, 0
  %295 = xor i32 %294, %293, !mcsema_real_eip !98
  %296 = xor i32 %295, %290, !mcsema_real_eip !98
  %297 = and i32 %296, 16, !mcsema_real_eip !98
  %298 = icmp ne i32 %297, 0, !mcsema_real_eip !98
  store i1 %298, i1* %AF_val, !mcsema_real_eip !98
  %299 = icmp slt i32 %294, 0
  store i1 %299, i1* %SF_val, !mcsema_real_eip !98
  %300 = icmp eq i32 %294, 0, !mcsema_real_eip !98
  store i1 %300, i1* %ZF_val, !mcsema_real_eip !98
  %301 = xor i32 %290, -2147483648, !mcsema_real_eip !98
  %302 = xor i32 %301, %293, !mcsema_real_eip !98
  %303 = and i32 %295, %302, !mcsema_real_eip !98
  %304 = icmp slt i32 %303, 0
  store i1 %304, i1* %OF_val, !mcsema_real_eip !98
  %305 = trunc i32 %294 to i8, !mcsema_real_eip !98
  %306 = tail call i8 @llvm.ctpop.i8(i8 %305), !mcsema_real_eip !98
  %307 = and i8 %306, 1
  %308 = icmp eq i8 %307, 0
  store i1 %308, i1* %PF_val, !mcsema_real_eip !98
  %309 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %309, i1* %CF_val, !mcsema_real_eip !98
  %310 = zext i32 %294 to i64, !mcsema_real_eip !98
  store i64 %310, i64* %RSI_val, !mcsema_real_eip !98
  %311 = load i64, i64* %RBP_val, !mcsema_real_eip !99
  %312 = add i64 %311, -112, !mcsema_real_eip !99
  %313 = inttoptr i64 %312 to i64*, !mcsema_real_eip !99
  %314 = load i64, i64* %313, !mcsema_real_eip !99
  store i64 %314, i64* %RCX_val, !mcsema_real_eip !99
  %315 = inttoptr i64 %314 to i64*, !mcsema_real_eip !100
  %316 = load i64, i64* %RSI_val, !mcsema_real_eip !100
  %317 = trunc i64 %316 to i32, !mcsema_real_eip !100
  %318 = bitcast i64* %315 to i32*
  store i32 %317, i32* %318, !mcsema_real_eip !100
  %319 = load i64, i64* %RBP_val, !mcsema_real_eip !101
  %320 = add i64 %319, -36, !mcsema_real_eip !101
  %321 = inttoptr i64 %320 to i64*, !mcsema_real_eip !101
  %322 = bitcast i64* %321 to i32*
  %323 = load i32, i32* %322, !mcsema_real_eip !101
  %324 = zext i32 %323 to i64, !mcsema_real_eip !101
  store i64 %324, i64* %RSI_val, !mcsema_real_eip !101
  %325 = load i64, i64* %RBP_val, !mcsema_real_eip !102
  %326 = add i64 %325, -64, !mcsema_real_eip !102
  %327 = inttoptr i64 %326 to i64*, !mcsema_real_eip !102
  %328 = load i64, i64* %327, !mcsema_real_eip !102
  store i64 %328, i64* %RCX_val, !mcsema_real_eip !102
  %329 = add i64 %328, 4, !mcsema_real_eip !103
  %330 = inttoptr i64 %329 to i64*, !mcsema_real_eip !103
  %331 = bitcast i64* %330 to i32*
  %332 = load i32, i32* %331, !mcsema_real_eip !103
  %333 = load i64, i64* %RSI_val, !mcsema_real_eip !103
  %334 = trunc i64 %333 to i32, !mcsema_real_eip !103
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %334, i32 %332)
  %335 = extractvalue { i32, i1 } %uadd74, 0
  %336 = xor i32 %335, %332, !mcsema_real_eip !103
  %337 = xor i32 %336, %334, !mcsema_real_eip !103
  %338 = and i32 %337, 16, !mcsema_real_eip !103
  %339 = icmp ne i32 %338, 0, !mcsema_real_eip !103
  store i1 %339, i1* %AF_val, !mcsema_real_eip !103
  %340 = icmp slt i32 %335, 0
  store i1 %340, i1* %SF_val, !mcsema_real_eip !103
  %341 = icmp eq i32 %335, 0, !mcsema_real_eip !103
  store i1 %341, i1* %ZF_val, !mcsema_real_eip !103
  %342 = xor i32 %332, -2147483648, !mcsema_real_eip !103
  %343 = xor i32 %342, %334, !mcsema_real_eip !103
  %344 = and i32 %336, %343, !mcsema_real_eip !103
  %345 = icmp slt i32 %344, 0
  store i1 %345, i1* %OF_val, !mcsema_real_eip !103
  %346 = trunc i32 %335 to i8, !mcsema_real_eip !103
  %347 = tail call i8 @llvm.ctpop.i8(i8 %346), !mcsema_real_eip !103
  %348 = and i8 %347, 1
  %349 = icmp eq i8 %348, 0
  store i1 %349, i1* %PF_val, !mcsema_real_eip !103
  %350 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %350, i1* %CF_val, !mcsema_real_eip !103
  %351 = zext i32 %335 to i64, !mcsema_real_eip !103
  store i64 %351, i64* %RSI_val, !mcsema_real_eip !103
  %352 = load i64, i64* %RBP_val, !mcsema_real_eip !104
  %353 = add i64 %352, -72, !mcsema_real_eip !104
  %354 = inttoptr i64 %353 to i64*, !mcsema_real_eip !104
  %355 = load i64, i64* %354, !mcsema_real_eip !104
  store i64 %355, i64* %RCX_val, !mcsema_real_eip !104
  %356 = add i64 %355, 4, !mcsema_real_eip !105
  %357 = inttoptr i64 %356 to i64*, !mcsema_real_eip !105
  %358 = bitcast i64* %357 to i32*
  %359 = load i32, i32* %358, !mcsema_real_eip !105
  %360 = load i64, i64* %RSI_val, !mcsema_real_eip !105
  %361 = trunc i64 %360 to i32, !mcsema_real_eip !105
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %361, i32 %359)
  %362 = extractvalue { i32, i1 } %uadd75, 0
  %363 = xor i32 %362, %359, !mcsema_real_eip !105
  %364 = xor i32 %363, %361, !mcsema_real_eip !105
  %365 = and i32 %364, 16, !mcsema_real_eip !105
  %366 = icmp ne i32 %365, 0, !mcsema_real_eip !105
  store i1 %366, i1* %AF_val, !mcsema_real_eip !105
  %367 = icmp slt i32 %362, 0
  store i1 %367, i1* %SF_val, !mcsema_real_eip !105
  %368 = icmp eq i32 %362, 0, !mcsema_real_eip !105
  store i1 %368, i1* %ZF_val, !mcsema_real_eip !105
  %369 = xor i32 %359, -2147483648, !mcsema_real_eip !105
  %370 = xor i32 %369, %361, !mcsema_real_eip !105
  %371 = and i32 %363, %370, !mcsema_real_eip !105
  %372 = icmp slt i32 %371, 0
  store i1 %372, i1* %OF_val, !mcsema_real_eip !105
  %373 = trunc i32 %362 to i8, !mcsema_real_eip !105
  %374 = tail call i8 @llvm.ctpop.i8(i8 %373), !mcsema_real_eip !105
  %375 = and i8 %374, 1
  %376 = icmp eq i8 %375, 0
  store i1 %376, i1* %PF_val, !mcsema_real_eip !105
  %377 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %377, i1* %CF_val, !mcsema_real_eip !105
  %378 = zext i32 %362 to i64, !mcsema_real_eip !105
  store i64 %378, i64* %RSI_val, !mcsema_real_eip !105
  %379 = load i64, i64* %RAX_val, !mcsema_real_eip !106
  %380 = add i64 %379, 4, !mcsema_real_eip !106
  %381 = inttoptr i64 %380 to i64*, !mcsema_real_eip !106
  %382 = bitcast i64* %381 to i32*
  %383 = load i32, i32* %382, !mcsema_real_eip !106
  %384 = zext i32 %383 to i64, !mcsema_real_eip !106
  store i64 %384, i64* %R8_val, !mcsema_real_eip !106
  %385 = load i64, i64* %RBP_val, !mcsema_real_eip !107
  %386 = add i64 %385, -96, !mcsema_real_eip !107
  %387 = inttoptr i64 %386 to i64*, !mcsema_real_eip !107
  %388 = load i64, i64* %387, !mcsema_real_eip !107
  store i64 %388, i64* %RCX_val, !mcsema_real_eip !107
  %389 = add i64 %388, 4, !mcsema_real_eip !108
  %390 = inttoptr i64 %389 to i64*, !mcsema_real_eip !108
  %391 = bitcast i64* %390 to i32*
  %392 = load i32, i32* %391, !mcsema_real_eip !108
  %393 = load i64, i64* %R8_val, !mcsema_real_eip !108
  %394 = trunc i64 %393 to i32, !mcsema_real_eip !108
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %394, i32 %392)
  %395 = extractvalue { i32, i1 } %uadd76, 0
  %396 = xor i32 %395, %392, !mcsema_real_eip !108
  %397 = xor i32 %396, %394, !mcsema_real_eip !108
  %398 = and i32 %397, 16, !mcsema_real_eip !108
  %399 = icmp ne i32 %398, 0, !mcsema_real_eip !108
  store i1 %399, i1* %AF_val, !mcsema_real_eip !108
  %400 = icmp slt i32 %395, 0
  store i1 %400, i1* %SF_val, !mcsema_real_eip !108
  %401 = icmp eq i32 %395, 0, !mcsema_real_eip !108
  store i1 %401, i1* %ZF_val, !mcsema_real_eip !108
  %402 = xor i32 %392, -2147483648, !mcsema_real_eip !108
  %403 = xor i32 %402, %394, !mcsema_real_eip !108
  %404 = and i32 %396, %403, !mcsema_real_eip !108
  %405 = icmp slt i32 %404, 0
  store i1 %405, i1* %OF_val, !mcsema_real_eip !108
  %406 = trunc i32 %395 to i8, !mcsema_real_eip !108
  %407 = tail call i8 @llvm.ctpop.i8(i8 %406), !mcsema_real_eip !108
  %408 = and i8 %407, 1
  %409 = icmp eq i8 %408, 0
  store i1 %409, i1* %PF_val, !mcsema_real_eip !108
  %410 = extractvalue { i32, i1 } %uadd76, 1
  store i1 %410, i1* %CF_val, !mcsema_real_eip !108
  %411 = zext i32 %395 to i64, !mcsema_real_eip !108
  store i64 %411, i64* %R8_val, !mcsema_real_eip !108
  %412 = load i64, i64* %RBP_val, !mcsema_real_eip !109
  %413 = add i64 %412, -104, !mcsema_real_eip !109
  %414 = inttoptr i64 %413 to i64*, !mcsema_real_eip !109
  %415 = load i64, i64* %414, !mcsema_real_eip !109
  store i64 %415, i64* %RCX_val, !mcsema_real_eip !109
  %416 = add i64 %415, 4, !mcsema_real_eip !110
  %417 = inttoptr i64 %416 to i64*, !mcsema_real_eip !110
  %418 = bitcast i64* %417 to i32*
  %419 = load i32, i32* %418, !mcsema_real_eip !110
  %420 = load i64, i64* %R8_val, !mcsema_real_eip !110
  %421 = trunc i64 %420 to i32, !mcsema_real_eip !110
  %422 = add i32 %421, %419
  %423 = zext i32 %422 to i64, !mcsema_real_eip !110
  store i64 %423, i64* %R8_val, !mcsema_real_eip !110
  %424 = load i64, i64* %RSI_val, !mcsema_real_eip !111
  %425 = trunc i64 %424 to i32, !mcsema_real_eip !111
  %uadd78 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %422, i32 %425)
  %426 = extractvalue { i32, i1 } %uadd78, 0
  %427 = xor i32 %426, %425, !mcsema_real_eip !111
  %428 = xor i32 %427, %422, !mcsema_real_eip !111
  %429 = and i32 %428, 16, !mcsema_real_eip !111
  %430 = icmp ne i32 %429, 0, !mcsema_real_eip !111
  store i1 %430, i1* %AF_val, !mcsema_real_eip !111
  %431 = icmp slt i32 %426, 0
  store i1 %431, i1* %SF_val, !mcsema_real_eip !111
  %432 = icmp eq i32 %426, 0, !mcsema_real_eip !111
  store i1 %432, i1* %ZF_val, !mcsema_real_eip !111
  %433 = xor i32 %422, -2147483648, !mcsema_real_eip !111
  %434 = xor i32 %433, %425, !mcsema_real_eip !111
  %435 = and i32 %427, %434, !mcsema_real_eip !111
  %436 = icmp slt i32 %435, 0
  store i1 %436, i1* %OF_val, !mcsema_real_eip !111
  %437 = trunc i32 %426 to i8, !mcsema_real_eip !111
  %438 = tail call i8 @llvm.ctpop.i8(i8 %437), !mcsema_real_eip !111
  %439 = and i8 %438, 1
  %440 = icmp eq i8 %439, 0
  store i1 %440, i1* %PF_val, !mcsema_real_eip !111
  %441 = extractvalue { i32, i1 } %uadd78, 1
  store i1 %441, i1* %CF_val, !mcsema_real_eip !111
  %442 = zext i32 %426 to i64, !mcsema_real_eip !111
  store i64 %442, i64* %RSI_val, !mcsema_real_eip !111
  %443 = load i64, i64* %RBP_val, !mcsema_real_eip !112
  %444 = add i64 %443, -112, !mcsema_real_eip !112
  %445 = inttoptr i64 %444 to i64*, !mcsema_real_eip !112
  %446 = load i64, i64* %445, !mcsema_real_eip !112
  store i64 %446, i64* %RCX_val, !mcsema_real_eip !112
  %447 = add i64 %446, 4, !mcsema_real_eip !113
  %448 = inttoptr i64 %447 to i64*, !mcsema_real_eip !113
  %449 = load i64, i64* %RSI_val, !mcsema_real_eip !113
  %450 = trunc i64 %449 to i32, !mcsema_real_eip !113
  %451 = bitcast i64* %448 to i32*
  store i32 %450, i32* %451, !mcsema_real_eip !113
  %452 = load i64, i64* %RBP_val, !mcsema_real_eip !114
  %453 = add i64 %452, -32, !mcsema_real_eip !114
  %454 = inttoptr i64 %453 to i64*, !mcsema_real_eip !114
  %455 = bitcast i64* %454 to i32*
  %456 = load i32, i32* %455, !mcsema_real_eip !114
  %457 = zext i32 %456 to i64, !mcsema_real_eip !114
  store i64 %457, i64* %RSI_val, !mcsema_real_eip !114
  %458 = load i64, i64* %RBP_val, !mcsema_real_eip !115
  %459 = add i64 %458, -64, !mcsema_real_eip !115
  %460 = inttoptr i64 %459 to i64*, !mcsema_real_eip !115
  %461 = load i64, i64* %460, !mcsema_real_eip !115
  store i64 %461, i64* %RCX_val, !mcsema_real_eip !115
  %462 = add i64 %461, 8, !mcsema_real_eip !116
  %463 = inttoptr i64 %462 to i64*, !mcsema_real_eip !116
  %464 = bitcast i64* %463 to i32*
  %465 = load i32, i32* %464, !mcsema_real_eip !116
  %466 = load i64, i64* %RSI_val, !mcsema_real_eip !116
  %467 = trunc i64 %466 to i32, !mcsema_real_eip !116
  %uadd79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %467, i32 %465)
  %468 = extractvalue { i32, i1 } %uadd79, 0
  %469 = xor i32 %468, %465, !mcsema_real_eip !116
  %470 = xor i32 %469, %467, !mcsema_real_eip !116
  %471 = and i32 %470, 16, !mcsema_real_eip !116
  %472 = icmp ne i32 %471, 0, !mcsema_real_eip !116
  store i1 %472, i1* %AF_val, !mcsema_real_eip !116
  %473 = icmp slt i32 %468, 0
  store i1 %473, i1* %SF_val, !mcsema_real_eip !116
  %474 = icmp eq i32 %468, 0, !mcsema_real_eip !116
  store i1 %474, i1* %ZF_val, !mcsema_real_eip !116
  %475 = xor i32 %465, -2147483648, !mcsema_real_eip !116
  %476 = xor i32 %475, %467, !mcsema_real_eip !116
  %477 = and i32 %469, %476, !mcsema_real_eip !116
  %478 = icmp slt i32 %477, 0
  store i1 %478, i1* %OF_val, !mcsema_real_eip !116
  %479 = trunc i32 %468 to i8, !mcsema_real_eip !116
  %480 = tail call i8 @llvm.ctpop.i8(i8 %479), !mcsema_real_eip !116
  %481 = and i8 %480, 1
  %482 = icmp eq i8 %481, 0
  store i1 %482, i1* %PF_val, !mcsema_real_eip !116
  %483 = extractvalue { i32, i1 } %uadd79, 1
  store i1 %483, i1* %CF_val, !mcsema_real_eip !116
  %484 = zext i32 %468 to i64, !mcsema_real_eip !116
  store i64 %484, i64* %RSI_val, !mcsema_real_eip !116
  %485 = load i64, i64* %RBP_val, !mcsema_real_eip !117
  %486 = add i64 %485, -72, !mcsema_real_eip !117
  %487 = inttoptr i64 %486 to i64*, !mcsema_real_eip !117
  %488 = load i64, i64* %487, !mcsema_real_eip !117
  store i64 %488, i64* %RCX_val, !mcsema_real_eip !117
  %489 = add i64 %488, 8, !mcsema_real_eip !118
  %490 = inttoptr i64 %489 to i64*, !mcsema_real_eip !118
  %491 = bitcast i64* %490 to i32*
  %492 = load i32, i32* %491, !mcsema_real_eip !118
  %493 = load i64, i64* %RSI_val, !mcsema_real_eip !118
  %494 = trunc i64 %493 to i32, !mcsema_real_eip !118
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %494, i32 %492)
  %495 = extractvalue { i32, i1 } %uadd80, 0
  %496 = xor i32 %495, %492, !mcsema_real_eip !118
  %497 = xor i32 %496, %494, !mcsema_real_eip !118
  %498 = and i32 %497, 16, !mcsema_real_eip !118
  %499 = icmp ne i32 %498, 0, !mcsema_real_eip !118
  store i1 %499, i1* %AF_val, !mcsema_real_eip !118
  %500 = icmp slt i32 %495, 0
  store i1 %500, i1* %SF_val, !mcsema_real_eip !118
  %501 = icmp eq i32 %495, 0, !mcsema_real_eip !118
  store i1 %501, i1* %ZF_val, !mcsema_real_eip !118
  %502 = xor i32 %492, -2147483648, !mcsema_real_eip !118
  %503 = xor i32 %502, %494, !mcsema_real_eip !118
  %504 = and i32 %496, %503, !mcsema_real_eip !118
  %505 = icmp slt i32 %504, 0
  store i1 %505, i1* %OF_val, !mcsema_real_eip !118
  %506 = trunc i32 %495 to i8, !mcsema_real_eip !118
  %507 = tail call i8 @llvm.ctpop.i8(i8 %506), !mcsema_real_eip !118
  %508 = and i8 %507, 1
  %509 = icmp eq i8 %508, 0
  store i1 %509, i1* %PF_val, !mcsema_real_eip !118
  %510 = extractvalue { i32, i1 } %uadd80, 1
  store i1 %510, i1* %CF_val, !mcsema_real_eip !118
  %511 = zext i32 %495 to i64, !mcsema_real_eip !118
  store i64 %511, i64* %RSI_val, !mcsema_real_eip !118
  %512 = load i64, i64* %RAX_val, !mcsema_real_eip !119
  %513 = add i64 %512, 8, !mcsema_real_eip !119
  %514 = inttoptr i64 %513 to i64*, !mcsema_real_eip !119
  %515 = bitcast i64* %514 to i32*
  %516 = load i32, i32* %515, !mcsema_real_eip !119
  %517 = zext i32 %516 to i64, !mcsema_real_eip !119
  store i64 %517, i64* %R8_val, !mcsema_real_eip !119
  %518 = load i64, i64* %RBP_val, !mcsema_real_eip !120
  %519 = add i64 %518, -96, !mcsema_real_eip !120
  %520 = inttoptr i64 %519 to i64*, !mcsema_real_eip !120
  %521 = load i64, i64* %520, !mcsema_real_eip !120
  store i64 %521, i64* %RCX_val, !mcsema_real_eip !120
  %522 = add i64 %521, 8, !mcsema_real_eip !121
  %523 = inttoptr i64 %522 to i64*, !mcsema_real_eip !121
  %524 = bitcast i64* %523 to i32*
  %525 = load i32, i32* %524, !mcsema_real_eip !121
  %526 = load i64, i64* %R8_val, !mcsema_real_eip !121
  %527 = trunc i64 %526 to i32, !mcsema_real_eip !121
  %uadd81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %527, i32 %525)
  %528 = extractvalue { i32, i1 } %uadd81, 0
  %529 = xor i32 %528, %525, !mcsema_real_eip !121
  %530 = xor i32 %529, %527, !mcsema_real_eip !121
  %531 = and i32 %530, 16, !mcsema_real_eip !121
  %532 = icmp ne i32 %531, 0, !mcsema_real_eip !121
  store i1 %532, i1* %AF_val, !mcsema_real_eip !121
  %533 = icmp slt i32 %528, 0
  store i1 %533, i1* %SF_val, !mcsema_real_eip !121
  %534 = icmp eq i32 %528, 0, !mcsema_real_eip !121
  store i1 %534, i1* %ZF_val, !mcsema_real_eip !121
  %535 = xor i32 %525, -2147483648, !mcsema_real_eip !121
  %536 = xor i32 %535, %527, !mcsema_real_eip !121
  %537 = and i32 %529, %536, !mcsema_real_eip !121
  %538 = icmp slt i32 %537, 0
  store i1 %538, i1* %OF_val, !mcsema_real_eip !121
  %539 = trunc i32 %528 to i8, !mcsema_real_eip !121
  %540 = tail call i8 @llvm.ctpop.i8(i8 %539), !mcsema_real_eip !121
  %541 = and i8 %540, 1
  %542 = icmp eq i8 %541, 0
  store i1 %542, i1* %PF_val, !mcsema_real_eip !121
  %543 = extractvalue { i32, i1 } %uadd81, 1
  store i1 %543, i1* %CF_val, !mcsema_real_eip !121
  %544 = zext i32 %528 to i64, !mcsema_real_eip !121
  store i64 %544, i64* %R8_val, !mcsema_real_eip !121
  %545 = load i64, i64* %RBP_val, !mcsema_real_eip !122
  %546 = add i64 %545, -104, !mcsema_real_eip !122
  %547 = inttoptr i64 %546 to i64*, !mcsema_real_eip !122
  %548 = load i64, i64* %547, !mcsema_real_eip !122
  store i64 %548, i64* %RCX_val, !mcsema_real_eip !122
  %549 = add i64 %548, 8, !mcsema_real_eip !123
  %550 = inttoptr i64 %549 to i64*, !mcsema_real_eip !123
  %551 = bitcast i64* %550 to i32*
  %552 = load i32, i32* %551, !mcsema_real_eip !123
  %553 = load i64, i64* %R8_val, !mcsema_real_eip !123
  %554 = trunc i64 %553 to i32, !mcsema_real_eip !123
  %555 = add i32 %554, %552
  %556 = zext i32 %555 to i64, !mcsema_real_eip !123
  store i64 %556, i64* %R8_val, !mcsema_real_eip !123
  %557 = load i64, i64* %RSI_val, !mcsema_real_eip !124
  %558 = trunc i64 %557 to i32, !mcsema_real_eip !124
  %uadd83 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %555, i32 %558)
  %559 = extractvalue { i32, i1 } %uadd83, 0
  %560 = xor i32 %559, %558, !mcsema_real_eip !124
  %561 = xor i32 %560, %555, !mcsema_real_eip !124
  %562 = and i32 %561, 16, !mcsema_real_eip !124
  %563 = icmp ne i32 %562, 0, !mcsema_real_eip !124
  store i1 %563, i1* %AF_val, !mcsema_real_eip !124
  %564 = icmp slt i32 %559, 0
  store i1 %564, i1* %SF_val, !mcsema_real_eip !124
  %565 = icmp eq i32 %559, 0, !mcsema_real_eip !124
  store i1 %565, i1* %ZF_val, !mcsema_real_eip !124
  %566 = xor i32 %555, -2147483648, !mcsema_real_eip !124
  %567 = xor i32 %566, %558, !mcsema_real_eip !124
  %568 = and i32 %560, %567, !mcsema_real_eip !124
  %569 = icmp slt i32 %568, 0
  store i1 %569, i1* %OF_val, !mcsema_real_eip !124
  %570 = trunc i32 %559 to i8, !mcsema_real_eip !124
  %571 = tail call i8 @llvm.ctpop.i8(i8 %570), !mcsema_real_eip !124
  %572 = and i8 %571, 1
  %573 = icmp eq i8 %572, 0
  store i1 %573, i1* %PF_val, !mcsema_real_eip !124
  %574 = extractvalue { i32, i1 } %uadd83, 1
  store i1 %574, i1* %CF_val, !mcsema_real_eip !124
  %575 = zext i32 %559 to i64, !mcsema_real_eip !124
  store i64 %575, i64* %RSI_val, !mcsema_real_eip !124
  %576 = load i64, i64* %RBP_val, !mcsema_real_eip !125
  %577 = add i64 %576, -112, !mcsema_real_eip !125
  %578 = inttoptr i64 %577 to i64*, !mcsema_real_eip !125
  %579 = load i64, i64* %578, !mcsema_real_eip !125
  store i64 %579, i64* %RCX_val, !mcsema_real_eip !125
  %580 = add i64 %579, 8, !mcsema_real_eip !126
  %581 = inttoptr i64 %580 to i64*, !mcsema_real_eip !126
  %582 = load i64, i64* %RSI_val, !mcsema_real_eip !126
  %583 = trunc i64 %582 to i32, !mcsema_real_eip !126
  %584 = bitcast i64* %581 to i32*
  store i32 %583, i32* %584, !mcsema_real_eip !126
  %585 = load i64, i64* %RBP_val, !mcsema_real_eip !127
  %586 = add i64 %585, -112, !mcsema_real_eip !127
  %587 = inttoptr i64 %586 to i64*, !mcsema_real_eip !127
  %588 = load i64, i64* %587, !mcsema_real_eip !127
  store i64 %588, i64* %RAX_val, !mcsema_real_eip !127
  %589 = load i64, i64* %RSP_val, !mcsema_real_eip !128
  %uadd84 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %589, i64 104)
  %590 = extractvalue { i64, i1 } %uadd84, 0
  %591 = xor i64 %590, %589, !mcsema_real_eip !128
  %592 = and i64 %591, 16, !mcsema_real_eip !128
  %593 = icmp ne i64 %592, 0, !mcsema_real_eip !128
  store i1 %593, i1* %AF_val, !mcsema_real_eip !128
  %594 = icmp slt i64 %590, 0
  store i1 %594, i1* %SF_val, !mcsema_real_eip !128
  %595 = icmp eq i64 %590, 0, !mcsema_real_eip !128
  store i1 %595, i1* %ZF_val, !mcsema_real_eip !128
  %596 = xor i64 %589, -9223372036854775808, !mcsema_real_eip !128
  %597 = and i64 %591, %596, !mcsema_real_eip !128
  %598 = icmp slt i64 %597, 0
  store i1 %598, i1* %OF_val, !mcsema_real_eip !128
  %599 = trunc i64 %590 to i8, !mcsema_real_eip !128
  %600 = tail call i8 @llvm.ctpop.i8(i8 %599), !mcsema_real_eip !128
  %601 = and i8 %600, 1
  %602 = icmp eq i8 %601, 0
  store i1 %602, i1* %PF_val, !mcsema_real_eip !128
  %603 = extractvalue { i64, i1 } %uadd84, 1
  store i1 %603, i1* %CF_val, !mcsema_real_eip !128
  store i64 %590, i64* %RSP_val, !mcsema_real_eip !128
  %604 = inttoptr i64 %590 to i64*, !mcsema_real_eip !129
  %605 = load i64, i64* %604, !mcsema_real_eip !129
  store i64 %605, i64* %RBX_val, !mcsema_real_eip !129
  %606 = add i64 %590, 8, !mcsema_real_eip !129
  store i64 %606, i64* %RSP_val, !mcsema_real_eip !129
  %607 = inttoptr i64 %606 to i64*, !mcsema_real_eip !130
  %608 = load i64, i64* %607, !mcsema_real_eip !130
  store i64 %608, i64* %R14_val, !mcsema_real_eip !130
  %609 = add i64 %590, 16, !mcsema_real_eip !130
  store i64 %609, i64* %RSP_val, !mcsema_real_eip !130
  %610 = inttoptr i64 %609 to i64*, !mcsema_real_eip !131
  %611 = load i64, i64* %610, !mcsema_real_eip !131
  store i64 %611, i64* %R15_val, !mcsema_real_eip !131
  %612 = add i64 %590, 24, !mcsema_real_eip !131
  store i64 %612, i64* %RSP_val, !mcsema_real_eip !131
  %613 = inttoptr i64 %612 to i64*, !mcsema_real_eip !132
  %614 = load i64, i64* %613, !mcsema_real_eip !132
  store i64 %614, i64* %RBP_val, !mcsema_real_eip !132
  %615 = add i64 %590, 40, !mcsema_real_eip !133
  store i64 %615, i64* %RSP_val, !mcsema_real_eip !133
  %616 = load i64, i64* %RAX_val, !mcsema_real_eip !133
  store i64 %616, i64* %RAX, !mcsema_real_eip !133
  %617 = load i64, i64* %RBX_val, !mcsema_real_eip !133
  store i64 %617, i64* %RBX, !mcsema_real_eip !133
  %618 = load i64, i64* %RCX_val, !mcsema_real_eip !133
  store i64 %618, i64* %RCX, !mcsema_real_eip !133
  %619 = load i64, i64* %RDX_val, !mcsema_real_eip !133
  store i64 %619, i64* %RDX, !mcsema_real_eip !133
  %620 = load i64, i64* %RSI_val, !mcsema_real_eip !133
  store i64 %620, i64* %RSI, !mcsema_real_eip !133
  %621 = load i64, i64* %RDI_val, !mcsema_real_eip !133
  store i64 %621, i64* %RDI, !mcsema_real_eip !133
  %622 = load i64, i64* %RSP_val, !mcsema_real_eip !133
  store i64 %622, i64* %RSP, !mcsema_real_eip !133
  %623 = load i64, i64* %RBP_val, !mcsema_real_eip !133
  store i64 %623, i64* %RBP, !mcsema_real_eip !133
  %624 = load i64, i64* %R8_val, !mcsema_real_eip !133
  store i64 %624, i64* %R8, !mcsema_real_eip !133
  %625 = load i64, i64* %R9_val, !mcsema_real_eip !133
  store i64 %625, i64* %R9, !mcsema_real_eip !133
  %626 = load i64, i64* %R10_val, !mcsema_real_eip !133
  store i64 %626, i64* %R10, !mcsema_real_eip !133
  %627 = load i64, i64* %R11_val, !mcsema_real_eip !133
  store i64 %627, i64* %R11, !mcsema_real_eip !133
  %628 = load i64, i64* %R12_val, !mcsema_real_eip !133
  store i64 %628, i64* %R12, !mcsema_real_eip !133
  %629 = load i64, i64* %R13_val, !mcsema_real_eip !133
  store i64 %629, i64* %R13, !mcsema_real_eip !133
  %630 = load i64, i64* %R14_val, !mcsema_real_eip !133
  store i64 %630, i64* %R14, !mcsema_real_eip !133
  %631 = load i64, i64* %R15_val, !mcsema_real_eip !133
  store i64 %631, i64* %R15, !mcsema_real_eip !133
  %632 = load i64, i64* %RIP_val, !mcsema_real_eip !133
  store i64 %632, i64* %RIP, !mcsema_real_eip !133
  %633 = load i1, i1* %CF_val, !mcsema_real_eip !133
  store i1 %633, i1* %CF, align 1, !mcsema_real_eip !133
  %634 = load i1, i1* %PF_val, !mcsema_real_eip !133
  store i1 %634, i1* %PF, align 1, !mcsema_real_eip !133
  %635 = load i1, i1* %AF_val, !mcsema_real_eip !133
  store i1 %635, i1* %AF, align 1, !mcsema_real_eip !133
  %636 = load i1, i1* %ZF_val, !mcsema_real_eip !133
  store i1 %636, i1* %ZF, align 1, !mcsema_real_eip !133
  %637 = load i1, i1* %SF_val, !mcsema_real_eip !133
  store i1 %637, i1* %SF, align 1, !mcsema_real_eip !133
  %638 = load i1, i1* %OF_val, !mcsema_real_eip !133
  store i1 %638, i1* %OF, align 1, !mcsema_real_eip !133
  %639 = load i1, i1* %DF_val, !mcsema_real_eip !133
  store i1 %639, i1* %DF, align 1, !mcsema_real_eip !133
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !133
  %640 = load i1, i1* %FPU_B_val, !mcsema_real_eip !133
  store i1 %640, i1* %FPU_B, align 1, !mcsema_real_eip !133
  %641 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !133
  store i1 %641, i1* %FPU_C3, align 1, !mcsema_real_eip !133
  %642 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !133
  store i3 %642, i3* %FPU_TOP, align 1, !mcsema_real_eip !133
  %643 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !133
  store i1 %643, i1* %FPU_C2, align 1, !mcsema_real_eip !133
  %644 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !133
  store i1 %644, i1* %FPU_C1, align 1, !mcsema_real_eip !133
  %645 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !133
  store i1 %645, i1* %FPU_C0, align 1, !mcsema_real_eip !133
  %646 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !133
  store i1 %646, i1* %FPU_ES, align 1, !mcsema_real_eip !133
  %647 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !133
  store i1 %647, i1* %FPU_SF, align 1, !mcsema_real_eip !133
  %648 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !133
  store i1 %648, i1* %FPU_PE, align 1, !mcsema_real_eip !133
  %649 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !133
  store i1 %649, i1* %FPU_UE, align 1, !mcsema_real_eip !133
  %650 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !133
  store i1 %650, i1* %FPU_OE, align 1, !mcsema_real_eip !133
  %651 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !133
  store i1 %651, i1* %FPU_ZE, align 1, !mcsema_real_eip !133
  %652 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !133
  store i1 %652, i1* %FPU_DE, align 1, !mcsema_real_eip !133
  %653 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !133
  store i1 %653, i1* %FPU_IE, align 1, !mcsema_real_eip !133
  %654 = load i1, i1* %FPU_X_val, !mcsema_real_eip !133
  store i1 %654, i1* %FPU_X, align 1, !mcsema_real_eip !133
  %655 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !133
  store i2 %655, i2* %FPU_RC, align 1, !mcsema_real_eip !133
  %656 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !133
  store i2 %656, i2* %FPU_PC, align 1, !mcsema_real_eip !133
  %657 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !133
  store i1 %657, i1* %FPU_PM, align 1, !mcsema_real_eip !133
  %658 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !133
  store i1 %658, i1* %FPU_UM, align 1, !mcsema_real_eip !133
  %659 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !133
  store i1 %659, i1* %FPU_OM, align 1, !mcsema_real_eip !133
  %660 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !133
  store i1 %660, i1* %FPU_ZM, align 1, !mcsema_real_eip !133
  %661 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !133
  store i1 %661, i1* %FPU_DM, align 1, !mcsema_real_eip !133
  %662 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !133
  store i1 %662, i1* %FPU_IM, align 1, !mcsema_real_eip !133
  %663 = load i64, i64* %53, align 4
  store i64 %663, i64* %52, align 4
  %664 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !133
  store i16 %664, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !133
  %665 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !133
  store i64 %665, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !133
  %666 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !133
  store i16 %666, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !133
  %667 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !133
  store i64 %667, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !133
  %668 = load i128, i128* %XMM0_val, !mcsema_real_eip !133
  store i128 %668, i128* %XMM0, align 1, !mcsema_real_eip !133
  %669 = load i128, i128* %XMM1_val, !mcsema_real_eip !133
  store i128 %669, i128* %XMM1, align 1, !mcsema_real_eip !133
  %670 = load i128, i128* %XMM2_val, !mcsema_real_eip !133
  store i128 %670, i128* %XMM2, align 1, !mcsema_real_eip !133
  %671 = load i128, i128* %XMM3_val, !mcsema_real_eip !133
  store i128 %671, i128* %XMM3, align 1, !mcsema_real_eip !133
  %672 = load i128, i128* %XMM4_val, !mcsema_real_eip !133
  store i128 %672, i128* %XMM4, align 1, !mcsema_real_eip !133
  %673 = load i128, i128* %XMM5_val, !mcsema_real_eip !133
  store i128 %673, i128* %XMM5, align 1, !mcsema_real_eip !133
  %674 = load i128, i128* %XMM6_val, !mcsema_real_eip !133
  store i128 %674, i128* %XMM6, align 1, !mcsema_real_eip !133
  %675 = load i128, i128* %XMM7_val, !mcsema_real_eip !133
  store i128 %675, i128* %XMM7, align 1, !mcsema_real_eip !133
  %676 = load i128, i128* %XMM8_val, !mcsema_real_eip !133
  store i128 %676, i128* %XMM8, align 1, !mcsema_real_eip !133
  %677 = load i128, i128* %XMM9_val, !mcsema_real_eip !133
  store i128 %677, i128* %XMM9, align 1, !mcsema_real_eip !133
  %678 = load i128, i128* %XMM10_val, !mcsema_real_eip !133
  store i128 %678, i128* %XMM10, align 1, !mcsema_real_eip !133
  %679 = load i128, i128* %XMM11_val, !mcsema_real_eip !133
  store i128 %679, i128* %XMM11, align 1, !mcsema_real_eip !133
  %680 = load i128, i128* %XMM12_val, !mcsema_real_eip !133
  store i128 %680, i128* %XMM12, align 1, !mcsema_real_eip !133
  %681 = load i128, i128* %XMM13_val, !mcsema_real_eip !133
  store i128 %681, i128* %XMM13, align 1, !mcsema_real_eip !133
  %682 = load i128, i128* %XMM14_val, !mcsema_real_eip !133
  store i128 %682, i128* %XMM14, align 1, !mcsema_real_eip !133
  %683 = load i128, i128* %XMM15_val, !mcsema_real_eip !133
  store i128 %683, i128* %XMM15, align 1, !mcsema_real_eip !133
  %684 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !133
  store i64 %684, i64* %STACK_BASE, align 1, !mcsema_real_eip !133
  %685 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !133
  store i64 %685, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !133
  ret void, !mcsema_real_eip !133
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

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

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 256, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 257, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = !{i64 260, [17 x i8] c"\09subq\09$112, %rsp\00"}
!5 = !{i64 269, [17 x i8] c"\09movl\09%eax, %edi\00"}
!6 = !{i64 271, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!7 = !{i64 278, [21 x i8] c"\09movl\09$10, -16(%rbp)\00"}
!8 = !{i64 285, [21 x i8] c"\09movl\09$10, -12(%rbp)\00"}
!9 = !{i64 292, [20 x i8] c"\09movl\09$10, -8(%rbp)\00"}
!10 = !{i64 299, [9 x i8] c"\09callq\090\00"}
!11 = !{i64 304, [22 x i8] c"\09leaq\09-16(%rbp), %rdi\00"}
!12 = !{i64 308, [15 x i8] c"\09movl\09$1, %r8d\00"}
!13 = !{i64 314, [15 x i8] c"\09movl\09$2, %r9d\00"}
!14 = !{i64 320, [15 x i8] c"\09movl\09$3, %ecx\00"}
!15 = !{i64 325, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!16 = !{i64 329, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!17 = !{i64 333, [17 x i8] c"\09movl\09$5, (%rax)\00"}
!18 = !{i64 339, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!19 = !{i64 343, [18 x i8] c"\09movl\09$5, 4(%rax)\00"}
!20 = !{i64 350, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!21 = !{i64 354, [18 x i8] c"\09movl\09$5, 8(%rax)\00"}
!22 = !{i64 361, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!23 = !{i64 365, [22 x i8] c"\09movq\09-24(%rbp), %rdx\00"}
!24 = !{i64 369, [22 x i8] c"\09movq\09-16(%rbp), %rsi\00"}
!25 = !{i64 373, [22 x i8] c"\09movq\09%rsi, -48(%rbp)\00"}
!26 = !{i64 377, [22 x i8] c"\09movl\09-8(%rbp), %r10d\00"}
!27 = !{i64 381, [23 x i8] c"\09movl\09%r10d, -40(%rbp)\00"}
!28 = !{i64 385, [22 x i8] c"\09movq\09-48(%rbp), %rsi\00"}
!29 = !{i64 389, [23 x i8] c"\09movl\09-40(%rbp), %r10d\00"}
!30 = !{i64 393, [22 x i8] c"\09movq\09%rdi, -56(%rbp)\00"}
!31 = !{i64 397, [17 x i8] c"\09movq\09%rsi, %rdi\00"}
!32 = !{i64 400, [18 x i8] c"\09movl\09%r10d, %esi\00"}
!33 = !{i64 403, [22 x i8] c"\09movq\09-56(%rbp), %r11\00"}
!34 = !{i64 407, [22 x i8] c"\09movq\09%rdx, -64(%rbp)\00"}
!35 = !{i64 411, [17 x i8] c"\09movq\09%r11, %rdx\00"}
!36 = !{i64 414, [22 x i8] c"\09movl\09%ecx, -68(%rbp)\00"}
!37 = !{i64 417, [17 x i8] c"\09movq\09%rax, %rcx\00"}
!38 = !{i64 420, [17 x i8] c"\09movl\09$3, (%rsp)\00"}
!39 = !{i64 427, [19 x i8] c"\09movq\09(%r11), %rax\00"}
!40 = !{i64 430, [20 x i8] c"\09movq\09%rax, 8(%rsp)\00"}
!41 = !{i64 435, [21 x i8] c"\09movl\098(%r11), %r10d\00"}
!42 = !{i64 439, [22 x i8] c"\09movl\09%r10d, 16(%rsp)\00"}
!43 = !{i64 444, [21 x i8] c"\09movq\09%r11, 24(%rsp)\00"}
!44 = !{i64 449, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!45 = !{i64 453, [21 x i8] c"\09movq\09%rax, 32(%rsp)\00"}
!46 = !{i64 458, [12 x i8] c"\09callq\09-463\00"}
!47 = !{i64 463, [22 x i8] c"\09movq\09%rax, -32(%rbp)\00"}
!48 = !{i64 467, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!49 = !{i64 471, [19 x i8] c"\09movl\09(%rax), %esi\00"}
!50 = !{i64 473, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!51 = !{i64 477, [20 x i8] c"\09addl\094(%rax), %esi\00"}
!52 = !{i64 480, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!53 = !{i64 484, [20 x i8] c"\09addl\098(%rax), %esi\00"}
!54 = !{i64 487, [17 x i8] c"\09movl\09%esi, %eax\00"}
!55 = !{i64 489, [17 x i8] c"\09addq\09$112, %rsp\00"}
!56 = !{i64 493, [11 x i8] c"\09popq\09%rbp\00"}
!57 = !{i64 494, [6 x i8] c"\09retq\00"}
!58 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!59 = !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!60 = !{i64 4, [12 x i8] c"\09pushq\09%r15\00"}
!61 = !{i64 6, [12 x i8] c"\09pushq\09%r14\00"}
!62 = !{i64 8, [12 x i8] c"\09pushq\09%rbx\00"}
!63 = !{i64 9, [17 x i8] c"\09subq\09$104, %rsp\00"}
!64 = !{i64 13, [21 x i8] c"\09movq\0948(%rbp), %rax\00"}
!65 = !{i64 17, [21 x i8] c"\09movq\0940(%rbp), %r10\00"}
!66 = !{i64 21, [21 x i8] c"\09leaq\0924(%rbp), %r11\00"}
!67 = !{i64 25, [21 x i8] c"\09movl\0916(%rbp), %ebx\00"}
!68 = !{i64 28, [17 x i8] c"\09movl\09$12, %r14d\00"}
!69 = !{i64 34, [19 x i8] c"\09movl\09%r14d, %r15d\00"}
!70 = !{i64 37, [22 x i8] c"\09movq\09%rdi, -56(%rbp)\00"}
!71 = !{i64 41, [22 x i8] c"\09movl\09%esi, -48(%rbp)\00"}
!72 = !{i64 44, [22 x i8] c"\09movq\09-56(%rbp), %rdi\00"}
!73 = !{i64 48, [22 x i8] c"\09movq\09%rdi, -40(%rbp)\00"}
!74 = !{i64 52, [22 x i8] c"\09movl\09-48(%rbp), %esi\00"}
!75 = !{i64 55, [22 x i8] c"\09movl\09%esi, -32(%rbp)\00"}
!76 = !{i64 58, [22 x i8] c"\09movq\09%rdx, -64(%rbp)\00"}
!77 = !{i64 62, [22 x i8] c"\09movq\09%rcx, -72(%rbp)\00"}
!78 = !{i64 66, [22 x i8] c"\09movl\09%r8d, -76(%rbp)\00"}
!79 = !{i64 70, [22 x i8] c"\09movl\09%r9d, -80(%rbp)\00"}
!80 = !{i64 74, [22 x i8] c"\09movl\09%ebx, -84(%rbp)\00"}
!81 = !{i64 77, [22 x i8] c"\09movq\09%r10, -96(%rbp)\00"}
!82 = !{i64 81, [23 x i8] c"\09movq\09%rax, -104(%rbp)\00"}
!83 = !{i64 85, [17 x i8] c"\09movq\09%r15, %rdi\00"}
!84 = !{i64 88, [23 x i8] c"\09movq\09%r11, -120(%rbp)\00"}
!85 = !{i64 92, [9 x i8] c"\09callq\090\00"}
!86 = !{i64 97, [23 x i8] c"\09movq\09%rax, -112(%rbp)\00"}
!87 = !{i64 101, [22 x i8] c"\09movl\09-40(%rbp), %esi\00"}
!88 = !{i64 104, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!89 = !{i64 108, [19 x i8] c"\09addl\09(%rax), %esi\00"}
!90 = !{i64 110, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!91 = !{i64 114, [19 x i8] c"\09addl\09(%rax), %esi\00"}
!92 = !{i64 116, [23 x i8] c"\09movq\09-120(%rbp), %rax\00"}
!93 = !{i64 120, [19 x i8] c"\09movl\09(%rax), %r8d\00"}
!94 = !{i64 123, [22 x i8] c"\09movq\09-96(%rbp), %rcx\00"}
!95 = !{i64 127, [19 x i8] c"\09addl\09(%rcx), %r8d\00"}
!96 = !{i64 130, [23 x i8] c"\09movq\09-104(%rbp), %rcx\00"}
!97 = !{i64 134, [19 x i8] c"\09addl\09(%rcx), %r8d\00"}
!98 = !{i64 137, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!99 = !{i64 140, [23 x i8] c"\09movq\09-112(%rbp), %rcx\00"}
!100 = !{i64 144, [19 x i8] c"\09movl\09%esi, (%rcx)\00"}
!101 = !{i64 146, [22 x i8] c"\09movl\09-36(%rbp), %esi\00"}
!102 = !{i64 149, [22 x i8] c"\09movq\09-64(%rbp), %rcx\00"}
!103 = !{i64 153, [20 x i8] c"\09addl\094(%rcx), %esi\00"}
!104 = !{i64 156, [22 x i8] c"\09movq\09-72(%rbp), %rcx\00"}
!105 = !{i64 160, [20 x i8] c"\09addl\094(%rcx), %esi\00"}
!106 = !{i64 163, [20 x i8] c"\09movl\094(%rax), %r8d\00"}
!107 = !{i64 167, [22 x i8] c"\09movq\09-96(%rbp), %rcx\00"}
!108 = !{i64 171, [20 x i8] c"\09addl\094(%rcx), %r8d\00"}
!109 = !{i64 175, [23 x i8] c"\09movq\09-104(%rbp), %rcx\00"}
!110 = !{i64 179, [20 x i8] c"\09addl\094(%rcx), %r8d\00"}
!111 = !{i64 183, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!112 = !{i64 186, [23 x i8] c"\09movq\09-112(%rbp), %rcx\00"}
!113 = !{i64 190, [20 x i8] c"\09movl\09%esi, 4(%rcx)\00"}
!114 = !{i64 193, [22 x i8] c"\09movl\09-32(%rbp), %esi\00"}
!115 = !{i64 196, [22 x i8] c"\09movq\09-64(%rbp), %rcx\00"}
!116 = !{i64 200, [20 x i8] c"\09addl\098(%rcx), %esi\00"}
!117 = !{i64 203, [22 x i8] c"\09movq\09-72(%rbp), %rcx\00"}
!118 = !{i64 207, [20 x i8] c"\09addl\098(%rcx), %esi\00"}
!119 = !{i64 210, [20 x i8] c"\09movl\098(%rax), %r8d\00"}
!120 = !{i64 214, [22 x i8] c"\09movq\09-96(%rbp), %rcx\00"}
!121 = !{i64 218, [20 x i8] c"\09addl\098(%rcx), %r8d\00"}
!122 = !{i64 222, [23 x i8] c"\09movq\09-104(%rbp), %rcx\00"}
!123 = !{i64 226, [20 x i8] c"\09addl\098(%rcx), %r8d\00"}
!124 = !{i64 230, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!125 = !{i64 233, [23 x i8] c"\09movq\09-112(%rbp), %rcx\00"}
!126 = !{i64 237, [20 x i8] c"\09movl\09%esi, 8(%rcx)\00"}
!127 = !{i64 240, [23 x i8] c"\09movq\09-112(%rbp), %rax\00"}
!128 = !{i64 244, [17 x i8] c"\09addq\09$104, %rsp\00"}
!129 = !{i64 248, [11 x i8] c"\09popq\09%rbx\00"}
!130 = !{i64 249, [11 x i8] c"\09popq\09%r14\00"}
!131 = !{i64 251, [11 x i8] c"\09popq\09%r15\00"}
!132 = !{i64 253, [11 x i8] c"\09popq\09%rbp\00"}
!133 = !{i64 254, [6 x i8] c"\09retq\00"}
