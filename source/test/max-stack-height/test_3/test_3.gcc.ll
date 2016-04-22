; ModuleID = 'test_3.bc'
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
  %81 = add i64 %78, -28, !mcsema_real_eip !4
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !4
  %83 = load i64* %RDI_val, !mcsema_real_eip !4
  %84 = trunc i64 %83 to i32, !mcsema_real_eip !4
  %85 = bitcast i64* %82 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !4
  %86 = load i64* %RBP_val, !mcsema_real_eip !5
  %87 = add i64 %86, -24, !mcsema_real_eip !5
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !5
  %89 = load i64* %RSI_val, !mcsema_real_eip !5
  %90 = trunc i64 %89 to i32, !mcsema_real_eip !5
  %91 = bitcast i64* %88 to i32*
  store i32 %90, i32* %91, !mcsema_real_eip !5
  %92 = load i64* %RBP_val, !mcsema_real_eip !6
  %93 = add i64 %92, -24, !mcsema_real_eip !6
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !6
  %95 = bitcast i64* %94 to i32*
  %96 = load i32* %95, !mcsema_real_eip !6
  %97 = zext i32 %96 to i64, !mcsema_real_eip !6
  store i64 %97, i64* %RAX_val, !mcsema_real_eip !6
  %98 = load i64* %RBP_val, !mcsema_real_eip !7
  %99 = add i64 %98, -20, !mcsema_real_eip !7
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !7
  %101 = bitcast i64* %100 to i32*
  %102 = load i32* %101, !mcsema_real_eip !7
  %103 = zext i32 %102 to i64, !mcsema_real_eip !7
  store i64 %103, i64* %RDX_val, !mcsema_real_eip !7
  %104 = load i64* %RAX_val, !mcsema_real_eip !8
  %105 = trunc i64 %104 to i32, !mcsema_real_eip !8
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %102, i32 %105)
  %106 = extractvalue { i32, i1 } %uadd, 0
  %107 = xor i32 %106, %105, !mcsema_real_eip !8
  %108 = xor i32 %107, %102, !mcsema_real_eip !8
  %109 = and i32 %108, 16, !mcsema_real_eip !8
  %110 = icmp ne i32 %109, 0, !mcsema_real_eip !8
  store i1 %110, i1* %AF_val, !mcsema_real_eip !8
  %111 = icmp slt i32 %106, 0
  store i1 %111, i1* %SF_val, !mcsema_real_eip !8
  %112 = icmp eq i32 %106, 0, !mcsema_real_eip !8
  store i1 %112, i1* %ZF_val, !mcsema_real_eip !8
  %113 = xor i32 %102, -2147483648, !mcsema_real_eip !8
  %114 = xor i32 %113, %105, !mcsema_real_eip !8
  %115 = and i32 %107, %114, !mcsema_real_eip !8
  %116 = icmp slt i32 %115, 0
  store i1 %116, i1* %OF_val, !mcsema_real_eip !8
  %117 = trunc i32 %106 to i8, !mcsema_real_eip !8
  %118 = tail call i8 @llvm.ctpop.i8(i8 %117), !mcsema_real_eip !8
  %119 = and i8 %118, 1
  %120 = icmp eq i8 %119, 0
  store i1 %120, i1* %PF_val, !mcsema_real_eip !8
  %121 = extractvalue { i32, i1 } %uadd, 1
  store i1 %121, i1* %CF_val, !mcsema_real_eip !8
  %122 = zext i32 %106 to i64, !mcsema_real_eip !8
  store i64 %122, i64* %RAX_val, !mcsema_real_eip !8
  %123 = load i64* %RBP_val, !mcsema_real_eip !9
  %124 = add i64 %123, -4, !mcsema_real_eip !9
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !9
  %126 = bitcast i64* %125 to i32*
  store i32 %106, i32* %126, !mcsema_real_eip !9
  %127 = load i64* %RBP_val, !mcsema_real_eip !10
  %128 = add i64 %127, -20, !mcsema_real_eip !10
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !10
  %130 = bitcast i64* %129 to i32*
  %131 = load i32* %130, !mcsema_real_eip !10
  %132 = add i32 %131, -40
  %133 = xor i32 %132, %131, !mcsema_real_eip !10
  %134 = and i32 %133, 16, !mcsema_real_eip !10
  %135 = icmp ne i32 %134, 0, !mcsema_real_eip !10
  store i1 %135, i1* %AF_val, !mcsema_real_eip !10
  %136 = trunc i32 %132 to i8, !mcsema_real_eip !10
  %137 = tail call i8 @llvm.ctpop.i8(i8 %136), !mcsema_real_eip !10
  %138 = and i8 %137, 1
  %139 = icmp eq i8 %138, 0
  store i1 %139, i1* %PF_val, !mcsema_real_eip !10
  %140 = icmp eq i32 %132, 0, !mcsema_real_eip !10
  store i1 %140, i1* %ZF_val, !mcsema_real_eip !10
  %141 = icmp slt i32 %132, 0
  store i1 %141, i1* %SF_val, !mcsema_real_eip !10
  %142 = icmp ult i32 %131, 40, !mcsema_real_eip !10
  store i1 %142, i1* %CF_val, !mcsema_real_eip !10
  %143 = and i32 %133, %131, !mcsema_real_eip !10
  %144 = icmp slt i32 %143, 0
  store i1 %144, i1* %OF_val, !mcsema_real_eip !10
  %145 = xor i1 %141, %144
  %146 = load i1* %ZF_val, !mcsema_real_eip !11
  %147 = or i1 %146, %145, !mcsema_real_eip !11
  %148 = load i64* %RBP_val, !mcsema_real_eip !12
  %149 = add i64 %148, -4, !mcsema_real_eip !12
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !12
  %151 = bitcast i64* %150 to i32*
  %152 = load i32* %151, !mcsema_real_eip !12
  br i1 %147, label %block_0x21, label %block_0x1b, !mcsema_real_eip !11

block_0x21:                                       ; preds = %entry
  %153 = add i32 %152, -10
  %154 = xor i32 %153, %152, !mcsema_real_eip !13
  %155 = and i32 %154, 16, !mcsema_real_eip !13
  %156 = icmp ne i32 %155, 0, !mcsema_real_eip !13
  store i1 %156, i1* %AF_val, !mcsema_real_eip !13
  %157 = trunc i32 %153 to i8, !mcsema_real_eip !13
  %158 = tail call i8 @llvm.ctpop.i8(i8 %157), !mcsema_real_eip !13
  %159 = and i8 %158, 1
  %160 = icmp eq i8 %159, 0
  store i1 %160, i1* %PF_val, !mcsema_real_eip !13
  %161 = icmp eq i32 %153, 0, !mcsema_real_eip !13
  store i1 %161, i1* %ZF_val, !mcsema_real_eip !13
  %162 = icmp slt i32 %153, 0
  store i1 %162, i1* %SF_val, !mcsema_real_eip !13
  %163 = icmp ult i32 %152, 10, !mcsema_real_eip !13
  store i1 %163, i1* %CF_val, !mcsema_real_eip !13
  %164 = and i32 %154, %152, !mcsema_real_eip !13
  %165 = icmp slt i32 %164, 0
  store i1 %165, i1* %OF_val, !mcsema_real_eip !13
  %166 = zext i32 %153 to i64, !mcsema_real_eip !13
  store i64 %166, i64* %RAX_val, !mcsema_real_eip !13
  %167 = load i64* %RBP_val, !mcsema_real_eip !14
  %168 = add i64 %167, -8, !mcsema_real_eip !14
  %169 = inttoptr i64 %168 to i64*, !mcsema_real_eip !14
  %170 = bitcast i64* %169 to i32*
  store i32 %153, i32* %170, !mcsema_real_eip !14
  %171 = load i64* %RBP_val, !mcsema_real_eip !15
  %172 = add i64 %171, -4, !mcsema_real_eip !15
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !15
  %174 = bitcast i64* %173 to i32*
  %175 = load i32* %174, !mcsema_real_eip !15
  %176 = zext i32 %175 to i64, !mcsema_real_eip !15
  store i64 %176, i64* %RAX_val, !mcsema_real_eip !15
  %177 = load i64* %RSP_val, !mcsema_real_eip !16
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !16
  %179 = load i64* %178, !mcsema_real_eip !16
  store i64 %179, i64* %RBP_val, !mcsema_real_eip !16
  %180 = add i64 %177, 16, !mcsema_real_eip !17
  store i64 %180, i64* %RSP_val, !mcsema_real_eip !17
  %181 = load i64* %RAX_val, !mcsema_real_eip !17
  store i64 %181, i64* %RAX, !mcsema_real_eip !17
  %182 = load i64* %RBX_val, !mcsema_real_eip !17
  store i64 %182, i64* %RBX, !mcsema_real_eip !17
  %183 = load i64* %RCX_val, !mcsema_real_eip !17
  store i64 %183, i64* %RCX, !mcsema_real_eip !17
  %184 = load i64* %RDX_val, !mcsema_real_eip !17
  store i64 %184, i64* %RDX, !mcsema_real_eip !17
  %185 = load i64* %RSI_val, !mcsema_real_eip !17
  store i64 %185, i64* %RSI, !mcsema_real_eip !17
  %186 = load i64* %RDI_val, !mcsema_real_eip !17
  store i64 %186, i64* %RDI, !mcsema_real_eip !17
  %187 = load i64* %RSP_val, !mcsema_real_eip !17
  store i64 %187, i64* %RSP, !mcsema_real_eip !17
  %188 = load i64* %RBP_val, !mcsema_real_eip !17
  store i64 %188, i64* %RBP, !mcsema_real_eip !17
  %189 = load i64* %R8_val, !mcsema_real_eip !17
  store i64 %189, i64* %R8, !mcsema_real_eip !17
  %190 = load i64* %R9_val, !mcsema_real_eip !17
  store i64 %190, i64* %R9, !mcsema_real_eip !17
  %191 = load i64* %R10_val, !mcsema_real_eip !17
  store i64 %191, i64* %R10, !mcsema_real_eip !17
  %192 = load i64* %R11_val, !mcsema_real_eip !17
  store i64 %192, i64* %R11, !mcsema_real_eip !17
  %193 = load i64* %R12_val, !mcsema_real_eip !17
  store i64 %193, i64* %R12, !mcsema_real_eip !17
  %194 = load i64* %R13_val, !mcsema_real_eip !17
  store i64 %194, i64* %R13, !mcsema_real_eip !17
  %195 = load i64* %R14_val, !mcsema_real_eip !17
  store i64 %195, i64* %R14, !mcsema_real_eip !17
  %196 = load i64* %R15_val, !mcsema_real_eip !17
  store i64 %196, i64* %R15, !mcsema_real_eip !17
  %197 = load i64* %RIP_val, !mcsema_real_eip !17
  store i64 %197, i64* %RIP, !mcsema_real_eip !17
  %198 = load i1* %CF_val, !mcsema_real_eip !17
  store i1 %198, i1* %CF, align 1, !mcsema_real_eip !17
  %199 = load i1* %PF_val, !mcsema_real_eip !17
  store i1 %199, i1* %PF, align 1, !mcsema_real_eip !17
  %200 = load i1* %AF_val, !mcsema_real_eip !17
  store i1 %200, i1* %AF, align 1, !mcsema_real_eip !17
  %201 = load i1* %ZF_val, !mcsema_real_eip !17
  store i1 %201, i1* %ZF, align 1, !mcsema_real_eip !17
  %202 = load i1* %SF_val, !mcsema_real_eip !17
  store i1 %202, i1* %SF, align 1, !mcsema_real_eip !17
  %203 = load i1* %OF_val, !mcsema_real_eip !17
  store i1 %203, i1* %OF, align 1, !mcsema_real_eip !17
  %204 = load i1* %DF_val, !mcsema_real_eip !17
  store i1 %204, i1* %DF, align 1, !mcsema_real_eip !17
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !17
  %205 = load i1* %FPU_B_val, !mcsema_real_eip !17
  store i1 %205, i1* %FPU_B, align 1, !mcsema_real_eip !17
  %206 = load i1* %FPU_C3_val, !mcsema_real_eip !17
  store i1 %206, i1* %FPU_C3, align 1, !mcsema_real_eip !17
  %207 = load i3* %FPU_TOP_val, !mcsema_real_eip !17
  store i3 %207, i3* %FPU_TOP, align 1, !mcsema_real_eip !17
  %208 = load i1* %FPU_C2_val, !mcsema_real_eip !17
  store i1 %208, i1* %FPU_C2, align 1, !mcsema_real_eip !17
  %209 = load i1* %FPU_C1_val, !mcsema_real_eip !17
  store i1 %209, i1* %FPU_C1, align 1, !mcsema_real_eip !17
  %210 = load i1* %FPU_C0_val, !mcsema_real_eip !17
  store i1 %210, i1* %FPU_C0, align 1, !mcsema_real_eip !17
  %211 = load i1* %FPU_ES_val, !mcsema_real_eip !17
  store i1 %211, i1* %FPU_ES, align 1, !mcsema_real_eip !17
  %212 = load i1* %FPU_SF_val, !mcsema_real_eip !17
  store i1 %212, i1* %FPU_SF, align 1, !mcsema_real_eip !17
  %213 = load i1* %FPU_PE_val, !mcsema_real_eip !17
  store i1 %213, i1* %FPU_PE, align 1, !mcsema_real_eip !17
  %214 = load i1* %FPU_UE_val, !mcsema_real_eip !17
  store i1 %214, i1* %FPU_UE, align 1, !mcsema_real_eip !17
  %215 = load i1* %FPU_OE_val, !mcsema_real_eip !17
  store i1 %215, i1* %FPU_OE, align 1, !mcsema_real_eip !17
  %216 = load i1* %FPU_ZE_val, !mcsema_real_eip !17
  store i1 %216, i1* %FPU_ZE, align 1, !mcsema_real_eip !17
  %217 = load i1* %FPU_DE_val, !mcsema_real_eip !17
  store i1 %217, i1* %FPU_DE, align 1, !mcsema_real_eip !17
  %218 = load i1* %FPU_IE_val, !mcsema_real_eip !17
  store i1 %218, i1* %FPU_IE, align 1, !mcsema_real_eip !17
  %219 = load i1* %FPU_X_val, !mcsema_real_eip !17
  store i1 %219, i1* %FPU_X, align 1, !mcsema_real_eip !17
  %220 = load i2* %FPU_RC_val, !mcsema_real_eip !17
  store i2 %220, i2* %FPU_RC, align 1, !mcsema_real_eip !17
  %221 = load i2* %FPU_PC_val, !mcsema_real_eip !17
  store i2 %221, i2* %FPU_PC, align 1, !mcsema_real_eip !17
  %222 = load i1* %FPU_PM_val, !mcsema_real_eip !17
  store i1 %222, i1* %FPU_PM, align 1, !mcsema_real_eip !17
  %223 = load i1* %FPU_UM_val, !mcsema_real_eip !17
  store i1 %223, i1* %FPU_UM, align 1, !mcsema_real_eip !17
  %224 = load i1* %FPU_OM_val, !mcsema_real_eip !17
  store i1 %224, i1* %FPU_OM, align 1, !mcsema_real_eip !17
  %225 = load i1* %FPU_ZM_val, !mcsema_real_eip !17
  store i1 %225, i1* %FPU_ZM, align 1, !mcsema_real_eip !17
  %226 = load i1* %FPU_DM_val, !mcsema_real_eip !17
  store i1 %226, i1* %FPU_DM, align 1, !mcsema_real_eip !17
  %227 = load i1* %FPU_IM_val, !mcsema_real_eip !17
  store i1 %227, i1* %FPU_IM, align 1, !mcsema_real_eip !17
  %228 = load i64* %53, align 4
  store i64 %228, i64* %52, align 4
  %229 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !17
  store i16 %229, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !17
  %230 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !17
  store i64 %230, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !17
  %231 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !17
  store i16 %231, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !17
  %232 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !17
  store i64 %232, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !17
  %233 = load i128* %XMM0_val, !mcsema_real_eip !17
  store i128 %233, i128* %XMM0, align 1, !mcsema_real_eip !17
  %234 = load i128* %XMM1_val, !mcsema_real_eip !17
  store i128 %234, i128* %XMM1, align 1, !mcsema_real_eip !17
  %235 = load i128* %XMM2_val, !mcsema_real_eip !17
  store i128 %235, i128* %XMM2, align 1, !mcsema_real_eip !17
  %236 = load i128* %XMM3_val, !mcsema_real_eip !17
  store i128 %236, i128* %XMM3, align 1, !mcsema_real_eip !17
  %237 = load i128* %XMM4_val, !mcsema_real_eip !17
  store i128 %237, i128* %XMM4, align 1, !mcsema_real_eip !17
  %238 = load i128* %XMM5_val, !mcsema_real_eip !17
  store i128 %238, i128* %XMM5, align 1, !mcsema_real_eip !17
  %239 = load i128* %XMM6_val, !mcsema_real_eip !17
  store i128 %239, i128* %XMM6, align 1, !mcsema_real_eip !17
  %240 = load i128* %XMM7_val, !mcsema_real_eip !17
  store i128 %240, i128* %XMM7, align 1, !mcsema_real_eip !17
  %241 = load i128* %XMM8_val, !mcsema_real_eip !17
  store i128 %241, i128* %XMM8, align 1, !mcsema_real_eip !17
  %242 = load i128* %XMM9_val, !mcsema_real_eip !17
  store i128 %242, i128* %XMM9, align 1, !mcsema_real_eip !17
  %243 = load i128* %XMM10_val, !mcsema_real_eip !17
  store i128 %243, i128* %XMM10, align 1, !mcsema_real_eip !17
  %244 = load i128* %XMM11_val, !mcsema_real_eip !17
  store i128 %244, i128* %XMM11, align 1, !mcsema_real_eip !17
  %245 = load i128* %XMM12_val, !mcsema_real_eip !17
  store i128 %245, i128* %XMM12, align 1, !mcsema_real_eip !17
  %246 = load i128* %XMM13_val, !mcsema_real_eip !17
  store i128 %246, i128* %XMM13, align 1, !mcsema_real_eip !17
  %247 = load i128* %XMM14_val, !mcsema_real_eip !17
  store i128 %247, i128* %XMM14, align 1, !mcsema_real_eip !17
  %248 = load i128* %XMM15_val, !mcsema_real_eip !17
  store i128 %248, i128* %XMM15, align 1, !mcsema_real_eip !17
  %249 = load i64* %STACK_BASE_val, !mcsema_real_eip !17
  store i64 %249, i64* %STACK_BASE, align 1, !mcsema_real_eip !17
  %250 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !17
  store i64 %250, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !17
  ret void, !mcsema_real_eip !17

block_0x1b:                                       ; preds = %entry
  %uadd140 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %152, i32 10)
  %251 = extractvalue { i32, i1 } %uadd140, 0
  %252 = xor i32 %251, %152, !mcsema_real_eip !18
  %253 = and i32 %252, 16, !mcsema_real_eip !18
  %254 = icmp ne i32 %253, 0, !mcsema_real_eip !18
  store i1 %254, i1* %AF_val, !mcsema_real_eip !18
  %255 = icmp slt i32 %251, 0
  store i1 %255, i1* %SF_val, !mcsema_real_eip !18
  %256 = icmp eq i32 %251, 0, !mcsema_real_eip !18
  store i1 %256, i1* %ZF_val, !mcsema_real_eip !18
  %257 = xor i32 %152, -2147483648, !mcsema_real_eip !18
  %258 = and i32 %252, %257, !mcsema_real_eip !18
  %259 = icmp slt i32 %258, 0
  store i1 %259, i1* %OF_val, !mcsema_real_eip !18
  %260 = trunc i32 %251 to i8, !mcsema_real_eip !18
  %261 = tail call i8 @llvm.ctpop.i8(i8 %260), !mcsema_real_eip !18
  %262 = and i8 %261, 1
  %263 = icmp eq i8 %262, 0
  store i1 %263, i1* %PF_val, !mcsema_real_eip !18
  %264 = extractvalue { i32, i1 } %uadd140, 1
  store i1 %264, i1* %CF_val, !mcsema_real_eip !18
  store i32 %251, i32* %151, !mcsema_real_eip !18
  %265 = load i64* %RBP_val, !mcsema_real_eip !15
  %266 = add i64 %265, -4, !mcsema_real_eip !15
  %267 = inttoptr i64 %266 to i64*, !mcsema_real_eip !15
  %268 = bitcast i64* %267 to i32*
  %269 = load i32* %268, !mcsema_real_eip !15
  %270 = zext i32 %269 to i64, !mcsema_real_eip !15
  store i64 %270, i64* %RAX_val, !mcsema_real_eip !15
  %271 = load i64* %RSP_val, !mcsema_real_eip !16
  %272 = inttoptr i64 %271 to i64*, !mcsema_real_eip !16
  %273 = load i64* %272, !mcsema_real_eip !16
  store i64 %273, i64* %RBP_val, !mcsema_real_eip !16
  %274 = add i64 %271, 16, !mcsema_real_eip !17
  store i64 %274, i64* %RSP_val, !mcsema_real_eip !17
  %275 = load i64* %RAX_val, !mcsema_real_eip !17
  store i64 %275, i64* %RAX, !mcsema_real_eip !17
  %276 = load i64* %RBX_val, !mcsema_real_eip !17
  store i64 %276, i64* %RBX, !mcsema_real_eip !17
  %277 = load i64* %RCX_val, !mcsema_real_eip !17
  store i64 %277, i64* %RCX, !mcsema_real_eip !17
  %278 = load i64* %RDX_val, !mcsema_real_eip !17
  store i64 %278, i64* %RDX, !mcsema_real_eip !17
  %279 = load i64* %RSI_val, !mcsema_real_eip !17
  store i64 %279, i64* %RSI, !mcsema_real_eip !17
  %280 = load i64* %RDI_val, !mcsema_real_eip !17
  store i64 %280, i64* %RDI, !mcsema_real_eip !17
  %281 = load i64* %RSP_val, !mcsema_real_eip !17
  store i64 %281, i64* %RSP, !mcsema_real_eip !17
  %282 = load i64* %RBP_val, !mcsema_real_eip !17
  store i64 %282, i64* %RBP, !mcsema_real_eip !17
  %283 = load i64* %R8_val, !mcsema_real_eip !17
  store i64 %283, i64* %R8, !mcsema_real_eip !17
  %284 = load i64* %R9_val, !mcsema_real_eip !17
  store i64 %284, i64* %R9, !mcsema_real_eip !17
  %285 = load i64* %R10_val, !mcsema_real_eip !17
  store i64 %285, i64* %R10, !mcsema_real_eip !17
  %286 = load i64* %R11_val, !mcsema_real_eip !17
  store i64 %286, i64* %R11, !mcsema_real_eip !17
  %287 = load i64* %R12_val, !mcsema_real_eip !17
  store i64 %287, i64* %R12, !mcsema_real_eip !17
  %288 = load i64* %R13_val, !mcsema_real_eip !17
  store i64 %288, i64* %R13, !mcsema_real_eip !17
  %289 = load i64* %R14_val, !mcsema_real_eip !17
  store i64 %289, i64* %R14, !mcsema_real_eip !17
  %290 = load i64* %R15_val, !mcsema_real_eip !17
  store i64 %290, i64* %R15, !mcsema_real_eip !17
  %291 = load i64* %RIP_val, !mcsema_real_eip !17
  store i64 %291, i64* %RIP, !mcsema_real_eip !17
  %292 = load i1* %CF_val, !mcsema_real_eip !17
  store i1 %292, i1* %CF, align 1, !mcsema_real_eip !17
  %293 = load i1* %PF_val, !mcsema_real_eip !17
  store i1 %293, i1* %PF, align 1, !mcsema_real_eip !17
  %294 = load i1* %AF_val, !mcsema_real_eip !17
  store i1 %294, i1* %AF, align 1, !mcsema_real_eip !17
  %295 = load i1* %ZF_val, !mcsema_real_eip !17
  store i1 %295, i1* %ZF, align 1, !mcsema_real_eip !17
  %296 = load i1* %SF_val, !mcsema_real_eip !17
  store i1 %296, i1* %SF, align 1, !mcsema_real_eip !17
  %297 = load i1* %OF_val, !mcsema_real_eip !17
  store i1 %297, i1* %OF, align 1, !mcsema_real_eip !17
  %298 = load i1* %DF_val, !mcsema_real_eip !17
  store i1 %298, i1* %DF, align 1, !mcsema_real_eip !17
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !17
  %299 = load i1* %FPU_B_val, !mcsema_real_eip !17
  store i1 %299, i1* %FPU_B, align 1, !mcsema_real_eip !17
  %300 = load i1* %FPU_C3_val, !mcsema_real_eip !17
  store i1 %300, i1* %FPU_C3, align 1, !mcsema_real_eip !17
  %301 = load i3* %FPU_TOP_val, !mcsema_real_eip !17
  store i3 %301, i3* %FPU_TOP, align 1, !mcsema_real_eip !17
  %302 = load i1* %FPU_C2_val, !mcsema_real_eip !17
  store i1 %302, i1* %FPU_C2, align 1, !mcsema_real_eip !17
  %303 = load i1* %FPU_C1_val, !mcsema_real_eip !17
  store i1 %303, i1* %FPU_C1, align 1, !mcsema_real_eip !17
  %304 = load i1* %FPU_C0_val, !mcsema_real_eip !17
  store i1 %304, i1* %FPU_C0, align 1, !mcsema_real_eip !17
  %305 = load i1* %FPU_ES_val, !mcsema_real_eip !17
  store i1 %305, i1* %FPU_ES, align 1, !mcsema_real_eip !17
  %306 = load i1* %FPU_SF_val, !mcsema_real_eip !17
  store i1 %306, i1* %FPU_SF, align 1, !mcsema_real_eip !17
  %307 = load i1* %FPU_PE_val, !mcsema_real_eip !17
  store i1 %307, i1* %FPU_PE, align 1, !mcsema_real_eip !17
  %308 = load i1* %FPU_UE_val, !mcsema_real_eip !17
  store i1 %308, i1* %FPU_UE, align 1, !mcsema_real_eip !17
  %309 = load i1* %FPU_OE_val, !mcsema_real_eip !17
  store i1 %309, i1* %FPU_OE, align 1, !mcsema_real_eip !17
  %310 = load i1* %FPU_ZE_val, !mcsema_real_eip !17
  store i1 %310, i1* %FPU_ZE, align 1, !mcsema_real_eip !17
  %311 = load i1* %FPU_DE_val, !mcsema_real_eip !17
  store i1 %311, i1* %FPU_DE, align 1, !mcsema_real_eip !17
  %312 = load i1* %FPU_IE_val, !mcsema_real_eip !17
  store i1 %312, i1* %FPU_IE, align 1, !mcsema_real_eip !17
  %313 = load i1* %FPU_X_val, !mcsema_real_eip !17
  store i1 %313, i1* %FPU_X, align 1, !mcsema_real_eip !17
  %314 = load i2* %FPU_RC_val, !mcsema_real_eip !17
  store i2 %314, i2* %FPU_RC, align 1, !mcsema_real_eip !17
  %315 = load i2* %FPU_PC_val, !mcsema_real_eip !17
  store i2 %315, i2* %FPU_PC, align 1, !mcsema_real_eip !17
  %316 = load i1* %FPU_PM_val, !mcsema_real_eip !17
  store i1 %316, i1* %FPU_PM, align 1, !mcsema_real_eip !17
  %317 = load i1* %FPU_UM_val, !mcsema_real_eip !17
  store i1 %317, i1* %FPU_UM, align 1, !mcsema_real_eip !17
  %318 = load i1* %FPU_OM_val, !mcsema_real_eip !17
  store i1 %318, i1* %FPU_OM, align 1, !mcsema_real_eip !17
  %319 = load i1* %FPU_ZM_val, !mcsema_real_eip !17
  store i1 %319, i1* %FPU_ZM, align 1, !mcsema_real_eip !17
  %320 = load i1* %FPU_DM_val, !mcsema_real_eip !17
  store i1 %320, i1* %FPU_DM, align 1, !mcsema_real_eip !17
  %321 = load i1* %FPU_IM_val, !mcsema_real_eip !17
  store i1 %321, i1* %FPU_IM, align 1, !mcsema_real_eip !17
  %322 = load i64* %53, align 4
  store i64 %322, i64* %52, align 4
  %323 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !17
  store i16 %323, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !17
  %324 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !17
  store i64 %324, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !17
  %325 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !17
  store i16 %325, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !17
  %326 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !17
  store i64 %326, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !17
  %327 = load i128* %XMM0_val, !mcsema_real_eip !17
  store i128 %327, i128* %XMM0, align 1, !mcsema_real_eip !17
  %328 = load i128* %XMM1_val, !mcsema_real_eip !17
  store i128 %328, i128* %XMM1, align 1, !mcsema_real_eip !17
  %329 = load i128* %XMM2_val, !mcsema_real_eip !17
  store i128 %329, i128* %XMM2, align 1, !mcsema_real_eip !17
  %330 = load i128* %XMM3_val, !mcsema_real_eip !17
  store i128 %330, i128* %XMM3, align 1, !mcsema_real_eip !17
  %331 = load i128* %XMM4_val, !mcsema_real_eip !17
  store i128 %331, i128* %XMM4, align 1, !mcsema_real_eip !17
  %332 = load i128* %XMM5_val, !mcsema_real_eip !17
  store i128 %332, i128* %XMM5, align 1, !mcsema_real_eip !17
  %333 = load i128* %XMM6_val, !mcsema_real_eip !17
  store i128 %333, i128* %XMM6, align 1, !mcsema_real_eip !17
  %334 = load i128* %XMM7_val, !mcsema_real_eip !17
  store i128 %334, i128* %XMM7, align 1, !mcsema_real_eip !17
  %335 = load i128* %XMM8_val, !mcsema_real_eip !17
  store i128 %335, i128* %XMM8, align 1, !mcsema_real_eip !17
  %336 = load i128* %XMM9_val, !mcsema_real_eip !17
  store i128 %336, i128* %XMM9, align 1, !mcsema_real_eip !17
  %337 = load i128* %XMM10_val, !mcsema_real_eip !17
  store i128 %337, i128* %XMM10, align 1, !mcsema_real_eip !17
  %338 = load i128* %XMM11_val, !mcsema_real_eip !17
  store i128 %338, i128* %XMM11, align 1, !mcsema_real_eip !17
  %339 = load i128* %XMM12_val, !mcsema_real_eip !17
  store i128 %339, i128* %XMM12, align 1, !mcsema_real_eip !17
  %340 = load i128* %XMM13_val, !mcsema_real_eip !17
  store i128 %340, i128* %XMM13, align 1, !mcsema_real_eip !17
  %341 = load i128* %XMM14_val, !mcsema_real_eip !17
  store i128 %341, i128* %XMM14, align 1, !mcsema_real_eip !17
  %342 = load i128* %XMM15_val, !mcsema_real_eip !17
  store i128 %342, i128* %XMM15, align 1, !mcsema_real_eip !17
  %343 = load i64* %STACK_BASE_val, !mcsema_real_eip !17
  store i64 %343, i64* %STACK_BASE, align 1, !mcsema_real_eip !17
  %344 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !17
  store i64 %344, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !17
  ret void, !mcsema_real_eip !17
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
!4 = metadata !{i64 4, [22 x i8] c"\09movl\09%edi, -20(%rbp)\00"}
!5 = metadata !{i64 7, [22 x i8] c"\09movl\09%esi, -24(%rbp)\00"}
!6 = metadata !{i64 10, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!7 = metadata !{i64 13, [22 x i8] c"\09movl\09-20(%rbp), %edx\00"}
!8 = metadata !{i64 16, [17 x i8] c"\09addl\09%edx, %eax\00"}
!9 = metadata !{i64 18, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!10 = metadata !{i64 21, [21 x i8] c"\09cmpl\09$40, -20(%rbp)\00"}
!11 = metadata !{i64 25, [7 x i8] c"\09jle\096\00"}
!12 = metadata !{i64 33, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!13 = metadata !{i64 36, [16 x i8] c"\09subl\09$10, %eax\00"}
!14 = metadata !{i64 39, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!15 = metadata !{i64 42, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!16 = metadata !{i64 45, [11 x i8] c"\09popq\09%rbp\00"}
!17 = metadata !{i64 46, [6 x i8] c"\09retq\00"}
!18 = metadata !{i64 27, [20 x i8] c"\09addl\09$10, -4(%rbp)\00"}
