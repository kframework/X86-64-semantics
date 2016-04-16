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
  %95 = add i64 %94, -4, !mcsema_real_eip !5
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !5
  %97 = bitcast i64* %96 to i32*
  store i32 0, i32* %97, !mcsema_real_eip !5
  %98 = load i64* %RBP_val, !mcsema_real_eip !6
  %99 = add i64 %98, -16, !mcsema_real_eip !6
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !6
  %101 = bitcast i64* %100 to i32*
  store i32 100, i32* %101, !mcsema_real_eip !6
  %102 = load i64* %RBP_val, !mcsema_real_eip !7
  %103 = add i64 %102, -12, !mcsema_real_eip !7
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !7
  %105 = bitcast i64* %104 to i32*
  store i32 200, i32* %105, !mcsema_real_eip !7
  %106 = load i64* %RBP_val, !mcsema_real_eip !8
  %107 = add i64 %106, -16, !mcsema_real_eip !8
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !8
  %109 = load i64* %108, !mcsema_real_eip !8
  store i64 %109, i64* %RDI_val, !mcsema_real_eip !8
  %110 = load i64* %RSP_val, !mcsema_real_eip !9
  %111 = add i64 %110, -8
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !9
  store i64 -4981261766360305936, i64* %112, !mcsema_real_eip !9
  store i64 %111, i64* %RSP_val, !mcsema_real_eip !9
  %113 = load i64* %RAX_val, !mcsema_real_eip !9
  store i64 %113, i64* %RAX, !mcsema_real_eip !9
  %114 = load i64* %RBX_val, !mcsema_real_eip !9
  store i64 %114, i64* %RBX, !mcsema_real_eip !9
  %115 = load i64* %RCX_val, !mcsema_real_eip !9
  store i64 %115, i64* %RCX, !mcsema_real_eip !9
  %116 = load i64* %RDX_val, !mcsema_real_eip !9
  store i64 %116, i64* %RDX, !mcsema_real_eip !9
  %117 = load i64* %RSI_val, !mcsema_real_eip !9
  store i64 %117, i64* %RSI, !mcsema_real_eip !9
  %118 = load i64* %RDI_val, !mcsema_real_eip !9
  store i64 %118, i64* %RDI, !mcsema_real_eip !9
  %119 = load i64* %RSP_val, !mcsema_real_eip !9
  store i64 %119, i64* %RSP, !mcsema_real_eip !9
  %120 = load i64* %RBP_val, !mcsema_real_eip !9
  store i64 %120, i64* %RBP, !mcsema_real_eip !9
  %121 = load i64* %R8_val, !mcsema_real_eip !9
  store i64 %121, i64* %R8, !mcsema_real_eip !9
  %122 = load i64* %R9_val, !mcsema_real_eip !9
  store i64 %122, i64* %R9, !mcsema_real_eip !9
  %123 = load i64* %R10_val, !mcsema_real_eip !9
  store i64 %123, i64* %R10, !mcsema_real_eip !9
  %124 = load i64* %R11_val, !mcsema_real_eip !9
  store i64 %124, i64* %R11, !mcsema_real_eip !9
  %125 = load i64* %R12_val, !mcsema_real_eip !9
  store i64 %125, i64* %R12, !mcsema_real_eip !9
  %126 = load i64* %R13_val, !mcsema_real_eip !9
  store i64 %126, i64* %R13, !mcsema_real_eip !9
  %127 = load i64* %R14_val, !mcsema_real_eip !9
  store i64 %127, i64* %R14, !mcsema_real_eip !9
  %128 = load i64* %R15_val, !mcsema_real_eip !9
  store i64 %128, i64* %R15, !mcsema_real_eip !9
  %129 = load i64* %RIP_val, !mcsema_real_eip !9
  store i64 %129, i64* %RIP, !mcsema_real_eip !9
  %130 = load i1* %CF_val, !mcsema_real_eip !9
  store i1 %130, i1* %CF, align 1, !mcsema_real_eip !9
  %131 = load i1* %PF_val, !mcsema_real_eip !9
  store i1 %131, i1* %PF, align 1, !mcsema_real_eip !9
  %132 = load i1* %AF_val, !mcsema_real_eip !9
  store i1 %132, i1* %AF, align 1, !mcsema_real_eip !9
  %133 = load i1* %ZF_val, !mcsema_real_eip !9
  store i1 %133, i1* %ZF, align 1, !mcsema_real_eip !9
  %134 = load i1* %SF_val, !mcsema_real_eip !9
  store i1 %134, i1* %SF, align 1, !mcsema_real_eip !9
  %135 = load i1* %OF_val, !mcsema_real_eip !9
  store i1 %135, i1* %OF, align 1, !mcsema_real_eip !9
  %136 = load i1* %DF_val, !mcsema_real_eip !9
  store i1 %136, i1* %DF, align 1, !mcsema_real_eip !9
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !9
  %137 = load i1* %FPU_B_val, !mcsema_real_eip !9
  store i1 %137, i1* %FPU_B, align 1, !mcsema_real_eip !9
  %138 = load i1* %FPU_C3_val, !mcsema_real_eip !9
  store i1 %138, i1* %FPU_C3, align 1, !mcsema_real_eip !9
  %139 = load i3* %FPU_TOP_val, !mcsema_real_eip !9
  store i3 %139, i3* %FPU_TOP, align 1, !mcsema_real_eip !9
  %140 = load i1* %FPU_C2_val, !mcsema_real_eip !9
  store i1 %140, i1* %FPU_C2, align 1, !mcsema_real_eip !9
  %141 = load i1* %FPU_C1_val, !mcsema_real_eip !9
  store i1 %141, i1* %FPU_C1, align 1, !mcsema_real_eip !9
  %142 = load i1* %FPU_C0_val, !mcsema_real_eip !9
  store i1 %142, i1* %FPU_C0, align 1, !mcsema_real_eip !9
  %143 = load i1* %FPU_ES_val, !mcsema_real_eip !9
  store i1 %143, i1* %FPU_ES, align 1, !mcsema_real_eip !9
  %144 = load i1* %FPU_SF_val, !mcsema_real_eip !9
  store i1 %144, i1* %FPU_SF, align 1, !mcsema_real_eip !9
  %145 = load i1* %FPU_PE_val, !mcsema_real_eip !9
  store i1 %145, i1* %FPU_PE, align 1, !mcsema_real_eip !9
  %146 = load i1* %FPU_UE_val, !mcsema_real_eip !9
  store i1 %146, i1* %FPU_UE, align 1, !mcsema_real_eip !9
  %147 = load i1* %FPU_OE_val, !mcsema_real_eip !9
  store i1 %147, i1* %FPU_OE, align 1, !mcsema_real_eip !9
  %148 = load i1* %FPU_ZE_val, !mcsema_real_eip !9
  store i1 %148, i1* %FPU_ZE, align 1, !mcsema_real_eip !9
  %149 = load i1* %FPU_DE_val, !mcsema_real_eip !9
  store i1 %149, i1* %FPU_DE, align 1, !mcsema_real_eip !9
  %150 = load i1* %FPU_IE_val, !mcsema_real_eip !9
  store i1 %150, i1* %FPU_IE, align 1, !mcsema_real_eip !9
  %151 = load i1* %FPU_X_val, !mcsema_real_eip !9
  store i1 %151, i1* %FPU_X, align 1, !mcsema_real_eip !9
  %152 = load i2* %FPU_RC_val, !mcsema_real_eip !9
  store i2 %152, i2* %FPU_RC, align 1, !mcsema_real_eip !9
  %153 = load i2* %FPU_PC_val, !mcsema_real_eip !9
  store i2 %153, i2* %FPU_PC, align 1, !mcsema_real_eip !9
  %154 = load i1* %FPU_PM_val, !mcsema_real_eip !9
  store i1 %154, i1* %FPU_PM, align 1, !mcsema_real_eip !9
  %155 = load i1* %FPU_UM_val, !mcsema_real_eip !9
  store i1 %155, i1* %FPU_UM, align 1, !mcsema_real_eip !9
  %156 = load i1* %FPU_OM_val, !mcsema_real_eip !9
  store i1 %156, i1* %FPU_OM, align 1, !mcsema_real_eip !9
  %157 = load i1* %FPU_ZM_val, !mcsema_real_eip !9
  store i1 %157, i1* %FPU_ZM, align 1, !mcsema_real_eip !9
  %158 = load i1* %FPU_DM_val, !mcsema_real_eip !9
  store i1 %158, i1* %FPU_DM, align 1, !mcsema_real_eip !9
  %159 = load i1* %FPU_IM_val, !mcsema_real_eip !9
  store i1 %159, i1* %FPU_IM, align 1, !mcsema_real_eip !9
  %160 = load i64* %53, align 4
  store i64 %160, i64* %52, align 4
  %161 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !9
  store i16 %161, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !9
  %162 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !9
  store i64 %162, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !9
  %163 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !9
  store i16 %163, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !9
  %164 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !9
  store i64 %164, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !9
  %165 = load i128* %XMM0_val, !mcsema_real_eip !9
  store i128 %165, i128* %XMM0, align 1, !mcsema_real_eip !9
  %166 = load i128* %XMM1_val, !mcsema_real_eip !9
  store i128 %166, i128* %XMM1, align 1, !mcsema_real_eip !9
  %167 = load i128* %XMM2_val, !mcsema_real_eip !9
  store i128 %167, i128* %XMM2, align 1, !mcsema_real_eip !9
  %168 = load i128* %XMM3_val, !mcsema_real_eip !9
  store i128 %168, i128* %XMM3, align 1, !mcsema_real_eip !9
  %169 = load i128* %XMM4_val, !mcsema_real_eip !9
  store i128 %169, i128* %XMM4, align 1, !mcsema_real_eip !9
  %170 = load i128* %XMM5_val, !mcsema_real_eip !9
  store i128 %170, i128* %XMM5, align 1, !mcsema_real_eip !9
  %171 = load i128* %XMM6_val, !mcsema_real_eip !9
  store i128 %171, i128* %XMM6, align 1, !mcsema_real_eip !9
  %172 = load i128* %XMM7_val, !mcsema_real_eip !9
  store i128 %172, i128* %XMM7, align 1, !mcsema_real_eip !9
  %173 = load i128* %XMM8_val, !mcsema_real_eip !9
  store i128 %173, i128* %XMM8, align 1, !mcsema_real_eip !9
  %174 = load i128* %XMM9_val, !mcsema_real_eip !9
  store i128 %174, i128* %XMM9, align 1, !mcsema_real_eip !9
  %175 = load i128* %XMM10_val, !mcsema_real_eip !9
  store i128 %175, i128* %XMM10, align 1, !mcsema_real_eip !9
  %176 = load i128* %XMM11_val, !mcsema_real_eip !9
  store i128 %176, i128* %XMM11, align 1, !mcsema_real_eip !9
  %177 = load i128* %XMM12_val, !mcsema_real_eip !9
  store i128 %177, i128* %XMM12, align 1, !mcsema_real_eip !9
  %178 = load i128* %XMM13_val, !mcsema_real_eip !9
  store i128 %178, i128* %XMM13, align 1, !mcsema_real_eip !9
  %179 = load i128* %XMM14_val, !mcsema_real_eip !9
  store i128 %179, i128* %XMM14, align 1, !mcsema_real_eip !9
  %180 = load i128* %XMM15_val, !mcsema_real_eip !9
  store i128 %180, i128* %XMM15, align 1, !mcsema_real_eip !9
  %181 = load i64* %STACK_BASE_val, !mcsema_real_eip !9
  store i64 %181, i64* %STACK_BASE, align 1, !mcsema_real_eip !9
  %182 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !9
  store i64 %182, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !9
  tail call x86_64_sysvcc void @sub_40(%struct.regs* %0), !mcsema_real_eip !9
  %183 = load i64* %RAX, !mcsema_real_eip !9
  store i64 %183, i64* %RAX_val, !mcsema_real_eip !9
  %184 = load i64* %RBX, !mcsema_real_eip !9
  store i64 %184, i64* %RBX_val, !mcsema_real_eip !9
  %185 = load i64* %RCX, !mcsema_real_eip !9
  store i64 %185, i64* %RCX_val, !mcsema_real_eip !9
  %186 = load i64* %RDX, !mcsema_real_eip !9
  store i64 %186, i64* %RDX_val, !mcsema_real_eip !9
  %187 = load i64* %RSI, !mcsema_real_eip !9
  store i64 %187, i64* %RSI_val, !mcsema_real_eip !9
  %188 = load i64* %RDI, !mcsema_real_eip !9
  store i64 %188, i64* %RDI_val, !mcsema_real_eip !9
  %189 = load i64* %RSP, !mcsema_real_eip !9
  store i64 %189, i64* %RSP_val, !mcsema_real_eip !9
  %190 = load i64* %RBP, !mcsema_real_eip !9
  store i64 %190, i64* %RBP_val, !mcsema_real_eip !9
  %191 = load i64* %R8, !mcsema_real_eip !9
  store i64 %191, i64* %R8_val, !mcsema_real_eip !9
  %192 = load i64* %R9, !mcsema_real_eip !9
  store i64 %192, i64* %R9_val, !mcsema_real_eip !9
  %193 = load i64* %R10, !mcsema_real_eip !9
  store i64 %193, i64* %R10_val, !mcsema_real_eip !9
  %194 = load i64* %R11, !mcsema_real_eip !9
  store i64 %194, i64* %R11_val, !mcsema_real_eip !9
  %195 = load i64* %R12, !mcsema_real_eip !9
  store i64 %195, i64* %R12_val, !mcsema_real_eip !9
  %196 = load i64* %R13, !mcsema_real_eip !9
  store i64 %196, i64* %R13_val, !mcsema_real_eip !9
  %197 = load i64* %R14, !mcsema_real_eip !9
  store i64 %197, i64* %R14_val, !mcsema_real_eip !9
  %198 = load i64* %R15, !mcsema_real_eip !9
  store i64 %198, i64* %R15_val, !mcsema_real_eip !9
  %199 = load i64* %RIP, !mcsema_real_eip !9
  store i64 %199, i64* %RIP_val, !mcsema_real_eip !9
  %200 = load i1* %CF, align 1, !mcsema_real_eip !9
  store i1 %200, i1* %CF_val, !mcsema_real_eip !9
  %201 = load i1* %PF, align 1, !mcsema_real_eip !9
  store i1 %201, i1* %PF_val, !mcsema_real_eip !9
  %202 = load i1* %AF, align 1, !mcsema_real_eip !9
  store i1 %202, i1* %AF_val, !mcsema_real_eip !9
  %203 = load i1* %ZF, align 1, !mcsema_real_eip !9
  store i1 %203, i1* %ZF_val, !mcsema_real_eip !9
  %204 = load i1* %SF, align 1, !mcsema_real_eip !9
  store i1 %204, i1* %SF_val, !mcsema_real_eip !9
  %205 = load i1* %OF, align 1, !mcsema_real_eip !9
  store i1 %205, i1* %OF_val, !mcsema_real_eip !9
  %206 = load i1* %DF, align 1, !mcsema_real_eip !9
  store i1 %206, i1* %DF_val, !mcsema_real_eip !9
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !9
  %207 = load i1* %FPU_B, align 1, !mcsema_real_eip !9
  store i1 %207, i1* %FPU_B_val, !mcsema_real_eip !9
  %208 = load i1* %FPU_C3, align 1, !mcsema_real_eip !9
  store i1 %208, i1* %FPU_C3_val, !mcsema_real_eip !9
  %209 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !9
  store i3 %209, i3* %FPU_TOP_val, !mcsema_real_eip !9
  %210 = load i1* %FPU_C2, align 1, !mcsema_real_eip !9
  store i1 %210, i1* %FPU_C2_val, !mcsema_real_eip !9
  %211 = load i1* %FPU_C1, align 1, !mcsema_real_eip !9
  store i1 %211, i1* %FPU_C1_val, !mcsema_real_eip !9
  %212 = load i1* %FPU_C0, align 1, !mcsema_real_eip !9
  store i1 %212, i1* %FPU_C0_val, !mcsema_real_eip !9
  %213 = load i1* %FPU_ES, align 1, !mcsema_real_eip !9
  store i1 %213, i1* %FPU_ES_val, !mcsema_real_eip !9
  %214 = load i1* %FPU_SF, align 1, !mcsema_real_eip !9
  store i1 %214, i1* %FPU_SF_val, !mcsema_real_eip !9
  %215 = load i1* %FPU_PE, align 1, !mcsema_real_eip !9
  store i1 %215, i1* %FPU_PE_val, !mcsema_real_eip !9
  %216 = load i1* %FPU_UE, align 1, !mcsema_real_eip !9
  store i1 %216, i1* %FPU_UE_val, !mcsema_real_eip !9
  %217 = load i1* %FPU_OE, align 1, !mcsema_real_eip !9
  store i1 %217, i1* %FPU_OE_val, !mcsema_real_eip !9
  %218 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !9
  store i1 %218, i1* %FPU_ZE_val, !mcsema_real_eip !9
  %219 = load i1* %FPU_DE, align 1, !mcsema_real_eip !9
  store i1 %219, i1* %FPU_DE_val, !mcsema_real_eip !9
  %220 = load i1* %FPU_IE, align 1, !mcsema_real_eip !9
  store i1 %220, i1* %FPU_IE_val, !mcsema_real_eip !9
  %221 = load i1* %FPU_X, align 1, !mcsema_real_eip !9
  store i1 %221, i1* %FPU_X_val, !mcsema_real_eip !9
  %222 = load i2* %FPU_RC, align 1, !mcsema_real_eip !9
  store i2 %222, i2* %FPU_RC_val, !mcsema_real_eip !9
  %223 = load i2* %FPU_PC, align 1, !mcsema_real_eip !9
  store i2 %223, i2* %FPU_PC_val, !mcsema_real_eip !9
  %224 = load i1* %FPU_PM, align 1, !mcsema_real_eip !9
  store i1 %224, i1* %FPU_PM_val, !mcsema_real_eip !9
  %225 = load i1* %FPU_UM, align 1, !mcsema_real_eip !9
  store i1 %225, i1* %FPU_UM_val, !mcsema_real_eip !9
  %226 = load i1* %FPU_OM, align 1, !mcsema_real_eip !9
  store i1 %226, i1* %FPU_OM_val, !mcsema_real_eip !9
  %227 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !9
  store i1 %227, i1* %FPU_ZM_val, !mcsema_real_eip !9
  %228 = load i1* %FPU_DM, align 1, !mcsema_real_eip !9
  store i1 %228, i1* %FPU_DM_val, !mcsema_real_eip !9
  %229 = load i1* %FPU_IM, align 1, !mcsema_real_eip !9
  store i1 %229, i1* %FPU_IM_val, !mcsema_real_eip !9
  %230 = load i64* %52, align 4
  store i64 %230, i64* %53, align 4
  %231 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !9
  store i16 %231, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !9
  %232 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !9
  store i64 %232, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !9
  %233 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !9
  store i16 %233, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !9
  %234 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !9
  store i64 %234, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !9
  %235 = load i128* %XMM0, align 1, !mcsema_real_eip !9
  store i128 %235, i128* %XMM0_val, !mcsema_real_eip !9
  %236 = load i128* %XMM1, align 1, !mcsema_real_eip !9
  store i128 %236, i128* %XMM1_val, !mcsema_real_eip !9
  %237 = load i128* %XMM2, align 1, !mcsema_real_eip !9
  store i128 %237, i128* %XMM2_val, !mcsema_real_eip !9
  %238 = load i128* %XMM3, align 1, !mcsema_real_eip !9
  store i128 %238, i128* %XMM3_val, !mcsema_real_eip !9
  %239 = load i128* %XMM4, align 1, !mcsema_real_eip !9
  store i128 %239, i128* %XMM4_val, !mcsema_real_eip !9
  %240 = load i128* %XMM5, align 1, !mcsema_real_eip !9
  store i128 %240, i128* %XMM5_val, !mcsema_real_eip !9
  %241 = load i128* %XMM6, align 1, !mcsema_real_eip !9
  store i128 %241, i128* %XMM6_val, !mcsema_real_eip !9
  %242 = load i128* %XMM7, align 1, !mcsema_real_eip !9
  store i128 %242, i128* %XMM7_val, !mcsema_real_eip !9
  %243 = load i128* %XMM8, align 1, !mcsema_real_eip !9
  store i128 %243, i128* %XMM8_val, !mcsema_real_eip !9
  %244 = load i128* %XMM9, align 1, !mcsema_real_eip !9
  store i128 %244, i128* %XMM9_val, !mcsema_real_eip !9
  %245 = load i128* %XMM10, align 1, !mcsema_real_eip !9
  store i128 %245, i128* %XMM10_val, !mcsema_real_eip !9
  %246 = load i128* %XMM11, align 1, !mcsema_real_eip !9
  store i128 %246, i128* %XMM11_val, !mcsema_real_eip !9
  %247 = load i128* %XMM12, align 1, !mcsema_real_eip !9
  store i128 %247, i128* %XMM12_val, !mcsema_real_eip !9
  %248 = load i128* %XMM13, align 1, !mcsema_real_eip !9
  store i128 %248, i128* %XMM13_val, !mcsema_real_eip !9
  %249 = load i128* %XMM14, align 1, !mcsema_real_eip !9
  store i128 %249, i128* %XMM14_val, !mcsema_real_eip !9
  %250 = load i128* %XMM15, align 1, !mcsema_real_eip !9
  store i128 %250, i128* %XMM15_val, !mcsema_real_eip !9
  %251 = load i64* %STACK_BASE, !mcsema_real_eip !9
  store i64 %251, i64* %STACK_BASE_val, !mcsema_real_eip !9
  %252 = load i64* %STACK_LIMIT, !mcsema_real_eip !9
  store i64 %252, i64* %STACK_LIMIT_val, !mcsema_real_eip !9
  store i64 0, i64* %RCX_val, !mcsema_real_eip !10
  %253 = load i64* %RBP_val, !mcsema_real_eip !11
  %254 = add i64 %253, -24, !mcsema_real_eip !11
  %255 = inttoptr i64 %254 to i64*, !mcsema_real_eip !11
  %256 = load i64* %RAX_val, !mcsema_real_eip !11
  store i64 %256, i64* %255, !mcsema_real_eip !11
  %257 = load i64* %RCX_val, !mcsema_real_eip !12
  %258 = and i64 %257, 4294967295
  store i64 %258, i64* %RAX_val, !mcsema_real_eip !12
  %259 = load i64* %RSP_val, !mcsema_real_eip !13
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %259, i64 32)
  %260 = extractvalue { i64, i1 } %uadd, 0
  %261 = xor i64 %260, %259, !mcsema_real_eip !13
  %262 = and i64 %261, 16, !mcsema_real_eip !13
  %263 = icmp ne i64 %262, 0, !mcsema_real_eip !13
  store i1 %263, i1* %AF_val, !mcsema_real_eip !13
  %264 = icmp slt i64 %260, 0
  store i1 %264, i1* %SF_val, !mcsema_real_eip !13
  %265 = icmp eq i64 %260, 0, !mcsema_real_eip !13
  store i1 %265, i1* %ZF_val, !mcsema_real_eip !13
  %266 = xor i64 %259, -9223372036854775808, !mcsema_real_eip !13
  %267 = and i64 %261, %266, !mcsema_real_eip !13
  %268 = icmp slt i64 %267, 0
  store i1 %268, i1* %OF_val, !mcsema_real_eip !13
  %269 = trunc i64 %260 to i8, !mcsema_real_eip !13
  %270 = tail call i8 @llvm.ctpop.i8(i8 %269), !mcsema_real_eip !13
  %271 = and i8 %270, 1
  %272 = icmp eq i8 %271, 0
  store i1 %272, i1* %PF_val, !mcsema_real_eip !13
  %273 = extractvalue { i64, i1 } %uadd, 1
  store i1 %273, i1* %CF_val, !mcsema_real_eip !13
  store i64 %260, i64* %RSP_val, !mcsema_real_eip !13
  %274 = inttoptr i64 %260 to i64*, !mcsema_real_eip !14
  %275 = load i64* %274, !mcsema_real_eip !14
  store i64 %275, i64* %RBP_val, !mcsema_real_eip !14
  %276 = add i64 %260, 16, !mcsema_real_eip !15
  store i64 %276, i64* %RSP_val, !mcsema_real_eip !15
  %277 = load i64* %RAX_val, !mcsema_real_eip !15
  store i64 %277, i64* %RAX, !mcsema_real_eip !15
  %278 = load i64* %RBX_val, !mcsema_real_eip !15
  store i64 %278, i64* %RBX, !mcsema_real_eip !15
  %279 = load i64* %RCX_val, !mcsema_real_eip !15
  store i64 %279, i64* %RCX, !mcsema_real_eip !15
  %280 = load i64* %RDX_val, !mcsema_real_eip !15
  store i64 %280, i64* %RDX, !mcsema_real_eip !15
  %281 = load i64* %RSI_val, !mcsema_real_eip !15
  store i64 %281, i64* %RSI, !mcsema_real_eip !15
  %282 = load i64* %RDI_val, !mcsema_real_eip !15
  store i64 %282, i64* %RDI, !mcsema_real_eip !15
  %283 = load i64* %RSP_val, !mcsema_real_eip !15
  store i64 %283, i64* %RSP, !mcsema_real_eip !15
  %284 = load i64* %RBP_val, !mcsema_real_eip !15
  store i64 %284, i64* %RBP, !mcsema_real_eip !15
  %285 = load i64* %R8_val, !mcsema_real_eip !15
  store i64 %285, i64* %R8, !mcsema_real_eip !15
  %286 = load i64* %R9_val, !mcsema_real_eip !15
  store i64 %286, i64* %R9, !mcsema_real_eip !15
  %287 = load i64* %R10_val, !mcsema_real_eip !15
  store i64 %287, i64* %R10, !mcsema_real_eip !15
  %288 = load i64* %R11_val, !mcsema_real_eip !15
  store i64 %288, i64* %R11, !mcsema_real_eip !15
  %289 = load i64* %R12_val, !mcsema_real_eip !15
  store i64 %289, i64* %R12, !mcsema_real_eip !15
  %290 = load i64* %R13_val, !mcsema_real_eip !15
  store i64 %290, i64* %R13, !mcsema_real_eip !15
  %291 = load i64* %R14_val, !mcsema_real_eip !15
  store i64 %291, i64* %R14, !mcsema_real_eip !15
  %292 = load i64* %R15_val, !mcsema_real_eip !15
  store i64 %292, i64* %R15, !mcsema_real_eip !15
  %293 = load i64* %RIP_val, !mcsema_real_eip !15
  store i64 %293, i64* %RIP, !mcsema_real_eip !15
  %294 = load i1* %CF_val, !mcsema_real_eip !15
  store i1 %294, i1* %CF, align 1, !mcsema_real_eip !15
  %295 = load i1* %PF_val, !mcsema_real_eip !15
  store i1 %295, i1* %PF, align 1, !mcsema_real_eip !15
  %296 = load i1* %AF_val, !mcsema_real_eip !15
  store i1 %296, i1* %AF, align 1, !mcsema_real_eip !15
  %297 = load i1* %ZF_val, !mcsema_real_eip !15
  store i1 %297, i1* %ZF, align 1, !mcsema_real_eip !15
  %298 = load i1* %SF_val, !mcsema_real_eip !15
  store i1 %298, i1* %SF, align 1, !mcsema_real_eip !15
  %299 = load i1* %OF_val, !mcsema_real_eip !15
  store i1 %299, i1* %OF, align 1, !mcsema_real_eip !15
  %300 = load i1* %DF_val, !mcsema_real_eip !15
  store i1 %300, i1* %DF, align 1, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !15
  %301 = load i1* %FPU_B_val, !mcsema_real_eip !15
  store i1 %301, i1* %FPU_B, align 1, !mcsema_real_eip !15
  %302 = load i1* %FPU_C3_val, !mcsema_real_eip !15
  store i1 %302, i1* %FPU_C3, align 1, !mcsema_real_eip !15
  %303 = load i3* %FPU_TOP_val, !mcsema_real_eip !15
  store i3 %303, i3* %FPU_TOP, align 1, !mcsema_real_eip !15
  %304 = load i1* %FPU_C2_val, !mcsema_real_eip !15
  store i1 %304, i1* %FPU_C2, align 1, !mcsema_real_eip !15
  %305 = load i1* %FPU_C1_val, !mcsema_real_eip !15
  store i1 %305, i1* %FPU_C1, align 1, !mcsema_real_eip !15
  %306 = load i1* %FPU_C0_val, !mcsema_real_eip !15
  store i1 %306, i1* %FPU_C0, align 1, !mcsema_real_eip !15
  %307 = load i1* %FPU_ES_val, !mcsema_real_eip !15
  store i1 %307, i1* %FPU_ES, align 1, !mcsema_real_eip !15
  %308 = load i1* %FPU_SF_val, !mcsema_real_eip !15
  store i1 %308, i1* %FPU_SF, align 1, !mcsema_real_eip !15
  %309 = load i1* %FPU_PE_val, !mcsema_real_eip !15
  store i1 %309, i1* %FPU_PE, align 1, !mcsema_real_eip !15
  %310 = load i1* %FPU_UE_val, !mcsema_real_eip !15
  store i1 %310, i1* %FPU_UE, align 1, !mcsema_real_eip !15
  %311 = load i1* %FPU_OE_val, !mcsema_real_eip !15
  store i1 %311, i1* %FPU_OE, align 1, !mcsema_real_eip !15
  %312 = load i1* %FPU_ZE_val, !mcsema_real_eip !15
  store i1 %312, i1* %FPU_ZE, align 1, !mcsema_real_eip !15
  %313 = load i1* %FPU_DE_val, !mcsema_real_eip !15
  store i1 %313, i1* %FPU_DE, align 1, !mcsema_real_eip !15
  %314 = load i1* %FPU_IE_val, !mcsema_real_eip !15
  store i1 %314, i1* %FPU_IE, align 1, !mcsema_real_eip !15
  %315 = load i1* %FPU_X_val, !mcsema_real_eip !15
  store i1 %315, i1* %FPU_X, align 1, !mcsema_real_eip !15
  %316 = load i2* %FPU_RC_val, !mcsema_real_eip !15
  store i2 %316, i2* %FPU_RC, align 1, !mcsema_real_eip !15
  %317 = load i2* %FPU_PC_val, !mcsema_real_eip !15
  store i2 %317, i2* %FPU_PC, align 1, !mcsema_real_eip !15
  %318 = load i1* %FPU_PM_val, !mcsema_real_eip !15
  store i1 %318, i1* %FPU_PM, align 1, !mcsema_real_eip !15
  %319 = load i1* %FPU_UM_val, !mcsema_real_eip !15
  store i1 %319, i1* %FPU_UM, align 1, !mcsema_real_eip !15
  %320 = load i1* %FPU_OM_val, !mcsema_real_eip !15
  store i1 %320, i1* %FPU_OM, align 1, !mcsema_real_eip !15
  %321 = load i1* %FPU_ZM_val, !mcsema_real_eip !15
  store i1 %321, i1* %FPU_ZM, align 1, !mcsema_real_eip !15
  %322 = load i1* %FPU_DM_val, !mcsema_real_eip !15
  store i1 %322, i1* %FPU_DM, align 1, !mcsema_real_eip !15
  %323 = load i1* %FPU_IM_val, !mcsema_real_eip !15
  store i1 %323, i1* %FPU_IM, align 1, !mcsema_real_eip !15
  %324 = load i64* %53, align 4
  store i64 %324, i64* %52, align 4
  %325 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !15
  store i16 %325, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !15
  %326 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !15
  store i64 %326, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !15
  %327 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !15
  store i16 %327, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !15
  %328 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !15
  store i64 %328, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !15
  %329 = load i128* %XMM0_val, !mcsema_real_eip !15
  store i128 %329, i128* %XMM0, align 1, !mcsema_real_eip !15
  %330 = load i128* %XMM1_val, !mcsema_real_eip !15
  store i128 %330, i128* %XMM1, align 1, !mcsema_real_eip !15
  %331 = load i128* %XMM2_val, !mcsema_real_eip !15
  store i128 %331, i128* %XMM2, align 1, !mcsema_real_eip !15
  %332 = load i128* %XMM3_val, !mcsema_real_eip !15
  store i128 %332, i128* %XMM3, align 1, !mcsema_real_eip !15
  %333 = load i128* %XMM4_val, !mcsema_real_eip !15
  store i128 %333, i128* %XMM4, align 1, !mcsema_real_eip !15
  %334 = load i128* %XMM5_val, !mcsema_real_eip !15
  store i128 %334, i128* %XMM5, align 1, !mcsema_real_eip !15
  %335 = load i128* %XMM6_val, !mcsema_real_eip !15
  store i128 %335, i128* %XMM6, align 1, !mcsema_real_eip !15
  %336 = load i128* %XMM7_val, !mcsema_real_eip !15
  store i128 %336, i128* %XMM7, align 1, !mcsema_real_eip !15
  %337 = load i128* %XMM8_val, !mcsema_real_eip !15
  store i128 %337, i128* %XMM8, align 1, !mcsema_real_eip !15
  %338 = load i128* %XMM9_val, !mcsema_real_eip !15
  store i128 %338, i128* %XMM9, align 1, !mcsema_real_eip !15
  %339 = load i128* %XMM10_val, !mcsema_real_eip !15
  store i128 %339, i128* %XMM10, align 1, !mcsema_real_eip !15
  %340 = load i128* %XMM11_val, !mcsema_real_eip !15
  store i128 %340, i128* %XMM11, align 1, !mcsema_real_eip !15
  %341 = load i128* %XMM12_val, !mcsema_real_eip !15
  store i128 %341, i128* %XMM12, align 1, !mcsema_real_eip !15
  %342 = load i128* %XMM13_val, !mcsema_real_eip !15
  store i128 %342, i128* %XMM13, align 1, !mcsema_real_eip !15
  %343 = load i128* %XMM14_val, !mcsema_real_eip !15
  store i128 %343, i128* %XMM14, align 1, !mcsema_real_eip !15
  %344 = load i128* %XMM15_val, !mcsema_real_eip !15
  store i128 %344, i128* %XMM15, align 1, !mcsema_real_eip !15
  %345 = load i64* %STACK_BASE_val, !mcsema_real_eip !15
  store i64 %345, i64* %STACK_BASE, align 1, !mcsema_real_eip !15
  %346 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !15
  store i64 %346, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !15
  ret void, !mcsema_real_eip !15
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_40(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !16
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !16
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !16
  %XMM15_val = alloca i128, !mcsema_real_eip !16
  %XMM14_val = alloca i128, !mcsema_real_eip !16
  %XMM13_val = alloca i128, !mcsema_real_eip !16
  %XMM12_val = alloca i128, !mcsema_real_eip !16
  %XMM11_val = alloca i128, !mcsema_real_eip !16
  %XMM10_val = alloca i128, !mcsema_real_eip !16
  %XMM9_val = alloca i128, !mcsema_real_eip !16
  %XMM8_val = alloca i128, !mcsema_real_eip !16
  %XMM7_val = alloca i128, !mcsema_real_eip !16
  %XMM6_val = alloca i128, !mcsema_real_eip !16
  %XMM5_val = alloca i128, !mcsema_real_eip !16
  %XMM4_val = alloca i128, !mcsema_real_eip !16
  %XMM3_val = alloca i128, !mcsema_real_eip !16
  %XMM2_val = alloca i128, !mcsema_real_eip !16
  %XMM1_val = alloca i128, !mcsema_real_eip !16
  %XMM0_val = alloca i128, !mcsema_real_eip !16
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !16
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !16
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !16
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !16
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !16
  %FPU_IM_val = alloca i1, !mcsema_real_eip !16
  %FPU_DM_val = alloca i1, !mcsema_real_eip !16
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !16
  %FPU_OM_val = alloca i1, !mcsema_real_eip !16
  %FPU_UM_val = alloca i1, !mcsema_real_eip !16
  %FPU_PM_val = alloca i1, !mcsema_real_eip !16
  %FPU_PC_val = alloca i2, !mcsema_real_eip !16
  %FPU_RC_val = alloca i2, !mcsema_real_eip !16
  %FPU_X_val = alloca i1, !mcsema_real_eip !16
  %FPU_IE_val = alloca i1, !mcsema_real_eip !16
  %FPU_DE_val = alloca i1, !mcsema_real_eip !16
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !16
  %FPU_OE_val = alloca i1, !mcsema_real_eip !16
  %FPU_UE_val = alloca i1, !mcsema_real_eip !16
  %FPU_PE_val = alloca i1, !mcsema_real_eip !16
  %FPU_SF_val = alloca i1, !mcsema_real_eip !16
  %FPU_ES_val = alloca i1, !mcsema_real_eip !16
  %FPU_C0_val = alloca i1, !mcsema_real_eip !16
  %FPU_C1_val = alloca i1, !mcsema_real_eip !16
  %FPU_C2_val = alloca i1, !mcsema_real_eip !16
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !16
  %FPU_C3_val = alloca i1, !mcsema_real_eip !16
  %FPU_B_val = alloca i1, !mcsema_real_eip !16
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !16
  %DF_val = alloca i1, !mcsema_real_eip !16
  %OF_val = alloca i1, !mcsema_real_eip !16
  %SF_val = alloca i1, !mcsema_real_eip !16
  %CF_val = alloca i1, !mcsema_real_eip !16
  %AF_val = alloca i1, !mcsema_real_eip !16
  %PF_val = alloca i1, !mcsema_real_eip !16
  %ZF_val = alloca i1, !mcsema_real_eip !16
  %RIP_val = alloca i64, !mcsema_real_eip !16
  %R14_val = alloca i64, !mcsema_real_eip !16
  %R13_val = alloca i64, !mcsema_real_eip !16
  %R12_val = alloca i64, !mcsema_real_eip !16
  %R11_val = alloca i64, !mcsema_real_eip !16
  %R10_val = alloca i64, !mcsema_real_eip !16
  %R9_val = alloca i64, !mcsema_real_eip !16
  %R8_val = alloca i64, !mcsema_real_eip !16
  %RSP_val = alloca i64, !mcsema_real_eip !16
  %RBP_val = alloca i64, !mcsema_real_eip !16
  %RDI_val = alloca i64, !mcsema_real_eip !16
  %RSI_val = alloca i64, !mcsema_real_eip !16
  %RDX_val = alloca i64, !mcsema_real_eip !16
  %RCX_val = alloca i64, !mcsema_real_eip !16
  %RBX_val = alloca i64, !mcsema_real_eip !16
  %RAX_val = alloca i64, !mcsema_real_eip !16
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !16
  %1 = load i64* %RAX, !mcsema_real_eip !16
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !16
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !16
  %2 = load i64* %RBX, !mcsema_real_eip !16
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !16
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !16
  %3 = load i64* %RCX, !mcsema_real_eip !16
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !16
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !16
  %4 = load i64* %RDX, !mcsema_real_eip !16
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !16
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !16
  %5 = load i64* %RSI, !mcsema_real_eip !16
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !16
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !16
  %6 = load i64* %RDI, !mcsema_real_eip !16
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !16
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !16
  %7 = load i64* %RSP, !mcsema_real_eip !16
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !16
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !16
  %8 = load i64* %RBP, !mcsema_real_eip !16
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !16
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !16
  %9 = load i64* %R8, !mcsema_real_eip !16
  store i64 %9, i64* %R8_val, !mcsema_real_eip !16
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !16
  %10 = load i64* %R9, !mcsema_real_eip !16
  store i64 %10, i64* %R9_val, !mcsema_real_eip !16
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !16
  %11 = load i64* %R10, !mcsema_real_eip !16
  store i64 %11, i64* %R10_val, !mcsema_real_eip !16
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !16
  %12 = load i64* %R11, !mcsema_real_eip !16
  store i64 %12, i64* %R11_val, !mcsema_real_eip !16
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !16
  %13 = load i64* %R12, !mcsema_real_eip !16
  store i64 %13, i64* %R12_val, !mcsema_real_eip !16
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !16
  %14 = load i64* %R13, !mcsema_real_eip !16
  store i64 %14, i64* %R13_val, !mcsema_real_eip !16
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !16
  %15 = load i64* %R14, !mcsema_real_eip !16
  store i64 %15, i64* %R14_val, !mcsema_real_eip !16
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !16
  %16 = load i64* %R15, !mcsema_real_eip !16
  store i64 %16, i64* %R15_val, !mcsema_real_eip !16
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !16
  %17 = load i64* %RIP, !mcsema_real_eip !16
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !16
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !16
  %18 = load i1* %CF, align 1, !mcsema_real_eip !16
  store i1 %18, i1* %CF_val, !mcsema_real_eip !16
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !16
  %19 = load i1* %PF, align 1, !mcsema_real_eip !16
  store i1 %19, i1* %PF_val, !mcsema_real_eip !16
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !16
  %20 = load i1* %AF, align 1, !mcsema_real_eip !16
  store i1 %20, i1* %AF_val, !mcsema_real_eip !16
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !16
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !16
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !16
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !16
  %22 = load i1* %SF, align 1, !mcsema_real_eip !16
  store i1 %22, i1* %SF_val, !mcsema_real_eip !16
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !16
  %23 = load i1* %OF, align 1, !mcsema_real_eip !16
  store i1 %23, i1* %OF_val, !mcsema_real_eip !16
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !16
  %24 = load i1* %DF, align 1, !mcsema_real_eip !16
  store i1 %24, i1* %DF_val, !mcsema_real_eip !16
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !16
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !16
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !16
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !16
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !16
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !16
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !16
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !16
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !16
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !16
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !16
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !16
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !16
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !16
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !16
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !16
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !16
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !16
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !16
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !16
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !16
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !16
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !16
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !16
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !16
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !16
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !16
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !16
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !16
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !16
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !16
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !16
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !16
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !16
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !16
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !16
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !16
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !16
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !16
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !16
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !16
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !16
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !16
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !16
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !16
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !16
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !16
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !16
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !16
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !16
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !16
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !16
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !16
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !16
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !16
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !16
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !16
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !16
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !16
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !16
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !16
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !16
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !16
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !16
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !16
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !16
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !16
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !16
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !16
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !16
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !16
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !16
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !16
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !16
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !16
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !16
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !16
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !16
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !16
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !16
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !16
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !16
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !16
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !16
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !16
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !16
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !16
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !16
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !16
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !16
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !16
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !16
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !16
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !16
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !16
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !16
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !16
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !16
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !16
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !16
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !16
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !16
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !16
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !16
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !16
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !16
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !16
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !16
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !16
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !16
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !16
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !16
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !16
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !16
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !16
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !16
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !16
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !16
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !16
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !16
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !16
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !16
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !16
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !16
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !16
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !16
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !16
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !16
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !16
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !16
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !16
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !16
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !16
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !16
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !16
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !16
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !16
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !16
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !16
  %77 = load i64* %RBP_val, !mcsema_real_eip !16
  %78 = load i64* %RSP_val, !mcsema_real_eip !16
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !16
  store i64 %77, i64* %80, !mcsema_real_eip !16
  store i64 %79, i64* %RSP_val, !mcsema_real_eip !16
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !17
  %81 = add i64 %78, -24, !mcsema_real_eip !18
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !18
  %83 = load i64* %RDI_val, !mcsema_real_eip !18
  store i64 %83, i64* %82, !mcsema_real_eip !18
  %84 = load i64* %RBP_val, !mcsema_real_eip !19
  %85 = add i64 %84, -16, !mcsema_real_eip !19
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !19
  %87 = bitcast i64* %86 to i32*
  %88 = load i32* %87, !mcsema_real_eip !19
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %88, i32 20)
  %89 = extractvalue { i32, i1 } %uadd, 0
  %90 = xor i32 %89, %88, !mcsema_real_eip !20
  %91 = and i32 %90, 16
  %92 = icmp eq i32 %91, 0
  store i1 %92, i1* %AF_val, !mcsema_real_eip !20
  %93 = icmp slt i32 %89, 0
  store i1 %93, i1* %SF_val, !mcsema_real_eip !20
  %94 = icmp eq i32 %89, 0, !mcsema_real_eip !20
  store i1 %94, i1* %ZF_val, !mcsema_real_eip !20
  %95 = xor i32 %88, -2147483648, !mcsema_real_eip !20
  %96 = and i32 %90, %95, !mcsema_real_eip !20
  %97 = icmp slt i32 %96, 0
  store i1 %97, i1* %OF_val, !mcsema_real_eip !20
  %98 = trunc i32 %89 to i8, !mcsema_real_eip !20
  %99 = tail call i8 @llvm.ctpop.i8(i8 %98), !mcsema_real_eip !20
  %100 = and i8 %99, 1
  %101 = icmp eq i8 %100, 0
  store i1 %101, i1* %PF_val, !mcsema_real_eip !20
  %102 = extractvalue { i32, i1 } %uadd, 1
  store i1 %102, i1* %CF_val, !mcsema_real_eip !20
  %103 = zext i32 %89 to i64, !mcsema_real_eip !20
  store i64 %103, i64* %RAX_val, !mcsema_real_eip !20
  %104 = load i64* %RBP_val, !mcsema_real_eip !21
  %105 = add i64 %104, -24, !mcsema_real_eip !21
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !21
  %107 = bitcast i64* %106 to i32*
  store i32 %89, i32* %107, !mcsema_real_eip !21
  %108 = load i64* %RBP_val, !mcsema_real_eip !22
  %109 = add i64 %108, -12, !mcsema_real_eip !22
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !22
  %111 = bitcast i64* %110 to i32*
  %112 = load i32* %111, !mcsema_real_eip !22
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %112, i32 30)
  %113 = extractvalue { i32, i1 } %uadd70, 0
  %114 = xor i32 %113, %112, !mcsema_real_eip !23
  %115 = and i32 %114, 16
  %116 = icmp eq i32 %115, 0
  store i1 %116, i1* %AF_val, !mcsema_real_eip !23
  %117 = icmp slt i32 %113, 0
  store i1 %117, i1* %SF_val, !mcsema_real_eip !23
  %118 = icmp eq i32 %113, 0, !mcsema_real_eip !23
  store i1 %118, i1* %ZF_val, !mcsema_real_eip !23
  %119 = xor i32 %112, -2147483648, !mcsema_real_eip !23
  %120 = and i32 %114, %119, !mcsema_real_eip !23
  %121 = icmp slt i32 %120, 0
  store i1 %121, i1* %OF_val, !mcsema_real_eip !23
  %122 = trunc i32 %113 to i8, !mcsema_real_eip !23
  %123 = tail call i8 @llvm.ctpop.i8(i8 %122), !mcsema_real_eip !23
  %124 = and i8 %123, 1
  %125 = icmp eq i8 %124, 0
  store i1 %125, i1* %PF_val, !mcsema_real_eip !23
  %126 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %126, i1* %CF_val, !mcsema_real_eip !23
  %127 = zext i32 %113 to i64, !mcsema_real_eip !23
  store i64 %127, i64* %RAX_val, !mcsema_real_eip !23
  %128 = load i64* %RBP_val, !mcsema_real_eip !24
  %129 = add i64 %128, -20, !mcsema_real_eip !24
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !24
  %131 = bitcast i64* %130 to i32*
  store i32 %113, i32* %131, !mcsema_real_eip !24
  %132 = load i64* %RBP_val, !mcsema_real_eip !25
  %133 = add i64 %132, -24, !mcsema_real_eip !25
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !25
  %135 = load i64* %134, !mcsema_real_eip !25
  store i64 %135, i64* %RDI_val, !mcsema_real_eip !25
  %136 = add i64 %132, -8, !mcsema_real_eip !26
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !26
  store i64 %135, i64* %137, !mcsema_real_eip !26
  %138 = load i64* %RBP_val, !mcsema_real_eip !27
  %139 = add i64 %138, -8, !mcsema_real_eip !27
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !27
  %141 = load i64* %140, !mcsema_real_eip !27
  store i64 %141, i64* %RAX_val, !mcsema_real_eip !27
  %142 = load i64* %RSP_val, !mcsema_real_eip !28
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !28
  %144 = load i64* %143, !mcsema_real_eip !28
  store i64 %144, i64* %RBP_val, !mcsema_real_eip !28
  %145 = add i64 %142, 16, !mcsema_real_eip !29
  store i64 %145, i64* %RSP_val, !mcsema_real_eip !29
  %146 = load i64* %RAX_val, !mcsema_real_eip !29
  store i64 %146, i64* %RAX, !mcsema_real_eip !29
  %147 = load i64* %RBX_val, !mcsema_real_eip !29
  store i64 %147, i64* %RBX, !mcsema_real_eip !29
  %148 = load i64* %RCX_val, !mcsema_real_eip !29
  store i64 %148, i64* %RCX, !mcsema_real_eip !29
  %149 = load i64* %RDX_val, !mcsema_real_eip !29
  store i64 %149, i64* %RDX, !mcsema_real_eip !29
  %150 = load i64* %RSI_val, !mcsema_real_eip !29
  store i64 %150, i64* %RSI, !mcsema_real_eip !29
  %151 = load i64* %RDI_val, !mcsema_real_eip !29
  store i64 %151, i64* %RDI, !mcsema_real_eip !29
  %152 = load i64* %RSP_val, !mcsema_real_eip !29
  store i64 %152, i64* %RSP, !mcsema_real_eip !29
  %153 = load i64* %RBP_val, !mcsema_real_eip !29
  store i64 %153, i64* %RBP, !mcsema_real_eip !29
  %154 = load i64* %R8_val, !mcsema_real_eip !29
  store i64 %154, i64* %R8, !mcsema_real_eip !29
  %155 = load i64* %R9_val, !mcsema_real_eip !29
  store i64 %155, i64* %R9, !mcsema_real_eip !29
  %156 = load i64* %R10_val, !mcsema_real_eip !29
  store i64 %156, i64* %R10, !mcsema_real_eip !29
  %157 = load i64* %R11_val, !mcsema_real_eip !29
  store i64 %157, i64* %R11, !mcsema_real_eip !29
  %158 = load i64* %R12_val, !mcsema_real_eip !29
  store i64 %158, i64* %R12, !mcsema_real_eip !29
  %159 = load i64* %R13_val, !mcsema_real_eip !29
  store i64 %159, i64* %R13, !mcsema_real_eip !29
  %160 = load i64* %R14_val, !mcsema_real_eip !29
  store i64 %160, i64* %R14, !mcsema_real_eip !29
  %161 = load i64* %R15_val, !mcsema_real_eip !29
  store i64 %161, i64* %R15, !mcsema_real_eip !29
  %162 = load i64* %RIP_val, !mcsema_real_eip !29
  store i64 %162, i64* %RIP, !mcsema_real_eip !29
  %163 = load i1* %CF_val, !mcsema_real_eip !29
  store i1 %163, i1* %CF, align 1, !mcsema_real_eip !29
  %164 = load i1* %PF_val, !mcsema_real_eip !29
  store i1 %164, i1* %PF, align 1, !mcsema_real_eip !29
  %165 = load i1* %AF_val, !mcsema_real_eip !29
  store i1 %165, i1* %AF, align 1, !mcsema_real_eip !29
  %166 = load i1* %ZF_val, !mcsema_real_eip !29
  store i1 %166, i1* %ZF, align 1, !mcsema_real_eip !29
  %167 = load i1* %SF_val, !mcsema_real_eip !29
  store i1 %167, i1* %SF, align 1, !mcsema_real_eip !29
  %168 = load i1* %OF_val, !mcsema_real_eip !29
  store i1 %168, i1* %OF, align 1, !mcsema_real_eip !29
  %169 = load i1* %DF_val, !mcsema_real_eip !29
  store i1 %169, i1* %DF, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !29
  %170 = load i1* %FPU_B_val, !mcsema_real_eip !29
  store i1 %170, i1* %FPU_B, align 1, !mcsema_real_eip !29
  %171 = load i1* %FPU_C3_val, !mcsema_real_eip !29
  store i1 %171, i1* %FPU_C3, align 1, !mcsema_real_eip !29
  %172 = load i3* %FPU_TOP_val, !mcsema_real_eip !29
  store i3 %172, i3* %FPU_TOP, align 1, !mcsema_real_eip !29
  %173 = load i1* %FPU_C2_val, !mcsema_real_eip !29
  store i1 %173, i1* %FPU_C2, align 1, !mcsema_real_eip !29
  %174 = load i1* %FPU_C1_val, !mcsema_real_eip !29
  store i1 %174, i1* %FPU_C1, align 1, !mcsema_real_eip !29
  %175 = load i1* %FPU_C0_val, !mcsema_real_eip !29
  store i1 %175, i1* %FPU_C0, align 1, !mcsema_real_eip !29
  %176 = load i1* %FPU_ES_val, !mcsema_real_eip !29
  store i1 %176, i1* %FPU_ES, align 1, !mcsema_real_eip !29
  %177 = load i1* %FPU_SF_val, !mcsema_real_eip !29
  store i1 %177, i1* %FPU_SF, align 1, !mcsema_real_eip !29
  %178 = load i1* %FPU_PE_val, !mcsema_real_eip !29
  store i1 %178, i1* %FPU_PE, align 1, !mcsema_real_eip !29
  %179 = load i1* %FPU_UE_val, !mcsema_real_eip !29
  store i1 %179, i1* %FPU_UE, align 1, !mcsema_real_eip !29
  %180 = load i1* %FPU_OE_val, !mcsema_real_eip !29
  store i1 %180, i1* %FPU_OE, align 1, !mcsema_real_eip !29
  %181 = load i1* %FPU_ZE_val, !mcsema_real_eip !29
  store i1 %181, i1* %FPU_ZE, align 1, !mcsema_real_eip !29
  %182 = load i1* %FPU_DE_val, !mcsema_real_eip !29
  store i1 %182, i1* %FPU_DE, align 1, !mcsema_real_eip !29
  %183 = load i1* %FPU_IE_val, !mcsema_real_eip !29
  store i1 %183, i1* %FPU_IE, align 1, !mcsema_real_eip !29
  %184 = load i1* %FPU_X_val, !mcsema_real_eip !29
  store i1 %184, i1* %FPU_X, align 1, !mcsema_real_eip !29
  %185 = load i2* %FPU_RC_val, !mcsema_real_eip !29
  store i2 %185, i2* %FPU_RC, align 1, !mcsema_real_eip !29
  %186 = load i2* %FPU_PC_val, !mcsema_real_eip !29
  store i2 %186, i2* %FPU_PC, align 1, !mcsema_real_eip !29
  %187 = load i1* %FPU_PM_val, !mcsema_real_eip !29
  store i1 %187, i1* %FPU_PM, align 1, !mcsema_real_eip !29
  %188 = load i1* %FPU_UM_val, !mcsema_real_eip !29
  store i1 %188, i1* %FPU_UM, align 1, !mcsema_real_eip !29
  %189 = load i1* %FPU_OM_val, !mcsema_real_eip !29
  store i1 %189, i1* %FPU_OM, align 1, !mcsema_real_eip !29
  %190 = load i1* %FPU_ZM_val, !mcsema_real_eip !29
  store i1 %190, i1* %FPU_ZM, align 1, !mcsema_real_eip !29
  %191 = load i1* %FPU_DM_val, !mcsema_real_eip !29
  store i1 %191, i1* %FPU_DM, align 1, !mcsema_real_eip !29
  %192 = load i1* %FPU_IM_val, !mcsema_real_eip !29
  store i1 %192, i1* %FPU_IM, align 1, !mcsema_real_eip !29
  %193 = load i64* %53, align 4
  store i64 %193, i64* %52, align 4
  %194 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !29
  store i16 %194, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !29
  %195 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !29
  store i64 %195, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !29
  %196 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !29
  store i16 %196, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !29
  %197 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !29
  store i64 %197, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !29
  %198 = load i128* %XMM0_val, !mcsema_real_eip !29
  store i128 %198, i128* %XMM0, align 1, !mcsema_real_eip !29
  %199 = load i128* %XMM1_val, !mcsema_real_eip !29
  store i128 %199, i128* %XMM1, align 1, !mcsema_real_eip !29
  %200 = load i128* %XMM2_val, !mcsema_real_eip !29
  store i128 %200, i128* %XMM2, align 1, !mcsema_real_eip !29
  %201 = load i128* %XMM3_val, !mcsema_real_eip !29
  store i128 %201, i128* %XMM3, align 1, !mcsema_real_eip !29
  %202 = load i128* %XMM4_val, !mcsema_real_eip !29
  store i128 %202, i128* %XMM4, align 1, !mcsema_real_eip !29
  %203 = load i128* %XMM5_val, !mcsema_real_eip !29
  store i128 %203, i128* %XMM5, align 1, !mcsema_real_eip !29
  %204 = load i128* %XMM6_val, !mcsema_real_eip !29
  store i128 %204, i128* %XMM6, align 1, !mcsema_real_eip !29
  %205 = load i128* %XMM7_val, !mcsema_real_eip !29
  store i128 %205, i128* %XMM7, align 1, !mcsema_real_eip !29
  %206 = load i128* %XMM8_val, !mcsema_real_eip !29
  store i128 %206, i128* %XMM8, align 1, !mcsema_real_eip !29
  %207 = load i128* %XMM9_val, !mcsema_real_eip !29
  store i128 %207, i128* %XMM9, align 1, !mcsema_real_eip !29
  %208 = load i128* %XMM10_val, !mcsema_real_eip !29
  store i128 %208, i128* %XMM10, align 1, !mcsema_real_eip !29
  %209 = load i128* %XMM11_val, !mcsema_real_eip !29
  store i128 %209, i128* %XMM11, align 1, !mcsema_real_eip !29
  %210 = load i128* %XMM12_val, !mcsema_real_eip !29
  store i128 %210, i128* %XMM12, align 1, !mcsema_real_eip !29
  %211 = load i128* %XMM13_val, !mcsema_real_eip !29
  store i128 %211, i128* %XMM13, align 1, !mcsema_real_eip !29
  %212 = load i128* %XMM14_val, !mcsema_real_eip !29
  store i128 %212, i128* %XMM14, align 1, !mcsema_real_eip !29
  %213 = load i128* %XMM15_val, !mcsema_real_eip !29
  store i128 %213, i128* %XMM15, align 1, !mcsema_real_eip !29
  %214 = load i64* %STACK_BASE_val, !mcsema_real_eip !29
  store i64 %214, i64* %STACK_BASE, align 1, !mcsema_real_eip !29
  %215 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !29
  store i64 %215, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !29
  ret void, !mcsema_real_eip !29
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
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = metadata !{i64 4, [16 x i8] c"\09subq\09$32, %rsp\00"}
!5 = metadata !{i64 8, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!6 = metadata !{i64 15, [22 x i8] c"\09movl\09$100, -16(%rbp)\00"}
!7 = metadata !{i64 22, [22 x i8] c"\09movl\09$200, -12(%rbp)\00"}
!8 = metadata !{i64 29, [22 x i8] c"\09movq\09-16(%rbp), %rdi\00"}
!9 = metadata !{i64 33, [10 x i8] c"\09callq\0926\00"}
!10 = metadata !{i64 38, [15 x i8] c"\09movl\09$0, %ecx\00"}
!11 = metadata !{i64 43, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!12 = metadata !{i64 47, [17 x i8] c"\09movl\09%ecx, %eax\00"}
!13 = metadata !{i64 49, [16 x i8] c"\09addq\09$32, %rsp\00"}
!14 = metadata !{i64 53, [11 x i8] c"\09popq\09%rbp\00"}
!15 = metadata !{i64 54, [6 x i8] c"\09retq\00"}
!16 = metadata !{i64 64, [12 x i8] c"\09pushq\09%rbp\00"}
!17 = metadata !{i64 65, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!18 = metadata !{i64 68, [22 x i8] c"\09movq\09%rdi, -16(%rbp)\00"}
!19 = metadata !{i64 72, [22 x i8] c"\09movl\09-16(%rbp), %eax\00"}
!20 = metadata !{i64 75, [16 x i8] c"\09addl\09$20, %eax\00"}
!21 = metadata !{i64 80, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!22 = metadata !{i64 83, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!23 = metadata !{i64 86, [16 x i8] c"\09addl\09$30, %eax\00"}
!24 = metadata !{i64 91, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!25 = metadata !{i64 94, [22 x i8] c"\09movq\09-24(%rbp), %rdi\00"}
!26 = metadata !{i64 98, [21 x i8] c"\09movq\09%rdi, -8(%rbp)\00"}
!27 = metadata !{i64 102, [21 x i8] c"\09movq\09-8(%rbp), %rax\00"}
!28 = metadata !{i64 106, [11 x i8] c"\09popq\09%rbp\00"}
!29 = metadata !{i64 107, [6 x i8] c"\09retq\00"}
