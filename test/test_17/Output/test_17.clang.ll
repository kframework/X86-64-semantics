; ModuleID = 'Output/test_17.clang.bc'
source_filename = "Output/test_17.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [24 x i8], i64, [16 x i8], i64, [16 x i8], i64, [16 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x5f = internal global %0 <{ [24 x i8] c"\00\00\AA\00\00\BB\00\00\CC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 ptrtoint (%0* @data_0x5f to i64), [16 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x5f to i64), i64 4), [16 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x5f to i64), i64 8), [16 x i8] zeroinitializer }>, align 64

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
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
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !2
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !2
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !2
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !2
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !2
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !2
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !2
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !2
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !2
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !2
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !2
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !2
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !2
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !2
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !2
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !2
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !2
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !2
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !2
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !2
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !2
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !2
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !2
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !2
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !2
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !2
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !2
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !2
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !2
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !2
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !2
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !2
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !2
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !2
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !2
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !2
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !2
  %78 = load i64, i64* %RSP_val, !mcsema_real_eip !2
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !2
  store i64 %77, i64* %80, !mcsema_real_eip !2
  store i64 %79, i64* %RSP_val, !mcsema_real_eip !2
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !3
  %81 = add i64 %78, -16, !mcsema_real_eip !4
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !4
  %83 = bitcast i64* %82 to i32*
  store i32 0, i32* %83, !mcsema_real_eip !4
  %84 = load i64, i64* %RBP_val, !mcsema_real_eip !5
  %85 = add i64 %84, -4, !mcsema_real_eip !5
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !5
  %87 = bitcast i64* %86 to i32*
  store i32 0, i32* %87, !mcsema_real_eip !5
  %88 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %89 = add i64 %88, -4, !mcsema_real_eip !6
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !6
  %91 = bitcast i64* %90 to i32*
  %92 = load i32, i32* %91, !mcsema_real_eip !6
  %93 = sext i32 %92 to i64, !mcsema_real_eip !6
  store i64 %93, i64* %RAX_val, !mcsema_real_eip !6
  %94 = add nsw i64 %93, -10
  %95 = xor i64 %94, %93, !mcsema_real_eip !7
  %96 = and i64 %95, 16, !mcsema_real_eip !7
  %97 = icmp ne i64 %96, 0, !mcsema_real_eip !7
  store i1 %97, i1* %AF_val, !mcsema_real_eip !7
  %98 = trunc i64 %94 to i8, !mcsema_real_eip !7
  %99 = tail call i8 @llvm.ctpop.i8(i8 %98), !mcsema_real_eip !7
  %100 = and i8 %99, 1
  %101 = icmp eq i8 %100, 0
  store i1 %101, i1* %PF_val, !mcsema_real_eip !7
  %102 = icmp eq i64 %94, 0, !mcsema_real_eip !7
  store i1 %102, i1* %ZF_val, !mcsema_real_eip !7
  %103 = icmp slt i64 %94, 0
  store i1 %103, i1* %SF_val, !mcsema_real_eip !7
  %104 = icmp ult i32 %92, 10
  store i1 %104, i1* %CF_val, !mcsema_real_eip !7
  %105 = and i64 %95, %93, !mcsema_real_eip !7
  %106 = icmp slt i64 %105, 0
  store i1 %106, i1* %OF_val, !mcsema_real_eip !7
  br i1 %104, label %block_0x20.preheader, label %block_0x5a, !mcsema_real_eip !8

block_0x20.preheader:                             ; preds = %entry
  br label %block_0x20

block_0x5a.loopexit:                              ; preds = %block_0x4c
  br label %block_0x5a

block_0x5a:                                       ; preds = %block_0x5a.loopexit, %entry
  %107 = load i64, i64* %RBP_val, !mcsema_real_eip !9
  %108 = add i64 %107, -8, !mcsema_real_eip !9
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !9
  %110 = bitcast i64* %109 to i32*
  %111 = load i32, i32* %110, !mcsema_real_eip !9
  %112 = zext i32 %111 to i64, !mcsema_real_eip !9
  store i64 %112, i64* %RAX_val, !mcsema_real_eip !9
  %113 = load i64, i64* %RSP_val, !mcsema_real_eip !10
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !10
  %115 = load i64, i64* %114, !mcsema_real_eip !10
  store i64 %115, i64* %RBP_val, !mcsema_real_eip !10
  %116 = add i64 %113, 16, !mcsema_real_eip !11
  store i64 %116, i64* %RSP_val, !mcsema_real_eip !11
  %117 = load i64, i64* %RAX_val, !mcsema_real_eip !11
  store i64 %117, i64* %RAX, !mcsema_real_eip !11
  %118 = load i64, i64* %RBX_val, !mcsema_real_eip !11
  store i64 %118, i64* %RBX, !mcsema_real_eip !11
  %119 = load i64, i64* %RCX_val, !mcsema_real_eip !11
  store i64 %119, i64* %RCX, !mcsema_real_eip !11
  %120 = load i64, i64* %RDX_val, !mcsema_real_eip !11
  store i64 %120, i64* %RDX, !mcsema_real_eip !11
  %121 = load i64, i64* %RSI_val, !mcsema_real_eip !11
  store i64 %121, i64* %RSI, !mcsema_real_eip !11
  %122 = load i64, i64* %RDI_val, !mcsema_real_eip !11
  store i64 %122, i64* %RDI, !mcsema_real_eip !11
  %123 = load i64, i64* %RSP_val, !mcsema_real_eip !11
  store i64 %123, i64* %RSP, !mcsema_real_eip !11
  %124 = load i64, i64* %RBP_val, !mcsema_real_eip !11
  store i64 %124, i64* %RBP, !mcsema_real_eip !11
  %125 = load i64, i64* %R8_val, !mcsema_real_eip !11
  store i64 %125, i64* %R8, !mcsema_real_eip !11
  %126 = load i64, i64* %R9_val, !mcsema_real_eip !11
  store i64 %126, i64* %R9, !mcsema_real_eip !11
  %127 = load i64, i64* %R10_val, !mcsema_real_eip !11
  store i64 %127, i64* %R10, !mcsema_real_eip !11
  %128 = load i64, i64* %R11_val, !mcsema_real_eip !11
  store i64 %128, i64* %R11, !mcsema_real_eip !11
  %129 = load i64, i64* %R12_val, !mcsema_real_eip !11
  store i64 %129, i64* %R12, !mcsema_real_eip !11
  %130 = load i64, i64* %R13_val, !mcsema_real_eip !11
  store i64 %130, i64* %R13, !mcsema_real_eip !11
  %131 = load i64, i64* %R14_val, !mcsema_real_eip !11
  store i64 %131, i64* %R14, !mcsema_real_eip !11
  %132 = load i64, i64* %R15_val, !mcsema_real_eip !11
  store i64 %132, i64* %R15, !mcsema_real_eip !11
  %133 = load i64, i64* %RIP_val, !mcsema_real_eip !11
  store i64 %133, i64* %RIP, !mcsema_real_eip !11
  %134 = load i1, i1* %CF_val, !mcsema_real_eip !11
  store i1 %134, i1* %CF, align 1, !mcsema_real_eip !11
  %135 = load i1, i1* %PF_val, !mcsema_real_eip !11
  store i1 %135, i1* %PF, align 1, !mcsema_real_eip !11
  %136 = load i1, i1* %AF_val, !mcsema_real_eip !11
  store i1 %136, i1* %AF, align 1, !mcsema_real_eip !11
  %137 = load i1, i1* %ZF_val, !mcsema_real_eip !11
  store i1 %137, i1* %ZF, align 1, !mcsema_real_eip !11
  %138 = load i1, i1* %SF_val, !mcsema_real_eip !11
  store i1 %138, i1* %SF, align 1, !mcsema_real_eip !11
  %139 = load i1, i1* %OF_val, !mcsema_real_eip !11
  store i1 %139, i1* %OF, align 1, !mcsema_real_eip !11
  %140 = load i1, i1* %DF_val, !mcsema_real_eip !11
  store i1 %140, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  %141 = load i1, i1* %FPU_B_val, !mcsema_real_eip !11
  store i1 %141, i1* %FPU_B, align 1, !mcsema_real_eip !11
  %142 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !11
  store i1 %142, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  %143 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !11
  store i3 %143, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  %144 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !11
  store i1 %144, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  %145 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !11
  store i1 %145, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  %146 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !11
  store i1 %146, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  %147 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !11
  store i1 %147, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  %148 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !11
  store i1 %148, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  %149 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !11
  store i1 %149, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  %150 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !11
  store i1 %150, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  %151 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !11
  store i1 %151, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  %152 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !11
  store i1 %152, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  %153 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !11
  store i1 %153, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  %154 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !11
  store i1 %154, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  %155 = load i1, i1* %FPU_X_val, !mcsema_real_eip !11
  store i1 %155, i1* %FPU_X, align 1, !mcsema_real_eip !11
  %156 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !11
  store i2 %156, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  %157 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !11
  store i2 %157, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  %158 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !11
  store i1 %158, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  %159 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !11
  store i1 %159, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  %160 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !11
  store i1 %160, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  %161 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !11
  store i1 %161, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  %162 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !11
  store i1 %162, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  %163 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !11
  store i1 %163, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  %164 = load i64, i64* %53, align 4
  store i64 %164, i64* %52, align 4
  %165 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !11
  store i16 %165, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  %166 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !11
  store i64 %166, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  %167 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !11
  store i16 %167, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  %168 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !11
  store i64 %168, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  %169 = load i128, i128* %XMM0_val, !mcsema_real_eip !11
  store i128 %169, i128* %XMM0, align 1, !mcsema_real_eip !11
  %170 = load i128, i128* %XMM1_val, !mcsema_real_eip !11
  store i128 %170, i128* %XMM1, align 1, !mcsema_real_eip !11
  %171 = load i128, i128* %XMM2_val, !mcsema_real_eip !11
  store i128 %171, i128* %XMM2, align 1, !mcsema_real_eip !11
  %172 = load i128, i128* %XMM3_val, !mcsema_real_eip !11
  store i128 %172, i128* %XMM3, align 1, !mcsema_real_eip !11
  %173 = load i128, i128* %XMM4_val, !mcsema_real_eip !11
  store i128 %173, i128* %XMM4, align 1, !mcsema_real_eip !11
  %174 = load i128, i128* %XMM5_val, !mcsema_real_eip !11
  store i128 %174, i128* %XMM5, align 1, !mcsema_real_eip !11
  %175 = load i128, i128* %XMM6_val, !mcsema_real_eip !11
  store i128 %175, i128* %XMM6, align 1, !mcsema_real_eip !11
  %176 = load i128, i128* %XMM7_val, !mcsema_real_eip !11
  store i128 %176, i128* %XMM7, align 1, !mcsema_real_eip !11
  %177 = load i128, i128* %XMM8_val, !mcsema_real_eip !11
  store i128 %177, i128* %XMM8, align 1, !mcsema_real_eip !11
  %178 = load i128, i128* %XMM9_val, !mcsema_real_eip !11
  store i128 %178, i128* %XMM9, align 1, !mcsema_real_eip !11
  %179 = load i128, i128* %XMM10_val, !mcsema_real_eip !11
  store i128 %179, i128* %XMM10, align 1, !mcsema_real_eip !11
  %180 = load i128, i128* %XMM11_val, !mcsema_real_eip !11
  store i128 %180, i128* %XMM11, align 1, !mcsema_real_eip !11
  %181 = load i128, i128* %XMM12_val, !mcsema_real_eip !11
  store i128 %181, i128* %XMM12, align 1, !mcsema_real_eip !11
  %182 = load i128, i128* %XMM13_val, !mcsema_real_eip !11
  store i128 %182, i128* %XMM13, align 1, !mcsema_real_eip !11
  %183 = load i128, i128* %XMM14_val, !mcsema_real_eip !11
  store i128 %183, i128* %XMM14, align 1, !mcsema_real_eip !11
  %184 = load i128, i128* %XMM15_val, !mcsema_real_eip !11
  store i128 %184, i128* %XMM15, align 1, !mcsema_real_eip !11
  %185 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !11
  store i64 %185, i64* %STACK_BASE, align 1, !mcsema_real_eip !11
  %186 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !11
  store i64 %186, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11

block_0x20:                                       ; preds = %block_0x4c, %block_0x20.preheader
  %187 = load i64, i64* %RBP_val, !mcsema_real_eip !12
  %188 = add i64 %187, -4, !mcsema_real_eip !12
  %189 = inttoptr i64 %188 to i64*, !mcsema_real_eip !12
  %190 = bitcast i64* %189 to i32*
  %191 = load i32, i32* %190, !mcsema_real_eip !12
  %192 = sext i32 %191 to i64, !mcsema_real_eip !12
  store i64 %192, i64* %RAX_val, !mcsema_real_eip !12
  %193 = shl nsw i64 %192, 3
  %194 = add i64 %193, add (i64 ptrtoint (%0* @data_0x5f to i64), i64 16), !mcsema_real_eip !13
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !13
  %196 = load i64, i64* %195, !mcsema_real_eip !13
  store i1 false, i1* %AF_val, !mcsema_real_eip !13
  %197 = trunc i64 %196 to i8, !mcsema_real_eip !13
  %198 = tail call i8 @llvm.ctpop.i8(i8 %197), !mcsema_real_eip !13
  %199 = and i8 %198, 1
  %200 = icmp eq i8 %199, 0
  store i1 %200, i1* %PF_val, !mcsema_real_eip !13
  %201 = icmp eq i64 %196, 0, !mcsema_real_eip !13
  store i1 %201, i1* %ZF_val, !mcsema_real_eip !13
  %202 = icmp slt i64 %196, 0
  store i1 %202, i1* %SF_val, !mcsema_real_eip !13
  store i1 false, i1* %CF_val, !mcsema_real_eip !13
  store i1 false, i1* %OF_val, !mcsema_real_eip !13
  br i1 %201, label %block_0x4c, label %block_0x33, !mcsema_real_eip !14

block_0x33:                                       ; preds = %block_0x20
  %203 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %204 = add i64 %203, -4, !mcsema_real_eip !15
  %205 = inttoptr i64 %204 to i64*, !mcsema_real_eip !15
  %206 = bitcast i64* %205 to i32*
  %207 = load i32, i32* %206, !mcsema_real_eip !15
  %208 = sext i32 %207 to i64, !mcsema_real_eip !15
  store i64 %208, i64* %RAX_val, !mcsema_real_eip !15
  %209 = shl nsw i64 %208, 3
  %210 = add i64 %209, add (i64 ptrtoint (%0* @data_0x5f to i64), i64 16), !mcsema_real_eip !16
  %211 = inttoptr i64 %210 to i64*, !mcsema_real_eip !16
  %212 = load i64, i64* %211, !mcsema_real_eip !16
  store i64 %212, i64* %RAX_val, !mcsema_real_eip !16
  %213 = inttoptr i64 %212 to i64*, !mcsema_real_eip !17
  %214 = bitcast i64* %213 to i32*
  %215 = load i32, i32* %214, !mcsema_real_eip !17
  %216 = zext i32 %215 to i64, !mcsema_real_eip !17
  store i64 %216, i64* %RCX_val, !mcsema_real_eip !17
  %217 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  %218 = add i64 %217, -8, !mcsema_real_eip !18
  %219 = inttoptr i64 %218 to i64*, !mcsema_real_eip !18
  %220 = bitcast i64* %219 to i32*
  %221 = load i32, i32* %220, !mcsema_real_eip !18
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %215, i32 %221)
  %222 = extractvalue { i32, i1 } %uadd, 0
  %223 = xor i32 %222, %221, !mcsema_real_eip !18
  %224 = xor i32 %223, %215, !mcsema_real_eip !18
  %225 = and i32 %224, 16, !mcsema_real_eip !18
  %226 = icmp ne i32 %225, 0, !mcsema_real_eip !18
  store i1 %226, i1* %AF_val, !mcsema_real_eip !18
  %227 = icmp slt i32 %222, 0
  store i1 %227, i1* %SF_val, !mcsema_real_eip !18
  %228 = icmp eq i32 %222, 0, !mcsema_real_eip !18
  store i1 %228, i1* %ZF_val, !mcsema_real_eip !18
  %229 = xor i32 %215, -2147483648, !mcsema_real_eip !18
  %230 = xor i32 %229, %221, !mcsema_real_eip !18
  %231 = and i32 %223, %230, !mcsema_real_eip !18
  %232 = icmp slt i32 %231, 0
  store i1 %232, i1* %OF_val, !mcsema_real_eip !18
  %233 = trunc i32 %222 to i8, !mcsema_real_eip !18
  %234 = tail call i8 @llvm.ctpop.i8(i8 %233), !mcsema_real_eip !18
  %235 = and i8 %234, 1
  %236 = icmp eq i8 %235, 0
  store i1 %236, i1* %PF_val, !mcsema_real_eip !18
  %237 = extractvalue { i32, i1 } %uadd, 1
  store i1 %237, i1* %CF_val, !mcsema_real_eip !18
  %238 = zext i32 %222 to i64, !mcsema_real_eip !18
  store i64 %238, i64* %RCX_val, !mcsema_real_eip !18
  %239 = load i64, i64* %RBP_val, !mcsema_real_eip !19
  %240 = add i64 %239, -8, !mcsema_real_eip !19
  %241 = inttoptr i64 %240 to i64*, !mcsema_real_eip !19
  %242 = bitcast i64* %241 to i32*
  store i32 %222, i32* %242, !mcsema_real_eip !19
  br label %block_0x4c, !mcsema_real_eip !20

block_0x4c:                                       ; preds = %block_0x33, %block_0x20
  %243 = load i64, i64* %RBP_val, !mcsema_real_eip !21
  %244 = add i64 %243, -4, !mcsema_real_eip !21
  %245 = inttoptr i64 %244 to i64*, !mcsema_real_eip !21
  %246 = bitcast i64* %245 to i32*
  %247 = load i32, i32* %246, !mcsema_real_eip !21
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %247, i32 1)
  %248 = extractvalue { i32, i1 } %uadd70, 0
  %249 = xor i32 %248, %247, !mcsema_real_eip !22
  %250 = and i32 %249, 16, !mcsema_real_eip !22
  %251 = icmp ne i32 %250, 0, !mcsema_real_eip !22
  store i1 %251, i1* %AF_val, !mcsema_real_eip !22
  %252 = icmp slt i32 %248, 0
  store i1 %252, i1* %SF_val, !mcsema_real_eip !22
  %253 = icmp eq i32 %248, 0, !mcsema_real_eip !22
  store i1 %253, i1* %ZF_val, !mcsema_real_eip !22
  %254 = xor i32 %247, -2147483648, !mcsema_real_eip !22
  %255 = and i32 %249, %254, !mcsema_real_eip !22
  %256 = icmp slt i32 %255, 0
  store i1 %256, i1* %OF_val, !mcsema_real_eip !22
  %257 = trunc i32 %248 to i8, !mcsema_real_eip !22
  %258 = tail call i8 @llvm.ctpop.i8(i8 %257), !mcsema_real_eip !22
  %259 = and i8 %258, 1
  %260 = icmp eq i8 %259, 0
  store i1 %260, i1* %PF_val, !mcsema_real_eip !22
  %261 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %261, i1* %CF_val, !mcsema_real_eip !22
  %262 = zext i32 %248 to i64, !mcsema_real_eip !22
  store i64 %262, i64* %RAX_val, !mcsema_real_eip !22
  %263 = load i64, i64* %RBP_val, !mcsema_real_eip !23
  %264 = add i64 %263, -4, !mcsema_real_eip !23
  %265 = inttoptr i64 %264 to i64*, !mcsema_real_eip !23
  %266 = bitcast i64* %265 to i32*
  store i32 %248, i32* %266, !mcsema_real_eip !23
  %267 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %268 = add i64 %267, -4, !mcsema_real_eip !6
  %269 = inttoptr i64 %268 to i64*, !mcsema_real_eip !6
  %270 = bitcast i64* %269 to i32*
  %271 = load i32, i32* %270, !mcsema_real_eip !6
  %272 = sext i32 %271 to i64, !mcsema_real_eip !6
  store i64 %272, i64* %RAX_val, !mcsema_real_eip !6
  %273 = add nsw i64 %272, -10
  %274 = xor i64 %273, %272, !mcsema_real_eip !7
  %275 = and i64 %274, 16, !mcsema_real_eip !7
  %276 = icmp ne i64 %275, 0, !mcsema_real_eip !7
  store i1 %276, i1* %AF_val, !mcsema_real_eip !7
  %277 = trunc i64 %273 to i8, !mcsema_real_eip !7
  %278 = tail call i8 @llvm.ctpop.i8(i8 %277), !mcsema_real_eip !7
  %279 = and i8 %278, 1
  %280 = icmp eq i8 %279, 0
  store i1 %280, i1* %PF_val, !mcsema_real_eip !7
  %281 = icmp eq i64 %273, 0, !mcsema_real_eip !7
  store i1 %281, i1* %ZF_val, !mcsema_real_eip !7
  %282 = icmp slt i64 %273, 0
  store i1 %282, i1* %SF_val, !mcsema_real_eip !7
  %283 = icmp ult i32 %271, 10
  store i1 %283, i1* %CF_val, !mcsema_real_eip !7
  %284 = and i64 %274, %272, !mcsema_real_eip !7
  %285 = icmp slt i64 %284, 0
  store i1 %285, i1* %OF_val, !mcsema_real_eip !7
  br i1 %283, label %block_0x20, label %block_0x5a.loopexit, !mcsema_real_eip !8
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = !{i64 4, [19 x i8] c"\09movl\09$0, -8(%rbp)\00"}
!5 = !{i64 11, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!6 = !{i64 18, [23 x i8] c"\09movslq\09-4(%rbp), %rax\00"}
!7 = !{i64 22, [16 x i8] c"\09cmpq\09$10, %rax\00"}
!8 = !{i64 26, [8 x i8] c"\09jae\0958\00"}
!9 = !{i64 90, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!10 = !{i64 93, [11 x i8] c"\09popq\09%rbp\00"}
!11 = !{i64 94, [6 x i8] c"\09retq\00"}
!12 = !{i64 32, [23 x i8] c"\09movslq\09-4(%rbp), %rax\00"}
!13 = !{i64 36, [20 x i8] c"\09cmpq\09$0, (,%rax,8)\00"}
!14 = !{i64 45, [7 x i8] c"\09je\0920\00"}
!15 = !{i64 51, [23 x i8] c"\09movslq\09-4(%rbp), %rax\00"}
!16 = !{i64 55, [22 x i8] c"\09movq\09(,%rax,8), %rax\00"}
!17 = !{i64 63, [19 x i8] c"\09movl\09(%rax), %ecx\00"}
!18 = !{i64 65, [21 x i8] c"\09addl\09-8(%rbp), %ecx\00"}
!19 = !{i64 68, [21 x i8] c"\09movl\09%ecx, -8(%rbp)\00"}
!20 = !{i64 71, [7 x i8] c"\09jmp\090\00"}
!21 = !{i64 76, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!22 = !{i64 79, [15 x i8] c"\09addl\09$1, %eax\00"}
!23 = !{i64 82, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
