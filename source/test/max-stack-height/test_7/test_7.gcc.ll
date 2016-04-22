; ModuleID = 'test_7.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
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
  %81 = add i64 %78, -24
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
  %91 = icmp ult i64 %79, 16, !mcsema_real_eip !4
  store i1 %91, i1* %CF_val, !mcsema_real_eip !4
  %92 = and i64 %82, %79, !mcsema_real_eip !4
  %93 = icmp slt i64 %92, 0
  store i1 %93, i1* %OF_val, !mcsema_real_eip !4
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !4
  %94 = load i64* %RBP_val, !mcsema_real_eip !5
  %95 = add i64 %94, -16, !mcsema_real_eip !5
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !5
  %97 = bitcast i64* %96 to i32*
  store i32 100, i32* %97, !mcsema_real_eip !5
  %98 = load i64* %RBP_val, !mcsema_real_eip !6
  %99 = add i64 %98, -12, !mcsema_real_eip !6
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !6
  %101 = bitcast i64* %100 to i32*
  store i32 200, i32* %101, !mcsema_real_eip !6
  %102 = load i64* %RBP_val, !mcsema_real_eip !7
  %103 = add i64 %102, -16, !mcsema_real_eip !7
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !7
  %105 = load i64* %104, !mcsema_real_eip !7
  store i64 %105, i64* %RAX_val, !mcsema_real_eip !7
  store i64 %105, i64* %RDI_val, !mcsema_real_eip !8
  %106 = load i64* %RSP_val, !mcsema_real_eip !9
  %107 = add i64 %106, -8
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !9
  store i64 -4981261766360305936, i64* %108, !mcsema_real_eip !9
  store i64 %107, i64* %RSP_val, !mcsema_real_eip !9
  %109 = load i64* %RAX_val, !mcsema_real_eip !9
  store i64 %109, i64* %RAX, !mcsema_real_eip !9
  %110 = load i64* %RBX_val, !mcsema_real_eip !9
  store i64 %110, i64* %RBX, !mcsema_real_eip !9
  %111 = load i64* %RCX_val, !mcsema_real_eip !9
  store i64 %111, i64* %RCX, !mcsema_real_eip !9
  %112 = load i64* %RDX_val, !mcsema_real_eip !9
  store i64 %112, i64* %RDX, !mcsema_real_eip !9
  %113 = load i64* %RSI_val, !mcsema_real_eip !9
  store i64 %113, i64* %RSI, !mcsema_real_eip !9
  %114 = load i64* %RDI_val, !mcsema_real_eip !9
  store i64 %114, i64* %RDI, !mcsema_real_eip !9
  %115 = load i64* %RSP_val, !mcsema_real_eip !9
  store i64 %115, i64* %RSP, !mcsema_real_eip !9
  %116 = load i64* %RBP_val, !mcsema_real_eip !9
  store i64 %116, i64* %RBP, !mcsema_real_eip !9
  %117 = load i64* %R8_val, !mcsema_real_eip !9
  store i64 %117, i64* %R8, !mcsema_real_eip !9
  %118 = load i64* %R9_val, !mcsema_real_eip !9
  store i64 %118, i64* %R9, !mcsema_real_eip !9
  %119 = load i64* %R10_val, !mcsema_real_eip !9
  store i64 %119, i64* %R10, !mcsema_real_eip !9
  %120 = load i64* %R11_val, !mcsema_real_eip !9
  store i64 %120, i64* %R11, !mcsema_real_eip !9
  %121 = load i64* %R12_val, !mcsema_real_eip !9
  store i64 %121, i64* %R12, !mcsema_real_eip !9
  %122 = load i64* %R13_val, !mcsema_real_eip !9
  store i64 %122, i64* %R13, !mcsema_real_eip !9
  %123 = load i64* %R14_val, !mcsema_real_eip !9
  store i64 %123, i64* %R14, !mcsema_real_eip !9
  %124 = load i64* %R15_val, !mcsema_real_eip !9
  store i64 %124, i64* %R15, !mcsema_real_eip !9
  %125 = load i64* %RIP_val, !mcsema_real_eip !9
  store i64 %125, i64* %RIP, !mcsema_real_eip !9
  %126 = load i1* %CF_val, !mcsema_real_eip !9
  store i1 %126, i1* %CF, align 1, !mcsema_real_eip !9
  %127 = load i1* %PF_val, !mcsema_real_eip !9
  store i1 %127, i1* %PF, align 1, !mcsema_real_eip !9
  %128 = load i1* %AF_val, !mcsema_real_eip !9
  store i1 %128, i1* %AF, align 1, !mcsema_real_eip !9
  %129 = load i1* %ZF_val, !mcsema_real_eip !9
  store i1 %129, i1* %ZF, align 1, !mcsema_real_eip !9
  %130 = load i1* %SF_val, !mcsema_real_eip !9
  store i1 %130, i1* %SF, align 1, !mcsema_real_eip !9
  %131 = load i1* %OF_val, !mcsema_real_eip !9
  store i1 %131, i1* %OF, align 1, !mcsema_real_eip !9
  %132 = load i1* %DF_val, !mcsema_real_eip !9
  store i1 %132, i1* %DF, align 1, !mcsema_real_eip !9
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !9
  %133 = load i1* %FPU_B_val, !mcsema_real_eip !9
  store i1 %133, i1* %FPU_B, align 1, !mcsema_real_eip !9
  %134 = load i1* %FPU_C3_val, !mcsema_real_eip !9
  store i1 %134, i1* %FPU_C3, align 1, !mcsema_real_eip !9
  %135 = load i3* %FPU_TOP_val, !mcsema_real_eip !9
  store i3 %135, i3* %FPU_TOP, align 1, !mcsema_real_eip !9
  %136 = load i1* %FPU_C2_val, !mcsema_real_eip !9
  store i1 %136, i1* %FPU_C2, align 1, !mcsema_real_eip !9
  %137 = load i1* %FPU_C1_val, !mcsema_real_eip !9
  store i1 %137, i1* %FPU_C1, align 1, !mcsema_real_eip !9
  %138 = load i1* %FPU_C0_val, !mcsema_real_eip !9
  store i1 %138, i1* %FPU_C0, align 1, !mcsema_real_eip !9
  %139 = load i1* %FPU_ES_val, !mcsema_real_eip !9
  store i1 %139, i1* %FPU_ES, align 1, !mcsema_real_eip !9
  %140 = load i1* %FPU_SF_val, !mcsema_real_eip !9
  store i1 %140, i1* %FPU_SF, align 1, !mcsema_real_eip !9
  %141 = load i1* %FPU_PE_val, !mcsema_real_eip !9
  store i1 %141, i1* %FPU_PE, align 1, !mcsema_real_eip !9
  %142 = load i1* %FPU_UE_val, !mcsema_real_eip !9
  store i1 %142, i1* %FPU_UE, align 1, !mcsema_real_eip !9
  %143 = load i1* %FPU_OE_val, !mcsema_real_eip !9
  store i1 %143, i1* %FPU_OE, align 1, !mcsema_real_eip !9
  %144 = load i1* %FPU_ZE_val, !mcsema_real_eip !9
  store i1 %144, i1* %FPU_ZE, align 1, !mcsema_real_eip !9
  %145 = load i1* %FPU_DE_val, !mcsema_real_eip !9
  store i1 %145, i1* %FPU_DE, align 1, !mcsema_real_eip !9
  %146 = load i1* %FPU_IE_val, !mcsema_real_eip !9
  store i1 %146, i1* %FPU_IE, align 1, !mcsema_real_eip !9
  %147 = load i1* %FPU_X_val, !mcsema_real_eip !9
  store i1 %147, i1* %FPU_X, align 1, !mcsema_real_eip !9
  %148 = load i2* %FPU_RC_val, !mcsema_real_eip !9
  store i2 %148, i2* %FPU_RC, align 1, !mcsema_real_eip !9
  %149 = load i2* %FPU_PC_val, !mcsema_real_eip !9
  store i2 %149, i2* %FPU_PC, align 1, !mcsema_real_eip !9
  %150 = load i1* %FPU_PM_val, !mcsema_real_eip !9
  store i1 %150, i1* %FPU_PM, align 1, !mcsema_real_eip !9
  %151 = load i1* %FPU_UM_val, !mcsema_real_eip !9
  store i1 %151, i1* %FPU_UM, align 1, !mcsema_real_eip !9
  %152 = load i1* %FPU_OM_val, !mcsema_real_eip !9
  store i1 %152, i1* %FPU_OM, align 1, !mcsema_real_eip !9
  %153 = load i1* %FPU_ZM_val, !mcsema_real_eip !9
  store i1 %153, i1* %FPU_ZM, align 1, !mcsema_real_eip !9
  %154 = load i1* %FPU_DM_val, !mcsema_real_eip !9
  store i1 %154, i1* %FPU_DM, align 1, !mcsema_real_eip !9
  %155 = load i1* %FPU_IM_val, !mcsema_real_eip !9
  store i1 %155, i1* %FPU_IM, align 1, !mcsema_real_eip !9
  %156 = load i64* %53, align 4
  store i64 %156, i64* %52, align 4
  %157 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !9
  store i16 %157, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !9
  %158 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !9
  store i64 %158, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !9
  %159 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !9
  store i16 %159, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !9
  %160 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !9
  store i64 %160, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !9
  %161 = load i128* %XMM0_val, !mcsema_real_eip !9
  store i128 %161, i128* %XMM0, align 1, !mcsema_real_eip !9
  %162 = load i128* %XMM1_val, !mcsema_real_eip !9
  store i128 %162, i128* %XMM1, align 1, !mcsema_real_eip !9
  %163 = load i128* %XMM2_val, !mcsema_real_eip !9
  store i128 %163, i128* %XMM2, align 1, !mcsema_real_eip !9
  %164 = load i128* %XMM3_val, !mcsema_real_eip !9
  store i128 %164, i128* %XMM3, align 1, !mcsema_real_eip !9
  %165 = load i128* %XMM4_val, !mcsema_real_eip !9
  store i128 %165, i128* %XMM4, align 1, !mcsema_real_eip !9
  %166 = load i128* %XMM5_val, !mcsema_real_eip !9
  store i128 %166, i128* %XMM5, align 1, !mcsema_real_eip !9
  %167 = load i128* %XMM6_val, !mcsema_real_eip !9
  store i128 %167, i128* %XMM6, align 1, !mcsema_real_eip !9
  %168 = load i128* %XMM7_val, !mcsema_real_eip !9
  store i128 %168, i128* %XMM7, align 1, !mcsema_real_eip !9
  %169 = load i128* %XMM8_val, !mcsema_real_eip !9
  store i128 %169, i128* %XMM8, align 1, !mcsema_real_eip !9
  %170 = load i128* %XMM9_val, !mcsema_real_eip !9
  store i128 %170, i128* %XMM9, align 1, !mcsema_real_eip !9
  %171 = load i128* %XMM10_val, !mcsema_real_eip !9
  store i128 %171, i128* %XMM10, align 1, !mcsema_real_eip !9
  %172 = load i128* %XMM11_val, !mcsema_real_eip !9
  store i128 %172, i128* %XMM11, align 1, !mcsema_real_eip !9
  %173 = load i128* %XMM12_val, !mcsema_real_eip !9
  store i128 %173, i128* %XMM12, align 1, !mcsema_real_eip !9
  %174 = load i128* %XMM13_val, !mcsema_real_eip !9
  store i128 %174, i128* %XMM13, align 1, !mcsema_real_eip !9
  %175 = load i128* %XMM14_val, !mcsema_real_eip !9
  store i128 %175, i128* %XMM14, align 1, !mcsema_real_eip !9
  %176 = load i128* %XMM15_val, !mcsema_real_eip !9
  store i128 %176, i128* %XMM15, align 1, !mcsema_real_eip !9
  %177 = load i64* %STACK_BASE_val, !mcsema_real_eip !9
  store i64 %177, i64* %STACK_BASE, align 1, !mcsema_real_eip !9
  %178 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !9
  store i64 %178, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !9
  tail call x86_64_sysvcc void @sub_29(%struct.regs* %0), !mcsema_real_eip !9
  %179 = load i64* %RAX, !mcsema_real_eip !9
  store i64 %179, i64* %RAX_val, !mcsema_real_eip !9
  %180 = load i64* %RBX, !mcsema_real_eip !9
  store i64 %180, i64* %RBX_val, !mcsema_real_eip !9
  %181 = load i64* %RCX, !mcsema_real_eip !9
  store i64 %181, i64* %RCX_val, !mcsema_real_eip !9
  %182 = load i64* %RDX, !mcsema_real_eip !9
  store i64 %182, i64* %RDX_val, !mcsema_real_eip !9
  %183 = load i64* %RSI, !mcsema_real_eip !9
  store i64 %183, i64* %RSI_val, !mcsema_real_eip !9
  %184 = load i64* %RDI, !mcsema_real_eip !9
  store i64 %184, i64* %RDI_val, !mcsema_real_eip !9
  %185 = load i64* %RSP, !mcsema_real_eip !9
  store i64 %185, i64* %RSP_val, !mcsema_real_eip !9
  %186 = load i64* %RBP, !mcsema_real_eip !9
  store i64 %186, i64* %RBP_val, !mcsema_real_eip !9
  %187 = load i64* %R8, !mcsema_real_eip !9
  store i64 %187, i64* %R8_val, !mcsema_real_eip !9
  %188 = load i64* %R9, !mcsema_real_eip !9
  store i64 %188, i64* %R9_val, !mcsema_real_eip !9
  %189 = load i64* %R10, !mcsema_real_eip !9
  store i64 %189, i64* %R10_val, !mcsema_real_eip !9
  %190 = load i64* %R11, !mcsema_real_eip !9
  store i64 %190, i64* %R11_val, !mcsema_real_eip !9
  %191 = load i64* %R12, !mcsema_real_eip !9
  store i64 %191, i64* %R12_val, !mcsema_real_eip !9
  %192 = load i64* %R13, !mcsema_real_eip !9
  store i64 %192, i64* %R13_val, !mcsema_real_eip !9
  %193 = load i64* %R14, !mcsema_real_eip !9
  store i64 %193, i64* %R14_val, !mcsema_real_eip !9
  %194 = load i64* %R15, !mcsema_real_eip !9
  store i64 %194, i64* %R15_val, !mcsema_real_eip !9
  %195 = load i64* %RIP, !mcsema_real_eip !9
  store i64 %195, i64* %RIP_val, !mcsema_real_eip !9
  %196 = load i1* %CF, align 1, !mcsema_real_eip !9
  store i1 %196, i1* %CF_val, !mcsema_real_eip !9
  %197 = load i1* %PF, align 1, !mcsema_real_eip !9
  store i1 %197, i1* %PF_val, !mcsema_real_eip !9
  %198 = load i1* %AF, align 1, !mcsema_real_eip !9
  store i1 %198, i1* %AF_val, !mcsema_real_eip !9
  %199 = load i1* %ZF, align 1, !mcsema_real_eip !9
  store i1 %199, i1* %ZF_val, !mcsema_real_eip !9
  %200 = load i1* %SF, align 1, !mcsema_real_eip !9
  store i1 %200, i1* %SF_val, !mcsema_real_eip !9
  %201 = load i1* %OF, align 1, !mcsema_real_eip !9
  store i1 %201, i1* %OF_val, !mcsema_real_eip !9
  %202 = load i1* %DF, align 1, !mcsema_real_eip !9
  store i1 %202, i1* %DF_val, !mcsema_real_eip !9
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !9
  %203 = load i1* %FPU_B, align 1, !mcsema_real_eip !9
  store i1 %203, i1* %FPU_B_val, !mcsema_real_eip !9
  %204 = load i1* %FPU_C3, align 1, !mcsema_real_eip !9
  store i1 %204, i1* %FPU_C3_val, !mcsema_real_eip !9
  %205 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !9
  store i3 %205, i3* %FPU_TOP_val, !mcsema_real_eip !9
  %206 = load i1* %FPU_C2, align 1, !mcsema_real_eip !9
  store i1 %206, i1* %FPU_C2_val, !mcsema_real_eip !9
  %207 = load i1* %FPU_C1, align 1, !mcsema_real_eip !9
  store i1 %207, i1* %FPU_C1_val, !mcsema_real_eip !9
  %208 = load i1* %FPU_C0, align 1, !mcsema_real_eip !9
  store i1 %208, i1* %FPU_C0_val, !mcsema_real_eip !9
  %209 = load i1* %FPU_ES, align 1, !mcsema_real_eip !9
  store i1 %209, i1* %FPU_ES_val, !mcsema_real_eip !9
  %210 = load i1* %FPU_SF, align 1, !mcsema_real_eip !9
  store i1 %210, i1* %FPU_SF_val, !mcsema_real_eip !9
  %211 = load i1* %FPU_PE, align 1, !mcsema_real_eip !9
  store i1 %211, i1* %FPU_PE_val, !mcsema_real_eip !9
  %212 = load i1* %FPU_UE, align 1, !mcsema_real_eip !9
  store i1 %212, i1* %FPU_UE_val, !mcsema_real_eip !9
  %213 = load i1* %FPU_OE, align 1, !mcsema_real_eip !9
  store i1 %213, i1* %FPU_OE_val, !mcsema_real_eip !9
  %214 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !9
  store i1 %214, i1* %FPU_ZE_val, !mcsema_real_eip !9
  %215 = load i1* %FPU_DE, align 1, !mcsema_real_eip !9
  store i1 %215, i1* %FPU_DE_val, !mcsema_real_eip !9
  %216 = load i1* %FPU_IE, align 1, !mcsema_real_eip !9
  store i1 %216, i1* %FPU_IE_val, !mcsema_real_eip !9
  %217 = load i1* %FPU_X, align 1, !mcsema_real_eip !9
  store i1 %217, i1* %FPU_X_val, !mcsema_real_eip !9
  %218 = load i2* %FPU_RC, align 1, !mcsema_real_eip !9
  store i2 %218, i2* %FPU_RC_val, !mcsema_real_eip !9
  %219 = load i2* %FPU_PC, align 1, !mcsema_real_eip !9
  store i2 %219, i2* %FPU_PC_val, !mcsema_real_eip !9
  %220 = load i1* %FPU_PM, align 1, !mcsema_real_eip !9
  store i1 %220, i1* %FPU_PM_val, !mcsema_real_eip !9
  %221 = load i1* %FPU_UM, align 1, !mcsema_real_eip !9
  store i1 %221, i1* %FPU_UM_val, !mcsema_real_eip !9
  %222 = load i1* %FPU_OM, align 1, !mcsema_real_eip !9
  store i1 %222, i1* %FPU_OM_val, !mcsema_real_eip !9
  %223 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !9
  store i1 %223, i1* %FPU_ZM_val, !mcsema_real_eip !9
  %224 = load i1* %FPU_DM, align 1, !mcsema_real_eip !9
  store i1 %224, i1* %FPU_DM_val, !mcsema_real_eip !9
  %225 = load i1* %FPU_IM, align 1, !mcsema_real_eip !9
  store i1 %225, i1* %FPU_IM_val, !mcsema_real_eip !9
  %226 = load i64* %52, align 4
  store i64 %226, i64* %53, align 4
  %227 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !9
  store i16 %227, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !9
  %228 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !9
  store i64 %228, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !9
  %229 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !9
  store i16 %229, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !9
  %230 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !9
  store i64 %230, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !9
  %231 = load i128* %XMM0, align 1, !mcsema_real_eip !9
  store i128 %231, i128* %XMM0_val, !mcsema_real_eip !9
  %232 = load i128* %XMM1, align 1, !mcsema_real_eip !9
  store i128 %232, i128* %XMM1_val, !mcsema_real_eip !9
  %233 = load i128* %XMM2, align 1, !mcsema_real_eip !9
  store i128 %233, i128* %XMM2_val, !mcsema_real_eip !9
  %234 = load i128* %XMM3, align 1, !mcsema_real_eip !9
  store i128 %234, i128* %XMM3_val, !mcsema_real_eip !9
  %235 = load i128* %XMM4, align 1, !mcsema_real_eip !9
  store i128 %235, i128* %XMM4_val, !mcsema_real_eip !9
  %236 = load i128* %XMM5, align 1, !mcsema_real_eip !9
  store i128 %236, i128* %XMM5_val, !mcsema_real_eip !9
  %237 = load i128* %XMM6, align 1, !mcsema_real_eip !9
  store i128 %237, i128* %XMM6_val, !mcsema_real_eip !9
  %238 = load i128* %XMM7, align 1, !mcsema_real_eip !9
  store i128 %238, i128* %XMM7_val, !mcsema_real_eip !9
  %239 = load i128* %XMM8, align 1, !mcsema_real_eip !9
  store i128 %239, i128* %XMM8_val, !mcsema_real_eip !9
  %240 = load i128* %XMM9, align 1, !mcsema_real_eip !9
  store i128 %240, i128* %XMM9_val, !mcsema_real_eip !9
  %241 = load i128* %XMM10, align 1, !mcsema_real_eip !9
  store i128 %241, i128* %XMM10_val, !mcsema_real_eip !9
  %242 = load i128* %XMM11, align 1, !mcsema_real_eip !9
  store i128 %242, i128* %XMM11_val, !mcsema_real_eip !9
  %243 = load i128* %XMM12, align 1, !mcsema_real_eip !9
  store i128 %243, i128* %XMM12_val, !mcsema_real_eip !9
  %244 = load i128* %XMM13, align 1, !mcsema_real_eip !9
  store i128 %244, i128* %XMM13_val, !mcsema_real_eip !9
  %245 = load i128* %XMM14, align 1, !mcsema_real_eip !9
  store i128 %245, i128* %XMM14_val, !mcsema_real_eip !9
  %246 = load i128* %XMM15, align 1, !mcsema_real_eip !9
  store i128 %246, i128* %XMM15_val, !mcsema_real_eip !9
  %247 = load i64* %STACK_BASE, !mcsema_real_eip !9
  store i64 %247, i64* %STACK_BASE_val, !mcsema_real_eip !9
  %248 = load i64* %STACK_LIMIT, !mcsema_real_eip !9
  store i64 %248, i64* %STACK_LIMIT_val, !mcsema_real_eip !9
  store i64 0, i64* %RAX_val, !mcsema_real_eip !10
  %249 = load i64* %RBP_val, !mcsema_real_eip !11
  store i64 %249, i64* %RSP_val, !mcsema_real_eip !11
  %250 = inttoptr i64 %249 to i64*, !mcsema_real_eip !11
  %251 = load i64* %250, !mcsema_real_eip !11
  store i64 %251, i64* %RBP_val, !mcsema_real_eip !11
  %252 = add i64 %249, 16, !mcsema_real_eip !12
  store i64 %252, i64* %RSP_val, !mcsema_real_eip !12
  %253 = load i64* %RAX_val, !mcsema_real_eip !12
  store i64 %253, i64* %RAX, !mcsema_real_eip !12
  %254 = load i64* %RBX_val, !mcsema_real_eip !12
  store i64 %254, i64* %RBX, !mcsema_real_eip !12
  %255 = load i64* %RCX_val, !mcsema_real_eip !12
  store i64 %255, i64* %RCX, !mcsema_real_eip !12
  %256 = load i64* %RDX_val, !mcsema_real_eip !12
  store i64 %256, i64* %RDX, !mcsema_real_eip !12
  %257 = load i64* %RSI_val, !mcsema_real_eip !12
  store i64 %257, i64* %RSI, !mcsema_real_eip !12
  %258 = load i64* %RDI_val, !mcsema_real_eip !12
  store i64 %258, i64* %RDI, !mcsema_real_eip !12
  %259 = load i64* %RSP_val, !mcsema_real_eip !12
  store i64 %259, i64* %RSP, !mcsema_real_eip !12
  %260 = load i64* %RBP_val, !mcsema_real_eip !12
  store i64 %260, i64* %RBP, !mcsema_real_eip !12
  %261 = load i64* %R8_val, !mcsema_real_eip !12
  store i64 %261, i64* %R8, !mcsema_real_eip !12
  %262 = load i64* %R9_val, !mcsema_real_eip !12
  store i64 %262, i64* %R9, !mcsema_real_eip !12
  %263 = load i64* %R10_val, !mcsema_real_eip !12
  store i64 %263, i64* %R10, !mcsema_real_eip !12
  %264 = load i64* %R11_val, !mcsema_real_eip !12
  store i64 %264, i64* %R11, !mcsema_real_eip !12
  %265 = load i64* %R12_val, !mcsema_real_eip !12
  store i64 %265, i64* %R12, !mcsema_real_eip !12
  %266 = load i64* %R13_val, !mcsema_real_eip !12
  store i64 %266, i64* %R13, !mcsema_real_eip !12
  %267 = load i64* %R14_val, !mcsema_real_eip !12
  store i64 %267, i64* %R14, !mcsema_real_eip !12
  %268 = load i64* %R15_val, !mcsema_real_eip !12
  store i64 %268, i64* %R15, !mcsema_real_eip !12
  %269 = load i64* %RIP_val, !mcsema_real_eip !12
  store i64 %269, i64* %RIP, !mcsema_real_eip !12
  %270 = load i1* %CF_val, !mcsema_real_eip !12
  store i1 %270, i1* %CF, align 1, !mcsema_real_eip !12
  %271 = load i1* %PF_val, !mcsema_real_eip !12
  store i1 %271, i1* %PF, align 1, !mcsema_real_eip !12
  %272 = load i1* %AF_val, !mcsema_real_eip !12
  store i1 %272, i1* %AF, align 1, !mcsema_real_eip !12
  %273 = load i1* %ZF_val, !mcsema_real_eip !12
  store i1 %273, i1* %ZF, align 1, !mcsema_real_eip !12
  %274 = load i1* %SF_val, !mcsema_real_eip !12
  store i1 %274, i1* %SF, align 1, !mcsema_real_eip !12
  %275 = load i1* %OF_val, !mcsema_real_eip !12
  store i1 %275, i1* %OF, align 1, !mcsema_real_eip !12
  %276 = load i1* %DF_val, !mcsema_real_eip !12
  store i1 %276, i1* %DF, align 1, !mcsema_real_eip !12
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !12
  %277 = load i1* %FPU_B_val, !mcsema_real_eip !12
  store i1 %277, i1* %FPU_B, align 1, !mcsema_real_eip !12
  %278 = load i1* %FPU_C3_val, !mcsema_real_eip !12
  store i1 %278, i1* %FPU_C3, align 1, !mcsema_real_eip !12
  %279 = load i3* %FPU_TOP_val, !mcsema_real_eip !12
  store i3 %279, i3* %FPU_TOP, align 1, !mcsema_real_eip !12
  %280 = load i1* %FPU_C2_val, !mcsema_real_eip !12
  store i1 %280, i1* %FPU_C2, align 1, !mcsema_real_eip !12
  %281 = load i1* %FPU_C1_val, !mcsema_real_eip !12
  store i1 %281, i1* %FPU_C1, align 1, !mcsema_real_eip !12
  %282 = load i1* %FPU_C0_val, !mcsema_real_eip !12
  store i1 %282, i1* %FPU_C0, align 1, !mcsema_real_eip !12
  %283 = load i1* %FPU_ES_val, !mcsema_real_eip !12
  store i1 %283, i1* %FPU_ES, align 1, !mcsema_real_eip !12
  %284 = load i1* %FPU_SF_val, !mcsema_real_eip !12
  store i1 %284, i1* %FPU_SF, align 1, !mcsema_real_eip !12
  %285 = load i1* %FPU_PE_val, !mcsema_real_eip !12
  store i1 %285, i1* %FPU_PE, align 1, !mcsema_real_eip !12
  %286 = load i1* %FPU_UE_val, !mcsema_real_eip !12
  store i1 %286, i1* %FPU_UE, align 1, !mcsema_real_eip !12
  %287 = load i1* %FPU_OE_val, !mcsema_real_eip !12
  store i1 %287, i1* %FPU_OE, align 1, !mcsema_real_eip !12
  %288 = load i1* %FPU_ZE_val, !mcsema_real_eip !12
  store i1 %288, i1* %FPU_ZE, align 1, !mcsema_real_eip !12
  %289 = load i1* %FPU_DE_val, !mcsema_real_eip !12
  store i1 %289, i1* %FPU_DE, align 1, !mcsema_real_eip !12
  %290 = load i1* %FPU_IE_val, !mcsema_real_eip !12
  store i1 %290, i1* %FPU_IE, align 1, !mcsema_real_eip !12
  %291 = load i1* %FPU_X_val, !mcsema_real_eip !12
  store i1 %291, i1* %FPU_X, align 1, !mcsema_real_eip !12
  %292 = load i2* %FPU_RC_val, !mcsema_real_eip !12
  store i2 %292, i2* %FPU_RC, align 1, !mcsema_real_eip !12
  %293 = load i2* %FPU_PC_val, !mcsema_real_eip !12
  store i2 %293, i2* %FPU_PC, align 1, !mcsema_real_eip !12
  %294 = load i1* %FPU_PM_val, !mcsema_real_eip !12
  store i1 %294, i1* %FPU_PM, align 1, !mcsema_real_eip !12
  %295 = load i1* %FPU_UM_val, !mcsema_real_eip !12
  store i1 %295, i1* %FPU_UM, align 1, !mcsema_real_eip !12
  %296 = load i1* %FPU_OM_val, !mcsema_real_eip !12
  store i1 %296, i1* %FPU_OM, align 1, !mcsema_real_eip !12
  %297 = load i1* %FPU_ZM_val, !mcsema_real_eip !12
  store i1 %297, i1* %FPU_ZM, align 1, !mcsema_real_eip !12
  %298 = load i1* %FPU_DM_val, !mcsema_real_eip !12
  store i1 %298, i1* %FPU_DM, align 1, !mcsema_real_eip !12
  %299 = load i1* %FPU_IM_val, !mcsema_real_eip !12
  store i1 %299, i1* %FPU_IM, align 1, !mcsema_real_eip !12
  %300 = load i64* %53, align 4
  store i64 %300, i64* %52, align 4
  %301 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !12
  store i16 %301, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !12
  %302 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !12
  store i64 %302, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !12
  %303 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !12
  store i16 %303, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !12
  %304 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !12
  store i64 %304, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !12
  %305 = load i128* %XMM0_val, !mcsema_real_eip !12
  store i128 %305, i128* %XMM0, align 1, !mcsema_real_eip !12
  %306 = load i128* %XMM1_val, !mcsema_real_eip !12
  store i128 %306, i128* %XMM1, align 1, !mcsema_real_eip !12
  %307 = load i128* %XMM2_val, !mcsema_real_eip !12
  store i128 %307, i128* %XMM2, align 1, !mcsema_real_eip !12
  %308 = load i128* %XMM3_val, !mcsema_real_eip !12
  store i128 %308, i128* %XMM3, align 1, !mcsema_real_eip !12
  %309 = load i128* %XMM4_val, !mcsema_real_eip !12
  store i128 %309, i128* %XMM4, align 1, !mcsema_real_eip !12
  %310 = load i128* %XMM5_val, !mcsema_real_eip !12
  store i128 %310, i128* %XMM5, align 1, !mcsema_real_eip !12
  %311 = load i128* %XMM6_val, !mcsema_real_eip !12
  store i128 %311, i128* %XMM6, align 1, !mcsema_real_eip !12
  %312 = load i128* %XMM7_val, !mcsema_real_eip !12
  store i128 %312, i128* %XMM7, align 1, !mcsema_real_eip !12
  %313 = load i128* %XMM8_val, !mcsema_real_eip !12
  store i128 %313, i128* %XMM8, align 1, !mcsema_real_eip !12
  %314 = load i128* %XMM9_val, !mcsema_real_eip !12
  store i128 %314, i128* %XMM9, align 1, !mcsema_real_eip !12
  %315 = load i128* %XMM10_val, !mcsema_real_eip !12
  store i128 %315, i128* %XMM10, align 1, !mcsema_real_eip !12
  %316 = load i128* %XMM11_val, !mcsema_real_eip !12
  store i128 %316, i128* %XMM11, align 1, !mcsema_real_eip !12
  %317 = load i128* %XMM12_val, !mcsema_real_eip !12
  store i128 %317, i128* %XMM12, align 1, !mcsema_real_eip !12
  %318 = load i128* %XMM13_val, !mcsema_real_eip !12
  store i128 %318, i128* %XMM13, align 1, !mcsema_real_eip !12
  %319 = load i128* %XMM14_val, !mcsema_real_eip !12
  store i128 %319, i128* %XMM14, align 1, !mcsema_real_eip !12
  %320 = load i128* %XMM15_val, !mcsema_real_eip !12
  store i128 %320, i128* %XMM15, align 1, !mcsema_real_eip !12
  %321 = load i64* %STACK_BASE_val, !mcsema_real_eip !12
  store i64 %321, i64* %STACK_BASE, align 1, !mcsema_real_eip !12
  %322 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !12
  store i64 %322, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !12
  ret void, !mcsema_real_eip !12
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_29(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !13
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !13
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !13
  %XMM15_val = alloca i128, !mcsema_real_eip !13
  %XMM14_val = alloca i128, !mcsema_real_eip !13
  %XMM13_val = alloca i128, !mcsema_real_eip !13
  %XMM12_val = alloca i128, !mcsema_real_eip !13
  %XMM11_val = alloca i128, !mcsema_real_eip !13
  %XMM10_val = alloca i128, !mcsema_real_eip !13
  %XMM9_val = alloca i128, !mcsema_real_eip !13
  %XMM8_val = alloca i128, !mcsema_real_eip !13
  %XMM7_val = alloca i128, !mcsema_real_eip !13
  %XMM6_val = alloca i128, !mcsema_real_eip !13
  %XMM5_val = alloca i128, !mcsema_real_eip !13
  %XMM4_val = alloca i128, !mcsema_real_eip !13
  %XMM3_val = alloca i128, !mcsema_real_eip !13
  %XMM2_val = alloca i128, !mcsema_real_eip !13
  %XMM1_val = alloca i128, !mcsema_real_eip !13
  %XMM0_val = alloca i128, !mcsema_real_eip !13
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !13
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !13
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !13
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !13
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !13
  %FPU_IM_val = alloca i1, !mcsema_real_eip !13
  %FPU_DM_val = alloca i1, !mcsema_real_eip !13
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !13
  %FPU_OM_val = alloca i1, !mcsema_real_eip !13
  %FPU_UM_val = alloca i1, !mcsema_real_eip !13
  %FPU_PM_val = alloca i1, !mcsema_real_eip !13
  %FPU_PC_val = alloca i2, !mcsema_real_eip !13
  %FPU_RC_val = alloca i2, !mcsema_real_eip !13
  %FPU_X_val = alloca i1, !mcsema_real_eip !13
  %FPU_IE_val = alloca i1, !mcsema_real_eip !13
  %FPU_DE_val = alloca i1, !mcsema_real_eip !13
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !13
  %FPU_OE_val = alloca i1, !mcsema_real_eip !13
  %FPU_UE_val = alloca i1, !mcsema_real_eip !13
  %FPU_PE_val = alloca i1, !mcsema_real_eip !13
  %FPU_SF_val = alloca i1, !mcsema_real_eip !13
  %FPU_ES_val = alloca i1, !mcsema_real_eip !13
  %FPU_C0_val = alloca i1, !mcsema_real_eip !13
  %FPU_C1_val = alloca i1, !mcsema_real_eip !13
  %FPU_C2_val = alloca i1, !mcsema_real_eip !13
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !13
  %FPU_C3_val = alloca i1, !mcsema_real_eip !13
  %FPU_B_val = alloca i1, !mcsema_real_eip !13
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !13
  %DF_val = alloca i1, !mcsema_real_eip !13
  %OF_val = alloca i1, !mcsema_real_eip !13
  %SF_val = alloca i1, !mcsema_real_eip !13
  %CF_val = alloca i1, !mcsema_real_eip !13
  %AF_val = alloca i1, !mcsema_real_eip !13
  %PF_val = alloca i1, !mcsema_real_eip !13
  %ZF_val = alloca i1, !mcsema_real_eip !13
  %RIP_val = alloca i64, !mcsema_real_eip !13
  %R14_val = alloca i64, !mcsema_real_eip !13
  %R13_val = alloca i64, !mcsema_real_eip !13
  %R12_val = alloca i64, !mcsema_real_eip !13
  %R11_val = alloca i64, !mcsema_real_eip !13
  %R10_val = alloca i64, !mcsema_real_eip !13
  %R9_val = alloca i64, !mcsema_real_eip !13
  %R8_val = alloca i64, !mcsema_real_eip !13
  %RSP_val = alloca i64, !mcsema_real_eip !13
  %RBP_val = alloca i64, !mcsema_real_eip !13
  %RDI_val = alloca i64, !mcsema_real_eip !13
  %RSI_val = alloca i64, !mcsema_real_eip !13
  %RDX_val = alloca i64, !mcsema_real_eip !13
  %RCX_val = alloca i64, !mcsema_real_eip !13
  %RBX_val = alloca i64, !mcsema_real_eip !13
  %RAX_val = alloca i64, !mcsema_real_eip !13
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !13
  %1 = load i64* %RAX, !mcsema_real_eip !13
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !13
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !13
  %2 = load i64* %RBX, !mcsema_real_eip !13
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !13
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !13
  %3 = load i64* %RCX, !mcsema_real_eip !13
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !13
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !13
  %4 = load i64* %RDX, !mcsema_real_eip !13
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !13
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !13
  %5 = load i64* %RSI, !mcsema_real_eip !13
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !13
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !13
  %6 = load i64* %RDI, !mcsema_real_eip !13
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !13
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !13
  %7 = load i64* %RSP, !mcsema_real_eip !13
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !13
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !13
  %8 = load i64* %RBP, !mcsema_real_eip !13
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !13
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !13
  %9 = load i64* %R8, !mcsema_real_eip !13
  store i64 %9, i64* %R8_val, !mcsema_real_eip !13
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !13
  %10 = load i64* %R9, !mcsema_real_eip !13
  store i64 %10, i64* %R9_val, !mcsema_real_eip !13
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !13
  %11 = load i64* %R10, !mcsema_real_eip !13
  store i64 %11, i64* %R10_val, !mcsema_real_eip !13
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !13
  %12 = load i64* %R11, !mcsema_real_eip !13
  store i64 %12, i64* %R11_val, !mcsema_real_eip !13
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !13
  %13 = load i64* %R12, !mcsema_real_eip !13
  store i64 %13, i64* %R12_val, !mcsema_real_eip !13
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !13
  %14 = load i64* %R13, !mcsema_real_eip !13
  store i64 %14, i64* %R13_val, !mcsema_real_eip !13
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !13
  %15 = load i64* %R14, !mcsema_real_eip !13
  store i64 %15, i64* %R14_val, !mcsema_real_eip !13
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !13
  %16 = load i64* %R15, !mcsema_real_eip !13
  store i64 %16, i64* %R15_val, !mcsema_real_eip !13
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !13
  %17 = load i64* %RIP, !mcsema_real_eip !13
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !13
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !13
  %18 = load i1* %CF, align 1, !mcsema_real_eip !13
  store i1 %18, i1* %CF_val, !mcsema_real_eip !13
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !13
  %19 = load i1* %PF, align 1, !mcsema_real_eip !13
  store i1 %19, i1* %PF_val, !mcsema_real_eip !13
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !13
  %20 = load i1* %AF, align 1, !mcsema_real_eip !13
  store i1 %20, i1* %AF_val, !mcsema_real_eip !13
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !13
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !13
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !13
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !13
  %22 = load i1* %SF, align 1, !mcsema_real_eip !13
  store i1 %22, i1* %SF_val, !mcsema_real_eip !13
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !13
  %23 = load i1* %OF, align 1, !mcsema_real_eip !13
  store i1 %23, i1* %OF_val, !mcsema_real_eip !13
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !13
  %24 = load i1* %DF, align 1, !mcsema_real_eip !13
  store i1 %24, i1* %DF_val, !mcsema_real_eip !13
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !13
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !13
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !13
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !13
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !13
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !13
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !13
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !13
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !13
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !13
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !13
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !13
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !13
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !13
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !13
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !13
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !13
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !13
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !13
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !13
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !13
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !13
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !13
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !13
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !13
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !13
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !13
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !13
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !13
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !13
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !13
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !13
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !13
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !13
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !13
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !13
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !13
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !13
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !13
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !13
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !13
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !13
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !13
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !13
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !13
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !13
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !13
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !13
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !13
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !13
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !13
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !13
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !13
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !13
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !13
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !13
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !13
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !13
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !13
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !13
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !13
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !13
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !13
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !13
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !13
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !13
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !13
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !13
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !13
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !13
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !13
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !13
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !13
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !13
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !13
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !13
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !13
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !13
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !13
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !13
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !13
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !13
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !13
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !13
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !13
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !13
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !13
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !13
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !13
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !13
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !13
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !13
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !13
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !13
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !13
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !13
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !13
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !13
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !13
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !13
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !13
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !13
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !13
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !13
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !13
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !13
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !13
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !13
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !13
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !13
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !13
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !13
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !13
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !13
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !13
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !13
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !13
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !13
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !13
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !13
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !13
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !13
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !13
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !13
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !13
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !13
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !13
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !13
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !13
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !13
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !13
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !13
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !13
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !13
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !13
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !13
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !13
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !13
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !13
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !13
  %77 = load i64* %RBP_val, !mcsema_real_eip !13
  %78 = load i64* %RSP_val, !mcsema_real_eip !13
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !13
  store i64 %77, i64* %80, !mcsema_real_eip !13
  store i64 %79, i64* %RSP_val, !mcsema_real_eip !13
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !14
  %81 = add i64 %78, -40, !mcsema_real_eip !15
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !15
  %83 = load i64* %RDI_val, !mcsema_real_eip !15
  store i64 %83, i64* %82, !mcsema_real_eip !15
  %84 = load i64* %RBP_val, !mcsema_real_eip !16
  %85 = add i64 %84, -32, !mcsema_real_eip !16
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !16
  %87 = bitcast i64* %86 to i32*
  %88 = load i32* %87, !mcsema_real_eip !16
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %88, i32 20)
  %89 = extractvalue { i32, i1 } %uadd, 0
  %90 = xor i32 %89, %88, !mcsema_real_eip !17
  %91 = and i32 %90, 16
  %92 = icmp eq i32 %91, 0
  store i1 %92, i1* %AF_val, !mcsema_real_eip !17
  %93 = icmp slt i32 %89, 0
  store i1 %93, i1* %SF_val, !mcsema_real_eip !17
  %94 = icmp eq i32 %89, 0, !mcsema_real_eip !17
  store i1 %94, i1* %ZF_val, !mcsema_real_eip !17
  %95 = xor i32 %88, -2147483648, !mcsema_real_eip !17
  %96 = and i32 %90, %95, !mcsema_real_eip !17
  %97 = icmp slt i32 %96, 0
  store i1 %97, i1* %OF_val, !mcsema_real_eip !17
  %98 = trunc i32 %89 to i8, !mcsema_real_eip !17
  %99 = tail call i8 @llvm.ctpop.i8(i8 %98), !mcsema_real_eip !17
  %100 = and i8 %99, 1
  %101 = icmp eq i8 %100, 0
  store i1 %101, i1* %PF_val, !mcsema_real_eip !17
  %102 = extractvalue { i32, i1 } %uadd, 1
  store i1 %102, i1* %CF_val, !mcsema_real_eip !17
  %103 = zext i32 %89 to i64, !mcsema_real_eip !17
  store i64 %103, i64* %RAX_val, !mcsema_real_eip !17
  %104 = load i64* %RBP_val, !mcsema_real_eip !18
  %105 = add i64 %104, -16, !mcsema_real_eip !18
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !18
  %107 = bitcast i64* %106 to i32*
  store i32 %89, i32* %107, !mcsema_real_eip !18
  %108 = load i64* %RBP_val, !mcsema_real_eip !19
  %109 = add i64 %108, -28, !mcsema_real_eip !19
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !19
  %111 = bitcast i64* %110 to i32*
  %112 = load i32* %111, !mcsema_real_eip !19
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %112, i32 30)
  %113 = extractvalue { i32, i1 } %uadd70, 0
  %114 = xor i32 %113, %112, !mcsema_real_eip !20
  %115 = and i32 %114, 16
  %116 = icmp eq i32 %115, 0
  store i1 %116, i1* %AF_val, !mcsema_real_eip !20
  %117 = icmp slt i32 %113, 0
  store i1 %117, i1* %SF_val, !mcsema_real_eip !20
  %118 = icmp eq i32 %113, 0, !mcsema_real_eip !20
  store i1 %118, i1* %ZF_val, !mcsema_real_eip !20
  %119 = xor i32 %112, -2147483648, !mcsema_real_eip !20
  %120 = and i32 %114, %119, !mcsema_real_eip !20
  %121 = icmp slt i32 %120, 0
  store i1 %121, i1* %OF_val, !mcsema_real_eip !20
  %122 = trunc i32 %113 to i8, !mcsema_real_eip !20
  %123 = tail call i8 @llvm.ctpop.i8(i8 %122), !mcsema_real_eip !20
  %124 = and i8 %123, 1
  %125 = icmp eq i8 %124, 0
  store i1 %125, i1* %PF_val, !mcsema_real_eip !20
  %126 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %126, i1* %CF_val, !mcsema_real_eip !20
  %127 = zext i32 %113 to i64, !mcsema_real_eip !20
  store i64 %127, i64* %RAX_val, !mcsema_real_eip !20
  %128 = load i64* %RBP_val, !mcsema_real_eip !21
  %129 = add i64 %128, -12, !mcsema_real_eip !21
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !21
  %131 = bitcast i64* %130 to i32*
  store i32 %113, i32* %131, !mcsema_real_eip !21
  %132 = load i64* %RBP_val, !mcsema_real_eip !22
  %133 = add i64 %132, -16, !mcsema_real_eip !22
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !22
  %135 = load i64* %134, !mcsema_real_eip !22
  store i64 %135, i64* %RAX_val, !mcsema_real_eip !22
  %136 = load i64* %RSP_val, !mcsema_real_eip !23
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !23
  %138 = load i64* %137, !mcsema_real_eip !23
  store i64 %138, i64* %RBP_val, !mcsema_real_eip !23
  %139 = add i64 %136, 16, !mcsema_real_eip !24
  store i64 %139, i64* %RSP_val, !mcsema_real_eip !24
  %140 = load i64* %RAX_val, !mcsema_real_eip !24
  store i64 %140, i64* %RAX, !mcsema_real_eip !24
  %141 = load i64* %RBX_val, !mcsema_real_eip !24
  store i64 %141, i64* %RBX, !mcsema_real_eip !24
  %142 = load i64* %RCX_val, !mcsema_real_eip !24
  store i64 %142, i64* %RCX, !mcsema_real_eip !24
  %143 = load i64* %RDX_val, !mcsema_real_eip !24
  store i64 %143, i64* %RDX, !mcsema_real_eip !24
  %144 = load i64* %RSI_val, !mcsema_real_eip !24
  store i64 %144, i64* %RSI, !mcsema_real_eip !24
  %145 = load i64* %RDI_val, !mcsema_real_eip !24
  store i64 %145, i64* %RDI, !mcsema_real_eip !24
  %146 = load i64* %RSP_val, !mcsema_real_eip !24
  store i64 %146, i64* %RSP, !mcsema_real_eip !24
  %147 = load i64* %RBP_val, !mcsema_real_eip !24
  store i64 %147, i64* %RBP, !mcsema_real_eip !24
  %148 = load i64* %R8_val, !mcsema_real_eip !24
  store i64 %148, i64* %R8, !mcsema_real_eip !24
  %149 = load i64* %R9_val, !mcsema_real_eip !24
  store i64 %149, i64* %R9, !mcsema_real_eip !24
  %150 = load i64* %R10_val, !mcsema_real_eip !24
  store i64 %150, i64* %R10, !mcsema_real_eip !24
  %151 = load i64* %R11_val, !mcsema_real_eip !24
  store i64 %151, i64* %R11, !mcsema_real_eip !24
  %152 = load i64* %R12_val, !mcsema_real_eip !24
  store i64 %152, i64* %R12, !mcsema_real_eip !24
  %153 = load i64* %R13_val, !mcsema_real_eip !24
  store i64 %153, i64* %R13, !mcsema_real_eip !24
  %154 = load i64* %R14_val, !mcsema_real_eip !24
  store i64 %154, i64* %R14, !mcsema_real_eip !24
  %155 = load i64* %R15_val, !mcsema_real_eip !24
  store i64 %155, i64* %R15, !mcsema_real_eip !24
  %156 = load i64* %RIP_val, !mcsema_real_eip !24
  store i64 %156, i64* %RIP, !mcsema_real_eip !24
  %157 = load i1* %CF_val, !mcsema_real_eip !24
  store i1 %157, i1* %CF, align 1, !mcsema_real_eip !24
  %158 = load i1* %PF_val, !mcsema_real_eip !24
  store i1 %158, i1* %PF, align 1, !mcsema_real_eip !24
  %159 = load i1* %AF_val, !mcsema_real_eip !24
  store i1 %159, i1* %AF, align 1, !mcsema_real_eip !24
  %160 = load i1* %ZF_val, !mcsema_real_eip !24
  store i1 %160, i1* %ZF, align 1, !mcsema_real_eip !24
  %161 = load i1* %SF_val, !mcsema_real_eip !24
  store i1 %161, i1* %SF, align 1, !mcsema_real_eip !24
  %162 = load i1* %OF_val, !mcsema_real_eip !24
  store i1 %162, i1* %OF, align 1, !mcsema_real_eip !24
  %163 = load i1* %DF_val, !mcsema_real_eip !24
  store i1 %163, i1* %DF, align 1, !mcsema_real_eip !24
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !24
  %164 = load i1* %FPU_B_val, !mcsema_real_eip !24
  store i1 %164, i1* %FPU_B, align 1, !mcsema_real_eip !24
  %165 = load i1* %FPU_C3_val, !mcsema_real_eip !24
  store i1 %165, i1* %FPU_C3, align 1, !mcsema_real_eip !24
  %166 = load i3* %FPU_TOP_val, !mcsema_real_eip !24
  store i3 %166, i3* %FPU_TOP, align 1, !mcsema_real_eip !24
  %167 = load i1* %FPU_C2_val, !mcsema_real_eip !24
  store i1 %167, i1* %FPU_C2, align 1, !mcsema_real_eip !24
  %168 = load i1* %FPU_C1_val, !mcsema_real_eip !24
  store i1 %168, i1* %FPU_C1, align 1, !mcsema_real_eip !24
  %169 = load i1* %FPU_C0_val, !mcsema_real_eip !24
  store i1 %169, i1* %FPU_C0, align 1, !mcsema_real_eip !24
  %170 = load i1* %FPU_ES_val, !mcsema_real_eip !24
  store i1 %170, i1* %FPU_ES, align 1, !mcsema_real_eip !24
  %171 = load i1* %FPU_SF_val, !mcsema_real_eip !24
  store i1 %171, i1* %FPU_SF, align 1, !mcsema_real_eip !24
  %172 = load i1* %FPU_PE_val, !mcsema_real_eip !24
  store i1 %172, i1* %FPU_PE, align 1, !mcsema_real_eip !24
  %173 = load i1* %FPU_UE_val, !mcsema_real_eip !24
  store i1 %173, i1* %FPU_UE, align 1, !mcsema_real_eip !24
  %174 = load i1* %FPU_OE_val, !mcsema_real_eip !24
  store i1 %174, i1* %FPU_OE, align 1, !mcsema_real_eip !24
  %175 = load i1* %FPU_ZE_val, !mcsema_real_eip !24
  store i1 %175, i1* %FPU_ZE, align 1, !mcsema_real_eip !24
  %176 = load i1* %FPU_DE_val, !mcsema_real_eip !24
  store i1 %176, i1* %FPU_DE, align 1, !mcsema_real_eip !24
  %177 = load i1* %FPU_IE_val, !mcsema_real_eip !24
  store i1 %177, i1* %FPU_IE, align 1, !mcsema_real_eip !24
  %178 = load i1* %FPU_X_val, !mcsema_real_eip !24
  store i1 %178, i1* %FPU_X, align 1, !mcsema_real_eip !24
  %179 = load i2* %FPU_RC_val, !mcsema_real_eip !24
  store i2 %179, i2* %FPU_RC, align 1, !mcsema_real_eip !24
  %180 = load i2* %FPU_PC_val, !mcsema_real_eip !24
  store i2 %180, i2* %FPU_PC, align 1, !mcsema_real_eip !24
  %181 = load i1* %FPU_PM_val, !mcsema_real_eip !24
  store i1 %181, i1* %FPU_PM, align 1, !mcsema_real_eip !24
  %182 = load i1* %FPU_UM_val, !mcsema_real_eip !24
  store i1 %182, i1* %FPU_UM, align 1, !mcsema_real_eip !24
  %183 = load i1* %FPU_OM_val, !mcsema_real_eip !24
  store i1 %183, i1* %FPU_OM, align 1, !mcsema_real_eip !24
  %184 = load i1* %FPU_ZM_val, !mcsema_real_eip !24
  store i1 %184, i1* %FPU_ZM, align 1, !mcsema_real_eip !24
  %185 = load i1* %FPU_DM_val, !mcsema_real_eip !24
  store i1 %185, i1* %FPU_DM, align 1, !mcsema_real_eip !24
  %186 = load i1* %FPU_IM_val, !mcsema_real_eip !24
  store i1 %186, i1* %FPU_IM, align 1, !mcsema_real_eip !24
  %187 = load i64* %53, align 4
  store i64 %187, i64* %52, align 4
  %188 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !24
  store i16 %188, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !24
  %189 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !24
  store i64 %189, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !24
  %190 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !24
  store i16 %190, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !24
  %191 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !24
  store i64 %191, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !24
  %192 = load i128* %XMM0_val, !mcsema_real_eip !24
  store i128 %192, i128* %XMM0, align 1, !mcsema_real_eip !24
  %193 = load i128* %XMM1_val, !mcsema_real_eip !24
  store i128 %193, i128* %XMM1, align 1, !mcsema_real_eip !24
  %194 = load i128* %XMM2_val, !mcsema_real_eip !24
  store i128 %194, i128* %XMM2, align 1, !mcsema_real_eip !24
  %195 = load i128* %XMM3_val, !mcsema_real_eip !24
  store i128 %195, i128* %XMM3, align 1, !mcsema_real_eip !24
  %196 = load i128* %XMM4_val, !mcsema_real_eip !24
  store i128 %196, i128* %XMM4, align 1, !mcsema_real_eip !24
  %197 = load i128* %XMM5_val, !mcsema_real_eip !24
  store i128 %197, i128* %XMM5, align 1, !mcsema_real_eip !24
  %198 = load i128* %XMM6_val, !mcsema_real_eip !24
  store i128 %198, i128* %XMM6, align 1, !mcsema_real_eip !24
  %199 = load i128* %XMM7_val, !mcsema_real_eip !24
  store i128 %199, i128* %XMM7, align 1, !mcsema_real_eip !24
  %200 = load i128* %XMM8_val, !mcsema_real_eip !24
  store i128 %200, i128* %XMM8, align 1, !mcsema_real_eip !24
  %201 = load i128* %XMM9_val, !mcsema_real_eip !24
  store i128 %201, i128* %XMM9, align 1, !mcsema_real_eip !24
  %202 = load i128* %XMM10_val, !mcsema_real_eip !24
  store i128 %202, i128* %XMM10, align 1, !mcsema_real_eip !24
  %203 = load i128* %XMM11_val, !mcsema_real_eip !24
  store i128 %203, i128* %XMM11, align 1, !mcsema_real_eip !24
  %204 = load i128* %XMM12_val, !mcsema_real_eip !24
  store i128 %204, i128* %XMM12, align 1, !mcsema_real_eip !24
  %205 = load i128* %XMM13_val, !mcsema_real_eip !24
  store i128 %205, i128* %XMM13, align 1, !mcsema_real_eip !24
  %206 = load i128* %XMM14_val, !mcsema_real_eip !24
  store i128 %206, i128* %XMM14, align 1, !mcsema_real_eip !24
  %207 = load i128* %XMM15_val, !mcsema_real_eip !24
  store i128 %207, i128* %XMM15, align 1, !mcsema_real_eip !24
  %208 = load i64* %STACK_BASE_val, !mcsema_real_eip !24
  store i64 %208, i64* %STACK_BASE, align 1, !mcsema_real_eip !24
  %209 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !24
  store i64 %209, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !24
  ret void, !mcsema_real_eip !24
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = metadata !{i64 4, [16 x i8] c"\09subq\09$16, %rsp\00"}
!5 = metadata !{i64 8, [22 x i8] c"\09movl\09$100, -16(%rbp)\00"}
!6 = metadata !{i64 15, [22 x i8] c"\09movl\09$200, -12(%rbp)\00"}
!7 = metadata !{i64 22, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!8 = metadata !{i64 26, [17 x i8] c"\09movq\09%rax, %rdi\00"}
!9 = metadata !{i64 29, [9 x i8] c"\09callq\090\00"}
!10 = metadata !{i64 34, [15 x i8] c"\09movl\09$0, %eax\00"}
!11 = metadata !{i64 39, [7 x i8] c"\09leave\00"}
!12 = metadata !{i64 40, [6 x i8] c"\09retq\00"}
!13 = metadata !{i64 41, [12 x i8] c"\09pushq\09%rbp\00"} ; [ DW_TAG_file_type ] [/]
!14 = metadata !{i64 42, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!15 = metadata !{i64 45, [22 x i8] c"\09movq\09%rdi, -32(%rbp)\00"}
!16 = metadata !{i64 49, [22 x i8] c"\09movl\09-32(%rbp), %eax\00"}
!17 = metadata !{i64 52, [16 x i8] c"\09addl\09$20, %eax\00"}
!18 = metadata !{i64 55, [22 x i8] c"\09movl\09%eax, -16(%rbp)\00"}
!19 = metadata !{i64 58, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!20 = metadata !{i64 61, [16 x i8] c"\09addl\09$30, %eax\00"}
!21 = metadata !{i64 64, [22 x i8] c"\09movl\09%eax, -12(%rbp)\00"}
!22 = metadata !{i64 67, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!23 = metadata !{i64 71, [11 x i8] c"\09popq\09%rbp\00"}
!24 = metadata !{i64 72, [6 x i8] c"\09retq\00"}
