; ModuleID = 'Output/test_20.clang.bc'
source_filename = "Output/test_20.clang.bc"
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
  store i64 %80, i64* %RSP_val, !mcsema_real_eip !2
  store i64 %80, i64* %RBP_val, !mcsema_real_eip !3
  %82 = add i64 %79, -12, !mcsema_real_eip !4
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !4
  %84 = load i64, i64* %RDI_val, !mcsema_real_eip !4
  %85 = trunc i64 %84 to i32, !mcsema_real_eip !4
  %86 = bitcast i64* %83 to i32*
  store i32 %85, i32* %86, !mcsema_real_eip !4
  %87 = load i64, i64* %RBP_val, !mcsema_real_eip !5
  %88 = add i64 %87, -8, !mcsema_real_eip !5
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !5
  %90 = bitcast i64* %89 to i32*
  store i32 0, i32* %90, !mcsema_real_eip !5
  %91 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %92 = add i64 %91, -4, !mcsema_real_eip !6
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !6
  %94 = bitcast i64* %93 to i32*
  %95 = load i32, i32* %94, !mcsema_real_eip !6
  %96 = zext i32 %95 to i64, !mcsema_real_eip !6
  store i64 %96, i64* %RDI_val, !mcsema_real_eip !6
  %97 = icmp eq i32 %95, 0, !mcsema_real_eip !7
  store i1 %97, i1* %ZF_val, !mcsema_real_eip !7
  %98 = icmp slt i32 %95, 0
  store i1 %98, i1* %SF_val, !mcsema_real_eip !7
  %99 = trunc i32 %95 to i8, !mcsema_real_eip !7
  %100 = tail call i8 @llvm.ctpop.i8(i8 %99), !mcsema_real_eip !7
  %101 = and i8 %100, 1
  %102 = icmp eq i8 %101, 0
  store i1 %102, i1* %PF_val, !mcsema_real_eip !7
  store i1 false, i1* %CF_val, !mcsema_real_eip !7
  store i1 false, i1* %OF_val, !mcsema_real_eip !7
  %103 = load i64, i64* %RBP_val, !mcsema_real_eip !8
  %104 = add i64 %103, -12, !mcsema_real_eip !8
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !8
  %106 = load i64, i64* %RDI_val, !mcsema_real_eip !8
  %107 = trunc i64 %106 to i32, !mcsema_real_eip !8
  %108 = bitcast i64* %105 to i32*
  store i32 %107, i32* %108, !mcsema_real_eip !8
  %109 = load i1, i1* %ZF_val, !mcsema_real_eip !9
  %110 = load i64, i64* %RBP_val, !mcsema_real_eip !10
  br i1 %109, label %block_0x19f, label %block_0x21, !mcsema_real_eip !9

block_0x19f:                                      ; preds = %entry
  %111 = add i64 %110, -8, !mcsema_real_eip !10
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !10
  %113 = bitcast i64* %112 to i32*
  %114 = load i32, i32* %113, !mcsema_real_eip !10
  %115 = zext i32 %114 to i64, !mcsema_real_eip !10
  store i1 false, i1* %AF_val, !mcsema_real_eip !11
  %116 = icmp slt i32 %114, 0
  store i1 %116, i1* %SF_val, !mcsema_real_eip !11
  %117 = icmp eq i32 %114, 0, !mcsema_real_eip !11
  store i1 %117, i1* %ZF_val, !mcsema_real_eip !11
  store i1 false, i1* %OF_val, !mcsema_real_eip !11
  %118 = trunc i32 %114 to i8, !mcsema_real_eip !11
  %119 = tail call i8 @llvm.ctpop.i8(i8 %118), !mcsema_real_eip !11
  %120 = and i8 %119, 1
  %121 = icmp eq i8 %120, 0
  store i1 %121, i1* %PF_val, !mcsema_real_eip !11
  store i1 false, i1* %CF_val, !mcsema_real_eip !11
  store i64 %115, i64* %RAX_val, !mcsema_real_eip !11
  %122 = load i64, i64* %RBP_val, !mcsema_real_eip !12
  %123 = add i64 %122, -8, !mcsema_real_eip !12
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !12
  %125 = bitcast i64* %124 to i32*
  store i32 %114, i32* %125, !mcsema_real_eip !12
  br label %block_0x2c8, !mcsema_real_eip !13

block_0x2c8:                                      ; preds = %block_0x2bf, %block_0x2af, %block_0x29f, %block_0x28f, %block_0x27f, %block_0x26f, %block_0x25f, %block_0x24f, %block_0x23f, %block_0x22f, %block_0x21f, %block_0x20f, %block_0x201, %block_0x1f3, %block_0x1e5, %block_0x1d7, %block_0x1c9, %block_0x1bb, %block_0x1ad, %block_0x19f
  %126 = load i64, i64* %RBP_val, !mcsema_real_eip !14
  %127 = add i64 %126, -8, !mcsema_real_eip !14
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !14
  %129 = bitcast i64* %128 to i32*
  %130 = load i32, i32* %129, !mcsema_real_eip !14
  %131 = zext i32 %130 to i64, !mcsema_real_eip !14
  store i64 %131, i64* %RAX_val, !mcsema_real_eip !14
  %132 = load i64, i64* %RSP_val, !mcsema_real_eip !15
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !15
  %134 = load i64, i64* %133, !mcsema_real_eip !15
  store i64 %134, i64* %RBP_val, !mcsema_real_eip !15
  %135 = add i64 %132, 16, !mcsema_real_eip !16
  store i64 %135, i64* %RSP_val, !mcsema_real_eip !16
  %136 = load i64, i64* %RAX_val, !mcsema_real_eip !16
  store i64 %136, i64* %RAX, !mcsema_real_eip !16
  %137 = load i64, i64* %RBX_val, !mcsema_real_eip !16
  store i64 %137, i64* %RBX, !mcsema_real_eip !16
  %138 = load i64, i64* %RCX_val, !mcsema_real_eip !16
  store i64 %138, i64* %RCX, !mcsema_real_eip !16
  %139 = load i64, i64* %RDX_val, !mcsema_real_eip !16
  store i64 %139, i64* %RDX, !mcsema_real_eip !16
  %140 = load i64, i64* %RSI_val, !mcsema_real_eip !16
  store i64 %140, i64* %RSI, !mcsema_real_eip !16
  %141 = load i64, i64* %RDI_val, !mcsema_real_eip !16
  store i64 %141, i64* %RDI, !mcsema_real_eip !16
  %142 = load i64, i64* %RSP_val, !mcsema_real_eip !16
  store i64 %142, i64* %RSP, !mcsema_real_eip !16
  %143 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  store i64 %143, i64* %RBP, !mcsema_real_eip !16
  %144 = load i64, i64* %R8_val, !mcsema_real_eip !16
  store i64 %144, i64* %R8, !mcsema_real_eip !16
  %145 = load i64, i64* %R9_val, !mcsema_real_eip !16
  store i64 %145, i64* %R9, !mcsema_real_eip !16
  %146 = load i64, i64* %R10_val, !mcsema_real_eip !16
  store i64 %146, i64* %R10, !mcsema_real_eip !16
  %147 = load i64, i64* %R11_val, !mcsema_real_eip !16
  store i64 %147, i64* %R11, !mcsema_real_eip !16
  %148 = load i64, i64* %R12_val, !mcsema_real_eip !16
  store i64 %148, i64* %R12, !mcsema_real_eip !16
  %149 = load i64, i64* %R13_val, !mcsema_real_eip !16
  store i64 %149, i64* %R13, !mcsema_real_eip !16
  %150 = load i64, i64* %R14_val, !mcsema_real_eip !16
  store i64 %150, i64* %R14, !mcsema_real_eip !16
  %151 = load i64, i64* %R15_val, !mcsema_real_eip !16
  store i64 %151, i64* %R15, !mcsema_real_eip !16
  %152 = load i64, i64* %RIP_val, !mcsema_real_eip !16
  store i64 %152, i64* %RIP, !mcsema_real_eip !16
  %153 = load i1, i1* %CF_val, !mcsema_real_eip !16
  store i1 %153, i1* %CF, align 1, !mcsema_real_eip !16
  %154 = load i1, i1* %PF_val, !mcsema_real_eip !16
  store i1 %154, i1* %PF, align 1, !mcsema_real_eip !16
  %155 = load i1, i1* %AF_val, !mcsema_real_eip !16
  store i1 %155, i1* %AF, align 1, !mcsema_real_eip !16
  %156 = load i1, i1* %ZF_val, !mcsema_real_eip !16
  store i1 %156, i1* %ZF, align 1, !mcsema_real_eip !16
  %157 = load i1, i1* %SF_val, !mcsema_real_eip !16
  store i1 %157, i1* %SF, align 1, !mcsema_real_eip !16
  %158 = load i1, i1* %OF_val, !mcsema_real_eip !16
  store i1 %158, i1* %OF, align 1, !mcsema_real_eip !16
  %159 = load i1, i1* %DF_val, !mcsema_real_eip !16
  store i1 %159, i1* %DF, align 1, !mcsema_real_eip !16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !16
  %160 = load i1, i1* %FPU_B_val, !mcsema_real_eip !16
  store i1 %160, i1* %FPU_B, align 1, !mcsema_real_eip !16
  %161 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !16
  store i1 %161, i1* %FPU_C3, align 1, !mcsema_real_eip !16
  %162 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !16
  store i3 %162, i3* %FPU_TOP, align 1, !mcsema_real_eip !16
  %163 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !16
  store i1 %163, i1* %FPU_C2, align 1, !mcsema_real_eip !16
  %164 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !16
  store i1 %164, i1* %FPU_C1, align 1, !mcsema_real_eip !16
  %165 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !16
  store i1 %165, i1* %FPU_C0, align 1, !mcsema_real_eip !16
  %166 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !16
  store i1 %166, i1* %FPU_ES, align 1, !mcsema_real_eip !16
  %167 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !16
  store i1 %167, i1* %FPU_SF, align 1, !mcsema_real_eip !16
  %168 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !16
  store i1 %168, i1* %FPU_PE, align 1, !mcsema_real_eip !16
  %169 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !16
  store i1 %169, i1* %FPU_UE, align 1, !mcsema_real_eip !16
  %170 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !16
  store i1 %170, i1* %FPU_OE, align 1, !mcsema_real_eip !16
  %171 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !16
  store i1 %171, i1* %FPU_ZE, align 1, !mcsema_real_eip !16
  %172 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !16
  store i1 %172, i1* %FPU_DE, align 1, !mcsema_real_eip !16
  %173 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !16
  store i1 %173, i1* %FPU_IE, align 1, !mcsema_real_eip !16
  %174 = load i1, i1* %FPU_X_val, !mcsema_real_eip !16
  store i1 %174, i1* %FPU_X, align 1, !mcsema_real_eip !16
  %175 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !16
  store i2 %175, i2* %FPU_RC, align 1, !mcsema_real_eip !16
  %176 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !16
  store i2 %176, i2* %FPU_PC, align 1, !mcsema_real_eip !16
  %177 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !16
  store i1 %177, i1* %FPU_PM, align 1, !mcsema_real_eip !16
  %178 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !16
  store i1 %178, i1* %FPU_UM, align 1, !mcsema_real_eip !16
  %179 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !16
  store i1 %179, i1* %FPU_OM, align 1, !mcsema_real_eip !16
  %180 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !16
  store i1 %180, i1* %FPU_ZM, align 1, !mcsema_real_eip !16
  %181 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !16
  store i1 %181, i1* %FPU_DM, align 1, !mcsema_real_eip !16
  %182 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !16
  store i1 %182, i1* %FPU_IM, align 1, !mcsema_real_eip !16
  %183 = load i64, i64* %53, align 4
  store i64 %183, i64* %52, align 4
  %184 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !16
  store i16 %184, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !16
  %185 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !16
  store i64 %185, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !16
  %186 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !16
  store i16 %186, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !16
  %187 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !16
  store i64 %187, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !16
  %188 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !16
  store i11 %188, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !16
  %189 = load i128, i128* %XMM0_val, !mcsema_real_eip !16
  store i128 %189, i128* %XMM0, align 1, !mcsema_real_eip !16
  %190 = load i128, i128* %XMM1_val, !mcsema_real_eip !16
  store i128 %190, i128* %XMM1, align 1, !mcsema_real_eip !16
  %191 = load i128, i128* %XMM2_val, !mcsema_real_eip !16
  store i128 %191, i128* %XMM2, align 1, !mcsema_real_eip !16
  %192 = load i128, i128* %XMM3_val, !mcsema_real_eip !16
  store i128 %192, i128* %XMM3, align 1, !mcsema_real_eip !16
  %193 = load i128, i128* %XMM4_val, !mcsema_real_eip !16
  store i128 %193, i128* %XMM4, align 1, !mcsema_real_eip !16
  %194 = load i128, i128* %XMM5_val, !mcsema_real_eip !16
  store i128 %194, i128* %XMM5, align 1, !mcsema_real_eip !16
  %195 = load i128, i128* %XMM6_val, !mcsema_real_eip !16
  store i128 %195, i128* %XMM6, align 1, !mcsema_real_eip !16
  %196 = load i128, i128* %XMM7_val, !mcsema_real_eip !16
  store i128 %196, i128* %XMM7, align 1, !mcsema_real_eip !16
  %197 = load i128, i128* %XMM8_val, !mcsema_real_eip !16
  store i128 %197, i128* %XMM8, align 1, !mcsema_real_eip !16
  %198 = load i128, i128* %XMM9_val, !mcsema_real_eip !16
  store i128 %198, i128* %XMM9, align 1, !mcsema_real_eip !16
  %199 = load i128, i128* %XMM10_val, !mcsema_real_eip !16
  store i128 %199, i128* %XMM10, align 1, !mcsema_real_eip !16
  %200 = load i128, i128* %XMM11_val, !mcsema_real_eip !16
  store i128 %200, i128* %XMM11, align 1, !mcsema_real_eip !16
  %201 = load i128, i128* %XMM12_val, !mcsema_real_eip !16
  store i128 %201, i128* %XMM12, align 1, !mcsema_real_eip !16
  %202 = load i128, i128* %XMM13_val, !mcsema_real_eip !16
  store i128 %202, i128* %XMM13, align 1, !mcsema_real_eip !16
  %203 = load i128, i128* %XMM14_val, !mcsema_real_eip !16
  store i128 %203, i128* %XMM14, align 1, !mcsema_real_eip !16
  %204 = load i128, i128* %XMM15_val, !mcsema_real_eip !16
  store i128 %204, i128* %XMM15, align 1, !mcsema_real_eip !16
  %205 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !16
  store i64 %205, i64* %STACK_BASE, align 1, !mcsema_real_eip !16
  %206 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !16
  store i64 %206, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !16
  ret void, !mcsema_real_eip !16

block_0x21:                                       ; preds = %entry
  %207 = add i64 %110, -12, !mcsema_real_eip !17
  %208 = inttoptr i64 %207 to i64*, !mcsema_real_eip !17
  %209 = bitcast i64* %208 to i32*
  %210 = load i32, i32* %209, !mcsema_real_eip !17
  %211 = add i32 %210, -1
  %212 = xor i32 %211, %210, !mcsema_real_eip !18
  %213 = and i32 %212, 16, !mcsema_real_eip !18
  %214 = icmp ne i32 %213, 0, !mcsema_real_eip !18
  store i1 %214, i1* %AF_val, !mcsema_real_eip !18
  %215 = trunc i32 %211 to i8, !mcsema_real_eip !18
  %216 = tail call i8 @llvm.ctpop.i8(i8 %215), !mcsema_real_eip !18
  %217 = and i8 %216, 1
  %218 = icmp eq i8 %217, 0
  store i1 %218, i1* %PF_val, !mcsema_real_eip !18
  %219 = icmp eq i32 %211, 0, !mcsema_real_eip !18
  store i1 %219, i1* %ZF_val, !mcsema_real_eip !18
  %220 = icmp slt i32 %211, 0
  store i1 %220, i1* %SF_val, !mcsema_real_eip !18
  %221 = icmp eq i32 %210, 0
  store i1 %221, i1* %CF_val, !mcsema_real_eip !18
  %222 = and i32 %212, %210, !mcsema_real_eip !18
  %223 = icmp slt i32 %222, 0
  store i1 %223, i1* %OF_val, !mcsema_real_eip !18
  %224 = zext i32 %211 to i64, !mcsema_real_eip !18
  store i64 %224, i64* %RAX_val, !mcsema_real_eip !18
  %225 = load i64, i64* %RBP_val, !mcsema_real_eip !19
  %226 = add i64 %225, -16, !mcsema_real_eip !19
  %227 = inttoptr i64 %226 to i64*, !mcsema_real_eip !19
  %228 = bitcast i64* %227 to i32*
  store i32 %211, i32* %228, !mcsema_real_eip !19
  %229 = load i1, i1* %ZF_val, !mcsema_real_eip !20
  %230 = load i64, i64* %RBP_val, !mcsema_real_eip !21
  br i1 %229, label %block_0x1ad, label %block_0x35, !mcsema_real_eip !20

block_0x1ad:                                      ; preds = %block_0x21
  %231 = add i64 %230, -8, !mcsema_real_eip !21
  %232 = inttoptr i64 %231 to i64*, !mcsema_real_eip !21
  %233 = bitcast i64* %232 to i32*
  %234 = load i32, i32* %233, !mcsema_real_eip !21
  %uadd87 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %234, i32 1)
  %235 = extractvalue { i32, i1 } %uadd87, 0
  %236 = xor i32 %235, %234, !mcsema_real_eip !22
  %237 = and i32 %236, 16, !mcsema_real_eip !22
  %238 = icmp ne i32 %237, 0, !mcsema_real_eip !22
  store i1 %238, i1* %AF_val, !mcsema_real_eip !22
  %239 = icmp slt i32 %235, 0
  store i1 %239, i1* %SF_val, !mcsema_real_eip !22
  %240 = icmp eq i32 %235, 0, !mcsema_real_eip !22
  store i1 %240, i1* %ZF_val, !mcsema_real_eip !22
  %241 = xor i32 %234, -2147483648, !mcsema_real_eip !22
  %242 = and i32 %236, %241, !mcsema_real_eip !22
  %243 = icmp slt i32 %242, 0
  store i1 %243, i1* %OF_val, !mcsema_real_eip !22
  %244 = trunc i32 %235 to i8, !mcsema_real_eip !22
  %245 = tail call i8 @llvm.ctpop.i8(i8 %244), !mcsema_real_eip !22
  %246 = and i8 %245, 1
  %247 = icmp eq i8 %246, 0
  store i1 %247, i1* %PF_val, !mcsema_real_eip !22
  %248 = extractvalue { i32, i1 } %uadd87, 1
  store i1 %248, i1* %CF_val, !mcsema_real_eip !22
  %249 = zext i32 %235 to i64, !mcsema_real_eip !22
  store i64 %249, i64* %RAX_val, !mcsema_real_eip !22
  %250 = load i64, i64* %RBP_val, !mcsema_real_eip !23
  %251 = add i64 %250, -8, !mcsema_real_eip !23
  %252 = inttoptr i64 %251 to i64*, !mcsema_real_eip !23
  %253 = bitcast i64* %252 to i32*
  store i32 %235, i32* %253, !mcsema_real_eip !23
  br label %block_0x2c8, !mcsema_real_eip !24

block_0x35:                                       ; preds = %block_0x21
  %254 = add i64 %230, -12, !mcsema_real_eip !25
  %255 = inttoptr i64 %254 to i64*, !mcsema_real_eip !25
  %256 = bitcast i64* %255 to i32*
  %257 = load i32, i32* %256, !mcsema_real_eip !25
  %258 = add i32 %257, -2
  %259 = xor i32 %258, %257, !mcsema_real_eip !26
  %260 = and i32 %259, 16, !mcsema_real_eip !26
  %261 = icmp ne i32 %260, 0, !mcsema_real_eip !26
  store i1 %261, i1* %AF_val, !mcsema_real_eip !26
  %262 = trunc i32 %258 to i8, !mcsema_real_eip !26
  %263 = tail call i8 @llvm.ctpop.i8(i8 %262), !mcsema_real_eip !26
  %264 = and i8 %263, 1
  %265 = icmp eq i8 %264, 0
  store i1 %265, i1* %PF_val, !mcsema_real_eip !26
  %266 = icmp eq i32 %258, 0, !mcsema_real_eip !26
  store i1 %266, i1* %ZF_val, !mcsema_real_eip !26
  %267 = icmp slt i32 %258, 0
  store i1 %267, i1* %SF_val, !mcsema_real_eip !26
  %268 = icmp ult i32 %257, 2, !mcsema_real_eip !26
  store i1 %268, i1* %CF_val, !mcsema_real_eip !26
  %269 = and i32 %259, %257, !mcsema_real_eip !26
  %270 = icmp slt i32 %269, 0
  store i1 %270, i1* %OF_val, !mcsema_real_eip !26
  %271 = zext i32 %258 to i64, !mcsema_real_eip !26
  store i64 %271, i64* %RAX_val, !mcsema_real_eip !26
  %272 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %273 = add i64 %272, -20, !mcsema_real_eip !27
  %274 = inttoptr i64 %273 to i64*, !mcsema_real_eip !27
  %275 = bitcast i64* %274 to i32*
  store i32 %258, i32* %275, !mcsema_real_eip !27
  %276 = load i1, i1* %ZF_val, !mcsema_real_eip !28
  %277 = load i64, i64* %RBP_val, !mcsema_real_eip !29
  br i1 %276, label %block_0x1bb, label %block_0x49, !mcsema_real_eip !28

block_0x1bb:                                      ; preds = %block_0x35
  %278 = add i64 %277, -8, !mcsema_real_eip !29
  %279 = inttoptr i64 %278 to i64*, !mcsema_real_eip !29
  %280 = bitcast i64* %279 to i32*
  %281 = load i32, i32* %280, !mcsema_real_eip !29
  %uadd86 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %281, i32 2)
  %282 = extractvalue { i32, i1 } %uadd86, 0
  %283 = xor i32 %282, %281, !mcsema_real_eip !30
  %284 = and i32 %283, 16, !mcsema_real_eip !30
  %285 = icmp ne i32 %284, 0, !mcsema_real_eip !30
  store i1 %285, i1* %AF_val, !mcsema_real_eip !30
  %286 = icmp slt i32 %282, 0
  store i1 %286, i1* %SF_val, !mcsema_real_eip !30
  %287 = icmp eq i32 %282, 0, !mcsema_real_eip !30
  store i1 %287, i1* %ZF_val, !mcsema_real_eip !30
  %288 = xor i32 %281, -2147483648, !mcsema_real_eip !30
  %289 = and i32 %283, %288, !mcsema_real_eip !30
  %290 = icmp slt i32 %289, 0
  store i1 %290, i1* %OF_val, !mcsema_real_eip !30
  %291 = trunc i32 %282 to i8, !mcsema_real_eip !30
  %292 = tail call i8 @llvm.ctpop.i8(i8 %291), !mcsema_real_eip !30
  %293 = and i8 %292, 1
  %294 = icmp eq i8 %293, 0
  store i1 %294, i1* %PF_val, !mcsema_real_eip !30
  %295 = extractvalue { i32, i1 } %uadd86, 1
  store i1 %295, i1* %CF_val, !mcsema_real_eip !30
  %296 = zext i32 %282 to i64, !mcsema_real_eip !30
  store i64 %296, i64* %RAX_val, !mcsema_real_eip !30
  %297 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %298 = add i64 %297, -8, !mcsema_real_eip !31
  %299 = inttoptr i64 %298 to i64*, !mcsema_real_eip !31
  %300 = bitcast i64* %299 to i32*
  store i32 %282, i32* %300, !mcsema_real_eip !31
  br label %block_0x2c8, !mcsema_real_eip !32

block_0x49:                                       ; preds = %block_0x35
  %301 = add i64 %277, -12, !mcsema_real_eip !33
  %302 = inttoptr i64 %301 to i64*, !mcsema_real_eip !33
  %303 = bitcast i64* %302 to i32*
  %304 = load i32, i32* %303, !mcsema_real_eip !33
  %305 = add i32 %304, -4
  %306 = xor i32 %305, %304, !mcsema_real_eip !34
  %307 = and i32 %306, 16, !mcsema_real_eip !34
  %308 = icmp ne i32 %307, 0, !mcsema_real_eip !34
  store i1 %308, i1* %AF_val, !mcsema_real_eip !34
  %309 = trunc i32 %305 to i8, !mcsema_real_eip !34
  %310 = tail call i8 @llvm.ctpop.i8(i8 %309), !mcsema_real_eip !34
  %311 = and i8 %310, 1
  %312 = icmp eq i8 %311, 0
  store i1 %312, i1* %PF_val, !mcsema_real_eip !34
  %313 = icmp eq i32 %305, 0, !mcsema_real_eip !34
  store i1 %313, i1* %ZF_val, !mcsema_real_eip !34
  %314 = icmp slt i32 %305, 0
  store i1 %314, i1* %SF_val, !mcsema_real_eip !34
  %315 = icmp ult i32 %304, 4, !mcsema_real_eip !34
  store i1 %315, i1* %CF_val, !mcsema_real_eip !34
  %316 = and i32 %306, %304, !mcsema_real_eip !34
  %317 = icmp slt i32 %316, 0
  store i1 %317, i1* %OF_val, !mcsema_real_eip !34
  %318 = zext i32 %305 to i64, !mcsema_real_eip !34
  store i64 %318, i64* %RAX_val, !mcsema_real_eip !34
  %319 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %320 = add i64 %319, -24, !mcsema_real_eip !35
  %321 = inttoptr i64 %320 to i64*, !mcsema_real_eip !35
  %322 = bitcast i64* %321 to i32*
  store i32 %305, i32* %322, !mcsema_real_eip !35
  %323 = load i1, i1* %ZF_val, !mcsema_real_eip !36
  %324 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  br i1 %323, label %block_0x1c9, label %block_0x5d, !mcsema_real_eip !36

block_0x1c9:                                      ; preds = %block_0x49
  %325 = add i64 %324, -8, !mcsema_real_eip !37
  %326 = inttoptr i64 %325 to i64*, !mcsema_real_eip !37
  %327 = bitcast i64* %326 to i32*
  %328 = load i32, i32* %327, !mcsema_real_eip !37
  %uadd85 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %328, i32 4)
  %329 = extractvalue { i32, i1 } %uadd85, 0
  %330 = xor i32 %329, %328, !mcsema_real_eip !38
  %331 = and i32 %330, 16, !mcsema_real_eip !38
  %332 = icmp ne i32 %331, 0, !mcsema_real_eip !38
  store i1 %332, i1* %AF_val, !mcsema_real_eip !38
  %333 = icmp slt i32 %329, 0
  store i1 %333, i1* %SF_val, !mcsema_real_eip !38
  %334 = icmp eq i32 %329, 0, !mcsema_real_eip !38
  store i1 %334, i1* %ZF_val, !mcsema_real_eip !38
  %335 = xor i32 %328, -2147483648, !mcsema_real_eip !38
  %336 = and i32 %330, %335, !mcsema_real_eip !38
  %337 = icmp slt i32 %336, 0
  store i1 %337, i1* %OF_val, !mcsema_real_eip !38
  %338 = trunc i32 %329 to i8, !mcsema_real_eip !38
  %339 = tail call i8 @llvm.ctpop.i8(i8 %338), !mcsema_real_eip !38
  %340 = and i8 %339, 1
  %341 = icmp eq i8 %340, 0
  store i1 %341, i1* %PF_val, !mcsema_real_eip !38
  %342 = extractvalue { i32, i1 } %uadd85, 1
  store i1 %342, i1* %CF_val, !mcsema_real_eip !38
  %343 = zext i32 %329 to i64, !mcsema_real_eip !38
  store i64 %343, i64* %RAX_val, !mcsema_real_eip !38
  %344 = load i64, i64* %RBP_val, !mcsema_real_eip !39
  %345 = add i64 %344, -8, !mcsema_real_eip !39
  %346 = inttoptr i64 %345 to i64*, !mcsema_real_eip !39
  %347 = bitcast i64* %346 to i32*
  store i32 %329, i32* %347, !mcsema_real_eip !39
  br label %block_0x2c8, !mcsema_real_eip !40

block_0x5d:                                       ; preds = %block_0x49
  %348 = add i64 %324, -12, !mcsema_real_eip !41
  %349 = inttoptr i64 %348 to i64*, !mcsema_real_eip !41
  %350 = bitcast i64* %349 to i32*
  %351 = load i32, i32* %350, !mcsema_real_eip !41
  %352 = add i32 %351, -6
  %353 = xor i32 %352, %351, !mcsema_real_eip !42
  %354 = and i32 %353, 16, !mcsema_real_eip !42
  %355 = icmp ne i32 %354, 0, !mcsema_real_eip !42
  store i1 %355, i1* %AF_val, !mcsema_real_eip !42
  %356 = trunc i32 %352 to i8, !mcsema_real_eip !42
  %357 = tail call i8 @llvm.ctpop.i8(i8 %356), !mcsema_real_eip !42
  %358 = and i8 %357, 1
  %359 = icmp eq i8 %358, 0
  store i1 %359, i1* %PF_val, !mcsema_real_eip !42
  %360 = icmp eq i32 %352, 0, !mcsema_real_eip !42
  store i1 %360, i1* %ZF_val, !mcsema_real_eip !42
  %361 = icmp slt i32 %352, 0
  store i1 %361, i1* %SF_val, !mcsema_real_eip !42
  %362 = icmp ult i32 %351, 6, !mcsema_real_eip !42
  store i1 %362, i1* %CF_val, !mcsema_real_eip !42
  %363 = and i32 %353, %351, !mcsema_real_eip !42
  %364 = icmp slt i32 %363, 0
  store i1 %364, i1* %OF_val, !mcsema_real_eip !42
  %365 = zext i32 %352 to i64, !mcsema_real_eip !42
  store i64 %365, i64* %RAX_val, !mcsema_real_eip !42
  %366 = load i64, i64* %RBP_val, !mcsema_real_eip !43
  %367 = add i64 %366, -28, !mcsema_real_eip !43
  %368 = inttoptr i64 %367 to i64*, !mcsema_real_eip !43
  %369 = bitcast i64* %368 to i32*
  store i32 %352, i32* %369, !mcsema_real_eip !43
  %370 = load i1, i1* %ZF_val, !mcsema_real_eip !44
  %371 = load i64, i64* %RBP_val, !mcsema_real_eip !45
  br i1 %370, label %block_0x1d7, label %block_0x71, !mcsema_real_eip !44

block_0x1d7:                                      ; preds = %block_0x5d
  %372 = add i64 %371, -8, !mcsema_real_eip !45
  %373 = inttoptr i64 %372 to i64*, !mcsema_real_eip !45
  %374 = bitcast i64* %373 to i32*
  %375 = load i32, i32* %374, !mcsema_real_eip !45
  %uadd84 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %375, i32 6)
  %376 = extractvalue { i32, i1 } %uadd84, 0
  %377 = xor i32 %376, %375, !mcsema_real_eip !46
  %378 = and i32 %377, 16, !mcsema_real_eip !46
  %379 = icmp ne i32 %378, 0, !mcsema_real_eip !46
  store i1 %379, i1* %AF_val, !mcsema_real_eip !46
  %380 = icmp slt i32 %376, 0
  store i1 %380, i1* %SF_val, !mcsema_real_eip !46
  %381 = icmp eq i32 %376, 0, !mcsema_real_eip !46
  store i1 %381, i1* %ZF_val, !mcsema_real_eip !46
  %382 = xor i32 %375, -2147483648, !mcsema_real_eip !46
  %383 = and i32 %377, %382, !mcsema_real_eip !46
  %384 = icmp slt i32 %383, 0
  store i1 %384, i1* %OF_val, !mcsema_real_eip !46
  %385 = trunc i32 %376 to i8, !mcsema_real_eip !46
  %386 = tail call i8 @llvm.ctpop.i8(i8 %385), !mcsema_real_eip !46
  %387 = and i8 %386, 1
  %388 = icmp eq i8 %387, 0
  store i1 %388, i1* %PF_val, !mcsema_real_eip !46
  %389 = extractvalue { i32, i1 } %uadd84, 1
  store i1 %389, i1* %CF_val, !mcsema_real_eip !46
  %390 = zext i32 %376 to i64, !mcsema_real_eip !46
  store i64 %390, i64* %RAX_val, !mcsema_real_eip !46
  %391 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  %392 = add i64 %391, -8, !mcsema_real_eip !47
  %393 = inttoptr i64 %392 to i64*, !mcsema_real_eip !47
  %394 = bitcast i64* %393 to i32*
  store i32 %376, i32* %394, !mcsema_real_eip !47
  br label %block_0x2c8, !mcsema_real_eip !48

block_0x71:                                       ; preds = %block_0x5d
  %395 = add i64 %371, -12, !mcsema_real_eip !49
  %396 = inttoptr i64 %395 to i64*, !mcsema_real_eip !49
  %397 = bitcast i64* %396 to i32*
  %398 = load i32, i32* %397, !mcsema_real_eip !49
  %399 = add i32 %398, -12
  %400 = xor i32 %399, %398, !mcsema_real_eip !50
  %401 = and i32 %400, 16, !mcsema_real_eip !50
  %402 = icmp ne i32 %401, 0, !mcsema_real_eip !50
  store i1 %402, i1* %AF_val, !mcsema_real_eip !50
  %403 = trunc i32 %399 to i8, !mcsema_real_eip !50
  %404 = tail call i8 @llvm.ctpop.i8(i8 %403), !mcsema_real_eip !50
  %405 = and i8 %404, 1
  %406 = icmp eq i8 %405, 0
  store i1 %406, i1* %PF_val, !mcsema_real_eip !50
  %407 = icmp eq i32 %399, 0, !mcsema_real_eip !50
  store i1 %407, i1* %ZF_val, !mcsema_real_eip !50
  %408 = icmp slt i32 %399, 0
  store i1 %408, i1* %SF_val, !mcsema_real_eip !50
  %409 = icmp ult i32 %398, 12, !mcsema_real_eip !50
  store i1 %409, i1* %CF_val, !mcsema_real_eip !50
  %410 = and i32 %400, %398, !mcsema_real_eip !50
  %411 = icmp slt i32 %410, 0
  store i1 %411, i1* %OF_val, !mcsema_real_eip !50
  %412 = zext i32 %399 to i64, !mcsema_real_eip !50
  store i64 %412, i64* %RAX_val, !mcsema_real_eip !50
  %413 = load i64, i64* %RBP_val, !mcsema_real_eip !51
  %414 = add i64 %413, -32, !mcsema_real_eip !51
  %415 = inttoptr i64 %414 to i64*, !mcsema_real_eip !51
  %416 = bitcast i64* %415 to i32*
  store i32 %399, i32* %416, !mcsema_real_eip !51
  %417 = load i1, i1* %ZF_val, !mcsema_real_eip !52
  %418 = load i64, i64* %RBP_val, !mcsema_real_eip !53
  br i1 %417, label %block_0x1e5, label %block_0x85, !mcsema_real_eip !52

block_0x1e5:                                      ; preds = %block_0x71
  %419 = add i64 %418, -8, !mcsema_real_eip !53
  %420 = inttoptr i64 %419 to i64*, !mcsema_real_eip !53
  %421 = bitcast i64* %420 to i32*
  %422 = load i32, i32* %421, !mcsema_real_eip !53
  %uadd83 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %422, i32 12)
  %423 = extractvalue { i32, i1 } %uadd83, 0
  %424 = xor i32 %423, %422, !mcsema_real_eip !54
  %425 = and i32 %424, 16, !mcsema_real_eip !54
  %426 = icmp ne i32 %425, 0, !mcsema_real_eip !54
  store i1 %426, i1* %AF_val, !mcsema_real_eip !54
  %427 = icmp slt i32 %423, 0
  store i1 %427, i1* %SF_val, !mcsema_real_eip !54
  %428 = icmp eq i32 %423, 0, !mcsema_real_eip !54
  store i1 %428, i1* %ZF_val, !mcsema_real_eip !54
  %429 = xor i32 %422, -2147483648, !mcsema_real_eip !54
  %430 = and i32 %424, %429, !mcsema_real_eip !54
  %431 = icmp slt i32 %430, 0
  store i1 %431, i1* %OF_val, !mcsema_real_eip !54
  %432 = trunc i32 %423 to i8, !mcsema_real_eip !54
  %433 = tail call i8 @llvm.ctpop.i8(i8 %432), !mcsema_real_eip !54
  %434 = and i8 %433, 1
  %435 = icmp eq i8 %434, 0
  store i1 %435, i1* %PF_val, !mcsema_real_eip !54
  %436 = extractvalue { i32, i1 } %uadd83, 1
  store i1 %436, i1* %CF_val, !mcsema_real_eip !54
  %437 = zext i32 %423 to i64, !mcsema_real_eip !54
  store i64 %437, i64* %RAX_val, !mcsema_real_eip !54
  %438 = load i64, i64* %RBP_val, !mcsema_real_eip !55
  %439 = add i64 %438, -8, !mcsema_real_eip !55
  %440 = inttoptr i64 %439 to i64*, !mcsema_real_eip !55
  %441 = bitcast i64* %440 to i32*
  store i32 %423, i32* %441, !mcsema_real_eip !55
  br label %block_0x2c8, !mcsema_real_eip !56

block_0x85:                                       ; preds = %block_0x71
  %442 = add i64 %418, -12, !mcsema_real_eip !57
  %443 = inttoptr i64 %442 to i64*, !mcsema_real_eip !57
  %444 = bitcast i64* %443 to i32*
  %445 = load i32, i32* %444, !mcsema_real_eip !57
  %446 = add i32 %445, -13
  %447 = xor i32 %446, %445, !mcsema_real_eip !58
  %448 = and i32 %447, 16, !mcsema_real_eip !58
  %449 = icmp ne i32 %448, 0, !mcsema_real_eip !58
  store i1 %449, i1* %AF_val, !mcsema_real_eip !58
  %450 = trunc i32 %446 to i8, !mcsema_real_eip !58
  %451 = tail call i8 @llvm.ctpop.i8(i8 %450), !mcsema_real_eip !58
  %452 = and i8 %451, 1
  %453 = icmp eq i8 %452, 0
  store i1 %453, i1* %PF_val, !mcsema_real_eip !58
  %454 = icmp eq i32 %446, 0, !mcsema_real_eip !58
  store i1 %454, i1* %ZF_val, !mcsema_real_eip !58
  %455 = icmp slt i32 %446, 0
  store i1 %455, i1* %SF_val, !mcsema_real_eip !58
  %456 = icmp ult i32 %445, 13, !mcsema_real_eip !58
  store i1 %456, i1* %CF_val, !mcsema_real_eip !58
  %457 = and i32 %447, %445, !mcsema_real_eip !58
  %458 = icmp slt i32 %457, 0
  store i1 %458, i1* %OF_val, !mcsema_real_eip !58
  %459 = zext i32 %446 to i64, !mcsema_real_eip !58
  store i64 %459, i64* %RAX_val, !mcsema_real_eip !58
  %460 = load i64, i64* %RBP_val, !mcsema_real_eip !59
  %461 = add i64 %460, -36, !mcsema_real_eip !59
  %462 = inttoptr i64 %461 to i64*, !mcsema_real_eip !59
  %463 = bitcast i64* %462 to i32*
  store i32 %446, i32* %463, !mcsema_real_eip !59
  %464 = load i1, i1* %ZF_val, !mcsema_real_eip !60
  %465 = load i64, i64* %RBP_val, !mcsema_real_eip !61
  br i1 %464, label %block_0x1f3, label %block_0x99, !mcsema_real_eip !60

block_0x1f3:                                      ; preds = %block_0x85
  %466 = add i64 %465, -8, !mcsema_real_eip !61
  %467 = inttoptr i64 %466 to i64*, !mcsema_real_eip !61
  %468 = bitcast i64* %467 to i32*
  %469 = load i32, i32* %468, !mcsema_real_eip !61
  %uadd82 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %469, i32 13)
  %470 = extractvalue { i32, i1 } %uadd82, 0
  %471 = xor i32 %470, %469, !mcsema_real_eip !62
  %472 = and i32 %471, 16, !mcsema_real_eip !62
  %473 = icmp ne i32 %472, 0, !mcsema_real_eip !62
  store i1 %473, i1* %AF_val, !mcsema_real_eip !62
  %474 = icmp slt i32 %470, 0
  store i1 %474, i1* %SF_val, !mcsema_real_eip !62
  %475 = icmp eq i32 %470, 0, !mcsema_real_eip !62
  store i1 %475, i1* %ZF_val, !mcsema_real_eip !62
  %476 = xor i32 %469, -2147483648, !mcsema_real_eip !62
  %477 = and i32 %471, %476, !mcsema_real_eip !62
  %478 = icmp slt i32 %477, 0
  store i1 %478, i1* %OF_val, !mcsema_real_eip !62
  %479 = trunc i32 %470 to i8, !mcsema_real_eip !62
  %480 = tail call i8 @llvm.ctpop.i8(i8 %479), !mcsema_real_eip !62
  %481 = and i8 %480, 1
  %482 = icmp eq i8 %481, 0
  store i1 %482, i1* %PF_val, !mcsema_real_eip !62
  %483 = extractvalue { i32, i1 } %uadd82, 1
  store i1 %483, i1* %CF_val, !mcsema_real_eip !62
  %484 = zext i32 %470 to i64, !mcsema_real_eip !62
  store i64 %484, i64* %RAX_val, !mcsema_real_eip !62
  %485 = load i64, i64* %RBP_val, !mcsema_real_eip !63
  %486 = add i64 %485, -8, !mcsema_real_eip !63
  %487 = inttoptr i64 %486 to i64*, !mcsema_real_eip !63
  %488 = bitcast i64* %487 to i32*
  store i32 %470, i32* %488, !mcsema_real_eip !63
  br label %block_0x2c8, !mcsema_real_eip !64

block_0x99:                                       ; preds = %block_0x85
  %489 = add i64 %465, -12, !mcsema_real_eip !65
  %490 = inttoptr i64 %489 to i64*, !mcsema_real_eip !65
  %491 = bitcast i64* %490 to i32*
  %492 = load i32, i32* %491, !mcsema_real_eip !65
  %493 = add i32 %492, -19
  %494 = xor i32 %493, %492, !mcsema_real_eip !66
  %495 = and i32 %494, 16
  %496 = icmp eq i32 %495, 0
  store i1 %496, i1* %AF_val, !mcsema_real_eip !66
  %497 = trunc i32 %493 to i8, !mcsema_real_eip !66
  %498 = tail call i8 @llvm.ctpop.i8(i8 %497), !mcsema_real_eip !66
  %499 = and i8 %498, 1
  %500 = icmp eq i8 %499, 0
  store i1 %500, i1* %PF_val, !mcsema_real_eip !66
  %501 = icmp eq i32 %493, 0, !mcsema_real_eip !66
  store i1 %501, i1* %ZF_val, !mcsema_real_eip !66
  %502 = icmp slt i32 %493, 0
  store i1 %502, i1* %SF_val, !mcsema_real_eip !66
  %503 = icmp ult i32 %492, 19, !mcsema_real_eip !66
  store i1 %503, i1* %CF_val, !mcsema_real_eip !66
  %504 = and i32 %494, %492, !mcsema_real_eip !66
  %505 = icmp slt i32 %504, 0
  store i1 %505, i1* %OF_val, !mcsema_real_eip !66
  %506 = zext i32 %493 to i64, !mcsema_real_eip !66
  store i64 %506, i64* %RAX_val, !mcsema_real_eip !66
  %507 = load i64, i64* %RBP_val, !mcsema_real_eip !67
  %508 = add i64 %507, -40, !mcsema_real_eip !67
  %509 = inttoptr i64 %508 to i64*, !mcsema_real_eip !67
  %510 = bitcast i64* %509 to i32*
  store i32 %493, i32* %510, !mcsema_real_eip !67
  %511 = load i1, i1* %ZF_val, !mcsema_real_eip !68
  %512 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  br i1 %511, label %block_0x201, label %block_0xad, !mcsema_real_eip !68

block_0x201:                                      ; preds = %block_0x99
  %513 = add i64 %512, -8, !mcsema_real_eip !69
  %514 = inttoptr i64 %513 to i64*, !mcsema_real_eip !69
  %515 = bitcast i64* %514 to i32*
  %516 = load i32, i32* %515, !mcsema_real_eip !69
  %uadd81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %516, i32 19)
  %517 = extractvalue { i32, i1 } %uadd81, 0
  %518 = xor i32 %517, %516, !mcsema_real_eip !70
  %519 = and i32 %518, 16
  %520 = icmp eq i32 %519, 0
  store i1 %520, i1* %AF_val, !mcsema_real_eip !70
  %521 = icmp slt i32 %517, 0
  store i1 %521, i1* %SF_val, !mcsema_real_eip !70
  %522 = icmp eq i32 %517, 0, !mcsema_real_eip !70
  store i1 %522, i1* %ZF_val, !mcsema_real_eip !70
  %523 = xor i32 %516, -2147483648, !mcsema_real_eip !70
  %524 = and i32 %518, %523, !mcsema_real_eip !70
  %525 = icmp slt i32 %524, 0
  store i1 %525, i1* %OF_val, !mcsema_real_eip !70
  %526 = trunc i32 %517 to i8, !mcsema_real_eip !70
  %527 = tail call i8 @llvm.ctpop.i8(i8 %526), !mcsema_real_eip !70
  %528 = and i8 %527, 1
  %529 = icmp eq i8 %528, 0
  store i1 %529, i1* %PF_val, !mcsema_real_eip !70
  %530 = extractvalue { i32, i1 } %uadd81, 1
  store i1 %530, i1* %CF_val, !mcsema_real_eip !70
  %531 = zext i32 %517 to i64, !mcsema_real_eip !70
  store i64 %531, i64* %RAX_val, !mcsema_real_eip !70
  %532 = load i64, i64* %RBP_val, !mcsema_real_eip !71
  %533 = add i64 %532, -8, !mcsema_real_eip !71
  %534 = inttoptr i64 %533 to i64*, !mcsema_real_eip !71
  %535 = bitcast i64* %534 to i32*
  store i32 %517, i32* %535, !mcsema_real_eip !71
  br label %block_0x2c8, !mcsema_real_eip !72

block_0xad:                                       ; preds = %block_0x99
  %536 = add i64 %512, -12, !mcsema_real_eip !73
  %537 = inttoptr i64 %536 to i64*, !mcsema_real_eip !73
  %538 = bitcast i64* %537 to i32*
  %539 = load i32, i32* %538, !mcsema_real_eip !73
  %540 = add i32 %539, -255
  %541 = xor i32 %540, %539, !mcsema_real_eip !74
  %542 = and i32 %541, 16
  %543 = icmp eq i32 %542, 0
  store i1 %543, i1* %AF_val, !mcsema_real_eip !74
  %544 = trunc i32 %540 to i8, !mcsema_real_eip !74
  %545 = tail call i8 @llvm.ctpop.i8(i8 %544), !mcsema_real_eip !74
  %546 = and i8 %545, 1
  %547 = icmp eq i8 %546, 0
  store i1 %547, i1* %PF_val, !mcsema_real_eip !74
  %548 = icmp eq i32 %540, 0, !mcsema_real_eip !74
  store i1 %548, i1* %ZF_val, !mcsema_real_eip !74
  %549 = icmp slt i32 %540, 0
  store i1 %549, i1* %SF_val, !mcsema_real_eip !74
  %550 = icmp ult i32 %539, 255, !mcsema_real_eip !74
  store i1 %550, i1* %CF_val, !mcsema_real_eip !74
  %551 = and i32 %541, %539, !mcsema_real_eip !74
  %552 = icmp slt i32 %551, 0
  store i1 %552, i1* %OF_val, !mcsema_real_eip !74
  %553 = zext i32 %540 to i64, !mcsema_real_eip !74
  store i64 %553, i64* %RAX_val, !mcsema_real_eip !74
  %554 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %555 = add i64 %554, -44, !mcsema_real_eip !75
  %556 = inttoptr i64 %555 to i64*, !mcsema_real_eip !75
  %557 = bitcast i64* %556 to i32*
  store i32 %540, i32* %557, !mcsema_real_eip !75
  %558 = load i1, i1* %ZF_val, !mcsema_real_eip !76
  %559 = load i64, i64* %RBP_val, !mcsema_real_eip !77
  br i1 %558, label %block_0x20f, label %block_0xc3, !mcsema_real_eip !76

block_0x20f:                                      ; preds = %block_0xad
  %560 = add i64 %559, -8, !mcsema_real_eip !77
  %561 = inttoptr i64 %560 to i64*, !mcsema_real_eip !77
  %562 = bitcast i64* %561 to i32*
  %563 = load i32, i32* %562, !mcsema_real_eip !77
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %563, i32 255)
  %564 = extractvalue { i32, i1 } %uadd80, 0
  %565 = xor i32 %564, %563, !mcsema_real_eip !78
  %566 = and i32 %565, 16
  %567 = icmp eq i32 %566, 0
  store i1 %567, i1* %AF_val, !mcsema_real_eip !78
  %568 = icmp slt i32 %564, 0
  store i1 %568, i1* %SF_val, !mcsema_real_eip !78
  %569 = icmp eq i32 %564, 0, !mcsema_real_eip !78
  store i1 %569, i1* %ZF_val, !mcsema_real_eip !78
  %570 = xor i32 %563, -2147483648, !mcsema_real_eip !78
  %571 = and i32 %565, %570, !mcsema_real_eip !78
  %572 = icmp slt i32 %571, 0
  store i1 %572, i1* %OF_val, !mcsema_real_eip !78
  %573 = trunc i32 %564 to i8, !mcsema_real_eip !78
  %574 = tail call i8 @llvm.ctpop.i8(i8 %573), !mcsema_real_eip !78
  %575 = and i8 %574, 1
  %576 = icmp eq i8 %575, 0
  store i1 %576, i1* %PF_val, !mcsema_real_eip !78
  %577 = extractvalue { i32, i1 } %uadd80, 1
  store i1 %577, i1* %CF_val, !mcsema_real_eip !78
  %578 = zext i32 %564 to i64, !mcsema_real_eip !78
  store i64 %578, i64* %RAX_val, !mcsema_real_eip !78
  %579 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %580 = add i64 %579, -8, !mcsema_real_eip !79
  %581 = inttoptr i64 %580 to i64*, !mcsema_real_eip !79
  %582 = bitcast i64* %581 to i32*
  store i32 %564, i32* %582, !mcsema_real_eip !79
  br label %block_0x2c8, !mcsema_real_eip !80

block_0xc3:                                       ; preds = %block_0xad
  %583 = add i64 %559, -12, !mcsema_real_eip !81
  %584 = inttoptr i64 %583 to i64*, !mcsema_real_eip !81
  %585 = bitcast i64* %584 to i32*
  %586 = load i32, i32* %585, !mcsema_real_eip !81
  %587 = add i32 %586, -74633
  %588 = xor i32 %587, %586, !mcsema_real_eip !82
  %589 = and i32 %588, 16, !mcsema_real_eip !82
  %590 = icmp ne i32 %589, 0, !mcsema_real_eip !82
  store i1 %590, i1* %AF_val, !mcsema_real_eip !82
  %591 = trunc i32 %587 to i8, !mcsema_real_eip !82
  %592 = tail call i8 @llvm.ctpop.i8(i8 %591), !mcsema_real_eip !82
  %593 = and i8 %592, 1
  %594 = icmp eq i8 %593, 0
  store i1 %594, i1* %PF_val, !mcsema_real_eip !82
  %595 = icmp eq i32 %587, 0, !mcsema_real_eip !82
  store i1 %595, i1* %ZF_val, !mcsema_real_eip !82
  %596 = icmp slt i32 %587, 0
  store i1 %596, i1* %SF_val, !mcsema_real_eip !82
  %597 = icmp ult i32 %586, 74633, !mcsema_real_eip !82
  store i1 %597, i1* %CF_val, !mcsema_real_eip !82
  %598 = and i32 %588, %586, !mcsema_real_eip !82
  %599 = icmp slt i32 %598, 0
  store i1 %599, i1* %OF_val, !mcsema_real_eip !82
  %600 = zext i32 %587 to i64, !mcsema_real_eip !82
  store i64 %600, i64* %RAX_val, !mcsema_real_eip !82
  %601 = load i64, i64* %RBP_val, !mcsema_real_eip !83
  %602 = add i64 %601, -48, !mcsema_real_eip !83
  %603 = inttoptr i64 %602 to i64*, !mcsema_real_eip !83
  %604 = bitcast i64* %603 to i32*
  store i32 %587, i32* %604, !mcsema_real_eip !83
  %605 = load i1, i1* %ZF_val, !mcsema_real_eip !84
  %606 = load i64, i64* %RBP_val, !mcsema_real_eip !85
  br i1 %605, label %block_0x21f, label %block_0xd9, !mcsema_real_eip !84

block_0x21f:                                      ; preds = %block_0xc3
  %607 = add i64 %606, -8, !mcsema_real_eip !85
  %608 = inttoptr i64 %607 to i64*, !mcsema_real_eip !85
  %609 = bitcast i64* %608 to i32*
  %610 = load i32, i32* %609, !mcsema_real_eip !85
  %uadd79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %610, i32 74633)
  %611 = extractvalue { i32, i1 } %uadd79, 0
  %612 = xor i32 %611, %610, !mcsema_real_eip !86
  %613 = and i32 %612, 16, !mcsema_real_eip !86
  %614 = icmp ne i32 %613, 0, !mcsema_real_eip !86
  store i1 %614, i1* %AF_val, !mcsema_real_eip !86
  %615 = icmp slt i32 %611, 0
  store i1 %615, i1* %SF_val, !mcsema_real_eip !86
  %616 = icmp eq i32 %611, 0, !mcsema_real_eip !86
  store i1 %616, i1* %ZF_val, !mcsema_real_eip !86
  %617 = xor i32 %610, -2147483648, !mcsema_real_eip !86
  %618 = and i32 %612, %617, !mcsema_real_eip !86
  %619 = icmp slt i32 %618, 0
  store i1 %619, i1* %OF_val, !mcsema_real_eip !86
  %620 = trunc i32 %611 to i8, !mcsema_real_eip !86
  %621 = tail call i8 @llvm.ctpop.i8(i8 %620), !mcsema_real_eip !86
  %622 = and i8 %621, 1
  %623 = icmp eq i8 %622, 0
  store i1 %623, i1* %PF_val, !mcsema_real_eip !86
  %624 = extractvalue { i32, i1 } %uadd79, 1
  store i1 %624, i1* %CF_val, !mcsema_real_eip !86
  %625 = zext i32 %611 to i64, !mcsema_real_eip !86
  store i64 %625, i64* %RAX_val, !mcsema_real_eip !86
  %626 = load i64, i64* %RBP_val, !mcsema_real_eip !87
  %627 = add i64 %626, -8, !mcsema_real_eip !87
  %628 = inttoptr i64 %627 to i64*, !mcsema_real_eip !87
  %629 = bitcast i64* %628 to i32*
  store i32 %611, i32* %629, !mcsema_real_eip !87
  br label %block_0x2c8, !mcsema_real_eip !88

block_0xd9:                                       ; preds = %block_0xc3
  %630 = add i64 %606, -12, !mcsema_real_eip !89
  %631 = inttoptr i64 %630 to i64*, !mcsema_real_eip !89
  %632 = bitcast i64* %631 to i32*
  %633 = load i32, i32* %632, !mcsema_real_eip !89
  %634 = add i32 %633, -74634
  %635 = xor i32 %634, %633, !mcsema_real_eip !90
  %636 = and i32 %635, 16, !mcsema_real_eip !90
  %637 = icmp ne i32 %636, 0, !mcsema_real_eip !90
  store i1 %637, i1* %AF_val, !mcsema_real_eip !90
  %638 = trunc i32 %634 to i8, !mcsema_real_eip !90
  %639 = tail call i8 @llvm.ctpop.i8(i8 %638), !mcsema_real_eip !90
  %640 = and i8 %639, 1
  %641 = icmp eq i8 %640, 0
  store i1 %641, i1* %PF_val, !mcsema_real_eip !90
  %642 = icmp eq i32 %634, 0, !mcsema_real_eip !90
  store i1 %642, i1* %ZF_val, !mcsema_real_eip !90
  %643 = icmp slt i32 %634, 0
  store i1 %643, i1* %SF_val, !mcsema_real_eip !90
  %644 = icmp ult i32 %633, 74634, !mcsema_real_eip !90
  store i1 %644, i1* %CF_val, !mcsema_real_eip !90
  %645 = and i32 %635, %633, !mcsema_real_eip !90
  %646 = icmp slt i32 %645, 0
  store i1 %646, i1* %OF_val, !mcsema_real_eip !90
  %647 = zext i32 %634 to i64, !mcsema_real_eip !90
  store i64 %647, i64* %RAX_val, !mcsema_real_eip !90
  %648 = load i64, i64* %RBP_val, !mcsema_real_eip !91
  %649 = add i64 %648, -52, !mcsema_real_eip !91
  %650 = inttoptr i64 %649 to i64*, !mcsema_real_eip !91
  %651 = bitcast i64* %650 to i32*
  store i32 %634, i32* %651, !mcsema_real_eip !91
  %652 = load i1, i1* %ZF_val, !mcsema_real_eip !92
  %653 = load i64, i64* %RBP_val, !mcsema_real_eip !93
  br i1 %652, label %block_0x22f, label %block_0xef, !mcsema_real_eip !92

block_0x22f:                                      ; preds = %block_0xd9
  %654 = add i64 %653, -8, !mcsema_real_eip !93
  %655 = inttoptr i64 %654 to i64*, !mcsema_real_eip !93
  %656 = bitcast i64* %655 to i32*
  %657 = load i32, i32* %656, !mcsema_real_eip !93
  %uadd78 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %657, i32 74634)
  %658 = extractvalue { i32, i1 } %uadd78, 0
  %659 = xor i32 %658, %657, !mcsema_real_eip !94
  %660 = and i32 %659, 16, !mcsema_real_eip !94
  %661 = icmp ne i32 %660, 0, !mcsema_real_eip !94
  store i1 %661, i1* %AF_val, !mcsema_real_eip !94
  %662 = icmp slt i32 %658, 0
  store i1 %662, i1* %SF_val, !mcsema_real_eip !94
  %663 = icmp eq i32 %658, 0, !mcsema_real_eip !94
  store i1 %663, i1* %ZF_val, !mcsema_real_eip !94
  %664 = xor i32 %657, -2147483648, !mcsema_real_eip !94
  %665 = and i32 %659, %664, !mcsema_real_eip !94
  %666 = icmp slt i32 %665, 0
  store i1 %666, i1* %OF_val, !mcsema_real_eip !94
  %667 = trunc i32 %658 to i8, !mcsema_real_eip !94
  %668 = tail call i8 @llvm.ctpop.i8(i8 %667), !mcsema_real_eip !94
  %669 = and i8 %668, 1
  %670 = icmp eq i8 %669, 0
  store i1 %670, i1* %PF_val, !mcsema_real_eip !94
  %671 = extractvalue { i32, i1 } %uadd78, 1
  store i1 %671, i1* %CF_val, !mcsema_real_eip !94
  %672 = zext i32 %658 to i64, !mcsema_real_eip !94
  store i64 %672, i64* %RAX_val, !mcsema_real_eip !94
  %673 = load i64, i64* %RBP_val, !mcsema_real_eip !95
  %674 = add i64 %673, -8, !mcsema_real_eip !95
  %675 = inttoptr i64 %674 to i64*, !mcsema_real_eip !95
  %676 = bitcast i64* %675 to i32*
  store i32 %658, i32* %676, !mcsema_real_eip !95
  br label %block_0x2c8, !mcsema_real_eip !96

block_0xef:                                       ; preds = %block_0xd9
  %677 = add i64 %653, -12, !mcsema_real_eip !97
  %678 = inttoptr i64 %677 to i64*, !mcsema_real_eip !97
  %679 = bitcast i64* %678 to i32*
  %680 = load i32, i32* %679, !mcsema_real_eip !97
  %681 = add i32 %680, -74635
  %682 = xor i32 %681, %680, !mcsema_real_eip !98
  %683 = and i32 %682, 16, !mcsema_real_eip !98
  %684 = icmp ne i32 %683, 0, !mcsema_real_eip !98
  store i1 %684, i1* %AF_val, !mcsema_real_eip !98
  %685 = trunc i32 %681 to i8, !mcsema_real_eip !98
  %686 = tail call i8 @llvm.ctpop.i8(i8 %685), !mcsema_real_eip !98
  %687 = and i8 %686, 1
  %688 = icmp eq i8 %687, 0
  store i1 %688, i1* %PF_val, !mcsema_real_eip !98
  %689 = icmp eq i32 %681, 0, !mcsema_real_eip !98
  store i1 %689, i1* %ZF_val, !mcsema_real_eip !98
  %690 = icmp slt i32 %681, 0
  store i1 %690, i1* %SF_val, !mcsema_real_eip !98
  %691 = icmp ult i32 %680, 74635, !mcsema_real_eip !98
  store i1 %691, i1* %CF_val, !mcsema_real_eip !98
  %692 = and i32 %682, %680, !mcsema_real_eip !98
  %693 = icmp slt i32 %692, 0
  store i1 %693, i1* %OF_val, !mcsema_real_eip !98
  %694 = zext i32 %681 to i64, !mcsema_real_eip !98
  store i64 %694, i64* %RAX_val, !mcsema_real_eip !98
  %695 = load i64, i64* %RBP_val, !mcsema_real_eip !99
  %696 = add i64 %695, -56, !mcsema_real_eip !99
  %697 = inttoptr i64 %696 to i64*, !mcsema_real_eip !99
  %698 = bitcast i64* %697 to i32*
  store i32 %681, i32* %698, !mcsema_real_eip !99
  %699 = load i1, i1* %ZF_val, !mcsema_real_eip !100
  %700 = load i64, i64* %RBP_val, !mcsema_real_eip !101
  br i1 %699, label %block_0x23f, label %block_0x105, !mcsema_real_eip !100

block_0x23f:                                      ; preds = %block_0xef
  %701 = add i64 %700, -8, !mcsema_real_eip !101
  %702 = inttoptr i64 %701 to i64*, !mcsema_real_eip !101
  %703 = bitcast i64* %702 to i32*
  %704 = load i32, i32* %703, !mcsema_real_eip !101
  %uadd77 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %704, i32 74635)
  %705 = extractvalue { i32, i1 } %uadd77, 0
  %706 = xor i32 %705, %704, !mcsema_real_eip !102
  %707 = and i32 %706, 16, !mcsema_real_eip !102
  %708 = icmp ne i32 %707, 0, !mcsema_real_eip !102
  store i1 %708, i1* %AF_val, !mcsema_real_eip !102
  %709 = icmp slt i32 %705, 0
  store i1 %709, i1* %SF_val, !mcsema_real_eip !102
  %710 = icmp eq i32 %705, 0, !mcsema_real_eip !102
  store i1 %710, i1* %ZF_val, !mcsema_real_eip !102
  %711 = xor i32 %704, -2147483648, !mcsema_real_eip !102
  %712 = and i32 %706, %711, !mcsema_real_eip !102
  %713 = icmp slt i32 %712, 0
  store i1 %713, i1* %OF_val, !mcsema_real_eip !102
  %714 = trunc i32 %705 to i8, !mcsema_real_eip !102
  %715 = tail call i8 @llvm.ctpop.i8(i8 %714), !mcsema_real_eip !102
  %716 = and i8 %715, 1
  %717 = icmp eq i8 %716, 0
  store i1 %717, i1* %PF_val, !mcsema_real_eip !102
  %718 = extractvalue { i32, i1 } %uadd77, 1
  store i1 %718, i1* %CF_val, !mcsema_real_eip !102
  %719 = zext i32 %705 to i64, !mcsema_real_eip !102
  store i64 %719, i64* %RAX_val, !mcsema_real_eip !102
  %720 = load i64, i64* %RBP_val, !mcsema_real_eip !103
  %721 = add i64 %720, -8, !mcsema_real_eip !103
  %722 = inttoptr i64 %721 to i64*, !mcsema_real_eip !103
  %723 = bitcast i64* %722 to i32*
  store i32 %705, i32* %723, !mcsema_real_eip !103
  br label %block_0x2c8, !mcsema_real_eip !104

block_0x105:                                      ; preds = %block_0xef
  %724 = add i64 %700, -12, !mcsema_real_eip !105
  %725 = inttoptr i64 %724 to i64*, !mcsema_real_eip !105
  %726 = bitcast i64* %725 to i32*
  %727 = load i32, i32* %726, !mcsema_real_eip !105
  %728 = add i32 %727, -74636
  %729 = xor i32 %728, %727, !mcsema_real_eip !106
  %730 = and i32 %729, 16, !mcsema_real_eip !106
  %731 = icmp ne i32 %730, 0, !mcsema_real_eip !106
  store i1 %731, i1* %AF_val, !mcsema_real_eip !106
  %732 = trunc i32 %728 to i8, !mcsema_real_eip !106
  %733 = tail call i8 @llvm.ctpop.i8(i8 %732), !mcsema_real_eip !106
  %734 = and i8 %733, 1
  %735 = icmp eq i8 %734, 0
  store i1 %735, i1* %PF_val, !mcsema_real_eip !106
  %736 = icmp eq i32 %728, 0, !mcsema_real_eip !106
  store i1 %736, i1* %ZF_val, !mcsema_real_eip !106
  %737 = icmp slt i32 %728, 0
  store i1 %737, i1* %SF_val, !mcsema_real_eip !106
  %738 = icmp ult i32 %727, 74636, !mcsema_real_eip !106
  store i1 %738, i1* %CF_val, !mcsema_real_eip !106
  %739 = and i32 %729, %727, !mcsema_real_eip !106
  %740 = icmp slt i32 %739, 0
  store i1 %740, i1* %OF_val, !mcsema_real_eip !106
  %741 = zext i32 %728 to i64, !mcsema_real_eip !106
  store i64 %741, i64* %RAX_val, !mcsema_real_eip !106
  %742 = load i64, i64* %RBP_val, !mcsema_real_eip !107
  %743 = add i64 %742, -60, !mcsema_real_eip !107
  %744 = inttoptr i64 %743 to i64*, !mcsema_real_eip !107
  %745 = bitcast i64* %744 to i32*
  store i32 %728, i32* %745, !mcsema_real_eip !107
  %746 = load i1, i1* %ZF_val, !mcsema_real_eip !108
  %747 = load i64, i64* %RBP_val, !mcsema_real_eip !109
  br i1 %746, label %block_0x24f, label %block_0x11b, !mcsema_real_eip !108

block_0x24f:                                      ; preds = %block_0x105
  %748 = add i64 %747, -8, !mcsema_real_eip !109
  %749 = inttoptr i64 %748 to i64*, !mcsema_real_eip !109
  %750 = bitcast i64* %749 to i32*
  %751 = load i32, i32* %750, !mcsema_real_eip !109
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %751, i32 74636)
  %752 = extractvalue { i32, i1 } %uadd76, 0
  %753 = xor i32 %752, %751, !mcsema_real_eip !110
  %754 = and i32 %753, 16, !mcsema_real_eip !110
  %755 = icmp ne i32 %754, 0, !mcsema_real_eip !110
  store i1 %755, i1* %AF_val, !mcsema_real_eip !110
  %756 = icmp slt i32 %752, 0
  store i1 %756, i1* %SF_val, !mcsema_real_eip !110
  %757 = icmp eq i32 %752, 0, !mcsema_real_eip !110
  store i1 %757, i1* %ZF_val, !mcsema_real_eip !110
  %758 = xor i32 %751, -2147483648, !mcsema_real_eip !110
  %759 = and i32 %753, %758, !mcsema_real_eip !110
  %760 = icmp slt i32 %759, 0
  store i1 %760, i1* %OF_val, !mcsema_real_eip !110
  %761 = trunc i32 %752 to i8, !mcsema_real_eip !110
  %762 = tail call i8 @llvm.ctpop.i8(i8 %761), !mcsema_real_eip !110
  %763 = and i8 %762, 1
  %764 = icmp eq i8 %763, 0
  store i1 %764, i1* %PF_val, !mcsema_real_eip !110
  %765 = extractvalue { i32, i1 } %uadd76, 1
  store i1 %765, i1* %CF_val, !mcsema_real_eip !110
  %766 = zext i32 %752 to i64, !mcsema_real_eip !110
  store i64 %766, i64* %RAX_val, !mcsema_real_eip !110
  %767 = load i64, i64* %RBP_val, !mcsema_real_eip !111
  %768 = add i64 %767, -8, !mcsema_real_eip !111
  %769 = inttoptr i64 %768 to i64*, !mcsema_real_eip !111
  %770 = bitcast i64* %769 to i32*
  store i32 %752, i32* %770, !mcsema_real_eip !111
  br label %block_0x2c8, !mcsema_real_eip !112

block_0x11b:                                      ; preds = %block_0x105
  %771 = add i64 %747, -12, !mcsema_real_eip !113
  %772 = inttoptr i64 %771 to i64*, !mcsema_real_eip !113
  %773 = bitcast i64* %772 to i32*
  %774 = load i32, i32* %773, !mcsema_real_eip !113
  %775 = add i32 %774, -74637
  %776 = xor i32 %775, %774, !mcsema_real_eip !114
  %777 = and i32 %776, 16, !mcsema_real_eip !114
  %778 = icmp ne i32 %777, 0, !mcsema_real_eip !114
  store i1 %778, i1* %AF_val, !mcsema_real_eip !114
  %779 = trunc i32 %775 to i8, !mcsema_real_eip !114
  %780 = tail call i8 @llvm.ctpop.i8(i8 %779), !mcsema_real_eip !114
  %781 = and i8 %780, 1
  %782 = icmp eq i8 %781, 0
  store i1 %782, i1* %PF_val, !mcsema_real_eip !114
  %783 = icmp eq i32 %775, 0, !mcsema_real_eip !114
  store i1 %783, i1* %ZF_val, !mcsema_real_eip !114
  %784 = icmp slt i32 %775, 0
  store i1 %784, i1* %SF_val, !mcsema_real_eip !114
  %785 = icmp ult i32 %774, 74637, !mcsema_real_eip !114
  store i1 %785, i1* %CF_val, !mcsema_real_eip !114
  %786 = and i32 %776, %774, !mcsema_real_eip !114
  %787 = icmp slt i32 %786, 0
  store i1 %787, i1* %OF_val, !mcsema_real_eip !114
  %788 = zext i32 %775 to i64, !mcsema_real_eip !114
  store i64 %788, i64* %RAX_val, !mcsema_real_eip !114
  %789 = load i64, i64* %RBP_val, !mcsema_real_eip !115
  %790 = add i64 %789, -64, !mcsema_real_eip !115
  %791 = inttoptr i64 %790 to i64*, !mcsema_real_eip !115
  %792 = bitcast i64* %791 to i32*
  store i32 %775, i32* %792, !mcsema_real_eip !115
  %793 = load i1, i1* %ZF_val, !mcsema_real_eip !116
  %794 = load i64, i64* %RBP_val, !mcsema_real_eip !117
  br i1 %793, label %block_0x25f, label %block_0x131, !mcsema_real_eip !116

block_0x25f:                                      ; preds = %block_0x11b
  %795 = add i64 %794, -8, !mcsema_real_eip !117
  %796 = inttoptr i64 %795 to i64*, !mcsema_real_eip !117
  %797 = bitcast i64* %796 to i32*
  %798 = load i32, i32* %797, !mcsema_real_eip !117
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %798, i32 74637)
  %799 = extractvalue { i32, i1 } %uadd75, 0
  %800 = xor i32 %799, %798, !mcsema_real_eip !118
  %801 = and i32 %800, 16, !mcsema_real_eip !118
  %802 = icmp ne i32 %801, 0, !mcsema_real_eip !118
  store i1 %802, i1* %AF_val, !mcsema_real_eip !118
  %803 = icmp slt i32 %799, 0
  store i1 %803, i1* %SF_val, !mcsema_real_eip !118
  %804 = icmp eq i32 %799, 0, !mcsema_real_eip !118
  store i1 %804, i1* %ZF_val, !mcsema_real_eip !118
  %805 = xor i32 %798, -2147483648, !mcsema_real_eip !118
  %806 = and i32 %800, %805, !mcsema_real_eip !118
  %807 = icmp slt i32 %806, 0
  store i1 %807, i1* %OF_val, !mcsema_real_eip !118
  %808 = trunc i32 %799 to i8, !mcsema_real_eip !118
  %809 = tail call i8 @llvm.ctpop.i8(i8 %808), !mcsema_real_eip !118
  %810 = and i8 %809, 1
  %811 = icmp eq i8 %810, 0
  store i1 %811, i1* %PF_val, !mcsema_real_eip !118
  %812 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %812, i1* %CF_val, !mcsema_real_eip !118
  %813 = zext i32 %799 to i64, !mcsema_real_eip !118
  store i64 %813, i64* %RAX_val, !mcsema_real_eip !118
  %814 = load i64, i64* %RBP_val, !mcsema_real_eip !119
  %815 = add i64 %814, -8, !mcsema_real_eip !119
  %816 = inttoptr i64 %815 to i64*, !mcsema_real_eip !119
  %817 = bitcast i64* %816 to i32*
  store i32 %799, i32* %817, !mcsema_real_eip !119
  br label %block_0x2c8, !mcsema_real_eip !120

block_0x131:                                      ; preds = %block_0x11b
  %818 = add i64 %794, -12, !mcsema_real_eip !121
  %819 = inttoptr i64 %818 to i64*, !mcsema_real_eip !121
  %820 = bitcast i64* %819 to i32*
  %821 = load i32, i32* %820, !mcsema_real_eip !121
  %822 = add i32 %821, -74639
  %823 = xor i32 %822, %821, !mcsema_real_eip !122
  %824 = and i32 %823, 16, !mcsema_real_eip !122
  %825 = icmp ne i32 %824, 0, !mcsema_real_eip !122
  store i1 %825, i1* %AF_val, !mcsema_real_eip !122
  %826 = trunc i32 %822 to i8, !mcsema_real_eip !122
  %827 = tail call i8 @llvm.ctpop.i8(i8 %826), !mcsema_real_eip !122
  %828 = and i8 %827, 1
  %829 = icmp eq i8 %828, 0
  store i1 %829, i1* %PF_val, !mcsema_real_eip !122
  %830 = icmp eq i32 %822, 0, !mcsema_real_eip !122
  store i1 %830, i1* %ZF_val, !mcsema_real_eip !122
  %831 = icmp slt i32 %822, 0
  store i1 %831, i1* %SF_val, !mcsema_real_eip !122
  %832 = icmp ult i32 %821, 74639, !mcsema_real_eip !122
  store i1 %832, i1* %CF_val, !mcsema_real_eip !122
  %833 = and i32 %823, %821, !mcsema_real_eip !122
  %834 = icmp slt i32 %833, 0
  store i1 %834, i1* %OF_val, !mcsema_real_eip !122
  %835 = zext i32 %822 to i64, !mcsema_real_eip !122
  store i64 %835, i64* %RAX_val, !mcsema_real_eip !122
  %836 = load i64, i64* %RBP_val, !mcsema_real_eip !123
  %837 = add i64 %836, -68, !mcsema_real_eip !123
  %838 = inttoptr i64 %837 to i64*, !mcsema_real_eip !123
  %839 = bitcast i64* %838 to i32*
  store i32 %822, i32* %839, !mcsema_real_eip !123
  %840 = load i1, i1* %ZF_val, !mcsema_real_eip !124
  %841 = load i64, i64* %RBP_val, !mcsema_real_eip !125
  br i1 %840, label %block_0x26f, label %block_0x147, !mcsema_real_eip !124

block_0x26f:                                      ; preds = %block_0x131
  %842 = add i64 %841, -8, !mcsema_real_eip !125
  %843 = inttoptr i64 %842 to i64*, !mcsema_real_eip !125
  %844 = bitcast i64* %843 to i32*
  %845 = load i32, i32* %844, !mcsema_real_eip !125
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %845, i32 74639)
  %846 = extractvalue { i32, i1 } %uadd74, 0
  %847 = xor i32 %846, %845, !mcsema_real_eip !126
  %848 = and i32 %847, 16, !mcsema_real_eip !126
  %849 = icmp ne i32 %848, 0, !mcsema_real_eip !126
  store i1 %849, i1* %AF_val, !mcsema_real_eip !126
  %850 = icmp slt i32 %846, 0
  store i1 %850, i1* %SF_val, !mcsema_real_eip !126
  %851 = icmp eq i32 %846, 0, !mcsema_real_eip !126
  store i1 %851, i1* %ZF_val, !mcsema_real_eip !126
  %852 = xor i32 %845, -2147483648, !mcsema_real_eip !126
  %853 = and i32 %847, %852, !mcsema_real_eip !126
  %854 = icmp slt i32 %853, 0
  store i1 %854, i1* %OF_val, !mcsema_real_eip !126
  %855 = trunc i32 %846 to i8, !mcsema_real_eip !126
  %856 = tail call i8 @llvm.ctpop.i8(i8 %855), !mcsema_real_eip !126
  %857 = and i8 %856, 1
  %858 = icmp eq i8 %857, 0
  store i1 %858, i1* %PF_val, !mcsema_real_eip !126
  %859 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %859, i1* %CF_val, !mcsema_real_eip !126
  %860 = zext i32 %846 to i64, !mcsema_real_eip !126
  store i64 %860, i64* %RAX_val, !mcsema_real_eip !126
  %861 = load i64, i64* %RBP_val, !mcsema_real_eip !127
  %862 = add i64 %861, -8, !mcsema_real_eip !127
  %863 = inttoptr i64 %862 to i64*, !mcsema_real_eip !127
  %864 = bitcast i64* %863 to i32*
  store i32 %846, i32* %864, !mcsema_real_eip !127
  br label %block_0x2c8, !mcsema_real_eip !128

block_0x147:                                      ; preds = %block_0x131
  %865 = add i64 %841, -12, !mcsema_real_eip !129
  %866 = inttoptr i64 %865 to i64*, !mcsema_real_eip !129
  %867 = bitcast i64* %866 to i32*
  %868 = load i32, i32* %867, !mcsema_real_eip !129
  %869 = add i32 %868, -74640
  %870 = xor i32 %869, %868, !mcsema_real_eip !130
  %871 = and i32 %870, 16
  %872 = icmp eq i32 %871, 0
  store i1 %872, i1* %AF_val, !mcsema_real_eip !130
  %873 = trunc i32 %869 to i8, !mcsema_real_eip !130
  %874 = tail call i8 @llvm.ctpop.i8(i8 %873), !mcsema_real_eip !130
  %875 = and i8 %874, 1
  %876 = icmp eq i8 %875, 0
  store i1 %876, i1* %PF_val, !mcsema_real_eip !130
  %877 = icmp eq i32 %869, 0, !mcsema_real_eip !130
  store i1 %877, i1* %ZF_val, !mcsema_real_eip !130
  %878 = icmp slt i32 %869, 0
  store i1 %878, i1* %SF_val, !mcsema_real_eip !130
  %879 = icmp ult i32 %868, 74640, !mcsema_real_eip !130
  store i1 %879, i1* %CF_val, !mcsema_real_eip !130
  %880 = and i32 %870, %868, !mcsema_real_eip !130
  %881 = icmp slt i32 %880, 0
  store i1 %881, i1* %OF_val, !mcsema_real_eip !130
  %882 = zext i32 %869 to i64, !mcsema_real_eip !130
  store i64 %882, i64* %RAX_val, !mcsema_real_eip !130
  %883 = load i64, i64* %RBP_val, !mcsema_real_eip !131
  %884 = add i64 %883, -72, !mcsema_real_eip !131
  %885 = inttoptr i64 %884 to i64*, !mcsema_real_eip !131
  %886 = bitcast i64* %885 to i32*
  store i32 %869, i32* %886, !mcsema_real_eip !131
  %887 = load i1, i1* %ZF_val, !mcsema_real_eip !132
  %888 = load i64, i64* %RBP_val, !mcsema_real_eip !133
  br i1 %887, label %block_0x27f, label %block_0x15d, !mcsema_real_eip !132

block_0x27f:                                      ; preds = %block_0x147
  %889 = add i64 %888, -8, !mcsema_real_eip !133
  %890 = inttoptr i64 %889 to i64*, !mcsema_real_eip !133
  %891 = bitcast i64* %890 to i32*
  %892 = load i32, i32* %891, !mcsema_real_eip !133
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %892, i32 74640)
  %893 = extractvalue { i32, i1 } %uadd73, 0
  %894 = xor i32 %893, %892, !mcsema_real_eip !134
  %895 = and i32 %894, 16
  %896 = icmp eq i32 %895, 0
  store i1 %896, i1* %AF_val, !mcsema_real_eip !134
  %897 = icmp slt i32 %893, 0
  store i1 %897, i1* %SF_val, !mcsema_real_eip !134
  %898 = icmp eq i32 %893, 0, !mcsema_real_eip !134
  store i1 %898, i1* %ZF_val, !mcsema_real_eip !134
  %899 = xor i32 %892, -2147483648, !mcsema_real_eip !134
  %900 = and i32 %894, %899, !mcsema_real_eip !134
  %901 = icmp slt i32 %900, 0
  store i1 %901, i1* %OF_val, !mcsema_real_eip !134
  %902 = trunc i32 %893 to i8, !mcsema_real_eip !134
  %903 = tail call i8 @llvm.ctpop.i8(i8 %902), !mcsema_real_eip !134
  %904 = and i8 %903, 1
  %905 = icmp eq i8 %904, 0
  store i1 %905, i1* %PF_val, !mcsema_real_eip !134
  %906 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %906, i1* %CF_val, !mcsema_real_eip !134
  %907 = zext i32 %893 to i64, !mcsema_real_eip !134
  store i64 %907, i64* %RAX_val, !mcsema_real_eip !134
  %908 = load i64, i64* %RBP_val, !mcsema_real_eip !135
  %909 = add i64 %908, -8, !mcsema_real_eip !135
  %910 = inttoptr i64 %909 to i64*, !mcsema_real_eip !135
  %911 = bitcast i64* %910 to i32*
  store i32 %893, i32* %911, !mcsema_real_eip !135
  br label %block_0x2c8, !mcsema_real_eip !136

block_0x15d:                                      ; preds = %block_0x147
  %912 = add i64 %888, -12, !mcsema_real_eip !137
  %913 = inttoptr i64 %912 to i64*, !mcsema_real_eip !137
  %914 = bitcast i64* %913 to i32*
  %915 = load i32, i32* %914, !mcsema_real_eip !137
  %916 = add i32 %915, -74641
  %917 = xor i32 %916, %915, !mcsema_real_eip !138
  %918 = and i32 %917, 16
  %919 = icmp eq i32 %918, 0
  store i1 %919, i1* %AF_val, !mcsema_real_eip !138
  %920 = trunc i32 %916 to i8, !mcsema_real_eip !138
  %921 = tail call i8 @llvm.ctpop.i8(i8 %920), !mcsema_real_eip !138
  %922 = and i8 %921, 1
  %923 = icmp eq i8 %922, 0
  store i1 %923, i1* %PF_val, !mcsema_real_eip !138
  %924 = icmp eq i32 %916, 0, !mcsema_real_eip !138
  store i1 %924, i1* %ZF_val, !mcsema_real_eip !138
  %925 = icmp slt i32 %916, 0
  store i1 %925, i1* %SF_val, !mcsema_real_eip !138
  %926 = icmp ult i32 %915, 74641, !mcsema_real_eip !138
  store i1 %926, i1* %CF_val, !mcsema_real_eip !138
  %927 = and i32 %917, %915, !mcsema_real_eip !138
  %928 = icmp slt i32 %927, 0
  store i1 %928, i1* %OF_val, !mcsema_real_eip !138
  %929 = zext i32 %916 to i64, !mcsema_real_eip !138
  store i64 %929, i64* %RAX_val, !mcsema_real_eip !138
  %930 = load i64, i64* %RBP_val, !mcsema_real_eip !139
  %931 = add i64 %930, -76, !mcsema_real_eip !139
  %932 = inttoptr i64 %931 to i64*, !mcsema_real_eip !139
  %933 = bitcast i64* %932 to i32*
  store i32 %916, i32* %933, !mcsema_real_eip !139
  %934 = load i1, i1* %ZF_val, !mcsema_real_eip !140
  %935 = load i64, i64* %RBP_val, !mcsema_real_eip !141
  br i1 %934, label %block_0x28f, label %block_0x173, !mcsema_real_eip !140

block_0x28f:                                      ; preds = %block_0x15d
  %936 = add i64 %935, -8, !mcsema_real_eip !141
  %937 = inttoptr i64 %936 to i64*, !mcsema_real_eip !141
  %938 = bitcast i64* %937 to i32*
  %939 = load i32, i32* %938, !mcsema_real_eip !141
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %939, i32 74641)
  %940 = extractvalue { i32, i1 } %uadd72, 0
  %941 = xor i32 %940, %939, !mcsema_real_eip !142
  %942 = and i32 %941, 16
  %943 = icmp eq i32 %942, 0
  store i1 %943, i1* %AF_val, !mcsema_real_eip !142
  %944 = icmp slt i32 %940, 0
  store i1 %944, i1* %SF_val, !mcsema_real_eip !142
  %945 = icmp eq i32 %940, 0, !mcsema_real_eip !142
  store i1 %945, i1* %ZF_val, !mcsema_real_eip !142
  %946 = xor i32 %939, -2147483648, !mcsema_real_eip !142
  %947 = and i32 %941, %946, !mcsema_real_eip !142
  %948 = icmp slt i32 %947, 0
  store i1 %948, i1* %OF_val, !mcsema_real_eip !142
  %949 = trunc i32 %940 to i8, !mcsema_real_eip !142
  %950 = tail call i8 @llvm.ctpop.i8(i8 %949), !mcsema_real_eip !142
  %951 = and i8 %950, 1
  %952 = icmp eq i8 %951, 0
  store i1 %952, i1* %PF_val, !mcsema_real_eip !142
  %953 = extractvalue { i32, i1 } %uadd72, 1
  store i1 %953, i1* %CF_val, !mcsema_real_eip !142
  %954 = zext i32 %940 to i64, !mcsema_real_eip !142
  store i64 %954, i64* %RAX_val, !mcsema_real_eip !142
  %955 = load i64, i64* %RBP_val, !mcsema_real_eip !143
  %956 = add i64 %955, -8, !mcsema_real_eip !143
  %957 = inttoptr i64 %956 to i64*, !mcsema_real_eip !143
  %958 = bitcast i64* %957 to i32*
  store i32 %940, i32* %958, !mcsema_real_eip !143
  br label %block_0x2c8, !mcsema_real_eip !144

block_0x173:                                      ; preds = %block_0x15d
  %959 = add i64 %935, -12, !mcsema_real_eip !145
  %960 = inttoptr i64 %959 to i64*, !mcsema_real_eip !145
  %961 = bitcast i64* %960 to i32*
  %962 = load i32, i32* %961, !mcsema_real_eip !145
  %963 = add i32 %962, -74642
  %964 = xor i32 %963, %962, !mcsema_real_eip !146
  %965 = and i32 %964, 16
  %966 = icmp eq i32 %965, 0
  store i1 %966, i1* %AF_val, !mcsema_real_eip !146
  %967 = trunc i32 %963 to i8, !mcsema_real_eip !146
  %968 = tail call i8 @llvm.ctpop.i8(i8 %967), !mcsema_real_eip !146
  %969 = and i8 %968, 1
  %970 = icmp eq i8 %969, 0
  store i1 %970, i1* %PF_val, !mcsema_real_eip !146
  %971 = icmp eq i32 %963, 0, !mcsema_real_eip !146
  store i1 %971, i1* %ZF_val, !mcsema_real_eip !146
  %972 = icmp slt i32 %963, 0
  store i1 %972, i1* %SF_val, !mcsema_real_eip !146
  %973 = icmp ult i32 %962, 74642, !mcsema_real_eip !146
  store i1 %973, i1* %CF_val, !mcsema_real_eip !146
  %974 = and i32 %964, %962, !mcsema_real_eip !146
  %975 = icmp slt i32 %974, 0
  store i1 %975, i1* %OF_val, !mcsema_real_eip !146
  %976 = zext i32 %963 to i64, !mcsema_real_eip !146
  store i64 %976, i64* %RAX_val, !mcsema_real_eip !146
  %977 = load i64, i64* %RBP_val, !mcsema_real_eip !147
  %978 = add i64 %977, -80, !mcsema_real_eip !147
  %979 = inttoptr i64 %978 to i64*, !mcsema_real_eip !147
  %980 = bitcast i64* %979 to i32*
  store i32 %963, i32* %980, !mcsema_real_eip !147
  %981 = load i1, i1* %ZF_val, !mcsema_real_eip !148
  %982 = load i64, i64* %RBP_val, !mcsema_real_eip !149
  br i1 %981, label %block_0x29f, label %block_0x189, !mcsema_real_eip !148

block_0x29f:                                      ; preds = %block_0x173
  %983 = add i64 %982, -8, !mcsema_real_eip !149
  %984 = inttoptr i64 %983 to i64*, !mcsema_real_eip !149
  %985 = bitcast i64* %984 to i32*
  %986 = load i32, i32* %985, !mcsema_real_eip !149
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %986, i32 74642)
  %987 = extractvalue { i32, i1 } %uadd71, 0
  %988 = xor i32 %987, %986, !mcsema_real_eip !150
  %989 = and i32 %988, 16
  %990 = icmp eq i32 %989, 0
  store i1 %990, i1* %AF_val, !mcsema_real_eip !150
  %991 = icmp slt i32 %987, 0
  store i1 %991, i1* %SF_val, !mcsema_real_eip !150
  %992 = icmp eq i32 %987, 0, !mcsema_real_eip !150
  store i1 %992, i1* %ZF_val, !mcsema_real_eip !150
  %993 = xor i32 %986, -2147483648, !mcsema_real_eip !150
  %994 = and i32 %988, %993, !mcsema_real_eip !150
  %995 = icmp slt i32 %994, 0
  store i1 %995, i1* %OF_val, !mcsema_real_eip !150
  %996 = trunc i32 %987 to i8, !mcsema_real_eip !150
  %997 = tail call i8 @llvm.ctpop.i8(i8 %996), !mcsema_real_eip !150
  %998 = and i8 %997, 1
  %999 = icmp eq i8 %998, 0
  store i1 %999, i1* %PF_val, !mcsema_real_eip !150
  %1000 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %1000, i1* %CF_val, !mcsema_real_eip !150
  %1001 = zext i32 %987 to i64, !mcsema_real_eip !150
  store i64 %1001, i64* %RAX_val, !mcsema_real_eip !150
  %1002 = load i64, i64* %RBP_val, !mcsema_real_eip !151
  %1003 = add i64 %1002, -8, !mcsema_real_eip !151
  %1004 = inttoptr i64 %1003 to i64*, !mcsema_real_eip !151
  %1005 = bitcast i64* %1004 to i32*
  store i32 %987, i32* %1005, !mcsema_real_eip !151
  br label %block_0x2c8, !mcsema_real_eip !152

block_0x189:                                      ; preds = %block_0x173
  %1006 = add i64 %982, -12, !mcsema_real_eip !153
  %1007 = inttoptr i64 %1006 to i64*, !mcsema_real_eip !153
  %1008 = bitcast i64* %1007 to i32*
  %1009 = load i32, i32* %1008, !mcsema_real_eip !153
  %1010 = add i32 %1009, -74643
  %1011 = xor i32 %1010, %1009, !mcsema_real_eip !154
  %1012 = and i32 %1011, 16
  %1013 = icmp eq i32 %1012, 0
  store i1 %1013, i1* %AF_val, !mcsema_real_eip !154
  %1014 = trunc i32 %1010 to i8, !mcsema_real_eip !154
  %1015 = tail call i8 @llvm.ctpop.i8(i8 %1014), !mcsema_real_eip !154
  %1016 = and i8 %1015, 1
  %1017 = icmp eq i8 %1016, 0
  store i1 %1017, i1* %PF_val, !mcsema_real_eip !154
  %1018 = icmp eq i32 %1010, 0, !mcsema_real_eip !154
  store i1 %1018, i1* %ZF_val, !mcsema_real_eip !154
  %1019 = icmp slt i32 %1010, 0
  store i1 %1019, i1* %SF_val, !mcsema_real_eip !154
  %1020 = icmp ult i32 %1009, 74643, !mcsema_real_eip !154
  store i1 %1020, i1* %CF_val, !mcsema_real_eip !154
  %1021 = and i32 %1011, %1009, !mcsema_real_eip !154
  %1022 = icmp slt i32 %1021, 0
  store i1 %1022, i1* %OF_val, !mcsema_real_eip !154
  %1023 = zext i32 %1010 to i64, !mcsema_real_eip !154
  store i64 %1023, i64* %RAX_val, !mcsema_real_eip !154
  %1024 = load i64, i64* %RBP_val, !mcsema_real_eip !155
  %1025 = add i64 %1024, -84, !mcsema_real_eip !155
  %1026 = inttoptr i64 %1025 to i64*, !mcsema_real_eip !155
  %1027 = bitcast i64* %1026 to i32*
  store i32 %1010, i32* %1027, !mcsema_real_eip !155
  %1028 = load i1, i1* %ZF_val, !mcsema_real_eip !156
  %1029 = load i64, i64* %RBP_val, !mcsema_real_eip !157
  %1030 = add i64 %1029, -8, !mcsema_real_eip !157
  %1031 = inttoptr i64 %1030 to i64*, !mcsema_real_eip !157
  %1032 = bitcast i64* %1031 to i32*
  %1033 = load i32, i32* %1032, !mcsema_real_eip !157
  %1034 = zext i32 %1033 to i64, !mcsema_real_eip !157
  store i64 %1034, i64* %RAX_val, !mcsema_real_eip !157
  br i1 %1028, label %block_0x2af, label %block_0x2bf, !mcsema_real_eip !156

block_0x2af:                                      ; preds = %block_0x189
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1033, i32 74643)
  %1035 = extractvalue { i32, i1 } %uadd, 0
  %1036 = xor i32 %1035, %1033, !mcsema_real_eip !158
  %1037 = and i32 %1036, 16
  %1038 = icmp eq i32 %1037, 0
  store i1 %1038, i1* %AF_val, !mcsema_real_eip !158
  %1039 = icmp slt i32 %1035, 0
  store i1 %1039, i1* %SF_val, !mcsema_real_eip !158
  %1040 = icmp eq i32 %1035, 0, !mcsema_real_eip !158
  store i1 %1040, i1* %ZF_val, !mcsema_real_eip !158
  %1041 = xor i32 %1033, -2147483648, !mcsema_real_eip !158
  %1042 = and i32 %1036, %1041, !mcsema_real_eip !158
  %1043 = icmp slt i32 %1042, 0
  store i1 %1043, i1* %OF_val, !mcsema_real_eip !158
  %1044 = trunc i32 %1035 to i8, !mcsema_real_eip !158
  %1045 = tail call i8 @llvm.ctpop.i8(i8 %1044), !mcsema_real_eip !158
  %1046 = and i8 %1045, 1
  %1047 = icmp eq i8 %1046, 0
  store i1 %1047, i1* %PF_val, !mcsema_real_eip !158
  %1048 = extractvalue { i32, i1 } %uadd, 1
  store i1 %1048, i1* %CF_val, !mcsema_real_eip !158
  %1049 = zext i32 %1035 to i64, !mcsema_real_eip !158
  store i64 %1049, i64* %RAX_val, !mcsema_real_eip !158
  %1050 = load i64, i64* %RBP_val, !mcsema_real_eip !159
  %1051 = add i64 %1050, -8, !mcsema_real_eip !159
  %1052 = inttoptr i64 %1051 to i64*, !mcsema_real_eip !159
  %1053 = bitcast i64* %1052 to i32*
  store i32 %1035, i32* %1053, !mcsema_real_eip !159
  br label %block_0x2c8, !mcsema_real_eip !160

block_0x2bf:                                      ; preds = %block_0x189
  store i1 false, i1* %AF_val, !mcsema_real_eip !161
  %1054 = icmp slt i32 %1033, 0
  store i1 %1054, i1* %SF_val, !mcsema_real_eip !161
  %1055 = icmp eq i32 %1033, 0, !mcsema_real_eip !161
  store i1 %1055, i1* %ZF_val, !mcsema_real_eip !161
  store i1 false, i1* %OF_val, !mcsema_real_eip !161
  %1056 = trunc i32 %1033 to i8, !mcsema_real_eip !161
  %1057 = tail call i8 @llvm.ctpop.i8(i8 %1056), !mcsema_real_eip !161
  %1058 = and i8 %1057, 1
  %1059 = icmp eq i8 %1058, 0
  store i1 %1059, i1* %PF_val, !mcsema_real_eip !161
  store i1 false, i1* %CF_val, !mcsema_real_eip !161
  store i64 %1034, i64* %RAX_val, !mcsema_real_eip !161
  %1060 = load i64, i64* %RBP_val, !mcsema_real_eip !162
  %1061 = add i64 %1060, -8, !mcsema_real_eip !162
  %1062 = inttoptr i64 %1061 to i64*, !mcsema_real_eip !162
  %1063 = bitcast i64* %1062 to i32*
  store i32 %1033, i32* %1063, !mcsema_real_eip !162
  br label %block_0x2c8
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 7}
!6 = !{i64 14}
!7 = !{i64 17}
!8 = !{i64 19}
!9 = !{i64 22}
!10 = !{i64 415}
!11 = !{i64 418}
!12 = !{i64 421}
!13 = !{i64 424}
!14 = !{i64 712}
!15 = !{i64 715}
!16 = !{i64 716}
!17 = !{i64 33}
!18 = !{i64 36}
!19 = !{i64 39}
!20 = !{i64 42}
!21 = !{i64 429}
!22 = !{i64 432}
!23 = !{i64 435}
!24 = !{i64 438}
!25 = !{i64 53}
!26 = !{i64 56}
!27 = !{i64 59}
!28 = !{i64 62}
!29 = !{i64 443}
!30 = !{i64 446}
!31 = !{i64 449}
!32 = !{i64 452}
!33 = !{i64 73}
!34 = !{i64 76}
!35 = !{i64 79}
!36 = !{i64 82}
!37 = !{i64 457}
!38 = !{i64 460}
!39 = !{i64 463}
!40 = !{i64 466}
!41 = !{i64 93}
!42 = !{i64 96}
!43 = !{i64 99}
!44 = !{i64 102}
!45 = !{i64 471}
!46 = !{i64 474}
!47 = !{i64 477}
!48 = !{i64 480}
!49 = !{i64 113}
!50 = !{i64 116}
!51 = !{i64 119}
!52 = !{i64 122}
!53 = !{i64 485}
!54 = !{i64 488}
!55 = !{i64 491}
!56 = !{i64 494}
!57 = !{i64 133}
!58 = !{i64 136}
!59 = !{i64 139}
!60 = !{i64 142}
!61 = !{i64 499}
!62 = !{i64 502}
!63 = !{i64 505}
!64 = !{i64 508}
!65 = !{i64 153}
!66 = !{i64 156}
!67 = !{i64 159}
!68 = !{i64 162}
!69 = !{i64 513}
!70 = !{i64 516}
!71 = !{i64 519}
!72 = !{i64 522}
!73 = !{i64 173}
!74 = !{i64 176}
!75 = !{i64 181}
!76 = !{i64 184}
!77 = !{i64 527}
!78 = !{i64 530}
!79 = !{i64 535}
!80 = !{i64 538}
!81 = !{i64 195}
!82 = !{i64 198}
!83 = !{i64 203}
!84 = !{i64 206}
!85 = !{i64 543}
!86 = !{i64 546}
!87 = !{i64 551}
!88 = !{i64 554}
!89 = !{i64 217}
!90 = !{i64 220}
!91 = !{i64 225}
!92 = !{i64 228}
!93 = !{i64 559}
!94 = !{i64 562}
!95 = !{i64 567}
!96 = !{i64 570}
!97 = !{i64 239}
!98 = !{i64 242}
!99 = !{i64 247}
!100 = !{i64 250}
!101 = !{i64 575}
!102 = !{i64 578}
!103 = !{i64 583}
!104 = !{i64 586}
!105 = !{i64 261}
!106 = !{i64 264}
!107 = !{i64 269}
!108 = !{i64 272}
!109 = !{i64 591}
!110 = !{i64 594}
!111 = !{i64 599}
!112 = !{i64 602}
!113 = !{i64 283}
!114 = !{i64 286}
!115 = !{i64 291}
!116 = !{i64 294}
!117 = !{i64 607}
!118 = !{i64 610}
!119 = !{i64 615}
!120 = !{i64 618}
!121 = !{i64 305}
!122 = !{i64 308}
!123 = !{i64 313}
!124 = !{i64 316}
!125 = !{i64 623}
!126 = !{i64 626}
!127 = !{i64 631}
!128 = !{i64 634}
!129 = !{i64 327}
!130 = !{i64 330}
!131 = !{i64 335}
!132 = !{i64 338}
!133 = !{i64 639}
!134 = !{i64 642}
!135 = !{i64 647}
!136 = !{i64 650}
!137 = !{i64 349}
!138 = !{i64 352}
!139 = !{i64 357}
!140 = !{i64 360}
!141 = !{i64 655}
!142 = !{i64 658}
!143 = !{i64 663}
!144 = !{i64 666}
!145 = !{i64 371}
!146 = !{i64 374}
!147 = !{i64 379}
!148 = !{i64 382}
!149 = !{i64 671}
!150 = !{i64 674}
!151 = !{i64 679}
!152 = !{i64 682}
!153 = !{i64 393}
!154 = !{i64 396}
!155 = !{i64 401}
!156 = !{i64 404}
!157 = !{i64 687}
!158 = !{i64 690}
!159 = !{i64 695}
!160 = !{i64 698}
!161 = !{i64 706}
!162 = !{i64 709}
