; ModuleID = 'Output/test_16.clang.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [24 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x7c = internal constant %0 <{ [24 x i8] c"%s\0A\00%s, %s\0A\00%s, %s, %s\0A\00" }>, align 64

define internal x86_64_sysvcc void @sub_10(%struct.regs*) {
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
  store i64 ptrtoint (%0* @data_0x7c to i64), i64* %RAX_val, !mcsema_real_eip !5
  %94 = load i64* %RBP_val, !mcsema_real_eip !6
  %95 = add i64 %94, -8, !mcsema_real_eip !6
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !6
  %97 = load i64* %RDI_val, !mcsema_real_eip !6
  store i64 %97, i64* %96, !mcsema_real_eip !6
  %98 = load i64* %RBP_val, !mcsema_real_eip !7
  %99 = add i64 %98, -8, !mcsema_real_eip !7
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !7
  %101 = load i64* %100, !mcsema_real_eip !7
  store i64 %101, i64* %RSI_val, !mcsema_real_eip !7
  %102 = load i64* %RAX_val, !mcsema_real_eip !8
  %103 = load i64* %RDX_val, !mcsema_real_eip !9
  %104 = load i64* %RCX_val, !mcsema_real_eip !9
  %105 = tail call x86_64_sysvcc i64 @printf(i64 %102, i64 %101, i64 %103, i64 %104), !mcsema_real_eip !9
  store i64 %105, i64* %RAX_val, !mcsema_real_eip !9
  store i64 add (i64 ptrtoint (%0* @data_0x7c to i64), i64 4), i64* %RDI_val, !mcsema_real_eip !10
  %106 = load i64* %RBP_val, !mcsema_real_eip !11
  %107 = add i64 %106, -12, !mcsema_real_eip !11
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !11
  %109 = trunc i64 %105 to i32, !mcsema_real_eip !11
  %110 = bitcast i64* %108 to i32*
  store i32 %109, i32* %110, !mcsema_real_eip !11
  %111 = load i64* %RBP_val, !mcsema_real_eip !12
  %112 = add i64 %111, -8, !mcsema_real_eip !12
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !12
  %114 = load i64* %113, !mcsema_real_eip !12
  store i64 %114, i64* %RSI_val, !mcsema_real_eip !12
  %115 = load i64* %113, !mcsema_real_eip !13
  store i64 %115, i64* %RDX_val, !mcsema_real_eip !13
  %116 = load i64* %RDI_val, !mcsema_real_eip !14
  %117 = load i64* %RCX_val, !mcsema_real_eip !14
  %118 = tail call x86_64_sysvcc i64 @printf(i64 %116, i64 %114, i64 %115, i64 %117), !mcsema_real_eip !14
  store i64 %118, i64* %RAX_val, !mcsema_real_eip !14
  store i64 add (i64 ptrtoint (%0* @data_0x7c to i64), i64 12), i64* %RDI_val, !mcsema_real_eip !15
  %119 = load i64* %RBP_val, !mcsema_real_eip !16
  %120 = add i64 %119, -12, !mcsema_real_eip !16
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !16
  %122 = trunc i64 %118 to i32, !mcsema_real_eip !16
  %123 = bitcast i64* %121 to i32*
  store i32 %122, i32* %123, !mcsema_real_eip !16
  %124 = load i64* %RBP_val, !mcsema_real_eip !17
  %125 = add i64 %124, -8, !mcsema_real_eip !17
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !17
  %127 = load i64* %126, !mcsema_real_eip !17
  store i64 %127, i64* %RSI_val, !mcsema_real_eip !17
  %128 = load i64* %126, !mcsema_real_eip !18
  store i64 %128, i64* %RDX_val, !mcsema_real_eip !18
  %129 = load i64* %RBP_val, !mcsema_real_eip !19
  %130 = add i64 %129, -8, !mcsema_real_eip !19
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !19
  %132 = load i64* %131, !mcsema_real_eip !19
  store i64 %132, i64* %RCX_val, !mcsema_real_eip !19
  %133 = load i64* %RDI_val, !mcsema_real_eip !20
  %134 = load i64* %RSI_val, !mcsema_real_eip !20
  %135 = load i64* %RDX_val, !mcsema_real_eip !20
  %136 = tail call x86_64_sysvcc i64 @printf(i64 %133, i64 %134, i64 %135, i64 %132), !mcsema_real_eip !20
  store i64 %136, i64* %RAX_val, !mcsema_real_eip !20
  %137 = load i64* %RBP_val, !mcsema_real_eip !21
  %138 = add i64 %137, -12, !mcsema_real_eip !21
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !21
  %140 = trunc i64 %136 to i32, !mcsema_real_eip !21
  %141 = bitcast i64* %139 to i32*
  store i32 %140, i32* %141, !mcsema_real_eip !21
  %142 = load i64* %RBP_val, !mcsema_real_eip !22
  %143 = add i64 %142, -12, !mcsema_real_eip !22
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !22
  %145 = bitcast i64* %144 to i32*
  %146 = load i32* %145, !mcsema_real_eip !22
  %147 = zext i32 %146 to i64, !mcsema_real_eip !22
  store i64 %147, i64* %RAX_val, !mcsema_real_eip !22
  %148 = load i64* %RSP_val, !mcsema_real_eip !23
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %148, i64 16)
  %149 = extractvalue { i64, i1 } %uadd, 0
  %150 = xor i64 %149, %148, !mcsema_real_eip !23
  %151 = and i64 %150, 16
  %152 = icmp eq i64 %151, 0
  store i1 %152, i1* %AF_val, !mcsema_real_eip !23
  %153 = icmp slt i64 %149, 0
  store i1 %153, i1* %SF_val, !mcsema_real_eip !23
  %154 = icmp eq i64 %149, 0, !mcsema_real_eip !23
  store i1 %154, i1* %ZF_val, !mcsema_real_eip !23
  %155 = xor i64 %148, -9223372036854775808, !mcsema_real_eip !23
  %156 = and i64 %150, %155, !mcsema_real_eip !23
  %157 = icmp slt i64 %156, 0
  store i1 %157, i1* %OF_val, !mcsema_real_eip !23
  %158 = trunc i64 %149 to i8, !mcsema_real_eip !23
  %159 = tail call i8 @llvm.ctpop.i8(i8 %158), !mcsema_real_eip !23
  %160 = and i8 %159, 1
  %161 = icmp eq i8 %160, 0
  store i1 %161, i1* %PF_val, !mcsema_real_eip !23
  %162 = extractvalue { i64, i1 } %uadd, 1
  store i1 %162, i1* %CF_val, !mcsema_real_eip !23
  store i64 %149, i64* %RSP_val, !mcsema_real_eip !23
  %163 = inttoptr i64 %149 to i64*, !mcsema_real_eip !24
  %164 = load i64* %163, !mcsema_real_eip !24
  store i64 %164, i64* %RBP_val, !mcsema_real_eip !24
  %165 = add i64 %149, 16, !mcsema_real_eip !25
  store i64 %165, i64* %RSP_val, !mcsema_real_eip !25
  %166 = load i64* %RAX_val, !mcsema_real_eip !25
  store i64 %166, i64* %RAX, !mcsema_real_eip !25
  %167 = load i64* %RBX_val, !mcsema_real_eip !25
  store i64 %167, i64* %RBX, !mcsema_real_eip !25
  %168 = load i64* %RCX_val, !mcsema_real_eip !25
  store i64 %168, i64* %RCX, !mcsema_real_eip !25
  %169 = load i64* %RDX_val, !mcsema_real_eip !25
  store i64 %169, i64* %RDX, !mcsema_real_eip !25
  %170 = load i64* %RSI_val, !mcsema_real_eip !25
  store i64 %170, i64* %RSI, !mcsema_real_eip !25
  %171 = load i64* %RDI_val, !mcsema_real_eip !25
  store i64 %171, i64* %RDI, !mcsema_real_eip !25
  %172 = load i64* %RSP_val, !mcsema_real_eip !25
  store i64 %172, i64* %RSP, !mcsema_real_eip !25
  %173 = load i64* %RBP_val, !mcsema_real_eip !25
  store i64 %173, i64* %RBP, !mcsema_real_eip !25
  %174 = load i64* %R8_val, !mcsema_real_eip !25
  store i64 %174, i64* %R8, !mcsema_real_eip !25
  %175 = load i64* %R9_val, !mcsema_real_eip !25
  store i64 %175, i64* %R9, !mcsema_real_eip !25
  %176 = load i64* %R10_val, !mcsema_real_eip !25
  store i64 %176, i64* %R10, !mcsema_real_eip !25
  %177 = load i64* %R11_val, !mcsema_real_eip !25
  store i64 %177, i64* %R11, !mcsema_real_eip !25
  %178 = load i64* %R12_val, !mcsema_real_eip !25
  store i64 %178, i64* %R12, !mcsema_real_eip !25
  %179 = load i64* %R13_val, !mcsema_real_eip !25
  store i64 %179, i64* %R13, !mcsema_real_eip !25
  %180 = load i64* %R14_val, !mcsema_real_eip !25
  store i64 %180, i64* %R14, !mcsema_real_eip !25
  %181 = load i64* %R15_val, !mcsema_real_eip !25
  store i64 %181, i64* %R15, !mcsema_real_eip !25
  %182 = load i64* %RIP_val, !mcsema_real_eip !25
  store i64 %182, i64* %RIP, !mcsema_real_eip !25
  %183 = load i1* %CF_val, !mcsema_real_eip !25
  store i1 %183, i1* %CF, align 1, !mcsema_real_eip !25
  %184 = load i1* %PF_val, !mcsema_real_eip !25
  store i1 %184, i1* %PF, align 1, !mcsema_real_eip !25
  %185 = load i1* %AF_val, !mcsema_real_eip !25
  store i1 %185, i1* %AF, align 1, !mcsema_real_eip !25
  %186 = load i1* %ZF_val, !mcsema_real_eip !25
  store i1 %186, i1* %ZF, align 1, !mcsema_real_eip !25
  %187 = load i1* %SF_val, !mcsema_real_eip !25
  store i1 %187, i1* %SF, align 1, !mcsema_real_eip !25
  %188 = load i1* %OF_val, !mcsema_real_eip !25
  store i1 %188, i1* %OF, align 1, !mcsema_real_eip !25
  %189 = load i1* %DF_val, !mcsema_real_eip !25
  store i1 %189, i1* %DF, align 1, !mcsema_real_eip !25
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !25
  %190 = load i1* %FPU_B_val, !mcsema_real_eip !25
  store i1 %190, i1* %FPU_B, align 1, !mcsema_real_eip !25
  %191 = load i1* %FPU_C3_val, !mcsema_real_eip !25
  store i1 %191, i1* %FPU_C3, align 1, !mcsema_real_eip !25
  %192 = load i3* %FPU_TOP_val, !mcsema_real_eip !25
  store i3 %192, i3* %FPU_TOP, align 1, !mcsema_real_eip !25
  %193 = load i1* %FPU_C2_val, !mcsema_real_eip !25
  store i1 %193, i1* %FPU_C2, align 1, !mcsema_real_eip !25
  %194 = load i1* %FPU_C1_val, !mcsema_real_eip !25
  store i1 %194, i1* %FPU_C1, align 1, !mcsema_real_eip !25
  %195 = load i1* %FPU_C0_val, !mcsema_real_eip !25
  store i1 %195, i1* %FPU_C0, align 1, !mcsema_real_eip !25
  %196 = load i1* %FPU_ES_val, !mcsema_real_eip !25
  store i1 %196, i1* %FPU_ES, align 1, !mcsema_real_eip !25
  %197 = load i1* %FPU_SF_val, !mcsema_real_eip !25
  store i1 %197, i1* %FPU_SF, align 1, !mcsema_real_eip !25
  %198 = load i1* %FPU_PE_val, !mcsema_real_eip !25
  store i1 %198, i1* %FPU_PE, align 1, !mcsema_real_eip !25
  %199 = load i1* %FPU_UE_val, !mcsema_real_eip !25
  store i1 %199, i1* %FPU_UE, align 1, !mcsema_real_eip !25
  %200 = load i1* %FPU_OE_val, !mcsema_real_eip !25
  store i1 %200, i1* %FPU_OE, align 1, !mcsema_real_eip !25
  %201 = load i1* %FPU_ZE_val, !mcsema_real_eip !25
  store i1 %201, i1* %FPU_ZE, align 1, !mcsema_real_eip !25
  %202 = load i1* %FPU_DE_val, !mcsema_real_eip !25
  store i1 %202, i1* %FPU_DE, align 1, !mcsema_real_eip !25
  %203 = load i1* %FPU_IE_val, !mcsema_real_eip !25
  store i1 %203, i1* %FPU_IE, align 1, !mcsema_real_eip !25
  %204 = load i1* %FPU_X_val, !mcsema_real_eip !25
  store i1 %204, i1* %FPU_X, align 1, !mcsema_real_eip !25
  %205 = load i2* %FPU_RC_val, !mcsema_real_eip !25
  store i2 %205, i2* %FPU_RC, align 1, !mcsema_real_eip !25
  %206 = load i2* %FPU_PC_val, !mcsema_real_eip !25
  store i2 %206, i2* %FPU_PC, align 1, !mcsema_real_eip !25
  %207 = load i1* %FPU_PM_val, !mcsema_real_eip !25
  store i1 %207, i1* %FPU_PM, align 1, !mcsema_real_eip !25
  %208 = load i1* %FPU_UM_val, !mcsema_real_eip !25
  store i1 %208, i1* %FPU_UM, align 1, !mcsema_real_eip !25
  %209 = load i1* %FPU_OM_val, !mcsema_real_eip !25
  store i1 %209, i1* %FPU_OM, align 1, !mcsema_real_eip !25
  %210 = load i1* %FPU_ZM_val, !mcsema_real_eip !25
  store i1 %210, i1* %FPU_ZM, align 1, !mcsema_real_eip !25
  %211 = load i1* %FPU_DM_val, !mcsema_real_eip !25
  store i1 %211, i1* %FPU_DM, align 1, !mcsema_real_eip !25
  %212 = load i1* %FPU_IM_val, !mcsema_real_eip !25
  store i1 %212, i1* %FPU_IM, align 1, !mcsema_real_eip !25
  %213 = load i64* %53, align 4
  store i64 %213, i64* %52, align 4
  %214 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !25
  store i16 %214, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !25
  %215 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !25
  store i64 %215, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !25
  %216 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !25
  store i16 %216, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !25
  %217 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !25
  store i64 %217, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !25
  %218 = load i128* %XMM0_val, !mcsema_real_eip !25
  store i128 %218, i128* %XMM0, align 1, !mcsema_real_eip !25
  %219 = load i128* %XMM1_val, !mcsema_real_eip !25
  store i128 %219, i128* %XMM1, align 1, !mcsema_real_eip !25
  %220 = load i128* %XMM2_val, !mcsema_real_eip !25
  store i128 %220, i128* %XMM2, align 1, !mcsema_real_eip !25
  %221 = load i128* %XMM3_val, !mcsema_real_eip !25
  store i128 %221, i128* %XMM3, align 1, !mcsema_real_eip !25
  %222 = load i128* %XMM4_val, !mcsema_real_eip !25
  store i128 %222, i128* %XMM4, align 1, !mcsema_real_eip !25
  %223 = load i128* %XMM5_val, !mcsema_real_eip !25
  store i128 %223, i128* %XMM5, align 1, !mcsema_real_eip !25
  %224 = load i128* %XMM6_val, !mcsema_real_eip !25
  store i128 %224, i128* %XMM6, align 1, !mcsema_real_eip !25
  %225 = load i128* %XMM7_val, !mcsema_real_eip !25
  store i128 %225, i128* %XMM7, align 1, !mcsema_real_eip !25
  %226 = load i128* %XMM8_val, !mcsema_real_eip !25
  store i128 %226, i128* %XMM8, align 1, !mcsema_real_eip !25
  %227 = load i128* %XMM9_val, !mcsema_real_eip !25
  store i128 %227, i128* %XMM9, align 1, !mcsema_real_eip !25
  %228 = load i128* %XMM10_val, !mcsema_real_eip !25
  store i128 %228, i128* %XMM10, align 1, !mcsema_real_eip !25
  %229 = load i128* %XMM11_val, !mcsema_real_eip !25
  store i128 %229, i128* %XMM11, align 1, !mcsema_real_eip !25
  %230 = load i128* %XMM12_val, !mcsema_real_eip !25
  store i128 %230, i128* %XMM12, align 1, !mcsema_real_eip !25
  %231 = load i128* %XMM13_val, !mcsema_real_eip !25
  store i128 %231, i128* %XMM13, align 1, !mcsema_real_eip !25
  %232 = load i128* %XMM14_val, !mcsema_real_eip !25
  store i128 %232, i128* %XMM14, align 1, !mcsema_real_eip !25
  %233 = load i128* %XMM15_val, !mcsema_real_eip !25
  store i128 %233, i128* %XMM15, align 1, !mcsema_real_eip !25
  %234 = load i64* %STACK_BASE_val, !mcsema_real_eip !25
  store i64 %234, i64* %STACK_BASE, align 1, !mcsema_real_eip !25
  %235 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !25
  store i64 %235, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !25
  ret void, !mcsema_real_eip !25
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg)

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_10(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 16, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 17, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = metadata !{i64 20, [16 x i8] c"\09subq\09$16, %rsp\00"}
!5 = metadata !{i64 24, [18 x i8] c"\09movabsq\09$0, %rax\00"}
!6 = metadata !{i64 34, [21 x i8] c"\09movq\09%rdi, -8(%rbp)\00"}
!7 = metadata !{i64 38, [21 x i8] c"\09movq\09-8(%rbp), %rsi\00"}
!8 = metadata !{i64 42, [17 x i8] c"\09movq\09%rax, %rdi\00"}
!9 = metadata !{i64 47, [9 x i8] c"\09callq\090\00"}
!10 = metadata !{i64 52, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!11 = metadata !{i64 62, [22 x i8] c"\09movl\09%eax, -12(%rbp)\00"}
!12 = metadata !{i64 65, [21 x i8] c"\09movq\09-8(%rbp), %rsi\00"}
!13 = metadata !{i64 69, [21 x i8] c"\09movq\09-8(%rbp), %rdx\00"}
!14 = metadata !{i64 75, [9 x i8] c"\09callq\090\00"}
!15 = metadata !{i64 80, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!16 = metadata !{i64 90, [22 x i8] c"\09movl\09%eax, -12(%rbp)\00"}
!17 = metadata !{i64 93, [21 x i8] c"\09movq\09-8(%rbp), %rsi\00"}
!18 = metadata !{i64 97, [21 x i8] c"\09movq\09-8(%rbp), %rdx\00"}
!19 = metadata !{i64 101, [21 x i8] c"\09movq\09-8(%rbp), %rcx\00"}
!20 = metadata !{i64 107, [9 x i8] c"\09callq\090\00"}
!21 = metadata !{i64 112, [22 x i8] c"\09movl\09%eax, -12(%rbp)\00"}
!22 = metadata !{i64 115, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!23 = metadata !{i64 118, [16 x i8] c"\09addq\09$16, %rsp\00"}
!24 = metadata !{i64 122, [11 x i8] c"\09popq\09%rbp\00"}
!25 = metadata !{i64 123, [6 x i8] c"\09retq\00"}
