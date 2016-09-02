; ModuleID = 'Output/test_3.clang.bc'
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
  %81 = add i64 %78, -12, !mcsema_real_eip !4
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !4
  %83 = load i64* %RDI_val, !mcsema_real_eip !4
  %84 = trunc i64 %83 to i32, !mcsema_real_eip !4
  %85 = bitcast i64* %82 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !4
  %86 = load i64* %RBP_val, !mcsema_real_eip !5
  %87 = add i64 %86, -8, !mcsema_real_eip !5
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !5
  %89 = load i64* %RSI_val, !mcsema_real_eip !5
  %90 = trunc i64 %89 to i32, !mcsema_real_eip !5
  %91 = bitcast i64* %88 to i32*
  store i32 %90, i32* %91, !mcsema_real_eip !5
  %92 = load i64* %RBP_val, !mcsema_real_eip !6
  %93 = add i64 %92, -4, !mcsema_real_eip !6
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !6
  %95 = bitcast i64* %94 to i32*
  %96 = load i32* %95, !mcsema_real_eip !6
  %97 = zext i32 %96 to i64, !mcsema_real_eip !6
  store i64 %97, i64* %RSI_val, !mcsema_real_eip !6
  %98 = load i64* %RBP_val, !mcsema_real_eip !7
  %99 = add i64 %98, -8, !mcsema_real_eip !7
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !7
  %101 = bitcast i64* %100 to i32*
  %102 = load i32* %101, !mcsema_real_eip !7
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %96, i32 %102)
  %103 = extractvalue { i32, i1 } %uadd, 0
  %104 = xor i32 %103, %102, !mcsema_real_eip !7
  %105 = xor i32 %104, %96, !mcsema_real_eip !7
  %106 = and i32 %105, 16, !mcsema_real_eip !7
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !7
  store i1 %107, i1* %AF_val, !mcsema_real_eip !7
  %108 = icmp slt i32 %103, 0
  store i1 %108, i1* %SF_val, !mcsema_real_eip !7
  %109 = icmp eq i32 %103, 0, !mcsema_real_eip !7
  store i1 %109, i1* %ZF_val, !mcsema_real_eip !7
  %110 = xor i32 %96, -2147483648, !mcsema_real_eip !7
  %111 = xor i32 %110, %102, !mcsema_real_eip !7
  %112 = and i32 %104, %111, !mcsema_real_eip !7
  %113 = icmp slt i32 %112, 0
  store i1 %113, i1* %OF_val, !mcsema_real_eip !7
  %114 = trunc i32 %103 to i8, !mcsema_real_eip !7
  %115 = tail call i8 @llvm.ctpop.i8(i8 %114), !mcsema_real_eip !7
  %116 = and i8 %115, 1
  %117 = icmp eq i8 %116, 0
  store i1 %117, i1* %PF_val, !mcsema_real_eip !7
  %118 = extractvalue { i32, i1 } %uadd, 1
  store i1 %118, i1* %CF_val, !mcsema_real_eip !7
  %119 = zext i32 %103 to i64, !mcsema_real_eip !7
  store i64 %119, i64* %RSI_val, !mcsema_real_eip !7
  %120 = load i64* %RBP_val, !mcsema_real_eip !8
  %121 = add i64 %120, -12, !mcsema_real_eip !8
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !8
  %123 = bitcast i64* %122 to i32*
  store i32 %103, i32* %123, !mcsema_real_eip !8
  %124 = load i64* %RBP_val, !mcsema_real_eip !9
  %125 = add i64 %124, -4, !mcsema_real_eip !9
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !9
  %127 = bitcast i64* %126 to i32*
  %128 = load i32* %127, !mcsema_real_eip !9
  %129 = add i32 %128, -40
  %130 = xor i32 %129, %128, !mcsema_real_eip !9
  %131 = and i32 %130, 16, !mcsema_real_eip !9
  %132 = icmp ne i32 %131, 0, !mcsema_real_eip !9
  store i1 %132, i1* %AF_val, !mcsema_real_eip !9
  %133 = trunc i32 %129 to i8, !mcsema_real_eip !9
  %134 = tail call i8 @llvm.ctpop.i8(i8 %133), !mcsema_real_eip !9
  %135 = and i8 %134, 1
  %136 = icmp eq i8 %135, 0
  store i1 %136, i1* %PF_val, !mcsema_real_eip !9
  %137 = icmp eq i32 %129, 0, !mcsema_real_eip !9
  store i1 %137, i1* %ZF_val, !mcsema_real_eip !9
  %138 = icmp slt i32 %129, 0
  store i1 %138, i1* %SF_val, !mcsema_real_eip !9
  %139 = icmp ult i32 %128, 40, !mcsema_real_eip !9
  store i1 %139, i1* %CF_val, !mcsema_real_eip !9
  %140 = and i32 %130, %128, !mcsema_real_eip !9
  %141 = icmp slt i32 %140, 0
  store i1 %141, i1* %OF_val, !mcsema_real_eip !9
  %142 = xor i1 %138, %141
  %143 = load i1* %ZF_val, !mcsema_real_eip !10
  %144 = or i1 %143, %142, !mcsema_real_eip !10
  %145 = load i64* %RBP_val, !mcsema_real_eip !11
  %146 = add i64 %145, -12, !mcsema_real_eip !11
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !11
  %148 = bitcast i64* %147 to i32*
  %149 = load i32* %148, !mcsema_real_eip !11
  %150 = zext i32 %149 to i64, !mcsema_real_eip !11
  store i64 %150, i64* %RAX_val, !mcsema_real_eip !11
  br i1 %144, label %block_0x30, label %block_0x20, !mcsema_real_eip !10

block_0x30:                                       ; preds = %entry
  %151 = add i32 %149, -10
  %152 = xor i32 %151, %149, !mcsema_real_eip !12
  %153 = and i32 %152, 16, !mcsema_real_eip !12
  %154 = icmp ne i32 %153, 0, !mcsema_real_eip !12
  store i1 %154, i1* %AF_val, !mcsema_real_eip !12
  %155 = trunc i32 %151 to i8, !mcsema_real_eip !12
  %156 = tail call i8 @llvm.ctpop.i8(i8 %155), !mcsema_real_eip !12
  %157 = and i8 %156, 1
  %158 = icmp eq i8 %157, 0
  store i1 %158, i1* %PF_val, !mcsema_real_eip !12
  %159 = icmp eq i32 %151, 0, !mcsema_real_eip !12
  store i1 %159, i1* %ZF_val, !mcsema_real_eip !12
  %160 = icmp slt i32 %151, 0
  store i1 %160, i1* %SF_val, !mcsema_real_eip !12
  %161 = icmp ult i32 %149, 10, !mcsema_real_eip !12
  store i1 %161, i1* %CF_val, !mcsema_real_eip !12
  %162 = and i32 %152, %149, !mcsema_real_eip !12
  %163 = icmp slt i32 %162, 0
  store i1 %163, i1* %OF_val, !mcsema_real_eip !12
  %164 = zext i32 %151 to i64, !mcsema_real_eip !12
  store i64 %164, i64* %RAX_val, !mcsema_real_eip !12
  %165 = load i64* %RBP_val, !mcsema_real_eip !13
  %166 = add i64 %165, -16, !mcsema_real_eip !13
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !13
  %168 = bitcast i64* %167 to i32*
  store i32 %151, i32* %168, !mcsema_real_eip !13
  %169 = load i64* %RBP_val, !mcsema_real_eip !14
  %170 = add i64 %169, -12, !mcsema_real_eip !14
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !14
  %172 = bitcast i64* %171 to i32*
  %173 = load i32* %172, !mcsema_real_eip !14
  %174 = zext i32 %173 to i64, !mcsema_real_eip !14
  store i64 %174, i64* %RAX_val, !mcsema_real_eip !14
  %175 = load i64* %RSP_val, !mcsema_real_eip !15
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !15
  %177 = load i64* %176, !mcsema_real_eip !15
  store i64 %177, i64* %RBP_val, !mcsema_real_eip !15
  %178 = add i64 %175, 16, !mcsema_real_eip !16
  store i64 %178, i64* %RSP_val, !mcsema_real_eip !16
  %179 = load i64* %RAX_val, !mcsema_real_eip !16
  store i64 %179, i64* %RAX, !mcsema_real_eip !16
  %180 = load i64* %RBX_val, !mcsema_real_eip !16
  store i64 %180, i64* %RBX, !mcsema_real_eip !16
  %181 = load i64* %RCX_val, !mcsema_real_eip !16
  store i64 %181, i64* %RCX, !mcsema_real_eip !16
  %182 = load i64* %RDX_val, !mcsema_real_eip !16
  store i64 %182, i64* %RDX, !mcsema_real_eip !16
  %183 = load i64* %RSI_val, !mcsema_real_eip !16
  store i64 %183, i64* %RSI, !mcsema_real_eip !16
  %184 = load i64* %RDI_val, !mcsema_real_eip !16
  store i64 %184, i64* %RDI, !mcsema_real_eip !16
  %185 = load i64* %RSP_val, !mcsema_real_eip !16
  store i64 %185, i64* %RSP, !mcsema_real_eip !16
  %186 = load i64* %RBP_val, !mcsema_real_eip !16
  store i64 %186, i64* %RBP, !mcsema_real_eip !16
  %187 = load i64* %R8_val, !mcsema_real_eip !16
  store i64 %187, i64* %R8, !mcsema_real_eip !16
  %188 = load i64* %R9_val, !mcsema_real_eip !16
  store i64 %188, i64* %R9, !mcsema_real_eip !16
  %189 = load i64* %R10_val, !mcsema_real_eip !16
  store i64 %189, i64* %R10, !mcsema_real_eip !16
  %190 = load i64* %R11_val, !mcsema_real_eip !16
  store i64 %190, i64* %R11, !mcsema_real_eip !16
  %191 = load i64* %R12_val, !mcsema_real_eip !16
  store i64 %191, i64* %R12, !mcsema_real_eip !16
  %192 = load i64* %R13_val, !mcsema_real_eip !16
  store i64 %192, i64* %R13, !mcsema_real_eip !16
  %193 = load i64* %R14_val, !mcsema_real_eip !16
  store i64 %193, i64* %R14, !mcsema_real_eip !16
  %194 = load i64* %R15_val, !mcsema_real_eip !16
  store i64 %194, i64* %R15, !mcsema_real_eip !16
  %195 = load i64* %RIP_val, !mcsema_real_eip !16
  store i64 %195, i64* %RIP, !mcsema_real_eip !16
  %196 = load i1* %CF_val, !mcsema_real_eip !16
  store i1 %196, i1* %CF, align 1, !mcsema_real_eip !16
  %197 = load i1* %PF_val, !mcsema_real_eip !16
  store i1 %197, i1* %PF, align 1, !mcsema_real_eip !16
  %198 = load i1* %AF_val, !mcsema_real_eip !16
  store i1 %198, i1* %AF, align 1, !mcsema_real_eip !16
  %199 = load i1* %ZF_val, !mcsema_real_eip !16
  store i1 %199, i1* %ZF, align 1, !mcsema_real_eip !16
  %200 = load i1* %SF_val, !mcsema_real_eip !16
  store i1 %200, i1* %SF, align 1, !mcsema_real_eip !16
  %201 = load i1* %OF_val, !mcsema_real_eip !16
  store i1 %201, i1* %OF, align 1, !mcsema_real_eip !16
  %202 = load i1* %DF_val, !mcsema_real_eip !16
  store i1 %202, i1* %DF, align 1, !mcsema_real_eip !16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !16
  %203 = load i1* %FPU_B_val, !mcsema_real_eip !16
  store i1 %203, i1* %FPU_B, align 1, !mcsema_real_eip !16
  %204 = load i1* %FPU_C3_val, !mcsema_real_eip !16
  store i1 %204, i1* %FPU_C3, align 1, !mcsema_real_eip !16
  %205 = load i3* %FPU_TOP_val, !mcsema_real_eip !16
  store i3 %205, i3* %FPU_TOP, align 1, !mcsema_real_eip !16
  %206 = load i1* %FPU_C2_val, !mcsema_real_eip !16
  store i1 %206, i1* %FPU_C2, align 1, !mcsema_real_eip !16
  %207 = load i1* %FPU_C1_val, !mcsema_real_eip !16
  store i1 %207, i1* %FPU_C1, align 1, !mcsema_real_eip !16
  %208 = load i1* %FPU_C0_val, !mcsema_real_eip !16
  store i1 %208, i1* %FPU_C0, align 1, !mcsema_real_eip !16
  %209 = load i1* %FPU_ES_val, !mcsema_real_eip !16
  store i1 %209, i1* %FPU_ES, align 1, !mcsema_real_eip !16
  %210 = load i1* %FPU_SF_val, !mcsema_real_eip !16
  store i1 %210, i1* %FPU_SF, align 1, !mcsema_real_eip !16
  %211 = load i1* %FPU_PE_val, !mcsema_real_eip !16
  store i1 %211, i1* %FPU_PE, align 1, !mcsema_real_eip !16
  %212 = load i1* %FPU_UE_val, !mcsema_real_eip !16
  store i1 %212, i1* %FPU_UE, align 1, !mcsema_real_eip !16
  %213 = load i1* %FPU_OE_val, !mcsema_real_eip !16
  store i1 %213, i1* %FPU_OE, align 1, !mcsema_real_eip !16
  %214 = load i1* %FPU_ZE_val, !mcsema_real_eip !16
  store i1 %214, i1* %FPU_ZE, align 1, !mcsema_real_eip !16
  %215 = load i1* %FPU_DE_val, !mcsema_real_eip !16
  store i1 %215, i1* %FPU_DE, align 1, !mcsema_real_eip !16
  %216 = load i1* %FPU_IE_val, !mcsema_real_eip !16
  store i1 %216, i1* %FPU_IE, align 1, !mcsema_real_eip !16
  %217 = load i1* %FPU_X_val, !mcsema_real_eip !16
  store i1 %217, i1* %FPU_X, align 1, !mcsema_real_eip !16
  %218 = load i2* %FPU_RC_val, !mcsema_real_eip !16
  store i2 %218, i2* %FPU_RC, align 1, !mcsema_real_eip !16
  %219 = load i2* %FPU_PC_val, !mcsema_real_eip !16
  store i2 %219, i2* %FPU_PC, align 1, !mcsema_real_eip !16
  %220 = load i1* %FPU_PM_val, !mcsema_real_eip !16
  store i1 %220, i1* %FPU_PM, align 1, !mcsema_real_eip !16
  %221 = load i1* %FPU_UM_val, !mcsema_real_eip !16
  store i1 %221, i1* %FPU_UM, align 1, !mcsema_real_eip !16
  %222 = load i1* %FPU_OM_val, !mcsema_real_eip !16
  store i1 %222, i1* %FPU_OM, align 1, !mcsema_real_eip !16
  %223 = load i1* %FPU_ZM_val, !mcsema_real_eip !16
  store i1 %223, i1* %FPU_ZM, align 1, !mcsema_real_eip !16
  %224 = load i1* %FPU_DM_val, !mcsema_real_eip !16
  store i1 %224, i1* %FPU_DM, align 1, !mcsema_real_eip !16
  %225 = load i1* %FPU_IM_val, !mcsema_real_eip !16
  store i1 %225, i1* %FPU_IM, align 1, !mcsema_real_eip !16
  %226 = load i64* %53, align 4
  store i64 %226, i64* %52, align 4
  %227 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !16
  store i16 %227, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !16
  %228 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !16
  store i64 %228, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !16
  %229 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !16
  store i16 %229, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !16
  %230 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !16
  store i64 %230, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !16
  %231 = load i128* %XMM0_val, !mcsema_real_eip !16
  store i128 %231, i128* %XMM0, align 1, !mcsema_real_eip !16
  %232 = load i128* %XMM1_val, !mcsema_real_eip !16
  store i128 %232, i128* %XMM1, align 1, !mcsema_real_eip !16
  %233 = load i128* %XMM2_val, !mcsema_real_eip !16
  store i128 %233, i128* %XMM2, align 1, !mcsema_real_eip !16
  %234 = load i128* %XMM3_val, !mcsema_real_eip !16
  store i128 %234, i128* %XMM3, align 1, !mcsema_real_eip !16
  %235 = load i128* %XMM4_val, !mcsema_real_eip !16
  store i128 %235, i128* %XMM4, align 1, !mcsema_real_eip !16
  %236 = load i128* %XMM5_val, !mcsema_real_eip !16
  store i128 %236, i128* %XMM5, align 1, !mcsema_real_eip !16
  %237 = load i128* %XMM6_val, !mcsema_real_eip !16
  store i128 %237, i128* %XMM6, align 1, !mcsema_real_eip !16
  %238 = load i128* %XMM7_val, !mcsema_real_eip !16
  store i128 %238, i128* %XMM7, align 1, !mcsema_real_eip !16
  %239 = load i128* %XMM8_val, !mcsema_real_eip !16
  store i128 %239, i128* %XMM8, align 1, !mcsema_real_eip !16
  %240 = load i128* %XMM9_val, !mcsema_real_eip !16
  store i128 %240, i128* %XMM9, align 1, !mcsema_real_eip !16
  %241 = load i128* %XMM10_val, !mcsema_real_eip !16
  store i128 %241, i128* %XMM10, align 1, !mcsema_real_eip !16
  %242 = load i128* %XMM11_val, !mcsema_real_eip !16
  store i128 %242, i128* %XMM11, align 1, !mcsema_real_eip !16
  %243 = load i128* %XMM12_val, !mcsema_real_eip !16
  store i128 %243, i128* %XMM12, align 1, !mcsema_real_eip !16
  %244 = load i128* %XMM13_val, !mcsema_real_eip !16
  store i128 %244, i128* %XMM13, align 1, !mcsema_real_eip !16
  %245 = load i128* %XMM14_val, !mcsema_real_eip !16
  store i128 %245, i128* %XMM14, align 1, !mcsema_real_eip !16
  %246 = load i128* %XMM15_val, !mcsema_real_eip !16
  store i128 %246, i128* %XMM15, align 1, !mcsema_real_eip !16
  %247 = load i64* %STACK_BASE_val, !mcsema_real_eip !16
  store i64 %247, i64* %STACK_BASE, align 1, !mcsema_real_eip !16
  %248 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !16
  store i64 %248, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !16
  ret void, !mcsema_real_eip !16

block_0x20:                                       ; preds = %entry
  %uadd140 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %149, i32 10)
  %249 = extractvalue { i32, i1 } %uadd140, 0
  %250 = xor i32 %249, %149, !mcsema_real_eip !17
  %251 = and i32 %250, 16, !mcsema_real_eip !17
  %252 = icmp ne i32 %251, 0, !mcsema_real_eip !17
  store i1 %252, i1* %AF_val, !mcsema_real_eip !17
  %253 = icmp slt i32 %249, 0
  store i1 %253, i1* %SF_val, !mcsema_real_eip !17
  %254 = icmp eq i32 %249, 0, !mcsema_real_eip !17
  store i1 %254, i1* %ZF_val, !mcsema_real_eip !17
  %255 = xor i32 %149, -2147483648, !mcsema_real_eip !17
  %256 = and i32 %250, %255, !mcsema_real_eip !17
  %257 = icmp slt i32 %256, 0
  store i1 %257, i1* %OF_val, !mcsema_real_eip !17
  %258 = trunc i32 %249 to i8, !mcsema_real_eip !17
  %259 = tail call i8 @llvm.ctpop.i8(i8 %258), !mcsema_real_eip !17
  %260 = and i8 %259, 1
  %261 = icmp eq i8 %260, 0
  store i1 %261, i1* %PF_val, !mcsema_real_eip !17
  %262 = extractvalue { i32, i1 } %uadd140, 1
  store i1 %262, i1* %CF_val, !mcsema_real_eip !17
  %263 = zext i32 %249 to i64, !mcsema_real_eip !17
  store i64 %263, i64* %RAX_val, !mcsema_real_eip !17
  %264 = load i64* %RBP_val, !mcsema_real_eip !18
  %265 = add i64 %264, -12, !mcsema_real_eip !18
  %266 = inttoptr i64 %265 to i64*, !mcsema_real_eip !18
  %267 = bitcast i64* %266 to i32*
  store i32 %249, i32* %267, !mcsema_real_eip !18
  %268 = load i64* %RBP_val, !mcsema_real_eip !14
  %269 = add i64 %268, -12, !mcsema_real_eip !14
  %270 = inttoptr i64 %269 to i64*, !mcsema_real_eip !14
  %271 = bitcast i64* %270 to i32*
  %272 = load i32* %271, !mcsema_real_eip !14
  %273 = zext i32 %272 to i64, !mcsema_real_eip !14
  store i64 %273, i64* %RAX_val, !mcsema_real_eip !14
  %274 = load i64* %RSP_val, !mcsema_real_eip !15
  %275 = inttoptr i64 %274 to i64*, !mcsema_real_eip !15
  %276 = load i64* %275, !mcsema_real_eip !15
  store i64 %276, i64* %RBP_val, !mcsema_real_eip !15
  %277 = add i64 %274, 16, !mcsema_real_eip !16
  store i64 %277, i64* %RSP_val, !mcsema_real_eip !16
  %278 = load i64* %RAX_val, !mcsema_real_eip !16
  store i64 %278, i64* %RAX, !mcsema_real_eip !16
  %279 = load i64* %RBX_val, !mcsema_real_eip !16
  store i64 %279, i64* %RBX, !mcsema_real_eip !16
  %280 = load i64* %RCX_val, !mcsema_real_eip !16
  store i64 %280, i64* %RCX, !mcsema_real_eip !16
  %281 = load i64* %RDX_val, !mcsema_real_eip !16
  store i64 %281, i64* %RDX, !mcsema_real_eip !16
  %282 = load i64* %RSI_val, !mcsema_real_eip !16
  store i64 %282, i64* %RSI, !mcsema_real_eip !16
  %283 = load i64* %RDI_val, !mcsema_real_eip !16
  store i64 %283, i64* %RDI, !mcsema_real_eip !16
  %284 = load i64* %RSP_val, !mcsema_real_eip !16
  store i64 %284, i64* %RSP, !mcsema_real_eip !16
  %285 = load i64* %RBP_val, !mcsema_real_eip !16
  store i64 %285, i64* %RBP, !mcsema_real_eip !16
  %286 = load i64* %R8_val, !mcsema_real_eip !16
  store i64 %286, i64* %R8, !mcsema_real_eip !16
  %287 = load i64* %R9_val, !mcsema_real_eip !16
  store i64 %287, i64* %R9, !mcsema_real_eip !16
  %288 = load i64* %R10_val, !mcsema_real_eip !16
  store i64 %288, i64* %R10, !mcsema_real_eip !16
  %289 = load i64* %R11_val, !mcsema_real_eip !16
  store i64 %289, i64* %R11, !mcsema_real_eip !16
  %290 = load i64* %R12_val, !mcsema_real_eip !16
  store i64 %290, i64* %R12, !mcsema_real_eip !16
  %291 = load i64* %R13_val, !mcsema_real_eip !16
  store i64 %291, i64* %R13, !mcsema_real_eip !16
  %292 = load i64* %R14_val, !mcsema_real_eip !16
  store i64 %292, i64* %R14, !mcsema_real_eip !16
  %293 = load i64* %R15_val, !mcsema_real_eip !16
  store i64 %293, i64* %R15, !mcsema_real_eip !16
  %294 = load i64* %RIP_val, !mcsema_real_eip !16
  store i64 %294, i64* %RIP, !mcsema_real_eip !16
  %295 = load i1* %CF_val, !mcsema_real_eip !16
  store i1 %295, i1* %CF, align 1, !mcsema_real_eip !16
  %296 = load i1* %PF_val, !mcsema_real_eip !16
  store i1 %296, i1* %PF, align 1, !mcsema_real_eip !16
  %297 = load i1* %AF_val, !mcsema_real_eip !16
  store i1 %297, i1* %AF, align 1, !mcsema_real_eip !16
  %298 = load i1* %ZF_val, !mcsema_real_eip !16
  store i1 %298, i1* %ZF, align 1, !mcsema_real_eip !16
  %299 = load i1* %SF_val, !mcsema_real_eip !16
  store i1 %299, i1* %SF, align 1, !mcsema_real_eip !16
  %300 = load i1* %OF_val, !mcsema_real_eip !16
  store i1 %300, i1* %OF, align 1, !mcsema_real_eip !16
  %301 = load i1* %DF_val, !mcsema_real_eip !16
  store i1 %301, i1* %DF, align 1, !mcsema_real_eip !16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !16
  %302 = load i1* %FPU_B_val, !mcsema_real_eip !16
  store i1 %302, i1* %FPU_B, align 1, !mcsema_real_eip !16
  %303 = load i1* %FPU_C3_val, !mcsema_real_eip !16
  store i1 %303, i1* %FPU_C3, align 1, !mcsema_real_eip !16
  %304 = load i3* %FPU_TOP_val, !mcsema_real_eip !16
  store i3 %304, i3* %FPU_TOP, align 1, !mcsema_real_eip !16
  %305 = load i1* %FPU_C2_val, !mcsema_real_eip !16
  store i1 %305, i1* %FPU_C2, align 1, !mcsema_real_eip !16
  %306 = load i1* %FPU_C1_val, !mcsema_real_eip !16
  store i1 %306, i1* %FPU_C1, align 1, !mcsema_real_eip !16
  %307 = load i1* %FPU_C0_val, !mcsema_real_eip !16
  store i1 %307, i1* %FPU_C0, align 1, !mcsema_real_eip !16
  %308 = load i1* %FPU_ES_val, !mcsema_real_eip !16
  store i1 %308, i1* %FPU_ES, align 1, !mcsema_real_eip !16
  %309 = load i1* %FPU_SF_val, !mcsema_real_eip !16
  store i1 %309, i1* %FPU_SF, align 1, !mcsema_real_eip !16
  %310 = load i1* %FPU_PE_val, !mcsema_real_eip !16
  store i1 %310, i1* %FPU_PE, align 1, !mcsema_real_eip !16
  %311 = load i1* %FPU_UE_val, !mcsema_real_eip !16
  store i1 %311, i1* %FPU_UE, align 1, !mcsema_real_eip !16
  %312 = load i1* %FPU_OE_val, !mcsema_real_eip !16
  store i1 %312, i1* %FPU_OE, align 1, !mcsema_real_eip !16
  %313 = load i1* %FPU_ZE_val, !mcsema_real_eip !16
  store i1 %313, i1* %FPU_ZE, align 1, !mcsema_real_eip !16
  %314 = load i1* %FPU_DE_val, !mcsema_real_eip !16
  store i1 %314, i1* %FPU_DE, align 1, !mcsema_real_eip !16
  %315 = load i1* %FPU_IE_val, !mcsema_real_eip !16
  store i1 %315, i1* %FPU_IE, align 1, !mcsema_real_eip !16
  %316 = load i1* %FPU_X_val, !mcsema_real_eip !16
  store i1 %316, i1* %FPU_X, align 1, !mcsema_real_eip !16
  %317 = load i2* %FPU_RC_val, !mcsema_real_eip !16
  store i2 %317, i2* %FPU_RC, align 1, !mcsema_real_eip !16
  %318 = load i2* %FPU_PC_val, !mcsema_real_eip !16
  store i2 %318, i2* %FPU_PC, align 1, !mcsema_real_eip !16
  %319 = load i1* %FPU_PM_val, !mcsema_real_eip !16
  store i1 %319, i1* %FPU_PM, align 1, !mcsema_real_eip !16
  %320 = load i1* %FPU_UM_val, !mcsema_real_eip !16
  store i1 %320, i1* %FPU_UM, align 1, !mcsema_real_eip !16
  %321 = load i1* %FPU_OM_val, !mcsema_real_eip !16
  store i1 %321, i1* %FPU_OM, align 1, !mcsema_real_eip !16
  %322 = load i1* %FPU_ZM_val, !mcsema_real_eip !16
  store i1 %322, i1* %FPU_ZM, align 1, !mcsema_real_eip !16
  %323 = load i1* %FPU_DM_val, !mcsema_real_eip !16
  store i1 %323, i1* %FPU_DM, align 1, !mcsema_real_eip !16
  %324 = load i1* %FPU_IM_val, !mcsema_real_eip !16
  store i1 %324, i1* %FPU_IM, align 1, !mcsema_real_eip !16
  %325 = load i64* %53, align 4
  store i64 %325, i64* %52, align 4
  %326 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !16
  store i16 %326, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !16
  %327 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !16
  store i64 %327, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !16
  %328 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !16
  store i16 %328, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !16
  %329 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !16
  store i64 %329, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !16
  %330 = load i128* %XMM0_val, !mcsema_real_eip !16
  store i128 %330, i128* %XMM0, align 1, !mcsema_real_eip !16
  %331 = load i128* %XMM1_val, !mcsema_real_eip !16
  store i128 %331, i128* %XMM1, align 1, !mcsema_real_eip !16
  %332 = load i128* %XMM2_val, !mcsema_real_eip !16
  store i128 %332, i128* %XMM2, align 1, !mcsema_real_eip !16
  %333 = load i128* %XMM3_val, !mcsema_real_eip !16
  store i128 %333, i128* %XMM3, align 1, !mcsema_real_eip !16
  %334 = load i128* %XMM4_val, !mcsema_real_eip !16
  store i128 %334, i128* %XMM4, align 1, !mcsema_real_eip !16
  %335 = load i128* %XMM5_val, !mcsema_real_eip !16
  store i128 %335, i128* %XMM5, align 1, !mcsema_real_eip !16
  %336 = load i128* %XMM6_val, !mcsema_real_eip !16
  store i128 %336, i128* %XMM6, align 1, !mcsema_real_eip !16
  %337 = load i128* %XMM7_val, !mcsema_real_eip !16
  store i128 %337, i128* %XMM7, align 1, !mcsema_real_eip !16
  %338 = load i128* %XMM8_val, !mcsema_real_eip !16
  store i128 %338, i128* %XMM8, align 1, !mcsema_real_eip !16
  %339 = load i128* %XMM9_val, !mcsema_real_eip !16
  store i128 %339, i128* %XMM9, align 1, !mcsema_real_eip !16
  %340 = load i128* %XMM10_val, !mcsema_real_eip !16
  store i128 %340, i128* %XMM10, align 1, !mcsema_real_eip !16
  %341 = load i128* %XMM11_val, !mcsema_real_eip !16
  store i128 %341, i128* %XMM11, align 1, !mcsema_real_eip !16
  %342 = load i128* %XMM12_val, !mcsema_real_eip !16
  store i128 %342, i128* %XMM12, align 1, !mcsema_real_eip !16
  %343 = load i128* %XMM13_val, !mcsema_real_eip !16
  store i128 %343, i128* %XMM13, align 1, !mcsema_real_eip !16
  %344 = load i128* %XMM14_val, !mcsema_real_eip !16
  store i128 %344, i128* %XMM14, align 1, !mcsema_real_eip !16
  %345 = load i128* %XMM15_val, !mcsema_real_eip !16
  store i128 %345, i128* %XMM15, align 1, !mcsema_real_eip !16
  %346 = load i64* %STACK_BASE_val, !mcsema_real_eip !16
  store i64 %346, i64* %STACK_BASE, align 1, !mcsema_real_eip !16
  %347 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !16
  store i64 %347, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !16
  ret void, !mcsema_real_eip !16
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
!4 = metadata !{i64 4, [21 x i8] c"\09movl\09%edi, -4(%rbp)\00"}
!5 = metadata !{i64 7, [21 x i8] c"\09movl\09%esi, -8(%rbp)\00"}
!6 = metadata !{i64 10, [21 x i8] c"\09movl\09-4(%rbp), %esi\00"}
!7 = metadata !{i64 13, [21 x i8] c"\09addl\09-8(%rbp), %esi\00"}
!8 = metadata !{i64 16, [22 x i8] c"\09movl\09%esi, -12(%rbp)\00"}
!9 = metadata !{i64 19, [20 x i8] c"\09cmpl\09$40, -4(%rbp)\00"}
!10 = metadata !{i64 26, [8 x i8] c"\09jle\0916\00"}
!11 = metadata !{i64 48, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!12 = metadata !{i64 51, [16 x i8] c"\09subl\09$10, %eax\00"}
!13 = metadata !{i64 56, [22 x i8] c"\09movl\09%eax, -16(%rbp)\00"}
!14 = metadata !{i64 59, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!15 = metadata !{i64 62, [11 x i8] c"\09popq\09%rbp\00"}
!16 = metadata !{i64 63, [6 x i8] c"\09retq\00"}
!17 = metadata !{i64 35, [16 x i8] c"\09addl\09$10, %eax\00"}
!18 = metadata !{i64 40, [22 x i8] c"\09movl\09%eax, -12(%rbp)\00"}
