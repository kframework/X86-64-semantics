; ModuleID = 'test_2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_70(%struct.regs*) #0 {
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
  store i64 10, i64* %RDI_val, !mcsema_real_eip !5
  store i64 20, i64* %RSI_val, !mcsema_real_eip !6
  store i64 30, i64* %RDX_val, !mcsema_real_eip !7
  store i64 40, i64* %RCX_val, !mcsema_real_eip !8
  store i64 50, i64* %R8_val, !mcsema_real_eip !9
  store i64 60, i64* %R9_val, !mcsema_real_eip !10
  store i64 70, i64* %RAX_val, !mcsema_real_eip !11
  store i64 80, i64* %R10_val, !mcsema_real_eip !12
  %94 = load i64* %RBP_val, !mcsema_real_eip !13
  %95 = add i64 %94, -4, !mcsema_real_eip !13
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !13
  %97 = bitcast i64* %96 to i32*
  store i32 0, i32* %97, !mcsema_real_eip !13
  %98 = load i64* %RSP_val, !mcsema_real_eip !14
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !14
  %100 = bitcast i64* %99 to i32*
  store i32 70, i32* %100, !mcsema_real_eip !14
  %101 = load i64* %RSP_val, !mcsema_real_eip !15
  %102 = add i64 %101, 8, !mcsema_real_eip !15
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !15
  %104 = bitcast i64* %103 to i32*
  store i32 80, i32* %104, !mcsema_real_eip !15
  %105 = load i64* %RBP_val, !mcsema_real_eip !16
  %106 = add i64 %105, -12, !mcsema_real_eip !16
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !16
  %108 = load i64* %R10_val, !mcsema_real_eip !16
  %109 = trunc i64 %108 to i32, !mcsema_real_eip !16
  %110 = bitcast i64* %107 to i32*
  store i32 %109, i32* %110, !mcsema_real_eip !16
  %111 = load i64* %RBP_val, !mcsema_real_eip !17
  %112 = add i64 %111, -16, !mcsema_real_eip !17
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !17
  %114 = load i64* %RAX_val, !mcsema_real_eip !17
  %115 = trunc i64 %114 to i32, !mcsema_real_eip !17
  %116 = bitcast i64* %113 to i32*
  store i32 %115, i32* %116, !mcsema_real_eip !17
  %117 = load i64* %RSP_val, !mcsema_real_eip !18
  %118 = add i64 %117, -8
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !18
  store i64 -4981261766360305936, i64* %119, !mcsema_real_eip !18
  store i64 %118, i64* %RSP_val, !mcsema_real_eip !18
  %120 = load i64* %RAX_val, !mcsema_real_eip !18
  store i64 %120, i64* %RAX, !mcsema_real_eip !18
  %121 = load i64* %RBX_val, !mcsema_real_eip !18
  store i64 %121, i64* %RBX, !mcsema_real_eip !18
  %122 = load i64* %RCX_val, !mcsema_real_eip !18
  store i64 %122, i64* %RCX, !mcsema_real_eip !18
  %123 = load i64* %RDX_val, !mcsema_real_eip !18
  store i64 %123, i64* %RDX, !mcsema_real_eip !18
  %124 = load i64* %RSI_val, !mcsema_real_eip !18
  store i64 %124, i64* %RSI, !mcsema_real_eip !18
  %125 = load i64* %RDI_val, !mcsema_real_eip !18
  store i64 %125, i64* %RDI, !mcsema_real_eip !18
  %126 = load i64* %RSP_val, !mcsema_real_eip !18
  store i64 %126, i64* %RSP, !mcsema_real_eip !18
  %127 = load i64* %RBP_val, !mcsema_real_eip !18
  store i64 %127, i64* %RBP, !mcsema_real_eip !18
  %128 = load i64* %R8_val, !mcsema_real_eip !18
  store i64 %128, i64* %R8, !mcsema_real_eip !18
  %129 = load i64* %R9_val, !mcsema_real_eip !18
  store i64 %129, i64* %R9, !mcsema_real_eip !18
  %130 = load i64* %R10_val, !mcsema_real_eip !18
  store i64 %130, i64* %R10, !mcsema_real_eip !18
  %131 = load i64* %R11_val, !mcsema_real_eip !18
  store i64 %131, i64* %R11, !mcsema_real_eip !18
  %132 = load i64* %R12_val, !mcsema_real_eip !18
  store i64 %132, i64* %R12, !mcsema_real_eip !18
  %133 = load i64* %R13_val, !mcsema_real_eip !18
  store i64 %133, i64* %R13, !mcsema_real_eip !18
  %134 = load i64* %R14_val, !mcsema_real_eip !18
  store i64 %134, i64* %R14, !mcsema_real_eip !18
  %135 = load i64* %R15_val, !mcsema_real_eip !18
  store i64 %135, i64* %R15, !mcsema_real_eip !18
  %136 = load i64* %RIP_val, !mcsema_real_eip !18
  store i64 %136, i64* %RIP, !mcsema_real_eip !18
  %137 = load i1* %CF_val, !mcsema_real_eip !18
  store i1 %137, i1* %CF, align 1, !mcsema_real_eip !18
  %138 = load i1* %PF_val, !mcsema_real_eip !18
  store i1 %138, i1* %PF, align 1, !mcsema_real_eip !18
  %139 = load i1* %AF_val, !mcsema_real_eip !18
  store i1 %139, i1* %AF, align 1, !mcsema_real_eip !18
  %140 = load i1* %ZF_val, !mcsema_real_eip !18
  store i1 %140, i1* %ZF, align 1, !mcsema_real_eip !18
  %141 = load i1* %SF_val, !mcsema_real_eip !18
  store i1 %141, i1* %SF, align 1, !mcsema_real_eip !18
  %142 = load i1* %OF_val, !mcsema_real_eip !18
  store i1 %142, i1* %OF, align 1, !mcsema_real_eip !18
  %143 = load i1* %DF_val, !mcsema_real_eip !18
  store i1 %143, i1* %DF, align 1, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !18
  %144 = load i1* %FPU_B_val, !mcsema_real_eip !18
  store i1 %144, i1* %FPU_B, align 1, !mcsema_real_eip !18
  %145 = load i1* %FPU_C3_val, !mcsema_real_eip !18
  store i1 %145, i1* %FPU_C3, align 1, !mcsema_real_eip !18
  %146 = load i3* %FPU_TOP_val, !mcsema_real_eip !18
  store i3 %146, i3* %FPU_TOP, align 1, !mcsema_real_eip !18
  %147 = load i1* %FPU_C2_val, !mcsema_real_eip !18
  store i1 %147, i1* %FPU_C2, align 1, !mcsema_real_eip !18
  %148 = load i1* %FPU_C1_val, !mcsema_real_eip !18
  store i1 %148, i1* %FPU_C1, align 1, !mcsema_real_eip !18
  %149 = load i1* %FPU_C0_val, !mcsema_real_eip !18
  store i1 %149, i1* %FPU_C0, align 1, !mcsema_real_eip !18
  %150 = load i1* %FPU_ES_val, !mcsema_real_eip !18
  store i1 %150, i1* %FPU_ES, align 1, !mcsema_real_eip !18
  %151 = load i1* %FPU_SF_val, !mcsema_real_eip !18
  store i1 %151, i1* %FPU_SF, align 1, !mcsema_real_eip !18
  %152 = load i1* %FPU_PE_val, !mcsema_real_eip !18
  store i1 %152, i1* %FPU_PE, align 1, !mcsema_real_eip !18
  %153 = load i1* %FPU_UE_val, !mcsema_real_eip !18
  store i1 %153, i1* %FPU_UE, align 1, !mcsema_real_eip !18
  %154 = load i1* %FPU_OE_val, !mcsema_real_eip !18
  store i1 %154, i1* %FPU_OE, align 1, !mcsema_real_eip !18
  %155 = load i1* %FPU_ZE_val, !mcsema_real_eip !18
  store i1 %155, i1* %FPU_ZE, align 1, !mcsema_real_eip !18
  %156 = load i1* %FPU_DE_val, !mcsema_real_eip !18
  store i1 %156, i1* %FPU_DE, align 1, !mcsema_real_eip !18
  %157 = load i1* %FPU_IE_val, !mcsema_real_eip !18
  store i1 %157, i1* %FPU_IE, align 1, !mcsema_real_eip !18
  %158 = load i1* %FPU_X_val, !mcsema_real_eip !18
  store i1 %158, i1* %FPU_X, align 1, !mcsema_real_eip !18
  %159 = load i2* %FPU_RC_val, !mcsema_real_eip !18
  store i2 %159, i2* %FPU_RC, align 1, !mcsema_real_eip !18
  %160 = load i2* %FPU_PC_val, !mcsema_real_eip !18
  store i2 %160, i2* %FPU_PC, align 1, !mcsema_real_eip !18
  %161 = load i1* %FPU_PM_val, !mcsema_real_eip !18
  store i1 %161, i1* %FPU_PM, align 1, !mcsema_real_eip !18
  %162 = load i1* %FPU_UM_val, !mcsema_real_eip !18
  store i1 %162, i1* %FPU_UM, align 1, !mcsema_real_eip !18
  %163 = load i1* %FPU_OM_val, !mcsema_real_eip !18
  store i1 %163, i1* %FPU_OM, align 1, !mcsema_real_eip !18
  %164 = load i1* %FPU_ZM_val, !mcsema_real_eip !18
  store i1 %164, i1* %FPU_ZM, align 1, !mcsema_real_eip !18
  %165 = load i1* %FPU_DM_val, !mcsema_real_eip !18
  store i1 %165, i1* %FPU_DM, align 1, !mcsema_real_eip !18
  %166 = load i1* %FPU_IM_val, !mcsema_real_eip !18
  store i1 %166, i1* %FPU_IM, align 1, !mcsema_real_eip !18
  %167 = load i64* %53, align 4
  store i64 %167, i64* %52, align 4
  %168 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !18
  store i16 %168, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !18
  %169 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !18
  store i64 %169, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !18
  %170 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !18
  store i16 %170, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !18
  %171 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !18
  store i64 %171, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !18
  %172 = load i128* %XMM0_val, !mcsema_real_eip !18
  store i128 %172, i128* %XMM0, align 1, !mcsema_real_eip !18
  %173 = load i128* %XMM1_val, !mcsema_real_eip !18
  store i128 %173, i128* %XMM1, align 1, !mcsema_real_eip !18
  %174 = load i128* %XMM2_val, !mcsema_real_eip !18
  store i128 %174, i128* %XMM2, align 1, !mcsema_real_eip !18
  %175 = load i128* %XMM3_val, !mcsema_real_eip !18
  store i128 %175, i128* %XMM3, align 1, !mcsema_real_eip !18
  %176 = load i128* %XMM4_val, !mcsema_real_eip !18
  store i128 %176, i128* %XMM4, align 1, !mcsema_real_eip !18
  %177 = load i128* %XMM5_val, !mcsema_real_eip !18
  store i128 %177, i128* %XMM5, align 1, !mcsema_real_eip !18
  %178 = load i128* %XMM6_val, !mcsema_real_eip !18
  store i128 %178, i128* %XMM6, align 1, !mcsema_real_eip !18
  %179 = load i128* %XMM7_val, !mcsema_real_eip !18
  store i128 %179, i128* %XMM7, align 1, !mcsema_real_eip !18
  %180 = load i128* %XMM8_val, !mcsema_real_eip !18
  store i128 %180, i128* %XMM8, align 1, !mcsema_real_eip !18
  %181 = load i128* %XMM9_val, !mcsema_real_eip !18
  store i128 %181, i128* %XMM9, align 1, !mcsema_real_eip !18
  %182 = load i128* %XMM10_val, !mcsema_real_eip !18
  store i128 %182, i128* %XMM10, align 1, !mcsema_real_eip !18
  %183 = load i128* %XMM11_val, !mcsema_real_eip !18
  store i128 %183, i128* %XMM11, align 1, !mcsema_real_eip !18
  %184 = load i128* %XMM12_val, !mcsema_real_eip !18
  store i128 %184, i128* %XMM12, align 1, !mcsema_real_eip !18
  %185 = load i128* %XMM13_val, !mcsema_real_eip !18
  store i128 %185, i128* %XMM13, align 1, !mcsema_real_eip !18
  %186 = load i128* %XMM14_val, !mcsema_real_eip !18
  store i128 %186, i128* %XMM14, align 1, !mcsema_real_eip !18
  %187 = load i128* %XMM15_val, !mcsema_real_eip !18
  store i128 %187, i128* %XMM15, align 1, !mcsema_real_eip !18
  %188 = load i64* %STACK_BASE_val, !mcsema_real_eip !18
  store i64 %188, i64* %STACK_BASE, align 1, !mcsema_real_eip !18
  %189 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !18
  store i64 %189, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !18
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !18
  %190 = load i64* %RAX, !mcsema_real_eip !18
  store i64 %190, i64* %RAX_val, !mcsema_real_eip !18
  %191 = load i64* %RBX, !mcsema_real_eip !18
  store i64 %191, i64* %RBX_val, !mcsema_real_eip !18
  %192 = load i64* %RCX, !mcsema_real_eip !18
  store i64 %192, i64* %RCX_val, !mcsema_real_eip !18
  %193 = load i64* %RDX, !mcsema_real_eip !18
  store i64 %193, i64* %RDX_val, !mcsema_real_eip !18
  %194 = load i64* %RSI, !mcsema_real_eip !18
  store i64 %194, i64* %RSI_val, !mcsema_real_eip !18
  %195 = load i64* %RDI, !mcsema_real_eip !18
  store i64 %195, i64* %RDI_val, !mcsema_real_eip !18
  %196 = load i64* %RSP, !mcsema_real_eip !18
  store i64 %196, i64* %RSP_val, !mcsema_real_eip !18
  %197 = load i64* %RBP, !mcsema_real_eip !18
  store i64 %197, i64* %RBP_val, !mcsema_real_eip !18
  %198 = load i64* %R8, !mcsema_real_eip !18
  store i64 %198, i64* %R8_val, !mcsema_real_eip !18
  %199 = load i64* %R9, !mcsema_real_eip !18
  store i64 %199, i64* %R9_val, !mcsema_real_eip !18
  %200 = load i64* %R10, !mcsema_real_eip !18
  store i64 %200, i64* %R10_val, !mcsema_real_eip !18
  %201 = load i64* %R11, !mcsema_real_eip !18
  store i64 %201, i64* %R11_val, !mcsema_real_eip !18
  %202 = load i64* %R12, !mcsema_real_eip !18
  store i64 %202, i64* %R12_val, !mcsema_real_eip !18
  %203 = load i64* %R13, !mcsema_real_eip !18
  store i64 %203, i64* %R13_val, !mcsema_real_eip !18
  %204 = load i64* %R14, !mcsema_real_eip !18
  store i64 %204, i64* %R14_val, !mcsema_real_eip !18
  %205 = load i64* %R15, !mcsema_real_eip !18
  store i64 %205, i64* %R15_val, !mcsema_real_eip !18
  %206 = load i64* %RIP, !mcsema_real_eip !18
  store i64 %206, i64* %RIP_val, !mcsema_real_eip !18
  %207 = load i1* %CF, align 1, !mcsema_real_eip !18
  store i1 %207, i1* %CF_val, !mcsema_real_eip !18
  %208 = load i1* %PF, align 1, !mcsema_real_eip !18
  store i1 %208, i1* %PF_val, !mcsema_real_eip !18
  %209 = load i1* %AF, align 1, !mcsema_real_eip !18
  store i1 %209, i1* %AF_val, !mcsema_real_eip !18
  %210 = load i1* %ZF, align 1, !mcsema_real_eip !18
  store i1 %210, i1* %ZF_val, !mcsema_real_eip !18
  %211 = load i1* %SF, align 1, !mcsema_real_eip !18
  store i1 %211, i1* %SF_val, !mcsema_real_eip !18
  %212 = load i1* %OF, align 1, !mcsema_real_eip !18
  store i1 %212, i1* %OF_val, !mcsema_real_eip !18
  %213 = load i1* %DF, align 1, !mcsema_real_eip !18
  store i1 %213, i1* %DF_val, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !18
  %214 = load i1* %FPU_B, align 1, !mcsema_real_eip !18
  store i1 %214, i1* %FPU_B_val, !mcsema_real_eip !18
  %215 = load i1* %FPU_C3, align 1, !mcsema_real_eip !18
  store i1 %215, i1* %FPU_C3_val, !mcsema_real_eip !18
  %216 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !18
  store i3 %216, i3* %FPU_TOP_val, !mcsema_real_eip !18
  %217 = load i1* %FPU_C2, align 1, !mcsema_real_eip !18
  store i1 %217, i1* %FPU_C2_val, !mcsema_real_eip !18
  %218 = load i1* %FPU_C1, align 1, !mcsema_real_eip !18
  store i1 %218, i1* %FPU_C1_val, !mcsema_real_eip !18
  %219 = load i1* %FPU_C0, align 1, !mcsema_real_eip !18
  store i1 %219, i1* %FPU_C0_val, !mcsema_real_eip !18
  %220 = load i1* %FPU_ES, align 1, !mcsema_real_eip !18
  store i1 %220, i1* %FPU_ES_val, !mcsema_real_eip !18
  %221 = load i1* %FPU_SF, align 1, !mcsema_real_eip !18
  store i1 %221, i1* %FPU_SF_val, !mcsema_real_eip !18
  %222 = load i1* %FPU_PE, align 1, !mcsema_real_eip !18
  store i1 %222, i1* %FPU_PE_val, !mcsema_real_eip !18
  %223 = load i1* %FPU_UE, align 1, !mcsema_real_eip !18
  store i1 %223, i1* %FPU_UE_val, !mcsema_real_eip !18
  %224 = load i1* %FPU_OE, align 1, !mcsema_real_eip !18
  store i1 %224, i1* %FPU_OE_val, !mcsema_real_eip !18
  %225 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !18
  store i1 %225, i1* %FPU_ZE_val, !mcsema_real_eip !18
  %226 = load i1* %FPU_DE, align 1, !mcsema_real_eip !18
  store i1 %226, i1* %FPU_DE_val, !mcsema_real_eip !18
  %227 = load i1* %FPU_IE, align 1, !mcsema_real_eip !18
  store i1 %227, i1* %FPU_IE_val, !mcsema_real_eip !18
  %228 = load i1* %FPU_X, align 1, !mcsema_real_eip !18
  store i1 %228, i1* %FPU_X_val, !mcsema_real_eip !18
  %229 = load i2* %FPU_RC, align 1, !mcsema_real_eip !18
  store i2 %229, i2* %FPU_RC_val, !mcsema_real_eip !18
  %230 = load i2* %FPU_PC, align 1, !mcsema_real_eip !18
  store i2 %230, i2* %FPU_PC_val, !mcsema_real_eip !18
  %231 = load i1* %FPU_PM, align 1, !mcsema_real_eip !18
  store i1 %231, i1* %FPU_PM_val, !mcsema_real_eip !18
  %232 = load i1* %FPU_UM, align 1, !mcsema_real_eip !18
  store i1 %232, i1* %FPU_UM_val, !mcsema_real_eip !18
  %233 = load i1* %FPU_OM, align 1, !mcsema_real_eip !18
  store i1 %233, i1* %FPU_OM_val, !mcsema_real_eip !18
  %234 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !18
  store i1 %234, i1* %FPU_ZM_val, !mcsema_real_eip !18
  %235 = load i1* %FPU_DM, align 1, !mcsema_real_eip !18
  store i1 %235, i1* %FPU_DM_val, !mcsema_real_eip !18
  %236 = load i1* %FPU_IM, align 1, !mcsema_real_eip !18
  store i1 %236, i1* %FPU_IM_val, !mcsema_real_eip !18
  %237 = load i64* %52, align 4
  store i64 %237, i64* %53, align 4
  %238 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !18
  store i16 %238, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !18
  %239 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !18
  store i64 %239, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !18
  %240 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !18
  store i16 %240, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !18
  %241 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !18
  store i64 %241, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !18
  %242 = load i128* %XMM0, align 1, !mcsema_real_eip !18
  store i128 %242, i128* %XMM0_val, !mcsema_real_eip !18
  %243 = load i128* %XMM1, align 1, !mcsema_real_eip !18
  store i128 %243, i128* %XMM1_val, !mcsema_real_eip !18
  %244 = load i128* %XMM2, align 1, !mcsema_real_eip !18
  store i128 %244, i128* %XMM2_val, !mcsema_real_eip !18
  %245 = load i128* %XMM3, align 1, !mcsema_real_eip !18
  store i128 %245, i128* %XMM3_val, !mcsema_real_eip !18
  %246 = load i128* %XMM4, align 1, !mcsema_real_eip !18
  store i128 %246, i128* %XMM4_val, !mcsema_real_eip !18
  %247 = load i128* %XMM5, align 1, !mcsema_real_eip !18
  store i128 %247, i128* %XMM5_val, !mcsema_real_eip !18
  %248 = load i128* %XMM6, align 1, !mcsema_real_eip !18
  store i128 %248, i128* %XMM6_val, !mcsema_real_eip !18
  %249 = load i128* %XMM7, align 1, !mcsema_real_eip !18
  store i128 %249, i128* %XMM7_val, !mcsema_real_eip !18
  %250 = load i128* %XMM8, align 1, !mcsema_real_eip !18
  store i128 %250, i128* %XMM8_val, !mcsema_real_eip !18
  %251 = load i128* %XMM9, align 1, !mcsema_real_eip !18
  store i128 %251, i128* %XMM9_val, !mcsema_real_eip !18
  %252 = load i128* %XMM10, align 1, !mcsema_real_eip !18
  store i128 %252, i128* %XMM10_val, !mcsema_real_eip !18
  %253 = load i128* %XMM11, align 1, !mcsema_real_eip !18
  store i128 %253, i128* %XMM11_val, !mcsema_real_eip !18
  %254 = load i128* %XMM12, align 1, !mcsema_real_eip !18
  store i128 %254, i128* %XMM12_val, !mcsema_real_eip !18
  %255 = load i128* %XMM13, align 1, !mcsema_real_eip !18
  store i128 %255, i128* %XMM13_val, !mcsema_real_eip !18
  %256 = load i128* %XMM14, align 1, !mcsema_real_eip !18
  store i128 %256, i128* %XMM14_val, !mcsema_real_eip !18
  %257 = load i128* %XMM15, align 1, !mcsema_real_eip !18
  store i128 %257, i128* %XMM15_val, !mcsema_real_eip !18
  %258 = load i64* %STACK_BASE, !mcsema_real_eip !18
  store i64 %258, i64* %STACK_BASE_val, !mcsema_real_eip !18
  %259 = load i64* %STACK_LIMIT, !mcsema_real_eip !18
  store i64 %259, i64* %STACK_LIMIT_val, !mcsema_real_eip !18
  %260 = load i64* %RBP_val, !mcsema_real_eip !19
  %261 = add i64 %260, -8, !mcsema_real_eip !19
  %262 = inttoptr i64 %261 to i64*, !mcsema_real_eip !19
  %263 = load i64* %RAX_val, !mcsema_real_eip !19
  %264 = trunc i64 %263 to i32, !mcsema_real_eip !19
  %265 = bitcast i64* %262 to i32*
  store i32 %264, i32* %265, !mcsema_real_eip !19
  %266 = load i64* %RBP_val, !mcsema_real_eip !20
  %267 = add i64 %266, -8, !mcsema_real_eip !20
  %268 = inttoptr i64 %267 to i64*, !mcsema_real_eip !20
  %269 = bitcast i64* %268 to i32*
  %270 = load i32* %269, !mcsema_real_eip !20
  %271 = zext i32 %270 to i64, !mcsema_real_eip !20
  store i64 %271, i64* %RAX_val, !mcsema_real_eip !20
  %272 = load i64* %RSP_val, !mcsema_real_eip !21
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %272, i64 32)
  %273 = extractvalue { i64, i1 } %uadd, 0
  %274 = xor i64 %273, %272, !mcsema_real_eip !21
  %275 = and i64 %274, 16, !mcsema_real_eip !21
  %276 = icmp ne i64 %275, 0, !mcsema_real_eip !21
  store i1 %276, i1* %AF_val, !mcsema_real_eip !21
  %277 = icmp slt i64 %273, 0
  store i1 %277, i1* %SF_val, !mcsema_real_eip !21
  %278 = icmp eq i64 %273, 0, !mcsema_real_eip !21
  store i1 %278, i1* %ZF_val, !mcsema_real_eip !21
  %279 = xor i64 %272, -9223372036854775808, !mcsema_real_eip !21
  %280 = and i64 %274, %279, !mcsema_real_eip !21
  %281 = icmp slt i64 %280, 0
  store i1 %281, i1* %OF_val, !mcsema_real_eip !21
  %282 = trunc i64 %273 to i8, !mcsema_real_eip !21
  %283 = tail call i8 @llvm.ctpop.i8(i8 %282), !mcsema_real_eip !21
  %284 = and i8 %283, 1
  %285 = icmp eq i8 %284, 0
  store i1 %285, i1* %PF_val, !mcsema_real_eip !21
  %286 = extractvalue { i64, i1 } %uadd, 1
  store i1 %286, i1* %CF_val, !mcsema_real_eip !21
  store i64 %273, i64* %RSP_val, !mcsema_real_eip !21
  %287 = inttoptr i64 %273 to i64*, !mcsema_real_eip !22
  %288 = load i64* %287, !mcsema_real_eip !22
  store i64 %288, i64* %RBP_val, !mcsema_real_eip !22
  %289 = add i64 %273, 16, !mcsema_real_eip !23
  store i64 %289, i64* %RSP_val, !mcsema_real_eip !23
  %290 = load i64* %RAX_val, !mcsema_real_eip !23
  store i64 %290, i64* %RAX, !mcsema_real_eip !23
  %291 = load i64* %RBX_val, !mcsema_real_eip !23
  store i64 %291, i64* %RBX, !mcsema_real_eip !23
  %292 = load i64* %RCX_val, !mcsema_real_eip !23
  store i64 %292, i64* %RCX, !mcsema_real_eip !23
  %293 = load i64* %RDX_val, !mcsema_real_eip !23
  store i64 %293, i64* %RDX, !mcsema_real_eip !23
  %294 = load i64* %RSI_val, !mcsema_real_eip !23
  store i64 %294, i64* %RSI, !mcsema_real_eip !23
  %295 = load i64* %RDI_val, !mcsema_real_eip !23
  store i64 %295, i64* %RDI, !mcsema_real_eip !23
  %296 = load i64* %RSP_val, !mcsema_real_eip !23
  store i64 %296, i64* %RSP, !mcsema_real_eip !23
  %297 = load i64* %RBP_val, !mcsema_real_eip !23
  store i64 %297, i64* %RBP, !mcsema_real_eip !23
  %298 = load i64* %R8_val, !mcsema_real_eip !23
  store i64 %298, i64* %R8, !mcsema_real_eip !23
  %299 = load i64* %R9_val, !mcsema_real_eip !23
  store i64 %299, i64* %R9, !mcsema_real_eip !23
  %300 = load i64* %R10_val, !mcsema_real_eip !23
  store i64 %300, i64* %R10, !mcsema_real_eip !23
  %301 = load i64* %R11_val, !mcsema_real_eip !23
  store i64 %301, i64* %R11, !mcsema_real_eip !23
  %302 = load i64* %R12_val, !mcsema_real_eip !23
  store i64 %302, i64* %R12, !mcsema_real_eip !23
  %303 = load i64* %R13_val, !mcsema_real_eip !23
  store i64 %303, i64* %R13, !mcsema_real_eip !23
  %304 = load i64* %R14_val, !mcsema_real_eip !23
  store i64 %304, i64* %R14, !mcsema_real_eip !23
  %305 = load i64* %R15_val, !mcsema_real_eip !23
  store i64 %305, i64* %R15, !mcsema_real_eip !23
  %306 = load i64* %RIP_val, !mcsema_real_eip !23
  store i64 %306, i64* %RIP, !mcsema_real_eip !23
  %307 = load i1* %CF_val, !mcsema_real_eip !23
  store i1 %307, i1* %CF, align 1, !mcsema_real_eip !23
  %308 = load i1* %PF_val, !mcsema_real_eip !23
  store i1 %308, i1* %PF, align 1, !mcsema_real_eip !23
  %309 = load i1* %AF_val, !mcsema_real_eip !23
  store i1 %309, i1* %AF, align 1, !mcsema_real_eip !23
  %310 = load i1* %ZF_val, !mcsema_real_eip !23
  store i1 %310, i1* %ZF, align 1, !mcsema_real_eip !23
  %311 = load i1* %SF_val, !mcsema_real_eip !23
  store i1 %311, i1* %SF, align 1, !mcsema_real_eip !23
  %312 = load i1* %OF_val, !mcsema_real_eip !23
  store i1 %312, i1* %OF, align 1, !mcsema_real_eip !23
  %313 = load i1* %DF_val, !mcsema_real_eip !23
  store i1 %313, i1* %DF, align 1, !mcsema_real_eip !23
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !23
  %314 = load i1* %FPU_B_val, !mcsema_real_eip !23
  store i1 %314, i1* %FPU_B, align 1, !mcsema_real_eip !23
  %315 = load i1* %FPU_C3_val, !mcsema_real_eip !23
  store i1 %315, i1* %FPU_C3, align 1, !mcsema_real_eip !23
  %316 = load i3* %FPU_TOP_val, !mcsema_real_eip !23
  store i3 %316, i3* %FPU_TOP, align 1, !mcsema_real_eip !23
  %317 = load i1* %FPU_C2_val, !mcsema_real_eip !23
  store i1 %317, i1* %FPU_C2, align 1, !mcsema_real_eip !23
  %318 = load i1* %FPU_C1_val, !mcsema_real_eip !23
  store i1 %318, i1* %FPU_C1, align 1, !mcsema_real_eip !23
  %319 = load i1* %FPU_C0_val, !mcsema_real_eip !23
  store i1 %319, i1* %FPU_C0, align 1, !mcsema_real_eip !23
  %320 = load i1* %FPU_ES_val, !mcsema_real_eip !23
  store i1 %320, i1* %FPU_ES, align 1, !mcsema_real_eip !23
  %321 = load i1* %FPU_SF_val, !mcsema_real_eip !23
  store i1 %321, i1* %FPU_SF, align 1, !mcsema_real_eip !23
  %322 = load i1* %FPU_PE_val, !mcsema_real_eip !23
  store i1 %322, i1* %FPU_PE, align 1, !mcsema_real_eip !23
  %323 = load i1* %FPU_UE_val, !mcsema_real_eip !23
  store i1 %323, i1* %FPU_UE, align 1, !mcsema_real_eip !23
  %324 = load i1* %FPU_OE_val, !mcsema_real_eip !23
  store i1 %324, i1* %FPU_OE, align 1, !mcsema_real_eip !23
  %325 = load i1* %FPU_ZE_val, !mcsema_real_eip !23
  store i1 %325, i1* %FPU_ZE, align 1, !mcsema_real_eip !23
  %326 = load i1* %FPU_DE_val, !mcsema_real_eip !23
  store i1 %326, i1* %FPU_DE, align 1, !mcsema_real_eip !23
  %327 = load i1* %FPU_IE_val, !mcsema_real_eip !23
  store i1 %327, i1* %FPU_IE, align 1, !mcsema_real_eip !23
  %328 = load i1* %FPU_X_val, !mcsema_real_eip !23
  store i1 %328, i1* %FPU_X, align 1, !mcsema_real_eip !23
  %329 = load i2* %FPU_RC_val, !mcsema_real_eip !23
  store i2 %329, i2* %FPU_RC, align 1, !mcsema_real_eip !23
  %330 = load i2* %FPU_PC_val, !mcsema_real_eip !23
  store i2 %330, i2* %FPU_PC, align 1, !mcsema_real_eip !23
  %331 = load i1* %FPU_PM_val, !mcsema_real_eip !23
  store i1 %331, i1* %FPU_PM, align 1, !mcsema_real_eip !23
  %332 = load i1* %FPU_UM_val, !mcsema_real_eip !23
  store i1 %332, i1* %FPU_UM, align 1, !mcsema_real_eip !23
  %333 = load i1* %FPU_OM_val, !mcsema_real_eip !23
  store i1 %333, i1* %FPU_OM, align 1, !mcsema_real_eip !23
  %334 = load i1* %FPU_ZM_val, !mcsema_real_eip !23
  store i1 %334, i1* %FPU_ZM, align 1, !mcsema_real_eip !23
  %335 = load i1* %FPU_DM_val, !mcsema_real_eip !23
  store i1 %335, i1* %FPU_DM, align 1, !mcsema_real_eip !23
  %336 = load i1* %FPU_IM_val, !mcsema_real_eip !23
  store i1 %336, i1* %FPU_IM, align 1, !mcsema_real_eip !23
  %337 = load i64* %53, align 4
  store i64 %337, i64* %52, align 4
  %338 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !23
  store i16 %338, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !23
  %339 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !23
  store i64 %339, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !23
  %340 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !23
  store i16 %340, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !23
  %341 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !23
  store i64 %341, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !23
  %342 = load i128* %XMM0_val, !mcsema_real_eip !23
  store i128 %342, i128* %XMM0, align 1, !mcsema_real_eip !23
  %343 = load i128* %XMM1_val, !mcsema_real_eip !23
  store i128 %343, i128* %XMM1, align 1, !mcsema_real_eip !23
  %344 = load i128* %XMM2_val, !mcsema_real_eip !23
  store i128 %344, i128* %XMM2, align 1, !mcsema_real_eip !23
  %345 = load i128* %XMM3_val, !mcsema_real_eip !23
  store i128 %345, i128* %XMM3, align 1, !mcsema_real_eip !23
  %346 = load i128* %XMM4_val, !mcsema_real_eip !23
  store i128 %346, i128* %XMM4, align 1, !mcsema_real_eip !23
  %347 = load i128* %XMM5_val, !mcsema_real_eip !23
  store i128 %347, i128* %XMM5, align 1, !mcsema_real_eip !23
  %348 = load i128* %XMM6_val, !mcsema_real_eip !23
  store i128 %348, i128* %XMM6, align 1, !mcsema_real_eip !23
  %349 = load i128* %XMM7_val, !mcsema_real_eip !23
  store i128 %349, i128* %XMM7, align 1, !mcsema_real_eip !23
  %350 = load i128* %XMM8_val, !mcsema_real_eip !23
  store i128 %350, i128* %XMM8, align 1, !mcsema_real_eip !23
  %351 = load i128* %XMM9_val, !mcsema_real_eip !23
  store i128 %351, i128* %XMM9, align 1, !mcsema_real_eip !23
  %352 = load i128* %XMM10_val, !mcsema_real_eip !23
  store i128 %352, i128* %XMM10, align 1, !mcsema_real_eip !23
  %353 = load i128* %XMM11_val, !mcsema_real_eip !23
  store i128 %353, i128* %XMM11, align 1, !mcsema_real_eip !23
  %354 = load i128* %XMM12_val, !mcsema_real_eip !23
  store i128 %354, i128* %XMM12, align 1, !mcsema_real_eip !23
  %355 = load i128* %XMM13_val, !mcsema_real_eip !23
  store i128 %355, i128* %XMM13, align 1, !mcsema_real_eip !23
  %356 = load i128* %XMM14_val, !mcsema_real_eip !23
  store i128 %356, i128* %XMM14, align 1, !mcsema_real_eip !23
  %357 = load i128* %XMM15_val, !mcsema_real_eip !23
  store i128 %357, i128* %XMM15, align 1, !mcsema_real_eip !23
  %358 = load i64* %STACK_BASE_val, !mcsema_real_eip !23
  store i64 %358, i64* %STACK_BASE, align 1, !mcsema_real_eip !23
  %359 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !23
  store i64 %359, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !23
  ret void, !mcsema_real_eip !23
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !24
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !24
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !24
  %XMM15_val = alloca i128, !mcsema_real_eip !24
  %XMM14_val = alloca i128, !mcsema_real_eip !24
  %XMM13_val = alloca i128, !mcsema_real_eip !24
  %XMM12_val = alloca i128, !mcsema_real_eip !24
  %XMM11_val = alloca i128, !mcsema_real_eip !24
  %XMM10_val = alloca i128, !mcsema_real_eip !24
  %XMM9_val = alloca i128, !mcsema_real_eip !24
  %XMM8_val = alloca i128, !mcsema_real_eip !24
  %XMM7_val = alloca i128, !mcsema_real_eip !24
  %XMM6_val = alloca i128, !mcsema_real_eip !24
  %XMM5_val = alloca i128, !mcsema_real_eip !24
  %XMM4_val = alloca i128, !mcsema_real_eip !24
  %XMM3_val = alloca i128, !mcsema_real_eip !24
  %XMM2_val = alloca i128, !mcsema_real_eip !24
  %XMM1_val = alloca i128, !mcsema_real_eip !24
  %XMM0_val = alloca i128, !mcsema_real_eip !24
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !24
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !24
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !24
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !24
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !24
  %FPU_IM_val = alloca i1, !mcsema_real_eip !24
  %FPU_DM_val = alloca i1, !mcsema_real_eip !24
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !24
  %FPU_OM_val = alloca i1, !mcsema_real_eip !24
  %FPU_UM_val = alloca i1, !mcsema_real_eip !24
  %FPU_PM_val = alloca i1, !mcsema_real_eip !24
  %FPU_PC_val = alloca i2, !mcsema_real_eip !24
  %FPU_RC_val = alloca i2, !mcsema_real_eip !24
  %FPU_X_val = alloca i1, !mcsema_real_eip !24
  %FPU_IE_val = alloca i1, !mcsema_real_eip !24
  %FPU_DE_val = alloca i1, !mcsema_real_eip !24
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !24
  %FPU_OE_val = alloca i1, !mcsema_real_eip !24
  %FPU_UE_val = alloca i1, !mcsema_real_eip !24
  %FPU_PE_val = alloca i1, !mcsema_real_eip !24
  %FPU_SF_val = alloca i1, !mcsema_real_eip !24
  %FPU_ES_val = alloca i1, !mcsema_real_eip !24
  %FPU_C0_val = alloca i1, !mcsema_real_eip !24
  %FPU_C1_val = alloca i1, !mcsema_real_eip !24
  %FPU_C2_val = alloca i1, !mcsema_real_eip !24
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !24
  %FPU_C3_val = alloca i1, !mcsema_real_eip !24
  %FPU_B_val = alloca i1, !mcsema_real_eip !24
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !24
  %DF_val = alloca i1, !mcsema_real_eip !24
  %OF_val = alloca i1, !mcsema_real_eip !24
  %SF_val = alloca i1, !mcsema_real_eip !24
  %CF_val = alloca i1, !mcsema_real_eip !24
  %AF_val = alloca i1, !mcsema_real_eip !24
  %PF_val = alloca i1, !mcsema_real_eip !24
  %ZF_val = alloca i1, !mcsema_real_eip !24
  %RIP_val = alloca i64, !mcsema_real_eip !24
  %R14_val = alloca i64, !mcsema_real_eip !24
  %R13_val = alloca i64, !mcsema_real_eip !24
  %R12_val = alloca i64, !mcsema_real_eip !24
  %R11_val = alloca i64, !mcsema_real_eip !24
  %R10_val = alloca i64, !mcsema_real_eip !24
  %R9_val = alloca i64, !mcsema_real_eip !24
  %R8_val = alloca i64, !mcsema_real_eip !24
  %RSP_val = alloca i64, !mcsema_real_eip !24
  %RBP_val = alloca i64, !mcsema_real_eip !24
  %RDI_val = alloca i64, !mcsema_real_eip !24
  %RSI_val = alloca i64, !mcsema_real_eip !24
  %RDX_val = alloca i64, !mcsema_real_eip !24
  %RCX_val = alloca i64, !mcsema_real_eip !24
  %RBX_val = alloca i64, !mcsema_real_eip !24
  %RAX_val = alloca i64, !mcsema_real_eip !24
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !24
  %1 = load i64* %RAX, !mcsema_real_eip !24
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !24
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !24
  %2 = load i64* %RBX, !mcsema_real_eip !24
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !24
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !24
  %3 = load i64* %RCX, !mcsema_real_eip !24
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !24
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !24
  %4 = load i64* %RDX, !mcsema_real_eip !24
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !24
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !24
  %5 = load i64* %RSI, !mcsema_real_eip !24
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !24
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !24
  %6 = load i64* %RDI, !mcsema_real_eip !24
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !24
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !24
  %7 = load i64* %RSP, !mcsema_real_eip !24
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !24
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !24
  %8 = load i64* %RBP, !mcsema_real_eip !24
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !24
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !24
  %9 = load i64* %R8, !mcsema_real_eip !24
  store i64 %9, i64* %R8_val, !mcsema_real_eip !24
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !24
  %10 = load i64* %R9, !mcsema_real_eip !24
  store i64 %10, i64* %R9_val, !mcsema_real_eip !24
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !24
  %11 = load i64* %R10, !mcsema_real_eip !24
  store i64 %11, i64* %R10_val, !mcsema_real_eip !24
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !24
  %12 = load i64* %R11, !mcsema_real_eip !24
  store i64 %12, i64* %R11_val, !mcsema_real_eip !24
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !24
  %13 = load i64* %R12, !mcsema_real_eip !24
  store i64 %13, i64* %R12_val, !mcsema_real_eip !24
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !24
  %14 = load i64* %R13, !mcsema_real_eip !24
  store i64 %14, i64* %R13_val, !mcsema_real_eip !24
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !24
  %15 = load i64* %R14, !mcsema_real_eip !24
  store i64 %15, i64* %R14_val, !mcsema_real_eip !24
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !24
  %16 = load i64* %R15, !mcsema_real_eip !24
  store i64 %16, i64* %R15_val, !mcsema_real_eip !24
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !24
  %17 = load i64* %RIP, !mcsema_real_eip !24
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !24
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !24
  %18 = load i1* %CF, align 1, !mcsema_real_eip !24
  store i1 %18, i1* %CF_val, !mcsema_real_eip !24
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !24
  %19 = load i1* %PF, align 1, !mcsema_real_eip !24
  store i1 %19, i1* %PF_val, !mcsema_real_eip !24
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !24
  %20 = load i1* %AF, align 1, !mcsema_real_eip !24
  store i1 %20, i1* %AF_val, !mcsema_real_eip !24
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !24
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !24
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !24
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !24
  %22 = load i1* %SF, align 1, !mcsema_real_eip !24
  store i1 %22, i1* %SF_val, !mcsema_real_eip !24
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !24
  %23 = load i1* %OF, align 1, !mcsema_real_eip !24
  store i1 %23, i1* %OF_val, !mcsema_real_eip !24
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !24
  %24 = load i1* %DF, align 1, !mcsema_real_eip !24
  store i1 %24, i1* %DF_val, !mcsema_real_eip !24
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !24
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !24
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !24
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !24
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !24
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !24
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !24
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !24
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !24
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !24
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !24
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !24
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !24
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !24
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !24
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !24
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !24
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !24
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !24
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !24
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !24
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !24
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !24
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !24
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !24
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !24
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !24
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !24
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !24
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !24
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !24
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !24
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !24
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !24
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !24
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !24
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !24
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !24
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !24
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !24
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !24
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !24
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !24
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !24
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !24
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !24
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !24
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !24
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !24
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !24
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !24
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !24
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !24
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !24
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !24
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !24
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !24
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !24
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !24
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !24
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !24
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !24
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !24
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !24
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !24
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !24
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !24
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !24
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !24
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !24
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !24
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !24
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !24
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !24
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !24
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !24
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !24
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !24
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !24
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !24
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !24
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !24
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !24
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !24
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !24
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !24
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !24
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !24
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !24
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !24
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !24
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !24
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !24
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !24
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !24
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !24
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !24
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !24
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !24
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !24
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !24
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !24
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !24
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !24
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !24
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !24
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !24
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !24
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !24
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !24
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !24
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !24
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !24
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !24
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !24
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !24
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !24
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !24
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !24
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !24
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !24
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !24
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !24
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !24
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !24
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !24
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !24
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !24
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !24
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !24
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !24
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !24
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !24
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !24
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !24
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !24
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !24
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !24
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !24
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !24
  %77 = load i64* %RBP_val, !mcsema_real_eip !24
  %78 = load i64* %RSP_val, !mcsema_real_eip !24
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !24
  store i64 %77, i64* %80, !mcsema_real_eip !24
  store i64 %79, i64* %RSP_val, !mcsema_real_eip !24
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !25
  %81 = add i64 %78, 16, !mcsema_real_eip !26
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !26
  %83 = bitcast i64* %82 to i32*
  %84 = load i32* %83, !mcsema_real_eip !26
  %85 = zext i32 %84 to i64, !mcsema_real_eip !26
  store i64 %85, i64* %RAX_val, !mcsema_real_eip !26
  %86 = load i64* %RBP_val, !mcsema_real_eip !27
  %87 = add i64 %86, 16, !mcsema_real_eip !27
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !27
  %89 = bitcast i64* %88 to i32*
  %90 = load i32* %89, !mcsema_real_eip !27
  %91 = zext i32 %90 to i64, !mcsema_real_eip !27
  store i64 %91, i64* %R10_val, !mcsema_real_eip !27
  %92 = load i64* %RBP_val, !mcsema_real_eip !28
  %93 = add i64 %92, -4, !mcsema_real_eip !28
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !28
  %95 = load i64* %RDI_val, !mcsema_real_eip !28
  %96 = trunc i64 %95 to i32, !mcsema_real_eip !28
  %97 = bitcast i64* %94 to i32*
  store i32 %96, i32* %97, !mcsema_real_eip !28
  %98 = load i64* %RBP_val, !mcsema_real_eip !29
  %99 = add i64 %98, -8, !mcsema_real_eip !29
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !29
  %101 = load i64* %RSI_val, !mcsema_real_eip !29
  %102 = trunc i64 %101 to i32, !mcsema_real_eip !29
  %103 = bitcast i64* %100 to i32*
  store i32 %102, i32* %103, !mcsema_real_eip !29
  %104 = load i64* %RBP_val, !mcsema_real_eip !30
  %105 = add i64 %104, -12, !mcsema_real_eip !30
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !30
  %107 = load i64* %RDX_val, !mcsema_real_eip !30
  %108 = trunc i64 %107 to i32, !mcsema_real_eip !30
  %109 = bitcast i64* %106 to i32*
  store i32 %108, i32* %109, !mcsema_real_eip !30
  %110 = load i64* %RBP_val, !mcsema_real_eip !31
  %111 = add i64 %110, -16, !mcsema_real_eip !31
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !31
  %113 = load i64* %RCX_val, !mcsema_real_eip !31
  %114 = trunc i64 %113 to i32, !mcsema_real_eip !31
  %115 = bitcast i64* %112 to i32*
  store i32 %114, i32* %115, !mcsema_real_eip !31
  %116 = load i64* %RBP_val, !mcsema_real_eip !32
  %117 = add i64 %116, -20, !mcsema_real_eip !32
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !32
  %119 = load i64* %R8_val, !mcsema_real_eip !32
  %120 = trunc i64 %119 to i32, !mcsema_real_eip !32
  %121 = bitcast i64* %118 to i32*
  store i32 %120, i32* %121, !mcsema_real_eip !32
  %122 = load i64* %RBP_val, !mcsema_real_eip !33
  %123 = add i64 %122, -24, !mcsema_real_eip !33
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !33
  %125 = load i64* %R9_val, !mcsema_real_eip !33
  %126 = trunc i64 %125 to i32, !mcsema_real_eip !33
  %127 = bitcast i64* %124 to i32*
  store i32 %126, i32* %127, !mcsema_real_eip !33
  %128 = load i64* %RBP_val, !mcsema_real_eip !34
  %129 = add i64 %128, -28, !mcsema_real_eip !34
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !34
  %131 = load i64* %R10_val, !mcsema_real_eip !34
  %132 = trunc i64 %131 to i32, !mcsema_real_eip !34
  %133 = bitcast i64* %130 to i32*
  store i32 %132, i32* %133, !mcsema_real_eip !34
  %134 = load i64* %RBP_val, !mcsema_real_eip !35
  %135 = add i64 %134, -32, !mcsema_real_eip !35
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !35
  %137 = load i64* %RAX_val, !mcsema_real_eip !35
  %138 = trunc i64 %137 to i32, !mcsema_real_eip !35
  %139 = bitcast i64* %136 to i32*
  store i32 %138, i32* %139, !mcsema_real_eip !35
  %140 = load i64* %RBP_val, !mcsema_real_eip !36
  %141 = add i64 %140, -4, !mcsema_real_eip !36
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !36
  %143 = bitcast i64* %142 to i32*
  %144 = load i32* %143, !mcsema_real_eip !36
  %145 = zext i32 %144 to i64, !mcsema_real_eip !36
  store i64 %145, i64* %RAX_val, !mcsema_real_eip !36
  %146 = load i64* %RBP_val, !mcsema_real_eip !37
  %147 = add i64 %146, -8, !mcsema_real_eip !37
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !37
  %149 = bitcast i64* %148 to i32*
  %150 = load i32* %149, !mcsema_real_eip !37
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %144, i32 %150)
  %151 = extractvalue { i32, i1 } %uadd, 0
  %152 = xor i32 %151, %150, !mcsema_real_eip !37
  %153 = xor i32 %152, %144, !mcsema_real_eip !37
  %154 = and i32 %153, 16, !mcsema_real_eip !37
  %155 = icmp ne i32 %154, 0, !mcsema_real_eip !37
  store i1 %155, i1* %AF_val, !mcsema_real_eip !37
  %156 = icmp slt i32 %151, 0
  store i1 %156, i1* %SF_val, !mcsema_real_eip !37
  %157 = icmp eq i32 %151, 0, !mcsema_real_eip !37
  store i1 %157, i1* %ZF_val, !mcsema_real_eip !37
  %158 = xor i32 %144, -2147483648, !mcsema_real_eip !37
  %159 = xor i32 %158, %150, !mcsema_real_eip !37
  %160 = and i32 %152, %159, !mcsema_real_eip !37
  %161 = icmp slt i32 %160, 0
  store i1 %161, i1* %OF_val, !mcsema_real_eip !37
  %162 = trunc i32 %151 to i8, !mcsema_real_eip !37
  %163 = tail call i8 @llvm.ctpop.i8(i8 %162), !mcsema_real_eip !37
  %164 = and i8 %163, 1
  %165 = icmp eq i8 %164, 0
  store i1 %165, i1* %PF_val, !mcsema_real_eip !37
  %166 = extractvalue { i32, i1 } %uadd, 1
  store i1 %166, i1* %CF_val, !mcsema_real_eip !37
  %167 = zext i32 %151 to i64, !mcsema_real_eip !37
  store i64 %167, i64* %RAX_val, !mcsema_real_eip !37
  %168 = load i64* %RBP_val, !mcsema_real_eip !38
  %169 = add i64 %168, -12, !mcsema_real_eip !38
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !38
  %171 = bitcast i64* %170 to i32*
  %172 = load i32* %171, !mcsema_real_eip !38
  %uadd139 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %151, i32 %172)
  %173 = extractvalue { i32, i1 } %uadd139, 0
  %174 = xor i32 %173, %172, !mcsema_real_eip !38
  %175 = xor i32 %174, %151, !mcsema_real_eip !38
  %176 = and i32 %175, 16, !mcsema_real_eip !38
  %177 = icmp ne i32 %176, 0, !mcsema_real_eip !38
  store i1 %177, i1* %AF_val, !mcsema_real_eip !38
  %178 = icmp slt i32 %173, 0
  store i1 %178, i1* %SF_val, !mcsema_real_eip !38
  %179 = icmp eq i32 %173, 0, !mcsema_real_eip !38
  store i1 %179, i1* %ZF_val, !mcsema_real_eip !38
  %180 = xor i32 %151, -2147483648, !mcsema_real_eip !38
  %181 = xor i32 %180, %172, !mcsema_real_eip !38
  %182 = and i32 %174, %181, !mcsema_real_eip !38
  %183 = icmp slt i32 %182, 0
  store i1 %183, i1* %OF_val, !mcsema_real_eip !38
  %184 = trunc i32 %173 to i8, !mcsema_real_eip !38
  %185 = tail call i8 @llvm.ctpop.i8(i8 %184), !mcsema_real_eip !38
  %186 = and i8 %185, 1
  %187 = icmp eq i8 %186, 0
  store i1 %187, i1* %PF_val, !mcsema_real_eip !38
  %188 = extractvalue { i32, i1 } %uadd139, 1
  store i1 %188, i1* %CF_val, !mcsema_real_eip !38
  %189 = zext i32 %173 to i64, !mcsema_real_eip !38
  store i64 %189, i64* %RAX_val, !mcsema_real_eip !38
  %190 = load i64* %RBP_val, !mcsema_real_eip !39
  %191 = add i64 %190, -16, !mcsema_real_eip !39
  %192 = inttoptr i64 %191 to i64*, !mcsema_real_eip !39
  %193 = bitcast i64* %192 to i32*
  %194 = load i32* %193, !mcsema_real_eip !39
  %uadd140 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %173, i32 %194)
  %195 = extractvalue { i32, i1 } %uadd140, 0
  %196 = xor i32 %195, %194, !mcsema_real_eip !39
  %197 = xor i32 %196, %173, !mcsema_real_eip !39
  %198 = and i32 %197, 16, !mcsema_real_eip !39
  %199 = icmp ne i32 %198, 0, !mcsema_real_eip !39
  store i1 %199, i1* %AF_val, !mcsema_real_eip !39
  %200 = icmp slt i32 %195, 0
  store i1 %200, i1* %SF_val, !mcsema_real_eip !39
  %201 = icmp eq i32 %195, 0, !mcsema_real_eip !39
  store i1 %201, i1* %ZF_val, !mcsema_real_eip !39
  %202 = xor i32 %173, -2147483648, !mcsema_real_eip !39
  %203 = xor i32 %202, %194, !mcsema_real_eip !39
  %204 = and i32 %196, %203, !mcsema_real_eip !39
  %205 = icmp slt i32 %204, 0
  store i1 %205, i1* %OF_val, !mcsema_real_eip !39
  %206 = trunc i32 %195 to i8, !mcsema_real_eip !39
  %207 = tail call i8 @llvm.ctpop.i8(i8 %206), !mcsema_real_eip !39
  %208 = and i8 %207, 1
  %209 = icmp eq i8 %208, 0
  store i1 %209, i1* %PF_val, !mcsema_real_eip !39
  %210 = extractvalue { i32, i1 } %uadd140, 1
  store i1 %210, i1* %CF_val, !mcsema_real_eip !39
  %211 = zext i32 %195 to i64, !mcsema_real_eip !39
  store i64 %211, i64* %RAX_val, !mcsema_real_eip !39
  %212 = load i64* %RBP_val, !mcsema_real_eip !40
  %213 = add i64 %212, -20, !mcsema_real_eip !40
  %214 = inttoptr i64 %213 to i64*, !mcsema_real_eip !40
  %215 = bitcast i64* %214 to i32*
  %216 = load i32* %215, !mcsema_real_eip !40
  %uadd141 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %195, i32 %216)
  %217 = extractvalue { i32, i1 } %uadd141, 0
  %218 = xor i32 %217, %216, !mcsema_real_eip !40
  %219 = xor i32 %218, %195, !mcsema_real_eip !40
  %220 = and i32 %219, 16, !mcsema_real_eip !40
  %221 = icmp ne i32 %220, 0, !mcsema_real_eip !40
  store i1 %221, i1* %AF_val, !mcsema_real_eip !40
  %222 = icmp slt i32 %217, 0
  store i1 %222, i1* %SF_val, !mcsema_real_eip !40
  %223 = icmp eq i32 %217, 0, !mcsema_real_eip !40
  store i1 %223, i1* %ZF_val, !mcsema_real_eip !40
  %224 = xor i32 %195, -2147483648, !mcsema_real_eip !40
  %225 = xor i32 %224, %216, !mcsema_real_eip !40
  %226 = and i32 %218, %225, !mcsema_real_eip !40
  %227 = icmp slt i32 %226, 0
  store i1 %227, i1* %OF_val, !mcsema_real_eip !40
  %228 = trunc i32 %217 to i8, !mcsema_real_eip !40
  %229 = tail call i8 @llvm.ctpop.i8(i8 %228), !mcsema_real_eip !40
  %230 = and i8 %229, 1
  %231 = icmp eq i8 %230, 0
  store i1 %231, i1* %PF_val, !mcsema_real_eip !40
  %232 = extractvalue { i32, i1 } %uadd141, 1
  store i1 %232, i1* %CF_val, !mcsema_real_eip !40
  %233 = zext i32 %217 to i64, !mcsema_real_eip !40
  store i64 %233, i64* %RAX_val, !mcsema_real_eip !40
  %234 = load i64* %RBP_val, !mcsema_real_eip !41
  %235 = add i64 %234, -24, !mcsema_real_eip !41
  %236 = inttoptr i64 %235 to i64*, !mcsema_real_eip !41
  %237 = bitcast i64* %236 to i32*
  %238 = load i32* %237, !mcsema_real_eip !41
  %uadd142 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %217, i32 %238)
  %239 = extractvalue { i32, i1 } %uadd142, 0
  %240 = xor i32 %239, %238, !mcsema_real_eip !41
  %241 = xor i32 %240, %217, !mcsema_real_eip !41
  %242 = and i32 %241, 16, !mcsema_real_eip !41
  %243 = icmp ne i32 %242, 0, !mcsema_real_eip !41
  store i1 %243, i1* %AF_val, !mcsema_real_eip !41
  %244 = icmp slt i32 %239, 0
  store i1 %244, i1* %SF_val, !mcsema_real_eip !41
  %245 = icmp eq i32 %239, 0, !mcsema_real_eip !41
  store i1 %245, i1* %ZF_val, !mcsema_real_eip !41
  %246 = xor i32 %217, -2147483648, !mcsema_real_eip !41
  %247 = xor i32 %246, %238, !mcsema_real_eip !41
  %248 = and i32 %240, %247, !mcsema_real_eip !41
  %249 = icmp slt i32 %248, 0
  store i1 %249, i1* %OF_val, !mcsema_real_eip !41
  %250 = trunc i32 %239 to i8, !mcsema_real_eip !41
  %251 = tail call i8 @llvm.ctpop.i8(i8 %250), !mcsema_real_eip !41
  %252 = and i8 %251, 1
  %253 = icmp eq i8 %252, 0
  store i1 %253, i1* %PF_val, !mcsema_real_eip !41
  %254 = extractvalue { i32, i1 } %uadd142, 1
  store i1 %254, i1* %CF_val, !mcsema_real_eip !41
  %255 = zext i32 %239 to i64, !mcsema_real_eip !41
  store i64 %255, i64* %RAX_val, !mcsema_real_eip !41
  %256 = load i64* %RBP_val, !mcsema_real_eip !42
  %257 = add i64 %256, -28, !mcsema_real_eip !42
  %258 = inttoptr i64 %257 to i64*, !mcsema_real_eip !42
  %259 = bitcast i64* %258 to i32*
  %260 = load i32* %259, !mcsema_real_eip !42
  %uadd143 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %239, i32 %260)
  %261 = extractvalue { i32, i1 } %uadd143, 0
  %262 = xor i32 %261, %260, !mcsema_real_eip !42
  %263 = xor i32 %262, %239, !mcsema_real_eip !42
  %264 = and i32 %263, 16, !mcsema_real_eip !42
  %265 = icmp ne i32 %264, 0, !mcsema_real_eip !42
  store i1 %265, i1* %AF_val, !mcsema_real_eip !42
  %266 = icmp slt i32 %261, 0
  store i1 %266, i1* %SF_val, !mcsema_real_eip !42
  %267 = icmp eq i32 %261, 0, !mcsema_real_eip !42
  store i1 %267, i1* %ZF_val, !mcsema_real_eip !42
  %268 = xor i32 %239, -2147483648, !mcsema_real_eip !42
  %269 = xor i32 %268, %260, !mcsema_real_eip !42
  %270 = and i32 %262, %269, !mcsema_real_eip !42
  %271 = icmp slt i32 %270, 0
  store i1 %271, i1* %OF_val, !mcsema_real_eip !42
  %272 = trunc i32 %261 to i8, !mcsema_real_eip !42
  %273 = tail call i8 @llvm.ctpop.i8(i8 %272), !mcsema_real_eip !42
  %274 = and i8 %273, 1
  %275 = icmp eq i8 %274, 0
  store i1 %275, i1* %PF_val, !mcsema_real_eip !42
  %276 = extractvalue { i32, i1 } %uadd143, 1
  store i1 %276, i1* %CF_val, !mcsema_real_eip !42
  %277 = zext i32 %261 to i64, !mcsema_real_eip !42
  store i64 %277, i64* %RAX_val, !mcsema_real_eip !42
  %278 = load i64* %RBP_val, !mcsema_real_eip !43
  %279 = add i64 %278, -36, !mcsema_real_eip !43
  %280 = inttoptr i64 %279 to i64*, !mcsema_real_eip !43
  %281 = bitcast i64* %280 to i32*
  store i32 %261, i32* %281, !mcsema_real_eip !43
  %282 = load i64* %RBP_val, !mcsema_real_eip !44
  %283 = add i64 %282, -36, !mcsema_real_eip !44
  %284 = inttoptr i64 %283 to i64*, !mcsema_real_eip !44
  %285 = bitcast i64* %284 to i32*
  %286 = load i32* %285, !mcsema_real_eip !44
  %287 = add i32 %286, -40
  %288 = xor i32 %287, %286, !mcsema_real_eip !44
  %289 = and i32 %288, 16, !mcsema_real_eip !44
  %290 = icmp ne i32 %289, 0, !mcsema_real_eip !44
  store i1 %290, i1* %AF_val, !mcsema_real_eip !44
  %291 = trunc i32 %287 to i8, !mcsema_real_eip !44
  %292 = tail call i8 @llvm.ctpop.i8(i8 %291), !mcsema_real_eip !44
  %293 = and i8 %292, 1
  %294 = icmp eq i8 %293, 0
  store i1 %294, i1* %PF_val, !mcsema_real_eip !44
  %295 = icmp eq i32 %287, 0, !mcsema_real_eip !44
  store i1 %295, i1* %ZF_val, !mcsema_real_eip !44
  %296 = icmp slt i32 %287, 0
  store i1 %296, i1* %SF_val, !mcsema_real_eip !44
  %297 = icmp ult i32 %286, 40, !mcsema_real_eip !44
  store i1 %297, i1* %CF_val, !mcsema_real_eip !44
  %298 = and i32 %288, %286, !mcsema_real_eip !44
  %299 = icmp slt i32 %298, 0
  store i1 %299, i1* %OF_val, !mcsema_real_eip !44
  %300 = xor i1 %296, %299
  %301 = load i1* %ZF_val, !mcsema_real_eip !45
  %302 = or i1 %301, %300, !mcsema_real_eip !45
  %303 = load i64* %RBP_val, !mcsema_real_eip !46
  %304 = add i64 %303, -36, !mcsema_real_eip !46
  %305 = inttoptr i64 %304 to i64*, !mcsema_real_eip !46
  %306 = bitcast i64* %305 to i32*
  %307 = load i32* %306, !mcsema_real_eip !46
  %308 = zext i32 %307 to i64, !mcsema_real_eip !46
  store i64 %308, i64* %RAX_val, !mcsema_real_eip !46
  %309 = load i64* %RBP_val, !mcsema_real_eip !47
  %310 = add i64 %309, -32, !mcsema_real_eip !47
  %311 = inttoptr i64 %310 to i64*, !mcsema_real_eip !47
  %312 = bitcast i64* %311 to i32*
  %313 = load i32* %312, !mcsema_real_eip !47
  br i1 %302, label %block_0x59, label %block_0x4b, !mcsema_real_eip !45

block_0x59:                                       ; preds = %entry
  %314 = sub i32 %307, %313, !mcsema_real_eip !47
  %315 = xor i32 %314, %307, !mcsema_real_eip !47
  %316 = xor i32 %315, %313, !mcsema_real_eip !47
  %317 = and i32 %316, 16, !mcsema_real_eip !47
  %318 = icmp ne i32 %317, 0, !mcsema_real_eip !47
  store i1 %318, i1* %AF_val, !mcsema_real_eip !47
  %319 = trunc i32 %314 to i8, !mcsema_real_eip !47
  %320 = tail call i8 @llvm.ctpop.i8(i8 %319), !mcsema_real_eip !47
  %321 = and i8 %320, 1
  %322 = icmp eq i8 %321, 0
  store i1 %322, i1* %PF_val, !mcsema_real_eip !47
  %323 = icmp eq i32 %307, %313
  store i1 %323, i1* %ZF_val, !mcsema_real_eip !47
  %324 = icmp slt i32 %314, 0
  store i1 %324, i1* %SF_val, !mcsema_real_eip !47
  %325 = icmp ult i32 %307, %313, !mcsema_real_eip !47
  store i1 %325, i1* %CF_val, !mcsema_real_eip !47
  %326 = xor i32 %313, %307, !mcsema_real_eip !47
  %327 = and i32 %315, %326, !mcsema_real_eip !47
  %328 = icmp slt i32 %327, 0
  store i1 %328, i1* %OF_val, !mcsema_real_eip !47
  %329 = zext i32 %314 to i64, !mcsema_real_eip !47
  store i64 %329, i64* %RAX_val, !mcsema_real_eip !47
  %330 = load i64* %RBP_val, !mcsema_real_eip !48
  %331 = add i64 %330, -40, !mcsema_real_eip !48
  %332 = inttoptr i64 %331 to i64*, !mcsema_real_eip !48
  %333 = bitcast i64* %332 to i32*
  store i32 %314, i32* %333, !mcsema_real_eip !48
  %334 = load i64* %RBP_val, !mcsema_real_eip !49
  %335 = add i64 %334, -40, !mcsema_real_eip !49
  %336 = inttoptr i64 %335 to i64*, !mcsema_real_eip !49
  %337 = bitcast i64* %336 to i32*
  %338 = load i32* %337, !mcsema_real_eip !49
  %339 = zext i32 %338 to i64, !mcsema_real_eip !49
  store i64 %339, i64* %RAX_val, !mcsema_real_eip !49
  %340 = load i64* %RSP_val, !mcsema_real_eip !50
  %341 = inttoptr i64 %340 to i64*, !mcsema_real_eip !50
  %342 = load i64* %341, !mcsema_real_eip !50
  store i64 %342, i64* %RBP_val, !mcsema_real_eip !50
  %343 = add i64 %340, 16, !mcsema_real_eip !51
  store i64 %343, i64* %RSP_val, !mcsema_real_eip !51
  %344 = load i64* %RAX_val, !mcsema_real_eip !51
  store i64 %344, i64* %RAX, !mcsema_real_eip !51
  %345 = load i64* %RBX_val, !mcsema_real_eip !51
  store i64 %345, i64* %RBX, !mcsema_real_eip !51
  %346 = load i64* %RCX_val, !mcsema_real_eip !51
  store i64 %346, i64* %RCX, !mcsema_real_eip !51
  %347 = load i64* %RDX_val, !mcsema_real_eip !51
  store i64 %347, i64* %RDX, !mcsema_real_eip !51
  %348 = load i64* %RSI_val, !mcsema_real_eip !51
  store i64 %348, i64* %RSI, !mcsema_real_eip !51
  %349 = load i64* %RDI_val, !mcsema_real_eip !51
  store i64 %349, i64* %RDI, !mcsema_real_eip !51
  %350 = load i64* %RSP_val, !mcsema_real_eip !51
  store i64 %350, i64* %RSP, !mcsema_real_eip !51
  %351 = load i64* %RBP_val, !mcsema_real_eip !51
  store i64 %351, i64* %RBP, !mcsema_real_eip !51
  %352 = load i64* %R8_val, !mcsema_real_eip !51
  store i64 %352, i64* %R8, !mcsema_real_eip !51
  %353 = load i64* %R9_val, !mcsema_real_eip !51
  store i64 %353, i64* %R9, !mcsema_real_eip !51
  %354 = load i64* %R10_val, !mcsema_real_eip !51
  store i64 %354, i64* %R10, !mcsema_real_eip !51
  %355 = load i64* %R11_val, !mcsema_real_eip !51
  store i64 %355, i64* %R11, !mcsema_real_eip !51
  %356 = load i64* %R12_val, !mcsema_real_eip !51
  store i64 %356, i64* %R12, !mcsema_real_eip !51
  %357 = load i64* %R13_val, !mcsema_real_eip !51
  store i64 %357, i64* %R13, !mcsema_real_eip !51
  %358 = load i64* %R14_val, !mcsema_real_eip !51
  store i64 %358, i64* %R14, !mcsema_real_eip !51
  %359 = load i64* %R15_val, !mcsema_real_eip !51
  store i64 %359, i64* %R15, !mcsema_real_eip !51
  %360 = load i64* %RIP_val, !mcsema_real_eip !51
  store i64 %360, i64* %RIP, !mcsema_real_eip !51
  %361 = load i1* %CF_val, !mcsema_real_eip !51
  store i1 %361, i1* %CF, align 1, !mcsema_real_eip !51
  %362 = load i1* %PF_val, !mcsema_real_eip !51
  store i1 %362, i1* %PF, align 1, !mcsema_real_eip !51
  %363 = load i1* %AF_val, !mcsema_real_eip !51
  store i1 %363, i1* %AF, align 1, !mcsema_real_eip !51
  %364 = load i1* %ZF_val, !mcsema_real_eip !51
  store i1 %364, i1* %ZF, align 1, !mcsema_real_eip !51
  %365 = load i1* %SF_val, !mcsema_real_eip !51
  store i1 %365, i1* %SF, align 1, !mcsema_real_eip !51
  %366 = load i1* %OF_val, !mcsema_real_eip !51
  store i1 %366, i1* %OF, align 1, !mcsema_real_eip !51
  %367 = load i1* %DF_val, !mcsema_real_eip !51
  store i1 %367, i1* %DF, align 1, !mcsema_real_eip !51
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !51
  %368 = load i1* %FPU_B_val, !mcsema_real_eip !51
  store i1 %368, i1* %FPU_B, align 1, !mcsema_real_eip !51
  %369 = load i1* %FPU_C3_val, !mcsema_real_eip !51
  store i1 %369, i1* %FPU_C3, align 1, !mcsema_real_eip !51
  %370 = load i3* %FPU_TOP_val, !mcsema_real_eip !51
  store i3 %370, i3* %FPU_TOP, align 1, !mcsema_real_eip !51
  %371 = load i1* %FPU_C2_val, !mcsema_real_eip !51
  store i1 %371, i1* %FPU_C2, align 1, !mcsema_real_eip !51
  %372 = load i1* %FPU_C1_val, !mcsema_real_eip !51
  store i1 %372, i1* %FPU_C1, align 1, !mcsema_real_eip !51
  %373 = load i1* %FPU_C0_val, !mcsema_real_eip !51
  store i1 %373, i1* %FPU_C0, align 1, !mcsema_real_eip !51
  %374 = load i1* %FPU_ES_val, !mcsema_real_eip !51
  store i1 %374, i1* %FPU_ES, align 1, !mcsema_real_eip !51
  %375 = load i1* %FPU_SF_val, !mcsema_real_eip !51
  store i1 %375, i1* %FPU_SF, align 1, !mcsema_real_eip !51
  %376 = load i1* %FPU_PE_val, !mcsema_real_eip !51
  store i1 %376, i1* %FPU_PE, align 1, !mcsema_real_eip !51
  %377 = load i1* %FPU_UE_val, !mcsema_real_eip !51
  store i1 %377, i1* %FPU_UE, align 1, !mcsema_real_eip !51
  %378 = load i1* %FPU_OE_val, !mcsema_real_eip !51
  store i1 %378, i1* %FPU_OE, align 1, !mcsema_real_eip !51
  %379 = load i1* %FPU_ZE_val, !mcsema_real_eip !51
  store i1 %379, i1* %FPU_ZE, align 1, !mcsema_real_eip !51
  %380 = load i1* %FPU_DE_val, !mcsema_real_eip !51
  store i1 %380, i1* %FPU_DE, align 1, !mcsema_real_eip !51
  %381 = load i1* %FPU_IE_val, !mcsema_real_eip !51
  store i1 %381, i1* %FPU_IE, align 1, !mcsema_real_eip !51
  %382 = load i1* %FPU_X_val, !mcsema_real_eip !51
  store i1 %382, i1* %FPU_X, align 1, !mcsema_real_eip !51
  %383 = load i2* %FPU_RC_val, !mcsema_real_eip !51
  store i2 %383, i2* %FPU_RC, align 1, !mcsema_real_eip !51
  %384 = load i2* %FPU_PC_val, !mcsema_real_eip !51
  store i2 %384, i2* %FPU_PC, align 1, !mcsema_real_eip !51
  %385 = load i1* %FPU_PM_val, !mcsema_real_eip !51
  store i1 %385, i1* %FPU_PM, align 1, !mcsema_real_eip !51
  %386 = load i1* %FPU_UM_val, !mcsema_real_eip !51
  store i1 %386, i1* %FPU_UM, align 1, !mcsema_real_eip !51
  %387 = load i1* %FPU_OM_val, !mcsema_real_eip !51
  store i1 %387, i1* %FPU_OM, align 1, !mcsema_real_eip !51
  %388 = load i1* %FPU_ZM_val, !mcsema_real_eip !51
  store i1 %388, i1* %FPU_ZM, align 1, !mcsema_real_eip !51
  %389 = load i1* %FPU_DM_val, !mcsema_real_eip !51
  store i1 %389, i1* %FPU_DM, align 1, !mcsema_real_eip !51
  %390 = load i1* %FPU_IM_val, !mcsema_real_eip !51
  store i1 %390, i1* %FPU_IM, align 1, !mcsema_real_eip !51
  %391 = load i64* %53, align 4
  store i64 %391, i64* %52, align 4
  %392 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !51
  store i16 %392, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !51
  %393 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !51
  store i64 %393, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !51
  %394 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !51
  store i16 %394, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !51
  %395 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !51
  store i64 %395, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !51
  %396 = load i128* %XMM0_val, !mcsema_real_eip !51
  store i128 %396, i128* %XMM0, align 1, !mcsema_real_eip !51
  %397 = load i128* %XMM1_val, !mcsema_real_eip !51
  store i128 %397, i128* %XMM1, align 1, !mcsema_real_eip !51
  %398 = load i128* %XMM2_val, !mcsema_real_eip !51
  store i128 %398, i128* %XMM2, align 1, !mcsema_real_eip !51
  %399 = load i128* %XMM3_val, !mcsema_real_eip !51
  store i128 %399, i128* %XMM3, align 1, !mcsema_real_eip !51
  %400 = load i128* %XMM4_val, !mcsema_real_eip !51
  store i128 %400, i128* %XMM4, align 1, !mcsema_real_eip !51
  %401 = load i128* %XMM5_val, !mcsema_real_eip !51
  store i128 %401, i128* %XMM5, align 1, !mcsema_real_eip !51
  %402 = load i128* %XMM6_val, !mcsema_real_eip !51
  store i128 %402, i128* %XMM6, align 1, !mcsema_real_eip !51
  %403 = load i128* %XMM7_val, !mcsema_real_eip !51
  store i128 %403, i128* %XMM7, align 1, !mcsema_real_eip !51
  %404 = load i128* %XMM8_val, !mcsema_real_eip !51
  store i128 %404, i128* %XMM8, align 1, !mcsema_real_eip !51
  %405 = load i128* %XMM9_val, !mcsema_real_eip !51
  store i128 %405, i128* %XMM9, align 1, !mcsema_real_eip !51
  %406 = load i128* %XMM10_val, !mcsema_real_eip !51
  store i128 %406, i128* %XMM10, align 1, !mcsema_real_eip !51
  %407 = load i128* %XMM11_val, !mcsema_real_eip !51
  store i128 %407, i128* %XMM11, align 1, !mcsema_real_eip !51
  %408 = load i128* %XMM12_val, !mcsema_real_eip !51
  store i128 %408, i128* %XMM12, align 1, !mcsema_real_eip !51
  %409 = load i128* %XMM13_val, !mcsema_real_eip !51
  store i128 %409, i128* %XMM13, align 1, !mcsema_real_eip !51
  %410 = load i128* %XMM14_val, !mcsema_real_eip !51
  store i128 %410, i128* %XMM14, align 1, !mcsema_real_eip !51
  %411 = load i128* %XMM15_val, !mcsema_real_eip !51
  store i128 %411, i128* %XMM15, align 1, !mcsema_real_eip !51
  %412 = load i64* %STACK_BASE_val, !mcsema_real_eip !51
  store i64 %412, i64* %STACK_BASE, align 1, !mcsema_real_eip !51
  %413 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !51
  store i64 %413, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !51
  ret void, !mcsema_real_eip !51

block_0x4b:                                       ; preds = %entry
  %uadd145 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %307, i32 %313)
  %414 = extractvalue { i32, i1 } %uadd145, 0
  %415 = xor i32 %414, %313, !mcsema_real_eip !52
  %416 = xor i32 %415, %307, !mcsema_real_eip !52
  %417 = and i32 %416, 16, !mcsema_real_eip !52
  %418 = icmp ne i32 %417, 0, !mcsema_real_eip !52
  store i1 %418, i1* %AF_val, !mcsema_real_eip !52
  %419 = icmp slt i32 %414, 0
  store i1 %419, i1* %SF_val, !mcsema_real_eip !52
  %420 = icmp eq i32 %414, 0, !mcsema_real_eip !52
  store i1 %420, i1* %ZF_val, !mcsema_real_eip !52
  %421 = xor i32 %307, -2147483648, !mcsema_real_eip !52
  %422 = xor i32 %421, %313, !mcsema_real_eip !52
  %423 = and i32 %415, %422, !mcsema_real_eip !52
  %424 = icmp slt i32 %423, 0
  store i1 %424, i1* %OF_val, !mcsema_real_eip !52
  %425 = trunc i32 %414 to i8, !mcsema_real_eip !52
  %426 = tail call i8 @llvm.ctpop.i8(i8 %425), !mcsema_real_eip !52
  %427 = and i8 %426, 1
  %428 = icmp eq i8 %427, 0
  store i1 %428, i1* %PF_val, !mcsema_real_eip !52
  %429 = extractvalue { i32, i1 } %uadd145, 1
  store i1 %429, i1* %CF_val, !mcsema_real_eip !52
  %430 = zext i32 %414 to i64, !mcsema_real_eip !52
  store i64 %430, i64* %RAX_val, !mcsema_real_eip !52
  %431 = load i64* %RBP_val, !mcsema_real_eip !53
  %432 = add i64 %431, -40, !mcsema_real_eip !53
  %433 = inttoptr i64 %432 to i64*, !mcsema_real_eip !53
  %434 = bitcast i64* %433 to i32*
  store i32 %414, i32* %434, !mcsema_real_eip !53
  %435 = load i64* %RBP_val, !mcsema_real_eip !49
  %436 = add i64 %435, -40, !mcsema_real_eip !49
  %437 = inttoptr i64 %436 to i64*, !mcsema_real_eip !49
  %438 = bitcast i64* %437 to i32*
  %439 = load i32* %438, !mcsema_real_eip !49
  %440 = zext i32 %439 to i64, !mcsema_real_eip !49
  store i64 %440, i64* %RAX_val, !mcsema_real_eip !49
  %441 = load i64* %RSP_val, !mcsema_real_eip !50
  %442 = inttoptr i64 %441 to i64*, !mcsema_real_eip !50
  %443 = load i64* %442, !mcsema_real_eip !50
  store i64 %443, i64* %RBP_val, !mcsema_real_eip !50
  %444 = add i64 %441, 16, !mcsema_real_eip !51
  store i64 %444, i64* %RSP_val, !mcsema_real_eip !51
  %445 = load i64* %RAX_val, !mcsema_real_eip !51
  store i64 %445, i64* %RAX, !mcsema_real_eip !51
  %446 = load i64* %RBX_val, !mcsema_real_eip !51
  store i64 %446, i64* %RBX, !mcsema_real_eip !51
  %447 = load i64* %RCX_val, !mcsema_real_eip !51
  store i64 %447, i64* %RCX, !mcsema_real_eip !51
  %448 = load i64* %RDX_val, !mcsema_real_eip !51
  store i64 %448, i64* %RDX, !mcsema_real_eip !51
  %449 = load i64* %RSI_val, !mcsema_real_eip !51
  store i64 %449, i64* %RSI, !mcsema_real_eip !51
  %450 = load i64* %RDI_val, !mcsema_real_eip !51
  store i64 %450, i64* %RDI, !mcsema_real_eip !51
  %451 = load i64* %RSP_val, !mcsema_real_eip !51
  store i64 %451, i64* %RSP, !mcsema_real_eip !51
  %452 = load i64* %RBP_val, !mcsema_real_eip !51
  store i64 %452, i64* %RBP, !mcsema_real_eip !51
  %453 = load i64* %R8_val, !mcsema_real_eip !51
  store i64 %453, i64* %R8, !mcsema_real_eip !51
  %454 = load i64* %R9_val, !mcsema_real_eip !51
  store i64 %454, i64* %R9, !mcsema_real_eip !51
  %455 = load i64* %R10_val, !mcsema_real_eip !51
  store i64 %455, i64* %R10, !mcsema_real_eip !51
  %456 = load i64* %R11_val, !mcsema_real_eip !51
  store i64 %456, i64* %R11, !mcsema_real_eip !51
  %457 = load i64* %R12_val, !mcsema_real_eip !51
  store i64 %457, i64* %R12, !mcsema_real_eip !51
  %458 = load i64* %R13_val, !mcsema_real_eip !51
  store i64 %458, i64* %R13, !mcsema_real_eip !51
  %459 = load i64* %R14_val, !mcsema_real_eip !51
  store i64 %459, i64* %R14, !mcsema_real_eip !51
  %460 = load i64* %R15_val, !mcsema_real_eip !51
  store i64 %460, i64* %R15, !mcsema_real_eip !51
  %461 = load i64* %RIP_val, !mcsema_real_eip !51
  store i64 %461, i64* %RIP, !mcsema_real_eip !51
  %462 = load i1* %CF_val, !mcsema_real_eip !51
  store i1 %462, i1* %CF, align 1, !mcsema_real_eip !51
  %463 = load i1* %PF_val, !mcsema_real_eip !51
  store i1 %463, i1* %PF, align 1, !mcsema_real_eip !51
  %464 = load i1* %AF_val, !mcsema_real_eip !51
  store i1 %464, i1* %AF, align 1, !mcsema_real_eip !51
  %465 = load i1* %ZF_val, !mcsema_real_eip !51
  store i1 %465, i1* %ZF, align 1, !mcsema_real_eip !51
  %466 = load i1* %SF_val, !mcsema_real_eip !51
  store i1 %466, i1* %SF, align 1, !mcsema_real_eip !51
  %467 = load i1* %OF_val, !mcsema_real_eip !51
  store i1 %467, i1* %OF, align 1, !mcsema_real_eip !51
  %468 = load i1* %DF_val, !mcsema_real_eip !51
  store i1 %468, i1* %DF, align 1, !mcsema_real_eip !51
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !51
  %469 = load i1* %FPU_B_val, !mcsema_real_eip !51
  store i1 %469, i1* %FPU_B, align 1, !mcsema_real_eip !51
  %470 = load i1* %FPU_C3_val, !mcsema_real_eip !51
  store i1 %470, i1* %FPU_C3, align 1, !mcsema_real_eip !51
  %471 = load i3* %FPU_TOP_val, !mcsema_real_eip !51
  store i3 %471, i3* %FPU_TOP, align 1, !mcsema_real_eip !51
  %472 = load i1* %FPU_C2_val, !mcsema_real_eip !51
  store i1 %472, i1* %FPU_C2, align 1, !mcsema_real_eip !51
  %473 = load i1* %FPU_C1_val, !mcsema_real_eip !51
  store i1 %473, i1* %FPU_C1, align 1, !mcsema_real_eip !51
  %474 = load i1* %FPU_C0_val, !mcsema_real_eip !51
  store i1 %474, i1* %FPU_C0, align 1, !mcsema_real_eip !51
  %475 = load i1* %FPU_ES_val, !mcsema_real_eip !51
  store i1 %475, i1* %FPU_ES, align 1, !mcsema_real_eip !51
  %476 = load i1* %FPU_SF_val, !mcsema_real_eip !51
  store i1 %476, i1* %FPU_SF, align 1, !mcsema_real_eip !51
  %477 = load i1* %FPU_PE_val, !mcsema_real_eip !51
  store i1 %477, i1* %FPU_PE, align 1, !mcsema_real_eip !51
  %478 = load i1* %FPU_UE_val, !mcsema_real_eip !51
  store i1 %478, i1* %FPU_UE, align 1, !mcsema_real_eip !51
  %479 = load i1* %FPU_OE_val, !mcsema_real_eip !51
  store i1 %479, i1* %FPU_OE, align 1, !mcsema_real_eip !51
  %480 = load i1* %FPU_ZE_val, !mcsema_real_eip !51
  store i1 %480, i1* %FPU_ZE, align 1, !mcsema_real_eip !51
  %481 = load i1* %FPU_DE_val, !mcsema_real_eip !51
  store i1 %481, i1* %FPU_DE, align 1, !mcsema_real_eip !51
  %482 = load i1* %FPU_IE_val, !mcsema_real_eip !51
  store i1 %482, i1* %FPU_IE, align 1, !mcsema_real_eip !51
  %483 = load i1* %FPU_X_val, !mcsema_real_eip !51
  store i1 %483, i1* %FPU_X, align 1, !mcsema_real_eip !51
  %484 = load i2* %FPU_RC_val, !mcsema_real_eip !51
  store i2 %484, i2* %FPU_RC, align 1, !mcsema_real_eip !51
  %485 = load i2* %FPU_PC_val, !mcsema_real_eip !51
  store i2 %485, i2* %FPU_PC, align 1, !mcsema_real_eip !51
  %486 = load i1* %FPU_PM_val, !mcsema_real_eip !51
  store i1 %486, i1* %FPU_PM, align 1, !mcsema_real_eip !51
  %487 = load i1* %FPU_UM_val, !mcsema_real_eip !51
  store i1 %487, i1* %FPU_UM, align 1, !mcsema_real_eip !51
  %488 = load i1* %FPU_OM_val, !mcsema_real_eip !51
  store i1 %488, i1* %FPU_OM, align 1, !mcsema_real_eip !51
  %489 = load i1* %FPU_ZM_val, !mcsema_real_eip !51
  store i1 %489, i1* %FPU_ZM, align 1, !mcsema_real_eip !51
  %490 = load i1* %FPU_DM_val, !mcsema_real_eip !51
  store i1 %490, i1* %FPU_DM, align 1, !mcsema_real_eip !51
  %491 = load i1* %FPU_IM_val, !mcsema_real_eip !51
  store i1 %491, i1* %FPU_IM, align 1, !mcsema_real_eip !51
  %492 = load i64* %53, align 4
  store i64 %492, i64* %52, align 4
  %493 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !51
  store i16 %493, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !51
  %494 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !51
  store i64 %494, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !51
  %495 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !51
  store i16 %495, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !51
  %496 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !51
  store i64 %496, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !51
  %497 = load i128* %XMM0_val, !mcsema_real_eip !51
  store i128 %497, i128* %XMM0, align 1, !mcsema_real_eip !51
  %498 = load i128* %XMM1_val, !mcsema_real_eip !51
  store i128 %498, i128* %XMM1, align 1, !mcsema_real_eip !51
  %499 = load i128* %XMM2_val, !mcsema_real_eip !51
  store i128 %499, i128* %XMM2, align 1, !mcsema_real_eip !51
  %500 = load i128* %XMM3_val, !mcsema_real_eip !51
  store i128 %500, i128* %XMM3, align 1, !mcsema_real_eip !51
  %501 = load i128* %XMM4_val, !mcsema_real_eip !51
  store i128 %501, i128* %XMM4, align 1, !mcsema_real_eip !51
  %502 = load i128* %XMM5_val, !mcsema_real_eip !51
  store i128 %502, i128* %XMM5, align 1, !mcsema_real_eip !51
  %503 = load i128* %XMM6_val, !mcsema_real_eip !51
  store i128 %503, i128* %XMM6, align 1, !mcsema_real_eip !51
  %504 = load i128* %XMM7_val, !mcsema_real_eip !51
  store i128 %504, i128* %XMM7, align 1, !mcsema_real_eip !51
  %505 = load i128* %XMM8_val, !mcsema_real_eip !51
  store i128 %505, i128* %XMM8, align 1, !mcsema_real_eip !51
  %506 = load i128* %XMM9_val, !mcsema_real_eip !51
  store i128 %506, i128* %XMM9, align 1, !mcsema_real_eip !51
  %507 = load i128* %XMM10_val, !mcsema_real_eip !51
  store i128 %507, i128* %XMM10, align 1, !mcsema_real_eip !51
  %508 = load i128* %XMM11_val, !mcsema_real_eip !51
  store i128 %508, i128* %XMM11, align 1, !mcsema_real_eip !51
  %509 = load i128* %XMM12_val, !mcsema_real_eip !51
  store i128 %509, i128* %XMM12, align 1, !mcsema_real_eip !51
  %510 = load i128* %XMM13_val, !mcsema_real_eip !51
  store i128 %510, i128* %XMM13, align 1, !mcsema_real_eip !51
  %511 = load i128* %XMM14_val, !mcsema_real_eip !51
  store i128 %511, i128* %XMM14, align 1, !mcsema_real_eip !51
  %512 = load i128* %XMM15_val, !mcsema_real_eip !51
  store i128 %512, i128* %XMM15, align 1, !mcsema_real_eip !51
  %513 = load i64* %STACK_BASE_val, !mcsema_real_eip !51
  store i64 %513, i64* %STACK_BASE, align 1, !mcsema_real_eip !51
  %514 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !51
  store i64 %514, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !51
  ret void, !mcsema_real_eip !51
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_70(%struct.regs* %0)
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
!2 = metadata !{i64 112, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 113, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = metadata !{i64 116, [16 x i8] c"\09subq\09$32, %rsp\00"}
!5 = metadata !{i64 120, [16 x i8] c"\09movl\09$10, %edi\00"}
!6 = metadata !{i64 125, [16 x i8] c"\09movl\09$20, %esi\00"}
!7 = metadata !{i64 130, [16 x i8] c"\09movl\09$30, %edx\00"}
!8 = metadata !{i64 135, [16 x i8] c"\09movl\09$40, %ecx\00"}
!9 = metadata !{i64 140, [16 x i8] c"\09movl\09$50, %r8d\00"}
!10 = metadata !{i64 146, [16 x i8] c"\09movl\09$60, %r9d\00"}
!11 = metadata !{i64 152, [16 x i8] c"\09movl\09$70, %eax\00"}
!12 = metadata !{i64 157, [17 x i8] c"\09movl\09$80, %r10d\00"}
!13 = metadata !{i64 163, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!14 = metadata !{i64 170, [18 x i8] c"\09movl\09$70, (%rsp)\00"}
!15 = metadata !{i64 177, [19 x i8] c"\09movl\09$80, 8(%rsp)\00"}
!16 = metadata !{i64 185, [23 x i8] c"\09movl\09%r10d, -12(%rbp)\00"}
!17 = metadata !{i64 189, [22 x i8] c"\09movl\09%eax, -16(%rbp)\00"}
!18 = metadata !{i64 192, [12 x i8] c"\09callq\09-197\00"}
!19 = metadata !{i64 197, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!20 = metadata !{i64 200, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!21 = metadata !{i64 203, [16 x i8] c"\09addq\09$32, %rsp\00"}
!22 = metadata !{i64 207, [11 x i8] c"\09popq\09%rbp\00"}
!23 = metadata !{i64 208, [6 x i8] c"\09retq\00"}
!24 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!25 = metadata !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!26 = metadata !{i64 4, [21 x i8] c"\09movl\0924(%rbp), %eax\00"}
!27 = metadata !{i64 7, [22 x i8] c"\09movl\0916(%rbp), %r10d\00"}
!28 = metadata !{i64 11, [21 x i8] c"\09movl\09%edi, -4(%rbp)\00"}
!29 = metadata !{i64 14, [21 x i8] c"\09movl\09%esi, -8(%rbp)\00"}
!30 = metadata !{i64 17, [22 x i8] c"\09movl\09%edx, -12(%rbp)\00"}
!31 = metadata !{i64 20, [22 x i8] c"\09movl\09%ecx, -16(%rbp)\00"}
!32 = metadata !{i64 23, [22 x i8] c"\09movl\09%r8d, -20(%rbp)\00"}
!33 = metadata !{i64 27, [22 x i8] c"\09movl\09%r9d, -24(%rbp)\00"}
!34 = metadata !{i64 31, [23 x i8] c"\09movl\09%r10d, -28(%rbp)\00"}
!35 = metadata !{i64 35, [22 x i8] c"\09movl\09%eax, -32(%rbp)\00"}
!36 = metadata !{i64 38, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!37 = metadata !{i64 41, [21 x i8] c"\09addl\09-8(%rbp), %eax\00"} ; [ DW_TAG_file_type ] [/]
!38 = metadata !{i64 44, [22 x i8] c"\09addl\09-12(%rbp), %eax\00"}
!39 = metadata !{i64 47, [22 x i8] c"\09addl\09-16(%rbp), %eax\00"}
!40 = metadata !{i64 50, [22 x i8] c"\09addl\09-20(%rbp), %eax\00"}
!41 = metadata !{i64 53, [22 x i8] c"\09addl\09-24(%rbp), %eax\00"}
!42 = metadata !{i64 56, [22 x i8] c"\09addl\09-28(%rbp), %eax\00"}
!43 = metadata !{i64 59, [22 x i8] c"\09movl\09%eax, -36(%rbp)\00"}
!44 = metadata !{i64 62, [21 x i8] c"\09cmpl\09$40, -36(%rbp)\00"}
!45 = metadata !{i64 69, [8 x i8] c"\09jle\0914\00"}
!46 = metadata !{i64 89, [22 x i8] c"\09movl\09-36(%rbp), %eax\00"}
!47 = metadata !{i64 92, [22 x i8] c"\09subl\09-32(%rbp), %eax\00"}
!48 = metadata !{i64 95, [22 x i8] c"\09movl\09%eax, -40(%rbp)\00"}
!49 = metadata !{i64 98, [22 x i8] c"\09movl\09-40(%rbp), %eax\00"}
!50 = metadata !{i64 101, [11 x i8] c"\09popq\09%rbp\00"}
!51 = metadata !{i64 102, [6 x i8] c"\09retq\00"}
!52 = metadata !{i64 78, [22 x i8] c"\09addl\09-32(%rbp), %eax\00"}
!53 = metadata !{i64 81, [22 x i8] c"\09movl\09%eax, -40(%rbp)\00"}
