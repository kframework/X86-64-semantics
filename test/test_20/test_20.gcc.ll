; ModuleID = 'test_20.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [450 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x226 = internal constant %0 <{ [450 x i8] c"Input was zero\00Input was one\00Input was two\00Input was four\00Input was six\00Input was twelve\00Input was thirteen\00Input was nineteen\00\00Input was two hundred fifty-five\00Really big input:  0x12389\00Really big input:  0x1238A\00Really big input:  0x1238B\00Really big input:  0x1238C\00Really big input:  0x1238D\00Really big input:  0x1238F\00Really big input:  0x12390\00Really big input:  0x12391\00Really big input:  0x12392\00Really big input:  0x12393\00Unknown input: %d\0A\00" }>, align 64

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
  %94 = load i64* %RBP_val, !mcsema_real_eip !5
  %95 = add i64 %94, -4, !mcsema_real_eip !5
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !5
  %97 = load i64* %RDI_val, !mcsema_real_eip !5
  %98 = trunc i64 %97 to i32, !mcsema_real_eip !5
  %99 = bitcast i64* %96 to i32*
  store i32 %98, i32* %99, !mcsema_real_eip !5
  %100 = load i64* %RBP_val, !mcsema_real_eip !6
  %101 = add i64 %100, -4, !mcsema_real_eip !6
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !6
  %103 = bitcast i64* %102 to i32*
  %104 = load i32* %103, !mcsema_real_eip !6
  %105 = zext i32 %104 to i64, !mcsema_real_eip !6
  store i64 %105, i64* %RAX_val, !mcsema_real_eip !6
  %106 = add i32 %104, -74633
  %107 = xor i32 %106, %104, !mcsema_real_eip !7
  %108 = and i32 %107, 16, !mcsema_real_eip !7
  %109 = icmp ne i32 %108, 0, !mcsema_real_eip !7
  store i1 %109, i1* %AF_val, !mcsema_real_eip !7
  %110 = trunc i32 %106 to i8, !mcsema_real_eip !7
  %111 = tail call i8 @llvm.ctpop.i8(i8 %110), !mcsema_real_eip !7
  %112 = and i8 %111, 1
  %113 = icmp eq i8 %112, 0
  store i1 %113, i1* %PF_val, !mcsema_real_eip !7
  %114 = icmp eq i32 %106, 0, !mcsema_real_eip !7
  store i1 %114, i1* %ZF_val, !mcsema_real_eip !7
  %115 = icmp slt i32 %106, 0
  store i1 %115, i1* %SF_val, !mcsema_real_eip !7
  %116 = icmp ult i32 %104, 74633, !mcsema_real_eip !7
  store i1 %116, i1* %CF_val, !mcsema_real_eip !7
  %117 = and i32 %107, %104, !mcsema_real_eip !7
  %118 = icmp slt i32 %117, 0
  store i1 %118, i1* %OF_val, !mcsema_real_eip !7
  %119 = load i1* %ZF_val, !mcsema_real_eip !8
  br i1 %119, label %block_0x190, label %block_0x19, !mcsema_real_eip !8

block_0x190:                                      ; preds = %entry
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 161) to i64), i64* %RDI_val, !mcsema_real_eip !9
  %120 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 161) to i64)), !mcsema_real_eip !10
  store i64 %120, i64* %RAX_val, !mcsema_real_eip !10
  br label %block_0x21f, !mcsema_real_eip !11

block_0x19:                                       ; preds = %entry
  %121 = load i64* %RAX_val, !mcsema_real_eip !12
  %122 = trunc i64 %121 to i32, !mcsema_real_eip !12
  %123 = add i32 %122, -74633
  %124 = xor i32 %123, %122, !mcsema_real_eip !12
  %125 = and i32 %124, 16, !mcsema_real_eip !12
  %126 = icmp ne i32 %125, 0, !mcsema_real_eip !12
  store i1 %126, i1* %AF_val, !mcsema_real_eip !12
  %127 = trunc i32 %123 to i8, !mcsema_real_eip !12
  %128 = tail call i8 @llvm.ctpop.i8(i8 %127), !mcsema_real_eip !12
  %129 = and i8 %128, 1
  %130 = icmp eq i8 %129, 0
  store i1 %130, i1* %PF_val, !mcsema_real_eip !12
  %131 = icmp eq i32 %123, 0, !mcsema_real_eip !12
  store i1 %131, i1* %ZF_val, !mcsema_real_eip !12
  %132 = icmp slt i32 %123, 0
  store i1 %132, i1* %SF_val, !mcsema_real_eip !12
  %133 = icmp ult i32 %122, 74633, !mcsema_real_eip !12
  store i1 %133, i1* %CF_val, !mcsema_real_eip !12
  %134 = and i32 %124, %122, !mcsema_real_eip !12
  %135 = icmp slt i32 %134, 0
  store i1 %135, i1* %OF_val, !mcsema_real_eip !12
  %tmp = xor i1 %132, %135
  %136 = load i1* %ZF_val, !mcsema_real_eip !13
  %.demorgan = or i1 %136, %tmp
  %137 = load i64* %RAX_val, !mcsema_real_eip !14
  %138 = trunc i64 %137 to i32, !mcsema_real_eip !14
  br i1 %.demorgan, label %block_0x20, label %block_0x95, !mcsema_real_eip !13

block_0x95:                                       ; preds = %block_0x19
  %139 = add i32 %138, -74639
  %140 = xor i32 %139, %138, !mcsema_real_eip !14
  %141 = and i32 %140, 16, !mcsema_real_eip !14
  %142 = icmp ne i32 %141, 0, !mcsema_real_eip !14
  store i1 %142, i1* %AF_val, !mcsema_real_eip !14
  %143 = trunc i32 %139 to i8, !mcsema_real_eip !14
  %144 = tail call i8 @llvm.ctpop.i8(i8 %143), !mcsema_real_eip !14
  %145 = and i8 %144, 1
  %146 = icmp eq i8 %145, 0
  store i1 %146, i1* %PF_val, !mcsema_real_eip !14
  %147 = icmp eq i32 %139, 0, !mcsema_real_eip !14
  store i1 %147, i1* %ZF_val, !mcsema_real_eip !14
  %148 = icmp slt i32 %139, 0
  store i1 %148, i1* %SF_val, !mcsema_real_eip !14
  %149 = icmp ult i32 %138, 74639, !mcsema_real_eip !14
  store i1 %149, i1* %CF_val, !mcsema_real_eip !14
  %150 = and i32 %140, %138, !mcsema_real_eip !14
  %151 = icmp slt i32 %150, 0
  store i1 %151, i1* %OF_val, !mcsema_real_eip !14
  %152 = load i1* %ZF_val, !mcsema_real_eip !15
  br i1 %152, label %block_0x1cf, label %block_0xa0, !mcsema_real_eip !15

block_0x20:                                       ; preds = %block_0x19
  %153 = add i32 %138, -6
  %154 = xor i32 %153, %138, !mcsema_real_eip !16
  %155 = and i32 %154, 16, !mcsema_real_eip !16
  %156 = icmp ne i32 %155, 0, !mcsema_real_eip !16
  store i1 %156, i1* %AF_val, !mcsema_real_eip !16
  %157 = trunc i32 %153 to i8, !mcsema_real_eip !16
  %158 = tail call i8 @llvm.ctpop.i8(i8 %157), !mcsema_real_eip !16
  %159 = and i8 %158, 1
  %160 = icmp eq i8 %159, 0
  store i1 %160, i1* %PF_val, !mcsema_real_eip !16
  %161 = icmp eq i32 %153, 0, !mcsema_real_eip !16
  store i1 %161, i1* %ZF_val, !mcsema_real_eip !16
  %162 = icmp slt i32 %153, 0
  store i1 %162, i1* %SF_val, !mcsema_real_eip !16
  %163 = icmp ult i32 %138, 6, !mcsema_real_eip !16
  store i1 %163, i1* %CF_val, !mcsema_real_eip !16
  %164 = and i32 %154, %138, !mcsema_real_eip !16
  %165 = icmp slt i32 %164, 0
  store i1 %165, i1* %OF_val, !mcsema_real_eip !16
  %166 = load i1* %ZF_val, !mcsema_real_eip !17
  br i1 %166, label %block_0x145, label %block_0x29, !mcsema_real_eip !17

block_0x21f:                                      ; preds = %block_0x1ff, %block_0x1c3, %block_0x181, %block_0x136, %block_0x1f3, %block_0x1b7, %block_0x172, %block_0x154, %block_0x127, %block_0x109, %block_0x1db, %block_0x19f, %block_0x1e7, %block_0x1ab, %block_0x163, %block_0x118, %block_0x1cf, %block_0x145, %block_0x190
  store i64 0, i64* %RAX_val, !mcsema_real_eip !18
  %167 = load i64* %RBP_val, !mcsema_real_eip !19
  store i64 %167, i64* %RSP_val, !mcsema_real_eip !19
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !19
  %169 = load i64* %168, !mcsema_real_eip !19
  store i64 %169, i64* %RBP_val, !mcsema_real_eip !19
  %170 = add i64 %167, 16, !mcsema_real_eip !20
  store i64 %170, i64* %RSP_val, !mcsema_real_eip !20
  %171 = load i64* %RAX_val, !mcsema_real_eip !20
  store i64 %171, i64* %RAX, !mcsema_real_eip !20
  %172 = load i64* %RBX_val, !mcsema_real_eip !20
  store i64 %172, i64* %RBX, !mcsema_real_eip !20
  %173 = load i64* %RCX_val, !mcsema_real_eip !20
  store i64 %173, i64* %RCX, !mcsema_real_eip !20
  %174 = load i64* %RDX_val, !mcsema_real_eip !20
  store i64 %174, i64* %RDX, !mcsema_real_eip !20
  %175 = load i64* %RSI_val, !mcsema_real_eip !20
  store i64 %175, i64* %RSI, !mcsema_real_eip !20
  %176 = load i64* %RDI_val, !mcsema_real_eip !20
  store i64 %176, i64* %RDI, !mcsema_real_eip !20
  %177 = load i64* %RSP_val, !mcsema_real_eip !20
  store i64 %177, i64* %RSP, !mcsema_real_eip !20
  %178 = load i64* %RBP_val, !mcsema_real_eip !20
  store i64 %178, i64* %RBP, !mcsema_real_eip !20
  %179 = load i64* %R8_val, !mcsema_real_eip !20
  store i64 %179, i64* %R8, !mcsema_real_eip !20
  %180 = load i64* %R9_val, !mcsema_real_eip !20
  store i64 %180, i64* %R9, !mcsema_real_eip !20
  %181 = load i64* %R10_val, !mcsema_real_eip !20
  store i64 %181, i64* %R10, !mcsema_real_eip !20
  %182 = load i64* %R11_val, !mcsema_real_eip !20
  store i64 %182, i64* %R11, !mcsema_real_eip !20
  %183 = load i64* %R12_val, !mcsema_real_eip !20
  store i64 %183, i64* %R12, !mcsema_real_eip !20
  %184 = load i64* %R13_val, !mcsema_real_eip !20
  store i64 %184, i64* %R13, !mcsema_real_eip !20
  %185 = load i64* %R14_val, !mcsema_real_eip !20
  store i64 %185, i64* %R14, !mcsema_real_eip !20
  %186 = load i64* %R15_val, !mcsema_real_eip !20
  store i64 %186, i64* %R15, !mcsema_real_eip !20
  %187 = load i64* %RIP_val, !mcsema_real_eip !20
  store i64 %187, i64* %RIP, !mcsema_real_eip !20
  %188 = load i1* %CF_val, !mcsema_real_eip !20
  store i1 %188, i1* %CF, align 1, !mcsema_real_eip !20
  %189 = load i1* %PF_val, !mcsema_real_eip !20
  store i1 %189, i1* %PF, align 1, !mcsema_real_eip !20
  %190 = load i1* %AF_val, !mcsema_real_eip !20
  store i1 %190, i1* %AF, align 1, !mcsema_real_eip !20
  %191 = load i1* %ZF_val, !mcsema_real_eip !20
  store i1 %191, i1* %ZF, align 1, !mcsema_real_eip !20
  %192 = load i1* %SF_val, !mcsema_real_eip !20
  store i1 %192, i1* %SF, align 1, !mcsema_real_eip !20
  %193 = load i1* %OF_val, !mcsema_real_eip !20
  store i1 %193, i1* %OF, align 1, !mcsema_real_eip !20
  %194 = load i1* %DF_val, !mcsema_real_eip !20
  store i1 %194, i1* %DF, align 1, !mcsema_real_eip !20
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !20
  %195 = load i1* %FPU_B_val, !mcsema_real_eip !20
  store i1 %195, i1* %FPU_B, align 1, !mcsema_real_eip !20
  %196 = load i1* %FPU_C3_val, !mcsema_real_eip !20
  store i1 %196, i1* %FPU_C3, align 1, !mcsema_real_eip !20
  %197 = load i3* %FPU_TOP_val, !mcsema_real_eip !20
  store i3 %197, i3* %FPU_TOP, align 1, !mcsema_real_eip !20
  %198 = load i1* %FPU_C2_val, !mcsema_real_eip !20
  store i1 %198, i1* %FPU_C2, align 1, !mcsema_real_eip !20
  %199 = load i1* %FPU_C1_val, !mcsema_real_eip !20
  store i1 %199, i1* %FPU_C1, align 1, !mcsema_real_eip !20
  %200 = load i1* %FPU_C0_val, !mcsema_real_eip !20
  store i1 %200, i1* %FPU_C0, align 1, !mcsema_real_eip !20
  %201 = load i1* %FPU_ES_val, !mcsema_real_eip !20
  store i1 %201, i1* %FPU_ES, align 1, !mcsema_real_eip !20
  %202 = load i1* %FPU_SF_val, !mcsema_real_eip !20
  store i1 %202, i1* %FPU_SF, align 1, !mcsema_real_eip !20
  %203 = load i1* %FPU_PE_val, !mcsema_real_eip !20
  store i1 %203, i1* %FPU_PE, align 1, !mcsema_real_eip !20
  %204 = load i1* %FPU_UE_val, !mcsema_real_eip !20
  store i1 %204, i1* %FPU_UE, align 1, !mcsema_real_eip !20
  %205 = load i1* %FPU_OE_val, !mcsema_real_eip !20
  store i1 %205, i1* %FPU_OE, align 1, !mcsema_real_eip !20
  %206 = load i1* %FPU_ZE_val, !mcsema_real_eip !20
  store i1 %206, i1* %FPU_ZE, align 1, !mcsema_real_eip !20
  %207 = load i1* %FPU_DE_val, !mcsema_real_eip !20
  store i1 %207, i1* %FPU_DE, align 1, !mcsema_real_eip !20
  %208 = load i1* %FPU_IE_val, !mcsema_real_eip !20
  store i1 %208, i1* %FPU_IE, align 1, !mcsema_real_eip !20
  %209 = load i1* %FPU_X_val, !mcsema_real_eip !20
  store i1 %209, i1* %FPU_X, align 1, !mcsema_real_eip !20
  %210 = load i2* %FPU_RC_val, !mcsema_real_eip !20
  store i2 %210, i2* %FPU_RC, align 1, !mcsema_real_eip !20
  %211 = load i2* %FPU_PC_val, !mcsema_real_eip !20
  store i2 %211, i2* %FPU_PC, align 1, !mcsema_real_eip !20
  %212 = load i1* %FPU_PM_val, !mcsema_real_eip !20
  store i1 %212, i1* %FPU_PM, align 1, !mcsema_real_eip !20
  %213 = load i1* %FPU_UM_val, !mcsema_real_eip !20
  store i1 %213, i1* %FPU_UM, align 1, !mcsema_real_eip !20
  %214 = load i1* %FPU_OM_val, !mcsema_real_eip !20
  store i1 %214, i1* %FPU_OM, align 1, !mcsema_real_eip !20
  %215 = load i1* %FPU_ZM_val, !mcsema_real_eip !20
  store i1 %215, i1* %FPU_ZM, align 1, !mcsema_real_eip !20
  %216 = load i1* %FPU_DM_val, !mcsema_real_eip !20
  store i1 %216, i1* %FPU_DM, align 1, !mcsema_real_eip !20
  %217 = load i1* %FPU_IM_val, !mcsema_real_eip !20
  store i1 %217, i1* %FPU_IM, align 1, !mcsema_real_eip !20
  %218 = load i64* %53, align 4
  store i64 %218, i64* %52, align 4
  %219 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !20
  store i16 %219, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !20
  %220 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !20
  store i64 %220, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !20
  %221 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !20
  store i16 %221, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !20
  %222 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !20
  store i64 %222, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !20
  %223 = load i128* %XMM0_val, !mcsema_real_eip !20
  store i128 %223, i128* %XMM0, align 1, !mcsema_real_eip !20
  %224 = load i128* %XMM1_val, !mcsema_real_eip !20
  store i128 %224, i128* %XMM1, align 1, !mcsema_real_eip !20
  %225 = load i128* %XMM2_val, !mcsema_real_eip !20
  store i128 %225, i128* %XMM2, align 1, !mcsema_real_eip !20
  %226 = load i128* %XMM3_val, !mcsema_real_eip !20
  store i128 %226, i128* %XMM3, align 1, !mcsema_real_eip !20
  %227 = load i128* %XMM4_val, !mcsema_real_eip !20
  store i128 %227, i128* %XMM4, align 1, !mcsema_real_eip !20
  %228 = load i128* %XMM5_val, !mcsema_real_eip !20
  store i128 %228, i128* %XMM5, align 1, !mcsema_real_eip !20
  %229 = load i128* %XMM6_val, !mcsema_real_eip !20
  store i128 %229, i128* %XMM6, align 1, !mcsema_real_eip !20
  %230 = load i128* %XMM7_val, !mcsema_real_eip !20
  store i128 %230, i128* %XMM7, align 1, !mcsema_real_eip !20
  %231 = load i128* %XMM8_val, !mcsema_real_eip !20
  store i128 %231, i128* %XMM8, align 1, !mcsema_real_eip !20
  %232 = load i128* %XMM9_val, !mcsema_real_eip !20
  store i128 %232, i128* %XMM9, align 1, !mcsema_real_eip !20
  %233 = load i128* %XMM10_val, !mcsema_real_eip !20
  store i128 %233, i128* %XMM10, align 1, !mcsema_real_eip !20
  %234 = load i128* %XMM11_val, !mcsema_real_eip !20
  store i128 %234, i128* %XMM11, align 1, !mcsema_real_eip !20
  %235 = load i128* %XMM12_val, !mcsema_real_eip !20
  store i128 %235, i128* %XMM12, align 1, !mcsema_real_eip !20
  %236 = load i128* %XMM13_val, !mcsema_real_eip !20
  store i128 %236, i128* %XMM13, align 1, !mcsema_real_eip !20
  %237 = load i128* %XMM14_val, !mcsema_real_eip !20
  store i128 %237, i128* %XMM14, align 1, !mcsema_real_eip !20
  %238 = load i128* %XMM15_val, !mcsema_real_eip !20
  store i128 %238, i128* %XMM15, align 1, !mcsema_real_eip !20
  %239 = load i64* %STACK_BASE_val, !mcsema_real_eip !20
  store i64 %239, i64* %STACK_BASE, align 1, !mcsema_real_eip !20
  %240 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !20
  store i64 %240, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !20
  ret void, !mcsema_real_eip !20

block_0x145:                                      ; preds = %block_0x20
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 58) to i64), i64* %RDI_val, !mcsema_real_eip !21
  %241 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 58) to i64)), !mcsema_real_eip !22
  store i64 %241, i64* %RAX_val, !mcsema_real_eip !22
  br label %block_0x21f, !mcsema_real_eip !23

block_0x29:                                       ; preds = %block_0x20
  %242 = load i64* %RAX_val, !mcsema_real_eip !24
  %243 = trunc i64 %242 to i32, !mcsema_real_eip !24
  %244 = add i32 %243, -6
  %245 = xor i32 %244, %243, !mcsema_real_eip !24
  %246 = and i32 %245, 16, !mcsema_real_eip !24
  %247 = icmp ne i32 %246, 0, !mcsema_real_eip !24
  store i1 %247, i1* %AF_val, !mcsema_real_eip !24
  %248 = trunc i32 %244 to i8, !mcsema_real_eip !24
  %249 = tail call i8 @llvm.ctpop.i8(i8 %248), !mcsema_real_eip !24
  %250 = and i8 %249, 1
  %251 = icmp eq i8 %250, 0
  store i1 %251, i1* %PF_val, !mcsema_real_eip !24
  %252 = icmp eq i32 %244, 0, !mcsema_real_eip !24
  store i1 %252, i1* %ZF_val, !mcsema_real_eip !24
  %253 = icmp slt i32 %244, 0
  store i1 %253, i1* %SF_val, !mcsema_real_eip !24
  %254 = icmp ult i32 %243, 6, !mcsema_real_eip !24
  store i1 %254, i1* %CF_val, !mcsema_real_eip !24
  %255 = and i32 %245, %243, !mcsema_real_eip !24
  %256 = icmp slt i32 %255, 0
  store i1 %256, i1* %OF_val, !mcsema_real_eip !24
  %tmp140 = xor i1 %253, %256
  %257 = load i1* %ZF_val, !mcsema_real_eip !25
  %.demorgan142 = or i1 %257, %tmp140
  %258 = load i64* %RAX_val, !mcsema_real_eip !26
  %259 = trunc i64 %258 to i32, !mcsema_real_eip !26
  br i1 %.demorgan142, label %block_0x2e, label %block_0x60, !mcsema_real_eip !25

block_0x1cf:                                      ; preds = %block_0x95
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 296) to i64), i64* %RDI_val, !mcsema_real_eip !27
  %260 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 296) to i64)), !mcsema_real_eip !28
  store i64 %260, i64* %RAX_val, !mcsema_real_eip !28
  br label %block_0x21f, !mcsema_real_eip !29

block_0xa0:                                       ; preds = %block_0x95
  %261 = load i64* %RAX_val, !mcsema_real_eip !30
  %262 = trunc i64 %261 to i32, !mcsema_real_eip !30
  %263 = add i32 %262, -74639
  %264 = xor i32 %263, %262, !mcsema_real_eip !30
  %265 = and i32 %264, 16, !mcsema_real_eip !30
  %266 = icmp ne i32 %265, 0, !mcsema_real_eip !30
  store i1 %266, i1* %AF_val, !mcsema_real_eip !30
  %267 = trunc i32 %263 to i8, !mcsema_real_eip !30
  %268 = tail call i8 @llvm.ctpop.i8(i8 %267), !mcsema_real_eip !30
  %269 = and i8 %268, 1
  %270 = icmp eq i8 %269, 0
  store i1 %270, i1* %PF_val, !mcsema_real_eip !30
  %271 = icmp eq i32 %263, 0, !mcsema_real_eip !30
  store i1 %271, i1* %ZF_val, !mcsema_real_eip !30
  %272 = icmp slt i32 %263, 0
  store i1 %272, i1* %SF_val, !mcsema_real_eip !30
  %273 = icmp ult i32 %262, 74639, !mcsema_real_eip !30
  store i1 %273, i1* %CF_val, !mcsema_real_eip !30
  %274 = and i32 %264, %262, !mcsema_real_eip !30
  %275 = icmp slt i32 %274, 0
  store i1 %275, i1* %OF_val, !mcsema_real_eip !30
  %tmp149 = xor i1 %272, %275
  %276 = load i1* %ZF_val, !mcsema_real_eip !31
  %.demorgan151 = or i1 %276, %tmp149
  %277 = load i64* %RAX_val, !mcsema_real_eip !32
  %278 = trunc i64 %277 to i32, !mcsema_real_eip !32
  br i1 %.demorgan151, label %block_0xa7, label %block_0xd8, !mcsema_real_eip !31

block_0x60:                                       ; preds = %block_0x29
  %279 = add i32 %259, -13
  %280 = xor i32 %279, %259, !mcsema_real_eip !26
  %281 = and i32 %280, 16, !mcsema_real_eip !26
  %282 = icmp ne i32 %281, 0, !mcsema_real_eip !26
  store i1 %282, i1* %AF_val, !mcsema_real_eip !26
  %283 = trunc i32 %279 to i8, !mcsema_real_eip !26
  %284 = tail call i8 @llvm.ctpop.i8(i8 %283), !mcsema_real_eip !26
  %285 = and i8 %284, 1
  %286 = icmp eq i8 %285, 0
  store i1 %286, i1* %PF_val, !mcsema_real_eip !26
  %287 = icmp eq i32 %279, 0, !mcsema_real_eip !26
  store i1 %287, i1* %ZF_val, !mcsema_real_eip !26
  %288 = icmp slt i32 %279, 0
  store i1 %288, i1* %SF_val, !mcsema_real_eip !26
  %289 = icmp ult i32 %259, 13, !mcsema_real_eip !26
  store i1 %289, i1* %CF_val, !mcsema_real_eip !26
  %290 = and i32 %280, %259, !mcsema_real_eip !26
  %291 = icmp slt i32 %290, 0
  store i1 %291, i1* %OF_val, !mcsema_real_eip !26
  %292 = load i1* %ZF_val, !mcsema_real_eip !33
  br i1 %292, label %block_0x163, label %block_0x69, !mcsema_real_eip !33

block_0x2e:                                       ; preds = %block_0x29
  %293 = add i32 %259, -1
  %294 = xor i32 %293, %259, !mcsema_real_eip !34
  %295 = and i32 %294, 16, !mcsema_real_eip !34
  %296 = icmp ne i32 %295, 0, !mcsema_real_eip !34
  store i1 %296, i1* %AF_val, !mcsema_real_eip !34
  %297 = trunc i32 %293 to i8, !mcsema_real_eip !34
  %298 = tail call i8 @llvm.ctpop.i8(i8 %297), !mcsema_real_eip !34
  %299 = and i8 %298, 1
  %300 = icmp eq i8 %299, 0
  store i1 %300, i1* %PF_val, !mcsema_real_eip !34
  %301 = icmp eq i32 %293, 0, !mcsema_real_eip !34
  store i1 %301, i1* %ZF_val, !mcsema_real_eip !34
  %302 = icmp slt i32 %293, 0
  store i1 %302, i1* %SF_val, !mcsema_real_eip !34
  %303 = icmp eq i32 %259, 0
  store i1 %303, i1* %CF_val, !mcsema_real_eip !34
  %304 = and i32 %294, %259, !mcsema_real_eip !34
  %305 = icmp slt i32 %304, 0
  store i1 %305, i1* %OF_val, !mcsema_real_eip !34
  %306 = load i1* %ZF_val, !mcsema_real_eip !35
  br i1 %306, label %block_0x118, label %block_0x37, !mcsema_real_eip !35

block_0xd8:                                       ; preds = %block_0xa0
  %307 = add i32 %278, -74641
  %308 = xor i32 %307, %278, !mcsema_real_eip !32
  %309 = and i32 %308, 16
  %310 = icmp eq i32 %309, 0
  store i1 %310, i1* %AF_val, !mcsema_real_eip !32
  %311 = trunc i32 %307 to i8, !mcsema_real_eip !32
  %312 = tail call i8 @llvm.ctpop.i8(i8 %311), !mcsema_real_eip !32
  %313 = and i8 %312, 1
  %314 = icmp eq i8 %313, 0
  store i1 %314, i1* %PF_val, !mcsema_real_eip !32
  %315 = icmp eq i32 %307, 0, !mcsema_real_eip !32
  store i1 %315, i1* %ZF_val, !mcsema_real_eip !32
  %316 = icmp slt i32 %307, 0
  store i1 %316, i1* %SF_val, !mcsema_real_eip !32
  %317 = icmp ult i32 %278, 74641, !mcsema_real_eip !32
  store i1 %317, i1* %CF_val, !mcsema_real_eip !32
  %318 = and i32 %308, %278, !mcsema_real_eip !32
  %319 = icmp slt i32 %318, 0
  store i1 %319, i1* %OF_val, !mcsema_real_eip !32
  %320 = load i1* %ZF_val, !mcsema_real_eip !36
  br i1 %320, label %block_0x1e7, label %block_0xe3, !mcsema_real_eip !36

block_0xa7:                                       ; preds = %block_0xa0
  %321 = add i32 %278, -74635
  %322 = xor i32 %321, %278, !mcsema_real_eip !37
  %323 = and i32 %322, 16, !mcsema_real_eip !37
  %324 = icmp ne i32 %323, 0, !mcsema_real_eip !37
  store i1 %324, i1* %AF_val, !mcsema_real_eip !37
  %325 = trunc i32 %321 to i8, !mcsema_real_eip !37
  %326 = tail call i8 @llvm.ctpop.i8(i8 %325), !mcsema_real_eip !37
  %327 = and i8 %326, 1
  %328 = icmp eq i8 %327, 0
  store i1 %328, i1* %PF_val, !mcsema_real_eip !37
  %329 = icmp eq i32 %321, 0, !mcsema_real_eip !37
  store i1 %329, i1* %ZF_val, !mcsema_real_eip !37
  %330 = icmp slt i32 %321, 0
  store i1 %330, i1* %SF_val, !mcsema_real_eip !37
  %331 = icmp ult i32 %278, 74635, !mcsema_real_eip !37
  store i1 %331, i1* %CF_val, !mcsema_real_eip !37
  %332 = and i32 %322, %278, !mcsema_real_eip !37
  %333 = icmp slt i32 %332, 0
  store i1 %333, i1* %OF_val, !mcsema_real_eip !37
  %334 = load i1* %ZF_val, !mcsema_real_eip !38
  br i1 %334, label %block_0x1ab, label %block_0xb2, !mcsema_real_eip !38

block_0x118:                                      ; preds = %block_0x2e
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 15) to i64), i64* %RDI_val, !mcsema_real_eip !39
  %335 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 15) to i64)), !mcsema_real_eip !40
  store i64 %335, i64* %RAX_val, !mcsema_real_eip !40
  br label %block_0x21f, !mcsema_real_eip !41

block_0x37:                                       ; preds = %block_0x2e
  %336 = load i64* %RAX_val, !mcsema_real_eip !42
  %337 = trunc i64 %336 to i32, !mcsema_real_eip !42
  %338 = add i32 %337, -1
  %339 = xor i32 %338, %337, !mcsema_real_eip !42
  %340 = and i32 %339, 16, !mcsema_real_eip !42
  %341 = icmp ne i32 %340, 0, !mcsema_real_eip !42
  store i1 %341, i1* %AF_val, !mcsema_real_eip !42
  %342 = trunc i32 %338 to i8, !mcsema_real_eip !42
  %343 = tail call i8 @llvm.ctpop.i8(i8 %342), !mcsema_real_eip !42
  %344 = and i8 %343, 1
  %345 = icmp eq i8 %344, 0
  store i1 %345, i1* %PF_val, !mcsema_real_eip !42
  %346 = icmp eq i32 %338, 0, !mcsema_real_eip !42
  store i1 %346, i1* %ZF_val, !mcsema_real_eip !42
  %347 = icmp slt i32 %338, 0
  store i1 %347, i1* %SF_val, !mcsema_real_eip !42
  %348 = icmp eq i32 %337, 0
  store i1 %348, i1* %CF_val, !mcsema_real_eip !42
  %349 = and i32 %339, %337, !mcsema_real_eip !42
  %350 = icmp slt i32 %349, 0
  store i1 %350, i1* %OF_val, !mcsema_real_eip !42
  %tmp143 = xor i1 %347, %350
  %351 = load i1* %ZF_val, !mcsema_real_eip !43
  %.demorgan145 = or i1 %351, %tmp143
  %352 = load i64* %RAX_val, !mcsema_real_eip !44
  %353 = trunc i64 %352 to i32, !mcsema_real_eip !44
  br i1 %.demorgan145, label %block_0x3c, label %block_0x49, !mcsema_real_eip !43

block_0x163:                                      ; preds = %block_0x60
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 89) to i64), i64* %RDI_val, !mcsema_real_eip !45
  %354 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 89) to i64)), !mcsema_real_eip !46
  store i64 %354, i64* %RAX_val, !mcsema_real_eip !46
  br label %block_0x21f, !mcsema_real_eip !47

block_0x69:                                       ; preds = %block_0x60
  %355 = load i64* %RAX_val, !mcsema_real_eip !48
  %356 = trunc i64 %355 to i32, !mcsema_real_eip !48
  %357 = add i32 %356, -13
  %358 = xor i32 %357, %356, !mcsema_real_eip !48
  %359 = and i32 %358, 16, !mcsema_real_eip !48
  %360 = icmp ne i32 %359, 0, !mcsema_real_eip !48
  store i1 %360, i1* %AF_val, !mcsema_real_eip !48
  %361 = trunc i32 %357 to i8, !mcsema_real_eip !48
  %362 = tail call i8 @llvm.ctpop.i8(i8 %361), !mcsema_real_eip !48
  %363 = and i8 %362, 1
  %364 = icmp eq i8 %363, 0
  store i1 %364, i1* %PF_val, !mcsema_real_eip !48
  %365 = icmp eq i32 %357, 0, !mcsema_real_eip !48
  store i1 %365, i1* %ZF_val, !mcsema_real_eip !48
  %366 = icmp slt i32 %357, 0
  store i1 %366, i1* %SF_val, !mcsema_real_eip !48
  %367 = icmp ult i32 %356, 13, !mcsema_real_eip !48
  store i1 %367, i1* %CF_val, !mcsema_real_eip !48
  %368 = and i32 %358, %356, !mcsema_real_eip !48
  %369 = icmp slt i32 %368, 0
  store i1 %369, i1* %OF_val, !mcsema_real_eip !48
  %tmp146 = xor i1 %366, %369
  %370 = load i1* %ZF_val, !mcsema_real_eip !49
  %.demorgan148 = or i1 %370, %tmp146
  %371 = load i64* %RAX_val, !mcsema_real_eip !50
  %372 = trunc i64 %371 to i32, !mcsema_real_eip !50
  br i1 %.demorgan148, label %block_0x6e, label %block_0x7c, !mcsema_real_eip !49

block_0x1ab:                                      ; preds = %block_0xa7
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 215) to i64), i64* %RDI_val, !mcsema_real_eip !51
  %373 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 215) to i64)), !mcsema_real_eip !52
  store i64 %373, i64* %RAX_val, !mcsema_real_eip !52
  br label %block_0x21f, !mcsema_real_eip !53

block_0xb2:                                       ; preds = %block_0xa7
  %374 = load i64* %RAX_val, !mcsema_real_eip !54
  %375 = trunc i64 %374 to i32, !mcsema_real_eip !54
  %376 = add i32 %375, -74635
  %377 = xor i32 %376, %375, !mcsema_real_eip !54
  %378 = and i32 %377, 16, !mcsema_real_eip !54
  %379 = icmp ne i32 %378, 0, !mcsema_real_eip !54
  store i1 %379, i1* %AF_val, !mcsema_real_eip !54
  %380 = trunc i32 %376 to i8, !mcsema_real_eip !54
  %381 = tail call i8 @llvm.ctpop.i8(i8 %380), !mcsema_real_eip !54
  %382 = and i8 %381, 1
  %383 = icmp eq i8 %382, 0
  store i1 %383, i1* %PF_val, !mcsema_real_eip !54
  %384 = icmp eq i32 %376, 0, !mcsema_real_eip !54
  store i1 %384, i1* %ZF_val, !mcsema_real_eip !54
  %385 = icmp slt i32 %376, 0
  store i1 %385, i1* %SF_val, !mcsema_real_eip !54
  %386 = icmp ult i32 %375, 74635, !mcsema_real_eip !54
  store i1 %386, i1* %CF_val, !mcsema_real_eip !54
  %387 = and i32 %377, %375, !mcsema_real_eip !54
  %388 = icmp slt i32 %387, 0
  store i1 %388, i1* %OF_val, !mcsema_real_eip !54
  %389 = xor i1 %385, %388
  br i1 %389, label %block_0x19f, label %block_0xbd, !mcsema_real_eip !55

block_0x1e7:                                      ; preds = %block_0xd8
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 350) to i64), i64* %RDI_val, !mcsema_real_eip !56
  %390 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 350) to i64)), !mcsema_real_eip !57
  store i64 %390, i64* %RAX_val, !mcsema_real_eip !57
  br label %block_0x21f, !mcsema_real_eip !58

block_0xe3:                                       ; preds = %block_0xd8
  %391 = load i64* %RAX_val, !mcsema_real_eip !59
  %392 = trunc i64 %391 to i32, !mcsema_real_eip !59
  %393 = add i32 %392, -74641
  %394 = xor i32 %393, %392, !mcsema_real_eip !59
  %395 = and i32 %394, 16
  %396 = icmp eq i32 %395, 0
  store i1 %396, i1* %AF_val, !mcsema_real_eip !59
  %397 = trunc i32 %393 to i8, !mcsema_real_eip !59
  %398 = tail call i8 @llvm.ctpop.i8(i8 %397), !mcsema_real_eip !59
  %399 = and i8 %398, 1
  %400 = icmp eq i8 %399, 0
  store i1 %400, i1* %PF_val, !mcsema_real_eip !59
  %401 = icmp eq i32 %393, 0, !mcsema_real_eip !59
  store i1 %401, i1* %ZF_val, !mcsema_real_eip !59
  %402 = icmp slt i32 %393, 0
  store i1 %402, i1* %SF_val, !mcsema_real_eip !59
  %403 = icmp ult i32 %392, 74641, !mcsema_real_eip !59
  store i1 %403, i1* %CF_val, !mcsema_real_eip !59
  %404 = and i32 %394, %392, !mcsema_real_eip !59
  %405 = icmp slt i32 %404, 0
  store i1 %405, i1* %OF_val, !mcsema_real_eip !59
  %406 = xor i1 %402, %405
  br i1 %406, label %block_0x1db, label %block_0xee, !mcsema_real_eip !60

block_0x49:                                       ; preds = %block_0x37
  %407 = add i32 %353, -2
  %408 = xor i32 %407, %353, !mcsema_real_eip !44
  %409 = and i32 %408, 16, !mcsema_real_eip !44
  %410 = icmp ne i32 %409, 0, !mcsema_real_eip !44
  store i1 %410, i1* %AF_val, !mcsema_real_eip !44
  %411 = trunc i32 %407 to i8, !mcsema_real_eip !44
  %412 = tail call i8 @llvm.ctpop.i8(i8 %411), !mcsema_real_eip !44
  %413 = and i8 %412, 1
  %414 = icmp eq i8 %413, 0
  store i1 %414, i1* %PF_val, !mcsema_real_eip !44
  %415 = icmp eq i32 %407, 0, !mcsema_real_eip !44
  store i1 %415, i1* %ZF_val, !mcsema_real_eip !44
  %416 = icmp slt i32 %407, 0
  store i1 %416, i1* %SF_val, !mcsema_real_eip !44
  %417 = icmp ult i32 %353, 2, !mcsema_real_eip !44
  store i1 %417, i1* %CF_val, !mcsema_real_eip !44
  %418 = and i32 %408, %353, !mcsema_real_eip !44
  %419 = icmp slt i32 %418, 0
  store i1 %419, i1* %OF_val, !mcsema_real_eip !44
  %420 = load i1* %ZF_val, !mcsema_real_eip !61
  br i1 %420, label %block_0x127, label %block_0x52, !mcsema_real_eip !61

block_0x3c:                                       ; preds = %block_0x37
  %421 = icmp eq i32 %353, 0, !mcsema_real_eip !62
  store i1 %421, i1* %ZF_val, !mcsema_real_eip !62
  %422 = icmp slt i32 %353, 0
  store i1 %422, i1* %SF_val, !mcsema_real_eip !62
  %423 = trunc i64 %352 to i8
  %424 = tail call i8 @llvm.ctpop.i8(i8 %423), !mcsema_real_eip !62
  %425 = and i8 %424, 1
  %426 = icmp eq i8 %425, 0
  store i1 %426, i1* %PF_val, !mcsema_real_eip !62
  store i1 false, i1* %CF_val, !mcsema_real_eip !62
  store i1 false, i1* %OF_val, !mcsema_real_eip !62
  %427 = load i1* %ZF_val, !mcsema_real_eip !63
  br i1 %427, label %block_0x109, label %block_0x20b, !mcsema_real_eip !63

block_0x7c:                                       ; preds = %block_0x69
  %428 = add i32 %372, -19
  %429 = xor i32 %428, %372, !mcsema_real_eip !50
  %430 = and i32 %429, 16
  %431 = icmp eq i32 %430, 0
  store i1 %431, i1* %AF_val, !mcsema_real_eip !50
  %432 = trunc i32 %428 to i8, !mcsema_real_eip !50
  %433 = tail call i8 @llvm.ctpop.i8(i8 %432), !mcsema_real_eip !50
  %434 = and i8 %433, 1
  %435 = icmp eq i8 %434, 0
  store i1 %435, i1* %PF_val, !mcsema_real_eip !50
  %436 = icmp eq i32 %428, 0, !mcsema_real_eip !50
  store i1 %436, i1* %ZF_val, !mcsema_real_eip !50
  %437 = icmp slt i32 %428, 0
  store i1 %437, i1* %SF_val, !mcsema_real_eip !50
  %438 = icmp ult i32 %372, 19, !mcsema_real_eip !50
  store i1 %438, i1* %CF_val, !mcsema_real_eip !50
  %439 = and i32 %429, %372, !mcsema_real_eip !50
  %440 = icmp slt i32 %439, 0
  store i1 %440, i1* %OF_val, !mcsema_real_eip !50
  %441 = load i1* %ZF_val, !mcsema_real_eip !64
  br i1 %441, label %block_0x172, label %block_0x85, !mcsema_real_eip !64

block_0x6e:                                       ; preds = %block_0x69
  %442 = add i32 %372, -12
  %443 = xor i32 %442, %372, !mcsema_real_eip !65
  %444 = and i32 %443, 16, !mcsema_real_eip !65
  %445 = icmp ne i32 %444, 0, !mcsema_real_eip !65
  store i1 %445, i1* %AF_val, !mcsema_real_eip !65
  %446 = trunc i32 %442 to i8, !mcsema_real_eip !65
  %447 = tail call i8 @llvm.ctpop.i8(i8 %446), !mcsema_real_eip !65
  %448 = and i8 %447, 1
  %449 = icmp eq i8 %448, 0
  store i1 %449, i1* %PF_val, !mcsema_real_eip !65
  %450 = icmp eq i32 %442, 0, !mcsema_real_eip !65
  store i1 %450, i1* %ZF_val, !mcsema_real_eip !65
  %451 = icmp slt i32 %442, 0
  store i1 %451, i1* %SF_val, !mcsema_real_eip !65
  %452 = icmp ult i32 %372, 12, !mcsema_real_eip !65
  store i1 %452, i1* %CF_val, !mcsema_real_eip !65
  %453 = and i32 %443, %372, !mcsema_real_eip !65
  %454 = icmp slt i32 %453, 0
  store i1 %454, i1* %OF_val, !mcsema_real_eip !65
  %455 = load i1* %ZF_val, !mcsema_real_eip !66
  br i1 %455, label %block_0x154, label %block_0x20b, !mcsema_real_eip !66

block_0x19f:                                      ; preds = %block_0xb2
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 188) to i64), i64* %RDI_val, !mcsema_real_eip !67
  %456 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 188) to i64)), !mcsema_real_eip !68
  store i64 %456, i64* %RAX_val, !mcsema_real_eip !68
  br label %block_0x21f, !mcsema_real_eip !69

block_0xbd:                                       ; preds = %block_0xb2
  %457 = load i64* %RAX_val, !mcsema_real_eip !70
  %458 = trunc i64 %457 to i32, !mcsema_real_eip !70
  %459 = add i32 %458, -74636
  %460 = xor i32 %459, %458, !mcsema_real_eip !70
  %461 = and i32 %460, 16, !mcsema_real_eip !70
  %462 = icmp ne i32 %461, 0, !mcsema_real_eip !70
  store i1 %462, i1* %AF_val, !mcsema_real_eip !70
  %463 = trunc i32 %459 to i8, !mcsema_real_eip !70
  %464 = tail call i8 @llvm.ctpop.i8(i8 %463), !mcsema_real_eip !70
  %465 = and i8 %464, 1
  %466 = icmp eq i8 %465, 0
  store i1 %466, i1* %PF_val, !mcsema_real_eip !70
  %467 = icmp eq i32 %459, 0, !mcsema_real_eip !70
  store i1 %467, i1* %ZF_val, !mcsema_real_eip !70
  %468 = icmp slt i32 %459, 0
  store i1 %468, i1* %SF_val, !mcsema_real_eip !70
  %469 = icmp ult i32 %458, 74636, !mcsema_real_eip !70
  store i1 %469, i1* %CF_val, !mcsema_real_eip !70
  %470 = and i32 %460, %458, !mcsema_real_eip !70
  %471 = icmp slt i32 %470, 0
  store i1 %471, i1* %OF_val, !mcsema_real_eip !70
  %472 = load i1* %ZF_val, !mcsema_real_eip !71
  br i1 %472, label %block_0x1b7, label %block_0xc8, !mcsema_real_eip !71

block_0x1db:                                      ; preds = %block_0xe3
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 323) to i64), i64* %RDI_val, !mcsema_real_eip !72
  %473 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 323) to i64)), !mcsema_real_eip !73
  store i64 %473, i64* %RAX_val, !mcsema_real_eip !73
  br label %block_0x21f, !mcsema_real_eip !74

block_0xee:                                       ; preds = %block_0xe3
  %474 = load i64* %RAX_val, !mcsema_real_eip !75
  %475 = trunc i64 %474 to i32, !mcsema_real_eip !75
  %476 = add i32 %475, -74642
  %477 = xor i32 %476, %475, !mcsema_real_eip !75
  %478 = and i32 %477, 16
  %479 = icmp eq i32 %478, 0
  store i1 %479, i1* %AF_val, !mcsema_real_eip !75
  %480 = trunc i32 %476 to i8, !mcsema_real_eip !75
  %481 = tail call i8 @llvm.ctpop.i8(i8 %480), !mcsema_real_eip !75
  %482 = and i8 %481, 1
  %483 = icmp eq i8 %482, 0
  store i1 %483, i1* %PF_val, !mcsema_real_eip !75
  %484 = icmp eq i32 %476, 0, !mcsema_real_eip !75
  store i1 %484, i1* %ZF_val, !mcsema_real_eip !75
  %485 = icmp slt i32 %476, 0
  store i1 %485, i1* %SF_val, !mcsema_real_eip !75
  %486 = icmp ult i32 %475, 74642, !mcsema_real_eip !75
  store i1 %486, i1* %CF_val, !mcsema_real_eip !75
  %487 = and i32 %477, %475, !mcsema_real_eip !75
  %488 = icmp slt i32 %487, 0
  store i1 %488, i1* %OF_val, !mcsema_real_eip !75
  %489 = load i1* %ZF_val, !mcsema_real_eip !76
  br i1 %489, label %block_0x1f3, label %block_0xf9, !mcsema_real_eip !76

block_0x109:                                      ; preds = %block_0x3c
  store i64 zext (i32 ptrtoint (%0* @data_0x226 to i32) to i64), i64* %RDI_val, !mcsema_real_eip !77
  %490 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 ptrtoint (%0* @data_0x226 to i32) to i64)), !mcsema_real_eip !78
  store i64 %490, i64* %RAX_val, !mcsema_real_eip !78
  br label %block_0x21f, !mcsema_real_eip !79

block_0x127:                                      ; preds = %block_0x49
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 29) to i64), i64* %RDI_val, !mcsema_real_eip !80
  %491 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 29) to i64)), !mcsema_real_eip !81
  store i64 %491, i64* %RAX_val, !mcsema_real_eip !81
  br label %block_0x21f, !mcsema_real_eip !82

block_0x52:                                       ; preds = %block_0x49
  %492 = load i64* %RAX_val, !mcsema_real_eip !83
  %493 = trunc i64 %492 to i32, !mcsema_real_eip !83
  %494 = add i32 %493, -4
  %495 = xor i32 %494, %493, !mcsema_real_eip !83
  %496 = and i32 %495, 16, !mcsema_real_eip !83
  %497 = icmp ne i32 %496, 0, !mcsema_real_eip !83
  store i1 %497, i1* %AF_val, !mcsema_real_eip !83
  %498 = trunc i32 %494 to i8, !mcsema_real_eip !83
  %499 = tail call i8 @llvm.ctpop.i8(i8 %498), !mcsema_real_eip !83
  %500 = and i8 %499, 1
  %501 = icmp eq i8 %500, 0
  store i1 %501, i1* %PF_val, !mcsema_real_eip !83
  %502 = icmp eq i32 %494, 0, !mcsema_real_eip !83
  store i1 %502, i1* %ZF_val, !mcsema_real_eip !83
  %503 = icmp slt i32 %494, 0
  store i1 %503, i1* %SF_val, !mcsema_real_eip !83
  %504 = icmp ult i32 %493, 4, !mcsema_real_eip !83
  store i1 %504, i1* %CF_val, !mcsema_real_eip !83
  %505 = and i32 %495, %493, !mcsema_real_eip !83
  %506 = icmp slt i32 %505, 0
  store i1 %506, i1* %OF_val, !mcsema_real_eip !83
  %507 = load i1* %ZF_val, !mcsema_real_eip !84
  br i1 %507, label %block_0x136, label %block_0x20b, !mcsema_real_eip !84

block_0x154:                                      ; preds = %block_0x6e
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 72) to i64), i64* %RDI_val, !mcsema_real_eip !85
  %508 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 72) to i64)), !mcsema_real_eip !86
  store i64 %508, i64* %RAX_val, !mcsema_real_eip !86
  br label %block_0x21f, !mcsema_real_eip !87

block_0x172:                                      ; preds = %block_0x7c
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 108) to i64), i64* %RDI_val, !mcsema_real_eip !88
  %509 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 108) to i64)), !mcsema_real_eip !89
  store i64 %509, i64* %RAX_val, !mcsema_real_eip !89
  br label %block_0x21f, !mcsema_real_eip !90

block_0x85:                                       ; preds = %block_0x7c
  %510 = load i64* %RAX_val, !mcsema_real_eip !91
  %511 = trunc i64 %510 to i32, !mcsema_real_eip !91
  %512 = add i32 %511, -255
  %513 = xor i32 %512, %511, !mcsema_real_eip !91
  %514 = and i32 %513, 16
  %515 = icmp eq i32 %514, 0
  store i1 %515, i1* %AF_val, !mcsema_real_eip !91
  %516 = trunc i32 %512 to i8, !mcsema_real_eip !91
  %517 = tail call i8 @llvm.ctpop.i8(i8 %516), !mcsema_real_eip !91
  %518 = and i8 %517, 1
  %519 = icmp eq i8 %518, 0
  store i1 %519, i1* %PF_val, !mcsema_real_eip !91
  %520 = icmp eq i32 %512, 0, !mcsema_real_eip !91
  store i1 %520, i1* %ZF_val, !mcsema_real_eip !91
  %521 = icmp slt i32 %512, 0
  store i1 %521, i1* %SF_val, !mcsema_real_eip !91
  %522 = icmp ult i32 %511, 255, !mcsema_real_eip !91
  store i1 %522, i1* %CF_val, !mcsema_real_eip !91
  %523 = and i32 %513, %511, !mcsema_real_eip !91
  %524 = icmp slt i32 %523, 0
  store i1 %524, i1* %OF_val, !mcsema_real_eip !91
  %525 = load i1* %ZF_val, !mcsema_real_eip !92
  br i1 %525, label %block_0x181, label %block_0x20b, !mcsema_real_eip !92

block_0x1b7:                                      ; preds = %block_0xbd
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 242) to i64), i64* %RDI_val, !mcsema_real_eip !93
  %526 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 242) to i64)), !mcsema_real_eip !94
  store i64 %526, i64* %RAX_val, !mcsema_real_eip !94
  br label %block_0x21f, !mcsema_real_eip !95

block_0xc8:                                       ; preds = %block_0xbd
  %527 = load i64* %RAX_val, !mcsema_real_eip !96
  %528 = trunc i64 %527 to i32, !mcsema_real_eip !96
  %529 = add i32 %528, -74637
  %530 = xor i32 %529, %528, !mcsema_real_eip !96
  %531 = and i32 %530, 16, !mcsema_real_eip !96
  %532 = icmp ne i32 %531, 0, !mcsema_real_eip !96
  store i1 %532, i1* %AF_val, !mcsema_real_eip !96
  %533 = trunc i32 %529 to i8, !mcsema_real_eip !96
  %534 = tail call i8 @llvm.ctpop.i8(i8 %533), !mcsema_real_eip !96
  %535 = and i8 %534, 1
  %536 = icmp eq i8 %535, 0
  store i1 %536, i1* %PF_val, !mcsema_real_eip !96
  %537 = icmp eq i32 %529, 0, !mcsema_real_eip !96
  store i1 %537, i1* %ZF_val, !mcsema_real_eip !96
  %538 = icmp slt i32 %529, 0
  store i1 %538, i1* %SF_val, !mcsema_real_eip !96
  %539 = icmp ult i32 %528, 74637, !mcsema_real_eip !96
  store i1 %539, i1* %CF_val, !mcsema_real_eip !96
  %540 = and i32 %530, %528, !mcsema_real_eip !96
  %541 = icmp slt i32 %540, 0
  store i1 %541, i1* %OF_val, !mcsema_real_eip !96
  %542 = load i1* %ZF_val, !mcsema_real_eip !97
  br i1 %542, label %block_0x1c3, label %block_0x20b, !mcsema_real_eip !97

block_0x1f3:                                      ; preds = %block_0xee
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 377) to i64), i64* %RDI_val, !mcsema_real_eip !98
  %543 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 377) to i64)), !mcsema_real_eip !99
  store i64 %543, i64* %RAX_val, !mcsema_real_eip !99
  br label %block_0x21f, !mcsema_real_eip !100

block_0xf9:                                       ; preds = %block_0xee
  %544 = load i64* %RAX_val, !mcsema_real_eip !101
  %545 = trunc i64 %544 to i32, !mcsema_real_eip !101
  %546 = add i32 %545, -74643
  %547 = xor i32 %546, %545, !mcsema_real_eip !101
  %548 = and i32 %547, 16
  %549 = icmp eq i32 %548, 0
  store i1 %549, i1* %AF_val, !mcsema_real_eip !101
  %550 = trunc i32 %546 to i8, !mcsema_real_eip !101
  %551 = tail call i8 @llvm.ctpop.i8(i8 %550), !mcsema_real_eip !101
  %552 = and i8 %551, 1
  %553 = icmp eq i8 %552, 0
  store i1 %553, i1* %PF_val, !mcsema_real_eip !101
  %554 = icmp eq i32 %546, 0, !mcsema_real_eip !101
  store i1 %554, i1* %ZF_val, !mcsema_real_eip !101
  %555 = icmp slt i32 %546, 0
  store i1 %555, i1* %SF_val, !mcsema_real_eip !101
  %556 = icmp ult i32 %545, 74643, !mcsema_real_eip !101
  store i1 %556, i1* %CF_val, !mcsema_real_eip !101
  %557 = and i32 %547, %545, !mcsema_real_eip !101
  %558 = icmp slt i32 %557, 0
  store i1 %558, i1* %OF_val, !mcsema_real_eip !101
  %559 = load i1* %ZF_val, !mcsema_real_eip !102
  br i1 %559, label %block_0x1ff, label %block_0x20b, !mcsema_real_eip !102

block_0x20b:                                      ; preds = %block_0xf9, %block_0xc8, %block_0x85, %block_0x52, %block_0x6e, %block_0x3c
  %560 = load i64* %RBP_val, !mcsema_real_eip !103
  %561 = add i64 %560, -4, !mcsema_real_eip !103
  %562 = inttoptr i64 %561 to i64*, !mcsema_real_eip !103
  %563 = bitcast i64* %562 to i32*
  %564 = load i32* %563, !mcsema_real_eip !103
  %565 = zext i32 %564 to i64, !mcsema_real_eip !103
  store i64 %565, i64* %RSI_val, !mcsema_real_eip !104
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 431) to i64), i64* %RDI_val, !mcsema_real_eip !105
  %566 = load i64* %RDX_val, !mcsema_real_eip !106
  %567 = load i64* %RCX_val, !mcsema_real_eip !106
  %568 = tail call x86_64_sysvcc i64 @printf(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 431) to i64), i64 %565, i64 %566, i64 %567), !mcsema_real_eip !106
  store i64 0, i64* %RAX_val, !mcsema_real_eip !18
  %569 = load i64* %RBP_val, !mcsema_real_eip !19
  store i64 %569, i64* %RSP_val, !mcsema_real_eip !19
  %570 = inttoptr i64 %569 to i64*, !mcsema_real_eip !19
  %571 = load i64* %570, !mcsema_real_eip !19
  store i64 %571, i64* %RBP_val, !mcsema_real_eip !19
  %572 = add i64 %569, 16, !mcsema_real_eip !20
  store i64 %572, i64* %RSP_val, !mcsema_real_eip !20
  %573 = load i64* %RAX_val, !mcsema_real_eip !20
  store i64 %573, i64* %RAX, !mcsema_real_eip !20
  %574 = load i64* %RBX_val, !mcsema_real_eip !20
  store i64 %574, i64* %RBX, !mcsema_real_eip !20
  %575 = load i64* %RCX_val, !mcsema_real_eip !20
  store i64 %575, i64* %RCX, !mcsema_real_eip !20
  %576 = load i64* %RDX_val, !mcsema_real_eip !20
  store i64 %576, i64* %RDX, !mcsema_real_eip !20
  %577 = load i64* %RSI_val, !mcsema_real_eip !20
  store i64 %577, i64* %RSI, !mcsema_real_eip !20
  %578 = load i64* %RDI_val, !mcsema_real_eip !20
  store i64 %578, i64* %RDI, !mcsema_real_eip !20
  %579 = load i64* %RSP_val, !mcsema_real_eip !20
  store i64 %579, i64* %RSP, !mcsema_real_eip !20
  %580 = load i64* %RBP_val, !mcsema_real_eip !20
  store i64 %580, i64* %RBP, !mcsema_real_eip !20
  %581 = load i64* %R8_val, !mcsema_real_eip !20
  store i64 %581, i64* %R8, !mcsema_real_eip !20
  %582 = load i64* %R9_val, !mcsema_real_eip !20
  store i64 %582, i64* %R9, !mcsema_real_eip !20
  %583 = load i64* %R10_val, !mcsema_real_eip !20
  store i64 %583, i64* %R10, !mcsema_real_eip !20
  %584 = load i64* %R11_val, !mcsema_real_eip !20
  store i64 %584, i64* %R11, !mcsema_real_eip !20
  %585 = load i64* %R12_val, !mcsema_real_eip !20
  store i64 %585, i64* %R12, !mcsema_real_eip !20
  %586 = load i64* %R13_val, !mcsema_real_eip !20
  store i64 %586, i64* %R13, !mcsema_real_eip !20
  %587 = load i64* %R14_val, !mcsema_real_eip !20
  store i64 %587, i64* %R14, !mcsema_real_eip !20
  %588 = load i64* %R15_val, !mcsema_real_eip !20
  store i64 %588, i64* %R15, !mcsema_real_eip !20
  %589 = load i64* %RIP_val, !mcsema_real_eip !20
  store i64 %589, i64* %RIP, !mcsema_real_eip !20
  %590 = load i1* %CF_val, !mcsema_real_eip !20
  store i1 %590, i1* %CF, align 1, !mcsema_real_eip !20
  %591 = load i1* %PF_val, !mcsema_real_eip !20
  store i1 %591, i1* %PF, align 1, !mcsema_real_eip !20
  %592 = load i1* %AF_val, !mcsema_real_eip !20
  store i1 %592, i1* %AF, align 1, !mcsema_real_eip !20
  %593 = load i1* %ZF_val, !mcsema_real_eip !20
  store i1 %593, i1* %ZF, align 1, !mcsema_real_eip !20
  %594 = load i1* %SF_val, !mcsema_real_eip !20
  store i1 %594, i1* %SF, align 1, !mcsema_real_eip !20
  %595 = load i1* %OF_val, !mcsema_real_eip !20
  store i1 %595, i1* %OF, align 1, !mcsema_real_eip !20
  %596 = load i1* %DF_val, !mcsema_real_eip !20
  store i1 %596, i1* %DF, align 1, !mcsema_real_eip !20
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !20
  %597 = load i1* %FPU_B_val, !mcsema_real_eip !20
  store i1 %597, i1* %FPU_B, align 1, !mcsema_real_eip !20
  %598 = load i1* %FPU_C3_val, !mcsema_real_eip !20
  store i1 %598, i1* %FPU_C3, align 1, !mcsema_real_eip !20
  %599 = load i3* %FPU_TOP_val, !mcsema_real_eip !20
  store i3 %599, i3* %FPU_TOP, align 1, !mcsema_real_eip !20
  %600 = load i1* %FPU_C2_val, !mcsema_real_eip !20
  store i1 %600, i1* %FPU_C2, align 1, !mcsema_real_eip !20
  %601 = load i1* %FPU_C1_val, !mcsema_real_eip !20
  store i1 %601, i1* %FPU_C1, align 1, !mcsema_real_eip !20
  %602 = load i1* %FPU_C0_val, !mcsema_real_eip !20
  store i1 %602, i1* %FPU_C0, align 1, !mcsema_real_eip !20
  %603 = load i1* %FPU_ES_val, !mcsema_real_eip !20
  store i1 %603, i1* %FPU_ES, align 1, !mcsema_real_eip !20
  %604 = load i1* %FPU_SF_val, !mcsema_real_eip !20
  store i1 %604, i1* %FPU_SF, align 1, !mcsema_real_eip !20
  %605 = load i1* %FPU_PE_val, !mcsema_real_eip !20
  store i1 %605, i1* %FPU_PE, align 1, !mcsema_real_eip !20
  %606 = load i1* %FPU_UE_val, !mcsema_real_eip !20
  store i1 %606, i1* %FPU_UE, align 1, !mcsema_real_eip !20
  %607 = load i1* %FPU_OE_val, !mcsema_real_eip !20
  store i1 %607, i1* %FPU_OE, align 1, !mcsema_real_eip !20
  %608 = load i1* %FPU_ZE_val, !mcsema_real_eip !20
  store i1 %608, i1* %FPU_ZE, align 1, !mcsema_real_eip !20
  %609 = load i1* %FPU_DE_val, !mcsema_real_eip !20
  store i1 %609, i1* %FPU_DE, align 1, !mcsema_real_eip !20
  %610 = load i1* %FPU_IE_val, !mcsema_real_eip !20
  store i1 %610, i1* %FPU_IE, align 1, !mcsema_real_eip !20
  %611 = load i1* %FPU_X_val, !mcsema_real_eip !20
  store i1 %611, i1* %FPU_X, align 1, !mcsema_real_eip !20
  %612 = load i2* %FPU_RC_val, !mcsema_real_eip !20
  store i2 %612, i2* %FPU_RC, align 1, !mcsema_real_eip !20
  %613 = load i2* %FPU_PC_val, !mcsema_real_eip !20
  store i2 %613, i2* %FPU_PC, align 1, !mcsema_real_eip !20
  %614 = load i1* %FPU_PM_val, !mcsema_real_eip !20
  store i1 %614, i1* %FPU_PM, align 1, !mcsema_real_eip !20
  %615 = load i1* %FPU_UM_val, !mcsema_real_eip !20
  store i1 %615, i1* %FPU_UM, align 1, !mcsema_real_eip !20
  %616 = load i1* %FPU_OM_val, !mcsema_real_eip !20
  store i1 %616, i1* %FPU_OM, align 1, !mcsema_real_eip !20
  %617 = load i1* %FPU_ZM_val, !mcsema_real_eip !20
  store i1 %617, i1* %FPU_ZM, align 1, !mcsema_real_eip !20
  %618 = load i1* %FPU_DM_val, !mcsema_real_eip !20
  store i1 %618, i1* %FPU_DM, align 1, !mcsema_real_eip !20
  %619 = load i1* %FPU_IM_val, !mcsema_real_eip !20
  store i1 %619, i1* %FPU_IM, align 1, !mcsema_real_eip !20
  %620 = load i64* %53, align 4
  store i64 %620, i64* %52, align 4
  %621 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !20
  store i16 %621, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !20
  %622 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !20
  store i64 %622, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !20
  %623 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !20
  store i16 %623, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !20
  %624 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !20
  store i64 %624, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !20
  %625 = load i128* %XMM0_val, !mcsema_real_eip !20
  store i128 %625, i128* %XMM0, align 1, !mcsema_real_eip !20
  %626 = load i128* %XMM1_val, !mcsema_real_eip !20
  store i128 %626, i128* %XMM1, align 1, !mcsema_real_eip !20
  %627 = load i128* %XMM2_val, !mcsema_real_eip !20
  store i128 %627, i128* %XMM2, align 1, !mcsema_real_eip !20
  %628 = load i128* %XMM3_val, !mcsema_real_eip !20
  store i128 %628, i128* %XMM3, align 1, !mcsema_real_eip !20
  %629 = load i128* %XMM4_val, !mcsema_real_eip !20
  store i128 %629, i128* %XMM4, align 1, !mcsema_real_eip !20
  %630 = load i128* %XMM5_val, !mcsema_real_eip !20
  store i128 %630, i128* %XMM5, align 1, !mcsema_real_eip !20
  %631 = load i128* %XMM6_val, !mcsema_real_eip !20
  store i128 %631, i128* %XMM6, align 1, !mcsema_real_eip !20
  %632 = load i128* %XMM7_val, !mcsema_real_eip !20
  store i128 %632, i128* %XMM7, align 1, !mcsema_real_eip !20
  %633 = load i128* %XMM8_val, !mcsema_real_eip !20
  store i128 %633, i128* %XMM8, align 1, !mcsema_real_eip !20
  %634 = load i128* %XMM9_val, !mcsema_real_eip !20
  store i128 %634, i128* %XMM9, align 1, !mcsema_real_eip !20
  %635 = load i128* %XMM10_val, !mcsema_real_eip !20
  store i128 %635, i128* %XMM10, align 1, !mcsema_real_eip !20
  %636 = load i128* %XMM11_val, !mcsema_real_eip !20
  store i128 %636, i128* %XMM11, align 1, !mcsema_real_eip !20
  %637 = load i128* %XMM12_val, !mcsema_real_eip !20
  store i128 %637, i128* %XMM12, align 1, !mcsema_real_eip !20
  %638 = load i128* %XMM13_val, !mcsema_real_eip !20
  store i128 %638, i128* %XMM13, align 1, !mcsema_real_eip !20
  %639 = load i128* %XMM14_val, !mcsema_real_eip !20
  store i128 %639, i128* %XMM14, align 1, !mcsema_real_eip !20
  %640 = load i128* %XMM15_val, !mcsema_real_eip !20
  store i128 %640, i128* %XMM15, align 1, !mcsema_real_eip !20
  %641 = load i64* %STACK_BASE_val, !mcsema_real_eip !20
  store i64 %641, i64* %STACK_BASE, align 1, !mcsema_real_eip !20
  %642 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !20
  store i64 %642, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !20
  ret void, !mcsema_real_eip !20

block_0x136:                                      ; preds = %block_0x52
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 43) to i64), i64* %RDI_val, !mcsema_real_eip !107
  %643 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 43) to i64)), !mcsema_real_eip !108
  store i64 %643, i64* %RAX_val, !mcsema_real_eip !108
  br label %block_0x21f, !mcsema_real_eip !109

block_0x181:                                      ; preds = %block_0x85
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 128) to i64), i64* %RDI_val, !mcsema_real_eip !110
  %644 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 128) to i64)), !mcsema_real_eip !111
  store i64 %644, i64* %RAX_val, !mcsema_real_eip !111
  br label %block_0x21f, !mcsema_real_eip !112

block_0x1c3:                                      ; preds = %block_0xc8
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 269) to i64), i64* %RDI_val, !mcsema_real_eip !113
  %645 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 269) to i64)), !mcsema_real_eip !114
  store i64 %645, i64* %RAX_val, !mcsema_real_eip !114
  br label %block_0x21f, !mcsema_real_eip !115

block_0x1ff:                                      ; preds = %block_0xf9
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 404) to i64), i64* %RDI_val, !mcsema_real_eip !116
  %646 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 404) to i64)), !mcsema_real_eip !117
  store i64 %646, i64* %RAX_val, !mcsema_real_eip !117
  br label %block_0x21f, !mcsema_real_eip !118
}

declare x86_64_sysvcc i64 @puts(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg)

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0)
  ret void
}

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = metadata !{i64 4, [16 x i8] c"\09subq\09$16, %rsp\00"}
!5 = metadata !{i64 8, [21 x i8] c"\09movl\09%edi, -4(%rbp)\00"}
!6 = metadata !{i64 11, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!7 = metadata !{i64 14, [19 x i8] c"\09cmpl\09$74633, %eax\00"}
!8 = metadata !{i64 19, [8 x i8] c"\09je\09375\00"}
!9 = metadata !{i64 400, [15 x i8] c"\09movl\09$0, %edi\00"}
!10 = metadata !{i64 405, [9 x i8] c"\09callq\090\00"}
!11 = metadata !{i64 410, [9 x i8] c"\09jmp\09128\00"}
!12 = metadata !{i64 25, [19 x i8] c"\09cmpl\09$74633, %eax\00"}
!13 = metadata !{i64 30, [8 x i8] c"\09jg\09117\00"}
!14 = metadata !{i64 149, [19 x i8] c"\09cmpl\09$74639, %eax\00"}
!15 = metadata !{i64 154, [8 x i8] c"\09je\09303\00"}
!16 = metadata !{i64 32, [15 x i8] c"\09cmpl\09$6, %eax\00"}
!17 = metadata !{i64 35, [8 x i8] c"\09je\09284\00"}
!18 = metadata !{i64 543, [15 x i8] c"\09movl\09$0, %eax\00"}
!19 = metadata !{i64 548, [7 x i8] c"\09leave\00"}
!20 = metadata !{i64 549, [6 x i8] c"\09retq\00"}
!21 = metadata !{i64 325, [15 x i8] c"\09movl\09$0, %edi\00"}
!22 = metadata !{i64 330, [9 x i8] c"\09callq\090\00"}
!23 = metadata !{i64 335, [9 x i8] c"\09jmp\09203\00"}
!24 = metadata !{i64 41, [15 x i8] c"\09cmpl\09$6, %eax\00"} ; [ DW_TAG_file_type ] [/]
!25 = metadata !{i64 44, [7 x i8] c"\09jg\0950\00"}
!26 = metadata !{i64 96, [16 x i8] c"\09cmpl\09$13, %eax\00"}
!27 = metadata !{i64 463, [15 x i8] c"\09movl\09$0, %edi\00"}
!28 = metadata !{i64 468, [9 x i8] c"\09callq\090\00"}
!29 = metadata !{i64 473, [8 x i8] c"\09jmp\0968\00"}
!30 = metadata !{i64 160, [19 x i8] c"\09cmpl\09$74639, %eax\00"}
!31 = metadata !{i64 165, [7 x i8] c"\09jg\0949\00"}
!32 = metadata !{i64 216, [19 x i8] c"\09cmpl\09$74641, %eax\00"}
!33 = metadata !{i64 99, [8 x i8] c"\09je\09250\00"}
!34 = metadata !{i64 46, [15 x i8] c"\09cmpl\09$1, %eax\00"}
!35 = metadata !{i64 49, [8 x i8] c"\09je\09225\00"}
!36 = metadata !{i64 221, [8 x i8] c"\09je\09260\00"}
!37 = metadata !{i64 167, [19 x i8] c"\09cmpl\09$74635, %eax\00"}
!38 = metadata !{i64 172, [8 x i8] c"\09je\09249\00"}
!39 = metadata !{i64 280, [15 x i8] c"\09movl\09$0, %edi\00"}
!40 = metadata !{i64 285, [9 x i8] c"\09callq\090\00"}
!41 = metadata !{i64 290, [9 x i8] c"\09jmp\09248\00"}
!42 = metadata !{i64 55, [15 x i8] c"\09cmpl\09$1, %eax\00"}
!43 = metadata !{i64 58, [7 x i8] c"\09jg\0913\00"}
!44 = metadata !{i64 73, [15 x i8] c"\09cmpl\09$2, %eax\00"}
!45 = metadata !{i64 355, [15 x i8] c"\09movl\09$0, %edi\00"}
!46 = metadata !{i64 360, [9 x i8] c"\09callq\090\00"}
!47 = metadata !{i64 365, [9 x i8] c"\09jmp\09173\00"}
!48 = metadata !{i64 105, [16 x i8] c"\09cmpl\09$13, %eax\00"}
!49 = metadata !{i64 108, [7 x i8] c"\09jg\0914\00"}
!50 = metadata !{i64 124, [16 x i8] c"\09cmpl\09$19, %eax\00"}
!51 = metadata !{i64 427, [15 x i8] c"\09movl\09$0, %edi\00"}
!52 = metadata !{i64 432, [9 x i8] c"\09callq\090\00"}
!53 = metadata !{i64 437, [9 x i8] c"\09jmp\09104\00"}
!54 = metadata !{i64 178, [19 x i8] c"\09cmpl\09$74635, %eax\00"}
!55 = metadata !{i64 183, [8 x i8] c"\09jl\09226\00"}
!56 = metadata !{i64 487, [15 x i8] c"\09movl\09$0, %edi\00"}
!57 = metadata !{i64 492, [9 x i8] c"\09callq\090\00"}
!58 = metadata !{i64 497, [8 x i8] c"\09jmp\0944\00"}
!59 = metadata !{i64 227, [19 x i8] c"\09cmpl\09$74641, %eax\00"}
!60 = metadata !{i64 232, [8 x i8] c"\09jl\09237\00"}
!61 = metadata !{i64 76, [8 x i8] c"\09je\09213\00"}
!62 = metadata !{i64 60, [18 x i8] c"\09testl\09%eax, %eax\00"}
!63 = metadata !{i64 62, [8 x i8] c"\09je\09197\00"}
!64 = metadata !{i64 127, [8 x i8] c"\09je\09237\00"}
!65 = metadata !{i64 110, [16 x i8] c"\09cmpl\09$12, %eax\00"}
!66 = metadata !{i64 113, [8 x i8] c"\09je\09221\00"}
!67 = metadata !{i64 415, [15 x i8] c"\09movl\09$0, %edi\00"}
!68 = metadata !{i64 420, [9 x i8] c"\09callq\090\00"}
!69 = metadata !{i64 425, [9 x i8] c"\09jmp\09116\00"}
!70 = metadata !{i64 189, [19 x i8] c"\09cmpl\09$74636, %eax\00"}
!71 = metadata !{i64 194, [8 x i8] c"\09je\09239\00"}
!72 = metadata !{i64 475, [15 x i8] c"\09movl\09$0, %edi\00"}
!73 = metadata !{i64 480, [9 x i8] c"\09callq\090\00"}
!74 = metadata !{i64 485, [8 x i8] c"\09jmp\0956\00"}
!75 = metadata !{i64 238, [19 x i8] c"\09cmpl\09$74642, %eax\00"}
!76 = metadata !{i64 243, [8 x i8] c"\09je\09250\00"}
!77 = metadata !{i64 265, [15 x i8] c"\09movl\09$0, %edi\00"}
!78 = metadata !{i64 270, [9 x i8] c"\09callq\090\00"}
!79 = metadata !{i64 275, [9 x i8] c"\09jmp\09263\00"}
!80 = metadata !{i64 295, [15 x i8] c"\09movl\09$0, %edi\00"}
!81 = metadata !{i64 300, [9 x i8] c"\09callq\090\00"}
!82 = metadata !{i64 305, [9 x i8] c"\09jmp\09233\00"}
!83 = metadata !{i64 82, [15 x i8] c"\09cmpl\09$4, %eax\00"}
!84 = metadata !{i64 85, [8 x i8] c"\09je\09219\00"}
!85 = metadata !{i64 340, [15 x i8] c"\09movl\09$0, %edi\00"}
!86 = metadata !{i64 345, [9 x i8] c"\09callq\090\00"}
!87 = metadata !{i64 350, [9 x i8] c"\09jmp\09188\00"}
!88 = metadata !{i64 370, [15 x i8] c"\09movl\09$0, %edi\00"}
!89 = metadata !{i64 375, [9 x i8] c"\09callq\090\00"}
!90 = metadata !{i64 380, [9 x i8] c"\09jmp\09158\00"}
!91 = metadata !{i64 133, [17 x i8] c"\09cmpl\09$255, %eax\00"}
!92 = metadata !{i64 138, [8 x i8] c"\09je\09241\00"}
!93 = metadata !{i64 439, [15 x i8] c"\09movl\09$0, %edi\00"}
!94 = metadata !{i64 444, [9 x i8] c"\09callq\090\00"}
!95 = metadata !{i64 449, [8 x i8] c"\09jmp\0992\00"}
!96 = metadata !{i64 200, [19 x i8] c"\09cmpl\09$74637, %eax\00"}
!97 = metadata !{i64 205, [8 x i8] c"\09je\09240\00"}
!98 = metadata !{i64 499, [15 x i8] c"\09movl\09$0, %edi\00"}
!99 = metadata !{i64 504, [9 x i8] c"\09callq\090\00"}
!100 = metadata !{i64 509, [8 x i8] c"\09jmp\0932\00"}
!101 = metadata !{i64 249, [19 x i8] c"\09cmpl\09$74643, %eax\00"}
!102 = metadata !{i64 254, [8 x i8] c"\09je\09251\00"}
!103 = metadata !{i64 523, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!104 = metadata !{i64 526, [17 x i8] c"\09movl\09%eax, %esi\00"}
!105 = metadata !{i64 528, [15 x i8] c"\09movl\09$0, %edi\00"}
!106 = metadata !{i64 538, [9 x i8] c"\09callq\090\00"}
!107 = metadata !{i64 310, [15 x i8] c"\09movl\09$0, %edi\00"}
!108 = metadata !{i64 315, [9 x i8] c"\09callq\090\00"}
!109 = metadata !{i64 320, [9 x i8] c"\09jmp\09218\00"}
!110 = metadata !{i64 385, [15 x i8] c"\09movl\09$0, %edi\00"}
!111 = metadata !{i64 390, [9 x i8] c"\09callq\090\00"}
!112 = metadata !{i64 395, [9 x i8] c"\09jmp\09143\00"}
!113 = metadata !{i64 451, [15 x i8] c"\09movl\09$0, %edi\00"}
!114 = metadata !{i64 456, [9 x i8] c"\09callq\090\00"}
!115 = metadata !{i64 461, [8 x i8] c"\09jmp\0980\00"}
!116 = metadata !{i64 511, [15 x i8] c"\09movl\09$0, %edi\00"}
!117 = metadata !{i64 516, [9 x i8] c"\09callq\090\00"}
!118 = metadata !{i64 521, [8 x i8] c"\09jmp\0920\00"}
