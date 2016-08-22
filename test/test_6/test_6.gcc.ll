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
  %95 = add i64 %94, -32, !mcsema_real_eip !5
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !5
  %97 = load i64* %96, !mcsema_real_eip !5
  store i64 %97, i64* %RDX_val, !mcsema_real_eip !5
  %98 = add i64 %94, -24, !mcsema_real_eip !6
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !6
  %100 = bitcast i64* %99 to i32*
  %101 = load i32* %100, !mcsema_real_eip !6
  %102 = zext i32 %101 to i64, !mcsema_real_eip !6
  store i64 %102, i64* %RCX_val, !mcsema_real_eip !6
  %103 = load i64* %RBP_val, !mcsema_real_eip !7
  %104 = add i64 %103, -16, !mcsema_real_eip !7
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !7
  %106 = load i64* %105, !mcsema_real_eip !7
  store i64 %106, i64* %RSI_val, !mcsema_real_eip !7
  %107 = add i64 %103, -8, !mcsema_real_eip !8
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !8
  %109 = bitcast i64* %108 to i32*
  %110 = load i32* %109, !mcsema_real_eip !8
  %111 = zext i32 %110 to i64, !mcsema_real_eip !8
  store i64 %111, i64* %RAX_val, !mcsema_real_eip !8
  %112 = load i64* %RSI_val, !mcsema_real_eip !9
  store i64 %112, i64* %RDI_val, !mcsema_real_eip !9
  store i64 %111, i64* %RSI_val, !mcsema_real_eip !10
  %113 = load i64* %RSP_val, !mcsema_real_eip !11
  %114 = add i64 %113, -8
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !11
  store i64 -4981261766360305936, i64* %115, !mcsema_real_eip !11
  store i64 %114, i64* %RSP_val, !mcsema_real_eip !11
  %116 = load i64* %RAX_val, !mcsema_real_eip !11
  store i64 %116, i64* %RAX, !mcsema_real_eip !11
  %117 = load i64* %RBX_val, !mcsema_real_eip !11
  store i64 %117, i64* %RBX, !mcsema_real_eip !11
  %118 = load i64* %RCX_val, !mcsema_real_eip !11
  store i64 %118, i64* %RCX, !mcsema_real_eip !11
  %119 = load i64* %RDX_val, !mcsema_real_eip !11
  store i64 %119, i64* %RDX, !mcsema_real_eip !11
  %120 = load i64* %RSI_val, !mcsema_real_eip !11
  store i64 %120, i64* %RSI, !mcsema_real_eip !11
  %121 = load i64* %RDI_val, !mcsema_real_eip !11
  store i64 %121, i64* %RDI, !mcsema_real_eip !11
  %122 = load i64* %RSP_val, !mcsema_real_eip !11
  store i64 %122, i64* %RSP, !mcsema_real_eip !11
  %123 = load i64* %RBP_val, !mcsema_real_eip !11
  store i64 %123, i64* %RBP, !mcsema_real_eip !11
  %124 = load i64* %R8_val, !mcsema_real_eip !11
  store i64 %124, i64* %R8, !mcsema_real_eip !11
  %125 = load i64* %R9_val, !mcsema_real_eip !11
  store i64 %125, i64* %R9, !mcsema_real_eip !11
  %126 = load i64* %R10_val, !mcsema_real_eip !11
  store i64 %126, i64* %R10, !mcsema_real_eip !11
  %127 = load i64* %R11_val, !mcsema_real_eip !11
  store i64 %127, i64* %R11, !mcsema_real_eip !11
  %128 = load i64* %R12_val, !mcsema_real_eip !11
  store i64 %128, i64* %R12, !mcsema_real_eip !11
  %129 = load i64* %R13_val, !mcsema_real_eip !11
  store i64 %129, i64* %R13, !mcsema_real_eip !11
  %130 = load i64* %R14_val, !mcsema_real_eip !11
  store i64 %130, i64* %R14, !mcsema_real_eip !11
  %131 = load i64* %R15_val, !mcsema_real_eip !11
  store i64 %131, i64* %R15, !mcsema_real_eip !11
  %132 = load i64* %RIP_val, !mcsema_real_eip !11
  store i64 %132, i64* %RIP, !mcsema_real_eip !11
  %133 = load i1* %CF_val, !mcsema_real_eip !11
  store i1 %133, i1* %CF, align 1, !mcsema_real_eip !11
  %134 = load i1* %PF_val, !mcsema_real_eip !11
  store i1 %134, i1* %PF, align 1, !mcsema_real_eip !11
  %135 = load i1* %AF_val, !mcsema_real_eip !11
  store i1 %135, i1* %AF, align 1, !mcsema_real_eip !11
  %136 = load i1* %ZF_val, !mcsema_real_eip !11
  store i1 %136, i1* %ZF, align 1, !mcsema_real_eip !11
  %137 = load i1* %SF_val, !mcsema_real_eip !11
  store i1 %137, i1* %SF, align 1, !mcsema_real_eip !11
  %138 = load i1* %OF_val, !mcsema_real_eip !11
  store i1 %138, i1* %OF, align 1, !mcsema_real_eip !11
  %139 = load i1* %DF_val, !mcsema_real_eip !11
  store i1 %139, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  %140 = load i1* %FPU_B_val, !mcsema_real_eip !11
  store i1 %140, i1* %FPU_B, align 1, !mcsema_real_eip !11
  %141 = load i1* %FPU_C3_val, !mcsema_real_eip !11
  store i1 %141, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  %142 = load i3* %FPU_TOP_val, !mcsema_real_eip !11
  store i3 %142, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  %143 = load i1* %FPU_C2_val, !mcsema_real_eip !11
  store i1 %143, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  %144 = load i1* %FPU_C1_val, !mcsema_real_eip !11
  store i1 %144, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  %145 = load i1* %FPU_C0_val, !mcsema_real_eip !11
  store i1 %145, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  %146 = load i1* %FPU_ES_val, !mcsema_real_eip !11
  store i1 %146, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  %147 = load i1* %FPU_SF_val, !mcsema_real_eip !11
  store i1 %147, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  %148 = load i1* %FPU_PE_val, !mcsema_real_eip !11
  store i1 %148, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  %149 = load i1* %FPU_UE_val, !mcsema_real_eip !11
  store i1 %149, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  %150 = load i1* %FPU_OE_val, !mcsema_real_eip !11
  store i1 %150, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  %151 = load i1* %FPU_ZE_val, !mcsema_real_eip !11
  store i1 %151, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  %152 = load i1* %FPU_DE_val, !mcsema_real_eip !11
  store i1 %152, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  %153 = load i1* %FPU_IE_val, !mcsema_real_eip !11
  store i1 %153, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  %154 = load i1* %FPU_X_val, !mcsema_real_eip !11
  store i1 %154, i1* %FPU_X, align 1, !mcsema_real_eip !11
  %155 = load i2* %FPU_RC_val, !mcsema_real_eip !11
  store i2 %155, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  %156 = load i2* %FPU_PC_val, !mcsema_real_eip !11
  store i2 %156, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  %157 = load i1* %FPU_PM_val, !mcsema_real_eip !11
  store i1 %157, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  %158 = load i1* %FPU_UM_val, !mcsema_real_eip !11
  store i1 %158, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  %159 = load i1* %FPU_OM_val, !mcsema_real_eip !11
  store i1 %159, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  %160 = load i1* %FPU_ZM_val, !mcsema_real_eip !11
  store i1 %160, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  %161 = load i1* %FPU_DM_val, !mcsema_real_eip !11
  store i1 %161, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  %162 = load i1* %FPU_IM_val, !mcsema_real_eip !11
  store i1 %162, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  %163 = load i64* %53, align 4
  store i64 %163, i64* %52, align 4
  %164 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !11
  store i16 %164, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  %165 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !11
  store i64 %165, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  %166 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !11
  store i16 %166, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  %167 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !11
  store i64 %167, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  %168 = load i128* %XMM0_val, !mcsema_real_eip !11
  store i128 %168, i128* %XMM0, align 1, !mcsema_real_eip !11
  %169 = load i128* %XMM1_val, !mcsema_real_eip !11
  store i128 %169, i128* %XMM1, align 1, !mcsema_real_eip !11
  %170 = load i128* %XMM2_val, !mcsema_real_eip !11
  store i128 %170, i128* %XMM2, align 1, !mcsema_real_eip !11
  %171 = load i128* %XMM3_val, !mcsema_real_eip !11
  store i128 %171, i128* %XMM3, align 1, !mcsema_real_eip !11
  %172 = load i128* %XMM4_val, !mcsema_real_eip !11
  store i128 %172, i128* %XMM4, align 1, !mcsema_real_eip !11
  %173 = load i128* %XMM5_val, !mcsema_real_eip !11
  store i128 %173, i128* %XMM5, align 1, !mcsema_real_eip !11
  %174 = load i128* %XMM6_val, !mcsema_real_eip !11
  store i128 %174, i128* %XMM6, align 1, !mcsema_real_eip !11
  %175 = load i128* %XMM7_val, !mcsema_real_eip !11
  store i128 %175, i128* %XMM7, align 1, !mcsema_real_eip !11
  %176 = load i128* %XMM8_val, !mcsema_real_eip !11
  store i128 %176, i128* %XMM8, align 1, !mcsema_real_eip !11
  %177 = load i128* %XMM9_val, !mcsema_real_eip !11
  store i128 %177, i128* %XMM9, align 1, !mcsema_real_eip !11
  %178 = load i128* %XMM10_val, !mcsema_real_eip !11
  store i128 %178, i128* %XMM10, align 1, !mcsema_real_eip !11
  %179 = load i128* %XMM11_val, !mcsema_real_eip !11
  store i128 %179, i128* %XMM11, align 1, !mcsema_real_eip !11
  %180 = load i128* %XMM12_val, !mcsema_real_eip !11
  store i128 %180, i128* %XMM12, align 1, !mcsema_real_eip !11
  %181 = load i128* %XMM13_val, !mcsema_real_eip !11
  store i128 %181, i128* %XMM13, align 1, !mcsema_real_eip !11
  %182 = load i128* %XMM14_val, !mcsema_real_eip !11
  store i128 %182, i128* %XMM14, align 1, !mcsema_real_eip !11
  %183 = load i128* %XMM15_val, !mcsema_real_eip !11
  store i128 %183, i128* %XMM15, align 1, !mcsema_real_eip !11
  %184 = load i64* %STACK_BASE_val, !mcsema_real_eip !11
  store i64 %184, i64* %STACK_BASE, align 1, !mcsema_real_eip !11
  %185 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !11
  store i64 %185, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !11
  tail call x86_64_sysvcc void @sub_27(%struct.regs* %0), !mcsema_real_eip !11
  %186 = load i64* %RAX, !mcsema_real_eip !11
  store i64 %186, i64* %RAX_val, !mcsema_real_eip !11
  %187 = load i64* %RBX, !mcsema_real_eip !11
  store i64 %187, i64* %RBX_val, !mcsema_real_eip !11
  %188 = load i64* %RCX, !mcsema_real_eip !11
  store i64 %188, i64* %RCX_val, !mcsema_real_eip !11
  %189 = load i64* %RDX, !mcsema_real_eip !11
  store i64 %189, i64* %RDX_val, !mcsema_real_eip !11
  %190 = load i64* %RSI, !mcsema_real_eip !11
  store i64 %190, i64* %RSI_val, !mcsema_real_eip !11
  %191 = load i64* %RDI, !mcsema_real_eip !11
  store i64 %191, i64* %RDI_val, !mcsema_real_eip !11
  %192 = load i64* %RSP, !mcsema_real_eip !11
  store i64 %192, i64* %RSP_val, !mcsema_real_eip !11
  %193 = load i64* %RBP, !mcsema_real_eip !11
  store i64 %193, i64* %RBP_val, !mcsema_real_eip !11
  %194 = load i64* %R8, !mcsema_real_eip !11
  store i64 %194, i64* %R8_val, !mcsema_real_eip !11
  %195 = load i64* %R9, !mcsema_real_eip !11
  store i64 %195, i64* %R9_val, !mcsema_real_eip !11
  %196 = load i64* %R10, !mcsema_real_eip !11
  store i64 %196, i64* %R10_val, !mcsema_real_eip !11
  %197 = load i64* %R11, !mcsema_real_eip !11
  store i64 %197, i64* %R11_val, !mcsema_real_eip !11
  %198 = load i64* %R12, !mcsema_real_eip !11
  store i64 %198, i64* %R12_val, !mcsema_real_eip !11
  %199 = load i64* %R13, !mcsema_real_eip !11
  store i64 %199, i64* %R13_val, !mcsema_real_eip !11
  %200 = load i64* %R14, !mcsema_real_eip !11
  store i64 %200, i64* %R14_val, !mcsema_real_eip !11
  %201 = load i64* %R15, !mcsema_real_eip !11
  store i64 %201, i64* %R15_val, !mcsema_real_eip !11
  %202 = load i64* %RIP, !mcsema_real_eip !11
  store i64 %202, i64* %RIP_val, !mcsema_real_eip !11
  %203 = load i1* %CF, align 1, !mcsema_real_eip !11
  store i1 %203, i1* %CF_val, !mcsema_real_eip !11
  %204 = load i1* %PF, align 1, !mcsema_real_eip !11
  store i1 %204, i1* %PF_val, !mcsema_real_eip !11
  %205 = load i1* %AF, align 1, !mcsema_real_eip !11
  store i1 %205, i1* %AF_val, !mcsema_real_eip !11
  %206 = load i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 %206, i1* %ZF_val, !mcsema_real_eip !11
  %207 = load i1* %SF, align 1, !mcsema_real_eip !11
  store i1 %207, i1* %SF_val, !mcsema_real_eip !11
  %208 = load i1* %OF, align 1, !mcsema_real_eip !11
  store i1 %208, i1* %OF_val, !mcsema_real_eip !11
  %209 = load i1* %DF, align 1, !mcsema_real_eip !11
  store i1 %209, i1* %DF_val, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !11
  %210 = load i1* %FPU_B, align 1, !mcsema_real_eip !11
  store i1 %210, i1* %FPU_B_val, !mcsema_real_eip !11
  %211 = load i1* %FPU_C3, align 1, !mcsema_real_eip !11
  store i1 %211, i1* %FPU_C3_val, !mcsema_real_eip !11
  %212 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  store i3 %212, i3* %FPU_TOP_val, !mcsema_real_eip !11
  %213 = load i1* %FPU_C2, align 1, !mcsema_real_eip !11
  store i1 %213, i1* %FPU_C2_val, !mcsema_real_eip !11
  %214 = load i1* %FPU_C1, align 1, !mcsema_real_eip !11
  store i1 %214, i1* %FPU_C1_val, !mcsema_real_eip !11
  %215 = load i1* %FPU_C0, align 1, !mcsema_real_eip !11
  store i1 %215, i1* %FPU_C0_val, !mcsema_real_eip !11
  %216 = load i1* %FPU_ES, align 1, !mcsema_real_eip !11
  store i1 %216, i1* %FPU_ES_val, !mcsema_real_eip !11
  %217 = load i1* %FPU_SF, align 1, !mcsema_real_eip !11
  store i1 %217, i1* %FPU_SF_val, !mcsema_real_eip !11
  %218 = load i1* %FPU_PE, align 1, !mcsema_real_eip !11
  store i1 %218, i1* %FPU_PE_val, !mcsema_real_eip !11
  %219 = load i1* %FPU_UE, align 1, !mcsema_real_eip !11
  store i1 %219, i1* %FPU_UE_val, !mcsema_real_eip !11
  %220 = load i1* %FPU_OE, align 1, !mcsema_real_eip !11
  store i1 %220, i1* %FPU_OE_val, !mcsema_real_eip !11
  %221 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  store i1 %221, i1* %FPU_ZE_val, !mcsema_real_eip !11
  %222 = load i1* %FPU_DE, align 1, !mcsema_real_eip !11
  store i1 %222, i1* %FPU_DE_val, !mcsema_real_eip !11
  %223 = load i1* %FPU_IE, align 1, !mcsema_real_eip !11
  store i1 %223, i1* %FPU_IE_val, !mcsema_real_eip !11
  %224 = load i1* %FPU_X, align 1, !mcsema_real_eip !11
  store i1 %224, i1* %FPU_X_val, !mcsema_real_eip !11
  %225 = load i2* %FPU_RC, align 1, !mcsema_real_eip !11
  store i2 %225, i2* %FPU_RC_val, !mcsema_real_eip !11
  %226 = load i2* %FPU_PC, align 1, !mcsema_real_eip !11
  store i2 %226, i2* %FPU_PC_val, !mcsema_real_eip !11
  %227 = load i1* %FPU_PM, align 1, !mcsema_real_eip !11
  store i1 %227, i1* %FPU_PM_val, !mcsema_real_eip !11
  %228 = load i1* %FPU_UM, align 1, !mcsema_real_eip !11
  store i1 %228, i1* %FPU_UM_val, !mcsema_real_eip !11
  %229 = load i1* %FPU_OM, align 1, !mcsema_real_eip !11
  store i1 %229, i1* %FPU_OM_val, !mcsema_real_eip !11
  %230 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  store i1 %230, i1* %FPU_ZM_val, !mcsema_real_eip !11
  %231 = load i1* %FPU_DM, align 1, !mcsema_real_eip !11
  store i1 %231, i1* %FPU_DM_val, !mcsema_real_eip !11
  %232 = load i1* %FPU_IM, align 1, !mcsema_real_eip !11
  store i1 %232, i1* %FPU_IM_val, !mcsema_real_eip !11
  %233 = load i64* %52, align 4
  store i64 %233, i64* %53, align 4
  %234 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  store i16 %234, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !11
  %235 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !11
  store i64 %235, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !11
  %236 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  store i16 %236, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !11
  %237 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !11
  store i64 %237, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !11
  %238 = load i128* %XMM0, align 1, !mcsema_real_eip !11
  store i128 %238, i128* %XMM0_val, !mcsema_real_eip !11
  %239 = load i128* %XMM1, align 1, !mcsema_real_eip !11
  store i128 %239, i128* %XMM1_val, !mcsema_real_eip !11
  %240 = load i128* %XMM2, align 1, !mcsema_real_eip !11
  store i128 %240, i128* %XMM2_val, !mcsema_real_eip !11
  %241 = load i128* %XMM3, align 1, !mcsema_real_eip !11
  store i128 %241, i128* %XMM3_val, !mcsema_real_eip !11
  %242 = load i128* %XMM4, align 1, !mcsema_real_eip !11
  store i128 %242, i128* %XMM4_val, !mcsema_real_eip !11
  %243 = load i128* %XMM5, align 1, !mcsema_real_eip !11
  store i128 %243, i128* %XMM5_val, !mcsema_real_eip !11
  %244 = load i128* %XMM6, align 1, !mcsema_real_eip !11
  store i128 %244, i128* %XMM6_val, !mcsema_real_eip !11
  %245 = load i128* %XMM7, align 1, !mcsema_real_eip !11
  store i128 %245, i128* %XMM7_val, !mcsema_real_eip !11
  %246 = load i128* %XMM8, align 1, !mcsema_real_eip !11
  store i128 %246, i128* %XMM8_val, !mcsema_real_eip !11
  %247 = load i128* %XMM9, align 1, !mcsema_real_eip !11
  store i128 %247, i128* %XMM9_val, !mcsema_real_eip !11
  %248 = load i128* %XMM10, align 1, !mcsema_real_eip !11
  store i128 %248, i128* %XMM10_val, !mcsema_real_eip !11
  %249 = load i128* %XMM11, align 1, !mcsema_real_eip !11
  store i128 %249, i128* %XMM11_val, !mcsema_real_eip !11
  %250 = load i128* %XMM12, align 1, !mcsema_real_eip !11
  store i128 %250, i128* %XMM12_val, !mcsema_real_eip !11
  %251 = load i128* %XMM13, align 1, !mcsema_real_eip !11
  store i128 %251, i128* %XMM13_val, !mcsema_real_eip !11
  %252 = load i128* %XMM14, align 1, !mcsema_real_eip !11
  store i128 %252, i128* %XMM14_val, !mcsema_real_eip !11
  %253 = load i128* %XMM15, align 1, !mcsema_real_eip !11
  store i128 %253, i128* %XMM15_val, !mcsema_real_eip !11
  %254 = load i64* %STACK_BASE, !mcsema_real_eip !11
  store i64 %254, i64* %STACK_BASE_val, !mcsema_real_eip !11
  %255 = load i64* %STACK_LIMIT, !mcsema_real_eip !11
  store i64 %255, i64* %STACK_LIMIT_val, !mcsema_real_eip !11
  store i64 0, i64* %RAX_val, !mcsema_real_eip !12
  %256 = load i64* %RBP_val, !mcsema_real_eip !13
  store i64 %256, i64* %RSP_val, !mcsema_real_eip !13
  %257 = inttoptr i64 %256 to i64*, !mcsema_real_eip !13
  %258 = load i64* %257, !mcsema_real_eip !13
  store i64 %258, i64* %RBP_val, !mcsema_real_eip !13
  %259 = add i64 %256, 16, !mcsema_real_eip !14
  store i64 %259, i64* %RSP_val, !mcsema_real_eip !14
  %260 = load i64* %RAX_val, !mcsema_real_eip !14
  store i64 %260, i64* %RAX, !mcsema_real_eip !14
  %261 = load i64* %RBX_val, !mcsema_real_eip !14
  store i64 %261, i64* %RBX, !mcsema_real_eip !14
  %262 = load i64* %RCX_val, !mcsema_real_eip !14
  store i64 %262, i64* %RCX, !mcsema_real_eip !14
  %263 = load i64* %RDX_val, !mcsema_real_eip !14
  store i64 %263, i64* %RDX, !mcsema_real_eip !14
  %264 = load i64* %RSI_val, !mcsema_real_eip !14
  store i64 %264, i64* %RSI, !mcsema_real_eip !14
  %265 = load i64* %RDI_val, !mcsema_real_eip !14
  store i64 %265, i64* %RDI, !mcsema_real_eip !14
  %266 = load i64* %RSP_val, !mcsema_real_eip !14
  store i64 %266, i64* %RSP, !mcsema_real_eip !14
  %267 = load i64* %RBP_val, !mcsema_real_eip !14
  store i64 %267, i64* %RBP, !mcsema_real_eip !14
  %268 = load i64* %R8_val, !mcsema_real_eip !14
  store i64 %268, i64* %R8, !mcsema_real_eip !14
  %269 = load i64* %R9_val, !mcsema_real_eip !14
  store i64 %269, i64* %R9, !mcsema_real_eip !14
  %270 = load i64* %R10_val, !mcsema_real_eip !14
  store i64 %270, i64* %R10, !mcsema_real_eip !14
  %271 = load i64* %R11_val, !mcsema_real_eip !14
  store i64 %271, i64* %R11, !mcsema_real_eip !14
  %272 = load i64* %R12_val, !mcsema_real_eip !14
  store i64 %272, i64* %R12, !mcsema_real_eip !14
  %273 = load i64* %R13_val, !mcsema_real_eip !14
  store i64 %273, i64* %R13, !mcsema_real_eip !14
  %274 = load i64* %R14_val, !mcsema_real_eip !14
  store i64 %274, i64* %R14, !mcsema_real_eip !14
  %275 = load i64* %R15_val, !mcsema_real_eip !14
  store i64 %275, i64* %R15, !mcsema_real_eip !14
  %276 = load i64* %RIP_val, !mcsema_real_eip !14
  store i64 %276, i64* %RIP, !mcsema_real_eip !14
  %277 = load i1* %CF_val, !mcsema_real_eip !14
  store i1 %277, i1* %CF, align 1, !mcsema_real_eip !14
  %278 = load i1* %PF_val, !mcsema_real_eip !14
  store i1 %278, i1* %PF, align 1, !mcsema_real_eip !14
  %279 = load i1* %AF_val, !mcsema_real_eip !14
  store i1 %279, i1* %AF, align 1, !mcsema_real_eip !14
  %280 = load i1* %ZF_val, !mcsema_real_eip !14
  store i1 %280, i1* %ZF, align 1, !mcsema_real_eip !14
  %281 = load i1* %SF_val, !mcsema_real_eip !14
  store i1 %281, i1* %SF, align 1, !mcsema_real_eip !14
  %282 = load i1* %OF_val, !mcsema_real_eip !14
  store i1 %282, i1* %OF, align 1, !mcsema_real_eip !14
  %283 = load i1* %DF_val, !mcsema_real_eip !14
  store i1 %283, i1* %DF, align 1, !mcsema_real_eip !14
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !14
  %284 = load i1* %FPU_B_val, !mcsema_real_eip !14
  store i1 %284, i1* %FPU_B, align 1, !mcsema_real_eip !14
  %285 = load i1* %FPU_C3_val, !mcsema_real_eip !14
  store i1 %285, i1* %FPU_C3, align 1, !mcsema_real_eip !14
  %286 = load i3* %FPU_TOP_val, !mcsema_real_eip !14
  store i3 %286, i3* %FPU_TOP, align 1, !mcsema_real_eip !14
  %287 = load i1* %FPU_C2_val, !mcsema_real_eip !14
  store i1 %287, i1* %FPU_C2, align 1, !mcsema_real_eip !14
  %288 = load i1* %FPU_C1_val, !mcsema_real_eip !14
  store i1 %288, i1* %FPU_C1, align 1, !mcsema_real_eip !14
  %289 = load i1* %FPU_C0_val, !mcsema_real_eip !14
  store i1 %289, i1* %FPU_C0, align 1, !mcsema_real_eip !14
  %290 = load i1* %FPU_ES_val, !mcsema_real_eip !14
  store i1 %290, i1* %FPU_ES, align 1, !mcsema_real_eip !14
  %291 = load i1* %FPU_SF_val, !mcsema_real_eip !14
  store i1 %291, i1* %FPU_SF, align 1, !mcsema_real_eip !14
  %292 = load i1* %FPU_PE_val, !mcsema_real_eip !14
  store i1 %292, i1* %FPU_PE, align 1, !mcsema_real_eip !14
  %293 = load i1* %FPU_UE_val, !mcsema_real_eip !14
  store i1 %293, i1* %FPU_UE, align 1, !mcsema_real_eip !14
  %294 = load i1* %FPU_OE_val, !mcsema_real_eip !14
  store i1 %294, i1* %FPU_OE, align 1, !mcsema_real_eip !14
  %295 = load i1* %FPU_ZE_val, !mcsema_real_eip !14
  store i1 %295, i1* %FPU_ZE, align 1, !mcsema_real_eip !14
  %296 = load i1* %FPU_DE_val, !mcsema_real_eip !14
  store i1 %296, i1* %FPU_DE, align 1, !mcsema_real_eip !14
  %297 = load i1* %FPU_IE_val, !mcsema_real_eip !14
  store i1 %297, i1* %FPU_IE, align 1, !mcsema_real_eip !14
  %298 = load i1* %FPU_X_val, !mcsema_real_eip !14
  store i1 %298, i1* %FPU_X, align 1, !mcsema_real_eip !14
  %299 = load i2* %FPU_RC_val, !mcsema_real_eip !14
  store i2 %299, i2* %FPU_RC, align 1, !mcsema_real_eip !14
  %300 = load i2* %FPU_PC_val, !mcsema_real_eip !14
  store i2 %300, i2* %FPU_PC, align 1, !mcsema_real_eip !14
  %301 = load i1* %FPU_PM_val, !mcsema_real_eip !14
  store i1 %301, i1* %FPU_PM, align 1, !mcsema_real_eip !14
  %302 = load i1* %FPU_UM_val, !mcsema_real_eip !14
  store i1 %302, i1* %FPU_UM, align 1, !mcsema_real_eip !14
  %303 = load i1* %FPU_OM_val, !mcsema_real_eip !14
  store i1 %303, i1* %FPU_OM, align 1, !mcsema_real_eip !14
  %304 = load i1* %FPU_ZM_val, !mcsema_real_eip !14
  store i1 %304, i1* %FPU_ZM, align 1, !mcsema_real_eip !14
  %305 = load i1* %FPU_DM_val, !mcsema_real_eip !14
  store i1 %305, i1* %FPU_DM, align 1, !mcsema_real_eip !14
  %306 = load i1* %FPU_IM_val, !mcsema_real_eip !14
  store i1 %306, i1* %FPU_IM, align 1, !mcsema_real_eip !14
  %307 = load i64* %53, align 4
  store i64 %307, i64* %52, align 4
  %308 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !14
  store i16 %308, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !14
  %309 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !14
  store i64 %309, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !14
  %310 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !14
  store i16 %310, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !14
  %311 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !14
  store i64 %311, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !14
  %312 = load i128* %XMM0_val, !mcsema_real_eip !14
  store i128 %312, i128* %XMM0, align 1, !mcsema_real_eip !14
  %313 = load i128* %XMM1_val, !mcsema_real_eip !14
  store i128 %313, i128* %XMM1, align 1, !mcsema_real_eip !14
  %314 = load i128* %XMM2_val, !mcsema_real_eip !14
  store i128 %314, i128* %XMM2, align 1, !mcsema_real_eip !14
  %315 = load i128* %XMM3_val, !mcsema_real_eip !14
  store i128 %315, i128* %XMM3, align 1, !mcsema_real_eip !14
  %316 = load i128* %XMM4_val, !mcsema_real_eip !14
  store i128 %316, i128* %XMM4, align 1, !mcsema_real_eip !14
  %317 = load i128* %XMM5_val, !mcsema_real_eip !14
  store i128 %317, i128* %XMM5, align 1, !mcsema_real_eip !14
  %318 = load i128* %XMM6_val, !mcsema_real_eip !14
  store i128 %318, i128* %XMM6, align 1, !mcsema_real_eip !14
  %319 = load i128* %XMM7_val, !mcsema_real_eip !14
  store i128 %319, i128* %XMM7, align 1, !mcsema_real_eip !14
  %320 = load i128* %XMM8_val, !mcsema_real_eip !14
  store i128 %320, i128* %XMM8, align 1, !mcsema_real_eip !14
  %321 = load i128* %XMM9_val, !mcsema_real_eip !14
  store i128 %321, i128* %XMM9, align 1, !mcsema_real_eip !14
  %322 = load i128* %XMM10_val, !mcsema_real_eip !14
  store i128 %322, i128* %XMM10, align 1, !mcsema_real_eip !14
  %323 = load i128* %XMM11_val, !mcsema_real_eip !14
  store i128 %323, i128* %XMM11, align 1, !mcsema_real_eip !14
  %324 = load i128* %XMM12_val, !mcsema_real_eip !14
  store i128 %324, i128* %XMM12, align 1, !mcsema_real_eip !14
  %325 = load i128* %XMM13_val, !mcsema_real_eip !14
  store i128 %325, i128* %XMM13, align 1, !mcsema_real_eip !14
  %326 = load i128* %XMM14_val, !mcsema_real_eip !14
  store i128 %326, i128* %XMM14, align 1, !mcsema_real_eip !14
  %327 = load i128* %XMM15_val, !mcsema_real_eip !14
  store i128 %327, i128* %XMM15, align 1, !mcsema_real_eip !14
  %328 = load i64* %STACK_BASE_val, !mcsema_real_eip !14
  store i64 %328, i64* %STACK_BASE, align 1, !mcsema_real_eip !14
  %329 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !14
  store i64 %329, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !14
  ret void, !mcsema_real_eip !14
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_27(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !15
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !15
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !15
  %XMM15_val = alloca i128, !mcsema_real_eip !15
  %XMM14_val = alloca i128, !mcsema_real_eip !15
  %XMM13_val = alloca i128, !mcsema_real_eip !15
  %XMM12_val = alloca i128, !mcsema_real_eip !15
  %XMM11_val = alloca i128, !mcsema_real_eip !15
  %XMM10_val = alloca i128, !mcsema_real_eip !15
  %XMM9_val = alloca i128, !mcsema_real_eip !15
  %XMM8_val = alloca i128, !mcsema_real_eip !15
  %XMM7_val = alloca i128, !mcsema_real_eip !15
  %XMM6_val = alloca i128, !mcsema_real_eip !15
  %XMM5_val = alloca i128, !mcsema_real_eip !15
  %XMM4_val = alloca i128, !mcsema_real_eip !15
  %XMM3_val = alloca i128, !mcsema_real_eip !15
  %XMM2_val = alloca i128, !mcsema_real_eip !15
  %XMM1_val = alloca i128, !mcsema_real_eip !15
  %XMM0_val = alloca i128, !mcsema_real_eip !15
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !15
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !15
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !15
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !15
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !15
  %FPU_IM_val = alloca i1, !mcsema_real_eip !15
  %FPU_DM_val = alloca i1, !mcsema_real_eip !15
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !15
  %FPU_OM_val = alloca i1, !mcsema_real_eip !15
  %FPU_UM_val = alloca i1, !mcsema_real_eip !15
  %FPU_PM_val = alloca i1, !mcsema_real_eip !15
  %FPU_PC_val = alloca i2, !mcsema_real_eip !15
  %FPU_RC_val = alloca i2, !mcsema_real_eip !15
  %FPU_X_val = alloca i1, !mcsema_real_eip !15
  %FPU_IE_val = alloca i1, !mcsema_real_eip !15
  %FPU_DE_val = alloca i1, !mcsema_real_eip !15
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !15
  %FPU_OE_val = alloca i1, !mcsema_real_eip !15
  %FPU_UE_val = alloca i1, !mcsema_real_eip !15
  %FPU_PE_val = alloca i1, !mcsema_real_eip !15
  %FPU_SF_val = alloca i1, !mcsema_real_eip !15
  %FPU_ES_val = alloca i1, !mcsema_real_eip !15
  %FPU_C0_val = alloca i1, !mcsema_real_eip !15
  %FPU_C1_val = alloca i1, !mcsema_real_eip !15
  %FPU_C2_val = alloca i1, !mcsema_real_eip !15
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !15
  %FPU_C3_val = alloca i1, !mcsema_real_eip !15
  %FPU_B_val = alloca i1, !mcsema_real_eip !15
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !15
  %DF_val = alloca i1, !mcsema_real_eip !15
  %OF_val = alloca i1, !mcsema_real_eip !15
  %SF_val = alloca i1, !mcsema_real_eip !15
  %CF_val = alloca i1, !mcsema_real_eip !15
  %AF_val = alloca i1, !mcsema_real_eip !15
  %PF_val = alloca i1, !mcsema_real_eip !15
  %ZF_val = alloca i1, !mcsema_real_eip !15
  %RIP_val = alloca i64, !mcsema_real_eip !15
  %R14_val = alloca i64, !mcsema_real_eip !15
  %R13_val = alloca i64, !mcsema_real_eip !15
  %R12_val = alloca i64, !mcsema_real_eip !15
  %R11_val = alloca i64, !mcsema_real_eip !15
  %R10_val = alloca i64, !mcsema_real_eip !15
  %R9_val = alloca i64, !mcsema_real_eip !15
  %R8_val = alloca i64, !mcsema_real_eip !15
  %RSP_val = alloca i64, !mcsema_real_eip !15
  %RBP_val = alloca i64, !mcsema_real_eip !15
  %RDI_val = alloca i64, !mcsema_real_eip !15
  %RSI_val = alloca i64, !mcsema_real_eip !15
  %RDX_val = alloca i64, !mcsema_real_eip !15
  %RCX_val = alloca i64, !mcsema_real_eip !15
  %RBX_val = alloca i64, !mcsema_real_eip !15
  %RAX_val = alloca i64, !mcsema_real_eip !15
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !15
  %1 = load i64* %RAX, !mcsema_real_eip !15
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !15
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !15
  %2 = load i64* %RBX, !mcsema_real_eip !15
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !15
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !15
  %3 = load i64* %RCX, !mcsema_real_eip !15
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !15
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !15
  %4 = load i64* %RDX, !mcsema_real_eip !15
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !15
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !15
  %5 = load i64* %RSI, !mcsema_real_eip !15
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !15
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !15
  %6 = load i64* %RDI, !mcsema_real_eip !15
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !15
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !15
  %7 = load i64* %RSP, !mcsema_real_eip !15
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !15
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !15
  %8 = load i64* %RBP, !mcsema_real_eip !15
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !15
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !15
  %9 = load i64* %R8, !mcsema_real_eip !15
  store i64 %9, i64* %R8_val, !mcsema_real_eip !15
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !15
  %10 = load i64* %R9, !mcsema_real_eip !15
  store i64 %10, i64* %R9_val, !mcsema_real_eip !15
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !15
  %11 = load i64* %R10, !mcsema_real_eip !15
  store i64 %11, i64* %R10_val, !mcsema_real_eip !15
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !15
  %12 = load i64* %R11, !mcsema_real_eip !15
  store i64 %12, i64* %R11_val, !mcsema_real_eip !15
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !15
  %13 = load i64* %R12, !mcsema_real_eip !15
  store i64 %13, i64* %R12_val, !mcsema_real_eip !15
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !15
  %14 = load i64* %R13, !mcsema_real_eip !15
  store i64 %14, i64* %R13_val, !mcsema_real_eip !15
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !15
  %15 = load i64* %R14, !mcsema_real_eip !15
  store i64 %15, i64* %R14_val, !mcsema_real_eip !15
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !15
  %16 = load i64* %R15, !mcsema_real_eip !15
  store i64 %16, i64* %R15_val, !mcsema_real_eip !15
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !15
  %17 = load i64* %RIP, !mcsema_real_eip !15
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !15
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !15
  %18 = load i1* %CF, align 1, !mcsema_real_eip !15
  store i1 %18, i1* %CF_val, !mcsema_real_eip !15
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !15
  %19 = load i1* %PF, align 1, !mcsema_real_eip !15
  store i1 %19, i1* %PF_val, !mcsema_real_eip !15
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !15
  %20 = load i1* %AF, align 1, !mcsema_real_eip !15
  store i1 %20, i1* %AF_val, !mcsema_real_eip !15
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !15
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !15
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !15
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !15
  %22 = load i1* %SF, align 1, !mcsema_real_eip !15
  store i1 %22, i1* %SF_val, !mcsema_real_eip !15
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !15
  %23 = load i1* %OF, align 1, !mcsema_real_eip !15
  store i1 %23, i1* %OF_val, !mcsema_real_eip !15
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !15
  %24 = load i1* %DF, align 1, !mcsema_real_eip !15
  store i1 %24, i1* %DF_val, !mcsema_real_eip !15
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !15
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !15
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !15
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !15
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !15
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !15
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !15
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !15
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !15
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !15
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !15
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !15
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !15
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !15
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !15
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !15
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !15
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !15
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !15
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !15
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !15
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !15
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !15
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !15
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !15
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !15
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !15
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !15
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !15
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !15
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !15
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !15
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !15
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !15
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !15
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !15
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !15
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !15
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !15
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !15
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !15
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !15
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !15
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !15
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !15
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !15
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !15
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !15
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !15
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !15
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !15
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !15
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !15
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !15
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !15
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !15
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !15
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !15
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !15
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !15
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !15
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !15
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !15
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !15
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !15
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !15
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !15
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !15
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !15
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !15
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !15
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !15
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !15
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !15
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !15
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !15
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !15
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !15
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !15
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !15
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !15
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !15
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !15
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !15
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !15
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !15
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !15
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !15
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !15
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !15
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !15
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !15
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !15
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !15
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !15
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !15
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !15
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !15
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !15
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !15
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !15
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !15
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !15
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !15
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !15
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !15
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !15
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !15
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !15
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !15
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !15
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !15
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !15
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !15
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !15
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !15
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !15
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !15
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !15
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !15
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !15
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !15
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !15
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !15
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !15
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !15
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !15
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !15
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !15
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !15
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !15
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !15
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !15
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !15
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !15
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !15
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !15
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !15
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !15
  %77 = load i64* %RBP_val, !mcsema_real_eip !15
  %78 = load i64* %RSP_val, !mcsema_real_eip !15
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !15
  store i64 %77, i64* %80, !mcsema_real_eip !15
  store i64 %79, i64* %RSP_val, !mcsema_real_eip !15
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !16
  %81 = load i64* %RCX_val, !mcsema_real_eip !17
  %82 = and i64 %81, 4294967295
  store i64 %82, i64* %RAX_val, !mcsema_real_eip !17
  %83 = add i64 %78, -56, !mcsema_real_eip !18
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !18
  %85 = load i64* %RDI_val, !mcsema_real_eip !18
  store i64 %85, i64* %84, !mcsema_real_eip !18
  %86 = load i64* %RBP_val, !mcsema_real_eip !19
  %87 = add i64 %86, -40, !mcsema_real_eip !19
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !19
  %89 = load i64* %RSI_val, !mcsema_real_eip !19
  %90 = trunc i64 %89 to i32, !mcsema_real_eip !19
  %91 = bitcast i64* %88 to i32*
  store i32 %90, i32* %91, !mcsema_real_eip !19
  %92 = load i64* %RBP_val, !mcsema_real_eip !20
  %93 = add i64 %92, -64, !mcsema_real_eip !20
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !20
  %95 = load i64* %RDX_val, !mcsema_real_eip !20
  store i64 %95, i64* %94, !mcsema_real_eip !20
  %96 = load i64* %RBP_val, !mcsema_real_eip !21
  %97 = add i64 %96, -56, !mcsema_real_eip !21
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !21
  %99 = load i64* %RAX_val, !mcsema_real_eip !21
  %100 = trunc i64 %99 to i32, !mcsema_real_eip !21
  %101 = bitcast i64* %98 to i32*
  store i32 %100, i32* %101, !mcsema_real_eip !21
  %102 = load i64* %RBP_val, !mcsema_real_eip !22
  %103 = add i64 %102, -64, !mcsema_real_eip !22
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !22
  %105 = bitcast i64* %104 to i32*
  %106 = load i32* %105, !mcsema_real_eip !22
  %107 = zext i32 %106 to i64, !mcsema_real_eip !22
  store i64 %107, i64* %RDX_val, !mcsema_real_eip !22
  %108 = load i64* %RBP_val, !mcsema_real_eip !23
  %109 = add i64 %108, -48, !mcsema_real_eip !23
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !23
  %111 = bitcast i64* %110 to i32*
  %112 = load i32* %111, !mcsema_real_eip !23
  %113 = zext i32 %112 to i64, !mcsema_real_eip !23
  store i64 %113, i64* %RAX_val, !mcsema_real_eip !23
  %114 = load i64* %RDX_val, !mcsema_real_eip !24
  %115 = trunc i64 %114 to i32, !mcsema_real_eip !24
  %116 = sub i32 %115, %112, !mcsema_real_eip !24
  %117 = xor i32 %116, %115, !mcsema_real_eip !24
  %118 = xor i32 %117, %112, !mcsema_real_eip !24
  %119 = and i32 %118, 16, !mcsema_real_eip !24
  %120 = icmp ne i32 %119, 0, !mcsema_real_eip !24
  store i1 %120, i1* %AF_val, !mcsema_real_eip !24
  %121 = trunc i32 %116 to i8, !mcsema_real_eip !24
  %122 = tail call i8 @llvm.ctpop.i8(i8 %121), !mcsema_real_eip !24
  %123 = and i8 %122, 1
  %124 = icmp eq i8 %123, 0
  store i1 %124, i1* %PF_val, !mcsema_real_eip !24
  %125 = icmp eq i32 %115, %112
  store i1 %125, i1* %ZF_val, !mcsema_real_eip !24
  %126 = icmp slt i32 %116, 0
  store i1 %126, i1* %SF_val, !mcsema_real_eip !24
  %127 = icmp ult i32 %115, %112, !mcsema_real_eip !24
  store i1 %127, i1* %CF_val, !mcsema_real_eip !24
  %128 = xor i32 %115, %112, !mcsema_real_eip !24
  %129 = and i32 %117, %128, !mcsema_real_eip !24
  %130 = icmp slt i32 %129, 0
  store i1 %130, i1* %OF_val, !mcsema_real_eip !24
  %131 = load i1* %SF_val, !mcsema_real_eip !25
  %132 = xor i1 %131, %130
  %133 = load i1* %ZF_val, !mcsema_real_eip !25
  %134 = or i1 %133, %132, !mcsema_real_eip !25
  %135 = load i64* %RBP_val, !mcsema_real_eip !26
  br i1 %134, label %block_0x57, label %block_0x45, !mcsema_real_eip !25

block_0x57:                                       ; preds = %entry
  %136 = add i64 %135, -48, !mcsema_real_eip !26
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !26
  %138 = bitcast i64* %137 to i32*
  %139 = load i32* %138, !mcsema_real_eip !26
  %140 = zext i32 %139 to i64, !mcsema_real_eip !26
  store i64 %140, i64* %RDX_val, !mcsema_real_eip !26
  %141 = load i64* %RBP_val, !mcsema_real_eip !27
  %142 = add i64 %141, -64, !mcsema_real_eip !27
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !27
  %144 = bitcast i64* %143 to i32*
  %145 = load i32* %144, !mcsema_real_eip !27
  %146 = sub i32 %139, %145, !mcsema_real_eip !28
  %147 = xor i32 %146, %139, !mcsema_real_eip !28
  %148 = xor i32 %147, %145, !mcsema_real_eip !28
  %149 = and i32 %148, 16, !mcsema_real_eip !28
  %150 = icmp ne i32 %149, 0, !mcsema_real_eip !28
  store i1 %150, i1* %AF_val, !mcsema_real_eip !28
  %151 = trunc i32 %146 to i8, !mcsema_real_eip !28
  %152 = tail call i8 @llvm.ctpop.i8(i8 %151), !mcsema_real_eip !28
  %153 = and i8 %152, 1
  %154 = icmp eq i8 %153, 0
  store i1 %154, i1* %PF_val, !mcsema_real_eip !28
  %155 = icmp eq i32 %139, %145
  store i1 %155, i1* %ZF_val, !mcsema_real_eip !28
  %156 = icmp slt i32 %146, 0
  store i1 %156, i1* %SF_val, !mcsema_real_eip !28
  %157 = icmp ult i32 %139, %145, !mcsema_real_eip !28
  store i1 %157, i1* %CF_val, !mcsema_real_eip !28
  %158 = xor i32 %139, %145, !mcsema_real_eip !28
  %159 = and i32 %147, %158, !mcsema_real_eip !28
  %160 = icmp slt i32 %159, 0
  store i1 %160, i1* %OF_val, !mcsema_real_eip !28
  %161 = zext i32 %146 to i64, !mcsema_real_eip !28
  store i64 %161, i64* %RDX_val, !mcsema_real_eip !28
  store i64 %161, i64* %RAX_val, !mcsema_real_eip !29
  %162 = load i64* %RBP_val, !mcsema_real_eip !30
  %163 = add i64 %162, -32, !mcsema_real_eip !30
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !30
  %165 = bitcast i64* %164 to i32*
  store i32 %146, i32* %165, !mcsema_real_eip !30
  %166 = load i64* %RBP_val, !mcsema_real_eip !31
  %167 = add i64 %166, -60, !mcsema_real_eip !31
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !31
  %169 = bitcast i64* %168 to i32*
  %170 = load i32* %169, !mcsema_real_eip !31
  %171 = zext i32 %170 to i64, !mcsema_real_eip !31
  store i64 %171, i64* %RDX_val, !mcsema_real_eip !31
  %172 = load i64* %RBP_val, !mcsema_real_eip !32
  %173 = add i64 %172, -44, !mcsema_real_eip !32
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !32
  %175 = bitcast i64* %174 to i32*
  %176 = load i32* %175, !mcsema_real_eip !32
  %177 = zext i32 %176 to i64, !mcsema_real_eip !32
  store i64 %177, i64* %RAX_val, !mcsema_real_eip !32
  %178 = load i64* %RDX_val, !mcsema_real_eip !33
  %179 = trunc i64 %178 to i32, !mcsema_real_eip !33
  %180 = sub i32 %179, %176, !mcsema_real_eip !33
  %181 = xor i32 %180, %179, !mcsema_real_eip !33
  %182 = xor i32 %181, %176, !mcsema_real_eip !33
  %183 = and i32 %182, 16, !mcsema_real_eip !33
  %184 = icmp ne i32 %183, 0, !mcsema_real_eip !33
  store i1 %184, i1* %AF_val, !mcsema_real_eip !33
  %185 = trunc i32 %180 to i8, !mcsema_real_eip !33
  %186 = tail call i8 @llvm.ctpop.i8(i8 %185), !mcsema_real_eip !33
  %187 = and i8 %186, 1
  %188 = icmp eq i8 %187, 0
  store i1 %188, i1* %PF_val, !mcsema_real_eip !33
  %189 = icmp eq i32 %179, %176
  store i1 %189, i1* %ZF_val, !mcsema_real_eip !33
  %190 = icmp slt i32 %180, 0
  store i1 %190, i1* %SF_val, !mcsema_real_eip !33
  %191 = icmp ult i32 %179, %176, !mcsema_real_eip !33
  store i1 %191, i1* %CF_val, !mcsema_real_eip !33
  %192 = xor i32 %179, %176, !mcsema_real_eip !33
  %193 = and i32 %181, %192, !mcsema_real_eip !33
  %194 = icmp slt i32 %193, 0
  store i1 %194, i1* %OF_val, !mcsema_real_eip !33
  %195 = load i1* %SF_val, !mcsema_real_eip !34
  %196 = xor i1 %195, %194
  %197 = load i1* %ZF_val, !mcsema_real_eip !34
  %198 = or i1 %197, %196, !mcsema_real_eip !34
  br i1 %198, label %block_0x80, label %block_0x6e, !mcsema_real_eip !34

block_0x45:                                       ; preds = %entry
  %199 = add i64 %135, -44, !mcsema_real_eip !35
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !35
  %201 = bitcast i64* %200 to i32*
  %202 = load i32* %201, !mcsema_real_eip !35
  %203 = add i32 %202, -1
  %204 = xor i32 %203, %202, !mcsema_real_eip !36
  %205 = and i32 %204, 16, !mcsema_real_eip !36
  %206 = icmp ne i32 %205, 0, !mcsema_real_eip !36
  store i1 %206, i1* %AF_val, !mcsema_real_eip !36
  %207 = trunc i32 %203 to i8, !mcsema_real_eip !36
  %208 = tail call i8 @llvm.ctpop.i8(i8 %207), !mcsema_real_eip !36
  %209 = and i8 %208, 1
  %210 = icmp eq i8 %209, 0
  store i1 %210, i1* %PF_val, !mcsema_real_eip !36
  %211 = icmp eq i32 %203, 0, !mcsema_real_eip !36
  store i1 %211, i1* %ZF_val, !mcsema_real_eip !36
  %212 = icmp slt i32 %203, 0
  store i1 %212, i1* %SF_val, !mcsema_real_eip !36
  %213 = icmp eq i32 %202, 0
  store i1 %213, i1* %CF_val, !mcsema_real_eip !36
  %214 = and i32 %204, %202, !mcsema_real_eip !36
  %215 = icmp slt i32 %214, 0
  store i1 %215, i1* %OF_val, !mcsema_real_eip !36
  %216 = zext i32 %203 to i64, !mcsema_real_eip !36
  store i64 %216, i64* %RAX_val, !mcsema_real_eip !36
  %217 = load i64* %RBP_val, !mcsema_real_eip !37
  %218 = add i64 %217, -44, !mcsema_real_eip !37
  %219 = inttoptr i64 %218 to i64*, !mcsema_real_eip !37
  %220 = bitcast i64* %219 to i32*
  store i32 %203, i32* %220, !mcsema_real_eip !37
  %221 = load i64* %RBP_val, !mcsema_real_eip !38
  %222 = add i64 %221, -48, !mcsema_real_eip !38
  %223 = inttoptr i64 %222 to i64*, !mcsema_real_eip !38
  %224 = bitcast i64* %223 to i32*
  %225 = load i32* %224, !mcsema_real_eip !38
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %225, i32 60)
  %226 = extractvalue { i32, i1 } %uadd, 0
  %227 = xor i32 %226, %225, !mcsema_real_eip !39
  %228 = and i32 %227, 16
  %229 = icmp eq i32 %228, 0
  store i1 %229, i1* %AF_val, !mcsema_real_eip !39
  %230 = icmp slt i32 %226, 0
  store i1 %230, i1* %SF_val, !mcsema_real_eip !39
  %231 = icmp eq i32 %226, 0, !mcsema_real_eip !39
  store i1 %231, i1* %ZF_val, !mcsema_real_eip !39
  %232 = xor i32 %225, -2147483648, !mcsema_real_eip !39
  %233 = and i32 %227, %232, !mcsema_real_eip !39
  %234 = icmp slt i32 %233, 0
  store i1 %234, i1* %OF_val, !mcsema_real_eip !39
  %235 = trunc i32 %226 to i8, !mcsema_real_eip !39
  %236 = tail call i8 @llvm.ctpop.i8(i8 %235), !mcsema_real_eip !39
  %237 = and i8 %236, 1
  %238 = icmp eq i8 %237, 0
  store i1 %238, i1* %PF_val, !mcsema_real_eip !39
  %239 = extractvalue { i32, i1 } %uadd, 1
  store i1 %239, i1* %CF_val, !mcsema_real_eip !39
  %240 = zext i32 %226 to i64, !mcsema_real_eip !39
  store i64 %240, i64* %RAX_val, !mcsema_real_eip !39
  %241 = load i64* %RBP_val, !mcsema_real_eip !40
  %242 = add i64 %241, -48, !mcsema_real_eip !40
  %243 = inttoptr i64 %242 to i64*, !mcsema_real_eip !40
  %244 = bitcast i64* %243 to i32*
  store i32 %226, i32* %244, !mcsema_real_eip !40
  %245 = load i64* %RBP_val, !mcsema_real_eip !26
  %246 = add i64 %245, -48, !mcsema_real_eip !26
  %247 = inttoptr i64 %246 to i64*, !mcsema_real_eip !26
  %248 = bitcast i64* %247 to i32*
  %249 = load i32* %248, !mcsema_real_eip !26
  %250 = zext i32 %249 to i64, !mcsema_real_eip !26
  store i64 %250, i64* %RDX_val, !mcsema_real_eip !26
  %251 = load i64* %RBP_val, !mcsema_real_eip !27
  %252 = add i64 %251, -64, !mcsema_real_eip !27
  %253 = inttoptr i64 %252 to i64*, !mcsema_real_eip !27
  %254 = bitcast i64* %253 to i32*
  %255 = load i32* %254, !mcsema_real_eip !27
  %256 = sub i32 %249, %255, !mcsema_real_eip !28
  %257 = xor i32 %256, %249, !mcsema_real_eip !28
  %258 = xor i32 %257, %255, !mcsema_real_eip !28
  %259 = and i32 %258, 16, !mcsema_real_eip !28
  %260 = icmp ne i32 %259, 0, !mcsema_real_eip !28
  store i1 %260, i1* %AF_val, !mcsema_real_eip !28
  %261 = trunc i32 %256 to i8, !mcsema_real_eip !28
  %262 = tail call i8 @llvm.ctpop.i8(i8 %261), !mcsema_real_eip !28
  %263 = and i8 %262, 1
  %264 = icmp eq i8 %263, 0
  store i1 %264, i1* %PF_val, !mcsema_real_eip !28
  %265 = icmp eq i32 %249, %255
  store i1 %265, i1* %ZF_val, !mcsema_real_eip !28
  %266 = icmp slt i32 %256, 0
  store i1 %266, i1* %SF_val, !mcsema_real_eip !28
  %267 = icmp ult i32 %249, %255, !mcsema_real_eip !28
  store i1 %267, i1* %CF_val, !mcsema_real_eip !28
  %268 = xor i32 %249, %255, !mcsema_real_eip !28
  %269 = and i32 %257, %268, !mcsema_real_eip !28
  %270 = icmp slt i32 %269, 0
  store i1 %270, i1* %OF_val, !mcsema_real_eip !28
  %271 = zext i32 %256 to i64, !mcsema_real_eip !28
  store i64 %271, i64* %RDX_val, !mcsema_real_eip !28
  store i64 %271, i64* %RAX_val, !mcsema_real_eip !29
  %272 = load i64* %RBP_val, !mcsema_real_eip !30
  %273 = add i64 %272, -32, !mcsema_real_eip !30
  %274 = inttoptr i64 %273 to i64*, !mcsema_real_eip !30
  %275 = bitcast i64* %274 to i32*
  store i32 %256, i32* %275, !mcsema_real_eip !30
  %276 = load i64* %RBP_val, !mcsema_real_eip !31
  %277 = add i64 %276, -60, !mcsema_real_eip !31
  %278 = inttoptr i64 %277 to i64*, !mcsema_real_eip !31
  %279 = bitcast i64* %278 to i32*
  %280 = load i32* %279, !mcsema_real_eip !31
  %281 = zext i32 %280 to i64, !mcsema_real_eip !31
  store i64 %281, i64* %RDX_val, !mcsema_real_eip !31
  %282 = load i64* %RBP_val, !mcsema_real_eip !32
  %283 = add i64 %282, -44, !mcsema_real_eip !32
  %284 = inttoptr i64 %283 to i64*, !mcsema_real_eip !32
  %285 = bitcast i64* %284 to i32*
  %286 = load i32* %285, !mcsema_real_eip !32
  %287 = zext i32 %286 to i64, !mcsema_real_eip !32
  store i64 %287, i64* %RAX_val, !mcsema_real_eip !32
  %288 = load i64* %RDX_val, !mcsema_real_eip !33
  %289 = trunc i64 %288 to i32, !mcsema_real_eip !33
  %290 = sub i32 %289, %286, !mcsema_real_eip !33
  %291 = xor i32 %290, %289, !mcsema_real_eip !33
  %292 = xor i32 %291, %286, !mcsema_real_eip !33
  %293 = and i32 %292, 16, !mcsema_real_eip !33
  %294 = icmp ne i32 %293, 0, !mcsema_real_eip !33
  store i1 %294, i1* %AF_val, !mcsema_real_eip !33
  %295 = trunc i32 %290 to i8, !mcsema_real_eip !33
  %296 = tail call i8 @llvm.ctpop.i8(i8 %295), !mcsema_real_eip !33
  %297 = and i8 %296, 1
  %298 = icmp eq i8 %297, 0
  store i1 %298, i1* %PF_val, !mcsema_real_eip !33
  %299 = icmp eq i32 %289, %286
  store i1 %299, i1* %ZF_val, !mcsema_real_eip !33
  %300 = icmp slt i32 %290, 0
  store i1 %300, i1* %SF_val, !mcsema_real_eip !33
  %301 = icmp ult i32 %289, %286, !mcsema_real_eip !33
  store i1 %301, i1* %CF_val, !mcsema_real_eip !33
  %302 = xor i32 %289, %286, !mcsema_real_eip !33
  %303 = and i32 %291, %302, !mcsema_real_eip !33
  %304 = icmp slt i32 %303, 0
  store i1 %304, i1* %OF_val, !mcsema_real_eip !33
  %305 = load i1* %SF_val, !mcsema_real_eip !34
  %306 = xor i1 %305, %304
  %307 = load i1* %ZF_val, !mcsema_real_eip !34
  %308 = or i1 %307, %306, !mcsema_real_eip !34
  br i1 %308, label %block_0x80, label %block_0x6e, !mcsema_real_eip !34

block_0x80:                                       ; preds = %block_0x45, %block_0x57
  %309 = load i64* %RBP_val, !mcsema_real_eip !41
  %310 = add i64 %309, -44, !mcsema_real_eip !41
  %311 = inttoptr i64 %310 to i64*, !mcsema_real_eip !41
  %312 = bitcast i64* %311 to i32*
  %313 = load i32* %312, !mcsema_real_eip !41
  %314 = zext i32 %313 to i64, !mcsema_real_eip !41
  store i64 %314, i64* %RDX_val, !mcsema_real_eip !41
  %315 = load i64* %RBP_val, !mcsema_real_eip !42
  %316 = add i64 %315, -60, !mcsema_real_eip !42
  %317 = inttoptr i64 %316 to i64*, !mcsema_real_eip !42
  %318 = bitcast i64* %317 to i32*
  %319 = load i32* %318, !mcsema_real_eip !42
  %320 = sub i32 %313, %319, !mcsema_real_eip !43
  %321 = xor i32 %320, %313, !mcsema_real_eip !43
  %322 = xor i32 %321, %319, !mcsema_real_eip !43
  %323 = and i32 %322, 16, !mcsema_real_eip !43
  %324 = icmp ne i32 %323, 0, !mcsema_real_eip !43
  store i1 %324, i1* %AF_val, !mcsema_real_eip !43
  %325 = trunc i32 %320 to i8, !mcsema_real_eip !43
  %326 = tail call i8 @llvm.ctpop.i8(i8 %325), !mcsema_real_eip !43
  %327 = and i8 %326, 1
  %328 = icmp eq i8 %327, 0
  store i1 %328, i1* %PF_val, !mcsema_real_eip !43
  %329 = icmp eq i32 %313, %319
  store i1 %329, i1* %ZF_val, !mcsema_real_eip !43
  %330 = icmp slt i32 %320, 0
  store i1 %330, i1* %SF_val, !mcsema_real_eip !43
  %331 = icmp ult i32 %313, %319, !mcsema_real_eip !43
  store i1 %331, i1* %CF_val, !mcsema_real_eip !43
  %332 = xor i32 %313, %319, !mcsema_real_eip !43
  %333 = and i32 %321, %332, !mcsema_real_eip !43
  %334 = icmp slt i32 %333, 0
  store i1 %334, i1* %OF_val, !mcsema_real_eip !43
  %335 = zext i32 %320 to i64, !mcsema_real_eip !43
  store i64 %335, i64* %RDX_val, !mcsema_real_eip !43
  store i64 %335, i64* %RAX_val, !mcsema_real_eip !44
  %336 = load i64* %RBP_val, !mcsema_real_eip !45
  %337 = add i64 %336, -28, !mcsema_real_eip !45
  %338 = inttoptr i64 %337 to i64*, !mcsema_real_eip !45
  %339 = bitcast i64* %338 to i32*
  store i32 %320, i32* %339, !mcsema_real_eip !45
  %340 = load i64* %RBP_val, !mcsema_real_eip !46
  %341 = add i64 %340, -40, !mcsema_real_eip !46
  %342 = inttoptr i64 %341 to i64*, !mcsema_real_eip !46
  %343 = bitcast i64* %342 to i32*
  %344 = load i32* %343, !mcsema_real_eip !46
  %345 = zext i32 %344 to i64, !mcsema_real_eip !46
  store i64 %345, i64* %RDX_val, !mcsema_real_eip !46
  %346 = load i64* %RBP_val, !mcsema_real_eip !47
  %347 = add i64 %346, -56, !mcsema_real_eip !47
  %348 = inttoptr i64 %347 to i64*, !mcsema_real_eip !47
  %349 = bitcast i64* %348 to i32*
  %350 = load i32* %349, !mcsema_real_eip !47
  %351 = sub i32 %344, %350, !mcsema_real_eip !48
  %352 = xor i32 %351, %344, !mcsema_real_eip !48
  %353 = xor i32 %352, %350, !mcsema_real_eip !48
  %354 = and i32 %353, 16, !mcsema_real_eip !48
  %355 = icmp ne i32 %354, 0, !mcsema_real_eip !48
  store i1 %355, i1* %AF_val, !mcsema_real_eip !48
  %356 = trunc i32 %351 to i8, !mcsema_real_eip !48
  %357 = tail call i8 @llvm.ctpop.i8(i8 %356), !mcsema_real_eip !48
  %358 = and i8 %357, 1
  %359 = icmp eq i8 %358, 0
  store i1 %359, i1* %PF_val, !mcsema_real_eip !48
  %360 = icmp eq i32 %344, %350
  store i1 %360, i1* %ZF_val, !mcsema_real_eip !48
  %361 = icmp slt i32 %351, 0
  store i1 %361, i1* %SF_val, !mcsema_real_eip !48
  %362 = icmp ult i32 %344, %350, !mcsema_real_eip !48
  store i1 %362, i1* %CF_val, !mcsema_real_eip !48
  %363 = xor i32 %344, %350, !mcsema_real_eip !48
  %364 = and i32 %352, %363, !mcsema_real_eip !48
  %365 = icmp slt i32 %364, 0
  store i1 %365, i1* %OF_val, !mcsema_real_eip !48
  %366 = zext i32 %351 to i64, !mcsema_real_eip !48
  store i64 %366, i64* %RDX_val, !mcsema_real_eip !48
  store i64 %366, i64* %RAX_val, !mcsema_real_eip !49
  %367 = load i64* %RBP_val, !mcsema_real_eip !50
  %368 = add i64 %367, -24, !mcsema_real_eip !50
  %369 = inttoptr i64 %368 to i64*, !mcsema_real_eip !50
  %370 = bitcast i64* %369 to i32*
  store i32 %351, i32* %370, !mcsema_real_eip !50
  %371 = load i64* %RBP_val, !mcsema_real_eip !51
  %372 = add i64 %371, -32, !mcsema_real_eip !51
  %373 = inttoptr i64 %372 to i64*, !mcsema_real_eip !51
  %374 = load i64* %373, !mcsema_real_eip !51
  store i64 %374, i64* %RAX_val, !mcsema_real_eip !51
  %375 = add i64 %371, -16, !mcsema_real_eip !52
  %376 = inttoptr i64 %375 to i64*, !mcsema_real_eip !52
  store i64 %374, i64* %376, !mcsema_real_eip !52
  %377 = load i64* %RBP_val, !mcsema_real_eip !53
  %378 = add i64 %377, -24, !mcsema_real_eip !53
  %379 = inttoptr i64 %378 to i64*, !mcsema_real_eip !53
  %380 = bitcast i64* %379 to i32*
  %381 = load i32* %380, !mcsema_real_eip !53
  %382 = zext i32 %381 to i64, !mcsema_real_eip !53
  store i64 %382, i64* %RAX_val, !mcsema_real_eip !53
  %383 = load i64* %RBP_val, !mcsema_real_eip !54
  %384 = add i64 %383, -8, !mcsema_real_eip !54
  %385 = inttoptr i64 %384 to i64*, !mcsema_real_eip !54
  %386 = bitcast i64* %385 to i32*
  store i32 %381, i32* %386, !mcsema_real_eip !54
  %387 = load i64* %RBP_val, !mcsema_real_eip !55
  %388 = add i64 %387, -16, !mcsema_real_eip !55
  %389 = inttoptr i64 %388 to i64*, !mcsema_real_eip !55
  %390 = load i64* %389, !mcsema_real_eip !55
  store i64 %390, i64* %RAX_val, !mcsema_real_eip !55
  %391 = add i64 %387, -8, !mcsema_real_eip !56
  %392 = inttoptr i64 %391 to i64*, !mcsema_real_eip !56
  %393 = bitcast i64* %392 to i32*
  %394 = load i32* %393, !mcsema_real_eip !56
  %395 = zext i32 %394 to i64, !mcsema_real_eip !56
  store i64 %395, i64* %RDX_val, !mcsema_real_eip !56
  %396 = load i64* %RSP_val, !mcsema_real_eip !57
  %397 = inttoptr i64 %396 to i64*, !mcsema_real_eip !57
  %398 = load i64* %397, !mcsema_real_eip !57
  store i64 %398, i64* %RBP_val, !mcsema_real_eip !57
  %399 = add i64 %396, 16, !mcsema_real_eip !58
  store i64 %399, i64* %RSP_val, !mcsema_real_eip !58
  %400 = load i64* %RAX_val, !mcsema_real_eip !58
  store i64 %400, i64* %RAX, !mcsema_real_eip !58
  %401 = load i64* %RBX_val, !mcsema_real_eip !58
  store i64 %401, i64* %RBX, !mcsema_real_eip !58
  %402 = load i64* %RCX_val, !mcsema_real_eip !58
  store i64 %402, i64* %RCX, !mcsema_real_eip !58
  %403 = load i64* %RDX_val, !mcsema_real_eip !58
  store i64 %403, i64* %RDX, !mcsema_real_eip !58
  %404 = load i64* %RSI_val, !mcsema_real_eip !58
  store i64 %404, i64* %RSI, !mcsema_real_eip !58
  %405 = load i64* %RDI_val, !mcsema_real_eip !58
  store i64 %405, i64* %RDI, !mcsema_real_eip !58
  %406 = load i64* %RSP_val, !mcsema_real_eip !58
  store i64 %406, i64* %RSP, !mcsema_real_eip !58
  %407 = load i64* %RBP_val, !mcsema_real_eip !58
  store i64 %407, i64* %RBP, !mcsema_real_eip !58
  %408 = load i64* %R8_val, !mcsema_real_eip !58
  store i64 %408, i64* %R8, !mcsema_real_eip !58
  %409 = load i64* %R9_val, !mcsema_real_eip !58
  store i64 %409, i64* %R9, !mcsema_real_eip !58
  %410 = load i64* %R10_val, !mcsema_real_eip !58
  store i64 %410, i64* %R10, !mcsema_real_eip !58
  %411 = load i64* %R11_val, !mcsema_real_eip !58
  store i64 %411, i64* %R11, !mcsema_real_eip !58
  %412 = load i64* %R12_val, !mcsema_real_eip !58
  store i64 %412, i64* %R12, !mcsema_real_eip !58
  %413 = load i64* %R13_val, !mcsema_real_eip !58
  store i64 %413, i64* %R13, !mcsema_real_eip !58
  %414 = load i64* %R14_val, !mcsema_real_eip !58
  store i64 %414, i64* %R14, !mcsema_real_eip !58
  %415 = load i64* %R15_val, !mcsema_real_eip !58
  store i64 %415, i64* %R15, !mcsema_real_eip !58
  %416 = load i64* %RIP_val, !mcsema_real_eip !58
  store i64 %416, i64* %RIP, !mcsema_real_eip !58
  %417 = load i1* %CF_val, !mcsema_real_eip !58
  store i1 %417, i1* %CF, align 1, !mcsema_real_eip !58
  %418 = load i1* %PF_val, !mcsema_real_eip !58
  store i1 %418, i1* %PF, align 1, !mcsema_real_eip !58
  %419 = load i1* %AF_val, !mcsema_real_eip !58
  store i1 %419, i1* %AF, align 1, !mcsema_real_eip !58
  %420 = load i1* %ZF_val, !mcsema_real_eip !58
  store i1 %420, i1* %ZF, align 1, !mcsema_real_eip !58
  %421 = load i1* %SF_val, !mcsema_real_eip !58
  store i1 %421, i1* %SF, align 1, !mcsema_real_eip !58
  %422 = load i1* %OF_val, !mcsema_real_eip !58
  store i1 %422, i1* %OF, align 1, !mcsema_real_eip !58
  %423 = load i1* %DF_val, !mcsema_real_eip !58
  store i1 %423, i1* %DF, align 1, !mcsema_real_eip !58
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !58
  %424 = load i1* %FPU_B_val, !mcsema_real_eip !58
  store i1 %424, i1* %FPU_B, align 1, !mcsema_real_eip !58
  %425 = load i1* %FPU_C3_val, !mcsema_real_eip !58
  store i1 %425, i1* %FPU_C3, align 1, !mcsema_real_eip !58
  %426 = load i3* %FPU_TOP_val, !mcsema_real_eip !58
  store i3 %426, i3* %FPU_TOP, align 1, !mcsema_real_eip !58
  %427 = load i1* %FPU_C2_val, !mcsema_real_eip !58
  store i1 %427, i1* %FPU_C2, align 1, !mcsema_real_eip !58
  %428 = load i1* %FPU_C1_val, !mcsema_real_eip !58
  store i1 %428, i1* %FPU_C1, align 1, !mcsema_real_eip !58
  %429 = load i1* %FPU_C0_val, !mcsema_real_eip !58
  store i1 %429, i1* %FPU_C0, align 1, !mcsema_real_eip !58
  %430 = load i1* %FPU_ES_val, !mcsema_real_eip !58
  store i1 %430, i1* %FPU_ES, align 1, !mcsema_real_eip !58
  %431 = load i1* %FPU_SF_val, !mcsema_real_eip !58
  store i1 %431, i1* %FPU_SF, align 1, !mcsema_real_eip !58
  %432 = load i1* %FPU_PE_val, !mcsema_real_eip !58
  store i1 %432, i1* %FPU_PE, align 1, !mcsema_real_eip !58
  %433 = load i1* %FPU_UE_val, !mcsema_real_eip !58
  store i1 %433, i1* %FPU_UE, align 1, !mcsema_real_eip !58
  %434 = load i1* %FPU_OE_val, !mcsema_real_eip !58
  store i1 %434, i1* %FPU_OE, align 1, !mcsema_real_eip !58
  %435 = load i1* %FPU_ZE_val, !mcsema_real_eip !58
  store i1 %435, i1* %FPU_ZE, align 1, !mcsema_real_eip !58
  %436 = load i1* %FPU_DE_val, !mcsema_real_eip !58
  store i1 %436, i1* %FPU_DE, align 1, !mcsema_real_eip !58
  %437 = load i1* %FPU_IE_val, !mcsema_real_eip !58
  store i1 %437, i1* %FPU_IE, align 1, !mcsema_real_eip !58
  %438 = load i1* %FPU_X_val, !mcsema_real_eip !58
  store i1 %438, i1* %FPU_X, align 1, !mcsema_real_eip !58
  %439 = load i2* %FPU_RC_val, !mcsema_real_eip !58
  store i2 %439, i2* %FPU_RC, align 1, !mcsema_real_eip !58
  %440 = load i2* %FPU_PC_val, !mcsema_real_eip !58
  store i2 %440, i2* %FPU_PC, align 1, !mcsema_real_eip !58
  %441 = load i1* %FPU_PM_val, !mcsema_real_eip !58
  store i1 %441, i1* %FPU_PM, align 1, !mcsema_real_eip !58
  %442 = load i1* %FPU_UM_val, !mcsema_real_eip !58
  store i1 %442, i1* %FPU_UM, align 1, !mcsema_real_eip !58
  %443 = load i1* %FPU_OM_val, !mcsema_real_eip !58
  store i1 %443, i1* %FPU_OM, align 1, !mcsema_real_eip !58
  %444 = load i1* %FPU_ZM_val, !mcsema_real_eip !58
  store i1 %444, i1* %FPU_ZM, align 1, !mcsema_real_eip !58
  %445 = load i1* %FPU_DM_val, !mcsema_real_eip !58
  store i1 %445, i1* %FPU_DM, align 1, !mcsema_real_eip !58
  %446 = load i1* %FPU_IM_val, !mcsema_real_eip !58
  store i1 %446, i1* %FPU_IM, align 1, !mcsema_real_eip !58
  %447 = load i64* %53, align 4
  store i64 %447, i64* %52, align 4
  %448 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !58
  store i16 %448, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !58
  %449 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !58
  store i64 %449, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !58
  %450 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !58
  store i16 %450, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !58
  %451 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !58
  store i64 %451, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !58
  %452 = load i128* %XMM0_val, !mcsema_real_eip !58
  store i128 %452, i128* %XMM0, align 1, !mcsema_real_eip !58
  %453 = load i128* %XMM1_val, !mcsema_real_eip !58
  store i128 %453, i128* %XMM1, align 1, !mcsema_real_eip !58
  %454 = load i128* %XMM2_val, !mcsema_real_eip !58
  store i128 %454, i128* %XMM2, align 1, !mcsema_real_eip !58
  %455 = load i128* %XMM3_val, !mcsema_real_eip !58
  store i128 %455, i128* %XMM3, align 1, !mcsema_real_eip !58
  %456 = load i128* %XMM4_val, !mcsema_real_eip !58
  store i128 %456, i128* %XMM4, align 1, !mcsema_real_eip !58
  %457 = load i128* %XMM5_val, !mcsema_real_eip !58
  store i128 %457, i128* %XMM5, align 1, !mcsema_real_eip !58
  %458 = load i128* %XMM6_val, !mcsema_real_eip !58
  store i128 %458, i128* %XMM6, align 1, !mcsema_real_eip !58
  %459 = load i128* %XMM7_val, !mcsema_real_eip !58
  store i128 %459, i128* %XMM7, align 1, !mcsema_real_eip !58
  %460 = load i128* %XMM8_val, !mcsema_real_eip !58
  store i128 %460, i128* %XMM8, align 1, !mcsema_real_eip !58
  %461 = load i128* %XMM9_val, !mcsema_real_eip !58
  store i128 %461, i128* %XMM9, align 1, !mcsema_real_eip !58
  %462 = load i128* %XMM10_val, !mcsema_real_eip !58
  store i128 %462, i128* %XMM10, align 1, !mcsema_real_eip !58
  %463 = load i128* %XMM11_val, !mcsema_real_eip !58
  store i128 %463, i128* %XMM11, align 1, !mcsema_real_eip !58
  %464 = load i128* %XMM12_val, !mcsema_real_eip !58
  store i128 %464, i128* %XMM12, align 1, !mcsema_real_eip !58
  %465 = load i128* %XMM13_val, !mcsema_real_eip !58
  store i128 %465, i128* %XMM13, align 1, !mcsema_real_eip !58
  %466 = load i128* %XMM14_val, !mcsema_real_eip !58
  store i128 %466, i128* %XMM14, align 1, !mcsema_real_eip !58
  %467 = load i128* %XMM15_val, !mcsema_real_eip !58
  store i128 %467, i128* %XMM15, align 1, !mcsema_real_eip !58
  %468 = load i64* %STACK_BASE_val, !mcsema_real_eip !58
  store i64 %468, i64* %STACK_BASE, align 1, !mcsema_real_eip !58
  %469 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !58
  store i64 %469, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !58
  ret void, !mcsema_real_eip !58

block_0x6e:                                       ; preds = %block_0x45, %block_0x57
  %470 = load i64* %RBP_val, !mcsema_real_eip !59
  %471 = add i64 %470, -40, !mcsema_real_eip !59
  %472 = inttoptr i64 %471 to i64*, !mcsema_real_eip !59
  %473 = bitcast i64* %472 to i32*
  %474 = load i32* %473, !mcsema_real_eip !59
  %475 = add i32 %474, -1
  %476 = xor i32 %475, %474, !mcsema_real_eip !60
  %477 = and i32 %476, 16, !mcsema_real_eip !60
  %478 = icmp ne i32 %477, 0, !mcsema_real_eip !60
  store i1 %478, i1* %AF_val, !mcsema_real_eip !60
  %479 = trunc i32 %475 to i8, !mcsema_real_eip !60
  %480 = tail call i8 @llvm.ctpop.i8(i8 %479), !mcsema_real_eip !60
  %481 = and i8 %480, 1
  %482 = icmp eq i8 %481, 0
  store i1 %482, i1* %PF_val, !mcsema_real_eip !60
  %483 = icmp eq i32 %475, 0, !mcsema_real_eip !60
  store i1 %483, i1* %ZF_val, !mcsema_real_eip !60
  %484 = icmp slt i32 %475, 0
  store i1 %484, i1* %SF_val, !mcsema_real_eip !60
  %485 = icmp eq i32 %474, 0
  store i1 %485, i1* %CF_val, !mcsema_real_eip !60
  %486 = and i32 %476, %474, !mcsema_real_eip !60
  %487 = icmp slt i32 %486, 0
  store i1 %487, i1* %OF_val, !mcsema_real_eip !60
  %488 = zext i32 %475 to i64, !mcsema_real_eip !60
  store i64 %488, i64* %RAX_val, !mcsema_real_eip !60
  %489 = load i64* %RBP_val, !mcsema_real_eip !61
  %490 = add i64 %489, -40, !mcsema_real_eip !61
  %491 = inttoptr i64 %490 to i64*, !mcsema_real_eip !61
  %492 = bitcast i64* %491 to i32*
  store i32 %475, i32* %492, !mcsema_real_eip !61
  %493 = load i64* %RBP_val, !mcsema_real_eip !62
  %494 = add i64 %493, -44, !mcsema_real_eip !62
  %495 = inttoptr i64 %494 to i64*, !mcsema_real_eip !62
  %496 = bitcast i64* %495 to i32*
  %497 = load i32* %496, !mcsema_real_eip !62
  %uadd141 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %497, i32 60)
  %498 = extractvalue { i32, i1 } %uadd141, 0
  %499 = xor i32 %498, %497, !mcsema_real_eip !63
  %500 = and i32 %499, 16
  %501 = icmp eq i32 %500, 0
  store i1 %501, i1* %AF_val, !mcsema_real_eip !63
  %502 = icmp slt i32 %498, 0
  store i1 %502, i1* %SF_val, !mcsema_real_eip !63
  %503 = icmp eq i32 %498, 0, !mcsema_real_eip !63
  store i1 %503, i1* %ZF_val, !mcsema_real_eip !63
  %504 = xor i32 %497, -2147483648, !mcsema_real_eip !63
  %505 = and i32 %499, %504, !mcsema_real_eip !63
  %506 = icmp slt i32 %505, 0
  store i1 %506, i1* %OF_val, !mcsema_real_eip !63
  %507 = trunc i32 %498 to i8, !mcsema_real_eip !63
  %508 = tail call i8 @llvm.ctpop.i8(i8 %507), !mcsema_real_eip !63
  %509 = and i8 %508, 1
  %510 = icmp eq i8 %509, 0
  store i1 %510, i1* %PF_val, !mcsema_real_eip !63
  %511 = extractvalue { i32, i1 } %uadd141, 1
  store i1 %511, i1* %CF_val, !mcsema_real_eip !63
  %512 = zext i32 %498 to i64, !mcsema_real_eip !63
  store i64 %512, i64* %RAX_val, !mcsema_real_eip !63
  %513 = load i64* %RBP_val, !mcsema_real_eip !64
  %514 = add i64 %513, -44, !mcsema_real_eip !64
  %515 = inttoptr i64 %514 to i64*, !mcsema_real_eip !64
  %516 = bitcast i64* %515 to i32*
  store i32 %498, i32* %516, !mcsema_real_eip !64
  %517 = load i64* %RBP_val, !mcsema_real_eip !41
  %518 = add i64 %517, -44, !mcsema_real_eip !41
  %519 = inttoptr i64 %518 to i64*, !mcsema_real_eip !41
  %520 = bitcast i64* %519 to i32*
  %521 = load i32* %520, !mcsema_real_eip !41
  %522 = zext i32 %521 to i64, !mcsema_real_eip !41
  store i64 %522, i64* %RDX_val, !mcsema_real_eip !41
  %523 = load i64* %RBP_val, !mcsema_real_eip !42
  %524 = add i64 %523, -60, !mcsema_real_eip !42
  %525 = inttoptr i64 %524 to i64*, !mcsema_real_eip !42
  %526 = bitcast i64* %525 to i32*
  %527 = load i32* %526, !mcsema_real_eip !42
  %528 = sub i32 %521, %527, !mcsema_real_eip !43
  %529 = xor i32 %528, %521, !mcsema_real_eip !43
  %530 = xor i32 %529, %527, !mcsema_real_eip !43
  %531 = and i32 %530, 16, !mcsema_real_eip !43
  %532 = icmp ne i32 %531, 0, !mcsema_real_eip !43
  store i1 %532, i1* %AF_val, !mcsema_real_eip !43
  %533 = trunc i32 %528 to i8, !mcsema_real_eip !43
  %534 = tail call i8 @llvm.ctpop.i8(i8 %533), !mcsema_real_eip !43
  %535 = and i8 %534, 1
  %536 = icmp eq i8 %535, 0
  store i1 %536, i1* %PF_val, !mcsema_real_eip !43
  %537 = icmp eq i32 %521, %527
  store i1 %537, i1* %ZF_val, !mcsema_real_eip !43
  %538 = icmp slt i32 %528, 0
  store i1 %538, i1* %SF_val, !mcsema_real_eip !43
  %539 = icmp ult i32 %521, %527, !mcsema_real_eip !43
  store i1 %539, i1* %CF_val, !mcsema_real_eip !43
  %540 = xor i32 %521, %527, !mcsema_real_eip !43
  %541 = and i32 %529, %540, !mcsema_real_eip !43
  %542 = icmp slt i32 %541, 0
  store i1 %542, i1* %OF_val, !mcsema_real_eip !43
  %543 = zext i32 %528 to i64, !mcsema_real_eip !43
  store i64 %543, i64* %RDX_val, !mcsema_real_eip !43
  store i64 %543, i64* %RAX_val, !mcsema_real_eip !44
  %544 = load i64* %RBP_val, !mcsema_real_eip !45
  %545 = add i64 %544, -28, !mcsema_real_eip !45
  %546 = inttoptr i64 %545 to i64*, !mcsema_real_eip !45
  %547 = bitcast i64* %546 to i32*
  store i32 %528, i32* %547, !mcsema_real_eip !45
  %548 = load i64* %RBP_val, !mcsema_real_eip !46
  %549 = add i64 %548, -40, !mcsema_real_eip !46
  %550 = inttoptr i64 %549 to i64*, !mcsema_real_eip !46
  %551 = bitcast i64* %550 to i32*
  %552 = load i32* %551, !mcsema_real_eip !46
  %553 = zext i32 %552 to i64, !mcsema_real_eip !46
  store i64 %553, i64* %RDX_val, !mcsema_real_eip !46
  %554 = load i64* %RBP_val, !mcsema_real_eip !47
  %555 = add i64 %554, -56, !mcsema_real_eip !47
  %556 = inttoptr i64 %555 to i64*, !mcsema_real_eip !47
  %557 = bitcast i64* %556 to i32*
  %558 = load i32* %557, !mcsema_real_eip !47
  %559 = sub i32 %552, %558, !mcsema_real_eip !48
  %560 = xor i32 %559, %552, !mcsema_real_eip !48
  %561 = xor i32 %560, %558, !mcsema_real_eip !48
  %562 = and i32 %561, 16, !mcsema_real_eip !48
  %563 = icmp ne i32 %562, 0, !mcsema_real_eip !48
  store i1 %563, i1* %AF_val, !mcsema_real_eip !48
  %564 = trunc i32 %559 to i8, !mcsema_real_eip !48
  %565 = tail call i8 @llvm.ctpop.i8(i8 %564), !mcsema_real_eip !48
  %566 = and i8 %565, 1
  %567 = icmp eq i8 %566, 0
  store i1 %567, i1* %PF_val, !mcsema_real_eip !48
  %568 = icmp eq i32 %552, %558
  store i1 %568, i1* %ZF_val, !mcsema_real_eip !48
  %569 = icmp slt i32 %559, 0
  store i1 %569, i1* %SF_val, !mcsema_real_eip !48
  %570 = icmp ult i32 %552, %558, !mcsema_real_eip !48
  store i1 %570, i1* %CF_val, !mcsema_real_eip !48
  %571 = xor i32 %552, %558, !mcsema_real_eip !48
  %572 = and i32 %560, %571, !mcsema_real_eip !48
  %573 = icmp slt i32 %572, 0
  store i1 %573, i1* %OF_val, !mcsema_real_eip !48
  %574 = zext i32 %559 to i64, !mcsema_real_eip !48
  store i64 %574, i64* %RDX_val, !mcsema_real_eip !48
  store i64 %574, i64* %RAX_val, !mcsema_real_eip !49
  %575 = load i64* %RBP_val, !mcsema_real_eip !50
  %576 = add i64 %575, -24, !mcsema_real_eip !50
  %577 = inttoptr i64 %576 to i64*, !mcsema_real_eip !50
  %578 = bitcast i64* %577 to i32*
  store i32 %559, i32* %578, !mcsema_real_eip !50
  %579 = load i64* %RBP_val, !mcsema_real_eip !51
  %580 = add i64 %579, -32, !mcsema_real_eip !51
  %581 = inttoptr i64 %580 to i64*, !mcsema_real_eip !51
  %582 = load i64* %581, !mcsema_real_eip !51
  store i64 %582, i64* %RAX_val, !mcsema_real_eip !51
  %583 = add i64 %579, -16, !mcsema_real_eip !52
  %584 = inttoptr i64 %583 to i64*, !mcsema_real_eip !52
  store i64 %582, i64* %584, !mcsema_real_eip !52
  %585 = load i64* %RBP_val, !mcsema_real_eip !53
  %586 = add i64 %585, -24, !mcsema_real_eip !53
  %587 = inttoptr i64 %586 to i64*, !mcsema_real_eip !53
  %588 = bitcast i64* %587 to i32*
  %589 = load i32* %588, !mcsema_real_eip !53
  %590 = zext i32 %589 to i64, !mcsema_real_eip !53
  store i64 %590, i64* %RAX_val, !mcsema_real_eip !53
  %591 = load i64* %RBP_val, !mcsema_real_eip !54
  %592 = add i64 %591, -8, !mcsema_real_eip !54
  %593 = inttoptr i64 %592 to i64*, !mcsema_real_eip !54
  %594 = bitcast i64* %593 to i32*
  store i32 %589, i32* %594, !mcsema_real_eip !54
  %595 = load i64* %RBP_val, !mcsema_real_eip !55
  %596 = add i64 %595, -16, !mcsema_real_eip !55
  %597 = inttoptr i64 %596 to i64*, !mcsema_real_eip !55
  %598 = load i64* %597, !mcsema_real_eip !55
  store i64 %598, i64* %RAX_val, !mcsema_real_eip !55
  %599 = add i64 %595, -8, !mcsema_real_eip !56
  %600 = inttoptr i64 %599 to i64*, !mcsema_real_eip !56
  %601 = bitcast i64* %600 to i32*
  %602 = load i32* %601, !mcsema_real_eip !56
  %603 = zext i32 %602 to i64, !mcsema_real_eip !56
  store i64 %603, i64* %RDX_val, !mcsema_real_eip !56
  %604 = load i64* %RSP_val, !mcsema_real_eip !57
  %605 = inttoptr i64 %604 to i64*, !mcsema_real_eip !57
  %606 = load i64* %605, !mcsema_real_eip !57
  store i64 %606, i64* %RBP_val, !mcsema_real_eip !57
  %607 = add i64 %604, 16, !mcsema_real_eip !58
  store i64 %607, i64* %RSP_val, !mcsema_real_eip !58
  %608 = load i64* %RAX_val, !mcsema_real_eip !58
  store i64 %608, i64* %RAX, !mcsema_real_eip !58
  %609 = load i64* %RBX_val, !mcsema_real_eip !58
  store i64 %609, i64* %RBX, !mcsema_real_eip !58
  %610 = load i64* %RCX_val, !mcsema_real_eip !58
  store i64 %610, i64* %RCX, !mcsema_real_eip !58
  %611 = load i64* %RDX_val, !mcsema_real_eip !58
  store i64 %611, i64* %RDX, !mcsema_real_eip !58
  %612 = load i64* %RSI_val, !mcsema_real_eip !58
  store i64 %612, i64* %RSI, !mcsema_real_eip !58
  %613 = load i64* %RDI_val, !mcsema_real_eip !58
  store i64 %613, i64* %RDI, !mcsema_real_eip !58
  %614 = load i64* %RSP_val, !mcsema_real_eip !58
  store i64 %614, i64* %RSP, !mcsema_real_eip !58
  %615 = load i64* %RBP_val, !mcsema_real_eip !58
  store i64 %615, i64* %RBP, !mcsema_real_eip !58
  %616 = load i64* %R8_val, !mcsema_real_eip !58
  store i64 %616, i64* %R8, !mcsema_real_eip !58
  %617 = load i64* %R9_val, !mcsema_real_eip !58
  store i64 %617, i64* %R9, !mcsema_real_eip !58
  %618 = load i64* %R10_val, !mcsema_real_eip !58
  store i64 %618, i64* %R10, !mcsema_real_eip !58
  %619 = load i64* %R11_val, !mcsema_real_eip !58
  store i64 %619, i64* %R11, !mcsema_real_eip !58
  %620 = load i64* %R12_val, !mcsema_real_eip !58
  store i64 %620, i64* %R12, !mcsema_real_eip !58
  %621 = load i64* %R13_val, !mcsema_real_eip !58
  store i64 %621, i64* %R13, !mcsema_real_eip !58
  %622 = load i64* %R14_val, !mcsema_real_eip !58
  store i64 %622, i64* %R14, !mcsema_real_eip !58
  %623 = load i64* %R15_val, !mcsema_real_eip !58
  store i64 %623, i64* %R15, !mcsema_real_eip !58
  %624 = load i64* %RIP_val, !mcsema_real_eip !58
  store i64 %624, i64* %RIP, !mcsema_real_eip !58
  %625 = load i1* %CF_val, !mcsema_real_eip !58
  store i1 %625, i1* %CF, align 1, !mcsema_real_eip !58
  %626 = load i1* %PF_val, !mcsema_real_eip !58
  store i1 %626, i1* %PF, align 1, !mcsema_real_eip !58
  %627 = load i1* %AF_val, !mcsema_real_eip !58
  store i1 %627, i1* %AF, align 1, !mcsema_real_eip !58
  %628 = load i1* %ZF_val, !mcsema_real_eip !58
  store i1 %628, i1* %ZF, align 1, !mcsema_real_eip !58
  %629 = load i1* %SF_val, !mcsema_real_eip !58
  store i1 %629, i1* %SF, align 1, !mcsema_real_eip !58
  %630 = load i1* %OF_val, !mcsema_real_eip !58
  store i1 %630, i1* %OF, align 1, !mcsema_real_eip !58
  %631 = load i1* %DF_val, !mcsema_real_eip !58
  store i1 %631, i1* %DF, align 1, !mcsema_real_eip !58
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !58
  %632 = load i1* %FPU_B_val, !mcsema_real_eip !58
  store i1 %632, i1* %FPU_B, align 1, !mcsema_real_eip !58
  %633 = load i1* %FPU_C3_val, !mcsema_real_eip !58
  store i1 %633, i1* %FPU_C3, align 1, !mcsema_real_eip !58
  %634 = load i3* %FPU_TOP_val, !mcsema_real_eip !58
  store i3 %634, i3* %FPU_TOP, align 1, !mcsema_real_eip !58
  %635 = load i1* %FPU_C2_val, !mcsema_real_eip !58
  store i1 %635, i1* %FPU_C2, align 1, !mcsema_real_eip !58
  %636 = load i1* %FPU_C1_val, !mcsema_real_eip !58
  store i1 %636, i1* %FPU_C1, align 1, !mcsema_real_eip !58
  %637 = load i1* %FPU_C0_val, !mcsema_real_eip !58
  store i1 %637, i1* %FPU_C0, align 1, !mcsema_real_eip !58
  %638 = load i1* %FPU_ES_val, !mcsema_real_eip !58
  store i1 %638, i1* %FPU_ES, align 1, !mcsema_real_eip !58
  %639 = load i1* %FPU_SF_val, !mcsema_real_eip !58
  store i1 %639, i1* %FPU_SF, align 1, !mcsema_real_eip !58
  %640 = load i1* %FPU_PE_val, !mcsema_real_eip !58
  store i1 %640, i1* %FPU_PE, align 1, !mcsema_real_eip !58
  %641 = load i1* %FPU_UE_val, !mcsema_real_eip !58
  store i1 %641, i1* %FPU_UE, align 1, !mcsema_real_eip !58
  %642 = load i1* %FPU_OE_val, !mcsema_real_eip !58
  store i1 %642, i1* %FPU_OE, align 1, !mcsema_real_eip !58
  %643 = load i1* %FPU_ZE_val, !mcsema_real_eip !58
  store i1 %643, i1* %FPU_ZE, align 1, !mcsema_real_eip !58
  %644 = load i1* %FPU_DE_val, !mcsema_real_eip !58
  store i1 %644, i1* %FPU_DE, align 1, !mcsema_real_eip !58
  %645 = load i1* %FPU_IE_val, !mcsema_real_eip !58
  store i1 %645, i1* %FPU_IE, align 1, !mcsema_real_eip !58
  %646 = load i1* %FPU_X_val, !mcsema_real_eip !58
  store i1 %646, i1* %FPU_X, align 1, !mcsema_real_eip !58
  %647 = load i2* %FPU_RC_val, !mcsema_real_eip !58
  store i2 %647, i2* %FPU_RC, align 1, !mcsema_real_eip !58
  %648 = load i2* %FPU_PC_val, !mcsema_real_eip !58
  store i2 %648, i2* %FPU_PC, align 1, !mcsema_real_eip !58
  %649 = load i1* %FPU_PM_val, !mcsema_real_eip !58
  store i1 %649, i1* %FPU_PM, align 1, !mcsema_real_eip !58
  %650 = load i1* %FPU_UM_val, !mcsema_real_eip !58
  store i1 %650, i1* %FPU_UM, align 1, !mcsema_real_eip !58
  %651 = load i1* %FPU_OM_val, !mcsema_real_eip !58
  store i1 %651, i1* %FPU_OM, align 1, !mcsema_real_eip !58
  %652 = load i1* %FPU_ZM_val, !mcsema_real_eip !58
  store i1 %652, i1* %FPU_ZM, align 1, !mcsema_real_eip !58
  %653 = load i1* %FPU_DM_val, !mcsema_real_eip !58
  store i1 %653, i1* %FPU_DM, align 1, !mcsema_real_eip !58
  %654 = load i1* %FPU_IM_val, !mcsema_real_eip !58
  store i1 %654, i1* %FPU_IM, align 1, !mcsema_real_eip !58
  %655 = load i64* %53, align 4
  store i64 %655, i64* %52, align 4
  %656 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !58
  store i16 %656, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !58
  %657 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !58
  store i64 %657, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !58
  %658 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !58
  store i16 %658, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !58
  %659 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !58
  store i64 %659, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !58
  %660 = load i128* %XMM0_val, !mcsema_real_eip !58
  store i128 %660, i128* %XMM0, align 1, !mcsema_real_eip !58
  %661 = load i128* %XMM1_val, !mcsema_real_eip !58
  store i128 %661, i128* %XMM1, align 1, !mcsema_real_eip !58
  %662 = load i128* %XMM2_val, !mcsema_real_eip !58
  store i128 %662, i128* %XMM2, align 1, !mcsema_real_eip !58
  %663 = load i128* %XMM3_val, !mcsema_real_eip !58
  store i128 %663, i128* %XMM3, align 1, !mcsema_real_eip !58
  %664 = load i128* %XMM4_val, !mcsema_real_eip !58
  store i128 %664, i128* %XMM4, align 1, !mcsema_real_eip !58
  %665 = load i128* %XMM5_val, !mcsema_real_eip !58
  store i128 %665, i128* %XMM5, align 1, !mcsema_real_eip !58
  %666 = load i128* %XMM6_val, !mcsema_real_eip !58
  store i128 %666, i128* %XMM6, align 1, !mcsema_real_eip !58
  %667 = load i128* %XMM7_val, !mcsema_real_eip !58
  store i128 %667, i128* %XMM7, align 1, !mcsema_real_eip !58
  %668 = load i128* %XMM8_val, !mcsema_real_eip !58
  store i128 %668, i128* %XMM8, align 1, !mcsema_real_eip !58
  %669 = load i128* %XMM9_val, !mcsema_real_eip !58
  store i128 %669, i128* %XMM9, align 1, !mcsema_real_eip !58
  %670 = load i128* %XMM10_val, !mcsema_real_eip !58
  store i128 %670, i128* %XMM10, align 1, !mcsema_real_eip !58
  %671 = load i128* %XMM11_val, !mcsema_real_eip !58
  store i128 %671, i128* %XMM11, align 1, !mcsema_real_eip !58
  %672 = load i128* %XMM12_val, !mcsema_real_eip !58
  store i128 %672, i128* %XMM12, align 1, !mcsema_real_eip !58
  %673 = load i128* %XMM13_val, !mcsema_real_eip !58
  store i128 %673, i128* %XMM13, align 1, !mcsema_real_eip !58
  %674 = load i128* %XMM14_val, !mcsema_real_eip !58
  store i128 %674, i128* %XMM14, align 1, !mcsema_real_eip !58
  %675 = load i128* %XMM15_val, !mcsema_real_eip !58
  store i128 %675, i128* %XMM15, align 1, !mcsema_real_eip !58
  %676 = load i64* %STACK_BASE_val, !mcsema_real_eip !58
  store i64 %676, i64* %STACK_BASE, align 1, !mcsema_real_eip !58
  %677 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !58
  store i64 %677, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !58
  ret void, !mcsema_real_eip !58
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
!4 = metadata !{i64 4, [16 x i8] c"\09subq\09$32, %rsp\00"}
!5 = metadata !{i64 8, [22 x i8] c"\09movq\09-32(%rbp), %rdx\00"}
!6 = metadata !{i64 12, [22 x i8] c"\09movl\09-24(%rbp), %ecx\00"}
!7 = metadata !{i64 15, [22 x i8] c"\09movq\09-16(%rbp), %rsi\00"}
!8 = metadata !{i64 19, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!9 = metadata !{i64 22, [17 x i8] c"\09movq\09%rsi, %rdi\00"}
!10 = metadata !{i64 25, [17 x i8] c"\09movl\09%eax, %esi\00"}
!11 = metadata !{i64 27, [9 x i8] c"\09callq\090\00"}
!12 = metadata !{i64 32, [15 x i8] c"\09movl\09$0, %eax\00"}
!13 = metadata !{i64 37, [7 x i8] c"\09leave\00"}
!14 = metadata !{i64 38, [6 x i8] c"\09retq\00"}
!15 = metadata !{i64 39, [12 x i8] c"\09pushq\09%rbp\00"}
!16 = metadata !{i64 40, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!17 = metadata !{i64 43, [17 x i8] c"\09movl\09%ecx, %eax\00"}
!18 = metadata !{i64 45, [22 x i8] c"\09movq\09%rdi, -48(%rbp)\00"}
!19 = metadata !{i64 49, [22 x i8] c"\09movl\09%esi, -40(%rbp)\00"}
!20 = metadata !{i64 52, [22 x i8] c"\09movq\09%rdx, -64(%rbp)\00"}
!21 = metadata !{i64 56, [22 x i8] c"\09movl\09%eax, -56(%rbp)\00"}
!22 = metadata !{i64 59, [22 x i8] c"\09movl\09-64(%rbp), %edx\00"}
!23 = metadata !{i64 62, [22 x i8] c"\09movl\09-48(%rbp), %eax\00"}
!24 = metadata !{i64 65, [17 x i8] c"\09cmpl\09%eax, %edx\00"}
!25 = metadata !{i64 67, [8 x i8] c"\09jle\0918\00"}
!26 = metadata !{i64 87, [22 x i8] c"\09movl\09-48(%rbp), %edx\00"}
!27 = metadata !{i64 90, [22 x i8] c"\09movl\09-64(%rbp), %eax\00"}
!28 = metadata !{i64 93, [17 x i8] c"\09subl\09%eax, %edx\00"}
!29 = metadata !{i64 95, [17 x i8] c"\09movl\09%edx, %eax\00"}
!30 = metadata !{i64 97, [22 x i8] c"\09movl\09%eax, -32(%rbp)\00"}
!31 = metadata !{i64 100, [22 x i8] c"\09movl\09-60(%rbp), %edx\00"}
!32 = metadata !{i64 103, [22 x i8] c"\09movl\09-44(%rbp), %eax\00"}
!33 = metadata !{i64 106, [17 x i8] c"\09cmpl\09%eax, %edx\00"}
!34 = metadata !{i64 108, [8 x i8] c"\09jle\0918\00"}
!35 = metadata !{i64 69, [22 x i8] c"\09movl\09-44(%rbp), %eax\00"}
!36 = metadata !{i64 72, [15 x i8] c"\09subl\09$1, %eax\00"}
!37 = metadata !{i64 75, [22 x i8] c"\09movl\09%eax, -44(%rbp)\00"}
!38 = metadata !{i64 78, [22 x i8] c"\09movl\09-48(%rbp), %eax\00"}
!39 = metadata !{i64 81, [16 x i8] c"\09addl\09$60, %eax\00"}
!40 = metadata !{i64 84, [22 x i8] c"\09movl\09%eax, -48(%rbp)\00"}
!41 = metadata !{i64 128, [22 x i8] c"\09movl\09-44(%rbp), %edx\00"}
!42 = metadata !{i64 131, [22 x i8] c"\09movl\09-60(%rbp), %eax\00"}
!43 = metadata !{i64 134, [17 x i8] c"\09subl\09%eax, %edx\00"}
!44 = metadata !{i64 136, [17 x i8] c"\09movl\09%edx, %eax\00"}
!45 = metadata !{i64 138, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
!46 = metadata !{i64 141, [22 x i8] c"\09movl\09-40(%rbp), %edx\00"}
!47 = metadata !{i64 144, [22 x i8] c"\09movl\09-56(%rbp), %eax\00"}
!48 = metadata !{i64 147, [17 x i8] c"\09subl\09%eax, %edx\00"}
!49 = metadata !{i64 149, [17 x i8] c"\09movl\09%edx, %eax\00"}
!50 = metadata !{i64 151, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!51 = metadata !{i64 154, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!52 = metadata !{i64 158, [22 x i8] c"\09movq\09%rax, -16(%rbp)\00"}
!53 = metadata !{i64 162, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!54 = metadata !{i64 165, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!55 = metadata !{i64 168, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!56 = metadata !{i64 172, [21 x i8] c"\09movl\09-8(%rbp), %edx\00"}
!57 = metadata !{i64 175, [11 x i8] c"\09popq\09%rbp\00"}
!58 = metadata !{i64 176, [6 x i8] c"\09retq\00"}
!59 = metadata !{i64 110, [22 x i8] c"\09movl\09-40(%rbp), %eax\00"}
!60 = metadata !{i64 113, [15 x i8] c"\09subl\09$1, %eax\00"}
!61 = metadata !{i64 116, [22 x i8] c"\09movl\09%eax, -40(%rbp)\00"}
!62 = metadata !{i64 119, [22 x i8] c"\09movl\09-44(%rbp), %eax\00"}
!63 = metadata !{i64 122, [16 x i8] c"\09addl\09$60, %eax\00"}
!64 = metadata !{i64 125, [22 x i8] c"\09movl\09%eax, -44(%rbp)\00"}
