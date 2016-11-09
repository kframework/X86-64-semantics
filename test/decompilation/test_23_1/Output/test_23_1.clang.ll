; ModuleID = 'Output/test_23_1.clang.bc'
source_filename = "Output/test_23_1.clang.bc"
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
  %84 = bitcast i64* %83 to i32*
  store i32 0, i32* %84, !mcsema_real_eip !4
  %85 = load i64, i64* %RBP_val, !mcsema_real_eip !5
  %86 = add i64 %85, -8, !mcsema_real_eip !5
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !5
  %88 = bitcast i64* %87 to i32*
  store i32 0, i32* %88, !mcsema_real_eip !5
  %89 = load i64, i64* %RAX_val, !mcsema_real_eip !6
  %90 = and i64 %89, -256, !mcsema_real_eip !6
  %91 = or i64 %90, 119
  store i64 %91, i64* %RAX_val, !mcsema_real_eip !6
  %92 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  %93 = add i64 %92, -9, !mcsema_real_eip !7
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !7
  %95 = bitcast i64* %94 to i8*
  store i8 119, i8* %95, !mcsema_real_eip !7
  br label %block_0x1c, !mcsema_real_eip !8

block_0x1c:                                       ; preds = %block_0xb8, %entry
  %96 = load i64, i64* %RBP_val, !mcsema_real_eip !8
  %97 = add i64 %96, -8, !mcsema_real_eip !8
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !8
  %99 = bitcast i64* %98 to i32*
  %100 = load i32, i32* %99, !mcsema_real_eip !8
  %101 = add i32 %100, -1
  %102 = xor i32 %101, %100, !mcsema_real_eip !8
  %103 = and i32 %102, 16, !mcsema_real_eip !8
  %104 = icmp ne i32 %103, 0, !mcsema_real_eip !8
  store i1 %104, i1* %AF_val, !mcsema_real_eip !8
  %105 = trunc i32 %101 to i8, !mcsema_real_eip !8
  %106 = tail call i8 @llvm.ctpop.i8(i8 %105), !mcsema_real_eip !8
  %107 = and i8 %106, 1
  %108 = icmp eq i8 %107, 0
  store i1 %108, i1* %PF_val, !mcsema_real_eip !8
  %109 = icmp eq i32 %101, 0, !mcsema_real_eip !8
  store i1 %109, i1* %ZF_val, !mcsema_real_eip !8
  %110 = icmp slt i32 %101, 0
  store i1 %110, i1* %SF_val, !mcsema_real_eip !8
  %111 = icmp eq i32 %100, 0
  store i1 %111, i1* %CF_val, !mcsema_real_eip !8
  %112 = and i32 %102, %100, !mcsema_real_eip !8
  %113 = icmp slt i32 %112, 0
  store i1 %113, i1* %OF_val, !mcsema_real_eip !8
  %tmp = xor i1 %110, %113
  %114 = load i64, i64* %RBP_val, !mcsema_real_eip !9
  br i1 %tmp, label %block_0x29, label %block_0xc8, !mcsema_real_eip !10

block_0x29:                                       ; preds = %block_0x1c
  %115 = add i64 %114, -8, !mcsema_real_eip !11
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !11
  %117 = bitcast i64* %116 to i32*
  %118 = load i32, i32* %117, !mcsema_real_eip !11
  %119 = sext i32 %118 to i64, !mcsema_real_eip !11
  store i64 %119, i64* %RAX_val, !mcsema_real_eip !11
  %120 = load i64, i64* %RBP_val, !mcsema_real_eip !12
  %121 = add i64 %120, -9, !mcsema_real_eip !12
  %122 = add i64 %121, %119, !mcsema_real_eip !12
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !12
  %124 = bitcast i64* %123 to i8*
  %125 = load i8, i8* %124, !mcsema_real_eip !12
  %126 = sext i8 %125 to i32, !mcsema_real_eip !12
  %127 = zext i32 %126 to i64, !mcsema_real_eip !12
  store i64 %127, i64* %RCX_val, !mcsema_real_eip !12
  %128 = add nsw i32 %126, -114
  %129 = xor i32 %128, %126, !mcsema_real_eip !13
  %130 = and i32 %129, 16
  %131 = icmp eq i32 %130, 0
  store i1 %131, i1* %AF_val, !mcsema_real_eip !13
  %132 = trunc i32 %128 to i8, !mcsema_real_eip !13
  %133 = tail call i8 @llvm.ctpop.i8(i8 %132), !mcsema_real_eip !13
  %134 = and i8 %133, 1
  %135 = icmp eq i8 %134, 0
  store i1 %135, i1* %PF_val, !mcsema_real_eip !13
  %136 = icmp eq i32 %128, 0, !mcsema_real_eip !13
  store i1 %136, i1* %ZF_val, !mcsema_real_eip !13
  %137 = icmp slt i32 %128, 0
  store i1 %137, i1* %SF_val, !mcsema_real_eip !13
  %138 = icmp ult i8 %125, 114
  store i1 %138, i1* %CF_val, !mcsema_real_eip !13
  %139 = and i32 %129, %126, !mcsema_real_eip !13
  %140 = icmp slt i32 %139, 0
  store i1 %140, i1* %OF_val, !mcsema_real_eip !13
  %141 = zext i32 %128 to i64, !mcsema_real_eip !13
  store i64 %141, i64* %RDX_val, !mcsema_real_eip !13
  %142 = load i64, i64* %RBP_val, !mcsema_real_eip !14
  %143 = add i64 %142, -16, !mcsema_real_eip !14
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !14
  %145 = load i64, i64* %RCX_val, !mcsema_real_eip !14
  %146 = trunc i64 %145 to i32, !mcsema_real_eip !14
  %147 = bitcast i64* %144 to i32*
  store i32 %146, i32* %147, !mcsema_real_eip !14
  %148 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %149 = add i64 %148, -20, !mcsema_real_eip !15
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !15
  %151 = load i64, i64* %RDX_val, !mcsema_real_eip !15
  %152 = trunc i64 %151 to i32, !mcsema_real_eip !15
  %153 = bitcast i64* %150 to i32*
  store i32 %152, i32* %153, !mcsema_real_eip !15
  %154 = load i1, i1* %OF_val, !mcsema_real_eip !16
  %155 = load i1, i1* %SF_val, !mcsema_real_eip !16
  %tmp71 = xor i1 %155, %154
  %156 = load i1, i1* %ZF_val, !mcsema_real_eip !16
  %.demorgan = or i1 %156, %tmp71
  %157 = load i64, i64* %RBP_val, !mcsema_real_eip !17
  %158 = add i64 %157, -16, !mcsema_real_eip !17
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !17
  %160 = bitcast i64* %159 to i32*
  %161 = load i32, i32* %160, !mcsema_real_eip !17
  %162 = zext i32 %161 to i64, !mcsema_real_eip !17
  store i64 %162, i64* %RAX_val, !mcsema_real_eip !17
  br i1 %.demorgan, label %block_0x48, label %block_0x70, !mcsema_real_eip !16

block_0xc8:                                       ; preds = %block_0x1c
  %.lcssa = phi i64 [ %114, %block_0x1c ]
  %163 = add i64 %.lcssa, -4, !mcsema_real_eip !9
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !9
  %165 = bitcast i64* %164 to i32*
  store i32 1, i32* %165, !mcsema_real_eip !9
  br label %block_0xcf, !mcsema_real_eip !11

block_0xcf:                                       ; preds = %block_0xac, %block_0xc8
  %166 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  %167 = add i64 %166, -4, !mcsema_real_eip !18
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !18
  %169 = bitcast i64* %168 to i32*
  %170 = load i32, i32* %169, !mcsema_real_eip !18
  %171 = zext i32 %170 to i64, !mcsema_real_eip !18
  store i64 %171, i64* %RAX_val, !mcsema_real_eip !18
  %172 = load i64, i64* %RSP_val, !mcsema_real_eip !19
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !19
  %174 = load i64, i64* %173, !mcsema_real_eip !19
  store i64 %174, i64* %RBP_val, !mcsema_real_eip !19
  %175 = add i64 %172, 16, !mcsema_real_eip !20
  store i64 %175, i64* %RSP_val, !mcsema_real_eip !20
  %176 = load i64, i64* %RAX_val, !mcsema_real_eip !20
  store i64 %176, i64* %RAX, !mcsema_real_eip !20
  %177 = load i64, i64* %RBX_val, !mcsema_real_eip !20
  store i64 %177, i64* %RBX, !mcsema_real_eip !20
  %178 = load i64, i64* %RCX_val, !mcsema_real_eip !20
  store i64 %178, i64* %RCX, !mcsema_real_eip !20
  %179 = load i64, i64* %RDX_val, !mcsema_real_eip !20
  store i64 %179, i64* %RDX, !mcsema_real_eip !20
  %180 = load i64, i64* %RSI_val, !mcsema_real_eip !20
  store i64 %180, i64* %RSI, !mcsema_real_eip !20
  %181 = load i64, i64* %RDI_val, !mcsema_real_eip !20
  store i64 %181, i64* %RDI, !mcsema_real_eip !20
  %182 = load i64, i64* %RSP_val, !mcsema_real_eip !20
  store i64 %182, i64* %RSP, !mcsema_real_eip !20
  %183 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  store i64 %183, i64* %RBP, !mcsema_real_eip !20
  %184 = load i64, i64* %R8_val, !mcsema_real_eip !20
  store i64 %184, i64* %R8, !mcsema_real_eip !20
  %185 = load i64, i64* %R9_val, !mcsema_real_eip !20
  store i64 %185, i64* %R9, !mcsema_real_eip !20
  %186 = load i64, i64* %R10_val, !mcsema_real_eip !20
  store i64 %186, i64* %R10, !mcsema_real_eip !20
  %187 = load i64, i64* %R11_val, !mcsema_real_eip !20
  store i64 %187, i64* %R11, !mcsema_real_eip !20
  %188 = load i64, i64* %R12_val, !mcsema_real_eip !20
  store i64 %188, i64* %R12, !mcsema_real_eip !20
  %189 = load i64, i64* %R13_val, !mcsema_real_eip !20
  store i64 %189, i64* %R13, !mcsema_real_eip !20
  %190 = load i64, i64* %R14_val, !mcsema_real_eip !20
  store i64 %190, i64* %R14, !mcsema_real_eip !20
  %191 = load i64, i64* %R15_val, !mcsema_real_eip !20
  store i64 %191, i64* %R15, !mcsema_real_eip !20
  %192 = load i64, i64* %RIP_val, !mcsema_real_eip !20
  store i64 %192, i64* %RIP, !mcsema_real_eip !20
  %193 = load i1, i1* %CF_val, !mcsema_real_eip !20
  store i1 %193, i1* %CF, align 1, !mcsema_real_eip !20
  %194 = load i1, i1* %PF_val, !mcsema_real_eip !20
  store i1 %194, i1* %PF, align 1, !mcsema_real_eip !20
  %195 = load i1, i1* %AF_val, !mcsema_real_eip !20
  store i1 %195, i1* %AF, align 1, !mcsema_real_eip !20
  %196 = load i1, i1* %ZF_val, !mcsema_real_eip !20
  store i1 %196, i1* %ZF, align 1, !mcsema_real_eip !20
  %197 = load i1, i1* %SF_val, !mcsema_real_eip !20
  store i1 %197, i1* %SF, align 1, !mcsema_real_eip !20
  %198 = load i1, i1* %OF_val, !mcsema_real_eip !20
  store i1 %198, i1* %OF, align 1, !mcsema_real_eip !20
  %199 = load i1, i1* %DF_val, !mcsema_real_eip !20
  store i1 %199, i1* %DF, align 1, !mcsema_real_eip !20
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !20
  %200 = load i1, i1* %FPU_B_val, !mcsema_real_eip !20
  store i1 %200, i1* %FPU_B, align 1, !mcsema_real_eip !20
  %201 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !20
  store i1 %201, i1* %FPU_C3, align 1, !mcsema_real_eip !20
  %202 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !20
  store i3 %202, i3* %FPU_TOP, align 1, !mcsema_real_eip !20
  %203 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !20
  store i1 %203, i1* %FPU_C2, align 1, !mcsema_real_eip !20
  %204 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !20
  store i1 %204, i1* %FPU_C1, align 1, !mcsema_real_eip !20
  %205 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !20
  store i1 %205, i1* %FPU_C0, align 1, !mcsema_real_eip !20
  %206 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !20
  store i1 %206, i1* %FPU_ES, align 1, !mcsema_real_eip !20
  %207 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !20
  store i1 %207, i1* %FPU_SF, align 1, !mcsema_real_eip !20
  %208 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !20
  store i1 %208, i1* %FPU_PE, align 1, !mcsema_real_eip !20
  %209 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !20
  store i1 %209, i1* %FPU_UE, align 1, !mcsema_real_eip !20
  %210 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !20
  store i1 %210, i1* %FPU_OE, align 1, !mcsema_real_eip !20
  %211 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !20
  store i1 %211, i1* %FPU_ZE, align 1, !mcsema_real_eip !20
  %212 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !20
  store i1 %212, i1* %FPU_DE, align 1, !mcsema_real_eip !20
  %213 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !20
  store i1 %213, i1* %FPU_IE, align 1, !mcsema_real_eip !20
  %214 = load i1, i1* %FPU_X_val, !mcsema_real_eip !20
  store i1 %214, i1* %FPU_X, align 1, !mcsema_real_eip !20
  %215 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !20
  store i2 %215, i2* %FPU_RC, align 1, !mcsema_real_eip !20
  %216 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !20
  store i2 %216, i2* %FPU_PC, align 1, !mcsema_real_eip !20
  %217 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !20
  store i1 %217, i1* %FPU_PM, align 1, !mcsema_real_eip !20
  %218 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !20
  store i1 %218, i1* %FPU_UM, align 1, !mcsema_real_eip !20
  %219 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !20
  store i1 %219, i1* %FPU_OM, align 1, !mcsema_real_eip !20
  %220 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !20
  store i1 %220, i1* %FPU_ZM, align 1, !mcsema_real_eip !20
  %221 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !20
  store i1 %221, i1* %FPU_DM, align 1, !mcsema_real_eip !20
  %222 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !20
  store i1 %222, i1* %FPU_IM, align 1, !mcsema_real_eip !20
  %223 = load i64, i64* %53, align 4
  store i64 %223, i64* %52, align 4
  %224 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !20
  store i16 %224, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !20
  %225 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !20
  store i64 %225, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !20
  %226 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !20
  store i16 %226, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !20
  %227 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !20
  store i64 %227, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !20
  %228 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !20
  store i11 %228, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !20
  %229 = load i128, i128* %XMM0_val, !mcsema_real_eip !20
  store i128 %229, i128* %XMM0, align 1, !mcsema_real_eip !20
  %230 = load i128, i128* %XMM1_val, !mcsema_real_eip !20
  store i128 %230, i128* %XMM1, align 1, !mcsema_real_eip !20
  %231 = load i128, i128* %XMM2_val, !mcsema_real_eip !20
  store i128 %231, i128* %XMM2, align 1, !mcsema_real_eip !20
  %232 = load i128, i128* %XMM3_val, !mcsema_real_eip !20
  store i128 %232, i128* %XMM3, align 1, !mcsema_real_eip !20
  %233 = load i128, i128* %XMM4_val, !mcsema_real_eip !20
  store i128 %233, i128* %XMM4, align 1, !mcsema_real_eip !20
  %234 = load i128, i128* %XMM5_val, !mcsema_real_eip !20
  store i128 %234, i128* %XMM5, align 1, !mcsema_real_eip !20
  %235 = load i128, i128* %XMM6_val, !mcsema_real_eip !20
  store i128 %235, i128* %XMM6, align 1, !mcsema_real_eip !20
  %236 = load i128, i128* %XMM7_val, !mcsema_real_eip !20
  store i128 %236, i128* %XMM7, align 1, !mcsema_real_eip !20
  %237 = load i128, i128* %XMM8_val, !mcsema_real_eip !20
  store i128 %237, i128* %XMM8, align 1, !mcsema_real_eip !20
  %238 = load i128, i128* %XMM9_val, !mcsema_real_eip !20
  store i128 %238, i128* %XMM9, align 1, !mcsema_real_eip !20
  %239 = load i128, i128* %XMM10_val, !mcsema_real_eip !20
  store i128 %239, i128* %XMM10, align 1, !mcsema_real_eip !20
  %240 = load i128, i128* %XMM11_val, !mcsema_real_eip !20
  store i128 %240, i128* %XMM11, align 1, !mcsema_real_eip !20
  %241 = load i128, i128* %XMM12_val, !mcsema_real_eip !20
  store i128 %241, i128* %XMM12, align 1, !mcsema_real_eip !20
  %242 = load i128, i128* %XMM13_val, !mcsema_real_eip !20
  store i128 %242, i128* %XMM13, align 1, !mcsema_real_eip !20
  %243 = load i128, i128* %XMM14_val, !mcsema_real_eip !20
  store i128 %243, i128* %XMM14, align 1, !mcsema_real_eip !20
  %244 = load i128, i128* %XMM15_val, !mcsema_real_eip !20
  store i128 %244, i128* %XMM15, align 1, !mcsema_real_eip !20
  %245 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !20
  store i64 %245, i64* %STACK_BASE, align 1, !mcsema_real_eip !20
  %246 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !20
  store i64 %246, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !20
  ret void, !mcsema_real_eip !20

block_0x70:                                       ; preds = %block_0x29
  %247 = add i32 %161, -115
  %248 = xor i32 %247, %161, !mcsema_real_eip !21
  %249 = and i32 %248, 16
  %250 = icmp eq i32 %249, 0
  store i1 %250, i1* %AF_val, !mcsema_real_eip !21
  %251 = trunc i32 %247 to i8, !mcsema_real_eip !21
  %252 = tail call i8 @llvm.ctpop.i8(i8 %251), !mcsema_real_eip !21
  %253 = and i8 %252, 1
  %254 = icmp eq i8 %253, 0
  store i1 %254, i1* %PF_val, !mcsema_real_eip !21
  %255 = icmp eq i32 %247, 0, !mcsema_real_eip !21
  store i1 %255, i1* %ZF_val, !mcsema_real_eip !21
  %256 = icmp slt i32 %247, 0
  store i1 %256, i1* %SF_val, !mcsema_real_eip !21
  %257 = icmp ult i32 %161, 115, !mcsema_real_eip !21
  store i1 %257, i1* %CF_val, !mcsema_real_eip !21
  %258 = and i32 %248, %161, !mcsema_real_eip !21
  %259 = icmp slt i32 %258, 0
  store i1 %259, i1* %OF_val, !mcsema_real_eip !21
  %260 = zext i32 %247 to i64, !mcsema_real_eip !21
  store i64 %260, i64* %RAX_val, !mcsema_real_eip !21
  %261 = load i64, i64* %RBP_val, !mcsema_real_eip !22
  %262 = add i64 %261, -32, !mcsema_real_eip !22
  %263 = inttoptr i64 %262 to i64*, !mcsema_real_eip !22
  %264 = bitcast i64* %263 to i32*
  store i32 %247, i32* %264, !mcsema_real_eip !22
  %265 = load i1, i1* %ZF_val, !mcsema_real_eip !23
  br i1 %265, label %block_0xb8, label %block_0x84, !mcsema_real_eip !23

block_0x48:                                       ; preds = %block_0x29
  %266 = add i32 %161, -97
  %267 = xor i32 %266, %161, !mcsema_real_eip !24
  %268 = and i32 %267, 16, !mcsema_real_eip !24
  %269 = icmp ne i32 %268, 0, !mcsema_real_eip !24
  store i1 %269, i1* %AF_val, !mcsema_real_eip !24
  %270 = trunc i32 %266 to i8, !mcsema_real_eip !24
  %271 = tail call i8 @llvm.ctpop.i8(i8 %270), !mcsema_real_eip !24
  %272 = and i8 %271, 1
  %273 = icmp eq i8 %272, 0
  store i1 %273, i1* %PF_val, !mcsema_real_eip !24
  %274 = icmp eq i32 %266, 0, !mcsema_real_eip !24
  store i1 %274, i1* %ZF_val, !mcsema_real_eip !24
  %275 = icmp slt i32 %266, 0
  store i1 %275, i1* %SF_val, !mcsema_real_eip !24
  %276 = icmp ult i32 %161, 97, !mcsema_real_eip !24
  store i1 %276, i1* %CF_val, !mcsema_real_eip !24
  %277 = and i32 %267, %161, !mcsema_real_eip !24
  %278 = icmp slt i32 %277, 0
  store i1 %278, i1* %OF_val, !mcsema_real_eip !24
  %279 = zext i32 %266 to i64, !mcsema_real_eip !24
  store i64 %279, i64* %RAX_val, !mcsema_real_eip !24
  %280 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %281 = add i64 %280, -24, !mcsema_real_eip !25
  %282 = inttoptr i64 %281 to i64*, !mcsema_real_eip !25
  %283 = bitcast i64* %282 to i32*
  store i32 %266, i32* %283, !mcsema_real_eip !25
  %284 = load i1, i1* %ZF_val, !mcsema_real_eip !26
  br i1 %284, label %block_0xb8, label %block_0x5c, !mcsema_real_eip !26

block_0xb8:                                       ; preds = %block_0x5c, %block_0x84, %block_0x48, %block_0x70
  %285 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %286 = add i64 %285, -8, !mcsema_real_eip !27
  %287 = inttoptr i64 %286 to i64*, !mcsema_real_eip !27
  %288 = bitcast i64* %287 to i32*
  %289 = load i32, i32* %288, !mcsema_real_eip !27
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %289, i32 1)
  %290 = extractvalue { i32, i1 } %uadd, 0
  %291 = xor i32 %290, %289, !mcsema_real_eip !28
  %292 = and i32 %291, 16, !mcsema_real_eip !28
  %293 = icmp ne i32 %292, 0, !mcsema_real_eip !28
  store i1 %293, i1* %AF_val, !mcsema_real_eip !28
  %294 = icmp slt i32 %290, 0
  store i1 %294, i1* %SF_val, !mcsema_real_eip !28
  %295 = icmp eq i32 %290, 0, !mcsema_real_eip !28
  store i1 %295, i1* %ZF_val, !mcsema_real_eip !28
  %296 = xor i32 %289, -2147483648, !mcsema_real_eip !28
  %297 = and i32 %291, %296, !mcsema_real_eip !28
  %298 = icmp slt i32 %297, 0
  store i1 %298, i1* %OF_val, !mcsema_real_eip !28
  %299 = trunc i32 %290 to i8, !mcsema_real_eip !28
  %300 = tail call i8 @llvm.ctpop.i8(i8 %299), !mcsema_real_eip !28
  %301 = and i8 %300, 1
  %302 = icmp eq i8 %301, 0
  store i1 %302, i1* %PF_val, !mcsema_real_eip !28
  %303 = extractvalue { i32, i1 } %uadd, 1
  store i1 %303, i1* %CF_val, !mcsema_real_eip !28
  %304 = zext i32 %290 to i64, !mcsema_real_eip !28
  store i64 %304, i64* %RAX_val, !mcsema_real_eip !28
  %305 = load i64, i64* %RBP_val, !mcsema_real_eip !29
  %306 = add i64 %305, -8, !mcsema_real_eip !29
  %307 = inttoptr i64 %306 to i64*, !mcsema_real_eip !29
  %308 = bitcast i64* %307 to i32*
  store i32 %290, i32* %308, !mcsema_real_eip !29
  br label %block_0x1c, !mcsema_real_eip !30

block_0x84:                                       ; preds = %block_0x70
  %309 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %310 = add i64 %309, -16, !mcsema_real_eip !31
  %311 = inttoptr i64 %310 to i64*, !mcsema_real_eip !31
  %312 = bitcast i64* %311 to i32*
  %313 = load i32, i32* %312, !mcsema_real_eip !31
  %314 = add i32 %313, -119
  %315 = xor i32 %314, %313, !mcsema_real_eip !32
  %316 = and i32 %315, 16
  %317 = icmp eq i32 %316, 0
  store i1 %317, i1* %AF_val, !mcsema_real_eip !32
  %318 = trunc i32 %314 to i8, !mcsema_real_eip !32
  %319 = tail call i8 @llvm.ctpop.i8(i8 %318), !mcsema_real_eip !32
  %320 = and i8 %319, 1
  %321 = icmp eq i8 %320, 0
  store i1 %321, i1* %PF_val, !mcsema_real_eip !32
  %322 = icmp eq i32 %314, 0, !mcsema_real_eip !32
  store i1 %322, i1* %ZF_val, !mcsema_real_eip !32
  %323 = icmp slt i32 %314, 0
  store i1 %323, i1* %SF_val, !mcsema_real_eip !32
  %324 = icmp ult i32 %313, 119, !mcsema_real_eip !32
  store i1 %324, i1* %CF_val, !mcsema_real_eip !32
  %325 = and i32 %315, %313, !mcsema_real_eip !32
  %326 = icmp slt i32 %325, 0
  store i1 %326, i1* %OF_val, !mcsema_real_eip !32
  %327 = zext i32 %314 to i64, !mcsema_real_eip !32
  store i64 %327, i64* %RAX_val, !mcsema_real_eip !32
  %328 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %329 = add i64 %328, -36, !mcsema_real_eip !33
  %330 = inttoptr i64 %329 to i64*, !mcsema_real_eip !33
  %331 = bitcast i64* %330 to i32*
  store i32 %314, i32* %331, !mcsema_real_eip !33
  %332 = load i1, i1* %ZF_val, !mcsema_real_eip !34
  br i1 %332, label %block_0xb8, label %block_0xac, !mcsema_real_eip !34

block_0xac:                                       ; preds = %block_0x5c, %block_0x84
  %333 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %334 = add i64 %333, -4, !mcsema_real_eip !35
  %335 = inttoptr i64 %334 to i64*, !mcsema_real_eip !35
  %336 = bitcast i64* %335 to i32*
  store i32 1, i32* %336, !mcsema_real_eip !35
  br label %block_0xcf, !mcsema_real_eip !36

block_0x5c:                                       ; preds = %block_0x48
  %337 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %338 = add i64 %337, -16, !mcsema_real_eip !37
  %339 = inttoptr i64 %338 to i64*, !mcsema_real_eip !37
  %340 = bitcast i64* %339 to i32*
  %341 = load i32, i32* %340, !mcsema_real_eip !37
  %342 = add i32 %341, -100
  %343 = xor i32 %342, %341, !mcsema_real_eip !38
  %344 = and i32 %343, 16, !mcsema_real_eip !38
  %345 = icmp ne i32 %344, 0, !mcsema_real_eip !38
  store i1 %345, i1* %AF_val, !mcsema_real_eip !38
  %346 = trunc i32 %342 to i8, !mcsema_real_eip !38
  %347 = tail call i8 @llvm.ctpop.i8(i8 %346), !mcsema_real_eip !38
  %348 = and i8 %347, 1
  %349 = icmp eq i8 %348, 0
  store i1 %349, i1* %PF_val, !mcsema_real_eip !38
  %350 = icmp eq i32 %342, 0, !mcsema_real_eip !38
  store i1 %350, i1* %ZF_val, !mcsema_real_eip !38
  %351 = icmp slt i32 %342, 0
  store i1 %351, i1* %SF_val, !mcsema_real_eip !38
  %352 = icmp ult i32 %341, 100, !mcsema_real_eip !38
  store i1 %352, i1* %CF_val, !mcsema_real_eip !38
  %353 = and i32 %343, %341, !mcsema_real_eip !38
  %354 = icmp slt i32 %353, 0
  store i1 %354, i1* %OF_val, !mcsema_real_eip !38
  %355 = zext i32 %342 to i64, !mcsema_real_eip !38
  store i64 %355, i64* %RAX_val, !mcsema_real_eip !38
  %356 = load i64, i64* %RBP_val, !mcsema_real_eip !39
  %357 = add i64 %356, -28, !mcsema_real_eip !39
  %358 = inttoptr i64 %357 to i64*, !mcsema_real_eip !39
  %359 = bitcast i64* %358 to i32*
  store i32 %342, i32* %359, !mcsema_real_eip !39
  %360 = load i1, i1* %ZF_val, !mcsema_real_eip !40
  br i1 %360, label %block_0xb8, label %block_0xac, !mcsema_real_eip !40
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
!5 = !{i64 11}
!6 = !{i64 18}
!7 = !{i64 25}
!8 = !{i64 28}
!9 = !{i64 200}
!10 = !{i64 35}
!11 = !{i64 41}
!12 = !{i64 45}
!13 = !{i64 52}
!14 = !{i64 55}
!15 = !{i64 58}
!16 = !{i64 61}
!17 = !{i64 112}
!18 = !{i64 207}
!19 = !{i64 210}
!20 = !{i64 211}
!21 = !{i64 115}
!22 = !{i64 118}
!23 = !{i64 121}
!24 = !{i64 75}
!25 = !{i64 78}
!26 = !{i64 81}
!27 = !{i64 184}
!28 = !{i64 187}
!29 = !{i64 192}
!30 = !{i64 195}
!31 = !{i64 132}
!32 = !{i64 135}
!33 = !{i64 138}
!34 = !{i64 141}
!35 = !{i64 172}
!36 = !{i64 179}
!37 = !{i64 92}
!38 = !{i64 95}
!39 = !{i64 98}
!40 = !{i64 101}
