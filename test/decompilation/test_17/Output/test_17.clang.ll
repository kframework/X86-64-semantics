; ModuleID = 'Output/test_17.clang.bc'
source_filename = "Output/test_17.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [24 x i8], i64, [16 x i8], i64, [16 x i8], i64, [16 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x70 = internal global %0 <{ [24 x i8] c"\00\00\AA\00\00\BB\00\00\CC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 ptrtoint (%0* @data_0x70 to i64), [16 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x70 to i64), i64 4), [16 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x70 to i64), i64 8), [16 x i8] zeroinitializer }>, align 64

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
  store i64 %80, i64* %RSP_val, !mcsema_real_eip !2
  store i64 %80, i64* %RBP_val, !mcsema_real_eip !3
  %82 = add i64 %79, -16, !mcsema_real_eip !4
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !4
  %84 = bitcast i64* %83 to i32*
  store i32 0, i32* %84, !mcsema_real_eip !4
  %85 = load i64, i64* %RBP_val, !mcsema_real_eip !5
  %86 = add i64 %85, -4, !mcsema_real_eip !5
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !5
  %88 = bitcast i64* %87 to i32*
  store i32 0, i32* %88, !mcsema_real_eip !5
  br label %block_0x12, !mcsema_real_eip !6

block_0x12:                                       ; preds = %block_0x53, %entry
  %89 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %90 = add i64 %89, -4, !mcsema_real_eip !6
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !6
  %92 = bitcast i64* %91 to i32*
  %93 = load i32, i32* %92, !mcsema_real_eip !6
  %94 = sext i32 %93 to i64, !mcsema_real_eip !6
  store i64 %94, i64* %RAX_val, !mcsema_real_eip !6
  %95 = add nsw i64 %94, -10
  %96 = xor i64 %95, %94, !mcsema_real_eip !7
  %97 = and i64 %96, 16, !mcsema_real_eip !7
  %98 = icmp ne i64 %97, 0, !mcsema_real_eip !7
  store i1 %98, i1* %AF_val, !mcsema_real_eip !7
  %99 = trunc i64 %95 to i8, !mcsema_real_eip !7
  %100 = tail call i8 @llvm.ctpop.i8(i8 %99), !mcsema_real_eip !7
  %101 = and i8 %100, 1
  %102 = icmp eq i8 %101, 0
  store i1 %102, i1* %PF_val, !mcsema_real_eip !7
  %103 = icmp eq i64 %95, 0, !mcsema_real_eip !7
  store i1 %103, i1* %ZF_val, !mcsema_real_eip !7
  %104 = icmp slt i64 %95, 0
  store i1 %104, i1* %SF_val, !mcsema_real_eip !7
  %105 = icmp ult i32 %93, 10
  store i1 %105, i1* %CF_val, !mcsema_real_eip !7
  %106 = and i64 %96, %94, !mcsema_real_eip !7
  %107 = icmp slt i64 %106, 0
  store i1 %107, i1* %OF_val, !mcsema_real_eip !7
  %108 = load i64, i64* %RBP_val, !mcsema_real_eip !8
  br i1 %105, label %block_0x22, label %block_0x63, !mcsema_real_eip !9

block_0x22:                                       ; preds = %block_0x12
  %109 = add i64 %108, -4, !mcsema_real_eip !10
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !10
  %111 = bitcast i64* %110 to i32*
  %112 = load i32, i32* %111, !mcsema_real_eip !10
  %113 = sext i32 %112 to i64, !mcsema_real_eip !10
  store i64 %113, i64* %RAX_val, !mcsema_real_eip !10
  %114 = shl nsw i64 %113, 3
  %115 = add i64 %114, add (i64 ptrtoint (%0* @data_0x70 to i64), i64 16), !mcsema_real_eip !11
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !11
  %117 = load i64, i64* %116, !mcsema_real_eip !11
  store i1 false, i1* %AF_val, !mcsema_real_eip !11
  %118 = trunc i64 %117 to i8, !mcsema_real_eip !11
  %119 = tail call i8 @llvm.ctpop.i8(i8 %118), !mcsema_real_eip !11
  %120 = and i8 %119, 1
  %121 = icmp eq i8 %120, 0
  store i1 %121, i1* %PF_val, !mcsema_real_eip !11
  %122 = icmp eq i64 %117, 0, !mcsema_real_eip !11
  store i1 %122, i1* %ZF_val, !mcsema_real_eip !11
  %123 = icmp slt i64 %117, 0
  store i1 %123, i1* %SF_val, !mcsema_real_eip !11
  store i1 false, i1* %CF_val, !mcsema_real_eip !11
  store i1 false, i1* %OF_val, !mcsema_real_eip !11
  br i1 %122, label %block_0x53, label %block_0x38, !mcsema_real_eip !12

block_0x63:                                       ; preds = %block_0x12
  %.lcssa = phi i64 [ %108, %block_0x12 ]
  %124 = add i64 %.lcssa, -8, !mcsema_real_eip !8
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !8
  %126 = bitcast i64* %125 to i32*
  %127 = load i32, i32* %126, !mcsema_real_eip !8
  %128 = zext i32 %127 to i64, !mcsema_real_eip !8
  store i64 %128, i64* %RAX_val, !mcsema_real_eip !8
  %129 = load i64, i64* %RSP_val, !mcsema_real_eip !13
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !13
  %131 = load i64, i64* %130, !mcsema_real_eip !13
  store i64 %131, i64* %RBP_val, !mcsema_real_eip !13
  %132 = add i64 %129, 16, !mcsema_real_eip !14
  store i64 %132, i64* %RSP_val, !mcsema_real_eip !14
  %133 = load i64, i64* %RAX_val, !mcsema_real_eip !14
  store i64 %133, i64* %RAX, !mcsema_real_eip !14
  %134 = load i64, i64* %RBX_val, !mcsema_real_eip !14
  store i64 %134, i64* %RBX, !mcsema_real_eip !14
  %135 = load i64, i64* %RCX_val, !mcsema_real_eip !14
  store i64 %135, i64* %RCX, !mcsema_real_eip !14
  %136 = load i64, i64* %RDX_val, !mcsema_real_eip !14
  store i64 %136, i64* %RDX, !mcsema_real_eip !14
  %137 = load i64, i64* %RSI_val, !mcsema_real_eip !14
  store i64 %137, i64* %RSI, !mcsema_real_eip !14
  %138 = load i64, i64* %RDI_val, !mcsema_real_eip !14
  store i64 %138, i64* %RDI, !mcsema_real_eip !14
  %139 = load i64, i64* %RSP_val, !mcsema_real_eip !14
  store i64 %139, i64* %RSP, !mcsema_real_eip !14
  %140 = load i64, i64* %RBP_val, !mcsema_real_eip !14
  store i64 %140, i64* %RBP, !mcsema_real_eip !14
  %141 = load i64, i64* %R8_val, !mcsema_real_eip !14
  store i64 %141, i64* %R8, !mcsema_real_eip !14
  %142 = load i64, i64* %R9_val, !mcsema_real_eip !14
  store i64 %142, i64* %R9, !mcsema_real_eip !14
  %143 = load i64, i64* %R10_val, !mcsema_real_eip !14
  store i64 %143, i64* %R10, !mcsema_real_eip !14
  %144 = load i64, i64* %R11_val, !mcsema_real_eip !14
  store i64 %144, i64* %R11, !mcsema_real_eip !14
  %145 = load i64, i64* %R12_val, !mcsema_real_eip !14
  store i64 %145, i64* %R12, !mcsema_real_eip !14
  %146 = load i64, i64* %R13_val, !mcsema_real_eip !14
  store i64 %146, i64* %R13, !mcsema_real_eip !14
  %147 = load i64, i64* %R14_val, !mcsema_real_eip !14
  store i64 %147, i64* %R14, !mcsema_real_eip !14
  %148 = load i64, i64* %R15_val, !mcsema_real_eip !14
  store i64 %148, i64* %R15, !mcsema_real_eip !14
  %149 = load i64, i64* %RIP_val, !mcsema_real_eip !14
  store i64 %149, i64* %RIP, !mcsema_real_eip !14
  %150 = load i1, i1* %CF_val, !mcsema_real_eip !14
  store i1 %150, i1* %CF, align 1, !mcsema_real_eip !14
  %151 = load i1, i1* %PF_val, !mcsema_real_eip !14
  store i1 %151, i1* %PF, align 1, !mcsema_real_eip !14
  %152 = load i1, i1* %AF_val, !mcsema_real_eip !14
  store i1 %152, i1* %AF, align 1, !mcsema_real_eip !14
  %153 = load i1, i1* %ZF_val, !mcsema_real_eip !14
  store i1 %153, i1* %ZF, align 1, !mcsema_real_eip !14
  %154 = load i1, i1* %SF_val, !mcsema_real_eip !14
  store i1 %154, i1* %SF, align 1, !mcsema_real_eip !14
  %155 = load i1, i1* %OF_val, !mcsema_real_eip !14
  store i1 %155, i1* %OF, align 1, !mcsema_real_eip !14
  %156 = load i1, i1* %DF_val, !mcsema_real_eip !14
  store i1 %156, i1* %DF, align 1, !mcsema_real_eip !14
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !14
  %157 = load i1, i1* %FPU_B_val, !mcsema_real_eip !14
  store i1 %157, i1* %FPU_B, align 1, !mcsema_real_eip !14
  %158 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !14
  store i1 %158, i1* %FPU_C3, align 1, !mcsema_real_eip !14
  %159 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !14
  store i3 %159, i3* %FPU_TOP, align 1, !mcsema_real_eip !14
  %160 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !14
  store i1 %160, i1* %FPU_C2, align 1, !mcsema_real_eip !14
  %161 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !14
  store i1 %161, i1* %FPU_C1, align 1, !mcsema_real_eip !14
  %162 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !14
  store i1 %162, i1* %FPU_C0, align 1, !mcsema_real_eip !14
  %163 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !14
  store i1 %163, i1* %FPU_ES, align 1, !mcsema_real_eip !14
  %164 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !14
  store i1 %164, i1* %FPU_SF, align 1, !mcsema_real_eip !14
  %165 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !14
  store i1 %165, i1* %FPU_PE, align 1, !mcsema_real_eip !14
  %166 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !14
  store i1 %166, i1* %FPU_UE, align 1, !mcsema_real_eip !14
  %167 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !14
  store i1 %167, i1* %FPU_OE, align 1, !mcsema_real_eip !14
  %168 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !14
  store i1 %168, i1* %FPU_ZE, align 1, !mcsema_real_eip !14
  %169 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !14
  store i1 %169, i1* %FPU_DE, align 1, !mcsema_real_eip !14
  %170 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !14
  store i1 %170, i1* %FPU_IE, align 1, !mcsema_real_eip !14
  %171 = load i1, i1* %FPU_X_val, !mcsema_real_eip !14
  store i1 %171, i1* %FPU_X, align 1, !mcsema_real_eip !14
  %172 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !14
  store i2 %172, i2* %FPU_RC, align 1, !mcsema_real_eip !14
  %173 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !14
  store i2 %173, i2* %FPU_PC, align 1, !mcsema_real_eip !14
  %174 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !14
  store i1 %174, i1* %FPU_PM, align 1, !mcsema_real_eip !14
  %175 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !14
  store i1 %175, i1* %FPU_UM, align 1, !mcsema_real_eip !14
  %176 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !14
  store i1 %176, i1* %FPU_OM, align 1, !mcsema_real_eip !14
  %177 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !14
  store i1 %177, i1* %FPU_ZM, align 1, !mcsema_real_eip !14
  %178 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !14
  store i1 %178, i1* %FPU_DM, align 1, !mcsema_real_eip !14
  %179 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !14
  store i1 %179, i1* %FPU_IM, align 1, !mcsema_real_eip !14
  %180 = load i64, i64* %53, align 4
  store i64 %180, i64* %52, align 4
  %181 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !14
  store i16 %181, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !14
  %182 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !14
  store i64 %182, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !14
  %183 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !14
  store i16 %183, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !14
  %184 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !14
  store i64 %184, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !14
  %185 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !14
  store i11 %185, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !14
  %186 = load i128, i128* %XMM0_val, !mcsema_real_eip !14
  store i128 %186, i128* %XMM0, align 1, !mcsema_real_eip !14
  %187 = load i128, i128* %XMM1_val, !mcsema_real_eip !14
  store i128 %187, i128* %XMM1, align 1, !mcsema_real_eip !14
  %188 = load i128, i128* %XMM2_val, !mcsema_real_eip !14
  store i128 %188, i128* %XMM2, align 1, !mcsema_real_eip !14
  %189 = load i128, i128* %XMM3_val, !mcsema_real_eip !14
  store i128 %189, i128* %XMM3, align 1, !mcsema_real_eip !14
  %190 = load i128, i128* %XMM4_val, !mcsema_real_eip !14
  store i128 %190, i128* %XMM4, align 1, !mcsema_real_eip !14
  %191 = load i128, i128* %XMM5_val, !mcsema_real_eip !14
  store i128 %191, i128* %XMM5, align 1, !mcsema_real_eip !14
  %192 = load i128, i128* %XMM6_val, !mcsema_real_eip !14
  store i128 %192, i128* %XMM6, align 1, !mcsema_real_eip !14
  %193 = load i128, i128* %XMM7_val, !mcsema_real_eip !14
  store i128 %193, i128* %XMM7, align 1, !mcsema_real_eip !14
  %194 = load i128, i128* %XMM8_val, !mcsema_real_eip !14
  store i128 %194, i128* %XMM8, align 1, !mcsema_real_eip !14
  %195 = load i128, i128* %XMM9_val, !mcsema_real_eip !14
  store i128 %195, i128* %XMM9, align 1, !mcsema_real_eip !14
  %196 = load i128, i128* %XMM10_val, !mcsema_real_eip !14
  store i128 %196, i128* %XMM10, align 1, !mcsema_real_eip !14
  %197 = load i128, i128* %XMM11_val, !mcsema_real_eip !14
  store i128 %197, i128* %XMM11, align 1, !mcsema_real_eip !14
  %198 = load i128, i128* %XMM12_val, !mcsema_real_eip !14
  store i128 %198, i128* %XMM12, align 1, !mcsema_real_eip !14
  %199 = load i128, i128* %XMM13_val, !mcsema_real_eip !14
  store i128 %199, i128* %XMM13, align 1, !mcsema_real_eip !14
  %200 = load i128, i128* %XMM14_val, !mcsema_real_eip !14
  store i128 %200, i128* %XMM14, align 1, !mcsema_real_eip !14
  %201 = load i128, i128* %XMM15_val, !mcsema_real_eip !14
  store i128 %201, i128* %XMM15, align 1, !mcsema_real_eip !14
  %202 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !14
  store i64 %202, i64* %STACK_BASE, align 1, !mcsema_real_eip !14
  %203 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !14
  store i64 %203, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !14
  ret void, !mcsema_real_eip !14

block_0x38:                                       ; preds = %block_0x22
  %204 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %205 = add i64 %204, -4, !mcsema_real_eip !15
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !15
  %207 = bitcast i64* %206 to i32*
  %208 = load i32, i32* %207, !mcsema_real_eip !15
  %209 = sext i32 %208 to i64, !mcsema_real_eip !15
  store i64 %209, i64* %RAX_val, !mcsema_real_eip !15
  %210 = shl nsw i64 %209, 3
  %211 = add i64 %210, add (i64 ptrtoint (%0* @data_0x70 to i64), i64 16), !mcsema_real_eip !16
  %212 = inttoptr i64 %211 to i64*, !mcsema_real_eip !16
  %213 = load i64, i64* %212, !mcsema_real_eip !16
  store i64 %213, i64* %RAX_val, !mcsema_real_eip !16
  %214 = inttoptr i64 %213 to i64*, !mcsema_real_eip !17
  %215 = bitcast i64* %214 to i32*
  %216 = load i32, i32* %215, !mcsema_real_eip !17
  %217 = zext i32 %216 to i64, !mcsema_real_eip !17
  store i64 %217, i64* %RCX_val, !mcsema_real_eip !17
  %218 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  %219 = add i64 %218, -8, !mcsema_real_eip !18
  %220 = inttoptr i64 %219 to i64*, !mcsema_real_eip !18
  %221 = bitcast i64* %220 to i32*
  %222 = load i32, i32* %221, !mcsema_real_eip !18
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %216, i32 %222)
  %223 = extractvalue { i32, i1 } %uadd, 0
  %224 = xor i32 %223, %222, !mcsema_real_eip !19
  %225 = xor i32 %224, %216, !mcsema_real_eip !19
  %226 = and i32 %225, 16, !mcsema_real_eip !19
  %227 = icmp ne i32 %226, 0, !mcsema_real_eip !19
  store i1 %227, i1* %AF_val, !mcsema_real_eip !19
  %228 = icmp slt i32 %223, 0
  store i1 %228, i1* %SF_val, !mcsema_real_eip !19
  %229 = icmp eq i32 %223, 0, !mcsema_real_eip !19
  store i1 %229, i1* %ZF_val, !mcsema_real_eip !19
  %230 = xor i32 %222, -2147483648, !mcsema_real_eip !19
  %231 = xor i32 %230, %216, !mcsema_real_eip !19
  %232 = and i32 %224, %231, !mcsema_real_eip !19
  %233 = icmp slt i32 %232, 0
  store i1 %233, i1* %OF_val, !mcsema_real_eip !19
  %234 = trunc i32 %223 to i8, !mcsema_real_eip !19
  %235 = tail call i8 @llvm.ctpop.i8(i8 %234), !mcsema_real_eip !19
  %236 = and i8 %235, 1
  %237 = icmp eq i8 %236, 0
  store i1 %237, i1* %PF_val, !mcsema_real_eip !19
  %238 = extractvalue { i32, i1 } %uadd, 1
  store i1 %238, i1* %CF_val, !mcsema_real_eip !19
  %239 = zext i32 %223 to i64, !mcsema_real_eip !19
  store i64 %239, i64* %RDX_val, !mcsema_real_eip !19
  %240 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %241 = add i64 %240, -8, !mcsema_real_eip !20
  %242 = inttoptr i64 %241 to i64*, !mcsema_real_eip !20
  %243 = bitcast i64* %242 to i32*
  store i32 %223, i32* %243, !mcsema_real_eip !20
  br label %block_0x53, !mcsema_real_eip !21

block_0x53:                                       ; preds = %block_0x38, %block_0x22
  %244 = load i64, i64* %RBP_val, !mcsema_real_eip !21
  %245 = add i64 %244, -4, !mcsema_real_eip !21
  %246 = inttoptr i64 %245 to i64*, !mcsema_real_eip !21
  %247 = bitcast i64* %246 to i32*
  %248 = load i32, i32* %247, !mcsema_real_eip !21
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %248, i32 1)
  %249 = extractvalue { i32, i1 } %uadd71, 0
  %250 = xor i32 %249, %248, !mcsema_real_eip !22
  %251 = and i32 %250, 16, !mcsema_real_eip !22
  %252 = icmp ne i32 %251, 0, !mcsema_real_eip !22
  store i1 %252, i1* %AF_val, !mcsema_real_eip !22
  %253 = icmp slt i32 %249, 0
  store i1 %253, i1* %SF_val, !mcsema_real_eip !22
  %254 = icmp eq i32 %249, 0, !mcsema_real_eip !22
  store i1 %254, i1* %ZF_val, !mcsema_real_eip !22
  %255 = xor i32 %248, -2147483648, !mcsema_real_eip !22
  %256 = and i32 %250, %255, !mcsema_real_eip !22
  %257 = icmp slt i32 %256, 0
  store i1 %257, i1* %OF_val, !mcsema_real_eip !22
  %258 = trunc i32 %249 to i8, !mcsema_real_eip !22
  %259 = tail call i8 @llvm.ctpop.i8(i8 %258), !mcsema_real_eip !22
  %260 = and i8 %259, 1
  %261 = icmp eq i8 %260, 0
  store i1 %261, i1* %PF_val, !mcsema_real_eip !22
  %262 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %262, i1* %CF_val, !mcsema_real_eip !22
  %263 = zext i32 %249 to i64, !mcsema_real_eip !22
  store i64 %263, i64* %RAX_val, !mcsema_real_eip !22
  %264 = load i64, i64* %RBP_val, !mcsema_real_eip !23
  %265 = add i64 %264, -4, !mcsema_real_eip !23
  %266 = inttoptr i64 %265 to i64*, !mcsema_real_eip !23
  %267 = bitcast i64* %266 to i32*
  store i32 %249, i32* %267, !mcsema_real_eip !23
  br label %block_0x12, !mcsema_real_eip !24
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
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 11}
!6 = !{i64 18}
!7 = !{i64 22}
!8 = !{i64 99}
!9 = !{i64 28}
!10 = !{i64 34}
!11 = !{i64 38}
!12 = !{i64 50}
!13 = !{i64 102}
!14 = !{i64 103}
!15 = !{i64 56}
!16 = !{i64 60}
!17 = !{i64 68}
!18 = !{i64 70}
!19 = !{i64 73}
!20 = !{i64 75}
!21 = !{i64 83}
!22 = !{i64 86}
!23 = !{i64 91}
!24 = !{i64 94}
