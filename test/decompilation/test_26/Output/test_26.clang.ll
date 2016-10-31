; ModuleID = 'Output/test_26.clang.bc'
source_filename = "Output/test_26.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_120(%struct.regs*) {
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
  store i64 %137, i64* %RAX_val, !mcsema_real_eip !18
  %138 = add i64 %134, -8, !mcsema_real_eip !19
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !19
  %140 = bitcast i64* %139 to i32*
  %141 = load i32, i32* %140, !mcsema_real_eip !19
  %142 = zext i32 %141 to i64, !mcsema_real_eip !19
  store i64 %142, i64* %RCX_val, !mcsema_real_eip !19
  %143 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %144 = add i64 %143, -48, !mcsema_real_eip !20
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !20
  %146 = bitcast i64* %145 to i32*
  store i32 %141, i32* %146, !mcsema_real_eip !20
  %147 = load i64, i64* %RBP_val, !mcsema_real_eip !21
  %148 = add i64 %147, -16, !mcsema_real_eip !21
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !21
  %150 = load i64, i64* %149, !mcsema_real_eip !21
  store i64 %150, i64* %RDI_val, !mcsema_real_eip !21
  %151 = add i64 %147, -56, !mcsema_real_eip !22
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !22
  store i64 %150, i64* %152, !mcsema_real_eip !22
  %153 = load i64, i64* %RBP_val, !mcsema_real_eip !23
  %154 = add i64 %153, -56, !mcsema_real_eip !23
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !23
  %156 = load i64, i64* %155, !mcsema_real_eip !23
  store i64 %156, i64* %RDI_val, !mcsema_real_eip !23
  %157 = add i64 %153, -48, !mcsema_real_eip !24
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !24
  %159 = bitcast i64* %158 to i32*
  %160 = load i32, i32* %159, !mcsema_real_eip !24
  %161 = zext i32 %160 to i64, !mcsema_real_eip !24
  store i64 %161, i64* %RSI_val, !mcsema_real_eip !24
  %162 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %163 = add i64 %162, -8, !mcsema_real_eip !25
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !25
  %165 = bitcast i64* %164 to i32*
  %166 = load i32, i32* %165, !mcsema_real_eip !25
  %167 = zext i32 %166 to i64, !mcsema_real_eip !25
  store i64 %167, i64* %RCX_val, !mcsema_real_eip !25
  %168 = load i64, i64* %RSP_val, !mcsema_real_eip !26
  store i64 %168, i64* %RDX_val, !mcsema_real_eip !26
  %169 = add i64 %168, 16, !mcsema_real_eip !27
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !27
  %171 = bitcast i64* %170 to i32*
  store i32 %166, i32* %171, !mcsema_real_eip !27
  %172 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %173 = add i64 %172, -16, !mcsema_real_eip !28
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !28
  %175 = load i64, i64* %174, !mcsema_real_eip !28
  %176 = load i64, i64* %RDX_val, !mcsema_real_eip !29
  %177 = add i64 %176, 8, !mcsema_real_eip !29
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !29
  store i64 %175, i64* %178, !mcsema_real_eip !29
  %179 = load i64, i64* %RDX_val, !mcsema_real_eip !30
  %180 = add i64 %179, 32, !mcsema_real_eip !30
  %181 = inttoptr i64 %180 to i64*, !mcsema_real_eip !30
  %182 = load i64, i64* %RAX_val, !mcsema_real_eip !30
  store i64 %182, i64* %181, !mcsema_real_eip !30
  %183 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %184 = add i64 %183, -16, !mcsema_real_eip !31
  %185 = inttoptr i64 %184 to i64*, !mcsema_real_eip !31
  %186 = ptrtoint i64* %185 to i64, !mcsema_real_eip !31
  store i64 %186, i64* %R8_val, !mcsema_real_eip !31
  %187 = load i64, i64* %RDX_val, !mcsema_real_eip !32
  %188 = add i64 %187, 24, !mcsema_real_eip !32
  %189 = inttoptr i64 %188 to i64*, !mcsema_real_eip !32
  store i64 %186, i64* %189, !mcsema_real_eip !32
  %190 = load i64, i64* %RDX_val, !mcsema_real_eip !33
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !33
  %192 = bitcast i64* %191 to i32*
  store i32 3, i32* %192, !mcsema_real_eip !33
  store i64 1, i64* %RCX_val, !mcsema_real_eip !34
  store i64 2, i64* %R9_val, !mcsema_real_eip !35
  %193 = load i64, i64* %R8_val, !mcsema_real_eip !36
  store i64 %193, i64* %RDX_val, !mcsema_real_eip !36
  %194 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %195 = add i64 %194, -76, !mcsema_real_eip !37
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !37
  %197 = load i64, i64* %RCX_val, !mcsema_real_eip !37
  %198 = trunc i64 %197 to i32, !mcsema_real_eip !37
  %199 = bitcast i64* %196 to i32*
  store i32 %198, i32* %199, !mcsema_real_eip !37
  %200 = load i64, i64* %RAX_val, !mcsema_real_eip !38
  store i64 %200, i64* %RCX_val, !mcsema_real_eip !38
  %201 = load i64, i64* %RBP_val, !mcsema_real_eip !39
  %202 = add i64 %201, -76, !mcsema_real_eip !39
  %203 = inttoptr i64 %202 to i64*, !mcsema_real_eip !39
  %204 = bitcast i64* %203 to i32*
  %205 = load i32, i32* %204, !mcsema_real_eip !39
  %206 = zext i32 %205 to i64, !mcsema_real_eip !39
  store i64 %206, i64* %R8_val, !mcsema_real_eip !39
  %207 = load i64, i64* %RSP_val, !mcsema_real_eip !40
  %208 = add i64 %207, -8
  %209 = inttoptr i64 %208 to i64*, !mcsema_real_eip !40
  store i64 -4981261766360305936, i64* %209, !mcsema_real_eip !40
  store i64 %208, i64* %RSP_val, !mcsema_real_eip !40
  %210 = load i64, i64* %RAX_val, !mcsema_real_eip !40
  store i64 %210, i64* %RAX, !mcsema_real_eip !40
  %211 = load i64, i64* %RBX_val, !mcsema_real_eip !40
  store i64 %211, i64* %RBX, !mcsema_real_eip !40
  %212 = load i64, i64* %RCX_val, !mcsema_real_eip !40
  store i64 %212, i64* %RCX, !mcsema_real_eip !40
  %213 = load i64, i64* %RDX_val, !mcsema_real_eip !40
  store i64 %213, i64* %RDX, !mcsema_real_eip !40
  %214 = load i64, i64* %RSI_val, !mcsema_real_eip !40
  store i64 %214, i64* %RSI, !mcsema_real_eip !40
  %215 = load i64, i64* %RDI_val, !mcsema_real_eip !40
  store i64 %215, i64* %RDI, !mcsema_real_eip !40
  %216 = load i64, i64* %RSP_val, !mcsema_real_eip !40
  store i64 %216, i64* %RSP, !mcsema_real_eip !40
  %217 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  store i64 %217, i64* %RBP, !mcsema_real_eip !40
  %218 = load i64, i64* %R8_val, !mcsema_real_eip !40
  store i64 %218, i64* %R8, !mcsema_real_eip !40
  %219 = load i64, i64* %R9_val, !mcsema_real_eip !40
  store i64 %219, i64* %R9, !mcsema_real_eip !40
  %220 = load i64, i64* %R10_val, !mcsema_real_eip !40
  store i64 %220, i64* %R10, !mcsema_real_eip !40
  %221 = load i64, i64* %R11_val, !mcsema_real_eip !40
  store i64 %221, i64* %R11, !mcsema_real_eip !40
  %222 = load i64, i64* %R12_val, !mcsema_real_eip !40
  store i64 %222, i64* %R12, !mcsema_real_eip !40
  %223 = load i64, i64* %R13_val, !mcsema_real_eip !40
  store i64 %223, i64* %R13, !mcsema_real_eip !40
  %224 = load i64, i64* %R14_val, !mcsema_real_eip !40
  store i64 %224, i64* %R14, !mcsema_real_eip !40
  %225 = load i64, i64* %R15_val, !mcsema_real_eip !40
  store i64 %225, i64* %R15, !mcsema_real_eip !40
  %226 = load i64, i64* %RIP_val, !mcsema_real_eip !40
  store i64 %226, i64* %RIP, !mcsema_real_eip !40
  %227 = load i1, i1* %CF_val, !mcsema_real_eip !40
  store i1 %227, i1* %CF, align 1, !mcsema_real_eip !40
  %228 = load i1, i1* %PF_val, !mcsema_real_eip !40
  store i1 %228, i1* %PF, align 1, !mcsema_real_eip !40
  %229 = load i1, i1* %AF_val, !mcsema_real_eip !40
  store i1 %229, i1* %AF, align 1, !mcsema_real_eip !40
  %230 = load i1, i1* %ZF_val, !mcsema_real_eip !40
  store i1 %230, i1* %ZF, align 1, !mcsema_real_eip !40
  %231 = load i1, i1* %SF_val, !mcsema_real_eip !40
  store i1 %231, i1* %SF, align 1, !mcsema_real_eip !40
  %232 = load i1, i1* %OF_val, !mcsema_real_eip !40
  store i1 %232, i1* %OF, align 1, !mcsema_real_eip !40
  %233 = load i1, i1* %DF_val, !mcsema_real_eip !40
  store i1 %233, i1* %DF, align 1, !mcsema_real_eip !40
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !40
  %234 = load i1, i1* %FPU_B_val, !mcsema_real_eip !40
  store i1 %234, i1* %FPU_B, align 1, !mcsema_real_eip !40
  %235 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !40
  store i1 %235, i1* %FPU_C3, align 1, !mcsema_real_eip !40
  %236 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !40
  store i3 %236, i3* %FPU_TOP, align 1, !mcsema_real_eip !40
  %237 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !40
  store i1 %237, i1* %FPU_C2, align 1, !mcsema_real_eip !40
  %238 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !40
  store i1 %238, i1* %FPU_C1, align 1, !mcsema_real_eip !40
  %239 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !40
  store i1 %239, i1* %FPU_C0, align 1, !mcsema_real_eip !40
  %240 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !40
  store i1 %240, i1* %FPU_ES, align 1, !mcsema_real_eip !40
  %241 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !40
  store i1 %241, i1* %FPU_SF, align 1, !mcsema_real_eip !40
  %242 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !40
  store i1 %242, i1* %FPU_PE, align 1, !mcsema_real_eip !40
  %243 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !40
  store i1 %243, i1* %FPU_UE, align 1, !mcsema_real_eip !40
  %244 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !40
  store i1 %244, i1* %FPU_OE, align 1, !mcsema_real_eip !40
  %245 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !40
  store i1 %245, i1* %FPU_ZE, align 1, !mcsema_real_eip !40
  %246 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !40
  store i1 %246, i1* %FPU_DE, align 1, !mcsema_real_eip !40
  %247 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !40
  store i1 %247, i1* %FPU_IE, align 1, !mcsema_real_eip !40
  %248 = load i1, i1* %FPU_X_val, !mcsema_real_eip !40
  store i1 %248, i1* %FPU_X, align 1, !mcsema_real_eip !40
  %249 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !40
  store i2 %249, i2* %FPU_RC, align 1, !mcsema_real_eip !40
  %250 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !40
  store i2 %250, i2* %FPU_PC, align 1, !mcsema_real_eip !40
  %251 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !40
  store i1 %251, i1* %FPU_PM, align 1, !mcsema_real_eip !40
  %252 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !40
  store i1 %252, i1* %FPU_UM, align 1, !mcsema_real_eip !40
  %253 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !40
  store i1 %253, i1* %FPU_OM, align 1, !mcsema_real_eip !40
  %254 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !40
  store i1 %254, i1* %FPU_ZM, align 1, !mcsema_real_eip !40
  %255 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !40
  store i1 %255, i1* %FPU_DM, align 1, !mcsema_real_eip !40
  %256 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !40
  store i1 %256, i1* %FPU_IM, align 1, !mcsema_real_eip !40
  %257 = load i64, i64* %53, align 4
  store i64 %257, i64* %52, align 4
  %258 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !40
  store i16 %258, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !40
  %259 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !40
  store i64 %259, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !40
  %260 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !40
  store i16 %260, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !40
  %261 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !40
  store i64 %261, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !40
  %262 = load i128, i128* %XMM0_val, !mcsema_real_eip !40
  store i128 %262, i128* %XMM0, align 1, !mcsema_real_eip !40
  %263 = load i128, i128* %XMM1_val, !mcsema_real_eip !40
  store i128 %263, i128* %XMM1, align 1, !mcsema_real_eip !40
  %264 = load i128, i128* %XMM2_val, !mcsema_real_eip !40
  store i128 %264, i128* %XMM2, align 1, !mcsema_real_eip !40
  %265 = load i128, i128* %XMM3_val, !mcsema_real_eip !40
  store i128 %265, i128* %XMM3, align 1, !mcsema_real_eip !40
  %266 = load i128, i128* %XMM4_val, !mcsema_real_eip !40
  store i128 %266, i128* %XMM4, align 1, !mcsema_real_eip !40
  %267 = load i128, i128* %XMM5_val, !mcsema_real_eip !40
  store i128 %267, i128* %XMM5, align 1, !mcsema_real_eip !40
  %268 = load i128, i128* %XMM6_val, !mcsema_real_eip !40
  store i128 %268, i128* %XMM6, align 1, !mcsema_real_eip !40
  %269 = load i128, i128* %XMM7_val, !mcsema_real_eip !40
  store i128 %269, i128* %XMM7, align 1, !mcsema_real_eip !40
  %270 = load i128, i128* %XMM8_val, !mcsema_real_eip !40
  store i128 %270, i128* %XMM8, align 1, !mcsema_real_eip !40
  %271 = load i128, i128* %XMM9_val, !mcsema_real_eip !40
  store i128 %271, i128* %XMM9, align 1, !mcsema_real_eip !40
  %272 = load i128, i128* %XMM10_val, !mcsema_real_eip !40
  store i128 %272, i128* %XMM10, align 1, !mcsema_real_eip !40
  %273 = load i128, i128* %XMM11_val, !mcsema_real_eip !40
  store i128 %273, i128* %XMM11, align 1, !mcsema_real_eip !40
  %274 = load i128, i128* %XMM12_val, !mcsema_real_eip !40
  store i128 %274, i128* %XMM12, align 1, !mcsema_real_eip !40
  %275 = load i128, i128* %XMM13_val, !mcsema_real_eip !40
  store i128 %275, i128* %XMM13, align 1, !mcsema_real_eip !40
  %276 = load i128, i128* %XMM14_val, !mcsema_real_eip !40
  store i128 %276, i128* %XMM14, align 1, !mcsema_real_eip !40
  %277 = load i128, i128* %XMM15_val, !mcsema_real_eip !40
  store i128 %277, i128* %XMM15, align 1, !mcsema_real_eip !40
  %278 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !40
  store i64 %278, i64* %STACK_BASE, align 1, !mcsema_real_eip !40
  %279 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !40
  store i64 %279, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !40
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !40
  %280 = load i64, i64* %RAX, !mcsema_real_eip !40
  store i64 %280, i64* %RAX_val, !mcsema_real_eip !40
  %281 = load i64, i64* %RBX, !mcsema_real_eip !40
  store i64 %281, i64* %RBX_val, !mcsema_real_eip !40
  %282 = load i64, i64* %RCX, !mcsema_real_eip !40
  store i64 %282, i64* %RCX_val, !mcsema_real_eip !40
  %283 = load i64, i64* %RDX, !mcsema_real_eip !40
  store i64 %283, i64* %RDX_val, !mcsema_real_eip !40
  %284 = load i64, i64* %RSI, !mcsema_real_eip !40
  store i64 %284, i64* %RSI_val, !mcsema_real_eip !40
  %285 = load i64, i64* %RDI, !mcsema_real_eip !40
  store i64 %285, i64* %RDI_val, !mcsema_real_eip !40
  %286 = load i64, i64* %RSP, !mcsema_real_eip !40
  store i64 %286, i64* %RSP_val, !mcsema_real_eip !40
  %287 = load i64, i64* %RBP, !mcsema_real_eip !40
  store i64 %287, i64* %RBP_val, !mcsema_real_eip !40
  %288 = load i64, i64* %R8, !mcsema_real_eip !40
  store i64 %288, i64* %R8_val, !mcsema_real_eip !40
  %289 = load i64, i64* %R9, !mcsema_real_eip !40
  store i64 %289, i64* %R9_val, !mcsema_real_eip !40
  %290 = load i64, i64* %R10, !mcsema_real_eip !40
  store i64 %290, i64* %R10_val, !mcsema_real_eip !40
  %291 = load i64, i64* %R11, !mcsema_real_eip !40
  store i64 %291, i64* %R11_val, !mcsema_real_eip !40
  %292 = load i64, i64* %R12, !mcsema_real_eip !40
  store i64 %292, i64* %R12_val, !mcsema_real_eip !40
  %293 = load i64, i64* %R13, !mcsema_real_eip !40
  store i64 %293, i64* %R13_val, !mcsema_real_eip !40
  %294 = load i64, i64* %R14, !mcsema_real_eip !40
  store i64 %294, i64* %R14_val, !mcsema_real_eip !40
  %295 = load i64, i64* %R15, !mcsema_real_eip !40
  store i64 %295, i64* %R15_val, !mcsema_real_eip !40
  %296 = load i64, i64* %RIP, !mcsema_real_eip !40
  store i64 %296, i64* %RIP_val, !mcsema_real_eip !40
  %297 = load i1, i1* %CF, align 1, !mcsema_real_eip !40
  store i1 %297, i1* %CF_val, !mcsema_real_eip !40
  %298 = load i1, i1* %PF, align 1, !mcsema_real_eip !40
  store i1 %298, i1* %PF_val, !mcsema_real_eip !40
  %299 = load i1, i1* %AF, align 1, !mcsema_real_eip !40
  store i1 %299, i1* %AF_val, !mcsema_real_eip !40
  %300 = load i1, i1* %ZF, align 1, !mcsema_real_eip !40
  store i1 %300, i1* %ZF_val, !mcsema_real_eip !40
  %301 = load i1, i1* %SF, align 1, !mcsema_real_eip !40
  store i1 %301, i1* %SF_val, !mcsema_real_eip !40
  %302 = load i1, i1* %OF, align 1, !mcsema_real_eip !40
  store i1 %302, i1* %OF_val, !mcsema_real_eip !40
  %303 = load i1, i1* %DF, align 1, !mcsema_real_eip !40
  store i1 %303, i1* %DF_val, !mcsema_real_eip !40
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !40
  %304 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !40
  store i1 %304, i1* %FPU_B_val, !mcsema_real_eip !40
  %305 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !40
  store i1 %305, i1* %FPU_C3_val, !mcsema_real_eip !40
  %306 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !40
  store i3 %306, i3* %FPU_TOP_val, !mcsema_real_eip !40
  %307 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !40
  store i1 %307, i1* %FPU_C2_val, !mcsema_real_eip !40
  %308 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !40
  store i1 %308, i1* %FPU_C1_val, !mcsema_real_eip !40
  %309 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !40
  store i1 %309, i1* %FPU_C0_val, !mcsema_real_eip !40
  %310 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !40
  store i1 %310, i1* %FPU_ES_val, !mcsema_real_eip !40
  %311 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !40
  store i1 %311, i1* %FPU_SF_val, !mcsema_real_eip !40
  %312 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !40
  store i1 %312, i1* %FPU_PE_val, !mcsema_real_eip !40
  %313 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !40
  store i1 %313, i1* %FPU_UE_val, !mcsema_real_eip !40
  %314 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !40
  store i1 %314, i1* %FPU_OE_val, !mcsema_real_eip !40
  %315 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !40
  store i1 %315, i1* %FPU_ZE_val, !mcsema_real_eip !40
  %316 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !40
  store i1 %316, i1* %FPU_DE_val, !mcsema_real_eip !40
  %317 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !40
  store i1 %317, i1* %FPU_IE_val, !mcsema_real_eip !40
  %318 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !40
  store i1 %318, i1* %FPU_X_val, !mcsema_real_eip !40
  %319 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !40
  store i2 %319, i2* %FPU_RC_val, !mcsema_real_eip !40
  %320 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !40
  store i2 %320, i2* %FPU_PC_val, !mcsema_real_eip !40
  %321 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !40
  store i1 %321, i1* %FPU_PM_val, !mcsema_real_eip !40
  %322 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !40
  store i1 %322, i1* %FPU_UM_val, !mcsema_real_eip !40
  %323 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !40
  store i1 %323, i1* %FPU_OM_val, !mcsema_real_eip !40
  %324 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !40
  store i1 %324, i1* %FPU_ZM_val, !mcsema_real_eip !40
  %325 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !40
  store i1 %325, i1* %FPU_DM_val, !mcsema_real_eip !40
  %326 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !40
  store i1 %326, i1* %FPU_IM_val, !mcsema_real_eip !40
  %327 = load i64, i64* %52, align 4
  store i64 %327, i64* %53, align 4
  %328 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !40
  store i16 %328, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !40
  %329 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !40
  store i64 %329, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !40
  %330 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !40
  store i16 %330, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !40
  %331 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !40
  store i64 %331, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !40
  %332 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !40
  store i128 %332, i128* %XMM0_val, !mcsema_real_eip !40
  %333 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !40
  store i128 %333, i128* %XMM1_val, !mcsema_real_eip !40
  %334 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !40
  store i128 %334, i128* %XMM2_val, !mcsema_real_eip !40
  %335 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !40
  store i128 %335, i128* %XMM3_val, !mcsema_real_eip !40
  %336 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !40
  store i128 %336, i128* %XMM4_val, !mcsema_real_eip !40
  %337 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !40
  store i128 %337, i128* %XMM5_val, !mcsema_real_eip !40
  %338 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !40
  store i128 %338, i128* %XMM6_val, !mcsema_real_eip !40
  %339 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !40
  store i128 %339, i128* %XMM7_val, !mcsema_real_eip !40
  %340 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !40
  store i128 %340, i128* %XMM8_val, !mcsema_real_eip !40
  %341 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !40
  store i128 %341, i128* %XMM9_val, !mcsema_real_eip !40
  %342 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !40
  store i128 %342, i128* %XMM10_val, !mcsema_real_eip !40
  %343 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !40
  store i128 %343, i128* %XMM11_val, !mcsema_real_eip !40
  %344 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !40
  store i128 %344, i128* %XMM12_val, !mcsema_real_eip !40
  %345 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !40
  store i128 %345, i128* %XMM13_val, !mcsema_real_eip !40
  %346 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !40
  store i128 %346, i128* %XMM14_val, !mcsema_real_eip !40
  %347 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !40
  store i128 %347, i128* %XMM15_val, !mcsema_real_eip !40
  %348 = load i64, i64* %STACK_BASE, !mcsema_real_eip !40
  store i64 %348, i64* %STACK_BASE_val, !mcsema_real_eip !40
  %349 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !40
  store i64 %349, i64* %STACK_LIMIT_val, !mcsema_real_eip !40
  %350 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %351 = add i64 %350, -64, !mcsema_real_eip !41
  %352 = inttoptr i64 %351 to i64*, !mcsema_real_eip !41
  %353 = load i64, i64* %RDX_val, !mcsema_real_eip !41
  %354 = trunc i64 %353 to i32, !mcsema_real_eip !41
  %355 = bitcast i64* %352 to i32*
  store i32 %354, i32* %355, !mcsema_real_eip !41
  %356 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  %357 = add i64 %356, -72, !mcsema_real_eip !42
  %358 = inttoptr i64 %357 to i64*, !mcsema_real_eip !42
  %359 = load i64, i64* %RAX_val, !mcsema_real_eip !42
  store i64 %359, i64* %358, !mcsema_real_eip !42
  %360 = load i64, i64* %RBP_val, !mcsema_real_eip !43
  %361 = add i64 %360, -72, !mcsema_real_eip !43
  %362 = inttoptr i64 %361 to i64*, !mcsema_real_eip !43
  %363 = load i64, i64* %362, !mcsema_real_eip !43
  store i64 %363, i64* %RAX_val, !mcsema_real_eip !43
  %364 = add i64 %360, -40, !mcsema_real_eip !44
  %365 = inttoptr i64 %364 to i64*, !mcsema_real_eip !44
  store i64 %363, i64* %365, !mcsema_real_eip !44
  %366 = load i64, i64* %RBP_val, !mcsema_real_eip !45
  %367 = add i64 %366, -64, !mcsema_real_eip !45
  %368 = inttoptr i64 %367 to i64*, !mcsema_real_eip !45
  %369 = bitcast i64* %368 to i32*
  %370 = load i32, i32* %369, !mcsema_real_eip !45
  %371 = zext i32 %370 to i64, !mcsema_real_eip !45
  store i64 %371, i64* %RDX_val, !mcsema_real_eip !45
  %372 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %373 = add i64 %372, -32, !mcsema_real_eip !46
  %374 = inttoptr i64 %373 to i64*, !mcsema_real_eip !46
  %375 = bitcast i64* %374 to i32*
  store i32 %370, i32* %375, !mcsema_real_eip !46
  %376 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  %377 = add i64 %376, -40, !mcsema_real_eip !47
  %378 = inttoptr i64 %377 to i64*, !mcsema_real_eip !47
  %379 = bitcast i64* %378 to i32*
  %380 = load i32, i32* %379, !mcsema_real_eip !47
  %381 = zext i32 %380 to i64, !mcsema_real_eip !47
  store i64 %381, i64* %RDX_val, !mcsema_real_eip !47
  %382 = load i64, i64* %RBP_val, !mcsema_real_eip !48
  %383 = add i64 %382, -36, !mcsema_real_eip !48
  %384 = inttoptr i64 %383 to i64*, !mcsema_real_eip !48
  %385 = bitcast i64* %384 to i32*
  %386 = load i32, i32* %385, !mcsema_real_eip !48
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %380, i32 %386)
  %387 = extractvalue { i32, i1 } %uadd, 0
  %388 = xor i32 %387, %386, !mcsema_real_eip !48
  %389 = xor i32 %388, %380, !mcsema_real_eip !48
  %390 = and i32 %389, 16, !mcsema_real_eip !48
  %391 = icmp ne i32 %390, 0, !mcsema_real_eip !48
  store i1 %391, i1* %AF_val, !mcsema_real_eip !48
  %392 = icmp slt i32 %387, 0
  store i1 %392, i1* %SF_val, !mcsema_real_eip !48
  %393 = icmp eq i32 %387, 0, !mcsema_real_eip !48
  store i1 %393, i1* %ZF_val, !mcsema_real_eip !48
  %394 = xor i32 %380, -2147483648, !mcsema_real_eip !48
  %395 = xor i32 %394, %386, !mcsema_real_eip !48
  %396 = and i32 %388, %395, !mcsema_real_eip !48
  %397 = icmp slt i32 %396, 0
  store i1 %397, i1* %OF_val, !mcsema_real_eip !48
  %398 = trunc i32 %387 to i8, !mcsema_real_eip !48
  %399 = tail call i8 @llvm.ctpop.i8(i8 %398), !mcsema_real_eip !48
  %400 = and i8 %399, 1
  %401 = icmp eq i8 %400, 0
  store i1 %401, i1* %PF_val, !mcsema_real_eip !48
  %402 = extractvalue { i32, i1 } %uadd, 1
  store i1 %402, i1* %CF_val, !mcsema_real_eip !48
  %403 = zext i32 %387 to i64, !mcsema_real_eip !48
  store i64 %403, i64* %RDX_val, !mcsema_real_eip !48
  %404 = load i64, i64* %RBP_val, !mcsema_real_eip !49
  %405 = add i64 %404, -32, !mcsema_real_eip !49
  %406 = inttoptr i64 %405 to i64*, !mcsema_real_eip !49
  %407 = bitcast i64* %406 to i32*
  %408 = load i32, i32* %407, !mcsema_real_eip !49
  %409 = add i32 %387, %408
  %410 = zext i32 %409 to i64, !mcsema_real_eip !49
  store i64 %410, i64* %RDX_val, !mcsema_real_eip !49
  store i64 %410, i64* %RAX_val, !mcsema_real_eip !50
  %411 = load i64, i64* %RSP_val, !mcsema_real_eip !51
  %uadd210 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %411, i64 128)
  %412 = extractvalue { i64, i1 } %uadd210, 0
  %413 = xor i64 %412, %411, !mcsema_real_eip !51
  %414 = and i64 %413, 16, !mcsema_real_eip !51
  %415 = icmp ne i64 %414, 0, !mcsema_real_eip !51
  store i1 %415, i1* %AF_val, !mcsema_real_eip !51
  %416 = icmp slt i64 %412, 0
  store i1 %416, i1* %SF_val, !mcsema_real_eip !51
  %417 = icmp eq i64 %412, 0, !mcsema_real_eip !51
  store i1 %417, i1* %ZF_val, !mcsema_real_eip !51
  %418 = xor i64 %411, -9223372036854775808, !mcsema_real_eip !51
  %419 = and i64 %413, %418, !mcsema_real_eip !51
  %420 = icmp slt i64 %419, 0
  store i1 %420, i1* %OF_val, !mcsema_real_eip !51
  %421 = trunc i64 %412 to i8, !mcsema_real_eip !51
  %422 = tail call i8 @llvm.ctpop.i8(i8 %421), !mcsema_real_eip !51
  %423 = and i8 %422, 1
  %424 = icmp eq i8 %423, 0
  store i1 %424, i1* %PF_val, !mcsema_real_eip !51
  %425 = extractvalue { i64, i1 } %uadd210, 1
  store i1 %425, i1* %CF_val, !mcsema_real_eip !51
  store i64 %412, i64* %RSP_val, !mcsema_real_eip !51
  %426 = inttoptr i64 %412 to i64*, !mcsema_real_eip !52
  %427 = load i64, i64* %426, !mcsema_real_eip !52
  store i64 %427, i64* %RBP_val, !mcsema_real_eip !52
  %428 = add i64 %412, 16, !mcsema_real_eip !53
  store i64 %428, i64* %RSP_val, !mcsema_real_eip !53
  %429 = load i64, i64* %RAX_val, !mcsema_real_eip !53
  store i64 %429, i64* %RAX, !mcsema_real_eip !53
  %430 = load i64, i64* %RBX_val, !mcsema_real_eip !53
  store i64 %430, i64* %RBX, !mcsema_real_eip !53
  %431 = load i64, i64* %RCX_val, !mcsema_real_eip !53
  store i64 %431, i64* %RCX, !mcsema_real_eip !53
  %432 = load i64, i64* %RDX_val, !mcsema_real_eip !53
  store i64 %432, i64* %RDX, !mcsema_real_eip !53
  %433 = load i64, i64* %RSI_val, !mcsema_real_eip !53
  store i64 %433, i64* %RSI, !mcsema_real_eip !53
  %434 = load i64, i64* %RDI_val, !mcsema_real_eip !53
  store i64 %434, i64* %RDI, !mcsema_real_eip !53
  %435 = load i64, i64* %RSP_val, !mcsema_real_eip !53
  store i64 %435, i64* %RSP, !mcsema_real_eip !53
  %436 = load i64, i64* %RBP_val, !mcsema_real_eip !53
  store i64 %436, i64* %RBP, !mcsema_real_eip !53
  %437 = load i64, i64* %R8_val, !mcsema_real_eip !53
  store i64 %437, i64* %R8, !mcsema_real_eip !53
  %438 = load i64, i64* %R9_val, !mcsema_real_eip !53
  store i64 %438, i64* %R9, !mcsema_real_eip !53
  %439 = load i64, i64* %R10_val, !mcsema_real_eip !53
  store i64 %439, i64* %R10, !mcsema_real_eip !53
  %440 = load i64, i64* %R11_val, !mcsema_real_eip !53
  store i64 %440, i64* %R11, !mcsema_real_eip !53
  %441 = load i64, i64* %R12_val, !mcsema_real_eip !53
  store i64 %441, i64* %R12, !mcsema_real_eip !53
  %442 = load i64, i64* %R13_val, !mcsema_real_eip !53
  store i64 %442, i64* %R13, !mcsema_real_eip !53
  %443 = load i64, i64* %R14_val, !mcsema_real_eip !53
  store i64 %443, i64* %R14, !mcsema_real_eip !53
  %444 = load i64, i64* %R15_val, !mcsema_real_eip !53
  store i64 %444, i64* %R15, !mcsema_real_eip !53
  %445 = load i64, i64* %RIP_val, !mcsema_real_eip !53
  store i64 %445, i64* %RIP, !mcsema_real_eip !53
  %446 = load i1, i1* %CF_val, !mcsema_real_eip !53
  store i1 %446, i1* %CF, align 1, !mcsema_real_eip !53
  %447 = load i1, i1* %PF_val, !mcsema_real_eip !53
  store i1 %447, i1* %PF, align 1, !mcsema_real_eip !53
  %448 = load i1, i1* %AF_val, !mcsema_real_eip !53
  store i1 %448, i1* %AF, align 1, !mcsema_real_eip !53
  %449 = load i1, i1* %ZF_val, !mcsema_real_eip !53
  store i1 %449, i1* %ZF, align 1, !mcsema_real_eip !53
  %450 = load i1, i1* %SF_val, !mcsema_real_eip !53
  store i1 %450, i1* %SF, align 1, !mcsema_real_eip !53
  %451 = load i1, i1* %OF_val, !mcsema_real_eip !53
  store i1 %451, i1* %OF, align 1, !mcsema_real_eip !53
  %452 = load i1, i1* %DF_val, !mcsema_real_eip !53
  store i1 %452, i1* %DF, align 1, !mcsema_real_eip !53
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !53
  %453 = load i1, i1* %FPU_B_val, !mcsema_real_eip !53
  store i1 %453, i1* %FPU_B, align 1, !mcsema_real_eip !53
  %454 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !53
  store i1 %454, i1* %FPU_C3, align 1, !mcsema_real_eip !53
  %455 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !53
  store i3 %455, i3* %FPU_TOP, align 1, !mcsema_real_eip !53
  %456 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !53
  store i1 %456, i1* %FPU_C2, align 1, !mcsema_real_eip !53
  %457 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !53
  store i1 %457, i1* %FPU_C1, align 1, !mcsema_real_eip !53
  %458 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !53
  store i1 %458, i1* %FPU_C0, align 1, !mcsema_real_eip !53
  %459 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !53
  store i1 %459, i1* %FPU_ES, align 1, !mcsema_real_eip !53
  %460 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !53
  store i1 %460, i1* %FPU_SF, align 1, !mcsema_real_eip !53
  %461 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !53
  store i1 %461, i1* %FPU_PE, align 1, !mcsema_real_eip !53
  %462 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !53
  store i1 %462, i1* %FPU_UE, align 1, !mcsema_real_eip !53
  %463 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !53
  store i1 %463, i1* %FPU_OE, align 1, !mcsema_real_eip !53
  %464 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !53
  store i1 %464, i1* %FPU_ZE, align 1, !mcsema_real_eip !53
  %465 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !53
  store i1 %465, i1* %FPU_DE, align 1, !mcsema_real_eip !53
  %466 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !53
  store i1 %466, i1* %FPU_IE, align 1, !mcsema_real_eip !53
  %467 = load i1, i1* %FPU_X_val, !mcsema_real_eip !53
  store i1 %467, i1* %FPU_X, align 1, !mcsema_real_eip !53
  %468 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !53
  store i2 %468, i2* %FPU_RC, align 1, !mcsema_real_eip !53
  %469 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !53
  store i2 %469, i2* %FPU_PC, align 1, !mcsema_real_eip !53
  %470 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !53
  store i1 %470, i1* %FPU_PM, align 1, !mcsema_real_eip !53
  %471 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !53
  store i1 %471, i1* %FPU_UM, align 1, !mcsema_real_eip !53
  %472 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !53
  store i1 %472, i1* %FPU_OM, align 1, !mcsema_real_eip !53
  %473 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !53
  store i1 %473, i1* %FPU_ZM, align 1, !mcsema_real_eip !53
  %474 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !53
  store i1 %474, i1* %FPU_DM, align 1, !mcsema_real_eip !53
  %475 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !53
  store i1 %475, i1* %FPU_IM, align 1, !mcsema_real_eip !53
  %476 = load i64, i64* %53, align 4
  store i64 %476, i64* %52, align 4
  %477 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !53
  store i16 %477, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !53
  %478 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !53
  store i64 %478, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !53
  %479 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !53
  store i16 %479, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !53
  %480 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !53
  store i64 %480, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !53
  %481 = load i128, i128* %XMM0_val, !mcsema_real_eip !53
  store i128 %481, i128* %XMM0, align 1, !mcsema_real_eip !53
  %482 = load i128, i128* %XMM1_val, !mcsema_real_eip !53
  store i128 %482, i128* %XMM1, align 1, !mcsema_real_eip !53
  %483 = load i128, i128* %XMM2_val, !mcsema_real_eip !53
  store i128 %483, i128* %XMM2, align 1, !mcsema_real_eip !53
  %484 = load i128, i128* %XMM3_val, !mcsema_real_eip !53
  store i128 %484, i128* %XMM3, align 1, !mcsema_real_eip !53
  %485 = load i128, i128* %XMM4_val, !mcsema_real_eip !53
  store i128 %485, i128* %XMM4, align 1, !mcsema_real_eip !53
  %486 = load i128, i128* %XMM5_val, !mcsema_real_eip !53
  store i128 %486, i128* %XMM5, align 1, !mcsema_real_eip !53
  %487 = load i128, i128* %XMM6_val, !mcsema_real_eip !53
  store i128 %487, i128* %XMM6, align 1, !mcsema_real_eip !53
  %488 = load i128, i128* %XMM7_val, !mcsema_real_eip !53
  store i128 %488, i128* %XMM7, align 1, !mcsema_real_eip !53
  %489 = load i128, i128* %XMM8_val, !mcsema_real_eip !53
  store i128 %489, i128* %XMM8, align 1, !mcsema_real_eip !53
  %490 = load i128, i128* %XMM9_val, !mcsema_real_eip !53
  store i128 %490, i128* %XMM9, align 1, !mcsema_real_eip !53
  %491 = load i128, i128* %XMM10_val, !mcsema_real_eip !53
  store i128 %491, i128* %XMM10, align 1, !mcsema_real_eip !53
  %492 = load i128, i128* %XMM11_val, !mcsema_real_eip !53
  store i128 %492, i128* %XMM11, align 1, !mcsema_real_eip !53
  %493 = load i128, i128* %XMM12_val, !mcsema_real_eip !53
  store i128 %493, i128* %XMM12, align 1, !mcsema_real_eip !53
  %494 = load i128, i128* %XMM13_val, !mcsema_real_eip !53
  store i128 %494, i128* %XMM13, align 1, !mcsema_real_eip !53
  %495 = load i128, i128* %XMM14_val, !mcsema_real_eip !53
  store i128 %495, i128* %XMM14, align 1, !mcsema_real_eip !53
  %496 = load i128, i128* %XMM15_val, !mcsema_real_eip !53
  store i128 %496, i128* %XMM15, align 1, !mcsema_real_eip !53
  %497 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !53
  store i64 %497, i64* %STACK_BASE, align 1, !mcsema_real_eip !53
  %498 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !53
  store i64 %498, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !53
  ret void, !mcsema_real_eip !53
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !54
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !54
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !54
  %XMM15_val = alloca i128, !mcsema_real_eip !54
  %XMM14_val = alloca i128, !mcsema_real_eip !54
  %XMM13_val = alloca i128, !mcsema_real_eip !54
  %XMM12_val = alloca i128, !mcsema_real_eip !54
  %XMM11_val = alloca i128, !mcsema_real_eip !54
  %XMM10_val = alloca i128, !mcsema_real_eip !54
  %XMM9_val = alloca i128, !mcsema_real_eip !54
  %XMM8_val = alloca i128, !mcsema_real_eip !54
  %XMM7_val = alloca i128, !mcsema_real_eip !54
  %XMM6_val = alloca i128, !mcsema_real_eip !54
  %XMM5_val = alloca i128, !mcsema_real_eip !54
  %XMM4_val = alloca i128, !mcsema_real_eip !54
  %XMM3_val = alloca i128, !mcsema_real_eip !54
  %XMM2_val = alloca i128, !mcsema_real_eip !54
  %XMM1_val = alloca i128, !mcsema_real_eip !54
  %XMM0_val = alloca i128, !mcsema_real_eip !54
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !54
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !54
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !54
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !54
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !54
  %FPU_IM_val = alloca i1, !mcsema_real_eip !54
  %FPU_DM_val = alloca i1, !mcsema_real_eip !54
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !54
  %FPU_OM_val = alloca i1, !mcsema_real_eip !54
  %FPU_UM_val = alloca i1, !mcsema_real_eip !54
  %FPU_PM_val = alloca i1, !mcsema_real_eip !54
  %FPU_PC_val = alloca i2, !mcsema_real_eip !54
  %FPU_RC_val = alloca i2, !mcsema_real_eip !54
  %FPU_X_val = alloca i1, !mcsema_real_eip !54
  %FPU_IE_val = alloca i1, !mcsema_real_eip !54
  %FPU_DE_val = alloca i1, !mcsema_real_eip !54
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !54
  %FPU_OE_val = alloca i1, !mcsema_real_eip !54
  %FPU_UE_val = alloca i1, !mcsema_real_eip !54
  %FPU_PE_val = alloca i1, !mcsema_real_eip !54
  %FPU_SF_val = alloca i1, !mcsema_real_eip !54
  %FPU_ES_val = alloca i1, !mcsema_real_eip !54
  %FPU_C0_val = alloca i1, !mcsema_real_eip !54
  %FPU_C1_val = alloca i1, !mcsema_real_eip !54
  %FPU_C2_val = alloca i1, !mcsema_real_eip !54
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !54
  %FPU_C3_val = alloca i1, !mcsema_real_eip !54
  %FPU_B_val = alloca i1, !mcsema_real_eip !54
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !54
  %DF_val = alloca i1, !mcsema_real_eip !54
  %OF_val = alloca i1, !mcsema_real_eip !54
  %SF_val = alloca i1, !mcsema_real_eip !54
  %CF_val = alloca i1, !mcsema_real_eip !54
  %AF_val = alloca i1, !mcsema_real_eip !54
  %PF_val = alloca i1, !mcsema_real_eip !54
  %ZF_val = alloca i1, !mcsema_real_eip !54
  %RIP_val = alloca i64, !mcsema_real_eip !54
  %R14_val = alloca i64, !mcsema_real_eip !54
  %R13_val = alloca i64, !mcsema_real_eip !54
  %R12_val = alloca i64, !mcsema_real_eip !54
  %R11_val = alloca i64, !mcsema_real_eip !54
  %R10_val = alloca i64, !mcsema_real_eip !54
  %R9_val = alloca i64, !mcsema_real_eip !54
  %R8_val = alloca i64, !mcsema_real_eip !54
  %RSP_val = alloca i64, !mcsema_real_eip !54
  %RBP_val = alloca i64, !mcsema_real_eip !54
  %RDI_val = alloca i64, !mcsema_real_eip !54
  %RSI_val = alloca i64, !mcsema_real_eip !54
  %RDX_val = alloca i64, !mcsema_real_eip !54
  %RCX_val = alloca i64, !mcsema_real_eip !54
  %RBX_val = alloca i64, !mcsema_real_eip !54
  %RAX_val = alloca i64, !mcsema_real_eip !54
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !54
  %1 = load i64, i64* %RAX, !mcsema_real_eip !54
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !54
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !54
  %2 = load i64, i64* %RBX, !mcsema_real_eip !54
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !54
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !54
  %3 = load i64, i64* %RCX, !mcsema_real_eip !54
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !54
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !54
  %4 = load i64, i64* %RDX, !mcsema_real_eip !54
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !54
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !54
  %5 = load i64, i64* %RSI, !mcsema_real_eip !54
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !54
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !54
  %6 = load i64, i64* %RDI, !mcsema_real_eip !54
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !54
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !54
  %7 = load i64, i64* %RSP, !mcsema_real_eip !54
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !54
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !54
  %8 = load i64, i64* %RBP, !mcsema_real_eip !54
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !54
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !54
  %9 = load i64, i64* %R8, !mcsema_real_eip !54
  store i64 %9, i64* %R8_val, !mcsema_real_eip !54
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !54
  %10 = load i64, i64* %R9, !mcsema_real_eip !54
  store i64 %10, i64* %R9_val, !mcsema_real_eip !54
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !54
  %11 = load i64, i64* %R10, !mcsema_real_eip !54
  store i64 %11, i64* %R10_val, !mcsema_real_eip !54
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !54
  %12 = load i64, i64* %R11, !mcsema_real_eip !54
  store i64 %12, i64* %R11_val, !mcsema_real_eip !54
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !54
  %13 = load i64, i64* %R12, !mcsema_real_eip !54
  store i64 %13, i64* %R12_val, !mcsema_real_eip !54
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !54
  %14 = load i64, i64* %R13, !mcsema_real_eip !54
  store i64 %14, i64* %R13_val, !mcsema_real_eip !54
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !54
  %15 = load i64, i64* %R14, !mcsema_real_eip !54
  store i64 %15, i64* %R14_val, !mcsema_real_eip !54
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !54
  %16 = load i64, i64* %R15, !mcsema_real_eip !54
  store i64 %16, i64* %R15_val, !mcsema_real_eip !54
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !54
  %17 = load i64, i64* %RIP, !mcsema_real_eip !54
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !54
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !54
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !54
  store i1 %18, i1* %CF_val, !mcsema_real_eip !54
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !54
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !54
  store i1 %19, i1* %PF_val, !mcsema_real_eip !54
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !54
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !54
  store i1 %20, i1* %AF_val, !mcsema_real_eip !54
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !54
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !54
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !54
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !54
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !54
  store i1 %22, i1* %SF_val, !mcsema_real_eip !54
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !54
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !54
  store i1 %23, i1* %OF_val, !mcsema_real_eip !54
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !54
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !54
  store i1 %24, i1* %DF_val, !mcsema_real_eip !54
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !54
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !54
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !54
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !54
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !54
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !54
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !54
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !54
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !54
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !54
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !54
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !54
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !54
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !54
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !54
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !54
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !54
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !54
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !54
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !54
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !54
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !54
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !54
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !54
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !54
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !54
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !54
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !54
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !54
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !54
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !54
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !54
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !54
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !54
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !54
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !54
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !54
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !54
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !54
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !54
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !54
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !54
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !54
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !54
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !54
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !54
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !54
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !54
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !54
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !54
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !54
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !54
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !54
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !54
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !54
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !54
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !54
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !54
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !54
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !54
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !54
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !54
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !54
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !54
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !54
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !54
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !54
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !54
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !54
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !54
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !54
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !54
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !54
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !54
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !54
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !54
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !54
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !54
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !54
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !54
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !54
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !54
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !54
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !54
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !54
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !54
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !54
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !54
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !54
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !54
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !54
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !54
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !54
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !54
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !54
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !54
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !54
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !54
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !54
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !54
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !54
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !54
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !54
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !54
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !54
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !54
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !54
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !54
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !54
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !54
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !54
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !54
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !54
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !54
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !54
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !54
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !54
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !54
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !54
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !54
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !54
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !54
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !54
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !54
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !54
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !54
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !54
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !54
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !54
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !54
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !54
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !54
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !54
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !54
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !54
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !54
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !54
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !54
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !54
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !54
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !54
  %78 = load i64, i64* %RSP_val, !mcsema_real_eip !54
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !54
  store i64 %77, i64* %80, !mcsema_real_eip !54
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !55
  %81 = load i64, i64* %RBX_val, !mcsema_real_eip !56
  %82 = add i64 %78, -16
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !56
  store i64 %81, i64* %83, !mcsema_real_eip !56
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !56
  %84 = load i64, i64* %RBP_val, !mcsema_real_eip !57
  %85 = add i64 %84, 48, !mcsema_real_eip !57
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !57
  %87 = load i64, i64* %86, !mcsema_real_eip !57
  store i64 %87, i64* %RAX_val, !mcsema_real_eip !57
  %88 = add i64 %84, 40, !mcsema_real_eip !58
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !58
  %90 = load i64, i64* %89, !mcsema_real_eip !58
  store i64 %90, i64* %R10_val, !mcsema_real_eip !58
  %91 = load i64, i64* %RBP_val, !mcsema_real_eip !59
  %92 = add i64 %91, 24, !mcsema_real_eip !59
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !59
  %94 = ptrtoint i64* %93 to i64, !mcsema_real_eip !59
  store i64 %94, i64* %R11_val, !mcsema_real_eip !59
  %95 = add i64 %91, 16, !mcsema_real_eip !60
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !60
  %97 = bitcast i64* %96 to i32*
  %98 = load i32, i32* %97, !mcsema_real_eip !60
  %99 = zext i32 %98 to i64, !mcsema_real_eip !60
  store i64 %99, i64* %RBX_val, !mcsema_real_eip !60
  %100 = load i64, i64* %RBP_val, !mcsema_real_eip !61
  %101 = add i64 %100, -56, !mcsema_real_eip !61
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !61
  %103 = load i64, i64* %RDI_val, !mcsema_real_eip !61
  store i64 %103, i64* %102, !mcsema_real_eip !61
  %104 = load i64, i64* %RBP_val, !mcsema_real_eip !62
  %105 = add i64 %104, -48, !mcsema_real_eip !62
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !62
  %107 = load i64, i64* %RSI_val, !mcsema_real_eip !62
  %108 = trunc i64 %107 to i32, !mcsema_real_eip !62
  %109 = bitcast i64* %106 to i32*
  store i32 %108, i32* %109, !mcsema_real_eip !62
  %110 = load i64, i64* %RBP_val, !mcsema_real_eip !63
  %111 = add i64 %110, -48, !mcsema_real_eip !63
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !63
  %113 = bitcast i64* %112 to i32*
  %114 = load i32, i32* %113, !mcsema_real_eip !63
  %115 = zext i32 %114 to i64, !mcsema_real_eip !63
  store i64 %115, i64* %RSI_val, !mcsema_real_eip !63
  %116 = load i64, i64* %RBP_val, !mcsema_real_eip !64
  %117 = add i64 %116, -32, !mcsema_real_eip !64
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !64
  %119 = bitcast i64* %118 to i32*
  store i32 %114, i32* %119, !mcsema_real_eip !64
  %120 = load i64, i64* %RBP_val, !mcsema_real_eip !65
  %121 = add i64 %120, -56, !mcsema_real_eip !65
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !65
  %123 = load i64, i64* %122, !mcsema_real_eip !65
  store i64 %123, i64* %RDI_val, !mcsema_real_eip !65
  %124 = add i64 %120, -40, !mcsema_real_eip !66
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !66
  store i64 %123, i64* %125, !mcsema_real_eip !66
  %126 = load i64, i64* %RBP_val, !mcsema_real_eip !67
  %127 = add i64 %126, -64, !mcsema_real_eip !67
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !67
  %129 = load i64, i64* %RDX_val, !mcsema_real_eip !67
  store i64 %129, i64* %128, !mcsema_real_eip !67
  %130 = load i64, i64* %RBP_val, !mcsema_real_eip !68
  %131 = add i64 %130, -72, !mcsema_real_eip !68
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !68
  %133 = load i64, i64* %RCX_val, !mcsema_real_eip !68
  store i64 %133, i64* %132, !mcsema_real_eip !68
  %134 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  %135 = add i64 %134, -76, !mcsema_real_eip !69
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !69
  %137 = load i64, i64* %R8_val, !mcsema_real_eip !69
  %138 = trunc i64 %137 to i32, !mcsema_real_eip !69
  %139 = bitcast i64* %136 to i32*
  store i32 %138, i32* %139, !mcsema_real_eip !69
  %140 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %141 = add i64 %140, -80, !mcsema_real_eip !70
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !70
  %143 = load i64, i64* %R9_val, !mcsema_real_eip !70
  %144 = trunc i64 %143 to i32, !mcsema_real_eip !70
  %145 = bitcast i64* %142 to i32*
  store i32 %144, i32* %145, !mcsema_real_eip !70
  %146 = load i64, i64* %RBP_val, !mcsema_real_eip !71
  %147 = add i64 %146, -84, !mcsema_real_eip !71
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !71
  %149 = load i64, i64* %RBX_val, !mcsema_real_eip !71
  %150 = trunc i64 %149 to i32, !mcsema_real_eip !71
  %151 = bitcast i64* %148 to i32*
  store i32 %150, i32* %151, !mcsema_real_eip !71
  %152 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %153 = add i64 %152, -96, !mcsema_real_eip !72
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !72
  %155 = load i64, i64* %R10_val, !mcsema_real_eip !72
  store i64 %155, i64* %154, !mcsema_real_eip !72
  %156 = load i64, i64* %RBP_val, !mcsema_real_eip !73
  %157 = add i64 %156, -104, !mcsema_real_eip !73
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !73
  %159 = load i64, i64* %RAX_val, !mcsema_real_eip !73
  store i64 %159, i64* %158, !mcsema_real_eip !73
  %160 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %161 = add i64 %160, -40, !mcsema_real_eip !74
  %162 = inttoptr i64 %161 to i64*, !mcsema_real_eip !74
  %163 = bitcast i64* %162 to i32*
  %164 = load i32, i32* %163, !mcsema_real_eip !74
  %165 = zext i32 %164 to i64, !mcsema_real_eip !74
  store i64 %165, i64* %RSI_val, !mcsema_real_eip !74
  %166 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %167 = add i64 %166, -64, !mcsema_real_eip !75
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !75
  %169 = load i64, i64* %168, !mcsema_real_eip !75
  store i64 %169, i64* %RAX_val, !mcsema_real_eip !75
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !76
  %171 = bitcast i64* %170 to i32*
  %172 = load i32, i32* %171, !mcsema_real_eip !76
  %173 = zext i32 %172 to i64, !mcsema_real_eip !76
  store i64 %173, i64* %R8_val, !mcsema_real_eip !76
  %174 = load i64, i64* %RSI_val, !mcsema_real_eip !77
  %175 = trunc i64 %174 to i32, !mcsema_real_eip !77
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %172, i32 %175)
  %176 = extractvalue { i32, i1 } %uadd, 0
  %177 = xor i32 %176, %175, !mcsema_real_eip !77
  %178 = xor i32 %177, %172, !mcsema_real_eip !77
  %179 = and i32 %178, 16, !mcsema_real_eip !77
  %180 = icmp ne i32 %179, 0, !mcsema_real_eip !77
  store i1 %180, i1* %AF_val, !mcsema_real_eip !77
  %181 = icmp slt i32 %176, 0
  store i1 %181, i1* %SF_val, !mcsema_real_eip !77
  %182 = icmp eq i32 %176, 0, !mcsema_real_eip !77
  store i1 %182, i1* %ZF_val, !mcsema_real_eip !77
  %183 = xor i32 %172, -2147483648, !mcsema_real_eip !77
  %184 = xor i32 %183, %175, !mcsema_real_eip !77
  %185 = and i32 %177, %184, !mcsema_real_eip !77
  %186 = icmp slt i32 %185, 0
  store i1 %186, i1* %OF_val, !mcsema_real_eip !77
  %187 = trunc i32 %176 to i8, !mcsema_real_eip !77
  %188 = tail call i8 @llvm.ctpop.i8(i8 %187), !mcsema_real_eip !77
  %189 = and i8 %188, 1
  %190 = icmp eq i8 %189, 0
  store i1 %190, i1* %PF_val, !mcsema_real_eip !77
  %191 = extractvalue { i32, i1 } %uadd, 1
  store i1 %191, i1* %CF_val, !mcsema_real_eip !77
  %192 = zext i32 %176 to i64, !mcsema_real_eip !77
  store i64 %192, i64* %RSI_val, !mcsema_real_eip !77
  %193 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %194 = add i64 %193, -72, !mcsema_real_eip !78
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !78
  %196 = load i64, i64* %195, !mcsema_real_eip !78
  store i64 %196, i64* %RAX_val, !mcsema_real_eip !78
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !79
  %198 = bitcast i64* %197 to i32*
  %199 = load i32, i32* %198, !mcsema_real_eip !79
  %200 = zext i32 %199 to i64, !mcsema_real_eip !79
  store i64 %200, i64* %R8_val, !mcsema_real_eip !79
  %201 = load i64, i64* %RSI_val, !mcsema_real_eip !80
  %202 = trunc i64 %201 to i32, !mcsema_real_eip !80
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %199, i32 %202)
  %203 = extractvalue { i32, i1 } %uadd70, 0
  %204 = xor i32 %203, %202, !mcsema_real_eip !80
  %205 = xor i32 %204, %199, !mcsema_real_eip !80
  %206 = and i32 %205, 16, !mcsema_real_eip !80
  %207 = icmp ne i32 %206, 0, !mcsema_real_eip !80
  store i1 %207, i1* %AF_val, !mcsema_real_eip !80
  %208 = icmp slt i32 %203, 0
  store i1 %208, i1* %SF_val, !mcsema_real_eip !80
  %209 = icmp eq i32 %203, 0, !mcsema_real_eip !80
  store i1 %209, i1* %ZF_val, !mcsema_real_eip !80
  %210 = xor i32 %199, -2147483648, !mcsema_real_eip !80
  %211 = xor i32 %210, %202, !mcsema_real_eip !80
  %212 = and i32 %204, %211, !mcsema_real_eip !80
  %213 = icmp slt i32 %212, 0
  store i1 %213, i1* %OF_val, !mcsema_real_eip !80
  %214 = trunc i32 %203 to i8, !mcsema_real_eip !80
  %215 = tail call i8 @llvm.ctpop.i8(i8 %214), !mcsema_real_eip !80
  %216 = and i8 %215, 1
  %217 = icmp eq i8 %216, 0
  store i1 %217, i1* %PF_val, !mcsema_real_eip !80
  %218 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %218, i1* %CF_val, !mcsema_real_eip !80
  %219 = zext i32 %203 to i64, !mcsema_real_eip !80
  store i64 %219, i64* %RSI_val, !mcsema_real_eip !80
  %220 = load i64, i64* %R11_val, !mcsema_real_eip !81
  %221 = inttoptr i64 %220 to i64*, !mcsema_real_eip !81
  %222 = bitcast i64* %221 to i32*
  %223 = load i32, i32* %222, !mcsema_real_eip !81
  %224 = zext i32 %223 to i64, !mcsema_real_eip !81
  store i64 %224, i64* %R8_val, !mcsema_real_eip !81
  %225 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %226 = add i64 %225, -96, !mcsema_real_eip !82
  %227 = inttoptr i64 %226 to i64*, !mcsema_real_eip !82
  %228 = load i64, i64* %227, !mcsema_real_eip !82
  store i64 %228, i64* %RAX_val, !mcsema_real_eip !82
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !83
  %230 = bitcast i64* %229 to i32*
  %231 = load i32, i32* %230, !mcsema_real_eip !83
  %232 = zext i32 %231 to i64, !mcsema_real_eip !83
  store i64 %232, i64* %R9_val, !mcsema_real_eip !83
  %233 = load i64, i64* %R8_val, !mcsema_real_eip !84
  %234 = trunc i64 %233 to i32, !mcsema_real_eip !84
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %231, i32 %234)
  %235 = extractvalue { i32, i1 } %uadd71, 0
  %236 = xor i32 %235, %234, !mcsema_real_eip !84
  %237 = xor i32 %236, %231, !mcsema_real_eip !84
  %238 = and i32 %237, 16, !mcsema_real_eip !84
  %239 = icmp ne i32 %238, 0, !mcsema_real_eip !84
  store i1 %239, i1* %AF_val, !mcsema_real_eip !84
  %240 = icmp slt i32 %235, 0
  store i1 %240, i1* %SF_val, !mcsema_real_eip !84
  %241 = icmp eq i32 %235, 0, !mcsema_real_eip !84
  store i1 %241, i1* %ZF_val, !mcsema_real_eip !84
  %242 = xor i32 %231, -2147483648, !mcsema_real_eip !84
  %243 = xor i32 %242, %234, !mcsema_real_eip !84
  %244 = and i32 %236, %243, !mcsema_real_eip !84
  %245 = icmp slt i32 %244, 0
  store i1 %245, i1* %OF_val, !mcsema_real_eip !84
  %246 = trunc i32 %235 to i8, !mcsema_real_eip !84
  %247 = tail call i8 @llvm.ctpop.i8(i8 %246), !mcsema_real_eip !84
  %248 = and i8 %247, 1
  %249 = icmp eq i8 %248, 0
  store i1 %249, i1* %PF_val, !mcsema_real_eip !84
  %250 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %250, i1* %CF_val, !mcsema_real_eip !84
  %251 = zext i32 %235 to i64, !mcsema_real_eip !84
  store i64 %251, i64* %R8_val, !mcsema_real_eip !84
  %252 = load i64, i64* %RBP_val, !mcsema_real_eip !85
  %253 = add i64 %252, -104, !mcsema_real_eip !85
  %254 = inttoptr i64 %253 to i64*, !mcsema_real_eip !85
  %255 = load i64, i64* %254, !mcsema_real_eip !85
  store i64 %255, i64* %RAX_val, !mcsema_real_eip !85
  %256 = inttoptr i64 %255 to i64*, !mcsema_real_eip !86
  %257 = bitcast i64* %256 to i32*
  %258 = load i32, i32* %257, !mcsema_real_eip !86
  %259 = zext i32 %258 to i64, !mcsema_real_eip !86
  store i64 %259, i64* %R9_val, !mcsema_real_eip !86
  %260 = load i64, i64* %R8_val, !mcsema_real_eip !87
  %261 = trunc i64 %260 to i32, !mcsema_real_eip !87
  %262 = add i32 %258, %261
  %263 = zext i32 %262 to i64, !mcsema_real_eip !87
  store i64 %263, i64* %R8_val, !mcsema_real_eip !87
  %264 = load i64, i64* %RSI_val, !mcsema_real_eip !88
  %265 = trunc i64 %264 to i32, !mcsema_real_eip !88
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %262, i32 %265)
  %266 = extractvalue { i32, i1 } %uadd73, 0
  %267 = xor i32 %266, %265, !mcsema_real_eip !88
  %268 = xor i32 %267, %262, !mcsema_real_eip !88
  %269 = and i32 %268, 16, !mcsema_real_eip !88
  %270 = icmp ne i32 %269, 0, !mcsema_real_eip !88
  store i1 %270, i1* %AF_val, !mcsema_real_eip !88
  %271 = icmp slt i32 %266, 0
  store i1 %271, i1* %SF_val, !mcsema_real_eip !88
  %272 = icmp eq i32 %266, 0, !mcsema_real_eip !88
  store i1 %272, i1* %ZF_val, !mcsema_real_eip !88
  %273 = xor i32 %262, -2147483648, !mcsema_real_eip !88
  %274 = xor i32 %273, %265, !mcsema_real_eip !88
  %275 = and i32 %267, %274, !mcsema_real_eip !88
  %276 = icmp slt i32 %275, 0
  store i1 %276, i1* %OF_val, !mcsema_real_eip !88
  %277 = trunc i32 %266 to i8, !mcsema_real_eip !88
  %278 = tail call i8 @llvm.ctpop.i8(i8 %277), !mcsema_real_eip !88
  %279 = and i8 %278, 1
  %280 = icmp eq i8 %279, 0
  store i1 %280, i1* %PF_val, !mcsema_real_eip !88
  %281 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %281, i1* %CF_val, !mcsema_real_eip !88
  %282 = zext i32 %266 to i64, !mcsema_real_eip !88
  store i64 %282, i64* %RSI_val, !mcsema_real_eip !88
  %283 = load i64, i64* %RBP_val, !mcsema_real_eip !89
  %284 = add i64 %283, -120, !mcsema_real_eip !89
  %285 = inttoptr i64 %284 to i64*, !mcsema_real_eip !89
  %286 = bitcast i64* %285 to i32*
  store i32 %266, i32* %286, !mcsema_real_eip !89
  %287 = load i64, i64* %RBP_val, !mcsema_real_eip !90
  %288 = add i64 %287, -36, !mcsema_real_eip !90
  %289 = inttoptr i64 %288 to i64*, !mcsema_real_eip !90
  %290 = bitcast i64* %289 to i32*
  %291 = load i32, i32* %290, !mcsema_real_eip !90
  %292 = zext i32 %291 to i64, !mcsema_real_eip !90
  store i64 %292, i64* %RSI_val, !mcsema_real_eip !90
  %293 = load i64, i64* %RBP_val, !mcsema_real_eip !91
  %294 = add i64 %293, -64, !mcsema_real_eip !91
  %295 = inttoptr i64 %294 to i64*, !mcsema_real_eip !91
  %296 = load i64, i64* %295, !mcsema_real_eip !91
  store i64 %296, i64* %RAX_val, !mcsema_real_eip !91
  %297 = add i64 %296, 4, !mcsema_real_eip !92
  %298 = inttoptr i64 %297 to i64*, !mcsema_real_eip !92
  %299 = bitcast i64* %298 to i32*
  %300 = load i32, i32* %299, !mcsema_real_eip !92
  %301 = zext i32 %300 to i64, !mcsema_real_eip !92
  store i64 %301, i64* %R8_val, !mcsema_real_eip !92
  %302 = load i64, i64* %RSI_val, !mcsema_real_eip !93
  %303 = trunc i64 %302 to i32, !mcsema_real_eip !93
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %300, i32 %303)
  %304 = extractvalue { i32, i1 } %uadd74, 0
  %305 = xor i32 %304, %303, !mcsema_real_eip !93
  %306 = xor i32 %305, %300, !mcsema_real_eip !93
  %307 = and i32 %306, 16, !mcsema_real_eip !93
  %308 = icmp ne i32 %307, 0, !mcsema_real_eip !93
  store i1 %308, i1* %AF_val, !mcsema_real_eip !93
  %309 = icmp slt i32 %304, 0
  store i1 %309, i1* %SF_val, !mcsema_real_eip !93
  %310 = icmp eq i32 %304, 0, !mcsema_real_eip !93
  store i1 %310, i1* %ZF_val, !mcsema_real_eip !93
  %311 = xor i32 %300, -2147483648, !mcsema_real_eip !93
  %312 = xor i32 %311, %303, !mcsema_real_eip !93
  %313 = and i32 %305, %312, !mcsema_real_eip !93
  %314 = icmp slt i32 %313, 0
  store i1 %314, i1* %OF_val, !mcsema_real_eip !93
  %315 = trunc i32 %304 to i8, !mcsema_real_eip !93
  %316 = tail call i8 @llvm.ctpop.i8(i8 %315), !mcsema_real_eip !93
  %317 = and i8 %316, 1
  %318 = icmp eq i8 %317, 0
  store i1 %318, i1* %PF_val, !mcsema_real_eip !93
  %319 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %319, i1* %CF_val, !mcsema_real_eip !93
  %320 = zext i32 %304 to i64, !mcsema_real_eip !93
  store i64 %320, i64* %RSI_val, !mcsema_real_eip !93
  %321 = load i64, i64* %RBP_val, !mcsema_real_eip !94
  %322 = add i64 %321, -72, !mcsema_real_eip !94
  %323 = inttoptr i64 %322 to i64*, !mcsema_real_eip !94
  %324 = load i64, i64* %323, !mcsema_real_eip !94
  store i64 %324, i64* %RAX_val, !mcsema_real_eip !94
  %325 = add i64 %324, 4, !mcsema_real_eip !95
  %326 = inttoptr i64 %325 to i64*, !mcsema_real_eip !95
  %327 = bitcast i64* %326 to i32*
  %328 = load i32, i32* %327, !mcsema_real_eip !95
  %329 = zext i32 %328 to i64, !mcsema_real_eip !95
  store i64 %329, i64* %R8_val, !mcsema_real_eip !95
  %330 = load i64, i64* %RSI_val, !mcsema_real_eip !96
  %331 = trunc i64 %330 to i32, !mcsema_real_eip !96
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %328, i32 %331)
  %332 = extractvalue { i32, i1 } %uadd75, 0
  %333 = xor i32 %332, %331, !mcsema_real_eip !96
  %334 = xor i32 %333, %328, !mcsema_real_eip !96
  %335 = and i32 %334, 16, !mcsema_real_eip !96
  %336 = icmp ne i32 %335, 0, !mcsema_real_eip !96
  store i1 %336, i1* %AF_val, !mcsema_real_eip !96
  %337 = icmp slt i32 %332, 0
  store i1 %337, i1* %SF_val, !mcsema_real_eip !96
  %338 = icmp eq i32 %332, 0, !mcsema_real_eip !96
  store i1 %338, i1* %ZF_val, !mcsema_real_eip !96
  %339 = xor i32 %328, -2147483648, !mcsema_real_eip !96
  %340 = xor i32 %339, %331, !mcsema_real_eip !96
  %341 = and i32 %333, %340, !mcsema_real_eip !96
  %342 = icmp slt i32 %341, 0
  store i1 %342, i1* %OF_val, !mcsema_real_eip !96
  %343 = trunc i32 %332 to i8, !mcsema_real_eip !96
  %344 = tail call i8 @llvm.ctpop.i8(i8 %343), !mcsema_real_eip !96
  %345 = and i8 %344, 1
  %346 = icmp eq i8 %345, 0
  store i1 %346, i1* %PF_val, !mcsema_real_eip !96
  %347 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %347, i1* %CF_val, !mcsema_real_eip !96
  %348 = zext i32 %332 to i64, !mcsema_real_eip !96
  store i64 %348, i64* %RSI_val, !mcsema_real_eip !96
  %349 = load i64, i64* %R11_val, !mcsema_real_eip !97
  %350 = add i64 %349, 4, !mcsema_real_eip !97
  %351 = inttoptr i64 %350 to i64*, !mcsema_real_eip !97
  %352 = bitcast i64* %351 to i32*
  %353 = load i32, i32* %352, !mcsema_real_eip !97
  %354 = zext i32 %353 to i64, !mcsema_real_eip !97
  store i64 %354, i64* %R8_val, !mcsema_real_eip !97
  %355 = load i64, i64* %RBP_val, !mcsema_real_eip !98
  %356 = add i64 %355, -96, !mcsema_real_eip !98
  %357 = inttoptr i64 %356 to i64*, !mcsema_real_eip !98
  %358 = load i64, i64* %357, !mcsema_real_eip !98
  store i64 %358, i64* %RAX_val, !mcsema_real_eip !98
  %359 = add i64 %358, 4, !mcsema_real_eip !99
  %360 = inttoptr i64 %359 to i64*, !mcsema_real_eip !99
  %361 = bitcast i64* %360 to i32*
  %362 = load i32, i32* %361, !mcsema_real_eip !99
  %363 = zext i32 %362 to i64, !mcsema_real_eip !99
  store i64 %363, i64* %R9_val, !mcsema_real_eip !99
  %364 = load i64, i64* %R8_val, !mcsema_real_eip !100
  %365 = trunc i64 %364 to i32, !mcsema_real_eip !100
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %362, i32 %365)
  %366 = extractvalue { i32, i1 } %uadd76, 0
  %367 = xor i32 %366, %365, !mcsema_real_eip !100
  %368 = xor i32 %367, %362, !mcsema_real_eip !100
  %369 = and i32 %368, 16, !mcsema_real_eip !100
  %370 = icmp ne i32 %369, 0, !mcsema_real_eip !100
  store i1 %370, i1* %AF_val, !mcsema_real_eip !100
  %371 = icmp slt i32 %366, 0
  store i1 %371, i1* %SF_val, !mcsema_real_eip !100
  %372 = icmp eq i32 %366, 0, !mcsema_real_eip !100
  store i1 %372, i1* %ZF_val, !mcsema_real_eip !100
  %373 = xor i32 %362, -2147483648, !mcsema_real_eip !100
  %374 = xor i32 %373, %365, !mcsema_real_eip !100
  %375 = and i32 %367, %374, !mcsema_real_eip !100
  %376 = icmp slt i32 %375, 0
  store i1 %376, i1* %OF_val, !mcsema_real_eip !100
  %377 = trunc i32 %366 to i8, !mcsema_real_eip !100
  %378 = tail call i8 @llvm.ctpop.i8(i8 %377), !mcsema_real_eip !100
  %379 = and i8 %378, 1
  %380 = icmp eq i8 %379, 0
  store i1 %380, i1* %PF_val, !mcsema_real_eip !100
  %381 = extractvalue { i32, i1 } %uadd76, 1
  store i1 %381, i1* %CF_val, !mcsema_real_eip !100
  %382 = zext i32 %366 to i64, !mcsema_real_eip !100
  store i64 %382, i64* %R8_val, !mcsema_real_eip !100
  %383 = load i64, i64* %RBP_val, !mcsema_real_eip !101
  %384 = add i64 %383, -104, !mcsema_real_eip !101
  %385 = inttoptr i64 %384 to i64*, !mcsema_real_eip !101
  %386 = load i64, i64* %385, !mcsema_real_eip !101
  store i64 %386, i64* %RAX_val, !mcsema_real_eip !101
  %387 = add i64 %386, 4, !mcsema_real_eip !102
  %388 = inttoptr i64 %387 to i64*, !mcsema_real_eip !102
  %389 = bitcast i64* %388 to i32*
  %390 = load i32, i32* %389, !mcsema_real_eip !102
  %391 = zext i32 %390 to i64, !mcsema_real_eip !102
  store i64 %391, i64* %R9_val, !mcsema_real_eip !102
  %392 = load i64, i64* %R8_val, !mcsema_real_eip !103
  %393 = trunc i64 %392 to i32, !mcsema_real_eip !103
  %394 = add i32 %390, %393
  %395 = zext i32 %394 to i64, !mcsema_real_eip !103
  store i64 %395, i64* %R8_val, !mcsema_real_eip !103
  %396 = load i64, i64* %RSI_val, !mcsema_real_eip !104
  %397 = trunc i64 %396 to i32, !mcsema_real_eip !104
  %uadd78 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %394, i32 %397)
  %398 = extractvalue { i32, i1 } %uadd78, 0
  %399 = xor i32 %398, %397, !mcsema_real_eip !104
  %400 = xor i32 %399, %394, !mcsema_real_eip !104
  %401 = and i32 %400, 16, !mcsema_real_eip !104
  %402 = icmp ne i32 %401, 0, !mcsema_real_eip !104
  store i1 %402, i1* %AF_val, !mcsema_real_eip !104
  %403 = icmp slt i32 %398, 0
  store i1 %403, i1* %SF_val, !mcsema_real_eip !104
  %404 = icmp eq i32 %398, 0, !mcsema_real_eip !104
  store i1 %404, i1* %ZF_val, !mcsema_real_eip !104
  %405 = xor i32 %394, -2147483648, !mcsema_real_eip !104
  %406 = xor i32 %405, %397, !mcsema_real_eip !104
  %407 = and i32 %399, %406, !mcsema_real_eip !104
  %408 = icmp slt i32 %407, 0
  store i1 %408, i1* %OF_val, !mcsema_real_eip !104
  %409 = trunc i32 %398 to i8, !mcsema_real_eip !104
  %410 = tail call i8 @llvm.ctpop.i8(i8 %409), !mcsema_real_eip !104
  %411 = and i8 %410, 1
  %412 = icmp eq i8 %411, 0
  store i1 %412, i1* %PF_val, !mcsema_real_eip !104
  %413 = extractvalue { i32, i1 } %uadd78, 1
  store i1 %413, i1* %CF_val, !mcsema_real_eip !104
  %414 = zext i32 %398 to i64, !mcsema_real_eip !104
  store i64 %414, i64* %RSI_val, !mcsema_real_eip !104
  %415 = load i64, i64* %RBP_val, !mcsema_real_eip !105
  %416 = add i64 %415, -116, !mcsema_real_eip !105
  %417 = inttoptr i64 %416 to i64*, !mcsema_real_eip !105
  %418 = bitcast i64* %417 to i32*
  store i32 %398, i32* %418, !mcsema_real_eip !105
  %419 = load i64, i64* %RBP_val, !mcsema_real_eip !106
  %420 = add i64 %419, -32, !mcsema_real_eip !106
  %421 = inttoptr i64 %420 to i64*, !mcsema_real_eip !106
  %422 = bitcast i64* %421 to i32*
  %423 = load i32, i32* %422, !mcsema_real_eip !106
  %424 = zext i32 %423 to i64, !mcsema_real_eip !106
  store i64 %424, i64* %RSI_val, !mcsema_real_eip !106
  %425 = load i64, i64* %RBP_val, !mcsema_real_eip !107
  %426 = add i64 %425, -64, !mcsema_real_eip !107
  %427 = inttoptr i64 %426 to i64*, !mcsema_real_eip !107
  %428 = load i64, i64* %427, !mcsema_real_eip !107
  store i64 %428, i64* %RAX_val, !mcsema_real_eip !107
  %429 = add i64 %428, 8, !mcsema_real_eip !108
  %430 = inttoptr i64 %429 to i64*, !mcsema_real_eip !108
  %431 = bitcast i64* %430 to i32*
  %432 = load i32, i32* %431, !mcsema_real_eip !108
  %433 = zext i32 %432 to i64, !mcsema_real_eip !108
  store i64 %433, i64* %R8_val, !mcsema_real_eip !108
  %434 = load i64, i64* %RSI_val, !mcsema_real_eip !109
  %435 = trunc i64 %434 to i32, !mcsema_real_eip !109
  %uadd79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %432, i32 %435)
  %436 = extractvalue { i32, i1 } %uadd79, 0
  %437 = xor i32 %436, %435, !mcsema_real_eip !109
  %438 = xor i32 %437, %432, !mcsema_real_eip !109
  %439 = and i32 %438, 16, !mcsema_real_eip !109
  %440 = icmp ne i32 %439, 0, !mcsema_real_eip !109
  store i1 %440, i1* %AF_val, !mcsema_real_eip !109
  %441 = icmp slt i32 %436, 0
  store i1 %441, i1* %SF_val, !mcsema_real_eip !109
  %442 = icmp eq i32 %436, 0, !mcsema_real_eip !109
  store i1 %442, i1* %ZF_val, !mcsema_real_eip !109
  %443 = xor i32 %432, -2147483648, !mcsema_real_eip !109
  %444 = xor i32 %443, %435, !mcsema_real_eip !109
  %445 = and i32 %437, %444, !mcsema_real_eip !109
  %446 = icmp slt i32 %445, 0
  store i1 %446, i1* %OF_val, !mcsema_real_eip !109
  %447 = trunc i32 %436 to i8, !mcsema_real_eip !109
  %448 = tail call i8 @llvm.ctpop.i8(i8 %447), !mcsema_real_eip !109
  %449 = and i8 %448, 1
  %450 = icmp eq i8 %449, 0
  store i1 %450, i1* %PF_val, !mcsema_real_eip !109
  %451 = extractvalue { i32, i1 } %uadd79, 1
  store i1 %451, i1* %CF_val, !mcsema_real_eip !109
  %452 = zext i32 %436 to i64, !mcsema_real_eip !109
  store i64 %452, i64* %RSI_val, !mcsema_real_eip !109
  %453 = load i64, i64* %RBP_val, !mcsema_real_eip !110
  %454 = add i64 %453, -72, !mcsema_real_eip !110
  %455 = inttoptr i64 %454 to i64*, !mcsema_real_eip !110
  %456 = load i64, i64* %455, !mcsema_real_eip !110
  store i64 %456, i64* %RAX_val, !mcsema_real_eip !110
  %457 = add i64 %456, 8, !mcsema_real_eip !111
  %458 = inttoptr i64 %457 to i64*, !mcsema_real_eip !111
  %459 = bitcast i64* %458 to i32*
  %460 = load i32, i32* %459, !mcsema_real_eip !111
  %461 = zext i32 %460 to i64, !mcsema_real_eip !111
  store i64 %461, i64* %R8_val, !mcsema_real_eip !111
  %462 = load i64, i64* %RSI_val, !mcsema_real_eip !112
  %463 = trunc i64 %462 to i32, !mcsema_real_eip !112
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %460, i32 %463)
  %464 = extractvalue { i32, i1 } %uadd80, 0
  %465 = xor i32 %464, %463, !mcsema_real_eip !112
  %466 = xor i32 %465, %460, !mcsema_real_eip !112
  %467 = and i32 %466, 16, !mcsema_real_eip !112
  %468 = icmp ne i32 %467, 0, !mcsema_real_eip !112
  store i1 %468, i1* %AF_val, !mcsema_real_eip !112
  %469 = icmp slt i32 %464, 0
  store i1 %469, i1* %SF_val, !mcsema_real_eip !112
  %470 = icmp eq i32 %464, 0, !mcsema_real_eip !112
  store i1 %470, i1* %ZF_val, !mcsema_real_eip !112
  %471 = xor i32 %460, -2147483648, !mcsema_real_eip !112
  %472 = xor i32 %471, %463, !mcsema_real_eip !112
  %473 = and i32 %465, %472, !mcsema_real_eip !112
  %474 = icmp slt i32 %473, 0
  store i1 %474, i1* %OF_val, !mcsema_real_eip !112
  %475 = trunc i32 %464 to i8, !mcsema_real_eip !112
  %476 = tail call i8 @llvm.ctpop.i8(i8 %475), !mcsema_real_eip !112
  %477 = and i8 %476, 1
  %478 = icmp eq i8 %477, 0
  store i1 %478, i1* %PF_val, !mcsema_real_eip !112
  %479 = extractvalue { i32, i1 } %uadd80, 1
  store i1 %479, i1* %CF_val, !mcsema_real_eip !112
  %480 = zext i32 %464 to i64, !mcsema_real_eip !112
  store i64 %480, i64* %RSI_val, !mcsema_real_eip !112
  %481 = load i64, i64* %R11_val, !mcsema_real_eip !113
  %482 = add i64 %481, 8, !mcsema_real_eip !113
  %483 = inttoptr i64 %482 to i64*, !mcsema_real_eip !113
  %484 = bitcast i64* %483 to i32*
  %485 = load i32, i32* %484, !mcsema_real_eip !113
  %486 = zext i32 %485 to i64, !mcsema_real_eip !113
  store i64 %486, i64* %R8_val, !mcsema_real_eip !113
  %487 = load i64, i64* %RBP_val, !mcsema_real_eip !114
  %488 = add i64 %487, -96, !mcsema_real_eip !114
  %489 = inttoptr i64 %488 to i64*, !mcsema_real_eip !114
  %490 = load i64, i64* %489, !mcsema_real_eip !114
  store i64 %490, i64* %RAX_val, !mcsema_real_eip !114
  %491 = add i64 %490, 8, !mcsema_real_eip !115
  %492 = inttoptr i64 %491 to i64*, !mcsema_real_eip !115
  %493 = bitcast i64* %492 to i32*
  %494 = load i32, i32* %493, !mcsema_real_eip !115
  %495 = zext i32 %494 to i64, !mcsema_real_eip !115
  store i64 %495, i64* %R9_val, !mcsema_real_eip !115
  %496 = load i64, i64* %R8_val, !mcsema_real_eip !116
  %497 = trunc i64 %496 to i32, !mcsema_real_eip !116
  %uadd81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %494, i32 %497)
  %498 = extractvalue { i32, i1 } %uadd81, 0
  %499 = xor i32 %498, %497, !mcsema_real_eip !116
  %500 = xor i32 %499, %494, !mcsema_real_eip !116
  %501 = and i32 %500, 16, !mcsema_real_eip !116
  %502 = icmp ne i32 %501, 0, !mcsema_real_eip !116
  store i1 %502, i1* %AF_val, !mcsema_real_eip !116
  %503 = icmp slt i32 %498, 0
  store i1 %503, i1* %SF_val, !mcsema_real_eip !116
  %504 = icmp eq i32 %498, 0, !mcsema_real_eip !116
  store i1 %504, i1* %ZF_val, !mcsema_real_eip !116
  %505 = xor i32 %494, -2147483648, !mcsema_real_eip !116
  %506 = xor i32 %505, %497, !mcsema_real_eip !116
  %507 = and i32 %499, %506, !mcsema_real_eip !116
  %508 = icmp slt i32 %507, 0
  store i1 %508, i1* %OF_val, !mcsema_real_eip !116
  %509 = trunc i32 %498 to i8, !mcsema_real_eip !116
  %510 = tail call i8 @llvm.ctpop.i8(i8 %509), !mcsema_real_eip !116
  %511 = and i8 %510, 1
  %512 = icmp eq i8 %511, 0
  store i1 %512, i1* %PF_val, !mcsema_real_eip !116
  %513 = extractvalue { i32, i1 } %uadd81, 1
  store i1 %513, i1* %CF_val, !mcsema_real_eip !116
  %514 = zext i32 %498 to i64, !mcsema_real_eip !116
  store i64 %514, i64* %R8_val, !mcsema_real_eip !116
  %515 = load i64, i64* %RBP_val, !mcsema_real_eip !117
  %516 = add i64 %515, -104, !mcsema_real_eip !117
  %517 = inttoptr i64 %516 to i64*, !mcsema_real_eip !117
  %518 = load i64, i64* %517, !mcsema_real_eip !117
  store i64 %518, i64* %RAX_val, !mcsema_real_eip !117
  %519 = add i64 %518, 8, !mcsema_real_eip !118
  %520 = inttoptr i64 %519 to i64*, !mcsema_real_eip !118
  %521 = bitcast i64* %520 to i32*
  %522 = load i32, i32* %521, !mcsema_real_eip !118
  %523 = zext i32 %522 to i64, !mcsema_real_eip !118
  store i64 %523, i64* %R9_val, !mcsema_real_eip !118
  %524 = load i64, i64* %R8_val, !mcsema_real_eip !119
  %525 = trunc i64 %524 to i32, !mcsema_real_eip !119
  %526 = add i32 %522, %525
  %527 = zext i32 %526 to i64, !mcsema_real_eip !119
  store i64 %527, i64* %R8_val, !mcsema_real_eip !119
  %528 = load i64, i64* %RSI_val, !mcsema_real_eip !120
  %529 = trunc i64 %528 to i32, !mcsema_real_eip !120
  %uadd83 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %526, i32 %529)
  %530 = extractvalue { i32, i1 } %uadd83, 0
  %531 = xor i32 %530, %529, !mcsema_real_eip !120
  %532 = xor i32 %531, %526, !mcsema_real_eip !120
  %533 = and i32 %532, 16, !mcsema_real_eip !120
  %534 = icmp ne i32 %533, 0, !mcsema_real_eip !120
  store i1 %534, i1* %AF_val, !mcsema_real_eip !120
  %535 = icmp slt i32 %530, 0
  store i1 %535, i1* %SF_val, !mcsema_real_eip !120
  %536 = icmp eq i32 %530, 0, !mcsema_real_eip !120
  store i1 %536, i1* %ZF_val, !mcsema_real_eip !120
  %537 = xor i32 %526, -2147483648, !mcsema_real_eip !120
  %538 = xor i32 %537, %529, !mcsema_real_eip !120
  %539 = and i32 %531, %538, !mcsema_real_eip !120
  %540 = icmp slt i32 %539, 0
  store i1 %540, i1* %OF_val, !mcsema_real_eip !120
  %541 = trunc i32 %530 to i8, !mcsema_real_eip !120
  %542 = tail call i8 @llvm.ctpop.i8(i8 %541), !mcsema_real_eip !120
  %543 = and i8 %542, 1
  %544 = icmp eq i8 %543, 0
  store i1 %544, i1* %PF_val, !mcsema_real_eip !120
  %545 = extractvalue { i32, i1 } %uadd83, 1
  store i1 %545, i1* %CF_val, !mcsema_real_eip !120
  %546 = zext i32 %530 to i64, !mcsema_real_eip !120
  store i64 %546, i64* %RSI_val, !mcsema_real_eip !120
  %547 = load i64, i64* %RBP_val, !mcsema_real_eip !121
  %548 = add i64 %547, -112, !mcsema_real_eip !121
  %549 = inttoptr i64 %548 to i64*, !mcsema_real_eip !121
  %550 = bitcast i64* %549 to i32*
  store i32 %530, i32* %550, !mcsema_real_eip !121
  %551 = load i64, i64* %RBP_val, !mcsema_real_eip !122
  %552 = add i64 %551, -112, !mcsema_real_eip !122
  %553 = inttoptr i64 %552 to i64*, !mcsema_real_eip !122
  %554 = bitcast i64* %553 to i32*
  %555 = load i32, i32* %554, !mcsema_real_eip !122
  %556 = zext i32 %555 to i64, !mcsema_real_eip !122
  store i64 %556, i64* %RSI_val, !mcsema_real_eip !122
  %557 = load i64, i64* %RBP_val, !mcsema_real_eip !123
  %558 = add i64 %557, -16, !mcsema_real_eip !123
  %559 = inttoptr i64 %558 to i64*, !mcsema_real_eip !123
  %560 = bitcast i64* %559 to i32*
  store i32 %555, i32* %560, !mcsema_real_eip !123
  %561 = load i64, i64* %RBP_val, !mcsema_real_eip !124
  %562 = add i64 %561, -120, !mcsema_real_eip !124
  %563 = inttoptr i64 %562 to i64*, !mcsema_real_eip !124
  %564 = load i64, i64* %563, !mcsema_real_eip !124
  store i64 %564, i64* %RAX_val, !mcsema_real_eip !124
  %565 = add i64 %561, -24, !mcsema_real_eip !125
  %566 = inttoptr i64 %565 to i64*, !mcsema_real_eip !125
  store i64 %564, i64* %566, !mcsema_real_eip !125
  %567 = load i64, i64* %RBP_val, !mcsema_real_eip !126
  %568 = add i64 %567, -16, !mcsema_real_eip !126
  %569 = inttoptr i64 %568 to i64*, !mcsema_real_eip !126
  %570 = bitcast i64* %569 to i32*
  %571 = load i32, i32* %570, !mcsema_real_eip !126
  %572 = zext i32 %571 to i64, !mcsema_real_eip !126
  store i64 %572, i64* %RSI_val, !mcsema_real_eip !126
  %573 = load i64, i64* %RBP_val, !mcsema_real_eip !127
  %574 = add i64 %573, -128, !mcsema_real_eip !127
  %575 = inttoptr i64 %574 to i64*, !mcsema_real_eip !127
  %576 = bitcast i64* %575 to i32*
  store i32 %571, i32* %576, !mcsema_real_eip !127
  %577 = load i64, i64* %RBP_val, !mcsema_real_eip !128
  %578 = add i64 %577, -24, !mcsema_real_eip !128
  %579 = inttoptr i64 %578 to i64*, !mcsema_real_eip !128
  %580 = load i64, i64* %579, !mcsema_real_eip !128
  store i64 %580, i64* %RAX_val, !mcsema_real_eip !128
  %581 = add i64 %577, -136, !mcsema_real_eip !129
  %582 = inttoptr i64 %581 to i64*, !mcsema_real_eip !129
  store i64 %580, i64* %582, !mcsema_real_eip !129
  %583 = load i64, i64* %RBP_val, !mcsema_real_eip !130
  %584 = add i64 %583, -136, !mcsema_real_eip !130
  %585 = inttoptr i64 %584 to i64*, !mcsema_real_eip !130
  %586 = load i64, i64* %585, !mcsema_real_eip !130
  store i64 %586, i64* %RAX_val, !mcsema_real_eip !130
  %587 = add i64 %583, -128, !mcsema_real_eip !131
  %588 = inttoptr i64 %587 to i64*, !mcsema_real_eip !131
  %589 = bitcast i64* %588 to i32*
  %590 = load i32, i32* %589, !mcsema_real_eip !131
  %591 = zext i32 %590 to i64, !mcsema_real_eip !131
  store i64 %591, i64* %RDX_val, !mcsema_real_eip !131
  %592 = load i64, i64* %RSP_val, !mcsema_real_eip !132
  %593 = inttoptr i64 %592 to i64*, !mcsema_real_eip !132
  %594 = load i64, i64* %593, !mcsema_real_eip !132
  store i64 %594, i64* %RBX_val, !mcsema_real_eip !132
  %595 = add i64 %592, 8, !mcsema_real_eip !132
  store i64 %595, i64* %RSP_val, !mcsema_real_eip !132
  %596 = inttoptr i64 %595 to i64*, !mcsema_real_eip !133
  %597 = load i64, i64* %596, !mcsema_real_eip !133
  store i64 %597, i64* %RBP_val, !mcsema_real_eip !133
  %598 = add i64 %592, 24, !mcsema_real_eip !134
  store i64 %598, i64* %RSP_val, !mcsema_real_eip !134
  %599 = load i64, i64* %RAX_val, !mcsema_real_eip !134
  store i64 %599, i64* %RAX, !mcsema_real_eip !134
  %600 = load i64, i64* %RBX_val, !mcsema_real_eip !134
  store i64 %600, i64* %RBX, !mcsema_real_eip !134
  %601 = load i64, i64* %RCX_val, !mcsema_real_eip !134
  store i64 %601, i64* %RCX, !mcsema_real_eip !134
  %602 = load i64, i64* %RDX_val, !mcsema_real_eip !134
  store i64 %602, i64* %RDX, !mcsema_real_eip !134
  %603 = load i64, i64* %RSI_val, !mcsema_real_eip !134
  store i64 %603, i64* %RSI, !mcsema_real_eip !134
  %604 = load i64, i64* %RDI_val, !mcsema_real_eip !134
  store i64 %604, i64* %RDI, !mcsema_real_eip !134
  %605 = load i64, i64* %RSP_val, !mcsema_real_eip !134
  store i64 %605, i64* %RSP, !mcsema_real_eip !134
  %606 = load i64, i64* %RBP_val, !mcsema_real_eip !134
  store i64 %606, i64* %RBP, !mcsema_real_eip !134
  %607 = load i64, i64* %R8_val, !mcsema_real_eip !134
  store i64 %607, i64* %R8, !mcsema_real_eip !134
  %608 = load i64, i64* %R9_val, !mcsema_real_eip !134
  store i64 %608, i64* %R9, !mcsema_real_eip !134
  %609 = load i64, i64* %R10_val, !mcsema_real_eip !134
  store i64 %609, i64* %R10, !mcsema_real_eip !134
  %610 = load i64, i64* %R11_val, !mcsema_real_eip !134
  store i64 %610, i64* %R11, !mcsema_real_eip !134
  %611 = load i64, i64* %R12_val, !mcsema_real_eip !134
  store i64 %611, i64* %R12, !mcsema_real_eip !134
  %612 = load i64, i64* %R13_val, !mcsema_real_eip !134
  store i64 %612, i64* %R13, !mcsema_real_eip !134
  %613 = load i64, i64* %R14_val, !mcsema_real_eip !134
  store i64 %613, i64* %R14, !mcsema_real_eip !134
  %614 = load i64, i64* %R15_val, !mcsema_real_eip !134
  store i64 %614, i64* %R15, !mcsema_real_eip !134
  %615 = load i64, i64* %RIP_val, !mcsema_real_eip !134
  store i64 %615, i64* %RIP, !mcsema_real_eip !134
  %616 = load i1, i1* %CF_val, !mcsema_real_eip !134
  store i1 %616, i1* %CF, align 1, !mcsema_real_eip !134
  %617 = load i1, i1* %PF_val, !mcsema_real_eip !134
  store i1 %617, i1* %PF, align 1, !mcsema_real_eip !134
  %618 = load i1, i1* %AF_val, !mcsema_real_eip !134
  store i1 %618, i1* %AF, align 1, !mcsema_real_eip !134
  %619 = load i1, i1* %ZF_val, !mcsema_real_eip !134
  store i1 %619, i1* %ZF, align 1, !mcsema_real_eip !134
  %620 = load i1, i1* %SF_val, !mcsema_real_eip !134
  store i1 %620, i1* %SF, align 1, !mcsema_real_eip !134
  %621 = load i1, i1* %OF_val, !mcsema_real_eip !134
  store i1 %621, i1* %OF, align 1, !mcsema_real_eip !134
  %622 = load i1, i1* %DF_val, !mcsema_real_eip !134
  store i1 %622, i1* %DF, align 1, !mcsema_real_eip !134
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !134
  %623 = load i1, i1* %FPU_B_val, !mcsema_real_eip !134
  store i1 %623, i1* %FPU_B, align 1, !mcsema_real_eip !134
  %624 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !134
  store i1 %624, i1* %FPU_C3, align 1, !mcsema_real_eip !134
  %625 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !134
  store i3 %625, i3* %FPU_TOP, align 1, !mcsema_real_eip !134
  %626 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !134
  store i1 %626, i1* %FPU_C2, align 1, !mcsema_real_eip !134
  %627 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !134
  store i1 %627, i1* %FPU_C1, align 1, !mcsema_real_eip !134
  %628 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !134
  store i1 %628, i1* %FPU_C0, align 1, !mcsema_real_eip !134
  %629 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !134
  store i1 %629, i1* %FPU_ES, align 1, !mcsema_real_eip !134
  %630 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !134
  store i1 %630, i1* %FPU_SF, align 1, !mcsema_real_eip !134
  %631 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !134
  store i1 %631, i1* %FPU_PE, align 1, !mcsema_real_eip !134
  %632 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !134
  store i1 %632, i1* %FPU_UE, align 1, !mcsema_real_eip !134
  %633 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !134
  store i1 %633, i1* %FPU_OE, align 1, !mcsema_real_eip !134
  %634 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !134
  store i1 %634, i1* %FPU_ZE, align 1, !mcsema_real_eip !134
  %635 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !134
  store i1 %635, i1* %FPU_DE, align 1, !mcsema_real_eip !134
  %636 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !134
  store i1 %636, i1* %FPU_IE, align 1, !mcsema_real_eip !134
  %637 = load i1, i1* %FPU_X_val, !mcsema_real_eip !134
  store i1 %637, i1* %FPU_X, align 1, !mcsema_real_eip !134
  %638 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !134
  store i2 %638, i2* %FPU_RC, align 1, !mcsema_real_eip !134
  %639 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !134
  store i2 %639, i2* %FPU_PC, align 1, !mcsema_real_eip !134
  %640 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !134
  store i1 %640, i1* %FPU_PM, align 1, !mcsema_real_eip !134
  %641 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !134
  store i1 %641, i1* %FPU_UM, align 1, !mcsema_real_eip !134
  %642 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !134
  store i1 %642, i1* %FPU_OM, align 1, !mcsema_real_eip !134
  %643 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !134
  store i1 %643, i1* %FPU_ZM, align 1, !mcsema_real_eip !134
  %644 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !134
  store i1 %644, i1* %FPU_DM, align 1, !mcsema_real_eip !134
  %645 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !134
  store i1 %645, i1* %FPU_IM, align 1, !mcsema_real_eip !134
  %646 = load i64, i64* %53, align 4
  store i64 %646, i64* %52, align 4
  %647 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !134
  store i16 %647, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !134
  %648 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !134
  store i64 %648, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !134
  %649 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !134
  store i16 %649, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !134
  %650 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !134
  store i64 %650, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !134
  %651 = load i128, i128* %XMM0_val, !mcsema_real_eip !134
  store i128 %651, i128* %XMM0, align 1, !mcsema_real_eip !134
  %652 = load i128, i128* %XMM1_val, !mcsema_real_eip !134
  store i128 %652, i128* %XMM1, align 1, !mcsema_real_eip !134
  %653 = load i128, i128* %XMM2_val, !mcsema_real_eip !134
  store i128 %653, i128* %XMM2, align 1, !mcsema_real_eip !134
  %654 = load i128, i128* %XMM3_val, !mcsema_real_eip !134
  store i128 %654, i128* %XMM3, align 1, !mcsema_real_eip !134
  %655 = load i128, i128* %XMM4_val, !mcsema_real_eip !134
  store i128 %655, i128* %XMM4, align 1, !mcsema_real_eip !134
  %656 = load i128, i128* %XMM5_val, !mcsema_real_eip !134
  store i128 %656, i128* %XMM5, align 1, !mcsema_real_eip !134
  %657 = load i128, i128* %XMM6_val, !mcsema_real_eip !134
  store i128 %657, i128* %XMM6, align 1, !mcsema_real_eip !134
  %658 = load i128, i128* %XMM7_val, !mcsema_real_eip !134
  store i128 %658, i128* %XMM7, align 1, !mcsema_real_eip !134
  %659 = load i128, i128* %XMM8_val, !mcsema_real_eip !134
  store i128 %659, i128* %XMM8, align 1, !mcsema_real_eip !134
  %660 = load i128, i128* %XMM9_val, !mcsema_real_eip !134
  store i128 %660, i128* %XMM9, align 1, !mcsema_real_eip !134
  %661 = load i128, i128* %XMM10_val, !mcsema_real_eip !134
  store i128 %661, i128* %XMM10, align 1, !mcsema_real_eip !134
  %662 = load i128, i128* %XMM11_val, !mcsema_real_eip !134
  store i128 %662, i128* %XMM11, align 1, !mcsema_real_eip !134
  %663 = load i128, i128* %XMM12_val, !mcsema_real_eip !134
  store i128 %663, i128* %XMM12, align 1, !mcsema_real_eip !134
  %664 = load i128, i128* %XMM13_val, !mcsema_real_eip !134
  store i128 %664, i128* %XMM13, align 1, !mcsema_real_eip !134
  %665 = load i128, i128* %XMM14_val, !mcsema_real_eip !134
  store i128 %665, i128* %XMM14, align 1, !mcsema_real_eip !134
  %666 = load i128, i128* %XMM15_val, !mcsema_real_eip !134
  store i128 %666, i128* %XMM15, align 1, !mcsema_real_eip !134
  %667 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !134
  store i64 %667, i64* %STACK_BASE, align 1, !mcsema_real_eip !134
  %668 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !134
  store i64 %668, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !134
  ret void, !mcsema_real_eip !134
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_120(%struct.regs* %0)
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
!2 = !{i64 288, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 289, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = !{i64 292, [17 x i8] c"\09subq\09$128, %rsp\00"}
!5 = !{i64 299, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!6 = !{i64 306, [21 x i8] c"\09movl\09$10, -16(%rbp)\00"}
!7 = !{i64 313, [21 x i8] c"\09movl\09$10, -12(%rbp)\00"}
!8 = !{i64 320, [20 x i8] c"\09movl\09$10, -8(%rbp)\00"}
!9 = !{i64 332, [17 x i8] c"\09movl\09%eax, %edi\00"}
!10 = !{i64 334, [9 x i8] c"\09callq\090\00"}
!11 = !{i64 339, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!12 = !{i64 343, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!13 = !{i64 347, [17 x i8] c"\09movl\09$5, (%rax)\00"}
!14 = !{i64 353, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!15 = !{i64 357, [18 x i8] c"\09movl\09$5, 4(%rax)\00"}
!16 = !{i64 364, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!17 = !{i64 368, [18 x i8] c"\09movl\09$5, 8(%rax)\00"}
!18 = !{i64 375, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!19 = !{i64 379, [21 x i8] c"\09movl\09-8(%rbp), %ecx\00"}
!20 = !{i64 382, [22 x i8] c"\09movl\09%ecx, -48(%rbp)\00"}
!21 = !{i64 385, [22 x i8] c"\09movq\09-16(%rbp), %rdi\00"}
!22 = !{i64 389, [22 x i8] c"\09movq\09%rdi, -56(%rbp)\00"}
!23 = !{i64 393, [22 x i8] c"\09movq\09-56(%rbp), %rdi\00"}
!24 = !{i64 397, [22 x i8] c"\09movl\09-48(%rbp), %esi\00"}
!25 = !{i64 400, [21 x i8] c"\09movl\09-8(%rbp), %ecx\00"}
!26 = !{i64 403, [17 x i8] c"\09movq\09%rsp, %rdx\00"}
!27 = !{i64 406, [21 x i8] c"\09movl\09%ecx, 16(%rdx)\00"}
!28 = !{i64 409, [21 x i8] c"\09movq\09-16(%rbp), %r8\00"}
!29 = !{i64 413, [19 x i8] c"\09movq\09%r8, 8(%rdx)\00"}
!30 = !{i64 417, [21 x i8] c"\09movq\09%rax, 32(%rdx)\00"}
!31 = !{i64 421, [21 x i8] c"\09leaq\09-16(%rbp), %r8\00"}
!32 = !{i64 425, [20 x i8] c"\09movq\09%r8, 24(%rdx)\00"}
!33 = !{i64 429, [17 x i8] c"\09movl\09$3, (%rdx)\00"}
!34 = !{i64 435, [15 x i8] c"\09movl\09$1, %ecx\00"}
!35 = !{i64 440, [15 x i8] c"\09movl\09$2, %r9d\00"}
!36 = !{i64 446, [16 x i8] c"\09movq\09%r8, %rdx\00"}
!37 = !{i64 449, [22 x i8] c"\09movl\09%ecx, -76(%rbp)\00"}
!38 = !{i64 452, [17 x i8] c"\09movq\09%rax, %rcx\00"}
!39 = !{i64 455, [22 x i8] c"\09movl\09-76(%rbp), %r8d\00"}
!40 = !{i64 459, [12 x i8] c"\09callq\09-464\00"}
!41 = !{i64 464, [22 x i8] c"\09movl\09%edx, -64(%rbp)\00"}
!42 = !{i64 467, [22 x i8] c"\09movq\09%rax, -72(%rbp)\00"}
!43 = !{i64 471, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!44 = !{i64 475, [22 x i8] c"\09movq\09%rax, -40(%rbp)\00"}
!45 = !{i64 479, [22 x i8] c"\09movl\09-64(%rbp), %edx\00"}
!46 = !{i64 482, [22 x i8] c"\09movl\09%edx, -32(%rbp)\00"}
!47 = !{i64 485, [22 x i8] c"\09movl\09-40(%rbp), %edx\00"}
!48 = !{i64 488, [22 x i8] c"\09addl\09-36(%rbp), %edx\00"}
!49 = !{i64 491, [22 x i8] c"\09addl\09-32(%rbp), %edx\00"}
!50 = !{i64 494, [17 x i8] c"\09movl\09%edx, %eax\00"}
!51 = !{i64 496, [17 x i8] c"\09addq\09$128, %rsp\00"}
!52 = !{i64 503, [11 x i8] c"\09popq\09%rbp\00"}
!53 = !{i64 504, [6 x i8] c"\09retq\00"}
!54 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!55 = !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!56 = !{i64 4, [12 x i8] c"\09pushq\09%rbx\00"}
!57 = !{i64 5, [21 x i8] c"\09movq\0948(%rbp), %rax\00"}
!58 = !{i64 9, [21 x i8] c"\09movq\0940(%rbp), %r10\00"}
!59 = !{i64 13, [21 x i8] c"\09leaq\0924(%rbp), %r11\00"}
!60 = !{i64 17, [21 x i8] c"\09movl\0916(%rbp), %ebx\00"}
!61 = !{i64 20, [22 x i8] c"\09movq\09%rdi, -56(%rbp)\00"}
!62 = !{i64 24, [22 x i8] c"\09movl\09%esi, -48(%rbp)\00"}
!63 = !{i64 27, [22 x i8] c"\09movl\09-48(%rbp), %esi\00"}
!64 = !{i64 30, [22 x i8] c"\09movl\09%esi, -32(%rbp)\00"}
!65 = !{i64 33, [22 x i8] c"\09movq\09-56(%rbp), %rdi\00"}
!66 = !{i64 37, [22 x i8] c"\09movq\09%rdi, -40(%rbp)\00"}
!67 = !{i64 41, [22 x i8] c"\09movq\09%rdx, -64(%rbp)\00"}
!68 = !{i64 45, [22 x i8] c"\09movq\09%rcx, -72(%rbp)\00"}
!69 = !{i64 49, [22 x i8] c"\09movl\09%r8d, -76(%rbp)\00"}
!70 = !{i64 53, [22 x i8] c"\09movl\09%r9d, -80(%rbp)\00"}
!71 = !{i64 57, [22 x i8] c"\09movl\09%ebx, -84(%rbp)\00"}
!72 = !{i64 60, [22 x i8] c"\09movq\09%r10, -96(%rbp)\00"}
!73 = !{i64 64, [23 x i8] c"\09movq\09%rax, -104(%rbp)\00"}
!74 = !{i64 68, [22 x i8] c"\09movl\09-40(%rbp), %esi\00"}
!75 = !{i64 71, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!76 = !{i64 75, [19 x i8] c"\09movl\09(%rax), %r8d\00"}
!77 = !{i64 78, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!78 = !{i64 81, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!79 = !{i64 85, [19 x i8] c"\09movl\09(%rax), %r8d\00"}
!80 = !{i64 88, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!81 = !{i64 91, [19 x i8] c"\09movl\09(%r11), %r8d\00"}
!82 = !{i64 94, [22 x i8] c"\09movq\09-96(%rbp), %rax\00"}
!83 = !{i64 98, [19 x i8] c"\09movl\09(%rax), %r9d\00"}
!84 = !{i64 101, [17 x i8] c"\09addl\09%r9d, %r8d\00"}
!85 = !{i64 104, [23 x i8] c"\09movq\09-104(%rbp), %rax\00"}
!86 = !{i64 108, [19 x i8] c"\09movl\09(%rax), %r9d\00"}
!87 = !{i64 111, [17 x i8] c"\09addl\09%r9d, %r8d\00"}
!88 = !{i64 114, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!89 = !{i64 117, [23 x i8] c"\09movl\09%esi, -120(%rbp)\00"}
!90 = !{i64 120, [22 x i8] c"\09movl\09-36(%rbp), %esi\00"}
!91 = !{i64 123, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!92 = !{i64 127, [20 x i8] c"\09movl\094(%rax), %r8d\00"}
!93 = !{i64 131, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!94 = !{i64 134, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!95 = !{i64 138, [20 x i8] c"\09movl\094(%rax), %r8d\00"}
!96 = !{i64 142, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!97 = !{i64 145, [20 x i8] c"\09movl\094(%r11), %r8d\00"}
!98 = !{i64 149, [22 x i8] c"\09movq\09-96(%rbp), %rax\00"}
!99 = !{i64 153, [20 x i8] c"\09movl\094(%rax), %r9d\00"}
!100 = !{i64 157, [17 x i8] c"\09addl\09%r9d, %r8d\00"}
!101 = !{i64 160, [23 x i8] c"\09movq\09-104(%rbp), %rax\00"}
!102 = !{i64 164, [20 x i8] c"\09movl\094(%rax), %r9d\00"}
!103 = !{i64 168, [17 x i8] c"\09addl\09%r9d, %r8d\00"}
!104 = !{i64 171, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!105 = !{i64 174, [23 x i8] c"\09movl\09%esi, -116(%rbp)\00"}
!106 = !{i64 177, [22 x i8] c"\09movl\09-32(%rbp), %esi\00"}
!107 = !{i64 180, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!108 = !{i64 184, [20 x i8] c"\09movl\098(%rax), %r8d\00"}
!109 = !{i64 188, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!110 = !{i64 191, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!111 = !{i64 195, [20 x i8] c"\09movl\098(%rax), %r8d\00"}
!112 = !{i64 199, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!113 = !{i64 202, [20 x i8] c"\09movl\098(%r11), %r8d\00"}
!114 = !{i64 206, [22 x i8] c"\09movq\09-96(%rbp), %rax\00"}
!115 = !{i64 210, [20 x i8] c"\09movl\098(%rax), %r9d\00"}
!116 = !{i64 214, [17 x i8] c"\09addl\09%r9d, %r8d\00"}
!117 = !{i64 217, [23 x i8] c"\09movq\09-104(%rbp), %rax\00"}
!118 = !{i64 221, [20 x i8] c"\09movl\098(%rax), %r9d\00"}
!119 = !{i64 225, [17 x i8] c"\09addl\09%r9d, %r8d\00"}
!120 = !{i64 228, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!121 = !{i64 231, [23 x i8] c"\09movl\09%esi, -112(%rbp)\00"}
!122 = !{i64 234, [23 x i8] c"\09movl\09-112(%rbp), %esi\00"}
!123 = !{i64 237, [22 x i8] c"\09movl\09%esi, -16(%rbp)\00"}
!124 = !{i64 240, [23 x i8] c"\09movq\09-120(%rbp), %rax\00"}
!125 = !{i64 244, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!126 = !{i64 248, [22 x i8] c"\09movl\09-16(%rbp), %esi\00"}
!127 = !{i64 251, [23 x i8] c"\09movl\09%esi, -128(%rbp)\00"}
!128 = !{i64 254, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!129 = !{i64 258, [23 x i8] c"\09movq\09%rax, -136(%rbp)\00"}
!130 = !{i64 265, [23 x i8] c"\09movq\09-136(%rbp), %rax\00"}
!131 = !{i64 272, [23 x i8] c"\09movl\09-128(%rbp), %edx\00"}
!132 = !{i64 275, [11 x i8] c"\09popq\09%rbx\00"}
!133 = !{i64 276, [11 x i8] c"\09popq\09%rbp\00"}
!134 = !{i64 277, [6 x i8] c"\09retq\00"}
