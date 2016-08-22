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
  %81 = add i64 %78, -16, !mcsema_real_eip !4
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !4
  %83 = load i64* %RDI_val, !mcsema_real_eip !4
  store i64 %83, i64* %82, !mcsema_real_eip !4
  %84 = load i64* %RBP_val, !mcsema_real_eip !5
  %85 = add i64 %84, -16, !mcsema_real_eip !5
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !5
  %87 = load i64* %RSI_val, !mcsema_real_eip !5
  store i64 %87, i64* %86, !mcsema_real_eip !5
  %88 = load i64* %RBP_val, !mcsema_real_eip !6
  %89 = add i64 %88, -8, !mcsema_real_eip !6
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !6
  %91 = load i64* %90, !mcsema_real_eip !6
  store i64 %91, i64* %RSI_val, !mcsema_real_eip !6
  %92 = add i64 %88, -24, !mcsema_real_eip !7
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !7
  store i64 %91, i64* %93, !mcsema_real_eip !7
  %94 = load i64* %RBP_val, !mcsema_real_eip !8
  %95 = add i64 %94, -16, !mcsema_real_eip !8
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !8
  %97 = load i64* %96, !mcsema_real_eip !8
  store i64 %97, i64* %RSI_val, !mcsema_real_eip !8
  %98 = add i64 %94, -32, !mcsema_real_eip !9
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !9
  store i64 %97, i64* %99, !mcsema_real_eip !9
  %100 = load i64* %RBP_val, !mcsema_real_eip !10
  %101 = add i64 %100, -24, !mcsema_real_eip !10
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !10
  %103 = load i64* %102, !mcsema_real_eip !10
  store i64 %103, i64* %RSI_val, !mcsema_real_eip !10
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !11
  %105 = bitcast i64* %104 to i8*
  %106 = load i8* %105, !mcsema_real_eip !11
  %107 = zext i8 %106 to i64, !mcsema_real_eip !11
  %108 = load i64* %RAX_val, !mcsema_real_eip !11
  %109 = and i64 %108, -256, !mcsema_real_eip !11
  %110 = or i64 %109, %107
  store i64 %110, i64* %RAX_val, !mcsema_real_eip !11
  %111 = load i64* %RBP_val, !mcsema_real_eip !12
  %112 = add i64 %111, -33, !mcsema_real_eip !12
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !12
  %114 = bitcast i64* %113 to i8*
  store i8 %106, i8* %114, !mcsema_real_eip !12
  %115 = load i64* %RBP_val, !mcsema_real_eip !13
  %116 = add i64 %115, -33, !mcsema_real_eip !13
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !13
  %118 = bitcast i64* %117 to i8*
  %119 = load i8* %118, !mcsema_real_eip !13
  %120 = sext i8 %119 to i32, !mcsema_real_eip !13
  %121 = zext i32 %120 to i64, !mcsema_real_eip !13
  store i64 %121, i64* %RAX_val, !mcsema_real_eip !13
  store i1 false, i1* %AF_val, !mcsema_real_eip !14
  %122 = tail call i8 @llvm.ctpop.i8(i8 %119), !mcsema_real_eip !14
  %123 = and i8 %122, 1
  %124 = icmp eq i8 %123, 0
  store i1 %124, i1* %PF_val, !mcsema_real_eip !14
  %125 = icmp eq i8 %119, 0
  store i1 %125, i1* %ZF_val, !mcsema_real_eip !14
  %126 = icmp slt i8 %119, 0
  store i1 %126, i1* %SF_val, !mcsema_real_eip !14
  store i1 false, i1* %CF_val, !mcsema_real_eip !14
  store i1 false, i1* %OF_val, !mcsema_real_eip !14
  br i1 %125, label %block_0x82, label %block_0x34.preheader, !mcsema_real_eip !15

block_0x34.preheader:                             ; preds = %entry
  br label %block_0x34

block_0x82.loopexit:                              ; preds = %block_0x25
  br label %block_0x82

block_0x82:                                       ; preds = %block_0x82.loopexit, %entry
  %127 = load i64* %RSP_val, !mcsema_real_eip !16
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !16
  %129 = load i64* %128, !mcsema_real_eip !16
  store i64 %129, i64* %RBP_val, !mcsema_real_eip !16
  %130 = add i64 %127, 16, !mcsema_real_eip !17
  store i64 %130, i64* %RSP_val, !mcsema_real_eip !17
  %131 = load i64* %RAX_val, !mcsema_real_eip !17
  store i64 %131, i64* %RAX, !mcsema_real_eip !17
  %132 = load i64* %RBX_val, !mcsema_real_eip !17
  store i64 %132, i64* %RBX, !mcsema_real_eip !17
  %133 = load i64* %RCX_val, !mcsema_real_eip !17
  store i64 %133, i64* %RCX, !mcsema_real_eip !17
  %134 = load i64* %RDX_val, !mcsema_real_eip !17
  store i64 %134, i64* %RDX, !mcsema_real_eip !17
  %135 = load i64* %RSI_val, !mcsema_real_eip !17
  store i64 %135, i64* %RSI, !mcsema_real_eip !17
  %136 = load i64* %RDI_val, !mcsema_real_eip !17
  store i64 %136, i64* %RDI, !mcsema_real_eip !17
  %137 = load i64* %RSP_val, !mcsema_real_eip !17
  store i64 %137, i64* %RSP, !mcsema_real_eip !17
  %138 = load i64* %RBP_val, !mcsema_real_eip !17
  store i64 %138, i64* %RBP, !mcsema_real_eip !17
  %139 = load i64* %R8_val, !mcsema_real_eip !17
  store i64 %139, i64* %R8, !mcsema_real_eip !17
  %140 = load i64* %R9_val, !mcsema_real_eip !17
  store i64 %140, i64* %R9, !mcsema_real_eip !17
  %141 = load i64* %R10_val, !mcsema_real_eip !17
  store i64 %141, i64* %R10, !mcsema_real_eip !17
  %142 = load i64* %R11_val, !mcsema_real_eip !17
  store i64 %142, i64* %R11, !mcsema_real_eip !17
  %143 = load i64* %R12_val, !mcsema_real_eip !17
  store i64 %143, i64* %R12, !mcsema_real_eip !17
  %144 = load i64* %R13_val, !mcsema_real_eip !17
  store i64 %144, i64* %R13, !mcsema_real_eip !17
  %145 = load i64* %R14_val, !mcsema_real_eip !17
  store i64 %145, i64* %R14, !mcsema_real_eip !17
  %146 = load i64* %R15_val, !mcsema_real_eip !17
  store i64 %146, i64* %R15, !mcsema_real_eip !17
  %147 = load i64* %RIP_val, !mcsema_real_eip !17
  store i64 %147, i64* %RIP, !mcsema_real_eip !17
  %148 = load i1* %CF_val, !mcsema_real_eip !17
  store i1 %148, i1* %CF, align 1, !mcsema_real_eip !17
  %149 = load i1* %PF_val, !mcsema_real_eip !17
  store i1 %149, i1* %PF, align 1, !mcsema_real_eip !17
  %150 = load i1* %AF_val, !mcsema_real_eip !17
  store i1 %150, i1* %AF, align 1, !mcsema_real_eip !17
  %151 = load i1* %ZF_val, !mcsema_real_eip !17
  store i1 %151, i1* %ZF, align 1, !mcsema_real_eip !17
  %152 = load i1* %SF_val, !mcsema_real_eip !17
  store i1 %152, i1* %SF, align 1, !mcsema_real_eip !17
  %153 = load i1* %OF_val, !mcsema_real_eip !17
  store i1 %153, i1* %OF, align 1, !mcsema_real_eip !17
  %154 = load i1* %DF_val, !mcsema_real_eip !17
  store i1 %154, i1* %DF, align 1, !mcsema_real_eip !17
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !17
  %155 = load i1* %FPU_B_val, !mcsema_real_eip !17
  store i1 %155, i1* %FPU_B, align 1, !mcsema_real_eip !17
  %156 = load i1* %FPU_C3_val, !mcsema_real_eip !17
  store i1 %156, i1* %FPU_C3, align 1, !mcsema_real_eip !17
  %157 = load i3* %FPU_TOP_val, !mcsema_real_eip !17
  store i3 %157, i3* %FPU_TOP, align 1, !mcsema_real_eip !17
  %158 = load i1* %FPU_C2_val, !mcsema_real_eip !17
  store i1 %158, i1* %FPU_C2, align 1, !mcsema_real_eip !17
  %159 = load i1* %FPU_C1_val, !mcsema_real_eip !17
  store i1 %159, i1* %FPU_C1, align 1, !mcsema_real_eip !17
  %160 = load i1* %FPU_C0_val, !mcsema_real_eip !17
  store i1 %160, i1* %FPU_C0, align 1, !mcsema_real_eip !17
  %161 = load i1* %FPU_ES_val, !mcsema_real_eip !17
  store i1 %161, i1* %FPU_ES, align 1, !mcsema_real_eip !17
  %162 = load i1* %FPU_SF_val, !mcsema_real_eip !17
  store i1 %162, i1* %FPU_SF, align 1, !mcsema_real_eip !17
  %163 = load i1* %FPU_PE_val, !mcsema_real_eip !17
  store i1 %163, i1* %FPU_PE, align 1, !mcsema_real_eip !17
  %164 = load i1* %FPU_UE_val, !mcsema_real_eip !17
  store i1 %164, i1* %FPU_UE, align 1, !mcsema_real_eip !17
  %165 = load i1* %FPU_OE_val, !mcsema_real_eip !17
  store i1 %165, i1* %FPU_OE, align 1, !mcsema_real_eip !17
  %166 = load i1* %FPU_ZE_val, !mcsema_real_eip !17
  store i1 %166, i1* %FPU_ZE, align 1, !mcsema_real_eip !17
  %167 = load i1* %FPU_DE_val, !mcsema_real_eip !17
  store i1 %167, i1* %FPU_DE, align 1, !mcsema_real_eip !17
  %168 = load i1* %FPU_IE_val, !mcsema_real_eip !17
  store i1 %168, i1* %FPU_IE, align 1, !mcsema_real_eip !17
  %169 = load i1* %FPU_X_val, !mcsema_real_eip !17
  store i1 %169, i1* %FPU_X, align 1, !mcsema_real_eip !17
  %170 = load i2* %FPU_RC_val, !mcsema_real_eip !17
  store i2 %170, i2* %FPU_RC, align 1, !mcsema_real_eip !17
  %171 = load i2* %FPU_PC_val, !mcsema_real_eip !17
  store i2 %171, i2* %FPU_PC, align 1, !mcsema_real_eip !17
  %172 = load i1* %FPU_PM_val, !mcsema_real_eip !17
  store i1 %172, i1* %FPU_PM, align 1, !mcsema_real_eip !17
  %173 = load i1* %FPU_UM_val, !mcsema_real_eip !17
  store i1 %173, i1* %FPU_UM, align 1, !mcsema_real_eip !17
  %174 = load i1* %FPU_OM_val, !mcsema_real_eip !17
  store i1 %174, i1* %FPU_OM, align 1, !mcsema_real_eip !17
  %175 = load i1* %FPU_ZM_val, !mcsema_real_eip !17
  store i1 %175, i1* %FPU_ZM, align 1, !mcsema_real_eip !17
  %176 = load i1* %FPU_DM_val, !mcsema_real_eip !17
  store i1 %176, i1* %FPU_DM, align 1, !mcsema_real_eip !17
  %177 = load i1* %FPU_IM_val, !mcsema_real_eip !17
  store i1 %177, i1* %FPU_IM, align 1, !mcsema_real_eip !17
  %178 = load i64* %53, align 4
  store i64 %178, i64* %52, align 4
  %179 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !17
  store i16 %179, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !17
  %180 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !17
  store i64 %180, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !17
  %181 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !17
  store i16 %181, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !17
  %182 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !17
  store i64 %182, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !17
  %183 = load i128* %XMM0_val, !mcsema_real_eip !17
  store i128 %183, i128* %XMM0, align 1, !mcsema_real_eip !17
  %184 = load i128* %XMM1_val, !mcsema_real_eip !17
  store i128 %184, i128* %XMM1, align 1, !mcsema_real_eip !17
  %185 = load i128* %XMM2_val, !mcsema_real_eip !17
  store i128 %185, i128* %XMM2, align 1, !mcsema_real_eip !17
  %186 = load i128* %XMM3_val, !mcsema_real_eip !17
  store i128 %186, i128* %XMM3, align 1, !mcsema_real_eip !17
  %187 = load i128* %XMM4_val, !mcsema_real_eip !17
  store i128 %187, i128* %XMM4, align 1, !mcsema_real_eip !17
  %188 = load i128* %XMM5_val, !mcsema_real_eip !17
  store i128 %188, i128* %XMM5, align 1, !mcsema_real_eip !17
  %189 = load i128* %XMM6_val, !mcsema_real_eip !17
  store i128 %189, i128* %XMM6, align 1, !mcsema_real_eip !17
  %190 = load i128* %XMM7_val, !mcsema_real_eip !17
  store i128 %190, i128* %XMM7, align 1, !mcsema_real_eip !17
  %191 = load i128* %XMM8_val, !mcsema_real_eip !17
  store i128 %191, i128* %XMM8, align 1, !mcsema_real_eip !17
  %192 = load i128* %XMM9_val, !mcsema_real_eip !17
  store i128 %192, i128* %XMM9, align 1, !mcsema_real_eip !17
  %193 = load i128* %XMM10_val, !mcsema_real_eip !17
  store i128 %193, i128* %XMM10, align 1, !mcsema_real_eip !17
  %194 = load i128* %XMM11_val, !mcsema_real_eip !17
  store i128 %194, i128* %XMM11, align 1, !mcsema_real_eip !17
  %195 = load i128* %XMM12_val, !mcsema_real_eip !17
  store i128 %195, i128* %XMM12, align 1, !mcsema_real_eip !17
  %196 = load i128* %XMM13_val, !mcsema_real_eip !17
  store i128 %196, i128* %XMM13, align 1, !mcsema_real_eip !17
  %197 = load i128* %XMM14_val, !mcsema_real_eip !17
  store i128 %197, i128* %XMM14, align 1, !mcsema_real_eip !17
  %198 = load i128* %XMM15_val, !mcsema_real_eip !17
  store i128 %198, i128* %XMM15, align 1, !mcsema_real_eip !17
  %199 = load i64* %STACK_BASE_val, !mcsema_real_eip !17
  store i64 %199, i64* %STACK_BASE, align 1, !mcsema_real_eip !17
  %200 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !17
  store i64 %200, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !17
  ret void, !mcsema_real_eip !17

block_0x34:                                       ; preds = %block_0x25, %block_0x34.preheader
  %201 = load i64* %RBP_val, !mcsema_real_eip !18
  %202 = add i64 %201, -33, !mcsema_real_eip !18
  %203 = inttoptr i64 %202 to i64*, !mcsema_real_eip !18
  %204 = bitcast i64* %203 to i8*
  %205 = load i8* %204, !mcsema_real_eip !18
  %206 = sext i8 %205 to i32, !mcsema_real_eip !18
  %207 = zext i32 %206 to i64, !mcsema_real_eip !18
  store i64 %207, i64* %RAX_val, !mcsema_real_eip !18
  %208 = add nsw i32 %206, -47
  %209 = xor i32 %208, %206, !mcsema_real_eip !19
  %210 = and i32 %209, 16, !mcsema_real_eip !19
  %211 = icmp ne i32 %210, 0, !mcsema_real_eip !19
  store i1 %211, i1* %AF_val, !mcsema_real_eip !19
  %212 = trunc i32 %208 to i8, !mcsema_real_eip !19
  %213 = tail call i8 @llvm.ctpop.i8(i8 %212), !mcsema_real_eip !19
  %214 = and i8 %213, 1
  %215 = icmp eq i8 %214, 0
  store i1 %215, i1* %PF_val, !mcsema_real_eip !19
  %216 = icmp eq i32 %208, 0, !mcsema_real_eip !19
  store i1 %216, i1* %ZF_val, !mcsema_real_eip !19
  %217 = icmp slt i32 %208, 0
  store i1 %217, i1* %SF_val, !mcsema_real_eip !19
  %218 = icmp ult i8 %205, 47
  store i1 %218, i1* %CF_val, !mcsema_real_eip !19
  %219 = and i32 %209, %206, !mcsema_real_eip !19
  %220 = icmp slt i32 %219, 0
  store i1 %220, i1* %OF_val, !mcsema_real_eip !19
  %221 = load i1* %ZF_val, !mcsema_real_eip !20
  %222 = load i64* %RBP_val, !mcsema_real_eip !21
  br i1 %221, label %block_0x43, label %block_0x4f, !mcsema_real_eip !20

block_0x4f:                                       ; preds = %block_0x34
  %223 = add i64 %222, -33, !mcsema_real_eip !21
  %224 = inttoptr i64 %223 to i64*, !mcsema_real_eip !21
  %225 = bitcast i64* %224 to i8*
  %226 = load i8* %225, !mcsema_real_eip !21
  %227 = zext i8 %226 to i64, !mcsema_real_eip !21
  %228 = load i64* %RAX_val, !mcsema_real_eip !21
  %229 = and i64 %228, -256, !mcsema_real_eip !21
  %230 = or i64 %229, %227
  store i64 %230, i64* %RAX_val, !mcsema_real_eip !21
  %231 = load i64* %RBP_val, !mcsema_real_eip !22
  %232 = add i64 %231, -32, !mcsema_real_eip !22
  %233 = inttoptr i64 %232 to i64*, !mcsema_real_eip !22
  %234 = load i64* %233, !mcsema_real_eip !22
  store i64 %234, i64* %RCX_val, !mcsema_real_eip !22
  %235 = inttoptr i64 %234 to i64*, !mcsema_real_eip !23
  %236 = load i64* %RAX_val, !mcsema_real_eip !23
  %237 = trunc i64 %236 to i8, !mcsema_real_eip !23
  %238 = bitcast i64* %235 to i8*
  store i8 %237, i8* %238, !mcsema_real_eip !23
  %239 = load i64* %RBP_val, !mcsema_real_eip !24
  %240 = add i64 %239, -24, !mcsema_real_eip !24
  %241 = inttoptr i64 %240 to i64*, !mcsema_real_eip !24
  %242 = load i64* %241, !mcsema_real_eip !24
  %uadd71 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %242, i64 1)
  %243 = extractvalue { i64, i1 } %uadd71, 0
  %244 = xor i64 %243, %242, !mcsema_real_eip !25
  %245 = and i64 %244, 16, !mcsema_real_eip !25
  %246 = icmp ne i64 %245, 0, !mcsema_real_eip !25
  store i1 %246, i1* %AF_val, !mcsema_real_eip !25
  %247 = icmp slt i64 %243, 0
  store i1 %247, i1* %SF_val, !mcsema_real_eip !25
  %248 = icmp eq i64 %243, 0, !mcsema_real_eip !25
  store i1 %248, i1* %ZF_val, !mcsema_real_eip !25
  %249 = xor i64 %242, -9223372036854775808, !mcsema_real_eip !25
  %250 = and i64 %244, %249, !mcsema_real_eip !25
  %251 = icmp slt i64 %250, 0
  store i1 %251, i1* %OF_val, !mcsema_real_eip !25
  %252 = trunc i64 %243 to i8, !mcsema_real_eip !25
  %253 = tail call i8 @llvm.ctpop.i8(i8 %252), !mcsema_real_eip !25
  %254 = and i8 %253, 1
  %255 = icmp eq i8 %254, 0
  store i1 %255, i1* %PF_val, !mcsema_real_eip !25
  %256 = extractvalue { i64, i1 } %uadd71, 1
  store i1 %256, i1* %CF_val, !mcsema_real_eip !25
  store i64 %243, i64* %RAX_val, !mcsema_real_eip !25
  %257 = load i64* %RBP_val, !mcsema_real_eip !26
  %258 = add i64 %257, -24, !mcsema_real_eip !26
  %259 = inttoptr i64 %258 to i64*, !mcsema_real_eip !26
  store i64 %243, i64* %259, !mcsema_real_eip !26
  %260 = load i64* %RBP_val, !mcsema_real_eip !27
  %261 = add i64 %260, -32, !mcsema_real_eip !27
  %262 = inttoptr i64 %261 to i64*, !mcsema_real_eip !27
  %263 = load i64* %262, !mcsema_real_eip !27
  %uadd72 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %263, i64 1)
  %264 = extractvalue { i64, i1 } %uadd72, 0
  %265 = xor i64 %264, %263, !mcsema_real_eip !28
  %266 = and i64 %265, 16, !mcsema_real_eip !28
  %267 = icmp ne i64 %266, 0, !mcsema_real_eip !28
  store i1 %267, i1* %AF_val, !mcsema_real_eip !28
  %268 = icmp slt i64 %264, 0
  store i1 %268, i1* %SF_val, !mcsema_real_eip !28
  %269 = icmp eq i64 %264, 0, !mcsema_real_eip !28
  store i1 %269, i1* %ZF_val, !mcsema_real_eip !28
  %270 = xor i64 %263, -9223372036854775808, !mcsema_real_eip !28
  %271 = and i64 %265, %270, !mcsema_real_eip !28
  %272 = icmp slt i64 %271, 0
  store i1 %272, i1* %OF_val, !mcsema_real_eip !28
  %273 = trunc i64 %264 to i8, !mcsema_real_eip !28
  %274 = tail call i8 @llvm.ctpop.i8(i8 %273), !mcsema_real_eip !28
  %275 = and i8 %274, 1
  %276 = icmp eq i8 %275, 0
  store i1 %276, i1* %PF_val, !mcsema_real_eip !28
  %277 = extractvalue { i64, i1 } %uadd72, 1
  store i1 %277, i1* %CF_val, !mcsema_real_eip !28
  store i64 %264, i64* %RAX_val, !mcsema_real_eip !28
  %278 = load i64* %RBP_val, !mcsema_real_eip !29
  %279 = add i64 %278, -32, !mcsema_real_eip !29
  %280 = inttoptr i64 %279 to i64*, !mcsema_real_eip !29
  store i64 %264, i64* %280, !mcsema_real_eip !29
  %281 = load i64* %RBP_val, !mcsema_real_eip !30
  %282 = add i64 %281, -24, !mcsema_real_eip !30
  %283 = inttoptr i64 %282 to i64*, !mcsema_real_eip !30
  %284 = load i64* %283, !mcsema_real_eip !30
  store i64 %284, i64* %RAX_val, !mcsema_real_eip !30
  %285 = inttoptr i64 %284 to i64*, !mcsema_real_eip !31
  %286 = bitcast i64* %285 to i8*
  %287 = load i8* %286, !mcsema_real_eip !31
  %288 = zext i8 %287 to i64, !mcsema_real_eip !31
  %289 = load i64* %RCX_val, !mcsema_real_eip !31
  %290 = and i64 %289, -256, !mcsema_real_eip !31
  %291 = or i64 %290, %288
  store i64 %291, i64* %RCX_val, !mcsema_real_eip !31
  %292 = load i64* %RBP_val, !mcsema_real_eip !32
  %293 = add i64 %292, -33, !mcsema_real_eip !32
  %294 = inttoptr i64 %293 to i64*, !mcsema_real_eip !32
  %295 = bitcast i64* %294 to i8*
  store i8 %287, i8* %295, !mcsema_real_eip !32
  br label %block_0x25, !mcsema_real_eip !33

block_0x43:                                       ; preds = %block_0x34
  %296 = add i64 %222, -32, !mcsema_real_eip !34
  %297 = inttoptr i64 %296 to i64*, !mcsema_real_eip !34
  %298 = load i64* %297, !mcsema_real_eip !34
  store i64 %298, i64* %RAX_val, !mcsema_real_eip !34
  %299 = inttoptr i64 %298 to i64*, !mcsema_real_eip !35
  %300 = bitcast i64* %299 to i8*
  store i8 92, i8* %300, !mcsema_real_eip !35
  %301 = load i64* %RBP_val, !mcsema_real_eip !24
  %302 = add i64 %301, -24, !mcsema_real_eip !24
  %303 = inttoptr i64 %302 to i64*, !mcsema_real_eip !24
  %304 = load i64* %303, !mcsema_real_eip !24
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %304, i64 1)
  %305 = extractvalue { i64, i1 } %uadd, 0
  %306 = xor i64 %305, %304, !mcsema_real_eip !25
  %307 = and i64 %306, 16, !mcsema_real_eip !25
  %308 = icmp ne i64 %307, 0, !mcsema_real_eip !25
  store i1 %308, i1* %AF_val, !mcsema_real_eip !25
  %309 = icmp slt i64 %305, 0
  store i1 %309, i1* %SF_val, !mcsema_real_eip !25
  %310 = icmp eq i64 %305, 0, !mcsema_real_eip !25
  store i1 %310, i1* %ZF_val, !mcsema_real_eip !25
  %311 = xor i64 %304, -9223372036854775808, !mcsema_real_eip !25
  %312 = and i64 %306, %311, !mcsema_real_eip !25
  %313 = icmp slt i64 %312, 0
  store i1 %313, i1* %OF_val, !mcsema_real_eip !25
  %314 = trunc i64 %305 to i8, !mcsema_real_eip !25
  %315 = tail call i8 @llvm.ctpop.i8(i8 %314), !mcsema_real_eip !25
  %316 = and i8 %315, 1
  %317 = icmp eq i8 %316, 0
  store i1 %317, i1* %PF_val, !mcsema_real_eip !25
  %318 = extractvalue { i64, i1 } %uadd, 1
  store i1 %318, i1* %CF_val, !mcsema_real_eip !25
  store i64 %305, i64* %RAX_val, !mcsema_real_eip !25
  %319 = load i64* %RBP_val, !mcsema_real_eip !26
  %320 = add i64 %319, -24, !mcsema_real_eip !26
  %321 = inttoptr i64 %320 to i64*, !mcsema_real_eip !26
  store i64 %305, i64* %321, !mcsema_real_eip !26
  %322 = load i64* %RBP_val, !mcsema_real_eip !27
  %323 = add i64 %322, -32, !mcsema_real_eip !27
  %324 = inttoptr i64 %323 to i64*, !mcsema_real_eip !27
  %325 = load i64* %324, !mcsema_real_eip !27
  %uadd70 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %325, i64 1)
  %326 = extractvalue { i64, i1 } %uadd70, 0
  %327 = xor i64 %326, %325, !mcsema_real_eip !28
  %328 = and i64 %327, 16, !mcsema_real_eip !28
  %329 = icmp ne i64 %328, 0, !mcsema_real_eip !28
  store i1 %329, i1* %AF_val, !mcsema_real_eip !28
  %330 = icmp slt i64 %326, 0
  store i1 %330, i1* %SF_val, !mcsema_real_eip !28
  %331 = icmp eq i64 %326, 0, !mcsema_real_eip !28
  store i1 %331, i1* %ZF_val, !mcsema_real_eip !28
  %332 = xor i64 %325, -9223372036854775808, !mcsema_real_eip !28
  %333 = and i64 %327, %332, !mcsema_real_eip !28
  %334 = icmp slt i64 %333, 0
  store i1 %334, i1* %OF_val, !mcsema_real_eip !28
  %335 = trunc i64 %326 to i8, !mcsema_real_eip !28
  %336 = tail call i8 @llvm.ctpop.i8(i8 %335), !mcsema_real_eip !28
  %337 = and i8 %336, 1
  %338 = icmp eq i8 %337, 0
  store i1 %338, i1* %PF_val, !mcsema_real_eip !28
  %339 = extractvalue { i64, i1 } %uadd70, 1
  store i1 %339, i1* %CF_val, !mcsema_real_eip !28
  store i64 %326, i64* %RAX_val, !mcsema_real_eip !28
  %340 = load i64* %RBP_val, !mcsema_real_eip !29
  %341 = add i64 %340, -32, !mcsema_real_eip !29
  %342 = inttoptr i64 %341 to i64*, !mcsema_real_eip !29
  store i64 %326, i64* %342, !mcsema_real_eip !29
  %343 = load i64* %RBP_val, !mcsema_real_eip !30
  %344 = add i64 %343, -24, !mcsema_real_eip !30
  %345 = inttoptr i64 %344 to i64*, !mcsema_real_eip !30
  %346 = load i64* %345, !mcsema_real_eip !30
  store i64 %346, i64* %RAX_val, !mcsema_real_eip !30
  %347 = inttoptr i64 %346 to i64*, !mcsema_real_eip !31
  %348 = bitcast i64* %347 to i8*
  %349 = load i8* %348, !mcsema_real_eip !31
  %350 = zext i8 %349 to i64, !mcsema_real_eip !31
  %351 = load i64* %RCX_val, !mcsema_real_eip !31
  %352 = and i64 %351, -256, !mcsema_real_eip !31
  %353 = or i64 %352, %350
  store i64 %353, i64* %RCX_val, !mcsema_real_eip !31
  %354 = load i64* %RBP_val, !mcsema_real_eip !32
  %355 = add i64 %354, -33, !mcsema_real_eip !32
  %356 = inttoptr i64 %355 to i64*, !mcsema_real_eip !32
  %357 = bitcast i64* %356 to i8*
  store i8 %349, i8* %357, !mcsema_real_eip !32
  br label %block_0x25, !mcsema_real_eip !33

block_0x25:                                       ; preds = %block_0x43, %block_0x4f
  %358 = load i64* %RBP_val, !mcsema_real_eip !13
  %359 = add i64 %358, -33, !mcsema_real_eip !13
  %360 = inttoptr i64 %359 to i64*, !mcsema_real_eip !13
  %361 = bitcast i64* %360 to i8*
  %362 = load i8* %361, !mcsema_real_eip !13
  %363 = sext i8 %362 to i32, !mcsema_real_eip !13
  %364 = zext i32 %363 to i64, !mcsema_real_eip !13
  store i64 %364, i64* %RAX_val, !mcsema_real_eip !13
  store i1 false, i1* %AF_val, !mcsema_real_eip !14
  %365 = tail call i8 @llvm.ctpop.i8(i8 %362), !mcsema_real_eip !14
  %366 = and i8 %365, 1
  %367 = icmp eq i8 %366, 0
  store i1 %367, i1* %PF_val, !mcsema_real_eip !14
  %368 = icmp eq i8 %362, 0
  store i1 %368, i1* %ZF_val, !mcsema_real_eip !14
  %369 = icmp slt i8 %362, 0
  store i1 %369, i1* %SF_val, !mcsema_real_eip !14
  store i1 false, i1* %CF_val, !mcsema_real_eip !14
  store i1 false, i1* %OF_val, !mcsema_real_eip !14
  br i1 %368, label %block_0x82.loopexit, label %block_0x34, !mcsema_real_eip !15
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

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = metadata !{i64 4, [21 x i8] c"\09movq\09%rdi, -8(%rbp)\00"}
!5 = metadata !{i64 8, [22 x i8] c"\09movq\09%rsi, -16(%rbp)\00"}
!6 = metadata !{i64 12, [21 x i8] c"\09movq\09-8(%rbp), %rsi\00"}
!7 = metadata !{i64 16, [22 x i8] c"\09movq\09%rsi, -24(%rbp)\00"}
!8 = metadata !{i64 20, [22 x i8] c"\09movq\09-16(%rbp), %rsi\00"}
!9 = metadata !{i64 24, [22 x i8] c"\09movq\09%rsi, -32(%rbp)\00"}
!10 = metadata !{i64 28, [22 x i8] c"\09movq\09-24(%rbp), %rsi\00"}
!11 = metadata !{i64 32, [18 x i8] c"\09movb\09(%rsi), %al\00"}
!12 = metadata !{i64 34, [21 x i8] c"\09movb\09%al, -33(%rbp)\00"}
!13 = metadata !{i64 37, [24 x i8] c"\09movsbl\09-33(%rbp), %eax\00"}
!14 = metadata !{i64 41, [15 x i8] c"\09cmpl\09$0, %eax\00"} ; [ DW_TAG_file_type ] [/]
!15 = metadata !{i64 46, [7 x i8] c"\09je\0978\00"}
!16 = metadata !{i64 130, [11 x i8] c"\09popq\09%rbp\00"}
!17 = metadata !{i64 131, [6 x i8] c"\09retq\00"}
!18 = metadata !{i64 52, [24 x i8] c"\09movsbl\09-33(%rbp), %eax\00"}
!19 = metadata !{i64 56, [16 x i8] c"\09cmpl\09$47, %eax\00"}
!20 = metadata !{i64 61, [8 x i8] c"\09jne\0912\00"}
!21 = metadata !{i64 79, [21 x i8] c"\09movb\09-33(%rbp), %al\00"}
!22 = metadata !{i64 82, [22 x i8] c"\09movq\09-32(%rbp), %rcx\00"}
!23 = metadata !{i64 86, [18 x i8] c"\09movb\09%al, (%rcx)\00"}
!24 = metadata !{i64 88, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!25 = metadata !{i64 92, [15 x i8] c"\09addq\09$1, %rax\00"}
!26 = metadata !{i64 98, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!27 = metadata !{i64 102, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!28 = metadata !{i64 106, [15 x i8] c"\09addq\09$1, %rax\00"}
!29 = metadata !{i64 112, [22 x i8] c"\09movq\09%rax, -32(%rbp)\00"}
!30 = metadata !{i64 116, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!31 = metadata !{i64 120, [18 x i8] c"\09movb\09(%rax), %cl\00"}
!32 = metadata !{i64 122, [21 x i8] c"\09movb\09%cl, -33(%rbp)\00"}
!33 = metadata !{i64 125, [9 x i8] c"\09jmp\09-93\00"}
!34 = metadata !{i64 67, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!35 = metadata !{i64 71, [18 x i8] c"\09movb\09$92, (%rax)\00"}
