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
  %82 = add i64 %79, -120
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
  %92 = icmp ult i64 %80, 112, !mcsema_real_eip !4
  store i1 %92, i1* %CF_val, !mcsema_real_eip !4
  %93 = and i64 %83, %80, !mcsema_real_eip !4
  %94 = icmp slt i64 %93, 0
  store i1 %94, i1* %OF_val, !mcsema_real_eip !4
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !4
  store i64 12, i64* %RDI_val, !mcsema_real_eip !5
  %95 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %96 = add i64 %95, -4, !mcsema_real_eip !6
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !6
  %98 = bitcast i64* %97 to i32*
  store i32 0, i32* %98, !mcsema_real_eip !6
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  %100 = add i64 %99, -16, !mcsema_real_eip !7
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !7
  %102 = bitcast i64* %101 to i32*
  store i32 10, i32* %102, !mcsema_real_eip !7
  %103 = load i64, i64* %RBP_val, !mcsema_real_eip !8
  %104 = add i64 %103, -12, !mcsema_real_eip !8
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !8
  %106 = bitcast i64* %105 to i32*
  store i32 10, i32* %106, !mcsema_real_eip !8
  %107 = load i64, i64* %RBP_val, !mcsema_real_eip !9
  %108 = add i64 %107, -8, !mcsema_real_eip !9
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !9
  %110 = bitcast i64* %109 to i32*
  store i32 10, i32* %110, !mcsema_real_eip !9
  %111 = load i64, i64* %RDI_val, !mcsema_real_eip !10
  %112 = tail call x86_64_sysvcc i64 @malloc(i64 %111), !mcsema_real_eip !10
  store i64 %112, i64* %RAX_val, !mcsema_real_eip !10
  %113 = load i64, i64* %RBP_val, !mcsema_real_eip !11
  %114 = add i64 %113, -16, !mcsema_real_eip !11
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !11
  %116 = ptrtoint i64* %115 to i64, !mcsema_real_eip !11
  store i64 %116, i64* %RDI_val, !mcsema_real_eip !11
  store i64 1, i64* %R8_val, !mcsema_real_eip !12
  store i64 2, i64* %R9_val, !mcsema_real_eip !13
  store i64 3, i64* %RCX_val, !mcsema_real_eip !14
  %117 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %118 = add i64 %117, -24, !mcsema_real_eip !15
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !15
  %120 = load i64, i64* %RAX_val, !mcsema_real_eip !15
  store i64 %120, i64* %119, !mcsema_real_eip !15
  %121 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %122 = add i64 %121, -24, !mcsema_real_eip !16
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !16
  %124 = load i64, i64* %123, !mcsema_real_eip !16
  store i64 %124, i64* %RAX_val, !mcsema_real_eip !16
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !17
  %126 = bitcast i64* %125 to i32*
  store i32 5, i32* %126, !mcsema_real_eip !17
  %127 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  %128 = add i64 %127, -24, !mcsema_real_eip !18
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !18
  %130 = load i64, i64* %129, !mcsema_real_eip !18
  store i64 %130, i64* %RAX_val, !mcsema_real_eip !18
  %131 = add i64 %130, 4, !mcsema_real_eip !19
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !19
  %133 = bitcast i64* %132 to i32*
  store i32 5, i32* %133, !mcsema_real_eip !19
  %134 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %135 = add i64 %134, -24, !mcsema_real_eip !20
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !20
  %137 = load i64, i64* %136, !mcsema_real_eip !20
  store i64 %137, i64* %RAX_val, !mcsema_real_eip !20
  %138 = add i64 %137, 8, !mcsema_real_eip !21
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !21
  %140 = bitcast i64* %139 to i32*
  store i32 5, i32* %140, !mcsema_real_eip !21
  %141 = load i64, i64* %RBP_val, !mcsema_real_eip !22
  %142 = add i64 %141, -24, !mcsema_real_eip !22
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !22
  %144 = load i64, i64* %143, !mcsema_real_eip !22
  store i64 %144, i64* %RAX_val, !mcsema_real_eip !22
  %145 = load i64, i64* %143, !mcsema_real_eip !23
  store i64 %145, i64* %RDX_val, !mcsema_real_eip !23
  %146 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %147 = add i64 %146, -16, !mcsema_real_eip !24
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !24
  %149 = load i64, i64* %148, !mcsema_real_eip !24
  store i64 %149, i64* %RSI_val, !mcsema_real_eip !24
  %150 = add i64 %146, -48, !mcsema_real_eip !25
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !25
  store i64 %149, i64* %151, !mcsema_real_eip !25
  %152 = load i64, i64* %RBP_val, !mcsema_real_eip !26
  %153 = add i64 %152, -8, !mcsema_real_eip !26
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !26
  %155 = bitcast i64* %154 to i32*
  %156 = load i32, i32* %155, !mcsema_real_eip !26
  %157 = zext i32 %156 to i64, !mcsema_real_eip !26
  store i64 %157, i64* %R10_val, !mcsema_real_eip !26
  %158 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %159 = add i64 %158, -40, !mcsema_real_eip !27
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !27
  %161 = bitcast i64* %160 to i32*
  store i32 %156, i32* %161, !mcsema_real_eip !27
  %162 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %163 = add i64 %162, -48, !mcsema_real_eip !28
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !28
  %165 = load i64, i64* %164, !mcsema_real_eip !28
  store i64 %165, i64* %RSI_val, !mcsema_real_eip !28
  %166 = add i64 %162, -40, !mcsema_real_eip !29
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !29
  %168 = bitcast i64* %167 to i32*
  %169 = load i32, i32* %168, !mcsema_real_eip !29
  %170 = zext i32 %169 to i64, !mcsema_real_eip !29
  store i64 %170, i64* %R10_val, !mcsema_real_eip !29
  %171 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  %172 = add i64 %171, -56, !mcsema_real_eip !30
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !30
  %174 = load i64, i64* %RDI_val, !mcsema_real_eip !30
  store i64 %174, i64* %173, !mcsema_real_eip !30
  %175 = load i64, i64* %RSI_val, !mcsema_real_eip !31
  store i64 %175, i64* %RDI_val, !mcsema_real_eip !31
  %176 = load i64, i64* %R10_val, !mcsema_real_eip !32
  %177 = and i64 %176, 4294967295
  store i64 %177, i64* %RSI_val, !mcsema_real_eip !32
  %178 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %179 = add i64 %178, -56, !mcsema_real_eip !33
  %180 = inttoptr i64 %179 to i64*, !mcsema_real_eip !33
  %181 = load i64, i64* %180, !mcsema_real_eip !33
  store i64 %181, i64* %R11_val, !mcsema_real_eip !33
  %182 = add i64 %178, -64, !mcsema_real_eip !34
  %183 = inttoptr i64 %182 to i64*, !mcsema_real_eip !34
  %184 = load i64, i64* %RDX_val, !mcsema_real_eip !34
  store i64 %184, i64* %183, !mcsema_real_eip !34
  %185 = load i64, i64* %R11_val, !mcsema_real_eip !35
  store i64 %185, i64* %RDX_val, !mcsema_real_eip !35
  %186 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  %187 = add i64 %186, -68, !mcsema_real_eip !36
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !36
  %189 = load i64, i64* %RCX_val, !mcsema_real_eip !36
  %190 = trunc i64 %189 to i32, !mcsema_real_eip !36
  %191 = bitcast i64* %188 to i32*
  store i32 %190, i32* %191, !mcsema_real_eip !36
  %192 = load i64, i64* %RAX_val, !mcsema_real_eip !37
  store i64 %192, i64* %RCX_val, !mcsema_real_eip !37
  %193 = load i64, i64* %RSP_val, !mcsema_real_eip !38
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !38
  %195 = bitcast i64* %194 to i32*
  store i32 3, i32* %195, !mcsema_real_eip !38
  %196 = load i64, i64* %R11_val, !mcsema_real_eip !39
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !39
  %198 = load i64, i64* %197, !mcsema_real_eip !39
  store i64 %198, i64* %RAX_val, !mcsema_real_eip !39
  %199 = load i64, i64* %RSP_val, !mcsema_real_eip !40
  %200 = add i64 %199, 8, !mcsema_real_eip !40
  %201 = inttoptr i64 %200 to i64*, !mcsema_real_eip !40
  store i64 %198, i64* %201, !mcsema_real_eip !40
  %202 = load i64, i64* %R11_val, !mcsema_real_eip !41
  %203 = add i64 %202, 8, !mcsema_real_eip !41
  %204 = inttoptr i64 %203 to i64*, !mcsema_real_eip !41
  %205 = bitcast i64* %204 to i32*
  %206 = load i32, i32* %205, !mcsema_real_eip !41
  %207 = zext i32 %206 to i64, !mcsema_real_eip !41
  store i64 %207, i64* %R10_val, !mcsema_real_eip !41
  %208 = load i64, i64* %RSP_val, !mcsema_real_eip !42
  %209 = add i64 %208, 16, !mcsema_real_eip !42
  %210 = inttoptr i64 %209 to i64*, !mcsema_real_eip !42
  %211 = bitcast i64* %210 to i32*
  store i32 %206, i32* %211, !mcsema_real_eip !42
  %212 = load i64, i64* %RSP_val, !mcsema_real_eip !43
  %213 = add i64 %212, 24, !mcsema_real_eip !43
  %214 = inttoptr i64 %213 to i64*, !mcsema_real_eip !43
  %215 = load i64, i64* %R11_val, !mcsema_real_eip !43
  store i64 %215, i64* %214, !mcsema_real_eip !43
  %216 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  %217 = add i64 %216, -64, !mcsema_real_eip !44
  %218 = inttoptr i64 %217 to i64*, !mcsema_real_eip !44
  %219 = load i64, i64* %218, !mcsema_real_eip !44
  store i64 %219, i64* %RAX_val, !mcsema_real_eip !44
  %220 = load i64, i64* %RSP_val, !mcsema_real_eip !45
  %221 = add i64 %220, 32, !mcsema_real_eip !45
  %222 = inttoptr i64 %221 to i64*, !mcsema_real_eip !45
  store i64 %219, i64* %222, !mcsema_real_eip !45
  %223 = load i64, i64* %RSP_val, !mcsema_real_eip !46
  %224 = add i64 %223, -8
  %225 = inttoptr i64 %224 to i64*, !mcsema_real_eip !46
  store i64 -4981261766360305936, i64* %225, !mcsema_real_eip !46
  store i64 %224, i64* %RSP_val, !mcsema_real_eip !46
  %226 = load i64, i64* %RAX_val, !mcsema_real_eip !46
  store i64 %226, i64* %RAX, !mcsema_real_eip !46
  %227 = load i64, i64* %RBX_val, !mcsema_real_eip !46
  store i64 %227, i64* %RBX, !mcsema_real_eip !46
  %228 = load i64, i64* %RCX_val, !mcsema_real_eip !46
  store i64 %228, i64* %RCX, !mcsema_real_eip !46
  %229 = load i64, i64* %RDX_val, !mcsema_real_eip !46
  store i64 %229, i64* %RDX, !mcsema_real_eip !46
  %230 = load i64, i64* %RSI_val, !mcsema_real_eip !46
  store i64 %230, i64* %RSI, !mcsema_real_eip !46
  %231 = load i64, i64* %RDI_val, !mcsema_real_eip !46
  store i64 %231, i64* %RDI, !mcsema_real_eip !46
  %232 = load i64, i64* %RSP_val, !mcsema_real_eip !46
  store i64 %232, i64* %RSP, !mcsema_real_eip !46
  %233 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  store i64 %233, i64* %RBP, !mcsema_real_eip !46
  %234 = load i64, i64* %R8_val, !mcsema_real_eip !46
  store i64 %234, i64* %R8, !mcsema_real_eip !46
  %235 = load i64, i64* %R9_val, !mcsema_real_eip !46
  store i64 %235, i64* %R9, !mcsema_real_eip !46
  %236 = load i64, i64* %R10_val, !mcsema_real_eip !46
  store i64 %236, i64* %R10, !mcsema_real_eip !46
  %237 = load i64, i64* %R11_val, !mcsema_real_eip !46
  store i64 %237, i64* %R11, !mcsema_real_eip !46
  %238 = load i64, i64* %R12_val, !mcsema_real_eip !46
  store i64 %238, i64* %R12, !mcsema_real_eip !46
  %239 = load i64, i64* %R13_val, !mcsema_real_eip !46
  store i64 %239, i64* %R13, !mcsema_real_eip !46
  %240 = load i64, i64* %R14_val, !mcsema_real_eip !46
  store i64 %240, i64* %R14, !mcsema_real_eip !46
  %241 = load i64, i64* %R15_val, !mcsema_real_eip !46
  store i64 %241, i64* %R15, !mcsema_real_eip !46
  %242 = load i64, i64* %RIP_val, !mcsema_real_eip !46
  store i64 %242, i64* %RIP, !mcsema_real_eip !46
  %243 = load i1, i1* %CF_val, !mcsema_real_eip !46
  store i1 %243, i1* %CF, align 1, !mcsema_real_eip !46
  %244 = load i1, i1* %PF_val, !mcsema_real_eip !46
  store i1 %244, i1* %PF, align 1, !mcsema_real_eip !46
  %245 = load i1, i1* %AF_val, !mcsema_real_eip !46
  store i1 %245, i1* %AF, align 1, !mcsema_real_eip !46
  %246 = load i1, i1* %ZF_val, !mcsema_real_eip !46
  store i1 %246, i1* %ZF, align 1, !mcsema_real_eip !46
  %247 = load i1, i1* %SF_val, !mcsema_real_eip !46
  store i1 %247, i1* %SF, align 1, !mcsema_real_eip !46
  %248 = load i1, i1* %OF_val, !mcsema_real_eip !46
  store i1 %248, i1* %OF, align 1, !mcsema_real_eip !46
  %249 = load i1, i1* %DF_val, !mcsema_real_eip !46
  store i1 %249, i1* %DF, align 1, !mcsema_real_eip !46
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !46
  %250 = load i1, i1* %FPU_B_val, !mcsema_real_eip !46
  store i1 %250, i1* %FPU_B, align 1, !mcsema_real_eip !46
  %251 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !46
  store i1 %251, i1* %FPU_C3, align 1, !mcsema_real_eip !46
  %252 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !46
  store i3 %252, i3* %FPU_TOP, align 1, !mcsema_real_eip !46
  %253 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !46
  store i1 %253, i1* %FPU_C2, align 1, !mcsema_real_eip !46
  %254 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !46
  store i1 %254, i1* %FPU_C1, align 1, !mcsema_real_eip !46
  %255 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !46
  store i1 %255, i1* %FPU_C0, align 1, !mcsema_real_eip !46
  %256 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !46
  store i1 %256, i1* %FPU_ES, align 1, !mcsema_real_eip !46
  %257 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !46
  store i1 %257, i1* %FPU_SF, align 1, !mcsema_real_eip !46
  %258 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !46
  store i1 %258, i1* %FPU_PE, align 1, !mcsema_real_eip !46
  %259 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !46
  store i1 %259, i1* %FPU_UE, align 1, !mcsema_real_eip !46
  %260 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !46
  store i1 %260, i1* %FPU_OE, align 1, !mcsema_real_eip !46
  %261 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !46
  store i1 %261, i1* %FPU_ZE, align 1, !mcsema_real_eip !46
  %262 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !46
  store i1 %262, i1* %FPU_DE, align 1, !mcsema_real_eip !46
  %263 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !46
  store i1 %263, i1* %FPU_IE, align 1, !mcsema_real_eip !46
  %264 = load i1, i1* %FPU_X_val, !mcsema_real_eip !46
  store i1 %264, i1* %FPU_X, align 1, !mcsema_real_eip !46
  %265 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !46
  store i2 %265, i2* %FPU_RC, align 1, !mcsema_real_eip !46
  %266 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !46
  store i2 %266, i2* %FPU_PC, align 1, !mcsema_real_eip !46
  %267 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !46
  store i1 %267, i1* %FPU_PM, align 1, !mcsema_real_eip !46
  %268 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !46
  store i1 %268, i1* %FPU_UM, align 1, !mcsema_real_eip !46
  %269 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !46
  store i1 %269, i1* %FPU_OM, align 1, !mcsema_real_eip !46
  %270 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !46
  store i1 %270, i1* %FPU_ZM, align 1, !mcsema_real_eip !46
  %271 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !46
  store i1 %271, i1* %FPU_DM, align 1, !mcsema_real_eip !46
  %272 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !46
  store i1 %272, i1* %FPU_IM, align 1, !mcsema_real_eip !46
  %273 = load i64, i64* %53, align 4
  store i64 %273, i64* %52, align 4
  %274 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !46
  store i16 %274, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !46
  %275 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !46
  store i64 %275, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !46
  %276 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !46
  store i16 %276, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !46
  %277 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !46
  store i64 %277, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !46
  %278 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !46
  store i11 %278, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !46
  %279 = load i128, i128* %XMM0_val, !mcsema_real_eip !46
  store i128 %279, i128* %XMM0, align 1, !mcsema_real_eip !46
  %280 = load i128, i128* %XMM1_val, !mcsema_real_eip !46
  store i128 %280, i128* %XMM1, align 1, !mcsema_real_eip !46
  %281 = load i128, i128* %XMM2_val, !mcsema_real_eip !46
  store i128 %281, i128* %XMM2, align 1, !mcsema_real_eip !46
  %282 = load i128, i128* %XMM3_val, !mcsema_real_eip !46
  store i128 %282, i128* %XMM3, align 1, !mcsema_real_eip !46
  %283 = load i128, i128* %XMM4_val, !mcsema_real_eip !46
  store i128 %283, i128* %XMM4, align 1, !mcsema_real_eip !46
  %284 = load i128, i128* %XMM5_val, !mcsema_real_eip !46
  store i128 %284, i128* %XMM5, align 1, !mcsema_real_eip !46
  %285 = load i128, i128* %XMM6_val, !mcsema_real_eip !46
  store i128 %285, i128* %XMM6, align 1, !mcsema_real_eip !46
  %286 = load i128, i128* %XMM7_val, !mcsema_real_eip !46
  store i128 %286, i128* %XMM7, align 1, !mcsema_real_eip !46
  %287 = load i128, i128* %XMM8_val, !mcsema_real_eip !46
  store i128 %287, i128* %XMM8, align 1, !mcsema_real_eip !46
  %288 = load i128, i128* %XMM9_val, !mcsema_real_eip !46
  store i128 %288, i128* %XMM9, align 1, !mcsema_real_eip !46
  %289 = load i128, i128* %XMM10_val, !mcsema_real_eip !46
  store i128 %289, i128* %XMM10, align 1, !mcsema_real_eip !46
  %290 = load i128, i128* %XMM11_val, !mcsema_real_eip !46
  store i128 %290, i128* %XMM11, align 1, !mcsema_real_eip !46
  %291 = load i128, i128* %XMM12_val, !mcsema_real_eip !46
  store i128 %291, i128* %XMM12, align 1, !mcsema_real_eip !46
  %292 = load i128, i128* %XMM13_val, !mcsema_real_eip !46
  store i128 %292, i128* %XMM13, align 1, !mcsema_real_eip !46
  %293 = load i128, i128* %XMM14_val, !mcsema_real_eip !46
  store i128 %293, i128* %XMM14, align 1, !mcsema_real_eip !46
  %294 = load i128, i128* %XMM15_val, !mcsema_real_eip !46
  store i128 %294, i128* %XMM15, align 1, !mcsema_real_eip !46
  %295 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !46
  store i64 %295, i64* %STACK_BASE, align 1, !mcsema_real_eip !46
  %296 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !46
  store i64 %296, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !46
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !46
  %297 = load i64, i64* %RAX, !mcsema_real_eip !46
  store i64 %297, i64* %RAX_val, !mcsema_real_eip !46
  %298 = load i64, i64* %RBX, !mcsema_real_eip !46
  store i64 %298, i64* %RBX_val, !mcsema_real_eip !46
  %299 = load i64, i64* %RCX, !mcsema_real_eip !46
  store i64 %299, i64* %RCX_val, !mcsema_real_eip !46
  %300 = load i64, i64* %RDX, !mcsema_real_eip !46
  store i64 %300, i64* %RDX_val, !mcsema_real_eip !46
  %301 = load i64, i64* %RSI, !mcsema_real_eip !46
  store i64 %301, i64* %RSI_val, !mcsema_real_eip !46
  %302 = load i64, i64* %RDI, !mcsema_real_eip !46
  store i64 %302, i64* %RDI_val, !mcsema_real_eip !46
  %303 = load i64, i64* %RSP, !mcsema_real_eip !46
  store i64 %303, i64* %RSP_val, !mcsema_real_eip !46
  %304 = load i64, i64* %RBP, !mcsema_real_eip !46
  store i64 %304, i64* %RBP_val, !mcsema_real_eip !46
  %305 = load i64, i64* %R8, !mcsema_real_eip !46
  store i64 %305, i64* %R8_val, !mcsema_real_eip !46
  %306 = load i64, i64* %R9, !mcsema_real_eip !46
  store i64 %306, i64* %R9_val, !mcsema_real_eip !46
  %307 = load i64, i64* %R10, !mcsema_real_eip !46
  store i64 %307, i64* %R10_val, !mcsema_real_eip !46
  %308 = load i64, i64* %R11, !mcsema_real_eip !46
  store i64 %308, i64* %R11_val, !mcsema_real_eip !46
  %309 = load i64, i64* %R12, !mcsema_real_eip !46
  store i64 %309, i64* %R12_val, !mcsema_real_eip !46
  %310 = load i64, i64* %R13, !mcsema_real_eip !46
  store i64 %310, i64* %R13_val, !mcsema_real_eip !46
  %311 = load i64, i64* %R14, !mcsema_real_eip !46
  store i64 %311, i64* %R14_val, !mcsema_real_eip !46
  %312 = load i64, i64* %R15, !mcsema_real_eip !46
  store i64 %312, i64* %R15_val, !mcsema_real_eip !46
  %313 = load i64, i64* %RIP, !mcsema_real_eip !46
  store i64 %313, i64* %RIP_val, !mcsema_real_eip !46
  %314 = load i1, i1* %CF, align 1, !mcsema_real_eip !46
  store i1 %314, i1* %CF_val, !mcsema_real_eip !46
  %315 = load i1, i1* %PF, align 1, !mcsema_real_eip !46
  store i1 %315, i1* %PF_val, !mcsema_real_eip !46
  %316 = load i1, i1* %AF, align 1, !mcsema_real_eip !46
  store i1 %316, i1* %AF_val, !mcsema_real_eip !46
  %317 = load i1, i1* %ZF, align 1, !mcsema_real_eip !46
  store i1 %317, i1* %ZF_val, !mcsema_real_eip !46
  %318 = load i1, i1* %SF, align 1, !mcsema_real_eip !46
  store i1 %318, i1* %SF_val, !mcsema_real_eip !46
  %319 = load i1, i1* %OF, align 1, !mcsema_real_eip !46
  store i1 %319, i1* %OF_val, !mcsema_real_eip !46
  %320 = load i1, i1* %DF, align 1, !mcsema_real_eip !46
  store i1 %320, i1* %DF_val, !mcsema_real_eip !46
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !46
  %321 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !46
  store i1 %321, i1* %FPU_B_val, !mcsema_real_eip !46
  %322 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !46
  store i1 %322, i1* %FPU_C3_val, !mcsema_real_eip !46
  %323 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !46
  store i3 %323, i3* %FPU_TOP_val, !mcsema_real_eip !46
  %324 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !46
  store i1 %324, i1* %FPU_C2_val, !mcsema_real_eip !46
  %325 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !46
  store i1 %325, i1* %FPU_C1_val, !mcsema_real_eip !46
  %326 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !46
  store i1 %326, i1* %FPU_C0_val, !mcsema_real_eip !46
  %327 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !46
  store i1 %327, i1* %FPU_ES_val, !mcsema_real_eip !46
  %328 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !46
  store i1 %328, i1* %FPU_SF_val, !mcsema_real_eip !46
  %329 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !46
  store i1 %329, i1* %FPU_PE_val, !mcsema_real_eip !46
  %330 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !46
  store i1 %330, i1* %FPU_UE_val, !mcsema_real_eip !46
  %331 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !46
  store i1 %331, i1* %FPU_OE_val, !mcsema_real_eip !46
  %332 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !46
  store i1 %332, i1* %FPU_ZE_val, !mcsema_real_eip !46
  %333 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !46
  store i1 %333, i1* %FPU_DE_val, !mcsema_real_eip !46
  %334 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !46
  store i1 %334, i1* %FPU_IE_val, !mcsema_real_eip !46
  %335 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !46
  store i1 %335, i1* %FPU_X_val, !mcsema_real_eip !46
  %336 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !46
  store i2 %336, i2* %FPU_RC_val, !mcsema_real_eip !46
  %337 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !46
  store i2 %337, i2* %FPU_PC_val, !mcsema_real_eip !46
  %338 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !46
  store i1 %338, i1* %FPU_PM_val, !mcsema_real_eip !46
  %339 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !46
  store i1 %339, i1* %FPU_UM_val, !mcsema_real_eip !46
  %340 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !46
  store i1 %340, i1* %FPU_OM_val, !mcsema_real_eip !46
  %341 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !46
  store i1 %341, i1* %FPU_ZM_val, !mcsema_real_eip !46
  %342 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !46
  store i1 %342, i1* %FPU_DM_val, !mcsema_real_eip !46
  %343 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !46
  store i1 %343, i1* %FPU_IM_val, !mcsema_real_eip !46
  %344 = load i64, i64* %52, align 4
  store i64 %344, i64* %53, align 4
  %345 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !46
  store i16 %345, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !46
  %346 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !46
  store i64 %346, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !46
  %347 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !46
  store i16 %347, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !46
  %348 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !46
  store i64 %348, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !46
  %349 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !46
  store i11 %349, i11* %FPU_FOPCODE_val, !mcsema_real_eip !46
  %350 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !46
  store i128 %350, i128* %XMM0_val, !mcsema_real_eip !46
  %351 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !46
  store i128 %351, i128* %XMM1_val, !mcsema_real_eip !46
  %352 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !46
  store i128 %352, i128* %XMM2_val, !mcsema_real_eip !46
  %353 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !46
  store i128 %353, i128* %XMM3_val, !mcsema_real_eip !46
  %354 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !46
  store i128 %354, i128* %XMM4_val, !mcsema_real_eip !46
  %355 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !46
  store i128 %355, i128* %XMM5_val, !mcsema_real_eip !46
  %356 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !46
  store i128 %356, i128* %XMM6_val, !mcsema_real_eip !46
  %357 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !46
  store i128 %357, i128* %XMM7_val, !mcsema_real_eip !46
  %358 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !46
  store i128 %358, i128* %XMM8_val, !mcsema_real_eip !46
  %359 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !46
  store i128 %359, i128* %XMM9_val, !mcsema_real_eip !46
  %360 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !46
  store i128 %360, i128* %XMM10_val, !mcsema_real_eip !46
  %361 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !46
  store i128 %361, i128* %XMM11_val, !mcsema_real_eip !46
  %362 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !46
  store i128 %362, i128* %XMM12_val, !mcsema_real_eip !46
  %363 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !46
  store i128 %363, i128* %XMM13_val, !mcsema_real_eip !46
  %364 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !46
  store i128 %364, i128* %XMM14_val, !mcsema_real_eip !46
  %365 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !46
  store i128 %365, i128* %XMM15_val, !mcsema_real_eip !46
  %366 = load i64, i64* %STACK_BASE, !mcsema_real_eip !46
  store i64 %366, i64* %STACK_BASE_val, !mcsema_real_eip !46
  %367 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !46
  store i64 %367, i64* %STACK_LIMIT_val, !mcsema_real_eip !46
  %368 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  %369 = add i64 %368, -32, !mcsema_real_eip !47
  %370 = inttoptr i64 %369 to i64*, !mcsema_real_eip !47
  %371 = load i64, i64* %RAX_val, !mcsema_real_eip !47
  store i64 %371, i64* %370, !mcsema_real_eip !47
  %372 = load i64, i64* %RBP_val, !mcsema_real_eip !48
  %373 = add i64 %372, -32, !mcsema_real_eip !48
  %374 = inttoptr i64 %373 to i64*, !mcsema_real_eip !48
  %375 = load i64, i64* %374, !mcsema_real_eip !48
  store i64 %375, i64* %RAX_val, !mcsema_real_eip !48
  %376 = inttoptr i64 %375 to i64*, !mcsema_real_eip !49
  %377 = bitcast i64* %376 to i32*
  %378 = load i32, i32* %377, !mcsema_real_eip !49
  %379 = zext i32 %378 to i64, !mcsema_real_eip !49
  store i64 %379, i64* %RSI_val, !mcsema_real_eip !49
  %380 = load i64, i64* %RBP_val, !mcsema_real_eip !50
  %381 = add i64 %380, -32, !mcsema_real_eip !50
  %382 = inttoptr i64 %381 to i64*, !mcsema_real_eip !50
  %383 = load i64, i64* %382, !mcsema_real_eip !50
  store i64 %383, i64* %RAX_val, !mcsema_real_eip !50
  %384 = add i64 %383, 4, !mcsema_real_eip !51
  %385 = inttoptr i64 %384 to i64*, !mcsema_real_eip !51
  %386 = bitcast i64* %385 to i32*
  %387 = load i32, i32* %386, !mcsema_real_eip !51
  %388 = load i64, i64* %RSI_val, !mcsema_real_eip !51
  %389 = trunc i64 %388 to i32, !mcsema_real_eip !51
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %389, i32 %387)
  %390 = extractvalue { i32, i1 } %uadd, 0
  %391 = xor i32 %390, %387, !mcsema_real_eip !51
  %392 = xor i32 %391, %389, !mcsema_real_eip !51
  %393 = and i32 %392, 16, !mcsema_real_eip !51
  %394 = icmp ne i32 %393, 0, !mcsema_real_eip !51
  store i1 %394, i1* %AF_val, !mcsema_real_eip !51
  %395 = icmp slt i32 %390, 0
  store i1 %395, i1* %SF_val, !mcsema_real_eip !51
  %396 = icmp eq i32 %390, 0, !mcsema_real_eip !51
  store i1 %396, i1* %ZF_val, !mcsema_real_eip !51
  %397 = xor i32 %387, -2147483648, !mcsema_real_eip !51
  %398 = xor i32 %397, %389, !mcsema_real_eip !51
  %399 = and i32 %391, %398, !mcsema_real_eip !51
  %400 = icmp slt i32 %399, 0
  store i1 %400, i1* %OF_val, !mcsema_real_eip !51
  %401 = trunc i32 %390 to i8, !mcsema_real_eip !51
  %402 = tail call i8 @llvm.ctpop.i8(i8 %401), !mcsema_real_eip !51
  %403 = and i8 %402, 1
  %404 = icmp eq i8 %403, 0
  store i1 %404, i1* %PF_val, !mcsema_real_eip !51
  %405 = extractvalue { i32, i1 } %uadd, 1
  store i1 %405, i1* %CF_val, !mcsema_real_eip !51
  %406 = zext i32 %390 to i64, !mcsema_real_eip !51
  store i64 %406, i64* %RSI_val, !mcsema_real_eip !51
  %407 = load i64, i64* %RBP_val, !mcsema_real_eip !52
  %408 = add i64 %407, -32, !mcsema_real_eip !52
  %409 = inttoptr i64 %408 to i64*, !mcsema_real_eip !52
  %410 = load i64, i64* %409, !mcsema_real_eip !52
  store i64 %410, i64* %RAX_val, !mcsema_real_eip !52
  %411 = add i64 %410, 8, !mcsema_real_eip !53
  %412 = inttoptr i64 %411 to i64*, !mcsema_real_eip !53
  %413 = bitcast i64* %412 to i32*
  %414 = load i32, i32* %413, !mcsema_real_eip !53
  %415 = load i64, i64* %RSI_val, !mcsema_real_eip !53
  %416 = trunc i64 %415 to i32, !mcsema_real_eip !53
  %417 = add i32 %416, %414
  %418 = zext i32 %417 to i64, !mcsema_real_eip !53
  store i64 %418, i64* %RSI_val, !mcsema_real_eip !53
  store i64 %418, i64* %RAX_val, !mcsema_real_eip !54
  %419 = load i64, i64* %RSP_val, !mcsema_real_eip !55
  %uadd212 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %419, i64 112)
  %420 = extractvalue { i64, i1 } %uadd212, 0
  %421 = xor i64 %420, %419, !mcsema_real_eip !55
  %422 = and i64 %421, 16
  %423 = icmp eq i64 %422, 0
  store i1 %423, i1* %AF_val, !mcsema_real_eip !55
  %424 = icmp slt i64 %420, 0
  store i1 %424, i1* %SF_val, !mcsema_real_eip !55
  %425 = icmp eq i64 %420, 0, !mcsema_real_eip !55
  store i1 %425, i1* %ZF_val, !mcsema_real_eip !55
  %426 = xor i64 %419, -9223372036854775808, !mcsema_real_eip !55
  %427 = and i64 %421, %426, !mcsema_real_eip !55
  %428 = icmp slt i64 %427, 0
  store i1 %428, i1* %OF_val, !mcsema_real_eip !55
  %429 = trunc i64 %420 to i8, !mcsema_real_eip !55
  %430 = tail call i8 @llvm.ctpop.i8(i8 %429), !mcsema_real_eip !55
  %431 = and i8 %430, 1
  %432 = icmp eq i8 %431, 0
  store i1 %432, i1* %PF_val, !mcsema_real_eip !55
  %433 = extractvalue { i64, i1 } %uadd212, 1
  store i1 %433, i1* %CF_val, !mcsema_real_eip !55
  store i64 %420, i64* %RSP_val, !mcsema_real_eip !55
  %434 = inttoptr i64 %420 to i64*, !mcsema_real_eip !56
  %435 = load i64, i64* %434, !mcsema_real_eip !56
  store i64 %435, i64* %RBP_val, !mcsema_real_eip !56
  %436 = add i64 %420, 16, !mcsema_real_eip !57
  store i64 %436, i64* %RSP_val, !mcsema_real_eip !57
  %437 = load i64, i64* %RAX_val, !mcsema_real_eip !57
  store i64 %437, i64* %RAX, !mcsema_real_eip !57
  %438 = load i64, i64* %RBX_val, !mcsema_real_eip !57
  store i64 %438, i64* %RBX, !mcsema_real_eip !57
  %439 = load i64, i64* %RCX_val, !mcsema_real_eip !57
  store i64 %439, i64* %RCX, !mcsema_real_eip !57
  %440 = load i64, i64* %RDX_val, !mcsema_real_eip !57
  store i64 %440, i64* %RDX, !mcsema_real_eip !57
  %441 = load i64, i64* %RSI_val, !mcsema_real_eip !57
  store i64 %441, i64* %RSI, !mcsema_real_eip !57
  %442 = load i64, i64* %RDI_val, !mcsema_real_eip !57
  store i64 %442, i64* %RDI, !mcsema_real_eip !57
  %443 = load i64, i64* %RSP_val, !mcsema_real_eip !57
  store i64 %443, i64* %RSP, !mcsema_real_eip !57
  %444 = load i64, i64* %RBP_val, !mcsema_real_eip !57
  store i64 %444, i64* %RBP, !mcsema_real_eip !57
  %445 = load i64, i64* %R8_val, !mcsema_real_eip !57
  store i64 %445, i64* %R8, !mcsema_real_eip !57
  %446 = load i64, i64* %R9_val, !mcsema_real_eip !57
  store i64 %446, i64* %R9, !mcsema_real_eip !57
  %447 = load i64, i64* %R10_val, !mcsema_real_eip !57
  store i64 %447, i64* %R10, !mcsema_real_eip !57
  %448 = load i64, i64* %R11_val, !mcsema_real_eip !57
  store i64 %448, i64* %R11, !mcsema_real_eip !57
  %449 = load i64, i64* %R12_val, !mcsema_real_eip !57
  store i64 %449, i64* %R12, !mcsema_real_eip !57
  %450 = load i64, i64* %R13_val, !mcsema_real_eip !57
  store i64 %450, i64* %R13, !mcsema_real_eip !57
  %451 = load i64, i64* %R14_val, !mcsema_real_eip !57
  store i64 %451, i64* %R14, !mcsema_real_eip !57
  %452 = load i64, i64* %R15_val, !mcsema_real_eip !57
  store i64 %452, i64* %R15, !mcsema_real_eip !57
  %453 = load i64, i64* %RIP_val, !mcsema_real_eip !57
  store i64 %453, i64* %RIP, !mcsema_real_eip !57
  %454 = load i1, i1* %CF_val, !mcsema_real_eip !57
  store i1 %454, i1* %CF, align 1, !mcsema_real_eip !57
  %455 = load i1, i1* %PF_val, !mcsema_real_eip !57
  store i1 %455, i1* %PF, align 1, !mcsema_real_eip !57
  %456 = load i1, i1* %AF_val, !mcsema_real_eip !57
  store i1 %456, i1* %AF, align 1, !mcsema_real_eip !57
  %457 = load i1, i1* %ZF_val, !mcsema_real_eip !57
  store i1 %457, i1* %ZF, align 1, !mcsema_real_eip !57
  %458 = load i1, i1* %SF_val, !mcsema_real_eip !57
  store i1 %458, i1* %SF, align 1, !mcsema_real_eip !57
  %459 = load i1, i1* %OF_val, !mcsema_real_eip !57
  store i1 %459, i1* %OF, align 1, !mcsema_real_eip !57
  %460 = load i1, i1* %DF_val, !mcsema_real_eip !57
  store i1 %460, i1* %DF, align 1, !mcsema_real_eip !57
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !57
  %461 = load i1, i1* %FPU_B_val, !mcsema_real_eip !57
  store i1 %461, i1* %FPU_B, align 1, !mcsema_real_eip !57
  %462 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !57
  store i1 %462, i1* %FPU_C3, align 1, !mcsema_real_eip !57
  %463 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !57
  store i3 %463, i3* %FPU_TOP, align 1, !mcsema_real_eip !57
  %464 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !57
  store i1 %464, i1* %FPU_C2, align 1, !mcsema_real_eip !57
  %465 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !57
  store i1 %465, i1* %FPU_C1, align 1, !mcsema_real_eip !57
  %466 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !57
  store i1 %466, i1* %FPU_C0, align 1, !mcsema_real_eip !57
  %467 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !57
  store i1 %467, i1* %FPU_ES, align 1, !mcsema_real_eip !57
  %468 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !57
  store i1 %468, i1* %FPU_SF, align 1, !mcsema_real_eip !57
  %469 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !57
  store i1 %469, i1* %FPU_PE, align 1, !mcsema_real_eip !57
  %470 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !57
  store i1 %470, i1* %FPU_UE, align 1, !mcsema_real_eip !57
  %471 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !57
  store i1 %471, i1* %FPU_OE, align 1, !mcsema_real_eip !57
  %472 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !57
  store i1 %472, i1* %FPU_ZE, align 1, !mcsema_real_eip !57
  %473 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !57
  store i1 %473, i1* %FPU_DE, align 1, !mcsema_real_eip !57
  %474 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !57
  store i1 %474, i1* %FPU_IE, align 1, !mcsema_real_eip !57
  %475 = load i1, i1* %FPU_X_val, !mcsema_real_eip !57
  store i1 %475, i1* %FPU_X, align 1, !mcsema_real_eip !57
  %476 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !57
  store i2 %476, i2* %FPU_RC, align 1, !mcsema_real_eip !57
  %477 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !57
  store i2 %477, i2* %FPU_PC, align 1, !mcsema_real_eip !57
  %478 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !57
  store i1 %478, i1* %FPU_PM, align 1, !mcsema_real_eip !57
  %479 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !57
  store i1 %479, i1* %FPU_UM, align 1, !mcsema_real_eip !57
  %480 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !57
  store i1 %480, i1* %FPU_OM, align 1, !mcsema_real_eip !57
  %481 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !57
  store i1 %481, i1* %FPU_ZM, align 1, !mcsema_real_eip !57
  %482 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !57
  store i1 %482, i1* %FPU_DM, align 1, !mcsema_real_eip !57
  %483 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !57
  store i1 %483, i1* %FPU_IM, align 1, !mcsema_real_eip !57
  %484 = load i64, i64* %53, align 4
  store i64 %484, i64* %52, align 4
  %485 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !57
  store i16 %485, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !57
  %486 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !57
  store i64 %486, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !57
  %487 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !57
  store i16 %487, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !57
  %488 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !57
  store i64 %488, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !57
  %489 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !57
  store i11 %489, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !57
  %490 = load i128, i128* %XMM0_val, !mcsema_real_eip !57
  store i128 %490, i128* %XMM0, align 1, !mcsema_real_eip !57
  %491 = load i128, i128* %XMM1_val, !mcsema_real_eip !57
  store i128 %491, i128* %XMM1, align 1, !mcsema_real_eip !57
  %492 = load i128, i128* %XMM2_val, !mcsema_real_eip !57
  store i128 %492, i128* %XMM2, align 1, !mcsema_real_eip !57
  %493 = load i128, i128* %XMM3_val, !mcsema_real_eip !57
  store i128 %493, i128* %XMM3, align 1, !mcsema_real_eip !57
  %494 = load i128, i128* %XMM4_val, !mcsema_real_eip !57
  store i128 %494, i128* %XMM4, align 1, !mcsema_real_eip !57
  %495 = load i128, i128* %XMM5_val, !mcsema_real_eip !57
  store i128 %495, i128* %XMM5, align 1, !mcsema_real_eip !57
  %496 = load i128, i128* %XMM6_val, !mcsema_real_eip !57
  store i128 %496, i128* %XMM6, align 1, !mcsema_real_eip !57
  %497 = load i128, i128* %XMM7_val, !mcsema_real_eip !57
  store i128 %497, i128* %XMM7, align 1, !mcsema_real_eip !57
  %498 = load i128, i128* %XMM8_val, !mcsema_real_eip !57
  store i128 %498, i128* %XMM8, align 1, !mcsema_real_eip !57
  %499 = load i128, i128* %XMM9_val, !mcsema_real_eip !57
  store i128 %499, i128* %XMM9, align 1, !mcsema_real_eip !57
  %500 = load i128, i128* %XMM10_val, !mcsema_real_eip !57
  store i128 %500, i128* %XMM10, align 1, !mcsema_real_eip !57
  %501 = load i128, i128* %XMM11_val, !mcsema_real_eip !57
  store i128 %501, i128* %XMM11, align 1, !mcsema_real_eip !57
  %502 = load i128, i128* %XMM12_val, !mcsema_real_eip !57
  store i128 %502, i128* %XMM12, align 1, !mcsema_real_eip !57
  %503 = load i128, i128* %XMM13_val, !mcsema_real_eip !57
  store i128 %503, i128* %XMM13, align 1, !mcsema_real_eip !57
  %504 = load i128, i128* %XMM14_val, !mcsema_real_eip !57
  store i128 %504, i128* %XMM14, align 1, !mcsema_real_eip !57
  %505 = load i128, i128* %XMM15_val, !mcsema_real_eip !57
  store i128 %505, i128* %XMM15, align 1, !mcsema_real_eip !57
  %506 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !57
  store i64 %506, i64* %STACK_BASE, align 1, !mcsema_real_eip !57
  %507 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !57
  store i64 %507, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !57
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
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !58
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
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !58
  %59 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !58
  store i11 %59, i11* %FPU_FOPCODE_val, !mcsema_real_eip !58
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !58
  %60 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !58
  store i128 %60, i128* %XMM0_val, !mcsema_real_eip !58
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !58
  %61 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !58
  store i128 %61, i128* %XMM1_val, !mcsema_real_eip !58
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !58
  %62 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !58
  store i128 %62, i128* %XMM2_val, !mcsema_real_eip !58
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !58
  %63 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !58
  store i128 %63, i128* %XMM3_val, !mcsema_real_eip !58
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !58
  %64 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !58
  store i128 %64, i128* %XMM4_val, !mcsema_real_eip !58
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !58
  %65 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !58
  store i128 %65, i128* %XMM5_val, !mcsema_real_eip !58
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !58
  %66 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !58
  store i128 %66, i128* %XMM6_val, !mcsema_real_eip !58
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !58
  %67 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !58
  store i128 %67, i128* %XMM7_val, !mcsema_real_eip !58
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !58
  %68 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !58
  store i128 %68, i128* %XMM8_val, !mcsema_real_eip !58
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !58
  %69 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !58
  store i128 %69, i128* %XMM9_val, !mcsema_real_eip !58
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !58
  %70 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !58
  store i128 %70, i128* %XMM10_val, !mcsema_real_eip !58
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !58
  %71 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !58
  store i128 %71, i128* %XMM11_val, !mcsema_real_eip !58
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !58
  %72 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !58
  store i128 %72, i128* %XMM12_val, !mcsema_real_eip !58
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !58
  %73 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !58
  store i128 %73, i128* %XMM13_val, !mcsema_real_eip !58
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !58
  %74 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !58
  store i128 %74, i128* %XMM14_val, !mcsema_real_eip !58
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !58
  %75 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !58
  store i128 %75, i128* %XMM15_val, !mcsema_real_eip !58
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !58
  %76 = load i64, i64* %STACK_BASE, !mcsema_real_eip !58
  store i64 %76, i64* %STACK_BASE_val, !mcsema_real_eip !58
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !58
  %77 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !58
  store i64 %77, i64* %STACK_LIMIT_val, !mcsema_real_eip !58
  %78 = load i64, i64* %RBP_val, !mcsema_real_eip !58
  %79 = load i64, i64* %RSP_val, !mcsema_real_eip !58
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !58
  store i64 %78, i64* %81, !mcsema_real_eip !58
  store i64 %80, i64* %RBP_val, !mcsema_real_eip !59
  %82 = load i64, i64* %R14_val, !mcsema_real_eip !60
  %83 = add i64 %79, -16
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !60
  store i64 %82, i64* %84, !mcsema_real_eip !60
  %85 = load i64, i64* %RBX_val, !mcsema_real_eip !61
  %86 = add i64 %79, -24
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !61
  store i64 %85, i64* %87, !mcsema_real_eip !61
  %88 = add i64 %79, -120
  %89 = xor i64 %88, %86, !mcsema_real_eip !62
  %90 = and i64 %89, 16, !mcsema_real_eip !62
  %91 = icmp ne i64 %90, 0, !mcsema_real_eip !62
  store i1 %91, i1* %AF_val, !mcsema_real_eip !62
  %92 = trunc i64 %88 to i8, !mcsema_real_eip !62
  %93 = tail call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !62
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  store i1 %95, i1* %PF_val, !mcsema_real_eip !62
  %96 = icmp eq i64 %88, 0, !mcsema_real_eip !62
  store i1 %96, i1* %ZF_val, !mcsema_real_eip !62
  %97 = icmp slt i64 %88, 0
  store i1 %97, i1* %SF_val, !mcsema_real_eip !62
  %98 = icmp ult i64 %86, 96, !mcsema_real_eip !62
  store i1 %98, i1* %CF_val, !mcsema_real_eip !62
  %99 = and i64 %89, %86, !mcsema_real_eip !62
  %100 = icmp slt i64 %99, 0
  store i1 %100, i1* %OF_val, !mcsema_real_eip !62
  store i64 %88, i64* %RSP_val, !mcsema_real_eip !62
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !63
  %102 = add i64 %101, 48, !mcsema_real_eip !63
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !63
  %104 = load i64, i64* %103, !mcsema_real_eip !63
  store i64 %104, i64* %RAX_val, !mcsema_real_eip !63
  %105 = add i64 %101, 40, !mcsema_real_eip !64
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !64
  %107 = load i64, i64* %106, !mcsema_real_eip !64
  store i64 %107, i64* %R10_val, !mcsema_real_eip !64
  %108 = load i64, i64* %RBP_val, !mcsema_real_eip !65
  %109 = add i64 %108, 24, !mcsema_real_eip !65
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !65
  %111 = ptrtoint i64* %110 to i64, !mcsema_real_eip !65
  store i64 %111, i64* %R11_val, !mcsema_real_eip !65
  %112 = add i64 %108, 16, !mcsema_real_eip !66
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !66
  %114 = bitcast i64* %113 to i32*
  %115 = load i32, i32* %114, !mcsema_real_eip !66
  %116 = zext i32 %115 to i64, !mcsema_real_eip !66
  store i64 %116, i64* %RBX_val, !mcsema_real_eip !66
  store i64 12, i64* %R14_val, !mcsema_real_eip !67
  %117 = load i64, i64* %RBP_val, !mcsema_real_eip !68
  %118 = add i64 %117, -48, !mcsema_real_eip !68
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !68
  %120 = load i64, i64* %RDI_val, !mcsema_real_eip !68
  store i64 %120, i64* %119, !mcsema_real_eip !68
  %121 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  %122 = add i64 %121, -40, !mcsema_real_eip !69
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !69
  %124 = load i64, i64* %RSI_val, !mcsema_real_eip !69
  %125 = trunc i64 %124 to i32, !mcsema_real_eip !69
  %126 = bitcast i64* %123 to i32*
  store i32 %125, i32* %126, !mcsema_real_eip !69
  %127 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %128 = add i64 %127, -48, !mcsema_real_eip !70
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !70
  %130 = load i64, i64* %129, !mcsema_real_eip !70
  store i64 %130, i64* %RDI_val, !mcsema_real_eip !70
  %131 = add i64 %127, -32, !mcsema_real_eip !71
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !71
  store i64 %130, i64* %132, !mcsema_real_eip !71
  %133 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %134 = add i64 %133, -40, !mcsema_real_eip !72
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !72
  %136 = bitcast i64* %135 to i32*
  %137 = load i32, i32* %136, !mcsema_real_eip !72
  %138 = zext i32 %137 to i64, !mcsema_real_eip !72
  store i64 %138, i64* %RSI_val, !mcsema_real_eip !72
  %139 = load i64, i64* %RBP_val, !mcsema_real_eip !73
  %140 = add i64 %139, -24, !mcsema_real_eip !73
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !73
  %142 = bitcast i64* %141 to i32*
  store i32 %137, i32* %142, !mcsema_real_eip !73
  %143 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %144 = add i64 %143, -56, !mcsema_real_eip !74
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !74
  %146 = load i64, i64* %RDX_val, !mcsema_real_eip !74
  store i64 %146, i64* %145, !mcsema_real_eip !74
  %147 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %148 = add i64 %147, -64, !mcsema_real_eip !75
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !75
  %150 = load i64, i64* %RCX_val, !mcsema_real_eip !75
  store i64 %150, i64* %149, !mcsema_real_eip !75
  %151 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %152 = add i64 %151, -68, !mcsema_real_eip !76
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !76
  %154 = load i64, i64* %R8_val, !mcsema_real_eip !76
  %155 = trunc i64 %154 to i32, !mcsema_real_eip !76
  %156 = bitcast i64* %153 to i32*
  store i32 %155, i32* %156, !mcsema_real_eip !76
  %157 = load i64, i64* %RBP_val, !mcsema_real_eip !77
  %158 = add i64 %157, -72, !mcsema_real_eip !77
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !77
  %160 = load i64, i64* %R9_val, !mcsema_real_eip !77
  %161 = trunc i64 %160 to i32, !mcsema_real_eip !77
  %162 = bitcast i64* %159 to i32*
  store i32 %161, i32* %162, !mcsema_real_eip !77
  %163 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %164 = add i64 %163, -76, !mcsema_real_eip !78
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !78
  %166 = load i64, i64* %RBX_val, !mcsema_real_eip !78
  %167 = trunc i64 %166 to i32, !mcsema_real_eip !78
  %168 = bitcast i64* %165 to i32*
  store i32 %167, i32* %168, !mcsema_real_eip !78
  %169 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %170 = add i64 %169, -88, !mcsema_real_eip !79
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !79
  %172 = load i64, i64* %R10_val, !mcsema_real_eip !79
  store i64 %172, i64* %171, !mcsema_real_eip !79
  %173 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %174 = add i64 %173, -96, !mcsema_real_eip !80
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !80
  %176 = load i64, i64* %RAX_val, !mcsema_real_eip !80
  store i64 %176, i64* %175, !mcsema_real_eip !80
  %177 = load i64, i64* %R14_val, !mcsema_real_eip !81
  store i64 %177, i64* %RDI_val, !mcsema_real_eip !81
  %178 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %179 = add i64 %178, -112, !mcsema_real_eip !82
  %180 = inttoptr i64 %179 to i64*, !mcsema_real_eip !82
  %181 = load i64, i64* %R11_val, !mcsema_real_eip !82
  store i64 %181, i64* %180, !mcsema_real_eip !82
  %182 = load i64, i64* %RDI_val, !mcsema_real_eip !83
  %183 = tail call x86_64_sysvcc i64 @malloc(i64 %182), !mcsema_real_eip !83
  store i64 %183, i64* %RAX_val, !mcsema_real_eip !83
  %184 = load i64, i64* %RBP_val, !mcsema_real_eip !84
  %185 = add i64 %184, -104, !mcsema_real_eip !84
  %186 = inttoptr i64 %185 to i64*, !mcsema_real_eip !84
  store i64 %183, i64* %186, !mcsema_real_eip !84
  %187 = load i64, i64* %RBP_val, !mcsema_real_eip !85
  %188 = add i64 %187, -32, !mcsema_real_eip !85
  %189 = inttoptr i64 %188 to i64*, !mcsema_real_eip !85
  %190 = bitcast i64* %189 to i32*
  %191 = load i32, i32* %190, !mcsema_real_eip !85
  %192 = zext i32 %191 to i64, !mcsema_real_eip !85
  store i64 %192, i64* %RSI_val, !mcsema_real_eip !85
  %193 = load i64, i64* %RBP_val, !mcsema_real_eip !86
  %194 = add i64 %193, -56, !mcsema_real_eip !86
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !86
  %196 = load i64, i64* %195, !mcsema_real_eip !86
  store i64 %196, i64* %RAX_val, !mcsema_real_eip !86
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !87
  %198 = bitcast i64* %197 to i32*
  %199 = load i32, i32* %198, !mcsema_real_eip !87
  %200 = load i64, i64* %RSI_val, !mcsema_real_eip !87
  %201 = trunc i64 %200 to i32, !mcsema_real_eip !87
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %201, i32 %199)
  %202 = extractvalue { i32, i1 } %uadd, 0
  %203 = xor i32 %202, %199, !mcsema_real_eip !87
  %204 = xor i32 %203, %201, !mcsema_real_eip !87
  %205 = and i32 %204, 16, !mcsema_real_eip !87
  %206 = icmp ne i32 %205, 0, !mcsema_real_eip !87
  store i1 %206, i1* %AF_val, !mcsema_real_eip !87
  %207 = icmp slt i32 %202, 0
  store i1 %207, i1* %SF_val, !mcsema_real_eip !87
  %208 = icmp eq i32 %202, 0, !mcsema_real_eip !87
  store i1 %208, i1* %ZF_val, !mcsema_real_eip !87
  %209 = xor i32 %199, -2147483648, !mcsema_real_eip !87
  %210 = xor i32 %209, %201, !mcsema_real_eip !87
  %211 = and i32 %203, %210, !mcsema_real_eip !87
  %212 = icmp slt i32 %211, 0
  store i1 %212, i1* %OF_val, !mcsema_real_eip !87
  %213 = trunc i32 %202 to i8, !mcsema_real_eip !87
  %214 = tail call i8 @llvm.ctpop.i8(i8 %213), !mcsema_real_eip !87
  %215 = and i8 %214, 1
  %216 = icmp eq i8 %215, 0
  store i1 %216, i1* %PF_val, !mcsema_real_eip !87
  %217 = extractvalue { i32, i1 } %uadd, 1
  store i1 %217, i1* %CF_val, !mcsema_real_eip !87
  %218 = zext i32 %202 to i64, !mcsema_real_eip !87
  store i64 %218, i64* %RSI_val, !mcsema_real_eip !87
  %219 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  %220 = add i64 %219, -64, !mcsema_real_eip !88
  %221 = inttoptr i64 %220 to i64*, !mcsema_real_eip !88
  %222 = load i64, i64* %221, !mcsema_real_eip !88
  store i64 %222, i64* %RAX_val, !mcsema_real_eip !88
  %223 = inttoptr i64 %222 to i64*, !mcsema_real_eip !89
  %224 = bitcast i64* %223 to i32*
  %225 = load i32, i32* %224, !mcsema_real_eip !89
  %226 = load i64, i64* %RSI_val, !mcsema_real_eip !89
  %227 = trunc i64 %226 to i32, !mcsema_real_eip !89
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %227, i32 %225)
  %228 = extractvalue { i32, i1 } %uadd71, 0
  %229 = xor i32 %228, %225, !mcsema_real_eip !89
  %230 = xor i32 %229, %227, !mcsema_real_eip !89
  %231 = and i32 %230, 16, !mcsema_real_eip !89
  %232 = icmp ne i32 %231, 0, !mcsema_real_eip !89
  store i1 %232, i1* %AF_val, !mcsema_real_eip !89
  %233 = icmp slt i32 %228, 0
  store i1 %233, i1* %SF_val, !mcsema_real_eip !89
  %234 = icmp eq i32 %228, 0, !mcsema_real_eip !89
  store i1 %234, i1* %ZF_val, !mcsema_real_eip !89
  %235 = xor i32 %225, -2147483648, !mcsema_real_eip !89
  %236 = xor i32 %235, %227, !mcsema_real_eip !89
  %237 = and i32 %229, %236, !mcsema_real_eip !89
  %238 = icmp slt i32 %237, 0
  store i1 %238, i1* %OF_val, !mcsema_real_eip !89
  %239 = trunc i32 %228 to i8, !mcsema_real_eip !89
  %240 = tail call i8 @llvm.ctpop.i8(i8 %239), !mcsema_real_eip !89
  %241 = and i8 %240, 1
  %242 = icmp eq i8 %241, 0
  store i1 %242, i1* %PF_val, !mcsema_real_eip !89
  %243 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %243, i1* %CF_val, !mcsema_real_eip !89
  %244 = zext i32 %228 to i64, !mcsema_real_eip !89
  store i64 %244, i64* %RSI_val, !mcsema_real_eip !89
  %245 = load i64, i64* %RBP_val, !mcsema_real_eip !90
  %246 = add i64 %245, -112, !mcsema_real_eip !90
  %247 = inttoptr i64 %246 to i64*, !mcsema_real_eip !90
  %248 = load i64, i64* %247, !mcsema_real_eip !90
  store i64 %248, i64* %RAX_val, !mcsema_real_eip !90
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !91
  %250 = bitcast i64* %249 to i32*
  %251 = load i32, i32* %250, !mcsema_real_eip !91
  %252 = zext i32 %251 to i64, !mcsema_real_eip !91
  store i64 %252, i64* %R8_val, !mcsema_real_eip !91
  %253 = load i64, i64* %RBP_val, !mcsema_real_eip !92
  %254 = add i64 %253, -88, !mcsema_real_eip !92
  %255 = inttoptr i64 %254 to i64*, !mcsema_real_eip !92
  %256 = load i64, i64* %255, !mcsema_real_eip !92
  store i64 %256, i64* %RCX_val, !mcsema_real_eip !92
  %257 = inttoptr i64 %256 to i64*, !mcsema_real_eip !93
  %258 = bitcast i64* %257 to i32*
  %259 = load i32, i32* %258, !mcsema_real_eip !93
  %260 = load i64, i64* %R8_val, !mcsema_real_eip !93
  %261 = trunc i64 %260 to i32, !mcsema_real_eip !93
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %261, i32 %259)
  %262 = extractvalue { i32, i1 } %uadd72, 0
  %263 = xor i32 %262, %259, !mcsema_real_eip !93
  %264 = xor i32 %263, %261, !mcsema_real_eip !93
  %265 = and i32 %264, 16, !mcsema_real_eip !93
  %266 = icmp ne i32 %265, 0, !mcsema_real_eip !93
  store i1 %266, i1* %AF_val, !mcsema_real_eip !93
  %267 = icmp slt i32 %262, 0
  store i1 %267, i1* %SF_val, !mcsema_real_eip !93
  %268 = icmp eq i32 %262, 0, !mcsema_real_eip !93
  store i1 %268, i1* %ZF_val, !mcsema_real_eip !93
  %269 = xor i32 %259, -2147483648, !mcsema_real_eip !93
  %270 = xor i32 %269, %261, !mcsema_real_eip !93
  %271 = and i32 %263, %270, !mcsema_real_eip !93
  %272 = icmp slt i32 %271, 0
  store i1 %272, i1* %OF_val, !mcsema_real_eip !93
  %273 = trunc i32 %262 to i8, !mcsema_real_eip !93
  %274 = tail call i8 @llvm.ctpop.i8(i8 %273), !mcsema_real_eip !93
  %275 = and i8 %274, 1
  %276 = icmp eq i8 %275, 0
  store i1 %276, i1* %PF_val, !mcsema_real_eip !93
  %277 = extractvalue { i32, i1 } %uadd72, 1
  store i1 %277, i1* %CF_val, !mcsema_real_eip !93
  %278 = zext i32 %262 to i64, !mcsema_real_eip !93
  store i64 %278, i64* %R8_val, !mcsema_real_eip !93
  %279 = load i64, i64* %RBP_val, !mcsema_real_eip !94
  %280 = add i64 %279, -96, !mcsema_real_eip !94
  %281 = inttoptr i64 %280 to i64*, !mcsema_real_eip !94
  %282 = load i64, i64* %281, !mcsema_real_eip !94
  store i64 %282, i64* %RCX_val, !mcsema_real_eip !94
  %283 = inttoptr i64 %282 to i64*, !mcsema_real_eip !95
  %284 = bitcast i64* %283 to i32*
  %285 = load i32, i32* %284, !mcsema_real_eip !95
  %286 = load i64, i64* %R8_val, !mcsema_real_eip !95
  %287 = trunc i64 %286 to i32, !mcsema_real_eip !95
  %288 = add i32 %287, %285
  %289 = zext i32 %288 to i64, !mcsema_real_eip !95
  store i64 %289, i64* %R8_val, !mcsema_real_eip !95
  %290 = load i64, i64* %RSI_val, !mcsema_real_eip !96
  %291 = trunc i64 %290 to i32, !mcsema_real_eip !96
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %288, i32 %291)
  %292 = extractvalue { i32, i1 } %uadd74, 0
  %293 = xor i32 %292, %291, !mcsema_real_eip !96
  %294 = xor i32 %293, %288, !mcsema_real_eip !96
  %295 = and i32 %294, 16, !mcsema_real_eip !96
  %296 = icmp ne i32 %295, 0, !mcsema_real_eip !96
  store i1 %296, i1* %AF_val, !mcsema_real_eip !96
  %297 = icmp slt i32 %292, 0
  store i1 %297, i1* %SF_val, !mcsema_real_eip !96
  %298 = icmp eq i32 %292, 0, !mcsema_real_eip !96
  store i1 %298, i1* %ZF_val, !mcsema_real_eip !96
  %299 = xor i32 %288, -2147483648, !mcsema_real_eip !96
  %300 = xor i32 %299, %291, !mcsema_real_eip !96
  %301 = and i32 %293, %300, !mcsema_real_eip !96
  %302 = icmp slt i32 %301, 0
  store i1 %302, i1* %OF_val, !mcsema_real_eip !96
  %303 = trunc i32 %292 to i8, !mcsema_real_eip !96
  %304 = tail call i8 @llvm.ctpop.i8(i8 %303), !mcsema_real_eip !96
  %305 = and i8 %304, 1
  %306 = icmp eq i8 %305, 0
  store i1 %306, i1* %PF_val, !mcsema_real_eip !96
  %307 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %307, i1* %CF_val, !mcsema_real_eip !96
  %308 = zext i32 %292 to i64, !mcsema_real_eip !96
  store i64 %308, i64* %RSI_val, !mcsema_real_eip !96
  %309 = load i64, i64* %RBP_val, !mcsema_real_eip !97
  %310 = add i64 %309, -104, !mcsema_real_eip !97
  %311 = inttoptr i64 %310 to i64*, !mcsema_real_eip !97
  %312 = load i64, i64* %311, !mcsema_real_eip !97
  store i64 %312, i64* %RCX_val, !mcsema_real_eip !97
  %313 = inttoptr i64 %312 to i64*, !mcsema_real_eip !98
  %314 = load i64, i64* %RSI_val, !mcsema_real_eip !98
  %315 = trunc i64 %314 to i32, !mcsema_real_eip !98
  %316 = bitcast i64* %313 to i32*
  store i32 %315, i32* %316, !mcsema_real_eip !98
  %317 = load i64, i64* %RBP_val, !mcsema_real_eip !99
  %318 = add i64 %317, -28, !mcsema_real_eip !99
  %319 = inttoptr i64 %318 to i64*, !mcsema_real_eip !99
  %320 = bitcast i64* %319 to i32*
  %321 = load i32, i32* %320, !mcsema_real_eip !99
  %322 = zext i32 %321 to i64, !mcsema_real_eip !99
  store i64 %322, i64* %RSI_val, !mcsema_real_eip !99
  %323 = load i64, i64* %RBP_val, !mcsema_real_eip !100
  %324 = add i64 %323, -56, !mcsema_real_eip !100
  %325 = inttoptr i64 %324 to i64*, !mcsema_real_eip !100
  %326 = load i64, i64* %325, !mcsema_real_eip !100
  store i64 %326, i64* %RCX_val, !mcsema_real_eip !100
  %327 = add i64 %326, 4, !mcsema_real_eip !101
  %328 = inttoptr i64 %327 to i64*, !mcsema_real_eip !101
  %329 = bitcast i64* %328 to i32*
  %330 = load i32, i32* %329, !mcsema_real_eip !101
  %331 = load i64, i64* %RSI_val, !mcsema_real_eip !101
  %332 = trunc i64 %331 to i32, !mcsema_real_eip !101
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %332, i32 %330)
  %333 = extractvalue { i32, i1 } %uadd75, 0
  %334 = xor i32 %333, %330, !mcsema_real_eip !101
  %335 = xor i32 %334, %332, !mcsema_real_eip !101
  %336 = and i32 %335, 16, !mcsema_real_eip !101
  %337 = icmp ne i32 %336, 0, !mcsema_real_eip !101
  store i1 %337, i1* %AF_val, !mcsema_real_eip !101
  %338 = icmp slt i32 %333, 0
  store i1 %338, i1* %SF_val, !mcsema_real_eip !101
  %339 = icmp eq i32 %333, 0, !mcsema_real_eip !101
  store i1 %339, i1* %ZF_val, !mcsema_real_eip !101
  %340 = xor i32 %330, -2147483648, !mcsema_real_eip !101
  %341 = xor i32 %340, %332, !mcsema_real_eip !101
  %342 = and i32 %334, %341, !mcsema_real_eip !101
  %343 = icmp slt i32 %342, 0
  store i1 %343, i1* %OF_val, !mcsema_real_eip !101
  %344 = trunc i32 %333 to i8, !mcsema_real_eip !101
  %345 = tail call i8 @llvm.ctpop.i8(i8 %344), !mcsema_real_eip !101
  %346 = and i8 %345, 1
  %347 = icmp eq i8 %346, 0
  store i1 %347, i1* %PF_val, !mcsema_real_eip !101
  %348 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %348, i1* %CF_val, !mcsema_real_eip !101
  %349 = zext i32 %333 to i64, !mcsema_real_eip !101
  store i64 %349, i64* %RSI_val, !mcsema_real_eip !101
  %350 = load i64, i64* %RBP_val, !mcsema_real_eip !102
  %351 = add i64 %350, -64, !mcsema_real_eip !102
  %352 = inttoptr i64 %351 to i64*, !mcsema_real_eip !102
  %353 = load i64, i64* %352, !mcsema_real_eip !102
  store i64 %353, i64* %RCX_val, !mcsema_real_eip !102
  %354 = add i64 %353, 4, !mcsema_real_eip !103
  %355 = inttoptr i64 %354 to i64*, !mcsema_real_eip !103
  %356 = bitcast i64* %355 to i32*
  %357 = load i32, i32* %356, !mcsema_real_eip !103
  %358 = load i64, i64* %RSI_val, !mcsema_real_eip !103
  %359 = trunc i64 %358 to i32, !mcsema_real_eip !103
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %359, i32 %357)
  %360 = extractvalue { i32, i1 } %uadd76, 0
  %361 = xor i32 %360, %357, !mcsema_real_eip !103
  %362 = xor i32 %361, %359, !mcsema_real_eip !103
  %363 = and i32 %362, 16, !mcsema_real_eip !103
  %364 = icmp ne i32 %363, 0, !mcsema_real_eip !103
  store i1 %364, i1* %AF_val, !mcsema_real_eip !103
  %365 = icmp slt i32 %360, 0
  store i1 %365, i1* %SF_val, !mcsema_real_eip !103
  %366 = icmp eq i32 %360, 0, !mcsema_real_eip !103
  store i1 %366, i1* %ZF_val, !mcsema_real_eip !103
  %367 = xor i32 %357, -2147483648, !mcsema_real_eip !103
  %368 = xor i32 %367, %359, !mcsema_real_eip !103
  %369 = and i32 %361, %368, !mcsema_real_eip !103
  %370 = icmp slt i32 %369, 0
  store i1 %370, i1* %OF_val, !mcsema_real_eip !103
  %371 = trunc i32 %360 to i8, !mcsema_real_eip !103
  %372 = tail call i8 @llvm.ctpop.i8(i8 %371), !mcsema_real_eip !103
  %373 = and i8 %372, 1
  %374 = icmp eq i8 %373, 0
  store i1 %374, i1* %PF_val, !mcsema_real_eip !103
  %375 = extractvalue { i32, i1 } %uadd76, 1
  store i1 %375, i1* %CF_val, !mcsema_real_eip !103
  %376 = zext i32 %360 to i64, !mcsema_real_eip !103
  store i64 %376, i64* %RSI_val, !mcsema_real_eip !103
  %377 = load i64, i64* %RAX_val, !mcsema_real_eip !104
  %378 = add i64 %377, 4, !mcsema_real_eip !104
  %379 = inttoptr i64 %378 to i64*, !mcsema_real_eip !104
  %380 = bitcast i64* %379 to i32*
  %381 = load i32, i32* %380, !mcsema_real_eip !104
  %382 = zext i32 %381 to i64, !mcsema_real_eip !104
  store i64 %382, i64* %R8_val, !mcsema_real_eip !104
  %383 = load i64, i64* %RBP_val, !mcsema_real_eip !105
  %384 = add i64 %383, -88, !mcsema_real_eip !105
  %385 = inttoptr i64 %384 to i64*, !mcsema_real_eip !105
  %386 = load i64, i64* %385, !mcsema_real_eip !105
  store i64 %386, i64* %RCX_val, !mcsema_real_eip !105
  %387 = add i64 %386, 4, !mcsema_real_eip !106
  %388 = inttoptr i64 %387 to i64*, !mcsema_real_eip !106
  %389 = bitcast i64* %388 to i32*
  %390 = load i32, i32* %389, !mcsema_real_eip !106
  %391 = load i64, i64* %R8_val, !mcsema_real_eip !106
  %392 = trunc i64 %391 to i32, !mcsema_real_eip !106
  %uadd77 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %392, i32 %390)
  %393 = extractvalue { i32, i1 } %uadd77, 0
  %394 = xor i32 %393, %390, !mcsema_real_eip !106
  %395 = xor i32 %394, %392, !mcsema_real_eip !106
  %396 = and i32 %395, 16, !mcsema_real_eip !106
  %397 = icmp ne i32 %396, 0, !mcsema_real_eip !106
  store i1 %397, i1* %AF_val, !mcsema_real_eip !106
  %398 = icmp slt i32 %393, 0
  store i1 %398, i1* %SF_val, !mcsema_real_eip !106
  %399 = icmp eq i32 %393, 0, !mcsema_real_eip !106
  store i1 %399, i1* %ZF_val, !mcsema_real_eip !106
  %400 = xor i32 %390, -2147483648, !mcsema_real_eip !106
  %401 = xor i32 %400, %392, !mcsema_real_eip !106
  %402 = and i32 %394, %401, !mcsema_real_eip !106
  %403 = icmp slt i32 %402, 0
  store i1 %403, i1* %OF_val, !mcsema_real_eip !106
  %404 = trunc i32 %393 to i8, !mcsema_real_eip !106
  %405 = tail call i8 @llvm.ctpop.i8(i8 %404), !mcsema_real_eip !106
  %406 = and i8 %405, 1
  %407 = icmp eq i8 %406, 0
  store i1 %407, i1* %PF_val, !mcsema_real_eip !106
  %408 = extractvalue { i32, i1 } %uadd77, 1
  store i1 %408, i1* %CF_val, !mcsema_real_eip !106
  %409 = zext i32 %393 to i64, !mcsema_real_eip !106
  store i64 %409, i64* %R8_val, !mcsema_real_eip !106
  %410 = load i64, i64* %RBP_val, !mcsema_real_eip !107
  %411 = add i64 %410, -96, !mcsema_real_eip !107
  %412 = inttoptr i64 %411 to i64*, !mcsema_real_eip !107
  %413 = load i64, i64* %412, !mcsema_real_eip !107
  store i64 %413, i64* %RCX_val, !mcsema_real_eip !107
  %414 = add i64 %413, 4, !mcsema_real_eip !108
  %415 = inttoptr i64 %414 to i64*, !mcsema_real_eip !108
  %416 = bitcast i64* %415 to i32*
  %417 = load i32, i32* %416, !mcsema_real_eip !108
  %418 = load i64, i64* %R8_val, !mcsema_real_eip !108
  %419 = trunc i64 %418 to i32, !mcsema_real_eip !108
  %420 = add i32 %419, %417
  %421 = zext i32 %420 to i64, !mcsema_real_eip !108
  store i64 %421, i64* %R8_val, !mcsema_real_eip !108
  %422 = load i64, i64* %RSI_val, !mcsema_real_eip !109
  %423 = trunc i64 %422 to i32, !mcsema_real_eip !109
  %uadd79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %420, i32 %423)
  %424 = extractvalue { i32, i1 } %uadd79, 0
  %425 = xor i32 %424, %423, !mcsema_real_eip !109
  %426 = xor i32 %425, %420, !mcsema_real_eip !109
  %427 = and i32 %426, 16, !mcsema_real_eip !109
  %428 = icmp ne i32 %427, 0, !mcsema_real_eip !109
  store i1 %428, i1* %AF_val, !mcsema_real_eip !109
  %429 = icmp slt i32 %424, 0
  store i1 %429, i1* %SF_val, !mcsema_real_eip !109
  %430 = icmp eq i32 %424, 0, !mcsema_real_eip !109
  store i1 %430, i1* %ZF_val, !mcsema_real_eip !109
  %431 = xor i32 %420, -2147483648, !mcsema_real_eip !109
  %432 = xor i32 %431, %423, !mcsema_real_eip !109
  %433 = and i32 %425, %432, !mcsema_real_eip !109
  %434 = icmp slt i32 %433, 0
  store i1 %434, i1* %OF_val, !mcsema_real_eip !109
  %435 = trunc i32 %424 to i8, !mcsema_real_eip !109
  %436 = tail call i8 @llvm.ctpop.i8(i8 %435), !mcsema_real_eip !109
  %437 = and i8 %436, 1
  %438 = icmp eq i8 %437, 0
  store i1 %438, i1* %PF_val, !mcsema_real_eip !109
  %439 = extractvalue { i32, i1 } %uadd79, 1
  store i1 %439, i1* %CF_val, !mcsema_real_eip !109
  %440 = zext i32 %424 to i64, !mcsema_real_eip !109
  store i64 %440, i64* %RSI_val, !mcsema_real_eip !109
  %441 = load i64, i64* %RBP_val, !mcsema_real_eip !110
  %442 = add i64 %441, -104, !mcsema_real_eip !110
  %443 = inttoptr i64 %442 to i64*, !mcsema_real_eip !110
  %444 = load i64, i64* %443, !mcsema_real_eip !110
  store i64 %444, i64* %RCX_val, !mcsema_real_eip !110
  %445 = add i64 %444, 4, !mcsema_real_eip !111
  %446 = inttoptr i64 %445 to i64*, !mcsema_real_eip !111
  %447 = load i64, i64* %RSI_val, !mcsema_real_eip !111
  %448 = trunc i64 %447 to i32, !mcsema_real_eip !111
  %449 = bitcast i64* %446 to i32*
  store i32 %448, i32* %449, !mcsema_real_eip !111
  %450 = load i64, i64* %RBP_val, !mcsema_real_eip !112
  %451 = add i64 %450, -24, !mcsema_real_eip !112
  %452 = inttoptr i64 %451 to i64*, !mcsema_real_eip !112
  %453 = bitcast i64* %452 to i32*
  %454 = load i32, i32* %453, !mcsema_real_eip !112
  %455 = zext i32 %454 to i64, !mcsema_real_eip !112
  store i64 %455, i64* %RSI_val, !mcsema_real_eip !112
  %456 = load i64, i64* %RBP_val, !mcsema_real_eip !113
  %457 = add i64 %456, -56, !mcsema_real_eip !113
  %458 = inttoptr i64 %457 to i64*, !mcsema_real_eip !113
  %459 = load i64, i64* %458, !mcsema_real_eip !113
  store i64 %459, i64* %RCX_val, !mcsema_real_eip !113
  %460 = add i64 %459, 8, !mcsema_real_eip !114
  %461 = inttoptr i64 %460 to i64*, !mcsema_real_eip !114
  %462 = bitcast i64* %461 to i32*
  %463 = load i32, i32* %462, !mcsema_real_eip !114
  %464 = load i64, i64* %RSI_val, !mcsema_real_eip !114
  %465 = trunc i64 %464 to i32, !mcsema_real_eip !114
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %465, i32 %463)
  %466 = extractvalue { i32, i1 } %uadd80, 0
  %467 = xor i32 %466, %463, !mcsema_real_eip !114
  %468 = xor i32 %467, %465, !mcsema_real_eip !114
  %469 = and i32 %468, 16, !mcsema_real_eip !114
  %470 = icmp ne i32 %469, 0, !mcsema_real_eip !114
  store i1 %470, i1* %AF_val, !mcsema_real_eip !114
  %471 = icmp slt i32 %466, 0
  store i1 %471, i1* %SF_val, !mcsema_real_eip !114
  %472 = icmp eq i32 %466, 0, !mcsema_real_eip !114
  store i1 %472, i1* %ZF_val, !mcsema_real_eip !114
  %473 = xor i32 %463, -2147483648, !mcsema_real_eip !114
  %474 = xor i32 %473, %465, !mcsema_real_eip !114
  %475 = and i32 %467, %474, !mcsema_real_eip !114
  %476 = icmp slt i32 %475, 0
  store i1 %476, i1* %OF_val, !mcsema_real_eip !114
  %477 = trunc i32 %466 to i8, !mcsema_real_eip !114
  %478 = tail call i8 @llvm.ctpop.i8(i8 %477), !mcsema_real_eip !114
  %479 = and i8 %478, 1
  %480 = icmp eq i8 %479, 0
  store i1 %480, i1* %PF_val, !mcsema_real_eip !114
  %481 = extractvalue { i32, i1 } %uadd80, 1
  store i1 %481, i1* %CF_val, !mcsema_real_eip !114
  %482 = zext i32 %466 to i64, !mcsema_real_eip !114
  store i64 %482, i64* %RSI_val, !mcsema_real_eip !114
  %483 = load i64, i64* %RBP_val, !mcsema_real_eip !115
  %484 = add i64 %483, -64, !mcsema_real_eip !115
  %485 = inttoptr i64 %484 to i64*, !mcsema_real_eip !115
  %486 = load i64, i64* %485, !mcsema_real_eip !115
  store i64 %486, i64* %RCX_val, !mcsema_real_eip !115
  %487 = add i64 %486, 8, !mcsema_real_eip !116
  %488 = inttoptr i64 %487 to i64*, !mcsema_real_eip !116
  %489 = bitcast i64* %488 to i32*
  %490 = load i32, i32* %489, !mcsema_real_eip !116
  %491 = load i64, i64* %RSI_val, !mcsema_real_eip !116
  %492 = trunc i64 %491 to i32, !mcsema_real_eip !116
  %uadd81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %492, i32 %490)
  %493 = extractvalue { i32, i1 } %uadd81, 0
  %494 = xor i32 %493, %490, !mcsema_real_eip !116
  %495 = xor i32 %494, %492, !mcsema_real_eip !116
  %496 = and i32 %495, 16, !mcsema_real_eip !116
  %497 = icmp ne i32 %496, 0, !mcsema_real_eip !116
  store i1 %497, i1* %AF_val, !mcsema_real_eip !116
  %498 = icmp slt i32 %493, 0
  store i1 %498, i1* %SF_val, !mcsema_real_eip !116
  %499 = icmp eq i32 %493, 0, !mcsema_real_eip !116
  store i1 %499, i1* %ZF_val, !mcsema_real_eip !116
  %500 = xor i32 %490, -2147483648, !mcsema_real_eip !116
  %501 = xor i32 %500, %492, !mcsema_real_eip !116
  %502 = and i32 %494, %501, !mcsema_real_eip !116
  %503 = icmp slt i32 %502, 0
  store i1 %503, i1* %OF_val, !mcsema_real_eip !116
  %504 = trunc i32 %493 to i8, !mcsema_real_eip !116
  %505 = tail call i8 @llvm.ctpop.i8(i8 %504), !mcsema_real_eip !116
  %506 = and i8 %505, 1
  %507 = icmp eq i8 %506, 0
  store i1 %507, i1* %PF_val, !mcsema_real_eip !116
  %508 = extractvalue { i32, i1 } %uadd81, 1
  store i1 %508, i1* %CF_val, !mcsema_real_eip !116
  %509 = zext i32 %493 to i64, !mcsema_real_eip !116
  store i64 %509, i64* %RSI_val, !mcsema_real_eip !116
  %510 = load i64, i64* %RAX_val, !mcsema_real_eip !117
  %511 = add i64 %510, 8, !mcsema_real_eip !117
  %512 = inttoptr i64 %511 to i64*, !mcsema_real_eip !117
  %513 = bitcast i64* %512 to i32*
  %514 = load i32, i32* %513, !mcsema_real_eip !117
  %515 = zext i32 %514 to i64, !mcsema_real_eip !117
  store i64 %515, i64* %R8_val, !mcsema_real_eip !117
  %516 = load i64, i64* %RBP_val, !mcsema_real_eip !118
  %517 = add i64 %516, -88, !mcsema_real_eip !118
  %518 = inttoptr i64 %517 to i64*, !mcsema_real_eip !118
  %519 = load i64, i64* %518, !mcsema_real_eip !118
  store i64 %519, i64* %RCX_val, !mcsema_real_eip !118
  %520 = add i64 %519, 8, !mcsema_real_eip !119
  %521 = inttoptr i64 %520 to i64*, !mcsema_real_eip !119
  %522 = bitcast i64* %521 to i32*
  %523 = load i32, i32* %522, !mcsema_real_eip !119
  %524 = load i64, i64* %R8_val, !mcsema_real_eip !119
  %525 = trunc i64 %524 to i32, !mcsema_real_eip !119
  %uadd82 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %525, i32 %523)
  %526 = extractvalue { i32, i1 } %uadd82, 0
  %527 = xor i32 %526, %523, !mcsema_real_eip !119
  %528 = xor i32 %527, %525, !mcsema_real_eip !119
  %529 = and i32 %528, 16, !mcsema_real_eip !119
  %530 = icmp ne i32 %529, 0, !mcsema_real_eip !119
  store i1 %530, i1* %AF_val, !mcsema_real_eip !119
  %531 = icmp slt i32 %526, 0
  store i1 %531, i1* %SF_val, !mcsema_real_eip !119
  %532 = icmp eq i32 %526, 0, !mcsema_real_eip !119
  store i1 %532, i1* %ZF_val, !mcsema_real_eip !119
  %533 = xor i32 %523, -2147483648, !mcsema_real_eip !119
  %534 = xor i32 %533, %525, !mcsema_real_eip !119
  %535 = and i32 %527, %534, !mcsema_real_eip !119
  %536 = icmp slt i32 %535, 0
  store i1 %536, i1* %OF_val, !mcsema_real_eip !119
  %537 = trunc i32 %526 to i8, !mcsema_real_eip !119
  %538 = tail call i8 @llvm.ctpop.i8(i8 %537), !mcsema_real_eip !119
  %539 = and i8 %538, 1
  %540 = icmp eq i8 %539, 0
  store i1 %540, i1* %PF_val, !mcsema_real_eip !119
  %541 = extractvalue { i32, i1 } %uadd82, 1
  store i1 %541, i1* %CF_val, !mcsema_real_eip !119
  %542 = zext i32 %526 to i64, !mcsema_real_eip !119
  store i64 %542, i64* %R8_val, !mcsema_real_eip !119
  %543 = load i64, i64* %RBP_val, !mcsema_real_eip !120
  %544 = add i64 %543, -96, !mcsema_real_eip !120
  %545 = inttoptr i64 %544 to i64*, !mcsema_real_eip !120
  %546 = load i64, i64* %545, !mcsema_real_eip !120
  store i64 %546, i64* %RCX_val, !mcsema_real_eip !120
  %547 = add i64 %546, 8, !mcsema_real_eip !121
  %548 = inttoptr i64 %547 to i64*, !mcsema_real_eip !121
  %549 = bitcast i64* %548 to i32*
  %550 = load i32, i32* %549, !mcsema_real_eip !121
  %551 = load i64, i64* %R8_val, !mcsema_real_eip !121
  %552 = trunc i64 %551 to i32, !mcsema_real_eip !121
  %553 = add i32 %552, %550
  %554 = zext i32 %553 to i64, !mcsema_real_eip !121
  store i64 %554, i64* %R8_val, !mcsema_real_eip !121
  %555 = load i64, i64* %RSI_val, !mcsema_real_eip !122
  %556 = trunc i64 %555 to i32, !mcsema_real_eip !122
  %uadd84 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %553, i32 %556)
  %557 = extractvalue { i32, i1 } %uadd84, 0
  %558 = xor i32 %557, %556, !mcsema_real_eip !122
  %559 = xor i32 %558, %553, !mcsema_real_eip !122
  %560 = and i32 %559, 16, !mcsema_real_eip !122
  %561 = icmp ne i32 %560, 0, !mcsema_real_eip !122
  store i1 %561, i1* %AF_val, !mcsema_real_eip !122
  %562 = icmp slt i32 %557, 0
  store i1 %562, i1* %SF_val, !mcsema_real_eip !122
  %563 = icmp eq i32 %557, 0, !mcsema_real_eip !122
  store i1 %563, i1* %ZF_val, !mcsema_real_eip !122
  %564 = xor i32 %553, -2147483648, !mcsema_real_eip !122
  %565 = xor i32 %564, %556, !mcsema_real_eip !122
  %566 = and i32 %558, %565, !mcsema_real_eip !122
  %567 = icmp slt i32 %566, 0
  store i1 %567, i1* %OF_val, !mcsema_real_eip !122
  %568 = trunc i32 %557 to i8, !mcsema_real_eip !122
  %569 = tail call i8 @llvm.ctpop.i8(i8 %568), !mcsema_real_eip !122
  %570 = and i8 %569, 1
  %571 = icmp eq i8 %570, 0
  store i1 %571, i1* %PF_val, !mcsema_real_eip !122
  %572 = extractvalue { i32, i1 } %uadd84, 1
  store i1 %572, i1* %CF_val, !mcsema_real_eip !122
  %573 = zext i32 %557 to i64, !mcsema_real_eip !122
  store i64 %573, i64* %RSI_val, !mcsema_real_eip !122
  %574 = load i64, i64* %RBP_val, !mcsema_real_eip !123
  %575 = add i64 %574, -104, !mcsema_real_eip !123
  %576 = inttoptr i64 %575 to i64*, !mcsema_real_eip !123
  %577 = load i64, i64* %576, !mcsema_real_eip !123
  store i64 %577, i64* %RCX_val, !mcsema_real_eip !123
  %578 = add i64 %577, 8, !mcsema_real_eip !124
  %579 = inttoptr i64 %578 to i64*, !mcsema_real_eip !124
  %580 = load i64, i64* %RSI_val, !mcsema_real_eip !124
  %581 = trunc i64 %580 to i32, !mcsema_real_eip !124
  %582 = bitcast i64* %579 to i32*
  store i32 %581, i32* %582, !mcsema_real_eip !124
  %583 = load i64, i64* %RBP_val, !mcsema_real_eip !125
  %584 = add i64 %583, -104, !mcsema_real_eip !125
  %585 = inttoptr i64 %584 to i64*, !mcsema_real_eip !125
  %586 = load i64, i64* %585, !mcsema_real_eip !125
  store i64 %586, i64* %RAX_val, !mcsema_real_eip !125
  %587 = load i64, i64* %RSP_val, !mcsema_real_eip !126
  %uadd85 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %587, i64 96)
  %588 = extractvalue { i64, i1 } %uadd85, 0
  %589 = xor i64 %588, %587, !mcsema_real_eip !126
  %590 = and i64 %589, 16, !mcsema_real_eip !126
  %591 = icmp ne i64 %590, 0, !mcsema_real_eip !126
  store i1 %591, i1* %AF_val, !mcsema_real_eip !126
  %592 = icmp slt i64 %588, 0
  store i1 %592, i1* %SF_val, !mcsema_real_eip !126
  %593 = icmp eq i64 %588, 0, !mcsema_real_eip !126
  store i1 %593, i1* %ZF_val, !mcsema_real_eip !126
  %594 = xor i64 %587, -9223372036854775808, !mcsema_real_eip !126
  %595 = and i64 %589, %594, !mcsema_real_eip !126
  %596 = icmp slt i64 %595, 0
  store i1 %596, i1* %OF_val, !mcsema_real_eip !126
  %597 = trunc i64 %588 to i8, !mcsema_real_eip !126
  %598 = tail call i8 @llvm.ctpop.i8(i8 %597), !mcsema_real_eip !126
  %599 = and i8 %598, 1
  %600 = icmp eq i8 %599, 0
  store i1 %600, i1* %PF_val, !mcsema_real_eip !126
  %601 = extractvalue { i64, i1 } %uadd85, 1
  store i1 %601, i1* %CF_val, !mcsema_real_eip !126
  store i64 %588, i64* %RSP_val, !mcsema_real_eip !126
  %602 = inttoptr i64 %588 to i64*, !mcsema_real_eip !127
  %603 = load i64, i64* %602, !mcsema_real_eip !127
  store i64 %603, i64* %RBX_val, !mcsema_real_eip !127
  %604 = add i64 %588, 8, !mcsema_real_eip !127
  store i64 %604, i64* %RSP_val, !mcsema_real_eip !127
  %605 = inttoptr i64 %604 to i64*, !mcsema_real_eip !128
  %606 = load i64, i64* %605, !mcsema_real_eip !128
  store i64 %606, i64* %R14_val, !mcsema_real_eip !128
  %607 = add i64 %588, 16, !mcsema_real_eip !128
  store i64 %607, i64* %RSP_val, !mcsema_real_eip !128
  %608 = inttoptr i64 %607 to i64*, !mcsema_real_eip !129
  %609 = load i64, i64* %608, !mcsema_real_eip !129
  store i64 %609, i64* %RBP_val, !mcsema_real_eip !129
  %610 = add i64 %588, 32, !mcsema_real_eip !130
  store i64 %610, i64* %RSP_val, !mcsema_real_eip !130
  %611 = load i64, i64* %RAX_val, !mcsema_real_eip !130
  store i64 %611, i64* %RAX, !mcsema_real_eip !130
  %612 = load i64, i64* %RBX_val, !mcsema_real_eip !130
  store i64 %612, i64* %RBX, !mcsema_real_eip !130
  %613 = load i64, i64* %RCX_val, !mcsema_real_eip !130
  store i64 %613, i64* %RCX, !mcsema_real_eip !130
  %614 = load i64, i64* %RDX_val, !mcsema_real_eip !130
  store i64 %614, i64* %RDX, !mcsema_real_eip !130
  %615 = load i64, i64* %RSI_val, !mcsema_real_eip !130
  store i64 %615, i64* %RSI, !mcsema_real_eip !130
  %616 = load i64, i64* %RDI_val, !mcsema_real_eip !130
  store i64 %616, i64* %RDI, !mcsema_real_eip !130
  %617 = load i64, i64* %RSP_val, !mcsema_real_eip !130
  store i64 %617, i64* %RSP, !mcsema_real_eip !130
  %618 = load i64, i64* %RBP_val, !mcsema_real_eip !130
  store i64 %618, i64* %RBP, !mcsema_real_eip !130
  %619 = load i64, i64* %R8_val, !mcsema_real_eip !130
  store i64 %619, i64* %R8, !mcsema_real_eip !130
  %620 = load i64, i64* %R9_val, !mcsema_real_eip !130
  store i64 %620, i64* %R9, !mcsema_real_eip !130
  %621 = load i64, i64* %R10_val, !mcsema_real_eip !130
  store i64 %621, i64* %R10, !mcsema_real_eip !130
  %622 = load i64, i64* %R11_val, !mcsema_real_eip !130
  store i64 %622, i64* %R11, !mcsema_real_eip !130
  %623 = load i64, i64* %R12_val, !mcsema_real_eip !130
  store i64 %623, i64* %R12, !mcsema_real_eip !130
  %624 = load i64, i64* %R13_val, !mcsema_real_eip !130
  store i64 %624, i64* %R13, !mcsema_real_eip !130
  %625 = load i64, i64* %R14_val, !mcsema_real_eip !130
  store i64 %625, i64* %R14, !mcsema_real_eip !130
  %626 = load i64, i64* %R15_val, !mcsema_real_eip !130
  store i64 %626, i64* %R15, !mcsema_real_eip !130
  %627 = load i64, i64* %RIP_val, !mcsema_real_eip !130
  store i64 %627, i64* %RIP, !mcsema_real_eip !130
  %628 = load i1, i1* %CF_val, !mcsema_real_eip !130
  store i1 %628, i1* %CF, align 1, !mcsema_real_eip !130
  %629 = load i1, i1* %PF_val, !mcsema_real_eip !130
  store i1 %629, i1* %PF, align 1, !mcsema_real_eip !130
  %630 = load i1, i1* %AF_val, !mcsema_real_eip !130
  store i1 %630, i1* %AF, align 1, !mcsema_real_eip !130
  %631 = load i1, i1* %ZF_val, !mcsema_real_eip !130
  store i1 %631, i1* %ZF, align 1, !mcsema_real_eip !130
  %632 = load i1, i1* %SF_val, !mcsema_real_eip !130
  store i1 %632, i1* %SF, align 1, !mcsema_real_eip !130
  %633 = load i1, i1* %OF_val, !mcsema_real_eip !130
  store i1 %633, i1* %OF, align 1, !mcsema_real_eip !130
  %634 = load i1, i1* %DF_val, !mcsema_real_eip !130
  store i1 %634, i1* %DF, align 1, !mcsema_real_eip !130
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !130
  %635 = load i1, i1* %FPU_B_val, !mcsema_real_eip !130
  store i1 %635, i1* %FPU_B, align 1, !mcsema_real_eip !130
  %636 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !130
  store i1 %636, i1* %FPU_C3, align 1, !mcsema_real_eip !130
  %637 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !130
  store i3 %637, i3* %FPU_TOP, align 1, !mcsema_real_eip !130
  %638 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !130
  store i1 %638, i1* %FPU_C2, align 1, !mcsema_real_eip !130
  %639 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !130
  store i1 %639, i1* %FPU_C1, align 1, !mcsema_real_eip !130
  %640 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !130
  store i1 %640, i1* %FPU_C0, align 1, !mcsema_real_eip !130
  %641 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !130
  store i1 %641, i1* %FPU_ES, align 1, !mcsema_real_eip !130
  %642 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !130
  store i1 %642, i1* %FPU_SF, align 1, !mcsema_real_eip !130
  %643 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !130
  store i1 %643, i1* %FPU_PE, align 1, !mcsema_real_eip !130
  %644 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !130
  store i1 %644, i1* %FPU_UE, align 1, !mcsema_real_eip !130
  %645 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !130
  store i1 %645, i1* %FPU_OE, align 1, !mcsema_real_eip !130
  %646 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !130
  store i1 %646, i1* %FPU_ZE, align 1, !mcsema_real_eip !130
  %647 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !130
  store i1 %647, i1* %FPU_DE, align 1, !mcsema_real_eip !130
  %648 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !130
  store i1 %648, i1* %FPU_IE, align 1, !mcsema_real_eip !130
  %649 = load i1, i1* %FPU_X_val, !mcsema_real_eip !130
  store i1 %649, i1* %FPU_X, align 1, !mcsema_real_eip !130
  %650 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !130
  store i2 %650, i2* %FPU_RC, align 1, !mcsema_real_eip !130
  %651 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !130
  store i2 %651, i2* %FPU_PC, align 1, !mcsema_real_eip !130
  %652 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !130
  store i1 %652, i1* %FPU_PM, align 1, !mcsema_real_eip !130
  %653 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !130
  store i1 %653, i1* %FPU_UM, align 1, !mcsema_real_eip !130
  %654 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !130
  store i1 %654, i1* %FPU_OM, align 1, !mcsema_real_eip !130
  %655 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !130
  store i1 %655, i1* %FPU_ZM, align 1, !mcsema_real_eip !130
  %656 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !130
  store i1 %656, i1* %FPU_DM, align 1, !mcsema_real_eip !130
  %657 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !130
  store i1 %657, i1* %FPU_IM, align 1, !mcsema_real_eip !130
  %658 = load i64, i64* %53, align 4
  store i64 %658, i64* %52, align 4
  %659 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !130
  store i16 %659, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !130
  %660 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !130
  store i64 %660, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !130
  %661 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !130
  store i16 %661, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !130
  %662 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !130
  store i64 %662, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !130
  %663 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !130
  store i11 %663, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !130
  %664 = load i128, i128* %XMM0_val, !mcsema_real_eip !130
  store i128 %664, i128* %XMM0, align 1, !mcsema_real_eip !130
  %665 = load i128, i128* %XMM1_val, !mcsema_real_eip !130
  store i128 %665, i128* %XMM1, align 1, !mcsema_real_eip !130
  %666 = load i128, i128* %XMM2_val, !mcsema_real_eip !130
  store i128 %666, i128* %XMM2, align 1, !mcsema_real_eip !130
  %667 = load i128, i128* %XMM3_val, !mcsema_real_eip !130
  store i128 %667, i128* %XMM3, align 1, !mcsema_real_eip !130
  %668 = load i128, i128* %XMM4_val, !mcsema_real_eip !130
  store i128 %668, i128* %XMM4, align 1, !mcsema_real_eip !130
  %669 = load i128, i128* %XMM5_val, !mcsema_real_eip !130
  store i128 %669, i128* %XMM5, align 1, !mcsema_real_eip !130
  %670 = load i128, i128* %XMM6_val, !mcsema_real_eip !130
  store i128 %670, i128* %XMM6, align 1, !mcsema_real_eip !130
  %671 = load i128, i128* %XMM7_val, !mcsema_real_eip !130
  store i128 %671, i128* %XMM7, align 1, !mcsema_real_eip !130
  %672 = load i128, i128* %XMM8_val, !mcsema_real_eip !130
  store i128 %672, i128* %XMM8, align 1, !mcsema_real_eip !130
  %673 = load i128, i128* %XMM9_val, !mcsema_real_eip !130
  store i128 %673, i128* %XMM9, align 1, !mcsema_real_eip !130
  %674 = load i128, i128* %XMM10_val, !mcsema_real_eip !130
  store i128 %674, i128* %XMM10, align 1, !mcsema_real_eip !130
  %675 = load i128, i128* %XMM11_val, !mcsema_real_eip !130
  store i128 %675, i128* %XMM11, align 1, !mcsema_real_eip !130
  %676 = load i128, i128* %XMM12_val, !mcsema_real_eip !130
  store i128 %676, i128* %XMM12, align 1, !mcsema_real_eip !130
  %677 = load i128, i128* %XMM13_val, !mcsema_real_eip !130
  store i128 %677, i128* %XMM13, align 1, !mcsema_real_eip !130
  %678 = load i128, i128* %XMM14_val, !mcsema_real_eip !130
  store i128 %678, i128* %XMM14, align 1, !mcsema_real_eip !130
  %679 = load i128, i128* %XMM15_val, !mcsema_real_eip !130
  store i128 %679, i128* %XMM15, align 1, !mcsema_real_eip !130
  %680 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !130
  store i64 %680, i64* %STACK_BASE, align 1, !mcsema_real_eip !130
  %681 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !130
  store i64 %681, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !130
  ret void, !mcsema_real_eip !130
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
!2 = !{i64 256}
!3 = !{i64 257}
!4 = !{i64 260}
!5 = !{i64 264}
!6 = !{i64 274}
!7 = !{i64 281}
!8 = !{i64 288}
!9 = !{i64 295}
!10 = !{i64 302}
!11 = !{i64 307}
!12 = !{i64 311}
!13 = !{i64 317}
!14 = !{i64 323}
!15 = !{i64 328}
!16 = !{i64 332}
!17 = !{i64 336}
!18 = !{i64 342}
!19 = !{i64 346}
!20 = !{i64 353}
!21 = !{i64 357}
!22 = !{i64 364}
!23 = !{i64 368}
!24 = !{i64 372}
!25 = !{i64 376}
!26 = !{i64 380}
!27 = !{i64 384}
!28 = !{i64 388}
!29 = !{i64 392}
!30 = !{i64 396}
!31 = !{i64 400}
!32 = !{i64 403}
!33 = !{i64 406}
!34 = !{i64 410}
!35 = !{i64 414}
!36 = !{i64 417}
!37 = !{i64 420}
!38 = !{i64 423}
!39 = !{i64 430}
!40 = !{i64 433}
!41 = !{i64 438}
!42 = !{i64 442}
!43 = !{i64 447}
!44 = !{i64 452}
!45 = !{i64 456}
!46 = !{i64 461}
!47 = !{i64 466}
!48 = !{i64 470}
!49 = !{i64 474}
!50 = !{i64 476}
!51 = !{i64 480}
!52 = !{i64 483}
!53 = !{i64 487}
!54 = !{i64 490}
!55 = !{i64 492}
!56 = !{i64 496}
!57 = !{i64 497}
!58 = !{i64 0}
!59 = !{i64 1}
!60 = !{i64 4}
!61 = !{i64 6}
!62 = !{i64 7}
!63 = !{i64 11}
!64 = !{i64 15}
!65 = !{i64 19}
!66 = !{i64 23}
!67 = !{i64 26}
!68 = !{i64 36}
!69 = !{i64 40}
!70 = !{i64 43}
!71 = !{i64 47}
!72 = !{i64 51}
!73 = !{i64 54}
!74 = !{i64 57}
!75 = !{i64 61}
!76 = !{i64 65}
!77 = !{i64 69}
!78 = !{i64 73}
!79 = !{i64 76}
!80 = !{i64 80}
!81 = !{i64 84}
!82 = !{i64 87}
!83 = !{i64 91}
!84 = !{i64 96}
!85 = !{i64 100}
!86 = !{i64 103}
!87 = !{i64 107}
!88 = !{i64 109}
!89 = !{i64 113}
!90 = !{i64 115}
!91 = !{i64 119}
!92 = !{i64 122}
!93 = !{i64 126}
!94 = !{i64 129}
!95 = !{i64 133}
!96 = !{i64 136}
!97 = !{i64 139}
!98 = !{i64 143}
!99 = !{i64 145}
!100 = !{i64 148}
!101 = !{i64 152}
!102 = !{i64 155}
!103 = !{i64 159}
!104 = !{i64 162}
!105 = !{i64 166}
!106 = !{i64 170}
!107 = !{i64 174}
!108 = !{i64 178}
!109 = !{i64 182}
!110 = !{i64 185}
!111 = !{i64 189}
!112 = !{i64 192}
!113 = !{i64 195}
!114 = !{i64 199}
!115 = !{i64 202}
!116 = !{i64 206}
!117 = !{i64 209}
!118 = !{i64 213}
!119 = !{i64 217}
!120 = !{i64 221}
!121 = !{i64 225}
!122 = !{i64 229}
!123 = !{i64 232}
!124 = !{i64 236}
!125 = !{i64 239}
!126 = !{i64 243}
!127 = !{i64 247}
!128 = !{i64 248}
!129 = !{i64 250}
!130 = !{i64 251}
