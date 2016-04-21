; ModuleID = 'test_1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [19 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x400638 = internal constant %0 <{ [19 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00%d\00" }>, align 64

define internal x86_64_sysvcc void @sub_400520(%struct.regs*) {
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
  store i64 10, i64* %RDI_val, !mcsema_real_eip !5
  store i64 20, i64* %RSI_val, !mcsema_real_eip !6
  %94 = load i64* %RBP_val, !mcsema_real_eip !7
  %95 = add i64 %94, -4, !mcsema_real_eip !7
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !7
  %97 = bitcast i64* %96 to i32*
  store i32 0, i32* %97, !mcsema_real_eip !7
  %98 = load i64* %RSP_val, !mcsema_real_eip !8
  %99 = add i64 %98, -8
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !8
  store i64 -4981261766360305936, i64* %100, !mcsema_real_eip !8
  store i64 %99, i64* %RSP_val, !mcsema_real_eip !8
  %101 = load i64* %RAX_val, !mcsema_real_eip !8
  store i64 %101, i64* %RAX, !mcsema_real_eip !8
  %102 = load i64* %RBX_val, !mcsema_real_eip !8
  store i64 %102, i64* %RBX, !mcsema_real_eip !8
  %103 = load i64* %RCX_val, !mcsema_real_eip !8
  store i64 %103, i64* %RCX, !mcsema_real_eip !8
  %104 = load i64* %RDX_val, !mcsema_real_eip !8
  store i64 %104, i64* %RDX, !mcsema_real_eip !8
  %105 = load i64* %RSI_val, !mcsema_real_eip !8
  store i64 %105, i64* %RSI, !mcsema_real_eip !8
  %106 = load i64* %RDI_val, !mcsema_real_eip !8
  store i64 %106, i64* %RDI, !mcsema_real_eip !8
  %107 = load i64* %RSP_val, !mcsema_real_eip !8
  store i64 %107, i64* %RSP, !mcsema_real_eip !8
  %108 = load i64* %RBP_val, !mcsema_real_eip !8
  store i64 %108, i64* %RBP, !mcsema_real_eip !8
  %109 = load i64* %R8_val, !mcsema_real_eip !8
  store i64 %109, i64* %R8, !mcsema_real_eip !8
  %110 = load i64* %R9_val, !mcsema_real_eip !8
  store i64 %110, i64* %R9, !mcsema_real_eip !8
  %111 = load i64* %R10_val, !mcsema_real_eip !8
  store i64 %111, i64* %R10, !mcsema_real_eip !8
  %112 = load i64* %R11_val, !mcsema_real_eip !8
  store i64 %112, i64* %R11, !mcsema_real_eip !8
  %113 = load i64* %R12_val, !mcsema_real_eip !8
  store i64 %113, i64* %R12, !mcsema_real_eip !8
  %114 = load i64* %R13_val, !mcsema_real_eip !8
  store i64 %114, i64* %R13, !mcsema_real_eip !8
  %115 = load i64* %R14_val, !mcsema_real_eip !8
  store i64 %115, i64* %R14, !mcsema_real_eip !8
  %116 = load i64* %R15_val, !mcsema_real_eip !8
  store i64 %116, i64* %R15, !mcsema_real_eip !8
  %117 = load i64* %RIP_val, !mcsema_real_eip !8
  store i64 %117, i64* %RIP, !mcsema_real_eip !8
  %118 = load i1* %CF_val, !mcsema_real_eip !8
  store i1 %118, i1* %CF, align 1, !mcsema_real_eip !8
  %119 = load i1* %PF_val, !mcsema_real_eip !8
  store i1 %119, i1* %PF, align 1, !mcsema_real_eip !8
  %120 = load i1* %AF_val, !mcsema_real_eip !8
  store i1 %120, i1* %AF, align 1, !mcsema_real_eip !8
  %121 = load i1* %ZF_val, !mcsema_real_eip !8
  store i1 %121, i1* %ZF, align 1, !mcsema_real_eip !8
  %122 = load i1* %SF_val, !mcsema_real_eip !8
  store i1 %122, i1* %SF, align 1, !mcsema_real_eip !8
  %123 = load i1* %OF_val, !mcsema_real_eip !8
  store i1 %123, i1* %OF, align 1, !mcsema_real_eip !8
  %124 = load i1* %DF_val, !mcsema_real_eip !8
  store i1 %124, i1* %DF, align 1, !mcsema_real_eip !8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !8
  %125 = load i1* %FPU_B_val, !mcsema_real_eip !8
  store i1 %125, i1* %FPU_B, align 1, !mcsema_real_eip !8
  %126 = load i1* %FPU_C3_val, !mcsema_real_eip !8
  store i1 %126, i1* %FPU_C3, align 1, !mcsema_real_eip !8
  %127 = load i3* %FPU_TOP_val, !mcsema_real_eip !8
  store i3 %127, i3* %FPU_TOP, align 1, !mcsema_real_eip !8
  %128 = load i1* %FPU_C2_val, !mcsema_real_eip !8
  store i1 %128, i1* %FPU_C2, align 1, !mcsema_real_eip !8
  %129 = load i1* %FPU_C1_val, !mcsema_real_eip !8
  store i1 %129, i1* %FPU_C1, align 1, !mcsema_real_eip !8
  %130 = load i1* %FPU_C0_val, !mcsema_real_eip !8
  store i1 %130, i1* %FPU_C0, align 1, !mcsema_real_eip !8
  %131 = load i1* %FPU_ES_val, !mcsema_real_eip !8
  store i1 %131, i1* %FPU_ES, align 1, !mcsema_real_eip !8
  %132 = load i1* %FPU_SF_val, !mcsema_real_eip !8
  store i1 %132, i1* %FPU_SF, align 1, !mcsema_real_eip !8
  %133 = load i1* %FPU_PE_val, !mcsema_real_eip !8
  store i1 %133, i1* %FPU_PE, align 1, !mcsema_real_eip !8
  %134 = load i1* %FPU_UE_val, !mcsema_real_eip !8
  store i1 %134, i1* %FPU_UE, align 1, !mcsema_real_eip !8
  %135 = load i1* %FPU_OE_val, !mcsema_real_eip !8
  store i1 %135, i1* %FPU_OE, align 1, !mcsema_real_eip !8
  %136 = load i1* %FPU_ZE_val, !mcsema_real_eip !8
  store i1 %136, i1* %FPU_ZE, align 1, !mcsema_real_eip !8
  %137 = load i1* %FPU_DE_val, !mcsema_real_eip !8
  store i1 %137, i1* %FPU_DE, align 1, !mcsema_real_eip !8
  %138 = load i1* %FPU_IE_val, !mcsema_real_eip !8
  store i1 %138, i1* %FPU_IE, align 1, !mcsema_real_eip !8
  %139 = load i1* %FPU_X_val, !mcsema_real_eip !8
  store i1 %139, i1* %FPU_X, align 1, !mcsema_real_eip !8
  %140 = load i2* %FPU_RC_val, !mcsema_real_eip !8
  store i2 %140, i2* %FPU_RC, align 1, !mcsema_real_eip !8
  %141 = load i2* %FPU_PC_val, !mcsema_real_eip !8
  store i2 %141, i2* %FPU_PC, align 1, !mcsema_real_eip !8
  %142 = load i1* %FPU_PM_val, !mcsema_real_eip !8
  store i1 %142, i1* %FPU_PM, align 1, !mcsema_real_eip !8
  %143 = load i1* %FPU_UM_val, !mcsema_real_eip !8
  store i1 %143, i1* %FPU_UM, align 1, !mcsema_real_eip !8
  %144 = load i1* %FPU_OM_val, !mcsema_real_eip !8
  store i1 %144, i1* %FPU_OM, align 1, !mcsema_real_eip !8
  %145 = load i1* %FPU_ZM_val, !mcsema_real_eip !8
  store i1 %145, i1* %FPU_ZM, align 1, !mcsema_real_eip !8
  %146 = load i1* %FPU_DM_val, !mcsema_real_eip !8
  store i1 %146, i1* %FPU_DM, align 1, !mcsema_real_eip !8
  %147 = load i1* %FPU_IM_val, !mcsema_real_eip !8
  store i1 %147, i1* %FPU_IM, align 1, !mcsema_real_eip !8
  %148 = load i64* %53, align 4
  store i64 %148, i64* %52, align 4
  %149 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !8
  store i16 %149, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !8
  %150 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !8
  store i64 %150, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !8
  %151 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !8
  store i16 %151, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !8
  %152 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !8
  store i64 %152, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !8
  %153 = load i128* %XMM0_val, !mcsema_real_eip !8
  store i128 %153, i128* %XMM0, align 1, !mcsema_real_eip !8
  %154 = load i128* %XMM1_val, !mcsema_real_eip !8
  store i128 %154, i128* %XMM1, align 1, !mcsema_real_eip !8
  %155 = load i128* %XMM2_val, !mcsema_real_eip !8
  store i128 %155, i128* %XMM2, align 1, !mcsema_real_eip !8
  %156 = load i128* %XMM3_val, !mcsema_real_eip !8
  store i128 %156, i128* %XMM3, align 1, !mcsema_real_eip !8
  %157 = load i128* %XMM4_val, !mcsema_real_eip !8
  store i128 %157, i128* %XMM4, align 1, !mcsema_real_eip !8
  %158 = load i128* %XMM5_val, !mcsema_real_eip !8
  store i128 %158, i128* %XMM5, align 1, !mcsema_real_eip !8
  %159 = load i128* %XMM6_val, !mcsema_real_eip !8
  store i128 %159, i128* %XMM6, align 1, !mcsema_real_eip !8
  %160 = load i128* %XMM7_val, !mcsema_real_eip !8
  store i128 %160, i128* %XMM7, align 1, !mcsema_real_eip !8
  %161 = load i128* %XMM8_val, !mcsema_real_eip !8
  store i128 %161, i128* %XMM8, align 1, !mcsema_real_eip !8
  %162 = load i128* %XMM9_val, !mcsema_real_eip !8
  store i128 %162, i128* %XMM9, align 1, !mcsema_real_eip !8
  %163 = load i128* %XMM10_val, !mcsema_real_eip !8
  store i128 %163, i128* %XMM10, align 1, !mcsema_real_eip !8
  %164 = load i128* %XMM11_val, !mcsema_real_eip !8
  store i128 %164, i128* %XMM11, align 1, !mcsema_real_eip !8
  %165 = load i128* %XMM12_val, !mcsema_real_eip !8
  store i128 %165, i128* %XMM12, align 1, !mcsema_real_eip !8
  %166 = load i128* %XMM13_val, !mcsema_real_eip !8
  store i128 %166, i128* %XMM13, align 1, !mcsema_real_eip !8
  %167 = load i128* %XMM14_val, !mcsema_real_eip !8
  store i128 %167, i128* %XMM14, align 1, !mcsema_real_eip !8
  %168 = load i128* %XMM15_val, !mcsema_real_eip !8
  store i128 %168, i128* %XMM15, align 1, !mcsema_real_eip !8
  %169 = load i64* %STACK_BASE_val, !mcsema_real_eip !8
  store i64 %169, i64* %STACK_BASE, align 1, !mcsema_real_eip !8
  %170 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !8
  store i64 %170, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !8
  tail call x86_64_sysvcc void @sub_4004b0(%struct.regs* %0), !mcsema_real_eip !8
  %171 = load i64* %RAX, !mcsema_real_eip !8
  store i64 %171, i64* %RAX_val, !mcsema_real_eip !8
  %172 = load i64* %RBX, !mcsema_real_eip !8
  store i64 %172, i64* %RBX_val, !mcsema_real_eip !8
  %173 = load i64* %RCX, !mcsema_real_eip !8
  store i64 %173, i64* %RCX_val, !mcsema_real_eip !8
  %174 = load i64* %RDX, !mcsema_real_eip !8
  store i64 %174, i64* %RDX_val, !mcsema_real_eip !8
  %175 = load i64* %RSI, !mcsema_real_eip !8
  store i64 %175, i64* %RSI_val, !mcsema_real_eip !8
  %176 = load i64* %RDI, !mcsema_real_eip !8
  store i64 %176, i64* %RDI_val, !mcsema_real_eip !8
  %177 = load i64* %RSP, !mcsema_real_eip !8
  store i64 %177, i64* %RSP_val, !mcsema_real_eip !8
  %178 = load i64* %RBP, !mcsema_real_eip !8
  store i64 %178, i64* %RBP_val, !mcsema_real_eip !8
  %179 = load i64* %R8, !mcsema_real_eip !8
  store i64 %179, i64* %R8_val, !mcsema_real_eip !8
  %180 = load i64* %R9, !mcsema_real_eip !8
  store i64 %180, i64* %R9_val, !mcsema_real_eip !8
  %181 = load i64* %R10, !mcsema_real_eip !8
  store i64 %181, i64* %R10_val, !mcsema_real_eip !8
  %182 = load i64* %R11, !mcsema_real_eip !8
  store i64 %182, i64* %R11_val, !mcsema_real_eip !8
  %183 = load i64* %R12, !mcsema_real_eip !8
  store i64 %183, i64* %R12_val, !mcsema_real_eip !8
  %184 = load i64* %R13, !mcsema_real_eip !8
  store i64 %184, i64* %R13_val, !mcsema_real_eip !8
  %185 = load i64* %R14, !mcsema_real_eip !8
  store i64 %185, i64* %R14_val, !mcsema_real_eip !8
  %186 = load i64* %R15, !mcsema_real_eip !8
  store i64 %186, i64* %R15_val, !mcsema_real_eip !8
  %187 = load i64* %RIP, !mcsema_real_eip !8
  store i64 %187, i64* %RIP_val, !mcsema_real_eip !8
  %188 = load i1* %CF, align 1, !mcsema_real_eip !8
  store i1 %188, i1* %CF_val, !mcsema_real_eip !8
  %189 = load i1* %PF, align 1, !mcsema_real_eip !8
  store i1 %189, i1* %PF_val, !mcsema_real_eip !8
  %190 = load i1* %AF, align 1, !mcsema_real_eip !8
  store i1 %190, i1* %AF_val, !mcsema_real_eip !8
  %191 = load i1* %ZF, align 1, !mcsema_real_eip !8
  store i1 %191, i1* %ZF_val, !mcsema_real_eip !8
  %192 = load i1* %SF, align 1, !mcsema_real_eip !8
  store i1 %192, i1* %SF_val, !mcsema_real_eip !8
  %193 = load i1* %OF, align 1, !mcsema_real_eip !8
  store i1 %193, i1* %OF_val, !mcsema_real_eip !8
  %194 = load i1* %DF, align 1, !mcsema_real_eip !8
  store i1 %194, i1* %DF_val, !mcsema_real_eip !8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !8
  %195 = load i1* %FPU_B, align 1, !mcsema_real_eip !8
  store i1 %195, i1* %FPU_B_val, !mcsema_real_eip !8
  %196 = load i1* %FPU_C3, align 1, !mcsema_real_eip !8
  store i1 %196, i1* %FPU_C3_val, !mcsema_real_eip !8
  %197 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !8
  store i3 %197, i3* %FPU_TOP_val, !mcsema_real_eip !8
  %198 = load i1* %FPU_C2, align 1, !mcsema_real_eip !8
  store i1 %198, i1* %FPU_C2_val, !mcsema_real_eip !8
  %199 = load i1* %FPU_C1, align 1, !mcsema_real_eip !8
  store i1 %199, i1* %FPU_C1_val, !mcsema_real_eip !8
  %200 = load i1* %FPU_C0, align 1, !mcsema_real_eip !8
  store i1 %200, i1* %FPU_C0_val, !mcsema_real_eip !8
  %201 = load i1* %FPU_ES, align 1, !mcsema_real_eip !8
  store i1 %201, i1* %FPU_ES_val, !mcsema_real_eip !8
  %202 = load i1* %FPU_SF, align 1, !mcsema_real_eip !8
  store i1 %202, i1* %FPU_SF_val, !mcsema_real_eip !8
  %203 = load i1* %FPU_PE, align 1, !mcsema_real_eip !8
  store i1 %203, i1* %FPU_PE_val, !mcsema_real_eip !8
  %204 = load i1* %FPU_UE, align 1, !mcsema_real_eip !8
  store i1 %204, i1* %FPU_UE_val, !mcsema_real_eip !8
  %205 = load i1* %FPU_OE, align 1, !mcsema_real_eip !8
  store i1 %205, i1* %FPU_OE_val, !mcsema_real_eip !8
  %206 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !8
  store i1 %206, i1* %FPU_ZE_val, !mcsema_real_eip !8
  %207 = load i1* %FPU_DE, align 1, !mcsema_real_eip !8
  store i1 %207, i1* %FPU_DE_val, !mcsema_real_eip !8
  %208 = load i1* %FPU_IE, align 1, !mcsema_real_eip !8
  store i1 %208, i1* %FPU_IE_val, !mcsema_real_eip !8
  %209 = load i1* %FPU_X, align 1, !mcsema_real_eip !8
  store i1 %209, i1* %FPU_X_val, !mcsema_real_eip !8
  %210 = load i2* %FPU_RC, align 1, !mcsema_real_eip !8
  store i2 %210, i2* %FPU_RC_val, !mcsema_real_eip !8
  %211 = load i2* %FPU_PC, align 1, !mcsema_real_eip !8
  store i2 %211, i2* %FPU_PC_val, !mcsema_real_eip !8
  %212 = load i1* %FPU_PM, align 1, !mcsema_real_eip !8
  store i1 %212, i1* %FPU_PM_val, !mcsema_real_eip !8
  %213 = load i1* %FPU_UM, align 1, !mcsema_real_eip !8
  store i1 %213, i1* %FPU_UM_val, !mcsema_real_eip !8
  %214 = load i1* %FPU_OM, align 1, !mcsema_real_eip !8
  store i1 %214, i1* %FPU_OM_val, !mcsema_real_eip !8
  %215 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !8
  store i1 %215, i1* %FPU_ZM_val, !mcsema_real_eip !8
  %216 = load i1* %FPU_DM, align 1, !mcsema_real_eip !8
  store i1 %216, i1* %FPU_DM_val, !mcsema_real_eip !8
  %217 = load i1* %FPU_IM, align 1, !mcsema_real_eip !8
  store i1 %217, i1* %FPU_IM_val, !mcsema_real_eip !8
  %218 = load i64* %52, align 4
  store i64 %218, i64* %53, align 4
  %219 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !8
  store i16 %219, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !8
  %220 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !8
  store i64 %220, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !8
  %221 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !8
  store i16 %221, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !8
  %222 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !8
  store i64 %222, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !8
  %223 = load i128* %XMM0, align 1, !mcsema_real_eip !8
  store i128 %223, i128* %XMM0_val, !mcsema_real_eip !8
  %224 = load i128* %XMM1, align 1, !mcsema_real_eip !8
  store i128 %224, i128* %XMM1_val, !mcsema_real_eip !8
  %225 = load i128* %XMM2, align 1, !mcsema_real_eip !8
  store i128 %225, i128* %XMM2_val, !mcsema_real_eip !8
  %226 = load i128* %XMM3, align 1, !mcsema_real_eip !8
  store i128 %226, i128* %XMM3_val, !mcsema_real_eip !8
  %227 = load i128* %XMM4, align 1, !mcsema_real_eip !8
  store i128 %227, i128* %XMM4_val, !mcsema_real_eip !8
  %228 = load i128* %XMM5, align 1, !mcsema_real_eip !8
  store i128 %228, i128* %XMM5_val, !mcsema_real_eip !8
  %229 = load i128* %XMM6, align 1, !mcsema_real_eip !8
  store i128 %229, i128* %XMM6_val, !mcsema_real_eip !8
  %230 = load i128* %XMM7, align 1, !mcsema_real_eip !8
  store i128 %230, i128* %XMM7_val, !mcsema_real_eip !8
  %231 = load i128* %XMM8, align 1, !mcsema_real_eip !8
  store i128 %231, i128* %XMM8_val, !mcsema_real_eip !8
  %232 = load i128* %XMM9, align 1, !mcsema_real_eip !8
  store i128 %232, i128* %XMM9_val, !mcsema_real_eip !8
  %233 = load i128* %XMM10, align 1, !mcsema_real_eip !8
  store i128 %233, i128* %XMM10_val, !mcsema_real_eip !8
  %234 = load i128* %XMM11, align 1, !mcsema_real_eip !8
  store i128 %234, i128* %XMM11_val, !mcsema_real_eip !8
  %235 = load i128* %XMM12, align 1, !mcsema_real_eip !8
  store i128 %235, i128* %XMM12_val, !mcsema_real_eip !8
  %236 = load i128* %XMM13, align 1, !mcsema_real_eip !8
  store i128 %236, i128* %XMM13_val, !mcsema_real_eip !8
  %237 = load i128* %XMM14, align 1, !mcsema_real_eip !8
  store i128 %237, i128* %XMM14_val, !mcsema_real_eip !8
  %238 = load i128* %XMM15, align 1, !mcsema_real_eip !8
  store i128 %238, i128* %XMM15_val, !mcsema_real_eip !8
  %239 = load i64* %STACK_BASE, !mcsema_real_eip !8
  store i64 %239, i64* %STACK_BASE_val, !mcsema_real_eip !8
  %240 = load i64* %STACK_LIMIT, !mcsema_real_eip !8
  store i64 %240, i64* %STACK_LIMIT_val, !mcsema_real_eip !8
  %241 = load i64* %RBP_val, !mcsema_real_eip !9
  %242 = add i64 %241, -8, !mcsema_real_eip !9
  %243 = inttoptr i64 %242 to i64*, !mcsema_real_eip !9
  %244 = load i64* %RAX_val, !mcsema_real_eip !9
  %245 = trunc i64 %244 to i32, !mcsema_real_eip !9
  %246 = bitcast i64* %243 to i32*
  store i32 %245, i32* %246, !mcsema_real_eip !9
  %247 = load i64* %RBP_val, !mcsema_real_eip !10
  %248 = add i64 %247, -8, !mcsema_real_eip !10
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !10
  %250 = bitcast i64* %249 to i32*
  %251 = load i32* %250, !mcsema_real_eip !10
  %252 = zext i32 %251 to i64, !mcsema_real_eip !10
  store i64 %252, i64* %RAX_val, !mcsema_real_eip !10
  %253 = load i64* %RSP_val, !mcsema_real_eip !11
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %253, i64 16)
  %254 = extractvalue { i64, i1 } %uadd, 0
  %255 = xor i64 %254, %253, !mcsema_real_eip !11
  %256 = and i64 %255, 16
  %257 = icmp eq i64 %256, 0
  store i1 %257, i1* %AF_val, !mcsema_real_eip !11
  %258 = icmp slt i64 %254, 0
  store i1 %258, i1* %SF_val, !mcsema_real_eip !11
  %259 = icmp eq i64 %254, 0, !mcsema_real_eip !11
  store i1 %259, i1* %ZF_val, !mcsema_real_eip !11
  %260 = xor i64 %253, -9223372036854775808, !mcsema_real_eip !11
  %261 = and i64 %255, %260, !mcsema_real_eip !11
  %262 = icmp slt i64 %261, 0
  store i1 %262, i1* %OF_val, !mcsema_real_eip !11
  %263 = trunc i64 %254 to i8, !mcsema_real_eip !11
  %264 = tail call i8 @llvm.ctpop.i8(i8 %263), !mcsema_real_eip !11
  %265 = and i8 %264, 1
  %266 = icmp eq i8 %265, 0
  store i1 %266, i1* %PF_val, !mcsema_real_eip !11
  %267 = extractvalue { i64, i1 } %uadd, 1
  store i1 %267, i1* %CF_val, !mcsema_real_eip !11
  store i64 %254, i64* %RSP_val, !mcsema_real_eip !11
  %268 = inttoptr i64 %254 to i64*, !mcsema_real_eip !12
  %269 = load i64* %268, !mcsema_real_eip !12
  store i64 %269, i64* %RBP_val, !mcsema_real_eip !12
  %270 = add i64 %254, 16, !mcsema_real_eip !13
  store i64 %270, i64* %RSP_val, !mcsema_real_eip !13
  %271 = load i64* %RAX_val, !mcsema_real_eip !13
  store i64 %271, i64* %RAX, !mcsema_real_eip !13
  %272 = load i64* %RBX_val, !mcsema_real_eip !13
  store i64 %272, i64* %RBX, !mcsema_real_eip !13
  %273 = load i64* %RCX_val, !mcsema_real_eip !13
  store i64 %273, i64* %RCX, !mcsema_real_eip !13
  %274 = load i64* %RDX_val, !mcsema_real_eip !13
  store i64 %274, i64* %RDX, !mcsema_real_eip !13
  %275 = load i64* %RSI_val, !mcsema_real_eip !13
  store i64 %275, i64* %RSI, !mcsema_real_eip !13
  %276 = load i64* %RDI_val, !mcsema_real_eip !13
  store i64 %276, i64* %RDI, !mcsema_real_eip !13
  %277 = load i64* %RSP_val, !mcsema_real_eip !13
  store i64 %277, i64* %RSP, !mcsema_real_eip !13
  %278 = load i64* %RBP_val, !mcsema_real_eip !13
  store i64 %278, i64* %RBP, !mcsema_real_eip !13
  %279 = load i64* %R8_val, !mcsema_real_eip !13
  store i64 %279, i64* %R8, !mcsema_real_eip !13
  %280 = load i64* %R9_val, !mcsema_real_eip !13
  store i64 %280, i64* %R9, !mcsema_real_eip !13
  %281 = load i64* %R10_val, !mcsema_real_eip !13
  store i64 %281, i64* %R10, !mcsema_real_eip !13
  %282 = load i64* %R11_val, !mcsema_real_eip !13
  store i64 %282, i64* %R11, !mcsema_real_eip !13
  %283 = load i64* %R12_val, !mcsema_real_eip !13
  store i64 %283, i64* %R12, !mcsema_real_eip !13
  %284 = load i64* %R13_val, !mcsema_real_eip !13
  store i64 %284, i64* %R13, !mcsema_real_eip !13
  %285 = load i64* %R14_val, !mcsema_real_eip !13
  store i64 %285, i64* %R14, !mcsema_real_eip !13
  %286 = load i64* %R15_val, !mcsema_real_eip !13
  store i64 %286, i64* %R15, !mcsema_real_eip !13
  %287 = load i64* %RIP_val, !mcsema_real_eip !13
  store i64 %287, i64* %RIP, !mcsema_real_eip !13
  %288 = load i1* %CF_val, !mcsema_real_eip !13
  store i1 %288, i1* %CF, align 1, !mcsema_real_eip !13
  %289 = load i1* %PF_val, !mcsema_real_eip !13
  store i1 %289, i1* %PF, align 1, !mcsema_real_eip !13
  %290 = load i1* %AF_val, !mcsema_real_eip !13
  store i1 %290, i1* %AF, align 1, !mcsema_real_eip !13
  %291 = load i1* %ZF_val, !mcsema_real_eip !13
  store i1 %291, i1* %ZF, align 1, !mcsema_real_eip !13
  %292 = load i1* %SF_val, !mcsema_real_eip !13
  store i1 %292, i1* %SF, align 1, !mcsema_real_eip !13
  %293 = load i1* %OF_val, !mcsema_real_eip !13
  store i1 %293, i1* %OF, align 1, !mcsema_real_eip !13
  %294 = load i1* %DF_val, !mcsema_real_eip !13
  store i1 %294, i1* %DF, align 1, !mcsema_real_eip !13
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !13
  %295 = load i1* %FPU_B_val, !mcsema_real_eip !13
  store i1 %295, i1* %FPU_B, align 1, !mcsema_real_eip !13
  %296 = load i1* %FPU_C3_val, !mcsema_real_eip !13
  store i1 %296, i1* %FPU_C3, align 1, !mcsema_real_eip !13
  %297 = load i3* %FPU_TOP_val, !mcsema_real_eip !13
  store i3 %297, i3* %FPU_TOP, align 1, !mcsema_real_eip !13
  %298 = load i1* %FPU_C2_val, !mcsema_real_eip !13
  store i1 %298, i1* %FPU_C2, align 1, !mcsema_real_eip !13
  %299 = load i1* %FPU_C1_val, !mcsema_real_eip !13
  store i1 %299, i1* %FPU_C1, align 1, !mcsema_real_eip !13
  %300 = load i1* %FPU_C0_val, !mcsema_real_eip !13
  store i1 %300, i1* %FPU_C0, align 1, !mcsema_real_eip !13
  %301 = load i1* %FPU_ES_val, !mcsema_real_eip !13
  store i1 %301, i1* %FPU_ES, align 1, !mcsema_real_eip !13
  %302 = load i1* %FPU_SF_val, !mcsema_real_eip !13
  store i1 %302, i1* %FPU_SF, align 1, !mcsema_real_eip !13
  %303 = load i1* %FPU_PE_val, !mcsema_real_eip !13
  store i1 %303, i1* %FPU_PE, align 1, !mcsema_real_eip !13
  %304 = load i1* %FPU_UE_val, !mcsema_real_eip !13
  store i1 %304, i1* %FPU_UE, align 1, !mcsema_real_eip !13
  %305 = load i1* %FPU_OE_val, !mcsema_real_eip !13
  store i1 %305, i1* %FPU_OE, align 1, !mcsema_real_eip !13
  %306 = load i1* %FPU_ZE_val, !mcsema_real_eip !13
  store i1 %306, i1* %FPU_ZE, align 1, !mcsema_real_eip !13
  %307 = load i1* %FPU_DE_val, !mcsema_real_eip !13
  store i1 %307, i1* %FPU_DE, align 1, !mcsema_real_eip !13
  %308 = load i1* %FPU_IE_val, !mcsema_real_eip !13
  store i1 %308, i1* %FPU_IE, align 1, !mcsema_real_eip !13
  %309 = load i1* %FPU_X_val, !mcsema_real_eip !13
  store i1 %309, i1* %FPU_X, align 1, !mcsema_real_eip !13
  %310 = load i2* %FPU_RC_val, !mcsema_real_eip !13
  store i2 %310, i2* %FPU_RC, align 1, !mcsema_real_eip !13
  %311 = load i2* %FPU_PC_val, !mcsema_real_eip !13
  store i2 %311, i2* %FPU_PC, align 1, !mcsema_real_eip !13
  %312 = load i1* %FPU_PM_val, !mcsema_real_eip !13
  store i1 %312, i1* %FPU_PM, align 1, !mcsema_real_eip !13
  %313 = load i1* %FPU_UM_val, !mcsema_real_eip !13
  store i1 %313, i1* %FPU_UM, align 1, !mcsema_real_eip !13
  %314 = load i1* %FPU_OM_val, !mcsema_real_eip !13
  store i1 %314, i1* %FPU_OM, align 1, !mcsema_real_eip !13
  %315 = load i1* %FPU_ZM_val, !mcsema_real_eip !13
  store i1 %315, i1* %FPU_ZM, align 1, !mcsema_real_eip !13
  %316 = load i1* %FPU_DM_val, !mcsema_real_eip !13
  store i1 %316, i1* %FPU_DM, align 1, !mcsema_real_eip !13
  %317 = load i1* %FPU_IM_val, !mcsema_real_eip !13
  store i1 %317, i1* %FPU_IM, align 1, !mcsema_real_eip !13
  %318 = load i64* %53, align 4
  store i64 %318, i64* %52, align 4
  %319 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !13
  store i16 %319, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !13
  %320 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !13
  store i64 %320, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !13
  %321 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !13
  store i16 %321, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !13
  %322 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !13
  store i64 %322, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !13
  %323 = load i128* %XMM0_val, !mcsema_real_eip !13
  store i128 %323, i128* %XMM0, align 1, !mcsema_real_eip !13
  %324 = load i128* %XMM1_val, !mcsema_real_eip !13
  store i128 %324, i128* %XMM1, align 1, !mcsema_real_eip !13
  %325 = load i128* %XMM2_val, !mcsema_real_eip !13
  store i128 %325, i128* %XMM2, align 1, !mcsema_real_eip !13
  %326 = load i128* %XMM3_val, !mcsema_real_eip !13
  store i128 %326, i128* %XMM3, align 1, !mcsema_real_eip !13
  %327 = load i128* %XMM4_val, !mcsema_real_eip !13
  store i128 %327, i128* %XMM4, align 1, !mcsema_real_eip !13
  %328 = load i128* %XMM5_val, !mcsema_real_eip !13
  store i128 %328, i128* %XMM5, align 1, !mcsema_real_eip !13
  %329 = load i128* %XMM6_val, !mcsema_real_eip !13
  store i128 %329, i128* %XMM6, align 1, !mcsema_real_eip !13
  %330 = load i128* %XMM7_val, !mcsema_real_eip !13
  store i128 %330, i128* %XMM7, align 1, !mcsema_real_eip !13
  %331 = load i128* %XMM8_val, !mcsema_real_eip !13
  store i128 %331, i128* %XMM8, align 1, !mcsema_real_eip !13
  %332 = load i128* %XMM9_val, !mcsema_real_eip !13
  store i128 %332, i128* %XMM9, align 1, !mcsema_real_eip !13
  %333 = load i128* %XMM10_val, !mcsema_real_eip !13
  store i128 %333, i128* %XMM10, align 1, !mcsema_real_eip !13
  %334 = load i128* %XMM11_val, !mcsema_real_eip !13
  store i128 %334, i128* %XMM11, align 1, !mcsema_real_eip !13
  %335 = load i128* %XMM12_val, !mcsema_real_eip !13
  store i128 %335, i128* %XMM12, align 1, !mcsema_real_eip !13
  %336 = load i128* %XMM13_val, !mcsema_real_eip !13
  store i128 %336, i128* %XMM13, align 1, !mcsema_real_eip !13
  %337 = load i128* %XMM14_val, !mcsema_real_eip !13
  store i128 %337, i128* %XMM14, align 1, !mcsema_real_eip !13
  %338 = load i128* %XMM15_val, !mcsema_real_eip !13
  store i128 %338, i128* %XMM15, align 1, !mcsema_real_eip !13
  %339 = load i64* %STACK_BASE_val, !mcsema_real_eip !13
  store i64 %339, i64* %STACK_BASE, align 1, !mcsema_real_eip !13
  %340 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !13
  store i64 %340, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !13
  ret void, !mcsema_real_eip !13
}

define internal x86_64_sysvcc void @sub_4004b0(%struct.regs*) {
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
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !14
  %1 = load i64* %RAX, !mcsema_real_eip !14
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !14
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !14
  %2 = load i64* %RBX, !mcsema_real_eip !14
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !14
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !14
  %3 = load i64* %RCX, !mcsema_real_eip !14
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !14
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !14
  %4 = load i64* %RDX, !mcsema_real_eip !14
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !14
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !14
  %5 = load i64* %RSI, !mcsema_real_eip !14
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !14
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !14
  %6 = load i64* %RDI, !mcsema_real_eip !14
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !14
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !14
  %7 = load i64* %RSP, !mcsema_real_eip !14
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !14
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !14
  %8 = load i64* %RBP, !mcsema_real_eip !14
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !14
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !14
  %9 = load i64* %R8, !mcsema_real_eip !14
  store i64 %9, i64* %R8_val, !mcsema_real_eip !14
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !14
  %10 = load i64* %R9, !mcsema_real_eip !14
  store i64 %10, i64* %R9_val, !mcsema_real_eip !14
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !14
  %11 = load i64* %R10, !mcsema_real_eip !14
  store i64 %11, i64* %R10_val, !mcsema_real_eip !14
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !14
  %12 = load i64* %R11, !mcsema_real_eip !14
  store i64 %12, i64* %R11_val, !mcsema_real_eip !14
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !14
  %13 = load i64* %R12, !mcsema_real_eip !14
  store i64 %13, i64* %R12_val, !mcsema_real_eip !14
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !14
  %14 = load i64* %R13, !mcsema_real_eip !14
  store i64 %14, i64* %R13_val, !mcsema_real_eip !14
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !14
  %15 = load i64* %R14, !mcsema_real_eip !14
  store i64 %15, i64* %R14_val, !mcsema_real_eip !14
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !14
  %16 = load i64* %R15, !mcsema_real_eip !14
  store i64 %16, i64* %R15_val, !mcsema_real_eip !14
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !14
  %17 = load i64* %RIP, !mcsema_real_eip !14
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !14
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !14
  %18 = load i1* %CF, align 1, !mcsema_real_eip !14
  store i1 %18, i1* %CF_val, !mcsema_real_eip !14
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !14
  %19 = load i1* %PF, align 1, !mcsema_real_eip !14
  store i1 %19, i1* %PF_val, !mcsema_real_eip !14
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !14
  %20 = load i1* %AF, align 1, !mcsema_real_eip !14
  store i1 %20, i1* %AF_val, !mcsema_real_eip !14
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !14
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !14
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !14
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !14
  %22 = load i1* %SF, align 1, !mcsema_real_eip !14
  store i1 %22, i1* %SF_val, !mcsema_real_eip !14
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !14
  %23 = load i1* %OF, align 1, !mcsema_real_eip !14
  store i1 %23, i1* %OF_val, !mcsema_real_eip !14
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !14
  %24 = load i1* %DF, align 1, !mcsema_real_eip !14
  store i1 %24, i1* %DF_val, !mcsema_real_eip !14
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !14
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !14
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !14
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !14
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !14
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !14
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !14
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !14
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !14
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !14
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !14
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !14
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !14
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !14
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !14
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !14
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !14
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !14
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !14
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !14
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !14
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !14
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !14
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !14
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !14
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !14
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !14
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !14
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !14
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !14
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !14
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !14
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !14
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !14
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !14
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !14
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !14
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !14
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !14
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !14
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !14
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !14
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !14
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !14
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !14
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !14
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !14
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !14
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !14
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !14
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !14
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !14
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !14
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !14
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !14
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !14
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !14
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !14
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !14
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !14
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !14
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !14
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !14
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !14
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !14
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !14
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !14
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !14
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !14
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !14
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !14
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !14
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !14
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !14
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !14
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !14
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !14
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !14
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !14
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !14
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !14
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !14
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !14
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !14
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !14
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !14
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !14
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !14
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !14
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !14
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !14
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !14
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !14
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !14
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !14
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !14
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !14
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !14
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !14
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !14
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !14
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !14
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !14
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !14
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !14
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !14
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !14
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !14
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !14
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !14
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !14
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !14
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !14
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !14
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !14
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !14
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !14
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !14
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !14
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !14
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !14
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !14
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !14
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !14
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !14
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !14
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !14
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !14
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !14
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !14
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !14
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !14
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !14
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !14
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !14
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !14
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !14
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !14
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !14
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !14
  %77 = load i64* %RBP_val, !mcsema_real_eip !14
  %78 = load i64* %RSP_val, !mcsema_real_eip !14
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !14
  store i64 %77, i64* %80, !mcsema_real_eip !14
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !15
  %81 = add i64 %78, -40
  %82 = xor i64 %81, %79, !mcsema_real_eip !16
  %83 = and i64 %82, 16, !mcsema_real_eip !16
  %84 = icmp ne i64 %83, 0, !mcsema_real_eip !16
  store i1 %84, i1* %AF_val, !mcsema_real_eip !16
  %85 = trunc i64 %81 to i8, !mcsema_real_eip !16
  %86 = tail call i8 @llvm.ctpop.i8(i8 %85), !mcsema_real_eip !16
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  store i1 %88, i1* %PF_val, !mcsema_real_eip !16
  %89 = icmp eq i64 %81, 0, !mcsema_real_eip !16
  store i1 %89, i1* %ZF_val, !mcsema_real_eip !16
  %90 = icmp slt i64 %81, 0
  store i1 %90, i1* %SF_val, !mcsema_real_eip !16
  %91 = icmp ult i64 %79, 32, !mcsema_real_eip !16
  store i1 %91, i1* %CF_val, !mcsema_real_eip !16
  %92 = and i64 %82, %79, !mcsema_real_eip !16
  %93 = icmp slt i64 %92, 0
  store i1 %93, i1* %OF_val, !mcsema_real_eip !16
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !16
  store i64 add (i64 ptrtoint (%0* @data_0x400638 to i64), i64 16), i64* %RAX_val, !mcsema_real_eip !17
  %94 = load i64* %RBP_val, !mcsema_real_eip !18
  %95 = add i64 %94, -4, !mcsema_real_eip !18
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !18
  %97 = load i64* %RDI_val, !mcsema_real_eip !18
  %98 = trunc i64 %97 to i32, !mcsema_real_eip !18
  %99 = bitcast i64* %96 to i32*
  store i32 %98, i32* %99, !mcsema_real_eip !18
  %100 = load i64* %RBP_val, !mcsema_real_eip !19
  %101 = add i64 %100, -8, !mcsema_real_eip !19
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !19
  %103 = load i64* %RSI_val, !mcsema_real_eip !19
  %104 = trunc i64 %103 to i32, !mcsema_real_eip !19
  %105 = bitcast i64* %102 to i32*
  store i32 %104, i32* %105, !mcsema_real_eip !19
  %106 = load i64* %RBP_val, !mcsema_real_eip !20
  %107 = add i64 %106, -4, !mcsema_real_eip !20
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !20
  %109 = bitcast i64* %108 to i32*
  %110 = load i32* %109, !mcsema_real_eip !20
  %111 = zext i32 %110 to i64, !mcsema_real_eip !20
  store i64 %111, i64* %RSI_val, !mcsema_real_eip !20
  %112 = load i64* %RBP_val, !mcsema_real_eip !21
  %113 = add i64 %112, -8, !mcsema_real_eip !21
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !21
  %115 = bitcast i64* %114 to i32*
  %116 = load i32* %115, !mcsema_real_eip !21
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %110, i32 %116)
  %117 = extractvalue { i32, i1 } %uadd, 0
  %118 = xor i32 %117, %116, !mcsema_real_eip !21
  %119 = xor i32 %118, %110, !mcsema_real_eip !21
  %120 = and i32 %119, 16, !mcsema_real_eip !21
  %121 = icmp ne i32 %120, 0, !mcsema_real_eip !21
  store i1 %121, i1* %AF_val, !mcsema_real_eip !21
  %122 = icmp slt i32 %117, 0
  store i1 %122, i1* %SF_val, !mcsema_real_eip !21
  %123 = icmp eq i32 %117, 0, !mcsema_real_eip !21
  store i1 %123, i1* %ZF_val, !mcsema_real_eip !21
  %124 = xor i32 %110, -2147483648, !mcsema_real_eip !21
  %125 = xor i32 %124, %116, !mcsema_real_eip !21
  %126 = and i32 %118, %125, !mcsema_real_eip !21
  %127 = icmp slt i32 %126, 0
  store i1 %127, i1* %OF_val, !mcsema_real_eip !21
  %128 = trunc i32 %117 to i8, !mcsema_real_eip !21
  %129 = tail call i8 @llvm.ctpop.i8(i8 %128), !mcsema_real_eip !21
  %130 = and i8 %129, 1
  %131 = icmp eq i8 %130, 0
  store i1 %131, i1* %PF_val, !mcsema_real_eip !21
  %132 = extractvalue { i32, i1 } %uadd, 1
  store i1 %132, i1* %CF_val, !mcsema_real_eip !21
  %133 = zext i32 %117 to i64, !mcsema_real_eip !21
  store i64 %133, i64* %RSI_val, !mcsema_real_eip !21
  %134 = load i64* %RBP_val, !mcsema_real_eip !22
  %135 = add i64 %134, -12, !mcsema_real_eip !22
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !22
  %137 = bitcast i64* %136 to i32*
  store i32 %117, i32* %137, !mcsema_real_eip !22
  %138 = load i64* %RBP_val, !mcsema_real_eip !23
  %139 = add i64 %138, -12, !mcsema_real_eip !23
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !23
  %141 = bitcast i64* %140 to i32*
  %142 = load i32* %141, !mcsema_real_eip !23
  %143 = zext i32 %142 to i64, !mcsema_real_eip !23
  store i64 %143, i64* %RSI_val, !mcsema_real_eip !23
  %144 = load i64* %RAX_val, !mcsema_real_eip !24
  store i64 %144, i64* %RDI_val, !mcsema_real_eip !24
  %145 = tail call x86_64_sysvcc i64 @printf(i64 %144), !mcsema_real_eip !25
  store i64 %145, i64* %RAX_val, !mcsema_real_eip !25
  %146 = load i64* %RBP_val, !mcsema_real_eip !26
  %147 = add i64 %146, -4, !mcsema_real_eip !26
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !26
  %149 = bitcast i64* %148 to i32*
  %150 = load i32* %149, !mcsema_real_eip !26
  %151 = add i32 %150, -40
  %152 = xor i32 %151, %150, !mcsema_real_eip !26
  %153 = and i32 %152, 16, !mcsema_real_eip !26
  %154 = icmp ne i32 %153, 0, !mcsema_real_eip !26
  store i1 %154, i1* %AF_val, !mcsema_real_eip !26
  %155 = trunc i32 %151 to i8, !mcsema_real_eip !26
  %156 = tail call i8 @llvm.ctpop.i8(i8 %155), !mcsema_real_eip !26
  %157 = and i8 %156, 1
  %158 = icmp eq i8 %157, 0
  store i1 %158, i1* %PF_val, !mcsema_real_eip !26
  %159 = icmp eq i32 %151, 0, !mcsema_real_eip !26
  store i1 %159, i1* %ZF_val, !mcsema_real_eip !26
  %160 = icmp slt i32 %151, 0
  store i1 %160, i1* %SF_val, !mcsema_real_eip !26
  %161 = icmp ult i32 %150, 40, !mcsema_real_eip !26
  store i1 %161, i1* %CF_val, !mcsema_real_eip !26
  %162 = and i32 %152, %150, !mcsema_real_eip !26
  %163 = icmp slt i32 %162, 0
  store i1 %163, i1* %OF_val, !mcsema_real_eip !26
  %164 = load i64* %RBP_val, !mcsema_real_eip !27
  %165 = add i64 %164, -20, !mcsema_real_eip !27
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !27
  %167 = load i64* %RAX_val, !mcsema_real_eip !27
  %168 = trunc i64 %167 to i32, !mcsema_real_eip !27
  %169 = bitcast i64* %166 to i32*
  store i32 %168, i32* %169, !mcsema_real_eip !27
  %170 = load i1* %OF_val, !mcsema_real_eip !28
  %171 = load i1* %SF_val, !mcsema_real_eip !28
  %172 = xor i1 %171, %170
  %173 = load i1* %ZF_val, !mcsema_real_eip !28
  %174 = or i1 %173, %172, !mcsema_real_eip !28
  %175 = load i64* %RBP_val, !mcsema_real_eip !29
  %176 = add i64 %175, -12, !mcsema_real_eip !29
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !29
  %178 = bitcast i64* %177 to i32*
  %179 = load i32* %178, !mcsema_real_eip !29
  %180 = zext i32 %179 to i64, !mcsema_real_eip !29
  store i64 %180, i64* %RAX_val, !mcsema_real_eip !29
  br i1 %174, label %block_0x4004fe, label %block_0x4004ee, !mcsema_real_eip !28

block_0x4004fe:                                   ; preds = %entry
  %181 = add i32 %179, -10
  %182 = xor i32 %181, %179, !mcsema_real_eip !30
  %183 = and i32 %182, 16, !mcsema_real_eip !30
  %184 = icmp ne i32 %183, 0, !mcsema_real_eip !30
  store i1 %184, i1* %AF_val, !mcsema_real_eip !30
  %185 = trunc i32 %181 to i8, !mcsema_real_eip !30
  %186 = tail call i8 @llvm.ctpop.i8(i8 %185), !mcsema_real_eip !30
  %187 = and i8 %186, 1
  %188 = icmp eq i8 %187, 0
  store i1 %188, i1* %PF_val, !mcsema_real_eip !30
  %189 = icmp eq i32 %181, 0, !mcsema_real_eip !30
  store i1 %189, i1* %ZF_val, !mcsema_real_eip !30
  %190 = icmp slt i32 %181, 0
  store i1 %190, i1* %SF_val, !mcsema_real_eip !30
  %191 = icmp ult i32 %179, 10, !mcsema_real_eip !30
  store i1 %191, i1* %CF_val, !mcsema_real_eip !30
  %192 = and i32 %182, %179, !mcsema_real_eip !30
  %193 = icmp slt i32 %192, 0
  store i1 %193, i1* %OF_val, !mcsema_real_eip !30
  %194 = zext i32 %181 to i64, !mcsema_real_eip !30
  store i64 %194, i64* %RAX_val, !mcsema_real_eip !30
  %195 = load i64* %RBP_val, !mcsema_real_eip !31
  %196 = add i64 %195, -16, !mcsema_real_eip !31
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !31
  %198 = bitcast i64* %197 to i32*
  store i32 %181, i32* %198, !mcsema_real_eip !31
  %199 = load i64* %RBP_val, !mcsema_real_eip !32
  %200 = add i64 %199, -16, !mcsema_real_eip !32
  %201 = inttoptr i64 %200 to i64*, !mcsema_real_eip !32
  %202 = bitcast i64* %201 to i32*
  %203 = load i32* %202, !mcsema_real_eip !32
  %204 = zext i32 %203 to i64, !mcsema_real_eip !32
  store i64 %204, i64* %RAX_val, !mcsema_real_eip !32
  %205 = load i64* %RSP_val, !mcsema_real_eip !33
  %uadd142 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %205, i64 32)
  %206 = extractvalue { i64, i1 } %uadd142, 0
  %207 = xor i64 %206, %205, !mcsema_real_eip !33
  %208 = and i64 %207, 16, !mcsema_real_eip !33
  %209 = icmp ne i64 %208, 0, !mcsema_real_eip !33
  store i1 %209, i1* %AF_val, !mcsema_real_eip !33
  %210 = icmp slt i64 %206, 0
  store i1 %210, i1* %SF_val, !mcsema_real_eip !33
  %211 = icmp eq i64 %206, 0, !mcsema_real_eip !33
  store i1 %211, i1* %ZF_val, !mcsema_real_eip !33
  %212 = xor i64 %205, -9223372036854775808, !mcsema_real_eip !33
  %213 = and i64 %207, %212, !mcsema_real_eip !33
  %214 = icmp slt i64 %213, 0
  store i1 %214, i1* %OF_val, !mcsema_real_eip !33
  %215 = trunc i64 %206 to i8, !mcsema_real_eip !33
  %216 = tail call i8 @llvm.ctpop.i8(i8 %215), !mcsema_real_eip !33
  %217 = and i8 %216, 1
  %218 = icmp eq i8 %217, 0
  store i1 %218, i1* %PF_val, !mcsema_real_eip !33
  %219 = extractvalue { i64, i1 } %uadd142, 1
  store i1 %219, i1* %CF_val, !mcsema_real_eip !33
  store i64 %206, i64* %RSP_val, !mcsema_real_eip !33
  %220 = inttoptr i64 %206 to i64*, !mcsema_real_eip !34
  %221 = load i64* %220, !mcsema_real_eip !34
  store i64 %221, i64* %RBP_val, !mcsema_real_eip !34
  %222 = add i64 %206, 16, !mcsema_real_eip !35
  store i64 %222, i64* %RSP_val, !mcsema_real_eip !35
  %223 = load i64* %RAX_val, !mcsema_real_eip !35
  store i64 %223, i64* %RAX, !mcsema_real_eip !35
  %224 = load i64* %RBX_val, !mcsema_real_eip !35
  store i64 %224, i64* %RBX, !mcsema_real_eip !35
  %225 = load i64* %RCX_val, !mcsema_real_eip !35
  store i64 %225, i64* %RCX, !mcsema_real_eip !35
  %226 = load i64* %RDX_val, !mcsema_real_eip !35
  store i64 %226, i64* %RDX, !mcsema_real_eip !35
  %227 = load i64* %RSI_val, !mcsema_real_eip !35
  store i64 %227, i64* %RSI, !mcsema_real_eip !35
  %228 = load i64* %RDI_val, !mcsema_real_eip !35
  store i64 %228, i64* %RDI, !mcsema_real_eip !35
  %229 = load i64* %RSP_val, !mcsema_real_eip !35
  store i64 %229, i64* %RSP, !mcsema_real_eip !35
  %230 = load i64* %RBP_val, !mcsema_real_eip !35
  store i64 %230, i64* %RBP, !mcsema_real_eip !35
  %231 = load i64* %R8_val, !mcsema_real_eip !35
  store i64 %231, i64* %R8, !mcsema_real_eip !35
  %232 = load i64* %R9_val, !mcsema_real_eip !35
  store i64 %232, i64* %R9, !mcsema_real_eip !35
  %233 = load i64* %R10_val, !mcsema_real_eip !35
  store i64 %233, i64* %R10, !mcsema_real_eip !35
  %234 = load i64* %R11_val, !mcsema_real_eip !35
  store i64 %234, i64* %R11, !mcsema_real_eip !35
  %235 = load i64* %R12_val, !mcsema_real_eip !35
  store i64 %235, i64* %R12, !mcsema_real_eip !35
  %236 = load i64* %R13_val, !mcsema_real_eip !35
  store i64 %236, i64* %R13, !mcsema_real_eip !35
  %237 = load i64* %R14_val, !mcsema_real_eip !35
  store i64 %237, i64* %R14, !mcsema_real_eip !35
  %238 = load i64* %R15_val, !mcsema_real_eip !35
  store i64 %238, i64* %R15, !mcsema_real_eip !35
  %239 = load i64* %RIP_val, !mcsema_real_eip !35
  store i64 %239, i64* %RIP, !mcsema_real_eip !35
  %240 = load i1* %CF_val, !mcsema_real_eip !35
  store i1 %240, i1* %CF, align 1, !mcsema_real_eip !35
  %241 = load i1* %PF_val, !mcsema_real_eip !35
  store i1 %241, i1* %PF, align 1, !mcsema_real_eip !35
  %242 = load i1* %AF_val, !mcsema_real_eip !35
  store i1 %242, i1* %AF, align 1, !mcsema_real_eip !35
  %243 = load i1* %ZF_val, !mcsema_real_eip !35
  store i1 %243, i1* %ZF, align 1, !mcsema_real_eip !35
  %244 = load i1* %SF_val, !mcsema_real_eip !35
  store i1 %244, i1* %SF, align 1, !mcsema_real_eip !35
  %245 = load i1* %OF_val, !mcsema_real_eip !35
  store i1 %245, i1* %OF, align 1, !mcsema_real_eip !35
  %246 = load i1* %DF_val, !mcsema_real_eip !35
  store i1 %246, i1* %DF, align 1, !mcsema_real_eip !35
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !35
  %247 = load i1* %FPU_B_val, !mcsema_real_eip !35
  store i1 %247, i1* %FPU_B, align 1, !mcsema_real_eip !35
  %248 = load i1* %FPU_C3_val, !mcsema_real_eip !35
  store i1 %248, i1* %FPU_C3, align 1, !mcsema_real_eip !35
  %249 = load i3* %FPU_TOP_val, !mcsema_real_eip !35
  store i3 %249, i3* %FPU_TOP, align 1, !mcsema_real_eip !35
  %250 = load i1* %FPU_C2_val, !mcsema_real_eip !35
  store i1 %250, i1* %FPU_C2, align 1, !mcsema_real_eip !35
  %251 = load i1* %FPU_C1_val, !mcsema_real_eip !35
  store i1 %251, i1* %FPU_C1, align 1, !mcsema_real_eip !35
  %252 = load i1* %FPU_C0_val, !mcsema_real_eip !35
  store i1 %252, i1* %FPU_C0, align 1, !mcsema_real_eip !35
  %253 = load i1* %FPU_ES_val, !mcsema_real_eip !35
  store i1 %253, i1* %FPU_ES, align 1, !mcsema_real_eip !35
  %254 = load i1* %FPU_SF_val, !mcsema_real_eip !35
  store i1 %254, i1* %FPU_SF, align 1, !mcsema_real_eip !35
  %255 = load i1* %FPU_PE_val, !mcsema_real_eip !35
  store i1 %255, i1* %FPU_PE, align 1, !mcsema_real_eip !35
  %256 = load i1* %FPU_UE_val, !mcsema_real_eip !35
  store i1 %256, i1* %FPU_UE, align 1, !mcsema_real_eip !35
  %257 = load i1* %FPU_OE_val, !mcsema_real_eip !35
  store i1 %257, i1* %FPU_OE, align 1, !mcsema_real_eip !35
  %258 = load i1* %FPU_ZE_val, !mcsema_real_eip !35
  store i1 %258, i1* %FPU_ZE, align 1, !mcsema_real_eip !35
  %259 = load i1* %FPU_DE_val, !mcsema_real_eip !35
  store i1 %259, i1* %FPU_DE, align 1, !mcsema_real_eip !35
  %260 = load i1* %FPU_IE_val, !mcsema_real_eip !35
  store i1 %260, i1* %FPU_IE, align 1, !mcsema_real_eip !35
  %261 = load i1* %FPU_X_val, !mcsema_real_eip !35
  store i1 %261, i1* %FPU_X, align 1, !mcsema_real_eip !35
  %262 = load i2* %FPU_RC_val, !mcsema_real_eip !35
  store i2 %262, i2* %FPU_RC, align 1, !mcsema_real_eip !35
  %263 = load i2* %FPU_PC_val, !mcsema_real_eip !35
  store i2 %263, i2* %FPU_PC, align 1, !mcsema_real_eip !35
  %264 = load i1* %FPU_PM_val, !mcsema_real_eip !35
  store i1 %264, i1* %FPU_PM, align 1, !mcsema_real_eip !35
  %265 = load i1* %FPU_UM_val, !mcsema_real_eip !35
  store i1 %265, i1* %FPU_UM, align 1, !mcsema_real_eip !35
  %266 = load i1* %FPU_OM_val, !mcsema_real_eip !35
  store i1 %266, i1* %FPU_OM, align 1, !mcsema_real_eip !35
  %267 = load i1* %FPU_ZM_val, !mcsema_real_eip !35
  store i1 %267, i1* %FPU_ZM, align 1, !mcsema_real_eip !35
  %268 = load i1* %FPU_DM_val, !mcsema_real_eip !35
  store i1 %268, i1* %FPU_DM, align 1, !mcsema_real_eip !35
  %269 = load i1* %FPU_IM_val, !mcsema_real_eip !35
  store i1 %269, i1* %FPU_IM, align 1, !mcsema_real_eip !35
  %270 = load i64* %53, align 4
  store i64 %270, i64* %52, align 4
  %271 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !35
  store i16 %271, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !35
  %272 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !35
  store i64 %272, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !35
  %273 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !35
  store i16 %273, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !35
  %274 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !35
  store i64 %274, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !35
  %275 = load i128* %XMM0_val, !mcsema_real_eip !35
  store i128 %275, i128* %XMM0, align 1, !mcsema_real_eip !35
  %276 = load i128* %XMM1_val, !mcsema_real_eip !35
  store i128 %276, i128* %XMM1, align 1, !mcsema_real_eip !35
  %277 = load i128* %XMM2_val, !mcsema_real_eip !35
  store i128 %277, i128* %XMM2, align 1, !mcsema_real_eip !35
  %278 = load i128* %XMM3_val, !mcsema_real_eip !35
  store i128 %278, i128* %XMM3, align 1, !mcsema_real_eip !35
  %279 = load i128* %XMM4_val, !mcsema_real_eip !35
  store i128 %279, i128* %XMM4, align 1, !mcsema_real_eip !35
  %280 = load i128* %XMM5_val, !mcsema_real_eip !35
  store i128 %280, i128* %XMM5, align 1, !mcsema_real_eip !35
  %281 = load i128* %XMM6_val, !mcsema_real_eip !35
  store i128 %281, i128* %XMM6, align 1, !mcsema_real_eip !35
  %282 = load i128* %XMM7_val, !mcsema_real_eip !35
  store i128 %282, i128* %XMM7, align 1, !mcsema_real_eip !35
  %283 = load i128* %XMM8_val, !mcsema_real_eip !35
  store i128 %283, i128* %XMM8, align 1, !mcsema_real_eip !35
  %284 = load i128* %XMM9_val, !mcsema_real_eip !35
  store i128 %284, i128* %XMM9, align 1, !mcsema_real_eip !35
  %285 = load i128* %XMM10_val, !mcsema_real_eip !35
  store i128 %285, i128* %XMM10, align 1, !mcsema_real_eip !35
  %286 = load i128* %XMM11_val, !mcsema_real_eip !35
  store i128 %286, i128* %XMM11, align 1, !mcsema_real_eip !35
  %287 = load i128* %XMM12_val, !mcsema_real_eip !35
  store i128 %287, i128* %XMM12, align 1, !mcsema_real_eip !35
  %288 = load i128* %XMM13_val, !mcsema_real_eip !35
  store i128 %288, i128* %XMM13, align 1, !mcsema_real_eip !35
  %289 = load i128* %XMM14_val, !mcsema_real_eip !35
  store i128 %289, i128* %XMM14, align 1, !mcsema_real_eip !35
  %290 = load i128* %XMM15_val, !mcsema_real_eip !35
  store i128 %290, i128* %XMM15, align 1, !mcsema_real_eip !35
  %291 = load i64* %STACK_BASE_val, !mcsema_real_eip !35
  store i64 %291, i64* %STACK_BASE, align 1, !mcsema_real_eip !35
  %292 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !35
  store i64 %292, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !35
  ret void, !mcsema_real_eip !35

block_0x4004ee:                                   ; preds = %entry
  %uadd140 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %179, i32 10)
  %293 = extractvalue { i32, i1 } %uadd140, 0
  %294 = xor i32 %293, %179, !mcsema_real_eip !36
  %295 = and i32 %294, 16, !mcsema_real_eip !36
  %296 = icmp ne i32 %295, 0, !mcsema_real_eip !36
  store i1 %296, i1* %AF_val, !mcsema_real_eip !36
  %297 = icmp slt i32 %293, 0
  store i1 %297, i1* %SF_val, !mcsema_real_eip !36
  %298 = icmp eq i32 %293, 0, !mcsema_real_eip !36
  store i1 %298, i1* %ZF_val, !mcsema_real_eip !36
  %299 = xor i32 %179, -2147483648, !mcsema_real_eip !36
  %300 = and i32 %294, %299, !mcsema_real_eip !36
  %301 = icmp slt i32 %300, 0
  store i1 %301, i1* %OF_val, !mcsema_real_eip !36
  %302 = trunc i32 %293 to i8, !mcsema_real_eip !36
  %303 = tail call i8 @llvm.ctpop.i8(i8 %302), !mcsema_real_eip !36
  %304 = and i8 %303, 1
  %305 = icmp eq i8 %304, 0
  store i1 %305, i1* %PF_val, !mcsema_real_eip !36
  %306 = extractvalue { i32, i1 } %uadd140, 1
  store i1 %306, i1* %CF_val, !mcsema_real_eip !36
  %307 = zext i32 %293 to i64, !mcsema_real_eip !36
  store i64 %307, i64* %RAX_val, !mcsema_real_eip !36
  %308 = load i64* %RBP_val, !mcsema_real_eip !37
  %309 = add i64 %308, -16, !mcsema_real_eip !37
  %310 = inttoptr i64 %309 to i64*, !mcsema_real_eip !37
  %311 = bitcast i64* %310 to i32*
  store i32 %293, i32* %311, !mcsema_real_eip !37
  %312 = load i64* %RBP_val, !mcsema_real_eip !32
  %313 = add i64 %312, -16, !mcsema_real_eip !32
  %314 = inttoptr i64 %313 to i64*, !mcsema_real_eip !32
  %315 = bitcast i64* %314 to i32*
  %316 = load i32* %315, !mcsema_real_eip !32
  %317 = zext i32 %316 to i64, !mcsema_real_eip !32
  store i64 %317, i64* %RAX_val, !mcsema_real_eip !32
  %318 = load i64* %RSP_val, !mcsema_real_eip !33
  %uadd141 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %318, i64 32)
  %319 = extractvalue { i64, i1 } %uadd141, 0
  %320 = xor i64 %319, %318, !mcsema_real_eip !33
  %321 = and i64 %320, 16, !mcsema_real_eip !33
  %322 = icmp ne i64 %321, 0, !mcsema_real_eip !33
  store i1 %322, i1* %AF_val, !mcsema_real_eip !33
  %323 = icmp slt i64 %319, 0
  store i1 %323, i1* %SF_val, !mcsema_real_eip !33
  %324 = icmp eq i64 %319, 0, !mcsema_real_eip !33
  store i1 %324, i1* %ZF_val, !mcsema_real_eip !33
  %325 = xor i64 %318, -9223372036854775808, !mcsema_real_eip !33
  %326 = and i64 %320, %325, !mcsema_real_eip !33
  %327 = icmp slt i64 %326, 0
  store i1 %327, i1* %OF_val, !mcsema_real_eip !33
  %328 = trunc i64 %319 to i8, !mcsema_real_eip !33
  %329 = tail call i8 @llvm.ctpop.i8(i8 %328), !mcsema_real_eip !33
  %330 = and i8 %329, 1
  %331 = icmp eq i8 %330, 0
  store i1 %331, i1* %PF_val, !mcsema_real_eip !33
  %332 = extractvalue { i64, i1 } %uadd141, 1
  store i1 %332, i1* %CF_val, !mcsema_real_eip !33
  store i64 %319, i64* %RSP_val, !mcsema_real_eip !33
  %333 = inttoptr i64 %319 to i64*, !mcsema_real_eip !34
  %334 = load i64* %333, !mcsema_real_eip !34
  store i64 %334, i64* %RBP_val, !mcsema_real_eip !34
  %335 = add i64 %319, 16, !mcsema_real_eip !35
  store i64 %335, i64* %RSP_val, !mcsema_real_eip !35
  %336 = load i64* %RAX_val, !mcsema_real_eip !35
  store i64 %336, i64* %RAX, !mcsema_real_eip !35
  %337 = load i64* %RBX_val, !mcsema_real_eip !35
  store i64 %337, i64* %RBX, !mcsema_real_eip !35
  %338 = load i64* %RCX_val, !mcsema_real_eip !35
  store i64 %338, i64* %RCX, !mcsema_real_eip !35
  %339 = load i64* %RDX_val, !mcsema_real_eip !35
  store i64 %339, i64* %RDX, !mcsema_real_eip !35
  %340 = load i64* %RSI_val, !mcsema_real_eip !35
  store i64 %340, i64* %RSI, !mcsema_real_eip !35
  %341 = load i64* %RDI_val, !mcsema_real_eip !35
  store i64 %341, i64* %RDI, !mcsema_real_eip !35
  %342 = load i64* %RSP_val, !mcsema_real_eip !35
  store i64 %342, i64* %RSP, !mcsema_real_eip !35
  %343 = load i64* %RBP_val, !mcsema_real_eip !35
  store i64 %343, i64* %RBP, !mcsema_real_eip !35
  %344 = load i64* %R8_val, !mcsema_real_eip !35
  store i64 %344, i64* %R8, !mcsema_real_eip !35
  %345 = load i64* %R9_val, !mcsema_real_eip !35
  store i64 %345, i64* %R9, !mcsema_real_eip !35
  %346 = load i64* %R10_val, !mcsema_real_eip !35
  store i64 %346, i64* %R10, !mcsema_real_eip !35
  %347 = load i64* %R11_val, !mcsema_real_eip !35
  store i64 %347, i64* %R11, !mcsema_real_eip !35
  %348 = load i64* %R12_val, !mcsema_real_eip !35
  store i64 %348, i64* %R12, !mcsema_real_eip !35
  %349 = load i64* %R13_val, !mcsema_real_eip !35
  store i64 %349, i64* %R13, !mcsema_real_eip !35
  %350 = load i64* %R14_val, !mcsema_real_eip !35
  store i64 %350, i64* %R14, !mcsema_real_eip !35
  %351 = load i64* %R15_val, !mcsema_real_eip !35
  store i64 %351, i64* %R15, !mcsema_real_eip !35
  %352 = load i64* %RIP_val, !mcsema_real_eip !35
  store i64 %352, i64* %RIP, !mcsema_real_eip !35
  %353 = load i1* %CF_val, !mcsema_real_eip !35
  store i1 %353, i1* %CF, align 1, !mcsema_real_eip !35
  %354 = load i1* %PF_val, !mcsema_real_eip !35
  store i1 %354, i1* %PF, align 1, !mcsema_real_eip !35
  %355 = load i1* %AF_val, !mcsema_real_eip !35
  store i1 %355, i1* %AF, align 1, !mcsema_real_eip !35
  %356 = load i1* %ZF_val, !mcsema_real_eip !35
  store i1 %356, i1* %ZF, align 1, !mcsema_real_eip !35
  %357 = load i1* %SF_val, !mcsema_real_eip !35
  store i1 %357, i1* %SF, align 1, !mcsema_real_eip !35
  %358 = load i1* %OF_val, !mcsema_real_eip !35
  store i1 %358, i1* %OF, align 1, !mcsema_real_eip !35
  %359 = load i1* %DF_val, !mcsema_real_eip !35
  store i1 %359, i1* %DF, align 1, !mcsema_real_eip !35
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !35
  %360 = load i1* %FPU_B_val, !mcsema_real_eip !35
  store i1 %360, i1* %FPU_B, align 1, !mcsema_real_eip !35
  %361 = load i1* %FPU_C3_val, !mcsema_real_eip !35
  store i1 %361, i1* %FPU_C3, align 1, !mcsema_real_eip !35
  %362 = load i3* %FPU_TOP_val, !mcsema_real_eip !35
  store i3 %362, i3* %FPU_TOP, align 1, !mcsema_real_eip !35
  %363 = load i1* %FPU_C2_val, !mcsema_real_eip !35
  store i1 %363, i1* %FPU_C2, align 1, !mcsema_real_eip !35
  %364 = load i1* %FPU_C1_val, !mcsema_real_eip !35
  store i1 %364, i1* %FPU_C1, align 1, !mcsema_real_eip !35
  %365 = load i1* %FPU_C0_val, !mcsema_real_eip !35
  store i1 %365, i1* %FPU_C0, align 1, !mcsema_real_eip !35
  %366 = load i1* %FPU_ES_val, !mcsema_real_eip !35
  store i1 %366, i1* %FPU_ES, align 1, !mcsema_real_eip !35
  %367 = load i1* %FPU_SF_val, !mcsema_real_eip !35
  store i1 %367, i1* %FPU_SF, align 1, !mcsema_real_eip !35
  %368 = load i1* %FPU_PE_val, !mcsema_real_eip !35
  store i1 %368, i1* %FPU_PE, align 1, !mcsema_real_eip !35
  %369 = load i1* %FPU_UE_val, !mcsema_real_eip !35
  store i1 %369, i1* %FPU_UE, align 1, !mcsema_real_eip !35
  %370 = load i1* %FPU_OE_val, !mcsema_real_eip !35
  store i1 %370, i1* %FPU_OE, align 1, !mcsema_real_eip !35
  %371 = load i1* %FPU_ZE_val, !mcsema_real_eip !35
  store i1 %371, i1* %FPU_ZE, align 1, !mcsema_real_eip !35
  %372 = load i1* %FPU_DE_val, !mcsema_real_eip !35
  store i1 %372, i1* %FPU_DE, align 1, !mcsema_real_eip !35
  %373 = load i1* %FPU_IE_val, !mcsema_real_eip !35
  store i1 %373, i1* %FPU_IE, align 1, !mcsema_real_eip !35
  %374 = load i1* %FPU_X_val, !mcsema_real_eip !35
  store i1 %374, i1* %FPU_X, align 1, !mcsema_real_eip !35
  %375 = load i2* %FPU_RC_val, !mcsema_real_eip !35
  store i2 %375, i2* %FPU_RC, align 1, !mcsema_real_eip !35
  %376 = load i2* %FPU_PC_val, !mcsema_real_eip !35
  store i2 %376, i2* %FPU_PC, align 1, !mcsema_real_eip !35
  %377 = load i1* %FPU_PM_val, !mcsema_real_eip !35
  store i1 %377, i1* %FPU_PM, align 1, !mcsema_real_eip !35
  %378 = load i1* %FPU_UM_val, !mcsema_real_eip !35
  store i1 %378, i1* %FPU_UM, align 1, !mcsema_real_eip !35
  %379 = load i1* %FPU_OM_val, !mcsema_real_eip !35
  store i1 %379, i1* %FPU_OM, align 1, !mcsema_real_eip !35
  %380 = load i1* %FPU_ZM_val, !mcsema_real_eip !35
  store i1 %380, i1* %FPU_ZM, align 1, !mcsema_real_eip !35
  %381 = load i1* %FPU_DM_val, !mcsema_real_eip !35
  store i1 %381, i1* %FPU_DM, align 1, !mcsema_real_eip !35
  %382 = load i1* %FPU_IM_val, !mcsema_real_eip !35
  store i1 %382, i1* %FPU_IM, align 1, !mcsema_real_eip !35
  %383 = load i64* %53, align 4
  store i64 %383, i64* %52, align 4
  %384 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !35
  store i16 %384, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !35
  %385 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !35
  store i64 %385, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !35
  %386 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !35
  store i16 %386, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !35
  %387 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !35
  store i64 %387, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !35
  %388 = load i128* %XMM0_val, !mcsema_real_eip !35
  store i128 %388, i128* %XMM0, align 1, !mcsema_real_eip !35
  %389 = load i128* %XMM1_val, !mcsema_real_eip !35
  store i128 %389, i128* %XMM1, align 1, !mcsema_real_eip !35
  %390 = load i128* %XMM2_val, !mcsema_real_eip !35
  store i128 %390, i128* %XMM2, align 1, !mcsema_real_eip !35
  %391 = load i128* %XMM3_val, !mcsema_real_eip !35
  store i128 %391, i128* %XMM3, align 1, !mcsema_real_eip !35
  %392 = load i128* %XMM4_val, !mcsema_real_eip !35
  store i128 %392, i128* %XMM4, align 1, !mcsema_real_eip !35
  %393 = load i128* %XMM5_val, !mcsema_real_eip !35
  store i128 %393, i128* %XMM5, align 1, !mcsema_real_eip !35
  %394 = load i128* %XMM6_val, !mcsema_real_eip !35
  store i128 %394, i128* %XMM6, align 1, !mcsema_real_eip !35
  %395 = load i128* %XMM7_val, !mcsema_real_eip !35
  store i128 %395, i128* %XMM7, align 1, !mcsema_real_eip !35
  %396 = load i128* %XMM8_val, !mcsema_real_eip !35
  store i128 %396, i128* %XMM8, align 1, !mcsema_real_eip !35
  %397 = load i128* %XMM9_val, !mcsema_real_eip !35
  store i128 %397, i128* %XMM9, align 1, !mcsema_real_eip !35
  %398 = load i128* %XMM10_val, !mcsema_real_eip !35
  store i128 %398, i128* %XMM10, align 1, !mcsema_real_eip !35
  %399 = load i128* %XMM11_val, !mcsema_real_eip !35
  store i128 %399, i128* %XMM11, align 1, !mcsema_real_eip !35
  %400 = load i128* %XMM12_val, !mcsema_real_eip !35
  store i128 %400, i128* %XMM12, align 1, !mcsema_real_eip !35
  %401 = load i128* %XMM13_val, !mcsema_real_eip !35
  store i128 %401, i128* %XMM13, align 1, !mcsema_real_eip !35
  %402 = load i128* %XMM14_val, !mcsema_real_eip !35
  store i128 %402, i128* %XMM14, align 1, !mcsema_real_eip !35
  %403 = load i128* %XMM15_val, !mcsema_real_eip !35
  store i128 %403, i128* %XMM15, align 1, !mcsema_real_eip !35
  %404 = load i64* %STACK_BASE_val, !mcsema_real_eip !35
  store i64 %404, i64* %STACK_BASE, align 1, !mcsema_real_eip !35
  %405 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !35
  store i64 %405, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !35
  ret void, !mcsema_real_eip !35
}

declare x86_64_sysvcc i64 @printf(i64 inreg)

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_400520(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 4195616, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 4195617, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = metadata !{i64 4195620, [16 x i8] c"\09subq\09$16, %rsp\00"}
!5 = metadata !{i64 4195624, [16 x i8] c"\09movl\09$10, %edi\00"}
!6 = metadata !{i64 4195629, [16 x i8] c"\09movl\09$20, %esi\00"}
!7 = metadata !{i64 4195634, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!8 = metadata !{i64 4195641, [12 x i8] c"\09callq\09-142\00"}
!9 = metadata !{i64 4195646, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!10 = metadata !{i64 4195649, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!11 = metadata !{i64 4195652, [16 x i8] c"\09addq\09$16, %rsp\00"}
!12 = metadata !{i64 4195656, [11 x i8] c"\09popq\09%rbp\00"}
!13 = metadata !{i64 4195657, [6 x i8] c"\09retq\00"}
!14 = metadata !{i64 4195504, [12 x i8] c"\09pushq\09%rbp\00"}
!15 = metadata !{i64 4195505, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!16 = metadata !{i64 4195508, [16 x i8] c"\09subq\09$32, %rsp\00"}
!17 = metadata !{i64 4195512, [24 x i8] c"\09movabsq\09$4195912, %rax\00"}
!18 = metadata !{i64 4195522, [21 x i8] c"\09movl\09%edi, -4(%rbp)\00"}
!19 = metadata !{i64 4195525, [21 x i8] c"\09movl\09%esi, -8(%rbp)\00"}
!20 = metadata !{i64 4195528, [21 x i8] c"\09movl\09-4(%rbp), %esi\00"}
!21 = metadata !{i64 4195531, [21 x i8] c"\09addl\09-8(%rbp), %esi\00"}
!22 = metadata !{i64 4195534, [22 x i8] c"\09movl\09%esi, -12(%rbp)\00"}
!23 = metadata !{i64 4195537, [22 x i8] c"\09movl\09-12(%rbp), %esi\00"}
!24 = metadata !{i64 4195540, [17 x i8] c"\09movq\09%rax, %rdi\00"}
!25 = metadata !{i64 4195545, [12 x i8] c"\09callq\09-318\00"}
!26 = metadata !{i64 4195550, [20 x i8] c"\09cmpl\09$40, -4(%rbp)\00"}
!27 = metadata !{i64 4195557, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!28 = metadata !{i64 4195560, [8 x i8] c"\09jle\0916\00"}
!29 = metadata !{i64 4195582, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!30 = metadata !{i64 4195585, [16 x i8] c"\09subl\09$10, %eax\00"}
!31 = metadata !{i64 4195590, [22 x i8] c"\09movl\09%eax, -16(%rbp)\00"}
!32 = metadata !{i64 4195593, [22 x i8] c"\09movl\09-16(%rbp), %eax\00"}
!33 = metadata !{i64 4195596, [16 x i8] c"\09addq\09$32, %rsp\00"}
!34 = metadata !{i64 4195600, [11 x i8] c"\09popq\09%rbp\00"}
!35 = metadata !{i64 4195601, [6 x i8] c"\09retq\00"}
!36 = metadata !{i64 4195569, [16 x i8] c"\09addl\09$10, %eax\00"}
!37 = metadata !{i64 4195574, [22 x i8] c"\09movl\09%eax, -16(%rbp)\00"}
