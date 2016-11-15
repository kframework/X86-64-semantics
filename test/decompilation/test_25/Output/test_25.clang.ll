; ModuleID = 'Output/test_25.clang.bc'
source_filename = "Output/test_25.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type <{ [10 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x8b = internal constant %0 <{ [10 x i8] c"I am: %s\0A\00" }>, align 64

define internal x86_64_sysvcc void @sub_0(%struct.regs*) {
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
  %95 = load i64, i64* %RBP_val, !mcsema_real_eip !5
  %96 = add i64 %95, -4, !mcsema_real_eip !5
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !5
  %98 = bitcast i64* %97 to i32*
  store i32 0, i32* %98, !mcsema_real_eip !5
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %100 = add i64 %99, -8, !mcsema_real_eip !6
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !6
  %102 = load i64, i64* %RDI_val, !mcsema_real_eip !6
  %103 = trunc i64 %102 to i32, !mcsema_real_eip !6
  %104 = bitcast i64* %101 to i32*
  store i32 %103, i32* %104, !mcsema_real_eip !6
  %105 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  %106 = add i64 %105, -16, !mcsema_real_eip !7
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !7
  %108 = load i64, i64* %RSI_val, !mcsema_real_eip !7
  store i64 %108, i64* %107, !mcsema_real_eip !7
  %109 = load i64, i64* %RBP_val, !mcsema_real_eip !8
  %110 = add i64 %109, -20, !mcsema_real_eip !8
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !8
  %112 = bitcast i64* %111 to i32*
  store i32 0, i32* %112, !mcsema_real_eip !8
  %113 = load i64, i64* %RBP_val, !mcsema_real_eip !9
  %114 = add i64 %113, -16, !mcsema_real_eip !9
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !9
  %116 = load i64, i64* %115, !mcsema_real_eip !9
  store i64 %116, i64* %RSI_val, !mcsema_real_eip !9
  %117 = add i64 %116, 8, !mcsema_real_eip !10
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !10
  %119 = load i64, i64* %118, !mcsema_real_eip !10
  store i64 %119, i64* %RDI_val, !mcsema_real_eip !10
  %120 = tail call x86_64_sysvcc i64 @strlen(i64 %119), !mcsema_real_eip !11
  store i64 %120, i64* %RAX_val, !mcsema_real_eip !11
  %121 = and i64 %120, 4294967295
  store i64 %121, i64* %RCX_val, !mcsema_real_eip !12
  %122 = load i64, i64* %RBP_val, !mcsema_real_eip !13
  %123 = add i64 %122, -24, !mcsema_real_eip !13
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !13
  %125 = trunc i64 %120 to i32, !mcsema_real_eip !13
  %126 = bitcast i64* %124 to i32*
  store i32 %125, i32* %126, !mcsema_real_eip !13
  %127 = load i64, i64* %RBP_val, !mcsema_real_eip !14
  %128 = add i64 %127, -28, !mcsema_real_eip !14
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !14
  %130 = bitcast i64* %129 to i32*
  store i32 0, i32* %130, !mcsema_real_eip !14
  br label %block_0x36, !mcsema_real_eip !15

block_0x36:                                       ; preds = %block_0x42, %entry
  %131 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %132 = add i64 %131, -28, !mcsema_real_eip !15
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !15
  %134 = bitcast i64* %133 to i32*
  %135 = load i32, i32* %134, !mcsema_real_eip !15
  %136 = zext i32 %135 to i64, !mcsema_real_eip !15
  store i64 %136, i64* %RAX_val, !mcsema_real_eip !15
  %137 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %138 = add i64 %137, -24, !mcsema_real_eip !16
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !16
  %140 = bitcast i64* %139 to i32*
  %141 = load i32, i32* %140, !mcsema_real_eip !16
  %142 = sub i32 %135, %141, !mcsema_real_eip !16
  %143 = xor i32 %142, %135, !mcsema_real_eip !16
  %144 = xor i32 %143, %141, !mcsema_real_eip !16
  %145 = and i32 %144, 16, !mcsema_real_eip !16
  %146 = icmp ne i32 %145, 0, !mcsema_real_eip !16
  store i1 %146, i1* %AF_val, !mcsema_real_eip !16
  %147 = trunc i32 %142 to i8, !mcsema_real_eip !16
  %148 = tail call i8 @llvm.ctpop.i8(i8 %147), !mcsema_real_eip !16
  %149 = and i8 %148, 1
  %150 = icmp eq i8 %149, 0
  store i1 %150, i1* %PF_val, !mcsema_real_eip !16
  %151 = icmp eq i32 %135, %141
  store i1 %151, i1* %ZF_val, !mcsema_real_eip !16
  %152 = icmp slt i32 %142, 0
  store i1 %152, i1* %SF_val, !mcsema_real_eip !16
  %153 = icmp ult i32 %135, %141, !mcsema_real_eip !16
  store i1 %153, i1* %CF_val, !mcsema_real_eip !16
  %154 = xor i32 %141, %135, !mcsema_real_eip !16
  %155 = and i32 %143, %154, !mcsema_real_eip !16
  %156 = icmp slt i32 %155, 0
  store i1 %156, i1* %OF_val, !mcsema_real_eip !16
  %157 = load i1, i1* %SF_val, !mcsema_real_eip !17
  %tmp = xor i1 %157, %156
  br i1 %tmp, label %block_0x42, label %block_0x82, !mcsema_real_eip !17

block_0x42:                                       ; preds = %block_0x36
  store i64 ptrtoint (%0* @data_0x8b to i64), i64* %RDI_val, !mcsema_real_eip !18
  %158 = load i64, i64* %RBP_val, !mcsema_real_eip !19
  %159 = add i64 %158, -16, !mcsema_real_eip !19
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !19
  %161 = load i64, i64* %160, !mcsema_real_eip !19
  store i64 %161, i64* %RAX_val, !mcsema_real_eip !19
  %162 = add i64 %161, 8, !mcsema_real_eip !20
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !20
  %164 = load i64, i64* %163, !mcsema_real_eip !20
  store i64 %164, i64* %RSI_val, !mcsema_real_eip !20
  %165 = load i64, i64* %RDI_val, !mcsema_real_eip !21
  %166 = tail call x86_64_sysvcc i64 @printf(i64 %165, i64 %164), !mcsema_real_eip !21
  store i64 %166, i64* %RAX_val, !mcsema_real_eip !21
  %167 = load i64, i64* %RBP_val, !mcsema_real_eip !22
  %168 = add i64 %167, -16, !mcsema_real_eip !22
  %169 = inttoptr i64 %168 to i64*, !mcsema_real_eip !22
  %170 = load i64, i64* %169, !mcsema_real_eip !22
  store i64 %170, i64* %RSI_val, !mcsema_real_eip !22
  %171 = add i64 %170, 8, !mcsema_real_eip !23
  %172 = inttoptr i64 %171 to i64*, !mcsema_real_eip !23
  %173 = load i64, i64* %172, !mcsema_real_eip !23
  store i64 %173, i64* %RSI_val, !mcsema_real_eip !23
  %174 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %175 = add i64 %174, -28, !mcsema_real_eip !24
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !24
  %177 = bitcast i64* %176 to i32*
  %178 = load i32, i32* %177, !mcsema_real_eip !24
  %179 = sext i32 %178 to i64, !mcsema_real_eip !24
  store i64 %179, i64* %RDI_val, !mcsema_real_eip !24
  %180 = load i64, i64* %RSI_val, !mcsema_real_eip !25
  %181 = add i64 %180, %179, !mcsema_real_eip !25
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !25
  %183 = bitcast i64* %182 to i8*
  %184 = load i8, i8* %183, !mcsema_real_eip !25
  %185 = sext i8 %184 to i32, !mcsema_real_eip !25
  %186 = zext i32 %185 to i64, !mcsema_real_eip !25
  store i64 %186, i64* %RCX_val, !mcsema_real_eip !25
  %187 = load i64, i64* %RBP_val, !mcsema_real_eip !26
  %188 = add i64 %187, -20, !mcsema_real_eip !26
  %189 = inttoptr i64 %188 to i64*, !mcsema_real_eip !26
  %190 = bitcast i64* %189 to i32*
  %191 = load i32, i32* %190, !mcsema_real_eip !26
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %185, i32 %191)
  %192 = extractvalue { i32, i1 } %uadd, 0
  %193 = xor i32 %192, %191, !mcsema_real_eip !26
  %194 = xor i32 %193, %185, !mcsema_real_eip !26
  %195 = and i32 %194, 16, !mcsema_real_eip !26
  %196 = icmp ne i32 %195, 0, !mcsema_real_eip !26
  store i1 %196, i1* %AF_val, !mcsema_real_eip !26
  %197 = icmp slt i32 %192, 0
  store i1 %197, i1* %SF_val, !mcsema_real_eip !26
  %198 = icmp eq i32 %192, 0, !mcsema_real_eip !26
  store i1 %198, i1* %ZF_val, !mcsema_real_eip !26
  %199 = xor i32 %185, -2147483648, !mcsema_real_eip !26
  %200 = xor i32 %199, %191, !mcsema_real_eip !26
  %201 = and i32 %193, %200, !mcsema_real_eip !26
  %202 = icmp slt i32 %201, 0
  store i1 %202, i1* %OF_val, !mcsema_real_eip !26
  %203 = trunc i32 %192 to i8, !mcsema_real_eip !26
  %204 = tail call i8 @llvm.ctpop.i8(i8 %203), !mcsema_real_eip !26
  %205 = and i8 %204, 1
  %206 = icmp eq i8 %205, 0
  store i1 %206, i1* %PF_val, !mcsema_real_eip !26
  %207 = extractvalue { i32, i1 } %uadd, 1
  store i1 %207, i1* %CF_val, !mcsema_real_eip !26
  %208 = zext i32 %192 to i64, !mcsema_real_eip !26
  store i64 %208, i64* %RCX_val, !mcsema_real_eip !26
  %209 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %210 = add i64 %209, -20, !mcsema_real_eip !27
  %211 = inttoptr i64 %210 to i64*, !mcsema_real_eip !27
  %212 = bitcast i64* %211 to i32*
  store i32 %192, i32* %212, !mcsema_real_eip !27
  %213 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %214 = add i64 %213, -32, !mcsema_real_eip !28
  %215 = inttoptr i64 %214 to i64*, !mcsema_real_eip !28
  %216 = load i64, i64* %RAX_val, !mcsema_real_eip !28
  %217 = trunc i64 %216 to i32, !mcsema_real_eip !28
  %218 = bitcast i64* %215 to i32*
  store i32 %217, i32* %218, !mcsema_real_eip !28
  %219 = load i64, i64* %RBP_val, !mcsema_real_eip !29
  %220 = add i64 %219, -28, !mcsema_real_eip !29
  %221 = inttoptr i64 %220 to i64*, !mcsema_real_eip !29
  %222 = bitcast i64* %221 to i32*
  %223 = load i32, i32* %222, !mcsema_real_eip !29
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %223, i32 1)
  %224 = extractvalue { i32, i1 } %uadd71, 0
  %225 = xor i32 %224, %223, !mcsema_real_eip !30
  %226 = and i32 %225, 16, !mcsema_real_eip !30
  %227 = icmp ne i32 %226, 0, !mcsema_real_eip !30
  store i1 %227, i1* %AF_val, !mcsema_real_eip !30
  %228 = icmp slt i32 %224, 0
  store i1 %228, i1* %SF_val, !mcsema_real_eip !30
  %229 = icmp eq i32 %224, 0, !mcsema_real_eip !30
  store i1 %229, i1* %ZF_val, !mcsema_real_eip !30
  %230 = xor i32 %223, -2147483648, !mcsema_real_eip !30
  %231 = and i32 %225, %230, !mcsema_real_eip !30
  %232 = icmp slt i32 %231, 0
  store i1 %232, i1* %OF_val, !mcsema_real_eip !30
  %233 = trunc i32 %224 to i8, !mcsema_real_eip !30
  %234 = tail call i8 @llvm.ctpop.i8(i8 %233), !mcsema_real_eip !30
  %235 = and i8 %234, 1
  %236 = icmp eq i8 %235, 0
  store i1 %236, i1* %PF_val, !mcsema_real_eip !30
  %237 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %237, i1* %CF_val, !mcsema_real_eip !30
  %238 = zext i32 %224 to i64, !mcsema_real_eip !30
  store i64 %238, i64* %RAX_val, !mcsema_real_eip !30
  %239 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %240 = add i64 %239, -28, !mcsema_real_eip !31
  %241 = inttoptr i64 %240 to i64*, !mcsema_real_eip !31
  %242 = bitcast i64* %241 to i32*
  store i32 %224, i32* %242, !mcsema_real_eip !31
  br label %block_0x36, !mcsema_real_eip !32

block_0x82:                                       ; preds = %block_0x36
  %243 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %244 = add i64 %243, -24, !mcsema_real_eip !33
  %245 = inttoptr i64 %244 to i64*, !mcsema_real_eip !33
  %246 = bitcast i64* %245 to i32*
  %247 = load i32, i32* %246, !mcsema_real_eip !33
  %248 = zext i32 %247 to i64, !mcsema_real_eip !33
  store i64 %248, i64* %RAX_val, !mcsema_real_eip !33
  %249 = load i64, i64* %RSP_val, !mcsema_real_eip !34
  %uadd72 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %249, i64 32)
  %250 = extractvalue { i64, i1 } %uadd72, 0
  %251 = xor i64 %250, %249, !mcsema_real_eip !34
  %252 = and i64 %251, 16, !mcsema_real_eip !34
  %253 = icmp ne i64 %252, 0, !mcsema_real_eip !34
  store i1 %253, i1* %AF_val, !mcsema_real_eip !34
  %254 = icmp slt i64 %250, 0
  store i1 %254, i1* %SF_val, !mcsema_real_eip !34
  %255 = icmp eq i64 %250, 0, !mcsema_real_eip !34
  store i1 %255, i1* %ZF_val, !mcsema_real_eip !34
  %256 = xor i64 %249, -9223372036854775808, !mcsema_real_eip !34
  %257 = and i64 %251, %256, !mcsema_real_eip !34
  %258 = icmp slt i64 %257, 0
  store i1 %258, i1* %OF_val, !mcsema_real_eip !34
  %259 = trunc i64 %250 to i8, !mcsema_real_eip !34
  %260 = tail call i8 @llvm.ctpop.i8(i8 %259), !mcsema_real_eip !34
  %261 = and i8 %260, 1
  %262 = icmp eq i8 %261, 0
  store i1 %262, i1* %PF_val, !mcsema_real_eip !34
  %263 = extractvalue { i64, i1 } %uadd72, 1
  store i1 %263, i1* %CF_val, !mcsema_real_eip !34
  store i64 %250, i64* %RSP_val, !mcsema_real_eip !34
  %264 = inttoptr i64 %250 to i64*, !mcsema_real_eip !35
  %265 = load i64, i64* %264, !mcsema_real_eip !35
  store i64 %265, i64* %RBP_val, !mcsema_real_eip !35
  %266 = add i64 %250, 16, !mcsema_real_eip !36
  store i64 %266, i64* %RSP_val, !mcsema_real_eip !36
  %267 = load i64, i64* %RAX_val, !mcsema_real_eip !36
  store i64 %267, i64* %RAX, !mcsema_real_eip !36
  %268 = load i64, i64* %RBX_val, !mcsema_real_eip !36
  store i64 %268, i64* %RBX, !mcsema_real_eip !36
  %269 = load i64, i64* %RCX_val, !mcsema_real_eip !36
  store i64 %269, i64* %RCX, !mcsema_real_eip !36
  %270 = load i64, i64* %RDX_val, !mcsema_real_eip !36
  store i64 %270, i64* %RDX, !mcsema_real_eip !36
  %271 = load i64, i64* %RSI_val, !mcsema_real_eip !36
  store i64 %271, i64* %RSI, !mcsema_real_eip !36
  %272 = load i64, i64* %RDI_val, !mcsema_real_eip !36
  store i64 %272, i64* %RDI, !mcsema_real_eip !36
  %273 = load i64, i64* %RSP_val, !mcsema_real_eip !36
  store i64 %273, i64* %RSP, !mcsema_real_eip !36
  %274 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  store i64 %274, i64* %RBP, !mcsema_real_eip !36
  %275 = load i64, i64* %R8_val, !mcsema_real_eip !36
  store i64 %275, i64* %R8, !mcsema_real_eip !36
  %276 = load i64, i64* %R9_val, !mcsema_real_eip !36
  store i64 %276, i64* %R9, !mcsema_real_eip !36
  %277 = load i64, i64* %R10_val, !mcsema_real_eip !36
  store i64 %277, i64* %R10, !mcsema_real_eip !36
  %278 = load i64, i64* %R11_val, !mcsema_real_eip !36
  store i64 %278, i64* %R11, !mcsema_real_eip !36
  %279 = load i64, i64* %R12_val, !mcsema_real_eip !36
  store i64 %279, i64* %R12, !mcsema_real_eip !36
  %280 = load i64, i64* %R13_val, !mcsema_real_eip !36
  store i64 %280, i64* %R13, !mcsema_real_eip !36
  %281 = load i64, i64* %R14_val, !mcsema_real_eip !36
  store i64 %281, i64* %R14, !mcsema_real_eip !36
  %282 = load i64, i64* %R15_val, !mcsema_real_eip !36
  store i64 %282, i64* %R15, !mcsema_real_eip !36
  %283 = load i64, i64* %RIP_val, !mcsema_real_eip !36
  store i64 %283, i64* %RIP, !mcsema_real_eip !36
  %284 = load i1, i1* %CF_val, !mcsema_real_eip !36
  store i1 %284, i1* %CF, align 1, !mcsema_real_eip !36
  %285 = load i1, i1* %PF_val, !mcsema_real_eip !36
  store i1 %285, i1* %PF, align 1, !mcsema_real_eip !36
  %286 = load i1, i1* %AF_val, !mcsema_real_eip !36
  store i1 %286, i1* %AF, align 1, !mcsema_real_eip !36
  %287 = load i1, i1* %ZF_val, !mcsema_real_eip !36
  store i1 %287, i1* %ZF, align 1, !mcsema_real_eip !36
  %288 = load i1, i1* %SF_val, !mcsema_real_eip !36
  store i1 %288, i1* %SF, align 1, !mcsema_real_eip !36
  %289 = load i1, i1* %OF_val, !mcsema_real_eip !36
  store i1 %289, i1* %OF, align 1, !mcsema_real_eip !36
  %290 = load i1, i1* %DF_val, !mcsema_real_eip !36
  store i1 %290, i1* %DF, align 1, !mcsema_real_eip !36
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !36
  %291 = load i1, i1* %FPU_B_val, !mcsema_real_eip !36
  store i1 %291, i1* %FPU_B, align 1, !mcsema_real_eip !36
  %292 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !36
  store i1 %292, i1* %FPU_C3, align 1, !mcsema_real_eip !36
  %293 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !36
  store i3 %293, i3* %FPU_TOP, align 1, !mcsema_real_eip !36
  %294 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !36
  store i1 %294, i1* %FPU_C2, align 1, !mcsema_real_eip !36
  %295 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !36
  store i1 %295, i1* %FPU_C1, align 1, !mcsema_real_eip !36
  %296 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !36
  store i1 %296, i1* %FPU_C0, align 1, !mcsema_real_eip !36
  %297 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !36
  store i1 %297, i1* %FPU_ES, align 1, !mcsema_real_eip !36
  %298 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !36
  store i1 %298, i1* %FPU_SF, align 1, !mcsema_real_eip !36
  %299 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !36
  store i1 %299, i1* %FPU_PE, align 1, !mcsema_real_eip !36
  %300 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !36
  store i1 %300, i1* %FPU_UE, align 1, !mcsema_real_eip !36
  %301 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !36
  store i1 %301, i1* %FPU_OE, align 1, !mcsema_real_eip !36
  %302 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !36
  store i1 %302, i1* %FPU_ZE, align 1, !mcsema_real_eip !36
  %303 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !36
  store i1 %303, i1* %FPU_DE, align 1, !mcsema_real_eip !36
  %304 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !36
  store i1 %304, i1* %FPU_IE, align 1, !mcsema_real_eip !36
  %305 = load i1, i1* %FPU_X_val, !mcsema_real_eip !36
  store i1 %305, i1* %FPU_X, align 1, !mcsema_real_eip !36
  %306 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !36
  store i2 %306, i2* %FPU_RC, align 1, !mcsema_real_eip !36
  %307 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !36
  store i2 %307, i2* %FPU_PC, align 1, !mcsema_real_eip !36
  %308 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !36
  store i1 %308, i1* %FPU_PM, align 1, !mcsema_real_eip !36
  %309 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !36
  store i1 %309, i1* %FPU_UM, align 1, !mcsema_real_eip !36
  %310 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !36
  store i1 %310, i1* %FPU_OM, align 1, !mcsema_real_eip !36
  %311 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !36
  store i1 %311, i1* %FPU_ZM, align 1, !mcsema_real_eip !36
  %312 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !36
  store i1 %312, i1* %FPU_DM, align 1, !mcsema_real_eip !36
  %313 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !36
  store i1 %313, i1* %FPU_IM, align 1, !mcsema_real_eip !36
  %314 = load i64, i64* %53, align 4
  store i64 %314, i64* %52, align 4
  %315 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !36
  store i16 %315, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !36
  %316 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !36
  store i64 %316, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !36
  %317 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !36
  store i16 %317, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !36
  %318 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !36
  store i64 %318, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !36
  %319 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !36
  store i11 %319, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !36
  %320 = load i128, i128* %XMM0_val, !mcsema_real_eip !36
  store i128 %320, i128* %XMM0, align 1, !mcsema_real_eip !36
  %321 = load i128, i128* %XMM1_val, !mcsema_real_eip !36
  store i128 %321, i128* %XMM1, align 1, !mcsema_real_eip !36
  %322 = load i128, i128* %XMM2_val, !mcsema_real_eip !36
  store i128 %322, i128* %XMM2, align 1, !mcsema_real_eip !36
  %323 = load i128, i128* %XMM3_val, !mcsema_real_eip !36
  store i128 %323, i128* %XMM3, align 1, !mcsema_real_eip !36
  %324 = load i128, i128* %XMM4_val, !mcsema_real_eip !36
  store i128 %324, i128* %XMM4, align 1, !mcsema_real_eip !36
  %325 = load i128, i128* %XMM5_val, !mcsema_real_eip !36
  store i128 %325, i128* %XMM5, align 1, !mcsema_real_eip !36
  %326 = load i128, i128* %XMM6_val, !mcsema_real_eip !36
  store i128 %326, i128* %XMM6, align 1, !mcsema_real_eip !36
  %327 = load i128, i128* %XMM7_val, !mcsema_real_eip !36
  store i128 %327, i128* %XMM7, align 1, !mcsema_real_eip !36
  %328 = load i128, i128* %XMM8_val, !mcsema_real_eip !36
  store i128 %328, i128* %XMM8, align 1, !mcsema_real_eip !36
  %329 = load i128, i128* %XMM9_val, !mcsema_real_eip !36
  store i128 %329, i128* %XMM9, align 1, !mcsema_real_eip !36
  %330 = load i128, i128* %XMM10_val, !mcsema_real_eip !36
  store i128 %330, i128* %XMM10, align 1, !mcsema_real_eip !36
  %331 = load i128, i128* %XMM11_val, !mcsema_real_eip !36
  store i128 %331, i128* %XMM11, align 1, !mcsema_real_eip !36
  %332 = load i128, i128* %XMM12_val, !mcsema_real_eip !36
  store i128 %332, i128* %XMM12, align 1, !mcsema_real_eip !36
  %333 = load i128, i128* %XMM13_val, !mcsema_real_eip !36
  store i128 %333, i128* %XMM13, align 1, !mcsema_real_eip !36
  %334 = load i128, i128* %XMM14_val, !mcsema_real_eip !36
  store i128 %334, i128* %XMM14, align 1, !mcsema_real_eip !36
  %335 = load i128, i128* %XMM15_val, !mcsema_real_eip !36
  store i128 %335, i128* %XMM15, align 1, !mcsema_real_eip !36
  %336 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !36
  store i64 %336, i64* %STACK_BASE, align 1, !mcsema_real_eip !36
  %337 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !36
  store i64 %337, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !36
  ret void, !mcsema_real_eip !36
}

declare x86_64_sysvcc i64 @strlen(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 15}
!7 = !{i64 18}
!8 = !{i64 22}
!9 = !{i64 29}
!10 = !{i64 33}
!11 = !{i64 37}
!12 = !{i64 42}
!13 = !{i64 44}
!14 = !{i64 47}
!15 = !{i64 54}
!16 = !{i64 57}
!17 = !{i64 60}
!18 = !{i64 66}
!19 = !{i64 76}
!20 = !{i64 80}
!21 = !{i64 86}
!22 = !{i64 91}
!23 = !{i64 95}
!24 = !{i64 99}
!25 = !{i64 103}
!26 = !{i64 107}
!27 = !{i64 110}
!28 = !{i64 113}
!29 = !{i64 116}
!30 = !{i64 119}
!31 = !{i64 122}
!32 = !{i64 125}
!33 = !{i64 130}
!34 = !{i64 133}
!35 = !{i64 137}
!36 = !{i64 138}
