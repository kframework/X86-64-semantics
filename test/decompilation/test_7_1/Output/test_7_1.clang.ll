; ModuleID = 'Output/test_7_1.clang.bc'
source_filename = "Output/test_7_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_30(%struct.regs*) #0 {
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
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !2
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
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %1 = load i64, i64* %RAX, !mcsema_real_eip !2
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !2
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %2 = load i64, i64* %RBX, !mcsema_real_eip !2
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !2
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %3 = load i64, i64* %RCX, !mcsema_real_eip !2
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !2
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %4 = load i64, i64* %RDX, !mcsema_real_eip !2
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !2
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %5 = load i64, i64* %RSI, !mcsema_real_eip !2
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !2
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %6 = load i64, i64* %RDI, !mcsema_real_eip !2
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !2
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %7 = load i64, i64* %RSP, !mcsema_real_eip !2
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !2
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %8 = load i64, i64* %RBP, !mcsema_real_eip !2
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !2
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %9 = load i64, i64* %R8, !mcsema_real_eip !2
  store i64 %9, i64* %R8_val, !mcsema_real_eip !2
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %10 = load i64, i64* %R9, !mcsema_real_eip !2
  store i64 %10, i64* %R9_val, !mcsema_real_eip !2
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %11 = load i64, i64* %R10, !mcsema_real_eip !2
  store i64 %11, i64* %R10_val, !mcsema_real_eip !2
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %12 = load i64, i64* %R11, !mcsema_real_eip !2
  store i64 %12, i64* %R11_val, !mcsema_real_eip !2
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %13 = load i64, i64* %R12, !mcsema_real_eip !2
  store i64 %13, i64* %R12_val, !mcsema_real_eip !2
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %14 = load i64, i64* %R13, !mcsema_real_eip !2
  store i64 %14, i64* %R13_val, !mcsema_real_eip !2
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %15 = load i64, i64* %R14, !mcsema_real_eip !2
  store i64 %15, i64* %R14_val, !mcsema_real_eip !2
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %16 = load i64, i64* %R15, !mcsema_real_eip !2
  store i64 %16, i64* %R15_val, !mcsema_real_eip !2
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %17 = load i64, i64* %RIP, !mcsema_real_eip !2
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !2
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !2
  store i1 %18, i1* %CF_val, !mcsema_real_eip !2
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !2
  store i1 %19, i1* %PF_val, !mcsema_real_eip !2
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !2
  store i1 %20, i1* %AF_val, !mcsema_real_eip !2
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !2
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !2
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !2
  store i1 %22, i1* %SF_val, !mcsema_real_eip !2
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !2
  store i1 %23, i1* %OF_val, !mcsema_real_eip !2
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !2
  store i1 %24, i1* %DF_val, !mcsema_real_eip !2
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !2
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !2
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !2
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !2
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !2
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !2
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !2
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !2
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !2
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !2
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !2
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !2
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !2
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !2
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !2
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !2
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !2
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !2
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !2
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !2
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !2
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !2
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !2
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !2
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !2
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !2
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !2
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !2
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !2
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !2
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !2
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !2
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !2
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !2
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !2
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !2
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !2
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !2
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !2
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !2
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !2
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !2
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !2
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !2
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !2
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !2
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !2
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !2
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !2
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !2
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !2
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !2
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !2
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !2
  %59 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !2
  store i11 %59, i11* %FPU_FOPCODE_val, !mcsema_real_eip !2
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !2
  store i128 %60, i128* %XMM0_val, !mcsema_real_eip !2
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !2
  store i128 %61, i128* %XMM1_val, !mcsema_real_eip !2
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !2
  store i128 %62, i128* %XMM2_val, !mcsema_real_eip !2
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %63 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !2
  store i128 %63, i128* %XMM3_val, !mcsema_real_eip !2
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %64 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !2
  store i128 %64, i128* %XMM4_val, !mcsema_real_eip !2
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %65 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !2
  store i128 %65, i128* %XMM5_val, !mcsema_real_eip !2
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %66 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !2
  store i128 %66, i128* %XMM6_val, !mcsema_real_eip !2
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %67 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !2
  store i128 %67, i128* %XMM7_val, !mcsema_real_eip !2
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %68 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !2
  store i128 %68, i128* %XMM8_val, !mcsema_real_eip !2
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %69 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !2
  store i128 %69, i128* %XMM9_val, !mcsema_real_eip !2
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %70 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !2
  store i128 %70, i128* %XMM10_val, !mcsema_real_eip !2
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %71 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !2
  store i128 %71, i128* %XMM11_val, !mcsema_real_eip !2
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %72 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !2
  store i128 %72, i128* %XMM12_val, !mcsema_real_eip !2
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %73 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !2
  store i128 %73, i128* %XMM13_val, !mcsema_real_eip !2
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %74 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !2
  store i128 %74, i128* %XMM14_val, !mcsema_real_eip !2
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %75 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !2
  store i128 %75, i128* %XMM15_val, !mcsema_real_eip !2
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %76 = load i64, i64* %STACK_BASE, !mcsema_real_eip !2
  store i64 %76, i64* %STACK_BASE_val, !mcsema_real_eip !2
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %77 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !2
  store i64 %77, i64* %STACK_LIMIT_val, !mcsema_real_eip !2
  %78 = load i64, i64* %RBP_val, !mcsema_real_eip !2
  %79 = load i64, i64* %RSP_val, !mcsema_real_eip !2
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !2
  store i64 %78, i64* %81, !mcsema_real_eip !2
  store i64 %80, i64* %RBP_val, !mcsema_real_eip !3
  %82 = add i64 %79, -88
  %83 = xor i64 %82, %80, !mcsema_real_eip !4
  %84 = and i64 %83, 16
  %85 = icmp eq i64 %84, 0
  store i1 %85, i1* %AF_val, !mcsema_real_eip !4
  %86 = trunc i64 %82 to i8, !mcsema_real_eip !4
  %87 = tail call i8 @llvm.ctpop.i8(i8 %86), !mcsema_real_eip !4
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  store i1 %89, i1* %PF_val, !mcsema_real_eip !4
  %90 = icmp eq i64 %82, 0, !mcsema_real_eip !4
  store i1 %90, i1* %ZF_val, !mcsema_real_eip !4
  %91 = icmp slt i64 %82, 0
  store i1 %91, i1* %SF_val, !mcsema_real_eip !4
  %92 = icmp ult i64 %80, 80, !mcsema_real_eip !4
  store i1 %92, i1* %CF_val, !mcsema_real_eip !4
  %93 = and i64 %83, %80, !mcsema_real_eip !4
  %94 = icmp slt i64 %93, 0
  store i1 %94, i1* %OF_val, !mcsema_real_eip !4
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !4
  %95 = load i64, i64* %RBP_val, !mcsema_real_eip !5
  %96 = add i64 %95, -4, !mcsema_real_eip !5
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !5
  %98 = bitcast i64* %97 to i32*
  store i32 0, i32* %98, !mcsema_real_eip !5
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %100 = add i64 %99, -52, !mcsema_real_eip !6
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !6
  %102 = bitcast i64* %101 to i32*
  store i32 0, i32* %102, !mcsema_real_eip !6
  br label %block_0x46, !mcsema_real_eip !7

block_0x46:                                       ; preds = %block_0x53, %entry
  %103 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  %104 = add i64 %103, -52, !mcsema_real_eip !7
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !7
  %106 = bitcast i64* %105 to i32*
  %107 = load i32, i32* %106, !mcsema_real_eip !7
  %108 = add i32 %107, -10
  %109 = xor i32 %108, %107, !mcsema_real_eip !7
  %110 = and i32 %109, 16, !mcsema_real_eip !7
  %111 = icmp ne i32 %110, 0, !mcsema_real_eip !7
  store i1 %111, i1* %AF_val, !mcsema_real_eip !7
  %112 = trunc i32 %108 to i8, !mcsema_real_eip !7
  %113 = tail call i8 @llvm.ctpop.i8(i8 %112), !mcsema_real_eip !7
  %114 = and i8 %113, 1
  %115 = icmp eq i8 %114, 0
  store i1 %115, i1* %PF_val, !mcsema_real_eip !7
  %116 = icmp eq i32 %108, 0, !mcsema_real_eip !7
  store i1 %116, i1* %ZF_val, !mcsema_real_eip !7
  %117 = icmp slt i32 %108, 0
  store i1 %117, i1* %SF_val, !mcsema_real_eip !7
  %118 = icmp ult i32 %107, 10, !mcsema_real_eip !7
  store i1 %118, i1* %CF_val, !mcsema_real_eip !7
  %119 = and i32 %109, %107, !mcsema_real_eip !7
  %120 = icmp slt i32 %119, 0
  store i1 %120, i1* %OF_val, !mcsema_real_eip !7
  %tmp = xor i1 %117, %120
  br i1 %tmp, label %block_0x53, label %block_0x6f, !mcsema_real_eip !8

block_0x53:                                       ; preds = %block_0x46
  %121 = load i64, i64* %RBP_val, !mcsema_real_eip !9
  %122 = add i64 %121, -52, !mcsema_real_eip !9
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !9
  %124 = bitcast i64* %123 to i32*
  %125 = load i32, i32* %124, !mcsema_real_eip !9
  %126 = sext i32 %125 to i64, !mcsema_real_eip !9
  store i64 %126, i64* %RAX_val, !mcsema_real_eip !9
  %127 = load i64, i64* %RBP_val, !mcsema_real_eip !10
  %128 = add i64 %127, -48, !mcsema_real_eip !10
  %129 = shl nsw i64 %126, 2
  %130 = add i64 %128, %129, !mcsema_real_eip !10
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !10
  %132 = bitcast i64* %131 to i32*
  store i32 21, i32* %132, !mcsema_real_eip !10
  %133 = load i64, i64* %RBP_val, !mcsema_real_eip !11
  %134 = add i64 %133, -52, !mcsema_real_eip !11
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !11
  %136 = bitcast i64* %135 to i32*
  %137 = load i32, i32* %136, !mcsema_real_eip !11
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %137, i32 1)
  %138 = extractvalue { i32, i1 } %uadd, 0
  %139 = xor i32 %138, %137, !mcsema_real_eip !12
  %140 = and i32 %139, 16, !mcsema_real_eip !12
  %141 = icmp ne i32 %140, 0, !mcsema_real_eip !12
  store i1 %141, i1* %AF_val, !mcsema_real_eip !12
  %142 = icmp slt i32 %138, 0
  store i1 %142, i1* %SF_val, !mcsema_real_eip !12
  %143 = icmp eq i32 %138, 0, !mcsema_real_eip !12
  store i1 %143, i1* %ZF_val, !mcsema_real_eip !12
  %144 = xor i32 %137, -2147483648, !mcsema_real_eip !12
  %145 = and i32 %139, %144, !mcsema_real_eip !12
  %146 = icmp slt i32 %145, 0
  store i1 %146, i1* %OF_val, !mcsema_real_eip !12
  %147 = trunc i32 %138 to i8, !mcsema_real_eip !12
  %148 = tail call i8 @llvm.ctpop.i8(i8 %147), !mcsema_real_eip !12
  %149 = and i8 %148, 1
  %150 = icmp eq i8 %149, 0
  store i1 %150, i1* %PF_val, !mcsema_real_eip !12
  %151 = extractvalue { i32, i1 } %uadd, 1
  store i1 %151, i1* %CF_val, !mcsema_real_eip !12
  %152 = zext i32 %138 to i64, !mcsema_real_eip !12
  store i64 %152, i64* %RAX_val, !mcsema_real_eip !12
  %153 = load i64, i64* %RBP_val, !mcsema_real_eip !13
  %154 = add i64 %153, -52, !mcsema_real_eip !13
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !13
  %156 = bitcast i64* %155 to i32*
  store i32 %138, i32* %156, !mcsema_real_eip !13
  br label %block_0x46, !mcsema_real_eip !14

block_0x6f:                                       ; preds = %block_0x46
  store i64 10, i64* %RAX_val, !mcsema_real_eip !15
  %157 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %158 = add i64 %157, -48, !mcsema_real_eip !16
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !16
  %160 = ptrtoint i64* %159 to i64, !mcsema_real_eip !16
  store i64 %160, i64* %RCX_val, !mcsema_real_eip !16
  store i64 10, i64* %RDI_val, !mcsema_real_eip !17
  %161 = load i64, i64* %RAX_val, !mcsema_real_eip !18
  %162 = and i64 %161, 4294967295
  store i64 %162, i64* %RSI_val, !mcsema_real_eip !18
  store i64 %162, i64* %RDX_val, !mcsema_real_eip !19
  %163 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %164 = add i64 %163, -64, !mcsema_real_eip !20
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !20
  %166 = load i64, i64* %RCX_val, !mcsema_real_eip !20
  store i64 %166, i64* %165, !mcsema_real_eip !20
  %167 = load i64, i64* %RAX_val, !mcsema_real_eip !21
  %168 = and i64 %167, 4294967295
  store i64 %168, i64* %RCX_val, !mcsema_real_eip !21
  store i64 %168, i64* %R8_val, !mcsema_real_eip !22
  store i64 %168, i64* %R9_val, !mcsema_real_eip !23
  %169 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %170 = add i64 %169, -64, !mcsema_real_eip !24
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !24
  %172 = load i64, i64* %171, !mcsema_real_eip !24
  store i64 %172, i64* %R10_val, !mcsema_real_eip !24
  %173 = load i64, i64* %RSP_val, !mcsema_real_eip !25
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !25
  store i64 %172, i64* %174, !mcsema_real_eip !25
  %175 = load i64, i64* %RSP_val, !mcsema_real_eip !26
  %176 = add i64 %175, -8
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !26
  store i64 -4981261766360305936, i64* %177, !mcsema_real_eip !26
  store i64 %176, i64* %RSP_val, !mcsema_real_eip !26
  %178 = load i64, i64* %RAX_val, !mcsema_real_eip !26
  store i64 %178, i64* %RAX, !mcsema_real_eip !26
  %179 = load i64, i64* %RBX_val, !mcsema_real_eip !26
  store i64 %179, i64* %RBX, !mcsema_real_eip !26
  %180 = load i64, i64* %RCX_val, !mcsema_real_eip !26
  store i64 %180, i64* %RCX, !mcsema_real_eip !26
  %181 = load i64, i64* %RDX_val, !mcsema_real_eip !26
  store i64 %181, i64* %RDX, !mcsema_real_eip !26
  %182 = load i64, i64* %RSI_val, !mcsema_real_eip !26
  store i64 %182, i64* %RSI, !mcsema_real_eip !26
  %183 = load i64, i64* %RDI_val, !mcsema_real_eip !26
  store i64 %183, i64* %RDI, !mcsema_real_eip !26
  %184 = load i64, i64* %RSP_val, !mcsema_real_eip !26
  store i64 %184, i64* %RSP, !mcsema_real_eip !26
  %185 = load i64, i64* %RBP_val, !mcsema_real_eip !26
  store i64 %185, i64* %RBP, !mcsema_real_eip !26
  %186 = load i64, i64* %R8_val, !mcsema_real_eip !26
  store i64 %186, i64* %R8, !mcsema_real_eip !26
  %187 = load i64, i64* %R9_val, !mcsema_real_eip !26
  store i64 %187, i64* %R9, !mcsema_real_eip !26
  %188 = load i64, i64* %R10_val, !mcsema_real_eip !26
  store i64 %188, i64* %R10, !mcsema_real_eip !26
  %189 = load i64, i64* %R11_val, !mcsema_real_eip !26
  store i64 %189, i64* %R11, !mcsema_real_eip !26
  %190 = load i64, i64* %R12_val, !mcsema_real_eip !26
  store i64 %190, i64* %R12, !mcsema_real_eip !26
  %191 = load i64, i64* %R13_val, !mcsema_real_eip !26
  store i64 %191, i64* %R13, !mcsema_real_eip !26
  %192 = load i64, i64* %R14_val, !mcsema_real_eip !26
  store i64 %192, i64* %R14, !mcsema_real_eip !26
  %193 = load i64, i64* %R15_val, !mcsema_real_eip !26
  store i64 %193, i64* %R15, !mcsema_real_eip !26
  %194 = load i64, i64* %RIP_val, !mcsema_real_eip !26
  store i64 %194, i64* %RIP, !mcsema_real_eip !26
  %195 = load i1, i1* %CF_val, !mcsema_real_eip !26
  store i1 %195, i1* %CF, align 1, !mcsema_real_eip !26
  %196 = load i1, i1* %PF_val, !mcsema_real_eip !26
  store i1 %196, i1* %PF, align 1, !mcsema_real_eip !26
  %197 = load i1, i1* %AF_val, !mcsema_real_eip !26
  store i1 %197, i1* %AF, align 1, !mcsema_real_eip !26
  %198 = load i1, i1* %ZF_val, !mcsema_real_eip !26
  store i1 %198, i1* %ZF, align 1, !mcsema_real_eip !26
  %199 = load i1, i1* %SF_val, !mcsema_real_eip !26
  store i1 %199, i1* %SF, align 1, !mcsema_real_eip !26
  %200 = load i1, i1* %OF_val, !mcsema_real_eip !26
  store i1 %200, i1* %OF, align 1, !mcsema_real_eip !26
  %201 = load i1, i1* %DF_val, !mcsema_real_eip !26
  store i1 %201, i1* %DF, align 1, !mcsema_real_eip !26
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !26
  %202 = load i1, i1* %FPU_B_val, !mcsema_real_eip !26
  store i1 %202, i1* %FPU_B, align 1, !mcsema_real_eip !26
  %203 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !26
  store i1 %203, i1* %FPU_C3, align 1, !mcsema_real_eip !26
  %204 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !26
  store i3 %204, i3* %FPU_TOP, align 1, !mcsema_real_eip !26
  %205 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !26
  store i1 %205, i1* %FPU_C2, align 1, !mcsema_real_eip !26
  %206 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !26
  store i1 %206, i1* %FPU_C1, align 1, !mcsema_real_eip !26
  %207 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !26
  store i1 %207, i1* %FPU_C0, align 1, !mcsema_real_eip !26
  %208 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !26
  store i1 %208, i1* %FPU_ES, align 1, !mcsema_real_eip !26
  %209 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !26
  store i1 %209, i1* %FPU_SF, align 1, !mcsema_real_eip !26
  %210 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !26
  store i1 %210, i1* %FPU_PE, align 1, !mcsema_real_eip !26
  %211 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !26
  store i1 %211, i1* %FPU_UE, align 1, !mcsema_real_eip !26
  %212 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !26
  store i1 %212, i1* %FPU_OE, align 1, !mcsema_real_eip !26
  %213 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !26
  store i1 %213, i1* %FPU_ZE, align 1, !mcsema_real_eip !26
  %214 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !26
  store i1 %214, i1* %FPU_DE, align 1, !mcsema_real_eip !26
  %215 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !26
  store i1 %215, i1* %FPU_IE, align 1, !mcsema_real_eip !26
  %216 = load i1, i1* %FPU_X_val, !mcsema_real_eip !26
  store i1 %216, i1* %FPU_X, align 1, !mcsema_real_eip !26
  %217 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !26
  store i2 %217, i2* %FPU_RC, align 1, !mcsema_real_eip !26
  %218 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !26
  store i2 %218, i2* %FPU_PC, align 1, !mcsema_real_eip !26
  %219 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !26
  store i1 %219, i1* %FPU_PM, align 1, !mcsema_real_eip !26
  %220 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !26
  store i1 %220, i1* %FPU_UM, align 1, !mcsema_real_eip !26
  %221 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !26
  store i1 %221, i1* %FPU_OM, align 1, !mcsema_real_eip !26
  %222 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !26
  store i1 %222, i1* %FPU_ZM, align 1, !mcsema_real_eip !26
  %223 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !26
  store i1 %223, i1* %FPU_DM, align 1, !mcsema_real_eip !26
  %224 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !26
  store i1 %224, i1* %FPU_IM, align 1, !mcsema_real_eip !26
  %225 = load i64, i64* %53, align 4
  store i64 %225, i64* %52, align 4
  %226 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !26
  store i16 %226, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !26
  %227 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !26
  store i64 %227, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !26
  %228 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !26
  store i16 %228, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !26
  %229 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !26
  store i64 %229, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !26
  %230 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !26
  store i11 %230, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !26
  %231 = load i128, i128* %XMM0_val, !mcsema_real_eip !26
  store i128 %231, i128* %XMM0, align 1, !mcsema_real_eip !26
  %232 = load i128, i128* %XMM1_val, !mcsema_real_eip !26
  store i128 %232, i128* %XMM1, align 1, !mcsema_real_eip !26
  %233 = load i128, i128* %XMM2_val, !mcsema_real_eip !26
  store i128 %233, i128* %XMM2, align 1, !mcsema_real_eip !26
  %234 = load i128, i128* %XMM3_val, !mcsema_real_eip !26
  store i128 %234, i128* %XMM3, align 1, !mcsema_real_eip !26
  %235 = load i128, i128* %XMM4_val, !mcsema_real_eip !26
  store i128 %235, i128* %XMM4, align 1, !mcsema_real_eip !26
  %236 = load i128, i128* %XMM5_val, !mcsema_real_eip !26
  store i128 %236, i128* %XMM5, align 1, !mcsema_real_eip !26
  %237 = load i128, i128* %XMM6_val, !mcsema_real_eip !26
  store i128 %237, i128* %XMM6, align 1, !mcsema_real_eip !26
  %238 = load i128, i128* %XMM7_val, !mcsema_real_eip !26
  store i128 %238, i128* %XMM7, align 1, !mcsema_real_eip !26
  %239 = load i128, i128* %XMM8_val, !mcsema_real_eip !26
  store i128 %239, i128* %XMM8, align 1, !mcsema_real_eip !26
  %240 = load i128, i128* %XMM9_val, !mcsema_real_eip !26
  store i128 %240, i128* %XMM9, align 1, !mcsema_real_eip !26
  %241 = load i128, i128* %XMM10_val, !mcsema_real_eip !26
  store i128 %241, i128* %XMM10, align 1, !mcsema_real_eip !26
  %242 = load i128, i128* %XMM11_val, !mcsema_real_eip !26
  store i128 %242, i128* %XMM11, align 1, !mcsema_real_eip !26
  %243 = load i128, i128* %XMM12_val, !mcsema_real_eip !26
  store i128 %243, i128* %XMM12, align 1, !mcsema_real_eip !26
  %244 = load i128, i128* %XMM13_val, !mcsema_real_eip !26
  store i128 %244, i128* %XMM13, align 1, !mcsema_real_eip !26
  %245 = load i128, i128* %XMM14_val, !mcsema_real_eip !26
  store i128 %245, i128* %XMM14, align 1, !mcsema_real_eip !26
  %246 = load i128, i128* %XMM15_val, !mcsema_real_eip !26
  store i128 %246, i128* %XMM15, align 1, !mcsema_real_eip !26
  %247 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !26
  store i64 %247, i64* %STACK_BASE, align 1, !mcsema_real_eip !26
  %248 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !26
  store i64 %248, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !26
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !26
  %249 = load i64, i64* %RAX, !mcsema_real_eip !26
  store i64 %249, i64* %RAX_val, !mcsema_real_eip !26
  %250 = load i64, i64* %RBX, !mcsema_real_eip !26
  store i64 %250, i64* %RBX_val, !mcsema_real_eip !26
  %251 = load i64, i64* %RCX, !mcsema_real_eip !26
  store i64 %251, i64* %RCX_val, !mcsema_real_eip !26
  %252 = load i64, i64* %RDX, !mcsema_real_eip !26
  store i64 %252, i64* %RDX_val, !mcsema_real_eip !26
  %253 = load i64, i64* %RSI, !mcsema_real_eip !26
  store i64 %253, i64* %RSI_val, !mcsema_real_eip !26
  %254 = load i64, i64* %RDI, !mcsema_real_eip !26
  store i64 %254, i64* %RDI_val, !mcsema_real_eip !26
  %255 = load i64, i64* %RSP, !mcsema_real_eip !26
  store i64 %255, i64* %RSP_val, !mcsema_real_eip !26
  %256 = load i64, i64* %RBP, !mcsema_real_eip !26
  store i64 %256, i64* %RBP_val, !mcsema_real_eip !26
  %257 = load i64, i64* %R8, !mcsema_real_eip !26
  store i64 %257, i64* %R8_val, !mcsema_real_eip !26
  %258 = load i64, i64* %R9, !mcsema_real_eip !26
  store i64 %258, i64* %R9_val, !mcsema_real_eip !26
  %259 = load i64, i64* %R10, !mcsema_real_eip !26
  store i64 %259, i64* %R10_val, !mcsema_real_eip !26
  %260 = load i64, i64* %R11, !mcsema_real_eip !26
  store i64 %260, i64* %R11_val, !mcsema_real_eip !26
  %261 = load i64, i64* %R12, !mcsema_real_eip !26
  store i64 %261, i64* %R12_val, !mcsema_real_eip !26
  %262 = load i64, i64* %R13, !mcsema_real_eip !26
  store i64 %262, i64* %R13_val, !mcsema_real_eip !26
  %263 = load i64, i64* %R14, !mcsema_real_eip !26
  store i64 %263, i64* %R14_val, !mcsema_real_eip !26
  %264 = load i64, i64* %R15, !mcsema_real_eip !26
  store i64 %264, i64* %R15_val, !mcsema_real_eip !26
  %265 = load i64, i64* %RIP, !mcsema_real_eip !26
  store i64 %265, i64* %RIP_val, !mcsema_real_eip !26
  %266 = load i1, i1* %CF, align 1, !mcsema_real_eip !26
  store i1 %266, i1* %CF_val, !mcsema_real_eip !26
  %267 = load i1, i1* %PF, align 1, !mcsema_real_eip !26
  store i1 %267, i1* %PF_val, !mcsema_real_eip !26
  %268 = load i1, i1* %AF, align 1, !mcsema_real_eip !26
  store i1 %268, i1* %AF_val, !mcsema_real_eip !26
  %269 = load i1, i1* %ZF, align 1, !mcsema_real_eip !26
  store i1 %269, i1* %ZF_val, !mcsema_real_eip !26
  %270 = load i1, i1* %SF, align 1, !mcsema_real_eip !26
  store i1 %270, i1* %SF_val, !mcsema_real_eip !26
  %271 = load i1, i1* %OF, align 1, !mcsema_real_eip !26
  store i1 %271, i1* %OF_val, !mcsema_real_eip !26
  %272 = load i1, i1* %DF, align 1, !mcsema_real_eip !26
  store i1 %272, i1* %DF_val, !mcsema_real_eip !26
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !26
  %273 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !26
  store i1 %273, i1* %FPU_B_val, !mcsema_real_eip !26
  %274 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !26
  store i1 %274, i1* %FPU_C3_val, !mcsema_real_eip !26
  %275 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !26
  store i3 %275, i3* %FPU_TOP_val, !mcsema_real_eip !26
  %276 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !26
  store i1 %276, i1* %FPU_C2_val, !mcsema_real_eip !26
  %277 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !26
  store i1 %277, i1* %FPU_C1_val, !mcsema_real_eip !26
  %278 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !26
  store i1 %278, i1* %FPU_C0_val, !mcsema_real_eip !26
  %279 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !26
  store i1 %279, i1* %FPU_ES_val, !mcsema_real_eip !26
  %280 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !26
  store i1 %280, i1* %FPU_SF_val, !mcsema_real_eip !26
  %281 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !26
  store i1 %281, i1* %FPU_PE_val, !mcsema_real_eip !26
  %282 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !26
  store i1 %282, i1* %FPU_UE_val, !mcsema_real_eip !26
  %283 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !26
  store i1 %283, i1* %FPU_OE_val, !mcsema_real_eip !26
  %284 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !26
  store i1 %284, i1* %FPU_ZE_val, !mcsema_real_eip !26
  %285 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !26
  store i1 %285, i1* %FPU_DE_val, !mcsema_real_eip !26
  %286 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !26
  store i1 %286, i1* %FPU_IE_val, !mcsema_real_eip !26
  %287 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !26
  store i1 %287, i1* %FPU_X_val, !mcsema_real_eip !26
  %288 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !26
  store i2 %288, i2* %FPU_RC_val, !mcsema_real_eip !26
  %289 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !26
  store i2 %289, i2* %FPU_PC_val, !mcsema_real_eip !26
  %290 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !26
  store i1 %290, i1* %FPU_PM_val, !mcsema_real_eip !26
  %291 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !26
  store i1 %291, i1* %FPU_UM_val, !mcsema_real_eip !26
  %292 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !26
  store i1 %292, i1* %FPU_OM_val, !mcsema_real_eip !26
  %293 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !26
  store i1 %293, i1* %FPU_ZM_val, !mcsema_real_eip !26
  %294 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !26
  store i1 %294, i1* %FPU_DM_val, !mcsema_real_eip !26
  %295 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !26
  store i1 %295, i1* %FPU_IM_val, !mcsema_real_eip !26
  %296 = load i64, i64* %52, align 4
  store i64 %296, i64* %53, align 4
  %297 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !26
  store i16 %297, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !26
  %298 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !26
  store i64 %298, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !26
  %299 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !26
  store i16 %299, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !26
  %300 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !26
  store i64 %300, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !26
  %301 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !26
  store i11 %301, i11* %FPU_FOPCODE_val, !mcsema_real_eip !26
  %302 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !26
  store i128 %302, i128* %XMM0_val, !mcsema_real_eip !26
  %303 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !26
  store i128 %303, i128* %XMM1_val, !mcsema_real_eip !26
  %304 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !26
  store i128 %304, i128* %XMM2_val, !mcsema_real_eip !26
  %305 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !26
  store i128 %305, i128* %XMM3_val, !mcsema_real_eip !26
  %306 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !26
  store i128 %306, i128* %XMM4_val, !mcsema_real_eip !26
  %307 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !26
  store i128 %307, i128* %XMM5_val, !mcsema_real_eip !26
  %308 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !26
  store i128 %308, i128* %XMM6_val, !mcsema_real_eip !26
  %309 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !26
  store i128 %309, i128* %XMM7_val, !mcsema_real_eip !26
  %310 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !26
  store i128 %310, i128* %XMM8_val, !mcsema_real_eip !26
  %311 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !26
  store i128 %311, i128* %XMM9_val, !mcsema_real_eip !26
  %312 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !26
  store i128 %312, i128* %XMM10_val, !mcsema_real_eip !26
  %313 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !26
  store i128 %313, i128* %XMM11_val, !mcsema_real_eip !26
  %314 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !26
  store i128 %314, i128* %XMM12_val, !mcsema_real_eip !26
  %315 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !26
  store i128 %315, i128* %XMM13_val, !mcsema_real_eip !26
  %316 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !26
  store i128 %316, i128* %XMM14_val, !mcsema_real_eip !26
  %317 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !26
  store i128 %317, i128* %XMM15_val, !mcsema_real_eip !26
  %318 = load i64, i64* %STACK_BASE, !mcsema_real_eip !26
  store i64 %318, i64* %STACK_BASE_val, !mcsema_real_eip !26
  %319 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !26
  store i64 %319, i64* %STACK_LIMIT_val, !mcsema_real_eip !26
  %320 = load i64, i64* %RSP_val, !mcsema_real_eip !27
  %uadd211 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %320, i64 80)
  %321 = extractvalue { i64, i1 } %uadd211, 0
  %322 = xor i64 %321, %320, !mcsema_real_eip !27
  %323 = and i64 %322, 16
  %324 = icmp eq i64 %323, 0
  store i1 %324, i1* %AF_val, !mcsema_real_eip !27
  %325 = icmp slt i64 %321, 0
  store i1 %325, i1* %SF_val, !mcsema_real_eip !27
  %326 = icmp eq i64 %321, 0, !mcsema_real_eip !27
  store i1 %326, i1* %ZF_val, !mcsema_real_eip !27
  %327 = xor i64 %320, -9223372036854775808, !mcsema_real_eip !27
  %328 = and i64 %322, %327, !mcsema_real_eip !27
  %329 = icmp slt i64 %328, 0
  store i1 %329, i1* %OF_val, !mcsema_real_eip !27
  %330 = trunc i64 %321 to i8, !mcsema_real_eip !27
  %331 = tail call i8 @llvm.ctpop.i8(i8 %330), !mcsema_real_eip !27
  %332 = and i8 %331, 1
  %333 = icmp eq i8 %332, 0
  store i1 %333, i1* %PF_val, !mcsema_real_eip !27
  %334 = extractvalue { i64, i1 } %uadd211, 1
  store i1 %334, i1* %CF_val, !mcsema_real_eip !27
  store i64 %321, i64* %RSP_val, !mcsema_real_eip !27
  %335 = inttoptr i64 %321 to i64*, !mcsema_real_eip !28
  %336 = load i64, i64* %335, !mcsema_real_eip !28
  store i64 %336, i64* %RBP_val, !mcsema_real_eip !28
  %337 = add i64 %321, 16, !mcsema_real_eip !29
  store i64 %337, i64* %RSP_val, !mcsema_real_eip !29
  %338 = load i64, i64* %RAX_val, !mcsema_real_eip !29
  store i64 %338, i64* %RAX, !mcsema_real_eip !29
  %339 = load i64, i64* %RBX_val, !mcsema_real_eip !29
  store i64 %339, i64* %RBX, !mcsema_real_eip !29
  %340 = load i64, i64* %RCX_val, !mcsema_real_eip !29
  store i64 %340, i64* %RCX, !mcsema_real_eip !29
  %341 = load i64, i64* %RDX_val, !mcsema_real_eip !29
  store i64 %341, i64* %RDX, !mcsema_real_eip !29
  %342 = load i64, i64* %RSI_val, !mcsema_real_eip !29
  store i64 %342, i64* %RSI, !mcsema_real_eip !29
  %343 = load i64, i64* %RDI_val, !mcsema_real_eip !29
  store i64 %343, i64* %RDI, !mcsema_real_eip !29
  %344 = load i64, i64* %RSP_val, !mcsema_real_eip !29
  store i64 %344, i64* %RSP, !mcsema_real_eip !29
  %345 = load i64, i64* %RBP_val, !mcsema_real_eip !29
  store i64 %345, i64* %RBP, !mcsema_real_eip !29
  %346 = load i64, i64* %R8_val, !mcsema_real_eip !29
  store i64 %346, i64* %R8, !mcsema_real_eip !29
  %347 = load i64, i64* %R9_val, !mcsema_real_eip !29
  store i64 %347, i64* %R9, !mcsema_real_eip !29
  %348 = load i64, i64* %R10_val, !mcsema_real_eip !29
  store i64 %348, i64* %R10, !mcsema_real_eip !29
  %349 = load i64, i64* %R11_val, !mcsema_real_eip !29
  store i64 %349, i64* %R11, !mcsema_real_eip !29
  %350 = load i64, i64* %R12_val, !mcsema_real_eip !29
  store i64 %350, i64* %R12, !mcsema_real_eip !29
  %351 = load i64, i64* %R13_val, !mcsema_real_eip !29
  store i64 %351, i64* %R13, !mcsema_real_eip !29
  %352 = load i64, i64* %R14_val, !mcsema_real_eip !29
  store i64 %352, i64* %R14, !mcsema_real_eip !29
  %353 = load i64, i64* %R15_val, !mcsema_real_eip !29
  store i64 %353, i64* %R15, !mcsema_real_eip !29
  %354 = load i64, i64* %RIP_val, !mcsema_real_eip !29
  store i64 %354, i64* %RIP, !mcsema_real_eip !29
  %355 = load i1, i1* %CF_val, !mcsema_real_eip !29
  store i1 %355, i1* %CF, align 1, !mcsema_real_eip !29
  %356 = load i1, i1* %PF_val, !mcsema_real_eip !29
  store i1 %356, i1* %PF, align 1, !mcsema_real_eip !29
  %357 = load i1, i1* %AF_val, !mcsema_real_eip !29
  store i1 %357, i1* %AF, align 1, !mcsema_real_eip !29
  %358 = load i1, i1* %ZF_val, !mcsema_real_eip !29
  store i1 %358, i1* %ZF, align 1, !mcsema_real_eip !29
  %359 = load i1, i1* %SF_val, !mcsema_real_eip !29
  store i1 %359, i1* %SF, align 1, !mcsema_real_eip !29
  %360 = load i1, i1* %OF_val, !mcsema_real_eip !29
  store i1 %360, i1* %OF, align 1, !mcsema_real_eip !29
  %361 = load i1, i1* %DF_val, !mcsema_real_eip !29
  store i1 %361, i1* %DF, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !29
  %362 = load i1, i1* %FPU_B_val, !mcsema_real_eip !29
  store i1 %362, i1* %FPU_B, align 1, !mcsema_real_eip !29
  %363 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !29
  store i1 %363, i1* %FPU_C3, align 1, !mcsema_real_eip !29
  %364 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !29
  store i3 %364, i3* %FPU_TOP, align 1, !mcsema_real_eip !29
  %365 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !29
  store i1 %365, i1* %FPU_C2, align 1, !mcsema_real_eip !29
  %366 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !29
  store i1 %366, i1* %FPU_C1, align 1, !mcsema_real_eip !29
  %367 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !29
  store i1 %367, i1* %FPU_C0, align 1, !mcsema_real_eip !29
  %368 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !29
  store i1 %368, i1* %FPU_ES, align 1, !mcsema_real_eip !29
  %369 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !29
  store i1 %369, i1* %FPU_SF, align 1, !mcsema_real_eip !29
  %370 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !29
  store i1 %370, i1* %FPU_PE, align 1, !mcsema_real_eip !29
  %371 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !29
  store i1 %371, i1* %FPU_UE, align 1, !mcsema_real_eip !29
  %372 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !29
  store i1 %372, i1* %FPU_OE, align 1, !mcsema_real_eip !29
  %373 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !29
  store i1 %373, i1* %FPU_ZE, align 1, !mcsema_real_eip !29
  %374 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !29
  store i1 %374, i1* %FPU_DE, align 1, !mcsema_real_eip !29
  %375 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !29
  store i1 %375, i1* %FPU_IE, align 1, !mcsema_real_eip !29
  %376 = load i1, i1* %FPU_X_val, !mcsema_real_eip !29
  store i1 %376, i1* %FPU_X, align 1, !mcsema_real_eip !29
  %377 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !29
  store i2 %377, i2* %FPU_RC, align 1, !mcsema_real_eip !29
  %378 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !29
  store i2 %378, i2* %FPU_PC, align 1, !mcsema_real_eip !29
  %379 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !29
  store i1 %379, i1* %FPU_PM, align 1, !mcsema_real_eip !29
  %380 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !29
  store i1 %380, i1* %FPU_UM, align 1, !mcsema_real_eip !29
  %381 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !29
  store i1 %381, i1* %FPU_OM, align 1, !mcsema_real_eip !29
  %382 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !29
  store i1 %382, i1* %FPU_ZM, align 1, !mcsema_real_eip !29
  %383 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !29
  store i1 %383, i1* %FPU_DM, align 1, !mcsema_real_eip !29
  %384 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !29
  store i1 %384, i1* %FPU_IM, align 1, !mcsema_real_eip !29
  %385 = load i64, i64* %53, align 4
  store i64 %385, i64* %52, align 4
  %386 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !29
  store i16 %386, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !29
  %387 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !29
  store i64 %387, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !29
  %388 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !29
  store i16 %388, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !29
  %389 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !29
  store i64 %389, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !29
  %390 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !29
  store i11 %390, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !29
  %391 = load i128, i128* %XMM0_val, !mcsema_real_eip !29
  store i128 %391, i128* %XMM0, align 1, !mcsema_real_eip !29
  %392 = load i128, i128* %XMM1_val, !mcsema_real_eip !29
  store i128 %392, i128* %XMM1, align 1, !mcsema_real_eip !29
  %393 = load i128, i128* %XMM2_val, !mcsema_real_eip !29
  store i128 %393, i128* %XMM2, align 1, !mcsema_real_eip !29
  %394 = load i128, i128* %XMM3_val, !mcsema_real_eip !29
  store i128 %394, i128* %XMM3, align 1, !mcsema_real_eip !29
  %395 = load i128, i128* %XMM4_val, !mcsema_real_eip !29
  store i128 %395, i128* %XMM4, align 1, !mcsema_real_eip !29
  %396 = load i128, i128* %XMM5_val, !mcsema_real_eip !29
  store i128 %396, i128* %XMM5, align 1, !mcsema_real_eip !29
  %397 = load i128, i128* %XMM6_val, !mcsema_real_eip !29
  store i128 %397, i128* %XMM6, align 1, !mcsema_real_eip !29
  %398 = load i128, i128* %XMM7_val, !mcsema_real_eip !29
  store i128 %398, i128* %XMM7, align 1, !mcsema_real_eip !29
  %399 = load i128, i128* %XMM8_val, !mcsema_real_eip !29
  store i128 %399, i128* %XMM8, align 1, !mcsema_real_eip !29
  %400 = load i128, i128* %XMM9_val, !mcsema_real_eip !29
  store i128 %400, i128* %XMM9, align 1, !mcsema_real_eip !29
  %401 = load i128, i128* %XMM10_val, !mcsema_real_eip !29
  store i128 %401, i128* %XMM10, align 1, !mcsema_real_eip !29
  %402 = load i128, i128* %XMM11_val, !mcsema_real_eip !29
  store i128 %402, i128* %XMM11, align 1, !mcsema_real_eip !29
  %403 = load i128, i128* %XMM12_val, !mcsema_real_eip !29
  store i128 %403, i128* %XMM12, align 1, !mcsema_real_eip !29
  %404 = load i128, i128* %XMM13_val, !mcsema_real_eip !29
  store i128 %404, i128* %XMM13, align 1, !mcsema_real_eip !29
  %405 = load i128, i128* %XMM14_val, !mcsema_real_eip !29
  store i128 %405, i128* %XMM14, align 1, !mcsema_real_eip !29
  %406 = load i128, i128* %XMM15_val, !mcsema_real_eip !29
  store i128 %406, i128* %XMM15, align 1, !mcsema_real_eip !29
  %407 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !29
  store i64 %407, i64* %STACK_BASE, align 1, !mcsema_real_eip !29
  %408 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !29
  store i64 %408, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !29
  ret void, !mcsema_real_eip !29
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !30
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !30
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !30
  %XMM15_val = alloca i128, !mcsema_real_eip !30
  %XMM14_val = alloca i128, !mcsema_real_eip !30
  %XMM13_val = alloca i128, !mcsema_real_eip !30
  %XMM12_val = alloca i128, !mcsema_real_eip !30
  %XMM11_val = alloca i128, !mcsema_real_eip !30
  %XMM10_val = alloca i128, !mcsema_real_eip !30
  %XMM9_val = alloca i128, !mcsema_real_eip !30
  %XMM8_val = alloca i128, !mcsema_real_eip !30
  %XMM7_val = alloca i128, !mcsema_real_eip !30
  %XMM6_val = alloca i128, !mcsema_real_eip !30
  %XMM5_val = alloca i128, !mcsema_real_eip !30
  %XMM4_val = alloca i128, !mcsema_real_eip !30
  %XMM3_val = alloca i128, !mcsema_real_eip !30
  %XMM2_val = alloca i128, !mcsema_real_eip !30
  %XMM1_val = alloca i128, !mcsema_real_eip !30
  %XMM0_val = alloca i128, !mcsema_real_eip !30
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !30
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !30
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !30
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !30
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !30
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !30
  %FPU_IM_val = alloca i1, !mcsema_real_eip !30
  %FPU_DM_val = alloca i1, !mcsema_real_eip !30
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !30
  %FPU_OM_val = alloca i1, !mcsema_real_eip !30
  %FPU_UM_val = alloca i1, !mcsema_real_eip !30
  %FPU_PM_val = alloca i1, !mcsema_real_eip !30
  %FPU_PC_val = alloca i2, !mcsema_real_eip !30
  %FPU_RC_val = alloca i2, !mcsema_real_eip !30
  %FPU_X_val = alloca i1, !mcsema_real_eip !30
  %FPU_IE_val = alloca i1, !mcsema_real_eip !30
  %FPU_DE_val = alloca i1, !mcsema_real_eip !30
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !30
  %FPU_OE_val = alloca i1, !mcsema_real_eip !30
  %FPU_UE_val = alloca i1, !mcsema_real_eip !30
  %FPU_PE_val = alloca i1, !mcsema_real_eip !30
  %FPU_SF_val = alloca i1, !mcsema_real_eip !30
  %FPU_ES_val = alloca i1, !mcsema_real_eip !30
  %FPU_C0_val = alloca i1, !mcsema_real_eip !30
  %FPU_C1_val = alloca i1, !mcsema_real_eip !30
  %FPU_C2_val = alloca i1, !mcsema_real_eip !30
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !30
  %FPU_C3_val = alloca i1, !mcsema_real_eip !30
  %FPU_B_val = alloca i1, !mcsema_real_eip !30
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !30
  %DF_val = alloca i1, !mcsema_real_eip !30
  %OF_val = alloca i1, !mcsema_real_eip !30
  %SF_val = alloca i1, !mcsema_real_eip !30
  %CF_val = alloca i1, !mcsema_real_eip !30
  %AF_val = alloca i1, !mcsema_real_eip !30
  %PF_val = alloca i1, !mcsema_real_eip !30
  %ZF_val = alloca i1, !mcsema_real_eip !30
  %RIP_val = alloca i64, !mcsema_real_eip !30
  %R14_val = alloca i64, !mcsema_real_eip !30
  %R13_val = alloca i64, !mcsema_real_eip !30
  %R12_val = alloca i64, !mcsema_real_eip !30
  %R11_val = alloca i64, !mcsema_real_eip !30
  %R10_val = alloca i64, !mcsema_real_eip !30
  %R9_val = alloca i64, !mcsema_real_eip !30
  %R8_val = alloca i64, !mcsema_real_eip !30
  %RSP_val = alloca i64, !mcsema_real_eip !30
  %RBP_val = alloca i64, !mcsema_real_eip !30
  %RDI_val = alloca i64, !mcsema_real_eip !30
  %RSI_val = alloca i64, !mcsema_real_eip !30
  %RDX_val = alloca i64, !mcsema_real_eip !30
  %RCX_val = alloca i64, !mcsema_real_eip !30
  %RBX_val = alloca i64, !mcsema_real_eip !30
  %RAX_val = alloca i64, !mcsema_real_eip !30
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !30
  %1 = load i64, i64* %RAX, !mcsema_real_eip !30
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !30
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !30
  %2 = load i64, i64* %RBX, !mcsema_real_eip !30
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !30
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !30
  %3 = load i64, i64* %RCX, !mcsema_real_eip !30
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !30
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !30
  %4 = load i64, i64* %RDX, !mcsema_real_eip !30
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !30
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !30
  %5 = load i64, i64* %RSI, !mcsema_real_eip !30
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !30
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !30
  %6 = load i64, i64* %RDI, !mcsema_real_eip !30
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !30
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !30
  %7 = load i64, i64* %RSP, !mcsema_real_eip !30
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !30
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !30
  %8 = load i64, i64* %RBP, !mcsema_real_eip !30
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !30
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !30
  %9 = load i64, i64* %R8, !mcsema_real_eip !30
  store i64 %9, i64* %R8_val, !mcsema_real_eip !30
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !30
  %10 = load i64, i64* %R9, !mcsema_real_eip !30
  store i64 %10, i64* %R9_val, !mcsema_real_eip !30
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !30
  %11 = load i64, i64* %R10, !mcsema_real_eip !30
  store i64 %11, i64* %R10_val, !mcsema_real_eip !30
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !30
  %12 = load i64, i64* %R11, !mcsema_real_eip !30
  store i64 %12, i64* %R11_val, !mcsema_real_eip !30
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !30
  %13 = load i64, i64* %R12, !mcsema_real_eip !30
  store i64 %13, i64* %R12_val, !mcsema_real_eip !30
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !30
  %14 = load i64, i64* %R13, !mcsema_real_eip !30
  store i64 %14, i64* %R13_val, !mcsema_real_eip !30
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !30
  %15 = load i64, i64* %R14, !mcsema_real_eip !30
  store i64 %15, i64* %R14_val, !mcsema_real_eip !30
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !30
  %16 = load i64, i64* %R15, !mcsema_real_eip !30
  store i64 %16, i64* %R15_val, !mcsema_real_eip !30
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !30
  %17 = load i64, i64* %RIP, !mcsema_real_eip !30
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !30
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !30
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !30
  store i1 %18, i1* %CF_val, !mcsema_real_eip !30
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !30
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !30
  store i1 %19, i1* %PF_val, !mcsema_real_eip !30
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !30
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !30
  store i1 %20, i1* %AF_val, !mcsema_real_eip !30
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !30
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !30
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !30
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !30
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !30
  store i1 %22, i1* %SF_val, !mcsema_real_eip !30
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !30
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !30
  store i1 %23, i1* %OF_val, !mcsema_real_eip !30
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !30
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !30
  store i1 %24, i1* %DF_val, !mcsema_real_eip !30
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !30
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !30
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !30
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !30
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !30
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !30
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !30
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !30
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !30
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !30
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !30
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !30
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !30
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !30
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !30
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !30
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !30
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !30
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !30
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !30
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !30
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !30
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !30
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !30
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !30
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !30
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !30
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !30
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !30
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !30
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !30
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !30
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !30
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !30
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !30
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !30
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !30
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !30
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !30
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !30
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !30
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !30
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !30
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !30
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !30
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !30
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !30
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !30
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !30
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !30
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !30
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !30
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !30
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !30
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !30
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !30
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !30
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !30
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !30
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !30
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !30
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !30
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !30
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !30
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !30
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !30
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !30
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !30
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !30
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !30
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !30
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !30
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !30
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !30
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !30
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !30
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !30
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !30
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !30
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !30
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !30
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !30
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !30
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !30
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !30
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !30
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !30
  %59 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !30
  store i11 %59, i11* %FPU_FOPCODE_val, !mcsema_real_eip !30
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !30
  %60 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !30
  store i128 %60, i128* %XMM0_val, !mcsema_real_eip !30
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !30
  %61 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !30
  store i128 %61, i128* %XMM1_val, !mcsema_real_eip !30
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !30
  %62 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !30
  store i128 %62, i128* %XMM2_val, !mcsema_real_eip !30
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !30
  %63 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !30
  store i128 %63, i128* %XMM3_val, !mcsema_real_eip !30
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !30
  %64 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !30
  store i128 %64, i128* %XMM4_val, !mcsema_real_eip !30
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !30
  %65 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !30
  store i128 %65, i128* %XMM5_val, !mcsema_real_eip !30
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !30
  %66 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !30
  store i128 %66, i128* %XMM6_val, !mcsema_real_eip !30
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !30
  %67 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !30
  store i128 %67, i128* %XMM7_val, !mcsema_real_eip !30
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !30
  %68 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !30
  store i128 %68, i128* %XMM8_val, !mcsema_real_eip !30
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !30
  %69 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !30
  store i128 %69, i128* %XMM9_val, !mcsema_real_eip !30
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !30
  %70 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !30
  store i128 %70, i128* %XMM10_val, !mcsema_real_eip !30
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !30
  %71 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !30
  store i128 %71, i128* %XMM11_val, !mcsema_real_eip !30
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !30
  %72 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !30
  store i128 %72, i128* %XMM12_val, !mcsema_real_eip !30
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !30
  %73 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !30
  store i128 %73, i128* %XMM13_val, !mcsema_real_eip !30
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !30
  %74 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !30
  store i128 %74, i128* %XMM14_val, !mcsema_real_eip !30
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !30
  %75 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !30
  store i128 %75, i128* %XMM15_val, !mcsema_real_eip !30
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !30
  %76 = load i64, i64* %STACK_BASE, !mcsema_real_eip !30
  store i64 %76, i64* %STACK_BASE_val, !mcsema_real_eip !30
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !30
  %77 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !30
  store i64 %77, i64* %STACK_LIMIT_val, !mcsema_real_eip !30
  %78 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  %79 = load i64, i64* %RSP_val, !mcsema_real_eip !30
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !30
  store i64 %78, i64* %81, !mcsema_real_eip !30
  store i64 %80, i64* %RSP_val, !mcsema_real_eip !30
  store i64 %80, i64* %RBP_val, !mcsema_real_eip !31
  %82 = add i64 %79, 8, !mcsema_real_eip !32
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !32
  %84 = load i64, i64* %83, !mcsema_real_eip !32
  store i64 %84, i64* %RAX_val, !mcsema_real_eip !32
  %85 = add i64 %79, -12, !mcsema_real_eip !33
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !33
  %87 = load i64, i64* %RDI_val, !mcsema_real_eip !33
  %88 = trunc i64 %87 to i32, !mcsema_real_eip !33
  %89 = bitcast i64* %86 to i32*
  store i32 %88, i32* %89, !mcsema_real_eip !33
  %90 = load i64, i64* %RBP_val, !mcsema_real_eip !34
  %91 = add i64 %90, -8, !mcsema_real_eip !34
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !34
  %93 = load i64, i64* %RSI_val, !mcsema_real_eip !34
  %94 = trunc i64 %93 to i32, !mcsema_real_eip !34
  %95 = bitcast i64* %92 to i32*
  store i32 %94, i32* %95, !mcsema_real_eip !34
  %96 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %97 = add i64 %96, -12, !mcsema_real_eip !35
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !35
  %99 = load i64, i64* %RDX_val, !mcsema_real_eip !35
  %100 = trunc i64 %99 to i32, !mcsema_real_eip !35
  %101 = bitcast i64* %98 to i32*
  store i32 %100, i32* %101, !mcsema_real_eip !35
  %102 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  %103 = add i64 %102, -16, !mcsema_real_eip !36
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !36
  %105 = load i64, i64* %RCX_val, !mcsema_real_eip !36
  %106 = trunc i64 %105 to i32, !mcsema_real_eip !36
  %107 = bitcast i64* %104 to i32*
  store i32 %106, i32* %107, !mcsema_real_eip !36
  %108 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %109 = add i64 %108, -20, !mcsema_real_eip !37
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !37
  %111 = load i64, i64* %R8_val, !mcsema_real_eip !37
  %112 = trunc i64 %111 to i32, !mcsema_real_eip !37
  %113 = bitcast i64* %110 to i32*
  store i32 %112, i32* %113, !mcsema_real_eip !37
  %114 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %115 = add i64 %114, -24, !mcsema_real_eip !38
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !38
  %117 = load i64, i64* %R9_val, !mcsema_real_eip !38
  %118 = trunc i64 %117 to i32, !mcsema_real_eip !38
  %119 = bitcast i64* %116 to i32*
  store i32 %118, i32* %119, !mcsema_real_eip !38
  %120 = load i64, i64* %RBP_val, !mcsema_real_eip !39
  %121 = add i64 %120, -32, !mcsema_real_eip !39
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !39
  %123 = load i64, i64* %RAX_val, !mcsema_real_eip !39
  store i64 %123, i64* %122, !mcsema_real_eip !39
  %124 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %125 = add i64 %124, -32, !mcsema_real_eip !40
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !40
  %127 = load i64, i64* %126, !mcsema_real_eip !40
  store i64 %127, i64* %RAX_val, !mcsema_real_eip !40
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !41
  %129 = bitcast i64* %128 to i32*
  %130 = load i32, i32* %129, !mcsema_real_eip !41
  %131 = zext i32 %130 to i64, !mcsema_real_eip !41
  store i64 %131, i64* %RCX_val, !mcsema_real_eip !41
  %132 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  %133 = add i64 %132, -36, !mcsema_real_eip !42
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !42
  %135 = bitcast i64* %134 to i32*
  store i32 %130, i32* %135, !mcsema_real_eip !42
  %136 = load i64, i64* %RBP_val, !mcsema_real_eip !43
  %137 = add i64 %136, -36, !mcsema_real_eip !43
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !43
  %139 = bitcast i64* %138 to i32*
  %140 = load i32, i32* %139, !mcsema_real_eip !43
  %141 = zext i32 %140 to i64, !mcsema_real_eip !43
  store i64 %141, i64* %RAX_val, !mcsema_real_eip !43
  %142 = load i64, i64* %RSP_val, !mcsema_real_eip !44
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !44
  %144 = load i64, i64* %143, !mcsema_real_eip !44
  store i64 %144, i64* %RBP_val, !mcsema_real_eip !44
  %145 = add i64 %142, 16, !mcsema_real_eip !45
  store i64 %145, i64* %RSP_val, !mcsema_real_eip !45
  %146 = load i64, i64* %RAX_val, !mcsema_real_eip !45
  store i64 %146, i64* %RAX, !mcsema_real_eip !45
  %147 = load i64, i64* %RBX_val, !mcsema_real_eip !45
  store i64 %147, i64* %RBX, !mcsema_real_eip !45
  %148 = load i64, i64* %RCX_val, !mcsema_real_eip !45
  store i64 %148, i64* %RCX, !mcsema_real_eip !45
  %149 = load i64, i64* %RDX_val, !mcsema_real_eip !45
  store i64 %149, i64* %RDX, !mcsema_real_eip !45
  %150 = load i64, i64* %RSI_val, !mcsema_real_eip !45
  store i64 %150, i64* %RSI, !mcsema_real_eip !45
  %151 = load i64, i64* %RDI_val, !mcsema_real_eip !45
  store i64 %151, i64* %RDI, !mcsema_real_eip !45
  %152 = load i64, i64* %RSP_val, !mcsema_real_eip !45
  store i64 %152, i64* %RSP, !mcsema_real_eip !45
  %153 = load i64, i64* %RBP_val, !mcsema_real_eip !45
  store i64 %153, i64* %RBP, !mcsema_real_eip !45
  %154 = load i64, i64* %R8_val, !mcsema_real_eip !45
  store i64 %154, i64* %R8, !mcsema_real_eip !45
  %155 = load i64, i64* %R9_val, !mcsema_real_eip !45
  store i64 %155, i64* %R9, !mcsema_real_eip !45
  %156 = load i64, i64* %R10_val, !mcsema_real_eip !45
  store i64 %156, i64* %R10, !mcsema_real_eip !45
  %157 = load i64, i64* %R11_val, !mcsema_real_eip !45
  store i64 %157, i64* %R11, !mcsema_real_eip !45
  %158 = load i64, i64* %R12_val, !mcsema_real_eip !45
  store i64 %158, i64* %R12, !mcsema_real_eip !45
  %159 = load i64, i64* %R13_val, !mcsema_real_eip !45
  store i64 %159, i64* %R13, !mcsema_real_eip !45
  %160 = load i64, i64* %R14_val, !mcsema_real_eip !45
  store i64 %160, i64* %R14, !mcsema_real_eip !45
  %161 = load i64, i64* %R15_val, !mcsema_real_eip !45
  store i64 %161, i64* %R15, !mcsema_real_eip !45
  %162 = load i64, i64* %RIP_val, !mcsema_real_eip !45
  store i64 %162, i64* %RIP, !mcsema_real_eip !45
  %163 = load i1, i1* %CF_val, !mcsema_real_eip !45
  store i1 %163, i1* %CF, align 1, !mcsema_real_eip !45
  %164 = load i1, i1* %PF_val, !mcsema_real_eip !45
  store i1 %164, i1* %PF, align 1, !mcsema_real_eip !45
  %165 = load i1, i1* %AF_val, !mcsema_real_eip !45
  store i1 %165, i1* %AF, align 1, !mcsema_real_eip !45
  %166 = load i1, i1* %ZF_val, !mcsema_real_eip !45
  store i1 %166, i1* %ZF, align 1, !mcsema_real_eip !45
  %167 = load i1, i1* %SF_val, !mcsema_real_eip !45
  store i1 %167, i1* %SF, align 1, !mcsema_real_eip !45
  %168 = load i1, i1* %OF_val, !mcsema_real_eip !45
  store i1 %168, i1* %OF, align 1, !mcsema_real_eip !45
  %169 = load i1, i1* %DF_val, !mcsema_real_eip !45
  store i1 %169, i1* %DF, align 1, !mcsema_real_eip !45
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !45
  %170 = load i1, i1* %FPU_B_val, !mcsema_real_eip !45
  store i1 %170, i1* %FPU_B, align 1, !mcsema_real_eip !45
  %171 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !45
  store i1 %171, i1* %FPU_C3, align 1, !mcsema_real_eip !45
  %172 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !45
  store i3 %172, i3* %FPU_TOP, align 1, !mcsema_real_eip !45
  %173 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !45
  store i1 %173, i1* %FPU_C2, align 1, !mcsema_real_eip !45
  %174 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !45
  store i1 %174, i1* %FPU_C1, align 1, !mcsema_real_eip !45
  %175 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !45
  store i1 %175, i1* %FPU_C0, align 1, !mcsema_real_eip !45
  %176 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !45
  store i1 %176, i1* %FPU_ES, align 1, !mcsema_real_eip !45
  %177 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !45
  store i1 %177, i1* %FPU_SF, align 1, !mcsema_real_eip !45
  %178 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !45
  store i1 %178, i1* %FPU_PE, align 1, !mcsema_real_eip !45
  %179 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !45
  store i1 %179, i1* %FPU_UE, align 1, !mcsema_real_eip !45
  %180 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !45
  store i1 %180, i1* %FPU_OE, align 1, !mcsema_real_eip !45
  %181 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !45
  store i1 %181, i1* %FPU_ZE, align 1, !mcsema_real_eip !45
  %182 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !45
  store i1 %182, i1* %FPU_DE, align 1, !mcsema_real_eip !45
  %183 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !45
  store i1 %183, i1* %FPU_IE, align 1, !mcsema_real_eip !45
  %184 = load i1, i1* %FPU_X_val, !mcsema_real_eip !45
  store i1 %184, i1* %FPU_X, align 1, !mcsema_real_eip !45
  %185 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !45
  store i2 %185, i2* %FPU_RC, align 1, !mcsema_real_eip !45
  %186 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !45
  store i2 %186, i2* %FPU_PC, align 1, !mcsema_real_eip !45
  %187 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !45
  store i1 %187, i1* %FPU_PM, align 1, !mcsema_real_eip !45
  %188 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !45
  store i1 %188, i1* %FPU_UM, align 1, !mcsema_real_eip !45
  %189 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !45
  store i1 %189, i1* %FPU_OM, align 1, !mcsema_real_eip !45
  %190 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !45
  store i1 %190, i1* %FPU_ZM, align 1, !mcsema_real_eip !45
  %191 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !45
  store i1 %191, i1* %FPU_DM, align 1, !mcsema_real_eip !45
  %192 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !45
  store i1 %192, i1* %FPU_IM, align 1, !mcsema_real_eip !45
  %193 = load i64, i64* %53, align 4
  store i64 %193, i64* %52, align 4
  %194 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !45
  store i16 %194, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !45
  %195 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !45
  store i64 %195, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !45
  %196 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !45
  store i16 %196, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !45
  %197 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !45
  store i64 %197, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !45
  %198 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !45
  store i11 %198, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !45
  %199 = load i128, i128* %XMM0_val, !mcsema_real_eip !45
  store i128 %199, i128* %XMM0, align 1, !mcsema_real_eip !45
  %200 = load i128, i128* %XMM1_val, !mcsema_real_eip !45
  store i128 %200, i128* %XMM1, align 1, !mcsema_real_eip !45
  %201 = load i128, i128* %XMM2_val, !mcsema_real_eip !45
  store i128 %201, i128* %XMM2, align 1, !mcsema_real_eip !45
  %202 = load i128, i128* %XMM3_val, !mcsema_real_eip !45
  store i128 %202, i128* %XMM3, align 1, !mcsema_real_eip !45
  %203 = load i128, i128* %XMM4_val, !mcsema_real_eip !45
  store i128 %203, i128* %XMM4, align 1, !mcsema_real_eip !45
  %204 = load i128, i128* %XMM5_val, !mcsema_real_eip !45
  store i128 %204, i128* %XMM5, align 1, !mcsema_real_eip !45
  %205 = load i128, i128* %XMM6_val, !mcsema_real_eip !45
  store i128 %205, i128* %XMM6, align 1, !mcsema_real_eip !45
  %206 = load i128, i128* %XMM7_val, !mcsema_real_eip !45
  store i128 %206, i128* %XMM7, align 1, !mcsema_real_eip !45
  %207 = load i128, i128* %XMM8_val, !mcsema_real_eip !45
  store i128 %207, i128* %XMM8, align 1, !mcsema_real_eip !45
  %208 = load i128, i128* %XMM9_val, !mcsema_real_eip !45
  store i128 %208, i128* %XMM9, align 1, !mcsema_real_eip !45
  %209 = load i128, i128* %XMM10_val, !mcsema_real_eip !45
  store i128 %209, i128* %XMM10, align 1, !mcsema_real_eip !45
  %210 = load i128, i128* %XMM11_val, !mcsema_real_eip !45
  store i128 %210, i128* %XMM11, align 1, !mcsema_real_eip !45
  %211 = load i128, i128* %XMM12_val, !mcsema_real_eip !45
  store i128 %211, i128* %XMM12, align 1, !mcsema_real_eip !45
  %212 = load i128, i128* %XMM13_val, !mcsema_real_eip !45
  store i128 %212, i128* %XMM13, align 1, !mcsema_real_eip !45
  %213 = load i128, i128* %XMM14_val, !mcsema_real_eip !45
  store i128 %213, i128* %XMM14, align 1, !mcsema_real_eip !45
  %214 = load i128, i128* %XMM15_val, !mcsema_real_eip !45
  store i128 %214, i128* %XMM15, align 1, !mcsema_real_eip !45
  %215 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !45
  store i64 %215, i64* %STACK_BASE, align 1, !mcsema_real_eip !45
  %216 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !45
  store i64 %216, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !45
  ret void, !mcsema_real_eip !45
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_30(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 48}
!3 = !{i64 49}
!4 = !{i64 52}
!5 = !{i64 56}
!6 = !{i64 63}
!7 = !{i64 70}
!8 = !{i64 77}
!9 = !{i64 83}
!10 = !{i64 87}
!11 = !{i64 95}
!12 = !{i64 98}
!13 = !{i64 103}
!14 = !{i64 106}
!15 = !{i64 111}
!16 = !{i64 116}
!17 = !{i64 120}
!18 = !{i64 122}
!19 = !{i64 124}
!20 = !{i64 126}
!21 = !{i64 130}
!22 = !{i64 132}
!23 = !{i64 135}
!24 = !{i64 138}
!25 = !{i64 142}
!26 = !{i64 146}
!27 = !{i64 151}
!28 = !{i64 155}
!29 = !{i64 156}
!30 = !{i64 0}
!31 = !{i64 1}
!32 = !{i64 4}
!33 = !{i64 8}
!34 = !{i64 11}
!35 = !{i64 14}
!36 = !{i64 17}
!37 = !{i64 20}
!38 = !{i64 24}
!39 = !{i64 28}
!40 = !{i64 32}
!41 = !{i64 36}
!42 = !{i64 38}
!43 = !{i64 41}
!44 = !{i64 44}
!45 = !{i64 45}
