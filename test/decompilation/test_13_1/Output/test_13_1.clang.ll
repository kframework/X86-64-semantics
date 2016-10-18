; ModuleID = 'Output/test_13_1.clang.bc'
source_filename = "Output/test_13_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_10(%struct.regs*) #0 {
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
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !2
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !2
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !2
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !2
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !2
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !2
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !2
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !2
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !2
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !2
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !2
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !2
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !2
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !2
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !2
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !2
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !2
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !2
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !2
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !2
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !2
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !2
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !2
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !2
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !2
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !2
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !2
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !2
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !2
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !2
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !2
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !2
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !2
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !2
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !2
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !2
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !2
  %78 = load i64, i64* %RSP_val, !mcsema_real_eip !2
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
  %94 = load i64, i64* %RBP_val, !mcsema_real_eip !5
  %95 = add i64 %94, -4, !mcsema_real_eip !5
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !5
  %97 = bitcast i64* %96 to i32*
  store i32 0, i32* %97, !mcsema_real_eip !5
  %98 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %99 = add i64 %98, -4, !mcsema_real_eip !6
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !6
  %101 = bitcast i64* %100 to i32*
  %102 = load i32, i32* %101, !mcsema_real_eip !6
  %103 = add i32 %102, -2
  %104 = xor i32 %103, %102, !mcsema_real_eip !6
  %105 = and i32 %104, 16, !mcsema_real_eip !6
  %106 = icmp ne i32 %105, 0, !mcsema_real_eip !6
  store i1 %106, i1* %AF_val, !mcsema_real_eip !6
  %107 = trunc i32 %103 to i8, !mcsema_real_eip !6
  %108 = tail call i8 @llvm.ctpop.i8(i8 %107), !mcsema_real_eip !6
  %109 = and i8 %108, 1
  %110 = icmp eq i8 %109, 0
  store i1 %110, i1* %PF_val, !mcsema_real_eip !6
  %111 = icmp eq i32 %103, 0, !mcsema_real_eip !6
  store i1 %111, i1* %ZF_val, !mcsema_real_eip !6
  %112 = icmp slt i32 %103, 0
  store i1 %112, i1* %SF_val, !mcsema_real_eip !6
  %113 = icmp ult i32 %102, 2, !mcsema_real_eip !6
  store i1 %113, i1* %CF_val, !mcsema_real_eip !6
  %114 = and i32 %104, %102, !mcsema_real_eip !6
  %115 = icmp slt i32 %114, 0
  store i1 %115, i1* %OF_val, !mcsema_real_eip !6
  %tmp = xor i1 %112, %115
  br i1 %tmp, label %block_0x29.preheader, label %block_0x3c, !mcsema_real_eip !7

block_0x29.preheader:                             ; preds = %entry
  br label %block_0x29

block_0x3c.loopexit:                              ; preds = %block_0x29
  br label %block_0x3c

block_0x3c:                                       ; preds = %block_0x3c.loopexit, %entry
  %116 = load i64, i64* %RSP_val, !mcsema_real_eip !8
  %uadd210 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %116, i64 16)
  %117 = extractvalue { i64, i1 } %uadd210, 0
  %118 = xor i64 %117, %116, !mcsema_real_eip !8
  %119 = and i64 %118, 16
  %120 = icmp eq i64 %119, 0
  store i1 %120, i1* %AF_val, !mcsema_real_eip !8
  %121 = icmp slt i64 %117, 0
  store i1 %121, i1* %SF_val, !mcsema_real_eip !8
  %122 = icmp eq i64 %117, 0, !mcsema_real_eip !8
  store i1 %122, i1* %ZF_val, !mcsema_real_eip !8
  %123 = xor i64 %116, -9223372036854775808, !mcsema_real_eip !8
  %124 = and i64 %118, %123, !mcsema_real_eip !8
  %125 = icmp slt i64 %124, 0
  store i1 %125, i1* %OF_val, !mcsema_real_eip !8
  %126 = trunc i64 %117 to i8, !mcsema_real_eip !8
  %127 = tail call i8 @llvm.ctpop.i8(i8 %126), !mcsema_real_eip !8
  %128 = and i8 %127, 1
  %129 = icmp eq i8 %128, 0
  store i1 %129, i1* %PF_val, !mcsema_real_eip !8
  %130 = extractvalue { i64, i1 } %uadd210, 1
  store i1 %130, i1* %CF_val, !mcsema_real_eip !8
  store i64 %117, i64* %RSP_val, !mcsema_real_eip !8
  %131 = inttoptr i64 %117 to i64*, !mcsema_real_eip !9
  %132 = load i64, i64* %131, !mcsema_real_eip !9
  store i64 %132, i64* %RBP_val, !mcsema_real_eip !9
  %133 = add i64 %117, 16, !mcsema_real_eip !10
  store i64 %133, i64* %RSP_val, !mcsema_real_eip !10
  %134 = load i64, i64* %RAX_val, !mcsema_real_eip !10
  store i64 %134, i64* %RAX, !mcsema_real_eip !10
  %135 = load i64, i64* %RBX_val, !mcsema_real_eip !10
  store i64 %135, i64* %RBX, !mcsema_real_eip !10
  %136 = load i64, i64* %RCX_val, !mcsema_real_eip !10
  store i64 %136, i64* %RCX, !mcsema_real_eip !10
  %137 = load i64, i64* %RDX_val, !mcsema_real_eip !10
  store i64 %137, i64* %RDX, !mcsema_real_eip !10
  %138 = load i64, i64* %RSI_val, !mcsema_real_eip !10
  store i64 %138, i64* %RSI, !mcsema_real_eip !10
  %139 = load i64, i64* %RDI_val, !mcsema_real_eip !10
  store i64 %139, i64* %RDI, !mcsema_real_eip !10
  %140 = load i64, i64* %RSP_val, !mcsema_real_eip !10
  store i64 %140, i64* %RSP, !mcsema_real_eip !10
  %141 = load i64, i64* %RBP_val, !mcsema_real_eip !10
  store i64 %141, i64* %RBP, !mcsema_real_eip !10
  %142 = load i64, i64* %R8_val, !mcsema_real_eip !10
  store i64 %142, i64* %R8, !mcsema_real_eip !10
  %143 = load i64, i64* %R9_val, !mcsema_real_eip !10
  store i64 %143, i64* %R9, !mcsema_real_eip !10
  %144 = load i64, i64* %R10_val, !mcsema_real_eip !10
  store i64 %144, i64* %R10, !mcsema_real_eip !10
  %145 = load i64, i64* %R11_val, !mcsema_real_eip !10
  store i64 %145, i64* %R11, !mcsema_real_eip !10
  %146 = load i64, i64* %R12_val, !mcsema_real_eip !10
  store i64 %146, i64* %R12, !mcsema_real_eip !10
  %147 = load i64, i64* %R13_val, !mcsema_real_eip !10
  store i64 %147, i64* %R13, !mcsema_real_eip !10
  %148 = load i64, i64* %R14_val, !mcsema_real_eip !10
  store i64 %148, i64* %R14, !mcsema_real_eip !10
  %149 = load i64, i64* %R15_val, !mcsema_real_eip !10
  store i64 %149, i64* %R15, !mcsema_real_eip !10
  %150 = load i64, i64* %RIP_val, !mcsema_real_eip !10
  store i64 %150, i64* %RIP, !mcsema_real_eip !10
  %151 = load i1, i1* %CF_val, !mcsema_real_eip !10
  store i1 %151, i1* %CF, align 1, !mcsema_real_eip !10
  %152 = load i1, i1* %PF_val, !mcsema_real_eip !10
  store i1 %152, i1* %PF, align 1, !mcsema_real_eip !10
  %153 = load i1, i1* %AF_val, !mcsema_real_eip !10
  store i1 %153, i1* %AF, align 1, !mcsema_real_eip !10
  %154 = load i1, i1* %ZF_val, !mcsema_real_eip !10
  store i1 %154, i1* %ZF, align 1, !mcsema_real_eip !10
  %155 = load i1, i1* %SF_val, !mcsema_real_eip !10
  store i1 %155, i1* %SF, align 1, !mcsema_real_eip !10
  %156 = load i1, i1* %OF_val, !mcsema_real_eip !10
  store i1 %156, i1* %OF, align 1, !mcsema_real_eip !10
  %157 = load i1, i1* %DF_val, !mcsema_real_eip !10
  store i1 %157, i1* %DF, align 1, !mcsema_real_eip !10
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !10
  %158 = load i1, i1* %FPU_B_val, !mcsema_real_eip !10
  store i1 %158, i1* %FPU_B, align 1, !mcsema_real_eip !10
  %159 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !10
  store i1 %159, i1* %FPU_C3, align 1, !mcsema_real_eip !10
  %160 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !10
  store i3 %160, i3* %FPU_TOP, align 1, !mcsema_real_eip !10
  %161 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !10
  store i1 %161, i1* %FPU_C2, align 1, !mcsema_real_eip !10
  %162 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !10
  store i1 %162, i1* %FPU_C1, align 1, !mcsema_real_eip !10
  %163 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !10
  store i1 %163, i1* %FPU_C0, align 1, !mcsema_real_eip !10
  %164 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !10
  store i1 %164, i1* %FPU_ES, align 1, !mcsema_real_eip !10
  %165 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !10
  store i1 %165, i1* %FPU_SF, align 1, !mcsema_real_eip !10
  %166 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !10
  store i1 %166, i1* %FPU_PE, align 1, !mcsema_real_eip !10
  %167 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !10
  store i1 %167, i1* %FPU_UE, align 1, !mcsema_real_eip !10
  %168 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !10
  store i1 %168, i1* %FPU_OE, align 1, !mcsema_real_eip !10
  %169 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !10
  store i1 %169, i1* %FPU_ZE, align 1, !mcsema_real_eip !10
  %170 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !10
  store i1 %170, i1* %FPU_DE, align 1, !mcsema_real_eip !10
  %171 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !10
  store i1 %171, i1* %FPU_IE, align 1, !mcsema_real_eip !10
  %172 = load i1, i1* %FPU_X_val, !mcsema_real_eip !10
  store i1 %172, i1* %FPU_X, align 1, !mcsema_real_eip !10
  %173 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !10
  store i2 %173, i2* %FPU_RC, align 1, !mcsema_real_eip !10
  %174 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !10
  store i2 %174, i2* %FPU_PC, align 1, !mcsema_real_eip !10
  %175 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !10
  store i1 %175, i1* %FPU_PM, align 1, !mcsema_real_eip !10
  %176 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !10
  store i1 %176, i1* %FPU_UM, align 1, !mcsema_real_eip !10
  %177 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !10
  store i1 %177, i1* %FPU_OM, align 1, !mcsema_real_eip !10
  %178 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !10
  store i1 %178, i1* %FPU_ZM, align 1, !mcsema_real_eip !10
  %179 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !10
  store i1 %179, i1* %FPU_DM, align 1, !mcsema_real_eip !10
  %180 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !10
  store i1 %180, i1* %FPU_IM, align 1, !mcsema_real_eip !10
  %181 = load i64, i64* %53, align 4
  store i64 %181, i64* %52, align 4
  %182 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !10
  store i16 %182, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !10
  %183 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !10
  store i64 %183, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !10
  %184 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !10
  store i16 %184, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !10
  %185 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !10
  store i64 %185, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !10
  %186 = load i128, i128* %XMM0_val, !mcsema_real_eip !10
  store i128 %186, i128* %XMM0, align 1, !mcsema_real_eip !10
  %187 = load i128, i128* %XMM1_val, !mcsema_real_eip !10
  store i128 %187, i128* %XMM1, align 1, !mcsema_real_eip !10
  %188 = load i128, i128* %XMM2_val, !mcsema_real_eip !10
  store i128 %188, i128* %XMM2, align 1, !mcsema_real_eip !10
  %189 = load i128, i128* %XMM3_val, !mcsema_real_eip !10
  store i128 %189, i128* %XMM3, align 1, !mcsema_real_eip !10
  %190 = load i128, i128* %XMM4_val, !mcsema_real_eip !10
  store i128 %190, i128* %XMM4, align 1, !mcsema_real_eip !10
  %191 = load i128, i128* %XMM5_val, !mcsema_real_eip !10
  store i128 %191, i128* %XMM5, align 1, !mcsema_real_eip !10
  %192 = load i128, i128* %XMM6_val, !mcsema_real_eip !10
  store i128 %192, i128* %XMM6, align 1, !mcsema_real_eip !10
  %193 = load i128, i128* %XMM7_val, !mcsema_real_eip !10
  store i128 %193, i128* %XMM7, align 1, !mcsema_real_eip !10
  %194 = load i128, i128* %XMM8_val, !mcsema_real_eip !10
  store i128 %194, i128* %XMM8, align 1, !mcsema_real_eip !10
  %195 = load i128, i128* %XMM9_val, !mcsema_real_eip !10
  store i128 %195, i128* %XMM9, align 1, !mcsema_real_eip !10
  %196 = load i128, i128* %XMM10_val, !mcsema_real_eip !10
  store i128 %196, i128* %XMM10, align 1, !mcsema_real_eip !10
  %197 = load i128, i128* %XMM11_val, !mcsema_real_eip !10
  store i128 %197, i128* %XMM11, align 1, !mcsema_real_eip !10
  %198 = load i128, i128* %XMM12_val, !mcsema_real_eip !10
  store i128 %198, i128* %XMM12, align 1, !mcsema_real_eip !10
  %199 = load i128, i128* %XMM13_val, !mcsema_real_eip !10
  store i128 %199, i128* %XMM13, align 1, !mcsema_real_eip !10
  %200 = load i128, i128* %XMM14_val, !mcsema_real_eip !10
  store i128 %200, i128* %XMM14, align 1, !mcsema_real_eip !10
  %201 = load i128, i128* %XMM15_val, !mcsema_real_eip !10
  store i128 %201, i128* %XMM15, align 1, !mcsema_real_eip !10
  %202 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !10
  store i64 %202, i64* %STACK_BASE, align 1, !mcsema_real_eip !10
  %203 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !10
  store i64 %203, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !10
  ret void, !mcsema_real_eip !10

block_0x29:                                       ; preds = %block_0x29, %block_0x29.preheader
  %204 = load i64, i64* %RSP_val, !mcsema_real_eip !11
  %205 = add i64 %204, -8
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !11
  store i64 -4981261766360305936, i64* %206, !mcsema_real_eip !11
  store i64 %205, i64* %RSP_val, !mcsema_real_eip !11
  %207 = load i64, i64* %RAX_val, !mcsema_real_eip !11
  store i64 %207, i64* %RAX, !mcsema_real_eip !11
  %208 = load i64, i64* %RBX_val, !mcsema_real_eip !11
  store i64 %208, i64* %RBX, !mcsema_real_eip !11
  %209 = load i64, i64* %RCX_val, !mcsema_real_eip !11
  store i64 %209, i64* %RCX, !mcsema_real_eip !11
  %210 = load i64, i64* %RDX_val, !mcsema_real_eip !11
  store i64 %210, i64* %RDX, !mcsema_real_eip !11
  %211 = load i64, i64* %RSI_val, !mcsema_real_eip !11
  store i64 %211, i64* %RSI, !mcsema_real_eip !11
  %212 = load i64, i64* %RDI_val, !mcsema_real_eip !11
  store i64 %212, i64* %RDI, !mcsema_real_eip !11
  %213 = load i64, i64* %RSP_val, !mcsema_real_eip !11
  store i64 %213, i64* %RSP, !mcsema_real_eip !11
  %214 = load i64, i64* %RBP_val, !mcsema_real_eip !11
  store i64 %214, i64* %RBP, !mcsema_real_eip !11
  %215 = load i64, i64* %R8_val, !mcsema_real_eip !11
  store i64 %215, i64* %R8, !mcsema_real_eip !11
  %216 = load i64, i64* %R9_val, !mcsema_real_eip !11
  store i64 %216, i64* %R9, !mcsema_real_eip !11
  %217 = load i64, i64* %R10_val, !mcsema_real_eip !11
  store i64 %217, i64* %R10, !mcsema_real_eip !11
  %218 = load i64, i64* %R11_val, !mcsema_real_eip !11
  store i64 %218, i64* %R11, !mcsema_real_eip !11
  %219 = load i64, i64* %R12_val, !mcsema_real_eip !11
  store i64 %219, i64* %R12, !mcsema_real_eip !11
  %220 = load i64, i64* %R13_val, !mcsema_real_eip !11
  store i64 %220, i64* %R13, !mcsema_real_eip !11
  %221 = load i64, i64* %R14_val, !mcsema_real_eip !11
  store i64 %221, i64* %R14, !mcsema_real_eip !11
  %222 = load i64, i64* %R15_val, !mcsema_real_eip !11
  store i64 %222, i64* %R15, !mcsema_real_eip !11
  %223 = load i64, i64* %RIP_val, !mcsema_real_eip !11
  store i64 %223, i64* %RIP, !mcsema_real_eip !11
  %224 = load i1, i1* %CF_val, !mcsema_real_eip !11
  store i1 %224, i1* %CF, align 1, !mcsema_real_eip !11
  %225 = load i1, i1* %PF_val, !mcsema_real_eip !11
  store i1 %225, i1* %PF, align 1, !mcsema_real_eip !11
  %226 = load i1, i1* %AF_val, !mcsema_real_eip !11
  store i1 %226, i1* %AF, align 1, !mcsema_real_eip !11
  %227 = load i1, i1* %ZF_val, !mcsema_real_eip !11
  store i1 %227, i1* %ZF, align 1, !mcsema_real_eip !11
  %228 = load i1, i1* %SF_val, !mcsema_real_eip !11
  store i1 %228, i1* %SF, align 1, !mcsema_real_eip !11
  %229 = load i1, i1* %OF_val, !mcsema_real_eip !11
  store i1 %229, i1* %OF, align 1, !mcsema_real_eip !11
  %230 = load i1, i1* %DF_val, !mcsema_real_eip !11
  store i1 %230, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  %231 = load i1, i1* %FPU_B_val, !mcsema_real_eip !11
  store i1 %231, i1* %FPU_B, align 1, !mcsema_real_eip !11
  %232 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !11
  store i1 %232, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  %233 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !11
  store i3 %233, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  %234 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !11
  store i1 %234, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  %235 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !11
  store i1 %235, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  %236 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !11
  store i1 %236, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  %237 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !11
  store i1 %237, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  %238 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !11
  store i1 %238, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  %239 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !11
  store i1 %239, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  %240 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !11
  store i1 %240, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  %241 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !11
  store i1 %241, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  %242 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !11
  store i1 %242, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  %243 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !11
  store i1 %243, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  %244 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !11
  store i1 %244, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  %245 = load i1, i1* %FPU_X_val, !mcsema_real_eip !11
  store i1 %245, i1* %FPU_X, align 1, !mcsema_real_eip !11
  %246 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !11
  store i2 %246, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  %247 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !11
  store i2 %247, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  %248 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !11
  store i1 %248, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  %249 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !11
  store i1 %249, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  %250 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !11
  store i1 %250, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  %251 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !11
  store i1 %251, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  %252 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !11
  store i1 %252, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  %253 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !11
  store i1 %253, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  %254 = load i64, i64* %53, align 4
  store i64 %254, i64* %52, align 4
  %255 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !11
  store i16 %255, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  %256 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !11
  store i64 %256, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  %257 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !11
  store i16 %257, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  %258 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !11
  store i64 %258, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  %259 = load i128, i128* %XMM0_val, !mcsema_real_eip !11
  store i128 %259, i128* %XMM0, align 1, !mcsema_real_eip !11
  %260 = load i128, i128* %XMM1_val, !mcsema_real_eip !11
  store i128 %260, i128* %XMM1, align 1, !mcsema_real_eip !11
  %261 = load i128, i128* %XMM2_val, !mcsema_real_eip !11
  store i128 %261, i128* %XMM2, align 1, !mcsema_real_eip !11
  %262 = load i128, i128* %XMM3_val, !mcsema_real_eip !11
  store i128 %262, i128* %XMM3, align 1, !mcsema_real_eip !11
  %263 = load i128, i128* %XMM4_val, !mcsema_real_eip !11
  store i128 %263, i128* %XMM4, align 1, !mcsema_real_eip !11
  %264 = load i128, i128* %XMM5_val, !mcsema_real_eip !11
  store i128 %264, i128* %XMM5, align 1, !mcsema_real_eip !11
  %265 = load i128, i128* %XMM6_val, !mcsema_real_eip !11
  store i128 %265, i128* %XMM6, align 1, !mcsema_real_eip !11
  %266 = load i128, i128* %XMM7_val, !mcsema_real_eip !11
  store i128 %266, i128* %XMM7, align 1, !mcsema_real_eip !11
  %267 = load i128, i128* %XMM8_val, !mcsema_real_eip !11
  store i128 %267, i128* %XMM8, align 1, !mcsema_real_eip !11
  %268 = load i128, i128* %XMM9_val, !mcsema_real_eip !11
  store i128 %268, i128* %XMM9, align 1, !mcsema_real_eip !11
  %269 = load i128, i128* %XMM10_val, !mcsema_real_eip !11
  store i128 %269, i128* %XMM10, align 1, !mcsema_real_eip !11
  %270 = load i128, i128* %XMM11_val, !mcsema_real_eip !11
  store i128 %270, i128* %XMM11, align 1, !mcsema_real_eip !11
  %271 = load i128, i128* %XMM12_val, !mcsema_real_eip !11
  store i128 %271, i128* %XMM12, align 1, !mcsema_real_eip !11
  %272 = load i128, i128* %XMM13_val, !mcsema_real_eip !11
  store i128 %272, i128* %XMM13, align 1, !mcsema_real_eip !11
  %273 = load i128, i128* %XMM14_val, !mcsema_real_eip !11
  store i128 %273, i128* %XMM14, align 1, !mcsema_real_eip !11
  %274 = load i128, i128* %XMM15_val, !mcsema_real_eip !11
  store i128 %274, i128* %XMM15, align 1, !mcsema_real_eip !11
  %275 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !11
  store i64 %275, i64* %STACK_BASE, align 1, !mcsema_real_eip !11
  %276 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !11
  store i64 %276, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !11
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !11
  %277 = load i64, i64* %RAX, !mcsema_real_eip !11
  store i64 %277, i64* %RAX_val, !mcsema_real_eip !11
  %278 = load i64, i64* %RBX, !mcsema_real_eip !11
  store i64 %278, i64* %RBX_val, !mcsema_real_eip !11
  %279 = load i64, i64* %RCX, !mcsema_real_eip !11
  store i64 %279, i64* %RCX_val, !mcsema_real_eip !11
  %280 = load i64, i64* %RDX, !mcsema_real_eip !11
  store i64 %280, i64* %RDX_val, !mcsema_real_eip !11
  %281 = load i64, i64* %RSI, !mcsema_real_eip !11
  store i64 %281, i64* %RSI_val, !mcsema_real_eip !11
  %282 = load i64, i64* %RDI, !mcsema_real_eip !11
  store i64 %282, i64* %RDI_val, !mcsema_real_eip !11
  %283 = load i64, i64* %RSP, !mcsema_real_eip !11
  store i64 %283, i64* %RSP_val, !mcsema_real_eip !11
  %284 = load i64, i64* %RBP, !mcsema_real_eip !11
  store i64 %284, i64* %RBP_val, !mcsema_real_eip !11
  %285 = load i64, i64* %R8, !mcsema_real_eip !11
  store i64 %285, i64* %R8_val, !mcsema_real_eip !11
  %286 = load i64, i64* %R9, !mcsema_real_eip !11
  store i64 %286, i64* %R9_val, !mcsema_real_eip !11
  %287 = load i64, i64* %R10, !mcsema_real_eip !11
  store i64 %287, i64* %R10_val, !mcsema_real_eip !11
  %288 = load i64, i64* %R11, !mcsema_real_eip !11
  store i64 %288, i64* %R11_val, !mcsema_real_eip !11
  %289 = load i64, i64* %R12, !mcsema_real_eip !11
  store i64 %289, i64* %R12_val, !mcsema_real_eip !11
  %290 = load i64, i64* %R13, !mcsema_real_eip !11
  store i64 %290, i64* %R13_val, !mcsema_real_eip !11
  %291 = load i64, i64* %R14, !mcsema_real_eip !11
  store i64 %291, i64* %R14_val, !mcsema_real_eip !11
  %292 = load i64, i64* %R15, !mcsema_real_eip !11
  store i64 %292, i64* %R15_val, !mcsema_real_eip !11
  %293 = load i64, i64* %RIP, !mcsema_real_eip !11
  store i64 %293, i64* %RIP_val, !mcsema_real_eip !11
  %294 = load i1, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 %294, i1* %CF_val, !mcsema_real_eip !11
  %295 = load i1, i1* %PF, align 1, !mcsema_real_eip !11
  store i1 %295, i1* %PF_val, !mcsema_real_eip !11
  %296 = load i1, i1* %AF, align 1, !mcsema_real_eip !11
  store i1 %296, i1* %AF_val, !mcsema_real_eip !11
  %297 = load i1, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 %297, i1* %ZF_val, !mcsema_real_eip !11
  %298 = load i1, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 %298, i1* %SF_val, !mcsema_real_eip !11
  %299 = load i1, i1* %OF, align 1, !mcsema_real_eip !11
  store i1 %299, i1* %OF_val, !mcsema_real_eip !11
  %300 = load i1, i1* %DF, align 1, !mcsema_real_eip !11
  store i1 %300, i1* %DF_val, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !11
  %301 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !11
  store i1 %301, i1* %FPU_B_val, !mcsema_real_eip !11
  %302 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  store i1 %302, i1* %FPU_C3_val, !mcsema_real_eip !11
  %303 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  store i3 %303, i3* %FPU_TOP_val, !mcsema_real_eip !11
  %304 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  store i1 %304, i1* %FPU_C2_val, !mcsema_real_eip !11
  %305 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  store i1 %305, i1* %FPU_C1_val, !mcsema_real_eip !11
  %306 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  store i1 %306, i1* %FPU_C0_val, !mcsema_real_eip !11
  %307 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  store i1 %307, i1* %FPU_ES_val, !mcsema_real_eip !11
  %308 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  store i1 %308, i1* %FPU_SF_val, !mcsema_real_eip !11
  %309 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  store i1 %309, i1* %FPU_PE_val, !mcsema_real_eip !11
  %310 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  store i1 %310, i1* %FPU_UE_val, !mcsema_real_eip !11
  %311 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  store i1 %311, i1* %FPU_OE_val, !mcsema_real_eip !11
  %312 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  store i1 %312, i1* %FPU_ZE_val, !mcsema_real_eip !11
  %313 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  store i1 %313, i1* %FPU_DE_val, !mcsema_real_eip !11
  %314 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  store i1 %314, i1* %FPU_IE_val, !mcsema_real_eip !11
  %315 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !11
  store i1 %315, i1* %FPU_X_val, !mcsema_real_eip !11
  %316 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  store i2 %316, i2* %FPU_RC_val, !mcsema_real_eip !11
  %317 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  store i2 %317, i2* %FPU_PC_val, !mcsema_real_eip !11
  %318 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  store i1 %318, i1* %FPU_PM_val, !mcsema_real_eip !11
  %319 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  store i1 %319, i1* %FPU_UM_val, !mcsema_real_eip !11
  %320 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  store i1 %320, i1* %FPU_OM_val, !mcsema_real_eip !11
  %321 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  store i1 %321, i1* %FPU_ZM_val, !mcsema_real_eip !11
  %322 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  store i1 %322, i1* %FPU_DM_val, !mcsema_real_eip !11
  %323 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  store i1 %323, i1* %FPU_IM_val, !mcsema_real_eip !11
  %324 = load i64, i64* %52, align 4
  store i64 %324, i64* %53, align 4
  %325 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  store i16 %325, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !11
  %326 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !11
  store i64 %326, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !11
  %327 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  store i16 %327, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !11
  %328 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !11
  store i64 %328, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !11
  %329 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !11
  store i128 %329, i128* %XMM0_val, !mcsema_real_eip !11
  %330 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !11
  store i128 %330, i128* %XMM1_val, !mcsema_real_eip !11
  %331 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !11
  store i128 %331, i128* %XMM2_val, !mcsema_real_eip !11
  %332 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !11
  store i128 %332, i128* %XMM3_val, !mcsema_real_eip !11
  %333 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !11
  store i128 %333, i128* %XMM4_val, !mcsema_real_eip !11
  %334 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !11
  store i128 %334, i128* %XMM5_val, !mcsema_real_eip !11
  %335 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !11
  store i128 %335, i128* %XMM6_val, !mcsema_real_eip !11
  %336 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !11
  store i128 %336, i128* %XMM7_val, !mcsema_real_eip !11
  %337 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !11
  store i128 %337, i128* %XMM8_val, !mcsema_real_eip !11
  %338 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !11
  store i128 %338, i128* %XMM9_val, !mcsema_real_eip !11
  %339 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !11
  store i128 %339, i128* %XMM10_val, !mcsema_real_eip !11
  %340 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !11
  store i128 %340, i128* %XMM11_val, !mcsema_real_eip !11
  %341 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !11
  store i128 %341, i128* %XMM12_val, !mcsema_real_eip !11
  %342 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !11
  store i128 %342, i128* %XMM13_val, !mcsema_real_eip !11
  %343 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !11
  store i128 %343, i128* %XMM14_val, !mcsema_real_eip !11
  %344 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !11
  store i128 %344, i128* %XMM15_val, !mcsema_real_eip !11
  %345 = load i64, i64* %STACK_BASE, !mcsema_real_eip !11
  store i64 %345, i64* %STACK_BASE_val, !mcsema_real_eip !11
  %346 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !11
  store i64 %346, i64* %STACK_LIMIT_val, !mcsema_real_eip !11
  %347 = load i64, i64* %RBP_val, !mcsema_real_eip !12
  %348 = add i64 %347, -4, !mcsema_real_eip !12
  %349 = inttoptr i64 %348 to i64*, !mcsema_real_eip !12
  %350 = bitcast i64* %349 to i32*
  %351 = load i32, i32* %350, !mcsema_real_eip !12
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %351, i32 1)
  %352 = extractvalue { i32, i1 } %uadd, 0
  %353 = xor i32 %352, %351, !mcsema_real_eip !13
  %354 = and i32 %353, 16, !mcsema_real_eip !13
  %355 = icmp ne i32 %354, 0, !mcsema_real_eip !13
  store i1 %355, i1* %AF_val, !mcsema_real_eip !13
  %356 = icmp slt i32 %352, 0
  store i1 %356, i1* %SF_val, !mcsema_real_eip !13
  %357 = icmp eq i32 %352, 0, !mcsema_real_eip !13
  store i1 %357, i1* %ZF_val, !mcsema_real_eip !13
  %358 = xor i32 %351, -2147483648, !mcsema_real_eip !13
  %359 = and i32 %353, %358, !mcsema_real_eip !13
  %360 = icmp slt i32 %359, 0
  store i1 %360, i1* %OF_val, !mcsema_real_eip !13
  %361 = trunc i32 %352 to i8, !mcsema_real_eip !13
  %362 = tail call i8 @llvm.ctpop.i8(i8 %361), !mcsema_real_eip !13
  %363 = and i8 %362, 1
  %364 = icmp eq i8 %363, 0
  store i1 %364, i1* %PF_val, !mcsema_real_eip !13
  %365 = extractvalue { i32, i1 } %uadd, 1
  store i1 %365, i1* %CF_val, !mcsema_real_eip !13
  %366 = zext i32 %352 to i64, !mcsema_real_eip !13
  store i64 %366, i64* %RAX_val, !mcsema_real_eip !13
  %367 = load i64, i64* %RBP_val, !mcsema_real_eip !14
  %368 = add i64 %367, -4, !mcsema_real_eip !14
  %369 = inttoptr i64 %368 to i64*, !mcsema_real_eip !14
  %370 = bitcast i64* %369 to i32*
  store i32 %352, i32* %370, !mcsema_real_eip !14
  %371 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %372 = add i64 %371, -4, !mcsema_real_eip !6
  %373 = inttoptr i64 %372 to i64*, !mcsema_real_eip !6
  %374 = bitcast i64* %373 to i32*
  %375 = load i32, i32* %374, !mcsema_real_eip !6
  %376 = add i32 %375, -2
  %377 = xor i32 %376, %375, !mcsema_real_eip !6
  %378 = and i32 %377, 16, !mcsema_real_eip !6
  %379 = icmp ne i32 %378, 0, !mcsema_real_eip !6
  store i1 %379, i1* %AF_val, !mcsema_real_eip !6
  %380 = trunc i32 %376 to i8, !mcsema_real_eip !6
  %381 = tail call i8 @llvm.ctpop.i8(i8 %380), !mcsema_real_eip !6
  %382 = and i8 %381, 1
  %383 = icmp eq i8 %382, 0
  store i1 %383, i1* %PF_val, !mcsema_real_eip !6
  %384 = icmp eq i32 %376, 0, !mcsema_real_eip !6
  store i1 %384, i1* %ZF_val, !mcsema_real_eip !6
  %385 = icmp slt i32 %376, 0
  store i1 %385, i1* %SF_val, !mcsema_real_eip !6
  %386 = icmp ult i32 %375, 2, !mcsema_real_eip !6
  store i1 %386, i1* %CF_val, !mcsema_real_eip !6
  %387 = and i32 %377, %375, !mcsema_real_eip !6
  %388 = icmp slt i32 %387, 0
  store i1 %388, i1* %OF_val, !mcsema_real_eip !6
  %tmp209 = xor i1 %385, %388
  br i1 %tmp209, label %block_0x29, label %block_0x3c.loopexit, !mcsema_real_eip !7
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
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
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !15
  %1 = load i64, i64* %RAX, !mcsema_real_eip !15
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !15
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !15
  %2 = load i64, i64* %RBX, !mcsema_real_eip !15
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !15
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !15
  %3 = load i64, i64* %RCX, !mcsema_real_eip !15
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !15
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !15
  %4 = load i64, i64* %RDX, !mcsema_real_eip !15
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !15
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !15
  %5 = load i64, i64* %RSI, !mcsema_real_eip !15
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !15
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !15
  %6 = load i64, i64* %RDI, !mcsema_real_eip !15
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !15
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !15
  %7 = load i64, i64* %RSP, !mcsema_real_eip !15
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !15
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !15
  %8 = load i64, i64* %RBP, !mcsema_real_eip !15
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !15
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !15
  %9 = load i64, i64* %R8, !mcsema_real_eip !15
  store i64 %9, i64* %R8_val, !mcsema_real_eip !15
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !15
  %10 = load i64, i64* %R9, !mcsema_real_eip !15
  store i64 %10, i64* %R9_val, !mcsema_real_eip !15
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !15
  %11 = load i64, i64* %R10, !mcsema_real_eip !15
  store i64 %11, i64* %R10_val, !mcsema_real_eip !15
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !15
  %12 = load i64, i64* %R11, !mcsema_real_eip !15
  store i64 %12, i64* %R11_val, !mcsema_real_eip !15
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !15
  %13 = load i64, i64* %R12, !mcsema_real_eip !15
  store i64 %13, i64* %R12_val, !mcsema_real_eip !15
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !15
  %14 = load i64, i64* %R13, !mcsema_real_eip !15
  store i64 %14, i64* %R13_val, !mcsema_real_eip !15
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !15
  %15 = load i64, i64* %R14, !mcsema_real_eip !15
  store i64 %15, i64* %R14_val, !mcsema_real_eip !15
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !15
  %16 = load i64, i64* %R15, !mcsema_real_eip !15
  store i64 %16, i64* %R15_val, !mcsema_real_eip !15
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !15
  %17 = load i64, i64* %RIP, !mcsema_real_eip !15
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !15
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !15
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !15
  store i1 %18, i1* %CF_val, !mcsema_real_eip !15
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !15
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !15
  store i1 %19, i1* %PF_val, !mcsema_real_eip !15
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !15
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !15
  store i1 %20, i1* %AF_val, !mcsema_real_eip !15
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !15
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !15
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !15
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !15
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !15
  store i1 %22, i1* %SF_val, !mcsema_real_eip !15
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !15
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !15
  store i1 %23, i1* %OF_val, !mcsema_real_eip !15
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !15
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !15
  store i1 %24, i1* %DF_val, !mcsema_real_eip !15
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !15
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !15
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !15
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !15
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !15
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !15
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !15
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !15
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !15
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !15
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !15
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !15
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !15
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !15
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !15
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !15
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !15
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !15
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !15
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !15
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !15
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !15
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !15
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !15
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !15
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !15
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !15
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !15
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !15
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !15
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !15
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !15
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !15
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !15
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !15
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !15
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !15
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !15
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !15
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !15
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !15
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !15
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !15
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !15
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !15
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !15
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !15
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !15
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !15
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !15
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !15
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !15
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !15
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !15
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !15
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !15
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !15
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !15
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !15
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !15
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !15
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !15
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !15
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !15
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !15
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !15
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !15
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !15
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !15
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !15
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !15
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !15
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !15
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !15
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !15
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !15
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !15
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !15
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !15
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !15
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !15
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !15
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !15
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !15
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !15
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !15
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !15
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !15
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !15
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !15
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !15
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !15
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !15
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !15
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !15
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !15
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !15
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !15
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !15
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !15
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !15
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !15
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !15
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !15
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !15
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !15
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !15
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !15
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !15
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !15
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !15
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !15
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !15
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !15
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !15
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !15
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !15
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !15
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !15
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !15
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !15
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !15
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !15
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !15
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !15
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !15
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !15
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !15
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !15
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !15
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !15
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !15
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !15
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !15
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !15
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !15
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !15
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !15
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !15
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %78 = load i64, i64* %RSP_val, !mcsema_real_eip !15
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !15
  store i64 %77, i64* %80, !mcsema_real_eip !15
  store i64 %79, i64* %RSP_val, !mcsema_real_eip !15
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !16
  %81 = load i64, i64* %80, !mcsema_real_eip !17
  store i64 %81, i64* %RBP_val, !mcsema_real_eip !17
  %82 = add i64 %78, 8, !mcsema_real_eip !18
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !18
  %83 = load i64, i64* %RAX_val, !mcsema_real_eip !18
  store i64 %83, i64* %RAX, !mcsema_real_eip !18
  %84 = load i64, i64* %RBX_val, !mcsema_real_eip !18
  store i64 %84, i64* %RBX, !mcsema_real_eip !18
  %85 = load i64, i64* %RCX_val, !mcsema_real_eip !18
  store i64 %85, i64* %RCX, !mcsema_real_eip !18
  %86 = load i64, i64* %RDX_val, !mcsema_real_eip !18
  store i64 %86, i64* %RDX, !mcsema_real_eip !18
  %87 = load i64, i64* %RSI_val, !mcsema_real_eip !18
  store i64 %87, i64* %RSI, !mcsema_real_eip !18
  %88 = load i64, i64* %RDI_val, !mcsema_real_eip !18
  store i64 %88, i64* %RDI, !mcsema_real_eip !18
  %89 = load i64, i64* %RSP_val, !mcsema_real_eip !18
  store i64 %89, i64* %RSP, !mcsema_real_eip !18
  %90 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  store i64 %90, i64* %RBP, !mcsema_real_eip !18
  %91 = load i64, i64* %R8_val, !mcsema_real_eip !18
  store i64 %91, i64* %R8, !mcsema_real_eip !18
  %92 = load i64, i64* %R9_val, !mcsema_real_eip !18
  store i64 %92, i64* %R9, !mcsema_real_eip !18
  %93 = load i64, i64* %R10_val, !mcsema_real_eip !18
  store i64 %93, i64* %R10, !mcsema_real_eip !18
  %94 = load i64, i64* %R11_val, !mcsema_real_eip !18
  store i64 %94, i64* %R11, !mcsema_real_eip !18
  %95 = load i64, i64* %R12_val, !mcsema_real_eip !18
  store i64 %95, i64* %R12, !mcsema_real_eip !18
  %96 = load i64, i64* %R13_val, !mcsema_real_eip !18
  store i64 %96, i64* %R13, !mcsema_real_eip !18
  %97 = load i64, i64* %R14_val, !mcsema_real_eip !18
  store i64 %97, i64* %R14, !mcsema_real_eip !18
  %98 = load i64, i64* %R15_val, !mcsema_real_eip !18
  store i64 %98, i64* %R15, !mcsema_real_eip !18
  %99 = load i64, i64* %RIP_val, !mcsema_real_eip !18
  store i64 %99, i64* %RIP, !mcsema_real_eip !18
  %100 = load i1, i1* %CF_val, !mcsema_real_eip !18
  store i1 %100, i1* %CF, align 1, !mcsema_real_eip !18
  %101 = load i1, i1* %PF_val, !mcsema_real_eip !18
  store i1 %101, i1* %PF, align 1, !mcsema_real_eip !18
  %102 = load i1, i1* %AF_val, !mcsema_real_eip !18
  store i1 %102, i1* %AF, align 1, !mcsema_real_eip !18
  %103 = load i1, i1* %ZF_val, !mcsema_real_eip !18
  store i1 %103, i1* %ZF, align 1, !mcsema_real_eip !18
  %104 = load i1, i1* %SF_val, !mcsema_real_eip !18
  store i1 %104, i1* %SF, align 1, !mcsema_real_eip !18
  %105 = load i1, i1* %OF_val, !mcsema_real_eip !18
  store i1 %105, i1* %OF, align 1, !mcsema_real_eip !18
  %106 = load i1, i1* %DF_val, !mcsema_real_eip !18
  store i1 %106, i1* %DF, align 1, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !18
  %107 = load i1, i1* %FPU_B_val, !mcsema_real_eip !18
  store i1 %107, i1* %FPU_B, align 1, !mcsema_real_eip !18
  %108 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !18
  store i1 %108, i1* %FPU_C3, align 1, !mcsema_real_eip !18
  %109 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !18
  store i3 %109, i3* %FPU_TOP, align 1, !mcsema_real_eip !18
  %110 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !18
  store i1 %110, i1* %FPU_C2, align 1, !mcsema_real_eip !18
  %111 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !18
  store i1 %111, i1* %FPU_C1, align 1, !mcsema_real_eip !18
  %112 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !18
  store i1 %112, i1* %FPU_C0, align 1, !mcsema_real_eip !18
  %113 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !18
  store i1 %113, i1* %FPU_ES, align 1, !mcsema_real_eip !18
  %114 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !18
  store i1 %114, i1* %FPU_SF, align 1, !mcsema_real_eip !18
  %115 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !18
  store i1 %115, i1* %FPU_PE, align 1, !mcsema_real_eip !18
  %116 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !18
  store i1 %116, i1* %FPU_UE, align 1, !mcsema_real_eip !18
  %117 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !18
  store i1 %117, i1* %FPU_OE, align 1, !mcsema_real_eip !18
  %118 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !18
  store i1 %118, i1* %FPU_ZE, align 1, !mcsema_real_eip !18
  %119 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !18
  store i1 %119, i1* %FPU_DE, align 1, !mcsema_real_eip !18
  %120 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !18
  store i1 %120, i1* %FPU_IE, align 1, !mcsema_real_eip !18
  %121 = load i1, i1* %FPU_X_val, !mcsema_real_eip !18
  store i1 %121, i1* %FPU_X, align 1, !mcsema_real_eip !18
  %122 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !18
  store i2 %122, i2* %FPU_RC, align 1, !mcsema_real_eip !18
  %123 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !18
  store i2 %123, i2* %FPU_PC, align 1, !mcsema_real_eip !18
  %124 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !18
  store i1 %124, i1* %FPU_PM, align 1, !mcsema_real_eip !18
  %125 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !18
  store i1 %125, i1* %FPU_UM, align 1, !mcsema_real_eip !18
  %126 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !18
  store i1 %126, i1* %FPU_OM, align 1, !mcsema_real_eip !18
  %127 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !18
  store i1 %127, i1* %FPU_ZM, align 1, !mcsema_real_eip !18
  %128 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !18
  store i1 %128, i1* %FPU_DM, align 1, !mcsema_real_eip !18
  %129 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !18
  store i1 %129, i1* %FPU_IM, align 1, !mcsema_real_eip !18
  %130 = load i64, i64* %53, align 4
  store i64 %130, i64* %52, align 4
  %131 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !18
  store i16 %131, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !18
  %132 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !18
  store i64 %132, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !18
  %133 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !18
  store i16 %133, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !18
  %134 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !18
  store i64 %134, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !18
  %135 = load i128, i128* %XMM0_val, !mcsema_real_eip !18
  store i128 %135, i128* %XMM0, align 1, !mcsema_real_eip !18
  %136 = load i128, i128* %XMM1_val, !mcsema_real_eip !18
  store i128 %136, i128* %XMM1, align 1, !mcsema_real_eip !18
  %137 = load i128, i128* %XMM2_val, !mcsema_real_eip !18
  store i128 %137, i128* %XMM2, align 1, !mcsema_real_eip !18
  %138 = load i128, i128* %XMM3_val, !mcsema_real_eip !18
  store i128 %138, i128* %XMM3, align 1, !mcsema_real_eip !18
  %139 = load i128, i128* %XMM4_val, !mcsema_real_eip !18
  store i128 %139, i128* %XMM4, align 1, !mcsema_real_eip !18
  %140 = load i128, i128* %XMM5_val, !mcsema_real_eip !18
  store i128 %140, i128* %XMM5, align 1, !mcsema_real_eip !18
  %141 = load i128, i128* %XMM6_val, !mcsema_real_eip !18
  store i128 %141, i128* %XMM6, align 1, !mcsema_real_eip !18
  %142 = load i128, i128* %XMM7_val, !mcsema_real_eip !18
  store i128 %142, i128* %XMM7, align 1, !mcsema_real_eip !18
  %143 = load i128, i128* %XMM8_val, !mcsema_real_eip !18
  store i128 %143, i128* %XMM8, align 1, !mcsema_real_eip !18
  %144 = load i128, i128* %XMM9_val, !mcsema_real_eip !18
  store i128 %144, i128* %XMM9, align 1, !mcsema_real_eip !18
  %145 = load i128, i128* %XMM10_val, !mcsema_real_eip !18
  store i128 %145, i128* %XMM10, align 1, !mcsema_real_eip !18
  %146 = load i128, i128* %XMM11_val, !mcsema_real_eip !18
  store i128 %146, i128* %XMM11, align 1, !mcsema_real_eip !18
  %147 = load i128, i128* %XMM12_val, !mcsema_real_eip !18
  store i128 %147, i128* %XMM12, align 1, !mcsema_real_eip !18
  %148 = load i128, i128* %XMM13_val, !mcsema_real_eip !18
  store i128 %148, i128* %XMM13, align 1, !mcsema_real_eip !18
  %149 = load i128, i128* %XMM14_val, !mcsema_real_eip !18
  store i128 %149, i128* %XMM14, align 1, !mcsema_real_eip !18
  %150 = load i128, i128* %XMM15_val, !mcsema_real_eip !18
  store i128 %150, i128* %XMM15, align 1, !mcsema_real_eip !18
  %151 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !18
  store i64 %151, i64* %STACK_BASE, align 1, !mcsema_real_eip !18
  %152 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !18
  store i64 %152, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !18
  ret void, !mcsema_real_eip !18
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_10(%struct.regs* %0)
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
!2 = !{i64 16, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 17, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = !{i64 20, [16 x i8] c"\09subq\09$16, %rsp\00"}
!5 = !{i64 24, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!6 = !{i64 31, [19 x i8] c"\09cmpl\09$2, -4(%rbp)\00"}
!7 = !{i64 35, [8 x i8] c"\09jge\0919\00"}
!8 = !{i64 60, [16 x i8] c"\09addq\09$16, %rsp\00"}
!9 = !{i64 64, [11 x i8] c"\09popq\09%rbp\00"}
!10 = !{i64 65, [6 x i8] c"\09retq\00"}
!11 = !{i64 41, [11 x i8] c"\09callq\09-46\00"}
!12 = !{i64 46, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!13 = !{i64 49, [15 x i8] c"\09addl\09$1, %eax\00"}
!14 = !{i64 52, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!15 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!16 = !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!17 = !{i64 4, [11 x i8] c"\09popq\09%rbp\00"}
!18 = !{i64 5, [6 x i8] c"\09retq\00"}
