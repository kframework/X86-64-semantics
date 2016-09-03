; ModuleID = 'Output/test_27.clang.trans.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_c0(%struct.regs*) #0 {
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
  %81 = add i64 %78, -56
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
  %91 = icmp ult i64 %79, 48, !mcsema_real_eip !4
  store i1 %91, i1* %CF_val, !mcsema_real_eip !4
  %92 = and i64 %82, %79, !mcsema_real_eip !4
  %93 = icmp slt i64 %92, 0
  store i1 %93, i1* %OF_val, !mcsema_real_eip !4
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !4
  store i64 0, i64* %RDI_val, !mcsema_real_eip !5
  store i64 1, i64* %RSI_val, !mcsema_real_eip !6
  store i64 2, i64* %RDX_val, !mcsema_real_eip !7
  store i64 3, i64* %RCX_val, !mcsema_real_eip !8
  store i64 4, i64* %R8_val, !mcsema_real_eip !9
  store i64 5, i64* %R9_val, !mcsema_real_eip !10
  %94 = load i64* %RBP_val, !mcsema_real_eip !11
  %95 = add i64 %94, -32, !mcsema_real_eip !11
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !11
  %97 = ptrtoint i64* %96 to i64, !mcsema_real_eip !11
  store i64 %97, i64* %RAX_val, !mcsema_real_eip !11
  %98 = add i64 %94, -4, !mcsema_real_eip !12
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !12
  %100 = bitcast i64* %99 to i32*
  store i32 0, i32* %100, !mcsema_real_eip !12
  %101 = load i64* %RSP_val, !mcsema_real_eip !13
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !13
  %103 = load i64* %RAX_val, !mcsema_real_eip !13
  store i64 %103, i64* %102, !mcsema_real_eip !13
  %104 = load i64* %RSP_val, !mcsema_real_eip !14
  %105 = add i64 %104, -8
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !14
  store i64 -4981261766360305936, i64* %106, !mcsema_real_eip !14
  store i64 %105, i64* %RSP_val, !mcsema_real_eip !14
  %107 = load i64* %RAX_val, !mcsema_real_eip !14
  store i64 %107, i64* %RAX, !mcsema_real_eip !14
  %108 = load i64* %RBX_val, !mcsema_real_eip !14
  store i64 %108, i64* %RBX, !mcsema_real_eip !14
  %109 = load i64* %RCX_val, !mcsema_real_eip !14
  store i64 %109, i64* %RCX, !mcsema_real_eip !14
  %110 = load i64* %RDX_val, !mcsema_real_eip !14
  store i64 %110, i64* %RDX, !mcsema_real_eip !14
  %111 = load i64* %RSI_val, !mcsema_real_eip !14
  store i64 %111, i64* %RSI, !mcsema_real_eip !14
  %112 = load i64* %RDI_val, !mcsema_real_eip !14
  store i64 %112, i64* %RDI, !mcsema_real_eip !14
  %113 = load i64* %RSP_val, !mcsema_real_eip !14
  store i64 %113, i64* %RSP, !mcsema_real_eip !14
  %114 = load i64* %RBP_val, !mcsema_real_eip !14
  store i64 %114, i64* %RBP, !mcsema_real_eip !14
  %115 = load i64* %R8_val, !mcsema_real_eip !14
  store i64 %115, i64* %R8, !mcsema_real_eip !14
  %116 = load i64* %R9_val, !mcsema_real_eip !14
  store i64 %116, i64* %R9, !mcsema_real_eip !14
  %117 = load i64* %R10_val, !mcsema_real_eip !14
  store i64 %117, i64* %R10, !mcsema_real_eip !14
  %118 = load i64* %R11_val, !mcsema_real_eip !14
  store i64 %118, i64* %R11, !mcsema_real_eip !14
  %119 = load i64* %R12_val, !mcsema_real_eip !14
  store i64 %119, i64* %R12, !mcsema_real_eip !14
  %120 = load i64* %R13_val, !mcsema_real_eip !14
  store i64 %120, i64* %R13, !mcsema_real_eip !14
  %121 = load i64* %R14_val, !mcsema_real_eip !14
  store i64 %121, i64* %R14, !mcsema_real_eip !14
  %122 = load i64* %R15_val, !mcsema_real_eip !14
  store i64 %122, i64* %R15, !mcsema_real_eip !14
  %123 = load i64* %RIP_val, !mcsema_real_eip !14
  store i64 %123, i64* %RIP, !mcsema_real_eip !14
  %124 = load i1* %CF_val, !mcsema_real_eip !14
  store i1 %124, i1* %CF, align 1, !mcsema_real_eip !14
  %125 = load i1* %PF_val, !mcsema_real_eip !14
  store i1 %125, i1* %PF, align 1, !mcsema_real_eip !14
  %126 = load i1* %AF_val, !mcsema_real_eip !14
  store i1 %126, i1* %AF, align 1, !mcsema_real_eip !14
  %127 = load i1* %ZF_val, !mcsema_real_eip !14
  store i1 %127, i1* %ZF, align 1, !mcsema_real_eip !14
  %128 = load i1* %SF_val, !mcsema_real_eip !14
  store i1 %128, i1* %SF, align 1, !mcsema_real_eip !14
  %129 = load i1* %OF_val, !mcsema_real_eip !14
  store i1 %129, i1* %OF, align 1, !mcsema_real_eip !14
  %130 = load i1* %DF_val, !mcsema_real_eip !14
  store i1 %130, i1* %DF, align 1, !mcsema_real_eip !14
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !14
  %131 = load i1* %FPU_B_val, !mcsema_real_eip !14
  store i1 %131, i1* %FPU_B, align 1, !mcsema_real_eip !14
  %132 = load i1* %FPU_C3_val, !mcsema_real_eip !14
  store i1 %132, i1* %FPU_C3, align 1, !mcsema_real_eip !14
  %133 = load i3* %FPU_TOP_val, !mcsema_real_eip !14
  store i3 %133, i3* %FPU_TOP, align 1, !mcsema_real_eip !14
  %134 = load i1* %FPU_C2_val, !mcsema_real_eip !14
  store i1 %134, i1* %FPU_C2, align 1, !mcsema_real_eip !14
  %135 = load i1* %FPU_C1_val, !mcsema_real_eip !14
  store i1 %135, i1* %FPU_C1, align 1, !mcsema_real_eip !14
  %136 = load i1* %FPU_C0_val, !mcsema_real_eip !14
  store i1 %136, i1* %FPU_C0, align 1, !mcsema_real_eip !14
  %137 = load i1* %FPU_ES_val, !mcsema_real_eip !14
  store i1 %137, i1* %FPU_ES, align 1, !mcsema_real_eip !14
  %138 = load i1* %FPU_SF_val, !mcsema_real_eip !14
  store i1 %138, i1* %FPU_SF, align 1, !mcsema_real_eip !14
  %139 = load i1* %FPU_PE_val, !mcsema_real_eip !14
  store i1 %139, i1* %FPU_PE, align 1, !mcsema_real_eip !14
  %140 = load i1* %FPU_UE_val, !mcsema_real_eip !14
  store i1 %140, i1* %FPU_UE, align 1, !mcsema_real_eip !14
  %141 = load i1* %FPU_OE_val, !mcsema_real_eip !14
  store i1 %141, i1* %FPU_OE, align 1, !mcsema_real_eip !14
  %142 = load i1* %FPU_ZE_val, !mcsema_real_eip !14
  store i1 %142, i1* %FPU_ZE, align 1, !mcsema_real_eip !14
  %143 = load i1* %FPU_DE_val, !mcsema_real_eip !14
  store i1 %143, i1* %FPU_DE, align 1, !mcsema_real_eip !14
  %144 = load i1* %FPU_IE_val, !mcsema_real_eip !14
  store i1 %144, i1* %FPU_IE, align 1, !mcsema_real_eip !14
  %145 = load i1* %FPU_X_val, !mcsema_real_eip !14
  store i1 %145, i1* %FPU_X, align 1, !mcsema_real_eip !14
  %146 = load i2* %FPU_RC_val, !mcsema_real_eip !14
  store i2 %146, i2* %FPU_RC, align 1, !mcsema_real_eip !14
  %147 = load i2* %FPU_PC_val, !mcsema_real_eip !14
  store i2 %147, i2* %FPU_PC, align 1, !mcsema_real_eip !14
  %148 = load i1* %FPU_PM_val, !mcsema_real_eip !14
  store i1 %148, i1* %FPU_PM, align 1, !mcsema_real_eip !14
  %149 = load i1* %FPU_UM_val, !mcsema_real_eip !14
  store i1 %149, i1* %FPU_UM, align 1, !mcsema_real_eip !14
  %150 = load i1* %FPU_OM_val, !mcsema_real_eip !14
  store i1 %150, i1* %FPU_OM, align 1, !mcsema_real_eip !14
  %151 = load i1* %FPU_ZM_val, !mcsema_real_eip !14
  store i1 %151, i1* %FPU_ZM, align 1, !mcsema_real_eip !14
  %152 = load i1* %FPU_DM_val, !mcsema_real_eip !14
  store i1 %152, i1* %FPU_DM, align 1, !mcsema_real_eip !14
  %153 = load i1* %FPU_IM_val, !mcsema_real_eip !14
  store i1 %153, i1* %FPU_IM, align 1, !mcsema_real_eip !14
  %154 = load i64* %53, align 4
  store i64 %154, i64* %52, align 4
  %155 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !14
  store i16 %155, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !14
  %156 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !14
  store i64 %156, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !14
  %157 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !14
  store i16 %157, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !14
  %158 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !14
  store i64 %158, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !14
  %159 = load i128* %XMM0_val, !mcsema_real_eip !14
  store i128 %159, i128* %XMM0, align 1, !mcsema_real_eip !14
  %160 = load i128* %XMM1_val, !mcsema_real_eip !14
  store i128 %160, i128* %XMM1, align 1, !mcsema_real_eip !14
  %161 = load i128* %XMM2_val, !mcsema_real_eip !14
  store i128 %161, i128* %XMM2, align 1, !mcsema_real_eip !14
  %162 = load i128* %XMM3_val, !mcsema_real_eip !14
  store i128 %162, i128* %XMM3, align 1, !mcsema_real_eip !14
  %163 = load i128* %XMM4_val, !mcsema_real_eip !14
  store i128 %163, i128* %XMM4, align 1, !mcsema_real_eip !14
  %164 = load i128* %XMM5_val, !mcsema_real_eip !14
  store i128 %164, i128* %XMM5, align 1, !mcsema_real_eip !14
  %165 = load i128* %XMM6_val, !mcsema_real_eip !14
  store i128 %165, i128* %XMM6, align 1, !mcsema_real_eip !14
  %166 = load i128* %XMM7_val, !mcsema_real_eip !14
  store i128 %166, i128* %XMM7, align 1, !mcsema_real_eip !14
  %167 = load i128* %XMM8_val, !mcsema_real_eip !14
  store i128 %167, i128* %XMM8, align 1, !mcsema_real_eip !14
  %168 = load i128* %XMM9_val, !mcsema_real_eip !14
  store i128 %168, i128* %XMM9, align 1, !mcsema_real_eip !14
  %169 = load i128* %XMM10_val, !mcsema_real_eip !14
  store i128 %169, i128* %XMM10, align 1, !mcsema_real_eip !14
  %170 = load i128* %XMM11_val, !mcsema_real_eip !14
  store i128 %170, i128* %XMM11, align 1, !mcsema_real_eip !14
  %171 = load i128* %XMM12_val, !mcsema_real_eip !14
  store i128 %171, i128* %XMM12, align 1, !mcsema_real_eip !14
  %172 = load i128* %XMM13_val, !mcsema_real_eip !14
  store i128 %172, i128* %XMM13, align 1, !mcsema_real_eip !14
  %173 = load i128* %XMM14_val, !mcsema_real_eip !14
  store i128 %173, i128* %XMM14, align 1, !mcsema_real_eip !14
  %174 = load i128* %XMM15_val, !mcsema_real_eip !14
  store i128 %174, i128* %XMM15, align 1, !mcsema_real_eip !14
  %175 = load i64* %STACK_BASE_val, !mcsema_real_eip !14
  store i64 %175, i64* %STACK_BASE, align 1, !mcsema_real_eip !14
  %176 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !14
  store i64 %176, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !14
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !14
  %177 = load i64* %RAX, !mcsema_real_eip !14
  store i64 %177, i64* %RAX_val, !mcsema_real_eip !14
  %178 = load i64* %RBX, !mcsema_real_eip !14
  store i64 %178, i64* %RBX_val, !mcsema_real_eip !14
  %179 = load i64* %RCX, !mcsema_real_eip !14
  store i64 %179, i64* %RCX_val, !mcsema_real_eip !14
  %180 = load i64* %RDX, !mcsema_real_eip !14
  store i64 %180, i64* %RDX_val, !mcsema_real_eip !14
  %181 = load i64* %RSI, !mcsema_real_eip !14
  store i64 %181, i64* %RSI_val, !mcsema_real_eip !14
  %182 = load i64* %RDI, !mcsema_real_eip !14
  store i64 %182, i64* %RDI_val, !mcsema_real_eip !14
  %183 = load i64* %RSP, !mcsema_real_eip !14
  store i64 %183, i64* %RSP_val, !mcsema_real_eip !14
  %184 = load i64* %RBP, !mcsema_real_eip !14
  store i64 %184, i64* %RBP_val, !mcsema_real_eip !14
  %185 = load i64* %R8, !mcsema_real_eip !14
  store i64 %185, i64* %R8_val, !mcsema_real_eip !14
  %186 = load i64* %R9, !mcsema_real_eip !14
  store i64 %186, i64* %R9_val, !mcsema_real_eip !14
  %187 = load i64* %R10, !mcsema_real_eip !14
  store i64 %187, i64* %R10_val, !mcsema_real_eip !14
  %188 = load i64* %R11, !mcsema_real_eip !14
  store i64 %188, i64* %R11_val, !mcsema_real_eip !14
  %189 = load i64* %R12, !mcsema_real_eip !14
  store i64 %189, i64* %R12_val, !mcsema_real_eip !14
  %190 = load i64* %R13, !mcsema_real_eip !14
  store i64 %190, i64* %R13_val, !mcsema_real_eip !14
  %191 = load i64* %R14, !mcsema_real_eip !14
  store i64 %191, i64* %R14_val, !mcsema_real_eip !14
  %192 = load i64* %R15, !mcsema_real_eip !14
  store i64 %192, i64* %R15_val, !mcsema_real_eip !14
  %193 = load i64* %RIP, !mcsema_real_eip !14
  store i64 %193, i64* %RIP_val, !mcsema_real_eip !14
  %194 = load i1* %CF, align 1, !mcsema_real_eip !14
  store i1 %194, i1* %CF_val, !mcsema_real_eip !14
  %195 = load i1* %PF, align 1, !mcsema_real_eip !14
  store i1 %195, i1* %PF_val, !mcsema_real_eip !14
  %196 = load i1* %AF, align 1, !mcsema_real_eip !14
  store i1 %196, i1* %AF_val, !mcsema_real_eip !14
  %197 = load i1* %ZF, align 1, !mcsema_real_eip !14
  store i1 %197, i1* %ZF_val, !mcsema_real_eip !14
  %198 = load i1* %SF, align 1, !mcsema_real_eip !14
  store i1 %198, i1* %SF_val, !mcsema_real_eip !14
  %199 = load i1* %OF, align 1, !mcsema_real_eip !14
  store i1 %199, i1* %OF_val, !mcsema_real_eip !14
  %200 = load i1* %DF, align 1, !mcsema_real_eip !14
  store i1 %200, i1* %DF_val, !mcsema_real_eip !14
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !14
  %201 = load i1* %FPU_B, align 1, !mcsema_real_eip !14
  store i1 %201, i1* %FPU_B_val, !mcsema_real_eip !14
  %202 = load i1* %FPU_C3, align 1, !mcsema_real_eip !14
  store i1 %202, i1* %FPU_C3_val, !mcsema_real_eip !14
  %203 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !14
  store i3 %203, i3* %FPU_TOP_val, !mcsema_real_eip !14
  %204 = load i1* %FPU_C2, align 1, !mcsema_real_eip !14
  store i1 %204, i1* %FPU_C2_val, !mcsema_real_eip !14
  %205 = load i1* %FPU_C1, align 1, !mcsema_real_eip !14
  store i1 %205, i1* %FPU_C1_val, !mcsema_real_eip !14
  %206 = load i1* %FPU_C0, align 1, !mcsema_real_eip !14
  store i1 %206, i1* %FPU_C0_val, !mcsema_real_eip !14
  %207 = load i1* %FPU_ES, align 1, !mcsema_real_eip !14
  store i1 %207, i1* %FPU_ES_val, !mcsema_real_eip !14
  %208 = load i1* %FPU_SF, align 1, !mcsema_real_eip !14
  store i1 %208, i1* %FPU_SF_val, !mcsema_real_eip !14
  %209 = load i1* %FPU_PE, align 1, !mcsema_real_eip !14
  store i1 %209, i1* %FPU_PE_val, !mcsema_real_eip !14
  %210 = load i1* %FPU_UE, align 1, !mcsema_real_eip !14
  store i1 %210, i1* %FPU_UE_val, !mcsema_real_eip !14
  %211 = load i1* %FPU_OE, align 1, !mcsema_real_eip !14
  store i1 %211, i1* %FPU_OE_val, !mcsema_real_eip !14
  %212 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !14
  store i1 %212, i1* %FPU_ZE_val, !mcsema_real_eip !14
  %213 = load i1* %FPU_DE, align 1, !mcsema_real_eip !14
  store i1 %213, i1* %FPU_DE_val, !mcsema_real_eip !14
  %214 = load i1* %FPU_IE, align 1, !mcsema_real_eip !14
  store i1 %214, i1* %FPU_IE_val, !mcsema_real_eip !14
  %215 = load i1* %FPU_X, align 1, !mcsema_real_eip !14
  store i1 %215, i1* %FPU_X_val, !mcsema_real_eip !14
  %216 = load i2* %FPU_RC, align 1, !mcsema_real_eip !14
  store i2 %216, i2* %FPU_RC_val, !mcsema_real_eip !14
  %217 = load i2* %FPU_PC, align 1, !mcsema_real_eip !14
  store i2 %217, i2* %FPU_PC_val, !mcsema_real_eip !14
  %218 = load i1* %FPU_PM, align 1, !mcsema_real_eip !14
  store i1 %218, i1* %FPU_PM_val, !mcsema_real_eip !14
  %219 = load i1* %FPU_UM, align 1, !mcsema_real_eip !14
  store i1 %219, i1* %FPU_UM_val, !mcsema_real_eip !14
  %220 = load i1* %FPU_OM, align 1, !mcsema_real_eip !14
  store i1 %220, i1* %FPU_OM_val, !mcsema_real_eip !14
  %221 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !14
  store i1 %221, i1* %FPU_ZM_val, !mcsema_real_eip !14
  %222 = load i1* %FPU_DM, align 1, !mcsema_real_eip !14
  store i1 %222, i1* %FPU_DM_val, !mcsema_real_eip !14
  %223 = load i1* %FPU_IM, align 1, !mcsema_real_eip !14
  store i1 %223, i1* %FPU_IM_val, !mcsema_real_eip !14
  %224 = load i64* %52, align 4
  store i64 %224, i64* %53, align 4
  %225 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !14
  store i16 %225, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !14
  %226 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !14
  store i64 %226, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !14
  %227 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !14
  store i16 %227, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !14
  %228 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !14
  store i64 %228, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !14
  %229 = load i128* %XMM0, align 1, !mcsema_real_eip !14
  store i128 %229, i128* %XMM0_val, !mcsema_real_eip !14
  %230 = load i128* %XMM1, align 1, !mcsema_real_eip !14
  store i128 %230, i128* %XMM1_val, !mcsema_real_eip !14
  %231 = load i128* %XMM2, align 1, !mcsema_real_eip !14
  store i128 %231, i128* %XMM2_val, !mcsema_real_eip !14
  %232 = load i128* %XMM3, align 1, !mcsema_real_eip !14
  store i128 %232, i128* %XMM3_val, !mcsema_real_eip !14
  %233 = load i128* %XMM4, align 1, !mcsema_real_eip !14
  store i128 %233, i128* %XMM4_val, !mcsema_real_eip !14
  %234 = load i128* %XMM5, align 1, !mcsema_real_eip !14
  store i128 %234, i128* %XMM5_val, !mcsema_real_eip !14
  %235 = load i128* %XMM6, align 1, !mcsema_real_eip !14
  store i128 %235, i128* %XMM6_val, !mcsema_real_eip !14
  %236 = load i128* %XMM7, align 1, !mcsema_real_eip !14
  store i128 %236, i128* %XMM7_val, !mcsema_real_eip !14
  %237 = load i128* %XMM8, align 1, !mcsema_real_eip !14
  store i128 %237, i128* %XMM8_val, !mcsema_real_eip !14
  %238 = load i128* %XMM9, align 1, !mcsema_real_eip !14
  store i128 %238, i128* %XMM9_val, !mcsema_real_eip !14
  %239 = load i128* %XMM10, align 1, !mcsema_real_eip !14
  store i128 %239, i128* %XMM10_val, !mcsema_real_eip !14
  %240 = load i128* %XMM11, align 1, !mcsema_real_eip !14
  store i128 %240, i128* %XMM11_val, !mcsema_real_eip !14
  %241 = load i128* %XMM12, align 1, !mcsema_real_eip !14
  store i128 %241, i128* %XMM12_val, !mcsema_real_eip !14
  %242 = load i128* %XMM13, align 1, !mcsema_real_eip !14
  store i128 %242, i128* %XMM13_val, !mcsema_real_eip !14
  %243 = load i128* %XMM14, align 1, !mcsema_real_eip !14
  store i128 %243, i128* %XMM14_val, !mcsema_real_eip !14
  %244 = load i128* %XMM15, align 1, !mcsema_real_eip !14
  store i128 %244, i128* %XMM15_val, !mcsema_real_eip !14
  %245 = load i64* %STACK_BASE, !mcsema_real_eip !14
  store i64 %245, i64* %STACK_BASE_val, !mcsema_real_eip !14
  %246 = load i64* %STACK_LIMIT, !mcsema_real_eip !14
  store i64 %246, i64* %STACK_LIMIT_val, !mcsema_real_eip !14
  %247 = load i64* %RSP_val, !mcsema_real_eip !15
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %247, i64 48)
  %248 = extractvalue { i64, i1 } %uadd, 0
  %249 = xor i64 %248, %247, !mcsema_real_eip !15
  %250 = and i64 %249, 16
  %251 = icmp eq i64 %250, 0
  store i1 %251, i1* %AF_val, !mcsema_real_eip !15
  %252 = icmp slt i64 %248, 0
  store i1 %252, i1* %SF_val, !mcsema_real_eip !15
  %253 = icmp eq i64 %248, 0, !mcsema_real_eip !15
  store i1 %253, i1* %ZF_val, !mcsema_real_eip !15
  %254 = xor i64 %247, -9223372036854775808, !mcsema_real_eip !15
  %255 = and i64 %249, %254, !mcsema_real_eip !15
  %256 = icmp slt i64 %255, 0
  store i1 %256, i1* %OF_val, !mcsema_real_eip !15
  %257 = trunc i64 %248 to i8, !mcsema_real_eip !15
  %258 = tail call i8 @llvm.ctpop.i8(i8 %257), !mcsema_real_eip !15
  %259 = and i8 %258, 1
  %260 = icmp eq i8 %259, 0
  store i1 %260, i1* %PF_val, !mcsema_real_eip !15
  %261 = extractvalue { i64, i1 } %uadd, 1
  store i1 %261, i1* %CF_val, !mcsema_real_eip !15
  store i64 %248, i64* %RSP_val, !mcsema_real_eip !15
  %262 = inttoptr i64 %248 to i64*, !mcsema_real_eip !16
  %263 = load i64* %262, !mcsema_real_eip !16
  store i64 %263, i64* %RBP_val, !mcsema_real_eip !16
  %264 = add i64 %248, 16, !mcsema_real_eip !17
  store i64 %264, i64* %RSP_val, !mcsema_real_eip !17
  %265 = load i64* %RAX_val, !mcsema_real_eip !17
  store i64 %265, i64* %RAX, !mcsema_real_eip !17
  %266 = load i64* %RBX_val, !mcsema_real_eip !17
  store i64 %266, i64* %RBX, !mcsema_real_eip !17
  %267 = load i64* %RCX_val, !mcsema_real_eip !17
  store i64 %267, i64* %RCX, !mcsema_real_eip !17
  %268 = load i64* %RDX_val, !mcsema_real_eip !17
  store i64 %268, i64* %RDX, !mcsema_real_eip !17
  %269 = load i64* %RSI_val, !mcsema_real_eip !17
  store i64 %269, i64* %RSI, !mcsema_real_eip !17
  %270 = load i64* %RDI_val, !mcsema_real_eip !17
  store i64 %270, i64* %RDI, !mcsema_real_eip !17
  %271 = load i64* %RSP_val, !mcsema_real_eip !17
  store i64 %271, i64* %RSP, !mcsema_real_eip !17
  %272 = load i64* %RBP_val, !mcsema_real_eip !17
  store i64 %272, i64* %RBP, !mcsema_real_eip !17
  %273 = load i64* %R8_val, !mcsema_real_eip !17
  store i64 %273, i64* %R8, !mcsema_real_eip !17
  %274 = load i64* %R9_val, !mcsema_real_eip !17
  store i64 %274, i64* %R9, !mcsema_real_eip !17
  %275 = load i64* %R10_val, !mcsema_real_eip !17
  store i64 %275, i64* %R10, !mcsema_real_eip !17
  %276 = load i64* %R11_val, !mcsema_real_eip !17
  store i64 %276, i64* %R11, !mcsema_real_eip !17
  %277 = load i64* %R12_val, !mcsema_real_eip !17
  store i64 %277, i64* %R12, !mcsema_real_eip !17
  %278 = load i64* %R13_val, !mcsema_real_eip !17
  store i64 %278, i64* %R13, !mcsema_real_eip !17
  %279 = load i64* %R14_val, !mcsema_real_eip !17
  store i64 %279, i64* %R14, !mcsema_real_eip !17
  %280 = load i64* %R15_val, !mcsema_real_eip !17
  store i64 %280, i64* %R15, !mcsema_real_eip !17
  %281 = load i64* %RIP_val, !mcsema_real_eip !17
  store i64 %281, i64* %RIP, !mcsema_real_eip !17
  %282 = load i1* %CF_val, !mcsema_real_eip !17
  store i1 %282, i1* %CF, align 1, !mcsema_real_eip !17
  %283 = load i1* %PF_val, !mcsema_real_eip !17
  store i1 %283, i1* %PF, align 1, !mcsema_real_eip !17
  %284 = load i1* %AF_val, !mcsema_real_eip !17
  store i1 %284, i1* %AF, align 1, !mcsema_real_eip !17
  %285 = load i1* %ZF_val, !mcsema_real_eip !17
  store i1 %285, i1* %ZF, align 1, !mcsema_real_eip !17
  %286 = load i1* %SF_val, !mcsema_real_eip !17
  store i1 %286, i1* %SF, align 1, !mcsema_real_eip !17
  %287 = load i1* %OF_val, !mcsema_real_eip !17
  store i1 %287, i1* %OF, align 1, !mcsema_real_eip !17
  %288 = load i1* %DF_val, !mcsema_real_eip !17
  store i1 %288, i1* %DF, align 1, !mcsema_real_eip !17
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !17
  %289 = load i1* %FPU_B_val, !mcsema_real_eip !17
  store i1 %289, i1* %FPU_B, align 1, !mcsema_real_eip !17
  %290 = load i1* %FPU_C3_val, !mcsema_real_eip !17
  store i1 %290, i1* %FPU_C3, align 1, !mcsema_real_eip !17
  %291 = load i3* %FPU_TOP_val, !mcsema_real_eip !17
  store i3 %291, i3* %FPU_TOP, align 1, !mcsema_real_eip !17
  %292 = load i1* %FPU_C2_val, !mcsema_real_eip !17
  store i1 %292, i1* %FPU_C2, align 1, !mcsema_real_eip !17
  %293 = load i1* %FPU_C1_val, !mcsema_real_eip !17
  store i1 %293, i1* %FPU_C1, align 1, !mcsema_real_eip !17
  %294 = load i1* %FPU_C0_val, !mcsema_real_eip !17
  store i1 %294, i1* %FPU_C0, align 1, !mcsema_real_eip !17
  %295 = load i1* %FPU_ES_val, !mcsema_real_eip !17
  store i1 %295, i1* %FPU_ES, align 1, !mcsema_real_eip !17
  %296 = load i1* %FPU_SF_val, !mcsema_real_eip !17
  store i1 %296, i1* %FPU_SF, align 1, !mcsema_real_eip !17
  %297 = load i1* %FPU_PE_val, !mcsema_real_eip !17
  store i1 %297, i1* %FPU_PE, align 1, !mcsema_real_eip !17
  %298 = load i1* %FPU_UE_val, !mcsema_real_eip !17
  store i1 %298, i1* %FPU_UE, align 1, !mcsema_real_eip !17
  %299 = load i1* %FPU_OE_val, !mcsema_real_eip !17
  store i1 %299, i1* %FPU_OE, align 1, !mcsema_real_eip !17
  %300 = load i1* %FPU_ZE_val, !mcsema_real_eip !17
  store i1 %300, i1* %FPU_ZE, align 1, !mcsema_real_eip !17
  %301 = load i1* %FPU_DE_val, !mcsema_real_eip !17
  store i1 %301, i1* %FPU_DE, align 1, !mcsema_real_eip !17
  %302 = load i1* %FPU_IE_val, !mcsema_real_eip !17
  store i1 %302, i1* %FPU_IE, align 1, !mcsema_real_eip !17
  %303 = load i1* %FPU_X_val, !mcsema_real_eip !17
  store i1 %303, i1* %FPU_X, align 1, !mcsema_real_eip !17
  %304 = load i2* %FPU_RC_val, !mcsema_real_eip !17
  store i2 %304, i2* %FPU_RC, align 1, !mcsema_real_eip !17
  %305 = load i2* %FPU_PC_val, !mcsema_real_eip !17
  store i2 %305, i2* %FPU_PC, align 1, !mcsema_real_eip !17
  %306 = load i1* %FPU_PM_val, !mcsema_real_eip !17
  store i1 %306, i1* %FPU_PM, align 1, !mcsema_real_eip !17
  %307 = load i1* %FPU_UM_val, !mcsema_real_eip !17
  store i1 %307, i1* %FPU_UM, align 1, !mcsema_real_eip !17
  %308 = load i1* %FPU_OM_val, !mcsema_real_eip !17
  store i1 %308, i1* %FPU_OM, align 1, !mcsema_real_eip !17
  %309 = load i1* %FPU_ZM_val, !mcsema_real_eip !17
  store i1 %309, i1* %FPU_ZM, align 1, !mcsema_real_eip !17
  %310 = load i1* %FPU_DM_val, !mcsema_real_eip !17
  store i1 %310, i1* %FPU_DM, align 1, !mcsema_real_eip !17
  %311 = load i1* %FPU_IM_val, !mcsema_real_eip !17
  store i1 %311, i1* %FPU_IM, align 1, !mcsema_real_eip !17
  %312 = load i64* %53, align 4
  store i64 %312, i64* %52, align 4
  %313 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !17
  store i16 %313, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !17
  %314 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !17
  store i64 %314, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !17
  %315 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !17
  store i16 %315, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !17
  %316 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !17
  store i64 %316, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !17
  %317 = load i128* %XMM0_val, !mcsema_real_eip !17
  store i128 %317, i128* %XMM0, align 1, !mcsema_real_eip !17
  %318 = load i128* %XMM1_val, !mcsema_real_eip !17
  store i128 %318, i128* %XMM1, align 1, !mcsema_real_eip !17
  %319 = load i128* %XMM2_val, !mcsema_real_eip !17
  store i128 %319, i128* %XMM2, align 1, !mcsema_real_eip !17
  %320 = load i128* %XMM3_val, !mcsema_real_eip !17
  store i128 %320, i128* %XMM3, align 1, !mcsema_real_eip !17
  %321 = load i128* %XMM4_val, !mcsema_real_eip !17
  store i128 %321, i128* %XMM4, align 1, !mcsema_real_eip !17
  %322 = load i128* %XMM5_val, !mcsema_real_eip !17
  store i128 %322, i128* %XMM5, align 1, !mcsema_real_eip !17
  %323 = load i128* %XMM6_val, !mcsema_real_eip !17
  store i128 %323, i128* %XMM6, align 1, !mcsema_real_eip !17
  %324 = load i128* %XMM7_val, !mcsema_real_eip !17
  store i128 %324, i128* %XMM7, align 1, !mcsema_real_eip !17
  %325 = load i128* %XMM8_val, !mcsema_real_eip !17
  store i128 %325, i128* %XMM8, align 1, !mcsema_real_eip !17
  %326 = load i128* %XMM9_val, !mcsema_real_eip !17
  store i128 %326, i128* %XMM9, align 1, !mcsema_real_eip !17
  %327 = load i128* %XMM10_val, !mcsema_real_eip !17
  store i128 %327, i128* %XMM10, align 1, !mcsema_real_eip !17
  %328 = load i128* %XMM11_val, !mcsema_real_eip !17
  store i128 %328, i128* %XMM11, align 1, !mcsema_real_eip !17
  %329 = load i128* %XMM12_val, !mcsema_real_eip !17
  store i128 %329, i128* %XMM12, align 1, !mcsema_real_eip !17
  %330 = load i128* %XMM13_val, !mcsema_real_eip !17
  store i128 %330, i128* %XMM13, align 1, !mcsema_real_eip !17
  %331 = load i128* %XMM14_val, !mcsema_real_eip !17
  store i128 %331, i128* %XMM14, align 1, !mcsema_real_eip !17
  %332 = load i128* %XMM15_val, !mcsema_real_eip !17
  store i128 %332, i128* %XMM15, align 1, !mcsema_real_eip !17
  %333 = load i64* %STACK_BASE_val, !mcsema_real_eip !17
  store i64 %333, i64* %STACK_BASE, align 1, !mcsema_real_eip !17
  %334 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !17
  store i64 %334, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !17
  ret void, !mcsema_real_eip !17
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !18
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !18
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !18
  %XMM15_val = alloca i128, !mcsema_real_eip !18
  %XMM14_val = alloca i128, !mcsema_real_eip !18
  %XMM13_val = alloca i128, !mcsema_real_eip !18
  %XMM12_val = alloca i128, !mcsema_real_eip !18
  %XMM11_val = alloca i128, !mcsema_real_eip !18
  %XMM10_val = alloca i128, !mcsema_real_eip !18
  %XMM9_val = alloca i128, !mcsema_real_eip !18
  %XMM8_val = alloca i128, !mcsema_real_eip !18
  %XMM7_val = alloca i128, !mcsema_real_eip !18
  %XMM6_val = alloca i128, !mcsema_real_eip !18
  %XMM5_val = alloca i128, !mcsema_real_eip !18
  %XMM4_val = alloca i128, !mcsema_real_eip !18
  %XMM3_val = alloca i128, !mcsema_real_eip !18
  %XMM2_val = alloca i128, !mcsema_real_eip !18
  %XMM1_val = alloca i128, !mcsema_real_eip !18
  %XMM0_val = alloca i128, !mcsema_real_eip !18
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !18
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !18
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !18
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !18
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !18
  %FPU_IM_val = alloca i1, !mcsema_real_eip !18
  %FPU_DM_val = alloca i1, !mcsema_real_eip !18
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !18
  %FPU_OM_val = alloca i1, !mcsema_real_eip !18
  %FPU_UM_val = alloca i1, !mcsema_real_eip !18
  %FPU_PM_val = alloca i1, !mcsema_real_eip !18
  %FPU_PC_val = alloca i2, !mcsema_real_eip !18
  %FPU_RC_val = alloca i2, !mcsema_real_eip !18
  %FPU_X_val = alloca i1, !mcsema_real_eip !18
  %FPU_IE_val = alloca i1, !mcsema_real_eip !18
  %FPU_DE_val = alloca i1, !mcsema_real_eip !18
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !18
  %FPU_OE_val = alloca i1, !mcsema_real_eip !18
  %FPU_UE_val = alloca i1, !mcsema_real_eip !18
  %FPU_PE_val = alloca i1, !mcsema_real_eip !18
  %FPU_SF_val = alloca i1, !mcsema_real_eip !18
  %FPU_ES_val = alloca i1, !mcsema_real_eip !18
  %FPU_C0_val = alloca i1, !mcsema_real_eip !18
  %FPU_C1_val = alloca i1, !mcsema_real_eip !18
  %FPU_C2_val = alloca i1, !mcsema_real_eip !18
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !18
  %FPU_C3_val = alloca i1, !mcsema_real_eip !18
  %FPU_B_val = alloca i1, !mcsema_real_eip !18
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !18
  %DF_val = alloca i1, !mcsema_real_eip !18
  %OF_val = alloca i1, !mcsema_real_eip !18
  %SF_val = alloca i1, !mcsema_real_eip !18
  %CF_val = alloca i1, !mcsema_real_eip !18
  %AF_val = alloca i1, !mcsema_real_eip !18
  %PF_val = alloca i1, !mcsema_real_eip !18
  %ZF_val = alloca i1, !mcsema_real_eip !18
  %RIP_val = alloca i64, !mcsema_real_eip !18
  %R14_val = alloca i64, !mcsema_real_eip !18
  %R13_val = alloca i64, !mcsema_real_eip !18
  %R12_val = alloca i64, !mcsema_real_eip !18
  %R11_val = alloca i64, !mcsema_real_eip !18
  %R10_val = alloca i64, !mcsema_real_eip !18
  %R9_val = alloca i64, !mcsema_real_eip !18
  %R8_val = alloca i64, !mcsema_real_eip !18
  %RSP_val = alloca i64, !mcsema_real_eip !18
  %RBP_val = alloca i64, !mcsema_real_eip !18
  %RDI_val = alloca i64, !mcsema_real_eip !18
  %RSI_val = alloca i64, !mcsema_real_eip !18
  %RDX_val = alloca i64, !mcsema_real_eip !18
  %RCX_val = alloca i64, !mcsema_real_eip !18
  %RBX_val = alloca i64, !mcsema_real_eip !18
  %RAX_val = alloca i64, !mcsema_real_eip !18
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !18
  %1 = load i64* %RAX, !mcsema_real_eip !18
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !18
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !18
  %2 = load i64* %RBX, !mcsema_real_eip !18
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !18
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !18
  %3 = load i64* %RCX, !mcsema_real_eip !18
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !18
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !18
  %4 = load i64* %RDX, !mcsema_real_eip !18
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !18
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !18
  %5 = load i64* %RSI, !mcsema_real_eip !18
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !18
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !18
  %6 = load i64* %RDI, !mcsema_real_eip !18
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !18
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !18
  %7 = load i64* %RSP, !mcsema_real_eip !18
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !18
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !18
  %8 = load i64* %RBP, !mcsema_real_eip !18
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !18
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !18
  %9 = load i64* %R8, !mcsema_real_eip !18
  store i64 %9, i64* %R8_val, !mcsema_real_eip !18
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !18
  %10 = load i64* %R9, !mcsema_real_eip !18
  store i64 %10, i64* %R9_val, !mcsema_real_eip !18
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !18
  %11 = load i64* %R10, !mcsema_real_eip !18
  store i64 %11, i64* %R10_val, !mcsema_real_eip !18
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !18
  %12 = load i64* %R11, !mcsema_real_eip !18
  store i64 %12, i64* %R11_val, !mcsema_real_eip !18
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !18
  %13 = load i64* %R12, !mcsema_real_eip !18
  store i64 %13, i64* %R12_val, !mcsema_real_eip !18
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !18
  %14 = load i64* %R13, !mcsema_real_eip !18
  store i64 %14, i64* %R13_val, !mcsema_real_eip !18
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !18
  %15 = load i64* %R14, !mcsema_real_eip !18
  store i64 %15, i64* %R14_val, !mcsema_real_eip !18
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !18
  %16 = load i64* %R15, !mcsema_real_eip !18
  store i64 %16, i64* %R15_val, !mcsema_real_eip !18
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !18
  %17 = load i64* %RIP, !mcsema_real_eip !18
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !18
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !18
  %18 = load i1* %CF, align 1, !mcsema_real_eip !18
  store i1 %18, i1* %CF_val, !mcsema_real_eip !18
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !18
  %19 = load i1* %PF, align 1, !mcsema_real_eip !18
  store i1 %19, i1* %PF_val, !mcsema_real_eip !18
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !18
  %20 = load i1* %AF, align 1, !mcsema_real_eip !18
  store i1 %20, i1* %AF_val, !mcsema_real_eip !18
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !18
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !18
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !18
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !18
  %22 = load i1* %SF, align 1, !mcsema_real_eip !18
  store i1 %22, i1* %SF_val, !mcsema_real_eip !18
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !18
  %23 = load i1* %OF, align 1, !mcsema_real_eip !18
  store i1 %23, i1* %OF_val, !mcsema_real_eip !18
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !18
  %24 = load i1* %DF, align 1, !mcsema_real_eip !18
  store i1 %24, i1* %DF_val, !mcsema_real_eip !18
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !18
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !18
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !18
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !18
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !18
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !18
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !18
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !18
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !18
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !18
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !18
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !18
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !18
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !18
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !18
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !18
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !18
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !18
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !18
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !18
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !18
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !18
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !18
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !18
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !18
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !18
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !18
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !18
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !18
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !18
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !18
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !18
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !18
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !18
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !18
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !18
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !18
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !18
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !18
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !18
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !18
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !18
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !18
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !18
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !18
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !18
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !18
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !18
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !18
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !18
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !18
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !18
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !18
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !18
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !18
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !18
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !18
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !18
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !18
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !18
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !18
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !18
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !18
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !18
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !18
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !18
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !18
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !18
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !18
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !18
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !18
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !18
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !18
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !18
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !18
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !18
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !18
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !18
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !18
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !18
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !18
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !18
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !18
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !18
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !18
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !18
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !18
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !18
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !18
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !18
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !18
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !18
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !18
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !18
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !18
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !18
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !18
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !18
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !18
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !18
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !18
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !18
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !18
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !18
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !18
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !18
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !18
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !18
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !18
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !18
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !18
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !18
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !18
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !18
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !18
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !18
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !18
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !18
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !18
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !18
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !18
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !18
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !18
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !18
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !18
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !18
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !18
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !18
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !18
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !18
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !18
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !18
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !18
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !18
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !18
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !18
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !18
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !18
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !18
  %77 = load i64* %RBP_val, !mcsema_real_eip !18
  %78 = load i64* %RSP_val, !mcsema_real_eip !18
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !18
  store i64 %77, i64* %80, !mcsema_real_eip !18
  store i64 %79, i64* %RSP_val, !mcsema_real_eip !18
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !19
  %81 = add i64 %78, 8, !mcsema_real_eip !20
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !20
  %83 = load i64* %82, !mcsema_real_eip !20
  store i64 %83, i64* %RAX_val, !mcsema_real_eip !20
  %84 = add i64 %78, -12, !mcsema_real_eip !21
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !21
  %86 = load i64* %RDI_val, !mcsema_real_eip !21
  %87 = trunc i64 %86 to i32, !mcsema_real_eip !21
  %88 = bitcast i64* %85 to i32*
  store i32 %87, i32* %88, !mcsema_real_eip !21
  %89 = load i64* %RBP_val, !mcsema_real_eip !22
  %90 = add i64 %89, -8, !mcsema_real_eip !22
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !22
  %92 = load i64* %RSI_val, !mcsema_real_eip !22
  %93 = trunc i64 %92 to i32, !mcsema_real_eip !22
  %94 = bitcast i64* %91 to i32*
  store i32 %93, i32* %94, !mcsema_real_eip !22
  %95 = load i64* %RBP_val, !mcsema_real_eip !23
  %96 = add i64 %95, -12, !mcsema_real_eip !23
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !23
  %98 = load i64* %RDX_val, !mcsema_real_eip !23
  %99 = trunc i64 %98 to i32, !mcsema_real_eip !23
  %100 = bitcast i64* %97 to i32*
  store i32 %99, i32* %100, !mcsema_real_eip !23
  %101 = load i64* %RBP_val, !mcsema_real_eip !24
  %102 = add i64 %101, -16, !mcsema_real_eip !24
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !24
  %104 = load i64* %RCX_val, !mcsema_real_eip !24
  %105 = trunc i64 %104 to i32, !mcsema_real_eip !24
  %106 = bitcast i64* %103 to i32*
  store i32 %105, i32* %106, !mcsema_real_eip !24
  %107 = load i64* %RBP_val, !mcsema_real_eip !25
  %108 = add i64 %107, -20, !mcsema_real_eip !25
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !25
  %110 = load i64* %R8_val, !mcsema_real_eip !25
  %111 = trunc i64 %110 to i32, !mcsema_real_eip !25
  %112 = bitcast i64* %109 to i32*
  store i32 %111, i32* %112, !mcsema_real_eip !25
  %113 = load i64* %RBP_val, !mcsema_real_eip !26
  %114 = add i64 %113, -24, !mcsema_real_eip !26
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !26
  %116 = load i64* %R9_val, !mcsema_real_eip !26
  %117 = trunc i64 %116 to i32, !mcsema_real_eip !26
  %118 = bitcast i64* %115 to i32*
  store i32 %117, i32* %118, !mcsema_real_eip !26
  %119 = load i64* %RBP_val, !mcsema_real_eip !27
  %120 = add i64 %119, -32, !mcsema_real_eip !27
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !27
  %122 = load i64* %RAX_val, !mcsema_real_eip !27
  store i64 %122, i64* %121, !mcsema_real_eip !27
  %123 = load i64* %RBP_val, !mcsema_real_eip !28
  %124 = add i64 %123, -4, !mcsema_real_eip !28
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !28
  %126 = bitcast i64* %125 to i32*
  %127 = load i32* %126, !mcsema_real_eip !28
  %128 = zext i32 %127 to i64, !mcsema_real_eip !28
  store i64 %128, i64* %RCX_val, !mcsema_real_eip !28
  %129 = load i64* %RBP_val, !mcsema_real_eip !29
  %130 = add i64 %129, -4, !mcsema_real_eip !29
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !29
  %132 = bitcast i64* %131 to i32*
  %133 = load i32* %132, !mcsema_real_eip !29
  %134 = sext i32 %133 to i64, !mcsema_real_eip !29
  store i64 %134, i64* %RAX_val, !mcsema_real_eip !29
  %135 = load i64* %RBP_val, !mcsema_real_eip !30
  %136 = add i64 %135, -32, !mcsema_real_eip !30
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !30
  %138 = load i64* %137, !mcsema_real_eip !30
  store i64 %138, i64* %R10_val, !mcsema_real_eip !30
  %139 = shl nsw i64 %134, 2
  %140 = add i64 %138, %139, !mcsema_real_eip !31
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !31
  %142 = load i64* %RCX_val, !mcsema_real_eip !31
  %143 = trunc i64 %142 to i32, !mcsema_real_eip !31
  %144 = bitcast i64* %141 to i32*
  store i32 %143, i32* %144, !mcsema_real_eip !31
  %145 = load i64* %RBP_val, !mcsema_real_eip !32
  %146 = add i64 %145, -8, !mcsema_real_eip !32
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !32
  %148 = bitcast i64* %147 to i32*
  %149 = load i32* %148, !mcsema_real_eip !32
  %150 = zext i32 %149 to i64, !mcsema_real_eip !32
  store i64 %150, i64* %RCX_val, !mcsema_real_eip !32
  %151 = load i64* %RBP_val, !mcsema_real_eip !33
  %152 = add i64 %151, -8, !mcsema_real_eip !33
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !33
  %154 = bitcast i64* %153 to i32*
  %155 = load i32* %154, !mcsema_real_eip !33
  %156 = sext i32 %155 to i64, !mcsema_real_eip !33
  store i64 %156, i64* %RAX_val, !mcsema_real_eip !33
  %157 = load i64* %RBP_val, !mcsema_real_eip !34
  %158 = add i64 %157, -32, !mcsema_real_eip !34
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !34
  %160 = load i64* %159, !mcsema_real_eip !34
  store i64 %160, i64* %R10_val, !mcsema_real_eip !34
  %161 = shl nsw i64 %156, 2
  %162 = add i64 %160, %161, !mcsema_real_eip !35
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !35
  %164 = load i64* %RCX_val, !mcsema_real_eip !35
  %165 = trunc i64 %164 to i32, !mcsema_real_eip !35
  %166 = bitcast i64* %163 to i32*
  store i32 %165, i32* %166, !mcsema_real_eip !35
  %167 = load i64* %RBP_val, !mcsema_real_eip !36
  %168 = add i64 %167, -12, !mcsema_real_eip !36
  %169 = inttoptr i64 %168 to i64*, !mcsema_real_eip !36
  %170 = bitcast i64* %169 to i32*
  %171 = load i32* %170, !mcsema_real_eip !36
  %172 = zext i32 %171 to i64, !mcsema_real_eip !36
  store i64 %172, i64* %RCX_val, !mcsema_real_eip !36
  %173 = load i64* %RBP_val, !mcsema_real_eip !37
  %174 = add i64 %173, -12, !mcsema_real_eip !37
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !37
  %176 = bitcast i64* %175 to i32*
  %177 = load i32* %176, !mcsema_real_eip !37
  %178 = sext i32 %177 to i64, !mcsema_real_eip !37
  store i64 %178, i64* %RAX_val, !mcsema_real_eip !37
  %179 = load i64* %RBP_val, !mcsema_real_eip !38
  %180 = add i64 %179, -32, !mcsema_real_eip !38
  %181 = inttoptr i64 %180 to i64*, !mcsema_real_eip !38
  %182 = load i64* %181, !mcsema_real_eip !38
  store i64 %182, i64* %R10_val, !mcsema_real_eip !38
  %183 = shl nsw i64 %178, 2
  %184 = add i64 %182, %183, !mcsema_real_eip !39
  %185 = inttoptr i64 %184 to i64*, !mcsema_real_eip !39
  %186 = load i64* %RCX_val, !mcsema_real_eip !39
  %187 = trunc i64 %186 to i32, !mcsema_real_eip !39
  %188 = bitcast i64* %185 to i32*
  store i32 %187, i32* %188, !mcsema_real_eip !39
  %189 = load i64* %RBP_val, !mcsema_real_eip !40
  %190 = add i64 %189, -16, !mcsema_real_eip !40
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !40
  %192 = bitcast i64* %191 to i32*
  %193 = load i32* %192, !mcsema_real_eip !40
  %194 = zext i32 %193 to i64, !mcsema_real_eip !40
  store i64 %194, i64* %RCX_val, !mcsema_real_eip !40
  %195 = load i64* %RBP_val, !mcsema_real_eip !41
  %196 = add i64 %195, -16, !mcsema_real_eip !41
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !41
  %198 = bitcast i64* %197 to i32*
  %199 = load i32* %198, !mcsema_real_eip !41
  %200 = sext i32 %199 to i64, !mcsema_real_eip !41
  store i64 %200, i64* %RAX_val, !mcsema_real_eip !41
  %201 = load i64* %RBP_val, !mcsema_real_eip !42
  %202 = add i64 %201, -32, !mcsema_real_eip !42
  %203 = inttoptr i64 %202 to i64*, !mcsema_real_eip !42
  %204 = load i64* %203, !mcsema_real_eip !42
  store i64 %204, i64* %R10_val, !mcsema_real_eip !42
  %205 = shl nsw i64 %200, 2
  %206 = add i64 %204, %205, !mcsema_real_eip !43
  %207 = inttoptr i64 %206 to i64*, !mcsema_real_eip !43
  %208 = load i64* %RCX_val, !mcsema_real_eip !43
  %209 = trunc i64 %208 to i32, !mcsema_real_eip !43
  %210 = bitcast i64* %207 to i32*
  store i32 %209, i32* %210, !mcsema_real_eip !43
  %211 = load i64* %RBP_val, !mcsema_real_eip !44
  %212 = add i64 %211, -20, !mcsema_real_eip !44
  %213 = inttoptr i64 %212 to i64*, !mcsema_real_eip !44
  %214 = bitcast i64* %213 to i32*
  %215 = load i32* %214, !mcsema_real_eip !44
  %216 = zext i32 %215 to i64, !mcsema_real_eip !44
  store i64 %216, i64* %RCX_val, !mcsema_real_eip !44
  %217 = load i64* %RBP_val, !mcsema_real_eip !45
  %218 = add i64 %217, -20, !mcsema_real_eip !45
  %219 = inttoptr i64 %218 to i64*, !mcsema_real_eip !45
  %220 = bitcast i64* %219 to i32*
  %221 = load i32* %220, !mcsema_real_eip !45
  %222 = sext i32 %221 to i64, !mcsema_real_eip !45
  store i64 %222, i64* %RAX_val, !mcsema_real_eip !45
  %223 = load i64* %RBP_val, !mcsema_real_eip !46
  %224 = add i64 %223, -32, !mcsema_real_eip !46
  %225 = inttoptr i64 %224 to i64*, !mcsema_real_eip !46
  %226 = load i64* %225, !mcsema_real_eip !46
  store i64 %226, i64* %R10_val, !mcsema_real_eip !46
  %227 = shl nsw i64 %222, 2
  %228 = add i64 %226, %227, !mcsema_real_eip !47
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !47
  %230 = load i64* %RCX_val, !mcsema_real_eip !47
  %231 = trunc i64 %230 to i32, !mcsema_real_eip !47
  %232 = bitcast i64* %229 to i32*
  store i32 %231, i32* %232, !mcsema_real_eip !47
  %233 = load i64* %RBP_val, !mcsema_real_eip !48
  %234 = add i64 %233, -24, !mcsema_real_eip !48
  %235 = inttoptr i64 %234 to i64*, !mcsema_real_eip !48
  %236 = bitcast i64* %235 to i32*
  %237 = load i32* %236, !mcsema_real_eip !48
  %238 = zext i32 %237 to i64, !mcsema_real_eip !48
  store i64 %238, i64* %RCX_val, !mcsema_real_eip !48
  %239 = load i64* %RBP_val, !mcsema_real_eip !49
  %240 = add i64 %239, -24, !mcsema_real_eip !49
  %241 = inttoptr i64 %240 to i64*, !mcsema_real_eip !49
  %242 = bitcast i64* %241 to i32*
  %243 = load i32* %242, !mcsema_real_eip !49
  %244 = sext i32 %243 to i64, !mcsema_real_eip !49
  store i64 %244, i64* %RAX_val, !mcsema_real_eip !49
  %245 = load i64* %RBP_val, !mcsema_real_eip !50
  %246 = add i64 %245, -32, !mcsema_real_eip !50
  %247 = inttoptr i64 %246 to i64*, !mcsema_real_eip !50
  %248 = load i64* %247, !mcsema_real_eip !50
  store i64 %248, i64* %R10_val, !mcsema_real_eip !50
  %249 = shl nsw i64 %244, 2
  %250 = add i64 %248, %249, !mcsema_real_eip !51
  %251 = inttoptr i64 %250 to i64*, !mcsema_real_eip !51
  %252 = load i64* %RCX_val, !mcsema_real_eip !51
  %253 = trunc i64 %252 to i32, !mcsema_real_eip !51
  %254 = bitcast i64* %251 to i32*
  store i32 %253, i32* %254, !mcsema_real_eip !51
  %255 = load i64* %RBP_val, !mcsema_real_eip !52
  %256 = add i64 %255, -36, !mcsema_real_eip !52
  %257 = inttoptr i64 %256 to i64*, !mcsema_real_eip !52
  %258 = bitcast i64* %257 to i32*
  store i32 0, i32* %258, !mcsema_real_eip !52
  %259 = load i64* %RBP_val, !mcsema_real_eip !53
  %260 = add i64 %259, -40, !mcsema_real_eip !53
  %261 = inttoptr i64 %260 to i64*, !mcsema_real_eip !53
  %262 = bitcast i64* %261 to i32*
  store i32 0, i32* %262, !mcsema_real_eip !53
  %263 = load i64* %RBP_val, !mcsema_real_eip !54
  %264 = add i64 %263, -40, !mcsema_real_eip !54
  %265 = inttoptr i64 %264 to i64*, !mcsema_real_eip !54
  %266 = bitcast i64* %265 to i32*
  %267 = load i32* %266, !mcsema_real_eip !54
  %268 = add i32 %267, -6
  %269 = xor i32 %268, %267, !mcsema_real_eip !54
  %270 = and i32 %269, 16, !mcsema_real_eip !54
  %271 = icmp ne i32 %270, 0, !mcsema_real_eip !54
  store i1 %271, i1* %AF_val, !mcsema_real_eip !54
  %272 = trunc i32 %268 to i8, !mcsema_real_eip !54
  %273 = tail call i8 @llvm.ctpop.i8(i8 %272), !mcsema_real_eip !54
  %274 = and i8 %273, 1
  %275 = icmp eq i8 %274, 0
  store i1 %275, i1* %PF_val, !mcsema_real_eip !54
  %276 = icmp eq i32 %268, 0, !mcsema_real_eip !54
  store i1 %276, i1* %ZF_val, !mcsema_real_eip !54
  %277 = icmp slt i32 %268, 0
  store i1 %277, i1* %SF_val, !mcsema_real_eip !54
  %278 = icmp ult i32 %267, 6, !mcsema_real_eip !54
  store i1 %278, i1* %CF_val, !mcsema_real_eip !54
  %279 = and i32 %269, %267, !mcsema_real_eip !54
  %280 = icmp slt i32 %279, 0
  store i1 %280, i1* %OF_val, !mcsema_real_eip !54
  %tmp = xor i1 %277, %280
  br i1 %tmp, label %block_0x95.preheader, label %block_0xb8, !mcsema_real_eip !55

block_0x95.preheader:                             ; preds = %entry
  br label %block_0x95

block_0xb8.loopexit:                              ; preds = %block_0x95
  br label %block_0xb8

block_0xb8:                                       ; preds = %block_0xb8.loopexit, %entry
  %281 = load i64* %RBP_val, !mcsema_real_eip !56
  %282 = add i64 %281, -36, !mcsema_real_eip !56
  %283 = inttoptr i64 %282 to i64*, !mcsema_real_eip !56
  %284 = bitcast i64* %283 to i32*
  %285 = load i32* %284, !mcsema_real_eip !56
  %286 = zext i32 %285 to i64, !mcsema_real_eip !56
  store i64 %286, i64* %RAX_val, !mcsema_real_eip !56
  %287 = load i64* %RSP_val, !mcsema_real_eip !57
  %288 = inttoptr i64 %287 to i64*, !mcsema_real_eip !57
  %289 = load i64* %288, !mcsema_real_eip !57
  store i64 %289, i64* %RBP_val, !mcsema_real_eip !57
  %290 = add i64 %287, 16, !mcsema_real_eip !58
  store i64 %290, i64* %RSP_val, !mcsema_real_eip !58
  %291 = load i64* %RAX_val, !mcsema_real_eip !58
  store i64 %291, i64* %RAX, !mcsema_real_eip !58
  %292 = load i64* %RBX_val, !mcsema_real_eip !58
  store i64 %292, i64* %RBX, !mcsema_real_eip !58
  %293 = load i64* %RCX_val, !mcsema_real_eip !58
  store i64 %293, i64* %RCX, !mcsema_real_eip !58
  %294 = load i64* %RDX_val, !mcsema_real_eip !58
  store i64 %294, i64* %RDX, !mcsema_real_eip !58
  %295 = load i64* %RSI_val, !mcsema_real_eip !58
  store i64 %295, i64* %RSI, !mcsema_real_eip !58
  %296 = load i64* %RDI_val, !mcsema_real_eip !58
  store i64 %296, i64* %RDI, !mcsema_real_eip !58
  %297 = load i64* %RSP_val, !mcsema_real_eip !58
  store i64 %297, i64* %RSP, !mcsema_real_eip !58
  %298 = load i64* %RBP_val, !mcsema_real_eip !58
  store i64 %298, i64* %RBP, !mcsema_real_eip !58
  %299 = load i64* %R8_val, !mcsema_real_eip !58
  store i64 %299, i64* %R8, !mcsema_real_eip !58
  %300 = load i64* %R9_val, !mcsema_real_eip !58
  store i64 %300, i64* %R9, !mcsema_real_eip !58
  %301 = load i64* %R10_val, !mcsema_real_eip !58
  store i64 %301, i64* %R10, !mcsema_real_eip !58
  %302 = load i64* %R11_val, !mcsema_real_eip !58
  store i64 %302, i64* %R11, !mcsema_real_eip !58
  %303 = load i64* %R12_val, !mcsema_real_eip !58
  store i64 %303, i64* %R12, !mcsema_real_eip !58
  %304 = load i64* %R13_val, !mcsema_real_eip !58
  store i64 %304, i64* %R13, !mcsema_real_eip !58
  %305 = load i64* %R14_val, !mcsema_real_eip !58
  store i64 %305, i64* %R14, !mcsema_real_eip !58
  %306 = load i64* %R15_val, !mcsema_real_eip !58
  store i64 %306, i64* %R15, !mcsema_real_eip !58
  %307 = load i64* %RIP_val, !mcsema_real_eip !58
  store i64 %307, i64* %RIP, !mcsema_real_eip !58
  %308 = load i1* %CF_val, !mcsema_real_eip !58
  store i1 %308, i1* %CF, align 1, !mcsema_real_eip !58
  %309 = load i1* %PF_val, !mcsema_real_eip !58
  store i1 %309, i1* %PF, align 1, !mcsema_real_eip !58
  %310 = load i1* %AF_val, !mcsema_real_eip !58
  store i1 %310, i1* %AF, align 1, !mcsema_real_eip !58
  %311 = load i1* %ZF_val, !mcsema_real_eip !58
  store i1 %311, i1* %ZF, align 1, !mcsema_real_eip !58
  %312 = load i1* %SF_val, !mcsema_real_eip !58
  store i1 %312, i1* %SF, align 1, !mcsema_real_eip !58
  %313 = load i1* %OF_val, !mcsema_real_eip !58
  store i1 %313, i1* %OF, align 1, !mcsema_real_eip !58
  %314 = load i1* %DF_val, !mcsema_real_eip !58
  store i1 %314, i1* %DF, align 1, !mcsema_real_eip !58
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !58
  %315 = load i1* %FPU_B_val, !mcsema_real_eip !58
  store i1 %315, i1* %FPU_B, align 1, !mcsema_real_eip !58
  %316 = load i1* %FPU_C3_val, !mcsema_real_eip !58
  store i1 %316, i1* %FPU_C3, align 1, !mcsema_real_eip !58
  %317 = load i3* %FPU_TOP_val, !mcsema_real_eip !58
  store i3 %317, i3* %FPU_TOP, align 1, !mcsema_real_eip !58
  %318 = load i1* %FPU_C2_val, !mcsema_real_eip !58
  store i1 %318, i1* %FPU_C2, align 1, !mcsema_real_eip !58
  %319 = load i1* %FPU_C1_val, !mcsema_real_eip !58
  store i1 %319, i1* %FPU_C1, align 1, !mcsema_real_eip !58
  %320 = load i1* %FPU_C0_val, !mcsema_real_eip !58
  store i1 %320, i1* %FPU_C0, align 1, !mcsema_real_eip !58
  %321 = load i1* %FPU_ES_val, !mcsema_real_eip !58
  store i1 %321, i1* %FPU_ES, align 1, !mcsema_real_eip !58
  %322 = load i1* %FPU_SF_val, !mcsema_real_eip !58
  store i1 %322, i1* %FPU_SF, align 1, !mcsema_real_eip !58
  %323 = load i1* %FPU_PE_val, !mcsema_real_eip !58
  store i1 %323, i1* %FPU_PE, align 1, !mcsema_real_eip !58
  %324 = load i1* %FPU_UE_val, !mcsema_real_eip !58
  store i1 %324, i1* %FPU_UE, align 1, !mcsema_real_eip !58
  %325 = load i1* %FPU_OE_val, !mcsema_real_eip !58
  store i1 %325, i1* %FPU_OE, align 1, !mcsema_real_eip !58
  %326 = load i1* %FPU_ZE_val, !mcsema_real_eip !58
  store i1 %326, i1* %FPU_ZE, align 1, !mcsema_real_eip !58
  %327 = load i1* %FPU_DE_val, !mcsema_real_eip !58
  store i1 %327, i1* %FPU_DE, align 1, !mcsema_real_eip !58
  %328 = load i1* %FPU_IE_val, !mcsema_real_eip !58
  store i1 %328, i1* %FPU_IE, align 1, !mcsema_real_eip !58
  %329 = load i1* %FPU_X_val, !mcsema_real_eip !58
  store i1 %329, i1* %FPU_X, align 1, !mcsema_real_eip !58
  %330 = load i2* %FPU_RC_val, !mcsema_real_eip !58
  store i2 %330, i2* %FPU_RC, align 1, !mcsema_real_eip !58
  %331 = load i2* %FPU_PC_val, !mcsema_real_eip !58
  store i2 %331, i2* %FPU_PC, align 1, !mcsema_real_eip !58
  %332 = load i1* %FPU_PM_val, !mcsema_real_eip !58
  store i1 %332, i1* %FPU_PM, align 1, !mcsema_real_eip !58
  %333 = load i1* %FPU_UM_val, !mcsema_real_eip !58
  store i1 %333, i1* %FPU_UM, align 1, !mcsema_real_eip !58
  %334 = load i1* %FPU_OM_val, !mcsema_real_eip !58
  store i1 %334, i1* %FPU_OM, align 1, !mcsema_real_eip !58
  %335 = load i1* %FPU_ZM_val, !mcsema_real_eip !58
  store i1 %335, i1* %FPU_ZM, align 1, !mcsema_real_eip !58
  %336 = load i1* %FPU_DM_val, !mcsema_real_eip !58
  store i1 %336, i1* %FPU_DM, align 1, !mcsema_real_eip !58
  %337 = load i1* %FPU_IM_val, !mcsema_real_eip !58
  store i1 %337, i1* %FPU_IM, align 1, !mcsema_real_eip !58
  %338 = load i64* %53, align 4
  store i64 %338, i64* %52, align 4
  %339 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !58
  store i16 %339, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !58
  %340 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !58
  store i64 %340, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !58
  %341 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !58
  store i16 %341, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !58
  %342 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !58
  store i64 %342, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !58
  %343 = load i128* %XMM0_val, !mcsema_real_eip !58
  store i128 %343, i128* %XMM0, align 1, !mcsema_real_eip !58
  %344 = load i128* %XMM1_val, !mcsema_real_eip !58
  store i128 %344, i128* %XMM1, align 1, !mcsema_real_eip !58
  %345 = load i128* %XMM2_val, !mcsema_real_eip !58
  store i128 %345, i128* %XMM2, align 1, !mcsema_real_eip !58
  %346 = load i128* %XMM3_val, !mcsema_real_eip !58
  store i128 %346, i128* %XMM3, align 1, !mcsema_real_eip !58
  %347 = load i128* %XMM4_val, !mcsema_real_eip !58
  store i128 %347, i128* %XMM4, align 1, !mcsema_real_eip !58
  %348 = load i128* %XMM5_val, !mcsema_real_eip !58
  store i128 %348, i128* %XMM5, align 1, !mcsema_real_eip !58
  %349 = load i128* %XMM6_val, !mcsema_real_eip !58
  store i128 %349, i128* %XMM6, align 1, !mcsema_real_eip !58
  %350 = load i128* %XMM7_val, !mcsema_real_eip !58
  store i128 %350, i128* %XMM7, align 1, !mcsema_real_eip !58
  %351 = load i128* %XMM8_val, !mcsema_real_eip !58
  store i128 %351, i128* %XMM8, align 1, !mcsema_real_eip !58
  %352 = load i128* %XMM9_val, !mcsema_real_eip !58
  store i128 %352, i128* %XMM9, align 1, !mcsema_real_eip !58
  %353 = load i128* %XMM10_val, !mcsema_real_eip !58
  store i128 %353, i128* %XMM10, align 1, !mcsema_real_eip !58
  %354 = load i128* %XMM11_val, !mcsema_real_eip !58
  store i128 %354, i128* %XMM11, align 1, !mcsema_real_eip !58
  %355 = load i128* %XMM12_val, !mcsema_real_eip !58
  store i128 %355, i128* %XMM12, align 1, !mcsema_real_eip !58
  %356 = load i128* %XMM13_val, !mcsema_real_eip !58
  store i128 %356, i128* %XMM13, align 1, !mcsema_real_eip !58
  %357 = load i128* %XMM14_val, !mcsema_real_eip !58
  store i128 %357, i128* %XMM14, align 1, !mcsema_real_eip !58
  %358 = load i128* %XMM15_val, !mcsema_real_eip !58
  store i128 %358, i128* %XMM15, align 1, !mcsema_real_eip !58
  %359 = load i64* %STACK_BASE_val, !mcsema_real_eip !58
  store i64 %359, i64* %STACK_BASE, align 1, !mcsema_real_eip !58
  %360 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !58
  store i64 %360, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !58
  ret void, !mcsema_real_eip !58

block_0x95:                                       ; preds = %block_0x95, %block_0x95.preheader
  %361 = load i64* %RBP_val, !mcsema_real_eip !59
  %362 = add i64 %361, -40, !mcsema_real_eip !59
  %363 = inttoptr i64 %362 to i64*, !mcsema_real_eip !59
  %364 = bitcast i64* %363 to i32*
  %365 = load i32* %364, !mcsema_real_eip !59
  %366 = sext i32 %365 to i64, !mcsema_real_eip !59
  store i64 %366, i64* %RAX_val, !mcsema_real_eip !59
  %367 = load i64* %RBP_val, !mcsema_real_eip !60
  %368 = add i64 %367, -32, !mcsema_real_eip !60
  %369 = inttoptr i64 %368 to i64*, !mcsema_real_eip !60
  %370 = load i64* %369, !mcsema_real_eip !60
  store i64 %370, i64* %RCX_val, !mcsema_real_eip !60
  %371 = shl nsw i64 %366, 2
  %372 = add i64 %370, %371, !mcsema_real_eip !61
  %373 = inttoptr i64 %372 to i64*, !mcsema_real_eip !61
  %374 = bitcast i64* %373 to i32*
  %375 = load i32* %374, !mcsema_real_eip !61
  %376 = zext i32 %375 to i64, !mcsema_real_eip !61
  store i64 %376, i64* %RDX_val, !mcsema_real_eip !61
  %377 = load i64* %RBP_val, !mcsema_real_eip !62
  %378 = add i64 %377, -36, !mcsema_real_eip !62
  %379 = inttoptr i64 %378 to i64*, !mcsema_real_eip !62
  %380 = bitcast i64* %379 to i32*
  %381 = load i32* %380, !mcsema_real_eip !62
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %375, i32 %381)
  %382 = extractvalue { i32, i1 } %uadd, 0
  %383 = xor i32 %382, %381, !mcsema_real_eip !63
  %384 = xor i32 %383, %375, !mcsema_real_eip !63
  %385 = and i32 %384, 16, !mcsema_real_eip !63
  %386 = icmp ne i32 %385, 0, !mcsema_real_eip !63
  store i1 %386, i1* %AF_val, !mcsema_real_eip !63
  %387 = icmp slt i32 %382, 0
  store i1 %387, i1* %SF_val, !mcsema_real_eip !63
  %388 = icmp eq i32 %382, 0, !mcsema_real_eip !63
  store i1 %388, i1* %ZF_val, !mcsema_real_eip !63
  %389 = xor i32 %381, -2147483648, !mcsema_real_eip !63
  %390 = xor i32 %389, %375, !mcsema_real_eip !63
  %391 = and i32 %383, %390, !mcsema_real_eip !63
  %392 = icmp slt i32 %391, 0
  store i1 %392, i1* %OF_val, !mcsema_real_eip !63
  %393 = trunc i32 %382 to i8, !mcsema_real_eip !63
  %394 = tail call i8 @llvm.ctpop.i8(i8 %393), !mcsema_real_eip !63
  %395 = and i8 %394, 1
  %396 = icmp eq i8 %395, 0
  store i1 %396, i1* %PF_val, !mcsema_real_eip !63
  %397 = extractvalue { i32, i1 } %uadd, 1
  store i1 %397, i1* %CF_val, !mcsema_real_eip !63
  %398 = zext i32 %382 to i64, !mcsema_real_eip !63
  store i64 %398, i64* %RSI_val, !mcsema_real_eip !63
  %399 = load i64* %RBP_val, !mcsema_real_eip !64
  %400 = add i64 %399, -36, !mcsema_real_eip !64
  %401 = inttoptr i64 %400 to i64*, !mcsema_real_eip !64
  %402 = bitcast i64* %401 to i32*
  store i32 %382, i32* %402, !mcsema_real_eip !64
  %403 = load i64* %RBP_val, !mcsema_real_eip !65
  %404 = add i64 %403, -40, !mcsema_real_eip !65
  %405 = inttoptr i64 %404 to i64*, !mcsema_real_eip !65
  %406 = bitcast i64* %405 to i32*
  %407 = load i32* %406, !mcsema_real_eip !65
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %407, i32 1)
  %408 = extractvalue { i32, i1 } %uadd70, 0
  %409 = xor i32 %408, %407, !mcsema_real_eip !66
  %410 = and i32 %409, 16, !mcsema_real_eip !66
  %411 = icmp ne i32 %410, 0, !mcsema_real_eip !66
  store i1 %411, i1* %AF_val, !mcsema_real_eip !66
  %412 = icmp slt i32 %408, 0
  store i1 %412, i1* %SF_val, !mcsema_real_eip !66
  %413 = icmp eq i32 %408, 0, !mcsema_real_eip !66
  store i1 %413, i1* %ZF_val, !mcsema_real_eip !66
  %414 = xor i32 %407, -2147483648, !mcsema_real_eip !66
  %415 = and i32 %409, %414, !mcsema_real_eip !66
  %416 = icmp slt i32 %415, 0
  store i1 %416, i1* %OF_val, !mcsema_real_eip !66
  %417 = trunc i32 %408 to i8, !mcsema_real_eip !66
  %418 = tail call i8 @llvm.ctpop.i8(i8 %417), !mcsema_real_eip !66
  %419 = and i8 %418, 1
  %420 = icmp eq i8 %419, 0
  store i1 %420, i1* %PF_val, !mcsema_real_eip !66
  %421 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %421, i1* %CF_val, !mcsema_real_eip !66
  %422 = zext i32 %408 to i64, !mcsema_real_eip !66
  store i64 %422, i64* %RAX_val, !mcsema_real_eip !66
  %423 = load i64* %RBP_val, !mcsema_real_eip !67
  %424 = add i64 %423, -40, !mcsema_real_eip !67
  %425 = inttoptr i64 %424 to i64*, !mcsema_real_eip !67
  %426 = bitcast i64* %425 to i32*
  store i32 %408, i32* %426, !mcsema_real_eip !67
  %427 = load i64* %RBP_val, !mcsema_real_eip !54
  %428 = add i64 %427, -40, !mcsema_real_eip !54
  %429 = inttoptr i64 %428 to i64*, !mcsema_real_eip !54
  %430 = bitcast i64* %429 to i32*
  %431 = load i32* %430, !mcsema_real_eip !54
  %432 = add i32 %431, -6
  %433 = xor i32 %432, %431, !mcsema_real_eip !54
  %434 = and i32 %433, 16, !mcsema_real_eip !54
  %435 = icmp ne i32 %434, 0, !mcsema_real_eip !54
  store i1 %435, i1* %AF_val, !mcsema_real_eip !54
  %436 = trunc i32 %432 to i8, !mcsema_real_eip !54
  %437 = tail call i8 @llvm.ctpop.i8(i8 %436), !mcsema_real_eip !54
  %438 = and i8 %437, 1
  %439 = icmp eq i8 %438, 0
  store i1 %439, i1* %PF_val, !mcsema_real_eip !54
  %440 = icmp eq i32 %432, 0, !mcsema_real_eip !54
  store i1 %440, i1* %ZF_val, !mcsema_real_eip !54
  %441 = icmp slt i32 %432, 0
  store i1 %441, i1* %SF_val, !mcsema_real_eip !54
  %442 = icmp ult i32 %431, 6, !mcsema_real_eip !54
  store i1 %442, i1* %CF_val, !mcsema_real_eip !54
  %443 = and i32 %433, %431, !mcsema_real_eip !54
  %444 = icmp slt i32 %443, 0
  store i1 %444, i1* %OF_val, !mcsema_real_eip !54
  %tmp71 = xor i1 %441, %444
  br i1 %tmp71, label %block_0x95, label %block_0xb8.loopexit, !mcsema_real_eip !55
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_c0(%struct.regs* %0)
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
!2 = metadata !{i64 192, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 193, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = metadata !{i64 196, [16 x i8] c"\09subq\09$48, %rsp\00"}
!5 = metadata !{i64 200, [15 x i8] c"\09movl\09$0, %edi\00"}
!6 = metadata !{i64 205, [15 x i8] c"\09movl\09$1, %esi\00"}
!7 = metadata !{i64 210, [15 x i8] c"\09movl\09$2, %edx\00"}
!8 = metadata !{i64 215, [15 x i8] c"\09movl\09$3, %ecx\00"}
!9 = metadata !{i64 220, [15 x i8] c"\09movl\09$4, %r8d\00"}
!10 = metadata !{i64 226, [15 x i8] c"\09movl\09$5, %r9d\00"}
!11 = metadata !{i64 232, [22 x i8] c"\09leaq\09-32(%rbp), %rax\00"}
!12 = metadata !{i64 236, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!13 = metadata !{i64 243, [19 x i8] c"\09movq\09%rax, (%rsp)\00"}
!14 = metadata !{i64 247, [12 x i8] c"\09callq\09-252\00"}
!15 = metadata !{i64 252, [16 x i8] c"\09addq\09$48, %rsp\00"}
!16 = metadata !{i64 256, [11 x i8] c"\09popq\09%rbp\00"}
!17 = metadata !{i64 257, [6 x i8] c"\09retq\00"}
!18 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!19 = metadata !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!20 = metadata !{i64 4, [21 x i8] c"\09movq\0916(%rbp), %rax\00"}
!21 = metadata !{i64 8, [21 x i8] c"\09movl\09%edi, -4(%rbp)\00"}
!22 = metadata !{i64 11, [21 x i8] c"\09movl\09%esi, -8(%rbp)\00"}
!23 = metadata !{i64 14, [22 x i8] c"\09movl\09%edx, -12(%rbp)\00"}
!24 = metadata !{i64 17, [22 x i8] c"\09movl\09%ecx, -16(%rbp)\00"}
!25 = metadata !{i64 20, [22 x i8] c"\09movl\09%r8d, -20(%rbp)\00"}
!26 = metadata !{i64 24, [22 x i8] c"\09movl\09%r9d, -24(%rbp)\00"}
!27 = metadata !{i64 28, [22 x i8] c"\09movq\09%rax, -32(%rbp)\00"}
!28 = metadata !{i64 32, [21 x i8] c"\09movl\09-4(%rbp), %ecx\00"}
!29 = metadata !{i64 35, [23 x i8] c"\09movslq\09-4(%rbp), %rax\00"}
!30 = metadata !{i64 39, [22 x i8] c"\09movq\09-32(%rbp), %r10\00"}
!31 = metadata !{i64 43, [26 x i8] c"\09movl\09%ecx, (%r10,%rax,4)\00"}
!32 = metadata !{i64 47, [21 x i8] c"\09movl\09-8(%rbp), %ecx\00"}
!33 = metadata !{i64 50, [23 x i8] c"\09movslq\09-8(%rbp), %rax\00"}
!34 = metadata !{i64 54, [22 x i8] c"\09movq\09-32(%rbp), %r10\00"}
!35 = metadata !{i64 58, [26 x i8] c"\09movl\09%ecx, (%r10,%rax,4)\00"}
!36 = metadata !{i64 62, [22 x i8] c"\09movl\09-12(%rbp), %ecx\00"}
!37 = metadata !{i64 65, [24 x i8] c"\09movslq\09-12(%rbp), %rax\00"}
!38 = metadata !{i64 69, [22 x i8] c"\09movq\09-32(%rbp), %r10\00"}
!39 = metadata !{i64 73, [26 x i8] c"\09movl\09%ecx, (%r10,%rax,4)\00"}
!40 = metadata !{i64 77, [22 x i8] c"\09movl\09-16(%rbp), %ecx\00"}
!41 = metadata !{i64 80, [24 x i8] c"\09movslq\09-16(%rbp), %rax\00"}
!42 = metadata !{i64 84, [22 x i8] c"\09movq\09-32(%rbp), %r10\00"}
!43 = metadata !{i64 88, [26 x i8] c"\09movl\09%ecx, (%r10,%rax,4)\00"}
!44 = metadata !{i64 92, [22 x i8] c"\09movl\09-20(%rbp), %ecx\00"}
!45 = metadata !{i64 95, [24 x i8] c"\09movslq\09-20(%rbp), %rax\00"}
!46 = metadata !{i64 99, [22 x i8] c"\09movq\09-32(%rbp), %r10\00"}
!47 = metadata !{i64 103, [26 x i8] c"\09movl\09%ecx, (%r10,%rax,4)\00"}
!48 = metadata !{i64 107, [22 x i8] c"\09movl\09-24(%rbp), %ecx\00"}
!49 = metadata !{i64 110, [24 x i8] c"\09movslq\09-24(%rbp), %rax\00"}
!50 = metadata !{i64 114, [22 x i8] c"\09movq\09-32(%rbp), %r10\00"}
!51 = metadata !{i64 118, [26 x i8] c"\09movl\09%ecx, (%r10,%rax,4)\00"}
!52 = metadata !{i64 122, [20 x i8] c"\09movl\09$0, -36(%rbp)\00"}
!53 = metadata !{i64 129, [20 x i8] c"\09movl\09$0, -40(%rbp)\00"}
!54 = metadata !{i64 136, [20 x i8] c"\09cmpl\09$6, -40(%rbp)\00"}
!55 = metadata !{i64 143, [8 x i8] c"\09jge\0935\00"}
!56 = metadata !{i64 184, [22 x i8] c"\09movl\09-36(%rbp), %eax\00"}
!57 = metadata !{i64 187, [11 x i8] c"\09popq\09%rbp\00"}
!58 = metadata !{i64 188, [6 x i8] c"\09retq\00"}
!59 = metadata !{i64 149, [24 x i8] c"\09movslq\09-40(%rbp), %rax\00"}
!60 = metadata !{i64 153, [22 x i8] c"\09movq\09-32(%rbp), %rcx\00"}
!61 = metadata !{i64 157, [26 x i8] c"\09movl\09(%rcx,%rax,4), %edx\00"}
!62 = metadata !{i64 160, [22 x i8] c"\09movl\09-36(%rbp), %esi\00"}
!63 = metadata !{i64 163, [17 x i8] c"\09addl\09%edx, %esi\00"}
!64 = metadata !{i64 165, [22 x i8] c"\09movl\09%esi, -36(%rbp)\00"}
!65 = metadata !{i64 168, [22 x i8] c"\09movl\09-40(%rbp), %eax\00"}
!66 = metadata !{i64 171, [15 x i8] c"\09addl\09$1, %eax\00"}
!67 = metadata !{i64 176, [22 x i8] c"\09movl\09%eax, -40(%rbp)\00"}
