; ModuleID = 'Output/test_1.clang.bc'
source_filename = "Output/test_1.clang.bc"
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
  %82 = add i64 %79, -24
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
  %92 = icmp ult i64 %80, 16, !mcsema_real_eip !4
  store i1 %92, i1* %CF_val, !mcsema_real_eip !4
  %93 = and i64 %83, %80, !mcsema_real_eip !4
  %94 = icmp slt i64 %93, 0
  store i1 %94, i1* %OF_val, !mcsema_real_eip !4
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !4
  store i64 10, i64* %RDI_val, !mcsema_real_eip !5
  store i64 20, i64* %RSI_val, !mcsema_real_eip !6
  %95 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  %96 = add i64 %95, -4, !mcsema_real_eip !7
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !7
  %98 = bitcast i64* %97 to i32*
  store i32 0, i32* %98, !mcsema_real_eip !7
  %99 = load i64, i64* %RSP_val, !mcsema_real_eip !8
  %100 = add i64 %99, -8
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !8
  store i64 -4981261766360305936, i64* %101, !mcsema_real_eip !8
  store i64 %100, i64* %RSP_val, !mcsema_real_eip !8
  %102 = load i64, i64* %RAX_val, !mcsema_real_eip !8
  store i64 %102, i64* %RAX, !mcsema_real_eip !8
  %103 = load i64, i64* %RBX_val, !mcsema_real_eip !8
  store i64 %103, i64* %RBX, !mcsema_real_eip !8
  %104 = load i64, i64* %RCX_val, !mcsema_real_eip !8
  store i64 %104, i64* %RCX, !mcsema_real_eip !8
  %105 = load i64, i64* %RDX_val, !mcsema_real_eip !8
  store i64 %105, i64* %RDX, !mcsema_real_eip !8
  %106 = load i64, i64* %RSI_val, !mcsema_real_eip !8
  store i64 %106, i64* %RSI, !mcsema_real_eip !8
  %107 = load i64, i64* %RDI_val, !mcsema_real_eip !8
  store i64 %107, i64* %RDI, !mcsema_real_eip !8
  %108 = load i64, i64* %RSP_val, !mcsema_real_eip !8
  store i64 %108, i64* %RSP, !mcsema_real_eip !8
  %109 = load i64, i64* %RBP_val, !mcsema_real_eip !8
  store i64 %109, i64* %RBP, !mcsema_real_eip !8
  %110 = load i64, i64* %R8_val, !mcsema_real_eip !8
  store i64 %110, i64* %R8, !mcsema_real_eip !8
  %111 = load i64, i64* %R9_val, !mcsema_real_eip !8
  store i64 %111, i64* %R9, !mcsema_real_eip !8
  %112 = load i64, i64* %R10_val, !mcsema_real_eip !8
  store i64 %112, i64* %R10, !mcsema_real_eip !8
  %113 = load i64, i64* %R11_val, !mcsema_real_eip !8
  store i64 %113, i64* %R11, !mcsema_real_eip !8
  %114 = load i64, i64* %R12_val, !mcsema_real_eip !8
  store i64 %114, i64* %R12, !mcsema_real_eip !8
  %115 = load i64, i64* %R13_val, !mcsema_real_eip !8
  store i64 %115, i64* %R13, !mcsema_real_eip !8
  %116 = load i64, i64* %R14_val, !mcsema_real_eip !8
  store i64 %116, i64* %R14, !mcsema_real_eip !8
  %117 = load i64, i64* %R15_val, !mcsema_real_eip !8
  store i64 %117, i64* %R15, !mcsema_real_eip !8
  %118 = load i64, i64* %RIP_val, !mcsema_real_eip !8
  store i64 %118, i64* %RIP, !mcsema_real_eip !8
  %119 = load i1, i1* %CF_val, !mcsema_real_eip !8
  store i1 %119, i1* %CF, align 1, !mcsema_real_eip !8
  %120 = load i1, i1* %PF_val, !mcsema_real_eip !8
  store i1 %120, i1* %PF, align 1, !mcsema_real_eip !8
  %121 = load i1, i1* %AF_val, !mcsema_real_eip !8
  store i1 %121, i1* %AF, align 1, !mcsema_real_eip !8
  %122 = load i1, i1* %ZF_val, !mcsema_real_eip !8
  store i1 %122, i1* %ZF, align 1, !mcsema_real_eip !8
  %123 = load i1, i1* %SF_val, !mcsema_real_eip !8
  store i1 %123, i1* %SF, align 1, !mcsema_real_eip !8
  %124 = load i1, i1* %OF_val, !mcsema_real_eip !8
  store i1 %124, i1* %OF, align 1, !mcsema_real_eip !8
  %125 = load i1, i1* %DF_val, !mcsema_real_eip !8
  store i1 %125, i1* %DF, align 1, !mcsema_real_eip !8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !8
  %126 = load i1, i1* %FPU_B_val, !mcsema_real_eip !8
  store i1 %126, i1* %FPU_B, align 1, !mcsema_real_eip !8
  %127 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !8
  store i1 %127, i1* %FPU_C3, align 1, !mcsema_real_eip !8
  %128 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !8
  store i3 %128, i3* %FPU_TOP, align 1, !mcsema_real_eip !8
  %129 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !8
  store i1 %129, i1* %FPU_C2, align 1, !mcsema_real_eip !8
  %130 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !8
  store i1 %130, i1* %FPU_C1, align 1, !mcsema_real_eip !8
  %131 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !8
  store i1 %131, i1* %FPU_C0, align 1, !mcsema_real_eip !8
  %132 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !8
  store i1 %132, i1* %FPU_ES, align 1, !mcsema_real_eip !8
  %133 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !8
  store i1 %133, i1* %FPU_SF, align 1, !mcsema_real_eip !8
  %134 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !8
  store i1 %134, i1* %FPU_PE, align 1, !mcsema_real_eip !8
  %135 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !8
  store i1 %135, i1* %FPU_UE, align 1, !mcsema_real_eip !8
  %136 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !8
  store i1 %136, i1* %FPU_OE, align 1, !mcsema_real_eip !8
  %137 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !8
  store i1 %137, i1* %FPU_ZE, align 1, !mcsema_real_eip !8
  %138 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !8
  store i1 %138, i1* %FPU_DE, align 1, !mcsema_real_eip !8
  %139 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !8
  store i1 %139, i1* %FPU_IE, align 1, !mcsema_real_eip !8
  %140 = load i1, i1* %FPU_X_val, !mcsema_real_eip !8
  store i1 %140, i1* %FPU_X, align 1, !mcsema_real_eip !8
  %141 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !8
  store i2 %141, i2* %FPU_RC, align 1, !mcsema_real_eip !8
  %142 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !8
  store i2 %142, i2* %FPU_PC, align 1, !mcsema_real_eip !8
  %143 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !8
  store i1 %143, i1* %FPU_PM, align 1, !mcsema_real_eip !8
  %144 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !8
  store i1 %144, i1* %FPU_UM, align 1, !mcsema_real_eip !8
  %145 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !8
  store i1 %145, i1* %FPU_OM, align 1, !mcsema_real_eip !8
  %146 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !8
  store i1 %146, i1* %FPU_ZM, align 1, !mcsema_real_eip !8
  %147 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !8
  store i1 %147, i1* %FPU_DM, align 1, !mcsema_real_eip !8
  %148 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !8
  store i1 %148, i1* %FPU_IM, align 1, !mcsema_real_eip !8
  %149 = load i64, i64* %53, align 4
  store i64 %149, i64* %52, align 4
  %150 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !8
  store i16 %150, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !8
  %151 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !8
  store i64 %151, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !8
  %152 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !8
  store i16 %152, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !8
  %153 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !8
  store i64 %153, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !8
  %154 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !8
  store i11 %154, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !8
  %155 = load i128, i128* %XMM0_val, !mcsema_real_eip !8
  store i128 %155, i128* %XMM0, align 1, !mcsema_real_eip !8
  %156 = load i128, i128* %XMM1_val, !mcsema_real_eip !8
  store i128 %156, i128* %XMM1, align 1, !mcsema_real_eip !8
  %157 = load i128, i128* %XMM2_val, !mcsema_real_eip !8
  store i128 %157, i128* %XMM2, align 1, !mcsema_real_eip !8
  %158 = load i128, i128* %XMM3_val, !mcsema_real_eip !8
  store i128 %158, i128* %XMM3, align 1, !mcsema_real_eip !8
  %159 = load i128, i128* %XMM4_val, !mcsema_real_eip !8
  store i128 %159, i128* %XMM4, align 1, !mcsema_real_eip !8
  %160 = load i128, i128* %XMM5_val, !mcsema_real_eip !8
  store i128 %160, i128* %XMM5, align 1, !mcsema_real_eip !8
  %161 = load i128, i128* %XMM6_val, !mcsema_real_eip !8
  store i128 %161, i128* %XMM6, align 1, !mcsema_real_eip !8
  %162 = load i128, i128* %XMM7_val, !mcsema_real_eip !8
  store i128 %162, i128* %XMM7, align 1, !mcsema_real_eip !8
  %163 = load i128, i128* %XMM8_val, !mcsema_real_eip !8
  store i128 %163, i128* %XMM8, align 1, !mcsema_real_eip !8
  %164 = load i128, i128* %XMM9_val, !mcsema_real_eip !8
  store i128 %164, i128* %XMM9, align 1, !mcsema_real_eip !8
  %165 = load i128, i128* %XMM10_val, !mcsema_real_eip !8
  store i128 %165, i128* %XMM10, align 1, !mcsema_real_eip !8
  %166 = load i128, i128* %XMM11_val, !mcsema_real_eip !8
  store i128 %166, i128* %XMM11, align 1, !mcsema_real_eip !8
  %167 = load i128, i128* %XMM12_val, !mcsema_real_eip !8
  store i128 %167, i128* %XMM12, align 1, !mcsema_real_eip !8
  %168 = load i128, i128* %XMM13_val, !mcsema_real_eip !8
  store i128 %168, i128* %XMM13, align 1, !mcsema_real_eip !8
  %169 = load i128, i128* %XMM14_val, !mcsema_real_eip !8
  store i128 %169, i128* %XMM14, align 1, !mcsema_real_eip !8
  %170 = load i128, i128* %XMM15_val, !mcsema_real_eip !8
  store i128 %170, i128* %XMM15, align 1, !mcsema_real_eip !8
  %171 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !8
  store i64 %171, i64* %STACK_BASE, align 1, !mcsema_real_eip !8
  %172 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !8
  store i64 %172, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !8
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !8
  %173 = load i64, i64* %RAX, !mcsema_real_eip !8
  store i64 %173, i64* %RAX_val, !mcsema_real_eip !8
  %174 = load i64, i64* %RBX, !mcsema_real_eip !8
  store i64 %174, i64* %RBX_val, !mcsema_real_eip !8
  %175 = load i64, i64* %RCX, !mcsema_real_eip !8
  store i64 %175, i64* %RCX_val, !mcsema_real_eip !8
  %176 = load i64, i64* %RDX, !mcsema_real_eip !8
  store i64 %176, i64* %RDX_val, !mcsema_real_eip !8
  %177 = load i64, i64* %RSI, !mcsema_real_eip !8
  store i64 %177, i64* %RSI_val, !mcsema_real_eip !8
  %178 = load i64, i64* %RDI, !mcsema_real_eip !8
  store i64 %178, i64* %RDI_val, !mcsema_real_eip !8
  %179 = load i64, i64* %RSP, !mcsema_real_eip !8
  store i64 %179, i64* %RSP_val, !mcsema_real_eip !8
  %180 = load i64, i64* %RBP, !mcsema_real_eip !8
  store i64 %180, i64* %RBP_val, !mcsema_real_eip !8
  %181 = load i64, i64* %R8, !mcsema_real_eip !8
  store i64 %181, i64* %R8_val, !mcsema_real_eip !8
  %182 = load i64, i64* %R9, !mcsema_real_eip !8
  store i64 %182, i64* %R9_val, !mcsema_real_eip !8
  %183 = load i64, i64* %R10, !mcsema_real_eip !8
  store i64 %183, i64* %R10_val, !mcsema_real_eip !8
  %184 = load i64, i64* %R11, !mcsema_real_eip !8
  store i64 %184, i64* %R11_val, !mcsema_real_eip !8
  %185 = load i64, i64* %R12, !mcsema_real_eip !8
  store i64 %185, i64* %R12_val, !mcsema_real_eip !8
  %186 = load i64, i64* %R13, !mcsema_real_eip !8
  store i64 %186, i64* %R13_val, !mcsema_real_eip !8
  %187 = load i64, i64* %R14, !mcsema_real_eip !8
  store i64 %187, i64* %R14_val, !mcsema_real_eip !8
  %188 = load i64, i64* %R15, !mcsema_real_eip !8
  store i64 %188, i64* %R15_val, !mcsema_real_eip !8
  %189 = load i64, i64* %RIP, !mcsema_real_eip !8
  store i64 %189, i64* %RIP_val, !mcsema_real_eip !8
  %190 = load i1, i1* %CF, align 1, !mcsema_real_eip !8
  store i1 %190, i1* %CF_val, !mcsema_real_eip !8
  %191 = load i1, i1* %PF, align 1, !mcsema_real_eip !8
  store i1 %191, i1* %PF_val, !mcsema_real_eip !8
  %192 = load i1, i1* %AF, align 1, !mcsema_real_eip !8
  store i1 %192, i1* %AF_val, !mcsema_real_eip !8
  %193 = load i1, i1* %ZF, align 1, !mcsema_real_eip !8
  store i1 %193, i1* %ZF_val, !mcsema_real_eip !8
  %194 = load i1, i1* %SF, align 1, !mcsema_real_eip !8
  store i1 %194, i1* %SF_val, !mcsema_real_eip !8
  %195 = load i1, i1* %OF, align 1, !mcsema_real_eip !8
  store i1 %195, i1* %OF_val, !mcsema_real_eip !8
  %196 = load i1, i1* %DF, align 1, !mcsema_real_eip !8
  store i1 %196, i1* %DF_val, !mcsema_real_eip !8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !8
  %197 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !8
  store i1 %197, i1* %FPU_B_val, !mcsema_real_eip !8
  %198 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !8
  store i1 %198, i1* %FPU_C3_val, !mcsema_real_eip !8
  %199 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !8
  store i3 %199, i3* %FPU_TOP_val, !mcsema_real_eip !8
  %200 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !8
  store i1 %200, i1* %FPU_C2_val, !mcsema_real_eip !8
  %201 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !8
  store i1 %201, i1* %FPU_C1_val, !mcsema_real_eip !8
  %202 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !8
  store i1 %202, i1* %FPU_C0_val, !mcsema_real_eip !8
  %203 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !8
  store i1 %203, i1* %FPU_ES_val, !mcsema_real_eip !8
  %204 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !8
  store i1 %204, i1* %FPU_SF_val, !mcsema_real_eip !8
  %205 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !8
  store i1 %205, i1* %FPU_PE_val, !mcsema_real_eip !8
  %206 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !8
  store i1 %206, i1* %FPU_UE_val, !mcsema_real_eip !8
  %207 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !8
  store i1 %207, i1* %FPU_OE_val, !mcsema_real_eip !8
  %208 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !8
  store i1 %208, i1* %FPU_ZE_val, !mcsema_real_eip !8
  %209 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !8
  store i1 %209, i1* %FPU_DE_val, !mcsema_real_eip !8
  %210 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !8
  store i1 %210, i1* %FPU_IE_val, !mcsema_real_eip !8
  %211 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !8
  store i1 %211, i1* %FPU_X_val, !mcsema_real_eip !8
  %212 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !8
  store i2 %212, i2* %FPU_RC_val, !mcsema_real_eip !8
  %213 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !8
  store i2 %213, i2* %FPU_PC_val, !mcsema_real_eip !8
  %214 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !8
  store i1 %214, i1* %FPU_PM_val, !mcsema_real_eip !8
  %215 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !8
  store i1 %215, i1* %FPU_UM_val, !mcsema_real_eip !8
  %216 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !8
  store i1 %216, i1* %FPU_OM_val, !mcsema_real_eip !8
  %217 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !8
  store i1 %217, i1* %FPU_ZM_val, !mcsema_real_eip !8
  %218 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !8
  store i1 %218, i1* %FPU_DM_val, !mcsema_real_eip !8
  %219 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !8
  store i1 %219, i1* %FPU_IM_val, !mcsema_real_eip !8
  %220 = load i64, i64* %52, align 4
  store i64 %220, i64* %53, align 4
  %221 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !8
  store i16 %221, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !8
  %222 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !8
  store i64 %222, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !8
  %223 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !8
  store i16 %223, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !8
  %224 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !8
  store i64 %224, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !8
  %225 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !8
  store i11 %225, i11* %FPU_FOPCODE_val, !mcsema_real_eip !8
  %226 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !8
  store i128 %226, i128* %XMM0_val, !mcsema_real_eip !8
  %227 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !8
  store i128 %227, i128* %XMM1_val, !mcsema_real_eip !8
  %228 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !8
  store i128 %228, i128* %XMM2_val, !mcsema_real_eip !8
  %229 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !8
  store i128 %229, i128* %XMM3_val, !mcsema_real_eip !8
  %230 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !8
  store i128 %230, i128* %XMM4_val, !mcsema_real_eip !8
  %231 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !8
  store i128 %231, i128* %XMM5_val, !mcsema_real_eip !8
  %232 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !8
  store i128 %232, i128* %XMM6_val, !mcsema_real_eip !8
  %233 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !8
  store i128 %233, i128* %XMM7_val, !mcsema_real_eip !8
  %234 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !8
  store i128 %234, i128* %XMM8_val, !mcsema_real_eip !8
  %235 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !8
  store i128 %235, i128* %XMM9_val, !mcsema_real_eip !8
  %236 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !8
  store i128 %236, i128* %XMM10_val, !mcsema_real_eip !8
  %237 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !8
  store i128 %237, i128* %XMM11_val, !mcsema_real_eip !8
  %238 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !8
  store i128 %238, i128* %XMM12_val, !mcsema_real_eip !8
  %239 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !8
  store i128 %239, i128* %XMM13_val, !mcsema_real_eip !8
  %240 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !8
  store i128 %240, i128* %XMM14_val, !mcsema_real_eip !8
  %241 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !8
  store i128 %241, i128* %XMM15_val, !mcsema_real_eip !8
  %242 = load i64, i64* %STACK_BASE, !mcsema_real_eip !8
  store i64 %242, i64* %STACK_BASE_val, !mcsema_real_eip !8
  %243 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !8
  store i64 %243, i64* %STACK_LIMIT_val, !mcsema_real_eip !8
  %244 = load i64, i64* %RBP_val, !mcsema_real_eip !9
  %245 = add i64 %244, -8, !mcsema_real_eip !9
  %246 = inttoptr i64 %245 to i64*, !mcsema_real_eip !9
  %247 = load i64, i64* %RAX_val, !mcsema_real_eip !9
  %248 = trunc i64 %247 to i32, !mcsema_real_eip !9
  %249 = bitcast i64* %246 to i32*
  store i32 %248, i32* %249, !mcsema_real_eip !9
  %250 = load i64, i64* %RBP_val, !mcsema_real_eip !10
  %251 = add i64 %250, -8, !mcsema_real_eip !10
  %252 = inttoptr i64 %251 to i64*, !mcsema_real_eip !10
  %253 = bitcast i64* %252 to i32*
  %254 = load i32, i32* %253, !mcsema_real_eip !10
  %255 = zext i32 %254 to i64, !mcsema_real_eip !10
  store i64 %255, i64* %RAX_val, !mcsema_real_eip !10
  %256 = load i64, i64* %RSP_val, !mcsema_real_eip !11
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %256, i64 16)
  %257 = extractvalue { i64, i1 } %uadd, 0
  %258 = xor i64 %257, %256, !mcsema_real_eip !11
  %259 = and i64 %258, 16
  %260 = icmp eq i64 %259, 0
  store i1 %260, i1* %AF_val, !mcsema_real_eip !11
  %261 = icmp slt i64 %257, 0
  store i1 %261, i1* %SF_val, !mcsema_real_eip !11
  %262 = icmp eq i64 %257, 0, !mcsema_real_eip !11
  store i1 %262, i1* %ZF_val, !mcsema_real_eip !11
  %263 = xor i64 %256, -9223372036854775808, !mcsema_real_eip !11
  %264 = and i64 %258, %263, !mcsema_real_eip !11
  %265 = icmp slt i64 %264, 0
  store i1 %265, i1* %OF_val, !mcsema_real_eip !11
  %266 = trunc i64 %257 to i8, !mcsema_real_eip !11
  %267 = tail call i8 @llvm.ctpop.i8(i8 %266), !mcsema_real_eip !11
  %268 = and i8 %267, 1
  %269 = icmp eq i8 %268, 0
  store i1 %269, i1* %PF_val, !mcsema_real_eip !11
  %270 = extractvalue { i64, i1 } %uadd, 1
  store i1 %270, i1* %CF_val, !mcsema_real_eip !11
  store i64 %257, i64* %RSP_val, !mcsema_real_eip !11
  %271 = inttoptr i64 %257 to i64*, !mcsema_real_eip !12
  %272 = load i64, i64* %271, !mcsema_real_eip !12
  store i64 %272, i64* %RBP_val, !mcsema_real_eip !12
  %273 = add i64 %257, 16, !mcsema_real_eip !13
  store i64 %273, i64* %RSP_val, !mcsema_real_eip !13
  %274 = load i64, i64* %RAX_val, !mcsema_real_eip !13
  store i64 %274, i64* %RAX, !mcsema_real_eip !13
  %275 = load i64, i64* %RBX_val, !mcsema_real_eip !13
  store i64 %275, i64* %RBX, !mcsema_real_eip !13
  %276 = load i64, i64* %RCX_val, !mcsema_real_eip !13
  store i64 %276, i64* %RCX, !mcsema_real_eip !13
  %277 = load i64, i64* %RDX_val, !mcsema_real_eip !13
  store i64 %277, i64* %RDX, !mcsema_real_eip !13
  %278 = load i64, i64* %RSI_val, !mcsema_real_eip !13
  store i64 %278, i64* %RSI, !mcsema_real_eip !13
  %279 = load i64, i64* %RDI_val, !mcsema_real_eip !13
  store i64 %279, i64* %RDI, !mcsema_real_eip !13
  %280 = load i64, i64* %RSP_val, !mcsema_real_eip !13
  store i64 %280, i64* %RSP, !mcsema_real_eip !13
  %281 = load i64, i64* %RBP_val, !mcsema_real_eip !13
  store i64 %281, i64* %RBP, !mcsema_real_eip !13
  %282 = load i64, i64* %R8_val, !mcsema_real_eip !13
  store i64 %282, i64* %R8, !mcsema_real_eip !13
  %283 = load i64, i64* %R9_val, !mcsema_real_eip !13
  store i64 %283, i64* %R9, !mcsema_real_eip !13
  %284 = load i64, i64* %R10_val, !mcsema_real_eip !13
  store i64 %284, i64* %R10, !mcsema_real_eip !13
  %285 = load i64, i64* %R11_val, !mcsema_real_eip !13
  store i64 %285, i64* %R11, !mcsema_real_eip !13
  %286 = load i64, i64* %R12_val, !mcsema_real_eip !13
  store i64 %286, i64* %R12, !mcsema_real_eip !13
  %287 = load i64, i64* %R13_val, !mcsema_real_eip !13
  store i64 %287, i64* %R13, !mcsema_real_eip !13
  %288 = load i64, i64* %R14_val, !mcsema_real_eip !13
  store i64 %288, i64* %R14, !mcsema_real_eip !13
  %289 = load i64, i64* %R15_val, !mcsema_real_eip !13
  store i64 %289, i64* %R15, !mcsema_real_eip !13
  %290 = load i64, i64* %RIP_val, !mcsema_real_eip !13
  store i64 %290, i64* %RIP, !mcsema_real_eip !13
  %291 = load i1, i1* %CF_val, !mcsema_real_eip !13
  store i1 %291, i1* %CF, align 1, !mcsema_real_eip !13
  %292 = load i1, i1* %PF_val, !mcsema_real_eip !13
  store i1 %292, i1* %PF, align 1, !mcsema_real_eip !13
  %293 = load i1, i1* %AF_val, !mcsema_real_eip !13
  store i1 %293, i1* %AF, align 1, !mcsema_real_eip !13
  %294 = load i1, i1* %ZF_val, !mcsema_real_eip !13
  store i1 %294, i1* %ZF, align 1, !mcsema_real_eip !13
  %295 = load i1, i1* %SF_val, !mcsema_real_eip !13
  store i1 %295, i1* %SF, align 1, !mcsema_real_eip !13
  %296 = load i1, i1* %OF_val, !mcsema_real_eip !13
  store i1 %296, i1* %OF, align 1, !mcsema_real_eip !13
  %297 = load i1, i1* %DF_val, !mcsema_real_eip !13
  store i1 %297, i1* %DF, align 1, !mcsema_real_eip !13
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !13
  %298 = load i1, i1* %FPU_B_val, !mcsema_real_eip !13
  store i1 %298, i1* %FPU_B, align 1, !mcsema_real_eip !13
  %299 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !13
  store i1 %299, i1* %FPU_C3, align 1, !mcsema_real_eip !13
  %300 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !13
  store i3 %300, i3* %FPU_TOP, align 1, !mcsema_real_eip !13
  %301 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !13
  store i1 %301, i1* %FPU_C2, align 1, !mcsema_real_eip !13
  %302 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !13
  store i1 %302, i1* %FPU_C1, align 1, !mcsema_real_eip !13
  %303 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !13
  store i1 %303, i1* %FPU_C0, align 1, !mcsema_real_eip !13
  %304 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !13
  store i1 %304, i1* %FPU_ES, align 1, !mcsema_real_eip !13
  %305 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !13
  store i1 %305, i1* %FPU_SF, align 1, !mcsema_real_eip !13
  %306 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !13
  store i1 %306, i1* %FPU_PE, align 1, !mcsema_real_eip !13
  %307 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !13
  store i1 %307, i1* %FPU_UE, align 1, !mcsema_real_eip !13
  %308 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !13
  store i1 %308, i1* %FPU_OE, align 1, !mcsema_real_eip !13
  %309 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !13
  store i1 %309, i1* %FPU_ZE, align 1, !mcsema_real_eip !13
  %310 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !13
  store i1 %310, i1* %FPU_DE, align 1, !mcsema_real_eip !13
  %311 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !13
  store i1 %311, i1* %FPU_IE, align 1, !mcsema_real_eip !13
  %312 = load i1, i1* %FPU_X_val, !mcsema_real_eip !13
  store i1 %312, i1* %FPU_X, align 1, !mcsema_real_eip !13
  %313 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !13
  store i2 %313, i2* %FPU_RC, align 1, !mcsema_real_eip !13
  %314 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !13
  store i2 %314, i2* %FPU_PC, align 1, !mcsema_real_eip !13
  %315 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !13
  store i1 %315, i1* %FPU_PM, align 1, !mcsema_real_eip !13
  %316 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !13
  store i1 %316, i1* %FPU_UM, align 1, !mcsema_real_eip !13
  %317 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !13
  store i1 %317, i1* %FPU_OM, align 1, !mcsema_real_eip !13
  %318 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !13
  store i1 %318, i1* %FPU_ZM, align 1, !mcsema_real_eip !13
  %319 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !13
  store i1 %319, i1* %FPU_DM, align 1, !mcsema_real_eip !13
  %320 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !13
  store i1 %320, i1* %FPU_IM, align 1, !mcsema_real_eip !13
  %321 = load i64, i64* %53, align 4
  store i64 %321, i64* %52, align 4
  %322 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !13
  store i16 %322, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !13
  %323 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !13
  store i64 %323, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !13
  %324 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !13
  store i16 %324, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !13
  %325 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !13
  store i64 %325, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !13
  %326 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !13
  store i11 %326, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !13
  %327 = load i128, i128* %XMM0_val, !mcsema_real_eip !13
  store i128 %327, i128* %XMM0, align 1, !mcsema_real_eip !13
  %328 = load i128, i128* %XMM1_val, !mcsema_real_eip !13
  store i128 %328, i128* %XMM1, align 1, !mcsema_real_eip !13
  %329 = load i128, i128* %XMM2_val, !mcsema_real_eip !13
  store i128 %329, i128* %XMM2, align 1, !mcsema_real_eip !13
  %330 = load i128, i128* %XMM3_val, !mcsema_real_eip !13
  store i128 %330, i128* %XMM3, align 1, !mcsema_real_eip !13
  %331 = load i128, i128* %XMM4_val, !mcsema_real_eip !13
  store i128 %331, i128* %XMM4, align 1, !mcsema_real_eip !13
  %332 = load i128, i128* %XMM5_val, !mcsema_real_eip !13
  store i128 %332, i128* %XMM5, align 1, !mcsema_real_eip !13
  %333 = load i128, i128* %XMM6_val, !mcsema_real_eip !13
  store i128 %333, i128* %XMM6, align 1, !mcsema_real_eip !13
  %334 = load i128, i128* %XMM7_val, !mcsema_real_eip !13
  store i128 %334, i128* %XMM7, align 1, !mcsema_real_eip !13
  %335 = load i128, i128* %XMM8_val, !mcsema_real_eip !13
  store i128 %335, i128* %XMM8, align 1, !mcsema_real_eip !13
  %336 = load i128, i128* %XMM9_val, !mcsema_real_eip !13
  store i128 %336, i128* %XMM9, align 1, !mcsema_real_eip !13
  %337 = load i128, i128* %XMM10_val, !mcsema_real_eip !13
  store i128 %337, i128* %XMM10, align 1, !mcsema_real_eip !13
  %338 = load i128, i128* %XMM11_val, !mcsema_real_eip !13
  store i128 %338, i128* %XMM11, align 1, !mcsema_real_eip !13
  %339 = load i128, i128* %XMM12_val, !mcsema_real_eip !13
  store i128 %339, i128* %XMM12, align 1, !mcsema_real_eip !13
  %340 = load i128, i128* %XMM13_val, !mcsema_real_eip !13
  store i128 %340, i128* %XMM13, align 1, !mcsema_real_eip !13
  %341 = load i128, i128* %XMM14_val, !mcsema_real_eip !13
  store i128 %341, i128* %XMM14, align 1, !mcsema_real_eip !13
  %342 = load i128, i128* %XMM15_val, !mcsema_real_eip !13
  store i128 %342, i128* %XMM15, align 1, !mcsema_real_eip !13
  %343 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !13
  store i64 %343, i64* %STACK_BASE, align 1, !mcsema_real_eip !13
  %344 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !13
  store i64 %344, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !13
  ret void, !mcsema_real_eip !13
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !14
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !14
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !14
  %XMM15_val = alloca i128, !mcsema_real_eip !14
  %XMM14_val = alloca i128, !mcsema_real_eip !14
  %XMM13_val = alloca i128, !mcsema_real_eip !14
  %XMM12_val = alloca i128, !mcsema_real_eip !14
  %XMM11_val = alloca i128, !mcsema_real_eip !14
  %XMM10_val = alloca i128, !mcsema_real_eip !14
  %XMM9_val = alloca i128, !mcsema_real_eip !14
  %XMM8_val = alloca i128, !mcsema_real_eip !14
  %XMM7_val = alloca i128, !mcsema_real_eip !14
  %XMM6_val = alloca i128, !mcsema_real_eip !14
  %XMM5_val = alloca i128, !mcsema_real_eip !14
  %XMM4_val = alloca i128, !mcsema_real_eip !14
  %XMM3_val = alloca i128, !mcsema_real_eip !14
  %XMM2_val = alloca i128, !mcsema_real_eip !14
  %XMM1_val = alloca i128, !mcsema_real_eip !14
  %XMM0_val = alloca i128, !mcsema_real_eip !14
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !14
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !14
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !14
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !14
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !14
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !14
  %FPU_IM_val = alloca i1, !mcsema_real_eip !14
  %FPU_DM_val = alloca i1, !mcsema_real_eip !14
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !14
  %FPU_OM_val = alloca i1, !mcsema_real_eip !14
  %FPU_UM_val = alloca i1, !mcsema_real_eip !14
  %FPU_PM_val = alloca i1, !mcsema_real_eip !14
  %FPU_PC_val = alloca i2, !mcsema_real_eip !14
  %FPU_RC_val = alloca i2, !mcsema_real_eip !14
  %FPU_X_val = alloca i1, !mcsema_real_eip !14
  %FPU_IE_val = alloca i1, !mcsema_real_eip !14
  %FPU_DE_val = alloca i1, !mcsema_real_eip !14
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !14
  %FPU_OE_val = alloca i1, !mcsema_real_eip !14
  %FPU_UE_val = alloca i1, !mcsema_real_eip !14
  %FPU_PE_val = alloca i1, !mcsema_real_eip !14
  %FPU_SF_val = alloca i1, !mcsema_real_eip !14
  %FPU_ES_val = alloca i1, !mcsema_real_eip !14
  %FPU_C0_val = alloca i1, !mcsema_real_eip !14
  %FPU_C1_val = alloca i1, !mcsema_real_eip !14
  %FPU_C2_val = alloca i1, !mcsema_real_eip !14
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !14
  %FPU_C3_val = alloca i1, !mcsema_real_eip !14
  %FPU_B_val = alloca i1, !mcsema_real_eip !14
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !14
  %DF_val = alloca i1, !mcsema_real_eip !14
  %OF_val = alloca i1, !mcsema_real_eip !14
  %SF_val = alloca i1, !mcsema_real_eip !14
  %CF_val = alloca i1, !mcsema_real_eip !14
  %AF_val = alloca i1, !mcsema_real_eip !14
  %PF_val = alloca i1, !mcsema_real_eip !14
  %ZF_val = alloca i1, !mcsema_real_eip !14
  %RIP_val = alloca i64, !mcsema_real_eip !14
  %R14_val = alloca i64, !mcsema_real_eip !14
  %R13_val = alloca i64, !mcsema_real_eip !14
  %R12_val = alloca i64, !mcsema_real_eip !14
  %R11_val = alloca i64, !mcsema_real_eip !14
  %R10_val = alloca i64, !mcsema_real_eip !14
  %R9_val = alloca i64, !mcsema_real_eip !14
  %R8_val = alloca i64, !mcsema_real_eip !14
  %RSP_val = alloca i64, !mcsema_real_eip !14
  %RBP_val = alloca i64, !mcsema_real_eip !14
  %RDI_val = alloca i64, !mcsema_real_eip !14
  %RSI_val = alloca i64, !mcsema_real_eip !14
  %RDX_val = alloca i64, !mcsema_real_eip !14
  %RCX_val = alloca i64, !mcsema_real_eip !14
  %RBX_val = alloca i64, !mcsema_real_eip !14
  %RAX_val = alloca i64, !mcsema_real_eip !14
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !14
  %1 = load i64, i64* %RAX, !mcsema_real_eip !14
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !14
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !14
  %2 = load i64, i64* %RBX, !mcsema_real_eip !14
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !14
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !14
  %3 = load i64, i64* %RCX, !mcsema_real_eip !14
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !14
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !14
  %4 = load i64, i64* %RDX, !mcsema_real_eip !14
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !14
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !14
  %5 = load i64, i64* %RSI, !mcsema_real_eip !14
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !14
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !14
  %6 = load i64, i64* %RDI, !mcsema_real_eip !14
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !14
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !14
  %7 = load i64, i64* %RSP, !mcsema_real_eip !14
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !14
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !14
  %8 = load i64, i64* %RBP, !mcsema_real_eip !14
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !14
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !14
  %9 = load i64, i64* %R8, !mcsema_real_eip !14
  store i64 %9, i64* %R8_val, !mcsema_real_eip !14
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !14
  %10 = load i64, i64* %R9, !mcsema_real_eip !14
  store i64 %10, i64* %R9_val, !mcsema_real_eip !14
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !14
  %11 = load i64, i64* %R10, !mcsema_real_eip !14
  store i64 %11, i64* %R10_val, !mcsema_real_eip !14
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !14
  %12 = load i64, i64* %R11, !mcsema_real_eip !14
  store i64 %12, i64* %R11_val, !mcsema_real_eip !14
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !14
  %13 = load i64, i64* %R12, !mcsema_real_eip !14
  store i64 %13, i64* %R12_val, !mcsema_real_eip !14
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !14
  %14 = load i64, i64* %R13, !mcsema_real_eip !14
  store i64 %14, i64* %R13_val, !mcsema_real_eip !14
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !14
  %15 = load i64, i64* %R14, !mcsema_real_eip !14
  store i64 %15, i64* %R14_val, !mcsema_real_eip !14
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !14
  %16 = load i64, i64* %R15, !mcsema_real_eip !14
  store i64 %16, i64* %R15_val, !mcsema_real_eip !14
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !14
  %17 = load i64, i64* %RIP, !mcsema_real_eip !14
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !14
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !14
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !14
  store i1 %18, i1* %CF_val, !mcsema_real_eip !14
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !14
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !14
  store i1 %19, i1* %PF_val, !mcsema_real_eip !14
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !14
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !14
  store i1 %20, i1* %AF_val, !mcsema_real_eip !14
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !14
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !14
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !14
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !14
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !14
  store i1 %22, i1* %SF_val, !mcsema_real_eip !14
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !14
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !14
  store i1 %23, i1* %OF_val, !mcsema_real_eip !14
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !14
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !14
  store i1 %24, i1* %DF_val, !mcsema_real_eip !14
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !14
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !14
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !14
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !14
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !14
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !14
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !14
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !14
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !14
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !14
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !14
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !14
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !14
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !14
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !14
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !14
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !14
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !14
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !14
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !14
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !14
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !14
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !14
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !14
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !14
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !14
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !14
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !14
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !14
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !14
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !14
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !14
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !14
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !14
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !14
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !14
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !14
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !14
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !14
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !14
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !14
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !14
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !14
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !14
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !14
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !14
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !14
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !14
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !14
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !14
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !14
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !14
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !14
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !14
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !14
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !14
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !14
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !14
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !14
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !14
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !14
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !14
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !14
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !14
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !14
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !14
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !14
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !14
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !14
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !14
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !14
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !14
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !14
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !14
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !14
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !14
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !14
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !14
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !14
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !14
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !14
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !14
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !14
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !14
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !14
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !14
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !14
  %59 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !14
  store i11 %59, i11* %FPU_FOPCODE_val, !mcsema_real_eip !14
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !14
  %60 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !14
  store i128 %60, i128* %XMM0_val, !mcsema_real_eip !14
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !14
  %61 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !14
  store i128 %61, i128* %XMM1_val, !mcsema_real_eip !14
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !14
  %62 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !14
  store i128 %62, i128* %XMM2_val, !mcsema_real_eip !14
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !14
  %63 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !14
  store i128 %63, i128* %XMM3_val, !mcsema_real_eip !14
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !14
  %64 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !14
  store i128 %64, i128* %XMM4_val, !mcsema_real_eip !14
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !14
  %65 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !14
  store i128 %65, i128* %XMM5_val, !mcsema_real_eip !14
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !14
  %66 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !14
  store i128 %66, i128* %XMM6_val, !mcsema_real_eip !14
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !14
  %67 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !14
  store i128 %67, i128* %XMM7_val, !mcsema_real_eip !14
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !14
  %68 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !14
  store i128 %68, i128* %XMM8_val, !mcsema_real_eip !14
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !14
  %69 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !14
  store i128 %69, i128* %XMM9_val, !mcsema_real_eip !14
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !14
  %70 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !14
  store i128 %70, i128* %XMM10_val, !mcsema_real_eip !14
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !14
  %71 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !14
  store i128 %71, i128* %XMM11_val, !mcsema_real_eip !14
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !14
  %72 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !14
  store i128 %72, i128* %XMM12_val, !mcsema_real_eip !14
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !14
  %73 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !14
  store i128 %73, i128* %XMM13_val, !mcsema_real_eip !14
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !14
  %74 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !14
  store i128 %74, i128* %XMM14_val, !mcsema_real_eip !14
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !14
  %75 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !14
  store i128 %75, i128* %XMM15_val, !mcsema_real_eip !14
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !14
  %76 = load i64, i64* %STACK_BASE, !mcsema_real_eip !14
  store i64 %76, i64* %STACK_BASE_val, !mcsema_real_eip !14
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !14
  %77 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !14
  store i64 %77, i64* %STACK_LIMIT_val, !mcsema_real_eip !14
  %78 = load i64, i64* %RBP_val, !mcsema_real_eip !14
  %79 = load i64, i64* %RSP_val, !mcsema_real_eip !14
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !14
  store i64 %78, i64* %81, !mcsema_real_eip !14
  store i64 %80, i64* %RSP_val, !mcsema_real_eip !14
  store i64 %80, i64* %RBP_val, !mcsema_real_eip !15
  %82 = add i64 %79, -12, !mcsema_real_eip !16
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !16
  %84 = load i64, i64* %RDI_val, !mcsema_real_eip !16
  %85 = trunc i64 %84 to i32, !mcsema_real_eip !16
  %86 = bitcast i64* %83 to i32*
  store i32 %85, i32* %86, !mcsema_real_eip !16
  %87 = load i64, i64* %RBP_val, !mcsema_real_eip !17
  %88 = add i64 %87, -8, !mcsema_real_eip !17
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !17
  %90 = load i64, i64* %RSI_val, !mcsema_real_eip !17
  %91 = trunc i64 %90 to i32, !mcsema_real_eip !17
  %92 = bitcast i64* %89 to i32*
  store i32 %91, i32* %92, !mcsema_real_eip !17
  %93 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  %94 = add i64 %93, -4, !mcsema_real_eip !18
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !18
  %96 = bitcast i64* %95 to i32*
  %97 = load i32, i32* %96, !mcsema_real_eip !18
  %98 = zext i32 %97 to i64, !mcsema_real_eip !18
  store i64 %98, i64* %RSI_val, !mcsema_real_eip !18
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !19
  %100 = add i64 %99, -8, !mcsema_real_eip !19
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !19
  %102 = bitcast i64* %101 to i32*
  %103 = load i32, i32* %102, !mcsema_real_eip !19
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %97, i32 %103)
  %104 = extractvalue { i32, i1 } %uadd, 0
  %105 = xor i32 %104, %103, !mcsema_real_eip !19
  %106 = xor i32 %105, %97, !mcsema_real_eip !19
  %107 = and i32 %106, 16, !mcsema_real_eip !19
  %108 = icmp ne i32 %107, 0, !mcsema_real_eip !19
  store i1 %108, i1* %AF_val, !mcsema_real_eip !19
  %109 = icmp slt i32 %104, 0
  store i1 %109, i1* %SF_val, !mcsema_real_eip !19
  %110 = icmp eq i32 %104, 0, !mcsema_real_eip !19
  store i1 %110, i1* %ZF_val, !mcsema_real_eip !19
  %111 = xor i32 %97, -2147483648, !mcsema_real_eip !19
  %112 = xor i32 %111, %103, !mcsema_real_eip !19
  %113 = and i32 %105, %112, !mcsema_real_eip !19
  %114 = icmp slt i32 %113, 0
  store i1 %114, i1* %OF_val, !mcsema_real_eip !19
  %115 = trunc i32 %104 to i8, !mcsema_real_eip !19
  %116 = tail call i8 @llvm.ctpop.i8(i8 %115), !mcsema_real_eip !19
  %117 = and i8 %116, 1
  %118 = icmp eq i8 %117, 0
  store i1 %118, i1* %PF_val, !mcsema_real_eip !19
  %119 = extractvalue { i32, i1 } %uadd, 1
  store i1 %119, i1* %CF_val, !mcsema_real_eip !19
  %120 = zext i32 %104 to i64, !mcsema_real_eip !19
  store i64 %120, i64* %RSI_val, !mcsema_real_eip !19
  %121 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %122 = add i64 %121, -12, !mcsema_real_eip !20
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !20
  %124 = bitcast i64* %123 to i32*
  store i32 %104, i32* %124, !mcsema_real_eip !20
  br label %block_0x13, !mcsema_real_eip !21

block_0x13:                                       ; preds = %block_0x5a, %entry
  %125 = load i64, i64* %RBP_val, !mcsema_real_eip !21
  %126 = add i64 %125, -4, !mcsema_real_eip !21
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !21
  %128 = bitcast i64* %127 to i32*
  %129 = load i32, i32* %128, !mcsema_real_eip !21
  store i1 false, i1* %AF_val, !mcsema_real_eip !21
  %130 = trunc i32 %129 to i8, !mcsema_real_eip !21
  %131 = tail call i8 @llvm.ctpop.i8(i8 %130), !mcsema_real_eip !21
  %132 = and i8 %131, 1
  %133 = icmp eq i8 %132, 0
  store i1 %133, i1* %PF_val, !mcsema_real_eip !21
  %134 = icmp eq i32 %129, 0, !mcsema_real_eip !21
  store i1 %134, i1* %ZF_val, !mcsema_real_eip !21
  %135 = icmp slt i32 %129, 0
  store i1 %135, i1* %SF_val, !mcsema_real_eip !21
  store i1 false, i1* %CF_val, !mcsema_real_eip !21
  store i1 false, i1* %OF_val, !mcsema_real_eip !21
  br i1 %135, label %block_0x6a, label %block_0x20, !mcsema_real_eip !22

block_0x20:                                       ; preds = %block_0x13
  store i64 2, i64* %RAX_val, !mcsema_real_eip !23
  %136 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %137 = add i64 %136, -4, !mcsema_real_eip !24
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !24
  %139 = bitcast i64* %138 to i32*
  %140 = load i32, i32* %139, !mcsema_real_eip !24
  %141 = zext i32 %140 to i64, !mcsema_real_eip !24
  store i64 %141, i64* %RCX_val, !mcsema_real_eip !24
  %142 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %143 = add i64 %142, -20, !mcsema_real_eip !25
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !25
  %145 = load i64, i64* %RAX_val, !mcsema_real_eip !25
  %146 = trunc i64 %145 to i32, !mcsema_real_eip !25
  %147 = bitcast i64* %144 to i32*
  store i32 %146, i32* %147, !mcsema_real_eip !25
  %148 = load i64, i64* %RCX_val, !mcsema_real_eip !26
  %149 = and i64 %148, 4294967295
  store i64 %149, i64* %RAX_val, !mcsema_real_eip !26
  %150 = shl i64 %148, 32
  %sext = ashr i64 %150, 63
  %151 = and i64 %sext, 4294967295
  store i64 %151, i64* %RDX_val, !mcsema_real_eip !27
  %152 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %153 = add i64 %152, -20, !mcsema_real_eip !28
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !28
  %155 = bitcast i64* %154 to i32*
  %156 = load i32, i32* %155, !mcsema_real_eip !28
  %157 = zext i32 %156 to i64, !mcsema_real_eip !28
  store i64 %157, i64* %RCX_val, !mcsema_real_eip !28
  %158 = load i64, i64* %RAX_val, !mcsema_real_eip !29
  %159 = load i64, i64* %RDX_val, !mcsema_real_eip !29
  %160 = shl i64 %159, 32, !mcsema_real_eip !29
  %sext71 = shl i64 %158, 32
  %161 = ashr exact i64 %sext71, 32
  %162 = or i64 %160, %161, !mcsema_real_eip !29
  %163 = sext i32 %156 to i64, !mcsema_real_eip !29
  %164 = sdiv i64 %162, %163, !mcsema_real_eip !29
  %165 = srem i64 %162, %163, !mcsema_real_eip !29
  %166 = and i64 %165, 4294967295
  store i64 %166, i64* %RDX_val, !mcsema_real_eip !29
  %167 = and i64 %164, 4294967295
  store i64 %167, i64* %RAX_val, !mcsema_real_eip !29
  %168 = trunc i64 %165 to i32, !mcsema_real_eip !30
  store i1 false, i1* %AF_val, !mcsema_real_eip !30
  %169 = trunc i64 %165 to i8
  %170 = tail call i8 @llvm.ctpop.i8(i8 %169), !mcsema_real_eip !30
  %171 = and i8 %170, 1
  %172 = icmp eq i8 %171, 0
  store i1 %172, i1* %PF_val, !mcsema_real_eip !30
  %173 = icmp eq i32 %168, 0, !mcsema_real_eip !30
  store i1 %173, i1* %ZF_val, !mcsema_real_eip !30
  %174 = icmp slt i32 %168, 0
  store i1 %174, i1* %SF_val, !mcsema_real_eip !30
  store i1 false, i1* %CF_val, !mcsema_real_eip !30
  store i1 false, i1* %OF_val, !mcsema_real_eip !30
  %175 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %176 = add i64 %175, -12, !mcsema_real_eip !31
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !31
  %178 = bitcast i64* %177 to i32*
  %179 = load i32, i32* %178, !mcsema_real_eip !31
  %180 = zext i32 %179 to i64, !mcsema_real_eip !31
  store i64 %180, i64* %RAX_val, !mcsema_real_eip !31
  br i1 %173, label %block_0x3f, label %block_0x4f, !mcsema_real_eip !32

block_0x6a:                                       ; preds = %block_0x13
  %181 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %182 = add i64 %181, -16, !mcsema_real_eip !33
  %183 = inttoptr i64 %182 to i64*, !mcsema_real_eip !33
  %184 = bitcast i64* %183 to i32*
  %185 = load i32, i32* %184, !mcsema_real_eip !33
  %186 = zext i32 %185 to i64, !mcsema_real_eip !33
  store i64 %186, i64* %RAX_val, !mcsema_real_eip !33
  %187 = load i64, i64* %RSP_val, !mcsema_real_eip !34
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !34
  %189 = load i64, i64* %188, !mcsema_real_eip !34
  store i64 %189, i64* %RBP_val, !mcsema_real_eip !34
  %190 = add i64 %187, 16, !mcsema_real_eip !35
  store i64 %190, i64* %RSP_val, !mcsema_real_eip !35
  %191 = load i64, i64* %RAX_val, !mcsema_real_eip !35
  store i64 %191, i64* %RAX, !mcsema_real_eip !35
  %192 = load i64, i64* %RBX_val, !mcsema_real_eip !35
  store i64 %192, i64* %RBX, !mcsema_real_eip !35
  %193 = load i64, i64* %RCX_val, !mcsema_real_eip !35
  store i64 %193, i64* %RCX, !mcsema_real_eip !35
  %194 = load i64, i64* %RDX_val, !mcsema_real_eip !35
  store i64 %194, i64* %RDX, !mcsema_real_eip !35
  %195 = load i64, i64* %RSI_val, !mcsema_real_eip !35
  store i64 %195, i64* %RSI, !mcsema_real_eip !35
  %196 = load i64, i64* %RDI_val, !mcsema_real_eip !35
  store i64 %196, i64* %RDI, !mcsema_real_eip !35
  %197 = load i64, i64* %RSP_val, !mcsema_real_eip !35
  store i64 %197, i64* %RSP, !mcsema_real_eip !35
  %198 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  store i64 %198, i64* %RBP, !mcsema_real_eip !35
  %199 = load i64, i64* %R8_val, !mcsema_real_eip !35
  store i64 %199, i64* %R8, !mcsema_real_eip !35
  %200 = load i64, i64* %R9_val, !mcsema_real_eip !35
  store i64 %200, i64* %R9, !mcsema_real_eip !35
  %201 = load i64, i64* %R10_val, !mcsema_real_eip !35
  store i64 %201, i64* %R10, !mcsema_real_eip !35
  %202 = load i64, i64* %R11_val, !mcsema_real_eip !35
  store i64 %202, i64* %R11, !mcsema_real_eip !35
  %203 = load i64, i64* %R12_val, !mcsema_real_eip !35
  store i64 %203, i64* %R12, !mcsema_real_eip !35
  %204 = load i64, i64* %R13_val, !mcsema_real_eip !35
  store i64 %204, i64* %R13, !mcsema_real_eip !35
  %205 = load i64, i64* %R14_val, !mcsema_real_eip !35
  store i64 %205, i64* %R14, !mcsema_real_eip !35
  %206 = load i64, i64* %R15_val, !mcsema_real_eip !35
  store i64 %206, i64* %R15, !mcsema_real_eip !35
  %207 = load i64, i64* %RIP_val, !mcsema_real_eip !35
  store i64 %207, i64* %RIP, !mcsema_real_eip !35
  %208 = load i1, i1* %CF_val, !mcsema_real_eip !35
  store i1 %208, i1* %CF, align 1, !mcsema_real_eip !35
  %209 = load i1, i1* %PF_val, !mcsema_real_eip !35
  store i1 %209, i1* %PF, align 1, !mcsema_real_eip !35
  %210 = load i1, i1* %AF_val, !mcsema_real_eip !35
  store i1 %210, i1* %AF, align 1, !mcsema_real_eip !35
  %211 = load i1, i1* %ZF_val, !mcsema_real_eip !35
  store i1 %211, i1* %ZF, align 1, !mcsema_real_eip !35
  %212 = load i1, i1* %SF_val, !mcsema_real_eip !35
  store i1 %212, i1* %SF, align 1, !mcsema_real_eip !35
  %213 = load i1, i1* %OF_val, !mcsema_real_eip !35
  store i1 %213, i1* %OF, align 1, !mcsema_real_eip !35
  %214 = load i1, i1* %DF_val, !mcsema_real_eip !35
  store i1 %214, i1* %DF, align 1, !mcsema_real_eip !35
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !35
  %215 = load i1, i1* %FPU_B_val, !mcsema_real_eip !35
  store i1 %215, i1* %FPU_B, align 1, !mcsema_real_eip !35
  %216 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !35
  store i1 %216, i1* %FPU_C3, align 1, !mcsema_real_eip !35
  %217 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !35
  store i3 %217, i3* %FPU_TOP, align 1, !mcsema_real_eip !35
  %218 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !35
  store i1 %218, i1* %FPU_C2, align 1, !mcsema_real_eip !35
  %219 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !35
  store i1 %219, i1* %FPU_C1, align 1, !mcsema_real_eip !35
  %220 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !35
  store i1 %220, i1* %FPU_C0, align 1, !mcsema_real_eip !35
  %221 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !35
  store i1 %221, i1* %FPU_ES, align 1, !mcsema_real_eip !35
  %222 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !35
  store i1 %222, i1* %FPU_SF, align 1, !mcsema_real_eip !35
  %223 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !35
  store i1 %223, i1* %FPU_PE, align 1, !mcsema_real_eip !35
  %224 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !35
  store i1 %224, i1* %FPU_UE, align 1, !mcsema_real_eip !35
  %225 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !35
  store i1 %225, i1* %FPU_OE, align 1, !mcsema_real_eip !35
  %226 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !35
  store i1 %226, i1* %FPU_ZE, align 1, !mcsema_real_eip !35
  %227 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !35
  store i1 %227, i1* %FPU_DE, align 1, !mcsema_real_eip !35
  %228 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !35
  store i1 %228, i1* %FPU_IE, align 1, !mcsema_real_eip !35
  %229 = load i1, i1* %FPU_X_val, !mcsema_real_eip !35
  store i1 %229, i1* %FPU_X, align 1, !mcsema_real_eip !35
  %230 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !35
  store i2 %230, i2* %FPU_RC, align 1, !mcsema_real_eip !35
  %231 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !35
  store i2 %231, i2* %FPU_PC, align 1, !mcsema_real_eip !35
  %232 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !35
  store i1 %232, i1* %FPU_PM, align 1, !mcsema_real_eip !35
  %233 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !35
  store i1 %233, i1* %FPU_UM, align 1, !mcsema_real_eip !35
  %234 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !35
  store i1 %234, i1* %FPU_OM, align 1, !mcsema_real_eip !35
  %235 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !35
  store i1 %235, i1* %FPU_ZM, align 1, !mcsema_real_eip !35
  %236 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !35
  store i1 %236, i1* %FPU_DM, align 1, !mcsema_real_eip !35
  %237 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !35
  store i1 %237, i1* %FPU_IM, align 1, !mcsema_real_eip !35
  %238 = load i64, i64* %53, align 4
  store i64 %238, i64* %52, align 4
  %239 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !35
  store i16 %239, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !35
  %240 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !35
  store i64 %240, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !35
  %241 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !35
  store i16 %241, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !35
  %242 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !35
  store i64 %242, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !35
  %243 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !35
  store i11 %243, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !35
  %244 = load i128, i128* %XMM0_val, !mcsema_real_eip !35
  store i128 %244, i128* %XMM0, align 1, !mcsema_real_eip !35
  %245 = load i128, i128* %XMM1_val, !mcsema_real_eip !35
  store i128 %245, i128* %XMM1, align 1, !mcsema_real_eip !35
  %246 = load i128, i128* %XMM2_val, !mcsema_real_eip !35
  store i128 %246, i128* %XMM2, align 1, !mcsema_real_eip !35
  %247 = load i128, i128* %XMM3_val, !mcsema_real_eip !35
  store i128 %247, i128* %XMM3, align 1, !mcsema_real_eip !35
  %248 = load i128, i128* %XMM4_val, !mcsema_real_eip !35
  store i128 %248, i128* %XMM4, align 1, !mcsema_real_eip !35
  %249 = load i128, i128* %XMM5_val, !mcsema_real_eip !35
  store i128 %249, i128* %XMM5, align 1, !mcsema_real_eip !35
  %250 = load i128, i128* %XMM6_val, !mcsema_real_eip !35
  store i128 %250, i128* %XMM6, align 1, !mcsema_real_eip !35
  %251 = load i128, i128* %XMM7_val, !mcsema_real_eip !35
  store i128 %251, i128* %XMM7, align 1, !mcsema_real_eip !35
  %252 = load i128, i128* %XMM8_val, !mcsema_real_eip !35
  store i128 %252, i128* %XMM8, align 1, !mcsema_real_eip !35
  %253 = load i128, i128* %XMM9_val, !mcsema_real_eip !35
  store i128 %253, i128* %XMM9, align 1, !mcsema_real_eip !35
  %254 = load i128, i128* %XMM10_val, !mcsema_real_eip !35
  store i128 %254, i128* %XMM10, align 1, !mcsema_real_eip !35
  %255 = load i128, i128* %XMM11_val, !mcsema_real_eip !35
  store i128 %255, i128* %XMM11, align 1, !mcsema_real_eip !35
  %256 = load i128, i128* %XMM12_val, !mcsema_real_eip !35
  store i128 %256, i128* %XMM12, align 1, !mcsema_real_eip !35
  %257 = load i128, i128* %XMM13_val, !mcsema_real_eip !35
  store i128 %257, i128* %XMM13, align 1, !mcsema_real_eip !35
  %258 = load i128, i128* %XMM14_val, !mcsema_real_eip !35
  store i128 %258, i128* %XMM14, align 1, !mcsema_real_eip !35
  %259 = load i128, i128* %XMM15_val, !mcsema_real_eip !35
  store i128 %259, i128* %XMM15, align 1, !mcsema_real_eip !35
  %260 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !35
  store i64 %260, i64* %STACK_BASE, align 1, !mcsema_real_eip !35
  %261 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !35
  store i64 %261, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !35
  ret void, !mcsema_real_eip !35

block_0x3f:                                       ; preds = %block_0x20
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %179, i32 10)
  %262 = extractvalue { i32, i1 } %uadd72, 0
  %263 = xor i32 %262, %179, !mcsema_real_eip !36
  %264 = and i32 %263, 16, !mcsema_real_eip !36
  %265 = icmp ne i32 %264, 0, !mcsema_real_eip !36
  store i1 %265, i1* %AF_val, !mcsema_real_eip !36
  %266 = icmp slt i32 %262, 0
  store i1 %266, i1* %SF_val, !mcsema_real_eip !36
  %267 = icmp eq i32 %262, 0, !mcsema_real_eip !36
  store i1 %267, i1* %ZF_val, !mcsema_real_eip !36
  %268 = xor i32 %179, -2147483648, !mcsema_real_eip !36
  %269 = and i32 %263, %268, !mcsema_real_eip !36
  %270 = icmp slt i32 %269, 0
  store i1 %270, i1* %OF_val, !mcsema_real_eip !36
  %271 = trunc i32 %262 to i8, !mcsema_real_eip !36
  %272 = tail call i8 @llvm.ctpop.i8(i8 %271), !mcsema_real_eip !36
  %273 = and i8 %272, 1
  %274 = icmp eq i8 %273, 0
  store i1 %274, i1* %PF_val, !mcsema_real_eip !36
  %275 = extractvalue { i32, i1 } %uadd72, 1
  store i1 %275, i1* %CF_val, !mcsema_real_eip !36
  %276 = zext i32 %262 to i64, !mcsema_real_eip !36
  store i64 %276, i64* %RAX_val, !mcsema_real_eip !36
  %277 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %278 = add i64 %277, -16, !mcsema_real_eip !37
  %279 = inttoptr i64 %278 to i64*, !mcsema_real_eip !37
  %280 = bitcast i64* %279 to i32*
  store i32 %262, i32* %280, !mcsema_real_eip !37
  br label %block_0x5a, !mcsema_real_eip !38

block_0x4f:                                       ; preds = %block_0x20
  %281 = add i32 %179, -10
  %282 = xor i32 %281, %179, !mcsema_real_eip !39
  %283 = and i32 %282, 16, !mcsema_real_eip !39
  %284 = icmp ne i32 %283, 0, !mcsema_real_eip !39
  store i1 %284, i1* %AF_val, !mcsema_real_eip !39
  %285 = trunc i32 %281 to i8, !mcsema_real_eip !39
  %286 = tail call i8 @llvm.ctpop.i8(i8 %285), !mcsema_real_eip !39
  %287 = and i8 %286, 1
  %288 = icmp eq i8 %287, 0
  store i1 %288, i1* %PF_val, !mcsema_real_eip !39
  %289 = icmp eq i32 %281, 0, !mcsema_real_eip !39
  store i1 %289, i1* %ZF_val, !mcsema_real_eip !39
  %290 = icmp slt i32 %281, 0
  store i1 %290, i1* %SF_val, !mcsema_real_eip !39
  %291 = icmp ult i32 %179, 10, !mcsema_real_eip !39
  store i1 %291, i1* %CF_val, !mcsema_real_eip !39
  %292 = and i32 %282, %179, !mcsema_real_eip !39
  %293 = icmp slt i32 %292, 0
  store i1 %293, i1* %OF_val, !mcsema_real_eip !39
  %294 = zext i32 %281 to i64, !mcsema_real_eip !39
  store i64 %294, i64* %RAX_val, !mcsema_real_eip !39
  %295 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %296 = add i64 %295, -12, !mcsema_real_eip !40
  %297 = inttoptr i64 %296 to i64*, !mcsema_real_eip !40
  %298 = bitcast i64* %297 to i32*
  store i32 %281, i32* %298, !mcsema_real_eip !40
  br label %block_0x5a, !mcsema_real_eip !41

block_0x5a:                                       ; preds = %block_0x4f, %block_0x3f
  %299 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  %300 = add i64 %299, -4, !mcsema_real_eip !42
  %301 = inttoptr i64 %300 to i64*, !mcsema_real_eip !42
  %302 = bitcast i64* %301 to i32*
  %303 = load i32, i32* %302, !mcsema_real_eip !42
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %303, i32 -1)
  %304 = extractvalue { i32, i1 } %uadd73, 0
  %305 = xor i32 %304, %303, !mcsema_real_eip !43
  %306 = and i32 %305, 16
  %307 = icmp eq i32 %306, 0
  store i1 %307, i1* %AF_val, !mcsema_real_eip !43
  %308 = icmp slt i32 %304, 0
  store i1 %308, i1* %SF_val, !mcsema_real_eip !43
  %309 = icmp eq i32 %304, 0, !mcsema_real_eip !43
  store i1 %309, i1* %ZF_val, !mcsema_real_eip !43
  %310 = and i32 %305, %303, !mcsema_real_eip !43
  %311 = icmp slt i32 %310, 0
  store i1 %311, i1* %OF_val, !mcsema_real_eip !43
  %312 = trunc i32 %304 to i8, !mcsema_real_eip !43
  %313 = tail call i8 @llvm.ctpop.i8(i8 %312), !mcsema_real_eip !43
  %314 = and i8 %313, 1
  %315 = icmp eq i8 %314, 0
  store i1 %315, i1* %PF_val, !mcsema_real_eip !43
  %316 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %316, i1* %CF_val, !mcsema_real_eip !43
  %317 = zext i32 %304 to i64, !mcsema_real_eip !43
  store i64 %317, i64* %RAX_val, !mcsema_real_eip !43
  %318 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  %319 = add i64 %318, -4, !mcsema_real_eip !44
  %320 = inttoptr i64 %319 to i64*, !mcsema_real_eip !44
  %321 = bitcast i64* %320 to i32*
  store i32 %304, i32* %321, !mcsema_real_eip !44
  br label %block_0x13, !mcsema_real_eip !45
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_70(%struct.regs* %0)
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
!2 = !{i64 112}
!3 = !{i64 113}
!4 = !{i64 116}
!5 = !{i64 120}
!6 = !{i64 125}
!7 = !{i64 130}
!8 = !{i64 137}
!9 = !{i64 142}
!10 = !{i64 145}
!11 = !{i64 148}
!12 = !{i64 152}
!13 = !{i64 153}
!14 = !{i64 0}
!15 = !{i64 1}
!16 = !{i64 4}
!17 = !{i64 7}
!18 = !{i64 10}
!19 = !{i64 13}
!20 = !{i64 16}
!21 = !{i64 19}
!22 = !{i64 26}
!23 = !{i64 32}
!24 = !{i64 37}
!25 = !{i64 40}
!26 = !{i64 43}
!27 = !{i64 45}
!28 = !{i64 46}
!29 = !{i64 49}
!30 = !{i64 51}
!31 = !{i64 79}
!32 = !{i64 57}
!33 = !{i64 106}
!34 = !{i64 109}
!35 = !{i64 110}
!36 = !{i64 66}
!37 = !{i64 71}
!38 = !{i64 74}
!39 = !{i64 82}
!40 = !{i64 87}
!41 = !{i64 63}
!42 = !{i64 90}
!43 = !{i64 93}
!44 = !{i64 98}
!45 = !{i64 101}
