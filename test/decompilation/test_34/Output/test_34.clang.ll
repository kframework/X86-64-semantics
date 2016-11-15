; ModuleID = 'Output/test_34.clang.bc'
source_filename = "Output/test_34.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type <{ [48 x i8] }>
%1 = type <{ [94704 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x400900 = internal constant %0 <{ [48 x i8] c"\01\00\02\00%d\0A\00\00\00\00\00\00\00\00\00Error3 in Bubble.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 64
@data_0x601050 = internal global %1 zeroinitializer, align 64

define internal x86_64_sysvcc void @sub_400850(%struct.regs*) {
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
  store i64 %80, i64* %RSP_val, !mcsema_real_eip !2
  store i1 false, i1* %CF_val, !mcsema_real_eip !3
  store i1 false, i1* %OF_val, !mcsema_real_eip !3
  store i1 false, i1* %SF_val, !mcsema_real_eip !3
  store i1 true, i1* %ZF_val, !mcsema_real_eip !3
  store i1 true, i1* %PF_val, !mcsema_real_eip !3
  store i64 0, i64* %RBX_val, !mcsema_real_eip !3
  br label %block_0x400860, !mcsema_real_eip !4

block_0x400860:                                   ; preds = %block_0x400860, %entry
  %82 = load i64, i64* %RBX_val, !mcsema_real_eip !4
  %83 = and i64 %82, 4294967295
  store i64 %83, i64* %RDI_val, !mcsema_real_eip !4
  %84 = load i64, i64* %RSP_val, !mcsema_real_eip !5
  %85 = add i64 %84, -8
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !5
  store i64 -4981261766360305936, i64* %86, !mcsema_real_eip !5
  store i64 %85, i64* %RSP_val, !mcsema_real_eip !5
  %87 = load i64, i64* %RAX_val, !mcsema_real_eip !5
  store i64 %87, i64* %RAX, !mcsema_real_eip !5
  %88 = load i64, i64* %RBX_val, !mcsema_real_eip !5
  store i64 %88, i64* %RBX, !mcsema_real_eip !5
  %89 = load i64, i64* %RCX_val, !mcsema_real_eip !5
  store i64 %89, i64* %RCX, !mcsema_real_eip !5
  %90 = load i64, i64* %RDX_val, !mcsema_real_eip !5
  store i64 %90, i64* %RDX, !mcsema_real_eip !5
  %91 = load i64, i64* %RSI_val, !mcsema_real_eip !5
  store i64 %91, i64* %RSI, !mcsema_real_eip !5
  %92 = load i64, i64* %RDI_val, !mcsema_real_eip !5
  store i64 %92, i64* %RDI, !mcsema_real_eip !5
  %93 = load i64, i64* %RSP_val, !mcsema_real_eip !5
  store i64 %93, i64* %RSP, !mcsema_real_eip !5
  %94 = load i64, i64* %RBP_val, !mcsema_real_eip !5
  store i64 %94, i64* %RBP, !mcsema_real_eip !5
  %95 = load i64, i64* %R8_val, !mcsema_real_eip !5
  store i64 %95, i64* %R8, !mcsema_real_eip !5
  %96 = load i64, i64* %R9_val, !mcsema_real_eip !5
  store i64 %96, i64* %R9, !mcsema_real_eip !5
  %97 = load i64, i64* %R10_val, !mcsema_real_eip !5
  store i64 %97, i64* %R10, !mcsema_real_eip !5
  %98 = load i64, i64* %R11_val, !mcsema_real_eip !5
  store i64 %98, i64* %R11, !mcsema_real_eip !5
  %99 = load i64, i64* %R12_val, !mcsema_real_eip !5
  store i64 %99, i64* %R12, !mcsema_real_eip !5
  %100 = load i64, i64* %R13_val, !mcsema_real_eip !5
  store i64 %100, i64* %R13, !mcsema_real_eip !5
  %101 = load i64, i64* %R14_val, !mcsema_real_eip !5
  store i64 %101, i64* %R14, !mcsema_real_eip !5
  %102 = load i64, i64* %R15_val, !mcsema_real_eip !5
  store i64 %102, i64* %R15, !mcsema_real_eip !5
  %103 = load i64, i64* %RIP_val, !mcsema_real_eip !5
  store i64 %103, i64* %RIP, !mcsema_real_eip !5
  %104 = load i1, i1* %CF_val, !mcsema_real_eip !5
  store i1 %104, i1* %CF, align 1, !mcsema_real_eip !5
  %105 = load i1, i1* %PF_val, !mcsema_real_eip !5
  store i1 %105, i1* %PF, align 1, !mcsema_real_eip !5
  %106 = load i1, i1* %AF_val, !mcsema_real_eip !5
  store i1 %106, i1* %AF, align 1, !mcsema_real_eip !5
  %107 = load i1, i1* %ZF_val, !mcsema_real_eip !5
  store i1 %107, i1* %ZF, align 1, !mcsema_real_eip !5
  %108 = load i1, i1* %SF_val, !mcsema_real_eip !5
  store i1 %108, i1* %SF, align 1, !mcsema_real_eip !5
  %109 = load i1, i1* %OF_val, !mcsema_real_eip !5
  store i1 %109, i1* %OF, align 1, !mcsema_real_eip !5
  %110 = load i1, i1* %DF_val, !mcsema_real_eip !5
  store i1 %110, i1* %DF, align 1, !mcsema_real_eip !5
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !5
  %111 = load i1, i1* %FPU_B_val, !mcsema_real_eip !5
  store i1 %111, i1* %FPU_B, align 1, !mcsema_real_eip !5
  %112 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !5
  store i1 %112, i1* %FPU_C3, align 1, !mcsema_real_eip !5
  %113 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !5
  store i3 %113, i3* %FPU_TOP, align 1, !mcsema_real_eip !5
  %114 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !5
  store i1 %114, i1* %FPU_C2, align 1, !mcsema_real_eip !5
  %115 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !5
  store i1 %115, i1* %FPU_C1, align 1, !mcsema_real_eip !5
  %116 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !5
  store i1 %116, i1* %FPU_C0, align 1, !mcsema_real_eip !5
  %117 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !5
  store i1 %117, i1* %FPU_ES, align 1, !mcsema_real_eip !5
  %118 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !5
  store i1 %118, i1* %FPU_SF, align 1, !mcsema_real_eip !5
  %119 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !5
  store i1 %119, i1* %FPU_PE, align 1, !mcsema_real_eip !5
  %120 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !5
  store i1 %120, i1* %FPU_UE, align 1, !mcsema_real_eip !5
  %121 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !5
  store i1 %121, i1* %FPU_OE, align 1, !mcsema_real_eip !5
  %122 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !5
  store i1 %122, i1* %FPU_ZE, align 1, !mcsema_real_eip !5
  %123 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !5
  store i1 %123, i1* %FPU_DE, align 1, !mcsema_real_eip !5
  %124 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !5
  store i1 %124, i1* %FPU_IE, align 1, !mcsema_real_eip !5
  %125 = load i1, i1* %FPU_X_val, !mcsema_real_eip !5
  store i1 %125, i1* %FPU_X, align 1, !mcsema_real_eip !5
  %126 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !5
  store i2 %126, i2* %FPU_RC, align 1, !mcsema_real_eip !5
  %127 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !5
  store i2 %127, i2* %FPU_PC, align 1, !mcsema_real_eip !5
  %128 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !5
  store i1 %128, i1* %FPU_PM, align 1, !mcsema_real_eip !5
  %129 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !5
  store i1 %129, i1* %FPU_UM, align 1, !mcsema_real_eip !5
  %130 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !5
  store i1 %130, i1* %FPU_OM, align 1, !mcsema_real_eip !5
  %131 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !5
  store i1 %131, i1* %FPU_ZM, align 1, !mcsema_real_eip !5
  %132 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !5
  store i1 %132, i1* %FPU_DM, align 1, !mcsema_real_eip !5
  %133 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !5
  store i1 %133, i1* %FPU_IM, align 1, !mcsema_real_eip !5
  %134 = load i64, i64* %53, align 4
  store i64 %134, i64* %52, align 4
  %135 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !5
  store i16 %135, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !5
  %136 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !5
  store i64 %136, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !5
  %137 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !5
  store i16 %137, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !5
  %138 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !5
  store i64 %138, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !5
  %139 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !5
  store i11 %139, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !5
  %140 = load i128, i128* %XMM0_val, !mcsema_real_eip !5
  store i128 %140, i128* %XMM0, align 1, !mcsema_real_eip !5
  %141 = load i128, i128* %XMM1_val, !mcsema_real_eip !5
  store i128 %141, i128* %XMM1, align 1, !mcsema_real_eip !5
  %142 = load i128, i128* %XMM2_val, !mcsema_real_eip !5
  store i128 %142, i128* %XMM2, align 1, !mcsema_real_eip !5
  %143 = load i128, i128* %XMM3_val, !mcsema_real_eip !5
  store i128 %143, i128* %XMM3, align 1, !mcsema_real_eip !5
  %144 = load i128, i128* %XMM4_val, !mcsema_real_eip !5
  store i128 %144, i128* %XMM4, align 1, !mcsema_real_eip !5
  %145 = load i128, i128* %XMM5_val, !mcsema_real_eip !5
  store i128 %145, i128* %XMM5, align 1, !mcsema_real_eip !5
  %146 = load i128, i128* %XMM6_val, !mcsema_real_eip !5
  store i128 %146, i128* %XMM6, align 1, !mcsema_real_eip !5
  %147 = load i128, i128* %XMM7_val, !mcsema_real_eip !5
  store i128 %147, i128* %XMM7, align 1, !mcsema_real_eip !5
  %148 = load i128, i128* %XMM8_val, !mcsema_real_eip !5
  store i128 %148, i128* %XMM8, align 1, !mcsema_real_eip !5
  %149 = load i128, i128* %XMM9_val, !mcsema_real_eip !5
  store i128 %149, i128* %XMM9, align 1, !mcsema_real_eip !5
  %150 = load i128, i128* %XMM10_val, !mcsema_real_eip !5
  store i128 %150, i128* %XMM10, align 1, !mcsema_real_eip !5
  %151 = load i128, i128* %XMM11_val, !mcsema_real_eip !5
  store i128 %151, i128* %XMM11, align 1, !mcsema_real_eip !5
  %152 = load i128, i128* %XMM12_val, !mcsema_real_eip !5
  store i128 %152, i128* %XMM12, align 1, !mcsema_real_eip !5
  %153 = load i128, i128* %XMM13_val, !mcsema_real_eip !5
  store i128 %153, i128* %XMM13, align 1, !mcsema_real_eip !5
  %154 = load i128, i128* %XMM14_val, !mcsema_real_eip !5
  store i128 %154, i128* %XMM14, align 1, !mcsema_real_eip !5
  %155 = load i128, i128* %XMM15_val, !mcsema_real_eip !5
  store i128 %155, i128* %XMM15, align 1, !mcsema_real_eip !5
  %156 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !5
  store i64 %156, i64* %STACK_BASE, align 1, !mcsema_real_eip !5
  %157 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !5
  store i64 %157, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !5
  tail call x86_64_sysvcc void @sub_400710(%struct.regs* %0), !mcsema_real_eip !5
  %158 = load i64, i64* %RAX, !mcsema_real_eip !5
  store i64 %158, i64* %RAX_val, !mcsema_real_eip !5
  %159 = load i64, i64* %RBX, !mcsema_real_eip !5
  store i64 %159, i64* %RBX_val, !mcsema_real_eip !5
  %160 = load i64, i64* %RCX, !mcsema_real_eip !5
  store i64 %160, i64* %RCX_val, !mcsema_real_eip !5
  %161 = load i64, i64* %RDX, !mcsema_real_eip !5
  store i64 %161, i64* %RDX_val, !mcsema_real_eip !5
  %162 = load i64, i64* %RSI, !mcsema_real_eip !5
  store i64 %162, i64* %RSI_val, !mcsema_real_eip !5
  %163 = load i64, i64* %RDI, !mcsema_real_eip !5
  store i64 %163, i64* %RDI_val, !mcsema_real_eip !5
  %164 = load i64, i64* %RSP, !mcsema_real_eip !5
  store i64 %164, i64* %RSP_val, !mcsema_real_eip !5
  %165 = load i64, i64* %RBP, !mcsema_real_eip !5
  store i64 %165, i64* %RBP_val, !mcsema_real_eip !5
  %166 = load i64, i64* %R8, !mcsema_real_eip !5
  store i64 %166, i64* %R8_val, !mcsema_real_eip !5
  %167 = load i64, i64* %R9, !mcsema_real_eip !5
  store i64 %167, i64* %R9_val, !mcsema_real_eip !5
  %168 = load i64, i64* %R10, !mcsema_real_eip !5
  store i64 %168, i64* %R10_val, !mcsema_real_eip !5
  %169 = load i64, i64* %R11, !mcsema_real_eip !5
  store i64 %169, i64* %R11_val, !mcsema_real_eip !5
  %170 = load i64, i64* %R12, !mcsema_real_eip !5
  store i64 %170, i64* %R12_val, !mcsema_real_eip !5
  %171 = load i64, i64* %R13, !mcsema_real_eip !5
  store i64 %171, i64* %R13_val, !mcsema_real_eip !5
  %172 = load i64, i64* %R14, !mcsema_real_eip !5
  store i64 %172, i64* %R14_val, !mcsema_real_eip !5
  %173 = load i64, i64* %R15, !mcsema_real_eip !5
  store i64 %173, i64* %R15_val, !mcsema_real_eip !5
  %174 = load i64, i64* %RIP, !mcsema_real_eip !5
  store i64 %174, i64* %RIP_val, !mcsema_real_eip !5
  %175 = load i1, i1* %CF, align 1, !mcsema_real_eip !5
  store i1 %175, i1* %CF_val, !mcsema_real_eip !5
  %176 = load i1, i1* %PF, align 1, !mcsema_real_eip !5
  store i1 %176, i1* %PF_val, !mcsema_real_eip !5
  %177 = load i1, i1* %AF, align 1, !mcsema_real_eip !5
  store i1 %177, i1* %AF_val, !mcsema_real_eip !5
  %178 = load i1, i1* %ZF, align 1, !mcsema_real_eip !5
  store i1 %178, i1* %ZF_val, !mcsema_real_eip !5
  %179 = load i1, i1* %SF, align 1, !mcsema_real_eip !5
  store i1 %179, i1* %SF_val, !mcsema_real_eip !5
  %180 = load i1, i1* %OF, align 1, !mcsema_real_eip !5
  store i1 %180, i1* %OF_val, !mcsema_real_eip !5
  %181 = load i1, i1* %DF, align 1, !mcsema_real_eip !5
  store i1 %181, i1* %DF_val, !mcsema_real_eip !5
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !5
  %182 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !5
  store i1 %182, i1* %FPU_B_val, !mcsema_real_eip !5
  %183 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !5
  store i1 %183, i1* %FPU_C3_val, !mcsema_real_eip !5
  %184 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !5
  store i3 %184, i3* %FPU_TOP_val, !mcsema_real_eip !5
  %185 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !5
  store i1 %185, i1* %FPU_C2_val, !mcsema_real_eip !5
  %186 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !5
  store i1 %186, i1* %FPU_C1_val, !mcsema_real_eip !5
  %187 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !5
  store i1 %187, i1* %FPU_C0_val, !mcsema_real_eip !5
  %188 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !5
  store i1 %188, i1* %FPU_ES_val, !mcsema_real_eip !5
  %189 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !5
  store i1 %189, i1* %FPU_SF_val, !mcsema_real_eip !5
  %190 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !5
  store i1 %190, i1* %FPU_PE_val, !mcsema_real_eip !5
  %191 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !5
  store i1 %191, i1* %FPU_UE_val, !mcsema_real_eip !5
  %192 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !5
  store i1 %192, i1* %FPU_OE_val, !mcsema_real_eip !5
  %193 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !5
  store i1 %193, i1* %FPU_ZE_val, !mcsema_real_eip !5
  %194 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !5
  store i1 %194, i1* %FPU_DE_val, !mcsema_real_eip !5
  %195 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !5
  store i1 %195, i1* %FPU_IE_val, !mcsema_real_eip !5
  %196 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !5
  store i1 %196, i1* %FPU_X_val, !mcsema_real_eip !5
  %197 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !5
  store i2 %197, i2* %FPU_RC_val, !mcsema_real_eip !5
  %198 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !5
  store i2 %198, i2* %FPU_PC_val, !mcsema_real_eip !5
  %199 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !5
  store i1 %199, i1* %FPU_PM_val, !mcsema_real_eip !5
  %200 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !5
  store i1 %200, i1* %FPU_UM_val, !mcsema_real_eip !5
  %201 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !5
  store i1 %201, i1* %FPU_OM_val, !mcsema_real_eip !5
  %202 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !5
  store i1 %202, i1* %FPU_ZM_val, !mcsema_real_eip !5
  %203 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !5
  store i1 %203, i1* %FPU_DM_val, !mcsema_real_eip !5
  %204 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !5
  store i1 %204, i1* %FPU_IM_val, !mcsema_real_eip !5
  %205 = load i64, i64* %52, align 4
  store i64 %205, i64* %53, align 4
  %206 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !5
  store i16 %206, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !5
  %207 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !5
  store i64 %207, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !5
  %208 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !5
  store i16 %208, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !5
  %209 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !5
  store i64 %209, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !5
  %210 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !5
  store i11 %210, i11* %FPU_FOPCODE_val, !mcsema_real_eip !5
  %211 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !5
  store i128 %211, i128* %XMM0_val, !mcsema_real_eip !5
  %212 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !5
  store i128 %212, i128* %XMM1_val, !mcsema_real_eip !5
  %213 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !5
  store i128 %213, i128* %XMM2_val, !mcsema_real_eip !5
  %214 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !5
  store i128 %214, i128* %XMM3_val, !mcsema_real_eip !5
  %215 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !5
  store i128 %215, i128* %XMM4_val, !mcsema_real_eip !5
  %216 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !5
  store i128 %216, i128* %XMM5_val, !mcsema_real_eip !5
  %217 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !5
  store i128 %217, i128* %XMM6_val, !mcsema_real_eip !5
  %218 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !5
  store i128 %218, i128* %XMM7_val, !mcsema_real_eip !5
  %219 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !5
  store i128 %219, i128* %XMM8_val, !mcsema_real_eip !5
  %220 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !5
  store i128 %220, i128* %XMM9_val, !mcsema_real_eip !5
  %221 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !5
  store i128 %221, i128* %XMM10_val, !mcsema_real_eip !5
  %222 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !5
  store i128 %222, i128* %XMM11_val, !mcsema_real_eip !5
  %223 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !5
  store i128 %223, i128* %XMM12_val, !mcsema_real_eip !5
  %224 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !5
  store i128 %224, i128* %XMM13_val, !mcsema_real_eip !5
  %225 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !5
  store i128 %225, i128* %XMM14_val, !mcsema_real_eip !5
  %226 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !5
  store i128 %226, i128* %XMM15_val, !mcsema_real_eip !5
  %227 = load i64, i64* %STACK_BASE, !mcsema_real_eip !5
  store i64 %227, i64* %STACK_BASE_val, !mcsema_real_eip !5
  %228 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !5
  store i64 %228, i64* %STACK_LIMIT_val, !mcsema_real_eip !5
  %229 = load i64, i64* %RBX_val, !mcsema_real_eip !6
  %230 = trunc i64 %229 to i32, !mcsema_real_eip !6
  %231 = add i32 %230, 1, !mcsema_real_eip !6
  %232 = zext i32 %231 to i64, !mcsema_real_eip !6
  store i64 %232, i64* %RBX_val, !mcsema_real_eip !6
  %233 = add i32 %230, -99
  %234 = xor i32 %233, %231, !mcsema_real_eip !7
  %235 = and i32 %234, 16, !mcsema_real_eip !7
  %236 = icmp ne i32 %235, 0, !mcsema_real_eip !7
  store i1 %236, i1* %AF_val, !mcsema_real_eip !7
  %237 = trunc i32 %233 to i8, !mcsema_real_eip !7
  %238 = tail call i8 @llvm.ctpop.i8(i8 %237), !mcsema_real_eip !7
  %239 = and i8 %238, 1
  %240 = icmp eq i8 %239, 0
  store i1 %240, i1* %PF_val, !mcsema_real_eip !7
  %241 = icmp eq i32 %233, 0, !mcsema_real_eip !7
  store i1 %241, i1* %ZF_val, !mcsema_real_eip !7
  %242 = icmp slt i32 %233, 0
  store i1 %242, i1* %SF_val, !mcsema_real_eip !7
  %243 = icmp ult i32 %231, 100, !mcsema_real_eip !7
  store i1 %243, i1* %CF_val, !mcsema_real_eip !7
  %244 = and i32 %234, %231, !mcsema_real_eip !7
  %245 = icmp slt i32 %244, 0
  store i1 %245, i1* %OF_val, !mcsema_real_eip !7
  %246 = load i1, i1* %ZF_val, !mcsema_real_eip !8
  br i1 %246, label %block_0x40086e, label %block_0x400860, !mcsema_real_eip !8

block_0x40086e:                                   ; preds = %block_0x400860
  store i1 false, i1* %CF_val, !mcsema_real_eip !9
  store i1 false, i1* %OF_val, !mcsema_real_eip !9
  store i1 false, i1* %SF_val, !mcsema_real_eip !9
  store i1 true, i1* %ZF_val, !mcsema_real_eip !9
  store i1 true, i1* %PF_val, !mcsema_real_eip !9
  store i64 0, i64* %RAX_val, !mcsema_real_eip !9
  %247 = load i64, i64* %RSP_val, !mcsema_real_eip !10
  %248 = inttoptr i64 %247 to i64*, !mcsema_real_eip !10
  %249 = load i64, i64* %248, !mcsema_real_eip !10
  store i64 %249, i64* %RBX_val, !mcsema_real_eip !10
  %250 = add i64 %247, 16, !mcsema_real_eip !11
  store i64 %250, i64* %RSP_val, !mcsema_real_eip !11
  %251 = load i64, i64* %RAX_val, !mcsema_real_eip !11
  store i64 %251, i64* %RAX, !mcsema_real_eip !11
  %252 = load i64, i64* %RBX_val, !mcsema_real_eip !11
  store i64 %252, i64* %RBX, !mcsema_real_eip !11
  %253 = load i64, i64* %RCX_val, !mcsema_real_eip !11
  store i64 %253, i64* %RCX, !mcsema_real_eip !11
  %254 = load i64, i64* %RDX_val, !mcsema_real_eip !11
  store i64 %254, i64* %RDX, !mcsema_real_eip !11
  %255 = load i64, i64* %RSI_val, !mcsema_real_eip !11
  store i64 %255, i64* %RSI, !mcsema_real_eip !11
  %256 = load i64, i64* %RDI_val, !mcsema_real_eip !11
  store i64 %256, i64* %RDI, !mcsema_real_eip !11
  %257 = load i64, i64* %RSP_val, !mcsema_real_eip !11
  store i64 %257, i64* %RSP, !mcsema_real_eip !11
  %258 = load i64, i64* %RBP_val, !mcsema_real_eip !11
  store i64 %258, i64* %RBP, !mcsema_real_eip !11
  %259 = load i64, i64* %R8_val, !mcsema_real_eip !11
  store i64 %259, i64* %R8, !mcsema_real_eip !11
  %260 = load i64, i64* %R9_val, !mcsema_real_eip !11
  store i64 %260, i64* %R9, !mcsema_real_eip !11
  %261 = load i64, i64* %R10_val, !mcsema_real_eip !11
  store i64 %261, i64* %R10, !mcsema_real_eip !11
  %262 = load i64, i64* %R11_val, !mcsema_real_eip !11
  store i64 %262, i64* %R11, !mcsema_real_eip !11
  %263 = load i64, i64* %R12_val, !mcsema_real_eip !11
  store i64 %263, i64* %R12, !mcsema_real_eip !11
  %264 = load i64, i64* %R13_val, !mcsema_real_eip !11
  store i64 %264, i64* %R13, !mcsema_real_eip !11
  %265 = load i64, i64* %R14_val, !mcsema_real_eip !11
  store i64 %265, i64* %R14, !mcsema_real_eip !11
  %266 = load i64, i64* %R15_val, !mcsema_real_eip !11
  store i64 %266, i64* %R15, !mcsema_real_eip !11
  %267 = load i64, i64* %RIP_val, !mcsema_real_eip !11
  store i64 %267, i64* %RIP, !mcsema_real_eip !11
  %268 = load i1, i1* %CF_val, !mcsema_real_eip !11
  store i1 %268, i1* %CF, align 1, !mcsema_real_eip !11
  %269 = load i1, i1* %PF_val, !mcsema_real_eip !11
  store i1 %269, i1* %PF, align 1, !mcsema_real_eip !11
  %270 = load i1, i1* %AF_val, !mcsema_real_eip !11
  store i1 %270, i1* %AF, align 1, !mcsema_real_eip !11
  %271 = load i1, i1* %ZF_val, !mcsema_real_eip !11
  store i1 %271, i1* %ZF, align 1, !mcsema_real_eip !11
  %272 = load i1, i1* %SF_val, !mcsema_real_eip !11
  store i1 %272, i1* %SF, align 1, !mcsema_real_eip !11
  %273 = load i1, i1* %OF_val, !mcsema_real_eip !11
  store i1 %273, i1* %OF, align 1, !mcsema_real_eip !11
  %274 = load i1, i1* %DF_val, !mcsema_real_eip !11
  store i1 %274, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  %275 = load i1, i1* %FPU_B_val, !mcsema_real_eip !11
  store i1 %275, i1* %FPU_B, align 1, !mcsema_real_eip !11
  %276 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !11
  store i1 %276, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  %277 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !11
  store i3 %277, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  %278 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !11
  store i1 %278, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  %279 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !11
  store i1 %279, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  %280 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !11
  store i1 %280, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  %281 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !11
  store i1 %281, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  %282 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !11
  store i1 %282, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  %283 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !11
  store i1 %283, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  %284 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !11
  store i1 %284, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  %285 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !11
  store i1 %285, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  %286 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !11
  store i1 %286, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  %287 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !11
  store i1 %287, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  %288 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !11
  store i1 %288, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  %289 = load i1, i1* %FPU_X_val, !mcsema_real_eip !11
  store i1 %289, i1* %FPU_X, align 1, !mcsema_real_eip !11
  %290 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !11
  store i2 %290, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  %291 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !11
  store i2 %291, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  %292 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !11
  store i1 %292, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  %293 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !11
  store i1 %293, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  %294 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !11
  store i1 %294, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  %295 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !11
  store i1 %295, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  %296 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !11
  store i1 %296, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  %297 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !11
  store i1 %297, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  %298 = load i64, i64* %53, align 4
  store i64 %298, i64* %52, align 4
  %299 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !11
  store i16 %299, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  %300 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !11
  store i64 %300, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  %301 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !11
  store i16 %301, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  %302 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !11
  store i64 %302, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  %303 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !11
  store i11 %303, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !11
  %304 = load i128, i128* %XMM0_val, !mcsema_real_eip !11
  store i128 %304, i128* %XMM0, align 1, !mcsema_real_eip !11
  %305 = load i128, i128* %XMM1_val, !mcsema_real_eip !11
  store i128 %305, i128* %XMM1, align 1, !mcsema_real_eip !11
  %306 = load i128, i128* %XMM2_val, !mcsema_real_eip !11
  store i128 %306, i128* %XMM2, align 1, !mcsema_real_eip !11
  %307 = load i128, i128* %XMM3_val, !mcsema_real_eip !11
  store i128 %307, i128* %XMM3, align 1, !mcsema_real_eip !11
  %308 = load i128, i128* %XMM4_val, !mcsema_real_eip !11
  store i128 %308, i128* %XMM4, align 1, !mcsema_real_eip !11
  %309 = load i128, i128* %XMM5_val, !mcsema_real_eip !11
  store i128 %309, i128* %XMM5, align 1, !mcsema_real_eip !11
  %310 = load i128, i128* %XMM6_val, !mcsema_real_eip !11
  store i128 %310, i128* %XMM6, align 1, !mcsema_real_eip !11
  %311 = load i128, i128* %XMM7_val, !mcsema_real_eip !11
  store i128 %311, i128* %XMM7, align 1, !mcsema_real_eip !11
  %312 = load i128, i128* %XMM8_val, !mcsema_real_eip !11
  store i128 %312, i128* %XMM8, align 1, !mcsema_real_eip !11
  %313 = load i128, i128* %XMM9_val, !mcsema_real_eip !11
  store i128 %313, i128* %XMM9, align 1, !mcsema_real_eip !11
  %314 = load i128, i128* %XMM10_val, !mcsema_real_eip !11
  store i128 %314, i128* %XMM10, align 1, !mcsema_real_eip !11
  %315 = load i128, i128* %XMM11_val, !mcsema_real_eip !11
  store i128 %315, i128* %XMM11, align 1, !mcsema_real_eip !11
  %316 = load i128, i128* %XMM12_val, !mcsema_real_eip !11
  store i128 %316, i128* %XMM12, align 1, !mcsema_real_eip !11
  %317 = load i128, i128* %XMM13_val, !mcsema_real_eip !11
  store i128 %317, i128* %XMM13, align 1, !mcsema_real_eip !11
  %318 = load i128, i128* %XMM14_val, !mcsema_real_eip !11
  store i128 %318, i128* %XMM14, align 1, !mcsema_real_eip !11
  %319 = load i128, i128* %XMM15_val, !mcsema_real_eip !11
  store i128 %319, i128* %XMM15, align 1, !mcsema_real_eip !11
  %320 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !11
  store i64 %320, i64* %STACK_BASE, align 1, !mcsema_real_eip !11
  %321 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !11
  store i64 %321, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11
}

define internal x86_64_sysvcc void @sub_400710(%struct.regs*) {
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
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !12
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
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !12
  %1 = load i64, i64* %RAX, !mcsema_real_eip !12
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !12
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !12
  %2 = load i64, i64* %RBX, !mcsema_real_eip !12
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !12
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !12
  %3 = load i64, i64* %RCX, !mcsema_real_eip !12
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !12
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !12
  %4 = load i64, i64* %RDX, !mcsema_real_eip !12
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !12
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !12
  %5 = load i64, i64* %RSI, !mcsema_real_eip !12
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !12
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !12
  %6 = load i64, i64* %RDI, !mcsema_real_eip !12
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !12
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !12
  %7 = load i64, i64* %RSP, !mcsema_real_eip !12
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !12
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !12
  %8 = load i64, i64* %RBP, !mcsema_real_eip !12
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !12
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !12
  %9 = load i64, i64* %R8, !mcsema_real_eip !12
  store i64 %9, i64* %R8_val, !mcsema_real_eip !12
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !12
  %10 = load i64, i64* %R9, !mcsema_real_eip !12
  store i64 %10, i64* %R9_val, !mcsema_real_eip !12
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !12
  %11 = load i64, i64* %R10, !mcsema_real_eip !12
  store i64 %11, i64* %R10_val, !mcsema_real_eip !12
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !12
  %12 = load i64, i64* %R11, !mcsema_real_eip !12
  store i64 %12, i64* %R11_val, !mcsema_real_eip !12
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !12
  %13 = load i64, i64* %R12, !mcsema_real_eip !12
  store i64 %13, i64* %R12_val, !mcsema_real_eip !12
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !12
  %14 = load i64, i64* %R13, !mcsema_real_eip !12
  store i64 %14, i64* %R13_val, !mcsema_real_eip !12
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !12
  %15 = load i64, i64* %R14, !mcsema_real_eip !12
  store i64 %15, i64* %R14_val, !mcsema_real_eip !12
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !12
  %16 = load i64, i64* %R15, !mcsema_real_eip !12
  store i64 %16, i64* %R15_val, !mcsema_real_eip !12
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !12
  %17 = load i64, i64* %RIP, !mcsema_real_eip !12
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !12
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !12
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !12
  store i1 %18, i1* %CF_val, !mcsema_real_eip !12
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !12
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !12
  store i1 %19, i1* %PF_val, !mcsema_real_eip !12
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !12
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !12
  store i1 %20, i1* %AF_val, !mcsema_real_eip !12
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !12
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !12
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !12
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !12
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !12
  store i1 %22, i1* %SF_val, !mcsema_real_eip !12
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !12
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !12
  store i1 %23, i1* %OF_val, !mcsema_real_eip !12
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !12
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !12
  store i1 %24, i1* %DF_val, !mcsema_real_eip !12
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !12
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !12
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !12
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !12
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !12
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !12
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !12
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !12
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !12
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !12
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !12
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !12
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !12
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !12
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !12
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !12
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !12
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !12
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !12
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !12
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !12
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !12
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !12
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !12
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !12
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !12
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !12
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !12
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !12
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !12
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !12
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !12
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !12
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !12
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !12
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !12
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !12
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !12
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !12
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !12
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !12
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !12
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !12
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !12
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !12
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !12
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !12
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !12
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !12
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !12
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !12
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !12
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !12
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !12
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !12
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !12
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !12
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !12
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !12
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !12
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !12
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !12
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !12
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !12
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !12
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !12
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !12
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !12
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !12
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !12
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !12
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !12
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !12
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !12
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !12
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !12
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !12
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !12
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !12
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !12
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !12
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !12
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !12
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !12
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !12
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !12
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !12
  %59 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !12
  store i11 %59, i11* %FPU_FOPCODE_val, !mcsema_real_eip !12
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !12
  %60 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !12
  store i128 %60, i128* %XMM0_val, !mcsema_real_eip !12
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !12
  %61 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !12
  store i128 %61, i128* %XMM1_val, !mcsema_real_eip !12
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !12
  %62 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !12
  store i128 %62, i128* %XMM2_val, !mcsema_real_eip !12
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !12
  %63 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !12
  store i128 %63, i128* %XMM3_val, !mcsema_real_eip !12
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !12
  %64 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !12
  store i128 %64, i128* %XMM4_val, !mcsema_real_eip !12
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !12
  %65 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !12
  store i128 %65, i128* %XMM5_val, !mcsema_real_eip !12
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !12
  %66 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !12
  store i128 %66, i128* %XMM6_val, !mcsema_real_eip !12
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !12
  %67 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !12
  store i128 %67, i128* %XMM7_val, !mcsema_real_eip !12
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !12
  %68 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !12
  store i128 %68, i128* %XMM8_val, !mcsema_real_eip !12
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !12
  %69 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !12
  store i128 %69, i128* %XMM9_val, !mcsema_real_eip !12
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !12
  %70 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !12
  store i128 %70, i128* %XMM10_val, !mcsema_real_eip !12
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !12
  %71 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !12
  store i128 %71, i128* %XMM11_val, !mcsema_real_eip !12
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !12
  %72 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !12
  store i128 %72, i128* %XMM12_val, !mcsema_real_eip !12
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !12
  %73 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !12
  store i128 %73, i128* %XMM13_val, !mcsema_real_eip !12
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !12
  %74 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !12
  store i128 %74, i128* %XMM14_val, !mcsema_real_eip !12
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !12
  %75 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !12
  store i128 %75, i128* %XMM15_val, !mcsema_real_eip !12
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !12
  %76 = load i64, i64* %STACK_BASE, !mcsema_real_eip !12
  store i64 %76, i64* %STACK_BASE_val, !mcsema_real_eip !12
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !12
  %77 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !12
  store i64 %77, i64* %STACK_LIMIT_val, !mcsema_real_eip !12
  %78 = load i64, i64* %RBP_val, !mcsema_real_eip !12
  %79 = load i64, i64* %RSP_val, !mcsema_real_eip !12
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !12
  store i64 %78, i64* %81, !mcsema_real_eip !12
  %82 = load i64, i64* %R14_val, !mcsema_real_eip !13
  %83 = add i64 %79, -16
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !13
  store i64 %82, i64* %84, !mcsema_real_eip !13
  %85 = load i64, i64* %RBX_val, !mcsema_real_eip !14
  %86 = add i64 %79, -24
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !14
  store i64 %85, i64* %87, !mcsema_real_eip !14
  store i64 %86, i64* %RSP_val, !mcsema_real_eip !14
  %88 = load i64, i64* %RDI_val, !mcsema_real_eip !15
  %89 = and i64 %88, 4294967295
  store i64 %89, i64* %R14_val, !mcsema_real_eip !15
  store i64 74755, i64* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 58896) to i64*), !mcsema_real_eip !16
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 58892) to i32*), !mcsema_real_eip !17
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 17588) to i32*), !mcsema_real_eip !18
  store i64 0, i64* %R8_val, !mcsema_real_eip !19
  store i64 -2000, i64* %RDI_val, !mcsema_real_eip !20
  store i64 74755, i64* %RBP_val, !mcsema_real_eip !21
  store i64 755578637259143235, i64* %RBX_val, !mcsema_real_eip !22
  store i1 false, i1* %CF_val, !mcsema_real_eip !23
  store i1 false, i1* %OF_val, !mcsema_real_eip !23
  store i1 false, i1* %SF_val, !mcsema_real_eip !23
  store i1 true, i1* %ZF_val, !mcsema_real_eip !23
  store i1 true, i1* %PF_val, !mcsema_real_eip !23
  store i64 0, i64* %RSI_val, !mcsema_real_eip !23
  br label %block_0x400760, !mcsema_real_eip !24

block_0x400760:                                   ; preds = %block_0x4007ae, %entry
  %90 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %91 = trunc i64 %90 to i32, !mcsema_real_eip !24
  %92 = mul i32 %91, 1309, !mcsema_real_eip !24
  %93 = add i32 %92, 13849
  %94 = and i32 %93, 65535
  %95 = zext i32 %94 to i64, !mcsema_real_eip !25
  store i64 %95, i64* %RBP_val, !mcsema_real_eip !25
  %96 = lshr i64 %95, 5
  %97 = load i64, i64* %RBX_val, !mcsema_real_eip !26
  %98 = zext i64 %96 to i128, !mcsema_real_eip !26
  %99 = zext i64 %97 to i128, !mcsema_real_eip !26
  %100 = mul i128 %98, %99, !mcsema_real_eip !26
  %101 = lshr i128 %100, 71
  %102 = trunc i128 %101 to i64
  store i64 %102, i64* %RDX_val, !mcsema_real_eip !27
  %103 = trunc i128 %101 to i32
  %104 = mul i32 %103, 100000, !mcsema_real_eip !28
  %105 = zext i32 %104 to i64, !mcsema_real_eip !28
  store i64 %105, i64* %RCX_val, !mcsema_real_eip !28
  %106 = load i64, i64* %RBP_val, !mcsema_real_eip !29
  %107 = trunc i64 %106 to i32, !mcsema_real_eip !30
  %108 = sub i32 %107, %104, !mcsema_real_eip !30
  %109 = add i32 %108, -50000
  %110 = zext i32 %109 to i64, !mcsema_real_eip !31
  store i64 %110, i64* %RAX_val, !mcsema_real_eip !31
  %111 = load i64, i64* %RSI_val, !mcsema_real_eip !32
  %112 = trunc i64 %111 to i32, !mcsema_real_eip !32
  %113 = sub i32 %109, %112, !mcsema_real_eip !32
  %114 = xor i32 %113, %109, !mcsema_real_eip !32
  %115 = xor i32 %114, %112, !mcsema_real_eip !32
  %116 = and i32 %115, 16, !mcsema_real_eip !32
  %117 = icmp ne i32 %116, 0, !mcsema_real_eip !32
  store i1 %117, i1* %AF_val, !mcsema_real_eip !32
  %118 = trunc i32 %113 to i8, !mcsema_real_eip !32
  %119 = tail call i8 @llvm.ctpop.i8(i8 %118), !mcsema_real_eip !32
  %120 = and i8 %119, 1
  %121 = icmp eq i8 %120, 0
  store i1 %121, i1* %PF_val, !mcsema_real_eip !32
  %122 = icmp eq i32 %109, %112
  store i1 %122, i1* %ZF_val, !mcsema_real_eip !32
  %123 = icmp slt i32 %113, 0
  store i1 %123, i1* %SF_val, !mcsema_real_eip !32
  %124 = icmp ult i32 %109, %112, !mcsema_real_eip !32
  store i1 %124, i1* %CF_val, !mcsema_real_eip !32
  %125 = xor i32 %112, %109, !mcsema_real_eip !32
  %126 = and i32 %114, %125, !mcsema_real_eip !32
  %127 = icmp slt i32 %126, 0
  store i1 %127, i1* %OF_val, !mcsema_real_eip !32
  %128 = load i64, i64* %RDI_val, !mcsema_real_eip !33
  %129 = add i64 %128, add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 69732), !mcsema_real_eip !33
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !33
  %131 = load i64, i64* %RAX_val, !mcsema_real_eip !33
  %132 = trunc i64 %131 to i32, !mcsema_real_eip !33
  %133 = bitcast i64* %130 to i32*
  store i32 %132, i32* %133, !mcsema_real_eip !33
  %134 = load i1, i1* %OF_val, !mcsema_real_eip !34
  %135 = load i1, i1* %SF_val, !mcsema_real_eip !34
  %136 = xor i1 %135, %134
  %137 = load i1, i1* %ZF_val, !mcsema_real_eip !34
  %138 = or i1 %137, %136, !mcsema_real_eip !34
  %139 = load i64, i64* %RAX_val, !mcsema_real_eip !35
  %140 = trunc i64 %139 to i32, !mcsema_real_eip !35
  br i1 %138, label %block_0x4007a0, label %block_0x400795, !mcsema_real_eip !34

block_0x400795:                                   ; preds = %block_0x400760
  store i32 %140, i32* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 58892) to i32*), !mcsema_real_eip !36
  %141 = load i64, i64* %RAX_val, !mcsema_real_eip !37
  %142 = and i64 %141, 4294967295
  store i64 %142, i64* %RSI_val, !mcsema_real_eip !37
  br label %block_0x4007ae, !mcsema_real_eip !38

block_0x4007a0:                                   ; preds = %block_0x400760
  %143 = load i64, i64* %R8_val, !mcsema_real_eip !35
  %144 = trunc i64 %143 to i32, !mcsema_real_eip !35
  %145 = sub i32 %140, %144, !mcsema_real_eip !35
  %146 = xor i32 %145, %140, !mcsema_real_eip !35
  %147 = xor i32 %146, %144, !mcsema_real_eip !35
  %148 = and i32 %147, 16, !mcsema_real_eip !35
  %149 = icmp ne i32 %148, 0, !mcsema_real_eip !35
  store i1 %149, i1* %AF_val, !mcsema_real_eip !35
  %150 = trunc i32 %145 to i8, !mcsema_real_eip !35
  %151 = tail call i8 @llvm.ctpop.i8(i8 %150), !mcsema_real_eip !35
  %152 = and i8 %151, 1
  %153 = icmp eq i8 %152, 0
  store i1 %153, i1* %PF_val, !mcsema_real_eip !35
  %154 = icmp eq i32 %140, %144
  store i1 %154, i1* %ZF_val, !mcsema_real_eip !35
  %155 = icmp slt i32 %145, 0
  store i1 %155, i1* %SF_val, !mcsema_real_eip !35
  %156 = icmp ult i32 %140, %144, !mcsema_real_eip !35
  store i1 %156, i1* %CF_val, !mcsema_real_eip !35
  %157 = xor i64 %143, %139
  %158 = trunc i64 %157 to i32
  %159 = and i32 %146, %158, !mcsema_real_eip !35
  %160 = icmp slt i32 %159, 0
  store i1 %160, i1* %OF_val, !mcsema_real_eip !35
  %161 = load i1, i1* %SF_val, !mcsema_real_eip !39
  %tmp78 = xor i1 %161, %160
  br i1 %tmp78, label %block_0x4007a5, label %block_0x4007ae, !mcsema_real_eip !39

block_0x4007a5:                                   ; preds = %block_0x4007a0
  %162 = load i64, i64* %RAX_val, !mcsema_real_eip !40
  %163 = trunc i64 %162 to i32, !mcsema_real_eip !40
  store i32 %163, i32* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 17588) to i32*), !mcsema_real_eip !40
  %164 = load i64, i64* %RAX_val, !mcsema_real_eip !41
  %165 = and i64 %164, 4294967295
  store i64 %165, i64* %R8_val, !mcsema_real_eip !41
  br label %block_0x4007ae, !mcsema_real_eip !42

block_0x4007ae:                                   ; preds = %block_0x4007a5, %block_0x4007a0, %block_0x400795
  %166 = load i64, i64* %RDI_val, !mcsema_real_eip !43
  %uadd73 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %166, i64 4)
  %167 = extractvalue { i64, i1 } %uadd73, 0
  %168 = xor i64 %167, %166, !mcsema_real_eip !43
  %169 = and i64 %168, 16, !mcsema_real_eip !43
  %170 = icmp ne i64 %169, 0, !mcsema_real_eip !43
  store i1 %170, i1* %AF_val, !mcsema_real_eip !43
  %171 = icmp slt i64 %167, 0
  store i1 %171, i1* %SF_val, !mcsema_real_eip !43
  %172 = icmp eq i64 %167, 0, !mcsema_real_eip !43
  store i1 %172, i1* %ZF_val, !mcsema_real_eip !43
  %173 = xor i64 %166, -9223372036854775808, !mcsema_real_eip !43
  %174 = and i64 %168, %173, !mcsema_real_eip !43
  %175 = icmp slt i64 %174, 0
  store i1 %175, i1* %OF_val, !mcsema_real_eip !43
  %176 = trunc i64 %167 to i8, !mcsema_real_eip !43
  %177 = tail call i8 @llvm.ctpop.i8(i8 %176), !mcsema_real_eip !43
  %178 = and i8 %177, 1
  %179 = icmp eq i8 %178, 0
  store i1 %179, i1* %PF_val, !mcsema_real_eip !43
  %180 = extractvalue { i64, i1 } %uadd73, 1
  store i1 %180, i1* %CF_val, !mcsema_real_eip !43
  store i64 %167, i64* %RDI_val, !mcsema_real_eip !43
  %181 = load i1, i1* %ZF_val, !mcsema_real_eip !44
  br i1 %181, label %block_0x4007b4, label %block_0x400760, !mcsema_real_eip !44

block_0x4007b4:                                   ; preds = %block_0x4007ae
  %182 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  store i64 %182, i64* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 58896) to i64*), !mcsema_real_eip !42
  store i32 500, i32* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 44224) to i32*), !mcsema_real_eip !45
  store i64 500, i64* %RAX_val, !mcsema_real_eip !46
  store i64 499, i64* %RBP_val, !mcsema_real_eip !47
  br label %block_0x4007d0, !mcsema_real_eip !48

block_0x4007d0:                                   ; preds = %block_0x4007fa, %block_0x4007b4
  %183 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 67732) to i32*), !mcsema_real_eip !48
  %184 = zext i32 %183 to i64, !mcsema_real_eip !48
  store i64 %184, i64* %RCX_val, !mcsema_real_eip !48
  %185 = load i64, i64* %RBP_val, !mcsema_real_eip !49
  %186 = and i64 %185, 4294967295
  store i64 %186, i64* %RDX_val, !mcsema_real_eip !49
  store i64 zext (i32 add (i32 ptrtoint (%1* @data_0x601050 to i32), i32 67736) to i64), i64* %RBX_val, !mcsema_real_eip !50
  br label %block_0x4007e0, !mcsema_real_eip !51

block_0x4007e0:                                   ; preds = %block_0x4007f2, %block_0x4007d0
  %187 = load i64, i64* %RBX_val, !mcsema_real_eip !51
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !51
  %189 = bitcast i64* %188 to i32*
  %190 = load i32, i32* %189, !mcsema_real_eip !51
  %191 = zext i32 %190 to i64, !mcsema_real_eip !51
  store i64 %191, i64* %RDI_val, !mcsema_real_eip !51
  %192 = load i64, i64* %RCX_val, !mcsema_real_eip !52
  %193 = trunc i64 %192 to i32, !mcsema_real_eip !52
  %194 = sub i32 %193, %190, !mcsema_real_eip !52
  %195 = xor i32 %194, %193, !mcsema_real_eip !52
  %196 = xor i32 %195, %190, !mcsema_real_eip !52
  %197 = and i32 %196, 16, !mcsema_real_eip !52
  %198 = icmp ne i32 %197, 0, !mcsema_real_eip !52
  store i1 %198, i1* %AF_val, !mcsema_real_eip !52
  %199 = trunc i32 %194 to i8, !mcsema_real_eip !52
  %200 = tail call i8 @llvm.ctpop.i8(i8 %199), !mcsema_real_eip !52
  %201 = and i8 %200, 1
  %202 = icmp eq i8 %201, 0
  store i1 %202, i1* %PF_val, !mcsema_real_eip !52
  %203 = icmp eq i32 %193, %190
  store i1 %203, i1* %ZF_val, !mcsema_real_eip !52
  %204 = icmp slt i32 %194, 0
  store i1 %204, i1* %SF_val, !mcsema_real_eip !52
  %205 = icmp ult i32 %193, %190, !mcsema_real_eip !52
  store i1 %205, i1* %CF_val, !mcsema_real_eip !52
  %206 = xor i32 %193, %190, !mcsema_real_eip !52
  %207 = and i32 %195, %206, !mcsema_real_eip !52
  %208 = icmp slt i32 %207, 0
  store i1 %208, i1* %OF_val, !mcsema_real_eip !52
  %209 = load i1, i1* %SF_val, !mcsema_real_eip !53
  %210 = xor i1 %209, %208
  %211 = load i1, i1* %ZF_val, !mcsema_real_eip !53
  %212 = or i1 %211, %210, !mcsema_real_eip !53
  br i1 %212, label %block_0x4007f0, label %block_0x4007e6, !mcsema_real_eip !53

block_0x4007e6:                                   ; preds = %block_0x4007e0
  %213 = load i64, i64* %RBX_val, !mcsema_real_eip !54
  %214 = add i64 %213, -4, !mcsema_real_eip !54
  %215 = inttoptr i64 %214 to i64*, !mcsema_real_eip !54
  %216 = load i64, i64* %RDI_val, !mcsema_real_eip !54
  %217 = trunc i64 %216 to i32, !mcsema_real_eip !54
  %218 = bitcast i64* %215 to i32*
  store i32 %217, i32* %218, !mcsema_real_eip !54
  %219 = load i64, i64* %RBX_val, !mcsema_real_eip !55
  %220 = inttoptr i64 %219 to i64*, !mcsema_real_eip !55
  %221 = load i64, i64* %RCX_val, !mcsema_real_eip !55
  %222 = trunc i64 %221 to i32, !mcsema_real_eip !55
  %223 = bitcast i64* %220 to i32*
  store i32 %222, i32* %223, !mcsema_real_eip !55
  br label %block_0x4007f2, !mcsema_real_eip !56

block_0x4007f0:                                   ; preds = %block_0x4007e0
  %224 = load i64, i64* %RDI_val, !mcsema_real_eip !57
  %225 = and i64 %224, 4294967295
  store i64 %225, i64* %RCX_val, !mcsema_real_eip !57
  br label %block_0x4007f2, !mcsema_real_eip !54

block_0x4007f2:                                   ; preds = %block_0x4007f0, %block_0x4007e6
  %226 = load i64, i64* %RBX_val, !mcsema_real_eip !58
  %uadd75 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %226, i64 4)
  %227 = extractvalue { i64, i1 } %uadd75, 0
  %228 = extractvalue { i64, i1 } %uadd75, 1
  store i1 %228, i1* %CF_val, !mcsema_real_eip !58
  store i64 %227, i64* %RBX_val, !mcsema_real_eip !58
  %229 = load i64, i64* %RDX_val, !mcsema_real_eip !59
  %230 = trunc i64 %229 to i32, !mcsema_real_eip !59
  %231 = add i32 %230, -1
  %232 = icmp eq i32 %231, 0, !mcsema_real_eip !59
  store i1 %232, i1* %ZF_val, !mcsema_real_eip !59
  %233 = trunc i32 %231 to i8, !mcsema_real_eip !59
  %234 = tail call i8 @llvm.ctpop.i8(i8 %233), !mcsema_real_eip !59
  %235 = and i8 %234, 1
  %236 = icmp eq i8 %235, 0
  store i1 %236, i1* %PF_val, !mcsema_real_eip !59
  %237 = icmp slt i32 %231, 0
  store i1 %237, i1* %SF_val, !mcsema_real_eip !59
  %238 = sub i32 0, %230
  %239 = and i32 %230, %238
  %240 = icmp slt i32 %239, 0
  store i1 %240, i1* %OF_val, !mcsema_real_eip !59
  %241 = zext i32 %231 to i64, !mcsema_real_eip !59
  store i64 %241, i64* %RDX_val, !mcsema_real_eip !59
  %242 = xor i64 %241, %229, !mcsema_real_eip !59
  %243 = and i64 %242, 16, !mcsema_real_eip !59
  %244 = icmp ne i64 %243, 0, !mcsema_real_eip !59
  store i1 %244, i1* %AF_val, !mcsema_real_eip !59
  %245 = load i1, i1* %ZF_val, !mcsema_real_eip !60
  br i1 %245, label %block_0x4007fa, label %block_0x4007e0, !mcsema_real_eip !60

block_0x4007fa:                                   ; preds = %block_0x4007f2
  %246 = load i64, i64* %RAX_val, !mcsema_real_eip !61
  %247 = trunc i64 %246 to i32, !mcsema_real_eip !61
  %248 = add i32 %247, -1
  %249 = zext i32 %248 to i64, !mcsema_real_eip !61
  store i64 %249, i64* %RAX_val, !mcsema_real_eip !61
  %250 = load i64, i64* %RBP_val, !mcsema_real_eip !62
  %251 = trunc i64 %250 to i32, !mcsema_real_eip !62
  %252 = add i32 %251, -1
  %253 = zext i32 %252 to i64, !mcsema_real_eip !62
  store i64 %253, i64* %RBP_val, !mcsema_real_eip !62
  %254 = add i32 %247, -2
  %255 = xor i32 %254, %248, !mcsema_real_eip !63
  %256 = and i32 %255, 16, !mcsema_real_eip !63
  %257 = icmp ne i32 %256, 0, !mcsema_real_eip !63
  store i1 %257, i1* %AF_val, !mcsema_real_eip !63
  %258 = trunc i32 %254 to i8, !mcsema_real_eip !63
  %259 = tail call i8 @llvm.ctpop.i8(i8 %258), !mcsema_real_eip !63
  %260 = and i8 %259, 1
  %261 = icmp eq i8 %260, 0
  store i1 %261, i1* %PF_val, !mcsema_real_eip !63
  %262 = icmp eq i32 %254, 0, !mcsema_real_eip !63
  store i1 %262, i1* %ZF_val, !mcsema_real_eip !63
  %263 = icmp slt i32 %254, 0
  store i1 %263, i1* %SF_val, !mcsema_real_eip !63
  %264 = icmp eq i32 %248, 0
  store i1 %264, i1* %CF_val, !mcsema_real_eip !63
  %265 = and i32 %255, %248, !mcsema_real_eip !63
  %266 = icmp slt i32 %265, 0
  store i1 %266, i1* %OF_val, !mcsema_real_eip !63
  %tmp = xor i1 %263, %266
  %267 = load i1, i1* %ZF_val, !mcsema_real_eip !64
  %.demorgan = or i1 %267, %tmp
  br i1 %.demorgan, label %block_0x400803, label %block_0x4007d0, !mcsema_real_eip !64

block_0x400803:                                   ; preds = %block_0x4007fa
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 44224) to i32*), !mcsema_real_eip !65
  %268 = load i64, i64* %R8_val, !mcsema_real_eip !66
  %269 = trunc i64 %268 to i32, !mcsema_real_eip !66
  %270 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 67732) to i32*), !mcsema_real_eip !66
  %271 = sub i32 %270, %269, !mcsema_real_eip !66
  %272 = xor i32 %271, %270, !mcsema_real_eip !66
  %273 = xor i32 %272, %269, !mcsema_real_eip !66
  %274 = and i32 %273, 16, !mcsema_real_eip !66
  %275 = icmp ne i32 %274, 0, !mcsema_real_eip !66
  store i1 %275, i1* %AF_val, !mcsema_real_eip !66
  %276 = trunc i32 %271 to i8, !mcsema_real_eip !66
  %277 = tail call i8 @llvm.ctpop.i8(i8 %276), !mcsema_real_eip !66
  %278 = and i8 %277, 1
  %279 = icmp eq i8 %278, 0
  store i1 %279, i1* %PF_val, !mcsema_real_eip !66
  %280 = icmp eq i32 %270, %269
  store i1 %280, i1* %ZF_val, !mcsema_real_eip !66
  %281 = icmp slt i32 %271, 0
  store i1 %281, i1* %SF_val, !mcsema_real_eip !66
  %282 = icmp ult i32 %270, %269, !mcsema_real_eip !66
  store i1 %282, i1* %CF_val, !mcsema_real_eip !66
  %283 = xor i32 %270, %269, !mcsema_real_eip !66
  %284 = and i32 %272, %283, !mcsema_real_eip !66
  %285 = icmp slt i32 %284, 0
  store i1 %285, i1* %OF_val, !mcsema_real_eip !66
  %286 = load i1, i1* %ZF_val, !mcsema_real_eip !67
  br i1 %286, label %block_0x400816, label %block_0x40081e, !mcsema_real_eip !67

block_0x400816:                                   ; preds = %block_0x400803
  %287 = load i64, i64* %RSI_val, !mcsema_real_eip !68
  %288 = trunc i64 %287 to i32, !mcsema_real_eip !68
  %289 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 69728) to i32*), !mcsema_real_eip !68
  %290 = sub i32 %289, %288, !mcsema_real_eip !68
  %291 = xor i32 %290, %289, !mcsema_real_eip !68
  %292 = xor i32 %291, %288, !mcsema_real_eip !68
  %293 = and i32 %292, 16, !mcsema_real_eip !68
  %294 = icmp ne i32 %293, 0, !mcsema_real_eip !68
  store i1 %294, i1* %AF_val, !mcsema_real_eip !68
  %295 = trunc i32 %290 to i8, !mcsema_real_eip !68
  %296 = tail call i8 @llvm.ctpop.i8(i8 %295), !mcsema_real_eip !68
  %297 = and i8 %296, 1
  %298 = icmp eq i8 %297, 0
  store i1 %298, i1* %PF_val, !mcsema_real_eip !68
  %299 = icmp eq i32 %289, %288
  store i1 %299, i1* %ZF_val, !mcsema_real_eip !68
  %300 = icmp slt i32 %290, 0
  store i1 %300, i1* %SF_val, !mcsema_real_eip !68
  %301 = icmp ult i32 %289, %288, !mcsema_real_eip !68
  store i1 %301, i1* %CF_val, !mcsema_real_eip !68
  %302 = xor i32 %289, %288, !mcsema_real_eip !68
  %303 = and i32 %291, %302, !mcsema_real_eip !68
  %304 = icmp slt i32 %303, 0
  store i1 %304, i1* %OF_val, !mcsema_real_eip !68
  %305 = load i1, i1* %ZF_val, !mcsema_real_eip !69
  br i1 %305, label %block_0x400828, label %block_0x40081e, !mcsema_real_eip !69

block_0x40081e:                                   ; preds = %block_0x400816, %block_0x400803
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x400900 to i32), i32 16) to i64), i64* %RDI_val, !mcsema_real_eip !70
  %306 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x400900 to i32), i32 16) to i64)), !mcsema_real_eip !71
  store i64 %306, i64* %RAX_val, !mcsema_real_eip !71
  br label %block_0x400828, !mcsema_real_eip !68

block_0x400828:                                   ; preds = %block_0x40081e, %block_0x400816
  %307 = load i64, i64* %R14_val, !mcsema_real_eip !72
  %308 = trunc i64 %307 to i32, !mcsema_real_eip !72
  %309 = add i32 %308, 1, !mcsema_real_eip !72
  %310 = icmp eq i32 %309, 0, !mcsema_real_eip !72
  store i1 %310, i1* %ZF_val, !mcsema_real_eip !72
  %311 = trunc i32 %309 to i8, !mcsema_real_eip !72
  %312 = tail call i8 @llvm.ctpop.i8(i8 %311), !mcsema_real_eip !72
  %313 = and i8 %312, 1
  %314 = icmp eq i8 %313, 0
  store i1 %314, i1* %PF_val, !mcsema_real_eip !72
  %315 = icmp slt i32 %309, 0
  store i1 %315, i1* %SF_val, !mcsema_real_eip !72
  %316 = xor i32 %308, -2147483648, !mcsema_real_eip !72
  %317 = xor i32 %309, %308, !mcsema_real_eip !72
  %318 = and i32 %317, %316, !mcsema_real_eip !72
  %319 = icmp slt i32 %318, 0
  store i1 %319, i1* %OF_val, !mcsema_real_eip !72
  %320 = zext i32 %309 to i64, !mcsema_real_eip !72
  store i64 %320, i64* %R14_val, !mcsema_real_eip !72
  %321 = xor i64 %320, %307, !mcsema_real_eip !72
  %322 = and i64 %321, 16, !mcsema_real_eip !72
  %323 = icmp ne i64 %322, 0, !mcsema_real_eip !72
  store i1 %323, i1* %AF_val, !mcsema_real_eip !72
  %324 = sext i32 %309 to i64, !mcsema_real_eip !73
  store i64 %324, i64* %RAX_val, !mcsema_real_eip !73
  %325 = shl nsw i64 %324, 2
  %326 = add i64 %325, add (i64 ptrtoint (%1* @data_0x601050 to i64), i64 67728), !mcsema_real_eip !74
  %327 = inttoptr i64 %326 to i64*, !mcsema_real_eip !74
  %328 = bitcast i64* %327 to i32*
  %329 = load i32, i32* %328, !mcsema_real_eip !74
  %330 = zext i32 %329 to i64, !mcsema_real_eip !74
  store i64 %330, i64* %RSI_val, !mcsema_real_eip !74
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x400900 to i32), i32 4) to i64), i64* %RDI_val, !mcsema_real_eip !75
  store i1 false, i1* %CF_val, !mcsema_real_eip !76
  store i1 false, i1* %OF_val, !mcsema_real_eip !76
  store i1 false, i1* %SF_val, !mcsema_real_eip !76
  store i1 true, i1* %ZF_val, !mcsema_real_eip !76
  store i1 true, i1* %PF_val, !mcsema_real_eip !76
  store i64 0, i64* %RAX_val, !mcsema_real_eip !76
  %331 = load i64, i64* %RSP_val, !mcsema_real_eip !77
  %332 = inttoptr i64 %331 to i64*, !mcsema_real_eip !77
  %333 = load i64, i64* %332, !mcsema_real_eip !77
  store i64 %333, i64* %RBX_val, !mcsema_real_eip !77
  %334 = add i64 %331, 8, !mcsema_real_eip !77
  store i64 %334, i64* %RSP_val, !mcsema_real_eip !77
  %335 = inttoptr i64 %334 to i64*, !mcsema_real_eip !78
  %336 = load i64, i64* %335, !mcsema_real_eip !78
  store i64 %336, i64* %R14_val, !mcsema_real_eip !78
  %337 = add i64 %331, 16, !mcsema_real_eip !78
  store i64 %337, i64* %RSP_val, !mcsema_real_eip !78
  %338 = inttoptr i64 %337 to i64*, !mcsema_real_eip !79
  %339 = load i64, i64* %338, !mcsema_real_eip !79
  store i64 %339, i64* %RBP_val, !mcsema_real_eip !79
  %340 = add i64 %331, 24, !mcsema_real_eip !79
  store i64 %340, i64* %RSP_val, !mcsema_real_eip !79
  %341 = load i64, i64* %RDI_val, !mcsema_real_eip !80
  %342 = load i64, i64* %RSI_val, !mcsema_real_eip !80
  %343 = load i64, i64* %RDX_val, !mcsema_real_eip !80
  %344 = load i64, i64* %RCX_val, !mcsema_real_eip !80
  %345 = load i64, i64* %R8_val, !mcsema_real_eip !80
  %346 = load i64, i64* %R9_val, !mcsema_real_eip !80
  %347 = add i64 %331, 32, !mcsema_real_eip !80
  %348 = inttoptr i64 %347 to i64*, !mcsema_real_eip !80
  %349 = load i64, i64* %348, !mcsema_real_eip !80
  %350 = add i64 %331, 40, !mcsema_real_eip !80
  %351 = inttoptr i64 %350 to i64*, !mcsema_real_eip !80
  %352 = load i64, i64* %351, !mcsema_real_eip !80
  %353 = add i64 %331, 48, !mcsema_real_eip !80
  %354 = inttoptr i64 %353 to i64*, !mcsema_real_eip !80
  %355 = load i64, i64* %354, !mcsema_real_eip !80
  %356 = add i64 %331, 56, !mcsema_real_eip !80
  %357 = inttoptr i64 %356 to i64*, !mcsema_real_eip !80
  %358 = load i64, i64* %357, !mcsema_real_eip !80
  %359 = add i64 %331, 64, !mcsema_real_eip !80
  %360 = inttoptr i64 %359 to i64*, !mcsema_real_eip !80
  %361 = load i64, i64* %360, !mcsema_real_eip !80
  %362 = add i64 %331, 72, !mcsema_real_eip !80
  %363 = inttoptr i64 %362 to i64*, !mcsema_real_eip !80
  %364 = load i64, i64* %363, !mcsema_real_eip !80
  %365 = add i64 %331, 80, !mcsema_real_eip !80
  %366 = inttoptr i64 %365 to i64*, !mcsema_real_eip !80
  %367 = load i64, i64* %366, !mcsema_real_eip !80
  %368 = add i64 %331, 88, !mcsema_real_eip !80
  %369 = inttoptr i64 %368 to i64*, !mcsema_real_eip !80
  %370 = load i64, i64* %369, !mcsema_real_eip !80
  %371 = add i64 %331, 96, !mcsema_real_eip !80
  %372 = inttoptr i64 %371 to i64*, !mcsema_real_eip !80
  %373 = load i64, i64* %372, !mcsema_real_eip !80
  %374 = add i64 %331, 104, !mcsema_real_eip !80
  %375 = inttoptr i64 %374 to i64*, !mcsema_real_eip !80
  %376 = load i64, i64* %375, !mcsema_real_eip !80
  %377 = tail call x86_64_sysvcc i64 @printf(i64 %341, i64 %342, i64 %343, i64 %344, i64 %345, i64 %346, i64 %349, i64 %352, i64 %355, i64 %358, i64 %361, i64 %364, i64 %367, i64 %370, i64 %373, i64 %376), !mcsema_real_eip !80
  %378 = load i64, i64* %RSP_val, !mcsema_real_eip !80
  %379 = add i64 %378, 8, !mcsema_real_eip !80
  store i64 %379, i64* %RSP_val, !mcsema_real_eip !80
  store i64 %377, i64* %RAX, !mcsema_real_eip !80
  %380 = load i64, i64* %RBX_val, !mcsema_real_eip !80
  store i64 %380, i64* %RBX, !mcsema_real_eip !80
  %381 = load i64, i64* %RCX_val, !mcsema_real_eip !80
  store i64 %381, i64* %RCX, !mcsema_real_eip !80
  %382 = load i64, i64* %RDX_val, !mcsema_real_eip !80
  store i64 %382, i64* %RDX, !mcsema_real_eip !80
  %383 = load i64, i64* %RSI_val, !mcsema_real_eip !80
  store i64 %383, i64* %RSI, !mcsema_real_eip !80
  %384 = load i64, i64* %RDI_val, !mcsema_real_eip !80
  store i64 %384, i64* %RDI, !mcsema_real_eip !80
  %385 = load i64, i64* %RSP_val, !mcsema_real_eip !80
  store i64 %385, i64* %RSP, !mcsema_real_eip !80
  %386 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  store i64 %386, i64* %RBP, !mcsema_real_eip !80
  %387 = load i64, i64* %R8_val, !mcsema_real_eip !80
  store i64 %387, i64* %R8, !mcsema_real_eip !80
  %388 = load i64, i64* %R9_val, !mcsema_real_eip !80
  store i64 %388, i64* %R9, !mcsema_real_eip !80
  %389 = load i64, i64* %R10_val, !mcsema_real_eip !80
  store i64 %389, i64* %R10, !mcsema_real_eip !80
  %390 = load i64, i64* %R11_val, !mcsema_real_eip !80
  store i64 %390, i64* %R11, !mcsema_real_eip !80
  %391 = load i64, i64* %R12_val, !mcsema_real_eip !80
  store i64 %391, i64* %R12, !mcsema_real_eip !80
  %392 = load i64, i64* %R13_val, !mcsema_real_eip !80
  store i64 %392, i64* %R13, !mcsema_real_eip !80
  %393 = load i64, i64* %R14_val, !mcsema_real_eip !80
  store i64 %393, i64* %R14, !mcsema_real_eip !80
  %394 = load i64, i64* %R15_val, !mcsema_real_eip !80
  store i64 %394, i64* %R15, !mcsema_real_eip !80
  %395 = load i64, i64* %RIP_val, !mcsema_real_eip !80
  store i64 %395, i64* %RIP, !mcsema_real_eip !80
  %396 = load i1, i1* %CF_val, !mcsema_real_eip !80
  store i1 %396, i1* %CF, align 1, !mcsema_real_eip !80
  %397 = load i1, i1* %PF_val, !mcsema_real_eip !80
  store i1 %397, i1* %PF, align 1, !mcsema_real_eip !80
  %398 = load i1, i1* %AF_val, !mcsema_real_eip !80
  store i1 %398, i1* %AF, align 1, !mcsema_real_eip !80
  %399 = load i1, i1* %ZF_val, !mcsema_real_eip !80
  store i1 %399, i1* %ZF, align 1, !mcsema_real_eip !80
  %400 = load i1, i1* %SF_val, !mcsema_real_eip !80
  store i1 %400, i1* %SF, align 1, !mcsema_real_eip !80
  %401 = load i1, i1* %OF_val, !mcsema_real_eip !80
  store i1 %401, i1* %OF, align 1, !mcsema_real_eip !80
  %402 = load i1, i1* %DF_val, !mcsema_real_eip !80
  store i1 %402, i1* %DF, align 1, !mcsema_real_eip !80
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !80
  %403 = load i1, i1* %FPU_B_val, !mcsema_real_eip !80
  store i1 %403, i1* %FPU_B, align 1, !mcsema_real_eip !80
  %404 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !80
  store i1 %404, i1* %FPU_C3, align 1, !mcsema_real_eip !80
  %405 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !80
  store i3 %405, i3* %FPU_TOP, align 1, !mcsema_real_eip !80
  %406 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !80
  store i1 %406, i1* %FPU_C2, align 1, !mcsema_real_eip !80
  %407 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !80
  store i1 %407, i1* %FPU_C1, align 1, !mcsema_real_eip !80
  %408 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !80
  store i1 %408, i1* %FPU_C0, align 1, !mcsema_real_eip !80
  %409 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !80
  store i1 %409, i1* %FPU_ES, align 1, !mcsema_real_eip !80
  %410 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !80
  store i1 %410, i1* %FPU_SF, align 1, !mcsema_real_eip !80
  %411 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !80
  store i1 %411, i1* %FPU_PE, align 1, !mcsema_real_eip !80
  %412 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !80
  store i1 %412, i1* %FPU_UE, align 1, !mcsema_real_eip !80
  %413 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !80
  store i1 %413, i1* %FPU_OE, align 1, !mcsema_real_eip !80
  %414 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !80
  store i1 %414, i1* %FPU_ZE, align 1, !mcsema_real_eip !80
  %415 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !80
  store i1 %415, i1* %FPU_DE, align 1, !mcsema_real_eip !80
  %416 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !80
  store i1 %416, i1* %FPU_IE, align 1, !mcsema_real_eip !80
  %417 = load i1, i1* %FPU_X_val, !mcsema_real_eip !80
  store i1 %417, i1* %FPU_X, align 1, !mcsema_real_eip !80
  %418 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !80
  store i2 %418, i2* %FPU_RC, align 1, !mcsema_real_eip !80
  %419 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !80
  store i2 %419, i2* %FPU_PC, align 1, !mcsema_real_eip !80
  %420 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !80
  store i1 %420, i1* %FPU_PM, align 1, !mcsema_real_eip !80
  %421 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !80
  store i1 %421, i1* %FPU_UM, align 1, !mcsema_real_eip !80
  %422 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !80
  store i1 %422, i1* %FPU_OM, align 1, !mcsema_real_eip !80
  %423 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !80
  store i1 %423, i1* %FPU_ZM, align 1, !mcsema_real_eip !80
  %424 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !80
  store i1 %424, i1* %FPU_DM, align 1, !mcsema_real_eip !80
  %425 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !80
  store i1 %425, i1* %FPU_IM, align 1, !mcsema_real_eip !80
  %426 = load i64, i64* %53, align 4
  store i64 %426, i64* %52, align 4
  %427 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !80
  store i16 %427, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !80
  %428 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !80
  store i64 %428, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !80
  %429 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !80
  store i16 %429, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !80
  %430 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !80
  store i64 %430, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !80
  %431 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !80
  store i11 %431, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !80
  %432 = load i128, i128* %XMM0_val, !mcsema_real_eip !80
  store i128 %432, i128* %XMM0, align 1, !mcsema_real_eip !80
  %433 = load i128, i128* %XMM1_val, !mcsema_real_eip !80
  store i128 %433, i128* %XMM1, align 1, !mcsema_real_eip !80
  %434 = load i128, i128* %XMM2_val, !mcsema_real_eip !80
  store i128 %434, i128* %XMM2, align 1, !mcsema_real_eip !80
  %435 = load i128, i128* %XMM3_val, !mcsema_real_eip !80
  store i128 %435, i128* %XMM3, align 1, !mcsema_real_eip !80
  %436 = load i128, i128* %XMM4_val, !mcsema_real_eip !80
  store i128 %436, i128* %XMM4, align 1, !mcsema_real_eip !80
  %437 = load i128, i128* %XMM5_val, !mcsema_real_eip !80
  store i128 %437, i128* %XMM5, align 1, !mcsema_real_eip !80
  %438 = load i128, i128* %XMM6_val, !mcsema_real_eip !80
  store i128 %438, i128* %XMM6, align 1, !mcsema_real_eip !80
  %439 = load i128, i128* %XMM7_val, !mcsema_real_eip !80
  store i128 %439, i128* %XMM7, align 1, !mcsema_real_eip !80
  %440 = load i128, i128* %XMM8_val, !mcsema_real_eip !80
  store i128 %440, i128* %XMM8, align 1, !mcsema_real_eip !80
  %441 = load i128, i128* %XMM9_val, !mcsema_real_eip !80
  store i128 %441, i128* %XMM9, align 1, !mcsema_real_eip !80
  %442 = load i128, i128* %XMM10_val, !mcsema_real_eip !80
  store i128 %442, i128* %XMM10, align 1, !mcsema_real_eip !80
  %443 = load i128, i128* %XMM11_val, !mcsema_real_eip !80
  store i128 %443, i128* %XMM11, align 1, !mcsema_real_eip !80
  %444 = load i128, i128* %XMM12_val, !mcsema_real_eip !80
  store i128 %444, i128* %XMM12, align 1, !mcsema_real_eip !80
  %445 = load i128, i128* %XMM13_val, !mcsema_real_eip !80
  store i128 %445, i128* %XMM13, align 1, !mcsema_real_eip !80
  %446 = load i128, i128* %XMM14_val, !mcsema_real_eip !80
  store i128 %446, i128* %XMM14, align 1, !mcsema_real_eip !80
  %447 = load i128, i128* %XMM15_val, !mcsema_real_eip !80
  store i128 %447, i128* %XMM15, align 1, !mcsema_real_eip !80
  %448 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !80
  store i64 %448, i64* %STACK_BASE, align 1, !mcsema_real_eip !80
  %449 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !80
  store i64 %449, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !80
  ret void, !mcsema_real_eip !80
}

declare x86_64_sysvcc i64 @puts(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_400850(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 4196432}
!3 = !{i64 4196433}
!4 = !{i64 4196448}
!5 = !{i64 4196450}
!6 = !{i64 4196455}
!7 = !{i64 4196457}
!8 = !{i64 4196460}
!9 = !{i64 4196462}
!10 = !{i64 4196464}
!11 = !{i64 4196465}
!12 = !{i64 4196112}
!13 = !{i64 4196113}
!14 = !{i64 4196115}
!15 = !{i64 4196116}
!16 = !{i64 4196119}
!17 = !{i64 4196130}
!18 = !{i64 4196140}
!19 = !{i64 4196150}
!20 = !{i64 4196153}
!21 = !{i64 4196160}
!22 = !{i64 4196165}
!23 = !{i64 4196175}
!24 = !{i64 4196192}
!25 = !{i64 4196203}
!26 = !{i64 4196213}
!27 = !{i64 4196216}
!28 = !{i64 4196220}
!29 = !{i64 4196226}
!30 = !{i64 4196228}
!31 = !{i64 4196230}
!32 = !{i64 4196235}
!33 = !{i64 4196237}
!34 = !{i64 4196243}
!35 = !{i64 4196256}
!36 = !{i64 4196245}
!37 = !{i64 4196251}
!38 = !{i64 4196253}
!39 = !{i64 4196259}
!40 = !{i64 4196261}
!41 = !{i64 4196267}
!42 = !{i64 4196276}
!43 = !{i64 4196270}
!44 = !{i64 4196274}
!45 = !{i64 4196283}
!46 = !{i64 4196293}
!47 = !{i64 4196298}
!48 = !{i64 4196304}
!49 = !{i64 4196310}
!50 = !{i64 4196312}
!51 = !{i64 4196320}
!52 = !{i64 4196322}
!53 = !{i64 4196324}
!54 = !{i64 4196326}
!55 = !{i64 4196329}
!56 = !{i64 4196331}
!57 = !{i64 4196336}
!58 = !{i64 4196338}
!59 = !{i64 4196342}
!60 = !{i64 4196344}
!61 = !{i64 4196346}
!62 = !{i64 4196348}
!63 = !{i64 4196350}
!64 = !{i64 4196353}
!65 = !{i64 4196355}
!66 = !{i64 4196365}
!67 = !{i64 4196372}
!68 = !{i64 4196374}
!69 = !{i64 4196380}
!70 = !{i64 4196382}
!71 = !{i64 4196387}
!72 = !{i64 4196392}
!73 = !{i64 4196395}
!74 = !{i64 4196398}
!75 = !{i64 4196405}
!76 = !{i64 4196410}
!77 = !{i64 4196412}
!78 = !{i64 4196413}
!79 = !{i64 4196415}
!80 = !{i64 4195600}
