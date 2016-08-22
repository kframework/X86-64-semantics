; ModuleID = 'test_17.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [40 x i8], i64, [16 x i8], i64, [16 x i8], i64, [16 x i8] }>
%1 = type <{ [27 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x66 = internal global %0 <{ [40 x i8] c"\00\00\AA\00\00\BB\00\00\CC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 ptrtoint (%0* @data_0x66 to i64), [16 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x66 to i64), i64 4), [16 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x66 to i64), i64 8), [16 x i8] zeroinitializer }>, align 64
@data_0xd6 = internal constant %1 <{ [27 x i8] c"mydata[%d] = %p => 0x%06X\0A\00" }>, align 64

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
  %97 = bitcast i64* %96 to i32*
  store i32 0, i32* %97, !mcsema_real_eip !5
  %98 = load i64* %RBP_val, !mcsema_real_eip !6
  %99 = add i64 %98, -4, !mcsema_real_eip !6
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !6
  %101 = bitcast i64* %100 to i32*
  %102 = load i32* %101, !mcsema_real_eip !6
  %103 = zext i32 %102 to i64, !mcsema_real_eip !6
  store i64 %103, i64* %RAX_val, !mcsema_real_eip !6
  %104 = add i32 %102, -9
  %105 = xor i32 %104, %102, !mcsema_real_eip !7
  %106 = and i32 %105, 16, !mcsema_real_eip !7
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !7
  store i1 %107, i1* %AF_val, !mcsema_real_eip !7
  %108 = trunc i32 %104 to i8, !mcsema_real_eip !7
  %109 = tail call i8 @llvm.ctpop.i8(i8 %108), !mcsema_real_eip !7
  %110 = and i8 %109, 1
  %111 = icmp eq i8 %110, 0
  store i1 %111, i1* %PF_val, !mcsema_real_eip !7
  %112 = icmp eq i32 %104, 0, !mcsema_real_eip !7
  store i1 %112, i1* %ZF_val, !mcsema_real_eip !7
  %113 = icmp slt i32 %104, 0
  store i1 %113, i1* %SF_val, !mcsema_real_eip !7
  %114 = icmp ult i32 %102, 9, !mcsema_real_eip !7
  store i1 %114, i1* %CF_val, !mcsema_real_eip !7
  %115 = and i32 %105, %102, !mcsema_real_eip !7
  %116 = icmp slt i32 %115, 0
  store i1 %116, i1* %OF_val, !mcsema_real_eip !7
  %117 = load i1* %ZF_val, !mcsema_real_eip !8
  %118 = or i1 %114, %117, !mcsema_real_eip !8
  br i1 %118, label %block_0x11.preheader, label %block_0x5f, !mcsema_real_eip !8

block_0x11.preheader:                             ; preds = %entry
  br label %block_0x11

block_0x11:                                       ; preds = %block_0x11.backedge, %block_0x11.preheader
  %119 = load i64* %RBP_val, !mcsema_real_eip !9
  %120 = add i64 %119, -4, !mcsema_real_eip !9
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !9
  %122 = bitcast i64* %121 to i32*
  %123 = load i32* %122, !mcsema_real_eip !9
  %124 = sext i32 %123 to i64, !mcsema_real_eip !10
  store i64 %124, i64* %RAX_val, !mcsema_real_eip !10
  %125 = shl nsw i64 %124, 3
  %126 = add i64 %125, add (i64 ptrtoint (%0* @data_0x66 to i64), i64 32), !mcsema_real_eip !11
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !11
  %128 = load i64* %127, !mcsema_real_eip !11
  store i64 %128, i64* %RAX_val, !mcsema_real_eip !11
  %129 = icmp eq i64 %128, 0, !mcsema_real_eip !12
  store i1 %129, i1* %ZF_val, !mcsema_real_eip !12
  %130 = icmp slt i64 %128, 0
  store i1 %130, i1* %SF_val, !mcsema_real_eip !12
  %131 = trunc i64 %128 to i8, !mcsema_real_eip !12
  %132 = tail call i8 @llvm.ctpop.i8(i8 %131), !mcsema_real_eip !12
  %133 = and i8 %132, 1
  %134 = icmp eq i8 %133, 0
  store i1 %134, i1* %PF_val, !mcsema_real_eip !12
  store i1 false, i1* %CF_val, !mcsema_real_eip !12
  store i1 false, i1* %OF_val, !mcsema_real_eip !12
  %135 = load i1* %ZF_val, !mcsema_real_eip !13
  %136 = load i64* %RBP_val, !mcsema_real_eip !14
  %137 = add i64 %136, -4, !mcsema_real_eip !14
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !14
  %139 = bitcast i64* %138 to i32*
  %140 = load i32* %139, !mcsema_real_eip !14
  br i1 %135, label %block_0x53, label %block_0x23, !mcsema_real_eip !13

block_0x5f.loopexit:                              ; preds = %block_0x23, %block_0x53
  br label %block_0x5f

block_0x5f:                                       ; preds = %block_0x5f.loopexit, %entry
  store i64 0, i64* %RAX_val, !mcsema_real_eip !15
  %141 = load i64* %RBP_val, !mcsema_real_eip !16
  store i64 %141, i64* %RSP_val, !mcsema_real_eip !16
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !16
  %143 = load i64* %142, !mcsema_real_eip !16
  store i64 %143, i64* %RBP_val, !mcsema_real_eip !16
  %144 = add i64 %141, 16, !mcsema_real_eip !17
  store i64 %144, i64* %RSP_val, !mcsema_real_eip !17
  %145 = load i64* %RAX_val, !mcsema_real_eip !17
  store i64 %145, i64* %RAX, !mcsema_real_eip !17
  %146 = load i64* %RBX_val, !mcsema_real_eip !17
  store i64 %146, i64* %RBX, !mcsema_real_eip !17
  %147 = load i64* %RCX_val, !mcsema_real_eip !17
  store i64 %147, i64* %RCX, !mcsema_real_eip !17
  %148 = load i64* %RDX_val, !mcsema_real_eip !17
  store i64 %148, i64* %RDX, !mcsema_real_eip !17
  %149 = load i64* %RSI_val, !mcsema_real_eip !17
  store i64 %149, i64* %RSI, !mcsema_real_eip !17
  %150 = load i64* %RDI_val, !mcsema_real_eip !17
  store i64 %150, i64* %RDI, !mcsema_real_eip !17
  %151 = load i64* %RSP_val, !mcsema_real_eip !17
  store i64 %151, i64* %RSP, !mcsema_real_eip !17
  %152 = load i64* %RBP_val, !mcsema_real_eip !17
  store i64 %152, i64* %RBP, !mcsema_real_eip !17
  %153 = load i64* %R8_val, !mcsema_real_eip !17
  store i64 %153, i64* %R8, !mcsema_real_eip !17
  %154 = load i64* %R9_val, !mcsema_real_eip !17
  store i64 %154, i64* %R9, !mcsema_real_eip !17
  %155 = load i64* %R10_val, !mcsema_real_eip !17
  store i64 %155, i64* %R10, !mcsema_real_eip !17
  %156 = load i64* %R11_val, !mcsema_real_eip !17
  store i64 %156, i64* %R11, !mcsema_real_eip !17
  %157 = load i64* %R12_val, !mcsema_real_eip !17
  store i64 %157, i64* %R12, !mcsema_real_eip !17
  %158 = load i64* %R13_val, !mcsema_real_eip !17
  store i64 %158, i64* %R13, !mcsema_real_eip !17
  %159 = load i64* %R14_val, !mcsema_real_eip !17
  store i64 %159, i64* %R14, !mcsema_real_eip !17
  %160 = load i64* %R15_val, !mcsema_real_eip !17
  store i64 %160, i64* %R15, !mcsema_real_eip !17
  %161 = load i64* %RIP_val, !mcsema_real_eip !17
  store i64 %161, i64* %RIP, !mcsema_real_eip !17
  %162 = load i1* %CF_val, !mcsema_real_eip !17
  store i1 %162, i1* %CF, align 1, !mcsema_real_eip !17
  %163 = load i1* %PF_val, !mcsema_real_eip !17
  store i1 %163, i1* %PF, align 1, !mcsema_real_eip !17
  %164 = load i1* %AF_val, !mcsema_real_eip !17
  store i1 %164, i1* %AF, align 1, !mcsema_real_eip !17
  %165 = load i1* %ZF_val, !mcsema_real_eip !17
  store i1 %165, i1* %ZF, align 1, !mcsema_real_eip !17
  %166 = load i1* %SF_val, !mcsema_real_eip !17
  store i1 %166, i1* %SF, align 1, !mcsema_real_eip !17
  %167 = load i1* %OF_val, !mcsema_real_eip !17
  store i1 %167, i1* %OF, align 1, !mcsema_real_eip !17
  %168 = load i1* %DF_val, !mcsema_real_eip !17
  store i1 %168, i1* %DF, align 1, !mcsema_real_eip !17
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !17
  %169 = load i1* %FPU_B_val, !mcsema_real_eip !17
  store i1 %169, i1* %FPU_B, align 1, !mcsema_real_eip !17
  %170 = load i1* %FPU_C3_val, !mcsema_real_eip !17
  store i1 %170, i1* %FPU_C3, align 1, !mcsema_real_eip !17
  %171 = load i3* %FPU_TOP_val, !mcsema_real_eip !17
  store i3 %171, i3* %FPU_TOP, align 1, !mcsema_real_eip !17
  %172 = load i1* %FPU_C2_val, !mcsema_real_eip !17
  store i1 %172, i1* %FPU_C2, align 1, !mcsema_real_eip !17
  %173 = load i1* %FPU_C1_val, !mcsema_real_eip !17
  store i1 %173, i1* %FPU_C1, align 1, !mcsema_real_eip !17
  %174 = load i1* %FPU_C0_val, !mcsema_real_eip !17
  store i1 %174, i1* %FPU_C0, align 1, !mcsema_real_eip !17
  %175 = load i1* %FPU_ES_val, !mcsema_real_eip !17
  store i1 %175, i1* %FPU_ES, align 1, !mcsema_real_eip !17
  %176 = load i1* %FPU_SF_val, !mcsema_real_eip !17
  store i1 %176, i1* %FPU_SF, align 1, !mcsema_real_eip !17
  %177 = load i1* %FPU_PE_val, !mcsema_real_eip !17
  store i1 %177, i1* %FPU_PE, align 1, !mcsema_real_eip !17
  %178 = load i1* %FPU_UE_val, !mcsema_real_eip !17
  store i1 %178, i1* %FPU_UE, align 1, !mcsema_real_eip !17
  %179 = load i1* %FPU_OE_val, !mcsema_real_eip !17
  store i1 %179, i1* %FPU_OE, align 1, !mcsema_real_eip !17
  %180 = load i1* %FPU_ZE_val, !mcsema_real_eip !17
  store i1 %180, i1* %FPU_ZE, align 1, !mcsema_real_eip !17
  %181 = load i1* %FPU_DE_val, !mcsema_real_eip !17
  store i1 %181, i1* %FPU_DE, align 1, !mcsema_real_eip !17
  %182 = load i1* %FPU_IE_val, !mcsema_real_eip !17
  store i1 %182, i1* %FPU_IE, align 1, !mcsema_real_eip !17
  %183 = load i1* %FPU_X_val, !mcsema_real_eip !17
  store i1 %183, i1* %FPU_X, align 1, !mcsema_real_eip !17
  %184 = load i2* %FPU_RC_val, !mcsema_real_eip !17
  store i2 %184, i2* %FPU_RC, align 1, !mcsema_real_eip !17
  %185 = load i2* %FPU_PC_val, !mcsema_real_eip !17
  store i2 %185, i2* %FPU_PC, align 1, !mcsema_real_eip !17
  %186 = load i1* %FPU_PM_val, !mcsema_real_eip !17
  store i1 %186, i1* %FPU_PM, align 1, !mcsema_real_eip !17
  %187 = load i1* %FPU_UM_val, !mcsema_real_eip !17
  store i1 %187, i1* %FPU_UM, align 1, !mcsema_real_eip !17
  %188 = load i1* %FPU_OM_val, !mcsema_real_eip !17
  store i1 %188, i1* %FPU_OM, align 1, !mcsema_real_eip !17
  %189 = load i1* %FPU_ZM_val, !mcsema_real_eip !17
  store i1 %189, i1* %FPU_ZM, align 1, !mcsema_real_eip !17
  %190 = load i1* %FPU_DM_val, !mcsema_real_eip !17
  store i1 %190, i1* %FPU_DM, align 1, !mcsema_real_eip !17
  %191 = load i1* %FPU_IM_val, !mcsema_real_eip !17
  store i1 %191, i1* %FPU_IM, align 1, !mcsema_real_eip !17
  %192 = load i64* %53, align 4
  store i64 %192, i64* %52, align 4
  %193 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !17
  store i16 %193, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !17
  %194 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !17
  store i64 %194, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !17
  %195 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !17
  store i16 %195, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !17
  %196 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !17
  store i64 %196, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !17
  %197 = load i128* %XMM0_val, !mcsema_real_eip !17
  store i128 %197, i128* %XMM0, align 1, !mcsema_real_eip !17
  %198 = load i128* %XMM1_val, !mcsema_real_eip !17
  store i128 %198, i128* %XMM1, align 1, !mcsema_real_eip !17
  %199 = load i128* %XMM2_val, !mcsema_real_eip !17
  store i128 %199, i128* %XMM2, align 1, !mcsema_real_eip !17
  %200 = load i128* %XMM3_val, !mcsema_real_eip !17
  store i128 %200, i128* %XMM3, align 1, !mcsema_real_eip !17
  %201 = load i128* %XMM4_val, !mcsema_real_eip !17
  store i128 %201, i128* %XMM4, align 1, !mcsema_real_eip !17
  %202 = load i128* %XMM5_val, !mcsema_real_eip !17
  store i128 %202, i128* %XMM5, align 1, !mcsema_real_eip !17
  %203 = load i128* %XMM6_val, !mcsema_real_eip !17
  store i128 %203, i128* %XMM6, align 1, !mcsema_real_eip !17
  %204 = load i128* %XMM7_val, !mcsema_real_eip !17
  store i128 %204, i128* %XMM7, align 1, !mcsema_real_eip !17
  %205 = load i128* %XMM8_val, !mcsema_real_eip !17
  store i128 %205, i128* %XMM8, align 1, !mcsema_real_eip !17
  %206 = load i128* %XMM9_val, !mcsema_real_eip !17
  store i128 %206, i128* %XMM9, align 1, !mcsema_real_eip !17
  %207 = load i128* %XMM10_val, !mcsema_real_eip !17
  store i128 %207, i128* %XMM10, align 1, !mcsema_real_eip !17
  %208 = load i128* %XMM11_val, !mcsema_real_eip !17
  store i128 %208, i128* %XMM11, align 1, !mcsema_real_eip !17
  %209 = load i128* %XMM12_val, !mcsema_real_eip !17
  store i128 %209, i128* %XMM12, align 1, !mcsema_real_eip !17
  %210 = load i128* %XMM13_val, !mcsema_real_eip !17
  store i128 %210, i128* %XMM13, align 1, !mcsema_real_eip !17
  %211 = load i128* %XMM14_val, !mcsema_real_eip !17
  store i128 %211, i128* %XMM14, align 1, !mcsema_real_eip !17
  %212 = load i128* %XMM15_val, !mcsema_real_eip !17
  store i128 %212, i128* %XMM15, align 1, !mcsema_real_eip !17
  %213 = load i64* %STACK_BASE_val, !mcsema_real_eip !17
  store i64 %213, i64* %STACK_BASE, align 1, !mcsema_real_eip !17
  %214 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !17
  store i64 %214, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !17
  ret void, !mcsema_real_eip !17

block_0x53:                                       ; preds = %block_0x11
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %140, i32 1)
  %215 = extractvalue { i32, i1 } %uadd70, 0
  %216 = xor i32 %215, %140, !mcsema_real_eip !14
  %217 = and i32 %216, 16, !mcsema_real_eip !14
  %218 = icmp ne i32 %217, 0, !mcsema_real_eip !14
  store i1 %218, i1* %AF_val, !mcsema_real_eip !14
  %219 = icmp slt i32 %215, 0
  store i1 %219, i1* %SF_val, !mcsema_real_eip !14
  %220 = icmp eq i32 %215, 0, !mcsema_real_eip !14
  store i1 %220, i1* %ZF_val, !mcsema_real_eip !14
  %221 = xor i32 %140, -2147483648, !mcsema_real_eip !14
  %222 = and i32 %216, %221, !mcsema_real_eip !14
  %223 = icmp slt i32 %222, 0
  store i1 %223, i1* %OF_val, !mcsema_real_eip !14
  %224 = trunc i32 %215 to i8, !mcsema_real_eip !14
  %225 = tail call i8 @llvm.ctpop.i8(i8 %224), !mcsema_real_eip !14
  %226 = and i8 %225, 1
  %227 = icmp eq i8 %226, 0
  store i1 %227, i1* %PF_val, !mcsema_real_eip !14
  %228 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %228, i1* %CF_val, !mcsema_real_eip !14
  store i32 %215, i32* %139, !mcsema_real_eip !14
  %229 = load i64* %RBP_val, !mcsema_real_eip !6
  %230 = add i64 %229, -4, !mcsema_real_eip !6
  %231 = inttoptr i64 %230 to i64*, !mcsema_real_eip !6
  %232 = bitcast i64* %231 to i32*
  %233 = load i32* %232, !mcsema_real_eip !6
  %234 = zext i32 %233 to i64, !mcsema_real_eip !6
  store i64 %234, i64* %RAX_val, !mcsema_real_eip !6
  %235 = add i32 %233, -9
  %236 = xor i32 %235, %233, !mcsema_real_eip !7
  %237 = and i32 %236, 16, !mcsema_real_eip !7
  %238 = icmp ne i32 %237, 0, !mcsema_real_eip !7
  store i1 %238, i1* %AF_val, !mcsema_real_eip !7
  %239 = trunc i32 %235 to i8, !mcsema_real_eip !7
  %240 = tail call i8 @llvm.ctpop.i8(i8 %239), !mcsema_real_eip !7
  %241 = and i8 %240, 1
  %242 = icmp eq i8 %241, 0
  store i1 %242, i1* %PF_val, !mcsema_real_eip !7
  %243 = icmp eq i32 %235, 0, !mcsema_real_eip !7
  store i1 %243, i1* %ZF_val, !mcsema_real_eip !7
  %244 = icmp slt i32 %235, 0
  store i1 %244, i1* %SF_val, !mcsema_real_eip !7
  %245 = icmp ult i32 %233, 9, !mcsema_real_eip !7
  store i1 %245, i1* %CF_val, !mcsema_real_eip !7
  %246 = and i32 %236, %233, !mcsema_real_eip !7
  %247 = icmp slt i32 %246, 0
  store i1 %247, i1* %OF_val, !mcsema_real_eip !7
  %248 = load i1* %ZF_val, !mcsema_real_eip !8
  %249 = or i1 %245, %248, !mcsema_real_eip !8
  br i1 %249, label %block_0x11.backedge, label %block_0x5f.loopexit, !mcsema_real_eip !8

block_0x23:                                       ; preds = %block_0x11
  %250 = sext i32 %140 to i64, !mcsema_real_eip !18
  store i64 %250, i64* %RAX_val, !mcsema_real_eip !18
  %251 = shl nsw i64 %250, 3
  %252 = add i64 %251, add (i64 ptrtoint (%0* @data_0x66 to i64), i64 32), !mcsema_real_eip !19
  %253 = inttoptr i64 %252 to i64*, !mcsema_real_eip !19
  %254 = load i64* %253, !mcsema_real_eip !19
  store i64 %254, i64* %RAX_val, !mcsema_real_eip !19
  %255 = inttoptr i64 %254 to i64*, !mcsema_real_eip !20
  %256 = bitcast i64* %255 to i32*
  %257 = load i32* %256, !mcsema_real_eip !20
  %258 = zext i32 %257 to i64, !mcsema_real_eip !20
  store i64 %258, i64* %RCX_val, !mcsema_real_eip !20
  %259 = load i64* %RBP_val, !mcsema_real_eip !21
  %260 = add i64 %259, -4, !mcsema_real_eip !21
  %261 = inttoptr i64 %260 to i64*, !mcsema_real_eip !21
  %262 = bitcast i64* %261 to i32*
  %263 = load i32* %262, !mcsema_real_eip !21
  %264 = sext i32 %263 to i64, !mcsema_real_eip !22
  store i64 %264, i64* %RAX_val, !mcsema_real_eip !22
  %265 = shl nsw i64 %264, 3
  %266 = add i64 %265, add (i64 ptrtoint (%0* @data_0x66 to i64), i64 32), !mcsema_real_eip !23
  %267 = inttoptr i64 %266 to i64*, !mcsema_real_eip !23
  %268 = load i64* %267, !mcsema_real_eip !23
  store i64 %268, i64* %RDX_val, !mcsema_real_eip !23
  %269 = load i64* %RBP_val, !mcsema_real_eip !24
  %270 = add i64 %269, -4, !mcsema_real_eip !24
  %271 = inttoptr i64 %270 to i64*, !mcsema_real_eip !24
  %272 = bitcast i64* %271 to i32*
  %273 = load i32* %272, !mcsema_real_eip !24
  %274 = zext i32 %273 to i64, !mcsema_real_eip !24
  store i64 %274, i64* %RSI_val, !mcsema_real_eip !25
  store i64 zext (i32 ptrtoint (%1* @data_0xd6 to i32) to i64), i64* %RDI_val, !mcsema_real_eip !26
  %275 = load i64* %RDX_val, !mcsema_real_eip !27
  %276 = load i64* %RCX_val, !mcsema_real_eip !27
  %277 = tail call x86_64_sysvcc i64 @printf(i64 zext (i32 ptrtoint (%1* @data_0xd6 to i32) to i64), i64 %274, i64 %275, i64 %276), !mcsema_real_eip !27
  store i64 %277, i64* %RAX_val, !mcsema_real_eip !27
  %278 = load i64* %RBP_val, !mcsema_real_eip !14
  %279 = add i64 %278, -4, !mcsema_real_eip !14
  %280 = inttoptr i64 %279 to i64*, !mcsema_real_eip !14
  %281 = bitcast i64* %280 to i32*
  %282 = load i32* %281, !mcsema_real_eip !14
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %282, i32 1)
  %283 = extractvalue { i32, i1 } %uadd, 0
  %284 = xor i32 %283, %282, !mcsema_real_eip !14
  %285 = and i32 %284, 16, !mcsema_real_eip !14
  %286 = icmp ne i32 %285, 0, !mcsema_real_eip !14
  store i1 %286, i1* %AF_val, !mcsema_real_eip !14
  %287 = icmp slt i32 %283, 0
  store i1 %287, i1* %SF_val, !mcsema_real_eip !14
  %288 = icmp eq i32 %283, 0, !mcsema_real_eip !14
  store i1 %288, i1* %ZF_val, !mcsema_real_eip !14
  %289 = xor i32 %282, -2147483648, !mcsema_real_eip !14
  %290 = and i32 %284, %289, !mcsema_real_eip !14
  %291 = icmp slt i32 %290, 0
  store i1 %291, i1* %OF_val, !mcsema_real_eip !14
  %292 = trunc i32 %283 to i8, !mcsema_real_eip !14
  %293 = tail call i8 @llvm.ctpop.i8(i8 %292), !mcsema_real_eip !14
  %294 = and i8 %293, 1
  %295 = icmp eq i8 %294, 0
  store i1 %295, i1* %PF_val, !mcsema_real_eip !14
  %296 = extractvalue { i32, i1 } %uadd, 1
  store i1 %296, i1* %CF_val, !mcsema_real_eip !14
  store i32 %283, i32* %281, !mcsema_real_eip !14
  %297 = load i64* %RBP_val, !mcsema_real_eip !6
  %298 = add i64 %297, -4, !mcsema_real_eip !6
  %299 = inttoptr i64 %298 to i64*, !mcsema_real_eip !6
  %300 = bitcast i64* %299 to i32*
  %301 = load i32* %300, !mcsema_real_eip !6
  %302 = zext i32 %301 to i64, !mcsema_real_eip !6
  store i64 %302, i64* %RAX_val, !mcsema_real_eip !6
  %303 = add i32 %301, -9
  %304 = xor i32 %303, %301, !mcsema_real_eip !7
  %305 = and i32 %304, 16, !mcsema_real_eip !7
  %306 = icmp ne i32 %305, 0, !mcsema_real_eip !7
  store i1 %306, i1* %AF_val, !mcsema_real_eip !7
  %307 = trunc i32 %303 to i8, !mcsema_real_eip !7
  %308 = tail call i8 @llvm.ctpop.i8(i8 %307), !mcsema_real_eip !7
  %309 = and i8 %308, 1
  %310 = icmp eq i8 %309, 0
  store i1 %310, i1* %PF_val, !mcsema_real_eip !7
  %311 = icmp eq i32 %303, 0, !mcsema_real_eip !7
  store i1 %311, i1* %ZF_val, !mcsema_real_eip !7
  %312 = icmp slt i32 %303, 0
  store i1 %312, i1* %SF_val, !mcsema_real_eip !7
  %313 = icmp ult i32 %301, 9, !mcsema_real_eip !7
  store i1 %313, i1* %CF_val, !mcsema_real_eip !7
  %314 = and i32 %304, %301, !mcsema_real_eip !7
  %315 = icmp slt i32 %314, 0
  store i1 %315, i1* %OF_val, !mcsema_real_eip !7
  %316 = load i1* %ZF_val, !mcsema_real_eip !8
  %317 = or i1 %313, %316, !mcsema_real_eip !8
  br i1 %317, label %block_0x11.backedge, label %block_0x5f.loopexit, !mcsema_real_eip !8

block_0x11.backedge:                              ; preds = %block_0x23, %block_0x53
  br label %block_0x11
}

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

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = metadata !{i64 4, [16 x i8] c"\09subq\09$16, %rsp\00"}
!5 = metadata !{i64 8, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!6 = metadata !{i64 87, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!7 = metadata !{i64 90, [15 x i8] c"\09cmpl\09$9, %eax\00"}
!8 = metadata !{i64 93, [9 x i8] c"\09jbe\09-78\00"}
!9 = metadata !{i64 17, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!10 = metadata !{i64 20, [6 x i8] c"\09cltq\00"}
!11 = metadata !{i64 22, [22 x i8] c"\09movq\09(,%rax,8), %rax\00"}
!12 = metadata !{i64 30, [18 x i8] c"\09testq\09%rax, %rax\00"}
!13 = metadata !{i64 33, [7 x i8] c"\09je\0948\00"}
!14 = metadata !{i64 83, [19 x i8] c"\09addl\09$1, -4(%rbp)\00"}
!15 = metadata !{i64 95, [15 x i8] c"\09movl\09$0, %eax\00"}
!16 = metadata !{i64 100, [7 x i8] c"\09leave\00"}
!17 = metadata !{i64 101, [6 x i8] c"\09retq\00"}
!18 = metadata !{i64 38, [6 x i8] c"\09cltq\00"}
!19 = metadata !{i64 40, [22 x i8] c"\09movq\09(,%rax,8), %rax\00"}
!20 = metadata !{i64 48, [19 x i8] c"\09movl\09(%rax), %ecx\00"}
!21 = metadata !{i64 50, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!22 = metadata !{i64 53, [6 x i8] c"\09cltq\00"}
!23 = metadata !{i64 55, [22 x i8] c"\09movq\09(,%rax,8), %rdx\00"}
!24 = metadata !{i64 63, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!25 = metadata !{i64 66, [17 x i8] c"\09movl\09%eax, %esi\00"}
!26 = metadata !{i64 68, [15 x i8] c"\09movl\09$0, %edi\00"}
!27 = metadata !{i64 78, [9 x i8] c"\09callq\090\00"}
