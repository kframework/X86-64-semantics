; ModuleID = 'Output/test_2.clang.bc'
source_filename = "Output/test_2.clang.bc"
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
  %82 = add i64 %79, -40
  %83 = xor i64 %82, %80, !mcsema_real_eip !4
  %84 = and i64 %83, 16, !mcsema_real_eip !4
  %85 = icmp ne i64 %84, 0, !mcsema_real_eip !4
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
  %92 = icmp ult i64 %80, 32, !mcsema_real_eip !4
  store i1 %92, i1* %CF_val, !mcsema_real_eip !4
  %93 = and i64 %83, %80, !mcsema_real_eip !4
  %94 = icmp slt i64 %93, 0
  store i1 %94, i1* %OF_val, !mcsema_real_eip !4
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !4
  store i64 10, i64* %RDI_val, !mcsema_real_eip !5
  store i64 20, i64* %RSI_val, !mcsema_real_eip !6
  store i64 30, i64* %RDX_val, !mcsema_real_eip !7
  store i64 40, i64* %RCX_val, !mcsema_real_eip !8
  store i64 50, i64* %R8_val, !mcsema_real_eip !9
  store i64 60, i64* %R9_val, !mcsema_real_eip !10
  store i64 70, i64* %RAX_val, !mcsema_real_eip !11
  store i64 80, i64* %R10_val, !mcsema_real_eip !12
  %95 = load i64, i64* %RBP_val, !mcsema_real_eip !13
  %96 = add i64 %95, -4, !mcsema_real_eip !13
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !13
  %98 = bitcast i64* %97 to i32*
  store i32 0, i32* %98, !mcsema_real_eip !13
  %99 = load i64, i64* %RSP_val, !mcsema_real_eip !14
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !14
  %101 = bitcast i64* %100 to i32*
  store i32 70, i32* %101, !mcsema_real_eip !14
  %102 = load i64, i64* %RSP_val, !mcsema_real_eip !15
  %103 = add i64 %102, 8, !mcsema_real_eip !15
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !15
  %105 = bitcast i64* %104 to i32*
  store i32 80, i32* %105, !mcsema_real_eip !15
  %106 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %107 = add i64 %106, -12, !mcsema_real_eip !16
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !16
  %109 = load i64, i64* %R10_val, !mcsema_real_eip !16
  %110 = trunc i64 %109 to i32, !mcsema_real_eip !16
  %111 = bitcast i64* %108 to i32*
  store i32 %110, i32* %111, !mcsema_real_eip !16
  %112 = load i64, i64* %RBP_val, !mcsema_real_eip !17
  %113 = add i64 %112, -16, !mcsema_real_eip !17
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !17
  %115 = load i64, i64* %RAX_val, !mcsema_real_eip !17
  %116 = trunc i64 %115 to i32, !mcsema_real_eip !17
  %117 = bitcast i64* %114 to i32*
  store i32 %116, i32* %117, !mcsema_real_eip !17
  %118 = load i64, i64* %RSP_val, !mcsema_real_eip !18
  %119 = add i64 %118, -8
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !18
  store i64 -4981261766360305936, i64* %120, !mcsema_real_eip !18
  store i64 %119, i64* %RSP_val, !mcsema_real_eip !18
  %121 = load i64, i64* %RAX_val, !mcsema_real_eip !18
  store i64 %121, i64* %RAX, !mcsema_real_eip !18
  %122 = load i64, i64* %RBX_val, !mcsema_real_eip !18
  store i64 %122, i64* %RBX, !mcsema_real_eip !18
  %123 = load i64, i64* %RCX_val, !mcsema_real_eip !18
  store i64 %123, i64* %RCX, !mcsema_real_eip !18
  %124 = load i64, i64* %RDX_val, !mcsema_real_eip !18
  store i64 %124, i64* %RDX, !mcsema_real_eip !18
  %125 = load i64, i64* %RSI_val, !mcsema_real_eip !18
  store i64 %125, i64* %RSI, !mcsema_real_eip !18
  %126 = load i64, i64* %RDI_val, !mcsema_real_eip !18
  store i64 %126, i64* %RDI, !mcsema_real_eip !18
  %127 = load i64, i64* %RSP_val, !mcsema_real_eip !18
  store i64 %127, i64* %RSP, !mcsema_real_eip !18
  %128 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  store i64 %128, i64* %RBP, !mcsema_real_eip !18
  %129 = load i64, i64* %R8_val, !mcsema_real_eip !18
  store i64 %129, i64* %R8, !mcsema_real_eip !18
  %130 = load i64, i64* %R9_val, !mcsema_real_eip !18
  store i64 %130, i64* %R9, !mcsema_real_eip !18
  %131 = load i64, i64* %R10_val, !mcsema_real_eip !18
  store i64 %131, i64* %R10, !mcsema_real_eip !18
  %132 = load i64, i64* %R11_val, !mcsema_real_eip !18
  store i64 %132, i64* %R11, !mcsema_real_eip !18
  %133 = load i64, i64* %R12_val, !mcsema_real_eip !18
  store i64 %133, i64* %R12, !mcsema_real_eip !18
  %134 = load i64, i64* %R13_val, !mcsema_real_eip !18
  store i64 %134, i64* %R13, !mcsema_real_eip !18
  %135 = load i64, i64* %R14_val, !mcsema_real_eip !18
  store i64 %135, i64* %R14, !mcsema_real_eip !18
  %136 = load i64, i64* %R15_val, !mcsema_real_eip !18
  store i64 %136, i64* %R15, !mcsema_real_eip !18
  %137 = load i64, i64* %RIP_val, !mcsema_real_eip !18
  store i64 %137, i64* %RIP, !mcsema_real_eip !18
  %138 = load i1, i1* %CF_val, !mcsema_real_eip !18
  store i1 %138, i1* %CF, align 1, !mcsema_real_eip !18
  %139 = load i1, i1* %PF_val, !mcsema_real_eip !18
  store i1 %139, i1* %PF, align 1, !mcsema_real_eip !18
  %140 = load i1, i1* %AF_val, !mcsema_real_eip !18
  store i1 %140, i1* %AF, align 1, !mcsema_real_eip !18
  %141 = load i1, i1* %ZF_val, !mcsema_real_eip !18
  store i1 %141, i1* %ZF, align 1, !mcsema_real_eip !18
  %142 = load i1, i1* %SF_val, !mcsema_real_eip !18
  store i1 %142, i1* %SF, align 1, !mcsema_real_eip !18
  %143 = load i1, i1* %OF_val, !mcsema_real_eip !18
  store i1 %143, i1* %OF, align 1, !mcsema_real_eip !18
  %144 = load i1, i1* %DF_val, !mcsema_real_eip !18
  store i1 %144, i1* %DF, align 1, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !18
  %145 = load i1, i1* %FPU_B_val, !mcsema_real_eip !18
  store i1 %145, i1* %FPU_B, align 1, !mcsema_real_eip !18
  %146 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !18
  store i1 %146, i1* %FPU_C3, align 1, !mcsema_real_eip !18
  %147 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !18
  store i3 %147, i3* %FPU_TOP, align 1, !mcsema_real_eip !18
  %148 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !18
  store i1 %148, i1* %FPU_C2, align 1, !mcsema_real_eip !18
  %149 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !18
  store i1 %149, i1* %FPU_C1, align 1, !mcsema_real_eip !18
  %150 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !18
  store i1 %150, i1* %FPU_C0, align 1, !mcsema_real_eip !18
  %151 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !18
  store i1 %151, i1* %FPU_ES, align 1, !mcsema_real_eip !18
  %152 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !18
  store i1 %152, i1* %FPU_SF, align 1, !mcsema_real_eip !18
  %153 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !18
  store i1 %153, i1* %FPU_PE, align 1, !mcsema_real_eip !18
  %154 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !18
  store i1 %154, i1* %FPU_UE, align 1, !mcsema_real_eip !18
  %155 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !18
  store i1 %155, i1* %FPU_OE, align 1, !mcsema_real_eip !18
  %156 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !18
  store i1 %156, i1* %FPU_ZE, align 1, !mcsema_real_eip !18
  %157 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !18
  store i1 %157, i1* %FPU_DE, align 1, !mcsema_real_eip !18
  %158 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !18
  store i1 %158, i1* %FPU_IE, align 1, !mcsema_real_eip !18
  %159 = load i1, i1* %FPU_X_val, !mcsema_real_eip !18
  store i1 %159, i1* %FPU_X, align 1, !mcsema_real_eip !18
  %160 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !18
  store i2 %160, i2* %FPU_RC, align 1, !mcsema_real_eip !18
  %161 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !18
  store i2 %161, i2* %FPU_PC, align 1, !mcsema_real_eip !18
  %162 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !18
  store i1 %162, i1* %FPU_PM, align 1, !mcsema_real_eip !18
  %163 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !18
  store i1 %163, i1* %FPU_UM, align 1, !mcsema_real_eip !18
  %164 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !18
  store i1 %164, i1* %FPU_OM, align 1, !mcsema_real_eip !18
  %165 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !18
  store i1 %165, i1* %FPU_ZM, align 1, !mcsema_real_eip !18
  %166 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !18
  store i1 %166, i1* %FPU_DM, align 1, !mcsema_real_eip !18
  %167 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !18
  store i1 %167, i1* %FPU_IM, align 1, !mcsema_real_eip !18
  %168 = load i64, i64* %53, align 4
  store i64 %168, i64* %52, align 4
  %169 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !18
  store i16 %169, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !18
  %170 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !18
  store i64 %170, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !18
  %171 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !18
  store i16 %171, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !18
  %172 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !18
  store i64 %172, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !18
  %173 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !18
  store i11 %173, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !18
  %174 = load i128, i128* %XMM0_val, !mcsema_real_eip !18
  store i128 %174, i128* %XMM0, align 1, !mcsema_real_eip !18
  %175 = load i128, i128* %XMM1_val, !mcsema_real_eip !18
  store i128 %175, i128* %XMM1, align 1, !mcsema_real_eip !18
  %176 = load i128, i128* %XMM2_val, !mcsema_real_eip !18
  store i128 %176, i128* %XMM2, align 1, !mcsema_real_eip !18
  %177 = load i128, i128* %XMM3_val, !mcsema_real_eip !18
  store i128 %177, i128* %XMM3, align 1, !mcsema_real_eip !18
  %178 = load i128, i128* %XMM4_val, !mcsema_real_eip !18
  store i128 %178, i128* %XMM4, align 1, !mcsema_real_eip !18
  %179 = load i128, i128* %XMM5_val, !mcsema_real_eip !18
  store i128 %179, i128* %XMM5, align 1, !mcsema_real_eip !18
  %180 = load i128, i128* %XMM6_val, !mcsema_real_eip !18
  store i128 %180, i128* %XMM6, align 1, !mcsema_real_eip !18
  %181 = load i128, i128* %XMM7_val, !mcsema_real_eip !18
  store i128 %181, i128* %XMM7, align 1, !mcsema_real_eip !18
  %182 = load i128, i128* %XMM8_val, !mcsema_real_eip !18
  store i128 %182, i128* %XMM8, align 1, !mcsema_real_eip !18
  %183 = load i128, i128* %XMM9_val, !mcsema_real_eip !18
  store i128 %183, i128* %XMM9, align 1, !mcsema_real_eip !18
  %184 = load i128, i128* %XMM10_val, !mcsema_real_eip !18
  store i128 %184, i128* %XMM10, align 1, !mcsema_real_eip !18
  %185 = load i128, i128* %XMM11_val, !mcsema_real_eip !18
  store i128 %185, i128* %XMM11, align 1, !mcsema_real_eip !18
  %186 = load i128, i128* %XMM12_val, !mcsema_real_eip !18
  store i128 %186, i128* %XMM12, align 1, !mcsema_real_eip !18
  %187 = load i128, i128* %XMM13_val, !mcsema_real_eip !18
  store i128 %187, i128* %XMM13, align 1, !mcsema_real_eip !18
  %188 = load i128, i128* %XMM14_val, !mcsema_real_eip !18
  store i128 %188, i128* %XMM14, align 1, !mcsema_real_eip !18
  %189 = load i128, i128* %XMM15_val, !mcsema_real_eip !18
  store i128 %189, i128* %XMM15, align 1, !mcsema_real_eip !18
  %190 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !18
  store i64 %190, i64* %STACK_BASE, align 1, !mcsema_real_eip !18
  %191 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !18
  store i64 %191, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !18
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !18
  %192 = load i64, i64* %RAX, !mcsema_real_eip !18
  store i64 %192, i64* %RAX_val, !mcsema_real_eip !18
  %193 = load i64, i64* %RBX, !mcsema_real_eip !18
  store i64 %193, i64* %RBX_val, !mcsema_real_eip !18
  %194 = load i64, i64* %RCX, !mcsema_real_eip !18
  store i64 %194, i64* %RCX_val, !mcsema_real_eip !18
  %195 = load i64, i64* %RDX, !mcsema_real_eip !18
  store i64 %195, i64* %RDX_val, !mcsema_real_eip !18
  %196 = load i64, i64* %RSI, !mcsema_real_eip !18
  store i64 %196, i64* %RSI_val, !mcsema_real_eip !18
  %197 = load i64, i64* %RDI, !mcsema_real_eip !18
  store i64 %197, i64* %RDI_val, !mcsema_real_eip !18
  %198 = load i64, i64* %RSP, !mcsema_real_eip !18
  store i64 %198, i64* %RSP_val, !mcsema_real_eip !18
  %199 = load i64, i64* %RBP, !mcsema_real_eip !18
  store i64 %199, i64* %RBP_val, !mcsema_real_eip !18
  %200 = load i64, i64* %R8, !mcsema_real_eip !18
  store i64 %200, i64* %R8_val, !mcsema_real_eip !18
  %201 = load i64, i64* %R9, !mcsema_real_eip !18
  store i64 %201, i64* %R9_val, !mcsema_real_eip !18
  %202 = load i64, i64* %R10, !mcsema_real_eip !18
  store i64 %202, i64* %R10_val, !mcsema_real_eip !18
  %203 = load i64, i64* %R11, !mcsema_real_eip !18
  store i64 %203, i64* %R11_val, !mcsema_real_eip !18
  %204 = load i64, i64* %R12, !mcsema_real_eip !18
  store i64 %204, i64* %R12_val, !mcsema_real_eip !18
  %205 = load i64, i64* %R13, !mcsema_real_eip !18
  store i64 %205, i64* %R13_val, !mcsema_real_eip !18
  %206 = load i64, i64* %R14, !mcsema_real_eip !18
  store i64 %206, i64* %R14_val, !mcsema_real_eip !18
  %207 = load i64, i64* %R15, !mcsema_real_eip !18
  store i64 %207, i64* %R15_val, !mcsema_real_eip !18
  %208 = load i64, i64* %RIP, !mcsema_real_eip !18
  store i64 %208, i64* %RIP_val, !mcsema_real_eip !18
  %209 = load i1, i1* %CF, align 1, !mcsema_real_eip !18
  store i1 %209, i1* %CF_val, !mcsema_real_eip !18
  %210 = load i1, i1* %PF, align 1, !mcsema_real_eip !18
  store i1 %210, i1* %PF_val, !mcsema_real_eip !18
  %211 = load i1, i1* %AF, align 1, !mcsema_real_eip !18
  store i1 %211, i1* %AF_val, !mcsema_real_eip !18
  %212 = load i1, i1* %ZF, align 1, !mcsema_real_eip !18
  store i1 %212, i1* %ZF_val, !mcsema_real_eip !18
  %213 = load i1, i1* %SF, align 1, !mcsema_real_eip !18
  store i1 %213, i1* %SF_val, !mcsema_real_eip !18
  %214 = load i1, i1* %OF, align 1, !mcsema_real_eip !18
  store i1 %214, i1* %OF_val, !mcsema_real_eip !18
  %215 = load i1, i1* %DF, align 1, !mcsema_real_eip !18
  store i1 %215, i1* %DF_val, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !18
  %216 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !18
  store i1 %216, i1* %FPU_B_val, !mcsema_real_eip !18
  %217 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !18
  store i1 %217, i1* %FPU_C3_val, !mcsema_real_eip !18
  %218 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !18
  store i3 %218, i3* %FPU_TOP_val, !mcsema_real_eip !18
  %219 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !18
  store i1 %219, i1* %FPU_C2_val, !mcsema_real_eip !18
  %220 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !18
  store i1 %220, i1* %FPU_C1_val, !mcsema_real_eip !18
  %221 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !18
  store i1 %221, i1* %FPU_C0_val, !mcsema_real_eip !18
  %222 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !18
  store i1 %222, i1* %FPU_ES_val, !mcsema_real_eip !18
  %223 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !18
  store i1 %223, i1* %FPU_SF_val, !mcsema_real_eip !18
  %224 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !18
  store i1 %224, i1* %FPU_PE_val, !mcsema_real_eip !18
  %225 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !18
  store i1 %225, i1* %FPU_UE_val, !mcsema_real_eip !18
  %226 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !18
  store i1 %226, i1* %FPU_OE_val, !mcsema_real_eip !18
  %227 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !18
  store i1 %227, i1* %FPU_ZE_val, !mcsema_real_eip !18
  %228 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !18
  store i1 %228, i1* %FPU_DE_val, !mcsema_real_eip !18
  %229 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !18
  store i1 %229, i1* %FPU_IE_val, !mcsema_real_eip !18
  %230 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !18
  store i1 %230, i1* %FPU_X_val, !mcsema_real_eip !18
  %231 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !18
  store i2 %231, i2* %FPU_RC_val, !mcsema_real_eip !18
  %232 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !18
  store i2 %232, i2* %FPU_PC_val, !mcsema_real_eip !18
  %233 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !18
  store i1 %233, i1* %FPU_PM_val, !mcsema_real_eip !18
  %234 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !18
  store i1 %234, i1* %FPU_UM_val, !mcsema_real_eip !18
  %235 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !18
  store i1 %235, i1* %FPU_OM_val, !mcsema_real_eip !18
  %236 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !18
  store i1 %236, i1* %FPU_ZM_val, !mcsema_real_eip !18
  %237 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !18
  store i1 %237, i1* %FPU_DM_val, !mcsema_real_eip !18
  %238 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !18
  store i1 %238, i1* %FPU_IM_val, !mcsema_real_eip !18
  %239 = load i64, i64* %52, align 4
  store i64 %239, i64* %53, align 4
  %240 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !18
  store i16 %240, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !18
  %241 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !18
  store i64 %241, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !18
  %242 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !18
  store i16 %242, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !18
  %243 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !18
  store i64 %243, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !18
  %244 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !18
  store i11 %244, i11* %FPU_FOPCODE_val, !mcsema_real_eip !18
  %245 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !18
  store i128 %245, i128* %XMM0_val, !mcsema_real_eip !18
  %246 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !18
  store i128 %246, i128* %XMM1_val, !mcsema_real_eip !18
  %247 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !18
  store i128 %247, i128* %XMM2_val, !mcsema_real_eip !18
  %248 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !18
  store i128 %248, i128* %XMM3_val, !mcsema_real_eip !18
  %249 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !18
  store i128 %249, i128* %XMM4_val, !mcsema_real_eip !18
  %250 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !18
  store i128 %250, i128* %XMM5_val, !mcsema_real_eip !18
  %251 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !18
  store i128 %251, i128* %XMM6_val, !mcsema_real_eip !18
  %252 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !18
  store i128 %252, i128* %XMM7_val, !mcsema_real_eip !18
  %253 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !18
  store i128 %253, i128* %XMM8_val, !mcsema_real_eip !18
  %254 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !18
  store i128 %254, i128* %XMM9_val, !mcsema_real_eip !18
  %255 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !18
  store i128 %255, i128* %XMM10_val, !mcsema_real_eip !18
  %256 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !18
  store i128 %256, i128* %XMM11_val, !mcsema_real_eip !18
  %257 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !18
  store i128 %257, i128* %XMM12_val, !mcsema_real_eip !18
  %258 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !18
  store i128 %258, i128* %XMM13_val, !mcsema_real_eip !18
  %259 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !18
  store i128 %259, i128* %XMM14_val, !mcsema_real_eip !18
  %260 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !18
  store i128 %260, i128* %XMM15_val, !mcsema_real_eip !18
  %261 = load i64, i64* %STACK_BASE, !mcsema_real_eip !18
  store i64 %261, i64* %STACK_BASE_val, !mcsema_real_eip !18
  %262 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !18
  store i64 %262, i64* %STACK_LIMIT_val, !mcsema_real_eip !18
  %263 = load i64, i64* %RBP_val, !mcsema_real_eip !19
  %264 = add i64 %263, -8, !mcsema_real_eip !19
  %265 = inttoptr i64 %264 to i64*, !mcsema_real_eip !19
  %266 = load i64, i64* %RAX_val, !mcsema_real_eip !19
  %267 = trunc i64 %266 to i32, !mcsema_real_eip !19
  %268 = bitcast i64* %265 to i32*
  store i32 %267, i32* %268, !mcsema_real_eip !19
  %269 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %270 = add i64 %269, -8, !mcsema_real_eip !20
  %271 = inttoptr i64 %270 to i64*, !mcsema_real_eip !20
  %272 = bitcast i64* %271 to i32*
  %273 = load i32, i32* %272, !mcsema_real_eip !20
  %274 = zext i32 %273 to i64, !mcsema_real_eip !20
  store i64 %274, i64* %RAX_val, !mcsema_real_eip !20
  %275 = load i64, i64* %RSP_val, !mcsema_real_eip !21
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %275, i64 32)
  %276 = extractvalue { i64, i1 } %uadd, 0
  %277 = xor i64 %276, %275, !mcsema_real_eip !21
  %278 = and i64 %277, 16, !mcsema_real_eip !21
  %279 = icmp ne i64 %278, 0, !mcsema_real_eip !21
  store i1 %279, i1* %AF_val, !mcsema_real_eip !21
  %280 = icmp slt i64 %276, 0
  store i1 %280, i1* %SF_val, !mcsema_real_eip !21
  %281 = icmp eq i64 %276, 0, !mcsema_real_eip !21
  store i1 %281, i1* %ZF_val, !mcsema_real_eip !21
  %282 = xor i64 %275, -9223372036854775808, !mcsema_real_eip !21
  %283 = and i64 %277, %282, !mcsema_real_eip !21
  %284 = icmp slt i64 %283, 0
  store i1 %284, i1* %OF_val, !mcsema_real_eip !21
  %285 = trunc i64 %276 to i8, !mcsema_real_eip !21
  %286 = tail call i8 @llvm.ctpop.i8(i8 %285), !mcsema_real_eip !21
  %287 = and i8 %286, 1
  %288 = icmp eq i8 %287, 0
  store i1 %288, i1* %PF_val, !mcsema_real_eip !21
  %289 = extractvalue { i64, i1 } %uadd, 1
  store i1 %289, i1* %CF_val, !mcsema_real_eip !21
  store i64 %276, i64* %RSP_val, !mcsema_real_eip !21
  %290 = inttoptr i64 %276 to i64*, !mcsema_real_eip !22
  %291 = load i64, i64* %290, !mcsema_real_eip !22
  store i64 %291, i64* %RBP_val, !mcsema_real_eip !22
  %292 = add i64 %276, 16, !mcsema_real_eip !23
  store i64 %292, i64* %RSP_val, !mcsema_real_eip !23
  %293 = load i64, i64* %RAX_val, !mcsema_real_eip !23
  store i64 %293, i64* %RAX, !mcsema_real_eip !23
  %294 = load i64, i64* %RBX_val, !mcsema_real_eip !23
  store i64 %294, i64* %RBX, !mcsema_real_eip !23
  %295 = load i64, i64* %RCX_val, !mcsema_real_eip !23
  store i64 %295, i64* %RCX, !mcsema_real_eip !23
  %296 = load i64, i64* %RDX_val, !mcsema_real_eip !23
  store i64 %296, i64* %RDX, !mcsema_real_eip !23
  %297 = load i64, i64* %RSI_val, !mcsema_real_eip !23
  store i64 %297, i64* %RSI, !mcsema_real_eip !23
  %298 = load i64, i64* %RDI_val, !mcsema_real_eip !23
  store i64 %298, i64* %RDI, !mcsema_real_eip !23
  %299 = load i64, i64* %RSP_val, !mcsema_real_eip !23
  store i64 %299, i64* %RSP, !mcsema_real_eip !23
  %300 = load i64, i64* %RBP_val, !mcsema_real_eip !23
  store i64 %300, i64* %RBP, !mcsema_real_eip !23
  %301 = load i64, i64* %R8_val, !mcsema_real_eip !23
  store i64 %301, i64* %R8, !mcsema_real_eip !23
  %302 = load i64, i64* %R9_val, !mcsema_real_eip !23
  store i64 %302, i64* %R9, !mcsema_real_eip !23
  %303 = load i64, i64* %R10_val, !mcsema_real_eip !23
  store i64 %303, i64* %R10, !mcsema_real_eip !23
  %304 = load i64, i64* %R11_val, !mcsema_real_eip !23
  store i64 %304, i64* %R11, !mcsema_real_eip !23
  %305 = load i64, i64* %R12_val, !mcsema_real_eip !23
  store i64 %305, i64* %R12, !mcsema_real_eip !23
  %306 = load i64, i64* %R13_val, !mcsema_real_eip !23
  store i64 %306, i64* %R13, !mcsema_real_eip !23
  %307 = load i64, i64* %R14_val, !mcsema_real_eip !23
  store i64 %307, i64* %R14, !mcsema_real_eip !23
  %308 = load i64, i64* %R15_val, !mcsema_real_eip !23
  store i64 %308, i64* %R15, !mcsema_real_eip !23
  %309 = load i64, i64* %RIP_val, !mcsema_real_eip !23
  store i64 %309, i64* %RIP, !mcsema_real_eip !23
  %310 = load i1, i1* %CF_val, !mcsema_real_eip !23
  store i1 %310, i1* %CF, align 1, !mcsema_real_eip !23
  %311 = load i1, i1* %PF_val, !mcsema_real_eip !23
  store i1 %311, i1* %PF, align 1, !mcsema_real_eip !23
  %312 = load i1, i1* %AF_val, !mcsema_real_eip !23
  store i1 %312, i1* %AF, align 1, !mcsema_real_eip !23
  %313 = load i1, i1* %ZF_val, !mcsema_real_eip !23
  store i1 %313, i1* %ZF, align 1, !mcsema_real_eip !23
  %314 = load i1, i1* %SF_val, !mcsema_real_eip !23
  store i1 %314, i1* %SF, align 1, !mcsema_real_eip !23
  %315 = load i1, i1* %OF_val, !mcsema_real_eip !23
  store i1 %315, i1* %OF, align 1, !mcsema_real_eip !23
  %316 = load i1, i1* %DF_val, !mcsema_real_eip !23
  store i1 %316, i1* %DF, align 1, !mcsema_real_eip !23
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !23
  %317 = load i1, i1* %FPU_B_val, !mcsema_real_eip !23
  store i1 %317, i1* %FPU_B, align 1, !mcsema_real_eip !23
  %318 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !23
  store i1 %318, i1* %FPU_C3, align 1, !mcsema_real_eip !23
  %319 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !23
  store i3 %319, i3* %FPU_TOP, align 1, !mcsema_real_eip !23
  %320 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !23
  store i1 %320, i1* %FPU_C2, align 1, !mcsema_real_eip !23
  %321 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !23
  store i1 %321, i1* %FPU_C1, align 1, !mcsema_real_eip !23
  %322 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !23
  store i1 %322, i1* %FPU_C0, align 1, !mcsema_real_eip !23
  %323 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !23
  store i1 %323, i1* %FPU_ES, align 1, !mcsema_real_eip !23
  %324 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !23
  store i1 %324, i1* %FPU_SF, align 1, !mcsema_real_eip !23
  %325 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !23
  store i1 %325, i1* %FPU_PE, align 1, !mcsema_real_eip !23
  %326 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !23
  store i1 %326, i1* %FPU_UE, align 1, !mcsema_real_eip !23
  %327 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !23
  store i1 %327, i1* %FPU_OE, align 1, !mcsema_real_eip !23
  %328 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !23
  store i1 %328, i1* %FPU_ZE, align 1, !mcsema_real_eip !23
  %329 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !23
  store i1 %329, i1* %FPU_DE, align 1, !mcsema_real_eip !23
  %330 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !23
  store i1 %330, i1* %FPU_IE, align 1, !mcsema_real_eip !23
  %331 = load i1, i1* %FPU_X_val, !mcsema_real_eip !23
  store i1 %331, i1* %FPU_X, align 1, !mcsema_real_eip !23
  %332 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !23
  store i2 %332, i2* %FPU_RC, align 1, !mcsema_real_eip !23
  %333 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !23
  store i2 %333, i2* %FPU_PC, align 1, !mcsema_real_eip !23
  %334 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !23
  store i1 %334, i1* %FPU_PM, align 1, !mcsema_real_eip !23
  %335 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !23
  store i1 %335, i1* %FPU_UM, align 1, !mcsema_real_eip !23
  %336 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !23
  store i1 %336, i1* %FPU_OM, align 1, !mcsema_real_eip !23
  %337 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !23
  store i1 %337, i1* %FPU_ZM, align 1, !mcsema_real_eip !23
  %338 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !23
  store i1 %338, i1* %FPU_DM, align 1, !mcsema_real_eip !23
  %339 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !23
  store i1 %339, i1* %FPU_IM, align 1, !mcsema_real_eip !23
  %340 = load i64, i64* %53, align 4
  store i64 %340, i64* %52, align 4
  %341 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !23
  store i16 %341, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !23
  %342 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !23
  store i64 %342, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !23
  %343 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !23
  store i16 %343, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !23
  %344 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !23
  store i64 %344, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !23
  %345 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !23
  store i11 %345, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !23
  %346 = load i128, i128* %XMM0_val, !mcsema_real_eip !23
  store i128 %346, i128* %XMM0, align 1, !mcsema_real_eip !23
  %347 = load i128, i128* %XMM1_val, !mcsema_real_eip !23
  store i128 %347, i128* %XMM1, align 1, !mcsema_real_eip !23
  %348 = load i128, i128* %XMM2_val, !mcsema_real_eip !23
  store i128 %348, i128* %XMM2, align 1, !mcsema_real_eip !23
  %349 = load i128, i128* %XMM3_val, !mcsema_real_eip !23
  store i128 %349, i128* %XMM3, align 1, !mcsema_real_eip !23
  %350 = load i128, i128* %XMM4_val, !mcsema_real_eip !23
  store i128 %350, i128* %XMM4, align 1, !mcsema_real_eip !23
  %351 = load i128, i128* %XMM5_val, !mcsema_real_eip !23
  store i128 %351, i128* %XMM5, align 1, !mcsema_real_eip !23
  %352 = load i128, i128* %XMM6_val, !mcsema_real_eip !23
  store i128 %352, i128* %XMM6, align 1, !mcsema_real_eip !23
  %353 = load i128, i128* %XMM7_val, !mcsema_real_eip !23
  store i128 %353, i128* %XMM7, align 1, !mcsema_real_eip !23
  %354 = load i128, i128* %XMM8_val, !mcsema_real_eip !23
  store i128 %354, i128* %XMM8, align 1, !mcsema_real_eip !23
  %355 = load i128, i128* %XMM9_val, !mcsema_real_eip !23
  store i128 %355, i128* %XMM9, align 1, !mcsema_real_eip !23
  %356 = load i128, i128* %XMM10_val, !mcsema_real_eip !23
  store i128 %356, i128* %XMM10, align 1, !mcsema_real_eip !23
  %357 = load i128, i128* %XMM11_val, !mcsema_real_eip !23
  store i128 %357, i128* %XMM11, align 1, !mcsema_real_eip !23
  %358 = load i128, i128* %XMM12_val, !mcsema_real_eip !23
  store i128 %358, i128* %XMM12, align 1, !mcsema_real_eip !23
  %359 = load i128, i128* %XMM13_val, !mcsema_real_eip !23
  store i128 %359, i128* %XMM13, align 1, !mcsema_real_eip !23
  %360 = load i128, i128* %XMM14_val, !mcsema_real_eip !23
  store i128 %360, i128* %XMM14, align 1, !mcsema_real_eip !23
  %361 = load i128, i128* %XMM15_val, !mcsema_real_eip !23
  store i128 %361, i128* %XMM15, align 1, !mcsema_real_eip !23
  %362 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !23
  store i64 %362, i64* %STACK_BASE, align 1, !mcsema_real_eip !23
  %363 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !23
  store i64 %363, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !23
  ret void, !mcsema_real_eip !23
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !24
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !24
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !24
  %XMM15_val = alloca i128, !mcsema_real_eip !24
  %XMM14_val = alloca i128, !mcsema_real_eip !24
  %XMM13_val = alloca i128, !mcsema_real_eip !24
  %XMM12_val = alloca i128, !mcsema_real_eip !24
  %XMM11_val = alloca i128, !mcsema_real_eip !24
  %XMM10_val = alloca i128, !mcsema_real_eip !24
  %XMM9_val = alloca i128, !mcsema_real_eip !24
  %XMM8_val = alloca i128, !mcsema_real_eip !24
  %XMM7_val = alloca i128, !mcsema_real_eip !24
  %XMM6_val = alloca i128, !mcsema_real_eip !24
  %XMM5_val = alloca i128, !mcsema_real_eip !24
  %XMM4_val = alloca i128, !mcsema_real_eip !24
  %XMM3_val = alloca i128, !mcsema_real_eip !24
  %XMM2_val = alloca i128, !mcsema_real_eip !24
  %XMM1_val = alloca i128, !mcsema_real_eip !24
  %XMM0_val = alloca i128, !mcsema_real_eip !24
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !24
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !24
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !24
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !24
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !24
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !24
  %FPU_IM_val = alloca i1, !mcsema_real_eip !24
  %FPU_DM_val = alloca i1, !mcsema_real_eip !24
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !24
  %FPU_OM_val = alloca i1, !mcsema_real_eip !24
  %FPU_UM_val = alloca i1, !mcsema_real_eip !24
  %FPU_PM_val = alloca i1, !mcsema_real_eip !24
  %FPU_PC_val = alloca i2, !mcsema_real_eip !24
  %FPU_RC_val = alloca i2, !mcsema_real_eip !24
  %FPU_X_val = alloca i1, !mcsema_real_eip !24
  %FPU_IE_val = alloca i1, !mcsema_real_eip !24
  %FPU_DE_val = alloca i1, !mcsema_real_eip !24
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !24
  %FPU_OE_val = alloca i1, !mcsema_real_eip !24
  %FPU_UE_val = alloca i1, !mcsema_real_eip !24
  %FPU_PE_val = alloca i1, !mcsema_real_eip !24
  %FPU_SF_val = alloca i1, !mcsema_real_eip !24
  %FPU_ES_val = alloca i1, !mcsema_real_eip !24
  %FPU_C0_val = alloca i1, !mcsema_real_eip !24
  %FPU_C1_val = alloca i1, !mcsema_real_eip !24
  %FPU_C2_val = alloca i1, !mcsema_real_eip !24
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !24
  %FPU_C3_val = alloca i1, !mcsema_real_eip !24
  %FPU_B_val = alloca i1, !mcsema_real_eip !24
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !24
  %DF_val = alloca i1, !mcsema_real_eip !24
  %OF_val = alloca i1, !mcsema_real_eip !24
  %SF_val = alloca i1, !mcsema_real_eip !24
  %CF_val = alloca i1, !mcsema_real_eip !24
  %AF_val = alloca i1, !mcsema_real_eip !24
  %PF_val = alloca i1, !mcsema_real_eip !24
  %ZF_val = alloca i1, !mcsema_real_eip !24
  %RIP_val = alloca i64, !mcsema_real_eip !24
  %R14_val = alloca i64, !mcsema_real_eip !24
  %R13_val = alloca i64, !mcsema_real_eip !24
  %R12_val = alloca i64, !mcsema_real_eip !24
  %R11_val = alloca i64, !mcsema_real_eip !24
  %R10_val = alloca i64, !mcsema_real_eip !24
  %R9_val = alloca i64, !mcsema_real_eip !24
  %R8_val = alloca i64, !mcsema_real_eip !24
  %RSP_val = alloca i64, !mcsema_real_eip !24
  %RBP_val = alloca i64, !mcsema_real_eip !24
  %RDI_val = alloca i64, !mcsema_real_eip !24
  %RSI_val = alloca i64, !mcsema_real_eip !24
  %RDX_val = alloca i64, !mcsema_real_eip !24
  %RCX_val = alloca i64, !mcsema_real_eip !24
  %RBX_val = alloca i64, !mcsema_real_eip !24
  %RAX_val = alloca i64, !mcsema_real_eip !24
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !24
  %1 = load i64, i64* %RAX, !mcsema_real_eip !24
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !24
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !24
  %2 = load i64, i64* %RBX, !mcsema_real_eip !24
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !24
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !24
  %3 = load i64, i64* %RCX, !mcsema_real_eip !24
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !24
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !24
  %4 = load i64, i64* %RDX, !mcsema_real_eip !24
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !24
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !24
  %5 = load i64, i64* %RSI, !mcsema_real_eip !24
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !24
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !24
  %6 = load i64, i64* %RDI, !mcsema_real_eip !24
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !24
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !24
  %7 = load i64, i64* %RSP, !mcsema_real_eip !24
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !24
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !24
  %8 = load i64, i64* %RBP, !mcsema_real_eip !24
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !24
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !24
  %9 = load i64, i64* %R8, !mcsema_real_eip !24
  store i64 %9, i64* %R8_val, !mcsema_real_eip !24
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !24
  %10 = load i64, i64* %R9, !mcsema_real_eip !24
  store i64 %10, i64* %R9_val, !mcsema_real_eip !24
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !24
  %11 = load i64, i64* %R10, !mcsema_real_eip !24
  store i64 %11, i64* %R10_val, !mcsema_real_eip !24
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !24
  %12 = load i64, i64* %R11, !mcsema_real_eip !24
  store i64 %12, i64* %R11_val, !mcsema_real_eip !24
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !24
  %13 = load i64, i64* %R12, !mcsema_real_eip !24
  store i64 %13, i64* %R12_val, !mcsema_real_eip !24
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !24
  %14 = load i64, i64* %R13, !mcsema_real_eip !24
  store i64 %14, i64* %R13_val, !mcsema_real_eip !24
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !24
  %15 = load i64, i64* %R14, !mcsema_real_eip !24
  store i64 %15, i64* %R14_val, !mcsema_real_eip !24
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !24
  %16 = load i64, i64* %R15, !mcsema_real_eip !24
  store i64 %16, i64* %R15_val, !mcsema_real_eip !24
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !24
  %17 = load i64, i64* %RIP, !mcsema_real_eip !24
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !24
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !24
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !24
  store i1 %18, i1* %CF_val, !mcsema_real_eip !24
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !24
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !24
  store i1 %19, i1* %PF_val, !mcsema_real_eip !24
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !24
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !24
  store i1 %20, i1* %AF_val, !mcsema_real_eip !24
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !24
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !24
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !24
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !24
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !24
  store i1 %22, i1* %SF_val, !mcsema_real_eip !24
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !24
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !24
  store i1 %23, i1* %OF_val, !mcsema_real_eip !24
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !24
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !24
  store i1 %24, i1* %DF_val, !mcsema_real_eip !24
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !24
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !24
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !24
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !24
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !24
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !24
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !24
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !24
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !24
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !24
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !24
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !24
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !24
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !24
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !24
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !24
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !24
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !24
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !24
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !24
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !24
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !24
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !24
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !24
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !24
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !24
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !24
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !24
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !24
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !24
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !24
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !24
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !24
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !24
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !24
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !24
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !24
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !24
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !24
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !24
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !24
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !24
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !24
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !24
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !24
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !24
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !24
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !24
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !24
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !24
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !24
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !24
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !24
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !24
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !24
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !24
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !24
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !24
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !24
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !24
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !24
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !24
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !24
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !24
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !24
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !24
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !24
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !24
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !24
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !24
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !24
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !24
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !24
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !24
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !24
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !24
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !24
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !24
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !24
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !24
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !24
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !24
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !24
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !24
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !24
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !24
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !24
  %59 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !24
  store i11 %59, i11* %FPU_FOPCODE_val, !mcsema_real_eip !24
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !24
  %60 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !24
  store i128 %60, i128* %XMM0_val, !mcsema_real_eip !24
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !24
  %61 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !24
  store i128 %61, i128* %XMM1_val, !mcsema_real_eip !24
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !24
  %62 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !24
  store i128 %62, i128* %XMM2_val, !mcsema_real_eip !24
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !24
  %63 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !24
  store i128 %63, i128* %XMM3_val, !mcsema_real_eip !24
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !24
  %64 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !24
  store i128 %64, i128* %XMM4_val, !mcsema_real_eip !24
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !24
  %65 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !24
  store i128 %65, i128* %XMM5_val, !mcsema_real_eip !24
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !24
  %66 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !24
  store i128 %66, i128* %XMM6_val, !mcsema_real_eip !24
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !24
  %67 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !24
  store i128 %67, i128* %XMM7_val, !mcsema_real_eip !24
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !24
  %68 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !24
  store i128 %68, i128* %XMM8_val, !mcsema_real_eip !24
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !24
  %69 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !24
  store i128 %69, i128* %XMM9_val, !mcsema_real_eip !24
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !24
  %70 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !24
  store i128 %70, i128* %XMM10_val, !mcsema_real_eip !24
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !24
  %71 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !24
  store i128 %71, i128* %XMM11_val, !mcsema_real_eip !24
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !24
  %72 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !24
  store i128 %72, i128* %XMM12_val, !mcsema_real_eip !24
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !24
  %73 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !24
  store i128 %73, i128* %XMM13_val, !mcsema_real_eip !24
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !24
  %74 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !24
  store i128 %74, i128* %XMM14_val, !mcsema_real_eip !24
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !24
  %75 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !24
  store i128 %75, i128* %XMM15_val, !mcsema_real_eip !24
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !24
  %76 = load i64, i64* %STACK_BASE, !mcsema_real_eip !24
  store i64 %76, i64* %STACK_BASE_val, !mcsema_real_eip !24
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !24
  %77 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !24
  store i64 %77, i64* %STACK_LIMIT_val, !mcsema_real_eip !24
  %78 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %79 = load i64, i64* %RSP_val, !mcsema_real_eip !24
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !24
  store i64 %78, i64* %81, !mcsema_real_eip !24
  store i64 %80, i64* %RSP_val, !mcsema_real_eip !24
  store i64 %80, i64* %RBP_val, !mcsema_real_eip !25
  %82 = add i64 %79, 16, !mcsema_real_eip !26
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !26
  %84 = bitcast i64* %83 to i32*
  %85 = load i32, i32* %84, !mcsema_real_eip !26
  %86 = zext i32 %85 to i64, !mcsema_real_eip !26
  store i64 %86, i64* %RAX_val, !mcsema_real_eip !26
  %87 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %88 = add i64 %87, 16, !mcsema_real_eip !27
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !27
  %90 = bitcast i64* %89 to i32*
  %91 = load i32, i32* %90, !mcsema_real_eip !27
  %92 = zext i32 %91 to i64, !mcsema_real_eip !27
  store i64 %92, i64* %R10_val, !mcsema_real_eip !27
  %93 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %94 = add i64 %93, -4, !mcsema_real_eip !28
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !28
  %96 = load i64, i64* %RDI_val, !mcsema_real_eip !28
  %97 = trunc i64 %96 to i32, !mcsema_real_eip !28
  %98 = bitcast i64* %95 to i32*
  store i32 %97, i32* %98, !mcsema_real_eip !28
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !29
  %100 = add i64 %99, -8, !mcsema_real_eip !29
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !29
  %102 = load i64, i64* %RSI_val, !mcsema_real_eip !29
  %103 = trunc i64 %102 to i32, !mcsema_real_eip !29
  %104 = bitcast i64* %101 to i32*
  store i32 %103, i32* %104, !mcsema_real_eip !29
  %105 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  %106 = add i64 %105, -12, !mcsema_real_eip !30
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !30
  %108 = load i64, i64* %RDX_val, !mcsema_real_eip !30
  %109 = trunc i64 %108 to i32, !mcsema_real_eip !30
  %110 = bitcast i64* %107 to i32*
  store i32 %109, i32* %110, !mcsema_real_eip !30
  %111 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %112 = add i64 %111, -16, !mcsema_real_eip !31
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !31
  %114 = load i64, i64* %RCX_val, !mcsema_real_eip !31
  %115 = trunc i64 %114 to i32, !mcsema_real_eip !31
  %116 = bitcast i64* %113 to i32*
  store i32 %115, i32* %116, !mcsema_real_eip !31
  %117 = load i64, i64* %RBP_val, !mcsema_real_eip !32
  %118 = add i64 %117, -20, !mcsema_real_eip !32
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !32
  %120 = load i64, i64* %R8_val, !mcsema_real_eip !32
  %121 = trunc i64 %120 to i32, !mcsema_real_eip !32
  %122 = bitcast i64* %119 to i32*
  store i32 %121, i32* %122, !mcsema_real_eip !32
  %123 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %124 = add i64 %123, -24, !mcsema_real_eip !33
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !33
  %126 = load i64, i64* %R9_val, !mcsema_real_eip !33
  %127 = trunc i64 %126 to i32, !mcsema_real_eip !33
  %128 = bitcast i64* %125 to i32*
  store i32 %127, i32* %128, !mcsema_real_eip !33
  %129 = load i64, i64* %RBP_val, !mcsema_real_eip !34
  %130 = add i64 %129, -28, !mcsema_real_eip !34
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !34
  %132 = load i64, i64* %R10_val, !mcsema_real_eip !34
  %133 = trunc i64 %132 to i32, !mcsema_real_eip !34
  %134 = bitcast i64* %131 to i32*
  store i32 %133, i32* %134, !mcsema_real_eip !34
  %135 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %136 = add i64 %135, -32, !mcsema_real_eip !35
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !35
  %138 = load i64, i64* %RAX_val, !mcsema_real_eip !35
  %139 = trunc i64 %138 to i32, !mcsema_real_eip !35
  %140 = bitcast i64* %137 to i32*
  store i32 %139, i32* %140, !mcsema_real_eip !35
  %141 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  %142 = add i64 %141, -4, !mcsema_real_eip !36
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !36
  %144 = bitcast i64* %143 to i32*
  %145 = load i32, i32* %144, !mcsema_real_eip !36
  %146 = zext i32 %145 to i64, !mcsema_real_eip !36
  store i64 %146, i64* %RAX_val, !mcsema_real_eip !36
  %147 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %148 = add i64 %147, -8, !mcsema_real_eip !37
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !37
  %150 = bitcast i64* %149 to i32*
  %151 = load i32, i32* %150, !mcsema_real_eip !37
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %145, i32 %151)
  %152 = extractvalue { i32, i1 } %uadd, 0
  %153 = xor i32 %152, %151, !mcsema_real_eip !37
  %154 = xor i32 %153, %145, !mcsema_real_eip !37
  %155 = and i32 %154, 16, !mcsema_real_eip !37
  %156 = icmp ne i32 %155, 0, !mcsema_real_eip !37
  store i1 %156, i1* %AF_val, !mcsema_real_eip !37
  %157 = icmp slt i32 %152, 0
  store i1 %157, i1* %SF_val, !mcsema_real_eip !37
  %158 = icmp eq i32 %152, 0, !mcsema_real_eip !37
  store i1 %158, i1* %ZF_val, !mcsema_real_eip !37
  %159 = xor i32 %145, -2147483648, !mcsema_real_eip !37
  %160 = xor i32 %159, %151, !mcsema_real_eip !37
  %161 = and i32 %153, %160, !mcsema_real_eip !37
  %162 = icmp slt i32 %161, 0
  store i1 %162, i1* %OF_val, !mcsema_real_eip !37
  %163 = trunc i32 %152 to i8, !mcsema_real_eip !37
  %164 = tail call i8 @llvm.ctpop.i8(i8 %163), !mcsema_real_eip !37
  %165 = and i8 %164, 1
  %166 = icmp eq i8 %165, 0
  store i1 %166, i1* %PF_val, !mcsema_real_eip !37
  %167 = extractvalue { i32, i1 } %uadd, 1
  store i1 %167, i1* %CF_val, !mcsema_real_eip !37
  %168 = zext i32 %152 to i64, !mcsema_real_eip !37
  store i64 %168, i64* %RAX_val, !mcsema_real_eip !37
  %169 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %170 = add i64 %169, -12, !mcsema_real_eip !38
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !38
  %172 = bitcast i64* %171 to i32*
  %173 = load i32, i32* %172, !mcsema_real_eip !38
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %152, i32 %173)
  %174 = extractvalue { i32, i1 } %uadd71, 0
  %175 = xor i32 %174, %173, !mcsema_real_eip !38
  %176 = xor i32 %175, %152, !mcsema_real_eip !38
  %177 = and i32 %176, 16, !mcsema_real_eip !38
  %178 = icmp ne i32 %177, 0, !mcsema_real_eip !38
  store i1 %178, i1* %AF_val, !mcsema_real_eip !38
  %179 = icmp slt i32 %174, 0
  store i1 %179, i1* %SF_val, !mcsema_real_eip !38
  %180 = icmp eq i32 %174, 0, !mcsema_real_eip !38
  store i1 %180, i1* %ZF_val, !mcsema_real_eip !38
  %181 = xor i32 %152, -2147483648, !mcsema_real_eip !38
  %182 = xor i32 %181, %173, !mcsema_real_eip !38
  %183 = and i32 %175, %182, !mcsema_real_eip !38
  %184 = icmp slt i32 %183, 0
  store i1 %184, i1* %OF_val, !mcsema_real_eip !38
  %185 = trunc i32 %174 to i8, !mcsema_real_eip !38
  %186 = tail call i8 @llvm.ctpop.i8(i8 %185), !mcsema_real_eip !38
  %187 = and i8 %186, 1
  %188 = icmp eq i8 %187, 0
  store i1 %188, i1* %PF_val, !mcsema_real_eip !38
  %189 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %189, i1* %CF_val, !mcsema_real_eip !38
  %190 = zext i32 %174 to i64, !mcsema_real_eip !38
  store i64 %190, i64* %RAX_val, !mcsema_real_eip !38
  %191 = load i64, i64* %RBP_val, !mcsema_real_eip !39
  %192 = add i64 %191, -16, !mcsema_real_eip !39
  %193 = inttoptr i64 %192 to i64*, !mcsema_real_eip !39
  %194 = bitcast i64* %193 to i32*
  %195 = load i32, i32* %194, !mcsema_real_eip !39
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %174, i32 %195)
  %196 = extractvalue { i32, i1 } %uadd72, 0
  %197 = xor i32 %196, %195, !mcsema_real_eip !39
  %198 = xor i32 %197, %174, !mcsema_real_eip !39
  %199 = and i32 %198, 16, !mcsema_real_eip !39
  %200 = icmp ne i32 %199, 0, !mcsema_real_eip !39
  store i1 %200, i1* %AF_val, !mcsema_real_eip !39
  %201 = icmp slt i32 %196, 0
  store i1 %201, i1* %SF_val, !mcsema_real_eip !39
  %202 = icmp eq i32 %196, 0, !mcsema_real_eip !39
  store i1 %202, i1* %ZF_val, !mcsema_real_eip !39
  %203 = xor i32 %174, -2147483648, !mcsema_real_eip !39
  %204 = xor i32 %203, %195, !mcsema_real_eip !39
  %205 = and i32 %197, %204, !mcsema_real_eip !39
  %206 = icmp slt i32 %205, 0
  store i1 %206, i1* %OF_val, !mcsema_real_eip !39
  %207 = trunc i32 %196 to i8, !mcsema_real_eip !39
  %208 = tail call i8 @llvm.ctpop.i8(i8 %207), !mcsema_real_eip !39
  %209 = and i8 %208, 1
  %210 = icmp eq i8 %209, 0
  store i1 %210, i1* %PF_val, !mcsema_real_eip !39
  %211 = extractvalue { i32, i1 } %uadd72, 1
  store i1 %211, i1* %CF_val, !mcsema_real_eip !39
  %212 = zext i32 %196 to i64, !mcsema_real_eip !39
  store i64 %212, i64* %RAX_val, !mcsema_real_eip !39
  %213 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %214 = add i64 %213, -20, !mcsema_real_eip !40
  %215 = inttoptr i64 %214 to i64*, !mcsema_real_eip !40
  %216 = bitcast i64* %215 to i32*
  %217 = load i32, i32* %216, !mcsema_real_eip !40
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %196, i32 %217)
  %218 = extractvalue { i32, i1 } %uadd73, 0
  %219 = xor i32 %218, %217, !mcsema_real_eip !40
  %220 = xor i32 %219, %196, !mcsema_real_eip !40
  %221 = and i32 %220, 16, !mcsema_real_eip !40
  %222 = icmp ne i32 %221, 0, !mcsema_real_eip !40
  store i1 %222, i1* %AF_val, !mcsema_real_eip !40
  %223 = icmp slt i32 %218, 0
  store i1 %223, i1* %SF_val, !mcsema_real_eip !40
  %224 = icmp eq i32 %218, 0, !mcsema_real_eip !40
  store i1 %224, i1* %ZF_val, !mcsema_real_eip !40
  %225 = xor i32 %196, -2147483648, !mcsema_real_eip !40
  %226 = xor i32 %225, %217, !mcsema_real_eip !40
  %227 = and i32 %219, %226, !mcsema_real_eip !40
  %228 = icmp slt i32 %227, 0
  store i1 %228, i1* %OF_val, !mcsema_real_eip !40
  %229 = trunc i32 %218 to i8, !mcsema_real_eip !40
  %230 = tail call i8 @llvm.ctpop.i8(i8 %229), !mcsema_real_eip !40
  %231 = and i8 %230, 1
  %232 = icmp eq i8 %231, 0
  store i1 %232, i1* %PF_val, !mcsema_real_eip !40
  %233 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %233, i1* %CF_val, !mcsema_real_eip !40
  %234 = zext i32 %218 to i64, !mcsema_real_eip !40
  store i64 %234, i64* %RAX_val, !mcsema_real_eip !40
  %235 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %236 = add i64 %235, -24, !mcsema_real_eip !41
  %237 = inttoptr i64 %236 to i64*, !mcsema_real_eip !41
  %238 = bitcast i64* %237 to i32*
  %239 = load i32, i32* %238, !mcsema_real_eip !41
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %218, i32 %239)
  %240 = extractvalue { i32, i1 } %uadd74, 0
  %241 = xor i32 %240, %239, !mcsema_real_eip !41
  %242 = xor i32 %241, %218, !mcsema_real_eip !41
  %243 = and i32 %242, 16, !mcsema_real_eip !41
  %244 = icmp ne i32 %243, 0, !mcsema_real_eip !41
  store i1 %244, i1* %AF_val, !mcsema_real_eip !41
  %245 = icmp slt i32 %240, 0
  store i1 %245, i1* %SF_val, !mcsema_real_eip !41
  %246 = icmp eq i32 %240, 0, !mcsema_real_eip !41
  store i1 %246, i1* %ZF_val, !mcsema_real_eip !41
  %247 = xor i32 %218, -2147483648, !mcsema_real_eip !41
  %248 = xor i32 %247, %239, !mcsema_real_eip !41
  %249 = and i32 %241, %248, !mcsema_real_eip !41
  %250 = icmp slt i32 %249, 0
  store i1 %250, i1* %OF_val, !mcsema_real_eip !41
  %251 = trunc i32 %240 to i8, !mcsema_real_eip !41
  %252 = tail call i8 @llvm.ctpop.i8(i8 %251), !mcsema_real_eip !41
  %253 = and i8 %252, 1
  %254 = icmp eq i8 %253, 0
  store i1 %254, i1* %PF_val, !mcsema_real_eip !41
  %255 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %255, i1* %CF_val, !mcsema_real_eip !41
  %256 = zext i32 %240 to i64, !mcsema_real_eip !41
  store i64 %256, i64* %RAX_val, !mcsema_real_eip !41
  %257 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  %258 = add i64 %257, -28, !mcsema_real_eip !42
  %259 = inttoptr i64 %258 to i64*, !mcsema_real_eip !42
  %260 = bitcast i64* %259 to i32*
  %261 = load i32, i32* %260, !mcsema_real_eip !42
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %240, i32 %261)
  %262 = extractvalue { i32, i1 } %uadd75, 0
  %263 = xor i32 %262, %261, !mcsema_real_eip !42
  %264 = xor i32 %263, %240, !mcsema_real_eip !42
  %265 = and i32 %264, 16, !mcsema_real_eip !42
  %266 = icmp ne i32 %265, 0, !mcsema_real_eip !42
  store i1 %266, i1* %AF_val, !mcsema_real_eip !42
  %267 = icmp slt i32 %262, 0
  store i1 %267, i1* %SF_val, !mcsema_real_eip !42
  %268 = icmp eq i32 %262, 0, !mcsema_real_eip !42
  store i1 %268, i1* %ZF_val, !mcsema_real_eip !42
  %269 = xor i32 %240, -2147483648, !mcsema_real_eip !42
  %270 = xor i32 %269, %261, !mcsema_real_eip !42
  %271 = and i32 %263, %270, !mcsema_real_eip !42
  %272 = icmp slt i32 %271, 0
  store i1 %272, i1* %OF_val, !mcsema_real_eip !42
  %273 = trunc i32 %262 to i8, !mcsema_real_eip !42
  %274 = tail call i8 @llvm.ctpop.i8(i8 %273), !mcsema_real_eip !42
  %275 = and i8 %274, 1
  %276 = icmp eq i8 %275, 0
  store i1 %276, i1* %PF_val, !mcsema_real_eip !42
  %277 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %277, i1* %CF_val, !mcsema_real_eip !42
  %278 = zext i32 %262 to i64, !mcsema_real_eip !42
  store i64 %278, i64* %RAX_val, !mcsema_real_eip !42
  %279 = load i64, i64* %RBP_val, !mcsema_real_eip !43
  %280 = add i64 %279, -36, !mcsema_real_eip !43
  %281 = inttoptr i64 %280 to i64*, !mcsema_real_eip !43
  %282 = bitcast i64* %281 to i32*
  store i32 %262, i32* %282, !mcsema_real_eip !43
  %283 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  %284 = add i64 %283, -36, !mcsema_real_eip !44
  %285 = inttoptr i64 %284 to i64*, !mcsema_real_eip !44
  %286 = bitcast i64* %285 to i32*
  %287 = load i32, i32* %286, !mcsema_real_eip !44
  %288 = add i32 %287, -40
  %289 = xor i32 %288, %287, !mcsema_real_eip !44
  %290 = and i32 %289, 16, !mcsema_real_eip !44
  %291 = icmp ne i32 %290, 0, !mcsema_real_eip !44
  store i1 %291, i1* %AF_val, !mcsema_real_eip !44
  %292 = trunc i32 %288 to i8, !mcsema_real_eip !44
  %293 = tail call i8 @llvm.ctpop.i8(i8 %292), !mcsema_real_eip !44
  %294 = and i8 %293, 1
  %295 = icmp eq i8 %294, 0
  store i1 %295, i1* %PF_val, !mcsema_real_eip !44
  %296 = icmp eq i32 %288, 0, !mcsema_real_eip !44
  store i1 %296, i1* %ZF_val, !mcsema_real_eip !44
  %297 = icmp slt i32 %288, 0
  store i1 %297, i1* %SF_val, !mcsema_real_eip !44
  %298 = icmp ult i32 %287, 40, !mcsema_real_eip !44
  store i1 %298, i1* %CF_val, !mcsema_real_eip !44
  %299 = and i32 %289, %287, !mcsema_real_eip !44
  %300 = icmp slt i32 %299, 0
  store i1 %300, i1* %OF_val, !mcsema_real_eip !44
  %301 = xor i1 %297, %300
  %302 = load i1, i1* %ZF_val, !mcsema_real_eip !45
  %303 = or i1 %302, %301, !mcsema_real_eip !45
  %304 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %305 = add i64 %304, -36, !mcsema_real_eip !46
  %306 = inttoptr i64 %305 to i64*, !mcsema_real_eip !46
  %307 = bitcast i64* %306 to i32*
  %308 = load i32, i32* %307, !mcsema_real_eip !46
  %309 = zext i32 %308 to i64, !mcsema_real_eip !46
  store i64 %309, i64* %RAX_val, !mcsema_real_eip !46
  %310 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  %311 = add i64 %310, -32, !mcsema_real_eip !47
  %312 = inttoptr i64 %311 to i64*, !mcsema_real_eip !47
  %313 = bitcast i64* %312 to i32*
  %314 = load i32, i32* %313, !mcsema_real_eip !47
  br i1 %303, label %block_0x59, label %block_0x4b, !mcsema_real_eip !45

block_0x4b:                                       ; preds = %entry
  %uadd77 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %308, i32 %314)
  %315 = extractvalue { i32, i1 } %uadd77, 0
  %316 = xor i32 %315, %314, !mcsema_real_eip !48
  %317 = xor i32 %316, %308, !mcsema_real_eip !48
  %318 = and i32 %317, 16, !mcsema_real_eip !48
  %319 = icmp ne i32 %318, 0, !mcsema_real_eip !48
  store i1 %319, i1* %AF_val, !mcsema_real_eip !48
  %320 = icmp slt i32 %315, 0
  store i1 %320, i1* %SF_val, !mcsema_real_eip !48
  %321 = icmp eq i32 %315, 0, !mcsema_real_eip !48
  store i1 %321, i1* %ZF_val, !mcsema_real_eip !48
  %322 = xor i32 %308, -2147483648, !mcsema_real_eip !48
  %323 = xor i32 %322, %314, !mcsema_real_eip !48
  %324 = and i32 %316, %323, !mcsema_real_eip !48
  %325 = icmp slt i32 %324, 0
  store i1 %325, i1* %OF_val, !mcsema_real_eip !48
  %326 = trunc i32 %315 to i8, !mcsema_real_eip !48
  %327 = tail call i8 @llvm.ctpop.i8(i8 %326), !mcsema_real_eip !48
  %328 = and i8 %327, 1
  %329 = icmp eq i8 %328, 0
  store i1 %329, i1* %PF_val, !mcsema_real_eip !48
  %330 = extractvalue { i32, i1 } %uadd77, 1
  store i1 %330, i1* %CF_val, !mcsema_real_eip !48
  %331 = zext i32 %315 to i64, !mcsema_real_eip !48
  store i64 %331, i64* %RAX_val, !mcsema_real_eip !48
  %332 = load i64, i64* %RBP_val, !mcsema_real_eip !49
  %333 = add i64 %332, -40, !mcsema_real_eip !49
  %334 = inttoptr i64 %333 to i64*, !mcsema_real_eip !49
  %335 = bitcast i64* %334 to i32*
  store i32 %315, i32* %335, !mcsema_real_eip !49
  br label %block_0x62, !mcsema_real_eip !50

block_0x59:                                       ; preds = %entry
  %336 = sub i32 %308, %314, !mcsema_real_eip !47
  %337 = xor i32 %336, %308, !mcsema_real_eip !47
  %338 = xor i32 %337, %314, !mcsema_real_eip !47
  %339 = and i32 %338, 16, !mcsema_real_eip !47
  %340 = icmp ne i32 %339, 0, !mcsema_real_eip !47
  store i1 %340, i1* %AF_val, !mcsema_real_eip !47
  %341 = trunc i32 %336 to i8, !mcsema_real_eip !47
  %342 = tail call i8 @llvm.ctpop.i8(i8 %341), !mcsema_real_eip !47
  %343 = and i8 %342, 1
  %344 = icmp eq i8 %343, 0
  store i1 %344, i1* %PF_val, !mcsema_real_eip !47
  %345 = icmp eq i32 %308, %314
  store i1 %345, i1* %ZF_val, !mcsema_real_eip !47
  %346 = icmp slt i32 %336, 0
  store i1 %346, i1* %SF_val, !mcsema_real_eip !47
  %347 = icmp ult i32 %308, %314, !mcsema_real_eip !47
  store i1 %347, i1* %CF_val, !mcsema_real_eip !47
  %348 = xor i32 %314, %308, !mcsema_real_eip !47
  %349 = and i32 %337, %348, !mcsema_real_eip !47
  %350 = icmp slt i32 %349, 0
  store i1 %350, i1* %OF_val, !mcsema_real_eip !47
  %351 = zext i32 %336 to i64, !mcsema_real_eip !47
  store i64 %351, i64* %RAX_val, !mcsema_real_eip !47
  %352 = load i64, i64* %RBP_val, !mcsema_real_eip !51
  %353 = add i64 %352, -40, !mcsema_real_eip !51
  %354 = inttoptr i64 %353 to i64*, !mcsema_real_eip !51
  %355 = bitcast i64* %354 to i32*
  store i32 %336, i32* %355, !mcsema_real_eip !51
  br label %block_0x62, !mcsema_real_eip !52

block_0x62:                                       ; preds = %block_0x59, %block_0x4b
  %356 = load i64, i64* %RBP_val, !mcsema_real_eip !53
  %357 = add i64 %356, -40, !mcsema_real_eip !53
  %358 = inttoptr i64 %357 to i64*, !mcsema_real_eip !53
  %359 = bitcast i64* %358 to i32*
  %360 = load i32, i32* %359, !mcsema_real_eip !53
  %361 = zext i32 %360 to i64, !mcsema_real_eip !53
  store i64 %361, i64* %RAX_val, !mcsema_real_eip !53
  %362 = load i64, i64* %RSP_val, !mcsema_real_eip !54
  %363 = inttoptr i64 %362 to i64*, !mcsema_real_eip !54
  %364 = load i64, i64* %363, !mcsema_real_eip !54
  store i64 %364, i64* %RBP_val, !mcsema_real_eip !54
  %365 = add i64 %362, 16, !mcsema_real_eip !55
  store i64 %365, i64* %RSP_val, !mcsema_real_eip !55
  %366 = load i64, i64* %RAX_val, !mcsema_real_eip !55
  store i64 %366, i64* %RAX, !mcsema_real_eip !55
  %367 = load i64, i64* %RBX_val, !mcsema_real_eip !55
  store i64 %367, i64* %RBX, !mcsema_real_eip !55
  %368 = load i64, i64* %RCX_val, !mcsema_real_eip !55
  store i64 %368, i64* %RCX, !mcsema_real_eip !55
  %369 = load i64, i64* %RDX_val, !mcsema_real_eip !55
  store i64 %369, i64* %RDX, !mcsema_real_eip !55
  %370 = load i64, i64* %RSI_val, !mcsema_real_eip !55
  store i64 %370, i64* %RSI, !mcsema_real_eip !55
  %371 = load i64, i64* %RDI_val, !mcsema_real_eip !55
  store i64 %371, i64* %RDI, !mcsema_real_eip !55
  %372 = load i64, i64* %RSP_val, !mcsema_real_eip !55
  store i64 %372, i64* %RSP, !mcsema_real_eip !55
  %373 = load i64, i64* %RBP_val, !mcsema_real_eip !55
  store i64 %373, i64* %RBP, !mcsema_real_eip !55
  %374 = load i64, i64* %R8_val, !mcsema_real_eip !55
  store i64 %374, i64* %R8, !mcsema_real_eip !55
  %375 = load i64, i64* %R9_val, !mcsema_real_eip !55
  store i64 %375, i64* %R9, !mcsema_real_eip !55
  %376 = load i64, i64* %R10_val, !mcsema_real_eip !55
  store i64 %376, i64* %R10, !mcsema_real_eip !55
  %377 = load i64, i64* %R11_val, !mcsema_real_eip !55
  store i64 %377, i64* %R11, !mcsema_real_eip !55
  %378 = load i64, i64* %R12_val, !mcsema_real_eip !55
  store i64 %378, i64* %R12, !mcsema_real_eip !55
  %379 = load i64, i64* %R13_val, !mcsema_real_eip !55
  store i64 %379, i64* %R13, !mcsema_real_eip !55
  %380 = load i64, i64* %R14_val, !mcsema_real_eip !55
  store i64 %380, i64* %R14, !mcsema_real_eip !55
  %381 = load i64, i64* %R15_val, !mcsema_real_eip !55
  store i64 %381, i64* %R15, !mcsema_real_eip !55
  %382 = load i64, i64* %RIP_val, !mcsema_real_eip !55
  store i64 %382, i64* %RIP, !mcsema_real_eip !55
  %383 = load i1, i1* %CF_val, !mcsema_real_eip !55
  store i1 %383, i1* %CF, align 1, !mcsema_real_eip !55
  %384 = load i1, i1* %PF_val, !mcsema_real_eip !55
  store i1 %384, i1* %PF, align 1, !mcsema_real_eip !55
  %385 = load i1, i1* %AF_val, !mcsema_real_eip !55
  store i1 %385, i1* %AF, align 1, !mcsema_real_eip !55
  %386 = load i1, i1* %ZF_val, !mcsema_real_eip !55
  store i1 %386, i1* %ZF, align 1, !mcsema_real_eip !55
  %387 = load i1, i1* %SF_val, !mcsema_real_eip !55
  store i1 %387, i1* %SF, align 1, !mcsema_real_eip !55
  %388 = load i1, i1* %OF_val, !mcsema_real_eip !55
  store i1 %388, i1* %OF, align 1, !mcsema_real_eip !55
  %389 = load i1, i1* %DF_val, !mcsema_real_eip !55
  store i1 %389, i1* %DF, align 1, !mcsema_real_eip !55
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !55
  %390 = load i1, i1* %FPU_B_val, !mcsema_real_eip !55
  store i1 %390, i1* %FPU_B, align 1, !mcsema_real_eip !55
  %391 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !55
  store i1 %391, i1* %FPU_C3, align 1, !mcsema_real_eip !55
  %392 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !55
  store i3 %392, i3* %FPU_TOP, align 1, !mcsema_real_eip !55
  %393 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !55
  store i1 %393, i1* %FPU_C2, align 1, !mcsema_real_eip !55
  %394 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !55
  store i1 %394, i1* %FPU_C1, align 1, !mcsema_real_eip !55
  %395 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !55
  store i1 %395, i1* %FPU_C0, align 1, !mcsema_real_eip !55
  %396 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !55
  store i1 %396, i1* %FPU_ES, align 1, !mcsema_real_eip !55
  %397 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !55
  store i1 %397, i1* %FPU_SF, align 1, !mcsema_real_eip !55
  %398 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !55
  store i1 %398, i1* %FPU_PE, align 1, !mcsema_real_eip !55
  %399 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !55
  store i1 %399, i1* %FPU_UE, align 1, !mcsema_real_eip !55
  %400 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !55
  store i1 %400, i1* %FPU_OE, align 1, !mcsema_real_eip !55
  %401 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !55
  store i1 %401, i1* %FPU_ZE, align 1, !mcsema_real_eip !55
  %402 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !55
  store i1 %402, i1* %FPU_DE, align 1, !mcsema_real_eip !55
  %403 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !55
  store i1 %403, i1* %FPU_IE, align 1, !mcsema_real_eip !55
  %404 = load i1, i1* %FPU_X_val, !mcsema_real_eip !55
  store i1 %404, i1* %FPU_X, align 1, !mcsema_real_eip !55
  %405 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !55
  store i2 %405, i2* %FPU_RC, align 1, !mcsema_real_eip !55
  %406 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !55
  store i2 %406, i2* %FPU_PC, align 1, !mcsema_real_eip !55
  %407 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !55
  store i1 %407, i1* %FPU_PM, align 1, !mcsema_real_eip !55
  %408 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !55
  store i1 %408, i1* %FPU_UM, align 1, !mcsema_real_eip !55
  %409 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !55
  store i1 %409, i1* %FPU_OM, align 1, !mcsema_real_eip !55
  %410 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !55
  store i1 %410, i1* %FPU_ZM, align 1, !mcsema_real_eip !55
  %411 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !55
  store i1 %411, i1* %FPU_DM, align 1, !mcsema_real_eip !55
  %412 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !55
  store i1 %412, i1* %FPU_IM, align 1, !mcsema_real_eip !55
  %413 = load i64, i64* %53, align 4
  store i64 %413, i64* %52, align 4
  %414 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !55
  store i16 %414, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !55
  %415 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !55
  store i64 %415, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !55
  %416 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !55
  store i16 %416, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !55
  %417 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !55
  store i64 %417, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !55
  %418 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !55
  store i11 %418, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !55
  %419 = load i128, i128* %XMM0_val, !mcsema_real_eip !55
  store i128 %419, i128* %XMM0, align 1, !mcsema_real_eip !55
  %420 = load i128, i128* %XMM1_val, !mcsema_real_eip !55
  store i128 %420, i128* %XMM1, align 1, !mcsema_real_eip !55
  %421 = load i128, i128* %XMM2_val, !mcsema_real_eip !55
  store i128 %421, i128* %XMM2, align 1, !mcsema_real_eip !55
  %422 = load i128, i128* %XMM3_val, !mcsema_real_eip !55
  store i128 %422, i128* %XMM3, align 1, !mcsema_real_eip !55
  %423 = load i128, i128* %XMM4_val, !mcsema_real_eip !55
  store i128 %423, i128* %XMM4, align 1, !mcsema_real_eip !55
  %424 = load i128, i128* %XMM5_val, !mcsema_real_eip !55
  store i128 %424, i128* %XMM5, align 1, !mcsema_real_eip !55
  %425 = load i128, i128* %XMM6_val, !mcsema_real_eip !55
  store i128 %425, i128* %XMM6, align 1, !mcsema_real_eip !55
  %426 = load i128, i128* %XMM7_val, !mcsema_real_eip !55
  store i128 %426, i128* %XMM7, align 1, !mcsema_real_eip !55
  %427 = load i128, i128* %XMM8_val, !mcsema_real_eip !55
  store i128 %427, i128* %XMM8, align 1, !mcsema_real_eip !55
  %428 = load i128, i128* %XMM9_val, !mcsema_real_eip !55
  store i128 %428, i128* %XMM9, align 1, !mcsema_real_eip !55
  %429 = load i128, i128* %XMM10_val, !mcsema_real_eip !55
  store i128 %429, i128* %XMM10, align 1, !mcsema_real_eip !55
  %430 = load i128, i128* %XMM11_val, !mcsema_real_eip !55
  store i128 %430, i128* %XMM11, align 1, !mcsema_real_eip !55
  %431 = load i128, i128* %XMM12_val, !mcsema_real_eip !55
  store i128 %431, i128* %XMM12, align 1, !mcsema_real_eip !55
  %432 = load i128, i128* %XMM13_val, !mcsema_real_eip !55
  store i128 %432, i128* %XMM13, align 1, !mcsema_real_eip !55
  %433 = load i128, i128* %XMM14_val, !mcsema_real_eip !55
  store i128 %433, i128* %XMM14, align 1, !mcsema_real_eip !55
  %434 = load i128, i128* %XMM15_val, !mcsema_real_eip !55
  store i128 %434, i128* %XMM15, align 1, !mcsema_real_eip !55
  %435 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !55
  store i64 %435, i64* %STACK_BASE, align 1, !mcsema_real_eip !55
  %436 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !55
  store i64 %436, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !55
  ret void, !mcsema_real_eip !55
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
!8 = !{i64 135}
!9 = !{i64 140}
!10 = !{i64 146}
!11 = !{i64 152}
!12 = !{i64 157}
!13 = !{i64 163}
!14 = !{i64 170}
!15 = !{i64 177}
!16 = !{i64 185}
!17 = !{i64 189}
!18 = !{i64 192}
!19 = !{i64 197}
!20 = !{i64 200}
!21 = !{i64 203}
!22 = !{i64 207}
!23 = !{i64 208}
!24 = !{i64 0}
!25 = !{i64 1}
!26 = !{i64 4}
!27 = !{i64 7}
!28 = !{i64 11}
!29 = !{i64 14}
!30 = !{i64 17}
!31 = !{i64 20}
!32 = !{i64 23}
!33 = !{i64 27}
!34 = !{i64 31}
!35 = !{i64 35}
!36 = !{i64 38}
!37 = !{i64 41}
!38 = !{i64 44}
!39 = !{i64 47}
!40 = !{i64 50}
!41 = !{i64 53}
!42 = !{i64 56}
!43 = !{i64 59}
!44 = !{i64 62}
!45 = !{i64 69}
!46 = !{i64 89}
!47 = !{i64 92}
!48 = !{i64 78}
!49 = !{i64 81}
!50 = !{i64 84}
!51 = !{i64 95}
!52 = !{i64 75}
!53 = !{i64 98}
!54 = !{i64 101}
!55 = !{i64 102}
