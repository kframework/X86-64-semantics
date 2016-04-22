; ModuleID = 'test_10.bc'
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
  store i64 %79, i64* %RSP_val, !mcsema_real_eip !2
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !3
  %81 = add i64 %78, -48, !mcsema_real_eip !4
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !4
  %83 = load i64* %RDI_val, !mcsema_real_eip !4
  store i64 %83, i64* %82, !mcsema_real_eip !4
  %84 = load i64* %RBP_val, !mcsema_real_eip !5
  %85 = add i64 %84, -48, !mcsema_real_eip !5
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !5
  %87 = load i64* %RSI_val, !mcsema_real_eip !5
  store i64 %87, i64* %86, !mcsema_real_eip !5
  %88 = load i64* %RBP_val, !mcsema_real_eip !6
  %89 = add i64 %88, -40, !mcsema_real_eip !6
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !6
  %91 = load i64* %90, !mcsema_real_eip !6
  store i64 %91, i64* %RAX_val, !mcsema_real_eip !6
  %92 = add i64 %88, -8, !mcsema_real_eip !7
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !7
  store i64 %91, i64* %93, !mcsema_real_eip !7
  %94 = load i64* %RBP_val, !mcsema_real_eip !8
  %95 = add i64 %94, -48, !mcsema_real_eip !8
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !8
  %97 = load i64* %96, !mcsema_real_eip !8
  store i64 %97, i64* %RAX_val, !mcsema_real_eip !8
  %98 = add i64 %94, -16, !mcsema_real_eip !9
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !9
  store i64 %97, i64* %99, !mcsema_real_eip !9
  %100 = load i64* %RBP_val, !mcsema_real_eip !10
  %101 = add i64 %100, -8, !mcsema_real_eip !10
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !10
  %103 = load i64* %102, !mcsema_real_eip !10
  store i64 %103, i64* %RAX_val, !mcsema_real_eip !10
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !11
  %105 = bitcast i64* %104 to i8*
  %106 = load i8* %105, !mcsema_real_eip !11
  %107 = zext i8 %106 to i64
  store i64 %107, i64* %RAX_val, !mcsema_real_eip !11
  %108 = load i64* %RBP_val, !mcsema_real_eip !12
  %109 = add i64 %108, -17, !mcsema_real_eip !12
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !12
  %111 = bitcast i64* %110 to i8*
  store i8 %106, i8* %111, !mcsema_real_eip !12
  %112 = load i64* %RBP_val, !mcsema_real_eip !13
  %113 = add i64 %112, -17, !mcsema_real_eip !13
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !13
  %115 = bitcast i64* %114 to i8*
  %116 = load i8* %115, !mcsema_real_eip !13
  store i1 false, i1* %AF_val, !mcsema_real_eip !13
  %117 = tail call i8 @llvm.ctpop.i8(i8 %116), !mcsema_real_eip !13
  %118 = and i8 %117, 1
  %119 = icmp eq i8 %118, 0
  store i1 %119, i1* %PF_val, !mcsema_real_eip !13
  %120 = icmp eq i8 %116, 0, !mcsema_real_eip !13
  store i1 %120, i1* %ZF_val, !mcsema_real_eip !13
  %121 = icmp slt i8 %116, 0
  store i1 %121, i1* %SF_val, !mcsema_real_eip !13
  store i1 false, i1* %CF_val, !mcsema_real_eip !13
  store i1 false, i1* %OF_val, !mcsema_real_eip !13
  br i1 %120, label %block_0x5b, label %block_0x28.preheader, !mcsema_real_eip !14

block_0x28.preheader:                             ; preds = %entry
  br label %block_0x28

block_0x28:                                       ; preds = %block_0x28.backedge, %block_0x28.preheader
  %122 = load i64* %RBP_val, !mcsema_real_eip !15
  %123 = add i64 %122, -17, !mcsema_real_eip !15
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !15
  %125 = bitcast i64* %124 to i8*
  %126 = load i8* %125, !mcsema_real_eip !15
  %127 = add i8 %126, -47
  %128 = xor i8 %127, %126, !mcsema_real_eip !15
  %129 = and i8 %128, 16, !mcsema_real_eip !15
  %130 = icmp ne i8 %129, 0, !mcsema_real_eip !15
  store i1 %130, i1* %AF_val, !mcsema_real_eip !15
  %131 = tail call i8 @llvm.ctpop.i8(i8 %127), !mcsema_real_eip !15
  %132 = and i8 %131, 1
  %133 = icmp eq i8 %132, 0
  store i1 %133, i1* %PF_val, !mcsema_real_eip !15
  %134 = icmp eq i8 %127, 0, !mcsema_real_eip !15
  store i1 %134, i1* %ZF_val, !mcsema_real_eip !15
  %135 = icmp slt i8 %127, 0
  store i1 %135, i1* %SF_val, !mcsema_real_eip !15
  %136 = icmp ult i8 %126, 47, !mcsema_real_eip !15
  store i1 %136, i1* %CF_val, !mcsema_real_eip !15
  %137 = and i8 %128, %126, !mcsema_real_eip !15
  %138 = icmp slt i8 %137, 0
  store i1 %138, i1* %OF_val, !mcsema_real_eip !15
  %139 = load i1* %ZF_val, !mcsema_real_eip !16
  %140 = load i64* %RBP_val, !mcsema_real_eip !17
  %141 = add i64 %140, -16, !mcsema_real_eip !17
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !17
  %143 = load i64* %142, !mcsema_real_eip !17
  store i64 %143, i64* %RAX_val, !mcsema_real_eip !17
  br i1 %139, label %block_0x2e, label %block_0x37, !mcsema_real_eip !16

block_0x5b.loopexit:                              ; preds = %block_0x2e, %block_0x37
  br label %block_0x5b

block_0x5b:                                       ; preds = %block_0x5b.loopexit, %entry
  %144 = load i64* %RSP_val, !mcsema_real_eip !18
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !18
  %146 = load i64* %145, !mcsema_real_eip !18
  store i64 %146, i64* %RBP_val, !mcsema_real_eip !18
  %147 = add i64 %144, 16, !mcsema_real_eip !19
  store i64 %147, i64* %RSP_val, !mcsema_real_eip !19
  %148 = load i64* %RAX_val, !mcsema_real_eip !19
  store i64 %148, i64* %RAX, !mcsema_real_eip !19
  %149 = load i64* %RBX_val, !mcsema_real_eip !19
  store i64 %149, i64* %RBX, !mcsema_real_eip !19
  %150 = load i64* %RCX_val, !mcsema_real_eip !19
  store i64 %150, i64* %RCX, !mcsema_real_eip !19
  %151 = load i64* %RDX_val, !mcsema_real_eip !19
  store i64 %151, i64* %RDX, !mcsema_real_eip !19
  %152 = load i64* %RSI_val, !mcsema_real_eip !19
  store i64 %152, i64* %RSI, !mcsema_real_eip !19
  %153 = load i64* %RDI_val, !mcsema_real_eip !19
  store i64 %153, i64* %RDI, !mcsema_real_eip !19
  %154 = load i64* %RSP_val, !mcsema_real_eip !19
  store i64 %154, i64* %RSP, !mcsema_real_eip !19
  %155 = load i64* %RBP_val, !mcsema_real_eip !19
  store i64 %155, i64* %RBP, !mcsema_real_eip !19
  %156 = load i64* %R8_val, !mcsema_real_eip !19
  store i64 %156, i64* %R8, !mcsema_real_eip !19
  %157 = load i64* %R9_val, !mcsema_real_eip !19
  store i64 %157, i64* %R9, !mcsema_real_eip !19
  %158 = load i64* %R10_val, !mcsema_real_eip !19
  store i64 %158, i64* %R10, !mcsema_real_eip !19
  %159 = load i64* %R11_val, !mcsema_real_eip !19
  store i64 %159, i64* %R11, !mcsema_real_eip !19
  %160 = load i64* %R12_val, !mcsema_real_eip !19
  store i64 %160, i64* %R12, !mcsema_real_eip !19
  %161 = load i64* %R13_val, !mcsema_real_eip !19
  store i64 %161, i64* %R13, !mcsema_real_eip !19
  %162 = load i64* %R14_val, !mcsema_real_eip !19
  store i64 %162, i64* %R14, !mcsema_real_eip !19
  %163 = load i64* %R15_val, !mcsema_real_eip !19
  store i64 %163, i64* %R15, !mcsema_real_eip !19
  %164 = load i64* %RIP_val, !mcsema_real_eip !19
  store i64 %164, i64* %RIP, !mcsema_real_eip !19
  %165 = load i1* %CF_val, !mcsema_real_eip !19
  store i1 %165, i1* %CF, align 1, !mcsema_real_eip !19
  %166 = load i1* %PF_val, !mcsema_real_eip !19
  store i1 %166, i1* %PF, align 1, !mcsema_real_eip !19
  %167 = load i1* %AF_val, !mcsema_real_eip !19
  store i1 %167, i1* %AF, align 1, !mcsema_real_eip !19
  %168 = load i1* %ZF_val, !mcsema_real_eip !19
  store i1 %168, i1* %ZF, align 1, !mcsema_real_eip !19
  %169 = load i1* %SF_val, !mcsema_real_eip !19
  store i1 %169, i1* %SF, align 1, !mcsema_real_eip !19
  %170 = load i1* %OF_val, !mcsema_real_eip !19
  store i1 %170, i1* %OF, align 1, !mcsema_real_eip !19
  %171 = load i1* %DF_val, !mcsema_real_eip !19
  store i1 %171, i1* %DF, align 1, !mcsema_real_eip !19
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !19
  %172 = load i1* %FPU_B_val, !mcsema_real_eip !19
  store i1 %172, i1* %FPU_B, align 1, !mcsema_real_eip !19
  %173 = load i1* %FPU_C3_val, !mcsema_real_eip !19
  store i1 %173, i1* %FPU_C3, align 1, !mcsema_real_eip !19
  %174 = load i3* %FPU_TOP_val, !mcsema_real_eip !19
  store i3 %174, i3* %FPU_TOP, align 1, !mcsema_real_eip !19
  %175 = load i1* %FPU_C2_val, !mcsema_real_eip !19
  store i1 %175, i1* %FPU_C2, align 1, !mcsema_real_eip !19
  %176 = load i1* %FPU_C1_val, !mcsema_real_eip !19
  store i1 %176, i1* %FPU_C1, align 1, !mcsema_real_eip !19
  %177 = load i1* %FPU_C0_val, !mcsema_real_eip !19
  store i1 %177, i1* %FPU_C0, align 1, !mcsema_real_eip !19
  %178 = load i1* %FPU_ES_val, !mcsema_real_eip !19
  store i1 %178, i1* %FPU_ES, align 1, !mcsema_real_eip !19
  %179 = load i1* %FPU_SF_val, !mcsema_real_eip !19
  store i1 %179, i1* %FPU_SF, align 1, !mcsema_real_eip !19
  %180 = load i1* %FPU_PE_val, !mcsema_real_eip !19
  store i1 %180, i1* %FPU_PE, align 1, !mcsema_real_eip !19
  %181 = load i1* %FPU_UE_val, !mcsema_real_eip !19
  store i1 %181, i1* %FPU_UE, align 1, !mcsema_real_eip !19
  %182 = load i1* %FPU_OE_val, !mcsema_real_eip !19
  store i1 %182, i1* %FPU_OE, align 1, !mcsema_real_eip !19
  %183 = load i1* %FPU_ZE_val, !mcsema_real_eip !19
  store i1 %183, i1* %FPU_ZE, align 1, !mcsema_real_eip !19
  %184 = load i1* %FPU_DE_val, !mcsema_real_eip !19
  store i1 %184, i1* %FPU_DE, align 1, !mcsema_real_eip !19
  %185 = load i1* %FPU_IE_val, !mcsema_real_eip !19
  store i1 %185, i1* %FPU_IE, align 1, !mcsema_real_eip !19
  %186 = load i1* %FPU_X_val, !mcsema_real_eip !19
  store i1 %186, i1* %FPU_X, align 1, !mcsema_real_eip !19
  %187 = load i2* %FPU_RC_val, !mcsema_real_eip !19
  store i2 %187, i2* %FPU_RC, align 1, !mcsema_real_eip !19
  %188 = load i2* %FPU_PC_val, !mcsema_real_eip !19
  store i2 %188, i2* %FPU_PC, align 1, !mcsema_real_eip !19
  %189 = load i1* %FPU_PM_val, !mcsema_real_eip !19
  store i1 %189, i1* %FPU_PM, align 1, !mcsema_real_eip !19
  %190 = load i1* %FPU_UM_val, !mcsema_real_eip !19
  store i1 %190, i1* %FPU_UM, align 1, !mcsema_real_eip !19
  %191 = load i1* %FPU_OM_val, !mcsema_real_eip !19
  store i1 %191, i1* %FPU_OM, align 1, !mcsema_real_eip !19
  %192 = load i1* %FPU_ZM_val, !mcsema_real_eip !19
  store i1 %192, i1* %FPU_ZM, align 1, !mcsema_real_eip !19
  %193 = load i1* %FPU_DM_val, !mcsema_real_eip !19
  store i1 %193, i1* %FPU_DM, align 1, !mcsema_real_eip !19
  %194 = load i1* %FPU_IM_val, !mcsema_real_eip !19
  store i1 %194, i1* %FPU_IM, align 1, !mcsema_real_eip !19
  %195 = load i64* %53, align 4
  store i64 %195, i64* %52, align 4
  %196 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !19
  store i16 %196, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !19
  %197 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !19
  store i64 %197, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !19
  %198 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !19
  store i16 %198, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !19
  %199 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !19
  store i64 %199, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !19
  %200 = load i128* %XMM0_val, !mcsema_real_eip !19
  store i128 %200, i128* %XMM0, align 1, !mcsema_real_eip !19
  %201 = load i128* %XMM1_val, !mcsema_real_eip !19
  store i128 %201, i128* %XMM1, align 1, !mcsema_real_eip !19
  %202 = load i128* %XMM2_val, !mcsema_real_eip !19
  store i128 %202, i128* %XMM2, align 1, !mcsema_real_eip !19
  %203 = load i128* %XMM3_val, !mcsema_real_eip !19
  store i128 %203, i128* %XMM3, align 1, !mcsema_real_eip !19
  %204 = load i128* %XMM4_val, !mcsema_real_eip !19
  store i128 %204, i128* %XMM4, align 1, !mcsema_real_eip !19
  %205 = load i128* %XMM5_val, !mcsema_real_eip !19
  store i128 %205, i128* %XMM5, align 1, !mcsema_real_eip !19
  %206 = load i128* %XMM6_val, !mcsema_real_eip !19
  store i128 %206, i128* %XMM6, align 1, !mcsema_real_eip !19
  %207 = load i128* %XMM7_val, !mcsema_real_eip !19
  store i128 %207, i128* %XMM7, align 1, !mcsema_real_eip !19
  %208 = load i128* %XMM8_val, !mcsema_real_eip !19
  store i128 %208, i128* %XMM8, align 1, !mcsema_real_eip !19
  %209 = load i128* %XMM9_val, !mcsema_real_eip !19
  store i128 %209, i128* %XMM9, align 1, !mcsema_real_eip !19
  %210 = load i128* %XMM10_val, !mcsema_real_eip !19
  store i128 %210, i128* %XMM10, align 1, !mcsema_real_eip !19
  %211 = load i128* %XMM11_val, !mcsema_real_eip !19
  store i128 %211, i128* %XMM11, align 1, !mcsema_real_eip !19
  %212 = load i128* %XMM12_val, !mcsema_real_eip !19
  store i128 %212, i128* %XMM12, align 1, !mcsema_real_eip !19
  %213 = load i128* %XMM13_val, !mcsema_real_eip !19
  store i128 %213, i128* %XMM13, align 1, !mcsema_real_eip !19
  %214 = load i128* %XMM14_val, !mcsema_real_eip !19
  store i128 %214, i128* %XMM14, align 1, !mcsema_real_eip !19
  %215 = load i128* %XMM15_val, !mcsema_real_eip !19
  store i128 %215, i128* %XMM15, align 1, !mcsema_real_eip !19
  %216 = load i64* %STACK_BASE_val, !mcsema_real_eip !19
  store i64 %216, i64* %STACK_BASE, align 1, !mcsema_real_eip !19
  %217 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !19
  store i64 %217, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !19
  ret void, !mcsema_real_eip !19

block_0x37:                                       ; preds = %block_0x28
  %218 = load i64* %RBP_val, !mcsema_real_eip !20
  %219 = add i64 %218, -17, !mcsema_real_eip !20
  %220 = inttoptr i64 %219 to i64*, !mcsema_real_eip !20
  %221 = bitcast i64* %220 to i8*
  %222 = load i8* %221, !mcsema_real_eip !20
  %223 = zext i8 %222 to i64
  store i64 %223, i64* %RDX_val, !mcsema_real_eip !20
  %224 = load i64* %RAX_val, !mcsema_real_eip !21
  %225 = inttoptr i64 %224 to i64*, !mcsema_real_eip !21
  %226 = bitcast i64* %225 to i8*
  store i8 %222, i8* %226, !mcsema_real_eip !21
  %227 = load i64* %RBP_val, !mcsema_real_eip !22
  %228 = add i64 %227, -8, !mcsema_real_eip !22
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !22
  %230 = load i64* %229, !mcsema_real_eip !22
  store i64 %230, i64* %RAX_val, !mcsema_real_eip !22
  %231 = inttoptr i64 %230 to i64*, !mcsema_real_eip !23
  %232 = bitcast i64* %231 to i8*
  %233 = load i8* %232, !mcsema_real_eip !23
  %234 = zext i8 %233 to i64
  store i64 %234, i64* %RAX_val, !mcsema_real_eip !23
  %235 = load i64* %RBP_val, !mcsema_real_eip !24
  %236 = add i64 %235, -17, !mcsema_real_eip !24
  %237 = inttoptr i64 %236 to i64*, !mcsema_real_eip !24
  %238 = bitcast i64* %237 to i8*
  store i8 %233, i8* %238, !mcsema_real_eip !24
  %239 = load i64* %RBP_val, !mcsema_real_eip !13
  %240 = add i64 %239, -17, !mcsema_real_eip !13
  %241 = inttoptr i64 %240 to i64*, !mcsema_real_eip !13
  %242 = bitcast i64* %241 to i8*
  %243 = load i8* %242, !mcsema_real_eip !13
  store i1 false, i1* %AF_val, !mcsema_real_eip !13
  %244 = tail call i8 @llvm.ctpop.i8(i8 %243), !mcsema_real_eip !13
  %245 = and i8 %244, 1
  %246 = icmp eq i8 %245, 0
  store i1 %246, i1* %PF_val, !mcsema_real_eip !13
  %247 = icmp eq i8 %243, 0, !mcsema_real_eip !13
  store i1 %247, i1* %ZF_val, !mcsema_real_eip !13
  %248 = icmp slt i8 %243, 0
  store i1 %248, i1* %SF_val, !mcsema_real_eip !13
  store i1 false, i1* %CF_val, !mcsema_real_eip !13
  store i1 false, i1* %OF_val, !mcsema_real_eip !13
  br i1 %247, label %block_0x5b.loopexit, label %block_0x28.backedge, !mcsema_real_eip !14

block_0x2e:                                       ; preds = %block_0x28
  %249 = inttoptr i64 %143 to i64*, !mcsema_real_eip !25
  %250 = bitcast i64* %249 to i8*
  store i8 92, i8* %250, !mcsema_real_eip !25
  %251 = load i64* %RBP_val, !mcsema_real_eip !22
  %252 = add i64 %251, -8, !mcsema_real_eip !22
  %253 = inttoptr i64 %252 to i64*, !mcsema_real_eip !22
  %254 = load i64* %253, !mcsema_real_eip !22
  store i64 %254, i64* %RAX_val, !mcsema_real_eip !22
  %255 = inttoptr i64 %254 to i64*, !mcsema_real_eip !23
  %256 = bitcast i64* %255 to i8*
  %257 = load i8* %256, !mcsema_real_eip !23
  %258 = zext i8 %257 to i64
  store i64 %258, i64* %RAX_val, !mcsema_real_eip !23
  %259 = load i64* %RBP_val, !mcsema_real_eip !24
  %260 = add i64 %259, -17, !mcsema_real_eip !24
  %261 = inttoptr i64 %260 to i64*, !mcsema_real_eip !24
  %262 = bitcast i64* %261 to i8*
  store i8 %257, i8* %262, !mcsema_real_eip !24
  %263 = load i64* %RBP_val, !mcsema_real_eip !13
  %264 = add i64 %263, -17, !mcsema_real_eip !13
  %265 = inttoptr i64 %264 to i64*, !mcsema_real_eip !13
  %266 = bitcast i64* %265 to i8*
  %267 = load i8* %266, !mcsema_real_eip !13
  store i1 false, i1* %AF_val, !mcsema_real_eip !13
  %268 = tail call i8 @llvm.ctpop.i8(i8 %267), !mcsema_real_eip !13
  %269 = and i8 %268, 1
  %270 = icmp eq i8 %269, 0
  store i1 %270, i1* %PF_val, !mcsema_real_eip !13
  %271 = icmp eq i8 %267, 0, !mcsema_real_eip !13
  store i1 %271, i1* %ZF_val, !mcsema_real_eip !13
  %272 = icmp slt i8 %267, 0
  store i1 %272, i1* %SF_val, !mcsema_real_eip !13
  store i1 false, i1* %CF_val, !mcsema_real_eip !13
  store i1 false, i1* %OF_val, !mcsema_real_eip !13
  br i1 %271, label %block_0x5b.loopexit, label %block_0x28.backedge, !mcsema_real_eip !14

block_0x28.backedge:                              ; preds = %block_0x2e, %block_0x37
  br label %block_0x28
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

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = metadata !{i64 4, [22 x i8] c"\09movq\09%rdi, -40(%rbp)\00"}
!5 = metadata !{i64 8, [22 x i8] c"\09movq\09%rsi, -48(%rbp)\00"}
!6 = metadata !{i64 12, [22 x i8] c"\09movq\09-40(%rbp), %rax\00"}
!7 = metadata !{i64 16, [21 x i8] c"\09movq\09%rax, -8(%rbp)\00"}
!8 = metadata !{i64 20, [22 x i8] c"\09movq\09-48(%rbp), %rax\00"}
!9 = metadata !{i64 24, [22 x i8] c"\09movq\09%rax, -16(%rbp)\00"}
!10 = metadata !{i64 28, [21 x i8] c"\09movq\09-8(%rbp), %rax\00"}
!11 = metadata !{i64 32, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!12 = metadata !{i64 35, [21 x i8] c"\09movb\09%al, -17(%rbp)\00"}
!13 = metadata !{i64 85, [20 x i8] c"\09cmpb\09$0, -17(%rbp)\00"}
!14 = metadata !{i64 89, [9 x i8] c"\09jne\09-51\00"}
!15 = metadata !{i64 40, [21 x i8] c"\09cmpb\09$47, -17(%rbp)\00"}
!16 = metadata !{i64 44, [7 x i8] c"\09jne\099\00"}
!17 = metadata !{i64 55, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!18 = metadata !{i64 92, [11 x i8] c"\09popq\09%rbp\00"}
!19 = metadata !{i64 93, [6 x i8] c"\09retq\00"}
!20 = metadata !{i64 59, [24 x i8] c"\09movzbl\09-17(%rbp), %edx\00"}
!21 = metadata !{i64 63, [18 x i8] c"\09movb\09%dl, (%rax)\00"}
!22 = metadata !{i64 75, [21 x i8] c"\09movq\09-8(%rbp), %rax\00"}
!23 = metadata !{i64 79, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!24 = metadata !{i64 82, [21 x i8] c"\09movb\09%al, -17(%rbp)\00"}
!25 = metadata !{i64 50, [18 x i8] c"\09movb\09$92, (%rax)\00"}
