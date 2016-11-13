; ModuleID = 'Output/test_32.clang.bc'
source_filename = "Output/test_32.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [5 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0xd2 = internal constant %0 <{ [5 x i8] c"%ld\0A\00" }>, align 64

define internal x86_64_sysvcc void @sub_60(%struct.regs*) {
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
  %110 = add i64 %109, -8, !mcsema_real_eip !8
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !8
  %112 = bitcast i64* %111 to i32*
  %113 = load i32, i32* %112, !mcsema_real_eip !8
  %114 = add i32 %113, -2
  %115 = xor i32 %114, %113, !mcsema_real_eip !8
  %116 = and i32 %115, 16, !mcsema_real_eip !8
  %117 = icmp ne i32 %116, 0, !mcsema_real_eip !8
  store i1 %117, i1* %AF_val, !mcsema_real_eip !8
  %118 = trunc i32 %114 to i8, !mcsema_real_eip !8
  %119 = tail call i8 @llvm.ctpop.i8(i8 %118), !mcsema_real_eip !8
  %120 = and i8 %119, 1
  %121 = icmp eq i8 %120, 0
  store i1 %121, i1* %PF_val, !mcsema_real_eip !8
  %122 = icmp eq i32 %114, 0, !mcsema_real_eip !8
  store i1 %122, i1* %ZF_val, !mcsema_real_eip !8
  %123 = icmp slt i32 %114, 0
  store i1 %123, i1* %SF_val, !mcsema_real_eip !8
  %124 = icmp ult i32 %113, 2, !mcsema_real_eip !8
  store i1 %124, i1* %CF_val, !mcsema_real_eip !8
  %125 = and i32 %115, %113, !mcsema_real_eip !8
  %126 = icmp slt i32 %125, 0
  store i1 %126, i1* %OF_val, !mcsema_real_eip !8
  %127 = load i1, i1* %ZF_val, !mcsema_real_eip !9
  br i1 %127, label %block_0x80, label %block_0x95, !mcsema_real_eip !9

block_0x80:                                       ; preds = %entry
  %128 = load i64, i64* %RBP_val, !mcsema_real_eip !10
  %129 = add i64 %128, -16, !mcsema_real_eip !10
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !10
  %131 = load i64, i64* %130, !mcsema_real_eip !10
  store i64 %131, i64* %RAX_val, !mcsema_real_eip !10
  %132 = add i64 %131, 8, !mcsema_real_eip !11
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !11
  %134 = load i64, i64* %133, !mcsema_real_eip !11
  store i64 %134, i64* %RDI_val, !mcsema_real_eip !11
  %135 = tail call x86_64_sysvcc i64 @atoi(i64 %134), !mcsema_real_eip !12
  store i64 %135, i64* %RAX_val, !mcsema_real_eip !12
  %136 = load i64, i64* %RBP_val, !mcsema_real_eip !13
  %137 = add i64 %136, -24, !mcsema_real_eip !13
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !13
  %139 = trunc i64 %135 to i32, !mcsema_real_eip !13
  %140 = bitcast i64* %138 to i32*
  store i32 %139, i32* %140, !mcsema_real_eip !13
  br label %block_0xa2, !mcsema_real_eip !14

block_0x95:                                       ; preds = %entry
  store i64 20, i64* %RAX_val, !mcsema_real_eip !15
  %141 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %142 = add i64 %141, -24, !mcsema_real_eip !16
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !16
  %144 = bitcast i64* %143 to i32*
  store i32 20, i32* %144, !mcsema_real_eip !16
  br label %block_0xa2, !mcsema_real_eip !17

block_0xa2:                                       ; preds = %block_0x95, %block_0x80
  %145 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  %146 = add i64 %145, -24, !mcsema_real_eip !18
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !18
  %148 = bitcast i64* %147 to i32*
  %149 = load i32, i32* %148, !mcsema_real_eip !18
  %150 = zext i32 %149 to i64, !mcsema_real_eip !18
  store i64 %150, i64* %RAX_val, !mcsema_real_eip !18
  %151 = load i64, i64* %RBP_val, !mcsema_real_eip !19
  %152 = add i64 %151, -20, !mcsema_real_eip !19
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !19
  %154 = bitcast i64* %153 to i32*
  store i32 %149, i32* %154, !mcsema_real_eip !19
  %155 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %156 = add i64 %155, -20, !mcsema_real_eip !20
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !20
  %158 = bitcast i64* %157 to i32*
  %159 = load i32, i32* %158, !mcsema_real_eip !20
  %160 = sext i32 %159 to i64, !mcsema_real_eip !20
  store i64 %160, i64* %RDI_val, !mcsema_real_eip !20
  %161 = load i64, i64* %RSP_val, !mcsema_real_eip !21
  %162 = add i64 %161, -8
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !21
  store i64 -4981261766360305936, i64* %163, !mcsema_real_eip !21
  store i64 %162, i64* %RSP_val, !mcsema_real_eip !21
  %164 = load i64, i64* %RAX_val, !mcsema_real_eip !21
  store i64 %164, i64* %RAX, !mcsema_real_eip !21
  %165 = load i64, i64* %RBX_val, !mcsema_real_eip !21
  store i64 %165, i64* %RBX, !mcsema_real_eip !21
  %166 = load i64, i64* %RCX_val, !mcsema_real_eip !21
  store i64 %166, i64* %RCX, !mcsema_real_eip !21
  %167 = load i64, i64* %RDX_val, !mcsema_real_eip !21
  store i64 %167, i64* %RDX, !mcsema_real_eip !21
  %168 = load i64, i64* %RSI_val, !mcsema_real_eip !21
  store i64 %168, i64* %RSI, !mcsema_real_eip !21
  %169 = load i64, i64* %RDI_val, !mcsema_real_eip !21
  store i64 %169, i64* %RDI, !mcsema_real_eip !21
  %170 = load i64, i64* %RSP_val, !mcsema_real_eip !21
  store i64 %170, i64* %RSP, !mcsema_real_eip !21
  %171 = load i64, i64* %RBP_val, !mcsema_real_eip !21
  store i64 %171, i64* %RBP, !mcsema_real_eip !21
  %172 = load i64, i64* %R8_val, !mcsema_real_eip !21
  store i64 %172, i64* %R8, !mcsema_real_eip !21
  %173 = load i64, i64* %R9_val, !mcsema_real_eip !21
  store i64 %173, i64* %R9, !mcsema_real_eip !21
  %174 = load i64, i64* %R10_val, !mcsema_real_eip !21
  store i64 %174, i64* %R10, !mcsema_real_eip !21
  %175 = load i64, i64* %R11_val, !mcsema_real_eip !21
  store i64 %175, i64* %R11, !mcsema_real_eip !21
  %176 = load i64, i64* %R12_val, !mcsema_real_eip !21
  store i64 %176, i64* %R12, !mcsema_real_eip !21
  %177 = load i64, i64* %R13_val, !mcsema_real_eip !21
  store i64 %177, i64* %R13, !mcsema_real_eip !21
  %178 = load i64, i64* %R14_val, !mcsema_real_eip !21
  store i64 %178, i64* %R14, !mcsema_real_eip !21
  %179 = load i64, i64* %R15_val, !mcsema_real_eip !21
  store i64 %179, i64* %R15, !mcsema_real_eip !21
  %180 = load i64, i64* %RIP_val, !mcsema_real_eip !21
  store i64 %180, i64* %RIP, !mcsema_real_eip !21
  %181 = load i1, i1* %CF_val, !mcsema_real_eip !21
  store i1 %181, i1* %CF, align 1, !mcsema_real_eip !21
  %182 = load i1, i1* %PF_val, !mcsema_real_eip !21
  store i1 %182, i1* %PF, align 1, !mcsema_real_eip !21
  %183 = load i1, i1* %AF_val, !mcsema_real_eip !21
  store i1 %183, i1* %AF, align 1, !mcsema_real_eip !21
  %184 = load i1, i1* %ZF_val, !mcsema_real_eip !21
  store i1 %184, i1* %ZF, align 1, !mcsema_real_eip !21
  %185 = load i1, i1* %SF_val, !mcsema_real_eip !21
  store i1 %185, i1* %SF, align 1, !mcsema_real_eip !21
  %186 = load i1, i1* %OF_val, !mcsema_real_eip !21
  store i1 %186, i1* %OF, align 1, !mcsema_real_eip !21
  %187 = load i1, i1* %DF_val, !mcsema_real_eip !21
  store i1 %187, i1* %DF, align 1, !mcsema_real_eip !21
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !21
  %188 = load i1, i1* %FPU_B_val, !mcsema_real_eip !21
  store i1 %188, i1* %FPU_B, align 1, !mcsema_real_eip !21
  %189 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !21
  store i1 %189, i1* %FPU_C3, align 1, !mcsema_real_eip !21
  %190 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !21
  store i3 %190, i3* %FPU_TOP, align 1, !mcsema_real_eip !21
  %191 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !21
  store i1 %191, i1* %FPU_C2, align 1, !mcsema_real_eip !21
  %192 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !21
  store i1 %192, i1* %FPU_C1, align 1, !mcsema_real_eip !21
  %193 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !21
  store i1 %193, i1* %FPU_C0, align 1, !mcsema_real_eip !21
  %194 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !21
  store i1 %194, i1* %FPU_ES, align 1, !mcsema_real_eip !21
  %195 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !21
  store i1 %195, i1* %FPU_SF, align 1, !mcsema_real_eip !21
  %196 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !21
  store i1 %196, i1* %FPU_PE, align 1, !mcsema_real_eip !21
  %197 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !21
  store i1 %197, i1* %FPU_UE, align 1, !mcsema_real_eip !21
  %198 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !21
  store i1 %198, i1* %FPU_OE, align 1, !mcsema_real_eip !21
  %199 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !21
  store i1 %199, i1* %FPU_ZE, align 1, !mcsema_real_eip !21
  %200 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !21
  store i1 %200, i1* %FPU_DE, align 1, !mcsema_real_eip !21
  %201 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !21
  store i1 %201, i1* %FPU_IE, align 1, !mcsema_real_eip !21
  %202 = load i1, i1* %FPU_X_val, !mcsema_real_eip !21
  store i1 %202, i1* %FPU_X, align 1, !mcsema_real_eip !21
  %203 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !21
  store i2 %203, i2* %FPU_RC, align 1, !mcsema_real_eip !21
  %204 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !21
  store i2 %204, i2* %FPU_PC, align 1, !mcsema_real_eip !21
  %205 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !21
  store i1 %205, i1* %FPU_PM, align 1, !mcsema_real_eip !21
  %206 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !21
  store i1 %206, i1* %FPU_UM, align 1, !mcsema_real_eip !21
  %207 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !21
  store i1 %207, i1* %FPU_OM, align 1, !mcsema_real_eip !21
  %208 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !21
  store i1 %208, i1* %FPU_ZM, align 1, !mcsema_real_eip !21
  %209 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !21
  store i1 %209, i1* %FPU_DM, align 1, !mcsema_real_eip !21
  %210 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !21
  store i1 %210, i1* %FPU_IM, align 1, !mcsema_real_eip !21
  %211 = load i64, i64* %53, align 4
  store i64 %211, i64* %52, align 4
  %212 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !21
  store i16 %212, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !21
  %213 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !21
  store i64 %213, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !21
  %214 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !21
  store i16 %214, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !21
  %215 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !21
  store i64 %215, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !21
  %216 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !21
  store i11 %216, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !21
  %217 = load i128, i128* %XMM0_val, !mcsema_real_eip !21
  store i128 %217, i128* %XMM0, align 1, !mcsema_real_eip !21
  %218 = load i128, i128* %XMM1_val, !mcsema_real_eip !21
  store i128 %218, i128* %XMM1, align 1, !mcsema_real_eip !21
  %219 = load i128, i128* %XMM2_val, !mcsema_real_eip !21
  store i128 %219, i128* %XMM2, align 1, !mcsema_real_eip !21
  %220 = load i128, i128* %XMM3_val, !mcsema_real_eip !21
  store i128 %220, i128* %XMM3, align 1, !mcsema_real_eip !21
  %221 = load i128, i128* %XMM4_val, !mcsema_real_eip !21
  store i128 %221, i128* %XMM4, align 1, !mcsema_real_eip !21
  %222 = load i128, i128* %XMM5_val, !mcsema_real_eip !21
  store i128 %222, i128* %XMM5, align 1, !mcsema_real_eip !21
  %223 = load i128, i128* %XMM6_val, !mcsema_real_eip !21
  store i128 %223, i128* %XMM6, align 1, !mcsema_real_eip !21
  %224 = load i128, i128* %XMM7_val, !mcsema_real_eip !21
  store i128 %224, i128* %XMM7, align 1, !mcsema_real_eip !21
  %225 = load i128, i128* %XMM8_val, !mcsema_real_eip !21
  store i128 %225, i128* %XMM8, align 1, !mcsema_real_eip !21
  %226 = load i128, i128* %XMM9_val, !mcsema_real_eip !21
  store i128 %226, i128* %XMM9, align 1, !mcsema_real_eip !21
  %227 = load i128, i128* %XMM10_val, !mcsema_real_eip !21
  store i128 %227, i128* %XMM10, align 1, !mcsema_real_eip !21
  %228 = load i128, i128* %XMM11_val, !mcsema_real_eip !21
  store i128 %228, i128* %XMM11, align 1, !mcsema_real_eip !21
  %229 = load i128, i128* %XMM12_val, !mcsema_real_eip !21
  store i128 %229, i128* %XMM12, align 1, !mcsema_real_eip !21
  %230 = load i128, i128* %XMM13_val, !mcsema_real_eip !21
  store i128 %230, i128* %XMM13, align 1, !mcsema_real_eip !21
  %231 = load i128, i128* %XMM14_val, !mcsema_real_eip !21
  store i128 %231, i128* %XMM14, align 1, !mcsema_real_eip !21
  %232 = load i128, i128* %XMM15_val, !mcsema_real_eip !21
  store i128 %232, i128* %XMM15, align 1, !mcsema_real_eip !21
  %233 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !21
  store i64 %233, i64* %STACK_BASE, align 1, !mcsema_real_eip !21
  %234 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !21
  store i64 %234, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !21
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !21
  %235 = load i64, i64* %RAX, !mcsema_real_eip !21
  store i64 %235, i64* %RAX_val, !mcsema_real_eip !21
  %236 = load i64, i64* %RBX, !mcsema_real_eip !21
  store i64 %236, i64* %RBX_val, !mcsema_real_eip !21
  %237 = load i64, i64* %RCX, !mcsema_real_eip !21
  store i64 %237, i64* %RCX_val, !mcsema_real_eip !21
  %238 = load i64, i64* %RDX, !mcsema_real_eip !21
  store i64 %238, i64* %RDX_val, !mcsema_real_eip !21
  %239 = load i64, i64* %RSI, !mcsema_real_eip !21
  store i64 %239, i64* %RSI_val, !mcsema_real_eip !21
  %240 = load i64, i64* %RDI, !mcsema_real_eip !21
  store i64 %240, i64* %RDI_val, !mcsema_real_eip !21
  %241 = load i64, i64* %RSP, !mcsema_real_eip !21
  store i64 %241, i64* %RSP_val, !mcsema_real_eip !21
  %242 = load i64, i64* %RBP, !mcsema_real_eip !21
  store i64 %242, i64* %RBP_val, !mcsema_real_eip !21
  %243 = load i64, i64* %R8, !mcsema_real_eip !21
  store i64 %243, i64* %R8_val, !mcsema_real_eip !21
  %244 = load i64, i64* %R9, !mcsema_real_eip !21
  store i64 %244, i64* %R9_val, !mcsema_real_eip !21
  %245 = load i64, i64* %R10, !mcsema_real_eip !21
  store i64 %245, i64* %R10_val, !mcsema_real_eip !21
  %246 = load i64, i64* %R11, !mcsema_real_eip !21
  store i64 %246, i64* %R11_val, !mcsema_real_eip !21
  %247 = load i64, i64* %R12, !mcsema_real_eip !21
  store i64 %247, i64* %R12_val, !mcsema_real_eip !21
  %248 = load i64, i64* %R13, !mcsema_real_eip !21
  store i64 %248, i64* %R13_val, !mcsema_real_eip !21
  %249 = load i64, i64* %R14, !mcsema_real_eip !21
  store i64 %249, i64* %R14_val, !mcsema_real_eip !21
  %250 = load i64, i64* %R15, !mcsema_real_eip !21
  store i64 %250, i64* %R15_val, !mcsema_real_eip !21
  %251 = load i64, i64* %RIP, !mcsema_real_eip !21
  store i64 %251, i64* %RIP_val, !mcsema_real_eip !21
  %252 = load i1, i1* %CF, align 1, !mcsema_real_eip !21
  store i1 %252, i1* %CF_val, !mcsema_real_eip !21
  %253 = load i1, i1* %PF, align 1, !mcsema_real_eip !21
  store i1 %253, i1* %PF_val, !mcsema_real_eip !21
  %254 = load i1, i1* %AF, align 1, !mcsema_real_eip !21
  store i1 %254, i1* %AF_val, !mcsema_real_eip !21
  %255 = load i1, i1* %ZF, align 1, !mcsema_real_eip !21
  store i1 %255, i1* %ZF_val, !mcsema_real_eip !21
  %256 = load i1, i1* %SF, align 1, !mcsema_real_eip !21
  store i1 %256, i1* %SF_val, !mcsema_real_eip !21
  %257 = load i1, i1* %OF, align 1, !mcsema_real_eip !21
  store i1 %257, i1* %OF_val, !mcsema_real_eip !21
  %258 = load i1, i1* %DF, align 1, !mcsema_real_eip !21
  store i1 %258, i1* %DF_val, !mcsema_real_eip !21
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !21
  %259 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !21
  store i1 %259, i1* %FPU_B_val, !mcsema_real_eip !21
  %260 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !21
  store i1 %260, i1* %FPU_C3_val, !mcsema_real_eip !21
  %261 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !21
  store i3 %261, i3* %FPU_TOP_val, !mcsema_real_eip !21
  %262 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !21
  store i1 %262, i1* %FPU_C2_val, !mcsema_real_eip !21
  %263 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !21
  store i1 %263, i1* %FPU_C1_val, !mcsema_real_eip !21
  %264 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !21
  store i1 %264, i1* %FPU_C0_val, !mcsema_real_eip !21
  %265 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !21
  store i1 %265, i1* %FPU_ES_val, !mcsema_real_eip !21
  %266 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !21
  store i1 %266, i1* %FPU_SF_val, !mcsema_real_eip !21
  %267 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !21
  store i1 %267, i1* %FPU_PE_val, !mcsema_real_eip !21
  %268 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !21
  store i1 %268, i1* %FPU_UE_val, !mcsema_real_eip !21
  %269 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !21
  store i1 %269, i1* %FPU_OE_val, !mcsema_real_eip !21
  %270 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !21
  store i1 %270, i1* %FPU_ZE_val, !mcsema_real_eip !21
  %271 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !21
  store i1 %271, i1* %FPU_DE_val, !mcsema_real_eip !21
  %272 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !21
  store i1 %272, i1* %FPU_IE_val, !mcsema_real_eip !21
  %273 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !21
  store i1 %273, i1* %FPU_X_val, !mcsema_real_eip !21
  %274 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !21
  store i2 %274, i2* %FPU_RC_val, !mcsema_real_eip !21
  %275 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !21
  store i2 %275, i2* %FPU_PC_val, !mcsema_real_eip !21
  %276 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !21
  store i1 %276, i1* %FPU_PM_val, !mcsema_real_eip !21
  %277 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !21
  store i1 %277, i1* %FPU_UM_val, !mcsema_real_eip !21
  %278 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !21
  store i1 %278, i1* %FPU_OM_val, !mcsema_real_eip !21
  %279 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !21
  store i1 %279, i1* %FPU_ZM_val, !mcsema_real_eip !21
  %280 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !21
  store i1 %280, i1* %FPU_DM_val, !mcsema_real_eip !21
  %281 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !21
  store i1 %281, i1* %FPU_IM_val, !mcsema_real_eip !21
  %282 = load i64, i64* %52, align 4
  store i64 %282, i64* %53, align 4
  %283 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !21
  store i16 %283, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !21
  %284 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !21
  store i64 %284, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !21
  %285 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !21
  store i16 %285, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !21
  %286 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !21
  store i64 %286, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !21
  %287 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !21
  store i11 %287, i11* %FPU_FOPCODE_val, !mcsema_real_eip !21
  %288 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !21
  store i128 %288, i128* %XMM0_val, !mcsema_real_eip !21
  %289 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !21
  store i128 %289, i128* %XMM1_val, !mcsema_real_eip !21
  %290 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !21
  store i128 %290, i128* %XMM2_val, !mcsema_real_eip !21
  %291 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !21
  store i128 %291, i128* %XMM3_val, !mcsema_real_eip !21
  %292 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !21
  store i128 %292, i128* %XMM4_val, !mcsema_real_eip !21
  %293 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !21
  store i128 %293, i128* %XMM5_val, !mcsema_real_eip !21
  %294 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !21
  store i128 %294, i128* %XMM6_val, !mcsema_real_eip !21
  %295 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !21
  store i128 %295, i128* %XMM7_val, !mcsema_real_eip !21
  %296 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !21
  store i128 %296, i128* %XMM8_val, !mcsema_real_eip !21
  %297 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !21
  store i128 %297, i128* %XMM9_val, !mcsema_real_eip !21
  %298 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !21
  store i128 %298, i128* %XMM10_val, !mcsema_real_eip !21
  %299 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !21
  store i128 %299, i128* %XMM11_val, !mcsema_real_eip !21
  %300 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !21
  store i128 %300, i128* %XMM12_val, !mcsema_real_eip !21
  %301 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !21
  store i128 %301, i128* %XMM13_val, !mcsema_real_eip !21
  %302 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !21
  store i128 %302, i128* %XMM14_val, !mcsema_real_eip !21
  %303 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !21
  store i128 %303, i128* %XMM15_val, !mcsema_real_eip !21
  %304 = load i64, i64* %STACK_BASE, !mcsema_real_eip !21
  store i64 %304, i64* %STACK_BASE_val, !mcsema_real_eip !21
  %305 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !21
  store i64 %305, i64* %STACK_LIMIT_val, !mcsema_real_eip !21
  store i64 ptrtoint (%0* @data_0xd2 to i64), i64* %RDI_val, !mcsema_real_eip !22
  %306 = load i64, i64* %RAX_val, !mcsema_real_eip !23
  store i64 %306, i64* %RSI_val, !mcsema_real_eip !23
  %307 = and i64 %306, -256, !mcsema_real_eip !24
  store i64 %307, i64* %RAX_val, !mcsema_real_eip !24
  %308 = load i64, i64* %RDX_val, !mcsema_real_eip !25
  %309 = load i64, i64* %RCX_val, !mcsema_real_eip !25
  %310 = load i64, i64* %R8_val, !mcsema_real_eip !25
  %311 = load i64, i64* %R9_val, !mcsema_real_eip !25
  %312 = load i64, i64* %RSP_val, !mcsema_real_eip !25
  %313 = inttoptr i64 %312 to i64*, !mcsema_real_eip !25
  %314 = load i64, i64* %313, !mcsema_real_eip !25
  %315 = add i64 %312, 8, !mcsema_real_eip !25
  %316 = inttoptr i64 %315 to i64*, !mcsema_real_eip !25
  %317 = load i64, i64* %316, !mcsema_real_eip !25
  %318 = add i64 %312, 16, !mcsema_real_eip !25
  %319 = inttoptr i64 %318 to i64*, !mcsema_real_eip !25
  %320 = load i64, i64* %319, !mcsema_real_eip !25
  %321 = add i64 %312, 24, !mcsema_real_eip !25
  %322 = inttoptr i64 %321 to i64*, !mcsema_real_eip !25
  %323 = load i64, i64* %322, !mcsema_real_eip !25
  %324 = add i64 %312, 32, !mcsema_real_eip !25
  %325 = inttoptr i64 %324 to i64*, !mcsema_real_eip !25
  %326 = load i64, i64* %325, !mcsema_real_eip !25
  %327 = add i64 %312, 40, !mcsema_real_eip !25
  %328 = inttoptr i64 %327 to i64*, !mcsema_real_eip !25
  %329 = load i64, i64* %328, !mcsema_real_eip !25
  %330 = tail call x86_64_sysvcc i64 @printf(i64 ptrtoint (%0* @data_0xd2 to i64), i64 %306, i64 %308, i64 %309, i64 %310, i64 %311, i64 %314, i64 %317, i64 %320, i64 %323, i64 %326, i64 %329), !mcsema_real_eip !25
  store i64 %330, i64* %RAX_val, !mcsema_real_eip !25
  store i64 0, i64* %RCX_val, !mcsema_real_eip !26
  %331 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %332 = add i64 %331, -28, !mcsema_real_eip !27
  %333 = inttoptr i64 %332 to i64*, !mcsema_real_eip !27
  %334 = trunc i64 %330 to i32, !mcsema_real_eip !27
  %335 = bitcast i64* %333 to i32*
  store i32 %334, i32* %335, !mcsema_real_eip !27
  %336 = load i64, i64* %RCX_val, !mcsema_real_eip !28
  %337 = and i64 %336, 4294967295
  store i64 %337, i64* %RAX_val, !mcsema_real_eip !28
  %338 = load i64, i64* %RSP_val, !mcsema_real_eip !29
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %338, i64 32)
  %339 = extractvalue { i64, i1 } %uadd, 0
  %340 = xor i64 %339, %338, !mcsema_real_eip !29
  %341 = and i64 %340, 16, !mcsema_real_eip !29
  %342 = icmp ne i64 %341, 0, !mcsema_real_eip !29
  store i1 %342, i1* %AF_val, !mcsema_real_eip !29
  %343 = icmp slt i64 %339, 0
  store i1 %343, i1* %SF_val, !mcsema_real_eip !29
  %344 = icmp eq i64 %339, 0, !mcsema_real_eip !29
  store i1 %344, i1* %ZF_val, !mcsema_real_eip !29
  %345 = xor i64 %338, -9223372036854775808, !mcsema_real_eip !29
  %346 = and i64 %340, %345, !mcsema_real_eip !29
  %347 = icmp slt i64 %346, 0
  store i1 %347, i1* %OF_val, !mcsema_real_eip !29
  %348 = trunc i64 %339 to i8, !mcsema_real_eip !29
  %349 = tail call i8 @llvm.ctpop.i8(i8 %348), !mcsema_real_eip !29
  %350 = and i8 %349, 1
  %351 = icmp eq i8 %350, 0
  store i1 %351, i1* %PF_val, !mcsema_real_eip !29
  %352 = extractvalue { i64, i1 } %uadd, 1
  store i1 %352, i1* %CF_val, !mcsema_real_eip !29
  store i64 %339, i64* %RSP_val, !mcsema_real_eip !29
  %353 = inttoptr i64 %339 to i64*, !mcsema_real_eip !30
  %354 = load i64, i64* %353, !mcsema_real_eip !30
  store i64 %354, i64* %RBP_val, !mcsema_real_eip !30
  %355 = add i64 %339, 16, !mcsema_real_eip !31
  store i64 %355, i64* %RSP_val, !mcsema_real_eip !31
  %356 = load i64, i64* %RAX_val, !mcsema_real_eip !31
  store i64 %356, i64* %RAX, !mcsema_real_eip !31
  %357 = load i64, i64* %RBX_val, !mcsema_real_eip !31
  store i64 %357, i64* %RBX, !mcsema_real_eip !31
  %358 = load i64, i64* %RCX_val, !mcsema_real_eip !31
  store i64 %358, i64* %RCX, !mcsema_real_eip !31
  %359 = load i64, i64* %RDX_val, !mcsema_real_eip !31
  store i64 %359, i64* %RDX, !mcsema_real_eip !31
  %360 = load i64, i64* %RSI_val, !mcsema_real_eip !31
  store i64 %360, i64* %RSI, !mcsema_real_eip !31
  %361 = load i64, i64* %RDI_val, !mcsema_real_eip !31
  store i64 %361, i64* %RDI, !mcsema_real_eip !31
  %362 = load i64, i64* %RSP_val, !mcsema_real_eip !31
  store i64 %362, i64* %RSP, !mcsema_real_eip !31
  %363 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  store i64 %363, i64* %RBP, !mcsema_real_eip !31
  %364 = load i64, i64* %R8_val, !mcsema_real_eip !31
  store i64 %364, i64* %R8, !mcsema_real_eip !31
  %365 = load i64, i64* %R9_val, !mcsema_real_eip !31
  store i64 %365, i64* %R9, !mcsema_real_eip !31
  %366 = load i64, i64* %R10_val, !mcsema_real_eip !31
  store i64 %366, i64* %R10, !mcsema_real_eip !31
  %367 = load i64, i64* %R11_val, !mcsema_real_eip !31
  store i64 %367, i64* %R11, !mcsema_real_eip !31
  %368 = load i64, i64* %R12_val, !mcsema_real_eip !31
  store i64 %368, i64* %R12, !mcsema_real_eip !31
  %369 = load i64, i64* %R13_val, !mcsema_real_eip !31
  store i64 %369, i64* %R13, !mcsema_real_eip !31
  %370 = load i64, i64* %R14_val, !mcsema_real_eip !31
  store i64 %370, i64* %R14, !mcsema_real_eip !31
  %371 = load i64, i64* %R15_val, !mcsema_real_eip !31
  store i64 %371, i64* %R15, !mcsema_real_eip !31
  %372 = load i64, i64* %RIP_val, !mcsema_real_eip !31
  store i64 %372, i64* %RIP, !mcsema_real_eip !31
  %373 = load i1, i1* %CF_val, !mcsema_real_eip !31
  store i1 %373, i1* %CF, align 1, !mcsema_real_eip !31
  %374 = load i1, i1* %PF_val, !mcsema_real_eip !31
  store i1 %374, i1* %PF, align 1, !mcsema_real_eip !31
  %375 = load i1, i1* %AF_val, !mcsema_real_eip !31
  store i1 %375, i1* %AF, align 1, !mcsema_real_eip !31
  %376 = load i1, i1* %ZF_val, !mcsema_real_eip !31
  store i1 %376, i1* %ZF, align 1, !mcsema_real_eip !31
  %377 = load i1, i1* %SF_val, !mcsema_real_eip !31
  store i1 %377, i1* %SF, align 1, !mcsema_real_eip !31
  %378 = load i1, i1* %OF_val, !mcsema_real_eip !31
  store i1 %378, i1* %OF, align 1, !mcsema_real_eip !31
  %379 = load i1, i1* %DF_val, !mcsema_real_eip !31
  store i1 %379, i1* %DF, align 1, !mcsema_real_eip !31
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !31
  %380 = load i1, i1* %FPU_B_val, !mcsema_real_eip !31
  store i1 %380, i1* %FPU_B, align 1, !mcsema_real_eip !31
  %381 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !31
  store i1 %381, i1* %FPU_C3, align 1, !mcsema_real_eip !31
  %382 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !31
  store i3 %382, i3* %FPU_TOP, align 1, !mcsema_real_eip !31
  %383 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !31
  store i1 %383, i1* %FPU_C2, align 1, !mcsema_real_eip !31
  %384 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !31
  store i1 %384, i1* %FPU_C1, align 1, !mcsema_real_eip !31
  %385 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !31
  store i1 %385, i1* %FPU_C0, align 1, !mcsema_real_eip !31
  %386 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !31
  store i1 %386, i1* %FPU_ES, align 1, !mcsema_real_eip !31
  %387 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !31
  store i1 %387, i1* %FPU_SF, align 1, !mcsema_real_eip !31
  %388 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !31
  store i1 %388, i1* %FPU_PE, align 1, !mcsema_real_eip !31
  %389 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !31
  store i1 %389, i1* %FPU_UE, align 1, !mcsema_real_eip !31
  %390 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !31
  store i1 %390, i1* %FPU_OE, align 1, !mcsema_real_eip !31
  %391 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !31
  store i1 %391, i1* %FPU_ZE, align 1, !mcsema_real_eip !31
  %392 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !31
  store i1 %392, i1* %FPU_DE, align 1, !mcsema_real_eip !31
  %393 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !31
  store i1 %393, i1* %FPU_IE, align 1, !mcsema_real_eip !31
  %394 = load i1, i1* %FPU_X_val, !mcsema_real_eip !31
  store i1 %394, i1* %FPU_X, align 1, !mcsema_real_eip !31
  %395 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !31
  store i2 %395, i2* %FPU_RC, align 1, !mcsema_real_eip !31
  %396 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !31
  store i2 %396, i2* %FPU_PC, align 1, !mcsema_real_eip !31
  %397 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !31
  store i1 %397, i1* %FPU_PM, align 1, !mcsema_real_eip !31
  %398 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !31
  store i1 %398, i1* %FPU_UM, align 1, !mcsema_real_eip !31
  %399 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !31
  store i1 %399, i1* %FPU_OM, align 1, !mcsema_real_eip !31
  %400 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !31
  store i1 %400, i1* %FPU_ZM, align 1, !mcsema_real_eip !31
  %401 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !31
  store i1 %401, i1* %FPU_DM, align 1, !mcsema_real_eip !31
  %402 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !31
  store i1 %402, i1* %FPU_IM, align 1, !mcsema_real_eip !31
  %403 = load i64, i64* %53, align 4
  store i64 %403, i64* %52, align 4
  %404 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !31
  store i16 %404, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !31
  %405 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !31
  store i64 %405, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !31
  %406 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !31
  store i16 %406, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !31
  %407 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !31
  store i64 %407, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !31
  %408 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !31
  store i11 %408, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !31
  %409 = load i128, i128* %XMM0_val, !mcsema_real_eip !31
  store i128 %409, i128* %XMM0, align 1, !mcsema_real_eip !31
  %410 = load i128, i128* %XMM1_val, !mcsema_real_eip !31
  store i128 %410, i128* %XMM1, align 1, !mcsema_real_eip !31
  %411 = load i128, i128* %XMM2_val, !mcsema_real_eip !31
  store i128 %411, i128* %XMM2, align 1, !mcsema_real_eip !31
  %412 = load i128, i128* %XMM3_val, !mcsema_real_eip !31
  store i128 %412, i128* %XMM3, align 1, !mcsema_real_eip !31
  %413 = load i128, i128* %XMM4_val, !mcsema_real_eip !31
  store i128 %413, i128* %XMM4, align 1, !mcsema_real_eip !31
  %414 = load i128, i128* %XMM5_val, !mcsema_real_eip !31
  store i128 %414, i128* %XMM5, align 1, !mcsema_real_eip !31
  %415 = load i128, i128* %XMM6_val, !mcsema_real_eip !31
  store i128 %415, i128* %XMM6, align 1, !mcsema_real_eip !31
  %416 = load i128, i128* %XMM7_val, !mcsema_real_eip !31
  store i128 %416, i128* %XMM7, align 1, !mcsema_real_eip !31
  %417 = load i128, i128* %XMM8_val, !mcsema_real_eip !31
  store i128 %417, i128* %XMM8, align 1, !mcsema_real_eip !31
  %418 = load i128, i128* %XMM9_val, !mcsema_real_eip !31
  store i128 %418, i128* %XMM9, align 1, !mcsema_real_eip !31
  %419 = load i128, i128* %XMM10_val, !mcsema_real_eip !31
  store i128 %419, i128* %XMM10, align 1, !mcsema_real_eip !31
  %420 = load i128, i128* %XMM11_val, !mcsema_real_eip !31
  store i128 %420, i128* %XMM11, align 1, !mcsema_real_eip !31
  %421 = load i128, i128* %XMM12_val, !mcsema_real_eip !31
  store i128 %421, i128* %XMM12, align 1, !mcsema_real_eip !31
  %422 = load i128, i128* %XMM13_val, !mcsema_real_eip !31
  store i128 %422, i128* %XMM13, align 1, !mcsema_real_eip !31
  %423 = load i128, i128* %XMM14_val, !mcsema_real_eip !31
  store i128 %423, i128* %XMM14, align 1, !mcsema_real_eip !31
  %424 = load i128, i128* %XMM15_val, !mcsema_real_eip !31
  store i128 %424, i128* %XMM15, align 1, !mcsema_real_eip !31
  %425 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !31
  store i64 %425, i64* %STACK_BASE, align 1, !mcsema_real_eip !31
  %426 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !31
  store i64 %426, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !32
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !32
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !32
  %XMM15_val = alloca i128, !mcsema_real_eip !32
  %XMM14_val = alloca i128, !mcsema_real_eip !32
  %XMM13_val = alloca i128, !mcsema_real_eip !32
  %XMM12_val = alloca i128, !mcsema_real_eip !32
  %XMM11_val = alloca i128, !mcsema_real_eip !32
  %XMM10_val = alloca i128, !mcsema_real_eip !32
  %XMM9_val = alloca i128, !mcsema_real_eip !32
  %XMM8_val = alloca i128, !mcsema_real_eip !32
  %XMM7_val = alloca i128, !mcsema_real_eip !32
  %XMM6_val = alloca i128, !mcsema_real_eip !32
  %XMM5_val = alloca i128, !mcsema_real_eip !32
  %XMM4_val = alloca i128, !mcsema_real_eip !32
  %XMM3_val = alloca i128, !mcsema_real_eip !32
  %XMM2_val = alloca i128, !mcsema_real_eip !32
  %XMM1_val = alloca i128, !mcsema_real_eip !32
  %XMM0_val = alloca i128, !mcsema_real_eip !32
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !32
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !32
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !32
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !32
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !32
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !32
  %FPU_IM_val = alloca i1, !mcsema_real_eip !32
  %FPU_DM_val = alloca i1, !mcsema_real_eip !32
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !32
  %FPU_OM_val = alloca i1, !mcsema_real_eip !32
  %FPU_UM_val = alloca i1, !mcsema_real_eip !32
  %FPU_PM_val = alloca i1, !mcsema_real_eip !32
  %FPU_PC_val = alloca i2, !mcsema_real_eip !32
  %FPU_RC_val = alloca i2, !mcsema_real_eip !32
  %FPU_X_val = alloca i1, !mcsema_real_eip !32
  %FPU_IE_val = alloca i1, !mcsema_real_eip !32
  %FPU_DE_val = alloca i1, !mcsema_real_eip !32
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !32
  %FPU_OE_val = alloca i1, !mcsema_real_eip !32
  %FPU_UE_val = alloca i1, !mcsema_real_eip !32
  %FPU_PE_val = alloca i1, !mcsema_real_eip !32
  %FPU_SF_val = alloca i1, !mcsema_real_eip !32
  %FPU_ES_val = alloca i1, !mcsema_real_eip !32
  %FPU_C0_val = alloca i1, !mcsema_real_eip !32
  %FPU_C1_val = alloca i1, !mcsema_real_eip !32
  %FPU_C2_val = alloca i1, !mcsema_real_eip !32
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !32
  %FPU_C3_val = alloca i1, !mcsema_real_eip !32
  %FPU_B_val = alloca i1, !mcsema_real_eip !32
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !32
  %DF_val = alloca i1, !mcsema_real_eip !32
  %OF_val = alloca i1, !mcsema_real_eip !32
  %SF_val = alloca i1, !mcsema_real_eip !32
  %CF_val = alloca i1, !mcsema_real_eip !32
  %AF_val = alloca i1, !mcsema_real_eip !32
  %PF_val = alloca i1, !mcsema_real_eip !32
  %ZF_val = alloca i1, !mcsema_real_eip !32
  %RIP_val = alloca i64, !mcsema_real_eip !32
  %R14_val = alloca i64, !mcsema_real_eip !32
  %R13_val = alloca i64, !mcsema_real_eip !32
  %R12_val = alloca i64, !mcsema_real_eip !32
  %R11_val = alloca i64, !mcsema_real_eip !32
  %R10_val = alloca i64, !mcsema_real_eip !32
  %R9_val = alloca i64, !mcsema_real_eip !32
  %R8_val = alloca i64, !mcsema_real_eip !32
  %RSP_val = alloca i64, !mcsema_real_eip !32
  %RBP_val = alloca i64, !mcsema_real_eip !32
  %RDI_val = alloca i64, !mcsema_real_eip !32
  %RSI_val = alloca i64, !mcsema_real_eip !32
  %RDX_val = alloca i64, !mcsema_real_eip !32
  %RCX_val = alloca i64, !mcsema_real_eip !32
  %RBX_val = alloca i64, !mcsema_real_eip !32
  %RAX_val = alloca i64, !mcsema_real_eip !32
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !32
  %1 = load i64, i64* %RAX, !mcsema_real_eip !32
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !32
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !32
  %2 = load i64, i64* %RBX, !mcsema_real_eip !32
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !32
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !32
  %3 = load i64, i64* %RCX, !mcsema_real_eip !32
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !32
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !32
  %4 = load i64, i64* %RDX, !mcsema_real_eip !32
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !32
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !32
  %5 = load i64, i64* %RSI, !mcsema_real_eip !32
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !32
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !32
  %6 = load i64, i64* %RDI, !mcsema_real_eip !32
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !32
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !32
  %7 = load i64, i64* %RSP, !mcsema_real_eip !32
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !32
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !32
  %8 = load i64, i64* %RBP, !mcsema_real_eip !32
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !32
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !32
  %9 = load i64, i64* %R8, !mcsema_real_eip !32
  store i64 %9, i64* %R8_val, !mcsema_real_eip !32
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !32
  %10 = load i64, i64* %R9, !mcsema_real_eip !32
  store i64 %10, i64* %R9_val, !mcsema_real_eip !32
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !32
  %11 = load i64, i64* %R10, !mcsema_real_eip !32
  store i64 %11, i64* %R10_val, !mcsema_real_eip !32
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !32
  %12 = load i64, i64* %R11, !mcsema_real_eip !32
  store i64 %12, i64* %R11_val, !mcsema_real_eip !32
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !32
  %13 = load i64, i64* %R12, !mcsema_real_eip !32
  store i64 %13, i64* %R12_val, !mcsema_real_eip !32
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !32
  %14 = load i64, i64* %R13, !mcsema_real_eip !32
  store i64 %14, i64* %R13_val, !mcsema_real_eip !32
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !32
  %15 = load i64, i64* %R14, !mcsema_real_eip !32
  store i64 %15, i64* %R14_val, !mcsema_real_eip !32
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !32
  %16 = load i64, i64* %R15, !mcsema_real_eip !32
  store i64 %16, i64* %R15_val, !mcsema_real_eip !32
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !32
  %17 = load i64, i64* %RIP, !mcsema_real_eip !32
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !32
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !32
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !32
  store i1 %18, i1* %CF_val, !mcsema_real_eip !32
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !32
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !32
  store i1 %19, i1* %PF_val, !mcsema_real_eip !32
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !32
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !32
  store i1 %20, i1* %AF_val, !mcsema_real_eip !32
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !32
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !32
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !32
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !32
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !32
  store i1 %22, i1* %SF_val, !mcsema_real_eip !32
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !32
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !32
  store i1 %23, i1* %OF_val, !mcsema_real_eip !32
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !32
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !32
  store i1 %24, i1* %DF_val, !mcsema_real_eip !32
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !32
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !32
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !32
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !32
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !32
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !32
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !32
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !32
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !32
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !32
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !32
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !32
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !32
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !32
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !32
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !32
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !32
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !32
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !32
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !32
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !32
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !32
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !32
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !32
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !32
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !32
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !32
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !32
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !32
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !32
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !32
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !32
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !32
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !32
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !32
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !32
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !32
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !32
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !32
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !32
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !32
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !32
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !32
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !32
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !32
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !32
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !32
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !32
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !32
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !32
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !32
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !32
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !32
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !32
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !32
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !32
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !32
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !32
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !32
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !32
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !32
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !32
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !32
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !32
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !32
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !32
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !32
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !32
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !32
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !32
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !32
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !32
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !32
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !32
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !32
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !32
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !32
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !32
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !32
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !32
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !32
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !32
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !32
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !32
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !32
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !32
  %59 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !32
  store i11 %59, i11* %FPU_FOPCODE_val, !mcsema_real_eip !32
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !32
  %60 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !32
  store i128 %60, i128* %XMM0_val, !mcsema_real_eip !32
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !32
  %61 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !32
  store i128 %61, i128* %XMM1_val, !mcsema_real_eip !32
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !32
  %62 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !32
  store i128 %62, i128* %XMM2_val, !mcsema_real_eip !32
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !32
  %63 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !32
  store i128 %63, i128* %XMM3_val, !mcsema_real_eip !32
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !32
  %64 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !32
  store i128 %64, i128* %XMM4_val, !mcsema_real_eip !32
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !32
  %65 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !32
  store i128 %65, i128* %XMM5_val, !mcsema_real_eip !32
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !32
  %66 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !32
  store i128 %66, i128* %XMM6_val, !mcsema_real_eip !32
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !32
  %67 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !32
  store i128 %67, i128* %XMM7_val, !mcsema_real_eip !32
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !32
  %68 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !32
  store i128 %68, i128* %XMM8_val, !mcsema_real_eip !32
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !32
  %69 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !32
  store i128 %69, i128* %XMM9_val, !mcsema_real_eip !32
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !32
  %70 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !32
  store i128 %70, i128* %XMM10_val, !mcsema_real_eip !32
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !32
  %71 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !32
  store i128 %71, i128* %XMM11_val, !mcsema_real_eip !32
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !32
  %72 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !32
  store i128 %72, i128* %XMM12_val, !mcsema_real_eip !32
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !32
  %73 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !32
  store i128 %73, i128* %XMM13_val, !mcsema_real_eip !32
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !32
  %74 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !32
  store i128 %74, i128* %XMM14_val, !mcsema_real_eip !32
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !32
  %75 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !32
  store i128 %75, i128* %XMM15_val, !mcsema_real_eip !32
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !32
  %76 = load i64, i64* %STACK_BASE, !mcsema_real_eip !32
  store i64 %76, i64* %STACK_BASE_val, !mcsema_real_eip !32
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !32
  %77 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !32
  store i64 %77, i64* %STACK_LIMIT_val, !mcsema_real_eip !32
  %78 = load i64, i64* %RBP_val, !mcsema_real_eip !32
  %79 = load i64, i64* %RSP_val, !mcsema_real_eip !32
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !32
  store i64 %78, i64* %81, !mcsema_real_eip !32
  store i64 %80, i64* %RBP_val, !mcsema_real_eip !33
  %82 = add i64 %79, -40
  %83 = xor i64 %82, %80, !mcsema_real_eip !34
  %84 = and i64 %83, 16, !mcsema_real_eip !34
  %85 = icmp ne i64 %84, 0, !mcsema_real_eip !34
  store i1 %85, i1* %AF_val, !mcsema_real_eip !34
  %86 = trunc i64 %82 to i8, !mcsema_real_eip !34
  %87 = tail call i8 @llvm.ctpop.i8(i8 %86), !mcsema_real_eip !34
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  store i1 %89, i1* %PF_val, !mcsema_real_eip !34
  %90 = icmp eq i64 %82, 0, !mcsema_real_eip !34
  store i1 %90, i1* %ZF_val, !mcsema_real_eip !34
  %91 = icmp slt i64 %82, 0
  store i1 %91, i1* %SF_val, !mcsema_real_eip !34
  %92 = icmp ult i64 %80, 32, !mcsema_real_eip !34
  store i1 %92, i1* %CF_val, !mcsema_real_eip !34
  %93 = and i64 %83, %80, !mcsema_real_eip !34
  %94 = icmp slt i64 %93, 0
  store i1 %94, i1* %OF_val, !mcsema_real_eip !34
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !34
  %95 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %96 = add i64 %95, -16, !mcsema_real_eip !35
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !35
  %98 = load i64, i64* %RDI_val, !mcsema_real_eip !35
  store i64 %98, i64* %97, !mcsema_real_eip !35
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  %100 = add i64 %99, -16, !mcsema_real_eip !36
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !36
  %102 = load i64, i64* %101, !mcsema_real_eip !36
  %103 = add i64 %102, -2
  %104 = xor i64 %103, %102, !mcsema_real_eip !36
  %105 = and i64 %104, 16, !mcsema_real_eip !36
  %106 = icmp ne i64 %105, 0, !mcsema_real_eip !36
  store i1 %106, i1* %AF_val, !mcsema_real_eip !36
  %107 = trunc i64 %103 to i8, !mcsema_real_eip !36
  %108 = tail call i8 @llvm.ctpop.i8(i8 %107), !mcsema_real_eip !36
  %109 = and i8 %108, 1
  %110 = icmp eq i8 %109, 0
  store i1 %110, i1* %PF_val, !mcsema_real_eip !36
  %111 = icmp eq i64 %103, 0, !mcsema_real_eip !36
  store i1 %111, i1* %ZF_val, !mcsema_real_eip !36
  %112 = icmp slt i64 %103, 0
  store i1 %112, i1* %SF_val, !mcsema_real_eip !36
  %113 = icmp ult i64 %102, 2, !mcsema_real_eip !36
  store i1 %113, i1* %CF_val, !mcsema_real_eip !36
  %114 = and i64 %104, %102, !mcsema_real_eip !36
  %115 = icmp slt i64 %114, 0
  store i1 %115, i1* %OF_val, !mcsema_real_eip !36
  %116 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  br i1 %113, label %block_0x17, label %block_0x24, !mcsema_real_eip !38

block_0x17:                                       ; preds = %entry
  %117 = add i64 %116, -8, !mcsema_real_eip !39
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !39
  store i64 1, i64* %118, !mcsema_real_eip !39
  br label %block_0x50, !mcsema_real_eip !40

block_0x24:                                       ; preds = %entry
  %119 = add i64 %116, -16, !mcsema_real_eip !37
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !37
  %121 = load i64, i64* %120, !mcsema_real_eip !37
  %122 = add i64 %121, -2
  %123 = xor i64 %122, %121, !mcsema_real_eip !41
  %124 = and i64 %123, 16, !mcsema_real_eip !41
  %125 = icmp ne i64 %124, 0, !mcsema_real_eip !41
  store i1 %125, i1* %AF_val, !mcsema_real_eip !41
  %126 = trunc i64 %122 to i8, !mcsema_real_eip !41
  %127 = tail call i8 @llvm.ctpop.i8(i8 %126), !mcsema_real_eip !41
  %128 = and i8 %127, 1
  %129 = icmp eq i8 %128, 0
  store i1 %129, i1* %PF_val, !mcsema_real_eip !41
  %130 = icmp eq i64 %122, 0, !mcsema_real_eip !41
  store i1 %130, i1* %ZF_val, !mcsema_real_eip !41
  %131 = icmp slt i64 %122, 0
  store i1 %131, i1* %SF_val, !mcsema_real_eip !41
  %132 = icmp ult i64 %121, 2, !mcsema_real_eip !41
  store i1 %132, i1* %CF_val, !mcsema_real_eip !41
  %133 = and i64 %123, %121, !mcsema_real_eip !41
  %134 = icmp slt i64 %133, 0
  store i1 %134, i1* %OF_val, !mcsema_real_eip !41
  store i64 %122, i64* %RAX_val, !mcsema_real_eip !41
  store i64 %122, i64* %RDI_val, !mcsema_real_eip !42
  %135 = load i64, i64* %RSP_val, !mcsema_real_eip !43
  %136 = add i64 %135, -8
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !43
  store i64 -4981261766360305936, i64* %137, !mcsema_real_eip !43
  store i64 %136, i64* %RSP_val, !mcsema_real_eip !43
  %138 = load i64, i64* %RAX_val, !mcsema_real_eip !43
  store i64 %138, i64* %RAX, !mcsema_real_eip !43
  %139 = load i64, i64* %RBX_val, !mcsema_real_eip !43
  store i64 %139, i64* %RBX, !mcsema_real_eip !43
  %140 = load i64, i64* %RCX_val, !mcsema_real_eip !43
  store i64 %140, i64* %RCX, !mcsema_real_eip !43
  %141 = load i64, i64* %RDX_val, !mcsema_real_eip !43
  store i64 %141, i64* %RDX, !mcsema_real_eip !43
  %142 = load i64, i64* %RSI_val, !mcsema_real_eip !43
  store i64 %142, i64* %RSI, !mcsema_real_eip !43
  %143 = load i64, i64* %RDI_val, !mcsema_real_eip !43
  store i64 %143, i64* %RDI, !mcsema_real_eip !43
  %144 = load i64, i64* %RSP_val, !mcsema_real_eip !43
  store i64 %144, i64* %RSP, !mcsema_real_eip !43
  %145 = load i64, i64* %RBP_val, !mcsema_real_eip !43
  store i64 %145, i64* %RBP, !mcsema_real_eip !43
  %146 = load i64, i64* %R8_val, !mcsema_real_eip !43
  store i64 %146, i64* %R8, !mcsema_real_eip !43
  %147 = load i64, i64* %R9_val, !mcsema_real_eip !43
  store i64 %147, i64* %R9, !mcsema_real_eip !43
  %148 = load i64, i64* %R10_val, !mcsema_real_eip !43
  store i64 %148, i64* %R10, !mcsema_real_eip !43
  %149 = load i64, i64* %R11_val, !mcsema_real_eip !43
  store i64 %149, i64* %R11, !mcsema_real_eip !43
  %150 = load i64, i64* %R12_val, !mcsema_real_eip !43
  store i64 %150, i64* %R12, !mcsema_real_eip !43
  %151 = load i64, i64* %R13_val, !mcsema_real_eip !43
  store i64 %151, i64* %R13, !mcsema_real_eip !43
  %152 = load i64, i64* %R14_val, !mcsema_real_eip !43
  store i64 %152, i64* %R14, !mcsema_real_eip !43
  %153 = load i64, i64* %R15_val, !mcsema_real_eip !43
  store i64 %153, i64* %R15, !mcsema_real_eip !43
  %154 = load i64, i64* %RIP_val, !mcsema_real_eip !43
  store i64 %154, i64* %RIP, !mcsema_real_eip !43
  %155 = load i1, i1* %CF_val, !mcsema_real_eip !43
  store i1 %155, i1* %CF, align 1, !mcsema_real_eip !43
  %156 = load i1, i1* %PF_val, !mcsema_real_eip !43
  store i1 %156, i1* %PF, align 1, !mcsema_real_eip !43
  %157 = load i1, i1* %AF_val, !mcsema_real_eip !43
  store i1 %157, i1* %AF, align 1, !mcsema_real_eip !43
  %158 = load i1, i1* %ZF_val, !mcsema_real_eip !43
  store i1 %158, i1* %ZF, align 1, !mcsema_real_eip !43
  %159 = load i1, i1* %SF_val, !mcsema_real_eip !43
  store i1 %159, i1* %SF, align 1, !mcsema_real_eip !43
  %160 = load i1, i1* %OF_val, !mcsema_real_eip !43
  store i1 %160, i1* %OF, align 1, !mcsema_real_eip !43
  %161 = load i1, i1* %DF_val, !mcsema_real_eip !43
  store i1 %161, i1* %DF, align 1, !mcsema_real_eip !43
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !43
  %162 = load i1, i1* %FPU_B_val, !mcsema_real_eip !43
  store i1 %162, i1* %FPU_B, align 1, !mcsema_real_eip !43
  %163 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !43
  store i1 %163, i1* %FPU_C3, align 1, !mcsema_real_eip !43
  %164 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !43
  store i3 %164, i3* %FPU_TOP, align 1, !mcsema_real_eip !43
  %165 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !43
  store i1 %165, i1* %FPU_C2, align 1, !mcsema_real_eip !43
  %166 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !43
  store i1 %166, i1* %FPU_C1, align 1, !mcsema_real_eip !43
  %167 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !43
  store i1 %167, i1* %FPU_C0, align 1, !mcsema_real_eip !43
  %168 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !43
  store i1 %168, i1* %FPU_ES, align 1, !mcsema_real_eip !43
  %169 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !43
  store i1 %169, i1* %FPU_SF, align 1, !mcsema_real_eip !43
  %170 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !43
  store i1 %170, i1* %FPU_PE, align 1, !mcsema_real_eip !43
  %171 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !43
  store i1 %171, i1* %FPU_UE, align 1, !mcsema_real_eip !43
  %172 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !43
  store i1 %172, i1* %FPU_OE, align 1, !mcsema_real_eip !43
  %173 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !43
  store i1 %173, i1* %FPU_ZE, align 1, !mcsema_real_eip !43
  %174 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !43
  store i1 %174, i1* %FPU_DE, align 1, !mcsema_real_eip !43
  %175 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !43
  store i1 %175, i1* %FPU_IE, align 1, !mcsema_real_eip !43
  %176 = load i1, i1* %FPU_X_val, !mcsema_real_eip !43
  store i1 %176, i1* %FPU_X, align 1, !mcsema_real_eip !43
  %177 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !43
  store i2 %177, i2* %FPU_RC, align 1, !mcsema_real_eip !43
  %178 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !43
  store i2 %178, i2* %FPU_PC, align 1, !mcsema_real_eip !43
  %179 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !43
  store i1 %179, i1* %FPU_PM, align 1, !mcsema_real_eip !43
  %180 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !43
  store i1 %180, i1* %FPU_UM, align 1, !mcsema_real_eip !43
  %181 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !43
  store i1 %181, i1* %FPU_OM, align 1, !mcsema_real_eip !43
  %182 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !43
  store i1 %182, i1* %FPU_ZM, align 1, !mcsema_real_eip !43
  %183 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !43
  store i1 %183, i1* %FPU_DM, align 1, !mcsema_real_eip !43
  %184 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !43
  store i1 %184, i1* %FPU_IM, align 1, !mcsema_real_eip !43
  %185 = load i64, i64* %53, align 4
  store i64 %185, i64* %52, align 4
  %186 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !43
  store i16 %186, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !43
  %187 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !43
  store i64 %187, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !43
  %188 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !43
  store i16 %188, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !43
  %189 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !43
  store i64 %189, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !43
  %190 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !43
  store i11 %190, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !43
  %191 = load i128, i128* %XMM0_val, !mcsema_real_eip !43
  store i128 %191, i128* %XMM0, align 1, !mcsema_real_eip !43
  %192 = load i128, i128* %XMM1_val, !mcsema_real_eip !43
  store i128 %192, i128* %XMM1, align 1, !mcsema_real_eip !43
  %193 = load i128, i128* %XMM2_val, !mcsema_real_eip !43
  store i128 %193, i128* %XMM2, align 1, !mcsema_real_eip !43
  %194 = load i128, i128* %XMM3_val, !mcsema_real_eip !43
  store i128 %194, i128* %XMM3, align 1, !mcsema_real_eip !43
  %195 = load i128, i128* %XMM4_val, !mcsema_real_eip !43
  store i128 %195, i128* %XMM4, align 1, !mcsema_real_eip !43
  %196 = load i128, i128* %XMM5_val, !mcsema_real_eip !43
  store i128 %196, i128* %XMM5, align 1, !mcsema_real_eip !43
  %197 = load i128, i128* %XMM6_val, !mcsema_real_eip !43
  store i128 %197, i128* %XMM6, align 1, !mcsema_real_eip !43
  %198 = load i128, i128* %XMM7_val, !mcsema_real_eip !43
  store i128 %198, i128* %XMM7, align 1, !mcsema_real_eip !43
  %199 = load i128, i128* %XMM8_val, !mcsema_real_eip !43
  store i128 %199, i128* %XMM8, align 1, !mcsema_real_eip !43
  %200 = load i128, i128* %XMM9_val, !mcsema_real_eip !43
  store i128 %200, i128* %XMM9, align 1, !mcsema_real_eip !43
  %201 = load i128, i128* %XMM10_val, !mcsema_real_eip !43
  store i128 %201, i128* %XMM10, align 1, !mcsema_real_eip !43
  %202 = load i128, i128* %XMM11_val, !mcsema_real_eip !43
  store i128 %202, i128* %XMM11, align 1, !mcsema_real_eip !43
  %203 = load i128, i128* %XMM12_val, !mcsema_real_eip !43
  store i128 %203, i128* %XMM12, align 1, !mcsema_real_eip !43
  %204 = load i128, i128* %XMM13_val, !mcsema_real_eip !43
  store i128 %204, i128* %XMM13, align 1, !mcsema_real_eip !43
  %205 = load i128, i128* %XMM14_val, !mcsema_real_eip !43
  store i128 %205, i128* %XMM14, align 1, !mcsema_real_eip !43
  %206 = load i128, i128* %XMM15_val, !mcsema_real_eip !43
  store i128 %206, i128* %XMM15, align 1, !mcsema_real_eip !43
  %207 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !43
  store i64 %207, i64* %STACK_BASE, align 1, !mcsema_real_eip !43
  %208 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !43
  store i64 %208, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !43
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !43
  %209 = load i64, i64* %RAX, !mcsema_real_eip !43
  store i64 %209, i64* %RAX_val, !mcsema_real_eip !43
  %210 = load i64, i64* %RBX, !mcsema_real_eip !43
  store i64 %210, i64* %RBX_val, !mcsema_real_eip !43
  %211 = load i64, i64* %RCX, !mcsema_real_eip !43
  store i64 %211, i64* %RCX_val, !mcsema_real_eip !43
  %212 = load i64, i64* %RDX, !mcsema_real_eip !43
  store i64 %212, i64* %RDX_val, !mcsema_real_eip !43
  %213 = load i64, i64* %RSI, !mcsema_real_eip !43
  store i64 %213, i64* %RSI_val, !mcsema_real_eip !43
  %214 = load i64, i64* %RDI, !mcsema_real_eip !43
  store i64 %214, i64* %RDI_val, !mcsema_real_eip !43
  %215 = load i64, i64* %RSP, !mcsema_real_eip !43
  store i64 %215, i64* %RSP_val, !mcsema_real_eip !43
  %216 = load i64, i64* %RBP, !mcsema_real_eip !43
  store i64 %216, i64* %RBP_val, !mcsema_real_eip !43
  %217 = load i64, i64* %R8, !mcsema_real_eip !43
  store i64 %217, i64* %R8_val, !mcsema_real_eip !43
  %218 = load i64, i64* %R9, !mcsema_real_eip !43
  store i64 %218, i64* %R9_val, !mcsema_real_eip !43
  %219 = load i64, i64* %R10, !mcsema_real_eip !43
  store i64 %219, i64* %R10_val, !mcsema_real_eip !43
  %220 = load i64, i64* %R11, !mcsema_real_eip !43
  store i64 %220, i64* %R11_val, !mcsema_real_eip !43
  %221 = load i64, i64* %R12, !mcsema_real_eip !43
  store i64 %221, i64* %R12_val, !mcsema_real_eip !43
  %222 = load i64, i64* %R13, !mcsema_real_eip !43
  store i64 %222, i64* %R13_val, !mcsema_real_eip !43
  %223 = load i64, i64* %R14, !mcsema_real_eip !43
  store i64 %223, i64* %R14_val, !mcsema_real_eip !43
  %224 = load i64, i64* %R15, !mcsema_real_eip !43
  store i64 %224, i64* %R15_val, !mcsema_real_eip !43
  %225 = load i64, i64* %RIP, !mcsema_real_eip !43
  store i64 %225, i64* %RIP_val, !mcsema_real_eip !43
  %226 = load i1, i1* %CF, align 1, !mcsema_real_eip !43
  store i1 %226, i1* %CF_val, !mcsema_real_eip !43
  %227 = load i1, i1* %PF, align 1, !mcsema_real_eip !43
  store i1 %227, i1* %PF_val, !mcsema_real_eip !43
  %228 = load i1, i1* %AF, align 1, !mcsema_real_eip !43
  store i1 %228, i1* %AF_val, !mcsema_real_eip !43
  %229 = load i1, i1* %ZF, align 1, !mcsema_real_eip !43
  store i1 %229, i1* %ZF_val, !mcsema_real_eip !43
  %230 = load i1, i1* %SF, align 1, !mcsema_real_eip !43
  store i1 %230, i1* %SF_val, !mcsema_real_eip !43
  %231 = load i1, i1* %OF, align 1, !mcsema_real_eip !43
  store i1 %231, i1* %OF_val, !mcsema_real_eip !43
  %232 = load i1, i1* %DF, align 1, !mcsema_real_eip !43
  store i1 %232, i1* %DF_val, !mcsema_real_eip !43
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !43
  %233 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !43
  store i1 %233, i1* %FPU_B_val, !mcsema_real_eip !43
  %234 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !43
  store i1 %234, i1* %FPU_C3_val, !mcsema_real_eip !43
  %235 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !43
  store i3 %235, i3* %FPU_TOP_val, !mcsema_real_eip !43
  %236 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !43
  store i1 %236, i1* %FPU_C2_val, !mcsema_real_eip !43
  %237 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !43
  store i1 %237, i1* %FPU_C1_val, !mcsema_real_eip !43
  %238 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !43
  store i1 %238, i1* %FPU_C0_val, !mcsema_real_eip !43
  %239 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !43
  store i1 %239, i1* %FPU_ES_val, !mcsema_real_eip !43
  %240 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !43
  store i1 %240, i1* %FPU_SF_val, !mcsema_real_eip !43
  %241 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !43
  store i1 %241, i1* %FPU_PE_val, !mcsema_real_eip !43
  %242 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !43
  store i1 %242, i1* %FPU_UE_val, !mcsema_real_eip !43
  %243 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !43
  store i1 %243, i1* %FPU_OE_val, !mcsema_real_eip !43
  %244 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !43
  store i1 %244, i1* %FPU_ZE_val, !mcsema_real_eip !43
  %245 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !43
  store i1 %245, i1* %FPU_DE_val, !mcsema_real_eip !43
  %246 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !43
  store i1 %246, i1* %FPU_IE_val, !mcsema_real_eip !43
  %247 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !43
  store i1 %247, i1* %FPU_X_val, !mcsema_real_eip !43
  %248 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !43
  store i2 %248, i2* %FPU_RC_val, !mcsema_real_eip !43
  %249 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !43
  store i2 %249, i2* %FPU_PC_val, !mcsema_real_eip !43
  %250 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !43
  store i1 %250, i1* %FPU_PM_val, !mcsema_real_eip !43
  %251 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !43
  store i1 %251, i1* %FPU_UM_val, !mcsema_real_eip !43
  %252 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !43
  store i1 %252, i1* %FPU_OM_val, !mcsema_real_eip !43
  %253 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !43
  store i1 %253, i1* %FPU_ZM_val, !mcsema_real_eip !43
  %254 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !43
  store i1 %254, i1* %FPU_DM_val, !mcsema_real_eip !43
  %255 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !43
  store i1 %255, i1* %FPU_IM_val, !mcsema_real_eip !43
  %256 = load i64, i64* %52, align 4
  store i64 %256, i64* %53, align 4
  %257 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !43
  store i16 %257, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !43
  %258 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !43
  store i64 %258, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !43
  %259 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !43
  store i16 %259, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !43
  %260 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !43
  store i64 %260, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !43
  %261 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !43
  store i11 %261, i11* %FPU_FOPCODE_val, !mcsema_real_eip !43
  %262 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !43
  store i128 %262, i128* %XMM0_val, !mcsema_real_eip !43
  %263 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !43
  store i128 %263, i128* %XMM1_val, !mcsema_real_eip !43
  %264 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !43
  store i128 %264, i128* %XMM2_val, !mcsema_real_eip !43
  %265 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !43
  store i128 %265, i128* %XMM3_val, !mcsema_real_eip !43
  %266 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !43
  store i128 %266, i128* %XMM4_val, !mcsema_real_eip !43
  %267 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !43
  store i128 %267, i128* %XMM5_val, !mcsema_real_eip !43
  %268 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !43
  store i128 %268, i128* %XMM6_val, !mcsema_real_eip !43
  %269 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !43
  store i128 %269, i128* %XMM7_val, !mcsema_real_eip !43
  %270 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !43
  store i128 %270, i128* %XMM8_val, !mcsema_real_eip !43
  %271 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !43
  store i128 %271, i128* %XMM9_val, !mcsema_real_eip !43
  %272 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !43
  store i128 %272, i128* %XMM10_val, !mcsema_real_eip !43
  %273 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !43
  store i128 %273, i128* %XMM11_val, !mcsema_real_eip !43
  %274 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !43
  store i128 %274, i128* %XMM12_val, !mcsema_real_eip !43
  %275 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !43
  store i128 %275, i128* %XMM13_val, !mcsema_real_eip !43
  %276 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !43
  store i128 %276, i128* %XMM14_val, !mcsema_real_eip !43
  %277 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !43
  store i128 %277, i128* %XMM15_val, !mcsema_real_eip !43
  %278 = load i64, i64* %STACK_BASE, !mcsema_real_eip !43
  store i64 %278, i64* %STACK_BASE_val, !mcsema_real_eip !43
  %279 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !43
  store i64 %279, i64* %STACK_LIMIT_val, !mcsema_real_eip !43
  %280 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  %281 = add i64 %280, -16, !mcsema_real_eip !44
  %282 = inttoptr i64 %281 to i64*, !mcsema_real_eip !44
  %283 = load i64, i64* %282, !mcsema_real_eip !44
  %284 = add i64 %283, -1
  %285 = xor i64 %284, %283, !mcsema_real_eip !45
  %286 = and i64 %285, 16, !mcsema_real_eip !45
  %287 = icmp ne i64 %286, 0, !mcsema_real_eip !45
  store i1 %287, i1* %AF_val, !mcsema_real_eip !45
  %288 = trunc i64 %284 to i8, !mcsema_real_eip !45
  %289 = tail call i8 @llvm.ctpop.i8(i8 %288), !mcsema_real_eip !45
  %290 = and i8 %289, 1
  %291 = icmp eq i8 %290, 0
  store i1 %291, i1* %PF_val, !mcsema_real_eip !45
  %292 = icmp eq i64 %284, 0, !mcsema_real_eip !45
  store i1 %292, i1* %ZF_val, !mcsema_real_eip !45
  %293 = icmp slt i64 %284, 0
  store i1 %293, i1* %SF_val, !mcsema_real_eip !45
  %294 = icmp eq i64 %283, 0
  store i1 %294, i1* %CF_val, !mcsema_real_eip !45
  %295 = and i64 %285, %283, !mcsema_real_eip !45
  %296 = icmp slt i64 %295, 0
  store i1 %296, i1* %OF_val, !mcsema_real_eip !45
  store i64 %284, i64* %RDI_val, !mcsema_real_eip !45
  %297 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %298 = add i64 %297, -24, !mcsema_real_eip !46
  %299 = inttoptr i64 %298 to i64*, !mcsema_real_eip !46
  %300 = load i64, i64* %RAX_val, !mcsema_real_eip !46
  store i64 %300, i64* %299, !mcsema_real_eip !46
  %301 = load i64, i64* %RSP_val, !mcsema_real_eip !47
  %302 = add i64 %301, -8
  %303 = inttoptr i64 %302 to i64*, !mcsema_real_eip !47
  store i64 -4981261766360305936, i64* %303, !mcsema_real_eip !47
  store i64 %302, i64* %RSP_val, !mcsema_real_eip !47
  %304 = load i64, i64* %RAX_val, !mcsema_real_eip !47
  store i64 %304, i64* %RAX, !mcsema_real_eip !47
  %305 = load i64, i64* %RBX_val, !mcsema_real_eip !47
  store i64 %305, i64* %RBX, !mcsema_real_eip !47
  %306 = load i64, i64* %RCX_val, !mcsema_real_eip !47
  store i64 %306, i64* %RCX, !mcsema_real_eip !47
  %307 = load i64, i64* %RDX_val, !mcsema_real_eip !47
  store i64 %307, i64* %RDX, !mcsema_real_eip !47
  %308 = load i64, i64* %RSI_val, !mcsema_real_eip !47
  store i64 %308, i64* %RSI, !mcsema_real_eip !47
  %309 = load i64, i64* %RDI_val, !mcsema_real_eip !47
  store i64 %309, i64* %RDI, !mcsema_real_eip !47
  %310 = load i64, i64* %RSP_val, !mcsema_real_eip !47
  store i64 %310, i64* %RSP, !mcsema_real_eip !47
  %311 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  store i64 %311, i64* %RBP, !mcsema_real_eip !47
  %312 = load i64, i64* %R8_val, !mcsema_real_eip !47
  store i64 %312, i64* %R8, !mcsema_real_eip !47
  %313 = load i64, i64* %R9_val, !mcsema_real_eip !47
  store i64 %313, i64* %R9, !mcsema_real_eip !47
  %314 = load i64, i64* %R10_val, !mcsema_real_eip !47
  store i64 %314, i64* %R10, !mcsema_real_eip !47
  %315 = load i64, i64* %R11_val, !mcsema_real_eip !47
  store i64 %315, i64* %R11, !mcsema_real_eip !47
  %316 = load i64, i64* %R12_val, !mcsema_real_eip !47
  store i64 %316, i64* %R12, !mcsema_real_eip !47
  %317 = load i64, i64* %R13_val, !mcsema_real_eip !47
  store i64 %317, i64* %R13, !mcsema_real_eip !47
  %318 = load i64, i64* %R14_val, !mcsema_real_eip !47
  store i64 %318, i64* %R14, !mcsema_real_eip !47
  %319 = load i64, i64* %R15_val, !mcsema_real_eip !47
  store i64 %319, i64* %R15, !mcsema_real_eip !47
  %320 = load i64, i64* %RIP_val, !mcsema_real_eip !47
  store i64 %320, i64* %RIP, !mcsema_real_eip !47
  %321 = load i1, i1* %CF_val, !mcsema_real_eip !47
  store i1 %321, i1* %CF, align 1, !mcsema_real_eip !47
  %322 = load i1, i1* %PF_val, !mcsema_real_eip !47
  store i1 %322, i1* %PF, align 1, !mcsema_real_eip !47
  %323 = load i1, i1* %AF_val, !mcsema_real_eip !47
  store i1 %323, i1* %AF, align 1, !mcsema_real_eip !47
  %324 = load i1, i1* %ZF_val, !mcsema_real_eip !47
  store i1 %324, i1* %ZF, align 1, !mcsema_real_eip !47
  %325 = load i1, i1* %SF_val, !mcsema_real_eip !47
  store i1 %325, i1* %SF, align 1, !mcsema_real_eip !47
  %326 = load i1, i1* %OF_val, !mcsema_real_eip !47
  store i1 %326, i1* %OF, align 1, !mcsema_real_eip !47
  %327 = load i1, i1* %DF_val, !mcsema_real_eip !47
  store i1 %327, i1* %DF, align 1, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !47
  %328 = load i1, i1* %FPU_B_val, !mcsema_real_eip !47
  store i1 %328, i1* %FPU_B, align 1, !mcsema_real_eip !47
  %329 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !47
  store i1 %329, i1* %FPU_C3, align 1, !mcsema_real_eip !47
  %330 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !47
  store i3 %330, i3* %FPU_TOP, align 1, !mcsema_real_eip !47
  %331 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !47
  store i1 %331, i1* %FPU_C2, align 1, !mcsema_real_eip !47
  %332 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !47
  store i1 %332, i1* %FPU_C1, align 1, !mcsema_real_eip !47
  %333 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !47
  store i1 %333, i1* %FPU_C0, align 1, !mcsema_real_eip !47
  %334 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !47
  store i1 %334, i1* %FPU_ES, align 1, !mcsema_real_eip !47
  %335 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !47
  store i1 %335, i1* %FPU_SF, align 1, !mcsema_real_eip !47
  %336 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !47
  store i1 %336, i1* %FPU_PE, align 1, !mcsema_real_eip !47
  %337 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !47
  store i1 %337, i1* %FPU_UE, align 1, !mcsema_real_eip !47
  %338 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !47
  store i1 %338, i1* %FPU_OE, align 1, !mcsema_real_eip !47
  %339 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !47
  store i1 %339, i1* %FPU_ZE, align 1, !mcsema_real_eip !47
  %340 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !47
  store i1 %340, i1* %FPU_DE, align 1, !mcsema_real_eip !47
  %341 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !47
  store i1 %341, i1* %FPU_IE, align 1, !mcsema_real_eip !47
  %342 = load i1, i1* %FPU_X_val, !mcsema_real_eip !47
  store i1 %342, i1* %FPU_X, align 1, !mcsema_real_eip !47
  %343 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !47
  store i2 %343, i2* %FPU_RC, align 1, !mcsema_real_eip !47
  %344 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !47
  store i2 %344, i2* %FPU_PC, align 1, !mcsema_real_eip !47
  %345 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !47
  store i1 %345, i1* %FPU_PM, align 1, !mcsema_real_eip !47
  %346 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !47
  store i1 %346, i1* %FPU_UM, align 1, !mcsema_real_eip !47
  %347 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !47
  store i1 %347, i1* %FPU_OM, align 1, !mcsema_real_eip !47
  %348 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !47
  store i1 %348, i1* %FPU_ZM, align 1, !mcsema_real_eip !47
  %349 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !47
  store i1 %349, i1* %FPU_DM, align 1, !mcsema_real_eip !47
  %350 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !47
  store i1 %350, i1* %FPU_IM, align 1, !mcsema_real_eip !47
  %351 = load i64, i64* %53, align 4
  store i64 %351, i64* %52, align 4
  %352 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !47
  store i16 %352, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !47
  %353 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !47
  store i64 %353, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !47
  %354 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !47
  store i16 %354, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !47
  %355 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !47
  store i64 %355, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !47
  %356 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !47
  store i11 %356, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !47
  %357 = load i128, i128* %XMM0_val, !mcsema_real_eip !47
  store i128 %357, i128* %XMM0, align 1, !mcsema_real_eip !47
  %358 = load i128, i128* %XMM1_val, !mcsema_real_eip !47
  store i128 %358, i128* %XMM1, align 1, !mcsema_real_eip !47
  %359 = load i128, i128* %XMM2_val, !mcsema_real_eip !47
  store i128 %359, i128* %XMM2, align 1, !mcsema_real_eip !47
  %360 = load i128, i128* %XMM3_val, !mcsema_real_eip !47
  store i128 %360, i128* %XMM3, align 1, !mcsema_real_eip !47
  %361 = load i128, i128* %XMM4_val, !mcsema_real_eip !47
  store i128 %361, i128* %XMM4, align 1, !mcsema_real_eip !47
  %362 = load i128, i128* %XMM5_val, !mcsema_real_eip !47
  store i128 %362, i128* %XMM5, align 1, !mcsema_real_eip !47
  %363 = load i128, i128* %XMM6_val, !mcsema_real_eip !47
  store i128 %363, i128* %XMM6, align 1, !mcsema_real_eip !47
  %364 = load i128, i128* %XMM7_val, !mcsema_real_eip !47
  store i128 %364, i128* %XMM7, align 1, !mcsema_real_eip !47
  %365 = load i128, i128* %XMM8_val, !mcsema_real_eip !47
  store i128 %365, i128* %XMM8, align 1, !mcsema_real_eip !47
  %366 = load i128, i128* %XMM9_val, !mcsema_real_eip !47
  store i128 %366, i128* %XMM9, align 1, !mcsema_real_eip !47
  %367 = load i128, i128* %XMM10_val, !mcsema_real_eip !47
  store i128 %367, i128* %XMM10, align 1, !mcsema_real_eip !47
  %368 = load i128, i128* %XMM11_val, !mcsema_real_eip !47
  store i128 %368, i128* %XMM11, align 1, !mcsema_real_eip !47
  %369 = load i128, i128* %XMM12_val, !mcsema_real_eip !47
  store i128 %369, i128* %XMM12, align 1, !mcsema_real_eip !47
  %370 = load i128, i128* %XMM13_val, !mcsema_real_eip !47
  store i128 %370, i128* %XMM13, align 1, !mcsema_real_eip !47
  %371 = load i128, i128* %XMM14_val, !mcsema_real_eip !47
  store i128 %371, i128* %XMM14, align 1, !mcsema_real_eip !47
  %372 = load i128, i128* %XMM15_val, !mcsema_real_eip !47
  store i128 %372, i128* %XMM15, align 1, !mcsema_real_eip !47
  %373 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !47
  store i64 %373, i64* %STACK_BASE, align 1, !mcsema_real_eip !47
  %374 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !47
  store i64 %374, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !47
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !47
  %375 = load i64, i64* %RAX, !mcsema_real_eip !47
  store i64 %375, i64* %RAX_val, !mcsema_real_eip !47
  %376 = load i64, i64* %RBX, !mcsema_real_eip !47
  store i64 %376, i64* %RBX_val, !mcsema_real_eip !47
  %377 = load i64, i64* %RCX, !mcsema_real_eip !47
  store i64 %377, i64* %RCX_val, !mcsema_real_eip !47
  %378 = load i64, i64* %RDX, !mcsema_real_eip !47
  store i64 %378, i64* %RDX_val, !mcsema_real_eip !47
  %379 = load i64, i64* %RSI, !mcsema_real_eip !47
  store i64 %379, i64* %RSI_val, !mcsema_real_eip !47
  %380 = load i64, i64* %RDI, !mcsema_real_eip !47
  store i64 %380, i64* %RDI_val, !mcsema_real_eip !47
  %381 = load i64, i64* %RSP, !mcsema_real_eip !47
  store i64 %381, i64* %RSP_val, !mcsema_real_eip !47
  %382 = load i64, i64* %RBP, !mcsema_real_eip !47
  store i64 %382, i64* %RBP_val, !mcsema_real_eip !47
  %383 = load i64, i64* %R8, !mcsema_real_eip !47
  store i64 %383, i64* %R8_val, !mcsema_real_eip !47
  %384 = load i64, i64* %R9, !mcsema_real_eip !47
  store i64 %384, i64* %R9_val, !mcsema_real_eip !47
  %385 = load i64, i64* %R10, !mcsema_real_eip !47
  store i64 %385, i64* %R10_val, !mcsema_real_eip !47
  %386 = load i64, i64* %R11, !mcsema_real_eip !47
  store i64 %386, i64* %R11_val, !mcsema_real_eip !47
  %387 = load i64, i64* %R12, !mcsema_real_eip !47
  store i64 %387, i64* %R12_val, !mcsema_real_eip !47
  %388 = load i64, i64* %R13, !mcsema_real_eip !47
  store i64 %388, i64* %R13_val, !mcsema_real_eip !47
  %389 = load i64, i64* %R14, !mcsema_real_eip !47
  store i64 %389, i64* %R14_val, !mcsema_real_eip !47
  %390 = load i64, i64* %R15, !mcsema_real_eip !47
  store i64 %390, i64* %R15_val, !mcsema_real_eip !47
  %391 = load i64, i64* %RIP, !mcsema_real_eip !47
  store i64 %391, i64* %RIP_val, !mcsema_real_eip !47
  %392 = load i1, i1* %CF, align 1, !mcsema_real_eip !47
  store i1 %392, i1* %CF_val, !mcsema_real_eip !47
  %393 = load i1, i1* %PF, align 1, !mcsema_real_eip !47
  store i1 %393, i1* %PF_val, !mcsema_real_eip !47
  %394 = load i1, i1* %AF, align 1, !mcsema_real_eip !47
  store i1 %394, i1* %AF_val, !mcsema_real_eip !47
  %395 = load i1, i1* %ZF, align 1, !mcsema_real_eip !47
  store i1 %395, i1* %ZF_val, !mcsema_real_eip !47
  %396 = load i1, i1* %SF, align 1, !mcsema_real_eip !47
  store i1 %396, i1* %SF_val, !mcsema_real_eip !47
  %397 = load i1, i1* %OF, align 1, !mcsema_real_eip !47
  store i1 %397, i1* %OF_val, !mcsema_real_eip !47
  %398 = load i1, i1* %DF, align 1, !mcsema_real_eip !47
  store i1 %398, i1* %DF_val, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !47
  %399 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !47
  store i1 %399, i1* %FPU_B_val, !mcsema_real_eip !47
  %400 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !47
  store i1 %400, i1* %FPU_C3_val, !mcsema_real_eip !47
  %401 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !47
  store i3 %401, i3* %FPU_TOP_val, !mcsema_real_eip !47
  %402 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !47
  store i1 %402, i1* %FPU_C2_val, !mcsema_real_eip !47
  %403 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !47
  store i1 %403, i1* %FPU_C1_val, !mcsema_real_eip !47
  %404 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !47
  store i1 %404, i1* %FPU_C0_val, !mcsema_real_eip !47
  %405 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !47
  store i1 %405, i1* %FPU_ES_val, !mcsema_real_eip !47
  %406 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !47
  store i1 %406, i1* %FPU_SF_val, !mcsema_real_eip !47
  %407 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !47
  store i1 %407, i1* %FPU_PE_val, !mcsema_real_eip !47
  %408 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !47
  store i1 %408, i1* %FPU_UE_val, !mcsema_real_eip !47
  %409 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !47
  store i1 %409, i1* %FPU_OE_val, !mcsema_real_eip !47
  %410 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !47
  store i1 %410, i1* %FPU_ZE_val, !mcsema_real_eip !47
  %411 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !47
  store i1 %411, i1* %FPU_DE_val, !mcsema_real_eip !47
  %412 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !47
  store i1 %412, i1* %FPU_IE_val, !mcsema_real_eip !47
  %413 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !47
  store i1 %413, i1* %FPU_X_val, !mcsema_real_eip !47
  %414 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !47
  store i2 %414, i2* %FPU_RC_val, !mcsema_real_eip !47
  %415 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !47
  store i2 %415, i2* %FPU_PC_val, !mcsema_real_eip !47
  %416 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !47
  store i1 %416, i1* %FPU_PM_val, !mcsema_real_eip !47
  %417 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !47
  store i1 %417, i1* %FPU_UM_val, !mcsema_real_eip !47
  %418 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !47
  store i1 %418, i1* %FPU_OM_val, !mcsema_real_eip !47
  %419 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !47
  store i1 %419, i1* %FPU_ZM_val, !mcsema_real_eip !47
  %420 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !47
  store i1 %420, i1* %FPU_DM_val, !mcsema_real_eip !47
  %421 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !47
  store i1 %421, i1* %FPU_IM_val, !mcsema_real_eip !47
  %422 = load i64, i64* %52, align 4
  store i64 %422, i64* %53, align 4
  %423 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !47
  store i16 %423, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !47
  %424 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !47
  store i64 %424, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !47
  %425 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !47
  store i16 %425, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !47
  %426 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !47
  store i64 %426, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !47
  %427 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !47
  store i11 %427, i11* %FPU_FOPCODE_val, !mcsema_real_eip !47
  %428 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !47
  store i128 %428, i128* %XMM0_val, !mcsema_real_eip !47
  %429 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !47
  store i128 %429, i128* %XMM1_val, !mcsema_real_eip !47
  %430 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !47
  store i128 %430, i128* %XMM2_val, !mcsema_real_eip !47
  %431 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !47
  store i128 %431, i128* %XMM3_val, !mcsema_real_eip !47
  %432 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !47
  store i128 %432, i128* %XMM4_val, !mcsema_real_eip !47
  %433 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !47
  store i128 %433, i128* %XMM5_val, !mcsema_real_eip !47
  %434 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !47
  store i128 %434, i128* %XMM6_val, !mcsema_real_eip !47
  %435 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !47
  store i128 %435, i128* %XMM7_val, !mcsema_real_eip !47
  %436 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !47
  store i128 %436, i128* %XMM8_val, !mcsema_real_eip !47
  %437 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !47
  store i128 %437, i128* %XMM9_val, !mcsema_real_eip !47
  %438 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !47
  store i128 %438, i128* %XMM10_val, !mcsema_real_eip !47
  %439 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !47
  store i128 %439, i128* %XMM11_val, !mcsema_real_eip !47
  %440 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !47
  store i128 %440, i128* %XMM12_val, !mcsema_real_eip !47
  %441 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !47
  store i128 %441, i128* %XMM13_val, !mcsema_real_eip !47
  %442 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !47
  store i128 %442, i128* %XMM14_val, !mcsema_real_eip !47
  %443 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !47
  store i128 %443, i128* %XMM15_val, !mcsema_real_eip !47
  %444 = load i64, i64* %STACK_BASE, !mcsema_real_eip !47
  store i64 %444, i64* %STACK_BASE_val, !mcsema_real_eip !47
  %445 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !47
  store i64 %445, i64* %STACK_LIMIT_val, !mcsema_real_eip !47
  %446 = load i64, i64* %RBP_val, !mcsema_real_eip !48
  %447 = add i64 %446, -24, !mcsema_real_eip !48
  %448 = inttoptr i64 %447 to i64*, !mcsema_real_eip !48
  %449 = load i64, i64* %448, !mcsema_real_eip !48
  %450 = load i64, i64* %RAX_val, !mcsema_real_eip !49
  %uadd351 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %450, i64 %449)
  %451 = extractvalue { i64, i1 } %uadd351, 0
  %452 = xor i64 %451, %449, !mcsema_real_eip !49
  %453 = xor i64 %452, %450, !mcsema_real_eip !49
  %454 = and i64 %453, 16, !mcsema_real_eip !49
  %455 = icmp ne i64 %454, 0, !mcsema_real_eip !49
  store i1 %455, i1* %AF_val, !mcsema_real_eip !49
  %456 = icmp slt i64 %451, 0
  store i1 %456, i1* %SF_val, !mcsema_real_eip !49
  %457 = icmp eq i64 %451, 0, !mcsema_real_eip !49
  store i1 %457, i1* %ZF_val, !mcsema_real_eip !49
  %458 = xor i64 %449, -9223372036854775808, !mcsema_real_eip !49
  %459 = xor i64 %458, %450, !mcsema_real_eip !49
  %460 = and i64 %452, %459, !mcsema_real_eip !49
  %461 = icmp slt i64 %460, 0
  store i1 %461, i1* %OF_val, !mcsema_real_eip !49
  %462 = trunc i64 %451 to i8, !mcsema_real_eip !49
  %463 = tail call i8 @llvm.ctpop.i8(i8 %462), !mcsema_real_eip !49
  %464 = and i8 %463, 1
  %465 = icmp eq i8 %464, 0
  store i1 %465, i1* %PF_val, !mcsema_real_eip !49
  %466 = extractvalue { i64, i1 } %uadd351, 1
  store i1 %466, i1* %CF_val, !mcsema_real_eip !49
  store i64 %451, i64* %RDI_val, !mcsema_real_eip !49
  %467 = load i64, i64* %RBP_val, !mcsema_real_eip !50
  %468 = add i64 %467, -8, !mcsema_real_eip !50
  %469 = inttoptr i64 %468 to i64*, !mcsema_real_eip !50
  store i64 %451, i64* %469, !mcsema_real_eip !50
  br label %block_0x50, !mcsema_real_eip !39

block_0x50:                                       ; preds = %block_0x24, %block_0x17
  %470 = load i64, i64* %RBP_val, !mcsema_real_eip !51
  %471 = add i64 %470, -8, !mcsema_real_eip !51
  %472 = inttoptr i64 %471 to i64*, !mcsema_real_eip !51
  %473 = load i64, i64* %472, !mcsema_real_eip !51
  store i64 %473, i64* %RAX_val, !mcsema_real_eip !51
  %474 = load i64, i64* %RSP_val, !mcsema_real_eip !52
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %474, i64 32)
  %475 = extractvalue { i64, i1 } %uadd, 0
  %476 = xor i64 %475, %474, !mcsema_real_eip !52
  %477 = and i64 %476, 16, !mcsema_real_eip !52
  %478 = icmp ne i64 %477, 0, !mcsema_real_eip !52
  store i1 %478, i1* %AF_val, !mcsema_real_eip !52
  %479 = icmp slt i64 %475, 0
  store i1 %479, i1* %SF_val, !mcsema_real_eip !52
  %480 = icmp eq i64 %475, 0, !mcsema_real_eip !52
  store i1 %480, i1* %ZF_val, !mcsema_real_eip !52
  %481 = xor i64 %474, -9223372036854775808, !mcsema_real_eip !52
  %482 = and i64 %476, %481, !mcsema_real_eip !52
  %483 = icmp slt i64 %482, 0
  store i1 %483, i1* %OF_val, !mcsema_real_eip !52
  %484 = trunc i64 %475 to i8, !mcsema_real_eip !52
  %485 = tail call i8 @llvm.ctpop.i8(i8 %484), !mcsema_real_eip !52
  %486 = and i8 %485, 1
  %487 = icmp eq i8 %486, 0
  store i1 %487, i1* %PF_val, !mcsema_real_eip !52
  %488 = extractvalue { i64, i1 } %uadd, 1
  store i1 %488, i1* %CF_val, !mcsema_real_eip !52
  store i64 %475, i64* %RSP_val, !mcsema_real_eip !52
  %489 = inttoptr i64 %475 to i64*, !mcsema_real_eip !53
  %490 = load i64, i64* %489, !mcsema_real_eip !53
  store i64 %490, i64* %RBP_val, !mcsema_real_eip !53
  %491 = add i64 %475, 16, !mcsema_real_eip !54
  store i64 %491, i64* %RSP_val, !mcsema_real_eip !54
  %492 = load i64, i64* %RAX_val, !mcsema_real_eip !54
  store i64 %492, i64* %RAX, !mcsema_real_eip !54
  %493 = load i64, i64* %RBX_val, !mcsema_real_eip !54
  store i64 %493, i64* %RBX, !mcsema_real_eip !54
  %494 = load i64, i64* %RCX_val, !mcsema_real_eip !54
  store i64 %494, i64* %RCX, !mcsema_real_eip !54
  %495 = load i64, i64* %RDX_val, !mcsema_real_eip !54
  store i64 %495, i64* %RDX, !mcsema_real_eip !54
  %496 = load i64, i64* %RSI_val, !mcsema_real_eip !54
  store i64 %496, i64* %RSI, !mcsema_real_eip !54
  %497 = load i64, i64* %RDI_val, !mcsema_real_eip !54
  store i64 %497, i64* %RDI, !mcsema_real_eip !54
  %498 = load i64, i64* %RSP_val, !mcsema_real_eip !54
  store i64 %498, i64* %RSP, !mcsema_real_eip !54
  %499 = load i64, i64* %RBP_val, !mcsema_real_eip !54
  store i64 %499, i64* %RBP, !mcsema_real_eip !54
  %500 = load i64, i64* %R8_val, !mcsema_real_eip !54
  store i64 %500, i64* %R8, !mcsema_real_eip !54
  %501 = load i64, i64* %R9_val, !mcsema_real_eip !54
  store i64 %501, i64* %R9, !mcsema_real_eip !54
  %502 = load i64, i64* %R10_val, !mcsema_real_eip !54
  store i64 %502, i64* %R10, !mcsema_real_eip !54
  %503 = load i64, i64* %R11_val, !mcsema_real_eip !54
  store i64 %503, i64* %R11, !mcsema_real_eip !54
  %504 = load i64, i64* %R12_val, !mcsema_real_eip !54
  store i64 %504, i64* %R12, !mcsema_real_eip !54
  %505 = load i64, i64* %R13_val, !mcsema_real_eip !54
  store i64 %505, i64* %R13, !mcsema_real_eip !54
  %506 = load i64, i64* %R14_val, !mcsema_real_eip !54
  store i64 %506, i64* %R14, !mcsema_real_eip !54
  %507 = load i64, i64* %R15_val, !mcsema_real_eip !54
  store i64 %507, i64* %R15, !mcsema_real_eip !54
  %508 = load i64, i64* %RIP_val, !mcsema_real_eip !54
  store i64 %508, i64* %RIP, !mcsema_real_eip !54
  %509 = load i1, i1* %CF_val, !mcsema_real_eip !54
  store i1 %509, i1* %CF, align 1, !mcsema_real_eip !54
  %510 = load i1, i1* %PF_val, !mcsema_real_eip !54
  store i1 %510, i1* %PF, align 1, !mcsema_real_eip !54
  %511 = load i1, i1* %AF_val, !mcsema_real_eip !54
  store i1 %511, i1* %AF, align 1, !mcsema_real_eip !54
  %512 = load i1, i1* %ZF_val, !mcsema_real_eip !54
  store i1 %512, i1* %ZF, align 1, !mcsema_real_eip !54
  %513 = load i1, i1* %SF_val, !mcsema_real_eip !54
  store i1 %513, i1* %SF, align 1, !mcsema_real_eip !54
  %514 = load i1, i1* %OF_val, !mcsema_real_eip !54
  store i1 %514, i1* %OF, align 1, !mcsema_real_eip !54
  %515 = load i1, i1* %DF_val, !mcsema_real_eip !54
  store i1 %515, i1* %DF, align 1, !mcsema_real_eip !54
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !54
  %516 = load i1, i1* %FPU_B_val, !mcsema_real_eip !54
  store i1 %516, i1* %FPU_B, align 1, !mcsema_real_eip !54
  %517 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !54
  store i1 %517, i1* %FPU_C3, align 1, !mcsema_real_eip !54
  %518 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !54
  store i3 %518, i3* %FPU_TOP, align 1, !mcsema_real_eip !54
  %519 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !54
  store i1 %519, i1* %FPU_C2, align 1, !mcsema_real_eip !54
  %520 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !54
  store i1 %520, i1* %FPU_C1, align 1, !mcsema_real_eip !54
  %521 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !54
  store i1 %521, i1* %FPU_C0, align 1, !mcsema_real_eip !54
  %522 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !54
  store i1 %522, i1* %FPU_ES, align 1, !mcsema_real_eip !54
  %523 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !54
  store i1 %523, i1* %FPU_SF, align 1, !mcsema_real_eip !54
  %524 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !54
  store i1 %524, i1* %FPU_PE, align 1, !mcsema_real_eip !54
  %525 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !54
  store i1 %525, i1* %FPU_UE, align 1, !mcsema_real_eip !54
  %526 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !54
  store i1 %526, i1* %FPU_OE, align 1, !mcsema_real_eip !54
  %527 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !54
  store i1 %527, i1* %FPU_ZE, align 1, !mcsema_real_eip !54
  %528 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !54
  store i1 %528, i1* %FPU_DE, align 1, !mcsema_real_eip !54
  %529 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !54
  store i1 %529, i1* %FPU_IE, align 1, !mcsema_real_eip !54
  %530 = load i1, i1* %FPU_X_val, !mcsema_real_eip !54
  store i1 %530, i1* %FPU_X, align 1, !mcsema_real_eip !54
  %531 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !54
  store i2 %531, i2* %FPU_RC, align 1, !mcsema_real_eip !54
  %532 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !54
  store i2 %532, i2* %FPU_PC, align 1, !mcsema_real_eip !54
  %533 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !54
  store i1 %533, i1* %FPU_PM, align 1, !mcsema_real_eip !54
  %534 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !54
  store i1 %534, i1* %FPU_UM, align 1, !mcsema_real_eip !54
  %535 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !54
  store i1 %535, i1* %FPU_OM, align 1, !mcsema_real_eip !54
  %536 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !54
  store i1 %536, i1* %FPU_ZM, align 1, !mcsema_real_eip !54
  %537 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !54
  store i1 %537, i1* %FPU_DM, align 1, !mcsema_real_eip !54
  %538 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !54
  store i1 %538, i1* %FPU_IM, align 1, !mcsema_real_eip !54
  %539 = load i64, i64* %53, align 4
  store i64 %539, i64* %52, align 4
  %540 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !54
  store i16 %540, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !54
  %541 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !54
  store i64 %541, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !54
  %542 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !54
  store i16 %542, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !54
  %543 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !54
  store i64 %543, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !54
  %544 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !54
  store i11 %544, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !54
  %545 = load i128, i128* %XMM0_val, !mcsema_real_eip !54
  store i128 %545, i128* %XMM0, align 1, !mcsema_real_eip !54
  %546 = load i128, i128* %XMM1_val, !mcsema_real_eip !54
  store i128 %546, i128* %XMM1, align 1, !mcsema_real_eip !54
  %547 = load i128, i128* %XMM2_val, !mcsema_real_eip !54
  store i128 %547, i128* %XMM2, align 1, !mcsema_real_eip !54
  %548 = load i128, i128* %XMM3_val, !mcsema_real_eip !54
  store i128 %548, i128* %XMM3, align 1, !mcsema_real_eip !54
  %549 = load i128, i128* %XMM4_val, !mcsema_real_eip !54
  store i128 %549, i128* %XMM4, align 1, !mcsema_real_eip !54
  %550 = load i128, i128* %XMM5_val, !mcsema_real_eip !54
  store i128 %550, i128* %XMM5, align 1, !mcsema_real_eip !54
  %551 = load i128, i128* %XMM6_val, !mcsema_real_eip !54
  store i128 %551, i128* %XMM6, align 1, !mcsema_real_eip !54
  %552 = load i128, i128* %XMM7_val, !mcsema_real_eip !54
  store i128 %552, i128* %XMM7, align 1, !mcsema_real_eip !54
  %553 = load i128, i128* %XMM8_val, !mcsema_real_eip !54
  store i128 %553, i128* %XMM8, align 1, !mcsema_real_eip !54
  %554 = load i128, i128* %XMM9_val, !mcsema_real_eip !54
  store i128 %554, i128* %XMM9, align 1, !mcsema_real_eip !54
  %555 = load i128, i128* %XMM10_val, !mcsema_real_eip !54
  store i128 %555, i128* %XMM10, align 1, !mcsema_real_eip !54
  %556 = load i128, i128* %XMM11_val, !mcsema_real_eip !54
  store i128 %556, i128* %XMM11, align 1, !mcsema_real_eip !54
  %557 = load i128, i128* %XMM12_val, !mcsema_real_eip !54
  store i128 %557, i128* %XMM12, align 1, !mcsema_real_eip !54
  %558 = load i128, i128* %XMM13_val, !mcsema_real_eip !54
  store i128 %558, i128* %XMM13, align 1, !mcsema_real_eip !54
  %559 = load i128, i128* %XMM14_val, !mcsema_real_eip !54
  store i128 %559, i128* %XMM14, align 1, !mcsema_real_eip !54
  %560 = load i128, i128* %XMM15_val, !mcsema_real_eip !54
  store i128 %560, i128* %XMM15, align 1, !mcsema_real_eip !54
  %561 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !54
  store i64 %561, i64* %STACK_BASE, align 1, !mcsema_real_eip !54
  %562 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !54
  store i64 %562, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !54
  ret void, !mcsema_real_eip !54
}

declare x86_64_sysvcc i64 @atoi(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_60(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 96}
!3 = !{i64 97}
!4 = !{i64 100}
!5 = !{i64 104}
!6 = !{i64 111}
!7 = !{i64 114}
!8 = !{i64 118}
!9 = !{i64 122}
!10 = !{i64 128}
!11 = !{i64 132}
!12 = !{i64 136}
!13 = !{i64 141}
!14 = !{i64 144}
!15 = !{i64 149}
!16 = !{i64 154}
!17 = !{i64 157}
!18 = !{i64 162}
!19 = !{i64 165}
!20 = !{i64 168}
!21 = !{i64 172}
!22 = !{i64 177}
!23 = !{i64 187}
!24 = !{i64 190}
!25 = !{i64 192}
!26 = !{i64 197}
!27 = !{i64 199}
!28 = !{i64 202}
!29 = !{i64 204}
!30 = !{i64 208}
!31 = !{i64 209}
!32 = !{i64 0}
!33 = !{i64 1}
!34 = !{i64 4}
!35 = !{i64 8}
!36 = !{i64 12}
!37 = !{i64 36}
!38 = !{i64 17}
!39 = !{i64 23}
!40 = !{i64 31}
!41 = !{i64 40}
!42 = !{i64 44}
!43 = !{i64 47}
!44 = !{i64 52}
!45 = !{i64 56}
!46 = !{i64 60}
!47 = !{i64 64}
!48 = !{i64 69}
!49 = !{i64 73}
!50 = !{i64 76}
!51 = !{i64 80}
!52 = !{i64 84}
!53 = !{i64 88}
!54 = !{i64 89}
