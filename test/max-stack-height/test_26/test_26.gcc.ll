; ModuleID = 'test_26.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_5f(%struct.regs*) #0 {
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
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %1 = load i64* %RAX, !mcsema_real_eip !2
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !2
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %2 = load i64* %RBX, !mcsema_real_eip !2
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !2
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %3 = load i64* %RCX, !mcsema_real_eip !2
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !2
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %4 = load i64* %RDX, !mcsema_real_eip !2
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !2
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %5 = load i64* %RSI, !mcsema_real_eip !2
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !2
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %6 = load i64* %RDI, !mcsema_real_eip !2
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !2
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %7 = load i64* %RSP, !mcsema_real_eip !2
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !2
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %8 = load i64* %RBP, !mcsema_real_eip !2
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !2
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %9 = load i64* %R8, !mcsema_real_eip !2
  store i64 %9, i64* %R8_val, !mcsema_real_eip !2
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %10 = load i64* %R9, !mcsema_real_eip !2
  store i64 %10, i64* %R9_val, !mcsema_real_eip !2
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %11 = load i64* %R10, !mcsema_real_eip !2
  store i64 %11, i64* %R10_val, !mcsema_real_eip !2
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %12 = load i64* %R11, !mcsema_real_eip !2
  store i64 %12, i64* %R11_val, !mcsema_real_eip !2
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %13 = load i64* %R12, !mcsema_real_eip !2
  store i64 %13, i64* %R12_val, !mcsema_real_eip !2
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %14 = load i64* %R13, !mcsema_real_eip !2
  store i64 %14, i64* %R13_val, !mcsema_real_eip !2
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %15 = load i64* %R14, !mcsema_real_eip !2
  store i64 %15, i64* %R14_val, !mcsema_real_eip !2
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %16 = load i64* %R15, !mcsema_real_eip !2
  store i64 %16, i64* %R15_val, !mcsema_real_eip !2
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %17 = load i64* %RIP, !mcsema_real_eip !2
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !2
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %18 = load i1* %CF, align 1, !mcsema_real_eip !2
  store i1 %18, i1* %CF_val, !mcsema_real_eip !2
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %19 = load i1* %PF, align 1, !mcsema_real_eip !2
  store i1 %19, i1* %PF_val, !mcsema_real_eip !2
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %20 = load i1* %AF, align 1, !mcsema_real_eip !2
  store i1 %20, i1* %AF_val, !mcsema_real_eip !2
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !2
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !2
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %22 = load i1* %SF, align 1, !mcsema_real_eip !2
  store i1 %22, i1* %SF_val, !mcsema_real_eip !2
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %23 = load i1* %OF, align 1, !mcsema_real_eip !2
  store i1 %23, i1* %OF_val, !mcsema_real_eip !2
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %24 = load i1* %DF, align 1, !mcsema_real_eip !2
  store i1 %24, i1* %DF_val, !mcsema_real_eip !2
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !2
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !2
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !2
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !2
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !2
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !2
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !2
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !2
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !2
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !2
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !2
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !2
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !2
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !2
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !2
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !2
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !2
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !2
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !2
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !2
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !2
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !2
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !2
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !2
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !2
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !2
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !2
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !2
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !2
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !2
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !2
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !2
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !2
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !2
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !2
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !2
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !2
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !2
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !2
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !2
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !2
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !2
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !2
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !2
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !2
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !2
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !2
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !2
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !2
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !2
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !2
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !2
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !2
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !2
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !2
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !2
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !2
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !2
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !2
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !2
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !2
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !2
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !2
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !2
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !2
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !2
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !2
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !2
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !2
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !2
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !2
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !2
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !2
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !2
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !2
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !2
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !2
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !2
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !2
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !2
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !2
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !2
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !2
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !2
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !2
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !2
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !2
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !2
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !2
  %77 = load i64* %RBP_val, !mcsema_real_eip !2
  %78 = load i64* %RSP_val, !mcsema_real_eip !2
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !2
  store i64 %77, i64* %80, !mcsema_real_eip !2
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !3
  %81 = add i64 %78, -40
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
  %91 = icmp ult i64 %79, 32, !mcsema_real_eip !4
  store i1 %91, i1* %CF_val, !mcsema_real_eip !4
  %92 = and i64 %82, %79, !mcsema_real_eip !4
  %93 = icmp slt i64 %92, 0
  store i1 %93, i1* %OF_val, !mcsema_real_eip !4
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !4
  %94 = load i64* %RBP_val, !mcsema_real_eip !5
  %95 = add i64 %94, -16, !mcsema_real_eip !5
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !5
  %97 = bitcast i64* %96 to i32*
  store i32 10, i32* %97, !mcsema_real_eip !5
  %98 = load i64* %RBP_val, !mcsema_real_eip !6
  %99 = add i64 %98, -12, !mcsema_real_eip !6
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !6
  %101 = bitcast i64* %100 to i32*
  store i32 20, i32* %101, !mcsema_real_eip !6
  %102 = load i64* %RBP_val, !mcsema_real_eip !7
  %103 = add i64 %102, -8, !mcsema_real_eip !7
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !7
  %105 = bitcast i64* %104 to i32*
  store i32 30, i32* %105, !mcsema_real_eip !7
  %106 = load i64* %RBP_val, !mcsema_real_eip !8
  %107 = add i64 %106, -16, !mcsema_real_eip !8
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !8
  %109 = load i64* %108, !mcsema_real_eip !8
  store i64 %109, i64* %RAX_val, !mcsema_real_eip !8
  %110 = load i64* %RSP_val, !mcsema_real_eip !9
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !9
  store i64 %109, i64* %111, !mcsema_real_eip !9
  %112 = load i64* %RBP_val, !mcsema_real_eip !10
  %113 = add i64 %112, -8, !mcsema_real_eip !10
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !10
  %115 = bitcast i64* %114 to i32*
  %116 = load i32* %115, !mcsema_real_eip !10
  %117 = zext i32 %116 to i64, !mcsema_real_eip !10
  store i64 %117, i64* %RAX_val, !mcsema_real_eip !10
  %118 = load i64* %RSP_val, !mcsema_real_eip !11
  %119 = add i64 %118, 8, !mcsema_real_eip !11
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !11
  %121 = bitcast i64* %120 to i32*
  store i32 %116, i32* %121, !mcsema_real_eip !11
  store i64 6, i64* %R9_val, !mcsema_real_eip !12
  store i64 5, i64* %R8_val, !mcsema_real_eip !13
  store i64 4, i64* %RCX_val, !mcsema_real_eip !14
  store i64 3, i64* %RDX_val, !mcsema_real_eip !15
  store i64 2, i64* %RSI_val, !mcsema_real_eip !16
  store i64 1, i64* %RDI_val, !mcsema_real_eip !17
  %122 = load i64* %RSP_val, !mcsema_real_eip !18
  %123 = add i64 %122, -8
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !18
  store i64 -4981261766360305936, i64* %124, !mcsema_real_eip !18
  store i64 %123, i64* %RSP_val, !mcsema_real_eip !18
  %125 = load i64* %RAX_val, !mcsema_real_eip !18
  store i64 %125, i64* %RAX, !mcsema_real_eip !18
  %126 = load i64* %RBX_val, !mcsema_real_eip !18
  store i64 %126, i64* %RBX, !mcsema_real_eip !18
  %127 = load i64* %RCX_val, !mcsema_real_eip !18
  store i64 %127, i64* %RCX, !mcsema_real_eip !18
  %128 = load i64* %RDX_val, !mcsema_real_eip !18
  store i64 %128, i64* %RDX, !mcsema_real_eip !18
  %129 = load i64* %RSI_val, !mcsema_real_eip !18
  store i64 %129, i64* %RSI, !mcsema_real_eip !18
  %130 = load i64* %RDI_val, !mcsema_real_eip !18
  store i64 %130, i64* %RDI, !mcsema_real_eip !18
  %131 = load i64* %RSP_val, !mcsema_real_eip !18
  store i64 %131, i64* %RSP, !mcsema_real_eip !18
  %132 = load i64* %RBP_val, !mcsema_real_eip !18
  store i64 %132, i64* %RBP, !mcsema_real_eip !18
  %133 = load i64* %R8_val, !mcsema_real_eip !18
  store i64 %133, i64* %R8, !mcsema_real_eip !18
  %134 = load i64* %R9_val, !mcsema_real_eip !18
  store i64 %134, i64* %R9, !mcsema_real_eip !18
  %135 = load i64* %R10_val, !mcsema_real_eip !18
  store i64 %135, i64* %R10, !mcsema_real_eip !18
  %136 = load i64* %R11_val, !mcsema_real_eip !18
  store i64 %136, i64* %R11, !mcsema_real_eip !18
  %137 = load i64* %R12_val, !mcsema_real_eip !18
  store i64 %137, i64* %R12, !mcsema_real_eip !18
  %138 = load i64* %R13_val, !mcsema_real_eip !18
  store i64 %138, i64* %R13, !mcsema_real_eip !18
  %139 = load i64* %R14_val, !mcsema_real_eip !18
  store i64 %139, i64* %R14, !mcsema_real_eip !18
  %140 = load i64* %R15_val, !mcsema_real_eip !18
  store i64 %140, i64* %R15, !mcsema_real_eip !18
  %141 = load i64* %RIP_val, !mcsema_real_eip !18
  store i64 %141, i64* %RIP, !mcsema_real_eip !18
  %142 = load i1* %CF_val, !mcsema_real_eip !18
  store i1 %142, i1* %CF, align 1, !mcsema_real_eip !18
  %143 = load i1* %PF_val, !mcsema_real_eip !18
  store i1 %143, i1* %PF, align 1, !mcsema_real_eip !18
  %144 = load i1* %AF_val, !mcsema_real_eip !18
  store i1 %144, i1* %AF, align 1, !mcsema_real_eip !18
  %145 = load i1* %ZF_val, !mcsema_real_eip !18
  store i1 %145, i1* %ZF, align 1, !mcsema_real_eip !18
  %146 = load i1* %SF_val, !mcsema_real_eip !18
  store i1 %146, i1* %SF, align 1, !mcsema_real_eip !18
  %147 = load i1* %OF_val, !mcsema_real_eip !18
  store i1 %147, i1* %OF, align 1, !mcsema_real_eip !18
  %148 = load i1* %DF_val, !mcsema_real_eip !18
  store i1 %148, i1* %DF, align 1, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !18
  %149 = load i1* %FPU_B_val, !mcsema_real_eip !18
  store i1 %149, i1* %FPU_B, align 1, !mcsema_real_eip !18
  %150 = load i1* %FPU_C3_val, !mcsema_real_eip !18
  store i1 %150, i1* %FPU_C3, align 1, !mcsema_real_eip !18
  %151 = load i3* %FPU_TOP_val, !mcsema_real_eip !18
  store i3 %151, i3* %FPU_TOP, align 1, !mcsema_real_eip !18
  %152 = load i1* %FPU_C2_val, !mcsema_real_eip !18
  store i1 %152, i1* %FPU_C2, align 1, !mcsema_real_eip !18
  %153 = load i1* %FPU_C1_val, !mcsema_real_eip !18
  store i1 %153, i1* %FPU_C1, align 1, !mcsema_real_eip !18
  %154 = load i1* %FPU_C0_val, !mcsema_real_eip !18
  store i1 %154, i1* %FPU_C0, align 1, !mcsema_real_eip !18
  %155 = load i1* %FPU_ES_val, !mcsema_real_eip !18
  store i1 %155, i1* %FPU_ES, align 1, !mcsema_real_eip !18
  %156 = load i1* %FPU_SF_val, !mcsema_real_eip !18
  store i1 %156, i1* %FPU_SF, align 1, !mcsema_real_eip !18
  %157 = load i1* %FPU_PE_val, !mcsema_real_eip !18
  store i1 %157, i1* %FPU_PE, align 1, !mcsema_real_eip !18
  %158 = load i1* %FPU_UE_val, !mcsema_real_eip !18
  store i1 %158, i1* %FPU_UE, align 1, !mcsema_real_eip !18
  %159 = load i1* %FPU_OE_val, !mcsema_real_eip !18
  store i1 %159, i1* %FPU_OE, align 1, !mcsema_real_eip !18
  %160 = load i1* %FPU_ZE_val, !mcsema_real_eip !18
  store i1 %160, i1* %FPU_ZE, align 1, !mcsema_real_eip !18
  %161 = load i1* %FPU_DE_val, !mcsema_real_eip !18
  store i1 %161, i1* %FPU_DE, align 1, !mcsema_real_eip !18
  %162 = load i1* %FPU_IE_val, !mcsema_real_eip !18
  store i1 %162, i1* %FPU_IE, align 1, !mcsema_real_eip !18
  %163 = load i1* %FPU_X_val, !mcsema_real_eip !18
  store i1 %163, i1* %FPU_X, align 1, !mcsema_real_eip !18
  %164 = load i2* %FPU_RC_val, !mcsema_real_eip !18
  store i2 %164, i2* %FPU_RC, align 1, !mcsema_real_eip !18
  %165 = load i2* %FPU_PC_val, !mcsema_real_eip !18
  store i2 %165, i2* %FPU_PC, align 1, !mcsema_real_eip !18
  %166 = load i1* %FPU_PM_val, !mcsema_real_eip !18
  store i1 %166, i1* %FPU_PM, align 1, !mcsema_real_eip !18
  %167 = load i1* %FPU_UM_val, !mcsema_real_eip !18
  store i1 %167, i1* %FPU_UM, align 1, !mcsema_real_eip !18
  %168 = load i1* %FPU_OM_val, !mcsema_real_eip !18
  store i1 %168, i1* %FPU_OM, align 1, !mcsema_real_eip !18
  %169 = load i1* %FPU_ZM_val, !mcsema_real_eip !18
  store i1 %169, i1* %FPU_ZM, align 1, !mcsema_real_eip !18
  %170 = load i1* %FPU_DM_val, !mcsema_real_eip !18
  store i1 %170, i1* %FPU_DM, align 1, !mcsema_real_eip !18
  %171 = load i1* %FPU_IM_val, !mcsema_real_eip !18
  store i1 %171, i1* %FPU_IM, align 1, !mcsema_real_eip !18
  %172 = load i64* %53, align 4
  store i64 %172, i64* %52, align 4
  %173 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !18
  store i16 %173, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !18
  %174 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !18
  store i64 %174, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !18
  %175 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !18
  store i16 %175, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !18
  %176 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !18
  store i64 %176, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !18
  %177 = load i128* %XMM0_val, !mcsema_real_eip !18
  store i128 %177, i128* %XMM0, align 1, !mcsema_real_eip !18
  %178 = load i128* %XMM1_val, !mcsema_real_eip !18
  store i128 %178, i128* %XMM1, align 1, !mcsema_real_eip !18
  %179 = load i128* %XMM2_val, !mcsema_real_eip !18
  store i128 %179, i128* %XMM2, align 1, !mcsema_real_eip !18
  %180 = load i128* %XMM3_val, !mcsema_real_eip !18
  store i128 %180, i128* %XMM3, align 1, !mcsema_real_eip !18
  %181 = load i128* %XMM4_val, !mcsema_real_eip !18
  store i128 %181, i128* %XMM4, align 1, !mcsema_real_eip !18
  %182 = load i128* %XMM5_val, !mcsema_real_eip !18
  store i128 %182, i128* %XMM5, align 1, !mcsema_real_eip !18
  %183 = load i128* %XMM6_val, !mcsema_real_eip !18
  store i128 %183, i128* %XMM6, align 1, !mcsema_real_eip !18
  %184 = load i128* %XMM7_val, !mcsema_real_eip !18
  store i128 %184, i128* %XMM7, align 1, !mcsema_real_eip !18
  %185 = load i128* %XMM8_val, !mcsema_real_eip !18
  store i128 %185, i128* %XMM8, align 1, !mcsema_real_eip !18
  %186 = load i128* %XMM9_val, !mcsema_real_eip !18
  store i128 %186, i128* %XMM9, align 1, !mcsema_real_eip !18
  %187 = load i128* %XMM10_val, !mcsema_real_eip !18
  store i128 %187, i128* %XMM10, align 1, !mcsema_real_eip !18
  %188 = load i128* %XMM11_val, !mcsema_real_eip !18
  store i128 %188, i128* %XMM11, align 1, !mcsema_real_eip !18
  %189 = load i128* %XMM12_val, !mcsema_real_eip !18
  store i128 %189, i128* %XMM12, align 1, !mcsema_real_eip !18
  %190 = load i128* %XMM13_val, !mcsema_real_eip !18
  store i128 %190, i128* %XMM13, align 1, !mcsema_real_eip !18
  %191 = load i128* %XMM14_val, !mcsema_real_eip !18
  store i128 %191, i128* %XMM14, align 1, !mcsema_real_eip !18
  %192 = load i128* %XMM15_val, !mcsema_real_eip !18
  store i128 %192, i128* %XMM15, align 1, !mcsema_real_eip !18
  %193 = load i64* %STACK_BASE_val, !mcsema_real_eip !18
  store i64 %193, i64* %STACK_BASE, align 1, !mcsema_real_eip !18
  %194 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !18
  store i64 %194, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !18
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !18
  %195 = load i64* %RAX, !mcsema_real_eip !18
  store i64 %195, i64* %RAX_val, !mcsema_real_eip !18
  %196 = load i64* %RBX, !mcsema_real_eip !18
  store i64 %196, i64* %RBX_val, !mcsema_real_eip !18
  %197 = load i64* %RCX, !mcsema_real_eip !18
  store i64 %197, i64* %RCX_val, !mcsema_real_eip !18
  %198 = load i64* %RDX, !mcsema_real_eip !18
  store i64 %198, i64* %RDX_val, !mcsema_real_eip !18
  %199 = load i64* %RSI, !mcsema_real_eip !18
  store i64 %199, i64* %RSI_val, !mcsema_real_eip !18
  %200 = load i64* %RDI, !mcsema_real_eip !18
  store i64 %200, i64* %RDI_val, !mcsema_real_eip !18
  %201 = load i64* %RSP, !mcsema_real_eip !18
  store i64 %201, i64* %RSP_val, !mcsema_real_eip !18
  %202 = load i64* %RBP, !mcsema_real_eip !18
  store i64 %202, i64* %RBP_val, !mcsema_real_eip !18
  %203 = load i64* %R8, !mcsema_real_eip !18
  store i64 %203, i64* %R8_val, !mcsema_real_eip !18
  %204 = load i64* %R9, !mcsema_real_eip !18
  store i64 %204, i64* %R9_val, !mcsema_real_eip !18
  %205 = load i64* %R10, !mcsema_real_eip !18
  store i64 %205, i64* %R10_val, !mcsema_real_eip !18
  %206 = load i64* %R11, !mcsema_real_eip !18
  store i64 %206, i64* %R11_val, !mcsema_real_eip !18
  %207 = load i64* %R12, !mcsema_real_eip !18
  store i64 %207, i64* %R12_val, !mcsema_real_eip !18
  %208 = load i64* %R13, !mcsema_real_eip !18
  store i64 %208, i64* %R13_val, !mcsema_real_eip !18
  %209 = load i64* %R14, !mcsema_real_eip !18
  store i64 %209, i64* %R14_val, !mcsema_real_eip !18
  %210 = load i64* %R15, !mcsema_real_eip !18
  store i64 %210, i64* %R15_val, !mcsema_real_eip !18
  %211 = load i64* %RIP, !mcsema_real_eip !18
  store i64 %211, i64* %RIP_val, !mcsema_real_eip !18
  %212 = load i1* %CF, align 1, !mcsema_real_eip !18
  store i1 %212, i1* %CF_val, !mcsema_real_eip !18
  %213 = load i1* %PF, align 1, !mcsema_real_eip !18
  store i1 %213, i1* %PF_val, !mcsema_real_eip !18
  %214 = load i1* %AF, align 1, !mcsema_real_eip !18
  store i1 %214, i1* %AF_val, !mcsema_real_eip !18
  %215 = load i1* %ZF, align 1, !mcsema_real_eip !18
  store i1 %215, i1* %ZF_val, !mcsema_real_eip !18
  %216 = load i1* %SF, align 1, !mcsema_real_eip !18
  store i1 %216, i1* %SF_val, !mcsema_real_eip !18
  %217 = load i1* %OF, align 1, !mcsema_real_eip !18
  store i1 %217, i1* %OF_val, !mcsema_real_eip !18
  %218 = load i1* %DF, align 1, !mcsema_real_eip !18
  store i1 %218, i1* %DF_val, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !18
  %219 = load i1* %FPU_B, align 1, !mcsema_real_eip !18
  store i1 %219, i1* %FPU_B_val, !mcsema_real_eip !18
  %220 = load i1* %FPU_C3, align 1, !mcsema_real_eip !18
  store i1 %220, i1* %FPU_C3_val, !mcsema_real_eip !18
  %221 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !18
  store i3 %221, i3* %FPU_TOP_val, !mcsema_real_eip !18
  %222 = load i1* %FPU_C2, align 1, !mcsema_real_eip !18
  store i1 %222, i1* %FPU_C2_val, !mcsema_real_eip !18
  %223 = load i1* %FPU_C1, align 1, !mcsema_real_eip !18
  store i1 %223, i1* %FPU_C1_val, !mcsema_real_eip !18
  %224 = load i1* %FPU_C0, align 1, !mcsema_real_eip !18
  store i1 %224, i1* %FPU_C0_val, !mcsema_real_eip !18
  %225 = load i1* %FPU_ES, align 1, !mcsema_real_eip !18
  store i1 %225, i1* %FPU_ES_val, !mcsema_real_eip !18
  %226 = load i1* %FPU_SF, align 1, !mcsema_real_eip !18
  store i1 %226, i1* %FPU_SF_val, !mcsema_real_eip !18
  %227 = load i1* %FPU_PE, align 1, !mcsema_real_eip !18
  store i1 %227, i1* %FPU_PE_val, !mcsema_real_eip !18
  %228 = load i1* %FPU_UE, align 1, !mcsema_real_eip !18
  store i1 %228, i1* %FPU_UE_val, !mcsema_real_eip !18
  %229 = load i1* %FPU_OE, align 1, !mcsema_real_eip !18
  store i1 %229, i1* %FPU_OE_val, !mcsema_real_eip !18
  %230 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !18
  store i1 %230, i1* %FPU_ZE_val, !mcsema_real_eip !18
  %231 = load i1* %FPU_DE, align 1, !mcsema_real_eip !18
  store i1 %231, i1* %FPU_DE_val, !mcsema_real_eip !18
  %232 = load i1* %FPU_IE, align 1, !mcsema_real_eip !18
  store i1 %232, i1* %FPU_IE_val, !mcsema_real_eip !18
  %233 = load i1* %FPU_X, align 1, !mcsema_real_eip !18
  store i1 %233, i1* %FPU_X_val, !mcsema_real_eip !18
  %234 = load i2* %FPU_RC, align 1, !mcsema_real_eip !18
  store i2 %234, i2* %FPU_RC_val, !mcsema_real_eip !18
  %235 = load i2* %FPU_PC, align 1, !mcsema_real_eip !18
  store i2 %235, i2* %FPU_PC_val, !mcsema_real_eip !18
  %236 = load i1* %FPU_PM, align 1, !mcsema_real_eip !18
  store i1 %236, i1* %FPU_PM_val, !mcsema_real_eip !18
  %237 = load i1* %FPU_UM, align 1, !mcsema_real_eip !18
  store i1 %237, i1* %FPU_UM_val, !mcsema_real_eip !18
  %238 = load i1* %FPU_OM, align 1, !mcsema_real_eip !18
  store i1 %238, i1* %FPU_OM_val, !mcsema_real_eip !18
  %239 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !18
  store i1 %239, i1* %FPU_ZM_val, !mcsema_real_eip !18
  %240 = load i1* %FPU_DM, align 1, !mcsema_real_eip !18
  store i1 %240, i1* %FPU_DM_val, !mcsema_real_eip !18
  %241 = load i1* %FPU_IM, align 1, !mcsema_real_eip !18
  store i1 %241, i1* %FPU_IM_val, !mcsema_real_eip !18
  %242 = load i64* %52, align 4
  store i64 %242, i64* %53, align 4
  %243 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !18
  store i16 %243, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !18
  %244 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !18
  store i64 %244, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !18
  %245 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !18
  store i16 %245, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !18
  %246 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !18
  store i64 %246, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !18
  %247 = load i128* %XMM0, align 1, !mcsema_real_eip !18
  store i128 %247, i128* %XMM0_val, !mcsema_real_eip !18
  %248 = load i128* %XMM1, align 1, !mcsema_real_eip !18
  store i128 %248, i128* %XMM1_val, !mcsema_real_eip !18
  %249 = load i128* %XMM2, align 1, !mcsema_real_eip !18
  store i128 %249, i128* %XMM2_val, !mcsema_real_eip !18
  %250 = load i128* %XMM3, align 1, !mcsema_real_eip !18
  store i128 %250, i128* %XMM3_val, !mcsema_real_eip !18
  %251 = load i128* %XMM4, align 1, !mcsema_real_eip !18
  store i128 %251, i128* %XMM4_val, !mcsema_real_eip !18
  %252 = load i128* %XMM5, align 1, !mcsema_real_eip !18
  store i128 %252, i128* %XMM5_val, !mcsema_real_eip !18
  %253 = load i128* %XMM6, align 1, !mcsema_real_eip !18
  store i128 %253, i128* %XMM6_val, !mcsema_real_eip !18
  %254 = load i128* %XMM7, align 1, !mcsema_real_eip !18
  store i128 %254, i128* %XMM7_val, !mcsema_real_eip !18
  %255 = load i128* %XMM8, align 1, !mcsema_real_eip !18
  store i128 %255, i128* %XMM8_val, !mcsema_real_eip !18
  %256 = load i128* %XMM9, align 1, !mcsema_real_eip !18
  store i128 %256, i128* %XMM9_val, !mcsema_real_eip !18
  %257 = load i128* %XMM10, align 1, !mcsema_real_eip !18
  store i128 %257, i128* %XMM10_val, !mcsema_real_eip !18
  %258 = load i128* %XMM11, align 1, !mcsema_real_eip !18
  store i128 %258, i128* %XMM11_val, !mcsema_real_eip !18
  %259 = load i128* %XMM12, align 1, !mcsema_real_eip !18
  store i128 %259, i128* %XMM12_val, !mcsema_real_eip !18
  %260 = load i128* %XMM13, align 1, !mcsema_real_eip !18
  store i128 %260, i128* %XMM13_val, !mcsema_real_eip !18
  %261 = load i128* %XMM14, align 1, !mcsema_real_eip !18
  store i128 %261, i128* %XMM14_val, !mcsema_real_eip !18
  %262 = load i128* %XMM15, align 1, !mcsema_real_eip !18
  store i128 %262, i128* %XMM15_val, !mcsema_real_eip !18
  %263 = load i64* %STACK_BASE, !mcsema_real_eip !18
  store i64 %263, i64* %STACK_BASE_val, !mcsema_real_eip !18
  %264 = load i64* %STACK_LIMIT, !mcsema_real_eip !18
  store i64 %264, i64* %STACK_LIMIT_val, !mcsema_real_eip !18
  store i64 0, i64* %RAX_val, !mcsema_real_eip !19
  %265 = load i64* %RBP_val, !mcsema_real_eip !20
  store i64 %265, i64* %RSP_val, !mcsema_real_eip !20
  %266 = inttoptr i64 %265 to i64*, !mcsema_real_eip !20
  %267 = load i64* %266, !mcsema_real_eip !20
  store i64 %267, i64* %RBP_val, !mcsema_real_eip !20
  %268 = add i64 %265, 16, !mcsema_real_eip !21
  store i64 %268, i64* %RSP_val, !mcsema_real_eip !21
  %269 = load i64* %RAX_val, !mcsema_real_eip !21
  store i64 %269, i64* %RAX, !mcsema_real_eip !21
  %270 = load i64* %RBX_val, !mcsema_real_eip !21
  store i64 %270, i64* %RBX, !mcsema_real_eip !21
  %271 = load i64* %RCX_val, !mcsema_real_eip !21
  store i64 %271, i64* %RCX, !mcsema_real_eip !21
  %272 = load i64* %RDX_val, !mcsema_real_eip !21
  store i64 %272, i64* %RDX, !mcsema_real_eip !21
  %273 = load i64* %RSI_val, !mcsema_real_eip !21
  store i64 %273, i64* %RSI, !mcsema_real_eip !21
  %274 = load i64* %RDI_val, !mcsema_real_eip !21
  store i64 %274, i64* %RDI, !mcsema_real_eip !21
  %275 = load i64* %RSP_val, !mcsema_real_eip !21
  store i64 %275, i64* %RSP, !mcsema_real_eip !21
  %276 = load i64* %RBP_val, !mcsema_real_eip !21
  store i64 %276, i64* %RBP, !mcsema_real_eip !21
  %277 = load i64* %R8_val, !mcsema_real_eip !21
  store i64 %277, i64* %R8, !mcsema_real_eip !21
  %278 = load i64* %R9_val, !mcsema_real_eip !21
  store i64 %278, i64* %R9, !mcsema_real_eip !21
  %279 = load i64* %R10_val, !mcsema_real_eip !21
  store i64 %279, i64* %R10, !mcsema_real_eip !21
  %280 = load i64* %R11_val, !mcsema_real_eip !21
  store i64 %280, i64* %R11, !mcsema_real_eip !21
  %281 = load i64* %R12_val, !mcsema_real_eip !21
  store i64 %281, i64* %R12, !mcsema_real_eip !21
  %282 = load i64* %R13_val, !mcsema_real_eip !21
  store i64 %282, i64* %R13, !mcsema_real_eip !21
  %283 = load i64* %R14_val, !mcsema_real_eip !21
  store i64 %283, i64* %R14, !mcsema_real_eip !21
  %284 = load i64* %R15_val, !mcsema_real_eip !21
  store i64 %284, i64* %R15, !mcsema_real_eip !21
  %285 = load i64* %RIP_val, !mcsema_real_eip !21
  store i64 %285, i64* %RIP, !mcsema_real_eip !21
  %286 = load i1* %CF_val, !mcsema_real_eip !21
  store i1 %286, i1* %CF, align 1, !mcsema_real_eip !21
  %287 = load i1* %PF_val, !mcsema_real_eip !21
  store i1 %287, i1* %PF, align 1, !mcsema_real_eip !21
  %288 = load i1* %AF_val, !mcsema_real_eip !21
  store i1 %288, i1* %AF, align 1, !mcsema_real_eip !21
  %289 = load i1* %ZF_val, !mcsema_real_eip !21
  store i1 %289, i1* %ZF, align 1, !mcsema_real_eip !21
  %290 = load i1* %SF_val, !mcsema_real_eip !21
  store i1 %290, i1* %SF, align 1, !mcsema_real_eip !21
  %291 = load i1* %OF_val, !mcsema_real_eip !21
  store i1 %291, i1* %OF, align 1, !mcsema_real_eip !21
  %292 = load i1* %DF_val, !mcsema_real_eip !21
  store i1 %292, i1* %DF, align 1, !mcsema_real_eip !21
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !21
  %293 = load i1* %FPU_B_val, !mcsema_real_eip !21
  store i1 %293, i1* %FPU_B, align 1, !mcsema_real_eip !21
  %294 = load i1* %FPU_C3_val, !mcsema_real_eip !21
  store i1 %294, i1* %FPU_C3, align 1, !mcsema_real_eip !21
  %295 = load i3* %FPU_TOP_val, !mcsema_real_eip !21
  store i3 %295, i3* %FPU_TOP, align 1, !mcsema_real_eip !21
  %296 = load i1* %FPU_C2_val, !mcsema_real_eip !21
  store i1 %296, i1* %FPU_C2, align 1, !mcsema_real_eip !21
  %297 = load i1* %FPU_C1_val, !mcsema_real_eip !21
  store i1 %297, i1* %FPU_C1, align 1, !mcsema_real_eip !21
  %298 = load i1* %FPU_C0_val, !mcsema_real_eip !21
  store i1 %298, i1* %FPU_C0, align 1, !mcsema_real_eip !21
  %299 = load i1* %FPU_ES_val, !mcsema_real_eip !21
  store i1 %299, i1* %FPU_ES, align 1, !mcsema_real_eip !21
  %300 = load i1* %FPU_SF_val, !mcsema_real_eip !21
  store i1 %300, i1* %FPU_SF, align 1, !mcsema_real_eip !21
  %301 = load i1* %FPU_PE_val, !mcsema_real_eip !21
  store i1 %301, i1* %FPU_PE, align 1, !mcsema_real_eip !21
  %302 = load i1* %FPU_UE_val, !mcsema_real_eip !21
  store i1 %302, i1* %FPU_UE, align 1, !mcsema_real_eip !21
  %303 = load i1* %FPU_OE_val, !mcsema_real_eip !21
  store i1 %303, i1* %FPU_OE, align 1, !mcsema_real_eip !21
  %304 = load i1* %FPU_ZE_val, !mcsema_real_eip !21
  store i1 %304, i1* %FPU_ZE, align 1, !mcsema_real_eip !21
  %305 = load i1* %FPU_DE_val, !mcsema_real_eip !21
  store i1 %305, i1* %FPU_DE, align 1, !mcsema_real_eip !21
  %306 = load i1* %FPU_IE_val, !mcsema_real_eip !21
  store i1 %306, i1* %FPU_IE, align 1, !mcsema_real_eip !21
  %307 = load i1* %FPU_X_val, !mcsema_real_eip !21
  store i1 %307, i1* %FPU_X, align 1, !mcsema_real_eip !21
  %308 = load i2* %FPU_RC_val, !mcsema_real_eip !21
  store i2 %308, i2* %FPU_RC, align 1, !mcsema_real_eip !21
  %309 = load i2* %FPU_PC_val, !mcsema_real_eip !21
  store i2 %309, i2* %FPU_PC, align 1, !mcsema_real_eip !21
  %310 = load i1* %FPU_PM_val, !mcsema_real_eip !21
  store i1 %310, i1* %FPU_PM, align 1, !mcsema_real_eip !21
  %311 = load i1* %FPU_UM_val, !mcsema_real_eip !21
  store i1 %311, i1* %FPU_UM, align 1, !mcsema_real_eip !21
  %312 = load i1* %FPU_OM_val, !mcsema_real_eip !21
  store i1 %312, i1* %FPU_OM, align 1, !mcsema_real_eip !21
  %313 = load i1* %FPU_ZM_val, !mcsema_real_eip !21
  store i1 %313, i1* %FPU_ZM, align 1, !mcsema_real_eip !21
  %314 = load i1* %FPU_DM_val, !mcsema_real_eip !21
  store i1 %314, i1* %FPU_DM, align 1, !mcsema_real_eip !21
  %315 = load i1* %FPU_IM_val, !mcsema_real_eip !21
  store i1 %315, i1* %FPU_IM, align 1, !mcsema_real_eip !21
  %316 = load i64* %53, align 4
  store i64 %316, i64* %52, align 4
  %317 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !21
  store i16 %317, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !21
  %318 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !21
  store i64 %318, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !21
  %319 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !21
  store i16 %319, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !21
  %320 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !21
  store i64 %320, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !21
  %321 = load i128* %XMM0_val, !mcsema_real_eip !21
  store i128 %321, i128* %XMM0, align 1, !mcsema_real_eip !21
  %322 = load i128* %XMM1_val, !mcsema_real_eip !21
  store i128 %322, i128* %XMM1, align 1, !mcsema_real_eip !21
  %323 = load i128* %XMM2_val, !mcsema_real_eip !21
  store i128 %323, i128* %XMM2, align 1, !mcsema_real_eip !21
  %324 = load i128* %XMM3_val, !mcsema_real_eip !21
  store i128 %324, i128* %XMM3, align 1, !mcsema_real_eip !21
  %325 = load i128* %XMM4_val, !mcsema_real_eip !21
  store i128 %325, i128* %XMM4, align 1, !mcsema_real_eip !21
  %326 = load i128* %XMM5_val, !mcsema_real_eip !21
  store i128 %326, i128* %XMM5, align 1, !mcsema_real_eip !21
  %327 = load i128* %XMM6_val, !mcsema_real_eip !21
  store i128 %327, i128* %XMM6, align 1, !mcsema_real_eip !21
  %328 = load i128* %XMM7_val, !mcsema_real_eip !21
  store i128 %328, i128* %XMM7, align 1, !mcsema_real_eip !21
  %329 = load i128* %XMM8_val, !mcsema_real_eip !21
  store i128 %329, i128* %XMM8, align 1, !mcsema_real_eip !21
  %330 = load i128* %XMM9_val, !mcsema_real_eip !21
  store i128 %330, i128* %XMM9, align 1, !mcsema_real_eip !21
  %331 = load i128* %XMM10_val, !mcsema_real_eip !21
  store i128 %331, i128* %XMM10, align 1, !mcsema_real_eip !21
  %332 = load i128* %XMM11_val, !mcsema_real_eip !21
  store i128 %332, i128* %XMM11, align 1, !mcsema_real_eip !21
  %333 = load i128* %XMM12_val, !mcsema_real_eip !21
  store i128 %333, i128* %XMM12, align 1, !mcsema_real_eip !21
  %334 = load i128* %XMM13_val, !mcsema_real_eip !21
  store i128 %334, i128* %XMM13, align 1, !mcsema_real_eip !21
  %335 = load i128* %XMM14_val, !mcsema_real_eip !21
  store i128 %335, i128* %XMM14, align 1, !mcsema_real_eip !21
  %336 = load i128* %XMM15_val, !mcsema_real_eip !21
  store i128 %336, i128* %XMM15, align 1, !mcsema_real_eip !21
  %337 = load i64* %STACK_BASE_val, !mcsema_real_eip !21
  store i64 %337, i64* %STACK_BASE, align 1, !mcsema_real_eip !21
  %338 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !21
  store i64 %338, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !21
  ret void, !mcsema_real_eip !21
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !22
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !22
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !22
  %XMM15_val = alloca i128, !mcsema_real_eip !22
  %XMM14_val = alloca i128, !mcsema_real_eip !22
  %XMM13_val = alloca i128, !mcsema_real_eip !22
  %XMM12_val = alloca i128, !mcsema_real_eip !22
  %XMM11_val = alloca i128, !mcsema_real_eip !22
  %XMM10_val = alloca i128, !mcsema_real_eip !22
  %XMM9_val = alloca i128, !mcsema_real_eip !22
  %XMM8_val = alloca i128, !mcsema_real_eip !22
  %XMM7_val = alloca i128, !mcsema_real_eip !22
  %XMM6_val = alloca i128, !mcsema_real_eip !22
  %XMM5_val = alloca i128, !mcsema_real_eip !22
  %XMM4_val = alloca i128, !mcsema_real_eip !22
  %XMM3_val = alloca i128, !mcsema_real_eip !22
  %XMM2_val = alloca i128, !mcsema_real_eip !22
  %XMM1_val = alloca i128, !mcsema_real_eip !22
  %XMM0_val = alloca i128, !mcsema_real_eip !22
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !22
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !22
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !22
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !22
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !22
  %FPU_IM_val = alloca i1, !mcsema_real_eip !22
  %FPU_DM_val = alloca i1, !mcsema_real_eip !22
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !22
  %FPU_OM_val = alloca i1, !mcsema_real_eip !22
  %FPU_UM_val = alloca i1, !mcsema_real_eip !22
  %FPU_PM_val = alloca i1, !mcsema_real_eip !22
  %FPU_PC_val = alloca i2, !mcsema_real_eip !22
  %FPU_RC_val = alloca i2, !mcsema_real_eip !22
  %FPU_X_val = alloca i1, !mcsema_real_eip !22
  %FPU_IE_val = alloca i1, !mcsema_real_eip !22
  %FPU_DE_val = alloca i1, !mcsema_real_eip !22
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !22
  %FPU_OE_val = alloca i1, !mcsema_real_eip !22
  %FPU_UE_val = alloca i1, !mcsema_real_eip !22
  %FPU_PE_val = alloca i1, !mcsema_real_eip !22
  %FPU_SF_val = alloca i1, !mcsema_real_eip !22
  %FPU_ES_val = alloca i1, !mcsema_real_eip !22
  %FPU_C0_val = alloca i1, !mcsema_real_eip !22
  %FPU_C1_val = alloca i1, !mcsema_real_eip !22
  %FPU_C2_val = alloca i1, !mcsema_real_eip !22
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !22
  %FPU_C3_val = alloca i1, !mcsema_real_eip !22
  %FPU_B_val = alloca i1, !mcsema_real_eip !22
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !22
  %DF_val = alloca i1, !mcsema_real_eip !22
  %OF_val = alloca i1, !mcsema_real_eip !22
  %SF_val = alloca i1, !mcsema_real_eip !22
  %CF_val = alloca i1, !mcsema_real_eip !22
  %AF_val = alloca i1, !mcsema_real_eip !22
  %PF_val = alloca i1, !mcsema_real_eip !22
  %ZF_val = alloca i1, !mcsema_real_eip !22
  %RIP_val = alloca i64, !mcsema_real_eip !22
  %R14_val = alloca i64, !mcsema_real_eip !22
  %R13_val = alloca i64, !mcsema_real_eip !22
  %R12_val = alloca i64, !mcsema_real_eip !22
  %R11_val = alloca i64, !mcsema_real_eip !22
  %R10_val = alloca i64, !mcsema_real_eip !22
  %R9_val = alloca i64, !mcsema_real_eip !22
  %R8_val = alloca i64, !mcsema_real_eip !22
  %RSP_val = alloca i64, !mcsema_real_eip !22
  %RBP_val = alloca i64, !mcsema_real_eip !22
  %RDI_val = alloca i64, !mcsema_real_eip !22
  %RSI_val = alloca i64, !mcsema_real_eip !22
  %RDX_val = alloca i64, !mcsema_real_eip !22
  %RCX_val = alloca i64, !mcsema_real_eip !22
  %RBX_val = alloca i64, !mcsema_real_eip !22
  %RAX_val = alloca i64, !mcsema_real_eip !22
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !22
  %1 = load i64* %RAX, !mcsema_real_eip !22
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !22
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !22
  %2 = load i64* %RBX, !mcsema_real_eip !22
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !22
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !22
  %3 = load i64* %RCX, !mcsema_real_eip !22
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !22
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !22
  %4 = load i64* %RDX, !mcsema_real_eip !22
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !22
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !22
  %5 = load i64* %RSI, !mcsema_real_eip !22
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !22
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !22
  %6 = load i64* %RDI, !mcsema_real_eip !22
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !22
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !22
  %7 = load i64* %RSP, !mcsema_real_eip !22
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !22
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !22
  %8 = load i64* %RBP, !mcsema_real_eip !22
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !22
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !22
  %9 = load i64* %R8, !mcsema_real_eip !22
  store i64 %9, i64* %R8_val, !mcsema_real_eip !22
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !22
  %10 = load i64* %R9, !mcsema_real_eip !22
  store i64 %10, i64* %R9_val, !mcsema_real_eip !22
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !22
  %11 = load i64* %R10, !mcsema_real_eip !22
  store i64 %11, i64* %R10_val, !mcsema_real_eip !22
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !22
  %12 = load i64* %R11, !mcsema_real_eip !22
  store i64 %12, i64* %R11_val, !mcsema_real_eip !22
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !22
  %13 = load i64* %R12, !mcsema_real_eip !22
  store i64 %13, i64* %R12_val, !mcsema_real_eip !22
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !22
  %14 = load i64* %R13, !mcsema_real_eip !22
  store i64 %14, i64* %R13_val, !mcsema_real_eip !22
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !22
  %15 = load i64* %R14, !mcsema_real_eip !22
  store i64 %15, i64* %R14_val, !mcsema_real_eip !22
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !22
  %16 = load i64* %R15, !mcsema_real_eip !22
  store i64 %16, i64* %R15_val, !mcsema_real_eip !22
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !22
  %17 = load i64* %RIP, !mcsema_real_eip !22
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !22
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !22
  %18 = load i1* %CF, align 1, !mcsema_real_eip !22
  store i1 %18, i1* %CF_val, !mcsema_real_eip !22
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !22
  %19 = load i1* %PF, align 1, !mcsema_real_eip !22
  store i1 %19, i1* %PF_val, !mcsema_real_eip !22
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !22
  %20 = load i1* %AF, align 1, !mcsema_real_eip !22
  store i1 %20, i1* %AF_val, !mcsema_real_eip !22
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !22
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !22
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !22
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !22
  %22 = load i1* %SF, align 1, !mcsema_real_eip !22
  store i1 %22, i1* %SF_val, !mcsema_real_eip !22
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !22
  %23 = load i1* %OF, align 1, !mcsema_real_eip !22
  store i1 %23, i1* %OF_val, !mcsema_real_eip !22
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !22
  %24 = load i1* %DF, align 1, !mcsema_real_eip !22
  store i1 %24, i1* %DF_val, !mcsema_real_eip !22
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !22
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !22
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !22
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !22
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !22
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !22
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !22
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !22
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !22
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !22
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !22
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !22
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !22
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !22
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !22
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !22
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !22
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !22
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !22
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !22
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !22
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !22
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !22
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !22
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !22
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !22
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !22
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !22
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !22
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !22
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !22
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !22
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !22
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !22
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !22
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !22
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !22
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !22
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !22
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !22
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !22
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !22
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !22
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !22
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !22
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !22
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !22
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !22
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !22
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !22
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !22
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !22
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !22
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !22
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !22
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !22
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !22
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !22
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !22
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !22
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !22
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !22
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !22
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !22
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !22
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !22
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !22
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !22
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !22
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !22
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !22
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !22
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !22
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !22
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !22
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !22
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !22
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !22
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !22
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !22
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !22
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !22
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !22
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !22
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !22
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !22
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !22
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !22
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !22
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !22
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !22
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !22
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !22
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !22
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !22
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !22
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !22
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !22
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !22
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !22
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !22
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !22
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !22
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !22
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !22
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !22
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !22
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !22
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !22
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !22
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !22
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !22
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !22
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !22
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !22
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !22
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !22
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !22
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !22
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !22
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !22
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !22
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !22
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !22
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !22
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !22
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !22
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !22
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !22
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !22
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !22
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !22
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !22
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !22
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !22
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !22
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !22
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !22
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !22
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !22
  %77 = load i64* %RBP_val, !mcsema_real_eip !22
  %78 = load i64* %RSP_val, !mcsema_real_eip !22
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !22
  store i64 %77, i64* %80, !mcsema_real_eip !22
  store i64 %79, i64* %RSP_val, !mcsema_real_eip !22
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !23
  %81 = add i64 %78, -44, !mcsema_real_eip !24
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !24
  %83 = load i64* %RDI_val, !mcsema_real_eip !24
  %84 = trunc i64 %83 to i32, !mcsema_real_eip !24
  %85 = bitcast i64* %82 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !24
  %86 = load i64* %RBP_val, !mcsema_real_eip !25
  %87 = add i64 %86, -40, !mcsema_real_eip !25
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !25
  %89 = load i64* %RSI_val, !mcsema_real_eip !25
  %90 = trunc i64 %89 to i32, !mcsema_real_eip !25
  %91 = bitcast i64* %88 to i32*
  store i32 %90, i32* %91, !mcsema_real_eip !25
  %92 = load i64* %RBP_val, !mcsema_real_eip !26
  %93 = add i64 %92, -44, !mcsema_real_eip !26
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !26
  %95 = load i64* %RDX_val, !mcsema_real_eip !26
  %96 = trunc i64 %95 to i32, !mcsema_real_eip !26
  %97 = bitcast i64* %94 to i32*
  store i32 %96, i32* %97, !mcsema_real_eip !26
  %98 = load i64* %RBP_val, !mcsema_real_eip !27
  %99 = add i64 %98, -48, !mcsema_real_eip !27
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !27
  %101 = load i64* %RCX_val, !mcsema_real_eip !27
  %102 = trunc i64 %101 to i32, !mcsema_real_eip !27
  %103 = bitcast i64* %100 to i32*
  store i32 %102, i32* %103, !mcsema_real_eip !27
  %104 = load i64* %RBP_val, !mcsema_real_eip !28
  %105 = add i64 %104, -52, !mcsema_real_eip !28
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !28
  %107 = load i64* %R8_val, !mcsema_real_eip !28
  %108 = trunc i64 %107 to i32, !mcsema_real_eip !28
  %109 = bitcast i64* %106 to i32*
  store i32 %108, i32* %109, !mcsema_real_eip !28
  %110 = load i64* %RBP_val, !mcsema_real_eip !29
  %111 = add i64 %110, -56, !mcsema_real_eip !29
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !29
  %113 = load i64* %R9_val, !mcsema_real_eip !29
  %114 = trunc i64 %113 to i32, !mcsema_real_eip !29
  %115 = bitcast i64* %112 to i32*
  store i32 %114, i32* %115, !mcsema_real_eip !29
  %116 = load i64* %RBP_val, !mcsema_real_eip !30
  %117 = add i64 %116, 16, !mcsema_real_eip !30
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !30
  %119 = bitcast i64* %118 to i32*
  %120 = load i32* %119, !mcsema_real_eip !30
  %121 = zext i32 %120 to i64, !mcsema_real_eip !30
  store i64 %121, i64* %RDX_val, !mcsema_real_eip !30
  %122 = load i64* %RBP_val, !mcsema_real_eip !31
  %123 = add i64 %122, -36, !mcsema_real_eip !31
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !31
  %125 = bitcast i64* %124 to i32*
  %126 = load i32* %125, !mcsema_real_eip !31
  %127 = zext i32 %126 to i64, !mcsema_real_eip !31
  store i64 %127, i64* %RAX_val, !mcsema_real_eip !31
  %128 = load i64* %RDX_val, !mcsema_real_eip !32
  %129 = trunc i64 %128 to i32, !mcsema_real_eip !32
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %126, i32 %129)
  %130 = extractvalue { i32, i1 } %uadd, 0
  %131 = xor i32 %130, %129, !mcsema_real_eip !32
  %132 = xor i32 %131, %126, !mcsema_real_eip !32
  %133 = and i32 %132, 16, !mcsema_real_eip !32
  %134 = icmp ne i32 %133, 0, !mcsema_real_eip !32
  store i1 %134, i1* %AF_val, !mcsema_real_eip !32
  %135 = icmp slt i32 %130, 0
  store i1 %135, i1* %SF_val, !mcsema_real_eip !32
  %136 = icmp eq i32 %130, 0, !mcsema_real_eip !32
  store i1 %136, i1* %ZF_val, !mcsema_real_eip !32
  %137 = xor i32 %126, -2147483648, !mcsema_real_eip !32
  %138 = xor i32 %137, %129, !mcsema_real_eip !32
  %139 = and i32 %131, %138, !mcsema_real_eip !32
  %140 = icmp slt i32 %139, 0
  store i1 %140, i1* %OF_val, !mcsema_real_eip !32
  %141 = trunc i32 %130 to i8, !mcsema_real_eip !32
  %142 = tail call i8 @llvm.ctpop.i8(i8 %141), !mcsema_real_eip !32
  %143 = and i8 %142, 1
  %144 = icmp eq i8 %143, 0
  store i1 %144, i1* %PF_val, !mcsema_real_eip !32
  %145 = extractvalue { i32, i1 } %uadd, 1
  store i1 %145, i1* %CF_val, !mcsema_real_eip !32
  %146 = zext i32 %130 to i64, !mcsema_real_eip !32
  store i64 %146, i64* %RDX_val, !mcsema_real_eip !32
  %147 = load i64* %RBP_val, !mcsema_real_eip !33
  %148 = add i64 %147, -40, !mcsema_real_eip !33
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !33
  %150 = bitcast i64* %149 to i32*
  %151 = load i32* %150, !mcsema_real_eip !33
  %152 = zext i32 %151 to i64, !mcsema_real_eip !33
  store i64 %152, i64* %RAX_val, !mcsema_real_eip !33
  %153 = load i64* %RDX_val, !mcsema_real_eip !34
  %154 = trunc i64 %153 to i32, !mcsema_real_eip !34
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %151, i32 %154)
  %155 = extractvalue { i32, i1 } %uadd70, 0
  %156 = xor i32 %155, %154, !mcsema_real_eip !34
  %157 = xor i32 %156, %151, !mcsema_real_eip !34
  %158 = and i32 %157, 16, !mcsema_real_eip !34
  %159 = icmp ne i32 %158, 0, !mcsema_real_eip !34
  store i1 %159, i1* %AF_val, !mcsema_real_eip !34
  %160 = icmp slt i32 %155, 0
  store i1 %160, i1* %SF_val, !mcsema_real_eip !34
  %161 = icmp eq i32 %155, 0, !mcsema_real_eip !34
  store i1 %161, i1* %ZF_val, !mcsema_real_eip !34
  %162 = xor i32 %151, -2147483648, !mcsema_real_eip !34
  %163 = xor i32 %162, %154, !mcsema_real_eip !34
  %164 = and i32 %156, %163, !mcsema_real_eip !34
  %165 = icmp slt i32 %164, 0
  store i1 %165, i1* %OF_val, !mcsema_real_eip !34
  %166 = trunc i32 %155 to i8, !mcsema_real_eip !34
  %167 = tail call i8 @llvm.ctpop.i8(i8 %166), !mcsema_real_eip !34
  %168 = and i8 %167, 1
  %169 = icmp eq i8 %168, 0
  store i1 %169, i1* %PF_val, !mcsema_real_eip !34
  %170 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %170, i1* %CF_val, !mcsema_real_eip !34
  %171 = zext i32 %155 to i64, !mcsema_real_eip !34
  store i64 %171, i64* %RDX_val, !mcsema_real_eip !34
  %172 = load i64* %RBP_val, !mcsema_real_eip !35
  %173 = add i64 %172, -44, !mcsema_real_eip !35
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !35
  %175 = bitcast i64* %174 to i32*
  %176 = load i32* %175, !mcsema_real_eip !35
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %155, i32 %176)
  %177 = extractvalue { i32, i1 } %uadd71, 0
  %178 = xor i32 %177, %176, !mcsema_real_eip !36
  %179 = xor i32 %178, %155, !mcsema_real_eip !36
  %180 = and i32 %179, 16, !mcsema_real_eip !36
  %181 = icmp ne i32 %180, 0, !mcsema_real_eip !36
  store i1 %181, i1* %AF_val, !mcsema_real_eip !36
  %182 = icmp slt i32 %177, 0
  store i1 %182, i1* %SF_val, !mcsema_real_eip !36
  %183 = icmp eq i32 %177, 0, !mcsema_real_eip !36
  store i1 %183, i1* %ZF_val, !mcsema_real_eip !36
  %184 = xor i32 %176, -2147483648, !mcsema_real_eip !36
  %185 = xor i32 %184, %155, !mcsema_real_eip !36
  %186 = and i32 %178, %185, !mcsema_real_eip !36
  %187 = icmp slt i32 %186, 0
  store i1 %187, i1* %OF_val, !mcsema_real_eip !36
  %188 = trunc i32 %177 to i8, !mcsema_real_eip !36
  %189 = tail call i8 @llvm.ctpop.i8(i8 %188), !mcsema_real_eip !36
  %190 = and i8 %189, 1
  %191 = icmp eq i8 %190, 0
  store i1 %191, i1* %PF_val, !mcsema_real_eip !36
  %192 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %192, i1* %CF_val, !mcsema_real_eip !36
  %193 = zext i32 %177 to i64, !mcsema_real_eip !36
  store i64 %193, i64* %RAX_val, !mcsema_real_eip !36
  %194 = load i64* %RBP_val, !mcsema_real_eip !37
  %195 = add i64 %194, -32, !mcsema_real_eip !37
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !37
  %197 = bitcast i64* %196 to i32*
  store i32 %177, i32* %197, !mcsema_real_eip !37
  %198 = load i64* %RBP_val, !mcsema_real_eip !38
  %199 = add i64 %198, 20, !mcsema_real_eip !38
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !38
  %201 = bitcast i64* %200 to i32*
  %202 = load i32* %201, !mcsema_real_eip !38
  %203 = zext i32 %202 to i64, !mcsema_real_eip !38
  store i64 %203, i64* %RDX_val, !mcsema_real_eip !38
  %204 = load i64* %RBP_val, !mcsema_real_eip !39
  %205 = add i64 %204, -48, !mcsema_real_eip !39
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !39
  %207 = bitcast i64* %206 to i32*
  %208 = load i32* %207, !mcsema_real_eip !39
  %209 = zext i32 %208 to i64, !mcsema_real_eip !39
  store i64 %209, i64* %RAX_val, !mcsema_real_eip !39
  %210 = load i64* %RDX_val, !mcsema_real_eip !40
  %211 = trunc i64 %210 to i32, !mcsema_real_eip !40
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %208, i32 %211)
  %212 = extractvalue { i32, i1 } %uadd72, 0
  %213 = xor i32 %212, %211, !mcsema_real_eip !40
  %214 = xor i32 %213, %208, !mcsema_real_eip !40
  %215 = and i32 %214, 16, !mcsema_real_eip !40
  %216 = icmp ne i32 %215, 0, !mcsema_real_eip !40
  store i1 %216, i1* %AF_val, !mcsema_real_eip !40
  %217 = icmp slt i32 %212, 0
  store i1 %217, i1* %SF_val, !mcsema_real_eip !40
  %218 = icmp eq i32 %212, 0, !mcsema_real_eip !40
  store i1 %218, i1* %ZF_val, !mcsema_real_eip !40
  %219 = xor i32 %208, -2147483648, !mcsema_real_eip !40
  %220 = xor i32 %219, %211, !mcsema_real_eip !40
  %221 = and i32 %213, %220, !mcsema_real_eip !40
  %222 = icmp slt i32 %221, 0
  store i1 %222, i1* %OF_val, !mcsema_real_eip !40
  %223 = trunc i32 %212 to i8, !mcsema_real_eip !40
  %224 = tail call i8 @llvm.ctpop.i8(i8 %223), !mcsema_real_eip !40
  %225 = and i8 %224, 1
  %226 = icmp eq i8 %225, 0
  store i1 %226, i1* %PF_val, !mcsema_real_eip !40
  %227 = extractvalue { i32, i1 } %uadd72, 1
  store i1 %227, i1* %CF_val, !mcsema_real_eip !40
  %228 = zext i32 %212 to i64, !mcsema_real_eip !40
  store i64 %228, i64* %RDX_val, !mcsema_real_eip !40
  %229 = load i64* %RBP_val, !mcsema_real_eip !41
  %230 = add i64 %229, -52, !mcsema_real_eip !41
  %231 = inttoptr i64 %230 to i64*, !mcsema_real_eip !41
  %232 = bitcast i64* %231 to i32*
  %233 = load i32* %232, !mcsema_real_eip !41
  %234 = zext i32 %233 to i64, !mcsema_real_eip !41
  store i64 %234, i64* %RAX_val, !mcsema_real_eip !41
  %235 = load i64* %RDX_val, !mcsema_real_eip !42
  %236 = trunc i64 %235 to i32, !mcsema_real_eip !42
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %233, i32 %236)
  %237 = extractvalue { i32, i1 } %uadd73, 0
  %238 = xor i32 %237, %236, !mcsema_real_eip !42
  %239 = xor i32 %238, %233, !mcsema_real_eip !42
  %240 = and i32 %239, 16, !mcsema_real_eip !42
  %241 = icmp ne i32 %240, 0, !mcsema_real_eip !42
  store i1 %241, i1* %AF_val, !mcsema_real_eip !42
  %242 = icmp slt i32 %237, 0
  store i1 %242, i1* %SF_val, !mcsema_real_eip !42
  %243 = icmp eq i32 %237, 0, !mcsema_real_eip !42
  store i1 %243, i1* %ZF_val, !mcsema_real_eip !42
  %244 = xor i32 %233, -2147483648, !mcsema_real_eip !42
  %245 = xor i32 %244, %236, !mcsema_real_eip !42
  %246 = and i32 %238, %245, !mcsema_real_eip !42
  %247 = icmp slt i32 %246, 0
  store i1 %247, i1* %OF_val, !mcsema_real_eip !42
  %248 = trunc i32 %237 to i8, !mcsema_real_eip !42
  %249 = tail call i8 @llvm.ctpop.i8(i8 %248), !mcsema_real_eip !42
  %250 = and i8 %249, 1
  %251 = icmp eq i8 %250, 0
  store i1 %251, i1* %PF_val, !mcsema_real_eip !42
  %252 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %252, i1* %CF_val, !mcsema_real_eip !42
  %253 = zext i32 %237 to i64, !mcsema_real_eip !42
  store i64 %253, i64* %RDX_val, !mcsema_real_eip !42
  %254 = load i64* %RBP_val, !mcsema_real_eip !43
  %255 = add i64 %254, -56, !mcsema_real_eip !43
  %256 = inttoptr i64 %255 to i64*, !mcsema_real_eip !43
  %257 = bitcast i64* %256 to i32*
  %258 = load i32* %257, !mcsema_real_eip !43
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %237, i32 %258)
  %259 = extractvalue { i32, i1 } %uadd74, 0
  %260 = xor i32 %259, %258, !mcsema_real_eip !44
  %261 = xor i32 %260, %237, !mcsema_real_eip !44
  %262 = and i32 %261, 16, !mcsema_real_eip !44
  %263 = icmp ne i32 %262, 0, !mcsema_real_eip !44
  store i1 %263, i1* %AF_val, !mcsema_real_eip !44
  %264 = icmp slt i32 %259, 0
  store i1 %264, i1* %SF_val, !mcsema_real_eip !44
  %265 = icmp eq i32 %259, 0, !mcsema_real_eip !44
  store i1 %265, i1* %ZF_val, !mcsema_real_eip !44
  %266 = xor i32 %258, -2147483648, !mcsema_real_eip !44
  %267 = xor i32 %266, %237, !mcsema_real_eip !44
  %268 = and i32 %260, %267, !mcsema_real_eip !44
  %269 = icmp slt i32 %268, 0
  store i1 %269, i1* %OF_val, !mcsema_real_eip !44
  %270 = trunc i32 %259 to i8, !mcsema_real_eip !44
  %271 = tail call i8 @llvm.ctpop.i8(i8 %270), !mcsema_real_eip !44
  %272 = and i8 %271, 1
  %273 = icmp eq i8 %272, 0
  store i1 %273, i1* %PF_val, !mcsema_real_eip !44
  %274 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %274, i1* %CF_val, !mcsema_real_eip !44
  %275 = zext i32 %259 to i64, !mcsema_real_eip !44
  store i64 %275, i64* %RAX_val, !mcsema_real_eip !44
  %276 = load i64* %RBP_val, !mcsema_real_eip !45
  %277 = add i64 %276, -28, !mcsema_real_eip !45
  %278 = inttoptr i64 %277 to i64*, !mcsema_real_eip !45
  %279 = bitcast i64* %278 to i32*
  store i32 %259, i32* %279, !mcsema_real_eip !45
  %280 = load i64* %RBP_val, !mcsema_real_eip !46
  %281 = add i64 %280, 24, !mcsema_real_eip !46
  %282 = inttoptr i64 %281 to i64*, !mcsema_real_eip !46
  %283 = bitcast i64* %282 to i32*
  %284 = load i32* %283, !mcsema_real_eip !46
  %285 = zext i32 %284 to i64, !mcsema_real_eip !46
  store i64 %285, i64* %RAX_val, !mcsema_real_eip !46
  %286 = load i64* %RBP_val, !mcsema_real_eip !47
  %287 = add i64 %286, -24, !mcsema_real_eip !47
  %288 = inttoptr i64 %287 to i64*, !mcsema_real_eip !47
  %289 = bitcast i64* %288 to i32*
  store i32 %284, i32* %289, !mcsema_real_eip !47
  %290 = load i64* %RBP_val, !mcsema_real_eip !48
  %291 = add i64 %290, -32, !mcsema_real_eip !48
  %292 = inttoptr i64 %291 to i64*, !mcsema_real_eip !48
  %293 = load i64* %292, !mcsema_real_eip !48
  store i64 %293, i64* %RAX_val, !mcsema_real_eip !48
  %294 = add i64 %290, -16, !mcsema_real_eip !49
  %295 = inttoptr i64 %294 to i64*, !mcsema_real_eip !49
  store i64 %293, i64* %295, !mcsema_real_eip !49
  %296 = load i64* %RBP_val, !mcsema_real_eip !50
  %297 = add i64 %296, -24, !mcsema_real_eip !50
  %298 = inttoptr i64 %297 to i64*, !mcsema_real_eip !50
  %299 = bitcast i64* %298 to i32*
  %300 = load i32* %299, !mcsema_real_eip !50
  %301 = zext i32 %300 to i64, !mcsema_real_eip !50
  store i64 %301, i64* %RAX_val, !mcsema_real_eip !50
  %302 = load i64* %RBP_val, !mcsema_real_eip !51
  %303 = add i64 %302, -8, !mcsema_real_eip !51
  %304 = inttoptr i64 %303 to i64*, !mcsema_real_eip !51
  %305 = bitcast i64* %304 to i32*
  store i32 %300, i32* %305, !mcsema_real_eip !51
  %306 = load i64* %RBP_val, !mcsema_real_eip !52
  %307 = add i64 %306, -16, !mcsema_real_eip !52
  %308 = inttoptr i64 %307 to i64*, !mcsema_real_eip !52
  %309 = load i64* %308, !mcsema_real_eip !52
  store i64 %309, i64* %RAX_val, !mcsema_real_eip !52
  %310 = add i64 %306, -8, !mcsema_real_eip !53
  %311 = inttoptr i64 %310 to i64*, !mcsema_real_eip !53
  %312 = bitcast i64* %311 to i32*
  %313 = load i32* %312, !mcsema_real_eip !53
  %314 = zext i32 %313 to i64, !mcsema_real_eip !53
  store i64 %314, i64* %RDX_val, !mcsema_real_eip !53
  %315 = load i64* %RSP_val, !mcsema_real_eip !54
  %316 = inttoptr i64 %315 to i64*, !mcsema_real_eip !54
  %317 = load i64* %316, !mcsema_real_eip !54
  store i64 %317, i64* %RBP_val, !mcsema_real_eip !54
  %318 = add i64 %315, 16, !mcsema_real_eip !55
  store i64 %318, i64* %RSP_val, !mcsema_real_eip !55
  %319 = load i64* %RAX_val, !mcsema_real_eip !55
  store i64 %319, i64* %RAX, !mcsema_real_eip !55
  %320 = load i64* %RBX_val, !mcsema_real_eip !55
  store i64 %320, i64* %RBX, !mcsema_real_eip !55
  %321 = load i64* %RCX_val, !mcsema_real_eip !55
  store i64 %321, i64* %RCX, !mcsema_real_eip !55
  %322 = load i64* %RDX_val, !mcsema_real_eip !55
  store i64 %322, i64* %RDX, !mcsema_real_eip !55
  %323 = load i64* %RSI_val, !mcsema_real_eip !55
  store i64 %323, i64* %RSI, !mcsema_real_eip !55
  %324 = load i64* %RDI_val, !mcsema_real_eip !55
  store i64 %324, i64* %RDI, !mcsema_real_eip !55
  %325 = load i64* %RSP_val, !mcsema_real_eip !55
  store i64 %325, i64* %RSP, !mcsema_real_eip !55
  %326 = load i64* %RBP_val, !mcsema_real_eip !55
  store i64 %326, i64* %RBP, !mcsema_real_eip !55
  %327 = load i64* %R8_val, !mcsema_real_eip !55
  store i64 %327, i64* %R8, !mcsema_real_eip !55
  %328 = load i64* %R9_val, !mcsema_real_eip !55
  store i64 %328, i64* %R9, !mcsema_real_eip !55
  %329 = load i64* %R10_val, !mcsema_real_eip !55
  store i64 %329, i64* %R10, !mcsema_real_eip !55
  %330 = load i64* %R11_val, !mcsema_real_eip !55
  store i64 %330, i64* %R11, !mcsema_real_eip !55
  %331 = load i64* %R12_val, !mcsema_real_eip !55
  store i64 %331, i64* %R12, !mcsema_real_eip !55
  %332 = load i64* %R13_val, !mcsema_real_eip !55
  store i64 %332, i64* %R13, !mcsema_real_eip !55
  %333 = load i64* %R14_val, !mcsema_real_eip !55
  store i64 %333, i64* %R14, !mcsema_real_eip !55
  %334 = load i64* %R15_val, !mcsema_real_eip !55
  store i64 %334, i64* %R15, !mcsema_real_eip !55
  %335 = load i64* %RIP_val, !mcsema_real_eip !55
  store i64 %335, i64* %RIP, !mcsema_real_eip !55
  %336 = load i1* %CF_val, !mcsema_real_eip !55
  store i1 %336, i1* %CF, align 1, !mcsema_real_eip !55
  %337 = load i1* %PF_val, !mcsema_real_eip !55
  store i1 %337, i1* %PF, align 1, !mcsema_real_eip !55
  %338 = load i1* %AF_val, !mcsema_real_eip !55
  store i1 %338, i1* %AF, align 1, !mcsema_real_eip !55
  %339 = load i1* %ZF_val, !mcsema_real_eip !55
  store i1 %339, i1* %ZF, align 1, !mcsema_real_eip !55
  %340 = load i1* %SF_val, !mcsema_real_eip !55
  store i1 %340, i1* %SF, align 1, !mcsema_real_eip !55
  %341 = load i1* %OF_val, !mcsema_real_eip !55
  store i1 %341, i1* %OF, align 1, !mcsema_real_eip !55
  %342 = load i1* %DF_val, !mcsema_real_eip !55
  store i1 %342, i1* %DF, align 1, !mcsema_real_eip !55
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !55
  %343 = load i1* %FPU_B_val, !mcsema_real_eip !55
  store i1 %343, i1* %FPU_B, align 1, !mcsema_real_eip !55
  %344 = load i1* %FPU_C3_val, !mcsema_real_eip !55
  store i1 %344, i1* %FPU_C3, align 1, !mcsema_real_eip !55
  %345 = load i3* %FPU_TOP_val, !mcsema_real_eip !55
  store i3 %345, i3* %FPU_TOP, align 1, !mcsema_real_eip !55
  %346 = load i1* %FPU_C2_val, !mcsema_real_eip !55
  store i1 %346, i1* %FPU_C2, align 1, !mcsema_real_eip !55
  %347 = load i1* %FPU_C1_val, !mcsema_real_eip !55
  store i1 %347, i1* %FPU_C1, align 1, !mcsema_real_eip !55
  %348 = load i1* %FPU_C0_val, !mcsema_real_eip !55
  store i1 %348, i1* %FPU_C0, align 1, !mcsema_real_eip !55
  %349 = load i1* %FPU_ES_val, !mcsema_real_eip !55
  store i1 %349, i1* %FPU_ES, align 1, !mcsema_real_eip !55
  %350 = load i1* %FPU_SF_val, !mcsema_real_eip !55
  store i1 %350, i1* %FPU_SF, align 1, !mcsema_real_eip !55
  %351 = load i1* %FPU_PE_val, !mcsema_real_eip !55
  store i1 %351, i1* %FPU_PE, align 1, !mcsema_real_eip !55
  %352 = load i1* %FPU_UE_val, !mcsema_real_eip !55
  store i1 %352, i1* %FPU_UE, align 1, !mcsema_real_eip !55
  %353 = load i1* %FPU_OE_val, !mcsema_real_eip !55
  store i1 %353, i1* %FPU_OE, align 1, !mcsema_real_eip !55
  %354 = load i1* %FPU_ZE_val, !mcsema_real_eip !55
  store i1 %354, i1* %FPU_ZE, align 1, !mcsema_real_eip !55
  %355 = load i1* %FPU_DE_val, !mcsema_real_eip !55
  store i1 %355, i1* %FPU_DE, align 1, !mcsema_real_eip !55
  %356 = load i1* %FPU_IE_val, !mcsema_real_eip !55
  store i1 %356, i1* %FPU_IE, align 1, !mcsema_real_eip !55
  %357 = load i1* %FPU_X_val, !mcsema_real_eip !55
  store i1 %357, i1* %FPU_X, align 1, !mcsema_real_eip !55
  %358 = load i2* %FPU_RC_val, !mcsema_real_eip !55
  store i2 %358, i2* %FPU_RC, align 1, !mcsema_real_eip !55
  %359 = load i2* %FPU_PC_val, !mcsema_real_eip !55
  store i2 %359, i2* %FPU_PC, align 1, !mcsema_real_eip !55
  %360 = load i1* %FPU_PM_val, !mcsema_real_eip !55
  store i1 %360, i1* %FPU_PM, align 1, !mcsema_real_eip !55
  %361 = load i1* %FPU_UM_val, !mcsema_real_eip !55
  store i1 %361, i1* %FPU_UM, align 1, !mcsema_real_eip !55
  %362 = load i1* %FPU_OM_val, !mcsema_real_eip !55
  store i1 %362, i1* %FPU_OM, align 1, !mcsema_real_eip !55
  %363 = load i1* %FPU_ZM_val, !mcsema_real_eip !55
  store i1 %363, i1* %FPU_ZM, align 1, !mcsema_real_eip !55
  %364 = load i1* %FPU_DM_val, !mcsema_real_eip !55
  store i1 %364, i1* %FPU_DM, align 1, !mcsema_real_eip !55
  %365 = load i1* %FPU_IM_val, !mcsema_real_eip !55
  store i1 %365, i1* %FPU_IM, align 1, !mcsema_real_eip !55
  %366 = load i64* %53, align 4
  store i64 %366, i64* %52, align 4
  %367 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !55
  store i16 %367, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !55
  %368 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !55
  store i64 %368, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !55
  %369 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !55
  store i16 %369, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !55
  %370 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !55
  store i64 %370, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !55
  %371 = load i128* %XMM0_val, !mcsema_real_eip !55
  store i128 %371, i128* %XMM0, align 1, !mcsema_real_eip !55
  %372 = load i128* %XMM1_val, !mcsema_real_eip !55
  store i128 %372, i128* %XMM1, align 1, !mcsema_real_eip !55
  %373 = load i128* %XMM2_val, !mcsema_real_eip !55
  store i128 %373, i128* %XMM2, align 1, !mcsema_real_eip !55
  %374 = load i128* %XMM3_val, !mcsema_real_eip !55
  store i128 %374, i128* %XMM3, align 1, !mcsema_real_eip !55
  %375 = load i128* %XMM4_val, !mcsema_real_eip !55
  store i128 %375, i128* %XMM4, align 1, !mcsema_real_eip !55
  %376 = load i128* %XMM5_val, !mcsema_real_eip !55
  store i128 %376, i128* %XMM5, align 1, !mcsema_real_eip !55
  %377 = load i128* %XMM6_val, !mcsema_real_eip !55
  store i128 %377, i128* %XMM6, align 1, !mcsema_real_eip !55
  %378 = load i128* %XMM7_val, !mcsema_real_eip !55
  store i128 %378, i128* %XMM7, align 1, !mcsema_real_eip !55
  %379 = load i128* %XMM8_val, !mcsema_real_eip !55
  store i128 %379, i128* %XMM8, align 1, !mcsema_real_eip !55
  %380 = load i128* %XMM9_val, !mcsema_real_eip !55
  store i128 %380, i128* %XMM9, align 1, !mcsema_real_eip !55
  %381 = load i128* %XMM10_val, !mcsema_real_eip !55
  store i128 %381, i128* %XMM10, align 1, !mcsema_real_eip !55
  %382 = load i128* %XMM11_val, !mcsema_real_eip !55
  store i128 %382, i128* %XMM11, align 1, !mcsema_real_eip !55
  %383 = load i128* %XMM12_val, !mcsema_real_eip !55
  store i128 %383, i128* %XMM12, align 1, !mcsema_real_eip !55
  %384 = load i128* %XMM13_val, !mcsema_real_eip !55
  store i128 %384, i128* %XMM13, align 1, !mcsema_real_eip !55
  %385 = load i128* %XMM14_val, !mcsema_real_eip !55
  store i128 %385, i128* %XMM14, align 1, !mcsema_real_eip !55
  %386 = load i128* %XMM15_val, !mcsema_real_eip !55
  store i128 %386, i128* %XMM15, align 1, !mcsema_real_eip !55
  %387 = load i64* %STACK_BASE_val, !mcsema_real_eip !55
  store i64 %387, i64* %STACK_BASE, align 1, !mcsema_real_eip !55
  %388 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !55
  store i64 %388, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !55
  ret void, !mcsema_real_eip !55
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_5f(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 95, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 96, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = metadata !{i64 99, [16 x i8] c"\09subq\09$32, %rsp\00"}
!5 = metadata !{i64 103, [21 x i8] c"\09movl\09$10, -16(%rbp)\00"}
!6 = metadata !{i64 110, [21 x i8] c"\09movl\09$20, -12(%rbp)\00"}
!7 = metadata !{i64 117, [20 x i8] c"\09movl\09$30, -8(%rbp)\00"}
!8 = metadata !{i64 124, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!9 = metadata !{i64 128, [19 x i8] c"\09movq\09%rax, (%rsp)\00"}
!10 = metadata !{i64 132, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!11 = metadata !{i64 135, [20 x i8] c"\09movl\09%eax, 8(%rsp)\00"}
!12 = metadata !{i64 139, [15 x i8] c"\09movl\09$6, %r9d\00"}
!13 = metadata !{i64 145, [15 x i8] c"\09movl\09$5, %r8d\00"}
!14 = metadata !{i64 151, [15 x i8] c"\09movl\09$4, %ecx\00"}
!15 = metadata !{i64 156, [15 x i8] c"\09movl\09$3, %edx\00"}
!16 = metadata !{i64 161, [15 x i8] c"\09movl\09$2, %esi\00"}
!17 = metadata !{i64 166, [15 x i8] c"\09movl\09$1, %edi\00"}
!18 = metadata !{i64 171, [9 x i8] c"\09callq\090\00"}
!19 = metadata !{i64 176, [15 x i8] c"\09movl\09$0, %eax\00"}
!20 = metadata !{i64 181, [7 x i8] c"\09leave\00"}
!21 = metadata !{i64 182, [6 x i8] c"\09retq\00"}
!22 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!23 = metadata !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!24 = metadata !{i64 4, [22 x i8] c"\09movl\09%edi, -36(%rbp)\00"}
!25 = metadata !{i64 7, [22 x i8] c"\09movl\09%esi, -40(%rbp)\00"}
!26 = metadata !{i64 10, [22 x i8] c"\09movl\09%edx, -44(%rbp)\00"}
!27 = metadata !{i64 13, [22 x i8] c"\09movl\09%ecx, -48(%rbp)\00"}
!28 = metadata !{i64 16, [22 x i8] c"\09movl\09%r8d, -52(%rbp)\00"}
!29 = metadata !{i64 20, [22 x i8] c"\09movl\09%r9d, -56(%rbp)\00"}
!30 = metadata !{i64 24, [21 x i8] c"\09movl\0916(%rbp), %edx\00"}
!31 = metadata !{i64 27, [22 x i8] c"\09movl\09-36(%rbp), %eax\00"}
!32 = metadata !{i64 30, [17 x i8] c"\09addl\09%eax, %edx\00"}
!33 = metadata !{i64 32, [22 x i8] c"\09movl\09-40(%rbp), %eax\00"}
!34 = metadata !{i64 35, [17 x i8] c"\09addl\09%eax, %edx\00"}
!35 = metadata !{i64 37, [22 x i8] c"\09movl\09-44(%rbp), %eax\00"}
!36 = metadata !{i64 40, [17 x i8] c"\09addl\09%edx, %eax\00"}
!37 = metadata !{i64 42, [22 x i8] c"\09movl\09%eax, -32(%rbp)\00"}
!38 = metadata !{i64 45, [21 x i8] c"\09movl\0920(%rbp), %edx\00"}
!39 = metadata !{i64 48, [22 x i8] c"\09movl\09-48(%rbp), %eax\00"}
!40 = metadata !{i64 51, [17 x i8] c"\09addl\09%eax, %edx\00"}
!41 = metadata !{i64 53, [22 x i8] c"\09movl\09-52(%rbp), %eax\00"}
!42 = metadata !{i64 56, [17 x i8] c"\09addl\09%eax, %edx\00"}
!43 = metadata !{i64 58, [22 x i8] c"\09movl\09-56(%rbp), %eax\00"}
!44 = metadata !{i64 61, [17 x i8] c"\09addl\09%edx, %eax\00"}
!45 = metadata !{i64 63, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
!46 = metadata !{i64 66, [21 x i8] c"\09movl\0924(%rbp), %eax\00"}
!47 = metadata !{i64 69, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!48 = metadata !{i64 72, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!49 = metadata !{i64 76, [22 x i8] c"\09movq\09%rax, -16(%rbp)\00"}
!50 = metadata !{i64 80, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!51 = metadata !{i64 83, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!52 = metadata !{i64 86, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!53 = metadata !{i64 90, [21 x i8] c"\09movl\09-8(%rbp), %edx\00"}
!54 = metadata !{i64 93, [11 x i8] c"\09popq\09%rbp\00"}
!55 = metadata !{i64 94, [6 x i8] c"\09retq\00"}
