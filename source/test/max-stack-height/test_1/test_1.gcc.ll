; ModuleID = 'test_1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [3 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x6b = internal constant %0 <{ [3 x i8] c"%d\00" }>, align 64

define internal x86_64_sysvcc void @sub_4c(%struct.regs*) {
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
  store i64 20, i64* %RSI_val, !mcsema_real_eip !5
  store i64 10, i64* %RDI_val, !mcsema_real_eip !6
  %94 = add i64 %78, -32
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !7
  store i64 -4981261766360305936, i64* %95, !mcsema_real_eip !7
  store i64 %94, i64* %RSP_val, !mcsema_real_eip !7
  %96 = load i64* %RAX_val, !mcsema_real_eip !7
  store i64 %96, i64* %RAX, !mcsema_real_eip !7
  %97 = load i64* %RBX_val, !mcsema_real_eip !7
  store i64 %97, i64* %RBX, !mcsema_real_eip !7
  %98 = load i64* %RCX_val, !mcsema_real_eip !7
  store i64 %98, i64* %RCX, !mcsema_real_eip !7
  %99 = load i64* %RDX_val, !mcsema_real_eip !7
  store i64 %99, i64* %RDX, !mcsema_real_eip !7
  %100 = load i64* %RSI_val, !mcsema_real_eip !7
  store i64 %100, i64* %RSI, !mcsema_real_eip !7
  %101 = load i64* %RDI_val, !mcsema_real_eip !7
  store i64 %101, i64* %RDI, !mcsema_real_eip !7
  %102 = load i64* %RSP_val, !mcsema_real_eip !7
  store i64 %102, i64* %RSP, !mcsema_real_eip !7
  %103 = load i64* %RBP_val, !mcsema_real_eip !7
  store i64 %103, i64* %RBP, !mcsema_real_eip !7
  %104 = load i64* %R8_val, !mcsema_real_eip !7
  store i64 %104, i64* %R8, !mcsema_real_eip !7
  %105 = load i64* %R9_val, !mcsema_real_eip !7
  store i64 %105, i64* %R9, !mcsema_real_eip !7
  %106 = load i64* %R10_val, !mcsema_real_eip !7
  store i64 %106, i64* %R10, !mcsema_real_eip !7
  %107 = load i64* %R11_val, !mcsema_real_eip !7
  store i64 %107, i64* %R11, !mcsema_real_eip !7
  %108 = load i64* %R12_val, !mcsema_real_eip !7
  store i64 %108, i64* %R12, !mcsema_real_eip !7
  %109 = load i64* %R13_val, !mcsema_real_eip !7
  store i64 %109, i64* %R13, !mcsema_real_eip !7
  %110 = load i64* %R14_val, !mcsema_real_eip !7
  store i64 %110, i64* %R14, !mcsema_real_eip !7
  %111 = load i64* %R15_val, !mcsema_real_eip !7
  store i64 %111, i64* %R15, !mcsema_real_eip !7
  %112 = load i64* %RIP_val, !mcsema_real_eip !7
  store i64 %112, i64* %RIP, !mcsema_real_eip !7
  %113 = load i1* %CF_val, !mcsema_real_eip !7
  store i1 %113, i1* %CF, align 1, !mcsema_real_eip !7
  %114 = load i1* %PF_val, !mcsema_real_eip !7
  store i1 %114, i1* %PF, align 1, !mcsema_real_eip !7
  %115 = load i1* %AF_val, !mcsema_real_eip !7
  store i1 %115, i1* %AF, align 1, !mcsema_real_eip !7
  %116 = load i1* %ZF_val, !mcsema_real_eip !7
  store i1 %116, i1* %ZF, align 1, !mcsema_real_eip !7
  %117 = load i1* %SF_val, !mcsema_real_eip !7
  store i1 %117, i1* %SF, align 1, !mcsema_real_eip !7
  %118 = load i1* %OF_val, !mcsema_real_eip !7
  store i1 %118, i1* %OF, align 1, !mcsema_real_eip !7
  %119 = load i1* %DF_val, !mcsema_real_eip !7
  store i1 %119, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !7
  %120 = load i1* %FPU_B_val, !mcsema_real_eip !7
  store i1 %120, i1* %FPU_B, align 1, !mcsema_real_eip !7
  %121 = load i1* %FPU_C3_val, !mcsema_real_eip !7
  store i1 %121, i1* %FPU_C3, align 1, !mcsema_real_eip !7
  %122 = load i3* %FPU_TOP_val, !mcsema_real_eip !7
  store i3 %122, i3* %FPU_TOP, align 1, !mcsema_real_eip !7
  %123 = load i1* %FPU_C2_val, !mcsema_real_eip !7
  store i1 %123, i1* %FPU_C2, align 1, !mcsema_real_eip !7
  %124 = load i1* %FPU_C1_val, !mcsema_real_eip !7
  store i1 %124, i1* %FPU_C1, align 1, !mcsema_real_eip !7
  %125 = load i1* %FPU_C0_val, !mcsema_real_eip !7
  store i1 %125, i1* %FPU_C0, align 1, !mcsema_real_eip !7
  %126 = load i1* %FPU_ES_val, !mcsema_real_eip !7
  store i1 %126, i1* %FPU_ES, align 1, !mcsema_real_eip !7
  %127 = load i1* %FPU_SF_val, !mcsema_real_eip !7
  store i1 %127, i1* %FPU_SF, align 1, !mcsema_real_eip !7
  %128 = load i1* %FPU_PE_val, !mcsema_real_eip !7
  store i1 %128, i1* %FPU_PE, align 1, !mcsema_real_eip !7
  %129 = load i1* %FPU_UE_val, !mcsema_real_eip !7
  store i1 %129, i1* %FPU_UE, align 1, !mcsema_real_eip !7
  %130 = load i1* %FPU_OE_val, !mcsema_real_eip !7
  store i1 %130, i1* %FPU_OE, align 1, !mcsema_real_eip !7
  %131 = load i1* %FPU_ZE_val, !mcsema_real_eip !7
  store i1 %131, i1* %FPU_ZE, align 1, !mcsema_real_eip !7
  %132 = load i1* %FPU_DE_val, !mcsema_real_eip !7
  store i1 %132, i1* %FPU_DE, align 1, !mcsema_real_eip !7
  %133 = load i1* %FPU_IE_val, !mcsema_real_eip !7
  store i1 %133, i1* %FPU_IE, align 1, !mcsema_real_eip !7
  %134 = load i1* %FPU_X_val, !mcsema_real_eip !7
  store i1 %134, i1* %FPU_X, align 1, !mcsema_real_eip !7
  %135 = load i2* %FPU_RC_val, !mcsema_real_eip !7
  store i2 %135, i2* %FPU_RC, align 1, !mcsema_real_eip !7
  %136 = load i2* %FPU_PC_val, !mcsema_real_eip !7
  store i2 %136, i2* %FPU_PC, align 1, !mcsema_real_eip !7
  %137 = load i1* %FPU_PM_val, !mcsema_real_eip !7
  store i1 %137, i1* %FPU_PM, align 1, !mcsema_real_eip !7
  %138 = load i1* %FPU_UM_val, !mcsema_real_eip !7
  store i1 %138, i1* %FPU_UM, align 1, !mcsema_real_eip !7
  %139 = load i1* %FPU_OM_val, !mcsema_real_eip !7
  store i1 %139, i1* %FPU_OM, align 1, !mcsema_real_eip !7
  %140 = load i1* %FPU_ZM_val, !mcsema_real_eip !7
  store i1 %140, i1* %FPU_ZM, align 1, !mcsema_real_eip !7
  %141 = load i1* %FPU_DM_val, !mcsema_real_eip !7
  store i1 %141, i1* %FPU_DM, align 1, !mcsema_real_eip !7
  %142 = load i1* %FPU_IM_val, !mcsema_real_eip !7
  store i1 %142, i1* %FPU_IM, align 1, !mcsema_real_eip !7
  %143 = load i64* %53, align 4
  store i64 %143, i64* %52, align 4
  %144 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !7
  store i16 %144, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !7
  %145 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !7
  store i64 %145, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !7
  %146 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !7
  store i16 %146, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !7
  %147 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !7
  store i64 %147, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !7
  %148 = load i128* %XMM0_val, !mcsema_real_eip !7
  store i128 %148, i128* %XMM0, align 1, !mcsema_real_eip !7
  %149 = load i128* %XMM1_val, !mcsema_real_eip !7
  store i128 %149, i128* %XMM1, align 1, !mcsema_real_eip !7
  %150 = load i128* %XMM2_val, !mcsema_real_eip !7
  store i128 %150, i128* %XMM2, align 1, !mcsema_real_eip !7
  %151 = load i128* %XMM3_val, !mcsema_real_eip !7
  store i128 %151, i128* %XMM3, align 1, !mcsema_real_eip !7
  %152 = load i128* %XMM4_val, !mcsema_real_eip !7
  store i128 %152, i128* %XMM4, align 1, !mcsema_real_eip !7
  %153 = load i128* %XMM5_val, !mcsema_real_eip !7
  store i128 %153, i128* %XMM5, align 1, !mcsema_real_eip !7
  %154 = load i128* %XMM6_val, !mcsema_real_eip !7
  store i128 %154, i128* %XMM6, align 1, !mcsema_real_eip !7
  %155 = load i128* %XMM7_val, !mcsema_real_eip !7
  store i128 %155, i128* %XMM7, align 1, !mcsema_real_eip !7
  %156 = load i128* %XMM8_val, !mcsema_real_eip !7
  store i128 %156, i128* %XMM8, align 1, !mcsema_real_eip !7
  %157 = load i128* %XMM9_val, !mcsema_real_eip !7
  store i128 %157, i128* %XMM9, align 1, !mcsema_real_eip !7
  %158 = load i128* %XMM10_val, !mcsema_real_eip !7
  store i128 %158, i128* %XMM10, align 1, !mcsema_real_eip !7
  %159 = load i128* %XMM11_val, !mcsema_real_eip !7
  store i128 %159, i128* %XMM11, align 1, !mcsema_real_eip !7
  %160 = load i128* %XMM12_val, !mcsema_real_eip !7
  store i128 %160, i128* %XMM12, align 1, !mcsema_real_eip !7
  %161 = load i128* %XMM13_val, !mcsema_real_eip !7
  store i128 %161, i128* %XMM13, align 1, !mcsema_real_eip !7
  %162 = load i128* %XMM14_val, !mcsema_real_eip !7
  store i128 %162, i128* %XMM14, align 1, !mcsema_real_eip !7
  %163 = load i128* %XMM15_val, !mcsema_real_eip !7
  store i128 %163, i128* %XMM15, align 1, !mcsema_real_eip !7
  %164 = load i64* %STACK_BASE_val, !mcsema_real_eip !7
  store i64 %164, i64* %STACK_BASE, align 1, !mcsema_real_eip !7
  %165 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !7
  store i64 %165, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !7
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !7
  %166 = load i64* %RAX, !mcsema_real_eip !7
  store i64 %166, i64* %RAX_val, !mcsema_real_eip !7
  %167 = load i64* %RBX, !mcsema_real_eip !7
  store i64 %167, i64* %RBX_val, !mcsema_real_eip !7
  %168 = load i64* %RCX, !mcsema_real_eip !7
  store i64 %168, i64* %RCX_val, !mcsema_real_eip !7
  %169 = load i64* %RDX, !mcsema_real_eip !7
  store i64 %169, i64* %RDX_val, !mcsema_real_eip !7
  %170 = load i64* %RSI, !mcsema_real_eip !7
  store i64 %170, i64* %RSI_val, !mcsema_real_eip !7
  %171 = load i64* %RDI, !mcsema_real_eip !7
  store i64 %171, i64* %RDI_val, !mcsema_real_eip !7
  %172 = load i64* %RSP, !mcsema_real_eip !7
  store i64 %172, i64* %RSP_val, !mcsema_real_eip !7
  %173 = load i64* %RBP, !mcsema_real_eip !7
  store i64 %173, i64* %RBP_val, !mcsema_real_eip !7
  %174 = load i64* %R8, !mcsema_real_eip !7
  store i64 %174, i64* %R8_val, !mcsema_real_eip !7
  %175 = load i64* %R9, !mcsema_real_eip !7
  store i64 %175, i64* %R9_val, !mcsema_real_eip !7
  %176 = load i64* %R10, !mcsema_real_eip !7
  store i64 %176, i64* %R10_val, !mcsema_real_eip !7
  %177 = load i64* %R11, !mcsema_real_eip !7
  store i64 %177, i64* %R11_val, !mcsema_real_eip !7
  %178 = load i64* %R12, !mcsema_real_eip !7
  store i64 %178, i64* %R12_val, !mcsema_real_eip !7
  %179 = load i64* %R13, !mcsema_real_eip !7
  store i64 %179, i64* %R13_val, !mcsema_real_eip !7
  %180 = load i64* %R14, !mcsema_real_eip !7
  store i64 %180, i64* %R14_val, !mcsema_real_eip !7
  %181 = load i64* %R15, !mcsema_real_eip !7
  store i64 %181, i64* %R15_val, !mcsema_real_eip !7
  %182 = load i64* %RIP, !mcsema_real_eip !7
  store i64 %182, i64* %RIP_val, !mcsema_real_eip !7
  %183 = load i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %183, i1* %CF_val, !mcsema_real_eip !7
  %184 = load i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %184, i1* %PF_val, !mcsema_real_eip !7
  %185 = load i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %185, i1* %AF_val, !mcsema_real_eip !7
  %186 = load i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %186, i1* %ZF_val, !mcsema_real_eip !7
  %187 = load i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %187, i1* %SF_val, !mcsema_real_eip !7
  %188 = load i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %188, i1* %OF_val, !mcsema_real_eip !7
  %189 = load i1* %DF, align 1, !mcsema_real_eip !7
  store i1 %189, i1* %DF_val, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !7
  %190 = load i1* %FPU_B, align 1, !mcsema_real_eip !7
  store i1 %190, i1* %FPU_B_val, !mcsema_real_eip !7
  %191 = load i1* %FPU_C3, align 1, !mcsema_real_eip !7
  store i1 %191, i1* %FPU_C3_val, !mcsema_real_eip !7
  %192 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !7
  store i3 %192, i3* %FPU_TOP_val, !mcsema_real_eip !7
  %193 = load i1* %FPU_C2, align 1, !mcsema_real_eip !7
  store i1 %193, i1* %FPU_C2_val, !mcsema_real_eip !7
  %194 = load i1* %FPU_C1, align 1, !mcsema_real_eip !7
  store i1 %194, i1* %FPU_C1_val, !mcsema_real_eip !7
  %195 = load i1* %FPU_C0, align 1, !mcsema_real_eip !7
  store i1 %195, i1* %FPU_C0_val, !mcsema_real_eip !7
  %196 = load i1* %FPU_ES, align 1, !mcsema_real_eip !7
  store i1 %196, i1* %FPU_ES_val, !mcsema_real_eip !7
  %197 = load i1* %FPU_SF, align 1, !mcsema_real_eip !7
  store i1 %197, i1* %FPU_SF_val, !mcsema_real_eip !7
  %198 = load i1* %FPU_PE, align 1, !mcsema_real_eip !7
  store i1 %198, i1* %FPU_PE_val, !mcsema_real_eip !7
  %199 = load i1* %FPU_UE, align 1, !mcsema_real_eip !7
  store i1 %199, i1* %FPU_UE_val, !mcsema_real_eip !7
  %200 = load i1* %FPU_OE, align 1, !mcsema_real_eip !7
  store i1 %200, i1* %FPU_OE_val, !mcsema_real_eip !7
  %201 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !7
  store i1 %201, i1* %FPU_ZE_val, !mcsema_real_eip !7
  %202 = load i1* %FPU_DE, align 1, !mcsema_real_eip !7
  store i1 %202, i1* %FPU_DE_val, !mcsema_real_eip !7
  %203 = load i1* %FPU_IE, align 1, !mcsema_real_eip !7
  store i1 %203, i1* %FPU_IE_val, !mcsema_real_eip !7
  %204 = load i1* %FPU_X, align 1, !mcsema_real_eip !7
  store i1 %204, i1* %FPU_X_val, !mcsema_real_eip !7
  %205 = load i2* %FPU_RC, align 1, !mcsema_real_eip !7
  store i2 %205, i2* %FPU_RC_val, !mcsema_real_eip !7
  %206 = load i2* %FPU_PC, align 1, !mcsema_real_eip !7
  store i2 %206, i2* %FPU_PC_val, !mcsema_real_eip !7
  %207 = load i1* %FPU_PM, align 1, !mcsema_real_eip !7
  store i1 %207, i1* %FPU_PM_val, !mcsema_real_eip !7
  %208 = load i1* %FPU_UM, align 1, !mcsema_real_eip !7
  store i1 %208, i1* %FPU_UM_val, !mcsema_real_eip !7
  %209 = load i1* %FPU_OM, align 1, !mcsema_real_eip !7
  store i1 %209, i1* %FPU_OM_val, !mcsema_real_eip !7
  %210 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !7
  store i1 %210, i1* %FPU_ZM_val, !mcsema_real_eip !7
  %211 = load i1* %FPU_DM, align 1, !mcsema_real_eip !7
  store i1 %211, i1* %FPU_DM_val, !mcsema_real_eip !7
  %212 = load i1* %FPU_IM, align 1, !mcsema_real_eip !7
  store i1 %212, i1* %FPU_IM_val, !mcsema_real_eip !7
  %213 = load i64* %52, align 4
  store i64 %213, i64* %53, align 4
  %214 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !7
  store i16 %214, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !7
  %215 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !7
  store i64 %215, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !7
  %216 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !7
  store i16 %216, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !7
  %217 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !7
  store i64 %217, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !7
  %218 = load i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %218, i128* %XMM0_val, !mcsema_real_eip !7
  %219 = load i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %219, i128* %XMM1_val, !mcsema_real_eip !7
  %220 = load i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %220, i128* %XMM2_val, !mcsema_real_eip !7
  %221 = load i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %221, i128* %XMM3_val, !mcsema_real_eip !7
  %222 = load i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %222, i128* %XMM4_val, !mcsema_real_eip !7
  %223 = load i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %223, i128* %XMM5_val, !mcsema_real_eip !7
  %224 = load i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %224, i128* %XMM6_val, !mcsema_real_eip !7
  %225 = load i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %225, i128* %XMM7_val, !mcsema_real_eip !7
  %226 = load i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %226, i128* %XMM8_val, !mcsema_real_eip !7
  %227 = load i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %227, i128* %XMM9_val, !mcsema_real_eip !7
  %228 = load i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %228, i128* %XMM10_val, !mcsema_real_eip !7
  %229 = load i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %229, i128* %XMM11_val, !mcsema_real_eip !7
  %230 = load i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %230, i128* %XMM12_val, !mcsema_real_eip !7
  %231 = load i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %231, i128* %XMM13_val, !mcsema_real_eip !7
  %232 = load i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %232, i128* %XMM14_val, !mcsema_real_eip !7
  %233 = load i128* %XMM15, align 1, !mcsema_real_eip !7
  store i128 %233, i128* %XMM15_val, !mcsema_real_eip !7
  %234 = load i64* %STACK_BASE, !mcsema_real_eip !7
  store i64 %234, i64* %STACK_BASE_val, !mcsema_real_eip !7
  %235 = load i64* %STACK_LIMIT, !mcsema_real_eip !7
  store i64 %235, i64* %STACK_LIMIT_val, !mcsema_real_eip !7
  %236 = load i64* %RBP_val, !mcsema_real_eip !8
  %237 = add i64 %236, -4, !mcsema_real_eip !8
  %238 = inttoptr i64 %237 to i64*, !mcsema_real_eip !8
  %239 = load i64* %RAX_val, !mcsema_real_eip !8
  %240 = trunc i64 %239 to i32, !mcsema_real_eip !8
  %241 = bitcast i64* %238 to i32*
  store i32 %240, i32* %241, !mcsema_real_eip !8
  %242 = load i64* %RBP_val, !mcsema_real_eip !9
  %243 = add i64 %242, -4, !mcsema_real_eip !9
  %244 = inttoptr i64 %243 to i64*, !mcsema_real_eip !9
  %245 = bitcast i64* %244 to i32*
  %246 = load i32* %245, !mcsema_real_eip !9
  %247 = zext i32 %246 to i64, !mcsema_real_eip !9
  store i64 %247, i64* %RAX_val, !mcsema_real_eip !9
  %248 = load i64* %RBP_val, !mcsema_real_eip !10
  store i64 %248, i64* %RSP_val, !mcsema_real_eip !10
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !10
  %250 = load i64* %249, !mcsema_real_eip !10
  store i64 %250, i64* %RBP_val, !mcsema_real_eip !10
  %251 = add i64 %248, 16, !mcsema_real_eip !11
  store i64 %251, i64* %RSP_val, !mcsema_real_eip !11
  %252 = load i64* %RAX_val, !mcsema_real_eip !11
  store i64 %252, i64* %RAX, !mcsema_real_eip !11
  %253 = load i64* %RBX_val, !mcsema_real_eip !11
  store i64 %253, i64* %RBX, !mcsema_real_eip !11
  %254 = load i64* %RCX_val, !mcsema_real_eip !11
  store i64 %254, i64* %RCX, !mcsema_real_eip !11
  %255 = load i64* %RDX_val, !mcsema_real_eip !11
  store i64 %255, i64* %RDX, !mcsema_real_eip !11
  %256 = load i64* %RSI_val, !mcsema_real_eip !11
  store i64 %256, i64* %RSI, !mcsema_real_eip !11
  %257 = load i64* %RDI_val, !mcsema_real_eip !11
  store i64 %257, i64* %RDI, !mcsema_real_eip !11
  %258 = load i64* %RSP_val, !mcsema_real_eip !11
  store i64 %258, i64* %RSP, !mcsema_real_eip !11
  %259 = load i64* %RBP_val, !mcsema_real_eip !11
  store i64 %259, i64* %RBP, !mcsema_real_eip !11
  %260 = load i64* %R8_val, !mcsema_real_eip !11
  store i64 %260, i64* %R8, !mcsema_real_eip !11
  %261 = load i64* %R9_val, !mcsema_real_eip !11
  store i64 %261, i64* %R9, !mcsema_real_eip !11
  %262 = load i64* %R10_val, !mcsema_real_eip !11
  store i64 %262, i64* %R10, !mcsema_real_eip !11
  %263 = load i64* %R11_val, !mcsema_real_eip !11
  store i64 %263, i64* %R11, !mcsema_real_eip !11
  %264 = load i64* %R12_val, !mcsema_real_eip !11
  store i64 %264, i64* %R12, !mcsema_real_eip !11
  %265 = load i64* %R13_val, !mcsema_real_eip !11
  store i64 %265, i64* %R13, !mcsema_real_eip !11
  %266 = load i64* %R14_val, !mcsema_real_eip !11
  store i64 %266, i64* %R14, !mcsema_real_eip !11
  %267 = load i64* %R15_val, !mcsema_real_eip !11
  store i64 %267, i64* %R15, !mcsema_real_eip !11
  %268 = load i64* %RIP_val, !mcsema_real_eip !11
  store i64 %268, i64* %RIP, !mcsema_real_eip !11
  %269 = load i1* %CF_val, !mcsema_real_eip !11
  store i1 %269, i1* %CF, align 1, !mcsema_real_eip !11
  %270 = load i1* %PF_val, !mcsema_real_eip !11
  store i1 %270, i1* %PF, align 1, !mcsema_real_eip !11
  %271 = load i1* %AF_val, !mcsema_real_eip !11
  store i1 %271, i1* %AF, align 1, !mcsema_real_eip !11
  %272 = load i1* %ZF_val, !mcsema_real_eip !11
  store i1 %272, i1* %ZF, align 1, !mcsema_real_eip !11
  %273 = load i1* %SF_val, !mcsema_real_eip !11
  store i1 %273, i1* %SF, align 1, !mcsema_real_eip !11
  %274 = load i1* %OF_val, !mcsema_real_eip !11
  store i1 %274, i1* %OF, align 1, !mcsema_real_eip !11
  %275 = load i1* %DF_val, !mcsema_real_eip !11
  store i1 %275, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  %276 = load i1* %FPU_B_val, !mcsema_real_eip !11
  store i1 %276, i1* %FPU_B, align 1, !mcsema_real_eip !11
  %277 = load i1* %FPU_C3_val, !mcsema_real_eip !11
  store i1 %277, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  %278 = load i3* %FPU_TOP_val, !mcsema_real_eip !11
  store i3 %278, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  %279 = load i1* %FPU_C2_val, !mcsema_real_eip !11
  store i1 %279, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  %280 = load i1* %FPU_C1_val, !mcsema_real_eip !11
  store i1 %280, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  %281 = load i1* %FPU_C0_val, !mcsema_real_eip !11
  store i1 %281, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  %282 = load i1* %FPU_ES_val, !mcsema_real_eip !11
  store i1 %282, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  %283 = load i1* %FPU_SF_val, !mcsema_real_eip !11
  store i1 %283, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  %284 = load i1* %FPU_PE_val, !mcsema_real_eip !11
  store i1 %284, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  %285 = load i1* %FPU_UE_val, !mcsema_real_eip !11
  store i1 %285, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  %286 = load i1* %FPU_OE_val, !mcsema_real_eip !11
  store i1 %286, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  %287 = load i1* %FPU_ZE_val, !mcsema_real_eip !11
  store i1 %287, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  %288 = load i1* %FPU_DE_val, !mcsema_real_eip !11
  store i1 %288, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  %289 = load i1* %FPU_IE_val, !mcsema_real_eip !11
  store i1 %289, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  %290 = load i1* %FPU_X_val, !mcsema_real_eip !11
  store i1 %290, i1* %FPU_X, align 1, !mcsema_real_eip !11
  %291 = load i2* %FPU_RC_val, !mcsema_real_eip !11
  store i2 %291, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  %292 = load i2* %FPU_PC_val, !mcsema_real_eip !11
  store i2 %292, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  %293 = load i1* %FPU_PM_val, !mcsema_real_eip !11
  store i1 %293, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  %294 = load i1* %FPU_UM_val, !mcsema_real_eip !11
  store i1 %294, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  %295 = load i1* %FPU_OM_val, !mcsema_real_eip !11
  store i1 %295, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  %296 = load i1* %FPU_ZM_val, !mcsema_real_eip !11
  store i1 %296, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  %297 = load i1* %FPU_DM_val, !mcsema_real_eip !11
  store i1 %297, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  %298 = load i1* %FPU_IM_val, !mcsema_real_eip !11
  store i1 %298, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  %299 = load i64* %53, align 4
  store i64 %299, i64* %52, align 4
  %300 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !11
  store i16 %300, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  %301 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !11
  store i64 %301, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  %302 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !11
  store i16 %302, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  %303 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !11
  store i64 %303, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  %304 = load i128* %XMM0_val, !mcsema_real_eip !11
  store i128 %304, i128* %XMM0, align 1, !mcsema_real_eip !11
  %305 = load i128* %XMM1_val, !mcsema_real_eip !11
  store i128 %305, i128* %XMM1, align 1, !mcsema_real_eip !11
  %306 = load i128* %XMM2_val, !mcsema_real_eip !11
  store i128 %306, i128* %XMM2, align 1, !mcsema_real_eip !11
  %307 = load i128* %XMM3_val, !mcsema_real_eip !11
  store i128 %307, i128* %XMM3, align 1, !mcsema_real_eip !11
  %308 = load i128* %XMM4_val, !mcsema_real_eip !11
  store i128 %308, i128* %XMM4, align 1, !mcsema_real_eip !11
  %309 = load i128* %XMM5_val, !mcsema_real_eip !11
  store i128 %309, i128* %XMM5, align 1, !mcsema_real_eip !11
  %310 = load i128* %XMM6_val, !mcsema_real_eip !11
  store i128 %310, i128* %XMM6, align 1, !mcsema_real_eip !11
  %311 = load i128* %XMM7_val, !mcsema_real_eip !11
  store i128 %311, i128* %XMM7, align 1, !mcsema_real_eip !11
  %312 = load i128* %XMM8_val, !mcsema_real_eip !11
  store i128 %312, i128* %XMM8, align 1, !mcsema_real_eip !11
  %313 = load i128* %XMM9_val, !mcsema_real_eip !11
  store i128 %313, i128* %XMM9, align 1, !mcsema_real_eip !11
  %314 = load i128* %XMM10_val, !mcsema_real_eip !11
  store i128 %314, i128* %XMM10, align 1, !mcsema_real_eip !11
  %315 = load i128* %XMM11_val, !mcsema_real_eip !11
  store i128 %315, i128* %XMM11, align 1, !mcsema_real_eip !11
  %316 = load i128* %XMM12_val, !mcsema_real_eip !11
  store i128 %316, i128* %XMM12, align 1, !mcsema_real_eip !11
  %317 = load i128* %XMM13_val, !mcsema_real_eip !11
  store i128 %317, i128* %XMM13, align 1, !mcsema_real_eip !11
  %318 = load i128* %XMM14_val, !mcsema_real_eip !11
  store i128 %318, i128* %XMM14, align 1, !mcsema_real_eip !11
  %319 = load i128* %XMM15_val, !mcsema_real_eip !11
  store i128 %319, i128* %XMM15, align 1, !mcsema_real_eip !11
  %320 = load i64* %STACK_BASE_val, !mcsema_real_eip !11
  store i64 %320, i64* %STACK_BASE, align 1, !mcsema_real_eip !11
  %321 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !11
  store i64 %321, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11
}

define internal x86_64_sysvcc void @sub_0(%struct.regs*) {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !12
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !12
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !12
  %XMM15_val = alloca i128, !mcsema_real_eip !12
  %XMM14_val = alloca i128, !mcsema_real_eip !12
  %XMM13_val = alloca i128, !mcsema_real_eip !12
  %XMM12_val = alloca i128, !mcsema_real_eip !12
  %XMM11_val = alloca i128, !mcsema_real_eip !12
  %XMM10_val = alloca i128, !mcsema_real_eip !12
  %XMM9_val = alloca i128, !mcsema_real_eip !12
  %XMM8_val = alloca i128, !mcsema_real_eip !12
  %XMM7_val = alloca i128, !mcsema_real_eip !12
  %XMM6_val = alloca i128, !mcsema_real_eip !12
  %XMM5_val = alloca i128, !mcsema_real_eip !12
  %XMM4_val = alloca i128, !mcsema_real_eip !12
  %XMM3_val = alloca i128, !mcsema_real_eip !12
  %XMM2_val = alloca i128, !mcsema_real_eip !12
  %XMM1_val = alloca i128, !mcsema_real_eip !12
  %XMM0_val = alloca i128, !mcsema_real_eip !12
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !12
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !12
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !12
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !12
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !12
  %FPU_IM_val = alloca i1, !mcsema_real_eip !12
  %FPU_DM_val = alloca i1, !mcsema_real_eip !12
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !12
  %FPU_OM_val = alloca i1, !mcsema_real_eip !12
  %FPU_UM_val = alloca i1, !mcsema_real_eip !12
  %FPU_PM_val = alloca i1, !mcsema_real_eip !12
  %FPU_PC_val = alloca i2, !mcsema_real_eip !12
  %FPU_RC_val = alloca i2, !mcsema_real_eip !12
  %FPU_X_val = alloca i1, !mcsema_real_eip !12
  %FPU_IE_val = alloca i1, !mcsema_real_eip !12
  %FPU_DE_val = alloca i1, !mcsema_real_eip !12
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !12
  %FPU_OE_val = alloca i1, !mcsema_real_eip !12
  %FPU_UE_val = alloca i1, !mcsema_real_eip !12
  %FPU_PE_val = alloca i1, !mcsema_real_eip !12
  %FPU_SF_val = alloca i1, !mcsema_real_eip !12
  %FPU_ES_val = alloca i1, !mcsema_real_eip !12
  %FPU_C0_val = alloca i1, !mcsema_real_eip !12
  %FPU_C1_val = alloca i1, !mcsema_real_eip !12
  %FPU_C2_val = alloca i1, !mcsema_real_eip !12
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !12
  %FPU_C3_val = alloca i1, !mcsema_real_eip !12
  %FPU_B_val = alloca i1, !mcsema_real_eip !12
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !12
  %DF_val = alloca i1, !mcsema_real_eip !12
  %OF_val = alloca i1, !mcsema_real_eip !12
  %SF_val = alloca i1, !mcsema_real_eip !12
  %CF_val = alloca i1, !mcsema_real_eip !12
  %AF_val = alloca i1, !mcsema_real_eip !12
  %PF_val = alloca i1, !mcsema_real_eip !12
  %ZF_val = alloca i1, !mcsema_real_eip !12
  %RIP_val = alloca i64, !mcsema_real_eip !12
  %R14_val = alloca i64, !mcsema_real_eip !12
  %R13_val = alloca i64, !mcsema_real_eip !12
  %R12_val = alloca i64, !mcsema_real_eip !12
  %R11_val = alloca i64, !mcsema_real_eip !12
  %R10_val = alloca i64, !mcsema_real_eip !12
  %R9_val = alloca i64, !mcsema_real_eip !12
  %R8_val = alloca i64, !mcsema_real_eip !12
  %RSP_val = alloca i64, !mcsema_real_eip !12
  %RBP_val = alloca i64, !mcsema_real_eip !12
  %RDI_val = alloca i64, !mcsema_real_eip !12
  %RSI_val = alloca i64, !mcsema_real_eip !12
  %RDX_val = alloca i64, !mcsema_real_eip !12
  %RCX_val = alloca i64, !mcsema_real_eip !12
  %RBX_val = alloca i64, !mcsema_real_eip !12
  %RAX_val = alloca i64, !mcsema_real_eip !12
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !12
  %1 = load i64* %RAX, !mcsema_real_eip !12
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !12
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !12
  %2 = load i64* %RBX, !mcsema_real_eip !12
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !12
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !12
  %3 = load i64* %RCX, !mcsema_real_eip !12
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !12
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !12
  %4 = load i64* %RDX, !mcsema_real_eip !12
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !12
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !12
  %5 = load i64* %RSI, !mcsema_real_eip !12
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !12
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !12
  %6 = load i64* %RDI, !mcsema_real_eip !12
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !12
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !12
  %7 = load i64* %RSP, !mcsema_real_eip !12
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !12
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !12
  %8 = load i64* %RBP, !mcsema_real_eip !12
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !12
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !12
  %9 = load i64* %R8, !mcsema_real_eip !12
  store i64 %9, i64* %R8_val, !mcsema_real_eip !12
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !12
  %10 = load i64* %R9, !mcsema_real_eip !12
  store i64 %10, i64* %R9_val, !mcsema_real_eip !12
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !12
  %11 = load i64* %R10, !mcsema_real_eip !12
  store i64 %11, i64* %R10_val, !mcsema_real_eip !12
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !12
  %12 = load i64* %R11, !mcsema_real_eip !12
  store i64 %12, i64* %R11_val, !mcsema_real_eip !12
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !12
  %13 = load i64* %R12, !mcsema_real_eip !12
  store i64 %13, i64* %R12_val, !mcsema_real_eip !12
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !12
  %14 = load i64* %R13, !mcsema_real_eip !12
  store i64 %14, i64* %R13_val, !mcsema_real_eip !12
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !12
  %15 = load i64* %R14, !mcsema_real_eip !12
  store i64 %15, i64* %R14_val, !mcsema_real_eip !12
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !12
  %16 = load i64* %R15, !mcsema_real_eip !12
  store i64 %16, i64* %R15_val, !mcsema_real_eip !12
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !12
  %17 = load i64* %RIP, !mcsema_real_eip !12
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !12
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !12
  %18 = load i1* %CF, align 1, !mcsema_real_eip !12
  store i1 %18, i1* %CF_val, !mcsema_real_eip !12
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !12
  %19 = load i1* %PF, align 1, !mcsema_real_eip !12
  store i1 %19, i1* %PF_val, !mcsema_real_eip !12
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !12
  %20 = load i1* %AF, align 1, !mcsema_real_eip !12
  store i1 %20, i1* %AF_val, !mcsema_real_eip !12
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !12
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !12
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !12
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !12
  %22 = load i1* %SF, align 1, !mcsema_real_eip !12
  store i1 %22, i1* %SF_val, !mcsema_real_eip !12
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !12
  %23 = load i1* %OF, align 1, !mcsema_real_eip !12
  store i1 %23, i1* %OF_val, !mcsema_real_eip !12
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !12
  %24 = load i1* %DF, align 1, !mcsema_real_eip !12
  store i1 %24, i1* %DF_val, !mcsema_real_eip !12
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !12
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !12
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !12
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !12
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !12
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !12
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !12
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !12
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !12
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !12
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !12
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !12
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !12
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !12
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !12
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !12
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !12
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !12
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !12
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !12
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !12
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !12
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !12
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !12
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !12
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !12
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !12
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !12
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !12
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !12
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !12
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !12
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !12
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !12
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !12
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !12
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !12
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !12
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !12
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !12
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !12
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !12
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !12
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !12
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !12
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !12
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !12
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !12
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !12
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !12
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !12
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !12
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !12
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !12
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !12
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !12
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !12
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !12
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !12
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !12
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !12
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !12
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !12
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !12
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !12
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !12
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !12
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !12
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !12
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !12
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !12
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !12
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !12
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !12
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !12
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !12
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !12
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !12
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !12
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !12
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !12
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !12
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !12
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !12
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !12
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !12
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !12
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !12
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !12
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !12
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !12
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !12
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !12
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !12
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !12
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !12
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !12
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !12
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !12
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !12
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !12
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !12
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !12
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !12
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !12
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !12
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !12
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !12
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !12
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !12
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !12
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !12
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !12
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !12
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !12
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !12
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !12
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !12
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !12
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !12
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !12
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !12
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !12
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !12
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !12
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !12
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !12
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !12
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !12
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !12
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !12
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !12
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !12
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !12
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !12
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !12
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !12
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !12
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !12
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !12
  %77 = load i64* %RBP_val, !mcsema_real_eip !12
  %78 = load i64* %RSP_val, !mcsema_real_eip !12
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !12
  store i64 %77, i64* %80, !mcsema_real_eip !12
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !13
  %81 = add i64 %78, -40
  %82 = xor i64 %81, %79, !mcsema_real_eip !14
  %83 = and i64 %82, 16, !mcsema_real_eip !14
  %84 = icmp ne i64 %83, 0, !mcsema_real_eip !14
  store i1 %84, i1* %AF_val, !mcsema_real_eip !14
  %85 = trunc i64 %81 to i8, !mcsema_real_eip !14
  %86 = tail call i8 @llvm.ctpop.i8(i8 %85), !mcsema_real_eip !14
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  store i1 %88, i1* %PF_val, !mcsema_real_eip !14
  %89 = icmp eq i64 %81, 0, !mcsema_real_eip !14
  store i1 %89, i1* %ZF_val, !mcsema_real_eip !14
  %90 = icmp slt i64 %81, 0
  store i1 %90, i1* %SF_val, !mcsema_real_eip !14
  %91 = icmp ult i64 %79, 32, !mcsema_real_eip !14
  store i1 %91, i1* %CF_val, !mcsema_real_eip !14
  %92 = and i64 %82, %79, !mcsema_real_eip !14
  %93 = icmp slt i64 %92, 0
  store i1 %93, i1* %OF_val, !mcsema_real_eip !14
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !14
  %94 = load i64* %RBP_val, !mcsema_real_eip !15
  %95 = add i64 %94, -20, !mcsema_real_eip !15
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !15
  %97 = load i64* %RDI_val, !mcsema_real_eip !15
  %98 = trunc i64 %97 to i32, !mcsema_real_eip !15
  %99 = bitcast i64* %96 to i32*
  store i32 %98, i32* %99, !mcsema_real_eip !15
  %100 = load i64* %RBP_val, !mcsema_real_eip !16
  %101 = add i64 %100, -24, !mcsema_real_eip !16
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !16
  %103 = load i64* %RSI_val, !mcsema_real_eip !16
  %104 = trunc i64 %103 to i32, !mcsema_real_eip !16
  %105 = bitcast i64* %102 to i32*
  store i32 %104, i32* %105, !mcsema_real_eip !16
  %106 = load i64* %RBP_val, !mcsema_real_eip !17
  %107 = add i64 %106, -24, !mcsema_real_eip !17
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !17
  %109 = bitcast i64* %108 to i32*
  %110 = load i32* %109, !mcsema_real_eip !17
  %111 = zext i32 %110 to i64, !mcsema_real_eip !17
  store i64 %111, i64* %RAX_val, !mcsema_real_eip !17
  %112 = load i64* %RBP_val, !mcsema_real_eip !18
  %113 = add i64 %112, -20, !mcsema_real_eip !18
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !18
  %115 = bitcast i64* %114 to i32*
  %116 = load i32* %115, !mcsema_real_eip !18
  %117 = zext i32 %116 to i64, !mcsema_real_eip !18
  store i64 %117, i64* %RDX_val, !mcsema_real_eip !18
  %118 = load i64* %RAX_val, !mcsema_real_eip !19
  %119 = trunc i64 %118 to i32, !mcsema_real_eip !19
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %116, i32 %119)
  %120 = extractvalue { i32, i1 } %uadd, 0
  %121 = xor i32 %120, %119, !mcsema_real_eip !19
  %122 = xor i32 %121, %116, !mcsema_real_eip !19
  %123 = and i32 %122, 16, !mcsema_real_eip !19
  %124 = icmp ne i32 %123, 0, !mcsema_real_eip !19
  store i1 %124, i1* %AF_val, !mcsema_real_eip !19
  %125 = icmp slt i32 %120, 0
  store i1 %125, i1* %SF_val, !mcsema_real_eip !19
  %126 = icmp eq i32 %120, 0, !mcsema_real_eip !19
  store i1 %126, i1* %ZF_val, !mcsema_real_eip !19
  %127 = xor i32 %116, -2147483648, !mcsema_real_eip !19
  %128 = xor i32 %127, %119, !mcsema_real_eip !19
  %129 = and i32 %121, %128, !mcsema_real_eip !19
  %130 = icmp slt i32 %129, 0
  store i1 %130, i1* %OF_val, !mcsema_real_eip !19
  %131 = trunc i32 %120 to i8, !mcsema_real_eip !19
  %132 = tail call i8 @llvm.ctpop.i8(i8 %131), !mcsema_real_eip !19
  %133 = and i8 %132, 1
  %134 = icmp eq i8 %133, 0
  store i1 %134, i1* %PF_val, !mcsema_real_eip !19
  %135 = extractvalue { i32, i1 } %uadd, 1
  store i1 %135, i1* %CF_val, !mcsema_real_eip !19
  %136 = zext i32 %120 to i64, !mcsema_real_eip !19
  store i64 %136, i64* %RAX_val, !mcsema_real_eip !19
  %137 = load i64* %RBP_val, !mcsema_real_eip !20
  %138 = add i64 %137, -8, !mcsema_real_eip !20
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !20
  %140 = bitcast i64* %139 to i32*
  store i32 %120, i32* %140, !mcsema_real_eip !20
  %141 = load i64* %RBP_val, !mcsema_real_eip !21
  %142 = add i64 %141, -8, !mcsema_real_eip !21
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !21
  %144 = bitcast i64* %143 to i32*
  %145 = load i32* %144, !mcsema_real_eip !21
  %146 = zext i32 %145 to i64, !mcsema_real_eip !21
  store i64 %146, i64* %RSI_val, !mcsema_real_eip !22
  store i64 zext (i32 ptrtoint (%0* @data_0x6b to i32) to i64), i64* %RDI_val, !mcsema_real_eip !23
  %147 = tail call x86_64_sysvcc i64 @printf(i64 zext (i32 ptrtoint (%0* @data_0x6b to i32) to i64)), !mcsema_real_eip !24
  store i64 %147, i64* %RAX_val, !mcsema_real_eip !24
  %148 = load i64* %RBP_val, !mcsema_real_eip !25
  %149 = add i64 %148, -20, !mcsema_real_eip !25
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !25
  %151 = bitcast i64* %150 to i32*
  %152 = load i32* %151, !mcsema_real_eip !25
  %153 = add i32 %152, -40
  %154 = xor i32 %153, %152, !mcsema_real_eip !25
  %155 = and i32 %154, 16, !mcsema_real_eip !25
  %156 = icmp ne i32 %155, 0, !mcsema_real_eip !25
  store i1 %156, i1* %AF_val, !mcsema_real_eip !25
  %157 = trunc i32 %153 to i8, !mcsema_real_eip !25
  %158 = tail call i8 @llvm.ctpop.i8(i8 %157), !mcsema_real_eip !25
  %159 = and i8 %158, 1
  %160 = icmp eq i8 %159, 0
  store i1 %160, i1* %PF_val, !mcsema_real_eip !25
  %161 = icmp eq i32 %153, 0, !mcsema_real_eip !25
  store i1 %161, i1* %ZF_val, !mcsema_real_eip !25
  %162 = icmp slt i32 %153, 0
  store i1 %162, i1* %SF_val, !mcsema_real_eip !25
  %163 = icmp ult i32 %152, 40, !mcsema_real_eip !25
  store i1 %163, i1* %CF_val, !mcsema_real_eip !25
  %164 = and i32 %154, %152, !mcsema_real_eip !25
  %165 = icmp slt i32 %164, 0
  store i1 %165, i1* %OF_val, !mcsema_real_eip !25
  %166 = xor i1 %162, %165
  %167 = load i1* %ZF_val, !mcsema_real_eip !26
  %168 = or i1 %167, %166, !mcsema_real_eip !26
  %169 = load i64* %RBP_val, !mcsema_real_eip !27
  %170 = add i64 %169, -8, !mcsema_real_eip !27
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !27
  %172 = bitcast i64* %171 to i32*
  %173 = load i32* %172, !mcsema_real_eip !27
  %174 = zext i32 %173 to i64, !mcsema_real_eip !27
  store i64 %174, i64* %RAX_val, !mcsema_real_eip !27
  br i1 %168, label %block_0x3e, label %block_0x33, !mcsema_real_eip !26

block_0x3e:                                       ; preds = %entry
  %175 = add i32 %173, -10
  %176 = xor i32 %175, %173, !mcsema_real_eip !28
  %177 = and i32 %176, 16, !mcsema_real_eip !28
  %178 = icmp ne i32 %177, 0, !mcsema_real_eip !28
  store i1 %178, i1* %AF_val, !mcsema_real_eip !28
  %179 = trunc i32 %175 to i8, !mcsema_real_eip !28
  %180 = tail call i8 @llvm.ctpop.i8(i8 %179), !mcsema_real_eip !28
  %181 = and i8 %180, 1
  %182 = icmp eq i8 %181, 0
  store i1 %182, i1* %PF_val, !mcsema_real_eip !28
  %183 = icmp eq i32 %175, 0, !mcsema_real_eip !28
  store i1 %183, i1* %ZF_val, !mcsema_real_eip !28
  %184 = icmp slt i32 %175, 0
  store i1 %184, i1* %SF_val, !mcsema_real_eip !28
  %185 = icmp ult i32 %173, 10, !mcsema_real_eip !28
  store i1 %185, i1* %CF_val, !mcsema_real_eip !28
  %186 = and i32 %176, %173, !mcsema_real_eip !28
  %187 = icmp slt i32 %186, 0
  store i1 %187, i1* %OF_val, !mcsema_real_eip !28
  %188 = zext i32 %175 to i64, !mcsema_real_eip !28
  store i64 %188, i64* %RAX_val, !mcsema_real_eip !28
  %189 = load i64* %RBP_val, !mcsema_real_eip !29
  %190 = add i64 %189, -4, !mcsema_real_eip !29
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !29
  %192 = bitcast i64* %191 to i32*
  store i32 %175, i32* %192, !mcsema_real_eip !29
  %193 = load i64* %RBP_val, !mcsema_real_eip !30
  %194 = add i64 %193, -4, !mcsema_real_eip !30
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !30
  %196 = bitcast i64* %195 to i32*
  %197 = load i32* %196, !mcsema_real_eip !30
  %198 = zext i32 %197 to i64, !mcsema_real_eip !30
  store i64 %198, i64* %RAX_val, !mcsema_real_eip !30
  %199 = load i64* %RBP_val, !mcsema_real_eip !31
  store i64 %199, i64* %RSP_val, !mcsema_real_eip !31
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !31
  %201 = load i64* %200, !mcsema_real_eip !31
  store i64 %201, i64* %RBP_val, !mcsema_real_eip !31
  %202 = add i64 %199, 16, !mcsema_real_eip !32
  store i64 %202, i64* %RSP_val, !mcsema_real_eip !32
  %203 = load i64* %RAX_val, !mcsema_real_eip !32
  store i64 %203, i64* %RAX, !mcsema_real_eip !32
  %204 = load i64* %RBX_val, !mcsema_real_eip !32
  store i64 %204, i64* %RBX, !mcsema_real_eip !32
  %205 = load i64* %RCX_val, !mcsema_real_eip !32
  store i64 %205, i64* %RCX, !mcsema_real_eip !32
  %206 = load i64* %RDX_val, !mcsema_real_eip !32
  store i64 %206, i64* %RDX, !mcsema_real_eip !32
  %207 = load i64* %RSI_val, !mcsema_real_eip !32
  store i64 %207, i64* %RSI, !mcsema_real_eip !32
  %208 = load i64* %RDI_val, !mcsema_real_eip !32
  store i64 %208, i64* %RDI, !mcsema_real_eip !32
  %209 = load i64* %RSP_val, !mcsema_real_eip !32
  store i64 %209, i64* %RSP, !mcsema_real_eip !32
  %210 = load i64* %RBP_val, !mcsema_real_eip !32
  store i64 %210, i64* %RBP, !mcsema_real_eip !32
  %211 = load i64* %R8_val, !mcsema_real_eip !32
  store i64 %211, i64* %R8, !mcsema_real_eip !32
  %212 = load i64* %R9_val, !mcsema_real_eip !32
  store i64 %212, i64* %R9, !mcsema_real_eip !32
  %213 = load i64* %R10_val, !mcsema_real_eip !32
  store i64 %213, i64* %R10, !mcsema_real_eip !32
  %214 = load i64* %R11_val, !mcsema_real_eip !32
  store i64 %214, i64* %R11, !mcsema_real_eip !32
  %215 = load i64* %R12_val, !mcsema_real_eip !32
  store i64 %215, i64* %R12, !mcsema_real_eip !32
  %216 = load i64* %R13_val, !mcsema_real_eip !32
  store i64 %216, i64* %R13, !mcsema_real_eip !32
  %217 = load i64* %R14_val, !mcsema_real_eip !32
  store i64 %217, i64* %R14, !mcsema_real_eip !32
  %218 = load i64* %R15_val, !mcsema_real_eip !32
  store i64 %218, i64* %R15, !mcsema_real_eip !32
  %219 = load i64* %RIP_val, !mcsema_real_eip !32
  store i64 %219, i64* %RIP, !mcsema_real_eip !32
  %220 = load i1* %CF_val, !mcsema_real_eip !32
  store i1 %220, i1* %CF, align 1, !mcsema_real_eip !32
  %221 = load i1* %PF_val, !mcsema_real_eip !32
  store i1 %221, i1* %PF, align 1, !mcsema_real_eip !32
  %222 = load i1* %AF_val, !mcsema_real_eip !32
  store i1 %222, i1* %AF, align 1, !mcsema_real_eip !32
  %223 = load i1* %ZF_val, !mcsema_real_eip !32
  store i1 %223, i1* %ZF, align 1, !mcsema_real_eip !32
  %224 = load i1* %SF_val, !mcsema_real_eip !32
  store i1 %224, i1* %SF, align 1, !mcsema_real_eip !32
  %225 = load i1* %OF_val, !mcsema_real_eip !32
  store i1 %225, i1* %OF, align 1, !mcsema_real_eip !32
  %226 = load i1* %DF_val, !mcsema_real_eip !32
  store i1 %226, i1* %DF, align 1, !mcsema_real_eip !32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !32
  %227 = load i1* %FPU_B_val, !mcsema_real_eip !32
  store i1 %227, i1* %FPU_B, align 1, !mcsema_real_eip !32
  %228 = load i1* %FPU_C3_val, !mcsema_real_eip !32
  store i1 %228, i1* %FPU_C3, align 1, !mcsema_real_eip !32
  %229 = load i3* %FPU_TOP_val, !mcsema_real_eip !32
  store i3 %229, i3* %FPU_TOP, align 1, !mcsema_real_eip !32
  %230 = load i1* %FPU_C2_val, !mcsema_real_eip !32
  store i1 %230, i1* %FPU_C2, align 1, !mcsema_real_eip !32
  %231 = load i1* %FPU_C1_val, !mcsema_real_eip !32
  store i1 %231, i1* %FPU_C1, align 1, !mcsema_real_eip !32
  %232 = load i1* %FPU_C0_val, !mcsema_real_eip !32
  store i1 %232, i1* %FPU_C0, align 1, !mcsema_real_eip !32
  %233 = load i1* %FPU_ES_val, !mcsema_real_eip !32
  store i1 %233, i1* %FPU_ES, align 1, !mcsema_real_eip !32
  %234 = load i1* %FPU_SF_val, !mcsema_real_eip !32
  store i1 %234, i1* %FPU_SF, align 1, !mcsema_real_eip !32
  %235 = load i1* %FPU_PE_val, !mcsema_real_eip !32
  store i1 %235, i1* %FPU_PE, align 1, !mcsema_real_eip !32
  %236 = load i1* %FPU_UE_val, !mcsema_real_eip !32
  store i1 %236, i1* %FPU_UE, align 1, !mcsema_real_eip !32
  %237 = load i1* %FPU_OE_val, !mcsema_real_eip !32
  store i1 %237, i1* %FPU_OE, align 1, !mcsema_real_eip !32
  %238 = load i1* %FPU_ZE_val, !mcsema_real_eip !32
  store i1 %238, i1* %FPU_ZE, align 1, !mcsema_real_eip !32
  %239 = load i1* %FPU_DE_val, !mcsema_real_eip !32
  store i1 %239, i1* %FPU_DE, align 1, !mcsema_real_eip !32
  %240 = load i1* %FPU_IE_val, !mcsema_real_eip !32
  store i1 %240, i1* %FPU_IE, align 1, !mcsema_real_eip !32
  %241 = load i1* %FPU_X_val, !mcsema_real_eip !32
  store i1 %241, i1* %FPU_X, align 1, !mcsema_real_eip !32
  %242 = load i2* %FPU_RC_val, !mcsema_real_eip !32
  store i2 %242, i2* %FPU_RC, align 1, !mcsema_real_eip !32
  %243 = load i2* %FPU_PC_val, !mcsema_real_eip !32
  store i2 %243, i2* %FPU_PC, align 1, !mcsema_real_eip !32
  %244 = load i1* %FPU_PM_val, !mcsema_real_eip !32
  store i1 %244, i1* %FPU_PM, align 1, !mcsema_real_eip !32
  %245 = load i1* %FPU_UM_val, !mcsema_real_eip !32
  store i1 %245, i1* %FPU_UM, align 1, !mcsema_real_eip !32
  %246 = load i1* %FPU_OM_val, !mcsema_real_eip !32
  store i1 %246, i1* %FPU_OM, align 1, !mcsema_real_eip !32
  %247 = load i1* %FPU_ZM_val, !mcsema_real_eip !32
  store i1 %247, i1* %FPU_ZM, align 1, !mcsema_real_eip !32
  %248 = load i1* %FPU_DM_val, !mcsema_real_eip !32
  store i1 %248, i1* %FPU_DM, align 1, !mcsema_real_eip !32
  %249 = load i1* %FPU_IM_val, !mcsema_real_eip !32
  store i1 %249, i1* %FPU_IM, align 1, !mcsema_real_eip !32
  %250 = load i64* %53, align 4
  store i64 %250, i64* %52, align 4
  %251 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !32
  store i16 %251, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !32
  %252 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !32
  store i64 %252, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !32
  %253 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !32
  store i16 %253, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !32
  %254 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !32
  store i64 %254, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !32
  %255 = load i128* %XMM0_val, !mcsema_real_eip !32
  store i128 %255, i128* %XMM0, align 1, !mcsema_real_eip !32
  %256 = load i128* %XMM1_val, !mcsema_real_eip !32
  store i128 %256, i128* %XMM1, align 1, !mcsema_real_eip !32
  %257 = load i128* %XMM2_val, !mcsema_real_eip !32
  store i128 %257, i128* %XMM2, align 1, !mcsema_real_eip !32
  %258 = load i128* %XMM3_val, !mcsema_real_eip !32
  store i128 %258, i128* %XMM3, align 1, !mcsema_real_eip !32
  %259 = load i128* %XMM4_val, !mcsema_real_eip !32
  store i128 %259, i128* %XMM4, align 1, !mcsema_real_eip !32
  %260 = load i128* %XMM5_val, !mcsema_real_eip !32
  store i128 %260, i128* %XMM5, align 1, !mcsema_real_eip !32
  %261 = load i128* %XMM6_val, !mcsema_real_eip !32
  store i128 %261, i128* %XMM6, align 1, !mcsema_real_eip !32
  %262 = load i128* %XMM7_val, !mcsema_real_eip !32
  store i128 %262, i128* %XMM7, align 1, !mcsema_real_eip !32
  %263 = load i128* %XMM8_val, !mcsema_real_eip !32
  store i128 %263, i128* %XMM8, align 1, !mcsema_real_eip !32
  %264 = load i128* %XMM9_val, !mcsema_real_eip !32
  store i128 %264, i128* %XMM9, align 1, !mcsema_real_eip !32
  %265 = load i128* %XMM10_val, !mcsema_real_eip !32
  store i128 %265, i128* %XMM10, align 1, !mcsema_real_eip !32
  %266 = load i128* %XMM11_val, !mcsema_real_eip !32
  store i128 %266, i128* %XMM11, align 1, !mcsema_real_eip !32
  %267 = load i128* %XMM12_val, !mcsema_real_eip !32
  store i128 %267, i128* %XMM12, align 1, !mcsema_real_eip !32
  %268 = load i128* %XMM13_val, !mcsema_real_eip !32
  store i128 %268, i128* %XMM13, align 1, !mcsema_real_eip !32
  %269 = load i128* %XMM14_val, !mcsema_real_eip !32
  store i128 %269, i128* %XMM14, align 1, !mcsema_real_eip !32
  %270 = load i128* %XMM15_val, !mcsema_real_eip !32
  store i128 %270, i128* %XMM15, align 1, !mcsema_real_eip !32
  %271 = load i64* %STACK_BASE_val, !mcsema_real_eip !32
  store i64 %271, i64* %STACK_BASE, align 1, !mcsema_real_eip !32
  %272 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !32
  store i64 %272, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !32
  ret void, !mcsema_real_eip !32

block_0x33:                                       ; preds = %entry
  %uadd140 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %173, i32 10)
  %273 = extractvalue { i32, i1 } %uadd140, 0
  %274 = xor i32 %273, %173, !mcsema_real_eip !33
  %275 = and i32 %274, 16, !mcsema_real_eip !33
  %276 = icmp ne i32 %275, 0, !mcsema_real_eip !33
  store i1 %276, i1* %AF_val, !mcsema_real_eip !33
  %277 = icmp slt i32 %273, 0
  store i1 %277, i1* %SF_val, !mcsema_real_eip !33
  %278 = icmp eq i32 %273, 0, !mcsema_real_eip !33
  store i1 %278, i1* %ZF_val, !mcsema_real_eip !33
  %279 = xor i32 %173, -2147483648, !mcsema_real_eip !33
  %280 = and i32 %274, %279, !mcsema_real_eip !33
  %281 = icmp slt i32 %280, 0
  store i1 %281, i1* %OF_val, !mcsema_real_eip !33
  %282 = trunc i32 %273 to i8, !mcsema_real_eip !33
  %283 = tail call i8 @llvm.ctpop.i8(i8 %282), !mcsema_real_eip !33
  %284 = and i8 %283, 1
  %285 = icmp eq i8 %284, 0
  store i1 %285, i1* %PF_val, !mcsema_real_eip !33
  %286 = extractvalue { i32, i1 } %uadd140, 1
  store i1 %286, i1* %CF_val, !mcsema_real_eip !33
  %287 = zext i32 %273 to i64, !mcsema_real_eip !33
  store i64 %287, i64* %RAX_val, !mcsema_real_eip !33
  %288 = load i64* %RBP_val, !mcsema_real_eip !34
  %289 = add i64 %288, -4, !mcsema_real_eip !34
  %290 = inttoptr i64 %289 to i64*, !mcsema_real_eip !34
  %291 = bitcast i64* %290 to i32*
  store i32 %273, i32* %291, !mcsema_real_eip !34
  %292 = load i64* %RBP_val, !mcsema_real_eip !30
  %293 = add i64 %292, -4, !mcsema_real_eip !30
  %294 = inttoptr i64 %293 to i64*, !mcsema_real_eip !30
  %295 = bitcast i64* %294 to i32*
  %296 = load i32* %295, !mcsema_real_eip !30
  %297 = zext i32 %296 to i64, !mcsema_real_eip !30
  store i64 %297, i64* %RAX_val, !mcsema_real_eip !30
  %298 = load i64* %RBP_val, !mcsema_real_eip !31
  store i64 %298, i64* %RSP_val, !mcsema_real_eip !31
  %299 = inttoptr i64 %298 to i64*, !mcsema_real_eip !31
  %300 = load i64* %299, !mcsema_real_eip !31
  store i64 %300, i64* %RBP_val, !mcsema_real_eip !31
  %301 = add i64 %298, 16, !mcsema_real_eip !32
  store i64 %301, i64* %RSP_val, !mcsema_real_eip !32
  %302 = load i64* %RAX_val, !mcsema_real_eip !32
  store i64 %302, i64* %RAX, !mcsema_real_eip !32
  %303 = load i64* %RBX_val, !mcsema_real_eip !32
  store i64 %303, i64* %RBX, !mcsema_real_eip !32
  %304 = load i64* %RCX_val, !mcsema_real_eip !32
  store i64 %304, i64* %RCX, !mcsema_real_eip !32
  %305 = load i64* %RDX_val, !mcsema_real_eip !32
  store i64 %305, i64* %RDX, !mcsema_real_eip !32
  %306 = load i64* %RSI_val, !mcsema_real_eip !32
  store i64 %306, i64* %RSI, !mcsema_real_eip !32
  %307 = load i64* %RDI_val, !mcsema_real_eip !32
  store i64 %307, i64* %RDI, !mcsema_real_eip !32
  %308 = load i64* %RSP_val, !mcsema_real_eip !32
  store i64 %308, i64* %RSP, !mcsema_real_eip !32
  %309 = load i64* %RBP_val, !mcsema_real_eip !32
  store i64 %309, i64* %RBP, !mcsema_real_eip !32
  %310 = load i64* %R8_val, !mcsema_real_eip !32
  store i64 %310, i64* %R8, !mcsema_real_eip !32
  %311 = load i64* %R9_val, !mcsema_real_eip !32
  store i64 %311, i64* %R9, !mcsema_real_eip !32
  %312 = load i64* %R10_val, !mcsema_real_eip !32
  store i64 %312, i64* %R10, !mcsema_real_eip !32
  %313 = load i64* %R11_val, !mcsema_real_eip !32
  store i64 %313, i64* %R11, !mcsema_real_eip !32
  %314 = load i64* %R12_val, !mcsema_real_eip !32
  store i64 %314, i64* %R12, !mcsema_real_eip !32
  %315 = load i64* %R13_val, !mcsema_real_eip !32
  store i64 %315, i64* %R13, !mcsema_real_eip !32
  %316 = load i64* %R14_val, !mcsema_real_eip !32
  store i64 %316, i64* %R14, !mcsema_real_eip !32
  %317 = load i64* %R15_val, !mcsema_real_eip !32
  store i64 %317, i64* %R15, !mcsema_real_eip !32
  %318 = load i64* %RIP_val, !mcsema_real_eip !32
  store i64 %318, i64* %RIP, !mcsema_real_eip !32
  %319 = load i1* %CF_val, !mcsema_real_eip !32
  store i1 %319, i1* %CF, align 1, !mcsema_real_eip !32
  %320 = load i1* %PF_val, !mcsema_real_eip !32
  store i1 %320, i1* %PF, align 1, !mcsema_real_eip !32
  %321 = load i1* %AF_val, !mcsema_real_eip !32
  store i1 %321, i1* %AF, align 1, !mcsema_real_eip !32
  %322 = load i1* %ZF_val, !mcsema_real_eip !32
  store i1 %322, i1* %ZF, align 1, !mcsema_real_eip !32
  %323 = load i1* %SF_val, !mcsema_real_eip !32
  store i1 %323, i1* %SF, align 1, !mcsema_real_eip !32
  %324 = load i1* %OF_val, !mcsema_real_eip !32
  store i1 %324, i1* %OF, align 1, !mcsema_real_eip !32
  %325 = load i1* %DF_val, !mcsema_real_eip !32
  store i1 %325, i1* %DF, align 1, !mcsema_real_eip !32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !32
  %326 = load i1* %FPU_B_val, !mcsema_real_eip !32
  store i1 %326, i1* %FPU_B, align 1, !mcsema_real_eip !32
  %327 = load i1* %FPU_C3_val, !mcsema_real_eip !32
  store i1 %327, i1* %FPU_C3, align 1, !mcsema_real_eip !32
  %328 = load i3* %FPU_TOP_val, !mcsema_real_eip !32
  store i3 %328, i3* %FPU_TOP, align 1, !mcsema_real_eip !32
  %329 = load i1* %FPU_C2_val, !mcsema_real_eip !32
  store i1 %329, i1* %FPU_C2, align 1, !mcsema_real_eip !32
  %330 = load i1* %FPU_C1_val, !mcsema_real_eip !32
  store i1 %330, i1* %FPU_C1, align 1, !mcsema_real_eip !32
  %331 = load i1* %FPU_C0_val, !mcsema_real_eip !32
  store i1 %331, i1* %FPU_C0, align 1, !mcsema_real_eip !32
  %332 = load i1* %FPU_ES_val, !mcsema_real_eip !32
  store i1 %332, i1* %FPU_ES, align 1, !mcsema_real_eip !32
  %333 = load i1* %FPU_SF_val, !mcsema_real_eip !32
  store i1 %333, i1* %FPU_SF, align 1, !mcsema_real_eip !32
  %334 = load i1* %FPU_PE_val, !mcsema_real_eip !32
  store i1 %334, i1* %FPU_PE, align 1, !mcsema_real_eip !32
  %335 = load i1* %FPU_UE_val, !mcsema_real_eip !32
  store i1 %335, i1* %FPU_UE, align 1, !mcsema_real_eip !32
  %336 = load i1* %FPU_OE_val, !mcsema_real_eip !32
  store i1 %336, i1* %FPU_OE, align 1, !mcsema_real_eip !32
  %337 = load i1* %FPU_ZE_val, !mcsema_real_eip !32
  store i1 %337, i1* %FPU_ZE, align 1, !mcsema_real_eip !32
  %338 = load i1* %FPU_DE_val, !mcsema_real_eip !32
  store i1 %338, i1* %FPU_DE, align 1, !mcsema_real_eip !32
  %339 = load i1* %FPU_IE_val, !mcsema_real_eip !32
  store i1 %339, i1* %FPU_IE, align 1, !mcsema_real_eip !32
  %340 = load i1* %FPU_X_val, !mcsema_real_eip !32
  store i1 %340, i1* %FPU_X, align 1, !mcsema_real_eip !32
  %341 = load i2* %FPU_RC_val, !mcsema_real_eip !32
  store i2 %341, i2* %FPU_RC, align 1, !mcsema_real_eip !32
  %342 = load i2* %FPU_PC_val, !mcsema_real_eip !32
  store i2 %342, i2* %FPU_PC, align 1, !mcsema_real_eip !32
  %343 = load i1* %FPU_PM_val, !mcsema_real_eip !32
  store i1 %343, i1* %FPU_PM, align 1, !mcsema_real_eip !32
  %344 = load i1* %FPU_UM_val, !mcsema_real_eip !32
  store i1 %344, i1* %FPU_UM, align 1, !mcsema_real_eip !32
  %345 = load i1* %FPU_OM_val, !mcsema_real_eip !32
  store i1 %345, i1* %FPU_OM, align 1, !mcsema_real_eip !32
  %346 = load i1* %FPU_ZM_val, !mcsema_real_eip !32
  store i1 %346, i1* %FPU_ZM, align 1, !mcsema_real_eip !32
  %347 = load i1* %FPU_DM_val, !mcsema_real_eip !32
  store i1 %347, i1* %FPU_DM, align 1, !mcsema_real_eip !32
  %348 = load i1* %FPU_IM_val, !mcsema_real_eip !32
  store i1 %348, i1* %FPU_IM, align 1, !mcsema_real_eip !32
  %349 = load i64* %53, align 4
  store i64 %349, i64* %52, align 4
  %350 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !32
  store i16 %350, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !32
  %351 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !32
  store i64 %351, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !32
  %352 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !32
  store i16 %352, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !32
  %353 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !32
  store i64 %353, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !32
  %354 = load i128* %XMM0_val, !mcsema_real_eip !32
  store i128 %354, i128* %XMM0, align 1, !mcsema_real_eip !32
  %355 = load i128* %XMM1_val, !mcsema_real_eip !32
  store i128 %355, i128* %XMM1, align 1, !mcsema_real_eip !32
  %356 = load i128* %XMM2_val, !mcsema_real_eip !32
  store i128 %356, i128* %XMM2, align 1, !mcsema_real_eip !32
  %357 = load i128* %XMM3_val, !mcsema_real_eip !32
  store i128 %357, i128* %XMM3, align 1, !mcsema_real_eip !32
  %358 = load i128* %XMM4_val, !mcsema_real_eip !32
  store i128 %358, i128* %XMM4, align 1, !mcsema_real_eip !32
  %359 = load i128* %XMM5_val, !mcsema_real_eip !32
  store i128 %359, i128* %XMM5, align 1, !mcsema_real_eip !32
  %360 = load i128* %XMM6_val, !mcsema_real_eip !32
  store i128 %360, i128* %XMM6, align 1, !mcsema_real_eip !32
  %361 = load i128* %XMM7_val, !mcsema_real_eip !32
  store i128 %361, i128* %XMM7, align 1, !mcsema_real_eip !32
  %362 = load i128* %XMM8_val, !mcsema_real_eip !32
  store i128 %362, i128* %XMM8, align 1, !mcsema_real_eip !32
  %363 = load i128* %XMM9_val, !mcsema_real_eip !32
  store i128 %363, i128* %XMM9, align 1, !mcsema_real_eip !32
  %364 = load i128* %XMM10_val, !mcsema_real_eip !32
  store i128 %364, i128* %XMM10, align 1, !mcsema_real_eip !32
  %365 = load i128* %XMM11_val, !mcsema_real_eip !32
  store i128 %365, i128* %XMM11, align 1, !mcsema_real_eip !32
  %366 = load i128* %XMM12_val, !mcsema_real_eip !32
  store i128 %366, i128* %XMM12, align 1, !mcsema_real_eip !32
  %367 = load i128* %XMM13_val, !mcsema_real_eip !32
  store i128 %367, i128* %XMM13, align 1, !mcsema_real_eip !32
  %368 = load i128* %XMM14_val, !mcsema_real_eip !32
  store i128 %368, i128* %XMM14, align 1, !mcsema_real_eip !32
  %369 = load i128* %XMM15_val, !mcsema_real_eip !32
  store i128 %369, i128* %XMM15, align 1, !mcsema_real_eip !32
  %370 = load i64* %STACK_BASE_val, !mcsema_real_eip !32
  store i64 %370, i64* %STACK_BASE, align 1, !mcsema_real_eip !32
  %371 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !32
  store i64 %371, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !32
  ret void, !mcsema_real_eip !32
}

declare x86_64_sysvcc i64 @printf(i64 inreg)

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_4c(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 76, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 77, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = metadata !{i64 80, [16 x i8] c"\09subq\09$16, %rsp\00"}
!5 = metadata !{i64 84, [16 x i8] c"\09movl\09$20, %esi\00"}
!6 = metadata !{i64 89, [16 x i8] c"\09movl\09$10, %edi\00"}
!7 = metadata !{i64 94, [9 x i8] c"\09callq\090\00"}
!8 = metadata !{i64 99, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!9 = metadata !{i64 102, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!10 = metadata !{i64 105, [7 x i8] c"\09leave\00"}
!11 = metadata !{i64 106, [6 x i8] c"\09retq\00"}
!12 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!13 = metadata !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!14 = metadata !{i64 4, [16 x i8] c"\09subq\09$32, %rsp\00"}
!15 = metadata !{i64 8, [22 x i8] c"\09movl\09%edi, -20(%rbp)\00"}
!16 = metadata !{i64 11, [22 x i8] c"\09movl\09%esi, -24(%rbp)\00"}
!17 = metadata !{i64 14, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!18 = metadata !{i64 17, [22 x i8] c"\09movl\09-20(%rbp), %edx\00"}
!19 = metadata !{i64 20, [17 x i8] c"\09addl\09%edx, %eax\00"}
!20 = metadata !{i64 22, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!21 = metadata !{i64 25, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!22 = metadata !{i64 28, [17 x i8] c"\09movl\09%eax, %esi\00"}
!23 = metadata !{i64 30, [15 x i8] c"\09movl\09$0, %edi\00"}
!24 = metadata !{i64 40, [9 x i8] c"\09callq\090\00"}
!25 = metadata !{i64 45, [21 x i8] c"\09cmpl\09$40, -20(%rbp)\00"}
!26 = metadata !{i64 49, [8 x i8] c"\09jle\0911\00"}
!27 = metadata !{i64 62, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!28 = metadata !{i64 65, [16 x i8] c"\09subl\09$10, %eax\00"}
!29 = metadata !{i64 68, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!30 = metadata !{i64 71, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!31 = metadata !{i64 74, [7 x i8] c"\09leave\00"}
!32 = metadata !{i64 75, [6 x i8] c"\09retq\00"}
!33 = metadata !{i64 54, [16 x i8] c"\09addl\09$10, %eax\00"}
!34 = metadata !{i64 57, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
