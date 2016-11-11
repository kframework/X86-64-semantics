; ModuleID = 'Output/test_29.clang.bc'
source_filename = "Output/test_29.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type <{ [20 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x4007d0 = internal constant %0 <{ [20 x i8] c"\01\00\02\00%d %d %d %d %d\0A\00" }>, align 64

define internal x86_64_sysvcc void @sub_400630(%struct.regs*) {
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
  %78 = load i64, i64* %RBX_val, !mcsema_real_eip !2
  %79 = load i64, i64* %RSP_val, !mcsema_real_eip !2
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !2
  store i64 %78, i64* %81, !mcsema_real_eip !2
  %82 = add i64 %79, -24
  %83 = xor i64 %82, %80, !mcsema_real_eip !3
  %84 = and i64 %83, 16
  %85 = icmp eq i64 %84, 0
  store i1 %85, i1* %AF_val, !mcsema_real_eip !3
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !3
  %86 = inttoptr i64 %82 to i64*, !mcsema_real_eip !4
  %87 = bitcast i64* %86 to i32*
  store i32 5, i32* %87, !mcsema_real_eip !4
  %88 = load i64, i64* %RSP_val, !mcsema_real_eip !5
  %89 = add i64 %88, 4, !mcsema_real_eip !5
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !5
  %91 = bitcast i64* %90 to i32*
  store i32 6, i32* %91, !mcsema_real_eip !5
  %92 = load i64, i64* %RSP_val, !mcsema_real_eip !6
  %93 = add i64 %92, 8, !mcsema_real_eip !6
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !6
  %95 = bitcast i64* %94 to i32*
  store i32 7, i32* %95, !mcsema_real_eip !6
  %96 = load i64, i64* %RSP_val, !mcsema_real_eip !7
  %97 = add i64 %96, 12, !mcsema_real_eip !7
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !7
  %99 = bitcast i64* %98 to i32*
  store i32 8, i32* %99, !mcsema_real_eip !7
  %100 = load i64, i64* %RSP_val, !mcsema_real_eip !8
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !8
  %102 = ptrtoint i64* %101 to i64, !mcsema_real_eip !8
  store i64 %102, i64* %RBX_val, !mcsema_real_eip !8
  store i1 false, i1* %CF_val, !mcsema_real_eip !9
  store i1 false, i1* %OF_val, !mcsema_real_eip !9
  store i1 false, i1* %SF_val, !mcsema_real_eip !9
  store i1 true, i1* %ZF_val, !mcsema_real_eip !9
  store i1 true, i1* %PF_val, !mcsema_real_eip !9
  store i64 0, i64* %RDI_val, !mcsema_real_eip !9
  %103 = load i64, i64* %RBX_val, !mcsema_real_eip !10
  store i64 %103, i64* %RSI_val, !mcsema_real_eip !10
  %104 = load i64, i64* %RSP_val, !mcsema_real_eip !11
  %105 = add i64 %104, -8
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !11
  store i64 -4981261766360305936, i64* %106, !mcsema_real_eip !11
  store i64 %105, i64* %RSP_val, !mcsema_real_eip !11
  %107 = load i64, i64* %RAX_val, !mcsema_real_eip !11
  store i64 %107, i64* %RAX, !mcsema_real_eip !11
  %108 = load i64, i64* %RBX_val, !mcsema_real_eip !11
  store i64 %108, i64* %RBX, !mcsema_real_eip !11
  %109 = load i64, i64* %RCX_val, !mcsema_real_eip !11
  store i64 %109, i64* %RCX, !mcsema_real_eip !11
  %110 = load i64, i64* %RDX_val, !mcsema_real_eip !11
  store i64 %110, i64* %RDX, !mcsema_real_eip !11
  %111 = load i64, i64* %RSI_val, !mcsema_real_eip !11
  store i64 %111, i64* %RSI, !mcsema_real_eip !11
  %112 = load i64, i64* %RDI_val, !mcsema_real_eip !11
  store i64 %112, i64* %RDI, !mcsema_real_eip !11
  %113 = load i64, i64* %RSP_val, !mcsema_real_eip !11
  store i64 %113, i64* %RSP, !mcsema_real_eip !11
  %114 = load i64, i64* %RBP_val, !mcsema_real_eip !11
  store i64 %114, i64* %RBP, !mcsema_real_eip !11
  %115 = load i64, i64* %R8_val, !mcsema_real_eip !11
  store i64 %115, i64* %R8, !mcsema_real_eip !11
  %116 = load i64, i64* %R9_val, !mcsema_real_eip !11
  store i64 %116, i64* %R9, !mcsema_real_eip !11
  %117 = load i64, i64* %R10_val, !mcsema_real_eip !11
  store i64 %117, i64* %R10, !mcsema_real_eip !11
  %118 = load i64, i64* %R11_val, !mcsema_real_eip !11
  store i64 %118, i64* %R11, !mcsema_real_eip !11
  %119 = load i64, i64* %R12_val, !mcsema_real_eip !11
  store i64 %119, i64* %R12, !mcsema_real_eip !11
  %120 = load i64, i64* %R13_val, !mcsema_real_eip !11
  store i64 %120, i64* %R13, !mcsema_real_eip !11
  %121 = load i64, i64* %R14_val, !mcsema_real_eip !11
  store i64 %121, i64* %R14, !mcsema_real_eip !11
  %122 = load i64, i64* %R15_val, !mcsema_real_eip !11
  store i64 %122, i64* %R15, !mcsema_real_eip !11
  %123 = load i64, i64* %RIP_val, !mcsema_real_eip !11
  store i64 %123, i64* %RIP, !mcsema_real_eip !11
  %124 = load i1, i1* %CF_val, !mcsema_real_eip !11
  store i1 %124, i1* %CF, align 1, !mcsema_real_eip !11
  %125 = load i1, i1* %PF_val, !mcsema_real_eip !11
  store i1 %125, i1* %PF, align 1, !mcsema_real_eip !11
  %126 = load i1, i1* %AF_val, !mcsema_real_eip !11
  store i1 %126, i1* %AF, align 1, !mcsema_real_eip !11
  %127 = load i1, i1* %ZF_val, !mcsema_real_eip !11
  store i1 %127, i1* %ZF, align 1, !mcsema_real_eip !11
  %128 = load i1, i1* %SF_val, !mcsema_real_eip !11
  store i1 %128, i1* %SF, align 1, !mcsema_real_eip !11
  %129 = load i1, i1* %OF_val, !mcsema_real_eip !11
  store i1 %129, i1* %OF, align 1, !mcsema_real_eip !11
  %130 = load i1, i1* %DF_val, !mcsema_real_eip !11
  store i1 %130, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  %131 = load i1, i1* %FPU_B_val, !mcsema_real_eip !11
  store i1 %131, i1* %FPU_B, align 1, !mcsema_real_eip !11
  %132 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !11
  store i1 %132, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  %133 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !11
  store i3 %133, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  %134 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !11
  store i1 %134, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  %135 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !11
  store i1 %135, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  %136 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !11
  store i1 %136, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  %137 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !11
  store i1 %137, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  %138 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !11
  store i1 %138, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  %139 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !11
  store i1 %139, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  %140 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !11
  store i1 %140, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  %141 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !11
  store i1 %141, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  %142 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !11
  store i1 %142, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  %143 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !11
  store i1 %143, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  %144 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !11
  store i1 %144, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  %145 = load i1, i1* %FPU_X_val, !mcsema_real_eip !11
  store i1 %145, i1* %FPU_X, align 1, !mcsema_real_eip !11
  %146 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !11
  store i2 %146, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  %147 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !11
  store i2 %147, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  %148 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !11
  store i1 %148, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  %149 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !11
  store i1 %149, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  %150 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !11
  store i1 %150, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  %151 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !11
  store i1 %151, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  %152 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !11
  store i1 %152, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  %153 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !11
  store i1 %153, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  %154 = load i64, i64* %53, align 4
  store i64 %154, i64* %52, align 4
  %155 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !11
  store i16 %155, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  %156 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !11
  store i64 %156, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  %157 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !11
  store i16 %157, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  %158 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !11
  store i64 %158, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  %159 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !11
  store i11 %159, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !11
  %160 = load i128, i128* %XMM0_val, !mcsema_real_eip !11
  store i128 %160, i128* %XMM0, align 1, !mcsema_real_eip !11
  %161 = load i128, i128* %XMM1_val, !mcsema_real_eip !11
  store i128 %161, i128* %XMM1, align 1, !mcsema_real_eip !11
  %162 = load i128, i128* %XMM2_val, !mcsema_real_eip !11
  store i128 %162, i128* %XMM2, align 1, !mcsema_real_eip !11
  %163 = load i128, i128* %XMM3_val, !mcsema_real_eip !11
  store i128 %163, i128* %XMM3, align 1, !mcsema_real_eip !11
  %164 = load i128, i128* %XMM4_val, !mcsema_real_eip !11
  store i128 %164, i128* %XMM4, align 1, !mcsema_real_eip !11
  %165 = load i128, i128* %XMM5_val, !mcsema_real_eip !11
  store i128 %165, i128* %XMM5, align 1, !mcsema_real_eip !11
  %166 = load i128, i128* %XMM6_val, !mcsema_real_eip !11
  store i128 %166, i128* %XMM6, align 1, !mcsema_real_eip !11
  %167 = load i128, i128* %XMM7_val, !mcsema_real_eip !11
  store i128 %167, i128* %XMM7, align 1, !mcsema_real_eip !11
  %168 = load i128, i128* %XMM8_val, !mcsema_real_eip !11
  store i128 %168, i128* %XMM8, align 1, !mcsema_real_eip !11
  %169 = load i128, i128* %XMM9_val, !mcsema_real_eip !11
  store i128 %169, i128* %XMM9, align 1, !mcsema_real_eip !11
  %170 = load i128, i128* %XMM10_val, !mcsema_real_eip !11
  store i128 %170, i128* %XMM10, align 1, !mcsema_real_eip !11
  %171 = load i128, i128* %XMM11_val, !mcsema_real_eip !11
  store i128 %171, i128* %XMM11, align 1, !mcsema_real_eip !11
  %172 = load i128, i128* %XMM12_val, !mcsema_real_eip !11
  store i128 %172, i128* %XMM12, align 1, !mcsema_real_eip !11
  %173 = load i128, i128* %XMM13_val, !mcsema_real_eip !11
  store i128 %173, i128* %XMM13, align 1, !mcsema_real_eip !11
  %174 = load i128, i128* %XMM14_val, !mcsema_real_eip !11
  store i128 %174, i128* %XMM14, align 1, !mcsema_real_eip !11
  %175 = load i128, i128* %XMM15_val, !mcsema_real_eip !11
  store i128 %175, i128* %XMM15, align 1, !mcsema_real_eip !11
  %176 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !11
  store i64 %176, i64* %STACK_BASE, align 1, !mcsema_real_eip !11
  %177 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !11
  store i64 %177, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !11
  tail call x86_64_sysvcc void @sub_4005f0(%struct.regs* %0), !mcsema_real_eip !11
  %178 = load i64, i64* %RAX, !mcsema_real_eip !11
  store i64 %178, i64* %RAX_val, !mcsema_real_eip !11
  %179 = load i64, i64* %RBX, !mcsema_real_eip !11
  store i64 %179, i64* %RBX_val, !mcsema_real_eip !11
  %180 = load i64, i64* %RCX, !mcsema_real_eip !11
  store i64 %180, i64* %RCX_val, !mcsema_real_eip !11
  %181 = load i64, i64* %RDX, !mcsema_real_eip !11
  store i64 %181, i64* %RDX_val, !mcsema_real_eip !11
  %182 = load i64, i64* %RSI, !mcsema_real_eip !11
  store i64 %182, i64* %RSI_val, !mcsema_real_eip !11
  %183 = load i64, i64* %RDI, !mcsema_real_eip !11
  store i64 %183, i64* %RDI_val, !mcsema_real_eip !11
  %184 = load i64, i64* %RSP, !mcsema_real_eip !11
  store i64 %184, i64* %RSP_val, !mcsema_real_eip !11
  %185 = load i64, i64* %RBP, !mcsema_real_eip !11
  store i64 %185, i64* %RBP_val, !mcsema_real_eip !11
  %186 = load i64, i64* %R8, !mcsema_real_eip !11
  store i64 %186, i64* %R8_val, !mcsema_real_eip !11
  %187 = load i64, i64* %R9, !mcsema_real_eip !11
  store i64 %187, i64* %R9_val, !mcsema_real_eip !11
  %188 = load i64, i64* %R10, !mcsema_real_eip !11
  store i64 %188, i64* %R10_val, !mcsema_real_eip !11
  %189 = load i64, i64* %R11, !mcsema_real_eip !11
  store i64 %189, i64* %R11_val, !mcsema_real_eip !11
  %190 = load i64, i64* %R12, !mcsema_real_eip !11
  store i64 %190, i64* %R12_val, !mcsema_real_eip !11
  %191 = load i64, i64* %R13, !mcsema_real_eip !11
  store i64 %191, i64* %R13_val, !mcsema_real_eip !11
  %192 = load i64, i64* %R14, !mcsema_real_eip !11
  store i64 %192, i64* %R14_val, !mcsema_real_eip !11
  %193 = load i64, i64* %R15, !mcsema_real_eip !11
  store i64 %193, i64* %R15_val, !mcsema_real_eip !11
  %194 = load i64, i64* %RIP, !mcsema_real_eip !11
  store i64 %194, i64* %RIP_val, !mcsema_real_eip !11
  %195 = load i1, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 %195, i1* %CF_val, !mcsema_real_eip !11
  %196 = load i1, i1* %PF, align 1, !mcsema_real_eip !11
  store i1 %196, i1* %PF_val, !mcsema_real_eip !11
  %197 = load i1, i1* %AF, align 1, !mcsema_real_eip !11
  store i1 %197, i1* %AF_val, !mcsema_real_eip !11
  %198 = load i1, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 %198, i1* %ZF_val, !mcsema_real_eip !11
  %199 = load i1, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 %199, i1* %SF_val, !mcsema_real_eip !11
  %200 = load i1, i1* %OF, align 1, !mcsema_real_eip !11
  store i1 %200, i1* %OF_val, !mcsema_real_eip !11
  %201 = load i1, i1* %DF, align 1, !mcsema_real_eip !11
  store i1 %201, i1* %DF_val, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !11
  %202 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !11
  store i1 %202, i1* %FPU_B_val, !mcsema_real_eip !11
  %203 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  store i1 %203, i1* %FPU_C3_val, !mcsema_real_eip !11
  %204 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  store i3 %204, i3* %FPU_TOP_val, !mcsema_real_eip !11
  %205 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  store i1 %205, i1* %FPU_C2_val, !mcsema_real_eip !11
  %206 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  store i1 %206, i1* %FPU_C1_val, !mcsema_real_eip !11
  %207 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  store i1 %207, i1* %FPU_C0_val, !mcsema_real_eip !11
  %208 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  store i1 %208, i1* %FPU_ES_val, !mcsema_real_eip !11
  %209 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  store i1 %209, i1* %FPU_SF_val, !mcsema_real_eip !11
  %210 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  store i1 %210, i1* %FPU_PE_val, !mcsema_real_eip !11
  %211 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  store i1 %211, i1* %FPU_UE_val, !mcsema_real_eip !11
  %212 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  store i1 %212, i1* %FPU_OE_val, !mcsema_real_eip !11
  %213 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  store i1 %213, i1* %FPU_ZE_val, !mcsema_real_eip !11
  %214 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  store i1 %214, i1* %FPU_DE_val, !mcsema_real_eip !11
  %215 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  store i1 %215, i1* %FPU_IE_val, !mcsema_real_eip !11
  %216 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !11
  store i1 %216, i1* %FPU_X_val, !mcsema_real_eip !11
  %217 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  store i2 %217, i2* %FPU_RC_val, !mcsema_real_eip !11
  %218 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  store i2 %218, i2* %FPU_PC_val, !mcsema_real_eip !11
  %219 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  store i1 %219, i1* %FPU_PM_val, !mcsema_real_eip !11
  %220 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  store i1 %220, i1* %FPU_UM_val, !mcsema_real_eip !11
  %221 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  store i1 %221, i1* %FPU_OM_val, !mcsema_real_eip !11
  %222 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  store i1 %222, i1* %FPU_ZM_val, !mcsema_real_eip !11
  %223 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  store i1 %223, i1* %FPU_DM_val, !mcsema_real_eip !11
  %224 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  store i1 %224, i1* %FPU_IM_val, !mcsema_real_eip !11
  %225 = load i64, i64* %52, align 4
  store i64 %225, i64* %53, align 4
  %226 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  store i16 %226, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !11
  %227 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !11
  store i64 %227, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !11
  %228 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  store i16 %228, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !11
  %229 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !11
  store i64 %229, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !11
  %230 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !11
  store i11 %230, i11* %FPU_FOPCODE_val, !mcsema_real_eip !11
  %231 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !11
  store i128 %231, i128* %XMM0_val, !mcsema_real_eip !11
  %232 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !11
  store i128 %232, i128* %XMM1_val, !mcsema_real_eip !11
  %233 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !11
  store i128 %233, i128* %XMM2_val, !mcsema_real_eip !11
  %234 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !11
  store i128 %234, i128* %XMM3_val, !mcsema_real_eip !11
  %235 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !11
  store i128 %235, i128* %XMM4_val, !mcsema_real_eip !11
  %236 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !11
  store i128 %236, i128* %XMM5_val, !mcsema_real_eip !11
  %237 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !11
  store i128 %237, i128* %XMM6_val, !mcsema_real_eip !11
  %238 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !11
  store i128 %238, i128* %XMM7_val, !mcsema_real_eip !11
  %239 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !11
  store i128 %239, i128* %XMM8_val, !mcsema_real_eip !11
  %240 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !11
  store i128 %240, i128* %XMM9_val, !mcsema_real_eip !11
  %241 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !11
  store i128 %241, i128* %XMM10_val, !mcsema_real_eip !11
  %242 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !11
  store i128 %242, i128* %XMM11_val, !mcsema_real_eip !11
  %243 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !11
  store i128 %243, i128* %XMM12_val, !mcsema_real_eip !11
  %244 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !11
  store i128 %244, i128* %XMM13_val, !mcsema_real_eip !11
  %245 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !11
  store i128 %245, i128* %XMM14_val, !mcsema_real_eip !11
  %246 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !11
  store i128 %246, i128* %XMM15_val, !mcsema_real_eip !11
  %247 = load i64, i64* %STACK_BASE, !mcsema_real_eip !11
  store i64 %247, i64* %STACK_BASE_val, !mcsema_real_eip !11
  %248 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !11
  store i64 %248, i64* %STACK_LIMIT_val, !mcsema_real_eip !11
  %249 = load i64, i64* %RSP_val, !mcsema_real_eip !12
  %250 = inttoptr i64 %249 to i64*, !mcsema_real_eip !12
  %251 = bitcast i64* %250 to i32*
  store i32 5, i32* %251, !mcsema_real_eip !12
  %252 = load i64, i64* %RSP_val, !mcsema_real_eip !13
  %253 = add i64 %252, 4, !mcsema_real_eip !13
  %254 = inttoptr i64 %253 to i64*, !mcsema_real_eip !13
  %255 = bitcast i64* %254 to i32*
  store i32 6, i32* %255, !mcsema_real_eip !13
  %256 = load i64, i64* %RSP_val, !mcsema_real_eip !14
  %257 = add i64 %256, 8, !mcsema_real_eip !14
  %258 = inttoptr i64 %257 to i64*, !mcsema_real_eip !14
  %259 = bitcast i64* %258 to i32*
  store i32 7, i32* %259, !mcsema_real_eip !14
  %260 = load i64, i64* %RSP_val, !mcsema_real_eip !15
  %261 = add i64 %260, 12, !mcsema_real_eip !15
  %262 = inttoptr i64 %261 to i64*, !mcsema_real_eip !15
  %263 = bitcast i64* %262 to i32*
  store i32 8, i32* %263, !mcsema_real_eip !15
  store i64 1, i64* %RDI_val, !mcsema_real_eip !16
  %264 = load i64, i64* %RBX_val, !mcsema_real_eip !17
  store i64 %264, i64* %RSI_val, !mcsema_real_eip !17
  %265 = load i64, i64* %RSP_val, !mcsema_real_eip !18
  %266 = add i64 %265, -8
  %267 = inttoptr i64 %266 to i64*, !mcsema_real_eip !18
  store i64 -4981261766360305936, i64* %267, !mcsema_real_eip !18
  store i64 %266, i64* %RSP_val, !mcsema_real_eip !18
  %268 = load i64, i64* %RAX_val, !mcsema_real_eip !18
  store i64 %268, i64* %RAX, !mcsema_real_eip !18
  %269 = load i64, i64* %RBX_val, !mcsema_real_eip !18
  store i64 %269, i64* %RBX, !mcsema_real_eip !18
  %270 = load i64, i64* %RCX_val, !mcsema_real_eip !18
  store i64 %270, i64* %RCX, !mcsema_real_eip !18
  %271 = load i64, i64* %RDX_val, !mcsema_real_eip !18
  store i64 %271, i64* %RDX, !mcsema_real_eip !18
  %272 = load i64, i64* %RSI_val, !mcsema_real_eip !18
  store i64 %272, i64* %RSI, !mcsema_real_eip !18
  %273 = load i64, i64* %RDI_val, !mcsema_real_eip !18
  store i64 %273, i64* %RDI, !mcsema_real_eip !18
  %274 = load i64, i64* %RSP_val, !mcsema_real_eip !18
  store i64 %274, i64* %RSP, !mcsema_real_eip !18
  %275 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  store i64 %275, i64* %RBP, !mcsema_real_eip !18
  %276 = load i64, i64* %R8_val, !mcsema_real_eip !18
  store i64 %276, i64* %R8, !mcsema_real_eip !18
  %277 = load i64, i64* %R9_val, !mcsema_real_eip !18
  store i64 %277, i64* %R9, !mcsema_real_eip !18
  %278 = load i64, i64* %R10_val, !mcsema_real_eip !18
  store i64 %278, i64* %R10, !mcsema_real_eip !18
  %279 = load i64, i64* %R11_val, !mcsema_real_eip !18
  store i64 %279, i64* %R11, !mcsema_real_eip !18
  %280 = load i64, i64* %R12_val, !mcsema_real_eip !18
  store i64 %280, i64* %R12, !mcsema_real_eip !18
  %281 = load i64, i64* %R13_val, !mcsema_real_eip !18
  store i64 %281, i64* %R13, !mcsema_real_eip !18
  %282 = load i64, i64* %R14_val, !mcsema_real_eip !18
  store i64 %282, i64* %R14, !mcsema_real_eip !18
  %283 = load i64, i64* %R15_val, !mcsema_real_eip !18
  store i64 %283, i64* %R15, !mcsema_real_eip !18
  %284 = load i64, i64* %RIP_val, !mcsema_real_eip !18
  store i64 %284, i64* %RIP, !mcsema_real_eip !18
  %285 = load i1, i1* %CF_val, !mcsema_real_eip !18
  store i1 %285, i1* %CF, align 1, !mcsema_real_eip !18
  %286 = load i1, i1* %PF_val, !mcsema_real_eip !18
  store i1 %286, i1* %PF, align 1, !mcsema_real_eip !18
  %287 = load i1, i1* %AF_val, !mcsema_real_eip !18
  store i1 %287, i1* %AF, align 1, !mcsema_real_eip !18
  %288 = load i1, i1* %ZF_val, !mcsema_real_eip !18
  store i1 %288, i1* %ZF, align 1, !mcsema_real_eip !18
  %289 = load i1, i1* %SF_val, !mcsema_real_eip !18
  store i1 %289, i1* %SF, align 1, !mcsema_real_eip !18
  %290 = load i1, i1* %OF_val, !mcsema_real_eip !18
  store i1 %290, i1* %OF, align 1, !mcsema_real_eip !18
  %291 = load i1, i1* %DF_val, !mcsema_real_eip !18
  store i1 %291, i1* %DF, align 1, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !18
  %292 = load i1, i1* %FPU_B_val, !mcsema_real_eip !18
  store i1 %292, i1* %FPU_B, align 1, !mcsema_real_eip !18
  %293 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !18
  store i1 %293, i1* %FPU_C3, align 1, !mcsema_real_eip !18
  %294 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !18
  store i3 %294, i3* %FPU_TOP, align 1, !mcsema_real_eip !18
  %295 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !18
  store i1 %295, i1* %FPU_C2, align 1, !mcsema_real_eip !18
  %296 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !18
  store i1 %296, i1* %FPU_C1, align 1, !mcsema_real_eip !18
  %297 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !18
  store i1 %297, i1* %FPU_C0, align 1, !mcsema_real_eip !18
  %298 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !18
  store i1 %298, i1* %FPU_ES, align 1, !mcsema_real_eip !18
  %299 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !18
  store i1 %299, i1* %FPU_SF, align 1, !mcsema_real_eip !18
  %300 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !18
  store i1 %300, i1* %FPU_PE, align 1, !mcsema_real_eip !18
  %301 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !18
  store i1 %301, i1* %FPU_UE, align 1, !mcsema_real_eip !18
  %302 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !18
  store i1 %302, i1* %FPU_OE, align 1, !mcsema_real_eip !18
  %303 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !18
  store i1 %303, i1* %FPU_ZE, align 1, !mcsema_real_eip !18
  %304 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !18
  store i1 %304, i1* %FPU_DE, align 1, !mcsema_real_eip !18
  %305 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !18
  store i1 %305, i1* %FPU_IE, align 1, !mcsema_real_eip !18
  %306 = load i1, i1* %FPU_X_val, !mcsema_real_eip !18
  store i1 %306, i1* %FPU_X, align 1, !mcsema_real_eip !18
  %307 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !18
  store i2 %307, i2* %FPU_RC, align 1, !mcsema_real_eip !18
  %308 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !18
  store i2 %308, i2* %FPU_PC, align 1, !mcsema_real_eip !18
  %309 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !18
  store i1 %309, i1* %FPU_PM, align 1, !mcsema_real_eip !18
  %310 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !18
  store i1 %310, i1* %FPU_UM, align 1, !mcsema_real_eip !18
  %311 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !18
  store i1 %311, i1* %FPU_OM, align 1, !mcsema_real_eip !18
  %312 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !18
  store i1 %312, i1* %FPU_ZM, align 1, !mcsema_real_eip !18
  %313 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !18
  store i1 %313, i1* %FPU_DM, align 1, !mcsema_real_eip !18
  %314 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !18
  store i1 %314, i1* %FPU_IM, align 1, !mcsema_real_eip !18
  %315 = load i64, i64* %53, align 4
  store i64 %315, i64* %52, align 4
  %316 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !18
  store i16 %316, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !18
  %317 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !18
  store i64 %317, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !18
  %318 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !18
  store i16 %318, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !18
  %319 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !18
  store i64 %319, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !18
  %320 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !18
  store i11 %320, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !18
  %321 = load i128, i128* %XMM0_val, !mcsema_real_eip !18
  store i128 %321, i128* %XMM0, align 1, !mcsema_real_eip !18
  %322 = load i128, i128* %XMM1_val, !mcsema_real_eip !18
  store i128 %322, i128* %XMM1, align 1, !mcsema_real_eip !18
  %323 = load i128, i128* %XMM2_val, !mcsema_real_eip !18
  store i128 %323, i128* %XMM2, align 1, !mcsema_real_eip !18
  %324 = load i128, i128* %XMM3_val, !mcsema_real_eip !18
  store i128 %324, i128* %XMM3, align 1, !mcsema_real_eip !18
  %325 = load i128, i128* %XMM4_val, !mcsema_real_eip !18
  store i128 %325, i128* %XMM4, align 1, !mcsema_real_eip !18
  %326 = load i128, i128* %XMM5_val, !mcsema_real_eip !18
  store i128 %326, i128* %XMM5, align 1, !mcsema_real_eip !18
  %327 = load i128, i128* %XMM6_val, !mcsema_real_eip !18
  store i128 %327, i128* %XMM6, align 1, !mcsema_real_eip !18
  %328 = load i128, i128* %XMM7_val, !mcsema_real_eip !18
  store i128 %328, i128* %XMM7, align 1, !mcsema_real_eip !18
  %329 = load i128, i128* %XMM8_val, !mcsema_real_eip !18
  store i128 %329, i128* %XMM8, align 1, !mcsema_real_eip !18
  %330 = load i128, i128* %XMM9_val, !mcsema_real_eip !18
  store i128 %330, i128* %XMM9, align 1, !mcsema_real_eip !18
  %331 = load i128, i128* %XMM10_val, !mcsema_real_eip !18
  store i128 %331, i128* %XMM10, align 1, !mcsema_real_eip !18
  %332 = load i128, i128* %XMM11_val, !mcsema_real_eip !18
  store i128 %332, i128* %XMM11, align 1, !mcsema_real_eip !18
  %333 = load i128, i128* %XMM12_val, !mcsema_real_eip !18
  store i128 %333, i128* %XMM12, align 1, !mcsema_real_eip !18
  %334 = load i128, i128* %XMM13_val, !mcsema_real_eip !18
  store i128 %334, i128* %XMM13, align 1, !mcsema_real_eip !18
  %335 = load i128, i128* %XMM14_val, !mcsema_real_eip !18
  store i128 %335, i128* %XMM14, align 1, !mcsema_real_eip !18
  %336 = load i128, i128* %XMM15_val, !mcsema_real_eip !18
  store i128 %336, i128* %XMM15, align 1, !mcsema_real_eip !18
  %337 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !18
  store i64 %337, i64* %STACK_BASE, align 1, !mcsema_real_eip !18
  %338 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !18
  store i64 %338, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !18
  tail call x86_64_sysvcc void @sub_4005f0(%struct.regs* %0), !mcsema_real_eip !18
  %339 = load i64, i64* %RAX, !mcsema_real_eip !18
  store i64 %339, i64* %RAX_val, !mcsema_real_eip !18
  %340 = load i64, i64* %RBX, !mcsema_real_eip !18
  store i64 %340, i64* %RBX_val, !mcsema_real_eip !18
  %341 = load i64, i64* %RCX, !mcsema_real_eip !18
  store i64 %341, i64* %RCX_val, !mcsema_real_eip !18
  %342 = load i64, i64* %RDX, !mcsema_real_eip !18
  store i64 %342, i64* %RDX_val, !mcsema_real_eip !18
  %343 = load i64, i64* %RSI, !mcsema_real_eip !18
  store i64 %343, i64* %RSI_val, !mcsema_real_eip !18
  %344 = load i64, i64* %RDI, !mcsema_real_eip !18
  store i64 %344, i64* %RDI_val, !mcsema_real_eip !18
  %345 = load i64, i64* %RSP, !mcsema_real_eip !18
  store i64 %345, i64* %RSP_val, !mcsema_real_eip !18
  %346 = load i64, i64* %RBP, !mcsema_real_eip !18
  store i64 %346, i64* %RBP_val, !mcsema_real_eip !18
  %347 = load i64, i64* %R8, !mcsema_real_eip !18
  store i64 %347, i64* %R8_val, !mcsema_real_eip !18
  %348 = load i64, i64* %R9, !mcsema_real_eip !18
  store i64 %348, i64* %R9_val, !mcsema_real_eip !18
  %349 = load i64, i64* %R10, !mcsema_real_eip !18
  store i64 %349, i64* %R10_val, !mcsema_real_eip !18
  %350 = load i64, i64* %R11, !mcsema_real_eip !18
  store i64 %350, i64* %R11_val, !mcsema_real_eip !18
  %351 = load i64, i64* %R12, !mcsema_real_eip !18
  store i64 %351, i64* %R12_val, !mcsema_real_eip !18
  %352 = load i64, i64* %R13, !mcsema_real_eip !18
  store i64 %352, i64* %R13_val, !mcsema_real_eip !18
  %353 = load i64, i64* %R14, !mcsema_real_eip !18
  store i64 %353, i64* %R14_val, !mcsema_real_eip !18
  %354 = load i64, i64* %R15, !mcsema_real_eip !18
  store i64 %354, i64* %R15_val, !mcsema_real_eip !18
  %355 = load i64, i64* %RIP, !mcsema_real_eip !18
  store i64 %355, i64* %RIP_val, !mcsema_real_eip !18
  %356 = load i1, i1* %CF, align 1, !mcsema_real_eip !18
  store i1 %356, i1* %CF_val, !mcsema_real_eip !18
  %357 = load i1, i1* %PF, align 1, !mcsema_real_eip !18
  store i1 %357, i1* %PF_val, !mcsema_real_eip !18
  %358 = load i1, i1* %AF, align 1, !mcsema_real_eip !18
  store i1 %358, i1* %AF_val, !mcsema_real_eip !18
  %359 = load i1, i1* %ZF, align 1, !mcsema_real_eip !18
  store i1 %359, i1* %ZF_val, !mcsema_real_eip !18
  %360 = load i1, i1* %SF, align 1, !mcsema_real_eip !18
  store i1 %360, i1* %SF_val, !mcsema_real_eip !18
  %361 = load i1, i1* %OF, align 1, !mcsema_real_eip !18
  store i1 %361, i1* %OF_val, !mcsema_real_eip !18
  %362 = load i1, i1* %DF, align 1, !mcsema_real_eip !18
  store i1 %362, i1* %DF_val, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !18
  %363 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !18
  store i1 %363, i1* %FPU_B_val, !mcsema_real_eip !18
  %364 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !18
  store i1 %364, i1* %FPU_C3_val, !mcsema_real_eip !18
  %365 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !18
  store i3 %365, i3* %FPU_TOP_val, !mcsema_real_eip !18
  %366 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !18
  store i1 %366, i1* %FPU_C2_val, !mcsema_real_eip !18
  %367 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !18
  store i1 %367, i1* %FPU_C1_val, !mcsema_real_eip !18
  %368 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !18
  store i1 %368, i1* %FPU_C0_val, !mcsema_real_eip !18
  %369 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !18
  store i1 %369, i1* %FPU_ES_val, !mcsema_real_eip !18
  %370 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !18
  store i1 %370, i1* %FPU_SF_val, !mcsema_real_eip !18
  %371 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !18
  store i1 %371, i1* %FPU_PE_val, !mcsema_real_eip !18
  %372 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !18
  store i1 %372, i1* %FPU_UE_val, !mcsema_real_eip !18
  %373 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !18
  store i1 %373, i1* %FPU_OE_val, !mcsema_real_eip !18
  %374 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !18
  store i1 %374, i1* %FPU_ZE_val, !mcsema_real_eip !18
  %375 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !18
  store i1 %375, i1* %FPU_DE_val, !mcsema_real_eip !18
  %376 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !18
  store i1 %376, i1* %FPU_IE_val, !mcsema_real_eip !18
  %377 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !18
  store i1 %377, i1* %FPU_X_val, !mcsema_real_eip !18
  %378 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !18
  store i2 %378, i2* %FPU_RC_val, !mcsema_real_eip !18
  %379 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !18
  store i2 %379, i2* %FPU_PC_val, !mcsema_real_eip !18
  %380 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !18
  store i1 %380, i1* %FPU_PM_val, !mcsema_real_eip !18
  %381 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !18
  store i1 %381, i1* %FPU_UM_val, !mcsema_real_eip !18
  %382 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !18
  store i1 %382, i1* %FPU_OM_val, !mcsema_real_eip !18
  %383 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !18
  store i1 %383, i1* %FPU_ZM_val, !mcsema_real_eip !18
  %384 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !18
  store i1 %384, i1* %FPU_DM_val, !mcsema_real_eip !18
  %385 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !18
  store i1 %385, i1* %FPU_IM_val, !mcsema_real_eip !18
  %386 = load i64, i64* %52, align 4
  store i64 %386, i64* %53, align 4
  %387 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !18
  store i16 %387, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !18
  %388 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !18
  store i64 %388, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !18
  %389 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !18
  store i16 %389, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !18
  %390 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !18
  store i64 %390, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !18
  %391 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !18
  store i11 %391, i11* %FPU_FOPCODE_val, !mcsema_real_eip !18
  %392 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !18
  store i128 %392, i128* %XMM0_val, !mcsema_real_eip !18
  %393 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !18
  store i128 %393, i128* %XMM1_val, !mcsema_real_eip !18
  %394 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !18
  store i128 %394, i128* %XMM2_val, !mcsema_real_eip !18
  %395 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !18
  store i128 %395, i128* %XMM3_val, !mcsema_real_eip !18
  %396 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !18
  store i128 %396, i128* %XMM4_val, !mcsema_real_eip !18
  %397 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !18
  store i128 %397, i128* %XMM5_val, !mcsema_real_eip !18
  %398 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !18
  store i128 %398, i128* %XMM6_val, !mcsema_real_eip !18
  %399 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !18
  store i128 %399, i128* %XMM7_val, !mcsema_real_eip !18
  %400 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !18
  store i128 %400, i128* %XMM8_val, !mcsema_real_eip !18
  %401 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !18
  store i128 %401, i128* %XMM9_val, !mcsema_real_eip !18
  %402 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !18
  store i128 %402, i128* %XMM10_val, !mcsema_real_eip !18
  %403 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !18
  store i128 %403, i128* %XMM11_val, !mcsema_real_eip !18
  %404 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !18
  store i128 %404, i128* %XMM12_val, !mcsema_real_eip !18
  %405 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !18
  store i128 %405, i128* %XMM13_val, !mcsema_real_eip !18
  %406 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !18
  store i128 %406, i128* %XMM14_val, !mcsema_real_eip !18
  %407 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !18
  store i128 %407, i128* %XMM15_val, !mcsema_real_eip !18
  %408 = load i64, i64* %STACK_BASE, !mcsema_real_eip !18
  store i64 %408, i64* %STACK_BASE_val, !mcsema_real_eip !18
  %409 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !18
  store i64 %409, i64* %STACK_LIMIT_val, !mcsema_real_eip !18
  %410 = load i64, i64* %RSP_val, !mcsema_real_eip !19
  %411 = inttoptr i64 %410 to i64*, !mcsema_real_eip !19
  %412 = bitcast i64* %411 to i32*
  store i32 5, i32* %412, !mcsema_real_eip !19
  %413 = load i64, i64* %RSP_val, !mcsema_real_eip !20
  %414 = add i64 %413, 4, !mcsema_real_eip !20
  %415 = inttoptr i64 %414 to i64*, !mcsema_real_eip !20
  %416 = bitcast i64* %415 to i32*
  store i32 6, i32* %416, !mcsema_real_eip !20
  %417 = load i64, i64* %RSP_val, !mcsema_real_eip !21
  %418 = add i64 %417, 8, !mcsema_real_eip !21
  %419 = inttoptr i64 %418 to i64*, !mcsema_real_eip !21
  %420 = bitcast i64* %419 to i32*
  store i32 7, i32* %420, !mcsema_real_eip !21
  %421 = load i64, i64* %RSP_val, !mcsema_real_eip !22
  %422 = add i64 %421, 12, !mcsema_real_eip !22
  %423 = inttoptr i64 %422 to i64*, !mcsema_real_eip !22
  %424 = bitcast i64* %423 to i32*
  store i32 8, i32* %424, !mcsema_real_eip !22
  store i64 2, i64* %RDI_val, !mcsema_real_eip !23
  %425 = load i64, i64* %RBX_val, !mcsema_real_eip !24
  store i64 %425, i64* %RSI_val, !mcsema_real_eip !24
  %426 = load i64, i64* %RSP_val, !mcsema_real_eip !25
  %427 = add i64 %426, -8
  %428 = inttoptr i64 %427 to i64*, !mcsema_real_eip !25
  store i64 -4981261766360305936, i64* %428, !mcsema_real_eip !25
  store i64 %427, i64* %RSP_val, !mcsema_real_eip !25
  %429 = load i64, i64* %RAX_val, !mcsema_real_eip !25
  store i64 %429, i64* %RAX, !mcsema_real_eip !25
  %430 = load i64, i64* %RBX_val, !mcsema_real_eip !25
  store i64 %430, i64* %RBX, !mcsema_real_eip !25
  %431 = load i64, i64* %RCX_val, !mcsema_real_eip !25
  store i64 %431, i64* %RCX, !mcsema_real_eip !25
  %432 = load i64, i64* %RDX_val, !mcsema_real_eip !25
  store i64 %432, i64* %RDX, !mcsema_real_eip !25
  %433 = load i64, i64* %RSI_val, !mcsema_real_eip !25
  store i64 %433, i64* %RSI, !mcsema_real_eip !25
  %434 = load i64, i64* %RDI_val, !mcsema_real_eip !25
  store i64 %434, i64* %RDI, !mcsema_real_eip !25
  %435 = load i64, i64* %RSP_val, !mcsema_real_eip !25
  store i64 %435, i64* %RSP, !mcsema_real_eip !25
  %436 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  store i64 %436, i64* %RBP, !mcsema_real_eip !25
  %437 = load i64, i64* %R8_val, !mcsema_real_eip !25
  store i64 %437, i64* %R8, !mcsema_real_eip !25
  %438 = load i64, i64* %R9_val, !mcsema_real_eip !25
  store i64 %438, i64* %R9, !mcsema_real_eip !25
  %439 = load i64, i64* %R10_val, !mcsema_real_eip !25
  store i64 %439, i64* %R10, !mcsema_real_eip !25
  %440 = load i64, i64* %R11_val, !mcsema_real_eip !25
  store i64 %440, i64* %R11, !mcsema_real_eip !25
  %441 = load i64, i64* %R12_val, !mcsema_real_eip !25
  store i64 %441, i64* %R12, !mcsema_real_eip !25
  %442 = load i64, i64* %R13_val, !mcsema_real_eip !25
  store i64 %442, i64* %R13, !mcsema_real_eip !25
  %443 = load i64, i64* %R14_val, !mcsema_real_eip !25
  store i64 %443, i64* %R14, !mcsema_real_eip !25
  %444 = load i64, i64* %R15_val, !mcsema_real_eip !25
  store i64 %444, i64* %R15, !mcsema_real_eip !25
  %445 = load i64, i64* %RIP_val, !mcsema_real_eip !25
  store i64 %445, i64* %RIP, !mcsema_real_eip !25
  %446 = load i1, i1* %CF_val, !mcsema_real_eip !25
  store i1 %446, i1* %CF, align 1, !mcsema_real_eip !25
  %447 = load i1, i1* %PF_val, !mcsema_real_eip !25
  store i1 %447, i1* %PF, align 1, !mcsema_real_eip !25
  %448 = load i1, i1* %AF_val, !mcsema_real_eip !25
  store i1 %448, i1* %AF, align 1, !mcsema_real_eip !25
  %449 = load i1, i1* %ZF_val, !mcsema_real_eip !25
  store i1 %449, i1* %ZF, align 1, !mcsema_real_eip !25
  %450 = load i1, i1* %SF_val, !mcsema_real_eip !25
  store i1 %450, i1* %SF, align 1, !mcsema_real_eip !25
  %451 = load i1, i1* %OF_val, !mcsema_real_eip !25
  store i1 %451, i1* %OF, align 1, !mcsema_real_eip !25
  %452 = load i1, i1* %DF_val, !mcsema_real_eip !25
  store i1 %452, i1* %DF, align 1, !mcsema_real_eip !25
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !25
  %453 = load i1, i1* %FPU_B_val, !mcsema_real_eip !25
  store i1 %453, i1* %FPU_B, align 1, !mcsema_real_eip !25
  %454 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !25
  store i1 %454, i1* %FPU_C3, align 1, !mcsema_real_eip !25
  %455 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !25
  store i3 %455, i3* %FPU_TOP, align 1, !mcsema_real_eip !25
  %456 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !25
  store i1 %456, i1* %FPU_C2, align 1, !mcsema_real_eip !25
  %457 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !25
  store i1 %457, i1* %FPU_C1, align 1, !mcsema_real_eip !25
  %458 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !25
  store i1 %458, i1* %FPU_C0, align 1, !mcsema_real_eip !25
  %459 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !25
  store i1 %459, i1* %FPU_ES, align 1, !mcsema_real_eip !25
  %460 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !25
  store i1 %460, i1* %FPU_SF, align 1, !mcsema_real_eip !25
  %461 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !25
  store i1 %461, i1* %FPU_PE, align 1, !mcsema_real_eip !25
  %462 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !25
  store i1 %462, i1* %FPU_UE, align 1, !mcsema_real_eip !25
  %463 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !25
  store i1 %463, i1* %FPU_OE, align 1, !mcsema_real_eip !25
  %464 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !25
  store i1 %464, i1* %FPU_ZE, align 1, !mcsema_real_eip !25
  %465 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !25
  store i1 %465, i1* %FPU_DE, align 1, !mcsema_real_eip !25
  %466 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !25
  store i1 %466, i1* %FPU_IE, align 1, !mcsema_real_eip !25
  %467 = load i1, i1* %FPU_X_val, !mcsema_real_eip !25
  store i1 %467, i1* %FPU_X, align 1, !mcsema_real_eip !25
  %468 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !25
  store i2 %468, i2* %FPU_RC, align 1, !mcsema_real_eip !25
  %469 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !25
  store i2 %469, i2* %FPU_PC, align 1, !mcsema_real_eip !25
  %470 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !25
  store i1 %470, i1* %FPU_PM, align 1, !mcsema_real_eip !25
  %471 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !25
  store i1 %471, i1* %FPU_UM, align 1, !mcsema_real_eip !25
  %472 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !25
  store i1 %472, i1* %FPU_OM, align 1, !mcsema_real_eip !25
  %473 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !25
  store i1 %473, i1* %FPU_ZM, align 1, !mcsema_real_eip !25
  %474 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !25
  store i1 %474, i1* %FPU_DM, align 1, !mcsema_real_eip !25
  %475 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !25
  store i1 %475, i1* %FPU_IM, align 1, !mcsema_real_eip !25
  %476 = load i64, i64* %53, align 4
  store i64 %476, i64* %52, align 4
  %477 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !25
  store i16 %477, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !25
  %478 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !25
  store i64 %478, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !25
  %479 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !25
  store i16 %479, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !25
  %480 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !25
  store i64 %480, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !25
  %481 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !25
  store i11 %481, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !25
  %482 = load i128, i128* %XMM0_val, !mcsema_real_eip !25
  store i128 %482, i128* %XMM0, align 1, !mcsema_real_eip !25
  %483 = load i128, i128* %XMM1_val, !mcsema_real_eip !25
  store i128 %483, i128* %XMM1, align 1, !mcsema_real_eip !25
  %484 = load i128, i128* %XMM2_val, !mcsema_real_eip !25
  store i128 %484, i128* %XMM2, align 1, !mcsema_real_eip !25
  %485 = load i128, i128* %XMM3_val, !mcsema_real_eip !25
  store i128 %485, i128* %XMM3, align 1, !mcsema_real_eip !25
  %486 = load i128, i128* %XMM4_val, !mcsema_real_eip !25
  store i128 %486, i128* %XMM4, align 1, !mcsema_real_eip !25
  %487 = load i128, i128* %XMM5_val, !mcsema_real_eip !25
  store i128 %487, i128* %XMM5, align 1, !mcsema_real_eip !25
  %488 = load i128, i128* %XMM6_val, !mcsema_real_eip !25
  store i128 %488, i128* %XMM6, align 1, !mcsema_real_eip !25
  %489 = load i128, i128* %XMM7_val, !mcsema_real_eip !25
  store i128 %489, i128* %XMM7, align 1, !mcsema_real_eip !25
  %490 = load i128, i128* %XMM8_val, !mcsema_real_eip !25
  store i128 %490, i128* %XMM8, align 1, !mcsema_real_eip !25
  %491 = load i128, i128* %XMM9_val, !mcsema_real_eip !25
  store i128 %491, i128* %XMM9, align 1, !mcsema_real_eip !25
  %492 = load i128, i128* %XMM10_val, !mcsema_real_eip !25
  store i128 %492, i128* %XMM10, align 1, !mcsema_real_eip !25
  %493 = load i128, i128* %XMM11_val, !mcsema_real_eip !25
  store i128 %493, i128* %XMM11, align 1, !mcsema_real_eip !25
  %494 = load i128, i128* %XMM12_val, !mcsema_real_eip !25
  store i128 %494, i128* %XMM12, align 1, !mcsema_real_eip !25
  %495 = load i128, i128* %XMM13_val, !mcsema_real_eip !25
  store i128 %495, i128* %XMM13, align 1, !mcsema_real_eip !25
  %496 = load i128, i128* %XMM14_val, !mcsema_real_eip !25
  store i128 %496, i128* %XMM14, align 1, !mcsema_real_eip !25
  %497 = load i128, i128* %XMM15_val, !mcsema_real_eip !25
  store i128 %497, i128* %XMM15, align 1, !mcsema_real_eip !25
  %498 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !25
  store i64 %498, i64* %STACK_BASE, align 1, !mcsema_real_eip !25
  %499 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !25
  store i64 %499, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !25
  tail call x86_64_sysvcc void @sub_4005f0(%struct.regs* %0), !mcsema_real_eip !25
  %500 = load i64, i64* %RAX, !mcsema_real_eip !25
  store i64 %500, i64* %RAX_val, !mcsema_real_eip !25
  %501 = load i64, i64* %RBX, !mcsema_real_eip !25
  store i64 %501, i64* %RBX_val, !mcsema_real_eip !25
  %502 = load i64, i64* %RCX, !mcsema_real_eip !25
  store i64 %502, i64* %RCX_val, !mcsema_real_eip !25
  %503 = load i64, i64* %RDX, !mcsema_real_eip !25
  store i64 %503, i64* %RDX_val, !mcsema_real_eip !25
  %504 = load i64, i64* %RSI, !mcsema_real_eip !25
  store i64 %504, i64* %RSI_val, !mcsema_real_eip !25
  %505 = load i64, i64* %RDI, !mcsema_real_eip !25
  store i64 %505, i64* %RDI_val, !mcsema_real_eip !25
  %506 = load i64, i64* %RSP, !mcsema_real_eip !25
  store i64 %506, i64* %RSP_val, !mcsema_real_eip !25
  %507 = load i64, i64* %RBP, !mcsema_real_eip !25
  store i64 %507, i64* %RBP_val, !mcsema_real_eip !25
  %508 = load i64, i64* %R8, !mcsema_real_eip !25
  store i64 %508, i64* %R8_val, !mcsema_real_eip !25
  %509 = load i64, i64* %R9, !mcsema_real_eip !25
  store i64 %509, i64* %R9_val, !mcsema_real_eip !25
  %510 = load i64, i64* %R10, !mcsema_real_eip !25
  store i64 %510, i64* %R10_val, !mcsema_real_eip !25
  %511 = load i64, i64* %R11, !mcsema_real_eip !25
  store i64 %511, i64* %R11_val, !mcsema_real_eip !25
  %512 = load i64, i64* %R12, !mcsema_real_eip !25
  store i64 %512, i64* %R12_val, !mcsema_real_eip !25
  %513 = load i64, i64* %R13, !mcsema_real_eip !25
  store i64 %513, i64* %R13_val, !mcsema_real_eip !25
  %514 = load i64, i64* %R14, !mcsema_real_eip !25
  store i64 %514, i64* %R14_val, !mcsema_real_eip !25
  %515 = load i64, i64* %R15, !mcsema_real_eip !25
  store i64 %515, i64* %R15_val, !mcsema_real_eip !25
  %516 = load i64, i64* %RIP, !mcsema_real_eip !25
  store i64 %516, i64* %RIP_val, !mcsema_real_eip !25
  %517 = load i1, i1* %CF, align 1, !mcsema_real_eip !25
  store i1 %517, i1* %CF_val, !mcsema_real_eip !25
  %518 = load i1, i1* %PF, align 1, !mcsema_real_eip !25
  store i1 %518, i1* %PF_val, !mcsema_real_eip !25
  %519 = load i1, i1* %AF, align 1, !mcsema_real_eip !25
  store i1 %519, i1* %AF_val, !mcsema_real_eip !25
  %520 = load i1, i1* %ZF, align 1, !mcsema_real_eip !25
  store i1 %520, i1* %ZF_val, !mcsema_real_eip !25
  %521 = load i1, i1* %SF, align 1, !mcsema_real_eip !25
  store i1 %521, i1* %SF_val, !mcsema_real_eip !25
  %522 = load i1, i1* %OF, align 1, !mcsema_real_eip !25
  store i1 %522, i1* %OF_val, !mcsema_real_eip !25
  %523 = load i1, i1* %DF, align 1, !mcsema_real_eip !25
  store i1 %523, i1* %DF_val, !mcsema_real_eip !25
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !25
  %524 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !25
  store i1 %524, i1* %FPU_B_val, !mcsema_real_eip !25
  %525 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !25
  store i1 %525, i1* %FPU_C3_val, !mcsema_real_eip !25
  %526 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !25
  store i3 %526, i3* %FPU_TOP_val, !mcsema_real_eip !25
  %527 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !25
  store i1 %527, i1* %FPU_C2_val, !mcsema_real_eip !25
  %528 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !25
  store i1 %528, i1* %FPU_C1_val, !mcsema_real_eip !25
  %529 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !25
  store i1 %529, i1* %FPU_C0_val, !mcsema_real_eip !25
  %530 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !25
  store i1 %530, i1* %FPU_ES_val, !mcsema_real_eip !25
  %531 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !25
  store i1 %531, i1* %FPU_SF_val, !mcsema_real_eip !25
  %532 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !25
  store i1 %532, i1* %FPU_PE_val, !mcsema_real_eip !25
  %533 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !25
  store i1 %533, i1* %FPU_UE_val, !mcsema_real_eip !25
  %534 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !25
  store i1 %534, i1* %FPU_OE_val, !mcsema_real_eip !25
  %535 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !25
  store i1 %535, i1* %FPU_ZE_val, !mcsema_real_eip !25
  %536 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !25
  store i1 %536, i1* %FPU_DE_val, !mcsema_real_eip !25
  %537 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !25
  store i1 %537, i1* %FPU_IE_val, !mcsema_real_eip !25
  %538 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !25
  store i1 %538, i1* %FPU_X_val, !mcsema_real_eip !25
  %539 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !25
  store i2 %539, i2* %FPU_RC_val, !mcsema_real_eip !25
  %540 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !25
  store i2 %540, i2* %FPU_PC_val, !mcsema_real_eip !25
  %541 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !25
  store i1 %541, i1* %FPU_PM_val, !mcsema_real_eip !25
  %542 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !25
  store i1 %542, i1* %FPU_UM_val, !mcsema_real_eip !25
  %543 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !25
  store i1 %543, i1* %FPU_OM_val, !mcsema_real_eip !25
  %544 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !25
  store i1 %544, i1* %FPU_ZM_val, !mcsema_real_eip !25
  %545 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !25
  store i1 %545, i1* %FPU_DM_val, !mcsema_real_eip !25
  %546 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !25
  store i1 %546, i1* %FPU_IM_val, !mcsema_real_eip !25
  %547 = load i64, i64* %52, align 4
  store i64 %547, i64* %53, align 4
  %548 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !25
  store i16 %548, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !25
  %549 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !25
  store i64 %549, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !25
  %550 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !25
  store i16 %550, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !25
  %551 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !25
  store i64 %551, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !25
  %552 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !25
  store i11 %552, i11* %FPU_FOPCODE_val, !mcsema_real_eip !25
  %553 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !25
  store i128 %553, i128* %XMM0_val, !mcsema_real_eip !25
  %554 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !25
  store i128 %554, i128* %XMM1_val, !mcsema_real_eip !25
  %555 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !25
  store i128 %555, i128* %XMM2_val, !mcsema_real_eip !25
  %556 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !25
  store i128 %556, i128* %XMM3_val, !mcsema_real_eip !25
  %557 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !25
  store i128 %557, i128* %XMM4_val, !mcsema_real_eip !25
  %558 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !25
  store i128 %558, i128* %XMM5_val, !mcsema_real_eip !25
  %559 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !25
  store i128 %559, i128* %XMM6_val, !mcsema_real_eip !25
  %560 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !25
  store i128 %560, i128* %XMM7_val, !mcsema_real_eip !25
  %561 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !25
  store i128 %561, i128* %XMM8_val, !mcsema_real_eip !25
  %562 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !25
  store i128 %562, i128* %XMM9_val, !mcsema_real_eip !25
  %563 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !25
  store i128 %563, i128* %XMM10_val, !mcsema_real_eip !25
  %564 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !25
  store i128 %564, i128* %XMM11_val, !mcsema_real_eip !25
  %565 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !25
  store i128 %565, i128* %XMM12_val, !mcsema_real_eip !25
  %566 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !25
  store i128 %566, i128* %XMM13_val, !mcsema_real_eip !25
  %567 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !25
  store i128 %567, i128* %XMM14_val, !mcsema_real_eip !25
  %568 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !25
  store i128 %568, i128* %XMM15_val, !mcsema_real_eip !25
  %569 = load i64, i64* %STACK_BASE, !mcsema_real_eip !25
  store i64 %569, i64* %STACK_BASE_val, !mcsema_real_eip !25
  %570 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !25
  store i64 %570, i64* %STACK_LIMIT_val, !mcsema_real_eip !25
  %571 = load i64, i64* %RSP_val, !mcsema_real_eip !26
  %572 = inttoptr i64 %571 to i64*, !mcsema_real_eip !26
  %573 = bitcast i64* %572 to i32*
  store i32 5, i32* %573, !mcsema_real_eip !26
  %574 = load i64, i64* %RSP_val, !mcsema_real_eip !27
  %575 = add i64 %574, 4, !mcsema_real_eip !27
  %576 = inttoptr i64 %575 to i64*, !mcsema_real_eip !27
  %577 = bitcast i64* %576 to i32*
  store i32 6, i32* %577, !mcsema_real_eip !27
  %578 = load i64, i64* %RSP_val, !mcsema_real_eip !28
  %579 = add i64 %578, 8, !mcsema_real_eip !28
  %580 = inttoptr i64 %579 to i64*, !mcsema_real_eip !28
  %581 = bitcast i64* %580 to i32*
  store i32 7, i32* %581, !mcsema_real_eip !28
  %582 = load i64, i64* %RSP_val, !mcsema_real_eip !29
  %583 = add i64 %582, 12, !mcsema_real_eip !29
  %584 = inttoptr i64 %583 to i64*, !mcsema_real_eip !29
  %585 = bitcast i64* %584 to i32*
  store i32 8, i32* %585, !mcsema_real_eip !29
  store i64 3, i64* %RDI_val, !mcsema_real_eip !30
  %586 = load i64, i64* %RBX_val, !mcsema_real_eip !31
  store i64 %586, i64* %RSI_val, !mcsema_real_eip !31
  %587 = load i64, i64* %RSP_val, !mcsema_real_eip !32
  %588 = add i64 %587, -8
  %589 = inttoptr i64 %588 to i64*, !mcsema_real_eip !32
  store i64 -4981261766360305936, i64* %589, !mcsema_real_eip !32
  store i64 %588, i64* %RSP_val, !mcsema_real_eip !32
  %590 = load i64, i64* %RAX_val, !mcsema_real_eip !32
  store i64 %590, i64* %RAX, !mcsema_real_eip !32
  %591 = load i64, i64* %RBX_val, !mcsema_real_eip !32
  store i64 %591, i64* %RBX, !mcsema_real_eip !32
  %592 = load i64, i64* %RCX_val, !mcsema_real_eip !32
  store i64 %592, i64* %RCX, !mcsema_real_eip !32
  %593 = load i64, i64* %RDX_val, !mcsema_real_eip !32
  store i64 %593, i64* %RDX, !mcsema_real_eip !32
  %594 = load i64, i64* %RSI_val, !mcsema_real_eip !32
  store i64 %594, i64* %RSI, !mcsema_real_eip !32
  %595 = load i64, i64* %RDI_val, !mcsema_real_eip !32
  store i64 %595, i64* %RDI, !mcsema_real_eip !32
  %596 = load i64, i64* %RSP_val, !mcsema_real_eip !32
  store i64 %596, i64* %RSP, !mcsema_real_eip !32
  %597 = load i64, i64* %RBP_val, !mcsema_real_eip !32
  store i64 %597, i64* %RBP, !mcsema_real_eip !32
  %598 = load i64, i64* %R8_val, !mcsema_real_eip !32
  store i64 %598, i64* %R8, !mcsema_real_eip !32
  %599 = load i64, i64* %R9_val, !mcsema_real_eip !32
  store i64 %599, i64* %R9, !mcsema_real_eip !32
  %600 = load i64, i64* %R10_val, !mcsema_real_eip !32
  store i64 %600, i64* %R10, !mcsema_real_eip !32
  %601 = load i64, i64* %R11_val, !mcsema_real_eip !32
  store i64 %601, i64* %R11, !mcsema_real_eip !32
  %602 = load i64, i64* %R12_val, !mcsema_real_eip !32
  store i64 %602, i64* %R12, !mcsema_real_eip !32
  %603 = load i64, i64* %R13_val, !mcsema_real_eip !32
  store i64 %603, i64* %R13, !mcsema_real_eip !32
  %604 = load i64, i64* %R14_val, !mcsema_real_eip !32
  store i64 %604, i64* %R14, !mcsema_real_eip !32
  %605 = load i64, i64* %R15_val, !mcsema_real_eip !32
  store i64 %605, i64* %R15, !mcsema_real_eip !32
  %606 = load i64, i64* %RIP_val, !mcsema_real_eip !32
  store i64 %606, i64* %RIP, !mcsema_real_eip !32
  %607 = load i1, i1* %CF_val, !mcsema_real_eip !32
  store i1 %607, i1* %CF, align 1, !mcsema_real_eip !32
  %608 = load i1, i1* %PF_val, !mcsema_real_eip !32
  store i1 %608, i1* %PF, align 1, !mcsema_real_eip !32
  %609 = load i1, i1* %AF_val, !mcsema_real_eip !32
  store i1 %609, i1* %AF, align 1, !mcsema_real_eip !32
  %610 = load i1, i1* %ZF_val, !mcsema_real_eip !32
  store i1 %610, i1* %ZF, align 1, !mcsema_real_eip !32
  %611 = load i1, i1* %SF_val, !mcsema_real_eip !32
  store i1 %611, i1* %SF, align 1, !mcsema_real_eip !32
  %612 = load i1, i1* %OF_val, !mcsema_real_eip !32
  store i1 %612, i1* %OF, align 1, !mcsema_real_eip !32
  %613 = load i1, i1* %DF_val, !mcsema_real_eip !32
  store i1 %613, i1* %DF, align 1, !mcsema_real_eip !32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !32
  %614 = load i1, i1* %FPU_B_val, !mcsema_real_eip !32
  store i1 %614, i1* %FPU_B, align 1, !mcsema_real_eip !32
  %615 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !32
  store i1 %615, i1* %FPU_C3, align 1, !mcsema_real_eip !32
  %616 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !32
  store i3 %616, i3* %FPU_TOP, align 1, !mcsema_real_eip !32
  %617 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !32
  store i1 %617, i1* %FPU_C2, align 1, !mcsema_real_eip !32
  %618 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !32
  store i1 %618, i1* %FPU_C1, align 1, !mcsema_real_eip !32
  %619 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !32
  store i1 %619, i1* %FPU_C0, align 1, !mcsema_real_eip !32
  %620 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !32
  store i1 %620, i1* %FPU_ES, align 1, !mcsema_real_eip !32
  %621 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !32
  store i1 %621, i1* %FPU_SF, align 1, !mcsema_real_eip !32
  %622 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !32
  store i1 %622, i1* %FPU_PE, align 1, !mcsema_real_eip !32
  %623 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !32
  store i1 %623, i1* %FPU_UE, align 1, !mcsema_real_eip !32
  %624 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !32
  store i1 %624, i1* %FPU_OE, align 1, !mcsema_real_eip !32
  %625 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !32
  store i1 %625, i1* %FPU_ZE, align 1, !mcsema_real_eip !32
  %626 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !32
  store i1 %626, i1* %FPU_DE, align 1, !mcsema_real_eip !32
  %627 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !32
  store i1 %627, i1* %FPU_IE, align 1, !mcsema_real_eip !32
  %628 = load i1, i1* %FPU_X_val, !mcsema_real_eip !32
  store i1 %628, i1* %FPU_X, align 1, !mcsema_real_eip !32
  %629 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !32
  store i2 %629, i2* %FPU_RC, align 1, !mcsema_real_eip !32
  %630 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !32
  store i2 %630, i2* %FPU_PC, align 1, !mcsema_real_eip !32
  %631 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !32
  store i1 %631, i1* %FPU_PM, align 1, !mcsema_real_eip !32
  %632 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !32
  store i1 %632, i1* %FPU_UM, align 1, !mcsema_real_eip !32
  %633 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !32
  store i1 %633, i1* %FPU_OM, align 1, !mcsema_real_eip !32
  %634 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !32
  store i1 %634, i1* %FPU_ZM, align 1, !mcsema_real_eip !32
  %635 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !32
  store i1 %635, i1* %FPU_DM, align 1, !mcsema_real_eip !32
  %636 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !32
  store i1 %636, i1* %FPU_IM, align 1, !mcsema_real_eip !32
  %637 = load i64, i64* %53, align 4
  store i64 %637, i64* %52, align 4
  %638 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !32
  store i16 %638, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !32
  %639 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !32
  store i64 %639, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !32
  %640 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !32
  store i16 %640, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !32
  %641 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !32
  store i64 %641, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !32
  %642 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !32
  store i11 %642, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !32
  %643 = load i128, i128* %XMM0_val, !mcsema_real_eip !32
  store i128 %643, i128* %XMM0, align 1, !mcsema_real_eip !32
  %644 = load i128, i128* %XMM1_val, !mcsema_real_eip !32
  store i128 %644, i128* %XMM1, align 1, !mcsema_real_eip !32
  %645 = load i128, i128* %XMM2_val, !mcsema_real_eip !32
  store i128 %645, i128* %XMM2, align 1, !mcsema_real_eip !32
  %646 = load i128, i128* %XMM3_val, !mcsema_real_eip !32
  store i128 %646, i128* %XMM3, align 1, !mcsema_real_eip !32
  %647 = load i128, i128* %XMM4_val, !mcsema_real_eip !32
  store i128 %647, i128* %XMM4, align 1, !mcsema_real_eip !32
  %648 = load i128, i128* %XMM5_val, !mcsema_real_eip !32
  store i128 %648, i128* %XMM5, align 1, !mcsema_real_eip !32
  %649 = load i128, i128* %XMM6_val, !mcsema_real_eip !32
  store i128 %649, i128* %XMM6, align 1, !mcsema_real_eip !32
  %650 = load i128, i128* %XMM7_val, !mcsema_real_eip !32
  store i128 %650, i128* %XMM7, align 1, !mcsema_real_eip !32
  %651 = load i128, i128* %XMM8_val, !mcsema_real_eip !32
  store i128 %651, i128* %XMM8, align 1, !mcsema_real_eip !32
  %652 = load i128, i128* %XMM9_val, !mcsema_real_eip !32
  store i128 %652, i128* %XMM9, align 1, !mcsema_real_eip !32
  %653 = load i128, i128* %XMM10_val, !mcsema_real_eip !32
  store i128 %653, i128* %XMM10, align 1, !mcsema_real_eip !32
  %654 = load i128, i128* %XMM11_val, !mcsema_real_eip !32
  store i128 %654, i128* %XMM11, align 1, !mcsema_real_eip !32
  %655 = load i128, i128* %XMM12_val, !mcsema_real_eip !32
  store i128 %655, i128* %XMM12, align 1, !mcsema_real_eip !32
  %656 = load i128, i128* %XMM13_val, !mcsema_real_eip !32
  store i128 %656, i128* %XMM13, align 1, !mcsema_real_eip !32
  %657 = load i128, i128* %XMM14_val, !mcsema_real_eip !32
  store i128 %657, i128* %XMM14, align 1, !mcsema_real_eip !32
  %658 = load i128, i128* %XMM15_val, !mcsema_real_eip !32
  store i128 %658, i128* %XMM15, align 1, !mcsema_real_eip !32
  %659 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !32
  store i64 %659, i64* %STACK_BASE, align 1, !mcsema_real_eip !32
  %660 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !32
  store i64 %660, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !32
  tail call x86_64_sysvcc void @sub_4005f0(%struct.regs* %0), !mcsema_real_eip !32
  %661 = load i64, i64* %RAX, !mcsema_real_eip !32
  store i64 %661, i64* %RAX_val, !mcsema_real_eip !32
  %662 = load i64, i64* %RBX, !mcsema_real_eip !32
  store i64 %662, i64* %RBX_val, !mcsema_real_eip !32
  %663 = load i64, i64* %RCX, !mcsema_real_eip !32
  store i64 %663, i64* %RCX_val, !mcsema_real_eip !32
  %664 = load i64, i64* %RDX, !mcsema_real_eip !32
  store i64 %664, i64* %RDX_val, !mcsema_real_eip !32
  %665 = load i64, i64* %RSI, !mcsema_real_eip !32
  store i64 %665, i64* %RSI_val, !mcsema_real_eip !32
  %666 = load i64, i64* %RDI, !mcsema_real_eip !32
  store i64 %666, i64* %RDI_val, !mcsema_real_eip !32
  %667 = load i64, i64* %RSP, !mcsema_real_eip !32
  store i64 %667, i64* %RSP_val, !mcsema_real_eip !32
  %668 = load i64, i64* %RBP, !mcsema_real_eip !32
  store i64 %668, i64* %RBP_val, !mcsema_real_eip !32
  %669 = load i64, i64* %R8, !mcsema_real_eip !32
  store i64 %669, i64* %R8_val, !mcsema_real_eip !32
  %670 = load i64, i64* %R9, !mcsema_real_eip !32
  store i64 %670, i64* %R9_val, !mcsema_real_eip !32
  %671 = load i64, i64* %R10, !mcsema_real_eip !32
  store i64 %671, i64* %R10_val, !mcsema_real_eip !32
  %672 = load i64, i64* %R11, !mcsema_real_eip !32
  store i64 %672, i64* %R11_val, !mcsema_real_eip !32
  %673 = load i64, i64* %R12, !mcsema_real_eip !32
  store i64 %673, i64* %R12_val, !mcsema_real_eip !32
  %674 = load i64, i64* %R13, !mcsema_real_eip !32
  store i64 %674, i64* %R13_val, !mcsema_real_eip !32
  %675 = load i64, i64* %R14, !mcsema_real_eip !32
  store i64 %675, i64* %R14_val, !mcsema_real_eip !32
  %676 = load i64, i64* %R15, !mcsema_real_eip !32
  store i64 %676, i64* %R15_val, !mcsema_real_eip !32
  %677 = load i64, i64* %RIP, !mcsema_real_eip !32
  store i64 %677, i64* %RIP_val, !mcsema_real_eip !32
  %678 = load i1, i1* %CF, align 1, !mcsema_real_eip !32
  store i1 %678, i1* %CF_val, !mcsema_real_eip !32
  %679 = load i1, i1* %PF, align 1, !mcsema_real_eip !32
  store i1 %679, i1* %PF_val, !mcsema_real_eip !32
  %680 = load i1, i1* %AF, align 1, !mcsema_real_eip !32
  store i1 %680, i1* %AF_val, !mcsema_real_eip !32
  %681 = load i1, i1* %ZF, align 1, !mcsema_real_eip !32
  store i1 %681, i1* %ZF_val, !mcsema_real_eip !32
  %682 = load i1, i1* %SF, align 1, !mcsema_real_eip !32
  store i1 %682, i1* %SF_val, !mcsema_real_eip !32
  %683 = load i1, i1* %OF, align 1, !mcsema_real_eip !32
  store i1 %683, i1* %OF_val, !mcsema_real_eip !32
  %684 = load i1, i1* %DF, align 1, !mcsema_real_eip !32
  store i1 %684, i1* %DF_val, !mcsema_real_eip !32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !32
  %685 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !32
  store i1 %685, i1* %FPU_B_val, !mcsema_real_eip !32
  %686 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !32
  store i1 %686, i1* %FPU_C3_val, !mcsema_real_eip !32
  %687 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !32
  store i3 %687, i3* %FPU_TOP_val, !mcsema_real_eip !32
  %688 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !32
  store i1 %688, i1* %FPU_C2_val, !mcsema_real_eip !32
  %689 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !32
  store i1 %689, i1* %FPU_C1_val, !mcsema_real_eip !32
  %690 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !32
  store i1 %690, i1* %FPU_C0_val, !mcsema_real_eip !32
  %691 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !32
  store i1 %691, i1* %FPU_ES_val, !mcsema_real_eip !32
  %692 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !32
  store i1 %692, i1* %FPU_SF_val, !mcsema_real_eip !32
  %693 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !32
  store i1 %693, i1* %FPU_PE_val, !mcsema_real_eip !32
  %694 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !32
  store i1 %694, i1* %FPU_UE_val, !mcsema_real_eip !32
  %695 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !32
  store i1 %695, i1* %FPU_OE_val, !mcsema_real_eip !32
  %696 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !32
  store i1 %696, i1* %FPU_ZE_val, !mcsema_real_eip !32
  %697 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !32
  store i1 %697, i1* %FPU_DE_val, !mcsema_real_eip !32
  %698 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !32
  store i1 %698, i1* %FPU_IE_val, !mcsema_real_eip !32
  %699 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !32
  store i1 %699, i1* %FPU_X_val, !mcsema_real_eip !32
  %700 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !32
  store i2 %700, i2* %FPU_RC_val, !mcsema_real_eip !32
  %701 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !32
  store i2 %701, i2* %FPU_PC_val, !mcsema_real_eip !32
  %702 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !32
  store i1 %702, i1* %FPU_PM_val, !mcsema_real_eip !32
  %703 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !32
  store i1 %703, i1* %FPU_UM_val, !mcsema_real_eip !32
  %704 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !32
  store i1 %704, i1* %FPU_OM_val, !mcsema_real_eip !32
  %705 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !32
  store i1 %705, i1* %FPU_ZM_val, !mcsema_real_eip !32
  %706 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !32
  store i1 %706, i1* %FPU_DM_val, !mcsema_real_eip !32
  %707 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !32
  store i1 %707, i1* %FPU_IM_val, !mcsema_real_eip !32
  %708 = load i64, i64* %52, align 4
  store i64 %708, i64* %53, align 4
  %709 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !32
  store i16 %709, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !32
  %710 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !32
  store i64 %710, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !32
  %711 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !32
  store i16 %711, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !32
  %712 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !32
  store i64 %712, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !32
  %713 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !32
  store i11 %713, i11* %FPU_FOPCODE_val, !mcsema_real_eip !32
  %714 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !32
  store i128 %714, i128* %XMM0_val, !mcsema_real_eip !32
  %715 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !32
  store i128 %715, i128* %XMM1_val, !mcsema_real_eip !32
  %716 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !32
  store i128 %716, i128* %XMM2_val, !mcsema_real_eip !32
  %717 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !32
  store i128 %717, i128* %XMM3_val, !mcsema_real_eip !32
  %718 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !32
  store i128 %718, i128* %XMM4_val, !mcsema_real_eip !32
  %719 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !32
  store i128 %719, i128* %XMM5_val, !mcsema_real_eip !32
  %720 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !32
  store i128 %720, i128* %XMM6_val, !mcsema_real_eip !32
  %721 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !32
  store i128 %721, i128* %XMM7_val, !mcsema_real_eip !32
  %722 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !32
  store i128 %722, i128* %XMM8_val, !mcsema_real_eip !32
  %723 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !32
  store i128 %723, i128* %XMM9_val, !mcsema_real_eip !32
  %724 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !32
  store i128 %724, i128* %XMM10_val, !mcsema_real_eip !32
  %725 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !32
  store i128 %725, i128* %XMM11_val, !mcsema_real_eip !32
  %726 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !32
  store i128 %726, i128* %XMM12_val, !mcsema_real_eip !32
  %727 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !32
  store i128 %727, i128* %XMM13_val, !mcsema_real_eip !32
  %728 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !32
  store i128 %728, i128* %XMM14_val, !mcsema_real_eip !32
  %729 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !32
  store i128 %729, i128* %XMM15_val, !mcsema_real_eip !32
  %730 = load i64, i64* %STACK_BASE, !mcsema_real_eip !32
  store i64 %730, i64* %STACK_BASE_val, !mcsema_real_eip !32
  %731 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !32
  store i64 %731, i64* %STACK_LIMIT_val, !mcsema_real_eip !32
  %732 = load i64, i64* %RSP_val, !mcsema_real_eip !33
  %733 = inttoptr i64 %732 to i64*, !mcsema_real_eip !33
  %734 = bitcast i64* %733 to i32*
  store i32 5, i32* %734, !mcsema_real_eip !33
  %735 = load i64, i64* %RSP_val, !mcsema_real_eip !34
  %736 = add i64 %735, 4, !mcsema_real_eip !34
  %737 = inttoptr i64 %736 to i64*, !mcsema_real_eip !34
  %738 = bitcast i64* %737 to i32*
  store i32 6, i32* %738, !mcsema_real_eip !34
  %739 = load i64, i64* %RSP_val, !mcsema_real_eip !35
  %740 = add i64 %739, 8, !mcsema_real_eip !35
  %741 = inttoptr i64 %740 to i64*, !mcsema_real_eip !35
  %742 = bitcast i64* %741 to i32*
  store i32 7, i32* %742, !mcsema_real_eip !35
  %743 = load i64, i64* %RSP_val, !mcsema_real_eip !36
  %744 = add i64 %743, 12, !mcsema_real_eip !36
  %745 = inttoptr i64 %744 to i64*, !mcsema_real_eip !36
  %746 = bitcast i64* %745 to i32*
  store i32 8, i32* %746, !mcsema_real_eip !36
  store i64 4, i64* %RDI_val, !mcsema_real_eip !37
  %747 = load i64, i64* %RBX_val, !mcsema_real_eip !38
  store i64 %747, i64* %RSI_val, !mcsema_real_eip !38
  %748 = load i64, i64* %RSP_val, !mcsema_real_eip !39
  %749 = add i64 %748, -8
  %750 = inttoptr i64 %749 to i64*, !mcsema_real_eip !39
  store i64 -4981261766360305936, i64* %750, !mcsema_real_eip !39
  store i64 %749, i64* %RSP_val, !mcsema_real_eip !39
  %751 = load i64, i64* %RAX_val, !mcsema_real_eip !39
  store i64 %751, i64* %RAX, !mcsema_real_eip !39
  %752 = load i64, i64* %RBX_val, !mcsema_real_eip !39
  store i64 %752, i64* %RBX, !mcsema_real_eip !39
  %753 = load i64, i64* %RCX_val, !mcsema_real_eip !39
  store i64 %753, i64* %RCX, !mcsema_real_eip !39
  %754 = load i64, i64* %RDX_val, !mcsema_real_eip !39
  store i64 %754, i64* %RDX, !mcsema_real_eip !39
  %755 = load i64, i64* %RSI_val, !mcsema_real_eip !39
  store i64 %755, i64* %RSI, !mcsema_real_eip !39
  %756 = load i64, i64* %RDI_val, !mcsema_real_eip !39
  store i64 %756, i64* %RDI, !mcsema_real_eip !39
  %757 = load i64, i64* %RSP_val, !mcsema_real_eip !39
  store i64 %757, i64* %RSP, !mcsema_real_eip !39
  %758 = load i64, i64* %RBP_val, !mcsema_real_eip !39
  store i64 %758, i64* %RBP, !mcsema_real_eip !39
  %759 = load i64, i64* %R8_val, !mcsema_real_eip !39
  store i64 %759, i64* %R8, !mcsema_real_eip !39
  %760 = load i64, i64* %R9_val, !mcsema_real_eip !39
  store i64 %760, i64* %R9, !mcsema_real_eip !39
  %761 = load i64, i64* %R10_val, !mcsema_real_eip !39
  store i64 %761, i64* %R10, !mcsema_real_eip !39
  %762 = load i64, i64* %R11_val, !mcsema_real_eip !39
  store i64 %762, i64* %R11, !mcsema_real_eip !39
  %763 = load i64, i64* %R12_val, !mcsema_real_eip !39
  store i64 %763, i64* %R12, !mcsema_real_eip !39
  %764 = load i64, i64* %R13_val, !mcsema_real_eip !39
  store i64 %764, i64* %R13, !mcsema_real_eip !39
  %765 = load i64, i64* %R14_val, !mcsema_real_eip !39
  store i64 %765, i64* %R14, !mcsema_real_eip !39
  %766 = load i64, i64* %R15_val, !mcsema_real_eip !39
  store i64 %766, i64* %R15, !mcsema_real_eip !39
  %767 = load i64, i64* %RIP_val, !mcsema_real_eip !39
  store i64 %767, i64* %RIP, !mcsema_real_eip !39
  %768 = load i1, i1* %CF_val, !mcsema_real_eip !39
  store i1 %768, i1* %CF, align 1, !mcsema_real_eip !39
  %769 = load i1, i1* %PF_val, !mcsema_real_eip !39
  store i1 %769, i1* %PF, align 1, !mcsema_real_eip !39
  %770 = load i1, i1* %AF_val, !mcsema_real_eip !39
  store i1 %770, i1* %AF, align 1, !mcsema_real_eip !39
  %771 = load i1, i1* %ZF_val, !mcsema_real_eip !39
  store i1 %771, i1* %ZF, align 1, !mcsema_real_eip !39
  %772 = load i1, i1* %SF_val, !mcsema_real_eip !39
  store i1 %772, i1* %SF, align 1, !mcsema_real_eip !39
  %773 = load i1, i1* %OF_val, !mcsema_real_eip !39
  store i1 %773, i1* %OF, align 1, !mcsema_real_eip !39
  %774 = load i1, i1* %DF_val, !mcsema_real_eip !39
  store i1 %774, i1* %DF, align 1, !mcsema_real_eip !39
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !39
  %775 = load i1, i1* %FPU_B_val, !mcsema_real_eip !39
  store i1 %775, i1* %FPU_B, align 1, !mcsema_real_eip !39
  %776 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !39
  store i1 %776, i1* %FPU_C3, align 1, !mcsema_real_eip !39
  %777 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !39
  store i3 %777, i3* %FPU_TOP, align 1, !mcsema_real_eip !39
  %778 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !39
  store i1 %778, i1* %FPU_C2, align 1, !mcsema_real_eip !39
  %779 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !39
  store i1 %779, i1* %FPU_C1, align 1, !mcsema_real_eip !39
  %780 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !39
  store i1 %780, i1* %FPU_C0, align 1, !mcsema_real_eip !39
  %781 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !39
  store i1 %781, i1* %FPU_ES, align 1, !mcsema_real_eip !39
  %782 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !39
  store i1 %782, i1* %FPU_SF, align 1, !mcsema_real_eip !39
  %783 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !39
  store i1 %783, i1* %FPU_PE, align 1, !mcsema_real_eip !39
  %784 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !39
  store i1 %784, i1* %FPU_UE, align 1, !mcsema_real_eip !39
  %785 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !39
  store i1 %785, i1* %FPU_OE, align 1, !mcsema_real_eip !39
  %786 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !39
  store i1 %786, i1* %FPU_ZE, align 1, !mcsema_real_eip !39
  %787 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !39
  store i1 %787, i1* %FPU_DE, align 1, !mcsema_real_eip !39
  %788 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !39
  store i1 %788, i1* %FPU_IE, align 1, !mcsema_real_eip !39
  %789 = load i1, i1* %FPU_X_val, !mcsema_real_eip !39
  store i1 %789, i1* %FPU_X, align 1, !mcsema_real_eip !39
  %790 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !39
  store i2 %790, i2* %FPU_RC, align 1, !mcsema_real_eip !39
  %791 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !39
  store i2 %791, i2* %FPU_PC, align 1, !mcsema_real_eip !39
  %792 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !39
  store i1 %792, i1* %FPU_PM, align 1, !mcsema_real_eip !39
  %793 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !39
  store i1 %793, i1* %FPU_UM, align 1, !mcsema_real_eip !39
  %794 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !39
  store i1 %794, i1* %FPU_OM, align 1, !mcsema_real_eip !39
  %795 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !39
  store i1 %795, i1* %FPU_ZM, align 1, !mcsema_real_eip !39
  %796 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !39
  store i1 %796, i1* %FPU_DM, align 1, !mcsema_real_eip !39
  %797 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !39
  store i1 %797, i1* %FPU_IM, align 1, !mcsema_real_eip !39
  %798 = load i64, i64* %53, align 4
  store i64 %798, i64* %52, align 4
  %799 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !39
  store i16 %799, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !39
  %800 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !39
  store i64 %800, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !39
  %801 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !39
  store i16 %801, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !39
  %802 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !39
  store i64 %802, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !39
  %803 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !39
  store i11 %803, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !39
  %804 = load i128, i128* %XMM0_val, !mcsema_real_eip !39
  store i128 %804, i128* %XMM0, align 1, !mcsema_real_eip !39
  %805 = load i128, i128* %XMM1_val, !mcsema_real_eip !39
  store i128 %805, i128* %XMM1, align 1, !mcsema_real_eip !39
  %806 = load i128, i128* %XMM2_val, !mcsema_real_eip !39
  store i128 %806, i128* %XMM2, align 1, !mcsema_real_eip !39
  %807 = load i128, i128* %XMM3_val, !mcsema_real_eip !39
  store i128 %807, i128* %XMM3, align 1, !mcsema_real_eip !39
  %808 = load i128, i128* %XMM4_val, !mcsema_real_eip !39
  store i128 %808, i128* %XMM4, align 1, !mcsema_real_eip !39
  %809 = load i128, i128* %XMM5_val, !mcsema_real_eip !39
  store i128 %809, i128* %XMM5, align 1, !mcsema_real_eip !39
  %810 = load i128, i128* %XMM6_val, !mcsema_real_eip !39
  store i128 %810, i128* %XMM6, align 1, !mcsema_real_eip !39
  %811 = load i128, i128* %XMM7_val, !mcsema_real_eip !39
  store i128 %811, i128* %XMM7, align 1, !mcsema_real_eip !39
  %812 = load i128, i128* %XMM8_val, !mcsema_real_eip !39
  store i128 %812, i128* %XMM8, align 1, !mcsema_real_eip !39
  %813 = load i128, i128* %XMM9_val, !mcsema_real_eip !39
  store i128 %813, i128* %XMM9, align 1, !mcsema_real_eip !39
  %814 = load i128, i128* %XMM10_val, !mcsema_real_eip !39
  store i128 %814, i128* %XMM10, align 1, !mcsema_real_eip !39
  %815 = load i128, i128* %XMM11_val, !mcsema_real_eip !39
  store i128 %815, i128* %XMM11, align 1, !mcsema_real_eip !39
  %816 = load i128, i128* %XMM12_val, !mcsema_real_eip !39
  store i128 %816, i128* %XMM12, align 1, !mcsema_real_eip !39
  %817 = load i128, i128* %XMM13_val, !mcsema_real_eip !39
  store i128 %817, i128* %XMM13, align 1, !mcsema_real_eip !39
  %818 = load i128, i128* %XMM14_val, !mcsema_real_eip !39
  store i128 %818, i128* %XMM14, align 1, !mcsema_real_eip !39
  %819 = load i128, i128* %XMM15_val, !mcsema_real_eip !39
  store i128 %819, i128* %XMM15, align 1, !mcsema_real_eip !39
  %820 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !39
  store i64 %820, i64* %STACK_BASE, align 1, !mcsema_real_eip !39
  %821 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !39
  store i64 %821, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !39
  tail call x86_64_sysvcc void @sub_4005f0(%struct.regs* %0), !mcsema_real_eip !39
  %822 = load i64, i64* %RAX, !mcsema_real_eip !39
  store i64 %822, i64* %RAX_val, !mcsema_real_eip !39
  %823 = load i64, i64* %RBX, !mcsema_real_eip !39
  store i64 %823, i64* %RBX_val, !mcsema_real_eip !39
  %824 = load i64, i64* %RCX, !mcsema_real_eip !39
  store i64 %824, i64* %RCX_val, !mcsema_real_eip !39
  %825 = load i64, i64* %RDX, !mcsema_real_eip !39
  store i64 %825, i64* %RDX_val, !mcsema_real_eip !39
  %826 = load i64, i64* %RSI, !mcsema_real_eip !39
  store i64 %826, i64* %RSI_val, !mcsema_real_eip !39
  %827 = load i64, i64* %RDI, !mcsema_real_eip !39
  store i64 %827, i64* %RDI_val, !mcsema_real_eip !39
  %828 = load i64, i64* %RSP, !mcsema_real_eip !39
  store i64 %828, i64* %RSP_val, !mcsema_real_eip !39
  %829 = load i64, i64* %RBP, !mcsema_real_eip !39
  store i64 %829, i64* %RBP_val, !mcsema_real_eip !39
  %830 = load i64, i64* %R8, !mcsema_real_eip !39
  store i64 %830, i64* %R8_val, !mcsema_real_eip !39
  %831 = load i64, i64* %R9, !mcsema_real_eip !39
  store i64 %831, i64* %R9_val, !mcsema_real_eip !39
  %832 = load i64, i64* %R10, !mcsema_real_eip !39
  store i64 %832, i64* %R10_val, !mcsema_real_eip !39
  %833 = load i64, i64* %R11, !mcsema_real_eip !39
  store i64 %833, i64* %R11_val, !mcsema_real_eip !39
  %834 = load i64, i64* %R12, !mcsema_real_eip !39
  store i64 %834, i64* %R12_val, !mcsema_real_eip !39
  %835 = load i64, i64* %R13, !mcsema_real_eip !39
  store i64 %835, i64* %R13_val, !mcsema_real_eip !39
  %836 = load i64, i64* %R14, !mcsema_real_eip !39
  store i64 %836, i64* %R14_val, !mcsema_real_eip !39
  %837 = load i64, i64* %R15, !mcsema_real_eip !39
  store i64 %837, i64* %R15_val, !mcsema_real_eip !39
  %838 = load i64, i64* %RIP, !mcsema_real_eip !39
  store i64 %838, i64* %RIP_val, !mcsema_real_eip !39
  %839 = load i1, i1* %CF, align 1, !mcsema_real_eip !39
  store i1 %839, i1* %CF_val, !mcsema_real_eip !39
  %840 = load i1, i1* %PF, align 1, !mcsema_real_eip !39
  store i1 %840, i1* %PF_val, !mcsema_real_eip !39
  %841 = load i1, i1* %AF, align 1, !mcsema_real_eip !39
  store i1 %841, i1* %AF_val, !mcsema_real_eip !39
  %842 = load i1, i1* %ZF, align 1, !mcsema_real_eip !39
  store i1 %842, i1* %ZF_val, !mcsema_real_eip !39
  %843 = load i1, i1* %SF, align 1, !mcsema_real_eip !39
  store i1 %843, i1* %SF_val, !mcsema_real_eip !39
  %844 = load i1, i1* %OF, align 1, !mcsema_real_eip !39
  store i1 %844, i1* %OF_val, !mcsema_real_eip !39
  %845 = load i1, i1* %DF, align 1, !mcsema_real_eip !39
  store i1 %845, i1* %DF_val, !mcsema_real_eip !39
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !39
  %846 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !39
  store i1 %846, i1* %FPU_B_val, !mcsema_real_eip !39
  %847 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !39
  store i1 %847, i1* %FPU_C3_val, !mcsema_real_eip !39
  %848 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !39
  store i3 %848, i3* %FPU_TOP_val, !mcsema_real_eip !39
  %849 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !39
  store i1 %849, i1* %FPU_C2_val, !mcsema_real_eip !39
  %850 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !39
  store i1 %850, i1* %FPU_C1_val, !mcsema_real_eip !39
  %851 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !39
  store i1 %851, i1* %FPU_C0_val, !mcsema_real_eip !39
  %852 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !39
  store i1 %852, i1* %FPU_ES_val, !mcsema_real_eip !39
  %853 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !39
  store i1 %853, i1* %FPU_SF_val, !mcsema_real_eip !39
  %854 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !39
  store i1 %854, i1* %FPU_PE_val, !mcsema_real_eip !39
  %855 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !39
  store i1 %855, i1* %FPU_UE_val, !mcsema_real_eip !39
  %856 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !39
  store i1 %856, i1* %FPU_OE_val, !mcsema_real_eip !39
  %857 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !39
  store i1 %857, i1* %FPU_ZE_val, !mcsema_real_eip !39
  %858 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !39
  store i1 %858, i1* %FPU_DE_val, !mcsema_real_eip !39
  %859 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !39
  store i1 %859, i1* %FPU_IE_val, !mcsema_real_eip !39
  %860 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !39
  store i1 %860, i1* %FPU_X_val, !mcsema_real_eip !39
  %861 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !39
  store i2 %861, i2* %FPU_RC_val, !mcsema_real_eip !39
  %862 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !39
  store i2 %862, i2* %FPU_PC_val, !mcsema_real_eip !39
  %863 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !39
  store i1 %863, i1* %FPU_PM_val, !mcsema_real_eip !39
  %864 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !39
  store i1 %864, i1* %FPU_UM_val, !mcsema_real_eip !39
  %865 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !39
  store i1 %865, i1* %FPU_OM_val, !mcsema_real_eip !39
  %866 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !39
  store i1 %866, i1* %FPU_ZM_val, !mcsema_real_eip !39
  %867 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !39
  store i1 %867, i1* %FPU_DM_val, !mcsema_real_eip !39
  %868 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !39
  store i1 %868, i1* %FPU_IM_val, !mcsema_real_eip !39
  %869 = load i64, i64* %52, align 4
  store i64 %869, i64* %53, align 4
  %870 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !39
  store i16 %870, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !39
  %871 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !39
  store i64 %871, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !39
  %872 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !39
  store i16 %872, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !39
  %873 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !39
  store i64 %873, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !39
  %874 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !39
  store i11 %874, i11* %FPU_FOPCODE_val, !mcsema_real_eip !39
  %875 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !39
  store i128 %875, i128* %XMM0_val, !mcsema_real_eip !39
  %876 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !39
  store i128 %876, i128* %XMM1_val, !mcsema_real_eip !39
  %877 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !39
  store i128 %877, i128* %XMM2_val, !mcsema_real_eip !39
  %878 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !39
  store i128 %878, i128* %XMM3_val, !mcsema_real_eip !39
  %879 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !39
  store i128 %879, i128* %XMM4_val, !mcsema_real_eip !39
  %880 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !39
  store i128 %880, i128* %XMM5_val, !mcsema_real_eip !39
  %881 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !39
  store i128 %881, i128* %XMM6_val, !mcsema_real_eip !39
  %882 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !39
  store i128 %882, i128* %XMM7_val, !mcsema_real_eip !39
  %883 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !39
  store i128 %883, i128* %XMM8_val, !mcsema_real_eip !39
  %884 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !39
  store i128 %884, i128* %XMM9_val, !mcsema_real_eip !39
  %885 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !39
  store i128 %885, i128* %XMM10_val, !mcsema_real_eip !39
  %886 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !39
  store i128 %886, i128* %XMM11_val, !mcsema_real_eip !39
  %887 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !39
  store i128 %887, i128* %XMM12_val, !mcsema_real_eip !39
  %888 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !39
  store i128 %888, i128* %XMM13_val, !mcsema_real_eip !39
  %889 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !39
  store i128 %889, i128* %XMM14_val, !mcsema_real_eip !39
  %890 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !39
  store i128 %890, i128* %XMM15_val, !mcsema_real_eip !39
  %891 = load i64, i64* %STACK_BASE, !mcsema_real_eip !39
  store i64 %891, i64* %STACK_BASE_val, !mcsema_real_eip !39
  %892 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !39
  store i64 %892, i64* %STACK_LIMIT_val, !mcsema_real_eip !39
  %893 = load i64, i64* %RSP_val, !mcsema_real_eip !40
  %894 = inttoptr i64 %893 to i64*, !mcsema_real_eip !40
  %895 = bitcast i64* %894 to i32*
  store i32 5, i32* %895, !mcsema_real_eip !40
  %896 = load i64, i64* %RSP_val, !mcsema_real_eip !41
  %897 = add i64 %896, 4, !mcsema_real_eip !41
  %898 = inttoptr i64 %897 to i64*, !mcsema_real_eip !41
  %899 = bitcast i64* %898 to i32*
  store i32 6, i32* %899, !mcsema_real_eip !41
  %900 = load i64, i64* %RSP_val, !mcsema_real_eip !42
  %901 = add i64 %900, 8, !mcsema_real_eip !42
  %902 = inttoptr i64 %901 to i64*, !mcsema_real_eip !42
  %903 = bitcast i64* %902 to i32*
  store i32 7, i32* %903, !mcsema_real_eip !42
  %904 = load i64, i64* %RSP_val, !mcsema_real_eip !43
  %905 = add i64 %904, 12, !mcsema_real_eip !43
  %906 = inttoptr i64 %905 to i64*, !mcsema_real_eip !43
  %907 = bitcast i64* %906 to i32*
  store i32 8, i32* %907, !mcsema_real_eip !43
  store i64 4294967295, i64* %RDI_val, !mcsema_real_eip !44
  %908 = load i64, i64* %RBX_val, !mcsema_real_eip !45
  store i64 %908, i64* %RSI_val, !mcsema_real_eip !45
  %909 = load i64, i64* %RSP_val, !mcsema_real_eip !46
  %910 = add i64 %909, -8
  %911 = inttoptr i64 %910 to i64*, !mcsema_real_eip !46
  store i64 -4981261766360305936, i64* %911, !mcsema_real_eip !46
  store i64 %910, i64* %RSP_val, !mcsema_real_eip !46
  %912 = load i64, i64* %RAX_val, !mcsema_real_eip !46
  store i64 %912, i64* %RAX, !mcsema_real_eip !46
  %913 = load i64, i64* %RBX_val, !mcsema_real_eip !46
  store i64 %913, i64* %RBX, !mcsema_real_eip !46
  %914 = load i64, i64* %RCX_val, !mcsema_real_eip !46
  store i64 %914, i64* %RCX, !mcsema_real_eip !46
  %915 = load i64, i64* %RDX_val, !mcsema_real_eip !46
  store i64 %915, i64* %RDX, !mcsema_real_eip !46
  %916 = load i64, i64* %RSI_val, !mcsema_real_eip !46
  store i64 %916, i64* %RSI, !mcsema_real_eip !46
  %917 = load i64, i64* %RDI_val, !mcsema_real_eip !46
  store i64 %917, i64* %RDI, !mcsema_real_eip !46
  %918 = load i64, i64* %RSP_val, !mcsema_real_eip !46
  store i64 %918, i64* %RSP, !mcsema_real_eip !46
  %919 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  store i64 %919, i64* %RBP, !mcsema_real_eip !46
  %920 = load i64, i64* %R8_val, !mcsema_real_eip !46
  store i64 %920, i64* %R8, !mcsema_real_eip !46
  %921 = load i64, i64* %R9_val, !mcsema_real_eip !46
  store i64 %921, i64* %R9, !mcsema_real_eip !46
  %922 = load i64, i64* %R10_val, !mcsema_real_eip !46
  store i64 %922, i64* %R10, !mcsema_real_eip !46
  %923 = load i64, i64* %R11_val, !mcsema_real_eip !46
  store i64 %923, i64* %R11, !mcsema_real_eip !46
  %924 = load i64, i64* %R12_val, !mcsema_real_eip !46
  store i64 %924, i64* %R12, !mcsema_real_eip !46
  %925 = load i64, i64* %R13_val, !mcsema_real_eip !46
  store i64 %925, i64* %R13, !mcsema_real_eip !46
  %926 = load i64, i64* %R14_val, !mcsema_real_eip !46
  store i64 %926, i64* %R14, !mcsema_real_eip !46
  %927 = load i64, i64* %R15_val, !mcsema_real_eip !46
  store i64 %927, i64* %R15, !mcsema_real_eip !46
  %928 = load i64, i64* %RIP_val, !mcsema_real_eip !46
  store i64 %928, i64* %RIP, !mcsema_real_eip !46
  %929 = load i1, i1* %CF_val, !mcsema_real_eip !46
  store i1 %929, i1* %CF, align 1, !mcsema_real_eip !46
  %930 = load i1, i1* %PF_val, !mcsema_real_eip !46
  store i1 %930, i1* %PF, align 1, !mcsema_real_eip !46
  %931 = load i1, i1* %AF_val, !mcsema_real_eip !46
  store i1 %931, i1* %AF, align 1, !mcsema_real_eip !46
  %932 = load i1, i1* %ZF_val, !mcsema_real_eip !46
  store i1 %932, i1* %ZF, align 1, !mcsema_real_eip !46
  %933 = load i1, i1* %SF_val, !mcsema_real_eip !46
  store i1 %933, i1* %SF, align 1, !mcsema_real_eip !46
  %934 = load i1, i1* %OF_val, !mcsema_real_eip !46
  store i1 %934, i1* %OF, align 1, !mcsema_real_eip !46
  %935 = load i1, i1* %DF_val, !mcsema_real_eip !46
  store i1 %935, i1* %DF, align 1, !mcsema_real_eip !46
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !46
  %936 = load i1, i1* %FPU_B_val, !mcsema_real_eip !46
  store i1 %936, i1* %FPU_B, align 1, !mcsema_real_eip !46
  %937 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !46
  store i1 %937, i1* %FPU_C3, align 1, !mcsema_real_eip !46
  %938 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !46
  store i3 %938, i3* %FPU_TOP, align 1, !mcsema_real_eip !46
  %939 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !46
  store i1 %939, i1* %FPU_C2, align 1, !mcsema_real_eip !46
  %940 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !46
  store i1 %940, i1* %FPU_C1, align 1, !mcsema_real_eip !46
  %941 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !46
  store i1 %941, i1* %FPU_C0, align 1, !mcsema_real_eip !46
  %942 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !46
  store i1 %942, i1* %FPU_ES, align 1, !mcsema_real_eip !46
  %943 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !46
  store i1 %943, i1* %FPU_SF, align 1, !mcsema_real_eip !46
  %944 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !46
  store i1 %944, i1* %FPU_PE, align 1, !mcsema_real_eip !46
  %945 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !46
  store i1 %945, i1* %FPU_UE, align 1, !mcsema_real_eip !46
  %946 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !46
  store i1 %946, i1* %FPU_OE, align 1, !mcsema_real_eip !46
  %947 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !46
  store i1 %947, i1* %FPU_ZE, align 1, !mcsema_real_eip !46
  %948 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !46
  store i1 %948, i1* %FPU_DE, align 1, !mcsema_real_eip !46
  %949 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !46
  store i1 %949, i1* %FPU_IE, align 1, !mcsema_real_eip !46
  %950 = load i1, i1* %FPU_X_val, !mcsema_real_eip !46
  store i1 %950, i1* %FPU_X, align 1, !mcsema_real_eip !46
  %951 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !46
  store i2 %951, i2* %FPU_RC, align 1, !mcsema_real_eip !46
  %952 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !46
  store i2 %952, i2* %FPU_PC, align 1, !mcsema_real_eip !46
  %953 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !46
  store i1 %953, i1* %FPU_PM, align 1, !mcsema_real_eip !46
  %954 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !46
  store i1 %954, i1* %FPU_UM, align 1, !mcsema_real_eip !46
  %955 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !46
  store i1 %955, i1* %FPU_OM, align 1, !mcsema_real_eip !46
  %956 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !46
  store i1 %956, i1* %FPU_ZM, align 1, !mcsema_real_eip !46
  %957 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !46
  store i1 %957, i1* %FPU_DM, align 1, !mcsema_real_eip !46
  %958 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !46
  store i1 %958, i1* %FPU_IM, align 1, !mcsema_real_eip !46
  %959 = load i64, i64* %53, align 4
  store i64 %959, i64* %52, align 4
  %960 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !46
  store i16 %960, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !46
  %961 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !46
  store i64 %961, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !46
  %962 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !46
  store i16 %962, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !46
  %963 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !46
  store i64 %963, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !46
  %964 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !46
  store i11 %964, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !46
  %965 = load i128, i128* %XMM0_val, !mcsema_real_eip !46
  store i128 %965, i128* %XMM0, align 1, !mcsema_real_eip !46
  %966 = load i128, i128* %XMM1_val, !mcsema_real_eip !46
  store i128 %966, i128* %XMM1, align 1, !mcsema_real_eip !46
  %967 = load i128, i128* %XMM2_val, !mcsema_real_eip !46
  store i128 %967, i128* %XMM2, align 1, !mcsema_real_eip !46
  %968 = load i128, i128* %XMM3_val, !mcsema_real_eip !46
  store i128 %968, i128* %XMM3, align 1, !mcsema_real_eip !46
  %969 = load i128, i128* %XMM4_val, !mcsema_real_eip !46
  store i128 %969, i128* %XMM4, align 1, !mcsema_real_eip !46
  %970 = load i128, i128* %XMM5_val, !mcsema_real_eip !46
  store i128 %970, i128* %XMM5, align 1, !mcsema_real_eip !46
  %971 = load i128, i128* %XMM6_val, !mcsema_real_eip !46
  store i128 %971, i128* %XMM6, align 1, !mcsema_real_eip !46
  %972 = load i128, i128* %XMM7_val, !mcsema_real_eip !46
  store i128 %972, i128* %XMM7, align 1, !mcsema_real_eip !46
  %973 = load i128, i128* %XMM8_val, !mcsema_real_eip !46
  store i128 %973, i128* %XMM8, align 1, !mcsema_real_eip !46
  %974 = load i128, i128* %XMM9_val, !mcsema_real_eip !46
  store i128 %974, i128* %XMM9, align 1, !mcsema_real_eip !46
  %975 = load i128, i128* %XMM10_val, !mcsema_real_eip !46
  store i128 %975, i128* %XMM10, align 1, !mcsema_real_eip !46
  %976 = load i128, i128* %XMM11_val, !mcsema_real_eip !46
  store i128 %976, i128* %XMM11, align 1, !mcsema_real_eip !46
  %977 = load i128, i128* %XMM12_val, !mcsema_real_eip !46
  store i128 %977, i128* %XMM12, align 1, !mcsema_real_eip !46
  %978 = load i128, i128* %XMM13_val, !mcsema_real_eip !46
  store i128 %978, i128* %XMM13, align 1, !mcsema_real_eip !46
  %979 = load i128, i128* %XMM14_val, !mcsema_real_eip !46
  store i128 %979, i128* %XMM14, align 1, !mcsema_real_eip !46
  %980 = load i128, i128* %XMM15_val, !mcsema_real_eip !46
  store i128 %980, i128* %XMM15, align 1, !mcsema_real_eip !46
  %981 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !46
  store i64 %981, i64* %STACK_BASE, align 1, !mcsema_real_eip !46
  %982 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !46
  store i64 %982, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !46
  tail call x86_64_sysvcc void @sub_4005f0(%struct.regs* %0), !mcsema_real_eip !46
  %983 = load i64, i64* %RAX, !mcsema_real_eip !46
  store i64 %983, i64* %RAX_val, !mcsema_real_eip !46
  %984 = load i64, i64* %RBX, !mcsema_real_eip !46
  store i64 %984, i64* %RBX_val, !mcsema_real_eip !46
  %985 = load i64, i64* %RCX, !mcsema_real_eip !46
  store i64 %985, i64* %RCX_val, !mcsema_real_eip !46
  %986 = load i64, i64* %RDX, !mcsema_real_eip !46
  store i64 %986, i64* %RDX_val, !mcsema_real_eip !46
  %987 = load i64, i64* %RSI, !mcsema_real_eip !46
  store i64 %987, i64* %RSI_val, !mcsema_real_eip !46
  %988 = load i64, i64* %RDI, !mcsema_real_eip !46
  store i64 %988, i64* %RDI_val, !mcsema_real_eip !46
  %989 = load i64, i64* %RSP, !mcsema_real_eip !46
  store i64 %989, i64* %RSP_val, !mcsema_real_eip !46
  %990 = load i64, i64* %RBP, !mcsema_real_eip !46
  store i64 %990, i64* %RBP_val, !mcsema_real_eip !46
  %991 = load i64, i64* %R8, !mcsema_real_eip !46
  store i64 %991, i64* %R8_val, !mcsema_real_eip !46
  %992 = load i64, i64* %R9, !mcsema_real_eip !46
  store i64 %992, i64* %R9_val, !mcsema_real_eip !46
  %993 = load i64, i64* %R10, !mcsema_real_eip !46
  store i64 %993, i64* %R10_val, !mcsema_real_eip !46
  %994 = load i64, i64* %R11, !mcsema_real_eip !46
  store i64 %994, i64* %R11_val, !mcsema_real_eip !46
  %995 = load i64, i64* %R12, !mcsema_real_eip !46
  store i64 %995, i64* %R12_val, !mcsema_real_eip !46
  %996 = load i64, i64* %R13, !mcsema_real_eip !46
  store i64 %996, i64* %R13_val, !mcsema_real_eip !46
  %997 = load i64, i64* %R14, !mcsema_real_eip !46
  store i64 %997, i64* %R14_val, !mcsema_real_eip !46
  %998 = load i64, i64* %R15, !mcsema_real_eip !46
  store i64 %998, i64* %R15_val, !mcsema_real_eip !46
  %999 = load i64, i64* %RIP, !mcsema_real_eip !46
  store i64 %999, i64* %RIP_val, !mcsema_real_eip !46
  %1000 = load i1, i1* %CF, align 1, !mcsema_real_eip !46
  store i1 %1000, i1* %CF_val, !mcsema_real_eip !46
  %1001 = load i1, i1* %PF, align 1, !mcsema_real_eip !46
  store i1 %1001, i1* %PF_val, !mcsema_real_eip !46
  %1002 = load i1, i1* %AF, align 1, !mcsema_real_eip !46
  store i1 %1002, i1* %AF_val, !mcsema_real_eip !46
  %1003 = load i1, i1* %ZF, align 1, !mcsema_real_eip !46
  store i1 %1003, i1* %ZF_val, !mcsema_real_eip !46
  %1004 = load i1, i1* %SF, align 1, !mcsema_real_eip !46
  store i1 %1004, i1* %SF_val, !mcsema_real_eip !46
  %1005 = load i1, i1* %DF, align 1, !mcsema_real_eip !46
  store i1 %1005, i1* %DF_val, !mcsema_real_eip !46
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !46
  %1006 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !46
  store i1 %1006, i1* %FPU_B_val, !mcsema_real_eip !46
  %1007 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !46
  store i1 %1007, i1* %FPU_C3_val, !mcsema_real_eip !46
  %1008 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !46
  store i3 %1008, i3* %FPU_TOP_val, !mcsema_real_eip !46
  %1009 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !46
  store i1 %1009, i1* %FPU_C2_val, !mcsema_real_eip !46
  %1010 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !46
  store i1 %1010, i1* %FPU_C1_val, !mcsema_real_eip !46
  %1011 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !46
  store i1 %1011, i1* %FPU_C0_val, !mcsema_real_eip !46
  %1012 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !46
  store i1 %1012, i1* %FPU_ES_val, !mcsema_real_eip !46
  %1013 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !46
  store i1 %1013, i1* %FPU_SF_val, !mcsema_real_eip !46
  %1014 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !46
  store i1 %1014, i1* %FPU_PE_val, !mcsema_real_eip !46
  %1015 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !46
  store i1 %1015, i1* %FPU_UE_val, !mcsema_real_eip !46
  %1016 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !46
  store i1 %1016, i1* %FPU_OE_val, !mcsema_real_eip !46
  %1017 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !46
  store i1 %1017, i1* %FPU_ZE_val, !mcsema_real_eip !46
  %1018 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !46
  store i1 %1018, i1* %FPU_DE_val, !mcsema_real_eip !46
  %1019 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !46
  store i1 %1019, i1* %FPU_IE_val, !mcsema_real_eip !46
  %1020 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !46
  store i1 %1020, i1* %FPU_X_val, !mcsema_real_eip !46
  %1021 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !46
  store i2 %1021, i2* %FPU_RC_val, !mcsema_real_eip !46
  %1022 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !46
  store i2 %1022, i2* %FPU_PC_val, !mcsema_real_eip !46
  %1023 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !46
  store i1 %1023, i1* %FPU_PM_val, !mcsema_real_eip !46
  %1024 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !46
  store i1 %1024, i1* %FPU_UM_val, !mcsema_real_eip !46
  %1025 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !46
  store i1 %1025, i1* %FPU_OM_val, !mcsema_real_eip !46
  %1026 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !46
  store i1 %1026, i1* %FPU_ZM_val, !mcsema_real_eip !46
  %1027 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !46
  store i1 %1027, i1* %FPU_DM_val, !mcsema_real_eip !46
  %1028 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !46
  store i1 %1028, i1* %FPU_IM_val, !mcsema_real_eip !46
  %1029 = load i64, i64* %52, align 4
  store i64 %1029, i64* %53, align 4
  %1030 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !46
  store i16 %1030, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !46
  %1031 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !46
  store i64 %1031, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !46
  %1032 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !46
  store i16 %1032, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !46
  %1033 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !46
  store i64 %1033, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !46
  %1034 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !46
  store i11 %1034, i11* %FPU_FOPCODE_val, !mcsema_real_eip !46
  %1035 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !46
  store i128 %1035, i128* %XMM0_val, !mcsema_real_eip !46
  %1036 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !46
  store i128 %1036, i128* %XMM1_val, !mcsema_real_eip !46
  %1037 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !46
  store i128 %1037, i128* %XMM2_val, !mcsema_real_eip !46
  %1038 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !46
  store i128 %1038, i128* %XMM3_val, !mcsema_real_eip !46
  %1039 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !46
  store i128 %1039, i128* %XMM4_val, !mcsema_real_eip !46
  %1040 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !46
  store i128 %1040, i128* %XMM5_val, !mcsema_real_eip !46
  %1041 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !46
  store i128 %1041, i128* %XMM6_val, !mcsema_real_eip !46
  %1042 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !46
  store i128 %1042, i128* %XMM7_val, !mcsema_real_eip !46
  %1043 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !46
  store i128 %1043, i128* %XMM8_val, !mcsema_real_eip !46
  %1044 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !46
  store i128 %1044, i128* %XMM9_val, !mcsema_real_eip !46
  %1045 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !46
  store i128 %1045, i128* %XMM10_val, !mcsema_real_eip !46
  %1046 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !46
  store i128 %1046, i128* %XMM11_val, !mcsema_real_eip !46
  %1047 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !46
  store i128 %1047, i128* %XMM12_val, !mcsema_real_eip !46
  %1048 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !46
  store i128 %1048, i128* %XMM13_val, !mcsema_real_eip !46
  %1049 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !46
  store i128 %1049, i128* %XMM14_val, !mcsema_real_eip !46
  %1050 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !46
  store i128 %1050, i128* %XMM15_val, !mcsema_real_eip !46
  %1051 = load i64, i64* %STACK_BASE, !mcsema_real_eip !46
  store i64 %1051, i64* %STACK_BASE_val, !mcsema_real_eip !46
  %1052 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !46
  store i64 %1052, i64* %STACK_LIMIT_val, !mcsema_real_eip !46
  store i64 0, i64* %RAX_val, !mcsema_real_eip !47
  %1053 = load i64, i64* %RSP_val, !mcsema_real_eip !48
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1053, i64 16)
  %1054 = extractvalue { i64, i1 } %uadd, 0
  %1055 = xor i64 %1054, %1053, !mcsema_real_eip !48
  %1056 = and i64 %1055, 16
  %1057 = icmp eq i64 %1056, 0
  store i1 %1057, i1* %AF_val, !mcsema_real_eip !48
  %1058 = icmp slt i64 %1054, 0
  store i1 %1058, i1* %SF_val, !mcsema_real_eip !48
  %1059 = icmp eq i64 %1054, 0, !mcsema_real_eip !48
  store i1 %1059, i1* %ZF_val, !mcsema_real_eip !48
  %1060 = xor i64 %1053, -9223372036854775808, !mcsema_real_eip !48
  %1061 = and i64 %1055, %1060, !mcsema_real_eip !48
  %1062 = icmp slt i64 %1061, 0
  store i1 %1062, i1* %OF_val, !mcsema_real_eip !48
  %1063 = trunc i64 %1054 to i8, !mcsema_real_eip !48
  %1064 = tail call i8 @llvm.ctpop.i8(i8 %1063), !mcsema_real_eip !48
  %1065 = and i8 %1064, 1
  %1066 = icmp eq i8 %1065, 0
  store i1 %1066, i1* %PF_val, !mcsema_real_eip !48
  %1067 = extractvalue { i64, i1 } %uadd, 1
  store i1 %1067, i1* %CF_val, !mcsema_real_eip !48
  store i64 %1054, i64* %RSP_val, !mcsema_real_eip !48
  %1068 = inttoptr i64 %1054 to i64*, !mcsema_real_eip !49
  %1069 = load i64, i64* %1068, !mcsema_real_eip !49
  store i64 %1069, i64* %RBX_val, !mcsema_real_eip !49
  %1070 = add i64 %1054, 16, !mcsema_real_eip !50
  store i64 %1070, i64* %RSP_val, !mcsema_real_eip !50
  %1071 = load i64, i64* %RAX_val, !mcsema_real_eip !50
  store i64 %1071, i64* %RAX, !mcsema_real_eip !50
  %1072 = load i64, i64* %RBX_val, !mcsema_real_eip !50
  store i64 %1072, i64* %RBX, !mcsema_real_eip !50
  %1073 = load i64, i64* %RCX_val, !mcsema_real_eip !50
  store i64 %1073, i64* %RCX, !mcsema_real_eip !50
  %1074 = load i64, i64* %RDX_val, !mcsema_real_eip !50
  store i64 %1074, i64* %RDX, !mcsema_real_eip !50
  %1075 = load i64, i64* %RSI_val, !mcsema_real_eip !50
  store i64 %1075, i64* %RSI, !mcsema_real_eip !50
  %1076 = load i64, i64* %RDI_val, !mcsema_real_eip !50
  store i64 %1076, i64* %RDI, !mcsema_real_eip !50
  %1077 = load i64, i64* %RSP_val, !mcsema_real_eip !50
  store i64 %1077, i64* %RSP, !mcsema_real_eip !50
  %1078 = load i64, i64* %RBP_val, !mcsema_real_eip !50
  store i64 %1078, i64* %RBP, !mcsema_real_eip !50
  %1079 = load i64, i64* %R8_val, !mcsema_real_eip !50
  store i64 %1079, i64* %R8, !mcsema_real_eip !50
  %1080 = load i64, i64* %R9_val, !mcsema_real_eip !50
  store i64 %1080, i64* %R9, !mcsema_real_eip !50
  %1081 = load i64, i64* %R10_val, !mcsema_real_eip !50
  store i64 %1081, i64* %R10, !mcsema_real_eip !50
  %1082 = load i64, i64* %R11_val, !mcsema_real_eip !50
  store i64 %1082, i64* %R11, !mcsema_real_eip !50
  %1083 = load i64, i64* %R12_val, !mcsema_real_eip !50
  store i64 %1083, i64* %R12, !mcsema_real_eip !50
  %1084 = load i64, i64* %R13_val, !mcsema_real_eip !50
  store i64 %1084, i64* %R13, !mcsema_real_eip !50
  %1085 = load i64, i64* %R14_val, !mcsema_real_eip !50
  store i64 %1085, i64* %R14, !mcsema_real_eip !50
  %1086 = load i64, i64* %R15_val, !mcsema_real_eip !50
  store i64 %1086, i64* %R15, !mcsema_real_eip !50
  %1087 = load i64, i64* %RIP_val, !mcsema_real_eip !50
  store i64 %1087, i64* %RIP, !mcsema_real_eip !50
  %1088 = load i1, i1* %CF_val, !mcsema_real_eip !50
  store i1 %1088, i1* %CF, align 1, !mcsema_real_eip !50
  %1089 = load i1, i1* %PF_val, !mcsema_real_eip !50
  store i1 %1089, i1* %PF, align 1, !mcsema_real_eip !50
  %1090 = load i1, i1* %AF_val, !mcsema_real_eip !50
  store i1 %1090, i1* %AF, align 1, !mcsema_real_eip !50
  %1091 = load i1, i1* %ZF_val, !mcsema_real_eip !50
  store i1 %1091, i1* %ZF, align 1, !mcsema_real_eip !50
  %1092 = load i1, i1* %SF_val, !mcsema_real_eip !50
  store i1 %1092, i1* %SF, align 1, !mcsema_real_eip !50
  %1093 = load i1, i1* %OF_val, !mcsema_real_eip !50
  store i1 %1093, i1* %OF, align 1, !mcsema_real_eip !50
  %1094 = load i1, i1* %DF_val, !mcsema_real_eip !50
  store i1 %1094, i1* %DF, align 1, !mcsema_real_eip !50
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !50
  %1095 = load i1, i1* %FPU_B_val, !mcsema_real_eip !50
  store i1 %1095, i1* %FPU_B, align 1, !mcsema_real_eip !50
  %1096 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !50
  store i1 %1096, i1* %FPU_C3, align 1, !mcsema_real_eip !50
  %1097 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !50
  store i3 %1097, i3* %FPU_TOP, align 1, !mcsema_real_eip !50
  %1098 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !50
  store i1 %1098, i1* %FPU_C2, align 1, !mcsema_real_eip !50
  %1099 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !50
  store i1 %1099, i1* %FPU_C1, align 1, !mcsema_real_eip !50
  %1100 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !50
  store i1 %1100, i1* %FPU_C0, align 1, !mcsema_real_eip !50
  %1101 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !50
  store i1 %1101, i1* %FPU_ES, align 1, !mcsema_real_eip !50
  %1102 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !50
  store i1 %1102, i1* %FPU_SF, align 1, !mcsema_real_eip !50
  %1103 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !50
  store i1 %1103, i1* %FPU_PE, align 1, !mcsema_real_eip !50
  %1104 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !50
  store i1 %1104, i1* %FPU_UE, align 1, !mcsema_real_eip !50
  %1105 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !50
  store i1 %1105, i1* %FPU_OE, align 1, !mcsema_real_eip !50
  %1106 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !50
  store i1 %1106, i1* %FPU_ZE, align 1, !mcsema_real_eip !50
  %1107 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !50
  store i1 %1107, i1* %FPU_DE, align 1, !mcsema_real_eip !50
  %1108 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !50
  store i1 %1108, i1* %FPU_IE, align 1, !mcsema_real_eip !50
  %1109 = load i1, i1* %FPU_X_val, !mcsema_real_eip !50
  store i1 %1109, i1* %FPU_X, align 1, !mcsema_real_eip !50
  %1110 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !50
  store i2 %1110, i2* %FPU_RC, align 1, !mcsema_real_eip !50
  %1111 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !50
  store i2 %1111, i2* %FPU_PC, align 1, !mcsema_real_eip !50
  %1112 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !50
  store i1 %1112, i1* %FPU_PM, align 1, !mcsema_real_eip !50
  %1113 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !50
  store i1 %1113, i1* %FPU_UM, align 1, !mcsema_real_eip !50
  %1114 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !50
  store i1 %1114, i1* %FPU_OM, align 1, !mcsema_real_eip !50
  %1115 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !50
  store i1 %1115, i1* %FPU_ZM, align 1, !mcsema_real_eip !50
  %1116 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !50
  store i1 %1116, i1* %FPU_DM, align 1, !mcsema_real_eip !50
  %1117 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !50
  store i1 %1117, i1* %FPU_IM, align 1, !mcsema_real_eip !50
  %1118 = load i64, i64* %53, align 4
  store i64 %1118, i64* %52, align 4
  %1119 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !50
  store i16 %1119, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !50
  %1120 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !50
  store i64 %1120, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !50
  %1121 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !50
  store i16 %1121, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !50
  %1122 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !50
  store i64 %1122, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !50
  %1123 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !50
  store i11 %1123, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !50
  %1124 = load i128, i128* %XMM0_val, !mcsema_real_eip !50
  store i128 %1124, i128* %XMM0, align 1, !mcsema_real_eip !50
  %1125 = load i128, i128* %XMM1_val, !mcsema_real_eip !50
  store i128 %1125, i128* %XMM1, align 1, !mcsema_real_eip !50
  %1126 = load i128, i128* %XMM2_val, !mcsema_real_eip !50
  store i128 %1126, i128* %XMM2, align 1, !mcsema_real_eip !50
  %1127 = load i128, i128* %XMM3_val, !mcsema_real_eip !50
  store i128 %1127, i128* %XMM3, align 1, !mcsema_real_eip !50
  %1128 = load i128, i128* %XMM4_val, !mcsema_real_eip !50
  store i128 %1128, i128* %XMM4, align 1, !mcsema_real_eip !50
  %1129 = load i128, i128* %XMM5_val, !mcsema_real_eip !50
  store i128 %1129, i128* %XMM5, align 1, !mcsema_real_eip !50
  %1130 = load i128, i128* %XMM6_val, !mcsema_real_eip !50
  store i128 %1130, i128* %XMM6, align 1, !mcsema_real_eip !50
  %1131 = load i128, i128* %XMM7_val, !mcsema_real_eip !50
  store i128 %1131, i128* %XMM7, align 1, !mcsema_real_eip !50
  %1132 = load i128, i128* %XMM8_val, !mcsema_real_eip !50
  store i128 %1132, i128* %XMM8, align 1, !mcsema_real_eip !50
  %1133 = load i128, i128* %XMM9_val, !mcsema_real_eip !50
  store i128 %1133, i128* %XMM9, align 1, !mcsema_real_eip !50
  %1134 = load i128, i128* %XMM10_val, !mcsema_real_eip !50
  store i128 %1134, i128* %XMM10, align 1, !mcsema_real_eip !50
  %1135 = load i128, i128* %XMM11_val, !mcsema_real_eip !50
  store i128 %1135, i128* %XMM11, align 1, !mcsema_real_eip !50
  %1136 = load i128, i128* %XMM12_val, !mcsema_real_eip !50
  store i128 %1136, i128* %XMM12, align 1, !mcsema_real_eip !50
  %1137 = load i128, i128* %XMM13_val, !mcsema_real_eip !50
  store i128 %1137, i128* %XMM13, align 1, !mcsema_real_eip !50
  %1138 = load i128, i128* %XMM14_val, !mcsema_real_eip !50
  store i128 %1138, i128* %XMM14, align 1, !mcsema_real_eip !50
  %1139 = load i128, i128* %XMM15_val, !mcsema_real_eip !50
  store i128 %1139, i128* %XMM15, align 1, !mcsema_real_eip !50
  %1140 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !50
  store i64 %1140, i64* %STACK_BASE, align 1, !mcsema_real_eip !50
  %1141 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !50
  store i64 %1141, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !50
  ret void, !mcsema_real_eip !50
}

define internal x86_64_sysvcc void @sub_4005f0(%struct.regs*) {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !51
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !51
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !51
  %XMM15_val = alloca i128, !mcsema_real_eip !51
  %XMM14_val = alloca i128, !mcsema_real_eip !51
  %XMM13_val = alloca i128, !mcsema_real_eip !51
  %XMM12_val = alloca i128, !mcsema_real_eip !51
  %XMM11_val = alloca i128, !mcsema_real_eip !51
  %XMM10_val = alloca i128, !mcsema_real_eip !51
  %XMM9_val = alloca i128, !mcsema_real_eip !51
  %XMM8_val = alloca i128, !mcsema_real_eip !51
  %XMM7_val = alloca i128, !mcsema_real_eip !51
  %XMM6_val = alloca i128, !mcsema_real_eip !51
  %XMM5_val = alloca i128, !mcsema_real_eip !51
  %XMM4_val = alloca i128, !mcsema_real_eip !51
  %XMM3_val = alloca i128, !mcsema_real_eip !51
  %XMM2_val = alloca i128, !mcsema_real_eip !51
  %XMM1_val = alloca i128, !mcsema_real_eip !51
  %XMM0_val = alloca i128, !mcsema_real_eip !51
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !51
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !51
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !51
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !51
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !51
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !51
  %FPU_IM_val = alloca i1, !mcsema_real_eip !51
  %FPU_DM_val = alloca i1, !mcsema_real_eip !51
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !51
  %FPU_OM_val = alloca i1, !mcsema_real_eip !51
  %FPU_UM_val = alloca i1, !mcsema_real_eip !51
  %FPU_PM_val = alloca i1, !mcsema_real_eip !51
  %FPU_PC_val = alloca i2, !mcsema_real_eip !51
  %FPU_RC_val = alloca i2, !mcsema_real_eip !51
  %FPU_X_val = alloca i1, !mcsema_real_eip !51
  %FPU_IE_val = alloca i1, !mcsema_real_eip !51
  %FPU_DE_val = alloca i1, !mcsema_real_eip !51
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !51
  %FPU_OE_val = alloca i1, !mcsema_real_eip !51
  %FPU_UE_val = alloca i1, !mcsema_real_eip !51
  %FPU_PE_val = alloca i1, !mcsema_real_eip !51
  %FPU_SF_val = alloca i1, !mcsema_real_eip !51
  %FPU_ES_val = alloca i1, !mcsema_real_eip !51
  %FPU_C0_val = alloca i1, !mcsema_real_eip !51
  %FPU_C1_val = alloca i1, !mcsema_real_eip !51
  %FPU_C2_val = alloca i1, !mcsema_real_eip !51
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !51
  %FPU_C3_val = alloca i1, !mcsema_real_eip !51
  %FPU_B_val = alloca i1, !mcsema_real_eip !51
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !51
  %DF_val = alloca i1, !mcsema_real_eip !51
  %OF_val = alloca i1, !mcsema_real_eip !51
  %SF_val = alloca i1, !mcsema_real_eip !51
  %CF_val = alloca i1, !mcsema_real_eip !51
  %AF_val = alloca i1, !mcsema_real_eip !51
  %PF_val = alloca i1, !mcsema_real_eip !51
  %ZF_val = alloca i1, !mcsema_real_eip !51
  %RIP_val = alloca i64, !mcsema_real_eip !51
  %R14_val = alloca i64, !mcsema_real_eip !51
  %R13_val = alloca i64, !mcsema_real_eip !51
  %R12_val = alloca i64, !mcsema_real_eip !51
  %R11_val = alloca i64, !mcsema_real_eip !51
  %R10_val = alloca i64, !mcsema_real_eip !51
  %R9_val = alloca i64, !mcsema_real_eip !51
  %R8_val = alloca i64, !mcsema_real_eip !51
  %RSP_val = alloca i64, !mcsema_real_eip !51
  %RBP_val = alloca i64, !mcsema_real_eip !51
  %RDI_val = alloca i64, !mcsema_real_eip !51
  %RSI_val = alloca i64, !mcsema_real_eip !51
  %RDX_val = alloca i64, !mcsema_real_eip !51
  %RCX_val = alloca i64, !mcsema_real_eip !51
  %RBX_val = alloca i64, !mcsema_real_eip !51
  %RAX_val = alloca i64, !mcsema_real_eip !51
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !51
  %1 = load i64, i64* %RAX, !mcsema_real_eip !51
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !51
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !51
  %2 = load i64, i64* %RBX, !mcsema_real_eip !51
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !51
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !51
  %3 = load i64, i64* %RCX, !mcsema_real_eip !51
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !51
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !51
  %4 = load i64, i64* %RDX, !mcsema_real_eip !51
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !51
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !51
  %5 = load i64, i64* %RSI, !mcsema_real_eip !51
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !51
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !51
  %6 = load i64, i64* %RDI, !mcsema_real_eip !51
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !51
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !51
  %7 = load i64, i64* %RSP, !mcsema_real_eip !51
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !51
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !51
  %8 = load i64, i64* %RBP, !mcsema_real_eip !51
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !51
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !51
  %9 = load i64, i64* %R8, !mcsema_real_eip !51
  store i64 %9, i64* %R8_val, !mcsema_real_eip !51
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !51
  %10 = load i64, i64* %R9, !mcsema_real_eip !51
  store i64 %10, i64* %R9_val, !mcsema_real_eip !51
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !51
  %11 = load i64, i64* %R10, !mcsema_real_eip !51
  store i64 %11, i64* %R10_val, !mcsema_real_eip !51
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !51
  %12 = load i64, i64* %R11, !mcsema_real_eip !51
  store i64 %12, i64* %R11_val, !mcsema_real_eip !51
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !51
  %13 = load i64, i64* %R12, !mcsema_real_eip !51
  store i64 %13, i64* %R12_val, !mcsema_real_eip !51
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !51
  %14 = load i64, i64* %R13, !mcsema_real_eip !51
  store i64 %14, i64* %R13_val, !mcsema_real_eip !51
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !51
  %15 = load i64, i64* %R14, !mcsema_real_eip !51
  store i64 %15, i64* %R14_val, !mcsema_real_eip !51
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !51
  %16 = load i64, i64* %R15, !mcsema_real_eip !51
  store i64 %16, i64* %R15_val, !mcsema_real_eip !51
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !51
  %17 = load i64, i64* %RIP, !mcsema_real_eip !51
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !51
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !51
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !51
  store i1 %18, i1* %CF_val, !mcsema_real_eip !51
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !51
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !51
  store i1 %19, i1* %PF_val, !mcsema_real_eip !51
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !51
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !51
  store i1 %20, i1* %AF_val, !mcsema_real_eip !51
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !51
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !51
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !51
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !51
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !51
  store i1 %22, i1* %SF_val, !mcsema_real_eip !51
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !51
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !51
  store i1 %23, i1* %OF_val, !mcsema_real_eip !51
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !51
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !51
  store i1 %24, i1* %DF_val, !mcsema_real_eip !51
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !51
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !51
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !51
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !51
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !51
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !51
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !51
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !51
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !51
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !51
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !51
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !51
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !51
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !51
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !51
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !51
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !51
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !51
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !51
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !51
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !51
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !51
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !51
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !51
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !51
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !51
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !51
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !51
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !51
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !51
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !51
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !51
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !51
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !51
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !51
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !51
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !51
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !51
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !51
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !51
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !51
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !51
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !51
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !51
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !51
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !51
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !51
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !51
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !51
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !51
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !51
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !51
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !51
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !51
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !51
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !51
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !51
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !51
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !51
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !51
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !51
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !51
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !51
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !51
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !51
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !51
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !51
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !51
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !51
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !51
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !51
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !51
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !51
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !51
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !51
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !51
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !51
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !51
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !51
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !51
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !51
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !51
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !51
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !51
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !51
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !51
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !51
  %59 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !51
  store i11 %59, i11* %FPU_FOPCODE_val, !mcsema_real_eip !51
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !51
  %60 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !51
  store i128 %60, i128* %XMM0_val, !mcsema_real_eip !51
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !51
  %61 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !51
  store i128 %61, i128* %XMM1_val, !mcsema_real_eip !51
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !51
  %62 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !51
  store i128 %62, i128* %XMM2_val, !mcsema_real_eip !51
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !51
  %63 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !51
  store i128 %63, i128* %XMM3_val, !mcsema_real_eip !51
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !51
  %64 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !51
  store i128 %64, i128* %XMM4_val, !mcsema_real_eip !51
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !51
  %65 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !51
  store i128 %65, i128* %XMM5_val, !mcsema_real_eip !51
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !51
  %66 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !51
  store i128 %66, i128* %XMM6_val, !mcsema_real_eip !51
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !51
  %67 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !51
  store i128 %67, i128* %XMM7_val, !mcsema_real_eip !51
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !51
  %68 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !51
  store i128 %68, i128* %XMM8_val, !mcsema_real_eip !51
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !51
  %69 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !51
  store i128 %69, i128* %XMM9_val, !mcsema_real_eip !51
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !51
  %70 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !51
  store i128 %70, i128* %XMM10_val, !mcsema_real_eip !51
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !51
  %71 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !51
  store i128 %71, i128* %XMM11_val, !mcsema_real_eip !51
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !51
  %72 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !51
  store i128 %72, i128* %XMM12_val, !mcsema_real_eip !51
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !51
  %73 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !51
  store i128 %73, i128* %XMM13_val, !mcsema_real_eip !51
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !51
  %74 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !51
  store i128 %74, i128* %XMM14_val, !mcsema_real_eip !51
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !51
  %75 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !51
  store i128 %75, i128* %XMM15_val, !mcsema_real_eip !51
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !51
  %76 = load i64, i64* %STACK_BASE, !mcsema_real_eip !51
  store i64 %76, i64* %STACK_BASE_val, !mcsema_real_eip !51
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !51
  %77 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !51
  store i64 %77, i64* %STACK_LIMIT_val, !mcsema_real_eip !51
  %78 = load i64, i64* %RDI_val, !mcsema_real_eip !51
  %79 = and i64 %78, 4294967295
  store i64 %79, i64* %R10_val, !mcsema_real_eip !51
  store i64 3, i64* %RAX_val, !mcsema_real_eip !52
  br label %block_0x400600, !mcsema_real_eip !53

block_0x400600:                                   ; preds = %block_0x400600, %entry
  %80 = load i64, i64* %RSI_val, !mcsema_real_eip !53
  %81 = add i64 %80, -4, !mcsema_real_eip !53
  %82 = load i64, i64* %RAX_val, !mcsema_real_eip !53
  %83 = shl i64 %82, 2
  %84 = add i64 %81, %83, !mcsema_real_eip !53
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !53
  %86 = bitcast i64* %85 to i32*
  %87 = load i32, i32* %86, !mcsema_real_eip !53
  %88 = zext i32 %87 to i64, !mcsema_real_eip !53
  store i64 %88, i64* %RCX_val, !mcsema_real_eip !53
  %89 = load i64, i64* %RSI_val, !mcsema_real_eip !54
  %90 = load i64, i64* %RAX_val, !mcsema_real_eip !54
  %91 = shl i64 %90, 2
  %92 = add i64 %91, %89, !mcsema_real_eip !54
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !54
  %94 = bitcast i64* %93 to i32*
  store i32 %87, i32* %94, !mcsema_real_eip !54
  %95 = load i64, i64* %RAX_val, !mcsema_real_eip !55
  %96 = add i64 %95, -1, !mcsema_real_eip !55
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !55
  %98 = ptrtoint i64* %97 to i64, !mcsema_real_eip !55
  store i64 %98, i64* %RAX_val, !mcsema_real_eip !55
  %99 = trunc i64 %98 to i32, !mcsema_real_eip !56
  %100 = load i64, i64* %R10_val, !mcsema_real_eip !56
  %101 = trunc i64 %100 to i32, !mcsema_real_eip !56
  %102 = sub i32 %99, %101, !mcsema_real_eip !56
  %103 = xor i32 %102, %99, !mcsema_real_eip !56
  %104 = xor i32 %103, %101, !mcsema_real_eip !56
  %105 = and i32 %104, 16, !mcsema_real_eip !56
  %106 = icmp ne i32 %105, 0, !mcsema_real_eip !56
  store i1 %106, i1* %AF_val, !mcsema_real_eip !56
  %107 = trunc i32 %102 to i8, !mcsema_real_eip !56
  %108 = tail call i8 @llvm.ctpop.i8(i8 %107), !mcsema_real_eip !56
  %109 = and i8 %108, 1
  %110 = icmp eq i8 %109, 0
  store i1 %110, i1* %PF_val, !mcsema_real_eip !56
  %111 = icmp eq i32 %99, %101
  store i1 %111, i1* %ZF_val, !mcsema_real_eip !56
  %112 = icmp slt i32 %102, 0
  store i1 %112, i1* %SF_val, !mcsema_real_eip !56
  %113 = icmp ult i32 %99, %101, !mcsema_real_eip !56
  store i1 %113, i1* %CF_val, !mcsema_real_eip !56
  %114 = xor i64 %98, %100
  %115 = trunc i64 %114 to i32
  %116 = and i32 %103, %115, !mcsema_real_eip !56
  %117 = icmp slt i32 %116, 0
  store i1 %117, i1* %OF_val, !mcsema_real_eip !56
  %118 = load i1, i1* %ZF_val, !mcsema_real_eip !57
  %119 = load i1, i1* %CF_val, !mcsema_real_eip !57
  %.demorgan = or i1 %119, %118
  br i1 %.demorgan, label %block_0x400610, label %block_0x400600, !mcsema_real_eip !57

block_0x400610:                                   ; preds = %block_0x400600
  %120 = load i64, i64* %RSI_val, !mcsema_real_eip !58
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !58
  %122 = bitcast i64* %121 to i32*
  %123 = load i32, i32* %122, !mcsema_real_eip !58
  %124 = zext i32 %123 to i64, !mcsema_real_eip !58
  store i64 %124, i64* %RDX_val, !mcsema_real_eip !58
  %125 = add i64 %120, 4, !mcsema_real_eip !59
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !59
  %127 = bitcast i64* %126 to i32*
  %128 = load i32, i32* %127, !mcsema_real_eip !59
  %129 = zext i32 %128 to i64, !mcsema_real_eip !59
  store i64 %129, i64* %RCX_val, !mcsema_real_eip !59
  %130 = load i64, i64* %RSI_val, !mcsema_real_eip !60
  %131 = add i64 %130, 8, !mcsema_real_eip !60
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !60
  %133 = bitcast i64* %132 to i32*
  %134 = load i32, i32* %133, !mcsema_real_eip !60
  %135 = zext i32 %134 to i64, !mcsema_real_eip !60
  store i64 %135, i64* %R8_val, !mcsema_real_eip !60
  %136 = load i64, i64* %RSI_val, !mcsema_real_eip !61
  %137 = add i64 %136, 12, !mcsema_real_eip !61
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !61
  %139 = bitcast i64* %138 to i32*
  %140 = load i32, i32* %139, !mcsema_real_eip !61
  %141 = zext i32 %140 to i64, !mcsema_real_eip !61
  store i64 %141, i64* %R9_val, !mcsema_real_eip !61
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x4007d0 to i32), i32 4) to i64), i64* %RDI_val, !mcsema_real_eip !62
  store i1 false, i1* %CF_val, !mcsema_real_eip !63
  store i1 false, i1* %OF_val, !mcsema_real_eip !63
  store i1 false, i1* %SF_val, !mcsema_real_eip !63
  store i1 true, i1* %ZF_val, !mcsema_real_eip !63
  store i1 true, i1* %PF_val, !mcsema_real_eip !63
  store i64 0, i64* %RAX_val, !mcsema_real_eip !63
  %142 = load i64, i64* %R10_val, !mcsema_real_eip !64
  %143 = and i64 %142, 4294967295
  store i64 %143, i64* %RSI_val, !mcsema_real_eip !64
  %144 = load i64, i64* %RDI_val, !mcsema_real_eip !65
  %145 = load i64, i64* %RDX_val, !mcsema_real_eip !65
  %146 = load i64, i64* %RCX_val, !mcsema_real_eip !65
  %147 = load i64, i64* %R8_val, !mcsema_real_eip !65
  %148 = load i64, i64* %R9_val, !mcsema_real_eip !65
  %149 = load i64, i64* %RSP_val, !mcsema_real_eip !65
  %150 = add i64 %149, 8, !mcsema_real_eip !65
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !65
  %152 = load i64, i64* %151, !mcsema_real_eip !65
  %153 = add i64 %149, 16, !mcsema_real_eip !65
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !65
  %155 = load i64, i64* %154, !mcsema_real_eip !65
  %156 = add i64 %149, 24, !mcsema_real_eip !65
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !65
  %158 = load i64, i64* %157, !mcsema_real_eip !65
  %159 = add i64 %149, 32, !mcsema_real_eip !65
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !65
  %161 = load i64, i64* %160, !mcsema_real_eip !65
  %162 = add i64 %149, 40, !mcsema_real_eip !65
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !65
  %164 = load i64, i64* %163, !mcsema_real_eip !65
  %165 = add i64 %149, 48, !mcsema_real_eip !65
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !65
  %167 = load i64, i64* %166, !mcsema_real_eip !65
  %168 = add i64 %149, 56, !mcsema_real_eip !65
  %169 = inttoptr i64 %168 to i64*, !mcsema_real_eip !65
  %170 = load i64, i64* %169, !mcsema_real_eip !65
  %171 = add i64 %149, 64, !mcsema_real_eip !65
  %172 = inttoptr i64 %171 to i64*, !mcsema_real_eip !65
  %173 = load i64, i64* %172, !mcsema_real_eip !65
  %174 = add i64 %149, 72, !mcsema_real_eip !65
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !65
  %176 = load i64, i64* %175, !mcsema_real_eip !65
  %177 = add i64 %149, 80, !mcsema_real_eip !65
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !65
  %179 = load i64, i64* %178, !mcsema_real_eip !65
  %180 = tail call x86_64_sysvcc i64 @printf(i64 %144, i64 %143, i64 %145, i64 %146, i64 %147, i64 %148, i64 %152, i64 %155, i64 %158, i64 %161, i64 %164, i64 %167, i64 %170, i64 %173, i64 %176, i64 %179), !mcsema_real_eip !65
  %181 = load i64, i64* %RSP_val, !mcsema_real_eip !65
  %182 = add i64 %181, 8, !mcsema_real_eip !65
  store i64 %182, i64* %RSP_val, !mcsema_real_eip !65
  store i64 %180, i64* %RAX, !mcsema_real_eip !65
  %183 = load i64, i64* %RBX_val, !mcsema_real_eip !65
  store i64 %183, i64* %RBX, !mcsema_real_eip !65
  %184 = load i64, i64* %RCX_val, !mcsema_real_eip !65
  store i64 %184, i64* %RCX, !mcsema_real_eip !65
  %185 = load i64, i64* %RDX_val, !mcsema_real_eip !65
  store i64 %185, i64* %RDX, !mcsema_real_eip !65
  %186 = load i64, i64* %RSI_val, !mcsema_real_eip !65
  store i64 %186, i64* %RSI, !mcsema_real_eip !65
  %187 = load i64, i64* %RDI_val, !mcsema_real_eip !65
  store i64 %187, i64* %RDI, !mcsema_real_eip !65
  %188 = load i64, i64* %RSP_val, !mcsema_real_eip !65
  store i64 %188, i64* %RSP, !mcsema_real_eip !65
  %189 = load i64, i64* %RBP_val, !mcsema_real_eip !65
  store i64 %189, i64* %RBP, !mcsema_real_eip !65
  %190 = load i64, i64* %R8_val, !mcsema_real_eip !65
  store i64 %190, i64* %R8, !mcsema_real_eip !65
  %191 = load i64, i64* %R9_val, !mcsema_real_eip !65
  store i64 %191, i64* %R9, !mcsema_real_eip !65
  %192 = load i64, i64* %R10_val, !mcsema_real_eip !65
  store i64 %192, i64* %R10, !mcsema_real_eip !65
  %193 = load i64, i64* %R11_val, !mcsema_real_eip !65
  store i64 %193, i64* %R11, !mcsema_real_eip !65
  %194 = load i64, i64* %R12_val, !mcsema_real_eip !65
  store i64 %194, i64* %R12, !mcsema_real_eip !65
  %195 = load i64, i64* %R13_val, !mcsema_real_eip !65
  store i64 %195, i64* %R13, !mcsema_real_eip !65
  %196 = load i64, i64* %R14_val, !mcsema_real_eip !65
  store i64 %196, i64* %R14, !mcsema_real_eip !65
  %197 = load i64, i64* %R15_val, !mcsema_real_eip !65
  store i64 %197, i64* %R15, !mcsema_real_eip !65
  %198 = load i64, i64* %RIP_val, !mcsema_real_eip !65
  store i64 %198, i64* %RIP, !mcsema_real_eip !65
  %199 = load i1, i1* %CF_val, !mcsema_real_eip !65
  store i1 %199, i1* %CF, align 1, !mcsema_real_eip !65
  %200 = load i1, i1* %PF_val, !mcsema_real_eip !65
  store i1 %200, i1* %PF, align 1, !mcsema_real_eip !65
  %201 = load i1, i1* %AF_val, !mcsema_real_eip !65
  store i1 %201, i1* %AF, align 1, !mcsema_real_eip !65
  %202 = load i1, i1* %ZF_val, !mcsema_real_eip !65
  store i1 %202, i1* %ZF, align 1, !mcsema_real_eip !65
  %203 = load i1, i1* %SF_val, !mcsema_real_eip !65
  store i1 %203, i1* %SF, align 1, !mcsema_real_eip !65
  %204 = load i1, i1* %OF_val, !mcsema_real_eip !65
  store i1 %204, i1* %OF, align 1, !mcsema_real_eip !65
  %205 = load i1, i1* %DF_val, !mcsema_real_eip !65
  store i1 %205, i1* %DF, align 1, !mcsema_real_eip !65
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !65
  %206 = load i1, i1* %FPU_B_val, !mcsema_real_eip !65
  store i1 %206, i1* %FPU_B, align 1, !mcsema_real_eip !65
  %207 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !65
  store i1 %207, i1* %FPU_C3, align 1, !mcsema_real_eip !65
  %208 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !65
  store i3 %208, i3* %FPU_TOP, align 1, !mcsema_real_eip !65
  %209 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !65
  store i1 %209, i1* %FPU_C2, align 1, !mcsema_real_eip !65
  %210 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !65
  store i1 %210, i1* %FPU_C1, align 1, !mcsema_real_eip !65
  %211 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !65
  store i1 %211, i1* %FPU_C0, align 1, !mcsema_real_eip !65
  %212 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !65
  store i1 %212, i1* %FPU_ES, align 1, !mcsema_real_eip !65
  %213 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !65
  store i1 %213, i1* %FPU_SF, align 1, !mcsema_real_eip !65
  %214 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !65
  store i1 %214, i1* %FPU_PE, align 1, !mcsema_real_eip !65
  %215 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !65
  store i1 %215, i1* %FPU_UE, align 1, !mcsema_real_eip !65
  %216 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !65
  store i1 %216, i1* %FPU_OE, align 1, !mcsema_real_eip !65
  %217 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !65
  store i1 %217, i1* %FPU_ZE, align 1, !mcsema_real_eip !65
  %218 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !65
  store i1 %218, i1* %FPU_DE, align 1, !mcsema_real_eip !65
  %219 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !65
  store i1 %219, i1* %FPU_IE, align 1, !mcsema_real_eip !65
  %220 = load i1, i1* %FPU_X_val, !mcsema_real_eip !65
  store i1 %220, i1* %FPU_X, align 1, !mcsema_real_eip !65
  %221 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !65
  store i2 %221, i2* %FPU_RC, align 1, !mcsema_real_eip !65
  %222 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !65
  store i2 %222, i2* %FPU_PC, align 1, !mcsema_real_eip !65
  %223 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !65
  store i1 %223, i1* %FPU_PM, align 1, !mcsema_real_eip !65
  %224 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !65
  store i1 %224, i1* %FPU_UM, align 1, !mcsema_real_eip !65
  %225 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !65
  store i1 %225, i1* %FPU_OM, align 1, !mcsema_real_eip !65
  %226 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !65
  store i1 %226, i1* %FPU_ZM, align 1, !mcsema_real_eip !65
  %227 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !65
  store i1 %227, i1* %FPU_DM, align 1, !mcsema_real_eip !65
  %228 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !65
  store i1 %228, i1* %FPU_IM, align 1, !mcsema_real_eip !65
  %229 = load i64, i64* %53, align 4
  store i64 %229, i64* %52, align 4
  %230 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !65
  store i16 %230, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !65
  %231 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !65
  store i64 %231, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !65
  %232 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !65
  store i16 %232, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !65
  %233 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !65
  store i64 %233, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !65
  %234 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !65
  store i11 %234, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !65
  %235 = load i128, i128* %XMM0_val, !mcsema_real_eip !65
  store i128 %235, i128* %XMM0, align 1, !mcsema_real_eip !65
  %236 = load i128, i128* %XMM1_val, !mcsema_real_eip !65
  store i128 %236, i128* %XMM1, align 1, !mcsema_real_eip !65
  %237 = load i128, i128* %XMM2_val, !mcsema_real_eip !65
  store i128 %237, i128* %XMM2, align 1, !mcsema_real_eip !65
  %238 = load i128, i128* %XMM3_val, !mcsema_real_eip !65
  store i128 %238, i128* %XMM3, align 1, !mcsema_real_eip !65
  %239 = load i128, i128* %XMM4_val, !mcsema_real_eip !65
  store i128 %239, i128* %XMM4, align 1, !mcsema_real_eip !65
  %240 = load i128, i128* %XMM5_val, !mcsema_real_eip !65
  store i128 %240, i128* %XMM5, align 1, !mcsema_real_eip !65
  %241 = load i128, i128* %XMM6_val, !mcsema_real_eip !65
  store i128 %241, i128* %XMM6, align 1, !mcsema_real_eip !65
  %242 = load i128, i128* %XMM7_val, !mcsema_real_eip !65
  store i128 %242, i128* %XMM7, align 1, !mcsema_real_eip !65
  %243 = load i128, i128* %XMM8_val, !mcsema_real_eip !65
  store i128 %243, i128* %XMM8, align 1, !mcsema_real_eip !65
  %244 = load i128, i128* %XMM9_val, !mcsema_real_eip !65
  store i128 %244, i128* %XMM9, align 1, !mcsema_real_eip !65
  %245 = load i128, i128* %XMM10_val, !mcsema_real_eip !65
  store i128 %245, i128* %XMM10, align 1, !mcsema_real_eip !65
  %246 = load i128, i128* %XMM11_val, !mcsema_real_eip !65
  store i128 %246, i128* %XMM11, align 1, !mcsema_real_eip !65
  %247 = load i128, i128* %XMM12_val, !mcsema_real_eip !65
  store i128 %247, i128* %XMM12, align 1, !mcsema_real_eip !65
  %248 = load i128, i128* %XMM13_val, !mcsema_real_eip !65
  store i128 %248, i128* %XMM13, align 1, !mcsema_real_eip !65
  %249 = load i128, i128* %XMM14_val, !mcsema_real_eip !65
  store i128 %249, i128* %XMM14, align 1, !mcsema_real_eip !65
  %250 = load i128, i128* %XMM15_val, !mcsema_real_eip !65
  store i128 %250, i128* %XMM15, align 1, !mcsema_real_eip !65
  %251 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !65
  store i64 %251, i64* %STACK_BASE, align 1, !mcsema_real_eip !65
  %252 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !65
  store i64 %252, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !65
  ret void, !mcsema_real_eip !65
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_400630(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 4195888}
!3 = !{i64 4195889}
!4 = !{i64 4195893}
!5 = !{i64 4195900}
!6 = !{i64 4195908}
!7 = !{i64 4195916}
!8 = !{i64 4195924}
!9 = !{i64 4195928}
!10 = !{i64 4195930}
!11 = !{i64 4195933}
!12 = !{i64 4195938}
!13 = !{i64 4195945}
!14 = !{i64 4195953}
!15 = !{i64 4195961}
!16 = !{i64 4195969}
!17 = !{i64 4195974}
!18 = !{i64 4195977}
!19 = !{i64 4195982}
!20 = !{i64 4195989}
!21 = !{i64 4195997}
!22 = !{i64 4196005}
!23 = !{i64 4196013}
!24 = !{i64 4196018}
!25 = !{i64 4196021}
!26 = !{i64 4196026}
!27 = !{i64 4196033}
!28 = !{i64 4196041}
!29 = !{i64 4196049}
!30 = !{i64 4196057}
!31 = !{i64 4196062}
!32 = !{i64 4196065}
!33 = !{i64 4196070}
!34 = !{i64 4196077}
!35 = !{i64 4196085}
!36 = !{i64 4196093}
!37 = !{i64 4196101}
!38 = !{i64 4196106}
!39 = !{i64 4196109}
!40 = !{i64 4196114}
!41 = !{i64 4196121}
!42 = !{i64 4196129}
!43 = !{i64 4196137}
!44 = !{i64 4196145}
!45 = !{i64 4196150}
!46 = !{i64 4196153}
!47 = !{i64 4196158}
!48 = !{i64 4196160}
!49 = !{i64 4196164}
!50 = !{i64 4196165}
!51 = !{i64 4195824}
!52 = !{i64 4195827}
!53 = !{i64 4195840}
!54 = !{i64 4195844}
!55 = !{i64 4195847}
!56 = !{i64 4195851}
!57 = !{i64 4195854}
!58 = !{i64 4195856}
!59 = !{i64 4195858}
!60 = !{i64 4195861}
!61 = !{i64 4195865}
!62 = !{i64 4195869}
!63 = !{i64 4195874}
!64 = !{i64 4195876}
!65 = !{i64 4195536}
