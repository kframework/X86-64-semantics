; ModuleID = 'test_1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_40(%struct.regs*) #0 {
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
  store i64 10, i64* %RDI_val, !mcsema_real_eip !5
  store i64 20, i64* %RSI_val, !mcsema_real_eip !6
  %94 = load i64* %RBP_val, !mcsema_real_eip !7
  %95 = add i64 %94, -4, !mcsema_real_eip !7
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !7
  %97 = bitcast i64* %96 to i32*
  store i32 0, i32* %97, !mcsema_real_eip !7
  %98 = load i64* %RSP_val, !mcsema_real_eip !8
  %99 = add i64 %98, -8
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !8
  store i64 -4981261766360305936, i64* %100, !mcsema_real_eip !8
  store i64 %99, i64* %RSP_val, !mcsema_real_eip !8
  %101 = load i64* %RAX_val, !mcsema_real_eip !8
  store i64 %101, i64* %RAX, !mcsema_real_eip !8
  %102 = load i64* %RBX_val, !mcsema_real_eip !8
  store i64 %102, i64* %RBX, !mcsema_real_eip !8
  %103 = load i64* %RCX_val, !mcsema_real_eip !8
  store i64 %103, i64* %RCX, !mcsema_real_eip !8
  %104 = load i64* %RDX_val, !mcsema_real_eip !8
  store i64 %104, i64* %RDX, !mcsema_real_eip !8
  %105 = load i64* %RSI_val, !mcsema_real_eip !8
  store i64 %105, i64* %RSI, !mcsema_real_eip !8
  %106 = load i64* %RDI_val, !mcsema_real_eip !8
  store i64 %106, i64* %RDI, !mcsema_real_eip !8
  %107 = load i64* %RSP_val, !mcsema_real_eip !8
  store i64 %107, i64* %RSP, !mcsema_real_eip !8
  %108 = load i64* %RBP_val, !mcsema_real_eip !8
  store i64 %108, i64* %RBP, !mcsema_real_eip !8
  %109 = load i64* %R8_val, !mcsema_real_eip !8
  store i64 %109, i64* %R8, !mcsema_real_eip !8
  %110 = load i64* %R9_val, !mcsema_real_eip !8
  store i64 %110, i64* %R9, !mcsema_real_eip !8
  %111 = load i64* %R10_val, !mcsema_real_eip !8
  store i64 %111, i64* %R10, !mcsema_real_eip !8
  %112 = load i64* %R11_val, !mcsema_real_eip !8
  store i64 %112, i64* %R11, !mcsema_real_eip !8
  %113 = load i64* %R12_val, !mcsema_real_eip !8
  store i64 %113, i64* %R12, !mcsema_real_eip !8
  %114 = load i64* %R13_val, !mcsema_real_eip !8
  store i64 %114, i64* %R13, !mcsema_real_eip !8
  %115 = load i64* %R14_val, !mcsema_real_eip !8
  store i64 %115, i64* %R14, !mcsema_real_eip !8
  %116 = load i64* %R15_val, !mcsema_real_eip !8
  store i64 %116, i64* %R15, !mcsema_real_eip !8
  %117 = load i64* %RIP_val, !mcsema_real_eip !8
  store i64 %117, i64* %RIP, !mcsema_real_eip !8
  %118 = load i1* %CF_val, !mcsema_real_eip !8
  store i1 %118, i1* %CF, align 1, !mcsema_real_eip !8
  %119 = load i1* %PF_val, !mcsema_real_eip !8
  store i1 %119, i1* %PF, align 1, !mcsema_real_eip !8
  %120 = load i1* %AF_val, !mcsema_real_eip !8
  store i1 %120, i1* %AF, align 1, !mcsema_real_eip !8
  %121 = load i1* %ZF_val, !mcsema_real_eip !8
  store i1 %121, i1* %ZF, align 1, !mcsema_real_eip !8
  %122 = load i1* %SF_val, !mcsema_real_eip !8
  store i1 %122, i1* %SF, align 1, !mcsema_real_eip !8
  %123 = load i1* %OF_val, !mcsema_real_eip !8
  store i1 %123, i1* %OF, align 1, !mcsema_real_eip !8
  %124 = load i1* %DF_val, !mcsema_real_eip !8
  store i1 %124, i1* %DF, align 1, !mcsema_real_eip !8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !8
  %125 = load i1* %FPU_B_val, !mcsema_real_eip !8
  store i1 %125, i1* %FPU_B, align 1, !mcsema_real_eip !8
  %126 = load i1* %FPU_C3_val, !mcsema_real_eip !8
  store i1 %126, i1* %FPU_C3, align 1, !mcsema_real_eip !8
  %127 = load i3* %FPU_TOP_val, !mcsema_real_eip !8
  store i3 %127, i3* %FPU_TOP, align 1, !mcsema_real_eip !8
  %128 = load i1* %FPU_C2_val, !mcsema_real_eip !8
  store i1 %128, i1* %FPU_C2, align 1, !mcsema_real_eip !8
  %129 = load i1* %FPU_C1_val, !mcsema_real_eip !8
  store i1 %129, i1* %FPU_C1, align 1, !mcsema_real_eip !8
  %130 = load i1* %FPU_C0_val, !mcsema_real_eip !8
  store i1 %130, i1* %FPU_C0, align 1, !mcsema_real_eip !8
  %131 = load i1* %FPU_ES_val, !mcsema_real_eip !8
  store i1 %131, i1* %FPU_ES, align 1, !mcsema_real_eip !8
  %132 = load i1* %FPU_SF_val, !mcsema_real_eip !8
  store i1 %132, i1* %FPU_SF, align 1, !mcsema_real_eip !8
  %133 = load i1* %FPU_PE_val, !mcsema_real_eip !8
  store i1 %133, i1* %FPU_PE, align 1, !mcsema_real_eip !8
  %134 = load i1* %FPU_UE_val, !mcsema_real_eip !8
  store i1 %134, i1* %FPU_UE, align 1, !mcsema_real_eip !8
  %135 = load i1* %FPU_OE_val, !mcsema_real_eip !8
  store i1 %135, i1* %FPU_OE, align 1, !mcsema_real_eip !8
  %136 = load i1* %FPU_ZE_val, !mcsema_real_eip !8
  store i1 %136, i1* %FPU_ZE, align 1, !mcsema_real_eip !8
  %137 = load i1* %FPU_DE_val, !mcsema_real_eip !8
  store i1 %137, i1* %FPU_DE, align 1, !mcsema_real_eip !8
  %138 = load i1* %FPU_IE_val, !mcsema_real_eip !8
  store i1 %138, i1* %FPU_IE, align 1, !mcsema_real_eip !8
  %139 = load i1* %FPU_X_val, !mcsema_real_eip !8
  store i1 %139, i1* %FPU_X, align 1, !mcsema_real_eip !8
  %140 = load i2* %FPU_RC_val, !mcsema_real_eip !8
  store i2 %140, i2* %FPU_RC, align 1, !mcsema_real_eip !8
  %141 = load i2* %FPU_PC_val, !mcsema_real_eip !8
  store i2 %141, i2* %FPU_PC, align 1, !mcsema_real_eip !8
  %142 = load i1* %FPU_PM_val, !mcsema_real_eip !8
  store i1 %142, i1* %FPU_PM, align 1, !mcsema_real_eip !8
  %143 = load i1* %FPU_UM_val, !mcsema_real_eip !8
  store i1 %143, i1* %FPU_UM, align 1, !mcsema_real_eip !8
  %144 = load i1* %FPU_OM_val, !mcsema_real_eip !8
  store i1 %144, i1* %FPU_OM, align 1, !mcsema_real_eip !8
  %145 = load i1* %FPU_ZM_val, !mcsema_real_eip !8
  store i1 %145, i1* %FPU_ZM, align 1, !mcsema_real_eip !8
  %146 = load i1* %FPU_DM_val, !mcsema_real_eip !8
  store i1 %146, i1* %FPU_DM, align 1, !mcsema_real_eip !8
  %147 = load i1* %FPU_IM_val, !mcsema_real_eip !8
  store i1 %147, i1* %FPU_IM, align 1, !mcsema_real_eip !8
  %148 = load i64* %53, align 4
  store i64 %148, i64* %52, align 4
  %149 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !8
  store i16 %149, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !8
  %150 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !8
  store i64 %150, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !8
  %151 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !8
  store i16 %151, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !8
  %152 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !8
  store i64 %152, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !8
  %153 = load i128* %XMM0_val, !mcsema_real_eip !8
  store i128 %153, i128* %XMM0, align 1, !mcsema_real_eip !8
  %154 = load i128* %XMM1_val, !mcsema_real_eip !8
  store i128 %154, i128* %XMM1, align 1, !mcsema_real_eip !8
  %155 = load i128* %XMM2_val, !mcsema_real_eip !8
  store i128 %155, i128* %XMM2, align 1, !mcsema_real_eip !8
  %156 = load i128* %XMM3_val, !mcsema_real_eip !8
  store i128 %156, i128* %XMM3, align 1, !mcsema_real_eip !8
  %157 = load i128* %XMM4_val, !mcsema_real_eip !8
  store i128 %157, i128* %XMM4, align 1, !mcsema_real_eip !8
  %158 = load i128* %XMM5_val, !mcsema_real_eip !8
  store i128 %158, i128* %XMM5, align 1, !mcsema_real_eip !8
  %159 = load i128* %XMM6_val, !mcsema_real_eip !8
  store i128 %159, i128* %XMM6, align 1, !mcsema_real_eip !8
  %160 = load i128* %XMM7_val, !mcsema_real_eip !8
  store i128 %160, i128* %XMM7, align 1, !mcsema_real_eip !8
  %161 = load i128* %XMM8_val, !mcsema_real_eip !8
  store i128 %161, i128* %XMM8, align 1, !mcsema_real_eip !8
  %162 = load i128* %XMM9_val, !mcsema_real_eip !8
  store i128 %162, i128* %XMM9, align 1, !mcsema_real_eip !8
  %163 = load i128* %XMM10_val, !mcsema_real_eip !8
  store i128 %163, i128* %XMM10, align 1, !mcsema_real_eip !8
  %164 = load i128* %XMM11_val, !mcsema_real_eip !8
  store i128 %164, i128* %XMM11, align 1, !mcsema_real_eip !8
  %165 = load i128* %XMM12_val, !mcsema_real_eip !8
  store i128 %165, i128* %XMM12, align 1, !mcsema_real_eip !8
  %166 = load i128* %XMM13_val, !mcsema_real_eip !8
  store i128 %166, i128* %XMM13, align 1, !mcsema_real_eip !8
  %167 = load i128* %XMM14_val, !mcsema_real_eip !8
  store i128 %167, i128* %XMM14, align 1, !mcsema_real_eip !8
  %168 = load i128* %XMM15_val, !mcsema_real_eip !8
  store i128 %168, i128* %XMM15, align 1, !mcsema_real_eip !8
  %169 = load i64* %STACK_BASE_val, !mcsema_real_eip !8
  store i64 %169, i64* %STACK_BASE, align 1, !mcsema_real_eip !8
  %170 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !8
  store i64 %170, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !8
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !8
  %171 = load i64* %RAX, !mcsema_real_eip !8
  store i64 %171, i64* %RAX_val, !mcsema_real_eip !8
  %172 = load i64* %RBX, !mcsema_real_eip !8
  store i64 %172, i64* %RBX_val, !mcsema_real_eip !8
  %173 = load i64* %RCX, !mcsema_real_eip !8
  store i64 %173, i64* %RCX_val, !mcsema_real_eip !8
  %174 = load i64* %RDX, !mcsema_real_eip !8
  store i64 %174, i64* %RDX_val, !mcsema_real_eip !8
  %175 = load i64* %RSI, !mcsema_real_eip !8
  store i64 %175, i64* %RSI_val, !mcsema_real_eip !8
  %176 = load i64* %RDI, !mcsema_real_eip !8
  store i64 %176, i64* %RDI_val, !mcsema_real_eip !8
  %177 = load i64* %RSP, !mcsema_real_eip !8
  store i64 %177, i64* %RSP_val, !mcsema_real_eip !8
  %178 = load i64* %RBP, !mcsema_real_eip !8
  store i64 %178, i64* %RBP_val, !mcsema_real_eip !8
  %179 = load i64* %R8, !mcsema_real_eip !8
  store i64 %179, i64* %R8_val, !mcsema_real_eip !8
  %180 = load i64* %R9, !mcsema_real_eip !8
  store i64 %180, i64* %R9_val, !mcsema_real_eip !8
  %181 = load i64* %R10, !mcsema_real_eip !8
  store i64 %181, i64* %R10_val, !mcsema_real_eip !8
  %182 = load i64* %R11, !mcsema_real_eip !8
  store i64 %182, i64* %R11_val, !mcsema_real_eip !8
  %183 = load i64* %R12, !mcsema_real_eip !8
  store i64 %183, i64* %R12_val, !mcsema_real_eip !8
  %184 = load i64* %R13, !mcsema_real_eip !8
  store i64 %184, i64* %R13_val, !mcsema_real_eip !8
  %185 = load i64* %R14, !mcsema_real_eip !8
  store i64 %185, i64* %R14_val, !mcsema_real_eip !8
  %186 = load i64* %R15, !mcsema_real_eip !8
  store i64 %186, i64* %R15_val, !mcsema_real_eip !8
  %187 = load i64* %RIP, !mcsema_real_eip !8
  store i64 %187, i64* %RIP_val, !mcsema_real_eip !8
  %188 = load i1* %CF, align 1, !mcsema_real_eip !8
  store i1 %188, i1* %CF_val, !mcsema_real_eip !8
  %189 = load i1* %PF, align 1, !mcsema_real_eip !8
  store i1 %189, i1* %PF_val, !mcsema_real_eip !8
  %190 = load i1* %AF, align 1, !mcsema_real_eip !8
  store i1 %190, i1* %AF_val, !mcsema_real_eip !8
  %191 = load i1* %ZF, align 1, !mcsema_real_eip !8
  store i1 %191, i1* %ZF_val, !mcsema_real_eip !8
  %192 = load i1* %SF, align 1, !mcsema_real_eip !8
  store i1 %192, i1* %SF_val, !mcsema_real_eip !8
  %193 = load i1* %OF, align 1, !mcsema_real_eip !8
  store i1 %193, i1* %OF_val, !mcsema_real_eip !8
  %194 = load i1* %DF, align 1, !mcsema_real_eip !8
  store i1 %194, i1* %DF_val, !mcsema_real_eip !8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !8
  %195 = load i1* %FPU_B, align 1, !mcsema_real_eip !8
  store i1 %195, i1* %FPU_B_val, !mcsema_real_eip !8
  %196 = load i1* %FPU_C3, align 1, !mcsema_real_eip !8
  store i1 %196, i1* %FPU_C3_val, !mcsema_real_eip !8
  %197 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !8
  store i3 %197, i3* %FPU_TOP_val, !mcsema_real_eip !8
  %198 = load i1* %FPU_C2, align 1, !mcsema_real_eip !8
  store i1 %198, i1* %FPU_C2_val, !mcsema_real_eip !8
  %199 = load i1* %FPU_C1, align 1, !mcsema_real_eip !8
  store i1 %199, i1* %FPU_C1_val, !mcsema_real_eip !8
  %200 = load i1* %FPU_C0, align 1, !mcsema_real_eip !8
  store i1 %200, i1* %FPU_C0_val, !mcsema_real_eip !8
  %201 = load i1* %FPU_ES, align 1, !mcsema_real_eip !8
  store i1 %201, i1* %FPU_ES_val, !mcsema_real_eip !8
  %202 = load i1* %FPU_SF, align 1, !mcsema_real_eip !8
  store i1 %202, i1* %FPU_SF_val, !mcsema_real_eip !8
  %203 = load i1* %FPU_PE, align 1, !mcsema_real_eip !8
  store i1 %203, i1* %FPU_PE_val, !mcsema_real_eip !8
  %204 = load i1* %FPU_UE, align 1, !mcsema_real_eip !8
  store i1 %204, i1* %FPU_UE_val, !mcsema_real_eip !8
  %205 = load i1* %FPU_OE, align 1, !mcsema_real_eip !8
  store i1 %205, i1* %FPU_OE_val, !mcsema_real_eip !8
  %206 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !8
  store i1 %206, i1* %FPU_ZE_val, !mcsema_real_eip !8
  %207 = load i1* %FPU_DE, align 1, !mcsema_real_eip !8
  store i1 %207, i1* %FPU_DE_val, !mcsema_real_eip !8
  %208 = load i1* %FPU_IE, align 1, !mcsema_real_eip !8
  store i1 %208, i1* %FPU_IE_val, !mcsema_real_eip !8
  %209 = load i1* %FPU_X, align 1, !mcsema_real_eip !8
  store i1 %209, i1* %FPU_X_val, !mcsema_real_eip !8
  %210 = load i2* %FPU_RC, align 1, !mcsema_real_eip !8
  store i2 %210, i2* %FPU_RC_val, !mcsema_real_eip !8
  %211 = load i2* %FPU_PC, align 1, !mcsema_real_eip !8
  store i2 %211, i2* %FPU_PC_val, !mcsema_real_eip !8
  %212 = load i1* %FPU_PM, align 1, !mcsema_real_eip !8
  store i1 %212, i1* %FPU_PM_val, !mcsema_real_eip !8
  %213 = load i1* %FPU_UM, align 1, !mcsema_real_eip !8
  store i1 %213, i1* %FPU_UM_val, !mcsema_real_eip !8
  %214 = load i1* %FPU_OM, align 1, !mcsema_real_eip !8
  store i1 %214, i1* %FPU_OM_val, !mcsema_real_eip !8
  %215 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !8
  store i1 %215, i1* %FPU_ZM_val, !mcsema_real_eip !8
  %216 = load i1* %FPU_DM, align 1, !mcsema_real_eip !8
  store i1 %216, i1* %FPU_DM_val, !mcsema_real_eip !8
  %217 = load i1* %FPU_IM, align 1, !mcsema_real_eip !8
  store i1 %217, i1* %FPU_IM_val, !mcsema_real_eip !8
  %218 = load i64* %52, align 4
  store i64 %218, i64* %53, align 4
  %219 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !8
  store i16 %219, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !8
  %220 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !8
  store i64 %220, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !8
  %221 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !8
  store i16 %221, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !8
  %222 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !8
  store i64 %222, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !8
  %223 = load i128* %XMM0, align 1, !mcsema_real_eip !8
  store i128 %223, i128* %XMM0_val, !mcsema_real_eip !8
  %224 = load i128* %XMM1, align 1, !mcsema_real_eip !8
  store i128 %224, i128* %XMM1_val, !mcsema_real_eip !8
  %225 = load i128* %XMM2, align 1, !mcsema_real_eip !8
  store i128 %225, i128* %XMM2_val, !mcsema_real_eip !8
  %226 = load i128* %XMM3, align 1, !mcsema_real_eip !8
  store i128 %226, i128* %XMM3_val, !mcsema_real_eip !8
  %227 = load i128* %XMM4, align 1, !mcsema_real_eip !8
  store i128 %227, i128* %XMM4_val, !mcsema_real_eip !8
  %228 = load i128* %XMM5, align 1, !mcsema_real_eip !8
  store i128 %228, i128* %XMM5_val, !mcsema_real_eip !8
  %229 = load i128* %XMM6, align 1, !mcsema_real_eip !8
  store i128 %229, i128* %XMM6_val, !mcsema_real_eip !8
  %230 = load i128* %XMM7, align 1, !mcsema_real_eip !8
  store i128 %230, i128* %XMM7_val, !mcsema_real_eip !8
  %231 = load i128* %XMM8, align 1, !mcsema_real_eip !8
  store i128 %231, i128* %XMM8_val, !mcsema_real_eip !8
  %232 = load i128* %XMM9, align 1, !mcsema_real_eip !8
  store i128 %232, i128* %XMM9_val, !mcsema_real_eip !8
  %233 = load i128* %XMM10, align 1, !mcsema_real_eip !8
  store i128 %233, i128* %XMM10_val, !mcsema_real_eip !8
  %234 = load i128* %XMM11, align 1, !mcsema_real_eip !8
  store i128 %234, i128* %XMM11_val, !mcsema_real_eip !8
  %235 = load i128* %XMM12, align 1, !mcsema_real_eip !8
  store i128 %235, i128* %XMM12_val, !mcsema_real_eip !8
  %236 = load i128* %XMM13, align 1, !mcsema_real_eip !8
  store i128 %236, i128* %XMM13_val, !mcsema_real_eip !8
  %237 = load i128* %XMM14, align 1, !mcsema_real_eip !8
  store i128 %237, i128* %XMM14_val, !mcsema_real_eip !8
  %238 = load i128* %XMM15, align 1, !mcsema_real_eip !8
  store i128 %238, i128* %XMM15_val, !mcsema_real_eip !8
  %239 = load i64* %STACK_BASE, !mcsema_real_eip !8
  store i64 %239, i64* %STACK_BASE_val, !mcsema_real_eip !8
  %240 = load i64* %STACK_LIMIT, !mcsema_real_eip !8
  store i64 %240, i64* %STACK_LIMIT_val, !mcsema_real_eip !8
  %241 = load i64* %RBP_val, !mcsema_real_eip !9
  %242 = add i64 %241, -8, !mcsema_real_eip !9
  %243 = inttoptr i64 %242 to i64*, !mcsema_real_eip !9
  %244 = load i64* %RAX_val, !mcsema_real_eip !9
  %245 = trunc i64 %244 to i32, !mcsema_real_eip !9
  %246 = bitcast i64* %243 to i32*
  store i32 %245, i32* %246, !mcsema_real_eip !9
  %247 = load i64* %RBP_val, !mcsema_real_eip !10
  %248 = add i64 %247, -8, !mcsema_real_eip !10
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !10
  %250 = bitcast i64* %249 to i32*
  %251 = load i32* %250, !mcsema_real_eip !10
  %252 = zext i32 %251 to i64, !mcsema_real_eip !10
  store i64 %252, i64* %RAX_val, !mcsema_real_eip !10
  %253 = load i64* %RSP_val, !mcsema_real_eip !11
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %253, i64 16)
  %254 = extractvalue { i64, i1 } %uadd, 0
  %255 = xor i64 %254, %253, !mcsema_real_eip !11
  %256 = and i64 %255, 16
  %257 = icmp eq i64 %256, 0
  store i1 %257, i1* %AF_val, !mcsema_real_eip !11
  %258 = icmp slt i64 %254, 0
  store i1 %258, i1* %SF_val, !mcsema_real_eip !11
  %259 = icmp eq i64 %254, 0, !mcsema_real_eip !11
  store i1 %259, i1* %ZF_val, !mcsema_real_eip !11
  %260 = xor i64 %253, -9223372036854775808, !mcsema_real_eip !11
  %261 = and i64 %255, %260, !mcsema_real_eip !11
  %262 = icmp slt i64 %261, 0
  store i1 %262, i1* %OF_val, !mcsema_real_eip !11
  %263 = trunc i64 %254 to i8, !mcsema_real_eip !11
  %264 = tail call i8 @llvm.ctpop.i8(i8 %263), !mcsema_real_eip !11
  %265 = and i8 %264, 1
  %266 = icmp eq i8 %265, 0
  store i1 %266, i1* %PF_val, !mcsema_real_eip !11
  %267 = extractvalue { i64, i1 } %uadd, 1
  store i1 %267, i1* %CF_val, !mcsema_real_eip !11
  store i64 %254, i64* %RSP_val, !mcsema_real_eip !11
  %268 = inttoptr i64 %254 to i64*, !mcsema_real_eip !12
  %269 = load i64* %268, !mcsema_real_eip !12
  store i64 %269, i64* %RBP_val, !mcsema_real_eip !12
  %270 = add i64 %254, 16, !mcsema_real_eip !13
  store i64 %270, i64* %RSP_val, !mcsema_real_eip !13
  %271 = load i64* %RAX_val, !mcsema_real_eip !13
  store i64 %271, i64* %RAX, !mcsema_real_eip !13
  %272 = load i64* %RBX_val, !mcsema_real_eip !13
  store i64 %272, i64* %RBX, !mcsema_real_eip !13
  %273 = load i64* %RCX_val, !mcsema_real_eip !13
  store i64 %273, i64* %RCX, !mcsema_real_eip !13
  %274 = load i64* %RDX_val, !mcsema_real_eip !13
  store i64 %274, i64* %RDX, !mcsema_real_eip !13
  %275 = load i64* %RSI_val, !mcsema_real_eip !13
  store i64 %275, i64* %RSI, !mcsema_real_eip !13
  %276 = load i64* %RDI_val, !mcsema_real_eip !13
  store i64 %276, i64* %RDI, !mcsema_real_eip !13
  %277 = load i64* %RSP_val, !mcsema_real_eip !13
  store i64 %277, i64* %RSP, !mcsema_real_eip !13
  %278 = load i64* %RBP_val, !mcsema_real_eip !13
  store i64 %278, i64* %RBP, !mcsema_real_eip !13
  %279 = load i64* %R8_val, !mcsema_real_eip !13
  store i64 %279, i64* %R8, !mcsema_real_eip !13
  %280 = load i64* %R9_val, !mcsema_real_eip !13
  store i64 %280, i64* %R9, !mcsema_real_eip !13
  %281 = load i64* %R10_val, !mcsema_real_eip !13
  store i64 %281, i64* %R10, !mcsema_real_eip !13
  %282 = load i64* %R11_val, !mcsema_real_eip !13
  store i64 %282, i64* %R11, !mcsema_real_eip !13
  %283 = load i64* %R12_val, !mcsema_real_eip !13
  store i64 %283, i64* %R12, !mcsema_real_eip !13
  %284 = load i64* %R13_val, !mcsema_real_eip !13
  store i64 %284, i64* %R13, !mcsema_real_eip !13
  %285 = load i64* %R14_val, !mcsema_real_eip !13
  store i64 %285, i64* %R14, !mcsema_real_eip !13
  %286 = load i64* %R15_val, !mcsema_real_eip !13
  store i64 %286, i64* %R15, !mcsema_real_eip !13
  %287 = load i64* %RIP_val, !mcsema_real_eip !13
  store i64 %287, i64* %RIP, !mcsema_real_eip !13
  %288 = load i1* %CF_val, !mcsema_real_eip !13
  store i1 %288, i1* %CF, align 1, !mcsema_real_eip !13
  %289 = load i1* %PF_val, !mcsema_real_eip !13
  store i1 %289, i1* %PF, align 1, !mcsema_real_eip !13
  %290 = load i1* %AF_val, !mcsema_real_eip !13
  store i1 %290, i1* %AF, align 1, !mcsema_real_eip !13
  %291 = load i1* %ZF_val, !mcsema_real_eip !13
  store i1 %291, i1* %ZF, align 1, !mcsema_real_eip !13
  %292 = load i1* %SF_val, !mcsema_real_eip !13
  store i1 %292, i1* %SF, align 1, !mcsema_real_eip !13
  %293 = load i1* %OF_val, !mcsema_real_eip !13
  store i1 %293, i1* %OF, align 1, !mcsema_real_eip !13
  %294 = load i1* %DF_val, !mcsema_real_eip !13
  store i1 %294, i1* %DF, align 1, !mcsema_real_eip !13
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !13
  %295 = load i1* %FPU_B_val, !mcsema_real_eip !13
  store i1 %295, i1* %FPU_B, align 1, !mcsema_real_eip !13
  %296 = load i1* %FPU_C3_val, !mcsema_real_eip !13
  store i1 %296, i1* %FPU_C3, align 1, !mcsema_real_eip !13
  %297 = load i3* %FPU_TOP_val, !mcsema_real_eip !13
  store i3 %297, i3* %FPU_TOP, align 1, !mcsema_real_eip !13
  %298 = load i1* %FPU_C2_val, !mcsema_real_eip !13
  store i1 %298, i1* %FPU_C2, align 1, !mcsema_real_eip !13
  %299 = load i1* %FPU_C1_val, !mcsema_real_eip !13
  store i1 %299, i1* %FPU_C1, align 1, !mcsema_real_eip !13
  %300 = load i1* %FPU_C0_val, !mcsema_real_eip !13
  store i1 %300, i1* %FPU_C0, align 1, !mcsema_real_eip !13
  %301 = load i1* %FPU_ES_val, !mcsema_real_eip !13
  store i1 %301, i1* %FPU_ES, align 1, !mcsema_real_eip !13
  %302 = load i1* %FPU_SF_val, !mcsema_real_eip !13
  store i1 %302, i1* %FPU_SF, align 1, !mcsema_real_eip !13
  %303 = load i1* %FPU_PE_val, !mcsema_real_eip !13
  store i1 %303, i1* %FPU_PE, align 1, !mcsema_real_eip !13
  %304 = load i1* %FPU_UE_val, !mcsema_real_eip !13
  store i1 %304, i1* %FPU_UE, align 1, !mcsema_real_eip !13
  %305 = load i1* %FPU_OE_val, !mcsema_real_eip !13
  store i1 %305, i1* %FPU_OE, align 1, !mcsema_real_eip !13
  %306 = load i1* %FPU_ZE_val, !mcsema_real_eip !13
  store i1 %306, i1* %FPU_ZE, align 1, !mcsema_real_eip !13
  %307 = load i1* %FPU_DE_val, !mcsema_real_eip !13
  store i1 %307, i1* %FPU_DE, align 1, !mcsema_real_eip !13
  %308 = load i1* %FPU_IE_val, !mcsema_real_eip !13
  store i1 %308, i1* %FPU_IE, align 1, !mcsema_real_eip !13
  %309 = load i1* %FPU_X_val, !mcsema_real_eip !13
  store i1 %309, i1* %FPU_X, align 1, !mcsema_real_eip !13
  %310 = load i2* %FPU_RC_val, !mcsema_real_eip !13
  store i2 %310, i2* %FPU_RC, align 1, !mcsema_real_eip !13
  %311 = load i2* %FPU_PC_val, !mcsema_real_eip !13
  store i2 %311, i2* %FPU_PC, align 1, !mcsema_real_eip !13
  %312 = load i1* %FPU_PM_val, !mcsema_real_eip !13
  store i1 %312, i1* %FPU_PM, align 1, !mcsema_real_eip !13
  %313 = load i1* %FPU_UM_val, !mcsema_real_eip !13
  store i1 %313, i1* %FPU_UM, align 1, !mcsema_real_eip !13
  %314 = load i1* %FPU_OM_val, !mcsema_real_eip !13
  store i1 %314, i1* %FPU_OM, align 1, !mcsema_real_eip !13
  %315 = load i1* %FPU_ZM_val, !mcsema_real_eip !13
  store i1 %315, i1* %FPU_ZM, align 1, !mcsema_real_eip !13
  %316 = load i1* %FPU_DM_val, !mcsema_real_eip !13
  store i1 %316, i1* %FPU_DM, align 1, !mcsema_real_eip !13
  %317 = load i1* %FPU_IM_val, !mcsema_real_eip !13
  store i1 %317, i1* %FPU_IM, align 1, !mcsema_real_eip !13
  %318 = load i64* %53, align 4
  store i64 %318, i64* %52, align 4
  %319 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !13
  store i16 %319, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !13
  %320 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !13
  store i64 %320, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !13
  %321 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !13
  store i16 %321, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !13
  %322 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !13
  store i64 %322, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !13
  %323 = load i128* %XMM0_val, !mcsema_real_eip !13
  store i128 %323, i128* %XMM0, align 1, !mcsema_real_eip !13
  %324 = load i128* %XMM1_val, !mcsema_real_eip !13
  store i128 %324, i128* %XMM1, align 1, !mcsema_real_eip !13
  %325 = load i128* %XMM2_val, !mcsema_real_eip !13
  store i128 %325, i128* %XMM2, align 1, !mcsema_real_eip !13
  %326 = load i128* %XMM3_val, !mcsema_real_eip !13
  store i128 %326, i128* %XMM3, align 1, !mcsema_real_eip !13
  %327 = load i128* %XMM4_val, !mcsema_real_eip !13
  store i128 %327, i128* %XMM4, align 1, !mcsema_real_eip !13
  %328 = load i128* %XMM5_val, !mcsema_real_eip !13
  store i128 %328, i128* %XMM5, align 1, !mcsema_real_eip !13
  %329 = load i128* %XMM6_val, !mcsema_real_eip !13
  store i128 %329, i128* %XMM6, align 1, !mcsema_real_eip !13
  %330 = load i128* %XMM7_val, !mcsema_real_eip !13
  store i128 %330, i128* %XMM7, align 1, !mcsema_real_eip !13
  %331 = load i128* %XMM8_val, !mcsema_real_eip !13
  store i128 %331, i128* %XMM8, align 1, !mcsema_real_eip !13
  %332 = load i128* %XMM9_val, !mcsema_real_eip !13
  store i128 %332, i128* %XMM9, align 1, !mcsema_real_eip !13
  %333 = load i128* %XMM10_val, !mcsema_real_eip !13
  store i128 %333, i128* %XMM10, align 1, !mcsema_real_eip !13
  %334 = load i128* %XMM11_val, !mcsema_real_eip !13
  store i128 %334, i128* %XMM11, align 1, !mcsema_real_eip !13
  %335 = load i128* %XMM12_val, !mcsema_real_eip !13
  store i128 %335, i128* %XMM12, align 1, !mcsema_real_eip !13
  %336 = load i128* %XMM13_val, !mcsema_real_eip !13
  store i128 %336, i128* %XMM13, align 1, !mcsema_real_eip !13
  %337 = load i128* %XMM14_val, !mcsema_real_eip !13
  store i128 %337, i128* %XMM14, align 1, !mcsema_real_eip !13
  %338 = load i128* %XMM15_val, !mcsema_real_eip !13
  store i128 %338, i128* %XMM15, align 1, !mcsema_real_eip !13
  %339 = load i64* %STACK_BASE_val, !mcsema_real_eip !13
  store i64 %339, i64* %STACK_BASE, align 1, !mcsema_real_eip !13
  %340 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !13
  store i64 %340, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !13
  ret void, !mcsema_real_eip !13
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !14
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !14
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !14
  %XMM15_val = alloca i128, !mcsema_real_eip !14
  %XMM14_val = alloca i128, !mcsema_real_eip !14
  %XMM13_val = alloca i128, !mcsema_real_eip !14
  %XMM12_val = alloca i128, !mcsema_real_eip !14
  %XMM11_val = alloca i128, !mcsema_real_eip !14
  %XMM10_val = alloca i128, !mcsema_real_eip !14
  %XMM9_val = alloca i128, !mcsema_real_eip !14
  %XMM8_val = alloca i128, !mcsema_real_eip !14
  %XMM7_val = alloca i128, !mcsema_real_eip !14
  %XMM6_val = alloca i128, !mcsema_real_eip !14
  %XMM5_val = alloca i128, !mcsema_real_eip !14
  %XMM4_val = alloca i128, !mcsema_real_eip !14
  %XMM3_val = alloca i128, !mcsema_real_eip !14
  %XMM2_val = alloca i128, !mcsema_real_eip !14
  %XMM1_val = alloca i128, !mcsema_real_eip !14
  %XMM0_val = alloca i128, !mcsema_real_eip !14
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !14
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !14
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !14
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !14
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !14
  %FPU_IM_val = alloca i1, !mcsema_real_eip !14
  %FPU_DM_val = alloca i1, !mcsema_real_eip !14
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !14
  %FPU_OM_val = alloca i1, !mcsema_real_eip !14
  %FPU_UM_val = alloca i1, !mcsema_real_eip !14
  %FPU_PM_val = alloca i1, !mcsema_real_eip !14
  %FPU_PC_val = alloca i2, !mcsema_real_eip !14
  %FPU_RC_val = alloca i2, !mcsema_real_eip !14
  %FPU_X_val = alloca i1, !mcsema_real_eip !14
  %FPU_IE_val = alloca i1, !mcsema_real_eip !14
  %FPU_DE_val = alloca i1, !mcsema_real_eip !14
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !14
  %FPU_OE_val = alloca i1, !mcsema_real_eip !14
  %FPU_UE_val = alloca i1, !mcsema_real_eip !14
  %FPU_PE_val = alloca i1, !mcsema_real_eip !14
  %FPU_SF_val = alloca i1, !mcsema_real_eip !14
  %FPU_ES_val = alloca i1, !mcsema_real_eip !14
  %FPU_C0_val = alloca i1, !mcsema_real_eip !14
  %FPU_C1_val = alloca i1, !mcsema_real_eip !14
  %FPU_C2_val = alloca i1, !mcsema_real_eip !14
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !14
  %FPU_C3_val = alloca i1, !mcsema_real_eip !14
  %FPU_B_val = alloca i1, !mcsema_real_eip !14
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !14
  %DF_val = alloca i1, !mcsema_real_eip !14
  %OF_val = alloca i1, !mcsema_real_eip !14
  %SF_val = alloca i1, !mcsema_real_eip !14
  %CF_val = alloca i1, !mcsema_real_eip !14
  %AF_val = alloca i1, !mcsema_real_eip !14
  %PF_val = alloca i1, !mcsema_real_eip !14
  %ZF_val = alloca i1, !mcsema_real_eip !14
  %RIP_val = alloca i64, !mcsema_real_eip !14
  %R14_val = alloca i64, !mcsema_real_eip !14
  %R13_val = alloca i64, !mcsema_real_eip !14
  %R12_val = alloca i64, !mcsema_real_eip !14
  %R11_val = alloca i64, !mcsema_real_eip !14
  %R10_val = alloca i64, !mcsema_real_eip !14
  %R9_val = alloca i64, !mcsema_real_eip !14
  %R8_val = alloca i64, !mcsema_real_eip !14
  %RSP_val = alloca i64, !mcsema_real_eip !14
  %RBP_val = alloca i64, !mcsema_real_eip !14
  %RDI_val = alloca i64, !mcsema_real_eip !14
  %RSI_val = alloca i64, !mcsema_real_eip !14
  %RDX_val = alloca i64, !mcsema_real_eip !14
  %RCX_val = alloca i64, !mcsema_real_eip !14
  %RBX_val = alloca i64, !mcsema_real_eip !14
  %RAX_val = alloca i64, !mcsema_real_eip !14
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !14
  %1 = load i64* %RAX, !mcsema_real_eip !14
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !14
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !14
  %2 = load i64* %RBX, !mcsema_real_eip !14
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !14
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !14
  %3 = load i64* %RCX, !mcsema_real_eip !14
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !14
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !14
  %4 = load i64* %RDX, !mcsema_real_eip !14
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !14
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !14
  %5 = load i64* %RSI, !mcsema_real_eip !14
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !14
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !14
  %6 = load i64* %RDI, !mcsema_real_eip !14
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !14
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !14
  %7 = load i64* %RSP, !mcsema_real_eip !14
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !14
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !14
  %8 = load i64* %RBP, !mcsema_real_eip !14
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !14
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !14
  %9 = load i64* %R8, !mcsema_real_eip !14
  store i64 %9, i64* %R8_val, !mcsema_real_eip !14
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !14
  %10 = load i64* %R9, !mcsema_real_eip !14
  store i64 %10, i64* %R9_val, !mcsema_real_eip !14
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !14
  %11 = load i64* %R10, !mcsema_real_eip !14
  store i64 %11, i64* %R10_val, !mcsema_real_eip !14
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !14
  %12 = load i64* %R11, !mcsema_real_eip !14
  store i64 %12, i64* %R11_val, !mcsema_real_eip !14
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !14
  %13 = load i64* %R12, !mcsema_real_eip !14
  store i64 %13, i64* %R12_val, !mcsema_real_eip !14
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !14
  %14 = load i64* %R13, !mcsema_real_eip !14
  store i64 %14, i64* %R13_val, !mcsema_real_eip !14
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !14
  %15 = load i64* %R14, !mcsema_real_eip !14
  store i64 %15, i64* %R14_val, !mcsema_real_eip !14
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !14
  %16 = load i64* %R15, !mcsema_real_eip !14
  store i64 %16, i64* %R15_val, !mcsema_real_eip !14
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !14
  %17 = load i64* %RIP, !mcsema_real_eip !14
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !14
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !14
  %18 = load i1* %CF, align 1, !mcsema_real_eip !14
  store i1 %18, i1* %CF_val, !mcsema_real_eip !14
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !14
  %19 = load i1* %PF, align 1, !mcsema_real_eip !14
  store i1 %19, i1* %PF_val, !mcsema_real_eip !14
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !14
  %20 = load i1* %AF, align 1, !mcsema_real_eip !14
  store i1 %20, i1* %AF_val, !mcsema_real_eip !14
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !14
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !14
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !14
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !14
  %22 = load i1* %SF, align 1, !mcsema_real_eip !14
  store i1 %22, i1* %SF_val, !mcsema_real_eip !14
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !14
  %23 = load i1* %OF, align 1, !mcsema_real_eip !14
  store i1 %23, i1* %OF_val, !mcsema_real_eip !14
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !14
  %24 = load i1* %DF, align 1, !mcsema_real_eip !14
  store i1 %24, i1* %DF_val, !mcsema_real_eip !14
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !14
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !14
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !14
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !14
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !14
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !14
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !14
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !14
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !14
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !14
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !14
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !14
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !14
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !14
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !14
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !14
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !14
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !14
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !14
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !14
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !14
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !14
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !14
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !14
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !14
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !14
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !14
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !14
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !14
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !14
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !14
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !14
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !14
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !14
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !14
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !14
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !14
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !14
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !14
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !14
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !14
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !14
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !14
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !14
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !14
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !14
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !14
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !14
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !14
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !14
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !14
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !14
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !14
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !14
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !14
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !14
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !14
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !14
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !14
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !14
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !14
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !14
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !14
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !14
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !14
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !14
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !14
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !14
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !14
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !14
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !14
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !14
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !14
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !14
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !14
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !14
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !14
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !14
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !14
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !14
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !14
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !14
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !14
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !14
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !14
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !14
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !14
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !14
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !14
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !14
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !14
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !14
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !14
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !14
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !14
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !14
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !14
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !14
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !14
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !14
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !14
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !14
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !14
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !14
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !14
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !14
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !14
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !14
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !14
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !14
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !14
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !14
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !14
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !14
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !14
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !14
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !14
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !14
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !14
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !14
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !14
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !14
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !14
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !14
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !14
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !14
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !14
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !14
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !14
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !14
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !14
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !14
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !14
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !14
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !14
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !14
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !14
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !14
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !14
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !14
  %77 = load i64* %RBP_val, !mcsema_real_eip !14
  %78 = load i64* %RSP_val, !mcsema_real_eip !14
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !14
  store i64 %77, i64* %80, !mcsema_real_eip !14
  store i64 %79, i64* %RSP_val, !mcsema_real_eip !14
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !15
  %81 = add i64 %78, -12, !mcsema_real_eip !16
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !16
  %83 = load i64* %RDI_val, !mcsema_real_eip !16
  %84 = trunc i64 %83 to i32, !mcsema_real_eip !16
  %85 = bitcast i64* %82 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !16
  %86 = load i64* %RBP_val, !mcsema_real_eip !17
  %87 = add i64 %86, -8, !mcsema_real_eip !17
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !17
  %89 = load i64* %RSI_val, !mcsema_real_eip !17
  %90 = trunc i64 %89 to i32, !mcsema_real_eip !17
  %91 = bitcast i64* %88 to i32*
  store i32 %90, i32* %91, !mcsema_real_eip !17
  %92 = load i64* %RBP_val, !mcsema_real_eip !18
  %93 = add i64 %92, -4, !mcsema_real_eip !18
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !18
  %95 = bitcast i64* %94 to i32*
  %96 = load i32* %95, !mcsema_real_eip !18
  %97 = zext i32 %96 to i64, !mcsema_real_eip !18
  store i64 %97, i64* %RSI_val, !mcsema_real_eip !18
  %98 = load i64* %RBP_val, !mcsema_real_eip !19
  %99 = add i64 %98, -8, !mcsema_real_eip !19
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !19
  %101 = bitcast i64* %100 to i32*
  %102 = load i32* %101, !mcsema_real_eip !19
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %96, i32 %102)
  %103 = extractvalue { i32, i1 } %uadd, 0
  %104 = xor i32 %103, %102, !mcsema_real_eip !19
  %105 = xor i32 %104, %96, !mcsema_real_eip !19
  %106 = and i32 %105, 16, !mcsema_real_eip !19
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !19
  store i1 %107, i1* %AF_val, !mcsema_real_eip !19
  %108 = icmp slt i32 %103, 0
  store i1 %108, i1* %SF_val, !mcsema_real_eip !19
  %109 = icmp eq i32 %103, 0, !mcsema_real_eip !19
  store i1 %109, i1* %ZF_val, !mcsema_real_eip !19
  %110 = xor i32 %96, -2147483648, !mcsema_real_eip !19
  %111 = xor i32 %110, %102, !mcsema_real_eip !19
  %112 = and i32 %104, %111, !mcsema_real_eip !19
  %113 = icmp slt i32 %112, 0
  store i1 %113, i1* %OF_val, !mcsema_real_eip !19
  %114 = trunc i32 %103 to i8, !mcsema_real_eip !19
  %115 = tail call i8 @llvm.ctpop.i8(i8 %114), !mcsema_real_eip !19
  %116 = and i8 %115, 1
  %117 = icmp eq i8 %116, 0
  store i1 %117, i1* %PF_val, !mcsema_real_eip !19
  %118 = extractvalue { i32, i1 } %uadd, 1
  store i1 %118, i1* %CF_val, !mcsema_real_eip !19
  %119 = zext i32 %103 to i64, !mcsema_real_eip !19
  store i64 %119, i64* %RSI_val, !mcsema_real_eip !19
  %120 = load i64* %RBP_val, !mcsema_real_eip !20
  %121 = add i64 %120, -12, !mcsema_real_eip !20
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !20
  %123 = bitcast i64* %122 to i32*
  store i32 %103, i32* %123, !mcsema_real_eip !20
  %124 = load i64* %RBP_val, !mcsema_real_eip !21
  %125 = add i64 %124, -4, !mcsema_real_eip !21
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !21
  %127 = bitcast i64* %126 to i32*
  %128 = load i32* %127, !mcsema_real_eip !21
  %129 = add i32 %128, -40
  %130 = xor i32 %129, %128, !mcsema_real_eip !21
  %131 = and i32 %130, 16, !mcsema_real_eip !21
  %132 = icmp ne i32 %131, 0, !mcsema_real_eip !21
  store i1 %132, i1* %AF_val, !mcsema_real_eip !21
  %133 = trunc i32 %129 to i8, !mcsema_real_eip !21
  %134 = tail call i8 @llvm.ctpop.i8(i8 %133), !mcsema_real_eip !21
  %135 = and i8 %134, 1
  %136 = icmp eq i8 %135, 0
  store i1 %136, i1* %PF_val, !mcsema_real_eip !21
  %137 = icmp eq i32 %129, 0, !mcsema_real_eip !21
  store i1 %137, i1* %ZF_val, !mcsema_real_eip !21
  %138 = icmp slt i32 %129, 0
  store i1 %138, i1* %SF_val, !mcsema_real_eip !21
  %139 = icmp ult i32 %128, 40, !mcsema_real_eip !21
  store i1 %139, i1* %CF_val, !mcsema_real_eip !21
  %140 = and i32 %130, %128, !mcsema_real_eip !21
  %141 = icmp slt i32 %140, 0
  store i1 %141, i1* %OF_val, !mcsema_real_eip !21
  %142 = xor i1 %138, %141
  %143 = load i1* %ZF_val, !mcsema_real_eip !22
  %144 = or i1 %143, %142, !mcsema_real_eip !22
  %145 = load i64* %RBP_val, !mcsema_real_eip !23
  %146 = add i64 %145, -12, !mcsema_real_eip !23
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !23
  %148 = bitcast i64* %147 to i32*
  %149 = load i32* %148, !mcsema_real_eip !23
  %150 = zext i32 %149 to i64, !mcsema_real_eip !23
  store i64 %150, i64* %RAX_val, !mcsema_real_eip !23
  br i1 %144, label %block_0x30, label %block_0x20, !mcsema_real_eip !22

block_0x30:                                       ; preds = %entry
  %151 = add i32 %149, -10
  %152 = xor i32 %151, %149, !mcsema_real_eip !24
  %153 = and i32 %152, 16, !mcsema_real_eip !24
  %154 = icmp ne i32 %153, 0, !mcsema_real_eip !24
  store i1 %154, i1* %AF_val, !mcsema_real_eip !24
  %155 = trunc i32 %151 to i8, !mcsema_real_eip !24
  %156 = tail call i8 @llvm.ctpop.i8(i8 %155), !mcsema_real_eip !24
  %157 = and i8 %156, 1
  %158 = icmp eq i8 %157, 0
  store i1 %158, i1* %PF_val, !mcsema_real_eip !24
  %159 = icmp eq i32 %151, 0, !mcsema_real_eip !24
  store i1 %159, i1* %ZF_val, !mcsema_real_eip !24
  %160 = icmp slt i32 %151, 0
  store i1 %160, i1* %SF_val, !mcsema_real_eip !24
  %161 = icmp ult i32 %149, 10, !mcsema_real_eip !24
  store i1 %161, i1* %CF_val, !mcsema_real_eip !24
  %162 = and i32 %152, %149, !mcsema_real_eip !24
  %163 = icmp slt i32 %162, 0
  store i1 %163, i1* %OF_val, !mcsema_real_eip !24
  %164 = zext i32 %151 to i64, !mcsema_real_eip !24
  store i64 %164, i64* %RAX_val, !mcsema_real_eip !24
  %165 = load i64* %RBP_val, !mcsema_real_eip !25
  %166 = add i64 %165, -16, !mcsema_real_eip !25
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !25
  %168 = bitcast i64* %167 to i32*
  store i32 %151, i32* %168, !mcsema_real_eip !25
  %169 = load i64* %RBP_val, !mcsema_real_eip !26
  %170 = add i64 %169, -16, !mcsema_real_eip !26
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !26
  %172 = bitcast i64* %171 to i32*
  %173 = load i32* %172, !mcsema_real_eip !26
  %174 = zext i32 %173 to i64, !mcsema_real_eip !26
  store i64 %174, i64* %RAX_val, !mcsema_real_eip !26
  %175 = load i64* %RSP_val, !mcsema_real_eip !27
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !27
  %177 = load i64* %176, !mcsema_real_eip !27
  store i64 %177, i64* %RBP_val, !mcsema_real_eip !27
  %178 = add i64 %175, 16, !mcsema_real_eip !28
  store i64 %178, i64* %RSP_val, !mcsema_real_eip !28
  %179 = load i64* %RAX_val, !mcsema_real_eip !28
  store i64 %179, i64* %RAX, !mcsema_real_eip !28
  %180 = load i64* %RBX_val, !mcsema_real_eip !28
  store i64 %180, i64* %RBX, !mcsema_real_eip !28
  %181 = load i64* %RCX_val, !mcsema_real_eip !28
  store i64 %181, i64* %RCX, !mcsema_real_eip !28
  %182 = load i64* %RDX_val, !mcsema_real_eip !28
  store i64 %182, i64* %RDX, !mcsema_real_eip !28
  %183 = load i64* %RSI_val, !mcsema_real_eip !28
  store i64 %183, i64* %RSI, !mcsema_real_eip !28
  %184 = load i64* %RDI_val, !mcsema_real_eip !28
  store i64 %184, i64* %RDI, !mcsema_real_eip !28
  %185 = load i64* %RSP_val, !mcsema_real_eip !28
  store i64 %185, i64* %RSP, !mcsema_real_eip !28
  %186 = load i64* %RBP_val, !mcsema_real_eip !28
  store i64 %186, i64* %RBP, !mcsema_real_eip !28
  %187 = load i64* %R8_val, !mcsema_real_eip !28
  store i64 %187, i64* %R8, !mcsema_real_eip !28
  %188 = load i64* %R9_val, !mcsema_real_eip !28
  store i64 %188, i64* %R9, !mcsema_real_eip !28
  %189 = load i64* %R10_val, !mcsema_real_eip !28
  store i64 %189, i64* %R10, !mcsema_real_eip !28
  %190 = load i64* %R11_val, !mcsema_real_eip !28
  store i64 %190, i64* %R11, !mcsema_real_eip !28
  %191 = load i64* %R12_val, !mcsema_real_eip !28
  store i64 %191, i64* %R12, !mcsema_real_eip !28
  %192 = load i64* %R13_val, !mcsema_real_eip !28
  store i64 %192, i64* %R13, !mcsema_real_eip !28
  %193 = load i64* %R14_val, !mcsema_real_eip !28
  store i64 %193, i64* %R14, !mcsema_real_eip !28
  %194 = load i64* %R15_val, !mcsema_real_eip !28
  store i64 %194, i64* %R15, !mcsema_real_eip !28
  %195 = load i64* %RIP_val, !mcsema_real_eip !28
  store i64 %195, i64* %RIP, !mcsema_real_eip !28
  %196 = load i1* %CF_val, !mcsema_real_eip !28
  store i1 %196, i1* %CF, align 1, !mcsema_real_eip !28
  %197 = load i1* %PF_val, !mcsema_real_eip !28
  store i1 %197, i1* %PF, align 1, !mcsema_real_eip !28
  %198 = load i1* %AF_val, !mcsema_real_eip !28
  store i1 %198, i1* %AF, align 1, !mcsema_real_eip !28
  %199 = load i1* %ZF_val, !mcsema_real_eip !28
  store i1 %199, i1* %ZF, align 1, !mcsema_real_eip !28
  %200 = load i1* %SF_val, !mcsema_real_eip !28
  store i1 %200, i1* %SF, align 1, !mcsema_real_eip !28
  %201 = load i1* %OF_val, !mcsema_real_eip !28
  store i1 %201, i1* %OF, align 1, !mcsema_real_eip !28
  %202 = load i1* %DF_val, !mcsema_real_eip !28
  store i1 %202, i1* %DF, align 1, !mcsema_real_eip !28
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !28
  %203 = load i1* %FPU_B_val, !mcsema_real_eip !28
  store i1 %203, i1* %FPU_B, align 1, !mcsema_real_eip !28
  %204 = load i1* %FPU_C3_val, !mcsema_real_eip !28
  store i1 %204, i1* %FPU_C3, align 1, !mcsema_real_eip !28
  %205 = load i3* %FPU_TOP_val, !mcsema_real_eip !28
  store i3 %205, i3* %FPU_TOP, align 1, !mcsema_real_eip !28
  %206 = load i1* %FPU_C2_val, !mcsema_real_eip !28
  store i1 %206, i1* %FPU_C2, align 1, !mcsema_real_eip !28
  %207 = load i1* %FPU_C1_val, !mcsema_real_eip !28
  store i1 %207, i1* %FPU_C1, align 1, !mcsema_real_eip !28
  %208 = load i1* %FPU_C0_val, !mcsema_real_eip !28
  store i1 %208, i1* %FPU_C0, align 1, !mcsema_real_eip !28
  %209 = load i1* %FPU_ES_val, !mcsema_real_eip !28
  store i1 %209, i1* %FPU_ES, align 1, !mcsema_real_eip !28
  %210 = load i1* %FPU_SF_val, !mcsema_real_eip !28
  store i1 %210, i1* %FPU_SF, align 1, !mcsema_real_eip !28
  %211 = load i1* %FPU_PE_val, !mcsema_real_eip !28
  store i1 %211, i1* %FPU_PE, align 1, !mcsema_real_eip !28
  %212 = load i1* %FPU_UE_val, !mcsema_real_eip !28
  store i1 %212, i1* %FPU_UE, align 1, !mcsema_real_eip !28
  %213 = load i1* %FPU_OE_val, !mcsema_real_eip !28
  store i1 %213, i1* %FPU_OE, align 1, !mcsema_real_eip !28
  %214 = load i1* %FPU_ZE_val, !mcsema_real_eip !28
  store i1 %214, i1* %FPU_ZE, align 1, !mcsema_real_eip !28
  %215 = load i1* %FPU_DE_val, !mcsema_real_eip !28
  store i1 %215, i1* %FPU_DE, align 1, !mcsema_real_eip !28
  %216 = load i1* %FPU_IE_val, !mcsema_real_eip !28
  store i1 %216, i1* %FPU_IE, align 1, !mcsema_real_eip !28
  %217 = load i1* %FPU_X_val, !mcsema_real_eip !28
  store i1 %217, i1* %FPU_X, align 1, !mcsema_real_eip !28
  %218 = load i2* %FPU_RC_val, !mcsema_real_eip !28
  store i2 %218, i2* %FPU_RC, align 1, !mcsema_real_eip !28
  %219 = load i2* %FPU_PC_val, !mcsema_real_eip !28
  store i2 %219, i2* %FPU_PC, align 1, !mcsema_real_eip !28
  %220 = load i1* %FPU_PM_val, !mcsema_real_eip !28
  store i1 %220, i1* %FPU_PM, align 1, !mcsema_real_eip !28
  %221 = load i1* %FPU_UM_val, !mcsema_real_eip !28
  store i1 %221, i1* %FPU_UM, align 1, !mcsema_real_eip !28
  %222 = load i1* %FPU_OM_val, !mcsema_real_eip !28
  store i1 %222, i1* %FPU_OM, align 1, !mcsema_real_eip !28
  %223 = load i1* %FPU_ZM_val, !mcsema_real_eip !28
  store i1 %223, i1* %FPU_ZM, align 1, !mcsema_real_eip !28
  %224 = load i1* %FPU_DM_val, !mcsema_real_eip !28
  store i1 %224, i1* %FPU_DM, align 1, !mcsema_real_eip !28
  %225 = load i1* %FPU_IM_val, !mcsema_real_eip !28
  store i1 %225, i1* %FPU_IM, align 1, !mcsema_real_eip !28
  %226 = load i64* %53, align 4
  store i64 %226, i64* %52, align 4
  %227 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !28
  store i16 %227, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !28
  %228 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !28
  store i64 %228, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !28
  %229 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !28
  store i16 %229, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !28
  %230 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !28
  store i64 %230, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !28
  %231 = load i128* %XMM0_val, !mcsema_real_eip !28
  store i128 %231, i128* %XMM0, align 1, !mcsema_real_eip !28
  %232 = load i128* %XMM1_val, !mcsema_real_eip !28
  store i128 %232, i128* %XMM1, align 1, !mcsema_real_eip !28
  %233 = load i128* %XMM2_val, !mcsema_real_eip !28
  store i128 %233, i128* %XMM2, align 1, !mcsema_real_eip !28
  %234 = load i128* %XMM3_val, !mcsema_real_eip !28
  store i128 %234, i128* %XMM3, align 1, !mcsema_real_eip !28
  %235 = load i128* %XMM4_val, !mcsema_real_eip !28
  store i128 %235, i128* %XMM4, align 1, !mcsema_real_eip !28
  %236 = load i128* %XMM5_val, !mcsema_real_eip !28
  store i128 %236, i128* %XMM5, align 1, !mcsema_real_eip !28
  %237 = load i128* %XMM6_val, !mcsema_real_eip !28
  store i128 %237, i128* %XMM6, align 1, !mcsema_real_eip !28
  %238 = load i128* %XMM7_val, !mcsema_real_eip !28
  store i128 %238, i128* %XMM7, align 1, !mcsema_real_eip !28
  %239 = load i128* %XMM8_val, !mcsema_real_eip !28
  store i128 %239, i128* %XMM8, align 1, !mcsema_real_eip !28
  %240 = load i128* %XMM9_val, !mcsema_real_eip !28
  store i128 %240, i128* %XMM9, align 1, !mcsema_real_eip !28
  %241 = load i128* %XMM10_val, !mcsema_real_eip !28
  store i128 %241, i128* %XMM10, align 1, !mcsema_real_eip !28
  %242 = load i128* %XMM11_val, !mcsema_real_eip !28
  store i128 %242, i128* %XMM11, align 1, !mcsema_real_eip !28
  %243 = load i128* %XMM12_val, !mcsema_real_eip !28
  store i128 %243, i128* %XMM12, align 1, !mcsema_real_eip !28
  %244 = load i128* %XMM13_val, !mcsema_real_eip !28
  store i128 %244, i128* %XMM13, align 1, !mcsema_real_eip !28
  %245 = load i128* %XMM14_val, !mcsema_real_eip !28
  store i128 %245, i128* %XMM14, align 1, !mcsema_real_eip !28
  %246 = load i128* %XMM15_val, !mcsema_real_eip !28
  store i128 %246, i128* %XMM15, align 1, !mcsema_real_eip !28
  %247 = load i64* %STACK_BASE_val, !mcsema_real_eip !28
  store i64 %247, i64* %STACK_BASE, align 1, !mcsema_real_eip !28
  %248 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !28
  store i64 %248, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !28
  ret void, !mcsema_real_eip !28

block_0x20:                                       ; preds = %entry
  %uadd140 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %149, i32 10)
  %249 = extractvalue { i32, i1 } %uadd140, 0
  %250 = xor i32 %249, %149, !mcsema_real_eip !29
  %251 = and i32 %250, 16, !mcsema_real_eip !29
  %252 = icmp ne i32 %251, 0, !mcsema_real_eip !29
  store i1 %252, i1* %AF_val, !mcsema_real_eip !29
  %253 = icmp slt i32 %249, 0
  store i1 %253, i1* %SF_val, !mcsema_real_eip !29
  %254 = icmp eq i32 %249, 0, !mcsema_real_eip !29
  store i1 %254, i1* %ZF_val, !mcsema_real_eip !29
  %255 = xor i32 %149, -2147483648, !mcsema_real_eip !29
  %256 = and i32 %250, %255, !mcsema_real_eip !29
  %257 = icmp slt i32 %256, 0
  store i1 %257, i1* %OF_val, !mcsema_real_eip !29
  %258 = trunc i32 %249 to i8, !mcsema_real_eip !29
  %259 = tail call i8 @llvm.ctpop.i8(i8 %258), !mcsema_real_eip !29
  %260 = and i8 %259, 1
  %261 = icmp eq i8 %260, 0
  store i1 %261, i1* %PF_val, !mcsema_real_eip !29
  %262 = extractvalue { i32, i1 } %uadd140, 1
  store i1 %262, i1* %CF_val, !mcsema_real_eip !29
  %263 = zext i32 %249 to i64, !mcsema_real_eip !29
  store i64 %263, i64* %RAX_val, !mcsema_real_eip !29
  %264 = load i64* %RBP_val, !mcsema_real_eip !30
  %265 = add i64 %264, -16, !mcsema_real_eip !30
  %266 = inttoptr i64 %265 to i64*, !mcsema_real_eip !30
  %267 = bitcast i64* %266 to i32*
  store i32 %249, i32* %267, !mcsema_real_eip !30
  %268 = load i64* %RBP_val, !mcsema_real_eip !26
  %269 = add i64 %268, -16, !mcsema_real_eip !26
  %270 = inttoptr i64 %269 to i64*, !mcsema_real_eip !26
  %271 = bitcast i64* %270 to i32*
  %272 = load i32* %271, !mcsema_real_eip !26
  %273 = zext i32 %272 to i64, !mcsema_real_eip !26
  store i64 %273, i64* %RAX_val, !mcsema_real_eip !26
  %274 = load i64* %RSP_val, !mcsema_real_eip !27
  %275 = inttoptr i64 %274 to i64*, !mcsema_real_eip !27
  %276 = load i64* %275, !mcsema_real_eip !27
  store i64 %276, i64* %RBP_val, !mcsema_real_eip !27
  %277 = add i64 %274, 16, !mcsema_real_eip !28
  store i64 %277, i64* %RSP_val, !mcsema_real_eip !28
  %278 = load i64* %RAX_val, !mcsema_real_eip !28
  store i64 %278, i64* %RAX, !mcsema_real_eip !28
  %279 = load i64* %RBX_val, !mcsema_real_eip !28
  store i64 %279, i64* %RBX, !mcsema_real_eip !28
  %280 = load i64* %RCX_val, !mcsema_real_eip !28
  store i64 %280, i64* %RCX, !mcsema_real_eip !28
  %281 = load i64* %RDX_val, !mcsema_real_eip !28
  store i64 %281, i64* %RDX, !mcsema_real_eip !28
  %282 = load i64* %RSI_val, !mcsema_real_eip !28
  store i64 %282, i64* %RSI, !mcsema_real_eip !28
  %283 = load i64* %RDI_val, !mcsema_real_eip !28
  store i64 %283, i64* %RDI, !mcsema_real_eip !28
  %284 = load i64* %RSP_val, !mcsema_real_eip !28
  store i64 %284, i64* %RSP, !mcsema_real_eip !28
  %285 = load i64* %RBP_val, !mcsema_real_eip !28
  store i64 %285, i64* %RBP, !mcsema_real_eip !28
  %286 = load i64* %R8_val, !mcsema_real_eip !28
  store i64 %286, i64* %R8, !mcsema_real_eip !28
  %287 = load i64* %R9_val, !mcsema_real_eip !28
  store i64 %287, i64* %R9, !mcsema_real_eip !28
  %288 = load i64* %R10_val, !mcsema_real_eip !28
  store i64 %288, i64* %R10, !mcsema_real_eip !28
  %289 = load i64* %R11_val, !mcsema_real_eip !28
  store i64 %289, i64* %R11, !mcsema_real_eip !28
  %290 = load i64* %R12_val, !mcsema_real_eip !28
  store i64 %290, i64* %R12, !mcsema_real_eip !28
  %291 = load i64* %R13_val, !mcsema_real_eip !28
  store i64 %291, i64* %R13, !mcsema_real_eip !28
  %292 = load i64* %R14_val, !mcsema_real_eip !28
  store i64 %292, i64* %R14, !mcsema_real_eip !28
  %293 = load i64* %R15_val, !mcsema_real_eip !28
  store i64 %293, i64* %R15, !mcsema_real_eip !28
  %294 = load i64* %RIP_val, !mcsema_real_eip !28
  store i64 %294, i64* %RIP, !mcsema_real_eip !28
  %295 = load i1* %CF_val, !mcsema_real_eip !28
  store i1 %295, i1* %CF, align 1, !mcsema_real_eip !28
  %296 = load i1* %PF_val, !mcsema_real_eip !28
  store i1 %296, i1* %PF, align 1, !mcsema_real_eip !28
  %297 = load i1* %AF_val, !mcsema_real_eip !28
  store i1 %297, i1* %AF, align 1, !mcsema_real_eip !28
  %298 = load i1* %ZF_val, !mcsema_real_eip !28
  store i1 %298, i1* %ZF, align 1, !mcsema_real_eip !28
  %299 = load i1* %SF_val, !mcsema_real_eip !28
  store i1 %299, i1* %SF, align 1, !mcsema_real_eip !28
  %300 = load i1* %OF_val, !mcsema_real_eip !28
  store i1 %300, i1* %OF, align 1, !mcsema_real_eip !28
  %301 = load i1* %DF_val, !mcsema_real_eip !28
  store i1 %301, i1* %DF, align 1, !mcsema_real_eip !28
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !28
  %302 = load i1* %FPU_B_val, !mcsema_real_eip !28
  store i1 %302, i1* %FPU_B, align 1, !mcsema_real_eip !28
  %303 = load i1* %FPU_C3_val, !mcsema_real_eip !28
  store i1 %303, i1* %FPU_C3, align 1, !mcsema_real_eip !28
  %304 = load i3* %FPU_TOP_val, !mcsema_real_eip !28
  store i3 %304, i3* %FPU_TOP, align 1, !mcsema_real_eip !28
  %305 = load i1* %FPU_C2_val, !mcsema_real_eip !28
  store i1 %305, i1* %FPU_C2, align 1, !mcsema_real_eip !28
  %306 = load i1* %FPU_C1_val, !mcsema_real_eip !28
  store i1 %306, i1* %FPU_C1, align 1, !mcsema_real_eip !28
  %307 = load i1* %FPU_C0_val, !mcsema_real_eip !28
  store i1 %307, i1* %FPU_C0, align 1, !mcsema_real_eip !28
  %308 = load i1* %FPU_ES_val, !mcsema_real_eip !28
  store i1 %308, i1* %FPU_ES, align 1, !mcsema_real_eip !28
  %309 = load i1* %FPU_SF_val, !mcsema_real_eip !28
  store i1 %309, i1* %FPU_SF, align 1, !mcsema_real_eip !28
  %310 = load i1* %FPU_PE_val, !mcsema_real_eip !28
  store i1 %310, i1* %FPU_PE, align 1, !mcsema_real_eip !28
  %311 = load i1* %FPU_UE_val, !mcsema_real_eip !28
  store i1 %311, i1* %FPU_UE, align 1, !mcsema_real_eip !28
  %312 = load i1* %FPU_OE_val, !mcsema_real_eip !28
  store i1 %312, i1* %FPU_OE, align 1, !mcsema_real_eip !28
  %313 = load i1* %FPU_ZE_val, !mcsema_real_eip !28
  store i1 %313, i1* %FPU_ZE, align 1, !mcsema_real_eip !28
  %314 = load i1* %FPU_DE_val, !mcsema_real_eip !28
  store i1 %314, i1* %FPU_DE, align 1, !mcsema_real_eip !28
  %315 = load i1* %FPU_IE_val, !mcsema_real_eip !28
  store i1 %315, i1* %FPU_IE, align 1, !mcsema_real_eip !28
  %316 = load i1* %FPU_X_val, !mcsema_real_eip !28
  store i1 %316, i1* %FPU_X, align 1, !mcsema_real_eip !28
  %317 = load i2* %FPU_RC_val, !mcsema_real_eip !28
  store i2 %317, i2* %FPU_RC, align 1, !mcsema_real_eip !28
  %318 = load i2* %FPU_PC_val, !mcsema_real_eip !28
  store i2 %318, i2* %FPU_PC, align 1, !mcsema_real_eip !28
  %319 = load i1* %FPU_PM_val, !mcsema_real_eip !28
  store i1 %319, i1* %FPU_PM, align 1, !mcsema_real_eip !28
  %320 = load i1* %FPU_UM_val, !mcsema_real_eip !28
  store i1 %320, i1* %FPU_UM, align 1, !mcsema_real_eip !28
  %321 = load i1* %FPU_OM_val, !mcsema_real_eip !28
  store i1 %321, i1* %FPU_OM, align 1, !mcsema_real_eip !28
  %322 = load i1* %FPU_ZM_val, !mcsema_real_eip !28
  store i1 %322, i1* %FPU_ZM, align 1, !mcsema_real_eip !28
  %323 = load i1* %FPU_DM_val, !mcsema_real_eip !28
  store i1 %323, i1* %FPU_DM, align 1, !mcsema_real_eip !28
  %324 = load i1* %FPU_IM_val, !mcsema_real_eip !28
  store i1 %324, i1* %FPU_IM, align 1, !mcsema_real_eip !28
  %325 = load i64* %53, align 4
  store i64 %325, i64* %52, align 4
  %326 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !28
  store i16 %326, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !28
  %327 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !28
  store i64 %327, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !28
  %328 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !28
  store i16 %328, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !28
  %329 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !28
  store i64 %329, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !28
  %330 = load i128* %XMM0_val, !mcsema_real_eip !28
  store i128 %330, i128* %XMM0, align 1, !mcsema_real_eip !28
  %331 = load i128* %XMM1_val, !mcsema_real_eip !28
  store i128 %331, i128* %XMM1, align 1, !mcsema_real_eip !28
  %332 = load i128* %XMM2_val, !mcsema_real_eip !28
  store i128 %332, i128* %XMM2, align 1, !mcsema_real_eip !28
  %333 = load i128* %XMM3_val, !mcsema_real_eip !28
  store i128 %333, i128* %XMM3, align 1, !mcsema_real_eip !28
  %334 = load i128* %XMM4_val, !mcsema_real_eip !28
  store i128 %334, i128* %XMM4, align 1, !mcsema_real_eip !28
  %335 = load i128* %XMM5_val, !mcsema_real_eip !28
  store i128 %335, i128* %XMM5, align 1, !mcsema_real_eip !28
  %336 = load i128* %XMM6_val, !mcsema_real_eip !28
  store i128 %336, i128* %XMM6, align 1, !mcsema_real_eip !28
  %337 = load i128* %XMM7_val, !mcsema_real_eip !28
  store i128 %337, i128* %XMM7, align 1, !mcsema_real_eip !28
  %338 = load i128* %XMM8_val, !mcsema_real_eip !28
  store i128 %338, i128* %XMM8, align 1, !mcsema_real_eip !28
  %339 = load i128* %XMM9_val, !mcsema_real_eip !28
  store i128 %339, i128* %XMM9, align 1, !mcsema_real_eip !28
  %340 = load i128* %XMM10_val, !mcsema_real_eip !28
  store i128 %340, i128* %XMM10, align 1, !mcsema_real_eip !28
  %341 = load i128* %XMM11_val, !mcsema_real_eip !28
  store i128 %341, i128* %XMM11, align 1, !mcsema_real_eip !28
  %342 = load i128* %XMM12_val, !mcsema_real_eip !28
  store i128 %342, i128* %XMM12, align 1, !mcsema_real_eip !28
  %343 = load i128* %XMM13_val, !mcsema_real_eip !28
  store i128 %343, i128* %XMM13, align 1, !mcsema_real_eip !28
  %344 = load i128* %XMM14_val, !mcsema_real_eip !28
  store i128 %344, i128* %XMM14, align 1, !mcsema_real_eip !28
  %345 = load i128* %XMM15_val, !mcsema_real_eip !28
  store i128 %345, i128* %XMM15, align 1, !mcsema_real_eip !28
  %346 = load i64* %STACK_BASE_val, !mcsema_real_eip !28
  store i64 %346, i64* %STACK_BASE, align 1, !mcsema_real_eip !28
  %347 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !28
  store i64 %347, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !28
  ret void, !mcsema_real_eip !28
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_40(%struct.regs* %0)
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
!2 = metadata !{i64 64, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 65, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = metadata !{i64 68, [16 x i8] c"\09subq\09$16, %rsp\00"}
!5 = metadata !{i64 72, [16 x i8] c"\09movl\09$10, %edi\00"}
!6 = metadata !{i64 77, [16 x i8] c"\09movl\09$20, %esi\00"}
!7 = metadata !{i64 82, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!8 = metadata !{i64 89, [11 x i8] c"\09callq\09-94\00"}
!9 = metadata !{i64 94, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!10 = metadata !{i64 97, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!11 = metadata !{i64 100, [16 x i8] c"\09addq\09$16, %rsp\00"}
!12 = metadata !{i64 104, [11 x i8] c"\09popq\09%rbp\00"}
!13 = metadata !{i64 105, [6 x i8] c"\09retq\00"}
!14 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!15 = metadata !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!16 = metadata !{i64 4, [21 x i8] c"\09movl\09%edi, -4(%rbp)\00"}
!17 = metadata !{i64 7, [21 x i8] c"\09movl\09%esi, -8(%rbp)\00"}
!18 = metadata !{i64 10, [21 x i8] c"\09movl\09-4(%rbp), %esi\00"}
!19 = metadata !{i64 13, [21 x i8] c"\09addl\09-8(%rbp), %esi\00"}
!20 = metadata !{i64 16, [22 x i8] c"\09movl\09%esi, -12(%rbp)\00"}
!21 = metadata !{i64 19, [20 x i8] c"\09cmpl\09$40, -4(%rbp)\00"}
!22 = metadata !{i64 26, [8 x i8] c"\09jle\0916\00"}
!23 = metadata !{i64 48, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!24 = metadata !{i64 51, [16 x i8] c"\09subl\09$10, %eax\00"}
!25 = metadata !{i64 56, [22 x i8] c"\09movl\09%eax, -16(%rbp)\00"}
!26 = metadata !{i64 59, [22 x i8] c"\09movl\09-16(%rbp), %eax\00"}
!27 = metadata !{i64 62, [11 x i8] c"\09popq\09%rbp\00"}
!28 = metadata !{i64 63, [6 x i8] c"\09retq\00"}
!29 = metadata !{i64 35, [16 x i8] c"\09addl\09$10, %eax\00"}
!30 = metadata !{i64 40, [22 x i8] c"\09movl\09%eax, -16(%rbp)\00"}
