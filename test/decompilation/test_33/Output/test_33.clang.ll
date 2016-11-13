; ModuleID = 'Output/test_33.clang.bc'
source_filename = "Output/test_33.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [15 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x100 = internal constant %0 <{ [15 x i8] c"Ack(3,%d): %d\0A\00" }>, align 64

define internal x86_64_sysvcc void @sub_80(%struct.regs*) {
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
  br i1 %127, label %block_0xa0, label %block_0xb5, !mcsema_real_eip !9

block_0xa0:                                       ; preds = %entry
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
  br label %block_0xc2, !mcsema_real_eip !14

block_0xb5:                                       ; preds = %entry
  store i64 8, i64* %RAX_val, !mcsema_real_eip !15
  %141 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %142 = add i64 %141, -24, !mcsema_real_eip !16
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !16
  %144 = bitcast i64* %143 to i32*
  store i32 8, i32* %144, !mcsema_real_eip !16
  br label %block_0xc2, !mcsema_real_eip !17

block_0xc2:                                       ; preds = %block_0xb5, %block_0xa0
  %145 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  %146 = add i64 %145, -24, !mcsema_real_eip !18
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !18
  %148 = bitcast i64* %147 to i32*
  %149 = load i32, i32* %148, !mcsema_real_eip !18
  %150 = zext i32 %149 to i64, !mcsema_real_eip !18
  store i64 %150, i64* %RAX_val, !mcsema_real_eip !18
  store i64 3, i64* %RDI_val, !mcsema_real_eip !19
  %151 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %152 = add i64 %151, -20, !mcsema_real_eip !20
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !20
  %154 = bitcast i64* %153 to i32*
  store i32 %149, i32* %154, !mcsema_real_eip !20
  %155 = load i64, i64* %RBP_val, !mcsema_real_eip !21
  %156 = add i64 %155, -20, !mcsema_real_eip !21
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !21
  %158 = bitcast i64* %157 to i32*
  %159 = load i32, i32* %158, !mcsema_real_eip !21
  %160 = zext i32 %159 to i64, !mcsema_real_eip !21
  store i64 %160, i64* %RSI_val, !mcsema_real_eip !21
  %161 = load i64, i64* %RBP_val, !mcsema_real_eip !22
  %162 = add i64 %161, -20, !mcsema_real_eip !22
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !22
  %164 = bitcast i64* %163 to i32*
  %165 = load i32, i32* %164, !mcsema_real_eip !22
  %166 = zext i32 %165 to i64, !mcsema_real_eip !22
  store i64 %166, i64* %RAX_val, !mcsema_real_eip !22
  %167 = load i64, i64* %RBP_val, !mcsema_real_eip !23
  %168 = add i64 %167, -28, !mcsema_real_eip !23
  %169 = inttoptr i64 %168 to i64*, !mcsema_real_eip !23
  %170 = load i64, i64* %RSI_val, !mcsema_real_eip !23
  %171 = trunc i64 %170 to i32, !mcsema_real_eip !23
  %172 = bitcast i64* %169 to i32*
  store i32 %171, i32* %172, !mcsema_real_eip !23
  %173 = load i64, i64* %RAX_val, !mcsema_real_eip !24
  %174 = and i64 %173, 4294967295
  store i64 %174, i64* %RSI_val, !mcsema_real_eip !24
  %175 = load i64, i64* %RSP_val, !mcsema_real_eip !25
  %176 = add i64 %175, -8
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !25
  store i64 -4981261766360305936, i64* %177, !mcsema_real_eip !25
  store i64 %176, i64* %RSP_val, !mcsema_real_eip !25
  %178 = load i64, i64* %RAX_val, !mcsema_real_eip !25
  store i64 %178, i64* %RAX, !mcsema_real_eip !25
  %179 = load i64, i64* %RBX_val, !mcsema_real_eip !25
  store i64 %179, i64* %RBX, !mcsema_real_eip !25
  %180 = load i64, i64* %RCX_val, !mcsema_real_eip !25
  store i64 %180, i64* %RCX, !mcsema_real_eip !25
  %181 = load i64, i64* %RDX_val, !mcsema_real_eip !25
  store i64 %181, i64* %RDX, !mcsema_real_eip !25
  %182 = load i64, i64* %RSI_val, !mcsema_real_eip !25
  store i64 %182, i64* %RSI, !mcsema_real_eip !25
  %183 = load i64, i64* %RDI_val, !mcsema_real_eip !25
  store i64 %183, i64* %RDI, !mcsema_real_eip !25
  %184 = load i64, i64* %RSP_val, !mcsema_real_eip !25
  store i64 %184, i64* %RSP, !mcsema_real_eip !25
  %185 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  store i64 %185, i64* %RBP, !mcsema_real_eip !25
  %186 = load i64, i64* %R8_val, !mcsema_real_eip !25
  store i64 %186, i64* %R8, !mcsema_real_eip !25
  %187 = load i64, i64* %R9_val, !mcsema_real_eip !25
  store i64 %187, i64* %R9, !mcsema_real_eip !25
  %188 = load i64, i64* %R10_val, !mcsema_real_eip !25
  store i64 %188, i64* %R10, !mcsema_real_eip !25
  %189 = load i64, i64* %R11_val, !mcsema_real_eip !25
  store i64 %189, i64* %R11, !mcsema_real_eip !25
  %190 = load i64, i64* %R12_val, !mcsema_real_eip !25
  store i64 %190, i64* %R12, !mcsema_real_eip !25
  %191 = load i64, i64* %R13_val, !mcsema_real_eip !25
  store i64 %191, i64* %R13, !mcsema_real_eip !25
  %192 = load i64, i64* %R14_val, !mcsema_real_eip !25
  store i64 %192, i64* %R14, !mcsema_real_eip !25
  %193 = load i64, i64* %R15_val, !mcsema_real_eip !25
  store i64 %193, i64* %R15, !mcsema_real_eip !25
  %194 = load i64, i64* %RIP_val, !mcsema_real_eip !25
  store i64 %194, i64* %RIP, !mcsema_real_eip !25
  %195 = load i1, i1* %CF_val, !mcsema_real_eip !25
  store i1 %195, i1* %CF, align 1, !mcsema_real_eip !25
  %196 = load i1, i1* %PF_val, !mcsema_real_eip !25
  store i1 %196, i1* %PF, align 1, !mcsema_real_eip !25
  %197 = load i1, i1* %AF_val, !mcsema_real_eip !25
  store i1 %197, i1* %AF, align 1, !mcsema_real_eip !25
  %198 = load i1, i1* %ZF_val, !mcsema_real_eip !25
  store i1 %198, i1* %ZF, align 1, !mcsema_real_eip !25
  %199 = load i1, i1* %SF_val, !mcsema_real_eip !25
  store i1 %199, i1* %SF, align 1, !mcsema_real_eip !25
  %200 = load i1, i1* %OF_val, !mcsema_real_eip !25
  store i1 %200, i1* %OF, align 1, !mcsema_real_eip !25
  %201 = load i1, i1* %DF_val, !mcsema_real_eip !25
  store i1 %201, i1* %DF, align 1, !mcsema_real_eip !25
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !25
  %202 = load i1, i1* %FPU_B_val, !mcsema_real_eip !25
  store i1 %202, i1* %FPU_B, align 1, !mcsema_real_eip !25
  %203 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !25
  store i1 %203, i1* %FPU_C3, align 1, !mcsema_real_eip !25
  %204 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !25
  store i3 %204, i3* %FPU_TOP, align 1, !mcsema_real_eip !25
  %205 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !25
  store i1 %205, i1* %FPU_C2, align 1, !mcsema_real_eip !25
  %206 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !25
  store i1 %206, i1* %FPU_C1, align 1, !mcsema_real_eip !25
  %207 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !25
  store i1 %207, i1* %FPU_C0, align 1, !mcsema_real_eip !25
  %208 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !25
  store i1 %208, i1* %FPU_ES, align 1, !mcsema_real_eip !25
  %209 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !25
  store i1 %209, i1* %FPU_SF, align 1, !mcsema_real_eip !25
  %210 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !25
  store i1 %210, i1* %FPU_PE, align 1, !mcsema_real_eip !25
  %211 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !25
  store i1 %211, i1* %FPU_UE, align 1, !mcsema_real_eip !25
  %212 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !25
  store i1 %212, i1* %FPU_OE, align 1, !mcsema_real_eip !25
  %213 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !25
  store i1 %213, i1* %FPU_ZE, align 1, !mcsema_real_eip !25
  %214 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !25
  store i1 %214, i1* %FPU_DE, align 1, !mcsema_real_eip !25
  %215 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !25
  store i1 %215, i1* %FPU_IE, align 1, !mcsema_real_eip !25
  %216 = load i1, i1* %FPU_X_val, !mcsema_real_eip !25
  store i1 %216, i1* %FPU_X, align 1, !mcsema_real_eip !25
  %217 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !25
  store i2 %217, i2* %FPU_RC, align 1, !mcsema_real_eip !25
  %218 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !25
  store i2 %218, i2* %FPU_PC, align 1, !mcsema_real_eip !25
  %219 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !25
  store i1 %219, i1* %FPU_PM, align 1, !mcsema_real_eip !25
  %220 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !25
  store i1 %220, i1* %FPU_UM, align 1, !mcsema_real_eip !25
  %221 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !25
  store i1 %221, i1* %FPU_OM, align 1, !mcsema_real_eip !25
  %222 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !25
  store i1 %222, i1* %FPU_ZM, align 1, !mcsema_real_eip !25
  %223 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !25
  store i1 %223, i1* %FPU_DM, align 1, !mcsema_real_eip !25
  %224 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !25
  store i1 %224, i1* %FPU_IM, align 1, !mcsema_real_eip !25
  %225 = load i64, i64* %53, align 4
  store i64 %225, i64* %52, align 4
  %226 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !25
  store i16 %226, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !25
  %227 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !25
  store i64 %227, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !25
  %228 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !25
  store i16 %228, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !25
  %229 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !25
  store i64 %229, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !25
  %230 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !25
  store i11 %230, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !25
  %231 = load i128, i128* %XMM0_val, !mcsema_real_eip !25
  store i128 %231, i128* %XMM0, align 1, !mcsema_real_eip !25
  %232 = load i128, i128* %XMM1_val, !mcsema_real_eip !25
  store i128 %232, i128* %XMM1, align 1, !mcsema_real_eip !25
  %233 = load i128, i128* %XMM2_val, !mcsema_real_eip !25
  store i128 %233, i128* %XMM2, align 1, !mcsema_real_eip !25
  %234 = load i128, i128* %XMM3_val, !mcsema_real_eip !25
  store i128 %234, i128* %XMM3, align 1, !mcsema_real_eip !25
  %235 = load i128, i128* %XMM4_val, !mcsema_real_eip !25
  store i128 %235, i128* %XMM4, align 1, !mcsema_real_eip !25
  %236 = load i128, i128* %XMM5_val, !mcsema_real_eip !25
  store i128 %236, i128* %XMM5, align 1, !mcsema_real_eip !25
  %237 = load i128, i128* %XMM6_val, !mcsema_real_eip !25
  store i128 %237, i128* %XMM6, align 1, !mcsema_real_eip !25
  %238 = load i128, i128* %XMM7_val, !mcsema_real_eip !25
  store i128 %238, i128* %XMM7, align 1, !mcsema_real_eip !25
  %239 = load i128, i128* %XMM8_val, !mcsema_real_eip !25
  store i128 %239, i128* %XMM8, align 1, !mcsema_real_eip !25
  %240 = load i128, i128* %XMM9_val, !mcsema_real_eip !25
  store i128 %240, i128* %XMM9, align 1, !mcsema_real_eip !25
  %241 = load i128, i128* %XMM10_val, !mcsema_real_eip !25
  store i128 %241, i128* %XMM10, align 1, !mcsema_real_eip !25
  %242 = load i128, i128* %XMM11_val, !mcsema_real_eip !25
  store i128 %242, i128* %XMM11, align 1, !mcsema_real_eip !25
  %243 = load i128, i128* %XMM12_val, !mcsema_real_eip !25
  store i128 %243, i128* %XMM12, align 1, !mcsema_real_eip !25
  %244 = load i128, i128* %XMM13_val, !mcsema_real_eip !25
  store i128 %244, i128* %XMM13, align 1, !mcsema_real_eip !25
  %245 = load i128, i128* %XMM14_val, !mcsema_real_eip !25
  store i128 %245, i128* %XMM14, align 1, !mcsema_real_eip !25
  %246 = load i128, i128* %XMM15_val, !mcsema_real_eip !25
  store i128 %246, i128* %XMM15, align 1, !mcsema_real_eip !25
  %247 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !25
  store i64 %247, i64* %STACK_BASE, align 1, !mcsema_real_eip !25
  %248 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !25
  store i64 %248, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !25
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !25
  %249 = load i64, i64* %RAX, !mcsema_real_eip !25
  store i64 %249, i64* %RAX_val, !mcsema_real_eip !25
  %250 = load i64, i64* %RBX, !mcsema_real_eip !25
  store i64 %250, i64* %RBX_val, !mcsema_real_eip !25
  %251 = load i64, i64* %RCX, !mcsema_real_eip !25
  store i64 %251, i64* %RCX_val, !mcsema_real_eip !25
  %252 = load i64, i64* %RDX, !mcsema_real_eip !25
  store i64 %252, i64* %RDX_val, !mcsema_real_eip !25
  %253 = load i64, i64* %RSI, !mcsema_real_eip !25
  store i64 %253, i64* %RSI_val, !mcsema_real_eip !25
  %254 = load i64, i64* %RDI, !mcsema_real_eip !25
  store i64 %254, i64* %RDI_val, !mcsema_real_eip !25
  %255 = load i64, i64* %RSP, !mcsema_real_eip !25
  store i64 %255, i64* %RSP_val, !mcsema_real_eip !25
  %256 = load i64, i64* %RBP, !mcsema_real_eip !25
  store i64 %256, i64* %RBP_val, !mcsema_real_eip !25
  %257 = load i64, i64* %R8, !mcsema_real_eip !25
  store i64 %257, i64* %R8_val, !mcsema_real_eip !25
  %258 = load i64, i64* %R9, !mcsema_real_eip !25
  store i64 %258, i64* %R9_val, !mcsema_real_eip !25
  %259 = load i64, i64* %R10, !mcsema_real_eip !25
  store i64 %259, i64* %R10_val, !mcsema_real_eip !25
  %260 = load i64, i64* %R11, !mcsema_real_eip !25
  store i64 %260, i64* %R11_val, !mcsema_real_eip !25
  %261 = load i64, i64* %R12, !mcsema_real_eip !25
  store i64 %261, i64* %R12_val, !mcsema_real_eip !25
  %262 = load i64, i64* %R13, !mcsema_real_eip !25
  store i64 %262, i64* %R13_val, !mcsema_real_eip !25
  %263 = load i64, i64* %R14, !mcsema_real_eip !25
  store i64 %263, i64* %R14_val, !mcsema_real_eip !25
  %264 = load i64, i64* %R15, !mcsema_real_eip !25
  store i64 %264, i64* %R15_val, !mcsema_real_eip !25
  %265 = load i64, i64* %RIP, !mcsema_real_eip !25
  store i64 %265, i64* %RIP_val, !mcsema_real_eip !25
  %266 = load i1, i1* %CF, align 1, !mcsema_real_eip !25
  store i1 %266, i1* %CF_val, !mcsema_real_eip !25
  %267 = load i1, i1* %PF, align 1, !mcsema_real_eip !25
  store i1 %267, i1* %PF_val, !mcsema_real_eip !25
  %268 = load i1, i1* %AF, align 1, !mcsema_real_eip !25
  store i1 %268, i1* %AF_val, !mcsema_real_eip !25
  %269 = load i1, i1* %ZF, align 1, !mcsema_real_eip !25
  store i1 %269, i1* %ZF_val, !mcsema_real_eip !25
  %270 = load i1, i1* %SF, align 1, !mcsema_real_eip !25
  store i1 %270, i1* %SF_val, !mcsema_real_eip !25
  %271 = load i1, i1* %OF, align 1, !mcsema_real_eip !25
  store i1 %271, i1* %OF_val, !mcsema_real_eip !25
  %272 = load i1, i1* %DF, align 1, !mcsema_real_eip !25
  store i1 %272, i1* %DF_val, !mcsema_real_eip !25
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !25
  %273 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !25
  store i1 %273, i1* %FPU_B_val, !mcsema_real_eip !25
  %274 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !25
  store i1 %274, i1* %FPU_C3_val, !mcsema_real_eip !25
  %275 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !25
  store i3 %275, i3* %FPU_TOP_val, !mcsema_real_eip !25
  %276 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !25
  store i1 %276, i1* %FPU_C2_val, !mcsema_real_eip !25
  %277 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !25
  store i1 %277, i1* %FPU_C1_val, !mcsema_real_eip !25
  %278 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !25
  store i1 %278, i1* %FPU_C0_val, !mcsema_real_eip !25
  %279 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !25
  store i1 %279, i1* %FPU_ES_val, !mcsema_real_eip !25
  %280 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !25
  store i1 %280, i1* %FPU_SF_val, !mcsema_real_eip !25
  %281 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !25
  store i1 %281, i1* %FPU_PE_val, !mcsema_real_eip !25
  %282 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !25
  store i1 %282, i1* %FPU_UE_val, !mcsema_real_eip !25
  %283 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !25
  store i1 %283, i1* %FPU_OE_val, !mcsema_real_eip !25
  %284 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !25
  store i1 %284, i1* %FPU_ZE_val, !mcsema_real_eip !25
  %285 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !25
  store i1 %285, i1* %FPU_DE_val, !mcsema_real_eip !25
  %286 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !25
  store i1 %286, i1* %FPU_IE_val, !mcsema_real_eip !25
  %287 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !25
  store i1 %287, i1* %FPU_X_val, !mcsema_real_eip !25
  %288 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !25
  store i2 %288, i2* %FPU_RC_val, !mcsema_real_eip !25
  %289 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !25
  store i2 %289, i2* %FPU_PC_val, !mcsema_real_eip !25
  %290 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !25
  store i1 %290, i1* %FPU_PM_val, !mcsema_real_eip !25
  %291 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !25
  store i1 %291, i1* %FPU_UM_val, !mcsema_real_eip !25
  %292 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !25
  store i1 %292, i1* %FPU_OM_val, !mcsema_real_eip !25
  %293 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !25
  store i1 %293, i1* %FPU_ZM_val, !mcsema_real_eip !25
  %294 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !25
  store i1 %294, i1* %FPU_DM_val, !mcsema_real_eip !25
  %295 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !25
  store i1 %295, i1* %FPU_IM_val, !mcsema_real_eip !25
  %296 = load i64, i64* %52, align 4
  store i64 %296, i64* %53, align 4
  %297 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !25
  store i16 %297, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !25
  %298 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !25
  store i64 %298, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !25
  %299 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !25
  store i16 %299, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !25
  %300 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !25
  store i64 %300, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !25
  %301 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !25
  store i11 %301, i11* %FPU_FOPCODE_val, !mcsema_real_eip !25
  %302 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !25
  store i128 %302, i128* %XMM0_val, !mcsema_real_eip !25
  %303 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !25
  store i128 %303, i128* %XMM1_val, !mcsema_real_eip !25
  %304 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !25
  store i128 %304, i128* %XMM2_val, !mcsema_real_eip !25
  %305 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !25
  store i128 %305, i128* %XMM3_val, !mcsema_real_eip !25
  %306 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !25
  store i128 %306, i128* %XMM4_val, !mcsema_real_eip !25
  %307 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !25
  store i128 %307, i128* %XMM5_val, !mcsema_real_eip !25
  %308 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !25
  store i128 %308, i128* %XMM6_val, !mcsema_real_eip !25
  %309 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !25
  store i128 %309, i128* %XMM7_val, !mcsema_real_eip !25
  %310 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !25
  store i128 %310, i128* %XMM8_val, !mcsema_real_eip !25
  %311 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !25
  store i128 %311, i128* %XMM9_val, !mcsema_real_eip !25
  %312 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !25
  store i128 %312, i128* %XMM10_val, !mcsema_real_eip !25
  %313 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !25
  store i128 %313, i128* %XMM11_val, !mcsema_real_eip !25
  %314 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !25
  store i128 %314, i128* %XMM12_val, !mcsema_real_eip !25
  %315 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !25
  store i128 %315, i128* %XMM13_val, !mcsema_real_eip !25
  %316 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !25
  store i128 %316, i128* %XMM14_val, !mcsema_real_eip !25
  %317 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !25
  store i128 %317, i128* %XMM15_val, !mcsema_real_eip !25
  %318 = load i64, i64* %STACK_BASE, !mcsema_real_eip !25
  store i64 %318, i64* %STACK_BASE_val, !mcsema_real_eip !25
  %319 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !25
  store i64 %319, i64* %STACK_LIMIT_val, !mcsema_real_eip !25
  store i64 ptrtoint (%0* @data_0x100 to i64), i64* %RDI_val, !mcsema_real_eip !26
  %320 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %321 = add i64 %320, -28, !mcsema_real_eip !27
  %322 = inttoptr i64 %321 to i64*, !mcsema_real_eip !27
  %323 = bitcast i64* %322 to i32*
  %324 = load i32, i32* %323, !mcsema_real_eip !27
  %325 = zext i32 %324 to i64, !mcsema_real_eip !27
  store i64 %325, i64* %RSI_val, !mcsema_real_eip !27
  %326 = load i64, i64* %RAX_val, !mcsema_real_eip !28
  %327 = and i64 %326, 4294967295
  store i64 %327, i64* %RDX_val, !mcsema_real_eip !28
  %328 = and i64 %326, -256, !mcsema_real_eip !29
  store i64 %328, i64* %RAX_val, !mcsema_real_eip !29
  %329 = load i64, i64* %RDI_val, !mcsema_real_eip !30
  %330 = load i64, i64* %RSI_val, !mcsema_real_eip !30
  %331 = load i64, i64* %RCX_val, !mcsema_real_eip !30
  %332 = load i64, i64* %R8_val, !mcsema_real_eip !30
  %333 = load i64, i64* %R9_val, !mcsema_real_eip !30
  %334 = load i64, i64* %RSP_val, !mcsema_real_eip !30
  %335 = inttoptr i64 %334 to i64*, !mcsema_real_eip !30
  %336 = load i64, i64* %335, !mcsema_real_eip !30
  %337 = add i64 %334, 8, !mcsema_real_eip !30
  %338 = inttoptr i64 %337 to i64*, !mcsema_real_eip !30
  %339 = load i64, i64* %338, !mcsema_real_eip !30
  %340 = add i64 %334, 16, !mcsema_real_eip !30
  %341 = inttoptr i64 %340 to i64*, !mcsema_real_eip !30
  %342 = load i64, i64* %341, !mcsema_real_eip !30
  %343 = add i64 %334, 24, !mcsema_real_eip !30
  %344 = inttoptr i64 %343 to i64*, !mcsema_real_eip !30
  %345 = load i64, i64* %344, !mcsema_real_eip !30
  %346 = add i64 %334, 32, !mcsema_real_eip !30
  %347 = inttoptr i64 %346 to i64*, !mcsema_real_eip !30
  %348 = load i64, i64* %347, !mcsema_real_eip !30
  %349 = add i64 %334, 40, !mcsema_real_eip !30
  %350 = inttoptr i64 %349 to i64*, !mcsema_real_eip !30
  %351 = load i64, i64* %350, !mcsema_real_eip !30
  %352 = tail call x86_64_sysvcc i64 @printf(i64 %329, i64 %330, i64 %327, i64 %331, i64 %332, i64 %333, i64 %336, i64 %339, i64 %342, i64 %345, i64 %348, i64 %351), !mcsema_real_eip !30
  store i64 %352, i64* %RAX_val, !mcsema_real_eip !30
  store i64 0, i64* %RDX_val, !mcsema_real_eip !31
  %353 = load i64, i64* %RBP_val, !mcsema_real_eip !32
  %354 = add i64 %353, -32, !mcsema_real_eip !32
  %355 = inttoptr i64 %354 to i64*, !mcsema_real_eip !32
  %356 = trunc i64 %352 to i32, !mcsema_real_eip !32
  %357 = bitcast i64* %355 to i32*
  store i32 %356, i32* %357, !mcsema_real_eip !32
  %358 = load i64, i64* %RDX_val, !mcsema_real_eip !33
  %359 = and i64 %358, 4294967295
  store i64 %359, i64* %RAX_val, !mcsema_real_eip !33
  %360 = load i64, i64* %RSP_val, !mcsema_real_eip !34
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %360, i64 32)
  %361 = extractvalue { i64, i1 } %uadd, 0
  %362 = xor i64 %361, %360, !mcsema_real_eip !34
  %363 = and i64 %362, 16, !mcsema_real_eip !34
  %364 = icmp ne i64 %363, 0, !mcsema_real_eip !34
  store i1 %364, i1* %AF_val, !mcsema_real_eip !34
  %365 = icmp slt i64 %361, 0
  store i1 %365, i1* %SF_val, !mcsema_real_eip !34
  %366 = icmp eq i64 %361, 0, !mcsema_real_eip !34
  store i1 %366, i1* %ZF_val, !mcsema_real_eip !34
  %367 = xor i64 %360, -9223372036854775808, !mcsema_real_eip !34
  %368 = and i64 %362, %367, !mcsema_real_eip !34
  %369 = icmp slt i64 %368, 0
  store i1 %369, i1* %OF_val, !mcsema_real_eip !34
  %370 = trunc i64 %361 to i8, !mcsema_real_eip !34
  %371 = tail call i8 @llvm.ctpop.i8(i8 %370), !mcsema_real_eip !34
  %372 = and i8 %371, 1
  %373 = icmp eq i8 %372, 0
  store i1 %373, i1* %PF_val, !mcsema_real_eip !34
  %374 = extractvalue { i64, i1 } %uadd, 1
  store i1 %374, i1* %CF_val, !mcsema_real_eip !34
  store i64 %361, i64* %RSP_val, !mcsema_real_eip !34
  %375 = inttoptr i64 %361 to i64*, !mcsema_real_eip !35
  %376 = load i64, i64* %375, !mcsema_real_eip !35
  store i64 %376, i64* %RBP_val, !mcsema_real_eip !35
  %377 = add i64 %361, 16, !mcsema_real_eip !36
  store i64 %377, i64* %RSP_val, !mcsema_real_eip !36
  %378 = load i64, i64* %RAX_val, !mcsema_real_eip !36
  store i64 %378, i64* %RAX, !mcsema_real_eip !36
  %379 = load i64, i64* %RBX_val, !mcsema_real_eip !36
  store i64 %379, i64* %RBX, !mcsema_real_eip !36
  %380 = load i64, i64* %RCX_val, !mcsema_real_eip !36
  store i64 %380, i64* %RCX, !mcsema_real_eip !36
  %381 = load i64, i64* %RDX_val, !mcsema_real_eip !36
  store i64 %381, i64* %RDX, !mcsema_real_eip !36
  %382 = load i64, i64* %RSI_val, !mcsema_real_eip !36
  store i64 %382, i64* %RSI, !mcsema_real_eip !36
  %383 = load i64, i64* %RDI_val, !mcsema_real_eip !36
  store i64 %383, i64* %RDI, !mcsema_real_eip !36
  %384 = load i64, i64* %RSP_val, !mcsema_real_eip !36
  store i64 %384, i64* %RSP, !mcsema_real_eip !36
  %385 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  store i64 %385, i64* %RBP, !mcsema_real_eip !36
  %386 = load i64, i64* %R8_val, !mcsema_real_eip !36
  store i64 %386, i64* %R8, !mcsema_real_eip !36
  %387 = load i64, i64* %R9_val, !mcsema_real_eip !36
  store i64 %387, i64* %R9, !mcsema_real_eip !36
  %388 = load i64, i64* %R10_val, !mcsema_real_eip !36
  store i64 %388, i64* %R10, !mcsema_real_eip !36
  %389 = load i64, i64* %R11_val, !mcsema_real_eip !36
  store i64 %389, i64* %R11, !mcsema_real_eip !36
  %390 = load i64, i64* %R12_val, !mcsema_real_eip !36
  store i64 %390, i64* %R12, !mcsema_real_eip !36
  %391 = load i64, i64* %R13_val, !mcsema_real_eip !36
  store i64 %391, i64* %R13, !mcsema_real_eip !36
  %392 = load i64, i64* %R14_val, !mcsema_real_eip !36
  store i64 %392, i64* %R14, !mcsema_real_eip !36
  %393 = load i64, i64* %R15_val, !mcsema_real_eip !36
  store i64 %393, i64* %R15, !mcsema_real_eip !36
  %394 = load i64, i64* %RIP_val, !mcsema_real_eip !36
  store i64 %394, i64* %RIP, !mcsema_real_eip !36
  %395 = load i1, i1* %CF_val, !mcsema_real_eip !36
  store i1 %395, i1* %CF, align 1, !mcsema_real_eip !36
  %396 = load i1, i1* %PF_val, !mcsema_real_eip !36
  store i1 %396, i1* %PF, align 1, !mcsema_real_eip !36
  %397 = load i1, i1* %AF_val, !mcsema_real_eip !36
  store i1 %397, i1* %AF, align 1, !mcsema_real_eip !36
  %398 = load i1, i1* %ZF_val, !mcsema_real_eip !36
  store i1 %398, i1* %ZF, align 1, !mcsema_real_eip !36
  %399 = load i1, i1* %SF_val, !mcsema_real_eip !36
  store i1 %399, i1* %SF, align 1, !mcsema_real_eip !36
  %400 = load i1, i1* %OF_val, !mcsema_real_eip !36
  store i1 %400, i1* %OF, align 1, !mcsema_real_eip !36
  %401 = load i1, i1* %DF_val, !mcsema_real_eip !36
  store i1 %401, i1* %DF, align 1, !mcsema_real_eip !36
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !36
  %402 = load i1, i1* %FPU_B_val, !mcsema_real_eip !36
  store i1 %402, i1* %FPU_B, align 1, !mcsema_real_eip !36
  %403 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !36
  store i1 %403, i1* %FPU_C3, align 1, !mcsema_real_eip !36
  %404 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !36
  store i3 %404, i3* %FPU_TOP, align 1, !mcsema_real_eip !36
  %405 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !36
  store i1 %405, i1* %FPU_C2, align 1, !mcsema_real_eip !36
  %406 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !36
  store i1 %406, i1* %FPU_C1, align 1, !mcsema_real_eip !36
  %407 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !36
  store i1 %407, i1* %FPU_C0, align 1, !mcsema_real_eip !36
  %408 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !36
  store i1 %408, i1* %FPU_ES, align 1, !mcsema_real_eip !36
  %409 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !36
  store i1 %409, i1* %FPU_SF, align 1, !mcsema_real_eip !36
  %410 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !36
  store i1 %410, i1* %FPU_PE, align 1, !mcsema_real_eip !36
  %411 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !36
  store i1 %411, i1* %FPU_UE, align 1, !mcsema_real_eip !36
  %412 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !36
  store i1 %412, i1* %FPU_OE, align 1, !mcsema_real_eip !36
  %413 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !36
  store i1 %413, i1* %FPU_ZE, align 1, !mcsema_real_eip !36
  %414 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !36
  store i1 %414, i1* %FPU_DE, align 1, !mcsema_real_eip !36
  %415 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !36
  store i1 %415, i1* %FPU_IE, align 1, !mcsema_real_eip !36
  %416 = load i1, i1* %FPU_X_val, !mcsema_real_eip !36
  store i1 %416, i1* %FPU_X, align 1, !mcsema_real_eip !36
  %417 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !36
  store i2 %417, i2* %FPU_RC, align 1, !mcsema_real_eip !36
  %418 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !36
  store i2 %418, i2* %FPU_PC, align 1, !mcsema_real_eip !36
  %419 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !36
  store i1 %419, i1* %FPU_PM, align 1, !mcsema_real_eip !36
  %420 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !36
  store i1 %420, i1* %FPU_UM, align 1, !mcsema_real_eip !36
  %421 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !36
  store i1 %421, i1* %FPU_OM, align 1, !mcsema_real_eip !36
  %422 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !36
  store i1 %422, i1* %FPU_ZM, align 1, !mcsema_real_eip !36
  %423 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !36
  store i1 %423, i1* %FPU_DM, align 1, !mcsema_real_eip !36
  %424 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !36
  store i1 %424, i1* %FPU_IM, align 1, !mcsema_real_eip !36
  %425 = load i64, i64* %53, align 4
  store i64 %425, i64* %52, align 4
  %426 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !36
  store i16 %426, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !36
  %427 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !36
  store i64 %427, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !36
  %428 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !36
  store i16 %428, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !36
  %429 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !36
  store i64 %429, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !36
  %430 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !36
  store i11 %430, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !36
  %431 = load i128, i128* %XMM0_val, !mcsema_real_eip !36
  store i128 %431, i128* %XMM0, align 1, !mcsema_real_eip !36
  %432 = load i128, i128* %XMM1_val, !mcsema_real_eip !36
  store i128 %432, i128* %XMM1, align 1, !mcsema_real_eip !36
  %433 = load i128, i128* %XMM2_val, !mcsema_real_eip !36
  store i128 %433, i128* %XMM2, align 1, !mcsema_real_eip !36
  %434 = load i128, i128* %XMM3_val, !mcsema_real_eip !36
  store i128 %434, i128* %XMM3, align 1, !mcsema_real_eip !36
  %435 = load i128, i128* %XMM4_val, !mcsema_real_eip !36
  store i128 %435, i128* %XMM4, align 1, !mcsema_real_eip !36
  %436 = load i128, i128* %XMM5_val, !mcsema_real_eip !36
  store i128 %436, i128* %XMM5, align 1, !mcsema_real_eip !36
  %437 = load i128, i128* %XMM6_val, !mcsema_real_eip !36
  store i128 %437, i128* %XMM6, align 1, !mcsema_real_eip !36
  %438 = load i128, i128* %XMM7_val, !mcsema_real_eip !36
  store i128 %438, i128* %XMM7, align 1, !mcsema_real_eip !36
  %439 = load i128, i128* %XMM8_val, !mcsema_real_eip !36
  store i128 %439, i128* %XMM8, align 1, !mcsema_real_eip !36
  %440 = load i128, i128* %XMM9_val, !mcsema_real_eip !36
  store i128 %440, i128* %XMM9, align 1, !mcsema_real_eip !36
  %441 = load i128, i128* %XMM10_val, !mcsema_real_eip !36
  store i128 %441, i128* %XMM10, align 1, !mcsema_real_eip !36
  %442 = load i128, i128* %XMM11_val, !mcsema_real_eip !36
  store i128 %442, i128* %XMM11, align 1, !mcsema_real_eip !36
  %443 = load i128, i128* %XMM12_val, !mcsema_real_eip !36
  store i128 %443, i128* %XMM12, align 1, !mcsema_real_eip !36
  %444 = load i128, i128* %XMM13_val, !mcsema_real_eip !36
  store i128 %444, i128* %XMM13, align 1, !mcsema_real_eip !36
  %445 = load i128, i128* %XMM14_val, !mcsema_real_eip !36
  store i128 %445, i128* %XMM14, align 1, !mcsema_real_eip !36
  %446 = load i128, i128* %XMM15_val, !mcsema_real_eip !36
  store i128 %446, i128* %XMM15, align 1, !mcsema_real_eip !36
  %447 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !36
  store i64 %447, i64* %STACK_BASE, align 1, !mcsema_real_eip !36
  %448 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !36
  store i64 %448, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !36
  ret void, !mcsema_real_eip !36
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !37
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !37
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !37
  %XMM15_val = alloca i128, !mcsema_real_eip !37
  %XMM14_val = alloca i128, !mcsema_real_eip !37
  %XMM13_val = alloca i128, !mcsema_real_eip !37
  %XMM12_val = alloca i128, !mcsema_real_eip !37
  %XMM11_val = alloca i128, !mcsema_real_eip !37
  %XMM10_val = alloca i128, !mcsema_real_eip !37
  %XMM9_val = alloca i128, !mcsema_real_eip !37
  %XMM8_val = alloca i128, !mcsema_real_eip !37
  %XMM7_val = alloca i128, !mcsema_real_eip !37
  %XMM6_val = alloca i128, !mcsema_real_eip !37
  %XMM5_val = alloca i128, !mcsema_real_eip !37
  %XMM4_val = alloca i128, !mcsema_real_eip !37
  %XMM3_val = alloca i128, !mcsema_real_eip !37
  %XMM2_val = alloca i128, !mcsema_real_eip !37
  %XMM1_val = alloca i128, !mcsema_real_eip !37
  %XMM0_val = alloca i128, !mcsema_real_eip !37
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !37
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !37
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !37
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !37
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !37
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !37
  %FPU_IM_val = alloca i1, !mcsema_real_eip !37
  %FPU_DM_val = alloca i1, !mcsema_real_eip !37
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !37
  %FPU_OM_val = alloca i1, !mcsema_real_eip !37
  %FPU_UM_val = alloca i1, !mcsema_real_eip !37
  %FPU_PM_val = alloca i1, !mcsema_real_eip !37
  %FPU_PC_val = alloca i2, !mcsema_real_eip !37
  %FPU_RC_val = alloca i2, !mcsema_real_eip !37
  %FPU_X_val = alloca i1, !mcsema_real_eip !37
  %FPU_IE_val = alloca i1, !mcsema_real_eip !37
  %FPU_DE_val = alloca i1, !mcsema_real_eip !37
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !37
  %FPU_OE_val = alloca i1, !mcsema_real_eip !37
  %FPU_UE_val = alloca i1, !mcsema_real_eip !37
  %FPU_PE_val = alloca i1, !mcsema_real_eip !37
  %FPU_SF_val = alloca i1, !mcsema_real_eip !37
  %FPU_ES_val = alloca i1, !mcsema_real_eip !37
  %FPU_C0_val = alloca i1, !mcsema_real_eip !37
  %FPU_C1_val = alloca i1, !mcsema_real_eip !37
  %FPU_C2_val = alloca i1, !mcsema_real_eip !37
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !37
  %FPU_C3_val = alloca i1, !mcsema_real_eip !37
  %FPU_B_val = alloca i1, !mcsema_real_eip !37
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !37
  %DF_val = alloca i1, !mcsema_real_eip !37
  %OF_val = alloca i1, !mcsema_real_eip !37
  %SF_val = alloca i1, !mcsema_real_eip !37
  %CF_val = alloca i1, !mcsema_real_eip !37
  %AF_val = alloca i1, !mcsema_real_eip !37
  %PF_val = alloca i1, !mcsema_real_eip !37
  %ZF_val = alloca i1, !mcsema_real_eip !37
  %RIP_val = alloca i64, !mcsema_real_eip !37
  %R14_val = alloca i64, !mcsema_real_eip !37
  %R13_val = alloca i64, !mcsema_real_eip !37
  %R12_val = alloca i64, !mcsema_real_eip !37
  %R11_val = alloca i64, !mcsema_real_eip !37
  %R10_val = alloca i64, !mcsema_real_eip !37
  %R9_val = alloca i64, !mcsema_real_eip !37
  %R8_val = alloca i64, !mcsema_real_eip !37
  %RSP_val = alloca i64, !mcsema_real_eip !37
  %RBP_val = alloca i64, !mcsema_real_eip !37
  %RDI_val = alloca i64, !mcsema_real_eip !37
  %RSI_val = alloca i64, !mcsema_real_eip !37
  %RDX_val = alloca i64, !mcsema_real_eip !37
  %RCX_val = alloca i64, !mcsema_real_eip !37
  %RBX_val = alloca i64, !mcsema_real_eip !37
  %RAX_val = alloca i64, !mcsema_real_eip !37
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !37
  %1 = load i64, i64* %RAX, !mcsema_real_eip !37
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !37
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !37
  %2 = load i64, i64* %RBX, !mcsema_real_eip !37
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !37
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !37
  %3 = load i64, i64* %RCX, !mcsema_real_eip !37
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !37
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !37
  %4 = load i64, i64* %RDX, !mcsema_real_eip !37
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !37
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !37
  %5 = load i64, i64* %RSI, !mcsema_real_eip !37
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !37
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !37
  %6 = load i64, i64* %RDI, !mcsema_real_eip !37
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !37
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !37
  %7 = load i64, i64* %RSP, !mcsema_real_eip !37
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !37
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !37
  %8 = load i64, i64* %RBP, !mcsema_real_eip !37
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !37
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !37
  %9 = load i64, i64* %R8, !mcsema_real_eip !37
  store i64 %9, i64* %R8_val, !mcsema_real_eip !37
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !37
  %10 = load i64, i64* %R9, !mcsema_real_eip !37
  store i64 %10, i64* %R9_val, !mcsema_real_eip !37
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !37
  %11 = load i64, i64* %R10, !mcsema_real_eip !37
  store i64 %11, i64* %R10_val, !mcsema_real_eip !37
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !37
  %12 = load i64, i64* %R11, !mcsema_real_eip !37
  store i64 %12, i64* %R11_val, !mcsema_real_eip !37
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !37
  %13 = load i64, i64* %R12, !mcsema_real_eip !37
  store i64 %13, i64* %R12_val, !mcsema_real_eip !37
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !37
  %14 = load i64, i64* %R13, !mcsema_real_eip !37
  store i64 %14, i64* %R13_val, !mcsema_real_eip !37
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !37
  %15 = load i64, i64* %R14, !mcsema_real_eip !37
  store i64 %15, i64* %R14_val, !mcsema_real_eip !37
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !37
  %16 = load i64, i64* %R15, !mcsema_real_eip !37
  store i64 %16, i64* %R15_val, !mcsema_real_eip !37
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !37
  %17 = load i64, i64* %RIP, !mcsema_real_eip !37
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !37
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !37
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !37
  store i1 %18, i1* %CF_val, !mcsema_real_eip !37
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !37
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !37
  store i1 %19, i1* %PF_val, !mcsema_real_eip !37
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !37
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !37
  store i1 %20, i1* %AF_val, !mcsema_real_eip !37
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !37
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !37
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !37
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !37
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !37
  store i1 %22, i1* %SF_val, !mcsema_real_eip !37
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !37
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !37
  store i1 %23, i1* %OF_val, !mcsema_real_eip !37
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !37
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !37
  store i1 %24, i1* %DF_val, !mcsema_real_eip !37
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !37
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !37
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !37
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !37
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !37
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !37
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !37
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !37
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !37
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !37
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !37
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !37
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !37
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !37
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !37
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !37
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !37
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !37
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !37
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !37
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !37
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !37
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !37
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !37
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !37
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !37
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !37
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !37
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !37
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !37
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !37
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !37
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !37
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !37
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !37
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !37
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !37
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !37
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !37
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !37
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !37
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !37
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !37
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !37
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !37
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !37
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !37
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !37
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !37
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !37
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !37
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !37
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !37
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !37
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !37
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !37
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !37
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !37
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !37
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !37
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !37
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !37
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !37
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !37
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !37
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !37
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !37
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !37
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !37
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !37
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !37
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !37
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !37
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !37
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !37
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !37
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !37
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !37
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !37
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !37
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !37
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !37
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !37
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !37
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !37
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !37
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !37
  %59 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !37
  store i11 %59, i11* %FPU_FOPCODE_val, !mcsema_real_eip !37
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !37
  %60 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !37
  store i128 %60, i128* %XMM0_val, !mcsema_real_eip !37
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !37
  %61 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !37
  store i128 %61, i128* %XMM1_val, !mcsema_real_eip !37
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !37
  %62 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !37
  store i128 %62, i128* %XMM2_val, !mcsema_real_eip !37
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !37
  %63 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !37
  store i128 %63, i128* %XMM3_val, !mcsema_real_eip !37
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !37
  %64 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !37
  store i128 %64, i128* %XMM4_val, !mcsema_real_eip !37
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !37
  %65 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !37
  store i128 %65, i128* %XMM5_val, !mcsema_real_eip !37
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !37
  %66 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !37
  store i128 %66, i128* %XMM6_val, !mcsema_real_eip !37
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !37
  %67 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !37
  store i128 %67, i128* %XMM7_val, !mcsema_real_eip !37
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !37
  %68 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !37
  store i128 %68, i128* %XMM8_val, !mcsema_real_eip !37
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !37
  %69 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !37
  store i128 %69, i128* %XMM9_val, !mcsema_real_eip !37
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !37
  %70 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !37
  store i128 %70, i128* %XMM10_val, !mcsema_real_eip !37
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !37
  %71 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !37
  store i128 %71, i128* %XMM11_val, !mcsema_real_eip !37
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !37
  %72 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !37
  store i128 %72, i128* %XMM12_val, !mcsema_real_eip !37
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !37
  %73 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !37
  store i128 %73, i128* %XMM13_val, !mcsema_real_eip !37
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !37
  %74 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !37
  store i128 %74, i128* %XMM14_val, !mcsema_real_eip !37
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !37
  %75 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !37
  store i128 %75, i128* %XMM15_val, !mcsema_real_eip !37
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !37
  %76 = load i64, i64* %STACK_BASE, !mcsema_real_eip !37
  store i64 %76, i64* %STACK_BASE_val, !mcsema_real_eip !37
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !37
  %77 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !37
  store i64 %77, i64* %STACK_LIMIT_val, !mcsema_real_eip !37
  %78 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %79 = load i64, i64* %RSP_val, !mcsema_real_eip !37
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !37
  store i64 %78, i64* %81, !mcsema_real_eip !37
  store i64 %80, i64* %RBP_val, !mcsema_real_eip !38
  %82 = add i64 %79, -24
  %83 = xor i64 %82, %80, !mcsema_real_eip !39
  %84 = and i64 %83, 16
  %85 = icmp eq i64 %84, 0
  store i1 %85, i1* %AF_val, !mcsema_real_eip !39
  %86 = trunc i64 %82 to i8, !mcsema_real_eip !39
  %87 = tail call i8 @llvm.ctpop.i8(i8 %86), !mcsema_real_eip !39
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  store i1 %89, i1* %PF_val, !mcsema_real_eip !39
  %90 = icmp eq i64 %82, 0, !mcsema_real_eip !39
  store i1 %90, i1* %ZF_val, !mcsema_real_eip !39
  %91 = icmp slt i64 %82, 0
  store i1 %91, i1* %SF_val, !mcsema_real_eip !39
  %92 = icmp ult i64 %80, 16, !mcsema_real_eip !39
  store i1 %92, i1* %CF_val, !mcsema_real_eip !39
  %93 = and i64 %83, %80, !mcsema_real_eip !39
  %94 = icmp slt i64 %93, 0
  store i1 %94, i1* %OF_val, !mcsema_real_eip !39
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !39
  %95 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %96 = add i64 %95, -8, !mcsema_real_eip !40
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !40
  %98 = load i64, i64* %RDI_val, !mcsema_real_eip !40
  %99 = trunc i64 %98 to i32, !mcsema_real_eip !40
  %100 = bitcast i64* %97 to i32*
  store i32 %99, i32* %100, !mcsema_real_eip !40
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %102 = add i64 %101, -12, !mcsema_real_eip !41
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !41
  %104 = load i64, i64* %RSI_val, !mcsema_real_eip !41
  %105 = trunc i64 %104 to i32, !mcsema_real_eip !41
  %106 = bitcast i64* %103 to i32*
  store i32 %105, i32* %106, !mcsema_real_eip !41
  %107 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  %108 = add i64 %107, -8, !mcsema_real_eip !42
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !42
  %110 = bitcast i64* %109 to i32*
  %111 = load i32, i32* %110, !mcsema_real_eip !42
  store i1 false, i1* %AF_val, !mcsema_real_eip !42
  %112 = trunc i32 %111 to i8, !mcsema_real_eip !42
  %113 = tail call i8 @llvm.ctpop.i8(i8 %112), !mcsema_real_eip !42
  %114 = and i8 %113, 1
  %115 = icmp eq i8 %114, 0
  store i1 %115, i1* %PF_val, !mcsema_real_eip !42
  %116 = icmp eq i32 %111, 0, !mcsema_real_eip !42
  store i1 %116, i1* %ZF_val, !mcsema_real_eip !42
  %117 = icmp slt i32 %111, 0
  store i1 %117, i1* %SF_val, !mcsema_real_eip !42
  store i1 false, i1* %CF_val, !mcsema_real_eip !42
  store i1 false, i1* %OF_val, !mcsema_real_eip !42
  %118 = load i64, i64* %RBP_val, !mcsema_real_eip !43
  %119 = add i64 %118, -12, !mcsema_real_eip !43
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !43
  %121 = bitcast i64* %120 to i32*
  %122 = load i32, i32* %121, !mcsema_real_eip !43
  br i1 %116, label %block_0x18, label %block_0x26, !mcsema_real_eip !44

block_0x18:                                       ; preds = %entry
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %122, i32 1)
  %123 = extractvalue { i32, i1 } %uadd, 0
  %124 = xor i32 %123, %122, !mcsema_real_eip !45
  %125 = and i32 %124, 16, !mcsema_real_eip !45
  %126 = icmp ne i32 %125, 0, !mcsema_real_eip !45
  store i1 %126, i1* %AF_val, !mcsema_real_eip !45
  %127 = icmp slt i32 %123, 0
  store i1 %127, i1* %SF_val, !mcsema_real_eip !45
  %128 = icmp eq i32 %123, 0, !mcsema_real_eip !45
  store i1 %128, i1* %ZF_val, !mcsema_real_eip !45
  %129 = xor i32 %122, -2147483648, !mcsema_real_eip !45
  %130 = and i32 %124, %129, !mcsema_real_eip !45
  %131 = icmp slt i32 %130, 0
  store i1 %131, i1* %OF_val, !mcsema_real_eip !45
  %132 = trunc i32 %123 to i8, !mcsema_real_eip !45
  %133 = tail call i8 @llvm.ctpop.i8(i8 %132), !mcsema_real_eip !45
  %134 = and i8 %133, 1
  %135 = icmp eq i8 %134, 0
  store i1 %135, i1* %PF_val, !mcsema_real_eip !45
  %136 = extractvalue { i32, i1 } %uadd, 1
  store i1 %136, i1* %CF_val, !mcsema_real_eip !45
  %137 = zext i32 %123 to i64, !mcsema_real_eip !45
  store i64 %137, i64* %RAX_val, !mcsema_real_eip !45
  %138 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %139 = add i64 %138, -4, !mcsema_real_eip !46
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !46
  %141 = bitcast i64* %140 to i32*
  store i32 %123, i32* %141, !mcsema_real_eip !46
  br label %block_0x70, !mcsema_real_eip !47

block_0x26:                                       ; preds = %entry
  store i1 false, i1* %AF_val, !mcsema_real_eip !43
  %142 = trunc i32 %122 to i8, !mcsema_real_eip !43
  %143 = tail call i8 @llvm.ctpop.i8(i8 %142), !mcsema_real_eip !43
  %144 = and i8 %143, 1
  %145 = icmp eq i8 %144, 0
  store i1 %145, i1* %PF_val, !mcsema_real_eip !43
  %146 = icmp eq i32 %122, 0, !mcsema_real_eip !43
  store i1 %146, i1* %ZF_val, !mcsema_real_eip !43
  %147 = icmp slt i32 %122, 0
  store i1 %147, i1* %SF_val, !mcsema_real_eip !43
  store i1 false, i1* %CF_val, !mcsema_real_eip !43
  store i1 false, i1* %OF_val, !mcsema_real_eip !43
  br i1 %146, label %block_0x30, label %block_0x4a, !mcsema_real_eip !48

block_0x30:                                       ; preds = %block_0x26
  store i64 1, i64* %RSI_val, !mcsema_real_eip !49
  %148 = load i64, i64* %RBP_val, !mcsema_real_eip !50
  %149 = add i64 %148, -8, !mcsema_real_eip !50
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !50
  %151 = bitcast i64* %150 to i32*
  %152 = load i32, i32* %151, !mcsema_real_eip !50
  %153 = add i32 %152, -1
  %154 = xor i32 %153, %152, !mcsema_real_eip !51
  %155 = and i32 %154, 16, !mcsema_real_eip !51
  %156 = icmp ne i32 %155, 0, !mcsema_real_eip !51
  store i1 %156, i1* %AF_val, !mcsema_real_eip !51
  %157 = trunc i32 %153 to i8, !mcsema_real_eip !51
  %158 = tail call i8 @llvm.ctpop.i8(i8 %157), !mcsema_real_eip !51
  %159 = and i8 %158, 1
  %160 = icmp eq i8 %159, 0
  store i1 %160, i1* %PF_val, !mcsema_real_eip !51
  %161 = icmp eq i32 %153, 0, !mcsema_real_eip !51
  store i1 %161, i1* %ZF_val, !mcsema_real_eip !51
  %162 = icmp slt i32 %153, 0
  store i1 %162, i1* %SF_val, !mcsema_real_eip !51
  %163 = icmp eq i32 %152, 0
  store i1 %163, i1* %CF_val, !mcsema_real_eip !51
  %164 = and i32 %154, %152, !mcsema_real_eip !51
  %165 = icmp slt i32 %164, 0
  store i1 %165, i1* %OF_val, !mcsema_real_eip !51
  %166 = zext i32 %153 to i64, !mcsema_real_eip !51
  store i64 %166, i64* %RAX_val, !mcsema_real_eip !51
  store i64 %166, i64* %RDI_val, !mcsema_real_eip !52
  %167 = load i64, i64* %RSP_val, !mcsema_real_eip !53
  %168 = add i64 %167, -8
  %169 = inttoptr i64 %168 to i64*, !mcsema_real_eip !53
  store i64 -4981261766360305936, i64* %169, !mcsema_real_eip !53
  store i64 %168, i64* %RSP_val, !mcsema_real_eip !53
  %170 = load i64, i64* %RAX_val, !mcsema_real_eip !53
  store i64 %170, i64* %RAX, !mcsema_real_eip !53
  %171 = load i64, i64* %RBX_val, !mcsema_real_eip !53
  store i64 %171, i64* %RBX, !mcsema_real_eip !53
  %172 = load i64, i64* %RCX_val, !mcsema_real_eip !53
  store i64 %172, i64* %RCX, !mcsema_real_eip !53
  %173 = load i64, i64* %RDX_val, !mcsema_real_eip !53
  store i64 %173, i64* %RDX, !mcsema_real_eip !53
  %174 = load i64, i64* %RSI_val, !mcsema_real_eip !53
  store i64 %174, i64* %RSI, !mcsema_real_eip !53
  %175 = load i64, i64* %RDI_val, !mcsema_real_eip !53
  store i64 %175, i64* %RDI, !mcsema_real_eip !53
  %176 = load i64, i64* %RSP_val, !mcsema_real_eip !53
  store i64 %176, i64* %RSP, !mcsema_real_eip !53
  %177 = load i64, i64* %RBP_val, !mcsema_real_eip !53
  store i64 %177, i64* %RBP, !mcsema_real_eip !53
  %178 = load i64, i64* %R8_val, !mcsema_real_eip !53
  store i64 %178, i64* %R8, !mcsema_real_eip !53
  %179 = load i64, i64* %R9_val, !mcsema_real_eip !53
  store i64 %179, i64* %R9, !mcsema_real_eip !53
  %180 = load i64, i64* %R10_val, !mcsema_real_eip !53
  store i64 %180, i64* %R10, !mcsema_real_eip !53
  %181 = load i64, i64* %R11_val, !mcsema_real_eip !53
  store i64 %181, i64* %R11, !mcsema_real_eip !53
  %182 = load i64, i64* %R12_val, !mcsema_real_eip !53
  store i64 %182, i64* %R12, !mcsema_real_eip !53
  %183 = load i64, i64* %R13_val, !mcsema_real_eip !53
  store i64 %183, i64* %R13, !mcsema_real_eip !53
  %184 = load i64, i64* %R14_val, !mcsema_real_eip !53
  store i64 %184, i64* %R14, !mcsema_real_eip !53
  %185 = load i64, i64* %R15_val, !mcsema_real_eip !53
  store i64 %185, i64* %R15, !mcsema_real_eip !53
  %186 = load i64, i64* %RIP_val, !mcsema_real_eip !53
  store i64 %186, i64* %RIP, !mcsema_real_eip !53
  %187 = load i1, i1* %CF_val, !mcsema_real_eip !53
  store i1 %187, i1* %CF, align 1, !mcsema_real_eip !53
  %188 = load i1, i1* %PF_val, !mcsema_real_eip !53
  store i1 %188, i1* %PF, align 1, !mcsema_real_eip !53
  %189 = load i1, i1* %AF_val, !mcsema_real_eip !53
  store i1 %189, i1* %AF, align 1, !mcsema_real_eip !53
  %190 = load i1, i1* %ZF_val, !mcsema_real_eip !53
  store i1 %190, i1* %ZF, align 1, !mcsema_real_eip !53
  %191 = load i1, i1* %SF_val, !mcsema_real_eip !53
  store i1 %191, i1* %SF, align 1, !mcsema_real_eip !53
  %192 = load i1, i1* %OF_val, !mcsema_real_eip !53
  store i1 %192, i1* %OF, align 1, !mcsema_real_eip !53
  %193 = load i1, i1* %DF_val, !mcsema_real_eip !53
  store i1 %193, i1* %DF, align 1, !mcsema_real_eip !53
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !53
  %194 = load i1, i1* %FPU_B_val, !mcsema_real_eip !53
  store i1 %194, i1* %FPU_B, align 1, !mcsema_real_eip !53
  %195 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !53
  store i1 %195, i1* %FPU_C3, align 1, !mcsema_real_eip !53
  %196 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !53
  store i3 %196, i3* %FPU_TOP, align 1, !mcsema_real_eip !53
  %197 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !53
  store i1 %197, i1* %FPU_C2, align 1, !mcsema_real_eip !53
  %198 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !53
  store i1 %198, i1* %FPU_C1, align 1, !mcsema_real_eip !53
  %199 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !53
  store i1 %199, i1* %FPU_C0, align 1, !mcsema_real_eip !53
  %200 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !53
  store i1 %200, i1* %FPU_ES, align 1, !mcsema_real_eip !53
  %201 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !53
  store i1 %201, i1* %FPU_SF, align 1, !mcsema_real_eip !53
  %202 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !53
  store i1 %202, i1* %FPU_PE, align 1, !mcsema_real_eip !53
  %203 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !53
  store i1 %203, i1* %FPU_UE, align 1, !mcsema_real_eip !53
  %204 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !53
  store i1 %204, i1* %FPU_OE, align 1, !mcsema_real_eip !53
  %205 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !53
  store i1 %205, i1* %FPU_ZE, align 1, !mcsema_real_eip !53
  %206 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !53
  store i1 %206, i1* %FPU_DE, align 1, !mcsema_real_eip !53
  %207 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !53
  store i1 %207, i1* %FPU_IE, align 1, !mcsema_real_eip !53
  %208 = load i1, i1* %FPU_X_val, !mcsema_real_eip !53
  store i1 %208, i1* %FPU_X, align 1, !mcsema_real_eip !53
  %209 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !53
  store i2 %209, i2* %FPU_RC, align 1, !mcsema_real_eip !53
  %210 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !53
  store i2 %210, i2* %FPU_PC, align 1, !mcsema_real_eip !53
  %211 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !53
  store i1 %211, i1* %FPU_PM, align 1, !mcsema_real_eip !53
  %212 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !53
  store i1 %212, i1* %FPU_UM, align 1, !mcsema_real_eip !53
  %213 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !53
  store i1 %213, i1* %FPU_OM, align 1, !mcsema_real_eip !53
  %214 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !53
  store i1 %214, i1* %FPU_ZM, align 1, !mcsema_real_eip !53
  %215 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !53
  store i1 %215, i1* %FPU_DM, align 1, !mcsema_real_eip !53
  %216 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !53
  store i1 %216, i1* %FPU_IM, align 1, !mcsema_real_eip !53
  %217 = load i64, i64* %53, align 4
  store i64 %217, i64* %52, align 4
  %218 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !53
  store i16 %218, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !53
  %219 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !53
  store i64 %219, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !53
  %220 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !53
  store i16 %220, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !53
  %221 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !53
  store i64 %221, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !53
  %222 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !53
  store i11 %222, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !53
  %223 = load i128, i128* %XMM0_val, !mcsema_real_eip !53
  store i128 %223, i128* %XMM0, align 1, !mcsema_real_eip !53
  %224 = load i128, i128* %XMM1_val, !mcsema_real_eip !53
  store i128 %224, i128* %XMM1, align 1, !mcsema_real_eip !53
  %225 = load i128, i128* %XMM2_val, !mcsema_real_eip !53
  store i128 %225, i128* %XMM2, align 1, !mcsema_real_eip !53
  %226 = load i128, i128* %XMM3_val, !mcsema_real_eip !53
  store i128 %226, i128* %XMM3, align 1, !mcsema_real_eip !53
  %227 = load i128, i128* %XMM4_val, !mcsema_real_eip !53
  store i128 %227, i128* %XMM4, align 1, !mcsema_real_eip !53
  %228 = load i128, i128* %XMM5_val, !mcsema_real_eip !53
  store i128 %228, i128* %XMM5, align 1, !mcsema_real_eip !53
  %229 = load i128, i128* %XMM6_val, !mcsema_real_eip !53
  store i128 %229, i128* %XMM6, align 1, !mcsema_real_eip !53
  %230 = load i128, i128* %XMM7_val, !mcsema_real_eip !53
  store i128 %230, i128* %XMM7, align 1, !mcsema_real_eip !53
  %231 = load i128, i128* %XMM8_val, !mcsema_real_eip !53
  store i128 %231, i128* %XMM8, align 1, !mcsema_real_eip !53
  %232 = load i128, i128* %XMM9_val, !mcsema_real_eip !53
  store i128 %232, i128* %XMM9, align 1, !mcsema_real_eip !53
  %233 = load i128, i128* %XMM10_val, !mcsema_real_eip !53
  store i128 %233, i128* %XMM10, align 1, !mcsema_real_eip !53
  %234 = load i128, i128* %XMM11_val, !mcsema_real_eip !53
  store i128 %234, i128* %XMM11, align 1, !mcsema_real_eip !53
  %235 = load i128, i128* %XMM12_val, !mcsema_real_eip !53
  store i128 %235, i128* %XMM12, align 1, !mcsema_real_eip !53
  %236 = load i128, i128* %XMM13_val, !mcsema_real_eip !53
  store i128 %236, i128* %XMM13, align 1, !mcsema_real_eip !53
  %237 = load i128, i128* %XMM14_val, !mcsema_real_eip !53
  store i128 %237, i128* %XMM14, align 1, !mcsema_real_eip !53
  %238 = load i128, i128* %XMM15_val, !mcsema_real_eip !53
  store i128 %238, i128* %XMM15, align 1, !mcsema_real_eip !53
  %239 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !53
  store i64 %239, i64* %STACK_BASE, align 1, !mcsema_real_eip !53
  %240 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !53
  store i64 %240, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !53
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !53
  %241 = load i64, i64* %RAX, !mcsema_real_eip !53
  store i64 %241, i64* %RAX_val, !mcsema_real_eip !53
  %242 = load i64, i64* %RBX, !mcsema_real_eip !53
  store i64 %242, i64* %RBX_val, !mcsema_real_eip !53
  %243 = load i64, i64* %RCX, !mcsema_real_eip !53
  store i64 %243, i64* %RCX_val, !mcsema_real_eip !53
  %244 = load i64, i64* %RDX, !mcsema_real_eip !53
  store i64 %244, i64* %RDX_val, !mcsema_real_eip !53
  %245 = load i64, i64* %RSI, !mcsema_real_eip !53
  store i64 %245, i64* %RSI_val, !mcsema_real_eip !53
  %246 = load i64, i64* %RDI, !mcsema_real_eip !53
  store i64 %246, i64* %RDI_val, !mcsema_real_eip !53
  %247 = load i64, i64* %RSP, !mcsema_real_eip !53
  store i64 %247, i64* %RSP_val, !mcsema_real_eip !53
  %248 = load i64, i64* %RBP, !mcsema_real_eip !53
  store i64 %248, i64* %RBP_val, !mcsema_real_eip !53
  %249 = load i64, i64* %R8, !mcsema_real_eip !53
  store i64 %249, i64* %R8_val, !mcsema_real_eip !53
  %250 = load i64, i64* %R9, !mcsema_real_eip !53
  store i64 %250, i64* %R9_val, !mcsema_real_eip !53
  %251 = load i64, i64* %R10, !mcsema_real_eip !53
  store i64 %251, i64* %R10_val, !mcsema_real_eip !53
  %252 = load i64, i64* %R11, !mcsema_real_eip !53
  store i64 %252, i64* %R11_val, !mcsema_real_eip !53
  %253 = load i64, i64* %R12, !mcsema_real_eip !53
  store i64 %253, i64* %R12_val, !mcsema_real_eip !53
  %254 = load i64, i64* %R13, !mcsema_real_eip !53
  store i64 %254, i64* %R13_val, !mcsema_real_eip !53
  %255 = load i64, i64* %R14, !mcsema_real_eip !53
  store i64 %255, i64* %R14_val, !mcsema_real_eip !53
  %256 = load i64, i64* %R15, !mcsema_real_eip !53
  store i64 %256, i64* %R15_val, !mcsema_real_eip !53
  %257 = load i64, i64* %RIP, !mcsema_real_eip !53
  store i64 %257, i64* %RIP_val, !mcsema_real_eip !53
  %258 = load i1, i1* %CF, align 1, !mcsema_real_eip !53
  store i1 %258, i1* %CF_val, !mcsema_real_eip !53
  %259 = load i1, i1* %PF, align 1, !mcsema_real_eip !53
  store i1 %259, i1* %PF_val, !mcsema_real_eip !53
  %260 = load i1, i1* %AF, align 1, !mcsema_real_eip !53
  store i1 %260, i1* %AF_val, !mcsema_real_eip !53
  %261 = load i1, i1* %ZF, align 1, !mcsema_real_eip !53
  store i1 %261, i1* %ZF_val, !mcsema_real_eip !53
  %262 = load i1, i1* %SF, align 1, !mcsema_real_eip !53
  store i1 %262, i1* %SF_val, !mcsema_real_eip !53
  %263 = load i1, i1* %OF, align 1, !mcsema_real_eip !53
  store i1 %263, i1* %OF_val, !mcsema_real_eip !53
  %264 = load i1, i1* %DF, align 1, !mcsema_real_eip !53
  store i1 %264, i1* %DF_val, !mcsema_real_eip !53
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !53
  %265 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !53
  store i1 %265, i1* %FPU_B_val, !mcsema_real_eip !53
  %266 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !53
  store i1 %266, i1* %FPU_C3_val, !mcsema_real_eip !53
  %267 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !53
  store i3 %267, i3* %FPU_TOP_val, !mcsema_real_eip !53
  %268 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !53
  store i1 %268, i1* %FPU_C2_val, !mcsema_real_eip !53
  %269 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !53
  store i1 %269, i1* %FPU_C1_val, !mcsema_real_eip !53
  %270 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !53
  store i1 %270, i1* %FPU_C0_val, !mcsema_real_eip !53
  %271 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !53
  store i1 %271, i1* %FPU_ES_val, !mcsema_real_eip !53
  %272 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !53
  store i1 %272, i1* %FPU_SF_val, !mcsema_real_eip !53
  %273 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !53
  store i1 %273, i1* %FPU_PE_val, !mcsema_real_eip !53
  %274 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !53
  store i1 %274, i1* %FPU_UE_val, !mcsema_real_eip !53
  %275 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !53
  store i1 %275, i1* %FPU_OE_val, !mcsema_real_eip !53
  %276 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !53
  store i1 %276, i1* %FPU_ZE_val, !mcsema_real_eip !53
  %277 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !53
  store i1 %277, i1* %FPU_DE_val, !mcsema_real_eip !53
  %278 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !53
  store i1 %278, i1* %FPU_IE_val, !mcsema_real_eip !53
  %279 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !53
  store i1 %279, i1* %FPU_X_val, !mcsema_real_eip !53
  %280 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !53
  store i2 %280, i2* %FPU_RC_val, !mcsema_real_eip !53
  %281 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !53
  store i2 %281, i2* %FPU_PC_val, !mcsema_real_eip !53
  %282 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !53
  store i1 %282, i1* %FPU_PM_val, !mcsema_real_eip !53
  %283 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !53
  store i1 %283, i1* %FPU_UM_val, !mcsema_real_eip !53
  %284 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !53
  store i1 %284, i1* %FPU_OM_val, !mcsema_real_eip !53
  %285 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !53
  store i1 %285, i1* %FPU_ZM_val, !mcsema_real_eip !53
  %286 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !53
  store i1 %286, i1* %FPU_DM_val, !mcsema_real_eip !53
  %287 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !53
  store i1 %287, i1* %FPU_IM_val, !mcsema_real_eip !53
  %288 = load i64, i64* %52, align 4
  store i64 %288, i64* %53, align 4
  %289 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !53
  store i16 %289, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !53
  %290 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !53
  store i64 %290, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !53
  %291 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !53
  store i16 %291, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !53
  %292 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !53
  store i64 %292, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !53
  %293 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !53
  store i11 %293, i11* %FPU_FOPCODE_val, !mcsema_real_eip !53
  %294 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !53
  store i128 %294, i128* %XMM0_val, !mcsema_real_eip !53
  %295 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !53
  store i128 %295, i128* %XMM1_val, !mcsema_real_eip !53
  %296 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !53
  store i128 %296, i128* %XMM2_val, !mcsema_real_eip !53
  %297 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !53
  store i128 %297, i128* %XMM3_val, !mcsema_real_eip !53
  %298 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !53
  store i128 %298, i128* %XMM4_val, !mcsema_real_eip !53
  %299 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !53
  store i128 %299, i128* %XMM5_val, !mcsema_real_eip !53
  %300 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !53
  store i128 %300, i128* %XMM6_val, !mcsema_real_eip !53
  %301 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !53
  store i128 %301, i128* %XMM7_val, !mcsema_real_eip !53
  %302 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !53
  store i128 %302, i128* %XMM8_val, !mcsema_real_eip !53
  %303 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !53
  store i128 %303, i128* %XMM9_val, !mcsema_real_eip !53
  %304 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !53
  store i128 %304, i128* %XMM10_val, !mcsema_real_eip !53
  %305 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !53
  store i128 %305, i128* %XMM11_val, !mcsema_real_eip !53
  %306 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !53
  store i128 %306, i128* %XMM12_val, !mcsema_real_eip !53
  %307 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !53
  store i128 %307, i128* %XMM13_val, !mcsema_real_eip !53
  %308 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !53
  store i128 %308, i128* %XMM14_val, !mcsema_real_eip !53
  %309 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !53
  store i128 %309, i128* %XMM15_val, !mcsema_real_eip !53
  %310 = load i64, i64* %STACK_BASE, !mcsema_real_eip !53
  store i64 %310, i64* %STACK_BASE_val, !mcsema_real_eip !53
  %311 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !53
  store i64 %311, i64* %STACK_LIMIT_val, !mcsema_real_eip !53
  %312 = load i64, i64* %RBP_val, !mcsema_real_eip !54
  %313 = add i64 %312, -4, !mcsema_real_eip !54
  %314 = inttoptr i64 %313 to i64*, !mcsema_real_eip !54
  %315 = load i64, i64* %RAX_val, !mcsema_real_eip !54
  %316 = trunc i64 %315 to i32, !mcsema_real_eip !54
  %317 = bitcast i64* %314 to i32*
  store i32 %316, i32* %317, !mcsema_real_eip !54
  br label %block_0x70, !mcsema_real_eip !55

block_0x4a:                                       ; preds = %block_0x26
  %318 = load i64, i64* %RBP_val, !mcsema_real_eip !56
  %319 = add i64 %318, -8, !mcsema_real_eip !56
  %320 = inttoptr i64 %319 to i64*, !mcsema_real_eip !56
  %321 = bitcast i64* %320 to i32*
  %322 = load i32, i32* %321, !mcsema_real_eip !56
  %323 = add i32 %322, -1
  %324 = xor i32 %323, %322, !mcsema_real_eip !57
  %325 = and i32 %324, 16, !mcsema_real_eip !57
  %326 = icmp ne i32 %325, 0, !mcsema_real_eip !57
  store i1 %326, i1* %AF_val, !mcsema_real_eip !57
  %327 = trunc i32 %323 to i8, !mcsema_real_eip !57
  %328 = tail call i8 @llvm.ctpop.i8(i8 %327), !mcsema_real_eip !57
  %329 = and i8 %328, 1
  %330 = icmp eq i8 %329, 0
  store i1 %330, i1* %PF_val, !mcsema_real_eip !57
  %331 = icmp eq i32 %323, 0, !mcsema_real_eip !57
  store i1 %331, i1* %ZF_val, !mcsema_real_eip !57
  %332 = icmp slt i32 %323, 0
  store i1 %332, i1* %SF_val, !mcsema_real_eip !57
  %333 = icmp eq i32 %322, 0
  store i1 %333, i1* %CF_val, !mcsema_real_eip !57
  %334 = and i32 %324, %322, !mcsema_real_eip !57
  %335 = icmp slt i32 %334, 0
  store i1 %335, i1* %OF_val, !mcsema_real_eip !57
  %336 = zext i32 %323 to i64, !mcsema_real_eip !57
  store i64 %336, i64* %RAX_val, !mcsema_real_eip !57
  %337 = load i64, i64* %RBP_val, !mcsema_real_eip !58
  %338 = add i64 %337, -8, !mcsema_real_eip !58
  %339 = inttoptr i64 %338 to i64*, !mcsema_real_eip !58
  %340 = bitcast i64* %339 to i32*
  %341 = load i32, i32* %340, !mcsema_real_eip !58
  %342 = zext i32 %341 to i64, !mcsema_real_eip !58
  store i64 %342, i64* %RDI_val, !mcsema_real_eip !58
  %343 = load i64, i64* %RBP_val, !mcsema_real_eip !59
  %344 = add i64 %343, -12, !mcsema_real_eip !59
  %345 = inttoptr i64 %344 to i64*, !mcsema_real_eip !59
  %346 = bitcast i64* %345 to i32*
  %347 = load i32, i32* %346, !mcsema_real_eip !59
  %348 = add i32 %347, -1
  %349 = xor i32 %348, %347, !mcsema_real_eip !60
  %350 = and i32 %349, 16, !mcsema_real_eip !60
  %351 = icmp ne i32 %350, 0, !mcsema_real_eip !60
  store i1 %351, i1* %AF_val, !mcsema_real_eip !60
  %352 = trunc i32 %348 to i8, !mcsema_real_eip !60
  %353 = tail call i8 @llvm.ctpop.i8(i8 %352), !mcsema_real_eip !60
  %354 = and i8 %353, 1
  %355 = icmp eq i8 %354, 0
  store i1 %355, i1* %PF_val, !mcsema_real_eip !60
  %356 = icmp eq i32 %348, 0, !mcsema_real_eip !60
  store i1 %356, i1* %ZF_val, !mcsema_real_eip !60
  %357 = icmp slt i32 %348, 0
  store i1 %357, i1* %SF_val, !mcsema_real_eip !60
  %358 = icmp eq i32 %347, 0
  store i1 %358, i1* %CF_val, !mcsema_real_eip !60
  %359 = and i32 %349, %347, !mcsema_real_eip !60
  %360 = icmp slt i32 %359, 0
  store i1 %360, i1* %OF_val, !mcsema_real_eip !60
  %361 = zext i32 %348 to i64, !mcsema_real_eip !60
  store i64 %361, i64* %RCX_val, !mcsema_real_eip !60
  store i64 %361, i64* %RSI_val, !mcsema_real_eip !61
  %362 = load i64, i64* %RBP_val, !mcsema_real_eip !62
  %363 = add i64 %362, -16, !mcsema_real_eip !62
  %364 = inttoptr i64 %363 to i64*, !mcsema_real_eip !62
  %365 = load i64, i64* %RAX_val, !mcsema_real_eip !62
  %366 = trunc i64 %365 to i32, !mcsema_real_eip !62
  %367 = bitcast i64* %364 to i32*
  store i32 %366, i32* %367, !mcsema_real_eip !62
  %368 = load i64, i64* %RSP_val, !mcsema_real_eip !63
  %369 = add i64 %368, -8
  %370 = inttoptr i64 %369 to i64*, !mcsema_real_eip !63
  store i64 -4981261766360305936, i64* %370, !mcsema_real_eip !63
  store i64 %369, i64* %RSP_val, !mcsema_real_eip !63
  %371 = load i64, i64* %RAX_val, !mcsema_real_eip !63
  store i64 %371, i64* %RAX, !mcsema_real_eip !63
  %372 = load i64, i64* %RBX_val, !mcsema_real_eip !63
  store i64 %372, i64* %RBX, !mcsema_real_eip !63
  %373 = load i64, i64* %RCX_val, !mcsema_real_eip !63
  store i64 %373, i64* %RCX, !mcsema_real_eip !63
  %374 = load i64, i64* %RDX_val, !mcsema_real_eip !63
  store i64 %374, i64* %RDX, !mcsema_real_eip !63
  %375 = load i64, i64* %RSI_val, !mcsema_real_eip !63
  store i64 %375, i64* %RSI, !mcsema_real_eip !63
  %376 = load i64, i64* %RDI_val, !mcsema_real_eip !63
  store i64 %376, i64* %RDI, !mcsema_real_eip !63
  %377 = load i64, i64* %RSP_val, !mcsema_real_eip !63
  store i64 %377, i64* %RSP, !mcsema_real_eip !63
  %378 = load i64, i64* %RBP_val, !mcsema_real_eip !63
  store i64 %378, i64* %RBP, !mcsema_real_eip !63
  %379 = load i64, i64* %R8_val, !mcsema_real_eip !63
  store i64 %379, i64* %R8, !mcsema_real_eip !63
  %380 = load i64, i64* %R9_val, !mcsema_real_eip !63
  store i64 %380, i64* %R9, !mcsema_real_eip !63
  %381 = load i64, i64* %R10_val, !mcsema_real_eip !63
  store i64 %381, i64* %R10, !mcsema_real_eip !63
  %382 = load i64, i64* %R11_val, !mcsema_real_eip !63
  store i64 %382, i64* %R11, !mcsema_real_eip !63
  %383 = load i64, i64* %R12_val, !mcsema_real_eip !63
  store i64 %383, i64* %R12, !mcsema_real_eip !63
  %384 = load i64, i64* %R13_val, !mcsema_real_eip !63
  store i64 %384, i64* %R13, !mcsema_real_eip !63
  %385 = load i64, i64* %R14_val, !mcsema_real_eip !63
  store i64 %385, i64* %R14, !mcsema_real_eip !63
  %386 = load i64, i64* %R15_val, !mcsema_real_eip !63
  store i64 %386, i64* %R15, !mcsema_real_eip !63
  %387 = load i64, i64* %RIP_val, !mcsema_real_eip !63
  store i64 %387, i64* %RIP, !mcsema_real_eip !63
  %388 = load i1, i1* %CF_val, !mcsema_real_eip !63
  store i1 %388, i1* %CF, align 1, !mcsema_real_eip !63
  %389 = load i1, i1* %PF_val, !mcsema_real_eip !63
  store i1 %389, i1* %PF, align 1, !mcsema_real_eip !63
  %390 = load i1, i1* %AF_val, !mcsema_real_eip !63
  store i1 %390, i1* %AF, align 1, !mcsema_real_eip !63
  %391 = load i1, i1* %ZF_val, !mcsema_real_eip !63
  store i1 %391, i1* %ZF, align 1, !mcsema_real_eip !63
  %392 = load i1, i1* %SF_val, !mcsema_real_eip !63
  store i1 %392, i1* %SF, align 1, !mcsema_real_eip !63
  %393 = load i1, i1* %OF_val, !mcsema_real_eip !63
  store i1 %393, i1* %OF, align 1, !mcsema_real_eip !63
  %394 = load i1, i1* %DF_val, !mcsema_real_eip !63
  store i1 %394, i1* %DF, align 1, !mcsema_real_eip !63
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !63
  %395 = load i1, i1* %FPU_B_val, !mcsema_real_eip !63
  store i1 %395, i1* %FPU_B, align 1, !mcsema_real_eip !63
  %396 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !63
  store i1 %396, i1* %FPU_C3, align 1, !mcsema_real_eip !63
  %397 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !63
  store i3 %397, i3* %FPU_TOP, align 1, !mcsema_real_eip !63
  %398 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !63
  store i1 %398, i1* %FPU_C2, align 1, !mcsema_real_eip !63
  %399 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !63
  store i1 %399, i1* %FPU_C1, align 1, !mcsema_real_eip !63
  %400 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !63
  store i1 %400, i1* %FPU_C0, align 1, !mcsema_real_eip !63
  %401 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !63
  store i1 %401, i1* %FPU_ES, align 1, !mcsema_real_eip !63
  %402 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !63
  store i1 %402, i1* %FPU_SF, align 1, !mcsema_real_eip !63
  %403 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !63
  store i1 %403, i1* %FPU_PE, align 1, !mcsema_real_eip !63
  %404 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !63
  store i1 %404, i1* %FPU_UE, align 1, !mcsema_real_eip !63
  %405 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !63
  store i1 %405, i1* %FPU_OE, align 1, !mcsema_real_eip !63
  %406 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !63
  store i1 %406, i1* %FPU_ZE, align 1, !mcsema_real_eip !63
  %407 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !63
  store i1 %407, i1* %FPU_DE, align 1, !mcsema_real_eip !63
  %408 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !63
  store i1 %408, i1* %FPU_IE, align 1, !mcsema_real_eip !63
  %409 = load i1, i1* %FPU_X_val, !mcsema_real_eip !63
  store i1 %409, i1* %FPU_X, align 1, !mcsema_real_eip !63
  %410 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !63
  store i2 %410, i2* %FPU_RC, align 1, !mcsema_real_eip !63
  %411 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !63
  store i2 %411, i2* %FPU_PC, align 1, !mcsema_real_eip !63
  %412 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !63
  store i1 %412, i1* %FPU_PM, align 1, !mcsema_real_eip !63
  %413 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !63
  store i1 %413, i1* %FPU_UM, align 1, !mcsema_real_eip !63
  %414 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !63
  store i1 %414, i1* %FPU_OM, align 1, !mcsema_real_eip !63
  %415 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !63
  store i1 %415, i1* %FPU_ZM, align 1, !mcsema_real_eip !63
  %416 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !63
  store i1 %416, i1* %FPU_DM, align 1, !mcsema_real_eip !63
  %417 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !63
  store i1 %417, i1* %FPU_IM, align 1, !mcsema_real_eip !63
  %418 = load i64, i64* %53, align 4
  store i64 %418, i64* %52, align 4
  %419 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !63
  store i16 %419, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !63
  %420 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !63
  store i64 %420, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !63
  %421 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !63
  store i16 %421, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !63
  %422 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !63
  store i64 %422, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !63
  %423 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !63
  store i11 %423, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !63
  %424 = load i128, i128* %XMM0_val, !mcsema_real_eip !63
  store i128 %424, i128* %XMM0, align 1, !mcsema_real_eip !63
  %425 = load i128, i128* %XMM1_val, !mcsema_real_eip !63
  store i128 %425, i128* %XMM1, align 1, !mcsema_real_eip !63
  %426 = load i128, i128* %XMM2_val, !mcsema_real_eip !63
  store i128 %426, i128* %XMM2, align 1, !mcsema_real_eip !63
  %427 = load i128, i128* %XMM3_val, !mcsema_real_eip !63
  store i128 %427, i128* %XMM3, align 1, !mcsema_real_eip !63
  %428 = load i128, i128* %XMM4_val, !mcsema_real_eip !63
  store i128 %428, i128* %XMM4, align 1, !mcsema_real_eip !63
  %429 = load i128, i128* %XMM5_val, !mcsema_real_eip !63
  store i128 %429, i128* %XMM5, align 1, !mcsema_real_eip !63
  %430 = load i128, i128* %XMM6_val, !mcsema_real_eip !63
  store i128 %430, i128* %XMM6, align 1, !mcsema_real_eip !63
  %431 = load i128, i128* %XMM7_val, !mcsema_real_eip !63
  store i128 %431, i128* %XMM7, align 1, !mcsema_real_eip !63
  %432 = load i128, i128* %XMM8_val, !mcsema_real_eip !63
  store i128 %432, i128* %XMM8, align 1, !mcsema_real_eip !63
  %433 = load i128, i128* %XMM9_val, !mcsema_real_eip !63
  store i128 %433, i128* %XMM9, align 1, !mcsema_real_eip !63
  %434 = load i128, i128* %XMM10_val, !mcsema_real_eip !63
  store i128 %434, i128* %XMM10, align 1, !mcsema_real_eip !63
  %435 = load i128, i128* %XMM11_val, !mcsema_real_eip !63
  store i128 %435, i128* %XMM11, align 1, !mcsema_real_eip !63
  %436 = load i128, i128* %XMM12_val, !mcsema_real_eip !63
  store i128 %436, i128* %XMM12, align 1, !mcsema_real_eip !63
  %437 = load i128, i128* %XMM13_val, !mcsema_real_eip !63
  store i128 %437, i128* %XMM13, align 1, !mcsema_real_eip !63
  %438 = load i128, i128* %XMM14_val, !mcsema_real_eip !63
  store i128 %438, i128* %XMM14, align 1, !mcsema_real_eip !63
  %439 = load i128, i128* %XMM15_val, !mcsema_real_eip !63
  store i128 %439, i128* %XMM15, align 1, !mcsema_real_eip !63
  %440 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !63
  store i64 %440, i64* %STACK_BASE, align 1, !mcsema_real_eip !63
  %441 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !63
  store i64 %441, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !63
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !63
  %442 = load i64, i64* %RAX, !mcsema_real_eip !63
  store i64 %442, i64* %RAX_val, !mcsema_real_eip !63
  %443 = load i64, i64* %RBX, !mcsema_real_eip !63
  store i64 %443, i64* %RBX_val, !mcsema_real_eip !63
  %444 = load i64, i64* %RCX, !mcsema_real_eip !63
  store i64 %444, i64* %RCX_val, !mcsema_real_eip !63
  %445 = load i64, i64* %RDX, !mcsema_real_eip !63
  store i64 %445, i64* %RDX_val, !mcsema_real_eip !63
  %446 = load i64, i64* %RSI, !mcsema_real_eip !63
  store i64 %446, i64* %RSI_val, !mcsema_real_eip !63
  %447 = load i64, i64* %RDI, !mcsema_real_eip !63
  store i64 %447, i64* %RDI_val, !mcsema_real_eip !63
  %448 = load i64, i64* %RSP, !mcsema_real_eip !63
  store i64 %448, i64* %RSP_val, !mcsema_real_eip !63
  %449 = load i64, i64* %RBP, !mcsema_real_eip !63
  store i64 %449, i64* %RBP_val, !mcsema_real_eip !63
  %450 = load i64, i64* %R8, !mcsema_real_eip !63
  store i64 %450, i64* %R8_val, !mcsema_real_eip !63
  %451 = load i64, i64* %R9, !mcsema_real_eip !63
  store i64 %451, i64* %R9_val, !mcsema_real_eip !63
  %452 = load i64, i64* %R10, !mcsema_real_eip !63
  store i64 %452, i64* %R10_val, !mcsema_real_eip !63
  %453 = load i64, i64* %R11, !mcsema_real_eip !63
  store i64 %453, i64* %R11_val, !mcsema_real_eip !63
  %454 = load i64, i64* %R12, !mcsema_real_eip !63
  store i64 %454, i64* %R12_val, !mcsema_real_eip !63
  %455 = load i64, i64* %R13, !mcsema_real_eip !63
  store i64 %455, i64* %R13_val, !mcsema_real_eip !63
  %456 = load i64, i64* %R14, !mcsema_real_eip !63
  store i64 %456, i64* %R14_val, !mcsema_real_eip !63
  %457 = load i64, i64* %R15, !mcsema_real_eip !63
  store i64 %457, i64* %R15_val, !mcsema_real_eip !63
  %458 = load i64, i64* %RIP, !mcsema_real_eip !63
  store i64 %458, i64* %RIP_val, !mcsema_real_eip !63
  %459 = load i1, i1* %CF, align 1, !mcsema_real_eip !63
  store i1 %459, i1* %CF_val, !mcsema_real_eip !63
  %460 = load i1, i1* %PF, align 1, !mcsema_real_eip !63
  store i1 %460, i1* %PF_val, !mcsema_real_eip !63
  %461 = load i1, i1* %AF, align 1, !mcsema_real_eip !63
  store i1 %461, i1* %AF_val, !mcsema_real_eip !63
  %462 = load i1, i1* %ZF, align 1, !mcsema_real_eip !63
  store i1 %462, i1* %ZF_val, !mcsema_real_eip !63
  %463 = load i1, i1* %SF, align 1, !mcsema_real_eip !63
  store i1 %463, i1* %SF_val, !mcsema_real_eip !63
  %464 = load i1, i1* %OF, align 1, !mcsema_real_eip !63
  store i1 %464, i1* %OF_val, !mcsema_real_eip !63
  %465 = load i1, i1* %DF, align 1, !mcsema_real_eip !63
  store i1 %465, i1* %DF_val, !mcsema_real_eip !63
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !63
  %466 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !63
  store i1 %466, i1* %FPU_B_val, !mcsema_real_eip !63
  %467 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !63
  store i1 %467, i1* %FPU_C3_val, !mcsema_real_eip !63
  %468 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !63
  store i3 %468, i3* %FPU_TOP_val, !mcsema_real_eip !63
  %469 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !63
  store i1 %469, i1* %FPU_C2_val, !mcsema_real_eip !63
  %470 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !63
  store i1 %470, i1* %FPU_C1_val, !mcsema_real_eip !63
  %471 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !63
  store i1 %471, i1* %FPU_C0_val, !mcsema_real_eip !63
  %472 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !63
  store i1 %472, i1* %FPU_ES_val, !mcsema_real_eip !63
  %473 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !63
  store i1 %473, i1* %FPU_SF_val, !mcsema_real_eip !63
  %474 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !63
  store i1 %474, i1* %FPU_PE_val, !mcsema_real_eip !63
  %475 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !63
  store i1 %475, i1* %FPU_UE_val, !mcsema_real_eip !63
  %476 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !63
  store i1 %476, i1* %FPU_OE_val, !mcsema_real_eip !63
  %477 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !63
  store i1 %477, i1* %FPU_ZE_val, !mcsema_real_eip !63
  %478 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !63
  store i1 %478, i1* %FPU_DE_val, !mcsema_real_eip !63
  %479 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !63
  store i1 %479, i1* %FPU_IE_val, !mcsema_real_eip !63
  %480 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !63
  store i1 %480, i1* %FPU_X_val, !mcsema_real_eip !63
  %481 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !63
  store i2 %481, i2* %FPU_RC_val, !mcsema_real_eip !63
  %482 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !63
  store i2 %482, i2* %FPU_PC_val, !mcsema_real_eip !63
  %483 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !63
  store i1 %483, i1* %FPU_PM_val, !mcsema_real_eip !63
  %484 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !63
  store i1 %484, i1* %FPU_UM_val, !mcsema_real_eip !63
  %485 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !63
  store i1 %485, i1* %FPU_OM_val, !mcsema_real_eip !63
  %486 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !63
  store i1 %486, i1* %FPU_ZM_val, !mcsema_real_eip !63
  %487 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !63
  store i1 %487, i1* %FPU_DM_val, !mcsema_real_eip !63
  %488 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !63
  store i1 %488, i1* %FPU_IM_val, !mcsema_real_eip !63
  %489 = load i64, i64* %52, align 4
  store i64 %489, i64* %53, align 4
  %490 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !63
  store i16 %490, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !63
  %491 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !63
  store i64 %491, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !63
  %492 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !63
  store i16 %492, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !63
  %493 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !63
  store i64 %493, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !63
  %494 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !63
  store i11 %494, i11* %FPU_FOPCODE_val, !mcsema_real_eip !63
  %495 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !63
  store i128 %495, i128* %XMM0_val, !mcsema_real_eip !63
  %496 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !63
  store i128 %496, i128* %XMM1_val, !mcsema_real_eip !63
  %497 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !63
  store i128 %497, i128* %XMM2_val, !mcsema_real_eip !63
  %498 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !63
  store i128 %498, i128* %XMM3_val, !mcsema_real_eip !63
  %499 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !63
  store i128 %499, i128* %XMM4_val, !mcsema_real_eip !63
  %500 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !63
  store i128 %500, i128* %XMM5_val, !mcsema_real_eip !63
  %501 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !63
  store i128 %501, i128* %XMM6_val, !mcsema_real_eip !63
  %502 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !63
  store i128 %502, i128* %XMM7_val, !mcsema_real_eip !63
  %503 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !63
  store i128 %503, i128* %XMM8_val, !mcsema_real_eip !63
  %504 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !63
  store i128 %504, i128* %XMM9_val, !mcsema_real_eip !63
  %505 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !63
  store i128 %505, i128* %XMM10_val, !mcsema_real_eip !63
  %506 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !63
  store i128 %506, i128* %XMM11_val, !mcsema_real_eip !63
  %507 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !63
  store i128 %507, i128* %XMM12_val, !mcsema_real_eip !63
  %508 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !63
  store i128 %508, i128* %XMM13_val, !mcsema_real_eip !63
  %509 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !63
  store i128 %509, i128* %XMM14_val, !mcsema_real_eip !63
  %510 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !63
  store i128 %510, i128* %XMM15_val, !mcsema_real_eip !63
  %511 = load i64, i64* %STACK_BASE, !mcsema_real_eip !63
  store i64 %511, i64* %STACK_BASE_val, !mcsema_real_eip !63
  %512 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !63
  store i64 %512, i64* %STACK_LIMIT_val, !mcsema_real_eip !63
  %513 = load i64, i64* %RBP_val, !mcsema_real_eip !64
  %514 = add i64 %513, -16, !mcsema_real_eip !64
  %515 = inttoptr i64 %514 to i64*, !mcsema_real_eip !64
  %516 = bitcast i64* %515 to i32*
  %517 = load i32, i32* %516, !mcsema_real_eip !64
  %518 = zext i32 %517 to i64, !mcsema_real_eip !64
  store i64 %518, i64* %RDI_val, !mcsema_real_eip !64
  %519 = load i64, i64* %RAX_val, !mcsema_real_eip !65
  %520 = and i64 %519, 4294967295
  store i64 %520, i64* %RSI_val, !mcsema_real_eip !65
  %521 = load i64, i64* %RSP_val, !mcsema_real_eip !66
  %522 = add i64 %521, -8
  %523 = inttoptr i64 %522 to i64*, !mcsema_real_eip !66
  store i64 -4981261766360305936, i64* %523, !mcsema_real_eip !66
  store i64 %522, i64* %RSP_val, !mcsema_real_eip !66
  %524 = load i64, i64* %RAX_val, !mcsema_real_eip !66
  store i64 %524, i64* %RAX, !mcsema_real_eip !66
  %525 = load i64, i64* %RBX_val, !mcsema_real_eip !66
  store i64 %525, i64* %RBX, !mcsema_real_eip !66
  %526 = load i64, i64* %RCX_val, !mcsema_real_eip !66
  store i64 %526, i64* %RCX, !mcsema_real_eip !66
  %527 = load i64, i64* %RDX_val, !mcsema_real_eip !66
  store i64 %527, i64* %RDX, !mcsema_real_eip !66
  %528 = load i64, i64* %RSI_val, !mcsema_real_eip !66
  store i64 %528, i64* %RSI, !mcsema_real_eip !66
  %529 = load i64, i64* %RDI_val, !mcsema_real_eip !66
  store i64 %529, i64* %RDI, !mcsema_real_eip !66
  %530 = load i64, i64* %RSP_val, !mcsema_real_eip !66
  store i64 %530, i64* %RSP, !mcsema_real_eip !66
  %531 = load i64, i64* %RBP_val, !mcsema_real_eip !66
  store i64 %531, i64* %RBP, !mcsema_real_eip !66
  %532 = load i64, i64* %R8_val, !mcsema_real_eip !66
  store i64 %532, i64* %R8, !mcsema_real_eip !66
  %533 = load i64, i64* %R9_val, !mcsema_real_eip !66
  store i64 %533, i64* %R9, !mcsema_real_eip !66
  %534 = load i64, i64* %R10_val, !mcsema_real_eip !66
  store i64 %534, i64* %R10, !mcsema_real_eip !66
  %535 = load i64, i64* %R11_val, !mcsema_real_eip !66
  store i64 %535, i64* %R11, !mcsema_real_eip !66
  %536 = load i64, i64* %R12_val, !mcsema_real_eip !66
  store i64 %536, i64* %R12, !mcsema_real_eip !66
  %537 = load i64, i64* %R13_val, !mcsema_real_eip !66
  store i64 %537, i64* %R13, !mcsema_real_eip !66
  %538 = load i64, i64* %R14_val, !mcsema_real_eip !66
  store i64 %538, i64* %R14, !mcsema_real_eip !66
  %539 = load i64, i64* %R15_val, !mcsema_real_eip !66
  store i64 %539, i64* %R15, !mcsema_real_eip !66
  %540 = load i64, i64* %RIP_val, !mcsema_real_eip !66
  store i64 %540, i64* %RIP, !mcsema_real_eip !66
  %541 = load i1, i1* %CF_val, !mcsema_real_eip !66
  store i1 %541, i1* %CF, align 1, !mcsema_real_eip !66
  %542 = load i1, i1* %PF_val, !mcsema_real_eip !66
  store i1 %542, i1* %PF, align 1, !mcsema_real_eip !66
  %543 = load i1, i1* %AF_val, !mcsema_real_eip !66
  store i1 %543, i1* %AF, align 1, !mcsema_real_eip !66
  %544 = load i1, i1* %ZF_val, !mcsema_real_eip !66
  store i1 %544, i1* %ZF, align 1, !mcsema_real_eip !66
  %545 = load i1, i1* %SF_val, !mcsema_real_eip !66
  store i1 %545, i1* %SF, align 1, !mcsema_real_eip !66
  %546 = load i1, i1* %OF_val, !mcsema_real_eip !66
  store i1 %546, i1* %OF, align 1, !mcsema_real_eip !66
  %547 = load i1, i1* %DF_val, !mcsema_real_eip !66
  store i1 %547, i1* %DF, align 1, !mcsema_real_eip !66
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !66
  %548 = load i1, i1* %FPU_B_val, !mcsema_real_eip !66
  store i1 %548, i1* %FPU_B, align 1, !mcsema_real_eip !66
  %549 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !66
  store i1 %549, i1* %FPU_C3, align 1, !mcsema_real_eip !66
  %550 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !66
  store i3 %550, i3* %FPU_TOP, align 1, !mcsema_real_eip !66
  %551 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !66
  store i1 %551, i1* %FPU_C2, align 1, !mcsema_real_eip !66
  %552 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !66
  store i1 %552, i1* %FPU_C1, align 1, !mcsema_real_eip !66
  %553 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !66
  store i1 %553, i1* %FPU_C0, align 1, !mcsema_real_eip !66
  %554 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !66
  store i1 %554, i1* %FPU_ES, align 1, !mcsema_real_eip !66
  %555 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !66
  store i1 %555, i1* %FPU_SF, align 1, !mcsema_real_eip !66
  %556 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !66
  store i1 %556, i1* %FPU_PE, align 1, !mcsema_real_eip !66
  %557 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !66
  store i1 %557, i1* %FPU_UE, align 1, !mcsema_real_eip !66
  %558 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !66
  store i1 %558, i1* %FPU_OE, align 1, !mcsema_real_eip !66
  %559 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !66
  store i1 %559, i1* %FPU_ZE, align 1, !mcsema_real_eip !66
  %560 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !66
  store i1 %560, i1* %FPU_DE, align 1, !mcsema_real_eip !66
  %561 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !66
  store i1 %561, i1* %FPU_IE, align 1, !mcsema_real_eip !66
  %562 = load i1, i1* %FPU_X_val, !mcsema_real_eip !66
  store i1 %562, i1* %FPU_X, align 1, !mcsema_real_eip !66
  %563 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !66
  store i2 %563, i2* %FPU_RC, align 1, !mcsema_real_eip !66
  %564 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !66
  store i2 %564, i2* %FPU_PC, align 1, !mcsema_real_eip !66
  %565 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !66
  store i1 %565, i1* %FPU_PM, align 1, !mcsema_real_eip !66
  %566 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !66
  store i1 %566, i1* %FPU_UM, align 1, !mcsema_real_eip !66
  %567 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !66
  store i1 %567, i1* %FPU_OM, align 1, !mcsema_real_eip !66
  %568 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !66
  store i1 %568, i1* %FPU_ZM, align 1, !mcsema_real_eip !66
  %569 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !66
  store i1 %569, i1* %FPU_DM, align 1, !mcsema_real_eip !66
  %570 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !66
  store i1 %570, i1* %FPU_IM, align 1, !mcsema_real_eip !66
  %571 = load i64, i64* %53, align 4
  store i64 %571, i64* %52, align 4
  %572 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !66
  store i16 %572, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !66
  %573 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !66
  store i64 %573, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !66
  %574 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !66
  store i16 %574, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !66
  %575 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !66
  store i64 %575, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !66
  %576 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !66
  store i11 %576, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !66
  %577 = load i128, i128* %XMM0_val, !mcsema_real_eip !66
  store i128 %577, i128* %XMM0, align 1, !mcsema_real_eip !66
  %578 = load i128, i128* %XMM1_val, !mcsema_real_eip !66
  store i128 %578, i128* %XMM1, align 1, !mcsema_real_eip !66
  %579 = load i128, i128* %XMM2_val, !mcsema_real_eip !66
  store i128 %579, i128* %XMM2, align 1, !mcsema_real_eip !66
  %580 = load i128, i128* %XMM3_val, !mcsema_real_eip !66
  store i128 %580, i128* %XMM3, align 1, !mcsema_real_eip !66
  %581 = load i128, i128* %XMM4_val, !mcsema_real_eip !66
  store i128 %581, i128* %XMM4, align 1, !mcsema_real_eip !66
  %582 = load i128, i128* %XMM5_val, !mcsema_real_eip !66
  store i128 %582, i128* %XMM5, align 1, !mcsema_real_eip !66
  %583 = load i128, i128* %XMM6_val, !mcsema_real_eip !66
  store i128 %583, i128* %XMM6, align 1, !mcsema_real_eip !66
  %584 = load i128, i128* %XMM7_val, !mcsema_real_eip !66
  store i128 %584, i128* %XMM7, align 1, !mcsema_real_eip !66
  %585 = load i128, i128* %XMM8_val, !mcsema_real_eip !66
  store i128 %585, i128* %XMM8, align 1, !mcsema_real_eip !66
  %586 = load i128, i128* %XMM9_val, !mcsema_real_eip !66
  store i128 %586, i128* %XMM9, align 1, !mcsema_real_eip !66
  %587 = load i128, i128* %XMM10_val, !mcsema_real_eip !66
  store i128 %587, i128* %XMM10, align 1, !mcsema_real_eip !66
  %588 = load i128, i128* %XMM11_val, !mcsema_real_eip !66
  store i128 %588, i128* %XMM11, align 1, !mcsema_real_eip !66
  %589 = load i128, i128* %XMM12_val, !mcsema_real_eip !66
  store i128 %589, i128* %XMM12, align 1, !mcsema_real_eip !66
  %590 = load i128, i128* %XMM13_val, !mcsema_real_eip !66
  store i128 %590, i128* %XMM13, align 1, !mcsema_real_eip !66
  %591 = load i128, i128* %XMM14_val, !mcsema_real_eip !66
  store i128 %591, i128* %XMM14, align 1, !mcsema_real_eip !66
  %592 = load i128, i128* %XMM15_val, !mcsema_real_eip !66
  store i128 %592, i128* %XMM15, align 1, !mcsema_real_eip !66
  %593 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !66
  store i64 %593, i64* %STACK_BASE, align 1, !mcsema_real_eip !66
  %594 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !66
  store i64 %594, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !66
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !66
  %595 = load i64, i64* %RAX, !mcsema_real_eip !66
  store i64 %595, i64* %RAX_val, !mcsema_real_eip !66
  %596 = load i64, i64* %RBX, !mcsema_real_eip !66
  store i64 %596, i64* %RBX_val, !mcsema_real_eip !66
  %597 = load i64, i64* %RCX, !mcsema_real_eip !66
  store i64 %597, i64* %RCX_val, !mcsema_real_eip !66
  %598 = load i64, i64* %RDX, !mcsema_real_eip !66
  store i64 %598, i64* %RDX_val, !mcsema_real_eip !66
  %599 = load i64, i64* %RSI, !mcsema_real_eip !66
  store i64 %599, i64* %RSI_val, !mcsema_real_eip !66
  %600 = load i64, i64* %RDI, !mcsema_real_eip !66
  store i64 %600, i64* %RDI_val, !mcsema_real_eip !66
  %601 = load i64, i64* %RSP, !mcsema_real_eip !66
  store i64 %601, i64* %RSP_val, !mcsema_real_eip !66
  %602 = load i64, i64* %RBP, !mcsema_real_eip !66
  store i64 %602, i64* %RBP_val, !mcsema_real_eip !66
  %603 = load i64, i64* %R8, !mcsema_real_eip !66
  store i64 %603, i64* %R8_val, !mcsema_real_eip !66
  %604 = load i64, i64* %R9, !mcsema_real_eip !66
  store i64 %604, i64* %R9_val, !mcsema_real_eip !66
  %605 = load i64, i64* %R10, !mcsema_real_eip !66
  store i64 %605, i64* %R10_val, !mcsema_real_eip !66
  %606 = load i64, i64* %R11, !mcsema_real_eip !66
  store i64 %606, i64* %R11_val, !mcsema_real_eip !66
  %607 = load i64, i64* %R12, !mcsema_real_eip !66
  store i64 %607, i64* %R12_val, !mcsema_real_eip !66
  %608 = load i64, i64* %R13, !mcsema_real_eip !66
  store i64 %608, i64* %R13_val, !mcsema_real_eip !66
  %609 = load i64, i64* %R14, !mcsema_real_eip !66
  store i64 %609, i64* %R14_val, !mcsema_real_eip !66
  %610 = load i64, i64* %R15, !mcsema_real_eip !66
  store i64 %610, i64* %R15_val, !mcsema_real_eip !66
  %611 = load i64, i64* %RIP, !mcsema_real_eip !66
  store i64 %611, i64* %RIP_val, !mcsema_real_eip !66
  %612 = load i1, i1* %CF, align 1, !mcsema_real_eip !66
  store i1 %612, i1* %CF_val, !mcsema_real_eip !66
  %613 = load i1, i1* %PF, align 1, !mcsema_real_eip !66
  store i1 %613, i1* %PF_val, !mcsema_real_eip !66
  %614 = load i1, i1* %AF, align 1, !mcsema_real_eip !66
  store i1 %614, i1* %AF_val, !mcsema_real_eip !66
  %615 = load i1, i1* %ZF, align 1, !mcsema_real_eip !66
  store i1 %615, i1* %ZF_val, !mcsema_real_eip !66
  %616 = load i1, i1* %SF, align 1, !mcsema_real_eip !66
  store i1 %616, i1* %SF_val, !mcsema_real_eip !66
  %617 = load i1, i1* %OF, align 1, !mcsema_real_eip !66
  store i1 %617, i1* %OF_val, !mcsema_real_eip !66
  %618 = load i1, i1* %DF, align 1, !mcsema_real_eip !66
  store i1 %618, i1* %DF_val, !mcsema_real_eip !66
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !66
  %619 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !66
  store i1 %619, i1* %FPU_B_val, !mcsema_real_eip !66
  %620 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !66
  store i1 %620, i1* %FPU_C3_val, !mcsema_real_eip !66
  %621 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !66
  store i3 %621, i3* %FPU_TOP_val, !mcsema_real_eip !66
  %622 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !66
  store i1 %622, i1* %FPU_C2_val, !mcsema_real_eip !66
  %623 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !66
  store i1 %623, i1* %FPU_C1_val, !mcsema_real_eip !66
  %624 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !66
  store i1 %624, i1* %FPU_C0_val, !mcsema_real_eip !66
  %625 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !66
  store i1 %625, i1* %FPU_ES_val, !mcsema_real_eip !66
  %626 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !66
  store i1 %626, i1* %FPU_SF_val, !mcsema_real_eip !66
  %627 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !66
  store i1 %627, i1* %FPU_PE_val, !mcsema_real_eip !66
  %628 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !66
  store i1 %628, i1* %FPU_UE_val, !mcsema_real_eip !66
  %629 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !66
  store i1 %629, i1* %FPU_OE_val, !mcsema_real_eip !66
  %630 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !66
  store i1 %630, i1* %FPU_ZE_val, !mcsema_real_eip !66
  %631 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !66
  store i1 %631, i1* %FPU_DE_val, !mcsema_real_eip !66
  %632 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !66
  store i1 %632, i1* %FPU_IE_val, !mcsema_real_eip !66
  %633 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !66
  store i1 %633, i1* %FPU_X_val, !mcsema_real_eip !66
  %634 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !66
  store i2 %634, i2* %FPU_RC_val, !mcsema_real_eip !66
  %635 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !66
  store i2 %635, i2* %FPU_PC_val, !mcsema_real_eip !66
  %636 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !66
  store i1 %636, i1* %FPU_PM_val, !mcsema_real_eip !66
  %637 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !66
  store i1 %637, i1* %FPU_UM_val, !mcsema_real_eip !66
  %638 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !66
  store i1 %638, i1* %FPU_OM_val, !mcsema_real_eip !66
  %639 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !66
  store i1 %639, i1* %FPU_ZM_val, !mcsema_real_eip !66
  %640 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !66
  store i1 %640, i1* %FPU_DM_val, !mcsema_real_eip !66
  %641 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !66
  store i1 %641, i1* %FPU_IM_val, !mcsema_real_eip !66
  %642 = load i64, i64* %52, align 4
  store i64 %642, i64* %53, align 4
  %643 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !66
  store i16 %643, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !66
  %644 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !66
  store i64 %644, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !66
  %645 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !66
  store i16 %645, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !66
  %646 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !66
  store i64 %646, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !66
  %647 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !66
  store i11 %647, i11* %FPU_FOPCODE_val, !mcsema_real_eip !66
  %648 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !66
  store i128 %648, i128* %XMM0_val, !mcsema_real_eip !66
  %649 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !66
  store i128 %649, i128* %XMM1_val, !mcsema_real_eip !66
  %650 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !66
  store i128 %650, i128* %XMM2_val, !mcsema_real_eip !66
  %651 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !66
  store i128 %651, i128* %XMM3_val, !mcsema_real_eip !66
  %652 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !66
  store i128 %652, i128* %XMM4_val, !mcsema_real_eip !66
  %653 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !66
  store i128 %653, i128* %XMM5_val, !mcsema_real_eip !66
  %654 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !66
  store i128 %654, i128* %XMM6_val, !mcsema_real_eip !66
  %655 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !66
  store i128 %655, i128* %XMM7_val, !mcsema_real_eip !66
  %656 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !66
  store i128 %656, i128* %XMM8_val, !mcsema_real_eip !66
  %657 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !66
  store i128 %657, i128* %XMM9_val, !mcsema_real_eip !66
  %658 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !66
  store i128 %658, i128* %XMM10_val, !mcsema_real_eip !66
  %659 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !66
  store i128 %659, i128* %XMM11_val, !mcsema_real_eip !66
  %660 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !66
  store i128 %660, i128* %XMM12_val, !mcsema_real_eip !66
  %661 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !66
  store i128 %661, i128* %XMM13_val, !mcsema_real_eip !66
  %662 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !66
  store i128 %662, i128* %XMM14_val, !mcsema_real_eip !66
  %663 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !66
  store i128 %663, i128* %XMM15_val, !mcsema_real_eip !66
  %664 = load i64, i64* %STACK_BASE, !mcsema_real_eip !66
  store i64 %664, i64* %STACK_BASE_val, !mcsema_real_eip !66
  %665 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !66
  store i64 %665, i64* %STACK_LIMIT_val, !mcsema_real_eip !66
  %666 = load i64, i64* %RBP_val, !mcsema_real_eip !67
  %667 = add i64 %666, -4, !mcsema_real_eip !67
  %668 = inttoptr i64 %667 to i64*, !mcsema_real_eip !67
  %669 = load i64, i64* %RAX_val, !mcsema_real_eip !67
  %670 = trunc i64 %669 to i32, !mcsema_real_eip !67
  %671 = bitcast i64* %668 to i32*
  store i32 %670, i32* %671, !mcsema_real_eip !67
  br label %block_0x70, !mcsema_real_eip !49

block_0x70:                                       ; preds = %block_0x4a, %block_0x30, %block_0x18
  %672 = load i64, i64* %RBP_val, !mcsema_real_eip !68
  %673 = add i64 %672, -4, !mcsema_real_eip !68
  %674 = inttoptr i64 %673 to i64*, !mcsema_real_eip !68
  %675 = bitcast i64* %674 to i32*
  %676 = load i32, i32* %675, !mcsema_real_eip !68
  %677 = zext i32 %676 to i64, !mcsema_real_eip !68
  store i64 %677, i64* %RAX_val, !mcsema_real_eip !68
  %678 = load i64, i64* %RSP_val, !mcsema_real_eip !69
  %uadd491 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %678, i64 16)
  %679 = extractvalue { i64, i1 } %uadd491, 0
  %680 = xor i64 %679, %678, !mcsema_real_eip !69
  %681 = and i64 %680, 16
  %682 = icmp eq i64 %681, 0
  store i1 %682, i1* %AF_val, !mcsema_real_eip !69
  %683 = icmp slt i64 %679, 0
  store i1 %683, i1* %SF_val, !mcsema_real_eip !69
  %684 = icmp eq i64 %679, 0, !mcsema_real_eip !69
  store i1 %684, i1* %ZF_val, !mcsema_real_eip !69
  %685 = xor i64 %678, -9223372036854775808, !mcsema_real_eip !69
  %686 = and i64 %680, %685, !mcsema_real_eip !69
  %687 = icmp slt i64 %686, 0
  store i1 %687, i1* %OF_val, !mcsema_real_eip !69
  %688 = trunc i64 %679 to i8, !mcsema_real_eip !69
  %689 = tail call i8 @llvm.ctpop.i8(i8 %688), !mcsema_real_eip !69
  %690 = and i8 %689, 1
  %691 = icmp eq i8 %690, 0
  store i1 %691, i1* %PF_val, !mcsema_real_eip !69
  %692 = extractvalue { i64, i1 } %uadd491, 1
  store i1 %692, i1* %CF_val, !mcsema_real_eip !69
  store i64 %679, i64* %RSP_val, !mcsema_real_eip !69
  %693 = inttoptr i64 %679 to i64*, !mcsema_real_eip !70
  %694 = load i64, i64* %693, !mcsema_real_eip !70
  store i64 %694, i64* %RBP_val, !mcsema_real_eip !70
  %695 = add i64 %679, 16, !mcsema_real_eip !71
  store i64 %695, i64* %RSP_val, !mcsema_real_eip !71
  %696 = load i64, i64* %RAX_val, !mcsema_real_eip !71
  store i64 %696, i64* %RAX, !mcsema_real_eip !71
  %697 = load i64, i64* %RBX_val, !mcsema_real_eip !71
  store i64 %697, i64* %RBX, !mcsema_real_eip !71
  %698 = load i64, i64* %RCX_val, !mcsema_real_eip !71
  store i64 %698, i64* %RCX, !mcsema_real_eip !71
  %699 = load i64, i64* %RDX_val, !mcsema_real_eip !71
  store i64 %699, i64* %RDX, !mcsema_real_eip !71
  %700 = load i64, i64* %RSI_val, !mcsema_real_eip !71
  store i64 %700, i64* %RSI, !mcsema_real_eip !71
  %701 = load i64, i64* %RDI_val, !mcsema_real_eip !71
  store i64 %701, i64* %RDI, !mcsema_real_eip !71
  %702 = load i64, i64* %RSP_val, !mcsema_real_eip !71
  store i64 %702, i64* %RSP, !mcsema_real_eip !71
  %703 = load i64, i64* %RBP_val, !mcsema_real_eip !71
  store i64 %703, i64* %RBP, !mcsema_real_eip !71
  %704 = load i64, i64* %R8_val, !mcsema_real_eip !71
  store i64 %704, i64* %R8, !mcsema_real_eip !71
  %705 = load i64, i64* %R9_val, !mcsema_real_eip !71
  store i64 %705, i64* %R9, !mcsema_real_eip !71
  %706 = load i64, i64* %R10_val, !mcsema_real_eip !71
  store i64 %706, i64* %R10, !mcsema_real_eip !71
  %707 = load i64, i64* %R11_val, !mcsema_real_eip !71
  store i64 %707, i64* %R11, !mcsema_real_eip !71
  %708 = load i64, i64* %R12_val, !mcsema_real_eip !71
  store i64 %708, i64* %R12, !mcsema_real_eip !71
  %709 = load i64, i64* %R13_val, !mcsema_real_eip !71
  store i64 %709, i64* %R13, !mcsema_real_eip !71
  %710 = load i64, i64* %R14_val, !mcsema_real_eip !71
  store i64 %710, i64* %R14, !mcsema_real_eip !71
  %711 = load i64, i64* %R15_val, !mcsema_real_eip !71
  store i64 %711, i64* %R15, !mcsema_real_eip !71
  %712 = load i64, i64* %RIP_val, !mcsema_real_eip !71
  store i64 %712, i64* %RIP, !mcsema_real_eip !71
  %713 = load i1, i1* %CF_val, !mcsema_real_eip !71
  store i1 %713, i1* %CF, align 1, !mcsema_real_eip !71
  %714 = load i1, i1* %PF_val, !mcsema_real_eip !71
  store i1 %714, i1* %PF, align 1, !mcsema_real_eip !71
  %715 = load i1, i1* %AF_val, !mcsema_real_eip !71
  store i1 %715, i1* %AF, align 1, !mcsema_real_eip !71
  %716 = load i1, i1* %ZF_val, !mcsema_real_eip !71
  store i1 %716, i1* %ZF, align 1, !mcsema_real_eip !71
  %717 = load i1, i1* %SF_val, !mcsema_real_eip !71
  store i1 %717, i1* %SF, align 1, !mcsema_real_eip !71
  %718 = load i1, i1* %OF_val, !mcsema_real_eip !71
  store i1 %718, i1* %OF, align 1, !mcsema_real_eip !71
  %719 = load i1, i1* %DF_val, !mcsema_real_eip !71
  store i1 %719, i1* %DF, align 1, !mcsema_real_eip !71
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !71
  %720 = load i1, i1* %FPU_B_val, !mcsema_real_eip !71
  store i1 %720, i1* %FPU_B, align 1, !mcsema_real_eip !71
  %721 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !71
  store i1 %721, i1* %FPU_C3, align 1, !mcsema_real_eip !71
  %722 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !71
  store i3 %722, i3* %FPU_TOP, align 1, !mcsema_real_eip !71
  %723 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !71
  store i1 %723, i1* %FPU_C2, align 1, !mcsema_real_eip !71
  %724 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !71
  store i1 %724, i1* %FPU_C1, align 1, !mcsema_real_eip !71
  %725 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !71
  store i1 %725, i1* %FPU_C0, align 1, !mcsema_real_eip !71
  %726 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !71
  store i1 %726, i1* %FPU_ES, align 1, !mcsema_real_eip !71
  %727 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !71
  store i1 %727, i1* %FPU_SF, align 1, !mcsema_real_eip !71
  %728 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !71
  store i1 %728, i1* %FPU_PE, align 1, !mcsema_real_eip !71
  %729 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !71
  store i1 %729, i1* %FPU_UE, align 1, !mcsema_real_eip !71
  %730 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !71
  store i1 %730, i1* %FPU_OE, align 1, !mcsema_real_eip !71
  %731 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !71
  store i1 %731, i1* %FPU_ZE, align 1, !mcsema_real_eip !71
  %732 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !71
  store i1 %732, i1* %FPU_DE, align 1, !mcsema_real_eip !71
  %733 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !71
  store i1 %733, i1* %FPU_IE, align 1, !mcsema_real_eip !71
  %734 = load i1, i1* %FPU_X_val, !mcsema_real_eip !71
  store i1 %734, i1* %FPU_X, align 1, !mcsema_real_eip !71
  %735 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !71
  store i2 %735, i2* %FPU_RC, align 1, !mcsema_real_eip !71
  %736 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !71
  store i2 %736, i2* %FPU_PC, align 1, !mcsema_real_eip !71
  %737 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !71
  store i1 %737, i1* %FPU_PM, align 1, !mcsema_real_eip !71
  %738 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !71
  store i1 %738, i1* %FPU_UM, align 1, !mcsema_real_eip !71
  %739 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !71
  store i1 %739, i1* %FPU_OM, align 1, !mcsema_real_eip !71
  %740 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !71
  store i1 %740, i1* %FPU_ZM, align 1, !mcsema_real_eip !71
  %741 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !71
  store i1 %741, i1* %FPU_DM, align 1, !mcsema_real_eip !71
  %742 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !71
  store i1 %742, i1* %FPU_IM, align 1, !mcsema_real_eip !71
  %743 = load i64, i64* %53, align 4
  store i64 %743, i64* %52, align 4
  %744 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !71
  store i16 %744, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !71
  %745 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !71
  store i64 %745, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !71
  %746 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !71
  store i16 %746, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !71
  %747 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !71
  store i64 %747, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !71
  %748 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !71
  store i11 %748, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !71
  %749 = load i128, i128* %XMM0_val, !mcsema_real_eip !71
  store i128 %749, i128* %XMM0, align 1, !mcsema_real_eip !71
  %750 = load i128, i128* %XMM1_val, !mcsema_real_eip !71
  store i128 %750, i128* %XMM1, align 1, !mcsema_real_eip !71
  %751 = load i128, i128* %XMM2_val, !mcsema_real_eip !71
  store i128 %751, i128* %XMM2, align 1, !mcsema_real_eip !71
  %752 = load i128, i128* %XMM3_val, !mcsema_real_eip !71
  store i128 %752, i128* %XMM3, align 1, !mcsema_real_eip !71
  %753 = load i128, i128* %XMM4_val, !mcsema_real_eip !71
  store i128 %753, i128* %XMM4, align 1, !mcsema_real_eip !71
  %754 = load i128, i128* %XMM5_val, !mcsema_real_eip !71
  store i128 %754, i128* %XMM5, align 1, !mcsema_real_eip !71
  %755 = load i128, i128* %XMM6_val, !mcsema_real_eip !71
  store i128 %755, i128* %XMM6, align 1, !mcsema_real_eip !71
  %756 = load i128, i128* %XMM7_val, !mcsema_real_eip !71
  store i128 %756, i128* %XMM7, align 1, !mcsema_real_eip !71
  %757 = load i128, i128* %XMM8_val, !mcsema_real_eip !71
  store i128 %757, i128* %XMM8, align 1, !mcsema_real_eip !71
  %758 = load i128, i128* %XMM9_val, !mcsema_real_eip !71
  store i128 %758, i128* %XMM9, align 1, !mcsema_real_eip !71
  %759 = load i128, i128* %XMM10_val, !mcsema_real_eip !71
  store i128 %759, i128* %XMM10, align 1, !mcsema_real_eip !71
  %760 = load i128, i128* %XMM11_val, !mcsema_real_eip !71
  store i128 %760, i128* %XMM11, align 1, !mcsema_real_eip !71
  %761 = load i128, i128* %XMM12_val, !mcsema_real_eip !71
  store i128 %761, i128* %XMM12, align 1, !mcsema_real_eip !71
  %762 = load i128, i128* %XMM13_val, !mcsema_real_eip !71
  store i128 %762, i128* %XMM13, align 1, !mcsema_real_eip !71
  %763 = load i128, i128* %XMM14_val, !mcsema_real_eip !71
  store i128 %763, i128* %XMM14, align 1, !mcsema_real_eip !71
  %764 = load i128, i128* %XMM15_val, !mcsema_real_eip !71
  store i128 %764, i128* %XMM15, align 1, !mcsema_real_eip !71
  %765 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !71
  store i64 %765, i64* %STACK_BASE, align 1, !mcsema_real_eip !71
  %766 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !71
  store i64 %766, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !71
  ret void, !mcsema_real_eip !71
}

declare x86_64_sysvcc i64 @atoi(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_80(%struct.regs* %0)
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
!2 = !{i64 128}
!3 = !{i64 129}
!4 = !{i64 132}
!5 = !{i64 136}
!6 = !{i64 143}
!7 = !{i64 146}
!8 = !{i64 150}
!9 = !{i64 154}
!10 = !{i64 160}
!11 = !{i64 164}
!12 = !{i64 168}
!13 = !{i64 173}
!14 = !{i64 176}
!15 = !{i64 181}
!16 = !{i64 186}
!17 = !{i64 189}
!18 = !{i64 194}
!19 = !{i64 197}
!20 = !{i64 202}
!21 = !{i64 205}
!22 = !{i64 208}
!23 = !{i64 211}
!24 = !{i64 214}
!25 = !{i64 216}
!26 = !{i64 221}
!27 = !{i64 231}
!28 = !{i64 234}
!29 = !{i64 236}
!30 = !{i64 238}
!31 = !{i64 243}
!32 = !{i64 245}
!33 = !{i64 248}
!34 = !{i64 250}
!35 = !{i64 254}
!36 = !{i64 255}
!37 = !{i64 0}
!38 = !{i64 1}
!39 = !{i64 4}
!40 = !{i64 8}
!41 = !{i64 11}
!42 = !{i64 14}
!43 = !{i64 38}
!44 = !{i64 18}
!45 = !{i64 27}
!46 = !{i64 30}
!47 = !{i64 33}
!48 = !{i64 42}
!49 = !{i64 48}
!50 = !{i64 53}
!51 = !{i64 56}
!52 = !{i64 59}
!53 = !{i64 61}
!54 = !{i64 66}
!55 = !{i64 69}
!56 = !{i64 74}
!57 = !{i64 77}
!58 = !{i64 80}
!59 = !{i64 83}
!60 = !{i64 86}
!61 = !{i64 89}
!62 = !{i64 91}
!63 = !{i64 94}
!64 = !{i64 99}
!65 = !{i64 102}
!66 = !{i64 104}
!67 = !{i64 109}
!68 = !{i64 112}
!69 = !{i64 115}
!70 = !{i64 119}
!71 = !{i64 120}
