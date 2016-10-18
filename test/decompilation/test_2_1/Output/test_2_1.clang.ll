; ModuleID = 'Output/test_2_1.clang.bc'
source_filename = "Output/test_2_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_40(%struct.regs*) #0 {
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
  %81 = load i64, i64* %RBX_val, !mcsema_real_eip !4
  %82 = add i64 %78, -16
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !4
  store i64 %81, i64* %83, !mcsema_real_eip !4
  %84 = add i64 %78, -56
  %85 = xor i64 %84, %82, !mcsema_real_eip !5
  %86 = and i64 %85, 16, !mcsema_real_eip !5
  %87 = icmp ne i64 %86, 0, !mcsema_real_eip !5
  store i1 %87, i1* %AF_val, !mcsema_real_eip !5
  %88 = trunc i64 %84 to i8, !mcsema_real_eip !5
  %89 = tail call i8 @llvm.ctpop.i8(i8 %88), !mcsema_real_eip !5
  %90 = and i8 %89, 1
  %91 = icmp eq i8 %90, 0
  store i1 %91, i1* %PF_val, !mcsema_real_eip !5
  %92 = icmp eq i64 %84, 0, !mcsema_real_eip !5
  store i1 %92, i1* %ZF_val, !mcsema_real_eip !5
  %93 = icmp slt i64 %84, 0
  store i1 %93, i1* %SF_val, !mcsema_real_eip !5
  %94 = icmp ult i64 %82, 40, !mcsema_real_eip !5
  store i1 %94, i1* %CF_val, !mcsema_real_eip !5
  %95 = and i64 %85, %82, !mcsema_real_eip !5
  %96 = icmp slt i64 %95, 0
  store i1 %96, i1* %OF_val, !mcsema_real_eip !5
  store i64 %84, i64* %RSP_val, !mcsema_real_eip !5
  store i64 100, i64* %RAX_val, !mcsema_real_eip !6
  store i64 200, i64* %RCX_val, !mcsema_real_eip !7
  store i64 300, i64* %RDX_val, !mcsema_real_eip !8
  store i64 400, i64* %R8_val, !mcsema_real_eip !9
  store i64 500, i64* %R9_val, !mcsema_real_eip !10
  store i64 600, i64* %R10_val, !mcsema_real_eip !11
  store i64 10, i64* %R11_val, !mcsema_real_eip !12
  store i64 20, i64* %RBX_val, !mcsema_real_eip !13
  %97 = load i64, i64* %RBP_val, !mcsema_real_eip !14
  %98 = add i64 %97, -12, !mcsema_real_eip !14
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !14
  %100 = bitcast i64* %99 to i32*
  store i32 0, i32* %100, !mcsema_real_eip !14
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %102 = add i64 %101, -16, !mcsema_real_eip !15
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !15
  %104 = load i64, i64* %RDI_val, !mcsema_real_eip !15
  %105 = trunc i64 %104 to i32, !mcsema_real_eip !15
  %106 = bitcast i64* %103 to i32*
  store i32 %105, i32* %106, !mcsema_real_eip !15
  %107 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %108 = add i64 %107, -24, !mcsema_real_eip !16
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !16
  %110 = load i64, i64* %RSI_val, !mcsema_real_eip !16
  store i64 %110, i64* %109, !mcsema_real_eip !16
  %111 = load i64, i64* %RAX_val, !mcsema_real_eip !17
  %112 = and i64 %111, 4294967295
  store i64 %112, i64* %RDI_val, !mcsema_real_eip !17
  %113 = load i64, i64* %RCX_val, !mcsema_real_eip !18
  %114 = and i64 %113, 4294967295
  store i64 %114, i64* %RSI_val, !mcsema_real_eip !18
  %115 = load i64, i64* %R8_val, !mcsema_real_eip !19
  %116 = and i64 %115, 4294967295
  store i64 %116, i64* %RCX_val, !mcsema_real_eip !19
  %117 = load i64, i64* %R9_val, !mcsema_real_eip !20
  %118 = and i64 %117, 4294967295
  store i64 %118, i64* %R8_val, !mcsema_real_eip !20
  %119 = load i64, i64* %R10_val, !mcsema_real_eip !21
  %120 = and i64 %119, 4294967295
  store i64 %120, i64* %R9_val, !mcsema_real_eip !21
  %121 = load i64, i64* %RSP_val, !mcsema_real_eip !22
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !22
  %123 = bitcast i64* %122 to i32*
  store i32 10, i32* %123, !mcsema_real_eip !22
  %124 = load i64, i64* %RSP_val, !mcsema_real_eip !23
  %125 = add i64 %124, 8, !mcsema_real_eip !23
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !23
  %127 = bitcast i64* %126 to i32*
  store i32 20, i32* %127, !mcsema_real_eip !23
  %128 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %129 = add i64 %128, -28, !mcsema_real_eip !24
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !24
  %131 = load i64, i64* %RBX_val, !mcsema_real_eip !24
  %132 = trunc i64 %131 to i32, !mcsema_real_eip !24
  %133 = bitcast i64* %130 to i32*
  store i32 %132, i32* %133, !mcsema_real_eip !24
  %134 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %135 = add i64 %134, -32, !mcsema_real_eip !25
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !25
  %137 = load i64, i64* %R11_val, !mcsema_real_eip !25
  %138 = trunc i64 %137 to i32, !mcsema_real_eip !25
  %139 = bitcast i64* %136 to i32*
  store i32 %138, i32* %139, !mcsema_real_eip !25
  %140 = load i64, i64* %RSP_val, !mcsema_real_eip !26
  %141 = add i64 %140, -8
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !26
  store i64 -4981261766360305936, i64* %142, !mcsema_real_eip !26
  store i64 %141, i64* %RSP_val, !mcsema_real_eip !26
  %143 = load i64, i64* %RAX_val, !mcsema_real_eip !26
  store i64 %143, i64* %RAX, !mcsema_real_eip !26
  %144 = load i64, i64* %RBX_val, !mcsema_real_eip !26
  store i64 %144, i64* %RBX, !mcsema_real_eip !26
  %145 = load i64, i64* %RCX_val, !mcsema_real_eip !26
  store i64 %145, i64* %RCX, !mcsema_real_eip !26
  %146 = load i64, i64* %RDX_val, !mcsema_real_eip !26
  store i64 %146, i64* %RDX, !mcsema_real_eip !26
  %147 = load i64, i64* %RSI_val, !mcsema_real_eip !26
  store i64 %147, i64* %RSI, !mcsema_real_eip !26
  %148 = load i64, i64* %RDI_val, !mcsema_real_eip !26
  store i64 %148, i64* %RDI, !mcsema_real_eip !26
  %149 = load i64, i64* %RSP_val, !mcsema_real_eip !26
  store i64 %149, i64* %RSP, !mcsema_real_eip !26
  %150 = load i64, i64* %RBP_val, !mcsema_real_eip !26
  store i64 %150, i64* %RBP, !mcsema_real_eip !26
  %151 = load i64, i64* %R8_val, !mcsema_real_eip !26
  store i64 %151, i64* %R8, !mcsema_real_eip !26
  %152 = load i64, i64* %R9_val, !mcsema_real_eip !26
  store i64 %152, i64* %R9, !mcsema_real_eip !26
  %153 = load i64, i64* %R10_val, !mcsema_real_eip !26
  store i64 %153, i64* %R10, !mcsema_real_eip !26
  %154 = load i64, i64* %R11_val, !mcsema_real_eip !26
  store i64 %154, i64* %R11, !mcsema_real_eip !26
  %155 = load i64, i64* %R12_val, !mcsema_real_eip !26
  store i64 %155, i64* %R12, !mcsema_real_eip !26
  %156 = load i64, i64* %R13_val, !mcsema_real_eip !26
  store i64 %156, i64* %R13, !mcsema_real_eip !26
  %157 = load i64, i64* %R14_val, !mcsema_real_eip !26
  store i64 %157, i64* %R14, !mcsema_real_eip !26
  %158 = load i64, i64* %R15_val, !mcsema_real_eip !26
  store i64 %158, i64* %R15, !mcsema_real_eip !26
  %159 = load i64, i64* %RIP_val, !mcsema_real_eip !26
  store i64 %159, i64* %RIP, !mcsema_real_eip !26
  %160 = load i1, i1* %CF_val, !mcsema_real_eip !26
  store i1 %160, i1* %CF, align 1, !mcsema_real_eip !26
  %161 = load i1, i1* %PF_val, !mcsema_real_eip !26
  store i1 %161, i1* %PF, align 1, !mcsema_real_eip !26
  %162 = load i1, i1* %AF_val, !mcsema_real_eip !26
  store i1 %162, i1* %AF, align 1, !mcsema_real_eip !26
  %163 = load i1, i1* %ZF_val, !mcsema_real_eip !26
  store i1 %163, i1* %ZF, align 1, !mcsema_real_eip !26
  %164 = load i1, i1* %SF_val, !mcsema_real_eip !26
  store i1 %164, i1* %SF, align 1, !mcsema_real_eip !26
  %165 = load i1, i1* %OF_val, !mcsema_real_eip !26
  store i1 %165, i1* %OF, align 1, !mcsema_real_eip !26
  %166 = load i1, i1* %DF_val, !mcsema_real_eip !26
  store i1 %166, i1* %DF, align 1, !mcsema_real_eip !26
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !26
  %167 = load i1, i1* %FPU_B_val, !mcsema_real_eip !26
  store i1 %167, i1* %FPU_B, align 1, !mcsema_real_eip !26
  %168 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !26
  store i1 %168, i1* %FPU_C3, align 1, !mcsema_real_eip !26
  %169 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !26
  store i3 %169, i3* %FPU_TOP, align 1, !mcsema_real_eip !26
  %170 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !26
  store i1 %170, i1* %FPU_C2, align 1, !mcsema_real_eip !26
  %171 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !26
  store i1 %171, i1* %FPU_C1, align 1, !mcsema_real_eip !26
  %172 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !26
  store i1 %172, i1* %FPU_C0, align 1, !mcsema_real_eip !26
  %173 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !26
  store i1 %173, i1* %FPU_ES, align 1, !mcsema_real_eip !26
  %174 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !26
  store i1 %174, i1* %FPU_SF, align 1, !mcsema_real_eip !26
  %175 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !26
  store i1 %175, i1* %FPU_PE, align 1, !mcsema_real_eip !26
  %176 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !26
  store i1 %176, i1* %FPU_UE, align 1, !mcsema_real_eip !26
  %177 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !26
  store i1 %177, i1* %FPU_OE, align 1, !mcsema_real_eip !26
  %178 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !26
  store i1 %178, i1* %FPU_ZE, align 1, !mcsema_real_eip !26
  %179 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !26
  store i1 %179, i1* %FPU_DE, align 1, !mcsema_real_eip !26
  %180 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !26
  store i1 %180, i1* %FPU_IE, align 1, !mcsema_real_eip !26
  %181 = load i1, i1* %FPU_X_val, !mcsema_real_eip !26
  store i1 %181, i1* %FPU_X, align 1, !mcsema_real_eip !26
  %182 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !26
  store i2 %182, i2* %FPU_RC, align 1, !mcsema_real_eip !26
  %183 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !26
  store i2 %183, i2* %FPU_PC, align 1, !mcsema_real_eip !26
  %184 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !26
  store i1 %184, i1* %FPU_PM, align 1, !mcsema_real_eip !26
  %185 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !26
  store i1 %185, i1* %FPU_UM, align 1, !mcsema_real_eip !26
  %186 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !26
  store i1 %186, i1* %FPU_OM, align 1, !mcsema_real_eip !26
  %187 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !26
  store i1 %187, i1* %FPU_ZM, align 1, !mcsema_real_eip !26
  %188 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !26
  store i1 %188, i1* %FPU_DM, align 1, !mcsema_real_eip !26
  %189 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !26
  store i1 %189, i1* %FPU_IM, align 1, !mcsema_real_eip !26
  %190 = load i64, i64* %53, align 4
  store i64 %190, i64* %52, align 4
  %191 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !26
  store i16 %191, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !26
  %192 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !26
  store i64 %192, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !26
  %193 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !26
  store i16 %193, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !26
  %194 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !26
  store i64 %194, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !26
  %195 = load i128, i128* %XMM0_val, !mcsema_real_eip !26
  store i128 %195, i128* %XMM0, align 1, !mcsema_real_eip !26
  %196 = load i128, i128* %XMM1_val, !mcsema_real_eip !26
  store i128 %196, i128* %XMM1, align 1, !mcsema_real_eip !26
  %197 = load i128, i128* %XMM2_val, !mcsema_real_eip !26
  store i128 %197, i128* %XMM2, align 1, !mcsema_real_eip !26
  %198 = load i128, i128* %XMM3_val, !mcsema_real_eip !26
  store i128 %198, i128* %XMM3, align 1, !mcsema_real_eip !26
  %199 = load i128, i128* %XMM4_val, !mcsema_real_eip !26
  store i128 %199, i128* %XMM4, align 1, !mcsema_real_eip !26
  %200 = load i128, i128* %XMM5_val, !mcsema_real_eip !26
  store i128 %200, i128* %XMM5, align 1, !mcsema_real_eip !26
  %201 = load i128, i128* %XMM6_val, !mcsema_real_eip !26
  store i128 %201, i128* %XMM6, align 1, !mcsema_real_eip !26
  %202 = load i128, i128* %XMM7_val, !mcsema_real_eip !26
  store i128 %202, i128* %XMM7, align 1, !mcsema_real_eip !26
  %203 = load i128, i128* %XMM8_val, !mcsema_real_eip !26
  store i128 %203, i128* %XMM8, align 1, !mcsema_real_eip !26
  %204 = load i128, i128* %XMM9_val, !mcsema_real_eip !26
  store i128 %204, i128* %XMM9, align 1, !mcsema_real_eip !26
  %205 = load i128, i128* %XMM10_val, !mcsema_real_eip !26
  store i128 %205, i128* %XMM10, align 1, !mcsema_real_eip !26
  %206 = load i128, i128* %XMM11_val, !mcsema_real_eip !26
  store i128 %206, i128* %XMM11, align 1, !mcsema_real_eip !26
  %207 = load i128, i128* %XMM12_val, !mcsema_real_eip !26
  store i128 %207, i128* %XMM12, align 1, !mcsema_real_eip !26
  %208 = load i128, i128* %XMM13_val, !mcsema_real_eip !26
  store i128 %208, i128* %XMM13, align 1, !mcsema_real_eip !26
  %209 = load i128, i128* %XMM14_val, !mcsema_real_eip !26
  store i128 %209, i128* %XMM14, align 1, !mcsema_real_eip !26
  %210 = load i128, i128* %XMM15_val, !mcsema_real_eip !26
  store i128 %210, i128* %XMM15, align 1, !mcsema_real_eip !26
  %211 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !26
  store i64 %211, i64* %STACK_BASE, align 1, !mcsema_real_eip !26
  %212 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !26
  store i64 %212, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !26
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !26
  %213 = load i64, i64* %RAX, !mcsema_real_eip !26
  store i64 %213, i64* %RAX_val, !mcsema_real_eip !26
  %214 = load i64, i64* %RBX, !mcsema_real_eip !26
  store i64 %214, i64* %RBX_val, !mcsema_real_eip !26
  %215 = load i64, i64* %RCX, !mcsema_real_eip !26
  store i64 %215, i64* %RCX_val, !mcsema_real_eip !26
  %216 = load i64, i64* %RDX, !mcsema_real_eip !26
  store i64 %216, i64* %RDX_val, !mcsema_real_eip !26
  %217 = load i64, i64* %RSI, !mcsema_real_eip !26
  store i64 %217, i64* %RSI_val, !mcsema_real_eip !26
  %218 = load i64, i64* %RDI, !mcsema_real_eip !26
  store i64 %218, i64* %RDI_val, !mcsema_real_eip !26
  %219 = load i64, i64* %RSP, !mcsema_real_eip !26
  store i64 %219, i64* %RSP_val, !mcsema_real_eip !26
  %220 = load i64, i64* %RBP, !mcsema_real_eip !26
  store i64 %220, i64* %RBP_val, !mcsema_real_eip !26
  %221 = load i64, i64* %R8, !mcsema_real_eip !26
  store i64 %221, i64* %R8_val, !mcsema_real_eip !26
  %222 = load i64, i64* %R9, !mcsema_real_eip !26
  store i64 %222, i64* %R9_val, !mcsema_real_eip !26
  %223 = load i64, i64* %R10, !mcsema_real_eip !26
  store i64 %223, i64* %R10_val, !mcsema_real_eip !26
  %224 = load i64, i64* %R11, !mcsema_real_eip !26
  store i64 %224, i64* %R11_val, !mcsema_real_eip !26
  %225 = load i64, i64* %R12, !mcsema_real_eip !26
  store i64 %225, i64* %R12_val, !mcsema_real_eip !26
  %226 = load i64, i64* %R13, !mcsema_real_eip !26
  store i64 %226, i64* %R13_val, !mcsema_real_eip !26
  %227 = load i64, i64* %R14, !mcsema_real_eip !26
  store i64 %227, i64* %R14_val, !mcsema_real_eip !26
  %228 = load i64, i64* %R15, !mcsema_real_eip !26
  store i64 %228, i64* %R15_val, !mcsema_real_eip !26
  %229 = load i64, i64* %RIP, !mcsema_real_eip !26
  store i64 %229, i64* %RIP_val, !mcsema_real_eip !26
  %230 = load i1, i1* %CF, align 1, !mcsema_real_eip !26
  store i1 %230, i1* %CF_val, !mcsema_real_eip !26
  %231 = load i1, i1* %PF, align 1, !mcsema_real_eip !26
  store i1 %231, i1* %PF_val, !mcsema_real_eip !26
  %232 = load i1, i1* %AF, align 1, !mcsema_real_eip !26
  store i1 %232, i1* %AF_val, !mcsema_real_eip !26
  %233 = load i1, i1* %ZF, align 1, !mcsema_real_eip !26
  store i1 %233, i1* %ZF_val, !mcsema_real_eip !26
  %234 = load i1, i1* %SF, align 1, !mcsema_real_eip !26
  store i1 %234, i1* %SF_val, !mcsema_real_eip !26
  %235 = load i1, i1* %OF, align 1, !mcsema_real_eip !26
  store i1 %235, i1* %OF_val, !mcsema_real_eip !26
  %236 = load i1, i1* %DF, align 1, !mcsema_real_eip !26
  store i1 %236, i1* %DF_val, !mcsema_real_eip !26
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !26
  %237 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !26
  store i1 %237, i1* %FPU_B_val, !mcsema_real_eip !26
  %238 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !26
  store i1 %238, i1* %FPU_C3_val, !mcsema_real_eip !26
  %239 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !26
  store i3 %239, i3* %FPU_TOP_val, !mcsema_real_eip !26
  %240 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !26
  store i1 %240, i1* %FPU_C2_val, !mcsema_real_eip !26
  %241 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !26
  store i1 %241, i1* %FPU_C1_val, !mcsema_real_eip !26
  %242 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !26
  store i1 %242, i1* %FPU_C0_val, !mcsema_real_eip !26
  %243 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !26
  store i1 %243, i1* %FPU_ES_val, !mcsema_real_eip !26
  %244 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !26
  store i1 %244, i1* %FPU_SF_val, !mcsema_real_eip !26
  %245 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !26
  store i1 %245, i1* %FPU_PE_val, !mcsema_real_eip !26
  %246 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !26
  store i1 %246, i1* %FPU_UE_val, !mcsema_real_eip !26
  %247 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !26
  store i1 %247, i1* %FPU_OE_val, !mcsema_real_eip !26
  %248 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !26
  store i1 %248, i1* %FPU_ZE_val, !mcsema_real_eip !26
  %249 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !26
  store i1 %249, i1* %FPU_DE_val, !mcsema_real_eip !26
  %250 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !26
  store i1 %250, i1* %FPU_IE_val, !mcsema_real_eip !26
  %251 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !26
  store i1 %251, i1* %FPU_X_val, !mcsema_real_eip !26
  %252 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !26
  store i2 %252, i2* %FPU_RC_val, !mcsema_real_eip !26
  %253 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !26
  store i2 %253, i2* %FPU_PC_val, !mcsema_real_eip !26
  %254 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !26
  store i1 %254, i1* %FPU_PM_val, !mcsema_real_eip !26
  %255 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !26
  store i1 %255, i1* %FPU_UM_val, !mcsema_real_eip !26
  %256 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !26
  store i1 %256, i1* %FPU_OM_val, !mcsema_real_eip !26
  %257 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !26
  store i1 %257, i1* %FPU_ZM_val, !mcsema_real_eip !26
  %258 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !26
  store i1 %258, i1* %FPU_DM_val, !mcsema_real_eip !26
  %259 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !26
  store i1 %259, i1* %FPU_IM_val, !mcsema_real_eip !26
  %260 = load i64, i64* %52, align 4
  store i64 %260, i64* %53, align 4
  %261 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !26
  store i16 %261, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !26
  %262 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !26
  store i64 %262, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !26
  %263 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !26
  store i16 %263, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !26
  %264 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !26
  store i64 %264, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !26
  %265 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !26
  store i128 %265, i128* %XMM0_val, !mcsema_real_eip !26
  %266 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !26
  store i128 %266, i128* %XMM1_val, !mcsema_real_eip !26
  %267 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !26
  store i128 %267, i128* %XMM2_val, !mcsema_real_eip !26
  %268 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !26
  store i128 %268, i128* %XMM3_val, !mcsema_real_eip !26
  %269 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !26
  store i128 %269, i128* %XMM4_val, !mcsema_real_eip !26
  %270 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !26
  store i128 %270, i128* %XMM5_val, !mcsema_real_eip !26
  %271 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !26
  store i128 %271, i128* %XMM6_val, !mcsema_real_eip !26
  %272 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !26
  store i128 %272, i128* %XMM7_val, !mcsema_real_eip !26
  %273 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !26
  store i128 %273, i128* %XMM8_val, !mcsema_real_eip !26
  %274 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !26
  store i128 %274, i128* %XMM9_val, !mcsema_real_eip !26
  %275 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !26
  store i128 %275, i128* %XMM10_val, !mcsema_real_eip !26
  %276 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !26
  store i128 %276, i128* %XMM11_val, !mcsema_real_eip !26
  %277 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !26
  store i128 %277, i128* %XMM12_val, !mcsema_real_eip !26
  %278 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !26
  store i128 %278, i128* %XMM13_val, !mcsema_real_eip !26
  %279 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !26
  store i128 %279, i128* %XMM14_val, !mcsema_real_eip !26
  %280 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !26
  store i128 %280, i128* %XMM15_val, !mcsema_real_eip !26
  %281 = load i64, i64* %STACK_BASE, !mcsema_real_eip !26
  store i64 %281, i64* %STACK_BASE_val, !mcsema_real_eip !26
  %282 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !26
  store i64 %282, i64* %STACK_LIMIT_val, !mcsema_real_eip !26
  %283 = load i64, i64* %RSP_val, !mcsema_real_eip !27
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %283, i64 40)
  %284 = extractvalue { i64, i1 } %uadd, 0
  %285 = xor i64 %284, %283, !mcsema_real_eip !27
  %286 = and i64 %285, 16, !mcsema_real_eip !27
  %287 = icmp ne i64 %286, 0, !mcsema_real_eip !27
  store i1 %287, i1* %AF_val, !mcsema_real_eip !27
  %288 = icmp slt i64 %284, 0
  store i1 %288, i1* %SF_val, !mcsema_real_eip !27
  %289 = icmp eq i64 %284, 0, !mcsema_real_eip !27
  store i1 %289, i1* %ZF_val, !mcsema_real_eip !27
  %290 = xor i64 %283, -9223372036854775808, !mcsema_real_eip !27
  %291 = and i64 %285, %290, !mcsema_real_eip !27
  %292 = icmp slt i64 %291, 0
  store i1 %292, i1* %OF_val, !mcsema_real_eip !27
  %293 = trunc i64 %284 to i8, !mcsema_real_eip !27
  %294 = tail call i8 @llvm.ctpop.i8(i8 %293), !mcsema_real_eip !27
  %295 = and i8 %294, 1
  %296 = icmp eq i8 %295, 0
  store i1 %296, i1* %PF_val, !mcsema_real_eip !27
  %297 = extractvalue { i64, i1 } %uadd, 1
  store i1 %297, i1* %CF_val, !mcsema_real_eip !27
  store i64 %284, i64* %RSP_val, !mcsema_real_eip !27
  %298 = inttoptr i64 %284 to i64*, !mcsema_real_eip !28
  %299 = load i64, i64* %298, !mcsema_real_eip !28
  store i64 %299, i64* %RBX_val, !mcsema_real_eip !28
  %300 = add i64 %284, 8, !mcsema_real_eip !28
  store i64 %300, i64* %RSP_val, !mcsema_real_eip !28
  %301 = inttoptr i64 %300 to i64*, !mcsema_real_eip !29
  %302 = load i64, i64* %301, !mcsema_real_eip !29
  store i64 %302, i64* %RBP_val, !mcsema_real_eip !29
  %303 = add i64 %284, 24, !mcsema_real_eip !30
  store i64 %303, i64* %RSP_val, !mcsema_real_eip !30
  %304 = load i64, i64* %RAX_val, !mcsema_real_eip !30
  store i64 %304, i64* %RAX, !mcsema_real_eip !30
  %305 = load i64, i64* %RBX_val, !mcsema_real_eip !30
  store i64 %305, i64* %RBX, !mcsema_real_eip !30
  %306 = load i64, i64* %RCX_val, !mcsema_real_eip !30
  store i64 %306, i64* %RCX, !mcsema_real_eip !30
  %307 = load i64, i64* %RDX_val, !mcsema_real_eip !30
  store i64 %307, i64* %RDX, !mcsema_real_eip !30
  %308 = load i64, i64* %RSI_val, !mcsema_real_eip !30
  store i64 %308, i64* %RSI, !mcsema_real_eip !30
  %309 = load i64, i64* %RDI_val, !mcsema_real_eip !30
  store i64 %309, i64* %RDI, !mcsema_real_eip !30
  %310 = load i64, i64* %RSP_val, !mcsema_real_eip !30
  store i64 %310, i64* %RSP, !mcsema_real_eip !30
  %311 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  store i64 %311, i64* %RBP, !mcsema_real_eip !30
  %312 = load i64, i64* %R8_val, !mcsema_real_eip !30
  store i64 %312, i64* %R8, !mcsema_real_eip !30
  %313 = load i64, i64* %R9_val, !mcsema_real_eip !30
  store i64 %313, i64* %R9, !mcsema_real_eip !30
  %314 = load i64, i64* %R10_val, !mcsema_real_eip !30
  store i64 %314, i64* %R10, !mcsema_real_eip !30
  %315 = load i64, i64* %R11_val, !mcsema_real_eip !30
  store i64 %315, i64* %R11, !mcsema_real_eip !30
  %316 = load i64, i64* %R12_val, !mcsema_real_eip !30
  store i64 %316, i64* %R12, !mcsema_real_eip !30
  %317 = load i64, i64* %R13_val, !mcsema_real_eip !30
  store i64 %317, i64* %R13, !mcsema_real_eip !30
  %318 = load i64, i64* %R14_val, !mcsema_real_eip !30
  store i64 %318, i64* %R14, !mcsema_real_eip !30
  %319 = load i64, i64* %R15_val, !mcsema_real_eip !30
  store i64 %319, i64* %R15, !mcsema_real_eip !30
  %320 = load i64, i64* %RIP_val, !mcsema_real_eip !30
  store i64 %320, i64* %RIP, !mcsema_real_eip !30
  %321 = load i1, i1* %CF_val, !mcsema_real_eip !30
  store i1 %321, i1* %CF, align 1, !mcsema_real_eip !30
  %322 = load i1, i1* %PF_val, !mcsema_real_eip !30
  store i1 %322, i1* %PF, align 1, !mcsema_real_eip !30
  %323 = load i1, i1* %AF_val, !mcsema_real_eip !30
  store i1 %323, i1* %AF, align 1, !mcsema_real_eip !30
  %324 = load i1, i1* %ZF_val, !mcsema_real_eip !30
  store i1 %324, i1* %ZF, align 1, !mcsema_real_eip !30
  %325 = load i1, i1* %SF_val, !mcsema_real_eip !30
  store i1 %325, i1* %SF, align 1, !mcsema_real_eip !30
  %326 = load i1, i1* %OF_val, !mcsema_real_eip !30
  store i1 %326, i1* %OF, align 1, !mcsema_real_eip !30
  %327 = load i1, i1* %DF_val, !mcsema_real_eip !30
  store i1 %327, i1* %DF, align 1, !mcsema_real_eip !30
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !30
  %328 = load i1, i1* %FPU_B_val, !mcsema_real_eip !30
  store i1 %328, i1* %FPU_B, align 1, !mcsema_real_eip !30
  %329 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !30
  store i1 %329, i1* %FPU_C3, align 1, !mcsema_real_eip !30
  %330 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !30
  store i3 %330, i3* %FPU_TOP, align 1, !mcsema_real_eip !30
  %331 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !30
  store i1 %331, i1* %FPU_C2, align 1, !mcsema_real_eip !30
  %332 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !30
  store i1 %332, i1* %FPU_C1, align 1, !mcsema_real_eip !30
  %333 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !30
  store i1 %333, i1* %FPU_C0, align 1, !mcsema_real_eip !30
  %334 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !30
  store i1 %334, i1* %FPU_ES, align 1, !mcsema_real_eip !30
  %335 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !30
  store i1 %335, i1* %FPU_SF, align 1, !mcsema_real_eip !30
  %336 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !30
  store i1 %336, i1* %FPU_PE, align 1, !mcsema_real_eip !30
  %337 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !30
  store i1 %337, i1* %FPU_UE, align 1, !mcsema_real_eip !30
  %338 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !30
  store i1 %338, i1* %FPU_OE, align 1, !mcsema_real_eip !30
  %339 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !30
  store i1 %339, i1* %FPU_ZE, align 1, !mcsema_real_eip !30
  %340 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !30
  store i1 %340, i1* %FPU_DE, align 1, !mcsema_real_eip !30
  %341 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !30
  store i1 %341, i1* %FPU_IE, align 1, !mcsema_real_eip !30
  %342 = load i1, i1* %FPU_X_val, !mcsema_real_eip !30
  store i1 %342, i1* %FPU_X, align 1, !mcsema_real_eip !30
  %343 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !30
  store i2 %343, i2* %FPU_RC, align 1, !mcsema_real_eip !30
  %344 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !30
  store i2 %344, i2* %FPU_PC, align 1, !mcsema_real_eip !30
  %345 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !30
  store i1 %345, i1* %FPU_PM, align 1, !mcsema_real_eip !30
  %346 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !30
  store i1 %346, i1* %FPU_UM, align 1, !mcsema_real_eip !30
  %347 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !30
  store i1 %347, i1* %FPU_OM, align 1, !mcsema_real_eip !30
  %348 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !30
  store i1 %348, i1* %FPU_ZM, align 1, !mcsema_real_eip !30
  %349 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !30
  store i1 %349, i1* %FPU_DM, align 1, !mcsema_real_eip !30
  %350 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !30
  store i1 %350, i1* %FPU_IM, align 1, !mcsema_real_eip !30
  %351 = load i64, i64* %53, align 4
  store i64 %351, i64* %52, align 4
  %352 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !30
  store i16 %352, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !30
  %353 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !30
  store i64 %353, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !30
  %354 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !30
  store i16 %354, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !30
  %355 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !30
  store i64 %355, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !30
  %356 = load i128, i128* %XMM0_val, !mcsema_real_eip !30
  store i128 %356, i128* %XMM0, align 1, !mcsema_real_eip !30
  %357 = load i128, i128* %XMM1_val, !mcsema_real_eip !30
  store i128 %357, i128* %XMM1, align 1, !mcsema_real_eip !30
  %358 = load i128, i128* %XMM2_val, !mcsema_real_eip !30
  store i128 %358, i128* %XMM2, align 1, !mcsema_real_eip !30
  %359 = load i128, i128* %XMM3_val, !mcsema_real_eip !30
  store i128 %359, i128* %XMM3, align 1, !mcsema_real_eip !30
  %360 = load i128, i128* %XMM4_val, !mcsema_real_eip !30
  store i128 %360, i128* %XMM4, align 1, !mcsema_real_eip !30
  %361 = load i128, i128* %XMM5_val, !mcsema_real_eip !30
  store i128 %361, i128* %XMM5, align 1, !mcsema_real_eip !30
  %362 = load i128, i128* %XMM6_val, !mcsema_real_eip !30
  store i128 %362, i128* %XMM6, align 1, !mcsema_real_eip !30
  %363 = load i128, i128* %XMM7_val, !mcsema_real_eip !30
  store i128 %363, i128* %XMM7, align 1, !mcsema_real_eip !30
  %364 = load i128, i128* %XMM8_val, !mcsema_real_eip !30
  store i128 %364, i128* %XMM8, align 1, !mcsema_real_eip !30
  %365 = load i128, i128* %XMM9_val, !mcsema_real_eip !30
  store i128 %365, i128* %XMM9, align 1, !mcsema_real_eip !30
  %366 = load i128, i128* %XMM10_val, !mcsema_real_eip !30
  store i128 %366, i128* %XMM10, align 1, !mcsema_real_eip !30
  %367 = load i128, i128* %XMM11_val, !mcsema_real_eip !30
  store i128 %367, i128* %XMM11, align 1, !mcsema_real_eip !30
  %368 = load i128, i128* %XMM12_val, !mcsema_real_eip !30
  store i128 %368, i128* %XMM12, align 1, !mcsema_real_eip !30
  %369 = load i128, i128* %XMM13_val, !mcsema_real_eip !30
  store i128 %369, i128* %XMM13, align 1, !mcsema_real_eip !30
  %370 = load i128, i128* %XMM14_val, !mcsema_real_eip !30
  store i128 %370, i128* %XMM14, align 1, !mcsema_real_eip !30
  %371 = load i128, i128* %XMM15_val, !mcsema_real_eip !30
  store i128 %371, i128* %XMM15, align 1, !mcsema_real_eip !30
  %372 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !30
  store i64 %372, i64* %STACK_BASE, align 1, !mcsema_real_eip !30
  %373 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !30
  store i64 %373, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !30
  ret void, !mcsema_real_eip !30
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !31
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !31
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !31
  %XMM15_val = alloca i128, !mcsema_real_eip !31
  %XMM14_val = alloca i128, !mcsema_real_eip !31
  %XMM13_val = alloca i128, !mcsema_real_eip !31
  %XMM12_val = alloca i128, !mcsema_real_eip !31
  %XMM11_val = alloca i128, !mcsema_real_eip !31
  %XMM10_val = alloca i128, !mcsema_real_eip !31
  %XMM9_val = alloca i128, !mcsema_real_eip !31
  %XMM8_val = alloca i128, !mcsema_real_eip !31
  %XMM7_val = alloca i128, !mcsema_real_eip !31
  %XMM6_val = alloca i128, !mcsema_real_eip !31
  %XMM5_val = alloca i128, !mcsema_real_eip !31
  %XMM4_val = alloca i128, !mcsema_real_eip !31
  %XMM3_val = alloca i128, !mcsema_real_eip !31
  %XMM2_val = alloca i128, !mcsema_real_eip !31
  %XMM1_val = alloca i128, !mcsema_real_eip !31
  %XMM0_val = alloca i128, !mcsema_real_eip !31
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !31
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !31
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !31
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !31
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !31
  %FPU_IM_val = alloca i1, !mcsema_real_eip !31
  %FPU_DM_val = alloca i1, !mcsema_real_eip !31
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !31
  %FPU_OM_val = alloca i1, !mcsema_real_eip !31
  %FPU_UM_val = alloca i1, !mcsema_real_eip !31
  %FPU_PM_val = alloca i1, !mcsema_real_eip !31
  %FPU_PC_val = alloca i2, !mcsema_real_eip !31
  %FPU_RC_val = alloca i2, !mcsema_real_eip !31
  %FPU_X_val = alloca i1, !mcsema_real_eip !31
  %FPU_IE_val = alloca i1, !mcsema_real_eip !31
  %FPU_DE_val = alloca i1, !mcsema_real_eip !31
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !31
  %FPU_OE_val = alloca i1, !mcsema_real_eip !31
  %FPU_UE_val = alloca i1, !mcsema_real_eip !31
  %FPU_PE_val = alloca i1, !mcsema_real_eip !31
  %FPU_SF_val = alloca i1, !mcsema_real_eip !31
  %FPU_ES_val = alloca i1, !mcsema_real_eip !31
  %FPU_C0_val = alloca i1, !mcsema_real_eip !31
  %FPU_C1_val = alloca i1, !mcsema_real_eip !31
  %FPU_C2_val = alloca i1, !mcsema_real_eip !31
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !31
  %FPU_C3_val = alloca i1, !mcsema_real_eip !31
  %FPU_B_val = alloca i1, !mcsema_real_eip !31
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !31
  %DF_val = alloca i1, !mcsema_real_eip !31
  %OF_val = alloca i1, !mcsema_real_eip !31
  %SF_val = alloca i1, !mcsema_real_eip !31
  %CF_val = alloca i1, !mcsema_real_eip !31
  %AF_val = alloca i1, !mcsema_real_eip !31
  %PF_val = alloca i1, !mcsema_real_eip !31
  %ZF_val = alloca i1, !mcsema_real_eip !31
  %RIP_val = alloca i64, !mcsema_real_eip !31
  %R14_val = alloca i64, !mcsema_real_eip !31
  %R13_val = alloca i64, !mcsema_real_eip !31
  %R12_val = alloca i64, !mcsema_real_eip !31
  %R11_val = alloca i64, !mcsema_real_eip !31
  %R10_val = alloca i64, !mcsema_real_eip !31
  %R9_val = alloca i64, !mcsema_real_eip !31
  %R8_val = alloca i64, !mcsema_real_eip !31
  %RSP_val = alloca i64, !mcsema_real_eip !31
  %RBP_val = alloca i64, !mcsema_real_eip !31
  %RDI_val = alloca i64, !mcsema_real_eip !31
  %RSI_val = alloca i64, !mcsema_real_eip !31
  %RDX_val = alloca i64, !mcsema_real_eip !31
  %RCX_val = alloca i64, !mcsema_real_eip !31
  %RBX_val = alloca i64, !mcsema_real_eip !31
  %RAX_val = alloca i64, !mcsema_real_eip !31
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !31
  %1 = load i64, i64* %RAX, !mcsema_real_eip !31
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !31
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !31
  %2 = load i64, i64* %RBX, !mcsema_real_eip !31
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !31
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !31
  %3 = load i64, i64* %RCX, !mcsema_real_eip !31
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !31
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !31
  %4 = load i64, i64* %RDX, !mcsema_real_eip !31
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !31
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !31
  %5 = load i64, i64* %RSI, !mcsema_real_eip !31
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !31
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !31
  %6 = load i64, i64* %RDI, !mcsema_real_eip !31
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !31
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !31
  %7 = load i64, i64* %RSP, !mcsema_real_eip !31
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !31
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !31
  %8 = load i64, i64* %RBP, !mcsema_real_eip !31
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !31
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !31
  %9 = load i64, i64* %R8, !mcsema_real_eip !31
  store i64 %9, i64* %R8_val, !mcsema_real_eip !31
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !31
  %10 = load i64, i64* %R9, !mcsema_real_eip !31
  store i64 %10, i64* %R9_val, !mcsema_real_eip !31
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !31
  %11 = load i64, i64* %R10, !mcsema_real_eip !31
  store i64 %11, i64* %R10_val, !mcsema_real_eip !31
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !31
  %12 = load i64, i64* %R11, !mcsema_real_eip !31
  store i64 %12, i64* %R11_val, !mcsema_real_eip !31
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !31
  %13 = load i64, i64* %R12, !mcsema_real_eip !31
  store i64 %13, i64* %R12_val, !mcsema_real_eip !31
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !31
  %14 = load i64, i64* %R13, !mcsema_real_eip !31
  store i64 %14, i64* %R13_val, !mcsema_real_eip !31
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !31
  %15 = load i64, i64* %R14, !mcsema_real_eip !31
  store i64 %15, i64* %R14_val, !mcsema_real_eip !31
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !31
  %16 = load i64, i64* %R15, !mcsema_real_eip !31
  store i64 %16, i64* %R15_val, !mcsema_real_eip !31
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !31
  %17 = load i64, i64* %RIP, !mcsema_real_eip !31
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !31
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !31
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !31
  store i1 %18, i1* %CF_val, !mcsema_real_eip !31
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !31
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !31
  store i1 %19, i1* %PF_val, !mcsema_real_eip !31
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !31
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !31
  store i1 %20, i1* %AF_val, !mcsema_real_eip !31
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !31
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !31
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !31
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !31
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !31
  store i1 %22, i1* %SF_val, !mcsema_real_eip !31
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !31
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !31
  store i1 %23, i1* %OF_val, !mcsema_real_eip !31
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !31
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !31
  store i1 %24, i1* %DF_val, !mcsema_real_eip !31
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !31
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !31
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !31
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !31
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !31
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !31
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !31
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !31
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !31
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !31
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !31
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !31
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !31
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !31
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !31
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !31
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !31
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !31
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !31
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !31
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !31
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !31
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !31
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !31
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !31
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !31
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !31
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !31
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !31
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !31
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !31
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !31
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !31
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !31
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !31
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !31
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !31
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !31
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !31
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !31
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !31
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !31
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !31
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !31
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !31
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !31
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !31
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !31
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !31
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !31
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !31
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !31
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !31
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !31
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !31
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !31
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !31
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !31
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !31
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !31
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !31
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !31
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !31
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !31
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !31
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !31
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !31
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !31
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !31
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !31
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !31
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !31
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !31
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !31
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !31
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !31
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !31
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !31
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !31
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !31
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !31
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !31
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !31
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !31
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !31
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !31
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !31
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !31
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !31
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !31
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !31
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !31
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !31
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !31
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !31
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !31
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !31
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !31
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !31
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !31
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !31
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !31
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !31
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !31
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !31
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !31
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !31
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !31
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !31
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !31
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !31
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !31
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !31
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !31
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !31
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !31
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !31
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !31
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !31
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !31
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !31
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !31
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !31
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !31
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !31
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !31
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !31
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !31
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !31
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !31
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !31
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !31
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !31
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !31
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !31
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !31
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !31
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !31
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !31
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !31
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %78 = load i64, i64* %RSP_val, !mcsema_real_eip !31
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !31
  store i64 %77, i64* %80, !mcsema_real_eip !31
  store i64 %79, i64* %RSP_val, !mcsema_real_eip !31
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !32
  %81 = add i64 %78, 16, !mcsema_real_eip !33
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !33
  %83 = bitcast i64* %82 to i32*
  %84 = load i32, i32* %83, !mcsema_real_eip !33
  %85 = zext i32 %84 to i64, !mcsema_real_eip !33
  store i64 %85, i64* %RAX_val, !mcsema_real_eip !33
  %86 = load i64, i64* %RBP_val, !mcsema_real_eip !34
  %87 = add i64 %86, 16, !mcsema_real_eip !34
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !34
  %89 = bitcast i64* %88 to i32*
  %90 = load i32, i32* %89, !mcsema_real_eip !34
  %91 = zext i32 %90 to i64, !mcsema_real_eip !34
  store i64 %91, i64* %R10_val, !mcsema_real_eip !34
  %92 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %93 = add i64 %92, -4, !mcsema_real_eip !35
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !35
  %95 = load i64, i64* %RDI_val, !mcsema_real_eip !35
  %96 = trunc i64 %95 to i32, !mcsema_real_eip !35
  %97 = bitcast i64* %94 to i32*
  store i32 %96, i32* %97, !mcsema_real_eip !35
  %98 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  %99 = add i64 %98, -8, !mcsema_real_eip !36
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !36
  %101 = load i64, i64* %RSI_val, !mcsema_real_eip !36
  %102 = trunc i64 %101 to i32, !mcsema_real_eip !36
  %103 = bitcast i64* %100 to i32*
  store i32 %102, i32* %103, !mcsema_real_eip !36
  %104 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %105 = add i64 %104, -12, !mcsema_real_eip !37
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !37
  %107 = load i64, i64* %RDX_val, !mcsema_real_eip !37
  %108 = trunc i64 %107 to i32, !mcsema_real_eip !37
  %109 = bitcast i64* %106 to i32*
  store i32 %108, i32* %109, !mcsema_real_eip !37
  %110 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %111 = add i64 %110, -16, !mcsema_real_eip !38
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !38
  %113 = load i64, i64* %RCX_val, !mcsema_real_eip !38
  %114 = trunc i64 %113 to i32, !mcsema_real_eip !38
  %115 = bitcast i64* %112 to i32*
  store i32 %114, i32* %115, !mcsema_real_eip !38
  %116 = load i64, i64* %RBP_val, !mcsema_real_eip !39
  %117 = add i64 %116, -20, !mcsema_real_eip !39
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !39
  %119 = load i64, i64* %R8_val, !mcsema_real_eip !39
  %120 = trunc i64 %119 to i32, !mcsema_real_eip !39
  %121 = bitcast i64* %118 to i32*
  store i32 %120, i32* %121, !mcsema_real_eip !39
  %122 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %123 = add i64 %122, -24, !mcsema_real_eip !40
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !40
  %125 = load i64, i64* %R9_val, !mcsema_real_eip !40
  %126 = trunc i64 %125 to i32, !mcsema_real_eip !40
  %127 = bitcast i64* %124 to i32*
  store i32 %126, i32* %127, !mcsema_real_eip !40
  %128 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %129 = add i64 %128, -28, !mcsema_real_eip !41
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !41
  %131 = load i64, i64* %R10_val, !mcsema_real_eip !41
  %132 = trunc i64 %131 to i32, !mcsema_real_eip !41
  %133 = bitcast i64* %130 to i32*
  store i32 %132, i32* %133, !mcsema_real_eip !41
  %134 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  %135 = add i64 %134, -32, !mcsema_real_eip !42
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !42
  %137 = load i64, i64* %RAX_val, !mcsema_real_eip !42
  %138 = trunc i64 %137 to i32, !mcsema_real_eip !42
  %139 = bitcast i64* %136 to i32*
  store i32 %138, i32* %139, !mcsema_real_eip !42
  %140 = load i64, i64* %RBP_val, !mcsema_real_eip !43
  %141 = add i64 %140, -28, !mcsema_real_eip !43
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !43
  %143 = bitcast i64* %142 to i32*
  %144 = load i32, i32* %143, !mcsema_real_eip !43
  %145 = zext i32 %144 to i64, !mcsema_real_eip !43
  store i64 %145, i64* %RAX_val, !mcsema_real_eip !43
  %146 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  %147 = add i64 %146, -32, !mcsema_real_eip !44
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !44
  %149 = bitcast i64* %148 to i32*
  %150 = load i32, i32* %149, !mcsema_real_eip !44
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %144, i32 %150)
  %151 = extractvalue { i32, i1 } %uadd, 0
  %152 = xor i32 %151, %150, !mcsema_real_eip !44
  %153 = xor i32 %152, %144, !mcsema_real_eip !44
  %154 = and i32 %153, 16, !mcsema_real_eip !44
  %155 = icmp ne i32 %154, 0, !mcsema_real_eip !44
  store i1 %155, i1* %AF_val, !mcsema_real_eip !44
  %156 = icmp slt i32 %151, 0
  store i1 %156, i1* %SF_val, !mcsema_real_eip !44
  %157 = icmp eq i32 %151, 0, !mcsema_real_eip !44
  store i1 %157, i1* %ZF_val, !mcsema_real_eip !44
  %158 = xor i32 %144, -2147483648, !mcsema_real_eip !44
  %159 = xor i32 %158, %150, !mcsema_real_eip !44
  %160 = and i32 %152, %159, !mcsema_real_eip !44
  %161 = icmp slt i32 %160, 0
  store i1 %161, i1* %OF_val, !mcsema_real_eip !44
  %162 = trunc i32 %151 to i8, !mcsema_real_eip !44
  %163 = tail call i8 @llvm.ctpop.i8(i8 %162), !mcsema_real_eip !44
  %164 = and i8 %163, 1
  %165 = icmp eq i8 %164, 0
  store i1 %165, i1* %PF_val, !mcsema_real_eip !44
  %166 = extractvalue { i32, i1 } %uadd, 1
  store i1 %166, i1* %CF_val, !mcsema_real_eip !44
  %167 = zext i32 %151 to i64, !mcsema_real_eip !44
  store i64 %167, i64* %RAX_val, !mcsema_real_eip !44
  %168 = load i64, i64* %RBP_val, !mcsema_real_eip !45
  %169 = add i64 %168, -36, !mcsema_real_eip !45
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !45
  %171 = bitcast i64* %170 to i32*
  store i32 %151, i32* %171, !mcsema_real_eip !45
  %172 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %173 = add i64 %172, -36, !mcsema_real_eip !46
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !46
  %175 = bitcast i64* %174 to i32*
  %176 = load i32, i32* %175, !mcsema_real_eip !46
  %177 = zext i32 %176 to i64, !mcsema_real_eip !46
  store i64 %177, i64* %RAX_val, !mcsema_real_eip !46
  %178 = load i64, i64* %RSP_val, !mcsema_real_eip !47
  %179 = inttoptr i64 %178 to i64*, !mcsema_real_eip !47
  %180 = load i64, i64* %179, !mcsema_real_eip !47
  store i64 %180, i64* %RBP_val, !mcsema_real_eip !47
  %181 = add i64 %178, 16, !mcsema_real_eip !48
  store i64 %181, i64* %RSP_val, !mcsema_real_eip !48
  %182 = load i64, i64* %RAX_val, !mcsema_real_eip !48
  store i64 %182, i64* %RAX, !mcsema_real_eip !48
  %183 = load i64, i64* %RBX_val, !mcsema_real_eip !48
  store i64 %183, i64* %RBX, !mcsema_real_eip !48
  %184 = load i64, i64* %RCX_val, !mcsema_real_eip !48
  store i64 %184, i64* %RCX, !mcsema_real_eip !48
  %185 = load i64, i64* %RDX_val, !mcsema_real_eip !48
  store i64 %185, i64* %RDX, !mcsema_real_eip !48
  %186 = load i64, i64* %RSI_val, !mcsema_real_eip !48
  store i64 %186, i64* %RSI, !mcsema_real_eip !48
  %187 = load i64, i64* %RDI_val, !mcsema_real_eip !48
  store i64 %187, i64* %RDI, !mcsema_real_eip !48
  %188 = load i64, i64* %RSP_val, !mcsema_real_eip !48
  store i64 %188, i64* %RSP, !mcsema_real_eip !48
  %189 = load i64, i64* %RBP_val, !mcsema_real_eip !48
  store i64 %189, i64* %RBP, !mcsema_real_eip !48
  %190 = load i64, i64* %R8_val, !mcsema_real_eip !48
  store i64 %190, i64* %R8, !mcsema_real_eip !48
  %191 = load i64, i64* %R9_val, !mcsema_real_eip !48
  store i64 %191, i64* %R9, !mcsema_real_eip !48
  %192 = load i64, i64* %R10_val, !mcsema_real_eip !48
  store i64 %192, i64* %R10, !mcsema_real_eip !48
  %193 = load i64, i64* %R11_val, !mcsema_real_eip !48
  store i64 %193, i64* %R11, !mcsema_real_eip !48
  %194 = load i64, i64* %R12_val, !mcsema_real_eip !48
  store i64 %194, i64* %R12, !mcsema_real_eip !48
  %195 = load i64, i64* %R13_val, !mcsema_real_eip !48
  store i64 %195, i64* %R13, !mcsema_real_eip !48
  %196 = load i64, i64* %R14_val, !mcsema_real_eip !48
  store i64 %196, i64* %R14, !mcsema_real_eip !48
  %197 = load i64, i64* %R15_val, !mcsema_real_eip !48
  store i64 %197, i64* %R15, !mcsema_real_eip !48
  %198 = load i64, i64* %RIP_val, !mcsema_real_eip !48
  store i64 %198, i64* %RIP, !mcsema_real_eip !48
  %199 = load i1, i1* %CF_val, !mcsema_real_eip !48
  store i1 %199, i1* %CF, align 1, !mcsema_real_eip !48
  %200 = load i1, i1* %PF_val, !mcsema_real_eip !48
  store i1 %200, i1* %PF, align 1, !mcsema_real_eip !48
  %201 = load i1, i1* %AF_val, !mcsema_real_eip !48
  store i1 %201, i1* %AF, align 1, !mcsema_real_eip !48
  %202 = load i1, i1* %ZF_val, !mcsema_real_eip !48
  store i1 %202, i1* %ZF, align 1, !mcsema_real_eip !48
  %203 = load i1, i1* %SF_val, !mcsema_real_eip !48
  store i1 %203, i1* %SF, align 1, !mcsema_real_eip !48
  %204 = load i1, i1* %OF_val, !mcsema_real_eip !48
  store i1 %204, i1* %OF, align 1, !mcsema_real_eip !48
  %205 = load i1, i1* %DF_val, !mcsema_real_eip !48
  store i1 %205, i1* %DF, align 1, !mcsema_real_eip !48
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !48
  %206 = load i1, i1* %FPU_B_val, !mcsema_real_eip !48
  store i1 %206, i1* %FPU_B, align 1, !mcsema_real_eip !48
  %207 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !48
  store i1 %207, i1* %FPU_C3, align 1, !mcsema_real_eip !48
  %208 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !48
  store i3 %208, i3* %FPU_TOP, align 1, !mcsema_real_eip !48
  %209 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !48
  store i1 %209, i1* %FPU_C2, align 1, !mcsema_real_eip !48
  %210 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !48
  store i1 %210, i1* %FPU_C1, align 1, !mcsema_real_eip !48
  %211 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !48
  store i1 %211, i1* %FPU_C0, align 1, !mcsema_real_eip !48
  %212 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !48
  store i1 %212, i1* %FPU_ES, align 1, !mcsema_real_eip !48
  %213 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !48
  store i1 %213, i1* %FPU_SF, align 1, !mcsema_real_eip !48
  %214 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !48
  store i1 %214, i1* %FPU_PE, align 1, !mcsema_real_eip !48
  %215 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !48
  store i1 %215, i1* %FPU_UE, align 1, !mcsema_real_eip !48
  %216 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !48
  store i1 %216, i1* %FPU_OE, align 1, !mcsema_real_eip !48
  %217 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !48
  store i1 %217, i1* %FPU_ZE, align 1, !mcsema_real_eip !48
  %218 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !48
  store i1 %218, i1* %FPU_DE, align 1, !mcsema_real_eip !48
  %219 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !48
  store i1 %219, i1* %FPU_IE, align 1, !mcsema_real_eip !48
  %220 = load i1, i1* %FPU_X_val, !mcsema_real_eip !48
  store i1 %220, i1* %FPU_X, align 1, !mcsema_real_eip !48
  %221 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !48
  store i2 %221, i2* %FPU_RC, align 1, !mcsema_real_eip !48
  %222 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !48
  store i2 %222, i2* %FPU_PC, align 1, !mcsema_real_eip !48
  %223 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !48
  store i1 %223, i1* %FPU_PM, align 1, !mcsema_real_eip !48
  %224 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !48
  store i1 %224, i1* %FPU_UM, align 1, !mcsema_real_eip !48
  %225 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !48
  store i1 %225, i1* %FPU_OM, align 1, !mcsema_real_eip !48
  %226 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !48
  store i1 %226, i1* %FPU_ZM, align 1, !mcsema_real_eip !48
  %227 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !48
  store i1 %227, i1* %FPU_DM, align 1, !mcsema_real_eip !48
  %228 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !48
  store i1 %228, i1* %FPU_IM, align 1, !mcsema_real_eip !48
  %229 = load i64, i64* %53, align 4
  store i64 %229, i64* %52, align 4
  %230 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !48
  store i16 %230, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !48
  %231 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !48
  store i64 %231, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !48
  %232 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !48
  store i16 %232, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !48
  %233 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !48
  store i64 %233, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !48
  %234 = load i128, i128* %XMM0_val, !mcsema_real_eip !48
  store i128 %234, i128* %XMM0, align 1, !mcsema_real_eip !48
  %235 = load i128, i128* %XMM1_val, !mcsema_real_eip !48
  store i128 %235, i128* %XMM1, align 1, !mcsema_real_eip !48
  %236 = load i128, i128* %XMM2_val, !mcsema_real_eip !48
  store i128 %236, i128* %XMM2, align 1, !mcsema_real_eip !48
  %237 = load i128, i128* %XMM3_val, !mcsema_real_eip !48
  store i128 %237, i128* %XMM3, align 1, !mcsema_real_eip !48
  %238 = load i128, i128* %XMM4_val, !mcsema_real_eip !48
  store i128 %238, i128* %XMM4, align 1, !mcsema_real_eip !48
  %239 = load i128, i128* %XMM5_val, !mcsema_real_eip !48
  store i128 %239, i128* %XMM5, align 1, !mcsema_real_eip !48
  %240 = load i128, i128* %XMM6_val, !mcsema_real_eip !48
  store i128 %240, i128* %XMM6, align 1, !mcsema_real_eip !48
  %241 = load i128, i128* %XMM7_val, !mcsema_real_eip !48
  store i128 %241, i128* %XMM7, align 1, !mcsema_real_eip !48
  %242 = load i128, i128* %XMM8_val, !mcsema_real_eip !48
  store i128 %242, i128* %XMM8, align 1, !mcsema_real_eip !48
  %243 = load i128, i128* %XMM9_val, !mcsema_real_eip !48
  store i128 %243, i128* %XMM9, align 1, !mcsema_real_eip !48
  %244 = load i128, i128* %XMM10_val, !mcsema_real_eip !48
  store i128 %244, i128* %XMM10, align 1, !mcsema_real_eip !48
  %245 = load i128, i128* %XMM11_val, !mcsema_real_eip !48
  store i128 %245, i128* %XMM11, align 1, !mcsema_real_eip !48
  %246 = load i128, i128* %XMM12_val, !mcsema_real_eip !48
  store i128 %246, i128* %XMM12, align 1, !mcsema_real_eip !48
  %247 = load i128, i128* %XMM13_val, !mcsema_real_eip !48
  store i128 %247, i128* %XMM13, align 1, !mcsema_real_eip !48
  %248 = load i128, i128* %XMM14_val, !mcsema_real_eip !48
  store i128 %248, i128* %XMM14, align 1, !mcsema_real_eip !48
  %249 = load i128, i128* %XMM15_val, !mcsema_real_eip !48
  store i128 %249, i128* %XMM15, align 1, !mcsema_real_eip !48
  %250 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !48
  store i64 %250, i64* %STACK_BASE, align 1, !mcsema_real_eip !48
  %251 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !48
  store i64 %251, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !48
  ret void, !mcsema_real_eip !48
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_40(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 64, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 65, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = !{i64 68, [12 x i8] c"\09pushq\09%rbx\00"}
!5 = !{i64 69, [16 x i8] c"\09subq\09$40, %rsp\00"}
!6 = !{i64 73, [17 x i8] c"\09movl\09$100, %eax\00"}
!7 = !{i64 78, [17 x i8] c"\09movl\09$200, %ecx\00"}
!8 = !{i64 83, [17 x i8] c"\09movl\09$300, %edx\00"}
!9 = !{i64 88, [17 x i8] c"\09movl\09$400, %r8d\00"}
!10 = !{i64 94, [17 x i8] c"\09movl\09$500, %r9d\00"}
!11 = !{i64 100, [18 x i8] c"\09movl\09$600, %r10d\00"}
!12 = !{i64 106, [17 x i8] c"\09movl\09$10, %r11d\00"}
!13 = !{i64 112, [16 x i8] c"\09movl\09$20, %ebx\00"}
!14 = !{i64 117, [20 x i8] c"\09movl\09$0, -12(%rbp)\00"}
!15 = !{i64 124, [22 x i8] c"\09movl\09%edi, -16(%rbp)\00"}
!16 = !{i64 127, [22 x i8] c"\09movq\09%rsi, -24(%rbp)\00"}
!17 = !{i64 131, [17 x i8] c"\09movl\09%eax, %edi\00"}
!18 = !{i64 133, [17 x i8] c"\09movl\09%ecx, %esi\00"}
!19 = !{i64 135, [17 x i8] c"\09movl\09%r8d, %ecx\00"}
!20 = !{i64 138, [17 x i8] c"\09movl\09%r9d, %r8d\00"}
!21 = !{i64 141, [18 x i8] c"\09movl\09%r10d, %r9d\00"}
!22 = !{i64 144, [18 x i8] c"\09movl\09$10, (%rsp)\00"}
!23 = !{i64 151, [19 x i8] c"\09movl\09$20, 8(%rsp)\00"}
!24 = !{i64 159, [22 x i8] c"\09movl\09%ebx, -28(%rbp)\00"}
!25 = !{i64 162, [23 x i8] c"\09movl\09%r11d, -32(%rbp)\00"}
!26 = !{i64 166, [12 x i8] c"\09callq\09-171\00"}
!27 = !{i64 171, [16 x i8] c"\09addq\09$40, %rsp\00"}
!28 = !{i64 175, [11 x i8] c"\09popq\09%rbx\00"}
!29 = !{i64 176, [11 x i8] c"\09popq\09%rbp\00"}
!30 = !{i64 177, [6 x i8] c"\09retq\00"}
!31 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!32 = !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!33 = !{i64 4, [21 x i8] c"\09movl\0924(%rbp), %eax\00"}
!34 = !{i64 7, [22 x i8] c"\09movl\0916(%rbp), %r10d\00"}
!35 = !{i64 11, [21 x i8] c"\09movl\09%edi, -4(%rbp)\00"}
!36 = !{i64 14, [21 x i8] c"\09movl\09%esi, -8(%rbp)\00"}
!37 = !{i64 17, [22 x i8] c"\09movl\09%edx, -12(%rbp)\00"}
!38 = !{i64 20, [22 x i8] c"\09movl\09%ecx, -16(%rbp)\00"}
!39 = !{i64 23, [22 x i8] c"\09movl\09%r8d, -20(%rbp)\00"}
!40 = !{i64 27, [22 x i8] c"\09movl\09%r9d, -24(%rbp)\00"}
!41 = !{i64 31, [23 x i8] c"\09movl\09%r10d, -28(%rbp)\00"}
!42 = !{i64 35, [22 x i8] c"\09movl\09%eax, -32(%rbp)\00"}
!43 = !{i64 38, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!44 = !{i64 41, [22 x i8] c"\09addl\09-32(%rbp), %eax\00"}
!45 = !{i64 44, [22 x i8] c"\09movl\09%eax, -36(%rbp)\00"}
!46 = !{i64 47, [22 x i8] c"\09movl\09-36(%rbp), %eax\00"}
!47 = !{i64 50, [11 x i8] c"\09popq\09%rbp\00"}
!48 = !{i64 51, [6 x i8] c"\09retq\00"}
