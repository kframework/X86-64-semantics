; ModuleID = 'test_27.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_b0(%struct.regs*) #0 {
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
  %81 = add i64 %78, -48
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
  %91 = icmp ult i64 %79, 40, !mcsema_real_eip !4
  store i1 %91, i1* %CF_val, !mcsema_real_eip !4
  %92 = and i64 %82, %79, !mcsema_real_eip !4
  %93 = icmp slt i64 %92, 0
  store i1 %93, i1* %OF_val, !mcsema_real_eip !4
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !4
  %94 = load i64* %RBP_val, !mcsema_real_eip !5
  %95 = add i64 %94, -32, !mcsema_real_eip !5
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !5
  %97 = ptrtoint i64* %96 to i64, !mcsema_real_eip !5
  store i64 %97, i64* %RAX_val, !mcsema_real_eip !5
  %98 = inttoptr i64 %81 to i64*, !mcsema_real_eip !6
  store i64 %97, i64* %98, !mcsema_real_eip !6
  store i64 5, i64* %R9_val, !mcsema_real_eip !7
  store i64 4, i64* %R8_val, !mcsema_real_eip !8
  store i64 3, i64* %RCX_val, !mcsema_real_eip !9
  store i64 2, i64* %RDX_val, !mcsema_real_eip !10
  store i64 1, i64* %RSI_val, !mcsema_real_eip !11
  store i64 0, i64* %RDI_val, !mcsema_real_eip !12
  %99 = load i64* %RSP_val, !mcsema_real_eip !13
  %100 = add i64 %99, -8
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !13
  store i64 -4981261766360305936, i64* %101, !mcsema_real_eip !13
  store i64 %100, i64* %RSP_val, !mcsema_real_eip !13
  %102 = load i64* %RAX_val, !mcsema_real_eip !13
  store i64 %102, i64* %RAX, !mcsema_real_eip !13
  %103 = load i64* %RBX_val, !mcsema_real_eip !13
  store i64 %103, i64* %RBX, !mcsema_real_eip !13
  %104 = load i64* %RCX_val, !mcsema_real_eip !13
  store i64 %104, i64* %RCX, !mcsema_real_eip !13
  %105 = load i64* %RDX_val, !mcsema_real_eip !13
  store i64 %105, i64* %RDX, !mcsema_real_eip !13
  %106 = load i64* %RSI_val, !mcsema_real_eip !13
  store i64 %106, i64* %RSI, !mcsema_real_eip !13
  %107 = load i64* %RDI_val, !mcsema_real_eip !13
  store i64 %107, i64* %RDI, !mcsema_real_eip !13
  %108 = load i64* %RSP_val, !mcsema_real_eip !13
  store i64 %108, i64* %RSP, !mcsema_real_eip !13
  %109 = load i64* %RBP_val, !mcsema_real_eip !13
  store i64 %109, i64* %RBP, !mcsema_real_eip !13
  %110 = load i64* %R8_val, !mcsema_real_eip !13
  store i64 %110, i64* %R8, !mcsema_real_eip !13
  %111 = load i64* %R9_val, !mcsema_real_eip !13
  store i64 %111, i64* %R9, !mcsema_real_eip !13
  %112 = load i64* %R10_val, !mcsema_real_eip !13
  store i64 %112, i64* %R10, !mcsema_real_eip !13
  %113 = load i64* %R11_val, !mcsema_real_eip !13
  store i64 %113, i64* %R11, !mcsema_real_eip !13
  %114 = load i64* %R12_val, !mcsema_real_eip !13
  store i64 %114, i64* %R12, !mcsema_real_eip !13
  %115 = load i64* %R13_val, !mcsema_real_eip !13
  store i64 %115, i64* %R13, !mcsema_real_eip !13
  %116 = load i64* %R14_val, !mcsema_real_eip !13
  store i64 %116, i64* %R14, !mcsema_real_eip !13
  %117 = load i64* %R15_val, !mcsema_real_eip !13
  store i64 %117, i64* %R15, !mcsema_real_eip !13
  %118 = load i64* %RIP_val, !mcsema_real_eip !13
  store i64 %118, i64* %RIP, !mcsema_real_eip !13
  %119 = load i1* %CF_val, !mcsema_real_eip !13
  store i1 %119, i1* %CF, align 1, !mcsema_real_eip !13
  %120 = load i1* %PF_val, !mcsema_real_eip !13
  store i1 %120, i1* %PF, align 1, !mcsema_real_eip !13
  %121 = load i1* %AF_val, !mcsema_real_eip !13
  store i1 %121, i1* %AF, align 1, !mcsema_real_eip !13
  %122 = load i1* %ZF_val, !mcsema_real_eip !13
  store i1 %122, i1* %ZF, align 1, !mcsema_real_eip !13
  %123 = load i1* %SF_val, !mcsema_real_eip !13
  store i1 %123, i1* %SF, align 1, !mcsema_real_eip !13
  %124 = load i1* %OF_val, !mcsema_real_eip !13
  store i1 %124, i1* %OF, align 1, !mcsema_real_eip !13
  %125 = load i1* %DF_val, !mcsema_real_eip !13
  store i1 %125, i1* %DF, align 1, !mcsema_real_eip !13
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !13
  %126 = load i1* %FPU_B_val, !mcsema_real_eip !13
  store i1 %126, i1* %FPU_B, align 1, !mcsema_real_eip !13
  %127 = load i1* %FPU_C3_val, !mcsema_real_eip !13
  store i1 %127, i1* %FPU_C3, align 1, !mcsema_real_eip !13
  %128 = load i3* %FPU_TOP_val, !mcsema_real_eip !13
  store i3 %128, i3* %FPU_TOP, align 1, !mcsema_real_eip !13
  %129 = load i1* %FPU_C2_val, !mcsema_real_eip !13
  store i1 %129, i1* %FPU_C2, align 1, !mcsema_real_eip !13
  %130 = load i1* %FPU_C1_val, !mcsema_real_eip !13
  store i1 %130, i1* %FPU_C1, align 1, !mcsema_real_eip !13
  %131 = load i1* %FPU_C0_val, !mcsema_real_eip !13
  store i1 %131, i1* %FPU_C0, align 1, !mcsema_real_eip !13
  %132 = load i1* %FPU_ES_val, !mcsema_real_eip !13
  store i1 %132, i1* %FPU_ES, align 1, !mcsema_real_eip !13
  %133 = load i1* %FPU_SF_val, !mcsema_real_eip !13
  store i1 %133, i1* %FPU_SF, align 1, !mcsema_real_eip !13
  %134 = load i1* %FPU_PE_val, !mcsema_real_eip !13
  store i1 %134, i1* %FPU_PE, align 1, !mcsema_real_eip !13
  %135 = load i1* %FPU_UE_val, !mcsema_real_eip !13
  store i1 %135, i1* %FPU_UE, align 1, !mcsema_real_eip !13
  %136 = load i1* %FPU_OE_val, !mcsema_real_eip !13
  store i1 %136, i1* %FPU_OE, align 1, !mcsema_real_eip !13
  %137 = load i1* %FPU_ZE_val, !mcsema_real_eip !13
  store i1 %137, i1* %FPU_ZE, align 1, !mcsema_real_eip !13
  %138 = load i1* %FPU_DE_val, !mcsema_real_eip !13
  store i1 %138, i1* %FPU_DE, align 1, !mcsema_real_eip !13
  %139 = load i1* %FPU_IE_val, !mcsema_real_eip !13
  store i1 %139, i1* %FPU_IE, align 1, !mcsema_real_eip !13
  %140 = load i1* %FPU_X_val, !mcsema_real_eip !13
  store i1 %140, i1* %FPU_X, align 1, !mcsema_real_eip !13
  %141 = load i2* %FPU_RC_val, !mcsema_real_eip !13
  store i2 %141, i2* %FPU_RC, align 1, !mcsema_real_eip !13
  %142 = load i2* %FPU_PC_val, !mcsema_real_eip !13
  store i2 %142, i2* %FPU_PC, align 1, !mcsema_real_eip !13
  %143 = load i1* %FPU_PM_val, !mcsema_real_eip !13
  store i1 %143, i1* %FPU_PM, align 1, !mcsema_real_eip !13
  %144 = load i1* %FPU_UM_val, !mcsema_real_eip !13
  store i1 %144, i1* %FPU_UM, align 1, !mcsema_real_eip !13
  %145 = load i1* %FPU_OM_val, !mcsema_real_eip !13
  store i1 %145, i1* %FPU_OM, align 1, !mcsema_real_eip !13
  %146 = load i1* %FPU_ZM_val, !mcsema_real_eip !13
  store i1 %146, i1* %FPU_ZM, align 1, !mcsema_real_eip !13
  %147 = load i1* %FPU_DM_val, !mcsema_real_eip !13
  store i1 %147, i1* %FPU_DM, align 1, !mcsema_real_eip !13
  %148 = load i1* %FPU_IM_val, !mcsema_real_eip !13
  store i1 %148, i1* %FPU_IM, align 1, !mcsema_real_eip !13
  %149 = load i64* %53, align 4
  store i64 %149, i64* %52, align 4
  %150 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !13
  store i16 %150, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !13
  %151 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !13
  store i64 %151, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !13
  %152 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !13
  store i16 %152, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !13
  %153 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !13
  store i64 %153, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !13
  %154 = load i128* %XMM0_val, !mcsema_real_eip !13
  store i128 %154, i128* %XMM0, align 1, !mcsema_real_eip !13
  %155 = load i128* %XMM1_val, !mcsema_real_eip !13
  store i128 %155, i128* %XMM1, align 1, !mcsema_real_eip !13
  %156 = load i128* %XMM2_val, !mcsema_real_eip !13
  store i128 %156, i128* %XMM2, align 1, !mcsema_real_eip !13
  %157 = load i128* %XMM3_val, !mcsema_real_eip !13
  store i128 %157, i128* %XMM3, align 1, !mcsema_real_eip !13
  %158 = load i128* %XMM4_val, !mcsema_real_eip !13
  store i128 %158, i128* %XMM4, align 1, !mcsema_real_eip !13
  %159 = load i128* %XMM5_val, !mcsema_real_eip !13
  store i128 %159, i128* %XMM5, align 1, !mcsema_real_eip !13
  %160 = load i128* %XMM6_val, !mcsema_real_eip !13
  store i128 %160, i128* %XMM6, align 1, !mcsema_real_eip !13
  %161 = load i128* %XMM7_val, !mcsema_real_eip !13
  store i128 %161, i128* %XMM7, align 1, !mcsema_real_eip !13
  %162 = load i128* %XMM8_val, !mcsema_real_eip !13
  store i128 %162, i128* %XMM8, align 1, !mcsema_real_eip !13
  %163 = load i128* %XMM9_val, !mcsema_real_eip !13
  store i128 %163, i128* %XMM9, align 1, !mcsema_real_eip !13
  %164 = load i128* %XMM10_val, !mcsema_real_eip !13
  store i128 %164, i128* %XMM10, align 1, !mcsema_real_eip !13
  %165 = load i128* %XMM11_val, !mcsema_real_eip !13
  store i128 %165, i128* %XMM11, align 1, !mcsema_real_eip !13
  %166 = load i128* %XMM12_val, !mcsema_real_eip !13
  store i128 %166, i128* %XMM12, align 1, !mcsema_real_eip !13
  %167 = load i128* %XMM13_val, !mcsema_real_eip !13
  store i128 %167, i128* %XMM13, align 1, !mcsema_real_eip !13
  %168 = load i128* %XMM14_val, !mcsema_real_eip !13
  store i128 %168, i128* %XMM14, align 1, !mcsema_real_eip !13
  %169 = load i128* %XMM15_val, !mcsema_real_eip !13
  store i128 %169, i128* %XMM15, align 1, !mcsema_real_eip !13
  %170 = load i64* %STACK_BASE_val, !mcsema_real_eip !13
  store i64 %170, i64* %STACK_BASE, align 1, !mcsema_real_eip !13
  %171 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !13
  store i64 %171, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !13
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !13
  %172 = load i64* %RAX, !mcsema_real_eip !13
  store i64 %172, i64* %RAX_val, !mcsema_real_eip !13
  %173 = load i64* %RBX, !mcsema_real_eip !13
  store i64 %173, i64* %RBX_val, !mcsema_real_eip !13
  %174 = load i64* %RCX, !mcsema_real_eip !13
  store i64 %174, i64* %RCX_val, !mcsema_real_eip !13
  %175 = load i64* %RDX, !mcsema_real_eip !13
  store i64 %175, i64* %RDX_val, !mcsema_real_eip !13
  %176 = load i64* %RSI, !mcsema_real_eip !13
  store i64 %176, i64* %RSI_val, !mcsema_real_eip !13
  %177 = load i64* %RDI, !mcsema_real_eip !13
  store i64 %177, i64* %RDI_val, !mcsema_real_eip !13
  %178 = load i64* %RSP, !mcsema_real_eip !13
  store i64 %178, i64* %RSP_val, !mcsema_real_eip !13
  %179 = load i64* %RBP, !mcsema_real_eip !13
  store i64 %179, i64* %RBP_val, !mcsema_real_eip !13
  %180 = load i64* %R8, !mcsema_real_eip !13
  store i64 %180, i64* %R8_val, !mcsema_real_eip !13
  %181 = load i64* %R9, !mcsema_real_eip !13
  store i64 %181, i64* %R9_val, !mcsema_real_eip !13
  %182 = load i64* %R10, !mcsema_real_eip !13
  store i64 %182, i64* %R10_val, !mcsema_real_eip !13
  %183 = load i64* %R11, !mcsema_real_eip !13
  store i64 %183, i64* %R11_val, !mcsema_real_eip !13
  %184 = load i64* %R12, !mcsema_real_eip !13
  store i64 %184, i64* %R12_val, !mcsema_real_eip !13
  %185 = load i64* %R13, !mcsema_real_eip !13
  store i64 %185, i64* %R13_val, !mcsema_real_eip !13
  %186 = load i64* %R14, !mcsema_real_eip !13
  store i64 %186, i64* %R14_val, !mcsema_real_eip !13
  %187 = load i64* %R15, !mcsema_real_eip !13
  store i64 %187, i64* %R15_val, !mcsema_real_eip !13
  %188 = load i64* %RIP, !mcsema_real_eip !13
  store i64 %188, i64* %RIP_val, !mcsema_real_eip !13
  %189 = load i1* %CF, align 1, !mcsema_real_eip !13
  store i1 %189, i1* %CF_val, !mcsema_real_eip !13
  %190 = load i1* %PF, align 1, !mcsema_real_eip !13
  store i1 %190, i1* %PF_val, !mcsema_real_eip !13
  %191 = load i1* %AF, align 1, !mcsema_real_eip !13
  store i1 %191, i1* %AF_val, !mcsema_real_eip !13
  %192 = load i1* %ZF, align 1, !mcsema_real_eip !13
  store i1 %192, i1* %ZF_val, !mcsema_real_eip !13
  %193 = load i1* %SF, align 1, !mcsema_real_eip !13
  store i1 %193, i1* %SF_val, !mcsema_real_eip !13
  %194 = load i1* %OF, align 1, !mcsema_real_eip !13
  store i1 %194, i1* %OF_val, !mcsema_real_eip !13
  %195 = load i1* %DF, align 1, !mcsema_real_eip !13
  store i1 %195, i1* %DF_val, !mcsema_real_eip !13
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !13
  %196 = load i1* %FPU_B, align 1, !mcsema_real_eip !13
  store i1 %196, i1* %FPU_B_val, !mcsema_real_eip !13
  %197 = load i1* %FPU_C3, align 1, !mcsema_real_eip !13
  store i1 %197, i1* %FPU_C3_val, !mcsema_real_eip !13
  %198 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !13
  store i3 %198, i3* %FPU_TOP_val, !mcsema_real_eip !13
  %199 = load i1* %FPU_C2, align 1, !mcsema_real_eip !13
  store i1 %199, i1* %FPU_C2_val, !mcsema_real_eip !13
  %200 = load i1* %FPU_C1, align 1, !mcsema_real_eip !13
  store i1 %200, i1* %FPU_C1_val, !mcsema_real_eip !13
  %201 = load i1* %FPU_C0, align 1, !mcsema_real_eip !13
  store i1 %201, i1* %FPU_C0_val, !mcsema_real_eip !13
  %202 = load i1* %FPU_ES, align 1, !mcsema_real_eip !13
  store i1 %202, i1* %FPU_ES_val, !mcsema_real_eip !13
  %203 = load i1* %FPU_SF, align 1, !mcsema_real_eip !13
  store i1 %203, i1* %FPU_SF_val, !mcsema_real_eip !13
  %204 = load i1* %FPU_PE, align 1, !mcsema_real_eip !13
  store i1 %204, i1* %FPU_PE_val, !mcsema_real_eip !13
  %205 = load i1* %FPU_UE, align 1, !mcsema_real_eip !13
  store i1 %205, i1* %FPU_UE_val, !mcsema_real_eip !13
  %206 = load i1* %FPU_OE, align 1, !mcsema_real_eip !13
  store i1 %206, i1* %FPU_OE_val, !mcsema_real_eip !13
  %207 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !13
  store i1 %207, i1* %FPU_ZE_val, !mcsema_real_eip !13
  %208 = load i1* %FPU_DE, align 1, !mcsema_real_eip !13
  store i1 %208, i1* %FPU_DE_val, !mcsema_real_eip !13
  %209 = load i1* %FPU_IE, align 1, !mcsema_real_eip !13
  store i1 %209, i1* %FPU_IE_val, !mcsema_real_eip !13
  %210 = load i1* %FPU_X, align 1, !mcsema_real_eip !13
  store i1 %210, i1* %FPU_X_val, !mcsema_real_eip !13
  %211 = load i2* %FPU_RC, align 1, !mcsema_real_eip !13
  store i2 %211, i2* %FPU_RC_val, !mcsema_real_eip !13
  %212 = load i2* %FPU_PC, align 1, !mcsema_real_eip !13
  store i2 %212, i2* %FPU_PC_val, !mcsema_real_eip !13
  %213 = load i1* %FPU_PM, align 1, !mcsema_real_eip !13
  store i1 %213, i1* %FPU_PM_val, !mcsema_real_eip !13
  %214 = load i1* %FPU_UM, align 1, !mcsema_real_eip !13
  store i1 %214, i1* %FPU_UM_val, !mcsema_real_eip !13
  %215 = load i1* %FPU_OM, align 1, !mcsema_real_eip !13
  store i1 %215, i1* %FPU_OM_val, !mcsema_real_eip !13
  %216 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !13
  store i1 %216, i1* %FPU_ZM_val, !mcsema_real_eip !13
  %217 = load i1* %FPU_DM, align 1, !mcsema_real_eip !13
  store i1 %217, i1* %FPU_DM_val, !mcsema_real_eip !13
  %218 = load i1* %FPU_IM, align 1, !mcsema_real_eip !13
  store i1 %218, i1* %FPU_IM_val, !mcsema_real_eip !13
  %219 = load i64* %52, align 4
  store i64 %219, i64* %53, align 4
  %220 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !13
  store i16 %220, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !13
  %221 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !13
  store i64 %221, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !13
  %222 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !13
  store i16 %222, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !13
  %223 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !13
  store i64 %223, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !13
  %224 = load i128* %XMM0, align 1, !mcsema_real_eip !13
  store i128 %224, i128* %XMM0_val, !mcsema_real_eip !13
  %225 = load i128* %XMM1, align 1, !mcsema_real_eip !13
  store i128 %225, i128* %XMM1_val, !mcsema_real_eip !13
  %226 = load i128* %XMM2, align 1, !mcsema_real_eip !13
  store i128 %226, i128* %XMM2_val, !mcsema_real_eip !13
  %227 = load i128* %XMM3, align 1, !mcsema_real_eip !13
  store i128 %227, i128* %XMM3_val, !mcsema_real_eip !13
  %228 = load i128* %XMM4, align 1, !mcsema_real_eip !13
  store i128 %228, i128* %XMM4_val, !mcsema_real_eip !13
  %229 = load i128* %XMM5, align 1, !mcsema_real_eip !13
  store i128 %229, i128* %XMM5_val, !mcsema_real_eip !13
  %230 = load i128* %XMM6, align 1, !mcsema_real_eip !13
  store i128 %230, i128* %XMM6_val, !mcsema_real_eip !13
  %231 = load i128* %XMM7, align 1, !mcsema_real_eip !13
  store i128 %231, i128* %XMM7_val, !mcsema_real_eip !13
  %232 = load i128* %XMM8, align 1, !mcsema_real_eip !13
  store i128 %232, i128* %XMM8_val, !mcsema_real_eip !13
  %233 = load i128* %XMM9, align 1, !mcsema_real_eip !13
  store i128 %233, i128* %XMM9_val, !mcsema_real_eip !13
  %234 = load i128* %XMM10, align 1, !mcsema_real_eip !13
  store i128 %234, i128* %XMM10_val, !mcsema_real_eip !13
  %235 = load i128* %XMM11, align 1, !mcsema_real_eip !13
  store i128 %235, i128* %XMM11_val, !mcsema_real_eip !13
  %236 = load i128* %XMM12, align 1, !mcsema_real_eip !13
  store i128 %236, i128* %XMM12_val, !mcsema_real_eip !13
  %237 = load i128* %XMM13, align 1, !mcsema_real_eip !13
  store i128 %237, i128* %XMM13_val, !mcsema_real_eip !13
  %238 = load i128* %XMM14, align 1, !mcsema_real_eip !13
  store i128 %238, i128* %XMM14_val, !mcsema_real_eip !13
  %239 = load i128* %XMM15, align 1, !mcsema_real_eip !13
  store i128 %239, i128* %XMM15_val, !mcsema_real_eip !13
  %240 = load i64* %STACK_BASE, !mcsema_real_eip !13
  store i64 %240, i64* %STACK_BASE_val, !mcsema_real_eip !13
  %241 = load i64* %STACK_LIMIT, !mcsema_real_eip !13
  store i64 %241, i64* %STACK_LIMIT_val, !mcsema_real_eip !13
  store i64 0, i64* %RAX_val, !mcsema_real_eip !14
  %242 = load i64* %RBP_val, !mcsema_real_eip !15
  store i64 %242, i64* %RSP_val, !mcsema_real_eip !15
  %243 = inttoptr i64 %242 to i64*, !mcsema_real_eip !15
  %244 = load i64* %243, !mcsema_real_eip !15
  store i64 %244, i64* %RBP_val, !mcsema_real_eip !15
  %245 = add i64 %242, 16, !mcsema_real_eip !16
  store i64 %245, i64* %RSP_val, !mcsema_real_eip !16
  %246 = load i64* %RAX_val, !mcsema_real_eip !16
  store i64 %246, i64* %RAX, !mcsema_real_eip !16
  %247 = load i64* %RBX_val, !mcsema_real_eip !16
  store i64 %247, i64* %RBX, !mcsema_real_eip !16
  %248 = load i64* %RCX_val, !mcsema_real_eip !16
  store i64 %248, i64* %RCX, !mcsema_real_eip !16
  %249 = load i64* %RDX_val, !mcsema_real_eip !16
  store i64 %249, i64* %RDX, !mcsema_real_eip !16
  %250 = load i64* %RSI_val, !mcsema_real_eip !16
  store i64 %250, i64* %RSI, !mcsema_real_eip !16
  %251 = load i64* %RDI_val, !mcsema_real_eip !16
  store i64 %251, i64* %RDI, !mcsema_real_eip !16
  %252 = load i64* %RSP_val, !mcsema_real_eip !16
  store i64 %252, i64* %RSP, !mcsema_real_eip !16
  %253 = load i64* %RBP_val, !mcsema_real_eip !16
  store i64 %253, i64* %RBP, !mcsema_real_eip !16
  %254 = load i64* %R8_val, !mcsema_real_eip !16
  store i64 %254, i64* %R8, !mcsema_real_eip !16
  %255 = load i64* %R9_val, !mcsema_real_eip !16
  store i64 %255, i64* %R9, !mcsema_real_eip !16
  %256 = load i64* %R10_val, !mcsema_real_eip !16
  store i64 %256, i64* %R10, !mcsema_real_eip !16
  %257 = load i64* %R11_val, !mcsema_real_eip !16
  store i64 %257, i64* %R11, !mcsema_real_eip !16
  %258 = load i64* %R12_val, !mcsema_real_eip !16
  store i64 %258, i64* %R12, !mcsema_real_eip !16
  %259 = load i64* %R13_val, !mcsema_real_eip !16
  store i64 %259, i64* %R13, !mcsema_real_eip !16
  %260 = load i64* %R14_val, !mcsema_real_eip !16
  store i64 %260, i64* %R14, !mcsema_real_eip !16
  %261 = load i64* %R15_val, !mcsema_real_eip !16
  store i64 %261, i64* %R15, !mcsema_real_eip !16
  %262 = load i64* %RIP_val, !mcsema_real_eip !16
  store i64 %262, i64* %RIP, !mcsema_real_eip !16
  %263 = load i1* %CF_val, !mcsema_real_eip !16
  store i1 %263, i1* %CF, align 1, !mcsema_real_eip !16
  %264 = load i1* %PF_val, !mcsema_real_eip !16
  store i1 %264, i1* %PF, align 1, !mcsema_real_eip !16
  %265 = load i1* %AF_val, !mcsema_real_eip !16
  store i1 %265, i1* %AF, align 1, !mcsema_real_eip !16
  %266 = load i1* %ZF_val, !mcsema_real_eip !16
  store i1 %266, i1* %ZF, align 1, !mcsema_real_eip !16
  %267 = load i1* %SF_val, !mcsema_real_eip !16
  store i1 %267, i1* %SF, align 1, !mcsema_real_eip !16
  %268 = load i1* %OF_val, !mcsema_real_eip !16
  store i1 %268, i1* %OF, align 1, !mcsema_real_eip !16
  %269 = load i1* %DF_val, !mcsema_real_eip !16
  store i1 %269, i1* %DF, align 1, !mcsema_real_eip !16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !16
  %270 = load i1* %FPU_B_val, !mcsema_real_eip !16
  store i1 %270, i1* %FPU_B, align 1, !mcsema_real_eip !16
  %271 = load i1* %FPU_C3_val, !mcsema_real_eip !16
  store i1 %271, i1* %FPU_C3, align 1, !mcsema_real_eip !16
  %272 = load i3* %FPU_TOP_val, !mcsema_real_eip !16
  store i3 %272, i3* %FPU_TOP, align 1, !mcsema_real_eip !16
  %273 = load i1* %FPU_C2_val, !mcsema_real_eip !16
  store i1 %273, i1* %FPU_C2, align 1, !mcsema_real_eip !16
  %274 = load i1* %FPU_C1_val, !mcsema_real_eip !16
  store i1 %274, i1* %FPU_C1, align 1, !mcsema_real_eip !16
  %275 = load i1* %FPU_C0_val, !mcsema_real_eip !16
  store i1 %275, i1* %FPU_C0, align 1, !mcsema_real_eip !16
  %276 = load i1* %FPU_ES_val, !mcsema_real_eip !16
  store i1 %276, i1* %FPU_ES, align 1, !mcsema_real_eip !16
  %277 = load i1* %FPU_SF_val, !mcsema_real_eip !16
  store i1 %277, i1* %FPU_SF, align 1, !mcsema_real_eip !16
  %278 = load i1* %FPU_PE_val, !mcsema_real_eip !16
  store i1 %278, i1* %FPU_PE, align 1, !mcsema_real_eip !16
  %279 = load i1* %FPU_UE_val, !mcsema_real_eip !16
  store i1 %279, i1* %FPU_UE, align 1, !mcsema_real_eip !16
  %280 = load i1* %FPU_OE_val, !mcsema_real_eip !16
  store i1 %280, i1* %FPU_OE, align 1, !mcsema_real_eip !16
  %281 = load i1* %FPU_ZE_val, !mcsema_real_eip !16
  store i1 %281, i1* %FPU_ZE, align 1, !mcsema_real_eip !16
  %282 = load i1* %FPU_DE_val, !mcsema_real_eip !16
  store i1 %282, i1* %FPU_DE, align 1, !mcsema_real_eip !16
  %283 = load i1* %FPU_IE_val, !mcsema_real_eip !16
  store i1 %283, i1* %FPU_IE, align 1, !mcsema_real_eip !16
  %284 = load i1* %FPU_X_val, !mcsema_real_eip !16
  store i1 %284, i1* %FPU_X, align 1, !mcsema_real_eip !16
  %285 = load i2* %FPU_RC_val, !mcsema_real_eip !16
  store i2 %285, i2* %FPU_RC, align 1, !mcsema_real_eip !16
  %286 = load i2* %FPU_PC_val, !mcsema_real_eip !16
  store i2 %286, i2* %FPU_PC, align 1, !mcsema_real_eip !16
  %287 = load i1* %FPU_PM_val, !mcsema_real_eip !16
  store i1 %287, i1* %FPU_PM, align 1, !mcsema_real_eip !16
  %288 = load i1* %FPU_UM_val, !mcsema_real_eip !16
  store i1 %288, i1* %FPU_UM, align 1, !mcsema_real_eip !16
  %289 = load i1* %FPU_OM_val, !mcsema_real_eip !16
  store i1 %289, i1* %FPU_OM, align 1, !mcsema_real_eip !16
  %290 = load i1* %FPU_ZM_val, !mcsema_real_eip !16
  store i1 %290, i1* %FPU_ZM, align 1, !mcsema_real_eip !16
  %291 = load i1* %FPU_DM_val, !mcsema_real_eip !16
  store i1 %291, i1* %FPU_DM, align 1, !mcsema_real_eip !16
  %292 = load i1* %FPU_IM_val, !mcsema_real_eip !16
  store i1 %292, i1* %FPU_IM, align 1, !mcsema_real_eip !16
  %293 = load i64* %53, align 4
  store i64 %293, i64* %52, align 4
  %294 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !16
  store i16 %294, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !16
  %295 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !16
  store i64 %295, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !16
  %296 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !16
  store i16 %296, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !16
  %297 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !16
  store i64 %297, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !16
  %298 = load i128* %XMM0_val, !mcsema_real_eip !16
  store i128 %298, i128* %XMM0, align 1, !mcsema_real_eip !16
  %299 = load i128* %XMM1_val, !mcsema_real_eip !16
  store i128 %299, i128* %XMM1, align 1, !mcsema_real_eip !16
  %300 = load i128* %XMM2_val, !mcsema_real_eip !16
  store i128 %300, i128* %XMM2, align 1, !mcsema_real_eip !16
  %301 = load i128* %XMM3_val, !mcsema_real_eip !16
  store i128 %301, i128* %XMM3, align 1, !mcsema_real_eip !16
  %302 = load i128* %XMM4_val, !mcsema_real_eip !16
  store i128 %302, i128* %XMM4, align 1, !mcsema_real_eip !16
  %303 = load i128* %XMM5_val, !mcsema_real_eip !16
  store i128 %303, i128* %XMM5, align 1, !mcsema_real_eip !16
  %304 = load i128* %XMM6_val, !mcsema_real_eip !16
  store i128 %304, i128* %XMM6, align 1, !mcsema_real_eip !16
  %305 = load i128* %XMM7_val, !mcsema_real_eip !16
  store i128 %305, i128* %XMM7, align 1, !mcsema_real_eip !16
  %306 = load i128* %XMM8_val, !mcsema_real_eip !16
  store i128 %306, i128* %XMM8, align 1, !mcsema_real_eip !16
  %307 = load i128* %XMM9_val, !mcsema_real_eip !16
  store i128 %307, i128* %XMM9, align 1, !mcsema_real_eip !16
  %308 = load i128* %XMM10_val, !mcsema_real_eip !16
  store i128 %308, i128* %XMM10, align 1, !mcsema_real_eip !16
  %309 = load i128* %XMM11_val, !mcsema_real_eip !16
  store i128 %309, i128* %XMM11, align 1, !mcsema_real_eip !16
  %310 = load i128* %XMM12_val, !mcsema_real_eip !16
  store i128 %310, i128* %XMM12, align 1, !mcsema_real_eip !16
  %311 = load i128* %XMM13_val, !mcsema_real_eip !16
  store i128 %311, i128* %XMM13, align 1, !mcsema_real_eip !16
  %312 = load i128* %XMM14_val, !mcsema_real_eip !16
  store i128 %312, i128* %XMM14, align 1, !mcsema_real_eip !16
  %313 = load i128* %XMM15_val, !mcsema_real_eip !16
  store i128 %313, i128* %XMM15, align 1, !mcsema_real_eip !16
  %314 = load i64* %STACK_BASE_val, !mcsema_real_eip !16
  store i64 %314, i64* %STACK_BASE, align 1, !mcsema_real_eip !16
  %315 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !16
  store i64 %315, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !16
  ret void, !mcsema_real_eip !16
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !17
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !17
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !17
  %XMM15_val = alloca i128, !mcsema_real_eip !17
  %XMM14_val = alloca i128, !mcsema_real_eip !17
  %XMM13_val = alloca i128, !mcsema_real_eip !17
  %XMM12_val = alloca i128, !mcsema_real_eip !17
  %XMM11_val = alloca i128, !mcsema_real_eip !17
  %XMM10_val = alloca i128, !mcsema_real_eip !17
  %XMM9_val = alloca i128, !mcsema_real_eip !17
  %XMM8_val = alloca i128, !mcsema_real_eip !17
  %XMM7_val = alloca i128, !mcsema_real_eip !17
  %XMM6_val = alloca i128, !mcsema_real_eip !17
  %XMM5_val = alloca i128, !mcsema_real_eip !17
  %XMM4_val = alloca i128, !mcsema_real_eip !17
  %XMM3_val = alloca i128, !mcsema_real_eip !17
  %XMM2_val = alloca i128, !mcsema_real_eip !17
  %XMM1_val = alloca i128, !mcsema_real_eip !17
  %XMM0_val = alloca i128, !mcsema_real_eip !17
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !17
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !17
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !17
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !17
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !17
  %FPU_IM_val = alloca i1, !mcsema_real_eip !17
  %FPU_DM_val = alloca i1, !mcsema_real_eip !17
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !17
  %FPU_OM_val = alloca i1, !mcsema_real_eip !17
  %FPU_UM_val = alloca i1, !mcsema_real_eip !17
  %FPU_PM_val = alloca i1, !mcsema_real_eip !17
  %FPU_PC_val = alloca i2, !mcsema_real_eip !17
  %FPU_RC_val = alloca i2, !mcsema_real_eip !17
  %FPU_X_val = alloca i1, !mcsema_real_eip !17
  %FPU_IE_val = alloca i1, !mcsema_real_eip !17
  %FPU_DE_val = alloca i1, !mcsema_real_eip !17
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !17
  %FPU_OE_val = alloca i1, !mcsema_real_eip !17
  %FPU_UE_val = alloca i1, !mcsema_real_eip !17
  %FPU_PE_val = alloca i1, !mcsema_real_eip !17
  %FPU_SF_val = alloca i1, !mcsema_real_eip !17
  %FPU_ES_val = alloca i1, !mcsema_real_eip !17
  %FPU_C0_val = alloca i1, !mcsema_real_eip !17
  %FPU_C1_val = alloca i1, !mcsema_real_eip !17
  %FPU_C2_val = alloca i1, !mcsema_real_eip !17
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !17
  %FPU_C3_val = alloca i1, !mcsema_real_eip !17
  %FPU_B_val = alloca i1, !mcsema_real_eip !17
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !17
  %DF_val = alloca i1, !mcsema_real_eip !17
  %OF_val = alloca i1, !mcsema_real_eip !17
  %SF_val = alloca i1, !mcsema_real_eip !17
  %CF_val = alloca i1, !mcsema_real_eip !17
  %AF_val = alloca i1, !mcsema_real_eip !17
  %PF_val = alloca i1, !mcsema_real_eip !17
  %ZF_val = alloca i1, !mcsema_real_eip !17
  %RIP_val = alloca i64, !mcsema_real_eip !17
  %R14_val = alloca i64, !mcsema_real_eip !17
  %R13_val = alloca i64, !mcsema_real_eip !17
  %R12_val = alloca i64, !mcsema_real_eip !17
  %R11_val = alloca i64, !mcsema_real_eip !17
  %R10_val = alloca i64, !mcsema_real_eip !17
  %R9_val = alloca i64, !mcsema_real_eip !17
  %R8_val = alloca i64, !mcsema_real_eip !17
  %RSP_val = alloca i64, !mcsema_real_eip !17
  %RBP_val = alloca i64, !mcsema_real_eip !17
  %RDI_val = alloca i64, !mcsema_real_eip !17
  %RSI_val = alloca i64, !mcsema_real_eip !17
  %RDX_val = alloca i64, !mcsema_real_eip !17
  %RCX_val = alloca i64, !mcsema_real_eip !17
  %RBX_val = alloca i64, !mcsema_real_eip !17
  %RAX_val = alloca i64, !mcsema_real_eip !17
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !17
  %1 = load i64* %RAX, !mcsema_real_eip !17
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !17
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !17
  %2 = load i64* %RBX, !mcsema_real_eip !17
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !17
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !17
  %3 = load i64* %RCX, !mcsema_real_eip !17
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !17
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !17
  %4 = load i64* %RDX, !mcsema_real_eip !17
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !17
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !17
  %5 = load i64* %RSI, !mcsema_real_eip !17
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !17
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !17
  %6 = load i64* %RDI, !mcsema_real_eip !17
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !17
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !17
  %7 = load i64* %RSP, !mcsema_real_eip !17
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !17
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !17
  %8 = load i64* %RBP, !mcsema_real_eip !17
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !17
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !17
  %9 = load i64* %R8, !mcsema_real_eip !17
  store i64 %9, i64* %R8_val, !mcsema_real_eip !17
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !17
  %10 = load i64* %R9, !mcsema_real_eip !17
  store i64 %10, i64* %R9_val, !mcsema_real_eip !17
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !17
  %11 = load i64* %R10, !mcsema_real_eip !17
  store i64 %11, i64* %R10_val, !mcsema_real_eip !17
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !17
  %12 = load i64* %R11, !mcsema_real_eip !17
  store i64 %12, i64* %R11_val, !mcsema_real_eip !17
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !17
  %13 = load i64* %R12, !mcsema_real_eip !17
  store i64 %13, i64* %R12_val, !mcsema_real_eip !17
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !17
  %14 = load i64* %R13, !mcsema_real_eip !17
  store i64 %14, i64* %R13_val, !mcsema_real_eip !17
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !17
  %15 = load i64* %R14, !mcsema_real_eip !17
  store i64 %15, i64* %R14_val, !mcsema_real_eip !17
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !17
  %16 = load i64* %R15, !mcsema_real_eip !17
  store i64 %16, i64* %R15_val, !mcsema_real_eip !17
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !17
  %17 = load i64* %RIP, !mcsema_real_eip !17
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !17
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !17
  %18 = load i1* %CF, align 1, !mcsema_real_eip !17
  store i1 %18, i1* %CF_val, !mcsema_real_eip !17
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !17
  %19 = load i1* %PF, align 1, !mcsema_real_eip !17
  store i1 %19, i1* %PF_val, !mcsema_real_eip !17
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !17
  %20 = load i1* %AF, align 1, !mcsema_real_eip !17
  store i1 %20, i1* %AF_val, !mcsema_real_eip !17
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !17
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !17
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !17
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !17
  %22 = load i1* %SF, align 1, !mcsema_real_eip !17
  store i1 %22, i1* %SF_val, !mcsema_real_eip !17
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !17
  %23 = load i1* %OF, align 1, !mcsema_real_eip !17
  store i1 %23, i1* %OF_val, !mcsema_real_eip !17
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !17
  %24 = load i1* %DF, align 1, !mcsema_real_eip !17
  store i1 %24, i1* %DF_val, !mcsema_real_eip !17
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !17
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !17
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !17
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !17
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !17
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !17
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !17
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !17
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !17
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !17
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !17
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !17
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !17
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !17
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !17
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !17
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !17
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !17
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !17
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !17
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !17
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !17
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !17
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !17
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !17
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !17
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !17
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !17
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !17
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !17
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !17
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !17
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !17
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !17
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !17
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !17
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !17
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !17
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !17
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !17
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !17
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !17
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !17
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !17
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !17
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !17
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !17
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !17
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !17
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !17
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !17
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !17
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !17
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !17
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !17
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !17
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !17
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !17
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !17
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !17
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !17
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !17
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !17
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !17
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !17
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !17
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !17
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !17
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !17
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !17
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !17
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !17
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !17
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !17
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !17
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !17
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !17
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !17
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !17
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !17
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !17
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !17
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !17
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !17
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !17
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !17
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !17
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !17
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !17
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !17
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !17
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !17
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !17
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !17
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !17
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !17
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !17
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !17
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !17
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !17
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !17
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !17
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !17
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !17
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !17
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !17
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !17
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !17
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !17
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !17
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !17
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !17
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !17
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !17
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !17
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !17
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !17
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !17
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !17
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !17
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !17
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !17
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !17
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !17
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !17
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !17
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !17
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !17
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !17
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !17
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !17
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !17
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !17
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !17
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !17
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !17
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !17
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !17
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !17
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !17
  %77 = load i64* %RBP_val, !mcsema_real_eip !17
  %78 = load i64* %RSP_val, !mcsema_real_eip !17
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !17
  store i64 %77, i64* %80, !mcsema_real_eip !17
  store i64 %79, i64* %RSP_val, !mcsema_real_eip !17
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !18
  %81 = add i64 %78, -12, !mcsema_real_eip !19
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !19
  %83 = load i64* %RDI_val, !mcsema_real_eip !19
  %84 = trunc i64 %83 to i32, !mcsema_real_eip !19
  %85 = bitcast i64* %82 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !19
  %86 = load i64* %RBP_val, !mcsema_real_eip !20
  %87 = add i64 %86, -8, !mcsema_real_eip !20
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !20
  %89 = load i64* %RSI_val, !mcsema_real_eip !20
  %90 = trunc i64 %89 to i32, !mcsema_real_eip !20
  %91 = bitcast i64* %88 to i32*
  store i32 %90, i32* %91, !mcsema_real_eip !20
  %92 = load i64* %RBP_val, !mcsema_real_eip !21
  %93 = add i64 %92, -12, !mcsema_real_eip !21
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !21
  %95 = load i64* %RDX_val, !mcsema_real_eip !21
  %96 = trunc i64 %95 to i32, !mcsema_real_eip !21
  %97 = bitcast i64* %94 to i32*
  store i32 %96, i32* %97, !mcsema_real_eip !21
  %98 = load i64* %RBP_val, !mcsema_real_eip !22
  %99 = add i64 %98, -16, !mcsema_real_eip !22
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !22
  %101 = load i64* %RCX_val, !mcsema_real_eip !22
  %102 = trunc i64 %101 to i32, !mcsema_real_eip !22
  %103 = bitcast i64* %100 to i32*
  store i32 %102, i32* %103, !mcsema_real_eip !22
  %104 = load i64* %RBP_val, !mcsema_real_eip !23
  %105 = add i64 %104, -20, !mcsema_real_eip !23
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !23
  %107 = load i64* %R8_val, !mcsema_real_eip !23
  %108 = trunc i64 %107 to i32, !mcsema_real_eip !23
  %109 = bitcast i64* %106 to i32*
  store i32 %108, i32* %109, !mcsema_real_eip !23
  %110 = load i64* %RBP_val, !mcsema_real_eip !24
  %111 = add i64 %110, -24, !mcsema_real_eip !24
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !24
  %113 = load i64* %R9_val, !mcsema_real_eip !24
  %114 = trunc i64 %113 to i32, !mcsema_real_eip !24
  %115 = bitcast i64* %112 to i32*
  store i32 %114, i32* %115, !mcsema_real_eip !24
  %116 = load i64* %RBP_val, !mcsema_real_eip !25
  %117 = add i64 %116, -4, !mcsema_real_eip !25
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !25
  %119 = bitcast i64* %118 to i32*
  %120 = load i32* %119, !mcsema_real_eip !25
  %121 = sext i32 %120 to i64, !mcsema_real_eip !26
  store i64 %121, i64* %RAX_val, !mcsema_real_eip !26
  %122 = shl nsw i64 %121, 2
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !27
  %124 = ptrtoint i64* %123 to i64, !mcsema_real_eip !27
  store i64 %124, i64* %RDX_val, !mcsema_real_eip !27
  %125 = load i64* %RBP_val, !mcsema_real_eip !28
  %126 = add i64 %125, 16, !mcsema_real_eip !28
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !28
  %128 = load i64* %127, !mcsema_real_eip !28
  store i64 %128, i64* %RAX_val, !mcsema_real_eip !28
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %128, i64 %124)
  %129 = extractvalue { i64, i1 } %uadd, 0
  %130 = xor i64 %129, %124, !mcsema_real_eip !29
  %131 = xor i64 %130, %128, !mcsema_real_eip !29
  %132 = and i64 %131, 16, !mcsema_real_eip !29
  %133 = icmp ne i64 %132, 0, !mcsema_real_eip !29
  store i1 %133, i1* %AF_val, !mcsema_real_eip !29
  %134 = icmp slt i64 %129, 0
  store i1 %134, i1* %SF_val, !mcsema_real_eip !29
  %135 = icmp eq i64 %129, 0, !mcsema_real_eip !29
  store i1 %135, i1* %ZF_val, !mcsema_real_eip !29
  %136 = xor i64 %128, -9223372036854775808, !mcsema_real_eip !29
  %137 = xor i64 %136, %124, !mcsema_real_eip !29
  %138 = and i64 %130, %137, !mcsema_real_eip !29
  %139 = icmp slt i64 %138, 0
  store i1 %139, i1* %OF_val, !mcsema_real_eip !29
  %140 = trunc i64 %129 to i8, !mcsema_real_eip !29
  %141 = tail call i8 @llvm.ctpop.i8(i8 %140), !mcsema_real_eip !29
  %142 = and i8 %141, 1
  %143 = icmp eq i8 %142, 0
  store i1 %143, i1* %PF_val, !mcsema_real_eip !29
  %144 = extractvalue { i64, i1 } %uadd, 1
  store i1 %144, i1* %CF_val, !mcsema_real_eip !29
  store i64 %129, i64* %RDX_val, !mcsema_real_eip !29
  %145 = load i64* %RBP_val, !mcsema_real_eip !30
  %146 = add i64 %145, -4, !mcsema_real_eip !30
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !30
  %148 = bitcast i64* %147 to i32*
  %149 = load i32* %148, !mcsema_real_eip !30
  %150 = zext i32 %149 to i64, !mcsema_real_eip !30
  store i64 %150, i64* %RAX_val, !mcsema_real_eip !30
  %151 = load i64* %RDX_val, !mcsema_real_eip !31
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !31
  %153 = bitcast i64* %152 to i32*
  store i32 %149, i32* %153, !mcsema_real_eip !31
  %154 = load i64* %RBP_val, !mcsema_real_eip !32
  %155 = add i64 %154, -8, !mcsema_real_eip !32
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !32
  %157 = bitcast i64* %156 to i32*
  %158 = load i32* %157, !mcsema_real_eip !32
  %159 = sext i32 %158 to i64, !mcsema_real_eip !33
  store i64 %159, i64* %RAX_val, !mcsema_real_eip !33
  %160 = shl nsw i64 %159, 2
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !34
  %162 = ptrtoint i64* %161 to i64, !mcsema_real_eip !34
  store i64 %162, i64* %RDX_val, !mcsema_real_eip !34
  %163 = load i64* %RBP_val, !mcsema_real_eip !35
  %164 = add i64 %163, 16, !mcsema_real_eip !35
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !35
  %166 = load i64* %165, !mcsema_real_eip !35
  store i64 %166, i64* %RAX_val, !mcsema_real_eip !35
  %uadd70 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %166, i64 %162)
  %167 = extractvalue { i64, i1 } %uadd70, 0
  %168 = xor i64 %167, %162, !mcsema_real_eip !36
  %169 = xor i64 %168, %166, !mcsema_real_eip !36
  %170 = and i64 %169, 16, !mcsema_real_eip !36
  %171 = icmp ne i64 %170, 0, !mcsema_real_eip !36
  store i1 %171, i1* %AF_val, !mcsema_real_eip !36
  %172 = icmp slt i64 %167, 0
  store i1 %172, i1* %SF_val, !mcsema_real_eip !36
  %173 = icmp eq i64 %167, 0, !mcsema_real_eip !36
  store i1 %173, i1* %ZF_val, !mcsema_real_eip !36
  %174 = xor i64 %166, -9223372036854775808, !mcsema_real_eip !36
  %175 = xor i64 %174, %162, !mcsema_real_eip !36
  %176 = and i64 %168, %175, !mcsema_real_eip !36
  %177 = icmp slt i64 %176, 0
  store i1 %177, i1* %OF_val, !mcsema_real_eip !36
  %178 = trunc i64 %167 to i8, !mcsema_real_eip !36
  %179 = tail call i8 @llvm.ctpop.i8(i8 %178), !mcsema_real_eip !36
  %180 = and i8 %179, 1
  %181 = icmp eq i8 %180, 0
  store i1 %181, i1* %PF_val, !mcsema_real_eip !36
  %182 = extractvalue { i64, i1 } %uadd70, 1
  store i1 %182, i1* %CF_val, !mcsema_real_eip !36
  store i64 %167, i64* %RDX_val, !mcsema_real_eip !36
  %183 = load i64* %RBP_val, !mcsema_real_eip !37
  %184 = add i64 %183, -8, !mcsema_real_eip !37
  %185 = inttoptr i64 %184 to i64*, !mcsema_real_eip !37
  %186 = bitcast i64* %185 to i32*
  %187 = load i32* %186, !mcsema_real_eip !37
  %188 = zext i32 %187 to i64, !mcsema_real_eip !37
  store i64 %188, i64* %RAX_val, !mcsema_real_eip !37
  %189 = load i64* %RDX_val, !mcsema_real_eip !38
  %190 = inttoptr i64 %189 to i64*, !mcsema_real_eip !38
  %191 = bitcast i64* %190 to i32*
  store i32 %187, i32* %191, !mcsema_real_eip !38
  %192 = load i64* %RBP_val, !mcsema_real_eip !39
  %193 = add i64 %192, -12, !mcsema_real_eip !39
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !39
  %195 = bitcast i64* %194 to i32*
  %196 = load i32* %195, !mcsema_real_eip !39
  %197 = sext i32 %196 to i64, !mcsema_real_eip !40
  store i64 %197, i64* %RAX_val, !mcsema_real_eip !40
  %198 = shl nsw i64 %197, 2
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !41
  %200 = ptrtoint i64* %199 to i64, !mcsema_real_eip !41
  store i64 %200, i64* %RDX_val, !mcsema_real_eip !41
  %201 = load i64* %RBP_val, !mcsema_real_eip !42
  %202 = add i64 %201, 16, !mcsema_real_eip !42
  %203 = inttoptr i64 %202 to i64*, !mcsema_real_eip !42
  %204 = load i64* %203, !mcsema_real_eip !42
  store i64 %204, i64* %RAX_val, !mcsema_real_eip !42
  %uadd71 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %204, i64 %200)
  %205 = extractvalue { i64, i1 } %uadd71, 0
  %206 = xor i64 %205, %200, !mcsema_real_eip !43
  %207 = xor i64 %206, %204, !mcsema_real_eip !43
  %208 = and i64 %207, 16, !mcsema_real_eip !43
  %209 = icmp ne i64 %208, 0, !mcsema_real_eip !43
  store i1 %209, i1* %AF_val, !mcsema_real_eip !43
  %210 = icmp slt i64 %205, 0
  store i1 %210, i1* %SF_val, !mcsema_real_eip !43
  %211 = icmp eq i64 %205, 0, !mcsema_real_eip !43
  store i1 %211, i1* %ZF_val, !mcsema_real_eip !43
  %212 = xor i64 %204, -9223372036854775808, !mcsema_real_eip !43
  %213 = xor i64 %212, %200, !mcsema_real_eip !43
  %214 = and i64 %206, %213, !mcsema_real_eip !43
  %215 = icmp slt i64 %214, 0
  store i1 %215, i1* %OF_val, !mcsema_real_eip !43
  %216 = trunc i64 %205 to i8, !mcsema_real_eip !43
  %217 = tail call i8 @llvm.ctpop.i8(i8 %216), !mcsema_real_eip !43
  %218 = and i8 %217, 1
  %219 = icmp eq i8 %218, 0
  store i1 %219, i1* %PF_val, !mcsema_real_eip !43
  %220 = extractvalue { i64, i1 } %uadd71, 1
  store i1 %220, i1* %CF_val, !mcsema_real_eip !43
  store i64 %205, i64* %RDX_val, !mcsema_real_eip !43
  %221 = load i64* %RBP_val, !mcsema_real_eip !44
  %222 = add i64 %221, -12, !mcsema_real_eip !44
  %223 = inttoptr i64 %222 to i64*, !mcsema_real_eip !44
  %224 = bitcast i64* %223 to i32*
  %225 = load i32* %224, !mcsema_real_eip !44
  %226 = zext i32 %225 to i64, !mcsema_real_eip !44
  store i64 %226, i64* %RAX_val, !mcsema_real_eip !44
  %227 = load i64* %RDX_val, !mcsema_real_eip !45
  %228 = inttoptr i64 %227 to i64*, !mcsema_real_eip !45
  %229 = bitcast i64* %228 to i32*
  store i32 %225, i32* %229, !mcsema_real_eip !45
  %230 = load i64* %RBP_val, !mcsema_real_eip !46
  %231 = add i64 %230, -16, !mcsema_real_eip !46
  %232 = inttoptr i64 %231 to i64*, !mcsema_real_eip !46
  %233 = bitcast i64* %232 to i32*
  %234 = load i32* %233, !mcsema_real_eip !46
  %235 = sext i32 %234 to i64, !mcsema_real_eip !47
  store i64 %235, i64* %RAX_val, !mcsema_real_eip !47
  %236 = shl nsw i64 %235, 2
  %237 = inttoptr i64 %236 to i64*, !mcsema_real_eip !48
  %238 = ptrtoint i64* %237 to i64, !mcsema_real_eip !48
  store i64 %238, i64* %RDX_val, !mcsema_real_eip !48
  %239 = load i64* %RBP_val, !mcsema_real_eip !49
  %240 = add i64 %239, 16, !mcsema_real_eip !49
  %241 = inttoptr i64 %240 to i64*, !mcsema_real_eip !49
  %242 = load i64* %241, !mcsema_real_eip !49
  store i64 %242, i64* %RAX_val, !mcsema_real_eip !49
  %uadd72 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %242, i64 %238)
  %243 = extractvalue { i64, i1 } %uadd72, 0
  %244 = xor i64 %243, %238, !mcsema_real_eip !50
  %245 = xor i64 %244, %242, !mcsema_real_eip !50
  %246 = and i64 %245, 16, !mcsema_real_eip !50
  %247 = icmp ne i64 %246, 0, !mcsema_real_eip !50
  store i1 %247, i1* %AF_val, !mcsema_real_eip !50
  %248 = icmp slt i64 %243, 0
  store i1 %248, i1* %SF_val, !mcsema_real_eip !50
  %249 = icmp eq i64 %243, 0, !mcsema_real_eip !50
  store i1 %249, i1* %ZF_val, !mcsema_real_eip !50
  %250 = xor i64 %242, -9223372036854775808, !mcsema_real_eip !50
  %251 = xor i64 %250, %238, !mcsema_real_eip !50
  %252 = and i64 %244, %251, !mcsema_real_eip !50
  %253 = icmp slt i64 %252, 0
  store i1 %253, i1* %OF_val, !mcsema_real_eip !50
  %254 = trunc i64 %243 to i8, !mcsema_real_eip !50
  %255 = tail call i8 @llvm.ctpop.i8(i8 %254), !mcsema_real_eip !50
  %256 = and i8 %255, 1
  %257 = icmp eq i8 %256, 0
  store i1 %257, i1* %PF_val, !mcsema_real_eip !50
  %258 = extractvalue { i64, i1 } %uadd72, 1
  store i1 %258, i1* %CF_val, !mcsema_real_eip !50
  store i64 %243, i64* %RDX_val, !mcsema_real_eip !50
  %259 = load i64* %RBP_val, !mcsema_real_eip !51
  %260 = add i64 %259, -16, !mcsema_real_eip !51
  %261 = inttoptr i64 %260 to i64*, !mcsema_real_eip !51
  %262 = bitcast i64* %261 to i32*
  %263 = load i32* %262, !mcsema_real_eip !51
  %264 = zext i32 %263 to i64, !mcsema_real_eip !51
  store i64 %264, i64* %RAX_val, !mcsema_real_eip !51
  %265 = load i64* %RDX_val, !mcsema_real_eip !52
  %266 = inttoptr i64 %265 to i64*, !mcsema_real_eip !52
  %267 = bitcast i64* %266 to i32*
  store i32 %263, i32* %267, !mcsema_real_eip !52
  %268 = load i64* %RBP_val, !mcsema_real_eip !53
  %269 = add i64 %268, -20, !mcsema_real_eip !53
  %270 = inttoptr i64 %269 to i64*, !mcsema_real_eip !53
  %271 = bitcast i64* %270 to i32*
  %272 = load i32* %271, !mcsema_real_eip !53
  %273 = sext i32 %272 to i64, !mcsema_real_eip !54
  store i64 %273, i64* %RAX_val, !mcsema_real_eip !54
  %274 = shl nsw i64 %273, 2
  %275 = inttoptr i64 %274 to i64*, !mcsema_real_eip !55
  %276 = ptrtoint i64* %275 to i64, !mcsema_real_eip !55
  store i64 %276, i64* %RDX_val, !mcsema_real_eip !55
  %277 = load i64* %RBP_val, !mcsema_real_eip !56
  %278 = add i64 %277, 16, !mcsema_real_eip !56
  %279 = inttoptr i64 %278 to i64*, !mcsema_real_eip !56
  %280 = load i64* %279, !mcsema_real_eip !56
  store i64 %280, i64* %RAX_val, !mcsema_real_eip !56
  %uadd73 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %280, i64 %276)
  %281 = extractvalue { i64, i1 } %uadd73, 0
  %282 = xor i64 %281, %276, !mcsema_real_eip !57
  %283 = xor i64 %282, %280, !mcsema_real_eip !57
  %284 = and i64 %283, 16, !mcsema_real_eip !57
  %285 = icmp ne i64 %284, 0, !mcsema_real_eip !57
  store i1 %285, i1* %AF_val, !mcsema_real_eip !57
  %286 = icmp slt i64 %281, 0
  store i1 %286, i1* %SF_val, !mcsema_real_eip !57
  %287 = icmp eq i64 %281, 0, !mcsema_real_eip !57
  store i1 %287, i1* %ZF_val, !mcsema_real_eip !57
  %288 = xor i64 %280, -9223372036854775808, !mcsema_real_eip !57
  %289 = xor i64 %288, %276, !mcsema_real_eip !57
  %290 = and i64 %282, %289, !mcsema_real_eip !57
  %291 = icmp slt i64 %290, 0
  store i1 %291, i1* %OF_val, !mcsema_real_eip !57
  %292 = trunc i64 %281 to i8, !mcsema_real_eip !57
  %293 = tail call i8 @llvm.ctpop.i8(i8 %292), !mcsema_real_eip !57
  %294 = and i8 %293, 1
  %295 = icmp eq i8 %294, 0
  store i1 %295, i1* %PF_val, !mcsema_real_eip !57
  %296 = extractvalue { i64, i1 } %uadd73, 1
  store i1 %296, i1* %CF_val, !mcsema_real_eip !57
  store i64 %281, i64* %RDX_val, !mcsema_real_eip !57
  %297 = load i64* %RBP_val, !mcsema_real_eip !58
  %298 = add i64 %297, -20, !mcsema_real_eip !58
  %299 = inttoptr i64 %298 to i64*, !mcsema_real_eip !58
  %300 = bitcast i64* %299 to i32*
  %301 = load i32* %300, !mcsema_real_eip !58
  %302 = zext i32 %301 to i64, !mcsema_real_eip !58
  store i64 %302, i64* %RAX_val, !mcsema_real_eip !58
  %303 = load i64* %RDX_val, !mcsema_real_eip !59
  %304 = inttoptr i64 %303 to i64*, !mcsema_real_eip !59
  %305 = bitcast i64* %304 to i32*
  store i32 %301, i32* %305, !mcsema_real_eip !59
  %306 = load i64* %RBP_val, !mcsema_real_eip !60
  %307 = add i64 %306, -24, !mcsema_real_eip !60
  %308 = inttoptr i64 %307 to i64*, !mcsema_real_eip !60
  %309 = bitcast i64* %308 to i32*
  %310 = load i32* %309, !mcsema_real_eip !60
  %311 = sext i32 %310 to i64, !mcsema_real_eip !61
  store i64 %311, i64* %RAX_val, !mcsema_real_eip !61
  %312 = shl nsw i64 %311, 2
  %313 = inttoptr i64 %312 to i64*, !mcsema_real_eip !62
  %314 = ptrtoint i64* %313 to i64, !mcsema_real_eip !62
  store i64 %314, i64* %RDX_val, !mcsema_real_eip !62
  %315 = load i64* %RBP_val, !mcsema_real_eip !63
  %316 = add i64 %315, 16, !mcsema_real_eip !63
  %317 = inttoptr i64 %316 to i64*, !mcsema_real_eip !63
  %318 = load i64* %317, !mcsema_real_eip !63
  store i64 %318, i64* %RAX_val, !mcsema_real_eip !63
  %uadd74 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %318, i64 %314)
  %319 = extractvalue { i64, i1 } %uadd74, 0
  %320 = xor i64 %319, %314, !mcsema_real_eip !64
  %321 = xor i64 %320, %318, !mcsema_real_eip !64
  %322 = and i64 %321, 16, !mcsema_real_eip !64
  %323 = icmp ne i64 %322, 0, !mcsema_real_eip !64
  store i1 %323, i1* %AF_val, !mcsema_real_eip !64
  %324 = icmp slt i64 %319, 0
  store i1 %324, i1* %SF_val, !mcsema_real_eip !64
  %325 = icmp eq i64 %319, 0, !mcsema_real_eip !64
  store i1 %325, i1* %ZF_val, !mcsema_real_eip !64
  %326 = xor i64 %318, -9223372036854775808, !mcsema_real_eip !64
  %327 = xor i64 %326, %314, !mcsema_real_eip !64
  %328 = and i64 %320, %327, !mcsema_real_eip !64
  %329 = icmp slt i64 %328, 0
  store i1 %329, i1* %OF_val, !mcsema_real_eip !64
  %330 = trunc i64 %319 to i8, !mcsema_real_eip !64
  %331 = tail call i8 @llvm.ctpop.i8(i8 %330), !mcsema_real_eip !64
  %332 = and i8 %331, 1
  %333 = icmp eq i8 %332, 0
  store i1 %333, i1* %PF_val, !mcsema_real_eip !64
  %334 = extractvalue { i64, i1 } %uadd74, 1
  store i1 %334, i1* %CF_val, !mcsema_real_eip !64
  store i64 %319, i64* %RDX_val, !mcsema_real_eip !64
  %335 = load i64* %RBP_val, !mcsema_real_eip !65
  %336 = add i64 %335, -24, !mcsema_real_eip !65
  %337 = inttoptr i64 %336 to i64*, !mcsema_real_eip !65
  %338 = bitcast i64* %337 to i32*
  %339 = load i32* %338, !mcsema_real_eip !65
  %340 = zext i32 %339 to i64, !mcsema_real_eip !65
  store i64 %340, i64* %RAX_val, !mcsema_real_eip !65
  %341 = load i64* %RDX_val, !mcsema_real_eip !66
  %342 = inttoptr i64 %341 to i64*, !mcsema_real_eip !66
  %343 = bitcast i64* %342 to i32*
  store i32 %339, i32* %343, !mcsema_real_eip !66
  %344 = load i64* %RSP_val, !mcsema_real_eip !67
  %345 = inttoptr i64 %344 to i64*, !mcsema_real_eip !67
  %346 = load i64* %345, !mcsema_real_eip !67
  store i64 %346, i64* %RBP_val, !mcsema_real_eip !67
  %347 = add i64 %344, 16, !mcsema_real_eip !68
  store i64 %347, i64* %RSP_val, !mcsema_real_eip !68
  %348 = load i64* %RAX_val, !mcsema_real_eip !68
  store i64 %348, i64* %RAX, !mcsema_real_eip !68
  %349 = load i64* %RBX_val, !mcsema_real_eip !68
  store i64 %349, i64* %RBX, !mcsema_real_eip !68
  %350 = load i64* %RCX_val, !mcsema_real_eip !68
  store i64 %350, i64* %RCX, !mcsema_real_eip !68
  %351 = load i64* %RDX_val, !mcsema_real_eip !68
  store i64 %351, i64* %RDX, !mcsema_real_eip !68
  %352 = load i64* %RSI_val, !mcsema_real_eip !68
  store i64 %352, i64* %RSI, !mcsema_real_eip !68
  %353 = load i64* %RDI_val, !mcsema_real_eip !68
  store i64 %353, i64* %RDI, !mcsema_real_eip !68
  %354 = load i64* %RSP_val, !mcsema_real_eip !68
  store i64 %354, i64* %RSP, !mcsema_real_eip !68
  %355 = load i64* %RBP_val, !mcsema_real_eip !68
  store i64 %355, i64* %RBP, !mcsema_real_eip !68
  %356 = load i64* %R8_val, !mcsema_real_eip !68
  store i64 %356, i64* %R8, !mcsema_real_eip !68
  %357 = load i64* %R9_val, !mcsema_real_eip !68
  store i64 %357, i64* %R9, !mcsema_real_eip !68
  %358 = load i64* %R10_val, !mcsema_real_eip !68
  store i64 %358, i64* %R10, !mcsema_real_eip !68
  %359 = load i64* %R11_val, !mcsema_real_eip !68
  store i64 %359, i64* %R11, !mcsema_real_eip !68
  %360 = load i64* %R12_val, !mcsema_real_eip !68
  store i64 %360, i64* %R12, !mcsema_real_eip !68
  %361 = load i64* %R13_val, !mcsema_real_eip !68
  store i64 %361, i64* %R13, !mcsema_real_eip !68
  %362 = load i64* %R14_val, !mcsema_real_eip !68
  store i64 %362, i64* %R14, !mcsema_real_eip !68
  %363 = load i64* %R15_val, !mcsema_real_eip !68
  store i64 %363, i64* %R15, !mcsema_real_eip !68
  %364 = load i64* %RIP_val, !mcsema_real_eip !68
  store i64 %364, i64* %RIP, !mcsema_real_eip !68
  %365 = load i1* %CF_val, !mcsema_real_eip !68
  store i1 %365, i1* %CF, align 1, !mcsema_real_eip !68
  %366 = load i1* %PF_val, !mcsema_real_eip !68
  store i1 %366, i1* %PF, align 1, !mcsema_real_eip !68
  %367 = load i1* %AF_val, !mcsema_real_eip !68
  store i1 %367, i1* %AF, align 1, !mcsema_real_eip !68
  %368 = load i1* %ZF_val, !mcsema_real_eip !68
  store i1 %368, i1* %ZF, align 1, !mcsema_real_eip !68
  %369 = load i1* %SF_val, !mcsema_real_eip !68
  store i1 %369, i1* %SF, align 1, !mcsema_real_eip !68
  %370 = load i1* %OF_val, !mcsema_real_eip !68
  store i1 %370, i1* %OF, align 1, !mcsema_real_eip !68
  %371 = load i1* %DF_val, !mcsema_real_eip !68
  store i1 %371, i1* %DF, align 1, !mcsema_real_eip !68
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !68
  %372 = load i1* %FPU_B_val, !mcsema_real_eip !68
  store i1 %372, i1* %FPU_B, align 1, !mcsema_real_eip !68
  %373 = load i1* %FPU_C3_val, !mcsema_real_eip !68
  store i1 %373, i1* %FPU_C3, align 1, !mcsema_real_eip !68
  %374 = load i3* %FPU_TOP_val, !mcsema_real_eip !68
  store i3 %374, i3* %FPU_TOP, align 1, !mcsema_real_eip !68
  %375 = load i1* %FPU_C2_val, !mcsema_real_eip !68
  store i1 %375, i1* %FPU_C2, align 1, !mcsema_real_eip !68
  %376 = load i1* %FPU_C1_val, !mcsema_real_eip !68
  store i1 %376, i1* %FPU_C1, align 1, !mcsema_real_eip !68
  %377 = load i1* %FPU_C0_val, !mcsema_real_eip !68
  store i1 %377, i1* %FPU_C0, align 1, !mcsema_real_eip !68
  %378 = load i1* %FPU_ES_val, !mcsema_real_eip !68
  store i1 %378, i1* %FPU_ES, align 1, !mcsema_real_eip !68
  %379 = load i1* %FPU_SF_val, !mcsema_real_eip !68
  store i1 %379, i1* %FPU_SF, align 1, !mcsema_real_eip !68
  %380 = load i1* %FPU_PE_val, !mcsema_real_eip !68
  store i1 %380, i1* %FPU_PE, align 1, !mcsema_real_eip !68
  %381 = load i1* %FPU_UE_val, !mcsema_real_eip !68
  store i1 %381, i1* %FPU_UE, align 1, !mcsema_real_eip !68
  %382 = load i1* %FPU_OE_val, !mcsema_real_eip !68
  store i1 %382, i1* %FPU_OE, align 1, !mcsema_real_eip !68
  %383 = load i1* %FPU_ZE_val, !mcsema_real_eip !68
  store i1 %383, i1* %FPU_ZE, align 1, !mcsema_real_eip !68
  %384 = load i1* %FPU_DE_val, !mcsema_real_eip !68
  store i1 %384, i1* %FPU_DE, align 1, !mcsema_real_eip !68
  %385 = load i1* %FPU_IE_val, !mcsema_real_eip !68
  store i1 %385, i1* %FPU_IE, align 1, !mcsema_real_eip !68
  %386 = load i1* %FPU_X_val, !mcsema_real_eip !68
  store i1 %386, i1* %FPU_X, align 1, !mcsema_real_eip !68
  %387 = load i2* %FPU_RC_val, !mcsema_real_eip !68
  store i2 %387, i2* %FPU_RC, align 1, !mcsema_real_eip !68
  %388 = load i2* %FPU_PC_val, !mcsema_real_eip !68
  store i2 %388, i2* %FPU_PC, align 1, !mcsema_real_eip !68
  %389 = load i1* %FPU_PM_val, !mcsema_real_eip !68
  store i1 %389, i1* %FPU_PM, align 1, !mcsema_real_eip !68
  %390 = load i1* %FPU_UM_val, !mcsema_real_eip !68
  store i1 %390, i1* %FPU_UM, align 1, !mcsema_real_eip !68
  %391 = load i1* %FPU_OM_val, !mcsema_real_eip !68
  store i1 %391, i1* %FPU_OM, align 1, !mcsema_real_eip !68
  %392 = load i1* %FPU_ZM_val, !mcsema_real_eip !68
  store i1 %392, i1* %FPU_ZM, align 1, !mcsema_real_eip !68
  %393 = load i1* %FPU_DM_val, !mcsema_real_eip !68
  store i1 %393, i1* %FPU_DM, align 1, !mcsema_real_eip !68
  %394 = load i1* %FPU_IM_val, !mcsema_real_eip !68
  store i1 %394, i1* %FPU_IM, align 1, !mcsema_real_eip !68
  %395 = load i64* %53, align 4
  store i64 %395, i64* %52, align 4
  %396 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !68
  store i16 %396, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !68
  %397 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !68
  store i64 %397, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !68
  %398 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !68
  store i16 %398, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !68
  %399 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !68
  store i64 %399, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !68
  %400 = load i128* %XMM0_val, !mcsema_real_eip !68
  store i128 %400, i128* %XMM0, align 1, !mcsema_real_eip !68
  %401 = load i128* %XMM1_val, !mcsema_real_eip !68
  store i128 %401, i128* %XMM1, align 1, !mcsema_real_eip !68
  %402 = load i128* %XMM2_val, !mcsema_real_eip !68
  store i128 %402, i128* %XMM2, align 1, !mcsema_real_eip !68
  %403 = load i128* %XMM3_val, !mcsema_real_eip !68
  store i128 %403, i128* %XMM3, align 1, !mcsema_real_eip !68
  %404 = load i128* %XMM4_val, !mcsema_real_eip !68
  store i128 %404, i128* %XMM4, align 1, !mcsema_real_eip !68
  %405 = load i128* %XMM5_val, !mcsema_real_eip !68
  store i128 %405, i128* %XMM5, align 1, !mcsema_real_eip !68
  %406 = load i128* %XMM6_val, !mcsema_real_eip !68
  store i128 %406, i128* %XMM6, align 1, !mcsema_real_eip !68
  %407 = load i128* %XMM7_val, !mcsema_real_eip !68
  store i128 %407, i128* %XMM7, align 1, !mcsema_real_eip !68
  %408 = load i128* %XMM8_val, !mcsema_real_eip !68
  store i128 %408, i128* %XMM8, align 1, !mcsema_real_eip !68
  %409 = load i128* %XMM9_val, !mcsema_real_eip !68
  store i128 %409, i128* %XMM9, align 1, !mcsema_real_eip !68
  %410 = load i128* %XMM10_val, !mcsema_real_eip !68
  store i128 %410, i128* %XMM10, align 1, !mcsema_real_eip !68
  %411 = load i128* %XMM11_val, !mcsema_real_eip !68
  store i128 %411, i128* %XMM11, align 1, !mcsema_real_eip !68
  %412 = load i128* %XMM12_val, !mcsema_real_eip !68
  store i128 %412, i128* %XMM12, align 1, !mcsema_real_eip !68
  %413 = load i128* %XMM13_val, !mcsema_real_eip !68
  store i128 %413, i128* %XMM13, align 1, !mcsema_real_eip !68
  %414 = load i128* %XMM14_val, !mcsema_real_eip !68
  store i128 %414, i128* %XMM14, align 1, !mcsema_real_eip !68
  %415 = load i128* %XMM15_val, !mcsema_real_eip !68
  store i128 %415, i128* %XMM15, align 1, !mcsema_real_eip !68
  %416 = load i64* %STACK_BASE_val, !mcsema_real_eip !68
  store i64 %416, i64* %STACK_BASE, align 1, !mcsema_real_eip !68
  %417 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !68
  store i64 %417, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !68
  ret void, !mcsema_real_eip !68
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_b0(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 176, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 177, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = metadata !{i64 180, [16 x i8] c"\09subq\09$40, %rsp\00"}
!5 = metadata !{i64 184, [22 x i8] c"\09leaq\09-32(%rbp), %rax\00"}
!6 = metadata !{i64 188, [19 x i8] c"\09movq\09%rax, (%rsp)\00"}
!7 = metadata !{i64 192, [15 x i8] c"\09movl\09$5, %r9d\00"}
!8 = metadata !{i64 198, [15 x i8] c"\09movl\09$4, %r8d\00"}
!9 = metadata !{i64 204, [15 x i8] c"\09movl\09$3, %ecx\00"}
!10 = metadata !{i64 209, [15 x i8] c"\09movl\09$2, %edx\00"}
!11 = metadata !{i64 214, [15 x i8] c"\09movl\09$1, %esi\00"}
!12 = metadata !{i64 219, [15 x i8] c"\09movl\09$0, %edi\00"}
!13 = metadata !{i64 224, [9 x i8] c"\09callq\090\00"}
!14 = metadata !{i64 229, [15 x i8] c"\09movl\09$0, %eax\00"}
!15 = metadata !{i64 234, [7 x i8] c"\09leave\00"}
!16 = metadata !{i64 235, [6 x i8] c"\09retq\00"}
!17 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!18 = metadata !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!19 = metadata !{i64 4, [21 x i8] c"\09movl\09%edi, -4(%rbp)\00"}
!20 = metadata !{i64 7, [21 x i8] c"\09movl\09%esi, -8(%rbp)\00"}
!21 = metadata !{i64 10, [22 x i8] c"\09movl\09%edx, -12(%rbp)\00"}
!22 = metadata !{i64 13, [22 x i8] c"\09movl\09%ecx, -16(%rbp)\00"}
!23 = metadata !{i64 16, [22 x i8] c"\09movl\09%r8d, -20(%rbp)\00"}
!24 = metadata !{i64 20, [22 x i8] c"\09movl\09%r9d, -24(%rbp)\00"}
!25 = metadata !{i64 24, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!26 = metadata !{i64 27, [6 x i8] c"\09cltq\00"}
!27 = metadata !{i64 29, [22 x i8] c"\09leaq\09(,%rax,4), %rdx\00"}
!28 = metadata !{i64 37, [21 x i8] c"\09movq\0916(%rbp), %rax\00"}
!29 = metadata !{i64 41, [17 x i8] c"\09addq\09%rax, %rdx\00"} ; [ DW_TAG_file_type ] [/]
!30 = metadata !{i64 44, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!31 = metadata !{i64 47, [19 x i8] c"\09movl\09%eax, (%rdx)\00"}
!32 = metadata !{i64 49, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!33 = metadata !{i64 52, [6 x i8] c"\09cltq\00"}
!34 = metadata !{i64 54, [22 x i8] c"\09leaq\09(,%rax,4), %rdx\00"}
!35 = metadata !{i64 62, [21 x i8] c"\09movq\0916(%rbp), %rax\00"}
!36 = metadata !{i64 66, [17 x i8] c"\09addq\09%rax, %rdx\00"}
!37 = metadata !{i64 69, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!38 = metadata !{i64 72, [19 x i8] c"\09movl\09%eax, (%rdx)\00"}
!39 = metadata !{i64 74, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!40 = metadata !{i64 77, [6 x i8] c"\09cltq\00"}
!41 = metadata !{i64 79, [22 x i8] c"\09leaq\09(,%rax,4), %rdx\00"}
!42 = metadata !{i64 87, [21 x i8] c"\09movq\0916(%rbp), %rax\00"}
!43 = metadata !{i64 91, [17 x i8] c"\09addq\09%rax, %rdx\00"}
!44 = metadata !{i64 94, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!45 = metadata !{i64 97, [19 x i8] c"\09movl\09%eax, (%rdx)\00"}
!46 = metadata !{i64 99, [22 x i8] c"\09movl\09-16(%rbp), %eax\00"}
!47 = metadata !{i64 102, [6 x i8] c"\09cltq\00"}
!48 = metadata !{i64 104, [22 x i8] c"\09leaq\09(,%rax,4), %rdx\00"}
!49 = metadata !{i64 112, [21 x i8] c"\09movq\0916(%rbp), %rax\00"}
!50 = metadata !{i64 116, [17 x i8] c"\09addq\09%rax, %rdx\00"}
!51 = metadata !{i64 119, [22 x i8] c"\09movl\09-16(%rbp), %eax\00"}
!52 = metadata !{i64 122, [19 x i8] c"\09movl\09%eax, (%rdx)\00"}
!53 = metadata !{i64 124, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!54 = metadata !{i64 127, [6 x i8] c"\09cltq\00"}
!55 = metadata !{i64 129, [22 x i8] c"\09leaq\09(,%rax,4), %rdx\00"}
!56 = metadata !{i64 137, [21 x i8] c"\09movq\0916(%rbp), %rax\00"}
!57 = metadata !{i64 141, [17 x i8] c"\09addq\09%rax, %rdx\00"}
!58 = metadata !{i64 144, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!59 = metadata !{i64 147, [19 x i8] c"\09movl\09%eax, (%rdx)\00"}
!60 = metadata !{i64 149, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!61 = metadata !{i64 152, [6 x i8] c"\09cltq\00"}
!62 = metadata !{i64 154, [22 x i8] c"\09leaq\09(,%rax,4), %rdx\00"}
!63 = metadata !{i64 162, [21 x i8] c"\09movq\0916(%rbp), %rax\00"}
!64 = metadata !{i64 166, [17 x i8] c"\09addq\09%rax, %rdx\00"}
!65 = metadata !{i64 169, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!66 = metadata !{i64 172, [19 x i8] c"\09movl\09%eax, (%rdx)\00"}
!67 = metadata !{i64 174, [11 x i8] c"\09popq\09%rbp\00"}
!68 = metadata !{i64 175, [6 x i8] c"\09retq\00"}
