; ModuleID = 'test_2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_61(%struct.regs*) #0 {
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
  %94 = add i64 %78, -32, !mcsema_real_eip !5
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !5
  %96 = bitcast i64* %95 to i32*
  store i32 80, i32* %96, !mcsema_real_eip !5
  %97 = load i64* %RSP_val, !mcsema_real_eip !6
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !6
  %99 = bitcast i64* %98 to i32*
  store i32 70, i32* %99, !mcsema_real_eip !6
  store i64 60, i64* %R9_val, !mcsema_real_eip !7
  store i64 50, i64* %R8_val, !mcsema_real_eip !8
  store i64 40, i64* %RCX_val, !mcsema_real_eip !9
  store i64 30, i64* %RDX_val, !mcsema_real_eip !10
  store i64 20, i64* %RSI_val, !mcsema_real_eip !11
  store i64 10, i64* %RDI_val, !mcsema_real_eip !12
  %100 = load i64* %RSP_val, !mcsema_real_eip !13
  %101 = add i64 %100, -8
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !13
  store i64 -4981261766360305936, i64* %102, !mcsema_real_eip !13
  store i64 %101, i64* %RSP_val, !mcsema_real_eip !13
  %103 = load i64* %RAX_val, !mcsema_real_eip !13
  store i64 %103, i64* %RAX, !mcsema_real_eip !13
  %104 = load i64* %RBX_val, !mcsema_real_eip !13
  store i64 %104, i64* %RBX, !mcsema_real_eip !13
  %105 = load i64* %RCX_val, !mcsema_real_eip !13
  store i64 %105, i64* %RCX, !mcsema_real_eip !13
  %106 = load i64* %RDX_val, !mcsema_real_eip !13
  store i64 %106, i64* %RDX, !mcsema_real_eip !13
  %107 = load i64* %RSI_val, !mcsema_real_eip !13
  store i64 %107, i64* %RSI, !mcsema_real_eip !13
  %108 = load i64* %RDI_val, !mcsema_real_eip !13
  store i64 %108, i64* %RDI, !mcsema_real_eip !13
  %109 = load i64* %RSP_val, !mcsema_real_eip !13
  store i64 %109, i64* %RSP, !mcsema_real_eip !13
  %110 = load i64* %RBP_val, !mcsema_real_eip !13
  store i64 %110, i64* %RBP, !mcsema_real_eip !13
  %111 = load i64* %R8_val, !mcsema_real_eip !13
  store i64 %111, i64* %R8, !mcsema_real_eip !13
  %112 = load i64* %R9_val, !mcsema_real_eip !13
  store i64 %112, i64* %R9, !mcsema_real_eip !13
  %113 = load i64* %R10_val, !mcsema_real_eip !13
  store i64 %113, i64* %R10, !mcsema_real_eip !13
  %114 = load i64* %R11_val, !mcsema_real_eip !13
  store i64 %114, i64* %R11, !mcsema_real_eip !13
  %115 = load i64* %R12_val, !mcsema_real_eip !13
  store i64 %115, i64* %R12, !mcsema_real_eip !13
  %116 = load i64* %R13_val, !mcsema_real_eip !13
  store i64 %116, i64* %R13, !mcsema_real_eip !13
  %117 = load i64* %R14_val, !mcsema_real_eip !13
  store i64 %117, i64* %R14, !mcsema_real_eip !13
  %118 = load i64* %R15_val, !mcsema_real_eip !13
  store i64 %118, i64* %R15, !mcsema_real_eip !13
  %119 = load i64* %RIP_val, !mcsema_real_eip !13
  store i64 %119, i64* %RIP, !mcsema_real_eip !13
  %120 = load i1* %CF_val, !mcsema_real_eip !13
  store i1 %120, i1* %CF, align 1, !mcsema_real_eip !13
  %121 = load i1* %PF_val, !mcsema_real_eip !13
  store i1 %121, i1* %PF, align 1, !mcsema_real_eip !13
  %122 = load i1* %AF_val, !mcsema_real_eip !13
  store i1 %122, i1* %AF, align 1, !mcsema_real_eip !13
  %123 = load i1* %ZF_val, !mcsema_real_eip !13
  store i1 %123, i1* %ZF, align 1, !mcsema_real_eip !13
  %124 = load i1* %SF_val, !mcsema_real_eip !13
  store i1 %124, i1* %SF, align 1, !mcsema_real_eip !13
  %125 = load i1* %OF_val, !mcsema_real_eip !13
  store i1 %125, i1* %OF, align 1, !mcsema_real_eip !13
  %126 = load i1* %DF_val, !mcsema_real_eip !13
  store i1 %126, i1* %DF, align 1, !mcsema_real_eip !13
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !13
  %127 = load i1* %FPU_B_val, !mcsema_real_eip !13
  store i1 %127, i1* %FPU_B, align 1, !mcsema_real_eip !13
  %128 = load i1* %FPU_C3_val, !mcsema_real_eip !13
  store i1 %128, i1* %FPU_C3, align 1, !mcsema_real_eip !13
  %129 = load i3* %FPU_TOP_val, !mcsema_real_eip !13
  store i3 %129, i3* %FPU_TOP, align 1, !mcsema_real_eip !13
  %130 = load i1* %FPU_C2_val, !mcsema_real_eip !13
  store i1 %130, i1* %FPU_C2, align 1, !mcsema_real_eip !13
  %131 = load i1* %FPU_C1_val, !mcsema_real_eip !13
  store i1 %131, i1* %FPU_C1, align 1, !mcsema_real_eip !13
  %132 = load i1* %FPU_C0_val, !mcsema_real_eip !13
  store i1 %132, i1* %FPU_C0, align 1, !mcsema_real_eip !13
  %133 = load i1* %FPU_ES_val, !mcsema_real_eip !13
  store i1 %133, i1* %FPU_ES, align 1, !mcsema_real_eip !13
  %134 = load i1* %FPU_SF_val, !mcsema_real_eip !13
  store i1 %134, i1* %FPU_SF, align 1, !mcsema_real_eip !13
  %135 = load i1* %FPU_PE_val, !mcsema_real_eip !13
  store i1 %135, i1* %FPU_PE, align 1, !mcsema_real_eip !13
  %136 = load i1* %FPU_UE_val, !mcsema_real_eip !13
  store i1 %136, i1* %FPU_UE, align 1, !mcsema_real_eip !13
  %137 = load i1* %FPU_OE_val, !mcsema_real_eip !13
  store i1 %137, i1* %FPU_OE, align 1, !mcsema_real_eip !13
  %138 = load i1* %FPU_ZE_val, !mcsema_real_eip !13
  store i1 %138, i1* %FPU_ZE, align 1, !mcsema_real_eip !13
  %139 = load i1* %FPU_DE_val, !mcsema_real_eip !13
  store i1 %139, i1* %FPU_DE, align 1, !mcsema_real_eip !13
  %140 = load i1* %FPU_IE_val, !mcsema_real_eip !13
  store i1 %140, i1* %FPU_IE, align 1, !mcsema_real_eip !13
  %141 = load i1* %FPU_X_val, !mcsema_real_eip !13
  store i1 %141, i1* %FPU_X, align 1, !mcsema_real_eip !13
  %142 = load i2* %FPU_RC_val, !mcsema_real_eip !13
  store i2 %142, i2* %FPU_RC, align 1, !mcsema_real_eip !13
  %143 = load i2* %FPU_PC_val, !mcsema_real_eip !13
  store i2 %143, i2* %FPU_PC, align 1, !mcsema_real_eip !13
  %144 = load i1* %FPU_PM_val, !mcsema_real_eip !13
  store i1 %144, i1* %FPU_PM, align 1, !mcsema_real_eip !13
  %145 = load i1* %FPU_UM_val, !mcsema_real_eip !13
  store i1 %145, i1* %FPU_UM, align 1, !mcsema_real_eip !13
  %146 = load i1* %FPU_OM_val, !mcsema_real_eip !13
  store i1 %146, i1* %FPU_OM, align 1, !mcsema_real_eip !13
  %147 = load i1* %FPU_ZM_val, !mcsema_real_eip !13
  store i1 %147, i1* %FPU_ZM, align 1, !mcsema_real_eip !13
  %148 = load i1* %FPU_DM_val, !mcsema_real_eip !13
  store i1 %148, i1* %FPU_DM, align 1, !mcsema_real_eip !13
  %149 = load i1* %FPU_IM_val, !mcsema_real_eip !13
  store i1 %149, i1* %FPU_IM, align 1, !mcsema_real_eip !13
  %150 = load i64* %53, align 4
  store i64 %150, i64* %52, align 4
  %151 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !13
  store i16 %151, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !13
  %152 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !13
  store i64 %152, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !13
  %153 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !13
  store i16 %153, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !13
  %154 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !13
  store i64 %154, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !13
  %155 = load i128* %XMM0_val, !mcsema_real_eip !13
  store i128 %155, i128* %XMM0, align 1, !mcsema_real_eip !13
  %156 = load i128* %XMM1_val, !mcsema_real_eip !13
  store i128 %156, i128* %XMM1, align 1, !mcsema_real_eip !13
  %157 = load i128* %XMM2_val, !mcsema_real_eip !13
  store i128 %157, i128* %XMM2, align 1, !mcsema_real_eip !13
  %158 = load i128* %XMM3_val, !mcsema_real_eip !13
  store i128 %158, i128* %XMM3, align 1, !mcsema_real_eip !13
  %159 = load i128* %XMM4_val, !mcsema_real_eip !13
  store i128 %159, i128* %XMM4, align 1, !mcsema_real_eip !13
  %160 = load i128* %XMM5_val, !mcsema_real_eip !13
  store i128 %160, i128* %XMM5, align 1, !mcsema_real_eip !13
  %161 = load i128* %XMM6_val, !mcsema_real_eip !13
  store i128 %161, i128* %XMM6, align 1, !mcsema_real_eip !13
  %162 = load i128* %XMM7_val, !mcsema_real_eip !13
  store i128 %162, i128* %XMM7, align 1, !mcsema_real_eip !13
  %163 = load i128* %XMM8_val, !mcsema_real_eip !13
  store i128 %163, i128* %XMM8, align 1, !mcsema_real_eip !13
  %164 = load i128* %XMM9_val, !mcsema_real_eip !13
  store i128 %164, i128* %XMM9, align 1, !mcsema_real_eip !13
  %165 = load i128* %XMM10_val, !mcsema_real_eip !13
  store i128 %165, i128* %XMM10, align 1, !mcsema_real_eip !13
  %166 = load i128* %XMM11_val, !mcsema_real_eip !13
  store i128 %166, i128* %XMM11, align 1, !mcsema_real_eip !13
  %167 = load i128* %XMM12_val, !mcsema_real_eip !13
  store i128 %167, i128* %XMM12, align 1, !mcsema_real_eip !13
  %168 = load i128* %XMM13_val, !mcsema_real_eip !13
  store i128 %168, i128* %XMM13, align 1, !mcsema_real_eip !13
  %169 = load i128* %XMM14_val, !mcsema_real_eip !13
  store i128 %169, i128* %XMM14, align 1, !mcsema_real_eip !13
  %170 = load i128* %XMM15_val, !mcsema_real_eip !13
  store i128 %170, i128* %XMM15, align 1, !mcsema_real_eip !13
  %171 = load i64* %STACK_BASE_val, !mcsema_real_eip !13
  store i64 %171, i64* %STACK_BASE, align 1, !mcsema_real_eip !13
  %172 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !13
  store i64 %172, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !13
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !13
  %173 = load i64* %RAX, !mcsema_real_eip !13
  store i64 %173, i64* %RAX_val, !mcsema_real_eip !13
  %174 = load i64* %RBX, !mcsema_real_eip !13
  store i64 %174, i64* %RBX_val, !mcsema_real_eip !13
  %175 = load i64* %RCX, !mcsema_real_eip !13
  store i64 %175, i64* %RCX_val, !mcsema_real_eip !13
  %176 = load i64* %RDX, !mcsema_real_eip !13
  store i64 %176, i64* %RDX_val, !mcsema_real_eip !13
  %177 = load i64* %RSI, !mcsema_real_eip !13
  store i64 %177, i64* %RSI_val, !mcsema_real_eip !13
  %178 = load i64* %RDI, !mcsema_real_eip !13
  store i64 %178, i64* %RDI_val, !mcsema_real_eip !13
  %179 = load i64* %RSP, !mcsema_real_eip !13
  store i64 %179, i64* %RSP_val, !mcsema_real_eip !13
  %180 = load i64* %RBP, !mcsema_real_eip !13
  store i64 %180, i64* %RBP_val, !mcsema_real_eip !13
  %181 = load i64* %R8, !mcsema_real_eip !13
  store i64 %181, i64* %R8_val, !mcsema_real_eip !13
  %182 = load i64* %R9, !mcsema_real_eip !13
  store i64 %182, i64* %R9_val, !mcsema_real_eip !13
  %183 = load i64* %R10, !mcsema_real_eip !13
  store i64 %183, i64* %R10_val, !mcsema_real_eip !13
  %184 = load i64* %R11, !mcsema_real_eip !13
  store i64 %184, i64* %R11_val, !mcsema_real_eip !13
  %185 = load i64* %R12, !mcsema_real_eip !13
  store i64 %185, i64* %R12_val, !mcsema_real_eip !13
  %186 = load i64* %R13, !mcsema_real_eip !13
  store i64 %186, i64* %R13_val, !mcsema_real_eip !13
  %187 = load i64* %R14, !mcsema_real_eip !13
  store i64 %187, i64* %R14_val, !mcsema_real_eip !13
  %188 = load i64* %R15, !mcsema_real_eip !13
  store i64 %188, i64* %R15_val, !mcsema_real_eip !13
  %189 = load i64* %RIP, !mcsema_real_eip !13
  store i64 %189, i64* %RIP_val, !mcsema_real_eip !13
  %190 = load i1* %CF, align 1, !mcsema_real_eip !13
  store i1 %190, i1* %CF_val, !mcsema_real_eip !13
  %191 = load i1* %PF, align 1, !mcsema_real_eip !13
  store i1 %191, i1* %PF_val, !mcsema_real_eip !13
  %192 = load i1* %AF, align 1, !mcsema_real_eip !13
  store i1 %192, i1* %AF_val, !mcsema_real_eip !13
  %193 = load i1* %ZF, align 1, !mcsema_real_eip !13
  store i1 %193, i1* %ZF_val, !mcsema_real_eip !13
  %194 = load i1* %SF, align 1, !mcsema_real_eip !13
  store i1 %194, i1* %SF_val, !mcsema_real_eip !13
  %195 = load i1* %OF, align 1, !mcsema_real_eip !13
  store i1 %195, i1* %OF_val, !mcsema_real_eip !13
  %196 = load i1* %DF, align 1, !mcsema_real_eip !13
  store i1 %196, i1* %DF_val, !mcsema_real_eip !13
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !13
  %197 = load i1* %FPU_B, align 1, !mcsema_real_eip !13
  store i1 %197, i1* %FPU_B_val, !mcsema_real_eip !13
  %198 = load i1* %FPU_C3, align 1, !mcsema_real_eip !13
  store i1 %198, i1* %FPU_C3_val, !mcsema_real_eip !13
  %199 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !13
  store i3 %199, i3* %FPU_TOP_val, !mcsema_real_eip !13
  %200 = load i1* %FPU_C2, align 1, !mcsema_real_eip !13
  store i1 %200, i1* %FPU_C2_val, !mcsema_real_eip !13
  %201 = load i1* %FPU_C1, align 1, !mcsema_real_eip !13
  store i1 %201, i1* %FPU_C1_val, !mcsema_real_eip !13
  %202 = load i1* %FPU_C0, align 1, !mcsema_real_eip !13
  store i1 %202, i1* %FPU_C0_val, !mcsema_real_eip !13
  %203 = load i1* %FPU_ES, align 1, !mcsema_real_eip !13
  store i1 %203, i1* %FPU_ES_val, !mcsema_real_eip !13
  %204 = load i1* %FPU_SF, align 1, !mcsema_real_eip !13
  store i1 %204, i1* %FPU_SF_val, !mcsema_real_eip !13
  %205 = load i1* %FPU_PE, align 1, !mcsema_real_eip !13
  store i1 %205, i1* %FPU_PE_val, !mcsema_real_eip !13
  %206 = load i1* %FPU_UE, align 1, !mcsema_real_eip !13
  store i1 %206, i1* %FPU_UE_val, !mcsema_real_eip !13
  %207 = load i1* %FPU_OE, align 1, !mcsema_real_eip !13
  store i1 %207, i1* %FPU_OE_val, !mcsema_real_eip !13
  %208 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !13
  store i1 %208, i1* %FPU_ZE_val, !mcsema_real_eip !13
  %209 = load i1* %FPU_DE, align 1, !mcsema_real_eip !13
  store i1 %209, i1* %FPU_DE_val, !mcsema_real_eip !13
  %210 = load i1* %FPU_IE, align 1, !mcsema_real_eip !13
  store i1 %210, i1* %FPU_IE_val, !mcsema_real_eip !13
  %211 = load i1* %FPU_X, align 1, !mcsema_real_eip !13
  store i1 %211, i1* %FPU_X_val, !mcsema_real_eip !13
  %212 = load i2* %FPU_RC, align 1, !mcsema_real_eip !13
  store i2 %212, i2* %FPU_RC_val, !mcsema_real_eip !13
  %213 = load i2* %FPU_PC, align 1, !mcsema_real_eip !13
  store i2 %213, i2* %FPU_PC_val, !mcsema_real_eip !13
  %214 = load i1* %FPU_PM, align 1, !mcsema_real_eip !13
  store i1 %214, i1* %FPU_PM_val, !mcsema_real_eip !13
  %215 = load i1* %FPU_UM, align 1, !mcsema_real_eip !13
  store i1 %215, i1* %FPU_UM_val, !mcsema_real_eip !13
  %216 = load i1* %FPU_OM, align 1, !mcsema_real_eip !13
  store i1 %216, i1* %FPU_OM_val, !mcsema_real_eip !13
  %217 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !13
  store i1 %217, i1* %FPU_ZM_val, !mcsema_real_eip !13
  %218 = load i1* %FPU_DM, align 1, !mcsema_real_eip !13
  store i1 %218, i1* %FPU_DM_val, !mcsema_real_eip !13
  %219 = load i1* %FPU_IM, align 1, !mcsema_real_eip !13
  store i1 %219, i1* %FPU_IM_val, !mcsema_real_eip !13
  %220 = load i64* %52, align 4
  store i64 %220, i64* %53, align 4
  %221 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !13
  store i16 %221, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !13
  %222 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !13
  store i64 %222, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !13
  %223 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !13
  store i16 %223, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !13
  %224 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !13
  store i64 %224, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !13
  %225 = load i128* %XMM0, align 1, !mcsema_real_eip !13
  store i128 %225, i128* %XMM0_val, !mcsema_real_eip !13
  %226 = load i128* %XMM1, align 1, !mcsema_real_eip !13
  store i128 %226, i128* %XMM1_val, !mcsema_real_eip !13
  %227 = load i128* %XMM2, align 1, !mcsema_real_eip !13
  store i128 %227, i128* %XMM2_val, !mcsema_real_eip !13
  %228 = load i128* %XMM3, align 1, !mcsema_real_eip !13
  store i128 %228, i128* %XMM3_val, !mcsema_real_eip !13
  %229 = load i128* %XMM4, align 1, !mcsema_real_eip !13
  store i128 %229, i128* %XMM4_val, !mcsema_real_eip !13
  %230 = load i128* %XMM5, align 1, !mcsema_real_eip !13
  store i128 %230, i128* %XMM5_val, !mcsema_real_eip !13
  %231 = load i128* %XMM6, align 1, !mcsema_real_eip !13
  store i128 %231, i128* %XMM6_val, !mcsema_real_eip !13
  %232 = load i128* %XMM7, align 1, !mcsema_real_eip !13
  store i128 %232, i128* %XMM7_val, !mcsema_real_eip !13
  %233 = load i128* %XMM8, align 1, !mcsema_real_eip !13
  store i128 %233, i128* %XMM8_val, !mcsema_real_eip !13
  %234 = load i128* %XMM9, align 1, !mcsema_real_eip !13
  store i128 %234, i128* %XMM9_val, !mcsema_real_eip !13
  %235 = load i128* %XMM10, align 1, !mcsema_real_eip !13
  store i128 %235, i128* %XMM10_val, !mcsema_real_eip !13
  %236 = load i128* %XMM11, align 1, !mcsema_real_eip !13
  store i128 %236, i128* %XMM11_val, !mcsema_real_eip !13
  %237 = load i128* %XMM12, align 1, !mcsema_real_eip !13
  store i128 %237, i128* %XMM12_val, !mcsema_real_eip !13
  %238 = load i128* %XMM13, align 1, !mcsema_real_eip !13
  store i128 %238, i128* %XMM13_val, !mcsema_real_eip !13
  %239 = load i128* %XMM14, align 1, !mcsema_real_eip !13
  store i128 %239, i128* %XMM14_val, !mcsema_real_eip !13
  %240 = load i128* %XMM15, align 1, !mcsema_real_eip !13
  store i128 %240, i128* %XMM15_val, !mcsema_real_eip !13
  %241 = load i64* %STACK_BASE, !mcsema_real_eip !13
  store i64 %241, i64* %STACK_BASE_val, !mcsema_real_eip !13
  %242 = load i64* %STACK_LIMIT, !mcsema_real_eip !13
  store i64 %242, i64* %STACK_LIMIT_val, !mcsema_real_eip !13
  %243 = load i64* %RBP_val, !mcsema_real_eip !14
  %244 = add i64 %243, -4, !mcsema_real_eip !14
  %245 = inttoptr i64 %244 to i64*, !mcsema_real_eip !14
  %246 = load i64* %RAX_val, !mcsema_real_eip !14
  %247 = trunc i64 %246 to i32, !mcsema_real_eip !14
  %248 = bitcast i64* %245 to i32*
  store i32 %247, i32* %248, !mcsema_real_eip !14
  %249 = load i64* %RBP_val, !mcsema_real_eip !15
  %250 = add i64 %249, -4, !mcsema_real_eip !15
  %251 = inttoptr i64 %250 to i64*, !mcsema_real_eip !15
  %252 = bitcast i64* %251 to i32*
  %253 = load i32* %252, !mcsema_real_eip !15
  %254 = zext i32 %253 to i64, !mcsema_real_eip !15
  store i64 %254, i64* %RAX_val, !mcsema_real_eip !15
  %255 = load i64* %RBP_val, !mcsema_real_eip !16
  store i64 %255, i64* %RSP_val, !mcsema_real_eip !16
  %256 = inttoptr i64 %255 to i64*, !mcsema_real_eip !16
  %257 = load i64* %256, !mcsema_real_eip !16
  store i64 %257, i64* %RBP_val, !mcsema_real_eip !16
  %258 = add i64 %255, 16, !mcsema_real_eip !17
  store i64 %258, i64* %RSP_val, !mcsema_real_eip !17
  %259 = load i64* %RAX_val, !mcsema_real_eip !17
  store i64 %259, i64* %RAX, !mcsema_real_eip !17
  %260 = load i64* %RBX_val, !mcsema_real_eip !17
  store i64 %260, i64* %RBX, !mcsema_real_eip !17
  %261 = load i64* %RCX_val, !mcsema_real_eip !17
  store i64 %261, i64* %RCX, !mcsema_real_eip !17
  %262 = load i64* %RDX_val, !mcsema_real_eip !17
  store i64 %262, i64* %RDX, !mcsema_real_eip !17
  %263 = load i64* %RSI_val, !mcsema_real_eip !17
  store i64 %263, i64* %RSI, !mcsema_real_eip !17
  %264 = load i64* %RDI_val, !mcsema_real_eip !17
  store i64 %264, i64* %RDI, !mcsema_real_eip !17
  %265 = load i64* %RSP_val, !mcsema_real_eip !17
  store i64 %265, i64* %RSP, !mcsema_real_eip !17
  %266 = load i64* %RBP_val, !mcsema_real_eip !17
  store i64 %266, i64* %RBP, !mcsema_real_eip !17
  %267 = load i64* %R8_val, !mcsema_real_eip !17
  store i64 %267, i64* %R8, !mcsema_real_eip !17
  %268 = load i64* %R9_val, !mcsema_real_eip !17
  store i64 %268, i64* %R9, !mcsema_real_eip !17
  %269 = load i64* %R10_val, !mcsema_real_eip !17
  store i64 %269, i64* %R10, !mcsema_real_eip !17
  %270 = load i64* %R11_val, !mcsema_real_eip !17
  store i64 %270, i64* %R11, !mcsema_real_eip !17
  %271 = load i64* %R12_val, !mcsema_real_eip !17
  store i64 %271, i64* %R12, !mcsema_real_eip !17
  %272 = load i64* %R13_val, !mcsema_real_eip !17
  store i64 %272, i64* %R13, !mcsema_real_eip !17
  %273 = load i64* %R14_val, !mcsema_real_eip !17
  store i64 %273, i64* %R14, !mcsema_real_eip !17
  %274 = load i64* %R15_val, !mcsema_real_eip !17
  store i64 %274, i64* %R15, !mcsema_real_eip !17
  %275 = load i64* %RIP_val, !mcsema_real_eip !17
  store i64 %275, i64* %RIP, !mcsema_real_eip !17
  %276 = load i1* %CF_val, !mcsema_real_eip !17
  store i1 %276, i1* %CF, align 1, !mcsema_real_eip !17
  %277 = load i1* %PF_val, !mcsema_real_eip !17
  store i1 %277, i1* %PF, align 1, !mcsema_real_eip !17
  %278 = load i1* %AF_val, !mcsema_real_eip !17
  store i1 %278, i1* %AF, align 1, !mcsema_real_eip !17
  %279 = load i1* %ZF_val, !mcsema_real_eip !17
  store i1 %279, i1* %ZF, align 1, !mcsema_real_eip !17
  %280 = load i1* %SF_val, !mcsema_real_eip !17
  store i1 %280, i1* %SF, align 1, !mcsema_real_eip !17
  %281 = load i1* %OF_val, !mcsema_real_eip !17
  store i1 %281, i1* %OF, align 1, !mcsema_real_eip !17
  %282 = load i1* %DF_val, !mcsema_real_eip !17
  store i1 %282, i1* %DF, align 1, !mcsema_real_eip !17
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !17
  %283 = load i1* %FPU_B_val, !mcsema_real_eip !17
  store i1 %283, i1* %FPU_B, align 1, !mcsema_real_eip !17
  %284 = load i1* %FPU_C3_val, !mcsema_real_eip !17
  store i1 %284, i1* %FPU_C3, align 1, !mcsema_real_eip !17
  %285 = load i3* %FPU_TOP_val, !mcsema_real_eip !17
  store i3 %285, i3* %FPU_TOP, align 1, !mcsema_real_eip !17
  %286 = load i1* %FPU_C2_val, !mcsema_real_eip !17
  store i1 %286, i1* %FPU_C2, align 1, !mcsema_real_eip !17
  %287 = load i1* %FPU_C1_val, !mcsema_real_eip !17
  store i1 %287, i1* %FPU_C1, align 1, !mcsema_real_eip !17
  %288 = load i1* %FPU_C0_val, !mcsema_real_eip !17
  store i1 %288, i1* %FPU_C0, align 1, !mcsema_real_eip !17
  %289 = load i1* %FPU_ES_val, !mcsema_real_eip !17
  store i1 %289, i1* %FPU_ES, align 1, !mcsema_real_eip !17
  %290 = load i1* %FPU_SF_val, !mcsema_real_eip !17
  store i1 %290, i1* %FPU_SF, align 1, !mcsema_real_eip !17
  %291 = load i1* %FPU_PE_val, !mcsema_real_eip !17
  store i1 %291, i1* %FPU_PE, align 1, !mcsema_real_eip !17
  %292 = load i1* %FPU_UE_val, !mcsema_real_eip !17
  store i1 %292, i1* %FPU_UE, align 1, !mcsema_real_eip !17
  %293 = load i1* %FPU_OE_val, !mcsema_real_eip !17
  store i1 %293, i1* %FPU_OE, align 1, !mcsema_real_eip !17
  %294 = load i1* %FPU_ZE_val, !mcsema_real_eip !17
  store i1 %294, i1* %FPU_ZE, align 1, !mcsema_real_eip !17
  %295 = load i1* %FPU_DE_val, !mcsema_real_eip !17
  store i1 %295, i1* %FPU_DE, align 1, !mcsema_real_eip !17
  %296 = load i1* %FPU_IE_val, !mcsema_real_eip !17
  store i1 %296, i1* %FPU_IE, align 1, !mcsema_real_eip !17
  %297 = load i1* %FPU_X_val, !mcsema_real_eip !17
  store i1 %297, i1* %FPU_X, align 1, !mcsema_real_eip !17
  %298 = load i2* %FPU_RC_val, !mcsema_real_eip !17
  store i2 %298, i2* %FPU_RC, align 1, !mcsema_real_eip !17
  %299 = load i2* %FPU_PC_val, !mcsema_real_eip !17
  store i2 %299, i2* %FPU_PC, align 1, !mcsema_real_eip !17
  %300 = load i1* %FPU_PM_val, !mcsema_real_eip !17
  store i1 %300, i1* %FPU_PM, align 1, !mcsema_real_eip !17
  %301 = load i1* %FPU_UM_val, !mcsema_real_eip !17
  store i1 %301, i1* %FPU_UM, align 1, !mcsema_real_eip !17
  %302 = load i1* %FPU_OM_val, !mcsema_real_eip !17
  store i1 %302, i1* %FPU_OM, align 1, !mcsema_real_eip !17
  %303 = load i1* %FPU_ZM_val, !mcsema_real_eip !17
  store i1 %303, i1* %FPU_ZM, align 1, !mcsema_real_eip !17
  %304 = load i1* %FPU_DM_val, !mcsema_real_eip !17
  store i1 %304, i1* %FPU_DM, align 1, !mcsema_real_eip !17
  %305 = load i1* %FPU_IM_val, !mcsema_real_eip !17
  store i1 %305, i1* %FPU_IM, align 1, !mcsema_real_eip !17
  %306 = load i64* %53, align 4
  store i64 %306, i64* %52, align 4
  %307 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !17
  store i16 %307, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !17
  %308 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !17
  store i64 %308, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !17
  %309 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !17
  store i16 %309, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !17
  %310 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !17
  store i64 %310, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !17
  %311 = load i128* %XMM0_val, !mcsema_real_eip !17
  store i128 %311, i128* %XMM0, align 1, !mcsema_real_eip !17
  %312 = load i128* %XMM1_val, !mcsema_real_eip !17
  store i128 %312, i128* %XMM1, align 1, !mcsema_real_eip !17
  %313 = load i128* %XMM2_val, !mcsema_real_eip !17
  store i128 %313, i128* %XMM2, align 1, !mcsema_real_eip !17
  %314 = load i128* %XMM3_val, !mcsema_real_eip !17
  store i128 %314, i128* %XMM3, align 1, !mcsema_real_eip !17
  %315 = load i128* %XMM4_val, !mcsema_real_eip !17
  store i128 %315, i128* %XMM4, align 1, !mcsema_real_eip !17
  %316 = load i128* %XMM5_val, !mcsema_real_eip !17
  store i128 %316, i128* %XMM5, align 1, !mcsema_real_eip !17
  %317 = load i128* %XMM6_val, !mcsema_real_eip !17
  store i128 %317, i128* %XMM6, align 1, !mcsema_real_eip !17
  %318 = load i128* %XMM7_val, !mcsema_real_eip !17
  store i128 %318, i128* %XMM7, align 1, !mcsema_real_eip !17
  %319 = load i128* %XMM8_val, !mcsema_real_eip !17
  store i128 %319, i128* %XMM8, align 1, !mcsema_real_eip !17
  %320 = load i128* %XMM9_val, !mcsema_real_eip !17
  store i128 %320, i128* %XMM9, align 1, !mcsema_real_eip !17
  %321 = load i128* %XMM10_val, !mcsema_real_eip !17
  store i128 %321, i128* %XMM10, align 1, !mcsema_real_eip !17
  %322 = load i128* %XMM11_val, !mcsema_real_eip !17
  store i128 %322, i128* %XMM11, align 1, !mcsema_real_eip !17
  %323 = load i128* %XMM12_val, !mcsema_real_eip !17
  store i128 %323, i128* %XMM12, align 1, !mcsema_real_eip !17
  %324 = load i128* %XMM13_val, !mcsema_real_eip !17
  store i128 %324, i128* %XMM13, align 1, !mcsema_real_eip !17
  %325 = load i128* %XMM14_val, !mcsema_real_eip !17
  store i128 %325, i128* %XMM14, align 1, !mcsema_real_eip !17
  %326 = load i128* %XMM15_val, !mcsema_real_eip !17
  store i128 %326, i128* %XMM15, align 1, !mcsema_real_eip !17
  %327 = load i64* %STACK_BASE_val, !mcsema_real_eip !17
  store i64 %327, i64* %STACK_BASE, align 1, !mcsema_real_eip !17
  %328 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !17
  store i64 %328, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !17
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
  %81 = add i64 %78, -28, !mcsema_real_eip !20
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !20
  %83 = load i64* %RDI_val, !mcsema_real_eip !20
  %84 = trunc i64 %83 to i32, !mcsema_real_eip !20
  %85 = bitcast i64* %82 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !20
  %86 = load i64* %RBP_val, !mcsema_real_eip !21
  %87 = add i64 %86, -24, !mcsema_real_eip !21
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !21
  %89 = load i64* %RSI_val, !mcsema_real_eip !21
  %90 = trunc i64 %89 to i32, !mcsema_real_eip !21
  %91 = bitcast i64* %88 to i32*
  store i32 %90, i32* %91, !mcsema_real_eip !21
  %92 = load i64* %RBP_val, !mcsema_real_eip !22
  %93 = add i64 %92, -28, !mcsema_real_eip !22
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !22
  %95 = load i64* %RDX_val, !mcsema_real_eip !22
  %96 = trunc i64 %95 to i32, !mcsema_real_eip !22
  %97 = bitcast i64* %94 to i32*
  store i32 %96, i32* %97, !mcsema_real_eip !22
  %98 = load i64* %RBP_val, !mcsema_real_eip !23
  %99 = add i64 %98, -32, !mcsema_real_eip !23
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !23
  %101 = load i64* %RCX_val, !mcsema_real_eip !23
  %102 = trunc i64 %101 to i32, !mcsema_real_eip !23
  %103 = bitcast i64* %100 to i32*
  store i32 %102, i32* %103, !mcsema_real_eip !23
  %104 = load i64* %RBP_val, !mcsema_real_eip !24
  %105 = add i64 %104, -36, !mcsema_real_eip !24
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !24
  %107 = load i64* %R8_val, !mcsema_real_eip !24
  %108 = trunc i64 %107 to i32, !mcsema_real_eip !24
  %109 = bitcast i64* %106 to i32*
  store i32 %108, i32* %109, !mcsema_real_eip !24
  %110 = load i64* %RBP_val, !mcsema_real_eip !25
  %111 = add i64 %110, -40, !mcsema_real_eip !25
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !25
  %113 = load i64* %R9_val, !mcsema_real_eip !25
  %114 = trunc i64 %113 to i32, !mcsema_real_eip !25
  %115 = bitcast i64* %112 to i32*
  store i32 %114, i32* %115, !mcsema_real_eip !25
  %116 = load i64* %RBP_val, !mcsema_real_eip !26
  %117 = add i64 %116, -24, !mcsema_real_eip !26
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !26
  %119 = bitcast i64* %118 to i32*
  %120 = load i32* %119, !mcsema_real_eip !26
  %121 = zext i32 %120 to i64, !mcsema_real_eip !26
  store i64 %121, i64* %RAX_val, !mcsema_real_eip !26
  %122 = load i64* %RBP_val, !mcsema_real_eip !27
  %123 = add i64 %122, -20, !mcsema_real_eip !27
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !27
  %125 = bitcast i64* %124 to i32*
  %126 = load i32* %125, !mcsema_real_eip !27
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %120, i32 %126)
  %127 = extractvalue { i32, i1 } %uadd, 0
  %128 = xor i32 %127, %126, !mcsema_real_eip !28
  %129 = xor i32 %128, %120, !mcsema_real_eip !28
  %130 = and i32 %129, 16, !mcsema_real_eip !28
  %131 = icmp ne i32 %130, 0, !mcsema_real_eip !28
  store i1 %131, i1* %AF_val, !mcsema_real_eip !28
  %132 = icmp slt i32 %127, 0
  store i1 %132, i1* %SF_val, !mcsema_real_eip !28
  %133 = icmp eq i32 %127, 0, !mcsema_real_eip !28
  store i1 %133, i1* %ZF_val, !mcsema_real_eip !28
  %134 = xor i32 %126, -2147483648, !mcsema_real_eip !28
  %135 = xor i32 %134, %120, !mcsema_real_eip !28
  %136 = and i32 %128, %135, !mcsema_real_eip !28
  %137 = icmp slt i32 %136, 0
  store i1 %137, i1* %OF_val, !mcsema_real_eip !28
  %138 = trunc i32 %127 to i8, !mcsema_real_eip !28
  %139 = tail call i8 @llvm.ctpop.i8(i8 %138), !mcsema_real_eip !28
  %140 = and i8 %139, 1
  %141 = icmp eq i8 %140, 0
  store i1 %141, i1* %PF_val, !mcsema_real_eip !28
  %142 = extractvalue { i32, i1 } %uadd, 1
  store i1 %142, i1* %CF_val, !mcsema_real_eip !28
  %143 = zext i32 %127 to i64, !mcsema_real_eip !28
  store i64 %143, i64* %RDX_val, !mcsema_real_eip !28
  %144 = load i64* %RBP_val, !mcsema_real_eip !29
  %145 = add i64 %144, -28, !mcsema_real_eip !29
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !29
  %147 = bitcast i64* %146 to i32*
  %148 = load i32* %147, !mcsema_real_eip !29
  %149 = zext i32 %148 to i64, !mcsema_real_eip !29
  store i64 %149, i64* %RAX_val, !mcsema_real_eip !29
  %150 = load i64* %RDX_val, !mcsema_real_eip !30
  %151 = trunc i64 %150 to i32, !mcsema_real_eip !30
  %uadd139 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %148, i32 %151)
  %152 = extractvalue { i32, i1 } %uadd139, 0
  %153 = xor i32 %152, %151, !mcsema_real_eip !30
  %154 = xor i32 %153, %148, !mcsema_real_eip !30
  %155 = and i32 %154, 16, !mcsema_real_eip !30
  %156 = icmp ne i32 %155, 0, !mcsema_real_eip !30
  store i1 %156, i1* %AF_val, !mcsema_real_eip !30
  %157 = icmp slt i32 %152, 0
  store i1 %157, i1* %SF_val, !mcsema_real_eip !30
  %158 = icmp eq i32 %152, 0, !mcsema_real_eip !30
  store i1 %158, i1* %ZF_val, !mcsema_real_eip !30
  %159 = xor i32 %148, -2147483648, !mcsema_real_eip !30
  %160 = xor i32 %159, %151, !mcsema_real_eip !30
  %161 = and i32 %153, %160, !mcsema_real_eip !30
  %162 = icmp slt i32 %161, 0
  store i1 %162, i1* %OF_val, !mcsema_real_eip !30
  %163 = trunc i32 %152 to i8, !mcsema_real_eip !30
  %164 = tail call i8 @llvm.ctpop.i8(i8 %163), !mcsema_real_eip !30
  %165 = and i8 %164, 1
  %166 = icmp eq i8 %165, 0
  store i1 %166, i1* %PF_val, !mcsema_real_eip !30
  %167 = extractvalue { i32, i1 } %uadd139, 1
  store i1 %167, i1* %CF_val, !mcsema_real_eip !30
  %168 = zext i32 %152 to i64, !mcsema_real_eip !30
  store i64 %168, i64* %RDX_val, !mcsema_real_eip !30
  %169 = load i64* %RBP_val, !mcsema_real_eip !31
  %170 = add i64 %169, -32, !mcsema_real_eip !31
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !31
  %172 = bitcast i64* %171 to i32*
  %173 = load i32* %172, !mcsema_real_eip !31
  %174 = zext i32 %173 to i64, !mcsema_real_eip !31
  store i64 %174, i64* %RAX_val, !mcsema_real_eip !31
  %175 = load i64* %RDX_val, !mcsema_real_eip !32
  %176 = trunc i64 %175 to i32, !mcsema_real_eip !32
  %uadd140 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %173, i32 %176)
  %177 = extractvalue { i32, i1 } %uadd140, 0
  %178 = xor i32 %177, %176, !mcsema_real_eip !32
  %179 = xor i32 %178, %173, !mcsema_real_eip !32
  %180 = and i32 %179, 16, !mcsema_real_eip !32
  %181 = icmp ne i32 %180, 0, !mcsema_real_eip !32
  store i1 %181, i1* %AF_val, !mcsema_real_eip !32
  %182 = icmp slt i32 %177, 0
  store i1 %182, i1* %SF_val, !mcsema_real_eip !32
  %183 = icmp eq i32 %177, 0, !mcsema_real_eip !32
  store i1 %183, i1* %ZF_val, !mcsema_real_eip !32
  %184 = xor i32 %173, -2147483648, !mcsema_real_eip !32
  %185 = xor i32 %184, %176, !mcsema_real_eip !32
  %186 = and i32 %178, %185, !mcsema_real_eip !32
  %187 = icmp slt i32 %186, 0
  store i1 %187, i1* %OF_val, !mcsema_real_eip !32
  %188 = trunc i32 %177 to i8, !mcsema_real_eip !32
  %189 = tail call i8 @llvm.ctpop.i8(i8 %188), !mcsema_real_eip !32
  %190 = and i8 %189, 1
  %191 = icmp eq i8 %190, 0
  store i1 %191, i1* %PF_val, !mcsema_real_eip !32
  %192 = extractvalue { i32, i1 } %uadd140, 1
  store i1 %192, i1* %CF_val, !mcsema_real_eip !32
  %193 = zext i32 %177 to i64, !mcsema_real_eip !32
  store i64 %193, i64* %RDX_val, !mcsema_real_eip !32
  %194 = load i64* %RBP_val, !mcsema_real_eip !33
  %195 = add i64 %194, -36, !mcsema_real_eip !33
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !33
  %197 = bitcast i64* %196 to i32*
  %198 = load i32* %197, !mcsema_real_eip !33
  %199 = zext i32 %198 to i64, !mcsema_real_eip !33
  store i64 %199, i64* %RAX_val, !mcsema_real_eip !33
  %200 = load i64* %RDX_val, !mcsema_real_eip !34
  %201 = trunc i64 %200 to i32, !mcsema_real_eip !34
  %uadd141 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %198, i32 %201)
  %202 = extractvalue { i32, i1 } %uadd141, 0
  %203 = xor i32 %202, %201, !mcsema_real_eip !34
  %204 = xor i32 %203, %198, !mcsema_real_eip !34
  %205 = and i32 %204, 16, !mcsema_real_eip !34
  %206 = icmp ne i32 %205, 0, !mcsema_real_eip !34
  store i1 %206, i1* %AF_val, !mcsema_real_eip !34
  %207 = icmp slt i32 %202, 0
  store i1 %207, i1* %SF_val, !mcsema_real_eip !34
  %208 = icmp eq i32 %202, 0, !mcsema_real_eip !34
  store i1 %208, i1* %ZF_val, !mcsema_real_eip !34
  %209 = xor i32 %198, -2147483648, !mcsema_real_eip !34
  %210 = xor i32 %209, %201, !mcsema_real_eip !34
  %211 = and i32 %203, %210, !mcsema_real_eip !34
  %212 = icmp slt i32 %211, 0
  store i1 %212, i1* %OF_val, !mcsema_real_eip !34
  %213 = trunc i32 %202 to i8, !mcsema_real_eip !34
  %214 = tail call i8 @llvm.ctpop.i8(i8 %213), !mcsema_real_eip !34
  %215 = and i8 %214, 1
  %216 = icmp eq i8 %215, 0
  store i1 %216, i1* %PF_val, !mcsema_real_eip !34
  %217 = extractvalue { i32, i1 } %uadd141, 1
  store i1 %217, i1* %CF_val, !mcsema_real_eip !34
  %218 = zext i32 %202 to i64, !mcsema_real_eip !34
  store i64 %218, i64* %RDX_val, !mcsema_real_eip !34
  %219 = load i64* %RBP_val, !mcsema_real_eip !35
  %220 = add i64 %219, -40, !mcsema_real_eip !35
  %221 = inttoptr i64 %220 to i64*, !mcsema_real_eip !35
  %222 = bitcast i64* %221 to i32*
  %223 = load i32* %222, !mcsema_real_eip !35
  %224 = zext i32 %223 to i64, !mcsema_real_eip !35
  store i64 %224, i64* %RAX_val, !mcsema_real_eip !35
  %225 = load i64* %RDX_val, !mcsema_real_eip !36
  %226 = trunc i64 %225 to i32, !mcsema_real_eip !36
  %uadd142 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %223, i32 %226)
  %227 = extractvalue { i32, i1 } %uadd142, 0
  %228 = xor i32 %227, %226, !mcsema_real_eip !36
  %229 = xor i32 %228, %223, !mcsema_real_eip !36
  %230 = and i32 %229, 16, !mcsema_real_eip !36
  %231 = icmp ne i32 %230, 0, !mcsema_real_eip !36
  store i1 %231, i1* %AF_val, !mcsema_real_eip !36
  %232 = icmp slt i32 %227, 0
  store i1 %232, i1* %SF_val, !mcsema_real_eip !36
  %233 = icmp eq i32 %227, 0, !mcsema_real_eip !36
  store i1 %233, i1* %ZF_val, !mcsema_real_eip !36
  %234 = xor i32 %223, -2147483648, !mcsema_real_eip !36
  %235 = xor i32 %234, %226, !mcsema_real_eip !36
  %236 = and i32 %228, %235, !mcsema_real_eip !36
  %237 = icmp slt i32 %236, 0
  store i1 %237, i1* %OF_val, !mcsema_real_eip !36
  %238 = trunc i32 %227 to i8, !mcsema_real_eip !36
  %239 = tail call i8 @llvm.ctpop.i8(i8 %238), !mcsema_real_eip !36
  %240 = and i8 %239, 1
  %241 = icmp eq i8 %240, 0
  store i1 %241, i1* %PF_val, !mcsema_real_eip !36
  %242 = extractvalue { i32, i1 } %uadd142, 1
  store i1 %242, i1* %CF_val, !mcsema_real_eip !36
  %243 = zext i32 %227 to i64, !mcsema_real_eip !36
  store i64 %243, i64* %RDX_val, !mcsema_real_eip !36
  %244 = load i64* %RBP_val, !mcsema_real_eip !37
  %245 = add i64 %244, 16, !mcsema_real_eip !37
  %246 = inttoptr i64 %245 to i64*, !mcsema_real_eip !37
  %247 = bitcast i64* %246 to i32*
  %248 = load i32* %247, !mcsema_real_eip !37
  %uadd143 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %227, i32 %248)
  %249 = extractvalue { i32, i1 } %uadd143, 0
  %250 = xor i32 %249, %248, !mcsema_real_eip !38
  %251 = xor i32 %250, %227, !mcsema_real_eip !38
  %252 = and i32 %251, 16, !mcsema_real_eip !38
  %253 = icmp ne i32 %252, 0, !mcsema_real_eip !38
  store i1 %253, i1* %AF_val, !mcsema_real_eip !38
  %254 = icmp slt i32 %249, 0
  store i1 %254, i1* %SF_val, !mcsema_real_eip !38
  %255 = icmp eq i32 %249, 0, !mcsema_real_eip !38
  store i1 %255, i1* %ZF_val, !mcsema_real_eip !38
  %256 = xor i32 %248, -2147483648, !mcsema_real_eip !38
  %257 = xor i32 %256, %227, !mcsema_real_eip !38
  %258 = and i32 %250, %257, !mcsema_real_eip !38
  %259 = icmp slt i32 %258, 0
  store i1 %259, i1* %OF_val, !mcsema_real_eip !38
  %260 = trunc i32 %249 to i8, !mcsema_real_eip !38
  %261 = tail call i8 @llvm.ctpop.i8(i8 %260), !mcsema_real_eip !38
  %262 = and i8 %261, 1
  %263 = icmp eq i8 %262, 0
  store i1 %263, i1* %PF_val, !mcsema_real_eip !38
  %264 = extractvalue { i32, i1 } %uadd143, 1
  store i1 %264, i1* %CF_val, !mcsema_real_eip !38
  %265 = zext i32 %249 to i64, !mcsema_real_eip !38
  store i64 %265, i64* %RAX_val, !mcsema_real_eip !38
  %266 = load i64* %RBP_val, !mcsema_real_eip !39
  %267 = add i64 %266, -8, !mcsema_real_eip !39
  %268 = inttoptr i64 %267 to i64*, !mcsema_real_eip !39
  %269 = bitcast i64* %268 to i32*
  store i32 %249, i32* %269, !mcsema_real_eip !39
  %270 = load i64* %RBP_val, !mcsema_real_eip !40
  %271 = add i64 %270, -8, !mcsema_real_eip !40
  %272 = inttoptr i64 %271 to i64*, !mcsema_real_eip !40
  %273 = bitcast i64* %272 to i32*
  %274 = load i32* %273, !mcsema_real_eip !40
  %275 = add i32 %274, -40
  %276 = xor i32 %275, %274, !mcsema_real_eip !40
  %277 = and i32 %276, 16, !mcsema_real_eip !40
  %278 = icmp ne i32 %277, 0, !mcsema_real_eip !40
  store i1 %278, i1* %AF_val, !mcsema_real_eip !40
  %279 = trunc i32 %275 to i8, !mcsema_real_eip !40
  %280 = tail call i8 @llvm.ctpop.i8(i8 %279), !mcsema_real_eip !40
  %281 = and i8 %280, 1
  %282 = icmp eq i8 %281, 0
  store i1 %282, i1* %PF_val, !mcsema_real_eip !40
  %283 = icmp eq i32 %275, 0, !mcsema_real_eip !40
  store i1 %283, i1* %ZF_val, !mcsema_real_eip !40
  %284 = icmp slt i32 %275, 0
  store i1 %284, i1* %SF_val, !mcsema_real_eip !40
  %285 = icmp ult i32 %274, 40, !mcsema_real_eip !40
  store i1 %285, i1* %CF_val, !mcsema_real_eip !40
  %286 = and i32 %276, %274, !mcsema_real_eip !40
  %287 = icmp slt i32 %286, 0
  store i1 %287, i1* %OF_val, !mcsema_real_eip !40
  %288 = xor i1 %284, %287
  %289 = load i1* %ZF_val, !mcsema_real_eip !41
  %290 = or i1 %289, %288, !mcsema_real_eip !41
  %291 = load i64* %RBP_val, !mcsema_real_eip !42
  %292 = add i64 %291, 24, !mcsema_real_eip !42
  %293 = inttoptr i64 %292 to i64*, !mcsema_real_eip !42
  %294 = bitcast i64* %293 to i32*
  %295 = load i32* %294, !mcsema_real_eip !42
  %296 = zext i32 %295 to i64, !mcsema_real_eip !42
  store i64 %296, i64* %RAX_val, !mcsema_real_eip !42
  %297 = load i64* %RBP_val, !mcsema_real_eip !43
  %298 = add i64 %297, -8, !mcsema_real_eip !43
  %299 = inttoptr i64 %298 to i64*, !mcsema_real_eip !43
  %300 = bitcast i64* %299 to i32*
  %301 = load i32* %300, !mcsema_real_eip !43
  %302 = zext i32 %301 to i64, !mcsema_real_eip !43
  store i64 %302, i64* %RDX_val, !mcsema_real_eip !43
  %303 = load i64* %RAX_val, !mcsema_real_eip !44
  %304 = trunc i64 %303 to i32, !mcsema_real_eip !44
  br i1 %290, label %block_0x4f, label %block_0x42, !mcsema_real_eip !41

block_0x4f:                                       ; preds = %entry
  %305 = sub i32 %301, %304, !mcsema_real_eip !44
  %306 = xor i32 %305, %301, !mcsema_real_eip !44
  %307 = xor i32 %306, %304, !mcsema_real_eip !44
  %308 = and i32 %307, 16, !mcsema_real_eip !44
  %309 = icmp ne i32 %308, 0, !mcsema_real_eip !44
  store i1 %309, i1* %AF_val, !mcsema_real_eip !44
  %310 = trunc i32 %305 to i8, !mcsema_real_eip !44
  %311 = tail call i8 @llvm.ctpop.i8(i8 %310), !mcsema_real_eip !44
  %312 = and i8 %311, 1
  %313 = icmp eq i8 %312, 0
  store i1 %313, i1* %PF_val, !mcsema_real_eip !44
  %314 = icmp eq i32 %301, %304
  store i1 %314, i1* %ZF_val, !mcsema_real_eip !44
  %315 = icmp slt i32 %305, 0
  store i1 %315, i1* %SF_val, !mcsema_real_eip !44
  %316 = icmp ult i32 %301, %304, !mcsema_real_eip !44
  store i1 %316, i1* %CF_val, !mcsema_real_eip !44
  %317 = xor i32 %304, %301, !mcsema_real_eip !44
  %318 = and i32 %306, %317, !mcsema_real_eip !44
  %319 = icmp slt i32 %318, 0
  store i1 %319, i1* %OF_val, !mcsema_real_eip !44
  %320 = zext i32 %305 to i64, !mcsema_real_eip !44
  store i64 %320, i64* %RDX_val, !mcsema_real_eip !44
  store i64 %320, i64* %RAX_val, !mcsema_real_eip !45
  %321 = load i64* %RBP_val, !mcsema_real_eip !46
  %322 = add i64 %321, -4, !mcsema_real_eip !46
  %323 = inttoptr i64 %322 to i64*, !mcsema_real_eip !46
  %324 = bitcast i64* %323 to i32*
  store i32 %305, i32* %324, !mcsema_real_eip !46
  %325 = load i64* %RBP_val, !mcsema_real_eip !47
  %326 = add i64 %325, -4, !mcsema_real_eip !47
  %327 = inttoptr i64 %326 to i64*, !mcsema_real_eip !47
  %328 = bitcast i64* %327 to i32*
  %329 = load i32* %328, !mcsema_real_eip !47
  %330 = zext i32 %329 to i64, !mcsema_real_eip !47
  store i64 %330, i64* %RAX_val, !mcsema_real_eip !47
  %331 = load i64* %RSP_val, !mcsema_real_eip !48
  %332 = inttoptr i64 %331 to i64*, !mcsema_real_eip !48
  %333 = load i64* %332, !mcsema_real_eip !48
  store i64 %333, i64* %RBP_val, !mcsema_real_eip !48
  %334 = add i64 %331, 16, !mcsema_real_eip !49
  store i64 %334, i64* %RSP_val, !mcsema_real_eip !49
  %335 = load i64* %RAX_val, !mcsema_real_eip !49
  store i64 %335, i64* %RAX, !mcsema_real_eip !49
  %336 = load i64* %RBX_val, !mcsema_real_eip !49
  store i64 %336, i64* %RBX, !mcsema_real_eip !49
  %337 = load i64* %RCX_val, !mcsema_real_eip !49
  store i64 %337, i64* %RCX, !mcsema_real_eip !49
  %338 = load i64* %RDX_val, !mcsema_real_eip !49
  store i64 %338, i64* %RDX, !mcsema_real_eip !49
  %339 = load i64* %RSI_val, !mcsema_real_eip !49
  store i64 %339, i64* %RSI, !mcsema_real_eip !49
  %340 = load i64* %RDI_val, !mcsema_real_eip !49
  store i64 %340, i64* %RDI, !mcsema_real_eip !49
  %341 = load i64* %RSP_val, !mcsema_real_eip !49
  store i64 %341, i64* %RSP, !mcsema_real_eip !49
  %342 = load i64* %RBP_val, !mcsema_real_eip !49
  store i64 %342, i64* %RBP, !mcsema_real_eip !49
  %343 = load i64* %R8_val, !mcsema_real_eip !49
  store i64 %343, i64* %R8, !mcsema_real_eip !49
  %344 = load i64* %R9_val, !mcsema_real_eip !49
  store i64 %344, i64* %R9, !mcsema_real_eip !49
  %345 = load i64* %R10_val, !mcsema_real_eip !49
  store i64 %345, i64* %R10, !mcsema_real_eip !49
  %346 = load i64* %R11_val, !mcsema_real_eip !49
  store i64 %346, i64* %R11, !mcsema_real_eip !49
  %347 = load i64* %R12_val, !mcsema_real_eip !49
  store i64 %347, i64* %R12, !mcsema_real_eip !49
  %348 = load i64* %R13_val, !mcsema_real_eip !49
  store i64 %348, i64* %R13, !mcsema_real_eip !49
  %349 = load i64* %R14_val, !mcsema_real_eip !49
  store i64 %349, i64* %R14, !mcsema_real_eip !49
  %350 = load i64* %R15_val, !mcsema_real_eip !49
  store i64 %350, i64* %R15, !mcsema_real_eip !49
  %351 = load i64* %RIP_val, !mcsema_real_eip !49
  store i64 %351, i64* %RIP, !mcsema_real_eip !49
  %352 = load i1* %CF_val, !mcsema_real_eip !49
  store i1 %352, i1* %CF, align 1, !mcsema_real_eip !49
  %353 = load i1* %PF_val, !mcsema_real_eip !49
  store i1 %353, i1* %PF, align 1, !mcsema_real_eip !49
  %354 = load i1* %AF_val, !mcsema_real_eip !49
  store i1 %354, i1* %AF, align 1, !mcsema_real_eip !49
  %355 = load i1* %ZF_val, !mcsema_real_eip !49
  store i1 %355, i1* %ZF, align 1, !mcsema_real_eip !49
  %356 = load i1* %SF_val, !mcsema_real_eip !49
  store i1 %356, i1* %SF, align 1, !mcsema_real_eip !49
  %357 = load i1* %OF_val, !mcsema_real_eip !49
  store i1 %357, i1* %OF, align 1, !mcsema_real_eip !49
  %358 = load i1* %DF_val, !mcsema_real_eip !49
  store i1 %358, i1* %DF, align 1, !mcsema_real_eip !49
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !49
  %359 = load i1* %FPU_B_val, !mcsema_real_eip !49
  store i1 %359, i1* %FPU_B, align 1, !mcsema_real_eip !49
  %360 = load i1* %FPU_C3_val, !mcsema_real_eip !49
  store i1 %360, i1* %FPU_C3, align 1, !mcsema_real_eip !49
  %361 = load i3* %FPU_TOP_val, !mcsema_real_eip !49
  store i3 %361, i3* %FPU_TOP, align 1, !mcsema_real_eip !49
  %362 = load i1* %FPU_C2_val, !mcsema_real_eip !49
  store i1 %362, i1* %FPU_C2, align 1, !mcsema_real_eip !49
  %363 = load i1* %FPU_C1_val, !mcsema_real_eip !49
  store i1 %363, i1* %FPU_C1, align 1, !mcsema_real_eip !49
  %364 = load i1* %FPU_C0_val, !mcsema_real_eip !49
  store i1 %364, i1* %FPU_C0, align 1, !mcsema_real_eip !49
  %365 = load i1* %FPU_ES_val, !mcsema_real_eip !49
  store i1 %365, i1* %FPU_ES, align 1, !mcsema_real_eip !49
  %366 = load i1* %FPU_SF_val, !mcsema_real_eip !49
  store i1 %366, i1* %FPU_SF, align 1, !mcsema_real_eip !49
  %367 = load i1* %FPU_PE_val, !mcsema_real_eip !49
  store i1 %367, i1* %FPU_PE, align 1, !mcsema_real_eip !49
  %368 = load i1* %FPU_UE_val, !mcsema_real_eip !49
  store i1 %368, i1* %FPU_UE, align 1, !mcsema_real_eip !49
  %369 = load i1* %FPU_OE_val, !mcsema_real_eip !49
  store i1 %369, i1* %FPU_OE, align 1, !mcsema_real_eip !49
  %370 = load i1* %FPU_ZE_val, !mcsema_real_eip !49
  store i1 %370, i1* %FPU_ZE, align 1, !mcsema_real_eip !49
  %371 = load i1* %FPU_DE_val, !mcsema_real_eip !49
  store i1 %371, i1* %FPU_DE, align 1, !mcsema_real_eip !49
  %372 = load i1* %FPU_IE_val, !mcsema_real_eip !49
  store i1 %372, i1* %FPU_IE, align 1, !mcsema_real_eip !49
  %373 = load i1* %FPU_X_val, !mcsema_real_eip !49
  store i1 %373, i1* %FPU_X, align 1, !mcsema_real_eip !49
  %374 = load i2* %FPU_RC_val, !mcsema_real_eip !49
  store i2 %374, i2* %FPU_RC, align 1, !mcsema_real_eip !49
  %375 = load i2* %FPU_PC_val, !mcsema_real_eip !49
  store i2 %375, i2* %FPU_PC, align 1, !mcsema_real_eip !49
  %376 = load i1* %FPU_PM_val, !mcsema_real_eip !49
  store i1 %376, i1* %FPU_PM, align 1, !mcsema_real_eip !49
  %377 = load i1* %FPU_UM_val, !mcsema_real_eip !49
  store i1 %377, i1* %FPU_UM, align 1, !mcsema_real_eip !49
  %378 = load i1* %FPU_OM_val, !mcsema_real_eip !49
  store i1 %378, i1* %FPU_OM, align 1, !mcsema_real_eip !49
  %379 = load i1* %FPU_ZM_val, !mcsema_real_eip !49
  store i1 %379, i1* %FPU_ZM, align 1, !mcsema_real_eip !49
  %380 = load i1* %FPU_DM_val, !mcsema_real_eip !49
  store i1 %380, i1* %FPU_DM, align 1, !mcsema_real_eip !49
  %381 = load i1* %FPU_IM_val, !mcsema_real_eip !49
  store i1 %381, i1* %FPU_IM, align 1, !mcsema_real_eip !49
  %382 = load i64* %53, align 4
  store i64 %382, i64* %52, align 4
  %383 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !49
  store i16 %383, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !49
  %384 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !49
  store i64 %384, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !49
  %385 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !49
  store i16 %385, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !49
  %386 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !49
  store i64 %386, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !49
  %387 = load i128* %XMM0_val, !mcsema_real_eip !49
  store i128 %387, i128* %XMM0, align 1, !mcsema_real_eip !49
  %388 = load i128* %XMM1_val, !mcsema_real_eip !49
  store i128 %388, i128* %XMM1, align 1, !mcsema_real_eip !49
  %389 = load i128* %XMM2_val, !mcsema_real_eip !49
  store i128 %389, i128* %XMM2, align 1, !mcsema_real_eip !49
  %390 = load i128* %XMM3_val, !mcsema_real_eip !49
  store i128 %390, i128* %XMM3, align 1, !mcsema_real_eip !49
  %391 = load i128* %XMM4_val, !mcsema_real_eip !49
  store i128 %391, i128* %XMM4, align 1, !mcsema_real_eip !49
  %392 = load i128* %XMM5_val, !mcsema_real_eip !49
  store i128 %392, i128* %XMM5, align 1, !mcsema_real_eip !49
  %393 = load i128* %XMM6_val, !mcsema_real_eip !49
  store i128 %393, i128* %XMM6, align 1, !mcsema_real_eip !49
  %394 = load i128* %XMM7_val, !mcsema_real_eip !49
  store i128 %394, i128* %XMM7, align 1, !mcsema_real_eip !49
  %395 = load i128* %XMM8_val, !mcsema_real_eip !49
  store i128 %395, i128* %XMM8, align 1, !mcsema_real_eip !49
  %396 = load i128* %XMM9_val, !mcsema_real_eip !49
  store i128 %396, i128* %XMM9, align 1, !mcsema_real_eip !49
  %397 = load i128* %XMM10_val, !mcsema_real_eip !49
  store i128 %397, i128* %XMM10, align 1, !mcsema_real_eip !49
  %398 = load i128* %XMM11_val, !mcsema_real_eip !49
  store i128 %398, i128* %XMM11, align 1, !mcsema_real_eip !49
  %399 = load i128* %XMM12_val, !mcsema_real_eip !49
  store i128 %399, i128* %XMM12, align 1, !mcsema_real_eip !49
  %400 = load i128* %XMM13_val, !mcsema_real_eip !49
  store i128 %400, i128* %XMM13, align 1, !mcsema_real_eip !49
  %401 = load i128* %XMM14_val, !mcsema_real_eip !49
  store i128 %401, i128* %XMM14, align 1, !mcsema_real_eip !49
  %402 = load i128* %XMM15_val, !mcsema_real_eip !49
  store i128 %402, i128* %XMM15, align 1, !mcsema_real_eip !49
  %403 = load i64* %STACK_BASE_val, !mcsema_real_eip !49
  store i64 %403, i64* %STACK_BASE, align 1, !mcsema_real_eip !49
  %404 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !49
  store i64 %404, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !49
  ret void, !mcsema_real_eip !49

block_0x42:                                       ; preds = %entry
  %uadd145 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %301, i32 %304)
  %405 = extractvalue { i32, i1 } %uadd145, 0
  %406 = xor i32 %405, %304, !mcsema_real_eip !50
  %407 = xor i32 %406, %301, !mcsema_real_eip !50
  %408 = and i32 %407, 16, !mcsema_real_eip !50
  %409 = icmp ne i32 %408, 0, !mcsema_real_eip !50
  store i1 %409, i1* %AF_val, !mcsema_real_eip !50
  %410 = icmp slt i32 %405, 0
  store i1 %410, i1* %SF_val, !mcsema_real_eip !50
  %411 = icmp eq i32 %405, 0, !mcsema_real_eip !50
  store i1 %411, i1* %ZF_val, !mcsema_real_eip !50
  %412 = xor i32 %301, -2147483648, !mcsema_real_eip !50
  %413 = xor i32 %412, %304, !mcsema_real_eip !50
  %414 = and i32 %406, %413, !mcsema_real_eip !50
  %415 = icmp slt i32 %414, 0
  store i1 %415, i1* %OF_val, !mcsema_real_eip !50
  %416 = trunc i32 %405 to i8, !mcsema_real_eip !50
  %417 = tail call i8 @llvm.ctpop.i8(i8 %416), !mcsema_real_eip !50
  %418 = and i8 %417, 1
  %419 = icmp eq i8 %418, 0
  store i1 %419, i1* %PF_val, !mcsema_real_eip !50
  %420 = extractvalue { i32, i1 } %uadd145, 1
  store i1 %420, i1* %CF_val, !mcsema_real_eip !50
  %421 = zext i32 %405 to i64, !mcsema_real_eip !50
  store i64 %421, i64* %RAX_val, !mcsema_real_eip !50
  %422 = load i64* %RBP_val, !mcsema_real_eip !51
  %423 = add i64 %422, -4, !mcsema_real_eip !51
  %424 = inttoptr i64 %423 to i64*, !mcsema_real_eip !51
  %425 = bitcast i64* %424 to i32*
  store i32 %405, i32* %425, !mcsema_real_eip !51
  %426 = load i64* %RBP_val, !mcsema_real_eip !47
  %427 = add i64 %426, -4, !mcsema_real_eip !47
  %428 = inttoptr i64 %427 to i64*, !mcsema_real_eip !47
  %429 = bitcast i64* %428 to i32*
  %430 = load i32* %429, !mcsema_real_eip !47
  %431 = zext i32 %430 to i64, !mcsema_real_eip !47
  store i64 %431, i64* %RAX_val, !mcsema_real_eip !47
  %432 = load i64* %RSP_val, !mcsema_real_eip !48
  %433 = inttoptr i64 %432 to i64*, !mcsema_real_eip !48
  %434 = load i64* %433, !mcsema_real_eip !48
  store i64 %434, i64* %RBP_val, !mcsema_real_eip !48
  %435 = add i64 %432, 16, !mcsema_real_eip !49
  store i64 %435, i64* %RSP_val, !mcsema_real_eip !49
  %436 = load i64* %RAX_val, !mcsema_real_eip !49
  store i64 %436, i64* %RAX, !mcsema_real_eip !49
  %437 = load i64* %RBX_val, !mcsema_real_eip !49
  store i64 %437, i64* %RBX, !mcsema_real_eip !49
  %438 = load i64* %RCX_val, !mcsema_real_eip !49
  store i64 %438, i64* %RCX, !mcsema_real_eip !49
  %439 = load i64* %RDX_val, !mcsema_real_eip !49
  store i64 %439, i64* %RDX, !mcsema_real_eip !49
  %440 = load i64* %RSI_val, !mcsema_real_eip !49
  store i64 %440, i64* %RSI, !mcsema_real_eip !49
  %441 = load i64* %RDI_val, !mcsema_real_eip !49
  store i64 %441, i64* %RDI, !mcsema_real_eip !49
  %442 = load i64* %RSP_val, !mcsema_real_eip !49
  store i64 %442, i64* %RSP, !mcsema_real_eip !49
  %443 = load i64* %RBP_val, !mcsema_real_eip !49
  store i64 %443, i64* %RBP, !mcsema_real_eip !49
  %444 = load i64* %R8_val, !mcsema_real_eip !49
  store i64 %444, i64* %R8, !mcsema_real_eip !49
  %445 = load i64* %R9_val, !mcsema_real_eip !49
  store i64 %445, i64* %R9, !mcsema_real_eip !49
  %446 = load i64* %R10_val, !mcsema_real_eip !49
  store i64 %446, i64* %R10, !mcsema_real_eip !49
  %447 = load i64* %R11_val, !mcsema_real_eip !49
  store i64 %447, i64* %R11, !mcsema_real_eip !49
  %448 = load i64* %R12_val, !mcsema_real_eip !49
  store i64 %448, i64* %R12, !mcsema_real_eip !49
  %449 = load i64* %R13_val, !mcsema_real_eip !49
  store i64 %449, i64* %R13, !mcsema_real_eip !49
  %450 = load i64* %R14_val, !mcsema_real_eip !49
  store i64 %450, i64* %R14, !mcsema_real_eip !49
  %451 = load i64* %R15_val, !mcsema_real_eip !49
  store i64 %451, i64* %R15, !mcsema_real_eip !49
  %452 = load i64* %RIP_val, !mcsema_real_eip !49
  store i64 %452, i64* %RIP, !mcsema_real_eip !49
  %453 = load i1* %CF_val, !mcsema_real_eip !49
  store i1 %453, i1* %CF, align 1, !mcsema_real_eip !49
  %454 = load i1* %PF_val, !mcsema_real_eip !49
  store i1 %454, i1* %PF, align 1, !mcsema_real_eip !49
  %455 = load i1* %AF_val, !mcsema_real_eip !49
  store i1 %455, i1* %AF, align 1, !mcsema_real_eip !49
  %456 = load i1* %ZF_val, !mcsema_real_eip !49
  store i1 %456, i1* %ZF, align 1, !mcsema_real_eip !49
  %457 = load i1* %SF_val, !mcsema_real_eip !49
  store i1 %457, i1* %SF, align 1, !mcsema_real_eip !49
  %458 = load i1* %OF_val, !mcsema_real_eip !49
  store i1 %458, i1* %OF, align 1, !mcsema_real_eip !49
  %459 = load i1* %DF_val, !mcsema_real_eip !49
  store i1 %459, i1* %DF, align 1, !mcsema_real_eip !49
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !49
  %460 = load i1* %FPU_B_val, !mcsema_real_eip !49
  store i1 %460, i1* %FPU_B, align 1, !mcsema_real_eip !49
  %461 = load i1* %FPU_C3_val, !mcsema_real_eip !49
  store i1 %461, i1* %FPU_C3, align 1, !mcsema_real_eip !49
  %462 = load i3* %FPU_TOP_val, !mcsema_real_eip !49
  store i3 %462, i3* %FPU_TOP, align 1, !mcsema_real_eip !49
  %463 = load i1* %FPU_C2_val, !mcsema_real_eip !49
  store i1 %463, i1* %FPU_C2, align 1, !mcsema_real_eip !49
  %464 = load i1* %FPU_C1_val, !mcsema_real_eip !49
  store i1 %464, i1* %FPU_C1, align 1, !mcsema_real_eip !49
  %465 = load i1* %FPU_C0_val, !mcsema_real_eip !49
  store i1 %465, i1* %FPU_C0, align 1, !mcsema_real_eip !49
  %466 = load i1* %FPU_ES_val, !mcsema_real_eip !49
  store i1 %466, i1* %FPU_ES, align 1, !mcsema_real_eip !49
  %467 = load i1* %FPU_SF_val, !mcsema_real_eip !49
  store i1 %467, i1* %FPU_SF, align 1, !mcsema_real_eip !49
  %468 = load i1* %FPU_PE_val, !mcsema_real_eip !49
  store i1 %468, i1* %FPU_PE, align 1, !mcsema_real_eip !49
  %469 = load i1* %FPU_UE_val, !mcsema_real_eip !49
  store i1 %469, i1* %FPU_UE, align 1, !mcsema_real_eip !49
  %470 = load i1* %FPU_OE_val, !mcsema_real_eip !49
  store i1 %470, i1* %FPU_OE, align 1, !mcsema_real_eip !49
  %471 = load i1* %FPU_ZE_val, !mcsema_real_eip !49
  store i1 %471, i1* %FPU_ZE, align 1, !mcsema_real_eip !49
  %472 = load i1* %FPU_DE_val, !mcsema_real_eip !49
  store i1 %472, i1* %FPU_DE, align 1, !mcsema_real_eip !49
  %473 = load i1* %FPU_IE_val, !mcsema_real_eip !49
  store i1 %473, i1* %FPU_IE, align 1, !mcsema_real_eip !49
  %474 = load i1* %FPU_X_val, !mcsema_real_eip !49
  store i1 %474, i1* %FPU_X, align 1, !mcsema_real_eip !49
  %475 = load i2* %FPU_RC_val, !mcsema_real_eip !49
  store i2 %475, i2* %FPU_RC, align 1, !mcsema_real_eip !49
  %476 = load i2* %FPU_PC_val, !mcsema_real_eip !49
  store i2 %476, i2* %FPU_PC, align 1, !mcsema_real_eip !49
  %477 = load i1* %FPU_PM_val, !mcsema_real_eip !49
  store i1 %477, i1* %FPU_PM, align 1, !mcsema_real_eip !49
  %478 = load i1* %FPU_UM_val, !mcsema_real_eip !49
  store i1 %478, i1* %FPU_UM, align 1, !mcsema_real_eip !49
  %479 = load i1* %FPU_OM_val, !mcsema_real_eip !49
  store i1 %479, i1* %FPU_OM, align 1, !mcsema_real_eip !49
  %480 = load i1* %FPU_ZM_val, !mcsema_real_eip !49
  store i1 %480, i1* %FPU_ZM, align 1, !mcsema_real_eip !49
  %481 = load i1* %FPU_DM_val, !mcsema_real_eip !49
  store i1 %481, i1* %FPU_DM, align 1, !mcsema_real_eip !49
  %482 = load i1* %FPU_IM_val, !mcsema_real_eip !49
  store i1 %482, i1* %FPU_IM, align 1, !mcsema_real_eip !49
  %483 = load i64* %53, align 4
  store i64 %483, i64* %52, align 4
  %484 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !49
  store i16 %484, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !49
  %485 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !49
  store i64 %485, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !49
  %486 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !49
  store i16 %486, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !49
  %487 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !49
  store i64 %487, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !49
  %488 = load i128* %XMM0_val, !mcsema_real_eip !49
  store i128 %488, i128* %XMM0, align 1, !mcsema_real_eip !49
  %489 = load i128* %XMM1_val, !mcsema_real_eip !49
  store i128 %489, i128* %XMM1, align 1, !mcsema_real_eip !49
  %490 = load i128* %XMM2_val, !mcsema_real_eip !49
  store i128 %490, i128* %XMM2, align 1, !mcsema_real_eip !49
  %491 = load i128* %XMM3_val, !mcsema_real_eip !49
  store i128 %491, i128* %XMM3, align 1, !mcsema_real_eip !49
  %492 = load i128* %XMM4_val, !mcsema_real_eip !49
  store i128 %492, i128* %XMM4, align 1, !mcsema_real_eip !49
  %493 = load i128* %XMM5_val, !mcsema_real_eip !49
  store i128 %493, i128* %XMM5, align 1, !mcsema_real_eip !49
  %494 = load i128* %XMM6_val, !mcsema_real_eip !49
  store i128 %494, i128* %XMM6, align 1, !mcsema_real_eip !49
  %495 = load i128* %XMM7_val, !mcsema_real_eip !49
  store i128 %495, i128* %XMM7, align 1, !mcsema_real_eip !49
  %496 = load i128* %XMM8_val, !mcsema_real_eip !49
  store i128 %496, i128* %XMM8, align 1, !mcsema_real_eip !49
  %497 = load i128* %XMM9_val, !mcsema_real_eip !49
  store i128 %497, i128* %XMM9, align 1, !mcsema_real_eip !49
  %498 = load i128* %XMM10_val, !mcsema_real_eip !49
  store i128 %498, i128* %XMM10, align 1, !mcsema_real_eip !49
  %499 = load i128* %XMM11_val, !mcsema_real_eip !49
  store i128 %499, i128* %XMM11, align 1, !mcsema_real_eip !49
  %500 = load i128* %XMM12_val, !mcsema_real_eip !49
  store i128 %500, i128* %XMM12, align 1, !mcsema_real_eip !49
  %501 = load i128* %XMM13_val, !mcsema_real_eip !49
  store i128 %501, i128* %XMM13, align 1, !mcsema_real_eip !49
  %502 = load i128* %XMM14_val, !mcsema_real_eip !49
  store i128 %502, i128* %XMM14, align 1, !mcsema_real_eip !49
  %503 = load i128* %XMM15_val, !mcsema_real_eip !49
  store i128 %503, i128* %XMM15, align 1, !mcsema_real_eip !49
  %504 = load i64* %STACK_BASE_val, !mcsema_real_eip !49
  store i64 %504, i64* %STACK_BASE, align 1, !mcsema_real_eip !49
  %505 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !49
  store i64 %505, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !49
  ret void, !mcsema_real_eip !49
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_61(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 97, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 98, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = metadata !{i64 101, [16 x i8] c"\09subq\09$32, %rsp\00"}
!5 = metadata !{i64 105, [19 x i8] c"\09movl\09$80, 8(%rsp)\00"}
!6 = metadata !{i64 113, [18 x i8] c"\09movl\09$70, (%rsp)\00"}
!7 = metadata !{i64 120, [16 x i8] c"\09movl\09$60, %r9d\00"}
!8 = metadata !{i64 126, [16 x i8] c"\09movl\09$50, %r8d\00"}
!9 = metadata !{i64 132, [16 x i8] c"\09movl\09$40, %ecx\00"}
!10 = metadata !{i64 137, [16 x i8] c"\09movl\09$30, %edx\00"}
!11 = metadata !{i64 142, [16 x i8] c"\09movl\09$20, %esi\00"}
!12 = metadata !{i64 147, [16 x i8] c"\09movl\09$10, %edi\00"}
!13 = metadata !{i64 152, [9 x i8] c"\09callq\090\00"}
!14 = metadata !{i64 157, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!15 = metadata !{i64 160, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!16 = metadata !{i64 163, [7 x i8] c"\09leave\00"}
!17 = metadata !{i64 164, [6 x i8] c"\09retq\00"}
!18 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!19 = metadata !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!20 = metadata !{i64 4, [22 x i8] c"\09movl\09%edi, -20(%rbp)\00"}
!21 = metadata !{i64 7, [22 x i8] c"\09movl\09%esi, -24(%rbp)\00"}
!22 = metadata !{i64 10, [22 x i8] c"\09movl\09%edx, -28(%rbp)\00"}
!23 = metadata !{i64 13, [22 x i8] c"\09movl\09%ecx, -32(%rbp)\00"}
!24 = metadata !{i64 16, [22 x i8] c"\09movl\09%r8d, -36(%rbp)\00"}
!25 = metadata !{i64 20, [22 x i8] c"\09movl\09%r9d, -40(%rbp)\00"}
!26 = metadata !{i64 24, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!27 = metadata !{i64 27, [22 x i8] c"\09movl\09-20(%rbp), %edx\00"}
!28 = metadata !{i64 30, [17 x i8] c"\09addl\09%eax, %edx\00"}
!29 = metadata !{i64 32, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!30 = metadata !{i64 35, [17 x i8] c"\09addl\09%eax, %edx\00"}
!31 = metadata !{i64 37, [22 x i8] c"\09movl\09-32(%rbp), %eax\00"}
!32 = metadata !{i64 40, [17 x i8] c"\09addl\09%eax, %edx\00"}
!33 = metadata !{i64 42, [22 x i8] c"\09movl\09-36(%rbp), %eax\00"}
!34 = metadata !{i64 45, [17 x i8] c"\09addl\09%eax, %edx\00"}
!35 = metadata !{i64 47, [22 x i8] c"\09movl\09-40(%rbp), %eax\00"}
!36 = metadata !{i64 50, [17 x i8] c"\09addl\09%eax, %edx\00"}
!37 = metadata !{i64 52, [21 x i8] c"\09movl\0916(%rbp), %eax\00"}
!38 = metadata !{i64 55, [17 x i8] c"\09addl\09%edx, %eax\00"}
!39 = metadata !{i64 57, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!40 = metadata !{i64 60, [20 x i8] c"\09cmpl\09$40, -8(%rbp)\00"}
!41 = metadata !{i64 64, [8 x i8] c"\09jle\0913\00"}
!42 = metadata !{i64 79, [21 x i8] c"\09movl\0924(%rbp), %eax\00"}
!43 = metadata !{i64 82, [21 x i8] c"\09movl\09-8(%rbp), %edx\00"}
!44 = metadata !{i64 85, [17 x i8] c"\09subl\09%eax, %edx\00"}
!45 = metadata !{i64 87, [17 x i8] c"\09movl\09%edx, %eax\00"}
!46 = metadata !{i64 89, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!47 = metadata !{i64 92, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!48 = metadata !{i64 95, [11 x i8] c"\09popq\09%rbp\00"}
!49 = metadata !{i64 96, [6 x i8] c"\09retq\00"}
!50 = metadata !{i64 72, [17 x i8] c"\09addl\09%edx, %eax\00"}
!51 = metadata !{i64 74, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
