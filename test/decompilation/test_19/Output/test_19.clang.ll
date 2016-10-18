; ModuleID = 'Output/test_19.clang.bc'
source_filename = "Output/test_19.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [24 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x2c = internal global %0 zeroinitializer, align 64

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_1(%struct.regs*) #0 {
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
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %1 = load i64, i64* %RBX, !mcsema_real_eip !2
  store i64 %1, i64* %RBX_val, !mcsema_real_eip !2
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %2 = load i64, i64* %RCX, !mcsema_real_eip !2
  store i64 %2, i64* %RCX_val, !mcsema_real_eip !2
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %3 = load i64, i64* %RDX, !mcsema_real_eip !2
  store i64 %3, i64* %RDX_val, !mcsema_real_eip !2
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %4 = load i64, i64* %RSI, !mcsema_real_eip !2
  store i64 %4, i64* %RSI_val, !mcsema_real_eip !2
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %5 = load i64, i64* %RDI, !mcsema_real_eip !2
  store i64 %5, i64* %RDI_val, !mcsema_real_eip !2
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %6 = load i64, i64* %RSP, !mcsema_real_eip !2
  store i64 %6, i64* %RSP_val, !mcsema_real_eip !2
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %7 = load i64, i64* %RBP, !mcsema_real_eip !2
  store i64 %7, i64* %RBP_val, !mcsema_real_eip !2
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %8 = load i64, i64* %R8, !mcsema_real_eip !2
  store i64 %8, i64* %R8_val, !mcsema_real_eip !2
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %9 = load i64, i64* %R9, !mcsema_real_eip !2
  store i64 %9, i64* %R9_val, !mcsema_real_eip !2
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %10 = load i64, i64* %R10, !mcsema_real_eip !2
  store i64 %10, i64* %R10_val, !mcsema_real_eip !2
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %11 = load i64, i64* %R11, !mcsema_real_eip !2
  store i64 %11, i64* %R11_val, !mcsema_real_eip !2
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %12 = load i64, i64* %R12, !mcsema_real_eip !2
  store i64 %12, i64* %R12_val, !mcsema_real_eip !2
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %13 = load i64, i64* %R13, !mcsema_real_eip !2
  store i64 %13, i64* %R13_val, !mcsema_real_eip !2
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %14 = load i64, i64* %R14, !mcsema_real_eip !2
  store i64 %14, i64* %R14_val, !mcsema_real_eip !2
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %15 = load i64, i64* %R15, !mcsema_real_eip !2
  store i64 %15, i64* %R15_val, !mcsema_real_eip !2
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %16 = load i64, i64* %RIP, !mcsema_real_eip !2
  store i64 %16, i64* %RIP_val, !mcsema_real_eip !2
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %17 = load i1, i1* %CF, align 1, !mcsema_real_eip !2
  store i1 %17, i1* %CF_val, !mcsema_real_eip !2
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %18 = load i1, i1* %PF, align 1, !mcsema_real_eip !2
  store i1 %18, i1* %PF_val, !mcsema_real_eip !2
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %19 = load i1, i1* %AF, align 1, !mcsema_real_eip !2
  store i1 %19, i1* %AF_val, !mcsema_real_eip !2
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %20 = load i1, i1* %ZF, align 1, !mcsema_real_eip !2
  store i1 %20, i1* %ZF_val, !mcsema_real_eip !2
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %21 = load i1, i1* %SF, align 1, !mcsema_real_eip !2
  store i1 %21, i1* %SF_val, !mcsema_real_eip !2
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %22 = load i1, i1* %OF, align 1, !mcsema_real_eip !2
  store i1 %22, i1* %OF_val, !mcsema_real_eip !2
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %23 = load i1, i1* %DF, align 1, !mcsema_real_eip !2
  store i1 %23, i1* %DF_val, !mcsema_real_eip !2
  %24 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %25 = bitcast x86_fp80* %24 to i8*, !mcsema_real_eip !2
  %26 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %25, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !2
  store i1 %27, i1* %FPU_B_val, !mcsema_real_eip !2
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !2
  store i1 %28, i1* %FPU_C3_val, !mcsema_real_eip !2
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %29 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !2
  store i3 %29, i3* %FPU_TOP_val, !mcsema_real_eip !2
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !2
  store i1 %30, i1* %FPU_C2_val, !mcsema_real_eip !2
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !2
  store i1 %31, i1* %FPU_C1_val, !mcsema_real_eip !2
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %32 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !2
  store i1 %32, i1* %FPU_C0_val, !mcsema_real_eip !2
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %33 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !2
  store i1 %33, i1* %FPU_ES_val, !mcsema_real_eip !2
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !2
  store i1 %34, i1* %FPU_SF_val, !mcsema_real_eip !2
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %35 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !2
  store i1 %35, i1* %FPU_PE_val, !mcsema_real_eip !2
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %36 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !2
  store i1 %36, i1* %FPU_UE_val, !mcsema_real_eip !2
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %37 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !2
  store i1 %37, i1* %FPU_OE_val, !mcsema_real_eip !2
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %38 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !2
  store i1 %38, i1* %FPU_ZE_val, !mcsema_real_eip !2
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %39 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !2
  store i1 %39, i1* %FPU_DE_val, !mcsema_real_eip !2
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %40 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !2
  store i1 %40, i1* %FPU_IE_val, !mcsema_real_eip !2
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %41 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !2
  store i1 %41, i1* %FPU_X_val, !mcsema_real_eip !2
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %42 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !2
  store i2 %42, i2* %FPU_RC_val, !mcsema_real_eip !2
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %43 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !2
  store i2 %43, i2* %FPU_PC_val, !mcsema_real_eip !2
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %44 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !2
  store i1 %44, i1* %FPU_PM_val, !mcsema_real_eip !2
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %45 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !2
  store i1 %45, i1* %FPU_UM_val, !mcsema_real_eip !2
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %46 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !2
  store i1 %46, i1* %FPU_OM_val, !mcsema_real_eip !2
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %47 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !2
  store i1 %47, i1* %FPU_ZM_val, !mcsema_real_eip !2
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %48 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !2
  store i1 %48, i1* %FPU_DM_val, !mcsema_real_eip !2
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %49 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !2
  store i1 %49, i1* %FPU_IM_val, !mcsema_real_eip !2
  %50 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %51 = bitcast i8* %50 to i64*
  %52 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %53 = load i64, i64* %51, align 4
  store i64 %53, i64* %52, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %54 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !2
  store i16 %54, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !2
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %55 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !2
  store i64 %55, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %56 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !2
  store i16 %56, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %57 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !2
  store i64 %57, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !2
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !2
  store i128 %58, i128* %XMM0_val, !mcsema_real_eip !2
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !2
  store i128 %59, i128* %XMM1_val, !mcsema_real_eip !2
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !2
  store i128 %60, i128* %XMM2_val, !mcsema_real_eip !2
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !2
  store i128 %61, i128* %XMM3_val, !mcsema_real_eip !2
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !2
  store i128 %62, i128* %XMM4_val, !mcsema_real_eip !2
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %63 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !2
  store i128 %63, i128* %XMM5_val, !mcsema_real_eip !2
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %64 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !2
  store i128 %64, i128* %XMM6_val, !mcsema_real_eip !2
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %65 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !2
  store i128 %65, i128* %XMM7_val, !mcsema_real_eip !2
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %66 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !2
  store i128 %66, i128* %XMM8_val, !mcsema_real_eip !2
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %67 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !2
  store i128 %67, i128* %XMM9_val, !mcsema_real_eip !2
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %68 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !2
  store i128 %68, i128* %XMM10_val, !mcsema_real_eip !2
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %69 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !2
  store i128 %69, i128* %XMM11_val, !mcsema_real_eip !2
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %70 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !2
  store i128 %70, i128* %XMM12_val, !mcsema_real_eip !2
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %71 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !2
  store i128 %71, i128* %XMM13_val, !mcsema_real_eip !2
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %72 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !2
  store i128 %72, i128* %XMM14_val, !mcsema_real_eip !2
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %73 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !2
  store i128 %73, i128* %XMM15_val, !mcsema_real_eip !2
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %74 = load i64, i64* %STACK_BASE, !mcsema_real_eip !2
  store i64 %74, i64* %STACK_BASE_val, !mcsema_real_eip !2
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %75 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !2
  store i64 %75, i64* %STACK_LIMIT_val, !mcsema_real_eip !2
  store i32 35, i32* bitcast (%0* @data_0x2c to i32*), !mcsema_real_eip !2
  store i32 27, i32* inttoptr (i64 add (i64 ptrtoint (%0* @data_0x2c to i64), i64 4) to i32*), !mcsema_real_eip !3
  store i32 35, i32* inttoptr (i64 add (i64 ptrtoint (%0* @data_0x2c to i64), i64 8) to i32*), !mcsema_real_eip !4
  store i32 35, i32* inttoptr (i64 add (i64 ptrtoint (%0* @data_0x2c to i64), i64 12) to i32*), !mcsema_real_eip !5
  store i32 59, i32* inttoptr (i64 add (i64 ptrtoint (%0* @data_0x2c to i64), i64 16) to i32*), !mcsema_real_eip !6
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%0* @data_0x2c to i64), i64 20) to i32*), !mcsema_real_eip !7
  store i1 false, i1* %CF_val, !mcsema_real_eip !8
  store i1 false, i1* %OF_val, !mcsema_real_eip !8
  store i1 false, i1* %SF_val, !mcsema_real_eip !8
  store i1 true, i1* %ZF_val, !mcsema_real_eip !8
  store i1 true, i1* %PF_val, !mcsema_real_eip !8
  %76 = load i1, i1* %AF_val, !mcsema_real_eip !9
  %77 = zext i1 %76 to i64, !mcsema_real_eip !9
  %78 = load i1, i1* %DF_val, !mcsema_real_eip !9
  %79 = zext i1 %78 to i64, !mcsema_real_eip !9
  %80 = load i1, i1* %OF_val, !mcsema_real_eip !9
  %81 = zext i1 %80 to i64, !mcsema_real_eip !9
  %82 = shl nuw nsw i64 %77, 4, !mcsema_real_eip !9
  %83 = shl nuw nsw i64 %79, 10, !mcsema_real_eip !9
  %84 = shl nuw nsw i64 %81, 11, !mcsema_real_eip !9
  %85 = or i64 %82, %83
  %86 = or i64 %85, %84
  %87 = or i64 %86, 582
  %88 = load i64, i64* %RSP_val, !mcsema_real_eip !9
  %89 = add i64 %88, -8
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !9
  store i64 %87, i64* %90, !mcsema_real_eip !9
  store i64 %89, i64* %RSP_val, !mcsema_real_eip !9
  %91 = load i64, i64* %90, !mcsema_real_eip !10
  %92 = add i64 %88, 8, !mcsema_real_eip !11
  store i64 %92, i64* %RSP_val, !mcsema_real_eip !11
  store i64 %91, i64* %RAX, !mcsema_real_eip !11
  %93 = load i64, i64* %RBX_val, !mcsema_real_eip !11
  store i64 %93, i64* %RBX, !mcsema_real_eip !11
  %94 = load i64, i64* %RCX_val, !mcsema_real_eip !11
  store i64 %94, i64* %RCX, !mcsema_real_eip !11
  %95 = load i64, i64* %RDX_val, !mcsema_real_eip !11
  store i64 %95, i64* %RDX, !mcsema_real_eip !11
  %96 = load i64, i64* %RSI_val, !mcsema_real_eip !11
  store i64 %96, i64* %RSI, !mcsema_real_eip !11
  %97 = load i64, i64* %RDI_val, !mcsema_real_eip !11
  store i64 %97, i64* %RDI, !mcsema_real_eip !11
  %98 = load i64, i64* %RSP_val, !mcsema_real_eip !11
  store i64 %98, i64* %RSP, !mcsema_real_eip !11
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !11
  store i64 %99, i64* %RBP, !mcsema_real_eip !11
  %100 = load i64, i64* %R8_val, !mcsema_real_eip !11
  store i64 %100, i64* %R8, !mcsema_real_eip !11
  %101 = load i64, i64* %R9_val, !mcsema_real_eip !11
  store i64 %101, i64* %R9, !mcsema_real_eip !11
  %102 = load i64, i64* %R10_val, !mcsema_real_eip !11
  store i64 %102, i64* %R10, !mcsema_real_eip !11
  %103 = load i64, i64* %R11_val, !mcsema_real_eip !11
  store i64 %103, i64* %R11, !mcsema_real_eip !11
  %104 = load i64, i64* %R12_val, !mcsema_real_eip !11
  store i64 %104, i64* %R12, !mcsema_real_eip !11
  %105 = load i64, i64* %R13_val, !mcsema_real_eip !11
  store i64 %105, i64* %R13, !mcsema_real_eip !11
  %106 = load i64, i64* %R14_val, !mcsema_real_eip !11
  store i64 %106, i64* %R14, !mcsema_real_eip !11
  %107 = load i64, i64* %R15_val, !mcsema_real_eip !11
  store i64 %107, i64* %R15, !mcsema_real_eip !11
  %108 = load i64, i64* %RIP_val, !mcsema_real_eip !11
  store i64 %108, i64* %RIP, !mcsema_real_eip !11
  %109 = load i1, i1* %CF_val, !mcsema_real_eip !11
  store i1 %109, i1* %CF, align 1, !mcsema_real_eip !11
  %110 = load i1, i1* %PF_val, !mcsema_real_eip !11
  store i1 %110, i1* %PF, align 1, !mcsema_real_eip !11
  %111 = load i1, i1* %AF_val, !mcsema_real_eip !11
  store i1 %111, i1* %AF, align 1, !mcsema_real_eip !11
  %112 = load i1, i1* %ZF_val, !mcsema_real_eip !11
  store i1 %112, i1* %ZF, align 1, !mcsema_real_eip !11
  %113 = load i1, i1* %SF_val, !mcsema_real_eip !11
  store i1 %113, i1* %SF, align 1, !mcsema_real_eip !11
  %114 = load i1, i1* %OF_val, !mcsema_real_eip !11
  store i1 %114, i1* %OF, align 1, !mcsema_real_eip !11
  %115 = load i1, i1* %DF_val, !mcsema_real_eip !11
  store i1 %115, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %25, i8* %26, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  %116 = load i1, i1* %FPU_B_val, !mcsema_real_eip !11
  store i1 %116, i1* %FPU_B, align 1, !mcsema_real_eip !11
  %117 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !11
  store i1 %117, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  %118 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !11
  store i3 %118, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  %119 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !11
  store i1 %119, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  %120 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !11
  store i1 %120, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  %121 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !11
  store i1 %121, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  %122 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !11
  store i1 %122, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  %123 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !11
  store i1 %123, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  %124 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !11
  store i1 %124, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  %125 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !11
  store i1 %125, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  %126 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !11
  store i1 %126, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  %127 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !11
  store i1 %127, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  %128 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !11
  store i1 %128, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  %129 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !11
  store i1 %129, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  %130 = load i1, i1* %FPU_X_val, !mcsema_real_eip !11
  store i1 %130, i1* %FPU_X, align 1, !mcsema_real_eip !11
  %131 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !11
  store i2 %131, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  %132 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !11
  store i2 %132, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  %133 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !11
  store i1 %133, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  %134 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !11
  store i1 %134, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  %135 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !11
  store i1 %135, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  %136 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !11
  store i1 %136, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  %137 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !11
  store i1 %137, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  %138 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !11
  store i1 %138, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  %139 = load i64, i64* %52, align 4
  store i64 %139, i64* %51, align 4
  %140 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !11
  store i16 %140, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  %141 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !11
  store i64 %141, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  %142 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !11
  store i16 %142, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  %143 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !11
  store i64 %143, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  %144 = load i128, i128* %XMM0_val, !mcsema_real_eip !11
  store i128 %144, i128* %XMM0, align 1, !mcsema_real_eip !11
  %145 = load i128, i128* %XMM1_val, !mcsema_real_eip !11
  store i128 %145, i128* %XMM1, align 1, !mcsema_real_eip !11
  %146 = load i128, i128* %XMM2_val, !mcsema_real_eip !11
  store i128 %146, i128* %XMM2, align 1, !mcsema_real_eip !11
  %147 = load i128, i128* %XMM3_val, !mcsema_real_eip !11
  store i128 %147, i128* %XMM3, align 1, !mcsema_real_eip !11
  %148 = load i128, i128* %XMM4_val, !mcsema_real_eip !11
  store i128 %148, i128* %XMM4, align 1, !mcsema_real_eip !11
  %149 = load i128, i128* %XMM5_val, !mcsema_real_eip !11
  store i128 %149, i128* %XMM5, align 1, !mcsema_real_eip !11
  %150 = load i128, i128* %XMM6_val, !mcsema_real_eip !11
  store i128 %150, i128* %XMM6, align 1, !mcsema_real_eip !11
  %151 = load i128, i128* %XMM7_val, !mcsema_real_eip !11
  store i128 %151, i128* %XMM7, align 1, !mcsema_real_eip !11
  %152 = load i128, i128* %XMM8_val, !mcsema_real_eip !11
  store i128 %152, i128* %XMM8, align 1, !mcsema_real_eip !11
  %153 = load i128, i128* %XMM9_val, !mcsema_real_eip !11
  store i128 %153, i128* %XMM9, align 1, !mcsema_real_eip !11
  %154 = load i128, i128* %XMM10_val, !mcsema_real_eip !11
  store i128 %154, i128* %XMM10, align 1, !mcsema_real_eip !11
  %155 = load i128, i128* %XMM11_val, !mcsema_real_eip !11
  store i128 %155, i128* %XMM11, align 1, !mcsema_real_eip !11
  %156 = load i128, i128* %XMM12_val, !mcsema_real_eip !11
  store i128 %156, i128* %XMM12, align 1, !mcsema_real_eip !11
  %157 = load i128, i128* %XMM13_val, !mcsema_real_eip !11
  store i128 %157, i128* %XMM13, align 1, !mcsema_real_eip !11
  %158 = load i128, i128* %XMM14_val, !mcsema_real_eip !11
  store i128 %158, i128* %XMM14, align 1, !mcsema_real_eip !11
  %159 = load i128, i128* %XMM15_val, !mcsema_real_eip !11
  store i128 %159, i128* %XMM15, align 1, !mcsema_real_eip !11
  %160 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !11
  store i64 %160, i64* %STACK_BASE, align 1, !mcsema_real_eip !11
  %161 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !11
  store i64 %161, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_1(%struct.regs* %0)
  ret void
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 1, [18 x i8] c"\09movl\09%ss, (%rip)\00"}
!3 = !{i64 7, [18 x i8] c"\09movl\09%cs, (%rip)\00"}
!4 = !{i64 13, [18 x i8] c"\09movl\09%ds, (%rip)\00"}
!5 = !{i64 19, [18 x i8] c"\09movl\09%es, (%rip)\00"}
!6 = !{i64 25, [18 x i8] c"\09movl\09%fs, (%rip)\00"}
!7 = !{i64 31, [18 x i8] c"\09movl\09%gs, (%rip)\00"}
!8 = !{i64 37, [17 x i8] c"\09xorl\09%eax, %eax\00"}
!9 = !{i64 41, [8 x i8] c"\09pushfq\00"}
!10 = !{i64 42, [11 x i8] c"\09popq\09%rax\00"}
!11 = !{i64 43, [6 x i8] c"\09retq\00"}
