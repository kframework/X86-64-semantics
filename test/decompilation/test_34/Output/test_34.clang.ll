; ModuleID = 'Output/test_34.clang.bc'
source_filename = "Output/test_34.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [23 x i8] }>
%1 = type <{ [8 x i8] }>
%2 = type <{ [8 x i8] }>
%3 = type <{ [8 x i8] }>
%4 = type <{ [8 x i8] }>
%5 = type <{ [8 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x2ce = internal constant %0 <{ [23 x i8] c"Error3 in Bubble.\0A\00%d\0A\00" }>, align 64
@data_0x448 = internal unnamed_addr constant %1 <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 64
@data_0x450 = internal constant %2 <{ [8 x i8] c"$N\00\00\00\00\00\00" }>, align 64
@data_0x390 = internal unnamed_addr constant %3 <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 64
@data_0x3e8 = internal unnamed_addr constant %4 <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 64
@data_0x460 = internal unnamed_addr constant %5 <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 64

define internal x86_64_sysvcc void @sub_290(%struct.regs*) {
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
  %95 = load i64, i64* %RBP_val, !mcsema_real_eip !5
  %96 = add i64 %95, -4, !mcsema_real_eip !5
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !5
  %98 = bitcast i64* %97 to i32*
  store i32 0, i32* %98, !mcsema_real_eip !5
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %100 = add i64 %99, -8, !mcsema_real_eip !6
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !6
  %102 = bitcast i64* %101 to i32*
  store i32 0, i32* %102, !mcsema_real_eip !6
  br label %block_0x2a6, !mcsema_real_eip !7

block_0x2a6:                                      ; preds = %block_0x2b0, %entry
  %103 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  %104 = add i64 %103, -8, !mcsema_real_eip !7
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !7
  %106 = bitcast i64* %105 to i32*
  %107 = load i32, i32* %106, !mcsema_real_eip !7
  %108 = add i32 %107, -100
  %109 = xor i32 %108, %107, !mcsema_real_eip !7
  %110 = and i32 %109, 16, !mcsema_real_eip !7
  %111 = icmp ne i32 %110, 0, !mcsema_real_eip !7
  store i1 %111, i1* %AF_val, !mcsema_real_eip !7
  %112 = trunc i32 %108 to i8, !mcsema_real_eip !7
  %113 = tail call i8 @llvm.ctpop.i8(i8 %112), !mcsema_real_eip !7
  %114 = and i8 %113, 1
  %115 = icmp eq i8 %114, 0
  store i1 %115, i1* %PF_val, !mcsema_real_eip !7
  %116 = icmp eq i32 %108, 0, !mcsema_real_eip !7
  store i1 %116, i1* %ZF_val, !mcsema_real_eip !7
  %117 = icmp slt i32 %108, 0
  store i1 %117, i1* %SF_val, !mcsema_real_eip !7
  %118 = icmp ult i32 %107, 100, !mcsema_real_eip !7
  store i1 %118, i1* %CF_val, !mcsema_real_eip !7
  %119 = and i32 %109, %107, !mcsema_real_eip !7
  %120 = icmp slt i32 %119, 0
  store i1 %120, i1* %OF_val, !mcsema_real_eip !7
  %tmp = xor i1 %117, %120
  br i1 %tmp, label %block_0x2b0, label %block_0x2c6, !mcsema_real_eip !8

block_0x2b0:                                      ; preds = %block_0x2a6
  %121 = load i64, i64* %RBP_val, !mcsema_real_eip !9
  %122 = add i64 %121, -8, !mcsema_real_eip !9
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !9
  %124 = bitcast i64* %123 to i32*
  %125 = load i32, i32* %124, !mcsema_real_eip !9
  %126 = zext i32 %125 to i64, !mcsema_real_eip !9
  store i64 %126, i64* %RDI_val, !mcsema_real_eip !9
  %127 = load i64, i64* %RSP_val, !mcsema_real_eip !10
  %128 = add i64 %127, -8
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !10
  store i64 -4981261766360305936, i64* %129, !mcsema_real_eip !10
  store i64 %128, i64* %RSP_val, !mcsema_real_eip !10
  %130 = load i64, i64* %RAX_val, !mcsema_real_eip !10
  store i64 %130, i64* %RAX, !mcsema_real_eip !10
  %131 = load i64, i64* %RBX_val, !mcsema_real_eip !10
  store i64 %131, i64* %RBX, !mcsema_real_eip !10
  %132 = load i64, i64* %RCX_val, !mcsema_real_eip !10
  store i64 %132, i64* %RCX, !mcsema_real_eip !10
  %133 = load i64, i64* %RDX_val, !mcsema_real_eip !10
  store i64 %133, i64* %RDX, !mcsema_real_eip !10
  %134 = load i64, i64* %RSI_val, !mcsema_real_eip !10
  store i64 %134, i64* %RSI, !mcsema_real_eip !10
  %135 = load i64, i64* %RDI_val, !mcsema_real_eip !10
  store i64 %135, i64* %RDI, !mcsema_real_eip !10
  %136 = load i64, i64* %RSP_val, !mcsema_real_eip !10
  store i64 %136, i64* %RSP, !mcsema_real_eip !10
  %137 = load i64, i64* %RBP_val, !mcsema_real_eip !10
  store i64 %137, i64* %RBP, !mcsema_real_eip !10
  %138 = load i64, i64* %R8_val, !mcsema_real_eip !10
  store i64 %138, i64* %R8, !mcsema_real_eip !10
  %139 = load i64, i64* %R9_val, !mcsema_real_eip !10
  store i64 %139, i64* %R9, !mcsema_real_eip !10
  %140 = load i64, i64* %R10_val, !mcsema_real_eip !10
  store i64 %140, i64* %R10, !mcsema_real_eip !10
  %141 = load i64, i64* %R11_val, !mcsema_real_eip !10
  store i64 %141, i64* %R11, !mcsema_real_eip !10
  %142 = load i64, i64* %R12_val, !mcsema_real_eip !10
  store i64 %142, i64* %R12, !mcsema_real_eip !10
  %143 = load i64, i64* %R13_val, !mcsema_real_eip !10
  store i64 %143, i64* %R13, !mcsema_real_eip !10
  %144 = load i64, i64* %R14_val, !mcsema_real_eip !10
  store i64 %144, i64* %R14, !mcsema_real_eip !10
  %145 = load i64, i64* %R15_val, !mcsema_real_eip !10
  store i64 %145, i64* %R15, !mcsema_real_eip !10
  %146 = load i64, i64* %RIP_val, !mcsema_real_eip !10
  store i64 %146, i64* %RIP, !mcsema_real_eip !10
  %147 = load i1, i1* %CF_val, !mcsema_real_eip !10
  store i1 %147, i1* %CF, align 1, !mcsema_real_eip !10
  %148 = load i1, i1* %PF_val, !mcsema_real_eip !10
  store i1 %148, i1* %PF, align 1, !mcsema_real_eip !10
  %149 = load i1, i1* %AF_val, !mcsema_real_eip !10
  store i1 %149, i1* %AF, align 1, !mcsema_real_eip !10
  %150 = load i1, i1* %ZF_val, !mcsema_real_eip !10
  store i1 %150, i1* %ZF, align 1, !mcsema_real_eip !10
  %151 = load i1, i1* %SF_val, !mcsema_real_eip !10
  store i1 %151, i1* %SF, align 1, !mcsema_real_eip !10
  %152 = load i1, i1* %OF_val, !mcsema_real_eip !10
  store i1 %152, i1* %OF, align 1, !mcsema_real_eip !10
  %153 = load i1, i1* %DF_val, !mcsema_real_eip !10
  store i1 %153, i1* %DF, align 1, !mcsema_real_eip !10
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !10
  %154 = load i1, i1* %FPU_B_val, !mcsema_real_eip !10
  store i1 %154, i1* %FPU_B, align 1, !mcsema_real_eip !10
  %155 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !10
  store i1 %155, i1* %FPU_C3, align 1, !mcsema_real_eip !10
  %156 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !10
  store i3 %156, i3* %FPU_TOP, align 1, !mcsema_real_eip !10
  %157 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !10
  store i1 %157, i1* %FPU_C2, align 1, !mcsema_real_eip !10
  %158 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !10
  store i1 %158, i1* %FPU_C1, align 1, !mcsema_real_eip !10
  %159 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !10
  store i1 %159, i1* %FPU_C0, align 1, !mcsema_real_eip !10
  %160 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !10
  store i1 %160, i1* %FPU_ES, align 1, !mcsema_real_eip !10
  %161 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !10
  store i1 %161, i1* %FPU_SF, align 1, !mcsema_real_eip !10
  %162 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !10
  store i1 %162, i1* %FPU_PE, align 1, !mcsema_real_eip !10
  %163 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !10
  store i1 %163, i1* %FPU_UE, align 1, !mcsema_real_eip !10
  %164 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !10
  store i1 %164, i1* %FPU_OE, align 1, !mcsema_real_eip !10
  %165 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !10
  store i1 %165, i1* %FPU_ZE, align 1, !mcsema_real_eip !10
  %166 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !10
  store i1 %166, i1* %FPU_DE, align 1, !mcsema_real_eip !10
  %167 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !10
  store i1 %167, i1* %FPU_IE, align 1, !mcsema_real_eip !10
  %168 = load i1, i1* %FPU_X_val, !mcsema_real_eip !10
  store i1 %168, i1* %FPU_X, align 1, !mcsema_real_eip !10
  %169 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !10
  store i2 %169, i2* %FPU_RC, align 1, !mcsema_real_eip !10
  %170 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !10
  store i2 %170, i2* %FPU_PC, align 1, !mcsema_real_eip !10
  %171 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !10
  store i1 %171, i1* %FPU_PM, align 1, !mcsema_real_eip !10
  %172 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !10
  store i1 %172, i1* %FPU_UM, align 1, !mcsema_real_eip !10
  %173 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !10
  store i1 %173, i1* %FPU_OM, align 1, !mcsema_real_eip !10
  %174 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !10
  store i1 %174, i1* %FPU_ZM, align 1, !mcsema_real_eip !10
  %175 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !10
  store i1 %175, i1* %FPU_DM, align 1, !mcsema_real_eip !10
  %176 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !10
  store i1 %176, i1* %FPU_IM, align 1, !mcsema_real_eip !10
  %177 = load i64, i64* %53, align 4
  store i64 %177, i64* %52, align 4
  %178 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !10
  store i16 %178, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !10
  %179 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !10
  store i64 %179, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !10
  %180 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !10
  store i16 %180, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !10
  %181 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !10
  store i64 %181, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !10
  %182 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !10
  store i11 %182, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !10
  %183 = load i128, i128* %XMM0_val, !mcsema_real_eip !10
  store i128 %183, i128* %XMM0, align 1, !mcsema_real_eip !10
  %184 = load i128, i128* %XMM1_val, !mcsema_real_eip !10
  store i128 %184, i128* %XMM1, align 1, !mcsema_real_eip !10
  %185 = load i128, i128* %XMM2_val, !mcsema_real_eip !10
  store i128 %185, i128* %XMM2, align 1, !mcsema_real_eip !10
  %186 = load i128, i128* %XMM3_val, !mcsema_real_eip !10
  store i128 %186, i128* %XMM3, align 1, !mcsema_real_eip !10
  %187 = load i128, i128* %XMM4_val, !mcsema_real_eip !10
  store i128 %187, i128* %XMM4, align 1, !mcsema_real_eip !10
  %188 = load i128, i128* %XMM5_val, !mcsema_real_eip !10
  store i128 %188, i128* %XMM5, align 1, !mcsema_real_eip !10
  %189 = load i128, i128* %XMM6_val, !mcsema_real_eip !10
  store i128 %189, i128* %XMM6, align 1, !mcsema_real_eip !10
  %190 = load i128, i128* %XMM7_val, !mcsema_real_eip !10
  store i128 %190, i128* %XMM7, align 1, !mcsema_real_eip !10
  %191 = load i128, i128* %XMM8_val, !mcsema_real_eip !10
  store i128 %191, i128* %XMM8, align 1, !mcsema_real_eip !10
  %192 = load i128, i128* %XMM9_val, !mcsema_real_eip !10
  store i128 %192, i128* %XMM9, align 1, !mcsema_real_eip !10
  %193 = load i128, i128* %XMM10_val, !mcsema_real_eip !10
  store i128 %193, i128* %XMM10, align 1, !mcsema_real_eip !10
  %194 = load i128, i128* %XMM11_val, !mcsema_real_eip !10
  store i128 %194, i128* %XMM11, align 1, !mcsema_real_eip !10
  %195 = load i128, i128* %XMM12_val, !mcsema_real_eip !10
  store i128 %195, i128* %XMM12, align 1, !mcsema_real_eip !10
  %196 = load i128, i128* %XMM13_val, !mcsema_real_eip !10
  store i128 %196, i128* %XMM13, align 1, !mcsema_real_eip !10
  %197 = load i128, i128* %XMM14_val, !mcsema_real_eip !10
  store i128 %197, i128* %XMM14, align 1, !mcsema_real_eip !10
  %198 = load i128, i128* %XMM15_val, !mcsema_real_eip !10
  store i128 %198, i128* %XMM15, align 1, !mcsema_real_eip !10
  %199 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !10
  store i64 %199, i64* %STACK_BASE, align 1, !mcsema_real_eip !10
  %200 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !10
  store i64 %200, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !10
  tail call x86_64_sysvcc void @sub_160(%struct.regs* %0), !mcsema_real_eip !10
  %201 = load i64, i64* %RAX, !mcsema_real_eip !10
  store i64 %201, i64* %RAX_val, !mcsema_real_eip !10
  %202 = load i64, i64* %RBX, !mcsema_real_eip !10
  store i64 %202, i64* %RBX_val, !mcsema_real_eip !10
  %203 = load i64, i64* %RCX, !mcsema_real_eip !10
  store i64 %203, i64* %RCX_val, !mcsema_real_eip !10
  %204 = load i64, i64* %RDX, !mcsema_real_eip !10
  store i64 %204, i64* %RDX_val, !mcsema_real_eip !10
  %205 = load i64, i64* %RSI, !mcsema_real_eip !10
  store i64 %205, i64* %RSI_val, !mcsema_real_eip !10
  %206 = load i64, i64* %RDI, !mcsema_real_eip !10
  store i64 %206, i64* %RDI_val, !mcsema_real_eip !10
  %207 = load i64, i64* %RSP, !mcsema_real_eip !10
  store i64 %207, i64* %RSP_val, !mcsema_real_eip !10
  %208 = load i64, i64* %RBP, !mcsema_real_eip !10
  store i64 %208, i64* %RBP_val, !mcsema_real_eip !10
  %209 = load i64, i64* %R8, !mcsema_real_eip !10
  store i64 %209, i64* %R8_val, !mcsema_real_eip !10
  %210 = load i64, i64* %R9, !mcsema_real_eip !10
  store i64 %210, i64* %R9_val, !mcsema_real_eip !10
  %211 = load i64, i64* %R10, !mcsema_real_eip !10
  store i64 %211, i64* %R10_val, !mcsema_real_eip !10
  %212 = load i64, i64* %R11, !mcsema_real_eip !10
  store i64 %212, i64* %R11_val, !mcsema_real_eip !10
  %213 = load i64, i64* %R12, !mcsema_real_eip !10
  store i64 %213, i64* %R12_val, !mcsema_real_eip !10
  %214 = load i64, i64* %R13, !mcsema_real_eip !10
  store i64 %214, i64* %R13_val, !mcsema_real_eip !10
  %215 = load i64, i64* %R14, !mcsema_real_eip !10
  store i64 %215, i64* %R14_val, !mcsema_real_eip !10
  %216 = load i64, i64* %R15, !mcsema_real_eip !10
  store i64 %216, i64* %R15_val, !mcsema_real_eip !10
  %217 = load i64, i64* %RIP, !mcsema_real_eip !10
  store i64 %217, i64* %RIP_val, !mcsema_real_eip !10
  %218 = load i1, i1* %CF, align 1, !mcsema_real_eip !10
  store i1 %218, i1* %CF_val, !mcsema_real_eip !10
  %219 = load i1, i1* %PF, align 1, !mcsema_real_eip !10
  store i1 %219, i1* %PF_val, !mcsema_real_eip !10
  %220 = load i1, i1* %AF, align 1, !mcsema_real_eip !10
  store i1 %220, i1* %AF_val, !mcsema_real_eip !10
  %221 = load i1, i1* %ZF, align 1, !mcsema_real_eip !10
  store i1 %221, i1* %ZF_val, !mcsema_real_eip !10
  %222 = load i1, i1* %SF, align 1, !mcsema_real_eip !10
  store i1 %222, i1* %SF_val, !mcsema_real_eip !10
  %223 = load i1, i1* %OF, align 1, !mcsema_real_eip !10
  store i1 %223, i1* %OF_val, !mcsema_real_eip !10
  %224 = load i1, i1* %DF, align 1, !mcsema_real_eip !10
  store i1 %224, i1* %DF_val, !mcsema_real_eip !10
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !10
  %225 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !10
  store i1 %225, i1* %FPU_B_val, !mcsema_real_eip !10
  %226 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !10
  store i1 %226, i1* %FPU_C3_val, !mcsema_real_eip !10
  %227 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !10
  store i3 %227, i3* %FPU_TOP_val, !mcsema_real_eip !10
  %228 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !10
  store i1 %228, i1* %FPU_C2_val, !mcsema_real_eip !10
  %229 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !10
  store i1 %229, i1* %FPU_C1_val, !mcsema_real_eip !10
  %230 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !10
  store i1 %230, i1* %FPU_C0_val, !mcsema_real_eip !10
  %231 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !10
  store i1 %231, i1* %FPU_ES_val, !mcsema_real_eip !10
  %232 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !10
  store i1 %232, i1* %FPU_SF_val, !mcsema_real_eip !10
  %233 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !10
  store i1 %233, i1* %FPU_PE_val, !mcsema_real_eip !10
  %234 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !10
  store i1 %234, i1* %FPU_UE_val, !mcsema_real_eip !10
  %235 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !10
  store i1 %235, i1* %FPU_OE_val, !mcsema_real_eip !10
  %236 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !10
  store i1 %236, i1* %FPU_ZE_val, !mcsema_real_eip !10
  %237 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !10
  store i1 %237, i1* %FPU_DE_val, !mcsema_real_eip !10
  %238 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !10
  store i1 %238, i1* %FPU_IE_val, !mcsema_real_eip !10
  %239 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !10
  store i1 %239, i1* %FPU_X_val, !mcsema_real_eip !10
  %240 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !10
  store i2 %240, i2* %FPU_RC_val, !mcsema_real_eip !10
  %241 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !10
  store i2 %241, i2* %FPU_PC_val, !mcsema_real_eip !10
  %242 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !10
  store i1 %242, i1* %FPU_PM_val, !mcsema_real_eip !10
  %243 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !10
  store i1 %243, i1* %FPU_UM_val, !mcsema_real_eip !10
  %244 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !10
  store i1 %244, i1* %FPU_OM_val, !mcsema_real_eip !10
  %245 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !10
  store i1 %245, i1* %FPU_ZM_val, !mcsema_real_eip !10
  %246 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !10
  store i1 %246, i1* %FPU_DM_val, !mcsema_real_eip !10
  %247 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !10
  store i1 %247, i1* %FPU_IM_val, !mcsema_real_eip !10
  %248 = load i64, i64* %52, align 4
  store i64 %248, i64* %53, align 4
  %249 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !10
  store i16 %249, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !10
  %250 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !10
  store i64 %250, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !10
  %251 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !10
  store i16 %251, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !10
  %252 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !10
  store i64 %252, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !10
  %253 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !10
  store i11 %253, i11* %FPU_FOPCODE_val, !mcsema_real_eip !10
  %254 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !10
  store i128 %254, i128* %XMM0_val, !mcsema_real_eip !10
  %255 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !10
  store i128 %255, i128* %XMM1_val, !mcsema_real_eip !10
  %256 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !10
  store i128 %256, i128* %XMM2_val, !mcsema_real_eip !10
  %257 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !10
  store i128 %257, i128* %XMM3_val, !mcsema_real_eip !10
  %258 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !10
  store i128 %258, i128* %XMM4_val, !mcsema_real_eip !10
  %259 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !10
  store i128 %259, i128* %XMM5_val, !mcsema_real_eip !10
  %260 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !10
  store i128 %260, i128* %XMM6_val, !mcsema_real_eip !10
  %261 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !10
  store i128 %261, i128* %XMM7_val, !mcsema_real_eip !10
  %262 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !10
  store i128 %262, i128* %XMM8_val, !mcsema_real_eip !10
  %263 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !10
  store i128 %263, i128* %XMM9_val, !mcsema_real_eip !10
  %264 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !10
  store i128 %264, i128* %XMM10_val, !mcsema_real_eip !10
  %265 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !10
  store i128 %265, i128* %XMM11_val, !mcsema_real_eip !10
  %266 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !10
  store i128 %266, i128* %XMM12_val, !mcsema_real_eip !10
  %267 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !10
  store i128 %267, i128* %XMM13_val, !mcsema_real_eip !10
  %268 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !10
  store i128 %268, i128* %XMM14_val, !mcsema_real_eip !10
  %269 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !10
  store i128 %269, i128* %XMM15_val, !mcsema_real_eip !10
  %270 = load i64, i64* %STACK_BASE, !mcsema_real_eip !10
  store i64 %270, i64* %STACK_BASE_val, !mcsema_real_eip !10
  %271 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !10
  store i64 %271, i64* %STACK_LIMIT_val, !mcsema_real_eip !10
  %272 = load i64, i64* %RBP_val, !mcsema_real_eip !11
  %273 = add i64 %272, -8, !mcsema_real_eip !11
  %274 = inttoptr i64 %273 to i64*, !mcsema_real_eip !11
  %275 = bitcast i64* %274 to i32*
  %276 = load i32, i32* %275, !mcsema_real_eip !11
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %276, i32 1)
  %277 = extractvalue { i32, i1 } %uadd, 0
  %278 = xor i32 %277, %276, !mcsema_real_eip !12
  %279 = and i32 %278, 16, !mcsema_real_eip !12
  %280 = icmp ne i32 %279, 0, !mcsema_real_eip !12
  store i1 %280, i1* %AF_val, !mcsema_real_eip !12
  %281 = icmp slt i32 %277, 0
  store i1 %281, i1* %SF_val, !mcsema_real_eip !12
  %282 = icmp eq i32 %277, 0, !mcsema_real_eip !12
  store i1 %282, i1* %ZF_val, !mcsema_real_eip !12
  %283 = xor i32 %276, -2147483648, !mcsema_real_eip !12
  %284 = and i32 %278, %283, !mcsema_real_eip !12
  %285 = icmp slt i32 %284, 0
  store i1 %285, i1* %OF_val, !mcsema_real_eip !12
  %286 = trunc i32 %277 to i8, !mcsema_real_eip !12
  %287 = tail call i8 @llvm.ctpop.i8(i8 %286), !mcsema_real_eip !12
  %288 = and i8 %287, 1
  %289 = icmp eq i8 %288, 0
  store i1 %289, i1* %PF_val, !mcsema_real_eip !12
  %290 = extractvalue { i32, i1 } %uadd, 1
  store i1 %290, i1* %CF_val, !mcsema_real_eip !12
  %291 = zext i32 %277 to i64, !mcsema_real_eip !12
  store i64 %291, i64* %RAX_val, !mcsema_real_eip !12
  %292 = load i64, i64* %RBP_val, !mcsema_real_eip !13
  %293 = add i64 %292, -8, !mcsema_real_eip !13
  %294 = inttoptr i64 %293 to i64*, !mcsema_real_eip !13
  %295 = bitcast i64* %294 to i32*
  store i32 %277, i32* %295, !mcsema_real_eip !13
  br label %block_0x2a6, !mcsema_real_eip !14

block_0x2c6:                                      ; preds = %block_0x2a6
  store i64 0, i64* %RAX_val, !mcsema_real_eip !15
  %296 = load i64, i64* %RSP_val, !mcsema_real_eip !16
  %uadd211 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %296, i64 16)
  %297 = extractvalue { i64, i1 } %uadd211, 0
  %298 = xor i64 %297, %296, !mcsema_real_eip !16
  %299 = and i64 %298, 16
  %300 = icmp eq i64 %299, 0
  store i1 %300, i1* %AF_val, !mcsema_real_eip !16
  %301 = icmp slt i64 %297, 0
  store i1 %301, i1* %SF_val, !mcsema_real_eip !16
  %302 = icmp eq i64 %297, 0, !mcsema_real_eip !16
  store i1 %302, i1* %ZF_val, !mcsema_real_eip !16
  %303 = xor i64 %296, -9223372036854775808, !mcsema_real_eip !16
  %304 = and i64 %298, %303, !mcsema_real_eip !16
  %305 = icmp slt i64 %304, 0
  store i1 %305, i1* %OF_val, !mcsema_real_eip !16
  %306 = trunc i64 %297 to i8, !mcsema_real_eip !16
  %307 = tail call i8 @llvm.ctpop.i8(i8 %306), !mcsema_real_eip !16
  %308 = and i8 %307, 1
  %309 = icmp eq i8 %308, 0
  store i1 %309, i1* %PF_val, !mcsema_real_eip !16
  %310 = extractvalue { i64, i1 } %uadd211, 1
  store i1 %310, i1* %CF_val, !mcsema_real_eip !16
  store i64 %297, i64* %RSP_val, !mcsema_real_eip !16
  %311 = inttoptr i64 %297 to i64*, !mcsema_real_eip !17
  %312 = load i64, i64* %311, !mcsema_real_eip !17
  store i64 %312, i64* %RBP_val, !mcsema_real_eip !17
  %313 = add i64 %297, 16, !mcsema_real_eip !18
  store i64 %313, i64* %RSP_val, !mcsema_real_eip !18
  %314 = load i64, i64* %RAX_val, !mcsema_real_eip !18
  store i64 %314, i64* %RAX, !mcsema_real_eip !18
  %315 = load i64, i64* %RBX_val, !mcsema_real_eip !18
  store i64 %315, i64* %RBX, !mcsema_real_eip !18
  %316 = load i64, i64* %RCX_val, !mcsema_real_eip !18
  store i64 %316, i64* %RCX, !mcsema_real_eip !18
  %317 = load i64, i64* %RDX_val, !mcsema_real_eip !18
  store i64 %317, i64* %RDX, !mcsema_real_eip !18
  %318 = load i64, i64* %RSI_val, !mcsema_real_eip !18
  store i64 %318, i64* %RSI, !mcsema_real_eip !18
  %319 = load i64, i64* %RDI_val, !mcsema_real_eip !18
  store i64 %319, i64* %RDI, !mcsema_real_eip !18
  %320 = load i64, i64* %RSP_val, !mcsema_real_eip !18
  store i64 %320, i64* %RSP, !mcsema_real_eip !18
  %321 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  store i64 %321, i64* %RBP, !mcsema_real_eip !18
  %322 = load i64, i64* %R8_val, !mcsema_real_eip !18
  store i64 %322, i64* %R8, !mcsema_real_eip !18
  %323 = load i64, i64* %R9_val, !mcsema_real_eip !18
  store i64 %323, i64* %R9, !mcsema_real_eip !18
  %324 = load i64, i64* %R10_val, !mcsema_real_eip !18
  store i64 %324, i64* %R10, !mcsema_real_eip !18
  %325 = load i64, i64* %R11_val, !mcsema_real_eip !18
  store i64 %325, i64* %R11, !mcsema_real_eip !18
  %326 = load i64, i64* %R12_val, !mcsema_real_eip !18
  store i64 %326, i64* %R12, !mcsema_real_eip !18
  %327 = load i64, i64* %R13_val, !mcsema_real_eip !18
  store i64 %327, i64* %R13, !mcsema_real_eip !18
  %328 = load i64, i64* %R14_val, !mcsema_real_eip !18
  store i64 %328, i64* %R14, !mcsema_real_eip !18
  %329 = load i64, i64* %R15_val, !mcsema_real_eip !18
  store i64 %329, i64* %R15, !mcsema_real_eip !18
  %330 = load i64, i64* %RIP_val, !mcsema_real_eip !18
  store i64 %330, i64* %RIP, !mcsema_real_eip !18
  %331 = load i1, i1* %CF_val, !mcsema_real_eip !18
  store i1 %331, i1* %CF, align 1, !mcsema_real_eip !18
  %332 = load i1, i1* %PF_val, !mcsema_real_eip !18
  store i1 %332, i1* %PF, align 1, !mcsema_real_eip !18
  %333 = load i1, i1* %AF_val, !mcsema_real_eip !18
  store i1 %333, i1* %AF, align 1, !mcsema_real_eip !18
  %334 = load i1, i1* %ZF_val, !mcsema_real_eip !18
  store i1 %334, i1* %ZF, align 1, !mcsema_real_eip !18
  %335 = load i1, i1* %SF_val, !mcsema_real_eip !18
  store i1 %335, i1* %SF, align 1, !mcsema_real_eip !18
  %336 = load i1, i1* %OF_val, !mcsema_real_eip !18
  store i1 %336, i1* %OF, align 1, !mcsema_real_eip !18
  %337 = load i1, i1* %DF_val, !mcsema_real_eip !18
  store i1 %337, i1* %DF, align 1, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !18
  %338 = load i1, i1* %FPU_B_val, !mcsema_real_eip !18
  store i1 %338, i1* %FPU_B, align 1, !mcsema_real_eip !18
  %339 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !18
  store i1 %339, i1* %FPU_C3, align 1, !mcsema_real_eip !18
  %340 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !18
  store i3 %340, i3* %FPU_TOP, align 1, !mcsema_real_eip !18
  %341 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !18
  store i1 %341, i1* %FPU_C2, align 1, !mcsema_real_eip !18
  %342 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !18
  store i1 %342, i1* %FPU_C1, align 1, !mcsema_real_eip !18
  %343 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !18
  store i1 %343, i1* %FPU_C0, align 1, !mcsema_real_eip !18
  %344 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !18
  store i1 %344, i1* %FPU_ES, align 1, !mcsema_real_eip !18
  %345 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !18
  store i1 %345, i1* %FPU_SF, align 1, !mcsema_real_eip !18
  %346 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !18
  store i1 %346, i1* %FPU_PE, align 1, !mcsema_real_eip !18
  %347 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !18
  store i1 %347, i1* %FPU_UE, align 1, !mcsema_real_eip !18
  %348 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !18
  store i1 %348, i1* %FPU_OE, align 1, !mcsema_real_eip !18
  %349 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !18
  store i1 %349, i1* %FPU_ZE, align 1, !mcsema_real_eip !18
  %350 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !18
  store i1 %350, i1* %FPU_DE, align 1, !mcsema_real_eip !18
  %351 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !18
  store i1 %351, i1* %FPU_IE, align 1, !mcsema_real_eip !18
  %352 = load i1, i1* %FPU_X_val, !mcsema_real_eip !18
  store i1 %352, i1* %FPU_X, align 1, !mcsema_real_eip !18
  %353 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !18
  store i2 %353, i2* %FPU_RC, align 1, !mcsema_real_eip !18
  %354 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !18
  store i2 %354, i2* %FPU_PC, align 1, !mcsema_real_eip !18
  %355 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !18
  store i1 %355, i1* %FPU_PM, align 1, !mcsema_real_eip !18
  %356 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !18
  store i1 %356, i1* %FPU_UM, align 1, !mcsema_real_eip !18
  %357 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !18
  store i1 %357, i1* %FPU_OM, align 1, !mcsema_real_eip !18
  %358 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !18
  store i1 %358, i1* %FPU_ZM, align 1, !mcsema_real_eip !18
  %359 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !18
  store i1 %359, i1* %FPU_DM, align 1, !mcsema_real_eip !18
  %360 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !18
  store i1 %360, i1* %FPU_IM, align 1, !mcsema_real_eip !18
  %361 = load i64, i64* %53, align 4
  store i64 %361, i64* %52, align 4
  %362 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !18
  store i16 %362, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !18
  %363 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !18
  store i64 %363, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !18
  %364 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !18
  store i16 %364, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !18
  %365 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !18
  store i64 %365, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !18
  %366 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !18
  store i11 %366, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !18
  %367 = load i128, i128* %XMM0_val, !mcsema_real_eip !18
  store i128 %367, i128* %XMM0, align 1, !mcsema_real_eip !18
  %368 = load i128, i128* %XMM1_val, !mcsema_real_eip !18
  store i128 %368, i128* %XMM1, align 1, !mcsema_real_eip !18
  %369 = load i128, i128* %XMM2_val, !mcsema_real_eip !18
  store i128 %369, i128* %XMM2, align 1, !mcsema_real_eip !18
  %370 = load i128, i128* %XMM3_val, !mcsema_real_eip !18
  store i128 %370, i128* %XMM3, align 1, !mcsema_real_eip !18
  %371 = load i128, i128* %XMM4_val, !mcsema_real_eip !18
  store i128 %371, i128* %XMM4, align 1, !mcsema_real_eip !18
  %372 = load i128, i128* %XMM5_val, !mcsema_real_eip !18
  store i128 %372, i128* %XMM5, align 1, !mcsema_real_eip !18
  %373 = load i128, i128* %XMM6_val, !mcsema_real_eip !18
  store i128 %373, i128* %XMM6, align 1, !mcsema_real_eip !18
  %374 = load i128, i128* %XMM7_val, !mcsema_real_eip !18
  store i128 %374, i128* %XMM7, align 1, !mcsema_real_eip !18
  %375 = load i128, i128* %XMM8_val, !mcsema_real_eip !18
  store i128 %375, i128* %XMM8, align 1, !mcsema_real_eip !18
  %376 = load i128, i128* %XMM9_val, !mcsema_real_eip !18
  store i128 %376, i128* %XMM9, align 1, !mcsema_real_eip !18
  %377 = load i128, i128* %XMM10_val, !mcsema_real_eip !18
  store i128 %377, i128* %XMM10, align 1, !mcsema_real_eip !18
  %378 = load i128, i128* %XMM11_val, !mcsema_real_eip !18
  store i128 %378, i128* %XMM11, align 1, !mcsema_real_eip !18
  %379 = load i128, i128* %XMM12_val, !mcsema_real_eip !18
  store i128 %379, i128* %XMM12, align 1, !mcsema_real_eip !18
  %380 = load i128, i128* %XMM13_val, !mcsema_real_eip !18
  store i128 %380, i128* %XMM13, align 1, !mcsema_real_eip !18
  %381 = load i128, i128* %XMM14_val, !mcsema_real_eip !18
  store i128 %381, i128* %XMM14, align 1, !mcsema_real_eip !18
  %382 = load i128, i128* %XMM15_val, !mcsema_real_eip !18
  store i128 %382, i128* %XMM15, align 1, !mcsema_real_eip !18
  %383 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !18
  store i64 %383, i64* %STACK_BASE, align 1, !mcsema_real_eip !18
  %384 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !18
  store i64 %384, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !18
  ret void, !mcsema_real_eip !18
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !19
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !19
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !19
  %XMM15_val = alloca i128, !mcsema_real_eip !19
  %XMM14_val = alloca i128, !mcsema_real_eip !19
  %XMM13_val = alloca i128, !mcsema_real_eip !19
  %XMM12_val = alloca i128, !mcsema_real_eip !19
  %XMM11_val = alloca i128, !mcsema_real_eip !19
  %XMM10_val = alloca i128, !mcsema_real_eip !19
  %XMM9_val = alloca i128, !mcsema_real_eip !19
  %XMM8_val = alloca i128, !mcsema_real_eip !19
  %XMM7_val = alloca i128, !mcsema_real_eip !19
  %XMM6_val = alloca i128, !mcsema_real_eip !19
  %XMM5_val = alloca i128, !mcsema_real_eip !19
  %XMM4_val = alloca i128, !mcsema_real_eip !19
  %XMM3_val = alloca i128, !mcsema_real_eip !19
  %XMM2_val = alloca i128, !mcsema_real_eip !19
  %XMM1_val = alloca i128, !mcsema_real_eip !19
  %XMM0_val = alloca i128, !mcsema_real_eip !19
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !19
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !19
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !19
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !19
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !19
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !19
  %FPU_IM_val = alloca i1, !mcsema_real_eip !19
  %FPU_DM_val = alloca i1, !mcsema_real_eip !19
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !19
  %FPU_OM_val = alloca i1, !mcsema_real_eip !19
  %FPU_UM_val = alloca i1, !mcsema_real_eip !19
  %FPU_PM_val = alloca i1, !mcsema_real_eip !19
  %FPU_PC_val = alloca i2, !mcsema_real_eip !19
  %FPU_RC_val = alloca i2, !mcsema_real_eip !19
  %FPU_X_val = alloca i1, !mcsema_real_eip !19
  %FPU_IE_val = alloca i1, !mcsema_real_eip !19
  %FPU_DE_val = alloca i1, !mcsema_real_eip !19
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !19
  %FPU_OE_val = alloca i1, !mcsema_real_eip !19
  %FPU_UE_val = alloca i1, !mcsema_real_eip !19
  %FPU_PE_val = alloca i1, !mcsema_real_eip !19
  %FPU_SF_val = alloca i1, !mcsema_real_eip !19
  %FPU_ES_val = alloca i1, !mcsema_real_eip !19
  %FPU_C0_val = alloca i1, !mcsema_real_eip !19
  %FPU_C1_val = alloca i1, !mcsema_real_eip !19
  %FPU_C2_val = alloca i1, !mcsema_real_eip !19
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !19
  %FPU_C3_val = alloca i1, !mcsema_real_eip !19
  %FPU_B_val = alloca i1, !mcsema_real_eip !19
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !19
  %DF_val = alloca i1, !mcsema_real_eip !19
  %OF_val = alloca i1, !mcsema_real_eip !19
  %SF_val = alloca i1, !mcsema_real_eip !19
  %CF_val = alloca i1, !mcsema_real_eip !19
  %AF_val = alloca i1, !mcsema_real_eip !19
  %PF_val = alloca i1, !mcsema_real_eip !19
  %ZF_val = alloca i1, !mcsema_real_eip !19
  %RIP_val = alloca i64, !mcsema_real_eip !19
  %R14_val = alloca i64, !mcsema_real_eip !19
  %R13_val = alloca i64, !mcsema_real_eip !19
  %R12_val = alloca i64, !mcsema_real_eip !19
  %R11_val = alloca i64, !mcsema_real_eip !19
  %R10_val = alloca i64, !mcsema_real_eip !19
  %R9_val = alloca i64, !mcsema_real_eip !19
  %R8_val = alloca i64, !mcsema_real_eip !19
  %RSP_val = alloca i64, !mcsema_real_eip !19
  %RBP_val = alloca i64, !mcsema_real_eip !19
  %RDI_val = alloca i64, !mcsema_real_eip !19
  %RSI_val = alloca i64, !mcsema_real_eip !19
  %RDX_val = alloca i64, !mcsema_real_eip !19
  %RCX_val = alloca i64, !mcsema_real_eip !19
  %RBX_val = alloca i64, !mcsema_real_eip !19
  %RAX_val = alloca i64, !mcsema_real_eip !19
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !19
  %1 = load i64, i64* %RAX, !mcsema_real_eip !19
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !19
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !19
  %2 = load i64, i64* %RBX, !mcsema_real_eip !19
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !19
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !19
  %3 = load i64, i64* %RCX, !mcsema_real_eip !19
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !19
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !19
  %4 = load i64, i64* %RDX, !mcsema_real_eip !19
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !19
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !19
  %5 = load i64, i64* %RSI, !mcsema_real_eip !19
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !19
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !19
  %6 = load i64, i64* %RDI, !mcsema_real_eip !19
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !19
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !19
  %7 = load i64, i64* %RSP, !mcsema_real_eip !19
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !19
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !19
  %8 = load i64, i64* %RBP, !mcsema_real_eip !19
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !19
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !19
  %9 = load i64, i64* %R8, !mcsema_real_eip !19
  store i64 %9, i64* %R8_val, !mcsema_real_eip !19
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !19
  %10 = load i64, i64* %R9, !mcsema_real_eip !19
  store i64 %10, i64* %R9_val, !mcsema_real_eip !19
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !19
  %11 = load i64, i64* %R10, !mcsema_real_eip !19
  store i64 %11, i64* %R10_val, !mcsema_real_eip !19
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !19
  %12 = load i64, i64* %R11, !mcsema_real_eip !19
  store i64 %12, i64* %R11_val, !mcsema_real_eip !19
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !19
  %13 = load i64, i64* %R12, !mcsema_real_eip !19
  store i64 %13, i64* %R12_val, !mcsema_real_eip !19
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !19
  %14 = load i64, i64* %R13, !mcsema_real_eip !19
  store i64 %14, i64* %R13_val, !mcsema_real_eip !19
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !19
  %15 = load i64, i64* %R14, !mcsema_real_eip !19
  store i64 %15, i64* %R14_val, !mcsema_real_eip !19
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !19
  %16 = load i64, i64* %R15, !mcsema_real_eip !19
  store i64 %16, i64* %R15_val, !mcsema_real_eip !19
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !19
  %17 = load i64, i64* %RIP, !mcsema_real_eip !19
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !19
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !19
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !19
  store i1 %18, i1* %CF_val, !mcsema_real_eip !19
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !19
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !19
  store i1 %19, i1* %PF_val, !mcsema_real_eip !19
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !19
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !19
  store i1 %20, i1* %AF_val, !mcsema_real_eip !19
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !19
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !19
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !19
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !19
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !19
  store i1 %22, i1* %SF_val, !mcsema_real_eip !19
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !19
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !19
  store i1 %23, i1* %OF_val, !mcsema_real_eip !19
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !19
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !19
  store i1 %24, i1* %DF_val, !mcsema_real_eip !19
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !19
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !19
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !19
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !19
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !19
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !19
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !19
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !19
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !19
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !19
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !19
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !19
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !19
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !19
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !19
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !19
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !19
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !19
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !19
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !19
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !19
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !19
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !19
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !19
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !19
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !19
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !19
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !19
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !19
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !19
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !19
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !19
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !19
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !19
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !19
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !19
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !19
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !19
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !19
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !19
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !19
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !19
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !19
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !19
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !19
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !19
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !19
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !19
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !19
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !19
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !19
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !19
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !19
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !19
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !19
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !19
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !19
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !19
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !19
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !19
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !19
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !19
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !19
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !19
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !19
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !19
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !19
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !19
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !19
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !19
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !19
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !19
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !19
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !19
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !19
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !19
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !19
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !19
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !19
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !19
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !19
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !19
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !19
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !19
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !19
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !19
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !19
  %59 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !19
  store i11 %59, i11* %FPU_FOPCODE_val, !mcsema_real_eip !19
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !19
  %60 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !19
  store i128 %60, i128* %XMM0_val, !mcsema_real_eip !19
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !19
  %61 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !19
  store i128 %61, i128* %XMM1_val, !mcsema_real_eip !19
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !19
  %62 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !19
  store i128 %62, i128* %XMM2_val, !mcsema_real_eip !19
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !19
  %63 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !19
  store i128 %63, i128* %XMM3_val, !mcsema_real_eip !19
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !19
  %64 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !19
  store i128 %64, i128* %XMM4_val, !mcsema_real_eip !19
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !19
  %65 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !19
  store i128 %65, i128* %XMM5_val, !mcsema_real_eip !19
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !19
  %66 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !19
  store i128 %66, i128* %XMM6_val, !mcsema_real_eip !19
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !19
  %67 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !19
  store i128 %67, i128* %XMM7_val, !mcsema_real_eip !19
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !19
  %68 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !19
  store i128 %68, i128* %XMM8_val, !mcsema_real_eip !19
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !19
  %69 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !19
  store i128 %69, i128* %XMM9_val, !mcsema_real_eip !19
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !19
  %70 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !19
  store i128 %70, i128* %XMM10_val, !mcsema_real_eip !19
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !19
  %71 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !19
  store i128 %71, i128* %XMM11_val, !mcsema_real_eip !19
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !19
  %72 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !19
  store i128 %72, i128* %XMM12_val, !mcsema_real_eip !19
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !19
  %73 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !19
  store i128 %73, i128* %XMM13_val, !mcsema_real_eip !19
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !19
  %74 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !19
  store i128 %74, i128* %XMM14_val, !mcsema_real_eip !19
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !19
  %75 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !19
  store i128 %75, i128* %XMM15_val, !mcsema_real_eip !19
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !19
  %76 = load i64, i64* %STACK_BASE, !mcsema_real_eip !19
  store i64 %76, i64* %STACK_BASE_val, !mcsema_real_eip !19
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !19
  %77 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !19
  store i64 %77, i64* %STACK_LIMIT_val, !mcsema_real_eip !19
  %78 = load i64, i64* %RBP_val, !mcsema_real_eip !19
  %79 = load i64, i64* %RSP_val, !mcsema_real_eip !19
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !19
  store i64 %78, i64* %81, !mcsema_real_eip !19
  store i64 %80, i64* %RSP_val, !mcsema_real_eip !19
  store i64 %80, i64* %RBP_val, !mcsema_real_eip !20
  store i64 74755, i64* bitcast (%1* @data_0x448 to i64*), !mcsema_real_eip !21
  %82 = load i64, i64* %RSP_val, !mcsema_real_eip !22
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !22
  %84 = load i64, i64* %83, !mcsema_real_eip !22
  store i64 %84, i64* %RBP_val, !mcsema_real_eip !22
  %85 = add i64 %82, 16, !mcsema_real_eip !23
  store i64 %85, i64* %RSP_val, !mcsema_real_eip !23
  %86 = load i64, i64* %RAX_val, !mcsema_real_eip !23
  store i64 %86, i64* %RAX, !mcsema_real_eip !23
  %87 = load i64, i64* %RBX_val, !mcsema_real_eip !23
  store i64 %87, i64* %RBX, !mcsema_real_eip !23
  %88 = load i64, i64* %RCX_val, !mcsema_real_eip !23
  store i64 %88, i64* %RCX, !mcsema_real_eip !23
  %89 = load i64, i64* %RDX_val, !mcsema_real_eip !23
  store i64 %89, i64* %RDX, !mcsema_real_eip !23
  %90 = load i64, i64* %RSI_val, !mcsema_real_eip !23
  store i64 %90, i64* %RSI, !mcsema_real_eip !23
  %91 = load i64, i64* %RDI_val, !mcsema_real_eip !23
  store i64 %91, i64* %RDI, !mcsema_real_eip !23
  %92 = load i64, i64* %RSP_val, !mcsema_real_eip !23
  store i64 %92, i64* %RSP, !mcsema_real_eip !23
  %93 = load i64, i64* %RBP_val, !mcsema_real_eip !23
  store i64 %93, i64* %RBP, !mcsema_real_eip !23
  %94 = load i64, i64* %R8_val, !mcsema_real_eip !23
  store i64 %94, i64* %R8, !mcsema_real_eip !23
  %95 = load i64, i64* %R9_val, !mcsema_real_eip !23
  store i64 %95, i64* %R9, !mcsema_real_eip !23
  %96 = load i64, i64* %R10_val, !mcsema_real_eip !23
  store i64 %96, i64* %R10, !mcsema_real_eip !23
  %97 = load i64, i64* %R11_val, !mcsema_real_eip !23
  store i64 %97, i64* %R11, !mcsema_real_eip !23
  %98 = load i64, i64* %R12_val, !mcsema_real_eip !23
  store i64 %98, i64* %R12, !mcsema_real_eip !23
  %99 = load i64, i64* %R13_val, !mcsema_real_eip !23
  store i64 %99, i64* %R13, !mcsema_real_eip !23
  %100 = load i64, i64* %R14_val, !mcsema_real_eip !23
  store i64 %100, i64* %R14, !mcsema_real_eip !23
  %101 = load i64, i64* %R15_val, !mcsema_real_eip !23
  store i64 %101, i64* %R15, !mcsema_real_eip !23
  %102 = load i64, i64* %RIP_val, !mcsema_real_eip !23
  store i64 %102, i64* %RIP, !mcsema_real_eip !23
  %103 = load i1, i1* %CF_val, !mcsema_real_eip !23
  store i1 %103, i1* %CF, align 1, !mcsema_real_eip !23
  %104 = load i1, i1* %PF_val, !mcsema_real_eip !23
  store i1 %104, i1* %PF, align 1, !mcsema_real_eip !23
  %105 = load i1, i1* %AF_val, !mcsema_real_eip !23
  store i1 %105, i1* %AF, align 1, !mcsema_real_eip !23
  %106 = load i1, i1* %ZF_val, !mcsema_real_eip !23
  store i1 %106, i1* %ZF, align 1, !mcsema_real_eip !23
  %107 = load i1, i1* %SF_val, !mcsema_real_eip !23
  store i1 %107, i1* %SF, align 1, !mcsema_real_eip !23
  %108 = load i1, i1* %OF_val, !mcsema_real_eip !23
  store i1 %108, i1* %OF, align 1, !mcsema_real_eip !23
  %109 = load i1, i1* %DF_val, !mcsema_real_eip !23
  store i1 %109, i1* %DF, align 1, !mcsema_real_eip !23
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !23
  %110 = load i1, i1* %FPU_B_val, !mcsema_real_eip !23
  store i1 %110, i1* %FPU_B, align 1, !mcsema_real_eip !23
  %111 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !23
  store i1 %111, i1* %FPU_C3, align 1, !mcsema_real_eip !23
  %112 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !23
  store i3 %112, i3* %FPU_TOP, align 1, !mcsema_real_eip !23
  %113 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !23
  store i1 %113, i1* %FPU_C2, align 1, !mcsema_real_eip !23
  %114 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !23
  store i1 %114, i1* %FPU_C1, align 1, !mcsema_real_eip !23
  %115 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !23
  store i1 %115, i1* %FPU_C0, align 1, !mcsema_real_eip !23
  %116 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !23
  store i1 %116, i1* %FPU_ES, align 1, !mcsema_real_eip !23
  %117 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !23
  store i1 %117, i1* %FPU_SF, align 1, !mcsema_real_eip !23
  %118 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !23
  store i1 %118, i1* %FPU_PE, align 1, !mcsema_real_eip !23
  %119 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !23
  store i1 %119, i1* %FPU_UE, align 1, !mcsema_real_eip !23
  %120 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !23
  store i1 %120, i1* %FPU_OE, align 1, !mcsema_real_eip !23
  %121 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !23
  store i1 %121, i1* %FPU_ZE, align 1, !mcsema_real_eip !23
  %122 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !23
  store i1 %122, i1* %FPU_DE, align 1, !mcsema_real_eip !23
  %123 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !23
  store i1 %123, i1* %FPU_IE, align 1, !mcsema_real_eip !23
  %124 = load i1, i1* %FPU_X_val, !mcsema_real_eip !23
  store i1 %124, i1* %FPU_X, align 1, !mcsema_real_eip !23
  %125 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !23
  store i2 %125, i2* %FPU_RC, align 1, !mcsema_real_eip !23
  %126 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !23
  store i2 %126, i2* %FPU_PC, align 1, !mcsema_real_eip !23
  %127 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !23
  store i1 %127, i1* %FPU_PM, align 1, !mcsema_real_eip !23
  %128 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !23
  store i1 %128, i1* %FPU_UM, align 1, !mcsema_real_eip !23
  %129 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !23
  store i1 %129, i1* %FPU_OM, align 1, !mcsema_real_eip !23
  %130 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !23
  store i1 %130, i1* %FPU_ZM, align 1, !mcsema_real_eip !23
  %131 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !23
  store i1 %131, i1* %FPU_DM, align 1, !mcsema_real_eip !23
  %132 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !23
  store i1 %132, i1* %FPU_IM, align 1, !mcsema_real_eip !23
  %133 = load i64, i64* %53, align 4
  store i64 %133, i64* %52, align 4
  %134 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !23
  store i16 %134, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !23
  %135 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !23
  store i64 %135, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !23
  %136 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !23
  store i16 %136, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !23
  %137 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !23
  store i64 %137, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !23
  %138 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !23
  store i11 %138, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !23
  %139 = load i128, i128* %XMM0_val, !mcsema_real_eip !23
  store i128 %139, i128* %XMM0, align 1, !mcsema_real_eip !23
  %140 = load i128, i128* %XMM1_val, !mcsema_real_eip !23
  store i128 %140, i128* %XMM1, align 1, !mcsema_real_eip !23
  %141 = load i128, i128* %XMM2_val, !mcsema_real_eip !23
  store i128 %141, i128* %XMM2, align 1, !mcsema_real_eip !23
  %142 = load i128, i128* %XMM3_val, !mcsema_real_eip !23
  store i128 %142, i128* %XMM3, align 1, !mcsema_real_eip !23
  %143 = load i128, i128* %XMM4_val, !mcsema_real_eip !23
  store i128 %143, i128* %XMM4, align 1, !mcsema_real_eip !23
  %144 = load i128, i128* %XMM5_val, !mcsema_real_eip !23
  store i128 %144, i128* %XMM5, align 1, !mcsema_real_eip !23
  %145 = load i128, i128* %XMM6_val, !mcsema_real_eip !23
  store i128 %145, i128* %XMM6, align 1, !mcsema_real_eip !23
  %146 = load i128, i128* %XMM7_val, !mcsema_real_eip !23
  store i128 %146, i128* %XMM7, align 1, !mcsema_real_eip !23
  %147 = load i128, i128* %XMM8_val, !mcsema_real_eip !23
  store i128 %147, i128* %XMM8, align 1, !mcsema_real_eip !23
  %148 = load i128, i128* %XMM9_val, !mcsema_real_eip !23
  store i128 %148, i128* %XMM9, align 1, !mcsema_real_eip !23
  %149 = load i128, i128* %XMM10_val, !mcsema_real_eip !23
  store i128 %149, i128* %XMM10, align 1, !mcsema_real_eip !23
  %150 = load i128, i128* %XMM11_val, !mcsema_real_eip !23
  store i128 %150, i128* %XMM11, align 1, !mcsema_real_eip !23
  %151 = load i128, i128* %XMM12_val, !mcsema_real_eip !23
  store i128 %151, i128* %XMM12, align 1, !mcsema_real_eip !23
  %152 = load i128, i128* %XMM13_val, !mcsema_real_eip !23
  store i128 %152, i128* %XMM13, align 1, !mcsema_real_eip !23
  %153 = load i128, i128* %XMM14_val, !mcsema_real_eip !23
  store i128 %153, i128* %XMM14, align 1, !mcsema_real_eip !23
  %154 = load i128, i128* %XMM15_val, !mcsema_real_eip !23
  store i128 %154, i128* %XMM15, align 1, !mcsema_real_eip !23
  %155 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !23
  store i64 %155, i64* %STACK_BASE, align 1, !mcsema_real_eip !23
  %156 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !23
  store i64 %156, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !23
  ret void, !mcsema_real_eip !23
}

define internal x86_64_sysvcc void @sub_160(%struct.regs*) {
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
  store i64 %80, i64* %RBP_val, !mcsema_real_eip !25
  %82 = add i64 %79, -40
  %83 = xor i64 %82, %80, !mcsema_real_eip !26
  %84 = and i64 %83, 16, !mcsema_real_eip !26
  %85 = icmp ne i64 %84, 0, !mcsema_real_eip !26
  store i1 %85, i1* %AF_val, !mcsema_real_eip !26
  %86 = trunc i64 %82 to i8, !mcsema_real_eip !26
  %87 = tail call i8 @llvm.ctpop.i8(i8 %86), !mcsema_real_eip !26
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  store i1 %89, i1* %PF_val, !mcsema_real_eip !26
  %90 = icmp eq i64 %82, 0, !mcsema_real_eip !26
  store i1 %90, i1* %ZF_val, !mcsema_real_eip !26
  %91 = icmp slt i64 %82, 0
  store i1 %91, i1* %SF_val, !mcsema_real_eip !26
  %92 = icmp ult i64 %80, 32, !mcsema_real_eip !26
  store i1 %92, i1* %CF_val, !mcsema_real_eip !26
  %93 = and i64 %83, %80, !mcsema_real_eip !26
  %94 = icmp slt i64 %93, 0
  store i1 %94, i1* %OF_val, !mcsema_real_eip !26
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !26
  %95 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %96 = add i64 %95, -4, !mcsema_real_eip !27
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !27
  %98 = load i64, i64* %RDI_val, !mcsema_real_eip !27
  %99 = trunc i64 %98 to i32, !mcsema_real_eip !27
  %100 = bitcast i64* %97 to i32*
  store i32 %99, i32* %100, !mcsema_real_eip !27
  %101 = load i64, i64* %RSP_val, !mcsema_real_eip !28
  %102 = add i64 %101, -8
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !28
  store i64 -4981261766360305936, i64* %103, !mcsema_real_eip !28
  store i64 %102, i64* %RSP_val, !mcsema_real_eip !28
  %104 = load i64, i64* %RAX_val, !mcsema_real_eip !28
  store i64 %104, i64* %RAX, !mcsema_real_eip !28
  %105 = load i64, i64* %RBX_val, !mcsema_real_eip !28
  store i64 %105, i64* %RBX, !mcsema_real_eip !28
  %106 = load i64, i64* %RCX_val, !mcsema_real_eip !28
  store i64 %106, i64* %RCX, !mcsema_real_eip !28
  %107 = load i64, i64* %RDX_val, !mcsema_real_eip !28
  store i64 %107, i64* %RDX, !mcsema_real_eip !28
  %108 = load i64, i64* %RSI_val, !mcsema_real_eip !28
  store i64 %108, i64* %RSI, !mcsema_real_eip !28
  %109 = load i64, i64* %RDI_val, !mcsema_real_eip !28
  store i64 %109, i64* %RDI, !mcsema_real_eip !28
  %110 = load i64, i64* %RSP_val, !mcsema_real_eip !28
  store i64 %110, i64* %RSP, !mcsema_real_eip !28
  %111 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  store i64 %111, i64* %RBP, !mcsema_real_eip !28
  %112 = load i64, i64* %R8_val, !mcsema_real_eip !28
  store i64 %112, i64* %R8, !mcsema_real_eip !28
  %113 = load i64, i64* %R9_val, !mcsema_real_eip !28
  store i64 %113, i64* %R9, !mcsema_real_eip !28
  %114 = load i64, i64* %R10_val, !mcsema_real_eip !28
  store i64 %114, i64* %R10, !mcsema_real_eip !28
  %115 = load i64, i64* %R11_val, !mcsema_real_eip !28
  store i64 %115, i64* %R11, !mcsema_real_eip !28
  %116 = load i64, i64* %R12_val, !mcsema_real_eip !28
  store i64 %116, i64* %R12, !mcsema_real_eip !28
  %117 = load i64, i64* %R13_val, !mcsema_real_eip !28
  store i64 %117, i64* %R13, !mcsema_real_eip !28
  %118 = load i64, i64* %R14_val, !mcsema_real_eip !28
  store i64 %118, i64* %R14, !mcsema_real_eip !28
  %119 = load i64, i64* %R15_val, !mcsema_real_eip !28
  store i64 %119, i64* %R15, !mcsema_real_eip !28
  %120 = load i64, i64* %RIP_val, !mcsema_real_eip !28
  store i64 %120, i64* %RIP, !mcsema_real_eip !28
  %121 = load i1, i1* %CF_val, !mcsema_real_eip !28
  store i1 %121, i1* %CF, align 1, !mcsema_real_eip !28
  %122 = load i1, i1* %PF_val, !mcsema_real_eip !28
  store i1 %122, i1* %PF, align 1, !mcsema_real_eip !28
  %123 = load i1, i1* %AF_val, !mcsema_real_eip !28
  store i1 %123, i1* %AF, align 1, !mcsema_real_eip !28
  %124 = load i1, i1* %ZF_val, !mcsema_real_eip !28
  store i1 %124, i1* %ZF, align 1, !mcsema_real_eip !28
  %125 = load i1, i1* %SF_val, !mcsema_real_eip !28
  store i1 %125, i1* %SF, align 1, !mcsema_real_eip !28
  %126 = load i1, i1* %OF_val, !mcsema_real_eip !28
  store i1 %126, i1* %OF, align 1, !mcsema_real_eip !28
  %127 = load i1, i1* %DF_val, !mcsema_real_eip !28
  store i1 %127, i1* %DF, align 1, !mcsema_real_eip !28
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !28
  %128 = load i1, i1* %FPU_B_val, !mcsema_real_eip !28
  store i1 %128, i1* %FPU_B, align 1, !mcsema_real_eip !28
  %129 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !28
  store i1 %129, i1* %FPU_C3, align 1, !mcsema_real_eip !28
  %130 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !28
  store i3 %130, i3* %FPU_TOP, align 1, !mcsema_real_eip !28
  %131 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !28
  store i1 %131, i1* %FPU_C2, align 1, !mcsema_real_eip !28
  %132 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !28
  store i1 %132, i1* %FPU_C1, align 1, !mcsema_real_eip !28
  %133 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !28
  store i1 %133, i1* %FPU_C0, align 1, !mcsema_real_eip !28
  %134 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !28
  store i1 %134, i1* %FPU_ES, align 1, !mcsema_real_eip !28
  %135 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !28
  store i1 %135, i1* %FPU_SF, align 1, !mcsema_real_eip !28
  %136 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !28
  store i1 %136, i1* %FPU_PE, align 1, !mcsema_real_eip !28
  %137 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !28
  store i1 %137, i1* %FPU_UE, align 1, !mcsema_real_eip !28
  %138 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !28
  store i1 %138, i1* %FPU_OE, align 1, !mcsema_real_eip !28
  %139 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !28
  store i1 %139, i1* %FPU_ZE, align 1, !mcsema_real_eip !28
  %140 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !28
  store i1 %140, i1* %FPU_DE, align 1, !mcsema_real_eip !28
  %141 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !28
  store i1 %141, i1* %FPU_IE, align 1, !mcsema_real_eip !28
  %142 = load i1, i1* %FPU_X_val, !mcsema_real_eip !28
  store i1 %142, i1* %FPU_X, align 1, !mcsema_real_eip !28
  %143 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !28
  store i2 %143, i2* %FPU_RC, align 1, !mcsema_real_eip !28
  %144 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !28
  store i2 %144, i2* %FPU_PC, align 1, !mcsema_real_eip !28
  %145 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !28
  store i1 %145, i1* %FPU_PM, align 1, !mcsema_real_eip !28
  %146 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !28
  store i1 %146, i1* %FPU_UM, align 1, !mcsema_real_eip !28
  %147 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !28
  store i1 %147, i1* %FPU_OM, align 1, !mcsema_real_eip !28
  %148 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !28
  store i1 %148, i1* %FPU_ZM, align 1, !mcsema_real_eip !28
  %149 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !28
  store i1 %149, i1* %FPU_DM, align 1, !mcsema_real_eip !28
  %150 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !28
  store i1 %150, i1* %FPU_IM, align 1, !mcsema_real_eip !28
  %151 = load i64, i64* %53, align 4
  store i64 %151, i64* %52, align 4
  %152 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !28
  store i16 %152, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !28
  %153 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !28
  store i64 %153, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !28
  %154 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !28
  store i16 %154, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !28
  %155 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !28
  store i64 %155, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !28
  %156 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !28
  store i11 %156, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !28
  %157 = load i128, i128* %XMM0_val, !mcsema_real_eip !28
  store i128 %157, i128* %XMM0, align 1, !mcsema_real_eip !28
  %158 = load i128, i128* %XMM1_val, !mcsema_real_eip !28
  store i128 %158, i128* %XMM1, align 1, !mcsema_real_eip !28
  %159 = load i128, i128* %XMM2_val, !mcsema_real_eip !28
  store i128 %159, i128* %XMM2, align 1, !mcsema_real_eip !28
  %160 = load i128, i128* %XMM3_val, !mcsema_real_eip !28
  store i128 %160, i128* %XMM3, align 1, !mcsema_real_eip !28
  %161 = load i128, i128* %XMM4_val, !mcsema_real_eip !28
  store i128 %161, i128* %XMM4, align 1, !mcsema_real_eip !28
  %162 = load i128, i128* %XMM5_val, !mcsema_real_eip !28
  store i128 %162, i128* %XMM5, align 1, !mcsema_real_eip !28
  %163 = load i128, i128* %XMM6_val, !mcsema_real_eip !28
  store i128 %163, i128* %XMM6, align 1, !mcsema_real_eip !28
  %164 = load i128, i128* %XMM7_val, !mcsema_real_eip !28
  store i128 %164, i128* %XMM7, align 1, !mcsema_real_eip !28
  %165 = load i128, i128* %XMM8_val, !mcsema_real_eip !28
  store i128 %165, i128* %XMM8, align 1, !mcsema_real_eip !28
  %166 = load i128, i128* %XMM9_val, !mcsema_real_eip !28
  store i128 %166, i128* %XMM9, align 1, !mcsema_real_eip !28
  %167 = load i128, i128* %XMM10_val, !mcsema_real_eip !28
  store i128 %167, i128* %XMM10, align 1, !mcsema_real_eip !28
  %168 = load i128, i128* %XMM11_val, !mcsema_real_eip !28
  store i128 %168, i128* %XMM11, align 1, !mcsema_real_eip !28
  %169 = load i128, i128* %XMM12_val, !mcsema_real_eip !28
  store i128 %169, i128* %XMM12, align 1, !mcsema_real_eip !28
  %170 = load i128, i128* %XMM13_val, !mcsema_real_eip !28
  store i128 %170, i128* %XMM13, align 1, !mcsema_real_eip !28
  %171 = load i128, i128* %XMM14_val, !mcsema_real_eip !28
  store i128 %171, i128* %XMM14, align 1, !mcsema_real_eip !28
  %172 = load i128, i128* %XMM15_val, !mcsema_real_eip !28
  store i128 %172, i128* %XMM15, align 1, !mcsema_real_eip !28
  %173 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !28
  store i64 %173, i64* %STACK_BASE, align 1, !mcsema_real_eip !28
  %174 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !28
  store i64 %174, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !28
  tail call x86_64_sysvcc void @sub_60(%struct.regs* %0), !mcsema_real_eip !28
  %175 = load i64, i64* %RAX, !mcsema_real_eip !28
  store i64 %175, i64* %RAX_val, !mcsema_real_eip !28
  %176 = load i64, i64* %RBX, !mcsema_real_eip !28
  store i64 %176, i64* %RBX_val, !mcsema_real_eip !28
  %177 = load i64, i64* %RCX, !mcsema_real_eip !28
  store i64 %177, i64* %RCX_val, !mcsema_real_eip !28
  %178 = load i64, i64* %RDX, !mcsema_real_eip !28
  store i64 %178, i64* %RDX_val, !mcsema_real_eip !28
  %179 = load i64, i64* %RSI, !mcsema_real_eip !28
  store i64 %179, i64* %RSI_val, !mcsema_real_eip !28
  %180 = load i64, i64* %RDI, !mcsema_real_eip !28
  store i64 %180, i64* %RDI_val, !mcsema_real_eip !28
  %181 = load i64, i64* %RSP, !mcsema_real_eip !28
  store i64 %181, i64* %RSP_val, !mcsema_real_eip !28
  %182 = load i64, i64* %RBP, !mcsema_real_eip !28
  store i64 %182, i64* %RBP_val, !mcsema_real_eip !28
  %183 = load i64, i64* %R8, !mcsema_real_eip !28
  store i64 %183, i64* %R8_val, !mcsema_real_eip !28
  %184 = load i64, i64* %R9, !mcsema_real_eip !28
  store i64 %184, i64* %R9_val, !mcsema_real_eip !28
  %185 = load i64, i64* %R10, !mcsema_real_eip !28
  store i64 %185, i64* %R10_val, !mcsema_real_eip !28
  %186 = load i64, i64* %R11, !mcsema_real_eip !28
  store i64 %186, i64* %R11_val, !mcsema_real_eip !28
  %187 = load i64, i64* %R12, !mcsema_real_eip !28
  store i64 %187, i64* %R12_val, !mcsema_real_eip !28
  %188 = load i64, i64* %R13, !mcsema_real_eip !28
  store i64 %188, i64* %R13_val, !mcsema_real_eip !28
  %189 = load i64, i64* %R14, !mcsema_real_eip !28
  store i64 %189, i64* %R14_val, !mcsema_real_eip !28
  %190 = load i64, i64* %R15, !mcsema_real_eip !28
  store i64 %190, i64* %R15_val, !mcsema_real_eip !28
  %191 = load i64, i64* %RIP, !mcsema_real_eip !28
  store i64 %191, i64* %RIP_val, !mcsema_real_eip !28
  %192 = load i1, i1* %CF, align 1, !mcsema_real_eip !28
  store i1 %192, i1* %CF_val, !mcsema_real_eip !28
  %193 = load i1, i1* %PF, align 1, !mcsema_real_eip !28
  store i1 %193, i1* %PF_val, !mcsema_real_eip !28
  %194 = load i1, i1* %AF, align 1, !mcsema_real_eip !28
  store i1 %194, i1* %AF_val, !mcsema_real_eip !28
  %195 = load i1, i1* %ZF, align 1, !mcsema_real_eip !28
  store i1 %195, i1* %ZF_val, !mcsema_real_eip !28
  %196 = load i1, i1* %SF, align 1, !mcsema_real_eip !28
  store i1 %196, i1* %SF_val, !mcsema_real_eip !28
  %197 = load i1, i1* %OF, align 1, !mcsema_real_eip !28
  store i1 %197, i1* %OF_val, !mcsema_real_eip !28
  %198 = load i1, i1* %DF, align 1, !mcsema_real_eip !28
  store i1 %198, i1* %DF_val, !mcsema_real_eip !28
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !28
  %199 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !28
  store i1 %199, i1* %FPU_B_val, !mcsema_real_eip !28
  %200 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !28
  store i1 %200, i1* %FPU_C3_val, !mcsema_real_eip !28
  %201 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !28
  store i3 %201, i3* %FPU_TOP_val, !mcsema_real_eip !28
  %202 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !28
  store i1 %202, i1* %FPU_C2_val, !mcsema_real_eip !28
  %203 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !28
  store i1 %203, i1* %FPU_C1_val, !mcsema_real_eip !28
  %204 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !28
  store i1 %204, i1* %FPU_C0_val, !mcsema_real_eip !28
  %205 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !28
  store i1 %205, i1* %FPU_ES_val, !mcsema_real_eip !28
  %206 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !28
  store i1 %206, i1* %FPU_SF_val, !mcsema_real_eip !28
  %207 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !28
  store i1 %207, i1* %FPU_PE_val, !mcsema_real_eip !28
  %208 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !28
  store i1 %208, i1* %FPU_UE_val, !mcsema_real_eip !28
  %209 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !28
  store i1 %209, i1* %FPU_OE_val, !mcsema_real_eip !28
  %210 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !28
  store i1 %210, i1* %FPU_ZE_val, !mcsema_real_eip !28
  %211 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !28
  store i1 %211, i1* %FPU_DE_val, !mcsema_real_eip !28
  %212 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !28
  store i1 %212, i1* %FPU_IE_val, !mcsema_real_eip !28
  %213 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !28
  store i1 %213, i1* %FPU_X_val, !mcsema_real_eip !28
  %214 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !28
  store i2 %214, i2* %FPU_RC_val, !mcsema_real_eip !28
  %215 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !28
  store i2 %215, i2* %FPU_PC_val, !mcsema_real_eip !28
  %216 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !28
  store i1 %216, i1* %FPU_PM_val, !mcsema_real_eip !28
  %217 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !28
  store i1 %217, i1* %FPU_UM_val, !mcsema_real_eip !28
  %218 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !28
  store i1 %218, i1* %FPU_OM_val, !mcsema_real_eip !28
  %219 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !28
  store i1 %219, i1* %FPU_ZM_val, !mcsema_real_eip !28
  %220 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !28
  store i1 %220, i1* %FPU_DM_val, !mcsema_real_eip !28
  %221 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !28
  store i1 %221, i1* %FPU_IM_val, !mcsema_real_eip !28
  %222 = load i64, i64* %52, align 4
  store i64 %222, i64* %53, align 4
  %223 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !28
  store i16 %223, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !28
  %224 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !28
  store i64 %224, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !28
  %225 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !28
  store i16 %225, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !28
  %226 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !28
  store i64 %226, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !28
  %227 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !28
  store i11 %227, i11* %FPU_FOPCODE_val, !mcsema_real_eip !28
  %228 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !28
  store i128 %228, i128* %XMM0_val, !mcsema_real_eip !28
  %229 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !28
  store i128 %229, i128* %XMM1_val, !mcsema_real_eip !28
  %230 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !28
  store i128 %230, i128* %XMM2_val, !mcsema_real_eip !28
  %231 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !28
  store i128 %231, i128* %XMM3_val, !mcsema_real_eip !28
  %232 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !28
  store i128 %232, i128* %XMM4_val, !mcsema_real_eip !28
  %233 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !28
  store i128 %233, i128* %XMM5_val, !mcsema_real_eip !28
  %234 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !28
  store i128 %234, i128* %XMM6_val, !mcsema_real_eip !28
  %235 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !28
  store i128 %235, i128* %XMM7_val, !mcsema_real_eip !28
  %236 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !28
  store i128 %236, i128* %XMM8_val, !mcsema_real_eip !28
  %237 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !28
  store i128 %237, i128* %XMM9_val, !mcsema_real_eip !28
  %238 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !28
  store i128 %238, i128* %XMM10_val, !mcsema_real_eip !28
  %239 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !28
  store i128 %239, i128* %XMM11_val, !mcsema_real_eip !28
  %240 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !28
  store i128 %240, i128* %XMM12_val, !mcsema_real_eip !28
  %241 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !28
  store i128 %241, i128* %XMM13_val, !mcsema_real_eip !28
  %242 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !28
  store i128 %242, i128* %XMM14_val, !mcsema_real_eip !28
  %243 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !28
  store i128 %243, i128* %XMM15_val, !mcsema_real_eip !28
  %244 = load i64, i64* %STACK_BASE, !mcsema_real_eip !28
  store i64 %244, i64* %STACK_BASE_val, !mcsema_real_eip !28
  %245 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !28
  store i64 %245, i64* %STACK_LIMIT_val, !mcsema_real_eip !28
  br label %block_0x17b, !mcsema_real_eip !29

block_0x17b:                                      ; preds = %block_0x20b, %entry
  %storemerge = phi i32 [ 500, %entry ], [ %589, %block_0x20b ]
  store i32 %storemerge, i32* bitcast (%5* @data_0x460 to i32*)
  %246 = add i32 %storemerge, -1
  %247 = xor i32 %246, %storemerge, !mcsema_real_eip !29
  %248 = and i32 %247, 16, !mcsema_real_eip !29
  %249 = icmp ne i32 %248, 0, !mcsema_real_eip !29
  store i1 %249, i1* %AF_val, !mcsema_real_eip !29
  %250 = trunc i32 %246 to i8, !mcsema_real_eip !29
  %251 = tail call i8 @llvm.ctpop.i8(i8 %250), !mcsema_real_eip !29
  %252 = and i8 %251, 1
  %253 = icmp eq i8 %252, 0
  store i1 %253, i1* %PF_val, !mcsema_real_eip !29
  %254 = icmp eq i32 %246, 0, !mcsema_real_eip !29
  store i1 %254, i1* %ZF_val, !mcsema_real_eip !29
  %255 = icmp slt i32 %246, 0
  store i1 %255, i1* %SF_val, !mcsema_real_eip !29
  %256 = icmp eq i32 %storemerge, 0
  store i1 %256, i1* %CF_val, !mcsema_real_eip !29
  %257 = and i32 %247, %storemerge, !mcsema_real_eip !29
  %258 = icmp slt i32 %257, 0
  store i1 %258, i1* %OF_val, !mcsema_real_eip !29
  %259 = xor i1 %255, %258
  %260 = load i1, i1* %ZF_val, !mcsema_real_eip !30
  %261 = or i1 %260, %259, !mcsema_real_eip !30
  br i1 %261, label %block_0x221, label %block_0x189, !mcsema_real_eip !30

block_0x189:                                      ; preds = %block_0x17b
  %262 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %263 = add i64 %262, -8, !mcsema_real_eip !31
  %264 = inttoptr i64 %263 to i64*, !mcsema_real_eip !31
  %265 = bitcast i64* %264 to i32*
  store i32 1, i32* %265, !mcsema_real_eip !31
  %266 = load i32, i32* bitcast (%5* @data_0x460 to i32*), !mcsema_real_eip !32
  br label %block_0x190, !mcsema_real_eip !33

block_0x221:                                      ; preds = %block_0x17b
  %267 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%2* @data_0x450 to i64), i64 4) to i32*), !mcsema_real_eip !34
  %268 = zext i32 %267 to i64, !mcsema_real_eip !34
  store i64 %268, i64* %RAX_val, !mcsema_real_eip !34
  %269 = load i32, i32* bitcast (%4* @data_0x3e8 to i32*), !mcsema_real_eip !35
  %270 = sub i32 %267, %269, !mcsema_real_eip !35
  %271 = xor i32 %270, %267, !mcsema_real_eip !35
  %272 = xor i32 %271, %269, !mcsema_real_eip !35
  %273 = and i32 %272, 16, !mcsema_real_eip !35
  %274 = icmp ne i32 %273, 0, !mcsema_real_eip !35
  store i1 %274, i1* %AF_val, !mcsema_real_eip !35
  %275 = trunc i32 %270 to i8, !mcsema_real_eip !35
  %276 = tail call i8 @llvm.ctpop.i8(i8 %275), !mcsema_real_eip !35
  %277 = and i8 %276, 1
  %278 = icmp eq i8 %277, 0
  store i1 %278, i1* %PF_val, !mcsema_real_eip !35
  %279 = icmp eq i32 %267, %269
  store i1 %279, i1* %ZF_val, !mcsema_real_eip !35
  %280 = icmp slt i32 %270, 0
  store i1 %280, i1* %SF_val, !mcsema_real_eip !35
  %281 = icmp ult i32 %267, %269, !mcsema_real_eip !35
  store i1 %281, i1* %CF_val, !mcsema_real_eip !35
  %282 = xor i32 %269, %267, !mcsema_real_eip !35
  %283 = and i32 %271, %282, !mcsema_real_eip !35
  %284 = icmp slt i32 %283, 0
  store i1 %284, i1* %OF_val, !mcsema_real_eip !35
  %285 = load i1, i1* %ZF_val, !mcsema_real_eip !36
  br i1 %285, label %block_0x235, label %block_0x249, !mcsema_real_eip !36

block_0x235:                                      ; preds = %block_0x221
  %286 = load i32, i32* inttoptr (i64 3104 to i32*), !mcsema_real_eip !37
  %287 = zext i32 %286 to i64, !mcsema_real_eip !37
  store i64 %287, i64* %RAX_val, !mcsema_real_eip !37
  %288 = load i32, i32* bitcast (%3* @data_0x390 to i32*), !mcsema_real_eip !38
  %289 = sub i32 %286, %288, !mcsema_real_eip !38
  %290 = xor i32 %289, %286, !mcsema_real_eip !38
  %291 = xor i32 %290, %288, !mcsema_real_eip !38
  %292 = and i32 %291, 16, !mcsema_real_eip !38
  %293 = icmp ne i32 %292, 0, !mcsema_real_eip !38
  store i1 %293, i1* %AF_val, !mcsema_real_eip !38
  %294 = trunc i32 %289 to i8, !mcsema_real_eip !38
  %295 = tail call i8 @llvm.ctpop.i8(i8 %294), !mcsema_real_eip !38
  %296 = and i8 %295, 1
  %297 = icmp eq i8 %296, 0
  store i1 %297, i1* %PF_val, !mcsema_real_eip !38
  %298 = icmp eq i32 %286, %288
  store i1 %298, i1* %ZF_val, !mcsema_real_eip !38
  %299 = icmp slt i32 %289, 0
  store i1 %299, i1* %SF_val, !mcsema_real_eip !38
  %300 = icmp ult i32 %286, %288, !mcsema_real_eip !38
  store i1 %300, i1* %CF_val, !mcsema_real_eip !38
  %301 = xor i32 %288, %286, !mcsema_real_eip !38
  %302 = and i32 %290, %301, !mcsema_real_eip !38
  %303 = icmp slt i32 %302, 0
  store i1 %303, i1* %OF_val, !mcsema_real_eip !38
  %304 = load i1, i1* %ZF_val, !mcsema_real_eip !39
  br i1 %304, label %block_0x25d, label %block_0x249, !mcsema_real_eip !39

block_0x249:                                      ; preds = %block_0x235, %block_0x221
  store i64 ptrtoint (%0* @data_0x2ce to i64), i64* %RDI_val, !mcsema_real_eip !33
  %305 = load i64, i64* %RAX_val, !mcsema_real_eip !40
  %306 = and i64 %305, -256, !mcsema_real_eip !40
  store i64 %306, i64* %RAX_val, !mcsema_real_eip !40
  %307 = load i64, i64* %RSI_val, !mcsema_real_eip !41
  %308 = load i64, i64* %RDX_val, !mcsema_real_eip !41
  %309 = load i64, i64* %RCX_val, !mcsema_real_eip !41
  %310 = load i64, i64* %R8_val, !mcsema_real_eip !41
  %311 = load i64, i64* %R9_val, !mcsema_real_eip !41
  %312 = load i64, i64* %RSP_val, !mcsema_real_eip !41
  %313 = inttoptr i64 %312 to i64*, !mcsema_real_eip !41
  %314 = load i64, i64* %313, !mcsema_real_eip !41
  %315 = add i64 %312, 8, !mcsema_real_eip !41
  %316 = inttoptr i64 %315 to i64*, !mcsema_real_eip !41
  %317 = load i64, i64* %316, !mcsema_real_eip !41
  %318 = add i64 %312, 16, !mcsema_real_eip !41
  %319 = inttoptr i64 %318 to i64*, !mcsema_real_eip !41
  %320 = load i64, i64* %319, !mcsema_real_eip !41
  %321 = add i64 %312, 24, !mcsema_real_eip !41
  %322 = inttoptr i64 %321 to i64*, !mcsema_real_eip !41
  %323 = load i64, i64* %322, !mcsema_real_eip !41
  %324 = add i64 %312, 32, !mcsema_real_eip !41
  %325 = inttoptr i64 %324 to i64*, !mcsema_real_eip !41
  %326 = load i64, i64* %325, !mcsema_real_eip !41
  %327 = add i64 %312, 40, !mcsema_real_eip !41
  %328 = inttoptr i64 %327 to i64*, !mcsema_real_eip !41
  %329 = load i64, i64* %328, !mcsema_real_eip !41
  %330 = add i64 %312, 48, !mcsema_real_eip !41
  %331 = inttoptr i64 %330 to i64*, !mcsema_real_eip !41
  %332 = load i64, i64* %331, !mcsema_real_eip !41
  %333 = add i64 %312, 56, !mcsema_real_eip !41
  %334 = inttoptr i64 %333 to i64*, !mcsema_real_eip !41
  %335 = load i64, i64* %334, !mcsema_real_eip !41
  %336 = add i64 %312, 64, !mcsema_real_eip !41
  %337 = inttoptr i64 %336 to i64*, !mcsema_real_eip !41
  %338 = load i64, i64* %337, !mcsema_real_eip !41
  %339 = add i64 %312, 72, !mcsema_real_eip !41
  %340 = inttoptr i64 %339 to i64*, !mcsema_real_eip !41
  %341 = load i64, i64* %340, !mcsema_real_eip !41
  %342 = tail call x86_64_sysvcc i64 @printf(i64 ptrtoint (%0* @data_0x2ce to i64), i64 %307, i64 %308, i64 %309, i64 %310, i64 %311, i64 %314, i64 %317, i64 %320, i64 %323, i64 %326, i64 %329, i64 %332, i64 %335, i64 %338, i64 %341), !mcsema_real_eip !41
  store i64 %342, i64* %RAX_val, !mcsema_real_eip !41
  %343 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  %344 = add i64 %343, -16, !mcsema_real_eip !42
  %345 = inttoptr i64 %344 to i64*, !mcsema_real_eip !42
  %346 = trunc i64 %342 to i32, !mcsema_real_eip !42
  %347 = bitcast i64* %345 to i32*
  store i32 %346, i32* %347, !mcsema_real_eip !42
  br label %block_0x25d, !mcsema_real_eip !37

block_0x190:                                      ; preds = %block_0x1fd, %block_0x189
  %348 = load i64, i64* %RBP_val, !mcsema_real_eip !43
  %349 = add i64 %348, -8, !mcsema_real_eip !43
  %350 = inttoptr i64 %349 to i64*, !mcsema_real_eip !43
  %351 = bitcast i64* %350 to i32*
  %352 = load i32, i32* %351, !mcsema_real_eip !43
  %353 = zext i32 %352 to i64, !mcsema_real_eip !43
  store i64 %353, i64* %RAX_val, !mcsema_real_eip !43
  %354 = sub i32 %352, %266, !mcsema_real_eip !32
  %355 = xor i32 %354, %352, !mcsema_real_eip !32
  %356 = xor i32 %355, %266, !mcsema_real_eip !32
  %357 = and i32 %356, 16, !mcsema_real_eip !32
  %358 = icmp ne i32 %357, 0, !mcsema_real_eip !32
  store i1 %358, i1* %AF_val, !mcsema_real_eip !32
  %359 = trunc i32 %354 to i8, !mcsema_real_eip !32
  %360 = tail call i8 @llvm.ctpop.i8(i8 %359), !mcsema_real_eip !32
  %361 = and i8 %360, 1
  %362 = icmp eq i8 %361, 0
  store i1 %362, i1* %PF_val, !mcsema_real_eip !32
  %363 = icmp eq i32 %352, %266
  store i1 %363, i1* %ZF_val, !mcsema_real_eip !32
  %364 = icmp slt i32 %354, 0
  store i1 %364, i1* %SF_val, !mcsema_real_eip !32
  %365 = icmp ult i32 %352, %266, !mcsema_real_eip !32
  store i1 %365, i1* %CF_val, !mcsema_real_eip !32
  %366 = xor i32 %266, %352, !mcsema_real_eip !32
  %367 = and i32 %355, %366, !mcsema_real_eip !32
  %368 = icmp slt i32 %367, 0
  store i1 %368, i1* %OF_val, !mcsema_real_eip !32
  %369 = load i1, i1* %SF_val, !mcsema_real_eip !44
  %tmp = xor i1 %369, %368
  br i1 %tmp, label %block_0x1a0, label %block_0x20b, !mcsema_real_eip !44

block_0x25d:                                      ; preds = %block_0x249, %block_0x235
  store i64 add (i64 ptrtoint (%0* @data_0x2ce to i64), i64 19), i64* %RDI_val, !mcsema_real_eip !45
  %370 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %371 = add i64 %370, -4, !mcsema_real_eip !46
  %372 = inttoptr i64 %371 to i64*, !mcsema_real_eip !46
  %373 = bitcast i64* %372 to i32*
  %374 = load i32, i32* %373, !mcsema_real_eip !46
  %uadd218 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %374, i32 1)
  %375 = extractvalue { i32, i1 } %uadd218, 0
  %376 = xor i32 %375, %374, !mcsema_real_eip !47
  %377 = and i32 %376, 16, !mcsema_real_eip !47
  %378 = icmp ne i32 %377, 0, !mcsema_real_eip !47
  store i1 %378, i1* %AF_val, !mcsema_real_eip !47
  %379 = icmp slt i32 %375, 0
  store i1 %379, i1* %SF_val, !mcsema_real_eip !47
  %380 = icmp eq i32 %375, 0, !mcsema_real_eip !47
  store i1 %380, i1* %ZF_val, !mcsema_real_eip !47
  %381 = xor i32 %374, -2147483648, !mcsema_real_eip !47
  %382 = and i32 %376, %381, !mcsema_real_eip !47
  %383 = icmp slt i32 %382, 0
  store i1 %383, i1* %OF_val, !mcsema_real_eip !47
  %384 = trunc i32 %375 to i8, !mcsema_real_eip !47
  %385 = tail call i8 @llvm.ctpop.i8(i8 %384), !mcsema_real_eip !47
  %386 = and i8 %385, 1
  %387 = icmp eq i8 %386, 0
  store i1 %387, i1* %PF_val, !mcsema_real_eip !47
  %388 = extractvalue { i32, i1 } %uadd218, 1
  store i1 %388, i1* %CF_val, !mcsema_real_eip !47
  %389 = zext i32 %375 to i64, !mcsema_real_eip !47
  store i64 %389, i64* %RAX_val, !mcsema_real_eip !47
  %390 = sext i32 %375 to i64, !mcsema_real_eip !48
  store i64 %390, i64* %RCX_val, !mcsema_real_eip !48
  %391 = shl nsw i64 %390, 2
  %392 = add i64 %391, ptrtoint (%2* @data_0x450 to i64), !mcsema_real_eip !49
  %393 = inttoptr i64 %392 to i64*, !mcsema_real_eip !49
  %394 = bitcast i64* %393 to i32*
  %395 = load i32, i32* %394, !mcsema_real_eip !49
  %396 = zext i32 %395 to i64, !mcsema_real_eip !49
  store i64 %396, i64* %RSI_val, !mcsema_real_eip !49
  %397 = load i64, i64* %RAX_val, !mcsema_real_eip !50
  %398 = and i64 %397, -256, !mcsema_real_eip !50
  store i64 %398, i64* %RAX_val, !mcsema_real_eip !50
  %399 = load i64, i64* %RDI_val, !mcsema_real_eip !51
  %400 = load i64, i64* %RDX_val, !mcsema_real_eip !51
  %401 = load i64, i64* %RCX_val, !mcsema_real_eip !51
  %402 = load i64, i64* %R8_val, !mcsema_real_eip !51
  %403 = load i64, i64* %R9_val, !mcsema_real_eip !51
  %404 = load i64, i64* %RSP_val, !mcsema_real_eip !51
  %405 = inttoptr i64 %404 to i64*, !mcsema_real_eip !51
  %406 = load i64, i64* %405, !mcsema_real_eip !51
  %407 = add i64 %404, 8, !mcsema_real_eip !51
  %408 = inttoptr i64 %407 to i64*, !mcsema_real_eip !51
  %409 = load i64, i64* %408, !mcsema_real_eip !51
  %410 = add i64 %404, 16, !mcsema_real_eip !51
  %411 = inttoptr i64 %410 to i64*, !mcsema_real_eip !51
  %412 = load i64, i64* %411, !mcsema_real_eip !51
  %413 = add i64 %404, 24, !mcsema_real_eip !51
  %414 = inttoptr i64 %413 to i64*, !mcsema_real_eip !51
  %415 = load i64, i64* %414, !mcsema_real_eip !51
  %416 = add i64 %404, 32, !mcsema_real_eip !51
  %417 = inttoptr i64 %416 to i64*, !mcsema_real_eip !51
  %418 = load i64, i64* %417, !mcsema_real_eip !51
  %419 = add i64 %404, 40, !mcsema_real_eip !51
  %420 = inttoptr i64 %419 to i64*, !mcsema_real_eip !51
  %421 = load i64, i64* %420, !mcsema_real_eip !51
  %422 = add i64 %404, 48, !mcsema_real_eip !51
  %423 = inttoptr i64 %422 to i64*, !mcsema_real_eip !51
  %424 = load i64, i64* %423, !mcsema_real_eip !51
  %425 = add i64 %404, 56, !mcsema_real_eip !51
  %426 = inttoptr i64 %425 to i64*, !mcsema_real_eip !51
  %427 = load i64, i64* %426, !mcsema_real_eip !51
  %428 = add i64 %404, 64, !mcsema_real_eip !51
  %429 = inttoptr i64 %428 to i64*, !mcsema_real_eip !51
  %430 = load i64, i64* %429, !mcsema_real_eip !51
  %431 = add i64 %404, 72, !mcsema_real_eip !51
  %432 = inttoptr i64 %431 to i64*, !mcsema_real_eip !51
  %433 = load i64, i64* %432, !mcsema_real_eip !51
  %434 = tail call x86_64_sysvcc i64 @printf(i64 %399, i64 %396, i64 %400, i64 %401, i64 %402, i64 %403, i64 %406, i64 %409, i64 %412, i64 %415, i64 %418, i64 %421, i64 %424, i64 %427, i64 %430, i64 %433), !mcsema_real_eip !51
  store i64 %434, i64* %RAX_val, !mcsema_real_eip !51
  %435 = load i64, i64* %RBP_val, !mcsema_real_eip !52
  %436 = add i64 %435, -20, !mcsema_real_eip !52
  %437 = inttoptr i64 %436 to i64*, !mcsema_real_eip !52
  %438 = trunc i64 %434 to i32, !mcsema_real_eip !52
  %439 = bitcast i64* %437 to i32*
  store i32 %438, i32* %439, !mcsema_real_eip !52
  %440 = load i64, i64* %RSP_val, !mcsema_real_eip !53
  %uadd219 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %440, i64 32)
  %441 = extractvalue { i64, i1 } %uadd219, 0
  %442 = xor i64 %441, %440, !mcsema_real_eip !53
  %443 = and i64 %442, 16, !mcsema_real_eip !53
  %444 = icmp ne i64 %443, 0, !mcsema_real_eip !53
  store i1 %444, i1* %AF_val, !mcsema_real_eip !53
  %445 = icmp slt i64 %441, 0
  store i1 %445, i1* %SF_val, !mcsema_real_eip !53
  %446 = icmp eq i64 %441, 0, !mcsema_real_eip !53
  store i1 %446, i1* %ZF_val, !mcsema_real_eip !53
  %447 = xor i64 %440, -9223372036854775808, !mcsema_real_eip !53
  %448 = and i64 %442, %447, !mcsema_real_eip !53
  %449 = icmp slt i64 %448, 0
  store i1 %449, i1* %OF_val, !mcsema_real_eip !53
  %450 = trunc i64 %441 to i8, !mcsema_real_eip !53
  %451 = tail call i8 @llvm.ctpop.i8(i8 %450), !mcsema_real_eip !53
  %452 = and i8 %451, 1
  %453 = icmp eq i8 %452, 0
  store i1 %453, i1* %PF_val, !mcsema_real_eip !53
  %454 = extractvalue { i64, i1 } %uadd219, 1
  store i1 %454, i1* %CF_val, !mcsema_real_eip !53
  store i64 %441, i64* %RSP_val, !mcsema_real_eip !53
  %455 = inttoptr i64 %441 to i64*, !mcsema_real_eip !54
  %456 = load i64, i64* %455, !mcsema_real_eip !54
  store i64 %456, i64* %RBP_val, !mcsema_real_eip !54
  %457 = add i64 %441, 16, !mcsema_real_eip !55
  store i64 %457, i64* %RSP_val, !mcsema_real_eip !55
  %458 = load i64, i64* %RAX_val, !mcsema_real_eip !55
  store i64 %458, i64* %RAX, !mcsema_real_eip !55
  %459 = load i64, i64* %RBX_val, !mcsema_real_eip !55
  store i64 %459, i64* %RBX, !mcsema_real_eip !55
  %460 = load i64, i64* %RCX_val, !mcsema_real_eip !55
  store i64 %460, i64* %RCX, !mcsema_real_eip !55
  %461 = load i64, i64* %RDX_val, !mcsema_real_eip !55
  store i64 %461, i64* %RDX, !mcsema_real_eip !55
  %462 = load i64, i64* %RSI_val, !mcsema_real_eip !55
  store i64 %462, i64* %RSI, !mcsema_real_eip !55
  %463 = load i64, i64* %RDI_val, !mcsema_real_eip !55
  store i64 %463, i64* %RDI, !mcsema_real_eip !55
  %464 = load i64, i64* %RSP_val, !mcsema_real_eip !55
  store i64 %464, i64* %RSP, !mcsema_real_eip !55
  %465 = load i64, i64* %RBP_val, !mcsema_real_eip !55
  store i64 %465, i64* %RBP, !mcsema_real_eip !55
  %466 = load i64, i64* %R8_val, !mcsema_real_eip !55
  store i64 %466, i64* %R8, !mcsema_real_eip !55
  %467 = load i64, i64* %R9_val, !mcsema_real_eip !55
  store i64 %467, i64* %R9, !mcsema_real_eip !55
  %468 = load i64, i64* %R10_val, !mcsema_real_eip !55
  store i64 %468, i64* %R10, !mcsema_real_eip !55
  %469 = load i64, i64* %R11_val, !mcsema_real_eip !55
  store i64 %469, i64* %R11, !mcsema_real_eip !55
  %470 = load i64, i64* %R12_val, !mcsema_real_eip !55
  store i64 %470, i64* %R12, !mcsema_real_eip !55
  %471 = load i64, i64* %R13_val, !mcsema_real_eip !55
  store i64 %471, i64* %R13, !mcsema_real_eip !55
  %472 = load i64, i64* %R14_val, !mcsema_real_eip !55
  store i64 %472, i64* %R14, !mcsema_real_eip !55
  %473 = load i64, i64* %R15_val, !mcsema_real_eip !55
  store i64 %473, i64* %R15, !mcsema_real_eip !55
  %474 = load i64, i64* %RIP_val, !mcsema_real_eip !55
  store i64 %474, i64* %RIP, !mcsema_real_eip !55
  %475 = load i1, i1* %CF_val, !mcsema_real_eip !55
  store i1 %475, i1* %CF, align 1, !mcsema_real_eip !55
  %476 = load i1, i1* %PF_val, !mcsema_real_eip !55
  store i1 %476, i1* %PF, align 1, !mcsema_real_eip !55
  %477 = load i1, i1* %AF_val, !mcsema_real_eip !55
  store i1 %477, i1* %AF, align 1, !mcsema_real_eip !55
  %478 = load i1, i1* %ZF_val, !mcsema_real_eip !55
  store i1 %478, i1* %ZF, align 1, !mcsema_real_eip !55
  %479 = load i1, i1* %SF_val, !mcsema_real_eip !55
  store i1 %479, i1* %SF, align 1, !mcsema_real_eip !55
  %480 = load i1, i1* %OF_val, !mcsema_real_eip !55
  store i1 %480, i1* %OF, align 1, !mcsema_real_eip !55
  %481 = load i1, i1* %DF_val, !mcsema_real_eip !55
  store i1 %481, i1* %DF, align 1, !mcsema_real_eip !55
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !55
  %482 = load i1, i1* %FPU_B_val, !mcsema_real_eip !55
  store i1 %482, i1* %FPU_B, align 1, !mcsema_real_eip !55
  %483 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !55
  store i1 %483, i1* %FPU_C3, align 1, !mcsema_real_eip !55
  %484 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !55
  store i3 %484, i3* %FPU_TOP, align 1, !mcsema_real_eip !55
  %485 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !55
  store i1 %485, i1* %FPU_C2, align 1, !mcsema_real_eip !55
  %486 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !55
  store i1 %486, i1* %FPU_C1, align 1, !mcsema_real_eip !55
  %487 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !55
  store i1 %487, i1* %FPU_C0, align 1, !mcsema_real_eip !55
  %488 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !55
  store i1 %488, i1* %FPU_ES, align 1, !mcsema_real_eip !55
  %489 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !55
  store i1 %489, i1* %FPU_SF, align 1, !mcsema_real_eip !55
  %490 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !55
  store i1 %490, i1* %FPU_PE, align 1, !mcsema_real_eip !55
  %491 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !55
  store i1 %491, i1* %FPU_UE, align 1, !mcsema_real_eip !55
  %492 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !55
  store i1 %492, i1* %FPU_OE, align 1, !mcsema_real_eip !55
  %493 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !55
  store i1 %493, i1* %FPU_ZE, align 1, !mcsema_real_eip !55
  %494 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !55
  store i1 %494, i1* %FPU_DE, align 1, !mcsema_real_eip !55
  %495 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !55
  store i1 %495, i1* %FPU_IE, align 1, !mcsema_real_eip !55
  %496 = load i1, i1* %FPU_X_val, !mcsema_real_eip !55
  store i1 %496, i1* %FPU_X, align 1, !mcsema_real_eip !55
  %497 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !55
  store i2 %497, i2* %FPU_RC, align 1, !mcsema_real_eip !55
  %498 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !55
  store i2 %498, i2* %FPU_PC, align 1, !mcsema_real_eip !55
  %499 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !55
  store i1 %499, i1* %FPU_PM, align 1, !mcsema_real_eip !55
  %500 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !55
  store i1 %500, i1* %FPU_UM, align 1, !mcsema_real_eip !55
  %501 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !55
  store i1 %501, i1* %FPU_OM, align 1, !mcsema_real_eip !55
  %502 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !55
  store i1 %502, i1* %FPU_ZM, align 1, !mcsema_real_eip !55
  %503 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !55
  store i1 %503, i1* %FPU_DM, align 1, !mcsema_real_eip !55
  %504 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !55
  store i1 %504, i1* %FPU_IM, align 1, !mcsema_real_eip !55
  %505 = load i64, i64* %53, align 4
  store i64 %505, i64* %52, align 4
  %506 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !55
  store i16 %506, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !55
  %507 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !55
  store i64 %507, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !55
  %508 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !55
  store i16 %508, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !55
  %509 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !55
  store i64 %509, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !55
  %510 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !55
  store i11 %510, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !55
  %511 = load i128, i128* %XMM0_val, !mcsema_real_eip !55
  store i128 %511, i128* %XMM0, align 1, !mcsema_real_eip !55
  %512 = load i128, i128* %XMM1_val, !mcsema_real_eip !55
  store i128 %512, i128* %XMM1, align 1, !mcsema_real_eip !55
  %513 = load i128, i128* %XMM2_val, !mcsema_real_eip !55
  store i128 %513, i128* %XMM2, align 1, !mcsema_real_eip !55
  %514 = load i128, i128* %XMM3_val, !mcsema_real_eip !55
  store i128 %514, i128* %XMM3, align 1, !mcsema_real_eip !55
  %515 = load i128, i128* %XMM4_val, !mcsema_real_eip !55
  store i128 %515, i128* %XMM4, align 1, !mcsema_real_eip !55
  %516 = load i128, i128* %XMM5_val, !mcsema_real_eip !55
  store i128 %516, i128* %XMM5, align 1, !mcsema_real_eip !55
  %517 = load i128, i128* %XMM6_val, !mcsema_real_eip !55
  store i128 %517, i128* %XMM6, align 1, !mcsema_real_eip !55
  %518 = load i128, i128* %XMM7_val, !mcsema_real_eip !55
  store i128 %518, i128* %XMM7, align 1, !mcsema_real_eip !55
  %519 = load i128, i128* %XMM8_val, !mcsema_real_eip !55
  store i128 %519, i128* %XMM8, align 1, !mcsema_real_eip !55
  %520 = load i128, i128* %XMM9_val, !mcsema_real_eip !55
  store i128 %520, i128* %XMM9, align 1, !mcsema_real_eip !55
  %521 = load i128, i128* %XMM10_val, !mcsema_real_eip !55
  store i128 %521, i128* %XMM10, align 1, !mcsema_real_eip !55
  %522 = load i128, i128* %XMM11_val, !mcsema_real_eip !55
  store i128 %522, i128* %XMM11, align 1, !mcsema_real_eip !55
  %523 = load i128, i128* %XMM12_val, !mcsema_real_eip !55
  store i128 %523, i128* %XMM12, align 1, !mcsema_real_eip !55
  %524 = load i128, i128* %XMM13_val, !mcsema_real_eip !55
  store i128 %524, i128* %XMM13, align 1, !mcsema_real_eip !55
  %525 = load i128, i128* %XMM14_val, !mcsema_real_eip !55
  store i128 %525, i128* %XMM14, align 1, !mcsema_real_eip !55
  %526 = load i128, i128* %XMM15_val, !mcsema_real_eip !55
  store i128 %526, i128* %XMM15, align 1, !mcsema_real_eip !55
  %527 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !55
  store i64 %527, i64* %STACK_BASE, align 1, !mcsema_real_eip !55
  %528 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !55
  store i64 %528, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !55
  ret void, !mcsema_real_eip !55

block_0x1a0:                                      ; preds = %block_0x190
  %529 = load i64, i64* %RBP_val, !mcsema_real_eip !56
  %530 = add i64 %529, -8, !mcsema_real_eip !56
  %531 = inttoptr i64 %530 to i64*, !mcsema_real_eip !56
  %532 = bitcast i64* %531 to i32*
  %533 = load i32, i32* %532, !mcsema_real_eip !56
  %534 = sext i32 %533 to i64, !mcsema_real_eip !56
  store i64 %534, i64* %RAX_val, !mcsema_real_eip !56
  %535 = shl nsw i64 %534, 2
  %536 = add i64 %535, ptrtoint (%2* @data_0x450 to i64), !mcsema_real_eip !57
  %537 = inttoptr i64 %536 to i64*, !mcsema_real_eip !57
  %538 = bitcast i64* %537 to i32*
  %539 = load i32, i32* %538, !mcsema_real_eip !57
  %540 = zext i32 %539 to i64, !mcsema_real_eip !57
  store i64 %540, i64* %RCX_val, !mcsema_real_eip !57
  %541 = load i64, i64* %RBP_val, !mcsema_real_eip !58
  %542 = add i64 %541, -8, !mcsema_real_eip !58
  %543 = inttoptr i64 %542 to i64*, !mcsema_real_eip !58
  %544 = bitcast i64* %543 to i32*
  %545 = load i32, i32* %544, !mcsema_real_eip !58
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %545, i32 1)
  %546 = extractvalue { i32, i1 } %uadd, 0
  %547 = xor i32 %546, %545, !mcsema_real_eip !59
  %548 = and i32 %547, 16, !mcsema_real_eip !59
  %549 = icmp ne i32 %548, 0, !mcsema_real_eip !59
  store i1 %549, i1* %AF_val, !mcsema_real_eip !59
  %550 = icmp slt i32 %546, 0
  store i1 %550, i1* %SF_val, !mcsema_real_eip !59
  %551 = icmp eq i32 %546, 0, !mcsema_real_eip !59
  store i1 %551, i1* %ZF_val, !mcsema_real_eip !59
  %552 = xor i32 %545, -2147483648, !mcsema_real_eip !59
  %553 = and i32 %547, %552, !mcsema_real_eip !59
  %554 = icmp slt i32 %553, 0
  store i1 %554, i1* %OF_val, !mcsema_real_eip !59
  %555 = trunc i32 %546 to i8, !mcsema_real_eip !59
  %556 = tail call i8 @llvm.ctpop.i8(i8 %555), !mcsema_real_eip !59
  %557 = and i8 %556, 1
  %558 = icmp eq i8 %557, 0
  store i1 %558, i1* %PF_val, !mcsema_real_eip !59
  %559 = extractvalue { i32, i1 } %uadd, 1
  store i1 %559, i1* %CF_val, !mcsema_real_eip !59
  %560 = zext i32 %546 to i64, !mcsema_real_eip !59
  store i64 %560, i64* %RDX_val, !mcsema_real_eip !59
  %561 = sext i32 %546 to i64, !mcsema_real_eip !60
  store i64 %561, i64* %RAX_val, !mcsema_real_eip !60
  %562 = shl nsw i64 %561, 2
  %563 = add i64 %562, ptrtoint (%2* @data_0x450 to i64), !mcsema_real_eip !61
  %564 = inttoptr i64 %563 to i64*, !mcsema_real_eip !61
  %565 = load i64, i64* %RCX_val, !mcsema_real_eip !61
  %566 = trunc i64 %565 to i32, !mcsema_real_eip !61
  %567 = bitcast i64* %564 to i32*
  %568 = load i32, i32* %567, !mcsema_real_eip !61
  %569 = sub i32 %566, %568, !mcsema_real_eip !61
  %570 = xor i32 %569, %566, !mcsema_real_eip !61
  %571 = xor i32 %570, %568, !mcsema_real_eip !61
  %572 = and i32 %571, 16, !mcsema_real_eip !61
  %573 = icmp ne i32 %572, 0, !mcsema_real_eip !61
  store i1 %573, i1* %AF_val, !mcsema_real_eip !61
  %574 = trunc i32 %569 to i8, !mcsema_real_eip !61
  %575 = tail call i8 @llvm.ctpop.i8(i8 %574), !mcsema_real_eip !61
  %576 = and i8 %575, 1
  %577 = icmp eq i8 %576, 0
  store i1 %577, i1* %PF_val, !mcsema_real_eip !61
  %578 = icmp eq i32 %566, %568
  store i1 %578, i1* %ZF_val, !mcsema_real_eip !61
  %579 = icmp slt i32 %569, 0
  store i1 %579, i1* %SF_val, !mcsema_real_eip !61
  %580 = icmp ult i32 %566, %568, !mcsema_real_eip !61
  store i1 %580, i1* %CF_val, !mcsema_real_eip !61
  %581 = xor i32 %566, %568, !mcsema_real_eip !61
  %582 = and i32 %570, %581, !mcsema_real_eip !61
  %583 = icmp slt i32 %582, 0
  store i1 %583, i1* %OF_val, !mcsema_real_eip !61
  %584 = load i1, i1* %SF_val, !mcsema_real_eip !62
  %585 = xor i1 %584, %583
  %586 = load i1, i1* %ZF_val, !mcsema_real_eip !62
  %587 = or i1 %586, %585, !mcsema_real_eip !62
  br i1 %587, label %block_0x1fd, label %block_0x1c1, !mcsema_real_eip !62

block_0x20b:                                      ; preds = %block_0x190
  %588 = load i32, i32* bitcast (%5* @data_0x460 to i32*), !mcsema_real_eip !63
  %589 = add i32 %588, -1
  %590 = xor i32 %589, %588, !mcsema_real_eip !64
  %591 = and i32 %590, 16, !mcsema_real_eip !64
  %592 = icmp ne i32 %591, 0, !mcsema_real_eip !64
  store i1 %592, i1* %AF_val, !mcsema_real_eip !64
  %593 = trunc i32 %589 to i8, !mcsema_real_eip !64
  %594 = tail call i8 @llvm.ctpop.i8(i8 %593), !mcsema_real_eip !64
  %595 = and i8 %594, 1
  %596 = icmp eq i8 %595, 0
  store i1 %596, i1* %PF_val, !mcsema_real_eip !64
  %597 = icmp eq i32 %589, 0, !mcsema_real_eip !64
  store i1 %597, i1* %ZF_val, !mcsema_real_eip !64
  %598 = icmp slt i32 %589, 0
  store i1 %598, i1* %SF_val, !mcsema_real_eip !64
  %599 = icmp eq i32 %588, 0
  store i1 %599, i1* %CF_val, !mcsema_real_eip !64
  %600 = and i32 %590, %588, !mcsema_real_eip !64
  %601 = icmp slt i32 %600, 0
  store i1 %601, i1* %OF_val, !mcsema_real_eip !64
  %602 = zext i32 %589 to i64, !mcsema_real_eip !64
  store i64 %602, i64* %RAX_val, !mcsema_real_eip !64
  br label %block_0x17b, !mcsema_real_eip !65

block_0x1c1:                                      ; preds = %block_0x1a0
  %603 = load i64, i64* %RBP_val, !mcsema_real_eip !66
  %604 = add i64 %603, -8, !mcsema_real_eip !66
  %605 = inttoptr i64 %604 to i64*, !mcsema_real_eip !66
  %606 = bitcast i64* %605 to i32*
  %607 = load i32, i32* %606, !mcsema_real_eip !66
  %608 = sext i32 %607 to i64, !mcsema_real_eip !66
  store i64 %608, i64* %RAX_val, !mcsema_real_eip !66
  %609 = shl nsw i64 %608, 2
  %610 = add i64 %609, ptrtoint (%2* @data_0x450 to i64), !mcsema_real_eip !67
  %611 = inttoptr i64 %610 to i64*, !mcsema_real_eip !67
  %612 = bitcast i64* %611 to i32*
  %613 = load i32, i32* %612, !mcsema_real_eip !67
  %614 = zext i32 %613 to i64, !mcsema_real_eip !67
  store i64 %614, i64* %RCX_val, !mcsema_real_eip !67
  %615 = load i64, i64* %RBP_val, !mcsema_real_eip !68
  %616 = add i64 %615, -12, !mcsema_real_eip !68
  %617 = inttoptr i64 %616 to i64*, !mcsema_real_eip !68
  %618 = bitcast i64* %617 to i32*
  store i32 %613, i32* %618, !mcsema_real_eip !68
  %619 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  %620 = add i64 %619, -8, !mcsema_real_eip !69
  %621 = inttoptr i64 %620 to i64*, !mcsema_real_eip !69
  %622 = bitcast i64* %621 to i32*
  %623 = load i32, i32* %622, !mcsema_real_eip !69
  %uadd214 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %623, i32 1)
  %624 = extractvalue { i32, i1 } %uadd214, 0
  %625 = xor i32 %624, %623, !mcsema_real_eip !70
  %626 = and i32 %625, 16, !mcsema_real_eip !70
  %627 = icmp ne i32 %626, 0, !mcsema_real_eip !70
  store i1 %627, i1* %AF_val, !mcsema_real_eip !70
  %628 = icmp slt i32 %624, 0
  store i1 %628, i1* %SF_val, !mcsema_real_eip !70
  %629 = icmp eq i32 %624, 0, !mcsema_real_eip !70
  store i1 %629, i1* %ZF_val, !mcsema_real_eip !70
  %630 = xor i32 %623, -2147483648, !mcsema_real_eip !70
  %631 = and i32 %625, %630, !mcsema_real_eip !70
  %632 = icmp slt i32 %631, 0
  store i1 %632, i1* %OF_val, !mcsema_real_eip !70
  %633 = trunc i32 %624 to i8, !mcsema_real_eip !70
  %634 = tail call i8 @llvm.ctpop.i8(i8 %633), !mcsema_real_eip !70
  %635 = and i8 %634, 1
  %636 = icmp eq i8 %635, 0
  store i1 %636, i1* %PF_val, !mcsema_real_eip !70
  %637 = extractvalue { i32, i1 } %uadd214, 1
  store i1 %637, i1* %CF_val, !mcsema_real_eip !70
  %638 = zext i32 %624 to i64, !mcsema_real_eip !70
  store i64 %638, i64* %RCX_val, !mcsema_real_eip !70
  %639 = sext i32 %624 to i64, !mcsema_real_eip !71
  store i64 %639, i64* %RAX_val, !mcsema_real_eip !71
  %640 = shl nsw i64 %639, 2
  %641 = add i64 %640, ptrtoint (%2* @data_0x450 to i64), !mcsema_real_eip !72
  %642 = inttoptr i64 %641 to i64*, !mcsema_real_eip !72
  %643 = bitcast i64* %642 to i32*
  %644 = load i32, i32* %643, !mcsema_real_eip !72
  %645 = zext i32 %644 to i64, !mcsema_real_eip !72
  store i64 %645, i64* %RCX_val, !mcsema_real_eip !72
  %646 = load i64, i64* %RBP_val, !mcsema_real_eip !73
  %647 = add i64 %646, -8, !mcsema_real_eip !73
  %648 = inttoptr i64 %647 to i64*, !mcsema_real_eip !73
  %649 = bitcast i64* %648 to i32*
  %650 = load i32, i32* %649, !mcsema_real_eip !73
  %651 = sext i32 %650 to i64, !mcsema_real_eip !73
  store i64 %651, i64* %RAX_val, !mcsema_real_eip !73
  %652 = shl nsw i64 %651, 2
  %653 = add i64 %652, ptrtoint (%2* @data_0x450 to i64), !mcsema_real_eip !74
  %654 = inttoptr i64 %653 to i64*, !mcsema_real_eip !74
  %655 = load i64, i64* %RCX_val, !mcsema_real_eip !74
  %656 = trunc i64 %655 to i32, !mcsema_real_eip !74
  %657 = bitcast i64* %654 to i32*
  store i32 %656, i32* %657, !mcsema_real_eip !74
  %658 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %659 = add i64 %658, -12, !mcsema_real_eip !75
  %660 = inttoptr i64 %659 to i64*, !mcsema_real_eip !75
  %661 = bitcast i64* %660 to i32*
  %662 = load i32, i32* %661, !mcsema_real_eip !75
  %663 = zext i32 %662 to i64, !mcsema_real_eip !75
  store i64 %663, i64* %RCX_val, !mcsema_real_eip !75
  %664 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %665 = add i64 %664, -8, !mcsema_real_eip !76
  %666 = inttoptr i64 %665 to i64*, !mcsema_real_eip !76
  %667 = bitcast i64* %666 to i32*
  %668 = load i32, i32* %667, !mcsema_real_eip !76
  %uadd215 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %668, i32 1)
  %669 = extractvalue { i32, i1 } %uadd215, 0
  %670 = xor i32 %669, %668, !mcsema_real_eip !77
  %671 = and i32 %670, 16, !mcsema_real_eip !77
  %672 = icmp ne i32 %671, 0, !mcsema_real_eip !77
  store i1 %672, i1* %AF_val, !mcsema_real_eip !77
  %673 = icmp slt i32 %669, 0
  store i1 %673, i1* %SF_val, !mcsema_real_eip !77
  %674 = icmp eq i32 %669, 0, !mcsema_real_eip !77
  store i1 %674, i1* %ZF_val, !mcsema_real_eip !77
  %675 = xor i32 %668, -2147483648, !mcsema_real_eip !77
  %676 = and i32 %670, %675, !mcsema_real_eip !77
  %677 = icmp slt i32 %676, 0
  store i1 %677, i1* %OF_val, !mcsema_real_eip !77
  %678 = trunc i32 %669 to i8, !mcsema_real_eip !77
  %679 = tail call i8 @llvm.ctpop.i8(i8 %678), !mcsema_real_eip !77
  %680 = and i8 %679, 1
  %681 = icmp eq i8 %680, 0
  store i1 %681, i1* %PF_val, !mcsema_real_eip !77
  %682 = extractvalue { i32, i1 } %uadd215, 1
  store i1 %682, i1* %CF_val, !mcsema_real_eip !77
  %683 = zext i32 %669 to i64, !mcsema_real_eip !77
  store i64 %683, i64* %RDX_val, !mcsema_real_eip !77
  %684 = sext i32 %669 to i64, !mcsema_real_eip !78
  store i64 %684, i64* %RAX_val, !mcsema_real_eip !78
  %685 = shl nsw i64 %684, 2
  %686 = add i64 %685, ptrtoint (%2* @data_0x450 to i64), !mcsema_real_eip !79
  %687 = inttoptr i64 %686 to i64*, !mcsema_real_eip !79
  %688 = load i64, i64* %RCX_val, !mcsema_real_eip !79
  %689 = trunc i64 %688 to i32, !mcsema_real_eip !79
  %690 = bitcast i64* %687 to i32*
  store i32 %689, i32* %690, !mcsema_real_eip !79
  br label %block_0x1fd

block_0x1fd:                                      ; preds = %block_0x1c1, %block_0x1a0
  %691 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %692 = add i64 %691, -8, !mcsema_real_eip !80
  %693 = inttoptr i64 %692 to i64*, !mcsema_real_eip !80
  %694 = bitcast i64* %693 to i32*
  %695 = load i32, i32* %694, !mcsema_real_eip !80
  %uadd216 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %695, i32 1)
  %696 = extractvalue { i32, i1 } %uadd216, 0
  %697 = xor i32 %696, %695, !mcsema_real_eip !81
  %698 = and i32 %697, 16, !mcsema_real_eip !81
  %699 = icmp ne i32 %698, 0, !mcsema_real_eip !81
  store i1 %699, i1* %AF_val, !mcsema_real_eip !81
  %700 = icmp slt i32 %696, 0
  store i1 %700, i1* %SF_val, !mcsema_real_eip !81
  %701 = icmp eq i32 %696, 0, !mcsema_real_eip !81
  store i1 %701, i1* %ZF_val, !mcsema_real_eip !81
  %702 = xor i32 %695, -2147483648, !mcsema_real_eip !81
  %703 = and i32 %697, %702, !mcsema_real_eip !81
  %704 = icmp slt i32 %703, 0
  store i1 %704, i1* %OF_val, !mcsema_real_eip !81
  %705 = trunc i32 %696 to i8, !mcsema_real_eip !81
  %706 = tail call i8 @llvm.ctpop.i8(i8 %705), !mcsema_real_eip !81
  %707 = and i8 %706, 1
  %708 = icmp eq i8 %707, 0
  store i1 %708, i1* %PF_val, !mcsema_real_eip !81
  %709 = extractvalue { i32, i1 } %uadd216, 1
  store i1 %709, i1* %CF_val, !mcsema_real_eip !81
  %710 = zext i32 %696 to i64, !mcsema_real_eip !81
  store i64 %710, i64* %RAX_val, !mcsema_real_eip !81
  %711 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %712 = add i64 %711, -8, !mcsema_real_eip !82
  %713 = inttoptr i64 %712 to i64*, !mcsema_real_eip !82
  %714 = bitcast i64* %713 to i32*
  store i32 %696, i32* %714, !mcsema_real_eip !82
  br label %block_0x190, !mcsema_real_eip !83
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_60(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !84
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !84
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !84
  %XMM15_val = alloca i128, !mcsema_real_eip !84
  %XMM14_val = alloca i128, !mcsema_real_eip !84
  %XMM13_val = alloca i128, !mcsema_real_eip !84
  %XMM12_val = alloca i128, !mcsema_real_eip !84
  %XMM11_val = alloca i128, !mcsema_real_eip !84
  %XMM10_val = alloca i128, !mcsema_real_eip !84
  %XMM9_val = alloca i128, !mcsema_real_eip !84
  %XMM8_val = alloca i128, !mcsema_real_eip !84
  %XMM7_val = alloca i128, !mcsema_real_eip !84
  %XMM6_val = alloca i128, !mcsema_real_eip !84
  %XMM5_val = alloca i128, !mcsema_real_eip !84
  %XMM4_val = alloca i128, !mcsema_real_eip !84
  %XMM3_val = alloca i128, !mcsema_real_eip !84
  %XMM2_val = alloca i128, !mcsema_real_eip !84
  %XMM1_val = alloca i128, !mcsema_real_eip !84
  %XMM0_val = alloca i128, !mcsema_real_eip !84
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !84
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !84
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !84
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !84
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !84
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !84
  %FPU_IM_val = alloca i1, !mcsema_real_eip !84
  %FPU_DM_val = alloca i1, !mcsema_real_eip !84
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !84
  %FPU_OM_val = alloca i1, !mcsema_real_eip !84
  %FPU_UM_val = alloca i1, !mcsema_real_eip !84
  %FPU_PM_val = alloca i1, !mcsema_real_eip !84
  %FPU_PC_val = alloca i2, !mcsema_real_eip !84
  %FPU_RC_val = alloca i2, !mcsema_real_eip !84
  %FPU_X_val = alloca i1, !mcsema_real_eip !84
  %FPU_IE_val = alloca i1, !mcsema_real_eip !84
  %FPU_DE_val = alloca i1, !mcsema_real_eip !84
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !84
  %FPU_OE_val = alloca i1, !mcsema_real_eip !84
  %FPU_UE_val = alloca i1, !mcsema_real_eip !84
  %FPU_PE_val = alloca i1, !mcsema_real_eip !84
  %FPU_SF_val = alloca i1, !mcsema_real_eip !84
  %FPU_ES_val = alloca i1, !mcsema_real_eip !84
  %FPU_C0_val = alloca i1, !mcsema_real_eip !84
  %FPU_C1_val = alloca i1, !mcsema_real_eip !84
  %FPU_C2_val = alloca i1, !mcsema_real_eip !84
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !84
  %FPU_C3_val = alloca i1, !mcsema_real_eip !84
  %FPU_B_val = alloca i1, !mcsema_real_eip !84
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !84
  %DF_val = alloca i1, !mcsema_real_eip !84
  %OF_val = alloca i1, !mcsema_real_eip !84
  %SF_val = alloca i1, !mcsema_real_eip !84
  %CF_val = alloca i1, !mcsema_real_eip !84
  %AF_val = alloca i1, !mcsema_real_eip !84
  %PF_val = alloca i1, !mcsema_real_eip !84
  %ZF_val = alloca i1, !mcsema_real_eip !84
  %RIP_val = alloca i64, !mcsema_real_eip !84
  %R14_val = alloca i64, !mcsema_real_eip !84
  %R13_val = alloca i64, !mcsema_real_eip !84
  %R12_val = alloca i64, !mcsema_real_eip !84
  %R11_val = alloca i64, !mcsema_real_eip !84
  %R10_val = alloca i64, !mcsema_real_eip !84
  %R9_val = alloca i64, !mcsema_real_eip !84
  %R8_val = alloca i64, !mcsema_real_eip !84
  %RSP_val = alloca i64, !mcsema_real_eip !84
  %RBP_val = alloca i64, !mcsema_real_eip !84
  %RDI_val = alloca i64, !mcsema_real_eip !84
  %RSI_val = alloca i64, !mcsema_real_eip !84
  %RDX_val = alloca i64, !mcsema_real_eip !84
  %RCX_val = alloca i64, !mcsema_real_eip !84
  %RBX_val = alloca i64, !mcsema_real_eip !84
  %RAX_val = alloca i64, !mcsema_real_eip !84
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !84
  %1 = load i64, i64* %RAX, !mcsema_real_eip !84
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !84
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !84
  %2 = load i64, i64* %RBX, !mcsema_real_eip !84
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !84
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !84
  %3 = load i64, i64* %RCX, !mcsema_real_eip !84
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !84
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !84
  %4 = load i64, i64* %RDX, !mcsema_real_eip !84
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !84
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !84
  %5 = load i64, i64* %RSI, !mcsema_real_eip !84
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !84
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !84
  %6 = load i64, i64* %RDI, !mcsema_real_eip !84
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !84
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !84
  %7 = load i64, i64* %RSP, !mcsema_real_eip !84
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !84
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !84
  %8 = load i64, i64* %RBP, !mcsema_real_eip !84
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !84
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !84
  %9 = load i64, i64* %R8, !mcsema_real_eip !84
  store i64 %9, i64* %R8_val, !mcsema_real_eip !84
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !84
  %10 = load i64, i64* %R9, !mcsema_real_eip !84
  store i64 %10, i64* %R9_val, !mcsema_real_eip !84
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !84
  %11 = load i64, i64* %R10, !mcsema_real_eip !84
  store i64 %11, i64* %R10_val, !mcsema_real_eip !84
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !84
  %12 = load i64, i64* %R11, !mcsema_real_eip !84
  store i64 %12, i64* %R11_val, !mcsema_real_eip !84
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !84
  %13 = load i64, i64* %R12, !mcsema_real_eip !84
  store i64 %13, i64* %R12_val, !mcsema_real_eip !84
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !84
  %14 = load i64, i64* %R13, !mcsema_real_eip !84
  store i64 %14, i64* %R13_val, !mcsema_real_eip !84
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !84
  %15 = load i64, i64* %R14, !mcsema_real_eip !84
  store i64 %15, i64* %R14_val, !mcsema_real_eip !84
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !84
  %16 = load i64, i64* %R15, !mcsema_real_eip !84
  store i64 %16, i64* %R15_val, !mcsema_real_eip !84
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !84
  %17 = load i64, i64* %RIP, !mcsema_real_eip !84
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !84
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !84
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !84
  store i1 %18, i1* %CF_val, !mcsema_real_eip !84
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !84
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !84
  store i1 %19, i1* %PF_val, !mcsema_real_eip !84
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !84
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !84
  store i1 %20, i1* %AF_val, !mcsema_real_eip !84
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !84
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !84
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !84
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !84
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !84
  store i1 %22, i1* %SF_val, !mcsema_real_eip !84
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !84
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !84
  store i1 %23, i1* %OF_val, !mcsema_real_eip !84
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !84
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !84
  store i1 %24, i1* %DF_val, !mcsema_real_eip !84
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !84
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !84
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !84
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !84
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !84
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !84
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !84
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !84
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !84
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !84
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !84
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !84
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !84
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !84
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !84
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !84
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !84
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !84
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !84
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !84
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !84
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !84
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !84
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !84
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !84
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !84
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !84
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !84
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !84
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !84
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !84
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !84
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !84
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !84
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !84
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !84
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !84
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !84
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !84
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !84
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !84
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !84
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !84
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !84
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !84
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !84
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !84
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !84
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !84
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !84
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !84
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !84
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !84
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !84
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !84
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !84
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !84
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !84
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !84
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !84
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !84
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !84
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !84
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !84
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !84
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !84
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !84
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !84
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !84
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !84
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !84
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !84
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !84
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !84
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !84
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !84
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !84
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !84
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !84
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !84
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !84
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !84
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !84
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !84
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !84
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !84
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !84
  %59 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !84
  store i11 %59, i11* %FPU_FOPCODE_val, !mcsema_real_eip !84
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !84
  %60 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !84
  store i128 %60, i128* %XMM0_val, !mcsema_real_eip !84
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !84
  %61 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !84
  store i128 %61, i128* %XMM1_val, !mcsema_real_eip !84
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !84
  %62 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !84
  store i128 %62, i128* %XMM2_val, !mcsema_real_eip !84
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !84
  %63 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !84
  store i128 %63, i128* %XMM3_val, !mcsema_real_eip !84
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !84
  %64 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !84
  store i128 %64, i128* %XMM4_val, !mcsema_real_eip !84
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !84
  %65 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !84
  store i128 %65, i128* %XMM5_val, !mcsema_real_eip !84
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !84
  %66 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !84
  store i128 %66, i128* %XMM6_val, !mcsema_real_eip !84
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !84
  %67 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !84
  store i128 %67, i128* %XMM7_val, !mcsema_real_eip !84
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !84
  %68 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !84
  store i128 %68, i128* %XMM8_val, !mcsema_real_eip !84
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !84
  %69 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !84
  store i128 %69, i128* %XMM9_val, !mcsema_real_eip !84
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !84
  %70 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !84
  store i128 %70, i128* %XMM10_val, !mcsema_real_eip !84
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !84
  %71 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !84
  store i128 %71, i128* %XMM11_val, !mcsema_real_eip !84
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !84
  %72 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !84
  store i128 %72, i128* %XMM12_val, !mcsema_real_eip !84
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !84
  %73 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !84
  store i128 %73, i128* %XMM13_val, !mcsema_real_eip !84
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !84
  %74 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !84
  store i128 %74, i128* %XMM14_val, !mcsema_real_eip !84
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !84
  %75 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !84
  store i128 %75, i128* %XMM15_val, !mcsema_real_eip !84
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !84
  %76 = load i64, i64* %STACK_BASE, !mcsema_real_eip !84
  store i64 %76, i64* %STACK_BASE_val, !mcsema_real_eip !84
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !84
  %77 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !84
  store i64 %77, i64* %STACK_LIMIT_val, !mcsema_real_eip !84
  %78 = load i64, i64* %RBP_val, !mcsema_real_eip !84
  %79 = load i64, i64* %RSP_val, !mcsema_real_eip !84
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !84
  store i64 %78, i64* %81, !mcsema_real_eip !84
  store i64 %80, i64* %RBP_val, !mcsema_real_eip !85
  %82 = add i64 %79, -40
  %83 = xor i64 %82, %80, !mcsema_real_eip !86
  %84 = and i64 %83, 16, !mcsema_real_eip !86
  %85 = icmp ne i64 %84, 0, !mcsema_real_eip !86
  store i1 %85, i1* %AF_val, !mcsema_real_eip !86
  %86 = trunc i64 %82 to i8, !mcsema_real_eip !86
  %87 = tail call i8 @llvm.ctpop.i8(i8 %86), !mcsema_real_eip !86
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  store i1 %89, i1* %PF_val, !mcsema_real_eip !86
  %90 = icmp eq i64 %82, 0, !mcsema_real_eip !86
  store i1 %90, i1* %ZF_val, !mcsema_real_eip !86
  %91 = icmp slt i64 %82, 0
  store i1 %91, i1* %SF_val, !mcsema_real_eip !86
  %92 = icmp ult i64 %80, 32, !mcsema_real_eip !86
  store i1 %92, i1* %CF_val, !mcsema_real_eip !86
  %93 = and i64 %83, %80, !mcsema_real_eip !86
  %94 = icmp slt i64 %93, 0
  store i1 %94, i1* %OF_val, !mcsema_real_eip !86
  %95 = add i64 %79, -48
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !87
  store i64 -4981261766360305936, i64* %96, !mcsema_real_eip !87
  store i64 %95, i64* %RSP_val, !mcsema_real_eip !87
  %97 = load i64, i64* %RAX_val, !mcsema_real_eip !87
  store i64 %97, i64* %RAX, !mcsema_real_eip !87
  %98 = load i64, i64* %RBX_val, !mcsema_real_eip !87
  store i64 %98, i64* %RBX, !mcsema_real_eip !87
  %99 = load i64, i64* %RCX_val, !mcsema_real_eip !87
  store i64 %99, i64* %RCX, !mcsema_real_eip !87
  %100 = load i64, i64* %RDX_val, !mcsema_real_eip !87
  store i64 %100, i64* %RDX, !mcsema_real_eip !87
  %101 = load i64, i64* %RSI_val, !mcsema_real_eip !87
  store i64 %101, i64* %RSI, !mcsema_real_eip !87
  %102 = load i64, i64* %RDI_val, !mcsema_real_eip !87
  store i64 %102, i64* %RDI, !mcsema_real_eip !87
  %103 = load i64, i64* %RSP_val, !mcsema_real_eip !87
  store i64 %103, i64* %RSP, !mcsema_real_eip !87
  %104 = load i64, i64* %RBP_val, !mcsema_real_eip !87
  store i64 %104, i64* %RBP, !mcsema_real_eip !87
  %105 = load i64, i64* %R8_val, !mcsema_real_eip !87
  store i64 %105, i64* %R8, !mcsema_real_eip !87
  %106 = load i64, i64* %R9_val, !mcsema_real_eip !87
  store i64 %106, i64* %R9, !mcsema_real_eip !87
  %107 = load i64, i64* %R10_val, !mcsema_real_eip !87
  store i64 %107, i64* %R10, !mcsema_real_eip !87
  %108 = load i64, i64* %R11_val, !mcsema_real_eip !87
  store i64 %108, i64* %R11, !mcsema_real_eip !87
  %109 = load i64, i64* %R12_val, !mcsema_real_eip !87
  store i64 %109, i64* %R12, !mcsema_real_eip !87
  %110 = load i64, i64* %R13_val, !mcsema_real_eip !87
  store i64 %110, i64* %R13, !mcsema_real_eip !87
  %111 = load i64, i64* %R14_val, !mcsema_real_eip !87
  store i64 %111, i64* %R14, !mcsema_real_eip !87
  %112 = load i64, i64* %R15_val, !mcsema_real_eip !87
  store i64 %112, i64* %R15, !mcsema_real_eip !87
  %113 = load i64, i64* %RIP_val, !mcsema_real_eip !87
  store i64 %113, i64* %RIP, !mcsema_real_eip !87
  %114 = load i1, i1* %CF_val, !mcsema_real_eip !87
  store i1 %114, i1* %CF, align 1, !mcsema_real_eip !87
  %115 = load i1, i1* %PF_val, !mcsema_real_eip !87
  store i1 %115, i1* %PF, align 1, !mcsema_real_eip !87
  %116 = load i1, i1* %AF_val, !mcsema_real_eip !87
  store i1 %116, i1* %AF, align 1, !mcsema_real_eip !87
  %117 = load i1, i1* %ZF_val, !mcsema_real_eip !87
  store i1 %117, i1* %ZF, align 1, !mcsema_real_eip !87
  %118 = load i1, i1* %SF_val, !mcsema_real_eip !87
  store i1 %118, i1* %SF, align 1, !mcsema_real_eip !87
  %119 = load i1, i1* %OF_val, !mcsema_real_eip !87
  store i1 %119, i1* %OF, align 1, !mcsema_real_eip !87
  %120 = load i1, i1* %DF_val, !mcsema_real_eip !87
  store i1 %120, i1* %DF, align 1, !mcsema_real_eip !87
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !87
  %121 = load i1, i1* %FPU_B_val, !mcsema_real_eip !87
  store i1 %121, i1* %FPU_B, align 1, !mcsema_real_eip !87
  %122 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !87
  store i1 %122, i1* %FPU_C3, align 1, !mcsema_real_eip !87
  %123 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !87
  store i3 %123, i3* %FPU_TOP, align 1, !mcsema_real_eip !87
  %124 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !87
  store i1 %124, i1* %FPU_C2, align 1, !mcsema_real_eip !87
  %125 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !87
  store i1 %125, i1* %FPU_C1, align 1, !mcsema_real_eip !87
  %126 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !87
  store i1 %126, i1* %FPU_C0, align 1, !mcsema_real_eip !87
  %127 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !87
  store i1 %127, i1* %FPU_ES, align 1, !mcsema_real_eip !87
  %128 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !87
  store i1 %128, i1* %FPU_SF, align 1, !mcsema_real_eip !87
  %129 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !87
  store i1 %129, i1* %FPU_PE, align 1, !mcsema_real_eip !87
  %130 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !87
  store i1 %130, i1* %FPU_UE, align 1, !mcsema_real_eip !87
  %131 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !87
  store i1 %131, i1* %FPU_OE, align 1, !mcsema_real_eip !87
  %132 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !87
  store i1 %132, i1* %FPU_ZE, align 1, !mcsema_real_eip !87
  %133 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !87
  store i1 %133, i1* %FPU_DE, align 1, !mcsema_real_eip !87
  %134 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !87
  store i1 %134, i1* %FPU_IE, align 1, !mcsema_real_eip !87
  %135 = load i1, i1* %FPU_X_val, !mcsema_real_eip !87
  store i1 %135, i1* %FPU_X, align 1, !mcsema_real_eip !87
  %136 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !87
  store i2 %136, i2* %FPU_RC, align 1, !mcsema_real_eip !87
  %137 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !87
  store i2 %137, i2* %FPU_PC, align 1, !mcsema_real_eip !87
  %138 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !87
  store i1 %138, i1* %FPU_PM, align 1, !mcsema_real_eip !87
  %139 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !87
  store i1 %139, i1* %FPU_UM, align 1, !mcsema_real_eip !87
  %140 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !87
  store i1 %140, i1* %FPU_OM, align 1, !mcsema_real_eip !87
  %141 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !87
  store i1 %141, i1* %FPU_ZM, align 1, !mcsema_real_eip !87
  %142 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !87
  store i1 %142, i1* %FPU_DM, align 1, !mcsema_real_eip !87
  %143 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !87
  store i1 %143, i1* %FPU_IM, align 1, !mcsema_real_eip !87
  %144 = load i64, i64* %53, align 4
  store i64 %144, i64* %52, align 4
  %145 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !87
  store i16 %145, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !87
  %146 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !87
  store i64 %146, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !87
  %147 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !87
  store i16 %147, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !87
  %148 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !87
  store i64 %148, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !87
  %149 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !87
  store i11 %149, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !87
  %150 = load i128, i128* %XMM0_val, !mcsema_real_eip !87
  store i128 %150, i128* %XMM0, align 1, !mcsema_real_eip !87
  %151 = load i128, i128* %XMM1_val, !mcsema_real_eip !87
  store i128 %151, i128* %XMM1, align 1, !mcsema_real_eip !87
  %152 = load i128, i128* %XMM2_val, !mcsema_real_eip !87
  store i128 %152, i128* %XMM2, align 1, !mcsema_real_eip !87
  %153 = load i128, i128* %XMM3_val, !mcsema_real_eip !87
  store i128 %153, i128* %XMM3, align 1, !mcsema_real_eip !87
  %154 = load i128, i128* %XMM4_val, !mcsema_real_eip !87
  store i128 %154, i128* %XMM4, align 1, !mcsema_real_eip !87
  %155 = load i128, i128* %XMM5_val, !mcsema_real_eip !87
  store i128 %155, i128* %XMM5, align 1, !mcsema_real_eip !87
  %156 = load i128, i128* %XMM6_val, !mcsema_real_eip !87
  store i128 %156, i128* %XMM6, align 1, !mcsema_real_eip !87
  %157 = load i128, i128* %XMM7_val, !mcsema_real_eip !87
  store i128 %157, i128* %XMM7, align 1, !mcsema_real_eip !87
  %158 = load i128, i128* %XMM8_val, !mcsema_real_eip !87
  store i128 %158, i128* %XMM8, align 1, !mcsema_real_eip !87
  %159 = load i128, i128* %XMM9_val, !mcsema_real_eip !87
  store i128 %159, i128* %XMM9, align 1, !mcsema_real_eip !87
  %160 = load i128, i128* %XMM10_val, !mcsema_real_eip !87
  store i128 %160, i128* %XMM10, align 1, !mcsema_real_eip !87
  %161 = load i128, i128* %XMM11_val, !mcsema_real_eip !87
  store i128 %161, i128* %XMM11, align 1, !mcsema_real_eip !87
  %162 = load i128, i128* %XMM12_val, !mcsema_real_eip !87
  store i128 %162, i128* %XMM12, align 1, !mcsema_real_eip !87
  %163 = load i128, i128* %XMM13_val, !mcsema_real_eip !87
  store i128 %163, i128* %XMM13, align 1, !mcsema_real_eip !87
  %164 = load i128, i128* %XMM14_val, !mcsema_real_eip !87
  store i128 %164, i128* %XMM14, align 1, !mcsema_real_eip !87
  %165 = load i128, i128* %XMM15_val, !mcsema_real_eip !87
  store i128 %165, i128* %XMM15, align 1, !mcsema_real_eip !87
  %166 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !87
  store i64 %166, i64* %STACK_BASE, align 1, !mcsema_real_eip !87
  %167 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !87
  store i64 %167, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !87
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !87
  %168 = load i64, i64* %RAX, !mcsema_real_eip !87
  store i64 %168, i64* %RAX_val, !mcsema_real_eip !87
  %169 = load i64, i64* %RBX, !mcsema_real_eip !87
  store i64 %169, i64* %RBX_val, !mcsema_real_eip !87
  %170 = load i64, i64* %RCX, !mcsema_real_eip !87
  store i64 %170, i64* %RCX_val, !mcsema_real_eip !87
  %171 = load i64, i64* %RDX, !mcsema_real_eip !87
  store i64 %171, i64* %RDX_val, !mcsema_real_eip !87
  %172 = load i64, i64* %RSI, !mcsema_real_eip !87
  store i64 %172, i64* %RSI_val, !mcsema_real_eip !87
  %173 = load i64, i64* %RDI, !mcsema_real_eip !87
  store i64 %173, i64* %RDI_val, !mcsema_real_eip !87
  %174 = load i64, i64* %RSP, !mcsema_real_eip !87
  store i64 %174, i64* %RSP_val, !mcsema_real_eip !87
  %175 = load i64, i64* %RBP, !mcsema_real_eip !87
  store i64 %175, i64* %RBP_val, !mcsema_real_eip !87
  %176 = load i64, i64* %R8, !mcsema_real_eip !87
  store i64 %176, i64* %R8_val, !mcsema_real_eip !87
  %177 = load i64, i64* %R9, !mcsema_real_eip !87
  store i64 %177, i64* %R9_val, !mcsema_real_eip !87
  %178 = load i64, i64* %R10, !mcsema_real_eip !87
  store i64 %178, i64* %R10_val, !mcsema_real_eip !87
  %179 = load i64, i64* %R11, !mcsema_real_eip !87
  store i64 %179, i64* %R11_val, !mcsema_real_eip !87
  %180 = load i64, i64* %R12, !mcsema_real_eip !87
  store i64 %180, i64* %R12_val, !mcsema_real_eip !87
  %181 = load i64, i64* %R13, !mcsema_real_eip !87
  store i64 %181, i64* %R13_val, !mcsema_real_eip !87
  %182 = load i64, i64* %R14, !mcsema_real_eip !87
  store i64 %182, i64* %R14_val, !mcsema_real_eip !87
  %183 = load i64, i64* %R15, !mcsema_real_eip !87
  store i64 %183, i64* %R15_val, !mcsema_real_eip !87
  %184 = load i64, i64* %RIP, !mcsema_real_eip !87
  store i64 %184, i64* %RIP_val, !mcsema_real_eip !87
  %185 = load i1, i1* %CF, align 1, !mcsema_real_eip !87
  store i1 %185, i1* %CF_val, !mcsema_real_eip !87
  %186 = load i1, i1* %PF, align 1, !mcsema_real_eip !87
  store i1 %186, i1* %PF_val, !mcsema_real_eip !87
  %187 = load i1, i1* %AF, align 1, !mcsema_real_eip !87
  store i1 %187, i1* %AF_val, !mcsema_real_eip !87
  %188 = load i1, i1* %ZF, align 1, !mcsema_real_eip !87
  store i1 %188, i1* %ZF_val, !mcsema_real_eip !87
  %189 = load i1, i1* %SF, align 1, !mcsema_real_eip !87
  store i1 %189, i1* %SF_val, !mcsema_real_eip !87
  %190 = load i1, i1* %OF, align 1, !mcsema_real_eip !87
  store i1 %190, i1* %OF_val, !mcsema_real_eip !87
  %191 = load i1, i1* %DF, align 1, !mcsema_real_eip !87
  store i1 %191, i1* %DF_val, !mcsema_real_eip !87
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !87
  %192 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !87
  store i1 %192, i1* %FPU_B_val, !mcsema_real_eip !87
  %193 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !87
  store i1 %193, i1* %FPU_C3_val, !mcsema_real_eip !87
  %194 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !87
  store i3 %194, i3* %FPU_TOP_val, !mcsema_real_eip !87
  %195 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !87
  store i1 %195, i1* %FPU_C2_val, !mcsema_real_eip !87
  %196 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !87
  store i1 %196, i1* %FPU_C1_val, !mcsema_real_eip !87
  %197 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !87
  store i1 %197, i1* %FPU_C0_val, !mcsema_real_eip !87
  %198 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !87
  store i1 %198, i1* %FPU_ES_val, !mcsema_real_eip !87
  %199 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !87
  store i1 %199, i1* %FPU_SF_val, !mcsema_real_eip !87
  %200 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !87
  store i1 %200, i1* %FPU_PE_val, !mcsema_real_eip !87
  %201 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !87
  store i1 %201, i1* %FPU_UE_val, !mcsema_real_eip !87
  %202 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !87
  store i1 %202, i1* %FPU_OE_val, !mcsema_real_eip !87
  %203 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !87
  store i1 %203, i1* %FPU_ZE_val, !mcsema_real_eip !87
  %204 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !87
  store i1 %204, i1* %FPU_DE_val, !mcsema_real_eip !87
  %205 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !87
  store i1 %205, i1* %FPU_IE_val, !mcsema_real_eip !87
  %206 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !87
  store i1 %206, i1* %FPU_X_val, !mcsema_real_eip !87
  %207 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !87
  store i2 %207, i2* %FPU_RC_val, !mcsema_real_eip !87
  %208 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !87
  store i2 %208, i2* %FPU_PC_val, !mcsema_real_eip !87
  %209 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !87
  store i1 %209, i1* %FPU_PM_val, !mcsema_real_eip !87
  %210 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !87
  store i1 %210, i1* %FPU_UM_val, !mcsema_real_eip !87
  %211 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !87
  store i1 %211, i1* %FPU_OM_val, !mcsema_real_eip !87
  %212 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !87
  store i1 %212, i1* %FPU_ZM_val, !mcsema_real_eip !87
  %213 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !87
  store i1 %213, i1* %FPU_DM_val, !mcsema_real_eip !87
  %214 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !87
  store i1 %214, i1* %FPU_IM_val, !mcsema_real_eip !87
  %215 = load i64, i64* %52, align 4
  store i64 %215, i64* %53, align 4
  %216 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !87
  store i16 %216, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !87
  %217 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !87
  store i64 %217, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !87
  %218 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !87
  store i16 %218, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !87
  %219 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !87
  store i64 %219, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !87
  %220 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !87
  store i11 %220, i11* %FPU_FOPCODE_val, !mcsema_real_eip !87
  %221 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !87
  store i128 %221, i128* %XMM0_val, !mcsema_real_eip !87
  %222 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !87
  store i128 %222, i128* %XMM1_val, !mcsema_real_eip !87
  %223 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !87
  store i128 %223, i128* %XMM2_val, !mcsema_real_eip !87
  %224 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !87
  store i128 %224, i128* %XMM3_val, !mcsema_real_eip !87
  %225 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !87
  store i128 %225, i128* %XMM4_val, !mcsema_real_eip !87
  %226 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !87
  store i128 %226, i128* %XMM5_val, !mcsema_real_eip !87
  %227 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !87
  store i128 %227, i128* %XMM6_val, !mcsema_real_eip !87
  %228 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !87
  store i128 %228, i128* %XMM7_val, !mcsema_real_eip !87
  %229 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !87
  store i128 %229, i128* %XMM8_val, !mcsema_real_eip !87
  %230 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !87
  store i128 %230, i128* %XMM9_val, !mcsema_real_eip !87
  %231 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !87
  store i128 %231, i128* %XMM10_val, !mcsema_real_eip !87
  %232 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !87
  store i128 %232, i128* %XMM11_val, !mcsema_real_eip !87
  %233 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !87
  store i128 %233, i128* %XMM12_val, !mcsema_real_eip !87
  %234 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !87
  store i128 %234, i128* %XMM13_val, !mcsema_real_eip !87
  %235 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !87
  store i128 %235, i128* %XMM14_val, !mcsema_real_eip !87
  %236 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !87
  store i128 %236, i128* %XMM15_val, !mcsema_real_eip !87
  %237 = load i64, i64* %STACK_BASE, !mcsema_real_eip !87
  store i64 %237, i64* %STACK_BASE_val, !mcsema_real_eip !87
  %238 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !87
  store i64 %238, i64* %STACK_LIMIT_val, !mcsema_real_eip !87
  store i32 0, i32* bitcast (%3* @data_0x390 to i32*), !mcsema_real_eip !88
  store i32 0, i32* bitcast (%4* @data_0x3e8 to i32*), !mcsema_real_eip !89
  %239 = load i64, i64* %RBP_val, !mcsema_real_eip !90
  %240 = add i64 %239, -4, !mcsema_real_eip !90
  %241 = inttoptr i64 %240 to i64*, !mcsema_real_eip !90
  %242 = bitcast i64* %241 to i32*
  store i32 1, i32* %242, !mcsema_real_eip !90
  br label %block_0x8a, !mcsema_real_eip !91

block_0x8a:                                       ; preds = %block_0x140, %entry
  %243 = load i64, i64* %RBP_val, !mcsema_real_eip !91
  %244 = add i64 %243, -4, !mcsema_real_eip !91
  %245 = inttoptr i64 %244 to i64*, !mcsema_real_eip !91
  %246 = bitcast i64* %245 to i32*
  %247 = load i32, i32* %246, !mcsema_real_eip !91
  %248 = add i32 %247, -500
  %249 = xor i32 %248, %247, !mcsema_real_eip !91
  %250 = and i32 %249, 16
  %251 = icmp eq i32 %250, 0
  store i1 %251, i1* %AF_val, !mcsema_real_eip !91
  %252 = trunc i32 %248 to i8, !mcsema_real_eip !91
  %253 = tail call i8 @llvm.ctpop.i8(i8 %252), !mcsema_real_eip !91
  %254 = and i8 %253, 1
  %255 = icmp eq i8 %254, 0
  store i1 %255, i1* %PF_val, !mcsema_real_eip !91
  %256 = icmp eq i32 %248, 0, !mcsema_real_eip !91
  store i1 %256, i1* %ZF_val, !mcsema_real_eip !91
  %257 = icmp slt i32 %248, 0
  store i1 %257, i1* %SF_val, !mcsema_real_eip !91
  %258 = icmp ult i32 %247, 500, !mcsema_real_eip !91
  store i1 %258, i1* %CF_val, !mcsema_real_eip !91
  %259 = and i32 %249, %247, !mcsema_real_eip !91
  %260 = icmp slt i32 %259, 0
  store i1 %260, i1* %OF_val, !mcsema_real_eip !91
  %tmp = xor i1 %257, %260
  %261 = load i1, i1* %ZF_val, !mcsema_real_eip !92
  %.demorgan = or i1 %261, %tmp
  %262 = load i64, i64* %RSP_val, !mcsema_real_eip !93
  br i1 %.demorgan, label %block_0x97, label %block_0x14e, !mcsema_real_eip !92

block_0x97:                                       ; preds = %block_0x8a
  %263 = add i64 %262, -8
  %264 = inttoptr i64 %263 to i64*, !mcsema_real_eip !94
  store i64 -4981261766360305936, i64* %264, !mcsema_real_eip !94
  store i64 %263, i64* %RSP_val, !mcsema_real_eip !94
  %265 = load i64, i64* %RAX_val, !mcsema_real_eip !94
  store i64 %265, i64* %RAX, !mcsema_real_eip !94
  %266 = load i64, i64* %RBX_val, !mcsema_real_eip !94
  store i64 %266, i64* %RBX, !mcsema_real_eip !94
  %267 = load i64, i64* %RCX_val, !mcsema_real_eip !94
  store i64 %267, i64* %RCX, !mcsema_real_eip !94
  %268 = load i64, i64* %RDX_val, !mcsema_real_eip !94
  store i64 %268, i64* %RDX, !mcsema_real_eip !94
  %269 = load i64, i64* %RSI_val, !mcsema_real_eip !94
  store i64 %269, i64* %RSI, !mcsema_real_eip !94
  %270 = load i64, i64* %RDI_val, !mcsema_real_eip !94
  store i64 %270, i64* %RDI, !mcsema_real_eip !94
  %271 = load i64, i64* %RSP_val, !mcsema_real_eip !94
  store i64 %271, i64* %RSP, !mcsema_real_eip !94
  %272 = load i64, i64* %RBP_val, !mcsema_real_eip !94
  store i64 %272, i64* %RBP, !mcsema_real_eip !94
  %273 = load i64, i64* %R8_val, !mcsema_real_eip !94
  store i64 %273, i64* %R8, !mcsema_real_eip !94
  %274 = load i64, i64* %R9_val, !mcsema_real_eip !94
  store i64 %274, i64* %R9, !mcsema_real_eip !94
  %275 = load i64, i64* %R10_val, !mcsema_real_eip !94
  store i64 %275, i64* %R10, !mcsema_real_eip !94
  %276 = load i64, i64* %R11_val, !mcsema_real_eip !94
  store i64 %276, i64* %R11, !mcsema_real_eip !94
  %277 = load i64, i64* %R12_val, !mcsema_real_eip !94
  store i64 %277, i64* %R12, !mcsema_real_eip !94
  %278 = load i64, i64* %R13_val, !mcsema_real_eip !94
  store i64 %278, i64* %R13, !mcsema_real_eip !94
  %279 = load i64, i64* %R14_val, !mcsema_real_eip !94
  store i64 %279, i64* %R14, !mcsema_real_eip !94
  %280 = load i64, i64* %R15_val, !mcsema_real_eip !94
  store i64 %280, i64* %R15, !mcsema_real_eip !94
  %281 = load i64, i64* %RIP_val, !mcsema_real_eip !94
  store i64 %281, i64* %RIP, !mcsema_real_eip !94
  %282 = load i1, i1* %CF_val, !mcsema_real_eip !94
  store i1 %282, i1* %CF, align 1, !mcsema_real_eip !94
  %283 = load i1, i1* %PF_val, !mcsema_real_eip !94
  store i1 %283, i1* %PF, align 1, !mcsema_real_eip !94
  %284 = load i1, i1* %AF_val, !mcsema_real_eip !94
  store i1 %284, i1* %AF, align 1, !mcsema_real_eip !94
  %285 = load i1, i1* %ZF_val, !mcsema_real_eip !94
  store i1 %285, i1* %ZF, align 1, !mcsema_real_eip !94
  %286 = load i1, i1* %SF_val, !mcsema_real_eip !94
  store i1 %286, i1* %SF, align 1, !mcsema_real_eip !94
  %287 = load i1, i1* %OF_val, !mcsema_real_eip !94
  store i1 %287, i1* %OF, align 1, !mcsema_real_eip !94
  %288 = load i1, i1* %DF_val, !mcsema_real_eip !94
  store i1 %288, i1* %DF, align 1, !mcsema_real_eip !94
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !94
  %289 = load i1, i1* %FPU_B_val, !mcsema_real_eip !94
  store i1 %289, i1* %FPU_B, align 1, !mcsema_real_eip !94
  %290 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !94
  store i1 %290, i1* %FPU_C3, align 1, !mcsema_real_eip !94
  %291 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !94
  store i3 %291, i3* %FPU_TOP, align 1, !mcsema_real_eip !94
  %292 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !94
  store i1 %292, i1* %FPU_C2, align 1, !mcsema_real_eip !94
  %293 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !94
  store i1 %293, i1* %FPU_C1, align 1, !mcsema_real_eip !94
  %294 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !94
  store i1 %294, i1* %FPU_C0, align 1, !mcsema_real_eip !94
  %295 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !94
  store i1 %295, i1* %FPU_ES, align 1, !mcsema_real_eip !94
  %296 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !94
  store i1 %296, i1* %FPU_SF, align 1, !mcsema_real_eip !94
  %297 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !94
  store i1 %297, i1* %FPU_PE, align 1, !mcsema_real_eip !94
  %298 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !94
  store i1 %298, i1* %FPU_UE, align 1, !mcsema_real_eip !94
  %299 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !94
  store i1 %299, i1* %FPU_OE, align 1, !mcsema_real_eip !94
  %300 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !94
  store i1 %300, i1* %FPU_ZE, align 1, !mcsema_real_eip !94
  %301 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !94
  store i1 %301, i1* %FPU_DE, align 1, !mcsema_real_eip !94
  %302 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !94
  store i1 %302, i1* %FPU_IE, align 1, !mcsema_real_eip !94
  %303 = load i1, i1* %FPU_X_val, !mcsema_real_eip !94
  store i1 %303, i1* %FPU_X, align 1, !mcsema_real_eip !94
  %304 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !94
  store i2 %304, i2* %FPU_RC, align 1, !mcsema_real_eip !94
  %305 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !94
  store i2 %305, i2* %FPU_PC, align 1, !mcsema_real_eip !94
  %306 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !94
  store i1 %306, i1* %FPU_PM, align 1, !mcsema_real_eip !94
  %307 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !94
  store i1 %307, i1* %FPU_UM, align 1, !mcsema_real_eip !94
  %308 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !94
  store i1 %308, i1* %FPU_OM, align 1, !mcsema_real_eip !94
  %309 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !94
  store i1 %309, i1* %FPU_ZM, align 1, !mcsema_real_eip !94
  %310 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !94
  store i1 %310, i1* %FPU_DM, align 1, !mcsema_real_eip !94
  %311 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !94
  store i1 %311, i1* %FPU_IM, align 1, !mcsema_real_eip !94
  %312 = load i64, i64* %53, align 4
  store i64 %312, i64* %52, align 4
  %313 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !94
  store i16 %313, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !94
  %314 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !94
  store i64 %314, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !94
  %315 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !94
  store i16 %315, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !94
  %316 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !94
  store i64 %316, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !94
  %317 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !94
  store i11 %317, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !94
  %318 = load i128, i128* %XMM0_val, !mcsema_real_eip !94
  store i128 %318, i128* %XMM0, align 1, !mcsema_real_eip !94
  %319 = load i128, i128* %XMM1_val, !mcsema_real_eip !94
  store i128 %319, i128* %XMM1, align 1, !mcsema_real_eip !94
  %320 = load i128, i128* %XMM2_val, !mcsema_real_eip !94
  store i128 %320, i128* %XMM2, align 1, !mcsema_real_eip !94
  %321 = load i128, i128* %XMM3_val, !mcsema_real_eip !94
  store i128 %321, i128* %XMM3, align 1, !mcsema_real_eip !94
  %322 = load i128, i128* %XMM4_val, !mcsema_real_eip !94
  store i128 %322, i128* %XMM4, align 1, !mcsema_real_eip !94
  %323 = load i128, i128* %XMM5_val, !mcsema_real_eip !94
  store i128 %323, i128* %XMM5, align 1, !mcsema_real_eip !94
  %324 = load i128, i128* %XMM6_val, !mcsema_real_eip !94
  store i128 %324, i128* %XMM6, align 1, !mcsema_real_eip !94
  %325 = load i128, i128* %XMM7_val, !mcsema_real_eip !94
  store i128 %325, i128* %XMM7, align 1, !mcsema_real_eip !94
  %326 = load i128, i128* %XMM8_val, !mcsema_real_eip !94
  store i128 %326, i128* %XMM8, align 1, !mcsema_real_eip !94
  %327 = load i128, i128* %XMM9_val, !mcsema_real_eip !94
  store i128 %327, i128* %XMM9, align 1, !mcsema_real_eip !94
  %328 = load i128, i128* %XMM10_val, !mcsema_real_eip !94
  store i128 %328, i128* %XMM10, align 1, !mcsema_real_eip !94
  %329 = load i128, i128* %XMM11_val, !mcsema_real_eip !94
  store i128 %329, i128* %XMM11, align 1, !mcsema_real_eip !94
  %330 = load i128, i128* %XMM12_val, !mcsema_real_eip !94
  store i128 %330, i128* %XMM12, align 1, !mcsema_real_eip !94
  %331 = load i128, i128* %XMM13_val, !mcsema_real_eip !94
  store i128 %331, i128* %XMM13, align 1, !mcsema_real_eip !94
  %332 = load i128, i128* %XMM14_val, !mcsema_real_eip !94
  store i128 %332, i128* %XMM14, align 1, !mcsema_real_eip !94
  %333 = load i128, i128* %XMM15_val, !mcsema_real_eip !94
  store i128 %333, i128* %XMM15, align 1, !mcsema_real_eip !94
  %334 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !94
  store i64 %334, i64* %STACK_BASE, align 1, !mcsema_real_eip !94
  %335 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !94
  store i64 %335, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !94
  tail call x86_64_sysvcc void @sub_20(%struct.regs* %0), !mcsema_real_eip !94
  %336 = load i64, i64* %RAX, !mcsema_real_eip !94
  store i64 %336, i64* %RAX_val, !mcsema_real_eip !94
  %337 = load i64, i64* %RBX, !mcsema_real_eip !94
  store i64 %337, i64* %RBX_val, !mcsema_real_eip !94
  %338 = load i64, i64* %RCX, !mcsema_real_eip !94
  store i64 %338, i64* %RCX_val, !mcsema_real_eip !94
  %339 = load i64, i64* %RDX, !mcsema_real_eip !94
  store i64 %339, i64* %RDX_val, !mcsema_real_eip !94
  %340 = load i64, i64* %RSI, !mcsema_real_eip !94
  store i64 %340, i64* %RSI_val, !mcsema_real_eip !94
  %341 = load i64, i64* %RDI, !mcsema_real_eip !94
  store i64 %341, i64* %RDI_val, !mcsema_real_eip !94
  %342 = load i64, i64* %RSP, !mcsema_real_eip !94
  store i64 %342, i64* %RSP_val, !mcsema_real_eip !94
  %343 = load i64, i64* %RBP, !mcsema_real_eip !94
  store i64 %343, i64* %RBP_val, !mcsema_real_eip !94
  %344 = load i64, i64* %R8, !mcsema_real_eip !94
  store i64 %344, i64* %R8_val, !mcsema_real_eip !94
  %345 = load i64, i64* %R9, !mcsema_real_eip !94
  store i64 %345, i64* %R9_val, !mcsema_real_eip !94
  %346 = load i64, i64* %R10, !mcsema_real_eip !94
  store i64 %346, i64* %R10_val, !mcsema_real_eip !94
  %347 = load i64, i64* %R11, !mcsema_real_eip !94
  store i64 %347, i64* %R11_val, !mcsema_real_eip !94
  %348 = load i64, i64* %R12, !mcsema_real_eip !94
  store i64 %348, i64* %R12_val, !mcsema_real_eip !94
  %349 = load i64, i64* %R13, !mcsema_real_eip !94
  store i64 %349, i64* %R13_val, !mcsema_real_eip !94
  %350 = load i64, i64* %R14, !mcsema_real_eip !94
  store i64 %350, i64* %R14_val, !mcsema_real_eip !94
  %351 = load i64, i64* %R15, !mcsema_real_eip !94
  store i64 %351, i64* %R15_val, !mcsema_real_eip !94
  %352 = load i64, i64* %RIP, !mcsema_real_eip !94
  store i64 %352, i64* %RIP_val, !mcsema_real_eip !94
  %353 = load i1, i1* %CF, align 1, !mcsema_real_eip !94
  store i1 %353, i1* %CF_val, !mcsema_real_eip !94
  %354 = load i1, i1* %PF, align 1, !mcsema_real_eip !94
  store i1 %354, i1* %PF_val, !mcsema_real_eip !94
  %355 = load i1, i1* %AF, align 1, !mcsema_real_eip !94
  store i1 %355, i1* %AF_val, !mcsema_real_eip !94
  %356 = load i1, i1* %ZF, align 1, !mcsema_real_eip !94
  store i1 %356, i1* %ZF_val, !mcsema_real_eip !94
  %357 = load i1, i1* %SF, align 1, !mcsema_real_eip !94
  store i1 %357, i1* %SF_val, !mcsema_real_eip !94
  %358 = load i1, i1* %OF, align 1, !mcsema_real_eip !94
  store i1 %358, i1* %OF_val, !mcsema_real_eip !94
  %359 = load i1, i1* %DF, align 1, !mcsema_real_eip !94
  store i1 %359, i1* %DF_val, !mcsema_real_eip !94
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !94
  %360 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !94
  store i1 %360, i1* %FPU_B_val, !mcsema_real_eip !94
  %361 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !94
  store i1 %361, i1* %FPU_C3_val, !mcsema_real_eip !94
  %362 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !94
  store i3 %362, i3* %FPU_TOP_val, !mcsema_real_eip !94
  %363 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !94
  store i1 %363, i1* %FPU_C2_val, !mcsema_real_eip !94
  %364 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !94
  store i1 %364, i1* %FPU_C1_val, !mcsema_real_eip !94
  %365 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !94
  store i1 %365, i1* %FPU_C0_val, !mcsema_real_eip !94
  %366 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !94
  store i1 %366, i1* %FPU_ES_val, !mcsema_real_eip !94
  %367 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !94
  store i1 %367, i1* %FPU_SF_val, !mcsema_real_eip !94
  %368 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !94
  store i1 %368, i1* %FPU_PE_val, !mcsema_real_eip !94
  %369 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !94
  store i1 %369, i1* %FPU_UE_val, !mcsema_real_eip !94
  %370 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !94
  store i1 %370, i1* %FPU_OE_val, !mcsema_real_eip !94
  %371 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !94
  store i1 %371, i1* %FPU_ZE_val, !mcsema_real_eip !94
  %372 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !94
  store i1 %372, i1* %FPU_DE_val, !mcsema_real_eip !94
  %373 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !94
  store i1 %373, i1* %FPU_IE_val, !mcsema_real_eip !94
  %374 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !94
  store i1 %374, i1* %FPU_X_val, !mcsema_real_eip !94
  %375 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !94
  store i2 %375, i2* %FPU_RC_val, !mcsema_real_eip !94
  %376 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !94
  store i2 %376, i2* %FPU_PC_val, !mcsema_real_eip !94
  %377 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !94
  store i1 %377, i1* %FPU_PM_val, !mcsema_real_eip !94
  %378 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !94
  store i1 %378, i1* %FPU_UM_val, !mcsema_real_eip !94
  %379 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !94
  store i1 %379, i1* %FPU_OM_val, !mcsema_real_eip !94
  %380 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !94
  store i1 %380, i1* %FPU_ZM_val, !mcsema_real_eip !94
  %381 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !94
  store i1 %381, i1* %FPU_DM_val, !mcsema_real_eip !94
  %382 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !94
  store i1 %382, i1* %FPU_IM_val, !mcsema_real_eip !94
  %383 = load i64, i64* %52, align 4
  store i64 %383, i64* %53, align 4
  %384 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !94
  store i16 %384, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !94
  %385 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !94
  store i64 %385, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !94
  %386 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !94
  store i16 %386, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !94
  %387 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !94
  store i64 %387, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !94
  %388 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !94
  store i11 %388, i11* %FPU_FOPCODE_val, !mcsema_real_eip !94
  %389 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !94
  store i128 %389, i128* %XMM0_val, !mcsema_real_eip !94
  %390 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !94
  store i128 %390, i128* %XMM1_val, !mcsema_real_eip !94
  %391 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !94
  store i128 %391, i128* %XMM2_val, !mcsema_real_eip !94
  %392 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !94
  store i128 %392, i128* %XMM3_val, !mcsema_real_eip !94
  %393 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !94
  store i128 %393, i128* %XMM4_val, !mcsema_real_eip !94
  %394 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !94
  store i128 %394, i128* %XMM5_val, !mcsema_real_eip !94
  %395 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !94
  store i128 %395, i128* %XMM6_val, !mcsema_real_eip !94
  %396 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !94
  store i128 %396, i128* %XMM7_val, !mcsema_real_eip !94
  %397 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !94
  store i128 %397, i128* %XMM8_val, !mcsema_real_eip !94
  %398 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !94
  store i128 %398, i128* %XMM9_val, !mcsema_real_eip !94
  %399 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !94
  store i128 %399, i128* %XMM10_val, !mcsema_real_eip !94
  %400 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !94
  store i128 %400, i128* %XMM11_val, !mcsema_real_eip !94
  %401 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !94
  store i128 %401, i128* %XMM12_val, !mcsema_real_eip !94
  %402 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !94
  store i128 %402, i128* %XMM13_val, !mcsema_real_eip !94
  %403 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !94
  store i128 %403, i128* %XMM14_val, !mcsema_real_eip !94
  %404 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !94
  store i128 %404, i128* %XMM15_val, !mcsema_real_eip !94
  %405 = load i64, i64* %STACK_BASE, !mcsema_real_eip !94
  store i64 %405, i64* %STACK_BASE_val, !mcsema_real_eip !94
  %406 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !94
  store i64 %406, i64* %STACK_LIMIT_val, !mcsema_real_eip !94
  store i64 100000, i64* %RCX_val, !mcsema_real_eip !95
  store i64 100000, i64* %RDX_val, !mcsema_real_eip !96
  %407 = load i64, i64* %RAX_val, !mcsema_real_eip !97
  %sext = shl i64 %407, 32
  %408 = ashr exact i64 %sext, 32
  store i64 %408, i64* %RSI_val, !mcsema_real_eip !97
  %409 = load i64, i64* %RBP_val, !mcsema_real_eip !98
  %410 = add i64 %409, -16, !mcsema_real_eip !98
  %411 = inttoptr i64 %410 to i64*, !mcsema_real_eip !98
  store i64 %408, i64* %411, !mcsema_real_eip !98
  %412 = load i64, i64* %RBP_val, !mcsema_real_eip !99
  %413 = add i64 %412, -16, !mcsema_real_eip !99
  %414 = inttoptr i64 %413 to i64*, !mcsema_real_eip !99
  %415 = load i64, i64* %414, !mcsema_real_eip !99
  store i64 %415, i64* %RSI_val, !mcsema_real_eip !99
  %416 = load i64, i64* %414, !mcsema_real_eip !100
  store i64 %416, i64* %RAX_val, !mcsema_real_eip !100
  %417 = load i64, i64* %RBP_val, !mcsema_real_eip !101
  %418 = add i64 %417, -24, !mcsema_real_eip !101
  %419 = inttoptr i64 %418 to i64*, !mcsema_real_eip !101
  %420 = load i64, i64* %RDX_val, !mcsema_real_eip !101
  store i64 %420, i64* %419, !mcsema_real_eip !101
  %421 = load i64, i64* %RAX_val, !mcsema_real_eip !102
  %422 = sext i64 %421 to i128, !mcsema_real_eip !102
  %423 = lshr i128 %422, 64, !mcsema_real_eip !102
  %424 = trunc i128 %423 to i64, !mcsema_real_eip !102
  store i64 %424, i64* %RDX_val, !mcsema_real_eip !102
  %425 = load i64, i64* %RBP_val, !mcsema_real_eip !103
  %426 = add i64 %425, -24, !mcsema_real_eip !103
  %427 = inttoptr i64 %426 to i64*, !mcsema_real_eip !103
  %428 = load i64, i64* %427, !mcsema_real_eip !103
  store i64 %428, i64* %RDI_val, !mcsema_real_eip !103
  %429 = shl nuw i128 %423, 64, !mcsema_real_eip !104
  %430 = or i128 %429, %422, !mcsema_real_eip !104
  %431 = sext i64 %428 to i128, !mcsema_real_eip !104
  %432 = sdiv i128 %430, %431, !mcsema_real_eip !104
  %433 = srem i128 %430, %431, !mcsema_real_eip !104
  %434 = trunc i128 %433 to i64, !mcsema_real_eip !104
  %435 = trunc i128 %432 to i64, !mcsema_real_eip !104
  store i64 %434, i64* %RDX_val, !mcsema_real_eip !104
  %436 = mul i64 %435, 100000, !mcsema_real_eip !105
  store i64 %436, i64* %RAX_val, !mcsema_real_eip !105
  %437 = load i64, i64* %RSI_val, !mcsema_real_eip !106
  %438 = sub i64 %437, %436, !mcsema_real_eip !106
  %439 = add i64 %438, -50000
  %440 = xor i64 %439, %438, !mcsema_real_eip !107
  %441 = and i64 %440, 16
  %442 = icmp eq i64 %441, 0
  store i1 %442, i1* %AF_val, !mcsema_real_eip !107
  %443 = trunc i64 %439 to i8, !mcsema_real_eip !107
  %444 = tail call i8 @llvm.ctpop.i8(i8 %443), !mcsema_real_eip !107
  %445 = and i8 %444, 1
  %446 = icmp eq i8 %445, 0
  store i1 %446, i1* %PF_val, !mcsema_real_eip !107
  %447 = icmp eq i64 %439, 0, !mcsema_real_eip !107
  store i1 %447, i1* %ZF_val, !mcsema_real_eip !107
  %448 = icmp slt i64 %439, 0
  store i1 %448, i1* %SF_val, !mcsema_real_eip !107
  %449 = icmp ult i64 %438, 50000, !mcsema_real_eip !107
  store i1 %449, i1* %CF_val, !mcsema_real_eip !107
  %450 = and i64 %440, %438, !mcsema_real_eip !107
  %451 = icmp slt i64 %450, 0
  store i1 %451, i1* %OF_val, !mcsema_real_eip !107
  store i64 %439, i64* %RSI_val, !mcsema_real_eip !107
  %452 = and i64 %439, 4294967295
  store i64 %452, i64* %RCX_val, !mcsema_real_eip !108
  %453 = load i64, i64* %RBP_val, !mcsema_real_eip !109
  %454 = add i64 %453, -4, !mcsema_real_eip !109
  %455 = inttoptr i64 %454 to i64*, !mcsema_real_eip !109
  %456 = bitcast i64* %455 to i32*
  %457 = load i32, i32* %456, !mcsema_real_eip !109
  %458 = sext i32 %457 to i64, !mcsema_real_eip !109
  store i64 %458, i64* %RAX_val, !mcsema_real_eip !109
  %459 = shl nsw i64 %458, 2
  %460 = add i64 %459, ptrtoint (%2* @data_0x450 to i64), !mcsema_real_eip !110
  %461 = inttoptr i64 %460 to i64*, !mcsema_real_eip !110
  %462 = load i64, i64* %RCX_val, !mcsema_real_eip !110
  %463 = trunc i64 %462 to i32, !mcsema_real_eip !110
  %464 = bitcast i64* %461 to i32*
  store i32 %463, i32* %464, !mcsema_real_eip !110
  %465 = load i64, i64* %RBP_val, !mcsema_real_eip !111
  %466 = add i64 %465, -4, !mcsema_real_eip !111
  %467 = inttoptr i64 %466 to i64*, !mcsema_real_eip !111
  %468 = bitcast i64* %467 to i32*
  %469 = load i32, i32* %468, !mcsema_real_eip !111
  %470 = sext i32 %469 to i64, !mcsema_real_eip !111
  store i64 %470, i64* %RAX_val, !mcsema_real_eip !111
  %471 = shl nsw i64 %470, 2
  %472 = add i64 %471, ptrtoint (%2* @data_0x450 to i64), !mcsema_real_eip !112
  %473 = inttoptr i64 %472 to i64*, !mcsema_real_eip !112
  %474 = bitcast i64* %473 to i32*
  %475 = load i32, i32* %474, !mcsema_real_eip !112
  %476 = zext i32 %475 to i64, !mcsema_real_eip !112
  store i64 %476, i64* %RCX_val, !mcsema_real_eip !112
  %477 = load i32, i32* bitcast (%3* @data_0x390 to i32*), !mcsema_real_eip !113
  %478 = sub i32 %475, %477, !mcsema_real_eip !113
  %479 = xor i32 %478, %475, !mcsema_real_eip !113
  %480 = xor i32 %479, %477, !mcsema_real_eip !113
  %481 = and i32 %480, 16, !mcsema_real_eip !113
  %482 = icmp ne i32 %481, 0, !mcsema_real_eip !113
  store i1 %482, i1* %AF_val, !mcsema_real_eip !113
  %483 = trunc i32 %478 to i8, !mcsema_real_eip !113
  %484 = tail call i8 @llvm.ctpop.i8(i8 %483), !mcsema_real_eip !113
  %485 = and i8 %484, 1
  %486 = icmp eq i8 %485, 0
  store i1 %486, i1* %PF_val, !mcsema_real_eip !113
  %487 = icmp eq i32 %475, %477
  store i1 %487, i1* %ZF_val, !mcsema_real_eip !113
  %488 = icmp slt i32 %478, 0
  store i1 %488, i1* %SF_val, !mcsema_real_eip !113
  %489 = icmp ult i32 %475, %477, !mcsema_real_eip !113
  store i1 %489, i1* %CF_val, !mcsema_real_eip !113
  %490 = xor i32 %477, %475, !mcsema_real_eip !113
  %491 = and i32 %479, %490, !mcsema_real_eip !113
  %492 = icmp slt i32 %491, 0
  store i1 %492, i1* %OF_val, !mcsema_real_eip !113
  %493 = load i1, i1* %SF_val, !mcsema_real_eip !114
  %494 = xor i1 %493, %492
  %495 = load i1, i1* %ZF_val, !mcsema_real_eip !114
  %496 = or i1 %495, %494, !mcsema_real_eip !114
  %497 = load i64, i64* %RBP_val, !mcsema_real_eip !115
  %498 = add i64 %497, -4, !mcsema_real_eip !115
  %499 = inttoptr i64 %498 to i64*, !mcsema_real_eip !115
  %500 = bitcast i64* %499 to i32*
  %501 = load i32, i32* %500, !mcsema_real_eip !115
  %502 = sext i32 %501 to i64, !mcsema_real_eip !115
  store i64 %502, i64* %RAX_val, !mcsema_real_eip !115
  %503 = shl nsw i64 %502, 2
  %504 = add i64 %503, ptrtoint (%2* @data_0x450 to i64), !mcsema_real_eip !116
  %505 = inttoptr i64 %504 to i64*, !mcsema_real_eip !116
  %506 = bitcast i64* %505 to i32*
  %507 = load i32, i32* %506, !mcsema_real_eip !116
  %508 = zext i32 %507 to i64, !mcsema_real_eip !116
  store i64 %508, i64* %RCX_val, !mcsema_real_eip !116
  br i1 %496, label %block_0x10c, label %block_0xf5, !mcsema_real_eip !114

block_0x14e:                                      ; preds = %block_0x8a
  %.lcssa = phi i64 [ %262, %block_0x8a ]
  %uadd355 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.lcssa, i64 32)
  %509 = extractvalue { i64, i1 } %uadd355, 0
  %510 = xor i64 %509, %.lcssa, !mcsema_real_eip !93
  %511 = and i64 %510, 16, !mcsema_real_eip !93
  %512 = icmp ne i64 %511, 0, !mcsema_real_eip !93
  store i1 %512, i1* %AF_val, !mcsema_real_eip !93
  %513 = icmp slt i64 %509, 0
  store i1 %513, i1* %SF_val, !mcsema_real_eip !93
  %514 = icmp eq i64 %509, 0, !mcsema_real_eip !93
  store i1 %514, i1* %ZF_val, !mcsema_real_eip !93
  %515 = xor i64 %.lcssa, -9223372036854775808, !mcsema_real_eip !93
  %516 = and i64 %510, %515, !mcsema_real_eip !93
  %517 = icmp slt i64 %516, 0
  store i1 %517, i1* %OF_val, !mcsema_real_eip !93
  %518 = trunc i64 %509 to i8, !mcsema_real_eip !93
  %519 = tail call i8 @llvm.ctpop.i8(i8 %518), !mcsema_real_eip !93
  %520 = and i8 %519, 1
  %521 = icmp eq i8 %520, 0
  store i1 %521, i1* %PF_val, !mcsema_real_eip !93
  %522 = extractvalue { i64, i1 } %uadd355, 1
  store i1 %522, i1* %CF_val, !mcsema_real_eip !93
  store i64 %509, i64* %RSP_val, !mcsema_real_eip !93
  %523 = inttoptr i64 %509 to i64*, !mcsema_real_eip !117
  %524 = load i64, i64* %523, !mcsema_real_eip !117
  store i64 %524, i64* %RBP_val, !mcsema_real_eip !117
  %525 = add i64 %509, 16, !mcsema_real_eip !118
  store i64 %525, i64* %RSP_val, !mcsema_real_eip !118
  %526 = load i64, i64* %RAX_val, !mcsema_real_eip !118
  store i64 %526, i64* %RAX, !mcsema_real_eip !118
  %527 = load i64, i64* %RBX_val, !mcsema_real_eip !118
  store i64 %527, i64* %RBX, !mcsema_real_eip !118
  %528 = load i64, i64* %RCX_val, !mcsema_real_eip !118
  store i64 %528, i64* %RCX, !mcsema_real_eip !118
  %529 = load i64, i64* %RDX_val, !mcsema_real_eip !118
  store i64 %529, i64* %RDX, !mcsema_real_eip !118
  %530 = load i64, i64* %RSI_val, !mcsema_real_eip !118
  store i64 %530, i64* %RSI, !mcsema_real_eip !118
  %531 = load i64, i64* %RDI_val, !mcsema_real_eip !118
  store i64 %531, i64* %RDI, !mcsema_real_eip !118
  %532 = load i64, i64* %RSP_val, !mcsema_real_eip !118
  store i64 %532, i64* %RSP, !mcsema_real_eip !118
  %533 = load i64, i64* %RBP_val, !mcsema_real_eip !118
  store i64 %533, i64* %RBP, !mcsema_real_eip !118
  %534 = load i64, i64* %R8_val, !mcsema_real_eip !118
  store i64 %534, i64* %R8, !mcsema_real_eip !118
  %535 = load i64, i64* %R9_val, !mcsema_real_eip !118
  store i64 %535, i64* %R9, !mcsema_real_eip !118
  %536 = load i64, i64* %R10_val, !mcsema_real_eip !118
  store i64 %536, i64* %R10, !mcsema_real_eip !118
  %537 = load i64, i64* %R11_val, !mcsema_real_eip !118
  store i64 %537, i64* %R11, !mcsema_real_eip !118
  %538 = load i64, i64* %R12_val, !mcsema_real_eip !118
  store i64 %538, i64* %R12, !mcsema_real_eip !118
  %539 = load i64, i64* %R13_val, !mcsema_real_eip !118
  store i64 %539, i64* %R13, !mcsema_real_eip !118
  %540 = load i64, i64* %R14_val, !mcsema_real_eip !118
  store i64 %540, i64* %R14, !mcsema_real_eip !118
  %541 = load i64, i64* %R15_val, !mcsema_real_eip !118
  store i64 %541, i64* %R15, !mcsema_real_eip !118
  %542 = load i64, i64* %RIP_val, !mcsema_real_eip !118
  store i64 %542, i64* %RIP, !mcsema_real_eip !118
  %543 = load i1, i1* %CF_val, !mcsema_real_eip !118
  store i1 %543, i1* %CF, align 1, !mcsema_real_eip !118
  %544 = load i1, i1* %PF_val, !mcsema_real_eip !118
  store i1 %544, i1* %PF, align 1, !mcsema_real_eip !118
  %545 = load i1, i1* %AF_val, !mcsema_real_eip !118
  store i1 %545, i1* %AF, align 1, !mcsema_real_eip !118
  %546 = load i1, i1* %ZF_val, !mcsema_real_eip !118
  store i1 %546, i1* %ZF, align 1, !mcsema_real_eip !118
  %547 = load i1, i1* %SF_val, !mcsema_real_eip !118
  store i1 %547, i1* %SF, align 1, !mcsema_real_eip !118
  %548 = load i1, i1* %OF_val, !mcsema_real_eip !118
  store i1 %548, i1* %OF, align 1, !mcsema_real_eip !118
  %549 = load i1, i1* %DF_val, !mcsema_real_eip !118
  store i1 %549, i1* %DF, align 1, !mcsema_real_eip !118
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !118
  %550 = load i1, i1* %FPU_B_val, !mcsema_real_eip !118
  store i1 %550, i1* %FPU_B, align 1, !mcsema_real_eip !118
  %551 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !118
  store i1 %551, i1* %FPU_C3, align 1, !mcsema_real_eip !118
  %552 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !118
  store i3 %552, i3* %FPU_TOP, align 1, !mcsema_real_eip !118
  %553 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !118
  store i1 %553, i1* %FPU_C2, align 1, !mcsema_real_eip !118
  %554 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !118
  store i1 %554, i1* %FPU_C1, align 1, !mcsema_real_eip !118
  %555 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !118
  store i1 %555, i1* %FPU_C0, align 1, !mcsema_real_eip !118
  %556 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !118
  store i1 %556, i1* %FPU_ES, align 1, !mcsema_real_eip !118
  %557 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !118
  store i1 %557, i1* %FPU_SF, align 1, !mcsema_real_eip !118
  %558 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !118
  store i1 %558, i1* %FPU_PE, align 1, !mcsema_real_eip !118
  %559 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !118
  store i1 %559, i1* %FPU_UE, align 1, !mcsema_real_eip !118
  %560 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !118
  store i1 %560, i1* %FPU_OE, align 1, !mcsema_real_eip !118
  %561 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !118
  store i1 %561, i1* %FPU_ZE, align 1, !mcsema_real_eip !118
  %562 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !118
  store i1 %562, i1* %FPU_DE, align 1, !mcsema_real_eip !118
  %563 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !118
  store i1 %563, i1* %FPU_IE, align 1, !mcsema_real_eip !118
  %564 = load i1, i1* %FPU_X_val, !mcsema_real_eip !118
  store i1 %564, i1* %FPU_X, align 1, !mcsema_real_eip !118
  %565 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !118
  store i2 %565, i2* %FPU_RC, align 1, !mcsema_real_eip !118
  %566 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !118
  store i2 %566, i2* %FPU_PC, align 1, !mcsema_real_eip !118
  %567 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !118
  store i1 %567, i1* %FPU_PM, align 1, !mcsema_real_eip !118
  %568 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !118
  store i1 %568, i1* %FPU_UM, align 1, !mcsema_real_eip !118
  %569 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !118
  store i1 %569, i1* %FPU_OM, align 1, !mcsema_real_eip !118
  %570 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !118
  store i1 %570, i1* %FPU_ZM, align 1, !mcsema_real_eip !118
  %571 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !118
  store i1 %571, i1* %FPU_DM, align 1, !mcsema_real_eip !118
  %572 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !118
  store i1 %572, i1* %FPU_IM, align 1, !mcsema_real_eip !118
  %573 = load i64, i64* %53, align 4
  store i64 %573, i64* %52, align 4
  %574 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !118
  store i16 %574, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !118
  %575 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !118
  store i64 %575, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !118
  %576 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !118
  store i16 %576, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !118
  %577 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !118
  store i64 %577, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !118
  %578 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !118
  store i11 %578, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !118
  %579 = load i128, i128* %XMM0_val, !mcsema_real_eip !118
  store i128 %579, i128* %XMM0, align 1, !mcsema_real_eip !118
  %580 = load i128, i128* %XMM1_val, !mcsema_real_eip !118
  store i128 %580, i128* %XMM1, align 1, !mcsema_real_eip !118
  %581 = load i128, i128* %XMM2_val, !mcsema_real_eip !118
  store i128 %581, i128* %XMM2, align 1, !mcsema_real_eip !118
  %582 = load i128, i128* %XMM3_val, !mcsema_real_eip !118
  store i128 %582, i128* %XMM3, align 1, !mcsema_real_eip !118
  %583 = load i128, i128* %XMM4_val, !mcsema_real_eip !118
  store i128 %583, i128* %XMM4, align 1, !mcsema_real_eip !118
  %584 = load i128, i128* %XMM5_val, !mcsema_real_eip !118
  store i128 %584, i128* %XMM5, align 1, !mcsema_real_eip !118
  %585 = load i128, i128* %XMM6_val, !mcsema_real_eip !118
  store i128 %585, i128* %XMM6, align 1, !mcsema_real_eip !118
  %586 = load i128, i128* %XMM7_val, !mcsema_real_eip !118
  store i128 %586, i128* %XMM7, align 1, !mcsema_real_eip !118
  %587 = load i128, i128* %XMM8_val, !mcsema_real_eip !118
  store i128 %587, i128* %XMM8, align 1, !mcsema_real_eip !118
  %588 = load i128, i128* %XMM9_val, !mcsema_real_eip !118
  store i128 %588, i128* %XMM9, align 1, !mcsema_real_eip !118
  %589 = load i128, i128* %XMM10_val, !mcsema_real_eip !118
  store i128 %589, i128* %XMM10, align 1, !mcsema_real_eip !118
  %590 = load i128, i128* %XMM11_val, !mcsema_real_eip !118
  store i128 %590, i128* %XMM11, align 1, !mcsema_real_eip !118
  %591 = load i128, i128* %XMM12_val, !mcsema_real_eip !118
  store i128 %591, i128* %XMM12, align 1, !mcsema_real_eip !118
  %592 = load i128, i128* %XMM13_val, !mcsema_real_eip !118
  store i128 %592, i128* %XMM13, align 1, !mcsema_real_eip !118
  %593 = load i128, i128* %XMM14_val, !mcsema_real_eip !118
  store i128 %593, i128* %XMM14, align 1, !mcsema_real_eip !118
  %594 = load i128, i128* %XMM15_val, !mcsema_real_eip !118
  store i128 %594, i128* %XMM15, align 1, !mcsema_real_eip !118
  %595 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !118
  store i64 %595, i64* %STACK_BASE, align 1, !mcsema_real_eip !118
  %596 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !118
  store i64 %596, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !118
  ret void, !mcsema_real_eip !118

block_0xf5:                                       ; preds = %block_0x97
  store i32 %507, i32* bitcast (%3* @data_0x390 to i32*), !mcsema_real_eip !119
  br label %block_0x140, !mcsema_real_eip !120

block_0x10c:                                      ; preds = %block_0x97
  %597 = load i32, i32* bitcast (%4* @data_0x3e8 to i32*), !mcsema_real_eip !121
  %598 = sub i32 %507, %597, !mcsema_real_eip !121
  %599 = xor i32 %598, %507, !mcsema_real_eip !121
  %600 = xor i32 %599, %597, !mcsema_real_eip !121
  %601 = and i32 %600, 16, !mcsema_real_eip !121
  %602 = icmp ne i32 %601, 0, !mcsema_real_eip !121
  store i1 %602, i1* %AF_val, !mcsema_real_eip !121
  %603 = trunc i32 %598 to i8, !mcsema_real_eip !121
  %604 = tail call i8 @llvm.ctpop.i8(i8 %603), !mcsema_real_eip !121
  %605 = and i8 %604, 1
  %606 = icmp eq i8 %605, 0
  store i1 %606, i1* %PF_val, !mcsema_real_eip !121
  %607 = icmp eq i32 %507, %597
  store i1 %607, i1* %ZF_val, !mcsema_real_eip !121
  %608 = icmp slt i32 %598, 0
  store i1 %608, i1* %SF_val, !mcsema_real_eip !121
  %609 = icmp ult i32 %507, %597, !mcsema_real_eip !121
  store i1 %609, i1* %CF_val, !mcsema_real_eip !121
  %610 = xor i32 %597, %507, !mcsema_real_eip !121
  %611 = and i32 %599, %610, !mcsema_real_eip !121
  %612 = icmp slt i32 %611, 0
  store i1 %612, i1* %OF_val, !mcsema_real_eip !121
  %613 = load i1, i1* %SF_val, !mcsema_real_eip !122
  %tmp354 = xor i1 %613, %612
  br i1 %tmp354, label %block_0x124, label %block_0x140, !mcsema_real_eip !122

block_0x124:                                      ; preds = %block_0x10c
  %614 = load i64, i64* %RBP_val, !mcsema_real_eip !123
  %615 = add i64 %614, -4, !mcsema_real_eip !123
  %616 = inttoptr i64 %615 to i64*, !mcsema_real_eip !123
  %617 = bitcast i64* %616 to i32*
  %618 = load i32, i32* %617, !mcsema_real_eip !123
  %619 = sext i32 %618 to i64, !mcsema_real_eip !123
  store i64 %619, i64* %RAX_val, !mcsema_real_eip !123
  %620 = shl nsw i64 %619, 2
  %621 = add i64 %620, ptrtoint (%2* @data_0x450 to i64), !mcsema_real_eip !124
  %622 = inttoptr i64 %621 to i64*, !mcsema_real_eip !124
  %623 = bitcast i64* %622 to i32*
  %624 = load i32, i32* %623, !mcsema_real_eip !124
  %625 = zext i32 %624 to i64, !mcsema_real_eip !124
  store i64 %625, i64* %RCX_val, !mcsema_real_eip !124
  store i32 %624, i32* bitcast (%4* @data_0x3e8 to i32*), !mcsema_real_eip !125
  br label %block_0x140, !mcsema_real_eip !126

block_0x140:                                      ; preds = %block_0x124, %block_0x10c, %block_0xf5
  %626 = load i64, i64* %RBP_val, !mcsema_real_eip !127
  %627 = add i64 %626, -4, !mcsema_real_eip !127
  %628 = inttoptr i64 %627 to i64*, !mcsema_real_eip !127
  %629 = bitcast i64* %628 to i32*
  %630 = load i32, i32* %629, !mcsema_real_eip !127
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %630, i32 1)
  %631 = extractvalue { i32, i1 } %uadd, 0
  %632 = xor i32 %631, %630, !mcsema_real_eip !128
  %633 = and i32 %632, 16, !mcsema_real_eip !128
  %634 = icmp ne i32 %633, 0, !mcsema_real_eip !128
  store i1 %634, i1* %AF_val, !mcsema_real_eip !128
  %635 = icmp slt i32 %631, 0
  store i1 %635, i1* %SF_val, !mcsema_real_eip !128
  %636 = icmp eq i32 %631, 0, !mcsema_real_eip !128
  store i1 %636, i1* %ZF_val, !mcsema_real_eip !128
  %637 = xor i32 %630, -2147483648, !mcsema_real_eip !128
  %638 = and i32 %632, %637, !mcsema_real_eip !128
  %639 = icmp slt i32 %638, 0
  store i1 %639, i1* %OF_val, !mcsema_real_eip !128
  %640 = trunc i32 %631 to i8, !mcsema_real_eip !128
  %641 = tail call i8 @llvm.ctpop.i8(i8 %640), !mcsema_real_eip !128
  %642 = and i8 %641, 1
  %643 = icmp eq i8 %642, 0
  store i1 %643, i1* %PF_val, !mcsema_real_eip !128
  %644 = extractvalue { i32, i1 } %uadd, 1
  store i1 %644, i1* %CF_val, !mcsema_real_eip !128
  %645 = zext i32 %631 to i64, !mcsema_real_eip !128
  store i64 %645, i64* %RAX_val, !mcsema_real_eip !128
  %646 = load i64, i64* %RBP_val, !mcsema_real_eip !129
  %647 = add i64 %646, -4, !mcsema_real_eip !129
  %648 = inttoptr i64 %647 to i64*, !mcsema_real_eip !129
  %649 = bitcast i64* %648 to i32*
  store i32 %631, i32* %649, !mcsema_real_eip !129
  br label %block_0x8a, !mcsema_real_eip !130
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_20(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !131
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !131
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !131
  %XMM15_val = alloca i128, !mcsema_real_eip !131
  %XMM14_val = alloca i128, !mcsema_real_eip !131
  %XMM13_val = alloca i128, !mcsema_real_eip !131
  %XMM12_val = alloca i128, !mcsema_real_eip !131
  %XMM11_val = alloca i128, !mcsema_real_eip !131
  %XMM10_val = alloca i128, !mcsema_real_eip !131
  %XMM9_val = alloca i128, !mcsema_real_eip !131
  %XMM8_val = alloca i128, !mcsema_real_eip !131
  %XMM7_val = alloca i128, !mcsema_real_eip !131
  %XMM6_val = alloca i128, !mcsema_real_eip !131
  %XMM5_val = alloca i128, !mcsema_real_eip !131
  %XMM4_val = alloca i128, !mcsema_real_eip !131
  %XMM3_val = alloca i128, !mcsema_real_eip !131
  %XMM2_val = alloca i128, !mcsema_real_eip !131
  %XMM1_val = alloca i128, !mcsema_real_eip !131
  %XMM0_val = alloca i128, !mcsema_real_eip !131
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !131
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !131
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !131
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !131
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !131
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !131
  %FPU_IM_val = alloca i1, !mcsema_real_eip !131
  %FPU_DM_val = alloca i1, !mcsema_real_eip !131
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !131
  %FPU_OM_val = alloca i1, !mcsema_real_eip !131
  %FPU_UM_val = alloca i1, !mcsema_real_eip !131
  %FPU_PM_val = alloca i1, !mcsema_real_eip !131
  %FPU_PC_val = alloca i2, !mcsema_real_eip !131
  %FPU_RC_val = alloca i2, !mcsema_real_eip !131
  %FPU_X_val = alloca i1, !mcsema_real_eip !131
  %FPU_IE_val = alloca i1, !mcsema_real_eip !131
  %FPU_DE_val = alloca i1, !mcsema_real_eip !131
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !131
  %FPU_OE_val = alloca i1, !mcsema_real_eip !131
  %FPU_UE_val = alloca i1, !mcsema_real_eip !131
  %FPU_PE_val = alloca i1, !mcsema_real_eip !131
  %FPU_SF_val = alloca i1, !mcsema_real_eip !131
  %FPU_ES_val = alloca i1, !mcsema_real_eip !131
  %FPU_C0_val = alloca i1, !mcsema_real_eip !131
  %FPU_C1_val = alloca i1, !mcsema_real_eip !131
  %FPU_C2_val = alloca i1, !mcsema_real_eip !131
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !131
  %FPU_C3_val = alloca i1, !mcsema_real_eip !131
  %FPU_B_val = alloca i1, !mcsema_real_eip !131
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !131
  %DF_val = alloca i1, !mcsema_real_eip !131
  %OF_val = alloca i1, !mcsema_real_eip !131
  %SF_val = alloca i1, !mcsema_real_eip !131
  %CF_val = alloca i1, !mcsema_real_eip !131
  %AF_val = alloca i1, !mcsema_real_eip !131
  %PF_val = alloca i1, !mcsema_real_eip !131
  %ZF_val = alloca i1, !mcsema_real_eip !131
  %RIP_val = alloca i64, !mcsema_real_eip !131
  %R14_val = alloca i64, !mcsema_real_eip !131
  %R13_val = alloca i64, !mcsema_real_eip !131
  %R12_val = alloca i64, !mcsema_real_eip !131
  %R11_val = alloca i64, !mcsema_real_eip !131
  %R10_val = alloca i64, !mcsema_real_eip !131
  %R9_val = alloca i64, !mcsema_real_eip !131
  %R8_val = alloca i64, !mcsema_real_eip !131
  %RSP_val = alloca i64, !mcsema_real_eip !131
  %RBP_val = alloca i64, !mcsema_real_eip !131
  %RDI_val = alloca i64, !mcsema_real_eip !131
  %RSI_val = alloca i64, !mcsema_real_eip !131
  %RDX_val = alloca i64, !mcsema_real_eip !131
  %RCX_val = alloca i64, !mcsema_real_eip !131
  %RBX_val = alloca i64, !mcsema_real_eip !131
  %RAX_val = alloca i64, !mcsema_real_eip !131
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !131
  %1 = load i64, i64* %RAX, !mcsema_real_eip !131
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !131
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !131
  %2 = load i64, i64* %RBX, !mcsema_real_eip !131
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !131
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !131
  %3 = load i64, i64* %RCX, !mcsema_real_eip !131
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !131
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !131
  %4 = load i64, i64* %RDX, !mcsema_real_eip !131
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !131
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !131
  %5 = load i64, i64* %RSI, !mcsema_real_eip !131
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !131
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !131
  %6 = load i64, i64* %RDI, !mcsema_real_eip !131
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !131
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !131
  %7 = load i64, i64* %RSP, !mcsema_real_eip !131
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !131
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !131
  %8 = load i64, i64* %RBP, !mcsema_real_eip !131
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !131
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !131
  %9 = load i64, i64* %R8, !mcsema_real_eip !131
  store i64 %9, i64* %R8_val, !mcsema_real_eip !131
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !131
  %10 = load i64, i64* %R9, !mcsema_real_eip !131
  store i64 %10, i64* %R9_val, !mcsema_real_eip !131
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !131
  %11 = load i64, i64* %R10, !mcsema_real_eip !131
  store i64 %11, i64* %R10_val, !mcsema_real_eip !131
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !131
  %12 = load i64, i64* %R11, !mcsema_real_eip !131
  store i64 %12, i64* %R11_val, !mcsema_real_eip !131
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !131
  %13 = load i64, i64* %R12, !mcsema_real_eip !131
  store i64 %13, i64* %R12_val, !mcsema_real_eip !131
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !131
  %14 = load i64, i64* %R13, !mcsema_real_eip !131
  store i64 %14, i64* %R13_val, !mcsema_real_eip !131
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !131
  %15 = load i64, i64* %R14, !mcsema_real_eip !131
  store i64 %15, i64* %R14_val, !mcsema_real_eip !131
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !131
  %16 = load i64, i64* %R15, !mcsema_real_eip !131
  store i64 %16, i64* %R15_val, !mcsema_real_eip !131
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !131
  %17 = load i64, i64* %RIP, !mcsema_real_eip !131
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !131
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !131
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !131
  store i1 %18, i1* %CF_val, !mcsema_real_eip !131
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !131
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !131
  store i1 %19, i1* %PF_val, !mcsema_real_eip !131
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !131
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !131
  store i1 %20, i1* %AF_val, !mcsema_real_eip !131
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !131
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !131
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !131
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !131
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !131
  store i1 %22, i1* %SF_val, !mcsema_real_eip !131
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !131
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !131
  store i1 %23, i1* %OF_val, !mcsema_real_eip !131
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !131
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !131
  store i1 %24, i1* %DF_val, !mcsema_real_eip !131
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !131
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !131
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !131
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !131
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !131
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !131
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !131
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !131
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !131
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !131
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !131
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !131
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !131
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !131
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !131
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !131
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !131
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !131
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !131
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !131
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !131
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !131
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !131
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !131
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !131
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !131
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !131
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !131
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !131
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !131
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !131
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !131
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !131
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !131
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !131
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !131
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !131
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !131
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !131
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !131
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !131
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !131
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !131
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !131
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !131
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !131
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !131
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !131
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !131
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !131
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !131
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !131
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !131
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !131
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !131
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !131
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !131
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !131
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !131
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !131
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !131
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !131
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !131
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !131
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !131
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !131
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !131
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !131
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !131
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !131
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !131
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !131
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !131
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !131
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !131
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !131
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !131
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !131
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !131
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !131
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !131
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !131
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !131
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !131
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !131
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !131
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !131
  %59 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !131
  store i11 %59, i11* %FPU_FOPCODE_val, !mcsema_real_eip !131
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !131
  %60 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !131
  store i128 %60, i128* %XMM0_val, !mcsema_real_eip !131
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !131
  %61 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !131
  store i128 %61, i128* %XMM1_val, !mcsema_real_eip !131
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !131
  %62 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !131
  store i128 %62, i128* %XMM2_val, !mcsema_real_eip !131
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !131
  %63 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !131
  store i128 %63, i128* %XMM3_val, !mcsema_real_eip !131
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !131
  %64 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !131
  store i128 %64, i128* %XMM4_val, !mcsema_real_eip !131
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !131
  %65 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !131
  store i128 %65, i128* %XMM5_val, !mcsema_real_eip !131
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !131
  %66 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !131
  store i128 %66, i128* %XMM6_val, !mcsema_real_eip !131
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !131
  %67 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !131
  store i128 %67, i128* %XMM7_val, !mcsema_real_eip !131
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !131
  %68 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !131
  store i128 %68, i128* %XMM8_val, !mcsema_real_eip !131
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !131
  %69 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !131
  store i128 %69, i128* %XMM9_val, !mcsema_real_eip !131
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !131
  %70 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !131
  store i128 %70, i128* %XMM10_val, !mcsema_real_eip !131
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !131
  %71 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !131
  store i128 %71, i128* %XMM11_val, !mcsema_real_eip !131
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !131
  %72 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !131
  store i128 %72, i128* %XMM12_val, !mcsema_real_eip !131
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !131
  %73 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !131
  store i128 %73, i128* %XMM13_val, !mcsema_real_eip !131
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !131
  %74 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !131
  store i128 %74, i128* %XMM14_val, !mcsema_real_eip !131
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !131
  %75 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !131
  store i128 %75, i128* %XMM15_val, !mcsema_real_eip !131
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !131
  %76 = load i64, i64* %STACK_BASE, !mcsema_real_eip !131
  store i64 %76, i64* %STACK_BASE_val, !mcsema_real_eip !131
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !131
  %77 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !131
  store i64 %77, i64* %STACK_LIMIT_val, !mcsema_real_eip !131
  %78 = load i64, i64* %RBP_val, !mcsema_real_eip !131
  %79 = load i64, i64* %RSP_val, !mcsema_real_eip !131
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !131
  store i64 %78, i64* %81, !mcsema_real_eip !131
  store i64 %80, i64* %RSP_val, !mcsema_real_eip !131
  store i64 %80, i64* %RBP_val, !mcsema_real_eip !132
  %82 = load i64, i64* %RAX_val, !mcsema_real_eip !133
  %83 = add i64 %82, 13849
  %84 = xor i64 %83, %82, !mcsema_real_eip !133
  %85 = and i64 %84, 16
  %86 = icmp eq i64 %85, 0
  store i1 %86, i1* %AF_val, !mcsema_real_eip !133
  %87 = trunc i64 %83 to i8, !mcsema_real_eip !133
  %88 = tail call i8 @llvm.ctpop.i8(i8 %87), !mcsema_real_eip !133
  %89 = and i8 %88, 1
  %90 = icmp eq i8 %89, 0
  %91 = and i64 %83, 65535, !mcsema_real_eip !134
  store i1 false, i1* %SF_val, !mcsema_real_eip !134
  %92 = icmp eq i64 %91, 0, !mcsema_real_eip !134
  store i1 %92, i1* %ZF_val, !mcsema_real_eip !134
  store i1 %90, i1* %PF_val, !mcsema_real_eip !134
  store i1 false, i1* %OF_val, !mcsema_real_eip !134
  store i1 false, i1* %CF_val, !mcsema_real_eip !134
  store i64 %91, i64* bitcast (%1* @data_0x448 to i64*), !mcsema_real_eip !135
  store i64 %91, i64* %RCX_val, !mcsema_real_eip !136
  store i64 %91, i64* %RAX_val, !mcsema_real_eip !137
  %93 = load i64, i64* %RSP_val, !mcsema_real_eip !138
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !138
  %95 = load i64, i64* %94, !mcsema_real_eip !138
  store i64 %95, i64* %RBP_val, !mcsema_real_eip !138
  %96 = add i64 %93, 16, !mcsema_real_eip !139
  store i64 %96, i64* %RSP_val, !mcsema_real_eip !139
  %97 = load i64, i64* %RAX_val, !mcsema_real_eip !139
  store i64 %97, i64* %RAX, !mcsema_real_eip !139
  %98 = load i64, i64* %RBX_val, !mcsema_real_eip !139
  store i64 %98, i64* %RBX, !mcsema_real_eip !139
  %99 = load i64, i64* %RCX_val, !mcsema_real_eip !139
  store i64 %99, i64* %RCX, !mcsema_real_eip !139
  %100 = load i64, i64* %RDX_val, !mcsema_real_eip !139
  store i64 %100, i64* %RDX, !mcsema_real_eip !139
  %101 = load i64, i64* %RSI_val, !mcsema_real_eip !139
  store i64 %101, i64* %RSI, !mcsema_real_eip !139
  %102 = load i64, i64* %RDI_val, !mcsema_real_eip !139
  store i64 %102, i64* %RDI, !mcsema_real_eip !139
  %103 = load i64, i64* %RSP_val, !mcsema_real_eip !139
  store i64 %103, i64* %RSP, !mcsema_real_eip !139
  %104 = load i64, i64* %RBP_val, !mcsema_real_eip !139
  store i64 %104, i64* %RBP, !mcsema_real_eip !139
  %105 = load i64, i64* %R8_val, !mcsema_real_eip !139
  store i64 %105, i64* %R8, !mcsema_real_eip !139
  %106 = load i64, i64* %R9_val, !mcsema_real_eip !139
  store i64 %106, i64* %R9, !mcsema_real_eip !139
  %107 = load i64, i64* %R10_val, !mcsema_real_eip !139
  store i64 %107, i64* %R10, !mcsema_real_eip !139
  %108 = load i64, i64* %R11_val, !mcsema_real_eip !139
  store i64 %108, i64* %R11, !mcsema_real_eip !139
  %109 = load i64, i64* %R12_val, !mcsema_real_eip !139
  store i64 %109, i64* %R12, !mcsema_real_eip !139
  %110 = load i64, i64* %R13_val, !mcsema_real_eip !139
  store i64 %110, i64* %R13, !mcsema_real_eip !139
  %111 = load i64, i64* %R14_val, !mcsema_real_eip !139
  store i64 %111, i64* %R14, !mcsema_real_eip !139
  %112 = load i64, i64* %R15_val, !mcsema_real_eip !139
  store i64 %112, i64* %R15, !mcsema_real_eip !139
  %113 = load i64, i64* %RIP_val, !mcsema_real_eip !139
  store i64 %113, i64* %RIP, !mcsema_real_eip !139
  %114 = load i1, i1* %CF_val, !mcsema_real_eip !139
  store i1 %114, i1* %CF, align 1, !mcsema_real_eip !139
  %115 = load i1, i1* %PF_val, !mcsema_real_eip !139
  store i1 %115, i1* %PF, align 1, !mcsema_real_eip !139
  %116 = load i1, i1* %AF_val, !mcsema_real_eip !139
  store i1 %116, i1* %AF, align 1, !mcsema_real_eip !139
  %117 = load i1, i1* %ZF_val, !mcsema_real_eip !139
  store i1 %117, i1* %ZF, align 1, !mcsema_real_eip !139
  %118 = load i1, i1* %SF_val, !mcsema_real_eip !139
  store i1 %118, i1* %SF, align 1, !mcsema_real_eip !139
  %119 = load i1, i1* %OF_val, !mcsema_real_eip !139
  store i1 %119, i1* %OF, align 1, !mcsema_real_eip !139
  %120 = load i1, i1* %DF_val, !mcsema_real_eip !139
  store i1 %120, i1* %DF, align 1, !mcsema_real_eip !139
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !139
  %121 = load i1, i1* %FPU_B_val, !mcsema_real_eip !139
  store i1 %121, i1* %FPU_B, align 1, !mcsema_real_eip !139
  %122 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !139
  store i1 %122, i1* %FPU_C3, align 1, !mcsema_real_eip !139
  %123 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !139
  store i3 %123, i3* %FPU_TOP, align 1, !mcsema_real_eip !139
  %124 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !139
  store i1 %124, i1* %FPU_C2, align 1, !mcsema_real_eip !139
  %125 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !139
  store i1 %125, i1* %FPU_C1, align 1, !mcsema_real_eip !139
  %126 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !139
  store i1 %126, i1* %FPU_C0, align 1, !mcsema_real_eip !139
  %127 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !139
  store i1 %127, i1* %FPU_ES, align 1, !mcsema_real_eip !139
  %128 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !139
  store i1 %128, i1* %FPU_SF, align 1, !mcsema_real_eip !139
  %129 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !139
  store i1 %129, i1* %FPU_PE, align 1, !mcsema_real_eip !139
  %130 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !139
  store i1 %130, i1* %FPU_UE, align 1, !mcsema_real_eip !139
  %131 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !139
  store i1 %131, i1* %FPU_OE, align 1, !mcsema_real_eip !139
  %132 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !139
  store i1 %132, i1* %FPU_ZE, align 1, !mcsema_real_eip !139
  %133 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !139
  store i1 %133, i1* %FPU_DE, align 1, !mcsema_real_eip !139
  %134 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !139
  store i1 %134, i1* %FPU_IE, align 1, !mcsema_real_eip !139
  %135 = load i1, i1* %FPU_X_val, !mcsema_real_eip !139
  store i1 %135, i1* %FPU_X, align 1, !mcsema_real_eip !139
  %136 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !139
  store i2 %136, i2* %FPU_RC, align 1, !mcsema_real_eip !139
  %137 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !139
  store i2 %137, i2* %FPU_PC, align 1, !mcsema_real_eip !139
  %138 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !139
  store i1 %138, i1* %FPU_PM, align 1, !mcsema_real_eip !139
  %139 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !139
  store i1 %139, i1* %FPU_UM, align 1, !mcsema_real_eip !139
  %140 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !139
  store i1 %140, i1* %FPU_OM, align 1, !mcsema_real_eip !139
  %141 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !139
  store i1 %141, i1* %FPU_ZM, align 1, !mcsema_real_eip !139
  %142 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !139
  store i1 %142, i1* %FPU_DM, align 1, !mcsema_real_eip !139
  %143 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !139
  store i1 %143, i1* %FPU_IM, align 1, !mcsema_real_eip !139
  %144 = load i64, i64* %53, align 4
  store i64 %144, i64* %52, align 4
  %145 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !139
  store i16 %145, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !139
  %146 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !139
  store i64 %146, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !139
  %147 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !139
  store i16 %147, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !139
  %148 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !139
  store i64 %148, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !139
  %149 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !139
  store i11 %149, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !139
  %150 = load i128, i128* %XMM0_val, !mcsema_real_eip !139
  store i128 %150, i128* %XMM0, align 1, !mcsema_real_eip !139
  %151 = load i128, i128* %XMM1_val, !mcsema_real_eip !139
  store i128 %151, i128* %XMM1, align 1, !mcsema_real_eip !139
  %152 = load i128, i128* %XMM2_val, !mcsema_real_eip !139
  store i128 %152, i128* %XMM2, align 1, !mcsema_real_eip !139
  %153 = load i128, i128* %XMM3_val, !mcsema_real_eip !139
  store i128 %153, i128* %XMM3, align 1, !mcsema_real_eip !139
  %154 = load i128, i128* %XMM4_val, !mcsema_real_eip !139
  store i128 %154, i128* %XMM4, align 1, !mcsema_real_eip !139
  %155 = load i128, i128* %XMM5_val, !mcsema_real_eip !139
  store i128 %155, i128* %XMM5, align 1, !mcsema_real_eip !139
  %156 = load i128, i128* %XMM6_val, !mcsema_real_eip !139
  store i128 %156, i128* %XMM6, align 1, !mcsema_real_eip !139
  %157 = load i128, i128* %XMM7_val, !mcsema_real_eip !139
  store i128 %157, i128* %XMM7, align 1, !mcsema_real_eip !139
  %158 = load i128, i128* %XMM8_val, !mcsema_real_eip !139
  store i128 %158, i128* %XMM8, align 1, !mcsema_real_eip !139
  %159 = load i128, i128* %XMM9_val, !mcsema_real_eip !139
  store i128 %159, i128* %XMM9, align 1, !mcsema_real_eip !139
  %160 = load i128, i128* %XMM10_val, !mcsema_real_eip !139
  store i128 %160, i128* %XMM10, align 1, !mcsema_real_eip !139
  %161 = load i128, i128* %XMM11_val, !mcsema_real_eip !139
  store i128 %161, i128* %XMM11, align 1, !mcsema_real_eip !139
  %162 = load i128, i128* %XMM12_val, !mcsema_real_eip !139
  store i128 %162, i128* %XMM12, align 1, !mcsema_real_eip !139
  %163 = load i128, i128* %XMM13_val, !mcsema_real_eip !139
  store i128 %163, i128* %XMM13, align 1, !mcsema_real_eip !139
  %164 = load i128, i128* %XMM14_val, !mcsema_real_eip !139
  store i128 %164, i128* %XMM14, align 1, !mcsema_real_eip !139
  %165 = load i128, i128* %XMM15_val, !mcsema_real_eip !139
  store i128 %165, i128* %XMM15, align 1, !mcsema_real_eip !139
  %166 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !139
  store i64 %166, i64* %STACK_BASE, align 1, !mcsema_real_eip !139
  %167 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !139
  store i64 %167, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !139
  ret void, !mcsema_real_eip !139
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_290(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 656}
!3 = !{i64 657}
!4 = !{i64 660}
!5 = !{i64 664}
!6 = !{i64 671}
!7 = !{i64 678}
!8 = !{i64 682}
!9 = !{i64 688}
!10 = !{i64 691}
!11 = !{i64 696}
!12 = !{i64 699}
!13 = !{i64 702}
!14 = !{i64 705}
!15 = !{i64 710}
!16 = !{i64 712}
!17 = !{i64 716}
!18 = !{i64 717}
!19 = !{i64 0}
!20 = !{i64 1}
!21 = !{i64 4}
!22 = !{i64 16}
!23 = !{i64 17}
!24 = !{i64 352}
!25 = !{i64 353}
!26 = !{i64 356}
!27 = !{i64 360}
!28 = !{i64 363}
!29 = !{i64 379}
!30 = !{i64 387}
!31 = !{i64 393}
!32 = !{i64 403}
!33 = !{i64 585}
!34 = !{i64 545}
!35 = !{i64 552}
!36 = !{i64 559}
!37 = !{i64 565}
!38 = !{i64 572}
!39 = !{i64 579}
!40 = !{i64 595}
!41 = !{i64 597}
!42 = !{i64 602}
!43 = !{i64 400}
!44 = !{i64 410}
!45 = !{i64 605}
!46 = !{i64 615}
!47 = !{i64 618}
!48 = !{i64 621}
!49 = !{i64 624}
!50 = !{i64 631}
!51 = !{i64 633}
!52 = !{i64 638}
!53 = !{i64 641}
!54 = !{i64 645}
!55 = !{i64 646}
!56 = !{i64 416}
!57 = !{i64 420}
!58 = !{i64 427}
!59 = !{i64 430}
!60 = !{i64 433}
!61 = !{i64 436}
!62 = !{i64 443}
!63 = !{i64 523}
!64 = !{i64 530}
!65 = !{i64 540}
!66 = !{i64 449}
!67 = !{i64 453}
!68 = !{i64 460}
!69 = !{i64 463}
!70 = !{i64 466}
!71 = !{i64 469}
!72 = !{i64 472}
!73 = !{i64 479}
!74 = !{i64 483}
!75 = !{i64 490}
!76 = !{i64 493}
!77 = !{i64 496}
!78 = !{i64 499}
!79 = !{i64 502}
!80 = !{i64 509}
!81 = !{i64 512}
!82 = !{i64 515}
!83 = !{i64 518}
!84 = !{i64 96}
!85 = !{i64 97}
!86 = !{i64 100}
!87 = !{i64 104}
!88 = !{i64 109}
!89 = !{i64 120}
!90 = !{i64 131}
!91 = !{i64 138}
!92 = !{i64 145}
!93 = !{i64 334}
!94 = !{i64 151}
!95 = !{i64 156}
!96 = !{i64 161}
!97 = !{i64 163}
!98 = !{i64 166}
!99 = !{i64 170}
!100 = !{i64 174}
!101 = !{i64 178}
!102 = !{i64 182}
!103 = !{i64 184}
!104 = !{i64 188}
!105 = !{i64 191}
!106 = !{i64 198}
!107 = !{i64 201}
!108 = !{i64 208}
!109 = !{i64 210}
!110 = !{i64 214}
!111 = !{i64 221}
!112 = !{i64 225}
!113 = !{i64 232}
!114 = !{i64 239}
!115 = !{i64 268}
!116 = !{i64 272}
!117 = !{i64 338}
!118 = !{i64 339}
!119 = !{i64 256}
!120 = !{i64 263}
!121 = !{i64 279}
!122 = !{i64 286}
!123 = !{i64 292}
!124 = !{i64 296}
!125 = !{i64 303}
!126 = !{i64 315}
!127 = !{i64 320}
!128 = !{i64 323}
!129 = !{i64 326}
!130 = !{i64 329}
!131 = !{i64 32}
!132 = !{i64 33}
!133 = !{i64 48}
!134 = !{i64 54}
!135 = !{i64 60}
!136 = !{i64 76}
!137 = !{i64 78}
!138 = !{i64 80}
!139 = !{i64 81}
