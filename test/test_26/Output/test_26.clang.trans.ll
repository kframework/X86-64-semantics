; ModuleID = 'Output/test_26.clang.trans.bc'
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
  %81 = add i64 %78, -72
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
  %91 = icmp ult i64 %79, 64, !mcsema_real_eip !4
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
  store i64 85899345930, i64* %RAX_val, !mcsema_real_eip !6
  %98 = load i64* %RBP_val, !mcsema_real_eip !7
  %99 = add i64 %98, -16, !mcsema_real_eip !7
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !7
  store i64 85899345930, i64* %100, !mcsema_real_eip !7
  %101 = load i64* %RBP_val, !mcsema_real_eip !8
  %102 = add i64 %101, -8, !mcsema_real_eip !8
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !8
  %104 = bitcast i64* %103 to i32*
  store i32 30, i32* %104, !mcsema_real_eip !8
  %105 = load i64* %RBP_val, !mcsema_real_eip !9
  %106 = add i64 %105, -8, !mcsema_real_eip !9
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !9
  %108 = bitcast i64* %107 to i32*
  %109 = load i32* %108, !mcsema_real_eip !9
  %110 = zext i32 %109 to i64, !mcsema_real_eip !9
  store i64 %110, i64* %RCX_val, !mcsema_real_eip !9
  %111 = load i64* %RSP_val, !mcsema_real_eip !10
  store i64 %111, i64* %RAX_val, !mcsema_real_eip !10
  %112 = add i64 %111, 8, !mcsema_real_eip !11
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !11
  %114 = bitcast i64* %113 to i32*
  store i32 %109, i32* %114, !mcsema_real_eip !11
  %115 = load i64* %RBP_val, !mcsema_real_eip !12
  %116 = add i64 %115, -16, !mcsema_real_eip !12
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !12
  %118 = load i64* %117, !mcsema_real_eip !12
  %119 = load i64* %RAX_val, !mcsema_real_eip !13
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !13
  store i64 %118, i64* %120, !mcsema_real_eip !13
  store i64 1, i64* %RDI_val, !mcsema_real_eip !14
  store i64 2, i64* %RSI_val, !mcsema_real_eip !15
  store i64 3, i64* %RDX_val, !mcsema_real_eip !16
  store i64 4, i64* %RCX_val, !mcsema_real_eip !17
  store i64 5, i64* %R8_val, !mcsema_real_eip !18
  store i64 6, i64* %R9_val, !mcsema_real_eip !19
  %121 = load i64* %RSP_val, !mcsema_real_eip !20
  %122 = add i64 %121, -8
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !20
  store i64 -4981261766360305936, i64* %123, !mcsema_real_eip !20
  store i64 %122, i64* %RSP_val, !mcsema_real_eip !20
  %124 = load i64* %RAX_val, !mcsema_real_eip !20
  store i64 %124, i64* %RAX, !mcsema_real_eip !20
  %125 = load i64* %RBX_val, !mcsema_real_eip !20
  store i64 %125, i64* %RBX, !mcsema_real_eip !20
  %126 = load i64* %RCX_val, !mcsema_real_eip !20
  store i64 %126, i64* %RCX, !mcsema_real_eip !20
  %127 = load i64* %RDX_val, !mcsema_real_eip !20
  store i64 %127, i64* %RDX, !mcsema_real_eip !20
  %128 = load i64* %RSI_val, !mcsema_real_eip !20
  store i64 %128, i64* %RSI, !mcsema_real_eip !20
  %129 = load i64* %RDI_val, !mcsema_real_eip !20
  store i64 %129, i64* %RDI, !mcsema_real_eip !20
  %130 = load i64* %RSP_val, !mcsema_real_eip !20
  store i64 %130, i64* %RSP, !mcsema_real_eip !20
  %131 = load i64* %RBP_val, !mcsema_real_eip !20
  store i64 %131, i64* %RBP, !mcsema_real_eip !20
  %132 = load i64* %R8_val, !mcsema_real_eip !20
  store i64 %132, i64* %R8, !mcsema_real_eip !20
  %133 = load i64* %R9_val, !mcsema_real_eip !20
  store i64 %133, i64* %R9, !mcsema_real_eip !20
  %134 = load i64* %R10_val, !mcsema_real_eip !20
  store i64 %134, i64* %R10, !mcsema_real_eip !20
  %135 = load i64* %R11_val, !mcsema_real_eip !20
  store i64 %135, i64* %R11, !mcsema_real_eip !20
  %136 = load i64* %R12_val, !mcsema_real_eip !20
  store i64 %136, i64* %R12, !mcsema_real_eip !20
  %137 = load i64* %R13_val, !mcsema_real_eip !20
  store i64 %137, i64* %R13, !mcsema_real_eip !20
  %138 = load i64* %R14_val, !mcsema_real_eip !20
  store i64 %138, i64* %R14, !mcsema_real_eip !20
  %139 = load i64* %R15_val, !mcsema_real_eip !20
  store i64 %139, i64* %R15, !mcsema_real_eip !20
  %140 = load i64* %RIP_val, !mcsema_real_eip !20
  store i64 %140, i64* %RIP, !mcsema_real_eip !20
  %141 = load i1* %CF_val, !mcsema_real_eip !20
  store i1 %141, i1* %CF, align 1, !mcsema_real_eip !20
  %142 = load i1* %PF_val, !mcsema_real_eip !20
  store i1 %142, i1* %PF, align 1, !mcsema_real_eip !20
  %143 = load i1* %AF_val, !mcsema_real_eip !20
  store i1 %143, i1* %AF, align 1, !mcsema_real_eip !20
  %144 = load i1* %ZF_val, !mcsema_real_eip !20
  store i1 %144, i1* %ZF, align 1, !mcsema_real_eip !20
  %145 = load i1* %SF_val, !mcsema_real_eip !20
  store i1 %145, i1* %SF, align 1, !mcsema_real_eip !20
  %146 = load i1* %OF_val, !mcsema_real_eip !20
  store i1 %146, i1* %OF, align 1, !mcsema_real_eip !20
  %147 = load i1* %DF_val, !mcsema_real_eip !20
  store i1 %147, i1* %DF, align 1, !mcsema_real_eip !20
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !20
  %148 = load i1* %FPU_B_val, !mcsema_real_eip !20
  store i1 %148, i1* %FPU_B, align 1, !mcsema_real_eip !20
  %149 = load i1* %FPU_C3_val, !mcsema_real_eip !20
  store i1 %149, i1* %FPU_C3, align 1, !mcsema_real_eip !20
  %150 = load i3* %FPU_TOP_val, !mcsema_real_eip !20
  store i3 %150, i3* %FPU_TOP, align 1, !mcsema_real_eip !20
  %151 = load i1* %FPU_C2_val, !mcsema_real_eip !20
  store i1 %151, i1* %FPU_C2, align 1, !mcsema_real_eip !20
  %152 = load i1* %FPU_C1_val, !mcsema_real_eip !20
  store i1 %152, i1* %FPU_C1, align 1, !mcsema_real_eip !20
  %153 = load i1* %FPU_C0_val, !mcsema_real_eip !20
  store i1 %153, i1* %FPU_C0, align 1, !mcsema_real_eip !20
  %154 = load i1* %FPU_ES_val, !mcsema_real_eip !20
  store i1 %154, i1* %FPU_ES, align 1, !mcsema_real_eip !20
  %155 = load i1* %FPU_SF_val, !mcsema_real_eip !20
  store i1 %155, i1* %FPU_SF, align 1, !mcsema_real_eip !20
  %156 = load i1* %FPU_PE_val, !mcsema_real_eip !20
  store i1 %156, i1* %FPU_PE, align 1, !mcsema_real_eip !20
  %157 = load i1* %FPU_UE_val, !mcsema_real_eip !20
  store i1 %157, i1* %FPU_UE, align 1, !mcsema_real_eip !20
  %158 = load i1* %FPU_OE_val, !mcsema_real_eip !20
  store i1 %158, i1* %FPU_OE, align 1, !mcsema_real_eip !20
  %159 = load i1* %FPU_ZE_val, !mcsema_real_eip !20
  store i1 %159, i1* %FPU_ZE, align 1, !mcsema_real_eip !20
  %160 = load i1* %FPU_DE_val, !mcsema_real_eip !20
  store i1 %160, i1* %FPU_DE, align 1, !mcsema_real_eip !20
  %161 = load i1* %FPU_IE_val, !mcsema_real_eip !20
  store i1 %161, i1* %FPU_IE, align 1, !mcsema_real_eip !20
  %162 = load i1* %FPU_X_val, !mcsema_real_eip !20
  store i1 %162, i1* %FPU_X, align 1, !mcsema_real_eip !20
  %163 = load i2* %FPU_RC_val, !mcsema_real_eip !20
  store i2 %163, i2* %FPU_RC, align 1, !mcsema_real_eip !20
  %164 = load i2* %FPU_PC_val, !mcsema_real_eip !20
  store i2 %164, i2* %FPU_PC, align 1, !mcsema_real_eip !20
  %165 = load i1* %FPU_PM_val, !mcsema_real_eip !20
  store i1 %165, i1* %FPU_PM, align 1, !mcsema_real_eip !20
  %166 = load i1* %FPU_UM_val, !mcsema_real_eip !20
  store i1 %166, i1* %FPU_UM, align 1, !mcsema_real_eip !20
  %167 = load i1* %FPU_OM_val, !mcsema_real_eip !20
  store i1 %167, i1* %FPU_OM, align 1, !mcsema_real_eip !20
  %168 = load i1* %FPU_ZM_val, !mcsema_real_eip !20
  store i1 %168, i1* %FPU_ZM, align 1, !mcsema_real_eip !20
  %169 = load i1* %FPU_DM_val, !mcsema_real_eip !20
  store i1 %169, i1* %FPU_DM, align 1, !mcsema_real_eip !20
  %170 = load i1* %FPU_IM_val, !mcsema_real_eip !20
  store i1 %170, i1* %FPU_IM, align 1, !mcsema_real_eip !20
  %171 = load i64* %53, align 4
  store i64 %171, i64* %52, align 4
  %172 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !20
  store i16 %172, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !20
  %173 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !20
  store i64 %173, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !20
  %174 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !20
  store i16 %174, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !20
  %175 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !20
  store i64 %175, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !20
  %176 = load i128* %XMM0_val, !mcsema_real_eip !20
  store i128 %176, i128* %XMM0, align 1, !mcsema_real_eip !20
  %177 = load i128* %XMM1_val, !mcsema_real_eip !20
  store i128 %177, i128* %XMM1, align 1, !mcsema_real_eip !20
  %178 = load i128* %XMM2_val, !mcsema_real_eip !20
  store i128 %178, i128* %XMM2, align 1, !mcsema_real_eip !20
  %179 = load i128* %XMM3_val, !mcsema_real_eip !20
  store i128 %179, i128* %XMM3, align 1, !mcsema_real_eip !20
  %180 = load i128* %XMM4_val, !mcsema_real_eip !20
  store i128 %180, i128* %XMM4, align 1, !mcsema_real_eip !20
  %181 = load i128* %XMM5_val, !mcsema_real_eip !20
  store i128 %181, i128* %XMM5, align 1, !mcsema_real_eip !20
  %182 = load i128* %XMM6_val, !mcsema_real_eip !20
  store i128 %182, i128* %XMM6, align 1, !mcsema_real_eip !20
  %183 = load i128* %XMM7_val, !mcsema_real_eip !20
  store i128 %183, i128* %XMM7, align 1, !mcsema_real_eip !20
  %184 = load i128* %XMM8_val, !mcsema_real_eip !20
  store i128 %184, i128* %XMM8, align 1, !mcsema_real_eip !20
  %185 = load i128* %XMM9_val, !mcsema_real_eip !20
  store i128 %185, i128* %XMM9, align 1, !mcsema_real_eip !20
  %186 = load i128* %XMM10_val, !mcsema_real_eip !20
  store i128 %186, i128* %XMM10, align 1, !mcsema_real_eip !20
  %187 = load i128* %XMM11_val, !mcsema_real_eip !20
  store i128 %187, i128* %XMM11, align 1, !mcsema_real_eip !20
  %188 = load i128* %XMM12_val, !mcsema_real_eip !20
  store i128 %188, i128* %XMM12, align 1, !mcsema_real_eip !20
  %189 = load i128* %XMM13_val, !mcsema_real_eip !20
  store i128 %189, i128* %XMM13, align 1, !mcsema_real_eip !20
  %190 = load i128* %XMM14_val, !mcsema_real_eip !20
  store i128 %190, i128* %XMM14, align 1, !mcsema_real_eip !20
  %191 = load i128* %XMM15_val, !mcsema_real_eip !20
  store i128 %191, i128* %XMM15, align 1, !mcsema_real_eip !20
  %192 = load i64* %STACK_BASE_val, !mcsema_real_eip !20
  store i64 %192, i64* %STACK_BASE, align 1, !mcsema_real_eip !20
  %193 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !20
  store i64 %193, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !20
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !20
  %194 = load i64* %RAX, !mcsema_real_eip !20
  store i64 %194, i64* %RAX_val, !mcsema_real_eip !20
  %195 = load i64* %RBX, !mcsema_real_eip !20
  store i64 %195, i64* %RBX_val, !mcsema_real_eip !20
  %196 = load i64* %RCX, !mcsema_real_eip !20
  store i64 %196, i64* %RCX_val, !mcsema_real_eip !20
  %197 = load i64* %RDX, !mcsema_real_eip !20
  store i64 %197, i64* %RDX_val, !mcsema_real_eip !20
  %198 = load i64* %RSI, !mcsema_real_eip !20
  store i64 %198, i64* %RSI_val, !mcsema_real_eip !20
  %199 = load i64* %RDI, !mcsema_real_eip !20
  store i64 %199, i64* %RDI_val, !mcsema_real_eip !20
  %200 = load i64* %RSP, !mcsema_real_eip !20
  store i64 %200, i64* %RSP_val, !mcsema_real_eip !20
  %201 = load i64* %RBP, !mcsema_real_eip !20
  store i64 %201, i64* %RBP_val, !mcsema_real_eip !20
  %202 = load i64* %R8, !mcsema_real_eip !20
  store i64 %202, i64* %R8_val, !mcsema_real_eip !20
  %203 = load i64* %R9, !mcsema_real_eip !20
  store i64 %203, i64* %R9_val, !mcsema_real_eip !20
  %204 = load i64* %R10, !mcsema_real_eip !20
  store i64 %204, i64* %R10_val, !mcsema_real_eip !20
  %205 = load i64* %R11, !mcsema_real_eip !20
  store i64 %205, i64* %R11_val, !mcsema_real_eip !20
  %206 = load i64* %R12, !mcsema_real_eip !20
  store i64 %206, i64* %R12_val, !mcsema_real_eip !20
  %207 = load i64* %R13, !mcsema_real_eip !20
  store i64 %207, i64* %R13_val, !mcsema_real_eip !20
  %208 = load i64* %R14, !mcsema_real_eip !20
  store i64 %208, i64* %R14_val, !mcsema_real_eip !20
  %209 = load i64* %R15, !mcsema_real_eip !20
  store i64 %209, i64* %R15_val, !mcsema_real_eip !20
  %210 = load i64* %RIP, !mcsema_real_eip !20
  store i64 %210, i64* %RIP_val, !mcsema_real_eip !20
  %211 = load i1* %CF, align 1, !mcsema_real_eip !20
  store i1 %211, i1* %CF_val, !mcsema_real_eip !20
  %212 = load i1* %PF, align 1, !mcsema_real_eip !20
  store i1 %212, i1* %PF_val, !mcsema_real_eip !20
  %213 = load i1* %AF, align 1, !mcsema_real_eip !20
  store i1 %213, i1* %AF_val, !mcsema_real_eip !20
  %214 = load i1* %ZF, align 1, !mcsema_real_eip !20
  store i1 %214, i1* %ZF_val, !mcsema_real_eip !20
  %215 = load i1* %SF, align 1, !mcsema_real_eip !20
  store i1 %215, i1* %SF_val, !mcsema_real_eip !20
  %216 = load i1* %OF, align 1, !mcsema_real_eip !20
  store i1 %216, i1* %OF_val, !mcsema_real_eip !20
  %217 = load i1* %DF, align 1, !mcsema_real_eip !20
  store i1 %217, i1* %DF_val, !mcsema_real_eip !20
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !20
  %218 = load i1* %FPU_B, align 1, !mcsema_real_eip !20
  store i1 %218, i1* %FPU_B_val, !mcsema_real_eip !20
  %219 = load i1* %FPU_C3, align 1, !mcsema_real_eip !20
  store i1 %219, i1* %FPU_C3_val, !mcsema_real_eip !20
  %220 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !20
  store i3 %220, i3* %FPU_TOP_val, !mcsema_real_eip !20
  %221 = load i1* %FPU_C2, align 1, !mcsema_real_eip !20
  store i1 %221, i1* %FPU_C2_val, !mcsema_real_eip !20
  %222 = load i1* %FPU_C1, align 1, !mcsema_real_eip !20
  store i1 %222, i1* %FPU_C1_val, !mcsema_real_eip !20
  %223 = load i1* %FPU_C0, align 1, !mcsema_real_eip !20
  store i1 %223, i1* %FPU_C0_val, !mcsema_real_eip !20
  %224 = load i1* %FPU_ES, align 1, !mcsema_real_eip !20
  store i1 %224, i1* %FPU_ES_val, !mcsema_real_eip !20
  %225 = load i1* %FPU_SF, align 1, !mcsema_real_eip !20
  store i1 %225, i1* %FPU_SF_val, !mcsema_real_eip !20
  %226 = load i1* %FPU_PE, align 1, !mcsema_real_eip !20
  store i1 %226, i1* %FPU_PE_val, !mcsema_real_eip !20
  %227 = load i1* %FPU_UE, align 1, !mcsema_real_eip !20
  store i1 %227, i1* %FPU_UE_val, !mcsema_real_eip !20
  %228 = load i1* %FPU_OE, align 1, !mcsema_real_eip !20
  store i1 %228, i1* %FPU_OE_val, !mcsema_real_eip !20
  %229 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !20
  store i1 %229, i1* %FPU_ZE_val, !mcsema_real_eip !20
  %230 = load i1* %FPU_DE, align 1, !mcsema_real_eip !20
  store i1 %230, i1* %FPU_DE_val, !mcsema_real_eip !20
  %231 = load i1* %FPU_IE, align 1, !mcsema_real_eip !20
  store i1 %231, i1* %FPU_IE_val, !mcsema_real_eip !20
  %232 = load i1* %FPU_X, align 1, !mcsema_real_eip !20
  store i1 %232, i1* %FPU_X_val, !mcsema_real_eip !20
  %233 = load i2* %FPU_RC, align 1, !mcsema_real_eip !20
  store i2 %233, i2* %FPU_RC_val, !mcsema_real_eip !20
  %234 = load i2* %FPU_PC, align 1, !mcsema_real_eip !20
  store i2 %234, i2* %FPU_PC_val, !mcsema_real_eip !20
  %235 = load i1* %FPU_PM, align 1, !mcsema_real_eip !20
  store i1 %235, i1* %FPU_PM_val, !mcsema_real_eip !20
  %236 = load i1* %FPU_UM, align 1, !mcsema_real_eip !20
  store i1 %236, i1* %FPU_UM_val, !mcsema_real_eip !20
  %237 = load i1* %FPU_OM, align 1, !mcsema_real_eip !20
  store i1 %237, i1* %FPU_OM_val, !mcsema_real_eip !20
  %238 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !20
  store i1 %238, i1* %FPU_ZM_val, !mcsema_real_eip !20
  %239 = load i1* %FPU_DM, align 1, !mcsema_real_eip !20
  store i1 %239, i1* %FPU_DM_val, !mcsema_real_eip !20
  %240 = load i1* %FPU_IM, align 1, !mcsema_real_eip !20
  store i1 %240, i1* %FPU_IM_val, !mcsema_real_eip !20
  %241 = load i64* %52, align 4
  store i64 %241, i64* %53, align 4
  %242 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !20
  store i16 %242, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !20
  %243 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !20
  store i64 %243, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !20
  %244 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !20
  store i16 %244, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !20
  %245 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !20
  store i64 %245, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !20
  %246 = load i128* %XMM0, align 1, !mcsema_real_eip !20
  store i128 %246, i128* %XMM0_val, !mcsema_real_eip !20
  %247 = load i128* %XMM1, align 1, !mcsema_real_eip !20
  store i128 %247, i128* %XMM1_val, !mcsema_real_eip !20
  %248 = load i128* %XMM2, align 1, !mcsema_real_eip !20
  store i128 %248, i128* %XMM2_val, !mcsema_real_eip !20
  %249 = load i128* %XMM3, align 1, !mcsema_real_eip !20
  store i128 %249, i128* %XMM3_val, !mcsema_real_eip !20
  %250 = load i128* %XMM4, align 1, !mcsema_real_eip !20
  store i128 %250, i128* %XMM4_val, !mcsema_real_eip !20
  %251 = load i128* %XMM5, align 1, !mcsema_real_eip !20
  store i128 %251, i128* %XMM5_val, !mcsema_real_eip !20
  %252 = load i128* %XMM6, align 1, !mcsema_real_eip !20
  store i128 %252, i128* %XMM6_val, !mcsema_real_eip !20
  %253 = load i128* %XMM7, align 1, !mcsema_real_eip !20
  store i128 %253, i128* %XMM7_val, !mcsema_real_eip !20
  %254 = load i128* %XMM8, align 1, !mcsema_real_eip !20
  store i128 %254, i128* %XMM8_val, !mcsema_real_eip !20
  %255 = load i128* %XMM9, align 1, !mcsema_real_eip !20
  store i128 %255, i128* %XMM9_val, !mcsema_real_eip !20
  %256 = load i128* %XMM10, align 1, !mcsema_real_eip !20
  store i128 %256, i128* %XMM10_val, !mcsema_real_eip !20
  %257 = load i128* %XMM11, align 1, !mcsema_real_eip !20
  store i128 %257, i128* %XMM11_val, !mcsema_real_eip !20
  %258 = load i128* %XMM12, align 1, !mcsema_real_eip !20
  store i128 %258, i128* %XMM12_val, !mcsema_real_eip !20
  %259 = load i128* %XMM13, align 1, !mcsema_real_eip !20
  store i128 %259, i128* %XMM13_val, !mcsema_real_eip !20
  %260 = load i128* %XMM14, align 1, !mcsema_real_eip !20
  store i128 %260, i128* %XMM14_val, !mcsema_real_eip !20
  %261 = load i128* %XMM15, align 1, !mcsema_real_eip !20
  store i128 %261, i128* %XMM15_val, !mcsema_real_eip !20
  %262 = load i64* %STACK_BASE, !mcsema_real_eip !20
  store i64 %262, i64* %STACK_BASE_val, !mcsema_real_eip !20
  %263 = load i64* %STACK_LIMIT, !mcsema_real_eip !20
  store i64 %263, i64* %STACK_LIMIT_val, !mcsema_real_eip !20
  %264 = load i64* %RBP_val, !mcsema_real_eip !21
  %265 = add i64 %264, -40, !mcsema_real_eip !21
  %266 = inttoptr i64 %265 to i64*, !mcsema_real_eip !21
  %267 = load i64* %RDX_val, !mcsema_real_eip !21
  %268 = trunc i64 %267 to i32, !mcsema_real_eip !21
  %269 = bitcast i64* %266 to i32*
  store i32 %268, i32* %269, !mcsema_real_eip !21
  %270 = load i64* %RBP_val, !mcsema_real_eip !22
  %271 = add i64 %270, -48, !mcsema_real_eip !22
  %272 = inttoptr i64 %271 to i64*, !mcsema_real_eip !22
  %273 = load i64* %RAX_val, !mcsema_real_eip !22
  store i64 %273, i64* %272, !mcsema_real_eip !22
  %274 = load i64* %RBP_val, !mcsema_real_eip !23
  %275 = add i64 %274, -48, !mcsema_real_eip !23
  %276 = inttoptr i64 %275 to i64*, !mcsema_real_eip !23
  %277 = load i64* %276, !mcsema_real_eip !23
  store i64 %277, i64* %RAX_val, !mcsema_real_eip !23
  %278 = add i64 %274, -32, !mcsema_real_eip !24
  %279 = inttoptr i64 %278 to i64*, !mcsema_real_eip !24
  store i64 %277, i64* %279, !mcsema_real_eip !24
  %280 = load i64* %RBP_val, !mcsema_real_eip !25
  %281 = add i64 %280, -40, !mcsema_real_eip !25
  %282 = inttoptr i64 %281 to i64*, !mcsema_real_eip !25
  %283 = bitcast i64* %282 to i32*
  %284 = load i32* %283, !mcsema_real_eip !25
  %285 = zext i32 %284 to i64, !mcsema_real_eip !25
  store i64 %285, i64* %RCX_val, !mcsema_real_eip !25
  %286 = load i64* %RBP_val, !mcsema_real_eip !26
  %287 = add i64 %286, -24, !mcsema_real_eip !26
  %288 = inttoptr i64 %287 to i64*, !mcsema_real_eip !26
  %289 = bitcast i64* %288 to i32*
  store i32 %284, i32* %289, !mcsema_real_eip !26
  %290 = load i64* %RBP_val, !mcsema_real_eip !27
  %291 = add i64 %290, -32, !mcsema_real_eip !27
  %292 = inttoptr i64 %291 to i64*, !mcsema_real_eip !27
  %293 = bitcast i64* %292 to i32*
  %294 = load i32* %293, !mcsema_real_eip !27
  %295 = zext i32 %294 to i64, !mcsema_real_eip !27
  store i64 %295, i64* %RCX_val, !mcsema_real_eip !27
  %296 = load i64* %RBP_val, !mcsema_real_eip !28
  %297 = add i64 %296, -28, !mcsema_real_eip !28
  %298 = inttoptr i64 %297 to i64*, !mcsema_real_eip !28
  %299 = bitcast i64* %298 to i32*
  %300 = load i32* %299, !mcsema_real_eip !28
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %294, i32 %300)
  %301 = extractvalue { i32, i1 } %uadd, 0
  %302 = xor i32 %301, %300, !mcsema_real_eip !28
  %303 = xor i32 %302, %294, !mcsema_real_eip !28
  %304 = and i32 %303, 16, !mcsema_real_eip !28
  %305 = icmp ne i32 %304, 0, !mcsema_real_eip !28
  store i1 %305, i1* %AF_val, !mcsema_real_eip !28
  %306 = icmp slt i32 %301, 0
  store i1 %306, i1* %SF_val, !mcsema_real_eip !28
  %307 = icmp eq i32 %301, 0, !mcsema_real_eip !28
  store i1 %307, i1* %ZF_val, !mcsema_real_eip !28
  %308 = xor i32 %294, -2147483648, !mcsema_real_eip !28
  %309 = xor i32 %308, %300, !mcsema_real_eip !28
  %310 = and i32 %302, %309, !mcsema_real_eip !28
  %311 = icmp slt i32 %310, 0
  store i1 %311, i1* %OF_val, !mcsema_real_eip !28
  %312 = trunc i32 %301 to i8, !mcsema_real_eip !28
  %313 = tail call i8 @llvm.ctpop.i8(i8 %312), !mcsema_real_eip !28
  %314 = and i8 %313, 1
  %315 = icmp eq i8 %314, 0
  store i1 %315, i1* %PF_val, !mcsema_real_eip !28
  %316 = extractvalue { i32, i1 } %uadd, 1
  store i1 %316, i1* %CF_val, !mcsema_real_eip !28
  %317 = zext i32 %301 to i64, !mcsema_real_eip !28
  store i64 %317, i64* %RCX_val, !mcsema_real_eip !28
  %318 = load i64* %RBP_val, !mcsema_real_eip !29
  %319 = add i64 %318, -24, !mcsema_real_eip !29
  %320 = inttoptr i64 %319 to i64*, !mcsema_real_eip !29
  %321 = bitcast i64* %320 to i32*
  %322 = load i32* %321, !mcsema_real_eip !29
  %323 = add i32 %301, %322
  %324 = zext i32 %323 to i64, !mcsema_real_eip !29
  store i64 %324, i64* %RCX_val, !mcsema_real_eip !29
  store i64 %324, i64* %RAX_val, !mcsema_real_eip !30
  %325 = load i64* %RSP_val, !mcsema_real_eip !31
  %uadd210 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %325, i64 64)
  %326 = extractvalue { i64, i1 } %uadd210, 0
  %327 = xor i64 %326, %325, !mcsema_real_eip !31
  %328 = and i64 %327, 16, !mcsema_real_eip !31
  %329 = icmp ne i64 %328, 0, !mcsema_real_eip !31
  store i1 %329, i1* %AF_val, !mcsema_real_eip !31
  %330 = icmp slt i64 %326, 0
  store i1 %330, i1* %SF_val, !mcsema_real_eip !31
  %331 = icmp eq i64 %326, 0, !mcsema_real_eip !31
  store i1 %331, i1* %ZF_val, !mcsema_real_eip !31
  %332 = xor i64 %325, -9223372036854775808, !mcsema_real_eip !31
  %333 = and i64 %327, %332, !mcsema_real_eip !31
  %334 = icmp slt i64 %333, 0
  store i1 %334, i1* %OF_val, !mcsema_real_eip !31
  %335 = trunc i64 %326 to i8, !mcsema_real_eip !31
  %336 = tail call i8 @llvm.ctpop.i8(i8 %335), !mcsema_real_eip !31
  %337 = and i8 %336, 1
  %338 = icmp eq i8 %337, 0
  store i1 %338, i1* %PF_val, !mcsema_real_eip !31
  %339 = extractvalue { i64, i1 } %uadd210, 1
  store i1 %339, i1* %CF_val, !mcsema_real_eip !31
  store i64 %326, i64* %RSP_val, !mcsema_real_eip !31
  %340 = inttoptr i64 %326 to i64*, !mcsema_real_eip !32
  %341 = load i64* %340, !mcsema_real_eip !32
  store i64 %341, i64* %RBP_val, !mcsema_real_eip !32
  %342 = add i64 %326, 16, !mcsema_real_eip !33
  store i64 %342, i64* %RSP_val, !mcsema_real_eip !33
  %343 = load i64* %RAX_val, !mcsema_real_eip !33
  store i64 %343, i64* %RAX, !mcsema_real_eip !33
  %344 = load i64* %RBX_val, !mcsema_real_eip !33
  store i64 %344, i64* %RBX, !mcsema_real_eip !33
  %345 = load i64* %RCX_val, !mcsema_real_eip !33
  store i64 %345, i64* %RCX, !mcsema_real_eip !33
  %346 = load i64* %RDX_val, !mcsema_real_eip !33
  store i64 %346, i64* %RDX, !mcsema_real_eip !33
  %347 = load i64* %RSI_val, !mcsema_real_eip !33
  store i64 %347, i64* %RSI, !mcsema_real_eip !33
  %348 = load i64* %RDI_val, !mcsema_real_eip !33
  store i64 %348, i64* %RDI, !mcsema_real_eip !33
  %349 = load i64* %RSP_val, !mcsema_real_eip !33
  store i64 %349, i64* %RSP, !mcsema_real_eip !33
  %350 = load i64* %RBP_val, !mcsema_real_eip !33
  store i64 %350, i64* %RBP, !mcsema_real_eip !33
  %351 = load i64* %R8_val, !mcsema_real_eip !33
  store i64 %351, i64* %R8, !mcsema_real_eip !33
  %352 = load i64* %R9_val, !mcsema_real_eip !33
  store i64 %352, i64* %R9, !mcsema_real_eip !33
  %353 = load i64* %R10_val, !mcsema_real_eip !33
  store i64 %353, i64* %R10, !mcsema_real_eip !33
  %354 = load i64* %R11_val, !mcsema_real_eip !33
  store i64 %354, i64* %R11, !mcsema_real_eip !33
  %355 = load i64* %R12_val, !mcsema_real_eip !33
  store i64 %355, i64* %R12, !mcsema_real_eip !33
  %356 = load i64* %R13_val, !mcsema_real_eip !33
  store i64 %356, i64* %R13, !mcsema_real_eip !33
  %357 = load i64* %R14_val, !mcsema_real_eip !33
  store i64 %357, i64* %R14, !mcsema_real_eip !33
  %358 = load i64* %R15_val, !mcsema_real_eip !33
  store i64 %358, i64* %R15, !mcsema_real_eip !33
  %359 = load i64* %RIP_val, !mcsema_real_eip !33
  store i64 %359, i64* %RIP, !mcsema_real_eip !33
  %360 = load i1* %CF_val, !mcsema_real_eip !33
  store i1 %360, i1* %CF, align 1, !mcsema_real_eip !33
  %361 = load i1* %PF_val, !mcsema_real_eip !33
  store i1 %361, i1* %PF, align 1, !mcsema_real_eip !33
  %362 = load i1* %AF_val, !mcsema_real_eip !33
  store i1 %362, i1* %AF, align 1, !mcsema_real_eip !33
  %363 = load i1* %ZF_val, !mcsema_real_eip !33
  store i1 %363, i1* %ZF, align 1, !mcsema_real_eip !33
  %364 = load i1* %SF_val, !mcsema_real_eip !33
  store i1 %364, i1* %SF, align 1, !mcsema_real_eip !33
  %365 = load i1* %OF_val, !mcsema_real_eip !33
  store i1 %365, i1* %OF, align 1, !mcsema_real_eip !33
  %366 = load i1* %DF_val, !mcsema_real_eip !33
  store i1 %366, i1* %DF, align 1, !mcsema_real_eip !33
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !33
  %367 = load i1* %FPU_B_val, !mcsema_real_eip !33
  store i1 %367, i1* %FPU_B, align 1, !mcsema_real_eip !33
  %368 = load i1* %FPU_C3_val, !mcsema_real_eip !33
  store i1 %368, i1* %FPU_C3, align 1, !mcsema_real_eip !33
  %369 = load i3* %FPU_TOP_val, !mcsema_real_eip !33
  store i3 %369, i3* %FPU_TOP, align 1, !mcsema_real_eip !33
  %370 = load i1* %FPU_C2_val, !mcsema_real_eip !33
  store i1 %370, i1* %FPU_C2, align 1, !mcsema_real_eip !33
  %371 = load i1* %FPU_C1_val, !mcsema_real_eip !33
  store i1 %371, i1* %FPU_C1, align 1, !mcsema_real_eip !33
  %372 = load i1* %FPU_C0_val, !mcsema_real_eip !33
  store i1 %372, i1* %FPU_C0, align 1, !mcsema_real_eip !33
  %373 = load i1* %FPU_ES_val, !mcsema_real_eip !33
  store i1 %373, i1* %FPU_ES, align 1, !mcsema_real_eip !33
  %374 = load i1* %FPU_SF_val, !mcsema_real_eip !33
  store i1 %374, i1* %FPU_SF, align 1, !mcsema_real_eip !33
  %375 = load i1* %FPU_PE_val, !mcsema_real_eip !33
  store i1 %375, i1* %FPU_PE, align 1, !mcsema_real_eip !33
  %376 = load i1* %FPU_UE_val, !mcsema_real_eip !33
  store i1 %376, i1* %FPU_UE, align 1, !mcsema_real_eip !33
  %377 = load i1* %FPU_OE_val, !mcsema_real_eip !33
  store i1 %377, i1* %FPU_OE, align 1, !mcsema_real_eip !33
  %378 = load i1* %FPU_ZE_val, !mcsema_real_eip !33
  store i1 %378, i1* %FPU_ZE, align 1, !mcsema_real_eip !33
  %379 = load i1* %FPU_DE_val, !mcsema_real_eip !33
  store i1 %379, i1* %FPU_DE, align 1, !mcsema_real_eip !33
  %380 = load i1* %FPU_IE_val, !mcsema_real_eip !33
  store i1 %380, i1* %FPU_IE, align 1, !mcsema_real_eip !33
  %381 = load i1* %FPU_X_val, !mcsema_real_eip !33
  store i1 %381, i1* %FPU_X, align 1, !mcsema_real_eip !33
  %382 = load i2* %FPU_RC_val, !mcsema_real_eip !33
  store i2 %382, i2* %FPU_RC, align 1, !mcsema_real_eip !33
  %383 = load i2* %FPU_PC_val, !mcsema_real_eip !33
  store i2 %383, i2* %FPU_PC, align 1, !mcsema_real_eip !33
  %384 = load i1* %FPU_PM_val, !mcsema_real_eip !33
  store i1 %384, i1* %FPU_PM, align 1, !mcsema_real_eip !33
  %385 = load i1* %FPU_UM_val, !mcsema_real_eip !33
  store i1 %385, i1* %FPU_UM, align 1, !mcsema_real_eip !33
  %386 = load i1* %FPU_OM_val, !mcsema_real_eip !33
  store i1 %386, i1* %FPU_OM, align 1, !mcsema_real_eip !33
  %387 = load i1* %FPU_ZM_val, !mcsema_real_eip !33
  store i1 %387, i1* %FPU_ZM, align 1, !mcsema_real_eip !33
  %388 = load i1* %FPU_DM_val, !mcsema_real_eip !33
  store i1 %388, i1* %FPU_DM, align 1, !mcsema_real_eip !33
  %389 = load i1* %FPU_IM_val, !mcsema_real_eip !33
  store i1 %389, i1* %FPU_IM, align 1, !mcsema_real_eip !33
  %390 = load i64* %53, align 4
  store i64 %390, i64* %52, align 4
  %391 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !33
  store i16 %391, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !33
  %392 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !33
  store i64 %392, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !33
  %393 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !33
  store i16 %393, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !33
  %394 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !33
  store i64 %394, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !33
  %395 = load i128* %XMM0_val, !mcsema_real_eip !33
  store i128 %395, i128* %XMM0, align 1, !mcsema_real_eip !33
  %396 = load i128* %XMM1_val, !mcsema_real_eip !33
  store i128 %396, i128* %XMM1, align 1, !mcsema_real_eip !33
  %397 = load i128* %XMM2_val, !mcsema_real_eip !33
  store i128 %397, i128* %XMM2, align 1, !mcsema_real_eip !33
  %398 = load i128* %XMM3_val, !mcsema_real_eip !33
  store i128 %398, i128* %XMM3, align 1, !mcsema_real_eip !33
  %399 = load i128* %XMM4_val, !mcsema_real_eip !33
  store i128 %399, i128* %XMM4, align 1, !mcsema_real_eip !33
  %400 = load i128* %XMM5_val, !mcsema_real_eip !33
  store i128 %400, i128* %XMM5, align 1, !mcsema_real_eip !33
  %401 = load i128* %XMM6_val, !mcsema_real_eip !33
  store i128 %401, i128* %XMM6, align 1, !mcsema_real_eip !33
  %402 = load i128* %XMM7_val, !mcsema_real_eip !33
  store i128 %402, i128* %XMM7, align 1, !mcsema_real_eip !33
  %403 = load i128* %XMM8_val, !mcsema_real_eip !33
  store i128 %403, i128* %XMM8, align 1, !mcsema_real_eip !33
  %404 = load i128* %XMM9_val, !mcsema_real_eip !33
  store i128 %404, i128* %XMM9, align 1, !mcsema_real_eip !33
  %405 = load i128* %XMM10_val, !mcsema_real_eip !33
  store i128 %405, i128* %XMM10, align 1, !mcsema_real_eip !33
  %406 = load i128* %XMM11_val, !mcsema_real_eip !33
  store i128 %406, i128* %XMM11, align 1, !mcsema_real_eip !33
  %407 = load i128* %XMM12_val, !mcsema_real_eip !33
  store i128 %407, i128* %XMM12, align 1, !mcsema_real_eip !33
  %408 = load i128* %XMM13_val, !mcsema_real_eip !33
  store i128 %408, i128* %XMM13, align 1, !mcsema_real_eip !33
  %409 = load i128* %XMM14_val, !mcsema_real_eip !33
  store i128 %409, i128* %XMM14, align 1, !mcsema_real_eip !33
  %410 = load i128* %XMM15_val, !mcsema_real_eip !33
  store i128 %410, i128* %XMM15, align 1, !mcsema_real_eip !33
  %411 = load i64* %STACK_BASE_val, !mcsema_real_eip !33
  store i64 %411, i64* %STACK_BASE, align 1, !mcsema_real_eip !33
  %412 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !33
  store i64 %412, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !33
  ret void, !mcsema_real_eip !33
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !34
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !34
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !34
  %XMM15_val = alloca i128, !mcsema_real_eip !34
  %XMM14_val = alloca i128, !mcsema_real_eip !34
  %XMM13_val = alloca i128, !mcsema_real_eip !34
  %XMM12_val = alloca i128, !mcsema_real_eip !34
  %XMM11_val = alloca i128, !mcsema_real_eip !34
  %XMM10_val = alloca i128, !mcsema_real_eip !34
  %XMM9_val = alloca i128, !mcsema_real_eip !34
  %XMM8_val = alloca i128, !mcsema_real_eip !34
  %XMM7_val = alloca i128, !mcsema_real_eip !34
  %XMM6_val = alloca i128, !mcsema_real_eip !34
  %XMM5_val = alloca i128, !mcsema_real_eip !34
  %XMM4_val = alloca i128, !mcsema_real_eip !34
  %XMM3_val = alloca i128, !mcsema_real_eip !34
  %XMM2_val = alloca i128, !mcsema_real_eip !34
  %XMM1_val = alloca i128, !mcsema_real_eip !34
  %XMM0_val = alloca i128, !mcsema_real_eip !34
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !34
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !34
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !34
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !34
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !34
  %FPU_IM_val = alloca i1, !mcsema_real_eip !34
  %FPU_DM_val = alloca i1, !mcsema_real_eip !34
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !34
  %FPU_OM_val = alloca i1, !mcsema_real_eip !34
  %FPU_UM_val = alloca i1, !mcsema_real_eip !34
  %FPU_PM_val = alloca i1, !mcsema_real_eip !34
  %FPU_PC_val = alloca i2, !mcsema_real_eip !34
  %FPU_RC_val = alloca i2, !mcsema_real_eip !34
  %FPU_X_val = alloca i1, !mcsema_real_eip !34
  %FPU_IE_val = alloca i1, !mcsema_real_eip !34
  %FPU_DE_val = alloca i1, !mcsema_real_eip !34
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !34
  %FPU_OE_val = alloca i1, !mcsema_real_eip !34
  %FPU_UE_val = alloca i1, !mcsema_real_eip !34
  %FPU_PE_val = alloca i1, !mcsema_real_eip !34
  %FPU_SF_val = alloca i1, !mcsema_real_eip !34
  %FPU_ES_val = alloca i1, !mcsema_real_eip !34
  %FPU_C0_val = alloca i1, !mcsema_real_eip !34
  %FPU_C1_val = alloca i1, !mcsema_real_eip !34
  %FPU_C2_val = alloca i1, !mcsema_real_eip !34
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !34
  %FPU_C3_val = alloca i1, !mcsema_real_eip !34
  %FPU_B_val = alloca i1, !mcsema_real_eip !34
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !34
  %DF_val = alloca i1, !mcsema_real_eip !34
  %OF_val = alloca i1, !mcsema_real_eip !34
  %SF_val = alloca i1, !mcsema_real_eip !34
  %CF_val = alloca i1, !mcsema_real_eip !34
  %AF_val = alloca i1, !mcsema_real_eip !34
  %PF_val = alloca i1, !mcsema_real_eip !34
  %ZF_val = alloca i1, !mcsema_real_eip !34
  %RIP_val = alloca i64, !mcsema_real_eip !34
  %R14_val = alloca i64, !mcsema_real_eip !34
  %R13_val = alloca i64, !mcsema_real_eip !34
  %R12_val = alloca i64, !mcsema_real_eip !34
  %R11_val = alloca i64, !mcsema_real_eip !34
  %R10_val = alloca i64, !mcsema_real_eip !34
  %R9_val = alloca i64, !mcsema_real_eip !34
  %R8_val = alloca i64, !mcsema_real_eip !34
  %RSP_val = alloca i64, !mcsema_real_eip !34
  %RBP_val = alloca i64, !mcsema_real_eip !34
  %RDI_val = alloca i64, !mcsema_real_eip !34
  %RSI_val = alloca i64, !mcsema_real_eip !34
  %RDX_val = alloca i64, !mcsema_real_eip !34
  %RCX_val = alloca i64, !mcsema_real_eip !34
  %RBX_val = alloca i64, !mcsema_real_eip !34
  %RAX_val = alloca i64, !mcsema_real_eip !34
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !34
  %1 = load i64* %RAX, !mcsema_real_eip !34
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !34
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !34
  %2 = load i64* %RBX, !mcsema_real_eip !34
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !34
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !34
  %3 = load i64* %RCX, !mcsema_real_eip !34
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !34
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !34
  %4 = load i64* %RDX, !mcsema_real_eip !34
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !34
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !34
  %5 = load i64* %RSI, !mcsema_real_eip !34
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !34
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !34
  %6 = load i64* %RDI, !mcsema_real_eip !34
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !34
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !34
  %7 = load i64* %RSP, !mcsema_real_eip !34
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !34
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !34
  %8 = load i64* %RBP, !mcsema_real_eip !34
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !34
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !34
  %9 = load i64* %R8, !mcsema_real_eip !34
  store i64 %9, i64* %R8_val, !mcsema_real_eip !34
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !34
  %10 = load i64* %R9, !mcsema_real_eip !34
  store i64 %10, i64* %R9_val, !mcsema_real_eip !34
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !34
  %11 = load i64* %R10, !mcsema_real_eip !34
  store i64 %11, i64* %R10_val, !mcsema_real_eip !34
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !34
  %12 = load i64* %R11, !mcsema_real_eip !34
  store i64 %12, i64* %R11_val, !mcsema_real_eip !34
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !34
  %13 = load i64* %R12, !mcsema_real_eip !34
  store i64 %13, i64* %R12_val, !mcsema_real_eip !34
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !34
  %14 = load i64* %R13, !mcsema_real_eip !34
  store i64 %14, i64* %R13_val, !mcsema_real_eip !34
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !34
  %15 = load i64* %R14, !mcsema_real_eip !34
  store i64 %15, i64* %R14_val, !mcsema_real_eip !34
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !34
  %16 = load i64* %R15, !mcsema_real_eip !34
  store i64 %16, i64* %R15_val, !mcsema_real_eip !34
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !34
  %17 = load i64* %RIP, !mcsema_real_eip !34
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !34
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !34
  %18 = load i1* %CF, align 1, !mcsema_real_eip !34
  store i1 %18, i1* %CF_val, !mcsema_real_eip !34
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !34
  %19 = load i1* %PF, align 1, !mcsema_real_eip !34
  store i1 %19, i1* %PF_val, !mcsema_real_eip !34
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !34
  %20 = load i1* %AF, align 1, !mcsema_real_eip !34
  store i1 %20, i1* %AF_val, !mcsema_real_eip !34
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !34
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !34
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !34
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !34
  %22 = load i1* %SF, align 1, !mcsema_real_eip !34
  store i1 %22, i1* %SF_val, !mcsema_real_eip !34
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !34
  %23 = load i1* %OF, align 1, !mcsema_real_eip !34
  store i1 %23, i1* %OF_val, !mcsema_real_eip !34
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !34
  %24 = load i1* %DF, align 1, !mcsema_real_eip !34
  store i1 %24, i1* %DF_val, !mcsema_real_eip !34
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !34
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !34
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !34
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !34
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !34
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !34
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !34
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !34
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !34
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !34
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !34
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !34
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !34
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !34
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !34
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !34
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !34
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !34
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !34
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !34
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !34
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !34
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !34
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !34
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !34
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !34
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !34
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !34
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !34
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !34
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !34
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !34
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !34
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !34
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !34
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !34
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !34
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !34
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !34
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !34
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !34
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !34
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !34
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !34
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !34
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !34
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !34
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !34
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !34
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !34
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !34
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !34
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !34
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !34
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !34
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !34
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !34
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !34
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !34
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !34
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !34
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !34
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !34
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !34
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !34
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !34
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !34
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !34
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !34
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !34
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !34
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !34
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !34
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !34
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !34
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !34
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !34
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !34
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !34
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !34
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !34
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !34
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !34
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !34
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !34
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !34
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !34
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !34
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !34
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !34
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !34
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !34
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !34
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !34
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !34
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !34
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !34
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !34
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !34
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !34
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !34
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !34
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !34
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !34
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !34
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !34
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !34
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !34
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !34
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !34
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !34
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !34
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !34
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !34
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !34
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !34
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !34
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !34
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !34
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !34
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !34
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !34
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !34
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !34
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !34
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !34
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !34
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !34
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !34
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !34
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !34
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !34
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !34
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !34
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !34
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !34
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !34
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !34
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !34
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !34
  %77 = load i64* %RBP_val, !mcsema_real_eip !34
  %78 = load i64* %RSP_val, !mcsema_real_eip !34
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !34
  store i64 %77, i64* %80, !mcsema_real_eip !34
  store i64 %79, i64* %RSP_val, !mcsema_real_eip !34
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !35
  %81 = add i64 %78, 8, !mcsema_real_eip !36
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !36
  %83 = ptrtoint i64* %82 to i64, !mcsema_real_eip !36
  store i64 %83, i64* %RAX_val, !mcsema_real_eip !36
  %84 = add i64 %78, -28, !mcsema_real_eip !37
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !37
  %86 = load i64* %RDI_val, !mcsema_real_eip !37
  %87 = trunc i64 %86 to i32, !mcsema_real_eip !37
  %88 = bitcast i64* %85 to i32*
  store i32 %87, i32* %88, !mcsema_real_eip !37
  %89 = load i64* %RBP_val, !mcsema_real_eip !38
  %90 = add i64 %89, -24, !mcsema_real_eip !38
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !38
  %92 = load i64* %RSI_val, !mcsema_real_eip !38
  %93 = trunc i64 %92 to i32, !mcsema_real_eip !38
  %94 = bitcast i64* %91 to i32*
  store i32 %93, i32* %94, !mcsema_real_eip !38
  %95 = load i64* %RBP_val, !mcsema_real_eip !39
  %96 = add i64 %95, -28, !mcsema_real_eip !39
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !39
  %98 = load i64* %RDX_val, !mcsema_real_eip !39
  %99 = trunc i64 %98 to i32, !mcsema_real_eip !39
  %100 = bitcast i64* %97 to i32*
  store i32 %99, i32* %100, !mcsema_real_eip !39
  %101 = load i64* %RBP_val, !mcsema_real_eip !40
  %102 = add i64 %101, -32, !mcsema_real_eip !40
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !40
  %104 = load i64* %RCX_val, !mcsema_real_eip !40
  %105 = trunc i64 %104 to i32, !mcsema_real_eip !40
  %106 = bitcast i64* %103 to i32*
  store i32 %105, i32* %106, !mcsema_real_eip !40
  %107 = load i64* %RBP_val, !mcsema_real_eip !41
  %108 = add i64 %107, -36, !mcsema_real_eip !41
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !41
  %110 = load i64* %R8_val, !mcsema_real_eip !41
  %111 = trunc i64 %110 to i32, !mcsema_real_eip !41
  %112 = bitcast i64* %109 to i32*
  store i32 %111, i32* %112, !mcsema_real_eip !41
  %113 = load i64* %RBP_val, !mcsema_real_eip !42
  %114 = add i64 %113, -40, !mcsema_real_eip !42
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !42
  %116 = load i64* %R9_val, !mcsema_real_eip !42
  %117 = trunc i64 %116 to i32, !mcsema_real_eip !42
  %118 = bitcast i64* %115 to i32*
  store i32 %117, i32* %118, !mcsema_real_eip !42
  %119 = load i64* %RAX_val, !mcsema_real_eip !43
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !43
  %121 = bitcast i64* %120 to i32*
  %122 = load i32* %121, !mcsema_real_eip !43
  %123 = zext i32 %122 to i64, !mcsema_real_eip !43
  store i64 %123, i64* %RCX_val, !mcsema_real_eip !43
  %124 = load i64* %RBP_val, !mcsema_real_eip !44
  %125 = add i64 %124, -20, !mcsema_real_eip !44
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !44
  %127 = bitcast i64* %126 to i32*
  %128 = load i32* %127, !mcsema_real_eip !44
  %129 = zext i32 %128 to i64, !mcsema_real_eip !44
  store i64 %129, i64* %RDX_val, !mcsema_real_eip !44
  %130 = load i64* %RCX_val, !mcsema_real_eip !45
  %131 = trunc i64 %130 to i32, !mcsema_real_eip !45
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %128, i32 %131)
  %132 = extractvalue { i32, i1 } %uadd, 0
  %133 = xor i32 %132, %131, !mcsema_real_eip !45
  %134 = xor i32 %133, %128, !mcsema_real_eip !45
  %135 = and i32 %134, 16, !mcsema_real_eip !45
  %136 = icmp ne i32 %135, 0, !mcsema_real_eip !45
  store i1 %136, i1* %AF_val, !mcsema_real_eip !45
  %137 = icmp slt i32 %132, 0
  store i1 %137, i1* %SF_val, !mcsema_real_eip !45
  %138 = icmp eq i32 %132, 0, !mcsema_real_eip !45
  store i1 %138, i1* %ZF_val, !mcsema_real_eip !45
  %139 = xor i32 %128, -2147483648, !mcsema_real_eip !45
  %140 = xor i32 %139, %131, !mcsema_real_eip !45
  %141 = and i32 %133, %140, !mcsema_real_eip !45
  %142 = icmp slt i32 %141, 0
  store i1 %142, i1* %OF_val, !mcsema_real_eip !45
  %143 = trunc i32 %132 to i8, !mcsema_real_eip !45
  %144 = tail call i8 @llvm.ctpop.i8(i8 %143), !mcsema_real_eip !45
  %145 = and i8 %144, 1
  %146 = icmp eq i8 %145, 0
  store i1 %146, i1* %PF_val, !mcsema_real_eip !45
  %147 = extractvalue { i32, i1 } %uadd, 1
  store i1 %147, i1* %CF_val, !mcsema_real_eip !45
  %148 = zext i32 %132 to i64, !mcsema_real_eip !45
  store i64 %148, i64* %RCX_val, !mcsema_real_eip !45
  %149 = load i64* %RBP_val, !mcsema_real_eip !46
  %150 = add i64 %149, -24, !mcsema_real_eip !46
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !46
  %152 = bitcast i64* %151 to i32*
  %153 = load i32* %152, !mcsema_real_eip !46
  %154 = zext i32 %153 to i64, !mcsema_real_eip !46
  store i64 %154, i64* %RDX_val, !mcsema_real_eip !46
  %155 = load i64* %RCX_val, !mcsema_real_eip !47
  %156 = trunc i64 %155 to i32, !mcsema_real_eip !47
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %153, i32 %156)
  %157 = extractvalue { i32, i1 } %uadd70, 0
  %158 = xor i32 %157, %156, !mcsema_real_eip !47
  %159 = xor i32 %158, %153, !mcsema_real_eip !47
  %160 = and i32 %159, 16, !mcsema_real_eip !47
  %161 = icmp ne i32 %160, 0, !mcsema_real_eip !47
  store i1 %161, i1* %AF_val, !mcsema_real_eip !47
  %162 = icmp slt i32 %157, 0
  store i1 %162, i1* %SF_val, !mcsema_real_eip !47
  %163 = icmp eq i32 %157, 0, !mcsema_real_eip !47
  store i1 %163, i1* %ZF_val, !mcsema_real_eip !47
  %164 = xor i32 %153, -2147483648, !mcsema_real_eip !47
  %165 = xor i32 %164, %156, !mcsema_real_eip !47
  %166 = and i32 %158, %165, !mcsema_real_eip !47
  %167 = icmp slt i32 %166, 0
  store i1 %167, i1* %OF_val, !mcsema_real_eip !47
  %168 = trunc i32 %157 to i8, !mcsema_real_eip !47
  %169 = tail call i8 @llvm.ctpop.i8(i8 %168), !mcsema_real_eip !47
  %170 = and i8 %169, 1
  %171 = icmp eq i8 %170, 0
  store i1 %171, i1* %PF_val, !mcsema_real_eip !47
  %172 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %172, i1* %CF_val, !mcsema_real_eip !47
  %173 = zext i32 %157 to i64, !mcsema_real_eip !47
  store i64 %173, i64* %RCX_val, !mcsema_real_eip !47
  %174 = load i64* %RBP_val, !mcsema_real_eip !48
  %175 = add i64 %174, -28, !mcsema_real_eip !48
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !48
  %177 = bitcast i64* %176 to i32*
  %178 = load i32* %177, !mcsema_real_eip !48
  %179 = zext i32 %178 to i64, !mcsema_real_eip !48
  store i64 %179, i64* %RDX_val, !mcsema_real_eip !48
  %180 = load i64* %RCX_val, !mcsema_real_eip !49
  %181 = trunc i64 %180 to i32, !mcsema_real_eip !49
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %178, i32 %181)
  %182 = extractvalue { i32, i1 } %uadd71, 0
  %183 = xor i32 %182, %181, !mcsema_real_eip !49
  %184 = xor i32 %183, %178, !mcsema_real_eip !49
  %185 = and i32 %184, 16, !mcsema_real_eip !49
  %186 = icmp ne i32 %185, 0, !mcsema_real_eip !49
  store i1 %186, i1* %AF_val, !mcsema_real_eip !49
  %187 = icmp slt i32 %182, 0
  store i1 %187, i1* %SF_val, !mcsema_real_eip !49
  %188 = icmp eq i32 %182, 0, !mcsema_real_eip !49
  store i1 %188, i1* %ZF_val, !mcsema_real_eip !49
  %189 = xor i32 %178, -2147483648, !mcsema_real_eip !49
  %190 = xor i32 %189, %181, !mcsema_real_eip !49
  %191 = and i32 %183, %190, !mcsema_real_eip !49
  %192 = icmp slt i32 %191, 0
  store i1 %192, i1* %OF_val, !mcsema_real_eip !49
  %193 = trunc i32 %182 to i8, !mcsema_real_eip !49
  %194 = tail call i8 @llvm.ctpop.i8(i8 %193), !mcsema_real_eip !49
  %195 = and i8 %194, 1
  %196 = icmp eq i8 %195, 0
  store i1 %196, i1* %PF_val, !mcsema_real_eip !49
  %197 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %197, i1* %CF_val, !mcsema_real_eip !49
  %198 = zext i32 %182 to i64, !mcsema_real_eip !49
  store i64 %198, i64* %RCX_val, !mcsema_real_eip !49
  %199 = load i64* %RBP_val, !mcsema_real_eip !50
  %200 = add i64 %199, -56, !mcsema_real_eip !50
  %201 = inttoptr i64 %200 to i64*, !mcsema_real_eip !50
  %202 = bitcast i64* %201 to i32*
  store i32 %182, i32* %202, !mcsema_real_eip !50
  %203 = load i64* %RAX_val, !mcsema_real_eip !51
  %204 = add i64 %203, 4, !mcsema_real_eip !51
  %205 = inttoptr i64 %204 to i64*, !mcsema_real_eip !51
  %206 = bitcast i64* %205 to i32*
  %207 = load i32* %206, !mcsema_real_eip !51
  %208 = zext i32 %207 to i64, !mcsema_real_eip !51
  store i64 %208, i64* %RCX_val, !mcsema_real_eip !51
  %209 = load i64* %RBP_val, !mcsema_real_eip !52
  %210 = add i64 %209, -32, !mcsema_real_eip !52
  %211 = inttoptr i64 %210 to i64*, !mcsema_real_eip !52
  %212 = bitcast i64* %211 to i32*
  %213 = load i32* %212, !mcsema_real_eip !52
  %214 = zext i32 %213 to i64, !mcsema_real_eip !52
  store i64 %214, i64* %RDX_val, !mcsema_real_eip !52
  %215 = load i64* %RCX_val, !mcsema_real_eip !53
  %216 = trunc i64 %215 to i32, !mcsema_real_eip !53
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %213, i32 %216)
  %217 = extractvalue { i32, i1 } %uadd72, 0
  %218 = xor i32 %217, %216, !mcsema_real_eip !53
  %219 = xor i32 %218, %213, !mcsema_real_eip !53
  %220 = and i32 %219, 16, !mcsema_real_eip !53
  %221 = icmp ne i32 %220, 0, !mcsema_real_eip !53
  store i1 %221, i1* %AF_val, !mcsema_real_eip !53
  %222 = icmp slt i32 %217, 0
  store i1 %222, i1* %SF_val, !mcsema_real_eip !53
  %223 = icmp eq i32 %217, 0, !mcsema_real_eip !53
  store i1 %223, i1* %ZF_val, !mcsema_real_eip !53
  %224 = xor i32 %213, -2147483648, !mcsema_real_eip !53
  %225 = xor i32 %224, %216, !mcsema_real_eip !53
  %226 = and i32 %218, %225, !mcsema_real_eip !53
  %227 = icmp slt i32 %226, 0
  store i1 %227, i1* %OF_val, !mcsema_real_eip !53
  %228 = trunc i32 %217 to i8, !mcsema_real_eip !53
  %229 = tail call i8 @llvm.ctpop.i8(i8 %228), !mcsema_real_eip !53
  %230 = and i8 %229, 1
  %231 = icmp eq i8 %230, 0
  store i1 %231, i1* %PF_val, !mcsema_real_eip !53
  %232 = extractvalue { i32, i1 } %uadd72, 1
  store i1 %232, i1* %CF_val, !mcsema_real_eip !53
  %233 = zext i32 %217 to i64, !mcsema_real_eip !53
  store i64 %233, i64* %RCX_val, !mcsema_real_eip !53
  %234 = load i64* %RBP_val, !mcsema_real_eip !54
  %235 = add i64 %234, -36, !mcsema_real_eip !54
  %236 = inttoptr i64 %235 to i64*, !mcsema_real_eip !54
  %237 = bitcast i64* %236 to i32*
  %238 = load i32* %237, !mcsema_real_eip !54
  %239 = zext i32 %238 to i64, !mcsema_real_eip !54
  store i64 %239, i64* %RDX_val, !mcsema_real_eip !54
  %240 = load i64* %RCX_val, !mcsema_real_eip !55
  %241 = trunc i64 %240 to i32, !mcsema_real_eip !55
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %238, i32 %241)
  %242 = extractvalue { i32, i1 } %uadd73, 0
  %243 = xor i32 %242, %241, !mcsema_real_eip !55
  %244 = xor i32 %243, %238, !mcsema_real_eip !55
  %245 = and i32 %244, 16, !mcsema_real_eip !55
  %246 = icmp ne i32 %245, 0, !mcsema_real_eip !55
  store i1 %246, i1* %AF_val, !mcsema_real_eip !55
  %247 = icmp slt i32 %242, 0
  store i1 %247, i1* %SF_val, !mcsema_real_eip !55
  %248 = icmp eq i32 %242, 0, !mcsema_real_eip !55
  store i1 %248, i1* %ZF_val, !mcsema_real_eip !55
  %249 = xor i32 %238, -2147483648, !mcsema_real_eip !55
  %250 = xor i32 %249, %241, !mcsema_real_eip !55
  %251 = and i32 %243, %250, !mcsema_real_eip !55
  %252 = icmp slt i32 %251, 0
  store i1 %252, i1* %OF_val, !mcsema_real_eip !55
  %253 = trunc i32 %242 to i8, !mcsema_real_eip !55
  %254 = tail call i8 @llvm.ctpop.i8(i8 %253), !mcsema_real_eip !55
  %255 = and i8 %254, 1
  %256 = icmp eq i8 %255, 0
  store i1 %256, i1* %PF_val, !mcsema_real_eip !55
  %257 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %257, i1* %CF_val, !mcsema_real_eip !55
  %258 = zext i32 %242 to i64, !mcsema_real_eip !55
  store i64 %258, i64* %RCX_val, !mcsema_real_eip !55
  %259 = load i64* %RBP_val, !mcsema_real_eip !56
  %260 = add i64 %259, -40, !mcsema_real_eip !56
  %261 = inttoptr i64 %260 to i64*, !mcsema_real_eip !56
  %262 = bitcast i64* %261 to i32*
  %263 = load i32* %262, !mcsema_real_eip !56
  %264 = zext i32 %263 to i64, !mcsema_real_eip !56
  store i64 %264, i64* %RDX_val, !mcsema_real_eip !56
  %265 = load i64* %RCX_val, !mcsema_real_eip !57
  %266 = trunc i64 %265 to i32, !mcsema_real_eip !57
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %263, i32 %266)
  %267 = extractvalue { i32, i1 } %uadd74, 0
  %268 = xor i32 %267, %266, !mcsema_real_eip !57
  %269 = xor i32 %268, %263, !mcsema_real_eip !57
  %270 = and i32 %269, 16, !mcsema_real_eip !57
  %271 = icmp ne i32 %270, 0, !mcsema_real_eip !57
  store i1 %271, i1* %AF_val, !mcsema_real_eip !57
  %272 = icmp slt i32 %267, 0
  store i1 %272, i1* %SF_val, !mcsema_real_eip !57
  %273 = icmp eq i32 %267, 0, !mcsema_real_eip !57
  store i1 %273, i1* %ZF_val, !mcsema_real_eip !57
  %274 = xor i32 %263, -2147483648, !mcsema_real_eip !57
  %275 = xor i32 %274, %266, !mcsema_real_eip !57
  %276 = and i32 %268, %275, !mcsema_real_eip !57
  %277 = icmp slt i32 %276, 0
  store i1 %277, i1* %OF_val, !mcsema_real_eip !57
  %278 = trunc i32 %267 to i8, !mcsema_real_eip !57
  %279 = tail call i8 @llvm.ctpop.i8(i8 %278), !mcsema_real_eip !57
  %280 = and i8 %279, 1
  %281 = icmp eq i8 %280, 0
  store i1 %281, i1* %PF_val, !mcsema_real_eip !57
  %282 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %282, i1* %CF_val, !mcsema_real_eip !57
  %283 = zext i32 %267 to i64, !mcsema_real_eip !57
  store i64 %283, i64* %RCX_val, !mcsema_real_eip !57
  %284 = load i64* %RBP_val, !mcsema_real_eip !58
  %285 = add i64 %284, -52, !mcsema_real_eip !58
  %286 = inttoptr i64 %285 to i64*, !mcsema_real_eip !58
  %287 = bitcast i64* %286 to i32*
  store i32 %267, i32* %287, !mcsema_real_eip !58
  %288 = load i64* %RAX_val, !mcsema_real_eip !59
  %289 = add i64 %288, 8, !mcsema_real_eip !59
  %290 = inttoptr i64 %289 to i64*, !mcsema_real_eip !59
  %291 = bitcast i64* %290 to i32*
  %292 = load i32* %291, !mcsema_real_eip !59
  %293 = zext i32 %292 to i64, !mcsema_real_eip !59
  store i64 %293, i64* %RCX_val, !mcsema_real_eip !59
  %294 = load i64* %RBP_val, !mcsema_real_eip !60
  %295 = add i64 %294, -48, !mcsema_real_eip !60
  %296 = inttoptr i64 %295 to i64*, !mcsema_real_eip !60
  %297 = bitcast i64* %296 to i32*
  store i32 %292, i32* %297, !mcsema_real_eip !60
  %298 = load i64* %RBP_val, !mcsema_real_eip !61
  %299 = add i64 %298, -8, !mcsema_real_eip !61
  %300 = inttoptr i64 %299 to i64*, !mcsema_real_eip !61
  %301 = load i64* %RCX_val, !mcsema_real_eip !61
  %302 = trunc i64 %301 to i32, !mcsema_real_eip !61
  %303 = bitcast i64* %300 to i32*
  store i32 %302, i32* %303, !mcsema_real_eip !61
  %304 = load i64* %RBP_val, !mcsema_real_eip !62
  %305 = add i64 %304, -56, !mcsema_real_eip !62
  %306 = inttoptr i64 %305 to i64*, !mcsema_real_eip !62
  %307 = load i64* %306, !mcsema_real_eip !62
  store i64 %307, i64* %RAX_val, !mcsema_real_eip !62
  %308 = add i64 %304, -16, !mcsema_real_eip !63
  %309 = inttoptr i64 %308 to i64*, !mcsema_real_eip !63
  store i64 %307, i64* %309, !mcsema_real_eip !63
  %310 = load i64* %RBP_val, !mcsema_real_eip !64
  %311 = add i64 %310, -8, !mcsema_real_eip !64
  %312 = inttoptr i64 %311 to i64*, !mcsema_real_eip !64
  %313 = bitcast i64* %312 to i32*
  %314 = load i32* %313, !mcsema_real_eip !64
  %315 = zext i32 %314 to i64, !mcsema_real_eip !64
  store i64 %315, i64* %RCX_val, !mcsema_real_eip !64
  %316 = load i64* %RBP_val, !mcsema_real_eip !65
  %317 = add i64 %316, -64, !mcsema_real_eip !65
  %318 = inttoptr i64 %317 to i64*, !mcsema_real_eip !65
  %319 = bitcast i64* %318 to i32*
  store i32 %314, i32* %319, !mcsema_real_eip !65
  %320 = load i64* %RBP_val, !mcsema_real_eip !66
  %321 = add i64 %320, -16, !mcsema_real_eip !66
  %322 = inttoptr i64 %321 to i64*, !mcsema_real_eip !66
  %323 = load i64* %322, !mcsema_real_eip !66
  store i64 %323, i64* %RAX_val, !mcsema_real_eip !66
  %324 = add i64 %320, -72, !mcsema_real_eip !67
  %325 = inttoptr i64 %324 to i64*, !mcsema_real_eip !67
  store i64 %323, i64* %325, !mcsema_real_eip !67
  %326 = load i64* %RBP_val, !mcsema_real_eip !68
  %327 = add i64 %326, -72, !mcsema_real_eip !68
  %328 = inttoptr i64 %327 to i64*, !mcsema_real_eip !68
  %329 = load i64* %328, !mcsema_real_eip !68
  store i64 %329, i64* %RAX_val, !mcsema_real_eip !68
  %330 = add i64 %326, -64, !mcsema_real_eip !69
  %331 = inttoptr i64 %330 to i64*, !mcsema_real_eip !69
  %332 = bitcast i64* %331 to i32*
  %333 = load i32* %332, !mcsema_real_eip !69
  %334 = zext i32 %333 to i64, !mcsema_real_eip !69
  store i64 %334, i64* %RDX_val, !mcsema_real_eip !69
  %335 = load i64* %RSP_val, !mcsema_real_eip !70
  %336 = inttoptr i64 %335 to i64*, !mcsema_real_eip !70
  %337 = load i64* %336, !mcsema_real_eip !70
  store i64 %337, i64* %RBP_val, !mcsema_real_eip !70
  %338 = add i64 %335, 16, !mcsema_real_eip !71
  store i64 %338, i64* %RSP_val, !mcsema_real_eip !71
  %339 = load i64* %RAX_val, !mcsema_real_eip !71
  store i64 %339, i64* %RAX, !mcsema_real_eip !71
  %340 = load i64* %RBX_val, !mcsema_real_eip !71
  store i64 %340, i64* %RBX, !mcsema_real_eip !71
  %341 = load i64* %RCX_val, !mcsema_real_eip !71
  store i64 %341, i64* %RCX, !mcsema_real_eip !71
  %342 = load i64* %RDX_val, !mcsema_real_eip !71
  store i64 %342, i64* %RDX, !mcsema_real_eip !71
  %343 = load i64* %RSI_val, !mcsema_real_eip !71
  store i64 %343, i64* %RSI, !mcsema_real_eip !71
  %344 = load i64* %RDI_val, !mcsema_real_eip !71
  store i64 %344, i64* %RDI, !mcsema_real_eip !71
  %345 = load i64* %RSP_val, !mcsema_real_eip !71
  store i64 %345, i64* %RSP, !mcsema_real_eip !71
  %346 = load i64* %RBP_val, !mcsema_real_eip !71
  store i64 %346, i64* %RBP, !mcsema_real_eip !71
  %347 = load i64* %R8_val, !mcsema_real_eip !71
  store i64 %347, i64* %R8, !mcsema_real_eip !71
  %348 = load i64* %R9_val, !mcsema_real_eip !71
  store i64 %348, i64* %R9, !mcsema_real_eip !71
  %349 = load i64* %R10_val, !mcsema_real_eip !71
  store i64 %349, i64* %R10, !mcsema_real_eip !71
  %350 = load i64* %R11_val, !mcsema_real_eip !71
  store i64 %350, i64* %R11, !mcsema_real_eip !71
  %351 = load i64* %R12_val, !mcsema_real_eip !71
  store i64 %351, i64* %R12, !mcsema_real_eip !71
  %352 = load i64* %R13_val, !mcsema_real_eip !71
  store i64 %352, i64* %R13, !mcsema_real_eip !71
  %353 = load i64* %R14_val, !mcsema_real_eip !71
  store i64 %353, i64* %R14, !mcsema_real_eip !71
  %354 = load i64* %R15_val, !mcsema_real_eip !71
  store i64 %354, i64* %R15, !mcsema_real_eip !71
  %355 = load i64* %RIP_val, !mcsema_real_eip !71
  store i64 %355, i64* %RIP, !mcsema_real_eip !71
  %356 = load i1* %CF_val, !mcsema_real_eip !71
  store i1 %356, i1* %CF, align 1, !mcsema_real_eip !71
  %357 = load i1* %PF_val, !mcsema_real_eip !71
  store i1 %357, i1* %PF, align 1, !mcsema_real_eip !71
  %358 = load i1* %AF_val, !mcsema_real_eip !71
  store i1 %358, i1* %AF, align 1, !mcsema_real_eip !71
  %359 = load i1* %ZF_val, !mcsema_real_eip !71
  store i1 %359, i1* %ZF, align 1, !mcsema_real_eip !71
  %360 = load i1* %SF_val, !mcsema_real_eip !71
  store i1 %360, i1* %SF, align 1, !mcsema_real_eip !71
  %361 = load i1* %OF_val, !mcsema_real_eip !71
  store i1 %361, i1* %OF, align 1, !mcsema_real_eip !71
  %362 = load i1* %DF_val, !mcsema_real_eip !71
  store i1 %362, i1* %DF, align 1, !mcsema_real_eip !71
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !71
  %363 = load i1* %FPU_B_val, !mcsema_real_eip !71
  store i1 %363, i1* %FPU_B, align 1, !mcsema_real_eip !71
  %364 = load i1* %FPU_C3_val, !mcsema_real_eip !71
  store i1 %364, i1* %FPU_C3, align 1, !mcsema_real_eip !71
  %365 = load i3* %FPU_TOP_val, !mcsema_real_eip !71
  store i3 %365, i3* %FPU_TOP, align 1, !mcsema_real_eip !71
  %366 = load i1* %FPU_C2_val, !mcsema_real_eip !71
  store i1 %366, i1* %FPU_C2, align 1, !mcsema_real_eip !71
  %367 = load i1* %FPU_C1_val, !mcsema_real_eip !71
  store i1 %367, i1* %FPU_C1, align 1, !mcsema_real_eip !71
  %368 = load i1* %FPU_C0_val, !mcsema_real_eip !71
  store i1 %368, i1* %FPU_C0, align 1, !mcsema_real_eip !71
  %369 = load i1* %FPU_ES_val, !mcsema_real_eip !71
  store i1 %369, i1* %FPU_ES, align 1, !mcsema_real_eip !71
  %370 = load i1* %FPU_SF_val, !mcsema_real_eip !71
  store i1 %370, i1* %FPU_SF, align 1, !mcsema_real_eip !71
  %371 = load i1* %FPU_PE_val, !mcsema_real_eip !71
  store i1 %371, i1* %FPU_PE, align 1, !mcsema_real_eip !71
  %372 = load i1* %FPU_UE_val, !mcsema_real_eip !71
  store i1 %372, i1* %FPU_UE, align 1, !mcsema_real_eip !71
  %373 = load i1* %FPU_OE_val, !mcsema_real_eip !71
  store i1 %373, i1* %FPU_OE, align 1, !mcsema_real_eip !71
  %374 = load i1* %FPU_ZE_val, !mcsema_real_eip !71
  store i1 %374, i1* %FPU_ZE, align 1, !mcsema_real_eip !71
  %375 = load i1* %FPU_DE_val, !mcsema_real_eip !71
  store i1 %375, i1* %FPU_DE, align 1, !mcsema_real_eip !71
  %376 = load i1* %FPU_IE_val, !mcsema_real_eip !71
  store i1 %376, i1* %FPU_IE, align 1, !mcsema_real_eip !71
  %377 = load i1* %FPU_X_val, !mcsema_real_eip !71
  store i1 %377, i1* %FPU_X, align 1, !mcsema_real_eip !71
  %378 = load i2* %FPU_RC_val, !mcsema_real_eip !71
  store i2 %378, i2* %FPU_RC, align 1, !mcsema_real_eip !71
  %379 = load i2* %FPU_PC_val, !mcsema_real_eip !71
  store i2 %379, i2* %FPU_PC, align 1, !mcsema_real_eip !71
  %380 = load i1* %FPU_PM_val, !mcsema_real_eip !71
  store i1 %380, i1* %FPU_PM, align 1, !mcsema_real_eip !71
  %381 = load i1* %FPU_UM_val, !mcsema_real_eip !71
  store i1 %381, i1* %FPU_UM, align 1, !mcsema_real_eip !71
  %382 = load i1* %FPU_OM_val, !mcsema_real_eip !71
  store i1 %382, i1* %FPU_OM, align 1, !mcsema_real_eip !71
  %383 = load i1* %FPU_ZM_val, !mcsema_real_eip !71
  store i1 %383, i1* %FPU_ZM, align 1, !mcsema_real_eip !71
  %384 = load i1* %FPU_DM_val, !mcsema_real_eip !71
  store i1 %384, i1* %FPU_DM, align 1, !mcsema_real_eip !71
  %385 = load i1* %FPU_IM_val, !mcsema_real_eip !71
  store i1 %385, i1* %FPU_IM, align 1, !mcsema_real_eip !71
  %386 = load i64* %53, align 4
  store i64 %386, i64* %52, align 4
  %387 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !71
  store i16 %387, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !71
  %388 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !71
  store i64 %388, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !71
  %389 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !71
  store i16 %389, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !71
  %390 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !71
  store i64 %390, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !71
  %391 = load i128* %XMM0_val, !mcsema_real_eip !71
  store i128 %391, i128* %XMM0, align 1, !mcsema_real_eip !71
  %392 = load i128* %XMM1_val, !mcsema_real_eip !71
  store i128 %392, i128* %XMM1, align 1, !mcsema_real_eip !71
  %393 = load i128* %XMM2_val, !mcsema_real_eip !71
  store i128 %393, i128* %XMM2, align 1, !mcsema_real_eip !71
  %394 = load i128* %XMM3_val, !mcsema_real_eip !71
  store i128 %394, i128* %XMM3, align 1, !mcsema_real_eip !71
  %395 = load i128* %XMM4_val, !mcsema_real_eip !71
  store i128 %395, i128* %XMM4, align 1, !mcsema_real_eip !71
  %396 = load i128* %XMM5_val, !mcsema_real_eip !71
  store i128 %396, i128* %XMM5, align 1, !mcsema_real_eip !71
  %397 = load i128* %XMM6_val, !mcsema_real_eip !71
  store i128 %397, i128* %XMM6, align 1, !mcsema_real_eip !71
  %398 = load i128* %XMM7_val, !mcsema_real_eip !71
  store i128 %398, i128* %XMM7, align 1, !mcsema_real_eip !71
  %399 = load i128* %XMM8_val, !mcsema_real_eip !71
  store i128 %399, i128* %XMM8, align 1, !mcsema_real_eip !71
  %400 = load i128* %XMM9_val, !mcsema_real_eip !71
  store i128 %400, i128* %XMM9, align 1, !mcsema_real_eip !71
  %401 = load i128* %XMM10_val, !mcsema_real_eip !71
  store i128 %401, i128* %XMM10, align 1, !mcsema_real_eip !71
  %402 = load i128* %XMM11_val, !mcsema_real_eip !71
  store i128 %402, i128* %XMM11, align 1, !mcsema_real_eip !71
  %403 = load i128* %XMM12_val, !mcsema_real_eip !71
  store i128 %403, i128* %XMM12, align 1, !mcsema_real_eip !71
  %404 = load i128* %XMM13_val, !mcsema_real_eip !71
  store i128 %404, i128* %XMM13, align 1, !mcsema_real_eip !71
  %405 = load i128* %XMM14_val, !mcsema_real_eip !71
  store i128 %405, i128* %XMM14, align 1, !mcsema_real_eip !71
  %406 = load i128* %XMM15_val, !mcsema_real_eip !71
  store i128 %406, i128* %XMM15, align 1, !mcsema_real_eip !71
  %407 = load i64* %STACK_BASE_val, !mcsema_real_eip !71
  store i64 %407, i64* %STACK_BASE, align 1, !mcsema_real_eip !71
  %408 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !71
  store i64 %408, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !71
  ret void, !mcsema_real_eip !71
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
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 112, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 113, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = metadata !{i64 116, [16 x i8] c"\09subq\09$64, %rsp\00"}
!5 = metadata !{i64 120, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!6 = metadata !{i64 127, [28 x i8] c"\09movabsq\09$85899345930, %rax\00"}
!7 = metadata !{i64 137, [22 x i8] c"\09movq\09%rax, -16(%rbp)\00"}
!8 = metadata !{i64 141, [20 x i8] c"\09movl\09$30, -8(%rbp)\00"}
!9 = metadata !{i64 148, [21 x i8] c"\09movl\09-8(%rbp), %ecx\00"}
!10 = metadata !{i64 151, [17 x i8] c"\09movq\09%rsp, %rax\00"}
!11 = metadata !{i64 154, [20 x i8] c"\09movl\09%ecx, 8(%rax)\00"}
!12 = metadata !{i64 157, [22 x i8] c"\09movq\09-16(%rbp), %rdx\00"}
!13 = metadata !{i64 161, [19 x i8] c"\09movq\09%rdx, (%rax)\00"}
!14 = metadata !{i64 164, [15 x i8] c"\09movl\09$1, %edi\00"}
!15 = metadata !{i64 169, [15 x i8] c"\09movl\09$2, %esi\00"}
!16 = metadata !{i64 174, [15 x i8] c"\09movl\09$3, %edx\00"}
!17 = metadata !{i64 179, [15 x i8] c"\09movl\09$4, %ecx\00"}
!18 = metadata !{i64 184, [15 x i8] c"\09movl\09$5, %r8d\00"}
!19 = metadata !{i64 190, [15 x i8] c"\09movl\09$6, %r9d\00"}
!20 = metadata !{i64 196, [12 x i8] c"\09callq\09-201\00"}
!21 = metadata !{i64 201, [22 x i8] c"\09movl\09%edx, -40(%rbp)\00"}
!22 = metadata !{i64 204, [22 x i8] c"\09movq\09%rax, -48(%rbp)\00"}
!23 = metadata !{i64 208, [22 x i8] c"\09movq\09-48(%rbp), %rax\00"}
!24 = metadata !{i64 212, [22 x i8] c"\09movq\09%rax, -32(%rbp)\00"}
!25 = metadata !{i64 216, [22 x i8] c"\09movl\09-40(%rbp), %ecx\00"}
!26 = metadata !{i64 219, [22 x i8] c"\09movl\09%ecx, -24(%rbp)\00"}
!27 = metadata !{i64 222, [22 x i8] c"\09movl\09-32(%rbp), %ecx\00"}
!28 = metadata !{i64 225, [22 x i8] c"\09addl\09-28(%rbp), %ecx\00"}
!29 = metadata !{i64 228, [22 x i8] c"\09addl\09-24(%rbp), %ecx\00"}
!30 = metadata !{i64 231, [17 x i8] c"\09movl\09%ecx, %eax\00"}
!31 = metadata !{i64 233, [16 x i8] c"\09addq\09$64, %rsp\00"}
!32 = metadata !{i64 237, [11 x i8] c"\09popq\09%rbp\00"}
!33 = metadata !{i64 238, [6 x i8] c"\09retq\00"}
!34 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!35 = metadata !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!36 = metadata !{i64 4, [21 x i8] c"\09leaq\0916(%rbp), %rax\00"}
!37 = metadata !{i64 8, [22 x i8] c"\09movl\09%edi, -20(%rbp)\00"}
!38 = metadata !{i64 11, [22 x i8] c"\09movl\09%esi, -24(%rbp)\00"}
!39 = metadata !{i64 14, [22 x i8] c"\09movl\09%edx, -28(%rbp)\00"}
!40 = metadata !{i64 17, [22 x i8] c"\09movl\09%ecx, -32(%rbp)\00"}
!41 = metadata !{i64 20, [22 x i8] c"\09movl\09%r8d, -36(%rbp)\00"}
!42 = metadata !{i64 24, [22 x i8] c"\09movl\09%r9d, -40(%rbp)\00"}
!43 = metadata !{i64 28, [19 x i8] c"\09movl\09(%rax), %ecx\00"}
!44 = metadata !{i64 30, [22 x i8] c"\09movl\09-20(%rbp), %edx\00"}
!45 = metadata !{i64 33, [17 x i8] c"\09addl\09%edx, %ecx\00"}
!46 = metadata !{i64 35, [22 x i8] c"\09movl\09-24(%rbp), %edx\00"}
!47 = metadata !{i64 38, [17 x i8] c"\09addl\09%edx, %ecx\00"}
!48 = metadata !{i64 40, [22 x i8] c"\09movl\09-28(%rbp), %edx\00"}
!49 = metadata !{i64 43, [17 x i8] c"\09addl\09%edx, %ecx\00"}
!50 = metadata !{i64 45, [22 x i8] c"\09movl\09%ecx, -56(%rbp)\00"}
!51 = metadata !{i64 48, [20 x i8] c"\09movl\094(%rax), %ecx\00"}
!52 = metadata !{i64 51, [22 x i8] c"\09movl\09-32(%rbp), %edx\00"}
!53 = metadata !{i64 54, [17 x i8] c"\09addl\09%edx, %ecx\00"}
!54 = metadata !{i64 56, [22 x i8] c"\09movl\09-36(%rbp), %edx\00"}
!55 = metadata !{i64 59, [17 x i8] c"\09addl\09%edx, %ecx\00"}
!56 = metadata !{i64 61, [22 x i8] c"\09movl\09-40(%rbp), %edx\00"}
!57 = metadata !{i64 64, [17 x i8] c"\09addl\09%edx, %ecx\00"}
!58 = metadata !{i64 66, [22 x i8] c"\09movl\09%ecx, -52(%rbp)\00"}
!59 = metadata !{i64 69, [20 x i8] c"\09movl\098(%rax), %ecx\00"}
!60 = metadata !{i64 72, [22 x i8] c"\09movl\09%ecx, -48(%rbp)\00"}
!61 = metadata !{i64 75, [21 x i8] c"\09movl\09%ecx, -8(%rbp)\00"}
!62 = metadata !{i64 78, [22 x i8] c"\09movq\09-56(%rbp), %rax\00"}
!63 = metadata !{i64 82, [22 x i8] c"\09movq\09%rax, -16(%rbp)\00"}
!64 = metadata !{i64 86, [21 x i8] c"\09movl\09-8(%rbp), %ecx\00"}
!65 = metadata !{i64 89, [22 x i8] c"\09movl\09%ecx, -64(%rbp)\00"}
!66 = metadata !{i64 92, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!67 = metadata !{i64 96, [22 x i8] c"\09movq\09%rax, -72(%rbp)\00"}
!68 = metadata !{i64 100, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!69 = metadata !{i64 104, [22 x i8] c"\09movl\09-64(%rbp), %edx\00"}
!70 = metadata !{i64 107, [11 x i8] c"\09popq\09%rbp\00"}
!71 = metadata !{i64 108, [6 x i8] c"\09retq\00"}
