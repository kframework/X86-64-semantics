; ModuleID = 'test_6.bc'
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
  store i64 0, i64* %RAX_val, !mcsema_real_eip !5
  %94 = load i64* %RBP_val, !mcsema_real_eip !6
  %95 = add i64 %94, -4, !mcsema_real_eip !6
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !6
  %97 = bitcast i64* %96 to i32*
  store i32 0, i32* %97, !mcsema_real_eip !6
  %98 = load i64* %RBP_val, !mcsema_real_eip !7
  %99 = add i64 %98, -8, !mcsema_real_eip !7
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !7
  %101 = bitcast i64* %100 to i32*
  %102 = load i32* %101, !mcsema_real_eip !7
  %103 = zext i32 %102 to i64, !mcsema_real_eip !7
  store i64 %103, i64* %RCX_val, !mcsema_real_eip !7
  %104 = load i64* %RBP_val, !mcsema_real_eip !8
  %105 = add i64 %104, -40, !mcsema_real_eip !8
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !8
  %107 = bitcast i64* %106 to i32*
  store i32 %102, i32* %107, !mcsema_real_eip !8
  %108 = load i64* %RBP_val, !mcsema_real_eip !9
  %109 = add i64 %108, -16, !mcsema_real_eip !9
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !9
  %111 = load i64* %110, !mcsema_real_eip !9
  store i64 %111, i64* %RDX_val, !mcsema_real_eip !9
  %112 = add i64 %108, -48, !mcsema_real_eip !10
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !10
  store i64 %111, i64* %113, !mcsema_real_eip !10
  %114 = load i64* %RBP_val, !mcsema_real_eip !11
  %115 = add i64 %114, -48, !mcsema_real_eip !11
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !11
  %117 = load i64* %116, !mcsema_real_eip !11
  store i64 %117, i64* %RDI_val, !mcsema_real_eip !11
  %118 = add i64 %114, -40, !mcsema_real_eip !12
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !12
  %120 = bitcast i64* %119 to i32*
  %121 = load i32* %120, !mcsema_real_eip !12
  %122 = zext i32 %121 to i64, !mcsema_real_eip !12
  store i64 %122, i64* %RSI_val, !mcsema_real_eip !12
  %123 = load i64* %RBP_val, !mcsema_real_eip !13
  %124 = add i64 %123, -24, !mcsema_real_eip !13
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !13
  %126 = bitcast i64* %125 to i32*
  %127 = load i32* %126, !mcsema_real_eip !13
  %128 = zext i32 %127 to i64, !mcsema_real_eip !13
  store i64 %128, i64* %RCX_val, !mcsema_real_eip !13
  %129 = load i64* %RBP_val, !mcsema_real_eip !14
  %130 = add i64 %129, -56, !mcsema_real_eip !14
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !14
  %132 = bitcast i64* %131 to i32*
  store i32 %127, i32* %132, !mcsema_real_eip !14
  %133 = load i64* %RBP_val, !mcsema_real_eip !15
  %134 = add i64 %133, -32, !mcsema_real_eip !15
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !15
  %136 = load i64* %135, !mcsema_real_eip !15
  store i64 %136, i64* %RDX_val, !mcsema_real_eip !15
  %137 = add i64 %133, -64, !mcsema_real_eip !16
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !16
  store i64 %136, i64* %138, !mcsema_real_eip !16
  %139 = load i64* %RBP_val, !mcsema_real_eip !17
  %140 = add i64 %139, -64, !mcsema_real_eip !17
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !17
  %142 = load i64* %141, !mcsema_real_eip !17
  store i64 %142, i64* %RDX_val, !mcsema_real_eip !17
  %143 = add i64 %139, -56, !mcsema_real_eip !18
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !18
  %145 = bitcast i64* %144 to i32*
  %146 = load i32* %145, !mcsema_real_eip !18
  %147 = zext i32 %146 to i64, !mcsema_real_eip !18
  store i64 %147, i64* %RCX_val, !mcsema_real_eip !18
  %148 = load i64* %RBP_val, !mcsema_real_eip !19
  %149 = add i64 %148, -100, !mcsema_real_eip !19
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !19
  %151 = load i64* %RAX_val, !mcsema_real_eip !19
  %152 = trunc i64 %151 to i32, !mcsema_real_eip !19
  %153 = bitcast i64* %150 to i32*
  store i32 %152, i32* %153, !mcsema_real_eip !19
  %154 = load i64* %RSP_val, !mcsema_real_eip !20
  %155 = add i64 %154, -8
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !20
  store i64 -4981261766360305936, i64* %156, !mcsema_real_eip !20
  store i64 %155, i64* %RSP_val, !mcsema_real_eip !20
  %157 = load i64* %RAX_val, !mcsema_real_eip !20
  store i64 %157, i64* %RAX, !mcsema_real_eip !20
  %158 = load i64* %RBX_val, !mcsema_real_eip !20
  store i64 %158, i64* %RBX, !mcsema_real_eip !20
  %159 = load i64* %RCX_val, !mcsema_real_eip !20
  store i64 %159, i64* %RCX, !mcsema_real_eip !20
  %160 = load i64* %RDX_val, !mcsema_real_eip !20
  store i64 %160, i64* %RDX, !mcsema_real_eip !20
  %161 = load i64* %RSI_val, !mcsema_real_eip !20
  store i64 %161, i64* %RSI, !mcsema_real_eip !20
  %162 = load i64* %RDI_val, !mcsema_real_eip !20
  store i64 %162, i64* %RDI, !mcsema_real_eip !20
  %163 = load i64* %RSP_val, !mcsema_real_eip !20
  store i64 %163, i64* %RSP, !mcsema_real_eip !20
  %164 = load i64* %RBP_val, !mcsema_real_eip !20
  store i64 %164, i64* %RBP, !mcsema_real_eip !20
  %165 = load i64* %R8_val, !mcsema_real_eip !20
  store i64 %165, i64* %R8, !mcsema_real_eip !20
  %166 = load i64* %R9_val, !mcsema_real_eip !20
  store i64 %166, i64* %R9, !mcsema_real_eip !20
  %167 = load i64* %R10_val, !mcsema_real_eip !20
  store i64 %167, i64* %R10, !mcsema_real_eip !20
  %168 = load i64* %R11_val, !mcsema_real_eip !20
  store i64 %168, i64* %R11, !mcsema_real_eip !20
  %169 = load i64* %R12_val, !mcsema_real_eip !20
  store i64 %169, i64* %R12, !mcsema_real_eip !20
  %170 = load i64* %R13_val, !mcsema_real_eip !20
  store i64 %170, i64* %R13, !mcsema_real_eip !20
  %171 = load i64* %R14_val, !mcsema_real_eip !20
  store i64 %171, i64* %R14, !mcsema_real_eip !20
  %172 = load i64* %R15_val, !mcsema_real_eip !20
  store i64 %172, i64* %R15, !mcsema_real_eip !20
  %173 = load i64* %RIP_val, !mcsema_real_eip !20
  store i64 %173, i64* %RIP, !mcsema_real_eip !20
  %174 = load i1* %CF_val, !mcsema_real_eip !20
  store i1 %174, i1* %CF, align 1, !mcsema_real_eip !20
  %175 = load i1* %PF_val, !mcsema_real_eip !20
  store i1 %175, i1* %PF, align 1, !mcsema_real_eip !20
  %176 = load i1* %AF_val, !mcsema_real_eip !20
  store i1 %176, i1* %AF, align 1, !mcsema_real_eip !20
  %177 = load i1* %ZF_val, !mcsema_real_eip !20
  store i1 %177, i1* %ZF, align 1, !mcsema_real_eip !20
  %178 = load i1* %SF_val, !mcsema_real_eip !20
  store i1 %178, i1* %SF, align 1, !mcsema_real_eip !20
  %179 = load i1* %OF_val, !mcsema_real_eip !20
  store i1 %179, i1* %OF, align 1, !mcsema_real_eip !20
  %180 = load i1* %DF_val, !mcsema_real_eip !20
  store i1 %180, i1* %DF, align 1, !mcsema_real_eip !20
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !20
  %181 = load i1* %FPU_B_val, !mcsema_real_eip !20
  store i1 %181, i1* %FPU_B, align 1, !mcsema_real_eip !20
  %182 = load i1* %FPU_C3_val, !mcsema_real_eip !20
  store i1 %182, i1* %FPU_C3, align 1, !mcsema_real_eip !20
  %183 = load i3* %FPU_TOP_val, !mcsema_real_eip !20
  store i3 %183, i3* %FPU_TOP, align 1, !mcsema_real_eip !20
  %184 = load i1* %FPU_C2_val, !mcsema_real_eip !20
  store i1 %184, i1* %FPU_C2, align 1, !mcsema_real_eip !20
  %185 = load i1* %FPU_C1_val, !mcsema_real_eip !20
  store i1 %185, i1* %FPU_C1, align 1, !mcsema_real_eip !20
  %186 = load i1* %FPU_C0_val, !mcsema_real_eip !20
  store i1 %186, i1* %FPU_C0, align 1, !mcsema_real_eip !20
  %187 = load i1* %FPU_ES_val, !mcsema_real_eip !20
  store i1 %187, i1* %FPU_ES, align 1, !mcsema_real_eip !20
  %188 = load i1* %FPU_SF_val, !mcsema_real_eip !20
  store i1 %188, i1* %FPU_SF, align 1, !mcsema_real_eip !20
  %189 = load i1* %FPU_PE_val, !mcsema_real_eip !20
  store i1 %189, i1* %FPU_PE, align 1, !mcsema_real_eip !20
  %190 = load i1* %FPU_UE_val, !mcsema_real_eip !20
  store i1 %190, i1* %FPU_UE, align 1, !mcsema_real_eip !20
  %191 = load i1* %FPU_OE_val, !mcsema_real_eip !20
  store i1 %191, i1* %FPU_OE, align 1, !mcsema_real_eip !20
  %192 = load i1* %FPU_ZE_val, !mcsema_real_eip !20
  store i1 %192, i1* %FPU_ZE, align 1, !mcsema_real_eip !20
  %193 = load i1* %FPU_DE_val, !mcsema_real_eip !20
  store i1 %193, i1* %FPU_DE, align 1, !mcsema_real_eip !20
  %194 = load i1* %FPU_IE_val, !mcsema_real_eip !20
  store i1 %194, i1* %FPU_IE, align 1, !mcsema_real_eip !20
  %195 = load i1* %FPU_X_val, !mcsema_real_eip !20
  store i1 %195, i1* %FPU_X, align 1, !mcsema_real_eip !20
  %196 = load i2* %FPU_RC_val, !mcsema_real_eip !20
  store i2 %196, i2* %FPU_RC, align 1, !mcsema_real_eip !20
  %197 = load i2* %FPU_PC_val, !mcsema_real_eip !20
  store i2 %197, i2* %FPU_PC, align 1, !mcsema_real_eip !20
  %198 = load i1* %FPU_PM_val, !mcsema_real_eip !20
  store i1 %198, i1* %FPU_PM, align 1, !mcsema_real_eip !20
  %199 = load i1* %FPU_UM_val, !mcsema_real_eip !20
  store i1 %199, i1* %FPU_UM, align 1, !mcsema_real_eip !20
  %200 = load i1* %FPU_OM_val, !mcsema_real_eip !20
  store i1 %200, i1* %FPU_OM, align 1, !mcsema_real_eip !20
  %201 = load i1* %FPU_ZM_val, !mcsema_real_eip !20
  store i1 %201, i1* %FPU_ZM, align 1, !mcsema_real_eip !20
  %202 = load i1* %FPU_DM_val, !mcsema_real_eip !20
  store i1 %202, i1* %FPU_DM, align 1, !mcsema_real_eip !20
  %203 = load i1* %FPU_IM_val, !mcsema_real_eip !20
  store i1 %203, i1* %FPU_IM, align 1, !mcsema_real_eip !20
  %204 = load i64* %53, align 4
  store i64 %204, i64* %52, align 4
  %205 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !20
  store i16 %205, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !20
  %206 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !20
  store i64 %206, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !20
  %207 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !20
  store i16 %207, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !20
  %208 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !20
  store i64 %208, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !20
  %209 = load i128* %XMM0_val, !mcsema_real_eip !20
  store i128 %209, i128* %XMM0, align 1, !mcsema_real_eip !20
  %210 = load i128* %XMM1_val, !mcsema_real_eip !20
  store i128 %210, i128* %XMM1, align 1, !mcsema_real_eip !20
  %211 = load i128* %XMM2_val, !mcsema_real_eip !20
  store i128 %211, i128* %XMM2, align 1, !mcsema_real_eip !20
  %212 = load i128* %XMM3_val, !mcsema_real_eip !20
  store i128 %212, i128* %XMM3, align 1, !mcsema_real_eip !20
  %213 = load i128* %XMM4_val, !mcsema_real_eip !20
  store i128 %213, i128* %XMM4, align 1, !mcsema_real_eip !20
  %214 = load i128* %XMM5_val, !mcsema_real_eip !20
  store i128 %214, i128* %XMM5, align 1, !mcsema_real_eip !20
  %215 = load i128* %XMM6_val, !mcsema_real_eip !20
  store i128 %215, i128* %XMM6, align 1, !mcsema_real_eip !20
  %216 = load i128* %XMM7_val, !mcsema_real_eip !20
  store i128 %216, i128* %XMM7, align 1, !mcsema_real_eip !20
  %217 = load i128* %XMM8_val, !mcsema_real_eip !20
  store i128 %217, i128* %XMM8, align 1, !mcsema_real_eip !20
  %218 = load i128* %XMM9_val, !mcsema_real_eip !20
  store i128 %218, i128* %XMM9, align 1, !mcsema_real_eip !20
  %219 = load i128* %XMM10_val, !mcsema_real_eip !20
  store i128 %219, i128* %XMM10, align 1, !mcsema_real_eip !20
  %220 = load i128* %XMM11_val, !mcsema_real_eip !20
  store i128 %220, i128* %XMM11, align 1, !mcsema_real_eip !20
  %221 = load i128* %XMM12_val, !mcsema_real_eip !20
  store i128 %221, i128* %XMM12, align 1, !mcsema_real_eip !20
  %222 = load i128* %XMM13_val, !mcsema_real_eip !20
  store i128 %222, i128* %XMM13, align 1, !mcsema_real_eip !20
  %223 = load i128* %XMM14_val, !mcsema_real_eip !20
  store i128 %223, i128* %XMM14, align 1, !mcsema_real_eip !20
  %224 = load i128* %XMM15_val, !mcsema_real_eip !20
  store i128 %224, i128* %XMM15, align 1, !mcsema_real_eip !20
  %225 = load i64* %STACK_BASE_val, !mcsema_real_eip !20
  store i64 %225, i64* %STACK_BASE, align 1, !mcsema_real_eip !20
  %226 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !20
  store i64 %226, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !20
  tail call x86_64_sysvcc void @sub_70(%struct.regs* %0), !mcsema_real_eip !20
  %227 = load i64* %RAX, !mcsema_real_eip !20
  store i64 %227, i64* %RAX_val, !mcsema_real_eip !20
  %228 = load i64* %RBX, !mcsema_real_eip !20
  store i64 %228, i64* %RBX_val, !mcsema_real_eip !20
  %229 = load i64* %RCX, !mcsema_real_eip !20
  store i64 %229, i64* %RCX_val, !mcsema_real_eip !20
  %230 = load i64* %RDX, !mcsema_real_eip !20
  store i64 %230, i64* %RDX_val, !mcsema_real_eip !20
  %231 = load i64* %RSI, !mcsema_real_eip !20
  store i64 %231, i64* %RSI_val, !mcsema_real_eip !20
  %232 = load i64* %RDI, !mcsema_real_eip !20
  store i64 %232, i64* %RDI_val, !mcsema_real_eip !20
  %233 = load i64* %RSP, !mcsema_real_eip !20
  store i64 %233, i64* %RSP_val, !mcsema_real_eip !20
  %234 = load i64* %RBP, !mcsema_real_eip !20
  store i64 %234, i64* %RBP_val, !mcsema_real_eip !20
  %235 = load i64* %R8, !mcsema_real_eip !20
  store i64 %235, i64* %R8_val, !mcsema_real_eip !20
  %236 = load i64* %R9, !mcsema_real_eip !20
  store i64 %236, i64* %R9_val, !mcsema_real_eip !20
  %237 = load i64* %R10, !mcsema_real_eip !20
  store i64 %237, i64* %R10_val, !mcsema_real_eip !20
  %238 = load i64* %R11, !mcsema_real_eip !20
  store i64 %238, i64* %R11_val, !mcsema_real_eip !20
  %239 = load i64* %R12, !mcsema_real_eip !20
  store i64 %239, i64* %R12_val, !mcsema_real_eip !20
  %240 = load i64* %R13, !mcsema_real_eip !20
  store i64 %240, i64* %R13_val, !mcsema_real_eip !20
  %241 = load i64* %R14, !mcsema_real_eip !20
  store i64 %241, i64* %R14_val, !mcsema_real_eip !20
  %242 = load i64* %R15, !mcsema_real_eip !20
  store i64 %242, i64* %R15_val, !mcsema_real_eip !20
  %243 = load i64* %RIP, !mcsema_real_eip !20
  store i64 %243, i64* %RIP_val, !mcsema_real_eip !20
  %244 = load i1* %CF, align 1, !mcsema_real_eip !20
  store i1 %244, i1* %CF_val, !mcsema_real_eip !20
  %245 = load i1* %PF, align 1, !mcsema_real_eip !20
  store i1 %245, i1* %PF_val, !mcsema_real_eip !20
  %246 = load i1* %AF, align 1, !mcsema_real_eip !20
  store i1 %246, i1* %AF_val, !mcsema_real_eip !20
  %247 = load i1* %ZF, align 1, !mcsema_real_eip !20
  store i1 %247, i1* %ZF_val, !mcsema_real_eip !20
  %248 = load i1* %SF, align 1, !mcsema_real_eip !20
  store i1 %248, i1* %SF_val, !mcsema_real_eip !20
  %249 = load i1* %OF, align 1, !mcsema_real_eip !20
  store i1 %249, i1* %OF_val, !mcsema_real_eip !20
  %250 = load i1* %DF, align 1, !mcsema_real_eip !20
  store i1 %250, i1* %DF_val, !mcsema_real_eip !20
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !20
  %251 = load i1* %FPU_B, align 1, !mcsema_real_eip !20
  store i1 %251, i1* %FPU_B_val, !mcsema_real_eip !20
  %252 = load i1* %FPU_C3, align 1, !mcsema_real_eip !20
  store i1 %252, i1* %FPU_C3_val, !mcsema_real_eip !20
  %253 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !20
  store i3 %253, i3* %FPU_TOP_val, !mcsema_real_eip !20
  %254 = load i1* %FPU_C2, align 1, !mcsema_real_eip !20
  store i1 %254, i1* %FPU_C2_val, !mcsema_real_eip !20
  %255 = load i1* %FPU_C1, align 1, !mcsema_real_eip !20
  store i1 %255, i1* %FPU_C1_val, !mcsema_real_eip !20
  %256 = load i1* %FPU_C0, align 1, !mcsema_real_eip !20
  store i1 %256, i1* %FPU_C0_val, !mcsema_real_eip !20
  %257 = load i1* %FPU_ES, align 1, !mcsema_real_eip !20
  store i1 %257, i1* %FPU_ES_val, !mcsema_real_eip !20
  %258 = load i1* %FPU_SF, align 1, !mcsema_real_eip !20
  store i1 %258, i1* %FPU_SF_val, !mcsema_real_eip !20
  %259 = load i1* %FPU_PE, align 1, !mcsema_real_eip !20
  store i1 %259, i1* %FPU_PE_val, !mcsema_real_eip !20
  %260 = load i1* %FPU_UE, align 1, !mcsema_real_eip !20
  store i1 %260, i1* %FPU_UE_val, !mcsema_real_eip !20
  %261 = load i1* %FPU_OE, align 1, !mcsema_real_eip !20
  store i1 %261, i1* %FPU_OE_val, !mcsema_real_eip !20
  %262 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !20
  store i1 %262, i1* %FPU_ZE_val, !mcsema_real_eip !20
  %263 = load i1* %FPU_DE, align 1, !mcsema_real_eip !20
  store i1 %263, i1* %FPU_DE_val, !mcsema_real_eip !20
  %264 = load i1* %FPU_IE, align 1, !mcsema_real_eip !20
  store i1 %264, i1* %FPU_IE_val, !mcsema_real_eip !20
  %265 = load i1* %FPU_X, align 1, !mcsema_real_eip !20
  store i1 %265, i1* %FPU_X_val, !mcsema_real_eip !20
  %266 = load i2* %FPU_RC, align 1, !mcsema_real_eip !20
  store i2 %266, i2* %FPU_RC_val, !mcsema_real_eip !20
  %267 = load i2* %FPU_PC, align 1, !mcsema_real_eip !20
  store i2 %267, i2* %FPU_PC_val, !mcsema_real_eip !20
  %268 = load i1* %FPU_PM, align 1, !mcsema_real_eip !20
  store i1 %268, i1* %FPU_PM_val, !mcsema_real_eip !20
  %269 = load i1* %FPU_UM, align 1, !mcsema_real_eip !20
  store i1 %269, i1* %FPU_UM_val, !mcsema_real_eip !20
  %270 = load i1* %FPU_OM, align 1, !mcsema_real_eip !20
  store i1 %270, i1* %FPU_OM_val, !mcsema_real_eip !20
  %271 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !20
  store i1 %271, i1* %FPU_ZM_val, !mcsema_real_eip !20
  %272 = load i1* %FPU_DM, align 1, !mcsema_real_eip !20
  store i1 %272, i1* %FPU_DM_val, !mcsema_real_eip !20
  %273 = load i1* %FPU_IM, align 1, !mcsema_real_eip !20
  store i1 %273, i1* %FPU_IM_val, !mcsema_real_eip !20
  %274 = load i64* %52, align 4
  store i64 %274, i64* %53, align 4
  %275 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !20
  store i16 %275, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !20
  %276 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !20
  store i64 %276, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !20
  %277 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !20
  store i16 %277, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !20
  %278 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !20
  store i64 %278, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !20
  %279 = load i128* %XMM0, align 1, !mcsema_real_eip !20
  store i128 %279, i128* %XMM0_val, !mcsema_real_eip !20
  %280 = load i128* %XMM1, align 1, !mcsema_real_eip !20
  store i128 %280, i128* %XMM1_val, !mcsema_real_eip !20
  %281 = load i128* %XMM2, align 1, !mcsema_real_eip !20
  store i128 %281, i128* %XMM2_val, !mcsema_real_eip !20
  %282 = load i128* %XMM3, align 1, !mcsema_real_eip !20
  store i128 %282, i128* %XMM3_val, !mcsema_real_eip !20
  %283 = load i128* %XMM4, align 1, !mcsema_real_eip !20
  store i128 %283, i128* %XMM4_val, !mcsema_real_eip !20
  %284 = load i128* %XMM5, align 1, !mcsema_real_eip !20
  store i128 %284, i128* %XMM5_val, !mcsema_real_eip !20
  %285 = load i128* %XMM6, align 1, !mcsema_real_eip !20
  store i128 %285, i128* %XMM6_val, !mcsema_real_eip !20
  %286 = load i128* %XMM7, align 1, !mcsema_real_eip !20
  store i128 %286, i128* %XMM7_val, !mcsema_real_eip !20
  %287 = load i128* %XMM8, align 1, !mcsema_real_eip !20
  store i128 %287, i128* %XMM8_val, !mcsema_real_eip !20
  %288 = load i128* %XMM9, align 1, !mcsema_real_eip !20
  store i128 %288, i128* %XMM9_val, !mcsema_real_eip !20
  %289 = load i128* %XMM10, align 1, !mcsema_real_eip !20
  store i128 %289, i128* %XMM10_val, !mcsema_real_eip !20
  %290 = load i128* %XMM11, align 1, !mcsema_real_eip !20
  store i128 %290, i128* %XMM11_val, !mcsema_real_eip !20
  %291 = load i128* %XMM12, align 1, !mcsema_real_eip !20
  store i128 %291, i128* %XMM12_val, !mcsema_real_eip !20
  %292 = load i128* %XMM13, align 1, !mcsema_real_eip !20
  store i128 %292, i128* %XMM13_val, !mcsema_real_eip !20
  %293 = load i128* %XMM14, align 1, !mcsema_real_eip !20
  store i128 %293, i128* %XMM14_val, !mcsema_real_eip !20
  %294 = load i128* %XMM15, align 1, !mcsema_real_eip !20
  store i128 %294, i128* %XMM15_val, !mcsema_real_eip !20
  %295 = load i64* %STACK_BASE, !mcsema_real_eip !20
  store i64 %295, i64* %STACK_BASE_val, !mcsema_real_eip !20
  %296 = load i64* %STACK_LIMIT, !mcsema_real_eip !20
  store i64 %296, i64* %STACK_LIMIT_val, !mcsema_real_eip !20
  %297 = load i64* %RBP_val, !mcsema_real_eip !21
  %298 = add i64 %297, -88, !mcsema_real_eip !21
  %299 = inttoptr i64 %298 to i64*, !mcsema_real_eip !21
  %300 = load i64* %RDX_val, !mcsema_real_eip !21
  %301 = trunc i64 %300 to i32, !mcsema_real_eip !21
  %302 = bitcast i64* %299 to i32*
  store i32 %301, i32* %302, !mcsema_real_eip !21
  %303 = load i64* %RBP_val, !mcsema_real_eip !22
  %304 = add i64 %303, -96, !mcsema_real_eip !22
  %305 = inttoptr i64 %304 to i64*, !mcsema_real_eip !22
  %306 = load i64* %RAX_val, !mcsema_real_eip !22
  store i64 %306, i64* %305, !mcsema_real_eip !22
  %307 = load i64* %RBP_val, !mcsema_real_eip !23
  %308 = add i64 %307, -96, !mcsema_real_eip !23
  %309 = inttoptr i64 %308 to i64*, !mcsema_real_eip !23
  %310 = load i64* %309, !mcsema_real_eip !23
  store i64 %310, i64* %RAX_val, !mcsema_real_eip !23
  %311 = add i64 %307, -80, !mcsema_real_eip !24
  %312 = inttoptr i64 %311 to i64*, !mcsema_real_eip !24
  store i64 %310, i64* %312, !mcsema_real_eip !24
  %313 = load i64* %RBP_val, !mcsema_real_eip !25
  %314 = add i64 %313, -88, !mcsema_real_eip !25
  %315 = inttoptr i64 %314 to i64*, !mcsema_real_eip !25
  %316 = bitcast i64* %315 to i32*
  %317 = load i32* %316, !mcsema_real_eip !25
  %318 = zext i32 %317 to i64, !mcsema_real_eip !25
  store i64 %318, i64* %RCX_val, !mcsema_real_eip !25
  %319 = load i64* %RBP_val, !mcsema_real_eip !26
  %320 = add i64 %319, -72, !mcsema_real_eip !26
  %321 = inttoptr i64 %320 to i64*, !mcsema_real_eip !26
  %322 = bitcast i64* %321 to i32*
  store i32 %317, i32* %322, !mcsema_real_eip !26
  %323 = load i64* %RBP_val, !mcsema_real_eip !27
  %324 = add i64 %323, -100, !mcsema_real_eip !27
  %325 = inttoptr i64 %324 to i64*, !mcsema_real_eip !27
  %326 = bitcast i64* %325 to i32*
  %327 = load i32* %326, !mcsema_real_eip !27
  %328 = zext i32 %327 to i64, !mcsema_real_eip !27
  store i64 %328, i64* %RAX_val, !mcsema_real_eip !27
  %329 = load i64* %RSP_val, !mcsema_real_eip !28
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %329, i64 112)
  %330 = extractvalue { i64, i1 } %uadd, 0
  %331 = xor i64 %330, %329, !mcsema_real_eip !28
  %332 = and i64 %331, 16
  %333 = icmp eq i64 %332, 0
  store i1 %333, i1* %AF_val, !mcsema_real_eip !28
  %334 = icmp slt i64 %330, 0
  store i1 %334, i1* %SF_val, !mcsema_real_eip !28
  %335 = icmp eq i64 %330, 0, !mcsema_real_eip !28
  store i1 %335, i1* %ZF_val, !mcsema_real_eip !28
  %336 = xor i64 %329, -9223372036854775808, !mcsema_real_eip !28
  %337 = and i64 %331, %336, !mcsema_real_eip !28
  %338 = icmp slt i64 %337, 0
  store i1 %338, i1* %OF_val, !mcsema_real_eip !28
  %339 = trunc i64 %330 to i8, !mcsema_real_eip !28
  %340 = tail call i8 @llvm.ctpop.i8(i8 %339), !mcsema_real_eip !28
  %341 = and i8 %340, 1
  %342 = icmp eq i8 %341, 0
  store i1 %342, i1* %PF_val, !mcsema_real_eip !28
  %343 = extractvalue { i64, i1 } %uadd, 1
  store i1 %343, i1* %CF_val, !mcsema_real_eip !28
  store i64 %330, i64* %RSP_val, !mcsema_real_eip !28
  %344 = inttoptr i64 %330 to i64*, !mcsema_real_eip !29
  %345 = load i64* %344, !mcsema_real_eip !29
  store i64 %345, i64* %RBP_val, !mcsema_real_eip !29
  %346 = add i64 %330, 16, !mcsema_real_eip !30
  store i64 %346, i64* %RSP_val, !mcsema_real_eip !30
  %347 = load i64* %RAX_val, !mcsema_real_eip !30
  store i64 %347, i64* %RAX, !mcsema_real_eip !30
  %348 = load i64* %RBX_val, !mcsema_real_eip !30
  store i64 %348, i64* %RBX, !mcsema_real_eip !30
  %349 = load i64* %RCX_val, !mcsema_real_eip !30
  store i64 %349, i64* %RCX, !mcsema_real_eip !30
  %350 = load i64* %RDX_val, !mcsema_real_eip !30
  store i64 %350, i64* %RDX, !mcsema_real_eip !30
  %351 = load i64* %RSI_val, !mcsema_real_eip !30
  store i64 %351, i64* %RSI, !mcsema_real_eip !30
  %352 = load i64* %RDI_val, !mcsema_real_eip !30
  store i64 %352, i64* %RDI, !mcsema_real_eip !30
  %353 = load i64* %RSP_val, !mcsema_real_eip !30
  store i64 %353, i64* %RSP, !mcsema_real_eip !30
  %354 = load i64* %RBP_val, !mcsema_real_eip !30
  store i64 %354, i64* %RBP, !mcsema_real_eip !30
  %355 = load i64* %R8_val, !mcsema_real_eip !30
  store i64 %355, i64* %R8, !mcsema_real_eip !30
  %356 = load i64* %R9_val, !mcsema_real_eip !30
  store i64 %356, i64* %R9, !mcsema_real_eip !30
  %357 = load i64* %R10_val, !mcsema_real_eip !30
  store i64 %357, i64* %R10, !mcsema_real_eip !30
  %358 = load i64* %R11_val, !mcsema_real_eip !30
  store i64 %358, i64* %R11, !mcsema_real_eip !30
  %359 = load i64* %R12_val, !mcsema_real_eip !30
  store i64 %359, i64* %R12, !mcsema_real_eip !30
  %360 = load i64* %R13_val, !mcsema_real_eip !30
  store i64 %360, i64* %R13, !mcsema_real_eip !30
  %361 = load i64* %R14_val, !mcsema_real_eip !30
  store i64 %361, i64* %R14, !mcsema_real_eip !30
  %362 = load i64* %R15_val, !mcsema_real_eip !30
  store i64 %362, i64* %R15, !mcsema_real_eip !30
  %363 = load i64* %RIP_val, !mcsema_real_eip !30
  store i64 %363, i64* %RIP, !mcsema_real_eip !30
  %364 = load i1* %CF_val, !mcsema_real_eip !30
  store i1 %364, i1* %CF, align 1, !mcsema_real_eip !30
  %365 = load i1* %PF_val, !mcsema_real_eip !30
  store i1 %365, i1* %PF, align 1, !mcsema_real_eip !30
  %366 = load i1* %AF_val, !mcsema_real_eip !30
  store i1 %366, i1* %AF, align 1, !mcsema_real_eip !30
  %367 = load i1* %ZF_val, !mcsema_real_eip !30
  store i1 %367, i1* %ZF, align 1, !mcsema_real_eip !30
  %368 = load i1* %SF_val, !mcsema_real_eip !30
  store i1 %368, i1* %SF, align 1, !mcsema_real_eip !30
  %369 = load i1* %OF_val, !mcsema_real_eip !30
  store i1 %369, i1* %OF, align 1, !mcsema_real_eip !30
  %370 = load i1* %DF_val, !mcsema_real_eip !30
  store i1 %370, i1* %DF, align 1, !mcsema_real_eip !30
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !30
  %371 = load i1* %FPU_B_val, !mcsema_real_eip !30
  store i1 %371, i1* %FPU_B, align 1, !mcsema_real_eip !30
  %372 = load i1* %FPU_C3_val, !mcsema_real_eip !30
  store i1 %372, i1* %FPU_C3, align 1, !mcsema_real_eip !30
  %373 = load i3* %FPU_TOP_val, !mcsema_real_eip !30
  store i3 %373, i3* %FPU_TOP, align 1, !mcsema_real_eip !30
  %374 = load i1* %FPU_C2_val, !mcsema_real_eip !30
  store i1 %374, i1* %FPU_C2, align 1, !mcsema_real_eip !30
  %375 = load i1* %FPU_C1_val, !mcsema_real_eip !30
  store i1 %375, i1* %FPU_C1, align 1, !mcsema_real_eip !30
  %376 = load i1* %FPU_C0_val, !mcsema_real_eip !30
  store i1 %376, i1* %FPU_C0, align 1, !mcsema_real_eip !30
  %377 = load i1* %FPU_ES_val, !mcsema_real_eip !30
  store i1 %377, i1* %FPU_ES, align 1, !mcsema_real_eip !30
  %378 = load i1* %FPU_SF_val, !mcsema_real_eip !30
  store i1 %378, i1* %FPU_SF, align 1, !mcsema_real_eip !30
  %379 = load i1* %FPU_PE_val, !mcsema_real_eip !30
  store i1 %379, i1* %FPU_PE, align 1, !mcsema_real_eip !30
  %380 = load i1* %FPU_UE_val, !mcsema_real_eip !30
  store i1 %380, i1* %FPU_UE, align 1, !mcsema_real_eip !30
  %381 = load i1* %FPU_OE_val, !mcsema_real_eip !30
  store i1 %381, i1* %FPU_OE, align 1, !mcsema_real_eip !30
  %382 = load i1* %FPU_ZE_val, !mcsema_real_eip !30
  store i1 %382, i1* %FPU_ZE, align 1, !mcsema_real_eip !30
  %383 = load i1* %FPU_DE_val, !mcsema_real_eip !30
  store i1 %383, i1* %FPU_DE, align 1, !mcsema_real_eip !30
  %384 = load i1* %FPU_IE_val, !mcsema_real_eip !30
  store i1 %384, i1* %FPU_IE, align 1, !mcsema_real_eip !30
  %385 = load i1* %FPU_X_val, !mcsema_real_eip !30
  store i1 %385, i1* %FPU_X, align 1, !mcsema_real_eip !30
  %386 = load i2* %FPU_RC_val, !mcsema_real_eip !30
  store i2 %386, i2* %FPU_RC, align 1, !mcsema_real_eip !30
  %387 = load i2* %FPU_PC_val, !mcsema_real_eip !30
  store i2 %387, i2* %FPU_PC, align 1, !mcsema_real_eip !30
  %388 = load i1* %FPU_PM_val, !mcsema_real_eip !30
  store i1 %388, i1* %FPU_PM, align 1, !mcsema_real_eip !30
  %389 = load i1* %FPU_UM_val, !mcsema_real_eip !30
  store i1 %389, i1* %FPU_UM, align 1, !mcsema_real_eip !30
  %390 = load i1* %FPU_OM_val, !mcsema_real_eip !30
  store i1 %390, i1* %FPU_OM, align 1, !mcsema_real_eip !30
  %391 = load i1* %FPU_ZM_val, !mcsema_real_eip !30
  store i1 %391, i1* %FPU_ZM, align 1, !mcsema_real_eip !30
  %392 = load i1* %FPU_DM_val, !mcsema_real_eip !30
  store i1 %392, i1* %FPU_DM, align 1, !mcsema_real_eip !30
  %393 = load i1* %FPU_IM_val, !mcsema_real_eip !30
  store i1 %393, i1* %FPU_IM, align 1, !mcsema_real_eip !30
  %394 = load i64* %53, align 4
  store i64 %394, i64* %52, align 4
  %395 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !30
  store i16 %395, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !30
  %396 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !30
  store i64 %396, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !30
  %397 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !30
  store i16 %397, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !30
  %398 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !30
  store i64 %398, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !30
  %399 = load i128* %XMM0_val, !mcsema_real_eip !30
  store i128 %399, i128* %XMM0, align 1, !mcsema_real_eip !30
  %400 = load i128* %XMM1_val, !mcsema_real_eip !30
  store i128 %400, i128* %XMM1, align 1, !mcsema_real_eip !30
  %401 = load i128* %XMM2_val, !mcsema_real_eip !30
  store i128 %401, i128* %XMM2, align 1, !mcsema_real_eip !30
  %402 = load i128* %XMM3_val, !mcsema_real_eip !30
  store i128 %402, i128* %XMM3, align 1, !mcsema_real_eip !30
  %403 = load i128* %XMM4_val, !mcsema_real_eip !30
  store i128 %403, i128* %XMM4, align 1, !mcsema_real_eip !30
  %404 = load i128* %XMM5_val, !mcsema_real_eip !30
  store i128 %404, i128* %XMM5, align 1, !mcsema_real_eip !30
  %405 = load i128* %XMM6_val, !mcsema_real_eip !30
  store i128 %405, i128* %XMM6, align 1, !mcsema_real_eip !30
  %406 = load i128* %XMM7_val, !mcsema_real_eip !30
  store i128 %406, i128* %XMM7, align 1, !mcsema_real_eip !30
  %407 = load i128* %XMM8_val, !mcsema_real_eip !30
  store i128 %407, i128* %XMM8, align 1, !mcsema_real_eip !30
  %408 = load i128* %XMM9_val, !mcsema_real_eip !30
  store i128 %408, i128* %XMM9, align 1, !mcsema_real_eip !30
  %409 = load i128* %XMM10_val, !mcsema_real_eip !30
  store i128 %409, i128* %XMM10, align 1, !mcsema_real_eip !30
  %410 = load i128* %XMM11_val, !mcsema_real_eip !30
  store i128 %410, i128* %XMM11, align 1, !mcsema_real_eip !30
  %411 = load i128* %XMM12_val, !mcsema_real_eip !30
  store i128 %411, i128* %XMM12, align 1, !mcsema_real_eip !30
  %412 = load i128* %XMM13_val, !mcsema_real_eip !30
  store i128 %412, i128* %XMM13, align 1, !mcsema_real_eip !30
  %413 = load i128* %XMM14_val, !mcsema_real_eip !30
  store i128 %413, i128* %XMM14, align 1, !mcsema_real_eip !30
  %414 = load i128* %XMM15_val, !mcsema_real_eip !30
  store i128 %414, i128* %XMM15, align 1, !mcsema_real_eip !30
  %415 = load i64* %STACK_BASE_val, !mcsema_real_eip !30
  store i64 %415, i64* %STACK_BASE, align 1, !mcsema_real_eip !30
  %416 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !30
  store i64 %416, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !30
  ret void, !mcsema_real_eip !30
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_70(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !31
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !31
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !31
  %XMM15_val = alloca i128, !mcsema_real_eip !31
  %XMM14_val = alloca i128, !mcsema_real_eip !31
  %XMM13_val = alloca i128, !mcsema_real_eip !31
  %XMM12_val = alloca i128, !mcsema_real_eip !31
  %XMM11_val = alloca i128, !mcsema_real_eip !31
  %XMM10_val = alloca i128, !mcsema_real_eip !31
  %XMM9_val = alloca i128, !mcsema_real_eip !31
  %XMM8_val = alloca i128, !mcsema_real_eip !31
  %XMM7_val = alloca i128, !mcsema_real_eip !31
  %XMM6_val = alloca i128, !mcsema_real_eip !31
  %XMM5_val = alloca i128, !mcsema_real_eip !31
  %XMM4_val = alloca i128, !mcsema_real_eip !31
  %XMM3_val = alloca i128, !mcsema_real_eip !31
  %XMM2_val = alloca i128, !mcsema_real_eip !31
  %XMM1_val = alloca i128, !mcsema_real_eip !31
  %XMM0_val = alloca i128, !mcsema_real_eip !31
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !31
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !31
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !31
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !31
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !31
  %FPU_IM_val = alloca i1, !mcsema_real_eip !31
  %FPU_DM_val = alloca i1, !mcsema_real_eip !31
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !31
  %FPU_OM_val = alloca i1, !mcsema_real_eip !31
  %FPU_UM_val = alloca i1, !mcsema_real_eip !31
  %FPU_PM_val = alloca i1, !mcsema_real_eip !31
  %FPU_PC_val = alloca i2, !mcsema_real_eip !31
  %FPU_RC_val = alloca i2, !mcsema_real_eip !31
  %FPU_X_val = alloca i1, !mcsema_real_eip !31
  %FPU_IE_val = alloca i1, !mcsema_real_eip !31
  %FPU_DE_val = alloca i1, !mcsema_real_eip !31
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !31
  %FPU_OE_val = alloca i1, !mcsema_real_eip !31
  %FPU_UE_val = alloca i1, !mcsema_real_eip !31
  %FPU_PE_val = alloca i1, !mcsema_real_eip !31
  %FPU_SF_val = alloca i1, !mcsema_real_eip !31
  %FPU_ES_val = alloca i1, !mcsema_real_eip !31
  %FPU_C0_val = alloca i1, !mcsema_real_eip !31
  %FPU_C1_val = alloca i1, !mcsema_real_eip !31
  %FPU_C2_val = alloca i1, !mcsema_real_eip !31
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !31
  %FPU_C3_val = alloca i1, !mcsema_real_eip !31
  %FPU_B_val = alloca i1, !mcsema_real_eip !31
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !31
  %DF_val = alloca i1, !mcsema_real_eip !31
  %OF_val = alloca i1, !mcsema_real_eip !31
  %SF_val = alloca i1, !mcsema_real_eip !31
  %CF_val = alloca i1, !mcsema_real_eip !31
  %AF_val = alloca i1, !mcsema_real_eip !31
  %PF_val = alloca i1, !mcsema_real_eip !31
  %ZF_val = alloca i1, !mcsema_real_eip !31
  %RIP_val = alloca i64, !mcsema_real_eip !31
  %R14_val = alloca i64, !mcsema_real_eip !31
  %R13_val = alloca i64, !mcsema_real_eip !31
  %R12_val = alloca i64, !mcsema_real_eip !31
  %R11_val = alloca i64, !mcsema_real_eip !31
  %R10_val = alloca i64, !mcsema_real_eip !31
  %R9_val = alloca i64, !mcsema_real_eip !31
  %R8_val = alloca i64, !mcsema_real_eip !31
  %RSP_val = alloca i64, !mcsema_real_eip !31
  %RBP_val = alloca i64, !mcsema_real_eip !31
  %RDI_val = alloca i64, !mcsema_real_eip !31
  %RSI_val = alloca i64, !mcsema_real_eip !31
  %RDX_val = alloca i64, !mcsema_real_eip !31
  %RCX_val = alloca i64, !mcsema_real_eip !31
  %RBX_val = alloca i64, !mcsema_real_eip !31
  %RAX_val = alloca i64, !mcsema_real_eip !31
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !31
  %1 = load i64* %RAX, !mcsema_real_eip !31
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !31
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !31
  %2 = load i64* %RBX, !mcsema_real_eip !31
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !31
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !31
  %3 = load i64* %RCX, !mcsema_real_eip !31
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !31
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !31
  %4 = load i64* %RDX, !mcsema_real_eip !31
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !31
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !31
  %5 = load i64* %RSI, !mcsema_real_eip !31
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !31
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !31
  %6 = load i64* %RDI, !mcsema_real_eip !31
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !31
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !31
  %7 = load i64* %RSP, !mcsema_real_eip !31
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !31
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !31
  %8 = load i64* %RBP, !mcsema_real_eip !31
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !31
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !31
  %9 = load i64* %R8, !mcsema_real_eip !31
  store i64 %9, i64* %R8_val, !mcsema_real_eip !31
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !31
  %10 = load i64* %R9, !mcsema_real_eip !31
  store i64 %10, i64* %R9_val, !mcsema_real_eip !31
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !31
  %11 = load i64* %R10, !mcsema_real_eip !31
  store i64 %11, i64* %R10_val, !mcsema_real_eip !31
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !31
  %12 = load i64* %R11, !mcsema_real_eip !31
  store i64 %12, i64* %R11_val, !mcsema_real_eip !31
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !31
  %13 = load i64* %R12, !mcsema_real_eip !31
  store i64 %13, i64* %R12_val, !mcsema_real_eip !31
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !31
  %14 = load i64* %R13, !mcsema_real_eip !31
  store i64 %14, i64* %R13_val, !mcsema_real_eip !31
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !31
  %15 = load i64* %R14, !mcsema_real_eip !31
  store i64 %15, i64* %R14_val, !mcsema_real_eip !31
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !31
  %16 = load i64* %R15, !mcsema_real_eip !31
  store i64 %16, i64* %R15_val, !mcsema_real_eip !31
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !31
  %17 = load i64* %RIP, !mcsema_real_eip !31
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !31
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !31
  %18 = load i1* %CF, align 1, !mcsema_real_eip !31
  store i1 %18, i1* %CF_val, !mcsema_real_eip !31
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !31
  %19 = load i1* %PF, align 1, !mcsema_real_eip !31
  store i1 %19, i1* %PF_val, !mcsema_real_eip !31
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !31
  %20 = load i1* %AF, align 1, !mcsema_real_eip !31
  store i1 %20, i1* %AF_val, !mcsema_real_eip !31
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !31
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !31
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !31
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !31
  %22 = load i1* %SF, align 1, !mcsema_real_eip !31
  store i1 %22, i1* %SF_val, !mcsema_real_eip !31
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !31
  %23 = load i1* %OF, align 1, !mcsema_real_eip !31
  store i1 %23, i1* %OF_val, !mcsema_real_eip !31
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !31
  %24 = load i1* %DF, align 1, !mcsema_real_eip !31
  store i1 %24, i1* %DF_val, !mcsema_real_eip !31
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !31
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !31
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !31
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !31
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !31
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !31
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !31
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !31
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !31
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !31
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !31
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !31
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !31
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !31
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !31
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !31
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !31
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !31
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !31
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !31
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !31
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !31
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !31
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !31
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !31
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !31
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !31
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !31
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !31
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !31
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !31
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !31
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !31
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !31
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !31
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !31
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !31
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !31
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !31
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !31
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !31
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !31
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !31
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !31
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !31
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !31
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !31
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !31
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !31
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !31
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !31
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !31
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !31
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !31
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !31
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !31
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !31
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !31
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !31
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !31
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !31
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !31
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !31
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !31
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !31
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !31
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !31
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !31
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !31
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !31
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !31
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !31
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !31
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !31
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !31
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !31
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !31
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !31
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !31
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !31
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !31
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !31
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !31
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !31
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !31
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !31
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !31
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !31
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !31
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !31
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !31
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !31
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !31
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !31
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !31
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !31
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !31
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !31
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !31
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !31
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !31
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !31
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !31
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !31
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !31
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !31
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !31
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !31
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !31
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !31
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !31
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !31
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !31
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !31
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !31
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !31
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !31
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !31
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !31
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !31
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !31
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !31
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !31
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !31
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !31
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !31
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !31
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !31
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !31
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !31
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !31
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !31
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !31
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !31
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !31
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !31
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !31
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !31
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !31
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !31
  %77 = load i64* %RBP_val, !mcsema_real_eip !31
  %78 = load i64* %RSP_val, !mcsema_real_eip !31
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !31
  store i64 %77, i64* %80, !mcsema_real_eip !31
  store i64 %79, i64* %RSP_val, !mcsema_real_eip !31
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !32
  %81 = add i64 %78, -56, !mcsema_real_eip !33
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !33
  %83 = load i64* %RDI_val, !mcsema_real_eip !33
  store i64 %83, i64* %82, !mcsema_real_eip !33
  %84 = load i64* %RBP_val, !mcsema_real_eip !34
  %85 = add i64 %84, -40, !mcsema_real_eip !34
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !34
  %87 = load i64* %RSI_val, !mcsema_real_eip !34
  %88 = trunc i64 %87 to i32, !mcsema_real_eip !34
  %89 = bitcast i64* %86 to i32*
  store i32 %88, i32* %89, !mcsema_real_eip !34
  %90 = load i64* %RBP_val, !mcsema_real_eip !35
  %91 = add i64 %90, -48, !mcsema_real_eip !35
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !35
  %93 = load i64* %92, !mcsema_real_eip !35
  store i64 %93, i64* %RDI_val, !mcsema_real_eip !35
  %94 = add i64 %90, -32, !mcsema_real_eip !36
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !36
  store i64 %93, i64* %95, !mcsema_real_eip !36
  %96 = load i64* %RBP_val, !mcsema_real_eip !37
  %97 = add i64 %96, -40, !mcsema_real_eip !37
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !37
  %99 = bitcast i64* %98 to i32*
  %100 = load i32* %99, !mcsema_real_eip !37
  %101 = zext i32 %100 to i64, !mcsema_real_eip !37
  store i64 %101, i64* %RSI_val, !mcsema_real_eip !37
  %102 = load i64* %RBP_val, !mcsema_real_eip !38
  %103 = add i64 %102, -24, !mcsema_real_eip !38
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !38
  %105 = bitcast i64* %104 to i32*
  store i32 %100, i32* %105, !mcsema_real_eip !38
  %106 = load i64* %RBP_val, !mcsema_real_eip !39
  %107 = add i64 %106, -80, !mcsema_real_eip !39
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !39
  %109 = load i64* %RDX_val, !mcsema_real_eip !39
  store i64 %109, i64* %108, !mcsema_real_eip !39
  %110 = load i64* %RBP_val, !mcsema_real_eip !40
  %111 = add i64 %110, -72, !mcsema_real_eip !40
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !40
  %113 = load i64* %RCX_val, !mcsema_real_eip !40
  %114 = trunc i64 %113 to i32, !mcsema_real_eip !40
  %115 = bitcast i64* %112 to i32*
  store i32 %114, i32* %115, !mcsema_real_eip !40
  %116 = load i64* %RBP_val, !mcsema_real_eip !41
  %117 = add i64 %116, -80, !mcsema_real_eip !41
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !41
  %119 = load i64* %118, !mcsema_real_eip !41
  store i64 %119, i64* %RDX_val, !mcsema_real_eip !41
  %120 = add i64 %116, -64, !mcsema_real_eip !42
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !42
  store i64 %119, i64* %121, !mcsema_real_eip !42
  %122 = load i64* %RBP_val, !mcsema_real_eip !43
  %123 = add i64 %122, -72, !mcsema_real_eip !43
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !43
  %125 = bitcast i64* %124 to i32*
  %126 = load i32* %125, !mcsema_real_eip !43
  %127 = zext i32 %126 to i64, !mcsema_real_eip !43
  store i64 %127, i64* %RCX_val, !mcsema_real_eip !43
  %128 = load i64* %RBP_val, !mcsema_real_eip !44
  %129 = add i64 %128, -56, !mcsema_real_eip !44
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !44
  %131 = bitcast i64* %130 to i32*
  store i32 %126, i32* %131, !mcsema_real_eip !44
  %132 = load i64* %RBP_val, !mcsema_real_eip !45
  %133 = add i64 %132, -64, !mcsema_real_eip !45
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !45
  %135 = bitcast i64* %134 to i32*
  %136 = load i32* %135, !mcsema_real_eip !45
  %137 = zext i32 %136 to i64, !mcsema_real_eip !45
  store i64 %137, i64* %RCX_val, !mcsema_real_eip !45
  %138 = load i64* %RBP_val, !mcsema_real_eip !46
  %139 = add i64 %138, -32, !mcsema_real_eip !46
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !46
  %141 = bitcast i64* %140 to i32*
  %142 = load i32* %141, !mcsema_real_eip !46
  %143 = sub i32 %136, %142, !mcsema_real_eip !46
  %144 = xor i32 %143, %136, !mcsema_real_eip !46
  %145 = xor i32 %144, %142, !mcsema_real_eip !46
  %146 = and i32 %145, 16, !mcsema_real_eip !46
  %147 = icmp ne i32 %146, 0, !mcsema_real_eip !46
  store i1 %147, i1* %AF_val, !mcsema_real_eip !46
  %148 = trunc i32 %143 to i8, !mcsema_real_eip !46
  %149 = tail call i8 @llvm.ctpop.i8(i8 %148), !mcsema_real_eip !46
  %150 = and i8 %149, 1
  %151 = icmp eq i8 %150, 0
  store i1 %151, i1* %PF_val, !mcsema_real_eip !46
  %152 = icmp eq i32 %136, %142
  store i1 %152, i1* %ZF_val, !mcsema_real_eip !46
  %153 = icmp slt i32 %143, 0
  store i1 %153, i1* %SF_val, !mcsema_real_eip !46
  %154 = icmp ult i32 %136, %142, !mcsema_real_eip !46
  store i1 %154, i1* %CF_val, !mcsema_real_eip !46
  %155 = xor i32 %142, %136, !mcsema_real_eip !46
  %156 = and i32 %144, %155, !mcsema_real_eip !46
  %157 = icmp slt i32 %156, 0
  store i1 %157, i1* %OF_val, !mcsema_real_eip !46
  %158 = load i1* %SF_val, !mcsema_real_eip !47
  %159 = xor i1 %158, %157
  %160 = load i1* %ZF_val, !mcsema_real_eip !47
  %161 = or i1 %160, %159, !mcsema_real_eip !47
  %162 = load i64* %RBP_val, !mcsema_real_eip !48
  br i1 %161, label %block_0xc0, label %block_0xaa, !mcsema_real_eip !47

block_0xc0:                                       ; preds = %entry
  %163 = add i64 %162, -32, !mcsema_real_eip !48
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !48
  %165 = bitcast i64* %164 to i32*
  %166 = load i32* %165, !mcsema_real_eip !48
  %167 = zext i32 %166 to i64, !mcsema_real_eip !48
  store i64 %167, i64* %RAX_val, !mcsema_real_eip !48
  %168 = load i64* %RBP_val, !mcsema_real_eip !49
  %169 = add i64 %168, -64, !mcsema_real_eip !49
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !49
  %171 = bitcast i64* %170 to i32*
  %172 = load i32* %171, !mcsema_real_eip !49
  %173 = sub i32 %166, %172, !mcsema_real_eip !49
  %174 = xor i32 %173, %166, !mcsema_real_eip !49
  %175 = xor i32 %174, %172, !mcsema_real_eip !49
  %176 = and i32 %175, 16, !mcsema_real_eip !49
  %177 = icmp ne i32 %176, 0, !mcsema_real_eip !49
  store i1 %177, i1* %AF_val, !mcsema_real_eip !49
  %178 = trunc i32 %173 to i8, !mcsema_real_eip !49
  %179 = tail call i8 @llvm.ctpop.i8(i8 %178), !mcsema_real_eip !49
  %180 = and i8 %179, 1
  %181 = icmp eq i8 %180, 0
  store i1 %181, i1* %PF_val, !mcsema_real_eip !49
  %182 = icmp eq i32 %166, %172
  store i1 %182, i1* %ZF_val, !mcsema_real_eip !49
  %183 = icmp slt i32 %173, 0
  store i1 %183, i1* %SF_val, !mcsema_real_eip !49
  %184 = icmp ult i32 %166, %172, !mcsema_real_eip !49
  store i1 %184, i1* %CF_val, !mcsema_real_eip !49
  %185 = xor i32 %172, %166, !mcsema_real_eip !49
  %186 = and i32 %174, %185, !mcsema_real_eip !49
  %187 = icmp slt i32 %186, 0
  store i1 %187, i1* %OF_val, !mcsema_real_eip !49
  %188 = zext i32 %173 to i64, !mcsema_real_eip !49
  store i64 %188, i64* %RAX_val, !mcsema_real_eip !49
  %189 = load i64* %RBP_val, !mcsema_real_eip !50
  %190 = add i64 %189, -96, !mcsema_real_eip !50
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !50
  %192 = bitcast i64* %191 to i32*
  store i32 %173, i32* %192, !mcsema_real_eip !50
  %193 = load i64* %RBP_val, !mcsema_real_eip !51
  %194 = add i64 %193, -60, !mcsema_real_eip !51
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !51
  %196 = bitcast i64* %195 to i32*
  %197 = load i32* %196, !mcsema_real_eip !51
  %198 = zext i32 %197 to i64, !mcsema_real_eip !51
  store i64 %198, i64* %RAX_val, !mcsema_real_eip !51
  %199 = load i64* %RBP_val, !mcsema_real_eip !52
  %200 = add i64 %199, -28, !mcsema_real_eip !52
  %201 = inttoptr i64 %200 to i64*, !mcsema_real_eip !52
  %202 = bitcast i64* %201 to i32*
  %203 = load i32* %202, !mcsema_real_eip !52
  %204 = sub i32 %197, %203, !mcsema_real_eip !52
  %205 = xor i32 %204, %197, !mcsema_real_eip !52
  %206 = xor i32 %205, %203, !mcsema_real_eip !52
  %207 = and i32 %206, 16, !mcsema_real_eip !52
  %208 = icmp ne i32 %207, 0, !mcsema_real_eip !52
  store i1 %208, i1* %AF_val, !mcsema_real_eip !52
  %209 = trunc i32 %204 to i8, !mcsema_real_eip !52
  %210 = tail call i8 @llvm.ctpop.i8(i8 %209), !mcsema_real_eip !52
  %211 = and i8 %210, 1
  %212 = icmp eq i8 %211, 0
  store i1 %212, i1* %PF_val, !mcsema_real_eip !52
  %213 = icmp eq i32 %197, %203
  store i1 %213, i1* %ZF_val, !mcsema_real_eip !52
  %214 = icmp slt i32 %204, 0
  store i1 %214, i1* %SF_val, !mcsema_real_eip !52
  %215 = icmp ult i32 %197, %203, !mcsema_real_eip !52
  store i1 %215, i1* %CF_val, !mcsema_real_eip !52
  %216 = xor i32 %203, %197, !mcsema_real_eip !52
  %217 = and i32 %205, %216, !mcsema_real_eip !52
  %218 = icmp slt i32 %217, 0
  store i1 %218, i1* %OF_val, !mcsema_real_eip !52
  %219 = load i1* %SF_val, !mcsema_real_eip !53
  %220 = xor i1 %219, %218
  %221 = load i1* %ZF_val, !mcsema_real_eip !53
  %222 = or i1 %221, %220, !mcsema_real_eip !53
  br i1 %222, label %block_0xeb, label %block_0xd5, !mcsema_real_eip !53

block_0xaa:                                       ; preds = %entry
  %223 = add i64 %162, -28, !mcsema_real_eip !54
  %224 = inttoptr i64 %223 to i64*, !mcsema_real_eip !54
  %225 = bitcast i64* %224 to i32*
  %226 = load i32* %225, !mcsema_real_eip !54
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %226, i32 -1)
  %227 = extractvalue { i32, i1 } %uadd, 0
  %228 = xor i32 %227, %226, !mcsema_real_eip !55
  %229 = and i32 %228, 16
  %230 = icmp eq i32 %229, 0
  store i1 %230, i1* %AF_val, !mcsema_real_eip !55
  %231 = icmp slt i32 %227, 0
  store i1 %231, i1* %SF_val, !mcsema_real_eip !55
  %232 = icmp eq i32 %227, 0, !mcsema_real_eip !55
  store i1 %232, i1* %ZF_val, !mcsema_real_eip !55
  %233 = and i32 %228, %226, !mcsema_real_eip !55
  %234 = icmp slt i32 %233, 0
  store i1 %234, i1* %OF_val, !mcsema_real_eip !55
  %235 = trunc i32 %227 to i8, !mcsema_real_eip !55
  %236 = tail call i8 @llvm.ctpop.i8(i8 %235), !mcsema_real_eip !55
  %237 = and i8 %236, 1
  %238 = icmp eq i8 %237, 0
  store i1 %238, i1* %PF_val, !mcsema_real_eip !55
  %239 = extractvalue { i32, i1 } %uadd, 1
  store i1 %239, i1* %CF_val, !mcsema_real_eip !55
  %240 = zext i32 %227 to i64, !mcsema_real_eip !55
  store i64 %240, i64* %RAX_val, !mcsema_real_eip !55
  %241 = load i64* %RBP_val, !mcsema_real_eip !56
  %242 = add i64 %241, -28, !mcsema_real_eip !56
  %243 = inttoptr i64 %242 to i64*, !mcsema_real_eip !56
  %244 = bitcast i64* %243 to i32*
  store i32 %227, i32* %244, !mcsema_real_eip !56
  %245 = load i64* %RBP_val, !mcsema_real_eip !57
  %246 = add i64 %245, -32, !mcsema_real_eip !57
  %247 = inttoptr i64 %246 to i64*, !mcsema_real_eip !57
  %248 = bitcast i64* %247 to i32*
  %249 = load i32* %248, !mcsema_real_eip !57
  %uadd140 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %249, i32 60)
  %250 = extractvalue { i32, i1 } %uadd140, 0
  %251 = xor i32 %250, %249, !mcsema_real_eip !58
  %252 = and i32 %251, 16
  %253 = icmp eq i32 %252, 0
  store i1 %253, i1* %AF_val, !mcsema_real_eip !58
  %254 = icmp slt i32 %250, 0
  store i1 %254, i1* %SF_val, !mcsema_real_eip !58
  %255 = icmp eq i32 %250, 0, !mcsema_real_eip !58
  store i1 %255, i1* %ZF_val, !mcsema_real_eip !58
  %256 = xor i32 %249, -2147483648, !mcsema_real_eip !58
  %257 = and i32 %251, %256, !mcsema_real_eip !58
  %258 = icmp slt i32 %257, 0
  store i1 %258, i1* %OF_val, !mcsema_real_eip !58
  %259 = trunc i32 %250 to i8, !mcsema_real_eip !58
  %260 = tail call i8 @llvm.ctpop.i8(i8 %259), !mcsema_real_eip !58
  %261 = and i8 %260, 1
  %262 = icmp eq i8 %261, 0
  store i1 %262, i1* %PF_val, !mcsema_real_eip !58
  %263 = extractvalue { i32, i1 } %uadd140, 1
  store i1 %263, i1* %CF_val, !mcsema_real_eip !58
  %264 = zext i32 %250 to i64, !mcsema_real_eip !58
  store i64 %264, i64* %RAX_val, !mcsema_real_eip !58
  %265 = load i64* %RBP_val, !mcsema_real_eip !59
  %266 = add i64 %265, -32, !mcsema_real_eip !59
  %267 = inttoptr i64 %266 to i64*, !mcsema_real_eip !59
  %268 = bitcast i64* %267 to i32*
  store i32 %250, i32* %268, !mcsema_real_eip !59
  %269 = load i64* %RBP_val, !mcsema_real_eip !48
  %270 = add i64 %269, -32, !mcsema_real_eip !48
  %271 = inttoptr i64 %270 to i64*, !mcsema_real_eip !48
  %272 = bitcast i64* %271 to i32*
  %273 = load i32* %272, !mcsema_real_eip !48
  %274 = zext i32 %273 to i64, !mcsema_real_eip !48
  store i64 %274, i64* %RAX_val, !mcsema_real_eip !48
  %275 = load i64* %RBP_val, !mcsema_real_eip !49
  %276 = add i64 %275, -64, !mcsema_real_eip !49
  %277 = inttoptr i64 %276 to i64*, !mcsema_real_eip !49
  %278 = bitcast i64* %277 to i32*
  %279 = load i32* %278, !mcsema_real_eip !49
  %280 = sub i32 %273, %279, !mcsema_real_eip !49
  %281 = xor i32 %280, %273, !mcsema_real_eip !49
  %282 = xor i32 %281, %279, !mcsema_real_eip !49
  %283 = and i32 %282, 16, !mcsema_real_eip !49
  %284 = icmp ne i32 %283, 0, !mcsema_real_eip !49
  store i1 %284, i1* %AF_val, !mcsema_real_eip !49
  %285 = trunc i32 %280 to i8, !mcsema_real_eip !49
  %286 = tail call i8 @llvm.ctpop.i8(i8 %285), !mcsema_real_eip !49
  %287 = and i8 %286, 1
  %288 = icmp eq i8 %287, 0
  store i1 %288, i1* %PF_val, !mcsema_real_eip !49
  %289 = icmp eq i32 %273, %279
  store i1 %289, i1* %ZF_val, !mcsema_real_eip !49
  %290 = icmp slt i32 %280, 0
  store i1 %290, i1* %SF_val, !mcsema_real_eip !49
  %291 = icmp ult i32 %273, %279, !mcsema_real_eip !49
  store i1 %291, i1* %CF_val, !mcsema_real_eip !49
  %292 = xor i32 %279, %273, !mcsema_real_eip !49
  %293 = and i32 %281, %292, !mcsema_real_eip !49
  %294 = icmp slt i32 %293, 0
  store i1 %294, i1* %OF_val, !mcsema_real_eip !49
  %295 = zext i32 %280 to i64, !mcsema_real_eip !49
  store i64 %295, i64* %RAX_val, !mcsema_real_eip !49
  %296 = load i64* %RBP_val, !mcsema_real_eip !50
  %297 = add i64 %296, -96, !mcsema_real_eip !50
  %298 = inttoptr i64 %297 to i64*, !mcsema_real_eip !50
  %299 = bitcast i64* %298 to i32*
  store i32 %280, i32* %299, !mcsema_real_eip !50
  %300 = load i64* %RBP_val, !mcsema_real_eip !51
  %301 = add i64 %300, -60, !mcsema_real_eip !51
  %302 = inttoptr i64 %301 to i64*, !mcsema_real_eip !51
  %303 = bitcast i64* %302 to i32*
  %304 = load i32* %303, !mcsema_real_eip !51
  %305 = zext i32 %304 to i64, !mcsema_real_eip !51
  store i64 %305, i64* %RAX_val, !mcsema_real_eip !51
  %306 = load i64* %RBP_val, !mcsema_real_eip !52
  %307 = add i64 %306, -28, !mcsema_real_eip !52
  %308 = inttoptr i64 %307 to i64*, !mcsema_real_eip !52
  %309 = bitcast i64* %308 to i32*
  %310 = load i32* %309, !mcsema_real_eip !52
  %311 = sub i32 %304, %310, !mcsema_real_eip !52
  %312 = xor i32 %311, %304, !mcsema_real_eip !52
  %313 = xor i32 %312, %310, !mcsema_real_eip !52
  %314 = and i32 %313, 16, !mcsema_real_eip !52
  %315 = icmp ne i32 %314, 0, !mcsema_real_eip !52
  store i1 %315, i1* %AF_val, !mcsema_real_eip !52
  %316 = trunc i32 %311 to i8, !mcsema_real_eip !52
  %317 = tail call i8 @llvm.ctpop.i8(i8 %316), !mcsema_real_eip !52
  %318 = and i8 %317, 1
  %319 = icmp eq i8 %318, 0
  store i1 %319, i1* %PF_val, !mcsema_real_eip !52
  %320 = icmp eq i32 %304, %310
  store i1 %320, i1* %ZF_val, !mcsema_real_eip !52
  %321 = icmp slt i32 %311, 0
  store i1 %321, i1* %SF_val, !mcsema_real_eip !52
  %322 = icmp ult i32 %304, %310, !mcsema_real_eip !52
  store i1 %322, i1* %CF_val, !mcsema_real_eip !52
  %323 = xor i32 %310, %304, !mcsema_real_eip !52
  %324 = and i32 %312, %323, !mcsema_real_eip !52
  %325 = icmp slt i32 %324, 0
  store i1 %325, i1* %OF_val, !mcsema_real_eip !52
  %326 = load i1* %SF_val, !mcsema_real_eip !53
  %327 = xor i1 %326, %325
  %328 = load i1* %ZF_val, !mcsema_real_eip !53
  %329 = or i1 %328, %327, !mcsema_real_eip !53
  br i1 %329, label %block_0xeb, label %block_0xd5, !mcsema_real_eip !53

block_0xeb:                                       ; preds = %block_0xaa, %block_0xc0
  %330 = load i64* %RBP_val, !mcsema_real_eip !60
  %331 = add i64 %330, -28, !mcsema_real_eip !60
  %332 = inttoptr i64 %331 to i64*, !mcsema_real_eip !60
  %333 = bitcast i64* %332 to i32*
  %334 = load i32* %333, !mcsema_real_eip !60
  %335 = zext i32 %334 to i64, !mcsema_real_eip !60
  store i64 %335, i64* %RAX_val, !mcsema_real_eip !60
  %336 = load i64* %RBP_val, !mcsema_real_eip !61
  %337 = add i64 %336, -60, !mcsema_real_eip !61
  %338 = inttoptr i64 %337 to i64*, !mcsema_real_eip !61
  %339 = bitcast i64* %338 to i32*
  %340 = load i32* %339, !mcsema_real_eip !61
  %341 = zext i32 %340 to i64, !mcsema_real_eip !61
  store i64 %341, i64* %RCX_val, !mcsema_real_eip !61
  %342 = load i64* %RAX_val, !mcsema_real_eip !62
  %343 = trunc i64 %342 to i32, !mcsema_real_eip !62
  %344 = sub i32 %343, %340, !mcsema_real_eip !62
  %345 = xor i32 %344, %343, !mcsema_real_eip !62
  %346 = xor i32 %345, %340, !mcsema_real_eip !62
  %347 = and i32 %346, 16, !mcsema_real_eip !62
  %348 = icmp ne i32 %347, 0, !mcsema_real_eip !62
  store i1 %348, i1* %AF_val, !mcsema_real_eip !62
  %349 = trunc i32 %344 to i8, !mcsema_real_eip !62
  %350 = tail call i8 @llvm.ctpop.i8(i8 %349), !mcsema_real_eip !62
  %351 = and i8 %350, 1
  %352 = icmp eq i8 %351, 0
  store i1 %352, i1* %PF_val, !mcsema_real_eip !62
  %353 = icmp eq i32 %343, %340
  store i1 %353, i1* %ZF_val, !mcsema_real_eip !62
  %354 = icmp slt i32 %344, 0
  store i1 %354, i1* %SF_val, !mcsema_real_eip !62
  %355 = icmp ult i32 %343, %340, !mcsema_real_eip !62
  store i1 %355, i1* %CF_val, !mcsema_real_eip !62
  %356 = xor i32 %343, %340, !mcsema_real_eip !62
  %357 = and i32 %345, %356, !mcsema_real_eip !62
  %358 = icmp slt i32 %357, 0
  store i1 %358, i1* %OF_val, !mcsema_real_eip !62
  %359 = zext i32 %344 to i64, !mcsema_real_eip !62
  store i64 %359, i64* %RAX_val, !mcsema_real_eip !62
  %360 = load i64* %RBP_val, !mcsema_real_eip !63
  %361 = add i64 %360, -92, !mcsema_real_eip !63
  %362 = inttoptr i64 %361 to i64*, !mcsema_real_eip !63
  %363 = bitcast i64* %362 to i32*
  store i32 %344, i32* %363, !mcsema_real_eip !63
  %364 = load i64* %RBP_val, !mcsema_real_eip !64
  %365 = add i64 %364, -24, !mcsema_real_eip !64
  %366 = inttoptr i64 %365 to i64*, !mcsema_real_eip !64
  %367 = bitcast i64* %366 to i32*
  %368 = load i32* %367, !mcsema_real_eip !64
  %369 = zext i32 %368 to i64, !mcsema_real_eip !64
  store i64 %369, i64* %RAX_val, !mcsema_real_eip !64
  %370 = load i64* %RBP_val, !mcsema_real_eip !65
  %371 = add i64 %370, -56, !mcsema_real_eip !65
  %372 = inttoptr i64 %371 to i64*, !mcsema_real_eip !65
  %373 = bitcast i64* %372 to i32*
  %374 = load i32* %373, !mcsema_real_eip !65
  %375 = zext i32 %374 to i64, !mcsema_real_eip !65
  store i64 %375, i64* %RCX_val, !mcsema_real_eip !65
  %376 = load i64* %RAX_val, !mcsema_real_eip !66
  %377 = trunc i64 %376 to i32, !mcsema_real_eip !66
  %378 = sub i32 %377, %374, !mcsema_real_eip !66
  %379 = xor i32 %378, %377, !mcsema_real_eip !66
  %380 = xor i32 %379, %374, !mcsema_real_eip !66
  %381 = and i32 %380, 16, !mcsema_real_eip !66
  %382 = icmp ne i32 %381, 0, !mcsema_real_eip !66
  store i1 %382, i1* %AF_val, !mcsema_real_eip !66
  %383 = trunc i32 %378 to i8, !mcsema_real_eip !66
  %384 = tail call i8 @llvm.ctpop.i8(i8 %383), !mcsema_real_eip !66
  %385 = and i8 %384, 1
  %386 = icmp eq i8 %385, 0
  store i1 %386, i1* %PF_val, !mcsema_real_eip !66
  %387 = icmp eq i32 %377, %374
  store i1 %387, i1* %ZF_val, !mcsema_real_eip !66
  %388 = icmp slt i32 %378, 0
  store i1 %388, i1* %SF_val, !mcsema_real_eip !66
  %389 = icmp ult i32 %377, %374, !mcsema_real_eip !66
  store i1 %389, i1* %CF_val, !mcsema_real_eip !66
  %390 = xor i32 %377, %374, !mcsema_real_eip !66
  %391 = and i32 %379, %390, !mcsema_real_eip !66
  %392 = icmp slt i32 %391, 0
  store i1 %392, i1* %OF_val, !mcsema_real_eip !66
  %393 = zext i32 %378 to i64, !mcsema_real_eip !66
  store i64 %393, i64* %RAX_val, !mcsema_real_eip !66
  %394 = load i64* %RBP_val, !mcsema_real_eip !67
  %395 = add i64 %394, -88, !mcsema_real_eip !67
  %396 = inttoptr i64 %395 to i64*, !mcsema_real_eip !67
  %397 = bitcast i64* %396 to i32*
  store i32 %378, i32* %397, !mcsema_real_eip !67
  %398 = load i64* %RBP_val, !mcsema_real_eip !68
  %399 = add i64 %398, -8, !mcsema_real_eip !68
  %400 = inttoptr i64 %399 to i64*, !mcsema_real_eip !68
  %401 = load i64* %RAX_val, !mcsema_real_eip !68
  %402 = trunc i64 %401 to i32, !mcsema_real_eip !68
  %403 = bitcast i64* %400 to i32*
  store i32 %402, i32* %403, !mcsema_real_eip !68
  %404 = load i64* %RBP_val, !mcsema_real_eip !69
  %405 = add i64 %404, -96, !mcsema_real_eip !69
  %406 = inttoptr i64 %405 to i64*, !mcsema_real_eip !69
  %407 = load i64* %406, !mcsema_real_eip !69
  store i64 %407, i64* %RDX_val, !mcsema_real_eip !69
  %408 = add i64 %404, -16, !mcsema_real_eip !70
  %409 = inttoptr i64 %408 to i64*, !mcsema_real_eip !70
  store i64 %407, i64* %409, !mcsema_real_eip !70
  %410 = load i64* %RBP_val, !mcsema_real_eip !71
  %411 = add i64 %410, -8, !mcsema_real_eip !71
  %412 = inttoptr i64 %411 to i64*, !mcsema_real_eip !71
  %413 = bitcast i64* %412 to i32*
  %414 = load i32* %413, !mcsema_real_eip !71
  %415 = zext i32 %414 to i64, !mcsema_real_eip !71
  store i64 %415, i64* %RAX_val, !mcsema_real_eip !71
  %416 = load i64* %RBP_val, !mcsema_real_eip !72
  %417 = add i64 %416, -104, !mcsema_real_eip !72
  %418 = inttoptr i64 %417 to i64*, !mcsema_real_eip !72
  %419 = bitcast i64* %418 to i32*
  store i32 %414, i32* %419, !mcsema_real_eip !72
  %420 = load i64* %RBP_val, !mcsema_real_eip !73
  %421 = add i64 %420, -16, !mcsema_real_eip !73
  %422 = inttoptr i64 %421 to i64*, !mcsema_real_eip !73
  %423 = load i64* %422, !mcsema_real_eip !73
  store i64 %423, i64* %RDX_val, !mcsema_real_eip !73
  %424 = add i64 %420, -112, !mcsema_real_eip !74
  %425 = inttoptr i64 %424 to i64*, !mcsema_real_eip !74
  store i64 %423, i64* %425, !mcsema_real_eip !74
  %426 = load i64* %RBP_val, !mcsema_real_eip !75
  %427 = add i64 %426, -112, !mcsema_real_eip !75
  %428 = inttoptr i64 %427 to i64*, !mcsema_real_eip !75
  %429 = load i64* %428, !mcsema_real_eip !75
  store i64 %429, i64* %RAX_val, !mcsema_real_eip !75
  %430 = add i64 %426, -104, !mcsema_real_eip !76
  %431 = inttoptr i64 %430 to i64*, !mcsema_real_eip !76
  %432 = bitcast i64* %431 to i32*
  %433 = load i32* %432, !mcsema_real_eip !76
  %434 = zext i32 %433 to i64, !mcsema_real_eip !76
  store i64 %434, i64* %RDX_val, !mcsema_real_eip !76
  %435 = load i64* %RSP_val, !mcsema_real_eip !77
  %436 = inttoptr i64 %435 to i64*, !mcsema_real_eip !77
  %437 = load i64* %436, !mcsema_real_eip !77
  store i64 %437, i64* %RBP_val, !mcsema_real_eip !77
  %438 = add i64 %435, 16, !mcsema_real_eip !78
  store i64 %438, i64* %RSP_val, !mcsema_real_eip !78
  %439 = load i64* %RAX_val, !mcsema_real_eip !78
  store i64 %439, i64* %RAX, !mcsema_real_eip !78
  %440 = load i64* %RBX_val, !mcsema_real_eip !78
  store i64 %440, i64* %RBX, !mcsema_real_eip !78
  %441 = load i64* %RCX_val, !mcsema_real_eip !78
  store i64 %441, i64* %RCX, !mcsema_real_eip !78
  %442 = load i64* %RDX_val, !mcsema_real_eip !78
  store i64 %442, i64* %RDX, !mcsema_real_eip !78
  %443 = load i64* %RSI_val, !mcsema_real_eip !78
  store i64 %443, i64* %RSI, !mcsema_real_eip !78
  %444 = load i64* %RDI_val, !mcsema_real_eip !78
  store i64 %444, i64* %RDI, !mcsema_real_eip !78
  %445 = load i64* %RSP_val, !mcsema_real_eip !78
  store i64 %445, i64* %RSP, !mcsema_real_eip !78
  %446 = load i64* %RBP_val, !mcsema_real_eip !78
  store i64 %446, i64* %RBP, !mcsema_real_eip !78
  %447 = load i64* %R8_val, !mcsema_real_eip !78
  store i64 %447, i64* %R8, !mcsema_real_eip !78
  %448 = load i64* %R9_val, !mcsema_real_eip !78
  store i64 %448, i64* %R9, !mcsema_real_eip !78
  %449 = load i64* %R10_val, !mcsema_real_eip !78
  store i64 %449, i64* %R10, !mcsema_real_eip !78
  %450 = load i64* %R11_val, !mcsema_real_eip !78
  store i64 %450, i64* %R11, !mcsema_real_eip !78
  %451 = load i64* %R12_val, !mcsema_real_eip !78
  store i64 %451, i64* %R12, !mcsema_real_eip !78
  %452 = load i64* %R13_val, !mcsema_real_eip !78
  store i64 %452, i64* %R13, !mcsema_real_eip !78
  %453 = load i64* %R14_val, !mcsema_real_eip !78
  store i64 %453, i64* %R14, !mcsema_real_eip !78
  %454 = load i64* %R15_val, !mcsema_real_eip !78
  store i64 %454, i64* %R15, !mcsema_real_eip !78
  %455 = load i64* %RIP_val, !mcsema_real_eip !78
  store i64 %455, i64* %RIP, !mcsema_real_eip !78
  %456 = load i1* %CF_val, !mcsema_real_eip !78
  store i1 %456, i1* %CF, align 1, !mcsema_real_eip !78
  %457 = load i1* %PF_val, !mcsema_real_eip !78
  store i1 %457, i1* %PF, align 1, !mcsema_real_eip !78
  %458 = load i1* %AF_val, !mcsema_real_eip !78
  store i1 %458, i1* %AF, align 1, !mcsema_real_eip !78
  %459 = load i1* %ZF_val, !mcsema_real_eip !78
  store i1 %459, i1* %ZF, align 1, !mcsema_real_eip !78
  %460 = load i1* %SF_val, !mcsema_real_eip !78
  store i1 %460, i1* %SF, align 1, !mcsema_real_eip !78
  %461 = load i1* %OF_val, !mcsema_real_eip !78
  store i1 %461, i1* %OF, align 1, !mcsema_real_eip !78
  %462 = load i1* %DF_val, !mcsema_real_eip !78
  store i1 %462, i1* %DF, align 1, !mcsema_real_eip !78
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !78
  %463 = load i1* %FPU_B_val, !mcsema_real_eip !78
  store i1 %463, i1* %FPU_B, align 1, !mcsema_real_eip !78
  %464 = load i1* %FPU_C3_val, !mcsema_real_eip !78
  store i1 %464, i1* %FPU_C3, align 1, !mcsema_real_eip !78
  %465 = load i3* %FPU_TOP_val, !mcsema_real_eip !78
  store i3 %465, i3* %FPU_TOP, align 1, !mcsema_real_eip !78
  %466 = load i1* %FPU_C2_val, !mcsema_real_eip !78
  store i1 %466, i1* %FPU_C2, align 1, !mcsema_real_eip !78
  %467 = load i1* %FPU_C1_val, !mcsema_real_eip !78
  store i1 %467, i1* %FPU_C1, align 1, !mcsema_real_eip !78
  %468 = load i1* %FPU_C0_val, !mcsema_real_eip !78
  store i1 %468, i1* %FPU_C0, align 1, !mcsema_real_eip !78
  %469 = load i1* %FPU_ES_val, !mcsema_real_eip !78
  store i1 %469, i1* %FPU_ES, align 1, !mcsema_real_eip !78
  %470 = load i1* %FPU_SF_val, !mcsema_real_eip !78
  store i1 %470, i1* %FPU_SF, align 1, !mcsema_real_eip !78
  %471 = load i1* %FPU_PE_val, !mcsema_real_eip !78
  store i1 %471, i1* %FPU_PE, align 1, !mcsema_real_eip !78
  %472 = load i1* %FPU_UE_val, !mcsema_real_eip !78
  store i1 %472, i1* %FPU_UE, align 1, !mcsema_real_eip !78
  %473 = load i1* %FPU_OE_val, !mcsema_real_eip !78
  store i1 %473, i1* %FPU_OE, align 1, !mcsema_real_eip !78
  %474 = load i1* %FPU_ZE_val, !mcsema_real_eip !78
  store i1 %474, i1* %FPU_ZE, align 1, !mcsema_real_eip !78
  %475 = load i1* %FPU_DE_val, !mcsema_real_eip !78
  store i1 %475, i1* %FPU_DE, align 1, !mcsema_real_eip !78
  %476 = load i1* %FPU_IE_val, !mcsema_real_eip !78
  store i1 %476, i1* %FPU_IE, align 1, !mcsema_real_eip !78
  %477 = load i1* %FPU_X_val, !mcsema_real_eip !78
  store i1 %477, i1* %FPU_X, align 1, !mcsema_real_eip !78
  %478 = load i2* %FPU_RC_val, !mcsema_real_eip !78
  store i2 %478, i2* %FPU_RC, align 1, !mcsema_real_eip !78
  %479 = load i2* %FPU_PC_val, !mcsema_real_eip !78
  store i2 %479, i2* %FPU_PC, align 1, !mcsema_real_eip !78
  %480 = load i1* %FPU_PM_val, !mcsema_real_eip !78
  store i1 %480, i1* %FPU_PM, align 1, !mcsema_real_eip !78
  %481 = load i1* %FPU_UM_val, !mcsema_real_eip !78
  store i1 %481, i1* %FPU_UM, align 1, !mcsema_real_eip !78
  %482 = load i1* %FPU_OM_val, !mcsema_real_eip !78
  store i1 %482, i1* %FPU_OM, align 1, !mcsema_real_eip !78
  %483 = load i1* %FPU_ZM_val, !mcsema_real_eip !78
  store i1 %483, i1* %FPU_ZM, align 1, !mcsema_real_eip !78
  %484 = load i1* %FPU_DM_val, !mcsema_real_eip !78
  store i1 %484, i1* %FPU_DM, align 1, !mcsema_real_eip !78
  %485 = load i1* %FPU_IM_val, !mcsema_real_eip !78
  store i1 %485, i1* %FPU_IM, align 1, !mcsema_real_eip !78
  %486 = load i64* %53, align 4
  store i64 %486, i64* %52, align 4
  %487 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !78
  store i16 %487, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !78
  %488 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !78
  store i64 %488, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !78
  %489 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !78
  store i16 %489, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !78
  %490 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !78
  store i64 %490, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !78
  %491 = load i128* %XMM0_val, !mcsema_real_eip !78
  store i128 %491, i128* %XMM0, align 1, !mcsema_real_eip !78
  %492 = load i128* %XMM1_val, !mcsema_real_eip !78
  store i128 %492, i128* %XMM1, align 1, !mcsema_real_eip !78
  %493 = load i128* %XMM2_val, !mcsema_real_eip !78
  store i128 %493, i128* %XMM2, align 1, !mcsema_real_eip !78
  %494 = load i128* %XMM3_val, !mcsema_real_eip !78
  store i128 %494, i128* %XMM3, align 1, !mcsema_real_eip !78
  %495 = load i128* %XMM4_val, !mcsema_real_eip !78
  store i128 %495, i128* %XMM4, align 1, !mcsema_real_eip !78
  %496 = load i128* %XMM5_val, !mcsema_real_eip !78
  store i128 %496, i128* %XMM5, align 1, !mcsema_real_eip !78
  %497 = load i128* %XMM6_val, !mcsema_real_eip !78
  store i128 %497, i128* %XMM6, align 1, !mcsema_real_eip !78
  %498 = load i128* %XMM7_val, !mcsema_real_eip !78
  store i128 %498, i128* %XMM7, align 1, !mcsema_real_eip !78
  %499 = load i128* %XMM8_val, !mcsema_real_eip !78
  store i128 %499, i128* %XMM8, align 1, !mcsema_real_eip !78
  %500 = load i128* %XMM9_val, !mcsema_real_eip !78
  store i128 %500, i128* %XMM9, align 1, !mcsema_real_eip !78
  %501 = load i128* %XMM10_val, !mcsema_real_eip !78
  store i128 %501, i128* %XMM10, align 1, !mcsema_real_eip !78
  %502 = load i128* %XMM11_val, !mcsema_real_eip !78
  store i128 %502, i128* %XMM11, align 1, !mcsema_real_eip !78
  %503 = load i128* %XMM12_val, !mcsema_real_eip !78
  store i128 %503, i128* %XMM12, align 1, !mcsema_real_eip !78
  %504 = load i128* %XMM13_val, !mcsema_real_eip !78
  store i128 %504, i128* %XMM13, align 1, !mcsema_real_eip !78
  %505 = load i128* %XMM14_val, !mcsema_real_eip !78
  store i128 %505, i128* %XMM14, align 1, !mcsema_real_eip !78
  %506 = load i128* %XMM15_val, !mcsema_real_eip !78
  store i128 %506, i128* %XMM15, align 1, !mcsema_real_eip !78
  %507 = load i64* %STACK_BASE_val, !mcsema_real_eip !78
  store i64 %507, i64* %STACK_BASE, align 1, !mcsema_real_eip !78
  %508 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !78
  store i64 %508, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !78
  ret void, !mcsema_real_eip !78

block_0xd5:                                       ; preds = %block_0xaa, %block_0xc0
  %509 = load i64* %RBP_val, !mcsema_real_eip !79
  %510 = add i64 %509, -24, !mcsema_real_eip !79
  %511 = inttoptr i64 %510 to i64*, !mcsema_real_eip !79
  %512 = bitcast i64* %511 to i32*
  %513 = load i32* %512, !mcsema_real_eip !79
  %uadd142 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %513, i32 -1)
  %514 = extractvalue { i32, i1 } %uadd142, 0
  %515 = xor i32 %514, %513, !mcsema_real_eip !80
  %516 = and i32 %515, 16
  %517 = icmp eq i32 %516, 0
  store i1 %517, i1* %AF_val, !mcsema_real_eip !80
  %518 = icmp slt i32 %514, 0
  store i1 %518, i1* %SF_val, !mcsema_real_eip !80
  %519 = icmp eq i32 %514, 0, !mcsema_real_eip !80
  store i1 %519, i1* %ZF_val, !mcsema_real_eip !80
  %520 = and i32 %515, %513, !mcsema_real_eip !80
  %521 = icmp slt i32 %520, 0
  store i1 %521, i1* %OF_val, !mcsema_real_eip !80
  %522 = trunc i32 %514 to i8, !mcsema_real_eip !80
  %523 = tail call i8 @llvm.ctpop.i8(i8 %522), !mcsema_real_eip !80
  %524 = and i8 %523, 1
  %525 = icmp eq i8 %524, 0
  store i1 %525, i1* %PF_val, !mcsema_real_eip !80
  %526 = extractvalue { i32, i1 } %uadd142, 1
  store i1 %526, i1* %CF_val, !mcsema_real_eip !80
  %527 = zext i32 %514 to i64, !mcsema_real_eip !80
  store i64 %527, i64* %RAX_val, !mcsema_real_eip !80
  %528 = load i64* %RBP_val, !mcsema_real_eip !81
  %529 = add i64 %528, -24, !mcsema_real_eip !81
  %530 = inttoptr i64 %529 to i64*, !mcsema_real_eip !81
  %531 = bitcast i64* %530 to i32*
  store i32 %514, i32* %531, !mcsema_real_eip !81
  %532 = load i64* %RBP_val, !mcsema_real_eip !82
  %533 = add i64 %532, -28, !mcsema_real_eip !82
  %534 = inttoptr i64 %533 to i64*, !mcsema_real_eip !82
  %535 = bitcast i64* %534 to i32*
  %536 = load i32* %535, !mcsema_real_eip !82
  %uadd143 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %536, i32 60)
  %537 = extractvalue { i32, i1 } %uadd143, 0
  %538 = xor i32 %537, %536, !mcsema_real_eip !83
  %539 = and i32 %538, 16
  %540 = icmp eq i32 %539, 0
  store i1 %540, i1* %AF_val, !mcsema_real_eip !83
  %541 = icmp slt i32 %537, 0
  store i1 %541, i1* %SF_val, !mcsema_real_eip !83
  %542 = icmp eq i32 %537, 0, !mcsema_real_eip !83
  store i1 %542, i1* %ZF_val, !mcsema_real_eip !83
  %543 = xor i32 %536, -2147483648, !mcsema_real_eip !83
  %544 = and i32 %538, %543, !mcsema_real_eip !83
  %545 = icmp slt i32 %544, 0
  store i1 %545, i1* %OF_val, !mcsema_real_eip !83
  %546 = trunc i32 %537 to i8, !mcsema_real_eip !83
  %547 = tail call i8 @llvm.ctpop.i8(i8 %546), !mcsema_real_eip !83
  %548 = and i8 %547, 1
  %549 = icmp eq i8 %548, 0
  store i1 %549, i1* %PF_val, !mcsema_real_eip !83
  %550 = extractvalue { i32, i1 } %uadd143, 1
  store i1 %550, i1* %CF_val, !mcsema_real_eip !83
  %551 = zext i32 %537 to i64, !mcsema_real_eip !83
  store i64 %551, i64* %RAX_val, !mcsema_real_eip !83
  %552 = load i64* %RBP_val, !mcsema_real_eip !84
  %553 = add i64 %552, -28, !mcsema_real_eip !84
  %554 = inttoptr i64 %553 to i64*, !mcsema_real_eip !84
  %555 = bitcast i64* %554 to i32*
  store i32 %537, i32* %555, !mcsema_real_eip !84
  %556 = load i64* %RBP_val, !mcsema_real_eip !60
  %557 = add i64 %556, -28, !mcsema_real_eip !60
  %558 = inttoptr i64 %557 to i64*, !mcsema_real_eip !60
  %559 = bitcast i64* %558 to i32*
  %560 = load i32* %559, !mcsema_real_eip !60
  %561 = zext i32 %560 to i64, !mcsema_real_eip !60
  store i64 %561, i64* %RAX_val, !mcsema_real_eip !60
  %562 = load i64* %RBP_val, !mcsema_real_eip !61
  %563 = add i64 %562, -60, !mcsema_real_eip !61
  %564 = inttoptr i64 %563 to i64*, !mcsema_real_eip !61
  %565 = bitcast i64* %564 to i32*
  %566 = load i32* %565, !mcsema_real_eip !61
  %567 = zext i32 %566 to i64, !mcsema_real_eip !61
  store i64 %567, i64* %RCX_val, !mcsema_real_eip !61
  %568 = load i64* %RAX_val, !mcsema_real_eip !62
  %569 = trunc i64 %568 to i32, !mcsema_real_eip !62
  %570 = sub i32 %569, %566, !mcsema_real_eip !62
  %571 = xor i32 %570, %569, !mcsema_real_eip !62
  %572 = xor i32 %571, %566, !mcsema_real_eip !62
  %573 = and i32 %572, 16, !mcsema_real_eip !62
  %574 = icmp ne i32 %573, 0, !mcsema_real_eip !62
  store i1 %574, i1* %AF_val, !mcsema_real_eip !62
  %575 = trunc i32 %570 to i8, !mcsema_real_eip !62
  %576 = tail call i8 @llvm.ctpop.i8(i8 %575), !mcsema_real_eip !62
  %577 = and i8 %576, 1
  %578 = icmp eq i8 %577, 0
  store i1 %578, i1* %PF_val, !mcsema_real_eip !62
  %579 = icmp eq i32 %569, %566
  store i1 %579, i1* %ZF_val, !mcsema_real_eip !62
  %580 = icmp slt i32 %570, 0
  store i1 %580, i1* %SF_val, !mcsema_real_eip !62
  %581 = icmp ult i32 %569, %566, !mcsema_real_eip !62
  store i1 %581, i1* %CF_val, !mcsema_real_eip !62
  %582 = xor i32 %569, %566, !mcsema_real_eip !62
  %583 = and i32 %571, %582, !mcsema_real_eip !62
  %584 = icmp slt i32 %583, 0
  store i1 %584, i1* %OF_val, !mcsema_real_eip !62
  %585 = zext i32 %570 to i64, !mcsema_real_eip !62
  store i64 %585, i64* %RAX_val, !mcsema_real_eip !62
  %586 = load i64* %RBP_val, !mcsema_real_eip !63
  %587 = add i64 %586, -92, !mcsema_real_eip !63
  %588 = inttoptr i64 %587 to i64*, !mcsema_real_eip !63
  %589 = bitcast i64* %588 to i32*
  store i32 %570, i32* %589, !mcsema_real_eip !63
  %590 = load i64* %RBP_val, !mcsema_real_eip !64
  %591 = add i64 %590, -24, !mcsema_real_eip !64
  %592 = inttoptr i64 %591 to i64*, !mcsema_real_eip !64
  %593 = bitcast i64* %592 to i32*
  %594 = load i32* %593, !mcsema_real_eip !64
  %595 = zext i32 %594 to i64, !mcsema_real_eip !64
  store i64 %595, i64* %RAX_val, !mcsema_real_eip !64
  %596 = load i64* %RBP_val, !mcsema_real_eip !65
  %597 = add i64 %596, -56, !mcsema_real_eip !65
  %598 = inttoptr i64 %597 to i64*, !mcsema_real_eip !65
  %599 = bitcast i64* %598 to i32*
  %600 = load i32* %599, !mcsema_real_eip !65
  %601 = zext i32 %600 to i64, !mcsema_real_eip !65
  store i64 %601, i64* %RCX_val, !mcsema_real_eip !65
  %602 = load i64* %RAX_val, !mcsema_real_eip !66
  %603 = trunc i64 %602 to i32, !mcsema_real_eip !66
  %604 = sub i32 %603, %600, !mcsema_real_eip !66
  %605 = xor i32 %604, %603, !mcsema_real_eip !66
  %606 = xor i32 %605, %600, !mcsema_real_eip !66
  %607 = and i32 %606, 16, !mcsema_real_eip !66
  %608 = icmp ne i32 %607, 0, !mcsema_real_eip !66
  store i1 %608, i1* %AF_val, !mcsema_real_eip !66
  %609 = trunc i32 %604 to i8, !mcsema_real_eip !66
  %610 = tail call i8 @llvm.ctpop.i8(i8 %609), !mcsema_real_eip !66
  %611 = and i8 %610, 1
  %612 = icmp eq i8 %611, 0
  store i1 %612, i1* %PF_val, !mcsema_real_eip !66
  %613 = icmp eq i32 %603, %600
  store i1 %613, i1* %ZF_val, !mcsema_real_eip !66
  %614 = icmp slt i32 %604, 0
  store i1 %614, i1* %SF_val, !mcsema_real_eip !66
  %615 = icmp ult i32 %603, %600, !mcsema_real_eip !66
  store i1 %615, i1* %CF_val, !mcsema_real_eip !66
  %616 = xor i32 %603, %600, !mcsema_real_eip !66
  %617 = and i32 %605, %616, !mcsema_real_eip !66
  %618 = icmp slt i32 %617, 0
  store i1 %618, i1* %OF_val, !mcsema_real_eip !66
  %619 = zext i32 %604 to i64, !mcsema_real_eip !66
  store i64 %619, i64* %RAX_val, !mcsema_real_eip !66
  %620 = load i64* %RBP_val, !mcsema_real_eip !67
  %621 = add i64 %620, -88, !mcsema_real_eip !67
  %622 = inttoptr i64 %621 to i64*, !mcsema_real_eip !67
  %623 = bitcast i64* %622 to i32*
  store i32 %604, i32* %623, !mcsema_real_eip !67
  %624 = load i64* %RBP_val, !mcsema_real_eip !68
  %625 = add i64 %624, -8, !mcsema_real_eip !68
  %626 = inttoptr i64 %625 to i64*, !mcsema_real_eip !68
  %627 = load i64* %RAX_val, !mcsema_real_eip !68
  %628 = trunc i64 %627 to i32, !mcsema_real_eip !68
  %629 = bitcast i64* %626 to i32*
  store i32 %628, i32* %629, !mcsema_real_eip !68
  %630 = load i64* %RBP_val, !mcsema_real_eip !69
  %631 = add i64 %630, -96, !mcsema_real_eip !69
  %632 = inttoptr i64 %631 to i64*, !mcsema_real_eip !69
  %633 = load i64* %632, !mcsema_real_eip !69
  store i64 %633, i64* %RDX_val, !mcsema_real_eip !69
  %634 = add i64 %630, -16, !mcsema_real_eip !70
  %635 = inttoptr i64 %634 to i64*, !mcsema_real_eip !70
  store i64 %633, i64* %635, !mcsema_real_eip !70
  %636 = load i64* %RBP_val, !mcsema_real_eip !71
  %637 = add i64 %636, -8, !mcsema_real_eip !71
  %638 = inttoptr i64 %637 to i64*, !mcsema_real_eip !71
  %639 = bitcast i64* %638 to i32*
  %640 = load i32* %639, !mcsema_real_eip !71
  %641 = zext i32 %640 to i64, !mcsema_real_eip !71
  store i64 %641, i64* %RAX_val, !mcsema_real_eip !71
  %642 = load i64* %RBP_val, !mcsema_real_eip !72
  %643 = add i64 %642, -104, !mcsema_real_eip !72
  %644 = inttoptr i64 %643 to i64*, !mcsema_real_eip !72
  %645 = bitcast i64* %644 to i32*
  store i32 %640, i32* %645, !mcsema_real_eip !72
  %646 = load i64* %RBP_val, !mcsema_real_eip !73
  %647 = add i64 %646, -16, !mcsema_real_eip !73
  %648 = inttoptr i64 %647 to i64*, !mcsema_real_eip !73
  %649 = load i64* %648, !mcsema_real_eip !73
  store i64 %649, i64* %RDX_val, !mcsema_real_eip !73
  %650 = add i64 %646, -112, !mcsema_real_eip !74
  %651 = inttoptr i64 %650 to i64*, !mcsema_real_eip !74
  store i64 %649, i64* %651, !mcsema_real_eip !74
  %652 = load i64* %RBP_val, !mcsema_real_eip !75
  %653 = add i64 %652, -112, !mcsema_real_eip !75
  %654 = inttoptr i64 %653 to i64*, !mcsema_real_eip !75
  %655 = load i64* %654, !mcsema_real_eip !75
  store i64 %655, i64* %RAX_val, !mcsema_real_eip !75
  %656 = add i64 %652, -104, !mcsema_real_eip !76
  %657 = inttoptr i64 %656 to i64*, !mcsema_real_eip !76
  %658 = bitcast i64* %657 to i32*
  %659 = load i32* %658, !mcsema_real_eip !76
  %660 = zext i32 %659 to i64, !mcsema_real_eip !76
  store i64 %660, i64* %RDX_val, !mcsema_real_eip !76
  %661 = load i64* %RSP_val, !mcsema_real_eip !77
  %662 = inttoptr i64 %661 to i64*, !mcsema_real_eip !77
  %663 = load i64* %662, !mcsema_real_eip !77
  store i64 %663, i64* %RBP_val, !mcsema_real_eip !77
  %664 = add i64 %661, 16, !mcsema_real_eip !78
  store i64 %664, i64* %RSP_val, !mcsema_real_eip !78
  %665 = load i64* %RAX_val, !mcsema_real_eip !78
  store i64 %665, i64* %RAX, !mcsema_real_eip !78
  %666 = load i64* %RBX_val, !mcsema_real_eip !78
  store i64 %666, i64* %RBX, !mcsema_real_eip !78
  %667 = load i64* %RCX_val, !mcsema_real_eip !78
  store i64 %667, i64* %RCX, !mcsema_real_eip !78
  %668 = load i64* %RDX_val, !mcsema_real_eip !78
  store i64 %668, i64* %RDX, !mcsema_real_eip !78
  %669 = load i64* %RSI_val, !mcsema_real_eip !78
  store i64 %669, i64* %RSI, !mcsema_real_eip !78
  %670 = load i64* %RDI_val, !mcsema_real_eip !78
  store i64 %670, i64* %RDI, !mcsema_real_eip !78
  %671 = load i64* %RSP_val, !mcsema_real_eip !78
  store i64 %671, i64* %RSP, !mcsema_real_eip !78
  %672 = load i64* %RBP_val, !mcsema_real_eip !78
  store i64 %672, i64* %RBP, !mcsema_real_eip !78
  %673 = load i64* %R8_val, !mcsema_real_eip !78
  store i64 %673, i64* %R8, !mcsema_real_eip !78
  %674 = load i64* %R9_val, !mcsema_real_eip !78
  store i64 %674, i64* %R9, !mcsema_real_eip !78
  %675 = load i64* %R10_val, !mcsema_real_eip !78
  store i64 %675, i64* %R10, !mcsema_real_eip !78
  %676 = load i64* %R11_val, !mcsema_real_eip !78
  store i64 %676, i64* %R11, !mcsema_real_eip !78
  %677 = load i64* %R12_val, !mcsema_real_eip !78
  store i64 %677, i64* %R12, !mcsema_real_eip !78
  %678 = load i64* %R13_val, !mcsema_real_eip !78
  store i64 %678, i64* %R13, !mcsema_real_eip !78
  %679 = load i64* %R14_val, !mcsema_real_eip !78
  store i64 %679, i64* %R14, !mcsema_real_eip !78
  %680 = load i64* %R15_val, !mcsema_real_eip !78
  store i64 %680, i64* %R15, !mcsema_real_eip !78
  %681 = load i64* %RIP_val, !mcsema_real_eip !78
  store i64 %681, i64* %RIP, !mcsema_real_eip !78
  %682 = load i1* %CF_val, !mcsema_real_eip !78
  store i1 %682, i1* %CF, align 1, !mcsema_real_eip !78
  %683 = load i1* %PF_val, !mcsema_real_eip !78
  store i1 %683, i1* %PF, align 1, !mcsema_real_eip !78
  %684 = load i1* %AF_val, !mcsema_real_eip !78
  store i1 %684, i1* %AF, align 1, !mcsema_real_eip !78
  %685 = load i1* %ZF_val, !mcsema_real_eip !78
  store i1 %685, i1* %ZF, align 1, !mcsema_real_eip !78
  %686 = load i1* %SF_val, !mcsema_real_eip !78
  store i1 %686, i1* %SF, align 1, !mcsema_real_eip !78
  %687 = load i1* %OF_val, !mcsema_real_eip !78
  store i1 %687, i1* %OF, align 1, !mcsema_real_eip !78
  %688 = load i1* %DF_val, !mcsema_real_eip !78
  store i1 %688, i1* %DF, align 1, !mcsema_real_eip !78
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !78
  %689 = load i1* %FPU_B_val, !mcsema_real_eip !78
  store i1 %689, i1* %FPU_B, align 1, !mcsema_real_eip !78
  %690 = load i1* %FPU_C3_val, !mcsema_real_eip !78
  store i1 %690, i1* %FPU_C3, align 1, !mcsema_real_eip !78
  %691 = load i3* %FPU_TOP_val, !mcsema_real_eip !78
  store i3 %691, i3* %FPU_TOP, align 1, !mcsema_real_eip !78
  %692 = load i1* %FPU_C2_val, !mcsema_real_eip !78
  store i1 %692, i1* %FPU_C2, align 1, !mcsema_real_eip !78
  %693 = load i1* %FPU_C1_val, !mcsema_real_eip !78
  store i1 %693, i1* %FPU_C1, align 1, !mcsema_real_eip !78
  %694 = load i1* %FPU_C0_val, !mcsema_real_eip !78
  store i1 %694, i1* %FPU_C0, align 1, !mcsema_real_eip !78
  %695 = load i1* %FPU_ES_val, !mcsema_real_eip !78
  store i1 %695, i1* %FPU_ES, align 1, !mcsema_real_eip !78
  %696 = load i1* %FPU_SF_val, !mcsema_real_eip !78
  store i1 %696, i1* %FPU_SF, align 1, !mcsema_real_eip !78
  %697 = load i1* %FPU_PE_val, !mcsema_real_eip !78
  store i1 %697, i1* %FPU_PE, align 1, !mcsema_real_eip !78
  %698 = load i1* %FPU_UE_val, !mcsema_real_eip !78
  store i1 %698, i1* %FPU_UE, align 1, !mcsema_real_eip !78
  %699 = load i1* %FPU_OE_val, !mcsema_real_eip !78
  store i1 %699, i1* %FPU_OE, align 1, !mcsema_real_eip !78
  %700 = load i1* %FPU_ZE_val, !mcsema_real_eip !78
  store i1 %700, i1* %FPU_ZE, align 1, !mcsema_real_eip !78
  %701 = load i1* %FPU_DE_val, !mcsema_real_eip !78
  store i1 %701, i1* %FPU_DE, align 1, !mcsema_real_eip !78
  %702 = load i1* %FPU_IE_val, !mcsema_real_eip !78
  store i1 %702, i1* %FPU_IE, align 1, !mcsema_real_eip !78
  %703 = load i1* %FPU_X_val, !mcsema_real_eip !78
  store i1 %703, i1* %FPU_X, align 1, !mcsema_real_eip !78
  %704 = load i2* %FPU_RC_val, !mcsema_real_eip !78
  store i2 %704, i2* %FPU_RC, align 1, !mcsema_real_eip !78
  %705 = load i2* %FPU_PC_val, !mcsema_real_eip !78
  store i2 %705, i2* %FPU_PC, align 1, !mcsema_real_eip !78
  %706 = load i1* %FPU_PM_val, !mcsema_real_eip !78
  store i1 %706, i1* %FPU_PM, align 1, !mcsema_real_eip !78
  %707 = load i1* %FPU_UM_val, !mcsema_real_eip !78
  store i1 %707, i1* %FPU_UM, align 1, !mcsema_real_eip !78
  %708 = load i1* %FPU_OM_val, !mcsema_real_eip !78
  store i1 %708, i1* %FPU_OM, align 1, !mcsema_real_eip !78
  %709 = load i1* %FPU_ZM_val, !mcsema_real_eip !78
  store i1 %709, i1* %FPU_ZM, align 1, !mcsema_real_eip !78
  %710 = load i1* %FPU_DM_val, !mcsema_real_eip !78
  store i1 %710, i1* %FPU_DM, align 1, !mcsema_real_eip !78
  %711 = load i1* %FPU_IM_val, !mcsema_real_eip !78
  store i1 %711, i1* %FPU_IM, align 1, !mcsema_real_eip !78
  %712 = load i64* %53, align 4
  store i64 %712, i64* %52, align 4
  %713 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !78
  store i16 %713, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !78
  %714 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !78
  store i64 %714, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !78
  %715 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !78
  store i16 %715, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !78
  %716 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !78
  store i64 %716, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !78
  %717 = load i128* %XMM0_val, !mcsema_real_eip !78
  store i128 %717, i128* %XMM0, align 1, !mcsema_real_eip !78
  %718 = load i128* %XMM1_val, !mcsema_real_eip !78
  store i128 %718, i128* %XMM1, align 1, !mcsema_real_eip !78
  %719 = load i128* %XMM2_val, !mcsema_real_eip !78
  store i128 %719, i128* %XMM2, align 1, !mcsema_real_eip !78
  %720 = load i128* %XMM3_val, !mcsema_real_eip !78
  store i128 %720, i128* %XMM3, align 1, !mcsema_real_eip !78
  %721 = load i128* %XMM4_val, !mcsema_real_eip !78
  store i128 %721, i128* %XMM4, align 1, !mcsema_real_eip !78
  %722 = load i128* %XMM5_val, !mcsema_real_eip !78
  store i128 %722, i128* %XMM5, align 1, !mcsema_real_eip !78
  %723 = load i128* %XMM6_val, !mcsema_real_eip !78
  store i128 %723, i128* %XMM6, align 1, !mcsema_real_eip !78
  %724 = load i128* %XMM7_val, !mcsema_real_eip !78
  store i128 %724, i128* %XMM7, align 1, !mcsema_real_eip !78
  %725 = load i128* %XMM8_val, !mcsema_real_eip !78
  store i128 %725, i128* %XMM8, align 1, !mcsema_real_eip !78
  %726 = load i128* %XMM9_val, !mcsema_real_eip !78
  store i128 %726, i128* %XMM9, align 1, !mcsema_real_eip !78
  %727 = load i128* %XMM10_val, !mcsema_real_eip !78
  store i128 %727, i128* %XMM10, align 1, !mcsema_real_eip !78
  %728 = load i128* %XMM11_val, !mcsema_real_eip !78
  store i128 %728, i128* %XMM11, align 1, !mcsema_real_eip !78
  %729 = load i128* %XMM12_val, !mcsema_real_eip !78
  store i128 %729, i128* %XMM12, align 1, !mcsema_real_eip !78
  %730 = load i128* %XMM13_val, !mcsema_real_eip !78
  store i128 %730, i128* %XMM13, align 1, !mcsema_real_eip !78
  %731 = load i128* %XMM14_val, !mcsema_real_eip !78
  store i128 %731, i128* %XMM14, align 1, !mcsema_real_eip !78
  %732 = load i128* %XMM15_val, !mcsema_real_eip !78
  store i128 %732, i128* %XMM15, align 1, !mcsema_real_eip !78
  %733 = load i64* %STACK_BASE_val, !mcsema_real_eip !78
  store i64 %733, i64* %STACK_BASE, align 1, !mcsema_real_eip !78
  %734 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !78
  store i64 %734, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !78
  ret void, !mcsema_real_eip !78
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
!4 = metadata !{i64 4, [17 x i8] c"\09subq\09$112, %rsp\00"}
!5 = metadata !{i64 8, [15 x i8] c"\09movl\09$0, %eax\00"}
!6 = metadata !{i64 13, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!7 = metadata !{i64 20, [21 x i8] c"\09movl\09-8(%rbp), %ecx\00"}
!8 = metadata !{i64 23, [22 x i8] c"\09movl\09%ecx, -40(%rbp)\00"}
!9 = metadata !{i64 26, [22 x i8] c"\09movq\09-16(%rbp), %rdx\00"}
!10 = metadata !{i64 30, [22 x i8] c"\09movq\09%rdx, -48(%rbp)\00"}
!11 = metadata !{i64 34, [22 x i8] c"\09movq\09-48(%rbp), %rdi\00"}
!12 = metadata !{i64 38, [22 x i8] c"\09movl\09-40(%rbp), %esi\00"}
!13 = metadata !{i64 41, [22 x i8] c"\09movl\09-24(%rbp), %ecx\00"} ; [ DW_TAG_file_type ] [/]
!14 = metadata !{i64 44, [22 x i8] c"\09movl\09%ecx, -56(%rbp)\00"}
!15 = metadata !{i64 47, [22 x i8] c"\09movq\09-32(%rbp), %rdx\00"}
!16 = metadata !{i64 51, [22 x i8] c"\09movq\09%rdx, -64(%rbp)\00"}
!17 = metadata !{i64 55, [22 x i8] c"\09movq\09-64(%rbp), %rdx\00"}
!18 = metadata !{i64 59, [22 x i8] c"\09movl\09-56(%rbp), %ecx\00"}
!19 = metadata !{i64 62, [23 x i8] c"\09movl\09%eax, -100(%rbp)\00"}
!20 = metadata !{i64 65, [10 x i8] c"\09callq\0942\00"}
!21 = metadata !{i64 70, [22 x i8] c"\09movl\09%edx, -88(%rbp)\00"}
!22 = metadata !{i64 73, [22 x i8] c"\09movq\09%rax, -96(%rbp)\00"}
!23 = metadata !{i64 77, [22 x i8] c"\09movq\09-96(%rbp), %rax\00"}
!24 = metadata !{i64 81, [22 x i8] c"\09movq\09%rax, -80(%rbp)\00"}
!25 = metadata !{i64 85, [22 x i8] c"\09movl\09-88(%rbp), %ecx\00"}
!26 = metadata !{i64 88, [22 x i8] c"\09movl\09%ecx, -72(%rbp)\00"}
!27 = metadata !{i64 91, [23 x i8] c"\09movl\09-100(%rbp), %eax\00"}
!28 = metadata !{i64 94, [17 x i8] c"\09addq\09$112, %rsp\00"}
!29 = metadata !{i64 98, [11 x i8] c"\09popq\09%rbp\00"}
!30 = metadata !{i64 99, [6 x i8] c"\09retq\00"}
!31 = metadata !{i64 112, [12 x i8] c"\09pushq\09%rbp\00"}
!32 = metadata !{i64 113, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!33 = metadata !{i64 116, [22 x i8] c"\09movq\09%rdi, -48(%rbp)\00"}
!34 = metadata !{i64 120, [22 x i8] c"\09movl\09%esi, -40(%rbp)\00"}
!35 = metadata !{i64 123, [22 x i8] c"\09movq\09-48(%rbp), %rdi\00"}
!36 = metadata !{i64 127, [22 x i8] c"\09movq\09%rdi, -32(%rbp)\00"}
!37 = metadata !{i64 131, [22 x i8] c"\09movl\09-40(%rbp), %esi\00"}
!38 = metadata !{i64 134, [22 x i8] c"\09movl\09%esi, -24(%rbp)\00"}
!39 = metadata !{i64 137, [22 x i8] c"\09movq\09%rdx, -80(%rbp)\00"}
!40 = metadata !{i64 141, [22 x i8] c"\09movl\09%ecx, -72(%rbp)\00"}
!41 = metadata !{i64 144, [22 x i8] c"\09movq\09-80(%rbp), %rdx\00"}
!42 = metadata !{i64 148, [22 x i8] c"\09movq\09%rdx, -64(%rbp)\00"}
!43 = metadata !{i64 152, [22 x i8] c"\09movl\09-72(%rbp), %ecx\00"}
!44 = metadata !{i64 155, [22 x i8] c"\09movl\09%ecx, -56(%rbp)\00"}
!45 = metadata !{i64 158, [22 x i8] c"\09movl\09-64(%rbp), %ecx\00"}
!46 = metadata !{i64 161, [22 x i8] c"\09cmpl\09-32(%rbp), %ecx\00"}
!47 = metadata !{i64 164, [8 x i8] c"\09jle\0922\00"}
!48 = metadata !{i64 192, [22 x i8] c"\09movl\09-32(%rbp), %eax\00"}
!49 = metadata !{i64 195, [22 x i8] c"\09subl\09-64(%rbp), %eax\00"}
!50 = metadata !{i64 198, [22 x i8] c"\09movl\09%eax, -96(%rbp)\00"}
!51 = metadata !{i64 201, [22 x i8] c"\09movl\09-60(%rbp), %eax\00"}
!52 = metadata !{i64 204, [22 x i8] c"\09cmpl\09-28(%rbp), %eax\00"}
!53 = metadata !{i64 207, [8 x i8] c"\09jle\0922\00"}
!54 = metadata !{i64 170, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!55 = metadata !{i64 173, [24 x i8] c"\09addl\09$4294967295, %eax\00"}
!56 = metadata !{i64 178, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
!57 = metadata !{i64 181, [22 x i8] c"\09movl\09-32(%rbp), %eax\00"}
!58 = metadata !{i64 184, [16 x i8] c"\09addl\09$60, %eax\00"}
!59 = metadata !{i64 189, [22 x i8] c"\09movl\09%eax, -32(%rbp)\00"}
!60 = metadata !{i64 235, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!61 = metadata !{i64 238, [22 x i8] c"\09movl\09-60(%rbp), %ecx\00"}
!62 = metadata !{i64 241, [17 x i8] c"\09subl\09%ecx, %eax\00"}
!63 = metadata !{i64 243, [22 x i8] c"\09movl\09%eax, -92(%rbp)\00"}
!64 = metadata !{i64 246, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!65 = metadata !{i64 249, [22 x i8] c"\09movl\09-56(%rbp), %ecx\00"}
!66 = metadata !{i64 252, [17 x i8] c"\09subl\09%ecx, %eax\00"}
!67 = metadata !{i64 254, [22 x i8] c"\09movl\09%eax, -88(%rbp)\00"}
!68 = metadata !{i64 257, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!69 = metadata !{i64 260, [22 x i8] c"\09movq\09-96(%rbp), %rdx\00"}
!70 = metadata !{i64 264, [22 x i8] c"\09movq\09%rdx, -16(%rbp)\00"}
!71 = metadata !{i64 268, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!72 = metadata !{i64 271, [23 x i8] c"\09movl\09%eax, -104(%rbp)\00"}
!73 = metadata !{i64 274, [22 x i8] c"\09movq\09-16(%rbp), %rdx\00"}
!74 = metadata !{i64 278, [23 x i8] c"\09movq\09%rdx, -112(%rbp)\00"}
!75 = metadata !{i64 282, [23 x i8] c"\09movq\09-112(%rbp), %rax\00"}
!76 = metadata !{i64 286, [23 x i8] c"\09movl\09-104(%rbp), %edx\00"}
!77 = metadata !{i64 289, [11 x i8] c"\09popq\09%rbp\00"}
!78 = metadata !{i64 290, [6 x i8] c"\09retq\00"}
!79 = metadata !{i64 213, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!80 = metadata !{i64 216, [24 x i8] c"\09addl\09$4294967295, %eax\00"}
!81 = metadata !{i64 221, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!82 = metadata !{i64 224, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!83 = metadata !{i64 227, [16 x i8] c"\09addl\09$60, %eax\00"}
!84 = metadata !{i64 232, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
