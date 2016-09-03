; ModuleID = 'Output/test_7.clang.bc'
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
  %97 = ptrtoint i64* %96 to i64, !mcsema_real_eip !5
  store i64 %97, i64* %RDI_val, !mcsema_real_eip !5
  %98 = add i64 %94, -4, !mcsema_real_eip !6
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !6
  %100 = bitcast i64* %99 to i32*
  store i32 0, i32* %100, !mcsema_real_eip !6
  %101 = load i64* %RBP_val, !mcsema_real_eip !7
  %102 = add i64 %101, -16, !mcsema_real_eip !7
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !7
  %104 = bitcast i64* %103 to i32*
  store i32 100, i32* %104, !mcsema_real_eip !7
  %105 = load i64* %RBP_val, !mcsema_real_eip !8
  %106 = add i64 %105, -12, !mcsema_real_eip !8
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !8
  %108 = bitcast i64* %107 to i32*
  store i32 200, i32* %108, !mcsema_real_eip !8
  %109 = load i64* %RSP_val, !mcsema_real_eip !9
  %110 = add i64 %109, -8
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !9
  store i64 -4981261766360305936, i64* %111, !mcsema_real_eip !9
  store i64 %110, i64* %RSP_val, !mcsema_real_eip !9
  %112 = load i64* %RAX_val, !mcsema_real_eip !9
  store i64 %112, i64* %RAX, !mcsema_real_eip !9
  %113 = load i64* %RBX_val, !mcsema_real_eip !9
  store i64 %113, i64* %RBX, !mcsema_real_eip !9
  %114 = load i64* %RCX_val, !mcsema_real_eip !9
  store i64 %114, i64* %RCX, !mcsema_real_eip !9
  %115 = load i64* %RDX_val, !mcsema_real_eip !9
  store i64 %115, i64* %RDX, !mcsema_real_eip !9
  %116 = load i64* %RSI_val, !mcsema_real_eip !9
  store i64 %116, i64* %RSI, !mcsema_real_eip !9
  %117 = load i64* %RDI_val, !mcsema_real_eip !9
  store i64 %117, i64* %RDI, !mcsema_real_eip !9
  %118 = load i64* %RSP_val, !mcsema_real_eip !9
  store i64 %118, i64* %RSP, !mcsema_real_eip !9
  %119 = load i64* %RBP_val, !mcsema_real_eip !9
  store i64 %119, i64* %RBP, !mcsema_real_eip !9
  %120 = load i64* %R8_val, !mcsema_real_eip !9
  store i64 %120, i64* %R8, !mcsema_real_eip !9
  %121 = load i64* %R9_val, !mcsema_real_eip !9
  store i64 %121, i64* %R9, !mcsema_real_eip !9
  %122 = load i64* %R10_val, !mcsema_real_eip !9
  store i64 %122, i64* %R10, !mcsema_real_eip !9
  %123 = load i64* %R11_val, !mcsema_real_eip !9
  store i64 %123, i64* %R11, !mcsema_real_eip !9
  %124 = load i64* %R12_val, !mcsema_real_eip !9
  store i64 %124, i64* %R12, !mcsema_real_eip !9
  %125 = load i64* %R13_val, !mcsema_real_eip !9
  store i64 %125, i64* %R13, !mcsema_real_eip !9
  %126 = load i64* %R14_val, !mcsema_real_eip !9
  store i64 %126, i64* %R14, !mcsema_real_eip !9
  %127 = load i64* %R15_val, !mcsema_real_eip !9
  store i64 %127, i64* %R15, !mcsema_real_eip !9
  %128 = load i64* %RIP_val, !mcsema_real_eip !9
  store i64 %128, i64* %RIP, !mcsema_real_eip !9
  %129 = load i1* %CF_val, !mcsema_real_eip !9
  store i1 %129, i1* %CF, align 1, !mcsema_real_eip !9
  %130 = load i1* %PF_val, !mcsema_real_eip !9
  store i1 %130, i1* %PF, align 1, !mcsema_real_eip !9
  %131 = load i1* %AF_val, !mcsema_real_eip !9
  store i1 %131, i1* %AF, align 1, !mcsema_real_eip !9
  %132 = load i1* %ZF_val, !mcsema_real_eip !9
  store i1 %132, i1* %ZF, align 1, !mcsema_real_eip !9
  %133 = load i1* %SF_val, !mcsema_real_eip !9
  store i1 %133, i1* %SF, align 1, !mcsema_real_eip !9
  %134 = load i1* %OF_val, !mcsema_real_eip !9
  store i1 %134, i1* %OF, align 1, !mcsema_real_eip !9
  %135 = load i1* %DF_val, !mcsema_real_eip !9
  store i1 %135, i1* %DF, align 1, !mcsema_real_eip !9
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !9
  %136 = load i1* %FPU_B_val, !mcsema_real_eip !9
  store i1 %136, i1* %FPU_B, align 1, !mcsema_real_eip !9
  %137 = load i1* %FPU_C3_val, !mcsema_real_eip !9
  store i1 %137, i1* %FPU_C3, align 1, !mcsema_real_eip !9
  %138 = load i3* %FPU_TOP_val, !mcsema_real_eip !9
  store i3 %138, i3* %FPU_TOP, align 1, !mcsema_real_eip !9
  %139 = load i1* %FPU_C2_val, !mcsema_real_eip !9
  store i1 %139, i1* %FPU_C2, align 1, !mcsema_real_eip !9
  %140 = load i1* %FPU_C1_val, !mcsema_real_eip !9
  store i1 %140, i1* %FPU_C1, align 1, !mcsema_real_eip !9
  %141 = load i1* %FPU_C0_val, !mcsema_real_eip !9
  store i1 %141, i1* %FPU_C0, align 1, !mcsema_real_eip !9
  %142 = load i1* %FPU_ES_val, !mcsema_real_eip !9
  store i1 %142, i1* %FPU_ES, align 1, !mcsema_real_eip !9
  %143 = load i1* %FPU_SF_val, !mcsema_real_eip !9
  store i1 %143, i1* %FPU_SF, align 1, !mcsema_real_eip !9
  %144 = load i1* %FPU_PE_val, !mcsema_real_eip !9
  store i1 %144, i1* %FPU_PE, align 1, !mcsema_real_eip !9
  %145 = load i1* %FPU_UE_val, !mcsema_real_eip !9
  store i1 %145, i1* %FPU_UE, align 1, !mcsema_real_eip !9
  %146 = load i1* %FPU_OE_val, !mcsema_real_eip !9
  store i1 %146, i1* %FPU_OE, align 1, !mcsema_real_eip !9
  %147 = load i1* %FPU_ZE_val, !mcsema_real_eip !9
  store i1 %147, i1* %FPU_ZE, align 1, !mcsema_real_eip !9
  %148 = load i1* %FPU_DE_val, !mcsema_real_eip !9
  store i1 %148, i1* %FPU_DE, align 1, !mcsema_real_eip !9
  %149 = load i1* %FPU_IE_val, !mcsema_real_eip !9
  store i1 %149, i1* %FPU_IE, align 1, !mcsema_real_eip !9
  %150 = load i1* %FPU_X_val, !mcsema_real_eip !9
  store i1 %150, i1* %FPU_X, align 1, !mcsema_real_eip !9
  %151 = load i2* %FPU_RC_val, !mcsema_real_eip !9
  store i2 %151, i2* %FPU_RC, align 1, !mcsema_real_eip !9
  %152 = load i2* %FPU_PC_val, !mcsema_real_eip !9
  store i2 %152, i2* %FPU_PC, align 1, !mcsema_real_eip !9
  %153 = load i1* %FPU_PM_val, !mcsema_real_eip !9
  store i1 %153, i1* %FPU_PM, align 1, !mcsema_real_eip !9
  %154 = load i1* %FPU_UM_val, !mcsema_real_eip !9
  store i1 %154, i1* %FPU_UM, align 1, !mcsema_real_eip !9
  %155 = load i1* %FPU_OM_val, !mcsema_real_eip !9
  store i1 %155, i1* %FPU_OM, align 1, !mcsema_real_eip !9
  %156 = load i1* %FPU_ZM_val, !mcsema_real_eip !9
  store i1 %156, i1* %FPU_ZM, align 1, !mcsema_real_eip !9
  %157 = load i1* %FPU_DM_val, !mcsema_real_eip !9
  store i1 %157, i1* %FPU_DM, align 1, !mcsema_real_eip !9
  %158 = load i1* %FPU_IM_val, !mcsema_real_eip !9
  store i1 %158, i1* %FPU_IM, align 1, !mcsema_real_eip !9
  %159 = load i64* %53, align 4
  store i64 %159, i64* %52, align 4
  %160 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !9
  store i16 %160, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !9
  %161 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !9
  store i64 %161, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !9
  %162 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !9
  store i16 %162, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !9
  %163 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !9
  store i64 %163, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !9
  %164 = load i128* %XMM0_val, !mcsema_real_eip !9
  store i128 %164, i128* %XMM0, align 1, !mcsema_real_eip !9
  %165 = load i128* %XMM1_val, !mcsema_real_eip !9
  store i128 %165, i128* %XMM1, align 1, !mcsema_real_eip !9
  %166 = load i128* %XMM2_val, !mcsema_real_eip !9
  store i128 %166, i128* %XMM2, align 1, !mcsema_real_eip !9
  %167 = load i128* %XMM3_val, !mcsema_real_eip !9
  store i128 %167, i128* %XMM3, align 1, !mcsema_real_eip !9
  %168 = load i128* %XMM4_val, !mcsema_real_eip !9
  store i128 %168, i128* %XMM4, align 1, !mcsema_real_eip !9
  %169 = load i128* %XMM5_val, !mcsema_real_eip !9
  store i128 %169, i128* %XMM5, align 1, !mcsema_real_eip !9
  %170 = load i128* %XMM6_val, !mcsema_real_eip !9
  store i128 %170, i128* %XMM6, align 1, !mcsema_real_eip !9
  %171 = load i128* %XMM7_val, !mcsema_real_eip !9
  store i128 %171, i128* %XMM7, align 1, !mcsema_real_eip !9
  %172 = load i128* %XMM8_val, !mcsema_real_eip !9
  store i128 %172, i128* %XMM8, align 1, !mcsema_real_eip !9
  %173 = load i128* %XMM9_val, !mcsema_real_eip !9
  store i128 %173, i128* %XMM9, align 1, !mcsema_real_eip !9
  %174 = load i128* %XMM10_val, !mcsema_real_eip !9
  store i128 %174, i128* %XMM10, align 1, !mcsema_real_eip !9
  %175 = load i128* %XMM11_val, !mcsema_real_eip !9
  store i128 %175, i128* %XMM11, align 1, !mcsema_real_eip !9
  %176 = load i128* %XMM12_val, !mcsema_real_eip !9
  store i128 %176, i128* %XMM12, align 1, !mcsema_real_eip !9
  %177 = load i128* %XMM13_val, !mcsema_real_eip !9
  store i128 %177, i128* %XMM13, align 1, !mcsema_real_eip !9
  %178 = load i128* %XMM14_val, !mcsema_real_eip !9
  store i128 %178, i128* %XMM14, align 1, !mcsema_real_eip !9
  %179 = load i128* %XMM15_val, !mcsema_real_eip !9
  store i128 %179, i128* %XMM15, align 1, !mcsema_real_eip !9
  %180 = load i64* %STACK_BASE_val, !mcsema_real_eip !9
  store i64 %180, i64* %STACK_BASE, align 1, !mcsema_real_eip !9
  %181 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !9
  store i64 %181, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !9
  tail call x86_64_sysvcc void @sub_40(%struct.regs* %0), !mcsema_real_eip !9
  %182 = load i64* %RAX, !mcsema_real_eip !9
  store i64 %182, i64* %RAX_val, !mcsema_real_eip !9
  %183 = load i64* %RBX, !mcsema_real_eip !9
  store i64 %183, i64* %RBX_val, !mcsema_real_eip !9
  %184 = load i64* %RCX, !mcsema_real_eip !9
  store i64 %184, i64* %RCX_val, !mcsema_real_eip !9
  %185 = load i64* %RDX, !mcsema_real_eip !9
  store i64 %185, i64* %RDX_val, !mcsema_real_eip !9
  %186 = load i64* %RSI, !mcsema_real_eip !9
  store i64 %186, i64* %RSI_val, !mcsema_real_eip !9
  %187 = load i64* %RDI, !mcsema_real_eip !9
  store i64 %187, i64* %RDI_val, !mcsema_real_eip !9
  %188 = load i64* %RSP, !mcsema_real_eip !9
  store i64 %188, i64* %RSP_val, !mcsema_real_eip !9
  %189 = load i64* %RBP, !mcsema_real_eip !9
  store i64 %189, i64* %RBP_val, !mcsema_real_eip !9
  %190 = load i64* %R8, !mcsema_real_eip !9
  store i64 %190, i64* %R8_val, !mcsema_real_eip !9
  %191 = load i64* %R9, !mcsema_real_eip !9
  store i64 %191, i64* %R9_val, !mcsema_real_eip !9
  %192 = load i64* %R10, !mcsema_real_eip !9
  store i64 %192, i64* %R10_val, !mcsema_real_eip !9
  %193 = load i64* %R11, !mcsema_real_eip !9
  store i64 %193, i64* %R11_val, !mcsema_real_eip !9
  %194 = load i64* %R12, !mcsema_real_eip !9
  store i64 %194, i64* %R12_val, !mcsema_real_eip !9
  %195 = load i64* %R13, !mcsema_real_eip !9
  store i64 %195, i64* %R13_val, !mcsema_real_eip !9
  %196 = load i64* %R14, !mcsema_real_eip !9
  store i64 %196, i64* %R14_val, !mcsema_real_eip !9
  %197 = load i64* %R15, !mcsema_real_eip !9
  store i64 %197, i64* %R15_val, !mcsema_real_eip !9
  %198 = load i64* %RIP, !mcsema_real_eip !9
  store i64 %198, i64* %RIP_val, !mcsema_real_eip !9
  %199 = load i1* %CF, align 1, !mcsema_real_eip !9
  store i1 %199, i1* %CF_val, !mcsema_real_eip !9
  %200 = load i1* %PF, align 1, !mcsema_real_eip !9
  store i1 %200, i1* %PF_val, !mcsema_real_eip !9
  %201 = load i1* %AF, align 1, !mcsema_real_eip !9
  store i1 %201, i1* %AF_val, !mcsema_real_eip !9
  %202 = load i1* %ZF, align 1, !mcsema_real_eip !9
  store i1 %202, i1* %ZF_val, !mcsema_real_eip !9
  %203 = load i1* %SF, align 1, !mcsema_real_eip !9
  store i1 %203, i1* %SF_val, !mcsema_real_eip !9
  %204 = load i1* %OF, align 1, !mcsema_real_eip !9
  store i1 %204, i1* %OF_val, !mcsema_real_eip !9
  %205 = load i1* %DF, align 1, !mcsema_real_eip !9
  store i1 %205, i1* %DF_val, !mcsema_real_eip !9
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !9
  %206 = load i1* %FPU_B, align 1, !mcsema_real_eip !9
  store i1 %206, i1* %FPU_B_val, !mcsema_real_eip !9
  %207 = load i1* %FPU_C3, align 1, !mcsema_real_eip !9
  store i1 %207, i1* %FPU_C3_val, !mcsema_real_eip !9
  %208 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !9
  store i3 %208, i3* %FPU_TOP_val, !mcsema_real_eip !9
  %209 = load i1* %FPU_C2, align 1, !mcsema_real_eip !9
  store i1 %209, i1* %FPU_C2_val, !mcsema_real_eip !9
  %210 = load i1* %FPU_C1, align 1, !mcsema_real_eip !9
  store i1 %210, i1* %FPU_C1_val, !mcsema_real_eip !9
  %211 = load i1* %FPU_C0, align 1, !mcsema_real_eip !9
  store i1 %211, i1* %FPU_C0_val, !mcsema_real_eip !9
  %212 = load i1* %FPU_ES, align 1, !mcsema_real_eip !9
  store i1 %212, i1* %FPU_ES_val, !mcsema_real_eip !9
  %213 = load i1* %FPU_SF, align 1, !mcsema_real_eip !9
  store i1 %213, i1* %FPU_SF_val, !mcsema_real_eip !9
  %214 = load i1* %FPU_PE, align 1, !mcsema_real_eip !9
  store i1 %214, i1* %FPU_PE_val, !mcsema_real_eip !9
  %215 = load i1* %FPU_UE, align 1, !mcsema_real_eip !9
  store i1 %215, i1* %FPU_UE_val, !mcsema_real_eip !9
  %216 = load i1* %FPU_OE, align 1, !mcsema_real_eip !9
  store i1 %216, i1* %FPU_OE_val, !mcsema_real_eip !9
  %217 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !9
  store i1 %217, i1* %FPU_ZE_val, !mcsema_real_eip !9
  %218 = load i1* %FPU_DE, align 1, !mcsema_real_eip !9
  store i1 %218, i1* %FPU_DE_val, !mcsema_real_eip !9
  %219 = load i1* %FPU_IE, align 1, !mcsema_real_eip !9
  store i1 %219, i1* %FPU_IE_val, !mcsema_real_eip !9
  %220 = load i1* %FPU_X, align 1, !mcsema_real_eip !9
  store i1 %220, i1* %FPU_X_val, !mcsema_real_eip !9
  %221 = load i2* %FPU_RC, align 1, !mcsema_real_eip !9
  store i2 %221, i2* %FPU_RC_val, !mcsema_real_eip !9
  %222 = load i2* %FPU_PC, align 1, !mcsema_real_eip !9
  store i2 %222, i2* %FPU_PC_val, !mcsema_real_eip !9
  %223 = load i1* %FPU_PM, align 1, !mcsema_real_eip !9
  store i1 %223, i1* %FPU_PM_val, !mcsema_real_eip !9
  %224 = load i1* %FPU_UM, align 1, !mcsema_real_eip !9
  store i1 %224, i1* %FPU_UM_val, !mcsema_real_eip !9
  %225 = load i1* %FPU_OM, align 1, !mcsema_real_eip !9
  store i1 %225, i1* %FPU_OM_val, !mcsema_real_eip !9
  %226 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !9
  store i1 %226, i1* %FPU_ZM_val, !mcsema_real_eip !9
  %227 = load i1* %FPU_DM, align 1, !mcsema_real_eip !9
  store i1 %227, i1* %FPU_DM_val, !mcsema_real_eip !9
  %228 = load i1* %FPU_IM, align 1, !mcsema_real_eip !9
  store i1 %228, i1* %FPU_IM_val, !mcsema_real_eip !9
  %229 = load i64* %52, align 4
  store i64 %229, i64* %53, align 4
  %230 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !9
  store i16 %230, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !9
  %231 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !9
  store i64 %231, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !9
  %232 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !9
  store i16 %232, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !9
  %233 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !9
  store i64 %233, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !9
  %234 = load i128* %XMM0, align 1, !mcsema_real_eip !9
  store i128 %234, i128* %XMM0_val, !mcsema_real_eip !9
  %235 = load i128* %XMM1, align 1, !mcsema_real_eip !9
  store i128 %235, i128* %XMM1_val, !mcsema_real_eip !9
  %236 = load i128* %XMM2, align 1, !mcsema_real_eip !9
  store i128 %236, i128* %XMM2_val, !mcsema_real_eip !9
  %237 = load i128* %XMM3, align 1, !mcsema_real_eip !9
  store i128 %237, i128* %XMM3_val, !mcsema_real_eip !9
  %238 = load i128* %XMM4, align 1, !mcsema_real_eip !9
  store i128 %238, i128* %XMM4_val, !mcsema_real_eip !9
  %239 = load i128* %XMM5, align 1, !mcsema_real_eip !9
  store i128 %239, i128* %XMM5_val, !mcsema_real_eip !9
  %240 = load i128* %XMM6, align 1, !mcsema_real_eip !9
  store i128 %240, i128* %XMM6_val, !mcsema_real_eip !9
  %241 = load i128* %XMM7, align 1, !mcsema_real_eip !9
  store i128 %241, i128* %XMM7_val, !mcsema_real_eip !9
  %242 = load i128* %XMM8, align 1, !mcsema_real_eip !9
  store i128 %242, i128* %XMM8_val, !mcsema_real_eip !9
  %243 = load i128* %XMM9, align 1, !mcsema_real_eip !9
  store i128 %243, i128* %XMM9_val, !mcsema_real_eip !9
  %244 = load i128* %XMM10, align 1, !mcsema_real_eip !9
  store i128 %244, i128* %XMM10_val, !mcsema_real_eip !9
  %245 = load i128* %XMM11, align 1, !mcsema_real_eip !9
  store i128 %245, i128* %XMM11_val, !mcsema_real_eip !9
  %246 = load i128* %XMM12, align 1, !mcsema_real_eip !9
  store i128 %246, i128* %XMM12_val, !mcsema_real_eip !9
  %247 = load i128* %XMM13, align 1, !mcsema_real_eip !9
  store i128 %247, i128* %XMM13_val, !mcsema_real_eip !9
  %248 = load i128* %XMM14, align 1, !mcsema_real_eip !9
  store i128 %248, i128* %XMM14_val, !mcsema_real_eip !9
  %249 = load i128* %XMM15, align 1, !mcsema_real_eip !9
  store i128 %249, i128* %XMM15_val, !mcsema_real_eip !9
  %250 = load i64* %STACK_BASE, !mcsema_real_eip !9
  store i64 %250, i64* %STACK_BASE_val, !mcsema_real_eip !9
  %251 = load i64* %STACK_LIMIT, !mcsema_real_eip !9
  store i64 %251, i64* %STACK_LIMIT_val, !mcsema_real_eip !9
  %252 = load i64* %RBP_val, !mcsema_real_eip !10
  %253 = add i64 %252, -16, !mcsema_real_eip !10
  %254 = inttoptr i64 %253 to i64*, !mcsema_real_eip !10
  %255 = bitcast i64* %254 to i32*
  %256 = load i32* %255, !mcsema_real_eip !10
  %257 = zext i32 %256 to i64, !mcsema_real_eip !10
  store i64 %257, i64* %RAX_val, !mcsema_real_eip !10
  %258 = load i64* %RBP_val, !mcsema_real_eip !11
  %259 = add i64 %258, -12, !mcsema_real_eip !11
  %260 = inttoptr i64 %259 to i64*, !mcsema_real_eip !11
  %261 = bitcast i64* %260 to i32*
  %262 = load i32* %261, !mcsema_real_eip !11
  %263 = add i32 %256, %262
  %264 = zext i32 %263 to i64, !mcsema_real_eip !11
  store i64 %264, i64* %RAX_val, !mcsema_real_eip !11
  %265 = load i64* %RSP_val, !mcsema_real_eip !12
  %uadd209 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %265, i64 16)
  %266 = extractvalue { i64, i1 } %uadd209, 0
  %267 = xor i64 %266, %265, !mcsema_real_eip !12
  %268 = and i64 %267, 16
  %269 = icmp eq i64 %268, 0
  store i1 %269, i1* %AF_val, !mcsema_real_eip !12
  %270 = icmp slt i64 %266, 0
  store i1 %270, i1* %SF_val, !mcsema_real_eip !12
  %271 = icmp eq i64 %266, 0, !mcsema_real_eip !12
  store i1 %271, i1* %ZF_val, !mcsema_real_eip !12
  %272 = xor i64 %265, -9223372036854775808, !mcsema_real_eip !12
  %273 = and i64 %267, %272, !mcsema_real_eip !12
  %274 = icmp slt i64 %273, 0
  store i1 %274, i1* %OF_val, !mcsema_real_eip !12
  %275 = trunc i64 %266 to i8, !mcsema_real_eip !12
  %276 = tail call i8 @llvm.ctpop.i8(i8 %275), !mcsema_real_eip !12
  %277 = and i8 %276, 1
  %278 = icmp eq i8 %277, 0
  store i1 %278, i1* %PF_val, !mcsema_real_eip !12
  %279 = extractvalue { i64, i1 } %uadd209, 1
  store i1 %279, i1* %CF_val, !mcsema_real_eip !12
  store i64 %266, i64* %RSP_val, !mcsema_real_eip !12
  %280 = inttoptr i64 %266 to i64*, !mcsema_real_eip !13
  %281 = load i64* %280, !mcsema_real_eip !13
  store i64 %281, i64* %RBP_val, !mcsema_real_eip !13
  %282 = add i64 %266, 16, !mcsema_real_eip !14
  store i64 %282, i64* %RSP_val, !mcsema_real_eip !14
  %283 = load i64* %RAX_val, !mcsema_real_eip !14
  store i64 %283, i64* %RAX, !mcsema_real_eip !14
  %284 = load i64* %RBX_val, !mcsema_real_eip !14
  store i64 %284, i64* %RBX, !mcsema_real_eip !14
  %285 = load i64* %RCX_val, !mcsema_real_eip !14
  store i64 %285, i64* %RCX, !mcsema_real_eip !14
  %286 = load i64* %RDX_val, !mcsema_real_eip !14
  store i64 %286, i64* %RDX, !mcsema_real_eip !14
  %287 = load i64* %RSI_val, !mcsema_real_eip !14
  store i64 %287, i64* %RSI, !mcsema_real_eip !14
  %288 = load i64* %RDI_val, !mcsema_real_eip !14
  store i64 %288, i64* %RDI, !mcsema_real_eip !14
  %289 = load i64* %RSP_val, !mcsema_real_eip !14
  store i64 %289, i64* %RSP, !mcsema_real_eip !14
  %290 = load i64* %RBP_val, !mcsema_real_eip !14
  store i64 %290, i64* %RBP, !mcsema_real_eip !14
  %291 = load i64* %R8_val, !mcsema_real_eip !14
  store i64 %291, i64* %R8, !mcsema_real_eip !14
  %292 = load i64* %R9_val, !mcsema_real_eip !14
  store i64 %292, i64* %R9, !mcsema_real_eip !14
  %293 = load i64* %R10_val, !mcsema_real_eip !14
  store i64 %293, i64* %R10, !mcsema_real_eip !14
  %294 = load i64* %R11_val, !mcsema_real_eip !14
  store i64 %294, i64* %R11, !mcsema_real_eip !14
  %295 = load i64* %R12_val, !mcsema_real_eip !14
  store i64 %295, i64* %R12, !mcsema_real_eip !14
  %296 = load i64* %R13_val, !mcsema_real_eip !14
  store i64 %296, i64* %R13, !mcsema_real_eip !14
  %297 = load i64* %R14_val, !mcsema_real_eip !14
  store i64 %297, i64* %R14, !mcsema_real_eip !14
  %298 = load i64* %R15_val, !mcsema_real_eip !14
  store i64 %298, i64* %R15, !mcsema_real_eip !14
  %299 = load i64* %RIP_val, !mcsema_real_eip !14
  store i64 %299, i64* %RIP, !mcsema_real_eip !14
  %300 = load i1* %CF_val, !mcsema_real_eip !14
  store i1 %300, i1* %CF, align 1, !mcsema_real_eip !14
  %301 = load i1* %PF_val, !mcsema_real_eip !14
  store i1 %301, i1* %PF, align 1, !mcsema_real_eip !14
  %302 = load i1* %AF_val, !mcsema_real_eip !14
  store i1 %302, i1* %AF, align 1, !mcsema_real_eip !14
  %303 = load i1* %ZF_val, !mcsema_real_eip !14
  store i1 %303, i1* %ZF, align 1, !mcsema_real_eip !14
  %304 = load i1* %SF_val, !mcsema_real_eip !14
  store i1 %304, i1* %SF, align 1, !mcsema_real_eip !14
  %305 = load i1* %OF_val, !mcsema_real_eip !14
  store i1 %305, i1* %OF, align 1, !mcsema_real_eip !14
  %306 = load i1* %DF_val, !mcsema_real_eip !14
  store i1 %306, i1* %DF, align 1, !mcsema_real_eip !14
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !14
  %307 = load i1* %FPU_B_val, !mcsema_real_eip !14
  store i1 %307, i1* %FPU_B, align 1, !mcsema_real_eip !14
  %308 = load i1* %FPU_C3_val, !mcsema_real_eip !14
  store i1 %308, i1* %FPU_C3, align 1, !mcsema_real_eip !14
  %309 = load i3* %FPU_TOP_val, !mcsema_real_eip !14
  store i3 %309, i3* %FPU_TOP, align 1, !mcsema_real_eip !14
  %310 = load i1* %FPU_C2_val, !mcsema_real_eip !14
  store i1 %310, i1* %FPU_C2, align 1, !mcsema_real_eip !14
  %311 = load i1* %FPU_C1_val, !mcsema_real_eip !14
  store i1 %311, i1* %FPU_C1, align 1, !mcsema_real_eip !14
  %312 = load i1* %FPU_C0_val, !mcsema_real_eip !14
  store i1 %312, i1* %FPU_C0, align 1, !mcsema_real_eip !14
  %313 = load i1* %FPU_ES_val, !mcsema_real_eip !14
  store i1 %313, i1* %FPU_ES, align 1, !mcsema_real_eip !14
  %314 = load i1* %FPU_SF_val, !mcsema_real_eip !14
  store i1 %314, i1* %FPU_SF, align 1, !mcsema_real_eip !14
  %315 = load i1* %FPU_PE_val, !mcsema_real_eip !14
  store i1 %315, i1* %FPU_PE, align 1, !mcsema_real_eip !14
  %316 = load i1* %FPU_UE_val, !mcsema_real_eip !14
  store i1 %316, i1* %FPU_UE, align 1, !mcsema_real_eip !14
  %317 = load i1* %FPU_OE_val, !mcsema_real_eip !14
  store i1 %317, i1* %FPU_OE, align 1, !mcsema_real_eip !14
  %318 = load i1* %FPU_ZE_val, !mcsema_real_eip !14
  store i1 %318, i1* %FPU_ZE, align 1, !mcsema_real_eip !14
  %319 = load i1* %FPU_DE_val, !mcsema_real_eip !14
  store i1 %319, i1* %FPU_DE, align 1, !mcsema_real_eip !14
  %320 = load i1* %FPU_IE_val, !mcsema_real_eip !14
  store i1 %320, i1* %FPU_IE, align 1, !mcsema_real_eip !14
  %321 = load i1* %FPU_X_val, !mcsema_real_eip !14
  store i1 %321, i1* %FPU_X, align 1, !mcsema_real_eip !14
  %322 = load i2* %FPU_RC_val, !mcsema_real_eip !14
  store i2 %322, i2* %FPU_RC, align 1, !mcsema_real_eip !14
  %323 = load i2* %FPU_PC_val, !mcsema_real_eip !14
  store i2 %323, i2* %FPU_PC, align 1, !mcsema_real_eip !14
  %324 = load i1* %FPU_PM_val, !mcsema_real_eip !14
  store i1 %324, i1* %FPU_PM, align 1, !mcsema_real_eip !14
  %325 = load i1* %FPU_UM_val, !mcsema_real_eip !14
  store i1 %325, i1* %FPU_UM, align 1, !mcsema_real_eip !14
  %326 = load i1* %FPU_OM_val, !mcsema_real_eip !14
  store i1 %326, i1* %FPU_OM, align 1, !mcsema_real_eip !14
  %327 = load i1* %FPU_ZM_val, !mcsema_real_eip !14
  store i1 %327, i1* %FPU_ZM, align 1, !mcsema_real_eip !14
  %328 = load i1* %FPU_DM_val, !mcsema_real_eip !14
  store i1 %328, i1* %FPU_DM, align 1, !mcsema_real_eip !14
  %329 = load i1* %FPU_IM_val, !mcsema_real_eip !14
  store i1 %329, i1* %FPU_IM, align 1, !mcsema_real_eip !14
  %330 = load i64* %53, align 4
  store i64 %330, i64* %52, align 4
  %331 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !14
  store i16 %331, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !14
  %332 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !14
  store i64 %332, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !14
  %333 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !14
  store i16 %333, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !14
  %334 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !14
  store i64 %334, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !14
  %335 = load i128* %XMM0_val, !mcsema_real_eip !14
  store i128 %335, i128* %XMM0, align 1, !mcsema_real_eip !14
  %336 = load i128* %XMM1_val, !mcsema_real_eip !14
  store i128 %336, i128* %XMM1, align 1, !mcsema_real_eip !14
  %337 = load i128* %XMM2_val, !mcsema_real_eip !14
  store i128 %337, i128* %XMM2, align 1, !mcsema_real_eip !14
  %338 = load i128* %XMM3_val, !mcsema_real_eip !14
  store i128 %338, i128* %XMM3, align 1, !mcsema_real_eip !14
  %339 = load i128* %XMM4_val, !mcsema_real_eip !14
  store i128 %339, i128* %XMM4, align 1, !mcsema_real_eip !14
  %340 = load i128* %XMM5_val, !mcsema_real_eip !14
  store i128 %340, i128* %XMM5, align 1, !mcsema_real_eip !14
  %341 = load i128* %XMM6_val, !mcsema_real_eip !14
  store i128 %341, i128* %XMM6, align 1, !mcsema_real_eip !14
  %342 = load i128* %XMM7_val, !mcsema_real_eip !14
  store i128 %342, i128* %XMM7, align 1, !mcsema_real_eip !14
  %343 = load i128* %XMM8_val, !mcsema_real_eip !14
  store i128 %343, i128* %XMM8, align 1, !mcsema_real_eip !14
  %344 = load i128* %XMM9_val, !mcsema_real_eip !14
  store i128 %344, i128* %XMM9, align 1, !mcsema_real_eip !14
  %345 = load i128* %XMM10_val, !mcsema_real_eip !14
  store i128 %345, i128* %XMM10, align 1, !mcsema_real_eip !14
  %346 = load i128* %XMM11_val, !mcsema_real_eip !14
  store i128 %346, i128* %XMM11, align 1, !mcsema_real_eip !14
  %347 = load i128* %XMM12_val, !mcsema_real_eip !14
  store i128 %347, i128* %XMM12, align 1, !mcsema_real_eip !14
  %348 = load i128* %XMM13_val, !mcsema_real_eip !14
  store i128 %348, i128* %XMM13, align 1, !mcsema_real_eip !14
  %349 = load i128* %XMM14_val, !mcsema_real_eip !14
  store i128 %349, i128* %XMM14, align 1, !mcsema_real_eip !14
  %350 = load i128* %XMM15_val, !mcsema_real_eip !14
  store i128 %350, i128* %XMM15, align 1, !mcsema_real_eip !14
  %351 = load i64* %STACK_BASE_val, !mcsema_real_eip !14
  store i64 %351, i64* %STACK_BASE, align 1, !mcsema_real_eip !14
  %352 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !14
  store i64 %352, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !14
  ret void, !mcsema_real_eip !14
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_40(%struct.regs*) #0 {
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
  %81 = add i64 %78, -16, !mcsema_real_eip !17
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !17
  %83 = load i64* %RDI_val, !mcsema_real_eip !17
  store i64 %83, i64* %82, !mcsema_real_eip !17
  %84 = load i64* %RBP_val, !mcsema_real_eip !18
  %85 = add i64 %84, -8, !mcsema_real_eip !18
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !18
  %87 = load i64* %86, !mcsema_real_eip !18
  store i64 %87, i64* %RDI_val, !mcsema_real_eip !18
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !19
  %89 = bitcast i64* %88 to i32*
  %90 = load i32* %89, !mcsema_real_eip !19
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %90, i32 20)
  %91 = extractvalue { i32, i1 } %uadd, 0
  %92 = xor i32 %91, %90, !mcsema_real_eip !20
  %93 = and i32 %92, 16
  %94 = icmp eq i32 %93, 0
  store i1 %94, i1* %AF_val, !mcsema_real_eip !20
  %95 = icmp slt i32 %91, 0
  store i1 %95, i1* %SF_val, !mcsema_real_eip !20
  %96 = icmp eq i32 %91, 0, !mcsema_real_eip !20
  store i1 %96, i1* %ZF_val, !mcsema_real_eip !20
  %97 = xor i32 %90, -2147483648, !mcsema_real_eip !20
  %98 = and i32 %92, %97, !mcsema_real_eip !20
  %99 = icmp slt i32 %98, 0
  store i1 %99, i1* %OF_val, !mcsema_real_eip !20
  %100 = trunc i32 %91 to i8, !mcsema_real_eip !20
  %101 = tail call i8 @llvm.ctpop.i8(i8 %100), !mcsema_real_eip !20
  %102 = and i8 %101, 1
  %103 = icmp eq i8 %102, 0
  store i1 %103, i1* %PF_val, !mcsema_real_eip !20
  %104 = extractvalue { i32, i1 } %uadd, 1
  store i1 %104, i1* %CF_val, !mcsema_real_eip !20
  %105 = zext i32 %91 to i64, !mcsema_real_eip !20
  store i64 %105, i64* %RAX_val, !mcsema_real_eip !20
  %106 = load i64* %RBP_val, !mcsema_real_eip !21
  %107 = add i64 %106, -16, !mcsema_real_eip !21
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !21
  %109 = bitcast i64* %108 to i32*
  store i32 %91, i32* %109, !mcsema_real_eip !21
  %110 = load i64* %RBP_val, !mcsema_real_eip !22
  %111 = add i64 %110, -8, !mcsema_real_eip !22
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !22
  %113 = load i64* %112, !mcsema_real_eip !22
  store i64 %113, i64* %RDI_val, !mcsema_real_eip !22
  %114 = add i64 %113, 4, !mcsema_real_eip !23
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !23
  %116 = bitcast i64* %115 to i32*
  %117 = load i32* %116, !mcsema_real_eip !23
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %117, i32 30)
  %118 = extractvalue { i32, i1 } %uadd70, 0
  %119 = xor i32 %118, %117, !mcsema_real_eip !24
  %120 = and i32 %119, 16
  %121 = icmp eq i32 %120, 0
  store i1 %121, i1* %AF_val, !mcsema_real_eip !24
  %122 = icmp slt i32 %118, 0
  store i1 %122, i1* %SF_val, !mcsema_real_eip !24
  %123 = icmp eq i32 %118, 0, !mcsema_real_eip !24
  store i1 %123, i1* %ZF_val, !mcsema_real_eip !24
  %124 = xor i32 %117, -2147483648, !mcsema_real_eip !24
  %125 = and i32 %119, %124, !mcsema_real_eip !24
  %126 = icmp slt i32 %125, 0
  store i1 %126, i1* %OF_val, !mcsema_real_eip !24
  %127 = trunc i32 %118 to i8, !mcsema_real_eip !24
  %128 = tail call i8 @llvm.ctpop.i8(i8 %127), !mcsema_real_eip !24
  %129 = and i8 %128, 1
  %130 = icmp eq i8 %129, 0
  store i1 %130, i1* %PF_val, !mcsema_real_eip !24
  %131 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %131, i1* %CF_val, !mcsema_real_eip !24
  %132 = zext i32 %118 to i64, !mcsema_real_eip !24
  store i64 %132, i64* %RAX_val, !mcsema_real_eip !24
  %133 = load i64* %RBP_val, !mcsema_real_eip !25
  %134 = add i64 %133, -12, !mcsema_real_eip !25
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !25
  %136 = bitcast i64* %135 to i32*
  store i32 %118, i32* %136, !mcsema_real_eip !25
  %137 = load i64* %RSP_val, !mcsema_real_eip !26
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !26
  %139 = load i64* %138, !mcsema_real_eip !26
  store i64 %139, i64* %RBP_val, !mcsema_real_eip !26
  %140 = add i64 %137, 16, !mcsema_real_eip !27
  store i64 %140, i64* %RSP_val, !mcsema_real_eip !27
  %141 = load i64* %RAX_val, !mcsema_real_eip !27
  store i64 %141, i64* %RAX, !mcsema_real_eip !27
  %142 = load i64* %RBX_val, !mcsema_real_eip !27
  store i64 %142, i64* %RBX, !mcsema_real_eip !27
  %143 = load i64* %RCX_val, !mcsema_real_eip !27
  store i64 %143, i64* %RCX, !mcsema_real_eip !27
  %144 = load i64* %RDX_val, !mcsema_real_eip !27
  store i64 %144, i64* %RDX, !mcsema_real_eip !27
  %145 = load i64* %RSI_val, !mcsema_real_eip !27
  store i64 %145, i64* %RSI, !mcsema_real_eip !27
  %146 = load i64* %RDI_val, !mcsema_real_eip !27
  store i64 %146, i64* %RDI, !mcsema_real_eip !27
  %147 = load i64* %RSP_val, !mcsema_real_eip !27
  store i64 %147, i64* %RSP, !mcsema_real_eip !27
  %148 = load i64* %RBP_val, !mcsema_real_eip !27
  store i64 %148, i64* %RBP, !mcsema_real_eip !27
  %149 = load i64* %R8_val, !mcsema_real_eip !27
  store i64 %149, i64* %R8, !mcsema_real_eip !27
  %150 = load i64* %R9_val, !mcsema_real_eip !27
  store i64 %150, i64* %R9, !mcsema_real_eip !27
  %151 = load i64* %R10_val, !mcsema_real_eip !27
  store i64 %151, i64* %R10, !mcsema_real_eip !27
  %152 = load i64* %R11_val, !mcsema_real_eip !27
  store i64 %152, i64* %R11, !mcsema_real_eip !27
  %153 = load i64* %R12_val, !mcsema_real_eip !27
  store i64 %153, i64* %R12, !mcsema_real_eip !27
  %154 = load i64* %R13_val, !mcsema_real_eip !27
  store i64 %154, i64* %R13, !mcsema_real_eip !27
  %155 = load i64* %R14_val, !mcsema_real_eip !27
  store i64 %155, i64* %R14, !mcsema_real_eip !27
  %156 = load i64* %R15_val, !mcsema_real_eip !27
  store i64 %156, i64* %R15, !mcsema_real_eip !27
  %157 = load i64* %RIP_val, !mcsema_real_eip !27
  store i64 %157, i64* %RIP, !mcsema_real_eip !27
  %158 = load i1* %CF_val, !mcsema_real_eip !27
  store i1 %158, i1* %CF, align 1, !mcsema_real_eip !27
  %159 = load i1* %PF_val, !mcsema_real_eip !27
  store i1 %159, i1* %PF, align 1, !mcsema_real_eip !27
  %160 = load i1* %AF_val, !mcsema_real_eip !27
  store i1 %160, i1* %AF, align 1, !mcsema_real_eip !27
  %161 = load i1* %ZF_val, !mcsema_real_eip !27
  store i1 %161, i1* %ZF, align 1, !mcsema_real_eip !27
  %162 = load i1* %SF_val, !mcsema_real_eip !27
  store i1 %162, i1* %SF, align 1, !mcsema_real_eip !27
  %163 = load i1* %OF_val, !mcsema_real_eip !27
  store i1 %163, i1* %OF, align 1, !mcsema_real_eip !27
  %164 = load i1* %DF_val, !mcsema_real_eip !27
  store i1 %164, i1* %DF, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !27
  %165 = load i1* %FPU_B_val, !mcsema_real_eip !27
  store i1 %165, i1* %FPU_B, align 1, !mcsema_real_eip !27
  %166 = load i1* %FPU_C3_val, !mcsema_real_eip !27
  store i1 %166, i1* %FPU_C3, align 1, !mcsema_real_eip !27
  %167 = load i3* %FPU_TOP_val, !mcsema_real_eip !27
  store i3 %167, i3* %FPU_TOP, align 1, !mcsema_real_eip !27
  %168 = load i1* %FPU_C2_val, !mcsema_real_eip !27
  store i1 %168, i1* %FPU_C2, align 1, !mcsema_real_eip !27
  %169 = load i1* %FPU_C1_val, !mcsema_real_eip !27
  store i1 %169, i1* %FPU_C1, align 1, !mcsema_real_eip !27
  %170 = load i1* %FPU_C0_val, !mcsema_real_eip !27
  store i1 %170, i1* %FPU_C0, align 1, !mcsema_real_eip !27
  %171 = load i1* %FPU_ES_val, !mcsema_real_eip !27
  store i1 %171, i1* %FPU_ES, align 1, !mcsema_real_eip !27
  %172 = load i1* %FPU_SF_val, !mcsema_real_eip !27
  store i1 %172, i1* %FPU_SF, align 1, !mcsema_real_eip !27
  %173 = load i1* %FPU_PE_val, !mcsema_real_eip !27
  store i1 %173, i1* %FPU_PE, align 1, !mcsema_real_eip !27
  %174 = load i1* %FPU_UE_val, !mcsema_real_eip !27
  store i1 %174, i1* %FPU_UE, align 1, !mcsema_real_eip !27
  %175 = load i1* %FPU_OE_val, !mcsema_real_eip !27
  store i1 %175, i1* %FPU_OE, align 1, !mcsema_real_eip !27
  %176 = load i1* %FPU_ZE_val, !mcsema_real_eip !27
  store i1 %176, i1* %FPU_ZE, align 1, !mcsema_real_eip !27
  %177 = load i1* %FPU_DE_val, !mcsema_real_eip !27
  store i1 %177, i1* %FPU_DE, align 1, !mcsema_real_eip !27
  %178 = load i1* %FPU_IE_val, !mcsema_real_eip !27
  store i1 %178, i1* %FPU_IE, align 1, !mcsema_real_eip !27
  %179 = load i1* %FPU_X_val, !mcsema_real_eip !27
  store i1 %179, i1* %FPU_X, align 1, !mcsema_real_eip !27
  %180 = load i2* %FPU_RC_val, !mcsema_real_eip !27
  store i2 %180, i2* %FPU_RC, align 1, !mcsema_real_eip !27
  %181 = load i2* %FPU_PC_val, !mcsema_real_eip !27
  store i2 %181, i2* %FPU_PC, align 1, !mcsema_real_eip !27
  %182 = load i1* %FPU_PM_val, !mcsema_real_eip !27
  store i1 %182, i1* %FPU_PM, align 1, !mcsema_real_eip !27
  %183 = load i1* %FPU_UM_val, !mcsema_real_eip !27
  store i1 %183, i1* %FPU_UM, align 1, !mcsema_real_eip !27
  %184 = load i1* %FPU_OM_val, !mcsema_real_eip !27
  store i1 %184, i1* %FPU_OM, align 1, !mcsema_real_eip !27
  %185 = load i1* %FPU_ZM_val, !mcsema_real_eip !27
  store i1 %185, i1* %FPU_ZM, align 1, !mcsema_real_eip !27
  %186 = load i1* %FPU_DM_val, !mcsema_real_eip !27
  store i1 %186, i1* %FPU_DM, align 1, !mcsema_real_eip !27
  %187 = load i1* %FPU_IM_val, !mcsema_real_eip !27
  store i1 %187, i1* %FPU_IM, align 1, !mcsema_real_eip !27
  %188 = load i64* %53, align 4
  store i64 %188, i64* %52, align 4
  %189 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !27
  store i16 %189, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !27
  %190 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !27
  store i64 %190, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !27
  %191 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !27
  store i16 %191, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !27
  %192 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !27
  store i64 %192, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !27
  %193 = load i128* %XMM0_val, !mcsema_real_eip !27
  store i128 %193, i128* %XMM0, align 1, !mcsema_real_eip !27
  %194 = load i128* %XMM1_val, !mcsema_real_eip !27
  store i128 %194, i128* %XMM1, align 1, !mcsema_real_eip !27
  %195 = load i128* %XMM2_val, !mcsema_real_eip !27
  store i128 %195, i128* %XMM2, align 1, !mcsema_real_eip !27
  %196 = load i128* %XMM3_val, !mcsema_real_eip !27
  store i128 %196, i128* %XMM3, align 1, !mcsema_real_eip !27
  %197 = load i128* %XMM4_val, !mcsema_real_eip !27
  store i128 %197, i128* %XMM4, align 1, !mcsema_real_eip !27
  %198 = load i128* %XMM5_val, !mcsema_real_eip !27
  store i128 %198, i128* %XMM5, align 1, !mcsema_real_eip !27
  %199 = load i128* %XMM6_val, !mcsema_real_eip !27
  store i128 %199, i128* %XMM6, align 1, !mcsema_real_eip !27
  %200 = load i128* %XMM7_val, !mcsema_real_eip !27
  store i128 %200, i128* %XMM7, align 1, !mcsema_real_eip !27
  %201 = load i128* %XMM8_val, !mcsema_real_eip !27
  store i128 %201, i128* %XMM8, align 1, !mcsema_real_eip !27
  %202 = load i128* %XMM9_val, !mcsema_real_eip !27
  store i128 %202, i128* %XMM9, align 1, !mcsema_real_eip !27
  %203 = load i128* %XMM10_val, !mcsema_real_eip !27
  store i128 %203, i128* %XMM10, align 1, !mcsema_real_eip !27
  %204 = load i128* %XMM11_val, !mcsema_real_eip !27
  store i128 %204, i128* %XMM11, align 1, !mcsema_real_eip !27
  %205 = load i128* %XMM12_val, !mcsema_real_eip !27
  store i128 %205, i128* %XMM12, align 1, !mcsema_real_eip !27
  %206 = load i128* %XMM13_val, !mcsema_real_eip !27
  store i128 %206, i128* %XMM13, align 1, !mcsema_real_eip !27
  %207 = load i128* %XMM14_val, !mcsema_real_eip !27
  store i128 %207, i128* %XMM14, align 1, !mcsema_real_eip !27
  %208 = load i128* %XMM15_val, !mcsema_real_eip !27
  store i128 %208, i128* %XMM15, align 1, !mcsema_real_eip !27
  %209 = load i64* %STACK_BASE_val, !mcsema_real_eip !27
  store i64 %209, i64* %STACK_BASE, align 1, !mcsema_real_eip !27
  %210 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !27
  store i64 %210, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27
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

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = metadata !{i64 4, [16 x i8] c"\09subq\09$16, %rsp\00"}
!5 = metadata !{i64 8, [22 x i8] c"\09leaq\09-16(%rbp), %rdi\00"}
!6 = metadata !{i64 12, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!7 = metadata !{i64 19, [22 x i8] c"\09movl\09$100, -16(%rbp)\00"}
!8 = metadata !{i64 26, [22 x i8] c"\09movl\09$200, -12(%rbp)\00"}
!9 = metadata !{i64 33, [10 x i8] c"\09callq\0926\00"}
!10 = metadata !{i64 38, [22 x i8] c"\09movl\09-16(%rbp), %eax\00"}
!11 = metadata !{i64 41, [22 x i8] c"\09addl\09-12(%rbp), %eax\00"} ; [ DW_TAG_file_type ] [/]
!12 = metadata !{i64 44, [16 x i8] c"\09addq\09$16, %rsp\00"}
!13 = metadata !{i64 48, [11 x i8] c"\09popq\09%rbp\00"}
!14 = metadata !{i64 49, [6 x i8] c"\09retq\00"}
!15 = metadata !{i64 64, [12 x i8] c"\09pushq\09%rbp\00"}
!16 = metadata !{i64 65, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!17 = metadata !{i64 68, [21 x i8] c"\09movq\09%rdi, -8(%rbp)\00"}
!18 = metadata !{i64 72, [21 x i8] c"\09movq\09-8(%rbp), %rdi\00"}
!19 = metadata !{i64 76, [19 x i8] c"\09movl\09(%rdi), %eax\00"}
!20 = metadata !{i64 78, [16 x i8] c"\09addl\09$20, %eax\00"}
!21 = metadata !{i64 83, [22 x i8] c"\09movl\09%eax, -16(%rbp)\00"}
!22 = metadata !{i64 86, [21 x i8] c"\09movq\09-8(%rbp), %rdi\00"}
!23 = metadata !{i64 90, [20 x i8] c"\09movl\094(%rdi), %eax\00"}
!24 = metadata !{i64 93, [16 x i8] c"\09addl\09$30, %eax\00"}
!25 = metadata !{i64 98, [22 x i8] c"\09movl\09%eax, -12(%rbp)\00"}
!26 = metadata !{i64 101, [11 x i8] c"\09popq\09%rbp\00"}
!27 = metadata !{i64 102, [6 x i8] c"\09retq\00"}
