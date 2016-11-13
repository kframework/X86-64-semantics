; ModuleID = 'Output/test_31.clang.bc'
source_filename = "Output/test_31.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [4 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0xb1 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64

define internal x86_64_sysvcc void @sub_70(%struct.regs*) {
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
  store i64 5, i64* %RDI_val, !mcsema_real_eip !5
  %95 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %96 = add i64 %95, -4, !mcsema_real_eip !6
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !6
  %98 = bitcast i64* %97 to i32*
  store i32 0, i32* %98, !mcsema_real_eip !6
  %99 = load i64, i64* %RSP_val, !mcsema_real_eip !7
  %100 = add i64 %99, -8
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !7
  store i64 -4981261766360305936, i64* %101, !mcsema_real_eip !7
  store i64 %100, i64* %RSP_val, !mcsema_real_eip !7
  %102 = load i64, i64* %RAX_val, !mcsema_real_eip !7
  store i64 %102, i64* %RAX, !mcsema_real_eip !7
  %103 = load i64, i64* %RBX_val, !mcsema_real_eip !7
  store i64 %103, i64* %RBX, !mcsema_real_eip !7
  %104 = load i64, i64* %RCX_val, !mcsema_real_eip !7
  store i64 %104, i64* %RCX, !mcsema_real_eip !7
  %105 = load i64, i64* %RDX_val, !mcsema_real_eip !7
  store i64 %105, i64* %RDX, !mcsema_real_eip !7
  %106 = load i64, i64* %RSI_val, !mcsema_real_eip !7
  store i64 %106, i64* %RSI, !mcsema_real_eip !7
  %107 = load i64, i64* %RDI_val, !mcsema_real_eip !7
  store i64 %107, i64* %RDI, !mcsema_real_eip !7
  %108 = load i64, i64* %RSP_val, !mcsema_real_eip !7
  store i64 %108, i64* %RSP, !mcsema_real_eip !7
  %109 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  store i64 %109, i64* %RBP, !mcsema_real_eip !7
  %110 = load i64, i64* %R8_val, !mcsema_real_eip !7
  store i64 %110, i64* %R8, !mcsema_real_eip !7
  %111 = load i64, i64* %R9_val, !mcsema_real_eip !7
  store i64 %111, i64* %R9, !mcsema_real_eip !7
  %112 = load i64, i64* %R10_val, !mcsema_real_eip !7
  store i64 %112, i64* %R10, !mcsema_real_eip !7
  %113 = load i64, i64* %R11_val, !mcsema_real_eip !7
  store i64 %113, i64* %R11, !mcsema_real_eip !7
  %114 = load i64, i64* %R12_val, !mcsema_real_eip !7
  store i64 %114, i64* %R12, !mcsema_real_eip !7
  %115 = load i64, i64* %R13_val, !mcsema_real_eip !7
  store i64 %115, i64* %R13, !mcsema_real_eip !7
  %116 = load i64, i64* %R14_val, !mcsema_real_eip !7
  store i64 %116, i64* %R14, !mcsema_real_eip !7
  %117 = load i64, i64* %R15_val, !mcsema_real_eip !7
  store i64 %117, i64* %R15, !mcsema_real_eip !7
  %118 = load i64, i64* %RIP_val, !mcsema_real_eip !7
  store i64 %118, i64* %RIP, !mcsema_real_eip !7
  %119 = load i1, i1* %CF_val, !mcsema_real_eip !7
  store i1 %119, i1* %CF, align 1, !mcsema_real_eip !7
  %120 = load i1, i1* %PF_val, !mcsema_real_eip !7
  store i1 %120, i1* %PF, align 1, !mcsema_real_eip !7
  %121 = load i1, i1* %AF_val, !mcsema_real_eip !7
  store i1 %121, i1* %AF, align 1, !mcsema_real_eip !7
  %122 = load i1, i1* %ZF_val, !mcsema_real_eip !7
  store i1 %122, i1* %ZF, align 1, !mcsema_real_eip !7
  %123 = load i1, i1* %SF_val, !mcsema_real_eip !7
  store i1 %123, i1* %SF, align 1, !mcsema_real_eip !7
  %124 = load i1, i1* %OF_val, !mcsema_real_eip !7
  store i1 %124, i1* %OF, align 1, !mcsema_real_eip !7
  %125 = load i1, i1* %DF_val, !mcsema_real_eip !7
  store i1 %125, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !7
  %126 = load i1, i1* %FPU_B_val, !mcsema_real_eip !7
  store i1 %126, i1* %FPU_B, align 1, !mcsema_real_eip !7
  %127 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !7
  store i1 %127, i1* %FPU_C3, align 1, !mcsema_real_eip !7
  %128 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !7
  store i3 %128, i3* %FPU_TOP, align 1, !mcsema_real_eip !7
  %129 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !7
  store i1 %129, i1* %FPU_C2, align 1, !mcsema_real_eip !7
  %130 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !7
  store i1 %130, i1* %FPU_C1, align 1, !mcsema_real_eip !7
  %131 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !7
  store i1 %131, i1* %FPU_C0, align 1, !mcsema_real_eip !7
  %132 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !7
  store i1 %132, i1* %FPU_ES, align 1, !mcsema_real_eip !7
  %133 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !7
  store i1 %133, i1* %FPU_SF, align 1, !mcsema_real_eip !7
  %134 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !7
  store i1 %134, i1* %FPU_PE, align 1, !mcsema_real_eip !7
  %135 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !7
  store i1 %135, i1* %FPU_UE, align 1, !mcsema_real_eip !7
  %136 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !7
  store i1 %136, i1* %FPU_OE, align 1, !mcsema_real_eip !7
  %137 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !7
  store i1 %137, i1* %FPU_ZE, align 1, !mcsema_real_eip !7
  %138 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !7
  store i1 %138, i1* %FPU_DE, align 1, !mcsema_real_eip !7
  %139 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !7
  store i1 %139, i1* %FPU_IE, align 1, !mcsema_real_eip !7
  %140 = load i1, i1* %FPU_X_val, !mcsema_real_eip !7
  store i1 %140, i1* %FPU_X, align 1, !mcsema_real_eip !7
  %141 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !7
  store i2 %141, i2* %FPU_RC, align 1, !mcsema_real_eip !7
  %142 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !7
  store i2 %142, i2* %FPU_PC, align 1, !mcsema_real_eip !7
  %143 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !7
  store i1 %143, i1* %FPU_PM, align 1, !mcsema_real_eip !7
  %144 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !7
  store i1 %144, i1* %FPU_UM, align 1, !mcsema_real_eip !7
  %145 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !7
  store i1 %145, i1* %FPU_OM, align 1, !mcsema_real_eip !7
  %146 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !7
  store i1 %146, i1* %FPU_ZM, align 1, !mcsema_real_eip !7
  %147 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !7
  store i1 %147, i1* %FPU_DM, align 1, !mcsema_real_eip !7
  %148 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !7
  store i1 %148, i1* %FPU_IM, align 1, !mcsema_real_eip !7
  %149 = load i64, i64* %53, align 4
  store i64 %149, i64* %52, align 4
  %150 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !7
  store i16 %150, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !7
  %151 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !7
  store i64 %151, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !7
  %152 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !7
  store i16 %152, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !7
  %153 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !7
  store i64 %153, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !7
  %154 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !7
  store i11 %154, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !7
  %155 = load i128, i128* %XMM0_val, !mcsema_real_eip !7
  store i128 %155, i128* %XMM0, align 1, !mcsema_real_eip !7
  %156 = load i128, i128* %XMM1_val, !mcsema_real_eip !7
  store i128 %156, i128* %XMM1, align 1, !mcsema_real_eip !7
  %157 = load i128, i128* %XMM2_val, !mcsema_real_eip !7
  store i128 %157, i128* %XMM2, align 1, !mcsema_real_eip !7
  %158 = load i128, i128* %XMM3_val, !mcsema_real_eip !7
  store i128 %158, i128* %XMM3, align 1, !mcsema_real_eip !7
  %159 = load i128, i128* %XMM4_val, !mcsema_real_eip !7
  store i128 %159, i128* %XMM4, align 1, !mcsema_real_eip !7
  %160 = load i128, i128* %XMM5_val, !mcsema_real_eip !7
  store i128 %160, i128* %XMM5, align 1, !mcsema_real_eip !7
  %161 = load i128, i128* %XMM6_val, !mcsema_real_eip !7
  store i128 %161, i128* %XMM6, align 1, !mcsema_real_eip !7
  %162 = load i128, i128* %XMM7_val, !mcsema_real_eip !7
  store i128 %162, i128* %XMM7, align 1, !mcsema_real_eip !7
  %163 = load i128, i128* %XMM8_val, !mcsema_real_eip !7
  store i128 %163, i128* %XMM8, align 1, !mcsema_real_eip !7
  %164 = load i128, i128* %XMM9_val, !mcsema_real_eip !7
  store i128 %164, i128* %XMM9, align 1, !mcsema_real_eip !7
  %165 = load i128, i128* %XMM10_val, !mcsema_real_eip !7
  store i128 %165, i128* %XMM10, align 1, !mcsema_real_eip !7
  %166 = load i128, i128* %XMM11_val, !mcsema_real_eip !7
  store i128 %166, i128* %XMM11, align 1, !mcsema_real_eip !7
  %167 = load i128, i128* %XMM12_val, !mcsema_real_eip !7
  store i128 %167, i128* %XMM12, align 1, !mcsema_real_eip !7
  %168 = load i128, i128* %XMM13_val, !mcsema_real_eip !7
  store i128 %168, i128* %XMM13, align 1, !mcsema_real_eip !7
  %169 = load i128, i128* %XMM14_val, !mcsema_real_eip !7
  store i128 %169, i128* %XMM14, align 1, !mcsema_real_eip !7
  %170 = load i128, i128* %XMM15_val, !mcsema_real_eip !7
  store i128 %170, i128* %XMM15, align 1, !mcsema_real_eip !7
  %171 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !7
  store i64 %171, i64* %STACK_BASE, align 1, !mcsema_real_eip !7
  %172 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !7
  store i64 %172, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !7
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !7
  %173 = load i64, i64* %RAX, !mcsema_real_eip !7
  store i64 %173, i64* %RAX_val, !mcsema_real_eip !7
  %174 = load i64, i64* %RBX, !mcsema_real_eip !7
  store i64 %174, i64* %RBX_val, !mcsema_real_eip !7
  %175 = load i64, i64* %RCX, !mcsema_real_eip !7
  store i64 %175, i64* %RCX_val, !mcsema_real_eip !7
  %176 = load i64, i64* %RDX, !mcsema_real_eip !7
  store i64 %176, i64* %RDX_val, !mcsema_real_eip !7
  %177 = load i64, i64* %RSI, !mcsema_real_eip !7
  store i64 %177, i64* %RSI_val, !mcsema_real_eip !7
  %178 = load i64, i64* %RDI, !mcsema_real_eip !7
  store i64 %178, i64* %RDI_val, !mcsema_real_eip !7
  %179 = load i64, i64* %RSP, !mcsema_real_eip !7
  store i64 %179, i64* %RSP_val, !mcsema_real_eip !7
  %180 = load i64, i64* %RBP, !mcsema_real_eip !7
  store i64 %180, i64* %RBP_val, !mcsema_real_eip !7
  %181 = load i64, i64* %R8, !mcsema_real_eip !7
  store i64 %181, i64* %R8_val, !mcsema_real_eip !7
  %182 = load i64, i64* %R9, !mcsema_real_eip !7
  store i64 %182, i64* %R9_val, !mcsema_real_eip !7
  %183 = load i64, i64* %R10, !mcsema_real_eip !7
  store i64 %183, i64* %R10_val, !mcsema_real_eip !7
  %184 = load i64, i64* %R11, !mcsema_real_eip !7
  store i64 %184, i64* %R11_val, !mcsema_real_eip !7
  %185 = load i64, i64* %R12, !mcsema_real_eip !7
  store i64 %185, i64* %R12_val, !mcsema_real_eip !7
  %186 = load i64, i64* %R13, !mcsema_real_eip !7
  store i64 %186, i64* %R13_val, !mcsema_real_eip !7
  %187 = load i64, i64* %R14, !mcsema_real_eip !7
  store i64 %187, i64* %R14_val, !mcsema_real_eip !7
  %188 = load i64, i64* %R15, !mcsema_real_eip !7
  store i64 %188, i64* %R15_val, !mcsema_real_eip !7
  %189 = load i64, i64* %RIP, !mcsema_real_eip !7
  store i64 %189, i64* %RIP_val, !mcsema_real_eip !7
  %190 = load i1, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %190, i1* %CF_val, !mcsema_real_eip !7
  %191 = load i1, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %191, i1* %PF_val, !mcsema_real_eip !7
  %192 = load i1, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %192, i1* %AF_val, !mcsema_real_eip !7
  %193 = load i1, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %193, i1* %ZF_val, !mcsema_real_eip !7
  %194 = load i1, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %194, i1* %SF_val, !mcsema_real_eip !7
  %195 = load i1, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %195, i1* %OF_val, !mcsema_real_eip !7
  %196 = load i1, i1* %DF, align 1, !mcsema_real_eip !7
  store i1 %196, i1* %DF_val, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !7
  %197 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !7
  store i1 %197, i1* %FPU_B_val, !mcsema_real_eip !7
  %198 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !7
  store i1 %198, i1* %FPU_C3_val, !mcsema_real_eip !7
  %199 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !7
  store i3 %199, i3* %FPU_TOP_val, !mcsema_real_eip !7
  %200 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !7
  store i1 %200, i1* %FPU_C2_val, !mcsema_real_eip !7
  %201 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !7
  store i1 %201, i1* %FPU_C1_val, !mcsema_real_eip !7
  %202 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !7
  store i1 %202, i1* %FPU_C0_val, !mcsema_real_eip !7
  %203 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !7
  store i1 %203, i1* %FPU_ES_val, !mcsema_real_eip !7
  %204 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !7
  store i1 %204, i1* %FPU_SF_val, !mcsema_real_eip !7
  %205 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !7
  store i1 %205, i1* %FPU_PE_val, !mcsema_real_eip !7
  %206 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !7
  store i1 %206, i1* %FPU_UE_val, !mcsema_real_eip !7
  %207 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !7
  store i1 %207, i1* %FPU_OE_val, !mcsema_real_eip !7
  %208 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !7
  store i1 %208, i1* %FPU_ZE_val, !mcsema_real_eip !7
  %209 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !7
  store i1 %209, i1* %FPU_DE_val, !mcsema_real_eip !7
  %210 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !7
  store i1 %210, i1* %FPU_IE_val, !mcsema_real_eip !7
  %211 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !7
  store i1 %211, i1* %FPU_X_val, !mcsema_real_eip !7
  %212 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !7
  store i2 %212, i2* %FPU_RC_val, !mcsema_real_eip !7
  %213 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !7
  store i2 %213, i2* %FPU_PC_val, !mcsema_real_eip !7
  %214 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !7
  store i1 %214, i1* %FPU_PM_val, !mcsema_real_eip !7
  %215 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !7
  store i1 %215, i1* %FPU_UM_val, !mcsema_real_eip !7
  %216 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !7
  store i1 %216, i1* %FPU_OM_val, !mcsema_real_eip !7
  %217 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !7
  store i1 %217, i1* %FPU_ZM_val, !mcsema_real_eip !7
  %218 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !7
  store i1 %218, i1* %FPU_DM_val, !mcsema_real_eip !7
  %219 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !7
  store i1 %219, i1* %FPU_IM_val, !mcsema_real_eip !7
  %220 = load i64, i64* %52, align 4
  store i64 %220, i64* %53, align 4
  %221 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !7
  store i16 %221, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !7
  %222 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !7
  store i64 %222, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !7
  %223 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !7
  store i16 %223, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !7
  %224 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !7
  store i64 %224, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !7
  %225 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !7
  store i11 %225, i11* %FPU_FOPCODE_val, !mcsema_real_eip !7
  %226 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %226, i128* %XMM0_val, !mcsema_real_eip !7
  %227 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %227, i128* %XMM1_val, !mcsema_real_eip !7
  %228 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %228, i128* %XMM2_val, !mcsema_real_eip !7
  %229 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %229, i128* %XMM3_val, !mcsema_real_eip !7
  %230 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %230, i128* %XMM4_val, !mcsema_real_eip !7
  %231 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %231, i128* %XMM5_val, !mcsema_real_eip !7
  %232 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %232, i128* %XMM6_val, !mcsema_real_eip !7
  %233 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %233, i128* %XMM7_val, !mcsema_real_eip !7
  %234 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %234, i128* %XMM8_val, !mcsema_real_eip !7
  %235 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %235, i128* %XMM9_val, !mcsema_real_eip !7
  %236 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %236, i128* %XMM10_val, !mcsema_real_eip !7
  %237 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %237, i128* %XMM11_val, !mcsema_real_eip !7
  %238 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %238, i128* %XMM12_val, !mcsema_real_eip !7
  %239 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %239, i128* %XMM13_val, !mcsema_real_eip !7
  %240 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %240, i128* %XMM14_val, !mcsema_real_eip !7
  %241 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !7
  store i128 %241, i128* %XMM15_val, !mcsema_real_eip !7
  %242 = load i64, i64* %STACK_BASE, !mcsema_real_eip !7
  store i64 %242, i64* %STACK_BASE_val, !mcsema_real_eip !7
  %243 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !7
  store i64 %243, i64* %STACK_LIMIT_val, !mcsema_real_eip !7
  store i64 ptrtoint (%0* @data_0xb1 to i64), i64* %RDI_val, !mcsema_real_eip !8
  %244 = load i64, i64* %RAX_val, !mcsema_real_eip !9
  %245 = and i64 %244, 4294967295
  store i64 %245, i64* %RSI_val, !mcsema_real_eip !9
  %246 = and i64 %244, -256, !mcsema_real_eip !10
  store i64 %246, i64* %RAX_val, !mcsema_real_eip !10
  %247 = load i64, i64* %RDX_val, !mcsema_real_eip !11
  %248 = load i64, i64* %RCX_val, !mcsema_real_eip !11
  %249 = load i64, i64* %R8_val, !mcsema_real_eip !11
  %250 = load i64, i64* %R9_val, !mcsema_real_eip !11
  %251 = load i64, i64* %RSP_val, !mcsema_real_eip !11
  %252 = inttoptr i64 %251 to i64*, !mcsema_real_eip !11
  %253 = load i64, i64* %252, !mcsema_real_eip !11
  %254 = add i64 %251, 8, !mcsema_real_eip !11
  %255 = inttoptr i64 %254 to i64*, !mcsema_real_eip !11
  %256 = load i64, i64* %255, !mcsema_real_eip !11
  %257 = add i64 %251, 16, !mcsema_real_eip !11
  %258 = inttoptr i64 %257 to i64*, !mcsema_real_eip !11
  %259 = load i64, i64* %258, !mcsema_real_eip !11
  %260 = add i64 %251, 24, !mcsema_real_eip !11
  %261 = inttoptr i64 %260 to i64*, !mcsema_real_eip !11
  %262 = load i64, i64* %261, !mcsema_real_eip !11
  %263 = add i64 %251, 32, !mcsema_real_eip !11
  %264 = inttoptr i64 %263 to i64*, !mcsema_real_eip !11
  %265 = load i64, i64* %264, !mcsema_real_eip !11
  %266 = add i64 %251, 40, !mcsema_real_eip !11
  %267 = inttoptr i64 %266 to i64*, !mcsema_real_eip !11
  %268 = load i64, i64* %267, !mcsema_real_eip !11
  %269 = tail call x86_64_sysvcc i64 @printf(i64 ptrtoint (%0* @data_0xb1 to i64), i64 %245, i64 %247, i64 %248, i64 %249, i64 %250, i64 %253, i64 %256, i64 %259, i64 %262, i64 %265, i64 %268), !mcsema_real_eip !11
  store i64 0, i64* %RSI_val, !mcsema_real_eip !12
  %270 = load i64, i64* %RBP_val, !mcsema_real_eip !13
  %271 = add i64 %270, -8, !mcsema_real_eip !13
  %272 = inttoptr i64 %271 to i64*, !mcsema_real_eip !13
  %273 = trunc i64 %269 to i32, !mcsema_real_eip !13
  %274 = bitcast i64* %272 to i32*
  store i32 %273, i32* %274, !mcsema_real_eip !13
  %275 = load i64, i64* %RSI_val, !mcsema_real_eip !14
  %276 = and i64 %275, 4294967295
  store i64 %276, i64* %RAX_val, !mcsema_real_eip !14
  %277 = load i64, i64* %RSP_val, !mcsema_real_eip !15
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %277, i64 16)
  %278 = extractvalue { i64, i1 } %uadd, 0
  %279 = xor i64 %278, %277, !mcsema_real_eip !15
  %280 = and i64 %279, 16
  %281 = icmp eq i64 %280, 0
  store i1 %281, i1* %AF_val, !mcsema_real_eip !15
  %282 = icmp slt i64 %278, 0
  store i1 %282, i1* %SF_val, !mcsema_real_eip !15
  %283 = icmp eq i64 %278, 0, !mcsema_real_eip !15
  store i1 %283, i1* %ZF_val, !mcsema_real_eip !15
  %284 = xor i64 %277, -9223372036854775808, !mcsema_real_eip !15
  %285 = and i64 %279, %284, !mcsema_real_eip !15
  %286 = icmp slt i64 %285, 0
  store i1 %286, i1* %OF_val, !mcsema_real_eip !15
  %287 = trunc i64 %278 to i8, !mcsema_real_eip !15
  %288 = tail call i8 @llvm.ctpop.i8(i8 %287), !mcsema_real_eip !15
  %289 = and i8 %288, 1
  %290 = icmp eq i8 %289, 0
  store i1 %290, i1* %PF_val, !mcsema_real_eip !15
  %291 = extractvalue { i64, i1 } %uadd, 1
  store i1 %291, i1* %CF_val, !mcsema_real_eip !15
  store i64 %278, i64* %RSP_val, !mcsema_real_eip !15
  %292 = inttoptr i64 %278 to i64*, !mcsema_real_eip !16
  %293 = load i64, i64* %292, !mcsema_real_eip !16
  store i64 %293, i64* %RBP_val, !mcsema_real_eip !16
  %294 = add i64 %278, 16, !mcsema_real_eip !17
  store i64 %294, i64* %RSP_val, !mcsema_real_eip !17
  %295 = load i64, i64* %RAX_val, !mcsema_real_eip !17
  store i64 %295, i64* %RAX, !mcsema_real_eip !17
  %296 = load i64, i64* %RBX_val, !mcsema_real_eip !17
  store i64 %296, i64* %RBX, !mcsema_real_eip !17
  %297 = load i64, i64* %RCX_val, !mcsema_real_eip !17
  store i64 %297, i64* %RCX, !mcsema_real_eip !17
  %298 = load i64, i64* %RDX_val, !mcsema_real_eip !17
  store i64 %298, i64* %RDX, !mcsema_real_eip !17
  %299 = load i64, i64* %RSI_val, !mcsema_real_eip !17
  store i64 %299, i64* %RSI, !mcsema_real_eip !17
  %300 = load i64, i64* %RDI_val, !mcsema_real_eip !17
  store i64 %300, i64* %RDI, !mcsema_real_eip !17
  %301 = load i64, i64* %RSP_val, !mcsema_real_eip !17
  store i64 %301, i64* %RSP, !mcsema_real_eip !17
  %302 = load i64, i64* %RBP_val, !mcsema_real_eip !17
  store i64 %302, i64* %RBP, !mcsema_real_eip !17
  %303 = load i64, i64* %R8_val, !mcsema_real_eip !17
  store i64 %303, i64* %R8, !mcsema_real_eip !17
  %304 = load i64, i64* %R9_val, !mcsema_real_eip !17
  store i64 %304, i64* %R9, !mcsema_real_eip !17
  %305 = load i64, i64* %R10_val, !mcsema_real_eip !17
  store i64 %305, i64* %R10, !mcsema_real_eip !17
  %306 = load i64, i64* %R11_val, !mcsema_real_eip !17
  store i64 %306, i64* %R11, !mcsema_real_eip !17
  %307 = load i64, i64* %R12_val, !mcsema_real_eip !17
  store i64 %307, i64* %R12, !mcsema_real_eip !17
  %308 = load i64, i64* %R13_val, !mcsema_real_eip !17
  store i64 %308, i64* %R13, !mcsema_real_eip !17
  %309 = load i64, i64* %R14_val, !mcsema_real_eip !17
  store i64 %309, i64* %R14, !mcsema_real_eip !17
  %310 = load i64, i64* %R15_val, !mcsema_real_eip !17
  store i64 %310, i64* %R15, !mcsema_real_eip !17
  %311 = load i64, i64* %RIP_val, !mcsema_real_eip !17
  store i64 %311, i64* %RIP, !mcsema_real_eip !17
  %312 = load i1, i1* %CF_val, !mcsema_real_eip !17
  store i1 %312, i1* %CF, align 1, !mcsema_real_eip !17
  %313 = load i1, i1* %PF_val, !mcsema_real_eip !17
  store i1 %313, i1* %PF, align 1, !mcsema_real_eip !17
  %314 = load i1, i1* %AF_val, !mcsema_real_eip !17
  store i1 %314, i1* %AF, align 1, !mcsema_real_eip !17
  %315 = load i1, i1* %ZF_val, !mcsema_real_eip !17
  store i1 %315, i1* %ZF, align 1, !mcsema_real_eip !17
  %316 = load i1, i1* %SF_val, !mcsema_real_eip !17
  store i1 %316, i1* %SF, align 1, !mcsema_real_eip !17
  %317 = load i1, i1* %OF_val, !mcsema_real_eip !17
  store i1 %317, i1* %OF, align 1, !mcsema_real_eip !17
  %318 = load i1, i1* %DF_val, !mcsema_real_eip !17
  store i1 %318, i1* %DF, align 1, !mcsema_real_eip !17
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !17
  %319 = load i1, i1* %FPU_B_val, !mcsema_real_eip !17
  store i1 %319, i1* %FPU_B, align 1, !mcsema_real_eip !17
  %320 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !17
  store i1 %320, i1* %FPU_C3, align 1, !mcsema_real_eip !17
  %321 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !17
  store i3 %321, i3* %FPU_TOP, align 1, !mcsema_real_eip !17
  %322 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !17
  store i1 %322, i1* %FPU_C2, align 1, !mcsema_real_eip !17
  %323 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !17
  store i1 %323, i1* %FPU_C1, align 1, !mcsema_real_eip !17
  %324 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !17
  store i1 %324, i1* %FPU_C0, align 1, !mcsema_real_eip !17
  %325 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !17
  store i1 %325, i1* %FPU_ES, align 1, !mcsema_real_eip !17
  %326 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !17
  store i1 %326, i1* %FPU_SF, align 1, !mcsema_real_eip !17
  %327 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !17
  store i1 %327, i1* %FPU_PE, align 1, !mcsema_real_eip !17
  %328 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !17
  store i1 %328, i1* %FPU_UE, align 1, !mcsema_real_eip !17
  %329 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !17
  store i1 %329, i1* %FPU_OE, align 1, !mcsema_real_eip !17
  %330 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !17
  store i1 %330, i1* %FPU_ZE, align 1, !mcsema_real_eip !17
  %331 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !17
  store i1 %331, i1* %FPU_DE, align 1, !mcsema_real_eip !17
  %332 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !17
  store i1 %332, i1* %FPU_IE, align 1, !mcsema_real_eip !17
  %333 = load i1, i1* %FPU_X_val, !mcsema_real_eip !17
  store i1 %333, i1* %FPU_X, align 1, !mcsema_real_eip !17
  %334 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !17
  store i2 %334, i2* %FPU_RC, align 1, !mcsema_real_eip !17
  %335 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !17
  store i2 %335, i2* %FPU_PC, align 1, !mcsema_real_eip !17
  %336 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !17
  store i1 %336, i1* %FPU_PM, align 1, !mcsema_real_eip !17
  %337 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !17
  store i1 %337, i1* %FPU_UM, align 1, !mcsema_real_eip !17
  %338 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !17
  store i1 %338, i1* %FPU_OM, align 1, !mcsema_real_eip !17
  %339 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !17
  store i1 %339, i1* %FPU_ZM, align 1, !mcsema_real_eip !17
  %340 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !17
  store i1 %340, i1* %FPU_DM, align 1, !mcsema_real_eip !17
  %341 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !17
  store i1 %341, i1* %FPU_IM, align 1, !mcsema_real_eip !17
  %342 = load i64, i64* %53, align 4
  store i64 %342, i64* %52, align 4
  %343 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !17
  store i16 %343, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !17
  %344 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !17
  store i64 %344, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !17
  %345 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !17
  store i16 %345, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !17
  %346 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !17
  store i64 %346, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !17
  %347 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !17
  store i11 %347, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !17
  %348 = load i128, i128* %XMM0_val, !mcsema_real_eip !17
  store i128 %348, i128* %XMM0, align 1, !mcsema_real_eip !17
  %349 = load i128, i128* %XMM1_val, !mcsema_real_eip !17
  store i128 %349, i128* %XMM1, align 1, !mcsema_real_eip !17
  %350 = load i128, i128* %XMM2_val, !mcsema_real_eip !17
  store i128 %350, i128* %XMM2, align 1, !mcsema_real_eip !17
  %351 = load i128, i128* %XMM3_val, !mcsema_real_eip !17
  store i128 %351, i128* %XMM3, align 1, !mcsema_real_eip !17
  %352 = load i128, i128* %XMM4_val, !mcsema_real_eip !17
  store i128 %352, i128* %XMM4, align 1, !mcsema_real_eip !17
  %353 = load i128, i128* %XMM5_val, !mcsema_real_eip !17
  store i128 %353, i128* %XMM5, align 1, !mcsema_real_eip !17
  %354 = load i128, i128* %XMM6_val, !mcsema_real_eip !17
  store i128 %354, i128* %XMM6, align 1, !mcsema_real_eip !17
  %355 = load i128, i128* %XMM7_val, !mcsema_real_eip !17
  store i128 %355, i128* %XMM7, align 1, !mcsema_real_eip !17
  %356 = load i128, i128* %XMM8_val, !mcsema_real_eip !17
  store i128 %356, i128* %XMM8, align 1, !mcsema_real_eip !17
  %357 = load i128, i128* %XMM9_val, !mcsema_real_eip !17
  store i128 %357, i128* %XMM9, align 1, !mcsema_real_eip !17
  %358 = load i128, i128* %XMM10_val, !mcsema_real_eip !17
  store i128 %358, i128* %XMM10, align 1, !mcsema_real_eip !17
  %359 = load i128, i128* %XMM11_val, !mcsema_real_eip !17
  store i128 %359, i128* %XMM11, align 1, !mcsema_real_eip !17
  %360 = load i128, i128* %XMM12_val, !mcsema_real_eip !17
  store i128 %360, i128* %XMM12, align 1, !mcsema_real_eip !17
  %361 = load i128, i128* %XMM13_val, !mcsema_real_eip !17
  store i128 %361, i128* %XMM13, align 1, !mcsema_real_eip !17
  %362 = load i128, i128* %XMM14_val, !mcsema_real_eip !17
  store i128 %362, i128* %XMM14, align 1, !mcsema_real_eip !17
  %363 = load i128, i128* %XMM15_val, !mcsema_real_eip !17
  store i128 %363, i128* %XMM15, align 1, !mcsema_real_eip !17
  %364 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !17
  store i64 %364, i64* %STACK_BASE, align 1, !mcsema_real_eip !17
  %365 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !17
  store i64 %365, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !17
  ret void, !mcsema_real_eip !17
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !18
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !18
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !18
  %XMM15_val = alloca i128, !mcsema_real_eip !18
  %XMM14_val = alloca i128, !mcsema_real_eip !18
  %XMM13_val = alloca i128, !mcsema_real_eip !18
  %XMM12_val = alloca i128, !mcsema_real_eip !18
  %XMM11_val = alloca i128, !mcsema_real_eip !18
  %XMM10_val = alloca i128, !mcsema_real_eip !18
  %XMM9_val = alloca i128, !mcsema_real_eip !18
  %XMM8_val = alloca i128, !mcsema_real_eip !18
  %XMM7_val = alloca i128, !mcsema_real_eip !18
  %XMM6_val = alloca i128, !mcsema_real_eip !18
  %XMM5_val = alloca i128, !mcsema_real_eip !18
  %XMM4_val = alloca i128, !mcsema_real_eip !18
  %XMM3_val = alloca i128, !mcsema_real_eip !18
  %XMM2_val = alloca i128, !mcsema_real_eip !18
  %XMM1_val = alloca i128, !mcsema_real_eip !18
  %XMM0_val = alloca i128, !mcsema_real_eip !18
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !18
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !18
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !18
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !18
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !18
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !18
  %FPU_IM_val = alloca i1, !mcsema_real_eip !18
  %FPU_DM_val = alloca i1, !mcsema_real_eip !18
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !18
  %FPU_OM_val = alloca i1, !mcsema_real_eip !18
  %FPU_UM_val = alloca i1, !mcsema_real_eip !18
  %FPU_PM_val = alloca i1, !mcsema_real_eip !18
  %FPU_PC_val = alloca i2, !mcsema_real_eip !18
  %FPU_RC_val = alloca i2, !mcsema_real_eip !18
  %FPU_X_val = alloca i1, !mcsema_real_eip !18
  %FPU_IE_val = alloca i1, !mcsema_real_eip !18
  %FPU_DE_val = alloca i1, !mcsema_real_eip !18
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !18
  %FPU_OE_val = alloca i1, !mcsema_real_eip !18
  %FPU_UE_val = alloca i1, !mcsema_real_eip !18
  %FPU_PE_val = alloca i1, !mcsema_real_eip !18
  %FPU_SF_val = alloca i1, !mcsema_real_eip !18
  %FPU_ES_val = alloca i1, !mcsema_real_eip !18
  %FPU_C0_val = alloca i1, !mcsema_real_eip !18
  %FPU_C1_val = alloca i1, !mcsema_real_eip !18
  %FPU_C2_val = alloca i1, !mcsema_real_eip !18
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !18
  %FPU_C3_val = alloca i1, !mcsema_real_eip !18
  %FPU_B_val = alloca i1, !mcsema_real_eip !18
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !18
  %DF_val = alloca i1, !mcsema_real_eip !18
  %OF_val = alloca i1, !mcsema_real_eip !18
  %SF_val = alloca i1, !mcsema_real_eip !18
  %CF_val = alloca i1, !mcsema_real_eip !18
  %AF_val = alloca i1, !mcsema_real_eip !18
  %PF_val = alloca i1, !mcsema_real_eip !18
  %ZF_val = alloca i1, !mcsema_real_eip !18
  %RIP_val = alloca i64, !mcsema_real_eip !18
  %R14_val = alloca i64, !mcsema_real_eip !18
  %R13_val = alloca i64, !mcsema_real_eip !18
  %R12_val = alloca i64, !mcsema_real_eip !18
  %R11_val = alloca i64, !mcsema_real_eip !18
  %R10_val = alloca i64, !mcsema_real_eip !18
  %R9_val = alloca i64, !mcsema_real_eip !18
  %R8_val = alloca i64, !mcsema_real_eip !18
  %RSP_val = alloca i64, !mcsema_real_eip !18
  %RBP_val = alloca i64, !mcsema_real_eip !18
  %RDI_val = alloca i64, !mcsema_real_eip !18
  %RSI_val = alloca i64, !mcsema_real_eip !18
  %RDX_val = alloca i64, !mcsema_real_eip !18
  %RCX_val = alloca i64, !mcsema_real_eip !18
  %RBX_val = alloca i64, !mcsema_real_eip !18
  %RAX_val = alloca i64, !mcsema_real_eip !18
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !18
  %1 = load i64, i64* %RAX, !mcsema_real_eip !18
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !18
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !18
  %2 = load i64, i64* %RBX, !mcsema_real_eip !18
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !18
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !18
  %3 = load i64, i64* %RCX, !mcsema_real_eip !18
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !18
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !18
  %4 = load i64, i64* %RDX, !mcsema_real_eip !18
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !18
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !18
  %5 = load i64, i64* %RSI, !mcsema_real_eip !18
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !18
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !18
  %6 = load i64, i64* %RDI, !mcsema_real_eip !18
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !18
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !18
  %7 = load i64, i64* %RSP, !mcsema_real_eip !18
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !18
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !18
  %8 = load i64, i64* %RBP, !mcsema_real_eip !18
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !18
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !18
  %9 = load i64, i64* %R8, !mcsema_real_eip !18
  store i64 %9, i64* %R8_val, !mcsema_real_eip !18
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !18
  %10 = load i64, i64* %R9, !mcsema_real_eip !18
  store i64 %10, i64* %R9_val, !mcsema_real_eip !18
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !18
  %11 = load i64, i64* %R10, !mcsema_real_eip !18
  store i64 %11, i64* %R10_val, !mcsema_real_eip !18
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !18
  %12 = load i64, i64* %R11, !mcsema_real_eip !18
  store i64 %12, i64* %R11_val, !mcsema_real_eip !18
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !18
  %13 = load i64, i64* %R12, !mcsema_real_eip !18
  store i64 %13, i64* %R12_val, !mcsema_real_eip !18
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !18
  %14 = load i64, i64* %R13, !mcsema_real_eip !18
  store i64 %14, i64* %R13_val, !mcsema_real_eip !18
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !18
  %15 = load i64, i64* %R14, !mcsema_real_eip !18
  store i64 %15, i64* %R14_val, !mcsema_real_eip !18
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !18
  %16 = load i64, i64* %R15, !mcsema_real_eip !18
  store i64 %16, i64* %R15_val, !mcsema_real_eip !18
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !18
  %17 = load i64, i64* %RIP, !mcsema_real_eip !18
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !18
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !18
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !18
  store i1 %18, i1* %CF_val, !mcsema_real_eip !18
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !18
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !18
  store i1 %19, i1* %PF_val, !mcsema_real_eip !18
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !18
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !18
  store i1 %20, i1* %AF_val, !mcsema_real_eip !18
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !18
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !18
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !18
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !18
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !18
  store i1 %22, i1* %SF_val, !mcsema_real_eip !18
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !18
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !18
  store i1 %23, i1* %OF_val, !mcsema_real_eip !18
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !18
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !18
  store i1 %24, i1* %DF_val, !mcsema_real_eip !18
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !18
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !18
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !18
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !18
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !18
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !18
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !18
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !18
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !18
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !18
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !18
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !18
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !18
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !18
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !18
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !18
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !18
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !18
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !18
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !18
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !18
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !18
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !18
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !18
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !18
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !18
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !18
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !18
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !18
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !18
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !18
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !18
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !18
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !18
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !18
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !18
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !18
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !18
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !18
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !18
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !18
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !18
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !18
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !18
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !18
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !18
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !18
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !18
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !18
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !18
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !18
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !18
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !18
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !18
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !18
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !18
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !18
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !18
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !18
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !18
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !18
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !18
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !18
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !18
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !18
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !18
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !18
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !18
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !18
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !18
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !18
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !18
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !18
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !18
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !18
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !18
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !18
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !18
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !18
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !18
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !18
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !18
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !18
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !18
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !18
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !18
  %59 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !18
  store i11 %59, i11* %FPU_FOPCODE_val, !mcsema_real_eip !18
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !18
  %60 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !18
  store i128 %60, i128* %XMM0_val, !mcsema_real_eip !18
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !18
  %61 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !18
  store i128 %61, i128* %XMM1_val, !mcsema_real_eip !18
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !18
  %62 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !18
  store i128 %62, i128* %XMM2_val, !mcsema_real_eip !18
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !18
  %63 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !18
  store i128 %63, i128* %XMM3_val, !mcsema_real_eip !18
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !18
  %64 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !18
  store i128 %64, i128* %XMM4_val, !mcsema_real_eip !18
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !18
  %65 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !18
  store i128 %65, i128* %XMM5_val, !mcsema_real_eip !18
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !18
  %66 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !18
  store i128 %66, i128* %XMM6_val, !mcsema_real_eip !18
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !18
  %67 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !18
  store i128 %67, i128* %XMM7_val, !mcsema_real_eip !18
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !18
  %68 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !18
  store i128 %68, i128* %XMM8_val, !mcsema_real_eip !18
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !18
  %69 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !18
  store i128 %69, i128* %XMM9_val, !mcsema_real_eip !18
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !18
  %70 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !18
  store i128 %70, i128* %XMM10_val, !mcsema_real_eip !18
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !18
  %71 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !18
  store i128 %71, i128* %XMM11_val, !mcsema_real_eip !18
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !18
  %72 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !18
  store i128 %72, i128* %XMM12_val, !mcsema_real_eip !18
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !18
  %73 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !18
  store i128 %73, i128* %XMM13_val, !mcsema_real_eip !18
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !18
  %74 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !18
  store i128 %74, i128* %XMM14_val, !mcsema_real_eip !18
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !18
  %75 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !18
  store i128 %75, i128* %XMM15_val, !mcsema_real_eip !18
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !18
  %76 = load i64, i64* %STACK_BASE, !mcsema_real_eip !18
  store i64 %76, i64* %STACK_BASE_val, !mcsema_real_eip !18
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !18
  %77 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !18
  store i64 %77, i64* %STACK_LIMIT_val, !mcsema_real_eip !18
  %78 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  %79 = load i64, i64* %RSP_val, !mcsema_real_eip !18
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !18
  store i64 %78, i64* %81, !mcsema_real_eip !18
  store i64 %80, i64* %RBP_val, !mcsema_real_eip !19
  %82 = add i64 %79, -24
  %83 = xor i64 %82, %80, !mcsema_real_eip !20
  %84 = and i64 %83, 16
  %85 = icmp eq i64 %84, 0
  store i1 %85, i1* %AF_val, !mcsema_real_eip !20
  %86 = trunc i64 %82 to i8, !mcsema_real_eip !20
  %87 = tail call i8 @llvm.ctpop.i8(i8 %86), !mcsema_real_eip !20
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  store i1 %89, i1* %PF_val, !mcsema_real_eip !20
  %90 = icmp eq i64 %82, 0, !mcsema_real_eip !20
  store i1 %90, i1* %ZF_val, !mcsema_real_eip !20
  %91 = icmp slt i64 %82, 0
  store i1 %91, i1* %SF_val, !mcsema_real_eip !20
  %92 = icmp ult i64 %80, 16, !mcsema_real_eip !20
  store i1 %92, i1* %CF_val, !mcsema_real_eip !20
  %93 = and i64 %83, %80, !mcsema_real_eip !20
  %94 = icmp slt i64 %93, 0
  store i1 %94, i1* %OF_val, !mcsema_real_eip !20
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !20
  store i64 1, i64* %RAX_val, !mcsema_real_eip !21
  %95 = load i64, i64* %RBP_val, !mcsema_real_eip !22
  %96 = add i64 %95, -8, !mcsema_real_eip !22
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !22
  %98 = load i64, i64* %RDI_val, !mcsema_real_eip !22
  %99 = trunc i64 %98 to i32, !mcsema_real_eip !22
  %100 = bitcast i64* %97 to i32*
  store i32 %99, i32* %100, !mcsema_real_eip !22
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !23
  %102 = add i64 %101, -8, !mcsema_real_eip !23
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !23
  %104 = load i64, i64* %RAX_val, !mcsema_real_eip !23
  %105 = trunc i64 %104 to i32, !mcsema_real_eip !23
  %106 = bitcast i64* %103 to i32*
  %107 = load i32, i32* %106, !mcsema_real_eip !23
  %108 = sub i32 %105, %107, !mcsema_real_eip !23
  %109 = xor i32 %108, %105, !mcsema_real_eip !23
  %110 = xor i32 %109, %107, !mcsema_real_eip !23
  %111 = and i32 %110, 16, !mcsema_real_eip !23
  %112 = icmp ne i32 %111, 0, !mcsema_real_eip !23
  store i1 %112, i1* %AF_val, !mcsema_real_eip !23
  %113 = trunc i32 %108 to i8, !mcsema_real_eip !23
  %114 = tail call i8 @llvm.ctpop.i8(i8 %113), !mcsema_real_eip !23
  %115 = and i8 %114, 1
  %116 = icmp eq i8 %115, 0
  store i1 %116, i1* %PF_val, !mcsema_real_eip !23
  %117 = icmp eq i32 %105, %107
  store i1 %117, i1* %ZF_val, !mcsema_real_eip !23
  %118 = icmp slt i32 %108, 0
  store i1 %118, i1* %SF_val, !mcsema_real_eip !23
  %119 = icmp ult i32 %105, %107, !mcsema_real_eip !23
  store i1 %119, i1* %CF_val, !mcsema_real_eip !23
  %120 = xor i32 %105, %107, !mcsema_real_eip !23
  %121 = and i32 %109, %120, !mcsema_real_eip !23
  %122 = icmp slt i32 %121, 0
  store i1 %122, i1* %OF_val, !mcsema_real_eip !23
  %123 = load i1, i1* %ZF_val, !mcsema_real_eip !24
  br i1 %123, label %block_0x27, label %block_0x19, !mcsema_real_eip !24

block_0x19:                                       ; preds = %entry
  store i64 0, i64* %RAX_val, !mcsema_real_eip !25
  %124 = load i64, i64* %RBP_val, !mcsema_real_eip !26
  %125 = add i64 %124, -8, !mcsema_real_eip !26
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !26
  %127 = bitcast i64* %126 to i32*
  %128 = load i32, i32* %127, !mcsema_real_eip !26
  %129 = sub i32 0, %128, !mcsema_real_eip !26
  %130 = xor i32 %128, %129, !mcsema_real_eip !26
  %131 = and i32 %130, 16, !mcsema_real_eip !26
  %132 = icmp ne i32 %131, 0, !mcsema_real_eip !26
  store i1 %132, i1* %AF_val, !mcsema_real_eip !26
  %133 = trunc i32 %129 to i8, !mcsema_real_eip !26
  %134 = tail call i8 @llvm.ctpop.i8(i8 %133), !mcsema_real_eip !26
  %135 = and i8 %134, 1
  %136 = icmp eq i8 %135, 0
  store i1 %136, i1* %PF_val, !mcsema_real_eip !26
  %137 = icmp eq i32 %128, 0
  store i1 %137, i1* %ZF_val, !mcsema_real_eip !26
  %138 = icmp slt i32 %129, 0
  store i1 %138, i1* %SF_val, !mcsema_real_eip !26
  %139 = icmp ne i32 %128, 0
  store i1 %139, i1* %CF_val, !mcsema_real_eip !26
  %140 = and i32 %128, %129, !mcsema_real_eip !26
  %141 = icmp slt i32 %140, 0
  store i1 %141, i1* %OF_val, !mcsema_real_eip !26
  %142 = load i1, i1* %ZF_val, !mcsema_real_eip !27
  br i1 %142, label %block_0x27, label %block_0x33, !mcsema_real_eip !27

block_0x27:                                       ; preds = %block_0x19, %entry
  %143 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %144 = add i64 %143, -4, !mcsema_real_eip !28
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !28
  %146 = bitcast i64* %145 to i32*
  store i32 1, i32* %146, !mcsema_real_eip !28
  br label %block_0x5b, !mcsema_real_eip !29

block_0x5b:                                       ; preds = %block_0x33, %block_0x27
  %147 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  %148 = add i64 %147, -4, !mcsema_real_eip !30
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !30
  %150 = bitcast i64* %149 to i32*
  %151 = load i32, i32* %150, !mcsema_real_eip !30
  %152 = zext i32 %151 to i64, !mcsema_real_eip !30
  store i64 %152, i64* %RAX_val, !mcsema_real_eip !30
  %153 = load i64, i64* %RSP_val, !mcsema_real_eip !31
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %153, i64 16)
  %154 = extractvalue { i64, i1 } %uadd, 0
  %155 = xor i64 %154, %153, !mcsema_real_eip !31
  %156 = and i64 %155, 16
  %157 = icmp eq i64 %156, 0
  store i1 %157, i1* %AF_val, !mcsema_real_eip !31
  %158 = icmp slt i64 %154, 0
  store i1 %158, i1* %SF_val, !mcsema_real_eip !31
  %159 = icmp eq i64 %154, 0, !mcsema_real_eip !31
  store i1 %159, i1* %ZF_val, !mcsema_real_eip !31
  %160 = xor i64 %153, -9223372036854775808, !mcsema_real_eip !31
  %161 = and i64 %155, %160, !mcsema_real_eip !31
  %162 = icmp slt i64 %161, 0
  store i1 %162, i1* %OF_val, !mcsema_real_eip !31
  %163 = trunc i64 %154 to i8, !mcsema_real_eip !31
  %164 = tail call i8 @llvm.ctpop.i8(i8 %163), !mcsema_real_eip !31
  %165 = and i8 %164, 1
  %166 = icmp eq i8 %165, 0
  store i1 %166, i1* %PF_val, !mcsema_real_eip !31
  %167 = extractvalue { i64, i1 } %uadd, 1
  store i1 %167, i1* %CF_val, !mcsema_real_eip !31
  store i64 %154, i64* %RSP_val, !mcsema_real_eip !31
  %168 = inttoptr i64 %154 to i64*, !mcsema_real_eip !32
  %169 = load i64, i64* %168, !mcsema_real_eip !32
  store i64 %169, i64* %RBP_val, !mcsema_real_eip !32
  %170 = add i64 %154, 16, !mcsema_real_eip !33
  store i64 %170, i64* %RSP_val, !mcsema_real_eip !33
  %171 = load i64, i64* %RAX_val, !mcsema_real_eip !33
  store i64 %171, i64* %RAX, !mcsema_real_eip !33
  %172 = load i64, i64* %RBX_val, !mcsema_real_eip !33
  store i64 %172, i64* %RBX, !mcsema_real_eip !33
  %173 = load i64, i64* %RCX_val, !mcsema_real_eip !33
  store i64 %173, i64* %RCX, !mcsema_real_eip !33
  %174 = load i64, i64* %RDX_val, !mcsema_real_eip !33
  store i64 %174, i64* %RDX, !mcsema_real_eip !33
  %175 = load i64, i64* %RSI_val, !mcsema_real_eip !33
  store i64 %175, i64* %RSI, !mcsema_real_eip !33
  %176 = load i64, i64* %RDI_val, !mcsema_real_eip !33
  store i64 %176, i64* %RDI, !mcsema_real_eip !33
  %177 = load i64, i64* %RSP_val, !mcsema_real_eip !33
  store i64 %177, i64* %RSP, !mcsema_real_eip !33
  %178 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  store i64 %178, i64* %RBP, !mcsema_real_eip !33
  %179 = load i64, i64* %R8_val, !mcsema_real_eip !33
  store i64 %179, i64* %R8, !mcsema_real_eip !33
  %180 = load i64, i64* %R9_val, !mcsema_real_eip !33
  store i64 %180, i64* %R9, !mcsema_real_eip !33
  %181 = load i64, i64* %R10_val, !mcsema_real_eip !33
  store i64 %181, i64* %R10, !mcsema_real_eip !33
  %182 = load i64, i64* %R11_val, !mcsema_real_eip !33
  store i64 %182, i64* %R11, !mcsema_real_eip !33
  %183 = load i64, i64* %R12_val, !mcsema_real_eip !33
  store i64 %183, i64* %R12, !mcsema_real_eip !33
  %184 = load i64, i64* %R13_val, !mcsema_real_eip !33
  store i64 %184, i64* %R13, !mcsema_real_eip !33
  %185 = load i64, i64* %R14_val, !mcsema_real_eip !33
  store i64 %185, i64* %R14, !mcsema_real_eip !33
  %186 = load i64, i64* %R15_val, !mcsema_real_eip !33
  store i64 %186, i64* %R15, !mcsema_real_eip !33
  %187 = load i64, i64* %RIP_val, !mcsema_real_eip !33
  store i64 %187, i64* %RIP, !mcsema_real_eip !33
  %188 = load i1, i1* %CF_val, !mcsema_real_eip !33
  store i1 %188, i1* %CF, align 1, !mcsema_real_eip !33
  %189 = load i1, i1* %PF_val, !mcsema_real_eip !33
  store i1 %189, i1* %PF, align 1, !mcsema_real_eip !33
  %190 = load i1, i1* %AF_val, !mcsema_real_eip !33
  store i1 %190, i1* %AF, align 1, !mcsema_real_eip !33
  %191 = load i1, i1* %ZF_val, !mcsema_real_eip !33
  store i1 %191, i1* %ZF, align 1, !mcsema_real_eip !33
  %192 = load i1, i1* %SF_val, !mcsema_real_eip !33
  store i1 %192, i1* %SF, align 1, !mcsema_real_eip !33
  %193 = load i1, i1* %OF_val, !mcsema_real_eip !33
  store i1 %193, i1* %OF, align 1, !mcsema_real_eip !33
  %194 = load i1, i1* %DF_val, !mcsema_real_eip !33
  store i1 %194, i1* %DF, align 1, !mcsema_real_eip !33
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !33
  %195 = load i1, i1* %FPU_B_val, !mcsema_real_eip !33
  store i1 %195, i1* %FPU_B, align 1, !mcsema_real_eip !33
  %196 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !33
  store i1 %196, i1* %FPU_C3, align 1, !mcsema_real_eip !33
  %197 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !33
  store i3 %197, i3* %FPU_TOP, align 1, !mcsema_real_eip !33
  %198 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !33
  store i1 %198, i1* %FPU_C2, align 1, !mcsema_real_eip !33
  %199 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !33
  store i1 %199, i1* %FPU_C1, align 1, !mcsema_real_eip !33
  %200 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !33
  store i1 %200, i1* %FPU_C0, align 1, !mcsema_real_eip !33
  %201 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !33
  store i1 %201, i1* %FPU_ES, align 1, !mcsema_real_eip !33
  %202 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !33
  store i1 %202, i1* %FPU_SF, align 1, !mcsema_real_eip !33
  %203 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !33
  store i1 %203, i1* %FPU_PE, align 1, !mcsema_real_eip !33
  %204 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !33
  store i1 %204, i1* %FPU_UE, align 1, !mcsema_real_eip !33
  %205 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !33
  store i1 %205, i1* %FPU_OE, align 1, !mcsema_real_eip !33
  %206 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !33
  store i1 %206, i1* %FPU_ZE, align 1, !mcsema_real_eip !33
  %207 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !33
  store i1 %207, i1* %FPU_DE, align 1, !mcsema_real_eip !33
  %208 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !33
  store i1 %208, i1* %FPU_IE, align 1, !mcsema_real_eip !33
  %209 = load i1, i1* %FPU_X_val, !mcsema_real_eip !33
  store i1 %209, i1* %FPU_X, align 1, !mcsema_real_eip !33
  %210 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !33
  store i2 %210, i2* %FPU_RC, align 1, !mcsema_real_eip !33
  %211 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !33
  store i2 %211, i2* %FPU_PC, align 1, !mcsema_real_eip !33
  %212 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !33
  store i1 %212, i1* %FPU_PM, align 1, !mcsema_real_eip !33
  %213 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !33
  store i1 %213, i1* %FPU_UM, align 1, !mcsema_real_eip !33
  %214 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !33
  store i1 %214, i1* %FPU_OM, align 1, !mcsema_real_eip !33
  %215 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !33
  store i1 %215, i1* %FPU_ZM, align 1, !mcsema_real_eip !33
  %216 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !33
  store i1 %216, i1* %FPU_DM, align 1, !mcsema_real_eip !33
  %217 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !33
  store i1 %217, i1* %FPU_IM, align 1, !mcsema_real_eip !33
  %218 = load i64, i64* %53, align 4
  store i64 %218, i64* %52, align 4
  %219 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !33
  store i16 %219, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !33
  %220 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !33
  store i64 %220, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !33
  %221 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !33
  store i16 %221, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !33
  %222 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !33
  store i64 %222, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !33
  %223 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !33
  store i11 %223, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !33
  %224 = load i128, i128* %XMM0_val, !mcsema_real_eip !33
  store i128 %224, i128* %XMM0, align 1, !mcsema_real_eip !33
  %225 = load i128, i128* %XMM1_val, !mcsema_real_eip !33
  store i128 %225, i128* %XMM1, align 1, !mcsema_real_eip !33
  %226 = load i128, i128* %XMM2_val, !mcsema_real_eip !33
  store i128 %226, i128* %XMM2, align 1, !mcsema_real_eip !33
  %227 = load i128, i128* %XMM3_val, !mcsema_real_eip !33
  store i128 %227, i128* %XMM3, align 1, !mcsema_real_eip !33
  %228 = load i128, i128* %XMM4_val, !mcsema_real_eip !33
  store i128 %228, i128* %XMM4, align 1, !mcsema_real_eip !33
  %229 = load i128, i128* %XMM5_val, !mcsema_real_eip !33
  store i128 %229, i128* %XMM5, align 1, !mcsema_real_eip !33
  %230 = load i128, i128* %XMM6_val, !mcsema_real_eip !33
  store i128 %230, i128* %XMM6, align 1, !mcsema_real_eip !33
  %231 = load i128, i128* %XMM7_val, !mcsema_real_eip !33
  store i128 %231, i128* %XMM7, align 1, !mcsema_real_eip !33
  %232 = load i128, i128* %XMM8_val, !mcsema_real_eip !33
  store i128 %232, i128* %XMM8, align 1, !mcsema_real_eip !33
  %233 = load i128, i128* %XMM9_val, !mcsema_real_eip !33
  store i128 %233, i128* %XMM9, align 1, !mcsema_real_eip !33
  %234 = load i128, i128* %XMM10_val, !mcsema_real_eip !33
  store i128 %234, i128* %XMM10, align 1, !mcsema_real_eip !33
  %235 = load i128, i128* %XMM11_val, !mcsema_real_eip !33
  store i128 %235, i128* %XMM11, align 1, !mcsema_real_eip !33
  %236 = load i128, i128* %XMM12_val, !mcsema_real_eip !33
  store i128 %236, i128* %XMM12, align 1, !mcsema_real_eip !33
  %237 = load i128, i128* %XMM13_val, !mcsema_real_eip !33
  store i128 %237, i128* %XMM13, align 1, !mcsema_real_eip !33
  %238 = load i128, i128* %XMM14_val, !mcsema_real_eip !33
  store i128 %238, i128* %XMM14, align 1, !mcsema_real_eip !33
  %239 = load i128, i128* %XMM15_val, !mcsema_real_eip !33
  store i128 %239, i128* %XMM15, align 1, !mcsema_real_eip !33
  %240 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !33
  store i64 %240, i64* %STACK_BASE, align 1, !mcsema_real_eip !33
  %241 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !33
  store i64 %241, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !33
  ret void, !mcsema_real_eip !33

block_0x33:                                       ; preds = %block_0x19
  %242 = load i64, i64* %RBP_val, !mcsema_real_eip !34
  %243 = add i64 %242, -8, !mcsema_real_eip !34
  %244 = inttoptr i64 %243 to i64*, !mcsema_real_eip !34
  %245 = bitcast i64* %244 to i32*
  %246 = load i32, i32* %245, !mcsema_real_eip !34
  %247 = add i32 %246, -1
  %248 = xor i32 %247, %246, !mcsema_real_eip !35
  %249 = and i32 %248, 16, !mcsema_real_eip !35
  %250 = icmp ne i32 %249, 0, !mcsema_real_eip !35
  store i1 %250, i1* %AF_val, !mcsema_real_eip !35
  %251 = trunc i32 %247 to i8, !mcsema_real_eip !35
  %252 = tail call i8 @llvm.ctpop.i8(i8 %251), !mcsema_real_eip !35
  %253 = and i8 %252, 1
  %254 = icmp eq i8 %253, 0
  store i1 %254, i1* %PF_val, !mcsema_real_eip !35
  %255 = icmp eq i32 %247, 0, !mcsema_real_eip !35
  store i1 %255, i1* %ZF_val, !mcsema_real_eip !35
  %256 = icmp slt i32 %247, 0
  store i1 %256, i1* %SF_val, !mcsema_real_eip !35
  %257 = icmp eq i32 %246, 0
  store i1 %257, i1* %CF_val, !mcsema_real_eip !35
  %258 = and i32 %248, %246, !mcsema_real_eip !35
  %259 = icmp slt i32 %258, 0
  store i1 %259, i1* %OF_val, !mcsema_real_eip !35
  %260 = zext i32 %247 to i64, !mcsema_real_eip !35
  store i64 %260, i64* %RAX_val, !mcsema_real_eip !35
  store i64 %260, i64* %RDI_val, !mcsema_real_eip !36
  %261 = load i64, i64* %RSP_val, !mcsema_real_eip !37
  %262 = add i64 %261, -8
  %263 = inttoptr i64 %262 to i64*, !mcsema_real_eip !37
  store i64 -4981261766360305936, i64* %263, !mcsema_real_eip !37
  store i64 %262, i64* %RSP_val, !mcsema_real_eip !37
  %264 = load i64, i64* %RAX_val, !mcsema_real_eip !37
  store i64 %264, i64* %RAX, !mcsema_real_eip !37
  %265 = load i64, i64* %RBX_val, !mcsema_real_eip !37
  store i64 %265, i64* %RBX, !mcsema_real_eip !37
  %266 = load i64, i64* %RCX_val, !mcsema_real_eip !37
  store i64 %266, i64* %RCX, !mcsema_real_eip !37
  %267 = load i64, i64* %RDX_val, !mcsema_real_eip !37
  store i64 %267, i64* %RDX, !mcsema_real_eip !37
  %268 = load i64, i64* %RSI_val, !mcsema_real_eip !37
  store i64 %268, i64* %RSI, !mcsema_real_eip !37
  %269 = load i64, i64* %RDI_val, !mcsema_real_eip !37
  store i64 %269, i64* %RDI, !mcsema_real_eip !37
  %270 = load i64, i64* %RSP_val, !mcsema_real_eip !37
  store i64 %270, i64* %RSP, !mcsema_real_eip !37
  %271 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  store i64 %271, i64* %RBP, !mcsema_real_eip !37
  %272 = load i64, i64* %R8_val, !mcsema_real_eip !37
  store i64 %272, i64* %R8, !mcsema_real_eip !37
  %273 = load i64, i64* %R9_val, !mcsema_real_eip !37
  store i64 %273, i64* %R9, !mcsema_real_eip !37
  %274 = load i64, i64* %R10_val, !mcsema_real_eip !37
  store i64 %274, i64* %R10, !mcsema_real_eip !37
  %275 = load i64, i64* %R11_val, !mcsema_real_eip !37
  store i64 %275, i64* %R11, !mcsema_real_eip !37
  %276 = load i64, i64* %R12_val, !mcsema_real_eip !37
  store i64 %276, i64* %R12, !mcsema_real_eip !37
  %277 = load i64, i64* %R13_val, !mcsema_real_eip !37
  store i64 %277, i64* %R13, !mcsema_real_eip !37
  %278 = load i64, i64* %R14_val, !mcsema_real_eip !37
  store i64 %278, i64* %R14, !mcsema_real_eip !37
  %279 = load i64, i64* %R15_val, !mcsema_real_eip !37
  store i64 %279, i64* %R15, !mcsema_real_eip !37
  %280 = load i64, i64* %RIP_val, !mcsema_real_eip !37
  store i64 %280, i64* %RIP, !mcsema_real_eip !37
  %281 = load i1, i1* %CF_val, !mcsema_real_eip !37
  store i1 %281, i1* %CF, align 1, !mcsema_real_eip !37
  %282 = load i1, i1* %PF_val, !mcsema_real_eip !37
  store i1 %282, i1* %PF, align 1, !mcsema_real_eip !37
  %283 = load i1, i1* %AF_val, !mcsema_real_eip !37
  store i1 %283, i1* %AF, align 1, !mcsema_real_eip !37
  %284 = load i1, i1* %ZF_val, !mcsema_real_eip !37
  store i1 %284, i1* %ZF, align 1, !mcsema_real_eip !37
  %285 = load i1, i1* %SF_val, !mcsema_real_eip !37
  store i1 %285, i1* %SF, align 1, !mcsema_real_eip !37
  %286 = load i1, i1* %OF_val, !mcsema_real_eip !37
  store i1 %286, i1* %OF, align 1, !mcsema_real_eip !37
  %287 = load i1, i1* %DF_val, !mcsema_real_eip !37
  store i1 %287, i1* %DF, align 1, !mcsema_real_eip !37
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !37
  %288 = load i1, i1* %FPU_B_val, !mcsema_real_eip !37
  store i1 %288, i1* %FPU_B, align 1, !mcsema_real_eip !37
  %289 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !37
  store i1 %289, i1* %FPU_C3, align 1, !mcsema_real_eip !37
  %290 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !37
  store i3 %290, i3* %FPU_TOP, align 1, !mcsema_real_eip !37
  %291 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !37
  store i1 %291, i1* %FPU_C2, align 1, !mcsema_real_eip !37
  %292 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !37
  store i1 %292, i1* %FPU_C1, align 1, !mcsema_real_eip !37
  %293 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !37
  store i1 %293, i1* %FPU_C0, align 1, !mcsema_real_eip !37
  %294 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !37
  store i1 %294, i1* %FPU_ES, align 1, !mcsema_real_eip !37
  %295 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !37
  store i1 %295, i1* %FPU_SF, align 1, !mcsema_real_eip !37
  %296 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !37
  store i1 %296, i1* %FPU_PE, align 1, !mcsema_real_eip !37
  %297 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !37
  store i1 %297, i1* %FPU_UE, align 1, !mcsema_real_eip !37
  %298 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !37
  store i1 %298, i1* %FPU_OE, align 1, !mcsema_real_eip !37
  %299 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !37
  store i1 %299, i1* %FPU_ZE, align 1, !mcsema_real_eip !37
  %300 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !37
  store i1 %300, i1* %FPU_DE, align 1, !mcsema_real_eip !37
  %301 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !37
  store i1 %301, i1* %FPU_IE, align 1, !mcsema_real_eip !37
  %302 = load i1, i1* %FPU_X_val, !mcsema_real_eip !37
  store i1 %302, i1* %FPU_X, align 1, !mcsema_real_eip !37
  %303 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !37
  store i2 %303, i2* %FPU_RC, align 1, !mcsema_real_eip !37
  %304 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !37
  store i2 %304, i2* %FPU_PC, align 1, !mcsema_real_eip !37
  %305 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !37
  store i1 %305, i1* %FPU_PM, align 1, !mcsema_real_eip !37
  %306 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !37
  store i1 %306, i1* %FPU_UM, align 1, !mcsema_real_eip !37
  %307 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !37
  store i1 %307, i1* %FPU_OM, align 1, !mcsema_real_eip !37
  %308 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !37
  store i1 %308, i1* %FPU_ZM, align 1, !mcsema_real_eip !37
  %309 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !37
  store i1 %309, i1* %FPU_DM, align 1, !mcsema_real_eip !37
  %310 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !37
  store i1 %310, i1* %FPU_IM, align 1, !mcsema_real_eip !37
  %311 = load i64, i64* %53, align 4
  store i64 %311, i64* %52, align 4
  %312 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !37
  store i16 %312, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !37
  %313 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !37
  store i64 %313, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !37
  %314 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !37
  store i16 %314, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !37
  %315 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !37
  store i64 %315, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !37
  %316 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !37
  store i11 %316, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !37
  %317 = load i128, i128* %XMM0_val, !mcsema_real_eip !37
  store i128 %317, i128* %XMM0, align 1, !mcsema_real_eip !37
  %318 = load i128, i128* %XMM1_val, !mcsema_real_eip !37
  store i128 %318, i128* %XMM1, align 1, !mcsema_real_eip !37
  %319 = load i128, i128* %XMM2_val, !mcsema_real_eip !37
  store i128 %319, i128* %XMM2, align 1, !mcsema_real_eip !37
  %320 = load i128, i128* %XMM3_val, !mcsema_real_eip !37
  store i128 %320, i128* %XMM3, align 1, !mcsema_real_eip !37
  %321 = load i128, i128* %XMM4_val, !mcsema_real_eip !37
  store i128 %321, i128* %XMM4, align 1, !mcsema_real_eip !37
  %322 = load i128, i128* %XMM5_val, !mcsema_real_eip !37
  store i128 %322, i128* %XMM5, align 1, !mcsema_real_eip !37
  %323 = load i128, i128* %XMM6_val, !mcsema_real_eip !37
  store i128 %323, i128* %XMM6, align 1, !mcsema_real_eip !37
  %324 = load i128, i128* %XMM7_val, !mcsema_real_eip !37
  store i128 %324, i128* %XMM7, align 1, !mcsema_real_eip !37
  %325 = load i128, i128* %XMM8_val, !mcsema_real_eip !37
  store i128 %325, i128* %XMM8, align 1, !mcsema_real_eip !37
  %326 = load i128, i128* %XMM9_val, !mcsema_real_eip !37
  store i128 %326, i128* %XMM9, align 1, !mcsema_real_eip !37
  %327 = load i128, i128* %XMM10_val, !mcsema_real_eip !37
  store i128 %327, i128* %XMM10, align 1, !mcsema_real_eip !37
  %328 = load i128, i128* %XMM11_val, !mcsema_real_eip !37
  store i128 %328, i128* %XMM11, align 1, !mcsema_real_eip !37
  %329 = load i128, i128* %XMM12_val, !mcsema_real_eip !37
  store i128 %329, i128* %XMM12, align 1, !mcsema_real_eip !37
  %330 = load i128, i128* %XMM13_val, !mcsema_real_eip !37
  store i128 %330, i128* %XMM13, align 1, !mcsema_real_eip !37
  %331 = load i128, i128* %XMM14_val, !mcsema_real_eip !37
  store i128 %331, i128* %XMM14, align 1, !mcsema_real_eip !37
  %332 = load i128, i128* %XMM15_val, !mcsema_real_eip !37
  store i128 %332, i128* %XMM15, align 1, !mcsema_real_eip !37
  %333 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !37
  store i64 %333, i64* %STACK_BASE, align 1, !mcsema_real_eip !37
  %334 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !37
  store i64 %334, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !37
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !37
  %335 = load i64, i64* %RAX, !mcsema_real_eip !37
  store i64 %335, i64* %RAX_val, !mcsema_real_eip !37
  %336 = load i64, i64* %RBX, !mcsema_real_eip !37
  store i64 %336, i64* %RBX_val, !mcsema_real_eip !37
  %337 = load i64, i64* %RCX, !mcsema_real_eip !37
  store i64 %337, i64* %RCX_val, !mcsema_real_eip !37
  %338 = load i64, i64* %RDX, !mcsema_real_eip !37
  store i64 %338, i64* %RDX_val, !mcsema_real_eip !37
  %339 = load i64, i64* %RSI, !mcsema_real_eip !37
  store i64 %339, i64* %RSI_val, !mcsema_real_eip !37
  %340 = load i64, i64* %RDI, !mcsema_real_eip !37
  store i64 %340, i64* %RDI_val, !mcsema_real_eip !37
  %341 = load i64, i64* %RSP, !mcsema_real_eip !37
  store i64 %341, i64* %RSP_val, !mcsema_real_eip !37
  %342 = load i64, i64* %RBP, !mcsema_real_eip !37
  store i64 %342, i64* %RBP_val, !mcsema_real_eip !37
  %343 = load i64, i64* %R8, !mcsema_real_eip !37
  store i64 %343, i64* %R8_val, !mcsema_real_eip !37
  %344 = load i64, i64* %R9, !mcsema_real_eip !37
  store i64 %344, i64* %R9_val, !mcsema_real_eip !37
  %345 = load i64, i64* %R10, !mcsema_real_eip !37
  store i64 %345, i64* %R10_val, !mcsema_real_eip !37
  %346 = load i64, i64* %R11, !mcsema_real_eip !37
  store i64 %346, i64* %R11_val, !mcsema_real_eip !37
  %347 = load i64, i64* %R12, !mcsema_real_eip !37
  store i64 %347, i64* %R12_val, !mcsema_real_eip !37
  %348 = load i64, i64* %R13, !mcsema_real_eip !37
  store i64 %348, i64* %R13_val, !mcsema_real_eip !37
  %349 = load i64, i64* %R14, !mcsema_real_eip !37
  store i64 %349, i64* %R14_val, !mcsema_real_eip !37
  %350 = load i64, i64* %R15, !mcsema_real_eip !37
  store i64 %350, i64* %R15_val, !mcsema_real_eip !37
  %351 = load i64, i64* %RIP, !mcsema_real_eip !37
  store i64 %351, i64* %RIP_val, !mcsema_real_eip !37
  %352 = load i1, i1* %CF, align 1, !mcsema_real_eip !37
  store i1 %352, i1* %CF_val, !mcsema_real_eip !37
  %353 = load i1, i1* %PF, align 1, !mcsema_real_eip !37
  store i1 %353, i1* %PF_val, !mcsema_real_eip !37
  %354 = load i1, i1* %AF, align 1, !mcsema_real_eip !37
  store i1 %354, i1* %AF_val, !mcsema_real_eip !37
  %355 = load i1, i1* %ZF, align 1, !mcsema_real_eip !37
  store i1 %355, i1* %ZF_val, !mcsema_real_eip !37
  %356 = load i1, i1* %SF, align 1, !mcsema_real_eip !37
  store i1 %356, i1* %SF_val, !mcsema_real_eip !37
  %357 = load i1, i1* %OF, align 1, !mcsema_real_eip !37
  store i1 %357, i1* %OF_val, !mcsema_real_eip !37
  %358 = load i1, i1* %DF, align 1, !mcsema_real_eip !37
  store i1 %358, i1* %DF_val, !mcsema_real_eip !37
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !37
  %359 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !37
  store i1 %359, i1* %FPU_B_val, !mcsema_real_eip !37
  %360 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !37
  store i1 %360, i1* %FPU_C3_val, !mcsema_real_eip !37
  %361 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !37
  store i3 %361, i3* %FPU_TOP_val, !mcsema_real_eip !37
  %362 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !37
  store i1 %362, i1* %FPU_C2_val, !mcsema_real_eip !37
  %363 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !37
  store i1 %363, i1* %FPU_C1_val, !mcsema_real_eip !37
  %364 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !37
  store i1 %364, i1* %FPU_C0_val, !mcsema_real_eip !37
  %365 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !37
  store i1 %365, i1* %FPU_ES_val, !mcsema_real_eip !37
  %366 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !37
  store i1 %366, i1* %FPU_SF_val, !mcsema_real_eip !37
  %367 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !37
  store i1 %367, i1* %FPU_PE_val, !mcsema_real_eip !37
  %368 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !37
  store i1 %368, i1* %FPU_UE_val, !mcsema_real_eip !37
  %369 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !37
  store i1 %369, i1* %FPU_OE_val, !mcsema_real_eip !37
  %370 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !37
  store i1 %370, i1* %FPU_ZE_val, !mcsema_real_eip !37
  %371 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !37
  store i1 %371, i1* %FPU_DE_val, !mcsema_real_eip !37
  %372 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !37
  store i1 %372, i1* %FPU_IE_val, !mcsema_real_eip !37
  %373 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !37
  store i1 %373, i1* %FPU_X_val, !mcsema_real_eip !37
  %374 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !37
  store i2 %374, i2* %FPU_RC_val, !mcsema_real_eip !37
  %375 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !37
  store i2 %375, i2* %FPU_PC_val, !mcsema_real_eip !37
  %376 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !37
  store i1 %376, i1* %FPU_PM_val, !mcsema_real_eip !37
  %377 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !37
  store i1 %377, i1* %FPU_UM_val, !mcsema_real_eip !37
  %378 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !37
  store i1 %378, i1* %FPU_OM_val, !mcsema_real_eip !37
  %379 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !37
  store i1 %379, i1* %FPU_ZM_val, !mcsema_real_eip !37
  %380 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !37
  store i1 %380, i1* %FPU_DM_val, !mcsema_real_eip !37
  %381 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !37
  store i1 %381, i1* %FPU_IM_val, !mcsema_real_eip !37
  %382 = load i64, i64* %52, align 4
  store i64 %382, i64* %53, align 4
  %383 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !37
  store i16 %383, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !37
  %384 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !37
  store i64 %384, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !37
  %385 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !37
  store i16 %385, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !37
  %386 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !37
  store i64 %386, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !37
  %387 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !37
  store i11 %387, i11* %FPU_FOPCODE_val, !mcsema_real_eip !37
  %388 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !37
  store i128 %388, i128* %XMM0_val, !mcsema_real_eip !37
  %389 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !37
  store i128 %389, i128* %XMM1_val, !mcsema_real_eip !37
  %390 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !37
  store i128 %390, i128* %XMM2_val, !mcsema_real_eip !37
  %391 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !37
  store i128 %391, i128* %XMM3_val, !mcsema_real_eip !37
  %392 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !37
  store i128 %392, i128* %XMM4_val, !mcsema_real_eip !37
  %393 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !37
  store i128 %393, i128* %XMM5_val, !mcsema_real_eip !37
  %394 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !37
  store i128 %394, i128* %XMM6_val, !mcsema_real_eip !37
  %395 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !37
  store i128 %395, i128* %XMM7_val, !mcsema_real_eip !37
  %396 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !37
  store i128 %396, i128* %XMM8_val, !mcsema_real_eip !37
  %397 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !37
  store i128 %397, i128* %XMM9_val, !mcsema_real_eip !37
  %398 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !37
  store i128 %398, i128* %XMM10_val, !mcsema_real_eip !37
  %399 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !37
  store i128 %399, i128* %XMM11_val, !mcsema_real_eip !37
  %400 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !37
  store i128 %400, i128* %XMM12_val, !mcsema_real_eip !37
  %401 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !37
  store i128 %401, i128* %XMM13_val, !mcsema_real_eip !37
  %402 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !37
  store i128 %402, i128* %XMM14_val, !mcsema_real_eip !37
  %403 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !37
  store i128 %403, i128* %XMM15_val, !mcsema_real_eip !37
  %404 = load i64, i64* %STACK_BASE, !mcsema_real_eip !37
  store i64 %404, i64* %STACK_BASE_val, !mcsema_real_eip !37
  %405 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !37
  store i64 %405, i64* %STACK_LIMIT_val, !mcsema_real_eip !37
  %406 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %407 = add i64 %406, -8, !mcsema_real_eip !38
  %408 = inttoptr i64 %407 to i64*, !mcsema_real_eip !38
  %409 = bitcast i64* %408 to i32*
  %410 = load i32, i32* %409, !mcsema_real_eip !38
  %411 = add i32 %410, -2
  %412 = xor i32 %411, %410, !mcsema_real_eip !39
  %413 = and i32 %412, 16, !mcsema_real_eip !39
  %414 = icmp ne i32 %413, 0, !mcsema_real_eip !39
  store i1 %414, i1* %AF_val, !mcsema_real_eip !39
  %415 = trunc i32 %411 to i8, !mcsema_real_eip !39
  %416 = tail call i8 @llvm.ctpop.i8(i8 %415), !mcsema_real_eip !39
  %417 = and i8 %416, 1
  %418 = icmp eq i8 %417, 0
  store i1 %418, i1* %PF_val, !mcsema_real_eip !39
  %419 = icmp eq i32 %411, 0, !mcsema_real_eip !39
  store i1 %419, i1* %ZF_val, !mcsema_real_eip !39
  %420 = icmp slt i32 %411, 0
  store i1 %420, i1* %SF_val, !mcsema_real_eip !39
  %421 = icmp ult i32 %410, 2, !mcsema_real_eip !39
  store i1 %421, i1* %CF_val, !mcsema_real_eip !39
  %422 = and i32 %412, %410, !mcsema_real_eip !39
  %423 = icmp slt i32 %422, 0
  store i1 %423, i1* %OF_val, !mcsema_real_eip !39
  %424 = zext i32 %411 to i64, !mcsema_real_eip !39
  store i64 %424, i64* %RDI_val, !mcsema_real_eip !39
  %425 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %426 = add i64 %425, -12, !mcsema_real_eip !40
  %427 = inttoptr i64 %426 to i64*, !mcsema_real_eip !40
  %428 = load i64, i64* %RAX_val, !mcsema_real_eip !40
  %429 = trunc i64 %428 to i32, !mcsema_real_eip !40
  %430 = bitcast i64* %427 to i32*
  store i32 %429, i32* %430, !mcsema_real_eip !40
  %431 = load i64, i64* %RSP_val, !mcsema_real_eip !41
  %432 = add i64 %431, -8
  %433 = inttoptr i64 %432 to i64*, !mcsema_real_eip !41
  store i64 -4981261766360305936, i64* %433, !mcsema_real_eip !41
  store i64 %432, i64* %RSP_val, !mcsema_real_eip !41
  %434 = load i64, i64* %RAX_val, !mcsema_real_eip !41
  store i64 %434, i64* %RAX, !mcsema_real_eip !41
  %435 = load i64, i64* %RBX_val, !mcsema_real_eip !41
  store i64 %435, i64* %RBX, !mcsema_real_eip !41
  %436 = load i64, i64* %RCX_val, !mcsema_real_eip !41
  store i64 %436, i64* %RCX, !mcsema_real_eip !41
  %437 = load i64, i64* %RDX_val, !mcsema_real_eip !41
  store i64 %437, i64* %RDX, !mcsema_real_eip !41
  %438 = load i64, i64* %RSI_val, !mcsema_real_eip !41
  store i64 %438, i64* %RSI, !mcsema_real_eip !41
  %439 = load i64, i64* %RDI_val, !mcsema_real_eip !41
  store i64 %439, i64* %RDI, !mcsema_real_eip !41
  %440 = load i64, i64* %RSP_val, !mcsema_real_eip !41
  store i64 %440, i64* %RSP, !mcsema_real_eip !41
  %441 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  store i64 %441, i64* %RBP, !mcsema_real_eip !41
  %442 = load i64, i64* %R8_val, !mcsema_real_eip !41
  store i64 %442, i64* %R8, !mcsema_real_eip !41
  %443 = load i64, i64* %R9_val, !mcsema_real_eip !41
  store i64 %443, i64* %R9, !mcsema_real_eip !41
  %444 = load i64, i64* %R10_val, !mcsema_real_eip !41
  store i64 %444, i64* %R10, !mcsema_real_eip !41
  %445 = load i64, i64* %R11_val, !mcsema_real_eip !41
  store i64 %445, i64* %R11, !mcsema_real_eip !41
  %446 = load i64, i64* %R12_val, !mcsema_real_eip !41
  store i64 %446, i64* %R12, !mcsema_real_eip !41
  %447 = load i64, i64* %R13_val, !mcsema_real_eip !41
  store i64 %447, i64* %R13, !mcsema_real_eip !41
  %448 = load i64, i64* %R14_val, !mcsema_real_eip !41
  store i64 %448, i64* %R14, !mcsema_real_eip !41
  %449 = load i64, i64* %R15_val, !mcsema_real_eip !41
  store i64 %449, i64* %R15, !mcsema_real_eip !41
  %450 = load i64, i64* %RIP_val, !mcsema_real_eip !41
  store i64 %450, i64* %RIP, !mcsema_real_eip !41
  %451 = load i1, i1* %CF_val, !mcsema_real_eip !41
  store i1 %451, i1* %CF, align 1, !mcsema_real_eip !41
  %452 = load i1, i1* %PF_val, !mcsema_real_eip !41
  store i1 %452, i1* %PF, align 1, !mcsema_real_eip !41
  %453 = load i1, i1* %AF_val, !mcsema_real_eip !41
  store i1 %453, i1* %AF, align 1, !mcsema_real_eip !41
  %454 = load i1, i1* %ZF_val, !mcsema_real_eip !41
  store i1 %454, i1* %ZF, align 1, !mcsema_real_eip !41
  %455 = load i1, i1* %SF_val, !mcsema_real_eip !41
  store i1 %455, i1* %SF, align 1, !mcsema_real_eip !41
  %456 = load i1, i1* %OF_val, !mcsema_real_eip !41
  store i1 %456, i1* %OF, align 1, !mcsema_real_eip !41
  %457 = load i1, i1* %DF_val, !mcsema_real_eip !41
  store i1 %457, i1* %DF, align 1, !mcsema_real_eip !41
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !41
  %458 = load i1, i1* %FPU_B_val, !mcsema_real_eip !41
  store i1 %458, i1* %FPU_B, align 1, !mcsema_real_eip !41
  %459 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !41
  store i1 %459, i1* %FPU_C3, align 1, !mcsema_real_eip !41
  %460 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !41
  store i3 %460, i3* %FPU_TOP, align 1, !mcsema_real_eip !41
  %461 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !41
  store i1 %461, i1* %FPU_C2, align 1, !mcsema_real_eip !41
  %462 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !41
  store i1 %462, i1* %FPU_C1, align 1, !mcsema_real_eip !41
  %463 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !41
  store i1 %463, i1* %FPU_C0, align 1, !mcsema_real_eip !41
  %464 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !41
  store i1 %464, i1* %FPU_ES, align 1, !mcsema_real_eip !41
  %465 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !41
  store i1 %465, i1* %FPU_SF, align 1, !mcsema_real_eip !41
  %466 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !41
  store i1 %466, i1* %FPU_PE, align 1, !mcsema_real_eip !41
  %467 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !41
  store i1 %467, i1* %FPU_UE, align 1, !mcsema_real_eip !41
  %468 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !41
  store i1 %468, i1* %FPU_OE, align 1, !mcsema_real_eip !41
  %469 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !41
  store i1 %469, i1* %FPU_ZE, align 1, !mcsema_real_eip !41
  %470 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !41
  store i1 %470, i1* %FPU_DE, align 1, !mcsema_real_eip !41
  %471 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !41
  store i1 %471, i1* %FPU_IE, align 1, !mcsema_real_eip !41
  %472 = load i1, i1* %FPU_X_val, !mcsema_real_eip !41
  store i1 %472, i1* %FPU_X, align 1, !mcsema_real_eip !41
  %473 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !41
  store i2 %473, i2* %FPU_RC, align 1, !mcsema_real_eip !41
  %474 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !41
  store i2 %474, i2* %FPU_PC, align 1, !mcsema_real_eip !41
  %475 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !41
  store i1 %475, i1* %FPU_PM, align 1, !mcsema_real_eip !41
  %476 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !41
  store i1 %476, i1* %FPU_UM, align 1, !mcsema_real_eip !41
  %477 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !41
  store i1 %477, i1* %FPU_OM, align 1, !mcsema_real_eip !41
  %478 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !41
  store i1 %478, i1* %FPU_ZM, align 1, !mcsema_real_eip !41
  %479 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !41
  store i1 %479, i1* %FPU_DM, align 1, !mcsema_real_eip !41
  %480 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !41
  store i1 %480, i1* %FPU_IM, align 1, !mcsema_real_eip !41
  %481 = load i64, i64* %53, align 4
  store i64 %481, i64* %52, align 4
  %482 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !41
  store i16 %482, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !41
  %483 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !41
  store i64 %483, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !41
  %484 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !41
  store i16 %484, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !41
  %485 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !41
  store i64 %485, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !41
  %486 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !41
  store i11 %486, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !41
  %487 = load i128, i128* %XMM0_val, !mcsema_real_eip !41
  store i128 %487, i128* %XMM0, align 1, !mcsema_real_eip !41
  %488 = load i128, i128* %XMM1_val, !mcsema_real_eip !41
  store i128 %488, i128* %XMM1, align 1, !mcsema_real_eip !41
  %489 = load i128, i128* %XMM2_val, !mcsema_real_eip !41
  store i128 %489, i128* %XMM2, align 1, !mcsema_real_eip !41
  %490 = load i128, i128* %XMM3_val, !mcsema_real_eip !41
  store i128 %490, i128* %XMM3, align 1, !mcsema_real_eip !41
  %491 = load i128, i128* %XMM4_val, !mcsema_real_eip !41
  store i128 %491, i128* %XMM4, align 1, !mcsema_real_eip !41
  %492 = load i128, i128* %XMM5_val, !mcsema_real_eip !41
  store i128 %492, i128* %XMM5, align 1, !mcsema_real_eip !41
  %493 = load i128, i128* %XMM6_val, !mcsema_real_eip !41
  store i128 %493, i128* %XMM6, align 1, !mcsema_real_eip !41
  %494 = load i128, i128* %XMM7_val, !mcsema_real_eip !41
  store i128 %494, i128* %XMM7, align 1, !mcsema_real_eip !41
  %495 = load i128, i128* %XMM8_val, !mcsema_real_eip !41
  store i128 %495, i128* %XMM8, align 1, !mcsema_real_eip !41
  %496 = load i128, i128* %XMM9_val, !mcsema_real_eip !41
  store i128 %496, i128* %XMM9, align 1, !mcsema_real_eip !41
  %497 = load i128, i128* %XMM10_val, !mcsema_real_eip !41
  store i128 %497, i128* %XMM10, align 1, !mcsema_real_eip !41
  %498 = load i128, i128* %XMM11_val, !mcsema_real_eip !41
  store i128 %498, i128* %XMM11, align 1, !mcsema_real_eip !41
  %499 = load i128, i128* %XMM12_val, !mcsema_real_eip !41
  store i128 %499, i128* %XMM12, align 1, !mcsema_real_eip !41
  %500 = load i128, i128* %XMM13_val, !mcsema_real_eip !41
  store i128 %500, i128* %XMM13, align 1, !mcsema_real_eip !41
  %501 = load i128, i128* %XMM14_val, !mcsema_real_eip !41
  store i128 %501, i128* %XMM14, align 1, !mcsema_real_eip !41
  %502 = load i128, i128* %XMM15_val, !mcsema_real_eip !41
  store i128 %502, i128* %XMM15, align 1, !mcsema_real_eip !41
  %503 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !41
  store i64 %503, i64* %STACK_BASE, align 1, !mcsema_real_eip !41
  %504 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !41
  store i64 %504, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !41
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !41
  %505 = load i64, i64* %RAX, !mcsema_real_eip !41
  store i64 %505, i64* %RAX_val, !mcsema_real_eip !41
  %506 = load i64, i64* %RBX, !mcsema_real_eip !41
  store i64 %506, i64* %RBX_val, !mcsema_real_eip !41
  %507 = load i64, i64* %RCX, !mcsema_real_eip !41
  store i64 %507, i64* %RCX_val, !mcsema_real_eip !41
  %508 = load i64, i64* %RDX, !mcsema_real_eip !41
  store i64 %508, i64* %RDX_val, !mcsema_real_eip !41
  %509 = load i64, i64* %RSI, !mcsema_real_eip !41
  store i64 %509, i64* %RSI_val, !mcsema_real_eip !41
  %510 = load i64, i64* %RDI, !mcsema_real_eip !41
  store i64 %510, i64* %RDI_val, !mcsema_real_eip !41
  %511 = load i64, i64* %RSP, !mcsema_real_eip !41
  store i64 %511, i64* %RSP_val, !mcsema_real_eip !41
  %512 = load i64, i64* %RBP, !mcsema_real_eip !41
  store i64 %512, i64* %RBP_val, !mcsema_real_eip !41
  %513 = load i64, i64* %R8, !mcsema_real_eip !41
  store i64 %513, i64* %R8_val, !mcsema_real_eip !41
  %514 = load i64, i64* %R9, !mcsema_real_eip !41
  store i64 %514, i64* %R9_val, !mcsema_real_eip !41
  %515 = load i64, i64* %R10, !mcsema_real_eip !41
  store i64 %515, i64* %R10_val, !mcsema_real_eip !41
  %516 = load i64, i64* %R11, !mcsema_real_eip !41
  store i64 %516, i64* %R11_val, !mcsema_real_eip !41
  %517 = load i64, i64* %R12, !mcsema_real_eip !41
  store i64 %517, i64* %R12_val, !mcsema_real_eip !41
  %518 = load i64, i64* %R13, !mcsema_real_eip !41
  store i64 %518, i64* %R13_val, !mcsema_real_eip !41
  %519 = load i64, i64* %R14, !mcsema_real_eip !41
  store i64 %519, i64* %R14_val, !mcsema_real_eip !41
  %520 = load i64, i64* %R15, !mcsema_real_eip !41
  store i64 %520, i64* %R15_val, !mcsema_real_eip !41
  %521 = load i64, i64* %RIP, !mcsema_real_eip !41
  store i64 %521, i64* %RIP_val, !mcsema_real_eip !41
  %522 = load i1, i1* %CF, align 1, !mcsema_real_eip !41
  store i1 %522, i1* %CF_val, !mcsema_real_eip !41
  %523 = load i1, i1* %PF, align 1, !mcsema_real_eip !41
  store i1 %523, i1* %PF_val, !mcsema_real_eip !41
  %524 = load i1, i1* %AF, align 1, !mcsema_real_eip !41
  store i1 %524, i1* %AF_val, !mcsema_real_eip !41
  %525 = load i1, i1* %ZF, align 1, !mcsema_real_eip !41
  store i1 %525, i1* %ZF_val, !mcsema_real_eip !41
  %526 = load i1, i1* %SF, align 1, !mcsema_real_eip !41
  store i1 %526, i1* %SF_val, !mcsema_real_eip !41
  %527 = load i1, i1* %OF, align 1, !mcsema_real_eip !41
  store i1 %527, i1* %OF_val, !mcsema_real_eip !41
  %528 = load i1, i1* %DF, align 1, !mcsema_real_eip !41
  store i1 %528, i1* %DF_val, !mcsema_real_eip !41
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !41
  %529 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !41
  store i1 %529, i1* %FPU_B_val, !mcsema_real_eip !41
  %530 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !41
  store i1 %530, i1* %FPU_C3_val, !mcsema_real_eip !41
  %531 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !41
  store i3 %531, i3* %FPU_TOP_val, !mcsema_real_eip !41
  %532 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !41
  store i1 %532, i1* %FPU_C2_val, !mcsema_real_eip !41
  %533 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !41
  store i1 %533, i1* %FPU_C1_val, !mcsema_real_eip !41
  %534 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !41
  store i1 %534, i1* %FPU_C0_val, !mcsema_real_eip !41
  %535 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !41
  store i1 %535, i1* %FPU_ES_val, !mcsema_real_eip !41
  %536 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !41
  store i1 %536, i1* %FPU_SF_val, !mcsema_real_eip !41
  %537 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !41
  store i1 %537, i1* %FPU_PE_val, !mcsema_real_eip !41
  %538 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !41
  store i1 %538, i1* %FPU_UE_val, !mcsema_real_eip !41
  %539 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !41
  store i1 %539, i1* %FPU_OE_val, !mcsema_real_eip !41
  %540 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !41
  store i1 %540, i1* %FPU_ZE_val, !mcsema_real_eip !41
  %541 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !41
  store i1 %541, i1* %FPU_DE_val, !mcsema_real_eip !41
  %542 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !41
  store i1 %542, i1* %FPU_IE_val, !mcsema_real_eip !41
  %543 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !41
  store i1 %543, i1* %FPU_X_val, !mcsema_real_eip !41
  %544 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !41
  store i2 %544, i2* %FPU_RC_val, !mcsema_real_eip !41
  %545 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !41
  store i2 %545, i2* %FPU_PC_val, !mcsema_real_eip !41
  %546 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !41
  store i1 %546, i1* %FPU_PM_val, !mcsema_real_eip !41
  %547 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !41
  store i1 %547, i1* %FPU_UM_val, !mcsema_real_eip !41
  %548 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !41
  store i1 %548, i1* %FPU_OM_val, !mcsema_real_eip !41
  %549 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !41
  store i1 %549, i1* %FPU_ZM_val, !mcsema_real_eip !41
  %550 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !41
  store i1 %550, i1* %FPU_DM_val, !mcsema_real_eip !41
  %551 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !41
  store i1 %551, i1* %FPU_IM_val, !mcsema_real_eip !41
  %552 = load i64, i64* %52, align 4
  store i64 %552, i64* %53, align 4
  %553 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !41
  store i16 %553, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !41
  %554 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !41
  store i64 %554, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !41
  %555 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !41
  store i16 %555, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !41
  %556 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !41
  store i64 %556, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !41
  %557 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !41
  store i11 %557, i11* %FPU_FOPCODE_val, !mcsema_real_eip !41
  %558 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !41
  store i128 %558, i128* %XMM0_val, !mcsema_real_eip !41
  %559 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !41
  store i128 %559, i128* %XMM1_val, !mcsema_real_eip !41
  %560 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !41
  store i128 %560, i128* %XMM2_val, !mcsema_real_eip !41
  %561 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !41
  store i128 %561, i128* %XMM3_val, !mcsema_real_eip !41
  %562 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !41
  store i128 %562, i128* %XMM4_val, !mcsema_real_eip !41
  %563 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !41
  store i128 %563, i128* %XMM5_val, !mcsema_real_eip !41
  %564 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !41
  store i128 %564, i128* %XMM6_val, !mcsema_real_eip !41
  %565 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !41
  store i128 %565, i128* %XMM7_val, !mcsema_real_eip !41
  %566 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !41
  store i128 %566, i128* %XMM8_val, !mcsema_real_eip !41
  %567 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !41
  store i128 %567, i128* %XMM9_val, !mcsema_real_eip !41
  %568 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !41
  store i128 %568, i128* %XMM10_val, !mcsema_real_eip !41
  %569 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !41
  store i128 %569, i128* %XMM11_val, !mcsema_real_eip !41
  %570 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !41
  store i128 %570, i128* %XMM12_val, !mcsema_real_eip !41
  %571 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !41
  store i128 %571, i128* %XMM13_val, !mcsema_real_eip !41
  %572 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !41
  store i128 %572, i128* %XMM14_val, !mcsema_real_eip !41
  %573 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !41
  store i128 %573, i128* %XMM15_val, !mcsema_real_eip !41
  %574 = load i64, i64* %STACK_BASE, !mcsema_real_eip !41
  store i64 %574, i64* %STACK_BASE_val, !mcsema_real_eip !41
  %575 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !41
  store i64 %575, i64* %STACK_LIMIT_val, !mcsema_real_eip !41
  %576 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  %577 = add i64 %576, -12, !mcsema_real_eip !42
  %578 = inttoptr i64 %577 to i64*, !mcsema_real_eip !42
  %579 = bitcast i64* %578 to i32*
  %580 = load i32, i32* %579, !mcsema_real_eip !42
  %581 = load i64, i64* %RAX_val, !mcsema_real_eip !43
  %582 = trunc i64 %581 to i32, !mcsema_real_eip !43
  %uadd351 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %582, i32 %580)
  %583 = extractvalue { i32, i1 } %uadd351, 0
  %584 = xor i32 %583, %580, !mcsema_real_eip !43
  %585 = xor i32 %584, %582, !mcsema_real_eip !43
  %586 = and i32 %585, 16, !mcsema_real_eip !43
  %587 = icmp ne i32 %586, 0, !mcsema_real_eip !43
  store i1 %587, i1* %AF_val, !mcsema_real_eip !43
  %588 = icmp slt i32 %583, 0
  store i1 %588, i1* %SF_val, !mcsema_real_eip !43
  %589 = icmp eq i32 %583, 0, !mcsema_real_eip !43
  store i1 %589, i1* %ZF_val, !mcsema_real_eip !43
  %590 = xor i32 %580, -2147483648, !mcsema_real_eip !43
  %591 = xor i32 %590, %582, !mcsema_real_eip !43
  %592 = and i32 %584, %591, !mcsema_real_eip !43
  %593 = icmp slt i32 %592, 0
  store i1 %593, i1* %OF_val, !mcsema_real_eip !43
  %594 = trunc i32 %583 to i8, !mcsema_real_eip !43
  %595 = tail call i8 @llvm.ctpop.i8(i8 %594), !mcsema_real_eip !43
  %596 = and i8 %595, 1
  %597 = icmp eq i8 %596, 0
  store i1 %597, i1* %PF_val, !mcsema_real_eip !43
  %598 = extractvalue { i32, i1 } %uadd351, 1
  store i1 %598, i1* %CF_val, !mcsema_real_eip !43
  %599 = zext i32 %583 to i64, !mcsema_real_eip !43
  store i64 %599, i64* %RDI_val, !mcsema_real_eip !43
  %600 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  %601 = add i64 %600, -4, !mcsema_real_eip !44
  %602 = inttoptr i64 %601 to i64*, !mcsema_real_eip !44
  %603 = bitcast i64* %602 to i32*
  store i32 %583, i32* %603, !mcsema_real_eip !44
  br label %block_0x5b
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) {
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
!7 = !{i64 132}
!8 = !{i64 137}
!9 = !{i64 147}
!10 = !{i64 149}
!11 = !{i64 151}
!12 = !{i64 156}
!13 = !{i64 161}
!14 = !{i64 164}
!15 = !{i64 166}
!16 = !{i64 170}
!17 = !{i64 171}
!18 = !{i64 0}
!19 = !{i64 1}
!20 = !{i64 4}
!21 = !{i64 8}
!22 = !{i64 13}
!23 = !{i64 16}
!24 = !{i64 19}
!25 = !{i64 25}
!26 = !{i64 30}
!27 = !{i64 33}
!28 = !{i64 39}
!29 = !{i64 46}
!30 = !{i64 91}
!31 = !{i64 94}
!32 = !{i64 98}
!33 = !{i64 99}
!34 = !{i64 51}
!35 = !{i64 54}
!36 = !{i64 59}
!37 = !{i64 61}
!38 = !{i64 66}
!39 = !{i64 69}
!40 = !{i64 75}
!41 = !{i64 78}
!42 = !{i64 83}
!43 = !{i64 86}
!44 = !{i64 88}
