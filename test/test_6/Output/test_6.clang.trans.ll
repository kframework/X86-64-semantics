; ModuleID = 'Output/test_6.clang.trans.bc'
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
  %81 = add i64 %78, -104
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
  %91 = icmp ult i64 %79, 96, !mcsema_real_eip !4
  store i1 %91, i1* %CF_val, !mcsema_real_eip !4
  %92 = and i64 %82, %79, !mcsema_real_eip !4
  %93 = icmp slt i64 %92, 0
  store i1 %93, i1* %OF_val, !mcsema_real_eip !4
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !4
  %94 = load i64* %RBP_val, !mcsema_real_eip !5
  %95 = add i64 %94, -4, !mcsema_real_eip !5
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !5
  %97 = bitcast i64* %96 to i32*
  store i32 0, i32* %97, !mcsema_real_eip !5
  %98 = load i64* %RBP_val, !mcsema_real_eip !6
  %99 = add i64 %98, -8, !mcsema_real_eip !6
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !6
  %101 = bitcast i64* %100 to i32*
  %102 = load i32* %101, !mcsema_real_eip !6
  %103 = zext i32 %102 to i64, !mcsema_real_eip !6
  store i64 %103, i64* %RAX_val, !mcsema_real_eip !6
  %104 = load i64* %RBP_val, !mcsema_real_eip !7
  %105 = add i64 %104, -56, !mcsema_real_eip !7
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !7
  %107 = bitcast i64* %106 to i32*
  store i32 %102, i32* %107, !mcsema_real_eip !7
  %108 = load i64* %RBP_val, !mcsema_real_eip !8
  %109 = add i64 %108, -16, !mcsema_real_eip !8
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !8
  %111 = load i64* %110, !mcsema_real_eip !8
  store i64 %111, i64* %RCX_val, !mcsema_real_eip !8
  %112 = add i64 %108, -64, !mcsema_real_eip !9
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !9
  store i64 %111, i64* %113, !mcsema_real_eip !9
  %114 = load i64* %RBP_val, !mcsema_real_eip !10
  %115 = add i64 %114, -64, !mcsema_real_eip !10
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !10
  %117 = load i64* %116, !mcsema_real_eip !10
  store i64 %117, i64* %RDI_val, !mcsema_real_eip !10
  %118 = add i64 %114, -56, !mcsema_real_eip !11
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !11
  %120 = bitcast i64* %119 to i32*
  %121 = load i32* %120, !mcsema_real_eip !11
  %122 = zext i32 %121 to i64, !mcsema_real_eip !11
  store i64 %122, i64* %RSI_val, !mcsema_real_eip !11
  %123 = load i64* %RBP_val, !mcsema_real_eip !12
  %124 = add i64 %123, -24, !mcsema_real_eip !12
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !12
  %126 = bitcast i64* %125 to i32*
  %127 = load i32* %126, !mcsema_real_eip !12
  %128 = zext i32 %127 to i64, !mcsema_real_eip !12
  store i64 %128, i64* %RAX_val, !mcsema_real_eip !12
  %129 = load i64* %RBP_val, !mcsema_real_eip !13
  %130 = add i64 %129, -72, !mcsema_real_eip !13
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !13
  %132 = bitcast i64* %131 to i32*
  store i32 %127, i32* %132, !mcsema_real_eip !13
  %133 = load i64* %RBP_val, !mcsema_real_eip !14
  %134 = add i64 %133, -32, !mcsema_real_eip !14
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !14
  %136 = load i64* %135, !mcsema_real_eip !14
  store i64 %136, i64* %RCX_val, !mcsema_real_eip !14
  %137 = add i64 %133, -80, !mcsema_real_eip !15
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !15
  store i64 %136, i64* %138, !mcsema_real_eip !15
  %139 = load i64* %RBP_val, !mcsema_real_eip !16
  %140 = add i64 %139, -80, !mcsema_real_eip !16
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !16
  %142 = load i64* %141, !mcsema_real_eip !16
  store i64 %142, i64* %RDX_val, !mcsema_real_eip !16
  %143 = add i64 %139, -72, !mcsema_real_eip !17
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !17
  %145 = bitcast i64* %144 to i32*
  %146 = load i32* %145, !mcsema_real_eip !17
  %147 = zext i32 %146 to i64, !mcsema_real_eip !17
  store i64 %147, i64* %RCX_val, !mcsema_real_eip !17
  %148 = load i64* %RSP_val, !mcsema_real_eip !18
  %149 = add i64 %148, -8
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !18
  store i64 -4981261766360305936, i64* %150, !mcsema_real_eip !18
  store i64 %149, i64* %RSP_val, !mcsema_real_eip !18
  %151 = load i64* %RAX_val, !mcsema_real_eip !18
  store i64 %151, i64* %RAX, !mcsema_real_eip !18
  %152 = load i64* %RBX_val, !mcsema_real_eip !18
  store i64 %152, i64* %RBX, !mcsema_real_eip !18
  %153 = load i64* %RCX_val, !mcsema_real_eip !18
  store i64 %153, i64* %RCX, !mcsema_real_eip !18
  %154 = load i64* %RDX_val, !mcsema_real_eip !18
  store i64 %154, i64* %RDX, !mcsema_real_eip !18
  %155 = load i64* %RSI_val, !mcsema_real_eip !18
  store i64 %155, i64* %RSI, !mcsema_real_eip !18
  %156 = load i64* %RDI_val, !mcsema_real_eip !18
  store i64 %156, i64* %RDI, !mcsema_real_eip !18
  %157 = load i64* %RSP_val, !mcsema_real_eip !18
  store i64 %157, i64* %RSP, !mcsema_real_eip !18
  %158 = load i64* %RBP_val, !mcsema_real_eip !18
  store i64 %158, i64* %RBP, !mcsema_real_eip !18
  %159 = load i64* %R8_val, !mcsema_real_eip !18
  store i64 %159, i64* %R8, !mcsema_real_eip !18
  %160 = load i64* %R9_val, !mcsema_real_eip !18
  store i64 %160, i64* %R9, !mcsema_real_eip !18
  %161 = load i64* %R10_val, !mcsema_real_eip !18
  store i64 %161, i64* %R10, !mcsema_real_eip !18
  %162 = load i64* %R11_val, !mcsema_real_eip !18
  store i64 %162, i64* %R11, !mcsema_real_eip !18
  %163 = load i64* %R12_val, !mcsema_real_eip !18
  store i64 %163, i64* %R12, !mcsema_real_eip !18
  %164 = load i64* %R13_val, !mcsema_real_eip !18
  store i64 %164, i64* %R13, !mcsema_real_eip !18
  %165 = load i64* %R14_val, !mcsema_real_eip !18
  store i64 %165, i64* %R14, !mcsema_real_eip !18
  %166 = load i64* %R15_val, !mcsema_real_eip !18
  store i64 %166, i64* %R15, !mcsema_real_eip !18
  %167 = load i64* %RIP_val, !mcsema_real_eip !18
  store i64 %167, i64* %RIP, !mcsema_real_eip !18
  %168 = load i1* %CF_val, !mcsema_real_eip !18
  store i1 %168, i1* %CF, align 1, !mcsema_real_eip !18
  %169 = load i1* %PF_val, !mcsema_real_eip !18
  store i1 %169, i1* %PF, align 1, !mcsema_real_eip !18
  %170 = load i1* %AF_val, !mcsema_real_eip !18
  store i1 %170, i1* %AF, align 1, !mcsema_real_eip !18
  %171 = load i1* %ZF_val, !mcsema_real_eip !18
  store i1 %171, i1* %ZF, align 1, !mcsema_real_eip !18
  %172 = load i1* %SF_val, !mcsema_real_eip !18
  store i1 %172, i1* %SF, align 1, !mcsema_real_eip !18
  %173 = load i1* %OF_val, !mcsema_real_eip !18
  store i1 %173, i1* %OF, align 1, !mcsema_real_eip !18
  %174 = load i1* %DF_val, !mcsema_real_eip !18
  store i1 %174, i1* %DF, align 1, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !18
  %175 = load i1* %FPU_B_val, !mcsema_real_eip !18
  store i1 %175, i1* %FPU_B, align 1, !mcsema_real_eip !18
  %176 = load i1* %FPU_C3_val, !mcsema_real_eip !18
  store i1 %176, i1* %FPU_C3, align 1, !mcsema_real_eip !18
  %177 = load i3* %FPU_TOP_val, !mcsema_real_eip !18
  store i3 %177, i3* %FPU_TOP, align 1, !mcsema_real_eip !18
  %178 = load i1* %FPU_C2_val, !mcsema_real_eip !18
  store i1 %178, i1* %FPU_C2, align 1, !mcsema_real_eip !18
  %179 = load i1* %FPU_C1_val, !mcsema_real_eip !18
  store i1 %179, i1* %FPU_C1, align 1, !mcsema_real_eip !18
  %180 = load i1* %FPU_C0_val, !mcsema_real_eip !18
  store i1 %180, i1* %FPU_C0, align 1, !mcsema_real_eip !18
  %181 = load i1* %FPU_ES_val, !mcsema_real_eip !18
  store i1 %181, i1* %FPU_ES, align 1, !mcsema_real_eip !18
  %182 = load i1* %FPU_SF_val, !mcsema_real_eip !18
  store i1 %182, i1* %FPU_SF, align 1, !mcsema_real_eip !18
  %183 = load i1* %FPU_PE_val, !mcsema_real_eip !18
  store i1 %183, i1* %FPU_PE, align 1, !mcsema_real_eip !18
  %184 = load i1* %FPU_UE_val, !mcsema_real_eip !18
  store i1 %184, i1* %FPU_UE, align 1, !mcsema_real_eip !18
  %185 = load i1* %FPU_OE_val, !mcsema_real_eip !18
  store i1 %185, i1* %FPU_OE, align 1, !mcsema_real_eip !18
  %186 = load i1* %FPU_ZE_val, !mcsema_real_eip !18
  store i1 %186, i1* %FPU_ZE, align 1, !mcsema_real_eip !18
  %187 = load i1* %FPU_DE_val, !mcsema_real_eip !18
  store i1 %187, i1* %FPU_DE, align 1, !mcsema_real_eip !18
  %188 = load i1* %FPU_IE_val, !mcsema_real_eip !18
  store i1 %188, i1* %FPU_IE, align 1, !mcsema_real_eip !18
  %189 = load i1* %FPU_X_val, !mcsema_real_eip !18
  store i1 %189, i1* %FPU_X, align 1, !mcsema_real_eip !18
  %190 = load i2* %FPU_RC_val, !mcsema_real_eip !18
  store i2 %190, i2* %FPU_RC, align 1, !mcsema_real_eip !18
  %191 = load i2* %FPU_PC_val, !mcsema_real_eip !18
  store i2 %191, i2* %FPU_PC, align 1, !mcsema_real_eip !18
  %192 = load i1* %FPU_PM_val, !mcsema_real_eip !18
  store i1 %192, i1* %FPU_PM, align 1, !mcsema_real_eip !18
  %193 = load i1* %FPU_UM_val, !mcsema_real_eip !18
  store i1 %193, i1* %FPU_UM, align 1, !mcsema_real_eip !18
  %194 = load i1* %FPU_OM_val, !mcsema_real_eip !18
  store i1 %194, i1* %FPU_OM, align 1, !mcsema_real_eip !18
  %195 = load i1* %FPU_ZM_val, !mcsema_real_eip !18
  store i1 %195, i1* %FPU_ZM, align 1, !mcsema_real_eip !18
  %196 = load i1* %FPU_DM_val, !mcsema_real_eip !18
  store i1 %196, i1* %FPU_DM, align 1, !mcsema_real_eip !18
  %197 = load i1* %FPU_IM_val, !mcsema_real_eip !18
  store i1 %197, i1* %FPU_IM, align 1, !mcsema_real_eip !18
  %198 = load i64* %53, align 4
  store i64 %198, i64* %52, align 4
  %199 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !18
  store i16 %199, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !18
  %200 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !18
  store i64 %200, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !18
  %201 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !18
  store i16 %201, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !18
  %202 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !18
  store i64 %202, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !18
  %203 = load i128* %XMM0_val, !mcsema_real_eip !18
  store i128 %203, i128* %XMM0, align 1, !mcsema_real_eip !18
  %204 = load i128* %XMM1_val, !mcsema_real_eip !18
  store i128 %204, i128* %XMM1, align 1, !mcsema_real_eip !18
  %205 = load i128* %XMM2_val, !mcsema_real_eip !18
  store i128 %205, i128* %XMM2, align 1, !mcsema_real_eip !18
  %206 = load i128* %XMM3_val, !mcsema_real_eip !18
  store i128 %206, i128* %XMM3, align 1, !mcsema_real_eip !18
  %207 = load i128* %XMM4_val, !mcsema_real_eip !18
  store i128 %207, i128* %XMM4, align 1, !mcsema_real_eip !18
  %208 = load i128* %XMM5_val, !mcsema_real_eip !18
  store i128 %208, i128* %XMM5, align 1, !mcsema_real_eip !18
  %209 = load i128* %XMM6_val, !mcsema_real_eip !18
  store i128 %209, i128* %XMM6, align 1, !mcsema_real_eip !18
  %210 = load i128* %XMM7_val, !mcsema_real_eip !18
  store i128 %210, i128* %XMM7, align 1, !mcsema_real_eip !18
  %211 = load i128* %XMM8_val, !mcsema_real_eip !18
  store i128 %211, i128* %XMM8, align 1, !mcsema_real_eip !18
  %212 = load i128* %XMM9_val, !mcsema_real_eip !18
  store i128 %212, i128* %XMM9, align 1, !mcsema_real_eip !18
  %213 = load i128* %XMM10_val, !mcsema_real_eip !18
  store i128 %213, i128* %XMM10, align 1, !mcsema_real_eip !18
  %214 = load i128* %XMM11_val, !mcsema_real_eip !18
  store i128 %214, i128* %XMM11, align 1, !mcsema_real_eip !18
  %215 = load i128* %XMM12_val, !mcsema_real_eip !18
  store i128 %215, i128* %XMM12, align 1, !mcsema_real_eip !18
  %216 = load i128* %XMM13_val, !mcsema_real_eip !18
  store i128 %216, i128* %XMM13, align 1, !mcsema_real_eip !18
  %217 = load i128* %XMM14_val, !mcsema_real_eip !18
  store i128 %217, i128* %XMM14, align 1, !mcsema_real_eip !18
  %218 = load i128* %XMM15_val, !mcsema_real_eip !18
  store i128 %218, i128* %XMM15, align 1, !mcsema_real_eip !18
  %219 = load i64* %STACK_BASE_val, !mcsema_real_eip !18
  store i64 %219, i64* %STACK_BASE, align 1, !mcsema_real_eip !18
  %220 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !18
  store i64 %220, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !18
  tail call x86_64_sysvcc void @sub_70(%struct.regs* %0), !mcsema_real_eip !18
  %221 = load i64* %RAX, !mcsema_real_eip !18
  store i64 %221, i64* %RAX_val, !mcsema_real_eip !18
  %222 = load i64* %RBX, !mcsema_real_eip !18
  store i64 %222, i64* %RBX_val, !mcsema_real_eip !18
  %223 = load i64* %RCX, !mcsema_real_eip !18
  store i64 %223, i64* %RCX_val, !mcsema_real_eip !18
  %224 = load i64* %RDX, !mcsema_real_eip !18
  store i64 %224, i64* %RDX_val, !mcsema_real_eip !18
  %225 = load i64* %RSI, !mcsema_real_eip !18
  store i64 %225, i64* %RSI_val, !mcsema_real_eip !18
  %226 = load i64* %RDI, !mcsema_real_eip !18
  store i64 %226, i64* %RDI_val, !mcsema_real_eip !18
  %227 = load i64* %RSP, !mcsema_real_eip !18
  store i64 %227, i64* %RSP_val, !mcsema_real_eip !18
  %228 = load i64* %RBP, !mcsema_real_eip !18
  store i64 %228, i64* %RBP_val, !mcsema_real_eip !18
  %229 = load i64* %R8, !mcsema_real_eip !18
  store i64 %229, i64* %R8_val, !mcsema_real_eip !18
  %230 = load i64* %R9, !mcsema_real_eip !18
  store i64 %230, i64* %R9_val, !mcsema_real_eip !18
  %231 = load i64* %R10, !mcsema_real_eip !18
  store i64 %231, i64* %R10_val, !mcsema_real_eip !18
  %232 = load i64* %R11, !mcsema_real_eip !18
  store i64 %232, i64* %R11_val, !mcsema_real_eip !18
  %233 = load i64* %R12, !mcsema_real_eip !18
  store i64 %233, i64* %R12_val, !mcsema_real_eip !18
  %234 = load i64* %R13, !mcsema_real_eip !18
  store i64 %234, i64* %R13_val, !mcsema_real_eip !18
  %235 = load i64* %R14, !mcsema_real_eip !18
  store i64 %235, i64* %R14_val, !mcsema_real_eip !18
  %236 = load i64* %R15, !mcsema_real_eip !18
  store i64 %236, i64* %R15_val, !mcsema_real_eip !18
  %237 = load i64* %RIP, !mcsema_real_eip !18
  store i64 %237, i64* %RIP_val, !mcsema_real_eip !18
  %238 = load i1* %CF, align 1, !mcsema_real_eip !18
  store i1 %238, i1* %CF_val, !mcsema_real_eip !18
  %239 = load i1* %PF, align 1, !mcsema_real_eip !18
  store i1 %239, i1* %PF_val, !mcsema_real_eip !18
  %240 = load i1* %AF, align 1, !mcsema_real_eip !18
  store i1 %240, i1* %AF_val, !mcsema_real_eip !18
  %241 = load i1* %ZF, align 1, !mcsema_real_eip !18
  store i1 %241, i1* %ZF_val, !mcsema_real_eip !18
  %242 = load i1* %SF, align 1, !mcsema_real_eip !18
  store i1 %242, i1* %SF_val, !mcsema_real_eip !18
  %243 = load i1* %OF, align 1, !mcsema_real_eip !18
  store i1 %243, i1* %OF_val, !mcsema_real_eip !18
  %244 = load i1* %DF, align 1, !mcsema_real_eip !18
  store i1 %244, i1* %DF_val, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !18
  %245 = load i1* %FPU_B, align 1, !mcsema_real_eip !18
  store i1 %245, i1* %FPU_B_val, !mcsema_real_eip !18
  %246 = load i1* %FPU_C3, align 1, !mcsema_real_eip !18
  store i1 %246, i1* %FPU_C3_val, !mcsema_real_eip !18
  %247 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !18
  store i3 %247, i3* %FPU_TOP_val, !mcsema_real_eip !18
  %248 = load i1* %FPU_C2, align 1, !mcsema_real_eip !18
  store i1 %248, i1* %FPU_C2_val, !mcsema_real_eip !18
  %249 = load i1* %FPU_C1, align 1, !mcsema_real_eip !18
  store i1 %249, i1* %FPU_C1_val, !mcsema_real_eip !18
  %250 = load i1* %FPU_C0, align 1, !mcsema_real_eip !18
  store i1 %250, i1* %FPU_C0_val, !mcsema_real_eip !18
  %251 = load i1* %FPU_ES, align 1, !mcsema_real_eip !18
  store i1 %251, i1* %FPU_ES_val, !mcsema_real_eip !18
  %252 = load i1* %FPU_SF, align 1, !mcsema_real_eip !18
  store i1 %252, i1* %FPU_SF_val, !mcsema_real_eip !18
  %253 = load i1* %FPU_PE, align 1, !mcsema_real_eip !18
  store i1 %253, i1* %FPU_PE_val, !mcsema_real_eip !18
  %254 = load i1* %FPU_UE, align 1, !mcsema_real_eip !18
  store i1 %254, i1* %FPU_UE_val, !mcsema_real_eip !18
  %255 = load i1* %FPU_OE, align 1, !mcsema_real_eip !18
  store i1 %255, i1* %FPU_OE_val, !mcsema_real_eip !18
  %256 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !18
  store i1 %256, i1* %FPU_ZE_val, !mcsema_real_eip !18
  %257 = load i1* %FPU_DE, align 1, !mcsema_real_eip !18
  store i1 %257, i1* %FPU_DE_val, !mcsema_real_eip !18
  %258 = load i1* %FPU_IE, align 1, !mcsema_real_eip !18
  store i1 %258, i1* %FPU_IE_val, !mcsema_real_eip !18
  %259 = load i1* %FPU_X, align 1, !mcsema_real_eip !18
  store i1 %259, i1* %FPU_X_val, !mcsema_real_eip !18
  %260 = load i2* %FPU_RC, align 1, !mcsema_real_eip !18
  store i2 %260, i2* %FPU_RC_val, !mcsema_real_eip !18
  %261 = load i2* %FPU_PC, align 1, !mcsema_real_eip !18
  store i2 %261, i2* %FPU_PC_val, !mcsema_real_eip !18
  %262 = load i1* %FPU_PM, align 1, !mcsema_real_eip !18
  store i1 %262, i1* %FPU_PM_val, !mcsema_real_eip !18
  %263 = load i1* %FPU_UM, align 1, !mcsema_real_eip !18
  store i1 %263, i1* %FPU_UM_val, !mcsema_real_eip !18
  %264 = load i1* %FPU_OM, align 1, !mcsema_real_eip !18
  store i1 %264, i1* %FPU_OM_val, !mcsema_real_eip !18
  %265 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !18
  store i1 %265, i1* %FPU_ZM_val, !mcsema_real_eip !18
  %266 = load i1* %FPU_DM, align 1, !mcsema_real_eip !18
  store i1 %266, i1* %FPU_DM_val, !mcsema_real_eip !18
  %267 = load i1* %FPU_IM, align 1, !mcsema_real_eip !18
  store i1 %267, i1* %FPU_IM_val, !mcsema_real_eip !18
  %268 = load i64* %52, align 4
  store i64 %268, i64* %53, align 4
  %269 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !18
  store i16 %269, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !18
  %270 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !18
  store i64 %270, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !18
  %271 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !18
  store i16 %271, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !18
  %272 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !18
  store i64 %272, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !18
  %273 = load i128* %XMM0, align 1, !mcsema_real_eip !18
  store i128 %273, i128* %XMM0_val, !mcsema_real_eip !18
  %274 = load i128* %XMM1, align 1, !mcsema_real_eip !18
  store i128 %274, i128* %XMM1_val, !mcsema_real_eip !18
  %275 = load i128* %XMM2, align 1, !mcsema_real_eip !18
  store i128 %275, i128* %XMM2_val, !mcsema_real_eip !18
  %276 = load i128* %XMM3, align 1, !mcsema_real_eip !18
  store i128 %276, i128* %XMM3_val, !mcsema_real_eip !18
  %277 = load i128* %XMM4, align 1, !mcsema_real_eip !18
  store i128 %277, i128* %XMM4_val, !mcsema_real_eip !18
  %278 = load i128* %XMM5, align 1, !mcsema_real_eip !18
  store i128 %278, i128* %XMM5_val, !mcsema_real_eip !18
  %279 = load i128* %XMM6, align 1, !mcsema_real_eip !18
  store i128 %279, i128* %XMM6_val, !mcsema_real_eip !18
  %280 = load i128* %XMM7, align 1, !mcsema_real_eip !18
  store i128 %280, i128* %XMM7_val, !mcsema_real_eip !18
  %281 = load i128* %XMM8, align 1, !mcsema_real_eip !18
  store i128 %281, i128* %XMM8_val, !mcsema_real_eip !18
  %282 = load i128* %XMM9, align 1, !mcsema_real_eip !18
  store i128 %282, i128* %XMM9_val, !mcsema_real_eip !18
  %283 = load i128* %XMM10, align 1, !mcsema_real_eip !18
  store i128 %283, i128* %XMM10_val, !mcsema_real_eip !18
  %284 = load i128* %XMM11, align 1, !mcsema_real_eip !18
  store i128 %284, i128* %XMM11_val, !mcsema_real_eip !18
  %285 = load i128* %XMM12, align 1, !mcsema_real_eip !18
  store i128 %285, i128* %XMM12_val, !mcsema_real_eip !18
  %286 = load i128* %XMM13, align 1, !mcsema_real_eip !18
  store i128 %286, i128* %XMM13_val, !mcsema_real_eip !18
  %287 = load i128* %XMM14, align 1, !mcsema_real_eip !18
  store i128 %287, i128* %XMM14_val, !mcsema_real_eip !18
  %288 = load i128* %XMM15, align 1, !mcsema_real_eip !18
  store i128 %288, i128* %XMM15_val, !mcsema_real_eip !18
  %289 = load i64* %STACK_BASE, !mcsema_real_eip !18
  store i64 %289, i64* %STACK_BASE_val, !mcsema_real_eip !18
  %290 = load i64* %STACK_LIMIT, !mcsema_real_eip !18
  store i64 %290, i64* %STACK_LIMIT_val, !mcsema_real_eip !18
  %291 = load i64* %RBP_val, !mcsema_real_eip !19
  %292 = add i64 %291, -88, !mcsema_real_eip !19
  %293 = inttoptr i64 %292 to i64*, !mcsema_real_eip !19
  %294 = load i64* %RDX_val, !mcsema_real_eip !19
  %295 = trunc i64 %294 to i32, !mcsema_real_eip !19
  %296 = bitcast i64* %293 to i32*
  store i32 %295, i32* %296, !mcsema_real_eip !19
  %297 = load i64* %RBP_val, !mcsema_real_eip !20
  %298 = add i64 %297, -96, !mcsema_real_eip !20
  %299 = inttoptr i64 %298 to i64*, !mcsema_real_eip !20
  %300 = load i64* %RAX_val, !mcsema_real_eip !20
  store i64 %300, i64* %299, !mcsema_real_eip !20
  %301 = load i64* %RBP_val, !mcsema_real_eip !21
  %302 = add i64 %301, -96, !mcsema_real_eip !21
  %303 = inttoptr i64 %302 to i64*, !mcsema_real_eip !21
  %304 = load i64* %303, !mcsema_real_eip !21
  store i64 %304, i64* %RAX_val, !mcsema_real_eip !21
  %305 = add i64 %301, -48, !mcsema_real_eip !22
  %306 = inttoptr i64 %305 to i64*, !mcsema_real_eip !22
  store i64 %304, i64* %306, !mcsema_real_eip !22
  %307 = load i64* %RBP_val, !mcsema_real_eip !23
  %308 = add i64 %307, -88, !mcsema_real_eip !23
  %309 = inttoptr i64 %308 to i64*, !mcsema_real_eip !23
  %310 = bitcast i64* %309 to i32*
  %311 = load i32* %310, !mcsema_real_eip !23
  %312 = zext i32 %311 to i64, !mcsema_real_eip !23
  store i64 %312, i64* %RCX_val, !mcsema_real_eip !23
  %313 = load i64* %RBP_val, !mcsema_real_eip !24
  %314 = add i64 %313, -40, !mcsema_real_eip !24
  %315 = inttoptr i64 %314 to i64*, !mcsema_real_eip !24
  %316 = bitcast i64* %315 to i32*
  store i32 %311, i32* %316, !mcsema_real_eip !24
  %317 = load i64* %RBP_val, !mcsema_real_eip !25
  %318 = add i64 %317, -48, !mcsema_real_eip !25
  %319 = inttoptr i64 %318 to i64*, !mcsema_real_eip !25
  %320 = bitcast i64* %319 to i32*
  %321 = load i32* %320, !mcsema_real_eip !25
  %322 = zext i32 %321 to i64, !mcsema_real_eip !25
  store i64 %322, i64* %RCX_val, !mcsema_real_eip !25
  %323 = load i64* %RBP_val, !mcsema_real_eip !26
  %324 = add i64 %323, -44, !mcsema_real_eip !26
  %325 = inttoptr i64 %324 to i64*, !mcsema_real_eip !26
  %326 = bitcast i64* %325 to i32*
  %327 = load i32* %326, !mcsema_real_eip !26
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %321, i32 %327)
  %328 = extractvalue { i32, i1 } %uadd, 0
  %329 = xor i32 %328, %327, !mcsema_real_eip !26
  %330 = xor i32 %329, %321, !mcsema_real_eip !26
  %331 = and i32 %330, 16, !mcsema_real_eip !26
  %332 = icmp ne i32 %331, 0, !mcsema_real_eip !26
  store i1 %332, i1* %AF_val, !mcsema_real_eip !26
  %333 = icmp slt i32 %328, 0
  store i1 %333, i1* %SF_val, !mcsema_real_eip !26
  %334 = icmp eq i32 %328, 0, !mcsema_real_eip !26
  store i1 %334, i1* %ZF_val, !mcsema_real_eip !26
  %335 = xor i32 %321, -2147483648, !mcsema_real_eip !26
  %336 = xor i32 %335, %327, !mcsema_real_eip !26
  %337 = and i32 %329, %336, !mcsema_real_eip !26
  %338 = icmp slt i32 %337, 0
  store i1 %338, i1* %OF_val, !mcsema_real_eip !26
  %339 = trunc i32 %328 to i8, !mcsema_real_eip !26
  %340 = tail call i8 @llvm.ctpop.i8(i8 %339), !mcsema_real_eip !26
  %341 = and i8 %340, 1
  %342 = icmp eq i8 %341, 0
  store i1 %342, i1* %PF_val, !mcsema_real_eip !26
  %343 = extractvalue { i32, i1 } %uadd, 1
  store i1 %343, i1* %CF_val, !mcsema_real_eip !26
  %344 = zext i32 %328 to i64, !mcsema_real_eip !26
  store i64 %344, i64* %RCX_val, !mcsema_real_eip !26
  %345 = load i64* %RBP_val, !mcsema_real_eip !27
  %346 = add i64 %345, -40, !mcsema_real_eip !27
  %347 = inttoptr i64 %346 to i64*, !mcsema_real_eip !27
  %348 = bitcast i64* %347 to i32*
  %349 = load i32* %348, !mcsema_real_eip !27
  %350 = add i32 %328, %349
  %351 = zext i32 %350 to i64, !mcsema_real_eip !27
  store i64 %351, i64* %RCX_val, !mcsema_real_eip !27
  store i64 %351, i64* %RAX_val, !mcsema_real_eip !28
  %352 = load i64* %RSP_val, !mcsema_real_eip !29
  %uadd210 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %352, i64 96)
  %353 = extractvalue { i64, i1 } %uadd210, 0
  %354 = xor i64 %353, %352, !mcsema_real_eip !29
  %355 = and i64 %354, 16, !mcsema_real_eip !29
  %356 = icmp ne i64 %355, 0, !mcsema_real_eip !29
  store i1 %356, i1* %AF_val, !mcsema_real_eip !29
  %357 = icmp slt i64 %353, 0
  store i1 %357, i1* %SF_val, !mcsema_real_eip !29
  %358 = icmp eq i64 %353, 0, !mcsema_real_eip !29
  store i1 %358, i1* %ZF_val, !mcsema_real_eip !29
  %359 = xor i64 %352, -9223372036854775808, !mcsema_real_eip !29
  %360 = and i64 %354, %359, !mcsema_real_eip !29
  %361 = icmp slt i64 %360, 0
  store i1 %361, i1* %OF_val, !mcsema_real_eip !29
  %362 = trunc i64 %353 to i8, !mcsema_real_eip !29
  %363 = tail call i8 @llvm.ctpop.i8(i8 %362), !mcsema_real_eip !29
  %364 = and i8 %363, 1
  %365 = icmp eq i8 %364, 0
  store i1 %365, i1* %PF_val, !mcsema_real_eip !29
  %366 = extractvalue { i64, i1 } %uadd210, 1
  store i1 %366, i1* %CF_val, !mcsema_real_eip !29
  store i64 %353, i64* %RSP_val, !mcsema_real_eip !29
  %367 = inttoptr i64 %353 to i64*, !mcsema_real_eip !30
  %368 = load i64* %367, !mcsema_real_eip !30
  store i64 %368, i64* %RBP_val, !mcsema_real_eip !30
  %369 = add i64 %353, 16, !mcsema_real_eip !31
  store i64 %369, i64* %RSP_val, !mcsema_real_eip !31
  %370 = load i64* %RAX_val, !mcsema_real_eip !31
  store i64 %370, i64* %RAX, !mcsema_real_eip !31
  %371 = load i64* %RBX_val, !mcsema_real_eip !31
  store i64 %371, i64* %RBX, !mcsema_real_eip !31
  %372 = load i64* %RCX_val, !mcsema_real_eip !31
  store i64 %372, i64* %RCX, !mcsema_real_eip !31
  %373 = load i64* %RDX_val, !mcsema_real_eip !31
  store i64 %373, i64* %RDX, !mcsema_real_eip !31
  %374 = load i64* %RSI_val, !mcsema_real_eip !31
  store i64 %374, i64* %RSI, !mcsema_real_eip !31
  %375 = load i64* %RDI_val, !mcsema_real_eip !31
  store i64 %375, i64* %RDI, !mcsema_real_eip !31
  %376 = load i64* %RSP_val, !mcsema_real_eip !31
  store i64 %376, i64* %RSP, !mcsema_real_eip !31
  %377 = load i64* %RBP_val, !mcsema_real_eip !31
  store i64 %377, i64* %RBP, !mcsema_real_eip !31
  %378 = load i64* %R8_val, !mcsema_real_eip !31
  store i64 %378, i64* %R8, !mcsema_real_eip !31
  %379 = load i64* %R9_val, !mcsema_real_eip !31
  store i64 %379, i64* %R9, !mcsema_real_eip !31
  %380 = load i64* %R10_val, !mcsema_real_eip !31
  store i64 %380, i64* %R10, !mcsema_real_eip !31
  %381 = load i64* %R11_val, !mcsema_real_eip !31
  store i64 %381, i64* %R11, !mcsema_real_eip !31
  %382 = load i64* %R12_val, !mcsema_real_eip !31
  store i64 %382, i64* %R12, !mcsema_real_eip !31
  %383 = load i64* %R13_val, !mcsema_real_eip !31
  store i64 %383, i64* %R13, !mcsema_real_eip !31
  %384 = load i64* %R14_val, !mcsema_real_eip !31
  store i64 %384, i64* %R14, !mcsema_real_eip !31
  %385 = load i64* %R15_val, !mcsema_real_eip !31
  store i64 %385, i64* %R15, !mcsema_real_eip !31
  %386 = load i64* %RIP_val, !mcsema_real_eip !31
  store i64 %386, i64* %RIP, !mcsema_real_eip !31
  %387 = load i1* %CF_val, !mcsema_real_eip !31
  store i1 %387, i1* %CF, align 1, !mcsema_real_eip !31
  %388 = load i1* %PF_val, !mcsema_real_eip !31
  store i1 %388, i1* %PF, align 1, !mcsema_real_eip !31
  %389 = load i1* %AF_val, !mcsema_real_eip !31
  store i1 %389, i1* %AF, align 1, !mcsema_real_eip !31
  %390 = load i1* %ZF_val, !mcsema_real_eip !31
  store i1 %390, i1* %ZF, align 1, !mcsema_real_eip !31
  %391 = load i1* %SF_val, !mcsema_real_eip !31
  store i1 %391, i1* %SF, align 1, !mcsema_real_eip !31
  %392 = load i1* %OF_val, !mcsema_real_eip !31
  store i1 %392, i1* %OF, align 1, !mcsema_real_eip !31
  %393 = load i1* %DF_val, !mcsema_real_eip !31
  store i1 %393, i1* %DF, align 1, !mcsema_real_eip !31
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !31
  %394 = load i1* %FPU_B_val, !mcsema_real_eip !31
  store i1 %394, i1* %FPU_B, align 1, !mcsema_real_eip !31
  %395 = load i1* %FPU_C3_val, !mcsema_real_eip !31
  store i1 %395, i1* %FPU_C3, align 1, !mcsema_real_eip !31
  %396 = load i3* %FPU_TOP_val, !mcsema_real_eip !31
  store i3 %396, i3* %FPU_TOP, align 1, !mcsema_real_eip !31
  %397 = load i1* %FPU_C2_val, !mcsema_real_eip !31
  store i1 %397, i1* %FPU_C2, align 1, !mcsema_real_eip !31
  %398 = load i1* %FPU_C1_val, !mcsema_real_eip !31
  store i1 %398, i1* %FPU_C1, align 1, !mcsema_real_eip !31
  %399 = load i1* %FPU_C0_val, !mcsema_real_eip !31
  store i1 %399, i1* %FPU_C0, align 1, !mcsema_real_eip !31
  %400 = load i1* %FPU_ES_val, !mcsema_real_eip !31
  store i1 %400, i1* %FPU_ES, align 1, !mcsema_real_eip !31
  %401 = load i1* %FPU_SF_val, !mcsema_real_eip !31
  store i1 %401, i1* %FPU_SF, align 1, !mcsema_real_eip !31
  %402 = load i1* %FPU_PE_val, !mcsema_real_eip !31
  store i1 %402, i1* %FPU_PE, align 1, !mcsema_real_eip !31
  %403 = load i1* %FPU_UE_val, !mcsema_real_eip !31
  store i1 %403, i1* %FPU_UE, align 1, !mcsema_real_eip !31
  %404 = load i1* %FPU_OE_val, !mcsema_real_eip !31
  store i1 %404, i1* %FPU_OE, align 1, !mcsema_real_eip !31
  %405 = load i1* %FPU_ZE_val, !mcsema_real_eip !31
  store i1 %405, i1* %FPU_ZE, align 1, !mcsema_real_eip !31
  %406 = load i1* %FPU_DE_val, !mcsema_real_eip !31
  store i1 %406, i1* %FPU_DE, align 1, !mcsema_real_eip !31
  %407 = load i1* %FPU_IE_val, !mcsema_real_eip !31
  store i1 %407, i1* %FPU_IE, align 1, !mcsema_real_eip !31
  %408 = load i1* %FPU_X_val, !mcsema_real_eip !31
  store i1 %408, i1* %FPU_X, align 1, !mcsema_real_eip !31
  %409 = load i2* %FPU_RC_val, !mcsema_real_eip !31
  store i2 %409, i2* %FPU_RC, align 1, !mcsema_real_eip !31
  %410 = load i2* %FPU_PC_val, !mcsema_real_eip !31
  store i2 %410, i2* %FPU_PC, align 1, !mcsema_real_eip !31
  %411 = load i1* %FPU_PM_val, !mcsema_real_eip !31
  store i1 %411, i1* %FPU_PM, align 1, !mcsema_real_eip !31
  %412 = load i1* %FPU_UM_val, !mcsema_real_eip !31
  store i1 %412, i1* %FPU_UM, align 1, !mcsema_real_eip !31
  %413 = load i1* %FPU_OM_val, !mcsema_real_eip !31
  store i1 %413, i1* %FPU_OM, align 1, !mcsema_real_eip !31
  %414 = load i1* %FPU_ZM_val, !mcsema_real_eip !31
  store i1 %414, i1* %FPU_ZM, align 1, !mcsema_real_eip !31
  %415 = load i1* %FPU_DM_val, !mcsema_real_eip !31
  store i1 %415, i1* %FPU_DM, align 1, !mcsema_real_eip !31
  %416 = load i1* %FPU_IM_val, !mcsema_real_eip !31
  store i1 %416, i1* %FPU_IM, align 1, !mcsema_real_eip !31
  %417 = load i64* %53, align 4
  store i64 %417, i64* %52, align 4
  %418 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !31
  store i16 %418, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !31
  %419 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !31
  store i64 %419, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !31
  %420 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !31
  store i16 %420, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !31
  %421 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !31
  store i64 %421, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !31
  %422 = load i128* %XMM0_val, !mcsema_real_eip !31
  store i128 %422, i128* %XMM0, align 1, !mcsema_real_eip !31
  %423 = load i128* %XMM1_val, !mcsema_real_eip !31
  store i128 %423, i128* %XMM1, align 1, !mcsema_real_eip !31
  %424 = load i128* %XMM2_val, !mcsema_real_eip !31
  store i128 %424, i128* %XMM2, align 1, !mcsema_real_eip !31
  %425 = load i128* %XMM3_val, !mcsema_real_eip !31
  store i128 %425, i128* %XMM3, align 1, !mcsema_real_eip !31
  %426 = load i128* %XMM4_val, !mcsema_real_eip !31
  store i128 %426, i128* %XMM4, align 1, !mcsema_real_eip !31
  %427 = load i128* %XMM5_val, !mcsema_real_eip !31
  store i128 %427, i128* %XMM5, align 1, !mcsema_real_eip !31
  %428 = load i128* %XMM6_val, !mcsema_real_eip !31
  store i128 %428, i128* %XMM6, align 1, !mcsema_real_eip !31
  %429 = load i128* %XMM7_val, !mcsema_real_eip !31
  store i128 %429, i128* %XMM7, align 1, !mcsema_real_eip !31
  %430 = load i128* %XMM8_val, !mcsema_real_eip !31
  store i128 %430, i128* %XMM8, align 1, !mcsema_real_eip !31
  %431 = load i128* %XMM9_val, !mcsema_real_eip !31
  store i128 %431, i128* %XMM9, align 1, !mcsema_real_eip !31
  %432 = load i128* %XMM10_val, !mcsema_real_eip !31
  store i128 %432, i128* %XMM10, align 1, !mcsema_real_eip !31
  %433 = load i128* %XMM11_val, !mcsema_real_eip !31
  store i128 %433, i128* %XMM11, align 1, !mcsema_real_eip !31
  %434 = load i128* %XMM12_val, !mcsema_real_eip !31
  store i128 %434, i128* %XMM12, align 1, !mcsema_real_eip !31
  %435 = load i128* %XMM13_val, !mcsema_real_eip !31
  store i128 %435, i128* %XMM13, align 1, !mcsema_real_eip !31
  %436 = load i128* %XMM14_val, !mcsema_real_eip !31
  store i128 %436, i128* %XMM14, align 1, !mcsema_real_eip !31
  %437 = load i128* %XMM15_val, !mcsema_real_eip !31
  store i128 %437, i128* %XMM15, align 1, !mcsema_real_eip !31
  %438 = load i64* %STACK_BASE_val, !mcsema_real_eip !31
  store i64 %438, i64* %STACK_BASE, align 1, !mcsema_real_eip !31
  %439 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !31
  store i64 %439, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_70(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !32
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !32
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !32
  %XMM15_val = alloca i128, !mcsema_real_eip !32
  %XMM14_val = alloca i128, !mcsema_real_eip !32
  %XMM13_val = alloca i128, !mcsema_real_eip !32
  %XMM12_val = alloca i128, !mcsema_real_eip !32
  %XMM11_val = alloca i128, !mcsema_real_eip !32
  %XMM10_val = alloca i128, !mcsema_real_eip !32
  %XMM9_val = alloca i128, !mcsema_real_eip !32
  %XMM8_val = alloca i128, !mcsema_real_eip !32
  %XMM7_val = alloca i128, !mcsema_real_eip !32
  %XMM6_val = alloca i128, !mcsema_real_eip !32
  %XMM5_val = alloca i128, !mcsema_real_eip !32
  %XMM4_val = alloca i128, !mcsema_real_eip !32
  %XMM3_val = alloca i128, !mcsema_real_eip !32
  %XMM2_val = alloca i128, !mcsema_real_eip !32
  %XMM1_val = alloca i128, !mcsema_real_eip !32
  %XMM0_val = alloca i128, !mcsema_real_eip !32
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !32
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !32
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !32
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !32
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !32
  %FPU_IM_val = alloca i1, !mcsema_real_eip !32
  %FPU_DM_val = alloca i1, !mcsema_real_eip !32
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !32
  %FPU_OM_val = alloca i1, !mcsema_real_eip !32
  %FPU_UM_val = alloca i1, !mcsema_real_eip !32
  %FPU_PM_val = alloca i1, !mcsema_real_eip !32
  %FPU_PC_val = alloca i2, !mcsema_real_eip !32
  %FPU_RC_val = alloca i2, !mcsema_real_eip !32
  %FPU_X_val = alloca i1, !mcsema_real_eip !32
  %FPU_IE_val = alloca i1, !mcsema_real_eip !32
  %FPU_DE_val = alloca i1, !mcsema_real_eip !32
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !32
  %FPU_OE_val = alloca i1, !mcsema_real_eip !32
  %FPU_UE_val = alloca i1, !mcsema_real_eip !32
  %FPU_PE_val = alloca i1, !mcsema_real_eip !32
  %FPU_SF_val = alloca i1, !mcsema_real_eip !32
  %FPU_ES_val = alloca i1, !mcsema_real_eip !32
  %FPU_C0_val = alloca i1, !mcsema_real_eip !32
  %FPU_C1_val = alloca i1, !mcsema_real_eip !32
  %FPU_C2_val = alloca i1, !mcsema_real_eip !32
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !32
  %FPU_C3_val = alloca i1, !mcsema_real_eip !32
  %FPU_B_val = alloca i1, !mcsema_real_eip !32
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !32
  %DF_val = alloca i1, !mcsema_real_eip !32
  %OF_val = alloca i1, !mcsema_real_eip !32
  %SF_val = alloca i1, !mcsema_real_eip !32
  %CF_val = alloca i1, !mcsema_real_eip !32
  %AF_val = alloca i1, !mcsema_real_eip !32
  %PF_val = alloca i1, !mcsema_real_eip !32
  %ZF_val = alloca i1, !mcsema_real_eip !32
  %RIP_val = alloca i64, !mcsema_real_eip !32
  %R14_val = alloca i64, !mcsema_real_eip !32
  %R13_val = alloca i64, !mcsema_real_eip !32
  %R12_val = alloca i64, !mcsema_real_eip !32
  %R11_val = alloca i64, !mcsema_real_eip !32
  %R10_val = alloca i64, !mcsema_real_eip !32
  %R9_val = alloca i64, !mcsema_real_eip !32
  %R8_val = alloca i64, !mcsema_real_eip !32
  %RSP_val = alloca i64, !mcsema_real_eip !32
  %RBP_val = alloca i64, !mcsema_real_eip !32
  %RDI_val = alloca i64, !mcsema_real_eip !32
  %RSI_val = alloca i64, !mcsema_real_eip !32
  %RDX_val = alloca i64, !mcsema_real_eip !32
  %RCX_val = alloca i64, !mcsema_real_eip !32
  %RBX_val = alloca i64, !mcsema_real_eip !32
  %RAX_val = alloca i64, !mcsema_real_eip !32
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !32
  %1 = load i64* %RAX, !mcsema_real_eip !32
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !32
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !32
  %2 = load i64* %RBX, !mcsema_real_eip !32
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !32
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !32
  %3 = load i64* %RCX, !mcsema_real_eip !32
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !32
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !32
  %4 = load i64* %RDX, !mcsema_real_eip !32
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !32
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !32
  %5 = load i64* %RSI, !mcsema_real_eip !32
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !32
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !32
  %6 = load i64* %RDI, !mcsema_real_eip !32
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !32
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !32
  %7 = load i64* %RSP, !mcsema_real_eip !32
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !32
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !32
  %8 = load i64* %RBP, !mcsema_real_eip !32
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !32
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !32
  %9 = load i64* %R8, !mcsema_real_eip !32
  store i64 %9, i64* %R8_val, !mcsema_real_eip !32
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !32
  %10 = load i64* %R9, !mcsema_real_eip !32
  store i64 %10, i64* %R9_val, !mcsema_real_eip !32
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !32
  %11 = load i64* %R10, !mcsema_real_eip !32
  store i64 %11, i64* %R10_val, !mcsema_real_eip !32
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !32
  %12 = load i64* %R11, !mcsema_real_eip !32
  store i64 %12, i64* %R11_val, !mcsema_real_eip !32
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !32
  %13 = load i64* %R12, !mcsema_real_eip !32
  store i64 %13, i64* %R12_val, !mcsema_real_eip !32
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !32
  %14 = load i64* %R13, !mcsema_real_eip !32
  store i64 %14, i64* %R13_val, !mcsema_real_eip !32
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !32
  %15 = load i64* %R14, !mcsema_real_eip !32
  store i64 %15, i64* %R14_val, !mcsema_real_eip !32
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !32
  %16 = load i64* %R15, !mcsema_real_eip !32
  store i64 %16, i64* %R15_val, !mcsema_real_eip !32
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !32
  %17 = load i64* %RIP, !mcsema_real_eip !32
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !32
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !32
  %18 = load i1* %CF, align 1, !mcsema_real_eip !32
  store i1 %18, i1* %CF_val, !mcsema_real_eip !32
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !32
  %19 = load i1* %PF, align 1, !mcsema_real_eip !32
  store i1 %19, i1* %PF_val, !mcsema_real_eip !32
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !32
  %20 = load i1* %AF, align 1, !mcsema_real_eip !32
  store i1 %20, i1* %AF_val, !mcsema_real_eip !32
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !32
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !32
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !32
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !32
  %22 = load i1* %SF, align 1, !mcsema_real_eip !32
  store i1 %22, i1* %SF_val, !mcsema_real_eip !32
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !32
  %23 = load i1* %OF, align 1, !mcsema_real_eip !32
  store i1 %23, i1* %OF_val, !mcsema_real_eip !32
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !32
  %24 = load i1* %DF, align 1, !mcsema_real_eip !32
  store i1 %24, i1* %DF_val, !mcsema_real_eip !32
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !32
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !32
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !32
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !32
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !32
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !32
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !32
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !32
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !32
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !32
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !32
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !32
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !32
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !32
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !32
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !32
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !32
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !32
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !32
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !32
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !32
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !32
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !32
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !32
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !32
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !32
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !32
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !32
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !32
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !32
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !32
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !32
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !32
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !32
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !32
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !32
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !32
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !32
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !32
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !32
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !32
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !32
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !32
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !32
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !32
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !32
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !32
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !32
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !32
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !32
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !32
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !32
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !32
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !32
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !32
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !32
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !32
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !32
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !32
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !32
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !32
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !32
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !32
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !32
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !32
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !32
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !32
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !32
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !32
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !32
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !32
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !32
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !32
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !32
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !32
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !32
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !32
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !32
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !32
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !32
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !32
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !32
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !32
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !32
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !32
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !32
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !32
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !32
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !32
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !32
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !32
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !32
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !32
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !32
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !32
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !32
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !32
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !32
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !32
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !32
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !32
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !32
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !32
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !32
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !32
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !32
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !32
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !32
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !32
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !32
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !32
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !32
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !32
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !32
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !32
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !32
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !32
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !32
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !32
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !32
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !32
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !32
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !32
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !32
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !32
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !32
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !32
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !32
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !32
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !32
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !32
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !32
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !32
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !32
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !32
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !32
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !32
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !32
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !32
  %77 = load i64* %RBP_val, !mcsema_real_eip !32
  %78 = load i64* %RSP_val, !mcsema_real_eip !32
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !32
  store i64 %77, i64* %80, !mcsema_real_eip !32
  store i64 %79, i64* %RSP_val, !mcsema_real_eip !32
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !33
  %81 = add i64 %78, -56, !mcsema_real_eip !34
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !34
  %83 = load i64* %RDI_val, !mcsema_real_eip !34
  store i64 %83, i64* %82, !mcsema_real_eip !34
  %84 = load i64* %RBP_val, !mcsema_real_eip !35
  %85 = add i64 %84, -40, !mcsema_real_eip !35
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !35
  %87 = load i64* %RSI_val, !mcsema_real_eip !35
  %88 = trunc i64 %87 to i32, !mcsema_real_eip !35
  %89 = bitcast i64* %86 to i32*
  store i32 %88, i32* %89, !mcsema_real_eip !35
  %90 = load i64* %RBP_val, !mcsema_real_eip !36
  %91 = add i64 %90, -48, !mcsema_real_eip !36
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !36
  %93 = load i64* %92, !mcsema_real_eip !36
  store i64 %93, i64* %RDI_val, !mcsema_real_eip !36
  %94 = add i64 %90, -32, !mcsema_real_eip !37
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !37
  store i64 %93, i64* %95, !mcsema_real_eip !37
  %96 = load i64* %RBP_val, !mcsema_real_eip !38
  %97 = add i64 %96, -40, !mcsema_real_eip !38
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !38
  %99 = bitcast i64* %98 to i32*
  %100 = load i32* %99, !mcsema_real_eip !38
  %101 = zext i32 %100 to i64, !mcsema_real_eip !38
  store i64 %101, i64* %RSI_val, !mcsema_real_eip !38
  %102 = load i64* %RBP_val, !mcsema_real_eip !39
  %103 = add i64 %102, -24, !mcsema_real_eip !39
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !39
  %105 = bitcast i64* %104 to i32*
  store i32 %100, i32* %105, !mcsema_real_eip !39
  %106 = load i64* %RBP_val, !mcsema_real_eip !40
  %107 = add i64 %106, -80, !mcsema_real_eip !40
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !40
  %109 = load i64* %RDX_val, !mcsema_real_eip !40
  store i64 %109, i64* %108, !mcsema_real_eip !40
  %110 = load i64* %RBP_val, !mcsema_real_eip !41
  %111 = add i64 %110, -72, !mcsema_real_eip !41
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !41
  %113 = load i64* %RCX_val, !mcsema_real_eip !41
  %114 = trunc i64 %113 to i32, !mcsema_real_eip !41
  %115 = bitcast i64* %112 to i32*
  store i32 %114, i32* %115, !mcsema_real_eip !41
  %116 = load i64* %RBP_val, !mcsema_real_eip !42
  %117 = add i64 %116, -80, !mcsema_real_eip !42
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !42
  %119 = load i64* %118, !mcsema_real_eip !42
  store i64 %119, i64* %RDX_val, !mcsema_real_eip !42
  %120 = add i64 %116, -64, !mcsema_real_eip !43
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !43
  store i64 %119, i64* %121, !mcsema_real_eip !43
  %122 = load i64* %RBP_val, !mcsema_real_eip !44
  %123 = add i64 %122, -72, !mcsema_real_eip !44
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !44
  %125 = bitcast i64* %124 to i32*
  %126 = load i32* %125, !mcsema_real_eip !44
  %127 = zext i32 %126 to i64, !mcsema_real_eip !44
  store i64 %127, i64* %RCX_val, !mcsema_real_eip !44
  %128 = load i64* %RBP_val, !mcsema_real_eip !45
  %129 = add i64 %128, -56, !mcsema_real_eip !45
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !45
  %131 = bitcast i64* %130 to i32*
  store i32 %126, i32* %131, !mcsema_real_eip !45
  %132 = load i64* %RBP_val, !mcsema_real_eip !46
  %133 = add i64 %132, -64, !mcsema_real_eip !46
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !46
  %135 = bitcast i64* %134 to i32*
  %136 = load i32* %135, !mcsema_real_eip !46
  %137 = zext i32 %136 to i64, !mcsema_real_eip !46
  store i64 %137, i64* %RCX_val, !mcsema_real_eip !46
  %138 = load i64* %RBP_val, !mcsema_real_eip !47
  %139 = add i64 %138, -32, !mcsema_real_eip !47
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !47
  %141 = bitcast i64* %140 to i32*
  %142 = load i32* %141, !mcsema_real_eip !47
  %143 = sub i32 %136, %142, !mcsema_real_eip !47
  %144 = xor i32 %143, %136, !mcsema_real_eip !47
  %145 = xor i32 %144, %142, !mcsema_real_eip !47
  %146 = and i32 %145, 16, !mcsema_real_eip !47
  %147 = icmp ne i32 %146, 0, !mcsema_real_eip !47
  store i1 %147, i1* %AF_val, !mcsema_real_eip !47
  %148 = trunc i32 %143 to i8, !mcsema_real_eip !47
  %149 = tail call i8 @llvm.ctpop.i8(i8 %148), !mcsema_real_eip !47
  %150 = and i8 %149, 1
  %151 = icmp eq i8 %150, 0
  store i1 %151, i1* %PF_val, !mcsema_real_eip !47
  %152 = icmp eq i32 %136, %142
  store i1 %152, i1* %ZF_val, !mcsema_real_eip !47
  %153 = icmp slt i32 %143, 0
  store i1 %153, i1* %SF_val, !mcsema_real_eip !47
  %154 = icmp ult i32 %136, %142, !mcsema_real_eip !47
  store i1 %154, i1* %CF_val, !mcsema_real_eip !47
  %155 = xor i32 %142, %136, !mcsema_real_eip !47
  %156 = and i32 %144, %155, !mcsema_real_eip !47
  %157 = icmp slt i32 %156, 0
  store i1 %157, i1* %OF_val, !mcsema_real_eip !47
  %158 = load i1* %SF_val, !mcsema_real_eip !48
  %159 = xor i1 %158, %157
  %160 = load i1* %ZF_val, !mcsema_real_eip !48
  %161 = or i1 %160, %159, !mcsema_real_eip !48
  %162 = load i64* %RBP_val, !mcsema_real_eip !49
  br i1 %161, label %block_0xc0, label %block_0xaa, !mcsema_real_eip !48

block_0xc0:                                       ; preds = %entry
  %163 = add i64 %162, -32, !mcsema_real_eip !49
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !49
  %165 = bitcast i64* %164 to i32*
  %166 = load i32* %165, !mcsema_real_eip !49
  %167 = zext i32 %166 to i64, !mcsema_real_eip !49
  store i64 %167, i64* %RAX_val, !mcsema_real_eip !49
  %168 = load i64* %RBP_val, !mcsema_real_eip !50
  %169 = add i64 %168, -64, !mcsema_real_eip !50
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !50
  %171 = bitcast i64* %170 to i32*
  %172 = load i32* %171, !mcsema_real_eip !50
  %173 = sub i32 %166, %172, !mcsema_real_eip !50
  %174 = xor i32 %173, %166, !mcsema_real_eip !50
  %175 = xor i32 %174, %172, !mcsema_real_eip !50
  %176 = and i32 %175, 16, !mcsema_real_eip !50
  %177 = icmp ne i32 %176, 0, !mcsema_real_eip !50
  store i1 %177, i1* %AF_val, !mcsema_real_eip !50
  %178 = trunc i32 %173 to i8, !mcsema_real_eip !50
  %179 = tail call i8 @llvm.ctpop.i8(i8 %178), !mcsema_real_eip !50
  %180 = and i8 %179, 1
  %181 = icmp eq i8 %180, 0
  store i1 %181, i1* %PF_val, !mcsema_real_eip !50
  %182 = icmp eq i32 %166, %172
  store i1 %182, i1* %ZF_val, !mcsema_real_eip !50
  %183 = icmp slt i32 %173, 0
  store i1 %183, i1* %SF_val, !mcsema_real_eip !50
  %184 = icmp ult i32 %166, %172, !mcsema_real_eip !50
  store i1 %184, i1* %CF_val, !mcsema_real_eip !50
  %185 = xor i32 %172, %166, !mcsema_real_eip !50
  %186 = and i32 %174, %185, !mcsema_real_eip !50
  %187 = icmp slt i32 %186, 0
  store i1 %187, i1* %OF_val, !mcsema_real_eip !50
  %188 = zext i32 %173 to i64, !mcsema_real_eip !50
  store i64 %188, i64* %RAX_val, !mcsema_real_eip !50
  %189 = load i64* %RBP_val, !mcsema_real_eip !51
  %190 = add i64 %189, -96, !mcsema_real_eip !51
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !51
  %192 = bitcast i64* %191 to i32*
  store i32 %173, i32* %192, !mcsema_real_eip !51
  %193 = load i64* %RBP_val, !mcsema_real_eip !52
  %194 = add i64 %193, -60, !mcsema_real_eip !52
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !52
  %196 = bitcast i64* %195 to i32*
  %197 = load i32* %196, !mcsema_real_eip !52
  %198 = zext i32 %197 to i64, !mcsema_real_eip !52
  store i64 %198, i64* %RAX_val, !mcsema_real_eip !52
  %199 = load i64* %RBP_val, !mcsema_real_eip !53
  %200 = add i64 %199, -28, !mcsema_real_eip !53
  %201 = inttoptr i64 %200 to i64*, !mcsema_real_eip !53
  %202 = bitcast i64* %201 to i32*
  %203 = load i32* %202, !mcsema_real_eip !53
  %204 = sub i32 %197, %203, !mcsema_real_eip !53
  %205 = xor i32 %204, %197, !mcsema_real_eip !53
  %206 = xor i32 %205, %203, !mcsema_real_eip !53
  %207 = and i32 %206, 16, !mcsema_real_eip !53
  %208 = icmp ne i32 %207, 0, !mcsema_real_eip !53
  store i1 %208, i1* %AF_val, !mcsema_real_eip !53
  %209 = trunc i32 %204 to i8, !mcsema_real_eip !53
  %210 = tail call i8 @llvm.ctpop.i8(i8 %209), !mcsema_real_eip !53
  %211 = and i8 %210, 1
  %212 = icmp eq i8 %211, 0
  store i1 %212, i1* %PF_val, !mcsema_real_eip !53
  %213 = icmp eq i32 %197, %203
  store i1 %213, i1* %ZF_val, !mcsema_real_eip !53
  %214 = icmp slt i32 %204, 0
  store i1 %214, i1* %SF_val, !mcsema_real_eip !53
  %215 = icmp ult i32 %197, %203, !mcsema_real_eip !53
  store i1 %215, i1* %CF_val, !mcsema_real_eip !53
  %216 = xor i32 %203, %197, !mcsema_real_eip !53
  %217 = and i32 %205, %216, !mcsema_real_eip !53
  %218 = icmp slt i32 %217, 0
  store i1 %218, i1* %OF_val, !mcsema_real_eip !53
  %219 = load i1* %SF_val, !mcsema_real_eip !54
  %220 = xor i1 %219, %218
  %221 = load i1* %ZF_val, !mcsema_real_eip !54
  %222 = or i1 %221, %220, !mcsema_real_eip !54
  br i1 %222, label %block_0xeb, label %block_0xd5, !mcsema_real_eip !54

block_0xaa:                                       ; preds = %entry
  %223 = add i64 %162, -28, !mcsema_real_eip !55
  %224 = inttoptr i64 %223 to i64*, !mcsema_real_eip !55
  %225 = bitcast i64* %224 to i32*
  %226 = load i32* %225, !mcsema_real_eip !55
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %226, i32 -1)
  %227 = extractvalue { i32, i1 } %uadd, 0
  %228 = xor i32 %227, %226, !mcsema_real_eip !56
  %229 = and i32 %228, 16
  %230 = icmp eq i32 %229, 0
  store i1 %230, i1* %AF_val, !mcsema_real_eip !56
  %231 = icmp slt i32 %227, 0
  store i1 %231, i1* %SF_val, !mcsema_real_eip !56
  %232 = icmp eq i32 %227, 0, !mcsema_real_eip !56
  store i1 %232, i1* %ZF_val, !mcsema_real_eip !56
  %233 = and i32 %228, %226, !mcsema_real_eip !56
  %234 = icmp slt i32 %233, 0
  store i1 %234, i1* %OF_val, !mcsema_real_eip !56
  %235 = trunc i32 %227 to i8, !mcsema_real_eip !56
  %236 = tail call i8 @llvm.ctpop.i8(i8 %235), !mcsema_real_eip !56
  %237 = and i8 %236, 1
  %238 = icmp eq i8 %237, 0
  store i1 %238, i1* %PF_val, !mcsema_real_eip !56
  %239 = extractvalue { i32, i1 } %uadd, 1
  store i1 %239, i1* %CF_val, !mcsema_real_eip !56
  %240 = zext i32 %227 to i64, !mcsema_real_eip !56
  store i64 %240, i64* %RAX_val, !mcsema_real_eip !56
  %241 = load i64* %RBP_val, !mcsema_real_eip !57
  %242 = add i64 %241, -28, !mcsema_real_eip !57
  %243 = inttoptr i64 %242 to i64*, !mcsema_real_eip !57
  %244 = bitcast i64* %243 to i32*
  store i32 %227, i32* %244, !mcsema_real_eip !57
  %245 = load i64* %RBP_val, !mcsema_real_eip !58
  %246 = add i64 %245, -32, !mcsema_real_eip !58
  %247 = inttoptr i64 %246 to i64*, !mcsema_real_eip !58
  %248 = bitcast i64* %247 to i32*
  %249 = load i32* %248, !mcsema_real_eip !58
  %uadd140 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %249, i32 60)
  %250 = extractvalue { i32, i1 } %uadd140, 0
  %251 = xor i32 %250, %249, !mcsema_real_eip !59
  %252 = and i32 %251, 16
  %253 = icmp eq i32 %252, 0
  store i1 %253, i1* %AF_val, !mcsema_real_eip !59
  %254 = icmp slt i32 %250, 0
  store i1 %254, i1* %SF_val, !mcsema_real_eip !59
  %255 = icmp eq i32 %250, 0, !mcsema_real_eip !59
  store i1 %255, i1* %ZF_val, !mcsema_real_eip !59
  %256 = xor i32 %249, -2147483648, !mcsema_real_eip !59
  %257 = and i32 %251, %256, !mcsema_real_eip !59
  %258 = icmp slt i32 %257, 0
  store i1 %258, i1* %OF_val, !mcsema_real_eip !59
  %259 = trunc i32 %250 to i8, !mcsema_real_eip !59
  %260 = tail call i8 @llvm.ctpop.i8(i8 %259), !mcsema_real_eip !59
  %261 = and i8 %260, 1
  %262 = icmp eq i8 %261, 0
  store i1 %262, i1* %PF_val, !mcsema_real_eip !59
  %263 = extractvalue { i32, i1 } %uadd140, 1
  store i1 %263, i1* %CF_val, !mcsema_real_eip !59
  %264 = zext i32 %250 to i64, !mcsema_real_eip !59
  store i64 %264, i64* %RAX_val, !mcsema_real_eip !59
  %265 = load i64* %RBP_val, !mcsema_real_eip !60
  %266 = add i64 %265, -32, !mcsema_real_eip !60
  %267 = inttoptr i64 %266 to i64*, !mcsema_real_eip !60
  %268 = bitcast i64* %267 to i32*
  store i32 %250, i32* %268, !mcsema_real_eip !60
  %269 = load i64* %RBP_val, !mcsema_real_eip !49
  %270 = add i64 %269, -32, !mcsema_real_eip !49
  %271 = inttoptr i64 %270 to i64*, !mcsema_real_eip !49
  %272 = bitcast i64* %271 to i32*
  %273 = load i32* %272, !mcsema_real_eip !49
  %274 = zext i32 %273 to i64, !mcsema_real_eip !49
  store i64 %274, i64* %RAX_val, !mcsema_real_eip !49
  %275 = load i64* %RBP_val, !mcsema_real_eip !50
  %276 = add i64 %275, -64, !mcsema_real_eip !50
  %277 = inttoptr i64 %276 to i64*, !mcsema_real_eip !50
  %278 = bitcast i64* %277 to i32*
  %279 = load i32* %278, !mcsema_real_eip !50
  %280 = sub i32 %273, %279, !mcsema_real_eip !50
  %281 = xor i32 %280, %273, !mcsema_real_eip !50
  %282 = xor i32 %281, %279, !mcsema_real_eip !50
  %283 = and i32 %282, 16, !mcsema_real_eip !50
  %284 = icmp ne i32 %283, 0, !mcsema_real_eip !50
  store i1 %284, i1* %AF_val, !mcsema_real_eip !50
  %285 = trunc i32 %280 to i8, !mcsema_real_eip !50
  %286 = tail call i8 @llvm.ctpop.i8(i8 %285), !mcsema_real_eip !50
  %287 = and i8 %286, 1
  %288 = icmp eq i8 %287, 0
  store i1 %288, i1* %PF_val, !mcsema_real_eip !50
  %289 = icmp eq i32 %273, %279
  store i1 %289, i1* %ZF_val, !mcsema_real_eip !50
  %290 = icmp slt i32 %280, 0
  store i1 %290, i1* %SF_val, !mcsema_real_eip !50
  %291 = icmp ult i32 %273, %279, !mcsema_real_eip !50
  store i1 %291, i1* %CF_val, !mcsema_real_eip !50
  %292 = xor i32 %279, %273, !mcsema_real_eip !50
  %293 = and i32 %281, %292, !mcsema_real_eip !50
  %294 = icmp slt i32 %293, 0
  store i1 %294, i1* %OF_val, !mcsema_real_eip !50
  %295 = zext i32 %280 to i64, !mcsema_real_eip !50
  store i64 %295, i64* %RAX_val, !mcsema_real_eip !50
  %296 = load i64* %RBP_val, !mcsema_real_eip !51
  %297 = add i64 %296, -96, !mcsema_real_eip !51
  %298 = inttoptr i64 %297 to i64*, !mcsema_real_eip !51
  %299 = bitcast i64* %298 to i32*
  store i32 %280, i32* %299, !mcsema_real_eip !51
  %300 = load i64* %RBP_val, !mcsema_real_eip !52
  %301 = add i64 %300, -60, !mcsema_real_eip !52
  %302 = inttoptr i64 %301 to i64*, !mcsema_real_eip !52
  %303 = bitcast i64* %302 to i32*
  %304 = load i32* %303, !mcsema_real_eip !52
  %305 = zext i32 %304 to i64, !mcsema_real_eip !52
  store i64 %305, i64* %RAX_val, !mcsema_real_eip !52
  %306 = load i64* %RBP_val, !mcsema_real_eip !53
  %307 = add i64 %306, -28, !mcsema_real_eip !53
  %308 = inttoptr i64 %307 to i64*, !mcsema_real_eip !53
  %309 = bitcast i64* %308 to i32*
  %310 = load i32* %309, !mcsema_real_eip !53
  %311 = sub i32 %304, %310, !mcsema_real_eip !53
  %312 = xor i32 %311, %304, !mcsema_real_eip !53
  %313 = xor i32 %312, %310, !mcsema_real_eip !53
  %314 = and i32 %313, 16, !mcsema_real_eip !53
  %315 = icmp ne i32 %314, 0, !mcsema_real_eip !53
  store i1 %315, i1* %AF_val, !mcsema_real_eip !53
  %316 = trunc i32 %311 to i8, !mcsema_real_eip !53
  %317 = tail call i8 @llvm.ctpop.i8(i8 %316), !mcsema_real_eip !53
  %318 = and i8 %317, 1
  %319 = icmp eq i8 %318, 0
  store i1 %319, i1* %PF_val, !mcsema_real_eip !53
  %320 = icmp eq i32 %304, %310
  store i1 %320, i1* %ZF_val, !mcsema_real_eip !53
  %321 = icmp slt i32 %311, 0
  store i1 %321, i1* %SF_val, !mcsema_real_eip !53
  %322 = icmp ult i32 %304, %310, !mcsema_real_eip !53
  store i1 %322, i1* %CF_val, !mcsema_real_eip !53
  %323 = xor i32 %310, %304, !mcsema_real_eip !53
  %324 = and i32 %312, %323, !mcsema_real_eip !53
  %325 = icmp slt i32 %324, 0
  store i1 %325, i1* %OF_val, !mcsema_real_eip !53
  %326 = load i1* %SF_val, !mcsema_real_eip !54
  %327 = xor i1 %326, %325
  %328 = load i1* %ZF_val, !mcsema_real_eip !54
  %329 = or i1 %328, %327, !mcsema_real_eip !54
  br i1 %329, label %block_0xeb, label %block_0xd5, !mcsema_real_eip !54

block_0xeb:                                       ; preds = %block_0xaa, %block_0xc0
  %330 = load i64* %RBP_val, !mcsema_real_eip !61
  %331 = add i64 %330, -28, !mcsema_real_eip !61
  %332 = inttoptr i64 %331 to i64*, !mcsema_real_eip !61
  %333 = bitcast i64* %332 to i32*
  %334 = load i32* %333, !mcsema_real_eip !61
  %335 = zext i32 %334 to i64, !mcsema_real_eip !61
  store i64 %335, i64* %RAX_val, !mcsema_real_eip !61
  %336 = load i64* %RBP_val, !mcsema_real_eip !62
  %337 = add i64 %336, -60, !mcsema_real_eip !62
  %338 = inttoptr i64 %337 to i64*, !mcsema_real_eip !62
  %339 = bitcast i64* %338 to i32*
  %340 = load i32* %339, !mcsema_real_eip !62
  %341 = zext i32 %340 to i64, !mcsema_real_eip !62
  store i64 %341, i64* %RCX_val, !mcsema_real_eip !62
  %342 = load i64* %RAX_val, !mcsema_real_eip !63
  %343 = trunc i64 %342 to i32, !mcsema_real_eip !63
  %344 = sub i32 %343, %340, !mcsema_real_eip !63
  %345 = xor i32 %344, %343, !mcsema_real_eip !63
  %346 = xor i32 %345, %340, !mcsema_real_eip !63
  %347 = and i32 %346, 16, !mcsema_real_eip !63
  %348 = icmp ne i32 %347, 0, !mcsema_real_eip !63
  store i1 %348, i1* %AF_val, !mcsema_real_eip !63
  %349 = trunc i32 %344 to i8, !mcsema_real_eip !63
  %350 = tail call i8 @llvm.ctpop.i8(i8 %349), !mcsema_real_eip !63
  %351 = and i8 %350, 1
  %352 = icmp eq i8 %351, 0
  store i1 %352, i1* %PF_val, !mcsema_real_eip !63
  %353 = icmp eq i32 %343, %340
  store i1 %353, i1* %ZF_val, !mcsema_real_eip !63
  %354 = icmp slt i32 %344, 0
  store i1 %354, i1* %SF_val, !mcsema_real_eip !63
  %355 = icmp ult i32 %343, %340, !mcsema_real_eip !63
  store i1 %355, i1* %CF_val, !mcsema_real_eip !63
  %356 = xor i32 %343, %340, !mcsema_real_eip !63
  %357 = and i32 %345, %356, !mcsema_real_eip !63
  %358 = icmp slt i32 %357, 0
  store i1 %358, i1* %OF_val, !mcsema_real_eip !63
  %359 = zext i32 %344 to i64, !mcsema_real_eip !63
  store i64 %359, i64* %RAX_val, !mcsema_real_eip !63
  %360 = load i64* %RBP_val, !mcsema_real_eip !64
  %361 = add i64 %360, -92, !mcsema_real_eip !64
  %362 = inttoptr i64 %361 to i64*, !mcsema_real_eip !64
  %363 = bitcast i64* %362 to i32*
  store i32 %344, i32* %363, !mcsema_real_eip !64
  %364 = load i64* %RBP_val, !mcsema_real_eip !65
  %365 = add i64 %364, -24, !mcsema_real_eip !65
  %366 = inttoptr i64 %365 to i64*, !mcsema_real_eip !65
  %367 = bitcast i64* %366 to i32*
  %368 = load i32* %367, !mcsema_real_eip !65
  %369 = zext i32 %368 to i64, !mcsema_real_eip !65
  store i64 %369, i64* %RAX_val, !mcsema_real_eip !65
  %370 = load i64* %RBP_val, !mcsema_real_eip !66
  %371 = add i64 %370, -56, !mcsema_real_eip !66
  %372 = inttoptr i64 %371 to i64*, !mcsema_real_eip !66
  %373 = bitcast i64* %372 to i32*
  %374 = load i32* %373, !mcsema_real_eip !66
  %375 = zext i32 %374 to i64, !mcsema_real_eip !66
  store i64 %375, i64* %RCX_val, !mcsema_real_eip !66
  %376 = load i64* %RAX_val, !mcsema_real_eip !67
  %377 = trunc i64 %376 to i32, !mcsema_real_eip !67
  %378 = sub i32 %377, %374, !mcsema_real_eip !67
  %379 = xor i32 %378, %377, !mcsema_real_eip !67
  %380 = xor i32 %379, %374, !mcsema_real_eip !67
  %381 = and i32 %380, 16, !mcsema_real_eip !67
  %382 = icmp ne i32 %381, 0, !mcsema_real_eip !67
  store i1 %382, i1* %AF_val, !mcsema_real_eip !67
  %383 = trunc i32 %378 to i8, !mcsema_real_eip !67
  %384 = tail call i8 @llvm.ctpop.i8(i8 %383), !mcsema_real_eip !67
  %385 = and i8 %384, 1
  %386 = icmp eq i8 %385, 0
  store i1 %386, i1* %PF_val, !mcsema_real_eip !67
  %387 = icmp eq i32 %377, %374
  store i1 %387, i1* %ZF_val, !mcsema_real_eip !67
  %388 = icmp slt i32 %378, 0
  store i1 %388, i1* %SF_val, !mcsema_real_eip !67
  %389 = icmp ult i32 %377, %374, !mcsema_real_eip !67
  store i1 %389, i1* %CF_val, !mcsema_real_eip !67
  %390 = xor i32 %377, %374, !mcsema_real_eip !67
  %391 = and i32 %379, %390, !mcsema_real_eip !67
  %392 = icmp slt i32 %391, 0
  store i1 %392, i1* %OF_val, !mcsema_real_eip !67
  %393 = zext i32 %378 to i64, !mcsema_real_eip !67
  store i64 %393, i64* %RAX_val, !mcsema_real_eip !67
  %394 = load i64* %RBP_val, !mcsema_real_eip !68
  %395 = add i64 %394, -88, !mcsema_real_eip !68
  %396 = inttoptr i64 %395 to i64*, !mcsema_real_eip !68
  %397 = bitcast i64* %396 to i32*
  store i32 %378, i32* %397, !mcsema_real_eip !68
  %398 = load i64* %RBP_val, !mcsema_real_eip !69
  %399 = add i64 %398, -8, !mcsema_real_eip !69
  %400 = inttoptr i64 %399 to i64*, !mcsema_real_eip !69
  %401 = load i64* %RAX_val, !mcsema_real_eip !69
  %402 = trunc i64 %401 to i32, !mcsema_real_eip !69
  %403 = bitcast i64* %400 to i32*
  store i32 %402, i32* %403, !mcsema_real_eip !69
  %404 = load i64* %RBP_val, !mcsema_real_eip !70
  %405 = add i64 %404, -96, !mcsema_real_eip !70
  %406 = inttoptr i64 %405 to i64*, !mcsema_real_eip !70
  %407 = load i64* %406, !mcsema_real_eip !70
  store i64 %407, i64* %RDX_val, !mcsema_real_eip !70
  %408 = add i64 %404, -16, !mcsema_real_eip !71
  %409 = inttoptr i64 %408 to i64*, !mcsema_real_eip !71
  store i64 %407, i64* %409, !mcsema_real_eip !71
  %410 = load i64* %RBP_val, !mcsema_real_eip !72
  %411 = add i64 %410, -8, !mcsema_real_eip !72
  %412 = inttoptr i64 %411 to i64*, !mcsema_real_eip !72
  %413 = bitcast i64* %412 to i32*
  %414 = load i32* %413, !mcsema_real_eip !72
  %415 = zext i32 %414 to i64, !mcsema_real_eip !72
  store i64 %415, i64* %RAX_val, !mcsema_real_eip !72
  %416 = load i64* %RBP_val, !mcsema_real_eip !73
  %417 = add i64 %416, -104, !mcsema_real_eip !73
  %418 = inttoptr i64 %417 to i64*, !mcsema_real_eip !73
  %419 = bitcast i64* %418 to i32*
  store i32 %414, i32* %419, !mcsema_real_eip !73
  %420 = load i64* %RBP_val, !mcsema_real_eip !74
  %421 = add i64 %420, -16, !mcsema_real_eip !74
  %422 = inttoptr i64 %421 to i64*, !mcsema_real_eip !74
  %423 = load i64* %422, !mcsema_real_eip !74
  store i64 %423, i64* %RDX_val, !mcsema_real_eip !74
  %424 = add i64 %420, -112, !mcsema_real_eip !75
  %425 = inttoptr i64 %424 to i64*, !mcsema_real_eip !75
  store i64 %423, i64* %425, !mcsema_real_eip !75
  %426 = load i64* %RBP_val, !mcsema_real_eip !76
  %427 = add i64 %426, -112, !mcsema_real_eip !76
  %428 = inttoptr i64 %427 to i64*, !mcsema_real_eip !76
  %429 = load i64* %428, !mcsema_real_eip !76
  store i64 %429, i64* %RAX_val, !mcsema_real_eip !76
  %430 = add i64 %426, -104, !mcsema_real_eip !77
  %431 = inttoptr i64 %430 to i64*, !mcsema_real_eip !77
  %432 = bitcast i64* %431 to i32*
  %433 = load i32* %432, !mcsema_real_eip !77
  %434 = zext i32 %433 to i64, !mcsema_real_eip !77
  store i64 %434, i64* %RDX_val, !mcsema_real_eip !77
  %435 = load i64* %RSP_val, !mcsema_real_eip !78
  %436 = inttoptr i64 %435 to i64*, !mcsema_real_eip !78
  %437 = load i64* %436, !mcsema_real_eip !78
  store i64 %437, i64* %RBP_val, !mcsema_real_eip !78
  %438 = add i64 %435, 16, !mcsema_real_eip !79
  store i64 %438, i64* %RSP_val, !mcsema_real_eip !79
  %439 = load i64* %RAX_val, !mcsema_real_eip !79
  store i64 %439, i64* %RAX, !mcsema_real_eip !79
  %440 = load i64* %RBX_val, !mcsema_real_eip !79
  store i64 %440, i64* %RBX, !mcsema_real_eip !79
  %441 = load i64* %RCX_val, !mcsema_real_eip !79
  store i64 %441, i64* %RCX, !mcsema_real_eip !79
  %442 = load i64* %RDX_val, !mcsema_real_eip !79
  store i64 %442, i64* %RDX, !mcsema_real_eip !79
  %443 = load i64* %RSI_val, !mcsema_real_eip !79
  store i64 %443, i64* %RSI, !mcsema_real_eip !79
  %444 = load i64* %RDI_val, !mcsema_real_eip !79
  store i64 %444, i64* %RDI, !mcsema_real_eip !79
  %445 = load i64* %RSP_val, !mcsema_real_eip !79
  store i64 %445, i64* %RSP, !mcsema_real_eip !79
  %446 = load i64* %RBP_val, !mcsema_real_eip !79
  store i64 %446, i64* %RBP, !mcsema_real_eip !79
  %447 = load i64* %R8_val, !mcsema_real_eip !79
  store i64 %447, i64* %R8, !mcsema_real_eip !79
  %448 = load i64* %R9_val, !mcsema_real_eip !79
  store i64 %448, i64* %R9, !mcsema_real_eip !79
  %449 = load i64* %R10_val, !mcsema_real_eip !79
  store i64 %449, i64* %R10, !mcsema_real_eip !79
  %450 = load i64* %R11_val, !mcsema_real_eip !79
  store i64 %450, i64* %R11, !mcsema_real_eip !79
  %451 = load i64* %R12_val, !mcsema_real_eip !79
  store i64 %451, i64* %R12, !mcsema_real_eip !79
  %452 = load i64* %R13_val, !mcsema_real_eip !79
  store i64 %452, i64* %R13, !mcsema_real_eip !79
  %453 = load i64* %R14_val, !mcsema_real_eip !79
  store i64 %453, i64* %R14, !mcsema_real_eip !79
  %454 = load i64* %R15_val, !mcsema_real_eip !79
  store i64 %454, i64* %R15, !mcsema_real_eip !79
  %455 = load i64* %RIP_val, !mcsema_real_eip !79
  store i64 %455, i64* %RIP, !mcsema_real_eip !79
  %456 = load i1* %CF_val, !mcsema_real_eip !79
  store i1 %456, i1* %CF, align 1, !mcsema_real_eip !79
  %457 = load i1* %PF_val, !mcsema_real_eip !79
  store i1 %457, i1* %PF, align 1, !mcsema_real_eip !79
  %458 = load i1* %AF_val, !mcsema_real_eip !79
  store i1 %458, i1* %AF, align 1, !mcsema_real_eip !79
  %459 = load i1* %ZF_val, !mcsema_real_eip !79
  store i1 %459, i1* %ZF, align 1, !mcsema_real_eip !79
  %460 = load i1* %SF_val, !mcsema_real_eip !79
  store i1 %460, i1* %SF, align 1, !mcsema_real_eip !79
  %461 = load i1* %OF_val, !mcsema_real_eip !79
  store i1 %461, i1* %OF, align 1, !mcsema_real_eip !79
  %462 = load i1* %DF_val, !mcsema_real_eip !79
  store i1 %462, i1* %DF, align 1, !mcsema_real_eip !79
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !79
  %463 = load i1* %FPU_B_val, !mcsema_real_eip !79
  store i1 %463, i1* %FPU_B, align 1, !mcsema_real_eip !79
  %464 = load i1* %FPU_C3_val, !mcsema_real_eip !79
  store i1 %464, i1* %FPU_C3, align 1, !mcsema_real_eip !79
  %465 = load i3* %FPU_TOP_val, !mcsema_real_eip !79
  store i3 %465, i3* %FPU_TOP, align 1, !mcsema_real_eip !79
  %466 = load i1* %FPU_C2_val, !mcsema_real_eip !79
  store i1 %466, i1* %FPU_C2, align 1, !mcsema_real_eip !79
  %467 = load i1* %FPU_C1_val, !mcsema_real_eip !79
  store i1 %467, i1* %FPU_C1, align 1, !mcsema_real_eip !79
  %468 = load i1* %FPU_C0_val, !mcsema_real_eip !79
  store i1 %468, i1* %FPU_C0, align 1, !mcsema_real_eip !79
  %469 = load i1* %FPU_ES_val, !mcsema_real_eip !79
  store i1 %469, i1* %FPU_ES, align 1, !mcsema_real_eip !79
  %470 = load i1* %FPU_SF_val, !mcsema_real_eip !79
  store i1 %470, i1* %FPU_SF, align 1, !mcsema_real_eip !79
  %471 = load i1* %FPU_PE_val, !mcsema_real_eip !79
  store i1 %471, i1* %FPU_PE, align 1, !mcsema_real_eip !79
  %472 = load i1* %FPU_UE_val, !mcsema_real_eip !79
  store i1 %472, i1* %FPU_UE, align 1, !mcsema_real_eip !79
  %473 = load i1* %FPU_OE_val, !mcsema_real_eip !79
  store i1 %473, i1* %FPU_OE, align 1, !mcsema_real_eip !79
  %474 = load i1* %FPU_ZE_val, !mcsema_real_eip !79
  store i1 %474, i1* %FPU_ZE, align 1, !mcsema_real_eip !79
  %475 = load i1* %FPU_DE_val, !mcsema_real_eip !79
  store i1 %475, i1* %FPU_DE, align 1, !mcsema_real_eip !79
  %476 = load i1* %FPU_IE_val, !mcsema_real_eip !79
  store i1 %476, i1* %FPU_IE, align 1, !mcsema_real_eip !79
  %477 = load i1* %FPU_X_val, !mcsema_real_eip !79
  store i1 %477, i1* %FPU_X, align 1, !mcsema_real_eip !79
  %478 = load i2* %FPU_RC_val, !mcsema_real_eip !79
  store i2 %478, i2* %FPU_RC, align 1, !mcsema_real_eip !79
  %479 = load i2* %FPU_PC_val, !mcsema_real_eip !79
  store i2 %479, i2* %FPU_PC, align 1, !mcsema_real_eip !79
  %480 = load i1* %FPU_PM_val, !mcsema_real_eip !79
  store i1 %480, i1* %FPU_PM, align 1, !mcsema_real_eip !79
  %481 = load i1* %FPU_UM_val, !mcsema_real_eip !79
  store i1 %481, i1* %FPU_UM, align 1, !mcsema_real_eip !79
  %482 = load i1* %FPU_OM_val, !mcsema_real_eip !79
  store i1 %482, i1* %FPU_OM, align 1, !mcsema_real_eip !79
  %483 = load i1* %FPU_ZM_val, !mcsema_real_eip !79
  store i1 %483, i1* %FPU_ZM, align 1, !mcsema_real_eip !79
  %484 = load i1* %FPU_DM_val, !mcsema_real_eip !79
  store i1 %484, i1* %FPU_DM, align 1, !mcsema_real_eip !79
  %485 = load i1* %FPU_IM_val, !mcsema_real_eip !79
  store i1 %485, i1* %FPU_IM, align 1, !mcsema_real_eip !79
  %486 = load i64* %53, align 4
  store i64 %486, i64* %52, align 4
  %487 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !79
  store i16 %487, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !79
  %488 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !79
  store i64 %488, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !79
  %489 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !79
  store i16 %489, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !79
  %490 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !79
  store i64 %490, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !79
  %491 = load i128* %XMM0_val, !mcsema_real_eip !79
  store i128 %491, i128* %XMM0, align 1, !mcsema_real_eip !79
  %492 = load i128* %XMM1_val, !mcsema_real_eip !79
  store i128 %492, i128* %XMM1, align 1, !mcsema_real_eip !79
  %493 = load i128* %XMM2_val, !mcsema_real_eip !79
  store i128 %493, i128* %XMM2, align 1, !mcsema_real_eip !79
  %494 = load i128* %XMM3_val, !mcsema_real_eip !79
  store i128 %494, i128* %XMM3, align 1, !mcsema_real_eip !79
  %495 = load i128* %XMM4_val, !mcsema_real_eip !79
  store i128 %495, i128* %XMM4, align 1, !mcsema_real_eip !79
  %496 = load i128* %XMM5_val, !mcsema_real_eip !79
  store i128 %496, i128* %XMM5, align 1, !mcsema_real_eip !79
  %497 = load i128* %XMM6_val, !mcsema_real_eip !79
  store i128 %497, i128* %XMM6, align 1, !mcsema_real_eip !79
  %498 = load i128* %XMM7_val, !mcsema_real_eip !79
  store i128 %498, i128* %XMM7, align 1, !mcsema_real_eip !79
  %499 = load i128* %XMM8_val, !mcsema_real_eip !79
  store i128 %499, i128* %XMM8, align 1, !mcsema_real_eip !79
  %500 = load i128* %XMM9_val, !mcsema_real_eip !79
  store i128 %500, i128* %XMM9, align 1, !mcsema_real_eip !79
  %501 = load i128* %XMM10_val, !mcsema_real_eip !79
  store i128 %501, i128* %XMM10, align 1, !mcsema_real_eip !79
  %502 = load i128* %XMM11_val, !mcsema_real_eip !79
  store i128 %502, i128* %XMM11, align 1, !mcsema_real_eip !79
  %503 = load i128* %XMM12_val, !mcsema_real_eip !79
  store i128 %503, i128* %XMM12, align 1, !mcsema_real_eip !79
  %504 = load i128* %XMM13_val, !mcsema_real_eip !79
  store i128 %504, i128* %XMM13, align 1, !mcsema_real_eip !79
  %505 = load i128* %XMM14_val, !mcsema_real_eip !79
  store i128 %505, i128* %XMM14, align 1, !mcsema_real_eip !79
  %506 = load i128* %XMM15_val, !mcsema_real_eip !79
  store i128 %506, i128* %XMM15, align 1, !mcsema_real_eip !79
  %507 = load i64* %STACK_BASE_val, !mcsema_real_eip !79
  store i64 %507, i64* %STACK_BASE, align 1, !mcsema_real_eip !79
  %508 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !79
  store i64 %508, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !79
  ret void, !mcsema_real_eip !79

block_0xd5:                                       ; preds = %block_0xaa, %block_0xc0
  %509 = load i64* %RBP_val, !mcsema_real_eip !80
  %510 = add i64 %509, -24, !mcsema_real_eip !80
  %511 = inttoptr i64 %510 to i64*, !mcsema_real_eip !80
  %512 = bitcast i64* %511 to i32*
  %513 = load i32* %512, !mcsema_real_eip !80
  %uadd142 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %513, i32 -1)
  %514 = extractvalue { i32, i1 } %uadd142, 0
  %515 = xor i32 %514, %513, !mcsema_real_eip !81
  %516 = and i32 %515, 16
  %517 = icmp eq i32 %516, 0
  store i1 %517, i1* %AF_val, !mcsema_real_eip !81
  %518 = icmp slt i32 %514, 0
  store i1 %518, i1* %SF_val, !mcsema_real_eip !81
  %519 = icmp eq i32 %514, 0, !mcsema_real_eip !81
  store i1 %519, i1* %ZF_val, !mcsema_real_eip !81
  %520 = and i32 %515, %513, !mcsema_real_eip !81
  %521 = icmp slt i32 %520, 0
  store i1 %521, i1* %OF_val, !mcsema_real_eip !81
  %522 = trunc i32 %514 to i8, !mcsema_real_eip !81
  %523 = tail call i8 @llvm.ctpop.i8(i8 %522), !mcsema_real_eip !81
  %524 = and i8 %523, 1
  %525 = icmp eq i8 %524, 0
  store i1 %525, i1* %PF_val, !mcsema_real_eip !81
  %526 = extractvalue { i32, i1 } %uadd142, 1
  store i1 %526, i1* %CF_val, !mcsema_real_eip !81
  %527 = zext i32 %514 to i64, !mcsema_real_eip !81
  store i64 %527, i64* %RAX_val, !mcsema_real_eip !81
  %528 = load i64* %RBP_val, !mcsema_real_eip !82
  %529 = add i64 %528, -24, !mcsema_real_eip !82
  %530 = inttoptr i64 %529 to i64*, !mcsema_real_eip !82
  %531 = bitcast i64* %530 to i32*
  store i32 %514, i32* %531, !mcsema_real_eip !82
  %532 = load i64* %RBP_val, !mcsema_real_eip !83
  %533 = add i64 %532, -28, !mcsema_real_eip !83
  %534 = inttoptr i64 %533 to i64*, !mcsema_real_eip !83
  %535 = bitcast i64* %534 to i32*
  %536 = load i32* %535, !mcsema_real_eip !83
  %uadd143 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %536, i32 60)
  %537 = extractvalue { i32, i1 } %uadd143, 0
  %538 = xor i32 %537, %536, !mcsema_real_eip !84
  %539 = and i32 %538, 16
  %540 = icmp eq i32 %539, 0
  store i1 %540, i1* %AF_val, !mcsema_real_eip !84
  %541 = icmp slt i32 %537, 0
  store i1 %541, i1* %SF_val, !mcsema_real_eip !84
  %542 = icmp eq i32 %537, 0, !mcsema_real_eip !84
  store i1 %542, i1* %ZF_val, !mcsema_real_eip !84
  %543 = xor i32 %536, -2147483648, !mcsema_real_eip !84
  %544 = and i32 %538, %543, !mcsema_real_eip !84
  %545 = icmp slt i32 %544, 0
  store i1 %545, i1* %OF_val, !mcsema_real_eip !84
  %546 = trunc i32 %537 to i8, !mcsema_real_eip !84
  %547 = tail call i8 @llvm.ctpop.i8(i8 %546), !mcsema_real_eip !84
  %548 = and i8 %547, 1
  %549 = icmp eq i8 %548, 0
  store i1 %549, i1* %PF_val, !mcsema_real_eip !84
  %550 = extractvalue { i32, i1 } %uadd143, 1
  store i1 %550, i1* %CF_val, !mcsema_real_eip !84
  %551 = zext i32 %537 to i64, !mcsema_real_eip !84
  store i64 %551, i64* %RAX_val, !mcsema_real_eip !84
  %552 = load i64* %RBP_val, !mcsema_real_eip !85
  %553 = add i64 %552, -28, !mcsema_real_eip !85
  %554 = inttoptr i64 %553 to i64*, !mcsema_real_eip !85
  %555 = bitcast i64* %554 to i32*
  store i32 %537, i32* %555, !mcsema_real_eip !85
  %556 = load i64* %RBP_val, !mcsema_real_eip !61
  %557 = add i64 %556, -28, !mcsema_real_eip !61
  %558 = inttoptr i64 %557 to i64*, !mcsema_real_eip !61
  %559 = bitcast i64* %558 to i32*
  %560 = load i32* %559, !mcsema_real_eip !61
  %561 = zext i32 %560 to i64, !mcsema_real_eip !61
  store i64 %561, i64* %RAX_val, !mcsema_real_eip !61
  %562 = load i64* %RBP_val, !mcsema_real_eip !62
  %563 = add i64 %562, -60, !mcsema_real_eip !62
  %564 = inttoptr i64 %563 to i64*, !mcsema_real_eip !62
  %565 = bitcast i64* %564 to i32*
  %566 = load i32* %565, !mcsema_real_eip !62
  %567 = zext i32 %566 to i64, !mcsema_real_eip !62
  store i64 %567, i64* %RCX_val, !mcsema_real_eip !62
  %568 = load i64* %RAX_val, !mcsema_real_eip !63
  %569 = trunc i64 %568 to i32, !mcsema_real_eip !63
  %570 = sub i32 %569, %566, !mcsema_real_eip !63
  %571 = xor i32 %570, %569, !mcsema_real_eip !63
  %572 = xor i32 %571, %566, !mcsema_real_eip !63
  %573 = and i32 %572, 16, !mcsema_real_eip !63
  %574 = icmp ne i32 %573, 0, !mcsema_real_eip !63
  store i1 %574, i1* %AF_val, !mcsema_real_eip !63
  %575 = trunc i32 %570 to i8, !mcsema_real_eip !63
  %576 = tail call i8 @llvm.ctpop.i8(i8 %575), !mcsema_real_eip !63
  %577 = and i8 %576, 1
  %578 = icmp eq i8 %577, 0
  store i1 %578, i1* %PF_val, !mcsema_real_eip !63
  %579 = icmp eq i32 %569, %566
  store i1 %579, i1* %ZF_val, !mcsema_real_eip !63
  %580 = icmp slt i32 %570, 0
  store i1 %580, i1* %SF_val, !mcsema_real_eip !63
  %581 = icmp ult i32 %569, %566, !mcsema_real_eip !63
  store i1 %581, i1* %CF_val, !mcsema_real_eip !63
  %582 = xor i32 %569, %566, !mcsema_real_eip !63
  %583 = and i32 %571, %582, !mcsema_real_eip !63
  %584 = icmp slt i32 %583, 0
  store i1 %584, i1* %OF_val, !mcsema_real_eip !63
  %585 = zext i32 %570 to i64, !mcsema_real_eip !63
  store i64 %585, i64* %RAX_val, !mcsema_real_eip !63
  %586 = load i64* %RBP_val, !mcsema_real_eip !64
  %587 = add i64 %586, -92, !mcsema_real_eip !64
  %588 = inttoptr i64 %587 to i64*, !mcsema_real_eip !64
  %589 = bitcast i64* %588 to i32*
  store i32 %570, i32* %589, !mcsema_real_eip !64
  %590 = load i64* %RBP_val, !mcsema_real_eip !65
  %591 = add i64 %590, -24, !mcsema_real_eip !65
  %592 = inttoptr i64 %591 to i64*, !mcsema_real_eip !65
  %593 = bitcast i64* %592 to i32*
  %594 = load i32* %593, !mcsema_real_eip !65
  %595 = zext i32 %594 to i64, !mcsema_real_eip !65
  store i64 %595, i64* %RAX_val, !mcsema_real_eip !65
  %596 = load i64* %RBP_val, !mcsema_real_eip !66
  %597 = add i64 %596, -56, !mcsema_real_eip !66
  %598 = inttoptr i64 %597 to i64*, !mcsema_real_eip !66
  %599 = bitcast i64* %598 to i32*
  %600 = load i32* %599, !mcsema_real_eip !66
  %601 = zext i32 %600 to i64, !mcsema_real_eip !66
  store i64 %601, i64* %RCX_val, !mcsema_real_eip !66
  %602 = load i64* %RAX_val, !mcsema_real_eip !67
  %603 = trunc i64 %602 to i32, !mcsema_real_eip !67
  %604 = sub i32 %603, %600, !mcsema_real_eip !67
  %605 = xor i32 %604, %603, !mcsema_real_eip !67
  %606 = xor i32 %605, %600, !mcsema_real_eip !67
  %607 = and i32 %606, 16, !mcsema_real_eip !67
  %608 = icmp ne i32 %607, 0, !mcsema_real_eip !67
  store i1 %608, i1* %AF_val, !mcsema_real_eip !67
  %609 = trunc i32 %604 to i8, !mcsema_real_eip !67
  %610 = tail call i8 @llvm.ctpop.i8(i8 %609), !mcsema_real_eip !67
  %611 = and i8 %610, 1
  %612 = icmp eq i8 %611, 0
  store i1 %612, i1* %PF_val, !mcsema_real_eip !67
  %613 = icmp eq i32 %603, %600
  store i1 %613, i1* %ZF_val, !mcsema_real_eip !67
  %614 = icmp slt i32 %604, 0
  store i1 %614, i1* %SF_val, !mcsema_real_eip !67
  %615 = icmp ult i32 %603, %600, !mcsema_real_eip !67
  store i1 %615, i1* %CF_val, !mcsema_real_eip !67
  %616 = xor i32 %603, %600, !mcsema_real_eip !67
  %617 = and i32 %605, %616, !mcsema_real_eip !67
  %618 = icmp slt i32 %617, 0
  store i1 %618, i1* %OF_val, !mcsema_real_eip !67
  %619 = zext i32 %604 to i64, !mcsema_real_eip !67
  store i64 %619, i64* %RAX_val, !mcsema_real_eip !67
  %620 = load i64* %RBP_val, !mcsema_real_eip !68
  %621 = add i64 %620, -88, !mcsema_real_eip !68
  %622 = inttoptr i64 %621 to i64*, !mcsema_real_eip !68
  %623 = bitcast i64* %622 to i32*
  store i32 %604, i32* %623, !mcsema_real_eip !68
  %624 = load i64* %RBP_val, !mcsema_real_eip !69
  %625 = add i64 %624, -8, !mcsema_real_eip !69
  %626 = inttoptr i64 %625 to i64*, !mcsema_real_eip !69
  %627 = load i64* %RAX_val, !mcsema_real_eip !69
  %628 = trunc i64 %627 to i32, !mcsema_real_eip !69
  %629 = bitcast i64* %626 to i32*
  store i32 %628, i32* %629, !mcsema_real_eip !69
  %630 = load i64* %RBP_val, !mcsema_real_eip !70
  %631 = add i64 %630, -96, !mcsema_real_eip !70
  %632 = inttoptr i64 %631 to i64*, !mcsema_real_eip !70
  %633 = load i64* %632, !mcsema_real_eip !70
  store i64 %633, i64* %RDX_val, !mcsema_real_eip !70
  %634 = add i64 %630, -16, !mcsema_real_eip !71
  %635 = inttoptr i64 %634 to i64*, !mcsema_real_eip !71
  store i64 %633, i64* %635, !mcsema_real_eip !71
  %636 = load i64* %RBP_val, !mcsema_real_eip !72
  %637 = add i64 %636, -8, !mcsema_real_eip !72
  %638 = inttoptr i64 %637 to i64*, !mcsema_real_eip !72
  %639 = bitcast i64* %638 to i32*
  %640 = load i32* %639, !mcsema_real_eip !72
  %641 = zext i32 %640 to i64, !mcsema_real_eip !72
  store i64 %641, i64* %RAX_val, !mcsema_real_eip !72
  %642 = load i64* %RBP_val, !mcsema_real_eip !73
  %643 = add i64 %642, -104, !mcsema_real_eip !73
  %644 = inttoptr i64 %643 to i64*, !mcsema_real_eip !73
  %645 = bitcast i64* %644 to i32*
  store i32 %640, i32* %645, !mcsema_real_eip !73
  %646 = load i64* %RBP_val, !mcsema_real_eip !74
  %647 = add i64 %646, -16, !mcsema_real_eip !74
  %648 = inttoptr i64 %647 to i64*, !mcsema_real_eip !74
  %649 = load i64* %648, !mcsema_real_eip !74
  store i64 %649, i64* %RDX_val, !mcsema_real_eip !74
  %650 = add i64 %646, -112, !mcsema_real_eip !75
  %651 = inttoptr i64 %650 to i64*, !mcsema_real_eip !75
  store i64 %649, i64* %651, !mcsema_real_eip !75
  %652 = load i64* %RBP_val, !mcsema_real_eip !76
  %653 = add i64 %652, -112, !mcsema_real_eip !76
  %654 = inttoptr i64 %653 to i64*, !mcsema_real_eip !76
  %655 = load i64* %654, !mcsema_real_eip !76
  store i64 %655, i64* %RAX_val, !mcsema_real_eip !76
  %656 = add i64 %652, -104, !mcsema_real_eip !77
  %657 = inttoptr i64 %656 to i64*, !mcsema_real_eip !77
  %658 = bitcast i64* %657 to i32*
  %659 = load i32* %658, !mcsema_real_eip !77
  %660 = zext i32 %659 to i64, !mcsema_real_eip !77
  store i64 %660, i64* %RDX_val, !mcsema_real_eip !77
  %661 = load i64* %RSP_val, !mcsema_real_eip !78
  %662 = inttoptr i64 %661 to i64*, !mcsema_real_eip !78
  %663 = load i64* %662, !mcsema_real_eip !78
  store i64 %663, i64* %RBP_val, !mcsema_real_eip !78
  %664 = add i64 %661, 16, !mcsema_real_eip !79
  store i64 %664, i64* %RSP_val, !mcsema_real_eip !79
  %665 = load i64* %RAX_val, !mcsema_real_eip !79
  store i64 %665, i64* %RAX, !mcsema_real_eip !79
  %666 = load i64* %RBX_val, !mcsema_real_eip !79
  store i64 %666, i64* %RBX, !mcsema_real_eip !79
  %667 = load i64* %RCX_val, !mcsema_real_eip !79
  store i64 %667, i64* %RCX, !mcsema_real_eip !79
  %668 = load i64* %RDX_val, !mcsema_real_eip !79
  store i64 %668, i64* %RDX, !mcsema_real_eip !79
  %669 = load i64* %RSI_val, !mcsema_real_eip !79
  store i64 %669, i64* %RSI, !mcsema_real_eip !79
  %670 = load i64* %RDI_val, !mcsema_real_eip !79
  store i64 %670, i64* %RDI, !mcsema_real_eip !79
  %671 = load i64* %RSP_val, !mcsema_real_eip !79
  store i64 %671, i64* %RSP, !mcsema_real_eip !79
  %672 = load i64* %RBP_val, !mcsema_real_eip !79
  store i64 %672, i64* %RBP, !mcsema_real_eip !79
  %673 = load i64* %R8_val, !mcsema_real_eip !79
  store i64 %673, i64* %R8, !mcsema_real_eip !79
  %674 = load i64* %R9_val, !mcsema_real_eip !79
  store i64 %674, i64* %R9, !mcsema_real_eip !79
  %675 = load i64* %R10_val, !mcsema_real_eip !79
  store i64 %675, i64* %R10, !mcsema_real_eip !79
  %676 = load i64* %R11_val, !mcsema_real_eip !79
  store i64 %676, i64* %R11, !mcsema_real_eip !79
  %677 = load i64* %R12_val, !mcsema_real_eip !79
  store i64 %677, i64* %R12, !mcsema_real_eip !79
  %678 = load i64* %R13_val, !mcsema_real_eip !79
  store i64 %678, i64* %R13, !mcsema_real_eip !79
  %679 = load i64* %R14_val, !mcsema_real_eip !79
  store i64 %679, i64* %R14, !mcsema_real_eip !79
  %680 = load i64* %R15_val, !mcsema_real_eip !79
  store i64 %680, i64* %R15, !mcsema_real_eip !79
  %681 = load i64* %RIP_val, !mcsema_real_eip !79
  store i64 %681, i64* %RIP, !mcsema_real_eip !79
  %682 = load i1* %CF_val, !mcsema_real_eip !79
  store i1 %682, i1* %CF, align 1, !mcsema_real_eip !79
  %683 = load i1* %PF_val, !mcsema_real_eip !79
  store i1 %683, i1* %PF, align 1, !mcsema_real_eip !79
  %684 = load i1* %AF_val, !mcsema_real_eip !79
  store i1 %684, i1* %AF, align 1, !mcsema_real_eip !79
  %685 = load i1* %ZF_val, !mcsema_real_eip !79
  store i1 %685, i1* %ZF, align 1, !mcsema_real_eip !79
  %686 = load i1* %SF_val, !mcsema_real_eip !79
  store i1 %686, i1* %SF, align 1, !mcsema_real_eip !79
  %687 = load i1* %OF_val, !mcsema_real_eip !79
  store i1 %687, i1* %OF, align 1, !mcsema_real_eip !79
  %688 = load i1* %DF_val, !mcsema_real_eip !79
  store i1 %688, i1* %DF, align 1, !mcsema_real_eip !79
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !79
  %689 = load i1* %FPU_B_val, !mcsema_real_eip !79
  store i1 %689, i1* %FPU_B, align 1, !mcsema_real_eip !79
  %690 = load i1* %FPU_C3_val, !mcsema_real_eip !79
  store i1 %690, i1* %FPU_C3, align 1, !mcsema_real_eip !79
  %691 = load i3* %FPU_TOP_val, !mcsema_real_eip !79
  store i3 %691, i3* %FPU_TOP, align 1, !mcsema_real_eip !79
  %692 = load i1* %FPU_C2_val, !mcsema_real_eip !79
  store i1 %692, i1* %FPU_C2, align 1, !mcsema_real_eip !79
  %693 = load i1* %FPU_C1_val, !mcsema_real_eip !79
  store i1 %693, i1* %FPU_C1, align 1, !mcsema_real_eip !79
  %694 = load i1* %FPU_C0_val, !mcsema_real_eip !79
  store i1 %694, i1* %FPU_C0, align 1, !mcsema_real_eip !79
  %695 = load i1* %FPU_ES_val, !mcsema_real_eip !79
  store i1 %695, i1* %FPU_ES, align 1, !mcsema_real_eip !79
  %696 = load i1* %FPU_SF_val, !mcsema_real_eip !79
  store i1 %696, i1* %FPU_SF, align 1, !mcsema_real_eip !79
  %697 = load i1* %FPU_PE_val, !mcsema_real_eip !79
  store i1 %697, i1* %FPU_PE, align 1, !mcsema_real_eip !79
  %698 = load i1* %FPU_UE_val, !mcsema_real_eip !79
  store i1 %698, i1* %FPU_UE, align 1, !mcsema_real_eip !79
  %699 = load i1* %FPU_OE_val, !mcsema_real_eip !79
  store i1 %699, i1* %FPU_OE, align 1, !mcsema_real_eip !79
  %700 = load i1* %FPU_ZE_val, !mcsema_real_eip !79
  store i1 %700, i1* %FPU_ZE, align 1, !mcsema_real_eip !79
  %701 = load i1* %FPU_DE_val, !mcsema_real_eip !79
  store i1 %701, i1* %FPU_DE, align 1, !mcsema_real_eip !79
  %702 = load i1* %FPU_IE_val, !mcsema_real_eip !79
  store i1 %702, i1* %FPU_IE, align 1, !mcsema_real_eip !79
  %703 = load i1* %FPU_X_val, !mcsema_real_eip !79
  store i1 %703, i1* %FPU_X, align 1, !mcsema_real_eip !79
  %704 = load i2* %FPU_RC_val, !mcsema_real_eip !79
  store i2 %704, i2* %FPU_RC, align 1, !mcsema_real_eip !79
  %705 = load i2* %FPU_PC_val, !mcsema_real_eip !79
  store i2 %705, i2* %FPU_PC, align 1, !mcsema_real_eip !79
  %706 = load i1* %FPU_PM_val, !mcsema_real_eip !79
  store i1 %706, i1* %FPU_PM, align 1, !mcsema_real_eip !79
  %707 = load i1* %FPU_UM_val, !mcsema_real_eip !79
  store i1 %707, i1* %FPU_UM, align 1, !mcsema_real_eip !79
  %708 = load i1* %FPU_OM_val, !mcsema_real_eip !79
  store i1 %708, i1* %FPU_OM, align 1, !mcsema_real_eip !79
  %709 = load i1* %FPU_ZM_val, !mcsema_real_eip !79
  store i1 %709, i1* %FPU_ZM, align 1, !mcsema_real_eip !79
  %710 = load i1* %FPU_DM_val, !mcsema_real_eip !79
  store i1 %710, i1* %FPU_DM, align 1, !mcsema_real_eip !79
  %711 = load i1* %FPU_IM_val, !mcsema_real_eip !79
  store i1 %711, i1* %FPU_IM, align 1, !mcsema_real_eip !79
  %712 = load i64* %53, align 4
  store i64 %712, i64* %52, align 4
  %713 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !79
  store i16 %713, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !79
  %714 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !79
  store i64 %714, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !79
  %715 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !79
  store i16 %715, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !79
  %716 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !79
  store i64 %716, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !79
  %717 = load i128* %XMM0_val, !mcsema_real_eip !79
  store i128 %717, i128* %XMM0, align 1, !mcsema_real_eip !79
  %718 = load i128* %XMM1_val, !mcsema_real_eip !79
  store i128 %718, i128* %XMM1, align 1, !mcsema_real_eip !79
  %719 = load i128* %XMM2_val, !mcsema_real_eip !79
  store i128 %719, i128* %XMM2, align 1, !mcsema_real_eip !79
  %720 = load i128* %XMM3_val, !mcsema_real_eip !79
  store i128 %720, i128* %XMM3, align 1, !mcsema_real_eip !79
  %721 = load i128* %XMM4_val, !mcsema_real_eip !79
  store i128 %721, i128* %XMM4, align 1, !mcsema_real_eip !79
  %722 = load i128* %XMM5_val, !mcsema_real_eip !79
  store i128 %722, i128* %XMM5, align 1, !mcsema_real_eip !79
  %723 = load i128* %XMM6_val, !mcsema_real_eip !79
  store i128 %723, i128* %XMM6, align 1, !mcsema_real_eip !79
  %724 = load i128* %XMM7_val, !mcsema_real_eip !79
  store i128 %724, i128* %XMM7, align 1, !mcsema_real_eip !79
  %725 = load i128* %XMM8_val, !mcsema_real_eip !79
  store i128 %725, i128* %XMM8, align 1, !mcsema_real_eip !79
  %726 = load i128* %XMM9_val, !mcsema_real_eip !79
  store i128 %726, i128* %XMM9, align 1, !mcsema_real_eip !79
  %727 = load i128* %XMM10_val, !mcsema_real_eip !79
  store i128 %727, i128* %XMM10, align 1, !mcsema_real_eip !79
  %728 = load i128* %XMM11_val, !mcsema_real_eip !79
  store i128 %728, i128* %XMM11, align 1, !mcsema_real_eip !79
  %729 = load i128* %XMM12_val, !mcsema_real_eip !79
  store i128 %729, i128* %XMM12, align 1, !mcsema_real_eip !79
  %730 = load i128* %XMM13_val, !mcsema_real_eip !79
  store i128 %730, i128* %XMM13, align 1, !mcsema_real_eip !79
  %731 = load i128* %XMM14_val, !mcsema_real_eip !79
  store i128 %731, i128* %XMM14, align 1, !mcsema_real_eip !79
  %732 = load i128* %XMM15_val, !mcsema_real_eip !79
  store i128 %732, i128* %XMM15, align 1, !mcsema_real_eip !79
  %733 = load i64* %STACK_BASE_val, !mcsema_real_eip !79
  store i64 %733, i64* %STACK_BASE, align 1, !mcsema_real_eip !79
  %734 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !79
  store i64 %734, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !79
  ret void, !mcsema_real_eip !79
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
!4 = metadata !{i64 4, [16 x i8] c"\09subq\09$96, %rsp\00"}
!5 = metadata !{i64 8, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!6 = metadata !{i64 15, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!7 = metadata !{i64 18, [22 x i8] c"\09movl\09%eax, -56(%rbp)\00"}
!8 = metadata !{i64 21, [22 x i8] c"\09movq\09-16(%rbp), %rcx\00"}
!9 = metadata !{i64 25, [22 x i8] c"\09movq\09%rcx, -64(%rbp)\00"}
!10 = metadata !{i64 29, [22 x i8] c"\09movq\09-64(%rbp), %rdi\00"}
!11 = metadata !{i64 33, [22 x i8] c"\09movl\09-56(%rbp), %esi\00"}
!12 = metadata !{i64 36, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!13 = metadata !{i64 39, [22 x i8] c"\09movl\09%eax, -72(%rbp)\00"}
!14 = metadata !{i64 42, [22 x i8] c"\09movq\09-32(%rbp), %rcx\00"}
!15 = metadata !{i64 46, [22 x i8] c"\09movq\09%rcx, -80(%rbp)\00"}
!16 = metadata !{i64 50, [22 x i8] c"\09movq\09-80(%rbp), %rdx\00"}
!17 = metadata !{i64 54, [22 x i8] c"\09movl\09-72(%rbp), %ecx\00"}
!18 = metadata !{i64 57, [10 x i8] c"\09callq\0950\00"}
!19 = metadata !{i64 62, [22 x i8] c"\09movl\09%edx, -88(%rbp)\00"}
!20 = metadata !{i64 65, [22 x i8] c"\09movq\09%rax, -96(%rbp)\00"}
!21 = metadata !{i64 69, [22 x i8] c"\09movq\09-96(%rbp), %rax\00"}
!22 = metadata !{i64 73, [22 x i8] c"\09movq\09%rax, -48(%rbp)\00"}
!23 = metadata !{i64 77, [22 x i8] c"\09movl\09-88(%rbp), %ecx\00"}
!24 = metadata !{i64 80, [22 x i8] c"\09movl\09%ecx, -40(%rbp)\00"}
!25 = metadata !{i64 83, [22 x i8] c"\09movl\09-48(%rbp), %ecx\00"}
!26 = metadata !{i64 86, [22 x i8] c"\09addl\09-44(%rbp), %ecx\00"}
!27 = metadata !{i64 89, [22 x i8] c"\09addl\09-40(%rbp), %ecx\00"}
!28 = metadata !{i64 92, [17 x i8] c"\09movl\09%ecx, %eax\00"}
!29 = metadata !{i64 94, [16 x i8] c"\09addq\09$96, %rsp\00"}
!30 = metadata !{i64 98, [11 x i8] c"\09popq\09%rbp\00"}
!31 = metadata !{i64 99, [6 x i8] c"\09retq\00"}
!32 = metadata !{i64 112, [12 x i8] c"\09pushq\09%rbp\00"}
!33 = metadata !{i64 113, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!34 = metadata !{i64 116, [22 x i8] c"\09movq\09%rdi, -48(%rbp)\00"}
!35 = metadata !{i64 120, [22 x i8] c"\09movl\09%esi, -40(%rbp)\00"}
!36 = metadata !{i64 123, [22 x i8] c"\09movq\09-48(%rbp), %rdi\00"}
!37 = metadata !{i64 127, [22 x i8] c"\09movq\09%rdi, -32(%rbp)\00"}
!38 = metadata !{i64 131, [22 x i8] c"\09movl\09-40(%rbp), %esi\00"}
!39 = metadata !{i64 134, [22 x i8] c"\09movl\09%esi, -24(%rbp)\00"}
!40 = metadata !{i64 137, [22 x i8] c"\09movq\09%rdx, -80(%rbp)\00"}
!41 = metadata !{i64 141, [22 x i8] c"\09movl\09%ecx, -72(%rbp)\00"}
!42 = metadata !{i64 144, [22 x i8] c"\09movq\09-80(%rbp), %rdx\00"}
!43 = metadata !{i64 148, [22 x i8] c"\09movq\09%rdx, -64(%rbp)\00"}
!44 = metadata !{i64 152, [22 x i8] c"\09movl\09-72(%rbp), %ecx\00"}
!45 = metadata !{i64 155, [22 x i8] c"\09movl\09%ecx, -56(%rbp)\00"}
!46 = metadata !{i64 158, [22 x i8] c"\09movl\09-64(%rbp), %ecx\00"}
!47 = metadata !{i64 161, [22 x i8] c"\09cmpl\09-32(%rbp), %ecx\00"}
!48 = metadata !{i64 164, [8 x i8] c"\09jle\0922\00"}
!49 = metadata !{i64 192, [22 x i8] c"\09movl\09-32(%rbp), %eax\00"}
!50 = metadata !{i64 195, [22 x i8] c"\09subl\09-64(%rbp), %eax\00"}
!51 = metadata !{i64 198, [22 x i8] c"\09movl\09%eax, -96(%rbp)\00"}
!52 = metadata !{i64 201, [22 x i8] c"\09movl\09-60(%rbp), %eax\00"}
!53 = metadata !{i64 204, [22 x i8] c"\09cmpl\09-28(%rbp), %eax\00"}
!54 = metadata !{i64 207, [8 x i8] c"\09jle\0922\00"}
!55 = metadata !{i64 170, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!56 = metadata !{i64 173, [24 x i8] c"\09addl\09$4294967295, %eax\00"}
!57 = metadata !{i64 178, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
!58 = metadata !{i64 181, [22 x i8] c"\09movl\09-32(%rbp), %eax\00"}
!59 = metadata !{i64 184, [16 x i8] c"\09addl\09$60, %eax\00"}
!60 = metadata !{i64 189, [22 x i8] c"\09movl\09%eax, -32(%rbp)\00"}
!61 = metadata !{i64 235, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!62 = metadata !{i64 238, [22 x i8] c"\09movl\09-60(%rbp), %ecx\00"}
!63 = metadata !{i64 241, [17 x i8] c"\09subl\09%ecx, %eax\00"}
!64 = metadata !{i64 243, [22 x i8] c"\09movl\09%eax, -92(%rbp)\00"}
!65 = metadata !{i64 246, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!66 = metadata !{i64 249, [22 x i8] c"\09movl\09-56(%rbp), %ecx\00"}
!67 = metadata !{i64 252, [17 x i8] c"\09subl\09%ecx, %eax\00"}
!68 = metadata !{i64 254, [22 x i8] c"\09movl\09%eax, -88(%rbp)\00"}
!69 = metadata !{i64 257, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!70 = metadata !{i64 260, [22 x i8] c"\09movq\09-96(%rbp), %rdx\00"}
!71 = metadata !{i64 264, [22 x i8] c"\09movq\09%rdx, -16(%rbp)\00"}
!72 = metadata !{i64 268, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!73 = metadata !{i64 271, [23 x i8] c"\09movl\09%eax, -104(%rbp)\00"}
!74 = metadata !{i64 274, [22 x i8] c"\09movq\09-16(%rbp), %rdx\00"}
!75 = metadata !{i64 278, [23 x i8] c"\09movq\09%rdx, -112(%rbp)\00"}
!76 = metadata !{i64 282, [23 x i8] c"\09movq\09-112(%rbp), %rax\00"}
!77 = metadata !{i64 286, [23 x i8] c"\09movl\09-104(%rbp), %edx\00"}
!78 = metadata !{i64 289, [11 x i8] c"\09popq\09%rbp\00"}
!79 = metadata !{i64 290, [6 x i8] c"\09retq\00"}
!80 = metadata !{i64 213, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!81 = metadata !{i64 216, [24 x i8] c"\09addl\09$4294967295, %eax\00"}
!82 = metadata !{i64 221, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!83 = metadata !{i64 224, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!84 = metadata !{i64 227, [16 x i8] c"\09addl\09$60, %eax\00"}
!85 = metadata !{i64 232, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
