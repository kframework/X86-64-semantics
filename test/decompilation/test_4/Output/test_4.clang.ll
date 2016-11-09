; ModuleID = 'Output/test_4.clang.bc'
source_filename = "Output/test_4.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [88 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x200 = internal constant %0 <{ [88 x i8] c"\0B\00\00\00\0C\00\00\00\0D\00\00\00\0E\00\00\00\0F\00\00\00\10\00\00\00\11\00\00\00\12\00\00\00\13\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\09\00\00\00\0A\00\00\00" }>, align 64

define internal x86_64_sysvcc void @sub_a0(%struct.regs*) {
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
  %82 = load i64, i64* %R15_val, !mcsema_real_eip !4
  %83 = add i64 %79, -16
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !4
  store i64 %82, i64* %84, !mcsema_real_eip !4
  %85 = load i64, i64* %R14_val, !mcsema_real_eip !5
  %86 = add i64 %79, -24
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !5
  store i64 %85, i64* %87, !mcsema_real_eip !5
  %88 = load i64, i64* %R13_val, !mcsema_real_eip !6
  %89 = add i64 %79, -32
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !6
  store i64 %88, i64* %90, !mcsema_real_eip !6
  %91 = load i64, i64* %R12_val, !mcsema_real_eip !7
  %92 = add i64 %79, -40
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !7
  store i64 %91, i64* %93, !mcsema_real_eip !7
  %94 = load i64, i64* %RBX_val, !mcsema_real_eip !8
  %95 = add i64 %79, -48
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !8
  store i64 %94, i64* %96, !mcsema_real_eip !8
  %97 = add i64 %79, -248
  %98 = xor i64 %97, %95, !mcsema_real_eip !9
  %99 = and i64 %98, 16, !mcsema_real_eip !9
  %100 = icmp ne i64 %99, 0, !mcsema_real_eip !9
  store i1 %100, i1* %AF_val, !mcsema_real_eip !9
  %101 = trunc i64 %97 to i8, !mcsema_real_eip !9
  %102 = tail call i8 @llvm.ctpop.i8(i8 %101), !mcsema_real_eip !9
  %103 = and i8 %102, 1
  %104 = icmp eq i8 %103, 0
  store i1 %104, i1* %PF_val, !mcsema_real_eip !9
  %105 = icmp eq i64 %97, 0, !mcsema_real_eip !9
  store i1 %105, i1* %ZF_val, !mcsema_real_eip !9
  %106 = icmp slt i64 %97, 0
  store i1 %106, i1* %SF_val, !mcsema_real_eip !9
  %107 = icmp ult i64 %95, 200, !mcsema_real_eip !9
  store i1 %107, i1* %CF_val, !mcsema_real_eip !9
  %108 = and i64 %98, %95, !mcsema_real_eip !9
  %109 = icmp slt i64 %108, 0
  store i1 %109, i1* %OF_val, !mcsema_real_eip !9
  store i64 %97, i64* %RSP_val, !mcsema_real_eip !9
  store i64 100, i64* %RAX_val, !mcsema_real_eip !10
  store i64 200, i64* %RCX_val, !mcsema_real_eip !11
  store i64 300, i64* %RDX_val, !mcsema_real_eip !12
  store i64 400, i64* %R8_val, !mcsema_real_eip !13
  store i64 500, i64* %R9_val, !mcsema_real_eip !14
  store i64 600, i64* %R10_val, !mcsema_real_eip !15
  store i64 10, i64* %R11_val, !mcsema_real_eip !16
  %110 = load i64, i64* %RBP_val, !mcsema_real_eip !17
  %111 = add i64 %110, -144, !mcsema_real_eip !17
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !17
  %113 = ptrtoint i64* %112 to i64, !mcsema_real_eip !17
  store i64 %113, i64* %RBX_val, !mcsema_real_eip !17
  %114 = add i64 %110, -96, !mcsema_real_eip !18
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !18
  %116 = ptrtoint i64* %115 to i64, !mcsema_real_eip !18
  store i64 %116, i64* %R14_val, !mcsema_real_eip !18
  store i64 add (i64 ptrtoint (%0* @data_0x200 to i64), i64 48), i64* %R15_val, !mcsema_real_eip !19
  store i64 40, i64* %R12_val, !mcsema_real_eip !20
  store i64 ptrtoint (%0* @data_0x200 to i64), i64* %R13_val, !mcsema_real_eip !21
  %117 = load i64, i64* %RBP_val, !mcsema_real_eip !22
  %118 = add i64 %117, -44, !mcsema_real_eip !22
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !22
  %120 = bitcast i64* %119 to i32*
  store i32 0, i32* %120, !mcsema_real_eip !22
  %121 = load i64, i64* %RBP_val, !mcsema_real_eip !23
  %122 = add i64 %121, -48, !mcsema_real_eip !23
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !23
  %124 = load i64, i64* %RDI_val, !mcsema_real_eip !23
  %125 = trunc i64 %124 to i32, !mcsema_real_eip !23
  %126 = bitcast i64* %123 to i32*
  store i32 %125, i32* %126, !mcsema_real_eip !23
  %127 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %128 = add i64 %127, -56, !mcsema_real_eip !24
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !24
  %130 = load i64, i64* %RSI_val, !mcsema_real_eip !24
  store i64 %130, i64* %129, !mcsema_real_eip !24
  %131 = load i64, i64* %R14_val, !mcsema_real_eip !25
  store i64 %131, i64* %RDI_val, !mcsema_real_eip !26
  %132 = load i64, i64* %R13_val, !mcsema_real_eip !27
  store i64 %132, i64* %RSI_val, !mcsema_real_eip !27
  %133 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %134 = add i64 %133, -148, !mcsema_real_eip !28
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !28
  %136 = load i64, i64* %RDX_val, !mcsema_real_eip !28
  %137 = trunc i64 %136 to i32, !mcsema_real_eip !28
  %138 = bitcast i64* %135 to i32*
  store i32 %137, i32* %138, !mcsema_real_eip !28
  %139 = load i64, i64* %R12_val, !mcsema_real_eip !29
  store i64 %139, i64* %RDX_val, !mcsema_real_eip !29
  %140 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  %141 = add i64 %140, -160, !mcsema_real_eip !30
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !30
  %143 = load i64, i64* %R15_val, !mcsema_real_eip !30
  store i64 %143, i64* %142, !mcsema_real_eip !30
  %144 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %145 = add i64 %144, -168, !mcsema_real_eip !31
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !31
  %147 = load i64, i64* %R12_val, !mcsema_real_eip !31
  store i64 %147, i64* %146, !mcsema_real_eip !31
  %148 = load i64, i64* %RBP_val, !mcsema_real_eip !32
  %149 = add i64 %148, -172, !mcsema_real_eip !32
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !32
  %151 = load i64, i64* %RAX_val, !mcsema_real_eip !32
  %152 = trunc i64 %151 to i32, !mcsema_real_eip !32
  %153 = bitcast i64* %150 to i32*
  store i32 %152, i32* %153, !mcsema_real_eip !32
  %154 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %155 = add i64 %154, -176, !mcsema_real_eip !33
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !33
  %157 = load i64, i64* %RCX_val, !mcsema_real_eip !33
  %158 = trunc i64 %157 to i32, !mcsema_real_eip !33
  %159 = bitcast i64* %156 to i32*
  store i32 %158, i32* %159, !mcsema_real_eip !33
  %160 = load i64, i64* %RBP_val, !mcsema_real_eip !34
  %161 = add i64 %160, -184, !mcsema_real_eip !34
  %162 = inttoptr i64 %161 to i64*, !mcsema_real_eip !34
  %163 = load i64, i64* %R14_val, !mcsema_real_eip !34
  store i64 %163, i64* %162, !mcsema_real_eip !34
  %164 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %165 = add i64 %164, -188, !mcsema_real_eip !35
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !35
  %167 = load i64, i64* %R8_val, !mcsema_real_eip !35
  %168 = trunc i64 %167 to i32, !mcsema_real_eip !35
  %169 = bitcast i64* %166 to i32*
  store i32 %168, i32* %169, !mcsema_real_eip !35
  %170 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  %171 = add i64 %170, -192, !mcsema_real_eip !36
  %172 = inttoptr i64 %171 to i64*, !mcsema_real_eip !36
  %173 = load i64, i64* %R9_val, !mcsema_real_eip !36
  %174 = trunc i64 %173 to i32, !mcsema_real_eip !36
  %175 = bitcast i64* %172 to i32*
  store i32 %174, i32* %175, !mcsema_real_eip !36
  %176 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %177 = add i64 %176, -196, !mcsema_real_eip !37
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !37
  %179 = load i64, i64* %R10_val, !mcsema_real_eip !37
  %180 = trunc i64 %179 to i32, !mcsema_real_eip !37
  %181 = bitcast i64* %178 to i32*
  store i32 %180, i32* %181, !mcsema_real_eip !37
  %182 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %183 = add i64 %182, -200, !mcsema_real_eip !38
  %184 = inttoptr i64 %183 to i64*, !mcsema_real_eip !38
  %185 = load i64, i64* %R11_val, !mcsema_real_eip !38
  %186 = trunc i64 %185 to i32, !mcsema_real_eip !38
  %187 = bitcast i64* %184 to i32*
  store i32 %186, i32* %187, !mcsema_real_eip !38
  %188 = load i64, i64* %RBP_val, !mcsema_real_eip !39
  %189 = add i64 %188, -208, !mcsema_real_eip !39
  %190 = inttoptr i64 %189 to i64*, !mcsema_real_eip !39
  %191 = load i64, i64* %RBX_val, !mcsema_real_eip !39
  store i64 %191, i64* %190, !mcsema_real_eip !39
  %192 = load i64, i64* %RDI_val, !mcsema_real_eip !40
  %193 = load i64, i64* %RSI_val, !mcsema_real_eip !40
  %194 = load i64, i64* %RDX_val, !mcsema_real_eip !40
  %195 = tail call x86_64_sysvcc i64 @memcpy(i64 %192, i64 %193, i64 %194), !mcsema_real_eip !40
  store i64 %195, i64* %RAX_val, !mcsema_real_eip !40
  %196 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %197 = add i64 %196, -208, !mcsema_real_eip !41
  %198 = inttoptr i64 %197 to i64*, !mcsema_real_eip !41
  %199 = load i64, i64* %198, !mcsema_real_eip !41
  store i64 %199, i64* %RDX_val, !mcsema_real_eip !41
  store i64 %199, i64* %RDI_val, !mcsema_real_eip !42
  %200 = add i64 %196, -160, !mcsema_real_eip !43
  %201 = inttoptr i64 %200 to i64*, !mcsema_real_eip !43
  %202 = load i64, i64* %201, !mcsema_real_eip !43
  store i64 %202, i64* %RSI_val, !mcsema_real_eip !43
  %203 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  %204 = add i64 %203, -168, !mcsema_real_eip !44
  %205 = inttoptr i64 %204 to i64*, !mcsema_real_eip !44
  %206 = load i64, i64* %205, !mcsema_real_eip !44
  store i64 %206, i64* %RDX_val, !mcsema_real_eip !44
  %207 = load i64, i64* %RDI_val, !mcsema_real_eip !45
  %208 = load i64, i64* %RSI_val, !mcsema_real_eip !45
  %209 = tail call x86_64_sysvcc i64 @memcpy(i64 %207, i64 %208, i64 %206), !mcsema_real_eip !45
  store i64 %209, i64* %RAX_val, !mcsema_real_eip !45
  %210 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %211 = add i64 %210, -172, !mcsema_real_eip !46
  %212 = inttoptr i64 %211 to i64*, !mcsema_real_eip !46
  %213 = bitcast i64* %212 to i32*
  %214 = load i32, i32* %213, !mcsema_real_eip !46
  %215 = zext i32 %214 to i64, !mcsema_real_eip !46
  store i64 %215, i64* %RDI_val, !mcsema_real_eip !46
  %216 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  %217 = add i64 %216, -176, !mcsema_real_eip !47
  %218 = inttoptr i64 %217 to i64*, !mcsema_real_eip !47
  %219 = bitcast i64* %218 to i32*
  %220 = load i32, i32* %219, !mcsema_real_eip !47
  %221 = zext i32 %220 to i64, !mcsema_real_eip !47
  store i64 %221, i64* %RSI_val, !mcsema_real_eip !47
  %222 = load i64, i64* %RBP_val, !mcsema_real_eip !48
  %223 = add i64 %222, -148, !mcsema_real_eip !48
  %224 = inttoptr i64 %223 to i64*, !mcsema_real_eip !48
  %225 = bitcast i64* %224 to i32*
  %226 = load i32, i32* %225, !mcsema_real_eip !48
  %227 = zext i32 %226 to i64, !mcsema_real_eip !48
  store i64 %227, i64* %RDX_val, !mcsema_real_eip !48
  %228 = load i64, i64* %RBP_val, !mcsema_real_eip !49
  %229 = add i64 %228, -188, !mcsema_real_eip !49
  %230 = inttoptr i64 %229 to i64*, !mcsema_real_eip !49
  %231 = bitcast i64* %230 to i32*
  %232 = load i32, i32* %231, !mcsema_real_eip !49
  %233 = zext i32 %232 to i64, !mcsema_real_eip !49
  store i64 %233, i64* %RCX_val, !mcsema_real_eip !49
  %234 = load i64, i64* %RBP_val, !mcsema_real_eip !50
  %235 = add i64 %234, -192, !mcsema_real_eip !50
  %236 = inttoptr i64 %235 to i64*, !mcsema_real_eip !50
  %237 = bitcast i64* %236 to i32*
  %238 = load i32, i32* %237, !mcsema_real_eip !50
  %239 = zext i32 %238 to i64, !mcsema_real_eip !50
  store i64 %239, i64* %R8_val, !mcsema_real_eip !50
  %240 = load i64, i64* %RBP_val, !mcsema_real_eip !51
  %241 = add i64 %240, -196, !mcsema_real_eip !51
  %242 = inttoptr i64 %241 to i64*, !mcsema_real_eip !51
  %243 = bitcast i64* %242 to i32*
  %244 = load i32, i32* %243, !mcsema_real_eip !51
  %245 = zext i32 %244 to i64, !mcsema_real_eip !51
  store i64 %245, i64* %R9_val, !mcsema_real_eip !51
  %246 = load i64, i64* %RSP_val, !mcsema_real_eip !52
  %247 = inttoptr i64 %246 to i64*, !mcsema_real_eip !52
  %248 = bitcast i64* %247 to i32*
  store i32 10, i32* %248, !mcsema_real_eip !52
  %249 = load i64, i64* %RBP_val, !mcsema_real_eip !53
  %250 = add i64 %249, -184, !mcsema_real_eip !53
  %251 = inttoptr i64 %250 to i64*, !mcsema_real_eip !53
  %252 = load i64, i64* %251, !mcsema_real_eip !53
  store i64 %252, i64* %RBX_val, !mcsema_real_eip !53
  %253 = load i64, i64* %RSP_val, !mcsema_real_eip !54
  %254 = add i64 %253, 8, !mcsema_real_eip !54
  %255 = inttoptr i64 %254 to i64*, !mcsema_real_eip !54
  store i64 %252, i64* %255, !mcsema_real_eip !54
  %256 = load i64, i64* %RSP_val, !mcsema_real_eip !55
  %257 = add i64 %256, 16, !mcsema_real_eip !55
  %258 = inttoptr i64 %257 to i64*, !mcsema_real_eip !55
  %259 = bitcast i64* %258 to i32*
  store i32 10, i32* %259, !mcsema_real_eip !55
  %260 = load i64, i64* %RBP_val, !mcsema_real_eip !56
  %261 = add i64 %260, -208, !mcsema_real_eip !56
  %262 = inttoptr i64 %261 to i64*, !mcsema_real_eip !56
  %263 = load i64, i64* %262, !mcsema_real_eip !56
  store i64 %263, i64* %R14_val, !mcsema_real_eip !56
  %264 = load i64, i64* %RSP_val, !mcsema_real_eip !57
  %265 = add i64 %264, 24, !mcsema_real_eip !57
  %266 = inttoptr i64 %265 to i64*, !mcsema_real_eip !57
  store i64 %263, i64* %266, !mcsema_real_eip !57
  %267 = load i64, i64* %RSP_val, !mcsema_real_eip !58
  %268 = add i64 %267, -8
  %269 = inttoptr i64 %268 to i64*, !mcsema_real_eip !58
  store i64 -4981261766360305936, i64* %269, !mcsema_real_eip !58
  store i64 %268, i64* %RSP_val, !mcsema_real_eip !58
  %270 = load i64, i64* %RAX_val, !mcsema_real_eip !58
  store i64 %270, i64* %RAX, !mcsema_real_eip !58
  %271 = load i64, i64* %RBX_val, !mcsema_real_eip !58
  store i64 %271, i64* %RBX, !mcsema_real_eip !58
  %272 = load i64, i64* %RCX_val, !mcsema_real_eip !58
  store i64 %272, i64* %RCX, !mcsema_real_eip !58
  %273 = load i64, i64* %RDX_val, !mcsema_real_eip !58
  store i64 %273, i64* %RDX, !mcsema_real_eip !58
  %274 = load i64, i64* %RSI_val, !mcsema_real_eip !58
  store i64 %274, i64* %RSI, !mcsema_real_eip !58
  %275 = load i64, i64* %RDI_val, !mcsema_real_eip !58
  store i64 %275, i64* %RDI, !mcsema_real_eip !58
  %276 = load i64, i64* %RSP_val, !mcsema_real_eip !58
  store i64 %276, i64* %RSP, !mcsema_real_eip !58
  %277 = load i64, i64* %RBP_val, !mcsema_real_eip !58
  store i64 %277, i64* %RBP, !mcsema_real_eip !58
  %278 = load i64, i64* %R8_val, !mcsema_real_eip !58
  store i64 %278, i64* %R8, !mcsema_real_eip !58
  %279 = load i64, i64* %R9_val, !mcsema_real_eip !58
  store i64 %279, i64* %R9, !mcsema_real_eip !58
  %280 = load i64, i64* %R10_val, !mcsema_real_eip !58
  store i64 %280, i64* %R10, !mcsema_real_eip !58
  %281 = load i64, i64* %R11_val, !mcsema_real_eip !58
  store i64 %281, i64* %R11, !mcsema_real_eip !58
  %282 = load i64, i64* %R12_val, !mcsema_real_eip !58
  store i64 %282, i64* %R12, !mcsema_real_eip !58
  %283 = load i64, i64* %R13_val, !mcsema_real_eip !58
  store i64 %283, i64* %R13, !mcsema_real_eip !58
  %284 = load i64, i64* %R14_val, !mcsema_real_eip !58
  store i64 %284, i64* %R14, !mcsema_real_eip !58
  %285 = load i64, i64* %R15_val, !mcsema_real_eip !58
  store i64 %285, i64* %R15, !mcsema_real_eip !58
  %286 = load i64, i64* %RIP_val, !mcsema_real_eip !58
  store i64 %286, i64* %RIP, !mcsema_real_eip !58
  %287 = load i1, i1* %CF_val, !mcsema_real_eip !58
  store i1 %287, i1* %CF, align 1, !mcsema_real_eip !58
  %288 = load i1, i1* %PF_val, !mcsema_real_eip !58
  store i1 %288, i1* %PF, align 1, !mcsema_real_eip !58
  %289 = load i1, i1* %AF_val, !mcsema_real_eip !58
  store i1 %289, i1* %AF, align 1, !mcsema_real_eip !58
  %290 = load i1, i1* %ZF_val, !mcsema_real_eip !58
  store i1 %290, i1* %ZF, align 1, !mcsema_real_eip !58
  %291 = load i1, i1* %SF_val, !mcsema_real_eip !58
  store i1 %291, i1* %SF, align 1, !mcsema_real_eip !58
  %292 = load i1, i1* %OF_val, !mcsema_real_eip !58
  store i1 %292, i1* %OF, align 1, !mcsema_real_eip !58
  %293 = load i1, i1* %DF_val, !mcsema_real_eip !58
  store i1 %293, i1* %DF, align 1, !mcsema_real_eip !58
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !58
  %294 = load i1, i1* %FPU_B_val, !mcsema_real_eip !58
  store i1 %294, i1* %FPU_B, align 1, !mcsema_real_eip !58
  %295 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !58
  store i1 %295, i1* %FPU_C3, align 1, !mcsema_real_eip !58
  %296 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !58
  store i3 %296, i3* %FPU_TOP, align 1, !mcsema_real_eip !58
  %297 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !58
  store i1 %297, i1* %FPU_C2, align 1, !mcsema_real_eip !58
  %298 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !58
  store i1 %298, i1* %FPU_C1, align 1, !mcsema_real_eip !58
  %299 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !58
  store i1 %299, i1* %FPU_C0, align 1, !mcsema_real_eip !58
  %300 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !58
  store i1 %300, i1* %FPU_ES, align 1, !mcsema_real_eip !58
  %301 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !58
  store i1 %301, i1* %FPU_SF, align 1, !mcsema_real_eip !58
  %302 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !58
  store i1 %302, i1* %FPU_PE, align 1, !mcsema_real_eip !58
  %303 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !58
  store i1 %303, i1* %FPU_UE, align 1, !mcsema_real_eip !58
  %304 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !58
  store i1 %304, i1* %FPU_OE, align 1, !mcsema_real_eip !58
  %305 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !58
  store i1 %305, i1* %FPU_ZE, align 1, !mcsema_real_eip !58
  %306 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !58
  store i1 %306, i1* %FPU_DE, align 1, !mcsema_real_eip !58
  %307 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !58
  store i1 %307, i1* %FPU_IE, align 1, !mcsema_real_eip !58
  %308 = load i1, i1* %FPU_X_val, !mcsema_real_eip !58
  store i1 %308, i1* %FPU_X, align 1, !mcsema_real_eip !58
  %309 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !58
  store i2 %309, i2* %FPU_RC, align 1, !mcsema_real_eip !58
  %310 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !58
  store i2 %310, i2* %FPU_PC, align 1, !mcsema_real_eip !58
  %311 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !58
  store i1 %311, i1* %FPU_PM, align 1, !mcsema_real_eip !58
  %312 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !58
  store i1 %312, i1* %FPU_UM, align 1, !mcsema_real_eip !58
  %313 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !58
  store i1 %313, i1* %FPU_OM, align 1, !mcsema_real_eip !58
  %314 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !58
  store i1 %314, i1* %FPU_ZM, align 1, !mcsema_real_eip !58
  %315 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !58
  store i1 %315, i1* %FPU_DM, align 1, !mcsema_real_eip !58
  %316 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !58
  store i1 %316, i1* %FPU_IM, align 1, !mcsema_real_eip !58
  %317 = load i64, i64* %53, align 4
  store i64 %317, i64* %52, align 4
  %318 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !58
  store i16 %318, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !58
  %319 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !58
  store i64 %319, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !58
  %320 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !58
  store i16 %320, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !58
  %321 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !58
  store i64 %321, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !58
  %322 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !58
  store i11 %322, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !58
  %323 = load i128, i128* %XMM0_val, !mcsema_real_eip !58
  store i128 %323, i128* %XMM0, align 1, !mcsema_real_eip !58
  %324 = load i128, i128* %XMM1_val, !mcsema_real_eip !58
  store i128 %324, i128* %XMM1, align 1, !mcsema_real_eip !58
  %325 = load i128, i128* %XMM2_val, !mcsema_real_eip !58
  store i128 %325, i128* %XMM2, align 1, !mcsema_real_eip !58
  %326 = load i128, i128* %XMM3_val, !mcsema_real_eip !58
  store i128 %326, i128* %XMM3, align 1, !mcsema_real_eip !58
  %327 = load i128, i128* %XMM4_val, !mcsema_real_eip !58
  store i128 %327, i128* %XMM4, align 1, !mcsema_real_eip !58
  %328 = load i128, i128* %XMM5_val, !mcsema_real_eip !58
  store i128 %328, i128* %XMM5, align 1, !mcsema_real_eip !58
  %329 = load i128, i128* %XMM6_val, !mcsema_real_eip !58
  store i128 %329, i128* %XMM6, align 1, !mcsema_real_eip !58
  %330 = load i128, i128* %XMM7_val, !mcsema_real_eip !58
  store i128 %330, i128* %XMM7, align 1, !mcsema_real_eip !58
  %331 = load i128, i128* %XMM8_val, !mcsema_real_eip !58
  store i128 %331, i128* %XMM8, align 1, !mcsema_real_eip !58
  %332 = load i128, i128* %XMM9_val, !mcsema_real_eip !58
  store i128 %332, i128* %XMM9, align 1, !mcsema_real_eip !58
  %333 = load i128, i128* %XMM10_val, !mcsema_real_eip !58
  store i128 %333, i128* %XMM10, align 1, !mcsema_real_eip !58
  %334 = load i128, i128* %XMM11_val, !mcsema_real_eip !58
  store i128 %334, i128* %XMM11, align 1, !mcsema_real_eip !58
  %335 = load i128, i128* %XMM12_val, !mcsema_real_eip !58
  store i128 %335, i128* %XMM12, align 1, !mcsema_real_eip !58
  %336 = load i128, i128* %XMM13_val, !mcsema_real_eip !58
  store i128 %336, i128* %XMM13, align 1, !mcsema_real_eip !58
  %337 = load i128, i128* %XMM14_val, !mcsema_real_eip !58
  store i128 %337, i128* %XMM14, align 1, !mcsema_real_eip !58
  %338 = load i128, i128* %XMM15_val, !mcsema_real_eip !58
  store i128 %338, i128* %XMM15, align 1, !mcsema_real_eip !58
  %339 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !58
  store i64 %339, i64* %STACK_BASE, align 1, !mcsema_real_eip !58
  %340 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !58
  store i64 %340, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !58
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !58
  %341 = load i64, i64* %RAX, !mcsema_real_eip !58
  store i64 %341, i64* %RAX_val, !mcsema_real_eip !58
  %342 = load i64, i64* %RBX, !mcsema_real_eip !58
  store i64 %342, i64* %RBX_val, !mcsema_real_eip !58
  %343 = load i64, i64* %RCX, !mcsema_real_eip !58
  store i64 %343, i64* %RCX_val, !mcsema_real_eip !58
  %344 = load i64, i64* %RDX, !mcsema_real_eip !58
  store i64 %344, i64* %RDX_val, !mcsema_real_eip !58
  %345 = load i64, i64* %RSI, !mcsema_real_eip !58
  store i64 %345, i64* %RSI_val, !mcsema_real_eip !58
  %346 = load i64, i64* %RDI, !mcsema_real_eip !58
  store i64 %346, i64* %RDI_val, !mcsema_real_eip !58
  %347 = load i64, i64* %RSP, !mcsema_real_eip !58
  store i64 %347, i64* %RSP_val, !mcsema_real_eip !58
  %348 = load i64, i64* %RBP, !mcsema_real_eip !58
  store i64 %348, i64* %RBP_val, !mcsema_real_eip !58
  %349 = load i64, i64* %R8, !mcsema_real_eip !58
  store i64 %349, i64* %R8_val, !mcsema_real_eip !58
  %350 = load i64, i64* %R9, !mcsema_real_eip !58
  store i64 %350, i64* %R9_val, !mcsema_real_eip !58
  %351 = load i64, i64* %R10, !mcsema_real_eip !58
  store i64 %351, i64* %R10_val, !mcsema_real_eip !58
  %352 = load i64, i64* %R11, !mcsema_real_eip !58
  store i64 %352, i64* %R11_val, !mcsema_real_eip !58
  %353 = load i64, i64* %R12, !mcsema_real_eip !58
  store i64 %353, i64* %R12_val, !mcsema_real_eip !58
  %354 = load i64, i64* %R13, !mcsema_real_eip !58
  store i64 %354, i64* %R13_val, !mcsema_real_eip !58
  %355 = load i64, i64* %R14, !mcsema_real_eip !58
  store i64 %355, i64* %R14_val, !mcsema_real_eip !58
  %356 = load i64, i64* %R15, !mcsema_real_eip !58
  store i64 %356, i64* %R15_val, !mcsema_real_eip !58
  %357 = load i64, i64* %RIP, !mcsema_real_eip !58
  store i64 %357, i64* %RIP_val, !mcsema_real_eip !58
  %358 = load i1, i1* %CF, align 1, !mcsema_real_eip !58
  store i1 %358, i1* %CF_val, !mcsema_real_eip !58
  %359 = load i1, i1* %PF, align 1, !mcsema_real_eip !58
  store i1 %359, i1* %PF_val, !mcsema_real_eip !58
  %360 = load i1, i1* %AF, align 1, !mcsema_real_eip !58
  store i1 %360, i1* %AF_val, !mcsema_real_eip !58
  %361 = load i1, i1* %ZF, align 1, !mcsema_real_eip !58
  store i1 %361, i1* %ZF_val, !mcsema_real_eip !58
  %362 = load i1, i1* %SF, align 1, !mcsema_real_eip !58
  store i1 %362, i1* %SF_val, !mcsema_real_eip !58
  %363 = load i1, i1* %OF, align 1, !mcsema_real_eip !58
  store i1 %363, i1* %OF_val, !mcsema_real_eip !58
  %364 = load i1, i1* %DF, align 1, !mcsema_real_eip !58
  store i1 %364, i1* %DF_val, !mcsema_real_eip !58
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !58
  %365 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !58
  store i1 %365, i1* %FPU_B_val, !mcsema_real_eip !58
  %366 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !58
  store i1 %366, i1* %FPU_C3_val, !mcsema_real_eip !58
  %367 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !58
  store i3 %367, i3* %FPU_TOP_val, !mcsema_real_eip !58
  %368 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !58
  store i1 %368, i1* %FPU_C2_val, !mcsema_real_eip !58
  %369 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !58
  store i1 %369, i1* %FPU_C1_val, !mcsema_real_eip !58
  %370 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !58
  store i1 %370, i1* %FPU_C0_val, !mcsema_real_eip !58
  %371 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !58
  store i1 %371, i1* %FPU_ES_val, !mcsema_real_eip !58
  %372 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !58
  store i1 %372, i1* %FPU_SF_val, !mcsema_real_eip !58
  %373 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !58
  store i1 %373, i1* %FPU_PE_val, !mcsema_real_eip !58
  %374 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !58
  store i1 %374, i1* %FPU_UE_val, !mcsema_real_eip !58
  %375 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !58
  store i1 %375, i1* %FPU_OE_val, !mcsema_real_eip !58
  %376 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !58
  store i1 %376, i1* %FPU_ZE_val, !mcsema_real_eip !58
  %377 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !58
  store i1 %377, i1* %FPU_DE_val, !mcsema_real_eip !58
  %378 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !58
  store i1 %378, i1* %FPU_IE_val, !mcsema_real_eip !58
  %379 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !58
  store i1 %379, i1* %FPU_X_val, !mcsema_real_eip !58
  %380 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !58
  store i2 %380, i2* %FPU_RC_val, !mcsema_real_eip !58
  %381 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !58
  store i2 %381, i2* %FPU_PC_val, !mcsema_real_eip !58
  %382 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !58
  store i1 %382, i1* %FPU_PM_val, !mcsema_real_eip !58
  %383 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !58
  store i1 %383, i1* %FPU_UM_val, !mcsema_real_eip !58
  %384 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !58
  store i1 %384, i1* %FPU_OM_val, !mcsema_real_eip !58
  %385 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !58
  store i1 %385, i1* %FPU_ZM_val, !mcsema_real_eip !58
  %386 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !58
  store i1 %386, i1* %FPU_DM_val, !mcsema_real_eip !58
  %387 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !58
  store i1 %387, i1* %FPU_IM_val, !mcsema_real_eip !58
  %388 = load i64, i64* %52, align 4
  store i64 %388, i64* %53, align 4
  %389 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !58
  store i16 %389, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !58
  %390 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !58
  store i64 %390, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !58
  %391 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !58
  store i16 %391, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !58
  %392 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !58
  store i64 %392, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !58
  %393 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !58
  store i11 %393, i11* %FPU_FOPCODE_val, !mcsema_real_eip !58
  %394 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !58
  store i128 %394, i128* %XMM0_val, !mcsema_real_eip !58
  %395 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !58
  store i128 %395, i128* %XMM1_val, !mcsema_real_eip !58
  %396 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !58
  store i128 %396, i128* %XMM2_val, !mcsema_real_eip !58
  %397 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !58
  store i128 %397, i128* %XMM3_val, !mcsema_real_eip !58
  %398 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !58
  store i128 %398, i128* %XMM4_val, !mcsema_real_eip !58
  %399 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !58
  store i128 %399, i128* %XMM5_val, !mcsema_real_eip !58
  %400 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !58
  store i128 %400, i128* %XMM6_val, !mcsema_real_eip !58
  %401 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !58
  store i128 %401, i128* %XMM7_val, !mcsema_real_eip !58
  %402 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !58
  store i128 %402, i128* %XMM8_val, !mcsema_real_eip !58
  %403 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !58
  store i128 %403, i128* %XMM9_val, !mcsema_real_eip !58
  %404 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !58
  store i128 %404, i128* %XMM10_val, !mcsema_real_eip !58
  %405 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !58
  store i128 %405, i128* %XMM11_val, !mcsema_real_eip !58
  %406 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !58
  store i128 %406, i128* %XMM12_val, !mcsema_real_eip !58
  %407 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !58
  store i128 %407, i128* %XMM13_val, !mcsema_real_eip !58
  %408 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !58
  store i128 %408, i128* %XMM14_val, !mcsema_real_eip !58
  %409 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !58
  store i128 %409, i128* %XMM15_val, !mcsema_real_eip !58
  %410 = load i64, i64* %STACK_BASE, !mcsema_real_eip !58
  store i64 %410, i64* %STACK_BASE_val, !mcsema_real_eip !58
  %411 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !58
  store i64 %411, i64* %STACK_LIMIT_val, !mcsema_real_eip !58
  %412 = load i64, i64* %RSP_val, !mcsema_real_eip !59
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %412, i64 200)
  %413 = extractvalue { i64, i1 } %uadd, 0
  %414 = xor i64 %413, %412, !mcsema_real_eip !59
  %415 = and i64 %414, 16, !mcsema_real_eip !59
  %416 = icmp ne i64 %415, 0, !mcsema_real_eip !59
  store i1 %416, i1* %AF_val, !mcsema_real_eip !59
  %417 = icmp slt i64 %413, 0
  store i1 %417, i1* %SF_val, !mcsema_real_eip !59
  %418 = icmp eq i64 %413, 0, !mcsema_real_eip !59
  store i1 %418, i1* %ZF_val, !mcsema_real_eip !59
  %419 = xor i64 %412, -9223372036854775808, !mcsema_real_eip !59
  %420 = and i64 %414, %419, !mcsema_real_eip !59
  %421 = icmp slt i64 %420, 0
  store i1 %421, i1* %OF_val, !mcsema_real_eip !59
  %422 = trunc i64 %413 to i8, !mcsema_real_eip !59
  %423 = tail call i8 @llvm.ctpop.i8(i8 %422), !mcsema_real_eip !59
  %424 = and i8 %423, 1
  %425 = icmp eq i8 %424, 0
  store i1 %425, i1* %PF_val, !mcsema_real_eip !59
  %426 = extractvalue { i64, i1 } %uadd, 1
  store i1 %426, i1* %CF_val, !mcsema_real_eip !59
  store i64 %413, i64* %RSP_val, !mcsema_real_eip !59
  %427 = inttoptr i64 %413 to i64*, !mcsema_real_eip !60
  %428 = load i64, i64* %427, !mcsema_real_eip !60
  store i64 %428, i64* %RBX_val, !mcsema_real_eip !60
  %429 = add i64 %413, 8, !mcsema_real_eip !60
  store i64 %429, i64* %RSP_val, !mcsema_real_eip !60
  %430 = inttoptr i64 %429 to i64*, !mcsema_real_eip !61
  %431 = load i64, i64* %430, !mcsema_real_eip !61
  store i64 %431, i64* %R12_val, !mcsema_real_eip !61
  %432 = add i64 %413, 16, !mcsema_real_eip !61
  store i64 %432, i64* %RSP_val, !mcsema_real_eip !61
  %433 = inttoptr i64 %432 to i64*, !mcsema_real_eip !62
  %434 = load i64, i64* %433, !mcsema_real_eip !62
  store i64 %434, i64* %R13_val, !mcsema_real_eip !62
  %435 = add i64 %413, 24, !mcsema_real_eip !62
  store i64 %435, i64* %RSP_val, !mcsema_real_eip !62
  %436 = inttoptr i64 %435 to i64*, !mcsema_real_eip !63
  %437 = load i64, i64* %436, !mcsema_real_eip !63
  store i64 %437, i64* %R14_val, !mcsema_real_eip !63
  %438 = add i64 %413, 32, !mcsema_real_eip !63
  store i64 %438, i64* %RSP_val, !mcsema_real_eip !63
  %439 = inttoptr i64 %438 to i64*, !mcsema_real_eip !64
  %440 = load i64, i64* %439, !mcsema_real_eip !64
  store i64 %440, i64* %R15_val, !mcsema_real_eip !64
  %441 = add i64 %413, 40, !mcsema_real_eip !64
  store i64 %441, i64* %RSP_val, !mcsema_real_eip !64
  %442 = inttoptr i64 %441 to i64*, !mcsema_real_eip !65
  %443 = load i64, i64* %442, !mcsema_real_eip !65
  store i64 %443, i64* %RBP_val, !mcsema_real_eip !65
  %444 = add i64 %413, 56, !mcsema_real_eip !66
  store i64 %444, i64* %RSP_val, !mcsema_real_eip !66
  %445 = load i64, i64* %RAX_val, !mcsema_real_eip !66
  store i64 %445, i64* %RAX, !mcsema_real_eip !66
  %446 = load i64, i64* %RBX_val, !mcsema_real_eip !66
  store i64 %446, i64* %RBX, !mcsema_real_eip !66
  %447 = load i64, i64* %RCX_val, !mcsema_real_eip !66
  store i64 %447, i64* %RCX, !mcsema_real_eip !66
  %448 = load i64, i64* %RDX_val, !mcsema_real_eip !66
  store i64 %448, i64* %RDX, !mcsema_real_eip !66
  %449 = load i64, i64* %RSI_val, !mcsema_real_eip !66
  store i64 %449, i64* %RSI, !mcsema_real_eip !66
  %450 = load i64, i64* %RDI_val, !mcsema_real_eip !66
  store i64 %450, i64* %RDI, !mcsema_real_eip !66
  %451 = load i64, i64* %RSP_val, !mcsema_real_eip !66
  store i64 %451, i64* %RSP, !mcsema_real_eip !66
  %452 = load i64, i64* %RBP_val, !mcsema_real_eip !66
  store i64 %452, i64* %RBP, !mcsema_real_eip !66
  %453 = load i64, i64* %R8_val, !mcsema_real_eip !66
  store i64 %453, i64* %R8, !mcsema_real_eip !66
  %454 = load i64, i64* %R9_val, !mcsema_real_eip !66
  store i64 %454, i64* %R9, !mcsema_real_eip !66
  %455 = load i64, i64* %R10_val, !mcsema_real_eip !66
  store i64 %455, i64* %R10, !mcsema_real_eip !66
  %456 = load i64, i64* %R11_val, !mcsema_real_eip !66
  store i64 %456, i64* %R11, !mcsema_real_eip !66
  %457 = load i64, i64* %R12_val, !mcsema_real_eip !66
  store i64 %457, i64* %R12, !mcsema_real_eip !66
  %458 = load i64, i64* %R13_val, !mcsema_real_eip !66
  store i64 %458, i64* %R13, !mcsema_real_eip !66
  %459 = load i64, i64* %R14_val, !mcsema_real_eip !66
  store i64 %459, i64* %R14, !mcsema_real_eip !66
  %460 = load i64, i64* %R15_val, !mcsema_real_eip !66
  store i64 %460, i64* %R15, !mcsema_real_eip !66
  %461 = load i64, i64* %RIP_val, !mcsema_real_eip !66
  store i64 %461, i64* %RIP, !mcsema_real_eip !66
  %462 = load i1, i1* %CF_val, !mcsema_real_eip !66
  store i1 %462, i1* %CF, align 1, !mcsema_real_eip !66
  %463 = load i1, i1* %PF_val, !mcsema_real_eip !66
  store i1 %463, i1* %PF, align 1, !mcsema_real_eip !66
  %464 = load i1, i1* %AF_val, !mcsema_real_eip !66
  store i1 %464, i1* %AF, align 1, !mcsema_real_eip !66
  %465 = load i1, i1* %ZF_val, !mcsema_real_eip !66
  store i1 %465, i1* %ZF, align 1, !mcsema_real_eip !66
  %466 = load i1, i1* %SF_val, !mcsema_real_eip !66
  store i1 %466, i1* %SF, align 1, !mcsema_real_eip !66
  %467 = load i1, i1* %OF_val, !mcsema_real_eip !66
  store i1 %467, i1* %OF, align 1, !mcsema_real_eip !66
  %468 = load i1, i1* %DF_val, !mcsema_real_eip !66
  store i1 %468, i1* %DF, align 1, !mcsema_real_eip !66
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !66
  %469 = load i1, i1* %FPU_B_val, !mcsema_real_eip !66
  store i1 %469, i1* %FPU_B, align 1, !mcsema_real_eip !66
  %470 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !66
  store i1 %470, i1* %FPU_C3, align 1, !mcsema_real_eip !66
  %471 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !66
  store i3 %471, i3* %FPU_TOP, align 1, !mcsema_real_eip !66
  %472 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !66
  store i1 %472, i1* %FPU_C2, align 1, !mcsema_real_eip !66
  %473 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !66
  store i1 %473, i1* %FPU_C1, align 1, !mcsema_real_eip !66
  %474 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !66
  store i1 %474, i1* %FPU_C0, align 1, !mcsema_real_eip !66
  %475 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !66
  store i1 %475, i1* %FPU_ES, align 1, !mcsema_real_eip !66
  %476 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !66
  store i1 %476, i1* %FPU_SF, align 1, !mcsema_real_eip !66
  %477 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !66
  store i1 %477, i1* %FPU_PE, align 1, !mcsema_real_eip !66
  %478 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !66
  store i1 %478, i1* %FPU_UE, align 1, !mcsema_real_eip !66
  %479 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !66
  store i1 %479, i1* %FPU_OE, align 1, !mcsema_real_eip !66
  %480 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !66
  store i1 %480, i1* %FPU_ZE, align 1, !mcsema_real_eip !66
  %481 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !66
  store i1 %481, i1* %FPU_DE, align 1, !mcsema_real_eip !66
  %482 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !66
  store i1 %482, i1* %FPU_IE, align 1, !mcsema_real_eip !66
  %483 = load i1, i1* %FPU_X_val, !mcsema_real_eip !66
  store i1 %483, i1* %FPU_X, align 1, !mcsema_real_eip !66
  %484 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !66
  store i2 %484, i2* %FPU_RC, align 1, !mcsema_real_eip !66
  %485 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !66
  store i2 %485, i2* %FPU_PC, align 1, !mcsema_real_eip !66
  %486 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !66
  store i1 %486, i1* %FPU_PM, align 1, !mcsema_real_eip !66
  %487 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !66
  store i1 %487, i1* %FPU_UM, align 1, !mcsema_real_eip !66
  %488 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !66
  store i1 %488, i1* %FPU_OM, align 1, !mcsema_real_eip !66
  %489 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !66
  store i1 %489, i1* %FPU_ZM, align 1, !mcsema_real_eip !66
  %490 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !66
  store i1 %490, i1* %FPU_DM, align 1, !mcsema_real_eip !66
  %491 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !66
  store i1 %491, i1* %FPU_IM, align 1, !mcsema_real_eip !66
  %492 = load i64, i64* %53, align 4
  store i64 %492, i64* %52, align 4
  %493 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !66
  store i16 %493, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !66
  %494 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !66
  store i64 %494, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !66
  %495 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !66
  store i16 %495, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !66
  %496 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !66
  store i64 %496, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !66
  %497 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !66
  store i11 %497, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !66
  %498 = load i128, i128* %XMM0_val, !mcsema_real_eip !66
  store i128 %498, i128* %XMM0, align 1, !mcsema_real_eip !66
  %499 = load i128, i128* %XMM1_val, !mcsema_real_eip !66
  store i128 %499, i128* %XMM1, align 1, !mcsema_real_eip !66
  %500 = load i128, i128* %XMM2_val, !mcsema_real_eip !66
  store i128 %500, i128* %XMM2, align 1, !mcsema_real_eip !66
  %501 = load i128, i128* %XMM3_val, !mcsema_real_eip !66
  store i128 %501, i128* %XMM3, align 1, !mcsema_real_eip !66
  %502 = load i128, i128* %XMM4_val, !mcsema_real_eip !66
  store i128 %502, i128* %XMM4, align 1, !mcsema_real_eip !66
  %503 = load i128, i128* %XMM5_val, !mcsema_real_eip !66
  store i128 %503, i128* %XMM5, align 1, !mcsema_real_eip !66
  %504 = load i128, i128* %XMM6_val, !mcsema_real_eip !66
  store i128 %504, i128* %XMM6, align 1, !mcsema_real_eip !66
  %505 = load i128, i128* %XMM7_val, !mcsema_real_eip !66
  store i128 %505, i128* %XMM7, align 1, !mcsema_real_eip !66
  %506 = load i128, i128* %XMM8_val, !mcsema_real_eip !66
  store i128 %506, i128* %XMM8, align 1, !mcsema_real_eip !66
  %507 = load i128, i128* %XMM9_val, !mcsema_real_eip !66
  store i128 %507, i128* %XMM9, align 1, !mcsema_real_eip !66
  %508 = load i128, i128* %XMM10_val, !mcsema_real_eip !66
  store i128 %508, i128* %XMM10, align 1, !mcsema_real_eip !66
  %509 = load i128, i128* %XMM11_val, !mcsema_real_eip !66
  store i128 %509, i128* %XMM11, align 1, !mcsema_real_eip !66
  %510 = load i128, i128* %XMM12_val, !mcsema_real_eip !66
  store i128 %510, i128* %XMM12, align 1, !mcsema_real_eip !66
  %511 = load i128, i128* %XMM13_val, !mcsema_real_eip !66
  store i128 %511, i128* %XMM13, align 1, !mcsema_real_eip !66
  %512 = load i128, i128* %XMM14_val, !mcsema_real_eip !66
  store i128 %512, i128* %XMM14, align 1, !mcsema_real_eip !66
  %513 = load i128, i128* %XMM15_val, !mcsema_real_eip !66
  store i128 %513, i128* %XMM15, align 1, !mcsema_real_eip !66
  %514 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !66
  store i64 %514, i64* %STACK_BASE, align 1, !mcsema_real_eip !66
  %515 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !66
  store i64 %515, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !66
  ret void, !mcsema_real_eip !66
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !67
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !67
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !67
  %XMM15_val = alloca i128, !mcsema_real_eip !67
  %XMM14_val = alloca i128, !mcsema_real_eip !67
  %XMM13_val = alloca i128, !mcsema_real_eip !67
  %XMM12_val = alloca i128, !mcsema_real_eip !67
  %XMM11_val = alloca i128, !mcsema_real_eip !67
  %XMM10_val = alloca i128, !mcsema_real_eip !67
  %XMM9_val = alloca i128, !mcsema_real_eip !67
  %XMM8_val = alloca i128, !mcsema_real_eip !67
  %XMM7_val = alloca i128, !mcsema_real_eip !67
  %XMM6_val = alloca i128, !mcsema_real_eip !67
  %XMM5_val = alloca i128, !mcsema_real_eip !67
  %XMM4_val = alloca i128, !mcsema_real_eip !67
  %XMM3_val = alloca i128, !mcsema_real_eip !67
  %XMM2_val = alloca i128, !mcsema_real_eip !67
  %XMM1_val = alloca i128, !mcsema_real_eip !67
  %XMM0_val = alloca i128, !mcsema_real_eip !67
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !67
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !67
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !67
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !67
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !67
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !67
  %FPU_IM_val = alloca i1, !mcsema_real_eip !67
  %FPU_DM_val = alloca i1, !mcsema_real_eip !67
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !67
  %FPU_OM_val = alloca i1, !mcsema_real_eip !67
  %FPU_UM_val = alloca i1, !mcsema_real_eip !67
  %FPU_PM_val = alloca i1, !mcsema_real_eip !67
  %FPU_PC_val = alloca i2, !mcsema_real_eip !67
  %FPU_RC_val = alloca i2, !mcsema_real_eip !67
  %FPU_X_val = alloca i1, !mcsema_real_eip !67
  %FPU_IE_val = alloca i1, !mcsema_real_eip !67
  %FPU_DE_val = alloca i1, !mcsema_real_eip !67
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !67
  %FPU_OE_val = alloca i1, !mcsema_real_eip !67
  %FPU_UE_val = alloca i1, !mcsema_real_eip !67
  %FPU_PE_val = alloca i1, !mcsema_real_eip !67
  %FPU_SF_val = alloca i1, !mcsema_real_eip !67
  %FPU_ES_val = alloca i1, !mcsema_real_eip !67
  %FPU_C0_val = alloca i1, !mcsema_real_eip !67
  %FPU_C1_val = alloca i1, !mcsema_real_eip !67
  %FPU_C2_val = alloca i1, !mcsema_real_eip !67
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !67
  %FPU_C3_val = alloca i1, !mcsema_real_eip !67
  %FPU_B_val = alloca i1, !mcsema_real_eip !67
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !67
  %DF_val = alloca i1, !mcsema_real_eip !67
  %OF_val = alloca i1, !mcsema_real_eip !67
  %SF_val = alloca i1, !mcsema_real_eip !67
  %CF_val = alloca i1, !mcsema_real_eip !67
  %AF_val = alloca i1, !mcsema_real_eip !67
  %PF_val = alloca i1, !mcsema_real_eip !67
  %ZF_val = alloca i1, !mcsema_real_eip !67
  %RIP_val = alloca i64, !mcsema_real_eip !67
  %R14_val = alloca i64, !mcsema_real_eip !67
  %R13_val = alloca i64, !mcsema_real_eip !67
  %R12_val = alloca i64, !mcsema_real_eip !67
  %R11_val = alloca i64, !mcsema_real_eip !67
  %R10_val = alloca i64, !mcsema_real_eip !67
  %R9_val = alloca i64, !mcsema_real_eip !67
  %R8_val = alloca i64, !mcsema_real_eip !67
  %RSP_val = alloca i64, !mcsema_real_eip !67
  %RBP_val = alloca i64, !mcsema_real_eip !67
  %RDI_val = alloca i64, !mcsema_real_eip !67
  %RSI_val = alloca i64, !mcsema_real_eip !67
  %RDX_val = alloca i64, !mcsema_real_eip !67
  %RCX_val = alloca i64, !mcsema_real_eip !67
  %RBX_val = alloca i64, !mcsema_real_eip !67
  %RAX_val = alloca i64, !mcsema_real_eip !67
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !67
  %1 = load i64, i64* %RAX, !mcsema_real_eip !67
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !67
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !67
  %2 = load i64, i64* %RBX, !mcsema_real_eip !67
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !67
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !67
  %3 = load i64, i64* %RCX, !mcsema_real_eip !67
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !67
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !67
  %4 = load i64, i64* %RDX, !mcsema_real_eip !67
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !67
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !67
  %5 = load i64, i64* %RSI, !mcsema_real_eip !67
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !67
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !67
  %6 = load i64, i64* %RDI, !mcsema_real_eip !67
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !67
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !67
  %7 = load i64, i64* %RSP, !mcsema_real_eip !67
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !67
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !67
  %8 = load i64, i64* %RBP, !mcsema_real_eip !67
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !67
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !67
  %9 = load i64, i64* %R8, !mcsema_real_eip !67
  store i64 %9, i64* %R8_val, !mcsema_real_eip !67
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !67
  %10 = load i64, i64* %R9, !mcsema_real_eip !67
  store i64 %10, i64* %R9_val, !mcsema_real_eip !67
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !67
  %11 = load i64, i64* %R10, !mcsema_real_eip !67
  store i64 %11, i64* %R10_val, !mcsema_real_eip !67
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !67
  %12 = load i64, i64* %R11, !mcsema_real_eip !67
  store i64 %12, i64* %R11_val, !mcsema_real_eip !67
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !67
  %13 = load i64, i64* %R12, !mcsema_real_eip !67
  store i64 %13, i64* %R12_val, !mcsema_real_eip !67
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !67
  %14 = load i64, i64* %R13, !mcsema_real_eip !67
  store i64 %14, i64* %R13_val, !mcsema_real_eip !67
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !67
  %15 = load i64, i64* %R14, !mcsema_real_eip !67
  store i64 %15, i64* %R14_val, !mcsema_real_eip !67
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !67
  %16 = load i64, i64* %R15, !mcsema_real_eip !67
  store i64 %16, i64* %R15_val, !mcsema_real_eip !67
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !67
  %17 = load i64, i64* %RIP, !mcsema_real_eip !67
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !67
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !67
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !67
  store i1 %18, i1* %CF_val, !mcsema_real_eip !67
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !67
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !67
  store i1 %19, i1* %PF_val, !mcsema_real_eip !67
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !67
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !67
  store i1 %20, i1* %AF_val, !mcsema_real_eip !67
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !67
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !67
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !67
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !67
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !67
  store i1 %22, i1* %SF_val, !mcsema_real_eip !67
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !67
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !67
  store i1 %23, i1* %OF_val, !mcsema_real_eip !67
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !67
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !67
  store i1 %24, i1* %DF_val, !mcsema_real_eip !67
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !67
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !67
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !67
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !67
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !67
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !67
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !67
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !67
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !67
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !67
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !67
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !67
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !67
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !67
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !67
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !67
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !67
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !67
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !67
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !67
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !67
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !67
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !67
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !67
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !67
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !67
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !67
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !67
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !67
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !67
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !67
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !67
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !67
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !67
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !67
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !67
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !67
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !67
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !67
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !67
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !67
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !67
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !67
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !67
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !67
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !67
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !67
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !67
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !67
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !67
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !67
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !67
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !67
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !67
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !67
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !67
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !67
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !67
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !67
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !67
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !67
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !67
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !67
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !67
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !67
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !67
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !67
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !67
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !67
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !67
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !67
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !67
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !67
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !67
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !67
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !67
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !67
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !67
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !67
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !67
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !67
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !67
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !67
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !67
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !67
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !67
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !67
  %59 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !67
  store i11 %59, i11* %FPU_FOPCODE_val, !mcsema_real_eip !67
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !67
  %60 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !67
  store i128 %60, i128* %XMM0_val, !mcsema_real_eip !67
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !67
  %61 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !67
  store i128 %61, i128* %XMM1_val, !mcsema_real_eip !67
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !67
  %62 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !67
  store i128 %62, i128* %XMM2_val, !mcsema_real_eip !67
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !67
  %63 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !67
  store i128 %63, i128* %XMM3_val, !mcsema_real_eip !67
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !67
  %64 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !67
  store i128 %64, i128* %XMM4_val, !mcsema_real_eip !67
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !67
  %65 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !67
  store i128 %65, i128* %XMM5_val, !mcsema_real_eip !67
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !67
  %66 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !67
  store i128 %66, i128* %XMM6_val, !mcsema_real_eip !67
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !67
  %67 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !67
  store i128 %67, i128* %XMM7_val, !mcsema_real_eip !67
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !67
  %68 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !67
  store i128 %68, i128* %XMM8_val, !mcsema_real_eip !67
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !67
  %69 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !67
  store i128 %69, i128* %XMM9_val, !mcsema_real_eip !67
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !67
  %70 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !67
  store i128 %70, i128* %XMM10_val, !mcsema_real_eip !67
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !67
  %71 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !67
  store i128 %71, i128* %XMM11_val, !mcsema_real_eip !67
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !67
  %72 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !67
  store i128 %72, i128* %XMM12_val, !mcsema_real_eip !67
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !67
  %73 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !67
  store i128 %73, i128* %XMM13_val, !mcsema_real_eip !67
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !67
  %74 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !67
  store i128 %74, i128* %XMM14_val, !mcsema_real_eip !67
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !67
  %75 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !67
  store i128 %75, i128* %XMM15_val, !mcsema_real_eip !67
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !67
  %76 = load i64, i64* %STACK_BASE, !mcsema_real_eip !67
  store i64 %76, i64* %STACK_BASE_val, !mcsema_real_eip !67
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !67
  %77 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !67
  store i64 %77, i64* %STACK_LIMIT_val, !mcsema_real_eip !67
  %78 = load i64, i64* %RBP_val, !mcsema_real_eip !67
  %79 = load i64, i64* %RSP_val, !mcsema_real_eip !67
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !67
  store i64 %78, i64* %81, !mcsema_real_eip !67
  store i64 %80, i64* %RBP_val, !mcsema_real_eip !68
  %82 = load i64, i64* %RBX_val, !mcsema_real_eip !69
  %83 = add i64 %79, -16
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !69
  store i64 %82, i64* %84, !mcsema_real_eip !69
  store i64 %83, i64* %RSP_val, !mcsema_real_eip !69
  %85 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %86 = add i64 %85, 40, !mcsema_real_eip !70
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !70
  %88 = load i64, i64* %87, !mcsema_real_eip !70
  store i64 %88, i64* %RAX_val, !mcsema_real_eip !70
  %89 = add i64 %85, 32, !mcsema_real_eip !71
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !71
  %91 = bitcast i64* %90 to i32*
  %92 = load i32, i32* %91, !mcsema_real_eip !71
  %93 = zext i32 %92 to i64, !mcsema_real_eip !71
  store i64 %93, i64* %R10_val, !mcsema_real_eip !71
  %94 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %95 = add i64 %94, 24, !mcsema_real_eip !72
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !72
  %97 = load i64, i64* %96, !mcsema_real_eip !72
  store i64 %97, i64* %R11_val, !mcsema_real_eip !72
  %98 = add i64 %94, 16, !mcsema_real_eip !73
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !73
  %100 = bitcast i64* %99 to i32*
  %101 = load i32, i32* %100, !mcsema_real_eip !73
  %102 = zext i32 %101 to i64, !mcsema_real_eip !73
  store i64 %102, i64* %RBX_val, !mcsema_real_eip !73
  %103 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %104 = add i64 %103, -12, !mcsema_real_eip !74
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !74
  %106 = load i64, i64* %RDI_val, !mcsema_real_eip !74
  %107 = trunc i64 %106 to i32, !mcsema_real_eip !74
  %108 = bitcast i64* %105 to i32*
  store i32 %107, i32* %108, !mcsema_real_eip !74
  %109 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %110 = add i64 %109, -16, !mcsema_real_eip !75
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !75
  %112 = load i64, i64* %RSI_val, !mcsema_real_eip !75
  %113 = trunc i64 %112 to i32, !mcsema_real_eip !75
  %114 = bitcast i64* %111 to i32*
  store i32 %113, i32* %114, !mcsema_real_eip !75
  %115 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %116 = add i64 %115, -20, !mcsema_real_eip !76
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !76
  %118 = load i64, i64* %RDX_val, !mcsema_real_eip !76
  %119 = trunc i64 %118 to i32, !mcsema_real_eip !76
  %120 = bitcast i64* %117 to i32*
  store i32 %119, i32* %120, !mcsema_real_eip !76
  %121 = load i64, i64* %RBP_val, !mcsema_real_eip !77
  %122 = add i64 %121, -24, !mcsema_real_eip !77
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !77
  %124 = load i64, i64* %RCX_val, !mcsema_real_eip !77
  %125 = trunc i64 %124 to i32, !mcsema_real_eip !77
  %126 = bitcast i64* %123 to i32*
  store i32 %125, i32* %126, !mcsema_real_eip !77
  %127 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %128 = add i64 %127, -28, !mcsema_real_eip !78
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !78
  %130 = load i64, i64* %R8_val, !mcsema_real_eip !78
  %131 = trunc i64 %130 to i32, !mcsema_real_eip !78
  %132 = bitcast i64* %129 to i32*
  store i32 %131, i32* %132, !mcsema_real_eip !78
  %133 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %134 = add i64 %133, -32, !mcsema_real_eip !79
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !79
  %136 = load i64, i64* %R9_val, !mcsema_real_eip !79
  %137 = trunc i64 %136 to i32, !mcsema_real_eip !79
  %138 = bitcast i64* %135 to i32*
  store i32 %137, i32* %138, !mcsema_real_eip !79
  %139 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %140 = add i64 %139, -36, !mcsema_real_eip !80
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !80
  %142 = load i64, i64* %RBX_val, !mcsema_real_eip !80
  %143 = trunc i64 %142 to i32, !mcsema_real_eip !80
  %144 = bitcast i64* %141 to i32*
  store i32 %143, i32* %144, !mcsema_real_eip !80
  %145 = load i64, i64* %RBP_val, !mcsema_real_eip !81
  %146 = add i64 %145, -48, !mcsema_real_eip !81
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !81
  %148 = load i64, i64* %R11_val, !mcsema_real_eip !81
  store i64 %148, i64* %147, !mcsema_real_eip !81
  %149 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %150 = add i64 %149, -52, !mcsema_real_eip !82
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !82
  %152 = load i64, i64* %R10_val, !mcsema_real_eip !82
  %153 = trunc i64 %152 to i32, !mcsema_real_eip !82
  %154 = bitcast i64* %151 to i32*
  store i32 %153, i32* %154, !mcsema_real_eip !82
  %155 = load i64, i64* %RBP_val, !mcsema_real_eip !83
  %156 = add i64 %155, -64, !mcsema_real_eip !83
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !83
  %158 = load i64, i64* %RAX_val, !mcsema_real_eip !83
  store i64 %158, i64* %157, !mcsema_real_eip !83
  %159 = load i64, i64* %RBP_val, !mcsema_real_eip !84
  %160 = add i64 %159, -68, !mcsema_real_eip !84
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !84
  %162 = bitcast i64* %161 to i32*
  store i32 0, i32* %162, !mcsema_real_eip !84
  %163 = load i64, i64* %RBP_val, !mcsema_real_eip !85
  %164 = add i64 %163, -72, !mcsema_real_eip !85
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !85
  %166 = bitcast i64* %165 to i32*
  store i32 0, i32* %166, !mcsema_real_eip !85
  br label %block_0x45, !mcsema_real_eip !86

block_0x45:                                       ; preds = %block_0x51, %entry
  %167 = load i64, i64* %RBP_val, !mcsema_real_eip !86
  %168 = add i64 %167, -72, !mcsema_real_eip !86
  %169 = inttoptr i64 %168 to i64*, !mcsema_real_eip !86
  %170 = bitcast i64* %169 to i32*
  %171 = load i32, i32* %170, !mcsema_real_eip !86
  %172 = zext i32 %171 to i64, !mcsema_real_eip !86
  store i64 %172, i64* %RAX_val, !mcsema_real_eip !86
  %173 = load i64, i64* %RBP_val, !mcsema_real_eip !87
  %174 = add i64 %173, -36, !mcsema_real_eip !87
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !87
  %176 = bitcast i64* %175 to i32*
  %177 = load i32, i32* %176, !mcsema_real_eip !87
  %178 = sub i32 %171, %177, !mcsema_real_eip !87
  %179 = xor i32 %178, %171, !mcsema_real_eip !87
  %180 = xor i32 %179, %177, !mcsema_real_eip !87
  %181 = and i32 %180, 16, !mcsema_real_eip !87
  %182 = icmp ne i32 %181, 0, !mcsema_real_eip !87
  store i1 %182, i1* %AF_val, !mcsema_real_eip !87
  %183 = trunc i32 %178 to i8, !mcsema_real_eip !87
  %184 = tail call i8 @llvm.ctpop.i8(i8 %183), !mcsema_real_eip !87
  %185 = and i8 %184, 1
  %186 = icmp eq i8 %185, 0
  store i1 %186, i1* %PF_val, !mcsema_real_eip !87
  %187 = icmp eq i32 %171, %177
  store i1 %187, i1* %ZF_val, !mcsema_real_eip !87
  %188 = icmp slt i32 %178, 0
  store i1 %188, i1* %SF_val, !mcsema_real_eip !87
  %189 = icmp ult i32 %171, %177, !mcsema_real_eip !87
  store i1 %189, i1* %CF_val, !mcsema_real_eip !87
  %190 = xor i32 %177, %171, !mcsema_real_eip !87
  %191 = and i32 %179, %190, !mcsema_real_eip !87
  %192 = icmp slt i32 %191, 0
  store i1 %192, i1* %OF_val, !mcsema_real_eip !87
  %193 = load i1, i1* %SF_val, !mcsema_real_eip !88
  %tmp = xor i1 %193, %192
  %194 = load i64, i64* %RBP_val, !mcsema_real_eip !89
  br i1 %tmp, label %block_0x51, label %block_0x7f, !mcsema_real_eip !88

block_0x51:                                       ; preds = %block_0x45
  %195 = add i64 %194, -72, !mcsema_real_eip !90
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !90
  %197 = bitcast i64* %196 to i32*
  %198 = load i32, i32* %197, !mcsema_real_eip !90
  %199 = sext i32 %198 to i64, !mcsema_real_eip !90
  store i64 %199, i64* %RAX_val, !mcsema_real_eip !90
  %200 = load i64, i64* %RBP_val, !mcsema_real_eip !91
  %201 = add i64 %200, -48, !mcsema_real_eip !91
  %202 = inttoptr i64 %201 to i64*, !mcsema_real_eip !91
  %203 = load i64, i64* %202, !mcsema_real_eip !91
  store i64 %203, i64* %RCX_val, !mcsema_real_eip !91
  %204 = shl nsw i64 %199, 2
  %205 = add i64 %203, %204, !mcsema_real_eip !92
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !92
  %207 = bitcast i64* %206 to i32*
  %208 = load i32, i32* %207, !mcsema_real_eip !92
  %209 = zext i32 %208 to i64, !mcsema_real_eip !92
  store i64 %209, i64* %RDX_val, !mcsema_real_eip !92
  %210 = load i64, i64* %RBP_val, !mcsema_real_eip !93
  %211 = add i64 %210, -72, !mcsema_real_eip !93
  %212 = inttoptr i64 %211 to i64*, !mcsema_real_eip !93
  %213 = bitcast i64* %212 to i32*
  %214 = load i32, i32* %213, !mcsema_real_eip !93
  %215 = sext i32 %214 to i64, !mcsema_real_eip !93
  store i64 %215, i64* %RAX_val, !mcsema_real_eip !93
  %216 = load i64, i64* %RBP_val, !mcsema_real_eip !94
  %217 = add i64 %216, -64, !mcsema_real_eip !94
  %218 = inttoptr i64 %217 to i64*, !mcsema_real_eip !94
  %219 = load i64, i64* %218, !mcsema_real_eip !94
  store i64 %219, i64* %RCX_val, !mcsema_real_eip !94
  %220 = shl nsw i64 %215, 2
  %221 = add i64 %219, %220, !mcsema_real_eip !95
  %222 = inttoptr i64 %221 to i64*, !mcsema_real_eip !95
  %223 = load i64, i64* %RDX_val, !mcsema_real_eip !95
  %224 = trunc i64 %223 to i32, !mcsema_real_eip !95
  %225 = bitcast i64* %222 to i32*
  %226 = load i32, i32* %225, !mcsema_real_eip !95
  %227 = sub i32 %224, %226, !mcsema_real_eip !95
  %228 = xor i32 %227, %224, !mcsema_real_eip !95
  %229 = xor i32 %228, %226, !mcsema_real_eip !95
  %230 = and i32 %229, 16, !mcsema_real_eip !95
  %231 = icmp ne i32 %230, 0, !mcsema_real_eip !95
  store i1 %231, i1* %AF_val, !mcsema_real_eip !95
  %232 = trunc i32 %227 to i8, !mcsema_real_eip !95
  %233 = tail call i8 @llvm.ctpop.i8(i8 %232), !mcsema_real_eip !95
  %234 = and i8 %233, 1
  %235 = icmp eq i8 %234, 0
  store i1 %235, i1* %PF_val, !mcsema_real_eip !95
  %236 = icmp eq i32 %224, %226
  store i1 %236, i1* %ZF_val, !mcsema_real_eip !95
  %237 = icmp slt i32 %227, 0
  store i1 %237, i1* %SF_val, !mcsema_real_eip !95
  %238 = icmp ult i32 %224, %226, !mcsema_real_eip !95
  store i1 %238, i1* %CF_val, !mcsema_real_eip !95
  %239 = xor i32 %224, %226, !mcsema_real_eip !95
  %240 = and i32 %228, %239, !mcsema_real_eip !95
  %241 = icmp slt i32 %240, 0
  store i1 %241, i1* %OF_val, !mcsema_real_eip !95
  %242 = zext i32 %227 to i64, !mcsema_real_eip !95
  store i64 %242, i64* %RDX_val, !mcsema_real_eip !95
  %243 = load i64, i64* %RBP_val, !mcsema_real_eip !96
  %244 = add i64 %243, -68, !mcsema_real_eip !96
  %245 = inttoptr i64 %244 to i64*, !mcsema_real_eip !96
  %246 = bitcast i64* %245 to i32*
  %247 = load i32, i32* %246, !mcsema_real_eip !96
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %227, i32 %247)
  %248 = extractvalue { i32, i1 } %uadd, 0
  %249 = xor i32 %248, %247, !mcsema_real_eip !97
  %250 = xor i32 %249, %227, !mcsema_real_eip !97
  %251 = and i32 %250, 16, !mcsema_real_eip !97
  %252 = icmp ne i32 %251, 0, !mcsema_real_eip !97
  store i1 %252, i1* %AF_val, !mcsema_real_eip !97
  %253 = icmp slt i32 %248, 0
  store i1 %253, i1* %SF_val, !mcsema_real_eip !97
  %254 = icmp eq i32 %248, 0, !mcsema_real_eip !97
  store i1 %254, i1* %ZF_val, !mcsema_real_eip !97
  %255 = xor i32 %247, -2147483648, !mcsema_real_eip !97
  %256 = xor i32 %255, %227, !mcsema_real_eip !97
  %257 = and i32 %249, %256, !mcsema_real_eip !97
  %258 = icmp slt i32 %257, 0
  store i1 %258, i1* %OF_val, !mcsema_real_eip !97
  %259 = trunc i32 %248 to i8, !mcsema_real_eip !97
  %260 = tail call i8 @llvm.ctpop.i8(i8 %259), !mcsema_real_eip !97
  %261 = and i8 %260, 1
  %262 = icmp eq i8 %261, 0
  store i1 %262, i1* %PF_val, !mcsema_real_eip !97
  %263 = extractvalue { i32, i1 } %uadd, 1
  store i1 %263, i1* %CF_val, !mcsema_real_eip !97
  %264 = zext i32 %248 to i64, !mcsema_real_eip !97
  store i64 %264, i64* %RSI_val, !mcsema_real_eip !97
  %265 = load i64, i64* %RBP_val, !mcsema_real_eip !98
  %266 = add i64 %265, -68, !mcsema_real_eip !98
  %267 = inttoptr i64 %266 to i64*, !mcsema_real_eip !98
  %268 = bitcast i64* %267 to i32*
  store i32 %248, i32* %268, !mcsema_real_eip !98
  %269 = load i64, i64* %RBP_val, !mcsema_real_eip !99
  %270 = add i64 %269, -72, !mcsema_real_eip !99
  %271 = inttoptr i64 %270 to i64*, !mcsema_real_eip !99
  %272 = bitcast i64* %271 to i32*
  %273 = load i32, i32* %272, !mcsema_real_eip !99
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %273, i32 1)
  %274 = extractvalue { i32, i1 } %uadd71, 0
  %275 = xor i32 %274, %273, !mcsema_real_eip !100
  %276 = and i32 %275, 16, !mcsema_real_eip !100
  %277 = icmp ne i32 %276, 0, !mcsema_real_eip !100
  store i1 %277, i1* %AF_val, !mcsema_real_eip !100
  %278 = icmp slt i32 %274, 0
  store i1 %278, i1* %SF_val, !mcsema_real_eip !100
  %279 = icmp eq i32 %274, 0, !mcsema_real_eip !100
  store i1 %279, i1* %ZF_val, !mcsema_real_eip !100
  %280 = xor i32 %273, -2147483648, !mcsema_real_eip !100
  %281 = and i32 %275, %280, !mcsema_real_eip !100
  %282 = icmp slt i32 %281, 0
  store i1 %282, i1* %OF_val, !mcsema_real_eip !100
  %283 = trunc i32 %274 to i8, !mcsema_real_eip !100
  %284 = tail call i8 @llvm.ctpop.i8(i8 %283), !mcsema_real_eip !100
  %285 = and i8 %284, 1
  %286 = icmp eq i8 %285, 0
  store i1 %286, i1* %PF_val, !mcsema_real_eip !100
  %287 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %287, i1* %CF_val, !mcsema_real_eip !100
  %288 = zext i32 %274 to i64, !mcsema_real_eip !100
  store i64 %288, i64* %RAX_val, !mcsema_real_eip !100
  %289 = load i64, i64* %RBP_val, !mcsema_real_eip !101
  %290 = add i64 %289, -72, !mcsema_real_eip !101
  %291 = inttoptr i64 %290 to i64*, !mcsema_real_eip !101
  %292 = bitcast i64* %291 to i32*
  store i32 %274, i32* %292, !mcsema_real_eip !101
  br label %block_0x45, !mcsema_real_eip !102

block_0x7f:                                       ; preds = %block_0x45
  %.lcssa = phi i64 [ %194, %block_0x45 ]
  %293 = add i64 %.lcssa, -68, !mcsema_real_eip !89
  %294 = inttoptr i64 %293 to i64*, !mcsema_real_eip !89
  %295 = bitcast i64* %294 to i32*
  %296 = load i32, i32* %295, !mcsema_real_eip !89
  %297 = zext i32 %296 to i64, !mcsema_real_eip !89
  store i64 %297, i64* %RAX_val, !mcsema_real_eip !89
  %298 = load i64, i64* %RBP_val, !mcsema_real_eip !103
  %299 = add i64 %298, -12, !mcsema_real_eip !103
  %300 = inttoptr i64 %299 to i64*, !mcsema_real_eip !103
  %301 = bitcast i64* %300 to i32*
  %302 = load i32, i32* %301, !mcsema_real_eip !103
  %303 = zext i32 %302 to i64, !mcsema_real_eip !103
  store i64 %303, i64* %RCX_val, !mcsema_real_eip !103
  %304 = load i64, i64* %RBP_val, !mcsema_real_eip !104
  %305 = add i64 %304, -16, !mcsema_real_eip !104
  %306 = inttoptr i64 %305 to i64*, !mcsema_real_eip !104
  %307 = bitcast i64* %306 to i32*
  %308 = load i32, i32* %307, !mcsema_real_eip !104
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %302, i32 %308)
  %309 = extractvalue { i32, i1 } %uadd72, 0
  %310 = xor i32 %309, %308, !mcsema_real_eip !104
  %311 = xor i32 %310, %302, !mcsema_real_eip !104
  %312 = and i32 %311, 16, !mcsema_real_eip !104
  %313 = icmp ne i32 %312, 0, !mcsema_real_eip !104
  store i1 %313, i1* %AF_val, !mcsema_real_eip !104
  %314 = icmp slt i32 %309, 0
  store i1 %314, i1* %SF_val, !mcsema_real_eip !104
  %315 = icmp eq i32 %309, 0, !mcsema_real_eip !104
  store i1 %315, i1* %ZF_val, !mcsema_real_eip !104
  %316 = xor i32 %302, -2147483648, !mcsema_real_eip !104
  %317 = xor i32 %316, %308, !mcsema_real_eip !104
  %318 = and i32 %310, %317, !mcsema_real_eip !104
  %319 = icmp slt i32 %318, 0
  store i1 %319, i1* %OF_val, !mcsema_real_eip !104
  %320 = trunc i32 %309 to i8, !mcsema_real_eip !104
  %321 = tail call i8 @llvm.ctpop.i8(i8 %320), !mcsema_real_eip !104
  %322 = and i8 %321, 1
  %323 = icmp eq i8 %322, 0
  store i1 %323, i1* %PF_val, !mcsema_real_eip !104
  %324 = extractvalue { i32, i1 } %uadd72, 1
  store i1 %324, i1* %CF_val, !mcsema_real_eip !104
  %325 = zext i32 %309 to i64, !mcsema_real_eip !104
  store i64 %325, i64* %RCX_val, !mcsema_real_eip !104
  %326 = load i64, i64* %RBP_val, !mcsema_real_eip !105
  %327 = add i64 %326, -20, !mcsema_real_eip !105
  %328 = inttoptr i64 %327 to i64*, !mcsema_real_eip !105
  %329 = bitcast i64* %328 to i32*
  %330 = load i32, i32* %329, !mcsema_real_eip !105
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %309, i32 %330)
  %331 = extractvalue { i32, i1 } %uadd73, 0
  %332 = xor i32 %331, %330, !mcsema_real_eip !105
  %333 = xor i32 %332, %309, !mcsema_real_eip !105
  %334 = and i32 %333, 16, !mcsema_real_eip !105
  %335 = icmp ne i32 %334, 0, !mcsema_real_eip !105
  store i1 %335, i1* %AF_val, !mcsema_real_eip !105
  %336 = icmp slt i32 %331, 0
  store i1 %336, i1* %SF_val, !mcsema_real_eip !105
  %337 = icmp eq i32 %331, 0, !mcsema_real_eip !105
  store i1 %337, i1* %ZF_val, !mcsema_real_eip !105
  %338 = xor i32 %309, -2147483648, !mcsema_real_eip !105
  %339 = xor i32 %338, %330, !mcsema_real_eip !105
  %340 = and i32 %332, %339, !mcsema_real_eip !105
  %341 = icmp slt i32 %340, 0
  store i1 %341, i1* %OF_val, !mcsema_real_eip !105
  %342 = trunc i32 %331 to i8, !mcsema_real_eip !105
  %343 = tail call i8 @llvm.ctpop.i8(i8 %342), !mcsema_real_eip !105
  %344 = and i8 %343, 1
  %345 = icmp eq i8 %344, 0
  store i1 %345, i1* %PF_val, !mcsema_real_eip !105
  %346 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %346, i1* %CF_val, !mcsema_real_eip !105
  %347 = zext i32 %331 to i64, !mcsema_real_eip !105
  store i64 %347, i64* %RCX_val, !mcsema_real_eip !105
  %348 = load i64, i64* %RBP_val, !mcsema_real_eip !106
  %349 = add i64 %348, -24, !mcsema_real_eip !106
  %350 = inttoptr i64 %349 to i64*, !mcsema_real_eip !106
  %351 = bitcast i64* %350 to i32*
  %352 = load i32, i32* %351, !mcsema_real_eip !106
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %331, i32 %352)
  %353 = extractvalue { i32, i1 } %uadd74, 0
  %354 = xor i32 %353, %352, !mcsema_real_eip !106
  %355 = xor i32 %354, %331, !mcsema_real_eip !106
  %356 = and i32 %355, 16, !mcsema_real_eip !106
  %357 = icmp ne i32 %356, 0, !mcsema_real_eip !106
  store i1 %357, i1* %AF_val, !mcsema_real_eip !106
  %358 = icmp slt i32 %353, 0
  store i1 %358, i1* %SF_val, !mcsema_real_eip !106
  %359 = icmp eq i32 %353, 0, !mcsema_real_eip !106
  store i1 %359, i1* %ZF_val, !mcsema_real_eip !106
  %360 = xor i32 %331, -2147483648, !mcsema_real_eip !106
  %361 = xor i32 %360, %352, !mcsema_real_eip !106
  %362 = and i32 %354, %361, !mcsema_real_eip !106
  %363 = icmp slt i32 %362, 0
  store i1 %363, i1* %OF_val, !mcsema_real_eip !106
  %364 = trunc i32 %353 to i8, !mcsema_real_eip !106
  %365 = tail call i8 @llvm.ctpop.i8(i8 %364), !mcsema_real_eip !106
  %366 = and i8 %365, 1
  %367 = icmp eq i8 %366, 0
  store i1 %367, i1* %PF_val, !mcsema_real_eip !106
  %368 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %368, i1* %CF_val, !mcsema_real_eip !106
  %369 = zext i32 %353 to i64, !mcsema_real_eip !106
  store i64 %369, i64* %RCX_val, !mcsema_real_eip !106
  %370 = load i64, i64* %RBP_val, !mcsema_real_eip !107
  %371 = add i64 %370, -28, !mcsema_real_eip !107
  %372 = inttoptr i64 %371 to i64*, !mcsema_real_eip !107
  %373 = bitcast i64* %372 to i32*
  %374 = load i32, i32* %373, !mcsema_real_eip !107
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %353, i32 %374)
  %375 = extractvalue { i32, i1 } %uadd75, 0
  %376 = xor i32 %375, %374, !mcsema_real_eip !107
  %377 = xor i32 %376, %353, !mcsema_real_eip !107
  %378 = and i32 %377, 16, !mcsema_real_eip !107
  %379 = icmp ne i32 %378, 0, !mcsema_real_eip !107
  store i1 %379, i1* %AF_val, !mcsema_real_eip !107
  %380 = icmp slt i32 %375, 0
  store i1 %380, i1* %SF_val, !mcsema_real_eip !107
  %381 = icmp eq i32 %375, 0, !mcsema_real_eip !107
  store i1 %381, i1* %ZF_val, !mcsema_real_eip !107
  %382 = xor i32 %353, -2147483648, !mcsema_real_eip !107
  %383 = xor i32 %382, %374, !mcsema_real_eip !107
  %384 = and i32 %376, %383, !mcsema_real_eip !107
  %385 = icmp slt i32 %384, 0
  store i1 %385, i1* %OF_val, !mcsema_real_eip !107
  %386 = trunc i32 %375 to i8, !mcsema_real_eip !107
  %387 = tail call i8 @llvm.ctpop.i8(i8 %386), !mcsema_real_eip !107
  %388 = and i8 %387, 1
  %389 = icmp eq i8 %388, 0
  store i1 %389, i1* %PF_val, !mcsema_real_eip !107
  %390 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %390, i1* %CF_val, !mcsema_real_eip !107
  %391 = zext i32 %375 to i64, !mcsema_real_eip !107
  store i64 %391, i64* %RCX_val, !mcsema_real_eip !107
  %392 = load i64, i64* %RBP_val, !mcsema_real_eip !108
  %393 = add i64 %392, -32, !mcsema_real_eip !108
  %394 = inttoptr i64 %393 to i64*, !mcsema_real_eip !108
  %395 = bitcast i64* %394 to i32*
  %396 = load i32, i32* %395, !mcsema_real_eip !108
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %375, i32 %396)
  %397 = extractvalue { i32, i1 } %uadd76, 0
  %398 = xor i32 %397, %396, !mcsema_real_eip !108
  %399 = xor i32 %398, %375, !mcsema_real_eip !108
  %400 = and i32 %399, 16, !mcsema_real_eip !108
  %401 = icmp ne i32 %400, 0, !mcsema_real_eip !108
  store i1 %401, i1* %AF_val, !mcsema_real_eip !108
  %402 = icmp eq i32 %397, 0, !mcsema_real_eip !108
  store i1 %402, i1* %ZF_val, !mcsema_real_eip !108
  %403 = trunc i32 %397 to i8, !mcsema_real_eip !108
  %404 = tail call i8 @llvm.ctpop.i8(i8 %403), !mcsema_real_eip !108
  %405 = and i8 %404, 1
  %406 = icmp eq i8 %405, 0
  store i1 %406, i1* %PF_val, !mcsema_real_eip !108
  %407 = extractvalue { i32, i1 } %uadd76, 1
  store i1 %407, i1* %CF_val, !mcsema_real_eip !108
  %408 = zext i32 %397 to i64, !mcsema_real_eip !108
  store i64 %408, i64* %RCX_val, !mcsema_real_eip !108
  %409 = load i64, i64* %RAX_val, !mcsema_real_eip !109
  %410 = trunc i64 %409 to i32, !mcsema_real_eip !109
  %411 = sext i32 %410 to i64, !mcsema_real_eip !109
  %412 = sext i32 %397 to i64, !mcsema_real_eip !109
  %413 = mul i64 %411, %412, !mcsema_real_eip !109
  %414 = mul i32 %410, %397, !mcsema_real_eip !109
  %415 = sext i32 %414 to i64, !mcsema_real_eip !109
  %416 = icmp ne i64 %415, %413, !mcsema_real_eip !109
  store i1 %416, i1* %SF_val, !mcsema_real_eip !109
  store i1 %416, i1* %OF_val, !mcsema_real_eip !109
  %417 = zext i32 %414 to i64, !mcsema_real_eip !109
  store i64 %417, i64* %RAX_val, !mcsema_real_eip !109
  %418 = load i64, i64* %RSP_val, !mcsema_real_eip !110
  %419 = inttoptr i64 %418 to i64*, !mcsema_real_eip !110
  %420 = load i64, i64* %419, !mcsema_real_eip !110
  store i64 %420, i64* %RBX_val, !mcsema_real_eip !110
  %421 = add i64 %418, 8, !mcsema_real_eip !110
  store i64 %421, i64* %RSP_val, !mcsema_real_eip !110
  %422 = inttoptr i64 %421 to i64*, !mcsema_real_eip !111
  %423 = load i64, i64* %422, !mcsema_real_eip !111
  store i64 %423, i64* %RBP_val, !mcsema_real_eip !111
  %424 = add i64 %418, 24, !mcsema_real_eip !112
  store i64 %424, i64* %RSP_val, !mcsema_real_eip !112
  %425 = load i64, i64* %RAX_val, !mcsema_real_eip !112
  store i64 %425, i64* %RAX, !mcsema_real_eip !112
  %426 = load i64, i64* %RBX_val, !mcsema_real_eip !112
  store i64 %426, i64* %RBX, !mcsema_real_eip !112
  %427 = load i64, i64* %RCX_val, !mcsema_real_eip !112
  store i64 %427, i64* %RCX, !mcsema_real_eip !112
  %428 = load i64, i64* %RDX_val, !mcsema_real_eip !112
  store i64 %428, i64* %RDX, !mcsema_real_eip !112
  %429 = load i64, i64* %RSI_val, !mcsema_real_eip !112
  store i64 %429, i64* %RSI, !mcsema_real_eip !112
  %430 = load i64, i64* %RDI_val, !mcsema_real_eip !112
  store i64 %430, i64* %RDI, !mcsema_real_eip !112
  %431 = load i64, i64* %RSP_val, !mcsema_real_eip !112
  store i64 %431, i64* %RSP, !mcsema_real_eip !112
  %432 = load i64, i64* %RBP_val, !mcsema_real_eip !112
  store i64 %432, i64* %RBP, !mcsema_real_eip !112
  %433 = load i64, i64* %R8_val, !mcsema_real_eip !112
  store i64 %433, i64* %R8, !mcsema_real_eip !112
  %434 = load i64, i64* %R9_val, !mcsema_real_eip !112
  store i64 %434, i64* %R9, !mcsema_real_eip !112
  %435 = load i64, i64* %R10_val, !mcsema_real_eip !112
  store i64 %435, i64* %R10, !mcsema_real_eip !112
  %436 = load i64, i64* %R11_val, !mcsema_real_eip !112
  store i64 %436, i64* %R11, !mcsema_real_eip !112
  %437 = load i64, i64* %R12_val, !mcsema_real_eip !112
  store i64 %437, i64* %R12, !mcsema_real_eip !112
  %438 = load i64, i64* %R13_val, !mcsema_real_eip !112
  store i64 %438, i64* %R13, !mcsema_real_eip !112
  %439 = load i64, i64* %R14_val, !mcsema_real_eip !112
  store i64 %439, i64* %R14, !mcsema_real_eip !112
  %440 = load i64, i64* %R15_val, !mcsema_real_eip !112
  store i64 %440, i64* %R15, !mcsema_real_eip !112
  %441 = load i64, i64* %RIP_val, !mcsema_real_eip !112
  store i64 %441, i64* %RIP, !mcsema_real_eip !112
  %442 = load i1, i1* %CF_val, !mcsema_real_eip !112
  store i1 %442, i1* %CF, align 1, !mcsema_real_eip !112
  %443 = load i1, i1* %PF_val, !mcsema_real_eip !112
  store i1 %443, i1* %PF, align 1, !mcsema_real_eip !112
  %444 = load i1, i1* %AF_val, !mcsema_real_eip !112
  store i1 %444, i1* %AF, align 1, !mcsema_real_eip !112
  %445 = load i1, i1* %ZF_val, !mcsema_real_eip !112
  store i1 %445, i1* %ZF, align 1, !mcsema_real_eip !112
  %446 = load i1, i1* %SF_val, !mcsema_real_eip !112
  store i1 %446, i1* %SF, align 1, !mcsema_real_eip !112
  %447 = load i1, i1* %OF_val, !mcsema_real_eip !112
  store i1 %447, i1* %OF, align 1, !mcsema_real_eip !112
  %448 = load i1, i1* %DF_val, !mcsema_real_eip !112
  store i1 %448, i1* %DF, align 1, !mcsema_real_eip !112
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !112
  %449 = load i1, i1* %FPU_B_val, !mcsema_real_eip !112
  store i1 %449, i1* %FPU_B, align 1, !mcsema_real_eip !112
  %450 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !112
  store i1 %450, i1* %FPU_C3, align 1, !mcsema_real_eip !112
  %451 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !112
  store i3 %451, i3* %FPU_TOP, align 1, !mcsema_real_eip !112
  %452 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !112
  store i1 %452, i1* %FPU_C2, align 1, !mcsema_real_eip !112
  %453 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !112
  store i1 %453, i1* %FPU_C1, align 1, !mcsema_real_eip !112
  %454 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !112
  store i1 %454, i1* %FPU_C0, align 1, !mcsema_real_eip !112
  %455 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !112
  store i1 %455, i1* %FPU_ES, align 1, !mcsema_real_eip !112
  %456 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !112
  store i1 %456, i1* %FPU_SF, align 1, !mcsema_real_eip !112
  %457 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !112
  store i1 %457, i1* %FPU_PE, align 1, !mcsema_real_eip !112
  %458 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !112
  store i1 %458, i1* %FPU_UE, align 1, !mcsema_real_eip !112
  %459 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !112
  store i1 %459, i1* %FPU_OE, align 1, !mcsema_real_eip !112
  %460 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !112
  store i1 %460, i1* %FPU_ZE, align 1, !mcsema_real_eip !112
  %461 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !112
  store i1 %461, i1* %FPU_DE, align 1, !mcsema_real_eip !112
  %462 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !112
  store i1 %462, i1* %FPU_IE, align 1, !mcsema_real_eip !112
  %463 = load i1, i1* %FPU_X_val, !mcsema_real_eip !112
  store i1 %463, i1* %FPU_X, align 1, !mcsema_real_eip !112
  %464 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !112
  store i2 %464, i2* %FPU_RC, align 1, !mcsema_real_eip !112
  %465 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !112
  store i2 %465, i2* %FPU_PC, align 1, !mcsema_real_eip !112
  %466 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !112
  store i1 %466, i1* %FPU_PM, align 1, !mcsema_real_eip !112
  %467 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !112
  store i1 %467, i1* %FPU_UM, align 1, !mcsema_real_eip !112
  %468 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !112
  store i1 %468, i1* %FPU_OM, align 1, !mcsema_real_eip !112
  %469 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !112
  store i1 %469, i1* %FPU_ZM, align 1, !mcsema_real_eip !112
  %470 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !112
  store i1 %470, i1* %FPU_DM, align 1, !mcsema_real_eip !112
  %471 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !112
  store i1 %471, i1* %FPU_IM, align 1, !mcsema_real_eip !112
  %472 = load i64, i64* %53, align 4
  store i64 %472, i64* %52, align 4
  %473 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !112
  store i16 %473, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !112
  %474 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !112
  store i64 %474, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !112
  %475 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !112
  store i16 %475, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !112
  %476 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !112
  store i64 %476, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !112
  %477 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !112
  store i11 %477, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !112
  %478 = load i128, i128* %XMM0_val, !mcsema_real_eip !112
  store i128 %478, i128* %XMM0, align 1, !mcsema_real_eip !112
  %479 = load i128, i128* %XMM1_val, !mcsema_real_eip !112
  store i128 %479, i128* %XMM1, align 1, !mcsema_real_eip !112
  %480 = load i128, i128* %XMM2_val, !mcsema_real_eip !112
  store i128 %480, i128* %XMM2, align 1, !mcsema_real_eip !112
  %481 = load i128, i128* %XMM3_val, !mcsema_real_eip !112
  store i128 %481, i128* %XMM3, align 1, !mcsema_real_eip !112
  %482 = load i128, i128* %XMM4_val, !mcsema_real_eip !112
  store i128 %482, i128* %XMM4, align 1, !mcsema_real_eip !112
  %483 = load i128, i128* %XMM5_val, !mcsema_real_eip !112
  store i128 %483, i128* %XMM5, align 1, !mcsema_real_eip !112
  %484 = load i128, i128* %XMM6_val, !mcsema_real_eip !112
  store i128 %484, i128* %XMM6, align 1, !mcsema_real_eip !112
  %485 = load i128, i128* %XMM7_val, !mcsema_real_eip !112
  store i128 %485, i128* %XMM7, align 1, !mcsema_real_eip !112
  %486 = load i128, i128* %XMM8_val, !mcsema_real_eip !112
  store i128 %486, i128* %XMM8, align 1, !mcsema_real_eip !112
  %487 = load i128, i128* %XMM9_val, !mcsema_real_eip !112
  store i128 %487, i128* %XMM9, align 1, !mcsema_real_eip !112
  %488 = load i128, i128* %XMM10_val, !mcsema_real_eip !112
  store i128 %488, i128* %XMM10, align 1, !mcsema_real_eip !112
  %489 = load i128, i128* %XMM11_val, !mcsema_real_eip !112
  store i128 %489, i128* %XMM11, align 1, !mcsema_real_eip !112
  %490 = load i128, i128* %XMM12_val, !mcsema_real_eip !112
  store i128 %490, i128* %XMM12, align 1, !mcsema_real_eip !112
  %491 = load i128, i128* %XMM13_val, !mcsema_real_eip !112
  store i128 %491, i128* %XMM13, align 1, !mcsema_real_eip !112
  %492 = load i128, i128* %XMM14_val, !mcsema_real_eip !112
  store i128 %492, i128* %XMM14, align 1, !mcsema_real_eip !112
  %493 = load i128, i128* %XMM15_val, !mcsema_real_eip !112
  store i128 %493, i128* %XMM15, align 1, !mcsema_real_eip !112
  %494 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !112
  store i64 %494, i64* %STACK_BASE, align 1, !mcsema_real_eip !112
  %495 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !112
  store i64 %495, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !112
  ret void, !mcsema_real_eip !112
}

declare x86_64_sysvcc i64 @memcpy(i64 inreg, i64 inreg, i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_a0(%struct.regs* %0)
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
!2 = !{i64 160}
!3 = !{i64 161}
!4 = !{i64 164}
!5 = !{i64 166}
!6 = !{i64 168}
!7 = !{i64 170}
!8 = !{i64 172}
!9 = !{i64 173}
!10 = !{i64 180}
!11 = !{i64 185}
!12 = !{i64 190}
!13 = !{i64 195}
!14 = !{i64 201}
!15 = !{i64 207}
!16 = !{i64 213}
!17 = !{i64 219}
!18 = !{i64 226}
!19 = !{i64 230}
!20 = !{i64 240}
!21 = !{i64 250}
!22 = !{i64 260}
!23 = !{i64 267}
!24 = !{i64 270}
!25 = !{i64 274}
!26 = !{i64 277}
!27 = !{i64 280}
!28 = !{i64 283}
!29 = !{i64 289}
!30 = !{i64 292}
!31 = !{i64 299}
!32 = !{i64 306}
!33 = !{i64 312}
!34 = !{i64 318}
!35 = !{i64 325}
!36 = !{i64 332}
!37 = !{i64 339}
!38 = !{i64 346}
!39 = !{i64 353}
!40 = !{i64 360}
!41 = !{i64 365}
!42 = !{i64 372}
!43 = !{i64 375}
!44 = !{i64 382}
!45 = !{i64 389}
!46 = !{i64 394}
!47 = !{i64 400}
!48 = !{i64 406}
!49 = !{i64 412}
!50 = !{i64 418}
!51 = !{i64 425}
!52 = !{i64 432}
!53 = !{i64 439}
!54 = !{i64 446}
!55 = !{i64 451}
!56 = !{i64 459}
!57 = !{i64 466}
!58 = !{i64 471}
!59 = !{i64 476}
!60 = !{i64 483}
!61 = !{i64 484}
!62 = !{i64 486}
!63 = !{i64 488}
!64 = !{i64 490}
!65 = !{i64 492}
!66 = !{i64 493}
!67 = !{i64 0}
!68 = !{i64 1}
!69 = !{i64 4}
!70 = !{i64 5}
!71 = !{i64 9}
!72 = !{i64 13}
!73 = !{i64 17}
!74 = !{i64 20}
!75 = !{i64 23}
!76 = !{i64 26}
!77 = !{i64 29}
!78 = !{i64 32}
!79 = !{i64 36}
!80 = !{i64 40}
!81 = !{i64 43}
!82 = !{i64 47}
!83 = !{i64 51}
!84 = !{i64 55}
!85 = !{i64 62}
!86 = !{i64 69}
!87 = !{i64 72}
!88 = !{i64 75}
!89 = !{i64 127}
!90 = !{i64 81}
!91 = !{i64 85}
!92 = !{i64 89}
!93 = !{i64 92}
!94 = !{i64 96}
!95 = !{i64 100}
!96 = !{i64 103}
!97 = !{i64 106}
!98 = !{i64 108}
!99 = !{i64 111}
!100 = !{i64 114}
!101 = !{i64 119}
!102 = !{i64 122}
!103 = !{i64 130}
!104 = !{i64 133}
!105 = !{i64 136}
!106 = !{i64 139}
!107 = !{i64 142}
!108 = !{i64 145}
!109 = !{i64 148}
!110 = !{i64 151}
!111 = !{i64 152}
!112 = !{i64 153}
